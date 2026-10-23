import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
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
import Seq.B002.C006
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
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A326300: Steinhaus sums.

The programs for A326300, the canonical program `A326300.P5632815680627957516` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326300 has offset 1).

The definition of A326300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326300.P5632815680627957516

`2*A006520(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A326300

/-- `2*A006520(n+1)` -/
def P5632815680627957516.Spec : Prop :=
  ∀ n, P5632815680627957516.a n = A326300 (n + 1)

theorem P5632815680627957516.correct : P5632815680627957516.Spec := by
  intro n
  simp only [A326300, Nat.add_sub_cancel]

end A326300

/-! ## A326300.P17081991159116958253

`∑[xor(n, n+1)+1]`
-/

namespace A326300.P17081991159116958253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326300.P17081991159116958253

namespace A326300

/-- `∑[xor(n, n+1)+1]` -/
def P17081991159116958253.Spec : Prop :=
  ∀ n, (P17081991159116958253.a n : ℤ) = A326300 (n + 1)

end A326300

/-! ## A326300.P17423538267757946897

`∑[∑[-Δ[xor(n, -n)]]]`
-/

namespace A326300.P17423538267757946897
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326300.P17423538267757946897

namespace A326300

/-- `∑[∑[-Δ[xor(n, -n)]]]` -/
def P17423538267757946897.Spec : Prop :=
  ∀ n, P17423538267757946897.a n = A326300 (n + 1)

end A326300

/-! ## A326300.P18207065966752252357

`∑[2^(val(n+1, 2)+1)]`
-/

namespace A326300.P18207065966752252357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (SequenceMachineLib.valuation (n + 1) 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326300.P18207065966752252357

namespace A326300

/-- `∑[2^(val(n+1, 2)+1)]` -/
def P18207065966752252357.Spec : Prop :=
  ∀ n, (P18207065966752252357.a n : ℤ) = A326300 (n + 1)

end A326300

/-! ## A326300.P3392923844357001645

`∑[2*(or(n, n+1)-n)]`
-/

namespace A326300.P3392923844357001645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lor n (n + 1) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326300.P3392923844357001645

namespace A326300

/-- `∑[2*(or(n, n+1)-n)]` -/
def P3392923844357001645.Spec : Prop :=
  ∀ n, P3392923844357001645.a n = A326300 (n + 1)

end A326300

/-! ## A326300.P15554854485221476372

`∑[2*and(n+1, -(n+1))]`
-/

namespace A326300.P15554854485221476372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326300.P15554854485221476372

namespace A326300

/-- `∑[2*and(n+1, -(n+1))]` -/
def P15554854485221476372.Spec : Prop :=
  ∀ n, P15554854485221476372.a n = A326300 (n + 1)

end A326300

/-! ## A326300.P10103020058177453259

`∑[-xor(n, n-2-2*n)]`
-/

namespace A326300.P10103020058177453259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) ((n : ℤ) - 2 - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326300.P10103020058177453259

namespace A326300

/-- `∑[-xor(n, n-2-2*n)]` -/
def P10103020058177453259.Spec : Prop :=
  ∀ n, P10103020058177453259.a n = A326300 (n + 1)

end A326300

/-! ## A326300.P4237509235264311392

`∑[2*(n+1-and(n, n+1))]`
-/

namespace A326300.P4237509235264311392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326300.P4237509235264311392

namespace A326300

/-- `∑[2*(n+1-and(n, n+1))]` -/
def P4237509235264311392.Spec : Prop :=
  ∀ n, P4237509235264311392.a n = A326300 (n + 1)

end A326300

/-! ## A326300.P11130464224923744069

`a(n-1)-xor(n, -(n+2))` with `a(0)=2`
-/

namespace A326300.P11130464224923744069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - Int.xor (n : ℤ) (-(n + 2 : ℤ))

end

end A326300.P11130464224923744069

namespace A326300

/-- `a(n-1)-xor(n, -(n+2))` -/
def P11130464224923744069.Spec : Prop :=
  ∀ n, P11130464224923744069.a n = A326300 (n + 1)

end A326300

/-! ## A326300.P10097483045500619359

`∑[-(2*or(n+1, -(n+1)))]`
-/

namespace A326300.P10097483045500619359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326300.P10097483045500619359

namespace A326300

/-- `∑[-(2*or(n+1, -(n+1)))]` -/
def P10097483045500619359.Spec : Prop :=
  ∀ n, P10097483045500619359.a n = A326300 (n + 1)

end A326300

/-! ## A326300.P10026406718693143492

`∑[gcd(2*(n+1), and(n, n+1))]`
-/

namespace A326300.P10026406718693143492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * (n + 1)) (Nat.land n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326300.P10026406718693143492

namespace A326300

/-- `∑[gcd(2*(n+1), and(n, n+1))]` -/
def P10026406718693143492.Spec : Prop :=
  ∀ n, (P10026406718693143492.a n : ℤ) = A326300 (n + 1)

end A326300

/-! ## A326300.P15772575823114511224

`a(n-1)+xor(n, n+1)+1` with `a(0)=2`
-/

namespace A326300.P15772575823114511224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (Nat.xor n (n + 1) + 1)

end

end A326300.P15772575823114511224

namespace A326300

/-- `a(n-1)+xor(n, n+1)+1` -/
def P15772575823114511224.Spec : Prop :=
  ∀ n, (P15772575823114511224.a n : ℤ) = A326300 (n + 1)

end A326300

/-! ## A326300.P4430063607703699379

`∑[sqrt(A059152(n))]`
-/

namespace A326300.P4430063607703699379
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059152 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326300.P4430063607703699379

namespace A326300

/-- `∑[sqrt(A059152(n))]` -/
def P4430063607703699379.Spec : Prop :=
  ∀ n, P4430063607703699379.a n = (A326300 (n + 1) : ℝ)

end A326300

/-! ## A326300.P4517789049549153200

`∑[A171977(n+1)]`
-/

namespace A326300.P4517789049549153200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326300.P4517789049549153200

namespace A326300

/-- `∑[A171977(n+1)]` -/
def P4517789049549153200.Spec : Prop :=
  ∀ n, P4517789049549153200.a n = A326300 (n + 1)

end A326300

/-! ## A326300.P3992549992448506651

`∑[A038712(n+1)+1]`
-/

namespace A326300.P3992549992448506651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326300.P3992549992448506651

namespace A326300

/-- `∑[A038712(n+1)+1]` -/
def P3992549992448506651.Spec : Prop :=
  ∀ n, P3992549992448506651.a n = A326300 (n + 1)

end A326300

/-! ## A326300.P611855432329557744

`∑[2*A006519(n+1)]`
-/

namespace A326300.P611855432329557744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326300.P611855432329557744

namespace A326300

/-- `∑[2*A006519(n+1)]` -/
def P611855432329557744.Spec : Prop :=
  ∀ n, P611855432329557744.a n = A326300 (n + 1)

end A326300

/-! ## A326300.P12780115446386437961

`∑[A118830(2*(n+1))]`
-/

namespace A326300.P12780115446386437961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326300.P12780115446386437961

namespace A326300

/-- `∑[A118830(2*(n+1))]` -/
def P12780115446386437961.Spec : Prop :=
  ∀ n, P12780115446386437961.a n = A326300 (n + 1)

end A326300

/-! ## A326300.P283450562140813076

`∑[2*(A135481(n)+1)]`
-/

namespace A326300.P283450562140813076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A135481 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326300.P283450562140813076

namespace A326300

/-- `∑[2*(A135481(n)+1)]` -/
def P283450562140813076.Spec : Prop :=
  ∀ n, P283450562140813076.a n = A326300 (n + 1)

end A326300

/-! ## A326300.P486709228469077148

`∑[A059159(n+1)/2]`
-/

namespace A326300.P486709228469077148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059159 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326300.P486709228469077148

namespace A326300

/-- `∑[A059159(n+1)/2]` -/
def P486709228469077148.Spec : Prop :=
  ∀ n, P486709228469077148.a n = (A326300 (n + 1) : ℚ)

end A326300

/-! ## A326300.P9114977914276061874

`∑[A118824(4*(n+1))]`
-/

namespace A326300.P9114977914276061874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326300.P9114977914276061874

namespace A326300

/-- `∑[A118824(4*(n+1))]` -/
def P9114977914276061874.Spec : Prop :=
  ∀ n, P9114977914276061874.a n = A326300 (n + 1)

end A326300

/-!
# A326301: The number of rectangular free polyominoes with n cells where no 4 cells meet at a point.

The programs for A326301, there is no canonical definition to state claims against.
-/

/-! ## A326301.P7542304518952453200

`A030530(A131577(n)²)+A030302(n+1)`
-/

namespace A326301.P7542304518952453200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (A131577 n ^ 2).toNat + A030302 (n + 1)

end

end A326301.P7542304518952453200

/-! ## A326301.P8005492012852366108

`A321729(A266768(2*n))+A186738(n+1)`
-/

namespace A326301.P8005492012852366108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321729 (A266768 (2 * n)).toNat + A186738 (n + 1)

end

end A326301.P8005492012852366108

/-! ## A326301.P14663378186762686566

`A156689(A340329(n))`
-/

namespace A326301.P14663378186762686566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A340329 n).toNat

end

end A326301.P14663378186762686566

/-!
# A326302: a(n) = lcm(n, r(n)) where r(n) = A030101(n) corresponds to the binary reversal of n.

The programs for A326302, the canonical program `A326302.P15542453405491403579` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326302 has offset 0).

The definition of A326302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326302.P15542453405491403579

`lcm(n, A030101(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A326302

/-- `lcm(n, A030101(n))` -/
def P15542453405491403579.Spec : Prop :=
  ∀ n, (P15542453405491403579.a n : ℤ) = A326302 n

theorem P15542453405491403579.correct : P15542453405491403579.Spec := by
  intro n
  simp only [A326302]

end A326302

/-! ## A326302.P11365409582024692227

`lcm(A026741(n), A057889(n))`
-/

namespace A326302.P11365409582024692227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026741 n) (A057889 n)

end

end A326302.P11365409582024692227

namespace A326302

/-- `lcm(A026741(n), A057889(n))` -/
def P11365409582024692227.Spec : Prop :=
  ∀ n, (P11365409582024692227.a n : ℤ) = A326302 n

end A326302

/-! ## A326302.P11272600665517314415

`lcm(A325401(n), A325402(n))`
-/

namespace A326302.P11272600665517314415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A325401 n) (A325402 n)

end

end A326302.P11272600665517314415

namespace A326302

/-- `lcm(A325401(n), A325402(n))` -/
def P11272600665517314415.Spec : Prop :=
  ∀ n, (P11272600665517314415.a n : ℤ) = A326302 n

end A326302

/-! ## A326302.P5214471974948348915

`lcm(A028310(n), A325401(2*n))`
-/

namespace A326302.P5214471974948348915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A325401 (2 * n))

end

end A326302.P5214471974948348915

namespace A326302

/-- `lcm(A028310(n), A325401(2*n))` -/
def P5214471974948348915.Spec : Prop :=
  ∀ n, (P5214471974948348915.a n : ℤ) = A326302 n

end A326302

/-! ## A326302.P1394284711899752331

`lcm(A181983(A325401(2*n)), A181983(n))`
-/

namespace A326302.P1394284711899752331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A181983 (A325401 (2 * n)).toNat) (A181983 n)

end

end A326302.P1394284711899752331

namespace A326302

/-- `lcm(A181983(A325401(2*n)), A181983(n))` -/
def P1394284711899752331.Spec : Prop :=
  ∀ n, (P1394284711899752331.a n : ℤ) = A326302 n

end A326302

/-!
# A326304: Multiplicative with a(p^k) = a(p-1)^k + 1 for any k > 0 and any prime number p.

The programs for A326304, there is no canonical definition to state claims against.
-/

/-! ## A326304.P5969597091654773073

`A007913(lcm(A000079(n), A106151(n+1)))`
-/

namespace A326304.P5969597091654773073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Int.lcm (A000079 n) (A106151 (n + 1)))

end

end A326304.P5969597091654773073

/-! ## A326304.P17934939705919507863

`A007947(A106151(2*(n+1))^A193180(n))`
-/

namespace A326304.P17934939705919507863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A106151 (2 * (n + 1)) : ℚ) ^ (A193180 n : ℤ))).toNat

end

end A326304.P17934939705919507863

/-! ## A326304.P10394781588360113412

`A056832(A000079(n))*A086799(A003602(n+1))`
-/

namespace A326304.P10394781588360113412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (A000079 n).toNat * A086799 (A003602 (n + 1)).toNat

end

end A326304.P10394781588360113412

/-! ## A326304.P12780350755725180558

`A007947(A106151(2*(n+1))^A027750(n+1))`
-/

namespace A326304.P12780350755725180558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A106151 (2 * (n + 1)) : ℚ) ^ (A027750 (n + 1) : ℤ))).toNat

end

end A326304.P12780350755725180558

/-! ## A326304.P2577000656088880112

`A007947(A106151(2*(n+1))^A307995(n+1))`
-/

namespace A326304.P2577000656088880112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A106151 (2 * (n + 1)) : ℚ) ^ (A307995 (n + 1) : ℤ))).toNat

end

end A326304.P2577000656088880112

/-!
# A326305: Dirichlet g.f.: zeta(s-1) * (1 - 2^(-s)) / zeta(s).

The programs for A326305, the canonical program `A326305.P12945251501579956445` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326305 has offset 1).

The definition of A326305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326305.P18387223581416659702

`∑{d}[n+1, #*A092673((n+1)/#)]`
-/

namespace A326305.P18387223581416659702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326305.P18387223581416659702

namespace A326305

/-- `∑{d}[n+1, #*A092673((n+1)/#)]` -/
def P18387223581416659702.Spec : Prop :=
  ∀ n, P18387223581416659702.a n = A326305 (n + 1)

end A326305

/-! ## A326305.P14990123307763805133

`A080736(n+1)/A000034(n)`
-/

namespace A326305.P14990123307763805133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080736 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A326305.P14990123307763805133

namespace A326305

/-- `A080736(n+1)/A000034(n)` -/
def P14990123307763805133.Spec : Prop :=
  ∀ n, P14990123307763805133.a n = (A326305 (n + 1) : ℚ)

end A326305

/-! ## A326305.P17527458010527308029

`A080736(n+1)/A084642(n)`
-/

namespace A326305.P17527458010527308029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080736 (n + 1) : ℚ) / (A084642 n : ℚ)

end

end A326305.P17527458010527308029

namespace A326305

/-- `A080736(n+1)/A084642(n)` -/
def P17527458010527308029.Spec : Prop :=
  ∀ n, P17527458010527308029.a n = (A326305 (n + 1) : ℚ)

end A326305

/-! ## A326305.P3090903369297794309

`A080736(n+1)/A177704(n)`
-/

namespace A326305.P3090903369297794309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080736 (n + 1) : ℚ) / (A177704 n : ℚ)

end

end A326305.P3090903369297794309

namespace A326305

/-- `A080736(n+1)/A177704(n)` -/
def P3090903369297794309.Spec : Prop :=
  ∀ n, P3090903369297794309.a n = (A326305 (n + 1) : ℚ)

end A326305

/-! ## A326305.P300015067158455192

`A080736(n+1)/A375961(n)`
-/

namespace A326305.P300015067158455192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080736 (n + 1) : ℚ) / (A375961 n : ℚ)

end

end A326305.P300015067158455192

namespace A326305

/-- `A080736(n+1)/A375961(n)` -/
def P300015067158455192.Spec : Prop :=
  ∀ n, P300015067158455192.a n = (A326305 (n + 1) : ℚ)

end A326305

/-! ## A326305.P6019257782432003258

`A126246(n+1)-A319998(n+1)`
-/

namespace A326305.P6019257782432003258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126246 (n + 1) - A319998 (n + 1)

end

end A326305.P6019257782432003258

namespace A326305

/-- `A126246(n+1)-A319998(n+1)` -/
def P6019257782432003258.Spec : Prop :=
  ∀ n, P6019257782432003258.a n = A326305 (n + 1)

end A326305

/-! ## A326305.P12840082656646871255

`A080736(n+1)/A087230(n+1)`
-/

namespace A326305.P12840082656646871255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080736 (n + 1) : ℚ) / (A087230 (n + 1) : ℚ)

end

end A326305.P12840082656646871255

namespace A326305

/-- `A080736(n+1)/A087230(n+1)` -/
def P12840082656646871255.Spec : Prop :=
  ∀ n, P12840082656646871255.a n = (A326305 (n + 1) : ℚ)

end A326305

/-! ## A326305.P1510072831354866722

`A080736(n+1)²/A062570(n+1)`
-/

namespace A326305.P1510072831354866722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080736 (n + 1) ^ 2 : ℚ) / (A062570 (n + 1) : ℚ)

end

end A326305.P1510072831354866722

namespace A326305

/-- `A080736(n+1)²/A062570(n+1)` -/
def P1510072831354866722.Spec : Prop :=
  ∀ n, P1510072831354866722.a n = (A326305 (n + 1) : ℚ)

end A326305

/-! ## A326305.P9459932715133695376

`Δ[A002088(n)]-A319998(n+1)/2`
-/

namespace A326305.P9459932715133695376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A319998 (n + 1) : ℚ) / 2

end

end A326305.P9459932715133695376

namespace A326305

/-- `Δ[A002088(n)]-A319998(n+1)/2` -/
def P9459932715133695376.Spec : Prop :=
  ∀ n, P9459932715133695376.a n = (A326305 (n + 1) : ℚ)

end A326305

/-! ## A326305.P9657068841602996427

`Δ[A005728(n)]-A319998(n+1)/2`
-/

namespace A326305.P9657068841602996427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A319998 (n + 1) : ℚ) / 2

end

end A326305.P9657068841602996427

namespace A326305

/-- `Δ[A005728(n)]-A319998(n+1)/2` -/
def P9657068841602996427.Spec : Prop :=
  ∀ n, P9657068841602996427.a n = (A326305 (n + 1) : ℚ)

end A326305

/-! ## A326305.P15062743389204685419

`2*A000010(n+1)-A126246(n+1)`
-/

namespace A326305.P15062743389204685419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1) - A126246 (n + 1)

end

end A326305.P15062743389204685419

namespace A326305

/-- `2*A000010(n+1)-A126246(n+1)` -/
def P15062743389204685419.Spec : Prop :=
  ∀ n, P15062743389204685419.a n = A326305 (n + 1)

end A326305

/-! ## A326305.P9648092247202326520

`(A319997(n+1)+A000010(n+1))/2`
-/

namespace A326305.P9648092247202326520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319997 (n + 1) + A000010 (n + 1) : ℚ) / 2

end

end A326305.P9648092247202326520

namespace A326305

