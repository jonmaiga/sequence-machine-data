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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A083800: First column of A083798.

The programs for A083800, there is no canonical definition to state claims against.
-/

/-! ## A083800.P3575883264425546151

`A083798(∑[n]+1)`
-/

namespace A083800.P3575883264425546151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083798 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A083800.P3575883264425546151

/-! ## A083800.P4838225800791157703

`A083801(∑[n]+1)`
-/

namespace A083800.P4838225800791157703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083801 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A083800.P4838225800791157703

/-! ## A083800.P2128027246555655116

`or(A005089(n+1), A083798(A000124(n)))`
-/

namespace A083800.P2128027246555655116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005089 (n + 1)) (A083798 (A000124 n).toNat)

end

end A083800.P2128027246555655116

/-! ## A083800.P13889018151772369340

`or(A010052(n+3), A083798(A000124(n)))`
-/

namespace A083800.P13889018151772369340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 (n + 3)) (A083798 (A000124 n).toNat)

end

end A083800.P13889018151772369340

/-! ## A083800.P1851761721771110912

`A346468(A083799(n+1)+A083797(n+1))`
-/

namespace A083800.P1851761721771110912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (A083799 (n + 1) + A083797 (n + 1)).toNat

end

end A083800.P1851761721771110912

/-!
# A083801: Triangle read by rows obtained by replacing each term T(n,k) in A083796 with the sum, divided by k, of the other n-1 terms in the n-th row.

The programs for A083801, there is no canonical definition to state claims against.
-/

/-! ## A083801.P6485397257025461892

`A083798(n+1)/A002260(n+1)`
-/

namespace A083801.P6485397257025461892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083798 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A083801.P6485397257025461892

/-!
# A083802: a(n) = A083799(n)/n.

The programs for A083802, the canonical program `A083802.P12370496919285025626` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083802 has offset 1).

The definition of A083802 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083799, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083802.P12370496919285025626

`A083799(n+1)/(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A083802

/-- `A083799(n+1)/(n+1)` -/
def P12370496919285025626.Spec : Prop :=
  ∀ n, P12370496919285025626.a n = (A083802 (n + 1) : ℚ)

end A083802

/-! ## A083802.P1653043339778972007

`(2*A083799(n+1))%A005408(n)`
-/

namespace A083802.P1653043339778972007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A083799 (n + 1)) (A005408 n)

end

end A083802.P1653043339778972007

namespace A083802

/-- `(2*A083799(n+1))%A005408(n)` -/
def P1653043339778972007.Spec : Prop :=
  ∀ n, P1653043339778972007.a n = A083802 (n + 1)

end A083802

/-! ## A083802.P17203144075764629824

`(3*A083799(n+1))%A016789(n)`
-/

namespace A083802.P17203144075764629824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A083799 (n + 1)) (A016789 n)

end

end A083802.P17203144075764629824

namespace A083802

/-- `(3*A083799(n+1))%A016789(n)` -/
def P17203144075764629824.Spec : Prop :=
  ∀ n, P17203144075764629824.a n = A083802 (n + 1)

end A083802

/-! ## A083802.P5615913907685670863

`(n*n%2/A014963(A028310(n))+n)/2`
-/

namespace A083802.P5615913907685670863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n * (n % 2) : ℕ) : ℚ) / (A014963 (A028310 n).toNat : ℚ) + (n : ℚ)) / 2

end

end A083802.P5615913907685670863

namespace A083802

/-- `(n*n%2/A014963(A028310(n))+n)/2` -/
def P5615913907685670863.Spec : Prop :=
  ∀ n, P5615913907685670863.a n = (A083802 (n + 1) : ℚ)

end A083802

/-! ## A083802.P8652987844223708355

`floor((A093178(n/A014963(A093178(n)))+n)/2)`
-/

namespace A083802.P8652987844223708355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093178 (SequenceMachineLib.roundAway ((n : ℚ) / (A014963 (A093178 n).toNat : ℚ))).toNat + (n : ℤ) : ℚ) / 2⌋

end

end A083802.P8652987844223708355

namespace A083802

/-- `floor((A093178(n/A014963(A093178(n)))+n)/2)` -/
def P8652987844223708355.Spec : Prop :=
  ∀ n, P8652987844223708355.a n = A083802 (n + 1)

end A083802

/-! ## A083802.P9260884433536048447

`A083801(∑[n+1])`
-/

namespace A083802.P9260884433536048447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083801 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083802.P9260884433536048447

namespace A083802

/-- `A083801(∑[n+1])` -/
def P9260884433536048447.Spec : Prop :=
  ∀ n, P9260884433536048447.a n = A083802 (n + 1)

end A083802

/-! ## A083802.P2443110967408778209

`A083798(∑[n+1])/(n+1)`
-/

namespace A083802.P2443110967408778209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083798 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A083802.P2443110967408778209

namespace A083802

/-- `A083798(∑[n+1])/(n+1)` -/
def P2443110967408778209.Spec : Prop :=
  ∀ n, P2443110967408778209.a n = (A083802 (n + 1) : ℚ)

end A083802

/-! ## A083802.P6397780461358551948

`A004277(A083799(n+1))%A005408(n)`
-/

namespace A083802.P6397780461358551948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 (A083799 (n + 1)).toNat) (A005408 n)

end

end A083802.P6397780461358551948

namespace A083802

/-- `A004277(A083799(n+1))%A005408(n)` -/
def P6397780461358551948.Spec : Prop :=
  ∀ n, P6397780461358551948.a n = A083802 (n + 1)

end A083802

/-! ## A083802.P12205110023987412765

`A008585(A083799(n+1))%A016789(n)`
-/

namespace A083802.P12205110023987412765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (A083799 (n + 1)).toNat) (A016789 n)

end

end A083802.P12205110023987412765

namespace A083802

/-- `A008585(A083799(n+1))%A016789(n)` -/
def P12205110023987412765.Spec : Prop :=
  ∀ n, P12205110023987412765.a n = A083802 (n + 1)

end A083802

/-!
# A083803: Smallest number k such that the concatenations k 2n-1 and 2n-1 k are both primes, or 0 if n = 5m+3.

The programs for A083803, there is no canonical definition to state claims against.
-/

/-! ## A083803.P1231146480391866334

`A243374(Δ[n²])`
-/

namespace A083803.P1231146480391866334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A083803.P1231146480391866334

/-! ## A083803.P13627614726686039362

`or(char[1], A243374(2*n+1))`
-/

namespace A083803.P13627614726686039362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A243374 (2 * n + 1))

end

end A083803.P13627614726686039362

/-! ## A083803.P10984209651753019830

`A243374(2*n+1)%A016825(n)`
-/

namespace A083803.P10984209651753019830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243374 (2 * n + 1)) (A016825 n)

end

end A083803.P10984209651753019830

/-! ## A083803.P16556010583014964025

`filter[A243374(2*n+1), A039982(#)]`
-/

namespace A083803.P16556010583014964025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A083803.P16556010583014964025

/-! ## A083803.P12396175343956128614

`filter[A243374(2*n+1), A093719(#)]`
-/

namespace A083803.P12396175343956128614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A083803.P12396175343956128614

/-! ## A083803.P6386442528131110565

`filter[A243374(2*n+1), A105234(#)]`
-/

namespace A083803.P6386442528131110565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A083803.P6386442528131110565

/-! ## A083803.P11318559418132588101

`filter[A243374(2*n+1), A118102(#)]`
-/

namespace A083803.P11318559418132588101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118102 (f1 j).toNat = 1) n)

end

end A083803.P11318559418132588101

/-! ## A083803.P672154013200369864

`filter[A243374(2*n+1), A127254(#)]`
-/

namespace A083803.P672154013200369864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A083803.P672154013200369864

/-! ## A083803.P15335374701708648685

`filter[A243374(2*n+1), A152822(#)]`
-/

namespace A083803.P15335374701708648685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A083803.P15335374701708648685

/-! ## A083803.P6538162139535836458

`filter[A243374(2*n+1), A254651(#)]`
-/

namespace A083803.P6538162139535836458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A083803.P6538162139535836458

/-! ## A083803.P16242937686049858997

`filter[A243374(2*n+1), A267256(#)]`
-/

namespace A083803.P16242937686049858997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A083803.P16242937686049858997

/-! ## A083803.P13127767685228002393

`filter[A243374(2*n+1), A267579(#)]`
-/

namespace A083803.P13127767685228002393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A083803.P13127767685228002393

/-! ## A083803.P7736110692333381451

`filter[A243374(2*n+1), A267813(#)]`
-/

namespace A083803.P7736110692333381451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267813 (f1 j).toNat = 1) n)

end

end A083803.P7736110692333381451

/-! ## A083803.P10523472752006971001

`filter[A243374(2*n+1), A379952(#)]`
-/

namespace A083803.P10523472752006971001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A083803.P10523472752006971001

/-! ## A083803.P8992289549612982263

`A243374(2*n+1)+A243374(2*(n+1))`
-/

namespace A083803.P8992289549612982263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (2 * n + 1) + A243374 (2 * (n + 1))

end

end A083803.P8992289549612982263

/-!
# A083805: n-th partial concatenation of terms of A083804 divided by n.

The programs for A083805, there is no canonical definition to state claims against.
-/

/-! ## A083805.P9246139137544313621

`A008592(n*lcm(n+1, a(n-1))/(n+1))` with `a(0)=1, a(1)=6`
-/

namespace A083805.P9246139137544313621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A008592 (SequenceMachineLib.roundAway ((n : ℚ) * ((Int.lcm (n + 1 : ℤ) (a (n - 1)) : ℚ) / (n + 1 : ℚ)))).toNat

end

end A083805.P9246139137544313621

/-! ## A083805.P14920829369797590029

`A181060(A003948(n))/(n+1)`
-/

namespace A083805.P14920829369797590029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181060 (A003948 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A083805.P14920829369797590029

/-!
# A083806: Perfect powers using only prime digits and 1.

The programs for A083806, there is no canonical definition to state claims against.
-/

/-! ## A083806.P16010195391332566521

`∩[A001597(n+1), A001742(n+1)]`
-/

namespace A083806.P16010195391332566521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083806.P16010195391332566521

/-! ## A083806.P11465685590395146382

`filter[A001742(n+1), A075802(#)]`
-/

namespace A083806.P11465685590395146382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A083806.P11465685590395146382

/-!
# A083807: Perfect powers using only composite digits 4,6,8,9 and 0.

The programs for A083807, there is no canonical definition to state claims against.
-/

/-! ## A083807.P8451390657667704831

`∩[A001597(n+1), A001744(n+1)]`
-/

namespace A083807.P8451390657667704831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083807.P8451390657667704831

/-! ## A083807.P4922723024733767484

`∩[A001744(n+1), A259183(n+1)]`
-/

namespace A083807.P4922723024733767484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083807.P4922723024733767484

/-! ## A083807.P3721835862740063215

`filter[A001744(n+2), A075802(#)]`
-/

namespace A083807.P3721835862740063215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A083807.P3721835862740063215

/-!
# A083808: Smallest prime == 1 (mod n-th unary number U(n) = (10^n-1)/9).

The programs for A083808, there is no canonical definition to state claims against.
-/

/-! ## A083808.P13105613149620683514

`A070846(∑[10^n])-A008651(n)`
-/

namespace A083808.P13105613149620683514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (∑ j ∈ Finset.range (n + 1), f1 j) - A008651 n

end

end A083808.P13105613149620683514

/-!
# A083810: a(n) = f^(n) (n), where f(n) is the smallest prime == 1 mod n (cf. A034694).

The programs for A083810, there is no canonical definition to state claims against.
-/

/-! ## A083810.P16893723328296817539

`A083809(∑[n+1])`
-/

namespace A083810.P16893723328296817539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083809 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083810.P16893723328296817539

/-! ## A083810.P18081385971994171081

`A083809(record[A038722(n+1)])^A033999(n)²`
-/

namespace A083810.P18081385971994171081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083809 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) ^ (A033999 n ^ 2 : ℤ)

end

end A083810.P18081385971994171081

/-! ## A083810.P10545550011582815922

`A083809(record[A038722(n+1)])+A000007(n+1)`
-/

namespace A083810.P10545550011582815922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083809 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A000007 (n + 1)

end

end A083810.P10545550011582815922

/-! ## A083810.P17073610062262930317

`A083809(record[A038722(n+1)])^(n+1)^A102388(n+1)`
-/

namespace A083810.P17073610062262930317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A083809 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℝ) ^ ((n + 1 : ℚ) ^ (A102388 (n + 1) : ℤ) : ℝ)

end

end A083810.P17073610062262930317

/-!
# A083811: Numbers k such that 2*k+1 is the digit reversal of k+1.

The programs for A083811, the canonical program `A083811.P10128322928819353492` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083811 has offset 1).

The definition of A083811 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083811.P10128322928819353492

`4*(10^(n+1)-1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A083811

/-- `4*(10^(n+1)-1)` -/
def P10128322928819353492.Spec : Prop :=
  ∀ n, P10128322928819353492.a n = A083811 (n + 1)

theorem P10128322928819353492.correct : P10128322928819353492.Spec := by
  intro n
  simp only [A083811, Nat.add_sub_cancel]

end A083811

/-! ## A083811.P1258074448427985026

`lcm(4, ∑[lcm(9, 10^n)])`
-/

namespace A083811.P1258074448427985026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 9 (10 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083811.P1258074448427985026

namespace A083811

/-- `lcm(4, ∑[lcm(9, 10^n)])` -/
def P1258074448427985026.Spec : Prop :=
  ∀ n, (P1258074448427985026.a n : ℤ) = A083811 (n + 1)

end A083811

/-! ## A083811.P6852802020837607706

`lcm(12, 10^(n+1)-1)`
-/

namespace A083811.P6852802020837607706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 12 ((10 ^ (n + 1) : ℤ) - 1)

end

end A083811.P6852802020837607706

namespace A083811

/-- `lcm(12, 10^(n+1)-1)` -/
def P6852802020837607706.Spec : Prop :=
  ∀ n, (P6852802020837607706.a n : ℤ) = A083811 (n + 1)

end A083811

/-! ## A083811.P13943078961533284314

`10*a(n-1)+36` with `a(0)=36`
-/

namespace A083811.P13943078961533284314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [36] fun n a =>
  10 * a (n - 1) + 36

end

end A083811.P13943078961533284314

namespace A083811

/-- `10*a(n-1)+36` -/
def P13943078961533284314.Spec : Prop :=
  ∀ n, (P13943078961533284314.a n : ℤ) = A083811 (n + 1)

theorem P13943078961533284314.correct : P13943078961533284314.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083811, Nat.add_sub_cancel, A083811.P13943078961533284314.a, A083811.P10128322928819353492.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083811, Nat.add_sub_cancel, A083811.P13943078961533284314.a, A083811.P10128322928819353492.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083811

/-! ## A083811.P12378269078390220192

`floor(∑[10*a(n-1)])` with `a(0)=36`

`floor` is left out, it is the identity on integers.
-/

namespace A083811.P12378269078390220192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [36] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083811.P12378269078390220192

namespace A083811

/-- `floor(∑[10*a(n-1)])` -/
def P12378269078390220192.Spec : Prop :=
  ∀ n, (P12378269078390220192.a n : ℤ) = A083811 (n + 1)

end A083811

/-! ## A083811.P17445595242590759757

`A086575(n+1)`
-/

namespace A083811.P17445595242590759757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086575 (n + 1)

end

end A083811.P17445595242590759757

namespace A083811

/-- `A086575(n+1)` -/
def P17445595242590759757.Spec : Prop :=
  ∀ n, P17445595242590759757.a n = A083811 (n + 1)

end A083811

/-! ## A083811.P14857438820326851885

`A083818(n+2)-1`
-/

namespace A083811.P14857438820326851885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083818 (n + 2) - 1

end

end A083811.P14857438820326851885

namespace A083811

/-- `A083818(n+2)-1` -/
def P14857438820326851885.Spec : Prop :=
  ∀ n, P14857438820326851885.a n = A083811 (n + 1)

end A083811

/-!
# A083813: a(n) = 3*(10^n - 1).

The programs for A083813, the canonical program `A083813.P14654733700154790409` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083813 has offset 1).

The definition of A083813 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(10^(n+1)-1)` (program `A083813.P14654733700154790409`, by `A083813.P14654733700154790409.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083813.P14654733700154790409

`3*(10^(n+1)-1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A083813

/-- `3*(10^(n+1)-1)` -/
def P14654733700154790409.Spec : Prop :=
  ∀ n, P14654733700154790409.a n = A083813 (n + 1)

theorem P14654733700154790409.correct : P14654733700154790409.Spec := by
  intro n
  simp only [A083813, Nat.add_sub_cancel]

end A083813

/-! ## A083813.P15645399016251929677

`11*a(n-1)-10*a(n-2)` with `a(0)=27, a(1)=297`
-/

namespace A083813.P15645399016251929677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [27, 297] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A083813.P15645399016251929677

namespace A083813

/-- `11*a(n-1)-10*a(n-2)` -/
def P15645399016251929677.Spec : Prop :=
  ∀ n, P15645399016251929677.a n = A083813 (n + 1)

theorem P15645399016251929677.correct : P15645399016251929677.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A083813, Nat.add_sub_cancel, A083813.P15645399016251929677.a, A083813.P14654733700154790409.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A083813, Nat.add_sub_cancel, A083813.P15645399016251929677.a, A083813.P14654733700154790409.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083813

/-! ## A083813.P14195605639961730292

`lcm(3, 10^(n+1))-3`
-/

namespace A083813.P14195605639961730292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (10 ^ (n + 1)) : ℤ) - 3

end

end A083813.P14195605639961730292

namespace A083813

/-- `lcm(3, 10^(n+1))-3` -/
def P14195605639961730292.Spec : Prop :=
  ∀ n, P14195605639961730292.a n = A083813 (n + 1)

end A083813

/-! ## A083813.P1473696892596938040

`or(1, 30*10^n-3)`
-/

namespace A083813.P1473696892596938040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((30 * 10 ^ n : ℤ) - 3)

end

end A083813.P1473696892596938040

namespace A083813

/-- `or(1, 30*10^n-3)` -/
def P1473696892596938040.Spec : Prop :=
  ∀ n, P1473696892596938040.a n = A083813 (n + 1)

end A083813

/-! ## A083813.P13332257700519122809

`10*a(n-1)+27` with `a(0)=27`
-/

namespace A083813.P13332257700519122809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [27] fun n a =>
  10 * a (n - 1) + 27

end

end A083813.P13332257700519122809

namespace A083813

/-- `10*a(n-1)+27` -/
def P13332257700519122809.Spec : Prop :=
  ∀ n, (P13332257700519122809.a n : ℤ) = A083813 (n + 1)

theorem P13332257700519122809.correct : P13332257700519122809.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083813, Nat.add_sub_cancel, A083813.P13332257700519122809.a, A083813.P14654733700154790409.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083813, Nat.add_sub_cancel, A083813.P13332257700519122809.a, A083813.P14654733700154790409.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083813

/-! ## A083813.P8911296280806625199

`floor(∑[10*a(n-1)])` with `a(0)=27`

`floor` is left out, it is the identity on integers.
-/

namespace A083813.P8911296280806625199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [27] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083813.P8911296280806625199

namespace A083813

/-- `floor(∑[10*a(n-1)])` -/
def P8911296280806625199.Spec : Prop :=
  ∀ n, (P8911296280806625199.a n : ℤ) = A083813 (n + 1)

end A083813

/-! ## A083813.P9623889063860038558

`A086574(n+1)`
-/

namespace A083813.P9623889063860038558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086574 (n + 1)

end

end A083813.P9623889063860038558

namespace A083813

/-- `A086574(n+1)` -/
def P9623889063860038558.Spec : Prop :=
  ∀ n, P9623889063860038558.a n = A083813 (n + 1)

end A083813

/-! ## A083813.P10158470332791934950

`A086941(n+1)+3`
-/

namespace A083813.P10158470332791934950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086941 (n + 1) + 3

end

end A083813.P10158470332791934950

namespace A083813

/-- `A086941(n+1)+3` -/
def P10158470332791934950.Spec : Prop :=
  ∀ n, P10158470332791934950.a n = A083813 (n + 1)

end A083813

/-!
# A083815: Semiprimes whose prime factors are distinct and the reversal of one factor is equal to the other.

The programs for A083815, there is no canonical definition to state claims against.
-/

/-! ## A083815.P75049862782295174

`∩[A129623(n+1), A376746(n+1)]`
-/

namespace A083815.P75049862782295174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083815.P75049862782295174

/-! ## A083815.P7991820105677762390

`∩[A046448(n+1), A129623(n+1)]`
-/

namespace A083815.P7991820105677762390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083815.P7991820105677762390

/-! ## A083815.P13801748504567812641

`∩[A046448(n+1), A376746(n+1)]`
-/

namespace A083815.P13801748504567812641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083815.P13801748504567812641

/-! ## A083815.P6912828923682227101

`∩[A129623(n+1), A144719(n+1)]`
-/

namespace A083815.P6912828923682227101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083815.P6912828923682227101

/-! ## A083815.P2994335875750025448

`∩[A046451(n+1), A129623(n+1)]`
-/

namespace A083815.P2994335875750025448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083815.P2994335875750025448

/-!
# A083816: 10^n-th palindrome.

The programs for A083816, there is no canonical definition to state claims against.
-/

/-! ## A083816.P3269772618529192270

`A084985(6^n)`
-/

namespace A083816.P3269772618529192270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084985 (6 ^ n)

end

end A083816.P3269772618529192270

/-!
# A083817: Interleaving of (1,2,3,4,5,...), (2,2,2,2,...) and (0,1,3,6,10,...).

The programs for A083817, there is no canonical definition to state claims against.
-/

/-! ## A083817.P17991621379696925538

`A062756(A138142(3*n+1))+A010054(n)`
-/

namespace A083817.P17991621379696925538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A138142 (3 * n + 1)).toNat + A010054 n

end

end A083817.P17991621379696925538

/-!
# A083818: Numbers k such that 2k-1 is the digit reversal of k.

The programs for A083818, the canonical program `A083818.P1973650666487385807` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083818 has offset 1).

The definition of A083818 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083818.P1973650666487385807

