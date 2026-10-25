import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
# A336300: Primes p such that there exists k with p < k < q such that p+k and q+k are prime, where q is the next prime after p.

The programs for A336300, there is no canonical definition to state claims against.
-/

/-! ## A336300.P18265919448757019326

`A136548(A249667(n+1)%A269499(n+1))`
-/

namespace A336300.P18265919448757019326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (Int.tmod (A249667 (n + 1)) (A269499 (n + 1))).toNat

end

end A336300.P18265919448757019326

/-! ## A336300.P2845437661361863308

`A007917(A249667(n+1))%A113615(2*(n+1))`
-/

namespace A336300.P2845437661361863308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007917 (A249667 (n + 1)).toNat) (A113615 (2 * (n + 1)))

end

end A336300.P2845437661361863308

/-!
# A336302: a(n) = n^2 mod ceiling(sqrt(n)).

The programs for A336302, the canonical program `A336302.P10402866181726329229` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336302 has offset 1).

The definition of A336302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336302.P14505041321887956709

`(n+1)²%∑[char[n²]]`
-/

namespace A336302.P14505041321887956709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336302.P14505041321887956709

namespace A336302

/-- `(n+1)²%∑[char[n²]]` -/
def P14505041321887956709.Spec : Prop :=
  ∀ n, (P14505041321887956709.a n : ℤ) = A336302 (n + 1)

end A336302

/-! ## A336302.P10957929340211994585

`abs(A000290(n+1)%(comp[2*C(n, 2)]-n))`
-/

namespace A336302.P10957929340211994585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000290 (n + 1)) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))|

end

end A336302.P10957929340211994585

namespace A336302

/-- `abs(A000290(n+1)%(comp[2*C(n, 2)]-n))` -/
def P10957929340211994585.Spec : Prop :=
  ∀ n, P10957929340211994585.a n = A336302 (n + 1)

end A336302

/-! ## A336302.P10402866181726329229

`abs(A162395(n+1)%A003059(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A336302

/-- `abs(A162395(n+1)%A003059(n+1))` -/
def P10402866181726329229.Spec : Prop :=
  ∀ n, P10402866181726329229.a n = A336302 (n + 1)

theorem P10402866181726329229.correct : P10402866181726329229.Spec := by
  intro n
  simp only [A336302, Nat.add_sub_cancel]

end A336302

/-! ## A336302.P394316054357207742

`A118759(∑[A005408(n)]%A003059(n+1))`
-/

namespace A336302.P394316054357207742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A003059 (n + 1))).toNat

end

end A336302.P394316054357207742

namespace A336302

/-- `A118759(∑[A005408(n)]%A003059(n+1))` -/
def P394316054357207742.Spec : Prop :=
  ∀ n, P394316054357207742.a n = A336302 (n + 1)

end A336302

/-! ## A336302.P11911638494874707401

`A350037(comp[∑[2*n]]+1)`
-/

namespace A336302.P11911638494874707401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350037 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A336302.P11911638494874707401

namespace A336302

/-- `A350037(comp[∑[2*n]]+1)` -/
def P11911638494874707401.Spec : Prop :=
  ∀ n, P11911638494874707401.a n = A336302 (n + 1)

end A336302

/-! ## A336302.P5917380734397359196

`A049759(A000196(n)+A000124(n))`
-/

namespace A336302.P5917380734397359196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049759 (A000196 n + A000124 n).toNat

end

end A336302.P5917380734397359196

namespace A336302

/-- `A049759(A000196(n)+A000124(n))` -/
def P5917380734397359196.Spec : Prop :=
  ∀ n, P5917380734397359196.a n = A336302 (n + 1)

end A336302

/-!
# A336303: Number of ordered ways of writing the n-th n-gonal pyramidal number as a sum of n nonzero n-gonal pyramidal numbers.

The programs for A336303, there is no canonical definition to state claims against.
-/

/-! ## A336303.P3658041229835002851

`A025480(A360289(2*n)+A000142(n))`
-/

namespace A336303.P3658041229835002851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A360289 (2 * n) + A000142 n).toNat

end

end A336303.P3658041229835002851

/-! ## A336303.P13722649419897680290

`and(A054576(A279335(n)), A112399(n+1))`
-/

namespace A336303.P13722649419897680290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054576 (A279335 n).toNat) (A112399 (n + 1))

end

end A336303.P13722649419897680290

/-! ## A336303.P15471182087293597753

`A001473(xor(n, a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A336303.P15471182087293597753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001473 (Int.xor (n : ℤ) (a (n - 1))).toNat

end

end A336303.P15471182087293597753

/-!
# A336305: Alternating row sums of triangle A211343.

The programs for A336305, there is no canonical definition to state claims against.
-/

/-! ## A336305.P153707995311090655

`(A067742(n+1)+∑{d}[n+1, #])/2`
-/

namespace A336305.P153707995311090655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067742 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) : ℚ) / 2

end

end A336305.P153707995311090655

/-! ## A336305.P2936605186105224003

`A086670(n+1)+A082647(n+1)`
-/

namespace A336305.P2936605186105224003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086670 (n + 1) + A082647 (n + 1)

end

end A336305.P2936605186105224003

/-! ## A336305.P12867020692660563009

`A079247(n+1)-A131576(n+1)`
-/

namespace A336305.P12867020692660563009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079247 (n + 1) - A131576 (n + 1)

end

end A336305.P12867020692660563009

/-! ## A336305.P13249204994228683671

`(A067742(n+1)+Δ[A160664(n)])/2`
-/

namespace A336305.P13249204994228683671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067742 (n + 1) + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A336305.P13249204994228683671

/-! ## A336305.P9578785521306771548

`(A000203(n+1)+A067742(n+1))/2`
-/

namespace A336305.P9578785521306771548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + A067742 (n + 1) : ℚ) / 2

end

end A336305.P9578785521306771548

/-! ## A336305.P11813856670022933983

`A004526(A067742(n+1)+∑{d}[n+1, #])`
-/

namespace A336305.P11813856670022933983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A067742 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)).toNat

end

end A336305.P11813856670022933983

/-! ## A336305.P8313983874732417670

`A001281(A067742(n+1)+Δ[A160664(n)])`
-/

namespace A336305.P8313983874732417670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A067742 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A336305.P8313983874732417670

/-! ## A336305.P12385743700304710650

`A014682(A067742(n+1)+Δ[A160664(n)])`
-/

namespace A336305.P12385743700304710650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A067742 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A336305.P12385743700304710650

/-! ## A336305.P9596592021452213022

`A001281(A067742(n+1)+A000203(n+1))`
-/

namespace A336305.P9596592021452213022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A067742 (n + 1) + A000203 (n + 1)).toNat

end

end A336305.P9596592021452213022

/-! ## A336305.P11075133407000947831

`A004525(A067742(n+1)+A000203(n+1))`
-/

namespace A336305.P11075133407000947831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A067742 (n + 1) + A000203 (n + 1)).toNat

end

end A336305.P11075133407000947831

/-!
# A336307: Numbers that are neither Colombian nor Brazilian.

The programs for A336307, there is no canonical definition to state claims against.
-/

/-! ## A336307.P14473632859541865160

`∩[A176995(n+1), A220570(n+1)]`
-/

namespace A336307.P14473632859541865160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336307.P14473632859541865160

/-! ## A336307.P1145523247814605896

`∩[lt[0, A096234(n)], A220570(n+1)]`
-/

namespace A336307.P1145523247814605896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096234 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A336307.P1145523247814605896

/-! ## A336307.P706553498452262221

`∩[A220570(n+1), comp[A336144(n+1)]]`
-/

namespace A336307.P706553498452262221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336144 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A336307.P706553498452262221

/-! ## A336307.P7178482283213599470

`∩[eq[1, (n-A059711(n))²], A176995(n+1)]`
-/

namespace A336307.P7178482283213599470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A059711 n) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A336307.P7178482283213599470

/-! ## A336307.P12622790619969158447

`∩[A176995(n+1), lt[n, A059711(n+1)+2]+1]`
-/

namespace A336307.P12622790619969158447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176995 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (n + 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A336307.P12622790619969158447

/-!
# A336309: Triangular array read by rows. T(n,k) is the number of labeled rooted unordered binary trees (as in A036774) with path length exactly k, n >= 1, 0 <= k <= C(n,2).

The programs for A336309, there is no canonical definition to state claims against.
-/

/-! ## A336309.P17679987089404580579

`A336255(n+1)%A336238(A282536(n+1))`
-/

namespace A336309.P17679987089404580579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336255 (n + 1)) (A336238 (A282536 (n + 1)).toNat)

end

end A336309.P17679987089404580579

/-! ## A336309.P10285617246635546697

`lcm(A263860(A076921(n+1)), A336255(n+1))`
-/

namespace A336309.P10285617246635546697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A263860 (A076921 (n + 1)).toNat) (A336255 (n + 1))

end

end A336309.P10285617246635546697

/-! ## A336309.P3031184185069380522

`lcm(A244895(A054170(n)), A336255(n+1))`
-/

namespace A336309.P3031184185069380522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A244895 (A054170 n).toNat) (A336255 (n + 1))

end

end A336309.P3031184185069380522

/-! ## A336309.P10684906974217680602

`A114607(A036561(n))*A336255(n+1)`
-/

namespace A336309.P10684906974217680602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114607 (A036561 n).toNat * A336255 (n + 1)

end

end A336309.P10684906974217680602

/-! ## A336309.P2240448419097560474

`C(A336255(n+1), A130580(A062734(n+1)))`
-/

namespace A336309.P2240448419097560474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A336255 (n + 1)).toNat (A130580 (A062734 (n + 1)).toNat).toNat

end

end A336309.P2240448419097560474

/-!
# A336310: Sum of path lengths over all labeled rooted unordered binary trees.

The programs for A336310, there is no canonical definition to state claims against.
-/

/-! ## A336310.P1113809965120651539

`A004524(A006128(n)*A225052(n))`
-/

namespace A336310.P1113809965120651539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A006128 n * A225052 n).toNat

end

end A336310.P1113809965120651539

/-! ## A336310.P4313446054143185866

`A003418(n)*A326853(A289501(n))`
-/

namespace A336310.P4313446054143185866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n * A326853 (A289501 n).toNat

end

end A336310.P4313446054143185866

/-!
# A336311: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278222(A336120(i)) = A278222(A336120(j)) and A278222(A336125(i)) = A278222(A336125(j)) for all i, j >= 1.

The programs for A336311, there is no canonical definition to state claims against.
-/

/-! ## A336311.P17328833741270019687

`A115871(A339874(n+1)%A339875(n+1))`
-/

namespace A336311.P17328833741270019687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115871 (Int.tmod (A339874 (n + 1)) (A339875 (n + 1))).toNat

end

end A336311.P17328833741270019687

/-! ## A336311.P2955051165605322241

`A002034(A339874(n+1)!)`
-/

namespace A336311.P2955051165605322241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (Nat.factorial (A339874 (n + 1)).toNat)

end

end A336311.P2955051165605322241

/-! ## A336311.P13916822262461658222

`A001222(5^A339874(n+1))`
-/

namespace A336311.P13916822262461658222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A339874 (n + 1) : ℤ))).toNat

end

end A336311.P13916822262461658222

/-! ## A336311.P11191717650560473558

`A000005(5^A339874(n+1))-1`
-/

namespace A336311.P11191717650560473558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A339874 (n + 1) : ℤ))).toNat - 1

end

end A336311.P11191717650560473558

/-! ## A336311.P4503532980441592415

`∑{d}[5^A339874(n+1), A001221(#)]`
-/

namespace A336311.P4503532980441592415
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A339874 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001221 d

end

end A336311.P4503532980441592415

/-!
# A336312: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278222(A336120(i)) = A278222(A336120(j)) for all i, j >= 1.

The programs for A336312, there is no canonical definition to state claims against.
-/

/-! ## A336312.P11937960977594121721

`A336121(n+1)+A118235(C(n+2, 2))`
-/

namespace A336312.P11937960977594121721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (n + 1) + A118235 (Nat.choose (n + 2) 2)

end

end A336312.P11937960977594121721

/-! ## A336312.P17207218379078218011

`A336121(n+1)+A058281(A000096(n))`
-/

namespace A336312.P17207218379078218011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (n + 1) + A058281 (A000096 n).toNat

end

end A336312.P17207218379078218011

/-! ## A336312.P13453260468845660674

`A336121(n+1)+A001222(A124273(n+1))`
-/

namespace A336312.P13453260468845660674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (n + 1) + A001222 (A124273 (n + 1)).toNat

end

end A336312.P13453260468845660674

/-! ## A336312.P9861417534120076620

`A336121(n+1)+A001511(A129842(n+1))`
-/

namespace A336312.P9861417534120076620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (n + 1) + A001511 (A129842 (n + 1)).toNat

end

end A336312.P9861417534120076620

/-! ## A336312.P1752143026721051270

`A336121(n+1)+A000035(A133773(n+1))`
-/

namespace A336312.P1752143026721051270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (n + 1) + A000035 (A133773 (n + 1)).toNat

end

end A336312.P1752143026721051270

/-! ## A336312.P16567003717225682899

`A000005(A214834(n+2)^A336121(n+1))`
-/

namespace A336312.P16567003717225682899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A214834 (n + 2) : ℚ) ^ (A336121 (n + 1) : ℤ))).toNat

end

end A336312.P16567003717225682899

/-! ## A336312.P6652158423912781559

`A001222(A214834(n+2)^A336121(n+1))+1`
-/

namespace A336312.P6652158423912781559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A214834 (n + 2) : ℚ) ^ (A336121 (n + 1) : ℤ))).toNat + 1

end

end A336312.P6652158423912781559

/-! ## A336312.P14903034667680260545

`A020639(A124273(n+1)+1)+A336121(n+1)-1`
-/

namespace A336312.P14903034667680260545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A124273 (n + 1) + 1).toNat + (A336121 (n + 1) - 1)

end

end A336312.P14903034667680260545

/-! ## A336312.P5200027955308965991

`A336121(n+1)+A297845(A000124(A110654(n)))`
-/

namespace A336312.P5200027955308965991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (n + 1) + A297845 (A000124 (A110654 n).toNat).toNat

end

end A336312.P5200027955308965991

/-! ## A336312.P12598359384828493158

`A336121(n+1)+A010122(A034856(n+1))`
-/

namespace A336312.P12598359384828493158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (n + 1) + A010122 (A034856 (n + 1)).toNat

end

end A336312.P12598359384828493158

/-! ## A336312.P8444838458638118234

`A336121(n+1)+A335909(A087594(n))`
-/

namespace A336312.P8444838458638118234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (n + 1) + A335909 (A087594 n).toNat

end

end A336312.P8444838458638118234

/-! ## A336312.P16218289357788824379

`A336121(n+1)+A032741(A224934(n+1))`
-/

namespace A336312.P16218289357788824379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (n + 1) + A032741 (A224934 (n + 1)).toNat

end

end A336312.P16218289357788824379

/-! ## A336312.P7848899856568983783

`A336121(n+1)+A051953(A164939(n+1))`
-/

namespace A336312.P7848899856568983783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (n + 1) + A051953 (A164939 (n + 1)).toNat

end

end A336312.P7848899856568983783

/-! ## A336312.P6464271832567061667

`A336121(n+1)+A174897(A228567(n+1))`
-/

namespace A336312.P6464271832567061667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (n + 1) + A174897 (A228567 (n + 1)).toNat

end

end A336312.P6464271832567061667

/-! ## A336312.P14191403112105936390

`A336121(n+1)+A001222(A217062(n+1))`
-/

namespace A336312.P14191403112105936390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (n + 1) + A001222 (A217062 (n + 1)).toNat

end

end A336312.P14191403112105936390

/-! ## A336312.P2065895200238995483

`A336311(A278222(A336120(n+1)))`
-/

namespace A336312.P2065895200238995483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336311 (A278222 (A336120 (n + 1)).toNat).toNat

end

end A336312.P2065895200238995483

/-! ## A336312.P2617809790129093180

`A336121(n+1)+A297845(A000124(n))`
-/

namespace A336312.P2617809790129093180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (n + 1) + A297845 (A000124 n).toNat

end

end A336312.P2617809790129093180

/-!
# A336313: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278222(A336125(i)) = A278222(A336125(j)) for all i, j >= 1.

The programs for A336313, there is no canonical definition to state claims against.
-/

/-! ## A336313.P6219035250206920401

`A336311(A305800(A278222(A336125(n+1))))`
-/

namespace A336313.P6219035250206920401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336311 (A305800 (A278222 (A336125 (n + 1)).toNat).toNat).toNat

end

end A336313.P6219035250206920401

/-! ## A336313.P16378472025735738408

`A349542(A008778(n))+A336123(n+1)`
-/

namespace A336313.P16378472025735738408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349542 (A008778 n).toNat + A336123 (n + 1)

end

end A336313.P16378472025735738408

/-! ## A336313.P8685487230353837211

`A077462(A071053(A336125(n+1)))`
-/

namespace A336313.P8685487230353837211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A071053 (A336125 (n + 1)).toNat).toNat

end

end A336313.P8685487230353837211

/-! ## A336313.P4293580326311994545

`∏{e}[A071053(A336125(n+1)), A000040(#)]`
-/

namespace A336313.P4293580326311994545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 (A336125 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A336313.P4293580326311994545

/-! ## A336313.P5203217465531743867

`∏{e}[A071053(A336125(n+1)), A002385(#)]`
-/

namespace A336313.P5203217465531743867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 (A336125 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002385 (Nat.factorization (f1 n).natAbs p)

end

end A336313.P5203217465531743867

/-!
# A336314: a(n) = A324121(A122111(n)).

The programs for A336314, the canonical program `A336314.P14472842954085751552` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336314 has offset 1).

The definition of A336314 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336314.P15328909513871702707

`gcd(A323173(n+1), A122111(n+1)*A336315(n+1))`
-/

namespace A336314.P15328909513871702707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A323173 (n + 1)) (A122111 (n + 1) * A336315 (n + 1))

end

end A336314.P15328909513871702707

namespace A336314

/-- `gcd(A323173(n+1), A122111(n+1)*A336315(n+1))` -/
def P15328909513871702707.Spec : Prop :=
  ∀ n, (P15328909513871702707.a n : ℤ) = A336314 (n + 1)

end A336314

/-! ## A336314.P14472842954085751552

`A324121(A122111(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A336314

/-- `A324121(A122111(n+1))` -/
def P14472842954085751552.Spec : Prop :=
  ∀ n, P14472842954085751552.a n = A336314 (n + 1)

theorem P14472842954085751552.correct : P14472842954085751552.Spec := by
  intro n
  simp only [A336314, Nat.add_sub_cancel]

end A336314

/-! ## A336314.P6541211540159753455

`A324188(A253566(n+1))`
-/

namespace A336314.P6541211540159753455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324188 (A253566 (n + 1)).toNat

end

end A336314.P6541211540159753455

namespace A336314

/-- `A324188(A253566(n+1))` -/
def P6541211540159753455.Spec : Prop :=
  ∀ n, P6541211540159753455.a n = A336314 (n + 1)

end A336314

/-! ## A336314.P2489429429832208682

`A324058(A253564(n+1))`
-/

namespace A336314.P2489429429832208682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324058 (A253564 (n + 1)).toNat

end

end A336314.P2489429429832208682

namespace A336314

/-- `A324058(A253564(n+1))` -/
def P2489429429832208682.Spec : Prop :=
  ∀ n, P2489429429832208682.a n = A336314 (n + 1)

end A336314

/-! ## A336314.P1595236878822268873

`A324121(A279351(n+1))`
-/

namespace A336314.P1595236878822268873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (A279351 (n + 1)).toNat

end

end A336314.P1595236878822268873

namespace A336314

/-- `A324121(A279351(n+1))` -/
def P1595236878822268873.Spec : Prop :=
  ∀ n, P1595236878822268873.a n = A336314 (n + 1)

end A336314

/-!
# A336315: The number of divisors in the conjugated prime factorization of n: a(n) = A000005(A122111(n)).

The programs for A336315, the canonical program `A336315.P5572704343987048695` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336315 has offset 1).

The definition of A336315 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336315.P2917504140367389587

`A336316(n+1)+A034444(n+1)`
-/

namespace A336315.P2917504140367389587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336316 (n + 1) + A034444 (n + 1)

end

end A336315.P2917504140367389587

namespace A336315

/-- `A336316(n+1)+A034444(n+1)` -/
def P2917504140367389587.Spec : Prop :=
  ∀ n, P2917504140367389587.a n = A336315 (n + 1)

end A336315

/-! ## A336315.P5572704343987048695

`A000005(A122111(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A336315

/-- `A000005(A122111(n+1))` -/
def P5572704343987048695.Spec : Prop :=
  ∀ n, P5572704343987048695.a n = A336315 (n + 1)

theorem P5572704343987048695.correct : P5572704343987048695.Spec := by
  intro n
  simp only [A336315, Nat.add_sub_cancel]

end A336315

/-! ## A336315.P8215945613337271348

`A336316(n+1)+abs(A158522(n+1))`
-/

namespace A336315.P8215945613337271348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336316 (n + 1) + |A158522 (n + 1)|

end

end A336315.P8215945613337271348

namespace A336315

/-- `A336316(n+1)+abs(A158522(n+1))` -/
def P8215945613337271348.Spec : Prop :=
  ∀ n, P8215945613337271348.a n = A336315 (n + 1)

end A336315

/-! ## A336315.P18151163130480400800

`A336316(n+1)+2^A001221(n+1)`
-/

namespace A336315.P18151163130480400800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336316 (n + 1) : ℚ) + (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A336315.P18151163130480400800

namespace A336315

/-- `A336316(n+1)+2^A001221(n+1)` -/
def P18151163130480400800.Spec : Prop :=
  ∀ n, P18151163130480400800.a n = (A336315 (n + 1) : ℚ)

end A336315

/-! ## A336315.P17508755891017210247

`A336316(n+1)+A000005(A007947(n+1))`
-/

namespace A336315.P17508755891017210247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336316 (n + 1) + A000005 (A007947 (n + 1)).toNat

end

end A336315.P17508755891017210247

namespace A336315

/-- `A336316(n+1)+A000005(A007947(n+1))` -/
def P17508755891017210247.Spec : Prop :=
  ∀ n, P17508755891017210247.a n = A336315 (n + 1)

end A336315

/-! ## A336315.P13852799935888387126

`A000005(n+1)+A336316(n+1)-A048105(n+1)`
-/

namespace A336315.P13852799935888387126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A336316 (n + 1) - A048105 (n + 1))

end

end A336315.P13852799935888387126

namespace A336315

/-- `A000005(n+1)+A336316(n+1)-A048105(n+1)` -/
def P13852799935888387126.Spec : Prop :=
  ∀ n, P13852799935888387126.a n = A336315 (n + 1)

end A336315

/-! ## A336315.P2072426675449610728

`A322813(A129598(n+1))`
-/

namespace A336315.P2072426675449610728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322813 (A129598 (n + 1)).toNat

end

end A336315.P2072426675449610728

namespace A336315

/-- `A322813(A129598(n+1))` -/
def P2072426675449610728.Spec : Prop :=
  ∀ n, P2072426675449610728.a n = A336315 (n + 1)

end A336315

/-! ## A336315.P16256219583727811235

`A322813(A253560(n+1))`
-/

namespace A336315.P16256219583727811235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322813 (A253560 (n + 1)).toNat

end

end A336315.P16256219583727811235

namespace A336315

/-- `A322813(A253560(n+1))` -/
def P16256219583727811235.Spec : Prop :=
  ∀ n, P16256219583727811235.a n = A336315 (n + 1)

end A336315

/-! ## A336315.P9772214318195980272

`A322813((n+1)*A006530(n+1))`
-/

namespace A336315.P9772214318195980272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322813 ((n + 1 : ℤ) * A006530 (n + 1)).toNat

end

end A336315.P9772214318195980272

namespace A336315

/-- `A322813((n+1)*A006530(n+1))` -/
def P9772214318195980272.Spec : Prop :=
  ∀ n, P9772214318195980272.a n = A336315 (n + 1)

end A336315

/-! ## A336315.P15247205277837596237

`A322813((n+1)²/A052126(n+1))`
-/

namespace A336315.P15247205277837596237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322813 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A336315.P15247205277837596237

namespace A336315

/-- `A322813((n+1)²/A052126(n+1))` -/
def P15247205277837596237.Spec : Prop :=
  ∀ n, P15247205277837596237.a n = A336315 (n + 1)

end A336315

/-! ## A336315.P2889567176819916857

`A322813(A050399(n+1))`
-/

namespace A336315.P2889567176819916857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322813 (A050399 (n + 1)).toNat

end

end A336315.P2889567176819916857

namespace A336315

/-- `A322813(A050399(n+1))` -/
def P2889567176819916857.Spec : Prop :=
  ∀ n, P2889567176819916857.a n = A336315 (n + 1)

end A336315

/-! ## A336315.P8924323507575564561

`A322813((n+1)²)`
-/

namespace A336315.P8924323507575564561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322813 ((n + 1) ^ 2)

end

end A336315.P8924323507575564561

namespace A336315

/-- `A322813((n+1)²)` -/
def P8924323507575564561.Spec : Prop :=
  ∀ n, P8924323507575564561.a n = A336315 (n + 1)

end A336315

/-! ## A336315.P4232489128385495101

`A122111(A122111(A322813((n+1)*(n+1))))`
-/

namespace A336315.P4232489128385495101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A122111 (A322813 ((n + 1) * (n + 1))).toNat).toNat

end

end A336315.P4232489128385495101

namespace A336315

/-- `A122111(A122111(A322813((n+1)*(n+1))))` -/
def P4232489128385495101.Spec : Prop :=
  ∀ n, P4232489128385495101.a n = A336315 (n + 1)

end A336315

/-!
# A336316: The number of non-unitary divisors in the conjugated prime factorization of n: a(n) = A048105(A122111(n)).

The programs for A336316, the canonical program `A336316.P14370597851712305121` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336316 has offset 1).

The definition of A336316 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048105, A122111, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336316.P10103956915773356365

`A336315(n+1)-A034444(n+1)`
-/

namespace A336316.P10103956915773356365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336315 (n + 1) - A034444 (n + 1)

end

end A336316.P10103956915773356365

namespace A336316

/-- `A336315(n+1)-A034444(n+1)` -/
def P10103956915773356365.Spec : Prop :=
  ∀ n, P10103956915773356365.a n = A336316 (n + 1)

end A336316

/-! ## A336316.P7379544757922385351

`A000005(A122111(n+1))-2^A001221(n+1)`
-/

namespace A336316.P7379544757922385351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A122111 (n + 1)).toNat : ℚ) - (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A336316.P7379544757922385351

namespace A336316

/-- `A000005(A122111(n+1))-2^A001221(n+1)` -/
def P7379544757922385351.Spec : Prop :=
  ∀ n, P7379544757922385351.a n = (A336316 (n + 1) : ℚ)

end A336316

/-! ## A336316.P14370597851712305121

`A048105(A122111(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A336316

/-- `A048105(A122111(n+1))` -/
def P14370597851712305121.Spec : Prop :=
  ∀ n, P14370597851712305121.a n = A336316 (n + 1)

theorem P14370597851712305121.correct : P14370597851712305121.Spec := by
  intro n
  simp only [A336316, Nat.add_sub_cancel]

end A336316

/-! ## A336316.P6660554932821197079

`A336315(n+1)-2^A001221(n+1)`
-/

namespace A336316.P6660554932821197079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336315 (n + 1) : ℚ) - (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A336316.P6660554932821197079

namespace A336316

/-- `A336315(n+1)-2^A001221(n+1)` -/
def P6660554932821197079.Spec : Prop :=
  ∀ n, P6660554932821197079.a n = (A336316 (n + 1) : ℚ)

end A336316

/-! ## A336316.P10745181245490287935

`A336315(n+1)-A336315(A046523(n+1))`
-/

namespace A336316.P10745181245490287935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336315 (n + 1) - A336315 (A046523 (n + 1)).toNat

end

end A336316.P10745181245490287935

namespace A336316

/-- `A336315(n+1)-A336315(A046523(n+1))` -/
def P10745181245490287935.Spec : Prop :=
  ∀ n, P10745181245490287935.a n = A336316 (n + 1)

end A336316

/-! ## A336316.P17474473510399348496

`A336315(n+1)-A336315(A071364(n+1))`
-/

namespace A336316.P17474473510399348496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336315 (n + 1) - A336315 (A071364 (n + 1)).toNat

end

end A336316.P17474473510399348496

namespace A336316

/-- `A336315(n+1)-A336315(A071364(n+1))` -/
def P17474473510399348496.Spec : Prop :=
  ∀ n, P17474473510399348496.a n = A336316 (n + 1)

end A336316

/-! ## A336316.P10410728344666894394

`A048105(n+1)+A336315(n+1)-A000005(n+1)`
-/

namespace A336316.P10410728344666894394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + (A336315 (n + 1) - A000005 (n + 1))

end

end A336316.P10410728344666894394

namespace A336316

/-- `A048105(n+1)+A336315(n+1)-A000005(n+1)` -/
def P10410728344666894394.Spec : Prop :=
  ∀ n, P10410728344666894394.a n = A336316 (n + 1)

end A336316

/-! ## A336316.P8751287367242297702

`∑{d}[A122111(n+1), 1-A008683(#)²]`
-/

namespace A336316.P8751287367242297702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (1 - A008683 d ^ 2)

end

end A336316.P8751287367242297702

namespace A336316

/-- `∑{d}[A122111(n+1), 1-A008683(#)²]` -/
def P8751287367242297702.Spec : Prop :=
  ∀ n, P8751287367242297702.a n = A336316 (n + 1)

end A336316

/-! ## A336316.P17897188263509445369

`A000005(A122111(n+1))-A034444(n+1)`
-/

namespace A336316.P17897188263509445369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A122111 (n + 1)).toNat - A034444 (n + 1)

end

end A336316.P17897188263509445369

namespace A336316

/-- `A000005(A122111(n+1))-A034444(n+1)` -/
def P17897188263509445369.Spec : Prop :=
  ∀ n, P17897188263509445369.a n = A336316 (n + 1)

end A336316

/-! ## A336316.P15602086073138302608

`A000005(A278221(n+1))-A034444(n+1)`
-/

namespace A336316.P15602086073138302608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278221 (n + 1)).toNat - A034444 (n + 1)

end

end A336316.P15602086073138302608

namespace A336316

/-- `A000005(A278221(n+1))-A034444(n+1)` -/
def P15602086073138302608.Spec : Prop :=
  ∀ n, P15602086073138302608.a n = A336316 (n + 1)

end A336316

/-!
# A336317: Numbers k such that A122111(k) [conjugated prime factorization of k] is one of Ore's Harmonic numbers (in A001599).

The programs for A336317, there is no canonical definition to state claims against.
-/

/-! ## A336317.P1344612738204989298

`eq[A323173(n+1), A336314(n+1)]+1`
-/

namespace A336317.P1344612738204989298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336314 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336317.P1344612738204989298

/-!
# A336318: Square root of the largest square dividing n*d(n), where d(n) is the number of divisors of n, A000005.

The programs for A336318, the canonical program `A336318.P2686538755063264344` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336318 has offset 1).

