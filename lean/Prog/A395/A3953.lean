import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B007.C000
import Seq.B009.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A395300: Sum of numbers k < n such that rad(k) | n but k does not divide n, where rad = A007947.

The programs for A395300, there is no canonical definition to state claims against.
-/

/-! ## A395300.P12127772645771921970

`A244974(n+1)-A000203(n+1)`
-/

namespace A395300.P12127772645771921970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244974 (n + 1) - A000203 (n + 1)

end

end A395300.P12127772645771921970

/-! ## A395300.P7772855914299179649

`A066760(n+1)-A381499(n+1)`
-/

namespace A395300.P7772855914299179649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066760 (n + 1) - A381499 (n + 1)

end

end A395300.P7772855914299179649

/-!
# A395301: a(n) = tau(n) - omega(n) + Sum_{p|n, p prime} gcd(p,n/p).

The programs for A395301, the canonical program `A395301.P11832353311031738574` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395301 has offset 1).

The definition of A395301 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, A345266, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A395301.P11832353311031738574

`A033273(n+1)+A345266(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A395301

/-- `A033273(n+1)+A345266(n+1)` -/
def P11832353311031738574.Spec : Prop :=
  ∀ n, P11832353311031738574.a n = A395301 (n + 1)

theorem P11832353311031738574.correct : P11832353311031738574.Spec := by
  intro n
  simp only [A395301, Nat.add_sub_cancel]

end A395301

/-! ## A395301.P13526377194841282050

`A000005(n+1)+A345266(n+1)-A001221(n+1)`
-/

namespace A395301.P13526377194841282050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A345266 (n + 1) - A001221 (n + 1))

end

end A395301.P13526377194841282050

namespace A395301

/-- `A000005(n+1)+A345266(n+1)-A001221(n+1)` -/
def P13526377194841282050.Spec : Prop :=
  ∀ n, P13526377194841282050.a n = A395301 (n + 1)

end A395301

/-! ## A395301.P15777525796977543950

`A358372(A294876(n+1))`
-/

namespace A395301.P15777525796977543950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358372 (A294876 (n + 1)).toNat

end

end A395301.P15777525796977543950

namespace A395301

/-- `A358372(A294876(n+1))` -/
def P15777525796977543950.Spec : Prop :=
  ∀ n, P15777525796977543950.a n = A395301 (n + 1)

end A395301

/-! ## A395301.P142965043544183567

`A335885(A225546(n+1))+A000005(n+1)`
-/

namespace A395301.P142965043544183567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A225546 (n + 1)).toNat + A000005 (n + 1)

end

end A395301.P142965043544183567

namespace A395301

/-- `A335885(A225546(n+1))+A000005(n+1)` -/
def P142965043544183567.Spec : Prop :=
  ∀ n, P142965043544183567.a n = A395301 (n + 1)

end A395301

/-!
# A395303: a(n) is the least k > 0 such that A162439(k) = n; a(0) = 0.

The programs for A395303, there is no canonical definition to state claims against.
-/

/-! ## A395303.P14167115755404779574

`A233249(A019565(n))`
-/

namespace A395303.P14167115755404779574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233249 (A019565 n).toNat

end

end A395303.P14167115755404779574

/-! ## A395303.P16389612390071730765

`A333256(A395308(n)+1)`
-/

namespace A395303.P16389612390071730765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333256 (A395308 n + 1).toNat

end

end A395303.P16389612390071730765

/-! ## A395303.P17160271035826604111

`A358522(A019565(n))-A271949(n)`
-/

namespace A395303.P17160271035826604111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358522 (A019565 n).toNat - A271949 n

end

end A395303.P17160271035826604111

/-! ## A395303.P15839428204099022042

`A358522(A019565(n))-A003417(3*n+4)`
-/

namespace A395303.P15839428204099022042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358522 (A019565 n).toNat - A003417 (3 * n + 4)

end

end A395303.P15839428204099022042

/-!
# A395304: Triangle read by rows: T(n,k) is the number of ordered rooted trees with total edge weight n and k edges such that all groups of sibling edges have weights in standard order.

The programs for A395304, there is no canonical definition to state claims against.
-/

/-! ## A395304.P17458397487080736429

`A082861(A343088(n))`
-/

namespace A395304.P17458397487080736429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082861 (A343088 n).toNat

end

end A395304.P17458397487080736429

/-! ## A395304.P4466639693963640895

`A003056(A343088(n)^A027642(n))`
-/

namespace A395304.P4466639693963640895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A343088 n : ℚ) ^ (A027642 n : ℤ))).toNat

end

end A395304.P4466639693963640895

/-! ## A395304.P7028959250827636861

`A003056(A343088(n))%A376572(n+2)`
-/

namespace A395304.P7028959250827636861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A343088 n).toNat) (A376572 (n + 2))

end

end A395304.P7028959250827636861

/-! ## A395304.P12341711243499508892

`A003056(A343088(n)%A007239(2*n+1))`
-/

namespace A395304.P12341711243499508892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A343088 n) (A007239 (2 * n + 1))).toNat

end

end A395304.P12341711243499508892

/-!
# A395306: Distinct values of A162439, in order of appearance, preceded by 0 and with offset 0.

The programs for A395306, there is no canonical definition to state claims against.
-/

/-! ## A395306.P12450590665698663970

`A334032(A068382(n+1))`
-/

namespace A395306.P12450590665698663970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334032 (A068382 (n + 1)).toNat

end

end A395306.P12450590665698663970

/-! ## A395306.P13935989455326658448

`A334032(A356232(n+1))`
-/

namespace A395306.P13935989455326658448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334032 (A356232 (n + 1)).toNat

end

end A395306.P13935989455326658448

/-! ## A395306.P2939734483714831822

`A356230(A356232(n+1)+A063524(n))`
-/

namespace A395306.P2939734483714831822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356230 (A356232 (n + 1) + A063524 n).toNat

end

end A395306.P2939734483714831822

/-! ## A395306.P9258042156382363599

`A356230(A356232(n+1))%A016813(n)`
-/

namespace A395306.P9258042156382363599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356230 (A356232 (n + 1)).toNat) (A016813 n)

end

end A395306.P9258042156382363599

/-! ## A395306.P10395600499720229768

`A356230(A356232(n+1)%A074994(n))`
-/

namespace A395306.P10395600499720229768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356230 (Int.tmod (A356232 (n + 1)) (A074994 n)).toNat

end

end A395306.P10395600499720229768

/-!
# A395310: Prime numbers of the form 11*x^2 - 4*x*y + 20*y^2 where x and y are positive integers.

The programs for A395310, there is no canonical definition to state claims against.
-/

/-! ## A395310.P5477161253447180031

`∩[A123592(n+1), A338518(n+1)]`
-/

namespace A395310.P5477161253447180031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395310.P5477161253447180031

/-!
# A395314: Triangle read by rows: T(n,k) = denominator(CF(n,k)), where CF(n,k) = (1/k!) * Sum_{j=0..k} (-1)^j * binomial(k,j) * (2+k/2-j)^n.

The programs for A395314, there is no canonical definition to state claims against.
-/

/-! ## A395314.P6000782148302922995

`gcd(A103240(n+1), A395861(n))`
-/

namespace A395314.P6000782148302922995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103240 (n + 1)) (A395861 n)

end

end A395314.P6000782148302922995

/-! ## A395314.P12911467428931143403

`gcd(A350712(n), A395861(n))`
-/

namespace A395314.P12911467428931143403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A350712 n) (A395861 n)

end

end A395314.P12911467428931143403

/-!
# A395318: Numbers k such that prime(m) / m < prime(k) / k for any m < k (where prime(k) denotes the k-th prime number).

The programs for A395318, there is no canonical definition to state claims against.
-/

/-! ## A395318.P15087908765173629580

`A000720(A395319(n+1))`
-/

namespace A395318.P15087908765173629580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A395319 (n + 1)).toNat

end

end A395318.P15087908765173629580

/-!
# A395319: a(n) is the A395318(n)-th prime number.

The programs for A395319, there is no canonical definition to state claims against.
-/

/-! ## A395319.P16763799982404824271

`A000040(A395318(n+1))`
-/

namespace A395319.P16763799982404824271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A395318 (n + 1)).toNat

end

end A395319.P16763799982404824271

/-! ## A395319.P15321672440198134110

`∩[A049555(n+1), A168498(n+1)]`
-/

namespace A395319.P15321672440198134110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395319.P15321672440198134110

/-! ## A395319.P4087161399134388000

`∩[A165671(n+1), A168498(n+1)]`
-/

namespace A395319.P4087161399134388000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395319.P4087161399134388000

/-! ## A395319.P9803943841660102031

`∩[A045320(n+1), A168496(n+1)]`
-/

namespace A395319.P9803943841660102031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395319.P9803943841660102031

/-! ## A395319.P2568265754315842186

`∩[A045334(n+1), A168496(n+1)]`
-/

namespace A395319.P2568265754315842186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395319.P2568265754315842186

/-!
# A395328: Bipartite dimension of the n-barbell graph.

The programs for A395328, there is no canonical definition to state claims against.
-/

/-! ## A395328.P15244761871138441796

`∑[floor((and(2*n+1, n-1)+n+3)/(2*n+1))]`
-/

namespace A395328.P15244761871138441796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.land (2 * n + 1 : ℤ) ((n : ℤ) - 1) + (n + 3 : ℤ) : ℚ) / (2 * n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395328.P15244761871138441796

/-! ## A395328.P18317758775366442825

`A123273(n+1)+3`
-/

namespace A395328.P18317758775366442825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123273 (n + 1) + 3

end

end A395328.P18317758775366442825

/-! ## A395328.P3424493831358407545

`A349481(n+2)+2`
-/

namespace A395328.P3424493831358407545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349481 (n + 2) + 2

end

end A395328.P3424493831358407545

/-! ## A395328.P1557096842204195785

`Δ[A097383(2*(n+1))]`
-/

namespace A395328.P1557096842204195785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097383 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395328.P1557096842204195785

/-! ## A395328.P4310367269465752869

`∑[Δ[A154269(n+1)]²]`
-/

namespace A395328.P4310367269465752869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395328.P4310367269465752869

/-! ## A395328.P7099629880315875955

`floor(log2(A277699(2*(n+2))))`
-/

namespace A395328.P7099629880315875955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A277699 (2 * (n + 2))).toNat

end

end A395328.P7099629880315875955

/-! ## A395328.P2898883570989917575

`ceil(log2(A000695(2*(n+2))))`
-/

namespace A395328.P2898883570989917575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A000695 (2 * (n + 2)) : ℝ)⌉

end

end A395328.P2898883570989917575

/-! ## A395328.P4944109812389030014

`A080800(A048700(n+1))`
-/

namespace A395328.P4944109812389030014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080800 (A048700 (n + 1)).toNat

end

end A395328.P4944109812389030014

/-! ## A395328.P2981175682996824273

`A108852(A036795(n+1))`
-/

namespace A395328.P2981175682996824273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (A036795 (n + 1)).toNat

end

end A395328.P2981175682996824273

/-! ## A395328.P13602176529127799093

`A130250(A147568(n+1))`
-/

namespace A395328.P13602176529127799093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130250 (A147568 (n + 1)).toNat

end

end A395328.P13602176529127799093

/-!
# A395329: Number of one-sided polynars with n cells that are not the 2 X enlargement of a one-sided n-omino.

The programs for A395329, there is no canonical definition to state claims against.
-/

/-! ## A395329.P17039584450948025610

`A390621(n+1)-A000988(n+1)`
-/

namespace A395329.P17039584450948025610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390621 (n + 1) - A000988 (n + 1)

end

end A395329.P17039584450948025610

/-!
# A395330: Symmetric array read by antidiagonals: A(n,k) = tau(n*k), where tau = A000005.

The programs for A395330, the canonical program `A395330.P14444694070182848771` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395330 has offset 1).

The definition of A395330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9934 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395330.P8611050713736168004

`A000005(A003991(n+1))`
-/

namespace A395330.P8611050713736168004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003991 (n + 1)).toNat

end

end A395330.P8611050713736168004

namespace A395330

/-- `A000005(A003991(n+1))` -/
def P8611050713736168004.Spec : Prop :=
  ∀ n, P8611050713736168004.a n = A395330 (n + 1)

end A395330

/-! ## A395330.P4185162369959227853

`A000005(A059036(n)+1)`
-/

namespace A395330.P4185162369959227853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059036 n + 1).toNat

end

end A395330.P4185162369959227853

namespace A395330

/-- `A000005(A059036(n)+1)` -/
def P4185162369959227853.Spec : Prop :=
  ∀ n, P4185162369959227853.a n = A395330 (n + 1)

end A395330

/-! ## A395330.P17502849923115761270

`A000005(sqrt(A098359(n+1)))`
-/

namespace A395330.P17502849923115761270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A098359 (n + 1) : ℝ))).toNat

end

end A395330.P17502849923115761270

namespace A395330

/-- `A000005(sqrt(A098359(n+1)))` -/
def P17502849923115761270.Spec : Prop :=
  ∀ n, P17502849923115761270.a n = A395330 (n + 1)

end A395330

/-! ## A395330.P5885661382925993596

`A000005((A025581(n)+1)*(A002262(n)+1))`
-/

namespace A395330.P5885661382925993596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((A025581 n + 1) * (A002262 n + 1)).toNat

end

end A395330.P5885661382925993596

namespace A395330

/-- `A000005((A025581(n)+1)*(A002262(n)+1))` -/
def P5885661382925993596.Spec : Prop :=
  ∀ n, P5885661382925993596.a n = A395330 (n + 1)

end A395330

/-! ## A395330.P14444694070182848771

`A183063(2*A003991(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A395330

/-- `A183063(2*A003991(n+1))` -/
def P14444694070182848771.Spec : Prop :=
  ∀ n, P14444694070182848771.a n = A395330 (n + 1)

theorem P14444694070182848771.correct : P14444694070182848771.Spec := by
  intro n
  simp only [A395330, Nat.add_sub_cancel]

end A395330

/-! ## A395330.P15993742424840197068

`A112329(A098352(n+1))`
-/

namespace A395330.P15993742424840197068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (A098352 (n + 1)).toNat

end

end A395330.P15993742424840197068

namespace A395330

/-- `A112329(A098352(n+1))` -/
def P15993742424840197068.Spec : Prop :=
  ∀ n, P15993742424840197068.a n = A395330 (n + 1)

end A395330

/-! ## A395330.P8881974855583055219

`A046951(A098359(n+1))`
-/

namespace A395330.P8881974855583055219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A098359 (n + 1)).toNat

end

end A395330.P8881974855583055219

namespace A395330

/-- `A046951(A098359(n+1))` -/
def P8881974855583055219.Spec : Prop :=
  ∀ n, P8881974855583055219.a n = A395330 (n + 1)

end A395330

/-! ## A395330.P7877625540119669031

`A046951(A003991(n+1)²)`
-/

namespace A395330.P7877625540119669031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A003991 (n + 1) ^ 2).toNat