`4*10^n-3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A083818

/-- `4*10^n-3` -/
def P1973650666487385807.Spec : Prop :=
  ∀ n, P1973650666487385807.a n = A083818 (n + 1)

theorem P1973650666487385807.correct : P1973650666487385807.Spec := by
  intro n
  simp only [A083818, Nat.add_sub_cancel]

end A083818

/-! ## A083818.P15228756348036391435

`∑[10*a(n-1)]` with `a(0)=1, a(1)=36`
-/

namespace A083818.P15228756348036391435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 36] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083818.P15228756348036391435

namespace A083818

/-- `∑[10*a(n-1)]` -/
def P15228756348036391435.Spec : Prop :=
  ∀ n, (P15228756348036391435.a n : ℤ) = A083818 (n + 1)

end A083818

/-! ## A083818.P17559641625936990989

`xor(1, 12*floor(10^n/3))`
-/

namespace A083818.P17559641625936990989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (12 * ⌊(10 ^ n : ℚ) / 3⌋)

end

end A083818.P17559641625936990989

namespace A083818

/-- `xor(1, 12*floor(10^n/3))` -/
def P17559641625936990989.Spec : Prop :=
  ∀ n, P17559641625936990989.a n = A083818 (n + 1)

end A083818

/-! ## A083818.P2712567393380088706

`abs(10*(a(n-1)+2)+7)` with `a(0)=1`
-/

namespace A083818.P2712567393380088706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 * (a (n - 1) + 2) + 7

end

end A083818.P2712567393380088706

namespace A083818

/-- `abs(10*(a(n-1)+2)+7)` -/
def P2712567393380088706.Spec : Prop :=
  ∀ n, (P2712567393380088706.a n : ℤ) = A083818 (n + 1)

theorem P2712567393380088706.correct : P2712567393380088706.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083818, Nat.add_sub_cancel, A083818.P2712567393380088706.a, A083818.P1973650666487385807.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083818, Nat.add_sub_cancel, A083818.P2712567393380088706.a, A083818.P1973650666487385807.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083818

/-! ## A083818.P3901694048329214545

`or(1, (10^n-1)/(1/2)²)`
-/

namespace A083818.P3901694048329214545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (((10 ^ n : ℤ) - 1 : ℚ) / ((1 : ℚ) / 2) ^ 2))

end

end A083818.P3901694048329214545

namespace A083818

/-- `or(1, (10^n-1)/(1/2)²)` -/
def P3901694048329214545.Spec : Prop :=
  ∀ n, P3901694048329214545.a n = A083818 (n + 1)

end A083818

/-! ## A083818.P10793231401343910506

`and(-3, lcm(3, floor(4/3*10^n)))`
-/

namespace A083818.P10793231401343910506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (Int.lcm 3 ⌊(4 : ℚ) / 3 * (10 ^ n : ℚ)⌋ : ℤ)

end

end A083818.P10793231401343910506

namespace A083818

/-- `and(-3, lcm(3, floor(4/3*10^n)))` -/
def P10793231401343910506.Spec : Prop :=
  ∀ n, P10793231401343910506.a n = A083818 (n + 1)

end A083818

/-! ## A083818.P727561387055247772

`abs(2-A198970(n))`
-/

namespace A083818.P727561387055247772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A198970 n|

end

end A083818.P727561387055247772

namespace A083818

/-- `abs(2-A198970(n))` -/
def P727561387055247772.Spec : Prop :=
  ∀ n, P727561387055247772.a n = A083818 (n + 1)

end A083818

/-! ## A083818.P16916011847774276836

`ceil(A100412(n)/2)`
-/

namespace A083818.P16916011847774276836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100412 n : ℚ) / 2⌉

end

end A083818.P16916011847774276836

namespace A083818

/-- `ceil(A100412(n)/2)` -/
def P16916011847774276836.Spec : Prop :=
  ∀ n, P16916011847774276836.a n = A083818 (n + 1)

end A083818

/-! ## A083818.P12594296273439614429

`(A198973(n)-5)/2`
-/

namespace A083818.P12594296273439614429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198973 n - 5 : ℚ) / 2

end

end A083818.P12594296273439614429

namespace A083818

/-- `(A198973(n)-5)/2` -/
def P12594296273439614429.Spec : Prop :=
  ∀ n, P12594296273439614429.a n = (A083818 (n + 1) : ℚ)

end A083818

/-! ## A083818.P4471268663010702368

`abs(2*abs(2*A011557(n)-1)-1)`
-/

namespace A083818.P4471268663010702368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * |2 * A011557 n - 1| - 1)|

end

end A083818.P4471268663010702368

namespace A083818

/-- `abs(2*abs(2*A011557(n)-1)-1)` -/
def P4471268663010702368.Spec : Prop :=
  ∀ n, P4471268663010702368.a n = A083818 (n + 1)

end A083818

/-! ## A083818.P17137378177605290154

`abs(36*(A099915(n)-A099914(n))+1)`
-/

namespace A083818.P17137378177605290154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |36 * (A099915 n - A099914 n) + 1|

end

end A083818.P17137378177605290154

namespace A083818

/-- `abs(36*(A099915(n)-A099914(n))+1)` -/
def P17137378177605290154.Spec : Prop :=
  ∀ n, P17137378177605290154.a n = A083818 (n + 1)

end A083818

/-!
# A083820: Primes in which odd positioned digits are prime and even positioned digits are composite. The least significant digit is taken to be the first digit.

The programs for A083820, there is no canonical definition to state claims against.
-/

/-! ## A083820.P2069688671253132426

`p?[lt[A045876(n+1), A118881(n+1)]]`
-/

namespace A083820.P2069688671253132426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045876 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A083820.P2069688671253132426

/-!
# A083821: Primes in which odd positioned digits are composite and even positioned digits are primes. The least significant digit is the taken to be the first digit.

The programs for A083821, there is no canonical definition to state claims against.
-/

/-! ## A083821.P12806396422607103235

`A154762(A162948(n+2))`
-/

namespace A083821.P12806396422607103235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154762 (A162948 (n + 2)).toNat

end

end A083821.P12806396422607103235

/-!
# A083822: a(n) = digit reversal of 3*n, divided by 3.

The programs for A083822, there is no canonical definition to state claims against.
-/

/-! ## A083822.P11743134502017003857

`A004086(3*(n+1))/3`
-/

namespace A083822.P11743134502017003857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004086 (3 * (n + 1)) : ℚ) / 3

end

end A083822.P11743134502017003857

/-! ## A083822.P744380541382489842

`∑[Δ[A004086(3*n)]/3]`
-/

namespace A083822.P744380541382489842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (3 * n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083822.P744380541382489842

/-! ## A083822.P16781468939617193565

`A002264(A004086(3*(n+1)))`
-/

namespace A083822.P16781468939617193565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004086 (3 * (n + 1))).toNat

end

end A083822.P16781468939617193565

/-! ## A083822.P14150506428445565544

`A255588(A004086(3*n+3))`
-/

namespace A083822.P14150506428445565544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (A004086 (3 * n + 3)).toNat

end

end A083822.P14150506428445565544

/-! ## A083822.P6472603313676666476

`A135020(6*(n+1))/3`
-/

namespace A083822.P6472603313676666476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135020 (6 * (n + 1)) : ℚ) / 3

end

end A083822.P6472603313676666476

/-! ## A083822.P18352676810387398391

`A008615(2*A004086(3*(n+1)))`
-/

namespace A083822.P18352676810387398391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A004086 (3 * (n + 1))).toNat

end

end A083822.P18352676810387398391

/-!
# A083824: a(n) = digit reversal of 9*n, divided by 9.

The programs for A083824, there is no canonical definition to state claims against.
-/

/-! ## A083824.P4111590920875682324

`A004086(9*n)/9`
-/

namespace A083824.P4111590920875682324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004086 (9 * n) : ℚ) / 9

end

end A083824.P4111590920875682324

/-! ## A083824.P14749755742509671518

`floor(A004086(A008591(n))/9)`
-/

namespace A083824.P14749755742509671518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004086 (A008591 n).toNat : ℚ) / 9⌋

end

end A083824.P14749755742509671518

/-! ## A083824.P7347747902861438248

`(A004086(A008591(n))/9)%A146081(n)`
-/

namespace A083824.P7347747902861438248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A004086 (A008591 n).toNat : ℚ) / 9)) (A146081 n)

end

end A083824.P7347747902861438248

/-! ## A083824.P779638759221877643

`(A004086(A008591(n))/9)^A007318(C(2, n))`
-/

namespace A083824.P779638759221877643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A004086 (A008591 n).toNat : ℚ) / 9) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A083824.P779638759221877643

/-! ## A083824.P146281512243926761

`A008683(A274595(n+2))+A004086(A008591(n))/9`
-/

namespace A083824.P146281512243926761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A274595 (n + 2)).toNat : ℚ) + (A004086 (A008591 n).toNat : ℚ) / 9

end

end A083824.P146281512243926761

/-! ## A083824.P4532629161645827570

`A056964(9*n)/9-n`
-/

namespace A083824.P4532629161645827570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056964 (9 * n) : ℚ) / 9 - (n : ℚ)

end

end A083824.P4532629161645827570

/-! ## A083824.P3169369864802150480

`A106610(A004086(9*n))`
-/

namespace A083824.P3169369864802150480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A004086 (9 * n)).toNat

end

end A083824.P3169369864802150480

/-! ## A083824.P15602308782416147261

`A002264(A083822(A008486(n)))`
-/

namespace A083824.P15602308782416147261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A083822 (A008486 n).toNat).toNat

end

end A083824.P15602308782416147261

/-!
# A083826: Smallest k such that k+ 9*(A000042(n-1)*{n, mod 10) is digit reversal of k. A000042(n) = (10^n-1)/9.,a(10n) = 0.

The programs for A083826, there is no canonical definition to state claims against.
-/

/-! ## A083826.P13580810664250446472

`A073731(A272360(n+2))`
-/

namespace A083826.P13580810664250446472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 ((A272360 (n + 2)).toNat + 10)

end

end A083826.P13580810664250446472

/-! ## A083826.P15566347005439564243

`A318699(A239218(n+3))`
-/

namespace A083826.P15566347005439564243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318699 (A239218 (n + 3)).toNat

end

end A083826.P15566347005439564243

/-! ## A083826.P708208976808049948

`record[A318699(A002998(n)+3)]`
-/

namespace A083826.P708208976808049948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318699 (A002998 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083826.P708208976808049948

/-! ## A083826.P18445011799511686628

`record[A318699(A056143(n)+3)]`
-/

namespace A083826.P18445011799511686628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318699 (A056143 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083826.P18445011799511686628

/-! ## A083826.P8449091148594246270

`A318699(A002998(n+1)+2)`
-/

namespace A083826.P8449091148594246270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318699 (A002998 (n + 1) + 2).toNat

end

end A083826.P8449091148594246270

/-!
# A083827: Let x(n) = 123...n, y(n) = n...321; a(n) = y(n) concatenated with x(n) - x(n) concatenated with y(n).

The programs for A083827, there is no canonical definition to state claims against.
-/

/-! ## A083827.P206514051656520658

`A272617(n+1)-A259937(n+1)`
-/

namespace A083827.P206514051656520658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272617 (n + 1) - A259937 (n + 1)

end

end A083827.P206514051656520658

/-! ## A083827.P12443962157400659164

`A272617(n+1)-A007907(2*(n+1))`
-/

namespace A083827.P12443962157400659164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272617 (n + 1) - A007907 (2 * (n + 1))

end

end A083827.P12443962157400659164

/-! ## A083827.P926077485003909573

`A002283(A033061(n+1))*A019566(n+1)`
-/

namespace A083827.P926077485003909573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (A033061 (n + 1)).toNat * A019566 (n + 1)

end

end A083827.P926077485003909573

/-! ## A083827.P2167153705957923405

`A002283(A058183(n+1))*A019566(n+1)`
-/

namespace A083827.P2167153705957923405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (A058183 (n + 1)).toNat * A019566 (n + 1)

end

end A083827.P2167153705957923405

/-! ## A083827.P2898348728676744685

`A002283(A077727(n+1))*A019566(n+1)`
-/

namespace A083827.P2898348728676744685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (A077727 (n + 1)).toNat * A019566 (n + 1)

end

end A083827.P2898348728676744685

/-!
# A083828: Let x(n) = 123...n, y(n) = n...321; c(n) = delete the least significant digit of y(n) and concatenate with x(n); d(n) = delete the least significant digit of x(n) and concatenate with y(n). a(n) = c(n) - d(n).

The programs for A083828, there is no canonical definition to state claims against.
-/

/-! ## A083828.P4902526641156164382

`A007942(n+1)-A007907(A316492(n+1))`
-/

namespace A083828.P4902526641156164382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007942 (n + 1) - A007907 (A316492 (n + 1)).toNat

end

end A083828.P4902526641156164382

/-!
# A083829: Palindromes k such that 3k + 1 is also a palindrome.

The programs for A083829, there is no canonical definition to state claims against.
-/

/-! ## A083829.P8466561494763751644

`floor(A083830(n+1)/3)`
-/

namespace A083829.P8466561494763751644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083830 (n + 1) : ℚ) / 3⌋

end

end A083829.P8466561494763751644

/-! ## A083829.P10660572805270544021

`A007318(∑[n])*round(A083830(n+1)/3)`
-/

namespace A083829.P10660572805270544021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A083830 (n + 1) : ℚ) / 3)

end

end A083829.P10660572805270544021

/-! ## A083829.P15224684838312996305

`round(A083830(n+1)/3)%A000045(n+4)²`
-/

namespace A083829.P15224684838312996305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A083830 (n + 1) : ℚ) / 3)) (A000045 (n + 4) ^ 2)

end

end A083829.P15224684838312996305

/-! ## A083829.P5205304539980306263

`A002264(A083830(n+1))`
-/

namespace A083829.P5205304539980306263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A083830 (n + 1)).toNat

end

end A083829.P5205304539980306263

/-! ## A083829.P12485052978008373001

`eq[A050782(3*n+1)², A050782(n)]`
-/

namespace A083829.P12485052978008373001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 (3 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083829.P12485052978008373001

/-!
# A083830: Palindromes of the form 3n + 1 where n is also a palindrome: palindromes arising in A083829.

The programs for A083830, there is no canonical definition to state claims against.
-/

/-! ## A083830.P10328797971357187418

`3*A083829(n+1)+1`
-/

namespace A083830.P10328797971357187418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083829 (n + 1) + 1

end

end A083830.P10328797971357187418

/-! ## A083830.P7362907546046021140

`A016777(A083829(n+1))`
-/

namespace A083830.P7362907546046021140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A083829 (n + 1)).toNat

end

end A083830.P7362907546046021140

/-! ## A083830.P14740292902134374200

`A033627(A083829(n+1)+2)`
-/

namespace A083830.P14740292902134374200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (A083829 (n + 1) + 2).toNat

end

end A083830.P14740292902134374200

/-! ## A083830.P6154908432942266353

`A325564(6*A083829(n+1))`
-/

namespace A083830.P6154908432942266353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325564 (6 * A083829 (n + 1)).toNat

end

end A083830.P6154908432942266353

/-! ## A083830.P8875169284691293883

`A008486(A083829(n+1)+1)-2`
-/

namespace A083830.P8875169284691293883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A083829 (n + 1) + 1).toNat - 2

end

end A083830.P8875169284691293883

/-!
# A083831: Palindromes n such that 4n + 1 is also a palindrome.

The programs for A083831, there is no canonical definition to state claims against.
-/

/-! ## A083831.P14384460166609272893

`floor(A083832(n+1)/4)`
-/

namespace A083831.P14384460166609272893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083832 (n + 1) : ℚ) / 4⌋

end

end A083831.P14384460166609272893

/-! ## A083831.P8407313989729959475

`A007318(∑[n])*round(A083832(n+1)/4)`
-/

namespace A083831.P8407313989729959475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A083832 (n + 1) : ℚ) / 4)

end

end A083831.P8407313989729959475

/-! ## A083831.P3948611701663145925

`round(A083832(n+1)/4)%A000032(n+16)`
-/

namespace A083831.P3948611701663145925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A083832 (n + 1) : ℚ) / 4)) (A000032 (n + 16))

end

end A083831.P3948611701663145925

/-! ## A083831.P10011852271993496461

`A008683(4*(n+1))+round(A083832(n+1)/4)`
-/

namespace A083831.P10011852271993496461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + SequenceMachineLib.roundAway ((A083832 (n + 1) : ℚ) / 4)

end

end A083831.P10011852271993496461

/-! ## A083831.P2223043218847644101

`round(A083832(n+1)/4)/A007318(C(2, n+1))`
-/

namespace A083831.P2223043218847644101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A083832 (n + 1) : ℚ) / 4) : ℚ) / (A007318 (Nat.choose 2 (n + 1)) : ℚ)

end

end A083831.P2223043218847644101

/-!
# A083832: Palindromes of the form 4n + 1 where n is also a palindrome. Palindromes arising in A083831.

The programs for A083832, there is no canonical definition to state claims against.
-/

/-! ## A083832.P2145816773451854177

`4*A083831(n+1)+1`
-/

namespace A083832.P2145816773451854177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A083831 (n + 1) + 1

end

end A083832.P2145816773451854177

/-! ## A083832.P10128818876492581734

`A016825(A083831(n+1))-1`
-/

namespace A083832.P10128818876492581734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A083831 (n + 1)).toNat - 1

end

end A083832.P10128818876492581734

/-! ## A083832.P10782198993219941970

`A308778(n²)+A016825(A083831(n+1))`
-/

namespace A083832.P10782198993219941970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A016825 (A083831 (n + 1)).toNat

end

end A083832.P10782198993219941970

/-! ## A083832.P10844491964702674885

`A033999(A001844(n))+A016825(A083831(n+1))`
-/

namespace A083832.P10844491964702674885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A001844 n).toNat + A016825 (A083831 (n + 1)).toNat

end

end A083832.P10844491964702674885

/-! ## A083832.P4730836387765454365

`A033999(A005408(n))+A016825(A083831(n+1))`
-/

namespace A083832.P4730836387765454365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A005408 n).toNat + A016825 (A083831 (n + 1)).toNat

end

end A083832.P4730836387765454365

/-!
# A083833: Palindromes p such that 5p + 1 is also a palindrome.

The programs for A083833, there is no canonical definition to state claims against.
-/

/-! ## A083833.P1695160231343857529

`floor(A083834(n+1)/5)`
-/

namespace A083833.P1695160231343857529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083834 (n + 1) : ℚ) / 5⌋

end

end A083833.P1695160231343857529

/-! ## A083833.P17368309270420243064

`round(A083834(-xor(n, -1))/5)`
-/

namespace A083833.P17368309270420243064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A083834 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 5)

end

end A083833.P17368309270420243064

/-! ## A083833.P12900834758210173444

`round(A083834(n-and(n, -4)%2+1)/5)`
-/

namespace A083833.P12900834758210173444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A083834 ((n : ℤ) - Int.tmod (Int.land (n : ℤ) (-4)) 2 + 1).toNat : ℚ) / 5)

end

end A083833.P12900834758210173444

/-! ## A083833.P2167127134839180214

`round(A083834(A057427(n+1)+n)/5)`
-/

namespace A083833.P2167127134839180214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A083834 (A057427 (n + 1) + (n : ℤ)).toNat : ℚ) / 5)

end

end A083833.P2167127134839180214

/-! ## A083833.P13861584718737504337

`lcm(round(A083834(n+1)/5), A033999(n))`
-/

namespace A083833.P13861584718737504337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A083834 (n + 1) : ℚ) / 5)) (A033999 n)

end

end A083833.P13861584718737504337

/-! ## A083833.P47323491756919975

`round(A083834(A061691(C(n, n²)+1)+n)/5)`
-/

namespace A083833.P47323491756919975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A083834 (A061691 (Nat.choose n (n ^ 2) + 1) + (n : ℤ)).toNat : ℚ) / 5)

end

end A083833.P47323491756919975

/-! ## A083833.P5103609788445780871

`ceil(A083834(n+1)/5-A284939(2*(n+1)))`
-/

namespace A083833.P5103609788445780871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083834 (n + 1) : ℚ) / 5 - (A284939 (2 * (n + 1)) : ℚ)⌉

end

end A083833.P5103609788445780871

/-! ## A083833.P4624467790141022946

`round(A083834(n+1)/5)%A206143(n+1)`
-/

namespace A083833.P4624467790141022946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A083834 (n + 1) : ℚ) / 5)) (A206143 (n + 1))

end

end A083833.P4624467790141022946

/-!
# A083834: Palindromes of the form 5p + 1 where p is also a palindrome. Palindromes arising in A083833.

The programs for A083834, there is no canonical definition to state claims against.
-/

/-! ## A083834.P14984542617198026346

`5*A083833(n+1)+1`
-/

namespace A083834.P14984542617198026346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A083833 (n + 1) + 1

end

end A083834.P14984542617198026346

/-! ## A083834.P2304074189376482328

`A016861(A083833(n+1))`
-/

namespace A083834.P2304074189376482328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A083833 (n + 1)).toNat

end

end A083834.P2304074189376482328

/-! ## A083834.P2543958763175403772

`A325564(10*A083833(n+1))`
-/

namespace A083834.P2543958763175403772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325564 (10 * A083833 (n + 1)).toNat

end

end A083834.P2543958763175403772

/-!
# A083835: Palindromes n such that 6n + 1 is also a palindrome.

The programs for A083835, there is no canonical definition to state claims against.
-/

/-! ## A083835.P6311114681310915074

`floor(A083836(n+1)/6)`
-/

namespace A083835.P6311114681310915074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083836 (n + 1) : ℚ) / 6⌋

end

end A083835.P6311114681310915074

/-! ## A083835.P11820663121594650297

`(A083836(n+1)-A000009(A001878(n)))/6`
-/

namespace A083835.P11820663121594650297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083836 (n + 1) - A000009 (A001878 n).toNat : ℚ) / 6

end

end A083835.P11820663121594650297

/-! ## A083835.P7049800965078010996

`(A083836(n+1)-A032741(A002144(n+1)))/6`
-/

namespace A083835.P7049800965078010996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083836 (n + 1) - A032741 (A002144 (n + 1)).toNat : ℚ) / 6

end

end A083835.P7049800965078010996

/-! ## A083835.P10868039565805381603

`(A083836(n+1)-A032741(A105444(n+1)))/6`
-/

namespace A083835.P10868039565805381603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083836 (n + 1) - A032741 (A105444 (n + 1)).toNat : ℚ) / 6

end

end A083835.P10868039565805381603

/-! ## A083835.P4404303595132450125

`(A083836(n+1)-A014421(A001878(2*(n+2))))/6`
-/

namespace A083835.P4404303595132450125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083836 (n + 1) - A014421 (A001878 (2 * (n + 2))).toNat : ℚ) / 6

end

end A083835.P4404303595132450125

/-!
# A083836: Palindromes of the form 6n + 1 where n is also a palindrome. palindromes arising in A083835.

The programs for A083836, there is no canonical definition to state claims against.
-/

/-! ## A083836.P11895628814469480372

`6*A083835(n+1)+1`
-/

namespace A083836.P11895628814469480372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A083835 (n + 1) + 1

end

end A083836.P11895628814469480372

/-! ## A083836.P6234938615459855202

`A016921(A083835(n+1))`
-/

namespace A083836.P6234938615459855202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A083835 (n + 1)).toNat

end

end A083836.P6234938615459855202

/-! ## A083836.P17625804229737131534

`A271114(or(1, A083835(n+1)))`
-/

namespace A083836.P17625804229737131534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 (Int.lor 1 (A083835 (n + 1))).toNat

end

end A083836.P17625804229737131534

/-!
# A083837: Smallest palindrome n such that kn + 1 is a palindrome, or 0 if no such number exists.

The programs for A083837, there is no canonical definition to state claims against.
-/

/-! ## A083837.P4333825933977234716

`C(∏{p}[n+1, #*val(n+1, #)], A340998(n²))`
-/

namespace A083837.P4333825933977234716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p) (A340998 (n ^ 2 + 140)).toNat

end

end A083837.P4333825933977234716

/-! ## A083837.P3450560278145803257

`A034367(A105613(n))`
-/

namespace A083837.P3450560278145803257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034367 (A105613 n).toNat

end

end A083837.P3450560278145803257

/-! ## A083837.P7732570928377479994

`A034367(A143806(n))`
-/

namespace A083837.P7732570928377479994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034367 (A143806 n).toNat

end

end A083837.P7732570928377479994

/-! ## A083837.P12095404405715882419

`A126886(A079122(n))`
-/

namespace A083837.P12095404405715882419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126886 (A079122 n).toNat

end

end A083837.P12095404405715882419

/-! ## A083837.P18120483912754832616

`A205573(A035294(n))`
-/

namespace A083837.P18120483912754832616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205573 (A035294 n).toNat

end

end A083837.P18120483912754832616

/-!
# A083839: G.f.: ( x - 3*x^2 + 6*x^3 - 8*x^4 + 4*x^5 - x^7 ) / (1 - 4*x + 6*x^2 - 5*x^3 + 2*x^4 + x^5 - x^6 + x^7 ).

The programs for A083839, there is no canonical definition to state claims against.
-/

/-! ## A083839.P18383702448739988488

`A284263(A000110(n))+A000045(n)`
-/

namespace A083839.P18383702448739988488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284263 (A000110 n).toNat + A000045 n

end

end A083839.P18383702448739988488

/-!
# A083840: Palindromic primes which are a member of a twin prime pair.

The programs for A083840, there is no canonical definition to state claims against.
-/

/-! ## A083840.P6861988676003550428

`∪[A083841(n+1), A083842(n+1)]`
-/

namespace A083840.P6861988676003550428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083840.P6861988676003550428

/-! ## A083840.P16660721921545874017

`∩[A002385(n+1), A333207(n+1)]`
-/

namespace A083840.P16660721921545874017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083840.P16660721921545874017

/-! ## A083840.P9554716457788512658

`∩[A029950(n+1), A333207(n+1)]`
-/

namespace A083840.P9554716457788512658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083840.P9554716457788512658

/-! ## A083840.P10845281079258647365

`∩[A062687(n+1), A333207(n+1)]`
-/

namespace A083840.P10845281079258647365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083840.P10845281079258647365

/-! ## A083840.P2537188806354754093

`∩[A071251(n+1), A333207(n+1)]`
-/

namespace A083840.P2537188806354754093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083840.P2537188806354754093

/-! ## A083840.P13139889552082153360

`∩[A072299(n+1), A333207(n+1)]`
-/

namespace A083840.P13139889552082153360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083840.P13139889552082153360

/-! ## A083840.P645537799113630695

`∩[A075800(n+1), A333207(n+1)]`
-/

namespace A083840.P645537799113630695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083840.P645537799113630695

/-! ## A083840.P14171713766815793112

`∩[A080716(n+1), A333207(n+1)]`
-/

namespace A083840.P14171713766815793112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083840.P14171713766815793112

/-! ## A083840.P9595705289187583032

`∩[A083136(n+1), A333207(n+1)]`
-/

namespace A083840.P9595705289187583032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083840.P9595705289187583032

/-! ## A083840.P2333838110297868254

`∩[A083137(n+1), A333207(n+1)]`
-/

namespace A083840.P2333838110297868254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083840.P2333838110297868254

/-! ## A083840.P7866971737078999079

`∩[A098897(n+1), A333207(n+1)]`
-/

namespace A083840.P7866971737078999079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083840.P7866971737078999079

/-! ## A083840.P2101993049187176297

`∩[A169829(n+1), A333207(n+1)]`
-/

namespace A083840.P2101993049187176297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083840.P2101993049187176297

/-! ## A083840.P12146457346728666627

`∩[A188650(n+1), A333207(n+1)]`
-/

namespace A083840.P12146457346728666627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083840.P12146457346728666627

/-! ## A083840.P4738241544336277045

`∩[A226732(n+1), A333207(n+1)]`
-/

namespace A083840.P4738241544336277045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083840.P4738241544336277045

/-! ## A083840.P1752755370473556919

`∩[A265641(n+1), A333207(n+1)]`
-/

namespace A083840.P1752755370473556919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083840.P1752755370473556919

/-! ## A083840.P11520197010100627324

`∩[A324988(n+1), A333207(n+1)]`
-/

namespace A083840.P11520197010100627324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083840.P11520197010100627324

/-! ## A083840.P4216650183975651140

`∩[A324989(n+1), A333207(n+1)]`
-/

namespace A083840.P4216650183975651140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083840.P4216650183975651140

/-! ## A083840.P13925099409284435859

`∩[A327325(n+1), A333207(n+1)]`
-/

namespace A083840.P13925099409284435859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083840.P13925099409284435859

/-! ## A083840.P7747983961234264295

`∩[A333207(n+1), A340252(n+1)]`
-/

namespace A083840.P7747983961234264295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083840.P7747983961234264295

/-! ## A083840.P16112242501991164279

`∩[A333207(n+1), A356750(n+1)]`
-/

namespace A083840.P16112242501991164279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083840.P16112242501991164279

/-!
# A083841: Palindromic primes p such that p+2 is also a prime: members of A083840 which are the smaller member of a twin prime pair.

The programs for A083841, there is no canonical definition to state claims against.
-/

/-! ## A083841.P5008252519091855619

`∩[A002385(n+1), A101783(n+1)]`
-/

namespace A083841.P5008252519091855619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083841.P5008252519091855619

/-! ## A083841.P3537076209503147995

`∩[A062687(n+1), A101783(n+1)]`
-/

namespace A083841.P3537076209503147995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083841.P3537076209503147995

/-! ## A083841.P15302742995889723546

`∩[A072299(n+1), A101783(n+1)]`
-/

namespace A083841.P15302742995889723546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083841.P15302742995889723546

/-! ## A083841.P9945934057180834266

`∩[A080716(n+1), A101783(n+1)]`
-/

namespace A083841.P9945934057180834266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083841.P9945934057180834266

/-! ## A083841.P7005691648157614148

`∩[A083137(n+1), A101783(n+1)]`
-/

namespace A083841.P7005691648157614148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083841.P7005691648157614148

/-! ## A083841.P5868628744597198202

`∩[A083840(n+1), A101783(n+1)]`
-/

namespace A083841.P5868628744597198202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083841.P5868628744597198202

/-! ## A083841.P9255851757096482923

`∩[A084092(n+1), A101783(n+1)]`
-/

namespace A083841.P9255851757096482923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083841.P9255851757096482923

/-! ## A083841.P1623108041089865131

`∩[A101783(n+1), A169829(n+1)]`
-/

namespace A083841.P1623108041089865131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083841.P1623108041089865131

/-! ## A083841.P3416688778263343858

`∩[A001359(n+1), A002385(n+1)]`
-/

namespace A083841.P3416688778263343858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083841.P3416688778263343858

/-! ## A083841.P14542231228772236473

`∩[A101783(n+1), A356750(n+1)]`
-/

namespace A083841.P14542231228772236473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083841.P14542231228772236473

/-!
# A083842: Palindromic primes p such that p-2 is also a prime: members of A083840 which are the larger member of a twin prime pair.

The programs for A083842, there is no canonical definition to state claims against.
-/

/-! ## A083842.P9422868681740498919

`∩[A002385(n+1), A084991(n+1)]`
-/

namespace A083842.P9422868681740498919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083842.P9422868681740498919

/-! ## A083842.P15107151483605907131

`∩[A002385(n+1), A101782(n+1)]`
-/

namespace A083842.P15107151483605907131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083842.P15107151483605907131

/-! ## A083842.P16220890590174695606

`∩[A029950(n+1), A101782(n+1)]`
-/

namespace A083842.P16220890590174695606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083842.P16220890590174695606

/-! ## A083842.P173350093978821709

`∩[A072299(n+1), A084991(n+1)]`
-/

namespace A083842.P173350093978821709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083842.P173350093978821709

/-! ## A083842.P6058302932719778978

`∩[A056525(n+1), A101782(n+1)]`
-/

namespace A083842.P6058302932719778978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083842.P6058302932719778978

/-! ## A083842.P18082216586263381931

`∩[A062687(n+1), A101782(n+1)]`
-/

namespace A083842.P18082216586263381931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083842.P18082216586263381931

/-! ## A083842.P10589652019257727246

`∩[A083840(n+1), A084991(n+1)]`
-/

namespace A083842.P10589652019257727246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083842.P10589652019257727246

/-! ## A083842.P2096885241699616688

`∩[A071251(n+1), A101782(n+1)]`
-/

namespace A083842.P2096885241699616688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083842.P2096885241699616688

/-! ## A083842.P1510593332206163262

`∩[A072299(n+1), A101782(n+1)]`
-/

namespace A083842.P1510593332206163262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083842.P1510593332206163262

/-! ## A083842.P3746692348259087160

`∩[A075800(n+1), A101782(n+1)]`
-/

namespace A083842.P3746692348259087160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083842.P3746692348259087160

/-!
# A083844: Number of primes of the form x^2 + 1 < 10^n.

The programs for A083844, there is no canonical definition to state claims against.
-/

/-! ## A083844.P8998644120271542964

`A071868(A049416(n+1))`
-/

namespace A083844.P8998644120271542964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071868 (A049416 (n + 1)).toNat

end

end A083844.P8998644120271542964

/-! ## A083844.P11557566489192208793

`A071868(A083845(n+1))`
-/

namespace A083844.P11557566489192208793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071868 (A083845 (n + 1)).toNat

end

end A083844.P11557566489192208793

/-!
# A083845: a(n)^2 + 1 is largest prime of the form x^2 + 1 <= 10^n.

The programs for A083845, there is no canonical definition to state claims against.
-/

/-! ## A083845.P9222295841408774168

`floor(sqrt(A083846(n+1)))`
-/

namespace A083845.P9222295841408774168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A083846 (n + 1))