The definition of A336318 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336318.P12229247197849792062

`A000196(A038040(n+1)/A336319(n+1))`
-/

namespace A336318.P12229247197849792062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (A336319 (n + 1) : ℚ))).toNat

end

end A336318.P12229247197849792062

namespace A336318

/-- `A000196(A038040(n+1)/A336319(n+1))` -/
def P12229247197849792062.Spec : Prop :=
  ∀ n, P12229247197849792062.a n = A336318 (n + 1)

end A336318

/-! ## A336318.P2686538755063264344

`A000188(A038040(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A336318

/-- `A000188(A038040(n+1))` -/
def P2686538755063264344.Spec : Prop :=
  ∀ n, P2686538755063264344.a n = A336318 (n + 1)

theorem P2686538755063264344.correct : P2686538755063264344.Spec := by
  intro n
  simp only [A336318, Nat.add_sub_cancel]

end A336318

/-! ## A336318.P14722138359424671519

`A000188((n+1)*A000005(n+1))`
-/

namespace A336318.P14722138359424671519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((n + 1 : ℤ) * A000005 (n + 1)).toNat

end

end A336318.P14722138359424671519

namespace A336318

/-- `A000188((n+1)*A000005(n+1))` -/
def P14722138359424671519.Spec : Prop :=
  ∀ n, P14722138359424671519.a n = A336318 (n + 1)

end A336318

/-! ## A336318.P15984425723740016370

`A033676(A038040(n+1)/A336319(n+1))`
-/

namespace A336318.P15984425723740016370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (A336319 (n + 1) : ℚ))).toNat

end

end A336318.P15984425723740016370

namespace A336318

/-- `A033676(A038040(n+1)/A336319(n+1))` -/
def P15984425723740016370.Spec : Prop :=
  ∀ n, P15984425723740016370.a n = A336318 (n + 1)

end A336318

/-! ## A336318.P16458052136321545055

`A000188(∑{d}[n+1, lcm(#, n+1)])`
-/

namespace A336318.P16458052136321545055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1))

end

end A336318.P16458052136321545055

namespace A336318

/-- `A000188(∑{d}[n+1, lcm(#, n+1)])` -/
def P16458052136321545055.Spec : Prop :=
  ∀ n, P16458052136321545055.a n = A336318 (n + 1)

end A336318

/-! ## A336318.P10128126958295006905

`A000188((n+1)*∏{e}[n+1, #+1])`
-/

namespace A336318.P10128126958295006905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A336318.P10128126958295006905

namespace A336318

/-- `A000188((n+1)*∏{e}[n+1, #+1])` -/
def P10128126958295006905.Spec : Prop :=
  ∀ n, P10128126958295006905.a n = A336318 (n + 1)

end A336318

/-! ## A336318.P7400001238203807223

`A000188(A034714(n+1)/(n+1))`
-/

namespace A336318.P7400001238203807223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((A034714 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A336318.P7400001238203807223

namespace A336318

/-- `A000188(A034714(n+1)/(n+1))` -/
def P7400001238203807223.Spec : Prop :=
  ∀ n, P7400001238203807223.a n = A336318 (n + 1)

end A336318

/-! ## A336318.P15824808439960842189

`A019554(A003557((n+1)*A000005(n+1)))`
-/

namespace A336318.P15824808439960842189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A003557 ((n + 1 : ℤ) * A000005 (n + 1)).toNat).toNat

end

end A336318.P15824808439960842189

namespace A336318

/-- `A019554(A003557((n+1)*A000005(n+1)))` -/
def P15824808439960842189.Spec : Prop :=
  ∀ n, P15824808439960842189.a n = A336318 (n + 1)

end A336318

/-! ## A336318.P4344945104390842787

`A064727(A145229(n))`
-/

namespace A336318.P4344945104390842787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A145229 n).toNat

end

end A336318.P4344945104390842787

namespace A336318

/-- `A064727(A145229(n))` -/
def P4344945104390842787.Spec : Prop :=
  ∀ n, P4344945104390842787.a n = A336318 (n + 1)

end A336318

/-! ## A336318.P804712462848803956

`A000188((n+1)*A046951((n+1)²))`
-/

namespace A336318.P804712462848803956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((n + 1 : ℤ) * A046951 ((n + 1) ^ 2)).toNat

end

end A336318.P804712462848803956

namespace A336318

/-- `A000188((n+1)*A046951((n+1)²))` -/
def P804712462848803956.Spec : Prop :=
  ∀ n, P804712462848803956.a n = A336318 (n + 1)

end A336318

/-! ## A336318.P16401671122189098849

`A000188(A203639((n+1)*A007947(n+1)))`
-/

namespace A336318.P16401671122189098849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A203639 ((n + 1 : ℤ) * A007947 (n + 1)).toNat).toNat

end

end A336318.P16401671122189098849

namespace A336318

/-- `A000188(A203639((n+1)*A007947(n+1)))` -/
def P16401671122189098849.Spec : Prop :=
  ∀ n, P16401671122189098849.a n = A336318 (n + 1)

end A336318

/-!
# A336319: Squarefree part of n*d(n), where d(n) = number of divisors of n (A000005).

The programs for A336319, the canonical program `A336319.P15871671878372422181` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336319 has offset 1).

The definition of A336319 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336318, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336319.P15871671878372422181

`A038040(n+1)/A000290(A336318(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A336319

/-- `A038040(n+1)/A000290(A336318(n+1))` -/
def P15871671878372422181.Spec : Prop :=
  ∀ n, P15871671878372422181.a n = (A336319 (n + 1) : ℚ)

end A336319

/-! ## A336319.P18361390180565705926

`A007913(A038040(n+1))`
-/

namespace A336319.P18361390180565705926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A038040 (n + 1)).toNat

end

end A336319.P18361390180565705926

namespace A336319

/-- `A007913(A038040(n+1))` -/
def P18361390180565705926.Spec : Prop :=
  ∀ n, P18361390180565705926.a n = A336319 (n + 1)

end A336319

/-! ## A336319.P2411652221689997228

`A007913((n+1)*A000005(n+1))`
-/

namespace A336319.P2411652221689997228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A000005 (n + 1)).toNat

end

end A336319.P2411652221689997228

namespace A336319

/-- `A007913((n+1)*A000005(n+1))` -/
def P2411652221689997228.Spec : Prop :=
  ∀ n, P2411652221689997228.a n = A336319 (n + 1)

end A336319

/-! ## A336319.P11902402977992050508

`A007913(A378930(n+1))`
-/

namespace A336319.P11902402977992050508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A378930 (n + 1)).toNat

end

end A336319.P11902402977992050508

namespace A336319

/-- `A007913(A378930(n+1))` -/
def P11902402977992050508.Spec : Prop :=
  ∀ n, P11902402977992050508.a n = A336319 (n + 1)

end A336319

/-! ## A336319.P15191561105383002735

`A007913(∏{e}[n+1, #+1]*A007913(n+1))`
-/

namespace A336319.P15191561105383002735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A007913 (n + 1)).toNat

end

end A336319.P15191561105383002735

namespace A336319

/-- `A007913(∏{e}[n+1, #+1]*A007913(n+1))` -/
def P15191561105383002735.Spec : Prop :=
  ∀ n, P15191561105383002735.a n = A336319 (n + 1)

end A336319

/-! ## A336319.P3141551590470653964

`A007913(∑{d}[n+1, gcd(n, #)]*A007913(n+1))`
-/

namespace A336319.P3141551590470653964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ) * A007913 (n + 1)).toNat

end

end A336319.P3141551590470653964

namespace A336319

/-- `A007913(∑{d}[n+1, gcd(n, #)]*A007913(n+1))` -/
def P3141551590470653964.Spec : Prop :=
  ∀ n, P3141551590470653964.a n = A336319 (n + 1)

end A336319

/-! ## A336319.P12619867991649353167

`A007913((∑{d}[n+1, #+1]-∑{d}[n+1, #])*A007913(n+1))`
-/

namespace A336319.P12619867991649353167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)) * A007913 (n + 1)).toNat

end

end A336319.P12619867991649353167

namespace A336319

/-- `A007913((∑{d}[n+1, #+1]-∑{d}[n+1, #])*A007913(n+1))` -/
def P12619867991649353167.Spec : Prop :=
  ∀ n, P12619867991649353167.a n = A336319 (n + 1)

end A336319

/-! ## A336319.P4649591899336034148

`A007913(Δ[A006218(n)]*A007913(n+1))`
-/

namespace A336319.P4649591899336034148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((f1 (n + 1) - f1 n) * A007913 (n + 1)).toNat

end

end A336319.P4649591899336034148

namespace A336319

/-- `A007913(Δ[A006218(n)]*A007913(n+1))` -/
def P4649591899336034148.Spec : Prop :=
  ∀ n, P4649591899336034148.a n = A336319 (n + 1)

end A336319

/-! ## A336319.P2917266111708890004

`A007913((A032741(n+1)+1)*A007913(n+1))`
-/

namespace A336319.P2917266111708890004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((A032741 (n + 1) + 1) * A007913 (n + 1)).toNat

end

end A336319.P2917266111708890004

namespace A336319

/-- `A007913((A032741(n+1)+1)*A007913(n+1))` -/
def P2917266111708890004.Spec : Prop :=
  ∀ n, P2917266111708890004.a n = A336319 (n + 1)

end A336319

/-! ## A336319.P8740419786904849861

`A007913(∑{d}[n+1, A057427(#)]*A007913(n+1))`
-/

namespace A336319.P8740419786904849861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((∑ d ∈ Nat.divisors (f1 n), A057427 d) * A007913 (n + 1)).toNat

end

end A336319.P8740419786904849861

namespace A336319

/-- `A007913(∑{d}[n+1, A057427(#)]*A007913(n+1))` -/
def P8740419786904849861.Spec : Prop :=
  ∀ n, P8740419786904849861.a n = A336319 (n + 1)

end A336319

/-! ## A336319.P1029860557200842686

`A007913(∑{d}[n+1, A000040(#+1)%2]*A007913(n+1))`
-/

namespace A336319.P1029860557200842686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000040 (d + 1)) 2) * A007913 (n + 1)).toNat

end

end A336319.P1029860557200842686

namespace A336319

/-- `A007913(∑{d}[n+1, A000040(#+1)%2]*A007913(n+1))` -/
def P1029860557200842686.Spec : Prop :=
  ∀ n, P1029860557200842686.a n = A336319 (n + 1)

end A336319

/-! ## A336319.P1511810151475920851

`A007913((∑{d}[n+1, #+1]-A000203(n+1))*A007913(n+1))`
-/

namespace A336319.P1511810151475920851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1)) * A007913 (n + 1)).toNat

end

end A336319.P1511810151475920851

namespace A336319

/-- `A007913((∑{d}[n+1, #+1]-A000203(n+1))*A007913(n+1))` -/
def P1511810151475920851.Spec : Prop :=
  ∀ n, P1511810151475920851.a n = A336319 (n + 1)

end A336319

/-! ## A336319.P18172551834100978846

`A007913((A294894(n+1)+A294893(n+1))*A007913(n+1))`
-/

namespace A336319.P18172551834100978846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((A294894 (n + 1) + A294893 (n + 1)) * A007913 (n + 1)).toNat

end

end A336319.P18172551834100978846

namespace A336319

/-- `A007913((A294894(n+1)+A294893(n+1))*A007913(n+1))` -/
def P18172551834100978846.Spec : Prop :=
  ∀ n, P18172551834100978846.a n = A336319 (n + 1)

end A336319

/-! ## A336319.P15256020573176341226

`A007913((A324393(n+1)+A324392(n+1))*A007913(n+1))`
-/

namespace A336319.P15256020573176341226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((A324393 (n + 1) + A324392 (n + 1)) * A007913 (n + 1)).toNat

end

end A336319.P15256020573176341226

namespace A336319

/-- `A007913((A324393(n+1)+A324392(n+1))*A007913(n+1))` -/
def P15256020573176341226.Spec : Prop :=
  ∀ n, P15256020573176341226.a n = A336319 (n + 1)

end A336319

/-! ## A336319.P5376549821085029520

`A007913((A324827(n+1)+A324826(n+1))*A007913(n+1))`
-/

namespace A336319.P5376549821085029520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((A324827 (n + 1) + A324826 (n + 1)) * A007913 (n + 1)).toNat

end

end A336319.P5376549821085029520

namespace A336319

/-- `A007913((A324827(n+1)+A324826(n+1))*A007913(n+1))` -/
def P5376549821085029520.Spec : Prop :=
  ∀ n, P5376549821085029520.a n = A336319 (n + 1)

end A336319

/-! ## A336319.P17623983125766000296

`A007913((A353362(n+1)+A353361(n+1))*A007913(n+1))`
-/

namespace A336319.P17623983125766000296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((A353362 (n + 1) + A353361 (n + 1)) * A007913 (n + 1)).toNat

end

end A336319.P17623983125766000296

namespace A336319

/-- `A007913((A353362(n+1)+A353361(n+1))*A007913(n+1))` -/
def P17623983125766000296.Spec : Prop :=
  ∀ n, P17623983125766000296.a n = A336319 (n + 1)

end A336319

/-! ## A336319.P14522560799872797994

`A007913((A353376(n+1)+A353375(n+1))*A007913(n+1))`
-/

namespace A336319.P14522560799872797994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((A353376 (n + 1) + A353375 (n + 1)) * A007913 (n + 1)).toNat

end

end A336319.P14522560799872797994

namespace A336319

/-- `A007913((A353376(n+1)+A353375(n+1))*A007913(n+1))` -/
def P14522560799872797994.Spec : Prop :=
  ∀ n, P14522560799872797994.a n = A336319 (n + 1)

end A336319

/-! ## A336319.P10744382854102858361

`A007913(∑{d}[n+1, lcm(#, n+1)])`
-/

namespace A336319.P10744382854102858361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1))

end

end A336319.P10744382854102858361

namespace A336319

/-- `A007913(∑{d}[n+1, lcm(#, n+1)])` -/
def P10744382854102858361.Spec : Prop :=
  ∀ n, P10744382854102858361.a n = A336319 (n + 1)

end A336319

/-! ## A336319.P11772533687914536907

`A007913((n+1)*∏{e}[n+1, #+1])`
-/

namespace A336319.P11772533687914536907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A336319.P11772533687914536907

namespace A336319

/-- `A007913((n+1)*∏{e}[n+1, #+1])` -/
def P11772533687914536907.Spec : Prop :=
  ∀ n, P11772533687914536907.a n = A336319 (n + 1)

end A336319

/-! ## A336319.P11948105292637990675

`A007913(A366144(n+1))`
-/

namespace A336319.P11948105292637990675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A366144 (n + 1)).toNat

end

end A336319.P11948105292637990675

namespace A336319

/-- `A007913(A366144(n+1))` -/
def P11948105292637990675.Spec : Prop :=
  ∀ n, P11948105292637990675.a n = A336319 (n + 1)

end A336319

/-!
# A336320: Lexicographically earliest infinite sequence such that a(i) = a(j) => A324058(i) = A324058(j) for all i, j >= 0.

The programs for A336320, there is no canonical definition to state claims against.
-/

/-! ## A336320.P2095683484603238507

`A294859(round(sqrt(n²+1))^(val(n+1, 2)%2+1))`
-/

namespace A336320.P2095683484603238507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294859 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) ^ (SequenceMachineLib.valuation (n + 1) 2 % 2 + 1)).toNat

end

end A336320.P2095683484603238507

/-! ## A336320.P5065257382454297717

`A369257(A297011(n))`
-/

namespace A336320.P5065257382454297717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369257 (A297011 n).toNat

end

end A336320.P5065257382454297717

/-! ## A336320.P3381361754622466102

`A284569(record[A338409(n)])`
-/

namespace A336320.P3381361754622466102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284569 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A336320.P3381361754622466102

/-! ## A336320.P9447259263578487923

`A126307(A032465(n+1))`
-/

namespace A336320.P9447259263578487923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126307 (A032465 (n + 1)).toNat

end

end A336320.P9447259263578487923

/-! ## A336320.P13121012835754806801

`A099563(A023393(n)+2)`
-/

namespace A336320.P13121012835754806801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A023393 n + 2).toNat

end

end A336320.P13121012835754806801

/-!
# A336322: a(n) = A225546(A122111(n)).

The programs for A336322, there is no canonical definition to state claims against.
-/

/-! ## A336322.P14301973122754111799

`A334860(A253566(n+1))`
-/

namespace A336322.P14301973122754111799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334860 (A253566 (n + 1)).toNat

end

end A336322.P14301973122754111799

/-! ## A336322.P10340049892205021638

`A122111(A336321(A122111(n+1)))`
-/

namespace A336322.P10340049892205021638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A336321 (A122111 (n + 1)).toNat).toNat

end

end A336322.P10340049892205021638

/-! ## A336322.P6170377110046908681

`∑{d}[A336321(A279352(n+1)), A329034(#)]`
-/

namespace A336322.P6170377110046908681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336321 (A279352 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329034 d

end

end A336322.P6170377110046908681

/-! ## A336322.P3898879626625642403

`A253563(A156552(A336321(A253563(A156552(n+1)))))`
-/

namespace A336322.P3898879626625642403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (A156552 (A336321 (A253563 (A156552 (n + 1)).toNat).toNat).toNat).toNat

end

end A336322.P3898879626625642403

/-! ## A336322.P14342397236091625196

`A334866(A253564(n+1))`
-/

namespace A336322.P14342397236091625196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334866 (A253564 (n + 1)).toNat

end

end A336322.P14342397236091625196

/-!
# A336323: Numbers composite(n) such that gcd(n,composite(n)) > 1.

The programs for A336323, the canonical program `A336323.P14905383246300325352` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336323 has offset 1).

The definition of A336323 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A334880, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336323.P14905383246300325352