end

end A395330.P7877625540119669031

namespace A395330

/-- `A046951(A003991(n+1)²)` -/
def P7877625540119669031.Spec : Prop :=
  ∀ n, P7877625540119669031.a n = A395330 (n + 1)

end A395330

/-! ## A395330.P14969291875354753709

`A010553(A036561(n))`
-/

namespace A395330.P14969291875354753709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A036561 n).toNat

end

end A395330.P14969291875354753709

namespace A395330

/-- `A010553(A036561(n))` -/
def P14969291875354753709.Spec : Prop :=
  ∀ n, P14969291875354753709.a n = A395330 (n + 1)

end A395330

/-! ## A395330.P16392581588274105157

`A010553(A082234(n+1))`
-/

namespace A395330.P16392581588274105157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A082234 (n + 1)).toNat

end

end A395330.P16392581588274105157

namespace A395330

/-- `A010553(A082234(n+1))` -/
def P16392581588274105157.Spec : Prop :=
  ∀ n, P16392581588274105157.a n = A395330 (n + 1)

end A395330

/-!
# A395333: Largest n-digit base-3 deletable prime.

The programs for A395333, there is no canonical definition to state claims against.
-/

/-! ## A395333.P16197221834040773367

`A159477(A116758(n+2))`
-/

namespace A395333.P16197221834040773367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A116758 (n + 2)).toNat