/-- `(A319997(n+1)+A000010(n+1))/2` -/
def P9648092247202326520.Spec : Prop :=
  ∀ n, P9648092247202326520.a n = (A326305 (n + 1) : ℚ)

end A326305

/-! ## A326305.P15658863321374070810

`A319997(n+1)+A319998(n+1)/2`
-/

namespace A326305.P15658863321374070810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319997 (n + 1) : ℚ) + (A319998 (n + 1) : ℚ) / 2

end

end A326305.P15658863321374070810

namespace A326305

/-- `A319997(n+1)+A319998(n+1)/2` -/
def P15658863321374070810.Spec : Prop :=
  ∀ n, P15658863321374070810.a n = (A326305 (n + 1) : ℚ)

end A326305

/-! ## A326305.P15216906951200671133

`A000010(n+1)-A319998(n+1)/2`
-/

namespace A326305.P15216906951200671133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) - (A319998 (n + 1) : ℚ) / 2

end

end A326305.P15216906951200671133

namespace A326305

/-- `A000010(n+1)-A319998(n+1)/2` -/
def P15216906951200671133.Spec : Prop :=
  ∀ n, P15216906951200671133.a n = (A326305 (n + 1) : ℚ)

end A326305

/-! ## A326305.P16822175176437625409

`∑{d}[n+1, A001227(#)*A007432((n+1)/#)]`
-/

namespace A326305.P16822175176437625409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A007432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326305.P16822175176437625409

namespace A326305

/-- `∑{d}[n+1, A001227(#)*A007432((n+1)/#)]` -/
def P16822175176437625409.Spec : Prop :=
  ∀ n, P16822175176437625409.a n = A326305 (n + 1)

end A326305

/-! ## A326305.P12945251501579956445

`∑{d}[n+1, A002131(#)*A007427((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A326305

/-- `∑{d}[n+1, A002131(#)*A007427((n+1)/#)]` -/
def P12945251501579956445.Spec : Prop :=
  ∀ n, P12945251501579956445.a n = A326305 (n + 1)

theorem P12945251501579956445.correct : P12945251501579956445.Spec := by
  intro n
  simp only [A326305, Nat.add_sub_cancel]

end A326305

/-! ## A326305.P17145550323927985215

`∑{d}[n+1, A008683(#)*A026741((n+1)/#)]`
-/

namespace A326305.P17145550323927985215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A026741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326305.P17145550323927985215

namespace A326305

/-- `∑{d}[n+1, A008683(#)*A026741((n+1)/#)]` -/
def P17145550323927985215.Spec : Prop :=
  ∀ n, P17145550323927985215.a n = A326305 (n + 1)

end A326305

/-! ## A326305.P16409266788293095313

`∑{d}[n+1, A000010(#)*A154955((n+1)/#)]`
-/

namespace A326305.P16409266788293095313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326305.P16409266788293095313

namespace A326305

/-- `∑{d}[n+1, A000010(#)*A154955((n+1)/#)]` -/
def P16409266788293095313.Spec : Prop :=
  ∀ n, P16409266788293095313.a n = A326305 (n + 1)

end A326305

/-! ## A326305.P6319865754644041517

`∑{d}[n+1, A130107(#)*A143259((n+1)/#)]`
-/

namespace A326305.P6319865754644041517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A143259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326305.P6319865754644041517

namespace A326305

/-- `∑{d}[n+1, A130107(#)*A143259((n+1)/#)]` -/
def P6319865754644041517.Spec : Prop :=
  ∀ n, P6319865754644041517.a n = A326305 (n + 1)

end A326305

/-! ## A326305.P11431433309223540437

`∑{d}[n+1, A007428(#)*A327096((n+1)/#)]`
-/

namespace A326305.P11431433309223540437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A327096 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326305.P11431433309223540437

namespace A326305

/-- `∑{d}[n+1, A007428(#)*A327096((n+1)/#)]` -/
def P11431433309223540437.Spec : Prop :=
  ∀ n, P11431433309223540437.a n = A326305 (n + 1)

end A326305

/-!
# A326306: Dirichlet g.f.: zeta(s) * zeta(s-1) * Product_{p prime} (1 - p^(1 - s) + p^(-s)).

The programs for A326306, the canonical program `A326306.P9944441612055687665` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326306 has offset 1).

The definition of A326306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326306.P11364322021565268568

`∑{d}[n+1, A003557(#)]`
-/

namespace A326306.P11364322021565268568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003557 d

end

end A326306.P11364322021565268568

namespace A326306

/-- `∑{d}[n+1, A003557(#)]` -/
def P11364322021565268568.Spec : Prop :=
  ∀ n, P11364322021565268568.a n = A326306 (n + 1)

end A326306

/-! ## A326306.P12936270752369410880

`∑{d}[n+1, #/A007947(#)]`
-/

namespace A326306.P12936270752369410880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (A007947 d : ℚ)

end

end A326306.P12936270752369410880

namespace A326306

/-- `∑{d}[n+1, #/A007947(#)]` -/
def P12936270752369410880.Spec : Prop :=
  ∀ n, P12936270752369410880.a n = (A326306 (n + 1) : ℚ)

end A326306

/-! ## A326306.P9944441612055687665

`∑{d}[n+1, #*A276833((n+1)/#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A326306

/-- `∑{d}[n+1, #*A276833((n+1)/#)]` -/
def P9944441612055687665.Spec : Prop :=
  ∀ n, P9944441612055687665.a n = A326306 (n + 1)

theorem P9944441612055687665.correct : P9944441612055687665.Spec := by
  intro n
  simp only [A326306, Nat.add_sub_cancel]

end A326306

/-! ## A326306.P6029249078376484359

`∑{d}[n+1, A000203(#)*A097945((n+1)/#)]`
-/

namespace A326306.P6029249078376484359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A097945 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326306.P6029249078376484359

namespace A326306

/-- `∑{d}[n+1, A000203(#)*A097945((n+1)/#)]` -/
def P6029249078376484359.Spec : Prop :=
  ∀ n, P6029249078376484359.a n = A326306 (n + 1)

end A326306

/-! ## A326306.P18272158753672997920

`∑{d}[n+1, A000005(#)*A300717((n+1)/#)]`
-/

namespace A326306.P18272158753672997920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A300717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326306.P18272158753672997920

namespace A326306

/-- `∑{d}[n+1, A000005(#)*A300717((n+1)/#)]` -/
def P18272158753672997920.Spec : Prop :=
  ∀ n, P18272158753672997920.a n = A326306 (n + 1)

end A326306

/-! ## A326306.P17448979435938925230

`∑{d}[n+1, A007429(#)*A341635((n+1)/#)]`
-/

namespace A326306.P17448979435938925230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A341635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326306.P17448979435938925230

namespace A326306

/-- `∑{d}[n+1, A007429(#)*A341635((n+1)/#)]` -/
def P17448979435938925230.Spec : Prop :=
  ∀ n, P17448979435938925230.a n = A326306 (n + 1)

end A326306

/-! ## A326306.P5149763774657112264

`∑{d}[n+1, A038712(#)*A319993((n+1)/#)]`
-/

namespace A326306.P5149763774657112264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A319993 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326306.P5149763774657112264

namespace A326306

/-- `∑{d}[n+1, A038712(#)*A319993((n+1)/#)]` -/
def P5149763774657112264.Spec : Prop :=
  ∀ n, P5149763774657112264.a n = A326306 (n + 1)

end A326306

/-! ## A326306.P13058832449692139220

`∑{d}[n+1, A160467(#)*A336651((n+1)/#)]`
-/

namespace A326306.P13058832449692139220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160467 d * A336651 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326306.P13058832449692139220

namespace A326306

/-- `∑{d}[n+1, A160467(#)*A336651((n+1)/#)]` -/
def P13058832449692139220.Spec : Prop :=
  ∀ n, P13058832449692139220.a n = A326306 (n + 1)

end A326306

/-! ## A326306.P8218897613157833431

`∑{d}[n+1, A059841(#-1)*A357689((n+1)/#)]`
-/

namespace A326306.P8218897613157833431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A357689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326306.P8218897613157833431

namespace A326306

/-- `∑{d}[n+1, A059841(#-1)*A357689((n+1)/#)]` -/
def P8218897613157833431.Spec : Prop :=
  ∀ n, P8218897613157833431.a n = A326306 (n + 1)

end A326306

/-! ## A326306.P16020986328095281531

`∑{d}[n+1, A295657(#²)]`
-/

namespace A326306.P16020986328095281531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A295657 (d ^ 2)

end

end A326306.P16020986328095281531

namespace A326306

/-- `∑{d}[n+1, A295657(#²)]` -/
def P16020986328095281531.Spec : Prop :=
  ∀ n, P16020986328095281531.a n = A326306 (n + 1)

end A326306

/-! ## A326306.P15722033438055356163

`∑{d}[n+1, A295658(#²)]`
-/

namespace A326306.P15722033438055356163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A295658 (d ^ 2)

end

end A326306.P15722033438055356163

namespace A326306

/-- `∑{d}[n+1, A295658(#²)]` -/
def P15722033438055356163.Spec : Prop :=
  ∀ n, P15722033438055356163.a n = A326306 (n + 1)

end A326306

/-!
# A326307: a(n) is the index of n in the ordered list of the numbers with the same digits as n.

The programs for A326307, there is no canonical definition to state claims against.
-/

/-! ## A326307.P1868418443651236230

`gcd(2, A329767(n-A328447(n)))`
-/

namespace A326307.P1868418443651236230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A329767 ((n : ℤ) - A328447 n).toNat)

end

end A326307.P1868418443651236230

/-! ## A326307.P18095978010751141003

`A332292(abs(Δ[A328447(n)]))`
-/

namespace A326307.P18095978010751141003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332292 |f1 (n + 1) - f1 n|.toNat

end

end A326307.P18095978010751141003

/-! ## A326307.P6017929829897454352

`A054054(or(A055640(n), A213217(n)))`
-/

namespace A326307.P6017929829897454352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (Int.lor (A055640 n) (A213217 n)).toNat

end

end A326307.P6017929829897454352

/-! ## A326307.P8950398345203213666

`A055642(A239217(n+1)-A328447(n))`
-/

namespace A326307.P8950398345203213666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A239217 (n + 1) - A328447 n).toNat

end

end A326307.P8950398345203213666

/-! ## A326307.P8715828953691084420

`abs(A095827(n+1)-A217096(n))`
-/

namespace A326307.P8715828953691084420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A095827 (n + 1) - A217096 n|

end

end A326307.P8715828953691084420

/-! ## A326307.P16015010733365917255

`(A095827(n+1)*A168046(n))!`
-/

namespace A326307.P16015010733365917255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A095827 (n + 1) * A168046 n).toNat

end

end A326307.P16015010733365917255

/-! ## A326307.P14300334117131508690

`gcd(A055642(A004086(n)), A095827(n+1))`
-/

namespace A326307.P14300334117131508690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055642 (A004086 n).toNat) (A095827 (n + 1))

end

end A326307.P14300334117131508690

/-! ## A326307.P15669028566717985335

`gcd(A043562(n), A213217(A004086(n)))`
-/

namespace A326307.P15669028566717985335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A043562 n) (A213217 (A004086 n).toNat)

end

end A326307.P15669028566717985335

/-! ## A326307.P11047973266521443692

`gcd(A015076(A053831(n)), A276502(n+1))`
-/

namespace A326307.P11047973266521443692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015076 (A053831 n).toNat) (A276502 (n + 1))

end

end A326307.P11047973266521443692

/-! ## A326307.P8124027652318602714

`gcd(2, A213217(A055120(n)))`
-/

namespace A326307.P8124027652318602714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A213217 (A055120 n).toNat)

end

end A326307.P8124027652318602714

/-! ## A326307.P5351772776064951112

`A140356(A213217(n)+A055640(n))`
-/

namespace A326307.P5351772776064951112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140356 (A213217 n + A055640 n).toNat

end

end A326307.P5351772776064951112

/-! ## A326307.P9927767606728435994

`A000032(A055641(n)^A193581(n))`
-/

namespace A326307.P9927767606728435994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((A055641 n : ℚ) ^ (A193581 n : ℤ))).toNat

end

end A326307.P9927767606728435994

/-! ## A326307.P15911085769998199026

`A140356(xor(A055640(n), A213217(n)))`
-/

namespace A326307.P15911085769998199026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140356 (Int.xor (A055640 n) (A213217 n)).toNat

end

end A326307.P15911085769998199026

/-! ## A326307.P801132659391478251

`A061901(n)-A360616(A213217(n)²)`
-/

namespace A326307.P801132659391478251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061901 n - A360616 (A213217 n ^ 2).toNat

end

end A326307.P801132659391478251

/-!
# A326310: Arithmetic numbers (A003601) that are not RMS numbers (A140480).

The programs for A326310, there is no canonical definition to state claims against.
-/

/-! ## A326310.P10103361431118310269

`∩[A003601(n+1), comp[A140480(n+1)]]`
-/

namespace A326310.P10103361431118310269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140480 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A326310.P10103361431118310269

/-! ## A326310.P17996846468223167270

`A328944(n+1)-A353673(A308546(n))`
-/

namespace A326310.P17996846468223167270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328944 (n + 1) - A353673 (A308546 n).toNat

end

end A326310.P17996846468223167270

/-! ## A326310.P9884011891422470381

`A328944(n+1)-A010815(A162254(n+1))`
-/

namespace A326310.P9884011891422470381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328944 (n + 1) - A010815 (A162254 (n + 1)).toNat

end

end A326310.P9884011891422470381

/-!
# A326311: Least numbers k such that A004018(k) is nondecreasing.

The programs for A326311, there is no canonical definition to state claims against.
-/

/-! ## A326311.P18146181796508187296

`lt[A001981(n), A178119(A004018(n))]`
-/

namespace A326311.P18146181796508187296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001981 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178119 (A004018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326311.P18146181796508187296

/-! ## A326311.P14577216556523548939

`lt[A025487(3*n+1), A139022(A004018(n))]`
-/

namespace A326311.P14577216556523548939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139022 (A004018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326311.P14577216556523548939

/-! ## A326311.P10680917485164923488

`lt[A078175(n+5), A349823(A004018(n)+1)]`
-/

namespace A326311.P10680917485164923488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349823 (A004018 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326311.P10680917485164923488

/-! ## A326311.P3570845180382721380

`lt[A143128(n+1), A076491(A004018(n))]`
-/

namespace A326311.P3570845180382721380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076491 (A004018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326311.P3570845180382721380

/-! ## A326311.P3919208664325658753

`lt[A000027(2*n+5), A349823(A004018(n)+1)]`
-/

namespace A326311.P3919208664325658753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349823 (A004018 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326311.P3919208664325658753

/-!
# A326312: Where the number of divisors d(k) reaches a new record for numbers k whose prime factors are of the form 3*j+2.

The programs for A326312, there is no canonical definition to state claims against.
-/

/-! ## A326312.P1120662289385095445

`A018391(floor(n/e)+comp[∑[n-2]]+1)`
-/

namespace A326312.P1120662289385095445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018391 (⌊(n : ℝ) / Real.exp 1⌋ + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)).toNat

end

end A326312.P1120662289385095445

/-! ## A326312.P17810342038433243117

`A350786(A320425(n+2))`
-/

namespace A326312.P17810342038433243117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350786 (A320425 (n + 2)).toNat

end

end A326312.P17810342038433243117

/-! ## A326312.P2455944913867165996

`record[A087692(A019565(n+2))]`
-/

namespace A326312.P2455944913867165996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087692 (A019565 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326312.P2455944913867165996

/-! ## A326312.P12450685998611015920

`A018565(∑[A343875(n+2)+1])`
-/

namespace A326312.P12450685998611015920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343875 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018565 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326312.P12450685998611015920

/-! ## A326312.P13876481172612691334

`A225546(A328571(n))+A000079(n)`
-/

namespace A326312.P13876481172612691334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (A328571 n).toNat + A000079 n

end

end A326312.P13876481172612691334

/-!
# A326313: Where the number of divisors d(k) reaches a new record for numbers k whose prime factors are of the form 4*j+3.

The programs for A326313, there is no canonical definition to state claims against.
-/

/-! ## A326313.P16165702233437812009

`A110108(A098588(n))`
-/

namespace A326313.P16165702233437812009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110108 (A098588 n).toNat

end

end A326313.P16165702233437812009

/-! ## A326313.P18444098644452315171

`A110108(record[A272098(n)])`
-/

namespace A326313.P18444098644452315171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110108 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A326313.P18444098644452315171

/-!
# A326314: Where the number of divisors d(k) reaches a new record for numbers k whose prime factors are of the form 6*j+5.

The programs for A326314, there is no canonical definition to state claims against.
-/

/-! ## A326314.P4638186804881617505

`A061898(A230655(n+3))`
-/

namespace A326314.P4638186804881617505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A230655 (n + 3)).toNat

end

end A326314.P4638186804881617505

/-! ## A326314.P7403832331890119465

`A064989(or(1, A230655(n+3)))`
-/

namespace A326314.P7403832331890119465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Int.lor 1 (A230655 (n + 3))).toNat

end

end A326314.P7403832331890119465

/-!
# A326315: Lexicographically earliest sequence of distinct terms such that the digits of a(n) and a(n+1) sum up to a palindrome and a(n) + a(n+1) is also a palindrome.

The programs for A326315, there is no canonical definition to state claims against.
-/

/-! ## A326315.P10159314698783211704

`∑[A323206(ceil(xor(1, n)/2)!)]`
-/

namespace A326315.P10159314698783211704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323206 (Nat.factorial ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326315.P10159314698783211704

/-! ## A326315.P2917520207499147051

`∑[A323206((∑[n+1]%(n+2))!)]`
-/

namespace A326315.P2917520207499147051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323206 (Nat.factorial ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326315.P2917520207499147051

/-! ## A326315.P9009675212206815248

`∑[A147389((floor(n/(xor(n, n+1)+1))+1)!)]`
-/

namespace A326315.P9009675212206815248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147389 (Nat.factorial (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326315.P9009675212206815248

/-! ## A326315.P9994150725510201483

`∑[gcd(3*(2^n-gcd(2, n))+4, A008683(6*4^n-1))]`
-/

namespace A326315.P9994150725510201483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * ((2 ^ n : ℤ) - (Nat.gcd 2 n : ℤ)) + 4) (A008683 (6 * 4 ^ n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326315.P9994150725510201483

/-!
# A326317: Lexicographically earliest sequence of distinct terms such that the digits of a(n) and a(n+1) sum up to a square and a(n) + a(n+1) is also a square.

The programs for A326317, there is no canonical definition to state claims against.
-/

/-! ## A326317.P3436277610963775406

`or(n, ∑[ceil(∏{e}[(2*n)!, n-1+#]/6)])`
-/

namespace A326317.P3436277610963775406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f2 n), ((n : ℤ) - 1 + (Nat.factorization (f2 n) p : ℤ)) : ℤ) : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326317.P3436277610963775406

/-!
# A326321: Sum of the n-th powers of multinomials M(n; mu), where mu ranges over all compositions of n.

The programs for A326321, there is no canonical definition to state claims against.
-/

/-! ## A326321.P4383409957904346406

`A326322(∑[4*n])`
-/

namespace A326321.P4383409957904346406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326322 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326321.P4383409957904346406

/-!
# A326322: Square array A(n,k), n>=0, k>=0, read by antidiagonals: A(n,k) = sum of the k-th powers of multinomials M(n; mu), where mu ranges over all compositions of n.

The programs for A326322, there is no canonical definition to state claims against.
-/

/-! ## A326322.P18226029760436590135

`and(A293785(n), A294734(A294750(n)))`
-/

namespace A326322.P18226029760436590135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A293785 n) (A294734 (A294750 n).toNat)

end

end A326322.P18226029760436590135

/-! ## A326322.P5006048310166607640

`or(A070205(A174109(n)), A381426(n))`
-/

namespace A326322.P5006048310166607640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070205 (A174109 n).toNat) (A381426 n)

end

end A326322.P5006048310166607640

/-! ## A326322.P3508604352373029906

`or(A010894(A056860(n+2)), A381426(n))`
-/

namespace A326322.P3508604352373029906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A056860 (n + 2)).toNat + 21)) (A381426 n)

end

end A326322.P3508604352373029906

/-! ## A326322.P4458139196321504032

`or(A007949(A000045(n+4)), A381426(n))`
-/

namespace A326322.P4458139196321504032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007949 (A000045 (n + 4)).toNat) (A381426 n)