end

end A083845.P9222295841408774168

/-! ## A083845.P4965942921937834739

`round(sqrt(A083846(n+1)+A000034(n)))`
-/

namespace A083845.P4965942921937834739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A083846 (n + 1) + A000034 n : ℝ))

end

end A083845.P4965942921937834739

/-! ## A083845.P14846497010450923068

`round(sqrt(A083846(n+1)+A000290(n)))`
-/

namespace A083845.P14846497010450923068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A083846 (n + 1) + A000290 n : ℝ))

end

end A083845.P14846497010450923068

/-! ## A083845.P14190215721199886370

`A005574(A083844(n+1))`
-/

namespace A083845.P14190215721199886370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (A083844 (n + 1)).toNat

end

end A083845.P14190215721199886370

/-!
# A083846: a(n) is the largest prime of the form x^2 + 1 <= 10^n.

The programs for A083846, there is no canonical definition to state claims against.
-/

/-! ## A083846.P10320332092491745621

`A083845(n+1)²+1`
-/

namespace A083846.P10320332092491745621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083845 (n + 1) ^ 2 + 1

end

end A083846.P10320332092491745621

/-! ## A083846.P7203114661038594762

`A268674(A000079(n))+A083845(n+1)*A083845(n+1)`
-/

namespace A083846.P7203114661038594762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A000079 n).toNat + A083845 (n + 1) * A083845 (n + 1)

end

end A083846.P7203114661038594762

/-! ## A083846.P16077977486628032471

`A002496(A083844(n+1))`
-/

namespace A083846.P16077977486628032471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (A083844 (n + 1)).toNat

end

end A083846.P16077977486628032471

/-! ## A083846.P18104932389786645852

`A002522(A083845(n+1))`
-/

namespace A083846.P18104932389786645852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A083845 (n + 1)).toNat

end

end A083846.P18104932389786645852

/-!
# A083847: a(n) = number of primes of the form x^2 + 1 <= 2^n.

The programs for A083847, there is no canonical definition to state claims against.
-/

/-! ## A083847.P17579576444058020193

`A174246(ceil(acot(n)+n))`
-/

namespace A083847.P17579576444058020193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174246 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A083847.P17579576444058020193

/-! ## A083847.P6244893922961461878

`floor(A174246(n+1)+acot(n))`
-/

namespace A083847.P6244893922961461878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A174246 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A083847.P6244893922961461878

/-! ## A083847.P7828162803605162842

`A174246(round(sqrt(n²+1))+1)`
-/

namespace A083847.P7828162803605162842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174246 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

end

end A083847.P7828162803605162842

/-! ## A083847.P1457904071397352407

`A174246(n+1)+A000007(n)`
-/

namespace A083847.P1457904071397352407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174246 (n + 1) + A000007 n

end

end A083847.P1457904071397352407

/-! ## A083847.P13451981977986174908

`A174246(n+1)+A088157(n)`
-/

namespace A083847.P13451981977986174908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174246 (n + 1) + A088157 n

end

end A083847.P13451981977986174908

/-!
# A083848: a(n)^2 + 1 is largest prime of the form x^2 + 1 <= 2^n.

The programs for A083848, there is no canonical definition to state claims against.
-/

/-! ## A083848.P299812241756469298

`floor(sqrt(A083849(n+1)))`
-/

namespace A083848.P299812241756469298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A083849 (n + 1))

end

end A083848.P299812241756469298

/-! ## A083848.P4712719031836881465

`sqrt(A083849(n+1)-A033999(n)²)`
-/

namespace A083848.P4712719031836881465
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A083849 (n + 1) - A033999 n ^ 2 : ℝ)

end

end A083848.P4712719031836881465

/-! ## A083848.P15085119189928666364

`round(sqrt(A083856(n)+A083849(n+1)))`
-/

namespace A083848.P15085119189928666364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A083856 n + A083849 (n + 1) : ℝ))

end

end A083848.P15085119189928666364

/-! ## A083848.P16932521518226638344

`round(sqrt(A083857(n)+A083849(n+1)))`
-/

namespace A083848.P16932521518226638344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A083857 n + A083849 (n + 1) : ℝ))

end

end A083848.P16932521518226638344

/-! ## A083848.P4274349223246685763

`round(sqrt(A083849(n+1)-A000001(n)))`
-/

namespace A083848.P4274349223246685763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A083849 (n + 1) - A000001 n : ℝ))

end

end A083848.P4274349223246685763

/-!
# A083849: a(n) is the largest prime of the form x^2 + 1 <= 2^n.

The programs for A083849, there is no canonical definition to state claims against.
-/

/-! ## A083849.P1356984380378746212

`1+A083848(n+1)²`
-/

namespace A083849.P1356984380378746212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A083848 (n + 1) ^ 2

end

end A083849.P1356984380378746212

/-! ## A083849.P11881817495032109176

`A007318(C(2, n))+A083848(n+1)^2`
-/

namespace A083849.P11881817495032109176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) + A083848 (n + 1) ^ 2

end

end A083849.P11881817495032109176

/-! ## A083849.P880438928424789624

`A083848(n+1)^A020649(3*(n+1))+1`
-/

namespace A083849.P880438928424789624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083848 (n + 1) : ℚ) ^ (A020649 (3 * (n + 1)) : ℤ) + 1

end

end A083849.P880438928424789624

/-! ## A083849.P16819417830957733120

`A000041(C(2, 2*n))+A083848(n+1)^2`
-/

namespace A083849.P16819417830957733120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) + A083848 (n + 1) ^ 2

end

end A083849.P16819417830957733120

/-! ## A083849.P9566896666179890506

`A014963(52*(n+1))+A083848(n+1)^2`
-/

namespace A083849.P9566896666179890506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (52 * (n + 1)) + A083848 (n + 1) ^ 2

end

end A083849.P9566896666179890506

/-!
# A083851: Decimal palindromes that are not multiples of 11.

The programs for A083851, there is no canonical definition to state claims against.
-/

/-! ## A083851.P5386947071540563373

`∩[A002113(n+1), A160542(n+1)]`
-/

namespace A083851.P5386947071540563373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083851.P5386947071540563373

/-! ## A083851.P1986492969533120324

`∩[A056525(n+1), A160542(n+1)]`
-/

namespace A083851.P1986492969533120324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083851.P1986492969533120324

/-! ## A083851.P2859850141155581028

`filter[A056142(n), A145568(#)]`
-/

namespace A083851.P2859850141155581028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A083851.P2859850141155581028

/-! ## A083851.P5902532806210063623

`eq[n, A072139(A106612(n))]`
-/

namespace A083851.P5902532806210063623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072139 (A106612 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083851.P5902532806210063623

/-! ## A083851.P7495637993997022975

`eq[A072137(n), A109014(n)]`
-/

namespace A083851.P7495637993997022975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083851.P7495637993997022975

/-! ## A083851.P11841926598303304191

`record[A106612(A047813(n+1))]`
-/

namespace A083851.P11841926598303304191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A047813 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083851.P11841926598303304191

/-! ## A083851.P5358507362049716148

`record[A106612(A056142(n+1))]`
-/

namespace A083851.P5358507362049716148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A056142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083851.P5358507362049716148

/-!
# A083852: Decimal palindromes that are multiples of 11.

The programs for A083852, there is no canonical definition to state claims against.
-/

/-! ## A083852.P7112728634532114013

`∩[A002113(n+1), 11*n]`
-/

namespace A083852.P7112728634532114013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A083852.P7112728634532114013

/-! ## A083852.P16286158303425033985

`11*eq[11*n, A004086(11*n)]`
-/

namespace A083852.P16286158303425033985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (11 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083852.P16286158303425033985

/-! ## A083852.P4901488428367788948

`record[A047813(11*n)]`
-/

namespace A083852.P4901488428367788948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (11 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083852.P4901488428367788948

/-! ## A083852.P7588430442156567204

`record[A331472(11*n)]`
-/

namespace A083852.P7588430442156567204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (11 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083852.P7588430442156567204

/-! ## A083852.P15601146739643061269

`filter[11*n, A136522(#)]`
-/

namespace A083852.P15601146739643061269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j) = 1) n)

end

end A083852.P15601146739643061269

/-! ## A083852.P2294300242724273557

`record[gcd(11*n, A064834(11*n))]`
-/

namespace A083852.P2294300242724273557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (11 * n : ℤ) (A064834 (11 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083852.P2294300242724273557

/-! ## A083852.P9391767542138122192

`eq[A010880(n), A056965(n)]`
-/

namespace A083852.P9391767542138122192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083852.P9391767542138122192

/-! ## A083852.P6810287109351454920

`eq[A011582(n), A056965(n)]`
-/

namespace A083852.P6810287109351454920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083852.P6810287109351454920

/-! ## A083852.P16565501769206614346

`eq[n, A109052(A004086(n))]`
-/

namespace A083852.P16565501769206614346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109052 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083852.P16565501769206614346

/-! ## A083852.P11474809492305228340

`eq[A056965(n), A070434(n)]`
-/

namespace A083852.P11474809492305228340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070434 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083852.P11474809492305228340

/-! ## A083852.P4880931317584823348

`eq[A056965(n), A070473(n)]`
-/

namespace A083852.P4880931317584823348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070473 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083852.P4880931317584823348

/-! ## A083852.P2440341316068916709

`eq[A056965(n), A070515(n)]`
-/

namespace A083852.P2440341316068916709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070515 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083852.P2440341316068916709

/-! ## A083852.P8394757705738629947

`eq[A056965(n), A070596(n)]`
-/

namespace A083852.P8394757705738629947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083852.P8394757705738629947

/-! ## A083852.P12246252373550601456

`eq[A056965(n), A070634(n)]`
-/

namespace A083852.P12246252373550601456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083852.P12246252373550601456

/-! ## A083852.P13849839044611171961

`eq[A056965(n), A070693(n)]`
-/

namespace A083852.P13849839044611171961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083852.P13849839044611171961

/-! ## A083852.P12986309307809740518

`eq[n, A109052(A047813(n))]`
-/

namespace A083852.P12986309307809740518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109052 (A047813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083852.P12986309307809740518

/-! ## A083852.P16500792043606102561

`eq[A082216(n), A109052(n)]`
-/

namespace A083852.P16500792043606102561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083852.P16500792043606102561

/-! ## A083852.P72256313802096224

`eq[A056965(n), A145568(n)]`
-/

namespace A083852.P72256313802096224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083852.P72256313802096224

/-!
# A083853: Smallest nonnegative integer that can be written as a sum of Fibonacci numbers in n ways, counting 1 twice as Fibonacci number.

The programs for A083853, there is no canonical definition to state claims against.
-/

/-! ## A083853.P8722393548507016815

`floor(A013583(n+1)/ϕ²)`
-/

namespace A083853.P8722393548507016815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A013583 (n + 1) : ℝ) / Real.goldenRatio ^ 2⌋

end

end A083853.P8722393548507016815

/-! ## A083853.P151714939137488373

`round(A013583(C(n+1, n))/ϕ²)`
-/

namespace A083853.P151714939137488373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A013583 (Nat.choose (n + 1) n) : ℝ) / Real.goldenRatio ^ 2)

end

end A083853.P151714939137488373

/-! ## A083853.P8516278987251725276

`round(A013583(Δ[n²]-n)/ϕ²)`
-/

namespace A083853.P8516278987251725276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A013583 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) / Real.goldenRatio ^ 2)

end

end A083853.P8516278987251725276

/-! ## A083853.P5200857629071783981

`lcm((-1)^n, floor(A013583(n-log2(1/2))/ϕ²))`
-/

namespace A083853.P5200857629071783981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) ⌊(A013583 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ) / Real.goldenRatio ^ 2⌋

end

end A083853.P5200857629071783981

/-! ## A083853.P7604846190383078440

`A055635(n+1)-A013583(n+1)`
-/

namespace A083853.P7604846190383078440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055635 (n + 1) - A013583 (n + 1)

end

end A083853.P7604846190383078440

/-! ## A083853.P17246101626534921119

`abs(A001489(round(A013583(n+1)/ϕ²)))`
-/

namespace A083853.P17246101626534921119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 (SequenceMachineLib.roundAway ((A013583 (n + 1) : ℝ) / Real.goldenRatio ^ 2)).toNat|

end

end A083853.P17246101626534921119

/-! ## A083853.P9378564489283169446

`A005843(round(A013583(n+1)/ϕ²))/2`
-/

namespace A083853.P9378564489283169446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (SequenceMachineLib.roundAway ((A013583 (n + 1) : ℝ) / Real.goldenRatio ^ 2)).toNat : ℚ) / 2

end

end A083853.P9378564489283169446

/-! ## A083853.P13689374270407321925

`round(A013583(n+1)/ϕ²)%A001844(n)`
-/

namespace A083853.P13689374270407321925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A013583 (n + 1) : ℝ) / Real.goldenRatio ^ 2)) (A001844 n)

end

end A083853.P13689374270407321925

/-! ## A083853.P8307967774529302121

`round(A000007(n+1)+A013583(n+1)/ϕ²)`
-/

namespace A083853.P8307967774529302121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℝ) + (A013583 (n + 1) : ℝ) / Real.goldenRatio ^ 2)

end

end A083853.P8307967774529302121

/-! ## A083853.P1730209442099335202

`round(A013583(n+1)/ϕ²)*A000045(and(2, -n)!)`
-/

namespace A083853.P1730209442099335202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A013583 (n + 1) : ℝ) / Real.goldenRatio ^ 2) * A000045 (Nat.factorial (Int.land 2 (-(n : ℤ))).toNat)

end

end A083853.P1730209442099335202

/-!
# A083854: Numbers that are squares, twice squares, three times squares, or six times squares, i.e., numbers whose squarefree part divides 6.

The programs for A083854, the canonical program `A083854.P7100940027082630718` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083854 has offset 0).

The definition of A083854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 267 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083854.P8221826824317623355

`eq[1, gcd(2, A006353(n))]`
-/

namespace A083854.P8221826824317623355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A006353 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083854.P8221826824317623355

namespace A083854

/-- `eq[1, gcd(2, A006353(n))]` -/
def P8221826824317623355.Spec : Prop :=
  ∀ n, (P8221826824317623355.a n : ℤ) = A083854 n

end A083854

/-! ## A083854.P12330580923338260322

`eq[1, and(1, A132000(n))]`
-/

namespace A083854.P12330580923338260322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A132000 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083854.P12330580923338260322

namespace A083854

/-- `eq[1, and(1, A132000(n))]` -/
def P12330580923338260322.Spec : Prop :=
  ∀ n, (P12330580923338260322.a n : ℤ) = A083854 n

end A083854

/-! ## A083854.P16634825895278403131

`record[n*and(1, A000377(n))]`
-/

namespace A083854.P16634825895278403131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A000377 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083854.P16634825895278403131

namespace A083854

/-- `record[n*and(1, A000377(n))]` -/
def P16634825895278403131.Spec : Prop :=
  ∀ n, P16634825895278403131.a n = A083854 n

end A083854

/-! ## A083854.P13564086571581694190

`eq[1, A019428(A000377(n)+1)]`
-/

namespace A083854.P13564086571581694190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A000377 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083854.P13564086571581694190

namespace A083854

/-- `eq[1, A019428(A000377(n)+1)]` -/
def P13564086571581694190.Spec : Prop :=
  ∀ n, (P13564086571581694190.a n : ℤ) = A083854 n

end A083854

/-! ## A083854.P9135707764182868852

`eq[1, and(1, A124452(n))]`
-/

namespace A083854.P9135707764182868852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A124452 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083854.P9135707764182868852

namespace A083854

/-- `eq[1, and(1, A124452(n))]` -/
def P9135707764182868852.Spec : Prop :=
  ∀ n, (P9135707764182868852.a n : ℤ) = A083854 n

end A083854

/-! ## A083854.P18355432152197376562

`record[n*and(1, A190611(n))]`
-/

namespace A083854.P18355432152197376562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A190611 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083854.P18355432152197376562

namespace A083854

/-- `record[n*and(1, A190611(n))]` -/
def P18355432152197376562.Spec : Prop :=
  ∀ n, P18355432152197376562.a n = A083854 n

end A083854

/-! ## A083854.P7100940027082630718

`lt[1, A000034(A125061(n))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A083854

/-- `lt[1, A000034(A125061(n))]` -/
def P7100940027082630718.Spec : Prop :=
  ∀ n, (P7100940027082630718.a n : ℤ) = A083854 n

theorem P7100940027082630718.correct : P7100940027082630718.Spec := by
  intro n
  simp only [A083854]

end A083854

/-! ## A083854.P8716463587302094668

`lt[A132973(abs(A132973(n))), 1]`
-/

namespace A083854.P8716463587302094668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132973 |A132973 n|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A083854.P8716463587302094668

namespace A083854

/-- `lt[A132973(abs(A132973(n))), 1]` -/
def P8716463587302094668.Spec : Prop :=
  ∀ n, (P8716463587302094668.a n : ℤ) = A083854 n

end A083854

/-! ## A083854.P10644049217480934188

`lt[A132973(A132973(n)²), 0]`
-/

namespace A083854.P10644049217480934188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132973 (A132973 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A083854.P10644049217480934188

namespace A083854

/-- `lt[A132973(A132973(n)²), 0]` -/
def P10644049217480934188.Spec : Prop :=
  ∀ n, (P10644049217480934188.a n : ℤ) = A083854 n

end A083854

/-! ## A083854.P14503266816548028012

`lt[A190611(A190611(n)²), 0]`
-/

namespace A083854.P14503266816548028012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190611 (A190611 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A083854.P14503266816548028012

namespace A083854

/-- `lt[A190611(A190611(n)²), 0]` -/
def P14503266816548028012.Spec : Prop :=
  ∀ n, (P14503266816548028012.a n : ℤ) = A083854 n

end A083854

/-! ## A083854.P4736050616682445552

`eq[2, A040781(A125061(n)²)]`
-/

namespace A083854.P4736050616682445552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040781 (A125061 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083854.P4736050616682445552

namespace A083854

/-- `eq[2, A040781(A125061(n)²)]` -/
def P4736050616682445552.Spec : Prop :=
  ∀ n, (P4736050616682445552.a n : ℤ) = A083854 n

end A083854

/-! ## A083854.P8784368578289169545

`lt[A253625(A253625(n)²), 1]`
-/

namespace A083854.P8784368578289169545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253625 (A253625 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A083854.P8784368578289169545

namespace A083854

/-- `lt[A253625(A253625(n)²), 1]` -/
def P8784368578289169545.Spec : Prop :=
  ∀ n, (P8784368578289169545.a n : ℤ) = A083854 n

end A083854

/-! ## A083854.P324706283919457243

`eq[1, A135561(A125061(n)+2)]`
-/

namespace A083854.P324706283919457243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135561 (A125061 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083854.P324706283919457243

namespace A083854

/-- `eq[1, A135561(A125061(n)+2)]` -/
def P324706283919457243.Spec : Prop :=
  ∀ n, (P324706283919457243.a n : ℤ) = A083854 n

end A083854

/-! ## A083854.P14730824355055410324

`lt[A132973(A132973(2*n)), 1]`
-/

namespace A083854.P14730824355055410324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132973 (A132973 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A083854.P14730824355055410324

namespace A083854

/-- `lt[A132973(A132973(2*n)), 1]` -/
def P14730824355055410324.Spec : Prop :=
  ∀ n, (P14730824355055410324.a n : ℤ) = A083854 n

end A083854

/-! ## A083854.P1931515293886003698

`lt[A190611(A190611(2*n)), 1]`
-/

namespace A083854.P1931515293886003698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190611 (A190611 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A083854.P1931515293886003698

namespace A083854

/-- `lt[A190611(A190611(2*n)), 1]` -/
def P1931515293886003698.Spec : Prop :=
  ∀ n, (P1931515293886003698.a n : ℤ) = A083854 n

end A083854

/-! ## A083854.P568183344588915913

`lt[A253625(A253625(2*n)), 1]`
-/

namespace A083854.P568183344588915913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253625 (A253625 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A083854.P568183344588915913

namespace A083854

/-- `lt[A253625(A253625(2*n)), 1]` -/
def P568183344588915913.Spec : Prop :=
  ∀ n, (P568183344588915913.a n : ℤ) = A083854 n

end A083854

/-! ## A083854.P12385473316347521564

`lt[A116604(A125061(3*n)), 1]`
-/

namespace A083854.P12385473316347521564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 (A125061 (3 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A083854.P12385473316347521564

namespace A083854

/-- `lt[A116604(A125061(3*n)), 1]` -/
def P12385473316347521564.Spec : Prop :=
  ∀ n, (P12385473316347521564.a n : ℤ) = A083854 n

end A083854

/-! ## A083854.P2381994653627056722

`eq[A165471(n)+A093709(3*n), A093709(n)]`
-/

namespace A083854.P2381994653627056722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n + A093709 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083854.P2381994653627056722

namespace A083854

/-- `eq[A165471(n)+A093709(3*n), A093709(n)]` -/
def P2381994653627056722.Spec : Prop :=
  ∀ n, (P2381994653627056722.a n : ℤ) = A083854 n

end A083854

/-! ## A083854.P15181460832670906321

`eq[A165476(n)+A093709(3*n), A093709(n)]`
-/

namespace A083854.P15181460832670906321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 n + A093709 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083854.P15181460832670906321

namespace A083854

/-- `eq[A165476(n)+A093709(3*n), A093709(n)]` -/
def P15181460832670906321.Spec : Prop :=
  ∀ n, (P15181460832670906321.a n : ℤ) = A083854 n

end A083854

/-!
# A083855: Multiplicands in the list of numbers which are squares, twice squares, three times squares, or six times squares (A083854).

The programs for A083855, the canonical program `A083855.P6196543086430157343` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083855 has offset 1).

The definition of A083855 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A083854, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083855.P6196543086430157343

`A007913(A083854(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A083855

/-- `A007913(A083854(n+1))` -/
def P6196543086430157343.Spec : Prop :=
  ∀ n, P6196543086430157343.a n = A083855 (n + 1)

theorem P6196543086430157343.correct : P6196543086430157343.Spec := by
  intro n
  simp only [A083855, Nat.add_sub_cancel]

end A083855

/-! ## A083855.P3928005394368935851

`filter[A007913(n+1), A065333(#)]`
-/

namespace A083855.P3928005394368935851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065333 (f1 j).toNat = 1) n)