end

end A395333.P16197221834040773367

/-!
# A395334: Number of free polyominoes with n cells (up to the symmetries of the square) that contain a saturated cell (a cell all four of whose edge-neighbors are present).

The programs for A395334, there is no canonical definition to state claims against.
-/

/-! ## A395334.P15853368082984759456

`floor(A121828(A275605(n)+n)/9)`
-/

namespace A395334.P15853368082984759456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121828 (A275605 n + (n : ℤ)).toNat : ℚ) / 9⌋

end

end A395334.P15853368082984759456

/-!
# A395335: Number of permutations p of [n] such that |p(i+1) - p(i)| <> 2 for all 1 <= i < n.

The programs for A395335, there is no canonical definition to state claims against.
-/

/-! ## A395335.P1915572372973171485

`A398634(∑[n+3])`
-/

namespace A395335.P1915572372973171485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398634 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A395335.P1915572372973171485

/-! ## A395335.P8326100532834521332

`A162798(A275282(n))`
-/

namespace A395335.P8326100532834521332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162798 (A275282 n).toNat

end

end A395335.P8326100532834521332

/-! ## A395335.P15219367278658169030

`A079159(A110113(n+1))`
-/

namespace A395335.P15219367278658169030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079159 (A110113 (n + 1)).toNat