end

end A326322.P4458139196321504032

/-! ## A326322.P821174459480373553

`A381426(n)+A007814(A209511(n+1))`
-/

namespace A326322.P821174459480373553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381426 n + A007814 (A209511 (n + 1)).toNat

end

end A326322.P821174459480373553

/-!
# A326323: A(n, k) = A_{n}(k) where A_{n}(x) are the Eulerian polynomials, square array read by ascending antidiagonals, for n >= 0 and k >= 0.

The programs for A326323, there is no canonical definition to state claims against.
-/

/-! ## A326323.P14599106206615785500

`A332700(A002378(n)%A080036(n))`
-/

namespace A326323.P14599106206615785500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332700 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A326323.P14599106206615785500

/-! ## A326323.P6516684576016315780

`A332700(A061579(n))`
-/

namespace A326323.P6516684576016315780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332700 (A061579 n).toNat

end

end A326323.P6516684576016315780

/-! ## A326323.P15934256238627524744

`A332700(A114327(n)+n)`
-/

namespace A326323.P15934256238627524744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332700 (A114327 n + (n : ℤ)).toNat

end

end A326323.P15934256238627524744

/-! ## A326323.P18329882321421659625

`A332700(A057944(n)+A025581(n))`
-/

namespace A326323.P18329882321421659625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332700 (A057944 n + A025581 n).toNat

end

end A326323.P18329882321421659625

/-! ## A326323.P16226010908445918247

`A332700(A038722(n+2))`
-/

namespace A326323.P16226010908445918247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332700 (A038722 (n + 2)).toNat

end

end A326323.P16226010908445918247

/-!
# A326324: a(n) = A_{5}(n) where A_{m}(x) are the Eulerian polynomials as defined in A326323.

The programs for A326324, there is no canonical definition to state claims against.
-/

/-! ## A326324.P17444367531260330954

`ceil(A201368(n)/5)`
-/

namespace A326324.P17444367531260330954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A201368 n : ℚ) / 5⌉

end

end A326324.P17444367531260330954

/-! ## A326324.P11885739231731734101

`A201368(A028310(n))/5`
-/

namespace A326324.P11885739231731734101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201368 (A028310 n).toNat : ℚ) / 5

end

end A326324.P11885739231731734101

/-! ## A326324.P1958209385538404485

`A201368(n)/5%A243980(n+1)`
-/

namespace A326324.P1958209385538404485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201368 n : ℚ) / (Int.tmod 5 (A243980 (n + 1)) : ℚ)

end

end A326324.P1958209385538404485

/-! ## A326324.P11525470701463724327

`A201368(n)/gcd(5, A201367(n))`
-/

namespace A326324.P11525470701463724327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201368 n : ℚ) / (Int.gcd 5 (A201367 n) : ℚ)

end

end A326324.P11525470701463724327

/-! ## A326324.P16860221376175647841

`A201368(n)/A201365(n)%8`
-/

namespace A326324.P16860221376175647841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201368 n : ℚ) / (Int.tmod (A201365 n) 8 : ℚ)

end

end A326324.P16860221376175647841

/-!
# A326325: a(n) = 2^n*n!*([z^n] exp(x*z)*tanh(z))(1/2).

The programs for A326325, there is no canonical definition to state claims against.
-/

/-! ## A326325.P13807232861453354580

`1-A212435(n)`
-/

namespace A326325.P13807232861453354580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A212435 n

end

end A326325.P13807232861453354580

/-! ## A326325.P3081728116137092314

`-xor(A001586(n), A087960(n))`
-/

namespace A326325.P3081728116137092314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A001586 n) (A087960 n)

end

end A326325.P3081728116137092314

/-! ## A326325.P6986240012011907622

`-xor(A015807(n), A188458(n))`
-/

namespace A326325.P6986240012011907622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A015807 n) (A188458 n)

end

end A326325.P6986240012011907622

/-! ## A326325.P8143985684547148076

`-xor(A016155(n), A188458(n))`
-/

namespace A326325.P8143985684547148076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A016155 n) (A188458 n)

end

end A326325.P8143985684547148076

/-! ## A326325.P8451613627764422482

`-xor(A033999(n), A188458(n))`
-/

namespace A326325.P8451613627764422482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A033999 n) (A188458 n)

end

end A326325.P8451613627764422482

/-!
# A326327: A(n, k) = (m*k)! [x^k] MittagLefflerE(m, x)^(-n), for m = 2, n >= 0, k >= 0; square array read by descending antidiagonals.

The programs for A326327, there is no canonical definition to state claims against.
-/

/-! ## A326327.P12216137216178088995

`A097807(n)*A341268(A061579(n))`
-/

namespace A326327.P12216137216178088995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A341268 (A061579 n).toNat

end

end A326327.P12216137216178088995

/-!
# A326328: a(n) = (2*n)! [x^(2*n)] cosh(x)^(-3).

The programs for A326328, there is no canonical definition to state claims against.
-/

/-! ## A326328.P17379139415511271196

`1/2*(A028296(n)-A028296(n+1))`
-/

namespace A326328.P17379139415511271196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A028296 n - A028296 (n + 1) : ℚ)

end

end A326328.P17379139415511271196

/-! ## A326328.P8822013880960307660

`(-1)^n/2*(A000364(n)+A000364(n+1))`
-/

namespace A326328.P8822013880960307660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) / 2 * (A000364 n + A000364 (n + 1) : ℚ)

end

end A326328.P8822013880960307660

/-! ## A326328.P16174006822038409285

`Δ[-(A028296(n)/2)]`
-/

namespace A326328.P16174006822038409285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A028296 n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A326328.P16174006822038409285

/-! ## A326328.P7043555773224992974

`Δ[A009832(2*n)/2]`
-/

namespace A326328.P7043555773224992974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009832 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A326328.P7043555773224992974

/-! ## A326328.P14202066520893203696

`Δ[A119880(2*n)/2]`
-/

namespace A326328.P14202066520893203696
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119880 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A326328.P14202066520893203696

/-!
# A326329: Number of simple graphs covering {1..n} with no crossing or nesting edges.

The programs for A326329, the canonical program `A326329.P10505927850353331757` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326329 has offset 0).

The definition of A326329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326329.P1784809389001690524

`ogf((-1+3x)/(-1+3x+x^2+x^3))`
-/

namespace A326329.P1784809389001690524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -3, -1, -1] n

end

end A326329.P1784809389001690524

namespace A326329

/-- `ogf((-1+3x)/(-1+3x+x^2+x^3))` -/
def P1784809389001690524.Spec : Prop :=
  ∀ n, P1784809389001690524.a n = A326329 n

end A326329

/-! ## A326329.P10505927850353331757

`3*a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A326329

/-- `3*a(n-1)+a(n-2)+a(n-3)` -/
def P10505927850353331757.Spec : Prop :=
  ∀ n, (P10505927850353331757.a n : ℤ) = A326329 n

theorem P10505927850353331757.correct : P10505927850353331757.Spec := by
  intro n
  simp only [A326329]

end A326329

/-! ## A326329.P4783107046626117330

`A073717(abs(1-n))`
-/

namespace A326329.P4783107046626117330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073717 |1 - (n : ℤ)|.toNat

end

end A326329.P4783107046626117330

namespace A326329

/-- `A073717(abs(1-n))` -/
def P4783107046626117330.Spec : Prop :=
  ∀ n, P4783107046626117330.a n = A326329 n

end A326329

/-! ## A326329.P6698055332630248088

`A075536(abs(2*(1-n)))`
-/

namespace A326329.P6698055332630248088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075536 |2 * (1 - (n : ℤ))|.toNat

end

end A326329.P6698055332630248088

namespace A326329

/-- `A075536(abs(2*(1-n)))` -/
def P6698055332630248088.Spec : Prop :=
  ∀ n, P6698055332630248088.a n = A326329 n

end A326329

/-! ## A326329.P2713858057631951665

`A098184(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A326329.P2713858057631951665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098184 (n - 1) - a (n - 1)

end

end A326329.P2713858057631951665

namespace A326329

/-- `A098184(n-1)-a(n-1)` -/
def P2713858057631951665.Spec : Prop :=
  ∀ n, P2713858057631951665.a n = A326329 n

end A326329

/-! ## A326329.P15337182971527738591

`A000213(2*(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A326329.P15337182971527738591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000213 (2 * ((n : ℤ) - 1)).toNat - a (n - 1)

end

end A326329.P15337182971527738591

namespace A326329

/-- `A000213(2*(n-1))-a(n-1)` -/
def P15337182971527738591.Spec : Prop :=
  ∀ n, P15337182971527738591.a n = A326329 n

end A326329

/-! ## A326329.P11698322903367013104

`A112476(comp[2*(n+1)])+ceil(sin(n)²)`
-/

namespace A326329.P11698322903367013104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112476 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A326329.P11698322903367013104

namespace A326329

/-- `A112476(comp[2*(n+1)])+ceil(sin(n)²)` -/
def P11698322903367013104.Spec : Prop :=
  ∀ n, P11698322903367013104.a n = A326329 n

end A326329

/-! ## A326329.P17552667147799034108

`A000073(ceil(sqrt(A154254(n))-n))`
-/

namespace A326329.P17552667147799034108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 ⌈Real.sqrt (A154254 n : ℝ) - (n : ℝ)⌉.toNat

end

end A326329.P17552667147799034108

namespace A326329

/-- `A000073(ceil(sqrt(A154254(n))-n))` -/
def P17552667147799034108.Spec : Prop :=
  ∀ n, P17552667147799034108.a n = A326329 n

end A326329

/-! ## A326329.P7954728852226858701

`A000073(A005843(abs(1-n))+1)`
-/

namespace A326329.P7954728852226858701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A005843 |1 - (n : ℤ)|.toNat + 1).toNat

end

end A326329.P7954728852226858701

namespace A326329

/-- `A000073(A005843(abs(1-n))+1)` -/
def P7954728852226858701.Spec : Prop :=
  ∀ n, P7954728852226858701.a n = A326329 n

end A326329

/-! ## A326329.P17162918784387405560

`A081172(2*n)-A001590(2*n)`
-/

namespace A326329.P17162918784387405560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (2 * n) - A001590 (2 * n)

end

end A326329.P17162918784387405560

namespace A326329

/-- `A081172(2*n)-A001590(2*n)` -/
def P17162918784387405560.Spec : Prop :=
  ∀ n, P17162918784387405560.a n = A326329 n

end A326329

/-! ## A326329.P4821537544537248322

`∑[A081172(2*n)-A000073(2*n)]`
-/

namespace A326329.P4821537544537248322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (2 * n) - A000073 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326329.P4821537544537248322

namespace A326329

/-- `∑[A081172(2*n)-A000073(2*n)]` -/
def P4821537544537248322.Spec : Prop :=
  ∀ n, P4821537544537248322.a n = A326329 n

end A326329

/-! ## A326329.P12426755574978853721

`A000073(and(2*n-1, A134062(n))+1)`
-/

namespace A326329.P12426755574978853721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (Int.land ((2 * n : ℤ) - 1) (A134062 n) + 1).toNat

end

end A326329.P12426755574978853721

namespace A326329

/-- `A000073(and(2*n-1, A134062(n))+1)` -/
def P12426755574978853721.Spec : Prop :=
  ∀ n, P12426755574978853721.a n = A326329 n

end A326329

/-! ## A326329.P8834921856492273090

`A098184(n)-A073717(n)`
-/

namespace A326329.P8834921856492273090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098184 n - A073717 n

end

end A326329.P8834921856492273090

namespace A326329

/-- `A098184(n)-A073717(n)` -/
def P8834921856492273090.Spec : Prop :=
  ∀ n, P8834921856492273090.a n = A326329 n

end A326329

/-! ## A326329.P5374615866244076573

`Δ[A099463(n)]-A073717(n)`
-/

namespace A326329.P5374615866244076573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A073717 n

end

end A326329.P5374615866244076573

namespace A326329

/-- `Δ[A099463(n)]-A073717(n)` -/
def P5374615866244076573.Spec : Prop :=
  ∀ n, P5374615866244076573.a n = A326329 n

end A326329

/-! ## A326329.P13612205899446751863

`A000213(2*n)-A073717(n)`
-/

namespace A326329.P13612205899446751863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (2 * n) - A073717 n

end

end A326329.P13612205899446751863

namespace A326329

/-- `A000213(2*n)-A073717(n)` -/
def P13612205899446751863.Spec : Prop :=
  ∀ n, P13612205899446751863.a n = A326329 n

end A326329

/-! ## A326329.P3726215762647274635

`A099463(n+1)-A231057(n+1)`
-/

namespace A326329.P3726215762647274635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099463 (n + 1) - A231057 (n + 1)

end

end A326329.P3726215762647274635

namespace A326329

/-- `A099463(n+1)-A231057(n+1)` -/
def P3726215762647274635.Spec : Prop :=
  ∀ n, P3726215762647274635.a n = A326329 n

end A326329

/-! ## A326329.P17712388049717328495

`A098184(n)-A000073(2*n+1)`
-/

namespace A326329.P17712388049717328495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098184 n - A000073 (2 * n + 1)

end

end A326329.P17712388049717328495

namespace A326329

/-- `A098184(n)-A000073(2*n+1)` -/
def P17712388049717328495.Spec : Prop :=
  ∀ n, P17712388049717328495.a n = A326329 n

end A326329

/-! ## A326329.P9966753181103067319

`A001590(2*n+1)-A099463(n)`
-/

namespace A326329.P9966753181103067319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (2 * n + 1) - A099463 n

end

end A326329.P9966753181103067319

namespace A326329

/-- `A001590(2*n+1)-A099463(n)` -/
def P9966753181103067319.Spec : Prop :=
  ∀ n, P9966753181103067319.a n = A326329 n

end A326329

/-! ## A326329.P14670442275382725731

`A000213(2*n)-A075536(2*n)`
-/

namespace A326329.P14670442275382725731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (2 * n) - A075536 (2 * n)

end

end A326329.P14670442275382725731

namespace A326329

/-- `A000213(2*n)-A075536(2*n)` -/
def P14670442275382725731.Spec : Prop :=
  ∀ n, P14670442275382725731.a n = A326329 n

end A326329

/-! ## A326329.P6637487070995531153

`A141036(2*n)-A000213(2*n)`
-/

namespace A326329.P6637487070995531153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 (2 * n) - A000213 (2 * n)

end

end A326329.P6637487070995531153

namespace A326329

/-- `A141036(2*n)-A000213(2*n)` -/
def P6637487070995531153.Spec : Prop :=
  ∀ n, P6637487070995531153.a n = A326329 n

end A326329

/-!
# A326330: Number of simple graphs with vertices {1..n} whose nesting edges are connected.

The programs for A326330, there is no canonical definition to state claims against.
-/

/-! ## A326330.P8881223860502195903

`A164225(A384154(n))`
-/

namespace A326330.P8881223860502195903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164225 (A384154 n).toNat

end

end A326330.P8881223860502195903

/-! ## A326330.P13444196199128182814

`A164225(floor(A164138(n)/3))`
-/

namespace A326330.P13444196199128182814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164225 ⌊(A164138 n : ℚ) / 3⌋.toNat

end

end A326330.P13444196199128182814

/-! ## A326330.P16280686587289985470

`A164225(floor(sqrt(A006765(n+1))))`
-/

namespace A326330.P16280686587289985470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164225 (Int.sqrt (A006765 (n + 1))).toNat

end

end A326330.P16280686587289985470

/-!
# A326331: Number of simple graphs covering the vertices {1..n} whose nesting edges are connected.

The programs for A326331, there is no canonical definition to state claims against.
-/

/-! ## A326331.P11410089597068278052

`A301681(a(n-1)+a(n-3))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A326331.P11410089597068278052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0] fun n a =>
  A301681 (a (n - 1) + a (n - 3)).toNat

end

end A326331.P11410089597068278052

/-! ## A326331.P7749983387426145923

`A056119(2*a(n-1)-a(n-4))-1` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A326331.P7749983387426145923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 1] fun n a =>
  A056119 (2 * a (n - 1) - a (n - 4)).toNat - 1

end

end A326331.P7749983387426145923

/-! ## A326331.P14970414300301392146

`A304021(A297940(n+1))`
-/

namespace A326331.P14970414300301392146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304021 (A297940 (n + 1)).toNat

end

end A326331.P14970414300301392146

/-!
# A326332: Number of integer partitions of n with unsortable prime factors.

The programs for A326332, there is no canonical definition to state claims against.
-/

/-! ## A326332.P7285963285371539103

`A000041(n)-A326333(n)`
-/

namespace A326332.P7285963285371539103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A326333 n

end

end A326332.P7285963285371539103

/-! ## A326332.P3576425111524214665

`A213598(n)-A326333(n)`
-/

namespace A326332.P3576425111524214665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A326333 n

end

end A326332.P3576425111524214665

/-! ## A326332.P5430481396412796681

`sqrt(A001255(n))-A326333(n)`
-/

namespace A326332.P5430481396412796681
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A326333 n : ℝ)

end

end A326332.P5430481396412796681

/-! ## A326332.P13452758841447508234

`∑[A002865(n)]-A326333(n)`
-/

namespace A326332.P13452758841447508234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A326333 n