`A002808(A334880(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A336323

/-- `A002808(A334880(n+1))` -/
def P14905383246300325352.Spec : Prop :=
  ∀ n, P14905383246300325352.a n = A336323 (n + 1)

theorem P14905383246300325352.correct : P14905383246300325352.Spec := by
  intro n
  simp only [A336323, Nat.add_sub_cancel]

end A336323

/-! ## A336323.P6394030254160773456

`A002808(lt[1, gcd(n, A018252(n+1))])`
-/

namespace A336323.P6394030254160773456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A018252 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A336323.P6394030254160773456

namespace A336323

/-- `A002808(lt[1, gcd(n, A018252(n+1))])` -/
def P6394030254160773456.Spec : Prop :=
  ∀ n, P6394030254160773456.a n = A336323 (n + 1)

end A336323

/-! ## A336323.P10057981247394788252

`A002808(lt[1, gcd(n+1, A002808(n+1))]+1)`
-/

namespace A336323.P10057981247394788252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A002808 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A336323.P10057981247394788252

namespace A336323

/-- `A002808(lt[1, gcd(n+1, A002808(n+1))]+1)` -/
def P10057981247394788252.Spec : Prop :=
  ∀ n, P10057981247394788252.a n = A336323 (n + 1)

end A336323

/-! ## A336323.P5381740317209071750

`A018252(A334880(n+1)+1)`
-/

namespace A336323.P5381740317209071750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A334880 (n + 1) + 1).toNat

end

end A336323.P5381740317209071750

namespace A336323

/-- `A018252(A334880(n+1)+1)` -/
def P5381740317209071750.Spec : Prop :=
  ∀ n, P5381740317209071750.a n = A336323 (n + 1)

end A336323

/-! ## A336323.P5536178394508356283

`A141468(A334880(n+1)+2)`
-/

namespace A336323.P5536178394508356283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A334880 (n + 1) + 2).toNat

end

end A336323.P5536178394508356283

namespace A336323

/-- `A141468(A334880(n+1)+2)` -/
def P5536178394508356283.Spec : Prop :=
  ∀ n, P5536178394508356283.a n = A336323 (n + 1)

end A336323

/-! ## A336323.P12691060272607932145

`A002808(eq[A137925(n+1)%(n+1), A137925(n+1)]+1)`
-/

namespace A336323.P12691060272607932145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137925 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A336323.P12691060272607932145

namespace A336323

/-- `A002808(eq[A137925(n+1)%(n+1), A137925(n+1)]+1)` -/
def P12691060272607932145.Spec : Prop :=
  ∀ n, P12691060272607932145.a n = A336323 (n + 1)

end A336323

/-!
# A336324: The power sandwiches sequence, version 1 (see Comments lines for definition).

The programs for A336324, there is no canonical definition to state claims against.
-/

/-! ## A336324.P16095634890352018262

`A056538(A198447(n+1))`
-/

namespace A336324.P16095634890352018262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (A198447 (n + 1)).toNat

end

end A336324.P16095634890352018262

/-!
# A336328: Primitive triples for integer-sided triangles with A < B < C < 2*Pi/3 and such that FA + FB + FC is an integer where F is the Fermat point of the triangle.

The programs for A336328, there is no canonical definition to state claims against.
-/

/-! ## A336328.P13690717164217797461

`A352360(n+1)/A351477(A008620(n))`
-/

namespace A336328.P13690717164217797461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352360 (n + 1) : ℚ) / (A351477 (A008620 n).toNat : ℚ)

end

end A336328.P13690717164217797461

/-!
# A336329: When F is the Fermat point of a triangle ABC, this sequence lists the integer total distances FA + FB + FC corresponding to primitive triangles in A336328.

The programs for A336329, there is no canonical definition to state claims against.
-/

/-! ## A336329.P14740989860335560002

`(A351801(n+1)+A351803(n+1)+A351802(n+1))/A351477(n+1)`
-/

namespace A336329.P14740989860335560002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351801 (n + 1) + (A351803 (n + 1) + A351802 (n + 1)) : ℚ) / (A351477 (n + 1) : ℚ)

end

end A336329.P14740989860335560002

/-! ## A336329.P6951202793446152755

`A351476(n+1)/A351477(n+1)`
-/

namespace A336329.P6951202793446152755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351476 (n + 1) : ℚ) / (A351477 (n + 1) : ℚ)

end

end A336329.P6951202793446152755

/-! ## A336329.P5277830169831917161

`A336331(n+1)/A352360(3*n+2)*A351476(n+1)`
-/

namespace A336329.P5277830169831917161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336331 (n + 1) : ℚ) / (A352360 (3 * n + 2) : ℚ) * (A351476 (n + 1) : ℚ)

end

end A336329.P5277830169831917161

/-! ## A336329.P5312333062344636875

`A351476(n+1)/floor(A352360(3*(n+1))/A336332(n+1))`
-/

namespace A336329.P5312333062344636875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351476 (n + 1) : ℚ) / (⌊(A352360 (3 * (n + 1)) : ℚ) / (A336332 (n + 1) : ℚ)⌋ : ℚ)

end

end A336329.P5312333062344636875

/-! ## A336329.P8460235451621845523

`A351476(n+1)/floor(A352360(3*n+1)/A336330(n+1))`
-/

namespace A336329.P8460235451621845523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351476 (n + 1) : ℚ) / (⌊(A352360 (3 * n + 1) : ℚ) / (A336330 (n + 1) : ℚ)⌋ : ℚ)

end

end A336329.P8460235451621845523

/-!
# A336330: Smallest side of primitive integer-sided triangles with A < B < C < 2*Pi/3 and such that FA + FB + FC is an integer where F is the Fermat point of the triangle.

The programs for A336330, there is no canonical definition to state claims against.
-/

/-! ## A336330.P13412789492439174013

`A336333(n+1)-(A336332(n+1)+A336331(n+1))`
-/

namespace A336330.P13412789492439174013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336333 (n + 1) - (A336332 (n + 1) + A336331 (n + 1))

end

end A336330.P13412789492439174013

/-! ## A336330.P16326005209410669142

`A336328(3*n+1)`
-/

namespace A336330.P16326005209410669142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336328 (3 * n + 1)

end

end A336330.P16326005209410669142

/-! ## A336330.P5922785231487033521

`A336328(A016777(n))+char[18]`
-/

namespace A336330.P5922785231487033521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336328 (A016777 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A336330.P5922785231487033521

/-! ## A336330.P7229034253909370362

`∑{d}[A336328(A016777(n)), A000010(#)]`
-/

namespace A336330.P7229034253909370362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336328 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A336330.P7229034253909370362

/-! ## A336330.P5619757668764400226

`A007318(∑[n])*A336328(A016777(n))`
-/

namespace A336330.P5619757668764400226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A336328 (A016777 n).toNat

end

end A336330.P5619757668764400226

/-!
# A336331: Middle side of primitive integer-sided triangles with A < B < C < 2*Pi/3 and such that FA + FB + FC is an integer where F is the Fermat point of the triangle.

The programs for A336331, there is no canonical definition to state claims against.
-/

/-! ## A336331.P11162479394242760034

`A336333(n+1)-(A336332(n+1)+A336330(n+1))`
-/

namespace A336331.P11162479394242760034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336333 (n + 1) - (A336332 (n + 1) + A336330 (n + 1))

end

end A336331.P11162479394242760034

/-! ## A336331.P1441833725516587850

`A336328(3*n+2)`
-/

namespace A336331.P1441833725516587850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336328 (3 * n + 2)

end

end A336331.P1441833725516587850

/-! ## A336331.P17677954531638834408

`A336328(A016789(n))+char[18]`
-/

namespace A336331.P17677954531638834408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336328 (A016789 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A336331.P17677954531638834408

/-! ## A336331.P5831595344432584362

`∑{d}[A336328(A016789(n)), A000010(#)]`
-/

namespace A336331.P5831595344432584362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336328 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A336331.P5831595344432584362

/-! ## A336331.P7612793285014401156

`A336328(A016789(n))%A020230(n+1)`
-/

namespace A336331.P7612793285014401156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336328 (A016789 n).toNat) (A020230 (n + 1))

end

end A336331.P7612793285014401156

/-!
# A336332: Largest side, in increasing order, of primitive integer-sided triangles with A < B < C < 2*Pi/3 and such that FA + FB + FC is an integer where F is the Fermat point of the triangle.

The programs for A336332, there is no canonical definition to state claims against.
-/

/-! ## A336332.P6462378205123342034

`A336333(n+1)-(A336331(n+1)+A336330(n+1))`
-/

namespace A336332.P6462378205123342034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336333 (n + 1) - (A336331 (n + 1) + A336330 (n + 1))

end

end A336332.P6462378205123342034

/-! ## A336332.P9764574508057680303

`A336328(3*(n+1))`
-/

namespace A336332.P9764574508057680303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336328 (3 * (n + 1))

end

end A336332.P9764574508057680303

/-! ## A336332.P8374668210910547562

`record[A336328(A103877(n+1))]`
-/

namespace A336332.P8374668210910547562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336328 (A103877 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336332.P8374668210910547562

/-! ## A336332.P16622523893500648527

`record[A336328(A113655(n+1))]`
-/

namespace A336332.P16622523893500648527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336328 (A113655 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336332.P16622523893500648527

/-! ## A336332.P14083904869861029838

`record[A336328(A166517(n)+1)]`
-/

namespace A336332.P14083904869861029838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336328 (A166517 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336332.P14083904869861029838

/-!
# A336333: Perimeter of primitive integer-sided triangles with A < B < C < 2*Pi/3 and such that FA + FB + FC is an integer where F is the Fermat point of the triangle.

The programs for A336333, there is no canonical definition to state claims against.
-/

/-! ## A336333.P8926917167633767057

`A336330(n+1)+A336331(n+1)+A336332(n+1)`
-/

namespace A336333.P8926917167633767057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336330 (n + 1) + A336331 (n + 1) + A336332 (n + 1)

end

end A336333.P8926917167633767057

/-! ## A336333.P16190885821845323664

`A336328(3*(n+1))+A336331(n+1)+A336330(n+1)`
-/

namespace A336333.P16190885821845323664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336328 (3 * (n + 1)) + (A336331 (n + 1) + A336330 (n + 1))

end

end A336333.P16190885821845323664

/-! ## A336333.P17153229125106692277

`A336328(3*n+1)+A336332(n+1)+A336331(n+1)`
-/

namespace A336333.P17153229125106692277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336328 (3 * n + 1) + (A336332 (n + 1) + A336331 (n + 1))

end

end A336333.P17153229125106692277

/-! ## A336333.P5260497243760214194

`A336328(3*n+2)+A336332(n+1)+A336330(n+1)`
-/

namespace A336333.P5260497243760214194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336328 (3 * n + 2) + (A336332 (n + 1) + A336330 (n + 1))

end

end A336333.P5260497243760214194

/-! ## A336333.P9047953675399348256

`A336328(3*(n+1))+A336331(n+1)+A336328(3*n+1)`
-/

namespace A336333.P9047953675399348256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336328 (3 * (n + 1)) + (A336331 (n + 1) + A336328 (3 * n + 1))

end

end A336333.P9047953675399348256

/-!
# A336336: Squared distance from start of a point moving in a square spiral.

The programs for A336336, the canonical program `A336336.P15098443827968725045` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336336 has offset 1).

The definition of A336336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336336.P15098443827968725045

`A174344(n+1)²+A268038(n+1)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A336336

/-- `A174344(n+1)²+A268038(n+1)²` -/
def P15098443827968725045.Spec : Prop :=
  ∀ n, P15098443827968725045.a n = A336336 (n + 1)

theorem P15098443827968725045.correct : P15098443827968725045.Spec := by
  intro n
  simp only [A336336, Nat.add_sub_cancel]

end A336336

/-! ## A336336.P9150262689252809522

`A174344(n+1)²+A274923(n+1)²`
-/

namespace A336336.P9150262689252809522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) ^ 2 + A274923 (n + 1) ^ 2

end

end A336336.P9150262689252809522

namespace A336336

/-- `A174344(n+1)²+A274923(n+1)²` -/
def P9150262689252809522.Spec : Prop :=
  ∀ n, P9150262689252809522.a n = A336336 (n + 1)

end A336336

/-! ## A336336.P17027290568895277061

`A345440(n)-A268038(n+1)²`
-/

namespace A336336.P17027290568895277061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345440 n - A268038 (n + 1) ^ 2

end

end A336336.P17027290568895277061

namespace A336336

/-- `A345440(n)-A268038(n+1)²` -/
def P17027290568895277061.Spec : Prop :=
  ∀ n, P17027290568895277061.a n = A336336 (n + 1)

end A336336

/-! ## A336336.P6139411201471985182

`A345440(n)-A274923(n+1)²`
-/

namespace A336336.P6139411201471985182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345440 n - A274923 (n + 1) ^ 2

end

end A336336.P6139411201471985182

namespace A336336

/-- `A345440(n)-A274923(n+1)²` -/
def P6139411201471985182.Spec : Prop :=
  ∀ n, P6139411201471985182.a n = A336336 (n + 1)

end A336336

/-! ## A336336.P11001656546499439084

`A296030(2*n+1)²+A296030(2*(n+1))²`
-/

namespace A336336.P11001656546499439084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * n + 1) ^ 2 + A296030 (2 * (n + 1)) ^ 2

end

end A336336.P11001656546499439084

namespace A336336

/-- `A296030(2*n+1)²+A296030(2*(n+1))²` -/
def P11001656546499439084.Spec : Prop :=
  ∀ n, P11001656546499439084.a n = A336336 (n + 1)

end A336336

/-! ## A336336.P127286766930960754

`A345440(n)+A268038(n+1)*A274923(n+1)`
-/

namespace A336336.P127286766930960754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345440 n + A268038 (n + 1) * A274923 (n + 1)

end

end A336336.P127286766930960754

namespace A336336

/-- `A345440(n)+A268038(n+1)*A274923(n+1)` -/
def P127286766930960754.Spec : Prop :=
  ∀ n, P127286766930960754.a n = A336336 (n + 1)

end A336336

/-! ## A336336.P8939060591844658765

`A174344(A020703(n+1))²+A174344(n+1)²`
-/

namespace A336336.P8939060591844658765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A020703 (n + 1)).toNat ^ 2 + A174344 (n + 1) ^ 2

end

end A336336.P8939060591844658765

namespace A336336

/-- `A174344(A020703(n+1))²+A174344(n+1)²` -/
def P8939060591844658765.Spec : Prop :=
  ∀ n, P8939060591844658765.a n = A336336 (n + 1)

end A336336

/-! ## A336336.P16924141979330695798

`A274923(A020703(n+1))²+A274923(n+1)²`
-/

namespace A336336.P16924141979330695798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A020703 (n + 1)).toNat ^ 2 + A274923 (n + 1) ^ 2

end

end A336336.P16924141979330695798

namespace A336336

/-- `A274923(A020703(n+1))²+A274923(n+1)²` -/
def P16924141979330695798.Spec : Prop :=
  ∀ n, P16924141979330695798.a n = A336336 (n + 1)

end A336336

/-! ## A336336.P9683402086675437181

`A174344(n+1)²+A305576(A308081(n+1))²`
-/

namespace A336336.P9683402086675437181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) ^ 2 + A305576 (A308081 (n + 1)).toNat ^ 2

end

end A336336.P9683402086675437181

namespace A336336

/-- `A174344(n+1)²+A305576(A308081(n+1))²` -/
def P9683402086675437181.Spec : Prop :=
  ∀ n, P9683402086675437181.a n = A336336 (n + 1)

end A336336

/-! ## A336336.P12991744492306671845

`A274923(n+1)²+A305575(A308081(n+1))²`
-/

namespace A336336.P12991744492306671845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (n + 1) ^ 2 + A305575 (A308081 (n + 1)).toNat ^ 2

end

end A336336.P12991744492306671845

namespace A336336

/-- `A274923(n+1)²+A305575(A308081(n+1))²` -/
def P12991744492306671845.Spec : Prop :=
  ∀ n, P12991744492306671845.a n = A336336 (n + 1)

end A336336

/-! ## A336336.P10509829369835487257

`A274923(A164386(n+1))²+A274923(n+1)²`
-/

namespace A336336.P10509829369835487257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A164386 (n + 1)).toNat ^ 2 + A274923 (n + 1) ^ 2

end

end A336336.P10509829369835487257

namespace A336336

/-- `A274923(A164386(n+1))²+A274923(n+1)²` -/
def P10509829369835487257.Spec : Prop :=
  ∀ n, P10509829369835487257.a n = A336336 (n + 1)

end A336336

/-! ## A336336.P6887294008739579083

`A274923(A000037(n+1))²+A274923(n+1)²`
-/

namespace A336336.P6887294008739579083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A000037 (n + 1)).toNat ^ 2 + A274923 (n + 1) ^ 2

end

end A336336.P6887294008739579083

namespace A336336

/-- `A274923(A000037(n+1))²+A274923(n+1)²` -/
def P6887294008739579083.Spec : Prop :=
  ∀ n, P6887294008739579083.a n = A336336 (n + 1)

end A336336

/-! ## A336336.P4138233805753341160

`A274923(A135668(n+1))²+A274923(n+1)²`
-/

namespace A336336.P4138233805753341160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A135668 (n + 1)).toNat ^ 2 + A274923 (n + 1) ^ 2

end

end A336336.P4138233805753341160

namespace A336336

/-- `A274923(A135668(n+1))²+A274923(n+1)²` -/
def P4138233805753341160.Spec : Prop :=
  ∀ n, P4138233805753341160.a n = A336336 (n + 1)

end A336336

/-! ## A336336.P10842845560484166981

`A359058(2*n)/2`
-/

namespace A336336.P10842845560484166981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359058 (2 * n) : ℚ) / 2

end

end A336336.P10842845560484166981

namespace A336336

/-- `A359058(2*n)/2` -/
def P10842845560484166981.Spec : Prop :=
  ∀ n, P10842845560484166981.a n = (A336336 (n + 1) : ℚ)

end A336336

/-! ## A336336.P6609890207352677515

`A142150(A359058(2*n))`
-/

namespace A336336.P6609890207352677515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A359058 (2 * n)).toNat

end

end A336336.P6609890207352677515

namespace A336336

/-- `A142150(A359058(2*n))` -/
def P6609890207352677515.Spec : Prop :=
  ∀ n, P6609890207352677515.a n = A336336 (n + 1)

end A336336

/-! ## A336336.P735545126275335508

`A174344(A090915(n+1))²+A174344(n+1)²`
-/

namespace A336336.P735545126275335508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A090915 (n + 1)).toNat ^ 2 + A174344 (n + 1) ^ 2

end

end A336336.P735545126275335508

namespace A336336

/-- `A174344(A090915(n+1))²+A174344(n+1)²` -/
def P735545126275335508.Spec : Prop :=
  ∀ n, P735545126275335508.a n = A336336 (n + 1)

end A336336

/-! ## A336336.P2991250402355780788

`A174344(A090925(n+1))²+A174344(n+1)²`
-/

namespace A336336.P2991250402355780788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A090925 (n + 1)).toNat ^ 2 + A174344 (n + 1) ^ 2

end

end A336336.P2991250402355780788

namespace A336336

/-- `A174344(A090925(n+1))²+A174344(n+1)²` -/
def P2991250402355780788.Spec : Prop :=
  ∀ n, P2991250402355780788.a n = A336336 (n + 1)

end A336336

/-! ## A336336.P11812959352135670202

`A174344(A090929(n+1))²+A174344(n+1)²`
-/

namespace A336336.P11812959352135670202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A090929 (n + 1)).toNat ^ 2 + A174344 (n + 1) ^ 2

end

end A336336.P11812959352135670202

namespace A336336

/-- `A174344(A090929(n+1))²+A174344(n+1)²` -/
def P11812959352135670202.Spec : Prop :=
  ∀ n, P11812959352135670202.a n = A336336 (n + 1)

end A336336

/-! ## A336336.P14704061635853971595

`A268038(A090915(n+1))²+A268038(n+1)²`
-/

namespace A336336.P14704061635853971595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268038 (A090915 (n + 1)).toNat ^ 2 + A268038 (n + 1) ^ 2

end

end A336336.P14704061635853971595

namespace A336336

/-- `A268038(A090915(n+1))²+A268038(n+1)²` -/
def P14704061635853971595.Spec : Prop :=
  ∀ n, P14704061635853971595.a n = A336336 (n + 1)

end A336336

/-! ## A336336.P10300767186428751990

`A268038(A090929(n+1))²+A268038(n+1)²`
-/

namespace A336336.P10300767186428751990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268038 (A090929 (n + 1)).toNat ^ 2 + A268038 (n + 1) ^ 2

end

end A336336.P10300767186428751990

namespace A336336

/-- `A268038(A090929(n+1))²+A268038(n+1)²` -/
def P10300767186428751990.Spec : Prop :=
  ∀ n, P10300767186428751990.a n = A336336 (n + 1)

end A336336

/-!
# A336337: Total number of records over all length n ternary words (words on alphabet {0,1,2}).

The programs for A336337, the canonical program `A336337.P4241099609193399421` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336337 has offset 0).

The definition of A336337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336337.P9038830301579292666

`∑[ogf((3x-6x^2+2x^3)/(1-5x+6x^2))]`
-/

namespace A336337.P9038830301579292666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -6, 2] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336337.P9038830301579292666

namespace A336337

/-- `∑[ogf((3x-6x^2+2x^3)/(1-5x+6x^2))]` -/
def P9038830301579292666.Spec : Prop :=
  ∀ n, P9038830301579292666.a n = A336337 n

end A336337

/-! ## A336337.P4241099609193399421

`∑[3*a(n-1)]-2^n` with `a(0)=1, a(1)=4, a(2)=11`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A336337

/-- `∑[3*a(n-1)]-2^n` -/
def P4241099609193399421.Spec : Prop :=
  ∀ n, P4241099609193399421.a n = A336337 n

theorem P4241099609193399421.correct : P4241099609193399421.Spec := by
  intro n
  simp only [A336337]

end A336337

/-! ## A336337.P696964427857034649

`floor(3^(n-1))+∑[3^n]-2^n`
-/

namespace A336337.P696964427857034649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ))

end

end A336337.P696964427857034649

namespace A336337

/-- `floor(3^(n-1))+∑[3^n]-2^n` -/
def P696964427857034649.Spec : Prop :=
  ∀ n, P696964427857034649.a n = A336337 n

end A336337

/-! ## A336337.P15708940728468726828

`abs(A000079(n)-A052909(n))`
-/

namespace A336337.P15708940728468726828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A052909 n|

end

end A336337.P15708940728468726828

namespace A336337

/-- `abs(A000079(n)-A052909(n))` -/
def P15708940728468726828.Spec : Prop :=
  ∀ n, P15708940728468726828.a n = A336337 n

end A336337

/-!
# A336338: Numbers k such that gcd(k, composite(k)) is even.

The programs for A336338, there is no canonical definition to state claims against.
-/

/-! ## A336338.P13532268373030042558

`2*A336340(n+1)`
-/

namespace A336338.P13532268373030042558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A336340 (n + 1)

end

end A336338.P13532268373030042558

/-! ## A336338.P15622108241698366171

`∩[2*n, A065896(n+2)]`
-/

namespace A336338.P15622108241698366171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336338.P15622108241698366171

/-! ## A336338.P5332199552877857113

`comp[or(n%2, A066246(n+1))]`
-/

namespace A336338.P5332199552877857113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A066246 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A336338.P5332199552877857113

/-! ## A336338.P8536517321810159758

`eq[1, and(1, (n+1)*A073425(n))]`
-/

namespace A336338.P8536517321810159758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n + 1 : ℤ) * A073425 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336338.P8536517321810159758

/-! ## A336338.P15114712056861403084

`∩[2*n, A026238(2*(n+2))]`
-/

namespace A336338.P15114712056861403084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (2 * (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336338.P15114712056861403084

/-! ## A336338.P175495218209715821

`∩[A065855(2*(n+2)), 2*n]`
-/

namespace A336338.P175495218209715821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (2 * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A336338.P175495218209715821

/-! ## A336338.P7557144508072235426

`2*eq[0, A018252(2*n+1)%2]`
-/

namespace A336338.P7557144508072235426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (2 * n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336338.P7557144508072235426

/-! ## A336338.P18443559839630138301

`∩[2*(n+1), A066136(2*(n+1)+2)]`
-/

namespace A336338.P18443559839630138301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066136 (2 * (n + 1) + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336338.P18443559839630138301

/-! ## A336338.P1249184788826015295

`A004277(A336340(n+1))`
-/

namespace A336338.P1249184788826015295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A336340 (n + 1)).toNat

end

end A336338.P1249184788826015295

/-! ## A336338.P3580475444564363207

`A026238(A336339(n+1))`
-/

namespace A336338.P3580475444564363207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A336339 (n + 1)).toNat

end

end A336338.P3580475444564363207

/-!
# A336339: Numbers composite(n) such that gcd(n,composite(n)) is even.

The programs for A336339, the canonical program `A336339.P14265531034149347687` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336339 has offset 1).

The definition of A336339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336339.P13846425855212457693

`A057812(2*n+3)`
-/

namespace A336339.P13846425855212457693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057812 (2 * n + 3)

end

end A336339.P13846425855212457693

namespace A336339

/-- `A057812(2*n+3)` -/
def P13846425855212457693.Spec : Prop :=
  ∀ n, P13846425855212457693.a n = A336339 (n + 1)

end A336339

/-! ## A336339.P15931177350714398742

`A057812(n+2+n)+1`
-/

namespace A336339.P15931177350714398742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057812 (n + 2 + n) + 1

end

end A336339.P15931177350714398742

namespace A336339

/-- `A057812(n+2+n)+1` -/
def P15931177350714398742.Spec : Prop :=
  ∀ n, P15931177350714398742.a n = A336339 (n + 1)

end A336339

/-! ## A336339.P10265267976079332427

`∩[2*n, A099862(n+1)]`
-/

namespace A336339.P10265267976079332427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336339.P10265267976079332427

namespace A336339

/-- `∩[2*n, A099862(n+1)]` -/
def P10265267976079332427.Spec : Prop :=
  ∀ n, (P10265267976079332427.a n : ℤ) = A336339 (n + 1)

end A336339

/-! ## A336339.P15729288685514321289

`∩[2*n, A377994(n+3)]`
-/

namespace A336339.P15729288685514321289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377994 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336339.P15729288685514321289

namespace A336339

/-- `∩[2*n, A377994(n+3)]` -/
def P15729288685514321289.Spec : Prop :=
  ∀ n, (P15729288685514321289.a n : ℤ) = A336339 (n + 1)

end A336339

/-! ## A336339.P12555497968794922686

`∩[2*n, A018252(Δ[n²])]`
-/

namespace A336339.P12555497968794922686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336339.P12555497968794922686

namespace A336339

/-- `∩[2*n, A018252(Δ[n²])]` -/
def P12555497968794922686.Spec : Prop :=
  ∀ n, (P12555497968794922686.a n : ℤ) = A336339 (n + 1)

end A336339

/-! ## A336339.P12651586542689775434

`record[2*A160180(2*(n+1))]`
-/

namespace A336339.P12651586542689775434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160180 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336339.P12651586542689775434

namespace A336339

/-- `record[2*A160180(2*(n+1))]` -/
def P12651586542689775434.Spec : Prop :=
  ∀ n, P12651586542689775434.a n = A336339 (n + 1)

end A336339

/-! ## A336339.P3313299970007443369

`∩[A018252(comp[2*n]), 2*n]`
-/

namespace A336339.P3313299970007443369
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = x) n

end

end A336339.P3313299970007443369

namespace A336339

/-- `∩[A018252(comp[2*n]), 2*n]` -/
def P3313299970007443369.Spec : Prop :=
  ∀ n, (P3313299970007443369.a n : ℤ) = A336339 (n + 1)

end A336339

/-! ## A336339.P11845064043509105435

`∩[A080759(2*n+1), 2*n]`
-/

namespace A336339.P11845064043509105435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080759 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A336339.P11845064043509105435

namespace A336339

/-- `∩[A080759(2*n+1), 2*n]` -/
def P11845064043509105435.Spec : Prop :=
  ∀ n, (P11845064043509105435.a n : ℤ) = A336339 (n + 1)

end A336339

/-! ## A336339.P14147437362090297329

`∩[A171581(2*n+1), 2*n]`
-/

namespace A336339.P14147437362090297329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A336339.P14147437362090297329

namespace A336339

/-- `∩[A171581(2*n+1), 2*n]` -/
def P14147437362090297329.Spec : Prop :=
  ∀ n, (P14147437362090297329.a n : ℤ) = A336339 (n + 1)

end A336339

/-! ## A336339.P12298608690325499120

`filter[A020739(n), A071986(#)]`
-/

namespace A336339.P12298608690325499120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071986 (f1 j).toNat = 1) n)

end

end A336339.P12298608690325499120

namespace A336339

/-- `filter[A020739(n), A071986(#)]` -/
def P12298608690325499120.Spec : Prop :=
  ∀ n, P12298608690325499120.a n = A336339 (n + 1)

end A336339

/-! ## A336339.P14265531034149347687

`filter[A020739(n), A131378(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A336339

/-- `filter[A020739(n), A131378(#)]` -/
def P14265531034149347687.Spec : Prop :=
  ∀ n, P14265531034149347687.a n = A336339 (n + 1)

theorem P14265531034149347687.correct : P14265531034149347687.Spec := by
  intro n
  simp only [A336339, Nat.add_sub_cancel]

end A336339

/-! ## A336339.P16472276188796549663

`filter[A092535(n), A071986(#)]`
-/

namespace A336339.P16472276188796549663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071986 (f1 j).toNat = 1) n)

end

end A336339.P16472276188796549663

namespace A336339

/-- `filter[A092535(n), A071986(#)]` -/
def P16472276188796549663.Spec : Prop :=
  ∀ n, P16472276188796549663.a n = A336339 (n + 1)

end A336339

/-! ## A336339.P2379637142069785772

`filter[A103517(n), A071986(#)]`
-/

namespace A336339.P2379637142069785772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071986 (f1 j).toNat = 1) n)

end

end A336339.P2379637142069785772

namespace A336339

/-- `filter[A103517(n), A071986(#)]` -/
def P2379637142069785772.Spec : Prop :=
  ∀ n, P2379637142069785772.a n = A336339 (n + 1)

end A336339

/-! ## A336339.P17699995527499696197

`filter[A092535(n), A131378(#)]`
-/

namespace A336339.P17699995527499696197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131378 (f1 j).toNat = 1) n)

end

end A336339.P17699995527499696197

namespace A336339

/-- `filter[A092535(n), A131378(#)]` -/
def P17699995527499696197.Spec : Prop :=
  ∀ n, P17699995527499696197.a n = A336339 (n + 1)

end A336339

/-! ## A336339.P2344762448812324394

`filter[A103517(n), A131378(#)]`
-/

namespace A336339.P2344762448812324394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131378 (f1 j).toNat = 1) n)

end

end A336339.P2344762448812324394

namespace A336339

/-- `filter[A103517(n), A131378(#)]` -/
def P2344762448812324394.Spec : Prop :=
  ∀ n, P2344762448812324394.a n = A336339 (n + 1)

end A336339

/-! ## A336339.P12269096108354620416

`eq[A134746(n), A215029(n)]`
-/

namespace A336339.P12269096108354620416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134746 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336339.P12269096108354620416

namespace A336339

/-- `eq[A134746(n), A215029(n)]` -/
def P12269096108354620416.Spec : Prop :=
  ∀ n, (P12269096108354620416.a n : ℤ) = A336339 (n + 1)

end A336339

/-! ## A336339.P15944478516860692952

`eq[A131377(n), A218858(n)]`
-/

namespace A336339.P15944478516860692952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218858 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336339.P15944478516860692952

namespace A336339

/-- `eq[A131377(n), A218858(n)]` -/
def P15944478516860692952.Spec : Prop :=
  ∀ n, (P15944478516860692952.a n : ℤ) = A336339 (n + 1)

end A336339

/-! ## A336339.P13404402847543703230

`eq[A131377(n), A218859(n)]`
-/

namespace A336339.P13404402847543703230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336339.P13404402847543703230

namespace A336339

/-- `eq[A131377(n), A218859(n)]` -/
def P13404402847543703230.Spec : Prop :=
  ∀ n, (P13404402847543703230.a n : ℤ) = A336339 (n + 1)

end A336339

/-! ## A336339.P13539353627762222884

`eq[A210067(n), A215029(n)]`
-/

namespace A336339.P13539353627762222884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210067 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336339.P13539353627762222884

namespace A336339

/-- `eq[A210067(n), A215029(n)]` -/
def P13539353627762222884.Spec : Prop :=
  ∀ n, (P13539353627762222884.a n : ℤ) = A336339 (n + 1)

end A336339

/-! ## A336339.P6373222503434774307

`eq[A215029(n), A266220(n)]`
-/

namespace A336339.P6373222503434774307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336339.P6373222503434774307

namespace A336339

/-- `eq[A215029(n), A266220(n)]` -/
def P6373222503434774307.Spec : Prop :=
  ∀ n, (P6373222503434774307.a n : ℤ) = A336339 (n + 1)

end A336339

/-!
# A336340: a(n) = (1/2)A336338(n).

The programs for A336340, there is no canonical definition to state claims against.
-/

/-! ## A336340.P200413512937628750

`1/2*A336338(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336340.P200413512937628750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A336338 (n + 1) : ℚ)

end

end A336340.P200413512937628750

/-! ## A336340.P1759798567467350425

`eq[0, A181923(2*n+1)]`
-/

namespace A336340.P1759798567467350425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181923 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336340.P1759798567467350425

/-! ## A336340.P6951233933411114286

`eq[2, A056608(2*(n+1))]+1`
-/

namespace A336340.P6951233933411114286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336340.P6951233933411114286

/-! ## A336340.P12316200251068901938

`eq[2, A073813(2*(n+1))]+1`
-/

namespace A336340.P12316200251068901938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073813 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336340.P12316200251068901938

/-! ## A336340.P9668641170701484667

`lt[2, A130882(2*(n+1))]+1`
-/

namespace A336340.P9668641170701484667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130882 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336340.P9668641170701484667

/-! ## A336340.P16876107185148367574

`lt[A181923(2*n+3), 1]+1`
-/

namespace A336340.P16876107185148367574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181923 (2 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336340.P16876107185148367574

/-! ## A336340.P2288819646825806687

`lt[A056608(2*n+2), 3]+1`
-/

namespace A336340.P2288819646825806687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (2 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336340.P2288819646825806687

/-! ## A336340.P6547739153178839790

`eq[0, A018252(2*n+1)%2]`
-/

namespace A336340.P6547739153178839790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (2 * n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336340.P6547739153178839790

/-! ## A336340.P10743804463039010382

`lt[1, gcd(16, A141468(2*(n+1)))]`
-/

namespace A336340.P10743804463039010382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 16 (A141468 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336340.P10743804463039010382

/-! ## A336340.P3381892569707818126

`lt[A018252(xor(1, 2*n))%2, 1]`
-/

namespace A336340.P3381892569707818126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (Nat.xor 1 (2 * n))) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A336340.P3381892569707818126

/-!
# A336341: a(n) = (1/2)A336339(n).

The programs for A336341, the canonical program `A336341.P15542008784946552541` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336341 has offset 1).

The definition of A336341 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336339, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336341.P15542008784946552541

`1/2*A336339(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A336341

/-- `1/2*A336339(n+1)` -/
def P15542008784946552541.Spec : Prop :=
  ∀ n, P15542008784946552541.a n = (A336341 (n + 1) : ℚ)

end A336341

/-! ## A336341.P6891680247362085651

`A336339(n+1)/2`
-/

namespace A336341.P6891680247362085651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336339 (n + 1) : ℚ) / 2

end

end A336341.P6891680247362085651

namespace A336341

/-- `A336339(n+1)/2` -/
def P6891680247362085651.Spec : Prop :=
  ∀ n, P6891680247362085651.a n = (A336341 (n + 1) : ℚ)

end A336341

/-! ## A336341.P5120663940476069999

`record[A160180(2*(n+1))]`
-/

namespace A336341.P5120663940476069999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160180 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336341.P5120663940476069999

namespace A336341

/-- `record[A160180(2*(n+1))]` -/
def P5120663940476069999.Spec : Prop :=
  ∀ n, P5120663940476069999.a n = A336341 (n + 1)

end A336341

/-! ## A336341.P16252589805141242082

`A057812(2*n+3)/2`
-/

namespace A336341.P16252589805141242082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057812 (2 * n + 3) : ℚ) / 2

end

end A336341.P16252589805141242082

namespace A336341

/-- `A057812(2*n+3)/2` -/
def P16252589805141242082.Spec : Prop :=
  ∀ n, P16252589805141242082.a n = (A336341 (n + 1) : ℚ)

end A336341

/-! ## A336341.P4456525866876943691

`eq[1, A224714(n+1)%2]`
-/

namespace A336341.P4456525866876943691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224714 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336341.P4456525866876943691

namespace A336341

/-- `eq[1, A224714(n+1)%2]` -/
def P4456525866876943691.Spec : Prop :=
  ∀ n, (P4456525866876943691.a n : ℤ) = A336341 (n + 1)

end A336341

/-! ## A336341.P575197652438905335

`eq[0, A215029(2*n)^n]`
-/

namespace A336341.P575197652438905335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (2 * n) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336341.P575197652438905335

namespace A336341

/-- `eq[0, A215029(2*n)^n]` -/
def P575197652438905335.Spec : Prop :=
  ∀ n, (P575197652438905335.a n : ℤ) = A336341 (n + 1)

end A336341

/-! ## A336341.P15225099978625265694

`record[A306353(2*(n+1))+1]`
-/

namespace A336341.P15225099978625265694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306353 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336341.P15225099978625265694

namespace A336341

/-- `record[A306353(2*(n+1))+1]` -/
def P15225099978625265694.Spec : Prop :=
  ∀ n, P15225099978625265694.a n = A336341 (n + 1)

end A336341

/-! ## A336341.P10582477695504460565

`round(A057812(n+2+n)/2)`
-/

namespace A336341.P10582477695504460565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A057812 (n + 2 + n) : ℚ) / 2)

end

end A336341.P10582477695504460565

namespace A336341

/-- `round(A057812(n+2+n)/2)` -/
def P10582477695504460565.Spec : Prop :=
  ∀ n, P10582477695504460565.a n = A336341 (n + 1)

end A336341

/-! ## A336341.P14937910466232287756

`eq[1, A071986(2*n+1)]+1`
-/

namespace A336341.P14937910466232287756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071986 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336341.P14937910466232287756

namespace A336341

/-- `eq[1, A071986(2*n+1)]+1` -/
def P14937910466232287756.Spec : Prop :=
  ∀ n, (P14937910466232287756.a n : ℤ) = A336341 (n + 1)

end A336341

/-! ## A336341.P7975932756276123579

`∩[A018252(2*n+1), 2*n]/2`
-/

namespace A336341.P7975932756276123579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℚ) / 2

end

end A336341.P7975932756276123579

namespace A336341

/-- `∩[A018252(2*n+1), 2*n]/2` -/
def P7975932756276123579.Spec : Prop :=
  ∀ n, P7975932756276123579.a n = (A336341 (n + 1) : ℚ)

end A336341

/-!
# A336344: Number of k's, 1 <= k <= n where gcd(n,k) = 1, such that the continued fraction for n^2/k^2 has twice as many elements as the continued fraction for n/k.

The programs for A336344, there is no canonical definition to state claims against.
-/

/-! ## A336344.P6068367451531832099

`∑{d}[n+1, A008683(#)*A336090((n+1)/#)]`
-/

namespace A336344.P6068367451531832099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A336090 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336344.P6068367451531832099

/-! ## A336344.P13839950967371872212

`∑{d}[n+1, A069158(#)*A336090((n+1)/#)]`
-/

namespace A336344.P13839950967371872212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069158 d * A336090 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336344.P13839950967371872212

/-! ## A336344.P8935266389073118501

`∑{d}[n+1, A253206(#)*A336090((n+1)/#)]`
-/

namespace A336344.P8935266389073118501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A253206 d * A336090 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336344.P8935266389073118501

/-! ## A336344.P6618815346190168241

`and(A101323(n+1), A336090(n+1))`
-/

namespace A336344.P6618815346190168241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101323 (n + 1)) (A336090 (n + 1))

end

end A336344.P6618815346190168241

/-! ## A336344.P3205769536873247571

`A101323(n+1)%A000005(A152440(n))`
-/

namespace A336344.P3205769536873247571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101323 (n + 1)) (A000005 (A152440 n).toNat)

end

end A336344.P3205769536873247571

/-!
# A336345: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. exp(2 * (exp(x) - Sum_{j=0..k} x^j/j!)).

The programs for A336345, there is no canonical definition to state claims against.
-/

/-! ## A336345.P6994305556871803693

`C(A094785(n+1), A151359(A187556(n)))`
-/

namespace A336345.P6994305556871803693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094785 (n + 1)).toNat (A151359 (A187556 n).toNat).toNat

end

end A336345.P6994305556871803693

/-! ## A336345.P10672192373045226780

`gcd(A014152(A087732(n+1)), A094785(n+1))`
-/

namespace A336345.P10672192373045226780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014152 (A087732 (n + 1)).toNat) (A094785 (n + 1))

end

end A336345.P10672192373045226780

/-!
# A336346: Lexicographically earliest sequence of positive integers such that for any distinct m and n, Product_{k = m+1-a(m)..m} a(k) <> Product_{k = n+1-a(n)..n} a(k).