end

end A083855.P3928005394368935851

namespace A083855

/-- `filter[A007913(n+1), A065333(#)]` -/
def P3928005394368935851.Spec : Prop :=
  ∀ n, P3928005394368935851.a n = A083855 (n + 1)

end A083855

/-! ## A083855.P4288297370616341879

`(p?[A265045(sqrt(A055491(n+1)))]+1)/4`
-/

namespace A083855.P4288297370616341879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265045 (SequenceMachineLib.roundAway (Real.sqrt (A055491 (n + 1) : ℝ))).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 4

end

end A083855.P4288297370616341879

namespace A083855

/-- `(p?[A265045(sqrt(A055491(n+1)))]+1)/4` -/
def P4288297370616341879.Spec : Prop :=
  ∀ n, P4288297370616341879.a n = (A083855 (n + 1) : ℚ)

end A083855

/-! ## A083855.P15538126820583909179

`A008621(p?[A265045(A007913(n+1))])`
-/

namespace A083855.P15538126820583909179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265045 (A007913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A083855.P15538126820583909179

namespace A083855

/-- `A008621(p?[A265045(A007913(n+1))])` -/
def P15538126820583909179.Spec : Prop :=
  ∀ n, P15538126820583909179.a n = A083855 (n + 1)

end A083855

/-! ## A083855.P8552092855869284673

`filter[A117811(2*n+1), A065333(#)]`
-/

namespace A083855.P8552092855869284673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117811 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065333 (f1 j).toNat = 1) n)

end

end A083855.P8552092855869284673

namespace A083855

/-- `filter[A117811(2*n+1), A065333(#)]` -/
def P8552092855869284673.Spec : Prop :=
  ∀ n, P8552092855869284673.a n = A083855 (n + 1)

end A083855

/-! ## A083855.P8302413881968151973

`filter[A364900(2*n+1), A065333(#)]`
-/

namespace A083855.P8302413881968151973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364900 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065333 (f1 j).toNat = 1) n)

end

end A083855.P8302413881968151973

namespace A083855

/-- `filter[A364900(2*n+1), A065333(#)]` -/
def P8302413881968151973.Spec : Prop :=
  ∀ n, P8302413881968151973.a n = A083855 (n + 1)

end A083855

/-!
# A083856: Square array T(n,k) of generalized Fibonacci numbers, read by antidiagonals upwards (n, k >= 0).

The programs for A083856, there is no canonical definition to state claims against.
-/

/-! ## A083856.P18349217560538938734

`A060959(∑[2*n]%comp[∑[n]])`
-/

namespace A083856.P18349217560538938734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A083856.P18349217560538938734

/-! ## A083856.P10416892855886531433

`A060959(∑[char[∑[n]]]²-(n+1))`
-/

namespace A083856.P10416892855886531433
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A083856.P10416892855886531433

/-! ## A083856.P12622842696323244264

`or(char[2], A060959(A061579(n)))`
-/

namespace A083856.P12622842696323244264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A060959 (A061579 n).toNat)

end

end A083856.P12622842696323244264

/-! ## A083856.P632941748287881333

`and(1, A000040(n+1))*A060959(A061579(n))`
-/

namespace A083856.P632941748287881333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A060959 (A061579 n).toNat

end

end A083856.P632941748287881333

/-! ## A083856.P9762683583499242231

`A060959(A038722(n+2))-C(2, n+2)`
-/

namespace A083856.P9762683583499242231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (A038722 (n + 2)).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A083856.P9762683583499242231

/-! ## A083856.P7070700027558325548

`A060959(A061579(n))%A000041(n)`
-/

namespace A083856.P7070700027558325548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060959 (A061579 n).toNat) (A000041 n)

end

end A083856.P7070700027558325548

/-! ## A083856.P18175907171521876343

`∑{d}[A060959(A061579(n)), A000010(#)]`
-/

namespace A083856.P18175907171521876343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A083856.P18175907171521876343

/-!
# A083857: Square array T(n,k) of binomial transforms of generalized Fibonacci numbers, read by ascending antidiagonals, with n, k >= 0.

The programs for A083857, there is no canonical definition to state claims against.
-/

/-! ## A083857.P1127548968718223597

`A059268(n)+A082859(A102480(n))-1`
-/

namespace A083857.P1127548968718223597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + (A082859 (A102480 n).toNat - 1)

end

end A083857.P1127548968718223597

/-! ## A083857.P5173687126767429778

`A128829(A059268(n))+A082859(A102480(n))`
-/

namespace A083857.P5173687126767429778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128829 (A059268 n).toNat + A082859 (A102480 n).toNat

end

end A083857.P5173687126767429778

/-! ## A083857.P12878418252864754589

`A059268(n)-A022932(A000031(n))`
-/

namespace A083857.P12878418252864754589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A022932 (A000031 n).toNat

end

end A083857.P12878418252864754589

/-! ## A083857.P4780966252357043601

`A059268(n)-A168509(A180485(3*n+1))`
-/

namespace A083857.P4780966252357043601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A168509 (A180485 (3 * n + 1)).toNat

end

end A083857.P4780966252357043601

/-! ## A083857.P6813194192941139192

`A059268(n)-A288864(A192118(2*(n+2)))`
-/

namespace A083857.P6813194192941139192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A288864 (A192118 (2 * (n + 2))).toNat

end

end A083857.P6813194192941139192

/-!
# A083858: Expansion of x/(1 - 3*x - 6*x^2).

The programs for A083858, the canonical program `A083858.P6002363387453127087` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083858 has offset 0).

The definition of A083858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083858.P6002363387453127087

`3*a(n-1)+6*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A083858

/-- `3*a(n-1)+6*a(n-2)` -/
def P6002363387453127087.Spec : Prop :=
  ∀ n, (P6002363387453127087.a n : ℤ) = A083858 n

theorem P6002363387453127087.correct : P6002363387453127087.Spec := by
  intro n
  simp only [A083858]

end A083858

/-! ## A083858.P7770652683996104713

`3*(2*a(n-2)-xor(-2, a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A083858.P7770652683996104713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * (2 * a (n - 2) - Int.xor (-2) (a (n - 1)))

end

end A083858.P7770652683996104713

namespace A083858

/-- `3*(2*a(n-2)-xor(-2, a(n-1)))` -/
def P7770652683996104713.Spec : Prop :=
  ∀ n, P7770652683996104713.a n = A083858 n

end A083858

/-! ## A083858.P17335226491336638263

`3*(2-(2*(1-a(n-2))-a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A083858.P17335226491336638263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * (2 - (2 * (1 - a (n - 2)) - a (n - 1)))

end

end A083858.P17335226491336638263

namespace A083858

/-- `3*(2-(2*(1-a(n-2))-a(n-1)))` -/
def P17335226491336638263.Spec : Prop :=
  ∀ n, P17335226491336638263.a n = A083858 n

end A083858

/-! ## A083858.P4654616496161231517

`A154964(n)-2*a(n-1)` with `a(0)=0`
-/

namespace A083858.P4654616496161231517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A154964 n - 2 * a (n - 1)

end

end A083858.P4654616496161231517

namespace A083858

/-- `A154964(n)-2*a(n-1)` -/
def P4654616496161231517.Spec : Prop :=
  ∀ n, P4654616496161231517.a n = A083858 n

end A083858

/-! ## A083858.P5445986839129502479

`∑[A354131(n)]-A354131(n)`
-/

namespace A083858.P5445986839129502479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A354131 n

end

end A083858.P5445986839129502479

namespace A083858

/-- `∑[A354131(n)]-A354131(n)` -/
def P5445986839129502479.Spec : Prop :=
  ∀ n, P5445986839129502479.a n = A083858 n

end A083858

/-!
# A083859: Main diagonal of generalized Fibonacci array A083856.

The programs for A083859, the canonical program `A083859.P16634609110363804721` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083859 has offset 0).

The definition of A083859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083859.P16634609110363804721

`(((1+sqrt(4*n+1))/2)^n-((1-sqrt(4*n+1))/2)^n)/sqrt(4*n+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A083859

/-- `(((1+sqrt(4*n+1))/2)^n-((1-sqrt(4*n+1))/2)^n)/sqrt(4*n+1)` -/
def P16634609110363804721.Spec : Prop :=
  ∀ n, P16634609110363804721.a n = (A083859 n : ℝ)

end A083859

/-! ## A083859.P3940978339831065522

`A083856(∑[4*n])`
-/

namespace A083859.P3940978339831065522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083856 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083859.P3940978339831065522

namespace A083859

/-- `A083856(∑[4*n])` -/
def P3940978339831065522.Spec : Prop :=
  ∀ n, P3940978339831065522.a n = A083859 n

end A083859

/-! ## A083859.P3476410242525946765

`A060959(∑[4*n])`
-/

namespace A083859.P3476410242525946765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083859.P3476410242525946765

namespace A083859

/-- `A060959(∑[4*n])` -/
def P3476410242525946765.Spec : Prop :=
  ∀ n, P3476410242525946765.a n = A083859 n

end A083859

/-! ## A083859.P18194423925838495862

`floor((2*A060959(A046092(n))+1)/2)`
-/

namespace A083859.P18194423925838495862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A060959 (A046092 n).toNat + 1 : ℚ) / 2⌋

end

end A083859.P18194423925838495862

namespace A083859

/-- `floor((2*A060959(A046092(n))+1)/2)` -/
def P18194423925838495862.Spec : Prop :=
  ∀ n, P18194423925838495862.a n = A083859 n

end A083859

/-! ## A083859.P11284474049270696600

`A060959(A046092(n))%A060941(n)`
-/

namespace A083859.P11284474049270696600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060959 (A046092 n).toNat) (A060941 n)

end

end A083859.P11284474049270696600

namespace A083859

/-- `A060959(A046092(n))%A060941(n)` -/
def P11284474049270696600.Spec : Prop :=
  ∀ n, P11284474049270696600.a n = A083859 n

end A083859

/-! ## A083859.P2775582450916316654

`char[A003188(n)]*A060959(A046092(n))`
-/

namespace A083859.P2775582450916316654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A060959 (A046092 n).toNat

end

end A083859.P2775582450916316654

namespace A083859

/-- `char[A003188(n)]*A060959(A046092(n))` -/
def P2775582450916316654.Spec : Prop :=
  ∀ n, P2775582450916316654.a n = A083859 n

end A083859

/-! ## A083859.P11020977788818216893

`A000034(A005843(n))*A060959(A046092(n))`
-/

namespace A083859.P11020977788818216893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A005843 n).toNat * A060959 (A046092 n).toNat

end

end A083859.P11020977788818216893

namespace A083859

/-- `A000034(A005843(n))*A060959(A046092(n))` -/
def P11020977788818216893.Spec : Prop :=
  ∀ n, P11020977788818216893.a n = A083859 n

end A083859

/-! ## A083859.P17491994151739024000

`A057427(A093848(n+1))*A060959(A046092(n))`
-/

namespace A083859.P17491994151739024000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A093848 (n + 1)).toNat * A060959 (A046092 n).toNat

end

end A083859.P17491994151739024000

namespace A083859

/-- `A057427(A093848(n+1))*A060959(A046092(n))` -/
def P17491994151739024000.Spec : Prop :=
  ∀ n, P17491994151739024000.a n = A083859 n

end A083859

/-!
# A083860: First subdiagonal of generalized Fibonacci array A083856.

The programs for A083860, the canonical program `A083860.P6551293677295443081` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083860 has offset 0).

The definition of A083860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083860.P6551293677295443081

`(((1+sqrt(4*n+5))/2)^n-((1-sqrt(4*n+5))/2)^n)/sqrt(4*n+5)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A083860

/-- `(((1+sqrt(4*n+5))/2)^n-((1-sqrt(4*n+5))/2)^n)/sqrt(4*n+5)` -/
def P6551293677295443081.Spec : Prop :=
  ∀ n, P6551293677295443081.a n = (A083860 n : ℝ)

end A083860

/-! ## A083860.P9072561878346275828

`A083856(A056220(n+1))`
-/

namespace A083860.P9072561878346275828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083856 (A056220 (n + 1)).toNat

end

end A083860.P9072561878346275828

namespace A083860

/-- `A083856(A056220(n+1))` -/
def P9072561878346275828.Spec : Prop :=
  ∀ n, P9072561878346275828.a n = A083860 n

end A083860

/-! ## A083860.P16896656174327602045

`A083856(A004273((n+1)²))`
-/

namespace A083860.P16896656174327602045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083856 (A004273 ((n + 1) ^ 2)).toNat

end

end A083860.P16896656174327602045

namespace A083860

/-- `A083856(A004273((n+1)²))` -/
def P16896656174327602045.Spec : Prop :=
  ∀ n, P16896656174327602045.a n = A083860 n

end A083860

/-! ## A083860.P6011773812649840568

`A083856(A000217(2*n+1)+n)`
-/

namespace A083860.P6011773812649840568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083856 (A000217 (2 * n + 1) + (n : ℤ)).toNat

end

end A083860.P6011773812649840568

namespace A083860

/-- `A083856(A000217(2*n+1)+n)` -/
def P6011773812649840568.Spec : Prop :=
  ∀ n, P6011773812649840568.a n = A083860 n

end A083860

/-! ## A083860.P11339403186151712730

`A060959(2*(n+1)²)`
-/

namespace A083860.P11339403186151712730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (2 * (n + 1) ^ 2)

end

end A083860.P11339403186151712730

namespace A083860

/-- `A060959(2*(n+1)²)` -/
def P11339403186151712730.Spec : Prop :=
  ∀ n, P11339403186151712730.a n = A083860 n

end A083860

/-! ## A083860.P125774621715041104

`or(char[1], A060959(∑[4*n+2]))`
-/

namespace A083860.P125774621715041104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A060959 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A083860.P125774621715041104

namespace A083860

/-- `or(char[1], A060959(∑[4*n+2]))` -/
def P125774621715041104.Spec : Prop :=
  ∀ n, P125774621715041104.a n = A083860 n

end A083860

/-!
# A083861: Square array T(n,k) of second binomial transforms of generalized Fibonacci numbers, read by ascending antidiagonals, with n, k >= 0.

The programs for A083861, there is no canonical definition to state claims against.
-/

/-! ## A083861.P6146312737507074042

`A025438(A156953(n))+A001047(A002262(n))`
-/

namespace A083861.P6146312737507074042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 (A156953 n).toNat + A001047 (A002262 n).toNat

end

end A083861.P6146312737507074042

/-! ## A083861.P3886563845873431583

`A010423(A122881(n+1))`
-/

namespace A083861.P3886563845873431583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010423 (A122881 (n + 1)).toNat

end

end A083861.P3886563845873431583

/-! ## A083861.P9045060036498614307

`A265541(A166350(n+1))-A014230(n)`
-/

namespace A083861.P9045060036498614307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 (A166350 (n + 1)).toNat - A014230 n

end

end A083861.P9045060036498614307

/-! ## A083861.P14029981016223154984

`A128114(4^A336820(n+1))`
-/

namespace A083861.P14029981016223154984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128114 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A336820 (n + 1) : ℤ))).toNat

end

end A083861.P14029981016223154984

/-! ## A083861.P7199883281377836852

`A004062(n+5)%A166350(n+1)`
-/

namespace A083861.P7199883281377836852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004062 (n + 5)) (A166350 (n + 1))

end

end A083861.P7199883281377836852

/-!
# A083862: Main diagonal of array A083857.

The programs for A083862, the canonical program `A083862.P8199816078511564451` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083862 has offset 0).

The definition of A083862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083862.P8199816078511564451

`(((3+sqrt(4*n+1))/2)^n-((3-sqrt(4*n+1))/2)^n)/sqrt(4*n+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A083862

/-- `(((3+sqrt(4*n+1))/2)^n-((3-sqrt(4*n+1))/2)^n)/sqrt(4*n+1)` -/
def P8199816078511564451.Spec : Prop :=
  ∀ n, P8199816078511564451.a n = (A083862 n : ℝ)

end A083862

/-! ## A083862.P8419417921842556626

`A083857(∑[4*n])`
-/

namespace A083862.P8419417921842556626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083857 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083862.P8419417921842556626

namespace A083862

/-- `A083857(∑[4*n])` -/
def P8419417921842556626.Spec : Prop :=
  ∀ n, P8419417921842556626.a n = A083862 n

end A083862

/-! ## A083862.P5402366998278660765

`A004483(A110577(n))`
-/

namespace A083862.P5402366998278660765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A110577 n).toNat

end

end A083862.P5402366998278660765

namespace A083862

/-- `A004483(A110577(n))` -/
def P5402366998278660765.Spec : Prop :=
  ∀ n, P5402366998278660765.a n = A083862 n

end A083862

/-!
# A083865: Sums of (one or more distinct) k-perfect numbers.

The programs for A083865, there is no canonical definition to state claims against.
-/

/-! ## A083865.P9300306504760199284

`∑[A008647(A037239(n+1)²)]`
-/

namespace A083865.P9300306504760199284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A037239 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083865.P9300306504760199284

/-! ## A083865.P15001469831333862611

`∑[A129594(A129602(xor(n, n+1)+1))]`
-/

namespace A083865.P15001469831333862611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (A129602 (Nat.xor n (n + 1) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083865.P15001469831333862611

/-! ## A083865.P2624223059284498575

`∑[A303233(A057091(2^val(n+1, 2)))]`
-/

namespace A083865.P2624223059284498575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303233 (A057091 (2 ^ SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083865.P2624223059284498575

/-!
# A083866: Positions of zeros in Per Nørgård's infinity sequence (A004718).

The programs for A083866, the canonical program `A083866.P1354389941836142156` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083866 has offset 0).

The definition of A083866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083866.P10509641406809167721

`record[n*(2-A323907(n))]`
-/

namespace A083866.P10509641406809167721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A323907 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083866.P10509641406809167721

namespace A083866

/-- `record[n*(2-A323907(n))]` -/
def P10509641406809167721.Spec : Prop :=
  ∀ n, P10509641406809167721.a n = A083866 n

end A083866

/-! ## A083866.P1354389941836142156

`eq[0, A323908(n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A083866

/-- `eq[0, A323908(n)]` -/
def P1354389941836142156.Spec : Prop :=
  ∀ n, (P1354389941836142156.a n : ℤ) = A083866 n

theorem P1354389941836142156.correct : P1354389941836142156.Spec := by
  intro n
  simp only [A083866]

end A083866

/-! ## A083866.P16550138333874501628

`eq[0, A323909(n)]`
-/

namespace A083866.P16550138333874501628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083866.P16550138333874501628

namespace A083866

/-- `eq[0, A323909(n)]` -/
def P16550138333874501628.Spec : Prop :=
  ∀ n, (P16550138333874501628.a n : ℤ) = A083866 n

end A083866

/-! ## A083866.P8038535782237060870

`eq[1, A323907(n)]`
-/

namespace A083866.P8038535782237060870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323907 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083866.P8038535782237060870

namespace A083866

/-- `eq[1, A323907(n)]` -/
def P8038535782237060870.Spec : Prop :=
  ∀ n, (P8038535782237060870.a n : ℤ) = A083866 n

end A083866

/-! ## A083866.P5091662483010606485

`eq[1, A361016(n)]`
-/

namespace A083866.P5091662483010606485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083866.P5091662483010606485

namespace A083866

/-- `eq[1, A361016(n)]` -/
def P5091662483010606485.Spec : Prop :=
  ∀ n, (P5091662483010606485.a n : ℤ) = A083866 n

end A083866

/-! ## A083866.P3481751282340478555

`lt[A323908(n), A004718(A323907(n))]`
-/

namespace A083866.P3481751282340478555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323908 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A323907 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083866.P3481751282340478555

namespace A083866

/-- `lt[A323908(n), A004718(A323907(n))]` -/
def P3481751282340478555.Spec : Prop :=
  ∀ n, (P3481751282340478555.a n : ℤ) = A083866 n

end A083866

/-! ## A083866.P11190411137265068547

`lt[A323909(n), A004718(A323907(n))]`
-/

namespace A083866.P11190411137265068547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323909 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A323907 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083866.P11190411137265068547

namespace A083866

/-- `lt[A323909(n), A004718(A323907(n))]` -/
def P11190411137265068547.Spec : Prop :=
  ∀ n, (P11190411137265068547.a n : ℤ) = A083866 n

end A083866

/-! ## A083866.P14417715034222500849

`eq[A361020(2*n), A361020(n)]`
-/

namespace A083866.P14417715034222500849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361020 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361020 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083866.P14417715034222500849

namespace A083866

/-- `eq[A361020(2*n), A361020(n)]` -/
def P14417715034222500849.Spec : Prop :=
  ∀ n, (P14417715034222500849.a n : ℤ) = A083866 n

end A083866

/-! ## A083866.P8703518407413296308

`filter[A001969(n+1), A361016(#)]`
-/

namespace A083866.P8703518407413296308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361016 (f1 j).toNat = 1) n)

end

end A083866.P8703518407413296308

namespace A083866

/-- `filter[A001969(n+1), A361016(#)]` -/
def P8703518407413296308.Spec : Prop :=
  ∀ n, P8703518407413296308.a n = A083866 n

end A083866

/-! ## A083866.P14598074782511974596

`filter[A158704(n+1), A361016(#)]`
-/

namespace A083866.P14598074782511974596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361016 (f1 j).toNat = 1) n)

end

end A083866.P14598074782511974596

namespace A083866

/-- `filter[A158704(n+1), A361016(#)]` -/
def P14598074782511974596.Spec : Prop :=
  ∀ n, P14598074782511974596.a n = A083866 n

end A083866

/-! ## A083866.P11995741916783387468

`filter[A230709(n+1), A361016(#)]`
-/

namespace A083866.P11995741916783387468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361016 (f1 j).toNat = 1) n)

end

end A083866.P11995741916783387468

namespace A083866

/-- `filter[A230709(n+1), A361016(#)]` -/
def P11995741916783387468.Spec : Prop :=
  ∀ n, P11995741916783387468.a n = A083866 n

end A083866

/-! ## A083866.P12223572872047574512

`filter[A254614(n+1), A361016(#)]`
-/

namespace A083866.P12223572872047574512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361016 (f1 j).toNat = 1) n)

end

end A083866.P12223572872047574512

namespace A083866

/-- `filter[A254614(n+1), A361016(#)]` -/
def P12223572872047574512.Spec : Prop :=
  ∀ n, P12223572872047574512.a n = A083866 n

end A083866

/-! ## A083866.P2404912240490232532

`filter[A230892(n), A361016(#)]`
-/

namespace A083866.P2404912240490232532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361016 (f1 j).toNat = 1) n)

end

end A083866.P2404912240490232532

namespace A083866

/-- `filter[A230892(n), A361016(#)]` -/
def P2404912240490232532.Spec : Prop :=
  ∀ n, P2404912240490232532.a n = A083866 n

end A083866

/-! ## A083866.P2862036144957994691

`eq[0, A004718(n)]`
-/

namespace A083866.P2862036144957994691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083866.P2862036144957994691

namespace A083866

/-- `eq[0, A004718(n)]` -/
def P2862036144957994691.Spec : Prop :=
  ∀ n, (P2862036144957994691.a n : ℤ) = A083866 n

end A083866

/-! ## A083866.P8815303490520829958

`filter[A004442(n), A361016(#)]`
-/

namespace A083866.P8815303490520829958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361016 (f1 j).toNat = 1) n)

end

end A083866.P8815303490520829958

namespace A083866

/-- `filter[A004442(n), A361016(#)]` -/
def P8815303490520829958.Spec : Prop :=
  ∀ n, P8815303490520829958.a n = A083866 n

end A083866

/-! ## A083866.P1986582004733642607

`filter[A004443(n), A361016(#)]`
-/

namespace A083866.P1986582004733642607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361016 (f1 j).toNat = 1) n)

end

end A083866.P1986582004733642607

namespace A083866

/-- `filter[A004443(n), A361016(#)]` -/
def P1986582004733642607.Spec : Prop :=
  ∀ n, P1986582004733642607.a n = A083866 n

end A083866

/-! ## A083866.P3663529046624645797

`filter[A004444(n), A361016(#)]`
-/

namespace A083866.P3663529046624645797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361016 (f1 j).toNat = 1) n)

end

end A083866.P3663529046624645797

namespace A083866

/-- `filter[A004444(n), A361016(#)]` -/
def P3663529046624645797.Spec : Prop :=
  ∀ n, P3663529046624645797.a n = A083866 n

end A083866

/-! ## A083866.P6554335019677710611

`filter[A004482(n), A361016(#)]`
-/

namespace A083866.P6554335019677710611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361016 (f1 j).toNat = 1) n)

end

end A083866.P6554335019677710611

namespace A083866

/-- `filter[A004482(n), A361016(#)]` -/
def P6554335019677710611.Spec : Prop :=
  ∀ n, P6554335019677710611.a n = A083866 n

end A083866

/-! ## A083866.P13039390083498366927

`filter[A004483(n), A361016(#)]`
-/

namespace A083866.P13039390083498366927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361016 (f1 j).toNat = 1) n)

end

end A083866.P13039390083498366927

namespace A083866