end

end A326332.P13452758841447508234

/-! ## A326332.P5139687931809584922

`A133041(n)-(A326333(n)+n)`
-/

namespace A326332.P5139687931809584922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A326333 n + (n : ℤ))

end

end A326332.P5139687931809584922

/-!
# A326333: Number of integer partitions of n with sortable prime factors.

The programs for A326333, there is no canonical definition to state claims against.
-/

/-! ## A326333.P2999089100128163109

`A000041(n)-A326332(n)`
-/

namespace A326333.P2999089100128163109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A326332 n

end

end A326333.P2999089100128163109

/-! ## A326333.P9698588120529709742

`A213598(n)-A326332(n)`
-/

namespace A326333.P9698588120529709742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A326332 n

end

end A326333.P9698588120529709742

/-! ## A326333.P1688244000169137724

`sqrt(A001255(n))-A326332(n)`
-/

namespace A326333.P1688244000169137724
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A326332 n : ℝ)

end

end A326333.P1688244000169137724

/-! ## A326333.P6827625125195061138

`∑[A002865(n)]-A326332(n)`
-/

namespace A326333.P6827625125195061138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A326332 n

end

end A326333.P6827625125195061138

/-! ## A326333.P2749672992458399706

`A035363(2*n)-A326332(n)`
-/

namespace A326333.P2749672992458399706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A326332 n

end

end A326333.P2749672992458399706

/-!
# A326334: Number of sortable factorizations of n.

The programs for A326334, there is no canonical definition to state claims against.
-/

/-! ## A326334.P4591956588905504246

`Δ[A096276(n)]-A326291(n+1)`
-/

namespace A326334.P4591956588905504246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A326291 (n + 1)

end

end A326334.P4591956588905504246

/-! ## A326334.P10304440838425326886

`A001055(n+1)-A326291(n+1)`
-/

namespace A326334.P10304440838425326886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A326291 (n + 1)

end

end A326334.P10304440838425326886

/-! ## A326334.P9565106114846091659

`Δ[A096276(n)]-A349797(n+1)/2`
-/

namespace A326334.P9565106114846091659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A349797 (n + 1) : ℚ) / 2

end

end A326334.P9565106114846091659

/-! ## A326334.P5005147343386158495

`A028422(n+1)+1-A326291(n+1)`
-/

namespace A326334.P5005147343386158495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) + (1 - A326291 (n + 1))

end

end A326334.P5005147343386158495

/-! ## A326334.P8220639512821889387

`A001055(n+1)-A349797(n+1)/2`
-/

namespace A326334.P8220639512821889387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001055 (n + 1) : ℚ) - (A349797 (n + 1) : ℚ) / 2

end

end A326334.P8220639512821889387

/-! ## A326334.P7919887573670167074

`∑{d}[n+1, A050370(#)]-A326291(n+1)`
-/

namespace A326334.P7919887573670167074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050370 d - A326291 (n + 1)

end

end A326334.P7919887573670167074

/-! ## A326334.P1536016347312061397

`A001055(n+1)-floor(A050328(n+1)/10)`
-/

namespace A326334.P1536016347312061397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - ⌊(A050328 (n + 1) : ℚ) / 10⌋

end

end A326334.P1536016347312061397

/-! ## A326334.P15423471673683662472

`A028422(n+1)+1-floor(A050328(n+1)/10)`
-/

namespace A326334.P15423471673683662472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) + 1 - ⌊(A050328 (n + 1) : ℚ) / 10⌋

end

end A326334.P15423471673683662472

/-! ## A326334.P6760997873027923734

`A001055(n+1)-A059995(A050328(n+1))`
-/

namespace A326334.P6760997873027923734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A059995 (A050328 (n + 1)).toNat

end

end A326334.P6760997873027923734

/-! ## A326334.P12570548074101647567

`A001055(n+1)-A236567(A008480(n+1))`
-/

namespace A326334.P12570548074101647567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A236567 (A008480 (n + 1)).toNat

end

end A326334.P12570548074101647567

/-!
# A326335: Number of set partitions of {1..n} whose nesting blocks are connected.

The programs for A326335, there is no canonical definition to state claims against.
-/

/-! ## A326335.P9358743863317660488

`A059995(A220913(n))+1`
-/

namespace A326335.P9358743863317660488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A220913 n).toNat + 1

end

end A326335.P9358743863317660488

/-! ## A326335.P9379491581707352281

`A008616(A108304(n)+4)`
-/

namespace A326335.P9379491581707352281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A108304 n + 4).toNat

end

end A326335.P9379491581707352281

/-! ## A326335.P10689254358577904235

`A008616(A287254(n)+4)`
-/

namespace A326335.P10689254358577904235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A287254 n + 4).toNat

end

end A326335.P10689254358577904235

/-!
# A326337: Number of simple graphs covering the vertices {1..n} whose weakly nesting edges are connected.

The programs for A326337, there is no canonical definition to state claims against.
-/

/-! ## A326337.P9351005918110488718

`A240853(A240513(n+1)+1)`
-/

namespace A326337.P9351005918110488718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240853 (A240513 (n + 1) + 1).toNat

end

end A326337.P9351005918110488718

/-! ## A326337.P10682922777727823502

`A076109(a(n-1)*A051080(n+1)+1)` with `a(0)=1`
-/

namespace A326337.P10682922777727823502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076109 (a (n - 1) * A051080 (n + 1) + 1).toNat

end

end A326337.P10682922777727823502

/-!
# A326338: Number of simple graphs with vertices {1..n} whose weakly nesting edges are connected.

The programs for A326338, there is no canonical definition to state claims against.
-/

/-! ## A326338.P5960936526190651657

`A073757(A338193(n))`
-/

namespace A326338.P5960936526190651657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (A338193 n).toNat

end

end A326338.P5960936526190651657

/-! ## A326338.P16993495979766713698

`A156077(A307085(n+1))`
-/

namespace A326338.P16993495979766713698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (A307085 (n + 1)).toNat

end

end A326338.P16993495979766713698

/-!
# A326339: Number of connected simple graphs with vertices {1..n} and no crossing or nesting edges.

The programs for A326339, the canonical program `A326339.P1185651992630632068` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326339 has offset 0).

The definition of A326339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326339.P12071765621380546392

`ogf((1-3x+x^2+x^3)/(1-3x))`
-/

namespace A326339.P12071765621380546392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 1, 1] [1, -3] n

end

end A326339.P12071765621380546392

namespace A326339

/-- `ogf((1-3x+x^2+x^3)/(1-3x))` -/
def P12071765621380546392.Spec : Prop :=
  ∀ n, P12071765621380546392.a n = A326339 n

end A326339

/-! ## A326339.P1185651992630632068

`3*a(n-1)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A326339

/-- `3*a(n-1)` -/
def P1185651992630632068.Spec : Prop :=
  ∀ n, (P1185651992630632068.a n : ℤ) = A326339 n

theorem P1185651992630632068.correct : P1185651992630632068.Spec := by
  intro n
  simp only [A326339]

end A326339

/-! ## A326339.P11980962863034414426

`a(n-1)+a(n-1)+a(n-1)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A326339.P11980962863034414426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 4] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 1))

end

end A326339.P11980962863034414426

namespace A326339

/-- `a(n-1)+a(n-1)+a(n-1)` -/
def P11980962863034414426.Spec : Prop :=
  ∀ n, (P11980962863034414426.a n : ℤ) = A326339 n

theorem P11980962863034414426.correct : P11980962863034414426.Spec := by
  intro n
  simp only [A326339, Nat.add_sub_cancel, A326339.P11980962863034414426.a, A326339.P1185651992630632068.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A326339

/-! ## A326339.P14438825463539524186

`floor(A000007(n)+4*3^(n-3))`
-/

namespace A326339.P14438825463539524186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000007 n : ℚ) + 4 * (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋

end

end A326339.P14438825463539524186

namespace A326339

/-- `floor(A000007(n)+4*3^(n-3))` -/
def P14438825463539524186.Spec : Prop :=
  ∀ n, P14438825463539524186.a n = A326339 n

end A326339

/-! ## A326339.P2207560946053583288

`floor(A010051(2*(n+1))+4*3^(n-3))`
-/

namespace A326339.P2207560946053583288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010051 (2 * (n + 1)) : ℚ) + 4 * (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋

end

end A326339.P2207560946053583288

namespace A326339

/-- `floor(A010051(2*(n+1))+4*3^(n-3))` -/
def P2207560946053583288.Spec : Prop :=
  ∀ n, P2207560946053583288.a n = A326339 n

end A326339

/-! ## A326339.P15374839456381475779

`floor((4*3^(n-3))^(A000040(n+1)%2))`
-/

namespace A326339.P15374839456381475779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ)) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)⌋

end

end A326339.P15374839456381475779

namespace A326339

/-- `floor((4*3^(n-3))^(A000040(n+1)%2))` -/
def P15374839456381475779.Spec : Prop :=
  ∀ n, P15374839456381475779.a n = A326339 n

end A326339

/-! ## A326339.P8920255051794451574

`floor(A118264(n)/A036453(n+1))`
-/

namespace A326339.P8920255051794451574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A118264 n : ℚ) / (A036453 (n + 1) : ℚ)⌋

end

end A326339.P8920255051794451574

namespace A326339

/-- `floor(A118264(n)/A036453(n+1))` -/
def P8920255051794451574.Spec : Prop :=
  ∀ n, P8920255051794451574.a n = A326339 n

end A326339

/-! ## A326339.P14593768506992430619

`floor(A257970(n+1)/A123932(n))`
-/

namespace A326339.P14593768506992430619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A257970 (n + 1) : ℚ) / (A123932 n : ℚ)⌋

end

end A326339.P14593768506992430619

namespace A326339

/-- `floor(A257970(n+1)/A123932(n))` -/
def P14593768506992430619.Spec : Prop :=
  ∀ n, P14593768506992430619.a n = A326339 n

end A326339

/-! ## A326339.P11664938329811557619

`A118264(n)/∑[A122391(n)]*A122391(n)`
-/

namespace A326339.P11664938329811557619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118264 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) * (A122391 n : ℚ)

end

end A326339.P11664938329811557619

namespace A326339

/-- `A118264(n)/∑[A122391(n)]*A122391(n)` -/
def P11664938329811557619.Spec : Prop :=
  ∀ n, P11664938329811557619.a n = (A326339 n : ℚ)

end A326339

/-! ## A326339.P1204356607729487142

`A118264(n)/A122391(n+1)*A122391(n)`
-/

namespace A326339.P1204356607729487142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118264 n : ℚ) / (A122391 (n + 1) : ℚ) * (A122391 n : ℚ)

end

end A326339.P1204356607729487142

namespace A326339

/-- `A118264(n)/A122391(n+1)*A122391(n)` -/
def P1204356607729487142.Spec : Prop :=
  ∀ n, P1204356607729487142.a n = (A326339 n : ℚ)

end A326339

/-! ## A326339.P3442287307458671492

`floor(A052156(n)/A003946(n)*A052156(n))`
-/

namespace A326339.P3442287307458671492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052156 n : ℚ) / (A003946 n : ℚ) * (A052156 n : ℚ)⌋

end

end A326339.P3442287307458671492

namespace A326339

/-- `floor(A052156(n)/A003946(n)*A052156(n))` -/
def P3442287307458671492.Spec : Prop :=
  ∀ n, P3442287307458671492.a n = A326339 n

end A326339

/-! ## A326339.P7564579433003322321

`A118264(n)-A003946(n)%A257970(n+1)`
-/

namespace A326339.P7564579433003322321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118264 n - Int.tmod (A003946 n) (A257970 (n + 1))

end

end A326339.P7564579433003322321

namespace A326339

/-- `A118264(n)-A003946(n)%A257970(n+1)` -/
def P7564579433003322321.Spec : Prop :=
  ∀ n, P7564579433003322321.a n = A326339 n

end A326339

/-! ## A326339.P14069638180495550054

`A257970(n+1)+A052156(n)-∑[A257970(n+1)]`
-/

namespace A326339.P14069638180495550054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257970 (n + 1) + (A052156 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326339.P14069638180495550054

namespace A326339

/-- `A257970(n+1)+A052156(n)-∑[A257970(n+1)]` -/
def P14069638180495550054.Spec : Prop :=
  ∀ n, P14069638180495550054.a n = A326339 n

end A326339

/-! ## A326339.P13366485736662480577

`floor(A052156(n)²/A003946(n))`
-/

namespace A326339.P13366485736662480577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052156 n ^ 2 : ℚ) / (A003946 n : ℚ)⌋

end

end A326339.P13366485736662480577

namespace A326339

/-- `floor(A052156(n)²/A003946(n))` -/
def P13366485736662480577.Spec : Prop :=
  ∀ n, P13366485736662480577.a n = A326339 n

end A326339

/-!
# A326341: Number of minimal topologically connected chord graphs covering {1..n}.

The programs for A326341, there is no canonical definition to state claims against.
-/

/-! ## A326341.P17198829189345929618

`floor(n-atan(n))!-gcd((n%3)%2, floor(n/3))`
-/

namespace A326341.P17198829189345929618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat : ℤ) - (Int.gcd ((n % 3 % 2 : ℕ) : ℤ) ⌊(n : ℚ) / 3⌋ : ℤ)

end

end A326341.P17198829189345929618

/-! ## A326341.P1874374327775330871

`abs(2-n)!-A026536(n)`
-/

namespace A326341.P1874374327775330871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |2 - (n : ℤ)|.toNat : ℤ) - A026536 n

end

end A326341.P1874374327775330871

/-! ## A326341.P7655231123013467286

`floor(n-atan(n))!-A103627(n)`
-/

namespace A326341.P7655231123013467286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat : ℤ) - A103627 n

end

end A326341.P7655231123013467286

/-! ## A326341.P262344422128648716

`floor(n-atan(n))!-A239242(n)`
-/

namespace A326341.P262344422128648716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat : ℤ) - A239242 n

end

end A326341.P262344422128648716

/-!
# A326343: Number of inequivalent n X n binary matrices with total support, where equivalence means permutations of rows or columns.

The programs for A326343, there is no canonical definition to state claims against.
-/

/-! ## A326343.P2066109834032690955

`∏{p}[n!+a(n-1)², #]` with `a(0)=1`
-/

namespace A326343.P2066109834032690955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.factorial n + f1 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A326343.P2066109834032690955

/-!
# A326346: Total number of partitions in the partitions of compositions of n.

The programs for A326346, there is no canonical definition to state claims against.
-/

/-! ## A326346.P13777845288830071519

`3^n-A318229(n+2)`
-/

namespace A326346.P13777845288830071519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A318229 (n + 2)

end

end A326346.P13777845288830071519

/-! ## A326346.P1875796812303154033

`∑[A291007(n)-A226190(A006357(n))]`
-/

namespace A326346.P1875796812303154033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291007 n - A226190 (A006357 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326346.P1875796812303154033

/-! ## A326346.P7798183991815324532

`A059995(A243517(n+1)+A001794(n))`
-/

namespace A326346.P7798183991815324532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A243517 (n + 1) + A001794 n).toNat

end

end A326346.P7798183991815324532

/-!
# A326347: Number of unordered pairs of 4-colorings of an n-cycle that differ in the coloring of exactly one vertex.

The programs for A326347, the canonical program `A326347.P3934791418546751603` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326347 has offset 3).

The definition of A326347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326347.P3934791418546751603

`6*(n+3)*(3^(n+1)+(-1)^(n+3))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A326347

/-- `6*(n+3)*(3^(n+1)+(-1)^(n+3))` -/
def P3934791418546751603.Spec : Prop :=
  ∀ n, P3934791418546751603.a n = A326347 (n + 3)

theorem P3934791418546751603.correct : P3934791418546751603.Spec := by
  intro n
  simp only [A326347, Nat.add_sub_cancel]

end A326347

/-!
# A326348: Number of permutations of length n in the class of juxtapositions of separable permutations with 21-avoiders.

The programs for A326348, there is no canonical definition to state claims against.
-/

/-! ## A326348.P5364116624930180102

`A316626(A001861(n))`
-/

namespace A326348.P5364116624930180102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316626 (A001861 n).toNat

end

end A326348.P5364116624930180102

/-! ## A326348.P7634219429181979745

`A003105(n)+A002265(A001861(n))`
-/

namespace A326348.P7634219429181979745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003105 n + A002265 (A001861 n).toNat

end

end A326348.P7634219429181979745

/-! ## A326348.P3816282297059184000

`A025157(n)+A002265(A001861(n))`
-/

namespace A326348.P3816282297059184000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025157 n + A002265 (A001861 n).toNat

end

end A326348.P3816282297059184000

/-!
# A326350: Number of non-nesting connected simple graphs with vertices {1..n}.

The programs for A326350, there is no canonical definition to state claims against.
-/

/-! ## A326350.P5421179407766015634

`A078862(a(n-1))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A326350.P5421179407766015634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 4] fun n a =>
  A078862 (a (n - 1)).toNat

end

end A326350.P5421179407766015634

/-! ## A326350.P17982536776535298373

`A193955(2*a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A326350.P17982536776535298373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A193955 (2 * a (n - 1)).toNat

end

end A326350.P17982536776535298373

/-!
# A326351: Number of non-nesting connected simple graphs on a subset of {1..n}.

The programs for A326351, there is no canonical definition to state claims against.
-/

/-! ## A326351.P3198874152812086156

`A276367(round(sqrt(n²+1)))+floor(n/5)`
-/

namespace A326351.P3198874152812086156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276367 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ⌊(n : ℚ) / 5⌋

end

end A326351.P3198874152812086156

/-! ## A326351.P7666860924198061482

`A328916(A006456(n))+A006664(n)`
-/

namespace A326351.P7666860924198061482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328916 (A006456 n).toNat + A006664 n

end

end A326351.P7666860924198061482

/-! ## A326351.P13586687407179523165

`A328916(A289207(n))+A006664(n)`
-/

namespace A326351.P13586687407179523165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328916 (A289207 n).toNat + A006664 n

end

end A326351.P13586687407179523165

/-!
# A326354: a(n) is the number of fractions reduced to lowest terms with numerator and denominator less than or equal to n in absolute value.

The programs for A326354, the canonical program `A326354.P10591338432418692922` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326354 has offset 0).

The definition of A326354 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206350, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326354.P10591338432418692922

`2*A206350(n+1)-1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A326354

/-- `2*A206350(n+1)-1` -/
def P10591338432418692922.Spec : Prop :=
  ∀ n, P10591338432418692922.a n = A326354 n

theorem P10591338432418692922.correct : P10591338432418692922.Spec := by
  intro n
  simp only [A326354]

end A326354

/-! ## A326354.P7404912498698727576

`a(n-1)+4*A000010(n)` with `a(0)=1, a(1)=3`
-/