end

end A395335.P15219367278658169030

/-!
# A395336: a(n) = n! * [x^n] exp(x)/(2 - x - exp(x)).

The programs for A395336, there is no canonical definition to state claims against.
-/

/-! ## A395336.P13339469336999755607

`A333693(A132186(n))+A015551(n)`
-/

namespace A395336.P13339469336999755607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333693 (A132186 n).toNat + A015551 n

end

end A395336.P13339469336999755607

/-!
# A395338: Primes whose square is a concatenation of exactly 2 distinct nonzero squares.

The programs for A395338, there is no canonical definition to state claims against.
-/

/-! ## A395338.P10100272846553948473

`∩[A048375(n+1), A048646(n+1)]`
-/

namespace A395338.P10100272846553948473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395338.P10100272846553948473

/-! ## A395338.P4045552148635804037

`p?[A048375(n+1)]`
-/

namespace A395338.P4045552148635804037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A395338.P4045552148635804037

/-! ## A395338.P17626309317655836960

`∩[A048375(n+1), A344045(n+1)]`
-/

namespace A395338.P17626309317655836960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395338.P17626309317655836960

/-!
# A395340: a(n) = (2*n)! * [x^(2*n)] cosh(x) / cos(x)^2.

The programs for A395340, there is no canonical definition to state claims against.
-/