/-- `filter[A004483(n), A361016(#)]` -/
def P13039390083498366927.Spec : Prop :=
  ∀ n, P13039390083498366927.a n = A083866 n

end A083866

/-! ## A083866.P10643784228241162429

`filter[A014681(n), A361016(#)]`
-/

namespace A083866.P10643784228241162429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361016 (f1 j).toNat = 1) n)

end

end A083866.P10643784228241162429

namespace A083866

/-- `filter[A014681(n), A361016(#)]` -/
def P10643784228241162429.Spec : Prop :=
  ∀ n, P10643784228241162429.a n = A083866 n

end A083866

/-!
# A083867: a(n) is the number of divisors of the n-th decimal palindrome that are palindromes.

The programs for A083867, there is no canonical definition to state claims against.
-/

/-! ## A083867.P1408327552140981618

`A087990(A002113(n+2))`
-/

namespace A083867.P1408327552140981618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (A002113 (n + 2)).toNat

end

end A083867.P1408327552140981618

/-! ## A083867.P6289190074808267850

`A087990(∑[A086862(n+1)])`
-/

namespace A083867.P6289190074808267850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A083867.P6289190074808267850

/-! ## A083867.P18062270274658278452

`A087990(record[A047813(n+1)])`
-/

namespace A083867.P18062270274658278452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A083867.P18062270274658278452

/-! ## A083867.P12278186389465032643

`A087990(record[A093030(n+1)])`
-/

namespace A083867.P12278186389465032643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A083867.P12278186389465032643

/-! ## A083867.P9177106029968363518

`A087990(eq[n, A028310(A004086(n))])`
-/

namespace A083867.P9177106029968363518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A083867.P9177106029968363518

/-!
# A083868: Number of palindromic divisors d of n-th decimal palindrome m, such that 9

The programs for A083868, there is no canonical definition to state claims against.
-/

/-! ## A083868.P15030187545825760309

`A000040(A273737(n)²)%A083870(n+1)`
-/

namespace A083868.P15030187545825760309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A273737 n ^ 2).toNat) (A083870 (n + 1))

end

end A083868.P15030187545825760309

/-! ## A083868.P3885997771184203866

`A138707(A051885(A273737(n)))-1`
-/

namespace A083868.P3885997771184203866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138707 (A051885 (A273737 n).toNat).toNat - 1

end

end A083868.P3885997771184203866

/-!
# A083869: a(1)=1 then a(n) is the least k>=1 such that the nested radical sqrt(a(1)^2+sqrt(a(2)^2+sqrt(a(3)^2+(....+sqrt(a(n)^2)))...) is an integer.

The programs for A083869, there is no canonical definition to state claims against.
-/

/-! ## A083869.P14189408561895407151

`A166994(∑[n+1])`
-/

namespace A083869.P14189408561895407151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166994 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083869.P14189408561895407151

/-!
# A083870: Number of pairs (x,y) of palindromes such that n-th decimal palindrome = x*y and 1<=x<=y.

The programs for A083870, there is no canonical definition to state claims against.
-/

/-! ## A083870.P7205127868004379058

`A038548(A296712(n+1)%A101775(2*(n+2)))`
-/

namespace A083870.P7205127868004379058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (Int.tmod (A296712 (n + 1)) (A101775 (2 * (n + 2)))).toNat

end

end A083870.P7205127868004379058

/-! ## A083870.P14745514901884554200

`A000006(A083867(n+1))%A192416(3*n+5)`
-/

namespace A083870.P14745514901884554200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000006 (A083867 (n + 1)).toNat) (A192416 (3 * n + 5))

end

end A083870.P14745514901884554200

/-! ## A083870.P17944443293754831034

`ceil(A000005(A110751(n+1)%A194380(2*(n+2)))/2)`
-/

namespace A083870.P17944443293754831034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (Int.tmod (A110751 (n + 1)) (A194380 (2 * (n + 2)))).toNat : ℚ) / 2⌉

end

end A083870.P17944443293754831034

/-! ## A083870.P11687265073557923294

`A322794(A113009(n+1))`
-/

namespace A083870.P11687265073557923294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322794 (A113009 (n + 1)).toNat

end

end A083870.P11687265073557923294

/-! ## A083870.P8072357436672299501

`A038548(A110751(n+1)%A357058(3*(n+1)))`
-/

namespace A083870.P8072357436672299501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (Int.tmod (A110751 (n + 1)) (A357058 (3 * (n + 1)))).toNat

end

end A083870.P8072357436672299501

/-!
# A083872: Triangle read by rows in which row n lists first appearance of m such that m divides n!.

The programs for A083872, there is no canonical definition to state claims against.
-/

/-! ## A083872.P317209249014793090

`A110797(n)+A074734(A220498(A046802(n)))`
-/

namespace A083872.P317209249014793090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110797 n + A074734 (A220498 (A046802 n).toNat).toNat

end

end A083872.P317209249014793090

/-! ## A083872.P8115645669769070136

`A110797(n)%A263579(n)²`
-/

namespace A083872.P8115645669769070136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110797 n) (A263579 n ^ 2)

end

end A083872.P8115645669769070136

/-! ## A083872.P11208220332003379452

`A110797(n)+A001206(A326455(n))`
-/

namespace A083872.P11208220332003379452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110797 n + A001206 (A326455 n).toNat

end

end A083872.P11208220332003379452

/-! ## A083872.P1029683061284183904

`A110797(n)^A306847(A181937(n+4))`
-/

namespace A083872.P1029683061284183904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110797 n : ℚ) ^ (A306847 (A181937 (n + 4)).toNat : ℤ)

end

end A083872.P1029683061284183904

/-! ## A083872.P1278629508437843571

`A090109(A110797(n))`
-/

namespace A083872.P1278629508437843571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090109 (A110797 n).toNat

end

end A083872.P1278629508437843571

/-!
# A083873: Primitive abundant numbers that set a new record for number of divisors.

The programs for A083873, there is no canonical definition to state claims against.
-/

/-! ## A083873.P9780473598918584139

`A071395(lt[A000931(n), A292892(n)])`
-/

namespace A083873.P9780473598918584139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A083873.P9780473598918584139

/-!
# A083874: Numbers k such that sigma(k) + tau(k) = 2k.

The programs for A083874, there is no canonical definition to state claims against.
-/

/-! ## A083874.P9126875078614579859

`eq[n, A163163(round(sqrt(n²+1)))]`
-/

namespace A083874.P9126875078614579859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163163 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083874.P9126875078614579859

/-! ## A083874.P17703917719318614205

`filter[A056076(n+1), A168185(#)]`
-/

namespace A083874.P17703917719318614205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A083874.P17703917719318614205

/-! ## A083874.P3884077574841905844

`filter[A056076(n+1), A294934(#)]`
-/

namespace A083874.P3884077574841905844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A083874.P3884077574841905844

/-! ## A083874.P17607979182626177651

`filter[A056076(n+1), A294935(#)]`
-/

namespace A083874.P17607979182626177651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A083874.P17607979182626177651

/-! ## A083874.P2781887506112199818

`filter[A056076(n+1), A354806(#)]`
-/

namespace A083874.P2781887506112199818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354806 (f1 j).toNat = 1) n)

end

end A083874.P2781887506112199818

/-!
# A083875: One-sixth the areas of primitive Heronian triangles sorted.

The programs for A083875, there is no canonical definition to state claims against.
-/

/-! ## A083875.P14550542062946434723

`record[A224301(A286378(n))/6]`
-/

namespace A083875.P14550542062946434723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224301 (A286378 n).toNat : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083875.P14550542062946434723

/-! ## A083875.P1040255288860042850

`record[A224301(A291769(n))/6]`
-/

namespace A083875.P1040255288860042850
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224301 (A291769 n).toNat : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083875.P1040255288860042850

/-! ## A083875.P2941996463747800989

`record[A224301(A328399(n))/6]`
-/

namespace A083875.P2941996463747800989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224301 (A328399 n).toNat : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083875.P2941996463747800989

/-! ## A083875.P8131001510367628404

`record[A224301(A246694(n))/6]`
-/

namespace A083875.P8131001510367628404
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224301 (A246694 n).toNat : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083875.P8131001510367628404

/-! ## A083875.P10089247667670388052

`record[A224301(A030451(n)+1)/6]`
-/

namespace A083875.P10089247667670388052
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224301 (A030451 n + 1).toNat : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083875.P10089247667670388052

/-!
# A083876: Least pseudoprime to base 2 through base prime(n).

The programs for A083876, there is no canonical definition to state claims against.
-/

/-! ## A083876.P15232148029944172459

`A271221(p?[comp[n²]])`
-/

namespace A083876.P15232148029944172459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271221 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A083876.P15232148029944172459

/-! ## A083876.P7764796163048953982

`A271221(record[∑{p}[n+2, #]])`
-/

namespace A083876.P7764796163048953982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A083876.P7764796163048953982

/-! ## A083876.P585003936020319166

`A271221(lt[(n+1)^(∑{e}[n+1, #]-1), n])`
-/

namespace A083876.P585003936020319166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) - 1 : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271221 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n)

end

end A083876.P585003936020319166

/-! ## A083876.P3557500119899553256

`A271221(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])`
-/

namespace A083876.P3557500119899553256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271221 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A083876.P3557500119899553256

/-! ## A083876.P15747151636490314628

`A271221(A181325(n))`
-/

namespace A083876.P15747151636490314628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271221 (A181325 n).toNat

end

end A083876.P15747151636490314628

/-!
# A083877: Absolute value of determinant of n X n matrix where the element a(i,j) = if i + j > n then 2*(i + j -n) - 1, else 2*(n + 1 - i - j).

The programs for A083877, the canonical program `A083877.P8718414475958767605` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083877 has offset 1).

The definition of A083877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083877.P8718414475958767605

`5*a(n-1)-3*a(n-2)-9*a(n-3)` with `a(0)=1, a(1)=5, a(2)=25`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A083877

/-- `5*a(n-1)-3*a(n-2)-9*a(n-3)` -/
def P8718414475958767605.Spec : Prop :=
  ∀ n, P8718414475958767605.a n = A083877 (n + 1)

theorem P8718414475958767605.correct : P8718414475958767605.Spec := by
  intro n
  simp only [A083877, Nat.add_sub_cancel]

end A083877

/-! ## A083877.P12149698249692378264

`round((3/4+n)*3^n)`
-/

namespace A083877.P12149698249692378264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 : ℚ) / 4 + (n : ℚ)) * (3 ^ n : ℚ))

end

end A083877.P12149698249692378264

namespace A083877

/-- `round((3/4+n)*3^n)` -/
def P12149698249692378264.Spec : Prop :=
  ∀ n, P12149698249692378264.a n = A083877 (n + 1)

end A083877

/-! ## A083877.P16708322935840935130

`or(2, 3^n-(a(n-1)-4*a(n-1)))-1` with `a(0)=1`
-/

namespace A083877.P16708322935840935130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 2 ((3 ^ n : ℤ) - (a (n - 1) - 4 * a (n - 1))) - 1

end

end A083877.P16708322935840935130

namespace A083877

/-- `or(2, 3^n-(a(n-1)-4*a(n-1)))-1` -/
def P16708322935840935130.Spec : Prop :=
  ∀ n, P16708322935840935130.a n = A083877 (n + 1)

end A083877

/-! ## A083877.P6817333946786024916

`abs(Δ[n*A014983(n)])`
-/

namespace A083877.P6817333946786024916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A083877.P6817333946786024916

namespace A083877

/-- `abs(Δ[n*A014983(n)])` -/
def P6817333946786024916.Spec : Prop :=
  ∀ n, P6817333946786024916.a n = A083877 (n + 1)

end A083877

/-! ## A083877.P17752316687236628842

`A084182(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A083877.P17752316687236628842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084182 n + 3 * a (n - 1)

end

end A083877.P17752316687236628842

namespace A083877

/-- `A084182(n)+3*a(n-1)` -/
def P17752316687236628842.Spec : Prop :=
  ∀ n, P17752316687236628842.a n = A083877 (n + 1)

end A083877

/-! ## A083877.P12478303227712475098

`A015518(n+1)+n*3^n`
-/

namespace A083877.P12478303227712475098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (n + 1) + (n * 3 ^ n : ℤ)

end

end A083877.P12478303227712475098

namespace A083877

/-- `A015518(n+1)+n*3^n` -/
def P12478303227712475098.Spec : Prop :=
  ∀ n, P12478303227712475098.a n = A083877 (n + 1)

end A083877

/-! ## A083877.P2107401934606257227

`or(2, A000244(n)+3*a(n-1))-1` with `a(0)=1`
-/

namespace A083877.P2107401934606257227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 2 (A000244 n + 3 * a (n - 1)) - 1

end

end A083877.P2107401934606257227

namespace A083877

/-- `or(2, A000244(n)+3*a(n-1))-1` -/
def P2107401934606257227.Spec : Prop :=
  ∀ n, P2107401934606257227.a n = A083877 (n + 1)

end A083877

/-! ## A083877.P4012035773492275158

`A080926(n)+A050914(n)`
-/

namespace A083877.P4012035773492275158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080926 n + A050914 n

end

end A083877.P4012035773492275158

namespace A083877

/-- `A080926(n)+A050914(n)` -/
def P4012035773492275158.Spec : Prop :=
  ∀ n, P4012035773492275158.a n = A083877 (n + 1)

end A083877

/-! ## A083877.P17678456386811649257

`A288834(n+1)-A060925(n)`
-/

namespace A083877.P17678456386811649257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288834 (n + 1) - A060925 n

end

end A083877.P17678456386811649257

namespace A083877

/-- `A288834(n+1)-A060925(n)` -/
def P17678456386811649257.Spec : Prop :=
  ∀ n, P17678456386811649257.a n = A083877 (n + 1)

end A083877

/-! ## A083877.P16557260424694350129

`(n+1)*A015518(n+1)+n*A015518(n)`
-/

namespace A083877.P16557260424694350129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A015518 (n + 1) + (n : ℤ) * A015518 n

end

end A083877.P16557260424694350129

namespace A083877

/-- `(n+1)*A015518(n+1)+n*A015518(n)` -/
def P16557260424694350129.Spec : Prop :=
  ∀ n, P16557260424694350129.a n = A083877 (n + 1)

end A083877

/-! ## A083877.P14595865530016064790

`A119916(n+1)+A119916(n+1)-A000244(n)`
-/

namespace A083877.P14595865530016064790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119916 (n + 1) + (A119916 (n + 1) - A000244 n)

end

end A083877.P14595865530016064790

namespace A083877

/-- `A119916(n+1)+A119916(n+1)-A000244(n)` -/
def P14595865530016064790.Spec : Prop :=
  ∀ n, P14595865530016064790.a n = A083877 (n + 1)

end A083877

/-! ## A083877.P17643633869481804937

`floor((3^n*A004767(n)+1)/4)`
-/

namespace A083877.P17643633869481804937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 ^ n : ℤ) * A004767 n + 1 : ℚ) / 4⌋

end

end A083877.P17643633869481804937

namespace A083877

/-- `floor((3^n*A004767(n)+1)/4)` -/
def P17643633869481804937.Spec : Prop :=
  ∀ n, P17643633869481804937.a n = A083877 (n + 1)

end A083877

/-!
# A083878: a(0)=1, a(1)=3, for n >= 2, a(n) = 6*a(n-1) - 7*a(n-2).

The programs for A083878, the canonical program `A083878.P9255728644352349424` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083878 has offset 0).

The definition of A083878 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-7*a(n-2)` (program `A083878.P9255728644352349424`, by `A083878.P9255728644352349424.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083878.P9255728644352349424

`6*a(n-1)-7*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A083878

/-- `6*a(n-1)-7*a(n-2)` -/
def P9255728644352349424.Spec : Prop :=
  ∀ n, P9255728644352349424.a n = A083878 n

theorem P9255728644352349424.correct : P9255728644352349424.Spec := by
  intro n
  simp only [A083878]

end A083878

/-! ## A083878.P1201763190245188742

`A081179(n+1)-3*A081179(n)`
-/

namespace A083878.P1201763190245188742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 (n + 1) - 3 * A081179 n

end

end A083878.P1201763190245188742

namespace A083878

/-- `A081179(n+1)-3*A081179(n)` -/
def P1201763190245188742.Spec : Prop :=
  ∀ n, P1201763190245188742.a n = A083878 n

end A083878

/-! ## A083878.P17130107326842777717

`((3-sqrt(2))^n+(sqrt(2)+3)^n)/2`
-/

namespace A083878.P17130107326842777717
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 - Real.sqrt (2 : ℝ)) ^ n + (Real.sqrt (2 : ℝ) + 3) ^ n) / 2

end

end A083878.P17130107326842777717

namespace A083878

/-- `((3-sqrt(2))^n+(sqrt(2)+3)^n)/2` -/
def P17130107326842777717.Spec : Prop :=
  ∀ n, P17130107326842777717.a n = (A083878 n : ℝ)

end A083878

/-! ## A083878.P14400491556963223372

`∑[A034999(n)]`
-/

namespace A083878.P14400491556963223372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083878.P14400491556963223372

namespace A083878

/-- `∑[A034999(n)]` -/
def P14400491556963223372.Spec : Prop :=
  ∀ n, P14400491556963223372.a n = A083878 n

end A083878

/-! ## A083878.P18197605434112853512

`A086351(n)-A081179(n)`
-/

namespace A083878.P18197605434112853512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086351 n - A081179 n

end

end A083878.P18197605434112853512

namespace A083878

/-- `A086351(n)-A081179(n)` -/
def P18197605434112853512.Spec : Prop :=
  ∀ n, P18197605434112853512.a n = A083878 n

end A083878

/-! ## A083878.P7413386058592140483

`Δ[A293070(n)]-A293070(n)`
-/

namespace A083878.P7413386058592140483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A293070 n

end

end A083878.P7413386058592140483

namespace A083878

/-- `Δ[A293070(n)]-A293070(n)` -/
def P7413386058592140483.Spec : Prop :=
  ∀ n, P7413386058592140483.a n = A083878 n

end A083878

/-! ## A083878.P12284356222936986048

`A001333(n)+2*A084155(n)`
-/

namespace A083878.P12284356222936986048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + 2 * A084155 n

end

end A083878.P12284356222936986048

namespace A083878

/-- `A001333(n)+2*A084155(n)` -/
def P12284356222936986048.Spec : Prop :=
  ∀ n, P12284356222936986048.a n = A083878 n

end A083878

/-! ## A083878.P1992080310300293935

`A293070(n+1)-2*A293070(n)`
-/

namespace A083878.P1992080310300293935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293070 (n + 1) - 2 * A293070 n

end

end A083878.P1992080310300293935

namespace A083878

/-- `A293070(n+1)-2*A293070(n)` -/
def P1992080310300293935.Spec : Prop :=
  ∀ n, P1992080310300293935.a n = A083878 n

end A083878

/-! ## A083878.P1377387731465093292

`A161944(n)-A086351(n)`
-/

namespace A083878.P1377387731465093292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161944 n - A086351 n

end

end A083878.P1377387731465093292

namespace A083878

/-- `A161944(n)-A086351(n)` -/
def P1377387731465093292.Spec : Prop :=
  ∀ n, P1377387731465093292.a n = A083878 n

end A083878

/-! ## A083878.P15630951234087110645

`A164037(n)%A164033(n)`
-/

namespace A083878.P15630951234087110645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164037 n) (A164033 n)

end

end A083878.P15630951234087110645

namespace A083878

/-- `A164037(n)%A164033(n)` -/
def P15630951234087110645.Spec : Prop :=
  ∀ n, P15630951234087110645.a n = A083878 n

end A083878

/-! ## A083878.P12621857240389390899

`A034999(n+1)-A102285(n)`
-/

namespace A083878.P12621857240389390899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034999 (n + 1) - A102285 n

end

end A083878.P12621857240389390899

namespace A083878

/-- `A034999(n+1)-A102285(n)` -/
def P12621857240389390899.Spec : Prop :=
  ∀ n, P12621857240389390899.a n = A083878 n

end A083878

/-! ## A083878.P8367347492273315998

`A164033(n)-A081179(n+1)`
-/

namespace A083878.P8367347492273315998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164033 n - A081179 (n + 1)

end

end A083878.P8367347492273315998

namespace A083878

/-- `A164033(n)-A081179(n+1)` -/
def P8367347492273315998.Spec : Prop :=
  ∀ n, P8367347492273315998.a n = A083878 n

end A083878

/-! ## A083878.P14353034393789417537

`A102285(n)-2*A081179(n)`
-/

namespace A083878.P14353034393789417537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 n - 2 * A081179 n

end

end A083878.P14353034393789417537

namespace A083878

/-- `A102285(n)-2*A081179(n)` -/
def P14353034393789417537.Spec : Prop :=
  ∀ n, P14353034393789417537.a n = A083878 n

end A083878

/-! ## A083878.P2314433885736558193

`2*A086351(n)-A102285(n)`
-/

namespace A083878.P2314433885736558193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086351 n - A102285 n

end

end A083878.P2314433885736558193

namespace A083878

/-- `2*A086351(n)-A102285(n)` -/
def P2314433885736558193.Spec : Prop :=
  ∀ n, P2314433885736558193.a n = A083878 n

end A083878

/-! ## A083878.P18422635759624686402

`2*A102285(n)-A163348(n)`
-/

namespace A083878.P18422635759624686402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102285 n - A163348 n

end

end A083878.P18422635759624686402

namespace A083878

/-- `2*A102285(n)-A163348(n)` -/
def P18422635759624686402.Spec : Prop :=
  ∀ n, P18422635759624686402.a n = A083878 n

end A083878

/-! ## A083878.P11911879965499154088

`A163606(n)-2*A102285(n)`
-/

namespace A083878.P11911879965499154088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163606 n - 2 * A102285 n

end

end A083878.P11911879965499154088

namespace A083878

/-- `A163606(n)-2*A102285(n)` -/
def P11911879965499154088.Spec : Prop :=
  ∀ n, P11911879965499154088.a n = A083878 n

end A083878

/-! ## A083878.P2294540988699162855

`A102285(n)+A163348(n)-A163614(n)`
-/

namespace A083878.P2294540988699162855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 n + (A163348 n - A163614 n)

end

end A083878.P2294540988699162855

namespace A083878

/-- `A102285(n)+A163348(n)-A163614(n)` -/
def P2294540988699162855.Spec : Prop :=
  ∀ n, P2294540988699162855.a n = A083878 n

end A083878

/-! ## A083878.P8158873398977666451

`Δ[A163614(n)]-A163348(n+1)`
-/

namespace A083878.P8158873398977666451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A163348 (n + 1)

end

end A083878.P8158873398977666451

namespace A083878

/-- `Δ[A163614(n)]-A163348(n+1)` -/
def P8158873398977666451.Spec : Prop :=
  ∀ n, P8158873398977666451.a n = A083878 n

end A083878

/-!
# A083879: a(0)=1, a(1)=4, a(n) = 8*a(n-1) - 14*a(n-2), n >= 2.

The programs for A083879, the canonical program `A083879.P7453172027590524861` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083879 has offset 0).

The definition of A083879 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-14*a(n-2)` (program `A083879.P7453172027590524861`, by `A083879.P7453172027590524861.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083879.P7453172027590524861

`8*a(n-1)-14*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A083879

/-- `8*a(n-1)-14*a(n-2)` -/
def P7453172027590524861.Spec : Prop :=
  ∀ n, P7453172027590524861.a n = A083879 n

theorem P7453172027590524861.correct : P7453172027590524861.Spec := by
  intro n
  simp only [A083879]

end A083879

/-! ## A083879.P17901128546017875582

`((4+sqrt(2))^n+(4-sqrt(2))^n)/2`
-/

namespace A083879.P17901128546017875582
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (2 : ℝ)) ^ n + (4 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A083879.P17901128546017875582

namespace A083879

/-- `((4+sqrt(2))^n+(4-sqrt(2))^n)/2` -/
def P17901128546017875582.Spec : Prop :=
  ∀ n, P17901128546017875582.a n = (A083879 n : ℝ)

end A083879

/-! ## A083879.P5021666589920153748

`A161939(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A083879.P5021666589920153748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A161939 (n - 1) + a (n - 1)

end

end A083879.P5021666589920153748

namespace A083879

/-- `A161939(n-1)+a(n-1)` -/
def P5021666589920153748.Spec : Prop :=
  ∀ n, P5021666589920153748.a n = A083879 n

end A083879

/-! ## A083879.P4840067066793614746

`A161731(n)-A081180(n)`
-/

namespace A083879.P4840067066793614746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161731 n - A081180 n

end

end A083879.P4840067066793614746

namespace A083879

/-- `A161731(n)-A081180(n)` -/
def P4840067066793614746.Spec : Prop :=
  ∀ n, P4840067066793614746.a n = A083879 n

end A083879

/-! ## A083879.P16558467269916841966

`A163350(n)-2*A081180(n)`
-/

namespace A083879.P16558467269916841966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163350 n - 2 * A081180 n

end

end A083879.P16558467269916841966

namespace A083879

/-- `A163350(n)-2*A081180(n)` -/
def P16558467269916841966.Spec : Prop :=
  ∀ n, P16558467269916841966.a n = A083879 n

end A083879

/-! ## A083879.P1767293146579003913

`2*A161731(n)-A163350(n)`
-/

namespace A083879.P1767293146579003913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161731 n - A163350 n

end

end A083879.P1767293146579003913

namespace A083879

/-- `2*A161731(n)-A163350(n)` -/
def P1767293146579003913.Spec : Prop :=
  ∀ n, P1767293146579003913.a n = A083879 n

end A083879

/-! ## A083879.P9665004495858524928

`A164034(n)-A164072(n)`
-/

namespace A083879.P9665004495858524928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164034 n - A164072 n

end

end A083879.P9665004495858524928

namespace A083879

/-- `A164034(n)-A164072(n)` -/
def P9665004495858524928.Spec : Prop :=
  ∀ n, P9665004495858524928.a n = A083879 n

end A083879

/-! ## A083879.P11143418245213317484

`A164034(n)-Δ[A081180(n)]`
-/

namespace A083879.P11143418245213317484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164034 n - (f1 (n + 1) - f1 n)

end

end A083879.P11143418245213317484

namespace A083879

/-- `A164034(n)-Δ[A081180(n)]` -/
def P11143418245213317484.Spec : Prop :=
  ∀ n, P11143418245213317484.a n = A083879 n

end A083879

/-! ## A083879.P16504789502555546914

`A081180(n+1)-4*A081180(n)`
-/

namespace A083879.P16504789502555546914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081180 (n + 1) - 4 * A081180 n

end

end A083879.P16504789502555546914

namespace A083879

/-- `A081180(n+1)-4*A081180(n)` -/
def P16504789502555546914.Spec : Prop :=
  ∀ n, P16504789502555546914.a n = A083879 n

end A083879

/-!
# A083880: a(0)=1, a(1)=5, a(n) = 10*a(n-1) - 23*a(n-2), n >= 2.

The programs for A083880, the canonical program `A083880.P16163792197747829543` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083880 has offset 0).