namespace A326354.P7404912498698727576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + 4 * A000010 n

end

end A326354.P7404912498698727576

namespace A326354

/-- `a(n-1)+4*A000010(n)` -/
def P7404912498698727576.Spec : Prop :=
  ∀ n, P7404912498698727576.a n = A326354 n

end A326354

/-! ## A326354.P7511297020520737407

`or(1, A171503(n))`
-/

namespace A326354.P7511297020520737407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A171503 n)

end

end A326354.P7511297020520737407

namespace A326354

/-- `or(1, A171503(n))` -/
def P7511297020520737407.Spec : Prop :=
  ∀ n, P7511297020520737407.a n = A326354 n

end A326354

/-! ## A326354.P598620181089982433

`abs(1-A140466(n))`
-/

namespace A326354.P598620181089982433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A140466 n|

end

end A326354.P598620181089982433

namespace A326354

/-- `abs(1-A140466(n))` -/
def P598620181089982433.Spec : Prop :=
  ∀ n, P598620181089982433.a n = A326354 n

end A326354

/-! ## A326354.P10934819727436626235

`abs(2-A100449(n))`
-/

namespace A326354.P10934819727436626235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A100449 n|

end

end A326354.P10934819727436626235

namespace A326354

/-- `abs(2-A100449(n))` -/
def P10934819727436626235.Spec : Prop :=
  ∀ n, P10934819727436626235.a n = A326354 n

end A326354

/-! ## A326354.P13863264900639568804

`A196227(n)+Δ[n²]`
-/

namespace A326354.P13863264900639568804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196227 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A326354.P13863264900639568804

namespace A326354

/-- `A196227(n)+Δ[n²]` -/
def P13863264900639568804.Spec : Prop :=
  ∀ n, P13863264900639568804.a n = A326354 n

end A326354

/-! ## A326354.P4077707797998003573

`abs(1-2*A049696(n))`
-/

namespace A326354.P4077707797998003573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A049696 n|

end

end A326354.P4077707797998003573

namespace A326354

/-- `abs(1-2*A049696(n))` -/
def P4077707797998003573.Spec : Prop :=
  ∀ n, P4077707797998003573.a n = A326354 n

end A326354

/-! ## A326354.P11928650379908245780

`abs(4*A002088(n)-1)`
-/

namespace A326354.P11928650379908245780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * A002088 n - 1|

end

end A326354.P11928650379908245780

namespace A326354

/-- `abs(4*A002088(n)-1)` -/
def P11928650379908245780.Spec : Prop :=
  ∀ n, P11928650379908245780.a n = A326354 n

end A326354

/-! ## A326354.P13998988070695084285

`A002246(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A326354.P13998988070695084285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A002246 n + a (n - 1)

end

end A326354.P13998988070695084285

namespace A326354

/-- `A002246(n)+a(n-1)` -/
def P13998988070695084285.Spec : Prop :=
  ∀ n, P13998988070695084285.a n = A326354 n

end A326354

/-! ## A326354.P8635896541731598767

`abs(2-abs(3-2*A049632(n)))`
-/

namespace A326354.P8635896541731598767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - |3 - 2 * A049632 n|)|

end

end A326354.P8635896541731598767

namespace A326354

/-- `abs(2-abs(3-2*A049632(n)))` -/
def P8635896541731598767.Spec : Prop :=
  ∀ n, P8635896541731598767.a n = A326354 n

end A326354

/-! ## A326354.P2482383318886274146

`a(n-1)+2*A140434(n)` with `a(0)=1`
-/

namespace A326354.P2482383318886274146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A140434 n

end

end A326354.P2482383318886274146

namespace A326354

/-- `a(n-1)+2*A140434(n)` -/
def P2482383318886274146.Spec : Prop :=
  ∀ n, P2482383318886274146.a n = A326354 n

end A326354

/-! ## A326354.P6884873552401160689

`A171503(n)+A000007(n)`
-/

namespace A326354.P6884873552401160689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171503 n + A000007 n

end

end A326354.P6884873552401160689

namespace A326354

/-- `A171503(n)+A000007(n)` -/
def P6884873552401160689.Spec : Prop :=
  ∀ n, P6884873552401160689.a n = A326354 n

end A326354

/-! ## A326354.P16535951059982855853

`A140466(n)-A158388(n)`
-/

namespace A326354.P16535951059982855853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140466 n - A158388 n

end

end A326354.P16535951059982855853

namespace A326354

/-- `A140466(n)-A158388(n)` -/
def P16535951059982855853.Spec : Prop :=
  ∀ n, P16535951059982855853.a n = A326354 n

end A326354

/-! ## A326354.P15679356633832427624

`A005843(n)+A196227(n)+1`
-/

namespace A326354.P15679356633832427624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A196227 n + 1)

end

end A326354.P15679356633832427624

namespace A326354

/-- `A005843(n)+A196227(n)+1` -/
def P15679356633832427624.Spec : Prop :=
  ∀ n, P15679356633832427624.a n = A326354 n

end A326354

/-! ## A326354.P7292146447401065757

`A057428(n)+A171503(n)+1`
-/

namespace A326354.P7292146447401065757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A171503 n + 1)

end

end A326354.P7292146447401065757

namespace A326354

/-- `A057428(n)+A171503(n)+1` -/
def P7292146447401065757.Spec : Prop :=
  ∀ n, P7292146447401065757.a n = A326354 n

end A326354

/-! ## A326354.P2251581349104572857

`A153881(n+1)+A140466(n)`
-/

namespace A326354.P2251581349104572857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) + A140466 n

end

end A326354.P2251581349104572857

namespace A326354

/-- `A153881(n+1)+A140466(n)` -/
def P2251581349104572857.Spec : Prop :=
  ∀ n, P2251581349104572857.a n = A326354 n

end A326354

/-! ## A326354.P3707911802128191952

`A171503(n)+1-A057427(n)`
-/

namespace A326354.P3707911802128191952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171503 n + (1 - A057427 n)

end

end A326354.P3707911802128191952

namespace A326354

/-- `A171503(n)+1-A057427(n)` -/
def P3707911802128191952.Spec : Prop :=
  ∀ n, P3707911802128191952.a n = A326354 n

end A326354

/-!
# A326355: Number of permutations of length n with at most two descents.

The programs for A326355, the canonical program `A326355.P12887797458854685294` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326355 has offset 0).

The definition of A326355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326355.P12887797458854685294

`2^n+3^n-n-((n+1)*2^n-∑[n])`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A326355

/-- `2^n+3^n-n-((n+1)*2^n-∑[n])` -/
def P12887797458854685294.Spec : Prop :=
  ∀ n, P12887797458854685294.a n = A326355 n

theorem P12887797458854685294.correct : P12887797458854685294.Spec := by
  intro n
  simp only [A326355]

end A326355

/-!
# A326357: a(n) = number of partitions of n that occur more than once among the condensed partitions of n; see A239312.

The programs for A326357, there is no canonical definition to state claims against.
-/

/-! ## A326357.P5865568770613500996

`A370803(n)+A122179(A088172(n+1))`
-/

namespace A326357.P5865568770613500996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370803 n + A122179 (A088172 (n + 1)).toNat

end

end A326357.P5865568770613500996

/-!
# A326358: Number of maximal antichains of subsets of {1..n}.

The programs for A326358, there is no canonical definition to state claims against.
-/

/-! ## A326358.P13763703353828697393

`∑{e}[Δ[3^n], A326359(#)]`
-/

namespace A326358.P13763703353828697393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A326359 (Nat.factorization (f1 n).natAbs p)

end

end A326358.P13763703353828697393

/-! ## A326358.P17029785412832267768

`A326359(n)+ceil(n/98)`
-/

namespace A326358.P17029785412832267768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326359 n + ⌈(n : ℚ) / 98⌉

end

end A326358.P17029785412832267768

/-! ## A326358.P5177013085768466415

`A326644(n)+A326359(n)`
-/

namespace A326358.P5177013085768466415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326644 n + A326359 n

end

end A326358.P5177013085768466415

/-! ## A326358.P2360806251316862443

`A328672(n)+A326359(n)`
-/

namespace A326358.P2360806251316862443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328672 n + A326359 n

end

end A326358.P2360806251316862443

/-!
# A326359: Number of maximal antichains of nonempty subsets of {1..n}.

The programs for A326359, there is no canonical definition to state claims against.
-/

/-! ## A326359.P11512190368798712709

`A326358(n)-ceil(n/9)`
-/

namespace A326359.P11512190368798712709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326358 n - ⌈(n : ℚ) / 9⌉

end

end A326359.P11512190368798712709

/-! ## A326359.P3630847407582201819

`abs(A326358(n)+A057428(n))`
-/

namespace A326359.P3630847407582201819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A326358 n + A057428 n|

end

end A326359.P3630847407582201819

/-! ## A326359.P9307811631423286356

`abs(A057427(n)-A326358(n))`
-/

namespace A326359.P9307811631423286356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057427 n - A326358 n|

end

end A326359.P9307811631423286356

/-! ## A326359.P17053329064797654407

`abs(A214949(n)-A326358(n))`
-/

namespace A326359.P17053329064797654407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A214949 n - A326358 n|

end

end A326359.P17053329064797654407

/-!
# A326360: Number of maximal antichains of nonempty, non-singleton subsets of {1..n}.

The programs for A326360, there is no canonical definition to state claims against.
-/

/-! ## A326360.P7181955589168665338

`A218580(2^n-(n-1))`
-/

namespace A326360.P7181955589168665338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218580 ((2 ^ n : ℤ) - ((n : ℤ) - 1)).toNat

end

end A326360.P7181955589168665338

/-! ## A326360.P1161507631546508685

`A109331(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A326360.P1161507631546508685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A109331 (a (n - 1)).toNat

end

end A326360.P1161507631546508685

/-!
# A326361: Number of maximal intersecting antichains of sets covering n vertices with no singletons.

The programs for A326361, there is no canonical definition to state claims against.
-/

/-! ## A326361.P5290350546520186028

`A384880(2^n-n)`
-/

namespace A326361.P5290350546520186028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384880 (2 ^ n - n)

end

end A326361.P5290350546520186028

/-! ## A326361.P16229532046760357314

`A002635(abs((-n)^n-n))`
-/

namespace A326361.P16229532046760357314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 |(-(n : ℤ)) ^ n - (n : ℤ)|.toNat

end

end A326361.P16229532046760357314

/-!
# A326362: Number of maximal intersecting antichains of nonempty, non-singleton subsets of {1..n}.

The programs for A326362, there is no canonical definition to state claims against.
-/

/-! ## A326362.P4039816891904330389

`A326363(n)-comp[∑[8*n]+2]`
-/

namespace A326362.P4039816891904330389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326363 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A326362.P4039816891904330389

/-! ## A326362.P18344934993495579159

`round(sqrt((A007363(n+1)-n)²+1))`
-/

namespace A326362.P18344934993495579159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A007363 (n + 1) - (n : ℤ)) ^ 2 + 1 : ℝ))

end

end A326362.P18344934993495579159

/-! ## A326362.P11475594248878325723

`abs(A262288(n)-A326363(n))`
-/

namespace A326362.P11475594248878325723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A262288 n - A326363 n|

end

end A326362.P11475594248878325723

/-! ## A326362.P15025153089210864912

`abs(A158648(n+1)-A326363(n))`
-/

namespace A326362.P15025153089210864912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158648 (n + 1) - A326363 n|

end

end A326362.P15025153089210864912

/-!
# A326363: Number of maximal intersecting antichains of subsets of {1..n}.

The programs for A326363, there is no canonical definition to state claims against.
-/

/-! ## A326363.P8954127882039967648

`1+A007363(n+1)`
-/

namespace A326363.P8954127882039967648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A007363 (n + 1)

end

end A326363.P8954127882039967648

/-! ## A326363.P10829243767994389193

`A326362(n)+comp[7*n+2]`
-/

namespace A326363.P10829243767994389193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326362 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A326363.P10829243767994389193

/-! ## A326363.P7204148637434619731

`A007363(A089898(n))+1`
-/

namespace A326363.P7204148637434619731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007363 (A089898 n).toNat + 1

end

end A326363.P7204148637434619731

/-! ## A326363.P17899340083879863121

`A007363(A132271(n))+1`
-/

namespace A326363.P17899340083879863121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007363 (A132271 n).toNat + 1

end

end A326363.P17899340083879863121

/-!
# A326364: Number of intersecting set systems with empty intersection (meaning there is no vertex in common to all the edges) covering n vertices.

The programs for A326364, there is no canonical definition to state claims against.
-/

/-! ## A326364.P8624933147326377833

`A387955(a(n-1)+n)` with `a(0)=1`
-/

namespace A326364.P8624933147326377833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A387955 (a (n - 1) + (n : ℤ)).toNat

end

end A326364.P8624933147326377833

/-!
# A326365: Number of intersecting antichains with empty intersection (meaning there is no vertex in common to all the edges) covering n vertices.

The programs for A326365, there is no canonical definition to state claims against.
-/

/-! ## A326365.P6453751368828328653

`A018878(A139250(2*a(n-1)+4*a(n-2)+1))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A326365.P6453751368828328653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A018878 (A139250 (2 * a (n - 1) + 4 * a (n - 2) + 1).toNat).toNat

end

end A326365.P6453751368828328653

/-!
# A326366: Number of intersecting antichains of nonempty subsets of {1..n} with empty intersection (meaning there is no vertex in common to all the edges).

The programs for A326366, there is no canonical definition to state claims against.
-/

/-! ## A326366.P10794244264971001623

`A326375(n)-1`
-/

namespace A326366.P10794244264971001623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326375 n - 1

end

end A326366.P10794244264971001623

/-! ## A326366.P12157266206072750096

`A001206(n+1)+A307249(n)-A014466(n)`
-/

namespace A326366.P12157266206072750096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001206 (n + 1) + A307249 n - A014466 n

end

end A326366.P12157266206072750096

/-! ## A326366.P2170413413713731214

`abs(A326375(n)+A321800(n))`
-/

namespace A326366.P2170413413713731214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A326375 n + A321800 n|

end

end A326366.P2170413413713731214

/-! ## A326366.P11850340304727622254

`A326405(A326393(n+1))+A326375(n)`
-/

namespace A326366.P11850340304727622254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326405 (A326393 (n + 1)).toNat + A326375 n

end

end A326366.P11850340304727622254

/-! ## A326366.P8338370084846824096

`A348951(A326392(n+1))+A326375(n)`
-/

namespace A326366.P8338370084846824096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348951 (A326392 (n + 1)).toNat + A326375 n

end

end A326366.P8338370084846824096

/-!
# A326367: Number of tilings of an equilateral triangle of side length n with unit triangles (of side length 1) and exactly two unit "lozenges" or "diamonds" (also of side length 1).

The programs for A326367, the canonical program `A326367.P852816756437788030` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326367 has offset 1).

The definition of A326367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326367.P245629886655901342

`3/8*(n-1)*n*(3*(n+1)²+3*(n+1)-4)`
-/

namespace A326367.P245629886655901342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 8 * ((n : ℤ) - 1 : ℚ) * (n : ℚ) * ((3 * (n + 1) ^ 2 + 3 * (n + 1) : ℤ) - 4 : ℚ)

end

end A326367.P245629886655901342

namespace A326367

/-- `3/8*(n-1)*n*(3*(n+1)²+3*(n+1)-4)` -/
def P245629886655901342.Spec : Prop :=
  ∀ n, P245629886655901342.a n = (A326367 (n + 1) : ℚ)

theorem P245629886655901342.correct : P245629886655901342.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A326367, Nat.add_sub_cancel, A326367.P245629886655901342.a, A326367.P852816756437788030.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A326367, Nat.add_sub_cancel, A326367.P245629886655901342.a, A326367.P852816756437788030.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A326367

/-! ## A326367.P852816756437788030

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=24, a(3)=126, a(4)=387`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A326367

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P852816756437788030.Spec : Prop :=
  ∀ n, P852816756437788030.a n = A326367 (n + 1)

theorem P852816756437788030.correct : P852816756437788030.Spec := by
  intro n
  simp only [A326367, Nat.add_sub_cancel]

end A326367

/-! ## A326367.P1287998185052287247

`3*A236770(n)-A033428(n)`
-/

namespace A326367.P1287998185052287247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A236770 n - A033428 n

end

end A326367.P1287998185052287247

namespace A326367

/-- `3*A236770(n)-A033428(n)` -/
def P1287998185052287247.Spec : Prop :=
  ∀ n, P1287998185052287247.a n = A326367 (n + 1)

end A326367

/-! ## A326367.P11678804897869131000

`A002817(n)+A058895(n)+A015238(n)`
-/

namespace A326367.P11678804897869131000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n + (A058895 n + A015238 n)

end

end A326367.P11678804897869131000

namespace A326367

/-- `A002817(n)+A058895(n)+A015238(n)` -/
def P11678804897869131000.Spec : Prop :=
  ∀ n, P11678804897869131000.a n = A326367 (n + 1)

end A326367

/-! ## A326367.P1921890469428850620

`A064038(n+1)*A177049(n)-A007742(n)`
-/

namespace A326367.P1921890469428850620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064038 (n + 1) * A177049 n - A007742 n

end

end A326367.P1921890469428850620

namespace A326367

/-- `A064038(n+1)*A177049(n)-A007742(n)` -/
def P1921890469428850620.Spec : Prop :=
  ∀ n, P1921890469428850620.a n = A326367 (n + 1)

end A326367

/-! ## A326367.P2194706832257327577

`∑[A000125(3*n)-A008579(2*n)]`
-/

namespace A326367.P2194706832257327577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (3 * n) - A008579 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326367.P2194706832257327577

namespace A326367

/-- `∑[A000125(3*n)-A008579(2*n)]` -/
def P2194706832257327577.Spec : Prop :=
  ∀ n, P2194706832257327577.a n = A326367 (n + 1)

end A326367

/-! ## A326367.P4161574427670626976

`A173963(n+1)+A000217(A000217(n))-n`
-/

namespace A326367.P4161574427670626976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173963 (n + 1) + (A000217 (A000217 n).toNat - (n : ℤ))

end

end A326367.P4161574427670626976

namespace A326367

/-- `A173963(n+1)+A000217(A000217(n))-n` -/
def P4161574427670626976.Spec : Prop :=
  ∀ n, P4161574427670626976.a n = A326367 (n + 1)

end A326367

/-! ## A326367.P11512542533566032597

`A022267(∑[n])-A007742(n)`
-/

namespace A326367.P11512542533566032597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 (∑ j ∈ Finset.range (n + 1), f1 j) - A007742 n

end

end A326367.P11512542533566032597

namespace A326367

/-- `A022267(∑[n])-A007742(n)` -/
def P11512542533566032597.Spec : Prop :=
  ∀ n, P11512542533566032597.a n = A326367 (n + 1)

end A326367

/-! ## A326367.P15881440060604608096

`A038764(∑[n])-A038764(n)`
-/

namespace A326367.P15881440060604608096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 (∑ j ∈ Finset.range (n + 1), f1 j) - A038764 n

end

end A326367.P15881440060604608096

namespace A326367

/-- `A038764(∑[n])-A038764(n)` -/
def P15881440060604608096.Spec : Prop :=
  ∀ n, P15881440060604608096.a n = A326367 (n + 1)

end A326367

/-! ## A326367.P1227279124701065277

`A062741(∑[n])-A033428(n)`
-/

namespace A326367.P1227279124701065277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 (∑ j ∈ Finset.range (n + 1), f1 j) - A033428 n

end

end A326367.P1227279124701065277

namespace A326367

/-- `A062741(∑[n])-A033428(n)` -/
def P1227279124701065277.Spec : Prop :=
  ∀ n, P1227279124701065277.a n = A326367 (n + 1)

end A326367

/-! ## A326367.P4153453002659919828

`A081266(∑[n])-A081266(n)`
-/

namespace A326367.P4153453002659919828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 (∑ j ∈ Finset.range (n + 1), f1 j) - A081266 n

end

end A326367.P4153453002659919828

namespace A326367

/-- `A081266(∑[n])-A081266(n)` -/
def P4153453002659919828.Spec : Prop :=
  ∀ n, P4153453002659919828.a n = A326367 (n + 1)

end A326367

/-! ## A326367.P15365961273270495593

`A051682(A000217(n))-A000384(n)`
-/

namespace A326367.P15365961273270495593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 (A000217 n).toNat - A000384 n

end

end A326367.P15365961273270495593

namespace A326367

/-- `A051682(A000217(n))-A000384(n)` -/
def P15365961273270495593.Spec : Prop :=
  ∀ n, P15365961273270495593.a n = A326367 (n + 1)

end A326367

/-! ## A326367.P4219700081613503183

`A000217(A005448(n+1))-A085473(n)`
-/

namespace A326367.P4219700081613503183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A005448 (n + 1)).toNat - A085473 n

end

end A326367.P4219700081613503183

namespace A326367

/-- `A000217(A005448(n+1))-A085473(n)` -/
def P4219700081613503183.Spec : Prop :=
  ∀ n, P4219700081613503183.a n = A326367 (n + 1)

end A326367

/-! ## A326367.P12976832987369739374

`A140064(A000217(n))-A140066(n+1)`
-/

namespace A326367.P12976832987369739374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140064 (A000217 n).toNat - A140066 (n + 1)

end

end A326367.P12976832987369739374

namespace A326367

/-- `A140064(A000217(n))-A140066(n+1)` -/
def P12976832987369739374.Spec : Prop :=
  ∀ n, P12976832987369739374.a n = A326367 (n + 1)

end A326367

/-! ## A326367.P5118784808326134048

`A000217(A045943(n))-A000217(3*n)`
-/

namespace A326367.P5118784808326134048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A045943 n).toNat - A000217 (3 * n)

end

end A326367.P5118784808326134048

namespace A326367

/-- `A000217(A045943(n))-A000217(3*n)` -/
def P5118784808326134048.Spec : Prop :=
  ∀ n, P5118784808326134048.a n = A326367 (n + 1)

end A326367

/-! ## A326367.P3722544434600033496

`A062708(A002378(n)/2)-A005476(n)`
-/

namespace A326367.P3722544434600033496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062708 (SequenceMachineLib.roundAway ((A002378 n : ℚ) / 2)).toNat - A005476 n

end

end A326367.P3722544434600033496

namespace A326367

/-- `A062708(A002378(n)/2)-A005476(n)` -/
def P3722544434600033496.Spec : Prop :=
  ∀ n, P3722544434600033496.a n = A326367 (n + 1)

end A326367

/-! ## A326367.P15770774058261090455

`A000217(3*A000217(n))-A000217(3*n)`
-/

namespace A326367.P15770774058261090455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * A000217 n).toNat - A000217 (3 * n)

end

end A326367.P15770774058261090455

namespace A326367

/-- `A000217(3*A000217(n))-A000217(3*n)` -/
def P15770774058261090455.Spec : Prop :=
  ∀ n, P15770774058261090455.a n = A326367 (n + 1)

end A326367

/-!
# A326370: Number of condensations to convert all the partitions of n to strict partitions of n.

The programs for A326370, there is no canonical definition to state claims against.
-/

/-! ## A326370.P15613549329242385301

`A000523(A241816(n)+A124778(n))`
-/

namespace A326370.P15613549329242385301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A241816 n + A124778 n).toNat

end

end A326370.P15613549329242385301

/-! ## A326370.P1611763909257370974

`A000523(A243109(n)+A124778(n))`
-/

namespace A326370.P1611763909257370974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A243109 n + A124778 n).toNat

end

end A326370.P1611763909257370974

/-! ## A326370.P13597064252337856444

`A000523(2-(A124778(n)-A241816(n)))`
-/

namespace A326370.P13597064252337856444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 - (A124778 n - A241816 n)).toNat

end

end A326370.P13597064252337856444

/-! ## A326370.P6312570363548671829

`A000523(2-(A124778(n)-A243109(n)))`
-/

namespace A326370.P6312570363548671829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 - (A124778 n - A243109 n)).toNat

end

end A326370.P6312570363548671829

/-! ## A326370.P16925658876122324941

`A087116(A374685(3*(n+1))+A351016(n))`
-/

namespace A326370.P16925658876122324941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A374685 (3 * (n + 1)) + A351016 n).toNat

end

end A326370.P16925658876122324941

/-!
# A326371: Irregular triangular array: row n shows the number of condensations needed to convert all the partitions of n to strict partitions.

The programs for A326371, there is no canonical definition to state claims against.
-/

/-! ## A326371.P1805309568893510238

`A353841(A129129(n+1))`
-/

namespace A326371.P1805309568893510238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353841 (A129129 (n + 1)).toNat

end

end A326371.P1805309568893510238

/-! ## A326371.P4733338795806936615

`A353854(A114994(n+1))`
-/

namespace A326371.P4733338795806936615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353854 (A114994 (n + 1)).toNat

end

end A326371.P4733338795806936615

/-! ## A326371.P6366265415775803804

`A353854(eq[1, A124765(n)])`
-/

namespace A326371.P6366265415775803804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326371.P6366265415775803804

/-! ## A326371.P15641052344885337304

`A353854(record[A267508(n+1)]%A022086(3*n+4))`
-/

namespace A326371.P15641052344885337304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353854 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A022086 (3 * n + 4))).toNat

end

end A326371.P15641052344885337304

/-! ## A326371.P12068771869426488172

`A138886(A336707(n+3))+A025454(n)`
-/

namespace A326371.P12068771869426488172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138886 (A336707 (n + 3)).toNat + A025454 n

end

end A326371.P12068771869426488172

/-!
# A326372: Number of intersecting antichains of (possibly empty) subsets of {1..n}.

The programs for A326372, there is no canonical definition to state claims against.
-/

/-! ## A326372.P6831902291169610137

`A001206(n+1)+1`
-/

namespace A326372.P6831902291169610137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001206 (n + 1) + 1

end

end A326372.P6831902291169610137

/-! ## A326372.P1717736759526272151

`Δ[∑[A001206(n)]-A024000(n)]`
-/

namespace A326372.P1717736759526272151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A326372.P1717736759526272151

/-! ## A326372.P9771934863266341141

`A000372(n)+A326366(n)-A307249(n)`
-/

namespace A326372.P9771934863266341141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000372 n + (A326366 n - A307249 n)

end

end A326372.P9771934863266341141

/-! ## A326372.P5729180076330881720

`A248929(∑[n]+1)+1`
-/

namespace A326372.P5729180076330881720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248929 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A326372.P5729180076330881720

/-!
# A326373: Number of intersecting set systems with empty intersection (meaning there is no vertex in common to all the edges) on n vertices.

The programs for A326373, there is no canonical definition to state claims against.
-/

/-! ## A326373.P15670844305061515178

`A356655(C(2*n, 5))`
-/

namespace A326373.P15670844305061515178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356655 (Nat.choose (2 * n) 5)

end

end A326373.P15670844305061515178

/-!
# A326374: Irregular triangle read by rows where T(n,k) is the number of (d + 1)-uniform hypertrees spanning n + 1 vertices, where d = A027750(n,k).

The programs for A326374, there is no canonical definition to state claims against.
-/

/-! ## A326374.P13623452543578933318

`A066400(5^n)^ceil(n/2)`
-/

namespace A326374.P13623452543578933318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066400 (5 ^ n) : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

end

end A326374.P13623452543578933318

/-! ## A326374.P14539352318757048049

`A033842(2*n+1)^a(n-1)` with `a(0)=1`
-/

namespace A326374.P14539352318757048049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A033842 (2 * n + 1) : ℝ) ^ (a (n - 1))

end

end A326374.P14539352318757048049

/-!
# A326375: Number of intersecting antichains of subsets of {1..n} with empty intersection (meaning there is no vertex in common to all the edges).

The programs for A326375, there is no canonical definition to state claims against.
-/

/-! ## A326375.P8901422137542024688

`A326366(n)+1`
-/

namespace A326375.P8901422137542024688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326366 n + 1

end

end A326375.P8901422137542024688

/-! ## A326375.P13736524011402754260

`∑{digits}[A045918(n), A326366(#)]`
-/

namespace A326375.P13736524011402754260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A326366 x).sum

end

end A326375.P13736524011402754260

/-! ## A326375.P11708152378103758420

`abs(A321800(n)-A326366(n))`
-/

namespace A326375.P11708152378103758420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321800 n - A326366 n|

end

end A326375.P11708152378103758420

/-! ## A326375.P15021795524437010277

`1-(A326332(n)-A326366(n))`
-/

namespace A326375.P15021795524437010277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A326332 n - A326366 n)

end

end A326375.P15021795524437010277

/-! ## A326375.P14227018458492125226

`A348553(n)-(n-A326366(n))`
-/

namespace A326375.P14227018458492125226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n - ((n : ℤ) - A326366 n)

end

end A326375.P14227018458492125226

/-!
# A326376: Square array T(n, k) read by antidiagonals upwards, n > 0 and k > 0: for any number n > 0, let f(n) be the polynomial of a single indeterminate x where the coefficient of x^e is the prime(1+e)-adic valuation of n (where prime(k) denotes the k-th prime); f establishes a bijection between the positive numbers and the polynomials of a single indeterminate x with nonnegative integer coefficients; let g be the inverse of f; T(n, k) = g(f(n) o f(k)) (where o denotes function composition).

The programs for A326376, there is no canonical definition to state claims against.
-/

/-! ## A326376.P14503453644902490383

`gcd(A001221(A331765(n+1)), A061356(n+2))`
-/

namespace A326376.P14503453644902490383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A331765 (n + 1)).toNat) (A061356 (n + 2))