The programs for A336346, there is no canonical definition to state claims against.
-/

/-! ## A336346.P870122131732633902

`A081373(p?[A169803(n)]+1)`
-/

namespace A336346.P870122131732633902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A336346.P870122131732633902

/-! ## A336346.P9020012354864445960

`A193330(A022369(n)-A062086(n+1))`
-/

namespace A336346.P9020012354864445960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A022369 n - A062086 (n + 1)).toNat

end

end A336346.P9020012354864445960

/-! ## A336346.P6676585131439055286

`A338283(n+1)/A057523(A000602(n))`
-/

namespace A336346.P6676585131439055286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338283 (n + 1) : ℚ) / (A057523 (A000602 n).toNat : ℚ)

end

end A336346.P6676585131439055286

/-! ## A336346.P8674185671245715097

`gcd(A000292(A151769(n)), A338283(n+1))`
-/

namespace A336346.P8674185671245715097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000292 (A151769 n).toNat) (A338283 (n + 1))

end

end A336346.P8674185671245715097

/-! ## A336346.P1526860686304642491

`A050432(A000959(n+1)*A002313(n+1))`
-/

namespace A336346.P1526860686304642491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050432 (A000959 (n + 1) * A002313 (n + 1)).toNat

end

end A336346.P1526860686304642491

/-!
# A336350: Square spiral of distinct nonnegative integers constructed by greedy algorithm, such that two terms on the same row or on the same column have no common one bit in their binary representations.

The programs for A336350, there is no canonical definition to state claims against.
-/

/-! ## A336350.P8783904151910542732

`and(A029907(n), A112759(A001008(n+1)))`
-/

namespace A336350.P8783904151910542732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029907 n) (A112759 (A001008 (n + 1)).toNat)

end

end A336350.P8783904151910542732

/-!
# A336351: Number of cyclic arrangements of S = {1,2,...,6n - 3} such that any three neighbors can be reordered in an arithmetic progression.

The programs for A336351, there is no canonical definition to state claims against.
-/

/-! ## A336351.P1041762473286300690

`A257639(A008619(A000073(n)))`
-/

namespace A336351.P1041762473286300690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A008619 (A000073 n).toNat).toNat

end

end A336351.P1041762473286300690

/-!
# A336352: Number of prime divisors of sigma(n) that are larger than the largest prime factor of n; a(1) = 0.

The programs for A336352, the canonical program `A336352.P7812126103694574368` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336352 has offset 1).

The definition of A336352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336352.P7812126103694574368

`val(A108951(A080398(n+1)), A117366(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A336352

/-- `val(A108951(A080398(n+1)), A117366(n+1))` -/
def P7812126103694574368.Spec : Prop :=
  ∀ n, (P7812126103694574368.a n : ℤ) = A336352 (n + 1)

theorem P7812126103694574368.correct : P7812126103694574368.Spec := by
  intro n
  simp only [A336352, Nat.add_sub_cancel]

end A336352

/-! ## A336352.P8053910800838834956

`A319988(n+1)+A319988(A001752(n))`
-/

namespace A336352.P8053910800838834956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319988 (n + 1) + A319988 (A001752 n).toNat

end

end A336352.P8053910800838834956

namespace A336352

/-- `A319988(n+1)+A319988(A001752(n))` -/
def P8053910800838834956.Spec : Prop :=
  ∀ n, P8053910800838834956.a n = A336352 (n + 1)

end A336352

/-! ## A336352.P4632148023541068004

`A005087(gcd(A005069(n+1), A075498(n+1)))`
-/

namespace A336352.P4632148023541068004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (Int.gcd (A005069 (n + 1)) (A075498 (n + 1)))

end

end A336352.P4632148023541068004

namespace A336352

/-- `A005087(gcd(A005069(n+1), A075498(n+1)))` -/
def P4632148023541068004.Spec : Prop :=
  ∀ n, P4632148023541068004.a n = A336352 (n + 1)

end A336352

/-! ## A336352.P888022607110148240

`A155043(A051916(2*(n+2)))%A335852(n+1)`
-/

namespace A336352.P888022607110148240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155043 (A051916 (2 * (n + 2))).toNat) (A335852 (n + 1))

end

end A336352.P888022607110148240

namespace A336352

/-- `A155043(A051916(2*(n+2)))%A335852(n+1)` -/
def P888022607110148240.Spec : Prop :=
  ∀ n, P888022607110148240.a n = A336352 (n + 1)

end A336352

/-! ## A336352.P4429739614740887903

`A375706(A006899(n+1))-A008966(n+1)`
-/

namespace A336352.P4429739614740887903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375706 (A006899 (n + 1)).toNat - A008966 (n + 1)

end

end A336352.P4429739614740887903

namespace A336352

/-- `A375706(A006899(n+1))-A008966(n+1)` -/
def P4429739614740887903.Spec : Prop :=
  ∀ n, P4429739614740887903.a n = A336352 (n + 1)

end A336352

/-!
# A336353: Numbers k such that sigma(k) does not have any prime factor larger than the largest prime factor of k.

The programs for A336353, the canonical program `A336353.P14621937372288122129` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336353 has offset 1).

The definition of A336353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336353.P14621937372288122129

`eq[0, A336352(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A336353

/-- `eq[0, A336352(n+1)]+1` -/
def P14621937372288122129.Spec : Prop :=
  ∀ n, (P14621937372288122129.a n : ℤ) = A336353 (n + 1)

theorem P14621937372288122129.correct : P14621937372288122129.Spec := by
  intro n
  simp only [A336353, Nat.add_sub_cancel]

end A336353

/-! ## A336353.P17166584656485615231

`lt[A336352(abs(1-n)+1), 1]`
-/

namespace A336353.P17166584656485615231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336352 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A336353.P17166584656485615231

namespace A336353

/-- `lt[A336352(abs(1-n)+1), 1]` -/
def P17166584656485615231.Spec : Prop :=
  ∀ n, (P17166584656485615231.a n : ℤ) = A336353 (n + 1)

end A336353

/-! ## A336353.P718043827111081785

`lt[A000005(n+1)*A336352(n+1), 2]+1`
-/

namespace A336353.P718043827111081785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A336352 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336353.P718043827111081785

namespace A336353

/-- `lt[A000005(n+1)*A336352(n+1), 2]+1` -/
def P718043827111081785.Spec : Prop :=
  ∀ n, (P718043827111081785.a n : ℤ) = A336353 (n + 1)

end A336353

/-! ## A336353.P1858077957461455043

`lt[A000009(n)*A336352(n+1), 1]+1`
-/

namespace A336353.P1858077957461455043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A336352 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336353.P1858077957461455043

namespace A336353

/-- `lt[A000009(n)*A336352(n+1), 1]+1` -/
def P1858077957461455043.Spec : Prop :=
  ∀ n, (P1858077957461455043.a n : ℤ) = A336353 (n + 1)

end A336353

/-! ## A336353.P7768324527938560494

`lt[A055642(n)*A336352(n+1), 1]+1`
-/

namespace A336353.P7768324527938560494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A336352 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336353.P7768324527938560494

namespace A336353

/-- `lt[A055642(n)*A336352(n+1), 1]+1` -/
def P7768324527938560494.Spec : Prop :=
  ∀ n, (P7768324527938560494.a n : ℤ) = A336353 (n + 1)

end A336353

/-! ## A336353.P16460947829266405805

`lt[A079210(n)*A336352(n+1), 1]+1`
-/

namespace A336353.P16460947829266405805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079210 n * A336352 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336353.P16460947829266405805

namespace A336353

/-- `lt[A079210(n)*A336352(n+1), 1]+1` -/
def P16460947829266405805.Spec : Prop :=
  ∀ n, (P16460947829266405805.a n : ℤ) = A336353 (n + 1)

end A336353

/-! ## A336353.P5784417131419375827

`lt[A000040(n+1)*A336352(n+1), 2]+1`
-/

namespace A336353.P5784417131419375827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A336352 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336353.P5784417131419375827

namespace A336353

/-- `lt[A000040(n+1)*A336352(n+1), 2]+1` -/
def P5784417131419375827.Spec : Prop :=
  ∀ n, (P5784417131419375827.a n : ℤ) = A336353 (n + 1)

end A336353

/-!
# A336354: Numbers k such that p^2 divides k, where p = A006530(k), the largest prime factor of k, and sigma(k) does not have any prime factor larger than p.

The programs for A336354, there is no canonical definition to state claims against.
-/

/-! ## A336354.P16598884542900779367

`record[A309788(A043483(n+1))]`
-/

namespace A336354.P16598884542900779367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309788 (A043483 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336354.P16598884542900779367

/-! ## A336354.P10150466049464644947

`A005072(A005032(n))*A086736(n+1)`
-/

namespace A336354.P10150466049464644947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005072 (A005032 n).toNat * A086736 (n + 1)

end

end A336354.P10150466049464644947

/-! ## A336354.P3448722956231003856

`A005072(A005032(n))*A095381(n+1)`
-/

namespace A336354.P3448722956231003856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005072 (A005032 n).toNat * A095381 (n + 1)

end

end A336354.P3448722956231003856

/-!
# A336355: Characteristic function of A336357, numbers k for which A001221(A000203(k)) < A001221(k).

The programs for A336355, the canonical program `A336355.P3645618290858971034` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336355 has offset 1).

The definition of A336355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336355.P3645618290858971034

`char[A336357(n+1)-1]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A336355

/-- `char[A336357(n+1)-1]` -/
def P3645618290858971034.Spec : Prop :=
  ∀ n, (P3645618290858971034.a n : ℤ) = A336355 (n + 1)

theorem P3645618290858971034.correct : P3645618290858971034.Spec := by
  intro n
  simp only [A336355, Nat.add_sub_cancel]

end A336355

/-! ## A336355.P18175218873730271800

`char[A138153(A336357(n+1))]`
-/

namespace A336355.P18175218873730271800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138153 (A336357 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A336355.P18175218873730271800

namespace A336355

/-- `char[A138153(A336357(n+1))]` -/
def P18175218873730271800.Spec : Prop :=
  ∀ n, (P18175218873730271800.a n : ℤ) = A336355 (n + 1)

end A336355

/-! ## A336355.P3034241575542884781

`A011655(A034444(∑{d}[n+1, #])%A034444(n+1))`
-/

namespace A336355.P3034241575542884781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (Int.tmod (A034444 (∑ d ∈ Nat.divisors (f1 n), d)) (A034444 (n + 1))).toNat

end

end A336355.P3034241575542884781

namespace A336355

/-- `A011655(A034444(∑{d}[n+1, #])%A034444(n+1))` -/
def P3034241575542884781.Spec : Prop :=
  ∀ n, P3034241575542884781.a n = A336355 (n + 1)

end A336355

/-! ## A336355.P7672406623507415605

`val(A034444(n+1), A060594(A239050(n+1)))`
-/

namespace A336355.P7672406623507415605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A034444 (n + 1)).toNat (A060594 (A239050 (n + 1)).toNat).toNat

end

end A336355.P7672406623507415605

namespace A336355

/-- `val(A034444(n+1), A060594(A239050(n+1)))` -/
def P7672406623507415605.Spec : Prop :=
  ∀ n, (P7672406623507415605.a n : ℤ) = A336355 (n + 1)

end A336355

/-! ## A336355.P9494057483480560407

`C(A344713(n+1), A083399(A074400(n+1)))`
-/

namespace A336355.P9494057483480560407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A344713 (n + 1)).toNat (A083399 (A074400 (n + 1)).toNat).toNat

end

end A336355.P9494057483480560407

namespace A336355

/-- `C(A344713(n+1), A083399(A074400(n+1)))` -/
def P9494057483480560407.Spec : Prop :=
  ∀ n, (P9494057483480560407.a n : ℤ) = A336355 (n + 1)

end A336355

/-! ## A336355.P4956648498008370100

`round(A055212(n+1)/A336643(A072861(n+1)))`
-/

namespace A336355.P4956648498008370100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055212 (n + 1) : ℚ) / (A336643 (A072861 (n + 1)).toNat : ℚ))

end

end A336355.P4956648498008370100

namespace A336355

/-- `round(A055212(n+1)/A336643(A072861(n+1)))` -/
def P4956648498008370100.Spec : Prop :=
  ∀ n, P4956648498008370100.a n = A336355 (n + 1)

end A336355

/-! ## A336355.P16893014996149568036

`val(A322365(A337176(n+1)), A337194(n+1))`
-/

namespace A336355.P16893014996149568036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A322365 (A337176 (n + 1)).toNat).toNat (A337194 (n + 1)).toNat

end

end A336355.P16893014996149568036

namespace A336355

/-- `val(A322365(A337176(n+1)), A337194(n+1))` -/
def P16893014996149568036.Spec : Prop :=
  ∀ n, (P16893014996149568036.a n : ℤ) = A336355 (n + 1)

end A336355

/-! ## A336355.P5813630336912791402

`val(A296133(n+1), A008472(A060866(n+1)))`
-/

namespace A336355.P5813630336912791402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A296133 (n + 1)).toNat (A008472 (A060866 (n + 1)).toNat).toNat

end

end A336355.P5813630336912791402

namespace A336355

/-- `val(A296133(n+1), A008472(A060866(n+1)))` -/
def P5813630336912791402.Spec : Prop :=
  ∀ n, (P5813630336912791402.a n : ℤ) = A336355 (n + 1)

end A336355

/-! ## A336355.P2592316557368979891

`A316867(A060086(2*n+1)+A060086(n+1))`
-/

namespace A336355.P2592316557368979891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A060086 (2 * n + 1) + A060086 (n + 1)).toNat

end

end A336355.P2592316557368979891

namespace A336355

/-- `A316867(A060086(2*n+1)+A060086(n+1))` -/
def P2592316557368979891.Spec : Prop :=
  ∀ n, P2592316557368979891.a n = A336355 (n + 1)

end A336355

/-! ## A336355.P7248998123328042977

`A124300(n+1)*A124300(A292627(n)+2)`
-/

namespace A336355.P7248998123328042977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124300 (n + 1) * A124300 (A292627 n + 2).toNat

end

end A336355.P7248998123328042977

namespace A336355

/-- `A124300(n+1)*A124300(A292627(n)+2)` -/
def P7248998123328042977.Spec : Prop :=
  ∀ n, P7248998123328042977.a n = A336355 (n + 1)

end A336355

/-!
# A336356: Characteristic function of A336359, numbers k for which A001222(A000203(k)) < A001222(k).

The programs for A336356, the canonical program `A336356.P2428490399522676751` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336356 has offset 1).

The definition of A336356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336356.P116085745946043083

`char[A336359(n+1)-1]`
-/

namespace A336356.P116085745946043083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336359 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A336356.P116085745946043083

namespace A336356

/-- `char[A336359(n+1)-1]` -/
def P116085745946043083.Spec : Prop :=
  ∀ n, (P116085745946043083.a n : ℤ) = A336356 (n + 1)

end A336356

/-! ## A336356.P886256155819209856

`ceil(-(A336386(n+1)/A000010(n+1)))`
-/

namespace A336356.P886256155819209856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-((A336386 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ))⌉

end

end A336356.P886256155819209856

namespace A336356

/-- `ceil(-(A336386(n+1)/A000010(n+1)))` -/
def P886256155819209856.Spec : Prop :=
  ∀ n, P886256155819209856.a n = A336356 (n + 1)

end A336356

/-! ## A336356.P6609923359540593739

`ceil(-(A336386(n+1)/A000040(n+1)))`
-/

namespace A336356.P6609923359540593739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-((A336386 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ))⌉

end

end A336356.P6609923359540593739

namespace A336356

/-- `ceil(-(A336386(n+1)/A000040(n+1)))` -/
def P6609923359540593739.Spec : Prop :=
  ∀ n, P6609923359540593739.a n = A336356 (n + 1)

end A336356

/-! ## A336356.P12240489511336168500

`A001222(ceil((n+1)/(A336386(n+1)+n+1)))`
-/

namespace A336356.P12240489511336168500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈(n + 1 : ℚ) / (A336386 (n + 1) + (n + 1 : ℤ) : ℚ)⌉.toNat

end

end A336356.P12240489511336168500

namespace A336356

/-- `A001222(ceil((n+1)/(A336386(n+1)+n+1)))` -/
def P12240489511336168500.Spec : Prop :=
  ∀ n, P12240489511336168500.a n = A336356 (n + 1)

end A336356

/-! ## A336356.P2505428958488934319

`A058063(ceil((n+1)/(A336386(n+1)+n+1)))`
-/

namespace A336356.P2505428958488934319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058063 ⌈(n + 1 : ℚ) / (A336386 (n + 1) + (n + 1 : ℤ) : ℚ)⌉.toNat

end

end A336356.P2505428958488934319

namespace A336356

/-- `A058063(ceil((n+1)/(A336386(n+1)+n+1)))` -/
def P2505428958488934319.Spec : Prop :=
  ∀ n, P2505428958488934319.a n = A336356 (n + 1)

end A336356

/-! ## A336356.P2428490399522676751

`ceil((A001222(n+1)-A058063(n+1))/(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A336356

/-- `ceil((A001222(n+1)-A058063(n+1))/(n+1))` -/
def P2428490399522676751.Spec : Prop :=
  ∀ n, P2428490399522676751.a n = A336356 (n + 1)

theorem P2428490399522676751.correct : P2428490399522676751.Spec := by
  intro n
  simp only [A336356, Nat.add_sub_cancel]

end A336356

/-! ## A336356.P5759302306658385244

`ceil(-(A336386(n+1)/A000041(n)))`
-/

namespace A336356.P5759302306658385244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-((A336386 (n + 1) : ℚ) / (A000041 n : ℚ))⌉

end

end A336356.P5759302306658385244

namespace A336356

/-- `ceil(-(A336386(n+1)/A000041(n)))` -/
def P5759302306658385244.Spec : Prop :=
  ∀ n, P5759302306658385244.a n = A336356 (n + 1)

end A336356

/-! ## A336356.P12725806387050258502

`(A165824(A000203(n+1))%A165824(n+1))%2`
-/

namespace A336356.P12725806387050258502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A165824 (A000203 (n + 1)).toNat) (A165824 (n + 1))) 2

end

end A336356.P12725806387050258502

namespace A336356

/-- `(A165824(A000203(n+1))%A165824(n+1))%2` -/
def P12725806387050258502.Spec : Prop :=
  ∀ n, P12725806387050258502.a n = A336356 (n + 1)

end A336356

/-! ## A336356.P14683812636799397317

`val(A086568(n+1), A086568(2*A000203(n+1)))`
-/

namespace A336356.P14683812636799397317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A086568 (n + 1)).toNat (A086568 (2 * A000203 (n + 1)).toNat).toNat

end

end A336356.P14683812636799397317

namespace A336356

/-- `val(A086568(n+1), A086568(2*A000203(n+1)))` -/
def P14683812636799397317.Spec : Prop :=
  ∀ n, (P14683812636799397317.a n : ℤ) = A336356 (n + 1)

end A336356

/-! ## A336356.P8087646011168803510

`and(A102354(n+1), A209631(n))`
-/

namespace A336356.P8087646011168803510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102354 (n + 1)) (A209631 n)

end

end A336356.P8087646011168803510

namespace A336356

/-- `and(A102354(n+1), A209631(n))` -/
def P8087646011168803510.Spec : Prop :=
  ∀ n, P8087646011168803510.a n = A336356 (n + 1)

end A336356

/-!
# A336357: Numbers k such that sigma(k) has fewer distinct prime factors than k.

The programs for A336357, the canonical program `A336357.P4795503866043282121` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336357 has offset 1).

The definition of A336357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2418 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336357.P17855794733520714107

`lt[0, A336355(n+1)]+1`
-/

namespace A336357.P17855794733520714107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336355 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336357.P17855794733520714107

namespace A336357

/-- `lt[0, A336355(n+1)]+1` -/
def P17855794733520714107.Spec : Prop :=
  ∀ n, (P17855794733520714107.a n : ℤ) = A336357 (n + 1)

end A336357

/-! ## A336357.P4795503866043282121

`lt[A001221(A000203(n+1)), A001221(n+1)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A336357

/-- `lt[A001221(A000203(n+1)), A001221(n+1)]+1` -/
def P4795503866043282121.Spec : Prop :=
  ∀ n, (P4795503866043282121.a n : ℤ) = A336357 (n + 1)

theorem P4795503866043282121.correct : P4795503866043282121.Spec := by
  intro n
  simp only [A336357, Nat.add_sub_cancel]

end A336357

/-! ## A336357.P8715500989621691543

`filter[A093642(n+1), A336355(#)]`
-/

namespace A336357.P8715500989621691543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336355 (f1 j).toNat = 1) n)

end

end A336357.P8715500989621691543

namespace A336357

/-- `filter[A093642(n+1), A336355(#)]` -/
def P8715500989621691543.Spec : Prop :=
  ∀ n, P8715500989621691543.a n = A336357 (n + 1)

end A336357

/-! ## A336357.P1225438550657742287

`filter[A105441(n+1), A336355(#)]`
-/

namespace A336357.P1225438550657742287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336355 (f1 j).toNat = 1) n)

end

end A336357.P1225438550657742287

namespace A336357

/-- `filter[A105441(n+1), A336355(#)]` -/
def P1225438550657742287.Spec : Prop :=
  ∀ n, P1225438550657742287.a n = A336357 (n + 1)

end A336357

/-! ## A336357.P881600317663113599

`filter[A347202(n+1), A336355(#)]`
-/

namespace A336357.P881600317663113599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336355 (f1 j).toNat = 1) n)

end

end A336357.P881600317663113599

namespace A336357

/-- `filter[A347202(n+1), A336355(#)]` -/
def P881600317663113599.Spec : Prop :=
  ∀ n, P881600317663113599.a n = A336357 (n + 1)

end A336357

/-! ## A336357.P9620313158040368097

`filter[A342082(n+1), A336355(#)]`
-/

namespace A336357.P9620313158040368097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336355 (f1 j).toNat = 1) n)

end

end A336357.P9620313158040368097

namespace A336357

/-- `filter[A342082(n+1), A336355(#)]` -/
def P9620313158040368097.Spec : Prop :=
  ∀ n, P9620313158040368097.a n = A336357 (n + 1)

end A336357

/-! ## A336357.P12666375084320170241

`filter[A080402(n+1), A336355(#)]`
-/

namespace A336357.P12666375084320170241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336355 (f1 j).toNat = 1) n)

end

end A336357.P12666375084320170241

namespace A336357

/-- `filter[A080402(n+1), A336355(#)]` -/
def P12666375084320170241.Spec : Prop :=
  ∀ n, P12666375084320170241.a n = A336357 (n + 1)

end A336357

/-! ## A336357.P15248696241601856897

`filter[A346608(n+1), A336355(#)]`
-/

namespace A336357.P15248696241601856897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336355 (f1 j).toNat = 1) n)

end

end A336357.P15248696241601856897

namespace A336357

/-- `filter[A346608(n+1), A336355(#)]` -/
def P15248696241601856897.Spec : Prop :=
  ∀ n, P15248696241601856897.a n = A336357 (n + 1)

end A336357

/-! ## A336357.P17726904351094004089

`filter[A033949(n+2), A336355(#)]`
-/

namespace A336357.P17726904351094004089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336355 (f1 j).toNat = 1) n)

end

end A336357.P17726904351094004089

namespace A336357

/-- `filter[A033949(n+2), A336355(#)]` -/
def P17726904351094004089.Spec : Prop :=
  ∀ n, P17726904351094004089.a n = A336357 (n + 1)

end A336357

/-! ## A336357.P16866647012747544899

`filter[A138593(n+2), A336355(#)]`
-/

namespace A336357.P16866647012747544899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336355 (f1 j).toNat = 1) n)

end

end A336357.P16866647012747544899

namespace A336357

/-- `filter[A138593(n+2), A336355(#)]` -/
def P16866647012747544899.Spec : Prop :=
  ∀ n, P16866647012747544899.a n = A336357 (n + 1)

end A336357

/-! ## A336357.P13806971350623111543

`filter[A069900(n+1), A336355(#)]`
-/

namespace A336357.P13806971350623111543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336355 (f1 j).toNat = 1) n)

end

end A336357.P13806971350623111543

namespace A336357

/-- `filter[A069900(n+1), A336355(#)]` -/
def P13806971350623111543.Spec : Prop :=
  ∀ n, P13806971350623111543.a n = A336357 (n + 1)

end A336357

/-! ## A336357.P11459793608792597524

`lt[0, A336355(A028310(n))]`
-/

namespace A336357.P11459793608792597524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336355 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A336357.P11459793608792597524

namespace A336357

/-- `lt[0, A336355(A028310(n))]` -/
def P11459793608792597524.Spec : Prop :=
  ∀ n, (P11459793608792597524.a n : ℤ) = A336357 (n + 1)

end A336357

/-! ## A336357.P1072815960899311065

`A061767(eq[1, A336355(n+1)])`
-/

namespace A336357.P1072815960899311065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336357.P1072815960899311065

namespace A336357

/-- `A061767(eq[1, A336355(n+1)])` -/
def P1072815960899311065.Spec : Prop :=
  ∀ n, P1072815960899311065.a n = A336357 (n + 1)

end A336357

/-! ## A336357.P6846465486814001341

`eq[1, A336355(A138153(n+1))]`
-/

namespace A336357.P6846465486814001341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336355 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336357.P6846465486814001341

namespace A336357

/-- `eq[1, A336355(A138153(n+1))]` -/
def P6846465486814001341.Spec : Prop :=
  ∀ n, (P6846465486814001341.a n : ℤ) = A336357 (n + 1)

end A336357

/-! ## A336357.P389830578273128442

`A153152(eq[1, A336355(n+1)])`
-/

namespace A336357.P389830578273128442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336357.P389830578273128442

namespace A336357

/-- `A153152(eq[1, A336355(n+1)])` -/
def P389830578273128442.Spec : Prop :=
  ∀ n, P389830578273128442.a n = A336357 (n + 1)

end A336357

/-!
# A336358: Sigma(k) has at least the same number of distinct prime factors as k.

The programs for A336358, there is no canonical definition to state claims against.
-/

/-! ## A336358.P2937011629467786088

`eq[0, A336355(n+1)]+1`
-/

namespace A336358.P2937011629467786088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336355 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336358.P2937011629467786088

/-! ## A336358.P17155957881520069955

`comp[A336357(n+1)-1]+1`
-/

namespace A336358.P17155957881520069955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336357 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A336358.P17155957881520069955

/-! ## A336358.P6007196260638644534

`comp[(n+2)*A336355(n+2)]`
-/

namespace A336358.P6007196260638644534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A336355 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A336358.P6007196260638644534

/-! ## A336358.P13187149199572727725

`lt[n*A336355(A028310(n)), n]`
-/

namespace A336358.P13187149199572727725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A336355 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A336358.P13187149199572727725

/-! ## A336358.P9095577452594483280

`comp[A336357(n+1)*A336546(n+1)]`
-/

namespace A336358.P9095577452594483280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336357 (n + 1) * A336546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A336358.P9095577452594483280

/-! ## A336358.P2820163878450418712

`record[xor(A000027(n+1), A336355(n+1))]`
-/

namespace A336358.P2820163878450418712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000027 (n + 1)) (A336355 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336358.P2820163878450418712

/-! ## A336358.P16174118228931403402

`record[xor(A262530(n+1), A336355(n+1))]`
-/

namespace A336358.P16174118228931403402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A262530 (n + 1)) (A336355 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336358.P16174118228931403402

/-! ## A336358.P16621340579480001765

`lt[A336355(n+1), sqrt(2)/A000040(n+1)]+1`
-/

namespace A336358.P16621340579480001765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336355 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) / (A000040 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A336358.P16621340579480001765

/-!
# A336359: Numbers k for which bigomega(sigma(k)) < bigomega(k), where bigomega (A001222) gives the number of prime factors with multiplicity, and sigma (A000203) gives the sum of divisors.

The programs for A336359, the canonical program `A336359.P10978522768383864296` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336359 has offset 1).

The definition of A336359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2014 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336359.P10978522768383864296

`record[(n+4)*A336356(n+4)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A336359

/-- `record[(n+4)*A336356(n+4)]` -/
def P10978522768383864296.Spec : Prop :=
  ∀ n, P10978522768383864296.a n = A336359 (n + 1)

theorem P10978522768383864296.correct : P10978522768383864296.Spec := by
  intro n
  simp only [A336359, Nat.add_sub_cancel]

end A336359

/-! ## A336359.P7875571015955723514

`eq[1, A336356(n+1)]+1`
-/

namespace A336359.P7875571015955723514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336359.P7875571015955723514

namespace A336359

/-- `eq[1, A336356(n+1)]+1` -/
def P7875571015955723514.Spec : Prop :=
  ∀ n, (P7875571015955723514.a n : ℤ) = A336359 (n + 1)

end A336359

/-! ## A336359.P9026776546132328520

`lt[A001222(A000203(n+1)), A001222(n+1)]+1`
-/

namespace A336359.P9026776546132328520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336359.P9026776546132328520

namespace A336359

/-- `lt[A001222(A000203(n+1)), A001222(n+1)]+1` -/
def P9026776546132328520.Spec : Prop :=
  ∀ n, (P9026776546132328520.a n : ℤ) = A336359 (n + 1)

end A336359

/-! ## A336359.P16715808131517034892

`filter[A082377(n+1), A336356(#)]`
-/

namespace A336359.P16715808131517034892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336356 (f1 j).toNat = 1) n)

end

end A336359.P16715808131517034892

namespace A336359

/-- `filter[A082377(n+1), A336356(#)]` -/
def P16715808131517034892.Spec : Prop :=
  ∀ n, P16715808131517034892.a n = A336359 (n + 1)

end A336359

/-! ## A336359.P12884644741691954211

`filter[A013929(n+1), A336356(#)]`
-/

namespace A336359.P12884644741691954211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336356 (f1 j).toNat = 1) n)

end

end A336359.P12884644741691954211

namespace A336359

/-- `filter[A013929(n+1), A336356(#)]` -/
def P12884644741691954211.Spec : Prop :=
  ∀ n, P12884644741691954211.a n = A336359 (n + 1)

end A336359

/-! ## A336359.P2933194058197443931