The definition of A083880 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-23*a(n-2)` (program `A083880.P16163792197747829543`, by `A083880.P16163792197747829543.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083880.P16163792197747829543

`10*a(n-1)-23*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A083880

/-- `10*a(n-1)-23*a(n-2)` -/
def P16163792197747829543.Spec : Prop :=
  ∀ n, P16163792197747829543.a n = A083880 n

theorem P16163792197747829543.correct : P16163792197747829543.Spec := by
  intro n
  simp only [A083880]

end A083880

/-! ## A083880.P12189028711370607737

`((5-sqrt(2))^n+(5+sqrt(2))^n)/2`
-/

namespace A083880.P12189028711370607737
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 - Real.sqrt (2 : ℝ)) ^ n + (5 + Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A083880.P12189028711370607737

namespace A083880

/-- `((5-sqrt(2))^n+(5+sqrt(2))^n)/2` -/
def P12189028711370607737.Spec : Prop :=
  ∀ n, P12189028711370607737.a n = (A083880 n : ℝ)

end A083880

/-! ## A083880.P4017755862900044539

`A161734(n)-A081182(n)`
-/

namespace A083880.P4017755862900044539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161734 n - A081182 n

end

end A083880.P4017755862900044539

namespace A083880

/-- `A161734(n)-A081182(n)` -/
def P4017755862900044539.Spec : Prop :=
  ∀ n, P4017755862900044539.a n = A083880 n

end A083880

/-! ## A083880.P17455404293870517683

`A161947(n)-A161734(n)`
-/

namespace A083880.P17455404293870517683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161947 n - A161734 n

end

end A083880.P17455404293870517683

namespace A083880

/-- `A161947(n)-A161734(n)` -/
def P17455404293870517683.Spec : Prop :=
  ∀ n, P17455404293870517683.a n = A083880 n

end A083880

/-! ## A083880.P7797952967725537703

`A164035(n)-A164031(n)`
-/

namespace A083880.P7797952967725537703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164035 n - A164031 n

end

end A083880.P7797952967725537703

namespace A083880

/-- `A164035(n)-A164031(n)` -/
def P7797952967725537703.Spec : Prop :=
  ∀ n, P7797952967725537703.a n = A083880 n

end A083880

/-! ## A083880.P6820562185172499612

`A164038(n)%A164035(n)`
-/

namespace A083880.P6820562185172499612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164038 n) (A164035 n)

end

end A083880.P6820562185172499612

namespace A083880

/-- `A164038(n)%A164035(n)` -/
def P6820562185172499612.Spec : Prop :=
  ∀ n, P6820562185172499612.a n = A083880 n

end A083880

/-! ## A083880.P12672487494179519305

`A163346(n)-2*A081182(n)`
-/

namespace A083880.P12672487494179519305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163346 n - 2 * A081182 n

end

end A083880.P12672487494179519305

namespace A083880

/-- `A163346(n)-2*A081182(n)` -/
def P12672487494179519305.Spec : Prop :=
  ∀ n, P12672487494179519305.a n = A083880 n

end A083880

/-! ## A083880.P16336284605221474996

`2*A161947(n)-A161940(n)`
-/

namespace A083880.P16336284605221474996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161947 n - A161940 n

end

end A083880.P16336284605221474996

namespace A083880

/-- `2*A161947(n)-A161940(n)` -/
def P16336284605221474996.Spec : Prop :=
  ∀ n, P16336284605221474996.a n = A083880 n

end A083880

/-! ## A083880.P3486047466146496733

`2*A161734(n)-A163346(n)`
-/

namespace A083880.P3486047466146496733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161734 n - A163346 n

end

end A083880.P3486047466146496733

namespace A083880

/-- `2*A161734(n)-A163346(n)` -/
def P3486047466146496733.Spec : Prop :=
  ∀ n, P3486047466146496733.a n = A083880 n

end A083880

/-! ## A083880.P4013700194205170747

`2*A163346(n)-A163349(n)`
-/

namespace A083880.P4013700194205170747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163346 n - A163349 n

end

end A083880.P4013700194205170747

namespace A083880

/-- `2*A163346(n)-A163349(n)` -/
def P4013700194205170747.Spec : Prop :=
  ∀ n, P4013700194205170747.a n = A083880 n

end A083880

/-! ## A083880.P9818132934402854473

`A163605(n)-2*A163346(n)`
-/

namespace A083880.P9818132934402854473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163605 n - 2 * A163346 n

end

end A083880.P9818132934402854473

namespace A083880

/-- `A163605(n)-2*A163346(n)` -/
def P9818132934402854473.Spec : Prop :=
  ∀ n, P9818132934402854473.a n = A083880 n

end A083880

/-! ## A083880.P4458062535241918738

`2*A164031(n)-A163616(n)`
-/

namespace A083880.P4458062535241918738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164031 n - A163616 n

end

end A083880.P4458062535241918738

namespace A083880

/-- `2*A164031(n)-A163616(n)` -/
def P4458062535241918738.Spec : Prop :=
  ∀ n, P4458062535241918738.a n = A083880 n

end A083880

/-! ## A083880.P2434667220452517275

`A164035(n)-(A163346(n)+A081182(n))`
-/

namespace A083880.P2434667220452517275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164035 n - (A163346 n + A081182 n)

end

end A083880.P2434667220452517275

namespace A083880

/-- `A164035(n)-(A163346(n)+A081182(n))` -/
def P2434667220452517275.Spec : Prop :=
  ∀ n, P2434667220452517275.a n = A083880 n

end A083880

/-! ## A083880.P14434569813207593044

`A163605(n)-(A164035(n)+A081182(n))`
-/

namespace A083880.P14434569813207593044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163605 n - (A164035 n + A081182 n)

end

end A083880.P14434569813207593044

namespace A083880

/-- `A163605(n)-(A164035(n)+A081182(n))` -/
def P14434569813207593044.Spec : Prop :=
  ∀ n, P14434569813207593044.a n = A083880 n

end A083880

/-! ## A083880.P18435889377768341099

`Δ[A161734(n)]-2*A164035(n)`
-/

namespace A083880.P18435889377768341099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A164035 n

end

end A083880.P18435889377768341099

namespace A083880

/-- `Δ[A161734(n)]-2*A164035(n)` -/
def P18435889377768341099.Spec : Prop :=
  ∀ n, P18435889377768341099.a n = A083880 n

end A083880

/-!
# A083881: a(n) = 6*a(n-1) - 6*a(n-2), with a(0)=1, a(1)=3.

The programs for A083881, the canonical program `A083881.P13077104676451508525` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083881 has offset 0).

The definition of A083881 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-6*a(n-2)` (program `A083881.P13077104676451508525`, by `A083881.P13077104676451508525.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083881.P13077104676451508525

`6*a(n-1)-6*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A083881

/-- `6*a(n-1)-6*a(n-2)` -/
def P13077104676451508525.Spec : Prop :=
  ∀ n, P13077104676451508525.a n = A083881 n

theorem P13077104676451508525.correct : P13077104676451508525.Spec := by
  intro n
  simp only [A083881]

end A083881

/-! ## A083881.P2013104114184465194

`6*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A083881.P2013104114184465194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  6 * (a (n - 1) - a (n - 2))

end

end A083881.P2013104114184465194

namespace A083881

/-- `6*(a(n-1)-a(n-2))` -/
def P2013104114184465194.Spec : Prop :=
  ∀ n, P2013104114184465194.a n = A083881 n

theorem P2013104114184465194.correct : P2013104114184465194.Spec := by
  intro n
  simp only [A083881, Nat.add_sub_cancel, A083881.P2013104114184465194.a, A083881.P13077104676451508525.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A083881

/-! ## A083881.P3293249098360034344

`((3-sqrt(3))^n+(3+sqrt(3))^n)/2`
-/

namespace A083881.P3293249098360034344
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 - Real.sqrt (3 : ℝ)) ^ n + (3 + Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A083881.P3293249098360034344

namespace A083881

/-- `((3-sqrt(3))^n+(3+sqrt(3))^n)/2` -/
def P3293249098360034344.Spec : Prop :=
  ∀ n, P3293249098360034344.a n = (A083881 n : ℝ)

end A083881

/-! ## A083881.P11690410776072765334

`(∑[A086405(n)+2]-1)/2-n`
-/

namespace A083881.P11690410776072765334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086405 n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2 - (n : ℚ)

end

end A083881.P11690410776072765334

namespace A083881

/-- `(∑[A086405(n)+2]-1)/2-n` -/
def P11690410776072765334.Spec : Prop :=
  ∀ n, P11690410776072765334.a n = (A083881 n : ℚ)

end A083881

/-! ## A083881.P13414120985944680241

`A026150(n)+2*A084157(n)`
-/

namespace A083881.P13414120985944680241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n + 2 * A084157 n

end

end A083881.P13414120985944680241

namespace A083881

/-- `A026150(n)+2*A084157(n)` -/
def P13414120985944680241.Spec : Prop :=
  ∀ n, P13414120985944680241.a n = A083881 n

end A083881

/-! ## A083881.P4426967198792709180

`A005246(n+1)*A026532(n+1)`
-/

namespace A083881.P4426967198792709180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (n + 1) * A026532 (n + 1)

end

end A083881.P4426967198792709180

namespace A083881

/-- `A005246(n+1)*A026532(n+1)` -/
def P4426967198792709180.Spec : Prop :=
  ∀ n, P4426967198792709180.a n = A083881 n

end A083881

/-! ## A083881.P13358905317477772010

`A086405(n)-A094434(n+1)/2`
-/

namespace A083881.P13358905317477772010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086405 n : ℚ) - (A094434 (n + 1) : ℚ) / 2

end

end A083881.P13358905317477772010

namespace A083881

/-- `A086405(n)-A094434(n+1)/2` -/
def P13358905317477772010.Spec : Prop :=
  ∀ n, P13358905317477772010.a n = (A083881 n : ℚ)

end A083881

/-! ## A083881.P249586785281397179

`Δ[(A036453(n+1)+1)*A094433(n)]`
-/

namespace A083881.P249586785281397179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036453 (n + 1) + 1) * A094433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083881.P249586785281397179

namespace A083881

/-- `Δ[(A036453(n+1)+1)*A094433(n)]` -/
def P249586785281397179.Spec : Prop :=
  ∀ n, P249586785281397179.a n = A083881 n

end A083881

/-! ## A083881.P17836408774888285577

`A086405(n+1)-A030192(n+1)/2`
-/

namespace A083881.P17836408774888285577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086405 (n + 1) : ℚ) - (A030192 (n + 1) : ℚ) / 2

end

end A083881.P17836408774888285577

namespace A083881

/-- `A086405(n+1)-A030192(n+1)/2` -/
def P17836408774888285577.Spec : Prop :=
  ∀ n, P17836408774888285577.a n = (A083881 n : ℚ)

end A083881

/-! ## A083881.P10997293067280229751

`A030192(n+1)/2-A094434(n+2)`
-/

namespace A083881.P10997293067280229751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030192 (n + 1) : ℚ) / 2 - (A094434 (n + 2) : ℚ)

end

end A083881.P10997293067280229751

namespace A083881

/-- `A030192(n+1)/2-A094434(n+2)` -/
def P10997293067280229751.Spec : Prop :=
  ∀ n, P10997293067280229751.a n = (A083881 n : ℚ)

end A083881

/-!
# A083882: a(0)=1, a(1)=4, a(n)=8a(n-1)-13a(n-2), n>=2.

The programs for A083882, the canonical program `A083882.P8205314770453679946` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083882 has offset 0).

The definition of A083882 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-13*a(n-2)` (program `A083882.P8205314770453679946`, by `A083882.P8205314770453679946.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083882.P8205314770453679946

`8*a(n-1)-13*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A083882

/-- `8*a(n-1)-13*a(n-2)` -/
def P8205314770453679946.Spec : Prop :=
  ∀ n, P8205314770453679946.a n = A083882 n

theorem P8205314770453679946.correct : P8205314770453679946.Spec := by
  intro n
  simp only [A083882]

end A083882

/-! ## A083882.P1069601602009115718

`floor(3*A136784(n+1)/2)`
-/

namespace A083882.P1069601602009115718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A136784 (n + 1) : ℚ) / 2)⌋

end

end A083882.P1069601602009115718

namespace A083882

/-- `floor(3*A136784(n+1)/2)` -/
def P1069601602009115718.Spec : Prop :=
  ∀ n, P1069601602009115718.a n = A083882 n

end A083882

/-! ## A083882.P14655239036872935816

`((4-sqrt(3))^n+(sqrt(3)+4)^n)/2`
-/

namespace A083882.P14655239036872935816
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 - Real.sqrt (3 : ℝ)) ^ n + (Real.sqrt (3 : ℝ) + 4) ^ n) / 2

end

end A083882.P14655239036872935816

namespace A083882

/-- `((4-sqrt(3))^n+(sqrt(3)+4)^n)/2` -/
def P14655239036872935816.Spec : Prop :=
  ∀ n, P14655239036872935816.a n = (A083882 n : ℝ)

end A083882

/-! ## A083882.P14597776014819013400

`A162274(n)-A161728(n)`
-/

namespace A083882.P14597776014819013400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162274 n - A161728 n

end

end A083882.P14597776014819013400

namespace A083882

/-- `A162274(n)-A161728(n)` -/
def P14597776014819013400.Spec : Prop :=
  ∀ n, P14597776014819013400.a n = A083882 n

end A083882

/-! ## A083882.P5398911574785249743

`abs((A163470(n)-A161728(n))/2)`
-/

namespace A083882.P5398911574785249743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A163470 n - A161728 n : ℚ) / 2|

end

end A083882.P5398911574785249743

namespace A083882

/-- `abs((A163470(n)-A161728(n))/2)` -/
def P5398911574785249743.Spec : Prop :=
  ∀ n, P5398911574785249743.a n = (A083882 n : ℚ)

end A083882

/-! ## A083882.P3985722001562917147

`A163470(n)-Δ[A162557(n)/2]`
-/

namespace A083882.P3985722001562917147
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162557 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163470 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A083882.P3985722001562917147

namespace A083882

/-- `A163470(n)-Δ[A162557(n)/2]` -/
def P3985722001562917147.Spec : Prop :=
  ∀ n, P3985722001562917147.a n = (A083882 n : ℚ)

end A083882

/-! ## A083882.P7767598857745763213

`2*A161727(n)-A153594(n+1)`
-/

namespace A083882.P7767598857745763213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161727 n - A153594 (n + 1)

end

end A083882.P7767598857745763213

namespace A083882

/-- `2*A161727(n)-A153594(n+1)` -/
def P7767598857745763213.Spec : Prop :=
  ∀ n, P7767598857745763213.a n = A083882 n

end A083882

/-! ## A083882.P7090235746387007047

`A161728(n)+A162557(n)-A153594(n+1)`
-/

namespace A083882.P7090235746387007047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161728 n + (A162557 n - A153594 (n + 1))

end

end A083882.P7090235746387007047

namespace A083882

/-- `A161728(n)+A162557(n)-A153594(n+1)` -/
def P7090235746387007047.Spec : Prop :=
  ∀ n, P7090235746387007047.a n = A083882 n

end A083882

/-! ## A083882.P4177236858699094644

`A000007(n+1)+(A163470(n)-A161728(n))/2`
-/

namespace A083882.P4177236858699094644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℚ) + (A163470 n - A161728 n : ℚ) / 2

end

end A083882.P4177236858699094644

namespace A083882

/-- `A000007(n+1)+(A163470(n)-A161728(n))/2` -/
def P4177236858699094644.Spec : Prop :=
  ∀ n, P4177236858699094644.a n = (A083882 n : ℚ)

end A083882

/-! ## A083882.P8363520466158763467

`char[A018187(n+1)]+(A163470(n)-A161728(n))/2`
-/

namespace A083882.P8363520466158763467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018187 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + (A163470 n - A161728 n : ℚ) / 2

end

end A083882.P8363520466158763467

namespace A083882

/-- `char[A018187(n+1)]+(A163470(n)-A161728(n))/2` -/
def P8363520466158763467.Spec : Prop :=
  ∀ n, P8363520466158763467.a n = (A083882 n : ℚ)

end A083882

/-! ## A083882.P16820814043623272001

`char[A018188(n+1)]+(A163470(n)-A161728(n))/2`
-/

namespace A083882.P16820814043623272001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018188 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + (A163470 n - A161728 n : ℚ) / 2

end

end A083882.P16820814043623272001

namespace A083882

/-- `char[A018188(n+1)]+(A163470(n)-A161728(n))/2` -/
def P16820814043623272001.Spec : Prop :=
  ∀ n, P16820814043623272001.a n = (A083882 n : ℚ)

end A083882

/-! ## A083882.P10679844845040513352

`A007949(C(n, 2)+1)+(A163470(n)-A161728(n))/2`
-/

namespace A083882.P10679844845040513352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007949 (Nat.choose n 2 + 1) : ℚ) + (A163470 n - A161728 n : ℚ) / 2

end

end A083882.P10679844845040513352

namespace A083882

/-- `A007949(C(n, 2)+1)+(A163470(n)-A161728(n))/2` -/
def P10679844845040513352.Spec : Prop :=
  ∀ n, P10679844845040513352.a n = (A083882 n : ℚ)

end A083882

/-!
# A083883: Odd short leg of more than one primitive Pythagorean triangle.

The programs for A083883, there is no canonical definition to state claims against.
-/

/-! ## A083883.P4971269272000729816

`∩[2*n+1, A024411(n+1)]`
-/

namespace A083883.P4971269272000729816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083883.P4971269272000729816

/-! ## A083883.P12054411827991878074

`filter[A024411(n+1), A039982(#)]`
-/

namespace A083883.P12054411827991878074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A083883.P12054411827991878074

/-! ## A083883.P916312003955931385

`filter[A024411(n+1), A098725(#)]`
-/

namespace A083883.P916312003955931385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A083883.P916312003955931385

/-! ## A083883.P11385765098494838651

`filter[A024411(n+1), A166486(#)]`
-/

namespace A083883.P11385765098494838651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A083883.P11385765098494838651

/-! ## A083883.P14712415230859010671

`∩[A024411(n+1), A004273(n)]`
-/

namespace A083883.P14712415230859010671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083883.P14712415230859010671

/-! ## A083883.P17579876608495158767

`∩[A024411(n+1), A004274(n)]`
-/

namespace A083883.P17579876608495158767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083883.P17579876608495158767

/-! ## A083883.P3287907306785001716

`∩[A024411(n+1), A004276(n)]`
-/

namespace A083883.P3287907306785001716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083883.P3287907306785001716

/-! ## A083883.P10994932032531993361

`∩[A024411(n+1), A004281(n)]`
-/

namespace A083883.P10994932032531993361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083883.P10994932032531993361

/-! ## A083883.P13098826962601126898

`∩[A024411(n+1), A020742(n)]`
-/

namespace A083883.P13098826962601126898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083883.P13098826962601126898

/-! ## A083883.P8767006247472536820

`∩[A024411(n+1), A060747(n)]`
-/

namespace A083883.P8767006247472536820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083883.P8767006247472536820

/-! ## A083883.P7731185498177654485

`∩[A024411(n+1), A062545(n)]`
-/

namespace A083883.P7731185498177654485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083883.P7731185498177654485

/-! ## A083883.P16100382033752223850

`∩[A024411(n+1), A130773(n)]`
-/

namespace A083883.P16100382033752223850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083883.P16100382033752223850

/-! ## A083883.P3194944471282825154

`∩[A024411(n+1), A163985(n)]`
-/

namespace A083883.P3194944471282825154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083883.P3194944471282825154

/-! ## A083883.P954802053236820423

`∩[A024411(n+1), A223134(n)]`
-/

namespace A083883.P954802053236820423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083883.P954802053236820423

/-! ## A083883.P12407120709214183999

`∩[A024411(n+1), A326494(n)]`
-/

namespace A083883.P12407120709214183999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083883.P12407120709214183999

/-! ## A083883.P13978436384566629363

`∩[A024411(n+1), A061346(n+1)]`
-/

namespace A083883.P13978436384566629363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083883.P13978436384566629363

/-! ## A083883.P16241024710674772709

`∩[A024411(n+1), A047489(n+1)]`
-/

namespace A083883.P16241024710674772709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083883.P16241024710674772709

/-! ## A083883.P17228601267895056534

`∩[A024411(n+1), A047584(n+1)]`
-/

namespace A083883.P17228601267895056534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083883.P17228601267895056534

/-! ## A083883.P879495395863969798

`∩[A024411(n+1), A014528(n)]`
-/

namespace A083883.P879495395863969798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014528 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083883.P879495395863969798

/-! ## A083883.P13336683114284443419

`∩[A024411(n+1), A042968(n+1)]`
-/

namespace A083883.P13336683114284443419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083883.P13336683114284443419

/-!
# A083884: a(n) = (3^(2*n) + 1) / 2.

The programs for A083884, the canonical program `A083884.P3536560358876351984` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083884 has offset 0).

The definition of A083884 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^(2*n)+1)/2` (program `A083884.P15812660196635105822`, by `A083884.P15812660196635105822.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083884.P3536560358876351984

`9*a(n-1)-4` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A083884

/-- `9*a(n-1)-4` -/
def P3536560358876351984.Spec : Prop :=
  ∀ n, P3536560358876351984.a n = A083884 n

theorem P3536560358876351984.correct : P3536560358876351984.Spec := by
  intro n
  simp only [A083884]

end A083884

/-! ## A083884.P15812660196635105822

`(3^(2*n)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083884.P15812660196635105822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (2 * n) + 1 : ℚ) / 2

end

end A083884.P15812660196635105822

namespace A083884

/-- `(3^(2*n)+1)/2` -/
def P15812660196635105822.Spec : Prop :=
  ∀ n, P15812660196635105822.a n = (A083884 n : ℚ)

theorem P15812660196635105822.correct : P15812660196635105822.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083884, Nat.add_sub_cancel, A083884.P15812660196635105822.a, A083884.P3536560358876351984.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083884, Nat.add_sub_cancel, A083884.P15812660196635105822.a, A083884.P3536560358876351984.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083884

/-! ## A083884.P4547605800068597952

`lcm(9, a(n-1))-4` with `a(0)=1`
-/

namespace A083884.P4547605800068597952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 9 (a (n - 1)) : ℤ) - 4

end

end A083884.P4547605800068597952

namespace A083884

/-- `lcm(9, a(n-1))-4` -/
def P4547605800068597952.Spec : Prop :=
  ∀ n, P4547605800068597952.a n = A083884 n

end A083884

/-! ## A083884.P14573390892839288528

`or(1, floor(Δ[(3^n/4)²]))`
-/

namespace A083884.P14573390892839288528
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℚ) / 4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊f1 (n + 1) - f1 n⌋

end

end A083884.P14573390892839288528

namespace A083884

/-- `or(1, floor(Δ[(3^n/4)²]))` -/
def P14573390892839288528.Spec : Prop :=
  ∀ n, P14573390892839288528.a n = A083884 n

end A083884

/-! ## A083884.P10118172415338029809

`xor(1, floor(Δ[(3^n/4)²]))`
-/

namespace A083884.P10118172415338029809
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℚ) / 4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊f1 (n + 1) - f1 n⌋

end

end A083884.P10118172415338029809

namespace A083884

/-- `xor(1, floor(Δ[(3^n/4)²]))` -/
def P10118172415338029809.Spec : Prop :=
  ∀ n, P10118172415338029809.a n = A083884 n

end A083884

/-! ## A083884.P2936358724657474623

`∑[∏[-a(n-1)]²]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A083884.P2936358724657474623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n f2 =>
  -f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083884.P2936358724657474623

namespace A083884

/-- `∑[∏[-a(n-1)]²]` -/
def P2936358724657474623.Spec : Prop :=
  ∀ n, P2936358724657474623.a n = A083884 n

end A083884

/-! ## A083884.P11149587834953907673

`a(n-1)/(1/3)²-4` with `a(0)=1`
-/

namespace A083884.P11149587834953907673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 - 4

end

end A083884.P11149587834953907673

namespace A083884

/-- `a(n-1)/(1/3)²-4` -/
def P11149587834953907673.Spec : Prop :=
  ∀ n, P11149587834953907673.a n = (A083884 n : ℚ)

end A083884

/-! ## A083884.P14295866341831005732

`a(n-1)+Δ[3^(n-1)]²` with `a(0)=1`
-/

namespace A083884.P14295866341831005732
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (f1 (n + 1) - f1 n) ^ 2

end

end A083884.P14295866341831005732

namespace A083884

/-- `a(n-1)+Δ[3^(n-1)]²` -/
def P14295866341831005732.Spec : Prop :=
  ∀ n, P14295866341831005732.a n = (A083884 n : ℚ)

end A083884

/-! ## A083884.P9764308034403951389

