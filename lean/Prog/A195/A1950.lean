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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A195000: Number of lower triangles of a 4 X 4 0..n array with each element differing from all of its horizontal and vertical neighbors by one.

The programs for A195000, the canonical program `A195000.P5400988840312695878` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195000 has offset 1).

The definition of A195000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195000.P5400988840312695878

`2*a(n-1)-a(n-2)` with `a(0)=2, a(1)=80, a(2)=248, a(3)=458, a(4)=672, a(5)=888`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195000

/-- `2*a(n-1)-a(n-2)` -/
def P5400988840312695878.Spec : Prop :=
  ∀ n, P5400988840312695878.a n = A195000 (n + 1)

theorem P5400988840312695878.correct : P5400988840312695878.Spec := by
  intro n
  simp only [A195000, Nat.add_sub_cancel]

end A195000

/-!
# A195001: Number of lower triangles of a 5 X 5 0..n array with each element differing from all of its horizontal and vertical neighbors by one.

The programs for A195001, there is no canonical definition to state claims against.
-/

/-! ## A195001.P8309802232511970656

`A194998(A056000(n)+15)`
-/

namespace A195001.P8309802232511970656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (A056000 n + 15).toNat

end

end A195001.P8309802232511970656

/-!
# A195002: Number of lower triangles of a 6 X 6 0..n array with each element differing from all of its horizontal and vertical neighbors by one.

The programs for A195002, there is no canonical definition to state claims against.
-/

/-! ## A195002.P17454226214219532790

`A194998(eq[7, A131818(n+1)])`
-/

namespace A195002.P17454226214219532790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195002.P17454226214219532790

/-!
# A195003: Number of lower triangles of a 7 X 7 0..n array with each element differing from all of its horizontal and vertical neighbors by one.

The programs for A195003, there is no canonical definition to state claims against.
-/

/-! ## A195003.P18102694215555205033

`A194998(eq[8, A131818(n+1)])`
-/

namespace A195003.P18102694215555205033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195003.P18102694215555205033

/-!
# A195007: Number of primes in the range (n*sqrt(n-1), (n+1)*sqrt(n)].

The programs for A195007, there is no canonical definition to state claims against.
-/

/-! ## A195007.P4964818605157676028

`Δ[A230980(floor((n+1)*sqrt(n)))]`
-/

namespace A195007.P4964818605157676028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 ⌊(n + 1 : ℝ) * Real.sqrt (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195007.P4964818605157676028

/-! ## A195007.P16191118811988197491

`A043283(∑[A187898(n+1)²])`
-/

namespace A195007.P16191118811988197491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187898 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A195007.P16191118811988197491

/-! ## A195007.P10088008790294676342

`gcd(A038548(A279785(n)), A173908(n))`
-/

namespace A195007.P10088008790294676342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038548 (A279785 n).toNat) (A173908 n)

end

end A195007.P10088008790294676342

/-! ## A195007.P16526296910051516518

`A067760(A128100(n)%A102176(n+1))`
-/

namespace A195007.P16526296910051516518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (Int.tmod (A128100 n) (A102176 (n + 1))).toNat

end

end A195007.P16526296910051516518

/-! ## A195007.P16928724983403892375

`A067760(A128100(n))%A192931(n+1)`
-/

namespace A195007.P16928724983403892375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067760 (A128100 n).toNat) (A192931 (n + 1))

end

end A195007.P16928724983403892375

/-!
# A195008: Numbers k such that there are no primes between k*sqrt(k-1) and (k+1)*sqrt(k).

The programs for A195008, there is no canonical definition to state claims against.
-/

/-! ## A195008.P9843204951235100955

`A331784(A045525(n+1))-2`
-/

namespace A195008.P9843204951235100955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331784 (A045525 (n + 1)).toNat - 2

end

end A195008.P9843204951235100955

/-!
# A195009: Triangle read by rows, T(n,k) = k^n*A056040(n), n>=0, 0<=k<=n.

The programs for A195009, the canonical program `A195009.P14776910489864357674` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195009 has offset 0).

The definition of A195009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195009.P14776910489864357674

`col(n)^row(n)*A056040(row(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A195009

/-- `col(n)^row(n)*A056040(row(n))` -/
def P14776910489864357674.Spec : Prop :=
  ∀ n, P14776910489864357674.a n = A195009 n

theorem P14776910489864357674.correct : P14776910489864357674.Spec := by
  intro n
  simp only [A195009]

end A195009

/-! ## A195009.P7410973232757724012

`A337997(n)%A000032(A136273(n))`
-/

namespace A195009.P7410973232757724012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337997 n) (A000032 (A136273 n).toNat)

end

end A195009.P7410973232757724012

namespace A195009

/-- `A337997(n)%A000032(A136273(n))` -/
def P7410973232757724012.Spec : Prop :=
  ∀ n, P7410973232757724012.a n = A195009 n

end A195009

/-! ## A195009.P9224833613806510089

`gcd(A337994(A008300(n)), A337997(n))`
-/

namespace A195009.P9224833613806510089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A337994 (A008300 n).toNat) (A337997 n)

end

end A195009.P9224833613806510089

namespace A195009

/-- `gcd(A337994(A008300(n)), A337997(n))` -/
def P9224833613806510089.Spec : Prop :=
  ∀ n, (P9224833613806510089.a n : ℤ) = A195009 n

end A195009

/-! ## A195009.P10265084950772593362

`A337997(A002998(n))`
-/

namespace A195009.P10265084950772593362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337997 (A002998 n).toNat

end

end A195009.P10265084950772593362

namespace A195009

/-- `A337997(A002998(n))` -/
def P10265084950772593362.Spec : Prop :=
  ∀ n, P10265084950772593362.a n = A195009 n

end A195009

/-! ## A195009.P7202902868413264065

`A337997(A023106(n))`
-/

namespace A195009.P7202902868413264065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337997 (A023106 n).toNat

end

end A195009.P7202902868413264065

namespace A195009

/-- `A337997(A023106(n))` -/
def P7202902868413264065.Spec : Prop :=
  ∀ n, P7202902868413264065.a n = A195009 n

end A195009

/-!
# A195011: Triangle read by rows: T(n,m) = number of vector partitions of n in S with crank m counted according to the weight w_1.

The programs for A195011, there is no canonical definition to state claims against.
-/

/-! ## A195011.P5955664681197491588

`A004218(3^A228717(n+1))`
-/

namespace A195011.P5955664681197491588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A228717 (n + 1) : ℤ))).toNat

end

end A195011.P5955664681197491588

/-! ## A195011.P9713336730941851809

`A056595(3^A228717(n+1))`
-/

namespace A195011.P9713336730941851809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A228717 (n + 1) : ℤ))).toNat

end

end A195011.P9713336730941851809

/-! ## A195011.P17818807329468526812

`A007895(A000045(A228717(n+1))²)`
-/

namespace A195011.P17818807329468526812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A000045 (A228717 (n + 1)).toNat ^ 2).toNat

end

end A195011.P17818807329468526812

/-! ## A195011.P15215689644850026271

`A110654(A228717(n+1)%A108493(n+1))`
-/

namespace A195011.P15215689644850026271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.tmod (A228717 (n + 1)) (A108493 (n + 1))).toNat

end

end A195011.P15215689644850026271

/-! ## A195011.P10347083953512279867

`A051601(A228717(n+1))%A333137(n+2)`
-/

namespace A195011.P10347083953512279867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051601 (A228717 (n + 1)).toNat) (A333137 (n + 2))

end

end A195011.P10347083953512279867

/-!
# A195012: Sum of positive cranks minus the sum of positive ranks of all partitions of n.

The programs for A195012, there is no canonical definition to state claims against.
-/

/-! ## A195012.P10756458719951516299

`A115995(n+1)-A209616(n+1)`
-/

namespace A195012.P10756458719951516299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115995 (n + 1) - A209616 (n + 1)

end

end A195012.P10756458719951516299

/-! ## A195012.P16841241330187305956

`∑[A208474(n+1)]-A209616(n+1)`
-/

namespace A195012.P16841241330187305956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A209616 (n + 1)

end

end A195012.P16841241330187305956

/-! ## A195012.P10987880995536474213

`∑[A208474(n+1)]-A208482(A000124(n))`
-/

namespace A195012.P10987880995536474213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A208482 (A000124 n).toNat

end

end A195012.P10987880995536474213

/-! ## A195012.P2560880797424820133

`A266770(2*n+1)+A001221(A004148(n+3))`
-/

namespace A195012.P2560880797424820133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266770 (2 * n + 1) + A001221 (A004148 (n + 3)).toNat

end

end A195012.P2560880797424820133

/-! ## A195012.P17010088332620556084

`A251719(A319781(n)+A055881(3*(n+1)))`
-/

namespace A195012.P17010088332620556084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251719 (A319781 n + A055881 (3 * (n + 1))).toNat

end

end A195012.P17010088332620556084

/-!
# A195013: Multiples of 2 and of 3 interleaved: a(2n-1) = 2n, a(2n) = 3n.

The programs for A195013, the canonical program `A195013.P8773584190457477827` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195013 has offset 1).

The definition of A195013 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195013.P8773584190457477827

`2*a(n-2)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195013

/-- `2*a(n-2)-a(n-4)` -/
def P8773584190457477827.Spec : Prop :=
  ∀ n, P8773584190457477827.a n = A195013 (n + 1)

theorem P8773584190457477827.correct : P8773584190457477827.Spec := by
  intro n
  simp only [A195013, Nat.add_sub_cancel]

end A195013

/-! ## A195013.P12451744409695833679

`(5*(n+1)+(n-1)*(-1)^(n+1)+2)/4`
-/

namespace A195013.P12451744409695833679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * (n + 1) : ℤ) + ((n : ℤ) - 1) * (-1) ^ (n + 1) + 2 : ℚ) / 4

end

end A195013.P12451744409695833679

namespace A195013

/-- `(5*(n+1)+(n-1)*(-1)^(n+1)+2)/4` -/
def P12451744409695833679.Spec : Prop :=
  ∀ n, P12451744409695833679.a n = (A195013 (n + 1) : ℚ)

theorem P12451744409695833679.correct : P12451744409695833679.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A195013, Nat.add_sub_cancel, A195013.P12451744409695833679.a, A195013.P8773584190457477827.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A195013, Nat.add_sub_cancel, A195013.P12451744409695833679.a, A195013.P8773584190457477827.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195013

/-! ## A195013.P1238724622471395243

`a(n-2)+A010693(n)` with `a(0)=2, a(1)=3`
-/

namespace A195013.P1238724622471395243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + A010693 n

end

end A195013.P1238724622471395243

namespace A195013

/-- `a(n-2)+A010693(n)` -/
def P1238724622471395243.Spec : Prop :=
  ∀ n, P1238724622471395243.a n = A195013 (n + 1)

end A195013

/-! ## A195013.P12564526963266370915

`∑[∑[ogf((2+3x)/(1+2x+x^2))]]`
-/

namespace A195013.P12564526963266370915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195013.P12564526963266370915

namespace A195013

/-- `∑[∑[ogf((2+3x)/(1+2x+x^2))]]` -/
def P12564526963266370915.Spec : Prop :=
  ∀ n, P12564526963266370915.a n = A195013 (n + 1)

end A195013

/-! ## A195013.P94394921533976240

`ogf((2+3x)/(1-2x^2+x^4))`
-/

namespace A195013.P94394921533976240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, 0, -2, 0, 1] n

end

end A195013.P94394921533976240

namespace A195013

/-- `ogf((2+3x)/(1-2x^2+x^4))` -/
def P94394921533976240.Spec : Prop :=
  ∀ n, P94394921533976240.a n = A195013 (n + 1)

end A195013

/-! ## A195013.P9582601541100984162

`floor((lcm(2, n)+n)/2)+2`
-/

namespace A195013.P9582601541100984162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 n + n : ℚ) / 2⌋ + 2

end

end A195013.P9582601541100984162

namespace A195013

/-- `floor((lcm(2, n)+n)/2)+2` -/
def P9582601541100984162.Spec : Prop :=
  ∀ n, P9582601541100984162.a n = A195013 (n + 1)

end A195013

/-! ## A195013.P17735478257894050545

`a(n-2)+a(n%2)` with `a(0)=2, a(1)=3`
-/

namespace A195013.P17735478257894050545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + a (n % 2)

end

end A195013.P17735478257894050545

namespace A195013

/-- `a(n-2)+a(n%2)` -/
def P17735478257894050545.Spec : Prop :=
  ∀ n, (P17735478257894050545.a n : ℤ) = A195013 (n + 1)

end A195013

/-! ## A195013.P1683279239507287846

`a(and(1, n))+a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A195013.P1683279239507287846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (Nat.land 1 n) + a (n - 2)

end

end A195013.P1683279239507287846

namespace A195013

/-- `a(and(1, n))+a(n-2)` -/
def P1683279239507287846.Spec : Prop :=
  ∀ n, (P1683279239507287846.a n : ℤ) = A195013 (n + 1)

end A195013

/-! ## A195013.P14317802922789156586

`Δ[C(floor(n/2), 2)]+n+2`
-/

namespace A195013.P14317802922789156586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℚ) / 2⌋.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 2 : ℤ)

end

end A195013.P14317802922789156586

namespace A195013

/-- `Δ[C(floor(n/2), 2)]+n+2` -/
def P14317802922789156586.Spec : Prop :=
  ∀ n, P14317802922789156586.a n = A195013 (n + 1)

end A195013

/-! ## A195013.P1711247709888524493

`gcd(xor(1, -n), ∑[n])+1+n`
-/

namespace A195013.P1711247709888524493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1 + n

end

end A195013.P1711247709888524493

namespace A195013

/-- `gcd(xor(1, -n), ∑[n])+1+n` -/
def P1711247709888524493.Spec : Prop :=
  ∀ n, (P1711247709888524493.a n : ℤ) = A195013 (n + 1)

end A195013

/-! ## A195013.P7531182100187972290

`∑[a(n-2)-(-1)^n]` with `a(0)=2, a(1)=1`
-/

namespace A195013.P7531182100187972290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 2) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195013.P7531182100187972290

namespace A195013

/-- `∑[a(n-2)-(-1)^n]` -/
def P7531182100187972290.Spec : Prop :=
  ∀ n, P7531182100187972290.a n = A195013 (n + 1)

end A195013

/-! ## A195013.P13428539990642007834

`a(n-2)-gcd(2, n)+4` with `a(0)=2, a(1)=3`
-/

namespace A195013.P13428539990642007834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) - (Nat.gcd 2 n : ℤ) + 4

end

end A195013.P13428539990642007834

namespace A195013

/-- `a(n-2)-gcd(2, n)+4` -/
def P13428539990642007834.Spec : Prop :=
  ∀ n, P13428539990642007834.a n = A195013 (n + 1)

end A195013

/-! ## A195013.P2091092415450536662

`∑[and(1, n)-(a(n-1)-2)]` with `a(0)=2`
-/

namespace A195013.P2091092415450536662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (Nat.land 1 n : ℤ) - (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195013.P2091092415450536662

namespace A195013

/-- `∑[and(1, n)-(a(n-1)-2)]` -/
def P2091092415450536662.Spec : Prop :=
  ∀ n, P2091092415450536662.a n = A195013 (n + 1)

end A195013

/-! ## A195013.P16481500056062854910

`gcd(n+1, ceil(n/2))+n+1`
-/

namespace A195013.P16481500056062854910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉ + (n + 1)

end

end A195013.P16481500056062854910

namespace A195013

/-- `gcd(n+1, ceil(n/2))+n+1` -/
def P16481500056062854910.Spec : Prop :=
  ∀ n, (P16481500056062854910.a n : ℤ) = A195013 (n + 1)

end A195013

/-! ## A195013.P490678541304846493

`a(n-2)-(2-n²)%4` with `a(0)=2, a(1)=3`
-/

namespace A195013.P490678541304846493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) - Int.tmod (2 - (n ^ 2 : ℤ)) 4

end

end A195013.P490678541304846493

namespace A195013

/-- `a(n-2)-(2-n²)%4` -/
def P490678541304846493.Spec : Prop :=
  ∀ n, P490678541304846493.a n = A195013 (n + 1)

end A195013

/-! ## A195013.P6551111773431668180

`(n-1)*and(1, n)/2+n+2`
-/

namespace A195013.P6551111773431668180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) * ((Nat.land 1 n : ℚ) / 2) + (n + 2 : ℚ)

end

end A195013.P6551111773431668180

namespace A195013

/-- `(n-1)*and(1, n)/2+n+2` -/
def P6551111773431668180.Spec : Prop :=
  ∀ n, P6551111773431668180.a n = (A195013 (n + 1) : ℚ)

end A195013

/-! ## A195013.P8975816656067353020

`lcm(n-1, and(1, n))/2+n+2`
-/

namespace A195013.P8975816656067353020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n : ℤ) - 1) (Nat.land 1 n : ℤ) : ℚ) / 2 + (n + 2 : ℚ)

end

end A195013.P8975816656067353020

namespace A195013

/-- `lcm(n-1, and(1, n))/2+n+2` -/
def P8975816656067353020.Spec : Prop :=
  ∀ n, P8975816656067353020.a n = (A195013 (n + 1) : ℚ)

end A195013

/-! ## A195013.P16601230860580653621

`∑[5-a(n-1)]-a(n-1)` with `a(0)=2`
-/

namespace A195013.P16601230860580653621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A195013.P16601230860580653621

namespace A195013

/-- `∑[5-a(n-1)]-a(n-1)` -/
def P16601230860580653621.Spec : Prop :=
  ∀ n, P16601230860580653621.a n = A195013 (n + 1)

end A195013

/-! ## A195013.P6738133987044652906

`2-((2-n)%2-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A195013.P6738133987044652906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 - (Int.tmod (2 - (n : ℤ)) 2 - a (n - 2))

end

end A195013.P6738133987044652906

namespace A195013

/-- `2-((2-n)%2-a(n-2))` -/
def P6738133987044652906.Spec : Prop :=
  ∀ n, P6738133987044652906.a n = A195013 (n + 1)

end A195013

/-! ## A195013.P15926305178124424359

`floor(5*(n+1)/2-a(n-1))` with `a(0)=2`
-/

namespace A195013.P15926305178124424359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊5 * ((n + 1 : ℚ) / 2) - (a (n - 1) : ℚ)⌋

end

end A195013.P15926305178124424359

namespace A195013

/-- `floor(5*(n+1)/2-a(n-1))` -/
def P15926305178124424359.Spec : Prop :=
  ∀ n, P15926305178124424359.a n = A195013 (n + 1)

end A195013

/-!
# A195014: Vertex number of a square spiral whose edges have length A195013.

The programs for A195014, the canonical program `A195014.P7559008659039566075` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195014 has offset 0).

The definition of A195014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195014.P9296808124806195526

`(10*n²+18*n+3+(2*n-3)*(-1)^n)/16`
-/

namespace A195014.P9296808124806195526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * n ^ 2 + 18 * n + 3 : ℤ) + ((2 * n : ℤ) - 3) * (-1) ^ n : ℚ) / 16

end

end A195014.P9296808124806195526

namespace A195014

/-- `(10*n²+18*n+3+(2*n-3)*(-1)^n)/16` -/
def P9296808124806195526.Spec : Prop :=
  ∀ n, P9296808124806195526.a n = (A195014 n : ℚ)

theorem P9296808124806195526.correct : P9296808124806195526.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A195014, Nat.add_sub_cancel, A195014.P9296808124806195526.a, A195014.P7559008659039566075.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A195014, Nat.add_sub_cancel, A195014.P9296808124806195526.a, A195014.P7559008659039566075.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195014

/-! ## A195014.P7559008659039566075

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=9, a(4)=15`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195014

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P7559008659039566075.Spec : Prop :=
  ∀ n, P7559008659039566075.a n = A195014 n

theorem P7559008659039566075.correct : P7559008659039566075.Spec := by
  intro n
  simp only [A195014]

end A195014

/-! ## A195014.P13811940179461211488

`∑[gcd(n, floor(n/2))+n]`
-/

namespace A195014.P13811940179461211488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ⌊(n : ℚ) / 2⌋ + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195014.P13811940179461211488

namespace A195014

/-- `∑[gcd(n, floor(n/2))+n]` -/
def P13811940179461211488.Spec : Prop :=
  ∀ n, (P13811940179461211488.a n : ℤ) = A195014 n

end A195014

/-! ## A195014.P1706256228762327522

`∪[∑[n+2], ∑[n]]+∑[n]`
-/

namespace A195014.P1706256228762327522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n + ∑ j ∈ Finset.range (n + 1), f5 j

end

end A195014.P1706256228762327522

namespace A195014

/-- `∪[∑[n+2], ∑[n]]+∑[n]` -/
def P1706256228762327522.Spec : Prop :=
  ∀ n, (P1706256228762327522.a n : ℤ) = A195014 n

end A195014

/-! ## A195014.P300855612927941460

`∑[(3-and(1, n))*ceil(n/2)]`
-/

namespace A195014.P300855612927941460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (Nat.land 1 n : ℤ)) * ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195014.P300855612927941460

namespace A195014

/-- `∑[(3-and(1, n))*ceil(n/2)]` -/
def P300855612927941460.Spec : Prop :=
  ∀ n, P300855612927941460.a n = A195014 n

end A195014

/-! ## A195014.P3472662610571272166

`∑[(3-n%2)*∑[n%2]]`
-/

namespace A195014.P3472662610571272166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - ((n % 2 : ℕ) : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195014.P3472662610571272166

namespace A195014

/-- `∑[(3-n%2)*∑[n%2]]` -/
def P3472662610571272166.Spec : Prop :=
  ∀ n, P3472662610571272166.a n = A195014 n

end A195014

/-! ## A195014.P2537106257846488596

`C(floor(n/2), 2)+∑[n]+n`
-/

namespace A195014.P2537106257846488596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℚ) / 2⌋.toNat 2 + (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A195014.P2537106257846488596

namespace A195014

/-- `C(floor(n/2), 2)+∑[n]+n` -/
def P2537106257846488596.Spec : Prop :=
  ∀ n, (P2537106257846488596.a n : ℤ) = A195014 n

end A195014

/-! ## A195014.P4942099522334117435

`floor(a(n-2)+5*n/2)` with `a(0)=0, a(1)=2`
-/

namespace A195014.P4942099522334117435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ⌊(a (n - 2) : ℚ) + 5 * ((n : ℚ) / 2)⌋

end

end A195014.P4942099522334117435

namespace A195014

/-- `floor(a(n-2)+5*n/2)` -/
def P4942099522334117435.Spec : Prop :=
  ∀ n, P4942099522334117435.a n = A195014 n

end A195014

/-! ## A195014.P2881982405573812208

`∑[floor(5*n/2-a(n-1))]` with `a(0)=0`
-/

namespace A195014.P2881982405573812208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌊5 * ((n : ℚ) / 2) - (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195014.P2881982405573812208

namespace A195014

/-- `∑[floor(5*n/2-a(n-1))]` -/
def P2881982405573812208.Spec : Prop :=
  ∀ n, P2881982405573812208.a n = A195014 n

end A195014

/-! ## A195014.P3850666362426160602

`∑[5-a(n-1)]+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A195014.P3850666362426160602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A195014.P3850666362426160602

namespace A195014

/-- `∑[5-a(n-1)]+a(n-2)` -/
def P3850666362426160602.Spec : Prop :=
  ∀ n, P3850666362426160602.a n = A195014 n

end A195014

/-! ## A195014.P16280062547013966503

`∑[∑[5-a(n-1)]-a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A195014.P16280062547013966503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  5 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195014.P16280062547013966503

namespace A195014

/-- `∑[∑[5-a(n-1)]-a(n-1)]` -/
def P16280062547013966503.Spec : Prop :=
  ∀ n, P16280062547013966503.a n = A195014 n

end A195014

/-! ## A195014.P7681819981293361627

`∑[A071054(n)-1]`
-/

namespace A195014.P7681819981293361627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071054 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195014.P7681819981293361627

namespace A195014

/-- `∑[A071054(n)-1]` -/
def P7681819981293361627.Spec : Prop :=
  ∀ n, P7681819981293361627.a n = A195014 n

end A195014

/-! ## A195014.P10605197675141796015

`A111712(n+1)-1`
-/

namespace A195014.P10605197675141796015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111712 (n + 1) - 1

end

end A195014.P10605197675141796015

namespace A195014

/-- `A111712(n+1)-1` -/
def P10605197675141796015.Spec : Prop :=
  ∀ n, P10605197675141796015.a n = A195014 n

end A195014

/-! ## A195014.P10495436128407550785

`A265382(n)-(n+1)`
-/

namespace A195014.P10495436128407550785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265382 n - (n + 1 : ℤ)

end

end A195014.P10495436128407550785

namespace A195014

/-- `A265382(n)-(n+1)` -/
def P10495436128407550785.Spec : Prop :=
  ∀ n, P10495436128407550785.a n = A195014 n

end A195014

/-! ## A195014.P10472194137885850443

`ceil(A085787(n)+n/2)`
-/

namespace A195014.P10472194137885850443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A085787 n : ℚ) + (n : ℚ) / 2⌉

end

end A195014.P10472194137885850443

namespace A195014

/-- `ceil(A085787(n)+n/2)` -/
def P10472194137885850443.Spec : Prop :=
  ∀ n, P10472194137885850443.a n = A195014 n

end A195014

/-! ## A195014.P6085800111565271503

`A249547(n)-a(n-1)` with `a(0)=0`
-/

namespace A195014.P6085800111565271503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A249547 n - a (n - 1)

end

end A195014.P6085800111565271503

namespace A195014

/-- `A249547(n)-a(n-1)` -/
def P6085800111565271503.Spec : Prop :=
  ∀ n, P6085800111565271503.a n = A195014 n

end A195014

/-! ## A195014.P1574253495920504687

`(n+1)²-∑[A029579(n)]`
-/

namespace A195014.P1574253495920504687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195014.P1574253495920504687

namespace A195014

/-- `(n+1)²-∑[A029579(n)]` -/
def P1574253495920504687.Spec : Prop :=
  ∀ n, P1574253495920504687.a n = A195014 n

end A195014

/-! ## A195014.P7596559859343447855

`A047215(n)+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A195014.P7596559859343447855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A047215 n + a (n - 2)

end

end A195014.P7596559859343447855

namespace A195014

/-- `A047215(n)+a(n-2)` -/
def P7596559859343447855.Spec : Prop :=
  ∀ n, P7596559859343447855.a n = A195014 n

end A195014

/-! ## A195014.P9729477228325549479

`A134519(n+1)+∑[n]-1`
-/

namespace A195014.P9729477228325549479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134519 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A195014.P9729477228325549479

namespace A195014

/-- `A134519(n+1)+∑[n]-1` -/
def P9729477228325549479.Spec : Prop :=
  ∀ n, P9729477228325549479.a n = A195014 n

end A195014

/-! ## A195014.P4286779030100997495

`A135276(n)+A001318(n)`
-/

namespace A195014.P4286779030100997495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 n + A001318 n

end

end A195014.P4286779030100997495

namespace A195014

/-- `A135276(n)+A001318(n)` -/
def P4286779030100997495.Spec : Prop :=
  ∀ n, P4286779030100997495.a n = A195014 n

end A195014

/-!
# A195015: Main axis of the square spiral whose edges have length A195013 and whose vertices are the numbers A195014.

The programs for A195015, the canonical program `A195015.P8608883659910228174` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195015 has offset 0).

The definition of A195015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195015.P14130219351647810525

`(2*n*(5*n+2)+3*(-1)^n-3)/4`
-/

namespace A195015.P14130219351647810525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n * (5 * n + 2) : ℤ) + 3 * (-1) ^ n - 3 : ℚ) / 4

end

end A195015.P14130219351647810525

namespace A195015

/-- `(2*n*(5*n+2)+3*(-1)^n-3)/4` -/
def P14130219351647810525.Spec : Prop :=
  ∀ n, P14130219351647810525.a n = (A195015 n : ℚ)

theorem P14130219351647810525.correct : P14130219351647810525.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A195015, Nat.add_sub_cancel, A195015.P14130219351647810525.a, A195015.P8608883659910228174.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A195015, Nat.add_sub_cancel, A195015.P14130219351647810525.a, A195015.P8608883659910228174.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195015

/-! ## A195015.P8608883659910228174

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=12, a(3)=24`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195015

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P8608883659910228174.Spec : Prop :=
  ∀ n, P8608883659910228174.a n = A195015 n

theorem P8608883659910228174.correct : P8608883659910228174.Spec := by
  intro n
  simp only [A195015]

end A195015

/-! ## A195015.P433777056910981892

`2*abs(A266085(n))`
-/

namespace A195015.P433777056910981892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |A266085 n|

end

end A195015.P433777056910981892

namespace A195015

/-- `2*abs(A266085(n))` -/
def P433777056910981892.Spec : Prop :=
  ∀ n, P433777056910981892.a n = A195015 n

end A195015

/-! ## A195015.P15322127021030058010

`∑[a(n-2)+10]` with `a(0)=0, a(1)=2`
-/

namespace A195015.P15322127021030058010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195015.P15322127021030058010

namespace A195015

/-- `∑[a(n-2)+10]` -/
def P15322127021030058010.Spec : Prop :=
  ∀ n, (P15322127021030058010.a n : ℤ) = A195015 n

end A195015

/-! ## A195015.P5721771566221415226

`∑[record[or(6, n)-6]+n]`
-/

namespace A195015.P5721771566221415226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 n : ℤ) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195015.P5721771566221415226

namespace A195015

/-- `∑[record[or(6, n)-6]+n]` -/
def P5721771566221415226.Spec : Prop :=
  ∀ n, P5721771566221415226.a n = A195015 n

end A195015

/-! ## A195015.P13602421289444837701

`∑[record[and(n, -7)]]+∑[n]`
-/

namespace A195015.P13602421289444837701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A195015.P13602421289444837701

namespace A195015

/-- `∑[record[and(n, -7)]]+∑[n]` -/
def P13602421289444837701.Spec : Prop :=
  ∀ n, P13602421289444837701.a n = A195015 n

end A195015

/-! ## A195015.P6556892476906450500

`∑[∑[10-a(n-1)]]` with `a(0)=0, a(1)=2`
-/

namespace A195015.P6556892476906450500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  10 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195015.P6556892476906450500

namespace A195015

/-- `∑[∑[10-a(n-1)]]` -/
def P6556892476906450500.Spec : Prop :=
  ∀ n, P6556892476906450500.a n = A195015 n

end A195015

/-! ## A195015.P8913822400180078636

`∑[5*n-3*n%2]`
-/

namespace A195015.P8913822400180078636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - ((3 * (n % 2) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195015.P8913822400180078636

namespace A195015

/-- `∑[5*n-3*n%2]` -/
def P8913822400180078636.Spec : Prop :=
  ∀ n, P8913822400180078636.a n = A195015 n

end A195015

/-! ## A195015.P15311375392343111378

`∑[2*(∑[gcd(2, n)²]-4)]`
-/

namespace A195015.P15311375392343111378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195015.P15311375392343111378

namespace A195015

/-- `∑[2*(∑[gcd(2, n)²]-4)]` -/
def P15311375392343111378.Spec : Prop :=
  ∀ n, P15311375392343111378.a n = A195015 n

end A195015

/-! ## A195015.P16832237331922482881

`2*∑[∑[∑[ogf((x+4x^2)/(1+x))]]]`
-/

namespace A195015.P16832237331922482881
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195015.P16832237331922482881

namespace A195015

/-- `2*∑[∑[∑[ogf((x+4x^2)/(1+x))]]]` -/
def P16832237331922482881.Spec : Prop :=
  ∀ n, P16832237331922482881.a n = A195015 n

end A195015

/-! ## A195015.P9364548443932777898

`n*(5*n-3)-a(n-1)` with `a(0)=0`
-/

namespace A195015.P9364548443932777898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((5 * n : ℤ) - 3) - a (n - 1)

end

end A195015.P9364548443932777898

namespace A195015

/-- `n*(5*n-3)-a(n-1)` -/
def P9364548443932777898.Spec : Prop :=
  ∀ n, P9364548443932777898.a n = A195015 n

end A195015

/-! ## A195015.P1719768514071496981

`∑[n]+∑[∑[∑[ogf((x+7x^2)/(1+x))]]]`
-/

namespace A195015.P1719768514071496981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 7] [1, 1] n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A195015.P1719768514071496981

namespace A195015

/-- `∑[n]+∑[∑[∑[ogf((x+7x^2)/(1+x))]]]` -/
def P1719768514071496981.Spec : Prop :=
  ∀ n, P1719768514071496981.a n = A195015 n

end A195015

/-! ## A195015.P7732075185603464422

`∑[eq[n-1, and(n+1, n+3)]+n-1]`
-/

namespace A195015.P7732075185603464422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j = (f3 j : ℤ)) n : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195015.P7732075185603464422

namespace A195015

/-- `∑[eq[n-1, and(n+1, n+3)]+n-1]` -/
def P7732075185603464422.Spec : Prop :=
  ∀ n, P7732075185603464422.a n = A195015 n

end A195015

/-! ## A195015.P12190498638809400841

`A195142(n)+n`
-/

namespace A195015.P12190498638809400841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195142 n + (n : ℤ)

end

end A195015.P12190498638809400841

namespace A195015

/-- `A195142(n)+n` -/
def P12190498638809400841.Spec : Prop :=
  ∀ n, P12190498638809400841.a n = A195015 n

end A195015

/-! ## A195015.P13761255149955767134

`A139591(n)+∑[n]`
-/

namespace A195015.P13761255149955767134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139591 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A195015.P13761255149955767134

namespace A195015

/-- `A139591(n)+∑[n]` -/
def P13761255149955767134.Spec : Prop :=
  ∀ n, P13761255149955767134.a n = A195015 n

end A195015

/-! ## A195015.P16868461217327193133

`∑[2*A008851(n+1)]`
-/

namespace A195015.P16868461217327193133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195015.P16868461217327193133

namespace A195015

/-- `∑[2*A008851(n+1)]` -/
def P16868461217327193133.Spec : Prop :=
  ∀ n, P16868461217327193133.a n = A195015 n

end A195015

/-! ## A195015.P12321694040495505685

`∑[A090773(n+1)-4]`
-/

namespace A195015.P12321694040495505685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090773 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195015.P12321694040495505685

namespace A195015

/-- `∑[A090773(n+1)-4]` -/
def P12321694040495505685.Spec : Prop :=
  ∀ n, P12321694040495505685.a n = A195015 n

end A195015

/-! ## A195015.P17471938189480309143

`ceil(A195148(n)/2+n)`
-/

namespace A195015.P17471938189480309143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A195148 n : ℚ) / 2 + (n : ℚ)⌉

end

end A195015.P17471938189480309143

namespace A195015

/-- `ceil(A195148(n)/2+n)` -/
def P17471938189480309143.Spec : Prop :=
  ∀ n, P17471938189480309143.a n = A195015 n

end A195015

/-! ## A195015.P17636388893234890236

`∑[A047393(n+1)+n]`
-/

namespace A195015.P17636388893234890236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047393 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195015.P17636388893234890236

namespace A195015

/-- `∑[A047393(n+1)+n]` -/
def P17636388893234890236.Spec : Prop :=
  ∀ n, P17636388893234890236.a n = A195015 n

end A195015

/-!
# A195016: a(n) = (n*(5*n+7) - (-1)^n + 1)/2.

The programs for A195016, the canonical program `A195016.P6408591687765807869` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195016 has offset 0).

The definition of A195016 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n*(5*n+7)-(-1)^n+1)/2` (program `A195016.P3622958376479100871`, by `A195016.P3622958376479100871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195016.P3622958376479100871

`(n*(5*n+7)-(-1)^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A195016.P3622958376479100871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (5 * n + 7) : ℤ) - (-1) ^ n + 1 : ℚ) / 2

end

end A195016.P3622958376479100871

namespace A195016

/-- `(n*(5*n+7)-(-1)^n+1)/2` -/
def P3622958376479100871.Spec : Prop :=
  ∀ n, P3622958376479100871.a n = (A195016 n : ℚ)

theorem P3622958376479100871.correct : P3622958376479100871.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A195016, Nat.add_sub_cancel, A195016.P3622958376479100871.a, A195016.P6408591687765807869.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A195016, Nat.add_sub_cancel, A195016.P3622958376479100871.a, A195016.P6408591687765807869.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195016

/-! ## A195016.P6408591687765807869

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=7, a(2)=17, a(3)=34`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195016

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P6408591687765807869.Spec : Prop :=
  ∀ n, P6408591687765807869.a n = A195016 n

theorem P6408591687765807869.correct : P6408591687765807869.Spec := by
  intro n
  simp only [A195016]

end A195016

/-! ## A195016.P16404549327068968466

`∑[xor(1, 5*n+1)]`
-/

namespace A195016.P16404549327068968466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (5 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195016.P16404549327068968466

namespace A195016

/-- `∑[xor(1, 5*n+1)]` -/
def P16404549327068968466.Spec : Prop :=
  ∀ n, (P16404549327068968466.a n : ℤ) = A195016 n

end A195016

/-! ## A195016.P15044898337249419292

`∑[a(n-2)+10]` with `a(0)=0, a(1)=7`
-/

namespace A195016.P15044898337249419292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 2) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195016.P15044898337249419292

namespace A195016

/-- `∑[a(n-2)+10]` -/
def P15044898337249419292.Spec : Prop :=
  ∀ n, (P15044898337249419292.a n : ℤ) = A195016 n

end A195016

/-! ## A195016.P3889198549925056302

`∑[Δ[or(1, n)]+5*n]`
-/

namespace A195016.P3889198549925056302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (5 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195016.P3889198549925056302

namespace A195016

/-- `∑[Δ[or(1, n)]+5*n]` -/
def P3889198549925056302.Spec : Prop :=
  ∀ n, P3889198549925056302.a n = A195016 n

end A195016

/-! ## A195016.P1500290701991819060

`∑[∑[10-a(n-1)]]` with `a(0)=0, a(1)=7`
-/

namespace A195016.P1500290701991819060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n f2 =>
  10 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195016.P1500290701991819060

namespace A195016

/-- `∑[∑[10-a(n-1)]]` -/
def P1500290701991819060.Spec : Prop :=
  ∀ n, P1500290701991819060.a n = A195016 n

end A195016

/-! ## A195016.P4628013410974742452

`∑[2*n%2+5*n]`
-/

namespace A195016.P4628013410974742452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n % 2) + 5 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195016.P4628013410974742452

namespace A195016

/-- `∑[2*n%2+5*n]` -/
def P4628013410974742452.Spec : Prop :=
  ∀ n, (P4628013410974742452.a n : ℤ) = A195016 n

end A195016

/-! ## A195016.P12888788374604884174

`∑[2*and(1, n)+5*n]`
-/

namespace A195016.P12888788374604884174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n + 5 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195016.P12888788374604884174

namespace A195016

/-- `∑[2*and(1, n)+5*n]` -/
def P12888788374604884174.Spec : Prop :=
  ∀ n, (P12888788374604884174.a n : ℤ) = A195016 n

end A195016

/-! ## A195016.P9237130548757627434

`∑[∑[∑[ogf((7x+3x^2)/(1+x))]]]`
-/

namespace A195016.P9237130548757627434
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 3] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195016.P9237130548757627434

namespace A195016

/-- `∑[∑[∑[ogf((7x+3x^2)/(1+x))]]]` -/
def P9237130548757627434.Spec : Prop :=
  ∀ n, P9237130548757627434.a n = A195016 n

end A195016

/-! ## A195016.P1261046217419981379

`∑[lt[or(5, n-1), n]]+∑[n]`
-/

namespace A195016.P1261046217419981379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 ((n : ℤ) - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f4 j

end

end A195016.P1261046217419981379

namespace A195016

/-- `∑[lt[or(5, n-1), n]]+∑[n]` -/
def P1261046217419981379.Spec : Prop :=
  ∀ n, (P1261046217419981379.a n : ℤ) = A195016 n

end A195016

/-! ## A195016.P10314164991654887685

`n*(5*n+2)-a(n-1)` with `a(0)=0`
-/

namespace A195016.P10314164991654887685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n * (5 * n + 2) : ℤ) - a (n - 1)

end

end A195016.P10314164991654887685

namespace A195016

/-- `n*(5*n+2)-a(n-1)` -/
def P10314164991654887685.Spec : Prop :=
  ∀ n, P10314164991654887685.a n = A195016 n

end A195016

/-! ## A195016.P5876864248203298368

`∑[or(2, 3*(2*n+1))-(n+3)]`
-/

namespace A195016.P5876864248203298368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (3 * (2 * n + 1)) : ℤ) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195016.P5876864248203298368

namespace A195016

/-- `∑[or(2, 3*(2*n+1))-(n+3)]` -/
def P5876864248203298368.Spec : Prop :=
  ∀ n, P5876864248203298368.a n = A195016 n

end A195016

/-! ## A195016.P15963308849544743176

`A139596(n)+∑[n]`
-/

namespace A195016.P15963308849544743176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139596 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A195016.P15963308849544743176

namespace A195016

/-- `A139596(n)+∑[n]` -/
def P15963308849544743176.Spec : Prop :=
  ∀ n, P15963308849544743176.a n = A195016 n

end A195016

/-! ## A195016.P8291024532280455520

`∑[A306277(n+1)-1]`
-/

namespace A195016.P8291024532280455520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195016.P8291024532280455520

namespace A195016

/-- `∑[A306277(n+1)-1]` -/
def P8291024532280455520.Spec : Prop :=
  ∀ n, P8291024532280455520.a n = A195016 n

end A195016

/-! ## A195016.P7392922584693860186

`∑[A273669(n+1)-2]`
-/

namespace A195016.P7392922584693860186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195016.P7392922584693860186

namespace A195016

/-- `∑[A273669(n+1)-2]` -/
def P7392922584693860186.Spec : Prop :=
  ∀ n, P7392922584693860186.a n = A195016 n

end A195016

/-! ## A195016.P10887649246196838652

`∑[A235089(n+1)-3]`
-/

namespace A195016.P10887649246196838652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235089 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195016.P10887649246196838652

namespace A195016

/-- `∑[A235089(n+1)-3]` -/
def P10887649246196838652.Spec : Prop :=
  ∀ n, P10887649246196838652.a n = A195016 n

end A195016

/-! ## A195016.P2897396347173732694

`n²+A095894(n)-1`
-/

namespace A195016.P2897396347173732694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A095894 n - 1)

end

end A195016.P2897396347173732694

namespace A195016

/-- `n²+A095894(n)-1` -/
def P2897396347173732694.Spec : Prop :=
  ∀ n, P2897396347173732694.a n = A195016 n

end A195016

/-! ## A195016.P18135806583062250848

`∑[A047451(n+1)+n]`
-/

namespace A195016.P18135806583062250848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047451 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195016.P18135806583062250848

namespace A195016

/-- `∑[A047451(n+1)+n]` -/
def P18135806583062250848.Spec : Prop :=
  ∀ n, P18135806583062250848.a n = A195016 n

end A195016

/-! ## A195016.P8456765222224015606

`A077221(n+1)+∑[n-1]`
-/

namespace A195016.P8456765222224015606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195016.P8456765222224015606

namespace A195016

/-- `A077221(n+1)+∑[n-1]` -/
def P8456765222224015606.Spec : Prop :=
  ∀ n, P8456765222224015606.a n = A195016 n

end A195016

/-! ## A195016.P6834045405290715094

`A139597(n)+A007590(n)`
-/

namespace A195016.P6834045405290715094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139597 n + A007590 n

end

end A195016.P6834045405290715094

namespace A195016

/-- `A139597(n)+A007590(n)` -/
def P6834045405290715094.Spec : Prop :=
  ∀ n, P6834045405290715094.a n = A195016 n

end A195016

/-!
# A195017: If n = Product_{k >= 1} (p_k)^(c_k) where p_k is k-th prime and c_k >= 0 then a(n) = Sum_{k >= 1} c_k*((-1)^(k-1)).

The programs for A195017, the canonical program `A195017.P8196782963761862228` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195017 has offset 1).

The definition of A195017 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257991, A257992, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A195017.P8196782963761862228

`A257991(n+1)-A257992(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A195017

/-- `A257991(n+1)-A257992(n+1)` -/
def P8196782963761862228.Spec : Prop :=
  ∀ n, P8196782963761862228.a n = A195017 (n + 1)

theorem P8196782963761862228.correct : P8196782963761862228.Spec := by
  intro n
  simp only [A195017, Nat.add_sub_cancel]

end A195017

/-! ## A195017.P8508177589115442338

`2*A257991(n+1)-A001222(n+1)`
-/

namespace A195017.P8508177589115442338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257991 (n + 1) - A001222 (n + 1)

end

end A195017.P8508177589115442338

namespace A195017

/-- `2*A257991(n+1)-A001222(n+1)` -/
def P8508177589115442338.Spec : Prop :=
  ∀ n, P8508177589115442338.a n = A195017 (n + 1)

theorem P8508177589115442338.correct : P8508177589115442338.Spec := by
  intro n
  simp only [A195017, Nat.add_sub_cancel, A195017.P8508177589115442338.a, A195017.P8196782963761862228.a, A001222, A001222.P11318177267732088261.a, A257991, A257991.P9003885035180655311.f1, A257991.P9003885035180655311.a, A257992, A257992.P14262373692572386717.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014963, A014963.P5975177236000282614.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, A080304, A080304.P9910366703239988167.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A195017

/-! ## A195017.P125194582595425677

`A001222(n+1)-2*A257992(n+1)`
-/

namespace A195017.P125194582595425677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - 2 * A257992 (n + 1)

end

end A195017.P125194582595425677

namespace A195017

/-- `A001222(n+1)-2*A257992(n+1)` -/
def P125194582595425677.Spec : Prop :=
  ∀ n, P125194582595425677.a n = A195017 (n + 1)

theorem P125194582595425677.correct : P125194582595425677.Spec := by
  intro n
  simp only [A195017, Nat.add_sub_cancel, A195017.P125194582595425677.a, A195017.P8196782963761862228.a, A001222, A001222.P11318177267732088261.a, A257991, A257991.P9003885035180655311.f1, A257991.P9003885035180655311.a, A257992, A257992.P14262373692572386717.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014963, A014963.P5975177236000282614.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, A080304, A080304.P9910366703239988167.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A195017

/-! ## A195017.P9176117222217079865

`A005843(A257991(n+1))-A001222(n+1)`
-/

namespace A195017.P9176117222217079865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A257991 (n + 1)).toNat - A001222 (n + 1)

end

end A195017.P9176117222217079865

namespace A195017

/-- `A005843(A257991(n+1))-A001222(n+1)` -/
def P9176117222217079865.Spec : Prop :=
  ∀ n, P9176117222217079865.a n = A195017 (n + 1)

end A195017

/-! ## A195017.P15077323451559911532

`A257991(n+1)-A257991(A064989(n+1))`
-/

namespace A195017.P15077323451559911532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1) - A257991 (A064989 (n + 1)).toNat

end

end A195017.P15077323451559911532

namespace A195017

/-- `A257991(n+1)-A257991(A064989(n+1))` -/
def P15077323451559911532.Spec : Prop :=
  ∀ n, P15077323451559911532.a n = A195017 (n + 1)

end A195017

/-! ## A195017.P16298173699592495538

`2*A001222(A247503(n+1))-A001222(n+1)`
-/

namespace A195017.P16298173699592495538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (A247503 (n + 1)).toNat - A001222 (n + 1)

end

end A195017.P16298173699592495538

namespace A195017

/-- `2*A001222(A247503(n+1))-A001222(n+1)` -/
def P16298173699592495538.Spec : Prop :=
  ∀ n, P16298173699592495538.a n = A195017 (n + 1)

end A195017

/-! ## A195017.P13145989425440940483

`A001222(n+1)-2*A001222(A248101(n+1))`
-/

namespace A195017.P13145989425440940483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - 2 * A001222 (A248101 (n + 1)).toNat

end

end A195017.P13145989425440940483

namespace A195017

/-- `A001222(n+1)-2*A001222(A248101(n+1))` -/
def P13145989425440940483.Spec : Prop :=
  ∀ n, P13145989425440940483.a n = A195017 (n + 1)

end A195017

/-! ## A195017.P16577575169105795542

`A257992(A061898(n+1))-A257992(n+1)`
-/

namespace A195017.P16577575169105795542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A061898 (n + 1)).toNat - A257992 (n + 1)

end

end A195017.P16577575169105795542

namespace A195017

/-- `A257992(A061898(n+1))-A257992(n+1)` -/
def P16577575169105795542.Spec : Prop :=
  ∀ n, P16577575169105795542.a n = A195017 (n + 1)

end A195017

/-! ## A195017.P3084053976996563392

`A257991(n+1)-A257991(A061898(n+1))`
-/

namespace A195017.P3084053976996563392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1) - A257991 (A061898 (n + 1)).toNat

end

end A195017.P3084053976996563392

namespace A195017

/-- `A257991(n+1)-A257991(A061898(n+1))` -/
def P3084053976996563392.Spec : Prop :=
  ∀ n, P3084053976996563392.a n = A195017 (n + 1)

end A195017

/-! ## A195017.P16328501413461547807

`A257992(A003961(n+1))-A257992(n+1)`
-/

namespace A195017.P16328501413461547807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A003961 (n + 1)).toNat - A257992 (n + 1)

end

end A195017.P16328501413461547807

namespace A195017

/-- `A257992(A003961(n+1))-A257992(n+1)` -/
def P16328501413461547807.Spec : Prop :=
  ∀ n, P16328501413461547807.a n = A195017 (n + 1)

end A195017

/-! ## A195017.P17293020898097565228

`A257991(n+1)-A257991(A003961(n+1))`
-/

namespace A195017.P17293020898097565228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1) - A257991 (A003961 (n + 1)).toNat

end

end A195017.P17293020898097565228

namespace A195017

/-- `A257991(n+1)-A257991(A003961(n+1))` -/
def P17293020898097565228.Spec : Prop :=
  ∀ n, P17293020898097565228.a n = A195017 (n + 1)

end A195017

/-! ## A195017.P9461682871863038470

`A257992(A045965(n+1))-A257992(n+1)`
-/

namespace A195017.P9461682871863038470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A045965 (n + 1)).toNat - A257992 (n + 1)

end

end A195017.P9461682871863038470

namespace A195017

/-- `A257992(A045965(n+1))-A257992(n+1)` -/
def P9461682871863038470.Spec : Prop :=
  ∀ n, P9461682871863038470.a n = A195017 (n + 1)

end A195017

/-! ## A195017.P16283122242283146435

`A257992(A118306(n+1))-A257992(n+1)`
-/

namespace A195017.P16283122242283146435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A118306 (n + 1)).toNat - A257992 (n + 1)

end

end A195017.P16283122242283146435

namespace A195017

/-- `A257992(A118306(n+1))-A257992(n+1)` -/
def P16283122242283146435.Spec : Prop :=
  ∀ n, P16283122242283146435.a n = A195017 (n + 1)

end A195017

/-! ## A195017.P11534219433431179457

`A257991(n+1)-A257991(A118306(n+1))`
-/

namespace A195017.P11534219433431179457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1) - A257991 (A118306 (n + 1)).toNat

end

end A195017.P11534219433431179457

namespace A195017

/-- `A257991(n+1)-A257991(A118306(n+1))` -/
def P11534219433431179457.Spec : Prop :=
  ∀ n, P11534219433431179457.a n = A195017 (n + 1)

end A195017

/-! ## A195017.P15988475248420577618

`A001222(n+1)-A001222(A319522(n+1)²)`
-/

namespace A195017.P15988475248420577618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A319522 (n + 1) ^ 2).toNat

end

end A195017.P15988475248420577618

namespace A195017

/-- `A001222(n+1)-A001222(A319522(n+1)²)` -/
def P15988475248420577618.Spec : Prop :=
  ∀ n, P15988475248420577618.a n = A195017 (n + 1)

end A195017

/-! ## A195017.P7696003847238716001

`A001222(A319521(n+1)²)-A001222(n+1)`
-/

namespace A195017.P7696003847238716001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A319521 (n + 1) ^ 2).toNat - A001222 (n + 1)

end

end A195017.P7696003847238716001

namespace A195017

/-- `A001222(A319521(n+1)²)-A001222(n+1)` -/
def P7696003847238716001.Spec : Prop :=
  ∀ n, P7696003847238716001.a n = A195017 (n + 1)

end A195017

/-! ## A195017.P16897369380644922597

`A257991(n+1)-A257991(A249734(n+1))`
-/

namespace A195017.P16897369380644922597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1) - A257991 (A249734 (n + 1)).toNat

end

end A195017.P16897369380644922597

namespace A195017

/-- `A257991(n+1)-A257991(A249734(n+1))` -/
def P16897369380644922597.Spec : Prop :=
  ∀ n, P16897369380644922597.a n = A195017 (n + 1)

end A195017

/-! ## A195017.P10935834106676057446

`A001222(A247503(n+1)²)-A001222(n+1)`
-/

namespace A195017.P10935834106676057446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A247503 (n + 1) ^ 2).toNat - A001222 (n + 1)

end

end A195017.P10935834106676057446

namespace A195017

/-- `A001222(A247503(n+1)²)-A001222(n+1)` -/
def P10935834106676057446.Spec : Prop :=
  ∀ n, P10935834106676057446.a n = A195017 (n + 1)

end A195017

/-! ## A195017.P13017418297473923798

`A001222(n+1)-A001222(A248101(n+1)²)`
-/

namespace A195017.P13017418297473923798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A248101 (n + 1) ^ 2).toNat

end

end A195017.P13017418297473923798

namespace A195017

/-- `A001222(n+1)-A001222(A248101(n+1)²)` -/
def P13017418297473923798.Spec : Prop :=
  ∀ n, P13017418297473923798.a n = A195017 (n + 1)

end A195017

/-! ## A195017.P7111604306274283742

`A257991((n+1)²)-A001222(n+1)`
-/

namespace A195017.P7111604306274283742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 ((n + 1) ^ 2) - A001222 (n + 1)

end

end A195017.P7111604306274283742

namespace A195017

/-- `A257991((n+1)²)-A001222(n+1)` -/
def P7111604306274283742.Spec : Prop :=
  ∀ n, P7111604306274283742.a n = A195017 (n + 1)

end A195017

/-!
# A195018: a(n) = n*(10*n-3).

The programs for A195018, the canonical program `A195018.P10780825552711397623` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195018 has offset 0).

The definition of A195018 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(10*n-3)` (program `A195018.P10780825552711397623`, by `A195018.P10780825552711397623.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195018.P10780825552711397623

`n*(10*n-3)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195018

/-- `n*(10*n-3)` -/
def P10780825552711397623.Spec : Prop :=
  ∀ n, P10780825552711397623.a n = A195018 n

theorem P10780825552711397623.correct : P10780825552711397623.Spec := by
  intro n
  simp only [A195018]

end A195018

/-! ## A195018.P6183619655106816538

`A000566(2*n)`
-/

namespace A195018.P6183619655106816538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (2 * n)

end

end A195018.P6183619655106816538

namespace A195018

/-- `A000566(2*n)` -/
def P6183619655106816538.Spec : Prop :=
  ∀ n, P6183619655106816538.a n = A195018 n

end A195018

/-! ## A195018.P3460300074725662444

`∑[a(n-1)+20]` with `a(0)=0, a(1)=7`
-/

namespace A195018.P3460300074725662444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195018.P3460300074725662444

namespace A195018

/-- `∑[a(n-1)+20]` -/
def P3460300074725662444.Spec : Prop :=
  ∀ n, (P3460300074725662444.a n : ℤ) = A195018 n

end A195018

/-! ## A195018.P9758391771144152684

`13-∑[a(n-1)-20]` with `a(0)=13`
-/

namespace A195018.P9758391771144152684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13] fun n f1 =>
  f1 (n - 1) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195018.P9758391771144152684

namespace A195018

/-- `13-∑[a(n-1)-20]` -/
def P9758391771144152684.Spec : Prop :=
  ∀ n, P9758391771144152684.a n = A195018 n

end A195018

/-! ## A195018.P5330471721767187099

`n²+2*C(3*n, 2)`
-/

namespace A195018.P5330471721767187099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2 * Nat.choose (3 * n) 2

end

end A195018.P5330471721767187099

namespace A195018

/-- `n²+2*C(3*n, 2)` -/
def P5330471721767187099.Spec : Prop :=
  ∀ n, (P5330471721767187099.a n : ℤ) = A195018 n

theorem P5330471721767187099.correct : P5330471721767187099.Spec := by
  intro n
  simp only [A195018, Nat.add_sub_cancel, A195018.P5330471721767187099.a, A195018.P10780825552711397623.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A195018

/-! ## A195018.P5972749571729850031

`5*C(2*n, 2)+2*n`
-/

namespace A195018.P5972749571729850031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose (2 * n) 2 + 2 * n

end

end A195018.P5972749571729850031

namespace A195018

/-- `5*C(2*n, 2)+2*n` -/
def P5972749571729850031.Spec : Prop :=
  ∀ n, (P5972749571729850031.a n : ℤ) = A195018 n

theorem P5972749571729850031.correct : P5972749571729850031.Spec := by
  intro n
  simp only [A195018, Nat.add_sub_cancel, A195018.P5972749571729850031.a, A195018.P10780825552711397623.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A195018

/-! ## A195018.P9067511067600217573

`A152743(n)+n²`
-/

namespace A195018.P9067511067600217573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152743 n + (n ^ 2 : ℤ)

end

end A195018.P9067511067600217573

namespace A195018

/-- `A152743(n)+n²` -/
def P9067511067600217573.Spec : Prop :=
  ∀ n, P9067511067600217573.a n = A195018 n

theorem P9067511067600217573.correct : P9067511067600217573.Spec := by
  intro n
  simp only [A195018, Nat.add_sub_cancel, A195018.P9067511067600217573.a, A195018.P10780825552711397623.a, A152743, A152743.P11194544778889005777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195018

/-! ## A195018.P5293847370278232899

`A152745(n)+2*n`
-/

namespace A195018.P5293847370278232899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152745 n + (2 * n : ℤ)

end

end A195018.P5293847370278232899

namespace A195018

/-- `A152745(n)+2*n` -/
def P5293847370278232899.Spec : Prop :=
  ∀ n, P5293847370278232899.a n = A195018 n

theorem P5293847370278232899.correct : P5293847370278232899.Spec := by
  intro n
  simp only [A195018, Nat.add_sub_cancel, A195018.P5293847370278232899.a, A195018.P10780825552711397623.a, A152745, A152745.P16319448158655216416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195018

/-! ## A195018.P2041416955482945193

`A153784(n)+3*n`
-/

namespace A195018.P2041416955482945193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153784 n + (3 * n : ℤ)

end

end A195018.P2041416955482945193

namespace A195018

/-- `A153784(n)+3*n` -/
def P2041416955482945193.Spec : Prop :=
  ∀ n, P2041416955482945193.a n = A195018 n

theorem P2041416955482945193.correct : P2041416955482945193.Spec := by
  intro n
  simp only [A195018, Nat.add_sub_cancel, A195018.P2041416955482945193.a, A195018.P10780825552711397623.a, A153784, A153784.P16889375824211601871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195018

/-! ## A195018.P14457081543828025424

`A193872(n)/2+n`
-/

namespace A195018.P14457081543828025424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193872 n : ℚ) / 2 + (n : ℚ)

end

end A195018.P14457081543828025424

namespace A195018

/-- `A193872(n)/2+n` -/
def P14457081543828025424.Spec : Prop :=
  ∀ n, P14457081543828025424.a n = (A195018 n : ℚ)

theorem P14457081543828025424.correct : P14457081543828025424.Spec := by
  intro n
  simp only [A195018, Nat.add_sub_cancel, A195018.P14457081543828025424.a, A195018.P10780825552711397623.a, A193872, A193872.P12395081508790096406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195018

/-! ## A195018.P13618545256343451947

`A033583(n)-3*n`
-/

namespace A195018.P13618545256343451947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n - (3 * n : ℤ)

end

end A195018.P13618545256343451947

namespace A195018

/-- `A033583(n)-3*n` -/
def P13618545256343451947.Spec : Prop :=
  ∀ n, P13618545256343451947.a n = A195018 n

theorem P13618545256343451947.correct : P13618545256343451947.Spec := by
  intro n
  simp only [A195018, Nat.add_sub_cancel, A195018.P13618545256343451947.a, A195018.P10780825552711397623.a, A033583, A033583.P12285480609414282410.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195018

/-! ## A195018.P7431111268619970843

`4*A005476(n)-n`
-/

namespace A195018.P7431111268619970843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005476 n - (n : ℤ)

end

end A195018.P7431111268619970843

namespace A195018

/-- `4*A005476(n)-n` -/
def P7431111268619970843.Spec : Prop :=
  ∀ n, P7431111268619970843.a n = A195018 n

end A195018

/-! ## A195018.P14163204622657484902

`A152965(n)+5*n`
-/

namespace A195018.P14163204622657484902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152965 n + (5 * n : ℤ)

end

end A195018.P14163204622657484902

namespace A195018

/-- `A152965(n)+5*n` -/
def P14163204622657484902.Spec : Prop :=
  ∀ n, P14163204622657484902.a n = A195018 n

theorem P14163204622657484902.correct : P14163204622657484902.Spec := by
  intro n
  simp only [A195018, Nat.add_sub_cancel, A195018.P14163204622657484902.a, A195018.P10780825552711397623.a, A152965, A152965.P8792226006321906066.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195018

/-! ## A195018.P3248496514808912083

`n²+2*A062741(n)`
-/

namespace A195018.P3248496514808912083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + 2 * A062741 n

end

end A195018.P3248496514808912083

namespace A195018

/-- `n²+2*A062741(n)` -/
def P3248496514808912083.Spec : Prop :=
  ∀ n, P3248496514808912083.a n = A195018 n

end A195018

/-! ## A195018.P4862485326763103619

`A094159(n)+(2*n)²`
-/

namespace A195018.P4862485326763103619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094159 n + ((2 * n) ^ 2 : ℤ)

end

end A195018.P4862485326763103619

namespace A195018

/-- `A094159(n)+(2*n)²` -/
def P4862485326763103619.Spec : Prop :=
  ∀ n, P4862485326763103619.a n = A195018 n

theorem P4862485326763103619.correct : P4862485326763103619.Spec := by
  intro n
  simp only [A195018, Nat.add_sub_cancel, A195018.P4862485326763103619.a, A195018.P10780825552711397623.a, A094159, A094159.P13229722457034603277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195018

/-! ## A195018.P10944874580570055350

`A139273(n)+2*n²`
-/

namespace A195018.P10944874580570055350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139273 n + (2 * n ^ 2 : ℤ)

end

end A195018.P10944874580570055350

namespace A195018

/-- `A139273(n)+2*n²` -/
def P10944874580570055350.Spec : Prop :=
  ∀ n, P10944874580570055350.a n = A195018 n

theorem P10944874580570055350.correct : P10944874580570055350.Spec := by
  intro n
  simp only [A195018, Nat.add_sub_cancel, A195018.P10944874580570055350.a, A195018.P10780825552711397623.a, A139273, A139273.P14013562454579091989.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195018

/-! ## A195018.P7980620007463824866

`n²+A153792(n)/2`
-/

namespace A195018.P7980620007463824866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (A153792 n : ℚ) / 2

end

end A195018.P7980620007463824866

namespace A195018

/-- `n²+A153792(n)/2` -/
def P7980620007463824866.Spec : Prop :=
  ∀ n, P7980620007463824866.a n = (A195018 n : ℚ)

theorem P7980620007463824866.correct : P7980620007463824866.Spec := by
  intro n
  simp only [A195018, Nat.add_sub_cancel, A195018.P7980620007463824866.a, A195018.P10780825552711397623.a, A153792, A153792.P13758873412561183293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195018

/-! ## A195018.P8153784037065292608

`A014107(n)+8*n²`
-/

namespace A195018.P8153784037065292608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 n + (8 * n ^ 2 : ℤ)

end

end A195018.P8153784037065292608

namespace A195018

/-- `A014107(n)+8*n²` -/
def P8153784037065292608.Spec : Prop :=
  ∀ n, P8153784037065292608.a n = A195018 n

theorem P8153784037065292608.correct : P8153784037065292608.Spec := by
  intro n
  simp only [A195018, Nat.add_sub_cancel, A195018.P8153784037065292608.a, A195018.P10780825552711397623.a, A014107, A014107.P7046062318563033165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195018

/-! ## A195018.P9309933710178629921

`n²+A013656(n)-n`
-/

namespace A195018.P9309933710178629921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A013656 n - (n : ℤ))

end

end A195018.P9309933710178629921

namespace A195018

/-- `n²+A013656(n)-n` -/
def P9309933710178629921.Spec : Prop :=
  ∀ n, P9309933710178629921.a n = A195018 n

theorem P9309933710178629921.correct : P9309933710178629921.Spec := by
  intro n
  simp only [A195018, Nat.add_sub_cancel, A195018.P9309933710178629921.a, A195018.P10780825552711397623.a, A013656, A013656.P11559324039876728310.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195018

/-! ## A195018.P16988394128756360234

`2*A147874(n+1)+n`
-/

namespace A195018.P16988394128756360234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147874 (n + 1) + (n : ℤ)

end

end A195018.P16988394128756360234

namespace A195018

/-- `2*A147874(n+1)+n` -/
def P16988394128756360234.Spec : Prop :=
  ∀ n, P16988394128756360234.a n = A195018 n

theorem P16988394128756360234.correct : P16988394128756360234.Spec := by
  intro n
  simp only [A195018, Nat.add_sub_cancel, A195018.P16988394128756360234.a, A195018.P10780825552711397623.a, A147874, A147874.P12438232049573977665.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195018

/-!
# A195019: Multiples of 3 and of 4 interleaved: a(2*n-1) = 3*n, a(2*n) = 4*n.

The programs for A195019, the canonical program `A195019.P16983912553531432124` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195019 has offset 1).

The definition of A195019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195019.P16983912553531432124

`((n-2)*(-1)^(n+1)+7*(n+1)+3)/4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195019

/-- `((n-2)*(-1)^(n+1)+7*(n+1)+3)/4` -/
def P16983912553531432124.Spec : Prop :=
  ∀ n, P16983912553531432124.a n = (A195019 (n + 1) : ℚ)

end A195019

/-! ## A195019.P16050945501025196043

`∑[∑[ogf((3+4x)/(1+2x+x^2))]]`
-/

namespace A195019.P16050945501025196043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195019.P16050945501025196043

namespace A195019

/-- `∑[∑[ogf((3+4x)/(1+2x+x^2))]]` -/
def P16050945501025196043.Spec : Prop :=
  ∀ n, P16050945501025196043.a n = A195019 (n + 1)

end A195019

/-! ## A195019.P4829175467110022423

`ogf((3+4x)/(1-2x^2+x^4))`
-/

namespace A195019.P4829175467110022423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4] [1, 0, -2, 0, 1] n

end

end A195019.P4829175467110022423

namespace A195019

/-- `ogf((3+4x)/(1-2x^2+x^4))` -/
def P4829175467110022423.Spec : Prop :=
  ∀ n, P4829175467110022423.a n = A195019 (n + 1)

end A195019

/-! ## A195019.P10106359032001523257

`a(n-2)+a(n%2)` with `a(0)=3, a(1)=4`
-/

namespace A195019.P10106359032001523257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) + a (n % 2)

end

end A195019.P10106359032001523257

namespace A195019

/-- `a(n-2)+a(n%2)` -/
def P10106359032001523257.Spec : Prop :=
  ∀ n, (P10106359032001523257.a n : ℤ) = A195019 (n + 1)

end A195019

/-! ## A195019.P4231176007669726361

`a(and(1, n))+a(n-2)` with `a(0)=3, a(1)=4`
-/

namespace A195019.P4231176007669726361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (Nat.land 1 n) + a (n - 2)

end

end A195019.P4231176007669726361

namespace A195019

/-- `a(and(1, n))+a(n-2)` -/
def P4231176007669726361.Spec : Prop :=
  ∀ n, (P4231176007669726361.a n : ℤ) = A195019 (n + 1)

end A195019

/-! ## A195019.P7827431761271403918

`(n-2)/gcd(2, n)+4+n`
-/

namespace A195019.P7827431761271403918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) / (Nat.gcd 2 n : ℚ) + 4 + (n : ℚ)

end

end A195019.P7827431761271403918

namespace A195019

/-- `(n-2)/gcd(2, n)+4+n` -/
def P7827431761271403918.Spec : Prop :=
  ∀ n, P7827431761271403918.a n = (A195019 (n + 1) : ℚ)

end A195019

/-! ## A195019.P3760767055547286618

`∑[a(n-2)-(-1)^n]` with `a(0)=3, a(1)=1`
-/

namespace A195019.P3760767055547286618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  f1 (n - 2) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195019.P3760767055547286618

namespace A195019

/-- `∑[a(n-2)-(-1)^n]` -/
def P3760767055547286618.Spec : Prop :=
  ∀ n, P3760767055547286618.a n = A195019 (n + 1)

end A195019

/-! ## A195019.P1823429249579155361

`lcm(2, xor(n, -2))/2+2+n`
-/

namespace A195019.P1823429249579155361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (Int.xor (n : ℤ) (-2)) : ℚ) / 2 + 2 + (n : ℚ)

end

end A195019.P1823429249579155361

namespace A195019

/-- `lcm(2, xor(n, -2))/2+2+n` -/
def P1823429249579155361.Spec : Prop :=
  ∀ n, P1823429249579155361.a n = (A195019 (n + 1) : ℚ)

end A195019

/-! ## A195019.P13739599299670444488

`∑[gcd(4, n²)]-gcd(n+1, ∑[n])`
-/

namespace A195019.P13739599299670444488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A195019.P13739599299670444488

namespace A195019

/-- `∑[gcd(4, n²)]-gcd(n+1, ∑[n])` -/
def P13739599299670444488.Spec : Prop :=
  ∀ n, P13739599299670444488.a n = A195019 (n + 1)

end A195019

/-! ## A195019.P6440042161783085990

`floor(3*(n+1)²/a(n-1))` with `a(0)=3`
-/

namespace A195019.P6440042161783085990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊3 * (((n + 1) ^ 2 : ℚ) / (a (n - 1) : ℚ))⌋

end

end A195019.P6440042161783085990

namespace A195019

/-- `floor(3*(n+1)²/a(n-1))` -/
def P6440042161783085990.Spec : Prop :=
  ∀ n, P6440042161783085990.a n = A195019 (n + 1)

end A195019

/-! ## A195019.P2518643106411325041

`∑[7-a(n-1)]-a(n-1)` with `a(0)=3`
-/

namespace A195019.P2518643106411325041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A195019.P2518643106411325041

namespace A195019

/-- `∑[7-a(n-1)]-a(n-1)` -/
def P2518643106411325041.Spec : Prop :=
  ∀ n, P2518643106411325041.a n = A195019 (n + 1)

end A195019

/-! ## A195019.P5339483922406233285

`3-((2-n)%2-a(n-2))` with `a(0)=3, a(1)=4`
-/

namespace A195019.P5339483922406233285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  3 - (Int.tmod (2 - (n : ℤ)) 2 - a (n - 2))

end

end A195019.P5339483922406233285

namespace A195019

/-- `3-((2-n)%2-a(n-2))` -/
def P5339483922406233285.Spec : Prop :=
  ∀ n, P5339483922406233285.a n = A195019 (n + 1)

end A195019

/-! ## A195019.P7845372635274545318

`floor(7*(n+1)/2-a(n-1))` with `a(0)=3`
-/

namespace A195019.P7845372635274545318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊7 * ((n + 1 : ℚ) / 2) - (a (n - 1) : ℚ)⌋

end

end A195019.P7845372635274545318

namespace A195019

/-- `floor(7*(n+1)/2-a(n-1))` -/
def P7845372635274545318.Spec : Prop :=
  ∀ n, P7845372635274545318.a n = A195019 (n + 1)

end A195019

/-! ## A195019.P8038334880876400730

`(4-(n+1)%2)*∑[(n+1)%2]`
-/

namespace A195019.P8038334880876400730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - (((n + 1) % 2 : ℕ) : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A195019.P8038334880876400730

namespace A195019

/-- `(4-(n+1)%2)*∑[(n+1)%2]` -/
def P8038334880876400730.Spec : Prop :=
  ∀ n, P8038334880876400730.a n = A195019 (n + 1)

end A195019

/-! ## A195019.P9407895331933172619

`2*a(n-2)-a(n-4)` with `a(0)=3, a(1)=4, a(2)=6, a(3)=8`
-/

namespace A195019.P9407895331933172619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 6, 8] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A195019.P9407895331933172619

namespace A195019

/-- `2*a(n-2)-a(n-4)` -/
def P9407895331933172619.Spec : Prop :=
  ∀ n, P9407895331933172619.a n = A195019 (n + 1)

end A195019

/-! ## A195019.P16083559039409507613

`a(n-2)+a(n-2)/floor(n/2)` with `a(0)=3, a(1)=4`
-/

namespace A195019.P16083559039409507613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) + a (n - 2) / (⌊(n : ℚ) / 2⌋ : ℚ)

end

end A195019.P16083559039409507613

namespace A195019

/-- `a(n-2)+a(n-2)/floor(n/2)` -/
def P16083559039409507613.Spec : Prop :=
  ∀ n, P16083559039409507613.a n = (A195019 (n + 1) : ℚ)

end A195019

/-! ## A195019.P1250298674671313935

`a(n-2)+a(n-2)-a(n-4)` with `a(0)=3, a(1)=4, a(2)=6, a(3)=8`
-/

namespace A195019.P1250298674671313935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 6, 8] fun n a =>
  a (n - 2) + (a (n - 2) - a (n - 4))

end

end A195019.P1250298674671313935

namespace A195019

/-- `a(n-2)+a(n-2)-a(n-4)` -/
def P1250298674671313935.Spec : Prop :=
  ∀ n, P1250298674671313935.a n = A195019 (n + 1)

end A195019

/-! ## A195019.P889877611847465945

`Δ[A195020(n)]`
-/

namespace A195019.P889877611847465945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195019.P889877611847465945

namespace A195019

/-- `Δ[A195020(n)]` -/
def P889877611847465945.Spec : Prop :=
  ∀ n, P889877611847465945.a n = A195019 (n + 1)

end A195019

/-! ## A195019.P3384252943638580974

`A029579(n)+2+n`
-/

namespace A195019.P3384252943638580974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n + 2 + (n : ℤ)

end

end A195019.P3384252943638580974

namespace A195019

/-- `A029579(n)+2+n` -/
def P3384252943638580974.Spec : Prop :=
  ∀ n, P3384252943638580974.a n = A195019 (n + 1)

end A195019

/-! ## A195019.P11401758903494551857

`A029578(n)+3+n`
-/

namespace A195019.P11401758903494551857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n + 3 + (n : ℤ)

end

end A195019.P11401758903494551857

namespace A195019

/-- `A029578(n)+3+n` -/
def P11401758903494551857.Spec : Prop :=
  ∀ n, P11401758903494551857.a n = A195019 (n + 1)

end A195019

/-!
# A195020: Vertex number of a square spiral in which the length of the first two edges are the legs of the primitive Pythagorean triple [3, 4, 5]. The edges of the spiral have length A195019.

The programs for A195020, the canonical program `A195020.P12672019092239494020` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195020 has offset 0).

The definition of A195020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195020.P2319652744428309440

`(2*n*(7*n+13)+(2*n-5)*(-1)^n+5)/16`
-/

namespace A195020.P2319652744428309440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n * (7 * n + 13) : ℤ) + ((2 * n : ℤ) - 5) * (-1) ^ n + 5 : ℚ) / 16

end

end A195020.P2319652744428309440

namespace A195020

/-- `(2*n*(7*n+13)+(2*n-5)*(-1)^n+5)/16` -/
def P2319652744428309440.Spec : Prop :=
  ∀ n, P2319652744428309440.a n = (A195020 n : ℚ)

theorem P2319652744428309440.correct : P2319652744428309440.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A195020, Nat.add_sub_cancel, A195020.P2319652744428309440.a, A195020.P12672019092239494020.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A195020, Nat.add_sub_cancel, A195020.P2319652744428309440.a, A195020.P12672019092239494020.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195020

/-! ## A195020.P12672019092239494020

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=7, a(3)=13, a(4)=21`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195020

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P12672019092239494020.Spec : Prop :=
  ∀ n, P12672019092239494020.a n = A195020 n

theorem P12672019092239494020.correct : P12672019092239494020.Spec := by
  intro n
  simp only [A195020]

end A195020

/-! ## A195020.P5583029898146339837

`1/2*A004526(n+2)*A047335(n+1)`
-/

namespace A195020.P5583029898146339837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A004526 (n + 2) : ℚ) * (A047335 (n + 1) : ℚ)

end

end A195020.P5583029898146339837

namespace A195020

/-- `1/2*A004526(n+2)*A047335(n+1)` -/
def P5583029898146339837.Spec : Prop :=
  ∀ n, P5583029898146339837.a n = (A195020 n : ℚ)

end A195020

/-! ## A195020.P13838627235584447939

`∑[∑[a(n-2)+(-1)^n]]` with `a(0)=0, a(1)=3`
-/

namespace A195020.P13838627235584447939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 (n - 2) + (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195020.P13838627235584447939

namespace A195020

/-- `∑[∑[a(n-2)+(-1)^n]]` -/
def P13838627235584447939.Spec : Prop :=
  ∀ n, P13838627235584447939.a n = A195020 n

end A195020

/-! ## A195020.P11324781933081059005

`∑[gcd(2, n)+a(n-2)+2]` with `a(0)=0, a(1)=3`
-/

namespace A195020.P11324781933081059005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  Nat.gcd 2 n + (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195020.P11324781933081059005

namespace A195020

/-- `∑[gcd(2, n)+a(n-2)+2]` -/
def P11324781933081059005.Spec : Prop :=
  ∀ n, (P11324781933081059005.a n : ℤ) = A195020 n

end A195020

/-! ## A195020.P7270428715169454646

`∑[a(n-2)+4-n%2]` with `a(0)=0, a(1)=3`
-/

namespace A195020.P7270428715169454646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 2) + (4 - ((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195020.P7270428715169454646

namespace A195020

/-- `∑[a(n-2)+4-n%2]` -/
def P7270428715169454646.Spec : Prop :=
  ∀ n, P7270428715169454646.a n = A195020 n

end A195020

/-! ## A195020.P10778863128826546696

`∑[floor(3/a(n-1)*n²)]` with `a(0)=0, a(1)=3`
-/

namespace A195020.P10778863128826546696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  ⌊3 / (f1 (n - 1) : ℚ) * (n ^ 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195020.P10778863128826546696

namespace A195020

/-- `∑[floor(3/a(n-1)*n²)]` -/
def P10778863128826546696.Spec : Prop :=
  ∀ n, P10778863128826546696.a n = A195020 n

end A195020

/-! ## A195020.P5733680610584432955

`∑[Δ[n²]-gcd(1-n, floor(n/2))]`
-/

namespace A195020.P5733680610584432955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195020.P5733680610584432955

namespace A195020

/-- `∑[Δ[n²]-gcd(1-n, floor(n/2))]` -/
def P5733680610584432955.Spec : Prop :=
  ∀ n, P5733680610584432955.a n = A195020 n

end A195020

/-! ## A195020.P2628400962995278347

`∑[∑[∑[(-1)^n-a(n-1)]]]` with `a(0)=0, a(1)=3`
-/

namespace A195020.P2628400962995278347
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f3 =>
  (-1) ^ n - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195020.P2628400962995278347

namespace A195020

/-- `∑[∑[∑[(-1)^n-a(n-1)]]]` -/
def P2628400962995278347.Spec : Prop :=
  ∀ n, P2628400962995278347.a n = A195020 n

end A195020

/-! ## A195020.P13764462910504777175

`∑[7-a(n-1)]+a(n-2)` with `a(0)=0, a(1)=3`
-/

namespace A195020.P13764462910504777175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A195020.P13764462910504777175

namespace A195020

/-- `∑[7-a(n-1)]+a(n-2)` -/
def P13764462910504777175.Spec : Prop :=
  ∀ n, P13764462910504777175.a n = A195020 n

end A195020

/-! ## A195020.P17860610568624467484

`∑[(n-3)/(and(1, n)+1)+n+3]`
-/

namespace A195020.P17860610568624467484
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) / (Nat.land 1 n + 1 : ℚ) + (n + 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195020.P17860610568624467484

namespace A195020

/-- `∑[(n-3)/(and(1, n)+1)+n+3]` -/
def P17860610568624467484.Spec : Prop :=
  ∀ n, P17860610568624467484.a n = (A195020 n : ℚ)

end A195020

/-! ## A195020.P9006230394987383238

`∑[Δ[n²]-abs(∑[n]%(n+1)-1)]`
-/

namespace A195020.P9006230394987383238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - |(((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1) : ℕ) : ℤ) - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195020.P9006230394987383238

namespace A195020

/-- `∑[Δ[n²]-abs(∑[n]%(n+1)-1)]` -/
def P9006230394987383238.Spec : Prop :=
  ∀ n, P9006230394987383238.a n = A195020 n

end A195020

/-! ## A195020.P17023612224484163086

`∑[∑[7-a(n-1)]-a(n-1)]` with `a(0)=0, a(1)=3`
-/

namespace A195020.P17023612224484163086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  7 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195020.P17023612224484163086

namespace A195020

/-- `∑[∑[7-a(n-1)]-a(n-1)]` -/
def P17023612224484163086.Spec : Prop :=
  ∀ n, P17023612224484163086.a n = A195020 n

end A195020

/-! ## A195020.P16844578616772343315

`A193053(n)-(n+1)`
-/

namespace A195020.P16844578616772343315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193053 n - (n + 1 : ℤ)

end

end A195020.P16844578616772343315

namespace A195020

/-- `A193053(n)-(n+1)` -/
def P16844578616772343315.Spec : Prop :=
  ∀ n, P16844578616772343315.a n = A195020 n

theorem P16844578616772343315.correct : P16844578616772343315.Spec := by
  intro n
  simp only [A195020, Nat.add_sub_cancel, A195020.P16844578616772343315.a, A195020.P12672019092239494020.a, A193053, A193053.P13739462359806345897.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195020

/-! ## A195020.P15806872920317683524

`∑[Δ[n²]-A057979(n)]`
-/

namespace A195020.P15806872920317683524
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195020.P15806872920317683524

namespace A195020

/-- `∑[Δ[n²]-A057979(n)]` -/
def P15806872920317683524.Spec : Prop :=
  ∀ n, P15806872920317683524.a n = A195020 n

end A195020

/-! ## A195020.P1351820669497302294

`A266287(n)+A001318(n)`
-/

namespace A195020.P1351820669497302294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266287 n + A001318 n

end

end A195020.P1351820669497302294

namespace A195020

/-- `A266287(n)+A001318(n)` -/
def P1351820669497302294.Spec : Prop :=
  ∀ n, P1351820669497302294.a n = A195020 n

end A195020

/-! ## A195020.P3776826126632050310

`A258087(n)+A253145(n)`
-/

namespace A195020.P3776826126632050310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258087 n + A253145 n

end

end A195020.P3776826126632050310

namespace A195020

/-- `A258087(n)+A253145(n)` -/
def P3776826126632050310.Spec : Prop :=
  ∀ n, P3776826126632050310.a n = A195020 n

end A195020

/-! ## A195020.P9567744895329826417

`A397990(n)+A165157(n)`
-/

namespace A195020.P9567744895329826417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397990 n + A165157 n

end

end A195020.P9567744895329826417

namespace A195020

/-- `A397990(n)+A165157(n)` -/
def P9567744895329826417.Spec : Prop :=
  ∀ n, P9567744895329826417.a n = A195020 n

end A195020

/-! ## A195020.P15777978585494326329

`∪[A022264(n), A024966(n)]`
-/

namespace A195020.P15777978585494326329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024966 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195020.P15777978585494326329

namespace A195020

/-- `∪[A022264(n), A024966(n)]` -/
def P15777978585494326329.Spec : Prop :=
  ∀ n, (P15777978585494326329.a n : ℤ) = A195020 n

end A195020

/-! ## A195020.P11573156965985311422

`A211538(n+1)+A055998(n)`
-/

namespace A195020.P11573156965985311422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 (n + 1) + A055998 n

end

end A195020.P11573156965985311422

namespace A195020

/-- `A211538(n+1)+A055998(n)` -/
def P11573156965985311422.Spec : Prop :=
  ∀ n, P11573156965985311422.a n = A195020 n

end A195020

/-!
# A195021: a(n) = n*(14*n - 11).

The programs for A195021, the canonical program `A195021.P8547858062426879313` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195021 has offset 0).

The definition of A195021 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(14*n-11)` (program `A195021.P8547858062426879313`, by `A195021.P8547858062426879313.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195021.P8547858062426879313

`n*(14*n-11)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195021

/-- `n*(14*n-11)` -/
def P8547858062426879313.Spec : Prop :=
  ∀ n, P8547858062426879313.a n = A195021 n

theorem P8547858062426879313.correct : P8547858062426879313.Spec := by
  intro n
  simp only [A195021]

end A195021

/-! ## A195021.P5733482256033223509

`∑[a(n-1)+28]` with `a(0)=0, a(1)=3`
-/

namespace A195021.P5733482256033223509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195021.P5733482256033223509

namespace A195021

/-- `∑[a(n-1)+28]` -/
def P5733482256033223509.Spec : Prop :=
  ∀ n, (P5733482256033223509.a n : ℤ) = A195021 n

end A195021

/-! ## A195021.P11119702861573191029

`A152760(n)-n`
-/

namespace A195021.P11119702861573191029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152760 n - (n : ℤ)

end

end A195021.P11119702861573191029

namespace A195021

/-- `A152760(n)-n` -/
def P11119702861573191029.Spec : Prop :=
  ∀ n, P11119702861573191029.a n = A195021 n

theorem P11119702861573191029.correct : P11119702861573191029.Spec := by
  intro n
  simp only [A195021, Nat.add_sub_cancel, A195021.P11119702861573191029.a, A195021.P8547858062426879313.a, A152760, A152760.P16098557334382843204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195021

/-! ## A195021.P13072939409680188964

`2*A051868(n)+n`
-/

namespace A195021.P13072939409680188964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051868 n + (n : ℤ)

end

end A195021.P13072939409680188964

namespace A195021

/-- `2*A051868(n)+n` -/
def P13072939409680188964.Spec : Prop :=
  ∀ n, P13072939409680188964.a n = A195021 n

theorem P13072939409680188964.correct : P13072939409680188964.Spec := by
  intro n
  simp only [A195021, Nat.add_sub_cancel, A195021.P13072939409680188964.a, A195021.P8547858062426879313.a, A051868, A051868.P8510755596375269483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195021

/-! ## A195021.P17650603647417770968

`A254474(n)+2*n`
-/

namespace A195021.P17650603647417770968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254474 n + (2 * n : ℤ)

end

end A195021.P17650603647417770968

namespace A195021

/-- `A254474(n)+2*n` -/
def P17650603647417770968.Spec : Prop :=
  ∀ n, P17650603647417770968.a n = A195021 n

theorem P17650603647417770968.correct : P17650603647417770968.Spec := by
  intro n
  simp only [A195021, Nat.add_sub_cancel, A195021.P17650603647417770968.a, A195021.P8547858062426879313.a, A254474, A254474.P15703138997127178640.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195021

/-! ## A195021.P7834431442010893907

`2*A139268(n)-n`
-/

namespace A195021.P7834431442010893907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139268 n - (n : ℤ)

end

end A195021.P7834431442010893907

namespace A195021

/-- `2*A139268(n)-n` -/
def P7834431442010893907.Spec : Prop :=
  ∀ n, P7834431442010893907.a n = A195021 n

theorem P7834431442010893907.correct : P7834431442010893907.Spec := by
  intro n
  simp only [A195021, Nat.add_sub_cancel, A195021.P7834431442010893907.a, A195021.P8547858062426879313.a, A139268, A139268.P11340989614029244212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195021

/-! ## A195021.P2982314603022441004

`4*A001106(n)-n`
-/

namespace A195021.P2982314603022441004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001106 n - (n : ℤ)

end

end A195021.P2982314603022441004

namespace A195021

/-- `4*A001106(n)-n` -/
def P2982314603022441004.Spec : Prop :=
  ∀ n, P2982314603022441004.a n = A195021 n

end A195021

/-! ## A195021.P14869171629943723661

`A195320(n)-4*n`
-/

namespace A195021.P14869171629943723661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195320 n - (4 * n : ℤ)

end

end A195021.P14869171629943723661

namespace A195021

/-- `A195320(n)-4*n` -/
def P14869171629943723661.Spec : Prop :=
  ∀ n, P14869171629943723661.a n = A195021 n

theorem P14869171629943723661.correct : P14869171629943723661.Spec := by
  intro n
  simp only [A195021, Nat.add_sub_cancel, A195021.P14869171629943723661.a, A195021.P8547858062426879313.a, A195320, A195320.P13388806394777680698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195021

/-! ## A195021.P4422621131684110578

`A316466(n)-5*n`
-/

namespace A195021.P4422621131684110578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316466 n - (5 * n : ℤ)

end

end A195021.P4422621131684110578

namespace A195021

/-- `A316466(n)-5*n` -/
def P4422621131684110578.Spec : Prop :=
  ∀ n, P4422621131684110578.a n = A195021 n

theorem P4422621131684110578.correct : P4422621131684110578.Spec := by
  intro n
  simp only [A195021, Nat.add_sub_cancel, A195021.P4422621131684110578.a, A195021.P8547858062426879313.a, A316466, A316466.P14248741323085177896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195021

/-! ## A195021.P11952429293898060901

`A153783(n)+C(n, 2)`
-/

namespace A195021.P11952429293898060901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153783 n + (Nat.choose n 2 : ℤ)

end

end A195021.P11952429293898060901

namespace A195021

/-- `A153783(n)+C(n, 2)` -/
def P11952429293898060901.Spec : Prop :=
  ∀ n, P11952429293898060901.a n = A195021 n

end A195021

/-! ## A195021.P13409637525178427374

`A134154(n)-(n+1)²`
-/

namespace A195021.P13409637525178427374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134154 n - ((n + 1) ^ 2 : ℤ)

end

end A195021.P13409637525178427374

namespace A195021

/-- `A134154(n)-(n+1)²` -/
def P13409637525178427374.Spec : Prop :=
  ∀ n, P13409637525178427374.a n = A195021 n

theorem P13409637525178427374.correct : P13409637525178427374.Spec := by
  intro n
  simp only [A195021, Nat.add_sub_cancel, A195021.P13409637525178427374.a, A195021.P8547858062426879313.a, A134154, A134154.P10105203805466113981.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195021

/-! ## A195021.P5652116538585949623

`n²+2*A051867(n)`
-/

namespace A195021.P5652116538585949623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + 2 * A051867 n

end

end A195021.P5652116538585949623

namespace A195021

/-- `n²+2*A051867(n)` -/
def P5652116538585949623.Spec : Prop :=
  ∀ n, P5652116538585949623.a n = A195021 n

end A195021

/-! ## A195021.P5537131814604869636

`A255185(n)+2*n²`
-/

namespace A195021.P5537131814604869636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255185 n + (2 * n ^ 2 : ℤ)

end

end A195021.P5537131814604869636

namespace A195021

/-- `A255185(n)+2*n²` -/
def P5537131814604869636.Spec : Prop :=
  ∀ n, P5537131814604869636.a n = A195021 n

theorem P5537131814604869636.correct : P5537131814604869636.Spec := by
  intro n
  simp only [A195021, Nat.add_sub_cancel, A195021.P5537131814604869636.a, A195021.P8547858062426879313.a, A255185, A255185.P14062524724034212959.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195021

/-! ## A195021.P17319971532814421923

`A161935(n)+∑[2*n]`
-/

namespace A195021.P17319971532814421923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161935 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A195021.P17319971532814421923

namespace A195021

/-- `A161935(n)+∑[2*n]` -/
def P17319971532814421923.Spec : Prop :=
  ∀ n, P17319971532814421923.a n = A195021 n

end A195021

/-! ## A195021.P10508864052189677035

`A153448(n)+n-n²`
-/

namespace A195021.P10508864052189677035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153448 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A195021.P10508864052189677035

namespace A195021

/-- `A153448(n)+n-n²` -/
def P10508864052189677035.Spec : Prop :=
  ∀ n, P10508864052189677035.a n = A195021 n

theorem P10508864052189677035.correct : P10508864052189677035.Spec := by
  intro n
  simp only [A195021, Nat.add_sub_cancel, A195021.P10508864052189677035.a, A195021.P8547858062426879313.a, A153448, A153448.P13695387970658973347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195021

/-! ## A195021.P8155586763253658538

`A153795(n)-(n²+n)`
-/

namespace A195021.P8155586763253658538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153795 n - (n ^ 2 + n : ℤ)

end

end A195021.P8155586763253658538

namespace A195021

/-- `A153795(n)-(n²+n)` -/
def P8155586763253658538.Spec : Prop :=
  ∀ n, P8155586763253658538.a n = A195021 n

theorem P8155586763253658538.correct : P8155586763253658538.Spec := by
  intro n
  simp only [A195021, Nat.add_sub_cancel, A195021.P8155586763253658538.a, A195021.P8547858062426879313.a, A153795, A153795.P4253151262494616072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195021

/-! ## A195021.P11578329739523500626

`∑[n]+A255187(n)+n`
-/

namespace A195021.P11578329739523500626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A255187 n + (n : ℤ))

end

end A195021.P11578329739523500626

namespace A195021

/-- `∑[n]+A255187(n)+n` -/
def P11578329739523500626.Spec : Prop :=
  ∀ n, P11578329739523500626.a n = A195021 n

end A195021

/-! ## A195021.P1922158878060754533

`A051874(n)+A002939(n)`
-/

namespace A195021.P1922158878060754533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051874 n + A002939 n

end

end A195021.P1922158878060754533

namespace A195021

/-- `A051874(n)+A002939(n)` -/
def P1922158878060754533.Spec : Prop :=
  ∀ n, P1922158878060754533.a n = A195021 n

theorem P1922158878060754533.correct : P1922158878060754533.Spec := by
  intro n
  simp only [A195021, Nat.add_sub_cancel, A195021.P1922158878060754533.a, A195021.P8547858062426879313.a, A002939, A002939.P11095602872349887610.a, A051874, A051874.P13000992848419538759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195021

/-! ## A195021.P12874456993551477116

`A064200(n)+A014105(n)`
-/

namespace A195021.P12874456993551477116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + A014105 n

end

end A195021.P12874456993551477116

namespace A195021

/-- `A064200(n)+A014105(n)` -/
def P12874456993551477116.Spec : Prop :=
  ∀ n, P12874456993551477116.a n = A195021 n

theorem P12874456993551477116.correct : P12874456993551477116.Spec := by
  intro n
  simp only [A195021, Nat.add_sub_cancel, A195021.P12874456993551477116.a, A195021.P8547858062426879313.a, A014105, A014105.P182524374866796289.a, A064200, A064200.P18272209519029569283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195021

/-! ## A195021.P14386373175568822084

`A051876(n)+A049450(n)`
-/

namespace A195021.P14386373175568822084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051876 n + A049450 n

end

end A195021.P14386373175568822084

namespace A195021

/-- `A051876(n)+A049450(n)` -/
def P14386373175568822084.Spec : Prop :=
  ∀ n, P14386373175568822084.a n = A195021 n

theorem P14386373175568822084.correct : P14386373175568822084.Spec := by
  intro n
  simp only [A195021, Nat.add_sub_cancel, A195021.P14386373175568822084.a, A195021.P8547858062426879313.a, A049450, A049450.P1815257678583562472.a, A051876, A051876.P7910470835603757038.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195021

/-!
# A195023: a(n) = 14*n^2 - 4*n.

The programs for A195023, the canonical program `A195023.P13395883807883486776` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195023 has offset 0).

The definition of A195023 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*n²-4*n` (program `A195023.P13395883807883486776`, by `A195023.P13395883807883486776.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195023.P13395883807883486776

`14*n²-4*n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195023

/-- `14*n²-4*n` -/
def P13395883807883486776.Spec : Prop :=
  ∀ n, P13395883807883486776.a n = A195023 n

theorem P13395883807883486776.correct : P13395883807883486776.Spec := by
  intro n
  simp only [A195023]

end A195023

/-! ## A195023.P3619012608003090531

`2*A135703(n)`
-/

namespace A195023.P3619012608003090531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135703 n

end

end A195023.P3619012608003090531

namespace A195023

/-- `2*A135703(n)` -/
def P3619012608003090531.Spec : Prop :=
  ∀ n, P3619012608003090531.a n = A195023 n

theorem P3619012608003090531.correct : P3619012608003090531.Spec := by
  intro n
  simp only [A195023, Nat.add_sub_cancel, A195023.P3619012608003090531.a, A195023.P13395883807883486776.a, A135703, A135703.P16089761573645246278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195023

/-! ## A195023.P718955160779329739

`∑[a(n-1)+28]` with `a(0)=0, a(1)=10`
-/

namespace A195023.P718955160779329739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195023.P718955160779329739

namespace A195023

/-- `∑[a(n-1)+28]` -/
def P718955160779329739.Spec : Prop :=
  ∀ n, (P718955160779329739.a n : ℤ) = A195023 n

end A195023

/-! ## A195023.P17673558962433428611

`n*(A008596(n)-4)`
-/

namespace A195023.P17673558962433428611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008596 n - 4)

end

end A195023.P17673558962433428611

namespace A195023

/-- `n*(A008596(n)-4)` -/
def P17673558962433428611.Spec : Prop :=
  ∀ n, P17673558962433428611.a n = A195023 n

theorem P17673558962433428611.correct : P17673558962433428611.Spec := by
  intro n
  simp only [A195023, Nat.add_sub_cancel, A195023.P17673558962433428611.a, A195023.P13395883807883486776.a, A008596, A008596.P5483684624845691048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195023

/-! ## A195023.P17094337455594239313

`n*(A131877(n)-5)`
-/

namespace A195023.P17094337455594239313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A131877 n - 5)

end

end A195023.P17094337455594239313

namespace A195023

/-- `n*(A131877(n)-5)` -/
def P17094337455594239313.Spec : Prop :=
  ∀ n, P17094337455594239313.a n = A195023 n

theorem P17094337455594239313.correct : P17094337455594239313.Spec := by
  intro n
  simp only [A195023, Nat.add_sub_cancel, A195023.P17094337455594239313.a, A195023.P13395883807883486776.a, A131877, A131877.P1991480590599804805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195023

/-! ## A195023.P1633257387818831759

`A005911(n)%A204675(n)`
-/

namespace A195023.P1633257387818831759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005911 n) (A204675 n)

end

end A195023.P1633257387818831759

namespace A195023

/-- `A005911(n)%A204675(n)` -/
def P1633257387818831759.Spec : Prop :=
  ∀ n, P1633257387818831759.a n = A195023 n

end A195023

/-! ## A195023.P12768839889157937263

`A158558(n)%A082041(n)`
-/

namespace A195023.P12768839889157937263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158558 n) (A082041 n)

end

end A195023.P12768839889157937263

namespace A195023

/-- `A158558(n)%A082041(n)` -/
def P12768839889157937263.Spec : Prop :=
  ∀ n, P12768839889157937263.a n = A195023 n

end A195023

/-! ## A195023.P548397461350170181

`2*n*A116728(n+2)`
-/

namespace A195023.P548397461350170181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A116728 (n + 2)

end

end A195023.P548397461350170181

namespace A195023

/-- `2*n*A116728(n+2)` -/
def P548397461350170181.Spec : Prop :=
  ∀ n, P548397461350170181.a n = A195023 n

end A195023

/-! ## A195023.P15005778832658930431

`A194238(A133655(n))`
-/

namespace A195023.P15005778832658930431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194238 (A133655 n).toNat

end

end A195023.P15005778832658930431

namespace A195023

/-- `A194238(A133655(n))` -/
def P15005778832658930431.Spec : Prop :=
  ∀ n, P15005778832658930431.a n = A195023 n

end A195023

/-!
# A195024: a(n) = n*(14*n - 1).

The programs for A195024, the canonical program `A195024.P14352591559818533670` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195024 has offset 0).

The definition of A195024 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(14*n-1)` (program `A195024.P14352591559818533670`, by `A195024.P14352591559818533670.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195024.P12178537641186693258

`14*n²-n`
-/

namespace A195024.P12178537641186693258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (14 * n ^ 2 : ℤ) - (n : ℤ)

end

end A195024.P12178537641186693258

namespace A195024

/-- `14*n²-n` -/
def P12178537641186693258.Spec : Prop :=
  ∀ n, P12178537641186693258.a n = A195024 n

theorem P12178537641186693258.correct : P12178537641186693258.Spec := by
  intro n
  simp only [A195024, Nat.add_sub_cancel, A195024.P12178537641186693258.a, A195024.P14352591559818533670.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A195024

/-! ## A195024.P14352591559818533670

`n*(14*n-1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195024

/-- `n*(14*n-1)` -/
def P14352591559818533670.Spec : Prop :=
  ∀ n, P14352591559818533670.a n = A195024 n

theorem P14352591559818533670.correct : P14352591559818533670.Spec := by
  intro n
  simp only [A195024]

end A195024

/-! ## A195024.P5223431960133867008

`C(2*7*n, 2)/7`
-/

namespace A195024.P5223431960133867008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (7 * n)) 2 : ℚ) / 7

end

end A195024.P5223431960133867008

namespace A195024

/-- `C(2*7*n, 2)/7` -/
def P5223431960133867008.Spec : Prop :=
  ∀ n, P5223431960133867008.a n = (A195024 n : ℚ)

theorem P5223431960133867008.correct : P5223431960133867008.Spec := by
  intro n
  simp only [A195024, Nat.add_sub_cancel, A195024.P5223431960133867008.a, A195024.P14352591559818533670.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A195024

/-! ## A195024.P1321413259207982897

`∑[a(n-1)+28]` with `a(0)=0, a(1)=13`
-/

namespace A195024.P1321413259207982897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 13] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195024.P1321413259207982897

namespace A195024

/-- `∑[a(n-1)+28]` -/
def P1321413259207982897.Spec : Prop :=
  ∀ n, (P1321413259207982897.a n : ℤ) = A195024 n

end A195024

/-! ## A195024.P15431077248624301427

`abs(n-A144555(n))`
-/

namespace A195024.P15431077248624301427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A144555 n|

end

end A195024.P15431077248624301427

namespace A195024

/-- `abs(n-A144555(n))` -/
def P15431077248624301427.Spec : Prop :=
  ∀ n, P15431077248624301427.a n = A195024 n

end A195024

/-! ## A195024.P507576400418277957

`floor(A158556(n)/2-n)`
-/

namespace A195024.P507576400418277957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158556 n : ℚ) / 2 - (n : ℚ)⌋

end

end A195024.P507576400418277957

namespace A195024

/-- `floor(A158556(n)/2-n)` -/
def P507576400418277957.Spec : Prop :=
  ∀ n, P507576400418277957.a n = A195024 n

end A195024

/-! ## A195024.P9941786774719605938

`A016922(n)%A033575(n)`
-/

namespace A195024.P9941786774719605938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016922 n) (A033575 n)

end

end A195024.P9941786774719605938

namespace A195024

/-- `A016922(n)%A033575(n)` -/
def P9941786774719605938.Spec : Prop :=
  ∀ n, P9941786774719605938.a n = A195024 n

end A195024

/-! ## A195024.P6599219183771653809

`A158558(n)%A143859(n+1)`
-/

namespace A195024.P6599219183771653809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158558 n) (A143859 (n + 1))

end

end A195024.P6599219183771653809

namespace A195024

/-- `A158558(n)%A143859(n+1)` -/
def P6599219183771653809.Spec : Prop :=
  ∀ n, P6599219183771653809.a n = A195024 n

end A195024

/-! ## A195024.P115809294556225896

`A022264(2*n)`
-/

namespace A195024.P115809294556225896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 (2 * n)

end

end A195024.P115809294556225896

namespace A195024

/-- `A022264(2*n)` -/
def P115809294556225896.Spec : Prop :=
  ∀ n, P115809294556225896.a n = A195024 n

end A195024

/-! ## A195024.P2885001098013889262

`record[A022998(n)²-∑[n]]`
-/

namespace A195024.P2885001098013889262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n ^ 2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195024.P2885001098013889262

namespace A195024

/-- `record[A022998(n)²-∑[n]]` -/
def P2885001098013889262.Spec : Prop :=
  ∀ n, P2885001098013889262.a n = A195024 n

end A195024

/-! ## A195024.P8699555689714897962

`A057570(A008574(n))`
-/

namespace A195024.P8699555689714897962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057570 (A008574 n).toNat

end

end A195024.P8699555689714897962

namespace A195024

/-- `A057570(A008574(n))` -/
def P8699555689714897962.Spec : Prop :=
  ∀ n, P8699555689714897962.a n = A195024 n

end A195024

/-! ## A195024.P14671502332678577697

`A011867(2*7*n)`
-/

namespace A195024.P14671502332678577697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011867 (2 * (7 * n))

end

end A195024.P14671502332678577697

namespace A195024

/-- `A011867(2*7*n)` -/
def P14671502332678577697.Spec : Prop :=
  ∀ n, P14671502332678577697.a n = A195024 n

end A195024

/-!
# A195025: a(n) = n*(14*n + 3).

The programs for A195025, the canonical program `A195025.P11785065564624553900` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195025 has offset 0).

The definition of A195025 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(14*n+3)` (program `A195025.P11785065564624553900`, by `A195025.P11785065564624553900.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195025.P11785065564624553900

`n*(14*n+3)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195025

/-- `n*(14*n+3)` -/
def P11785065564624553900.Spec : Prop :=
  ∀ n, (P11785065564624553900.a n : ℤ) = A195025 n

theorem P11785065564624553900.correct : P11785065564624553900.Spec := by
  intro n
  simp only [A195025]

end A195025

/-! ## A195025.P14786860132030127562

`∑[a(n-1)+28]` with `a(0)=0, a(1)=17`
-/

namespace A195025.P14786860132030127562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 17] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195025.P14786860132030127562

namespace A195025

/-- `∑[a(n-1)+28]` -/
def P14786860132030127562.Spec : Prop :=
  ∀ n, (P14786860132030127562.a n : ℤ) = A195025 n

end A195025

/-! ## A195025.P2534069854359982776

`2*A092277(n)+n`
-/

namespace A195025.P2534069854359982776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092277 n + (n : ℤ)

end

end A195025.P2534069854359982776

namespace A195025

/-- `2*A092277(n)+n` -/
def P2534069854359982776.Spec : Prop :=
  ∀ n, P2534069854359982776.a n = A195025 n

theorem P2534069854359982776.correct : P2534069854359982776.Spec := by
  intro n
  simp only [A195025, Nat.add_sub_cancel, A195025.P2534069854359982776.a, A195025.P11785065564624553900.a, A092277, A092277.P17700678065174571920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195025

/-! ## A195025.P10546108499431521416

`A144555(n)+3*n`
-/

namespace A195025.P10546108499431521416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144555 n + (3 * n : ℤ)

end

end A195025.P10546108499431521416

namespace A195025

/-- `A144555(n)+3*n` -/
def P10546108499431521416.Spec : Prop :=
  ∀ n, P10546108499431521416.a n = A195025 n

theorem P10546108499431521416.correct : P10546108499431521416.Spec := by
  intro n
  simp only [A195025, Nat.add_sub_cancel, A195025.P10546108499431521416.a, A195025.P11785065564624553900.a, A144555, A144555.P7867283677367482726.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195025

/-! ## A195025.P16291402669596329330

`4*A022265(n)+n`
-/

namespace A195025.P16291402669596329330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A022265 n + (n : ℤ)

end

end A195025.P16291402669596329330

namespace A195025

/-- `4*A022265(n)+n` -/
def P16291402669596329330.Spec : Prop :=
  ∀ n, P16291402669596329330.a n = A195025 n

end A195025

/-! ## A195025.P16227948945092429604

`A195024(n)+4*n`
-/

namespace A195025.P16227948945092429604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195024 n + (4 * n : ℤ)

end

end A195025.P16227948945092429604

namespace A195025

/-- `A195024(n)+4*n` -/
def P16227948945092429604.Spec : Prop :=
  ∀ n, P16227948945092429604.a n = A195025 n

theorem P16227948945092429604.correct : P16227948945092429604.Spec := by
  intro n
  simp only [A195025, Nat.add_sub_cancel, A195025.P16227948945092429604.a, A195025.P11785065564624553900.a, A195024, A195024.P14352591559818533670.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195025

/-! ## A195025.P2142597479681836917

`A195026(n)-4*n`
-/

namespace A195025.P2142597479681836917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195026 n - (4 * n : ℤ)

end

end A195025.P2142597479681836917

namespace A195025

/-- `A195026(n)-4*n` -/
def P2142597479681836917.Spec : Prop :=
  ∀ n, P2142597479681836917.a n = A195025 n

theorem P2142597479681836917.correct : P2142597479681836917.Spec := by
  intro n
  simp only [A195025, Nat.add_sub_cancel, A195025.P2142597479681836917.a, A195025.P11785065564624553900.a, A195026, A195026.P14226979605826923693.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195025

/-! ## A195025.P9666960005675903875

`A195320(n)+10*n`
-/

namespace A195025.P9666960005675903875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195320 n + (10 * n : ℤ)

end

end A195025.P9666960005675903875

namespace A195025

/-- `A195320(n)+10*n` -/
def P9666960005675903875.Spec : Prop :=
  ∀ n, P9666960005675903875.a n = A195025 n

theorem P9666960005675903875.correct : P9666960005675903875.Spec := by
  intro n
  simp only [A195025, Nat.add_sub_cancel, A195025.P9666960005675903875.a, A195025.P11785065564624553900.a, A195320, A195320.P13388806394777680698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195025

/-! ## A195025.P16575154706731494224

`A195028(n)-10*n`
-/

namespace A195025.P16575154706731494224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195028 n - (10 * n : ℤ)

end

end A195025.P16575154706731494224

namespace A195025

/-- `A195028(n)-10*n` -/
def P16575154706731494224.Spec : Prop :=
  ∀ n, P16575154706731494224.a n = A195025 n

theorem P16575154706731494224.correct : P16575154706731494224.Spec := by
  intro n
  simp only [A195025, Nat.add_sub_cancel, A195025.P16575154706731494224.a, A195025.P11785065564624553900.a, A195028, A195028.P15304006162796783085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195025

/-! ## A195025.P10662867092035554006

`A144314(n)-(2*n)²`
-/

namespace A195025.P10662867092035554006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144314 n - ((2 * n) ^ 2 : ℤ)

end

end A195025.P10662867092035554006

namespace A195025

/-- `A144314(n)-(2*n)²` -/
def P10662867092035554006.Spec : Prop :=
  ∀ n, P10662867092035554006.a n = A195025 n

theorem P10662867092035554006.correct : P10662867092035554006.Spec := by
  intro n
  simp only [A195025, Nat.add_sub_cancel, A195025.P10662867092035554006.a, A195025.P11785065564624553900.a, A144314, A144314.P8498779635623249334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195025

/-! ## A195025.P2978895256345324807

`(4*n)²-A014107(n)`
-/

namespace A195025.P2978895256345324807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n) ^ 2 : ℤ) - A014107 n

end

end A195025.P2978895256345324807

namespace A195025

/-- `(4*n)²-A014107(n)` -/
def P2978895256345324807.Spec : Prop :=
  ∀ n, P2978895256345324807.a n = A195025 n

theorem P2978895256345324807.correct : P2978895256345324807.Spec := by
  intro n
  simp only [A195025, Nat.add_sub_cancel, A195025.P2978895256345324807.a, A195025.P11785065564624553900.a, A014107, A014107.P7046062318563033165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195025

/-! ## A195025.P7703225838490834374

`3*n*A016861(n)-n²`
-/

namespace A195025.P7703225838490834374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * A016861 n) - (n ^ 2 : ℤ)

end

end A195025.P7703225838490834374

namespace A195025

/-- `3*n*A016861(n)-n²` -/
def P7703225838490834374.Spec : Prop :=
  ∀ n, P7703225838490834374.a n = A195025 n

theorem P7703225838490834374.correct : P7703225838490834374.Spec := by
  intro n
  simp only [A195025, Nat.add_sub_cancel, A195025.P7703225838490834374.a, A195025.P11785065564624553900.a, A016861, A016861.P12760207785627616280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195025

/-! ## A195025.P4354521485787542069

`A024966(n)+A022278(n)`
-/

namespace A195025.P4354521485787542069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024966 n + A022278 n

end

end A195025.P4354521485787542069

namespace A195025

/-- `A024966(n)+A022278(n)` -/
def P4354521485787542069.Spec : Prop :=
  ∀ n, P4354521485787542069.a n = A195025 n

end A195025

/-! ## A195025.P2090048668028728556

`A028895(n)+A022281(n)`
-/

namespace A195025.P2090048668028728556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 n + A022281 n

end

end A195025.P2090048668028728556

namespace A195025

/-- `A028895(n)+A022281(n)` -/
def P2090048668028728556.Spec : Prop :=
  ∀ n, P2090048668028728556.a n = A195025 n

end A195025

/-! ## A195025.P5963996997849693316

`A033584(n)+A028896(n)`
-/

namespace A195025.P5963996997849693316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033584 n + A028896 n

end

end A195025.P5963996997849693316

namespace A195025

/-- `A033584(n)+A028896(n)` -/
def P5963996997849693316.Spec : Prop :=
  ∀ n, P5963996997849693316.a n = A195025 n

theorem P5963996997849693316.correct : P5963996997849693316.Spec := by
  intro n
  simp only [A195025, Nat.add_sub_cancel, A195025.P5963996997849693316.a, A195025.P11785065564624553900.a, A028896, A028896.P3776891904721443318.a, A033584, A033584.P5749212620470657919.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195025

/-! ## A195025.P2841328640685318525

`A063436(n)+A001105(n)`
-/

namespace A195025.P2841328640685318525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063436 n + A001105 n

end

end A195025.P2841328640685318525

namespace A195025

/-- `A063436(n)+A001105(n)` -/
def P2841328640685318525.Spec : Prop :=
  ∀ n, P2841328640685318525.a n = A195025 n

theorem P2841328640685318525.correct : P2841328640685318525.Spec := by
  intro n
  simp only [A195025, Nat.add_sub_cancel, A195025.P2841328640685318525.a, A195025.P11785065564624553900.a, A001105, A001105.P6098599260439307493.a, A063436, A063436.P6856054806736193048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195025

/-! ## A195025.P10022424815529625887

`A033954(n)+A033583(n)`
-/

namespace A195025.P10022424815529625887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033954 n + A033583 n

end

end A195025.P10022424815529625887

namespace A195025

/-- `A033954(n)+A033583(n)` -/
def P10022424815529625887.Spec : Prop :=
  ∀ n, P10022424815529625887.a n = A195025 n

theorem P10022424815529625887.correct : P10022424815529625887.Spec := by
  intro n
  simp only [A195025, Nat.add_sub_cancel, A195025.P10022424815529625887.a, A195025.P11785065564624553900.a, A033583, A033583.P12285480609414282410.a, A033954, A033954.P6740312584908585872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195025

/-! ## A195025.P1904837480940263664

`A055998(n)+A022285(n)`
-/

namespace A195025.P1904837480940263664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + A022285 n

end

end A195025.P1904837480940263664

namespace A195025

/-- `A055998(n)+A022285(n)` -/
def P1904837480940263664.Spec : Prop :=
  ∀ n, P1904837480940263664.a n = A195025 n

end A195025

/-! ## A195025.P8859452694312126205

`A055999(n)+A022284(n)`
-/

namespace A195025.P8859452694312126205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 n + A022284 n

end

end A195025.P8859452694312126205

namespace A195025

/-- `A055999(n)+A022284(n)` -/
def P8859452694312126205.Spec : Prop :=
  ∀ n, P8859452694312126205.a n = A195025 n

end A195025

/-! ## A195025.P1781809152133639280

`A045945(n)+A033429(n)`
-/

namespace A195025.P1781809152133639280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045945 n + A033429 n

end

end A195025.P1781809152133639280

namespace A195025

/-- `A045945(n)+A033429(n)` -/
def P1781809152133639280.Spec : Prop :=
  ∀ n, P1781809152133639280.a n = A195025 n

theorem P1781809152133639280.correct : P1781809152133639280.Spec := by
  intro n
  simp only [A195025, Nat.add_sub_cancel, A195025.P1781809152133639280.a, A195025.P11785065564624553900.a, A033429, A033429.P6959806467874002675.a, A045945, A045945.P14001929662270589613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195025

/-!
# A195026: a(n) = 7*n*(2*n + 1).

The programs for A195026, the canonical program `A195026.P14226979605826923693` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195026 has offset 0).

The definition of A195026 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n*(2*n+1)` (program `A195026.P14226979605826923693`, by `A195026.P14226979605826923693.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195026.P13865153357634178063

`14*n²+7*n`
-/

namespace A195026.P13865153357634178063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n ^ 2 + 7 * n

end

end A195026.P13865153357634178063

namespace A195026

/-- `14*n²+7*n` -/
def P13865153357634178063.Spec : Prop :=
  ∀ n, (P13865153357634178063.a n : ℤ) = A195026 n

theorem P13865153357634178063.correct : P13865153357634178063.Spec := by
  intro n
  simp only [A195026, Nat.add_sub_cancel, A195026.P13865153357634178063.a, A195026.P14226979605826923693.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A195026

/-! ## A195026.P14226979605826923693

`7*n*(2*n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195026

/-- `7*n*(2*n+1)` -/
def P14226979605826923693.Spec : Prop :=
  ∀ n, (P14226979605826923693.a n : ℤ) = A195026 n

theorem P14226979605826923693.correct : P14226979605826923693.Spec := by
  intro n
  simp only [A195026]

end A195026

/-! ## A195026.P17603965180429792115

`∑[a(n-1)+28]` with `a(0)=0, a(1)=21`
-/

namespace A195026.P17603965180429792115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 21] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195026.P17603965180429792115

namespace A195026

/-- `∑[a(n-1)+28]` -/
def P17603965180429792115.Spec : Prop :=
  ∀ n, (P17603965180429792115.a n : ℤ) = A195026 n

end A195026

/-! ## A195026.P4661636326087545403

`∑[ogf((21x+7x^2)/(1-2x+x^2))]`
-/

namespace A195026.P4661636326087545403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 21, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195026.P4661636326087545403

namespace A195026

/-- `∑[ogf((21x+7x^2)/(1-2x+x^2))]` -/
def P4661636326087545403.Spec : Prop :=
  ∀ n, P4661636326087545403.a n = A195026 n

end A195026

/-! ## A195026.P4095109934368656866

`7*A002943(n)/2`
-/

namespace A195026.P4095109934368656866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * A002943 n : ℚ) / 2

end

end A195026.P4095109934368656866

namespace A195026

/-- `7*A002943(n)/2` -/
def P4095109934368656866.Spec : Prop :=
  ∀ n, P4095109934368656866.a n = (A195026 n : ℚ)

theorem P4095109934368656866.correct : P4095109934368656866.Spec := by
  intro n
  simp only [A195026, Nat.add_sub_cancel, A195026.P4095109934368656866.a, A195026.P14226979605826923693.a, A002943, A002943.P6554007946647441496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195026

/-! ## A195026.P11026466695925808427

`lcm(A008589(n), A147587(n))`
-/

namespace A195026.P11026466695925808427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008589 n) (A147587 n)

end

end A195026.P11026466695925808427

namespace A195026

/-- `lcm(A008589(n), A147587(n))` -/
def P11026466695925808427.Spec : Prop :=
  ∀ n, (P11026466695925808427.a n : ℤ) = A195026 n

end A195026

/-! ## A195026.P739676105543945488

`A181773(n+1)%A028993(n)`
-/

namespace A195026.P739676105543945488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181773 (n + 1)) (A028993 n)

end

end A195026.P739676105543945488

namespace A195026

/-- `A181773(n+1)%A028993(n)` -/
def P739676105543945488.Spec : Prop :=
  ∀ n, P739676105543945488.a n = A195026 n

end A195026

/-! ## A195026.P8398804752491699765

`A193248(n+1)%A144459(n)`
-/

namespace A195026.P8398804752491699765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193248 (n + 1)) (A144459 n)

end

end A195026.P8398804752491699765

namespace A195026

/-- `A193248(n+1)%A144459(n)` -/
def P8398804752491699765.Spec : Prop :=
  ∀ n, P8398804752491699765.a n = A195026 n

end A195026

/-! ## A195026.P413017845511333531

`A024966(2*n)`
-/

namespace A195026.P413017845511333531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024966 (2 * n)

end

end A195026.P413017845511333531

namespace A195026

/-- `A024966(2*n)` -/
def P413017845511333531.Spec : Prop :=
  ∀ n, P413017845511333531.a n = A195026 n

end A195026

/-! ## A195026.P18175559943375698413

`A163756(2*n)/2`
-/

namespace A195026.P18175559943375698413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163756 (2 * n) : ℚ) / 2

end

end A195026.P18175559943375698413

namespace A195026

/-- `A163756(2*n)/2` -/
def P18175559943375698413.Spec : Prop :=
  ∀ n, P18175559943375698413.a n = (A195026 n : ℚ)

theorem P18175559943375698413.correct : P18175559943375698413.Spec := by
  intro n
  simp only [A195026, Nat.add_sub_cancel, A195026.P18175559943375698413.a, A195026.P14226979605826923693.a, A163756, A163756.P13614041795755210983.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195026

/-! ## A195026.P16309323414177264536

`A162942(2*n)/7`
-/

namespace A195026.P16309323414177264536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162942 (2 * n) : ℚ) / 7

end

end A195026.P16309323414177264536

namespace A195026

/-- `A162942(2*n)/7` -/
def P16309323414177264536.Spec : Prop :=
  ∀ n, P16309323414177264536.a n = (A195026 n : ℚ)

theorem P16309323414177264536.correct : P16309323414177264536.Spec := by
  intro n
  simp only [A195026, Nat.add_sub_cancel, A195026.P16309323414177264536.a, A195026.P14226979605826923693.a, A162942, A162942.P11600580126520269022.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A195026

/-! ## A195026.P3931362411522474016

`A195020(4*n)`
-/

namespace A195026.P3931362411522474016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195020 (4 * n)

end

end A195026.P3931362411522474016

namespace A195026

/-- `A195020(4*n)` -/
def P3931362411522474016.Spec : Prop :=
  ∀ n, P3931362411522474016.a n = A195026 n

end A195026

/-! ## A195026.P12822174677053357290

`A174738(A017041(2*n)+1)`
-/

namespace A195026.P12822174677053357290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (A017041 (2 * n) + 1).toNat

end

end A195026.P12822174677053357290

namespace A195026

/-- `A174738(A017041(2*n)+1)` -/
def P12822174677053357290.Spec : Prop :=
  ∀ n, P12822174677053357290.a n = A195026 n

end A195026

/-!
# A195027: a(n) = 2*n*(7*n + 5).

The programs for A195027, the canonical program `A195027.P6256653771461667195` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195027 has offset 0).

The definition of A195027 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(7*n+5)` (program `A195027.P6256653771461667195`, by `A195027.P6256653771461667195.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195027.P10469633624550215344

`14*n²+10*n`
-/

namespace A195027.P10469633624550215344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n ^ 2 + 10 * n

end

end A195027.P10469633624550215344

namespace A195027

/-- `14*n²+10*n` -/
def P10469633624550215344.Spec : Prop :=
  ∀ n, (P10469633624550215344.a n : ℤ) = A195027 n

theorem P10469633624550215344.correct : P10469633624550215344.Spec := by
  intro n
  simp only [A195027, Nat.add_sub_cancel, A195027.P10469633624550215344.a, A195027.P6256653771461667195.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A195027

/-! ## A195027.P6256653771461667195

`2*n*(7*n+5)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195027

/-- `2*n*(7*n+5)` -/
def P6256653771461667195.Spec : Prop :=
  ∀ n, (P6256653771461667195.a n : ℤ) = A195027 n

theorem P6256653771461667195.correct : P6256653771461667195.Spec := by
  intro n
  simp only [A195027]

end A195027

/-! ## A195027.P8418150319301156515

`∑[a(n-1)+28]` with `a(0)=0, a(1)=24`
-/

namespace A195027.P8418150319301156515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 24] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195027.P8418150319301156515

namespace A195027

/-- `∑[a(n-1)+28]` -/
def P8418150319301156515.Spec : Prop :=
  ∀ n, (P8418150319301156515.a n : ℤ) = A195027 n

end A195027

/-! ## A195027.P10044300314989707479

`∑[ogf((24x+4x^2)/(1-2x+x^2))]`
-/

namespace A195027.P10044300314989707479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 24, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195027.P10044300314989707479

namespace A195027

/-- `∑[ogf((24x+4x^2)/(1-2x+x^2))]` -/
def P10044300314989707479.Spec : Prop :=
  ∀ n, P10044300314989707479.a n = A195027 n

end A195027

/-! ## A195027.P6408426893566166913

`lcm(2, (Δ[(2*n)²]-(n-1))*2*n)`
-/

namespace A195027.P6408426893566166913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - 1)) * (2 * n : ℤ))

end

end A195027.P6408426893566166913

namespace A195027

/-- `lcm(2, (Δ[(2*n)²]-(n-1))*2*n)` -/
def P6408426893566166913.Spec : Prop :=
  ∀ n, (P6408426893566166913.a n : ℤ) = A195027 n

end A195027

/-! ## A195027.P9000382147110079829

`A008586(A179986(n))`
-/

namespace A195027.P9000382147110079829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A179986 n).toNat

end

end A195027.P9000382147110079829

namespace A195027

/-- `A008586(A179986(n))` -/
def P9000382147110079829.Spec : Prop :=
  ∀ n, P9000382147110079829.a n = A195027 n

end A195027

/-! ## A195027.P3318382165749277386

`A008586(A195020(2*n)-n)`
-/

namespace A195027.P3318382165749277386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A195020 (2 * n) - (n : ℤ)).toNat

end

end A195027.P3318382165749277386

namespace A195027

/-- `A008586(A195020(2*n)-n)` -/
def P3318382165749277386.Spec : Prop :=
  ∀ n, P3318382165749277386.a n = A195027 n

end A195027

/-!
# A195028: a(n) = n*(14*n + 13).

The programs for A195028, the canonical program `A195028.P15304006162796783085` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195028 has offset 0).

The definition of A195028 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(14*n+13)` (program `A195028.P15304006162796783085`, by `A195028.P15304006162796783085.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195028.P15304006162796783085

`n*(14*n+13)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195028

/-- `n*(14*n+13)` -/
def P15304006162796783085.Spec : Prop :=
  ∀ n, (P15304006162796783085.a n : ℤ) = A195028 n

theorem P15304006162796783085.correct : P15304006162796783085.Spec := by
  intro n
  simp only [A195028]

end A195028

/-! ## A195028.P14992000758863437624

`∑[a(n-1)+28]` with `a(0)=0, a(1)=27`
-/

namespace A195028.P14992000758863437624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 27] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195028.P14992000758863437624

namespace A195028

/-- `∑[a(n-1)+28]` -/
def P14992000758863437624.Spec : Prop :=
  ∀ n, (P14992000758863437624.a n : ℤ) = A195028 n

end A195028

/-! ## A195028.P8855886361380628895

`A195029(n)-3`
-/

namespace A195028.P8855886361380628895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195029 n - 3

end

end A195028.P8855886361380628895

namespace A195028

/-- `A195029(n)-3` -/
def P8855886361380628895.Spec : Prop :=
  ∀ n, P8855886361380628895.a n = A195028 n

theorem P8855886361380628895.correct : P8855886361380628895.Spec := by
  intro n
  simp only [A195028, Nat.add_sub_cancel, A195028.P8855886361380628895.a, A195028.P15304006162796783085.a, A195029, A195029.P17234173253790920458.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195028

/-! ## A195028.P7453102008953543150

`A173307(n)+n²`
-/

namespace A195028.P7453102008953543150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173307 n + (n ^ 2 : ℤ)

end

end A195028.P7453102008953543150

namespace A195028

/-- `A173307(n)+n²` -/
def P7453102008953543150.Spec : Prop :=
  ∀ n, P7453102008953543150.a n = A195028 n

theorem P7453102008953543150.correct : P7453102008953543150.Spec := by
  intro n
  simp only [A195028, Nat.add_sub_cancel, A195028.P7453102008953543150.a, A195028.P15304006162796783085.a, A173307, A173307.P1544508757824544434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195028

/-! ## A195028.P10818422472089376430

`2*A163756(n)-n`
-/

namespace A195028.P10818422472089376430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163756 n - (n : ℤ)

end

end A195028.P10818422472089376430

namespace A195028

/-- `2*A163756(n)-n` -/
def P10818422472089376430.Spec : Prop :=
  ∀ n, P10818422472089376430.a n = A195028 n

theorem P10818422472089376430.correct : P10818422472089376430.Spec := by
  intro n
  simp only [A195028, Nat.add_sub_cancel, A195028.P10818422472089376430.a, A195028.P15304006162796783085.a, A163756, A163756.P13614041795755210983.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195028

/-! ## A195028.P7041830186545300530

`A195027(n)+3*n`
-/

namespace A195028.P7041830186545300530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195027 n + (3 * n : ℤ)

end

end A195028.P7041830186545300530

namespace A195028

/-- `A195027(n)+3*n` -/
def P7041830186545300530.Spec : Prop :=
  ∀ n, P7041830186545300530.a n = A195028 n

theorem P7041830186545300530.correct : P7041830186545300530.Spec := by
  intro n
  simp only [A195028, Nat.add_sub_cancel, A195028.P7041830186545300530.a, A195028.P15304006162796783085.a, A195027, A195027.P6256653771461667195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195028

/-! ## A195028.P1915542566961726462

`4*A024966(n)-n`
-/

namespace A195028.P1915542566961726462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A024966 n - (n : ℤ)

end

end A195028.P1915542566961726462

namespace A195028

/-- `4*A024966(n)-n` -/
def P1915542566961726462.Spec : Prop :=
  ∀ n, P1915542566961726462.a n = A195028 n

end A195028

/-! ## A195028.P8264295962536366098

`A195314(n+1)-(n+1)`
-/

namespace A195028.P8264295962536366098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195314 (n + 1) - (n + 1 : ℤ)

end

end A195028.P8264295962536366098

namespace A195028

/-- `A195314(n+1)-(n+1)` -/
def P8264295962536366098.Spec : Prop :=
  ∀ n, P8264295962536366098.a n = A195028 n

theorem P8264295962536366098.correct : P8264295962536366098.Spec := by
  intro n
  simp only [A195028, Nat.add_sub_cancel, A195028.P8264295962536366098.a, A195028.P15304006162796783085.a, A195314, A195314.P2202678201508034667.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195028

/-! ## A195028.P16676405089544254658

`A123296(n)+A005449(n)`
-/

namespace A195028.P16676405089544254658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123296 n + A005449 n

end

end A195028.P16676405089544254658

namespace A195028

/-- `A123296(n)+A005449(n)` -/
def P16676405089544254658.Spec : Prop :=
  ∀ n, P16676405089544254658.a n = A195028 n

end A195028

/-! ## A195028.P18131517900400715030

`A144555(n)+A008595(n)`
-/

namespace A195028.P18131517900400715030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144555 n + A008595 n

end

end A195028.P18131517900400715030

namespace A195028

/-- `A144555(n)+A008595(n)` -/
def P18131517900400715030.Spec : Prop :=
  ∀ n, P18131517900400715030.a n = A195028 n

theorem P18131517900400715030.correct : P18131517900400715030.Spec := by
  intro n
  simp only [A195028, Nat.add_sub_cancel, A195028.P18131517900400715030.a, A195028.P15304006162796783085.a, A008595, A008595.P16021929412859907016.a, A144555, A144555.P7867283677367482726.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195028

/-! ## A195028.P11689101539137658749

`A139580(n)+A014642(n)`
-/

namespace A195028.P11689101539137658749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139580 n + A014642 n

end

end A195028.P11689101539137658749

namespace A195028

/-- `A139580(n)+A014642(n)` -/
def P11689101539137658749.Spec : Prop :=
  ∀ n, P11689101539137658749.a n = A195028 n

theorem P11689101539137658749.correct : P11689101539137658749.Spec := by
  intro n
  simp only [A195028, Nat.add_sub_cancel, A195028.P11689101539137658749.a, A195028.P15304006162796783085.a, A014642, A014642.P1230047363248524840.a, A139580, A139580.P14196476466695398530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195028

/-! ## A195028.P5415036733071716203

`A132755(n)+A022285(n)`
-/

namespace A195028.P5415036733071716203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132755 n + A022285 n

end

end A195028.P5415036733071716203

namespace A195028

/-- `A132755(n)+A022285(n)` -/
def P5415036733071716203.Spec : Prop :=
  ∀ n, P5415036733071716203.a n = A195028 n

end A195028

/-! ## A195028.P14187140045343008662

`A132756(n)+A022284(n)`
-/

namespace A195028.P14187140045343008662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132756 n + A022284 n

end

end A195028.P14187140045343008662

namespace A195028

/-- `A132756(n)+A022284(n)` -/
def P14187140045343008662.Spec : Prop :=
  ∀ n, P14187140045343008662.a n = A195028 n

end A195028

/-! ## A195028.P18240742953742538489

`A152760(n)+A008605(n)`
-/

namespace A195028.P18240742953742538489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152760 n + A008605 n

end

end A195028.P18240742953742538489

namespace A195028

/-- `A152760(n)+A008605(n)` -/
def P18240742953742538489.Spec : Prop :=
  ∀ n, P18240742953742538489.a n = A195028 n

theorem P18240742953742538489.correct : P18240742953742538489.Spec := by
  intro n
  simp only [A195028, Nat.add_sub_cancel, A195028.P18240742953742538489.a, A195028.P15304006162796783085.a, A008605, A008605.P5066899400796399337.a, A152760, A152760.P16098557334382843204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195028

/-! ## A195028.P17719011653068528399

`A161587(n)+A014209(n)`
-/

namespace A195028.P17719011653068528399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161587 n + A014209 n

end

end A195028.P17719011653068528399

namespace A195028

/-- `A161587(n)+A014209(n)` -/
def P17719011653068528399.Spec : Prop :=
  ∀ n, P17719011653068528399.a n = A195028 n

theorem P17719011653068528399.correct : P17719011653068528399.Spec := by
  intro n
  simp only [A195028, Nat.add_sub_cancel, A195028.P17719011653068528399.a, A195028.P15304006162796783085.a, A014209, A014209.P8391054817103649375.a, A161587, A161587.P766217848207806068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195028

/-! ## A195028.P14900370830954656841

`A139278(n)+A049598(n)`
-/

namespace A195028.P14900370830954656841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139278 n + A049598 n

end

end A195028.P14900370830954656841

namespace A195028

/-- `A139278(n)+A049598(n)` -/
def P14900370830954656841.Spec : Prop :=
  ∀ n, P14900370830954656841.a n = A195028 n

theorem P14900370830954656841.correct : P14900370830954656841.Spec := by
  intro n
  simp only [A195028, Nat.add_sub_cancel, A195028.P14900370830954656841.a, A195028.P15304006162796783085.a, A049598, A049598.P15670095646145140517.a, A139278, A139278.P6728910123385272055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195028

/-! ## A195028.P13892386936273342690

`A185019(n)+A008598(n)`
-/

namespace A195028.P13892386936273342690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185019 n + A008598 n

end

end A195028.P13892386936273342690

namespace A195028

/-- `A185019(n)+A008598(n)` -/
def P13892386936273342690.Spec : Prop :=
  ∀ n, P13892386936273342690.a n = A195028 n

theorem P13892386936273342690.correct : P13892386936273342690.Spec := by
  intro n
  simp only [A195028, Nat.add_sub_cancel, A195028.P13892386936273342690.a, A195028.P15304006162796783085.a, A008598, A008598.P6226039880973179911.a, A185019, A185019.P9430512347604204283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195028

/-! ## A195028.P2498006494030976609

`A163761(n)+A033954(n)`
-/

namespace A195028.P2498006494030976609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163761 n + A033954 n

end

end A195028.P2498006494030976609

namespace A195028

/-- `A163761(n)+A033954(n)` -/
def P2498006494030976609.Spec : Prop :=
  ∀ n, P2498006494030976609.a n = A195028 n

theorem P2498006494030976609.correct : P2498006494030976609.Spec := by
  intro n
  simp only [A195028, Nat.add_sub_cancel, A195028.P2498006494030976609.a, A195028.P15304006162796783085.a, A033954, A033954.P6740312584908585872.a, A163761, A163761.P557953753826643866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195028

/-! ## A195028.P15313077871407533921

`A195026(n)+A008588(n)`
-/

namespace A195028.P15313077871407533921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195026 n + A008588 n

end

end A195028.P15313077871407533921

namespace A195028

/-- `A195026(n)+A008588(n)` -/
def P15313077871407533921.Spec : Prop :=
  ∀ n, P15313077871407533921.a n = A195028 n

theorem P15313077871407533921.correct : P15313077871407533921.Spec := by
  intro n
  simp only [A195028, Nat.add_sub_cancel, A195028.P15313077871407533921.a, A195028.P15304006162796783085.a, A008588, A008588.P12386450284809463491.a, A195026, A195026.P14226979605826923693.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195028

/-! ## A195028.P1462647204514072172

`A195021(n)+A008606(n)`
-/

namespace A195028.P1462647204514072172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195021 n + A008606 n

end

end A195028.P1462647204514072172

namespace A195028

/-- `A195021(n)+A008606(n)` -/
def P1462647204514072172.Spec : Prop :=
  ∀ n, P1462647204514072172.a n = A195028 n

theorem P1462647204514072172.correct : P1462647204514072172.Spec := by
  intro n
  simp only [A195028, Nat.add_sub_cancel, A195028.P1462647204514072172.a, A195028.P15304006162796783085.a, A008606, A008606.P331422733914118461.a, A195021, A195021.P8547858062426879313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195028

/-!
# A195029: a(n) = n*(14*n + 13) + 3.

The programs for A195029, the canonical program `A195029.P17234173253790920458` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195029 has offset 0).

The definition of A195029 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(14*n+13)+3` (program `A195029.P17234173253790920458`, by `A195029.P17234173253790920458.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195029.P17234173253790920458

`n*(14*n+13)+3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195029

/-- `n*(14*n+13)+3` -/
def P17234173253790920458.Spec : Prop :=
  ∀ n, (P17234173253790920458.a n : ℤ) = A195029 n

theorem P17234173253790920458.correct : P17234173253790920458.Spec := by
  intro n
  simp only [A195029]

end A195029

/-! ## A195029.P1031065865141517787

`A005408(n)*A017017(n)`
-/

namespace A195029.P1031065865141517787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A017017 n

end

end A195029.P1031065865141517787

namespace A195029

/-- `A005408(n)*A017017(n)` -/
def P1031065865141517787.Spec : Prop :=
  ∀ n, P1031065865141517787.a n = A195029 n

theorem P1031065865141517787.correct : P1031065865141517787.Spec := by
  intro n
  simp only [A195029, Nat.add_sub_cancel, A195029.P1031065865141517787.a, A195029.P17234173253790920458.a, A005408, A005408.P17437947328870227736.a, A017017, A017017.P16632027915442464889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195029

/-! ## A195029.P18254404121178071818

`A022264(2*n+1)`
-/

namespace A195029.P18254404121178071818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 (2 * n + 1)

end

end A195029.P18254404121178071818

namespace A195029

/-- `A022264(2*n+1)` -/
def P18254404121178071818.Spec : Prop :=
  ∀ n, P18254404121178071818.a n = A195029 n

end A195029

/-! ## A195029.P12296099200230792188

`∑[a(n-1)+28]` with `a(0)=3, a(1)=27`
-/

namespace A195029.P12296099200230792188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 27] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195029.P12296099200230792188

namespace A195029

/-- `∑[a(n-1)+28]` -/
def P12296099200230792188.Spec : Prop :=
  ∀ n, (P12296099200230792188.a n : ℤ) = A195029 n

end A195029

/-! ## A195029.P3403600853264090718

`sqrt(A017018(n))*Δ[n²]`
-/

namespace A195029.P3403600853264090718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017018 n : ℝ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)

end

end A195029.P3403600853264090718

namespace A195029

/-- `sqrt(A017018(n))*Δ[n²]` -/
def P3403600853264090718.Spec : Prop :=
  ∀ n, P3403600853264090718.a n = (A195029 n : ℝ)

end A195029

/-! ## A195029.P9985328836737038665

`A134160(n)%A017030(n)`
-/

namespace A195029.P9985328836737038665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134160 n) (A017030 n)

end

end A195029.P9985328836737038665

namespace A195029

/-- `A134160(n)%A017030(n)` -/
def P9985328836737038665.Spec : Prop :=
  ∀ n, P9985328836737038665.a n = A195029 n

end A195029

/-! ## A195029.P5163356622770830183

`lcm(A017017(n), A157142(n))`
-/

namespace A195029.P5163356622770830183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A017017 n) (A157142 n)

end

end A195029.P5163356622770830183

namespace A195029

/-- `lcm(A017017(n), A157142(n))` -/
def P5163356622770830183.Spec : Prop :=
  ∀ n, (P5163356622770830183.a n : ℤ) = A195029 n

end A195029

/-! ## A195029.P12800499592561268990

`Δ[n²]*Δ[A022264(n)]`
-/

namespace A195029.P12800499592561268990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * (f2 (n + 1) - f2 n)

end

end A195029.P12800499592561268990

namespace A195029

/-- `Δ[n²]*Δ[A022264(n)]` -/
def P12800499592561268990.Spec : Prop :=
  ∀ n, P12800499592561268990.a n = A195029 n

end A195029

/-! ## A195029.P1942343862547429733

`A017017(n)*A109613(2*n)`
-/

namespace A195029.P1942343862547429733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n * A109613 (2 * n)

end

end A195029.P1942343862547429733

namespace A195029

/-- `A017017(n)*A109613(2*n)` -/
def P1942343862547429733.Spec : Prop :=
  ∀ n, P1942343862547429733.a n = A195029 n

end A195029

/-! ## A195029.P9756067705204155959

`record[lcm(2, n+1)²-∑[n+1]]`
-/

namespace A195029.P9756067705204155959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195029.P9756067705204155959

namespace A195029

/-- `record[lcm(2, n+1)²-∑[n+1]]` -/
def P9756067705204155959.Spec : Prop :=
  ∀ n, P9756067705204155959.a n = A195029 n

end A195029

/-! ## A195029.P9805295974582660930

`A057570(4*n+2)`
-/

namespace A195029.P9805295974582660930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057570 (4 * n + 2)

end

end A195029.P9805295974582660930

namespace A195029

/-- `A057570(4*n+2)` -/
def P9805295974582660930.Spec : Prop :=
  ∀ n, P9805295974582660930.a n = A195029 n

end A195029

/-! ## A195029.P4345351572107434508

`A195020(3*n+n+1)`
-/

namespace A195029.P4345351572107434508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195020 (3 * n + (n + 1))

end

end A195029.P4345351572107434508

namespace A195029

/-- `A195020(3*n+n+1)` -/
def P4345351572107434508.Spec : Prop :=
  ∀ n, P4345351572107434508.a n = A195029 n

end A195029

/-! ## A195029.P2717976983456737307

`A212989(A017089(n))`
-/

namespace A195029.P2717976983456737307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212989 (A017089 n).toNat

end

end A195029.P2717976983456737307

namespace A195029

/-- `A212989(A017089(n))` -/
def P2717976983456737307.Spec : Prop :=
  ∀ n, P2717976983456737307.a n = A195029 n

end A195029

/-! ## A195029.P4853314992898466695

`A011867(7*(2*n+1))`
-/

namespace A195029.P4853314992898466695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011867 (7 * (2 * n + 1))

end

end A195029.P4853314992898466695

namespace A195029

/-- `A011867(7*(2*n+1))` -/
def P4853314992898466695.Spec : Prop :=
  ∀ n, P4853314992898466695.a n = A195029 n

end A195029

/-!
# A195030: a(n) = (n-2)*(14*n-39) for n > 2, otherwise a(n) = n.

The programs for A195030, there is no canonical definition to state claims against.
-/

/-! ## A195030.P11616876962960271415

`∪[A335839(n+1)+1, n*(14*n-11)]`
-/

namespace A195030.P11616876962960271415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335839 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((14 * n : ℤ) - 11)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195030.P11616876962960271415

/-! ## A195030.P7565977779289962629

`∪[A195021(n), A334822(n+1)]`
-/

namespace A195030.P7565977779289962629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195021 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195030.P7565977779289962629

/-! ## A195030.P14416918211828902073

`A000120(A054726(n))*A217688(n+1)`
-/

namespace A195030.P14416918211828902073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A054726 n).toNat * A217688 (n + 1)

end

end A195030.P14416918211828902073

/-!
# A195031: Multiples of 5 and of 12 interleaved: a(2n-1) = 5n, a(2n) = 12n.

The programs for A195031, the canonical program `A195031.P8461874701791483712` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195031 has offset 1).

The definition of A195031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195031.P8461874701791483712

`2*a(n-2)-a(n-4)` with `a(0)=5, a(1)=12, a(2)=10, a(3)=24`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195031

/-- `2*a(n-2)-a(n-4)` -/
def P8461874701791483712.Spec : Prop :=
  ∀ n, P8461874701791483712.a n = A195031 (n + 1)

theorem P8461874701791483712.correct : P8461874701791483712.Spec := by
  intro n
  simp only [A195031, Nat.add_sub_cancel]

end A195031

/-! ## A195031.P951545192104843756

`(17*(n+1)+(7*(n+1)-5)*(-1)^(n+1)+5)/4`
-/

namespace A195031.P951545192104843756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((17 * (n + 1) : ℤ) + ((7 * (n + 1) : ℤ) - 5) * (-1) ^ (n + 1) + 5 : ℚ) / 4

end

end A195031.P951545192104843756

namespace A195031

/-- `(17*(n+1)+(7*(n+1)-5)*(-1)^(n+1)+5)/4` -/
def P951545192104843756.Spec : Prop :=
  ∀ n, P951545192104843756.a n = (A195031 (n + 1) : ℚ)

theorem P951545192104843756.correct : P951545192104843756.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A195031, Nat.add_sub_cancel, A195031.P951545192104843756.a, A195031.P8461874701791483712.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A195031, Nat.add_sub_cancel, A195031.P951545192104843756.a, A195031.P8461874701791483712.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195031

/-! ## A195031.P7712774035156569447

`a(n-2)+a(n%2)` with `a(0)=5, a(1)=12`
-/

namespace A195031.P7712774035156569447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 12] fun n a =>
  a (n - 2) + a (n % 2)

end

end A195031.P7712774035156569447

namespace A195031

/-- `a(n-2)+a(n%2)` -/
def P7712774035156569447.Spec : Prop :=
  ∀ n, (P7712774035156569447.a n : ℤ) = A195031 (n + 1)

end A195031

/-! ## A195031.P5962463213190587349

`∑[17-a(n-1)]-a(n-1)` with `a(0)=5`
-/

namespace A195031.P5962463213190587349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  17 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A195031.P5962463213190587349

namespace A195031

/-- `∑[17-a(n-1)]-a(n-1)` -/
def P5962463213190587349.Spec : Prop :=
  ∀ n, P5962463213190587349.a n = A195031 (n + 1)

end A195031

/-! ## A195031.P3988445463375500259

`∑[∑[ogf((2+9x+3x^2+3x^3)/(1+2x+x^2))]]+3`
-/

namespace A195031.P3988445463375500259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 9, 3, 3] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A195031.P3988445463375500259

namespace A195031

/-- `∑[∑[ogf((2+9x+3x^2+3x^3)/(1+2x+x^2))]]+3` -/
def P3988445463375500259.Spec : Prop :=
  ∀ n, P3988445463375500259.a n = A195031 (n + 1)

end A195031

/-! ## A195031.P7353789315127807532

`a(n-2)+a(n-2)/floor(n/2)` with `a(0)=5, a(1)=12`
-/

namespace A195031.P7353789315127807532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5, 12] fun n a =>
  a (n - 2) + a (n - 2) / (⌊(n : ℚ) / 2⌋ : ℚ)

end

end A195031.P7353789315127807532

namespace A195031

/-- `a(n-2)+a(n-2)/floor(n/2)` -/
def P7353789315127807532.Spec : Prop :=
  ∀ n, P7353789315127807532.a n = (A195031 (n + 1) : ℚ)

end A195031

/-! ## A195031.P4767418428425231172

`Δ[A195032(n)]`
-/

namespace A195031.P4767418428425231172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195031.P4767418428425231172

namespace A195031

/-- `Δ[A195032(n)]` -/
def P4767418428425231172.Spec : Prop :=
  ∀ n, P4767418428425231172.a n = A195031 (n + 1)

end A195031

/-! ## A195031.P4329765712775464260

`A381055(n)+A016789(n+1)`
-/

namespace A195031.P4329765712775464260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381055 n + A016789 (n + 1)

end

end A195031.P4329765712775464260

namespace A195031

/-- `A381055(n)+A016789(n+1)` -/
def P4329765712775464260.Spec : Prop :=
  ∀ n, P4329765712775464260.a n = A195031 (n + 1)

end A195031

/-! ## A195031.P4243036315561038630

`A381055(n)+A180486(n+1)`
-/

namespace A195031.P4243036315561038630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381055 n + A180486 (n + 1)

end

end A195031.P4243036315561038630

namespace A195031

/-- `A381055(n)+A180486(n+1)` -/
def P4243036315561038630.Spec : Prop :=
  ∀ n, P4243036315561038630.a n = A195031 (n + 1)

end A195031

/-! ## A195031.P8696760140905122182

`A195032(n+1)-A195032(n)`
-/

namespace A195031.P8696760140905122182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195032 (n + 1) - A195032 n

end

end A195031.P8696760140905122182

namespace A195031

/-- `A195032(n+1)-A195032(n)` -/
def P8696760140905122182.Spec : Prop :=
  ∀ n, P8696760140905122182.a n = A195031 (n + 1)

end A195031

/-! ## A195031.P11951879822608475336

`Δ[A303813(n)+A271478(n)]`
-/

namespace A195031.P11951879822608475336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303813 n + A271478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195031.P11951879822608475336

namespace A195031

/-- `Δ[A303813(n)+A271478(n)]` -/
def P11951879822608475336.Spec : Prop :=
  ∀ n, P11951879822608475336.a n = A195031 (n + 1)

end A195031

/-! ## A195031.P12034122850394575050

`Δ[A195159(n+1)+∑[A317319(n)-(n+1)]]`
-/

namespace A195031.P12034122850394575050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317319 n - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195031.P12034122850394575050

namespace A195031

/-- `Δ[A195159(n+1)+∑[A317319(n)-(n+1)]]` -/
def P12034122850394575050.Spec : Prop :=
  ∀ n, P12034122850394575050.a n = A195031 (n + 1)

end A195031

/-! ## A195031.P13514172701793665323

`3*(n+1)+A080512(n+2)-A009001(2*n+1)`
-/

namespace A195031.P13514172701793665323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) + (A080512 (n + 2) - A009001 (2 * n + 1))

end

end A195031.P13514172701793665323

namespace A195031

/-- `3*(n+1)+A080512(n+2)-A009001(2*n+1)` -/
def P13514172701793665323.Spec : Prop :=
  ∀ n, P13514172701793665323.a n = A195031 (n + 1)

end A195031

/-! ## A195031.P13355102754483835383

`A008590(n+1)-(A195161(n)+A080512(n+2))`
-/

namespace A195031.P13355102754483835383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (n + 1) - (A195161 n + A080512 (n + 2))

end

end A195031.P13355102754483835383

namespace A195031

/-- `A008590(n+1)-(A195161(n)+A080512(n+2))` -/
def P13355102754483835383.Spec : Prop :=
  ∀ n, P13355102754483835383.a n = A195031 (n + 1)

end A195031

/-! ## A195031.P2407506181658114529

`A165998(A317314(n+1))-A026741(n+2)`
-/

namespace A195031.P2407506181658114529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 (A317314 (n + 1)).toNat - A026741 (n + 2)

end

end A195031.P2407506181658114529

namespace A195031

/-- `A165998(A317314(n+1))-A026741(n+2)` -/
def P2407506181658114529.Spec : Prop :=
  ∀ n, P2407506181658114529.a n = A195031 (n + 1)

end A195031

/-! ## A195031.P618958679227135995

`A181988(2*2*A047535(n+1))`
-/

namespace A195031.P618958679227135995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181988 (2 * (2 * A047535 (n + 1))).toNat

end

end A195031.P618958679227135995

namespace A195031

/-- `A181988(2*2*A047535(n+1))` -/
def P618958679227135995.Spec : Prop :=
  ∀ n, P618958679227135995.a n = A195031 (n + 1)

end A195031

/-!
# A195032: Vertex number of a square spiral in which the length of the first two edges are the legs of the primitive Pythagorean triple [5, 12, 13]. The edges of the spiral have length A195031.

The programs for A195032, the canonical program `A195032.P5043256806093443559` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195032 has offset 0).

The definition of A195032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195032.P11823592746521791432

`(2*n*(17*n+27)+(14*n-3)*(-1)^n+3)/16`
-/

namespace A195032.P11823592746521791432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n * (17 * n + 27) : ℤ) + ((14 * n : ℤ) - 3) * (-1) ^ n + 3 : ℚ) / 16

end

end A195032.P11823592746521791432

namespace A195032

/-- `(2*n*(17*n+27)+(14*n-3)*(-1)^n+3)/16` -/
def P11823592746521791432.Spec : Prop :=
  ∀ n, P11823592746521791432.a n = (A195032 n : ℚ)

theorem P11823592746521791432.correct : P11823592746521791432.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A195032, Nat.add_sub_cancel, A195032.P11823592746521791432.a, A195032.P5043256806093443559.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A195032, Nat.add_sub_cancel, A195032.P11823592746521791432.a, A195032.P5043256806093443559.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195032

/-! ## A195032.P5043256806093443559

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=5, a(2)=17, a(3)=27, a(4)=51`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195032

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P5043256806093443559.Spec : Prop :=
  ∀ n, P5043256806093443559.a n = A195032 n

theorem P5043256806093443559.correct : P5043256806093443559.Spec := by
  intro n
  simp only [A195032]

end A195032

/-! ## A195032.P5577084949108410184

`A195031(n)+a(n-1)` with `a(0)=0`
-/

namespace A195032.P5577084949108410184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A195031 n + a (n - 1)

end

end A195032.P5577084949108410184

namespace A195032

/-- `A195031(n)+a(n-1)` -/
def P5577084949108410184.Spec : Prop :=
  ∀ n, P5577084949108410184.a n = A195032 n

end A195032

/-! ## A195032.P12884266072721964797

`A303813(n)+A271478(n)`
-/

namespace A195032.P12884266072721964797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303813 n + A271478 n

end

end A195032.P12884266072721964797

namespace A195032

/-- `A303813(n)+A271478(n)` -/
def P12884266072721964797.Spec : Prop :=
  ∀ n, P12884266072721964797.a n = A195032 n

end A195032

/-! ## A195032.P3328329117417851298

`∑[A195031(n+1)]-A195031(n+1)`
-/

namespace A195032.P3328329117417851298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A195031 (n + 1)

end

end A195032.P3328329117417851298

namespace A195032

/-- `∑[A195031(n+1)]-A195031(n+1)` -/
def P3328329117417851298.Spec : Prop :=
  ∀ n, P3328329117417851298.a n = A195032 n

end A195032

/-! ## A195032.P9233179576993424322

`A195159(n+1)+∑[A317319(n)-(n+1)]`
-/

namespace A195032.P9233179576993424322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317319 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195032.P9233179576993424322

namespace A195032

/-- `A195159(n+1)+∑[A317319(n)-(n+1)]` -/
def P9233179576993424322.Spec : Prop :=
  ∀ n, P9233179576993424322.a n = A195032 n

end A195032

/-!
# A195033: Multiples of 21 and of 20 interleaved: a(2n-1) = 21n, a(2n) = 20n.

The programs for A195033, the canonical program `A195033.P15916764821465194760` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195033 has offset 1).

The definition of A195033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195033.P15916764821465194760

`2*a(n-2)-a(n-4)` with `a(0)=21, a(1)=20, a(2)=42, a(3)=40`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195033

/-- `2*a(n-2)-a(n-4)` -/
def P15916764821465194760.Spec : Prop :=
  ∀ n, P15916764821465194760.a n = A195033 (n + 1)

theorem P15916764821465194760.correct : P15916764821465194760.Spec := by
  intro n
  simp only [A195033, Nat.add_sub_cancel]

end A195033

/-! ## A195033.P6964632743717748857

`(41*(n+1)-(n+22)*(-1)^(n+1)+21)/4`
-/

namespace A195033.P6964632743717748857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((41 * (n + 1) : ℤ) - (n + 22 : ℤ) * (-1) ^ (n + 1) + 21 : ℚ) / 4

end

end A195033.P6964632743717748857

namespace A195033

/-- `(41*(n+1)-(n+22)*(-1)^(n+1)+21)/4` -/
def P6964632743717748857.Spec : Prop :=
  ∀ n, P6964632743717748857.a n = (A195033 (n + 1) : ℚ)

theorem P6964632743717748857.correct : P6964632743717748857.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A195033, Nat.add_sub_cancel, A195033.P6964632743717748857.a, A195033.P15916764821465194760.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A195033, Nat.add_sub_cancel, A195033.P6964632743717748857.a, A195033.P15916764821465194760.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195033

/-! ## A195033.P13302173039142012332

`A010693(n+1)*A010718(n+1)*A029578(n+2)`
-/

namespace A195033.P13302173039142012332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (n + 1) * A010718 (n + 1) * A029578 (n + 2)

end

end A195033.P13302173039142012332

namespace A195033

/-- `A010693(n+1)*A010718(n+1)*A029578(n+2)` -/
def P13302173039142012332.Spec : Prop :=
  ∀ n, P13302173039142012332.a n = A195033 (n + 1)

end A195033

/-! ## A195033.P1592342308612843731

`∑[21-(a(n-1)+n%2)]` with `a(0)=21`
-/

namespace A195033.P1592342308612843731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [21] fun n f1 =>
  21 - (f1 (n - 1) + ((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195033.P1592342308612843731

namespace A195033

/-- `∑[21-(a(n-1)+n%2)]` -/
def P1592342308612843731.Spec : Prop :=
  ∀ n, P1592342308612843731.a n = A195033 (n + 1)

end A195033

/-! ## A195033.P15526430629795057840

`Δ[A195034(n)]`
-/

namespace A195033.P15526430629795057840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195033.P15526430629795057840

namespace A195033

/-- `Δ[A195034(n)]` -/
def P15526430629795057840.Spec : Prop :=
  ∀ n, P15526430629795057840.a n = A195033 (n + 1)

end A195033

/-! ## A195033.P8043985046537448260

`∑[21-A008683(a(n-1))]-a(n-1)` with `a(0)=21`
-/

namespace A195033.P8043985046537448260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [21] fun n f1 =>
  21 - A008683 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [21] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A195033.P8043985046537448260

namespace A195033

/-- `∑[21-A008683(a(n-1))]-a(n-1)` -/
def P8043985046537448260.Spec : Prop :=
  ∀ n, P8043985046537448260.a n = A195033 (n + 1)

end A195033

/-! ## A195033.P17043833726683895918

`∑[21-A010060(a(n-1))]-a(n-1)` with `a(0)=21`
-/

namespace A195033.P17043833726683895918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [21] fun n f1 =>
  21 - A010060 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [21] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A195033.P17043833726683895918

namespace A195033

/-- `∑[21-A010060(a(n-1))]-a(n-1)` -/
def P17043833726683895918.Spec : Prop :=
  ∀ n, P17043833726683895918.a n = A195033 (n + 1)

end A195033

/-! ## A195033.P14683526626580126746

`A195034(n+1)-A195034(n)`
-/

namespace A195033.P14683526626580126746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195034 (n + 1) - A195034 n

end

end A195033.P14683526626580126746

namespace A195033

/-- `A195034(n+1)-A195034(n)` -/
def P14683526626580126746.Spec : Prop :=
  ∀ n, P14683526626580126746.a n = A195033 (n + 1)

end A195033

/-! ## A195033.P4598576330085106523

`A010718(n+1)*A195019(n+1)`
-/

namespace A195033.P4598576330085106523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010718 (n + 1) * A195019 (n + 1)

end

end A195033.P4598576330085106523

namespace A195033

/-- `A010718(n+1)*A195019(n+1)` -/
def P4598576330085106523.Spec : Prop :=
  ∀ n, P4598576330085106523.a n = A195033 (n + 1)

end A195033

/-!
# A195034: Vertex number of a square spiral in which the length of the first two edges are the legs of the primitive Pythagorean triple [21, 20, 29]. The edges of the spiral have length A195033.

The programs for A195034, the canonical program `A195034.P12340926157182195933` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195034 has offset 0).

The definition of A195034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195034.P16988804846410145268

`(2*n*(41*n+83)-(2*n+43)*(-1)^n+43)/16`
-/

namespace A195034.P16988804846410145268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n * (41 * n + 83) : ℤ) - (2 * n + 43 : ℤ) * (-1) ^ n + 43 : ℚ) / 16

end

end A195034.P16988804846410145268

namespace A195034

/-- `(2*n*(41*n+83)-(2*n+43)*(-1)^n+43)/16` -/
def P16988804846410145268.Spec : Prop :=
  ∀ n, P16988804846410145268.a n = (A195034 n : ℚ)

theorem P16988804846410145268.correct : P16988804846410145268.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A195034, Nat.add_sub_cancel, A195034.P16988804846410145268.a, A195034.P12340926157182195933.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A195034, Nat.add_sub_cancel, A195034.P16988804846410145268.a, A195034.P12340926157182195933.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195034

/-! ## A195034.P12340926157182195933

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=21, a(2)=41, a(3)=83, a(4)=123`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195034

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P12340926157182195933.Spec : Prop :=
  ∀ n, P12340926157182195933.a n = A195034 n

theorem P12340926157182195933.correct : P12340926157182195933.Spec := by
  intro n
  simp only [A195034]

end A195034

/-! ## A195034.P11601937837882636441

`A195033(n)+a(n-1)` with `a(0)=0`
-/

namespace A195034.P11601937837882636441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A195033 n + a (n - 1)

end

end A195034.P11601937837882636441

namespace A195034

/-- `A195033(n)+a(n-1)` -/
def P11601937837882636441.Spec : Prop :=
  ∀ n, P11601937837882636441.a n = A195034 n

end A195034

/-! ## A195034.P12573024508156701479

`∑[(A000035(n)+20)*∑[A000035(n)]]`
-/

namespace A195034.P12573024508156701479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 20) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195034.P12573024508156701479

namespace A195034

/-- `∑[(A000035(n)+20)*∑[A000035(n)]]` -/
def P12573024508156701479.Spec : Prop :=
  ∀ n, P12573024508156701479.a n = A195034 n

end A195034

/-! ## A195034.P1419908863002037748

`∑[A195033(n+1)]-A195033(n+1)`
-/

namespace A195034.P1419908863002037748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A195033 (n + 1)

end

end A195034.P1419908863002037748

namespace A195034

/-- `∑[A195033(n+1)]-A195033(n+1)` -/
def P1419908863002037748.Spec : Prop :=
  ∀ n, P1419908863002037748.a n = A195034 n

end A195034

/-! ## A195034.P16849246730746777782

`A000217(A004526(n+1))+10*A007590(n+1)`
-/

namespace A195034.P16849246730746777782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004526 (n + 1)).toNat + 10 * A007590 (n + 1)

end

end A195034.P16849246730746777782

namespace A195034

/-- `A000217(A004526(n+1))+10*A007590(n+1)` -/
def P16849246730746777782.Spec : Prop :=
  ∀ n, P16849246730746777782.a n = A195034 n

end A195034

/-!
# A195035: Multiples of 15 and of 8 interleaved: a(2n-1) = 15n, a(2n) = 8n.

The programs for A195035, the canonical program `A195035.P1113497694915377126` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195035 has offset 1).

The definition of A195035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195035.P1113497694915377126

`2*a(n-2)-a(n-4)` with `a(0)=15, a(1)=8, a(2)=30, a(3)=16`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195035

/-- `2*a(n-2)-a(n-4)` -/
def P1113497694915377126.Spec : Prop :=
  ∀ n, P1113497694915377126.a n = A195035 (n + 1)

theorem P1113497694915377126.correct : P1113497694915377126.Spec := by
  intro n
  simp only [A195035, Nat.add_sub_cancel]

end A195035

/-! ## A195035.P3332634502872186613

`(23*(n+1)-(7*(n+1)+15)*(-1)^(n+1)+15)/4`
-/

namespace A195035.P3332634502872186613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((23 * (n + 1) : ℤ) - (7 * (n + 1) + 15 : ℤ) * (-1) ^ (n + 1) + 15 : ℚ) / 4

end

end A195035.P3332634502872186613

namespace A195035

/-- `(23*(n+1)-(7*(n+1)+15)*(-1)^(n+1)+15)/4` -/
def P3332634502872186613.Spec : Prop :=
  ∀ n, P3332634502872186613.a n = (A195035 (n + 1) : ℚ)

theorem P3332634502872186613.correct : P3332634502872186613.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A195035, Nat.add_sub_cancel, A195035.P3332634502872186613.a, A195035.P1113497694915377126.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A195035, Nat.add_sub_cancel, A195035.P3332634502872186613.a, A195035.P1113497694915377126.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195035

/-! ## A195035.P157471930278831579

`A010686(n+1)*A010706(n)*A004526(n+2)`
-/

namespace A195035.P157471930278831579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 (n + 1) * A010706 n * A004526 (n + 2)

end

end A195035.P157471930278831579

namespace A195035

/-- `A010686(n+1)*A010706(n)*A004526(n+2)` -/
def P157471930278831579.Spec : Prop :=
  ∀ n, P157471930278831579.a n = A195035 (n + 1)

end A195035

/-! ## A195035.P7477100684448476411

`∑[floor(a(n-2))]-a(n-1)` with `a(0)=15, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A195035.P7477100684448476411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15, 8] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [15, 8] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A195035.P7477100684448476411

namespace A195035

/-- `∑[floor(a(n-2))]-a(n-1)` -/
def P7477100684448476411.Spec : Prop :=
  ∀ n, P7477100684448476411.a n = A195035 (n + 1)

end A195035

/-! ## A195035.P3636730215991973710

`∑[ceil(a(n-2))]-a(n-1)` with `a(0)=15, a(1)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A195035.P3636730215991973710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15, 8] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [15, 8] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A195035.P3636730215991973710

namespace A195035

/-- `∑[ceil(a(n-2))]-a(n-1)` -/
def P3636730215991973710.Spec : Prop :=
  ∀ n, P3636730215991973710.a n = A195035 (n + 1)

end A195035

/-! ## A195035.P4404040972364551965

`Δ[A195036(n)]`
-/

namespace A195035.P4404040972364551965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195035.P4404040972364551965

namespace A195035

/-- `Δ[A195036(n)]` -/
def P4404040972364551965.Spec : Prop :=
  ∀ n, P4404040972364551965.a n = A195035 (n + 1)

end A195035

/-! ## A195035.P12518840267252980738

`∑[and(15, A000203(a(n-1)))]-a(n-1)` with `a(0)=15`
-/

namespace A195035.P12518840267252980738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [15] fun n f1 =>
  Int.land 15 (A000203 (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A195035.P12518840267252980738

namespace A195035

/-- `∑[and(15, A000203(a(n-1)))]-a(n-1)` -/
def P12518840267252980738.Spec : Prop :=
  ∀ n, P12518840267252980738.a n = A195035 (n + 1)

end A195035

/-! ## A195035.P13471102778214696994

`A195036(n+1)-A195036(n)`
-/

namespace A195035.P13471102778214696994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195036 (n + 1) - A195036 n

end

end A195035.P13471102778214696994

namespace A195035

/-- `A195036(n+1)-A195036(n)` -/
def P13471102778214696994.Spec : Prop :=
  ∀ n, P13471102778214696994.a n = A195035 (n + 1)

end A195035

/-! ## A195035.P10787252474826203205

`(A168309(n+1)²-1)*A008619(n)`
-/

namespace A195035.P10787252474826203205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168309 (n + 1) ^ 2 - 1) * A008619 n

end

end A195035.P10787252474826203205

namespace A195035

/-- `(A168309(n+1)²-1)*A008619(n)` -/
def P10787252474826203205.Spec : Prop :=
  ∀ n, P10787252474826203205.a n = A195035 (n + 1)

end A195035

/-! ## A195035.P3484687189459294558

`(11-3*A010693(n))*A195019(n+1)`
-/

namespace A195035.P3484687189459294558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 - 3 * A010693 n) * A195019 (n + 1)

end

end A195035.P3484687189459294558

namespace A195035

/-- `(11-3*A010693(n))*A195019(n+1)` -/
def P3484687189459294558.Spec : Prop :=
  ∀ n, P3484687189459294558.a n = A195035 (n + 1)

end A195035

/-! ## A195035.P8240096779287874236

`(A010693(n+1)+A010673(n+1))*A195019(n+1)`
-/

namespace A195035.P8240096779287874236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010693 (n + 1) + A010673 (n + 1)) * A195019 (n + 1)

end

end A195035.P8240096779287874236

namespace A195035

/-- `(A010693(n+1)+A010673(n+1))*A195019(n+1)` -/
def P8240096779287874236.Spec : Prop :=
  ∀ n, P8240096779287874236.a n = A195035 (n + 1)

end A195035

/-!
# A195036: Vertex number of a square spiral in which the length of the first two edges are the legs of the primitive Pythagorean triple [15, 8, 17]. The edges of the spiral have length A195035.

The programs for A195036, the canonical program `A195036.P10530555580949219000` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195036 has offset 0).

The definition of A195036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195036.P12820670853435001270

`(2*n*(23*n+53)-(14*n+37)*(-1)^n+37)/16`
-/

namespace A195036.P12820670853435001270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n * (23 * n + 53) : ℤ) - (14 * n + 37 : ℤ) * (-1) ^ n + 37 : ℚ) / 16

end

end A195036.P12820670853435001270

namespace A195036

/-- `(2*n*(23*n+53)-(14*n+37)*(-1)^n+37)/16` -/
def P12820670853435001270.Spec : Prop :=
  ∀ n, P12820670853435001270.a n = (A195036 n : ℚ)

theorem P12820670853435001270.correct : P12820670853435001270.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A195036, Nat.add_sub_cancel, A195036.P12820670853435001270.a, A195036.P10530555580949219000.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A195036, Nat.add_sub_cancel, A195036.P12820670853435001270.a, A195036.P10530555580949219000.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195036

/-! ## A195036.P10530555580949219000

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=15, a(2)=23, a(3)=53, a(4)=69`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195036

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P10530555580949219000.Spec : Prop :=
  ∀ n, P10530555580949219000.a n = A195036 n

theorem P10530555580949219000.correct : P10530555580949219000.Spec := by
  intro n
  simp only [A195036]

end A195036

/-! ## A195036.P17552750864596338172

`∑[A195035(n+1)]-A195035(n+1)`
-/

namespace A195036.P17552750864596338172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A195035 (n + 1)

end

end A195036.P17552750864596338172

namespace A195036

/-- `∑[A195035(n+1)]-A195035(n+1)` -/
def P17552750864596338172.Spec : Prop :=
  ∀ n, P17552750864596338172.a n = A195036 n

end A195036

/-! ## A195036.P7285773572514672664

`A303815(n+1)-(A195817(n+1)+∑[n])`
-/

namespace A195036.P7285773572514672664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303815 (n + 1) - (A195817 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A195036.P7285773572514672664

namespace A195036

/-- `A303815(n+1)-(A195817(n+1)+∑[n])` -/
def P7285773572514672664.Spec : Prop :=
  ∀ n, P7285773572514672664.a n = A195036 n

end A195036

/-! ## A195036.P7108142722404240055

`∑[A317325(n+1)-n]-A195817(n+1)`
-/

namespace A195036.P7108142722404240055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317325 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A195817 (n + 1)

end

end A195036.P7108142722404240055

namespace A195036

/-- `∑[A317325(n+1)-n]-A195817(n+1)` -/
def P7108142722404240055.Spec : Prop :=
  ∀ n, P7108142722404240055.a n = A195036 n

end A195036

/-! ## A195036.P12579829493791892959

`∑[∑[6-A001057(7*n+18)]]-∑[6-A001057(7*n+18)]`
-/

namespace A195036.P12579829493791892959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A001057 (7 * n + 18)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A001057 (7 * n + 18)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f3 j

end

end A195036.P12579829493791892959

namespace A195036

/-- `∑[∑[6-A001057(7*n+18)]]-∑[6-A001057(7*n+18)]` -/
def P12579829493791892959.Spec : Prop :=
  ∀ n, P12579829493791892959.a n = A195036 n

end A195036

/-! ## A195036.P4651046175457016324

`∑[A004526(n+1)*A335896(A003484(n²+1)+1)]`
-/

namespace A195036.P4651046175457016324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) * A335896 (A003484 (n ^ 2 + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195036.P4651046175457016324

namespace A195036

/-- `∑[A004526(n+1)*A335896(A003484(n²+1)+1)]` -/
def P4651046175457016324.Spec : Prop :=
  ∀ n, P4651046175457016324.a n = A195036 n

end A195036

/-!
# A195037: 17 times triangular numbers.

The programs for A195037, the canonical program `A195037.P2588191914620714937` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195037 has offset 0).

The definition of A195037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195037.P6979220013518372738

`17*n*(n+1)/2`
-/

namespace A195037.P6979220013518372738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (17 * n * (n + 1) : ℚ) / 2

end

end A195037.P6979220013518372738

namespace A195037

/-- `17*n*(n+1)/2` -/
def P6979220013518372738.Spec : Prop :=
  ∀ n, P6979220013518372738.a n = (A195037 n : ℚ)

theorem P6979220013518372738.correct : P6979220013518372738.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A195037, Nat.add_sub_cancel, A195037.P6979220013518372738.a, A195037.P2588191914620714937.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A195037, Nat.add_sub_cancel, A195037.P6979220013518372738.a, A195037.P2588191914620714937.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195037

/-! ## A195037.P2588191914620714937

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=17, a(2)=51`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195037

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P2588191914620714937.Spec : Prop :=
  ∀ n, P2588191914620714937.a n = A195037 n

theorem P2588191914620714937.correct : P2588191914620714937.Spec := by
  intro n
  simp only [A195037]

end A195037

/-! ## A195037.P5122287025424279587

`17*A000217(n)`
-/

namespace A195037.P5122287025424279587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A000217 n

end

end A195037.P5122287025424279587

namespace A195037

/-- `17*A000217(n)` -/
def P5122287025424279587.Spec : Prop :=
  ∀ n, P5122287025424279587.a n = A195037 n

end A195037

/-! ## A195037.P16746316497036622226

`A195032(2*n)`
-/

namespace A195037.P16746316497036622226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195032 (2 * n)

end

end A195037.P16746316497036622226

namespace A195037

/-- `A195032(2*n)` -/
def P16746316497036622226.Spec : Prop :=
  ∀ n, P16746316497036622226.a n = A195037 n

end A195037

/-! ## A195037.P10083969094476990675

`17*C(n+1, 2)`
-/

namespace A195037.P10083969094476990675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * Nat.choose (n + 1) 2

end

end A195037.P10083969094476990675

namespace A195037

/-- `17*C(n+1, 2)` -/
def P10083969094476990675.Spec : Prop :=
  ∀ n, (P10083969094476990675.a n : ℤ) = A195037 n

end A195037

/-! ## A195037.P17976671031652390281

`∑[a(n-1)+17]` with `a(0)=0`
-/

namespace A195037.P17976671031652390281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195037.P17976671031652390281

namespace A195037

/-- `∑[a(n-1)+17]` -/
def P17976671031652390281.Spec : Prop :=
  ∀ n, (P17976671031652390281.a n : ℤ) = A195037 n

end A195037

/-! ## A195037.P14262116630913627117

`17*n+a(n-1)` with `a(0)=0`
-/

namespace A195037.P14262116630913627117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  17 * n + a (n - 1)

end

end A195037.P14262116630913627117

namespace A195037

/-- `17*n+a(n-1)` -/
def P14262116630913627117.Spec : Prop :=
  ∀ n, (P14262116630913627117.a n : ℤ) = A195037 n

end A195037

/-! ## A195037.P11178339067079469456

`-∑[a(n-1)-17]` with `a(0)=0`
-/

namespace A195037.P11178339067079469456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195037.P11178339067079469456

namespace A195037

/-- `-∑[a(n-1)-17]` -/
def P11178339067079469456.Spec : Prop :=
  ∀ n, P11178339067079469456.a n = A195037 n

end A195037

/-! ## A195037.P12464085468832996899

`18*n-(n-a(n-1))` with `a(0)=0`
-/

namespace A195037.P12464085468832996899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (18 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A195037.P12464085468832996899

namespace A195037

/-- `18*n-(n-a(n-1))` -/
def P12464085468832996899.Spec : Prop :=
  ∀ n, P12464085468832996899.a n = A195037 n

end A195037

/-! ## A195037.P15516412545334956276

`A035008(n)+∑[n]`
-/

namespace A195037.P15516412545334956276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035008 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A195037.P15516412545334956276

namespace A195037

/-- `A035008(n)+∑[n]` -/
def P15516412545334956276.Spec : Prop :=
  ∀ n, P15516412545334956276.a n = A195037 n

end A195037

/-! ## A195037.P16100956993742935746

`A163758(n)-∑[n]`
-/

namespace A195037.P16100956993742935746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163758 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A195037.P16100956993742935746

namespace A195037

/-- `A163758(n)-∑[n]` -/
def P16100956993742935746.Spec : Prop :=
  ∀ n, P16100956993742935746.a n = A195037 n

end A195037

/-! ## A195037.P16105365065591097179

`A069130(n+1)-1`
-/

namespace A195037.P16105365065591097179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069130 (n + 1) - 1

end

end A195037.P16105365065591097179

namespace A195037

/-- `A069130(n+1)-1` -/
def P16105365065591097179.Spec : Prop :=
  ∀ n, P16105365065591097179.a n = A195037 n

end A195037

/-! ## A195037.P12530115965286315089

`A001504(n)-(∑[n]+2)`
-/

namespace A195037.P12530115965286315089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001504 n - ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ)

end

end A195037.P12530115965286315089

namespace A195037

/-- `A001504(n)-(∑[n]+2)` -/
def P12530115965286315089.Spec : Prop :=
  ∀ n, P12530115965286315089.a n = A195037 n

end A195037

/-! ## A195037.P1376967443106779234

`A194715(n)+n²+n`
-/

namespace A195037.P1376967443106779234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194715 n + (n ^ 2 + n : ℤ)

end

end A195037.P1376967443106779234

namespace A195037

/-- `A194715(n)+n²+n` -/
def P1376967443106779234.Spec : Prop :=
  ∀ n, P1376967443106779234.a n = A195037 n

end A195037

/-! ## A195037.P9922562567415228537

`(n+1)/2*A008599(n)`
-/

namespace A195037.P9922562567415228537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A008599 n : ℚ)

end

end A195037.P9922562567415228537

namespace A195037

/-- `(n+1)/2*A008599(n)` -/
def P9922562567415228537.Spec : Prop :=
  ∀ n, P9922562567415228537.a n = (A195037 n : ℚ)

theorem P9922562567415228537.correct : P9922562567415228537.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A195037, Nat.add_sub_cancel, A195037.P9922562567415228537.a, A195037.P2588191914620714937.a, A008599, A008599.P9337740256108162749.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A195037, Nat.add_sub_cancel, A195037.P9922562567415228537.a, A195037.P2588191914620714937.a, A008599, A008599.P9337740256108162749.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A195037

/-! ## A195037.P4967960854329524950

`∑[A215144(n)]-(n+1)²`
-/

namespace A195037.P4967960854329524950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A195037.P4967960854329524950

namespace A195037

/-- `∑[A215144(n)]-(n+1)²` -/
def P4967960854329524950.Spec : Prop :=
  ∀ n, P4967960854329524950.a n = A195037 n

end A195037

/-! ## A195037.P6775404276409001811

`A180232(n+1)-2*(n+1)`
-/

namespace A195037.P6775404276409001811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180232 (n + 1) - (2 * (n + 1) : ℤ)

end

end A195037.P6775404276409001811

namespace A195037

/-- `A180232(n+1)-2*(n+1)` -/
def P6775404276409001811.Spec : Prop :=
  ∀ n, P6775404276409001811.a n = A195037 n

end A195037

/-! ## A195037.P12236600343637589257

`A022274(n)+A008591(n)`
-/

namespace A195037.P12236600343637589257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022274 n + A008591 n

end

end A195037.P12236600343637589257

namespace A195037

/-- `A022274(n)+A008591(n)` -/
def P12236600343637589257.Spec : Prop :=
  ∀ n, P12236600343637589257.a n = A195037 n

end A195037

/-! ## A195037.P12628547356905161624

`A022275(n)+A008590(n)`
-/

namespace A195037.P12628547356905161624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022275 n + A008590 n

end

end A195037.P12628547356905161624

namespace A195037

/-- `A022275(n)+A008590(n)` -/
def P12628547356905161624.Spec : Prop :=
  ∀ n, P12628547356905161624.a n = A195037 n

end A195037

/-! ## A195037.P11729625056240297595

`A028566(n)+A022273(n)`
-/

namespace A195037.P11729625056240297595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028566 n + A022273 n

end

end A195037.P11729625056240297595

namespace A195037

/-- `A028566(n)+A022273(n)` -/
def P11729625056240297595.Spec : Prop :=
  ∀ n, P11729625056240297595.a n = A195037 n

end A195037

/-!
# A195038: 41 times triangular numbers.

The programs for A195038, the canonical program `A195038.P3509519855277570729` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195038 has offset 0).

The definition of A195038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195038.P11921124079247672735

`41*n*(n+1)/2`
-/

namespace A195038.P11921124079247672735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (41 * n * (n + 1) : ℚ) / 2

end

end A195038.P11921124079247672735

namespace A195038

/-- `41*n*(n+1)/2` -/
def P11921124079247672735.Spec : Prop :=
  ∀ n, P11921124079247672735.a n = (A195038 n : ℚ)

theorem P11921124079247672735.correct : P11921124079247672735.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A195038, Nat.add_sub_cancel, A195038.P11921124079247672735.a, A195038.P3509519855277570729.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A195038, Nat.add_sub_cancel, A195038.P11921124079247672735.a, A195038.P3509519855277570729.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195038

/-! ## A195038.P3509519855277570729

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=41, a(2)=123`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195038

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P3509519855277570729.Spec : Prop :=
  ∀ n, P3509519855277570729.a n = A195038 n

theorem P3509519855277570729.correct : P3509519855277570729.Spec := by
  intro n
  simp only [A195038]

end A195038

/-! ## A195038.P6360090009641572122

`41*A000217(n)`
-/

namespace A195038.P6360090009641572122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  41 * A000217 n

end

end A195038.P6360090009641572122

namespace A195038

/-- `41*A000217(n)` -/
def P6360090009641572122.Spec : Prop :=
  ∀ n, P6360090009641572122.a n = A195038 n

end A195038

/-! ## A195038.P12272388952474829013

`A195034(2*n)`
-/

namespace A195038.P12272388952474829013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195034 (2 * n)

end

end A195038.P12272388952474829013

namespace A195038

/-- `A195034(2*n)` -/
def P12272388952474829013.Spec : Prop :=
  ∀ n, P12272388952474829013.a n = A195038 n

end A195038

/-! ## A195038.P5987064110006601072

`41*C(n+1, 2)`
-/

namespace A195038.P5987064110006601072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * Nat.choose (n + 1) 2

end

end A195038.P5987064110006601072

namespace A195038

/-- `41*C(n+1, 2)` -/
def P5987064110006601072.Spec : Prop :=
  ∀ n, (P5987064110006601072.a n : ℤ) = A195038 n

end A195038

/-! ## A195038.P8365637920066929882

`∑[a(n-1)+41]` with `a(0)=0`
-/

namespace A195038.P8365637920066929882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195038.P8365637920066929882

namespace A195038

/-- `∑[a(n-1)+41]` -/
def P8365637920066929882.Spec : Prop :=
  ∀ n, (P8365637920066929882.a n : ℤ) = A195038 n

end A195038

/-! ## A195038.P8866809301198064545

`a(n-1)+41*n` with `a(0)=0`
-/

namespace A195038.P8866809301198064545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 41 * n

end

end A195038.P8866809301198064545

namespace A195038

/-- `a(n-1)+41*n` -/
def P8866809301198064545.Spec : Prop :=
  ∀ n, (P8866809301198064545.a n : ℤ) = A195038 n

end A195038

/-! ## A195038.P11811878575559682008

`41*n²-a(n-1)` with `a(0)=0`
-/

namespace A195038.P11811878575559682008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (41 * n ^ 2 : ℤ) - a (n - 1)

end

end A195038.P11811878575559682008

namespace A195038

/-- `41*n²-a(n-1)` -/
def P11811878575559682008.Spec : Prop :=
  ∀ n, P11811878575559682008.a n = A195038 n

end A195038

/-! ## A195038.P4240216178760210783

`42*n-(n-a(n-1))` with `a(0)=0`
-/

namespace A195038.P4240216178760210783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (42 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A195038.P4240216178760210783

namespace A195038

/-- `42*n-(n-a(n-1))` -/
def P4240216178760210783.Spec : Prop :=
  ∀ n, P4240216178760210783.a n = A195038 n

end A195038

/-! ## A195038.P8985292162661731265

`∑[A317095(n)+n]`
-/

namespace A195038.P8985292162661731265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317095 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195038.P8985292162661731265

namespace A195038

/-- `∑[A317095(n)+n]` -/
def P8985292162661731265.Spec : Prop :=
  ∀ n, P8985292162661731265.a n = A195038 n

end A195038

/-! ## A195038.P14492340064452911315

`A098924(n+1)-(n+1)²`
-/

namespace A195038.P14492340064452911315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098924 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A195038.P14492340064452911315

namespace A195038

/-- `A098924(n+1)-(n+1)²` -/
def P14492340064452911315.Spec : Prop :=
  ∀ n, P14492340064452911315.a n = A195038 n

end A195038

/-! ## A195038.P15201622225946224440

`A195317(n+1)+∑[n]-1`
-/

namespace A195038.P15201622225946224440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195317 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A195038.P15201622225946224440

namespace A195038

/-- `A195317(n+1)+∑[n]-1` -/
def P15201622225946224440.Spec : Prop :=
  ∀ n, P15201622225946224440.a n = A195038 n

end A195038

/-! ## A195038.P10050322491264936652

`A123296(n)+A035008(n)`
-/

namespace A195038.P10050322491264936652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123296 n + A035008 n

end

end A195038.P10050322491264936652

namespace A195038

/-- `A123296(n)+A035008(n)` -/
def P10050322491264936652.Spec : Prop :=
  ∀ n, P10050322491264936652.a n = A195038 n

end A195038

/-! ## A195038.P3327827985317329218

`A162940(n)+A028895(n)`
-/

namespace A195038.P3327827985317329218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162940 n + A028895 n

end

end A195038.P3327827985317329218

namespace A195038

/-- `A162940(n)+A028895(n)` -/
def P3327827985317329218.Spec : Prop :=
  ∀ n, P3327827985317329218.a n = A195038 n

end A195038

/-! ## A195038.P10081805053968795355

`A173308(n)+A024966(n)`
-/

namespace A195038.P10081805053968795355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173308 n + A024966 n

end

end A195038.P10081805053968795355

namespace A195038

/-- `A173308(n)+A024966(n)` -/
def P10081805053968795355.Spec : Prop :=
  ∀ n, P10081805053968795355.a n = A195038 n

end A195038

/-! ## A195038.P17618427211537342116

`A173309(n)+A045943(n)`
-/

namespace A195038.P17618427211537342116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173309 n + A045943 n

end

end A195038.P17618427211537342116

namespace A195038

/-- `A173309(n)+A045943(n)` -/
def P17618427211537342116.Spec : Prop :=
  ∀ n, P17618427211537342116.a n = A195038 n

end A195038

/-! ## A195038.P4008659264303473272

`A153793(n)+A132769(n)`
-/

namespace A195038.P4008659264303473272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153793 n + A132769 n

end

end A195038.P4008659264303473272

namespace A195038

/-- `A153793(n)+A132769(n)` -/
def P4008659264303473272.Spec : Prop :=
  ∀ n, P4008659264303473272.a n = A195038 n

end A195038

/-! ## A195038.P17723992994068086492

`A195039(n)+A163758(n)`
-/

namespace A195038.P17723992994068086492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195039 n + A163758 n

end

end A195038.P17723992994068086492

namespace A195038

/-- `A195039(n)+A163758(n)` -/
def P17723992994068086492.Spec : Prop :=
  ∀ n, P17723992994068086492.a n = A195038 n

end A195038

/-! ## A195038.P15993323111423087035

`A194715(n)+A173307(n)`
-/

namespace A195038.P15993323111423087035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194715 n + A173307 n

end

end A195038.P15993323111423087035

namespace A195038

/-- `A194715(n)+A173307(n)` -/
def P15993323111423087035.Spec : Prop :=
  ∀ n, P15993323111423087035.a n = A195038 n

end A195038

/-! ## A195038.P7920523619263696417

`A129428(n)-A003215(n)`
-/

namespace A195038.P7920523619263696417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129428 n - A003215 n

end

end A195038.P7920523619263696417

namespace A195038

/-- `A129428(n)-A003215(n)` -/
def P7920523619263696417.Spec : Prop :=
  ∀ n, P7920523619263696417.a n = A195038 n

end A195038

/-!
# A195039: 23 times triangular numbers.

The programs for A195039, the canonical program `A195039.P10328858079798862408` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195039 has offset 0).

The definition of A195039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195039.P14412721202966623074

`23*n*(n+1)/2`
-/

namespace A195039.P14412721202966623074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (23 * n * (n + 1) : ℚ) / 2

end

end A195039.P14412721202966623074

namespace A195039

/-- `23*n*(n+1)/2` -/
def P14412721202966623074.Spec : Prop :=
  ∀ n, P14412721202966623074.a n = (A195039 n : ℚ)

theorem P14412721202966623074.correct : P14412721202966623074.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A195039, Nat.add_sub_cancel, A195039.P14412721202966623074.a, A195039.P10328858079798862408.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A195039, Nat.add_sub_cancel, A195039.P14412721202966623074.a, A195039.P10328858079798862408.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195039

/-! ## A195039.P10328858079798862408

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=23, a(2)=69`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195039

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P10328858079798862408.Spec : Prop :=
  ∀ n, P10328858079798862408.a n = A195039 n

theorem P10328858079798862408.correct : P10328858079798862408.Spec := by
  intro n
  simp only [A195039]

end A195039

/-! ## A195039.P13653072540960401363

`23*A000217(n)`
-/

namespace A195039.P13653072540960401363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A000217 n

end

end A195039.P13653072540960401363

namespace A195039

/-- `23*A000217(n)` -/
def P13653072540960401363.Spec : Prop :=
  ∀ n, P13653072540960401363.a n = A195039 n

end A195039

/-! ## A195039.P10610261864073251807

`A069174(n+1)-1`
-/

namespace A195039.P10610261864073251807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069174 (n + 1) - 1

end

end A195039.P10610261864073251807

namespace A195039

/-- `A069174(n+1)-1` -/
def P10610261864073251807.Spec : Prop :=
  ∀ n, P10610261864073251807.a n = A195039 n

end A195039

/-! ## A195039.P4146410538258476974

`23*C(n+1, 2)`
-/

namespace A195039.P4146410538258476974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 * Nat.choose (n + 1) 2

end

end A195039.P4146410538258476974

namespace A195039

/-- `23*C(n+1, 2)` -/
def P4146410538258476974.Spec : Prop :=
  ∀ n, (P4146410538258476974.a n : ℤ) = A195039 n

end A195039

/-! ## A195039.P10660713256219820606

`∑[a(n-1)+23]` with `a(0)=0`
-/

namespace A195039.P10660713256219820606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195039.P10660713256219820606

namespace A195039

/-- `∑[a(n-1)+23]` -/
def P10660713256219820606.Spec : Prop :=
  ∀ n, (P10660713256219820606.a n : ℤ) = A195039 n

end A195039

/-! ## A195039.P5028152999786200694

`23*n+a(n-1)` with `a(0)=0`
-/

namespace A195039.P5028152999786200694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  23 * n + a (n - 1)

end

end A195039.P5028152999786200694

namespace A195039

/-- `23*n+a(n-1)` -/
def P5028152999786200694.Spec : Prop :=
  ∀ n, (P5028152999786200694.a n : ℤ) = A195039 n

end A195039

/-! ## A195039.P8281458738311489412

`24*n-(n-a(n-1))` with `a(0)=0`
-/

namespace A195039.P8281458738311489412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (24 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A195039.P8281458738311489412

namespace A195039

/-- `24*n-(n-a(n-1))` -/
def P8281458738311489412.Spec : Prop :=
  ∀ n, P8281458738311489412.a n = A195039 n

end A195039

/-! ## A195039.P14122762968354515624

`A164136(n)+∑[n]`
-/

namespace A195039.P14122762968354515624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164136 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A195039.P14122762968354515624

namespace A195039

/-- `A164136(n)+∑[n]` -/
def P14122762968354515624.Spec : Prop :=
  ∀ n, P14122762968354515624.a n = A195039 n

end A195039

/-! ## A195039.P14169727285738826163

`A123296(n)-(n²+n)`
-/

namespace A195039.P14169727285738826163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123296 n - (n ^ 2 + n : ℤ)

end

end A195039.P14169727285738826163

namespace A195039

/-- `A123296(n)-(n²+n)` -/
def P14169727285738826163.Spec : Prop :=
  ∀ n, P14169727285738826163.a n = A195039 n

end A195039

/-! ## A195039.P3147963159668681282

`(n+1)/2*A008605(n)`
-/

namespace A195039.P3147963159668681282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A008605 n : ℚ)

end

end A195039.P3147963159668681282

namespace A195039

/-- `(n+1)/2*A008605(n)` -/
def P3147963159668681282.Spec : Prop :=
  ∀ n, P3147963159668681282.a n = (A195039 n : ℚ)

theorem P3147963159668681282.correct : P3147963159668681282.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A195039, Nat.add_sub_cancel, A195039.P3147963159668681282.a, A195039.P10328858079798862408.a, A008605, A008605.P5066899400796399337.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A195039, Nat.add_sub_cancel, A195039.P3147963159668681282.a, A195039.P10328858079798862408.a, A008605, A008605.P5066899400796399337.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A195039

/-! ## A195039.P9730188356195495551

`A069173(n+1)+∑[n]-1`
-/

namespace A195039.P9730188356195495551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069173 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A195039.P9730188356195495551

namespace A195039

/-- `A069173(n+1)+∑[n]-1` -/
def P9730188356195495551.Spec : Prop :=
  ∀ n, P9730188356195495551.a n = A195039 n

end A195039

/-! ## A195039.P8751514587009484286

`A069190(n+1)-(∑[n]+1)`
-/

namespace A195039.P8751514587009484286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069190 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A195039.P8751514587009484286

namespace A195039

/-- `A069190(n+1)-(∑[n]+1)` -/
def P8751514587009484286.Spec : Prop :=
  ∀ n, P8751514587009484286.a n = A195039 n

end A195039

/-! ## A195039.P15102737787855300649

`A022280(n)+A008594(n)`
-/

namespace A195039.P15102737787855300649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022280 n + A008594 n

end

end A195039.P15102737787855300649

namespace A195039

/-- `A022280(n)+A008594(n)` -/
def P15102737787855300649.Spec : Prop :=
  ∀ n, P15102737787855300649.a n = A195039 n

end A195039

/-! ## A195039.P7302971821037303144

`A022281(n)+A008593(n)`
-/

namespace A195039.P7302971821037303144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022281 n + A008593 n

end

end A195039.P7302971821037303144

namespace A195039

/-- `A022281(n)+A008593(n)` -/
def P7302971821037303144.Spec : Prop :=
  ∀ n, P7302971821037303144.a n = A195039 n

end A195039

/-! ## A195039.P13530240359831296266

`A035008(n)+A024966(n)`
-/

namespace A195039.P13530240359831296266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035008 n + A024966 n

end

end A195039.P13530240359831296266

namespace A195039

/-- `A035008(n)+A024966(n)` -/
def P13530240359831296266.Spec : Prop :=
  ∀ n, P13530240359831296266.a n = A195039 n

end A195039

/-! ## A195039.P2793086451600314480

`A098847(n)+A022278(n)`
-/

namespace A195039.P2793086451600314480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098847 n + A022278 n

end

end A195039.P2793086451600314480

namespace A195039

/-- `A098847(n)+A022278(n)` -/
def P2793086451600314480.Spec : Prop :=
  ∀ n, P2793086451600314480.a n = A195039 n

end A195039

/-! ## A195039.P579009941653288642

`A119412(n)+A022279(n)`
-/

namespace A195039.P579009941653288642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119412 n + A022279 n

end

end A195039.P579009941653288642

namespace A195039

/-- `A119412(n)+A022279(n)` -/
def P579009941653288642.Spec : Prop :=
  ∀ n, P579009941653288642.a n = A195039 n

end A195039

/-! ## A195039.P4636927319707443689

`A139577(n)+A022277(n)`
-/

namespace A195039.P4636927319707443689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139577 n + A022277 n

end

end A195039.P4636927319707443689

namespace A195039

/-- `A139577(n)+A022277(n)` -/
def P4636927319707443689.Spec : Prop :=
  ∀ n, P4636927319707443689.a n = A195039 n

end A195039

/-! ## A195039.P3049505314220025669

`A132754(n)+A033584(n)`
-/

namespace A195039.P3049505314220025669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132754 n + A033584 n

end

end A195039.P3049505314220025669

namespace A195039

/-- `A132754(n)+A033584(n)` -/
def P3049505314220025669.Spec : Prop :=
  ∀ n, P3049505314220025669.a n = A195039 n

end A195039

/-!
# A195040: Square array read by antidiagonals with T(n,k) = k*n^2/4+(k-4)*((-1)^n-1)/8, n>=0, k>=0.

The programs for A195040, the canonical program `A195040.P1760848894528190297` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195040 has offset 0).

The definition of A195040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195040.P1760848894528190297

`col(n)*(row(n)-col(n))²/4+(col(n)-4)*((-1)^(row(n)-col(n))-1)/8`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195040

/-- `col(n)*(row(n)-col(n))²/4+(col(n)-4)*((-1)^(row(n)-col(n))-1)/8` -/
def P1760848894528190297.Spec : Prop :=
  ∀ n, P1760848894528190297.a n = (A195040 n : ℚ)

end A195040

/-! ## A195040.P3124794307510637939

`A259361(A089141(n+1))^A212943(A228035(n))`
-/

namespace A195040.P3124794307510637939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259361 (A089141 (n + 1)).toNat : ℚ) ^ (A212943 (A228035 n).toNat : ℤ)

end

end A195040.P3124794307510637939

namespace A195040

/-- `A259361(A089141(n+1))^A212943(A228035(n))` -/
def P3124794307510637939.Spec : Prop :=
  ∀ n, P3124794307510637939.a n = (A195040 n : ℚ)

end A195040

/-! ## A195040.P1326314041353752507

`A162158(A001748(n+1))%2*A259361(A089141(n+1))`
-/

namespace A195040.P1326314041353752507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162158 (A001748 (n + 1)).toNat) 2 * A259361 (A089141 (n + 1)).toNat

end

end A195040.P1326314041353752507

namespace A195040

/-- `A162158(A001748(n+1))%2*A259361(A089141(n+1))` -/
def P1326314041353752507.Spec : Prop :=
  ∀ n, P1326314041353752507.a n = A195040 n

end A195040

/-! ## A195040.P9496680211589708072

`A259361(A089141(n+1))%record[A317504(n)]`
-/

namespace A195040.P9496680211589708072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259361 (A089141 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A195040.P9496680211589708072

namespace A195040

/-- `A259361(A089141(n+1))%record[A317504(n)]` -/
def P9496680211589708072.Spec : Prop :=
  ∀ n, P9496680211589708072.a n = A195040 n

end A195040

/-! ## A195040.P12397201616914835656

`A259361(A089141(n+1))^A014963(A329723(n))`
-/

namespace A195040.P12397201616914835656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259361 (A089141 (n + 1)).toNat : ℚ) ^ (A014963 (A329723 n).toNat : ℤ)

end

end A195040.P12397201616914835656

namespace A195040

/-- `A259361(A089141(n+1))^A014963(A329723(n))` -/
def P12397201616914835656.Spec : Prop :=
  ∀ n, P12397201616914835656.a n = (A195040 n : ℚ)

end A195040

/-!
# A195041: Concentric heptagonal numbers.

The programs for A195041, the canonical program `A195041.P12956750460033382326` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195041 has offset 0).

The definition of A195041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195041.P12956750460033382326

`n²+floor(3*n²/4)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195041

/-- `n²+floor(3*n²/4)` -/
def P12956750460033382326.Spec : Prop :=
  ∀ n, P12956750460033382326.a n = A195041 n

theorem P12956750460033382326.correct : P12956750460033382326.Spec := by
  intro n
  simp only [A195041]

end A195041

/-! ## A195041.P14437846588735416324

`∑[a(n-2)+7]` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A195041.P14437846588735416324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 6] fun n f1 =>
  f1 (n - 2) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195041.P14437846588735416324

namespace A195041

/-- `∑[a(n-2)+7]` -/
def P14437846588735416324.Spec : Prop :=
  ∀ n, (P14437846588735416324.a n : ℤ) = A195041 n

end A195041

/-! ## A195041.P1248859940595879280

`∑[∑[7-a(n-1)]]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A195041.P1248859940595879280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n f2 =>
  7 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195041.P1248859940595879280

namespace A195041

/-- `∑[∑[7-a(n-1)]]` -/
def P1248859940595879280.Spec : Prop :=
  ∀ n, P1248859940595879280.a n = A195041 n

end A195041

/-! ## A195041.P9793576301689519699

`ogf((x+5x^2+x^3)/(1-2x+2x^3-x^4))`
-/

namespace A195041.P9793576301689519699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5, 1] [1, -2, 0, 2, -1] n

end

end A195041.P9793576301689519699

namespace A195041

/-- `ogf((x+5x^2+x^3)/(1-2x+2x^3-x^4))` -/
def P9793576301689519699.Spec : Prop :=
  ∀ n, P9793576301689519699.a n = A195041 n

end A195041

/-! ## A195041.P2053192650788430265

`ceil(A195145(n)/2)`
-/

namespace A195041.P2053192650788430265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A195145 n : ℚ) / 2⌉

end

end A195041.P2053192650788430265

namespace A195041

/-- `ceil(A195145(n)/2)` -/
def P2053192650788430265.Spec : Prop :=
  ∀ n, P2053192650788430265.a n = A195041 n

end A195041

/-! ## A195041.P12664304947051511208

`∑[∑[A072996(n)]-1]`
-/

namespace A195041.P12664304947051511208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072996 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195041.P12664304947051511208

namespace A195041

/-- `∑[∑[A072996(n)]-1]` -/
def P12664304947051511208.Spec : Prop :=
  ∀ n, P12664304947051511208.a n = A195041 n

end A195041

/-! ## A195041.P17194445734804723701

`(A195142(n)+n²)/2`
-/

namespace A195041.P17194445734804723701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195142 n + (n ^ 2 : ℤ) : ℚ) / 2

end

end A195041.P17194445734804723701

namespace A195041

/-- `(A195142(n)+n²)/2` -/
def P17194445734804723701.Spec : Prop :=
  ∀ n, P17194445734804723701.a n = (A195041 n : ℚ)

end A195041

/-! ## A195041.P9349127838821139099

`∑[A261953(n)-(n+1)]`
-/

namespace A195041.P9349127838821139099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261953 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195041.P9349127838821139099

namespace A195041

/-- `∑[A261953(n)-(n+1)]` -/
def P9349127838821139099.Spec : Prop :=
  ∀ n, P9349127838821139099.a n = A195041 n

end A195041

/-! ## A195041.P3702054305700515129

`A033951(n)%A121470(n+1)`
-/

namespace A195041.P3702054305700515129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033951 n) (A121470 (n + 1))

end

end A195041.P3702054305700515129

namespace A195041

/-- `A033951(n)%A121470(n+1)` -/
def P3702054305700515129.Spec : Prop :=
  ∀ n, P3702054305700515129.a n = A195041 n

end A195041

/-! ## A195041.P15048857037311887376

`∪[A069127(n+1), A033582(n)]`
-/

namespace A195041.P15048857037311887376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033582 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195041.P15048857037311887376

namespace A195041

/-- `∪[A069127(n+1), A033582(n)]` -/
def P15048857037311887376.Spec : Prop :=
  ∀ n, (P15048857037311887376.a n : ℤ) = A195041 n

end A195041

/-! ## A195041.P11951185682032826877

`A047274(A061925(n))`
-/

namespace A195041.P11951185682032826877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047274 (A061925 n).toNat

end

end A195041.P11951185682032826877

namespace A195041

/-- `A047274(A061925(n))` -/
def P11951185682032826877.Spec : Prop :=
  ∀ n, P11951185682032826877.a n = A195041 n

end A195041

/-! ## A195041.P18104583309061424202

`A047274(A261243(n+2))`
-/

namespace A195041.P18104583309061424202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047274 (A261243 (n + 2)).toNat

end

end A195041.P18104583309061424202

namespace A195041

/-- `A047274(A261243(n+2))` -/
def P18104583309061424202.Spec : Prop :=
  ∀ n, P18104583309061424202.a n = A195041 n

end A195041

/-! ## A195041.P14379972418403609217

`A047275(A084684(n))`
-/

namespace A195041.P14379972418403609217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047275 (A084684 n).toNat

end

end A195041.P14379972418403609217

namespace A195041

/-- `A047275(A084684(n))` -/
def P14379972418403609217.Spec : Prop :=
  ∀ n, P14379972418403609217.a n = A195041 n

end A195041

/-! ## A195041.P1961788553808601686

`A047279(n²+1)`
-/

namespace A195041.P1961788553808601686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047279 (n ^ 2 + 1)

end

end A195041.P1961788553808601686

namespace A195041

/-- `A047279(n²+1)` -/
def P1961788553808601686.Spec : Prop :=
  ∀ n, P1961788553808601686.a n = A195041 n

end A195041

/-! ## A195041.P18339230809924105414

`A047283(n²+1)`
-/

namespace A195041.P18339230809924105414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047283 (n ^ 2 + 1)

end

end A195041.P18339230809924105414

namespace A195041

/-- `A047283(n²+1)` -/
def P18339230809924105414.Spec : Prop :=
  ∀ n, P18339230809924105414.a n = A195041 n

end A195041

/-! ## A195041.P14895257531462047256

`A047291(n²+1)`
-/

namespace A195041.P14895257531462047256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047291 (n ^ 2 + 1)

end

end A195041.P14895257531462047256

namespace A195041

/-- `A047291(n²+1)` -/
def P14895257531462047256.Spec : Prop :=
  ∀ n, P14895257531462047256.a n = A195041 n

end A195041

/-! ## A195041.P3529121932881005379

`A047322(n²+1)`
-/

namespace A195041.P3529121932881005379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047322 (n ^ 2 + 1)

end

end A195041.P3529121932881005379

namespace A195041

/-- `A047322(n²+1)` -/
def P3529121932881005379.Spec : Prop :=
  ∀ n, P3529121932881005379.a n = A195041 n

end A195041

/-! ## A195041.P15502429534576403896

`A047344(n²+1)`
-/

namespace A195041.P15502429534576403896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047344 (n ^ 2 + 1)

end

end A195041.P15502429534576403896

namespace A195041

/-- `A047344(n²+1)` -/
def P15502429534576403896.Spec : Prop :=
  ∀ n, P15502429534576403896.a n = A195041 n

end A195041

/-! ## A195041.P11010818379515298792

`A047351(n²+1)`
-/

namespace A195041.P11010818379515298792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047351 (n ^ 2 + 1)

end

end A195041.P11010818379515298792

namespace A195041

/-- `A047351(n²+1)` -/
def P11010818379515298792.Spec : Prop :=
  ∀ n, P11010818379515298792.a n = A195041 n

end A195041

/-! ## A195041.P6571219709121318320

`A047361(n²+1)`
-/

namespace A195041.P6571219709121318320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047361 (n ^ 2 + 1)

end

end A195041.P6571219709121318320

namespace A195041

/-- `A047361(n²+1)` -/
def P6571219709121318320.Spec : Prop :=
  ∀ n, P6571219709121318320.a n = A195041 n

end A195041

/-!
# A195042: Concentric 9-gonal numbers.

The programs for A195042, the canonical program `A195042.P2938455494781177894` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195042 has offset 0).

The definition of A195042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195042.P2938455494781177894

`(9*n²+5/2*((-1)^n-1))/4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195042

/-- `(9*n²+5/2*((-1)^n-1))/4` -/
def P2938455494781177894.Spec : Prop :=
  ∀ n, P2938455494781177894.a n = (A195042 n : ℚ)

end A195042

/-! ## A195042.P11128533419620803873

`∑[eq[n, n*dr(n²)]]`
-/

namespace A195042.P11128533419620803873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (n ^ 2 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195042.P11128533419620803873

namespace A195042

/-- `∑[eq[n, n*dr(n²)]]` -/
def P11128533419620803873.Spec : Prop :=
  ∀ n, (P11128533419620803873.a n : ℤ) = A195042 n

end A195042

/-! ## A195042.P14903743679613415584

`∑[a(n-2)+9]` with `a(0)=0, a(1)=1, a(2)=8`
-/

namespace A195042.P14903743679613415584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 8] fun n f1 =>
  f1 (n - 2) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195042.P14903743679613415584

namespace A195042

/-- `∑[a(n-2)+9]` -/
def P14903743679613415584.Spec : Prop :=
  ∀ n, (P14903743679613415584.a n : ℤ) = A195042 n

end A195042

/-! ## A195042.P6801386997297574255

`∑[lt[n*dr(n²), n+1]]`
-/

namespace A195042.P6801386997297574255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (n ^ 2 : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195042.P6801386997297574255

namespace A195042

/-- `∑[lt[n*dr(n²), n+1]]` -/
def P6801386997297574255.Spec : Prop :=
  ∀ n, (P6801386997297574255.a n : ℤ) = A195042 n

end A195042

/-! ## A195042.P5618080766797543564

`∑[∑[9-a(n-1)]]` with `a(0)=0, a(1)=1, a(2)=7`
-/

namespace A195042.P5618080766797543564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 7] fun n f2 =>
  9 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195042.P5618080766797543564

namespace A195042

/-- `∑[∑[9-a(n-1)]]` -/
def P5618080766797543564.Spec : Prop :=
  ∀ n, P5618080766797543564.a n = A195042 n

end A195042

/-! ## A195042.P2714132970373505904

`a(n-2)+9*(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A195042.P2714132970373505904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 9 * ((n : ℤ) - 1)

end

end A195042.P2714132970373505904

namespace A195042

/-- `a(n-2)+9*(n-1)` -/
def P2714132970373505904.Spec : Prop :=
  ∀ n, P2714132970373505904.a n = A195042 n

end A195042

/-! ## A195042.P12217513564074741990

`∑[eq[n+1, (n+1)^dr(n²)]]`
-/

namespace A195042.P12217513564074741990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ SequenceMachineLib.digitalRoot (n ^ 2 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195042.P12217513564074741990

namespace A195042

/-- `∑[eq[n+1, (n+1)^dr(n²)]]` -/
def P12217513564074741990.Spec : Prop :=
  ∀ n, (P12217513564074741990.a n : ℤ) = A195042 n

end A195042

/-! ## A195042.P9148861007766731647

`ceil(A195147(n)/2)`
-/

namespace A195042.P9148861007766731647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A195147 n : ℚ) / 2⌉

end

end A195042.P9148861007766731647

namespace A195042

/-- `ceil(A195147(n)/2)` -/
def P9148861007766731647.Spec : Prop :=
  ∀ n, P9148861007766731647.a n = A195042 n

end A195042

/-! ## A195042.P15444742225063301883

`floor((sqrt(A002620(n))+n)²)`
-/

namespace A195042.P15444742225063301883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (A002620 n : ℝ) + (n : ℝ)) ^ 2⌋

end

end A195042.P15444742225063301883

namespace A195042

/-- `floor((sqrt(A002620(n))+n)²)` -/
def P15444742225063301883.Spec : Prop :=
  ∀ n, P15444742225063301883.a n = A195042 n

end A195042

/-! ## A195042.P12501602543188854616

`A077221(n)+A002620(n)`
-/

namespace A195042.P12501602543188854616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 n + A002620 n

end

end A195042.P12501602543188854616

namespace A195042

/-- `A077221(n)+A002620(n)` -/
def P12501602543188854616.Spec : Prop :=
  ∀ n, P12501602543188854616.a n = A195042 n

end A195042

/-! ## A195042.P1116971773604057349

`A097066(n)+A056220(n)`
-/

namespace A195042.P1116971773604057349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097066 n + A056220 n

end

end A195042.P1116971773604057349

namespace A195042

/-- `A097066(n)+A056220(n)` -/
def P1116971773604057349.Spec : Prop :=
  ∀ n, P1116971773604057349.a n = A195042 n

end A195042

/-! ## A195042.P18425066702202770009

`A195041(n)+A007590(n)`
-/

namespace A195042.P18425066702202770009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195041 n + A007590 n

end

end A195042.P18425066702202770009

namespace A195042

/-- `A195041(n)+A007590(n)` -/
def P18425066702202770009.Spec : Prop :=
  ∀ n, P18425066702202770009.a n = A195042 n

end A195042

/-! ## A195042.P9026774759722639383

`A242477(n)+A032528(n)`
-/

namespace A195042.P9026774759722639383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242477 n + A032528 n

end

end A195042.P9026774759722639383

namespace A195042

/-- `A242477(n)+A032528(n)` -/
def P9026774759722639383.Spec : Prop :=
  ∀ n, P9026774759722639383.a n = A195042 n

end A195042

/-! ## A195042.P6069235836565652007

`A032526(n)-A004652(n)`
-/

namespace A195042.P6069235836565652007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032526 n - A004652 n

end

end A195042.P6069235836565652007

namespace A195042

/-- `A032526(n)-A004652(n)` -/
def P6069235836565652007.Spec : Prop :=
  ∀ n, P6069235836565652007.a n = A195042 n

end A195042

/-! ## A195042.P2540634878747794139

`A195142(n)-A002620(n)`
-/

namespace A195042.P2540634878747794139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195142 n - A002620 n

end

end A195042.P2540634878747794139

namespace A195042

/-- `A195142(n)-A002620(n)` -/
def P2540634878747794139.Spec : Prop :=
  ∀ n, P2540634878747794139.a n = A195042 n

end A195042

/-! ## A195042.P3644234152670985322

`A195043(n)-A007590(n)`
-/

namespace A195042.P3644234152670985322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195043 n - A007590 n

end

end A195042.P3644234152670985322

namespace A195042

/-- `A195043(n)-A007590(n)` -/
def P3644234152670985322.Spec : Prop :=
  ∀ n, P3644234152670985322.a n = A195042 n

end A195042

/-! ## A195042.P12225130133442944915

`A195143(n)-A242477(n)`
-/

namespace A195042.P12225130133442944915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195143 n - A242477 n

end

end A195042.P12225130133442944915

namespace A195042

/-- `A195143(n)-A242477(n)` -/
def P12225130133442944915.Spec : Prop :=
  ∀ n, P12225130133442944915.a n = A195042 n

end A195042

/-! ## A195042.P9286502763547026022

`A319127(n+1)+A077043(n)`
-/

namespace A195042.P9286502763547026022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319127 (n + 1) + A077043 n

end

end A195042.P9286502763547026022

namespace A195042

/-- `A319127(n+1)+A077043(n)` -/
def P9286502763547026022.Spec : Prop :=
  ∀ n, P9286502763547026022.a n = A195042 n

end A195042

/-! ## A195042.P8926980645336834665

`A102214(n)-A007310(n+1)`
-/

namespace A195042.P8926980645336834665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102214 n - A007310 (n + 1)

end

end A195042.P8926980645336834665

namespace A195042

/-- `A102214(n)-A007310(n+1)` -/
def P8926980645336834665.Spec : Prop :=
  ∀ n, P8926980645336834665.a n = A195042 n

end A195042

/-! ## A195042.P6014981124325521177

`A121471(n+1)-A080513(n)`
-/

namespace A195042.P6014981124325521177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121471 (n + 1) - A080513 n

end

end A195042.P6014981124325521177

namespace A195042

/-- `A121471(n+1)-A080513(n)` -/
def P6014981124325521177.Spec : Prop :=
  ∀ n, P6014981124325521177.a n = A195042 n

end A195042

/-!
# A195043: Concentric 11-gonal numbers.

The programs for A195043, the canonical program `A195043.P13870490661488651515` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195043 has offset 0).

The definition of A195043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195043.P13870490661488651515

`11*n²/4+7*((-1)^n-1)/8`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195043

/-- `11*n²/4+7*((-1)^n-1)/8` -/
def P13870490661488651515.Spec : Prop :=
  ∀ n, P13870490661488651515.a n = (A195043 n : ℚ)

end A195043

/-! ## A195043.P13079565740176605907

`∑[a(n-2)+11]` with `a(0)=0, a(1)=1, a(2)=10`
-/

namespace A195043.P13079565740176605907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 10] fun n f1 =>
  f1 (n - 2) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195043.P13079565740176605907

namespace A195043

/-- `∑[a(n-2)+11]` -/
def P13079565740176605907.Spec : Prop :=
  ∀ n, (P13079565740176605907.a n : ℤ) = A195043 n

end A195043

/-! ## A195043.P5536896882249608950

`∑[∑[floor(a(n-2))]]` with `a(0)=0, a(1)=1, a(2)=9, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A195043.P5536896882249608950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 9, 2] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195043.P5536896882249608950

namespace A195043

/-- `∑[∑[floor(a(n-2))]]` -/
def P5536896882249608950.Spec : Prop :=
  ∀ n, (P5536896882249608950.a n : ℤ) = A195043 n

end A195043

/-! ## A195043.P7324262008406185711

`ceil(A195149(n)/2)`
-/

namespace A195043.P7324262008406185711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A195149 n : ℚ) / 2⌉

end

end A195043.P7324262008406185711

namespace A195043

/-- `ceil(A195149(n)/2)` -/
def P7324262008406185711.Spec : Prop :=
  ∀ n, P7324262008406185711.a n = A195043 n

end A195043

/-! ## A195043.P12924359268333450561

`(A195147(n)+n²)/2`
-/

namespace A195043.P12924359268333450561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195147 n + (n ^ 2 : ℤ) : ℚ) / 2

end

end A195043.P12924359268333450561

namespace A195043

/-- `(A195147(n)+n²)/2` -/
def P12924359268333450561.Spec : Prop :=
  ∀ n, P12924359268333450561.a n = (A195043 n : ℚ)

end A195043

/-! ## A195043.P18218607546393684314

`(A195047(n)+A032527(n))/2`
-/

namespace A195043.P18218607546393684314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195047 n + A032527 n : ℚ) / 2

end

end A195043.P18218607546393684314

namespace A195043

/-- `(A195047(n)+A032527(n))/2` -/
def P18218607546393684314.Spec : Prop :=
  ∀ n, P18218607546393684314.a n = (A195043 n : ℚ)

end A195043

/-! ## A195043.P12403471063212647169

`(A195146(n)+A032528(n))/2`
-/

namespace A195043.P12403471063212647169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195146 n + A032528 n : ℚ) / 2

end

end A195043.P12403471063212647169

namespace A195043

/-- `(A195146(n)+A032528(n))/2` -/
def P12403471063212647169.Spec : Prop :=
  ∀ n, P12403471063212647169.a n = (A195043 n : ℚ)

end A195043

/-! ## A195043.P4466511715775673929

`(A195145(n)+A077221(n))/2`
-/

namespace A195043.P4466511715775673929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195145 n + A077221 n : ℚ) / 2

end

end A195043.P4466511715775673929

namespace A195043

/-- `(A195145(n)+A077221(n))/2` -/
def P4466511715775673929.Spec : Prop :=
  ∀ n, P4466511715775673929.a n = (A195043 n : ℚ)

end A195043

/-! ## A195043.P7002312784190379128

`(A195143(n)+A195142(n))/2`
-/

namespace A195043.P7002312784190379128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195143 n + A195142 n : ℚ) / 2

end

end A195043.P7002312784190379128

namespace A195043

/-- `(A195143(n)+A195142(n))/2` -/
def P7002312784190379128.Spec : Prop :=
  ∀ n, P7002312784190379128.a n = (A195043 n : ℚ)

end A195043

/-! ## A195043.P14378950932173608124

`∪[A069173(n+1), A033584(n)]`
-/

namespace A195043.P14378950932173608124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033584 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195043.P14378950932173608124

namespace A195043

/-- `∪[A069173(n+1), A033584(n)]` -/
def P14378950932173608124.Spec : Prop :=
  ∀ n, (P14378950932173608124.a n : ℤ) = A195043 n

end A195043

/-! ## A195043.P6447572831435586941

`(A069125(n+1)-A175885(n+1))/2`
-/

namespace A195043.P6447572831435586941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069125 (n + 1) - A175885 (n + 1) : ℚ) / 2

end

end A195043.P6447572831435586941

namespace A195043

/-- `(A069125(n+1)-A175885(n+1))/2` -/
def P6447572831435586941.Spec : Prop :=
  ∀ n, P6447572831435586941.a n = (A195043 n : ℚ)

end A195043

/-! ## A195043.P9463358447975677631

`∑[(11*n)%lt[2, A020639(A313908(n))]]`
-/

namespace A195043.P9463358447975677631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A313908 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n % SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195043.P9463358447975677631

namespace A195043

/-- `∑[(11*n)%lt[2, A020639(A313908(n))]]` -/
def P9463358447975677631.Spec : Prop :=
  ∀ n, (P9463358447975677631.a n : ℤ) = A195043 n

end A195043

/-! ## A195043.P10170609647830532077

`A112651(A061925(n))`
-/

namespace A195043.P10170609647830532077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112651 (A061925 n).toNat

end

end A195043.P10170609647830532077

namespace A195043

/-- `A112651(A061925(n))` -/
def P10170609647830532077.Spec : Prop :=
  ∀ n, P10170609647830532077.a n = A195043 n

end A195043

/-! ## A195043.P10379003806385402315

`A112651(A261243(n+2))`
-/

namespace A195043.P10379003806385402315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112651 (A261243 (n + 2)).toNat

end

end A195043.P10379003806385402315

namespace A195043

/-- `A112651(A261243(n+2))` -/
def P10379003806385402315.Spec : Prop :=
  ∀ n, P10379003806385402315.a n = A195043 n

end A195043

/-! ## A195043.P8593145452713986272

`A112654(A084684(n))`
-/

namespace A195043.P8593145452713986272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112654 (A084684 n).toNat

end

end A195043.P8593145452713986272

namespace A195043

/-- `A112654(A084684(n))` -/
def P8593145452713986272.Spec : Prop :=
  ∀ n, P8593145452713986272.a n = A195043 n

end A195043

/-!
# A195044: Complement of A196224.

The programs for A195044, there is no canonical definition to state claims against.
-/

/-! ## A195044.P1641607890483542213

`lt[0, A261915(n²+n)]`
-/

namespace A195044.P1641607890483542213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261915 (n ^ 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A195044.P1641607890483542213

/-! ## A195044.P3541995870699062919

`lt[1, A005875(n²+n)]`
-/

namespace A195044.P3541995870699062919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (n ^ 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A195044.P3541995870699062919

/-! ## A195044.P9418146946167246428

`lt[1, A080917(n²+n)]`
-/

namespace A195044.P9418146946167246428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080917 (n ^ 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A195044.P9418146946167246428

/-! ## A195044.P1976176503734401925

`lt[1, A138202(n²+n)]`
-/

namespace A195044.P1976176503734401925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138202 (n ^ 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A195044.P1976176503734401925

/-! ## A195044.P7405065547323391297

`lt[1, A213384(n²+n)]`
-/

namespace A195044.P7405065547323391297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 (n ^ 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A195044.P7405065547323391297

/-! ## A195044.P11492039048331163915

`lt[1, A014455(C(n+1, 2))]`
-/

namespace A195044.P11492039048331163915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (Nat.choose (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A195044.P11492039048331163915

/-! ## A195044.P6039442571221234960

`comp[A196224(n+1)-1]+1`
-/

namespace A195044.P6039442571221234960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196224 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A195044.P6039442571221234960

/-! ## A195044.P14442476500498733631

`lt[2, abs(A213384(n*(n+1)))]`
-/

namespace A195044.P14442476500498733631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A213384 (n * (n + 1))|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A195044.P14442476500498733631

/-! ## A195044.P8631625457926803247

`lt[1, A246631(2*C(n+1, 2))]`
-/

namespace A195044.P8631625457926803247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 (2 * Nat.choose (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A195044.P8631625457926803247

/-! ## A195044.P15099471735871513085

`lt[1, A072070((n+1)*2*n)]`
-/

namespace A195044.P15099471735871513085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072070 ((n + 1) * (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A195044.P15099471735871513085

/-!
# A195045: Concentric 13-gonal numbers.

The programs for A195045, the canonical program `A195045.P2663025183988270210` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195045 has offset 0).

The definition of A195045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195045.P2663025183988270210

`13*n²/4+9*((-1)^n-1)/8`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195045

/-- `13*n²/4+9*((-1)^n-1)/8` -/
def P2663025183988270210.Spec : Prop :=
  ∀ n, P2663025183988270210.a n = (A195045 n : ℚ)

end A195045

/-! ## A195045.P2383342581699729750

`∑[a(n-2)+13]` with `a(0)=0, a(1)=1, a(2)=12`
-/

namespace A195045.P2383342581699729750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 12] fun n f1 =>
  f1 (n - 2) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195045.P2383342581699729750

namespace A195045

/-- `∑[a(n-2)+13]` -/
def P2383342581699729750.Spec : Prop :=
  ∀ n, (P2383342581699729750.a n : ℤ) = A195045 n

end A195045

/-! ## A195045.P16842311051521347369

`(A195149(n)+n²)/2`
-/

namespace A195045.P16842311051521347369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195149 n + (n ^ 2 : ℤ) : ℚ) / 2

end

end A195045.P16842311051521347369

namespace A195045

/-- `(A195149(n)+n²)/2` -/
def P16842311051521347369.Spec : Prop :=
  ∀ n, P16842311051521347369.a n = (A195045 n : ℚ)

end A195045

/-! ## A195045.P9992366540042734398

`(A195049(n)+A032527(n))/2`
-/

namespace A195045.P9992366540042734398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195049 n + A032527 n : ℚ) / 2

end

end A195045.P9992366540042734398

namespace A195045

/-- `(A195049(n)+A032527(n))/2` -/
def P9992366540042734398.Spec : Prop :=
  ∀ n, P9992366540042734398.a n = (A195045 n : ℚ)

end A195045

/-! ## A195045.P3594089369492374001

`(A195148(n)+A032528(n))/2`
-/

namespace A195045.P3594089369492374001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195148 n + A032528 n : ℚ) / 2

end

end A195045.P3594089369492374001

namespace A195045

/-- `(A195148(n)+A032528(n))/2` -/
def P3594089369492374001.Spec : Prop :=
  ∀ n, P3594089369492374001.a n = (A195045 n : ℚ)

end A195045

/-! ## A195045.P7336066896383371391

`(A195147(n)+A077221(n))/2`
-/

namespace A195045.P7336066896383371391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195147 n + A077221 n : ℚ) / 2

end

end A195045.P7336066896383371391

namespace A195045

/-- `(A195147(n)+A077221(n))/2` -/
def P7336066896383371391.Spec : Prop :=
  ∀ n, P7336066896383371391.a n = (A195045 n : ℚ)

end A195045

/-! ## A195045.P11666789761066130298

`(A069126(n+1)-A175886(n+1))/2`
-/

namespace A195045.P11666789761066130298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069126 (n + 1) - A175886 (n + 1) : ℚ) / 2

end

end A195045.P11666789761066130298

namespace A195045

/-- `(A069126(n+1)-A175886(n+1))/2` -/
def P11666789761066130298.Spec : Prop :=
  ∀ n, P11666789761066130298.a n = (A195045 n : ℚ)

end A195045

/-! ## A195045.P2170361262461370550

`A112653(A000982(n))`
-/

namespace A195045.P2170361262461370550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 (A000982 n).toNat

end

end A195045.P2170361262461370550

namespace A195045

/-- `A112653(A000982(n))` -/
def P2170361262461370550.Spec : Prop :=
  ∀ n, P2170361262461370550.a n = A195045 n

end A195045

/-! ## A195045.P1536366159072668763

`A273943(A195149(n)+n²)`
-/

namespace A195045.P1536366159072668763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A195149 n + (n ^ 2 : ℤ)).toNat

end

end A195045.P1536366159072668763

namespace A195045

/-- `A273943(A195149(n)+n²)` -/
def P1536366159072668763.Spec : Prop :=
  ∀ n, P1536366159072668763.a n = A195045 n

end A195045

/-! ## A195045.P11925622251133658274

`A112655(A077043(n))`
-/

namespace A195045.P11925622251133658274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112655 (A077043 n).toNat

end

end A195045.P11925622251133658274

namespace A195045

/-- `A112655(A077043(n))` -/
def P11925622251133658274.Spec : Prop :=
  ∀ n, P11925622251133658274.a n = A195045 n

end A195045

/-! ## A195045.P17764453520455463130

`A112653(A004525(n²))`
-/

namespace A195045.P17764453520455463130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 (A004525 (n ^ 2)).toNat

end

end A195045.P17764453520455463130

namespace A195045

/-- `A112653(A004525(n²))` -/
def P17764453520455463130.Spec : Prop :=
  ∀ n, P17764453520455463130.a n = A195045 n

end A195045

/-! ## A195045.P7093553240990561399

`A112653(A110654(n²))`
-/

namespace A195045.P7093553240990561399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 (A110654 (n ^ 2)).toNat

end

end A195045.P7093553240990561399

namespace A195045

/-- `A112653(A110654(n²))` -/
def P7093553240990561399.Spec : Prop :=
  ∀ n, P7093553240990561399.a n = A195045 n

end A195045

/-!
# A195046: Concentric 15-gonal numbers.

The programs for A195046, the canonical program `A195046.P17176576008181652290` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195046 has offset 0).

The definition of A195046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195046.P17176576008181652290

`15*n²/4+11*((-1)^n-1)/8`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195046

/-- `15*n²/4+11*((-1)^n-1)/8` -/
def P17176576008181652290.Spec : Prop :=
  ∀ n, P17176576008181652290.a n = (A195046 n : ℚ)

end A195046

/-! ## A195046.P5090891554807196982

`∑[a(n-2)+15]` with `a(0)=0, a(1)=1, a(2)=14`
-/

namespace A195046.P5090891554807196982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 14] fun n f1 =>
  f1 (n - 2) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195046.P5090891554807196982

namespace A195046

/-- `∑[a(n-2)+15]` -/
def P5090891554807196982.Spec : Prop :=
  ∀ n, (P5090891554807196982.a n : ℤ) = A195046 n

end A195046

/-! ## A195046.P7605934740156650458

`(A195158(n)+A032528(n))/2`
-/

namespace A195046.P7605934740156650458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195158 n + A032528 n : ℚ) / 2

end

end A195046.P7605934740156650458

namespace A195046

/-- `(A195158(n)+A032528(n))/2` -/
def P7605934740156650458.Spec : Prop :=
  ∀ n, P7605934740156650458.a n = (A195046 n : ℚ)

end A195046

/-! ## A195046.P7735519497536037651

`(A195149(n)+A077221(n))/2`
-/

namespace A195046.P7735519497536037651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195149 n + A077221 n : ℚ) / 2

end

end A195046.P7735519497536037651

namespace A195046

/-- `(A195149(n)+A077221(n))/2` -/
def P7735519497536037651.Spec : Prop :=
  ∀ n, P7735519497536037651.a n = (A195046 n : ℚ)

end A195046

/-! ## A195046.P16320859568469801918

`(A195047(n)+A195045(n))/2`
-/

namespace A195046.P16320859568469801918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195047 n + A195045 n : ℚ) / 2

end

end A195046.P16320859568469801918

namespace A195046

/-- `(A195047(n)+A195045(n))/2` -/
def P16320859568469801918.Spec : Prop :=
  ∀ n, P16320859568469801918.a n = (A195046 n : ℚ)

end A195046

/-! ## A195046.P14587047041266738170

`(A195048(n)+A195043(n))/2`
-/

namespace A195046.P14587047041266738170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195048 n + A195043 n : ℚ) / 2

end

end A195046.P14587047041266738170

namespace A195046

/-- `(A195048(n)+A195043(n))/2` -/
def P14587047041266738170.Spec : Prop :=
  ∀ n, P14587047041266738170.a n = (A195046 n : ℚ)

end A195046

/-! ## A195046.P3095172093105452659

`(A195058(n)+A195041(n))/2`
-/

namespace A195046.P3095172093105452659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195058 n + A195041 n : ℚ) / 2

end

end A195046.P3095172093105452659

namespace A195046

/-- `(A195058(n)+A195041(n))/2` -/
def P3095172093105452659.Spec : Prop :=
  ∀ n, P3095172093105452659.a n = (A195046 n : ℚ)

end A195046

/-! ## A195046.P4061857104387607978

`(A195147(n)+A195143(n))/2`
-/

namespace A195046.P4061857104387607978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195147 n + A195143 n : ℚ) / 2

end

end A195046.P4061857104387607978

namespace A195046

/-- `(A195147(n)+A195143(n))/2` -/
def P4061857104387607978.Spec : Prop :=
  ∀ n, P4061857104387607978.a n = (A195046 n : ℚ)

end A195046

/-! ## A195046.P11872322835239242713

`(A195148(n)+A195142(n))/2`
-/

namespace A195046.P11872322835239242713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195148 n + A195142 n : ℚ) / 2

end

end A195046.P11872322835239242713

namespace A195046

/-- `(A195148(n)+A195142(n))/2` -/
def P11872322835239242713.Spec : Prop :=
  ∀ n, P11872322835239242713.a n = (A195046 n : ℚ)

end A195046

/-! ## A195046.P1148596424285422824

`∪[A389799(n+1), A064761(n)]`
-/

namespace A195046.P1148596424285422824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064761 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195046.P1148596424285422824

namespace A195046

/-- `∪[A389799(n+1), A064761(n)]` -/
def P1148596424285422824.Spec : Prop :=
  ∀ n, (P1148596424285422824.a n : ℤ) = A195046 n

end A195046

/-! ## A195046.P13643446865670822539

`abs(∑[A047215(A047225(n+1))]-n)`
-/

namespace A195046.P13643446865670822539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 (A047225 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A195046.P13643446865670822539

namespace A195046

/-- `abs(∑[A047215(A047225(n+1))]-n)` -/
def P13643446865670822539.Spec : Prop :=
  ∀ n, P13643446865670822539.a n = A195046 n

end A195046

/-! ## A195046.P6524881663568333139

`A267711(A084684(n))`
-/

namespace A195046.P6524881663568333139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267711 (A084684 n).toNat

end

end A195046.P6524881663568333139

namespace A195046

/-- `A267711(A084684(n))` -/
def P6524881663568333139.Spec : Prop :=
  ∀ n, P6524881663568333139.a n = A195046 n

end A195046

/-! ## A195046.P14066813821072081461

`A151972(n²+1)`
-/

namespace A195046.P14066813821072081461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151972 (n ^ 2 + 1)

end

end A195046.P14066813821072081461

namespace A195046

/-- `A151972(n²+1)` -/
def P14066813821072081461.Spec : Prop :=
  ∀ n, P14066813821072081461.a n = A195046 n

end A195046

/-!
# A195047: Concentric 17-gonal numbers.

The programs for A195047, the canonical program `A195047.P7507849109192638865` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195047 has offset 0).

The definition of A195047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195047.P14448418639621654404

`(34*n²+13*(-1)^n-13)/8`
-/

namespace A195047.P14448418639621654404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((34 * n ^ 2 : ℤ) + 13 * (-1) ^ n - 13 : ℚ) / 8

end

end A195047.P14448418639621654404

namespace A195047

/-- `(34*n²+13*(-1)^n-13)/8` -/
def P14448418639621654404.Spec : Prop :=
  ∀ n, P14448418639621654404.a n = (A195047 n : ℚ)

end A195047

/-! ## A195047.P7507849109192638865

`A151978(A061925(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A195047

/-- `A151978(A061925(n))` -/
def P7507849109192638865.Spec : Prop :=
  ∀ n, P7507849109192638865.a n = A195047 n

theorem P7507849109192638865.correct : P7507849109192638865.Spec := by
  intro n
  simp only [A195047]

end A195047

/-! ## A195047.P2981640269420203744

`∑[a(n-2)+17]` with `a(0)=0, a(1)=1, a(2)=16`
-/

namespace A195047.P2981640269420203744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 16] fun n f1 =>
  f1 (n - 2) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195047.P2981640269420203744

namespace A195047

/-- `∑[a(n-2)+17]` -/
def P2981640269420203744.Spec : Prop :=
  ∀ n, (P2981640269420203744.a n : ℤ) = A195047 n

end A195047

/-! ## A195047.P3990822996390766246

`A195147(n)-floor((n/2)²)`
-/

namespace A195047.P3990822996390766246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195147 n - ⌊((n : ℚ) / 2) ^ 2⌋

end

end A195047.P3990822996390766246

namespace A195047

/-- `A195147(n)-floor((n/2)²)` -/
def P3990822996390766246.Spec : Prop :=
  ∀ n, P3990822996390766246.a n = A195047 n

end A195047

/-! ## A195047.P12956449004832909634

`A195145(n)+floor(3*(n/2)²)`
-/

namespace A195047.P12956449004832909634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195145 n + ⌊3 * ((n : ℚ) / 2) ^ 2⌋

end

end A195047.P12956449004832909634

namespace A195047

/-- `A195145(n)+floor(3*(n/2)²)` -/
def P12956449004832909634.Spec : Prop :=
  ∀ n, P12956449004832909634.a n = A195047 n

end A195047

/-! ## A195047.P12025225406957095447

`∑[A151978(n+1)]-floor(n/2)`
-/

namespace A195047.P12025225406957095447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊(n : ℚ) / 2⌋

end

end A195047.P12025225406957095447

namespace A195047

/-- `∑[A151978(n+1)]-floor(n/2)` -/
def P12025225406957095447.Spec : Prop :=
  ∀ n, P12025225406957095447.a n = A195047 n

end A195047

/-! ## A195047.P6170065770507568298

`A195146(n)+A002620(n)`
-/

namespace A195047.P6170065770507568298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195146 n + A002620 n

end

end A195047.P6170065770507568298

namespace A195047

/-- `A195146(n)+A002620(n)` -/
def P6170065770507568298.Spec : Prop :=
  ∀ n, P6170065770507568298.a n = A195047 n

end A195047

/-! ## A195047.P9262102039028973873

`A195046(n)+A007590(n)`
-/

namespace A195047.P9262102039028973873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195046 n + A007590 n

end

end A195047.P9262102039028973873

namespace A195047

/-- `A195046(n)+A007590(n)` -/
def P9262102039028973873.Spec : Prop :=
  ∀ n, P9262102039028973873.a n = A195047 n

end A195047

/-! ## A195047.P1595525678019674235

`A242477(n)+A195145(n)`
-/

namespace A195047.P1595525678019674235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242477 n + A195145 n

end

end A195047.P1595525678019674235

namespace A195047

/-- `A242477(n)+A195145(n)` -/
def P1595525678019674235.Spec : Prop :=
  ∀ n, P1595525678019674235.a n = A195047 n

end A195047

/-! ## A195047.P12437832714074563544

`A195048(n)-A007590(n)`
-/

namespace A195047.P12437832714074563544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195048 n - A007590 n

end

end A195047.P12437832714074563544

namespace A195047

/-- `A195048(n)-A007590(n)` -/
def P12437832714074563544.Spec : Prop :=
  ∀ n, P12437832714074563544.a n = A195047 n

end A195047

/-! ## A195047.P16242186622068977502

`A195148(n)-A242477(n)`
-/

namespace A195047.P16242186622068977502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195148 n - A242477 n

end

end A195047.P16242186622068977502

namespace A195047

/-- `A195148(n)-A242477(n)` -/
def P16242186622068977502.Spec : Prop :=
  ∀ n, P16242186622068977502.a n = A195047 n

end A195047

/-! ## A195047.P18033824115242465941

`A319127(n+1)+A195043(n)`
-/

namespace A195047.P18033824115242465941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319127 (n + 1) + A195043 n

end

end A195047.P18033824115242465941

namespace A195047

/-- `A319127(n+1)+A195043(n)` -/
def P18033824115242465941.Spec : Prop :=
  ∀ n, P18033824115242465941.a n = A195047 n

end A195047

/-! ## A195047.P17882321629083200257

`A195058(n)-A319127(n+1)`
-/

namespace A195047.P17882321629083200257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195058 n - A319127 (n + 1)

end

end A195047.P17882321629083200257

namespace A195047

/-- `A195058(n)-A319127(n+1)` -/
def P17882321629083200257.Spec : Prop :=
  ∀ n, P17882321629083200257.a n = A195047 n

end A195047

/-! ## A195047.P1518056233787731494

`A195046(n)+2*A002620(n)`
-/

namespace A195047.P1518056233787731494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195046 n + 2 * A002620 n

end

end A195047.P1518056233787731494

namespace A195047

/-- `A195046(n)+2*A002620(n)` -/
def P1518056233787731494.Spec : Prop :=
  ∀ n, P1518056233787731494.a n = A195047 n

end A195047

/-! ## A195047.P1857193242976008512

`A195045(n)+2*A007590(n)`
-/

namespace A195047.P1857193242976008512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195045 n + 2 * A007590 n

end

end A195047.P1857193242976008512

namespace A195047

/-- `A195045(n)+2*A007590(n)` -/
def P1857193242976008512.Spec : Prop :=
  ∀ n, P1857193242976008512.a n = A195047 n

end A195047

/-! ## A195047.P2210893064970906187

`A195048(n)-2*A002620(n)`
-/

namespace A195047.P2210893064970906187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195048 n - 2 * A002620 n

end

end A195047.P2210893064970906187

namespace A195047

/-- `A195048(n)-2*A002620(n)` -/
def P2210893064970906187.Spec : Prop :=
  ∀ n, P2210893064970906187.a n = A195047 n

end A195047

/-! ## A195047.P14448312070491875183

`A195049(n)-2*A007590(n)`
-/

namespace A195047.P14448312070491875183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195049 n - 2 * A007590 n

end

end A195047.P14448312070491875183

namespace A195047

/-- `A195049(n)-2*A007590(n)` -/
def P14448312070491875183.Spec : Prop :=
  ∀ n, P14448312070491875183.a n = A195047 n

end A195047

/-! ## A195047.P3896085549621662452

`A195146(n)+A007590(n)/2`
-/

namespace A195047.P3896085549621662452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195146 n : ℚ) + (A007590 n : ℚ) / 2

end

end A195047.P3896085549621662452

namespace A195047

/-- `A195146(n)+A007590(n)/2` -/
def P3896085549621662452.Spec : Prop :=
  ∀ n, P3896085549621662452.a n = (A195047 n : ℚ)

end A195047

/-! ## A195047.P16364437912566028433

`2*A195043(n)-A032527(n)`
-/

namespace A195047.P16364437912566028433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195043 n - A032527 n

end

end A195047.P16364437912566028433

namespace A195047

/-- `2*A195043(n)-A032527(n)` -/
def P16364437912566028433.Spec : Prop :=
  ∀ n, P16364437912566028433.a n = A195047 n

end A195047

/-! ## A195047.P6557672847652315739

`2*A195046(n)-A195045(n)`
-/

namespace A195047.P6557672847652315739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195046 n - A195045 n

end

end A195047.P6557672847652315739

namespace A195047

/-- `2*A195046(n)-A195045(n)` -/
def P6557672847652315739.Spec : Prop :=
  ∀ n, P6557672847652315739.a n = A195047 n

end A195047

/-!
# A195048: Concentric 19-gonal numbers.

The programs for A195048, the canonical program `A195048.P6514588705709922323` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195048 has offset 0).

The definition of A195048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195048.P6514588705709922323

`19/4*n²+15/8*((-1)^n-1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195048

/-- `19/4*n²+15/8*((-1)^n-1)` -/
def P6514588705709922323.Spec : Prop :=
  ∀ n, P6514588705709922323.a n = (A195048 n : ℚ)

end A195048

/-! ## A195048.P8057505821796642127

`∑[a(n-2)+19]` with `a(0)=0, a(1)=1, a(2)=18`
-/

namespace A195048.P8057505821796642127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 18] fun n f1 =>
  f1 (n - 2) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195048.P8057505821796642127

namespace A195048

/-- `∑[a(n-2)+19]` -/
def P8057505821796642127.Spec : Prop :=
  ∀ n, (P8057505821796642127.a n : ℤ) = A195048 n

end A195048

/-! ## A195048.P13329904335016664889

`abs(A002620(n)-A195148(n))`
-/

namespace A195048.P13329904335016664889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002620 n - A195148 n|

end

end A195048.P13329904335016664889

namespace A195048

/-- `abs(A002620(n)-A195148(n))` -/
def P13329904335016664889.Spec : Prop :=
  ∀ n, P13329904335016664889.a n = A195048 n

end A195048

/-! ## A195048.P13654995623884549300

`(A195049(n)+A195047(n))/2`
-/

namespace A195048.P13654995623884549300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195049 n + A195047 n : ℚ) / 2

end

end A195048.P13654995623884549300

namespace A195048

/-- `(A195049(n)+A195047(n))/2` -/
def P13654995623884549300.Spec : Prop :=
  ∀ n, P13654995623884549300.a n = (A195048 n : ℚ)

end A195048

/-! ## A195048.P784207299958056220

`∑[A151978(n+1)+A004526(A004275(n))]`
-/

namespace A195048.P784207299958056220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151978 (n + 1) + A004526 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195048.P784207299958056220

namespace A195048

/-- `∑[A151978(n+1)+A004526(A004275(n))]` -/
def P784207299958056220.Spec : Prop :=
  ∀ n, P784207299958056220.a n = A195048 n

end A195048

/-! ## A195048.P17141654481103300929

`A151979(A061925(n))`
-/

namespace A195048.P17141654481103300929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151979 (A061925 n).toNat

end

end A195048.P17141654481103300929

namespace A195048

/-- `A151979(A061925(n))` -/
def P17141654481103300929.Spec : Prop :=
  ∀ n, P17141654481103300929.a n = A195048 n

end A195048

/-! ## A195048.P15866214977017091653

`A151979(A261243(n+2))`
-/

namespace A195048.P15866214977017091653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151979 (A261243 (n + 2)).toNat

end

end A195048.P15866214977017091653

namespace A195048

/-- `A151979(A261243(n+2))` -/
def P15866214977017091653.Spec : Prop :=
  ∀ n, P15866214977017091653.a n = A195048 n

end A195048

/-!
# A195049: Concentric 21-gonal numbers.

The programs for A195049, the canonical program `A195049.P10653448840012997701` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195049 has offset 0).

The definition of A195049 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195049.P10653448840012997701

`21*n²/4+17*((-1)^n-1)/8`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195049

/-- `21*n²/4+17*((-1)^n-1)/8` -/
def P10653448840012997701.Spec : Prop :=
  ∀ n, P10653448840012997701.a n = (A195049 n : ℚ)

end A195049

/-! ## A195049.P6259887474198910796

`∑[∑[floor(a(n-2))]]` with `a(0)=0, a(1)=1, a(2)=19, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A195049.P6259887474198910796
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 19, 2] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195049.P6259887474198910796

namespace A195049

/-- `∑[∑[floor(a(n-2))]]` -/
def P6259887474198910796.Spec : Prop :=
  ∀ n, (P6259887474198910796.a n : ℤ) = A195049 n

end A195049

/-! ## A195049.P6371615216414417068

`floor(3*A195145(n)/2)`
-/

namespace A195049.P6371615216414417068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A195145 n : ℚ) / 2)⌋

end

end A195049.P6371615216414417068

namespace A195049

/-- `floor(3*A195145(n)/2)` -/
def P6371615216414417068.Spec : Prop :=
  ∀ n, P6371615216414417068.a n = A195049 n

end A195049

/-! ## A195049.P5564733138893275084

`∑[A004273(n)+17*floor(n/2)]`
-/

namespace A195049.P5564733138893275084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + 17 * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195049.P5564733138893275084

namespace A195049

/-- `∑[A004273(n)+17*floor(n/2)]` -/
def P5564733138893275084.Spec : Prop :=
  ∀ n, P5564733138893275084.a n = A195049 n

end A195049

/-! ## A195049.P12598218716912558879

`∑[a(n-1)+A010170(n)+1]` with `a(0)=0, a(1)=1`
-/

namespace A195049.P12598218716912558879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (A010170 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195049.P12598218716912558879

namespace A195049

/-- `∑[a(n-1)+A010170(n)+1]` -/
def P12598218716912558879.Spec : Prop :=
  ∀ n, P12598218716912558879.a n = A195049 n

end A195049

/-! ## A195049.P15808800958126247338

`abs(A002620(n)-A195149(n))`
-/

namespace A195049.P15808800958126247338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002620 n - A195149 n|

end

end A195049.P15808800958126247338

namespace A195049

/-- `abs(A002620(n)-A195149(n))` -/
def P15808800958126247338.Spec : Prop :=
  ∀ n, P15808800958126247338.a n = A195049 n

end A195049

/-! ## A195049.P9267870107520718404

`abs(A007590(n)-A195058(n))`
-/

namespace A195049.P9267870107520718404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007590 n - A195058 n|

end

end A195049.P9267870107520718404

namespace A195049

/-- `abs(A007590(n)-A195058(n))` -/
def P9267870107520718404.Spec : Prop :=
  ∀ n, P9267870107520718404.a n = A195049 n

end A195049

/-! ## A195049.P2521256102900065441

`(A195058(n)+A195048(n))/2`
-/

namespace A195049.P2521256102900065441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195058 n + A195048 n : ℚ) / 2

end

end A195049.P2521256102900065441

namespace A195049

/-- `(A195058(n)+A195048(n))/2` -/
def P2521256102900065441.Spec : Prop :=
  ∀ n, P2521256102900065441.a n = (A195049 n : ℚ)

end A195049

/-! ## A195049.P13639288163895037240

`(A195149(n)+A195148(n))/2`
-/

namespace A195049.P13639288163895037240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195149 n + A195148 n : ℚ) / 2

end

end A195049.P13639288163895037240

namespace A195049

/-- `(A195149(n)+A195148(n))/2` -/
def P13639288163895037240.Spec : Prop :=
  ∀ n, P13639288163895037240.a n = (A195049 n : ℚ)

end A195049

/-! ## A195049.P2575042098403482418

`(A195148(n)+A002620(n))%A270693(n)`
-/

namespace A195049.P2575042098403482418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195148 n + A002620 n) (A270693 n)

end

end A195049.P2575042098403482418

namespace A195049

/-- `(A195148(n)+A002620(n))%A270693(n)` -/
def P2575042098403482418.Spec : Prop :=
  ∀ n, P2575042098403482418.a n = A195049 n

end A195049

/-! ## A195049.P3543716748125811521

`A151971(n²+1)`
-/

namespace A195049.P3543716748125811521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151971 (n ^ 2 + 1)

end

end A195049.P3543716748125811521

namespace A195049

/-- `A151971(n²+1)` -/
def P3543716748125811521.Spec : Prop :=
  ∀ n, P3543716748125811521.a n = A195049 n

end A195049

/-!
# A195050: Square array T(n,k) read by antidiagonals in which column k lists the number of divisors of n that are divisible by k.

The programs for A195050, there is no canonical definition to state claims against.
-/

/-! ## A195050.P10526302255768335090

`A069157(A171233(n+1))`
-/

namespace A195050.P10526302255768335090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A171233 (n + 1)).toNat

end

end A195050.P10526302255768335090

/-! ## A195050.P14248474317522598102

`A130209(A286157(n+1))`
-/

namespace A195050.P14248474317522598102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130209 (A286157 (n + 1)).toNat

end

end A195050.P14248474317522598102

/-! ## A195050.P13158555974907262134

`A299480(2*A171233(n+1))`
-/

namespace A195050.P13158555974907262134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (2 * A171233 (n + 1)).toNat

end

end A195050.P13158555974907262134

/-! ## A195050.P12329994685028671606

`A083910(5*A171233(n+1))`
-/

namespace A195050.P12329994685028671606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083910 (5 * A171233 (n + 1)).toNat

end

end A195050.P12329994685028671606

/-! ## A195050.P2401640269795748294

`A034178(22*A171233(n+1))`
-/

namespace A195050.P2401640269795748294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (22 * A171233 (n + 1)).toNat

end

end A195050.P2401640269795748294

/-! ## A195050.P17612086217069918946

`∑{d}[A171233(n+1), A059841(#)]`
-/

namespace A195050.P17612086217069918946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059841 d

end

end A195050.P17612086217069918946

/-! ## A195050.P4910396919082420628

`∑{d}[A171233(n+1), A000035(#+1)]`
-/

namespace A195050.P4910396919082420628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 (d + 1)

end

end A195050.P4910396919082420628

/-! ## A195050.P2254045451665850589

`A000005(A010766(n+1))*A077049(n+1)`
-/

namespace A195050.P2254045451665850589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A010766 (n + 1)).toNat * A077049 (n + 1)

end

end A195050.P2254045451665850589

/-! ## A195050.P15325181224355444435

`A000005(A072030(n+1))*A077049(n+1)`
-/

namespace A195050.P15325181224355444435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A072030 (n + 1)).toNat * A077049 (n + 1)

end

end A195050.P15325181224355444435

/-! ## A195050.P15775024547562991379

`A000005(A089913(n+1))*A077049(n+1)`
-/

namespace A195050.P15775024547562991379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A089913 (n + 1)).toNat * A077049 (n + 1)

end

end A195050.P15775024547562991379

/-!
# A195051: Number of divisors of 24*n - 1.

The programs for A195051, the canonical program `A195051.P1235634980371013783` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195051 has offset 1).

The definition of A195051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195051.P18438885235450998814

`2*A195052(n+1)`
-/

namespace A195051.P18438885235450998814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195052 (n + 1)

end

end A195051.P18438885235450998814

namespace A195051

/-- `2*A195052(n+1)` -/
def P18438885235450998814.Spec : Prop :=
  ∀ n, P18438885235450998814.a n = A195051 (n + 1)

end A195051

/-! ## A195051.P1235634980371013783

`A000005(24*(n+1)-1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A195051

/-- `A000005(24*(n+1)-1)` -/
def P1235634980371013783.Spec : Prop :=
  ∀ n, P1235634980371013783.a n = A195051 (n + 1)

theorem P1235634980371013783.correct : P1235634980371013783.Spec := by
  intro n
  simp only [A195051, Nat.add_sub_cancel]

end A195051

/-! ## A195051.P16975047292351327983

`A034867(A195052(n+1)²)`
-/

namespace A195051.P16975047292351327983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 (A195052 (n + 1) ^ 2).toNat

end

end A195051.P16975047292351327983

namespace A195051

/-- `A034867(A195052(n+1)²)` -/
def P16975047292351327983.Spec : Prop :=
  ∀ n, P16975047292351327983.a n = A195051 (n + 1)

end A195051

/-! ## A195051.P17186777786821023572

`A034867(A195052(n+1)^2)`
-/

namespace A195051.P17186777786821023572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 (A195052 (n + 1) ^ 2).toNat

end

end A195051.P17186777786821023572

namespace A195051

/-- `A034867(A195052(n+1)^2)` -/
def P17186777786821023572.Spec : Prop :=
  ∀ n, P17186777786821023572.a n = A195051 (n + 1)

end A195051

/-! ## A195051.P2494984091561936668

`A195052(ϕ²-(ϕ-n))+A195052(n+1)`
-/

namespace A195051.P2494984091561936668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195052 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat + A195052 (n + 1)

end

end A195051.P2494984091561936668

namespace A195051

/-- `A195052(ϕ²-(ϕ-n))+A195052(n+1)` -/
def P2494984091561936668.Spec : Prop :=
  ∀ n, P2494984091561936668.a n = A195051 (n + 1)

end A195051

/-! ## A195051.P17243396109628082337

`∏{e}[Δ[(A016957(n)+1)*2*n]+1, #+1]`
-/

namespace A195051.P17243396109628082337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016957 n + 1) * (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A195051.P17243396109628082337

namespace A195051

/-- `∏{e}[Δ[(A016957(n)+1)*2*n]+1, #+1]` -/
def P17243396109628082337.Spec : Prop :=
  ∀ n, (P17243396109628082337.a n : ℤ) = A195051 (n + 1)

end A195051

/-! ## A195051.P16625970667472038398

`∏{e}[Δ[A000567(2*n+1)]+3, #+1]`
-/

namespace A195051.P16625970667472038398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A195051.P16625970667472038398

namespace A195051

/-- `∏{e}[Δ[A000567(2*n+1)]+3, #+1]` -/
def P16625970667472038398.Spec : Prop :=
  ∀ n, (P16625970667472038398.a n : ℤ) = A195051 (n + 1)

end A195051

/-! ## A195051.P14398366379930157489

`∏{e}[A004770(A016777(n)+2)+2, #+1]`
-/

namespace A195051.P14398366379930157489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (A016777 n + 2).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A195051.P14398366379930157489

namespace A195051

/-- `∏{e}[A004770(A016777(n)+2)+2, #+1]` -/
def P14398366379930157489.Spec : Prop :=
  ∀ n, (P14398366379930157489.a n : ℤ) = A195051 (n + 1)

end A195051

/-! ## A195051.P15241190625758547282

`A035218(A103214(n+1)-2)`
-/

namespace A195051.P15241190625758547282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (A103214 (n + 1) - 2).toNat

end

end A195051.P15241190625758547282

namespace A195051

/-- `A035218(A103214(n+1)-2)` -/
def P15241190625758547282.Spec : Prop :=
  ∀ n, P15241190625758547282.a n = A195051 (n + 1)

end A195051

/-! ## A195051.P9154647509873562292

`∏{e}[A016957(3*n+n+3)+1, #+1]`
-/

namespace A195051.P9154647509873562292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 (3 * n + (n + 3)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A195051.P9154647509873562292

namespace A195051

/-- `∏{e}[A016957(3*n+n+3)+1, #+1]` -/
def P9154647509873562292.Spec : Prop :=
  ∀ n, (P9154647509873562292.a n : ℤ) = A195051 (n + 1)

end A195051

/-! ## A195051.P15761516475460166661

`A366441(8*(n+1))`
-/

namespace A195051.P15761516475460166661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366441 (8 * (n + 1))

end

end A195051.P15761516475460166661

namespace A195051

/-- `A366441(8*(n+1))` -/
def P15761516475460166661.Spec : Prop :=
  ∀ n, P15761516475460166661.a n = A195051 (n + 1)

end A195051

/-! ## A195051.P2504214181283660294

`A372714(8*(n+1))`
-/

namespace A195051.P2504214181283660294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372714 (8 * (n + 1))

end

end A195051.P2504214181283660294

namespace A195051

/-- `A372714(8*(n+1))` -/
def P2504214181283660294.Spec : Prop :=
  ∀ n, P2504214181283660294.a n = A195051 (n + 1)

end A195051

/-! ## A195051.P507954825350207646

`A099774(A008594(n+1))`
-/

namespace A195051.P507954825350207646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (A008594 (n + 1)).toNat

end

end A195051.P507954825350207646

namespace A195051

/-- `A099774(A008594(n+1))` -/
def P507954825350207646.Spec : Prop :=
  ∀ n, P507954825350207646.a n = A195051 (n + 1)

end A195051

/-! ## A195051.P5995830444760354085

`2*A193773(A017653(n))`
-/

namespace A195051.P5995830444760354085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193773 (A017653 n).toNat

end

end A195051.P5995830444760354085

namespace A195051

/-- `2*A193773(A017653(n))` -/
def P5995830444760354085.Spec : Prop :=
  ∀ n, P5995830444760354085.a n = A195051 (n + 1)

end A195051

/-! ## A195051.P4176498975828910833

`A099774(8*n+6+A016825(n+1))`
-/

namespace A195051.P4176498975828910833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 ((8 * n + 6 : ℤ) + A016825 (n + 1)).toNat

end

end A195051.P4176498975828910833

namespace A195051

/-- `A099774(8*n+6+A016825(n+1))` -/
def P4176498975828910833.Spec : Prop :=
  ∀ n, P4176498975828910833.a n = A195051 (n + 1)

end A195051

/-! ## A195051.P10079725896863355330

`A099774((n+1)*A372789(A100484(n+1)))`
-/

namespace A195051.P10079725896863355330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 ((n + 1 : ℤ) * A372789 (A100484 (n + 1)).toNat).toNat

end

end A195051.P10079725896863355330

namespace A195051

/-- `A099774((n+1)*A372789(A100484(n+1)))` -/
def P10079725896863355330.Spec : Prop :=
  ∀ n, P10079725896863355330.a n = A195051 (n + 1)

end A195051

/-! ## A195051.P13575564649155241100

`A359212(A008598(n+1))`
-/

namespace A195051.P13575564649155241100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359212 (A008598 (n + 1)).toNat

end

end A195051.P13575564649155241100

namespace A195051

/-- `A359212(A008598(n+1))` -/
def P13575564649155241100.Spec : Prop :=
  ∀ n, P13575564649155241100.a n = A195051 (n + 1)

end A195051

/-! ## A195051.P18267418777956038801

`A359227(A008600(n+1))`
-/

namespace A195051.P18267418777956038801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359227 (A008600 (n + 1)).toNat

end

end A195051.P18267418777956038801

namespace A195051

/-- `A359227(A008600(n+1))` -/
def P18267418777956038801.Spec : Prop :=
  ∀ n, P18267418777956038801.a n = A195051 (n + 1)

end A195051

/-! ## A195051.P8332032576266233367

`2*A125203(A239129(n+1))`
-/

namespace A195051.P8332032576266233367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125203 (A239129 (n + 1)).toNat

end

end A195051.P8332032576266233367

namespace A195051

/-- `2*A125203(A239129(n+1))` -/
def P8332032576266233367.Spec : Prop :=
  ∀ n, P8332032576266233367.a n = A195051 (n + 1)

end A195051

/-!
# A195052: Number of divisors of 24*n - 1 divided by 2.

The programs for A195052, the canonical program `A195052.P8855072573721883915` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195052 has offset 1).

The definition of A195052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195052.P8855072573721883915

`A195051(n+1)/2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A195052

/-- `A195051(n+1)/2` -/
def P8855072573721883915.Spec : Prop :=
  ∀ n, P8855072573721883915.a n = (A195052 (n + 1) : ℚ)

end A195052

/-! ## A195052.P10805203257062475363

`A000005(24*(n+1)-1)/2`
-/

namespace A195052.P10805203257062475363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (24 * (n + 1) - 1) : ℚ) / 2

end

end A195052.P10805203257062475363

namespace A195052

/-- `A000005(24*(n+1)-1)/2` -/
def P10805203257062475363.Spec : Prop :=
  ∀ n, P10805203257062475363.a n = (A195052 (n + 1) : ℚ)

end A195052

/-! ## A195052.P14289239002565268553

`val(∏{d}[24*n+23, #], 24*n+23)`
-/

namespace A195052.P14289239002565268553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ d ∈ Nat.divisors (f1 n), d) (24 * n + 23)

end

end A195052.P14289239002565268553

namespace A195052

/-- `val(∏{d}[24*n+23, #], 24*n+23)` -/
def P14289239002565268553.Spec : Prop :=
  ∀ n, (P14289239002565268553.a n : ℤ) = A195052 (n + 1)

end A195052

/-! ## A195052.P14301110810127150458

`∑{d}[1-24*(n+1), (1-#%3)²]`
-/

namespace A195052.P14301110810127150458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (24 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (1 - ((d % 3 : ℕ) : ℤ)) ^ 2

end

end A195052.P14301110810127150458

namespace A195052

/-- `∑{d}[1-24*(n+1), (1-#%3)²]` -/
def P14301110810127150458.Spec : Prop :=
  ∀ n, P14301110810127150458.a n = A195052 (n + 1)

end A195052

/-! ## A195052.P4610700060620877051

`A001222(sqrt(2)^A000005(24*n+23))`
-/

namespace A195052.P4610700060620877051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) ^ (A000005 (24 * n + 23) : ℤ))).toNat

end

end A195052.P4610700060620877051

namespace A195052

/-- `A001222(sqrt(2)^A000005(24*n+23))` -/
def P4610700060620877051.Spec : Prop :=
  ∀ n, P4610700060620877051.a n = A195052 (n + 1)

end A195052

/-! ## A195052.P17492333591272740204

`A359305(4*(n+1))`
-/

namespace A195052.P17492333591272740204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359305 (4 * (n + 1))

end

end A195052.P17492333591272740204

namespace A195052

/-- `A359305(4*(n+1))` -/
def P17492333591272740204.Spec : Prop :=
  ∀ n, P17492333591272740204.a n = A195052 (n + 1)

end A195052

/-! ## A195052.P4390907885235755912

`A078703(6*(n+1))`
-/

namespace A195052.P4390907885235755912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078703 (6 * (n + 1))

end

end A195052.P4390907885235755912

namespace A195052

/-- `A078703(6*(n+1))` -/
def P4390907885235755912.Spec : Prop :=
  ∀ n, P4390907885235755912.a n = A195052 (n + 1)

end A195052

/-! ## A195052.P11872037051927269986

`A359211(8*(n+1))`
-/

namespace A195052.P11872037051927269986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359211 (8 * (n + 1))

end

end A195052.P11872037051927269986

namespace A195052

/-- `A359211(8*(n+1))` -/
def P11872037051927269986.Spec : Prop :=
  ∀ n, P11872037051927269986.a n = A195052 (n + 1)

end A195052

/-! ## A195052.P1266489891277927805

`A359306(8*(n+1))`
-/

namespace A195052.P1266489891277927805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359306 (8 * (n + 1))

end

end A195052.P1266489891277927805

namespace A195052

/-- `A359306(8*(n+1))` -/
def P1266489891277927805.Spec : Prop :=
  ∀ n, P1266489891277927805.a n = A195052 (n + 1)

end A195052

/-! ## A195052.P7442219663461821232

`A359324(8*(n+1))`
-/

namespace A195052.P7442219663461821232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359324 (8 * (n + 1))

end

end A195052.P7442219663461821232

namespace A195052

/-- `A359324(8*(n+1))` -/
def P7442219663461821232.Spec : Prop :=
  ∀ n, P7442219663461821232.a n = A195052 (n + 1)

end A195052

/-! ## A195052.P11401855191977042813

`A193773(A017653(n))`
-/

namespace A195052.P11401855191977042813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193773 (A017653 n).toNat

end

end A195052.P11401855191977042813

namespace A195052

/-- `A193773(A017653(n))` -/
def P11401855191977042813.Spec : Prop :=
  ∀ n, P11401855191977042813.a n = A195052 (n + 1)

end A195052

/-! ## A195052.P10078061427919565

`A359289(A008594(n+1))`
-/

namespace A195052.P10078061427919565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359289 (A008594 (n + 1)).toNat

end

end A195052.P10078061427919565

namespace A195052

/-- `A359289(A008594(n+1))` -/
def P10078061427919565.Spec : Prop :=
  ∀ n, P10078061427919565.a n = A195052 (n + 1)

end A195052

/-! ## A195052.P2091059882210915280

`A359307(A016969(2*n+1)+1)`
-/

namespace A195052.P2091059882210915280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359307 (A016969 (2 * n + 1) + 1).toNat

end

end A195052.P2091059882210915280

namespace A195052

/-- `A359307(A016969(2*n+1)+1)` -/
def P2091059882210915280.Spec : Prop :=
  ∀ n, P2091059882210915280.a n = A195052 (n + 1)

end A195052

/-! ## A195052.P1325547476858203707

`A359325(A016969(2*n+1)+1)`
-/

namespace A195052.P1325547476858203707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359325 (A016969 (2 * n + 1) + 1).toNat

end

end A195052.P1325547476858203707

namespace A195052

/-- `A359325(A016969(2*n+1)+1)` -/
def P1325547476858203707.Spec : Prop :=
  ∀ n, P1325547476858203707.a n = A195052 (n + 1)

end A195052

/-! ## A195052.P18221958240935446192

`A359308(A008598(n+1))`
-/

namespace A195052.P18221958240935446192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359308 (A008598 (n + 1)).toNat

end

end A195052.P18221958240935446192

namespace A195052

/-- `A359308(A008598(n+1))` -/
def P18221958240935446192.Spec : Prop :=
  ∀ n, P18221958240935446192.a n = A195052 (n + 1)

end A195052

/-! ## A195052.P14722209610147129999

`A125203(A239129(n+1))`
-/

namespace A195052.P14722209610147129999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (A239129 (n + 1)).toNat

end

end A195052.P14722209610147129999

namespace A195052

/-- `A125203(A239129(n+1))` -/
def P14722209610147129999.Spec : Prop :=
  ∀ n, P14722209610147129999.a n = A195052 (n + 1)

end A195052

/-! ## A195052.P12831222627666688361

`A359227(A008600(n+1))/2`
-/

namespace A195052.P12831222627666688361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359227 (A008600 (n + 1)).toNat : ℚ) / 2

end

end A195052.P12831222627666688361

namespace A195052

/-- `A359227(A008600(n+1))/2` -/
def P12831222627666688361.Spec : Prop :=
  ∀ n, P12831222627666688361.a n = (A195052 (n + 1) : ℚ)

end A195052

/-! ## A195052.P2625680424392563588

`A001817(A183010(n+1))`
-/

namespace A195052.P2625680424392563588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (A183010 (n + 1)).toNat

end

end A195052.P2625680424392563588

namespace A195052

/-- `A001817(A183010(n+1))` -/
def P2625680424392563588.Spec : Prop :=
  ∀ n, P2625680424392563588.a n = A195052 (n + 1)

end A195052

/-! ## A195052.P4639083672433297523

`A001842(A004771(2*n+n+2))`
-/

namespace A195052.P4639083672433297523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A004771 (2 * n + (n + 2))).toNat

end

end A195052.P4639083672433297523

namespace A195052

/-- `A001842(A004771(2*n+n+2))` -/
def P4639083672433297523.Spec : Prop :=
  ∀ n, P4639083672433297523.a n = A195052 (n + 1)

end A195052

/-!
# A195053: Parity of the spt function, A092269.

The programs for A195053, the canonical program `A195053.P15800982933655469761` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195053 has offset 1).

The definition of A195053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5792 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195053.P17988753282118159607

`A000035(A092269(n+1))`
-/

namespace A195053.P17988753282118159607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A092269 (n + 1)).toNat

end

end A195053.P17988753282118159607

namespace A195053

/-- `A000035(A092269(n+1))` -/
def P17988753282118159607.Spec : Prop :=
  ∀ n, P17988753282118159607.a n = A195053 (n + 1)

end A195053

/-! ## A195053.P13876445364859669825

`log2(∏{d}[24*n+23, #]%3)`
-/

namespace A195053.P13876445364859669825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n + 23

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (((∏ d ∈ Nat.divisors (f1 n), d) % 3 : ℕ) : ℝ)

end

end A195053.P13876445364859669825

namespace A195053

/-- `log2(∏{d}[24*n+23, #]%3)` -/
def P13876445364859669825.Spec : Prop :=
  ∀ n, P13876445364859669825.a n = (A195053 (n + 1) : ℝ)

end A195053

/-! ## A195053.P15800982933655469761

`(∏{d}[24*n+23, #]-1)%3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195053

/-- `(∏{d}[24*n+23, #]-1)%3` -/
def P15800982933655469761.Spec : Prop :=
  ∀ n, P15800982933655469761.a n = A195053 (n + 1)

theorem P15800982933655469761.correct : P15800982933655469761.Spec := by
  intro n
  simp only [A195053, Nat.add_sub_cancel]

end A195053

/-! ## A195053.P1911291935286536975

`and(4, ∏{d}[24*n+23, #])/4`
-/

namespace A195053.P1911291935286536975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n + 23

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 4 (∏ d ∈ Nat.divisors (f1 n), d) : ℚ) / 4

end

end A195053.P1911291935286536975

namespace A195053

/-- `and(4, ∏{d}[24*n+23, #])/4` -/
def P1911291935286536975.Spec : Prop :=
  ∀ n, P1911291935286536975.a n = (A195053 (n + 1) : ℚ)

end A195053

/-! ## A195053.P10475173340968921168

`xor(1, ∏{d}[24*n+23, #])%3`
-/

namespace A195053.P10475173340968921168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∏ d ∈ Nat.divisors (f1 n), d) % 3

end

end A195053.P10475173340968921168

namespace A195053

/-- `xor(1, ∏{d}[24*n+23, #])%3` -/
def P10475173340968921168.Spec : Prop :=
  ∀ n, (P10475173340968921168.a n : ℤ) = A195053 (n + 1)

end A195053

/-! ## A195053.P12827085185422684532

`val(∏{d}[24*n+23, #], 24*n+23)%2`
-/

namespace A195053.P12827085185422684532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ d ∈ Nat.divisors (f1 n), d) (24 * n + 23) % 2

end

end A195053.P12827085185422684532

namespace A195053

/-- `val(∏{d}[24*n+23, #], 24*n+23)%2` -/
def P12827085185422684532.Spec : Prop :=
  ∀ n, (P12827085185422684532.a n : ℤ) = A195053 (n + 1)

end A195053

/-! ## A195053.P17855519550162758759

`and(1, val(∏{d}[24*n+23, #], 24*n+23))`
-/

namespace A195053.P17855519550162758759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (∏ d ∈ Nat.divisors (f1 n), d) (24 * n + 23))

end

end A195053.P17855519550162758759

namespace A195053

/-- `and(1, val(∏{d}[24*n+23, #], 24*n+23))` -/
def P17855519550162758759.Spec : Prop :=
  ∀ n, (P17855519550162758759.a n : ℤ) = A195053 (n + 1)

end A195053

/-! ## A195053.P9922231837737694860

`A053251(n+1)%2`
-/

namespace A195053.P9922231837737694860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053251 (n + 1)) 2

end

end A195053.P9922231837737694860

namespace A195053

/-- `A053251(n+1)%2` -/
def P9922231837737694860.Spec : Prop :=
  ∀ n, P9922231837737694860.a n = A195053 (n + 1)

end A195053

/-! ## A195053.P17956409434755286007

`A195052(n+1)%2`
-/

namespace A195053.P17956409434755286007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195052 (n + 1)) 2

end

end A195053.P17956409434755286007

namespace A195053

/-- `A195052(n+1)%2` -/
def P17956409434755286007.Spec : Prop :=
  ∀ n, P17956409434755286007.a n = A195053 (n + 1)

end A195053

/-! ## A195053.P7473949069049394716

`and(1, A195051(n+1)/2)`
-/

namespace A195053.P7473949069049394716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway ((A195051 (n + 1) : ℚ) / 2))

end

end A195053.P7473949069049394716

namespace A195053

/-- `and(1, A195051(n+1)/2)` -/
def P7473949069049394716.Spec : Prop :=
  ∀ n, P7473949069049394716.a n = A195053 (n + 1)

end A195053

/-! ## A195053.P14349087228937148660

`A000035(A195052(n+1))`
-/

namespace A195053.P14349087228937148660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A195052 (n + 1)).toNat

end

end A195053.P14349087228937148660

namespace A195053

/-- `A000035(A195052(n+1))` -/
def P14349087228937148660.Spec : Prop :=
  ∀ n, P14349087228937148660.a n = A195053 (n + 1)

end A195053

/-! ## A195053.P4485543335380501734

`and(A016760(n), A195052(n+1))`
-/

namespace A195053.P4485543335380501734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A195052 (n + 1))

end

end A195053.P4485543335380501734

namespace A195053

/-- `and(A016760(n), A195052(n+1))` -/
def P4485543335380501734.Spec : Prop :=
  ∀ n, P4485543335380501734.a n = A195053 (n + 1)

end A195053

/-! ## A195053.P4085003220351399138

`and(A016820(n), A195052(n+1))`
-/

namespace A195053.P4085003220351399138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A195052 (n + 1))

end

end A195053.P4085003220351399138

namespace A195053

/-- `and(A016820(n), A195052(n+1))` -/
def P4085003220351399138.Spec : Prop :=
  ∀ n, P4085003220351399138.a n = A195053 (n + 1)

end A195053

/-! ## A195053.P515975801439672620

`and(A195052(n+1), A282997(n+1))`
-/

namespace A195053.P515975801439672620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195052 (n + 1)) (A282997 (n + 1))

end

end A195053.P515975801439672620

namespace A195053

/-- `and(A195052(n+1), A282997(n+1))` -/
def P515975801439672620.Spec : Prop :=
  ∀ n, P515975801439672620.a n = A195053 (n + 1)

end A195053

/-! ## A195053.P5857278835088571022

`and(A003475(n+1), A158388(n))`
-/

namespace A195053.P5857278835088571022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003475 (n + 1)) (A158388 n)

end

end A195053.P5857278835088571022

namespace A195053

/-- `and(A003475(n+1), A158388(n))` -/
def P5857278835088571022.Spec : Prop :=
  ∀ n, P5857278835088571022.a n = A195053 (n + 1)

end A195053

/-! ## A195053.P447695485531716748

`A059618(n+1)%2`
-/

namespace A195053.P447695485531716748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059618 (n + 1)) 2

end

end A195053.P447695485531716748

namespace A195053

/-- `A059618(n+1)%2` -/
def P447695485531716748.Spec : Prop :=
  ∀ n, P447695485531716748.a n = A195053 (n + 1)

end A195053

/-! ## A195053.P5421809038979614612

`and(1, A202205(n))`
-/

namespace A195053.P5421809038979614612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A202205 n)

end

end A195053.P5421809038979614612

namespace A195053

/-- `and(1, A202205(n))` -/
def P5421809038979614612.Spec : Prop :=
  ∀ n, P5421809038979614612.a n = A195053 (n + 1)

end A195053

/-! ## A195053.P4790370884767866084

`A096375(n+1)%2`
-/

namespace A195053.P4790370884767866084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096375 (n + 1)) 2

end

end A195053.P4790370884767866084

namespace A195053

/-- `A096375(n+1)%2` -/
def P4790370884767866084.Spec : Prop :=
  ∀ n, P4790370884767866084.a n = A195053 (n + 1)

end A195053

/-! ## A195053.P18269541783757299995

`A153251(n+1)%2`
-/

namespace A195053.P18269541783757299995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153251 (n + 1)) 2

end

end A195053.P18269541783757299995

namespace A195053

/-- `A153251(n+1)%2` -/
def P18269541783757299995.Spec : Prop :=
  ∀ n, P18269541783757299995.a n = A195053 (n + 1)

end A195053

/-! ## A195053.P12575777370469017318

`A188569(n+1)%2`
-/

namespace A195053.P12575777370469017318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188569 (n + 1)) 2

end

end A195053.P12575777370469017318

namespace A195053

/-- `A188569(n+1)%2` -/
def P12575777370469017318.Spec : Prop :=
  ∀ n, P12575777370469017318.a n = A195053 (n + 1)

end A195053

/-!
# A195054: a(n) = p(n) - p(n-1) - p(n-2) + p(n-5), where p(n) = A000041(n).

The programs for A195054, there is no canonical definition to state claims against.
-/

/-! ## A195054.P17355055037384097266

`A008483(n)-∑[A026796(n)]`
-/

namespace A195054.P17355055037384097266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195054.P17355055037384097266

/-! ## A195054.P16235823487778677933

`A026796(n+3)-∑[A026796(n)]`
-/

namespace A195054.P16235823487778677933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195054.P16235823487778677933

/-! ## A195054.P6124154858156084104

`A008483(n)+∑[A008484(n)-A008483(n)]`
-/

namespace A195054.P6124154858156084104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n - A008483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195054.P6124154858156084104

/-! ## A195054.P10585920335673888788

`A008484(n)-(∑[A026796(n)]-A026796(n))`
-/

namespace A195054.P10585920335673888788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n - (∑ j ∈ Finset.range (n + 1), f1 j - A026796 n)

end

end A195054.P10585920335673888788

/-! ## A195054.P8960418527187311152

`A121081(n+1)+A008483(n)-A027336(n+1)`
-/

namespace A195054.P8960418527187311152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121081 (n + 1) + (A008483 n - A027336 (n + 1))

end

end A195054.P8960418527187311152

/-! ## A195054.P13194758321445977965

`A002865(n)+A027336(n)-A027339(n)`
-/

namespace A195054.P13194758321445977965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n + (A027336 n - A027339 n)

end

end A195054.P13194758321445977965

/-! ## A195054.P1574202733657878647

`A027337(n+1)+A002865(n)-A027340(n+1)`
-/

namespace A195054.P1574202733657878647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (n + 1) + (A002865 n - A027340 (n + 1))

end

end A195054.P1574202733657878647

/-! ## A195054.P5896581017471038961

`A027336(n+1)+A027336(n)-A027340(n+1)`
-/

namespace A195054.P5896581017471038961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (n + 1) + (A027336 n - A027340 (n + 1))

end

end A195054.P5896581017471038961

/-! ## A195054.P3598654815931607751

`∑[A008484(n)]-A264401(A075349(n+1))`
-/

namespace A195054.P3598654815931607751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A264401 (A075349 (n + 1)).toNat

end

end A195054.P3598654815931607751

/-!
# A195058: Concentric 23-gonal numbers.

The programs for A195058, the canonical program `A195058.P10297323738974209504` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195058 has offset 0).

The definition of A195058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195058.P10297323738974209504

`23*n²/4+19*((-1)^n-1)/8`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195058

/-- `23*n²/4+19*((-1)^n-1)/8` -/
def P10297323738974209504.Spec : Prop :=
  ∀ n, P10297323738974209504.a n = (A195058 n : ℚ)

end A195058

/-! ## A195058.P16345312343238406563

`∑[∑[A049811(a(n-2))+1]]` with `a(0)=0, a(1)=1, a(2)=21`
-/

namespace A195058.P16345312343238406563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 21] fun n f2 =>
  A049811 (f2 (n - 2)).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195058.P16345312343238406563

namespace A195058

/-- `∑[∑[A049811(a(n-2))+1]]` -/
def P16345312343238406563.Spec : Prop :=
  ∀ n, P16345312343238406563.a n = A195058 n

end A195058

/-! ## A195058.P17970055953488539578

`abs(A002620(n)-A195158(n))`
-/

namespace A195058.P17970055953488539578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002620 n - A195158 n|

end

end A195058.P17970055953488539578

namespace A195058

/-- `abs(A002620(n)-A195158(n))` -/
def P17970055953488539578.Spec : Prop :=
  ∀ n, P17970055953488539578.a n = A195058 n

end A195058

/-! ## A195058.P1565181933490958429

`(A195158(n)+A195149(n))/2`
-/

namespace A195058.P1565181933490958429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195158 n + A195149 n : ℚ) / 2

end

end A195058.P1565181933490958429

namespace A195058

/-- `(A195158(n)+A195149(n))/2` -/
def P1565181933490958429.Spec : Prop :=
  ∀ n, P1565181933490958429.a n = (A195058 n : ℚ)

end A195058

/-! ## A195058.P2922141268946586856

`xor(23*A002620(n), A000035(n))`
-/

namespace A195058.P2922141268946586856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (23 * A002620 n) (A000035 n)

end

end A195058.P2922141268946586856

namespace A195058

/-- `xor(23*A002620(n), A000035(n))` -/
def P2922141268946586856.Spec : Prop :=
  ∀ n, P2922141268946586856.a n = A195058 n

end A195058

/-! ## A195058.P9123915391762821010

`(A195149(n)+A002620(n))*A063274(A048896(2*n)²)`
-/

namespace A195058.P9123915391762821010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A195149 n + A002620 n) * A063274 (A048896 (2 * n) ^ 2).toNat

end

end A195058.P9123915391762821010

namespace A195058

/-- `(A195149(n)+A002620(n))*A063274(A048896(2*n)²)` -/
def P9123915391762821010.Spec : Prop :=
  ∀ n, P9123915391762821010.a n = A195058 n

end A195058

/-! ## A195058.P12344571188404824966

`A273943(A195158(n)+A195149(n))`
-/

namespace A195058.P12344571188404824966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A195158 n + A195149 n).toNat

end

end A195058.P12344571188404824966

namespace A195058

/-- `A273943(A195158(n)+A195149(n))` -/
def P12344571188404824966.Spec : Prop :=
  ∀ n, P12344571188404824966.a n = A195058 n

end A195058

/-!
# A195060: Numbers on the main diagonals and on the axes (x,y) in the square spiral whose vertices are the generalized pentagonal numbers A001318.

The programs for A195060, the canonical program `A195060.P5046823339252525732` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195060 has offset 0).

The definition of A195060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195060.P5046823339252525732

`∪[A001840(n), A032528(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A195060

/-- `∪[A001840(n), A032528(n)]` -/
def P5046823339252525732.Spec : Prop :=
  ∀ n, (P5046823339252525732.a n : ℤ) = A195060 n

theorem P5046823339252525732.correct : P5046823339252525732.Spec := by
  intro n
  simp only [A195060]

end A195060

/-! ## A195060.P7073191359573914481

`∪[A184533(n+1), A001840(n)]`
-/

namespace A195060.P7073191359573914481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195060.P7073191359573914481

namespace A195060

/-- `∪[A184533(n+1), A001840(n)]` -/
def P7073191359573914481.Spec : Prop :=
  ∀ n, (P7073191359573914481.a n : ℤ) = A195060 n

end A195060

/-! ## A195060.P5600930920528316153

`∪[A211004(n+1), A032528(n)]`
-/

namespace A195060.P5600930920528316153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195060.P5600930920528316153

namespace A195060

/-- `∪[A211004(n+1), A032528(n)]` -/
def P5600930920528316153.Spec : Prop :=
  ∀ n, (P5600930920528316153.a n : ℤ) = A195060 n

end A195060

/-! ## A195060.P5291135318025459302

`floor(∑[A030065(A265283(n))/2])`
-/

namespace A195060.P5291135318025459302
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030065 (A265283 n).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A195060.P5291135318025459302

namespace A195060

/-- `floor(∑[A030065(A265283(n))/2])` -/
def P5291135318025459302.Spec : Prop :=
  ∀ n, P5291135318025459302.a n = A195060 n

end A195060

/-! ## A195060.P9216482735994746851

`record[A025767(n)-A167356(n+1)]`
-/

namespace A195060.P9216482735994746851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 n - A167356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195060.P9216482735994746851

namespace A195060

/-- `record[A025767(n)-A167356(n+1)]` -/
def P9216482735994746851.Spec : Prop :=
  ∀ n, P9216482735994746851.a n = A195060 n

end A195060

/-! ## A195060.P16678688879006794071

`A025767(A047255(n+1))*A057427(n)`
-/

namespace A195060.P16678688879006794071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 (A047255 (n + 1)).toNat * A057427 n

end

end A195060.P16678688879006794071

namespace A195060

/-- `A025767(A047255(n+1))*A057427(n)` -/
def P16678688879006794071.Spec : Prop :=
  ∀ n, P16678688879006794071.a n = A195060 n

end A195060

/-! ## A195060.P3971781507701153168

`A025767(A047255(n+1))%A000969(n)`
-/

namespace A195060.P3971781507701153168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025767 (A047255 (n + 1)).toNat) (A000969 n)

end

end A195060.P3971781507701153168

namespace A195060

/-- `A025767(A047255(n+1))%A000969(n)` -/
def P3971781507701153168.Spec : Prop :=
  ∀ n, P3971781507701153168.a n = A195060 n

end A195060

/-! ## A195060.P15045402892654598711

`A123108(∑[A030065(A265283(n))])`
-/

namespace A195060.P15045402892654598711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A265283 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A195060.P15045402892654598711

namespace A195060

/-- `A123108(∑[A030065(A265283(n))])` -/
def P15045402892654598711.Spec : Prop :=
  ∀ n, P15045402892654598711.a n = A195060 n

end A195060

/-! ## A195060.P72319127559554160

`record[A004526(A008133(n)-A008737(n))]`
-/

namespace A195060.P72319127559554160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008133 n - A008737 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195060.P72319127559554160

namespace A195060

/-- `record[A004526(A008133(n)-A008737(n))]` -/
def P72319127559554160.Spec : Prop :=
  ∀ n, P72319127559554160.a n = A195060 n

end A195060

/-! ## A195060.P3217369069335900646

`record[A004526(A025480(A056829(n)))]`
-/

namespace A195060.P3217369069335900646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A025480 (A056829 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195060.P3217369069335900646

namespace A195060

/-- `record[A004526(A025480(A056829(n)))]` -/
def P3217369069335900646.Spec : Prop :=
  ∀ n, P3217369069335900646.a n = A195060 n

end A195060

/-! ## A195060.P10591001820775764359

`record[A004525(A103627(A002620(n)))]`
-/

namespace A195060.P10591001820775764359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A103627 (A002620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195060.P10591001820775764359

namespace A195060

/-- `record[A004525(A103627(A002620(n)))]` -/
def P10591001820775764359.Spec : Prop :=
  ∀ n, P10591001820775764359.a n = A195060 n

end A195060

/-! ## A195060.P3556552677534290571

`record[A004525(A103627(A008133(n)))]`
-/

namespace A195060.P3556552677534290571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A103627 (A008133 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195060.P3556552677534290571

namespace A195060

/-- `record[A004525(A103627(A008133(n)))]` -/
def P3556552677534290571.Spec : Prop :=
  ∀ n, P3556552677534290571.a n = A195060 n

end A195060

/-! ## A195060.P12087328335800927163

`record[A004526(A103627(A008733(n)))]`
-/

namespace A195060.P12087328335800927163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A103627 (A008733 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195060.P12087328335800927163

namespace A195060

/-- `record[A004526(A103627(A008733(n)))]` -/
def P12087328335800927163.Spec : Prop :=
  ∀ n, P12087328335800927163.a n = A195060 n

end A195060

/-! ## A195060.P8477791849974167356

`record[A004525(A103627(A056942(n)))]`
-/

namespace A195060.P8477791849974167356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A103627 (A056942 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195060.P8477791849974167356

namespace A195060

/-- `record[A004525(A103627(A056942(n)))]` -/
def P8477791849974167356.Spec : Prop :=
  ∀ n, P8477791849974167356.a n = A195060 n

end A195060

/-!
# A195061: a(n) is the minimum numbers of ks in the sum of a=b_k+c_k, b_k is positive even number and c_k is odd number greater than or equal to -1, and b and c has only prime factors smaller than sqrt(prime(n)), such that the prime factors of all b_k and c_k contain every primes that is smaller than the square root of n-th prime.

The programs for A195061, there is no canonical definition to state claims against.
-/

/-! ## A195061.P17496445451577665258

`floor(root(A273569(n), 11))`
-/

namespace A195061.P17496445451577665258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A273569 n : ℝ) ^ (1 / (11 : ℝ))⌋

end

end A195061.P17496445451577665258

/-! ## A195061.P1390309379567961920

`round(atan(sqrt(A227881(n))))`
-/

namespace A195061.P1390309379567961920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Real.sqrt (A227881 n : ℝ)))

end

end A195061.P1390309379567961920

/-! ## A195061.P14275935262388999184

`floor(root(A335192(n+3), 8))`
-/

namespace A195061.P14275935262388999184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A335192 (n + 3) : ℝ) ^ (1 / (8 : ℝ))⌋

end

end A195061.P14275935262388999184

/-! ## A195061.P17799836006069918819

`floor(root(A335193(n+3), 9))`
-/

namespace A195061.P17799836006069918819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A335193 (n + 3) : ℝ) ^ (1 / (9 : ℝ))⌋

end

end A195061.P17799836006069918819

/-! ## A195061.P9651802338678683620

`round(root(A315592(n+4), 13))`
-/

namespace A195061.P9651802338678683620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A315592 (n + 4) : ℝ) ^ (1 / (13 : ℝ)))

end

end A195061.P9651802338678683620

/-! ## A195061.P6510978194111786778

`ceil(atan(atan(A094870(2*(n+2)))))`
-/

namespace A195061.P6510978194111786778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (Real.arctan (A094870 (2 * (n + 2)) : ℝ))⌉

end

end A195061.P6510978194111786778

/-! ## A195061.P10790624493465932992

`ceil(atan(atan(A065306(2*n+5))))`
-/

namespace A195061.P10790624493465932992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (Real.arctan (A065306 (2 * n + 5) : ℝ))⌉

end

end A195061.P10790624493465932992

/-! ## A195061.P9110470260752636808

`A032545(A084693(n))`
-/

namespace A195061.P9110470260752636808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032545 (A084693 n).toNat

end

end A195061.P9110470260752636808

/-! ## A195061.P11081979454710082356

`A032545(A187769(n+1))`
-/

namespace A195061.P11081979454710082356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032545 (A187769 (n + 1)).toNat

end

end A195061.P11081979454710082356

/-! ## A195061.P12441410177517788873

`round(record[A312306(n)]/A313636(n))`
-/

namespace A195061.P12441410177517788873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A313636 n : ℚ))

end

end A195061.P12441410177517788873

/-!
# A195062: Period 7: repeat [1, 0, 1, 0, 1, 0, 1].

The programs for A195062, the canonical program `A195062.P223126978538632503` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195062 has offset 1).

The definition of A195062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195062.P223126978538632503

`1-(n%7)%2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195062

/-- `1-(n%7)%2` -/
def P223126978538632503.Spec : Prop :=
  ∀ n, P223126978538632503.a n = A195062 (n + 1)

theorem P223126978538632503.correct : P223126978538632503.Spec := by
  intro n
  simp only [A195062, Nat.add_sub_cancel]

end A195062

/-!
# A195063: Numbers n such that BCR(n) is less than n, where BCR = binary-complement-and-reverse = A036044.

The programs for A195063, the canonical program `A195063.P6179075839367825980` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195063 has offset 1).

The definition of A195063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195063.P6179075839367825980

`2*lt[A175918(2*n), A175298(2*n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A195063

/-- `2*lt[A175918(2*n), A175298(2*n)]` -/
def P6179075839367825980.Spec : Prop :=
  ∀ n, (P6179075839367825980.a n : ℤ) = A195063 (n + 1)

theorem P6179075839367825980.correct : P6179075839367825980.Spec := by
  intro n
  simp only [A195063, Nat.add_sub_cancel]

end A195063

/-! ## A195063.P7291890660098568241

`lt[A006257(A145341(n+1)+n), A006257(n)]`
-/

namespace A195063.P7291890660098568241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A145341 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195063.P7291890660098568241

namespace A195063

/-- `lt[A006257(A145341(n+1)+n), A006257(n)]` -/
def P7291890660098568241.Spec : Prop :=
  ∀ n, (P7291890660098568241.a n : ℤ) = A195063 (n + 1)

end A195063

/-! ## A195063.P11033590543618737879

`2*lt[A036044(2*n), 2*n]`
-/

namespace A195063.P11033590543618737879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A195063.P11033590543618737879

namespace A195063

/-- `2*lt[A036044(2*n), 2*n]` -/
def P11033590543618737879.Spec : Prop :=
  ∀ n, (P11033590543618737879.a n : ℤ) = A195063 (n + 1)

end A195063

/-! ## A195063.P13078215030836896701

`lt[2*A056539(n), A022998(n)]`
-/

namespace A195063.P13078215030836896701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056539 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195063.P13078215030836896701

namespace A195063

/-- `lt[2*A056539(n), A022998(n)]` -/
def P13078215030836896701.Spec : Prop :=
  ∀ n, (P13078215030836896701.a n : ℤ) = A195063 (n + 1)

end A195063

/-! ## A195063.P3119639544062464870

`lt[A036044(n)+n, A022998(n)]`
-/

namespace A195063.P3119639544062464870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195063.P3119639544062464870

namespace A195063

/-- `lt[A036044(n)+n, A022998(n)]` -/
def P3119639544062464870.Spec : Prop :=
  ∀ n, (P3119639544062464870.a n : ℤ) = A195063 (n + 1)

end A195063

/-! ## A195063.P3150238576919258350

`lt[A054429(n+1), 2*A030109(n+1)]`
-/

namespace A195063.P3150238576919258350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195063.P3150238576919258350

namespace A195063

/-- `lt[A054429(n+1), 2*A030109(n+1)]` -/
def P3150238576919258350.Spec : Prop :=
  ∀ n, (P3150238576919258350.a n : ℤ) = A195063 (n + 1)

end A195063

/-! ## A195063.P8605647842120556177

`2*lt[A003817(2*n), A055944(2*n)]`
-/

namespace A195063.P8605647842120556177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195063.P8605647842120556177

namespace A195063

/-- `2*lt[A003817(2*n), A055944(2*n)]` -/
def P8605647842120556177.Spec : Prop :=
  ∀ n, (P8605647842120556177.a n : ℤ) = A195063 (n + 1)

end A195063

/-! ## A195063.P10648027195923559813

`lt[A054429(A065033(n)), A030109(n+1)]`
-/

namespace A195063.P10648027195923559813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065033 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195063.P10648027195923559813

namespace A195063

/-- `lt[A054429(A065033(n)), A030109(n+1)]` -/
def P10648027195923559813.Spec : Prop :=
  ∀ n, (P10648027195923559813.a n : ℤ) = A195063 (n + 1)

end A195063

/-! ## A195063.P17084097351208006033

`lt[A233931(n+1), A233931(A006257(n))]`
-/

namespace A195063.P17084097351208006033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233931 (A006257 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195063.P17084097351208006033

namespace A195063

/-- `lt[A233931(n+1), A233931(A006257(n))]` -/
def P17084097351208006033.Spec : Prop :=
  ∀ n, (P17084097351208006033.a n : ℤ) = A195063 (n + 1)

end A195063

/-! ## A195063.P3626717852008624682

`lt[A054429(n+1)+1, A006257(A059893(n+1))]`
-/

namespace A195063.P3626717852008624682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A059893 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195063.P3626717852008624682

namespace A195063

/-- `lt[A054429(n+1)+1, A006257(A059893(n+1))]` -/
def P3626717852008624682.Spec : Prop :=
  ∀ n, (P3626717852008624682.a n : ℤ) = A195063 (n + 1)

end A195063

/-! ## A195063.P6638410208509682729

`lt[A022998(A056539(n)+1), n]`
-/

namespace A195063.P6638410208509682729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A056539 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A195063.P6638410208509682729

namespace A195063

/-- `lt[A022998(A056539(n)+1), n]` -/
def P6638410208509682729.Spec : Prop :=
  ∀ n, (P6638410208509682729.a n : ℤ) = A195063 (n + 1)

end A195063

/-! ## A195063.P4081775767587743921

`lt[A004525(A056539(n)), A078898(n)]`
-/

namespace A195063.P4081775767587743921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A056539 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195063.P4081775767587743921

namespace A195063

/-- `lt[A004525(A056539(n)), A078898(n)]` -/
def P4081775767587743921.Spec : Prop :=
  ∀ n, (P4081775767587743921.a n : ℤ) = A195063 (n + 1)

end A195063

/-! ## A195063.P2073667639821516582

`lt[A055944(A056539(n)), A055944(n)]`
-/

namespace A195063.P2073667639821516582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (A056539 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195063.P2073667639821516582

namespace A195063

/-- `lt[A055944(A056539(n)), A055944(n)]` -/
def P2073667639821516582.Spec : Prop :=
  ∀ n, (P2073667639821516582.a n : ℤ) = A195063 (n + 1)

end A195063

/-! ## A195063.P4730059916491597024

`lt[A175918(A109043(n)), A175298(n)]`
-/

namespace A195063.P4730059916491597024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175918 (A109043 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195063.P4730059916491597024

namespace A195063

/-- `lt[A175918(A109043(n)), A175298(n)]` -/
def P4730059916491597024.Spec : Prop :=
  ∀ n, (P4730059916491597024.a n : ℤ) = A195063 (n + 1)

end A195063

/-! ## A195063.P5500552297468321080

`lt[A036044(A109043(n)), n]`
-/

namespace A195063.P5500552297468321080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A109043 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A195063.P5500552297468321080

namespace A195063

/-- `lt[A036044(A109043(n)), n]` -/
def P5500552297468321080.Spec : Prop :=
  ∀ n, (P5500552297468321080.a n : ℤ) = A195063 (n + 1)

end A195063

/-! ## A195063.P5027589168912538294

`lt[A036044(n), A025480(A022998(n))]`
-/

namespace A195063.P5027589168912538294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A022998 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195063.P5027589168912538294

namespace A195063

/-- `lt[A036044(n), A025480(A022998(n))]` -/
def P5027589168912538294.Spec : Prop :=
  ∀ n, (P5027589168912538294.a n : ℤ) = A195063 (n + 1)

end A195063

/-! ## A195063.P12058805226641903792

`lt[A003817(A109043(n)), A055944(n)]`
-/

namespace A195063.P12058805226641903792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A109043 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195063.P12058805226641903792

namespace A195063

/-- `lt[A003817(A109043(n)), A055944(n)]` -/
def P12058805226641903792.Spec : Prop :=
  ∀ n, (P12058805226641903792.a n : ℤ) = A195063 (n + 1)

end A195063

/-! ## A195063.P1050140570028846671

`lt[A003817(2*A026741(n)), A055944(n)]`
-/

namespace A195063.P1050140570028846671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (2 * A026741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195063.P1050140570028846671

namespace A195063

/-- `lt[A003817(2*A026741(n)), A055944(n)]` -/
def P1050140570028846671.Spec : Prop :=
  ∀ n, (P1050140570028846671.a n : ℤ) = A195063 (n + 1)

end A195063

/-! ## A195063.P15365702598494427501

`lt[A003817(n), A026741(A055944(n))]`
-/

namespace A195063.P15365702598494427501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A055944 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195063.P15365702598494427501

namespace A195063

/-- `lt[A003817(n), A026741(A055944(n))]` -/
def P15365702598494427501.Spec : Prop :=
  ∀ n, (P15365702598494427501.a n : ℤ) = A195063 (n + 1)

end A195063

/-!
# A195064: Numbers n such that BCR(n) is not greater than n, where BCR = binary-complement-and-reverse = A036044.

The programs for A195064, the canonical program `A195064.P1281476350292998118` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195064 has offset 1).

The definition of A195064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195064.P1281476350292998118

`∪[A035928(n+1), A195063(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A195064

/-- `∪[A035928(n+1), A195063(n+1)]` -/
def P1281476350292998118.Spec : Prop :=
  ∀ n, (P1281476350292998118.a n : ℤ) = A195064 (n + 1)

theorem P1281476350292998118.correct : P1281476350292998118.Spec := by
  intro n
  simp only [A195064, Nat.add_sub_cancel]

end A195064

/-! ## A195064.P16173822217912045793

`eq[1, (1-A036044(n)+n)%2]`
-/

namespace A195064.P16173822217912045793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A036044 n + (n : ℤ)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195064.P16173822217912045793

namespace A195064

/-- `eq[1, (1-A036044(n)+n)%2]` -/
def P16173822217912045793.Spec : Prop :=
  ∀ n, (P16173822217912045793.a n : ℤ) = A195064 (n + 1)

end A195064

/-! ## A195064.P1999977831293506356

`2*lt[A036044(2*n), 2*n+1]`
-/

namespace A195064.P1999977831293506356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A195064.P1999977831293506356

namespace A195064

/-- `2*lt[A036044(2*n), 2*n+1]` -/
def P1999977831293506356.Spec : Prop :=
  ∀ n, (P1999977831293506356.a n : ℤ) = A195064 (n + 1)

end A195064

/-! ## A195064.P11051325538008665923

`eq[A056539(n)%(n+1), A036044(n)]`
-/

namespace A195064.P11051325538008665923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056539 n) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195064.P11051325538008665923

namespace A195064

/-- `eq[A056539(n)%(n+1), A036044(n)]` -/
def P11051325538008665923.Spec : Prop :=
  ∀ n, (P11051325538008665923.a n : ℤ) = A195064 (n + 1)

end A195064

/-! ## A195064.P3855523685309297714

`record[A036044(A036044(n+2)%(n+3))]`
-/

namespace A195064.P3855523685309297714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (Int.tmod (A036044 (n + 2)) (n + 3 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195064.P3855523685309297714

namespace A195064

/-- `record[A036044(A036044(n+2)%(n+3))]` -/
def P3855523685309297714.Spec : Prop :=
  ∀ n, P3855523685309297714.a n = A195064 (n + 1)

end A195064

/-! ## A195064.P3248163386911758699

`eq[1, xor(n+1, A036044(A036044(n)%(n+1)))]`
-/

namespace A195064.P3248163386911758699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A036044 (Int.tmod (A036044 n) (n + 1 : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195064.P3248163386911758699

namespace A195064

/-- `eq[1, xor(n+1, A036044(A036044(n)%(n+1)))]` -/
def P3248163386911758699.Spec : Prop :=
  ∀ n, (P3248163386911758699.a n : ℤ) = A195064 (n + 1)

end A195064

/-! ## A195064.P3007473650785831072

`lt[2*A003817(A026741(n)), A055944(n)]`
-/

namespace A195064.P3007473650785831072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003817 (A026741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195064.P3007473650785831072

namespace A195064

/-- `lt[2*A003817(A026741(n)), A055944(n)]` -/
def P3007473650785831072.Spec : Prop :=
  ∀ n, (P3007473650785831072.a n : ℤ) = A195064 (n + 1)

end A195064

/-! ## A195064.P4476945936278283152

`lt[A054429(n+1), A006257(A059893(n+1))]`
-/

namespace A195064.P4476945936278283152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A059893 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195064.P4476945936278283152

namespace A195064

/-- `lt[A054429(n+1), A006257(A059893(n+1))]` -/
def P4476945936278283152.Spec : Prop :=
  ∀ n, (P4476945936278283152.a n : ℤ) = A195064 (n + 1)

end A195064

/-! ## A195064.P4420012256618614843

`lt[A054429(A065033(n)), A030109(n+1)+1]`
-/

namespace A195064.P4420012256618614843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065033 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195064.P4420012256618614843

namespace A195064

/-- `lt[A054429(A065033(n)), A030109(n+1)+1]` -/
def P4420012256618614843.Spec : Prop :=
  ∀ n, (P4420012256618614843.a n : ℤ) = A195064 (n + 1)

end A195064

/-! ## A195064.P2368794895920144460

`lt[A054429(n+1), A006257(A145342(n+2)-1)]`
-/

namespace A195064.P2368794895920144460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A145342 (n + 2) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195064.P2368794895920144460

namespace A195064

/-- `lt[A054429(n+1), A006257(A145342(n+2)-1)]` -/
def P2368794895920144460.Spec : Prop :=
  ∀ n, (P2368794895920144460.a n : ℤ) = A195064 (n + 1)

end A195064

/-! ## A195064.P2342430320847592570

`lt[A036044(A109043(n)), n+1]`
-/

namespace A195064.P2342430320847592570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A109043 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A195064.P2342430320847592570

namespace A195064

/-- `lt[A036044(A109043(n)), n+1]` -/
def P2342430320847592570.Spec : Prop :=
  ∀ n, (P2342430320847592570.a n : ℤ) = A195064 (n + 1)

end A195064

/-! ## A195064.P8614446875117299738

`lt[1, A004442(n)/A036044(A109043(n))]`
-/

namespace A195064.P8614446875117299738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004442 n : ℚ) / (A036044 (A109043 n).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A195064.P8614446875117299738

namespace A195064

/-- `lt[1, A004442(n)/A036044(A109043(n))]` -/
def P8614446875117299738.Spec : Prop :=
  ∀ n, (P8614446875117299738.a n : ℤ) = A195064 (n + 1)

end A195064

/-! ## A195064.P14330757931272071271

`lt[A054429(n+1), A006257(A030109(2*n+3))]`
-/

namespace A195064.P14330757931272071271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A030109 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195064.P14330757931272071271

namespace A195064

/-- `lt[A054429(n+1), A006257(A030109(2*n+3))]` -/
def P14330757931272071271.Spec : Prop :=
  ∀ n, (P14330757931272071271.a n : ℤ) = A195064 (n + 1)

end A195064

/-!
# A195065: Numbers n such that BCR(n) is greater than n, where BCR = binary-complement-and-reverse = A036044.

The programs for A195065, the canonical program `A195065.P14907772542944478463` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195065 has offset 1).

The definition of A195065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2816 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195065.P14907772542944478463

`lt[n, A036044(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A195065

/-- `lt[n, A036044(n)]` -/
def P14907772542944478463.Spec : Prop :=
  ∀ n, (P14907772542944478463.a n : ℤ) = A195065 (n + 1)

theorem P14907772542944478463.correct : P14907772542944478463.Spec := by
  intro n
  simp only [A195065, Nat.add_sub_cancel]

end A195065

/-! ## A195065.P11787700086695083113

`record[(2*n)%A036044(2*n)]`
-/

namespace A195065.P11787700086695083113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (A036044 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195065.P11787700086695083113

namespace A195065

/-- `record[(2*n)%A036044(2*n)]` -/
def P11787700086695083113.Spec : Prop :=
  ∀ n, P11787700086695083113.a n = A195065 (n + 1)

end A195065

/-! ## A195065.P12821653472661343199

`record[(n+1)%(1-A036044(n+1))]`
-/

namespace A195065.P12821653472661343199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (1 - A036044 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195065.P12821653472661343199

namespace A195065

/-- `record[(n+1)%(1-A036044(n+1))]` -/
def P12821653472661343199.Spec : Prop :=
  ∀ n, P12821653472661343199.a n = A195065 (n + 1)

end A195065

/-! ## A195065.P18148066636059288112

`lt[A030101(n), (a(n-1)-1+n)%n]` with `a(0)=1`
-/

namespace A195065.P18148066636059288112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.tmod (f2 (n - 1) - 1 + (n : ℤ)) (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195065.P18148066636059288112

namespace A195065

/-- `lt[A030101(n), (a(n-1)-1+n)%n]` -/
def P18148066636059288112.Spec : Prop :=
  ∀ n, (P18148066636059288112.a n : ℤ) = A195065 (n + 1)

end A195065

/-! ## A195065.P17258991276605038932

`2*lt[A055944(2*n), A003817(2*n+1)]`
-/

namespace A195065.P17258991276605038932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195065.P17258991276605038932

namespace A195065

/-- `2*lt[A055944(2*n), A003817(2*n+1)]` -/
def P17258991276605038932.Spec : Prop :=
  ∀ n, (P17258991276605038932.a n : ℤ) = A195065 (n + 1)

end A195065

/-! ## A195065.P6548493099665382588

`lt[A055944(n), A003817(A026741(n+1))]`
-/

namespace A195065.P6548493099665382588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A026741 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195065.P6548493099665382588

namespace A195065

/-- `lt[A055944(n), A003817(A026741(n+1))]` -/
def P6548493099665382588.Spec : Prop :=
  ∀ n, (P6548493099665382588.a n : ℤ) = A195065 (n + 1)

end A195065

/-! ## A195065.P1595420948578819789

`record[A035928(A056539(n+1))%A056539(n+1)]`
-/

namespace A195065.P1595420948578819789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035928 (A056539 (n + 1)).toNat) (A056539 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195065.P1595420948578819789

namespace A195065

/-- `record[A035928(A056539(n+1))%A056539(n+1)]` -/
def P1595420948578819789.Spec : Prop :=
  ∀ n, P1595420948578819789.a n = A195065 (n + 1)

end A195065

/-! ## A195065.P8666995342590365065

`record[A056539(A036044(n+1))%A056539(n+1)]`
-/

namespace A195065.P8666995342590365065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056539 (A036044 (n + 1)).toNat) (A056539 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195065.P8666995342590365065

namespace A195065

/-- `record[A056539(A036044(n+1))%A056539(n+1)]` -/
def P8666995342590365065.Spec : Prop :=
  ∀ n, P8666995342590365065.a n = A195065 (n + 1)

end A195065

/-! ## A195065.P14517554705897562815

`lt[A055944(A109043(n)), A003817(n+1)]`
-/

namespace A195065.P14517554705897562815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (A109043 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195065.P14517554705897562815

namespace A195065

/-- `lt[A055944(A109043(n)), A003817(n+1)]` -/
def P14517554705897562815.Spec : Prop :=
  ∀ n, (P14517554705897562815.a n : ℤ) = A195065 (n + 1)

end A195065

/-!
# A195066: Numbers n such that BCR(n) is not less than n, where BCR = binary-complement-and-reverse = A036044.

The programs for A195066, the canonical program `A195066.P9959749085544739887` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195066 has offset 1).

The definition of A195066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195066.P9959749085544739887

`∪[A035928(n+1), A195065(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A195066

/-- `∪[A035928(n+1), A195065(n+1)]` -/
def P9959749085544739887.Spec : Prop :=
  ∀ n, (P9959749085544739887.a n : ℤ) = A195066 (n + 1)

theorem P9959749085544739887.correct : P9959749085544739887.Spec := by
  intro n
  simp only [A195066, Nat.add_sub_cancel]

end A195066

/-! ## A195066.P2947921298929294923

`lt[A175298(n), A175918(n)+1]`
-/

namespace A195066.P2947921298929294923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175918 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195066.P2947921298929294923

namespace A195066

/-- `lt[A175298(n), A175918(n)+1]` -/
def P2947921298929294923.Spec : Prop :=
  ∀ n, (P2947921298929294923.a n : ℤ) = A195066 (n + 1)

end A195066

/-! ## A195066.P7079230215776289068

`lt[n, A036044(n)+1]`
-/

namespace A195066.P7079230215776289068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A195066.P7079230215776289068

namespace A195066

/-- `lt[n, A036044(n)+1]` -/
def P7079230215776289068.Spec : Prop :=
  ∀ n, (P7079230215776289068.a n : ℤ) = A195066 (n + 1)

end A195066

/-! ## A195066.P10178415653455109482

`lt[xor(n, A030101(n)+n), n+1]`
-/

namespace A195066.P10178415653455109482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A030101 n + (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A195066.P10178415653455109482

namespace A195066

/-- `lt[xor(n, A030101(n)+n), n+1]` -/
def P10178415653455109482.Spec : Prop :=
  ∀ n, (P10178415653455109482.a n : ℤ) = A195066 (n + 1)

end A195066

/-! ## A195066.P411587307816569235

`record[(n+1)%(A036044(n+1)+1)]`
-/

namespace A195066.P411587307816569235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A036044 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195066.P411587307816569235

namespace A195066

/-- `record[(n+1)%(A036044(n+1)+1)]` -/
def P411587307816569235.Spec : Prop :=
  ∀ n, P411587307816569235.a n = A195066 (n + 1)

end A195066

/-! ## A195066.P174030115867543809

`lt[A055944(n), A003817(n)+1]`
-/

namespace A195066.P174030115867543809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195066.P174030115867543809

namespace A195066

/-- `lt[A055944(n), A003817(n)+1]` -/
def P174030115867543809.Spec : Prop :=
  ∀ n, (P174030115867543809.a n : ℤ) = A195066 (n + 1)

end A195066

/-! ## A195066.P2479760125516348694

`lt[n², A004442(n)*A036044(n)]`
-/

namespace A195066.P2479760125516348694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n * A036044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A195066.P2479760125516348694

namespace A195066

/-- `lt[n², A004442(n)*A036044(n)]` -/
def P2479760125516348694.Spec : Prop :=
  ∀ n, (P2479760125516348694.a n : ℤ) = A195066 (n + 1)

end A195066

/-! ## A195066.P17347874512633568119

`A109043(lt[A055944(n)-1, A003817(n)])`
-/

namespace A195066.P17347874512633568119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195066.P17347874512633568119

namespace A195066

/-- `A109043(lt[A055944(n)-1, A003817(n)])` -/
def P17347874512633568119.Spec : Prop :=
  ∀ n, P17347874512633568119.a n = A195066 (n + 1)

end A195066

/-! ## A195066.P16649330382205787599

`∪[A140900(n+1), A195065(n+1)]`
-/

namespace A195066.P16649330382205787599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195066.P16649330382205787599

namespace A195066

/-- `∪[A140900(n+1), A195065(n+1)]` -/
def P16649330382205787599.Spec : Prop :=
  ∀ n, (P16649330382205787599.a n : ℤ) = A195066 (n + 1)

end A195066

/-! ## A195066.P4521645142868444795

`lt[A175298(A109043(n))-1, A175918(n)]`
-/

namespace A195066.P4521645142868444795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (A109043 n).toNat - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195066.P4521645142868444795

namespace A195066

/-- `lt[A175298(A109043(n))-1, A175918(n)]` -/
def P4521645142868444795.Spec : Prop :=
  ∀ n, (P4521645142868444795.a n : ℤ) = A195066 (n + 1)

end A195066

/-! ## A195066.P16108882956860605238

`lt[A004525(n), A078898(A056539(n)+2)]`
-/

namespace A195066.P16108882956860605238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A056539 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195066.P16108882956860605238

namespace A195066

/-- `lt[A004525(n), A078898(A056539(n)+2)]` -/
def P16108882956860605238.Spec : Prop :=
  ∀ n, (P16108882956860605238.a n : ℤ) = A195066 (n + 1)

end A195066

/-! ## A195066.P6137910191643895896

`lt[A055944(2*n), A056539(2*n)+1]`
-/

namespace A195066.P6137910191643895896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195066.P6137910191643895896

namespace A195066

/-- `lt[A055944(2*n), A056539(2*n)+1]` -/
def P6137910191643895896.Spec : Prop :=
  ∀ n, (P6137910191643895896.a n : ℤ) = A195066 (n + 1)

end A195066

/-! ## A195066.P10647982796003571944

`eq[A003817(n), A003817(A055944(n))]`
-/

namespace A195066.P10647982796003571944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A055944 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195066.P10647982796003571944

namespace A195066

/-- `eq[A003817(n), A003817(A055944(n))]` -/
def P10647982796003571944.Spec : Prop :=
  ∀ n, (P10647982796003571944.a n : ℤ) = A195066 (n + 1)

end A195066

/-! ## A195066.P7589295219765134328

`eq[A062383(A055944(n)), A062383(n)]`
-/

namespace A195066.P7589295219765134328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A055944 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195066.P7589295219765134328

namespace A195066

/-- `eq[A062383(A055944(n)), A062383(n)]` -/
def P7589295219765134328.Spec : Prop :=
  ∀ n, (P7589295219765134328.a n : ℤ) = A195066 (n + 1)

end A195066

/-! ## A195066.P17260911772770078960

`eq[A053644(A030101(n)+n), A053644(n)]`
-/

namespace A195066.P17260911772770078960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A030101 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195066.P17260911772770078960

namespace A195066

/-- `eq[A053644(A030101(n)+n), A053644(n)]` -/
def P17260911772770078960.Spec : Prop :=
  ∀ n, (P17260911772770078960.a n : ℤ) = A195066 (n + 1)

end A195066

/-! ## A195066.P8116061232976398050

`lt[n, A035327(A145341(n+1))+1]`
-/

namespace A195066.P8116061232976398050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A145341 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A195066.P8116061232976398050

namespace A195066

/-- `lt[n, A035327(A145341(n+1))+1]` -/
def P8116061232976398050.Spec : Prop :=
  ∀ n, (P8116061232976398050.a n : ℤ) = A195066 (n + 1)

end A195066

/-! ## A195066.P3209577775697407588

`lt[A030101(n)+n, A200322(2*n)]`
-/

namespace A195066.P3209577775697407588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200322 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195066.P3209577775697407588

namespace A195066

/-- `lt[A030101(n)+n, A200322(2*n)]` -/
def P3209577775697407588.Spec : Prop :=
  ∀ n, (P3209577775697407588.a n : ℤ) = A195066 (n + 1)

end A195066

/-!
# A195067: G.f. A(x) satisfies A(x) = Sum{n>=0} x^n * A(2*n*x).

The programs for A195067, there is no canonical definition to state claims against.
-/

/-! ## A195067.P5242309962971946203

`A214467(a(n-1))+2` with `a(0)=1, a(1)=1`
-/

namespace A195067.P5242309962971946203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A214467 (a (n - 1)).toNat + 2

end

end A195067.P5242309962971946203

/-!
# A195068: G.f. satisfies: A(x) = Sum{n>=0} x^n * A(n*x)^n.

The programs for A195068, there is no canonical definition to state claims against.
-/

/-! ## A195068.P5814258206129461185

`A030339(n^n+2)-1`
-/

namespace A195068.P5814258206129461185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030339 (n ^ n + 2) - 1

end

end A195068.P5814258206129461185

/-! ## A195068.P1664597035081780945

`A060384((n+1)²*a(n-1))` with `a(0)=1`
-/

namespace A195068.P1664597035081780945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060384 (((n + 1) ^ 2 : ℤ) * a (n - 1)).toNat

end

end A195068.P1664597035081780945

/-!
# A195069: Numbers k such that (number of prime factors of k counted with multiplicity) less (number of distinct prime factors of k) = 10.

The programs for A195069, there is no canonical definition to state claims against.
-/

/-! ## A195069.P505282037983178845

`A000005(A103966(n+1))*A195093(n+1)`
-/

namespace A195069.P505282037983178845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A103966 (n + 1)).toNat * A195093 (n + 1)

end

end A195069.P505282037983178845

/-! ## A195069.P14575779489919968504

`A000005(A165977(n+1))*A195093(n+1)`
-/

namespace A195069.P14575779489919968504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A165977 (n + 1)).toNat * A195093 (n + 1)

end

end A195069.P14575779489919968504

/-! ## A195069.P3372395229338743553

`A124859(A178385(n+1))*A195093(n+1)`
-/

namespace A195069.P3372395229338743553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A178385 (n + 1)).toNat * A195093 (n + 1)

end

end A195069.P3372395229338743553

/-! ## A195069.P3694152947473499655

`A000122(A102376(3*n+1))*A195093(n+1)`
-/

namespace A195069.P3694152947473499655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A102376 (3 * n + 1)).toNat * A195093 (n + 1)

end

end A195069.P3694152947473499655

/-! ## A195069.P9400339824476356953

`A020639(A135036(n+3))*A195093(n+1)`
-/

namespace A195069.P9400339824476356953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A135036 (n + 3)).toNat * A195093 (n + 1)

end

end A195069.P9400339824476356953

/-!
# A195071: Inverse permutation of A194922; every positive integer occurs exactly once.

The programs for A195071, there is no canonical definition to state claims against.
-/

/-! ## A195071.P7659610646114807191

`A194921(n+1)+A057944(n)`
-/

namespace A195071.P7659610646114807191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1) + A057944 n

end

end A195071.P7659610646114807191

/-! ## A195071.P3885738988624901941

`A194921(n+1)+n+1-A002260(n+1)`
-/

namespace A195071.P3885738988624901941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A195071.P3885738988624901941

/-! ## A195071.P17635857963826726817

`A194976(A278818(n))+A057944(n)`
-/

namespace A195071.P17635857963826726817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194976 (A278818 n).toNat + A057944 n

end

end A195071.P17635857963826726817

/-! ## A195071.P15415224416154381027

`A194921(n+1)+A000217(A003056(n))`
-/

namespace A195071.P15415224416154381027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1) + A000217 (A003056 n).toNat

end

end A195071.P15415224416154381027

/-! ## A195071.P8914265874474379176

`A194976(A038722(n+1))+A057944(n)`
-/

namespace A195071.P8914265874474379176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194976 (A038722 (n + 1)).toNat + A057944 n

end

end A195071.P8914265874474379176

/-! ## A195071.P4142846647099667771

`A194976(A061579(n)+1)+A061885(n)-n`
-/

namespace A195071.P4142846647099667771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194976 (A061579 n + 1).toNat + (A061885 n - (n : ℤ))

end

end A195071.P4142846647099667771

/-! ## A195071.P12219787293132397877

`A194916(n+1)+A194921(n+1)-A194914(n+1)`
-/

namespace A195071.P12219787293132397877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194916 (n + 1) + (A194921 (n + 1) - A194914 (n + 1))

end

end A195071.P12219787293132397877

/-! ## A195071.P12924382403092324919

`A194921(n+1)+A195096(n+1)-A195082(n+1)`
-/

namespace A195071.P12924382403092324919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1) + (A195096 (n + 1) - A195082 (n + 1))

end

end A195071.P12924382403092324919

/-! ## A195071.P5012995707439680982

`A195081(A194922(A195081(n+1)))`
-/

namespace A195071.P5012995707439680982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195081 (A194922 (A195081 (n + 1)).toNat).toNat

end

end A195071.P5012995707439680982

/-! ## A195071.P3428497548727679874

`A194978(A038722(n+1))`
-/

namespace A195071.P3428497548727679874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194978 (A038722 (n + 1)).toNat

end

end A195071.P3428497548727679874

/-!
# A195072: a(n) = n - floor(n/sqrt(3)).

The programs for A195072, the canonical program `A195072.P2486236675197016499` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195072 has offset 1).

The definition of A195072 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-floor((n+1)/sqrt(3))` (program `A195072.P2486236675197016499`, by `A195072.P2486236675197016499.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195072.P2486236675197016499

`n+1-floor((n+1)/sqrt(3))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195072

/-- `n+1-floor((n+1)/sqrt(3))` -/
def P2486236675197016499.Spec : Prop :=
  ∀ n, P2486236675197016499.a n = A195072 (n + 1)

theorem P2486236675197016499.correct : P2486236675197016499.Spec := by
  intro n
  simp only [A195072, Nat.add_sub_cancel]

end A195072

/-! ## A195072.P3461818773488738428

`∑[Δ[A195129(n)]-1]`
-/

namespace A195072.P3461818773488738428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195072.P3461818773488738428

namespace A195072

/-- `∑[Δ[A195129(n)]-1]` -/
def P3461818773488738428.Spec : Prop :=
  ∀ n, P3461818773488738428.a n = A195072 (n + 1)

end A195072

/-! ## A195072.P3164771590528262596

`∑[char[comp[A022838(n+1)]]]`
-/

namespace A195072.P3164771590528262596
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195072.P3164771590528262596

namespace A195072

/-- `∑[char[comp[A022838(n+1)]]]` -/
def P3164771590528262596.Spec : Prop :=
  ∀ n, (P3164771590528262596.a n : ℤ) = A195072 (n + 1)

end A195072

/-! ## A195072.P4861959500542701036

`abs(xor(-1, A183142(n+1)))`
-/

namespace A195072.P4861959500542701036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (A183142 (n + 1))|

end

end A195072.P4861959500542701036

namespace A195072

/-- `abs(xor(-1, A183142(n+1)))` -/
def P4861959500542701036.Spec : Prop :=
  ∀ n, P4861959500542701036.a n = A195072 (n + 1)

end A195072

/-! ## A195072.P11111379792391590097

`abs(n+1-A097337(n+1))`
-/

namespace A195072.P11111379792391590097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A097337 (n + 1)|

end

end A195072.P11111379792391590097

namespace A195072

/-- `abs(n+1-A097337(n+1))` -/
def P11111379792391590097.Spec : Prop :=
  ∀ n, P11111379792391590097.a n = A195072 (n + 1)

end A195072

/-! ## A195072.P1768297959324622829

`A215781(1-a(n-1)+n)` with `a(0)=1`
-/

namespace A195072.P1768297959324622829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A215781 (1 - a (n - 1) + (n : ℤ)).toNat

end

end A195072.P1768297959324622829

namespace A195072

/-- `A215781(1-a(n-1)+n)` -/
def P1768297959324622829.Spec : Prop :=
  ∀ n, P1768297959324622829.a n = A195072 (n + 1)

end A195072

/-! ## A195072.P12276971519046731662

`A215781(1-(a(n-1)-n))` with `a(0)=1`
-/

namespace A195072.P12276971519046731662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A215781 (1 - (a (n - 1) - (n : ℤ))).toNat

end

end A195072.P12276971519046731662

namespace A195072

/-- `A215781(1-(a(n-1)-n))` -/
def P12276971519046731662.Spec : Prop :=
  ∀ n, P12276971519046731662.a n = A195072 (n + 1)

end A195072

/-! ## A195072.P14536680611702119231

`∑[A195152(Δ[A195129(n)]+1)]`
-/

namespace A195072.P14536680611702119231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195152 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195072.P14536680611702119231

namespace A195072

/-- `∑[A195152(Δ[A195129(n)]+1)]` -/
def P14536680611702119231.Spec : Prop :=
  ∀ n, P14536680611702119231.a n = A195072 (n + 1)

end A195072

/-! ## A195072.P17857878886444717308

`∑[A195151(Δ[A195129(n)]+2)]`
-/

namespace A195072.P17857878886444717308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195151 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195072.P17857878886444717308

namespace A195072

/-- `∑[A195151(Δ[A195129(n)]+2)]` -/
def P17857878886444717308.Spec : Prop :=
  ∀ n, P17857878886444717308.a n = A195072 (n + 1)

end A195072

/-! ## A195072.P14749704065927972600

`A001952(n+1)%A189386(n+1)`
-/

namespace A195072.P14749704065927972600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001952 (n + 1)) (A189386 (n + 1))

end

end A195072.P14749704065927972600

namespace A195072

/-- `A001952(n+1)%A189386(n+1)` -/
def P14749704065927972600.Spec : Prop :=
  ∀ n, P14749704065927972600.a n = A195072 (n + 1)

end A195072

/-! ## A195072.P7493710457060486473

`A003512(n+1)%A190332(n+1)`
-/

namespace A195072.P7493710457060486473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003512 (n + 1)) (A190332 (n + 1))

end

end A195072.P7493710457060486473

namespace A195072

/-- `A003512(n+1)%A190332(n+1)` -/
def P7493710457060486473.Spec : Prop :=
  ∀ n, P7493710457060486473.a n = A195072 (n + 1)

end A195072

/-! ## A195072.P6649574358720107862

`A194979(A022838(n+1-A097337(n+1)))`
-/

namespace A195072.P6649574358720107862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (A022838 ((n + 1 : ℤ) - A097337 (n + 1)).toNat).toNat

end

end A195072.P6649574358720107862

namespace A195072

/-- `A194979(A022838(n+1-A097337(n+1)))` -/
def P6649574358720107862.Spec : Prop :=
  ∀ n, P6649574358720107862.a n = A195072 (n + 1)

end A195072

/-! ## A195072.P12240892069860062611

`A188568(A188568(n+1-A097337(n+1)))`
-/

namespace A195072.P12240892069860062611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188568 (A188568 ((n + 1 : ℤ) - A097337 (n + 1)).toNat).toNat

end

end A195072.P12240892069860062611

namespace A195072

/-- `A188568(A188568(n+1-A097337(n+1)))` -/
def P12240892069860062611.Spec : Prop :=
  ∀ n, P12240892069860062611.a n = A195072 (n + 1)

end A195072

/-! ## A195072.P11615781633260982567

`A097337(A022838(n+2-A097337(n+1)))`
-/

namespace A195072.P11615781633260982567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A022838 ((n + 2 : ℤ) - A097337 (n + 1)).toNat).toNat

end

end A195072.P11615781633260982567

namespace A195072

/-- `A097337(A022838(n+2-A097337(n+1)))` -/
def P11615781633260982567.Spec : Prop :=
  ∀ n, P11615781633260982567.a n = A195072 (n + 1)

end A195072

/-! ## A195072.P14456229704903965260

`A194979(A022838(n+2-A194979(n+1)))`
-/

namespace A195072.P14456229704903965260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (A022838 ((n + 2 : ℤ) - A194979 (n + 1)).toNat).toNat

end

end A195072.P14456229704903965260

namespace A195072

/-- `A194979(A022838(n+2-A194979(n+1)))` -/
def P14456229704903965260.Spec : Prop :=
  ∀ n, P14456229704903965260.a n = A195072 (n + 1)

end A195072

/-! ## A195072.P12911342920416554281

`A215781(A097337(n+2))`
-/

namespace A195072.P12911342920416554281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 (A097337 (n + 2)).toNat

end

end A195072.P12911342920416554281

namespace A195072

/-- `A215781(A097337(n+2))` -/
def P12911342920416554281.Spec : Prop :=
  ∀ n, P12911342920416554281.a n = A195072 (n + 1)

end A195072

/-! ## A195072.P5010016371653794246

`A008620(A182777(n+1))`
-/

namespace A195072.P5010016371653794246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A182777 (n + 1)).toNat

end

end A195072.P5010016371653794246

namespace A195072

/-- `A008620(A182777(n+1))` -/
def P5010016371653794246.Spec : Prop :=
  ∀ n, P5010016371653794246.a n = A195072 (n + 1)

end A195072

/-! ## A195072.P13433176724634987677

`A195120(A186223(n+1))`
-/

namespace A195072.P13433176724634987677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A186223 (n + 1)).toNat

end

end A195072.P13433176724634987677

namespace A195072

/-- `A195120(A186223(n+1))` -/
def P13433176724634987677.Spec : Prop :=
  ∀ n, P13433176724634987677.a n = A195072 (n + 1)

end A195072

/-! ## A195072.P7212053889074427530

`A195120(A186225(n+1))`
-/

namespace A195072.P7212053889074427530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A186225 (n + 1)).toNat

end

end A195072.P7212053889074427530

namespace A195072

/-- `A195120(A186225(n+1))` -/
def P7212053889074427530.Spec : Prop :=
  ∀ n, P7212053889074427530.a n = A195072 (n + 1)

end A195072

/-! ## A195072.P11690479261142400170

`A195120(A186324(n+1))`
-/

namespace A195072.P11690479261142400170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A186324 (n + 1)).toNat

end

end A195072.P11690479261142400170

namespace A195072

/-- `A195120(A186324(n+1))` -/
def P11690479261142400170.Spec : Prop :=
  ∀ n, P11690479261142400170.a n = A195072 (n + 1)

end A195072

/-!
# A195073: Fractalization of (n-[n/sqrt(3)]), where [ ]=floor.

The programs for A195073, there is no canonical definition to state claims against.
-/

/-! ## A195073.P16195195586464883851

`A194980(A038722(n+1)%A060092(n+2))`
-/

namespace A195073.P16195195586464883851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194980 (Int.tmod (A038722 (n + 1)) (A060092 (n + 2))).toNat

end

end A195073.P16195195586464883851

/-! ## A195073.P12963676438187485987

`A194980(∑[char[∑[n]]]²-n)`
-/

namespace A195073.P12963676438187485987
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194980 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A195073.P12963676438187485987

/-! ## A195073.P12277585997946587374

`A194980(A038722(n+1))%14`
-/

namespace A195073.P12277585997946587374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194980 (A038722 (n + 1)).toNat) 14

end

end A195073.P12277585997946587374

/-! ## A195073.P11020078299031001354

`A194980(A061579(n)+1)%14`
-/

namespace A195073.P11020078299031001354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194980 (A061579 n + 1).toNat) 14

end

end A195073.P11020078299031001354

/-! ## A195073.P13578609113853855024

`A194980(A038722(n+1))^A178334(n)`
-/

namespace A195073.P13578609113853855024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194980 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A195073.P13578609113853855024

/-! ## A195073.P1091945558651521891

`A007318(C(2, n))*A194980(A038722(n+1))`
-/

namespace A195073.P1091945558651521891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A194980 (A038722 (n + 1)).toNat

end

end A195073.P1091945558651521891

/-! ## A195073.P5063517167975298453

`A000108(C(2, n+2))*A194980(A038722(n+1))`
-/

namespace A195073.P5063517167975298453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A194980 (A038722 (n + 1)).toNat

end

end A195073.P5063517167975298453

/-! ## A195073.P2487843547246602125

`A000108(gcd(n, n+1))*A194980(A038722(n+1))`
-/

namespace A195073.P2487843547246602125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.gcd n (n + 1)) * A194980 (A038722 (n + 1)).toNat

end

end A195073.P2487843547246602125

/-! ## A195073.P1927798728518186610

`A000045(C(n, n²)!)*A194980(A038722(n+1))`
-/

namespace A195073.P1927798728518186610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.factorial (Nat.choose n (n ^ 2))) * A194980 (A038722 (n + 1)).toNat

end

end A195073.P1927798728518186610

/-!
# A195079: Fractalization of (1+[n/4]), where [ ]=floor.

The programs for A195079, there is no canonical definition to state claims against.
-/

/-! ## A195079.P402447425143061453

`A195097(A099375(n)+2+n)-1`
-/

namespace A195079.P402447425143061453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195097 (A099375 n + 2 + (n : ℤ)).toNat - 1

end

end A195079.P402447425143061453

/-! ## A195079.P14477105419240701486

`A195081(n+1)-C(∑[char[∑[n]]], 2)`
-/

namespace A195079.P14477105419240701486
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195081 (n + 1) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A195079.P14477105419240701486

/-! ## A195079.P15731013923208191748

`A002260(A195081(n+1))`
-/

namespace A195079.P15731013923208191748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A195081 (n + 1)).toNat

end

end A195079.P15731013923208191748

/-! ## A195079.P11003389850452902124

`A195081(n+1)-A057944(n)`
-/

namespace A195079.P11003389850452902124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195081 (n + 1) - A057944 n

end

end A195079.P11003389850452902124

/-! ## A195079.P16636806993116980448

`A002262(A195081(n+1)-1)+1`
-/

namespace A195079.P16636806993116980448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A195081 (n + 1) - 1).toNat + 1

end

end A195079.P16636806993116980448

/-! ## A195079.P10239106050804599427

`A131818(A195081(n+1)+1)-1`
-/

namespace A195079.P10239106050804599427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A195081 (n + 1) + 1).toNat - 1

end

end A195079.P10239106050804599427

/-! ## A195079.P11823320143365428018

`A195081(n+1)+n-A061885(n)`
-/

namespace A195079.P11823320143365428018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195081 (n + 1) + ((n : ℤ) - A061885 n)

end

end A195079.P11823320143365428018

/-! ## A195079.P14729545873879301075

`A004739(A195081(n+1)+A057944(n))`
-/

namespace A195079.P14729545873879301075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A195081 (n + 1) + A057944 n).toNat

end

end A195079.P14729545873879301075

/-! ## A195079.P18060246529167147724

`A195081(n+1)-A000217(A003056(n))`
-/

namespace A195079.P18060246529167147724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195081 (n + 1) - A000217 (A003056 n).toNat

end

end A195079.P18060246529167147724

/-! ## A195079.P1315890096430797707

`A195081(n+1)-A001971(A131507(n))`
-/

namespace A195079.P1315890096430797707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195081 (n + 1) - A001971 (A131507 n).toNat

end

end A195079.P1315890096430797707

/-!
# A195080: Interspersion fractally induced by A008621, a rectangular array, by antidiagonals.

The programs for A195080, there is no canonical definition to state claims against.
-/

/-! ## A195080.P11180335724325596997

`A194922(A195081(A194922(n+1)))`
-/

namespace A195080.P11180335724325596997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194922 (A195081 (A194922 (n + 1)).toNat).toNat

end

end A195080.P11180335724325596997

/-! ## A195080.P16195664119889480858

`A194922(n+1)+A034508(n+1)^A008863(n)`
-/

namespace A195080.P16195664119889480858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194922 (n + 1) : ℚ) + (A034508 (n + 1) : ℚ) ^ (A008863 n : ℤ)

end

end A195080.P16195664119889480858

/-! ## A195080.P13652487722779180444

`A038722(A195083(n+1))+A034508(n+1)^A008863(n)`
-/

namespace A195080.P13652487722779180444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038722 (A195083 (n + 1)).toNat : ℚ) + (A034508 (n + 1) : ℚ) ^ (A008863 n : ℤ)

end

end A195080.P13652487722779180444

/-!
# A195081: Inverse permutation of A195080; every positive integer occurs exactly once.

The programs for A195081, there is no canonical definition to state claims against.
-/

/-! ## A195081.P3908204450751705834

`A195079(n+1)+C(∑[char[∑[n]]], 2)`
-/

namespace A195081.P3908204450751705834
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A195081.P3908204450751705834

/-! ## A195081.P222376253002238154

`A195079(n+1)+A057944(n)`
-/

namespace A195081.P222376253002238154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (n + 1) + A057944 n

end

end A195081.P222376253002238154

/-! ## A195081.P17745399378243526273

`A195079(n+1)+n-A002262(n)`
-/

namespace A195081.P17745399378243526273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (n + 1) + ((n : ℤ) - A002262 n)

end

end A195081.P17745399378243526273

/-! ## A195081.P13155318777386135718

`A195079(n+1)+A061885(n)-n`
-/

namespace A195081.P13155318777386135718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (n + 1) + (A061885 n - (n : ℤ))

end

end A195081.P13155318777386135718

/-! ## A195081.P5684841231695046039

`A195079(n+1)-A025668(n+1)+n`
-/

namespace A195081.P5684841231695046039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (n + 1) - A025668 (n + 1) + (n : ℤ)

end

end A195081.P5684841231695046039

/-! ## A195081.P6778205642032958598

`A195079(n+1)+n+1-A002260(n+1)`
-/

namespace A195081.P6778205642032958598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A195081.P6778205642032958598

/-! ## A195081.P14437659906187264458

`A195079(n+1)+A000217(A003056(n))`
-/

namespace A195081.P14437659906187264458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (n + 1) + A000217 (A003056 n).toNat

end

end A195081.P14437659906187264458

/-! ## A195081.P16675550837690746080

`A195079(n+1)+A001971(A131507(n))`
-/

namespace A195081.P16675550837690746080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (n + 1) + A001971 (A131507 n).toNat

end

end A195081.P16675550837690746080

/-! ## A195081.P3351818711723804705

`A238952(A137688(n))+A195079(n+1)`
-/

namespace A195081.P3351818711723804705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238952 (A137688 n).toNat + A195079 (n + 1)

end

end A195081.P3351818711723804705

/-! ## A195081.P15664985797789975290

`A195079(n+1)+abs(A000005(A059268(n))-(n+1))`
-/

namespace A195081.P15664985797789975290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (n + 1) + |A000005 (A059268 n).toNat - (n + 1 : ℤ)|

end

end A195081.P15664985797789975290

/-!
# A195082: Fractalization of (1+[2*n/3]), where [ ] = floor.

The programs for A195082, there is no canonical definition to state claims against.
-/

/-! ## A195082.P3153065344401569898

`ceil((A253672(3*n)+1)/3)`
-/

namespace A195082.P3153065344401569898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A253672 (3 * n) + 1 : ℚ) / 3⌉

end

end A195082.P3153065344401569898

/-! ## A195082.P17130293101136767789

`A195096(n+1)-C(comp[∑[n-1]]-n, 2)`
-/

namespace A195082.P17130293101136767789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195096 (n + 1) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A195082.P17130293101136767789

/-! ## A195082.P14480065982460190594

`A002260(A195096(n+1))`
-/

namespace A195082.P14480065982460190594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A195096 (n + 1)).toNat

end

end A195082.P14480065982460190594

/-! ## A195082.P13910113842985050248

`A195096(n+1)-A057944(n)`
-/

namespace A195082.P13910113842985050248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195096 (n + 1) - A057944 n

end

end A195082.P13910113842985050248

/-! ## A195082.P10163426885358975898

`A002262(A195096(n+1)-1)+1`
-/

namespace A195082.P10163426885358975898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A195096 (n + 1) - 1).toNat + 1

end

end A195082.P10163426885358975898

/-! ## A195082.P3148677714453790758

`A131818(A195096(n+1)+1)-1`
-/

namespace A195082.P3148677714453790758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A195096 (n + 1) + 1).toNat - 1

end

end A195082.P3148677714453790758

/-! ## A195082.P3981103880343236153

`A195096(n+1)+n-A061885(n)`
-/

namespace A195082.P3981103880343236153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195096 (n + 1) + ((n : ℤ) - A061885 n)

end

end A195082.P3981103880343236153

/-! ## A195082.P3853356720258462042

`A195096(n+1)+n+1-A004201(n+1)`
-/

namespace A195082.P3853356720258462042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195096 (n + 1) + ((n + 1 : ℤ) - A004201 (n + 1))

end

end A195082.P3853356720258462042

/-! ## A195082.P5779856846660395399

`(A195096(n+1)+A094727(n+1))%comp[∑[n]]+1`
-/

namespace A195082.P5779856846660395399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195096 (n + 1) + A094727 (n + 1)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + 1

end

end A195082.P5779856846660395399

/-! ## A195082.P5293994931858478552

`A004739(A195096(n+1)+A057944(n))`
-/

namespace A195082.P5293994931858478552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A195096 (n + 1) + A057944 n).toNat

end

end A195082.P5293994931858478552

/-!
# A195084: a(2n-1) = 2-n, a(2n) = 2+n.

The programs for A195084, the canonical program `A195084.P3958675108645787129` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195084 has offset 0).

The definition of A195084 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195084.P17401046227694797006

`((2*n+1)*(-1)^n+7)/4`
-/

namespace A195084.P17401046227694797006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) * (-1) ^ n + 7 : ℚ) / 4

end

end A195084.P17401046227694797006

namespace A195084

/-- `((2*n+1)*(-1)^n+7)/4` -/
def P17401046227694797006.Spec : Prop :=
  ∀ n, P17401046227694797006.a n = (A195084 n : ℚ)

end A195084

/-! ## A195084.P3958675108645787129

`2-A001057(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A195084

/-- `2-A001057(n)` -/
def P3958675108645787129.Spec : Prop :=
  ∀ n, P3958675108645787129.a n = A195084 n

theorem P3958675108645787129.correct : P3958675108645787129.Spec := by
  intro n
  simp only [A195084]

end A195084

/-! ## A195084.P6026562454483944656

`Δ[lcm(2, n)/2]+1`
-/

namespace A195084.P6026562454483944656
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A195084.P6026562454483944656

namespace A195084

/-- `Δ[lcm(2, n)/2]+1` -/
def P6026562454483944656.Spec : Prop :=
  ∀ n, P6026562454483944656.a n = (A195084 n : ℚ)

end A195084

/-! ## A195084.P8042926733255730889

`Δ[n/gcd(2, n)]+1`
-/

namespace A195084.P8042926733255730889
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A195084.P8042926733255730889

namespace A195084

/-- `Δ[n/gcd(2, n)]+1` -/
def P8042926733255730889.Spec : Prop :=
  ∀ n, P8042926733255730889.a n = (A195084 n : ℚ)

end A195084

/-! ## A195084.P13782849810926552917

`Δ[gcd(n², C(n, 2))]+1`
-/

namespace A195084.P13782849810926552917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2) (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A195084.P13782849810926552917

namespace A195084

/-- `Δ[gcd(n², C(n, 2))]+1` -/
def P13782849810926552917.Spec : Prop :=
  ∀ n, P13782849810926552917.a n = A195084 n

end A195084

/-! ## A195084.P2853878089872751793

`∑[ogf((2+3x+2x^2)/(1+2x+x^2))]`
-/

namespace A195084.P2853878089872751793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 2] [1, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195084.P2853878089872751793

namespace A195084

/-- `∑[ogf((2+3x+2x^2)/(1+2x+x^2))]` -/
def P2853878089872751793.Spec : Prop :=
  ∀ n, P2853878089872751793.a n = A195084 n

end A195084

/-! ## A195084.P14791874200319357260

`ogf((2+3x+2x^2)/(1+x-x^2-x^3))`
-/

namespace A195084.P14791874200319357260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 2] [1, 1, -1, -1] n

end

end A195084.P14791874200319357260

namespace A195084

/-- `ogf((2+3x+2x^2)/(1+x-x^2-x^3))` -/
def P14791874200319357260.Spec : Prop :=
  ∀ n, P14791874200319357260.a n = A195084 n

end A195084

/-! ## A195084.P11178799757913332157

`a(n-2)+(-1)^n` with `a(0)=2, a(1)=1`
-/

namespace A195084.P11178799757913332157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 2) + (-1) ^ n

end

end A195084.P11178799757913332157

namespace A195084

/-- `a(n-2)+(-1)^n` -/
def P11178799757913332157.Spec : Prop :=
  ∀ n, P11178799757913332157.a n = A195084 n

end A195084

/-! ## A195084.P8745734873006720442

`4-a(n-1)-n%2` with `a(0)=2`
-/

namespace A195084.P8745734873006720442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 - a (n - 1) - ((n % 2 : ℕ) : ℤ)

end

end A195084.P8745734873006720442

namespace A195084

/-- `4-a(n-1)-n%2` -/
def P8745734873006720442.Spec : Prop :=
  ∀ n, P8745734873006720442.a n = A195084 n

end A195084

/-! ## A195084.P3397172689003626646

`4-(a(n-1)+and(1, n))` with `a(0)=2`
-/

namespace A195084.P3397172689003626646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 - (a (n - 1) + (Nat.land 1 n : ℤ))

end

end A195084.P3397172689003626646

namespace A195084

/-- `4-(a(n-1)+and(1, n))` -/
def P3397172689003626646.Spec : Prop :=
  ∀ n, P3397172689003626646.a n = A195084 n

end A195084

/-! ## A195084.P639906797296955657

`4-and(1, n)-a(n-1)` with `a(0)=2`
-/

namespace A195084.P639906797296955657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 - (Nat.land 1 n : ℤ) - a (n - 1)

end

end A195084.P639906797296955657

namespace A195084

/-- `4-and(1, n)-a(n-1)` -/
def P639906797296955657.Spec : Prop :=
  ∀ n, P639906797296955657.a n = A195084 n

end A195084

/-! ## A195084.P5678496600101469396

`∑[(-1)^n-a(n-1)]` with `a(0)=2, a(1)=-1`
-/

namespace A195084.P5678496600101469396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1] fun n f1 =>
  (-1) ^ n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195084.P5678496600101469396

namespace A195084

/-- `∑[(-1)^n-a(n-1)]` -/
def P5678496600101469396.Spec : Prop :=
  ∀ n, P5678496600101469396.a n = A195084 n

end A195084

/-! ## A195084.P10941734377594070536

`∑[n*floor((1-a(n-1))/n)]` with `a(0)=2`
-/

namespace A195084.P10941734377594070536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℤ) * ⌊(1 - f1 (n - 1) : ℚ) / (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195084.P10941734377594070536

namespace A195084

/-- `∑[n*floor((1-a(n-1))/n)]` -/
def P10941734377594070536.Spec : Prop :=
  ∀ n, P10941734377594070536.a n = A195084 n

end A195084

/-! ## A195084.P8912177683715059170

`∑[n/floor((1-a(n-1))/n)]` with `a(0)=2`
-/

namespace A195084.P8912177683715059170
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℚ) / (⌊(1 - f1 (n - 1)) / (n : ℚ)⌋ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195084.P8912177683715059170

namespace A195084

/-- `∑[n/floor((1-a(n-1))/n)]` -/
def P8912177683715059170.Spec : Prop :=
  ∀ n, P8912177683715059170.a n = (A195084 n : ℚ)

end A195084

/-! ## A195084.P781097336904992923

`2*a(n-2)-a(n-4)` with `a(0)=2, a(1)=1, a(2)=3, a(3)=0`
-/

namespace A195084.P781097336904992923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3, 0] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A195084.P781097336904992923

namespace A195084

/-- `2*a(n-2)-a(n-4)` -/
def P781097336904992923.Spec : Prop :=
  ∀ n, P781097336904992923.a n = A195084 n

end A195084

/-! ## A195084.P14157282881534428937

`floor(4-a(n-1)/n-a(n-1))` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A195084.P14157282881534428937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  ⌊4 - (a (n - 1) : ℚ) / (n : ℚ) - (a (n - 1) : ℚ)⌋

end

end A195084.P14157282881534428937

namespace A195084

/-- `floor(4-a(n-1)/n-a(n-1))` -/
def P14157282881534428937.Spec : Prop :=
  ∀ n, P14157282881534428937.a n = A195084 n

end A195084

/-! ## A195084.P13111182878408471268

`floor(a(n-2)+a(n-3)-a(n-1))` with `a(0)=2, a(1)=1, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A195084.P13111182878408471268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  a (n - 2) + (a (n - 3) - a (n - 1))

end

end A195084.P13111182878408471268

namespace A195084

/-- `floor(a(n-2)+a(n-3)-a(n-1))` -/
def P13111182878408471268.Spec : Prop :=
  ∀ n, P13111182878408471268.a n = A195084 n

end A195084

/-! ## A195084.P6257104986951932934

`floor(a(n-2)-floor(a(n-1)-a(n-3)))` with `a(0)=2, a(1)=1, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A195084.P6257104986951932934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  a (n - 2) - (a (n - 1) - a (n - 3))

end

end A195084.P6257104986951932934

namespace A195084

/-- `floor(a(n-2)-floor(a(n-1)-a(n-3)))` -/
def P6257104986951932934.Spec : Prop :=
  ∀ n, P6257104986951932934.a n = A195084 n

end A195084

/-! ## A195084.P13280459752116654117

`A130472(n)+2`
-/

namespace A195084.P13280459752116654117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n + 2

end

end A195084.P13280459752116654117

namespace A195084

/-- `A130472(n)+2` -/
def P13280459752116654117.Spec : Prop :=
  ∀ n, P13280459752116654117.a n = A195084 n

end A195084

/-! ## A195084.P6537692383108708514

`∑[A274922(n)]+1`
-/

namespace A195084.P6537692383108708514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A195084.P6537692383108708514

namespace A195084

/-- `∑[A274922(n)]+1` -/
def P6537692383108708514.Spec : Prop :=
  ∀ n, P6537692383108708514.a n = A195084 n

end A195084

/-!
# A195085: Positive integers n for which there exist exactly two integers k in {1,2,3,...,n-1} such that k*n is square.

The programs for A195085, the canonical program `A195085.P9820044450382289561` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195085 has offset 1).

The definition of A195085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195085.P9820044450382289561

`record[9*∏{p}[n, #]]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A195085

/-- `record[9*∏{p}[n, #]]` -/
def P9820044450382289561.Spec : Prop :=
  ∀ n, (P9820044450382289561.a n : ℤ) = A195085 (n + 1)

theorem P9820044450382289561.correct : P9820044450382289561.Spec := by
  intro n
  simp only [A195085, Nat.add_sub_cancel]

end A195085

/-! ## A195085.P2642300171412720738

`9*comp[A105570(n)]`
-/

namespace A195085.P2642300171412720738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A195085.P2642300171412720738

namespace A195085

/-- `9*comp[A105570(n)]` -/
def P2642300171412720738.Spec : Prop :=
  ∀ n, (P2642300171412720738.a n : ℤ) = A195085 (n + 1)

end A195085

/-! ## A195085.P4122373101890404759

`9*A005117(n+1)`
-/

namespace A195085.P4122373101890404759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A005117 (n + 1)

end

end A195085.P4122373101890404759

namespace A195085

/-- `9*A005117(n+1)` -/
def P4122373101890404759.Spec : Prop :=
  ∀ n, P4122373101890404759.a n = A195085 (n + 1)

end A195085

/-! ## A195085.P8216044672303293639

`9*sqrt(A062503(n+1))`
-/

namespace A195085.P8216044672303293639
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  9 * Real.sqrt (A062503 (n + 1) : ℝ)

end

end A195085.P8216044672303293639

namespace A195085

/-- `9*sqrt(A062503(n+1))` -/
def P8216044672303293639.Spec : Prop :=
  ∀ n, P8216044672303293639.a n = (A195085 (n + 1) : ℝ)

end A195085

/-! ## A195085.P15872437599442489091

`record[9*A007913(n+1)]`
-/

namespace A195085.P15872437599442489091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195085.P15872437599442489091

namespace A195085

/-- `record[9*A007913(n+1)]` -/
def P15872437599442489091.Spec : Prop :=
  ∀ n, P15872437599442489091.a n = A195085 (n + 1)

end A195085

/-! ## A195085.P3995667371941237657

`record[9*A007947(n+1)]`
-/

namespace A195085.P3995667371941237657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195085.P3995667371941237657

namespace A195085

/-- `record[9*A007947(n+1)]` -/
def P3995667371941237657.Spec : Prop :=
  ∀ n, P3995667371941237657.a n = A195085 (n + 1)

end A195085

/-! ## A195085.P18246657441788704443

`record[9*A055231(n+1)]`
-/

namespace A195085.P18246657441788704443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195085.P18246657441788704443

namespace A195085

/-- `record[9*A055231(n+1)]` -/
def P18246657441788704443.Spec : Prop :=
  ∀ n, P18246657441788704443.a n = A195085 (n + 1)

end A195085

/-! ## A195085.P3135305491326841184

`record[9*A182938(n+1)]`
-/

namespace A195085.P3135305491326841184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A182938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195085.P3135305491326841184

namespace A195085

/-- `record[9*A182938(n+1)]` -/
def P3135305491326841184.Spec : Prop :=
  ∀ n, P3135305491326841184.a n = A195085 (n + 1)

end A195085

/-! ## A195085.P9167624657406816856

`9*A088610(2*n+1)`
-/

namespace A195085.P9167624657406816856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A088610 (2 * n + 1)

end

end A195085.P9167624657406816856

namespace A195085

/-- `9*A088610(2*n+1)` -/
def P9167624657406816856.Spec : Prop :=
  ∀ n, P9167624657406816856.a n = A195085 (n + 1)

end A195085

/-! ## A195085.P11701292550766747576

`∩[9*n, A082293(n+2)]`
-/

namespace A195085.P11701292550766747576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195085.P11701292550766747576

namespace A195085

/-- `∩[9*n, A082293(n+2)]` -/
def P11701292550766747576.Spec : Prop :=
  ∀ n, (P11701292550766747576.a n : ℤ) = A195085 (n + 1)

end A195085

/-! ## A195085.P14997063585911397438

`9*record[(n+1)/A000190(n+1)]`
-/

namespace A195085.P14997063585911397438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000190 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195085.P14997063585911397438

namespace A195085

/-- `9*record[(n+1)/A000190(n+1)]` -/
def P14997063585911397438.Spec : Prop :=
  ∀ n, P14997063585911397438.a n = (A195085 (n + 1) : ℚ)

end A195085

/-! ## A195085.P6931128283670968800

`record[(n+1)*(3*A008683(n+1))²]`
-/

namespace A195085.P6931128283670968800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (3 * A008683 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195085.P6931128283670968800

namespace A195085

/-- `record[(n+1)*(3*A008683(n+1))²]` -/
def P6931128283670968800.Spec : Prop :=
  ∀ n, P6931128283670968800.a n = A195085 (n + 1)

end A195085

/-! ## A195085.P17123286085925281815

`9*record[(n+1)/A000188(n+1)²]`
-/

namespace A195085.P17123286085925281815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000188 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195085.P17123286085925281815

namespace A195085

/-- `9*record[(n+1)/A000188(n+1)²]` -/
def P17123286085925281815.Spec : Prop :=
  ∀ n, P17123286085925281815.a n = (A195085 (n + 1) : ℚ)

end A195085

/-! ## A195085.P14138270022259879176

`A008591(A005117(n+1))`
-/

namespace A195085.P14138270022259879176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A005117 (n + 1)).toNat

end

end A195085.P14138270022259879176

namespace A195085

/-- `A008591(A005117(n+1))` -/
def P14138270022259879176.Spec : Prop :=
  ∀ n, P14138270022259879176.a n = A195085 (n + 1)

end A195085

/-! ## A195085.P12302634424177785643

`A055264(A133466(n+1))`
-/

namespace A195085.P12302634424177785643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 (A133466 (n + 1)).toNat

end

end A195085.P12302634424177785643

namespace A195085

/-- `A055264(A133466(n+1))` -/
def P12302634424177785643.Spec : Prop :=
  ∀ n, P12302634424177785643.a n = A195085 (n + 1)

end A195085

/-! ## A195085.P7315265711965753008

`A072905(record[A072905(n+1)])`
-/

namespace A195085.P7315265711965753008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072905 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A195085.P7315265711965753008

namespace A195085

/-- `A072905(record[A072905(n+1)])` -/
def P7315265711965753008.Spec : Prop :=
  ∀ n, P7315265711965753008.a n = A195085 (n + 1)

end A195085

/-! ## A195085.P17853562250683546467

`∩[A082293(n+1), A008591(n)]`
-/

namespace A195085.P17853562250683546467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195085.P17853562250683546467

namespace A195085

/-- `∩[A082293(n+1), A008591(n)]` -/
def P17853562250683546467.Spec : Prop :=
  ∀ n, (P17853562250683546467.a n : ℤ) = A195085 (n + 1)

end A195085

/-! ## A195085.P13978433688530361995

`∩[A082293(n+1), A217373(n+1)]`
-/

namespace A195085.P13978433688530361995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195085.P13978433688530361995

namespace A195085

/-- `∩[A082293(n+1), A217373(n+1)]` -/
def P13978433688530361995.Spec : Prop :=
  ∀ n, (P13978433688530361995.a n : ℤ) = A195085 (n + 1)

end A195085

/-! ## A195085.P2760336640242326239

`9*record[A024000(A285718(n+1))+n]`
-/

namespace A195085.P2760336640242326239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A285718 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195085.P2760336640242326239

namespace A195085

/-- `9*record[A024000(A285718(n+1))+n]` -/
def P2760336640242326239.Spec : Prop :=
  ∀ n, P2760336640242326239.a n = A195085 (n + 1)

end A195085

/-! ## A195085.P5862360881413043227

`9*record[n+2-gcd(A000010(n+1)-(n+2), A008683(n+1))]`
-/

namespace A195085.P5862360881413043227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Int.gcd (A000010 (n + 1) - (n + 2 : ℤ)) (A008683 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195085.P5862360881413043227

namespace A195085

/-- `9*record[n+2-gcd(A000010(n+1)-(n+2), A008683(n+1))]` -/
def P5862360881413043227.Spec : Prop :=
  ∀ n, P5862360881413043227.a n = A195085 (n + 1)

end A195085

/-!
# A195086: Numbers k such that (number of prime factors of k counted with multiplicity) less (number of distinct prime factors of k) = 2.

The programs for A195086, the canonical program `A195086.P16313270829479448307` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195086 has offset 1).

The definition of A195086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195086.P16313270829479448307

`∪[A048109(n+1), A375144(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A195086

/-- `∪[A048109(n+1), A375144(n+1)]` -/
def P16313270829479448307.Spec : Prop :=
  ∀ n, (P16313270829479448307.a n : ℤ) = A195086 (n + 1)

theorem P16313270829479448307.correct : P16313270829479448307.Spec := by
  intro n
  simp only [A195086, Nat.add_sub_cancel]

end A195086

/-! ## A195086.P4773515182182442880

`eq[2, A046660(n+1)]+1`
-/

namespace A195086.P4773515182182442880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195086.P4773515182182442880

namespace A195086

/-- `eq[2, A046660(n+1)]+1` -/
def P4773515182182442880.Spec : Prop :=
  ∀ n, (P4773515182182442880.a n : ℤ) = A195086 (n + 1)

end A195086

/-! ## A195086.P14020690279119054218

`eq[4, A162510(n+1)]+1`
-/

namespace A195086.P14020690279119054218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195086.P14020690279119054218

namespace A195086

/-- `eq[4, A162510(n+1)]+1` -/
def P14020690279119054218.Spec : Prop :=
  ∀ n, (P14020690279119054218.a n : ℤ) = A195086 (n + 1)

end A195086

/-! ## A195086.P9559458664988128797

`eq[3, A212180(n+3)]+3`
-/

namespace A195086.P9559458664988128797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212180 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A195086.P9559458664988128797

namespace A195086

/-- `eq[3, A212180(n+3)]+3` -/
def P9559458664988128797.Spec : Prop :=
  ∀ n, (P9559458664988128797.a n : ℤ) = A195086 (n + 1)

end A195086

/-! ## A195086.P11616455921144751868

`eq[2, A046660(A028310(n))]`
-/

namespace A195086.P11616455921144751868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195086.P11616455921144751868

namespace A195086

/-- `eq[2, A046660(A028310(n))]` -/
def P11616455921144751868.Spec : Prop :=
  ∀ n, (P11616455921144751868.a n : ℤ) = A195086 (n + 1)

end A195086

/-! ## A195086.P14227474038319618329

`A020725(eq[2, A046660(n+1)])`
-/

namespace A195086.P14227474038319618329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195086.P14227474038319618329

namespace A195086

/-- `A020725(eq[2, A046660(n+1)])` -/
def P14227474038319618329.Spec : Prop :=
  ∀ n, P14227474038319618329.a n = A195086 (n + 1)

end A195086

/-! ## A195086.P16418836828539832808

`A065475(eq[2, A046660(n+1)])`
-/

namespace A195086.P16418836828539832808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195086.P16418836828539832808

namespace A195086

/-- `A065475(eq[2, A046660(n+1)])` -/
def P16418836828539832808.Spec : Prop :=
  ∀ n, P16418836828539832808.a n = A195086 (n + 1)

end A195086

/-! ## A195086.P5993710800128106967

`A326178(eq[2, A046660(n+1)])`
-/

namespace A195086.P5993710800128106967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195086.P5993710800128106967

namespace A195086

/-- `A326178(eq[2, A046660(n+1)])` -/
def P5993710800128106967.Spec : Prop :=
  ∀ n, P5993710800128106967.a n = A195086 (n + 1)

end A195086

/-! ## A195086.P9869449787185448344

`A020725(eq[4, A162510(n+1)])`
-/

namespace A195086.P9869449787185448344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195086.P9869449787185448344

namespace A195086

/-- `A020725(eq[4, A162510(n+1)])` -/
def P9869449787185448344.Spec : Prop :=
  ∀ n, P9869449787185448344.a n = A195086 (n + 1)

end A195086

/-! ## A195086.P4947363060074561008

`eq[2, A001222(A003557(n+1))]+1`
-/

namespace A195086.P4947363060074561008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003557 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195086.P4947363060074561008

namespace A195086

/-- `eq[2, A001222(A003557(n+1))]+1` -/
def P4947363060074561008.Spec : Prop :=
  ∀ n, (P4947363060074561008.a n : ℤ) = A195086 (n + 1)

end A195086

/-! ## A195086.P1525089617080636617

`eq[2, A056239(A000688(n+1))]+1`
-/

namespace A195086.P1525089617080636617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A000688 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195086.P1525089617080636617

namespace A195086

/-- `eq[2, A056239(A000688(n+1))]+1` -/
def P1525089617080636617.Spec : Prop :=
  ∀ n, (P1525089617080636617.a n : ℤ) = A195086 (n + 1)

end A195086

/-! ## A195086.P3012632417754510722

`eq[2, A105700(A000190(n+1))]+1`
-/

namespace A195086.P3012632417754510722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A000190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195086.P3012632417754510722

namespace A195086

/-- `eq[2, A105700(A000190(n+1))]+1` -/
def P3012632417754510722.Spec : Prop :=
  ∀ n, (P3012632417754510722.a n : ℤ) = A195086 (n + 1)

end A195086

/-! ## A195086.P9913789493385363781

`eq[2, A046660(A138153(n+1))]`
-/

namespace A195086.P9913789493385363781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195086.P9913789493385363781

namespace A195086

/-- `eq[2, A046660(A138153(n+1))]` -/
def P9913789493385363781.Spec : Prop :=
  ∀ n, (P9913789493385363781.a n : ℤ) = A195086 (n + 1)

end A195086

/-!
# A195087: Numbers k such that (number of prime factors of k counted with multiplicity) less (number of distinct prime factors of k) = 3.

The programs for A195087, the canonical program `A195087.P7404361549987766515` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195087 has offset 1).

The definition of A195087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195087.P7404361549987766515

`eq[3, A001222(A336551(n+1)+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A195087

/-- `eq[3, A001222(A336551(n+1)+1)]+1` -/
def P7404361549987766515.Spec : Prop :=
  ∀ n, (P7404361549987766515.a n : ℤ) = A195087 (n + 1)

theorem P7404361549987766515.correct : P7404361549987766515.Spec := by
  intro n
  simp only [A195087, Nat.add_sub_cancel]

end A195087

/-! ## A195087.P8733711983753721695

`eq[3, A046660(n+1)]+1`
-/

namespace A195087.P8733711983753721695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195087.P8733711983753721695

namespace A195087

/-- `eq[3, A046660(n+1)]+1` -/
def P8733711983753721695.Spec : Prop :=
  ∀ n, (P8733711983753721695.a n : ℤ) = A195087 (n + 1)

end A195087

/-! ## A195087.P4835532878595312335

`eq[8, A162510(n+1)]+1`
-/

namespace A195087.P4835532878595312335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195087.P4835532878595312335

namespace A195087

/-- `eq[8, A162510(n+1)]+1` -/
def P4835532878595312335.Spec : Prop :=
  ∀ n, (P4835532878595312335.a n : ℤ) = A195087 (n + 1)

end A195087

/-! ## A195087.P6049473859363903145

`eq[3, A046660(A028310(n))]`
-/

namespace A195087.P6049473859363903145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195087.P6049473859363903145

namespace A195087

/-- `eq[3, A046660(A028310(n))]` -/
def P6049473859363903145.Spec : Prop :=
  ∀ n, (P6049473859363903145.a n : ℤ) = A195087 (n + 1)

end A195087

/-! ## A195087.P17645845833576472707

`A020725(eq[3, A046660(n+1)])`
-/

namespace A195087.P17645845833576472707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195087.P17645845833576472707

namespace A195087

/-- `A020725(eq[3, A046660(n+1)])` -/
def P17645845833576472707.Spec : Prop :=
  ∀ n, P17645845833576472707.a n = A195087 (n + 1)

end A195087

/-! ## A195087.P16057133026193404251

`A065475(eq[3, A046660(n+1)])`
-/

namespace A195087.P16057133026193404251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195087.P16057133026193404251

namespace A195087

/-- `A065475(eq[3, A046660(n+1)])` -/
def P16057133026193404251.Spec : Prop :=
  ∀ n, P16057133026193404251.a n = A195087 (n + 1)

end A195087

/-! ## A195087.P10497445277563355745

`A326178(eq[3, A046660(n+1)])`
-/

namespace A195087.P10497445277563355745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195087.P10497445277563355745

namespace A195087

/-- `A326178(eq[3, A046660(n+1)])` -/
def P10497445277563355745.Spec : Prop :=
  ∀ n, P10497445277563355745.a n = A195087 (n + 1)

end A195087

/-! ## A195087.P8317391272636700605

`eq[3, A001222(A003557(n+1))]+1`
-/

namespace A195087.P8317391272636700605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003557 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195087.P8317391272636700605

namespace A195087

/-- `eq[3, A001222(A003557(n+1))]+1` -/
def P8317391272636700605.Spec : Prop :=
  ∀ n, (P8317391272636700605.a n : ℤ) = A195087 (n + 1)

theorem P8317391272636700605.correct : P8317391272636700605.Spec := by
  intro n
  simp only [A195087, Nat.add_sub_cancel, A195087.P8317391272636700605.f1, A195087.P8317391272636700605.f2, A195087.P8317391272636700605.a, A195087.P7404361549987766515.f1, A195087.P7404361549987766515.f2, A195087.P7404361549987766515.a, A001222, A001222.P11318177267732088261.a, A003557, A003557.P6364735403900941810.a, A336551, A336551.P8666843674191054020.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195087

/-!
# A195088: Numbers k such that (number of prime factors of k counted with multiplicity) less (number of distinct prime factors of k) = 4.

The programs for A195088, the canonical program `A195088.P5249009362894573019` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195088 has offset 1).

The definition of A195088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195088.P5249009362894573019

`eq[4, A046660(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A195088

/-- `eq[4, A046660(n+1)]+1` -/
def P5249009362894573019.Spec : Prop :=
  ∀ n, (P5249009362894573019.a n : ℤ) = A195088 (n + 1)

theorem P5249009362894573019.correct : P5249009362894573019.Spec := by
  intro n
  simp only [A195088, Nat.add_sub_cancel]

end A195088

/-! ## A195088.P8491213842287062378

`eq[4, A046660(A028310(n))]`
-/

namespace A195088.P8491213842287062378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195088.P8491213842287062378

namespace A195088

/-- `eq[4, A046660(A028310(n))]` -/
def P8491213842287062378.Spec : Prop :=
  ∀ n, (P8491213842287062378.a n : ℤ) = A195088 (n + 1)

end A195088

/-! ## A195088.P3880013940064567980

`A020725(eq[4, A046660(n+1)])`
-/

namespace A195088.P3880013940064567980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195088.P3880013940064567980

namespace A195088

/-- `A020725(eq[4, A046660(n+1)])` -/
def P3880013940064567980.Spec : Prop :=
  ∀ n, P3880013940064567980.a n = A195088 (n + 1)

end A195088

/-! ## A195088.P492278023334152365

`A065475(eq[4, A046660(n+1)])`
-/

namespace A195088.P492278023334152365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195088.P492278023334152365

namespace A195088

/-- `A065475(eq[4, A046660(n+1)])` -/
def P492278023334152365.Spec : Prop :=
  ∀ n, P492278023334152365.a n = A195088 (n + 1)

end A195088

/-! ## A195088.P10571976173947361359

`A326178(eq[4, A046660(n+1)])`
-/

namespace A195088.P10571976173947361359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195088.P10571976173947361359

namespace A195088

/-- `A326178(eq[4, A046660(n+1)])` -/
def P10571976173947361359.Spec : Prop :=
  ∀ n, P10571976173947361359.a n = A195088 (n + 1)

end A195088

/-! ## A195088.P11189422123619256849

`eq[4, A001222(A003557(n+2))]+2`
-/

namespace A195088.P11189422123619256849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003557 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A195088.P11189422123619256849

namespace A195088

/-- `eq[4, A001222(A003557(n+2))]+2` -/
def P11189422123619256849.Spec : Prop :=
  ∀ n, (P11189422123619256849.a n : ℤ) = A195088 (n + 1)

end A195088

/-! ## A195088.P9093463579895384223

`eq[4, A046660(A060000(n+1))]`
-/

namespace A195088.P9093463579895384223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195088.P9093463579895384223

namespace A195088

/-- `eq[4, A046660(A060000(n+1))]` -/
def P9093463579895384223.Spec : Prop :=
  ∀ n, (P9093463579895384223.a n : ℤ) = A195088 (n + 1)

end A195088

/-!
# A195089: Numbers k such that (number of prime factors of k counted with multiplicity) less (number of distinct prime factors of k) = 5.

The programs for A195089, the canonical program `A195089.P9188432213038662582` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195089 has offset 1).

The definition of A195089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195089.P9188432213038662582

`eq[5, A046660(A028310(n))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A195089

/-- `eq[5, A046660(A028310(n))]` -/
def P9188432213038662582.Spec : Prop :=
  ∀ n, (P9188432213038662582.a n : ℤ) = A195089 (n + 1)

theorem P9188432213038662582.correct : P9188432213038662582.Spec := by
  intro n
  simp only [A195089, Nat.add_sub_cancel]

end A195089

/-! ## A195089.P11569803198022503842

`A020725(eq[5, A046660(n+1)])`
-/

namespace A195089.P11569803198022503842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195089.P11569803198022503842

namespace A195089

/-- `A020725(eq[5, A046660(n+1)])` -/
def P11569803198022503842.Spec : Prop :=
  ∀ n, P11569803198022503842.a n = A195089 (n + 1)

end A195089

/-! ## A195089.P6722638375656698179

`A065475(eq[5, A046660(n+1)])`
-/

namespace A195089.P6722638375656698179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195089.P6722638375656698179

namespace A195089

/-- `A065475(eq[5, A046660(n+1)])` -/
def P6722638375656698179.Spec : Prop :=
  ∀ n, P6722638375656698179.a n = A195089 (n + 1)

end A195089

/-! ## A195089.P18256840948022192643

`A326178(eq[5, A046660(n+1)])`
-/

namespace A195089.P18256840948022192643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195089.P18256840948022192643

namespace A195089

/-- `A326178(eq[5, A046660(n+1)])` -/
def P18256840948022192643.Spec : Prop :=
  ∀ n, P18256840948022192643.a n = A195089 (n + 1)

end A195089

/-! ## A195089.P4407415447157099895

`eq[5, A046660(A138153(n+1))]`
-/

namespace A195089.P4407415447157099895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195089.P4407415447157099895

namespace A195089

/-- `eq[5, A046660(A138153(n+1))]` -/
def P4407415447157099895.Spec : Prop :=
  ∀ n, (P4407415447157099895.a n : ℤ) = A195089 (n + 1)

end A195089

/-!
# A195090: Numbers k such that (number of prime factors of k counted with multiplicity) less (number of distinct prime factors of k) = 6.

The programs for A195090, there is no canonical definition to state claims against.
-/

/-! ## A195090.P12837560915068772503

`A195092(n+1)/A010702(A126646(n))`
-/

namespace A195090.P12837560915068772503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195092 (n + 1) : ℚ) / (A010702 (A126646 n).toNat : ℚ)

end

end A195090.P12837560915068772503

/-! ## A195090.P18289485890196748199

`A195091(n+1)/A025511(A287384(n))`
-/

namespace A195090.P18289485890196748199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195091 (n + 1) : ℚ) / (A025511 (A287384 n).toNat : ℚ)

end

end A195090.P18289485890196748199

/-! ## A195090.P4052437462311516089

`A032742(lcm(A061666(n), A195091(n+1)))`
-/

namespace A195090.P4052437462311516089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (Int.lcm (A061666 n) (A195091 (n + 1)))

end

end A195090.P4052437462311516089

/-! ## A195090.P8329227547109156887

`A195093(n+1)/A000005(A046301(n+1))`
-/

namespace A195090.P8329227547109156887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195093 (n + 1) : ℚ) / (A000005 (A046301 (n + 1)).toNat : ℚ)

end

end A195090.P8329227547109156887

/-! ## A195090.P13059023277575062030

`A195091(n+1)/A000034(A048630(n+1))`
-/

namespace A195090.P13059023277575062030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195091 (n + 1) : ℚ) / (A000034 (A048630 (n + 1)).toNat : ℚ)

end

end A195090.P13059023277575062030

/-!
# A195091: Numbers k such that (number of prime factors of k counted with multiplicity) less (number of distinct prime factors of k) = 7.

The programs for A195091, there is no canonical definition to state claims against.
-/

/-! ## A195091.P7058009863060727923

`A195092(n+1)/A034444(A002496(n+1))`
-/

namespace A195091.P7058009863060727923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195092 (n + 1) : ℚ) / (A034444 (A002496 (n + 1)).toNat : ℚ)

end

end A195091.P7058009863060727923

/-! ## A195091.P11199682661425658605

`A195092(n+1)/A020639(A109096(n+1))`
-/

namespace A195091.P11199682661425658605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195092 (n + 1) : ℚ) / (A020639 (A109096 (n + 1)).toNat : ℚ)

end

end A195091.P11199682661425658605

/-! ## A195091.P15159639762437926660

`A195092(n+1)/A000005(A175196(n+1))`
-/

namespace A195091.P15159639762437926660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195092 (n + 1) : ℚ) / (A000005 (A175196 (n + 1)).toNat : ℚ)

end

end A195091.P15159639762437926660

/-! ## A195091.P14539299321943372768

`A195093(n+1)/A153727(A078855(n+1))`
-/

namespace A195091.P14539299321943372768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195093 (n + 1) : ℚ) / (A153727 (A078855 (n + 1)).toNat : ℚ)

end

end A195091.P14539299321943372768

/-!
# A195092: Numbers k such that (number of prime factors of k counted with multiplicity) less (number of distinct prime factors of k) = 8.

The programs for A195092, there is no canonical definition to state claims against.
-/

/-! ## A195092.P16629225639745679630

`A195093(n+1)/A364874(3*n+4)`
-/

namespace A195092.P16629225639745679630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195093 (n + 1) : ℚ) / (A364874 (3 * n + 4) : ℚ)

end

end A195092.P16629225639745679630

/-! ## A195092.P13141592782286595241

`A195069(n+1)/A040002(A001752(n))`
-/

namespace A195092.P13141592782286595241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195069 (n + 1) : ℚ) / (A040002 (A001752 n).toNat : ℚ)

end

end A195092.P13141592782286595241

/-! ## A195092.P16314602264655472978

`A195093(n+1)/A020639(A304363(n))`
-/

namespace A195092.P16314602264655472978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195093 (n + 1) : ℚ) / (A020639 (A304363 n).toNat : ℚ)

end

end A195092.P16314602264655472978

/-! ## A195092.P16056268855256460817

`A195093(n+1)/A020639(A213362(n+1))`
-/

namespace A195092.P16056268855256460817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195093 (n + 1) : ℚ) / (A020639 (A213362 (n + 1)).toNat : ℚ)

end

end A195092.P16056268855256460817

/-! ## A195092.P17376629195116733614

`A195069(n+1)/A266249(A334169(2*n+3))`
-/

namespace A195092.P17376629195116733614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195069 (n + 1) : ℚ) / (A266249 (A334169 (2 * n + 3)).toNat : ℚ)

end

end A195092.P17376629195116733614

/-!
# A195093: Numbers k such that (number of prime factors of k counted with multiplicity) less (number of distinct prime factors of k) = 9.

The programs for A195093, there is no canonical definition to state claims against.
-/

/-! ## A195093.P3473990793776994062

`A195069(n+1)/A040015(A052333(n+1))`
-/

namespace A195093.P3473990793776994062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195069 (n + 1) : ℚ) / (A040015 (A052333 (n + 1)).toNat : ℚ)

end

end A195093.P3473990793776994062

/-! ## A195093.P17232797757115738922

`A195069(n+1)/A000005(A095184(n+1))`
-/

namespace A195093.P17232797757115738922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195069 (n + 1) : ℚ) / (A000005 (A095184 (n + 1)).toNat : ℚ)

end

end A195093.P17232797757115738922

/-! ## A195093.P11271373437593727422

`A195069(n+1)/A000005(A103966(n+1))`
-/

namespace A195093.P11271373437593727422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195069 (n + 1) : ℚ) / (A000005 (A103966 (n + 1)).toNat : ℚ)

end

end A195093.P11271373437593727422

/-! ## A195093.P6071093188012676419

`A195069(n+1)/A000005(A108384(n+1))`
-/

namespace A195093.P6071093188012676419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195069 (n + 1) : ℚ) / (A000005 (A108384 (n + 1)).toNat : ℚ)

end

end A195093.P6071093188012676419

/-! ## A195093.P2901923567317727457

`A273943(A195069(n+1))`
-/

namespace A195093.P2901923567317727457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A195069 (n + 1)).toNat

end

end A195093.P2901923567317727457

/-!
# A195094: G.f.: Sum_{n>=1} -moebius(2*n)*x^n/(1-x^n)^3.

The programs for A195094, the canonical program `A195094.P15185484469410605359` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195094 has offset 1).

The definition of A195094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195094.P620068005037092595

`∑{d}[n+1, A023896(#)*A062570((n+1)/#)]`
-/

namespace A195094.P620068005037092595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A062570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A195094.P620068005037092595

namespace A195094

/-- `∑{d}[n+1, A023896(#)*A062570((n+1)/#)]` -/
def P620068005037092595.Spec : Prop :=
  ∀ n, P620068005037092595.a n = A195094 (n + 1)

end A195094

/-! ## A195094.P15185484469410605359

`∑{d}[n+1, A000217(#)*A087003((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A195094

/-- `∑{d}[n+1, A000217(#)*A087003((n+1)/#)]` -/
def P15185484469410605359.Spec : Prop :=
  ∀ n, P15185484469410605359.a n = A195094 (n + 1)

theorem P15185484469410605359.correct : P15185484469410605359.Spec := by
  intro n
  simp only [A195094, Nat.add_sub_cancel]

end A195094

/-! ## A195094.P10291756157878590693

`∑{d}[n+1, A007438(#)*A209229((n+1)/#)]`
-/

namespace A195094.P10291756157878590693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007438 d * A209229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A195094.P10291756157878590693

namespace A195094

/-- `∑{d}[n+1, A007438(#)*A209229((n+1)/#)]` -/
def P10291756157878590693.Spec : Prop :=
  ∀ n, P10291756157878590693.a n = A195094 (n + 1)

end A195094

/-! ## A195094.P9125030888253768276

`∑{d}[n+1, A001511(#)*A326828((n+1)/#)]`
-/

namespace A195094.P9125030888253768276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A326828 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A195094.P9125030888253768276

namespace A195094

/-- `∑{d}[n+1, A001511(#)*A326828((n+1)/#)]` -/
def P9125030888253768276.Spec : Prop :=
  ∀ n, P9125030888253768276.a n = A195094 (n + 1)

end A195094

/-! ## A195094.P14190661702562613993

`∑{d}[n+1, A007437(#)*A327276((n+1)/#)]`
-/

namespace A195094.P14190661702562613993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007437 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A195094.P14190661702562613993

namespace A195094

/-- `∑{d}[n+1, A007437(#)*A327276((n+1)/#)]` -/
def P14190661702562613993.Spec : Prop :=
  ∀ n, P14190661702562613993.a n = A195094 (n + 1)

end A195094

/-! ## A195094.P14646874051789759200

`∑{d}[n+1, A008683(#)*A338045((n+1)/#)]`
-/

namespace A195094.P14646874051789759200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A338045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A195094.P14646874051789759200

namespace A195094

/-- `∑{d}[n+1, A008683(#)*A338045((n+1)/#)]` -/
def P14646874051789759200.Spec : Prop :=
  ∀ n, P14646874051789759200.a n = A195094 (n + 1)

end A195094

/-! ## A195094.P16748059954779226272

`∑{d}[n+1, A309731(#)*A326938((n+1)/#)]`
-/

namespace A195094.P16748059954779226272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309731 d * A326938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A195094.P16748059954779226272

namespace A195094

/-- `∑{d}[n+1, A309731(#)*A326938((n+1)/#)]` -/
def P16748059954779226272.Spec : Prop :=
  ∀ n, P16748059954779226272.a n = A195094 (n + 1)

end A195094

/-! ## A195094.P18124590388237217819

`∑{d}[n+1, A309322(#)*A349341((n+1)/#)]`
-/

namespace A195094.P18124590388237217819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309322 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A195094.P18124590388237217819

namespace A195094

/-- `∑{d}[n+1, A309322(#)*A349341((n+1)/#)]` -/
def P18124590388237217819.Spec : Prop :=
  ∀ n, P18124590388237217819.a n = A195094 (n + 1)

end A195094

/-! ## A195094.P1961377286512230503

`∑{d}[n+1, A359591(#)*A373189((n+1)/#)]`
-/

namespace A195094.P1961377286512230503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359591 d * A373189 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A195094.P1961377286512230503

namespace A195094

/-- `∑{d}[n+1, A359591(#)*A373189((n+1)/#)]` -/
def P1961377286512230503.Spec : Prop :=
  ∀ n, P1961377286512230503.a n = A195094 (n + 1)

end A195094

/-! ## A195094.P1309891696222396217

`∑{d}[n+1, A007438(#)*A036987((n+1)/#-1)]`
-/

namespace A195094.P1309891696222396217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007438 d * A036987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A195094.P1309891696222396217

namespace A195094

/-- `∑{d}[n+1, A007438(#)*A036987((n+1)/#-1)]` -/
def P1309891696222396217.Spec : Prop :=
  ∀ n, P1309891696222396217.a n = A195094 (n + 1)

end A195094

/-! ## A195094.P1687715886408556202

`A048240(2*(n+1))/3`
-/

namespace A195094.P1687715886408556202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048240 (2 * (n + 1)) : ℚ) / 3

end

end A195094.P1687715886408556202

namespace A195094

/-- `A048240(2*(n+1))/3` -/
def P1687715886408556202.Spec : Prop :=
  ∀ n, P1687715886408556202.a n = (A195094 (n + 1) : ℚ)

end A195094

/-!
# A195096: Inverse permutation of A195083; every positive integer occurs exactly once.

The programs for A195096, there is no canonical definition to state claims against.
-/

/-! ## A195096.P6586475800600190022

`A195082(n+1)+C(∑[char[∑[n]]], 2)`
-/

namespace A195096.P6586475800600190022
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195082 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A195096.P6586475800600190022

/-! ## A195096.P1049902956057672874

`A195082(n+1)+A057944(n)`
-/

namespace A195096.P1049902956057672874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195082 (n + 1) + A057944 n

end

end A195096.P1049902956057672874

/-! ## A195096.P15413103624217161751

`A195082(n+1)+n-A002262(n)`
-/

namespace A195096.P15413103624217161751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195082 (n + 1) + ((n : ℤ) - A002262 n)

end

end A195096.P15413103624217161751

/-! ## A195096.P10190637236004320369

`A195082(n+1)+A061885(n)-n`
-/

namespace A195096.P10190637236004320369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195082 (n + 1) + (A061885 n - (n : ℤ))

end

end A195096.P10190637236004320369

/-! ## A195096.P11177387140271858626

`A057944(n)+ceil((A253672(3*n)+1)/3)`
-/

namespace A195096.P11177387140271858626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + ⌈(A253672 (3 * n) + 1 : ℚ) / 3⌉

end

end A195096.P11177387140271858626

/-! ## A195096.P386878357488706784

`A195082(n+1)+n+1-A002260(n+1)`
-/

namespace A195096.P386878357488706784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195082 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A195096.P386878357488706784

/-! ## A195096.P17809962929381392259

`A195082(n+1)+A000217(A003056(n))`
-/

namespace A195096.P17809962929381392259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195082 (n + 1) + A000217 (A003056 n).toNat

end

end A195096.P17809962929381392259

/-! ## A195096.P16264594624528836258

`A195082(n+1)+A000217(∑[A073424(n)])`
-/

namespace A195096.P16264594624528836258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195082 (n + 1) + A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A195096.P16264594624528836258

/-! ## A195096.P14487774688649960255

`A195082(n+1)+A161680(A002024(n+1))`
-/

namespace A195096.P14487774688649960255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195082 (n + 1) + A161680 (A002024 (n + 1)).toNat

end

end A195096.P14487774688649960255

/-! ## A195096.P15566121366914041045

`A194985(n+1)+A195082(n+1)-A194983(n+1)`
-/

namespace A195096.P15566121366914041045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194985 (n + 1) + (A195082 (n + 1) - A194983 (n + 1))

end

end A195096.P15566121366914041045

/-!
# A195097: Fractalization of (1+[3n/4]), where [ ] = floor.

The programs for A195097, there is no canonical definition to state claims against.
-/

/-! ## A195097.P221265511121520798

`A195099(n+1)-C(comp[∑[n-1]]-n, 2)`
-/

namespace A195097.P221265511121520798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195099 (n + 1) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A195097.P221265511121520798

/-! ## A195097.P3986182881627012553

`A002260(A195099(n+1))`
-/

namespace A195097.P3986182881627012553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A195099 (n + 1)).toNat

end

end A195097.P3986182881627012553

/-! ## A195097.P15017442859090188062

`A195099(n+1)-A057944(n)`
-/

namespace A195097.P15017442859090188062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195099 (n + 1) - A057944 n

end

end A195097.P15017442859090188062

/-! ## A195097.P1615083339497972637

`A002262(A195099(n+1)-1)+1`
-/

namespace A195097.P1615083339497972637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A195099 (n + 1) - 1).toNat + 1

end

end A195097.P1615083339497972637

/-! ## A195097.P14997210464109147368

`A131818(A195099(n+1)+1)-1`
-/

namespace A195097.P14997210464109147368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A195099 (n + 1) + 1).toNat - 1

end

end A195097.P14997210464109147368

/-! ## A195097.P5188844354937491147

`A195099(n+1)+n-A061885(n)`
-/

namespace A195097.P5188844354937491147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195099 (n + 1) + ((n : ℤ) - A061885 n)

end

end A195097.P5188844354937491147

/-! ## A195097.P2618091350219506551

`A195099(n+1)+n+1-A004201(n+1)`
-/

namespace A195097.P2618091350219506551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195099 (n + 1) + ((n + 1 : ℤ) - A004201 (n + 1))

end

end A195097.P2618091350219506551

/-! ## A195097.P8863890099420301135

`A195099(n+1)-A000217(A003056(n))`
-/

namespace A195097.P8863890099420301135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195099 (n + 1) - A000217 (A003056 n).toNat

end

end A195097.P8863890099420301135

/-! ## A195097.P11555093689116396569

`A002262(A195099(n+1)+A002024(n+1))`
-/

namespace A195097.P11555093689116396569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A195099 (n + 1) + A002024 (n + 1)).toNat

end

end A195097.P11555093689116396569

/-! ## A195097.P17800646781561195825

`A195099(n+1)+A000005(A059268(n))-(n+1)`
-/

namespace A195097.P17800646781561195825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195099 (n + 1) + (A000005 (A059268 n).toNat - (n + 1 : ℤ))

end

end A195097.P17800646781561195825

/-!
# A195098: Interspersion fractally induced by (1+[3n/4]), where [ ] = floor; a rectangular array, by antidiagonals.

The programs for A195098, there is no canonical definition to state claims against.
-/

/-! ## A195098.P10667696525522840473

`Δ[A000120(A144324(n+1))+∑[n]]`
-/

namespace A195098.P10667696525522840473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A144324 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195098.P10667696525522840473

/-! ## A195098.P644268198301586808

`Δ[A000124(n)+A000120(A144324(n+1))]`
-/

namespace A195098.P644268198301586808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + A000120 (A144324 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195098.P644268198301586808

/-! ## A195098.P16724444465880142708

`Δ[A000217(n)+A000120(A144324(n+1))]`
-/

namespace A195098.P16724444465880142708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A000120 (A144324 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195098.P16724444465880142708

/-! ## A195098.P11365061508133780866

`A008619(2*n+1)+Δ[A000120(A144324(n+1))]`
-/

namespace A195098.P11365061508133780866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A144324 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A195098.P11365061508133780866

/-!
# A195099: Inverse permutation of A195098; every positive integer occurs exactly once.

The programs for A195099, there is no canonical definition to state claims against.
-/

/-! ## A195099.P12044024666203468455

`A195097(n+1)+C(∑[char[∑[n]]], 2)`
-/

namespace A195099.P12044024666203468455
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195097 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A195099.P12044024666203468455

/-! ## A195099.P16302641625685808165

`A195097(n+1)+A057944(n)`
-/

namespace A195099.P16302641625685808165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195097 (n + 1) + A057944 n

end

end A195099.P16302641625685808165

/-! ## A195099.P341755536911025320

`A195097(n+1)+n-A002262(n)`
-/

namespace A195099.P341755536911025320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195097 (n + 1) + ((n : ℤ) - A002262 n)

end

end A195099.P341755536911025320

/-! ## A195099.P16411546171242537926

`A195097(n+1)-(val(A175840(n), 2)-n)`
-/

namespace A195099.P16411546171242537926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195097 (n + 1) - ((SequenceMachineLib.valuation (A175840 n).toNat 2 : ℤ) - (n : ℤ))

end

end A195099.P16411546171242537926

/-! ## A195099.P3750968342793410442

`1-A002260(n+1)+A195097(n+1)+n`
-/

namespace A195099.P3750968342793410442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002260 (n + 1) + (A195097 (n + 1) + (n : ℤ))

end

end A195099.P3750968342793410442

/-! ## A195099.P11410934361687358224

`A195097(n+1)+A000217(A003056(n))`
-/

namespace A195099.P11410934361687358224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195097 (n + 1) + A000217 (A003056 n).toNat

end

end A195099.P11410934361687358224

/-! ## A195099.P2802669646259361704

`A195097(n+1)+A161680(A002024(n+1))`
-/

namespace A195099.P2802669646259361704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195097 (n + 1) + A161680 (A002024 (n + 1)).toNat

end

end A195099.P2802669646259361704

/-! ## A195099.P17098369102040373580

`A195097(n+1)+n+1-A057555(A005408(n))`
-/

namespace A195099.P17098369102040373580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195097 (n + 1) + ((n + 1 : ℤ) - A057555 (A005408 n).toNat)

end

end A195099.P17098369102040373580