`filter[A162966(n+1), A336356(#)]`
-/

namespace A336359.P2933194058197443931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336356 (f1 j).toNat = 1) n)

end

end A336359.P2933194058197443931

namespace A336359

/-- `filter[A162966(n+1), A336356(#)]` -/
def P2933194058197443931.Spec : Prop :=
  ∀ n, P2933194058197443931.a n = A336359 (n + 1)

end A336359

/-! ## A336359.P1839525762420592487

`filter[A354360(n+1), A336356(#)]`
-/

namespace A336359.P1839525762420592487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336356 (f1 j).toNat = 1) n)

end

end A336359.P1839525762420592487

namespace A336359

/-- `filter[A354360(n+1), A336356(#)]` -/
def P1839525762420592487.Spec : Prop :=
  ∀ n, P1839525762420592487.a n = A336359 (n + 1)

end A336359

/-! ## A336359.P13104129852709752060

`filter[A389462(n+1), A336356(#)]`
-/

namespace A336359.P13104129852709752060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336356 (f1 j).toNat = 1) n)

end

end A336359.P13104129852709752060

namespace A336359

/-- `filter[A389462(n+1), A336356(#)]` -/
def P13104129852709752060.Spec : Prop :=
  ∀ n, P13104129852709752060.a n = A336359 (n + 1)

end A336359

/-! ## A336359.P2691107815158436834

`filter[A366288(n+2), A336356(#)]`
-/

namespace A336359.P2691107815158436834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366288 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336356 (f1 j).toNat = 1) n)

end

end A336359.P2691107815158436834

namespace A336359

/-- `filter[A366288(n+2), A336356(#)]` -/
def P2691107815158436834.Spec : Prop :=
  ∀ n, P2691107815158436834.a n = A336359 (n + 1)

end A336359

/-! ## A336359.P13925986920357687895

`filter[A289553(n+1), A336356(#)]`
-/

namespace A336359.P13925986920357687895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336356 (f1 j).toNat = 1) n)

end

end A336359.P13925986920357687895

namespace A336359

/-- `filter[A289553(n+1), A336356(#)]` -/
def P13925986920357687895.Spec : Prop :=
  ∀ n, P13925986920357687895.a n = A336359 (n + 1)

end A336359

/-! ## A336359.P4676189052203045467

`filter[A088609(n+1), A336356(#)]`
-/

namespace A336359.P4676189052203045467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336356 (f1 j).toNat = 1) n)

end

end A336359.P4676189052203045467

namespace A336359

/-- `filter[A088609(n+1), A336356(#)]` -/
def P4676189052203045467.Spec : Prop :=
  ∀ n, P4676189052203045467.a n = A336359 (n + 1)

end A336359

/-! ## A336359.P6408126625223446248

`filter[A316350(n+1), A336356(#)]`
-/

namespace A336359.P6408126625223446248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336356 (f1 j).toNat = 1) n)

end

end A336359.P6408126625223446248

namespace A336359

/-- `filter[A316350(n+1), A336356(#)]` -/
def P6408126625223446248.Spec : Prop :=
  ∀ n, P6408126625223446248.a n = A336359 (n + 1)

end A336359

/-! ## A336359.P5506657879485568070

`filter[A060679(n+1), A336356(#)]`
-/

namespace A336359.P5506657879485568070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336356 (f1 j).toNat = 1) n)

end

end A336359.P5506657879485568070

namespace A336359

/-- `filter[A060679(n+1), A336356(#)]` -/
def P5506657879485568070.Spec : Prop :=
  ∀ n, P5506657879485568070.a n = A336359 (n + 1)

end A336359

/-! ## A336359.P14678659712240131884

`filter[A174891(n+1), A336356(#)]`
-/

namespace A336359.P14678659712240131884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336356 (f1 j).toNat = 1) n)

end

end A336359.P14678659712240131884

namespace A336359

/-- `filter[A174891(n+1), A336356(#)]` -/
def P14678659712240131884.Spec : Prop :=
  ∀ n, P14678659712240131884.a n = A336359 (n + 1)

end A336359

/-! ## A336359.P13399923637684436242

`filter[A179891(n+1), A336356(#)]`
-/

namespace A336359.P13399923637684436242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336356 (f1 j).toNat = 1) n)

end

end A336359.P13399923637684436242

namespace A336359

/-- `filter[A179891(n+1), A336356(#)]` -/
def P13399923637684436242.Spec : Prop :=
  ∀ n, P13399923637684436242.a n = A336359 (n + 1)

end A336359

/-! ## A336359.P17547464983906660853

`filter[A049692(n+1), A336356(#)]`
-/

namespace A336359.P17547464983906660853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336356 (f1 j).toNat = 1) n)

end

end A336359.P17547464983906660853

namespace A336359

/-- `filter[A049692(n+1), A336356(#)]` -/
def P17547464983906660853.Spec : Prop :=
  ∀ n, P17547464983906660853.a n = A336359 (n + 1)

end A336359

/-! ## A336359.P6170420856676086674

`filter[A075378(2*n+1), A336356(#)]`
-/

namespace A336359.P6170420856676086674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336356 (f1 j).toNat = 1) n)

end

end A336359.P6170420856676086674

namespace A336359

/-- `filter[A075378(2*n+1), A336356(#)]` -/
def P6170420856676086674.Spec : Prop :=
  ∀ n, P6170420856676086674.a n = A336359 (n + 1)

end A336359

/-! ## A336359.P4950791178912028153

`filter[A088610(2*(n+1)), A336356(#)]`
-/

namespace A336359.P4950791178912028153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336356 (f1 j).toNat = 1) n)

end

end A336359.P4950791178912028153

namespace A336359

/-- `filter[A088610(2*(n+1)), A336356(#)]` -/
def P4950791178912028153.Spec : Prop :=
  ∀ n, P4950791178912028153.a n = A336359 (n + 1)

end A336359

/-! ## A336359.P12800533654688285723

`filter[A078542(n+1), A336356(#)]`
-/

namespace A336359.P12800533654688285723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336356 (f1 j).toNat = 1) n)

end

end A336359.P12800533654688285723

namespace A336359

/-- `filter[A078542(n+1), A336356(#)]` -/
def P12800533654688285723.Spec : Prop :=
  ∀ n, P12800533654688285723.a n = A336359 (n + 1)

end A336359

/-! ## A336359.P13536897813589761737

`filter[A193166(n+1), A336356(#)]`
-/

namespace A336359.P13536897813589761737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336356 (f1 j).toNat = 1) n)

end

end A336359.P13536897813589761737

namespace A336359

/-- `filter[A193166(n+1), A336356(#)]` -/
def P13536897813589761737.Spec : Prop :=
  ∀ n, P13536897813589761737.a n = A336359 (n + 1)

end A336359

/-!
# A336360: Numbers k for which bigomega(sigma(k)) >= bigomega(k), where bigomega (A001222) gives the number of prime factors with multiplicity, and sigma (A000203) gives the sum of divisors.

The programs for A336360, the canonical program `A336360.P2928857000042919370` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336360 has offset 1).

The definition of A336360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336360.P2928857000042919370

`eq[0, A336356(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A336360

/-- `eq[0, A336356(n+1)]+1` -/
def P2928857000042919370.Spec : Prop :=
  ∀ n, (P2928857000042919370.a n : ℤ) = A336360 (n + 1)

theorem P2928857000042919370.correct : P2928857000042919370.Spec := by
  intro n
  simp only [A336360, Nat.add_sub_cancel]

end A336360

/-! ## A336360.P147065783928133388

`comp[A336359(n+1)-1]+1`
-/

namespace A336360.P147065783928133388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336359 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A336360.P147065783928133388

namespace A336360

/-- `comp[A336359(n+1)-1]+1` -/
def P147065783928133388.Spec : Prop :=
  ∀ n, (P147065783928133388.a n : ℤ) = A336360 (n + 1)

end A336360

/-! ## A336360.P7314019769488148061

`comp[(n+4)*A336356(n+4)]`
-/

namespace A336360.P7314019769488148061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A336356 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A336360.P7314019769488148061

namespace A336360

/-- `comp[(n+4)*A336356(n+4)]` -/
def P7314019769488148061.Spec : Prop :=
  ∀ n, (P7314019769488148061.a n : ℤ) = A336360 (n + 1)

end A336360

/-! ## A336360.P6004432038358745734

`lt[1-A336386(n+1), 2]+1`
-/

namespace A336360.P6004432038358745734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A336386 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336360.P6004432038358745734

namespace A336360

/-- `lt[1-A336386(n+1), 2]+1` -/
def P6004432038358745734.Spec : Prop :=
  ∀ n, (P6004432038358745734.a n : ℤ) = A336360 (n + 1)

end A336360

/-! ## A336360.P2595083143345762214

`lt[A002033(n)*A336356(n+1), 2]+1`
-/

namespace A336360.P2595083143345762214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n * A336356 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336360.P2595083143345762214

namespace A336360

/-- `lt[A002033(n)*A336356(n+1), 2]+1` -/
def P2595083143345762214.Spec : Prop :=
  ∀ n, (P2595083143345762214.a n : ℤ) = A336360 (n + 1)

end A336360

/-! ## A336360.P3683307577299429294

`lt[A006503(n)*A336356(n+1), 2]+1`
-/

namespace A336360.P3683307577299429294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n * A336356 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336360.P3683307577299429294

namespace A336360

/-- `lt[A006503(n)*A336356(n+1), 2]+1` -/
def P3683307577299429294.Spec : Prop :=
  ∀ n, (P3683307577299429294.a n : ℤ) = A336360 (n + 1)

end A336360

/-! ## A336360.P11597658588318667274

`record[n+1-A096376(n)*A336356(n+1)]`
-/

namespace A336360.P11597658588318667274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A096376 n * A336356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336360.P11597658588318667274

namespace A336360

/-- `record[n+1-A096376(n)*A336356(n+1)]` -/
def P11597658588318667274.Spec : Prop :=
  ∀ n, P11597658588318667274.a n = A336360 (n + 1)

end A336360

/-! ## A336360.P10906516221578876910

`record[1-A001489(n)-n*A336356(n+1)]`
-/

namespace A336360.P10906516221578876910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 n - (n : ℤ) * A336356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336360.P10906516221578876910

namespace A336360

/-- `record[1-A001489(n)-n*A336356(n+1)]` -/
def P10906516221578876910.Spec : Prop :=
  ∀ n, P10906516221578876910.a n = A336360 (n + 1)

end A336360

/-! ## A336360.P5219820873906272148

`lt[A153141(n)*A336356(n+1), 2]+1`
-/

namespace A336360.P5219820873906272148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 n * A336356 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336360.P5219820873906272148

namespace A336360

/-- `lt[A153141(n)*A336356(n+1), 2]+1` -/
def P5219820873906272148.Spec : Prop :=
  ∀ n, (P5219820873906272148.a n : ℤ) = A336360 (n + 1)

end A336360

/-! ## A336360.P6058106200316353008

`lt[(A287213(n)*A336356(n+1))², 1]+1`
-/

namespace A336360.P6058106200316353008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A287213 n * A336356 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336360.P6058106200316353008

namespace A336360

/-- `lt[(A287213(n)*A336356(n+1))², 1]+1` -/
def P6058106200316353008.Spec : Prop :=
  ∀ n, (P6058106200316353008.a n : ℤ) = A336360 (n + 1)

end A336360

/-!
# A336361: Number of iterations of A000593 (sum of divisors of odd part of n) needed to reach a power of 2, or -1 if never reached.

The programs for A336361, there is no canonical definition to state claims against.
-/

/-! ## A336361.P11493959252687520277

`A331410(n+1)-A347249(n+1)`
-/

namespace A336361.P11493959252687520277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A347249 (n + 1)

end

end A336361.P11493959252687520277

/-! ## A336361.P13741051044039428767

`A005087(n+1)+A336922(n+1)-A347249(n+1)`
-/

namespace A336361.P13741051044039428767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1) + (A336922 (n + 1) - A347249 (n + 1))

end

end A336361.P13741051044039428767

/-! ## A336361.P15355298344018293316

`A087436(n+1)+A336921(n+1)-A347249(n+1)`
-/

namespace A336361.P15355298344018293316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1) + (A336921 (n + 1) - A347249 (n + 1))

end

end A336361.P15355298344018293316

/-! ## A336361.P14441947323667292

`A334861(n+1)-(A347249(n+1)+A329697(n+1))`
-/

namespace A336361.P14441947323667292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334861 (n + 1) - (A347249 (n + 1) + A329697 (n + 1))

end

end A336361.P14441947323667292

/-! ## A336361.P362228526580911054

`A329697(n+1)+A335877(n+1)-A347249(n+1)`
-/

namespace A336361.P362228526580911054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) + (A335877 (n + 1) - A347249 (n + 1))

end

end A336361.P362228526580911054

/-! ## A336361.P11740898274397911889

`A334097(n+1)-(A347249(n+1)+A334098(n+1))`
-/

namespace A336361.P11740898274397911889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (n + 1) - (A347249 (n + 1) + A334098 (n + 1))

end

end A336361.P11740898274397911889

/-! ## A336361.P9165456088706502614

`A335904(n+1)+A336921(n+1)-A336118(n+1)-A347249(n+1)`
-/

namespace A336361.P9165456088706502614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335904 (n + 1) + (A336921 (n + 1) - A336118 (n + 1)) - A347249 (n + 1)

end

end A336361.P9165456088706502614

/-! ## A336361.P5572101063630284374

`A336929(A038699(n+1))-A347249(n+1)`
-/

namespace A336361.P5572101063630284374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336929 (A038699 (n + 1)).toNat - A347249 (n + 1)

end

end A336361.P5572101063630284374

/-! ## A336361.P11236097190343016749

`A334108(A122111(n+1))-A347249(n+1)`
-/

namespace A336361.P11236097190343016749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334108 (A122111 (n + 1)).toNat - A347249 (n + 1)

end

end A336361.P11236097190343016749

/-!
# A336362: Number of iterations of map k -> k*sigma(p^e)/p^e needed to reach a power of 2, where p is the smallest odd prime factor of k and e is its exponent, when starting from k = n. a(n) = -1 if number of the form 2^k is never reached.

The programs for A336362, there is no canonical definition to state claims against.
-/

/-! ## A336362.P9682807344175928561

`A336363(n+1)-A336355(A023995(n+1))`
-/

namespace A336362.P9682807344175928561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336363 (n + 1) - A336355 (A023995 (n + 1)).toNat

end

end A336362.P9682807344175928561

/-! ## A336362.P16380355852271392564

`A336361((n+1)*A066016(n+1))`
-/

namespace A336362.P16380355852271392564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336361 ((n + 1 : ℤ) * A066016 (n + 1)).toNat

end

end A336362.P16380355852271392564

/-! ## A336362.P1360099311955200516

`A080791(A047994(n+1))%A184786(n)`
-/

namespace A336362.P1360099311955200516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080791 (A047994 (n + 1)).toNat) (A184786 n)

end

end A336362.P1360099311955200516

/-! ## A336362.P9501048810705309833

`A080791(A047994(n+1)%A261571(n))`
-/

namespace A336362.P9501048810705309833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Int.tmod (A047994 (n + 1)) (A261571 n)).toNat

end

end A336362.P9501048810705309833

/-! ## A336362.P13457694281486305434

`A023416(A047994(n+1))%A261166(3*n+2)`
-/

namespace A336362.P13457694281486305434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023416 (A047994 (n + 1)).toNat) (A261166 (3 * n + 2))

end

end A336362.P13457694281486305434

/-!
# A336363: Number of iterations of map k -> k*sigma(p^e)/p^e needed to reach a power of 2, where p is the largest prime factor of k and e is its exponent, when starting from k = n. a(n) = -1 if number of the form 2^k is never reached.

The programs for A336363, there is no canonical definition to state claims against.
-/

/-! ## A336363.P8742569240469945205

`A336362(n+1)+A336355(A023995(n+1))`
-/

namespace A336363.P8742569240469945205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336362 (n + 1) + A336355 (A023995 (n + 1)).toNat

end

end A336363.P8742569240469945205

/-! ## A336363.P14217604541829505190

`A347244(A285425(3*n+1))+A336362(n+1)`
-/

namespace A336363.P14217604541829505190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347244 (A285425 (3 * n + 1)).toNat + A336362 (n + 1)

end

end A336363.P14217604541829505190

/-! ## A336363.P411147799464832560

`(A209229(A000043(n+1))+A005087(n+1))*A336361(n+1)`
-/

namespace A336363.P411147799464832560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A209229 (A000043 (n + 1)).toNat + A005087 (n + 1)) * A336361 (n + 1)

end

end A336363.P411147799464832560

/-! ## A336363.P10793857330820136249

`A083647(A000265(n+1)%A184397(3*(n+1)))`
-/

namespace A336363.P10793857330820136249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083647 (Int.tmod (A000265 (n + 1)) (A184397 (3 * (n + 1)))).toNat

end

end A336363.P10793857330820136249

/-! ## A336363.P11498639539777837814

`A336361(n+1)+A000122(A117192(3*n+5))`
-/

namespace A336363.P11498639539777837814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336361 (n + 1) + A000122 (A117192 (3 * n + 5)).toNat

end

end A336363.P11498639539777837814

/-!
# A336366: Numbers k such that gcd(k, prime(k) + prime(k+1)) = 1.

The programs for A336366, there is no canonical definition to state claims against.
-/

/-! ## A336366.P9880360205110856785

`eq[1, gcd(n, A011974(n+1))]`
-/

namespace A336366.P9880360205110856785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A011974 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336366.P9880360205110856785

/-! ## A336366.P13717197982697910776

`A000720(A336368(n+1))`
-/

namespace A336366.P13717197982697910776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A336368 (n + 1)).toNat

end

end A336366.P13717197982697910776

/-! ## A336366.P10660953465570289878

`A003963(2*A336368(n+1))`
-/

namespace A336366.P10660953465570289878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A336368 (n + 1)).toNat

end

end A336366.P10660953465570289878

/-! ## A336366.P9520602066245541011

`A321648(2*A336368(n+1))`
-/

namespace A336366.P9520602066245541011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (2 * A336368 (n + 1)).toNat

end

end A336366.P9520602066245541011

/-! ## A336366.P3824543898890039125

`A316524(4*A336368(n+1))`
-/

namespace A336366.P3824543898890039125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (4 * A336368 (n + 1)).toNat

end

end A336366.P3824543898890039125

/-! ## A336366.P8526644023189696288

`A055396(A336368(n+1)+A000038(n))`
-/

namespace A336366.P8526644023189696288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A336368 (n + 1) + A000038 n).toNat

end

end A336366.P8526644023189696288

/-! ## A336366.P4849539116504094811

`A056239(A336368(n+1))%A060191(n)`
-/

namespace A336366.P4849539116504094811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A336368 (n + 1)).toNat) (A060191 n)

end

end A336366.P4849539116504094811

/-! ## A336366.P10554807778132740313

`A056239(A336368(n+1)%A192838(n+1))`
-/

namespace A336366.P10554807778132740313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A336368 (n + 1)) (A192838 (n + 1))).toNat

end

end A336366.P10554807778132740313

/-! ## A336366.P11677851527918495302

`A290103(A336368(n+1))%A051283(n+1)`
-/

namespace A336366.P11677851527918495302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290103 (A336368 (n + 1)).toNat) (A051283 (n + 1))

end

end A336366.P11677851527918495302

/-! ## A336366.P10226495809043813483

`A056239(∩[A000040(n+1), A336368(n+1)])`
-/

namespace A336366.P10226495809043813483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336368 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A336366.P10226495809043813483

/-!
# A336367: Numbers k such that gcd(k, prime(k) + prime(k+1)) > 1.

The programs for A336367, the canonical program `A336367.P14551895403974588716` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336367 has offset 1).

The definition of A336367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336367.P14551895403974588716

`lt[1, gcd(n+1, A001043(n+1))]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A336367

/-- `lt[1, gcd(n+1, A001043(n+1))]+1` -/
def P14551895403974588716.Spec : Prop :=
  ∀ n, (P14551895403974588716.a n : ℤ) = A336367 (n + 1)

theorem P14551895403974588716.correct : P14551895403974588716.Spec := by
  intro n
  simp only [A336367, Nat.add_sub_cancel]

end A336367

/-! ## A336367.P1040283370388182108

`A000720(A336369(n+1))`
-/

namespace A336367.P1040283370388182108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A336369 (n + 1)).toNat

end

end A336367.P1040283370388182108

namespace A336367

/-- `A000720(A336369(n+1))` -/
def P1040283370388182108.Spec : Prop :=
  ∀ n, P1040283370388182108.a n = A336367 (n + 1)

end A336367

/-! ## A336367.P16434430184643664730

`A003963(p?[A336369(n+1)])`
-/

namespace A336367.P16434430184643664730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336367.P16434430184643664730

namespace A336367

/-- `A003963(p?[A336369(n+1)])` -/
def P16434430184643664730.Spec : Prop :=
  ∀ n, P16434430184643664730.a n = A336367 (n + 1)

end A336367

/-! ## A336367.P15267895725343115087

`A026233(p?[A336369(n+1)])`
-/

namespace A336367.P15267895725343115087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336367.P15267895725343115087

namespace A336367

/-- `A026233(p?[A336369(n+1)])` -/
def P15267895725343115087.Spec : Prop :=
  ∀ n, P15267895725343115087.a n = A336367 (n + 1)

end A336367

/-! ## A336367.P14770996433092971332

`A026238(p?[A336369(n+1)])`
-/

namespace A336367.P14770996433092971332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336367.P14770996433092971332

namespace A336367

/-- `A026238(p?[A336369(n+1)])` -/
def P14770996433092971332.Spec : Prop :=
  ∀ n, P14770996433092971332.a n = A336367 (n + 1)

end A336367

/-!
# A336368: Primes p(n) such that gcd(n, prime(n)+prime(n+1)) = 1.

The programs for A336368, the canonical program `A336368.P1723893463371060127` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336368 has offset 1).

The definition of A336368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3560 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336368.P1723893463371060127

`A000040(eq[1, gcd(n+1, A001043(n+1))]+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A336368

/-- `A000040(eq[1, gcd(n+1, A001043(n+1))]+1)` -/
def P1723893463371060127.Spec : Prop :=
  ∀ n, P1723893463371060127.a n = A336368 (n + 1)

theorem P1723893463371060127.correct : P1723893463371060127.Spec := by
  intro n
  simp only [A336368, Nat.add_sub_cancel]

end A336368

/-! ## A336368.P14120979772999953398

`A000040(A336366(n+1))`
-/

namespace A336368.P14120979772999953398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A336366 (n + 1)).toNat

end

end A336368.P14120979772999953398

namespace A336368

/-- `A000040(A336366(n+1))` -/
def P14120979772999953398.Spec : Prop :=
  ∀ n, P14120979772999953398.a n = A336368 (n + 1)

end A336368

/-! ## A336368.P863204514041842981

`A008578(A336366(n+1)+1)`
-/

namespace A336368.P863204514041842981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A336366 (n + 1) + 1).toNat

end

end A336368.P863204514041842981

namespace A336368

/-- `A008578(A336366(n+1)+1)` -/
def P863204514041842981.Spec : Prop :=
  ∀ n, P863204514041842981.a n = A336368 (n + 1)

end A336368

/-! ## A336368.P2494816319237808756

`A182986(A336366(n+1)+1)`
-/

namespace A336368.P2494816319237808756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A336366 (n + 1) + 1).toNat

end

end A336368.P2494816319237808756

namespace A336368

/-- `A182986(A336366(n+1)+1)` -/
def P2494816319237808756.Spec : Prop :=
  ∀ n, P2494816319237808756.a n = A336368 (n + 1)

end A336368

/-! ## A336368.P14232410587426533174

`A158611(A336366(n+1)+2)`
-/

namespace A336368.P14232410587426533174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A336366 (n + 1) + 2).toNat

end

end A336368.P14232410587426533174

namespace A336368

/-- `A158611(A336366(n+1)+2)` -/
def P14232410587426533174.Spec : Prop :=
  ∀ n, P14232410587426533174.a n = A336368 (n + 1)

end A336368

/-! ## A336368.P5825691298585591463

`A073846(2*A336366(n+1))`
-/

namespace A336368.P5825691298585591463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A336366 (n + 1)).toNat

end

end A336368.P5825691298585591463

namespace A336368

/-- `A073846(2*A336366(n+1))` -/
def P5825691298585591463.Spec : Prop :=
  ∀ n, P5825691298585591463.a n = A336368 (n + 1)

end A336368

/-! ## A336368.P5459940001959626860

`A082500(2*A336366(n+1))`
-/

namespace A336368.P5459940001959626860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A336366 (n + 1)).toNat

end

end A336368.P5459940001959626860

namespace A336368

/-- `A082500(2*A336366(n+1))` -/
def P5459940001959626860.Spec : Prop :=
  ∀ n, P5459940001959626860.a n = A336368 (n + 1)

end A336368

/-! ## A336368.P7284366130492182977

`A207790(2*A336366(n+1))`
-/

namespace A336368.P7284366130492182977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A336366 (n + 1)).toNat

end

end A336368.P7284366130492182977

namespace A336368

/-- `A207790(2*A336366(n+1))` -/
def P7284366130492182977.Spec : Prop :=
  ∀ n, P7284366130492182977.a n = A336368 (n + 1)

end A336368

/-! ## A336368.P2287908610594321403

`A082500(lcm(2, A336366(n+1)))`
-/

namespace A336368.P2287908610594321403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (Int.lcm 2 (A336366 (n + 1)))

end

end A336368.P2287908610594321403

namespace A336368

/-- `A082500(lcm(2, A336366(n+1)))` -/
def P2287908610594321403.Spec : Prop :=
  ∀ n, P2287908610594321403.a n = A336368 (n + 1)

end A336368

/-! ## A336368.P784524303017513198

`∑{d}[A336366(n+1), A007444(#)]`
-/

namespace A336368.P784524303017513198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A336368.P784524303017513198

namespace A336368

/-- `∑{d}[A336366(n+1), A007444(#)]` -/
def P784524303017513198.Spec : Prop :=
  ∀ n, P784524303017513198.a n = A336368 (n + 1)

end A336368

/-!
# A336369: Primes p(n) such that gcd(n, prime(n)+prime(n+1)) > 1.

The programs for A336369, the canonical program `A336369.P11619332729759975965` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336369 has offset 1).

The definition of A336369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336369.P11619332729759975965

`A000040(A336367(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A336369

/-- `A000040(A336367(n+1))` -/
def P11619332729759975965.Spec : Prop :=
  ∀ n, P11619332729759975965.a n = A336369 (n + 1)

theorem P11619332729759975965.correct : P11619332729759975965.Spec := by
  intro n
  simp only [A336369, Nat.add_sub_cancel]

end A336369

/-! ## A336369.P17184336541772631073

`A065091(A336367(n+1)-1)`
-/

namespace A336369.P17184336541772631073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A336367 (n + 1) - 1).toNat

end

end A336369.P17184336541772631073

namespace A336369

/-- `A065091(A336367(n+1)-1)` -/
def P17184336541772631073.Spec : Prop :=
  ∀ n, P17184336541772631073.a n = A336369 (n + 1)

end A336369

/-! ## A336369.P18187938770388780352

`∑{d}[A336367(n+1), A007444(#)]`
-/

namespace A336369.P18187938770388780352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A336369.P18187938770388780352

namespace A336369

/-- `∑{d}[A336367(n+1), A007444(#)]` -/
def P18187938770388780352.Spec : Prop :=
  ∀ n, P18187938770388780352.a n = A336369 (n + 1)

end A336369

/-! ## A336369.P8221530459503285448

`A000040(lt[1, gcd(n+1, A001043(n+1))]+1)`
-/

namespace A336369.P8221530459503285448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001043 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A336369.P8221530459503285448

namespace A336369

/-- `A000040(lt[1, gcd(n+1, A001043(n+1))]+1)` -/
def P8221530459503285448.Spec : Prop :=
  ∀ n, P8221530459503285448.a n = A336369 (n + 1)

end A336369

/-! ## A336369.P10128277695773623619

`A008578(A336367(n+1)+1)`
-/

namespace A336369.P10128277695773623619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A336367 (n + 1) + 1).toNat

end

end A336369.P10128277695773623619

namespace A336369

/-- `A008578(A336367(n+1)+1)` -/
def P10128277695773623619.Spec : Prop :=
  ∀ n, P10128277695773623619.a n = A336369 (n + 1)

end A336369

/-! ## A336369.P6615448496593281408

`A182986(A336367(n+1)+1)`
-/

namespace A336369.P6615448496593281408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A336367 (n + 1) + 1).toNat

end

end A336369.P6615448496593281408

namespace A336369

/-- `A182986(A336367(n+1)+1)` -/
def P6615448496593281408.Spec : Prop :=
  ∀ n, P6615448496593281408.a n = A336369 (n + 1)

end A336369

/-! ## A336369.P4297117159461140867

`A158611(A336367(n+1)+2)`
-/

namespace A336369.P4297117159461140867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A336367 (n + 1) + 2).toNat

end

end A336369.P4297117159461140867

namespace A336369

/-- `A158611(A336367(n+1)+2)` -/
def P4297117159461140867.Spec : Prop :=
  ∀ n, P4297117159461140867.a n = A336369 (n + 1)

end A336369

/-! ## A336369.P929621618113479676

`A082500(2*A336367(n+1))`
-/

namespace A336369.P929621618113479676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A336367 (n + 1)).toNat

end

end A336369.P929621618113479676

namespace A336369

/-- `A082500(2*A336367(n+1))` -/
def P929621618113479676.Spec : Prop :=
  ∀ n, P929621618113479676.a n = A336369 (n + 1)

end A336369

/-!
# A336370: Numbers k such that gcd(k, prime(k) + prime(k-1)) = 1.

The programs for A336370, the canonical program `A336370.P16270598493345441894` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336370 has offset 1).

The definition of A336370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3574 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336370.P16270598493345441894