`∑[A270473(n)]`
-/

namespace A083884.P9764308034403951389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083884.P9764308034403951389

namespace A083884

/-- `∑[A270473(n)]` -/
def P9764308034403951389.Spec : Prop :=
  ∀ n, P9764308034403951389.a n = A083884 n

end A083884

/-! ## A083884.P11575149965870423735

`A191681(n)+1`
-/

namespace A083884.P11575149965870423735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191681 n + 1

end

end A083884.P11575149965870423735

namespace A083884

/-- `A191681(n)+1` -/
def P11575149965870423735.Spec : Prop :=
  ∀ n, P11575149965870423735.a n = A083884 n

end A083884

/-! ## A083884.P4003775009997672015

`A007051(2*n)`
-/

namespace A083884.P4003775009997672015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (2 * n)

end

end A083884.P4003775009997672015

namespace A083884

/-- `A007051(2*n)` -/
def P4003775009997672015.Spec : Prop :=
  ∀ n, P4003775009997672015.a n = A083884 n

end A083884

/-! ## A083884.P2102622589452464141

`A046717(2*n)`
-/

namespace A083884.P2102622589452464141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 (2 * n)

end

end A083884.P2102622589452464141

namespace A083884

/-- `A046717(2*n)` -/
def P2102622589452464141.Spec : Prop :=
  ∀ n, P2102622589452464141.a n = A083884 n

end A083884

/-! ## A083884.P8641275087695369401

`A103425(2*n)`
-/

namespace A083884.P8641275087695369401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103425 (2 * n)

end

end A083884.P8641275087695369401

namespace A083884

/-- `A103425(2*n)` -/
def P8641275087695369401.Spec : Prop :=
  ∀ n, P8641275087695369401.a n = A083884 n

end A083884

/-! ## A083884.P11327110213153200832

`A167205(2*n)`
-/

namespace A083884.P11327110213153200832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167205 (2 * n)

end

end A083884.P11327110213153200832

namespace A083884

/-- `A167205(2*n)` -/
def P11327110213153200832.Spec : Prop :=
  ∀ n, P11327110213153200832.a n = A083884 n

end A083884

/-! ## A083884.P8202374616428352015

`∑[A025192(n)²]`
-/

namespace A083884.P8202374616428352015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083884.P8202374616428352015

namespace A083884

/-- `∑[A025192(n)²]` -/
def P8202374616428352015.Spec : Prop :=
  ∀ n, P8202374616428352015.a n = A083884 n

end A083884

/-! ## A083884.P1838893017967009366

`A124302(Δ[n²])`
-/

namespace A083884.P1838893017967009366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A083884.P1838893017967009366

namespace A083884

/-- `A124302(Δ[n²])` -/
def P1838893017967009366.Spec : Prop :=
  ∀ n, P1838893017967009366.a n = A083884 n

end A083884

/-! ## A083884.P11422514962888393227

`record[-A341463(n)]`
-/

namespace A083884.P11422514962888393227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A341463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083884.P11422514962888393227

namespace A083884

/-- `record[-A341463(n)]` -/
def P11422514962888393227.Spec : Prop :=
  ∀ n, P11422514962888393227.a n = A083884 n

end A083884

/-! ## A083884.P8866877762691544230

`abs(A341463(2*n))`
-/

namespace A083884.P8866877762691544230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A341463 (2 * n)|

end

end A083884.P8866877762691544230

namespace A083884

/-- `abs(A341463(2*n))` -/
def P8866877762691544230.Spec : Prop :=
  ∀ n, P8866877762691544230.a n = A083884 n

end A083884

/-! ## A083884.P14720100586184829872

`Δ[A002754(n)]+1`
-/

namespace A083884.P14720100586184829872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A083884.P14720100586184829872

namespace A083884

/-- `Δ[A002754(n)]+1` -/
def P14720100586184829872.Spec : Prop :=
  ∀ n, P14720100586184829872.a n = A083884 n

end A083884

/-!
# A083885: a(n) = (4^n+2^n+0^n+(-2)^n)/4.

The programs for A083885, the canonical program `A083885.P18419427905362704406` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083885 has offset 0).

The definition of A083885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083885.P18419427905362704406

`4*a(n-1)+4*a(n-2)-16*a(n-3)` with `a(0)=1, a(1)=1, a(2)=6, a(3)=16`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A083885

/-- `4*a(n-1)+4*a(n-2)-16*a(n-3)` -/
def P18419427905362704406.Spec : Prop :=
  ∀ n, P18419427905362704406.a n = A083885 n

theorem P18419427905362704406.correct : P18419427905362704406.Spec := by
  intro n
  simp only [A083885]

end A083885

/-! ## A083885.P11422300996886787646

`floor((A052531(n)/2)²)`
-/

namespace A083885.P11422300996886787646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A052531 n : ℚ) / 2) ^ 2⌋

end

end A083885.P11422300996886787646

namespace A083885

/-- `floor((A052531(n)/2)²)` -/
def P11422300996886787646.Spec : Prop :=
  ∀ n, P11422300996886787646.a n = A083885 n

end A083885

/-! ## A083885.P12622290209226183302

`2^(n-1)*A052950(n)`
-/

namespace A083885.P12622290209226183302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A052950 n : ℚ)

end

end A083885.P12622290209226183302

namespace A083885

/-- `2^(n-1)*A052950(n)` -/
def P12622290209226183302.Spec : Prop :=
  ∀ n, P12622290209226183302.a n = (A083885 n : ℚ)

end A083885

/-! ## A083885.P1536199483642901

`floor(((A051049(n)+1)/2)²)`
-/

namespace A083885.P1536199483642901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A051049 n + 1 : ℚ) / 2) ^ 2⌋

end

end A083885.P1536199483642901

namespace A083885

/-- `floor(((A051049(n)+1)/2)²)` -/
def P1536199483642901.Spec : Prop :=
  ∀ n, P1536199483642901.a n = A083885 n

end A083885

/-! ## A083885.P6425257808137883677

`A199573(n)+(A155559(n)/2)²`
-/

namespace A083885.P6425257808137883677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199573 n : ℚ) + ((A155559 n : ℚ) / 2) ^ 2

end

end A083885.P6425257808137883677

namespace A083885

/-- `A199573(n)+(A155559(n)/2)²` -/
def P6425257808137883677.Spec : Prop :=
  ∀ n, P6425257808137883677.a n = (A083885 n : ℚ)

end A083885

/-! ## A083885.P11462735054775617538

`A011782(n)*A228693(A042948(n))`
-/

namespace A083885.P11462735054775617538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A228693 (A042948 n).toNat

end

end A083885.P11462735054775617538

namespace A083885

/-- `A011782(n)*A228693(A042948(n))` -/
def P11462735054775617538.Spec : Prop :=
  ∀ n, P11462735054775617538.a n = A083885 n

end A083885

/-! ## A083885.P13724378067373485187

`(A131577(n)+A059841(n))*A011782(n)`
-/

namespace A083885.P13724378067373485187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 n + A059841 n) * A011782 n

end

end A083885.P13724378067373485187

namespace A083885

/-- `(A131577(n)+A059841(n))*A011782(n)` -/
def P13724378067373485187.Spec : Prop :=
  ∀ n, P13724378067373485187.a n = A083885 n

end A083885

/-! ## A083885.P8808205989593352771

`(A052531(n)-A011782(n))*A011782(n)`
-/

namespace A083885.P8808205989593352771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052531 n - A011782 n) * A011782 n

end

end A083885.P8808205989593352771

namespace A083885

/-- `(A052531(n)-A011782(n))*A011782(n)` -/
def P8808205989593352771.Spec : Prop :=
  ∀ n, P8808205989593352771.a n = A083885 n

end A083885

/-! ## A083885.P12139527506418013294

`A131577(n)²+A213173(n)-A131577(n)`
-/

namespace A083885.P12139527506418013294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n ^ 2 + (A213173 n - A131577 n)

end

end A083885.P12139527506418013294

namespace A083885

/-- `A131577(n)²+A213173(n)-A131577(n)` -/
def P12139527506418013294.Spec : Prop :=
  ∀ n, P12139527506418013294.a n = A083885 n

end A083885

/-! ## A083885.P2400149612425348232

`Δ[A110654(n)+A011782(n)]*A011782(n)`
-/

namespace A083885.P2400149612425348232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A011782 n

end

end A083885.P2400149612425348232

namespace A083885

/-- `Δ[A110654(n)+A011782(n)]*A011782(n)` -/
def P2400149612425348232.Spec : Prop :=
  ∀ n, P2400149612425348232.a n = A083885 n

end A083885

/-! ## A083885.P6331574831568954663

`A034008(2*n)+A034008(A093178(n+1))`
-/

namespace A083885.P6331574831568954663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (2 * n) + A034008 (A093178 (n + 1)).toNat

end

end A083885.P6331574831568954663

namespace A083885

/-- `A034008(2*n)+A034008(A093178(n+1))` -/
def P6331574831568954663.Spec : Prop :=
  ∀ n, P6331574831568954663.a n = A083885 n

end A083885

/-! ## A083885.P16649294302835919949

`(A131577(n)+A000035(n+1))*A011782(n)`
-/

namespace A083885.P16649294302835919949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 n + A000035 (n + 1)) * A011782 n

end

end A083885.P16649294302835919949

namespace A083885

/-- `(A131577(n)+A000035(n+1))*A011782(n)` -/
def P16649294302835919949.Spec : Prop :=
  ∀ n, P16649294302835919949.a n = A083885 n

end A083885

/-! ## A083885.P8243694535374555253

`A034008(2*n)+A000035(n+1)*A034008(n+1)`
-/

namespace A083885.P8243694535374555253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (2 * n) + A000035 (n + 1) * A034008 (n + 1)

end

end A083885.P8243694535374555253

namespace A083885

/-- `A034008(2*n)+A000035(n+1)*A034008(n+1)` -/
def P8243694535374555253.Spec : Prop :=
  ∀ n, P8243694535374555253.a n = A083885 n

end A083885

/-! ## A083885.P1934022358835515555

`A166444(2*n)+A000035(n+1)*A166444(n+1)`
-/

namespace A083885.P1934022358835515555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (2 * n) + A000035 (n + 1) * A166444 (n + 1)

end

end A083885.P1934022358835515555

namespace A083885

/-- `A166444(2*n)+A000035(n+1)*A166444(n+1)` -/
def P1934022358835515555.Spec : Prop :=
  ∀ n, P1934022358835515555.a n = A083885 n

end A083885

/-! ## A083885.P10112048026674657244

`A038505(2*n)-A009116(2*n)*A219977(n+1)`
-/

namespace A083885.P10112048026674657244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (2 * n) - A009116 (2 * n) * A219977 (n + 1)

end

end A083885.P10112048026674657244

namespace A083885

/-- `A038505(2*n)-A009116(2*n)*A219977(n+1)` -/
def P10112048026674657244.Spec : Prop :=
  ∀ n, P10112048026674657244.a n = A083885 n

end A083885

/-! ## A083885.P12620685922553074044

`floor((2^n-char[2*n+1]+1)²/4)`
-/

namespace A083885.P12620685922553074044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((2 ^ n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1) ^ 2 : ℚ) / 4⌋

end

end A083885.P12620685922553074044

namespace A083885

/-- `floor((2^n-char[2*n+1]+1)²/4)` -/
def P12620685922553074044.Spec : Prop :=
  ∀ n, P12620685922553074044.a n = A083885 n

end A083885

/-! ## A083885.P16992084625485556972

`(A011782(n)+A003665(n))/2`
-/

namespace A083885.P16992084625485556972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n + A003665 n : ℚ) / 2

end

end A083885.P16992084625485556972

namespace A083885

/-- `(A011782(n)+A003665(n))/2` -/
def P16992084625485556972.Spec : Prop :=
  ∀ n, P16992084625485556972.a n = (A083885 n : ℚ)

end A083885

/-! ## A083885.P15928889434125492703

`A000079(n)*A052950(n)/2`
-/

namespace A083885.P15928889434125492703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n * A052950 n : ℚ) / 2

end

end A083885.P15928889434125492703

namespace A083885

/-- `A000079(n)*A052950(n)/2` -/
def P15928889434125492703.Spec : Prop :=
  ∀ n, P15928889434125492703.a n = (A083885 n : ℚ)

end A083885

/-! ## A083885.P6101176597799824201

`A175381(A137932(n+1)+1)`
-/

namespace A083885.P6101176597799824201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175381 (A137932 (n + 1) + 1).toNat

end

end A083885.P6101176597799824201

namespace A083885

/-- `A175381(A137932(n+1)+1)` -/
def P6101176597799824201.Spec : Prop :=
  ∀ n, P6101176597799824201.a n = A083885 n

end A083885

/-!
# A083886: Expansion of e.g.f. exp(3*x)*exp(x^2).

The programs for A083886, the canonical program `A083886.P10019168612686544232` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083886 has offset 0).

The definition of A083886 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083886.P10019168612686544232

`3*a(n-1)+2*(n-1)*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A083886

/-- `3*a(n-1)+2*(n-1)*a(n-2)` -/
def P10019168612686544232.Spec : Prop :=
  ∀ n, P10019168612686544232.a n = A083886 n

theorem P10019168612686544232.correct : P10019168612686544232.Spec := by
  intro n
  simp only [A083886]

end A083886

/-! ## A083886.P13077856337127822264

`sqrt(A202835(n))`
-/

namespace A083886.P13077856337127822264
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202835 n : ℝ)

end

end A083886.P13077856337127822264

namespace A083886

/-- `sqrt(A202835(n))` -/
def P13077856337127822264.Spec : Prop :=
  ∀ n, P13077856337127822264.a n = (A083886 n : ℝ)

end A083886

/-! ## A083886.P8685589753763014251

`root(A202835(n), ratio[A000079(n)])`
-/

namespace A083886.P8685589753763014251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202835 n : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A083886.P8685589753763014251

namespace A083886

/-- `root(A202835(n), ratio[A000079(n)])` -/
def P8685589753763014251.Spec : Prop :=
  ∀ n, P8685589753763014251.a n = (A083886 n : ℝ)

end A083886

/-! ## A083886.P15972391363520224873

`root(A202835(n), A020639(2*(n+1)))`
-/

namespace A083886.P15972391363520224873
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202835 n : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A083886.P15972391363520224873

namespace A083886

/-- `root(A202835(n), A020639(2*(n+1)))` -/
def P15972391363520224873.Spec : Prop :=
  ∀ n, P15972391363520224873.a n = (A083886 n : ℝ)

end A083886

/-! ## A083886.P8793512736119855872

`root(A202835(n), A001316(A001316(n)))`
-/

namespace A083886.P8793512736119855872
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202835 n : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A083886.P8793512736119855872

namespace A083886

/-- `root(A202835(n), A001316(A001316(n)))` -/
def P8793512736119855872.Spec : Prop :=
  ∀ n, P8793512736119855872.a n = (A083886 n : ℝ)

end A083886

/-!
# A083887: Positions of records in A085020.

The programs for A083887, there is no canonical definition to state claims against.
-/

/-! ## A083887.P18436401286457993415

`eq[A051612(n+1), A216763(A051638(n))]`
-/

namespace A083887.P18436401286457993415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216763 (A051638 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083887.P18436401286457993415

/-! ## A083887.P13722485065878077004

`eq[A055642(A006047(n)), A301829(n+1)]`
-/

namespace A083887.P13722485065878077004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A006047 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083887.P13722485065878077004

/-! ## A083887.P12710170863316959155

`lt[(A194074(n+1)+1)/ϕ, A049076(n+1)]`
-/

namespace A083887.P12710170863316959155
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A194074 (n + 1) + 1 : ℝ) / Real.goldenRatio

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A083887.P12710170863316959155

/-! ## A083887.P1396649017959821951

`eq[A001222(n+1), A054724(A184617(n))]`
-/

namespace A083887.P1396649017959821951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054724 (A184617 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083887.P1396649017959821951

/-! ## A083887.P9802537434039597422

`A211317(A060139(n+1))`
-/

namespace A083887.P9802537434039597422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211317 (A060139 (n + 1)).toNat

end

end A083887.P9802537434039597422

/-!
# A083888: Number of divisors of n with largest digit = 1 (base 10).

The programs for A083888, there is no canonical definition to state claims against.
-/

/-! ## A083888.P8888433057818343560

`A000005(n+1)-A083889(n+1)-A083890(n+1)-A083891(n+1)-A083892(n+1)-A083893(n+1)-A083894(n+1)-A083895(n+1)-A083896(n+1)`
-/

namespace A083888.P8888433057818343560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083889 (n + 1) - A083890 (n + 1) - A083891 (n + 1) - A083892 (n + 1) - A083893 (n + 1) - A083894 (n + 1) - A083895 (n + 1) - A083896 (n + 1)

end

end A083888.P8888433057818343560

/-! ## A083888.P4139132704175095940

`∑{d}[n+1, A000007(A106747(#))]`
-/

namespace A083888.P4139132704175095940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (A106747 d).toNat

end

end A083888.P4139132704175095940

/-! ## A083888.P17346405984714715526

`A083897(n+1)-A083889(n+1)`
-/

namespace A083888.P17346405984714715526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083897 (n + 1) - A083889 (n + 1)

end

end A083888.P17346405984714715526

/-! ## A083888.P18304574834981336934

`A083898(n+1)-(A083890(n+1)+A083889(n+1))`
-/

namespace A083888.P18304574834981336934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083898 (n + 1) - (A083890 (n + 1) + A083889 (n + 1))

end

end A083888.P18304574834981336934

/-! ## A083888.P14628177949993481282

`A107846(A044332(n+1))`
-/

namespace A083888.P14628177949993481282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A044332 (n + 1)).toNat

end

end A083888.P14628177949993481282

/-! ## A083888.P9882823631567528634

`A107846(Δ[25*A142463(n)])`
-/

namespace A083888.P9882823631567528634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A142463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (f1 (n + 1) - f1 n).toNat

end

end A083888.P9882823631567528634

/-! ## A083888.P4775073229015111638

`A083230(A056143(n+1))`
-/

namespace A083888.P4775073229015111638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083230 (A056143 (n + 1)).toNat

end

end A083888.P4775073229015111638

/-! ## A083888.P1552135235856984151

`A043284(A102439(n+1))`
-/

namespace A083888.P1552135235856984151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A102439 (n + 1)).toNat

end

end A083888.P1552135235856984151

/-! ## A083888.P6376904394477933313

`A043284(A158128(n+1))`
-/

namespace A083888.P6376904394477933313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A158128 (n + 1)).toNat

end

end A083888.P6376904394477933313

/-! ## A083888.P8650065650957061471

`A333381(A123895(n+1))`
-/

namespace A083888.P8650065650957061471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A123895 (n + 1)).toNat

end

end A083888.P8650065650957061471

/-!
# A083889: Number of divisors of n with largest digit = 2 (base 10).

The programs for A083889, there is no canonical definition to state claims against.
-/

/-! ## A083889.P5831681105248702583

`A083897(n+1)-A083888(n+1)`
-/

namespace A083889.P5831681105248702583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083897 (n + 1) - A083888 (n + 1)

end

end A083889.P5831681105248702583

/-! ## A083889.P10129101930279862620

`A000005(n+1)-A083888(n+1)-A083890(n+1)-A083891(n+1)-A083892(n+1)-A083893(n+1)-A083894(n+1)-A083895(n+1)-A083896(n+1)`
-/

namespace A083889.P10129101930279862620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083888 (n + 1) - A083890 (n + 1) - A083891 (n + 1) - A083892 (n + 1) - A083893 (n + 1) - A083894 (n + 1) - A083895 (n + 1) - A083896 (n + 1)

end

end A083889.P10129101930279862620

/-! ## A083889.P2454514011083918896

`A083898(n+1)-(A083890(n+1)+A083888(n+1))`
-/

namespace A083889.P2454514011083918896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083898 (n + 1) - (A083890 (n + 1) + A083888 (n + 1))

end

end A083889.P2454514011083918896

/-! ## A083889.P5714040513806973840

`∑{d}[n+1, A065333(A113581(#))]-A083888(n+1)`
-/

namespace A083889.P5714040513806973840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065333 (A113581 d).toNat - A083888 (n + 1)

end

end A083889.P5714040513806973840

/-! ## A083889.P1624624264661834498

`A083897(n+1)-A107846(Δ[25*A142463(n)])`
-/

namespace A083889.P1624624264661834498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A142463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083897 (n + 1) - A107846 (f1 (n + 1) - f1 n).toNat

end

end A083889.P1624624264661834498

/-!
# A083890: Number of divisors of n with largest digit = 3 (base 10).

The programs for A083890, the canonical program `A083890.P17438385976831224986` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083890 has offset 1).

The definition of A083890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083890.P3176663089234003873

`A083898(n+1)-A083897(n+1)`
-/

namespace A083890.P3176663089234003873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083898 (n + 1) - A083897 (n + 1)

end

end A083890.P3176663089234003873

namespace A083890

/-- `A083898(n+1)-A083897(n+1)` -/
def P3176663089234003873.Spec : Prop :=
  ∀ n, P3176663089234003873.a n = A083890 (n + 1)

end A083890

/-! ## A083890.P6739654840385472644

`A000005(n+1)-A083888(n+1)-A083889(n+1)-A083891(n+1)-A083892(n+1)-A083893(n+1)-A083894(n+1)-A083895(n+1)-A083896(n+1)`
-/

namespace A083890.P6739654840385472644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083888 (n + 1) - A083889 (n + 1) - A083891 (n + 1) - A083892 (n + 1) - A083893 (n + 1) - A083894 (n + 1) - A083895 (n + 1) - A083896 (n + 1)

end

end A083890.P6739654840385472644

namespace A083890

/-- `A000005(n+1)-A083888(n+1)-A083889(n+1)-A083891(n+1)-A083892(n+1)-A083893(n+1)-A083894(n+1)-A083895(n+1)-A083896(n+1)` -/
def P6739654840385472644.Spec : Prop :=
  ∀ n, P6739654840385472644.a n = A083890 (n + 1)

end A083890

/-! ## A083890.P17438385976831224986