/-! ## A395340.P9665984247307950950

`A003719(n)-A009747(n)`
-/

namespace A395340.P9665984247307950950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003719 n - A009747 n

end

end A395340.P9665984247307950950

/-! ## A395340.P3577454207355540635

`A003719(n)-A009739(2*n)`
-/

namespace A395340.P3577454207355540635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003719 n - A009739 (2 * n)

end

end A395340.P3577454207355540635

/-! ## A395340.P11707975713341728808

`A003719(n)-A062161(2*n)`
-/

namespace A395340.P11707975713341728808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003719 n - A062161 (2 * n)

end

end A395340.P11707975713341728808

/-! ## A395340.P7263840048121126566

`A009739(2*n+1)-A009747(n)`
-/

namespace A395340.P7263840048121126566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009739 (2 * n + 1) - A009747 n

end

end A395340.P7263840048121126566

/-! ## A395340.P16646932979004549566

`A009739(2*n+1)-A009739(2*n)`
-/

namespace A395340.P16646932979004549566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009739 (2 * n + 1) - A009739 (2 * n)

end

end A395340.P16646932979004549566

/-!
# A395344: a(n) is the integer obtained by inserting the sum (modulo 10) of adjacent digits of n between them.

The programs for A395344, there is no canonical definition to state claims against.
-/

/-! ## A395344.P15941879408148358868

`∩[A028431(n+1), A240237(n)]`
-/

namespace A395344.P15941879408148358868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240237 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395344.P15941879408148358868

/-! ## A395344.P10538989763194550095

`∩[A295020(n+1), A240237(n)]`
-/

namespace A395344.P10538989763194550095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240237 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395344.P10538989763194550095

/-! ## A395344.P6656050848975613690

`(n+1)*A027828(A027828(A027828(n+1)))`
-/

namespace A395344.P6656050848975613690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A027828 (A027828 (A027828 (n + 1)).toNat).toNat

end

end A395344.P6656050848975613690

/-! ## A395344.P880630553792912285

`A255407(n+1)*A351653(A241508(n))`
-/

namespace A395344.P880630553792912285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (n + 1) * A351653 (A241508 n).toNat

end

end A395344.P880630553792912285

/-! ## A395344.P7393171062693528129

`A338331(n+1)*A351653(A241508(n))`
-/

namespace A395344.P7393171062693528129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (n + 1) * A351653 (A241508 n).toNat

end

end A395344.P7393171062693528129

/-!
# A395345: Triangle read by rows: T(n, k) = k * T(n, k+1) + T(n-1, k-1) - (n-k-1) * T(n-1, k) with T(n, 0) = 0^n, T(n, k) = 0 for k < 0 or k > n.

The programs for A395345, there is no canonical definition to state claims against.
-/

/-! ## A395345.P5095716033226041283

`A132393(n)+A111427(A008326(n+2))`
-/

namespace A395345.P5095716033226041283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n + A111427 (A008326 (n + 2)).toNat

end

end A395345.P5095716033226041283

/-! ## A395345.P12922325932065530292

`A353528(A201198(3*n))+A132393(n)`
-/

namespace A395345.P12922325932065530292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353528 (A201198 (3 * n)).toNat + A132393 n

end

end A395345.P12922325932065530292

/-! ## A395345.P8627919147081652776

`or(A132393(n), A373954(A058140(n+1)))`
-/

namespace A395345.P8627919147081652776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A132393 n) (A373954 (A058140 (n + 1)).toNat)

end

end A395345.P8627919147081652776

/-! ## A395345.P6526112142986187255

`A264428(n)+A086075(A116467(n))`
-/

namespace A395345.P6526112142986187255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264428 n + A086075 (A116467 n).toNat

end

end A395345.P6526112142986187255

/-! ## A395345.P17685713366328615938

`A277160(A056391(n+4))+A132393(n)`
-/

namespace A395345.P17685713366328615938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277160 (A056391 (n + 4)).toNat + A132393 n

end

end A395345.P17685713366328615938

/-!
# A395351: First differences of A392178.

The programs for A395351, there is no canonical definition to state claims against.
-/

/-! ## A395351.P1054747077515107157

`Δ[A392178(n+1)]`
-/

namespace A395351.P1054747077515107157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395351.P1054747077515107157

/-! ## A395351.P1026462170536702139

`A392178(n+2)-A392178(n+1)`
-/

namespace A395351.P1026462170536702139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392178 (n + 2) - A392178 (n + 1)

end

end A395351.P1026462170536702139