`eq[1, gcd(n+2, A001043(n+1))]+2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A336370

/-- `eq[1, gcd(n+2, A001043(n+1))]+2` -/
def P16270598493345441894.Spec : Prop :=
  ∀ n, (P16270598493345441894.a n : ℤ) = A336370 (n + 1)

theorem P16270598493345441894.correct : P16270598493345441894.Spec := by
  intro n
  simp only [A336370, Nat.add_sub_cancel]

end A336370

/-! ## A336370.P17858303085403552278

`A000720(A336372(n+1))`
-/

namespace A336370.P17858303085403552278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A336372 (n + 1)).toNat

end

end A336370.P17858303085403552278

namespace A336370

/-- `A000720(A336372(n+1))` -/
def P17858303085403552278.Spec : Prop :=
  ∀ n, P17858303085403552278.a n = A336370 (n + 1)

end A336370

/-! ## A336370.P16096711766728261476

`A061395(2*A336372(n+1))`
-/

namespace A336370.P16096711766728261476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A336372 (n + 1)).toNat

end

end A336370.P16096711766728261476

namespace A336370

/-- `A061395(2*A336372(n+1))` -/
def P16096711766728261476.Spec : Prop :=
  ∀ n, P16096711766728261476.a n = A336370 (n + 1)

end A336370

/-! ## A336370.P1246128119318697011

`A065770(∏{p}[A336372(n+1), #])`
-/

namespace A336370.P1246128119318697011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A336370.P1246128119318697011

namespace A336370

/-- `A065770(∏{p}[A336372(n+1), #])` -/
def P1246128119318697011.Spec : Prop :=
  ∀ n, P1246128119318697011.a n = A336370 (n + 1)

end A336370

/-! ## A336370.P2170757157415161853

`A036234(A336372(n+1)-1)`
-/

namespace A336370.P2170757157415161853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A336372 (n + 1) - 1).toNat

end

end A336370.P2170757157415161853

namespace A336370

/-- `A036234(A336372(n+1)-1)` -/
def P2170757157415161853.Spec : Prop :=
  ∀ n, P2170757157415161853.a n = A336370 (n + 1)

end A336370

/-! ## A336370.P18217209114420878292

`A204892(A336372(n+1)-2)`
-/

namespace A336370.P18217209114420878292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A336372 (n + 1) - 2).toNat

end

end A336370.P18217209114420878292

namespace A336370

/-- `A204892(A336372(n+1)-2)` -/
def P18217209114420878292.Spec : Prop :=
  ∀ n, P18217209114420878292.a n = A336370 (n + 1)

end A336370

/-! ## A336370.P16773975560376708069

`A065770(2*A336372(n+1))`
-/

namespace A336370.P16773975560376708069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (2 * A336372 (n + 1)).toNat

end

end A336370.P16773975560376708069

namespace A336370

/-- `A065770(2*A336372(n+1))` -/
def P16773975560376708069.Spec : Prop :=
  ∀ n, P16773975560376708069.a n = A336370 (n + 1)

end A336370

/-! ## A336370.P3597745959238230890

`A003963(2*A336372(n+1))`
-/

namespace A336370.P3597745959238230890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A336372 (n + 1)).toNat

end

end A336370.P3597745959238230890

namespace A336370

/-- `A003963(2*A336372(n+1))` -/
def P3597745959238230890.Spec : Prop :=
  ∀ n, P3597745959238230890.a n = A336370 (n + 1)

end A336370

/-!
# A336371: Numbers k such that gcd(k, prime(k) + prime(k-1)) > 1.

The programs for A336371, the canonical program `A336371.P14472383251782372685` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336371 has offset 1).

The definition of A336371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336371.P8780719319988487630

`A000720(A336373(n+1))`
-/

namespace A336371.P8780719319988487630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A336373 (n + 1)).toNat

end

end A336371.P8780719319988487630

namespace A336371

/-- `A000720(A336373(n+1))` -/
def P8780719319988487630.Spec : Prop :=
  ∀ n, P8780719319988487630.a n = A336371 (n + 1)

end A336371

/-! ## A336371.P14472383251782372685

`A061395(∏{d}[A336373(n+1), #])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A336371

/-- `A061395(∏{d}[A336373(n+1), #])` -/
def P14472383251782372685.Spec : Prop :=
  ∀ n, P14472383251782372685.a n = A336371 (n + 1)

theorem P14472383251782372685.correct : P14472383251782372685.Spec := by
  intro n
  simp only [A336371, Nat.add_sub_cancel]

end A336371

/-! ## A336371.P2588194705671551680

`A061395(2*A336373(n+1))`
-/

namespace A336371.P2588194705671551680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A336373 (n + 1)).toNat

end

end A336371.P2588194705671551680

namespace A336371

/-- `A061395(2*A336373(n+1))` -/
def P2588194705671551680.Spec : Prop :=
  ∀ n, P2588194705671551680.a n = A336371 (n + 1)

end A336371

/-! ## A336371.P15780590133371247702

`A204892(A336373(n+1)-2)`
-/

namespace A336371.P15780590133371247702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A336373 (n + 1) - 2).toNat

end

end A336371.P15780590133371247702

namespace A336371

/-- `A204892(A336373(n+1)-2)` -/
def P15780590133371247702.Spec : Prop :=
  ∀ n, P15780590133371247702.a n = A336371 (n + 1)

end A336371

/-! ## A336371.P14790138529660507796

`∑{d}[A336373(n+1), A277697(#)]`
-/

namespace A336371.P14790138529660507796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A277697 d

end

end A336371.P14790138529660507796

namespace A336371

/-- `∑{d}[A336373(n+1), A277697(#)]` -/
def P14790138529660507796.Spec : Prop :=
  ∀ n, P14790138529660507796.a n = A336371 (n + 1)

end A336371

/-! ## A336371.P6450167580458197175

`A056239(∏{d}[A336373(n+1), #])`
-/

namespace A336371.P6450167580458197175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A336371.P6450167580458197175

namespace A336371

/-- `A056239(∏{d}[A336373(n+1), #])` -/
def P6450167580458197175.Spec : Prop :=
  ∀ n, P6450167580458197175.a n = A336371 (n + 1)

end A336371

/-!
# A336372: Primes prime(k) such that gcd(k, prime(k) + prime(k-1)) = 1.

The programs for A336372, the canonical program `A336372.P9191988951573997672` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336372 has offset 1).

The definition of A336372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3574 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336372.P9191988951573997672

`A065091(A336370(n+1)-1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A336372

/-- `A065091(A336370(n+1)-1)` -/
def P9191988951573997672.Spec : Prop :=
  ∀ n, P9191988951573997672.a n = A336372 (n + 1)

theorem P9191988951573997672.correct : P9191988951573997672.Spec := by
  intro n
  simp only [A336372, Nat.add_sub_cancel]

end A336372

/-! ## A336372.P18051419608576333478

`A000040(A336370(n+1))`
-/

namespace A336372.P18051419608576333478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A336370 (n + 1)).toNat

end

end A336372.P18051419608576333478

namespace A336372

/-- `A000040(A336370(n+1))` -/
def P18051419608576333478.Spec : Prop :=
  ∀ n, P18051419608576333478.a n = A336372 (n + 1)

end A336372

/-! ## A336372.P6660497742321299293

`A008578(A336370(n+1)+1)`
-/

namespace A336372.P6660497742321299293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A336370 (n + 1) + 1).toNat

end

end A336372.P6660497742321299293

namespace A336372

/-- `A008578(A336370(n+1)+1)` -/
def P6660497742321299293.Spec : Prop :=
  ∀ n, P6660497742321299293.a n = A336372 (n + 1)

end A336372

/-! ## A336372.P15787041366260375211

`A182986(A336370(n+1)+1)`
-/

namespace A336372.P15787041366260375211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A336370 (n + 1) + 1).toNat

end

end A336372.P15787041366260375211

namespace A336372

/-- `A182986(A336370(n+1)+1)` -/
def P15787041366260375211.Spec : Prop :=
  ∀ n, P15787041366260375211.a n = A336372 (n + 1)

end A336372

/-! ## A336372.P6276819822415784967

`∑{d}[A336370(n+1), A007444(#)]`
-/

namespace A336372.P6276819822415784967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A336372.P6276819822415784967

namespace A336372

/-- `∑{d}[A336370(n+1), A007444(#)]` -/
def P6276819822415784967.Spec : Prop :=
  ∀ n, P6276819822415784967.a n = A336372 (n + 1)

end A336372

/-! ## A336372.P12669197270138064367

`A082500(2*A336370(n+1))`
-/

namespace A336372.P12669197270138064367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A336370 (n + 1)).toNat

end

end A336372.P12669197270138064367

namespace A336372

/-- `A082500(2*A336370(n+1))` -/
def P12669197270138064367.Spec : Prop :=
  ∀ n, P12669197270138064367.a n = A336372 (n + 1)

end A336372

/-! ## A336372.P6301179435318333622

`A162753(lcm(2, A336370(n+1)))`
-/

namespace A336372.P6301179435318333622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (Int.lcm 2 (A336370 (n + 1)))

end

end A336372.P6301179435318333622

namespace A336372

/-- `A162753(lcm(2, A336370(n+1)))` -/
def P6301179435318333622.Spec : Prop :=
  ∀ n, P6301179435318333622.a n = A336372 (n + 1)

end A336372

/-! ## A336372.P14876361918081758052

`A207790(2*A336370(n+1))`
-/

namespace A336372.P14876361918081758052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A336370 (n + 1)).toNat

end

end A336372.P14876361918081758052

namespace A336372

/-- `A207790(2*A336370(n+1))` -/
def P14876361918081758052.Spec : Prop :=
  ∀ n, P14876361918081758052.a n = A336372 (n + 1)

end A336372

/-!
# A336373: Primes prime(k) such that gcd(k, prime(k)+prime(k-1)) > 1.

The programs for A336373, the canonical program `A336373.P12113876277353113999` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336373 has offset 1).

The definition of A336373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6426 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336373.P17165539849550525030

`A000040(A336371(n+1))`
-/

namespace A336373.P17165539849550525030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A336371 (n + 1)).toNat

end

end A336373.P17165539849550525030

namespace A336373

/-- `A000040(A336371(n+1))` -/
def P17165539849550525030.Spec : Prop :=
  ∀ n, P17165539849550525030.a n = A336373 (n + 1)

end A336373

/-! ## A336373.P6711894091355874477

`A045319(A336371(n+1)-1)`
-/

namespace A336373.P6711894091355874477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A336371 (n + 1) - 1).toNat

end

end A336373.P6711894091355874477

namespace A336373

/-- `A045319(A336371(n+1)-1)` -/
def P6711894091355874477.Spec : Prop :=
  ∀ n, P6711894091355874477.a n = A336373 (n + 1)

end A336373

/-! ## A336373.P1819719833132726825

`A065091(A336371(n+1)-1)`
-/

namespace A336373.P1819719833132726825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A336371 (n + 1) - 1).toNat

end

end A336373.P1819719833132726825

namespace A336373

/-- `A065091(A336371(n+1)-1)` -/
def P1819719833132726825.Spec : Prop :=
  ∀ n, P1819719833132726825.a n = A336373 (n + 1)

end A336373

/-! ## A336373.P12113876277353113999

`A000040(lt[1, gcd(n+2, A001043(n+1))]+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A336373

/-- `A000040(lt[1, gcd(n+2, A001043(n+1))]+2)` -/
def P12113876277353113999.Spec : Prop :=
  ∀ n, P12113876277353113999.a n = A336373 (n + 1)

theorem P12113876277353113999.correct : P12113876277353113999.Spec := by
  intro n
  simp only [A336373, Nat.add_sub_cancel]

end A336373

/-! ## A336373.P15760455870180225942

`A008578(A336371(n+1)+1)`
-/

namespace A336373.P15760455870180225942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A336371 (n + 1) + 1).toNat

end

end A336373.P15760455870180225942

namespace A336373

/-- `A008578(A336371(n+1)+1)` -/
def P15760455870180225942.Spec : Prop :=
  ∀ n, P15760455870180225942.a n = A336373 (n + 1)

end A336373

/-! ## A336373.P2030562311414909591

`A175787(A336371(n+1)+1)`
-/

namespace A336373.P2030562311414909591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A336371 (n + 1) + 1).toNat

end

end A336373.P2030562311414909591

namespace A336373

/-- `A175787(A336371(n+1)+1)` -/
def P2030562311414909591.Spec : Prop :=
  ∀ n, P2030562311414909591.a n = A336373 (n + 1)

end A336373

/-! ## A336373.P5903883025481802524

`A182986(A336371(n+1)+1)`
-/

namespace A336373.P5903883025481802524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A336371 (n + 1) + 1).toNat

end

end A336373.P5903883025481802524

namespace A336373

/-- `A182986(A336371(n+1)+1)` -/
def P5903883025481802524.Spec : Prop :=
  ∀ n, P5903883025481802524.a n = A336373 (n + 1)

end A336373

/-! ## A336373.P3586277067828107524

`A046022(A336371(n+1)+2)`
-/

namespace A336373.P3586277067828107524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A336371 (n + 1) + 2).toNat

end

end A336373.P3586277067828107524

namespace A336373

/-- `A046022(A336371(n+1)+2)` -/
def P3586277067828107524.Spec : Prop :=
  ∀ n, P3586277067828107524.a n = A336373 (n + 1)

end A336373

/-!
# A336374: Numbers k such that gcd(k, prime(k) + prime(k+2)) = 1.

The programs for A336374, the canonical program `A336374.P1623715643861287427` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336374 has offset 1).

The definition of A336374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3636 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336374.P1623715643861287427

`eq[1, gcd(n, A048448(n+1))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A336374

/-- `eq[1, gcd(n, A048448(n+1))]` -/
def P1623715643861287427.Spec : Prop :=
  ∀ n, (P1623715643861287427.a n : ℤ) = A336374 (n + 1)

theorem P1623715643861287427.correct : P1623715643861287427.Spec := by
  intro n
  simp only [A336374, Nat.add_sub_cancel]

end A336374

/-! ## A336374.P10700381210380691397

`A000720(A336376(n+1))`
-/

namespace A336374.P10700381210380691397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A336376 (n + 1)).toNat

end

end A336374.P10700381210380691397

namespace A336374

/-- `A000720(A336376(n+1))` -/
def P10700381210380691397.Spec : Prop :=
  ∀ n, P10700381210380691397.a n = A336374 (n + 1)

end A336374

/-! ## A336374.P4775452211631885008

`A003963(p?[A336376(n+1)])`
-/

namespace A336374.P4775452211631885008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336374.P4775452211631885008

namespace A336374

/-- `A003963(p?[A336376(n+1)])` -/
def P4775452211631885008.Spec : Prop :=
  ∀ n, P4775452211631885008.a n = A336374 (n + 1)

end A336374

/-! ## A336374.P18369618602989213415

`A026233(p?[A336376(n+1)])`
-/

namespace A336374.P18369618602989213415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336374.P18369618602989213415

namespace A336374

/-- `A026233(p?[A336376(n+1)])` -/
def P18369618602989213415.Spec : Prop :=
  ∀ n, P18369618602989213415.a n = A336374 (n + 1)

end A336374

/-! ## A336374.P9219233931504538780

`A026238(p?[A336376(n+1)])`
-/

namespace A336374.P9219233931504538780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336374.P9219233931504538780

namespace A336374

/-- `A026238(p?[A336376(n+1)])` -/
def P9219233931504538780.Spec : Prop :=
  ∀ n, P9219233931504538780.a n = A336374 (n + 1)

end A336374

/-! ## A336374.P7544274206496743778

`A026233(∑{p}[A336376(n+1), #])`
-/

namespace A336374.P7544274206496743778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A336374.P7544274206496743778

namespace A336374

/-- `A026233(∑{p}[A336376(n+1), #])` -/
def P7544274206496743778.Spec : Prop :=
  ∀ n, P7544274206496743778.a n = A336374 (n + 1)

end A336374

/-! ## A336374.P13127993063302005823

`A003963(A336376(n+1)-A000007(n))`
-/

namespace A336374.P13127993063302005823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A336376 (n + 1) - A000007 n).toNat

end

end A336374.P13127993063302005823

namespace A336374

/-- `A003963(A336376(n+1)-A000007(n))` -/
def P13127993063302005823.Spec : Prop :=
  ∀ n, P13127993063302005823.a n = A336374 (n + 1)

end A336374

/-! ## A336374.P7559762180449211869

`A003963(2*A336376(n+1))`
-/

namespace A336374.P7559762180449211869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A336376 (n + 1)).toNat

end

end A336374.P7559762180449211869

namespace A336374

/-- `A003963(2*A336376(n+1))` -/
def P7559762180449211869.Spec : Prop :=
  ∀ n, P7559762180449211869.a n = A336374 (n + 1)

end A336374

/-! ## A336374.P1181971171760187759

`A056172(2*A336376(n+1))`
-/

namespace A336374.P1181971171760187759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * A336376 (n + 1)).toNat

end

end A336374.P1181971171760187759

namespace A336374

/-- `A056172(2*A336376(n+1))` -/
def P1181971171760187759.Spec : Prop :=
  ∀ n, P1181971171760187759.a n = A336374 (n + 1)

end A336374

/-! ## A336374.P11054655541880132000

`A056172(A336376(n+1)+A336376(n+1)+1)`
-/

namespace A336374.P11054655541880132000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A336376 (n + 1) + (A336376 (n + 1) + 1)).toNat

end

end A336374.P11054655541880132000

namespace A336374

/-- `A056172(A336376(n+1)+A336376(n+1)+1)` -/
def P11054655541880132000.Spec : Prop :=
  ∀ n, P11054655541880132000.a n = A336374 (n + 1)

end A336374

/-!
# A336375: Numbers k such that gcd(k, prime(k) + prime(k+2)) > 1.

The programs for A336375, the canonical program `A336375.P132868949489915150` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336375 has offset 1).

The definition of A336375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336375.P132868949489915150

`comp[A336374(n+1)-1]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A336375

/-- `comp[A336374(n+1)-1]+1` -/
def P132868949489915150.Spec : Prop :=
  ∀ n, (P132868949489915150.a n : ℤ) = A336375 (n + 1)

theorem P132868949489915150.correct : P132868949489915150.Spec := by
  intro n
  simp only [A336375, Nat.add_sub_cancel]

end A336375

/-! ## A336375.P6340410821100327832

`A020725(comp[A336374(n+1)-1])`
-/

namespace A336375.P6340410821100327832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336374 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A336375.P6340410821100327832

namespace A336375

/-- `A020725(comp[A336374(n+1)-1])` -/
def P6340410821100327832.Spec : Prop :=
  ∀ n, P6340410821100327832.a n = A336375 (n + 1)

end A336375

/-! ## A336375.P13306400369363152534

`lt[n, n*gcd(n, A048448(n+1))]`
-/

namespace A336375.P13306400369363152534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (n : ℤ) (A048448 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336375.P13306400369363152534

namespace A336375

/-- `lt[n, n*gcd(n, A048448(n+1))]` -/
def P13306400369363152534.Spec : Prop :=
  ∀ n, (P13306400369363152534.a n : ℤ) = A336375 (n + 1)

end A336375

/-! ## A336375.P15577063742260121620

`lt[3, gcd(n+1, A048448(n+2))^3]+1`
-/

namespace A336375.P15577063742260121620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A048448 (n + 2)) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336375.P15577063742260121620

namespace A336375

/-- `lt[3, gcd(n+1, A048448(n+2))^3]+1` -/
def P15577063742260121620.Spec : Prop :=
  ∀ n, (P15577063742260121620.a n : ℤ) = A336375 (n + 1)

end A336375

/-! ## A336375.P17211486027288024196

`lt[1, gcd(A028310(n), A048448(n+1))]`
-/

namespace A336375.P17211486027288024196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A048448 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336375.P17211486027288024196

namespace A336375

/-- `lt[1, gcd(A028310(n), A048448(n+1))]` -/
def P17211486027288024196.Spec : Prop :=
  ∀ n, (P17211486027288024196.a n : ℤ) = A336375 (n + 1)

end A336375

/-! ## A336375.P7114074129881270903

`A000720(A336377(n+1))`
-/

namespace A336375.P7114074129881270903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A336377 (n + 1)).toNat

end

end A336375.P7114074129881270903

namespace A336375

/-- `A000720(A336377(n+1))` -/
def P7114074129881270903.Spec : Prop :=
  ∀ n, P7114074129881270903.a n = A336375 (n + 1)

end A336375

/-! ## A336375.P17613290296236993991

`A003963(p?[A336377(n+1)])`
-/

namespace A336375.P17613290296236993991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336375.P17613290296236993991

namespace A336375

/-- `A003963(p?[A336377(n+1)])` -/
def P17613290296236993991.Spec : Prop :=
  ∀ n, P17613290296236993991.a n = A336375 (n + 1)

end A336375

/-! ## A336375.P13463383899094072946

`A026233(p?[A336377(n+1)])`
-/

namespace A336375.P13463383899094072946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336375.P13463383899094072946

namespace A336375

/-- `A026233(p?[A336377(n+1)])` -/
def P13463383899094072946.Spec : Prop :=
  ∀ n, P13463383899094072946.a n = A336375 (n + 1)

end A336375

/-! ## A336375.P6741986678793369111

`A026238(p?[A336377(n+1)])`
-/

namespace A336375.P6741986678793369111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336375.P6741986678793369111

namespace A336375

/-- `A026238(p?[A336377(n+1)])` -/
def P6741986678793369111.Spec : Prop :=
  ∀ n, P6741986678793369111.a n = A336375 (n + 1)

end A336375

/-! ## A336375.P256818275089859678

`A049084(p?[A336377(n+1)])`
-/

namespace A336375.P256818275089859678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336375.P256818275089859678

namespace A336375

/-- `A049084(p?[A336377(n+1)])` -/
def P256818275089859678.Spec : Prop :=
  ∀ n, P256818275089859678.a n = A336375 (n + 1)

end A336375

/-!
# A336376: Primes p(n) such that gcd(n, prime(n)+prime(n+2)) = 1.

The programs for A336376, the canonical program `A336376.P9608865408552650573` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336376 has offset 1).

The definition of A336376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3636 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336376.P9608865408552650573

`A000040(A336374(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A336376

/-- `A000040(A336374(n+1))` -/
def P9608865408552650573.Spec : Prop :=
  ∀ n, P9608865408552650573.a n = A336376 (n + 1)

theorem P9608865408552650573.correct : P9608865408552650573.Spec := by
  intro n
  simp only [A336376, Nat.add_sub_cancel]

end A336376

/-! ## A336376.P13587774865407378771

`A008578(A336374(n+1)+1)`
-/

namespace A336376.P13587774865407378771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A336374 (n + 1) + 1).toNat

end

end A336376.P13587774865407378771

namespace A336376

/-- `A008578(A336374(n+1)+1)` -/
def P13587774865407378771.Spec : Prop :=
  ∀ n, P13587774865407378771.a n = A336376 (n + 1)

end A336376

/-! ## A336376.P16646148768358333857

`A182986(A336374(n+1)+1)`
-/

namespace A336376.P16646148768358333857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A336374 (n + 1) + 1).toNat

end

end A336376.P16646148768358333857

namespace A336376

/-- `A182986(A336374(n+1)+1)` -/
def P16646148768358333857.Spec : Prop :=
  ∀ n, P16646148768358333857.a n = A336376 (n + 1)

end A336376

/-! ## A336376.P14680156627548489867

`∑{d}[A336374(n+1), A007444(#)]`
-/

namespace A336376.P14680156627548489867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A336376.P14680156627548489867

namespace A336376

/-- `∑{d}[A336374(n+1), A007444(#)]` -/
def P14680156627548489867.Spec : Prop :=
  ∀ n, P14680156627548489867.a n = A336376 (n + 1)

end A336376

/-! ## A336376.P2096309827799044716

`A000040(eq[1, gcd(n, A048448(n+1))])`
-/

namespace A336376.P2096309827799044716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A048448 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A336376.P2096309827799044716

namespace A336376

/-- `A000040(eq[1, gcd(n, A048448(n+1))])` -/
def P2096309827799044716.Spec : Prop :=
  ∀ n, P2096309827799044716.a n = A336376 (n + 1)

end A336376

/-! ## A336376.P9108025379337427284

`A006093(A336374(n+1))+A033999(n)²`
-/

namespace A336376.P9108025379337427284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A336374 (n + 1)).toNat + A033999 n ^ 2

end

end A336376.P9108025379337427284

namespace A336376

/-- `A006093(A336374(n+1))+A033999(n)²` -/
def P9108025379337427284.Spec : Prop :=
  ∀ n, P9108025379337427284.a n = A336376 (n + 1)

end A336376

/-! ## A336376.P9609763465695867780

`A073846(2*A336374(n+1))`
-/

namespace A336376.P9609763465695867780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A336374 (n + 1)).toNat

end

end A336376.P9609763465695867780

namespace A336376

/-- `A073846(2*A336374(n+1))` -/
def P9609763465695867780.Spec : Prop :=
  ∀ n, P9609763465695867780.a n = A336376 (n + 1)

end A336376

/-! ## A336376.P5027887919680708736

`A073846(lcm(2, A336374(n+1)))`
-/

namespace A336376.P5027887919680708736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (Int.lcm 2 (A336374 (n + 1)))

end

end A336376.P5027887919680708736

namespace A336376

/-- `A073846(lcm(2, A336374(n+1)))` -/
def P5027887919680708736.Spec : Prop :=
  ∀ n, P5027887919680708736.a n = A336376 (n + 1)

end A336376

/-! ## A336376.P2174956226452135524

`A006093(A336374(n+1))+A007318(∑[n])`
-/

namespace A336376.P2174956226452135524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A336374 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336376.P2174956226452135524

namespace A336376

/-- `A006093(A336374(n+1))+A007318(∑[n])` -/
def P2174956226452135524.Spec : Prop :=
  ∀ n, P2174956226452135524.a n = A336376 (n + 1)

end A336376

/-!
# A336377: Primes p(n) such that gcd(n, prime(n)+prime(n+2)) > 1.

The programs for A336377, the canonical program `A336377.P11303749911854219269` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336377 has offset 1).

The definition of A336377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6364 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336377.P11303749911854219269

`A000040(A336375(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A336377

/-- `A000040(A336375(n+1))` -/
def P11303749911854219269.Spec : Prop :=
  ∀ n, P11303749911854219269.a n = A336377 (n + 1)

theorem P11303749911854219269.correct : P11303749911854219269.Spec := by
  intro n
  simp only [A336377, Nat.add_sub_cancel]

end A336377

/-! ## A336377.P7887358461741552658

`A065091(A336375(n+1)-1)`
-/

namespace A336377.P7887358461741552658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A336375 (n + 1) - 1).toNat

end

end A336377.P7887358461741552658

namespace A336377

/-- `A065091(A336375(n+1)-1)` -/
def P7887358461741552658.Spec : Prop :=
  ∀ n, P7887358461741552658.a n = A336377 (n + 1)

end A336377

/-! ## A336377.P6325563120786799589

`∑{d}[A336375(n+1), A007444(#)]`
-/

namespace A336377.P6325563120786799589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A336377.P6325563120786799589

namespace A336377

/-- `∑{d}[A336375(n+1), A007444(#)]` -/
def P6325563120786799589.Spec : Prop :=
  ∀ n, P6325563120786799589.a n = A336377 (n + 1)

end A336377

/-! ## A336377.P7046416362306530456

`A000040(comp[A336374(n+1)-1]+1)`
-/

namespace A336377.P7046416362306530456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336374 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A336377.P7046416362306530456

namespace A336377

/-- `A000040(comp[A336374(n+1)-1]+1)` -/
def P7046416362306530456.Spec : Prop :=
  ∀ n, P7046416362306530456.a n = A336377 (n + 1)

end A336377

/-! ## A336377.P13926327416197748358

`A008578(A336375(n+1)+1)`
-/

namespace A336377.P13926327416197748358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A336375 (n + 1) + 1).toNat

end

end A336377.P13926327416197748358

namespace A336377

/-- `A008578(A336375(n+1)+1)` -/
def P13926327416197748358.Spec : Prop :=
  ∀ n, P13926327416197748358.a n = A336377 (n + 1)

end A336377

/-! ## A336377.P14797520258997657368

`A182986(A336375(n+1)+1)`
-/

namespace A336377.P14797520258997657368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A336375 (n + 1) + 1).toNat

end

end A336377.P14797520258997657368

namespace A336377

/-- `A182986(A336375(n+1)+1)` -/
def P14797520258997657368.Spec : Prop :=
  ∀ n, P14797520258997657368.a n = A336377 (n + 1)

end A336377

/-! ## A336377.P14196109802283776966

`A000040(lt[n, n*gcd(n, A048448(n+1))])`
-/

namespace A336377.P14196109802283776966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (n : ℤ) (A048448 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A336377.P14196109802283776966

namespace A336377

/-- `A000040(lt[n, n*gcd(n, A048448(n+1))])` -/
def P14196109802283776966.Spec : Prop :=
  ∀ n, P14196109802283776966.a n = A336377 (n + 1)

end A336377

/-! ## A336377.P4611067470242734960

`A073846(2*A336375(n+1))`
-/

namespace A336377.P4611067470242734960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A336375 (n + 1)).toNat

end

end A336377.P4611067470242734960

namespace A336377

/-- `A073846(2*A336375(n+1))` -/
def P4611067470242734960.Spec : Prop :=
  ∀ n, P4611067470242734960.a n = A336377 (n + 1)

end A336377

/-! ## A336377.P826340280973096350

`A207790(2*A336375(n+1))`
-/

namespace A336377.P826340280973096350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A336375 (n + 1)).toNat

end

end A336377.P826340280973096350

namespace A336377

/-- `A207790(2*A336375(n+1))` -/
def P826340280973096350.Spec : Prop :=
  ∀ n, P826340280973096350.a n = A336377 (n + 1)

end A336377

/-!
# A336378: Numbers k such that gcd(k, prime(k-1) + prime(k+1)) = 1.

The programs for A336378, there is no canonical definition to state claims against.
-/

/-! ## A336378.P9603497063314520316

`A000720(A336380(n+1))`
-/

namespace A336378.P9603497063314520316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A336380 (n + 1)).toNat

end

end A336378.P9603497063314520316

/-! ## A336378.P8825191374717314127

`A003963(p?[A336380(n+1)])`
-/

namespace A336378.P8825191374717314127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336378.P8825191374717314127

/-! ## A336378.P11546573653449561526