end

end A326376.P14503453644902490383

/-! ## A326376.P16447202489292851527

`A000005(A340077(n+1)^A195040(n))`
-/

namespace A326376.P16447202489292851527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A340077 (n + 1) : ℚ) ^ (A195040 n : ℤ))).toNat

end

end A326376.P16447202489292851527

/-! ## A326376.P8462760780236955568

`gcd(A053122(n), A054541(A112927(n+1)))`
-/

namespace A326376.P8462760780236955568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053122 n) (A054541 (A112927 (n + 1)).toNat)

end

end A326376.P8462760780236955568

/-! ## A326376.P3418262819665677397

`A195040(n)+A136654(A186714(3*n+5))`
-/

namespace A326376.P3418262819665677397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195040 n + A136654 (A186714 (3 * n + 5)).toNat

end

end A326376.P3418262819665677397

/-! ## A326376.P34597487178292219

`gcd(A066121(n+1), A066139(A066121(n+1)))`
-/

namespace A326376.P34597487178292219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066121 (n + 1)) (A066139 (A066121 (n + 1)).toNat)

end

end A326376.P34597487178292219

/-!
# A326378: Numbers m such that beta(m) = tau(m)/2 - 2 where beta(m) is the number of Brazilian representations of m and tau(m) is the number of divisors of m.

The programs for A326378, there is no canonical definition to state claims against.
-/

/-! ## A326378.P17266097235407699251

`A002378(eq[A079978(n), A172486(n)])`
-/

namespace A326378.P17266097235407699251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A326378.P17266097235407699251

/-! ## A326378.P1694867939029730974

`A002378(lt[A000700(n), A053827(n)])`
-/

namespace A326378.P1694867939029730974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A326378.P1694867939029730974

/-! ## A326378.P428441741160062920

`A002378(lt[A000700(n), A283370(n)])`
-/

namespace A326378.P428441741160062920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A326378.P428441741160062920

/-! ## A326378.P10993344250148821322

`eq[A131735(A029169(n)), A349520(n+1)]`
-/

namespace A326378.P10993344250148821322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 (A029169 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326378.P10993344250148821322

/-!
# A326379: Numbers m such that beta(m) = tau(m)/2 - 1 where beta(m) is the number of Brazilian representations of m and tau(m) is the number of divisors of m.

The programs for A326379, there is no canonical definition to state claims against.
-/

/-! ## A326379.P17411193310589733894

`lt[A209490(2*n+5), A253580(A081292(n+1))]`
-/

namespace A326379.P17411193310589733894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209490 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253580 (A081292 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326379.P17411193310589733894

/-! ## A326379.P5873623415560593268

`∑[gcd(6, A358857(A358857(2*n+3)))]`
-/

namespace A326379.P5873623415560593268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A358857 (A358857 (2 * n + 3)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326379.P5873623415560593268

/-!
# A326380: Numbers m such that beta(m) = tau(m)/2 where beta(m) is the number of Brazilian representations of m and tau(m) is the number of divisors of m.

The programs for A326380, there is no canonical definition to state claims against.
-/

/-! ## A326380.P8413966461965387837

`eq[A038548(n+1), A220136(n+1)]+1`
-/

namespace A326380.P8413966461965387837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A326380.P8413966461965387837

/-! ## A326380.P2751610642915778420

`eq[A072670(n)+1, A220136(n+1)]+1`
-/

namespace A326380.P2751610642915778420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A326380.P2751610642915778420

/-! ## A326380.P15966792436299724447

`eq[A000005(n+1)/2, A220136(n+1)]+1`
-/

namespace A326380.P15966792436299724447
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A326380.P15966792436299724447

/-! ## A326380.P10629244597565196250

`A293754(eq[A038548(n+1), A220136(n+1)])`
-/

namespace A326380.P10629244597565196250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A326380.P10629244597565196250

/-!
# A326381: Numbers m such that beta(m) = tau(m)/2 + 1 where beta(m) is the number of Brazilian representations of m and tau(m) is the number of divisors of m.

The programs for A326381, there is no canonical definition to state claims against.
-/

/-! ## A326381.P15165179718635510394

`A167783(∑[A326775(A090503(n+1))])`
-/

namespace A326381.P15165179718635510394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326775 (A090503 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167783 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326381.P15165179718635510394

/-! ## A326381.P13455721133763485073

`∪[A326388(n+1), A167783(A054519(n))]`
-/

namespace A326381.P13455721133763485073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167783 (A054519 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326381.P13455721133763485073

/-!
# A326382: Numbers m such that beta(m) = tau(m)/2 + 2 where beta(m) is the number of Brazilian representations of m and tau(m) is the number of divisors of m.

The programs for A326382, there is no canonical definition to state claims against.
-/

/-! ## A326382.P13527825935101838066

`A326389(A132033(n+1))`
-/

namespace A326382.P13527825935101838066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326389 (A132033 (n + 1)).toNat

end

end A326382.P13527825935101838066

/-! ## A326382.P14918155752201840929

`A326389(A023771(n+2))`
-/

namespace A326382.P14918155752201840929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326389 (A023771 (n + 2)).toNat

end

end A326382.P14918155752201840929

/-! ## A326382.P4113355640905306197

`A326389(A370132(n+2))`
-/

namespace A326382.P4113355640905306197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326389 (A370132 (n + 2)).toNat

end

end A326382.P4113355640905306197

/-! ## A326382.P17986477401851485772

`A326389(A000005(2^n))`
-/

namespace A326382.P17986477401851485772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326389 (A000005 (2 ^ n)).toNat

end

end A326382.P17986477401851485772

/-! ## A326382.P13258412644525046198

`A326389(A007967((n+1)²))`
-/

namespace A326382.P13258412644525046198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326389 (A007967 ((n + 1) ^ 2)).toNat

end

end A326382.P13258412644525046198

/-!
# A326383: Numbers m such that beta(m) = tau(m)/2 + 3 where beta(m) is the number of Brazilian representations of m and tau(m) is the number of divisors of m.

The programs for A326383, there is no canonical definition to state claims against.
-/

/-! ## A326383.P193504141792018568

`A326705(comp[8*n])`
-/

namespace A326383.P193504141792018568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326705 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A326383.P193504141792018568

/-! ## A326383.P7881208325538247638

`record[or(A015283(n), A326705(n+1))]`
-/

namespace A326383.P7881208325538247638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A015283 n) (A326705 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326383.P7881208325538247638

/-! ## A326383.P17577292839376776749

`record[A326705(n+1)/A053150(n+1)]`
-/

namespace A326383.P17577292839376776749
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326705 (n + 1) : ℚ) / (A053150 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326383.P17577292839376776749

/-! ## A326383.P3364284335593208443

`record[A326705(n+1)/A284099(n+1)]`
-/

namespace A326383.P3364284335593208443
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326705 (n + 1) : ℚ) / (A284099 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326383.P3364284335593208443

/-! ## A326383.P7434097150469915129

`record[A326705(n+1)/A055061(n+2)]`
-/

namespace A326383.P7434097150469915129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326705 (n + 1) : ℚ) / (A055061 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326383.P7434097150469915129

/-!
# A326386: Non-oblong composites m such that beta(m) = tau(m)/2 - 1 where beta(m) is the number of Brazilian representations of m and tau(m) is the number of divisors of m.

The programs for A326386, there is no canonical definition to state claims against.
-/

/-! ## A326386.P4863867574674110472

`comp[∪[A167782(n+1), A222030(n)]]`
-/

namespace A326386.P4863867574674110472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167782 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A326386.P4863867574674110472

/-! ## A326386.P16286075337419351498

`∩[A326379(n+1), comp[A222030(n)]]`
-/

namespace A326386.P16286075337419351498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326379 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A326386.P16286075337419351498

/-! ## A326386.P2822243030713466133

`∩[A308874(n+1), A326379(n+2)]`
-/

namespace A326386.P2822243030713466133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326379 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326386.P2822243030713466133

/-! ## A326386.P12402262177229201345

`∩[comp[A167782(n+1)], A308874(n+1)]`
-/

namespace A326386.P12402262177229201345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167782 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A326386.P12402262177229201345

/-! ## A326386.P11165061562816907927

`lt[A209252(3*n+2), A161701(A359901(2*(n+1)))]`
-/

namespace A326386.P11165061562816907927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209252 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161701 (A359901 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326386.P11165061562816907927

/-!
# A326387: Non-oblong composites m such that beta(m) = tau(m)/2 where beta(m) is the number of Brazilian representations of m and tau(m) is the number of divisors of m.

The programs for A326387, there is no canonical definition to state claims against.
-/

/-! ## A326387.P17384372395158071723

`∩[A111774(n+1), A326380(n+1)]`
-/

namespace A326387.P17384372395158071723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326387.P17384372395158071723

/-! ## A326387.P1142476765334622801

`∩[A326380(n+1), A348718(n+1)]`
-/

namespace A326387.P1142476765334622801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326387.P1142476765334622801

/-! ## A326387.P9051644656626332301

`∩[A308874(n+1), A326380(n+1)]`
-/

namespace A326387.P9051644656626332301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326387.P9051644656626332301

/-! ## A326387.P3789704125577461490

`∩[A326380(n+1), A345945(n+1)]`
-/

namespace A326387.P3789704125577461490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326387.P3789704125577461490

/-! ## A326387.P12016902155556409109

`∩[A100658(n+1), A326380(n+1)]`
-/

namespace A326387.P12016902155556409109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326387.P12016902155556409109

/-!
# A326388: Non-oblong composites m such that beta(m) = tau(m)/2 + 1 where beta(m) is the number of Brazilian representations of m and tau(m) is the number of divisors of m.

The programs for A326388, there is no canonical definition to state claims against.
-/

/-! ## A326388.P814289995827335320

`A326381(Δ[A025747(n)])`
-/

namespace A326388.P814289995827335320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326381 (f1 (n + 1) - f1 n).toNat

end

end A326388.P814289995827335320

/-! ## A326388.P9524777903100677039

`A326381(comp[A277838(n)])`
-/

namespace A326388.P9524777903100677039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277838 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326381 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A326388.P9524777903100677039

/-! ## A326388.P7554545367907616466

`A326381(comp[A277849(n)])`
-/

namespace A326388.P7554545367907616466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277849 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326381 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A326388.P7554545367907616466

/-! ## A326388.P7685202656749161443

`A326381(comp[A305609(n)])`
-/

namespace A326388.P7685202656749161443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305609 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326381 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A326388.P7685202656749161443

/-! ## A326388.P515379309783169410

`A326381(comp[A326277(n)])`
-/

namespace A326388.P515379309783169410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326277 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326381 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A326388.P515379309783169410

/-!
# A326389: Non-oblong numbers that are repdigits with length > 2 in exactly three bases.

The programs for A326389, there is no canonical definition to state claims against.
-/

/-! ## A326389.P11515322019746853792

`A326382(comp[18*n²])`
-/

namespace A326389.P11515322019746853792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326382 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A326389.P11515322019746853792

/-!
# A326390: The number of ways of seating n people around a table for the second time so that k pairs are maintained. T(n,k) read by rows.

The programs for A326390, there is no canonical definition to state claims against.
-/

/-! ## A326390.P17025211956598393247

`A326397(n)*A329683(n)`
-/

namespace A326390.P17025211956598393247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326397 n * A329683 n

end

end A326390.P17025211956598393247

/-! ## A326390.P3718325934157363436

`A326397(n)*A387540(n)`
-/

namespace A326390.P3718325934157363436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326397 n * A387540 n

end

end A326390.P3718325934157363436

/-! ## A326390.P16392025031052474111

`A046698(n)!*A326397(n)`
-/

namespace A326390.P16392025031052474111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A046698 n).toNat : ℤ) * A326397 n

end

end A326390.P16392025031052474111

/-! ## A326390.P17654590037898970394

`A054977(C(2, n))*A326397(n)`
-/

namespace A326390.P17654590037898970394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (Nat.choose 2 n) * A326397 n

end

end A326390.P17654590037898970394

/-! ## A326390.P6091703381204216

`(2-A154272(n+1))*A326397(n)`
-/

namespace A326390.P6091703381204216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A154272 (n + 1)) * A326397 n

end

end A326390.P6091703381204216

/-! ## A326390.P2425174580154575843

`A326376(C(2, n)+2)*A326397(n)`
-/

namespace A326390.P2425174580154575843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326376 (Nat.choose 2 n + 2) * A326397 n

end

end A326390.P2425174580154575843

/-! ## A326390.P3082796689544110160

`A326397(n)*A326398(C(2, n)+2)`
-/

namespace A326390.P3082796689544110160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326397 n * A326398 (Nat.choose 2 n + 2)

end

end A326390.P3082796689544110160

/-! ## A326390.P17145025578290171429

`A000034(A007918(n))*A326397(n)`
-/

namespace A326390.P17145025578290171429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A007918 n).toNat * A326397 n

end

end A326390.P17145025578290171429

/-! ## A326390.P4941802654272618138

`A028310(A003056(n))*A326404(n)`
-/

namespace A326390.P4941802654272618138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A003056 n).toNat * A326404 n

end

end A326390.P4941802654272618138

/-! ## A326390.P13466741425911299582

`A036453(A006949(n))*A326397(n)`
-/

namespace A326390.P13466741425911299582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A006949 n).toNat * A326397 n