/-! ## A395351.P6234947493874588900

`A395355(2*n+1)+A392178(n+2)`
-/

namespace A395351.P6234947493874588900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395355 (2 * n + 1) + A392178 (n + 2)

end

end A395351.P6234947493874588900

/-! ## A395351.P3021263069962926254

`Δ[abs(A395355(2*n+1))]`
-/

namespace A395351.P3021263069962926254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A395355 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395351.P3021263069962926254

/-!
# A395352: RUNS transform of A395351.

The programs for A395352, there is no canonical definition to state claims against.
-/

/-! ## A395352.P4014878757354625207

`A278984(gcd(A278984(n+1), A325545(2*n+3)))`
-/

namespace A395352.P4014878757354625207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (Int.gcd (A278984 (n + 1)) (A325545 (2 * n + 3)))

end

end A395352.P4014878757354625207

/-! ## A395352.P18415726096973481679

`A225330(A325982(n+2))`
-/

namespace A395352.P18415726096973481679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225330 (A325982 (n + 2)).toNat

end

end A395352.P18415726096973481679

/-! ## A395352.P5158477142311833963

`gcd(A117702(n+1), A206301(n))`
-/

namespace A395352.P5158477142311833963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117702 (n + 1)) (A206301 n)

end

end A395352.P5158477142311833963

/-!
# A395353: a(0) = 0. For n>0, consider the spiral of red and black knights shown in A392177 and A392178. If the n-th square along the negative x-axis contains a black knight then a(n) = n, if it contains a red knight then a(n) = -n, otherwise a(n) = 0.

The programs for A395353, there is no canonical definition to state claims against.
-/

/-! ## A395353.P13266308756100211769

`A395357(A007742(n))`
-/

namespace A395353.P13266308756100211769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395357 (A007742 n).toNat

end

end A395353.P13266308756100211769

/-!
# A395354: Consider the spiral of red and black knights shown in A392177 and A392178. If the n-th square along the non-negative x-axis contains a black knight then a(n) = n, if it contains a red knight then a(n) = -n, otherwise a(n) = 0.

The programs for A395354, there is no canonical definition to state claims against.
-/

/-! ## A395354.P830942919700928715

`A395357(A001107(n))`
-/

namespace A395354.P830942919700928715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395357 (A001107 n).toNat

end

end A395354.P830942919700928715

/-!
# A395356: a(n) = |A395355(n)| - |A395355(n-1)|.

The programs for A395356, there is no canonical definition to state claims against.
-/

/-! ## A395356.P2950682840511051705

`Δ[abs(A395355(n))]`
-/

namespace A395356.P2950682840511051705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A395355 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395356.P2950682840511051705

/-!
# A395360: Lexicographically earliest infinite sequence of distinct squarefree semiprimes (A006881) with the properties that (a) for all k >= 1, the k-th prime divides exactly k terms, and (b) a semiprime j*k is excluded if both j and k already divide existing terms.

The programs for A395360, there is no canonical definition to state claims against.
-/

/-! ## A395360.P6914205099489011495

`A396178(A115916(n+1))`
-/

namespace A395360.P6914205099489011495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396178 (A115916 (n + 1)).toNat

end

end A395360.P6914205099489011495

/-! ## A395360.P14210661071623494355

`∩[A269177(n), A396178(n)]`
-/

namespace A395360.P14210661071623494355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269177 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396178 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395360.P14210661071623494355

/-!
# A395361: For n <= 6, a(n) = Fibonacci(n); for n >= 7, delete all except the leftmost two digits of Fibonacci(n).

The programs for A395361, there is no canonical definition to state claims against.
-/

/-! ## A395361.P15967659784882052299

`A000045(n)%(A338622(n+1)+10)`
-/

namespace A395361.P15967659784882052299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) (A338622 (n + 1) + 10)

end

end A395361.P15967659784882052299

/-! ## A395361.P5065201122530292924

`A000045(n)%A328792(A357644(n))`
-/

namespace A395361.P5065201122530292924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) (A328792 (A357644 n).toNat)

end

end A395361.P5065201122530292924

/-!
# A395362: Walk along the hexagonal spiral, with its cells numbered starting at 0. Begin with no knights. If the square you are at is not attacked by an existing knight, place a knight there, otherwise leave it empty. The sequence lists the squares occupied by the knights.

The programs for A395362, there is no canonical definition to state claims against.
-/

/-! ## A395362.P16568802784440145576

`eq[A045999(n), A323647(n+1)]`
-/

namespace A395362.P16568802784440145576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323647 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395362.P16568802784440145576

/-! ## A395362.P11696613250742653022

`eq[A079050(n), A338458(n+1)]`
-/

namespace A395362.P11696613250742653022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079050 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338458 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395362.P11696613250742653022