`A026233(p?[A336380(n+1)])`
-/

namespace A336378.P11546573653449561526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336378.P11546573653449561526

/-! ## A336378.P5213836741036308104

`A026238(p?[A336380(n+1)])`
-/

namespace A336378.P5213836741036308104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336378.P5213836741036308104

/-! ## A336378.P12727190363025205236

`A049084(p?[A336380(n+1)])`
-/

namespace A336378.P12727190363025205236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336378.P12727190363025205236

/-! ## A336378.P209956670397265221

`A055396(p?[A336380(n+1)])`
-/

namespace A336378.P209956670397265221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336378.P209956670397265221

/-! ## A336378.P1125718210585603251

`A056239(p?[A336380(n+1)])`
-/

namespace A336378.P1125718210585603251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336378.P1125718210585603251

/-! ## A336378.P918723125355643338

`A003963(or(1, A336380(n+1)))`
-/

namespace A336378.P918723125355643338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lor 1 (A336380 (n + 1))).toNat

end

end A336378.P918723125355643338

/-! ## A336378.P7178469018134077182

`A003963(2*A336380(n+1))`
-/

namespace A336378.P7178469018134077182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A336380 (n + 1)).toNat

end

end A336378.P7178469018134077182

/-! ## A336378.P6562898495791913788

`A003963(lcm(2, A336380(n+1)))`
-/

namespace A336378.P6562898495791913788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A336380 (n + 1)))

end

end A336378.P6562898495791913788

/-!
# A336379: Numbers k such that gcd(k, prime(k-1) + prime(k+1)) > 1.

The programs for A336379, the canonical program `A336379.P8722156963709162593` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336379 has offset 1).

The definition of A336379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336379.P8722156963709162593

`lt[1, gcd(n+1, A048448(n+1))]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A336379

/-- `lt[1, gcd(n+1, A048448(n+1))]+1` -/
def P8722156963709162593.Spec : Prop :=
  ∀ n, (P8722156963709162593.a n : ℤ) = A336379 (n + 1)

theorem P8722156963709162593.correct : P8722156963709162593.Spec := by
  intro n
  simp only [A336379, Nat.add_sub_cancel]

end A336379

/-! ## A336379.P14128827100374812579

`lt[1, gcd(A028310(n), A048448(n))]`
-/

namespace A336379.P14128827100374812579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A048448 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336379.P14128827100374812579

namespace A336379

/-- `lt[1, gcd(A028310(n), A048448(n))]` -/
def P14128827100374812579.Spec : Prop :=
  ∀ n, (P14128827100374812579.a n : ℤ) = A336379 (n + 1)

end A336379

/-! ## A336379.P117731295203116360

`A000720(A336381(n+1))`
-/

namespace A336379.P117731295203116360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A336381 (n + 1)).toNat

end

end A336379.P117731295203116360

namespace A336379

/-- `A000720(A336381(n+1))` -/
def P117731295203116360.Spec : Prop :=
  ∀ n, P117731295203116360.a n = A336379 (n + 1)

end A336379

/-! ## A336379.P13963317493779960572

`A003963(p?[A336381(n+1)])`
-/

namespace A336379.P13963317493779960572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336379.P13963317493779960572

namespace A336379

/-- `A003963(p?[A336381(n+1)])` -/
def P13963317493779960572.Spec : Prop :=
  ∀ n, P13963317493779960572.a n = A336379 (n + 1)

end A336379

/-! ## A336379.P6225915161114215108

`A026233(p?[A336381(n+1)])`
-/

namespace A336379.P6225915161114215108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336379.P6225915161114215108

namespace A336379

/-- `A026233(p?[A336381(n+1)])` -/
def P6225915161114215108.Spec : Prop :=
  ∀ n, P6225915161114215108.a n = A336379 (n + 1)

end A336379

/-! ## A336379.P8387919226464748906

`A026238(p?[A336381(n+1)])`
-/

namespace A336379.P8387919226464748906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336379.P8387919226464748906

namespace A336379

/-- `A026238(p?[A336381(n+1)])` -/
def P8387919226464748906.Spec : Prop :=
  ∀ n, P8387919226464748906.a n = A336379 (n + 1)

end A336379

/-! ## A336379.P13201404362336698993

`A049084(p?[A336381(n+1)])`
-/

namespace A336379.P13201404362336698993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336379.P13201404362336698993

namespace A336379

/-- `A049084(p?[A336381(n+1)])` -/
def P13201404362336698993.Spec : Prop :=
  ∀ n, P13201404362336698993.a n = A336379 (n + 1)

end A336379

/-! ## A336379.P450812259740742300

`A056239(p?[A336381(n+1)])`
-/

namespace A336379.P450812259740742300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336379.P450812259740742300

namespace A336379

/-- `A056239(p?[A336381(n+1)])` -/
def P450812259740742300.Spec : Prop :=
  ∀ n, P450812259740742300.a n = A336379 (n + 1)

end A336379

/-! ## A336379.P7992877508503971879

`A230980(p?[A336381(n+1)])`
-/

namespace A336379.P7992877508503971879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A336379.P7992877508503971879

namespace A336379

/-- `A230980(p?[A336381(n+1)])` -/
def P7992877508503971879.Spec : Prop :=
  ∀ n, P7992877508503971879.a n = A336379 (n + 1)

end A336379

/-! ## A336379.P2743009537142848295

`A230980(A336381(n+1)+1)`
-/

namespace A336379.P2743009537142848295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A336381 (n + 1) + 1).toNat

end

end A336379.P2743009537142848295

namespace A336379

/-- `A230980(A336381(n+1)+1)` -/
def P2743009537142848295.Spec : Prop :=
  ∀ n, P2743009537142848295.a n = A336379 (n + 1)

end A336379

/-! ## A336379.P11410808751389786999

`A036234(A336381(n+1)-1)`
-/

namespace A336379.P11410808751389786999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A336381 (n + 1) - 1).toNat

end

end A336379.P11410808751389786999

namespace A336379

/-- `A036234(A336381(n+1)-1)` -/
def P11410808751389786999.Spec : Prop :=
  ∀ n, P11410808751389786999.a n = A336379 (n + 1)

end A336379

/-!
# A336380: Primes p(k) such that gcd(k, prime(k-1)+prime(k+1)) = 1.

The programs for A336380, there is no canonical definition to state claims against.
-/

/-! ## A336380.P14315748131537587532

`A065091(A336378(n+1)-1)`
-/

namespace A336380.P14315748131537587532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A336378 (n + 1) - 1).toNat

end

end A336380.P14315748131537587532

/-! ## A336380.P15115719683292947684

`A000040(A336378(n+1))`
-/

namespace A336380.P15115719683292947684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A336378 (n + 1)).toNat

end

end A336380.P15115719683292947684

/-! ## A336380.P3204879533427419315

`A008578(A336378(n+1)+1)`
-/

namespace A336380.P3204879533427419315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A336378 (n + 1) + 1).toNat

end

end A336380.P3204879533427419315

/-! ## A336380.P770614828435959671

`A182986(A336378(n+1)+1)`
-/

namespace A336380.P770614828435959671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A336378 (n + 1) + 1).toNat

end

end A336380.P770614828435959671

/-! ## A336380.P18021671530434446456

`∑{d}[A336378(n+1), A007444(#)]`
-/

namespace A336380.P18021671530434446456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A336380.P18021671530434446456

/-! ## A336380.P13133851726635455405

`A158611(A336378(n+1)+2)`
-/

namespace A336380.P13133851726635455405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A336378 (n + 1) + 2).toNat

end

end A336380.P13133851726635455405

/-! ## A336380.P6959904562188254565

`A207790(2*A336378(n+1))`
-/

namespace A336380.P6959904562188254565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A336378 (n + 1)).toNat

end

end A336380.P6959904562188254565

/-!
# A336381: Primes p(n) such that gcd(n, prime(n-1)+prime(n+1)) > 1.

The programs for A336381, the canonical program `A336381.P12343124691346730794` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336381 has offset 1).

The definition of A336381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336381.P12343124691346730794

`A000040(A336379(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A336381

/-- `A000040(A336379(n+1))` -/
def P12343124691346730794.Spec : Prop :=
  ∀ n, P12343124691346730794.a n = A336381 (n + 1)

theorem P12343124691346730794.correct : P12343124691346730794.Spec := by
  intro n
  simp only [A336381, Nat.add_sub_cancel]

end A336381

/-! ## A336381.P5202218863967655878

`A045319(A336379(n+1)-1)`
-/

namespace A336381.P5202218863967655878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A336379 (n + 1) - 1).toNat

end

end A336381.P5202218863967655878

namespace A336381

/-- `A045319(A336379(n+1)-1)` -/
def P5202218863967655878.Spec : Prop :=
  ∀ n, P5202218863967655878.a n = A336381 (n + 1)

end A336381

/-! ## A336381.P15205553062719225200

`A045344(A336379(n+1)-1)`
-/

namespace A336381.P15205553062719225200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A336379 (n + 1) - 1).toNat

end

end A336381.P15205553062719225200

namespace A336381

/-- `A045344(A336379(n+1)-1)` -/
def P15205553062719225200.Spec : Prop :=
  ∀ n, P15205553062719225200.a n = A336381 (n + 1)

end A336381

/-! ## A336381.P5905708299043712410

`A065091(A336379(n+1)-1)`
-/

namespace A336381.P5905708299043712410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A336379 (n + 1) - 1).toNat

end

end A336381.P5905708299043712410

namespace A336381

/-- `A065091(A336379(n+1)-1)` -/
def P5905708299043712410.Spec : Prop :=
  ∀ n, P5905708299043712410.a n = A336381 (n + 1)

end A336381

/-! ## A336381.P12045772045664301535

`A000040(lt[1, gcd(n+1, A048448(n+1))]+1)`
-/

namespace A336381.P12045772045664301535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A048448 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A336381.P12045772045664301535

namespace A336381

/-- `A000040(lt[1, gcd(n+1, A048448(n+1))]+1)` -/
def P12045772045664301535.Spec : Prop :=
  ∀ n, P12045772045664301535.a n = A336381 (n + 1)

end A336381

/-! ## A336381.P553272054912295687

`A008578(A336379(n+1)+1)`
-/

namespace A336381.P553272054912295687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A336379 (n + 1) + 1).toNat

end

end A336381.P553272054912295687

namespace A336381

/-- `A008578(A336379(n+1)+1)` -/
def P553272054912295687.Spec : Prop :=
  ∀ n, P553272054912295687.a n = A336381 (n + 1)

end A336381

/-! ## A336381.P5393106713540968592

`A182986(A336379(n+1)+1)`
-/

namespace A336381.P5393106713540968592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A336379 (n + 1) + 1).toNat

end

end A336381.P5393106713540968592

namespace A336381

/-- `A182986(A336379(n+1)+1)` -/
def P5393106713540968592.Spec : Prop :=
  ∀ n, P5393106713540968592.a n = A336381 (n + 1)

end A336381

/-! ## A336381.P17928235665013140912

`A046022(A336379(n+1)+2)`
-/

namespace A336381.P17928235665013140912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A336379 (n + 1) + 2).toNat

end

end A336381.P17928235665013140912

namespace A336381

/-- `A046022(A336379(n+1)+2)` -/
def P17928235665013140912.Spec : Prop :=
  ∀ n, P17928235665013140912.a n = A336381 (n + 1)

end A336381

/-! ## A336381.P2228051656071173692

`A158611(A336379(n+1)+2)`
-/

namespace A336381.P2228051656071173692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A336379 (n + 1) + 2).toNat

end

end A336381.P2228051656071173692

namespace A336381

/-- `A158611(A336379(n+1)+2)` -/
def P2228051656071173692.Spec : Prop :=
  ∀ n, P2228051656071173692.a n = A336381 (n + 1)

end A336381

/-! ## A336381.P16740754640877233038

`A207790(2*A336379(n+1))`
-/

namespace A336381.P16740754640877233038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A336379 (n + 1)).toNat

end

end A336381.P16740754640877233038

namespace A336381

/-- `A207790(2*A336379(n+1))` -/
def P16740754640877233038.Spec : Prop :=
  ∀ n, P16740754640877233038.a n = A336381 (n + 1)

end A336381

/-!
# A336386: a(n) = bigomega(sigma(n)) - bigomega(n), where bigomega (A001222) gives the number of prime factors with multiplicity, and sigma (A000203) gives the sum of divisors.

The programs for A336386, the canonical program `A336386.P12127909231349214257` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336386 has offset 1).

The definition of A336386 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A058063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336386.P12127909231349214257

`A058063(n+1)-A001222(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A336386

/-- `A058063(n+1)-A001222(n+1)` -/
def P12127909231349214257.Spec : Prop :=
  ∀ n, P12127909231349214257.a n = A336386 (n + 1)

theorem P12127909231349214257.correct : P12127909231349214257.Spec := by
  intro n
  simp only [A336386, Nat.add_sub_cancel]

end A336386

/-! ## A336386.P2452130486703157884

`A058063(n+1)-Δ[A022559(n)]`
-/

namespace A336386.P2452130486703157884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058063 (n + 1) - (f1 (n + 1) - f1 n)

end

end A336386.P2452130486703157884

namespace A336386

/-- `A058063(n+1)-Δ[A022559(n)]` -/
def P2452130486703157884.Spec : Prop :=
  ∀ n, P2452130486703157884.a n = A336386 (n + 1)

end A336386

/-! ## A336386.P1960153845082542433

`A001222(∑{d}[n+1, #])-A001222(n+1)`
-/

namespace A336386.P1960153845082542433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f1 n), d) - A001222 (n + 1)

end

end A336386.P1960153845082542433

namespace A336386

/-- `A001222(∑{d}[n+1, #])-A001222(n+1)` -/
def P1960153845082542433.Spec : Prop :=
  ∀ n, P1960153845082542433.a n = A336386 (n + 1)

end A336386

/-! ## A336386.P14899658165954886021

`A001222(A245092(2*n+1))-∑{e}[n+1, #]`
-/

namespace A336386.P14899658165954886021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A245092 (2 * n + 1)).toNat - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A336386.P14899658165954886021

namespace A336386

/-- `A001222(A245092(2*n+1))-∑{e}[n+1, #]` -/
def P14899658165954886021.Spec : Prop :=
  ∀ n, P14899658165954886021.a n = A336386 (n + 1)

end A336386

/-! ## A336386.P11744732584472849763

`A001222(A064987(n+1)/(n+1))-∑{e}[n+1, #]`
-/

namespace A336386.P11744732584472849763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A336386.P11744732584472849763

namespace A336386

/-- `A001222(A064987(n+1)/(n+1))-∑{e}[n+1, #]` -/
def P11744732584472849763.Spec : Prop :=
  ∀ n, P11744732584472849763.a n = A336386 (n + 1)

end A336386

/-! ## A336386.P17042410225074879147

`A001222(A000203(n+1))-Δ[A022559(n)]`
-/

namespace A336386.P17042410225074879147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000203 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A336386.P17042410225074879147

namespace A336386

/-- `A001222(A000203(n+1))-Δ[A022559(n)]` -/
def P17042410225074879147.Spec : Prop :=
  ∀ n, P17042410225074879147.a n = A336386 (n + 1)

end A336386

/-! ## A336386.P7210669621662102457

`A001222(Δ[A160664(n)])-A001222(n+1)`
-/

namespace A336386.P7210669621662102457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat - A001222 (n + 1)

end

end A336386.P7210669621662102457

namespace A336386

/-- `A001222(Δ[A160664(n)])-A001222(n+1)` -/
def P7210669621662102457.Spec : Prop :=
  ∀ n, P7210669621662102457.a n = A336386 (n + 1)

end A336386

/-! ## A336386.P12446952497595223445

`A001222(A000203(n+1))-A001222(n+1)`
-/

namespace A336386.P12446952497595223445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000203 (n + 1)).toNat - A001222 (n + 1)

end

end A336386.P12446952497595223445

namespace A336386

/-- `A001222(A000203(n+1))-A001222(n+1)` -/
def P12446952497595223445.Spec : Prop :=
  ∀ n, P12446952497595223445.a n = A336386 (n + 1)

end A336386

/-! ## A336386.P5044925630026505336

`A001222(A276528(n+1))-A001222(n+1)`
-/

namespace A336386.P5044925630026505336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A276528 (n + 1)).toNat - A001222 (n + 1)

end

end A336386.P5044925630026505336

namespace A336386

/-- `A001222(A276528(n+1))-A001222(n+1)` -/
def P5044925630026505336.Spec : Prop :=
  ∀ n, P5044925630026505336.a n = A336386 (n + 1)

end A336386

/-! ## A336386.P11498157160251338268

`A001222(abs(A143348(n+1)))-A001222(n+1)`
-/

namespace A336386.P11498157160251338268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |A143348 (n + 1)|.toNat - A001222 (n + 1)

end

end A336386.P11498157160251338268

namespace A336386

/-- `A001222(abs(A143348(n+1)))-A001222(n+1)` -/
def P11498157160251338268.Spec : Prop :=
  ∀ n, P11498157160251338268.a n = A336386 (n + 1)

end A336386

/-! ## A336386.P9931094975322077508

`A001222(sqrt(A072861(n+1)))-A001222(n+1)`
-/

namespace A336386.P9931094975322077508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat - A001222 (n + 1)

end

end A336386.P9931094975322077508

namespace A336386

/-- `A001222(sqrt(A072861(n+1)))-A001222(n+1)` -/
def P9931094975322077508.Spec : Prop :=
  ∀ n, P9931094975322077508.a n = A336386 (n + 1)

end A336386

/-! ## A336386.P11422256479221249229

`A001222(∑[A340793(n+1)])-A001222(n+1)`
-/

namespace A336386.P11422256479221249229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A001222 (n + 1)

end

end A336386.P11422256479221249229

namespace A336386

/-- `A001222(∑[A340793(n+1)])-A001222(n+1)` -/
def P11422256479221249229.Spec : Prop :=
  ∀ n, P11422256479221249229.a n = A336386 (n + 1)

end A336386

/-! ## A336386.P3136882915824702519

`A001222(A074400(n+1))-(A001222(n+1)+1)`
-/

namespace A336386.P3136882915824702519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A074400 (n + 1)).toNat - (A001222 (n + 1) + 1)

end

end A336386.P3136882915824702519

namespace A336386

/-- `A001222(A074400(n+1))-(A001222(n+1)+1)` -/
def P3136882915824702519.Spec : Prop :=
  ∀ n, P3136882915824702519.a n = A336386 (n + 1)

end A336386

/-! ## A336386.P12461189505773397943

`A001222(A088580(n+1)-1)-A001222(n+1)`
-/

namespace A336386.P12461189505773397943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A088580 (n + 1) - 1).toNat - A001222 (n + 1)

end

end A336386.P12461189505773397943

namespace A336386

/-- `A001222(A088580(n+1)-1)-A001222(n+1)` -/
def P12461189505773397943.Spec : Prop :=
  ∀ n, P12461189505773397943.a n = A336386 (n + 1)

theorem P12461189505773397943.correct : P12461189505773397943.Spec := by
  intro n
  simp only [A336386, Nat.add_sub_cancel, A336386.P12461189505773397943.a, A336386.P12127909231349214257.a, A001222, A001222.P11318177267732088261.a, A058063, A058063.P11490708493934352292.a, A088580, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336386

/-! ## A336386.P11137870990609407387

`A001222(A155085(n+1)-(n+1))-A001222(n+1)`
-/

namespace A336386.P11137870990609407387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A155085 (n + 1) - (n + 1 : ℤ)).toNat - A001222 (n + 1)

end

end A336386.P11137870990609407387

namespace A336386

/-- `A001222(A155085(n+1)-(n+1))-A001222(n+1)` -/
def P11137870990609407387.Spec : Prop :=
  ∀ n, P11137870990609407387.a n = A336386 (n + 1)

theorem P11137870990609407387.correct : P11137870990609407387.Spec := by
  intro n
  simp only [A336386, Nat.add_sub_cancel, A336386.P11137870990609407387.a, A336386.P12127909231349214257.a, A001222, A001222.P11318177267732088261.a, A058063, A058063.P11490708493934352292.a, A155085, A155085.P3282672389110014595.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336386

/-! ## A336386.P17790827596422377779

`A001222(A343226(n+1)*A343227(n+1))-A001222(n+1)`
-/

namespace A336386.P17790827596422377779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A343226 (n + 1) * A343227 (n + 1)).toNat - A001222 (n + 1)

end

end A336386.P17790827596422377779

namespace A336386

/-- `A001222(A343226(n+1)*A343227(n+1))-A001222(n+1)` -/
def P17790827596422377779.Spec : Prop :=
  ∀ n, P17790827596422377779.a n = A336386 (n + 1)

end A336386

/-! ## A336386.P4604695345754998443

`A001222(A239050(n+1))-(A001222(n+1)+2)`
-/

namespace A336386.P4604695345754998443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A239050 (n + 1)).toNat - (A001222 (n + 1) + 2)

end

end A336386.P4604695345754998443

namespace A336386

/-- `A001222(A239050(n+1))-(A001222(n+1)+2)` -/
def P4604695345754998443.Spec : Prop :=
  ∀ n, P4604695345754998443.a n = A336386 (n + 1)

end A336386

/-! ## A336386.P7885553094987888497

`A001222(A262610(2*n+1))-A001222(n+1)`
-/

namespace A336386.P7885553094987888497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A262610 (2 * n + 1)).toNat - A001222 (n + 1)

end

end A336386.P7885553094987888497

namespace A336386

/-- `A001222(A262610(2*n+1))-A001222(n+1)` -/
def P7885553094987888497.Spec : Prop :=
  ∀ n, P7885553094987888497.a n = A336386 (n + 1)

end A336386

/-! ## A336386.P15200758122391729506

`A001222(A146076(2*(n+1)))-(A001222(n+1)+1)`
-/

namespace A336386.P15200758122391729506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A146076 (2 * (n + 1))).toNat - (A001222 (n + 1) + 1)

end

end A336386.P15200758122391729506

namespace A336386

/-- `A001222(A146076(2*(n+1)))-(A001222(n+1)+1)` -/
def P15200758122391729506.Spec : Prop :=
  ∀ n, P15200758122391729506.a n = A336386 (n + 1)

end A336386

/-! ## A336386.P14236041525990059840

`A073093(A000203(n+1))-A073093(n+1)`
-/

namespace A336386.P14236041525990059840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A000203 (n + 1)).toNat - A073093 (n + 1)

end

end A336386.P14236041525990059840

namespace A336386

/-- `A073093(A000203(n+1))-A073093(n+1)` -/
def P14236041525990059840.Spec : Prop :=
  ∀ n, P14236041525990059840.a n = A336386 (n + 1)

theorem P14236041525990059840.correct : P14236041525990059840.Spec := by
  intro n
  simp only [A336386, Nat.add_sub_cancel, A336386.P14236041525990059840.a, A336386.P12127909231349214257.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001222, A001222.P11318177267732088261.a, A058063, A058063.P11490708493934352292.a, A073093, A073093.P258081957281391684.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336386

/-!
# A336387: Number of prime divisors of n that do not divide sigma(n); a(1) = 0.

The programs for A336387, the canonical program `A336387.P1320886943050929748` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336387 has offset 1).

The definition of A336387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336387.P1320886943050929748

`∑{p}[n+1, gcd(#, A000203(n+1))%#]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A336387

/-- `∑{p}[n+1, gcd(#, A000203(n+1))%#]` -/
def P1320886943050929748.Spec : Prop :=
  ∀ n, (P1320886943050929748.a n : ℤ) = A336387 (n + 1)

theorem P1320886943050929748.correct : P1320886943050929748.Spec := by
  intro n
  simp only [A336387, Nat.add_sub_cancel]

end A336387

/-! ## A336387.P2539802129685072461

`A001221(n+1)-A336388(n+1)`
-/

namespace A336387.P2539802129685072461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A336388 (n + 1)

end

end A336387.P2539802129685072461

namespace A336387

/-- `A001221(n+1)-A336388(n+1)` -/
def P2539802129685072461.Spec : Prop :=
  ∀ n, P2539802129685072461.a n = A336387 (n + 1)

end A336387

/-! ## A336387.P11809731781652885221

`A001221(n+1)-A001221(A009194(n+1))`
-/

namespace A336387.P11809731781652885221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A009194 (n + 1)).toNat

end

end A336387.P11809731781652885221

namespace A336387

/-- `A001221(n+1)-A001221(A009194(n+1))` -/
def P11809731781652885221.Spec : Prop :=
  ∀ n, P11809731781652885221.a n = A336387 (n + 1)

end A336387

/-! ## A336387.P14537345403461393950

`A001221(n+1)-A001221(A306682(n+1))`
-/

namespace A336387.P14537345403461393950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A306682 (n + 1)).toNat

end

end A336387.P14537345403461393950

namespace A336387

/-- `A001221(n+1)-A001221(A306682(n+1))` -/
def P14537345403461393950.Spec : Prop :=
  ∀ n, P14537345403461393950.a n = A336387 (n + 1)

end A336387

/-! ## A336387.P3334319118335616403

`A056169(A007947(n+1)*A009194(n+1))`
-/

namespace A336387.P3334319118335616403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A007947 (n + 1) * A009194 (n + 1)).toNat

end

end A336387.P3334319118335616403

namespace A336387

/-- `A056169(A007947(n+1)*A009194(n+1))` -/
def P3334319118335616403.Spec : Prop :=
  ∀ n, P3334319118335616403.a n = A336387 (n + 1)

end A336387

/-!
# A336388: Number of prime divisors of sigma(n) that divide n; a(1) = 0.

The programs for A336388, the canonical program `A336388.P8538346120847863118` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336388 has offset 1).

The definition of A336388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336388.P18334413101568012611

`A001222(gcd(∑{d}[n+1, #]-(n+1), ∏{p}[n+1, #]))`
-/

namespace A336388.P18334413101568012611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)) ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ))

end

end A336388.P18334413101568012611

namespace A336388

/-- `A001222(gcd(∑{d}[n+1, #]-(n+1), ∏{p}[n+1, #]))` -/
def P18334413101568012611.Spec : Prop :=
  ∀ n, P18334413101568012611.a n = A336388 (n + 1)

end A336388

/-! ## A336388.P3009117241024324918

`A001221(A009194(n+1))`
-/

namespace A336388.P3009117241024324918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A009194 (n + 1)).toNat

end

end A336388.P3009117241024324918

namespace A336388

/-- `A001221(A009194(n+1))` -/
def P3009117241024324918.Spec : Prop :=
  ∀ n, P3009117241024324918.a n = A336388 (n + 1)

end A336388

/-! ## A336388.P9498069417206319604

`A001221(A306682(n+1))`
-/

namespace A336388.P9498069417206319604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A306682 (n + 1)).toNat

end

end A336388.P9498069417206319604

namespace A336388

/-- `A001221(A306682(n+1))` -/
def P9498069417206319604.Spec : Prop :=
  ∀ n, P9498069417206319604.a n = A336388 (n + 1)

end A336388

/-! ## A336388.P8538346120847863118

`∑{p}[A009194(n+1), A009194(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A336388

/-- `∑{p}[A009194(n+1), A009194(#)]` -/
def P8538346120847863118.Spec : Prop :=
  ∀ n, P8538346120847863118.a n = A336388 (n + 1)

theorem P8538346120847863118.correct : P8538346120847863118.Spec := by
  intro n
  simp only [A336388, Nat.add_sub_cancel]

end A336388

/-! ## A336388.P4617612183423917873

`∑{p}[A306682(n+1), A306682(#)]`
-/

namespace A336388.P4617612183423917873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A306682 p

end

end A336388.P4617612183423917873

namespace A336388

/-- `∑{p}[A306682(n+1), A306682(#)]` -/
def P4617612183423917873.Spec : Prop :=
  ∀ n, P4617612183423917873.a n = A336388 (n + 1)

end A336388

/-! ## A336388.P16066586451867933980

`A001221(n+1)-A336387(n+1)`
-/

namespace A336388.P16066586451867933980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A336387 (n + 1)

end

end A336388.P16066586451867933980

namespace A336388

/-- `A001221(n+1)-A336387(n+1)` -/
def P16066586451867933980.Spec : Prop :=
  ∀ n, P16066586451867933980.a n = A336388 (n + 1)

end A336388

/-! ## A336388.P14012722298701630367

`A001221((n+1)/A017666(n+1))`
-/

namespace A336388.P14012722298701630367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A017666 (n + 1) : ℚ))).toNat

end

end A336388.P14012722298701630367

namespace A336388

/-- `A001221((n+1)/A017666(n+1))` -/
def P14012722298701630367.Spec : Prop :=
  ∀ n, P14012722298701630367.a n = A336388 (n + 1)

end A336388

/-! ## A336388.P6800685300718581896

`A001221(gcd(n+1, A000203(n+1)))`
-/

namespace A336388.P6800685300718581896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (n + 1 : ℤ) (A000203 (n + 1)))

end

end A336388.P6800685300718581896

namespace A336388

/-- `A001221(gcd(n+1, A000203(n+1)))` -/
def P6800685300718581896.Spec : Prop :=
  ∀ n, P6800685300718581896.a n = A336388 (n + 1)

end A336388

/-! ## A336388.P2030942193892774948

`A001222(gcd(A001065(n+1), A007947(n+1)))`
-/

namespace A336388.P2030942193892774948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A001065 (n + 1)) (A007947 (n + 1)))

end

end A336388.P2030942193892774948

namespace A336388

/-- `A001222(gcd(A001065(n+1), A007947(n+1)))` -/
def P2030942193892774948.Spec : Prop :=
  ∀ n, P2030942193892774948.a n = A336388 (n + 1)

end A336388

/-! ## A336388.P8980949362096958630

`A001221(gcd(A000027(n+1), A245092(2*n+1)))`
-/

namespace A336388.P8980949362096958630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A000027 (n + 1)) (A245092 (2 * n + 1)))

end

end A336388.P8980949362096958630

namespace A336388

/-- `A001221(gcd(A000027(n+1), A245092(2*n+1)))` -/
def P8980949362096958630.Spec : Prop :=
  ∀ n, P8980949362096958630.a n = A336388 (n + 1)

end A336388

/-! ## A336388.P9703466302461853839