end

end A326390.P13466741425911299582

/-! ## A326390.P8786774773988298

`A036453(A065033(n))*A326397(n)`
-/

namespace A326390.P8786774773988298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A065033 n).toNat * A326397 n

end

end A326390.P8786774773988298

/-! ## A326390.P6143644242548025175

`A020639(A225530(n))*A326397(n)`
-/

namespace A326390.P6143644242548025175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A225530 n).toNat * A326397 n

end

end A326390.P6143644242548025175

/-! ## A326390.P8641650118154918381

`A000005(A056813(n+1))*A326397(n)`
-/

namespace A326390.P8641650118154918381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A056813 (n + 1)).toNat * A326397 n

end

end A326390.P8641650118154918381

/-! ## A326390.P8775513481778828327

`A000005(A113402(n+1))*A326404(n)`
-/

namespace A326390.P8775513481778828327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A113402 (n + 1)).toNat * A326404 n

end

end A326390.P8775513481778828327

/-! ## A326390.P2113058918401467784

`A003056(A233583(n+1))*A326404(n)`
-/

namespace A326390.P2113058918401467784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A233583 (n + 1)).toNat * A326404 n

end

end A326390.P2113058918401467784

/-! ## A326390.P9935311634765102181

`A020639(A000010(or(2, n)))*A326397(n)`
-/

namespace A326390.P9935311634765102181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (Nat.lor 2 n)).toNat * A326397 n

end

end A326390.P9935311634765102181

/-! ## A326390.P14005486562271695193

`A028310(A002024(n+1)-1)*A326404(n)`
-/

namespace A326390.P14005486562271695193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A002024 (n + 1) - 1).toNat * A326404 n

end

end A326390.P14005486562271695193

/-!
# A326392: Lesser of twin primes p for which sigma(p+1)/sigma(p) reaches record value, where sigma(n) is the divisor sum function (A000203).

The programs for A326392, there is no canonical definition to state claims against.
-/

/-! ## A326392.P4743871933425304861

`A328329(A128870(n+1))`
-/

namespace A326392.P4743871933425304861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328329 (A128870 (n + 1)).toNat

end

end A326392.P4743871933425304861

/-! ## A326392.P8442635450812352468

`A328329(A106000(n+1))`
-/

namespace A326392.P8442635450812352468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328329 (A106000 (n + 1)).toNat

end

end A326392.P8442635450812352468

/-! ## A326392.P9049114174106485992

`A328329(A064704(n+1))`
-/

namespace A326392.P9049114174106485992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328329 (A064704 (n + 1)).toNat

end

end A326392.P9049114174106485992

/-! ## A326392.P18283174416060668298

`A328329(A083136(n+1))`
-/

namespace A326392.P18283174416060668298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328329 (A083136 (n + 1)).toNat

end

end A326392.P18283174416060668298

/-! ## A326392.P16399706925866769330

`A328329(A117057(n+1))`
-/

namespace A326392.P16399706925866769330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328329 (A117057 (n + 1)).toNat

end

end A326392.P16399706925866769330

/-!
# A326393: Primes p for which sigma(p+1)/sigma(p) reaches a record value, where sigma(k) is the divisor sum function (A000203).

The programs for A326393, there is no canonical definition to state claims against.
-/

/-! ## A326393.P4186043512778854815

`∩[A119660(n+1), A164119(n+1)]`
-/

namespace A326393.P4186043512778854815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326393.P4186043512778854815

/-! ## A326393.P1242947937523272367

`∩[A086472(n+1), A164119(n+1)]`
-/

namespace A326393.P1242947937523272367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326393.P1242947937523272367

/-! ## A326393.P15407225779855034113

`∩[A069681(n+1), A164119(n+1)]`
-/

namespace A326393.P15407225779855034113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326393.P15407225779855034113

/-!
# A326394: Expansion of Sum_{k>=1} x^k * (1 + x^(2*k)) / (1 - x^(3*k)).

The programs for A326394, the canonical program `A326394.P14432854135071990009` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326394 has offset 1).

The definition of A326394 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326394.P14432854135071990009

`A000005(n+1)-A001822(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A326394

/-- `A000005(n+1)-A001822(n+1)` -/
def P14432854135071990009.Spec : Prop :=
  ∀ n, P14432854135071990009.a n = A326394 (n + 1)

theorem P14432854135071990009.correct : P14432854135071990009.Spec := by
  intro n
  simp only [A326394, Nat.add_sub_cancel]

end A326394

/-! ## A326394.P16750779064528988058

`∑{d}[n+1, ceil(cos(#%3))]`
-/

namespace A326394.P16750779064528988058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈Real.cos ((d % 3 : ℕ) : ℝ)⌉

end

end A326394.P16750779064528988058

namespace A326394

/-- `∑{d}[n+1, ceil(cos(#%3))]` -/
def P16750779064528988058.Spec : Prop :=
  ∀ n, P16750779064528988058.a n = A326394 (n + 1)

end A326394

/-! ## A326394.P6041929412235624000

`∑{d}[n+1, (#+1)²%3]`
-/

namespace A326394.P6041929412235624000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d + 1) ^ 2 % 3

end

end A326394.P6041929412235624000

namespace A326394

/-- `∑{d}[n+1, (#+1)²%3]` -/
def P6041929412235624000.Spec : Prop :=
  ∀ n, (P6041929412235624000.a n : ℤ) = A326394 (n + 1)

end A326394

/-! ## A326394.P1725806057624897463

`∑{d}[n+1, A204418(#-1)]`
-/

namespace A326394.P1725806057624897463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A204418 (d - 1)

end

end A326394.P1725806057624897463

namespace A326394

/-- `∑{d}[n+1, A204418(#-1)]` -/
def P1725806057624897463.Spec : Prop :=
  ∀ n, P1725806057624897463.a n = A326394 (n + 1)

end A326394

/-! ## A326394.P6260506719268532228

`Δ[A006218(n)]-A001822(n+1)`
-/

namespace A326394.P6260506719268532228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001822 (n + 1)

end

end A326394.P6260506719268532228

namespace A326394

/-- `Δ[A006218(n)]-A001822(n+1)` -/
def P6260506719268532228.Spec : Prop :=
  ∀ n, P6260506719268532228.a n = A326394 (n + 1)

end A326394

/-! ## A326394.P9249334432675606304

`A000005(n+1)-Δ[A218443(n)]`
-/

namespace A326394.P9249334432675606304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (f1 (n + 1) - f1 n)

end

end A326394.P9249334432675606304

namespace A326394

/-- `A000005(n+1)-Δ[A218443(n)]` -/
def P9249334432675606304.Spec : Prop :=
  ∀ n, P9249334432675606304.a n = A326394 (n + 1)

end A326394

/-! ## A326394.P6770274227303029008

`A326395(n+1)+A002324(n+1)`
-/

namespace A326394.P6770274227303029008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326395 (n + 1) + A002324 (n + 1)

end

end A326394.P6770274227303029008

namespace A326394

/-- `A326395(n+1)+A002324(n+1)` -/
def P6770274227303029008.Spec : Prop :=
  ∀ n, P6770274227303029008.a n = A326394 (n + 1)

end A326394

/-! ## A326394.P15364643466008066779

`A372713(n+1)-A082909(n+1)`
-/

namespace A326394.P15364643466008066779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372713 (n + 1) - A082909 (n + 1)

end

end A326394.P15364643466008066779

namespace A326394

/-- `A372713(n+1)-A082909(n+1)` -/
def P15364643466008066779.Spec : Prop :=
  ∀ n, P15364643466008066779.a n = A326394 (n + 1)

end A326394

/-! ## A326394.P18217845970024825594

`A000005(n+1)+A218443(n)-A218443(n+1)`
-/

namespace A326394.P18217845970024825594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A218443 n - A218443 (n + 1))

end

end A326394.P18217845970024825594

namespace A326394

/-- `A000005(n+1)+A218443(n)-A218443(n+1)` -/
def P18217845970024825594.Spec : Prop :=
  ∀ n, P18217845970024825594.a n = A326394 (n + 1)

end A326394

/-! ## A326394.P8828739516601023247

`A000005(n+1)+A001817(n+1)-A035191(n+1)`
-/

namespace A326394.P8828739516601023247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A001817 (n + 1) - A035191 (n + 1))

end

end A326394.P8828739516601023247

namespace A326394

/-- `A000005(n+1)+A001817(n+1)-A035191(n+1)` -/
def P8828739516601023247.Spec : Prop :=
  ∀ n, P8828739516601023247.a n = A326394 (n + 1)

end A326394

/-! ## A326394.P11981914032260655133

`A001817(n+1)+A326395(n+1)-A001822(n+1)`
-/

namespace A326394.P11981914032260655133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (n + 1) + (A326395 (n + 1) - A001822 (n + 1))

end

end A326394.P11981914032260655133

namespace A326394

/-- `A001817(n+1)+A326395(n+1)-A001822(n+1)` -/
def P11981914032260655133.Spec : Prop :=
  ∀ n, P11981914032260655133.a n = A326394 (n + 1)

end A326394

/-! ## A326394.P7919536970790759034

`∑{d}[n+1, A010892(#)²]`
-/

namespace A326394.P7919536970790759034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010892 d ^ 2

end

end A326394.P7919536970790759034

namespace A326394

/-- `∑{d}[n+1, A010892(#)²]` -/
def P7919536970790759034.Spec : Prop :=
  ∀ n, P7919536970790759034.a n = A326394 (n + 1)

end A326394

/-! ## A326394.P5326399438731935962

`∑{d}[n+1, A049347(#)²]`
-/

namespace A326394.P5326399438731935962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049347 d ^ 2

end

end A326394.P5326399438731935962

namespace A326394

/-- `∑{d}[n+1, A049347(#)²]` -/
def P5326399438731935962.Spec : Prop :=
  ∀ n, P5326399438731935962.a n = A326394 (n + 1)

end A326394

/-!
# A326395: Expansion of Sum_{k>=1} x^(2*k) * (1 + x^k) / (1 - x^(3*k)).

The programs for A326395, the canonical program `A326395.P13988097051787891098` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326395 has offset 1).

The definition of A326395 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001817, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326395.P13988097051787891098

`A000005(n+1)-A001817(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A326395

/-- `A000005(n+1)-A001817(n+1)` -/
def P13988097051787891098.Spec : Prop :=
  ∀ n, P13988097051787891098.a n = A326395 (n + 1)

theorem P13988097051787891098.correct : P13988097051787891098.Spec := by
  intro n
  simp only [A326395, Nat.add_sub_cancel]

end A326395

/-! ## A326395.P18212231273897755740

`∑{d}[n+1, (1-#%3)²]`
-/

namespace A326395.P18212231273897755740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - ((d % 3 : ℕ) : ℤ)) ^ 2

end

end A326395.P18212231273897755740

namespace A326395

/-- `∑{d}[n+1, (1-#%3)²]` -/
def P18212231273897755740.Spec : Prop :=
  ∀ n, P18212231273897755740.a n = A326395 (n + 1)

end A326395

/-! ## A326395.P16031985861221023089

`∑{d}[n+1, (#+2)²%3]`
-/

namespace A326395.P16031985861221023089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d + 2) ^ 2 % 3

end

end A326395.P16031985861221023089

namespace A326395

/-- `∑{d}[n+1, (#+2)²%3]` -/
def P16031985861221023089.Spec : Prop :=
  ∀ n, (P16031985861221023089.a n : ℤ) = A326395 (n + 1)

end A326395

/-! ## A326395.P5820471022061989466

`∑{d}[n+1, A260190(#)²]`
-/

namespace A326395.P5820471022061989466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A260190 d ^ 2

end

end A326395.P5820471022061989466

namespace A326395

/-- `∑{d}[n+1, A260190(#)²]` -/
def P5820471022061989466.Spec : Prop :=
  ∀ n, P5820471022061989466.a n = A326395 (n + 1)

end A326395

/-! ## A326395.P11627891584804097920

`∑{d}[n+1, A011655(#-1)]`
-/

namespace A326395.P11627891584804097920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011655 (d - 1)

end

end A326395.P11627891584804097920

namespace A326395

/-- `∑{d}[n+1, A011655(#-1)]` -/
def P11627891584804097920.Spec : Prop :=
  ∀ n, P11627891584804097920.a n = A326395 (n + 1)

end A326395

/-! ## A326395.P17234131952342496014

`A326394(n+1)-A002324(n+1)`
-/

namespace A326395.P17234131952342496014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326394 (n + 1) - A002324 (n + 1)

end

end A326395.P17234131952342496014

namespace A326395

/-- `A326394(n+1)-A002324(n+1)` -/
def P17234131952342496014.Spec : Prop :=
  ∀ n, P17234131952342496014.a n = A326395 (n + 1)

end A326395

/-! ## A326395.P764048587106997002

`∑{d}[n+1, A156595(#-1)*A177702((n+1)/#-1)]`
-/

namespace A326395.P764048587106997002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A156595 (d - 1) * A177702 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A326395.P764048587106997002

namespace A326395

/-- `∑{d}[n+1, A156595(#-1)*A177702((n+1)/#-1)]` -/
def P764048587106997002.Spec : Prop :=
  ∀ n, P764048587106997002.a n = A326395 (n + 1)

end A326395

/-! ## A326395.P7585154013329134265

`A000005(n+1)-(A002324(n+1)+A001822(n+1))`
-/

namespace A326395.P7585154013329134265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A002324 (n + 1) + A001822 (n + 1))

end

end A326395.P7585154013329134265

namespace A326395