/-! ## A395362.P11379463041705187342

`eq[A105472(n), A342720(n+1)]`
-/

namespace A395362.P11379463041705187342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105472 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395362.P11379463041705187342

/-! ## A395362.P11215792832210586239

`eq[n, A235049(A325368(n+1))]`
-/

namespace A395362.P11215792832210586239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A325368 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395362.P11215792832210586239

/-! ## A395362.P16347408257510887647

`∩[A373117(n+1), A024641(n)]`
-/

namespace A395362.P16347408257510887647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024641 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395362.P16347408257510887647

/-!
# A395366: Walk along the hexagonal spiral, with its cells numbered starting at 0, as in A395362. Two players, Black and Red, take turns. When it is Black's turn, he places a knight at the smallest unoccupied cell not attacked by an existing Red knight, and when it is Red's turn, she places a knight at the smallest unoccupied cell not attacked by an existing Black knight. Sequence lists cells occupied by Red knights.

The programs for A395366, there is no canonical definition to state claims against.
-/

/-! ## A395366.P9858867338414458832

`A328389(A189176(n+1))`
-/

namespace A395366.P9858867338414458832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328389 (A189176 (n + 1)).toNat

end

end A395366.P9858867338414458832

/-! ## A395366.P5760924428281062485

`A377209(A000005(A000079(n)²))`
-/

namespace A395366.P5760924428281062485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377209 (A000005 (A000079 n ^ 2).toNat).toNat

end

end A395366.P5760924428281062485

/-! ## A395366.P2300872883642728768

`A377209(A000005(A000079(2*n)))`
-/

namespace A395366.P2300872883642728768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377209 (A000005 (A000079 (2 * n)).toNat).toNat

end

end A395366.P2300872883642728768

/-! ## A395366.P6514393301492973774

`A227872(A355968(A000005(A330289(2*n+1))))`
-/

namespace A395366.P6514393301492973774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227872 (A355968 (A000005 (A330289 (2 * n + 1)).toNat).toNat).toNat

end

end A395366.P6514393301492973774

/-! ## A395366.P10235706659041305160

`A227872(A355968(A000005(A357763(2*n+1))))`
-/

namespace A395366.P10235706659041305160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227872 (A355968 (A000005 (A357763 (2 * n + 1)).toNat).toNat).toNat

end

end A395366.P10235706659041305160

/-!
# A395370: a(n) is the number of pairs (B->A, C->A) of non-intersecting paths in a triangular grid ABC of side n units, such that the distance from the starting point to each point of a path is always increasing.

The programs for A395370, there is no canonical definition to state claims against.
-/

/-! ## A395370.P257894002231350293

`A062490(A105871(n))`
-/

namespace A395370.P257894002231350293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062490 (A105871 n).toNat

end

end A395370.P257894002231350293

/-!
# A395371: a(n) is the number of triples (A->B, B->C, C->A) of pairwise disjoint paths on a triangular grid ABC of side length n, such that the distance from the starting point to each point of a path is always increasing.

The programs for A395371, there is no canonical definition to state claims against.
-/

/-! ## A395371.P17737720370504730738

`A336285(n!²)`
-/

namespace A395371.P17737720370504730738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336285 (Nat.factorial n ^ 2)

end

end A395371.P17737720370504730738

/-!
# A395373: Triangle read by rows: T(n, k) is the number of ordered pairs (x,y) with 1 <= x,y <= n such that x*y = k, for 1 <= k <= n^2.

The programs for A395373, there is no canonical definition to state claims against.
-/

/-! ## A395373.P4075947116442855338

`A175358(A242231(n+1))`
-/

namespace A395373.P4075947116442855338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175358 (A242231 (n + 1)).toNat

end

end A395373.P4075947116442855338

/-! ## A395373.P17491344455064747372

`A248639(A030549(n+2))`
-/

namespace A395373.P17491344455064747372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248639 (A030549 (n + 2)).toNat

end

end A395373.P17491344455064747372

/-! ## A395373.P16392261405162376692

`C(A049705(A078745(n+3)), A297420(2*n+3))`
-/

namespace A395373.P16392261405162376692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049705 (A078745 (n + 3)).toNat).toNat (A297420 (2 * n + 3)).toNat

end

end A395373.P16392261405162376692

/-!
# A395382: a(n) = (2*n)! * [x^(2*n)] 1 / cos(x)^4.

The programs for A395382, there is no canonical definition to state claims against.
-/

/-! ## A395382.P128484537620018704

`1/6*(4*A000182(n+1)+A000182(n+2))`
-/

namespace A395382.P128484537620018704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (4 * A000182 (n + 1) + A000182 (n + 2) : ℚ)

end

end A395382.P128484537620018704

/-!
# A395383: a(n) = (2*n)! * [x^(2*n)] 1 / cos(x)^5.