`∑{d}[n+1, (4%A054055(#))%2]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083890

/-- `∑{d}[n+1, (4%A054055(#))%2]` -/
def P17438385976831224986.Spec : Prop :=
  ∀ n, P17438385976831224986.a n = A083890 (n + 1)

theorem P17438385976831224986.correct : P17438385976831224986.Spec := by
  intro n
  simp only [A083890, Nat.add_sub_cancel]

end A083890

/-! ## A083890.P1804030071105335701

`A083898(n+1)-(A083889(n+1)+A083888(n+1))`
-/

namespace A083890.P1804030071105335701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083898 (n + 1) - (A083889 (n + 1) + A083888 (n + 1))

end

end A083890.P1804030071105335701

namespace A083890

/-- `A083898(n+1)-(A083889(n+1)+A083888(n+1))` -/
def P1804030071105335701.Spec : Prop :=
  ∀ n, P1804030071105335701.a n = A083890 (n + 1)

end A083890

/-! ## A083890.P9940688859951180527

`A083899(n+1)-(A083897(n+1)+A083891(n+1))`
-/

namespace A083890.P9940688859951180527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083899 (n + 1) - (A083897 (n + 1) + A083891 (n + 1))

end

end A083890.P9940688859951180527

namespace A083890

/-- `A083899(n+1)-(A083897(n+1)+A083891(n+1))` -/
def P9940688859951180527.Spec : Prop :=
  ∀ n, P9940688859951180527.a n = A083890 (n + 1)

end A083890

/-! ## A083890.P12218788026920941158

`A083898(n+1)-∑{d}[n+1, A065333(A113581(#))]`
-/

namespace A083890.P12218788026920941158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083898 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A065333 (A113581 d).toNat

end

end A083890.P12218788026920941158

namespace A083890

/-- `A083898(n+1)-∑{d}[n+1, A065333(A113581(#))]` -/
def P12218788026920941158.Spec : Prop :=
  ∀ n, P12218788026920941158.a n = A083890 (n + 1)

end A083890

/-!
# A083891: Number of divisors of n with largest digit = 4 (base 10).

The programs for A083891, there is no canonical definition to state claims against.
-/

/-! ## A083891.P10647674384782364251

`A083899(n+1)-A083898(n+1)`
-/

namespace A083891.P10647674384782364251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083899 (n + 1) - A083898 (n + 1)

end

end A083891.P10647674384782364251

/-! ## A083891.P10908989238805041922

`A000005(n+1)-A083888(n+1)-A083889(n+1)-A083890(n+1)-A083892(n+1)-A083893(n+1)-A083894(n+1)-A083895(n+1)-A083896(n+1)`
-/

namespace A083891.P10908989238805041922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083888 (n + 1) - A083889 (n + 1) - A083890 (n + 1) - A083892 (n + 1) - A083893 (n + 1) - A083894 (n + 1) - A083895 (n + 1) - A083896 (n + 1)

end

end A083891.P10908989238805041922

/-! ## A083891.P18031001720270305302

`A083899(n+1)-(A083897(n+1)+A083890(n+1))`
-/

namespace A083891.P18031001720270305302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083899 (n + 1) - (A083897 (n + 1) + A083890 (n + 1))

end

end A083891.P18031001720270305302

/-! ## A083891.P1973537079478512414

`A083900(n+1)-(A083898(n+1)+A083892(n+1))`
-/

namespace A083891.P1973537079478512414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083900 (n + 1) - (A083898 (n + 1) + A083892 (n + 1))

end

end A083891.P1973537079478512414

/-! ## A083891.P2884242347161316113

`A083900(n+1)-A083892(n+1)-(A083897(n+1)+A083890(n+1))`
-/

namespace A083891.P2884242347161316113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083900 (n + 1) - A083892 (n + 1) - (A083897 (n + 1) + A083890 (n + 1))

end

end A083891.P2884242347161316113

/-! ## A083891.P7868450186681217094

`∑{d}[2*(n+1), A000035(A089898(#))]-A083898(n+1)`
-/

namespace A083891.P7868450186681217094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000035 (A089898 d).toNat - A083898 (n + 1)

end

end A083891.P7868450186681217094

/-! ## A083891.P2100634025412821329

`A304572(∑[A339628(n)])+A083914(n+1)`
-/

namespace A083891.P2100634025412821329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304572 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A083914 (n + 1)

end

end A083891.P2100634025412821329

/-!
# A083892: Number of divisors of n with largest digit = 5 (base 10).

The programs for A083892, the canonical program `A083892.P9271966704018374742` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083892 has offset 1).

The definition of A083892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083892.P5587716814193340514

`A083900(n+1)-A083899(n+1)`
-/

namespace A083892.P5587716814193340514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083900 (n + 1) - A083899 (n + 1)

end

end A083892.P5587716814193340514

namespace A083892

/-- `A083900(n+1)-A083899(n+1)` -/
def P5587716814193340514.Spec : Prop :=
  ∀ n, P5587716814193340514.a n = A083892 (n + 1)

end A083892

/-! ## A083892.P16911487823628925915

`A000005(n+1)-A083888(n+1)-A083889(n+1)-A083890(n+1)-A083891(n+1)-A083893(n+1)-A083894(n+1)-A083895(n+1)-A083896(n+1)`
-/

namespace A083892.P16911487823628925915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083888 (n + 1) - A083889 (n + 1) - A083890 (n + 1) - A083891 (n + 1) - A083893 (n + 1) - A083894 (n + 1) - A083895 (n + 1) - A083896 (n + 1)

end

end A083892.P16911487823628925915

namespace A083892

/-- `A000005(n+1)-A083888(n+1)-A083889(n+1)-A083890(n+1)-A083891(n+1)-A083893(n+1)-A083894(n+1)-A083895(n+1)-A083896(n+1)` -/
def P16911487823628925915.Spec : Prop :=
  ∀ n, P16911487823628925915.a n = A083892 (n + 1)

end A083892

/-! ## A083892.P9271966704018374742

`∑{d}[n+1, val(A054055(#), 5)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083892

/-- `∑{d}[n+1, val(A054055(#), 5)]` -/
def P9271966704018374742.Spec : Prop :=
  ∀ n, (P9271966704018374742.a n : ℤ) = A083892 (n + 1)

theorem P9271966704018374742.correct : P9271966704018374742.Spec := by
  intro n
  simp only [A083892, Nat.add_sub_cancel]

end A083892

/-! ## A083892.P5948989627882693467

`A083900(n+1)-(A083898(n+1)+A083891(n+1))`
-/

namespace A083892.P5948989627882693467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083900 (n + 1) - (A083898 (n + 1) + A083891 (n + 1))

end

end A083892.P5948989627882693467

namespace A083892

/-- `A083900(n+1)-(A083898(n+1)+A083891(n+1))` -/
def P5948989627882693467.Spec : Prop :=
  ∀ n, P5948989627882693467.a n = A083892 (n + 1)

end A083892

/-! ## A083892.P14338523209217074682

`A083901(n+1)-(A083899(n+1)+A083893(n+1))`
-/

namespace A083892.P14338523209217074682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083901 (n + 1) - (A083899 (n + 1) + A083893 (n + 1))

end

end A083892.P14338523209217074682

namespace A083892

/-- `A083901(n+1)-(A083899(n+1)+A083893(n+1))` -/
def P14338523209217074682.Spec : Prop :=
  ∀ n, P14338523209217074682.a n = A083892 (n + 1)

end A083892

/-!
# A083893: Number of divisors of n with largest digit = 6 (base 10).

The programs for A083893, the canonical program `A083893.P9413967459148914952` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083893 has offset 1).

The definition of A083893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083893.P8730149239259191688

`A083901(n+1)-A083900(n+1)`
-/

namespace A083893.P8730149239259191688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083901 (n + 1) - A083900 (n + 1)

end

end A083893.P8730149239259191688

namespace A083893

/-- `A083901(n+1)-A083900(n+1)` -/
def P8730149239259191688.Spec : Prop :=
  ∀ n, P8730149239259191688.a n = A083893 (n + 1)

end A083893

/-! ## A083893.P10145538806103768677

`A000005(n+1)-A083888(n+1)-A083889(n+1)-A083890(n+1)-A083891(n+1)-A083892(n+1)-A083894(n+1)-A083895(n+1)-A083896(n+1)`
-/

namespace A083893.P10145538806103768677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083888 (n + 1) - A083889 (n + 1) - A083890 (n + 1) - A083891 (n + 1) - A083892 (n + 1) - A083894 (n + 1) - A083895 (n + 1) - A083896 (n + 1)

end

end A083893.P10145538806103768677

namespace A083893

/-- `A000005(n+1)-A083888(n+1)-A083889(n+1)-A083890(n+1)-A083891(n+1)-A083892(n+1)-A083894(n+1)-A083895(n+1)-A083896(n+1)` -/
def P10145538806103768677.Spec : Prop :=
  ∀ n, P10145538806103768677.a n = A083893 (n + 1)

end A083893

/-! ## A083893.P9413967459148914952

`∑{d}[n+1, val(A054055(#), 6)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083893

/-- `∑{d}[n+1, val(A054055(#), 6)]` -/
def P9413967459148914952.Spec : Prop :=
  ∀ n, (P9413967459148914952.a n : ℤ) = A083893 (n + 1)

theorem P9413967459148914952.correct : P9413967459148914952.Spec := by
  intro n
  simp only [A083893, Nat.add_sub_cancel]

end A083893

/-! ## A083893.P2277869272218683768

`A083901(n+1)-(A083899(n+1)+A083892(n+1))`
-/

namespace A083893.P2277869272218683768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083901 (n + 1) - (A083899 (n + 1) + A083892 (n + 1))

end

end A083893.P2277869272218683768

namespace A083893

/-- `A083901(n+1)-(A083899(n+1)+A083892(n+1))` -/
def P2277869272218683768.Spec : Prop :=
  ∀ n, P2277869272218683768.a n = A083893 (n + 1)

end A083893

/-! ## A083893.P5505573231437379654

`A083902(n+1)-(A083900(n+1)+A083894(n+1))`
-/

namespace A083893.P5505573231437379654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083902 (n + 1) - (A083900 (n + 1) + A083894 (n + 1))

end

end A083893.P5505573231437379654

namespace A083893

/-- `A083902(n+1)-(A083900(n+1)+A083894(n+1))` -/
def P5505573231437379654.Spec : Prop :=
  ∀ n, P5505573231437379654.a n = A083893 (n + 1)

end A083893

/-! ## A083893.P18193474021018230138

`and(A012887(n), A083916(n+1))`
-/

namespace A083893.P18193474021018230138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A012887 n) (A083916 (n + 1))

end

end A083893.P18193474021018230138

namespace A083893

/-- `and(A012887(n), A083916(n+1))` -/
def P18193474021018230138.Spec : Prop :=
  ∀ n, P18193474021018230138.a n = A083893 (n + 1)

end A083893

/-! ## A083893.P15596569036223597558

`A083916(A016738(A228270(n+1)))`
-/

namespace A083893.P15596569036223597558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A016738 (A228270 (n + 1)).toNat).toNat

end

end A083893.P15596569036223597558

namespace A083893

/-- `A083916(A016738(A228270(n+1)))` -/
def P15596569036223597558.Spec : Prop :=
  ∀ n, P15596569036223597558.a n = A083893 (n + 1)

end A083893

/-! ## A083893.P16882211564844475025

`and(A045535(n), A083916(n+1))`
-/

namespace A083893.P16882211564844475025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045535 n) (A083916 (n + 1))

end

end A083893.P16882211564844475025

namespace A083893

/-- `and(A045535(n), A083916(n+1))` -/
def P16882211564844475025.Spec : Prop :=
  ∀ n, P16882211564844475025.a n = A083893 (n + 1)

end A083893

/-!
# A083894: Number of divisors of n with largest digit = 7 (base 10).

The programs for A083894, the canonical program `A083894.P9300796477055001593` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083894 has offset 1).

The definition of A083894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083894.P16287938997193003797

`A083902(n+1)-A083901(n+1)`
-/

namespace A083894.P16287938997193003797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083902 (n + 1) - A083901 (n + 1)

end

end A083894.P16287938997193003797

namespace A083894

/-- `A083902(n+1)-A083901(n+1)` -/
def P16287938997193003797.Spec : Prop :=
  ∀ n, P16287938997193003797.a n = A083894 (n + 1)

end A083894

/-! ## A083894.P4099616920256463032

`A000005(n+1)-A083888(n+1)-A083889(n+1)-A083890(n+1)-A083891(n+1)-A083892(n+1)-A083893(n+1)-A083895(n+1)-A083896(n+1)`
-/

namespace A083894.P4099616920256463032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083888 (n + 1) - A083889 (n + 1) - A083890 (n + 1) - A083891 (n + 1) - A083892 (n + 1) - A083893 (n + 1) - A083895 (n + 1) - A083896 (n + 1)

end

end A083894.P4099616920256463032

namespace A083894

/-- `A000005(n+1)-A083888(n+1)-A083889(n+1)-A083890(n+1)-A083891(n+1)-A083892(n+1)-A083893(n+1)-A083895(n+1)-A083896(n+1)` -/
def P4099616920256463032.Spec : Prop :=
  ∀ n, P4099616920256463032.a n = A083894 (n + 1)

end A083894

/-! ## A083894.P9300796477055001593

`∑{d}[n+1, val(A054055(#), 7)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083894

/-- `∑{d}[n+1, val(A054055(#), 7)]` -/
def P9300796477055001593.Spec : Prop :=
  ∀ n, (P9300796477055001593.a n : ℤ) = A083894 (n + 1)

theorem P9300796477055001593.correct : P9300796477055001593.Spec := by
  intro n
  simp only [A083894, Nat.add_sub_cancel]

end A083894

/-! ## A083894.P16616830643489203022

`A083902(n+1)-(A083900(n+1)+A083893(n+1))`
-/

namespace A083894.P16616830643489203022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083902 (n + 1) - (A083900 (n + 1) + A083893 (n + 1))

end

end A083894.P16616830643489203022

namespace A083894

/-- `A083902(n+1)-(A083900(n+1)+A083893(n+1))` -/
def P16616830643489203022.Spec : Prop :=
  ∀ n, P16616830643489203022.a n = A083894 (n + 1)

end A083894

/-! ## A083894.P4308506134620085795

`A083903(n+1)-(A083901(n+1)+A083895(n+1))`
-/

namespace A083894.P4308506134620085795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083903 (n + 1) - (A083901 (n + 1) + A083895 (n + 1))

end

end A083894.P4308506134620085795

namespace A083894

/-- `A083903(n+1)-(A083901(n+1)+A083895(n+1))` -/
def P4308506134620085795.Spec : Prop :=
  ∀ n, P4308506134620085795.a n = A083894 (n + 1)

end A083894

/-! ## A083894.P14199658595980097097

`∑{d}[n+1, val(#%10+3, 10)]%A294472(n+1)`
-/

namespace A083894.P14199658595980097097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (d % 10 + 3) 10 : ℕ) : ℤ) (A294472 (n + 1))

end

end A083894.P14199658595980097097

namespace A083894

/-- `∑{d}[n+1, val(#%10+3, 10)]%A294472(n+1)` -/
def P14199658595980097097.Spec : Prop :=
  ∀ n, P14199658595980097097.a n = A083894 (n + 1)

end A083894

/-! ## A083894.P5575700689172516432

`∑{d}[n+1, val(#%10+3, 10)]^A005117(A005286(n))`
-/

namespace A083894.P5575700689172516432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (d % 10 + 3) 10 : ℕ) : ℚ) ^ (A005117 (A005286 n).toNat : ℤ)

end

end A083894.P5575700689172516432

namespace A083894

/-- `∑{d}[n+1, val(#%10+3, 10)]^A005117(A005286(n))` -/
def P5575700689172516432.Spec : Prop :=
  ∀ n, P5575700689172516432.a n = (A083894 (n + 1) : ℚ)

end A083894

/-! ## A083894.P11270502700994072078

`A083917(and(1, A028414(n+1))+n)`
-/

namespace A083894.P11270502700994072078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083917 (Int.land 1 (A028414 (n + 1)) + (n : ℤ)).toNat

end

end A083894.P11270502700994072078

namespace A083894

/-- `A083917(and(1, A028414(n+1))+n)` -/
def P11270502700994072078.Spec : Prop :=
  ∀ n, P11270502700994072078.a n = A083894 (n + 1)

end A083894

/-! ## A083894.P16164136768621675726

`and(A006723(n), A083917(n+1))`
-/

namespace A083894.P16164136768621675726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006723 n) (A083917 (n + 1))

end

end A083894.P16164136768621675726

namespace A083894

/-- `and(A006723(n), A083917(n+1))` -/
def P16164136768621675726.Spec : Prop :=
  ∀ n, P16164136768621675726.a n = A083894 (n + 1)

end A083894

/-! ## A083894.P16307735503081633777

`and(A083917(n+1), A089998(n))`
-/

namespace A083894.P16307735503081633777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083917 (n + 1)) (A089998 n)

end

end A083894.P16307735503081633777

namespace A083894

/-- `and(A083917(n+1), A089998(n))` -/
def P16307735503081633777.Spec : Prop :=
  ∀ n, P16307735503081633777.a n = A083894 (n + 1)

end A083894

/-!
# A083895: Number of divisors of n with largest digit = 8 (base 10).

The programs for A083895, there is no canonical definition to state claims against.
-/

/-! ## A083895.P8744463107556394874

`A083903(n+1)-A083902(n+1)`
-/

namespace A083895.P8744463107556394874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083903 (n + 1) - A083902 (n + 1)

end

end A083895.P8744463107556394874

/-! ## A083895.P221412163153471434

`A000005(n+1)-A083888(n+1)-A083889(n+1)-A083890(n+1)-A083891(n+1)-A083892(n+1)-A083893(n+1)-A083894(n+1)-A083896(n+1)`
-/

namespace A083895.P221412163153471434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083888 (n + 1) - A083889 (n + 1) - A083890 (n + 1) - A083891 (n + 1) - A083892 (n + 1) - A083893 (n + 1) - A083894 (n + 1) - A083896 (n + 1)

end

end A083895.P221412163153471434

/-! ## A083895.P7441722474043562723

`Δ[A006218(n)]-(A083902(n+1)+A083896(n+1))`
-/

namespace A083895.P7441722474043562723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A083902 (n + 1) + A083896 (n + 1))

end

end A083895.P7441722474043562723

/-! ## A083895.P7580314968352906291

`A000005(n+1)-(A083902(n+1)+A083896(n+1))`
-/

namespace A083895.P7580314968352906291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A083902 (n + 1) + A083896 (n + 1))

end

end A083895.P7580314968352906291

/-! ## A083895.P15550194050471666200

`A083903(n+1)-(A083901(n+1)+A083894(n+1))`
-/

namespace A083895.P15550194050471666200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083903 (n + 1) - (A083901 (n + 1) + A083894 (n + 1))

end

end A083895.P15550194050471666200

/-! ## A083895.P12646145780464600223

`(A083903(n+1)+A054055(n))%(A083902(n+1)+A054055(n))`
-/

namespace A083895.P12646145780464600223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083903 (n + 1) + A054055 n) (A083902 (n + 1) + A054055 n)

end

end A083895.P12646145780464600223

/-! ## A083895.P452129090328456111

`A083918(n+1)*A166486(A005408(A151542(n)))`
-/

namespace A083895.P452129090328456111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (n + 1) * A166486 (A005408 (A151542 n).toNat).toNat

end

end A083895.P452129090328456111

/-! ## A083895.P5694772911501623459

`A083918(n+1)*A187595(n+1)`
-/

namespace A083895.P5694772911501623459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (n + 1) * A187595 (n + 1)

end

end A083895.P5694772911501623459

/-! ## A083895.P6942782507504161287

`A083918(n+1)%A000664(n)`
-/

namespace A083895.P6942782507504161287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083918 (n + 1)) (A000664 n)

end

end A083895.P6942782507504161287

/-! ## A083895.P6752439218880084078

`and(A037941(n), A083918(n+1))`
-/

namespace A083895.P6752439218880084078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037941 n) (A083918 (n + 1))

end

end A083895.P6752439218880084078

/-!
# A083896: Number of divisors of n with largest digit = 9 (base 10).

The programs for A083896, there is no canonical definition to state claims against.
-/

/-! ## A083896.P13986340684010675739

`A000005(n+1)-A083903(n+1)`
-/

namespace A083896.P13986340684010675739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083903 (n + 1)

end

end A083896.P13986340684010675739

/-! ## A083896.P5323497735961968967

`A000005(n+1)-A083888(n+1)-A083889(n+1)-A083890(n+1)-A083891(n+1)-A083892(n+1)-A083893(n+1)-A083894(n+1)-A083895(n+1)`
-/

namespace A083896.P5323497735961968967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083888 (n + 1) - A083889 (n + 1) - A083890 (n + 1) - A083891 (n + 1) - A083892 (n + 1) - A083893 (n + 1) - A083894 (n + 1) - A083895 (n + 1)

end

end A083896.P5323497735961968967

/-! ## A083896.P6524011979229649439

`Δ[A006218(n)]-A083903(n+1)`
-/

namespace A083896.P6524011979229649439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A083903 (n + 1)

end

end A083896.P6524011979229649439

/-! ## A083896.P303212869208157301

`Δ[A054519(n)]-A083903(n+1)`
-/

namespace A083896.P303212869208157301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A083903 (n + 1)

end

end A083896.P303212869208157301

/-! ## A083896.P15633278612253298189

`A334954(n+1)-(A083903(n+1)+1)`
-/

namespace A083896.P15633278612253298189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - (A083903 (n + 1) + 1)

end

end A083896.P15633278612253298189

/-! ## A083896.P3667489916708969553

`A000005(n+1)-(A083902(n+1)+A083895(n+1))`
-/

namespace A083896.P3667489916708969553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A083902 (n + 1) + A083895 (n + 1))

end

end A083896.P3667489916708969553

/-! ## A083896.P6725253284763450852

`∑{d}[n+1, A102683(#^A102683(#))]`
-/

namespace A083896.P6725253284763450852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A102683 (SequenceMachineLib.roundAway ((d : ℚ) ^ (A102683 d : ℤ))).toNat

end

end A083896.P6725253284763450852

/-!
# A083897: Number of divisors of n with largest digit <= 2 (base 10).

The programs for A083897, there is no canonical definition to state claims against.
-/

/-! ## A083897.P11412251348169373751

`A083888(n+1)+A083889(n+1)`
-/

namespace A083897.P11412251348169373751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (n + 1) + A083889 (n + 1)

end

end A083897.P11412251348169373751

/-! ## A083897.P2686039405191589938

`A083898(n+1)-A083890(n+1)`
-/

namespace A083897.P2686039405191589938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083898 (n + 1) - A083890 (n + 1)

end

end A083897.P2686039405191589938

/-! ## A083897.P10246570325787419705

`A083899(n+1)-(A083891(n+1)+A083890(n+1))`
-/

namespace A083897.P10246570325787419705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083899 (n + 1) - (A083891 (n + 1) + A083890 (n + 1))

end

end A083897.P10246570325787419705

/-! ## A083897.P458190857843850039

`A083899(n+1)-A083891(n+1)-∑{d}[n+1, (4%A054055(#))%2]`
-/

namespace A083897.P458190857843850039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083899 (n + 1) - A083891 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), Int.tmod (Int.tmod 4 (A054055 d)) 2

end

end A083897.P458190857843850039

/-! ## A083897.P9707105100641502474

`A083900(n+1)-(A083892(n+1)+A083891(n+1))-A083890(n+1)`
-/

namespace A083897.P9707105100641502474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083900 (n + 1) - (A083892 (n + 1) + A083891 (n + 1)) - A083890 (n + 1)

end

end A083897.P9707105100641502474

/-! ## A083897.P13004328139369673117

`∑{d}[n+1, A065333(A113581(#))]`
-/

namespace A083897.P13004328139369673117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065333 (A113581 d).toNat

end

end A083897.P13004328139369673117

/-!
# A083898: Number of divisors of n with largest digit <= 3 (base 10).

The programs for A083898, there is no canonical definition to state claims against.
-/

/-! ## A083898.P13391169557865546015

`A083897(n+1)+A083890(n+1)`
-/

namespace A083898.P13391169557865546015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083897 (n + 1) + A083890 (n + 1)

end

end A083898.P13391169557865546015

/-! ## A083898.P963052461304255589

`A083899(n+1)-A083891(n+1)`
-/

namespace A083898.P963052461304255589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083899 (n + 1) - A083891 (n + 1)

end

end A083898.P963052461304255589

/-! ## A083898.P9431046609764483114

`∑{d}[n+1, A000007(A106747(A106747(#)))]`
-/

namespace A083898.P9431046609764483114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (A106747 (A106747 d).toNat).toNat

end

end A083898.P9431046609764483114

/-! ## A083898.P16279463684839961629

`A083888(n+1)+A083889(n+1)+A083890(n+1)`
-/

namespace A083898.P16279463684839961629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (n + 1) + A083889 (n + 1) + A083890 (n + 1)

end

end A083898.P16279463684839961629

/-! ## A083898.P12909818444552106142

`A083900(n+1)-(A083892(n+1)+A083891(n+1))`
-/

namespace A083898.P12909818444552106142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083900 (n + 1) - (A083892 (n + 1) + A083891 (n + 1))

end

end A083898.P12909818444552106142

/-! ## A083898.P10153780351422936443

`A083890(n+1)+∑{d}[n+1, A065333(A113581(#))]`
-/

namespace A083898.P10153780351422936443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083890 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A065333 (A113581 d).toNat

end

end A083898.P10153780351422936443

/-! ## A083898.P10625381065452563480

`∑{d}[n+1, (4%A054055(#))%2]+∑{d}[n+1, A065333(A113581(#))]`
-/

namespace A083898.P10625381065452563480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (Int.tmod 4 (A054055 d)) 2 + ∑ d ∈ Nat.divisors (f2 n), A065333 (A113581 d).toNat

end

end A083898.P10625381065452563480

/-!
# A083899: Number of divisors of n with largest digit <= 4 (base 10).

The programs for A083899, the canonical program `A083899.P5886603955733939361` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083899 has offset 1).

The definition of A083899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083899.P10775660075037365030

`A083898(n+1)+A083891(n+1)`
-/

namespace A083899.P10775660075037365030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083898 (n + 1) + A083891 (n + 1)

end

end A083899.P10775660075037365030

namespace A083899

/-- `A083898(n+1)+A083891(n+1)` -/
def P10775660075037365030.Spec : Prop :=
  ∀ n, P10775660075037365030.a n = A083899 (n + 1)

end A083899

/-! ## A083899.P7699369719334127097

`A083900(n+1)-A083892(n+1)`
-/

namespace A083899.P7699369719334127097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083900 (n + 1) - A083892 (n + 1)

end

end A083899.P7699369719334127097

namespace A083899

/-- `A083900(n+1)-A083892(n+1)` -/
def P7699369719334127097.Spec : Prop :=
  ∀ n, P7699369719334127097.a n = A083899 (n + 1)

end A083899

/-! ## A083899.P9312285368964771255

`A083900(n+1)-∑{d}[n+1, val(A054055(#), 5)]`
-/

namespace A083899.P9312285368964771255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083900 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A054055 d).toNat 5 : ℕ) : ℤ)

end

end A083899.P9312285368964771255

namespace A083899

/-- `A083900(n+1)-∑{d}[n+1, val(A054055(#), 5)]` -/
def P9312285368964771255.Spec : Prop :=
  ∀ n, P9312285368964771255.a n = A083899 (n + 1)

end A083899

/-! ## A083899.P5562696595040594345

`A083890(n+1)+A083897(n+1)+A083891(n+1)`
-/

namespace A083899.P5562696595040594345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083890 (n + 1) + (A083897 (n + 1) + A083891 (n + 1))

end

end A083899.P5562696595040594345

namespace A083899

/-- `A083890(n+1)+A083897(n+1)+A083891(n+1)` -/
def P5562696595040594345.Spec : Prop :=
  ∀ n, P5562696595040594345.a n = A083899 (n + 1)

end A083899

/-! ## A083899.P4366409054200817432

`A083901(n+1)-(A083893(n+1)+A083892(n+1))`
-/

namespace A083899.P4366409054200817432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083901 (n + 1) - (A083893 (n + 1) + A083892 (n + 1))

end

end A083899.P4366409054200817432

namespace A083899

/-- `A083901(n+1)-(A083893(n+1)+A083892(n+1))` -/
def P4366409054200817432.Spec : Prop :=
  ∀ n, P4366409054200817432.a n = A083899 (n + 1)

end A083899

/-! ## A083899.P18431451737993694300

`A083888(n+1)+A083889(n+1)+A083890(n+1)+A083891(n+1)`
-/

namespace A083899.P18431451737993694300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (n + 1) + A083889 (n + 1) + A083890 (n + 1) + A083891 (n + 1)

end

end A083899.P18431451737993694300

namespace A083899

/-- `A083888(n+1)+A083889(n+1)+A083890(n+1)+A083891(n+1)` -/
def P18431451737993694300.Spec : Prop :=
  ∀ n, P18431451737993694300.a n = A083899 (n + 1)

end A083899

/-! ## A083899.P5886603955733939361

`∑{d}[2*(n+1), A000035(A089898(#))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A083899

/-- `∑{d}[2*(n+1), A000035(A089898(#))]` -/
def P5886603955733939361.Spec : Prop :=
  ∀ n, P5886603955733939361.a n = A083899 (n + 1)

theorem P5886603955733939361.correct : P5886603955733939361.Spec := by
  intro n
  simp only [A083899, Nat.add_sub_cancel]

end A083899