`A001221(A324544(A250245(n+1)))`
-/

namespace A336388.P9703466302461853839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A324544 (A250245 (n + 1)).toNat).toNat

end

end A336388.P9703466302461853839

namespace A336388

/-- `A001221(A324544(A250245(n+1)))` -/
def P9703466302461853839.Spec : Prop :=
  ∀ n, P9703466302461853839.a n = A336388 (n + 1)

end A336388

/-! ## A336388.P7244267832213067471

`A001221(A004736(A286591(n+1)))`
-/

namespace A336388.P7244267832213067471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A004736 (A286591 (n + 1)).toNat).toNat

end

end A336388.P7244267832213067471

namespace A336388

/-- `A001221(A004736(A286591(n+1)))` -/
def P7244267832213067471.Spec : Prop :=
  ∀ n, P7244267832213067471.a n = A336388 (n + 1)

end A336388

/-! ## A336388.P10378990177863234250

`A001221(A324396(A005940(n+2)))`
-/

namespace A336388.P10378990177863234250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A324396 (A005940 (n + 2)).toNat).toNat

end

end A336388.P10378990177863234250

namespace A336388

/-- `A001221(A324396(A005940(n+2)))` -/
def P10378990177863234250.Spec : Prop :=
  ∀ n, P10378990177863234250.a n = A336388 (n + 1)

end A336388

/-! ## A336388.P2394802960116345195

`A326194(A009195(A009194(n+1)²))`
-/

namespace A336388.P2394802960116345195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326194 (A009195 (A009194 (n + 1) ^ 2).toNat).toNat

end

end A336388.P2394802960116345195

namespace A336388

/-- `A326194(A009195(A009194(n+1)²))` -/
def P2394802960116345195.Spec : Prop :=
  ∀ n, P2394802960116345195.a n = A336388 (n + 1)

end A336388

/-!
# A336389: 

The programs for A336389, there is no canonical definition to state claims against.
-/

/-! ## A336389.P2513826936786420608

`A108951(A337478(n))`
-/

namespace A336389.P2513826936786420608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A337478 n).toNat

end

end A336389.P2513826936786420608

/-!
# A336390: Lexicographically earliest infinite sequence such that a(i) = a(j) => A336467(i) = A336467(j) and A336158(i) = A336158(j), for all i, j >= 1.

The programs for A336390, there is no canonical definition to state claims against.
-/

/-! ## A336390.P13707891609681771977

`gcd(A066220(n+1), A365391(n+1))`
-/

namespace A336390.P13707891609681771977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066220 (n + 1)) (A365391 (n + 1))

end

end A336390.P13707891609681771977

/-! ## A336390.P13627882049222343159

`and(A326391(n+1), A365391(n+1))`
-/

namespace A336390.P13627882049222343159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A326391 (n + 1)) (A365391 (n + 1))

end

end A336390.P13627882049222343159

/-! ## A336390.P10225217769101338990

`A365391(n+1)+A000007(A111975(n))`
-/

namespace A336390.P10225217769101338990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365391 (n + 1) + A000007 (A111975 n).toNat

end

end A336390.P10225217769101338990

/-! ## A336390.P4416847390503050606

`A365391(n+1)%A094776(A057366(n))`
-/

namespace A336390.P4416847390503050606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365391 (n + 1)) (A094776 (A057366 n).toNat)

end

end A336390.P4416847390503050606

/-! ## A336390.P6352263179489961804

`A324825(A027758(n+1))*A365391(n+1)`
-/

namespace A336390.P6352263179489961804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324825 (A027758 (n + 1)).toNat * A365391 (n + 1)

end

end A336390.P6352263179489961804

/-!
# A336391: Lexicographically earliest infinite sequence such that a(i) = a(j) => A331410(i) = A331410(j) and A336158(i) = A336158(j), for all i, j >= 1.

The programs for A336391, there is no canonical definition to state claims against.
-/

/-! ## A336391.P10158363307247236479

`A007895(A114585((n+1)/2^val(n+1, 2))²)`
-/

namespace A336391.P10158363307247236479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A114585 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat ^ 2).toNat

end

end A336391.P10158363307247236479

/-! ## A336391.P11137110011409640706

`A329317((floor(n/(xor(n, n+1)+1))+1)^A156263(n+1))`
-/

namespace A336391.P11137110011409640706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329317 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1 : ℚ) ^ (A156263 (n + 1) : ℤ))).toNat

end

end A336391.P11137110011409640706

/-! ## A336391.P3235504467130596994

`A087117(A000005(2^(-1%(n+1)+n)))+A059268(A242447(n+2))`
-/

namespace A336391.P3235504467130596994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.tmod (-1) (n + 1 : ℤ) + (n : ℤ) : ℤ))).toNat).toNat + A059268 (A242447 (n + 2)).toNat

end

end A336391.P3235504467130596994

/-! ## A336391.P9085444679644556385

`A336363(n+1)+A063050((6-n)²)`
-/

namespace A336391.P9085444679644556385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336363 (n + 1) + A063050 ((6 - (n : ℤ)) ^ 2).toNat

end

end A336391.P9085444679644556385

/-! ## A336391.P5034759844963738712

`A336363(n+1)+A063065(A227263(n+1))`
-/

namespace A336391.P5034759844963738712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336363 (n + 1) + A063065 (A227263 (n + 1)).toNat

end

end A336391.P5034759844963738712

/-!
# A336392: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278222(i) = A278222(j) and A336467(i) = A336467(j), for all i, j >= 1.

The programs for A336392, there is no canonical definition to state claims against.
-/

/-! ## A336392.P4641158405877719810

`A003602(n+1)%A066520(A075460(n+1))`
-/

namespace A336392.P4641158405877719810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003602 (n + 1)) (A066520 (A075460 (n + 1)).toNat)

end

end A336392.P4641158405877719810

/-! ## A336392.P16121468165796974486

`(floor(n/(xor(n, n+1)+1))+1)%(A357134(2*n+1)+1)`
-/

namespace A336392.P16121468165796974486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (A357134 (2 * n + 1) + 1)

end

end A336392.P16121468165796974486

/-! ## A336392.P14340515728325533168

`(floor(n/(xor(n, n+1)+1))+1)%A095314(A208741(n+3))`
-/

namespace A336392.P14340515728325533168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (A095314 (A208741 (n + 3)).toNat)

end

end A336392.P14340515728325533168

/-! ## A336392.P16591576606882593823

`A003602(n+1)%A258928(A017817(n))`
-/

namespace A336392.P16591576606882593823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003602 (n + 1)) (A258928 (A017817 n).toNat)

end

end A336392.P16591576606882593823

/-! ## A336392.P6320272351100162393

`A336934(n+1)%A258928(A017817(n))`
-/

namespace A336392.P6320272351100162393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336934 (n + 1)) (A258928 (A017817 n).toNat)

end

end A336392.P6320272351100162393

/-!
# A336393: Lexicographically earliest infinite sequence such that a(i) = a(j) => A336467(i) = A336467(j) and A278221(A000265(i)) = A278221(A000265(j)), for all i, j >= 1.

The programs for A336393, there is no canonical definition to state claims against.
-/

/-! ## A336393.P1427505382321425408

`A336395(lcm(n+1, 2^ceil(n/2)))`
-/

namespace A336393.P1427505382321425408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336395 (Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))))

end

end A336393.P1427505382321425408

/-! ## A336393.P11324705993764396551

`A336395(lcm(6, (n+1)^3)/6*(n+1)/∏{p}[n+1, #])`
-/

namespace A336393.P11324705993764396551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336395 (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6 * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)))).toNat

end

end A336393.P11324705993764396551

/-! ## A336393.P10614039032553651109

`A336395((n+1)/∏{p}[n+1, #]*floor(sqrt((n+1)^6+3)))`
-/

namespace A336393.P10614039032553651109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (Nat.sqrt ((n + 1) ^ 6 + 3) : ℚ))).toNat

end

end A336393.P10614039032553651109

/-! ## A336393.P16478632732306251215

`A336395(((n+1)/2^val(n+1, 2))^((n+1)/∏{p}[n+1, #]))`
-/

namespace A336393.P16478632732306251215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336395 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) : ℝ))).toNat

end

end A336393.P16478632732306251215

/-! ## A336393.P14565562590600881214

`A336395(A093968(n+1))`
-/

namespace A336393.P14565562590600881214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336395 (A093968 (n + 1)).toNat

end

end A336393.P14565562590600881214

/-!
# A336394: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278222(i) = A278222(j) and A331410(i) = A331410(j), for all i, j >= 1.

The programs for A336394, there is no canonical definition to state claims against.
-/

/-! ## A336394.P2799675686839405938

`A346698(A100426(floor(n/(xor(n, n+1)+1))+1)²)`
-/

namespace A336394.P2799675686839405938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A100426 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat ^ 2).toNat

end

end A336394.P2799675686839405938

/-! ## A336394.P6273952713138876705

`A003963(n+1)-A016389(A143453(n))`
-/

namespace A336394.P6273952713138876705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - A016389 (A143453 n).toNat

end

end A336394.P6273952713138876705

/-! ## A336394.P12381448078044354912

`A003963(n+1)-A045840(A080508(n+1))`
-/

namespace A336394.P12381448078044354912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - A045840 (A080508 (n + 1)).toNat

end

end A336394.P12381448078044354912

/-! ## A336394.P9373003546575022397

`A003963(n+1)-A010051(A158145(n+1))`
-/

namespace A336394.P9373003546575022397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - A010051 (A158145 (n + 1)).toNat

end

end A336394.P9373003546575022397

/-! ## A336394.P13439102866376366505

`A335880(A234741(n+1)%A371448(3*(n+1)))`
-/

namespace A336394.P13439102866376366505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335880 (Int.tmod (A234741 (n + 1)) (A371448 (3 * (n + 1)))).toNat

end

end A336394.P13439102866376366505

/-!
# A336395: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278221(A000265(i)) = A278221(A000265(j)), for all i, j >= 1.

The programs for A336395, there is no canonical definition to state claims against.
-/

/-! ## A336395.P16871560431463850606

`A285879(A204455((2*(n+1))^2))`
-/

namespace A336395.P16871560431463850606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285879 (A204455 ((2 * (n + 1)) ^ 2)).toNat

end

end A336395.P16871560431463850606

/-! ## A336395.P7996727310955105631

`A336393(A007947(n+1)*A016116(n))`
-/

namespace A336395.P7996727310955105631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336393 (A007947 (n + 1) * A016116 n).toNat

end

end A336395.P7996727310955105631

/-! ## A336395.P914357382150851867

`A336393(n+1)%A267715(A071817(n+3))`
-/

namespace A336395.P914357382150851867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336393 (n + 1)) (A267715 (A071817 (n + 3)).toNat)

end

end A336395.P914357382150851867

/-!
# A336396: a(n) = A329697(n) - A087436(n).

The programs for A336396, the canonical program `A336396.P16969858180878355374` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336396 has offset 1).

The definition of A336396 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087436, A329697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336396.P13496832735349071141

`A329697(A336466(n+1))`
-/

namespace A336396.P13496832735349071141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A336466 (n + 1)).toNat

end

end A336396.P13496832735349071141

namespace A336396

/-- `A329697(A336466(n+1))` -/
def P13496832735349071141.Spec : Prop :=
  ∀ n, P13496832735349071141.a n = A336396 (n + 1)

end A336396

/-! ## A336396.P16969858180878355374

`A329697(n+1)-A087436(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A336396

/-- `A329697(n+1)-A087436(n+1)` -/
def P16969858180878355374.Spec : Prop :=
  ∀ n, P16969858180878355374.a n = A336396 (n + 1)

theorem P16969858180878355374.correct : P16969858180878355374.Spec := by
  intro n
  simp only [A336396, Nat.add_sub_cancel]

end A336396

/-! ## A336396.P16928431465376136239

`A336469(n+1)-A046660(A000265(n+1))`
-/

namespace A336396.P16928431465376136239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336469 (n + 1) - A046660 (A000265 (n + 1)).toNat

end

end A336396.P16928431465376136239

namespace A336396

/-- `A336469(n+1)-A046660(A000265(n+1))` -/
def P16928431465376136239.Spec : Prop :=
  ∀ n, P16928431465376136239.a n = A336396 (n + 1)

end A336396

/-! ## A336396.P9330802359675977640

`A329697(A003958(n+1))`
-/

namespace A336396.P9330802359675977640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A003958 (n + 1)).toNat

end

end A336396.P9330802359675977640

namespace A336396

/-- `A329697(A003958(n+1))` -/
def P9330802359675977640.Spec : Prop :=
  ∀ n, P9330802359675977640.a n = A336396 (n + 1)

end A336396

/-! ## A336396.P14453819154672502318

`A329697(A333787(n+1))`
-/

namespace A336396.P14453819154672502318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A333787 (n + 1)).toNat

end

end A336396.P14453819154672502318

namespace A336396

/-- `A329697(A333787(n+1))` -/
def P14453819154672502318.Spec : Prop :=
  ∀ n, P14453819154672502318.a n = A336396 (n + 1)

end A336396

/-! ## A336396.P13533961195132870962

`A318995(A359587(n+1))`
-/

namespace A336396.P13533961195132870962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A359587 (n + 1)).toNat

end

end A336396.P13533961195132870962

namespace A336396

/-- `A318995(A359587(n+1))` -/
def P13533961195132870962.Spec : Prop :=
  ∀ n, P13533961195132870962.a n = A336396 (n + 1)

end A336396

/-! ## A336396.P17789795139502814740

`A336921(n+1)-A335877(n+1)`
-/

namespace A336396.P17789795139502814740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336921 (n + 1) - A335877 (n + 1)

end

end A336396.P17789795139502814740

namespace A336396

/-- `A336921(n+1)-A335877(n+1)` -/
def P17789795139502814740.Spec : Prop :=
  ∀ n, P17789795139502814740.a n = A336396 (n + 1)

theorem P17789795139502814740.correct : P17789795139502814740.Spec := by
  intro n
  simp only [A336396, Nat.add_sub_cancel, A336396.P17789795139502814740.a, A336396.P16969858180878355374.a, A087436, A087436.P13287701826401831056.a, A329697, A329697.P6355568551452954971.a, A335877, A335877.P9922726367996187859.a, A336921, A336921.P608047927114178291.a, A001222, A001222.P11318177267732088261.a, A007814, A007814.P13537437864234730737.a, A064097, A064097.P8268505920434442649.a, A064415, A064415.P3438679109517359530.a, A331410, A331410.P1765792121065572382.a, A001511, A001511.P17146462531039486101.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A309243, A309243.P2615360336711731693.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P2772582252347773295.a, A006519, A006519.P10435570611646570274.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A171462, A171462.P186066025836437895.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336396

/-! ## A336396.P16091403880065901687

`A329697(n+1)-A001222(A000265(n+1))`
-/

namespace A336396.P16091403880065901687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) - A001222 (A000265 (n + 1)).toNat

end

end A336396.P16091403880065901687

namespace A336396

/-- `A329697(n+1)-A001222(A000265(n+1))` -/
def P16091403880065901687.Spec : Prop :=
  ∀ n, P16091403880065901687.a n = A336396 (n + 1)

end A336396

/-! ## A336396.P14553928437969489346

`A329697(n+1)-A001222(A064989(n+1))`
-/

namespace A336396.P14553928437969489346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) - A001222 (A064989 (n + 1)).toNat

end

end A336396.P14553928437969489346

namespace A336396

/-- `A329697(n+1)-A001222(A064989(n+1))` -/
def P14553928437969489346.Spec : Prop :=
  ∀ n, P14553928437969489346.a n = A336396 (n + 1)

end A336396

/-! ## A336396.P5333511753070155488

`A056239(A359587(n+1))-A087436(n+1)`
-/

namespace A336396.P5333511753070155488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A359587 (n + 1)).toNat - A087436 (n + 1)

end

end A336396.P5333511753070155488

namespace A336396

/-- `A056239(A359587(n+1))-A087436(n+1)` -/
def P5333511753070155488.Spec : Prop :=
  ∀ n, P5333511753070155488.a n = A336396 (n + 1)

end A336396

/-! ## A336396.P9927112993795336584

`A329697(n+1)-A001222(A336158(n+1))`
-/

namespace A336396.P9927112993795336584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) - A001222 (A336158 (n + 1)).toNat

end

end A336396.P9927112993795336584

namespace A336396

/-- `A329697(n+1)-A001222(A336158(n+1))` -/
def P9927112993795336584.Spec : Prop :=
  ∀ n, P9927112993795336584.a n = A336396 (n + 1)

end A336396

/-! ## A336396.P4982439219164672418

`A329697(n+1)-A001222(A359587(n+1))`
-/

namespace A336396.P4982439219164672418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) - A001222 (A359587 (n + 1)).toNat

end

end A336396.P4982439219164672418

namespace A336396

/-- `A329697(n+1)-A001222(A359587(n+1))` -/
def P4982439219164672418.Spec : Prop :=
  ∀ n, P4982439219164672418.a n = A336396 (n + 1)

end A336396

/-! ## A336396.P4236792330987955204

`A329697(A349912(n+1)-A349911(n+1))`
-/

namespace A336396.P4236792330987955204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A349912 (n + 1) - A349911 (n + 1)).toNat

end

end A336396.P4236792330987955204

namespace A336396

/-- `A329697(A349912(n+1)-A349911(n+1))` -/
def P4236792330987955204.Spec : Prop :=
  ∀ n, P4236792330987955204.a n = A336396 (n + 1)

end A336396

/-! ## A336396.P14917023960163842337

`A005087(n+1)+A336469(n+1)-A087436(n+1)`
-/

namespace A336396.P14917023960163842337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1) + (A336469 (n + 1) - A087436 (n + 1))

end

end A336396.P14917023960163842337

namespace A336396

/-- `A005087(n+1)+A336469(n+1)-A087436(n+1)` -/
def P14917023960163842337.Spec : Prop :=
  ∀ n, P14917023960163842337.a n = A336396 (n + 1)

theorem P14917023960163842337.correct : P14917023960163842337.Spec := by
  intro n
  simp only [A336396, Nat.add_sub_cancel, A336396.P14917023960163842337.a, A336396.P16969858180878355374.a, A005087, A005087.P16485891650271078461.f1, A005087.P16485891650271078461.a, A087436, A087436.P13287701826401831056.a, A329697, A329697.P6355568551452954971.a, A336469, A336469.P9620185897901534165.a, A001222, A001222.P11318177267732088261.a, A007814, A007814.P13537437864234730737.a, A064097, A064097.P8268505920434442649.a, A064415, A064415.P3438679109517359530.a, A001511, A001511.P17146462531039486101.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A309243, A309243.P2615360336711731693.a, A006519, A006519.P10435570611646570274.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A171462, A171462.P186066025836437895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336396

/-! ## A336396.P9327678694977561493

`A334861(n+1)-(A331410(n+1)+A087436(n+1))`
-/

namespace A336396.P9327678694977561493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334861 (n + 1) - (A331410 (n + 1) + A087436 (n + 1))

end

end A336396.P9327678694977561493

namespace A336396

/-- `A334861(n+1)-(A331410(n+1)+A087436(n+1))` -/
def P9327678694977561493.Spec : Prop :=
  ∀ n, P9327678694977561493.a n = A336396 (n + 1)

theorem P9327678694977561493.correct : P9327678694977561493.Spec := by
  intro n
  simp only [A336396, Nat.add_sub_cancel, A336396.P9327678694977561493.a, A336396.P16969858180878355374.a, A087436, A087436.P13287701826401831056.a, A329697, A329697.P6355568551452954971.a, A331410, A331410.P1765792121065572382.a, A334861, A334861.P8338568547344458298.a, A001222, A001222.P11318177267732088261.a, A007814, A007814.P13537437864234730737.a, A064097, A064097.P8268505920434442649.a, A064415, A064415.P3438679109517359530.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P2772582252347773295.a, A001511, A001511.P17146462531039486101.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A206787, A206787.P5835391057460083436.a, A309243, A309243.P2615360336711731693.a, A336651, A336651.P16001873672567347965.a, A003602, A003602.P7612175048291952394.a, A006519, A006519.P10435570611646570274.a, A006530, A006530.P13372528560459906635.a, A010684, A010684.P14019262024924378744.a, A029837, A029837.P1050578713049589.a, A048250, A048250.P6137918235727910070.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A171462, A171462.P186066025836437895.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336396

/-! ## A336396.P7269139732731631938

`A329697(n+1)+A336921(n+1)-A331410(n+1)`
-/

namespace A336396.P7269139732731631938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) + (A336921 (n + 1) - A331410 (n + 1))

end

end A336396.P7269139732731631938

namespace A336396

/-- `A329697(n+1)+A336921(n+1)-A331410(n+1)` -/
def P7269139732731631938.Spec : Prop :=
  ∀ n, P7269139732731631938.a n = A336396 (n + 1)

theorem P7269139732731631938.correct : P7269139732731631938.Spec := by
  intro n
  simp only [A336396, Nat.add_sub_cancel, A336396.P7269139732731631938.a, A336396.P16969858180878355374.a, A087436, A087436.P13287701826401831056.a, A329697, A329697.P6355568551452954971.a, A331410, A331410.P1765792121065572382.a, A336921, A336921.P608047927114178291.a, A001222, A001222.P11318177267732088261.a, A007814, A007814.P13537437864234730737.a, A064097, A064097.P8268505920434442649.a, A064415, A064415.P3438679109517359530.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P2772582252347773295.a, A001511, A001511.P17146462531039486101.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A206787, A206787.P5835391057460083436.a, A309243, A309243.P2615360336711731693.a, A336651, A336651.P16001873672567347965.a, A003602, A003602.P7612175048291952394.a, A006519, A006519.P10435570611646570274.a, A006530, A006530.P13372528560459906635.a, A010684, A010684.P14019262024924378744.a, A029837, A029837.P1050578713049589.a, A048250, A048250.P6137918235727910070.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A171462, A171462.P186066025836437895.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336396

/-! ## A336396.P10195166873128684604

`A329697(n+1)+A336118(n+1)-A335904(n+1)`
-/

namespace A336396.P10195166873128684604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) + (A336118 (n + 1) - A335904 (n + 1))

end

end A336396.P10195166873128684604

namespace A336396

/-- `A329697(n+1)+A336118(n+1)-A335904(n+1)` -/
def P10195166873128684604.Spec : Prop :=
  ∀ n, P10195166873128684604.a n = A336396 (n + 1)

end A336396

/-! ## A336396.P3108206842992194691

`A331410(n+1)-A335877(n+1)-A001222((n+1)/and(n+1, -(n+1)))`
-/

namespace A336396.P3108206842992194691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A335877 (n + 1) - A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A336396.P3108206842992194691

namespace A336396

/-- `A331410(n+1)-A335877(n+1)-A001222((n+1)/and(n+1, -(n+1)))` -/
def P3108206842992194691.Spec : Prop :=
  ∀ n, P3108206842992194691.a n = A336396 (n + 1)

end A336396

/-! ## A336396.P6981465111765055181

`A056239(A359587(A336466(A000265(n+1))))`
-/

namespace A336396.P6981465111765055181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A359587 (A336466 (A000265 (n + 1)).toNat).toNat).toNat

end

end A336396.P6981465111765055181

namespace A336396

/-- `A056239(A359587(A336466(A000265(n+1))))` -/
def P6981465111765055181.Spec : Prop :=
  ∀ n, P6981465111765055181.a n = A336396 (n + 1)

end A336396

/-! ## A336396.P4937521682736186746

`A331410(n+1)-A335877(n+1)-A001222(A336158(n+1))`
-/

namespace A336396.P4937521682736186746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A335877 (n + 1) - A001222 (A336158 (n + 1)).toNat

end

end A336396.P4937521682736186746

namespace A336396

/-- `A331410(n+1)-A335877(n+1)-A001222(A336158(n+1))` -/
def P4937521682736186746.Spec : Prop :=
  ∀ n, P4937521682736186746.a n = A336396 (n + 1)

end A336396

/-!
# A336398: Number of rational knots (or two-bridge knots) with n crossings (chiral pairs counted as distinct).

The programs for A336398, the canonical program `A336398.P18387699824863398956` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336398 has offset 2).

The definition of A336398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336398.P18387699824863398956

`a(n-1)+3*a(n-2)-a(n-3)-2*a(n-5)-4*a(n-6)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=4, a(4)=5, a(5)=14`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A336398

/-- `a(n-1)+3*a(n-2)-a(n-3)-2*a(n-5)-4*a(n-6)` -/
def P18387699824863398956.Spec : Prop :=
  ∀ n, P18387699824863398956.a n = A336398 (n + 2)

theorem P18387699824863398956.correct : P18387699824863398956.Spec := by
  intro n
  simp only [A336398, Nat.add_sub_cancel]

end A336398

/-! ## A336398.P12005636197234114369

`A001045(∑[n]%(n+1))+A001045(n)`
-/

namespace A336398.P12005636197234114369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) + A001045 n

end

end A336398.P12005636197234114369

namespace A336398

/-- `A001045(∑[n]%(n+1))+A001045(n)` -/
def P12005636197234114369.Spec : Prop :=
  ∀ n, P12005636197234114369.a n = A336398 (n + 2)

end A336398

/-! ## A336398.P3818879865493246021

`A001045(n)+A001045(∑[A001057(n)])`
-/

namespace A336398.P3818879865493246021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + A001045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336398.P3818879865493246021

namespace A336398

/-- `A001045(n)+A001045(∑[A001057(n)])` -/
def P3818879865493246021.Spec : Prop :=
  ∀ n, P3818879865493246021.a n = A336398 (n + 2)

end A336398

/-! ## A336398.P18294052528781471720

`A001045(n)+Δ[A000975(A004526(n))]`
-/

namespace A336398.P18294052528781471720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (f1 (n + 1) - f1 n)

end

end A336398.P18294052528781471720

namespace A336398

/-- `A001045(n)+Δ[A000975(A004526(n))]` -/
def P18294052528781471720.Spec : Prop :=
  ∀ n, P18294052528781471720.a n = A336398 (n + 2)

end A336398

/-! ## A336398.P15034647994424395666

`A016116(n+1)+A001045(n)-A135318(n+1)`
-/

namespace A336398.P15034647994424395666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) + (A001045 n - A135318 (n + 1))

end

end A336398.P15034647994424395666

namespace A336398

/-- `A016116(n+1)+A001045(n)-A135318(n+1)` -/
def P15034647994424395666.Spec : Prop :=
  ∀ n, P15034647994424395666.a n = A336398 (n + 2)

end A336398

/-! ## A336398.P899921354880075050

`A112447(n+1)+A001045(n)-A112387(n+1)`
-/

namespace A336398.P899921354880075050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 (n + 1) + (A001045 n - A112387 (n + 1))

end

end A336398.P899921354880075050

namespace A336398

/-- `A112447(n+1)+A001045(n)-A112387(n+1)` -/
def P899921354880075050.Spec : Prop :=
  ∀ n, P899921354880075050.a n = A336398 (n + 2)

end A336398

/-! ## A336398.P7132637927587776321

`A018240(n+3)+A090597(n+4)-A352737(n+2)`
-/

namespace A336398.P7132637927587776321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018240 (n + 3) + (A090597 (n + 4) - A352737 (n + 2))

end

end A336398.P7132637927587776321

namespace A336398

/-- `A018240(n+3)+A090597(n+4)-A352737(n+2)` -/
def P7132637927587776321.Spec : Prop :=
  ∀ n, P7132637927587776321.a n = A336398 (n + 2)

end A336398

/-! ## A336398.P2571575269628401952

`A001045(A000035(n)*A008619(n))+A001045(n)`
-/

namespace A336398.P2571575269628401952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A000035 n * A008619 n).toNat + A001045 n

end

end A336398.P2571575269628401952

namespace A336398

/-- `A001045(A000035(n)*A008619(n))+A001045(n)` -/
def P2571575269628401952.Spec : Prop :=
  ∀ n, P2571575269628401952.a n = A336398 (n + 2)

end A336398

/-! ## A336398.P15671262325779515130

`A329908(n+2)-A352737(n+2)`
-/

namespace A336398.P15671262325779515130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329908 (n + 2) - A352737 (n + 2)

end

end A336398.P15671262325779515130

namespace A336398

/-- `A329908(n+2)-A352737(n+2)` -/
def P15671262325779515130.Spec : Prop :=
  ∀ n, P15671262325779515130.a n = A336398 (n + 2)

end A336398

/-! ## A336398.P15932122438760679451

`round(A107663(n)/6)`
-/

namespace A336398.P15932122438760679451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A107663 n : ℚ) / 6)

end

end A336398.P15932122438760679451

namespace A336398

/-- `round(A107663(n)/6)` -/
def P15932122438760679451.Spec : Prop :=
  ∀ n, P15932122438760679451.a n = A336398 (n + 2)

end A336398

/-!
# A336399: a(1) = 1, a(n) is the smallest number such that the concatenation a(1)a(2)...a(n) is divisible by lcm(1..n).

The programs for A336399, there is no canonical definition to state claims against.
-/

/-! ## A336399.P14415830651655816778

`A306862(n²)*A323340(n)`
-/

namespace A336399.P14415830651655816778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306862 (n ^ 2) * A323340 n

end

end A336399.P14415830651655816778

/-! ## A336399.P7135310543934372923

`C(A323340(n), A217669(n)²²)`
-/

namespace A336399.P7135310543934372923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A323340 n).toNat ((A217669 n ^ 2) ^ 2).toNat

end

end A336399.P7135310543934372923

/-! ## A336399.P7593707812533170695

`A128192(n+1)*A306862(n²)`
-/

namespace A336399.P7593707812533170695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128192 (n + 1) * A306862 (n ^ 2)

end

end A336399.P7593707812533170695

/-! ## A336399.P842554602049647123

`C(A128045(n+1), A217669(n)²²)`
-/

namespace A336399.P842554602049647123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A128045 (n + 1)).toNat ((A217669 n ^ 2) ^ 2).toNat

end

end A336399.P842554602049647123

/-! ## A336399.P5920829230321986701

`C(A323340(n), A335769(A217669(n)))`
-/

namespace A336399.P5920829230321986701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A323340 n).toNat (A335769 (A217669 n).toNat).toNat

end

end A336399.P5920829230321986701