The programs for A395383, there is no canonical definition to state claims against.
-/

/-! ## A395383.P7385357476515023218

`1/24*(9*A000364(n)+10*A000364(n+1)+A000364(n+2))`
-/

namespace A395383.P7385357476515023218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 * (9 * A000364 n + 10 * A000364 (n + 1) + A000364 (n + 2) : ℚ)

end

end A395383.P7385357476515023218

/-!
# A395384: a(n) = (2*n)! * [x^(2*n)] 1 / cos(x)^6.

The programs for A395384, there is no canonical definition to state claims against.
-/

/-! ## A395384.P5008454448701114813

`1/120*(64*A000182(n+1)+20*A000182(n+2)+A000182(n+3))`
-/

namespace A395384.P5008454448701114813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 120 * (64 * A000182 (n + 1) + 20 * A000182 (n + 2) + A000182 (n + 3) : ℚ)

end

end A395384.P5008454448701114813

/-!
# A395385: a(n) = (2*n)! * [x^(2*n)] 1 / cos(x)^7.

The programs for A395385, there is no canonical definition to state claims against.
-/

/-! ## A395385.P4372313835097847592

`1/720*(225*A000364(n)+259*A000364(n+1)+35*A000364(n+2)+A000364(n+3))`
-/

namespace A395385.P4372313835097847592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 720 * (225 * A000364 n + 259 * A000364 (n + 1) + 35 * A000364 (n + 2) + A000364 (n + 3) : ℚ)

end

end A395385.P4372313835097847592

/-!
# A395396: a(n) = binomial(n,floor(n/2)) + (n mod 2) - 2.

The programs for A395396, the canonical program `A395396.P11751672268797446085` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395396 has offset 0).

The definition of A395396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395396.P11751672268797446085

`C(n, floor(n/2))+n%2-2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A395396

/-- `C(n, floor(n/2))+n%2-2` -/
def P11751672268797446085.Spec : Prop :=
  ∀ n, P11751672268797446085.a n = A395396 n

theorem P11751672268797446085.correct : P11751672268797446085.Spec := by
  intro n
  simp only [A395396]

end A395396

/-! ## A395396.P5963499201413584339

`A201686(n)+A000035(n)`
-/

namespace A395396.P5963499201413584339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 n + A000035 n

end

end A395396.P5963499201413584339

namespace A395396

/-- `A201686(n)+A000035(n)` -/
def P5963499201413584339.Spec : Prop :=
  ∀ n, P5963499201413584339.a n = A395396 n

end A395396

/-! ## A395396.P16467251618907001618

`A014495(n)-A059841(n)`
-/

namespace A395396.P16467251618907001618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 n - A059841 n

end

end A395396.P16467251618907001618

namespace A395396

/-- `A014495(n)-A059841(n)` -/
def P16467251618907001618.Spec : Prop :=
  ∀ n, P16467251618907001618.a n = A395396 n

end A395396

/-! ## A395396.P4761424403776155548

`A051920(n)-A176059(n)`
-/

namespace A395396.P4761424403776155548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 n - A176059 n

end

end A395396.P4761424403776155548

namespace A395396

/-- `A051920(n)-A176059(n)` -/
def P4761424403776155548.Spec : Prop :=
  ∀ n, P4761424403776155548.a n = A395396 n

end A395396

/-! ## A395396.P819149034328865742

`A140253(n)-A045621(n)`
-/

namespace A395396.P819149034328865742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140253 n - A045621 n

end

end A395396.P819149034328865742

namespace A395396

/-- `A140253(n)-A045621(n)` -/
def P819149034328865742.Spec : Prop :=
  ∀ n, P819149034328865742.a n = A395396 n

end A395396

/-! ## A395396.P14883405597299393554

`A261681(n)-A052531(n)`
-/

namespace A395396.P14883405597299393554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261681 n - A052531 n

end

end A395396.P14883405597299393554

namespace A395396

/-- `A261681(n)-A052531(n)` -/
def P14883405597299393554.Spec : Prop :=
  ∀ n, P14883405597299393554.a n = A395396 n

end A395396

/-!
# A395399: Number of unsatisfiable 3-SAT formulas with 3 variables and n clauses in the multiset clause model.

The programs for A395399, there is no canonical definition to state claims against.
-/

/-! ## A395399.P18434481483732686037

`A396351(A167614(n+1))`
-/

namespace A395399.P18434481483732686037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (A167614 (n + 1)).toNat

end

end A395399.P18434481483732686037

/-! ## A395399.P863186656242560330

`A396351(A000217(n+3)-n)`
-/

namespace A395399.P863186656242560330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (A000217 (n + 3) - (n : ℤ)).toNat

end

end A395399.P863186656242560330