/-- `A000005(n+1)-(A002324(n+1)+A001822(n+1))` -/
def P7585154013329134265.Spec : Prop :=
  ∀ n, P7585154013329134265.a n = A326395 (n + 1)

end A326395

/-! ## A326395.P6439959517905586665

`A000005(n+1)+A001822(n+1)-A035191(n+1)`
-/

namespace A326395.P6439959517905586665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A001822 (n + 1) - A035191 (n + 1))

end

end A326395.P6439959517905586665

namespace A326395

/-- `A000005(n+1)+A001822(n+1)-A035191(n+1)` -/
def P6439959517905586665.Spec : Prop :=
  ∀ n, P6439959517905586665.a n = A326395 (n + 1)

end A326395

/-! ## A326395.P16543216581978482073

`A001822(n+1)+A326394(n+1)-A001817(n+1)`
-/

namespace A326395.P16543216581978482073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (n + 1) + (A326394 (n + 1) - A001817 (n + 1))

end

end A326395.P16543216581978482073

namespace A326395

/-- `A001822(n+1)+A326394(n+1)-A001817(n+1)` -/
def P16543216581978482073.Spec : Prop :=
  ∀ n, P16543216581978482073.a n = A326395 (n + 1)

end A326395

/-! ## A326395.P7411538327500329947

`∑{d}[n+1, A204418(#)]`
-/

namespace A326395.P7411538327500329947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A204418 d

end

end A326395.P7411538327500329947

namespace A326395

/-- `∑{d}[n+1, A204418(#)]` -/
def P7411538327500329947.Spec : Prop :=
  ∀ n, P7411538327500329947.a n = A326395 (n + 1)

end A326395

/-! ## A326395.P3347118236057692679

`∑{d}[n+1, A260192(#)²]`
-/

namespace A326395.P3347118236057692679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A260192 d ^ 2

end

end A326395.P3347118236057692679

namespace A326395

/-- `∑{d}[n+1, A260192(#)²]` -/
def P3347118236057692679.Spec : Prop :=
  ∀ n, P3347118236057692679.a n = A326395 (n + 1)

end A326395

/-! ## A326395.P3167285784431750825

`∑{d}[3*(n+1), A049347(#)]`
-/

namespace A326395.P3167285784431750825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049347 d

end

end A326395.P3167285784431750825

namespace A326395

/-- `∑{d}[3*(n+1), A049347(#)]` -/
def P3167285784431750825.Spec : Prop :=
  ∀ n, P3167285784431750825.a n = A326395 (n + 1)

end A326395

/-! ## A326395.P4574006362282685442

`A001227(A003961(n+1))-A001817(n+1)`
-/

namespace A326395.P4574006362282685442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A003961 (n + 1)).toNat - A001817 (n + 1)

end

end A326395.P4574006362282685442

namespace A326395

/-- `A001227(A003961(n+1))-A001817(n+1)` -/
def P4574006362282685442.Spec : Prop :=
  ∀ n, P4574006362282685442.a n = A326395 (n + 1)

end A326395

/-!
# A326396: Total number of colors in all series-reduced rooted trees with n leaves where colors span an initial interval of the color palette.

The programs for A326396, there is no canonical definition to state claims against.
-/

/-! ## A326396.P4864572119510707131

`A303655(A303616(n)+∑[n])`
-/

namespace A326396.P4864572119510707131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303655 (A303616 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A326396.P4864572119510707131

/-!
# A326397: Triangle T(n,k) read by rows: T(n,k) = number of ways of seating n people around a table for the second time so that k pairs are maintained. Reflected sequences are counted as one.

The programs for A326397, there is no canonical definition to state claims against.
-/

/-! ## A326397.P6012067266365425340

`ceil(A326390(n)/2)`
-/

namespace A326397.P6012067266365425340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A326390 n : ℚ) / 2⌉

end

end A326397.P6012067266365425340

/-! ## A326397.P2506890763915187208

`round(A326390(abs(1-n)+1)/2)`
-/

namespace A326397.P2506890763915187208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A326390 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2)

end

end A326397.P2506890763915187208

/-! ## A326397.P2366759979723319658

`A326390(n)/A329683(n)`
-/

namespace A326397.P2366759979723319658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326390 n : ℚ) / (A329683 n : ℚ)

end

end A326397.P2366759979723319658

/-! ## A326397.P9804882938363189324

`A326390(n)/A387540(n)`
-/

namespace A326397.P9804882938363189324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326390 n : ℚ) / (A387540 n : ℚ)

end

end A326397.P9804882938363189324

/-! ## A326397.P835570249918636423

`A326390(n)/A046698(n)!`
-/

namespace A326397.P835570249918636423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326390 n : ℚ) / (Nat.factorial (A046698 n).toNat : ℚ)

end

end A326397.P835570249918636423

/-! ## A326397.P15828431005600030875

`A326390(n)/gcd(2, A079911(n))`
-/

namespace A326397.P15828431005600030875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326390 n : ℚ) / (Int.gcd 2 (A079911 n) : ℚ)

end

end A326397.P15828431005600030875

/-! ## A326397.P11627180069435276430

`A326390(n)/A054977(C(2, n))`
-/

namespace A326397.P11627180069435276430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326390 n : ℚ) / (A054977 (Nat.choose 2 n) : ℚ)

end

end A326397.P11627180069435276430

/-! ## A326397.P8046406664593031530

`round(A000034(2*n)/2*A326390(n))`
-/

namespace A326397.P8046406664593031530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000034 (2 * n) : ℚ) / 2 * (A326390 n : ℚ))

end

end A326397.P8046406664593031530

/-! ## A326397.P14904383459648395106

`A326390(n)/A000108((2-C(2, n))!)`
-/

namespace A326397.P14904383459648395106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326390 n : ℚ) / (A000108 (Nat.factorial (2 - (Nat.choose 2 n : ℤ)).toNat) : ℚ)

end

end A326397.P14904383459648395106

/-! ## A326397.P8557200312032510418

`A326390(n)/A000034(A007918(n))`
-/

namespace A326397.P8557200312032510418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326390 n : ℚ) / (A000034 (A007918 n).toNat : ℚ)

end

end A326397.P8557200312032510418

/-! ## A326397.P8415948914558316679

`A326390(n)/A036453(A006949(n))`
-/

namespace A326397.P8415948914558316679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326390 n : ℚ) / (A036453 (A006949 n).toNat : ℚ)

end

end A326397.P8415948914558316679

/-! ## A326397.P1060223063512571341

`A326390(n)/A036453(A065033(n))`
-/

namespace A326397.P1060223063512571341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326390 n : ℚ) / (A036453 (A065033 n).toNat : ℚ)

end

end A326397.P1060223063512571341

/-! ## A326397.P9023009663125249379

`A326390(n)/A020639(A225530(n))`
-/

namespace A326397.P9023009663125249379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326390 n : ℚ) / (A020639 (A225530 n).toNat : ℚ)

end

end A326397.P9023009663125249379

/-! ## A326397.P17232086261576268058

`A326390(n)/A020639(A000010(A000010(n+4)))`
-/

namespace A326397.P17232086261576268058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326390 n : ℚ) / (A020639 (A000010 (A000010 (n + 4)).toNat).toNat : ℚ)

end

end A326397.P17232086261576268058

/-!
# A326398: a(n) is the smallest k > 0 such that the concatenation prime(n)k is composite.

The programs for A326398, the canonical program `A326398.P10411674836388057102` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326398 has offset 1).

The definition of A326398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326398.P10411674836388057102

`ceil(2/A111742(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A326398

/-- `ceil(2/A111742(n+1))` -/
def P10411674836388057102.Spec : Prop :=
  ∀ n, P10411674836388057102.a n = A326398 (n + 1)

theorem P10411674836388057102.correct : P10411674836388057102.Spec := by
  intro n
  simp only [A326398, Nat.add_sub_cancel]

end A326398

/-! ## A326398.P14138228423750444415

`A027642(A111742(n+1))`
-/

namespace A326398.P14138228423750444415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A111742 (n + 1)).toNat

end

end A326398.P14138228423750444415

namespace A326398

/-- `A027642(A111742(n+1))` -/
def P14138228423750444415.Spec : Prop :=
  ∀ n, P14138228423750444415.a n = A326398 (n + 1)

end A326398

/-! ## A326398.P10125070075642012639

`A000041(round(2/A111742(n+1)))`
-/

namespace A326398.P10125070075642012639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (2 / (A111742 (n + 1) : ℚ))).toNat

end

end A326398.P10125070075642012639

namespace A326398

/-- `A000041(round(2/A111742(n+1)))` -/
def P10125070075642012639.Spec : Prop :=
  ∀ n, P10125070075642012639.a n = A326398 (n + 1)

end A326398

/-! ## A326398.P13130307213297770469

`A369296(round(2/A111742(n+1)))`
-/

namespace A326398.P13130307213297770469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369296 (SequenceMachineLib.roundAway (2 / (A111742 (n + 1) : ℚ))).toNat

end

end A326398.P13130307213297770469

namespace A326398

/-- `A369296(round(2/A111742(n+1)))` -/
def P13130307213297770469.Spec : Prop :=
  ∀ n, P13130307213297770469.a n = A326398 (n + 1)

end A326398

/-! ## A326398.P1407416923933034045

`A055226(round(2/A111742(n+1))+1)`
-/

namespace A326398.P1407416923933034045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055226 (SequenceMachineLib.roundAway (2 / (A111742 (n + 1) : ℚ)) + 1).toNat

end

end A326398.P1407416923933034045

namespace A326398

/-- `A055226(round(2/A111742(n+1))+1)` -/
def P1407416923933034045.Spec : Prop :=
  ∀ n, P1407416923933034045.a n = A326398 (n + 1)

end A326398

/-! ## A326398.P9327767970270682768

`A347928(round(2/A111742(n+1)))+1`
-/

namespace A326398.P9327767970270682768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347928 (SequenceMachineLib.roundAway (2 / (A111742 (n + 1) : ℚ))).toNat + 1

end

end A326398.P9327767970270682768

namespace A326398

/-- `A347928(round(2/A111742(n+1)))+1` -/
def P9327767970270682768.Spec : Prop :=
  ∀ n, P9327767970270682768.a n = A326398 (n + 1)

end A326398

/-! ## A326398.P3421053289473148808

`A326028(round(2/A111742(n+1))+2)`
-/

namespace A326398.P3421053289473148808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326028 (SequenceMachineLib.roundAway (2 / (A111742 (n + 1) : ℚ)) + 2).toNat

end

end A326398.P3421053289473148808

namespace A326398

/-- `A326028(round(2/A111742(n+1))+2)` -/
def P3421053289473148808.Spec : Prop :=
  ∀ n, P3421053289473148808.a n = A326398 (n + 1)

end A326398

/-! ## A326398.P17273470827838232159

`A005117(round(sqrt(2/A111742(n+1)+1)))`
-/

namespace A326398.P17273470827838232159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (SequenceMachineLib.roundAway (Real.sqrt (2 / (A111742 (n + 1) : ℚ) + 1 : ℝ))).toNat

end

end A326398.P17273470827838232159

namespace A326398

/-- `A005117(round(sqrt(2/A111742(n+1)+1)))` -/
def P17273470827838232159.Spec : Prop :=
  ∀ n, P17273470827838232159.a n = A326398 (n + 1)

end A326398

/-! ## A326398.P10305373820978382114

`A036537(round(sqrt(2/A111742(n+1)+1)))`
-/

namespace A326398.P10305373820978382114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (SequenceMachineLib.roundAway (Real.sqrt (2 / (A111742 (n + 1) : ℚ) + 1 : ℝ))).toNat

end

end A326398.P10305373820978382114

namespace A326398

/-- `A036537(round(sqrt(2/A111742(n+1)+1)))` -/
def P10305373820978382114.Spec : Prop :=
  ∀ n, P10305373820978382114.a n = A326398 (n + 1)

end A326398

/-! ## A326398.P9052978504648126119

`A001876(A119657(n+1))`
-/

namespace A326398.P9052978504648126119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A119657 (n + 1)).toNat

end

end A326398.P9052978504648126119

namespace A326398

/-- `A001876(A119657(n+1))` -/
def P9052978504648126119.Spec : Prop :=
  ∀ n, P9052978504648126119.a n = A326398 (n + 1)

end A326398

/-! ## A326398.P11741512945610533597

`C(2, A257459(n+1))!`
-/

namespace A326398.P11741512945610533597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose 2 (A257459 (n + 1)).toNat)

end

end A326398.P11741512945610533597

namespace A326398

/-- `C(2, A257459(n+1))!` -/
def P11741512945610533597.Spec : Prop :=
  ∀ n, (P11741512945610533597.a n : ℤ) = A326398 (n + 1)

end A326398

/-! ## A326398.P16959022560854894847

`A373565(A257459(n+1))`
-/

namespace A326398.P16959022560854894847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 (A257459 (n + 1)).toNat

end

end A326398.P16959022560854894847

namespace A326398

/-- `A373565(A257459(n+1))` -/
def P16959022560854894847.Spec : Prop :=
  ∀ n, P16959022560854894847.a n = A326398 (n + 1)

end A326398

/-! ## A326398.P17540015903429326889

`A000110(C(2, A257459(n+1)))`
-/

namespace A326398.P17540015903429326889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (Nat.choose 2 (A257459 (n + 1)).toNat)

end

end A326398.P17540015903429326889

namespace A326398

/-- `A000110(C(2, A257459(n+1)))` -/
def P17540015903429326889.Spec : Prop :=
  ∀ n, P17540015903429326889.a n = A326398 (n + 1)

end A326398

/-! ## A326398.P16985088062211511923

`A001006(C(2, A257459(n+1)))`
-/

namespace A326398.P16985088062211511923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (Nat.choose 2 (A257459 (n + 1)).toNat)

end

end A326398.P16985088062211511923

namespace A326398

/-- `A001006(C(2, A257459(n+1)))` -/
def P16985088062211511923.Spec : Prop :=
  ∀ n, P16985088062211511923.a n = A326398 (n + 1)

end A326398

/-!
# A326399: Expansion of Sum_{k>=1} k * x^k / (1 - x^(3*k)).

The programs for A326399, the canonical program `A326399.P10632042506971658356` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326399 has offset 1).

The definition of A326399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326399.P10632042506971658356

`∑{d}[n+1, #*A079978((n+1)/#-1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A326399

/-- `∑{d}[n+1, #*A079978((n+1)/#-1)]` -/
def P10632042506971658356.Spec : Prop :=
  ∀ n, P10632042506971658356.a n = A326399 (n + 1)

theorem P10632042506971658356.correct : P10632042506971658356.Spec := by
  intro n
  simp only [A326399, Nat.add_sub_cancel]

end A326399

/-! ## A326399.P11926661416469566964

`A326401(n+1)+A326400(n+1)`
-/

namespace A326399.P11926661416469566964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326401 (n + 1) + A326400 (n + 1)

end

end A326399.P11926661416469566964

namespace A326399

/-- `A326401(n+1)+A326400(n+1)` -/
def P11926661416469566964.Spec : Prop :=
  ∀ n, P11926661416469566964.a n = A326399 (n + 1)

end A326399

/-! ## A326399.P7102948400605844305

`A078708(n+1)-A326400(n+1)`
-/

namespace A326399.P7102948400605844305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078708 (n + 1) - A326400 (n + 1)

end

end A326399.P7102948400605844305

namespace A326399

/-- `A078708(n+1)-A326400(n+1)` -/
def P7102948400605844305.Spec : Prop :=
  ∀ n, P7102948400605844305.a n = A326399 (n + 1)

end A326399

/-! ## A326399.P10998169955005176684

`(A326401(n+1)+A078708(n+1))/2`
-/

namespace A326399.P10998169955005176684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326401 (n + 1) + A078708 (n + 1) : ℚ) / 2

end

end A326399.P10998169955005176684

namespace A326399

/-- `(A326401(n+1)+A078708(n+1))/2` -/
def P10998169955005176684.Spec : Prop :=
  ∀ n, P10998169955005176684.a n = (A326399 (n + 1) : ℚ)

end A326399

/-! ## A326399.P11638260455170094820

`∑{d}[n+1, A000010(#)*A001817((n+1)/#)]`
-/

namespace A326399.P11638260455170094820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A001817 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326399.P11638260455170094820

namespace A326399

/-- `∑{d}[n+1, A000010(#)*A001817((n+1)/#)]` -/
def P11638260455170094820.Spec : Prop :=
  ∀ n, P11638260455170094820.a n = A326399 (n + 1)

end A326399

/-! ## A326399.P5192741349969207038

`∑{d}[n+1, A162728(#)*A364204((n+1)/#)]`
-/

namespace A326399.P5192741349969207038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162728 d * A364204 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326399.P5192741349969207038

namespace A326399

/-- `∑{d}[n+1, A162728(#)*A364204((n+1)/#)]` -/
def P5192741349969207038.Spec : Prop :=
  ∀ n, P5192741349969207038.a n = A326399 (n + 1)

end A326399

/-! ## A326399.P9810132029838095899

`∑{d}[n+1, A137893(#)*A186101((n+1)/#)]`
-/

namespace A326399.P9810132029838095899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A137893 d * A186101 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326399.P9810132029838095899

namespace A326399

/-- `∑{d}[n+1, A137893(#)*A186101((n+1)/#)]` -/
def P9810132029838095899.Spec : Prop :=
  ∀ n, P9810132029838095899.a n = A326399 (n + 1)

end A326399

/-! ## A326399.P7665692097891838949

`A001281(A326401(n+1)+A078708(n+1))`
-/

namespace A326399.P7665692097891838949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A326401 (n + 1) + A078708 (n + 1)).toNat

end

end A326399.P7665692097891838949

namespace A326399

/-- `A001281(A326401(n+1)+A078708(n+1))` -/
def P7665692097891838949.Spec : Prop :=
  ∀ n, P7665692097891838949.a n = A326399 (n + 1)

end A326399

/-! ## A326399.P1638185752973524624

`A004526(A326401(n+1)+A078708(n+1))`
-/

namespace A326399.P1638185752973524624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A326401 (n + 1) + A078708 (n + 1)).toNat

end

end A326399.P1638185752973524624

namespace A326399

/-- `A004526(A326401(n+1)+A078708(n+1))` -/
def P1638185752973524624.Spec : Prop :=
  ∀ n, P1638185752973524624.a n = A326399 (n + 1)

end A326399

/-! ## A326399.P8529522922729717390

`A006370(A326401(n+1)+A078708(n+1))`
-/

namespace A326399.P8529522922729717390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A326401 (n + 1) + A078708 (n + 1)).toNat

end

end A326399.P8529522922729717390

namespace A326399

/-- `A006370(A326401(n+1)+A078708(n+1))` -/
def P8529522922729717390.Spec : Prop :=
  ∀ n, P8529522922729717390.a n = A326399 (n + 1)

end A326399

