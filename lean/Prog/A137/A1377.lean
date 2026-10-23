import SequenceMachineLib
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B001.C010
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

/-!
# A137700: Smallest k such that the k-th prime has exactly n distinct representations as arithmetic mean of two primes.

The programs for A137700, there is no canonical definition to state claims against.
-/

/-! ## A137700.P14561727880493592219

`A000720(A126204(n))`
-/

namespace A137700.P14561727880493592219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A126204 n).toNat

end

end A137700.P14561727880493592219

/-! ## A137700.P2826364363108048371

`A003963(p?[A126204(n)])`
-/

namespace A137700.P2826364363108048371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137700.P2826364363108048371

/-! ## A137700.P11418752433260765346

`A026233(p?[A126204(n)])`
-/

namespace A137700.P11418752433260765346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137700.P11418752433260765346

/-! ## A137700.P18342546984984242156

`A026238(p?[A126204(n)])`
-/

namespace A137700.P18342546984984242156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137700.P18342546984984242156

/-! ## A137700.P3187791375474095407

`A049084(p?[A126204(n)])`
-/

namespace A137700.P3187791375474095407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137700.P3187791375474095407

/-! ## A137700.P11352268598565822851

`A055396(p?[A126204(n)])`
-/

namespace A137700.P11352268598565822851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137700.P11352268598565822851

/-! ## A137700.P10469498678379343331

`A003963(p?[A298990(n)])`
-/

namespace A137700.P10469498678379343331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137700.P10469498678379343331

/-! ## A137700.P8252149811872897552

`A003963(2*A126204(n))`
-/

namespace A137700.P8252149811872897552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A126204 n).toNat

end

end A137700.P8252149811872897552

/-! ## A137700.P8328594217216093221

`A003963(lcm(2, A126204(n)))`
-/

namespace A137700.P8328594217216093221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A126204 n))

end

end A137700.P8328594217216093221

/-! ## A137700.P8678414084289471082

`A003963(∑{p}[A126204(n), #])`
-/

namespace A137700.P8678414084289471082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A137700.P8678414084289471082

/-!
# A137701: a(n) = semiprime(n)^prime(n).

The programs for A137701, the canonical program `A137701.P10060172822738660491` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137701 has offset 1).

The definition of A137701 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001358, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A137701.P10060172822738660491

`A001358(n+1)^A000040(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A137701

/-- `A001358(n+1)^A000040(n+1)` -/
def P10060172822738660491.Spec : Prop :=
  ∀ n, P10060172822738660491.a n = (A137701 (n + 1) : ℚ)

end A137701

/-! ## A137701.P5608822349986331744

`A108764(n+1)^A000040(n+1)`
-/

namespace A137701.P5608822349986331744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108764 (n + 1) : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A137701.P5608822349986331744

namespace A137701

/-- `A108764(n+1)^A000040(n+1)` -/
def P5608822349986331744.Spec : Prop :=
  ∀ n, P5608822349986331744.a n = (A137701 (n + 1) : ℚ)

end A137701

/-! ## A137701.P3534674374881539742

`A001358(n+1)^(A008864(n+1)-1)`
-/

namespace A137701.P3534674374881539742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001358 (n + 1) : ℚ) ^ (A008864 (n + 1) - 1 : ℤ)

end

end A137701.P3534674374881539742

namespace A137701

/-- `A001358(n+1)^(A008864(n+1)-1)` -/
def P3534674374881539742.Spec : Prop :=
  ∀ n, P3534674374881539742.a n = (A137701 (n + 1) : ℚ)

end A137701

/-! ## A137701.P16855643793118121968

`(eq[2, A001222(n+1)]+1)^A000040(n+1)`
-/

namespace A137701.P16855643793118121968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A137701.P16855643793118121968

namespace A137701

/-- `(eq[2, A001222(n+1)]+1)^A000040(n+1)` -/
def P16855643793118121968.Spec : Prop :=
  ∀ n, P16855643793118121968.a n = (A137701 (n + 1) : ℚ)

end A137701

/-! ## A137701.P3423640820666828969

`(eq[2, A001222(n+1)]+1)^record[A006530(n+2)]`
-/

namespace A137701.P3423640820666828969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) ^ (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) : ℤ)

end

end A137701.P3423640820666828969

namespace A137701

/-- `(eq[2, A001222(n+1)]+1)^record[A006530(n+2)]` -/
def P3423640820666828969.Spec : Prop :=
  ∀ n, P3423640820666828969.a n = (A137701 (n + 1) : ℚ)

end A137701

/-!
# A137702: Prime numbers p such that p +- ((p-1)/2) are primes.

The programs for A137702, there is no canonical definition to state claims against.
-/

/-! ## A137702.P16692196731610796897

`2*A174734(n+1)-1`
-/

namespace A137702.P16692196731610796897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174734 (n + 1) - 1

end

end A137702.P16692196731610796897

/-! ## A137702.P17091198052596098452

`4*A124408(n+1)+1`
-/

namespace A137702.P17091198052596098452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A124408 (n + 1) + 1

end

end A137702.P17091198052596098452

/-! ## A137702.P11018213107015757904

`4*A105652(n+1)+5`
-/

namespace A137702.P11018213107015757904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A105652 (n + 1) + 5

end

end A137702.P11018213107015757904

/-! ## A137702.P14317171848666086267

`A124408(n+1)+A174734(n+1)+A124408(n+1)`
-/

namespace A137702.P14317171848666086267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124408 (n + 1) + (A174734 (n + 1) + A124408 (n + 1))

end

end A137702.P14317171848666086267

/-! ## A137702.P8690367698641938946

`A174734(n+1)+A174734(n+1)-A160467(A087688(n+1))`
-/

namespace A137702.P8690367698641938946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174734 (n + 1) + (A174734 (n + 1) - A160467 (A087688 (n + 1)).toNat)

end

end A137702.P8690367698641938946

/-! ## A137702.P13643367597661952722

`∩[A005383(n+1), A158708(n+1)]`
-/

namespace A137702.P13643367597661952722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137702.P13643367597661952722

/-! ## A137702.P11202523541981928527

`∩[A048968(n+1), A158708(n+1)]`
-/

namespace A137702.P11202523541981928527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137702.P11202523541981928527

/-! ## A137702.P18220145126239341421

`∩[A057920(n+1), A158708(n+1)]`
-/

namespace A137702.P18220145126239341421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137702.P18220145126239341421

/-! ## A137702.P4008649985788496559

`∩[A064519(n+1), A158708(n+1)]`
-/

namespace A137702.P4008649985788496559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137702.P4008649985788496559

/-! ## A137702.P802909556592321757

`∩[A137815(n+1), A158708(n+1)]`
-/

namespace A137702.P802909556592321757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137702.P802909556592321757

/-! ## A137702.P4179503032923302613

`∩[A158708(n+1), A171262(n+1)]`
-/

namespace A137702.P4179503032923302613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137702.P4179503032923302613

/-! ## A137702.P6841383835306059552

`∩[A158708(n+1), A192577(n+1)]`
-/

namespace A137702.P6841383835306059552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137702.P6841383835306059552

/-! ## A137702.P13570681957421613133

`∩[A158708(n+1), A348659(n+1)]`
-/

namespace A137702.P13570681957421613133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137702.P13570681957421613133

/-! ## A137702.P5173144025807242631

`∩[A158708(n+1), A164977(n+1)]`
-/

namespace A137702.P5173144025807242631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137702.P5173144025807242631

/-! ## A137702.P6800208702502582566

`∩[A158708(n+1), A350593(n+1)]`
-/

namespace A137702.P6800208702502582566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137702.P6800208702502582566

/-! ## A137702.P4030355204405877840

`p?[2*A088878(n+1)-1]`
-/

namespace A137702.P4030355204405877840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088878 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137702.P4030355204405877840

/-! ## A137702.P17417614453217715059

`p?[A091180(n+1)+1-A088878(n+1)]`
-/

namespace A137702.P17417614453217715059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1) + (1 - A088878 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137702.P17417614453217715059

/-! ## A137702.P13074798211857702314

`∩[A005383(n+1), A114439(n+1)]`
-/

namespace A137702.P13074798211857702314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137702.P13074798211857702314

/-! ## A137702.P15881829326064898941

`∩[A057920(n+1), A114439(n+1)]`
-/

namespace A137702.P15881829326064898941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137702.P15881829326064898941

/-!
# A137703: Prime numbers p such that p +- ((p-1)/3) are primes.

The programs for A137703, the canonical program `A137703.P1566757346453632288` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137703 has offset 1).

The definition of A137703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137703.P16915816849297703193

`p?[6*A320599(n+1)+1]`
-/

namespace A137703.P16915816849297703193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A320599 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137703.P16915816849297703193

namespace A137703

/-- `p?[6*A320599(n+1)+1]` -/
def P16915816849297703193.Spec : Prop :=
  ∀ n, P16915816849297703193.a n = A137703 (n + 1)

end A137703

/-! ## A137703.P1566757346453632288

`p?[A005382(n+1)²%A005383(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A137703

/-- `p?[A005382(n+1)²%A005383(n+1)]` -/
def P1566757346453632288.Spec : Prop :=
  ∀ n, P1566757346453632288.a n = A137703 (n + 1)

theorem P1566757346453632288.correct : P1566757346453632288.Spec := by
  intro n
  simp only [A137703, Nat.add_sub_cancel]

end A137703

/-! ## A137703.P3809289230827913658

`p?[A014682(A005382(n+1))-1]`
-/

namespace A137703.P3809289230827913658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A005382 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137703.P3809289230827913658

namespace A137703

/-- `p?[A014682(A005382(n+1))-1]` -/
def P3809289230827913658.Spec : Prop :=
  ∀ n, P3809289230827913658.a n = A137703 (n + 1)

end A137703

/-! ## A137703.P17161368511723230306

`p?[A123998(n+1)+A070846(A123998(n+1))]`
-/

namespace A137703.P17161368511723230306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123998 (n + 1) + A070846 (A123998 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137703.P17161368511723230306

namespace A137703

/-- `p?[A123998(n+1)+A070846(A123998(n+1))]` -/
def P17161368511723230306.Spec : Prop :=
  ∀ n, P17161368511723230306.a n = A137703 (n + 1)

end A137703

/-! ## A137703.P5570521601414977299

`p?[A162939(A137288(n+1))-1]`
-/

namespace A137703.P5570521601414977299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162939 (A137288 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137703.P5570521601414977299

namespace A137703

/-- `p?[A162939(A137288(n+1))-1]` -/
def P5570521601414977299.Spec : Prop :=
  ∀ n, P5570521601414977299.a n = A137703 (n + 1)

end A137703

/-!
# A137704: Hankel transform of aerated factorial numbers.

The programs for A137704, there is no canonical definition to state claims against.
-/

/-! ## A137704.P13182755513480980022

`∏[∏[floor(cosh(log(n+1)))]]`
-/

namespace A137704.P13182755513480980022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (n + 1 : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A137704.P13182755513480980022

/-! ## A137704.P1952947967055668633

`∏[∏[round(1/acot(n/2))]]`
-/

namespace A137704.P1952947967055668633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot ((n : ℚ) / 2 : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A137704.P1952947967055668633

/-! ## A137704.P15177697288417194639

`∏[∏[n-a(n-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A137704.P15177697288417194639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A137704.P15177697288417194639

/-! ## A137704.P13020955550123964668

`∏[∏[∑[char[2*n+3]]+1]]`
-/

namespace A137704.P13020955550123964668
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A137704.P13020955550123964668

/-! ## A137704.P6563340610258690035

`abs(∏[-A010551(n)])`
-/

namespace A137704.P6563340610258690035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A137704.P6563340610258690035

/-!
# A137706: Smallest number at which a new Haar graph is encountered.

The programs for A137706, there is no canonical definition to state claims against.
-/

/-! ## A137706.P15280229423761351460

`record[A357004(n+1)]`
-/

namespace A137706.P15280229423761351460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137706.P15280229423761351460

/-! ## A137706.P11533216350596940737

`eq[n, A357004(A028310(n))]`
-/

namespace A137706.P11533216350596940737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357004 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137706.P11533216350596940737

/-! ## A137706.P16388866765458475328

`A357004(lt[n, A357004(n+1)]+1)`
-/

namespace A137706.P16388866765458475328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A137706.P16388866765458475328

/-! ## A137706.P5951311779550535484

`eq[A000027(n+1), A357004(n+1)]+1`
-/

namespace A137706.P5951311779550535484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A137706.P5951311779550535484

/-!
# A137708: Secondary Lower Wythoff Sequence.

The programs for A137708, the canonical program `A137708.P13865260195128569444` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137708 has offset 1).

The definition of A137708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137708.P7519346322651304945

`∩[floor(ϕ*(n+1)), floor(ϕ*(n+2))-3]-ceil(n/2)`
-/

namespace A137708.P7519346322651304945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ)⌋ - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - ⌈(n : ℚ) / 2⌉

end

end A137708.P7519346322651304945

namespace A137708

/-- `∩[floor(ϕ*(n+1)), floor(ϕ*(n+2))-3]-ceil(n/2)` -/
def P7519346322651304945.Spec : Prop :=
  ∀ n, P7519346322651304945.a n = A137708 (n + 1)

end A137708

/-! ## A137708.P13865260195128569444

`floor(A187952(n+1)-n/2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A137708

/-- `floor(A187952(n+1)-n/2)` -/
def P13865260195128569444.Spec : Prop :=
  ∀ n, P13865260195128569444.a n = A137708 (n + 1)

theorem P13865260195128569444.correct : P13865260195128569444.Spec := by
  intro n
  simp only [A137708, Nat.add_sub_cancel]

end A137708

/-! ## A137708.P14954469586570184552

`2*A187485(n+1)-(n+1)`
-/

namespace A137708.P14954469586570184552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187485 (n + 1) - (n + 1 : ℤ)

end

end A137708.P14954469586570184552

namespace A137708

/-- `2*A187485(n+1)-(n+1)` -/
def P14954469586570184552.Spec : Prop :=
  ∀ n, P14954469586570184552.a n = A137708 (n + 1)

end A137708

/-! ## A137708.P1430301770992046279

`A187952(n+1)-A110654(n)`
-/

namespace A137708.P1430301770992046279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1) - A110654 n

end

end A137708.P1430301770992046279

namespace A137708

/-- `A187952(n+1)-A110654(n)` -/
def P1430301770992046279.Spec : Prop :=
  ∀ n, P1430301770992046279.a n = A137708 (n + 1)

end A137708

/-! ## A137708.P16993520955987762364

`A187952(n+1)+1-A080513(n)`
-/

namespace A137708.P16993520955987762364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1) + (1 - A080513 n)

end

end A137708.P16993520955987762364

namespace A137708

/-- `A187952(n+1)+1-A080513(n)` -/
def P16993520955987762364.Spec : Prop :=
  ∀ n, P16993520955987762364.a n = A137708 (n + 1)

end A137708

/-! ## A137708.P3916434079722803700

`∪[A075317(n+1), A283233(n+1)]`
-/

namespace A137708.P3916434079722803700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137708.P3916434079722803700

namespace A137708

/-- `∪[A075317(n+1), A283233(n+1)]` -/
def P3916434079722803700.Spec : Prop :=
  ∀ n, (P3916434079722803700.a n : ℤ) = A137708 (n + 1)

end A137708

/-! ## A137708.P9095061232291086461

`eq[1, A214211(n)]+1`
-/

namespace A137708.P9095061232291086461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214211 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137708.P9095061232291086461

namespace A137708

/-- `eq[1, A214211(n)]+1` -/
def P9095061232291086461.Spec : Prop :=
  ∀ n, (P9095061232291086461.a n : ℤ) = A137708 (n + 1)

end A137708

/-! ## A137708.P1703424104325270214

`A199536(n+2)-(n+3)`
-/

namespace A137708.P1703424104325270214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199536 (n + 2) - (n + 3 : ℤ)

end

end A137708.P1703424104325270214

namespace A137708

/-- `A199536(n+2)-(n+3)` -/
def P1703424104325270214.Spec : Prop :=
  ∀ n, P1703424104325270214.a n = A137708 (n + 1)

end A137708

/-! ## A137708.P2532307202611332064

`A163801(A163801(n)+2*n+1)`
-/

namespace A137708.P2532307202611332064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163801 (A163801 n + (2 * n + 1 : ℤ)).toNat

end

end A137708.P2532307202611332064

namespace A137708

/-- `A163801(A163801(n)+2*n+1)` -/
def P2532307202611332064.Spec : Prop :=
  ∀ n, P2532307202611332064.a n = A137708 (n + 1)

end A137708

/-! ## A137708.P2893718658736857304

`A187580(A187581(n+1))-A187581(n+1)`
-/

namespace A137708.P2893718658736857304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187580 (A187581 (n + 1)).toNat - A187581 (n + 1)

end

end A137708.P2893718658736857304

namespace A137708

/-- `A187580(A187581(n+1))-A187581(n+1)` -/
def P2893718658736857304.Spec : Prop :=
  ∀ n, P2893718658736857304.a n = A137708 (n + 1)

end A137708

/-! ## A137708.P15544830571715435790

`record[A022290(n)+A022290(A109613(n))]`
-/

namespace A137708.P15544830571715435790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 n + A022290 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137708.P15544830571715435790

namespace A137708

/-- `record[A022290(n)+A022290(A109613(n))]` -/
def P15544830571715435790.Spec : Prop :=
  ∀ n, P15544830571715435790.a n = A137708 (n + 1)

end A137708

/-! ## A137708.P8399258838501704742

`∑[A095346(n+1)]-2`
-/

namespace A137708.P8399258838501704742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A137708.P8399258838501704742

namespace A137708

/-- `∑[A095346(n+1)]-2` -/
def P8399258838501704742.Spec : Prop :=
  ∀ n, P8399258838501704742.a n = A137708 (n + 1)

end A137708

/-! ## A137708.P11463322315365211718

`∑[A095345(n+2)]`
-/

namespace A137708.P11463322315365211718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095345 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137708.P11463322315365211718

namespace A137708

/-- `∑[A095345(n+2)]` -/
def P11463322315365211718.Spec : Prop :=
  ∀ n, P11463322315365211718.a n = A137708 (n + 1)

end A137708

/-!
# A137709: Secondary upper Wythoff sequence.

The programs for A137709, the canonical program `A137709.P10048687972345600020` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137709 has offset 1).

The definition of A137709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137709.P14008312283962105512

`xor(1, 2*floor(∑[ϕ^((1-n)%2)])+n)`
-/

namespace A137709.P14008312283962105512
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (Int.tmod (1 - (n : ℤ)) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + (n : ℤ))

end

end A137709.P14008312283962105512

namespace A137709

/-- `xor(1, 2*floor(∑[ϕ^((1-n)%2)])+n)` -/
def P14008312283962105512.Spec : Prop :=
  ∀ n, P14008312283962105512.a n = A137709 (n + 1)

end A137709

/-! ## A137709.P4167506394036171763

`xor(1, 2*ceil(∑[ϕ/a(n-1)]/ϕ)+n)` with `a(0)=1`
-/

namespace A137709.P4167506394036171763
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.goldenRatio / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ⌈(∑ j ∈ Finset.range (n + 1), f1 j) / Real.goldenRatio⌉ + (n : ℤ))

end

end A137709.P4167506394036171763

namespace A137709

/-- `xor(1, 2*ceil(∑[ϕ/a(n-1)]/ϕ)+n)` -/
def P4167506394036171763.Spec : Prop :=
  ∀ n, P4167506394036171763.a n = A137709 (n + 1)

end A137709

/-! ## A137709.P3517152734571635531

`2*floor(∑[ϕ-a(n-1)]+ϕ)+n-1` with `a(0)=1, a(1)=0`
-/

namespace A137709.P3517152734571635531
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Real.goldenRatio - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊∑ j ∈ Finset.range (n + 1), f1 j + Real.goldenRatio⌋ + (n : ℤ) - 1

end

end A137709.P3517152734571635531

namespace A137709

/-- `2*floor(∑[ϕ-a(n-1)]+ϕ)+n-1` -/
def P3517152734571635531.Spec : Prop :=
  ∀ n, P3517152734571635531.a n = A137709 (n + 1)

end A137709

/-! ## A137709.P13086958966866760932

`comp[∪[2*floor(ϕ*n)-1, 2*floor(ϕ*n)]+1]-1`
-/

namespace A137709.P13086958966866760932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.goldenRatio * (n : ℝ)⌋ - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1

end

end A137709.P13086958966866760932

namespace A137709

/-- `comp[∪[2*floor(ϕ*n)-1, 2*floor(ϕ*n)]+1]-1` -/
def P13086958966866760932.Spec : Prop :=
  ∀ n, P13086958966866760932.a n = A137709 (n + 1)

end A137709

/-! ## A137709.P13571224416295985643

`(-1)^n+2*ceil(∑[ϕ/a(n-1)]/ϕ)+n` with `a(0)=1`
-/

namespace A137709.P13571224416295985643
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.goldenRatio / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + (2 * ⌈(∑ j ∈ Finset.range (n + 1), f1 j) / Real.goldenRatio⌉ + (n : ℤ))

end

end A137709.P13571224416295985643

namespace A137709

/-- `(-1)^n+2*ceil(∑[ϕ/a(n-1)]/ϕ)+n` -/
def P13571224416295985643.Spec : Prop :=
  ∀ n, P13571224416295985643.a n = A137709 (n + 1)

end A137709

/-! ## A137709.P14717200487879323188

`xor(1, A187581(n+1))`
-/

namespace A137709.P14717200487879323188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A187581 (n + 1))

end

end A137709.P14717200487879323188

namespace A137709

/-- `xor(1, A187581(n+1))` -/
def P14717200487879323188.Spec : Prop :=
  ∀ n, P14717200487879323188.a n = A137709 (n + 1)

end A137709

/-! ## A137709.P10048687972345600020

`2*A287775(n+1)-(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A137709

/-- `2*A287775(n+1)-(n+1)` -/
def P10048687972345600020.Spec : Prop :=
  ∀ n, P10048687972345600020.a n = A137709 (n + 1)

theorem P10048687972345600020.correct : P10048687972345600020.Spec := by
  intro n
  simp only [A137709, Nat.add_sub_cancel]

end A137709

/-! ## A137709.P2269946464041602361

`A187581(n+1)+A033999(n)`
-/

namespace A137709.P2269946464041602361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187581 (n + 1) + A033999 n

end

end A137709.P2269946464041602361

namespace A137709

/-- `A187581(n+1)+A033999(n)` -/
def P2269946464041602361.Spec : Prop :=
  ∀ n, P2269946464041602361.a n = A137709 (n + 1)

end A137709

/-! ## A137709.P8751674235671173441

`A137708(n+1)+2*A008619(n)`
-/

namespace A137709.P8751674235671173441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137708 (n + 1) + 2 * A008619 n

end

end A137709.P8751674235671173441

namespace A137709

/-- `A137708(n+1)+2*A008619(n)` -/
def P8751674235671173441.Spec : Prop :=
  ∀ n, P8751674235671173441.a n = A137709 (n + 1)

end A137709

/-! ## A137709.P13999214781232447744

`∪[A075318(n+1), A283234(n+1)]`
-/

namespace A137709.P13999214781232447744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137709.P13999214781232447744

namespace A137709

/-- `∪[A075318(n+1), A283234(n+1)]` -/
def P13999214781232447744.Spec : Prop :=
  ∀ n, (P13999214781232447744.a n : ℤ) = A137709 (n + 1)

end A137709

/-! ## A137709.P8447478658864713360

`A187581(n+1)+A004442(n)-n`
-/

namespace A137709.P8447478658864713360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187581 (n + 1) + (A004442 n - (n : ℤ))

end

end A137709.P8447478658864713360

namespace A137709

/-- `A187581(n+1)+A004442(n)-n` -/
def P8447478658864713360.Spec : Prop :=
  ∀ n, P8447478658864713360.a n = A137709 (n + 1)

end A137709

/-! ## A137709.P2160379369270521780

`A003622(A307295(n))-A307294(n)`
-/

namespace A137709.P2160379369270521780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A307295 n).toNat - A307294 n

end

end A137709.P2160379369270521780

namespace A137709

/-- `A003622(A307295(n))-A307294(n)` -/
def P2160379369270521780.Spec : Prop :=
  ∀ n, P2160379369270521780.a n = A137709 (n + 1)

end A137709

/-! ## A137709.P4644674696633357181

`A137708(A137708(n+1))+2`
-/

namespace A137709.P4644674696633357181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137708 (A137708 (n + 1)).toNat + 2

end

end A137709.P4644674696633357181

namespace A137709

/-- `A137708(A137708(n+1))+2` -/
def P4644674696633357181.Spec : Prop :=
  ∀ n, P4644674696633357181.a n = A137709 (n + 1)

end A137709

/-! ## A137709.P9757072555093511970

`lt[1, A214211(n)]+1`
-/

namespace A137709.P9757072555093511970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214211 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A137709.P9757072555093511970

namespace A137709

/-- `lt[1, A214211(n)]+1` -/
def P9757072555093511970.Spec : Prop :=
  ∀ n, (P9757072555093511970.a n : ℤ) = A137709 (n + 1)

end A137709

/-! ## A137709.P17295102379454381007

`eq[2, A214211(n+1)]+2`
-/

namespace A137709.P17295102379454381007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214211 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A137709.P17295102379454381007

namespace A137709

/-- `eq[2, A214211(n+1)]+2` -/
def P17295102379454381007.Spec : Prop :=
  ∀ n, (P17295102379454381007.a n : ℤ) = A137709 (n + 1)

end A137709

/-! ## A137709.P3463127239620687752

`eq[0, Δ[n+1-a(a(n-2))]]` with `a(0)=1, a(1)=2`
-/

namespace A137709.P3463127239620687752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  (n + 1 : ℤ) - f3 (f3 (n - 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137709.P3463127239620687752

namespace A137709

/-- `eq[0, Δ[n+1-a(a(n-2))]]` -/
def P3463127239620687752.Spec : Prop :=
  ∀ n, (P3463127239620687752.a n : ℤ) = A137709 (n + 1)

end A137709

/-! ## A137709.P13018631528901797993

`A004442(A187581(n+1))`
-/

namespace A137709.P13018631528901797993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A187581 (n + 1)).toNat

end

end A137709.P13018631528901797993

namespace A137709

/-- `A004442(A187581(n+1))` -/
def P13018631528901797993.Spec : Prop :=
  ∀ n, P13018631528901797993.a n = A137709 (n + 1)

end A137709

/-!
# A137710: Triangle read by rows: T(n,k) = T(n-1, k-1) - T(n-k, k-1) for k > 1 with T(n,1) = 2^(n-1).

The programs for A137710, there is no canonical definition to state claims against.
-/

/-! ## A137710.P11463285777196137999

`A187816(A204206(n+1))`
-/

namespace A137710.P11463285777196137999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187816 (A204206 (n + 1)).toNat

end

end A137710.P11463285777196137999

/-! ## A137710.P9328177984316854430

`gcd(A068009(n), A309599(A054714(n+1)))`
-/

namespace A137710.P9328177984316854430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068009 n) (A309599 (A054714 (n + 1)).toNat)

end

end A137710.P9328177984316854430

/-! ## A137710.P14614053291011301636

`A068009(n)-A188300(A259862(2*n+5))`
-/

namespace A137710.P14614053291011301636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 n - A188300 (A259862 (2 * n + 5)).toNat

end

end A137710.P14614053291011301636

/-! ## A137710.P8645175569670968650

`A063511(A176088(n))`
-/

namespace A137710.P8645175569670968650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063511 (A176088 n).toNat

end

end A137710.P8645175569670968650

/-! ## A137710.P13223118754790046866

`A173933(A143983(n+1))`
-/

namespace A137710.P13223118754790046866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173933 (A143983 (n + 1)).toNat

end

end A137710.P13223118754790046866

/-!
# A137711: Row sums of triangle A137710.

The programs for A137711, the canonical program `A137711.P17738351747178437954` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137711 has offset 1).

The definition of A137711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137711.P17738351747178437954

`2^(n+1)-A152537(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A137711

/-- `2^(n+1)-A152537(n+1)` -/
def P17738351747178437954.Spec : Prop :=
  ∀ n, P17738351747178437954.a n = A137711 (n + 1)

theorem P17738351747178437954.correct : P17738351747178437954.Spec := by
  intro n
  simp only [A137711, Nat.add_sub_cancel]

end A137711

/-! ## A137711.P7200823084850054338

`2*a(n-1)-A010815(n+1)` with `a(0)=1`
-/

namespace A137711.P7200823084850054338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A010815 (n + 1)

end

end A137711.P7200823084850054338

namespace A137711

/-- `2*a(n-1)-A010815(n+1)` -/
def P7200823084850054338.Spec : Prop :=
  ∀ n, P7200823084850054338.a n = A137711 (n + 1)

end A137711

/-! ## A137711.P3191142195618810156

`∑[2*a(n-1)-Δ[A010815(n)]]` with `a(0)=1`
-/

namespace A137711.P3191142195618810156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137711.P3191142195618810156

namespace A137711

/-- `∑[2*a(n-1)-Δ[A010815(n)]]` -/
def P3191142195618810156.Spec : Prop :=
  ∀ n, P3191142195618810156.a n = A137711 (n + 1)

end A137711

/-! ## A137711.P18171456872194942270

`A194640(A397439(n))`
-/

namespace A137711.P18171456872194942270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A397439 n).toNat

end

end A137711.P18171456872194942270

namespace A137711

/-- `A194640(A397439(n))` -/
def P18171456872194942270.Spec : Prop :=
  ∀ n, P18171456872194942270.a n = A137711 (n + 1)

end A137711

/-! ## A137711.P15456711315514755336

`A008617(A118255(n+1)+A118255(n+5))`
-/

namespace A137711.P15456711315514755336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A118255 (n + 1) + A118255 (n + 5)).toNat

end

end A137711.P15456711315514755336

namespace A137711

/-- `A008617(A118255(n+1)+A118255(n+5))` -/
def P15456711315514755336.Spec : Prop :=
  ∀ n, P15456711315514755336.a n = A137711 (n + 1)

end A137711

/-!
# A137712: Triangle read by rows: T(n,k) = T(n-1, k-1) - T(n-k, k-1); with left border = the Fibonacci sequence.

The programs for A137712, there is no canonical definition to state claims against.
-/

/-! ## A137712.P18148149037632128332

`A319951(floor(ratio[A046802(n)]))`
-/

namespace A137712.P18148149037632128332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋.toNat

end

end A137712.P18148149037632128332

/-! ## A137712.P1438298763426578671

`A381524(A182931(n+1))`
-/

namespace A137712.P1438298763426578671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381524 (A182931 (n + 1)).toNat

end

end A137712.P1438298763426578671

/-! ## A137712.P2477523848560759910

`A303399(3^A026794(n+1))`
-/

namespace A137712.P2477523848560759910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303399 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A026794 (n + 1) : ℤ))).toNat

end

end A137712.P2477523848560759910

/-! ## A137712.P1805559475526263917

`A353824(A026794(n+1)%A358524(2*n+5))`
-/

namespace A137712.P1805559475526263917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353824 (Int.tmod (A026794 (n + 1)) (A358524 (2 * n + 5))).toNat

end

end A137712.P1805559475526263917

/-!
# A137713: Row sums of triangle A137712.

The programs for A137713, the canonical program `A137713.P10408986335505349566` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137713 has offset 1).

The definition of A137713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137713.P10408986335505349566

`a(n-1)+a(n-2)-A010815(n+1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A137713

/-- `a(n-1)+a(n-2)-A010815(n+1)` -/
def P10408986335505349566.Spec : Prop :=
  ∀ n, P10408986335505349566.a n = A137713 (n + 1)

theorem P10408986335505349566.correct : P10408986335505349566.Spec := by
  intro n
  simp only [A137713, Nat.add_sub_cancel]

end A137713

/-! ## A137713.P13540357254030379981

`A000045(n+2)-A137712(A109613(∑[4*(n+1)]))`
-/

namespace A137713.P13540357254030379981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A137712 (A109613 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A137713.P13540357254030379981

namespace A137713

/-- `A000045(n+2)-A137712(A109613(∑[4*(n+1)]))` -/
def P13540357254030379981.Spec : Prop :=
  ∀ n, P13540357254030379981.a n = A137713 (n + 1)

end A137713

/-! ## A137713.P12832046864780472890

`A067731(A057592(n))`
-/

namespace A137713.P12832046864780472890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067731 (A057592 n).toNat

end

end A137713.P12832046864780472890

namespace A137713

/-- `A067731(A057592(n))` -/
def P12832046864780472890.Spec : Prop :=
  ∀ n, P12832046864780472890.a n = A137713 (n + 1)

end A137713

/-! ## A137713.P11313193926298916331

`A172471(A222380(n+3))`
-/

namespace A137713.P11313193926298916331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A222380 (n + 3)).toNat

end

end A137713.P11313193926298916331

namespace A137713

/-- `A172471(A222380(n+3))` -/
def P11313193926298916331.Spec : Prop :=
  ∀ n, P11313193926298916331.a n = A137713 (n + 1)

end A137713

/-! ## A137713.P18310370191306198995

`A002024(or(1, A208176(n)))`
-/

namespace A137713.P18310370191306198995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.lor 1 (A208176 n)).toNat

end

end A137713.P18310370191306198995

namespace A137713

/-- `A002024(or(1, A208176(n)))` -/
def P18310370191306198995.Spec : Prop :=
  ∀ n, P18310370191306198995.a n = A137713 (n + 1)

end A137713

/-!
# A137714: Prime numbers p such that p +- ((p-1)/5) are primes.

The programs for A137714, the canonical program `A137714.P5842750326419721295` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137714 has offset 1).

The definition of A137714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137714.P5842750326419721295

`p?[A104163(n+1)-A255607(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A137714

/-- `p?[A104163(n+1)-A255607(n+1)]` -/
def P5842750326419721295.Spec : Prop :=
  ∀ n, P5842750326419721295.a n = A137714 (n + 1)

theorem P5842750326419721295.correct : P5842750326419721295.Spec := by
  intro n
  simp only [A137714, Nat.add_sub_cancel]

end A137714

/-! ## A137714.P9805139824242669075

`p?[A104163(n+1)-A014682(A130800(n+1))]`
-/

namespace A137714.P9805139824242669075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104163 (n + 1) - A014682 (A130800 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137714.P9805139824242669075

namespace A137714

/-- `p?[A104163(n+1)-A014682(A130800(n+1))]` -/
def P9805139824242669075.Spec : Prop :=
  ∀ n, P9805139824242669075.a n = A137714 (n + 1)

end A137714

/-! ## A137714.P13002239775501668280

`p?[A104163(n+1)-A328399(A130800(n+1)-2)]`
-/

namespace A137714.P13002239775501668280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104163 (n + 1) - A328399 (A130800 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137714.P13002239775501668280

namespace A137714

/-- `p?[A104163(n+1)-A328399(A130800(n+1)-2)]` -/
def P13002239775501668280.Spec : Prop :=
  ∀ n, P13002239775501668280.a n = A137714 (n + 1)

end A137714

/-!
# A137715: Prime values of n for which n*2^k + 1 is composite for all positive integers k.

The programs for A137715, there is no canonical definition to state claims against.
-/

/-! ## A137715.P11702188719066034820

`p?[A076336(n+1)]`
-/

namespace A137715.P11702188719066034820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137715.P11702188719066034820

/-!
# A137717: Hankel transform of A106191.

The programs for A137717, the canonical program `A137717.P6135755318765446272` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137717 has offset 0).

The definition of A137717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137717.P6135755318765446272

`2^n*A061347(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137717

/-- `2^n*A061347(n+2)` -/
def P6135755318765446272.Spec : Prop :=
  ∀ n, P6135755318765446272.a n = A137717 n

theorem P6135755318765446272.correct : P6135755318765446272.Spec := by
  intro n
  simp only [A137717]

end A137717

/-! ## A137717.P7806750979233538174

`ogf((1-2x)/(1+2x+4x^2))`
-/

namespace A137717.P7806750979233538174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, 2, 4] n

end

end A137717.P7806750979233538174

namespace A137717

/-- `ogf((1-2x)/(1+2x+4x^2))` -/
def P7806750979233538174.Spec : Prop :=
  ∀ n, P7806750979233538174.a n = A137717 n

end A137717

/-! ## A137717.P2602540287626508599

`8*a(n-3)` with `a(0)=1, a(1)=-4, a(2)=4`
-/

namespace A137717.P2602540287626508599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -4, 4] fun n a =>
  8 * a (n - 3)

end

end A137717.P2602540287626508599

namespace A137717

/-- `8*a(n-3)` -/
def P2602540287626508599.Spec : Prop :=
  ∀ n, P2602540287626508599.a n = A137717 n

end A137717

/-! ## A137717.P9285767160347890000

`2^n*A131713(n)`
-/

namespace A137717.P9285767160347890000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A131713 n

end

end A137717.P9285767160347890000

namespace A137717

/-- `2^n*A131713(n)` -/
def P9285767160347890000.Spec : Prop :=
  ∀ n, P9285767160347890000.a n = A137717 n

end A137717

/-! ## A137717.P10710971039066724586

`2^(n+1)/A143098(n+2)`
-/

namespace A137717.P10710971039066724586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℚ) / (A143098 (n + 2) : ℚ)

end

end A137717.P10710971039066724586

namespace A137717

/-- `2^(n+1)/A143098(n+2)` -/
def P10710971039066724586.Spec : Prop :=
  ∀ n, P10710971039066724586.a n = (A137717 n : ℚ)

end A137717

/-! ## A137717.P3543959707381196690

`A137718(A004273(n))`
-/

namespace A137717.P3543959707381196690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137718 (A004273 n).toNat

end

end A137717.P3543959707381196690

namespace A137717

/-- `A137718(A004273(n))` -/
def P3543959707381196690.Spec : Prop :=
  ∀ n, P3543959707381196690.a n = A137717 n

end A137717

/-! ## A137717.P17781749220297643059

`A137718(A047242(n+1))`
-/

namespace A137717.P17781749220297643059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137718 (A047242 (n + 1)).toNat

end

end A137717.P17781749220297643059

namespace A137717

/-- `A137718(A047242(n+1))` -/
def P17781749220297643059.Spec : Prop :=
  ∀ n, P17781749220297643059.a n = A137717 n

end A137717

/-! ## A137717.P9696629911258058527

`A152166(A047231(n+1))`
-/

namespace A137717.P9696629911258058527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152166 (A047231 (n + 1)).toNat

end

end A137717.P9696629911258058527

namespace A137717

/-- `A152166(A047231(n+1))` -/
def P9696629911258058527.Spec : Prop :=
  ∀ n, P9696629911258058527.a n = A137717 n

end A137717

/-! ## A137717.P8081491866117208174

`A016116(n)*A137718(n)`
-/

namespace A137717.P8081491866117208174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A137718 n

end

end A137717.P8081491866117208174

namespace A137717

/-- `A016116(n)*A137718(n)` -/
def P8081491866117208174.Spec : Prop :=
  ∀ n, P8081491866117208174.a n = A137717 n

end A137717

/-! ## A137717.P16067991669286706191

`A057079(n)*A122803(n)`
-/

namespace A137717.P16067991669286706191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A122803 n

end

end A137717.P16067991669286706191

namespace A137717

/-- `A057079(n)*A122803(n)` -/
def P16067991669286706191.Spec : Prop :=
  ∀ n, P16067991669286706191.a n = A137717 n

end A137717

/-! ## A137717.P6907448285991098983

`A104538(n+1)+A104538(n)`
-/

namespace A137717.P6907448285991098983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104538 (n + 1) + A104538 n

end

end A137717.P6907448285991098983

namespace A137717

/-- `A104538(n+1)+A104538(n)` -/
def P6907448285991098983.Spec : Prop :=
  ∀ n, P6907448285991098983.a n = A137717 n

end A137717

/-! ## A137717.P17068817516846970146

`A104537(n)*A132954(2*n)`
-/

namespace A137717.P17068817516846970146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104537 n * A132954 (2 * n)

end

end A137717.P17068817516846970146

namespace A137717

/-- `A104537(n)*A132954(2*n)` -/
def P17068817516846970146.Spec : Prop :=
  ∀ n, P17068817516846970146.a n = A137717 n

end A137717

/-! ## A137717.P8075712256321250927

`A061347(n+2)*A131577(n+1)`
-/

namespace A137717.P8075712256321250927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 2) * A131577 (n + 1)

end

end A137717.P8075712256321250927

namespace A137717

/-- `A061347(n+2)*A131577(n+1)` -/
def P8075712256321250927.Spec : Prop :=
  ∀ n, P8075712256321250927.a n = A137717 n

end A137717

/-! ## A137717.P8156871693380102563

`A104537(n+1)+2*A104537(n)`
-/

namespace A137717.P8156871693380102563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104537 (n + 1) + 2 * A104537 n

end

end A137717.P8156871693380102563

namespace A137717

/-- `A104537(n+1)+2*A104537(n)` -/
def P8156871693380102563.Spec : Prop :=
  ∀ n, P8156871693380102563.a n = A137717 n

end A137717

/-! ## A137717.P13165125346100552781

`A101675(2*n)*A166444(n+2)`
-/

namespace A137717.P13165125346100552781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 (2 * n) * A166444 (n + 2)

end

end A137717.P13165125346100552781

namespace A137717

/-- `A101675(2*n)*A166444(n+2)` -/
def P13165125346100552781.Spec : Prop :=
  ∀ n, P13165125346100552781.a n = A137717 n

end A137717

/-! ## A137717.P12352451037740928495

`∏[A099837(n+2)²*A099837(n)]`
-/

namespace A137717.P12352451037740928495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (n + 2) ^ 2 * A099837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A137717.P12352451037740928495

namespace A137717

/-- `∏[A099837(n+2)²*A099837(n)]` -/
def P12352451037740928495.Spec : Prop :=
  ∀ n, P12352451037740928495.a n = A137717 n

end A137717

/-! ## A137717.P9689796137996385626

`A000079(n+1)/(A061347(n+2)+1)`
-/

namespace A137717.P9689796137996385626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) : ℚ) / (A061347 (n + 2) + 1 : ℚ)

end

end A137717.P9689796137996385626

namespace A137717

/-- `A000079(n+1)/(A061347(n+2)+1)` -/
def P9689796137996385626.Spec : Prop :=
  ∀ n, P9689796137996385626.a n = (A137717 n : ℚ)

end A137717

/-! ## A137717.P16504250612974265766

`A000079(n+1)/(2-A021337(n+1))`
-/

namespace A137717.P16504250612974265766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) : ℚ) / (2 - A021337 (n + 1) : ℚ)

end

end A137717.P16504250612974265766

namespace A137717

/-- `A000079(n+1)/(2-A021337(n+1))` -/
def P16504250612974265766.Spec : Prop :=
  ∀ n, P16504250612974265766.a n = (A137717 n : ℚ)

end A137717

/-! ## A137717.P16831259278138996258

`A000079(n+1)/(1-A099837(n+2))`
-/

namespace A137717.P16831259278138996258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) : ℚ) / (1 - A099837 (n + 2) : ℚ)

end

end A137717.P16831259278138996258

namespace A137717

/-- `A000079(n+1)/(1-A099837(n+2))` -/
def P16831259278138996258.Spec : Prop :=
  ∀ n, P16831259278138996258.a n = (A137717 n : ℚ)

end A137717

/-! ## A137717.P7136279084434281044

`A011782(n+1)*A100051(2*n+1)`
-/

namespace A137717.P7136279084434281044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A100051 (2 * n + 1)

end

end A137717.P7136279084434281044

namespace A137717

/-- `A011782(n+1)*A100051(2*n+1)` -/
def P7136279084434281044.Spec : Prop :=
  ∀ n, P7136279084434281044.a n = A137717 n

end A137717

/-!
# A137718: A scaled Hankel transform.

The programs for A137718, the canonical program `A137718.P18354280375618536243` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137718 has offset 0).

The definition of A137718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137718.P18354280375618536243

`A137717(n)/2^floor(n/2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A137718

/-- `A137717(n)/2^floor(n/2)` -/
def P18354280375618536243.Spec : Prop :=
  ∀ n, P18354280375618536243.a n = (A137718 n : ℚ)

end A137718

/-! ## A137718.P4870030018087496654

`ogf((1-4x+4x^2-4x^3)/(1+2x^2+4x^4))`
-/

namespace A137718.P4870030018087496654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 4, -4] [1, 0, 2, 0, 4] n

end

end A137718.P4870030018087496654

namespace A137718

/-- `ogf((1-4x+4x^2-4x^3)/(1+2x^2+4x^4))` -/
def P4870030018087496654.Spec : Prop :=
  ∀ n, P4870030018087496654.a n = A137718 n

end A137718

/-! ## A137718.P3134372592419690160

`2^ceil(n/2)*A131713(n)`
-/

namespace A137718.P3134372592419690160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) * (A131713 n : ℚ)

end

end A137718.P3134372592419690160

namespace A137718

/-- `2^ceil(n/2)*A131713(n)` -/
def P3134372592419690160.Spec : Prop :=
  ∀ n, P3134372592419690160.a n = (A137718 n : ℚ)

end A137718

/-! ## A137718.P8841677776052561666

`∑[∏{p}[n, 3%#-2]]*A152166(n)`
-/

namespace A137718.P8841677776052561666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (((3 % p : ℕ) : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A152166 n

end

end A137718.P8841677776052561666

namespace A137718

/-- `∑[∏{p}[n, 3%#-2]]*A152166(n)` -/
def P8841677776052561666.Spec : Prop :=
  ∀ n, P8841677776052561666.a n = A137718 n

end A137718

/-! ## A137718.P4263458975351685113

`(-2)^(∑[n]%3)*A016116(n+1)`
-/

namespace A137718.P4263458975351685113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % 3) * A016116 (n + 1)

end

end A137718.P4263458975351685113

namespace A137718

/-- `(-2)^(∑[n]%3)*A016116(n+1)` -/
def P4263458975351685113.Spec : Prop :=
  ∀ n, P4263458975351685113.a n = A137718 n

end A137718

/-! ## A137718.P13736973332795909854

`A057079(n)*A152166(n)`
-/

namespace A137718.P13736973332795909854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A152166 n

end

end A137718.P13736973332795909854

namespace A137718

/-- `A057079(n)*A152166(n)` -/
def P13736973332795909854.Spec : Prop :=
  ∀ n, P13736973332795909854.a n = A137718 n

end A137718

/-!
# A137719: Sequence based on the pattern [3n, 3n, 3n, 3n+2, 3n+1, 3n+2].

The programs for A137719, the canonical program `A137719.P15074780796996615649` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137719 has offset 0).

The definition of A137719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137719.P15074780796996615649

`3+a(n-6)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=2, a(4)=3, a(5)=3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137719

/-- `3+a(n-6)` -/
def P15074780796996615649.Spec : Prop :=
  ∀ n, (P15074780796996615649.a n : ℤ) = A137719 n

theorem P15074780796996615649.correct : P15074780796996615649.Spec := by
  intro n
  simp only [A137719]

end A137719

/-! ## A137719.P11786207358936917199

`log(abs(A137718(n)))/log(2)`
-/

namespace A137719.P11786207358936917199
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (|A137718 n| : ℝ) / Real.log (2 : ℝ)

end

end A137719.P11786207358936917199

namespace A137719

/-- `log(abs(A137718(n)))/log(2)` -/
def P11786207358936917199.Spec : Prop :=
  ∀ n, P11786207358936917199.a n = (A137719 n : ℝ)

end A137719

/-! ## A137719.P17582407423108033017

`∑[n%2]+∑[n]%3`
-/

namespace A137719.P17582407423108033017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) % 3

end

end A137719.P17582407423108033017

namespace A137719

/-- `∑[n%2]+∑[n]%3` -/
def P17582407423108033017.Spec : Prop :=
  ∀ n, (P17582407423108033017.a n : ℤ) = A137719 n

end A137719

/-! ## A137719.P9822657625723045725

`floor((gcd(3, 1-n)+n)/2)`
-/

namespace A137719.P9822657625723045725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd 3 (1 - (n : ℤ)) + n : ℚ) / 2⌋

end

end A137719.P9822657625723045725

namespace A137719

/-- `floor((gcd(3, 1-n)+n)/2)` -/
def P9822657625723045725.Spec : Prop :=
  ∀ n, P9822657625723045725.a n = A137719 n

end A137719

/-! ## A137719.P3353521648550147689

`char[3*n+1]+∑[and(1, n)]`
-/

namespace A137719.P3353521648550147689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A137719.P3353521648550147689

namespace A137719

/-- `char[3*n+1]+∑[and(1, n)]` -/
def P3353521648550147689.Spec : Prop :=
  ∀ n, (P3353521648550147689.a n : ℤ) = A137719 n

end A137719

/-! ## A137719.P11850128272599482700

`n-(a(n-1)-n²%3)` with `a(0)=0`
-/

namespace A137719.P11850128272599482700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (a (n - 1) - ((n ^ 2 % 3 : ℕ) : ℤ))

end

end A137719.P11850128272599482700

namespace A137719

/-- `n-(a(n-1)-n²%3)` -/
def P11850128272599482700.Spec : Prop :=
  ∀ n, P11850128272599482700.a n = A137719 n

end A137719

/-! ## A137719.P7626957825944751484

`floor(∑[floor(a(n-3))]/2)` with `a(0)=1, a(1)=3, a(2)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A137719.P7626957825944751484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, -1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A137719.P7626957825944751484

namespace A137719

/-- `floor(∑[floor(a(n-3))]/2)` -/
def P7626957825944751484.Spec : Prop :=
  ∀ n, P7626957825944751484.a n = A137719 n

end A137719

/-! ## A137719.P31663357162589133

`∑[a(n-3)-(-1)^n]` with `a(0)=0, a(1)=2, a(2)=-1`
-/

namespace A137719.P31663357162589133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, -1] fun n f1 =>
  f1 (n - 3) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137719.P31663357162589133

namespace A137719

/-- `∑[a(n-3)-(-1)^n]` -/
def P31663357162589133.Spec : Prop :=
  ∀ n, P31663357162589133.a n = A137719 n

end A137719

/-! ## A137719.P10692506574925743136

`2-((n-1)%3-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A137719.P10692506574925743136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 - (Int.tmod ((n : ℤ) - 1) 3 - a (n - 2))

end

end A137719.P10692506574925743136

namespace A137719

/-- `2-((n-1)%3-a(n-2))` -/
def P10692506574925743136.Spec : Prop :=
  ∀ n, P10692506574925743136.a n = A137719 n

end A137719

/-! ## A137719.P18107209030213451957

`ceil((gcd(2*n+1, n+2)+n-1)/2)`
-/

namespace A137719.P18107209030213451957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.gcd (2 * n + 1) (n + 2) : ℤ) + ((n : ℤ) - 1) : ℚ) / 2⌉

end

end A137719.P18107209030213451957

namespace A137719

/-- `ceil((gcd(2*n+1, n+2)+n-1)/2)` -/
def P18107209030213451957.Spec : Prop :=
  ∀ n, P18107209030213451957.a n = A137719 n

end A137719

/-! ## A137719.P18189902343042776698

`char[2*n+1+n]+∑[char[2*n+1]]`
-/

namespace A137719.P18189902343042776698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A137719.P18189902343042776698

namespace A137719

/-- `char[2*n+1+n]+∑[char[2*n+1]]` -/
def P18189902343042776698.Spec : Prop :=
  ∀ n, (P18189902343042776698.a n : ℤ) = A137719 n

end A137719

/-! ## A137719.P1127653880198455546

`∑[A102283(n)+and(1, n)]`
-/

namespace A137719.P1127653880198455546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137719.P1127653880198455546

namespace A137719

/-- `∑[A102283(n)+and(1, n)]` -/
def P1127653880198455546.Spec : Prop :=
  ∀ n, P1127653880198455546.a n = A137719 n

end A137719

/-! ## A137719.P17034602707154326010

`A064429(n-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A137719.P17034602707154326010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A064429 ((n : ℤ) - a (n - 2)).toNat

end

end A137719.P17034602707154326010

namespace A137719

/-- `A064429(n-a(n-2))` -/
def P17034602707154326010.Spec : Prop :=
  ∀ n, P17034602707154326010.a n = A137719 n

end A137719

/-! ## A137719.P4759398502603958141

`floor((A006530(gcd(2*n+1, n+2))+n)/2)`
-/

namespace A137719.P4759398502603958141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006530 (Nat.gcd (2 * n + 1) (n + 2)) + (n : ℤ) : ℚ) / 2⌋

end

end A137719.P4759398502603958141

namespace A137719

/-- `floor((A006530(gcd(2*n+1, n+2))+n)/2)` -/
def P4759398502603958141.Spec : Prop :=
  ∀ n, P4759398502603958141.a n = A137719 n

end A137719

/-! ## A137719.P11097877484895264980

`A064429(A105637(n))`
-/

namespace A137719.P11097877484895264980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A105637 n).toNat

end

end A137719.P11097877484895264980

namespace A137719

/-- `A064429(A105637(n))` -/
def P11097877484895264980.Spec : Prop :=
  ∀ n, P11097877484895264980.a n = A137719 n

end A137719

/-! ## A137719.P11853935459647731265

`A057353(A130727(n))`
-/

namespace A137719.P11853935459647731265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A130727 n).toNat

end

end A137719.P11853935459647731265

namespace A137719

/-- `A057353(A130727(n))` -/
def P11853935459647731265.Spec : Prop :=
  ∀ n, P11853935459647731265.a n = A137719 n

end A137719

/-! ## A137719.P15087174001228743439

`A063217(n+1)%A047402(n+1)`
-/

namespace A137719.P15087174001228743439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063217 (n + 1)) (A047402 (n + 1))

end

end A137719.P15087174001228743439

namespace A137719

/-- `A063217(n+1)%A047402(n+1)` -/
def P15087174001228743439.Spec : Prop :=
  ∀ n, P15087174001228743439.a n = A137719 n

end A137719

/-! ## A137719.P3922324771850621276

`A063247(n+1)%A047529(n+1)`
-/

namespace A137719.P3922324771850621276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063247 (n + 1)) (A047529 (n + 1))

end

end A137719.P3922324771850621276

namespace A137719

/-- `A063247(n+1)%A047529(n+1)` -/
def P3922324771850621276.Spec : Prop :=
  ∀ n, P3922324771850621276.a n = A137719 n

end A137719

/-! ## A137719.P4374472952423544285

`A291268(A131793(n+2))`
-/

namespace A137719.P4374472952423544285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291268 (A131793 (n + 2)).toNat

end

end A137719.P4374472952423544285

namespace A137719

/-- `A291268(A131793(n+2))` -/
def P4374472952423544285.Spec : Prop :=
  ∀ n, P4374472952423544285.a n = A137719 n

end A137719

/-! ## A137719.P17511468012717020013

`A300068(A131042(n+2))`
-/

namespace A137719.P17511468012717020013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 (A131042 (n + 2)).toNat

end

end A137719.P17511468012717020013

namespace A137719

/-- `A300068(A131042(n+2))` -/
def P17511468012717020013.Spec : Prop :=
  ∀ n, P17511468012717020013.a n = A137719 n

end A137719

/-!
# A137720: Expansion of sqrt(1-4*x)/(1-3*x).

The programs for A137720, the canonical program `A137720.P10853198425669921635` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137720 has offset 0).

The definition of A137720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137720.P5570212081178404901

`(-1)^n*A157674(2*n+1)`
-/

namespace A137720.P5570212081178404901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A157674 (2 * n + 1)

end

end A137720.P5570212081178404901

namespace A137720

/-- `(-1)^n*A157674(2*n+1)` -/
def P5570212081178404901.Spec : Prop :=
  ∀ n, P5570212081178404901.a n = A137720 n

end A137720

/-! ## A137720.P10853198425669921635

`A002420(n)+3*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137720

/-- `A002420(n)+3*a(n-1)` -/
def P10853198425669921635.Spec : Prop :=
  ∀ n, P10853198425669921635.a n = A137720 n

theorem P10853198425669921635.correct : P10853198425669921635.Spec := by
  intro n
  simp only [A137720]

end A137720

/-! ## A137720.P13560950786331550027

`3*a(n-1)-A089408(2*n)` with `a(0)=1`
-/

namespace A137720.P13560950786331550027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A089408 (2 * n)

end

end A137720.P13560950786331550027

namespace A137720

/-- `3*a(n-1)-A089408(2*n)` -/
def P13560950786331550027.Spec : Prop :=
  ∀ n, P13560950786331550027.a n = A137720 n

end A137720

/-! ## A137720.P15696908389873641695

`2*A000108(n)-A320827(n+1)`
-/

namespace A137720.P15696908389873641695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n - A320827 (n + 1)

end

end A137720.P15696908389873641695

namespace A137720

/-- `2*A000108(n)-A320827(n+1)` -/
def P15696908389873641695.Spec : Prop :=
  ∀ n, P15696908389873641695.a n = A137720 n

end A137720

/-! ## A137720.P2214635392091028350

`abs(A002420(n+1))-A320827(n+1)`
-/

namespace A137720.P2214635392091028350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002420 (n + 1)| - A320827 (n + 1)

end

end A137720.P2214635392091028350

namespace A137720

/-- `abs(A002420(n+1))-A320827(n+1)` -/
def P2214635392091028350.Spec : Prop :=
  ∀ n, P2214635392091028350.a n = A137720 n

end A137720

/-! ## A137720.P16727146127387837773

`A320826(n+1)-(A320825(n+1)+A002420(n+1))`
-/

namespace A137720.P16727146127387837773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320826 (n + 1) - (A320825 (n + 1) + A002420 (n + 1))

end

end A137720.P16727146127387837773

namespace A137720

/-- `A320826(n+1)-(A320825(n+1)+A002420(n+1))` -/
def P16727146127387837773.Spec : Prop :=
  ∀ n, P16727146127387837773.a n = A137720 n

end A137720

/-!
# A137721: Number of numbers not greater than n with no prime gaps in their factorization.

The programs for A137721, the canonical program `A137721.P9767994349219074133` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137721 has offset 1).

The definition of A137721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137721.P9767994349219074133

`∑[A137794(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A137721

/-- `∑[A137794(n+1)]` -/
def P9767994349219074133.Spec : Prop :=
  ∀ n, P9767994349219074133.a n = A137721 (n + 1)

theorem P9767994349219074133.correct : P9767994349219074133.Spec := by
  intro n
  simp only [A137721, Nat.add_sub_cancel]

end A137721

/-! ## A137721.P2028016637491792804

`∑[char[A073491(n+1)-1]]`
-/

namespace A137721.P2028016637491792804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137721.P2028016637491792804

namespace A137721

/-- `∑[char[A073491(n+1)-1]]` -/
def P2028016637491792804.Spec : Prop :=
  ∀ n, (P2028016637491792804.a n : ℤ) = A137721 (n + 1)

end A137721

/-! ## A137721.P12274505991180216497

`∑[C(2, 2*A286470(n+1))]`
-/

namespace A137721.P12274505991180216497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A286470 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137721.P12274505991180216497

namespace A137721

/-- `∑[C(2, 2*A286470(n+1))]` -/
def P12274505991180216497.Spec : Prop :=
  ∀ n, (P12274505991180216497.a n : ℤ) = A137721 (n + 1)

end A137721

/-! ## A137721.P10201979948529146843

`a(n-1)+C(n+1, A073491(a(n-1)+1))` with `a(0)=1`
-/

namespace A137721.P10201979948529146843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 1) (A073491 (a (n - 1) + 1)).toNat

end

end A137721.P10201979948529146843

namespace A137721

/-- `a(n-1)+C(n+1, A073491(a(n-1)+1))` -/
def P10201979948529146843.Spec : Prop :=
  ∀ n, (P10201979948529146843.a n : ℤ) = A137721 (n + 1)

end A137721

/-! ## A137721.P4352566979583079514

`∑[A073532(n+1)^A073490(n+1)]`
-/

namespace A137721.P4352566979583079514
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073532 (n + 1) : ℚ) ^ (A073490 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137721.P4352566979583079514

namespace A137721

/-- `∑[A073532(n+1)^A073490(n+1)]` -/
def P4352566979583079514.Spec : Prop :=
  ∀ n, P4352566979583079514.a n = (A137721 (n + 1) : ℚ)

end A137721

/-! ## A137721.P16086030841444688040

`∑[A073531(n+2)^A073490(n+1)]`
-/

namespace A137721.P16086030841444688040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073531 (n + 2) : ℚ) ^ (A073490 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137721.P16086030841444688040

namespace A137721

/-- `∑[A073531(n+2)^A073490(n+1)]` -/
def P16086030841444688040.Spec : Prop :=
  ∀ n, P16086030841444688040.a n = (A137721 (n + 1) : ℚ)

end A137721

/-! ## A137721.P5455757398183264

`∑[A227625(n+1)^A073490(n+1)]`
-/

namespace A137721.P5455757398183264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227625 (n + 1) : ℚ) ^ (A073490 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137721.P5455757398183264

namespace A137721

/-- `∑[A227625(n+1)^A073490(n+1)]` -/
def P5455757398183264.Spec : Prop :=
  ∀ n, P5455757398183264.a n = (A137721 (n + 1) : ℚ)

end A137721

/-! ## A137721.P1204413342869539351

`∑[A049084(A000961(n*A073490(n+1)+1)+1)]`
-/

namespace A137721.P1204413342869539351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A000961 ((n : ℤ) * A073490 (n + 1) + 1).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137721.P1204413342869539351

namespace A137721

/-- `∑[A049084(A000961(n*A073490(n+1)+1)+1)]` -/
def P1204413342869539351.Spec : Prop :=
  ∀ n, P1204413342869539351.a n = A137721 (n + 1)

end A137721

/-! ## A137721.P6815102151962007760

`∑[A000045(C(2, A137795(n+1)))]`
-/

namespace A137721.P6815102151962007760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A137795 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137721.P6815102151962007760

namespace A137721

/-- `∑[A000045(C(2, A137795(n+1)))]` -/
def P6815102151962007760.Spec : Prop :=
  ∀ n, P6815102151962007760.a n = A137721 (n + 1)

end A137721

/-! ## A137721.P1208641073150584504

`A137794((n+1)²)+a(n-1)` with `a(0)=1`
-/

namespace A137721.P1208641073150584504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A137794 ((n + 1) ^ 2) + a (n - 1)

end

end A137721.P1208641073150584504

namespace A137721

/-- `A137794((n+1)²)+a(n-1)` -/
def P1208641073150584504.Spec : Prop :=
  ∀ n, P1208641073150584504.a n = A137721 (n + 1)

end A137721

/-!
# A137722: Number of numbers not greater than n with exactly one prime gap in their factorization.

The programs for A137722, the canonical program `A137722.P1738800181093864691` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137722 has offset 1).

The definition of A137722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137722.P1738800181093864691

`∑[A073490(n+1)%2]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A137722

/-- `∑[A073490(n+1)%2]` -/
def P1738800181093864691.Spec : Prop :=
  ∀ n, P1738800181093864691.a n = A137722 (n + 1)

theorem P1738800181093864691.correct : P1738800181093864691.Spec := by
  intro n
  simp only [A137722, Nat.add_sub_cancel]

end A137722

/-! ## A137722.P16153319926542923422

`∑[char[A073493(n+1)-1]]`
-/

namespace A137722.P16153319926542923422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073493 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137722.P16153319926542923422

namespace A137722

/-- `∑[char[A073493(n+1)-1]]` -/
def P16153319926542923422.Spec : Prop :=
  ∀ n, (P16153319926542923422.a n : ℤ) = A137722 (n + 1)

end A137722

/-! ## A137722.P15083070823607648706

`∑[char[eq[2, A287170(n+1)]]]`
-/

namespace A137722.P15083070823607648706
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137722.P15083070823607648706

namespace A137722

/-- `∑[char[eq[2, A287170(n+1)]]]` -/
def P15083070823607648706.Spec : Prop :=
  ∀ n, (P15083070823607648706.a n : ℤ) = A137722 (n + 1)

end A137722

/-! ## A137722.P13431178307299012220

`∑[and(A057427(n), A073490(n+1))]`
-/

namespace A137722.P13431178307299012220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A073490 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137722.P13431178307299012220

namespace A137722

/-- `∑[and(A057427(n), A073490(n+1))]` -/
def P13431178307299012220.Spec : Prop :=
  ∀ n, P13431178307299012220.a n = A137722 (n + 1)

end A137722

/-! ## A137722.P13231245683604509387

`∑[and(1, A073484(A285329(n+1)+1))]`
-/

namespace A137722.P13231245683604509387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A073484 (A285329 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137722.P13231245683604509387

namespace A137722

/-- `∑[and(1, A073484(A285329(n+1)+1))]` -/
def P13231245683604509387.Spec : Prop :=
  ∀ n, P13231245683604509387.a n = A137722 (n + 1)

end A137722

/-! ## A137722.P8512368006584132100

`∑[(A287170(n+1)-A287170(A073491(n+1)))%2]`
-/

namespace A137722.P8512368006584132100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287170 (n + 1) - A287170 (A073491 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137722.P8512368006584132100

namespace A137722

/-- `∑[(A287170(n+1)-A287170(A073491(n+1)))%2]` -/
def P8512368006584132100.Spec : Prop :=
  ∀ n, P8512368006584132100.a n = A137722 (n + 1)

end A137722

/-! ## A137722.P9450557301290366191

`∑[A073490(n+1)^A028326(n)]`
-/

namespace A137722.P9450557301290366191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073490 (n + 1) : ℚ) ^ (A028326 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137722.P9450557301290366191

namespace A137722

/-- `∑[A073490(n+1)^A028326(n)]` -/
def P9450557301290366191.Spec : Prop :=
  ∀ n, P9450557301290366191.a n = (A137722 (n + 1) : ℚ)

end A137722

/-! ## A137722.P18272714049921267807

`∑[A073490(n+1)^A073470(n)]`
-/

namespace A137722.P18272714049921267807
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073490 (n + 1) : ℚ) ^ (A073470 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137722.P18272714049921267807

namespace A137722

/-- `∑[A073490(n+1)^A073470(n)]` -/
def P18272714049921267807.Spec : Prop :=
  ∀ n, P18272714049921267807.a n = (A137722 (n + 1) : ℚ)

end A137722

/-! ## A137722.P8075359598718126439

`∑[A073490(n+1)^A073471(n)]`
-/

namespace A137722.P8075359598718126439
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073490 (n + 1) : ℚ) ^ (A073471 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137722.P8075359598718126439

namespace A137722

/-- `∑[A073490(n+1)^A073471(n)]` -/
def P8075359598718126439.Spec : Prop :=
  ∀ n, P8075359598718126439.a n = (A137722 (n + 1) : ℚ)

end A137722

/-! ## A137722.P15122718304830950298

`∑[A073490(n+1)^A073472(n)]`
-/

namespace A137722.P15122718304830950298
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073490 (n + 1) : ℚ) ^ (A073472 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137722.P15122718304830950298

namespace A137722

/-- `∑[A073490(n+1)^A073472(n)]` -/
def P15122718304830950298.Spec : Prop :=
  ∀ n, P15122718304830950298.a n = (A137722 (n + 1) : ℚ)

end A137722

/-! ## A137722.P5675404587618081161

`∑[A073490(n+1)^A073474(n)]`
-/

namespace A137722.P5675404587618081161
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073490 (n + 1) : ℚ) ^ (A073474 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137722.P5675404587618081161

namespace A137722

/-- `∑[A073490(n+1)^A073474(n)]` -/
def P5675404587618081161.Spec : Prop :=
  ∀ n, P5675404587618081161.a n = (A137722 (n + 1) : ℚ)

end A137722

/-! ## A137722.P4354381966665322094

`∑[A073490(n+1)^A000040(n+1)]`
-/

namespace A137722.P4354381966665322094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073490 (n + 1) : ℚ) ^ (A000040 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137722.P4354381966665322094

namespace A137722

/-- `∑[A073490(n+1)^A000040(n+1)]` -/
def P4354381966665322094.Spec : Prop :=
  ∀ n, P4354381966665322094.a n = (A137722 (n + 1) : ℚ)

end A137722

/-! ## A137722.P8258770789208330654

`∑[A073490(n+1)^A000961(n+1)]`
-/

namespace A137722.P8258770789208330654
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073490 (n + 1) : ℚ) ^ (A000961 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137722.P8258770789208330654

namespace A137722

/-- `∑[A073490(n+1)^A000961(n+1)]` -/
def P8258770789208330654.Spec : Prop :=
  ∀ n, P8258770789208330654.a n = (A137722 (n + 1) : ℚ)

end A137722

/-! ## A137722.P10423529726597836541

`∑[A073490(n+1)^A006093(n+1)]`
-/

namespace A137722.P10423529726597836541
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073490 (n + 1) : ℚ) ^ (A006093 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137722.P10423529726597836541

namespace A137722

/-- `∑[A073490(n+1)^A006093(n+1)]` -/
def P10423529726597836541.Spec : Prop :=
  ∀ n, P10423529726597836541.a n = (A137722 (n + 1) : ℚ)

end A137722

/-! ## A137722.P13811766737737892213

`∑[A073490(n+1)^A051860(n+1)]`
-/

namespace A137722.P13811766737737892213
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073490 (n + 1) : ℚ) ^ (A051860 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137722.P13811766737737892213

namespace A137722

/-- `∑[A073490(n+1)^A051860(n+1)]` -/
def P13811766737737892213.Spec : Prop :=
  ∀ n, P13811766737737892213.a n = (A137722 (n + 1) : ℚ)

end A137722

/-! ## A137722.P15401652659579001014

`∑[A073490(n+1)^A069272(n+1)]`
-/

namespace A137722.P15401652659579001014
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073490 (n + 1) : ℚ) ^ (A069272 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137722.P15401652659579001014

namespace A137722

/-- `∑[A073490(n+1)^A069272(n+1)]` -/
def P15401652659579001014.Spec : Prop :=
  ∀ n, P15401652659579001014.a n = (A137722 (n + 1) : ℚ)

end A137722

/-! ## A137722.P3040911283943006657

`∑[A073490(n+1)^A073485(n+1)]`
-/

namespace A137722.P3040911283943006657
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073490 (n + 1) : ℚ) ^ (A073485 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137722.P3040911283943006657

namespace A137722

/-- `∑[A073490(n+1)^A073485(n+1)]` -/
def P3040911283943006657.Spec : Prop :=
  ∀ n, P3040911283943006657.a n = (A137722 (n + 1) : ℚ)

end A137722

/-! ## A137722.P15920103487792326555

`∑[A073490(n+1)^A073494(n+1)]`
-/

namespace A137722.P15920103487792326555
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073490 (n + 1) : ℚ) ^ (A073494 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137722.P15920103487792326555

namespace A137722

/-- `∑[A073490(n+1)^A073494(n+1)]` -/
def P15920103487792326555.Spec : Prop :=
  ∀ n, P15920103487792326555.a n = (A137722 (n + 1) : ℚ)

end A137722

/-! ## A137722.P837188340839065535

`∑[A073490(n+1)^A073534(n+1)]`
-/

namespace A137722.P837188340839065535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073490 (n + 1) : ℚ) ^ (A073534 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137722.P837188340839065535

namespace A137722

/-- `∑[A073490(n+1)^A073534(n+1)]` -/
def P837188340839065535.Spec : Prop :=
  ∀ n, P837188340839065535.a n = (A137722 (n + 1) : ℚ)

end A137722

/-! ## A137722.P4286099817767803911

`∑[A073490(n+1)^A073539(n+1)]`
-/

namespace A137722.P4286099817767803911
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073490 (n + 1) : ℚ) ^ (A073539 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137722.P4286099817767803911

namespace A137722

/-- `∑[A073490(n+1)^A073539(n+1)]` -/
def P4286099817767803911.Spec : Prop :=
  ∀ n, P4286099817767803911.a n = (A137722 (n + 1) : ℚ)

end A137722

/-!
# A137724: Prime numbers p such that p +- ((p-1)/6) are primes.

The programs for A137724, there is no canonical definition to state claims against.
-/

/-! ## A137724.P5192362363020025901

`A211821(A000005(n+1)*A345531(n+1))`
-/

namespace A137724.P5192362363020025901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211821 (A000005 (n + 1) * A345531 (n + 1)).toNat

end

end A137724.P5192362363020025901

/-!
# A137725: Number of sequences of length n with elements {-2,-1,+1,+2}, such that the sum of elements of the whole sequence but of no proper subsequence equals 0 modulo n. For n>=4, the number of Hamiltonian (directed) circuits on the circulant graph C_n(1,2).

The programs for A137725, the canonical program `A137725.P7741262379720710562` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137725 has offset 1).

The definition of A137725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137725.P7741262379720710562

`a(n-1)+a(n-2)-a(n-5)-4` with `a(0)=4, a(1)=4, a(2)=16, a(3)=18, a(4)=24, a(5)=32, a(6)=46`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137725

/-- `a(n-1)+a(n-2)-a(n-5)-4` -/
def P7741262379720710562.Spec : Prop :=
  ∀ n, P7741262379720710562.a n = A137725 (n + 1)

theorem P7741262379720710562.correct : P7741262379720710562.Spec := by
  intro n
  simp only [A137725, Nat.add_sub_cancel]

end A137725

/-! ## A137725.P1018995217645765032

`2*A137726(n+1)`
-/

namespace A137725.P1018995217645765032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137726 (n + 1)

end

end A137725.P1018995217645765032

namespace A137725

/-- `2*A137726(n+1)` -/
def P1018995217645765032.Spec : Prop :=
  ∀ n, P1018995217645765032.a n = A137725 (n + 1)

end A137725

/-! ## A137725.P17459273437446366581

`A137726(n+1)+A137726(-xor(n, -1))`
-/

namespace A137725.P17459273437446366581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137726 (n + 1) + A137726 (-Int.xor (n : ℤ) (-1)).toNat

end

end A137725.P17459273437446366581

namespace A137725

/-- `A137726(n+1)+A137726(-xor(n, -1))` -/
def P17459273437446366581.Spec : Prop :=
  ∀ n, P17459273437446366581.a n = A137725 (n + 1)

end A137725

/-! ## A137725.P12906465268393929863

`A137726(A000027(n+1))+A137726(n+1)`
-/

namespace A137725.P12906465268393929863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137726 (A000027 (n + 1)).toNat + A137726 (n + 1)

end

end A137725.P12906465268393929863

namespace A137725

/-- `A137726(A000027(n+1))+A137726(n+1)` -/
def P12906465268393929863.Spec : Prop :=
  ∀ n, P12906465268393929863.a n = A137725 (n + 1)

end A137725

/-! ## A137725.P2837562373152443230

`A137726(n+1)+A137726(A028310(n)+1)`
-/

namespace A137725.P2837562373152443230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137726 (n + 1) + A137726 (A028310 n + 1).toNat

end

end A137725.P2837562373152443230

namespace A137725

/-- `A137726(n+1)+A137726(A028310(n)+1)` -/
def P2837562373152443230.Spec : Prop :=
  ∀ n, P2837562373152443230.a n = A137725 (n + 1)

end A137725

/-! ## A137725.P9601319124454092733

`A137726(n+1)+A137726(n+1)+A033685(A033685(n))`
-/

namespace A137725.P9601319124454092733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137726 (n + 1) + (A137726 (n + 1) + A033685 (A033685 n).toNat)

end

end A137725.P9601319124454092733

namespace A137725

/-- `A137726(n+1)+A137726(n+1)+A033685(A033685(n))` -/
def P9601319124454092733.Spec : Prop :=
  ∀ n, P9601319124454092733.a n = A137725 (n + 1)

end A137725

/-! ## A137725.P17169892701160494654

`A137726(n+1)+A137726(n+1)%A306447(n+1)`
-/

namespace A137725.P17169892701160494654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137726 (n + 1) + Int.tmod (A137726 (n + 1)) (A306447 (n + 1))

end

end A137725.P17169892701160494654

namespace A137725

/-- `A137726(n+1)+A137726(n+1)%A306447(n+1)` -/
def P17169892701160494654.Spec : Prop :=
  ∀ n, P17169892701160494654.a n = A137725 (n + 1)

end A137725

/-! ## A137725.P4383256418128186898

`A137726(n+1)+A137726(A025581(∑[n+1]))`
-/

namespace A137725.P4383256418128186898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137726 (n + 1) + A137726 (A025581 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A137725.P4383256418128186898

namespace A137725

/-- `A137726(n+1)+A137726(A025581(∑[n+1]))` -/
def P4383256418128186898.Spec : Prop :=
  ∀ n, P4383256418128186898.a n = A137725 (n + 1)

end A137725

/-!
# A137726: Number of sequences of length n with elements {-2,-1,+1,+2}, counted up to simultaneous reversal and negation, such that the sum of elements of the whole sequence but of no proper subsequence equals 0 modulo n. For n>=4, the number of Hamiltonian (undirected) cycles on the circulant graph C_n(1,2).

The programs for A137726, the canonical program `A137726.P2687863495879254853` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137726 has offset 1).

The definition of A137726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137726.P2687863495879254853

`a(n-1)+a(n-2)-a(n-5)-2` with `a(0)=2, a(1)=2, a(2)=8, a(3)=9, a(4)=12, a(5)=16, a(6)=23`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137726

/-- `a(n-1)+a(n-2)-a(n-5)-2` -/
def P2687863495879254853.Spec : Prop :=
  ∀ n, P2687863495879254853.a n = A137726 (n + 1)

theorem P2687863495879254853.correct : P2687863495879254853.Spec := by
  intro n
  simp only [A137726, Nat.add_sub_cancel]

end A137726

/-! ## A137726.P3323779187032807485

`A137725(n+1)/2`
-/

namespace A137726.P3323779187032807485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137725 (n + 1) : ℚ) / 2

end

end A137726.P3323779187032807485

namespace A137726

/-- `A137725(n+1)/2` -/
def P3323779187032807485.Spec : Prop :=
  ∀ n, P3323779187032807485.a n = (A137726 (n + 1) : ℚ)

end A137726

/-! ## A137726.P17504882256624662756

`A103517(A004526(n))+A001609(n+1)`
-/

namespace A137726.P17504882256624662756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A004526 n).toNat + A001609 (n + 1)

end

end A137726.P17504882256624662756

namespace A137726

/-- `A103517(A004526(n))+A001609(n+1)` -/
def P17504882256624662756.Spec : Prop :=
  ∀ n, P17504882256624662756.a n = A137726 (n + 1)

end A137726

/-! ## A137726.P15634275297589776408

`A226509(n+1)-A000007(A004526(n))`
-/

namespace A137726.P15634275297589776408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226509 (n + 1) - A000007 (A004526 n).toNat

end

end A137726.P15634275297589776408

namespace A137726

/-- `A226509(n+1)-A000007(A004526(n))` -/
def P15634275297589776408.Spec : Prop :=
  ∀ n, P15634275297589776408.a n = A137726 (n + 1)

end A137726

/-! ## A137726.P2229144137252213556

`A226509(n+1)-A010052(A080400(n+1))`
-/

namespace A137726.P2229144137252213556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226509 (n + 1) - A010052 (A080400 (n + 1)).toNat

end

end A137726.P2229144137252213556

namespace A137726

/-- `A226509(n+1)-A010052(A080400(n+1))` -/
def P2229144137252213556.Spec : Prop :=
  ∀ n, P2229144137252213556.a n = A137726 (n + 1)

end A137726

/-! ## A137726.P15502603706273768690

`A226509(n+1)-val(A226509(n+1), A226509(n))`
-/

namespace A137726.P15502603706273768690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226509 (n + 1) - (SequenceMachineLib.valuation (A226509 (n + 1)).toNat (A226509 n).toNat : ℤ)

end

end A137726.P15502603706273768690

namespace A137726

/-- `A226509(n+1)-val(A226509(n+1), A226509(n))` -/
def P15502603706273768690.Spec : Prop :=
  ∀ n, P15502603706273768690.a n = A137726 (n + 1)

end A137726

/-! ## A137726.P12092871748285807021

`A226509(n+1)-A036987(n²)`
-/

namespace A137726.P12092871748285807021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226509 (n + 1) - A036987 (n ^ 2)

end

end A137726.P12092871748285807021

namespace A137726

/-- `A226509(n+1)-A036987(n²)` -/
def P12092871748285807021.Spec : Prop :=
  ∀ n, P12092871748285807021.a n = A137726 (n + 1)

end A137726

/-! ## A137726.P12197226376772116625

`A226509(n+1)-A010052(n²-n)`
-/

namespace A137726.P12197226376772116625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226509 (n + 1) - A010052 (n ^ 2 - n)

end

end A137726.P12197226376772116625

namespace A137726

/-- `A226509(n+1)-A010052(n²-n)` -/
def P12197226376772116625.Spec : Prop :=
  ∀ n, P12197226376772116625.a n = A137726 (n + 1)

end A137726

/-! ## A137726.P16814094233663663642

`A226509(n+1)-A321448(1-A109728(n)+n)`
-/

namespace A137726.P16814094233663663642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226509 (n + 1) - A321448 (1 - A109728 n + (n : ℤ)).toNat

end

end A137726.P16814094233663663642

namespace A137726

/-- `A226509(n+1)-A321448(1-A109728(n)+n)` -/
def P16814094233663663642.Spec : Prop :=
  ∀ n, P16814094233663663642.a n = A137726 (n + 1)

end A137726

/-!
# A137727: Final digit of prime(n)*prime(n+1).

The programs for A137727, the canonical program `A137727.P5637515941323942506` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137727 has offset 1).

The definition of A137727 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A137727.P5637515941323942506

`A010879(A006094(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A137727

/-- `A010879(A006094(n+1))` -/
def P5637515941323942506.Spec : Prop :=
  ∀ n, P5637515941323942506.a n = A137727 (n + 1)

theorem P5637515941323942506.correct : P5637515941323942506.Spec := by
  intro n
  simp only [A137727, Nat.add_sub_cancel]

end A137727

/-! ## A137727.P1076770071224863538

`A247475(n+1)%10`
-/

namespace A137727.P1076770071224863538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247475 (n + 1)) 10

end

end A137727.P1076770071224863538

namespace A137727

/-- `A247475(n+1)%10` -/
def P1076770071224863538.Spec : Prop :=
  ∀ n, P1076770071224863538.a n = A137727 (n + 1)

end A137727

/-! ## A137727.P6210212813795368429

`sqrt(A166329(n+1))%10`
-/

namespace A137727.P6210212813795368429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A166329 (n + 1) : ℝ))) 10

end

end A137727.P6210212813795368429

namespace A137727

/-- `sqrt(A166329(n+1))%10` -/
def P6210212813795368429.Spec : Prop :=
  ∀ n, P6210212813795368429.a n = A137727 (n + 1)

end A137727

/-! ## A137727.P17004573189845568143

`(A000040(n+1)*A000040(n+2))%10`
-/

namespace A137727.P17004573189845568143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) * A000040 (n + 2)) 10

end

end A137727.P17004573189845568143

namespace A137727

/-- `(A000040(n+1)*A000040(n+2))%10` -/
def P17004573189845568143.Spec : Prop :=
  ∀ n, P17004573189845568143.a n = A137727 (n + 1)

end A137727

/-! ## A137727.P9279996022016813728

`A010879(A007652(n+1)*A110923(n+2))`
-/

namespace A137727.P9279996022016813728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A007652 (n + 1) * A110923 (n + 2)).toNat

end

end A137727.P9279996022016813728

namespace A137727

/-- `A010879(A007652(n+1)*A110923(n+2))` -/
def P9279996022016813728.Spec : Prop :=
  ∀ n, P9279996022016813728.a n = A137727 (n + 1)

end A137727

/-! ## A137727.P2382978404862584389

`A010879(A007652(n+1)*A137589(n+2))`
-/

namespace A137727.P2382978404862584389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A007652 (n + 1) * A137589 (n + 2)).toNat

end

end A137727.P2382978404862584389

namespace A137727

/-- `A010879(A007652(n+1)*A137589(n+2))` -/
def P2382978404862584389.Spec : Prop :=
  ∀ n, P2382978404862584389.a n = A137727 (n + 1)

end A137727

/-! ## A137727.P5393881956344516042

`A010879(A110923(n+1)*A110923(n+2))`
-/

namespace A137727.P5393881956344516042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A110923 (n + 1) * A110923 (n + 2)).toNat

end

end A137727.P5393881956344516042

namespace A137727

/-- `A010879(A110923(n+1)*A110923(n+2))` -/
def P5393881956344516042.Spec : Prop :=
  ∀ n, P5393881956344516042.a n = A137727 (n + 1)

end A137727

/-! ## A137727.P3253732438426289864

`A010879(A137589(n+1)*A137589(n+2))`
-/

namespace A137727.P3253732438426289864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A137589 (n + 1) * A137589 (n + 2)).toNat

end

end A137727.P3253732438426289864

namespace A137727

/-- `A010879(A137589(n+1)*A137589(n+2))` -/
def P3253732438426289864.Spec : Prop :=
  ∀ n, P3253732438426289864.a n = A137727 (n + 1)

end A137727

/-! ## A137727.P7825675930330491273

`record[A116570(n)]%10`
-/

namespace A137727.P7825675930330491273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10

end

end A137727.P7825675930330491273

namespace A137727

/-- `record[A116570(n)]%10` -/
def P7825675930330491273.Spec : Prop :=
  ∀ n, P7825675930330491273.a n = A137727 (n + 1)

end A137727

/-! ## A137727.P8678767132256318029

`A116570(2*n)%10`
-/

namespace A137727.P8678767132256318029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116570 (2 * n)) 10

end

end A137727.P8678767132256318029

namespace A137727

/-- `A116570(2*n)%10` -/
def P8678767132256318029.Spec : Prop :=
  ∀ n, P8678767132256318029.a n = A137727 (n + 1)

end A137727

/-! ## A137727.P17467216371938988836

`A033476(2*n+1)%10`
-/

namespace A137727.P17467216371938988836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033476 (2 * n + 1)) 10

end

end A137727.P17467216371938988836

namespace A137727

/-- `A033476(2*n+1)%10` -/
def P17467216371938988836.Spec : Prop :=
  ∀ n, P17467216371938988836.a n = A137727 (n + 1)

end A137727

/-! ## A137727.P5391108408985605570

`A333747(2*n+1)%10`
-/

namespace A137727.P5391108408985605570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333747 (2 * n + 1)) 10

end

end A137727.P5391108408985605570

namespace A137727

/-- `A333747(2*n+1)%10` -/
def P5391108408985605570.Spec : Prop :=
  ∀ n, P5391108408985605570.a n = A137727 (n + 1)

end A137727

/-! ## A137727.P15877578233420970055

`A010879(A007652(n+1)*A138840(n+2))`
-/

namespace A137727.P15877578233420970055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A007652 (n + 1) * A138840 (n + 2)).toNat

end

end A137727.P15877578233420970055

namespace A137727

/-- `A010879(A007652(n+1)*A138840(n+2))` -/
def P15877578233420970055.Spec : Prop :=
  ∀ n, P15877578233420970055.a n = A137727 (n + 1)

end A137727

/-! ## A137727.P13812222188359984053

`A010879(A138840(n+1)*A138840(n+2))`
-/

namespace A137727.P13812222188359984053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A138840 (n + 1) * A138840 (n + 2)).toNat

end

end A137727.P13812222188359984053

namespace A137727

/-- `A010879(A138840(n+1)*A138840(n+2))` -/
def P13812222188359984053.Spec : Prop :=
  ∀ n, P13812222188359984053.a n = A137727 (n + 1)

end A137727

/-!
# A137728: Second digit from the end of product of first n primes.

The programs for A137728, the canonical program `A137728.P9076727154508020560` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137728 has offset 1).

The definition of A137728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5787 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137728.P9076727154508020560

`A056129(n+1)*A157928(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A137728

/-- `A056129(n+1)*A157928(n)` -/
def P9076727154508020560.Spec : Prop :=
  ∀ n, P9076727154508020560.a n = A137728 (n + 1)

theorem P9076727154508020560.correct : P9076727154508020560.Spec := by
  intro n
  simp only [A137728, Nat.add_sub_cancel]

end A137728

/-! ## A137728.P5548100637451738199

`and(A056129(n+1), A134824(n))`
-/

namespace A137728.P5548100637451738199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056129 (n + 1)) (A134824 n)

end

end A137728.P5548100637451738199

namespace A137728

/-- `and(A056129(n+1), A134824(n))` -/
def P5548100637451738199.Spec : Prop :=
  ∀ n, P5548100637451738199.a n = A137728 (n + 1)

end A137728

/-! ## A137728.P8147590450984089649

`(2-A141044(n))*A056129(n+1)`
-/

namespace A137728.P8147590450984089649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A141044 n) * A056129 (n + 1)

end

end A137728.P8147590450984089649

namespace A137728

/-- `(2-A141044(n))*A056129(n+1)` -/
def P8147590450984089649.Spec : Prop :=
  ∀ n, P8147590450984089649.a n = A137728 (n + 1)

end A137728

/-! ## A137728.P14666389522337968429

`and(A056129(n+1), A171390(A038567(n)))`
-/

namespace A137728.P14666389522337968429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056129 (n + 1)) (A171390 (A038567 n).toNat)

end

end A137728.P14666389522337968429

namespace A137728

/-- `and(A056129(n+1), A171390(A038567(n)))` -/
def P14666389522337968429.Spec : Prop :=
  ∀ n, P14666389522337968429.a n = A137728 (n + 1)

end A137728

/-! ## A137728.P5606772769534542551

`(A056129(n+1)+A005408(n))%A005408(n)`
-/

namespace A137728.P5606772769534542551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056129 (n + 1) + A005408 n) (A005408 n)

end

end A137728.P5606772769534542551

namespace A137728

/-- `(A056129(n+1)+A005408(n))%A005408(n)` -/
def P5606772769534542551.Spec : Prop :=
  ∀ n, P5606772769534542551.a n = A137728 (n + 1)

end A137728

/-! ## A137728.P11553557222330234175

`(A267872(n)+A056129(n+1))%A267872(n)`
-/

namespace A137728.P11553557222330234175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267872 n + A056129 (n + 1)) (A267872 n)

end

end A137728.P11553557222330234175

namespace A137728

/-- `(A267872(n)+A056129(n+1))%A267872(n)` -/
def P11553557222330234175.Spec : Prop :=
  ∀ n, P11553557222330234175.a n = A137728 (n + 1)

end A137728

/-! ## A137728.P1182913004795970630

`A056000(n)%(A056129(n+1)-A056000(n))`
-/

namespace A137728.P1182913004795970630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056000 n) (A056129 (n + 1) - A056000 n)

end

end A137728.P1182913004795970630

namespace A137728

/-- `A056000(n)%(A056129(n+1)-A056000(n))` -/
def P1182913004795970630.Spec : Prop :=
  ∀ n, P1182913004795970630.a n = A137728 (n + 1)

end A137728

/-! ## A137728.P12321376552218626629

`and(A141044(n), A294774(n))*A056129(n+1)`
-/

namespace A137728.P12321376552218626629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141044 n) (A294774 n) * A056129 (n + 1)

end

end A137728.P12321376552218626629

namespace A137728

/-- `and(A141044(n), A294774(n))*A056129(n+1)` -/
def P12321376552218626629.Spec : Prop :=
  ∀ n, P12321376552218626629.a n = A137728 (n + 1)

end A137728

/-! ## A137728.P394972528306997833

`char[A006368(n+2)]*A056129(n+1)`
-/

namespace A137728.P394972528306997833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A056129 (n + 1)

end

end A137728.P394972528306997833

namespace A137728

/-- `char[A006368(n+2)]*A056129(n+1)` -/
def P394972528306997833.Spec : Prop :=
  ∀ n, P394972528306997833.a n = A137728 (n + 1)

end A137728

/-! ## A137728.P18207838108716235524

`and(A056129(2*n), A141044(n+1))*A056129(n+1)`
-/

namespace A137728.P18207838108716235524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056129 (2 * n)) (A141044 (n + 1)) * A056129 (n + 1)

end

end A137728.P18207838108716235524

namespace A137728

/-- `and(A056129(2*n), A141044(n+1))*A056129(n+1)` -/
def P18207838108716235524.Spec : Prop :=
  ∀ n, P18207838108716235524.a n = A137728 (n + 1)

end A137728

/-! ## A137728.P1727874123131229556

`and(1, A163733(n+1)+1)*A056129(n+1)`
-/

namespace A137728.P1727874123131229556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A163733 (n + 1) + 1) * A056129 (n + 1)

end

end A137728.P1727874123131229556

namespace A137728

/-- `and(1, A163733(n+1)+1)*A056129(n+1)` -/
def P1727874123131229556.Spec : Prop :=
  ∀ n, P1727874123131229556.a n = A137728 (n + 1)

end A137728

/-! ## A137728.P18393287726183486838

`and(A000225(n), A056129(n+1))`
-/

namespace A137728.P18393287726183486838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A056129 (n + 1))

end

end A137728.P18393287726183486838

namespace A137728

/-- `and(A000225(n), A056129(n+1))` -/
def P18393287726183486838.Spec : Prop :=
  ∀ n, P18393287726183486838.a n = A137728 (n + 1)

end A137728

/-! ## A137728.P6396142304854786366

`and(∑[A131577(n)], A056129(n+1))`
-/

namespace A137728.P6396142304854786366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A056129 (n + 1))

end

end A137728.P6396142304854786366

namespace A137728

/-- `and(∑[A131577(n)], A056129(n+1))` -/
def P6396142304854786366.Spec : Prop :=
  ∀ n, P6396142304854786366.a n = A137728 (n + 1)

end A137728

/-! ## A137728.P12637717552018494154

`and(A131577(n+1)-1, A056129(n+1))`
-/

namespace A137728.P12637717552018494154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131577 (n + 1) - 1) (A056129 (n + 1))

end

end A137728.P12637717552018494154

namespace A137728

/-- `and(A131577(n+1)-1, A056129(n+1))` -/
def P12637717552018494154.Spec : Prop :=
  ∀ n, P12637717552018494154.a n = A137728 (n + 1)

end A137728

/-! ## A137728.P10310704360045904133

`A056129(n+1)-and(6, A122756(n+1))`
-/

namespace A137728.P10310704360045904133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056129 (n + 1) - Int.land 6 (A122756 (n + 1))

end

end A137728.P10310704360045904133

namespace A137728

/-- `A056129(n+1)-and(6, A122756(n+1))` -/
def P10310704360045904133.Spec : Prop :=
  ∀ n, P10310704360045904133.a n = A137728 (n + 1)

end A137728

/-! ## A137728.P13336477573158342133

`and(A056129(n+1), A171390(n+1))`
-/

namespace A137728.P13336477573158342133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056129 (n + 1)) (A171390 (n + 1))

end

end A137728.P13336477573158342133

namespace A137728

/-- `and(A056129(n+1), A171390(n+1))` -/
def P13336477573158342133.Spec : Prop :=
  ∀ n, P13336477573158342133.a n = A137728 (n + 1)

end A137728

/-!
# A137729: Number of circular permutations of the multiset {1,1,2,2,...,n,n} (up to rotations).

The programs for A137729, there is no canonical definition to state claims against.
-/

/-! ## A137729.P8897942690744794003

`A275527(A004277(n))/A011782(n)`
-/

namespace A137729.P8897942690744794003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275527 (A004277 n).toNat : ℚ) / (A011782 n : ℚ)

end

end A137729.P8897942690744794003

/-! ## A137729.P8226390901628895884

`A208183(∑[n+2]+3)`
-/

namespace A137729.P8226390901628895884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A137729.P8226390901628895884

/-! ## A137729.P7812559709628037254

`A318810(3^n)`
-/

namespace A137729.P7812559709628037254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (3 ^ n)

end

end A137729.P7812559709628037254

/-!
# A137730: Number of circular permutations of the multiset {1,1,2,2,...,n,n} (up to rotations) with odd distances between equal elements.

The programs for A137730, there is no canonical definition to state claims against.
-/

/-! ## A137730.P2940184571956830183

`A242255(a(n-1)+1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A137730.P2940184571956830183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  A242255 (a (n - 1) + 1).toNat - a (n - 3)

end

end A137730.P2940184571956830183

/-!
# A137731: Repeated set splitting, labeled elements.

The programs for A137731, there is no canonical definition to state claims against.
-/

/-! ## A137731.P10333904167220003177

`A064626(C(n, ceil(n/5)²))`
-/

namespace A137731.P10333904167220003177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064626 (Nat.choose n (⌈(n : ℚ) / 5⌉ ^ 2).toNat)

end

end A137731.P10333904167220003177

/-! ## A137731.P4102264123548106915

`A101402(n²*a(n-1))` with `a(0)=1`
-/

namespace A137731.P4102264123548106915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101402 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A137731.P4102264123548106915

/-!
# A137732: Repeated set splitting, unlabeled elements. Repeated integer partitioning into two parts.

The programs for A137732, there is no canonical definition to state claims against.
-/

/-! ## A137732.P9699624025533932162

`floor(sqrt(A325113((n+1)!)))`
-/

namespace A137732.P9699624025533932162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A325113 (Nat.factorial (n + 1)))

end

end A137732.P9699624025533932162

/-! ## A137732.P6181480502623702095

`A119611(lcm(n+1, ∑{e}[n+1, #]))`
-/

namespace A137732.P6181480502623702095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119611 (Nat.lcm (n + 1) (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A137732.P6181480502623702095

/-! ## A137732.P7365553728190134979

`A295218(A071357(n+1))`
-/

namespace A137732.P7365553728190134979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295218 (A071357 (n + 1)).toNat

end

end A137732.P7365553728190134979

/-!
# A137734: a(0)=1. a(n) = ceiling(n/b(n)), where b(n) is the largest value among (a(0),a(1),...,a(n-1)).

The programs for A137734, the canonical program `A137734.P16570986701740849317` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137734 has offset 0).

The definition of A137734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137734.P3087767915497449033

`ceil(n/ceil(sqrt(floor(sqrt(n)*a(n-1)))))` with `a(0)=1`
-/

namespace A137734.P3087767915497449033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(n : ℚ) / (⌈Real.sqrt (⌊Real.sqrt (n : ℝ) * (a (n - 1) : ℝ)⌋ : ℝ)⌉ : ℚ)⌉

end

end A137734.P3087767915497449033

namespace A137734

/-- `ceil(n/ceil(sqrt(floor(sqrt(n)*a(n-1)))))` -/
def P3087767915497449033.Spec : Prop :=
  ∀ n, P3087767915497449033.a n = A137734 n

end A137734

/-! ## A137734.P9180626215646330788

`round(sqrt(A143051(n)+1))`
-/

namespace A137734.P9180626215646330788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A143051 n + 1 : ℝ))

end

end A137734.P9180626215646330788

namespace A137734

/-- `round(sqrt(A143051(n)+1))` -/
def P9180626215646330788.Spec : Prop :=
  ∀ n, P9180626215646330788.a n = A137734 n

end A137734

/-! ## A137734.P16570986701740849317

`A259361(A143051(n))+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A137734

/-- `A259361(A143051(n))+1` -/
def P16570986701740849317.Spec : Prop :=
  ∀ n, P16570986701740849317.a n = A137734 n

theorem P16570986701740849317.correct : P16570986701740849317.Spec := by
  intro n
  simp only [A137734]

end A137734

/-! ## A137734.P16819532408760901954

`A164386(n+1)-(char[A164386(n+1)]+n)`
-/

namespace A137734.P16819532408760901954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164386 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164386 (n + 1) - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n : ℕ) : ℤ)

end

end A137734.P16819532408760901954

namespace A137734

/-- `A164386(n+1)-(char[A164386(n+1)]+n)` -/
def P16819532408760901954.Spec : Prop :=
  ∀ n, P16819532408760901954.a n = A137734 n

end A137734

/-! ## A137734.P121794316158068854

`A137735(eq[1, (n+1)^A089810(n+1)])`
-/

namespace A137734.P121794316158068854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A089810 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A137734.P121794316158068854

namespace A137734

/-- `A137735(eq[1, (n+1)^A089810(n+1)])` -/
def P121794316158068854.Spec : Prop :=
  ∀ n, P121794316158068854.a n = A137734 n

end A137734

/-! ## A137734.P3837541105502505946

`A137735(eq[(n+1)*A089810(n+1), A089810(n+1)])`
-/

namespace A137734.P3837541105502505946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A089810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A137734.P3837541105502505946

namespace A137734

/-- `A137735(eq[(n+1)*A089810(n+1), A089810(n+1)])` -/
def P3837541105502505946.Spec : Prop :=
  ∀ n, P3837541105502505946.a n = A137734 n

end A137734

/-! ## A137734.P2546099022040672143

`A137735(record[(n-A137735(n+1))%(n+1)])`
-/

namespace A137734.P2546099022040672143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A137735 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137734.P2546099022040672143

namespace A137734

/-- `A137735(record[(n-A137735(n+1))%(n+1)])` -/
def P2546099022040672143.Spec : Prop :=
  ∀ n, P2546099022040672143.a n = A137734 n

end A137734

/-! ## A137734.P9861690500559934519

`A000196(A000196(n)+A143051(n)+1)`
-/

namespace A137734.P9861690500559934519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000196 n + (A143051 n + 1)).toNat

end

end A137734.P9861690500559934519

namespace A137734

/-- `A000196(A000196(n)+A143051(n)+1)` -/
def P9861690500559934519.Spec : Prop :=
  ∀ n, P9861690500559934519.a n = A137734 n

end A137734

/-! ## A137734.P8876117314851914191

`A137735(eq[A089810(n+1), A089810(n²+1)])`
-/

namespace A137734.P8876117314851914191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A137734.P8876117314851914191

namespace A137734

/-- `A137735(eq[A089810(n+1), A089810(n²+1)])` -/
def P8876117314851914191.Spec : Prop :=
  ∀ n, P8876117314851914191.a n = A137734 n

end A137734

/-! ## A137734.P7781051835475398681

`A137735(record[A137735(n²)-A137735(n+1)])`
-/

namespace A137734.P7781051835475398681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (n ^ 2) - A137735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137734.P7781051835475398681

namespace A137734

/-- `A137735(record[A137735(n²)-A137735(n+1)])` -/
def P7781051835475398681.Spec : Prop :=
  ∀ n, P7781051835475398681.a n = A137734 n

end A137734

/-!
# A137735: a(0)=1. a(n) = floor(n/b(n)), where b(n) is the largest value among (a(0),a(1),...,a(n-1)).

The programs for A137735, the canonical program `A137735.P991700169822903993` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137735 has offset 0).

The definition of A137735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137735.P14472294920573122395

`char[∑[2*n]]+floor(sqrt(n))`
-/

namespace A137735.P14472294920573122395
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + Nat.sqrt n

end

end A137735.P14472294920573122395

namespace A137735

/-- `char[∑[2*n]]+floor(sqrt(n))` -/
def P14472294920573122395.Spec : Prop :=
  ∀ n, (P14472294920573122395.a n : ℤ) = A137735 n

end A137735

/-! ## A137735.P16137301670135378072

`round(A000267(n)-sqrt(n))`
-/

namespace A137735.P16137301670135378072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000267 n : ℝ) - Real.sqrt (n : ℝ))

end

end A137735.P16137301670135378072

namespace A137735

/-- `round(A000267(n)-sqrt(n))` -/
def P16137301670135378072.Spec : Prop :=
  ∀ n, P16137301670135378072.a n = A137735 n

end A137735

/-! ## A137735.P15342705716827380526

`round(A172471(2*n+1)-sqrt(n))`
-/

namespace A137735.P15342705716827380526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A172471 (2 * n + 1) : ℝ) - Real.sqrt (n : ℝ))

end

end A137735.P15342705716827380526

namespace A137735

/-- `round(A172471(2*n+1)-sqrt(n))` -/
def P15342705716827380526.Spec : Prop :=
  ∀ n, P15342705716827380526.a n = A137735 n

end A137735

/-! ## A137735.P991700169822903993

`A000194(n+1-A384688(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A137735

/-- `A000194(n+1-A384688(n))` -/
def P991700169822903993.Spec : Prop :=
  ∀ n, P991700169822903993.a n = A137735 n

theorem P991700169822903993.correct : P991700169822903993.Spec := by
  intro n
  simp only [A137735]

end A137735

/-! ## A137735.P475000277902355447

`A000196(2*n+1-A053187(n))`
-/

namespace A137735.P475000277902355447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((2 * n + 1 : ℤ) - A053187 n).toNat

end

end A137735.P475000277902355447

namespace A137735

/-- `A000196(2*n+1-A053187(n))` -/
def P475000277902355447.Spec : Prop :=
  ∀ n, P475000277902355447.a n = A137735 n

end A137735

/-! ## A137735.P12982887392270537803

`A000196(A000217(A000267(n))-n)`
-/

namespace A137735.P12982887392270537803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000217 (A000267 n).toNat - (n : ℤ)).toNat

end

end A137735.P12982887392270537803

namespace A137735

/-- `A000196(A000217(A000267(n))-n)` -/
def P12982887392270537803.Spec : Prop :=
  ∀ n, P12982887392270537803.a n = A137735 n

end A137735

/-! ## A137735.P6979718844172146056

`A000194(A083479(n+1)+A082375(n))`
-/

namespace A137735.P6979718844172146056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A083479 (n + 1) + A082375 n).toNat

end

end A137735.P6979718844172146056

namespace A137735

/-- `A000194(A083479(n+1)+A082375(n))` -/
def P6979718844172146056.Spec : Prop :=
  ∀ n, P6979718844172146056.a n = A137735 n

end A137735

/-! ## A137735.P15550190745124831872

`A074294(A245552(n+1)+A048760(n))`
-/

namespace A137735.P15550190745124831872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (A245552 (n + 1) + A048760 n).toNat

end

end A137735.P15550190745124831872

namespace A137735

/-- `A074294(A245552(n+1)+A048760(n))` -/
def P15550190745124831872.Spec : Prop :=
  ∀ n, P15550190745124831872.a n = A137735 n

end A137735

/-! ## A137735.P9587830673895285222

`A002024(n+1-A000217(A000194(n)))`
-/

namespace A137735.P9587830673895285222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 ((n + 1 : ℤ) - A000217 (A000194 n).toNat).toNat

end

end A137735.P9587830673895285222

namespace A137735

/-- `A002024(n+1-A000217(A000194(n)))` -/
def P9587830673895285222.Spec : Prop :=
  ∀ n, P9587830673895285222.a n = A137735 n

end A137735

/-! ## A137735.P9219703340761847534

`A000196(A053187(n+1)-A038760(n))`
-/

namespace A137735.P9219703340761847534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A053187 (n + 1) - A038760 n).toNat

end

end A137735.P9219703340761847534

namespace A137735

/-- `A000196(A053187(n+1)-A038760(n))` -/
def P9219703340761847534.Spec : Prop :=
  ∀ n, P9219703340761847534.a n = A137735 n

end A137735

/-! ## A137735.P9815747374786153424

`A000196(A174803(n)+1-A053187(n))`
-/

namespace A137735.P9815747374786153424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A174803 n + (1 - A053187 n)).toNat

end

end A137735.P9815747374786153424

namespace A137735

/-- `A000196(A174803(n)+1-A053187(n))` -/
def P9815747374786153424.Spec : Prop :=
  ∀ n, P9815747374786153424.a n = A137735 n

end A137735

/-! ## A137735.P6627764824989709927

`A000194(A232091(n+1)-A000194(n))`
-/

namespace A137735.P6627764824989709927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A232091 (n + 1) - A000194 n).toNat

end

end A137735.P6627764824989709927

namespace A137735

/-- `A000194(A232091(n+1)-A000194(n))` -/
def P6627764824989709927.Spec : Prop :=
  ∀ n, P6627764824989709927.a n = A137735 n

end A137735

/-! ## A137735.P18310506821673180155

`A000196(1-(A053187(n)-A174803(n)))`
-/

namespace A137735.P18310506821673180155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (1 - (A053187 n - A174803 n)).toNat

end

end A137735.P18310506821673180155

namespace A137735

/-- `A000196(1-(A053187(n)-A174803(n)))` -/
def P18310506821673180155.Spec : Prop :=
  ∀ n, P18310506821673180155.a n = A137735 n

end A137735

/-! ## A137735.P7876169655657660210

`A000196(A122196(n+1)+A000196(n)²)`
-/

namespace A137735.P7876169655657660210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A122196 (n + 1) + A000196 n ^ 2).toNat

end

end A137735.P7876169655657660210

namespace A137735

/-- `A000196(A122196(n+1)+A000196(n)²)` -/
def P7876169655657660210.Spec : Prop :=
  ∀ n, P7876169655657660210.a n = A137735 n

end A137735

/-! ## A137735.P3641122505686519059

`A000196(A209302(n+1)+A000196(n)²)`
-/

namespace A137735.P3641122505686519059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A209302 (n + 1) + A000196 n ^ 2).toNat

end

end A137735.P3641122505686519059

namespace A137735

/-- `A000196(A209302(n+1)+A000196(n)²)` -/
def P3641122505686519059.Spec : Prop :=
  ∀ n, P3641122505686519059.a n = A137735 n

end A137735

/-! ## A137735.P208415913666343590

`A000194((A000194(n)-A000267(n))²)`
-/

namespace A137735.P208415913666343590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((A000194 n - A000267 n) ^ 2).toNat

end

end A137735.P208415913666343590

namespace A137735

/-- `A000194((A000194(n)-A000267(n))²)` -/
def P208415913666343590.Spec : Prop :=
  ∀ n, P208415913666343590.a n = A137735 n

end A137735

/-! ## A137735.P5068889608037075012

`A000194(A038759(A245552(n+1)+n))`
-/

namespace A137735.P5068889608037075012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A038759 (A245552 (n + 1) + (n : ℤ)).toNat).toNat

end

end A137735.P5068889608037075012

namespace A137735

/-- `A000194(A038759(A245552(n+1)+n))` -/
def P5068889608037075012.Spec : Prop :=
  ∀ n, P5068889608037075012.a n = A137735 n

end A137735

/-! ## A137735.P6230980327063540047

`A000196(A000037(n+1-A384688(n)))`
-/

namespace A137735.P6230980327063540047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000037 ((n + 1 : ℤ) - A384688 n).toNat).toNat

end

end A137735.P6230980327063540047

namespace A137735

/-- `A000196(A000037(n+1-A384688(n)))` -/
def P6230980327063540047.Spec : Prop :=
  ∀ n, P6230980327063540047.a n = A137735 n

end A137735

/-! ## A137735.P13658223219017143689

`A033265(A129523(n+2))`
-/

namespace A137735.P13658223219017143689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (A129523 (n + 2)).toNat

end

end A137735.P13658223219017143689

namespace A137735

/-- `A033265(A129523(n+2))` -/
def P13658223219017143689.Spec : Prop :=
  ∀ n, P13658223219017143689.a n = A137735 n

end A137735

/-!
# A137736: Number of set partitions of [n*(n-1)/2].

The programs for A137736, there is no canonical definition to state claims against.
-/

/-! ## A137736.P5188078646217821347

`A000110(n*(n-1)/2)`
-/

namespace A137736.P5188078646217821347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (SequenceMachineLib.roundAway (((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2)).toNat

end

end A137736.P5188078646217821347

/-! ## A137736.P13676999560547462750

`A192987(C(n, 2))`
-/

namespace A137736.P13676999560547462750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192987 (Nat.choose n 2)

end

end A137736.P13676999560547462750

/-! ## A137736.P18313203349485182271

`abs(A292935(C(n, 2)))`
-/

namespace A137736.P18313203349485182271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 (Nat.choose n 2)|

end

end A137736.P18313203349485182271

/-! ## A137736.P6220426438425007531

`A188164(n²-n)`
-/

namespace A137736.P6220426438425007531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188164 (n ^ 2 - n)

end

end A137736.P6220426438425007531

/-! ## A137736.P14786239745910463193

`A011972(A050534(n))`
-/

namespace A137736.P14786239745910463193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A050534 n).toNat

end

end A137736.P14786239745910463193

/-!
# A137737: Number of circular permutations of the multiset {1,1,2,2,...,n,n} (up to rotations) with even distances between equal elements.

The programs for A137737, there is no canonical definition to state claims against.
-/

/-! ## A137737.P9823106588381281763

`A000035(n)*A137749(A065033(n))`
-/

namespace A137737.P9823106588381281763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A137749 (A065033 n).toNat

end

end A137737.P9823106588381281763

/-! ## A137737.P724823440164612319

`∑[A062157(n)*A137749(A065033(n))]`
-/

namespace A137737.P724823440164612319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A137749 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137737.P724823440164612319

/-! ## A137737.P13124130783855054539

`lcm(A007814(n+1), A137749(A065033(n)))`
-/

namespace A137737.P13124130783855054539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007814 (n + 1)) (A137749 (A065033 n).toNat)

end

end A137737.P13124130783855054539

/-! ## A137737.P9386496301932077680

`A000035(n)*A137749(A008619(n))`
-/

namespace A137737.P9386496301932077680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A137749 (A008619 n).toNat

end

end A137737.P9386496301932077680

/-!
# A137739: Number of different strings of length n+6 obtained from "123...n" by iteratively duplicating any substring.

The programs for A137739, there is no canonical definition to state claims against.
-/

/-! ## A137739.P4478646239098721939

`A137743(A055999(n+4))`
-/

namespace A137739.P4478646239098721939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137743 (A055999 (n + 4)).toNat

end

end A137739.P4478646239098721939

/-!
# A137740: Number of different strings of length n+5 obtained from "123...n" by iteratively duplicating any substring.

The programs for A137740, there is no canonical definition to state claims against.
-/

/-! ## A137740.P13238913346811000371

`A137743(A052905(n+3))`
-/

namespace A137740.P13238913346811000371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137743 (A052905 (n + 3)).toNat

end

end A137740.P13238913346811000371

/-! ## A137740.P1289342983564266417

`A137743(eq[3, A219347(n)])`
-/

namespace A137740.P1289342983564266417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137743 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137740.P1289342983564266417

/-!
# A137741: Number of different strings of length n+4 obtained from "123...n" by iteratively duplicating any substring.

The programs for A137741, there is no canonical definition to state claims against.
-/

/-! ## A137741.P3690664243693273284

`A137743(Δ[A264443(n)])`
-/

namespace A137741.P3690664243693273284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137743 (f1 (n + 1) - f1 n).toNat

end

end A137741.P3690664243693273284

/-! ## A137741.P17748565835983166039

`A137743(A046691(n+3))`
-/

namespace A137741.P17748565835983166039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137743 (A046691 (n + 3)).toNat

end

end A137741.P17748565835983166039

/-! ## A137741.P16488257711571284816

`A137743(A056115(n)+11)`
-/

namespace A137741.P16488257711571284816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137743 (A056115 n + 11).toNat

end

end A137741.P16488257711571284816

/-!
# A137742: a(n) = (n-1)*(n+4)*(n+6)/6 for n > 1, a(1)=1.

The programs for A137742, the canonical program `A137742.P9641666668642039690` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137742 has offset 1).

The definition of A137742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137742.P9641666668642039690

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=8, a(2)=21, a(3)=40, a(4)=66`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137742

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9641666668642039690.Spec : Prop :=
  ∀ n, P9641666668642039690.a n = A137742 (n + 1)

theorem P9641666668642039690.correct : P9641666668642039690.Spec := by
  intro n
  simp only [A137742, Nat.add_sub_cancel]

end A137742

/-! ## A137742.P17248295900589870322

`∑[∑[char[2]+3+n]]-2`
-/

namespace A137742.P17248295900589870322
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + 3 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A137742.P17248295900589870322

namespace A137742

/-- `∑[∑[char[2]+3+n]]-2` -/
def P17248295900589870322.Spec : Prop :=
  ∀ n, P17248295900589870322.a n = A137742 (n + 1)

end A137742

/-! ## A137742.P9591897559389833560

`∑[∑[a(n-1)+1]]` with `a(0)=1, a(1)=6, a(2)=6, a(3)=6`
-/

namespace A137742.P9591897559389833560
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 6, 6] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137742.P9591897559389833560

namespace A137742

/-- `∑[∑[a(n-1)+1]]` -/
def P9591897559389833560.Spec : Prop :=
  ∀ n, (P9591897559389833560.a n : ℤ) = A137742 (n + 1)

end A137742

/-! ## A137742.P2027980750371998886

`∑[∑[C(2, n)+n+2]+n-2]`
-/

namespace A137742.P2027980750371998886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n + (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137742.P2027980750371998886

namespace A137742

/-- `∑[∑[C(2, n)+n+2]+n-2]` -/
def P2027980750371998886.Spec : Prop :=
  ∀ n, P2027980750371998886.a n = A137742 (n + 1)

end A137742

/-! ## A137742.P9272717429162414674

`record[C(n+1, 3)-(n+1)*(n-1)]`
-/

namespace A137742.P9272717429162414674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 3 : ℤ) - (n + 1 : ℤ) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137742.P9272717429162414674

namespace A137742

/-- `record[C(n+1, 3)-(n+1)*(n-1)]` -/
def P9272717429162414674.Spec : Prop :=
  ∀ n, P9272717429162414674.a n = A137742 (n + 1)

end A137742

/-! ## A137742.P13421881086259041666

`xor(A000007(n), A275874(n+4))`
-/

namespace A137742.P13421881086259041666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A275874 (n + 4))

end

end A137742.P13421881086259041666

namespace A137742

/-- `xor(A000007(n), A275874(n+4))` -/
def P13421881086259041666.Spec : Prop :=
  ∀ n, P13421881086259041666.a n = A137742 (n + 1)

end A137742

/-! ## A137742.P12777451744218436243

`record[∑[∑[n-3]+4]]`
-/

namespace A137742.P12777451744218436243
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137742.P12777451744218436243

namespace A137742

/-- `record[∑[∑[n-3]+4]]` -/
def P12777451744218436243.Spec : Prop :=
  ∀ n, P12777451744218436243.a n = A137742 (n + 1)

end A137742

/-! ## A137742.P1169773487077149250

`∑[A283595(∑[n+3])]`
-/

namespace A137742.P1169773487077149250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283595 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137742.P1169773487077149250

namespace A137742

/-- `∑[A283595(∑[n+3])]` -/
def P1169773487077149250.Spec : Prop :=
  ∀ n, P1169773487077149250.a n = A137742 (n + 1)

end A137742

/-! ## A137742.P12210131345809286073

`∑[A182834(A182834(∑[n+1]))]`
-/

namespace A137742.P12210131345809286073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182834 (A182834 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137742.P12210131345809286073

namespace A137742

/-- `∑[A182834(A182834(∑[n+1]))]` -/
def P12210131345809286073.Spec : Prop :=
  ∀ n, P12210131345809286073.a n = A137742 (n + 1)

end A137742

/-! ## A137742.P18151187829587141427

`A247023(A046691(n+1))`
-/

namespace A137742.P18151187829587141427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247023 (A046691 (n + 1)).toNat

end

end A137742.P18151187829587141427

namespace A137742

/-- `A247023(A046691(n+1))` -/
def P18151187829587141427.Spec : Prop :=
  ∀ n, P18151187829587141427.a n = A137742 (n + 1)

end A137742

/-! ## A137742.P3185047317964718707

`A201634(A167614(n+1))`
-/

namespace A137742.P3185047317964718707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201634 (A167614 (n + 1)).toNat

end

end A137742.P3185047317964718707

namespace A137742

/-- `A201634(A167614(n+1))` -/
def P3185047317964718707.Spec : Prop :=
  ∀ n, P3185047317964718707.a n = A137742 (n + 1)

end A137742

/-! ## A137742.P9743894086412549083

`A247023(eq[0, A025581(n+3)])`
-/

namespace A137742.P9743894086412549083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137742.P9743894086412549083

namespace A137742

/-- `A247023(eq[0, A025581(n+3)])` -/
def P9743894086412549083.Spec : Prop :=
  ∀ n, P9743894086412549083.a n = A137742 (n + 1)

end A137742

/-! ## A137742.P6511149642377619809

`A247023(eq[2, A025581(n)]-1)`
-/

namespace A137742.P6511149642377619809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A137742.P6511149642377619809

namespace A137742

/-- `A247023(eq[2, A025581(n)]-1)` -/
def P6511149642377619809.Spec : Prop :=
  ∀ n, P6511149642377619809.a n = A137742 (n + 1)

end A137742

/-!
# A137743: Number T(m,n) of different strings of length n obtained from "123...m" by iteratively duplicating any substring; formatted as upper right triangle.

The programs for A137743, there is no canonical definition to state claims against.
-/

/-! ## A137743.P9364498330074175881

`A099239(n)-A014502(A222418(2*n+1))`
-/

namespace A137743.P9364498330074175881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099239 n - A014502 (A222418 (2 * n + 1)).toNat

end

end A137743.P9364498330074175881

/-! ## A137743.P3760030285136361856

`A099239(n)-A010054(A168292(n))`
-/

namespace A137743.P3760030285136361856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099239 n - A010054 (A168292 n).toNat

end

end A137743.P3760030285136361856

/-! ## A137743.P16557467990601592433

`A099239(n)-A185284(A017900(n))`
-/

namespace A137743.P16557467990601592433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099239 n - A185284 (A017900 n).toNat

end

end A137743.P16557467990601592433

/-! ## A137743.P1675278539627474733

`A099239(n)-A185284(A025148(n))`
-/

namespace A137743.P1675278539627474733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099239 n - A185284 (A025148 n).toNat

end

end A137743.P1675278539627474733

/-! ## A137743.P17269348109032087343

`A099239(n)-A102683(A185044(n))`
-/

namespace A137743.P17269348109032087343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099239 n - A102683 (A185044 n).toNat

end

end A137743.P17269348109032087343

/-!
# A137744: Number of different strings of length n obtained from "abcd" by iteratively duplicating any substring.

The programs for A137744, there is no canonical definition to state claims against.
-/

/-! ## A137744.P11609851736409751501

`A111855(A318903(n+7))`
-/

namespace A137744.P11609851736409751501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111855 (A318903 (n + 7)).toNat

end

end A137744.P11609851736409751501

/-! ## A137744.P318438642757255991

`A137747(n)+A261664(n)-A008620(A051164(n))`
-/

namespace A137744.P318438642757255991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137747 n + (A261664 n - A008620 (A051164 n).toNat)

end

end A137744.P318438642757255991

/-! ## A137744.P8971043561636904255

`A137747(n)+A261664(n)-A008620(A137256(n))`
-/

namespace A137744.P8971043561636904255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137747 n + (A261664 n - A008620 (A137256 n).toNat)

end

end A137744.P8971043561636904255

/-! ## A137744.P10046397320662219785

`A000418(n+1)+A261664(n)-A008620(A051164(n))`
-/

namespace A137744.P10046397320662219785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000418 (n + 1) + (A261664 n - A008620 (A051164 n).toNat)

end

end A137744.P10046397320662219785

/-! ## A137744.P9172293663778408846

`A000418(n+1)+A261664(n)-A008620(A137256(n))`
-/

namespace A137744.P9172293663778408846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000418 (n + 1) + (A261664 n - A008620 (A137256 n).toNat)

end

end A137744.P9172293663778408846

/-!
# A137745: Number of different strings of length n obtained from "abcde" by iteratively duplicating any substring.

The programs for A137745, there is no canonical definition to state claims against.
-/

/-! ## A137745.P3611530821304612020

`A027870(2*A078155(n+1))`
-/

namespace A137745.P3611530821304612020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 (2 * A078155 (n + 1)).toNat

end

end A137745.P3611530821304612020

/-! ## A137745.P8964345484244571205

`A168201(A149133(n))`
-/

namespace A137745.P8964345484244571205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A149133 n).toNat

end

end A137745.P8964345484244571205

/-! ## A137745.P16729283990129809781

`A350459(A003242(n))`
-/

namespace A137745.P16729283990129809781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350459 (A003242 n).toNat

end

end A137745.P16729283990129809781

/-! ## A137745.P1082933880189440909

`A327469(A051573(n))`
-/

namespace A137745.P1082933880189440909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327469 (A051573 n).toNat

end

end A137745.P1082933880189440909

/-! ## A137745.P12604769774107402884

`A374744(A005676(n))`
-/

namespace A137745.P12604769774107402884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374744 (A005676 n).toNat

end

end A137745.P12604769774107402884

/-!
# A137746: Number of different strings of length n obtained from "abcdef" by iteratively duplicating any substring.

The programs for A137746, there is no canonical definition to state claims against.
-/

/-! ## A137746.P9197469039073032365

`floor(A230513(∑[n+1]+2)/63)`
-/

namespace A137746.P9197469039073032365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A230513 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / 63⌋

end

end A137746.P9197469039073032365

/-! ## A137746.P1379862531190029880

`∑[A125505(A023421(n))]`
-/

namespace A137746.P1379862531190029880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125505 (A023421 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137746.P1379862531190029880

/-! ## A137746.P4449169716904448281

`A243847(∏[A349980(n)])`
-/

namespace A137746.P4449169716904448281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243847 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137746.P4449169716904448281

/-! ## A137746.P6378146199391526002

`A051889(∑[A101552(n)²])`
-/

namespace A137746.P6378146199391526002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101552 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137746.P6378146199391526002

/-! ## A137746.P16260887023599441281

`Δ[A025443(∑[A056971(n)])]`
-/

namespace A137746.P16260887023599441281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056971 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137746.P16260887023599441281

/-!
# A137747: Number of different strings of length n obtained from "abcdefg" by iteratively duplicating any substring.

The programs for A137747, there is no canonical definition to state claims against.
-/

/-! ## A137747.P9882332591922697668

`∑[A268443(A001611(n)-n)]`
-/

namespace A137747.P9882332591922697668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268443 (A001611 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137747.P9882332591922697668

/-! ## A137747.P15827571144318480286

`A137579(A036638(n))+A000418(n+1)`
-/

namespace A137747.P15827571144318480286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A036638 n).toNat + A000418 (n + 1)

end

end A137747.P15827571144318480286

/-! ## A137747.P16317669301748299414

`A137579(A036638(n))+A036632(n+1)`
-/

namespace A137747.P16317669301748299414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A036638 n).toNat + A036632 (n + 1)

end

end A137747.P16317669301748299414

/-! ## A137747.P14930568180154568959

`A137579(A036638(n))+A036646(n+1)`
-/

namespace A137747.P14930568180154568959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A036638 n).toNat + A036646 (n + 1)

end

end A137747.P14930568180154568959

/-! ## A137747.P13436768483289066905

`A114994(A137361(n)^(A107652(n)+1))`
-/

namespace A137747.P13436768483289066905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 (SequenceMachineLib.roundAway ((A137361 n : ℚ) ^ (A107652 n + 1 : ℤ))).toNat

end

end A137747.P13436768483289066905

/-!
# A137748: Number of different strings of length n obtained from "abcdefgh" by iteratively duplicating any substring.

The programs for A137748, there is no canonical definition to state claims against.
-/

/-! ## A137748.P12179754513970731272

`A065714(A259773(n)+A238919(n))`
-/

namespace A137748.P12179754513970731272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065714 (A259773 n + A238919 n).toNat

end

end A137748.P12179754513970731272

/-! ## A137748.P9236168018352762314

`A122880(A003114(n*A136708(n)))`
-/

namespace A137748.P9236168018352762314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122880 (A003114 ((n : ℤ) * A136708 n).toNat).toNat

end

end A137748.P9236168018352762314

/-! ## A137748.P82830119699159466

`A036633(A036600(n+1))+A036633(n+1)`
-/

namespace A137748.P82830119699159466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036633 (A036600 (n + 1)).toNat + A036633 (n + 1)

end

end A137748.P82830119699159466

/-! ## A137748.P1169666461908087824

`A036640(A036600(n+1))+A036640(n+1)`
-/

namespace A137748.P1169666461908087824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036640 (A036600 (n + 1)).toNat + A036640 (n + 1)

end

end A137748.P1169666461908087824

/-! ## A137748.P7430015702554507384

`A374991(C(n+1, 9))`
-/

namespace A137748.P7430015702554507384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374991 (Nat.choose (n + 1) 9)

end

end A137748.P7430015702554507384

/-!
# A137749: Number of circular permutations of the multiset {1,1,2,2,...,2n,2n} (up to rotations) with even distances between equal elements.

The programs for A137749, there is no canonical definition to state claims against.
-/

/-! ## A137749.P7907617142212165004

`A137737(2*(n+1))`
-/

namespace A137749.P7907617142212165004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137737 (2 * (n + 1))

end

end A137749.P7907617142212165004

/-! ## A137749.P9913097074057454912

`record[A137737(n+2)]`
-/

namespace A137749.P9913097074057454912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137749.P9913097074057454912

/-!
# A137750: Number of distinct residues in the Fibonacci sequence mod the n-th prime.

The programs for A137750, there is no canonical definition to state claims against.
-/

/-! ## A137750.P13314760766458362297

`A066853(A000040(n+1))`
-/

namespace A137750.P13314760766458362297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066853 (A000040 (n + 1)).toNat

end

end A137750.P13314760766458362297

/-! ## A137750.P463076471699077234

`A000040(n+1)-A137751(n+1)`
-/

namespace A137750.P463076471699077234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A137751 (n + 1)

end

end A137750.P463076471699077234

/-! ## A137750.P7923237742438726612

`record[A006530(n+2)]-A137751(n+1)`
-/

namespace A137750.P7923237742438726612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A137751 (n + 1)

end

end A137750.P7923237742438726612

/-! ## A137750.P8298158727728528048

`A066853(p?[comp[n²]])`
-/

namespace A137750.P8298158727728528048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066853 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A137750.P8298158727728528048

/-! ## A137750.P14820473086172385841

`A066853(A008578(n+2))`
-/

namespace A137750.P14820473086172385841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066853 (A008578 (n + 2)).toNat

end

end A137750.P14820473086172385841

/-! ## A137750.P17936785398752764075

`A066853(A182986(n+2))`
-/

namespace A137750.P17936785398752764075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066853 (A182986 (n + 2)).toNat

end

end A137750.P17936785398752764075

/-! ## A137750.P17160949172303937809

`A066853(record[A006530(n+2)])`
-/

namespace A137750.P17160949172303937809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066853 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137750.P17160949172303937809

/-! ## A137750.P4183256882398024174

`A066853(record[A014963(n+2)])`
-/

namespace A137750.P4183256882398024174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066853 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137750.P4183256882398024174

/-! ## A137750.P14755382531583009839

`A066853(record[A020639(n+2)])`
-/

namespace A137750.P14755382531583009839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066853 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137750.P14755382531583009839

/-! ## A137750.P1617146951429500628

`A066853(A223489(n+1)+A223488(n+1))`
-/

namespace A137750.P1617146951429500628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066853 (A223489 (n + 1) + A223488 (n + 1)).toNat

end

end A137750.P1617146951429500628

/-! ## A137750.P1774850597437717349

`A223488(n+1)+A223489(n+1)-A137751(n+1)`
-/

namespace A137750.P1774850597437717349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223488 (n + 1) + (A223489 (n + 1) - A137751 (n + 1))

end

end A137750.P1774850597437717349

/-!
# A137751: a(n) = number of missing residues in the Fibonacci sequence mod the n-th prime number.

The programs for A137751, there is no canonical definition to state claims against.
-/

/-! ## A137751.P15221198949279803666

`Δ[A007504(n)]-A137750(n+1)`
-/

namespace A137751.P15221198949279803666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A137750 (n + 1)

end

end A137751.P15221198949279803666

/-! ## A137751.P10403812599096024104

`A000040(n+1)-A137750(n+1)`
-/

namespace A137751.P10403812599096024104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A137750 (n + 1)

end

end A137751.P10403812599096024104

/-! ## A137751.P14738889380926017690

`A118965(A000040(n+1))`
-/

namespace A137751.P14738889380926017690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118965 (A000040 (n + 1)).toNat

end

end A137751.P14738889380926017690

/-! ## A137751.P8742231970214628634

`A118965(A006005(n+1))`
-/

namespace A137751.P8742231970214628634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118965 (A006005 (n + 1)).toNat

end

end A137751.P8742231970214628634

/-! ## A137751.P21975164920432561

`A118965(A161847(n+1))`
-/

namespace A137751.P21975164920432561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118965 (A161847 (n + 1)).toNat

end

end A137751.P21975164920432561

/-! ## A137751.P639521782959419166

`A118965(A008578(n+2))`
-/

namespace A137751.P639521782959419166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118965 (A008578 (n + 2)).toNat

end

end A137751.P639521782959419166

/-! ## A137751.P9756484269103514063

`A118965(A075643(n+2))`
-/

namespace A137751.P9756484269103514063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118965 (A075643 (n + 2)).toNat

end

end A137751.P9756484269103514063

/-! ## A137751.P17933689636661215526

`A118965(A116974(n+2))`
-/

namespace A137751.P17933689636661215526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118965 (A116974 (n + 2)).toNat

end

end A137751.P17933689636661215526

/-! ## A137751.P13363229828601759174

`A118965(A171525(n+2))`
-/

namespace A137751.P13363229828601759174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118965 (A171525 (n + 2)).toNat

end

end A137751.P13363229828601759174

/-! ## A137751.P3101920231217224979

`A118965(A175787(n+2))`
-/

namespace A137751.P3101920231217224979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118965 (A175787 (n + 2)).toNat

end

end A137751.P3101920231217224979

/-! ## A137751.P3071221227861656087

`A118965(A182986(n+2))`
-/

namespace A137751.P3071221227861656087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118965 (A182986 (n + 2)).toNat

end

end A137751.P3071221227861656087

/-! ## A137751.P109223080127044567

`A118965(record[A006530(n+2)])`
-/

namespace A137751.P109223080127044567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118965 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137751.P109223080127044567

/-! ## A137751.P12257719312739324722

`A118965(record[A014963(n+2)])`
-/

namespace A137751.P12257719312739324722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118965 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137751.P12257719312739324722

/-! ## A137751.P5392035600023817319

`A118965(record[A020639(n+2)])`
-/

namespace A137751.P5392035600023817319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118965 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137751.P5392035600023817319

/-! ## A137751.P7676335899232104908

`A118965(A223489(n+1)+A223488(n+1))`
-/

namespace A137751.P7676335899232104908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118965 (A223489 (n + 1) + A223488 (n + 1)).toNat

end

end A137751.P7676335899232104908

/-! ## A137751.P1977407983457200624

`A223488(n+1)+A223489(n+1)-A137750(n+1)`
-/

namespace A137751.P1977407983457200624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223488 (n + 1) + (A223489 (n + 1) - A137750 (n + 1))

end

end A137751.P1977407983457200624

/-!
# A137752: First numerator and then denominator (left to right) of Leibniz's harmonic-like triangle.

The programs for A137752, there is no canonical definition to state claims against.
-/

/-! ## A137752.P15864839727125551210

`A137753(abs(xor(n, -2)))`
-/

namespace A137752.P15864839727125551210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137753 |Int.xor (n : ℤ) (-2)|.toNat

end

end A137752.P15864839727125551210

/-! ## A137752.P15610281370245746730

`A137753(xor(1, n)+1)`
-/

namespace A137752.P15610281370245746730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137753 (Nat.xor 1 n + 1)

end

end A137752.P15610281370245746730

/-! ## A137752.P16160970468889621593

`A137753(-xor(n, -2))`
-/

namespace A137752.P16160970468889621593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137753 (-Int.xor (n : ℤ) (-2)).toNat

end

end A137752.P16160970468889621593

/-! ## A137752.P7092192359208693667

`A137753(2*or(1, n)-n)`
-/

namespace A137752.P7092192359208693667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137753 (2 * Nat.lor 1 n - n)

end

end A137752.P7092192359208693667

/-! ## A137752.P16014568157546508795

`A137753((-1)^n+1+n)`
-/

namespace A137752.P16014568157546508795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137753 ((-1) ^ n + 1 + (n : ℤ)).toNat

end

end A137752.P16014568157546508795

/-! ## A137752.P16133705508931852715

`or(char[1], A137753(A014681(n+1)))`
-/

namespace A137752.P16133705508931852715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A137753 (A014681 (n + 1)).toNat)

end

end A137752.P16133705508931852715

/-! ## A137752.P13081566545772493930

`or(char[1], A137753(A103889(n+1)))`
-/

namespace A137752.P13081566545772493930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A137753 (A103889 (n + 1)).toNat)

end

end A137752.P13081566545772493930

/-! ## A137752.P12252663994750227810

`∑{d}[A137753(A014681(n+1)), A000010(#)]`
-/

namespace A137752.P12252663994750227810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137753 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A137752.P12252663994750227810

/-! ## A137752.P4577604557727992389

`∑{d}[A137753(A103889(n+1)), A000010(#)]`
-/

namespace A137752.P4577604557727992389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137753 (A103889 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A137752.P4577604557727992389

/-! ## A137752.P3860084853801221865

`A014963(6*(n+1))*A137753(A014681(n+1))`
-/

namespace A137752.P3860084853801221865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A137753 (A014681 (n + 1)).toNat

end

end A137752.P3860084853801221865

/-!
# A137753: First denominator and then numerator (left to right) of Leibniz's harmonic-like triangle.

The programs for A137753, there is no canonical definition to state claims against.
-/

/-! ## A137753.P415796697196626301

`A137752(abs(xor(n, -2)))`
-/

namespace A137753.P415796697196626301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137752 |Int.xor (n : ℤ) (-2)|.toNat

end

end A137753.P415796697196626301

/-! ## A137753.P13763557059806416815

`A137752(xor(1, n)+1)`
-/

namespace A137753.P13763557059806416815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137752 (Nat.xor 1 n + 1)

end

end A137753.P13763557059806416815

/-! ## A137753.P16624900000853617899

`A137752(-xor(n, -2))`
-/

namespace A137753.P16624900000853617899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137752 (-Int.xor (n : ℤ) (-2)).toNat

end

end A137753.P16624900000853617899

/-! ## A137753.P11590210051065471753

`A137752(n-Δ[or(1, -n)])`
-/

namespace A137753.P11590210051065471753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137752 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A137753.P11590210051065471753

/-! ## A137753.P7526378119303146693

`A137752((-1)^n+1+n)`
-/

namespace A137753.P7526378119303146693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137752 ((-1) ^ n + 1 + (n : ℤ)).toNat

end

end A137753.P7526378119303146693

/-! ## A137753.P202705674550644336

`or(char[1], A137752(A014681(n+1)))`
-/

namespace A137753.P202705674550644336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A137752 (A014681 (n + 1)).toNat)

end

end A137753.P202705674550644336

/-! ## A137753.P12321693396369452939

`∑{d}[A137752(A103889(n+1)), A000010(#)]`
-/

namespace A137753.P12321693396369452939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137752 (A103889 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A137753.P12321693396369452939

/-! ## A137753.P9819807217534815732

`A137752(A014681(n+1))%∑[A000032(n)]`
-/

namespace A137753.P9819807217534815732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137752 (A014681 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137753.P9819807217534815732

/-! ## A137753.P4995952520866644152

`A000034(2*n)*A137752(A014681(n+1))`
-/

namespace A137753.P4995952520866644152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A137752 (A014681 (n + 1)).toNat

end

end A137753.P4995952520866644152

/-! ## A137753.P8716551136696432640

`A007318(C(2, n))*A137752(A014681(n+1))`
-/

namespace A137753.P8716551136696432640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A137752 (A014681 (n + 1)).toNat

end

end A137753.P8716551136696432640

/-!
# A137754: Numerators (left to right) of Leibniz's harmonic-like triangle.

The programs for A137754, there is no canonical definition to state claims against.
-/

/-! ## A137754.P6509138873207333524

`A193816(A057944(n)+A004197(n))`
-/

namespace A137754.P6509138873207333524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193816 (A057944 n + A004197 n).toNat

end

end A137754.P6509138873207333524

/-! ## A137754.P7399490544759329718

`A193844(A057944(n)+A004197(n))`
-/

namespace A137754.P7399490544759329718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (A057944 n + A004197 n).toNat

end

end A137754.P7399490544759329718

/-! ## A137754.P4041057163460669060

`A193817(A087061(n)+A057944(n))`
-/

namespace A137754.P4041057163460669060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193817 (A087061 n + A057944 n).toNat

end

end A137754.P4041057163460669060

/-! ## A137754.P10842978534117959825

`A137752(Δ[n²])`
-/

namespace A137754.P10842978534117959825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137752 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A137754.P10842978534117959825

/-! ## A137754.P5023809106357002376

`A137753(2*(n+1))`
-/

namespace A137754.P5023809106357002376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137753 (2 * (n + 1))

end

end A137754.P5023809106357002376

/-!
# A137755: Nontrivial numerators (left to right) of Leibniz's harmonic-like triangle.

The programs for A137755, there is no canonical definition to state claims against.
-/

/-! ## A137755.P10007420861659896164

`A137754(lt[1, A002262(n)])`
-/

namespace A137755.P10007420861659896164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A137755.P10007420861659896164

/-! ## A137755.P922284506344525913

`A137754(lt[1, A085838(n)])`
-/

namespace A137755.P922284506344525913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A137755.P922284506344525913

/-! ## A137755.P4465822190719669494

`A137754(lt[1, A139600(n)])`
-/

namespace A137755.P4465822190719669494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A137755.P4465822190719669494

/-! ## A137755.P6276120545960955197

`A137754(lt[1, A144048(n)])`
-/

namespace A137755.P6276120545960955197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A137755.P6276120545960955197

/-! ## A137755.P10544121087274713486

`A137754(lt[1, A179454(n)])`
-/

namespace A137755.P10544121087274713486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A137755.P10544121087274713486

/-!
# A137756: Nontrivial elements in writing the numerator of an element first and then the denominator of that element (left to right) of Leibniz's harmonic-like triangle. That is, the nontrivial elements of A137752.

The programs for A137756, there is no canonical definition to state claims against.
-/

/-! ## A137756.P3820179316660725970

`A137752(lt[1, A137752(n+1)]+1)`
-/

namespace A137756.P3820179316660725970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137752 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A137756.P3820179316660725970

/-! ## A137756.P4291518848945612572

`A159081(p?[A008578(A137752(n+1))])`
-/

namespace A137756.P4291518848945612572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A137752 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159081 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137756.P4291518848945612572

/-! ## A137756.P7187644173254064453

`A137752(lt[A177702(n), A137753(n+1)])`
-/

namespace A137756.P7187644173254064453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137752 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A137756.P7187644173254064453

/-!
# A137757: Nontrivial elements in writing the denominator of an element first and then the numerator of that element (left to right) of Leibniz's harmonic-like triangle. That is, the nontrivial elements of A137753.

The programs for A137757, there is no canonical definition to state claims against.
-/

/-! ## A137757.P17303027603355560774

`A137753(lt[1, A137753(n+1)]+1)`
-/

namespace A137757.P17303027603355560774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A137757.P17303027603355560774

/-!
# A137758: Odd elements in writing the denominator of an element first and then the numerator of that element (left to right) of Leibniz's harmonic-like triangle. That is, the odd elements of A137753.

The programs for A137758, there is no canonical definition to state claims against.
-/

/-! ## A137758.P17749903478240591961

`filter[A137753(n+1), A000035(#)]`
-/

namespace A137758.P17749903478240591961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A137758.P17749903478240591961

/-! ## A137758.P15540203719194070057

`A137753(eq[1, A137753(n+1)%2]+1)`
-/

namespace A137758.P15540203719194070057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137753 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A137758.P15540203719194070057

/-! ## A137758.P18249267990590139834

`A137753(eq[1, gcd(2, A137753(n+1))]+1)`
-/

namespace A137758.P18249267990590139834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A137753 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137753 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A137758.P18249267990590139834

/-! ## A137758.P12477622118301696294

`A137753(record[(n+1)*A046206(n+1)%2])`
-/

namespace A137758.P12477622118301696294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A046206 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137753 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137758.P12477622118301696294

/-! ## A137758.P11203681701322985754

`A137753(record[n*and(1, A046206(n+1))]+1)`
-/

namespace A137758.P11203681701322985754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A046206 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137753 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A137758.P11203681701322985754

/-!
# A137759: Odd numbers in writing first numerator and then denominator (left to right) of Leibniz's harmonic-like triangle.

The programs for A137759, there is no canonical definition to state claims against.
-/

/-! ## A137759.P17601251105138358977

`filter[A137752(n+1), A000035(#)]`
-/

namespace A137759.P17601251105138358977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A137759.P17601251105138358977

/-! ## A137759.P3854647239355784457

`A137752(eq[1, gcd(2, A137752(n+1))]+1)`
-/

namespace A137759.P3854647239355784457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A137752 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137752 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A137759.P3854647239355784457

/-! ## A137759.P4229950325154330739

`A137752(record[(n+1)*A046205(n+1)%2])`
-/

namespace A137759.P4229950325154330739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A046205 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137752 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137759.P4229950325154330739

/-! ## A137759.P2666838112002861932

`A137752(record[(n+1)*A137752(n+1)%2])`
-/

namespace A137759.P2666838112002861932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A137752 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137752 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137759.P2666838112002861932

/-! ## A137759.P483444898842560399

`A137752(record[n*and(1, A046205(n+1))]+1)`
-/

namespace A137759.P483444898842560399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A046205 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137752 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A137759.P483444898842560399

/-!
# A137762: Central elements in writing first the numerator and then the denominator (left to right) of Leibniz's harmonic-like triangle.

The programs for A137762, there is no canonical definition to state claims against.
-/

/-! ## A137762.P14844470314622726738

`A137763(xor(1, n)+1)`
-/

namespace A137762.P14844470314622726738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137763 (Nat.xor 1 n + 1)

end

end A137762.P14844470314622726738

/-! ## A137762.P9042039815988227603

`A137763((-1)^n+n+1)`
-/

namespace A137762.P9042039815988227603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137763 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A137762.P9042039815988227603

/-! ## A137762.P12356321361820732224

`A137763(A103889(n+1))+A137579(n)`
-/

namespace A137762.P12356321361820732224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137763 (A103889 (n + 1)).toNat + A137579 n

end

end A137762.P12356321361820732224

/-! ## A137762.P6786102062904542887

`A137763(A137805(n+1))+A137579(n)`
-/

namespace A137762.P6786102062904542887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137763 (A137805 (n + 1)).toNat + A137579 n

end

end A137762.P6786102062904542887

/-! ## A137762.P5668633346325058654

`A137763(A137805(n+1))%A041356(n)`
-/

namespace A137762.P5668633346325058654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137763 (A137805 (n + 1)).toNat) (A041356 n)

end

end A137762.P5668633346325058654

/-!
# A137763: Central elements in writing first the denominator and then the numerator(left to right) of Leibniz's harmonic-like triangle.

The programs for A137763, there is no canonical definition to state claims against.
-/

/-! ## A137763.P15266306420424686867

`A137762(xor(1, n)+1)`
-/

namespace A137763.P15266306420424686867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137762 (Nat.xor 1 n + 1)

end

end A137763.P15266306420424686867

/-! ## A137763.P3199843110319020054

`A137762((-1)^n+n+1)`
-/

namespace A137763.P3199843110319020054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137762 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A137763.P3199843110319020054

/-! ## A137763.P17010170328849436515

`A137762(A137805(n+1))+A137579(n)`
-/

namespace A137763.P17010170328849436515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137762 (A137805 (n + 1)).toNat + A137579 n

end

end A137763.P17010170328849436515

/-! ## A137763.P5330700494073492103

`A046212(n+2)*A137762(A093178(n))`
-/

namespace A137763.P5330700494073492103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046212 (n + 2) * A137762 (A093178 n).toNat

end

end A137763.P5330700494073492103

/-! ## A137763.P14970009331290940289

`or(A000035(n), A137762(A137805(n+1)))`
-/

namespace A137763.P14970009331290940289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A137762 (A137805 (n + 1)).toNat)

end

end A137763.P14970009331290940289

/-!
# A137764: Elements to the right of the central elements in writing first the denominator and then the numerator(left to right) of Leibniz's harmonic-like triangle.

The programs for A137764, there is no canonical definition to state claims against.
-/

/-! ## A137764.P17186189344518456069

`A137766(xor(1, n)+1)`
-/

namespace A137764.P17186189344518456069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137766 (Nat.xor 1 n + 1)

end

end A137764.P17186189344518456069

/-! ## A137764.P5516529596189830169

`A137766(2*or(1, n)-n)`
-/

namespace A137764.P5516529596189830169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137766 (2 * Nat.lor 1 n - n)

end

end A137764.P5516529596189830169

/-! ## A137764.P5583546126708543520

`A137766((-1)^n+n+1)`
-/

namespace A137764.P5583546126708543520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137766 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A137764.P5583546126708543520

/-! ## A137764.P1799596920795233448

`or(A000035(n), A137766(A103889(n+1)))`
-/

namespace A137764.P1799596920795233448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A137766 (A103889 (n + 1)).toNat)

end

end A137764.P1799596920795233448

/-! ## A137764.P8740907624759941877

`lcm(A056594(2*n), A137766(A103889(n+1)))`
-/

namespace A137764.P8740907624759941877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 (2 * n)) (A137766 (A103889 (n + 1)).toNat)

end

end A137764.P8740907624759941877

/-!
# A137765: Nontrivial numbers of the elements to the right of the central elements in writing first the denominator and then the numerator(left to right) of Leibniz's harmonic-like triangle. That is, the nontrivial elements of A137764.

The programs for A137765, there is no canonical definition to state claims against.
-/

/-! ## A137765.P17325705380972580437

`A137764(comp[floor(n²/2)])`
-/

namespace A137765.P17325705380972580437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137764 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A137765.P17325705380972580437

/-!
# A137766: Elements to the right of the central element in writing first the numerator and then the denominator (left to right) of Leibniz's harmonic-like triangle.

The programs for A137766, there is no canonical definition to state claims against.
-/

/-! ## A137766.P1444724409882133833

`A137764(xor(1, n)+1)`
-/

namespace A137766.P1444724409882133833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137764 (Nat.xor 1 n + 1)

end

end A137766.P1444724409882133833

/-! ## A137766.P2602934645734120278

`A137764(and(2, gcd(2, n))+n)`
-/

namespace A137766.P2602934645734120278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137764 (Nat.land 2 (Nat.gcd 2 n) + n)

end

end A137766.P2602934645734120278

/-! ## A137766.P255615402771938586

`A137764((-1)^n+n+1)`
-/

namespace A137766.P255615402771938586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137764 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A137766.P255615402771938586

/-! ## A137766.P6473695152020661121

`A137764(A014681(n+1))%A204590(n)`
-/

namespace A137766.P6473695152020661121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137764 (A014681 (n + 1)).toNat) (A204590 n)

end

end A137766.P6473695152020661121

/-! ## A137766.P2577811314917896109

`A033999(2*n)*A137764(A014681(n+1))`
-/

namespace A137766.P2577811314917896109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A137764 (A014681 (n + 1)).toNat

end

end A137766.P2577811314917896109

/-! ## A137766.P16745689692777713513

`A137764(A103889(n+1))+A056594(2*n+3)`
-/

namespace A137766.P16745689692777713513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137764 (A103889 (n + 1)).toNat + A056594 (2 * n + 3)

end

end A137766.P16745689692777713513

/-!
# A137767: Nontrivial numbers of the elements to the right of the central elements in writing first the numerator and then the denominator (left to right) of Leibniz's harmonic-like triangle.

The programs for A137767, there is no canonical definition to state claims against.
-/

/-! ## A137767.P2820300137429724416

`A137766(A047839(n+1))`
-/

namespace A137767.P2820300137429724416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137766 (A047839 (n + 1)).toNat

end

end A137767.P2820300137429724416

/-! ## A137767.P13180402456181395266

`A137766(lt[1, A137766(n+1)]+1)`
-/

namespace A137767.P13180402456181395266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A137767.P13180402456181395266

/-! ## A137767.P13958506910187867694

`A137766(lt[2, A137764(n+1)])`
-/

namespace A137767.P13958506910187867694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A137767.P13958506910187867694

/-! ## A137767.P4447944431664297225

`A137764(xor(1, lt[1, A137764(n+2)])+1)`
-/

namespace A137767.P4447944431664297225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137764 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137764 (Nat.xor 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1)

end

end A137767.P4447944431664297225

/-! ## A137767.P2667725503350924490

`A137766(comp[n*(2-A137766(n+1))]+1)`
-/

namespace A137767.P2667725503350924490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A137766 (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137766 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A137767.P2667725503350924490

/-!
# A137768: Nontrivial odd numbers in writing first the numerator and then the denominator (left to right) of Leibniz's harmonic-like triangle.

The programs for A137768, there is no canonical definition to state claims against.
-/

/-! ## A137768.P12372012609318694980

`filter[A137759(n+1), A014306(#)]`
-/

namespace A137768.P12372012609318694980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A137768.P12372012609318694980

/-! ## A137768.P11864422432277731637

`filter[A137759(n+1), A252743(#)]`
-/

namespace A137768.P11864422432277731637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252743 (f1 j).toNat = 1) n)

end

end A137768.P11864422432277731637

/-! ## A137768.P16446910052394924634

`filter[A137759(n+1), A266070(#)]`
-/

namespace A137768.P16446910052394924634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A137768.P16446910052394924634

/-! ## A137768.P18089966079603844418

`filter[A137759(n+1), A266719(#)]`
-/

namespace A137768.P18089966079603844418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A137768.P18089966079603844418

/-! ## A137768.P4251096481533163894

`filter[A137759(n+1), A267155(#)]`
-/

namespace A137768.P4251096481533163894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267155 (f1 j).toNat = 1) n)

end

end A137768.P4251096481533163894

/-!
# A137769: Nontrivial odd numbers in writing first the denominator and then the numerator (left to right) of Leibniz's harmonic-like triangle.

The programs for A137769, there is no canonical definition to state claims against.
-/

/-! ## A137769.P10164500594643444830

`filter[A137758(n+1), A014306(#)]`
-/

namespace A137769.P10164500594643444830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A137769.P10164500594643444830

/-! ## A137769.P16201796770612670977

`filter[A137758(n+1), A252743(#)]`
-/

namespace A137769.P16201796770612670977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252743 (f1 j).toNat = 1) n)

end

end A137769.P16201796770612670977

/-! ## A137769.P16793425622472468899

`filter[A137758(n+1), A266070(#)]`
-/

namespace A137769.P16793425622472468899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A137769.P16793425622472468899

/-! ## A137769.P813710416527517223

`filter[A137758(n+1), A266719(#)]`
-/

namespace A137769.P813710416527517223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A137769.P813710416527517223

/-! ## A137769.P9983391176767263494

`filter[A137758(n+1), A267155(#)]`
-/

namespace A137769.P9983391176767263494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267155 (f1 j).toNat = 1) n)

end

end A137769.P9983391176767263494

/-!
# A137771: Prime numbers p such that p +- ((p-1)/8) are primes.

The programs for A137771, there is no canonical definition to state claims against.
-/

/-! ## A137771.P16371468963357712973

`A088199(A218616(n)+A052548(n))`
-/

namespace A137771.P16371468963357712973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088199 (A218616 n + A052548 n).toNat

end

end A137771.P16371468963357712973

/-!
# A137773: Triangular sequence: The Fibonacci sequence on the diagonal, 1's at all other places.

The programs for A137773, the canonical program `A137773.P5744758728077306555` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137773 has offset 1).

The definition of A137773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137773.P11712890502133226193

`A000045(Δ[C(round(sqrt(2*(n+1))), 2)]-(3*char[∑[n-1]]-2))`
-/

namespace A137773.P11712890502133226193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (((3 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 2)).toNat

end

end A137773.P11712890502133226193

namespace A137773

/-- `A000045(Δ[C(round(sqrt(2*(n+1))), 2)]-(3*char[∑[n-1]]-2))` -/
def P11712890502133226193.Spec : Prop :=
  ∀ n, P11712890502133226193.a n = A137773 (n + 1)

end A137773

/-! ## A137773.P7869280220431130312

`A212804(A127648(n))`
-/

namespace A137773.P7869280220431130312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A127648 n).toNat

end

end A137773.P7869280220431130312

namespace A137773

/-- `A212804(A127648(n))` -/
def P7869280220431130312.Spec : Prop :=
  ∀ n, P7869280220431130312.a n = A137773 (n + 1)

end A137773

/-! ## A137773.P5744758728077306555

`A247049(A131431(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A137773

/-- `A247049(A131431(n))` -/
def P5744758728077306555.Spec : Prop :=
  ∀ n, P5744758728077306555.a n = A137773 (n + 1)

theorem P5744758728077306555.correct : P5744758728077306555.Spec := by
  intro n
  simp only [A137773, Nat.add_sub_cancel]

end A137773

/-! ## A137773.P10215576171824069255

`A091562(A127773(n+1))`
-/

namespace A137773.P10215576171824069255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091562 (A127773 (n + 1)).toNat

end

end A137773.P10215576171824069255

namespace A137773

/-- `A091562(A127773(n+1))` -/
def P10215576171824069255.Spec : Prop :=
  ∀ n, P10215576171824069255.a n = A137773 (n + 1)

end A137773

/-! ## A137773.P2934935320134175847

`A129982(A127775(n+1))`
-/

namespace A137773.P2934935320134175847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (A127775 (n + 1)).toNat

end

end A137773.P2934935320134175847

namespace A137773

/-- `A129982(A127775(n+1))` -/
def P2934935320134175847.Spec : Prop :=
  ∀ n, P2934935320134175847.a n = A137773 (n + 1)

end A137773

/-! ## A137773.P4140519441885561502

`A129982(A132774(n+1))`
-/

namespace A137773.P4140519441885561502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (A132774 (n + 1)).toNat

end

end A137773.P4140519441885561502

namespace A137773

/-- `A129982(A132774(n+1))` -/
def P4140519441885561502.Spec : Prop :=
  ∀ n, P4140519441885561502.a n = A137773 (n + 1)

end A137773

/-! ## A137773.P17771824152791216396

`A000045(abs(1-A127648(n)))`
-/

namespace A137773.P17771824152791216396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - A127648 n|.toNat

end

end A137773.P17771824152791216396

namespace A137773

/-- `A000045(abs(1-A127648(n)))` -/
def P17771824152791216396.Spec : Prop :=
  ∀ n, P17771824152791216396.a n = A137773 (n + 1)

end A137773

/-! ## A137773.P13573526694826267547

`A000045(abs(Δ[log2(A059268(n))]))`
-/

namespace A137773.P13573526694826267547
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway |f1 (n + 1) - f1 n|).toNat

end

end A137773.P13573526694826267547

namespace A137773

/-- `A000045(abs(Δ[log2(A059268(n))]))` -/
def P13573526694826267547.Spec : Prop :=
  ∀ n, P13573526694826267547.a n = A137773 (n + 1)

end A137773

/-! ## A137773.P308085662811384525

`A141169(n)^A073423(n+1)`
-/

namespace A137773.P308085662811384525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141169 n : ℚ) ^ (A073423 (n + 1) : ℤ)

end

end A137773.P308085662811384525

namespace A137773

/-- `A141169(n)^A073423(n+1)` -/
def P308085662811384525.Spec : Prop :=
  ∀ n, P308085662811384525.a n = (A137773 (n + 1) : ℚ)

end A137773

/-! ## A137773.P16915725362276961514

`gcd(A050609(n), A157412(n+2))`
-/

namespace A137773.P16915725362276961514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050609 n) (A157412 (n + 2))

end

end A137773.P16915725362276961514

namespace A137773

/-- `gcd(A050609(n), A157412(n+2))` -/
def P16915725362276961514.Spec : Prop :=
  ∀ n, (P16915725362276961514.a n : ℤ) = A137773 (n + 1)

end A137773

/-! ## A137773.P17204770542570511181

`A000045(abs(Δ[A002260(n+1)]))`
-/

namespace A137773.P17204770542570511181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |f1 (n + 1) - f1 n|.toNat

end

end A137773.P17204770542570511181

namespace A137773

/-- `A000045(abs(Δ[A002260(n+1)]))` -/
def P17204770542570511181.Spec : Prop :=
  ∀ n, P17204770542570511181.a n = A137773 (n + 1)

end A137773

/-! ## A137773.P15777175498515147325

`A000045(A003056(n))^Δ[A003056(n)]`
-/

namespace A137773.P15777175498515147325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A003056 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A137773.P15777175498515147325

namespace A137773

/-- `A000045(A003056(n))^Δ[A003056(n)]` -/
def P15777175498515147325.Spec : Prop :=
  ∀ n, P15777175498515147325.a n = (A137773 (n + 1) : ℚ)

end A137773

/-! ## A137773.P16294932818962834295

`A000045(abs(Δ[A002262(n)]))`
-/

namespace A137773.P16294932818962834295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |f1 (n + 1) - f1 n|.toNat

end

end A137773.P16294932818962834295

namespace A137773

/-- `A000045(abs(Δ[A002262(n)]))` -/
def P16294932818962834295.Spec : Prop :=
  ∀ n, P16294932818962834295.a n = A137773 (n + 1)

end A137773

/-! ## A137773.P7632344973803321896

`A000045(abs(A155124(n+1)))`
-/

namespace A137773.P7632344973803321896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |A155124 (n + 1)|.toNat

end

end A137773.P7632344973803321896

namespace A137773

/-- `A000045(abs(A155124(n+1)))` -/
def P7632344973803321896.Spec : Prop :=
  ∀ n, P7632344973803321896.a n = A137773 (n + 1)

end A137773

/-! ## A137773.P16290398020736231727

`A000045(abs(Δ[sqrt(A143844(n))]))`
-/

namespace A137773.P16290398020736231727
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143844 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway |f1 (n + 1) - f1 n|).toNat

end

end A137773.P16290398020736231727

namespace A137773

/-- `A000045(abs(Δ[sqrt(A143844(n))]))` -/
def P16290398020736231727.Spec : Prop :=
  ∀ n, P16290398020736231727.a n = A137773 (n + 1)

end A137773

/-! ## A137773.P17885021968195804235

`gcd(Δ[A141169(n)], A141169(n))`
-/

namespace A137773.P17885021968195804235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A141169 n)

end

end A137773.P17885021968195804235

namespace A137773

/-- `gcd(Δ[A141169(n)], A141169(n))` -/
def P17885021968195804235.Spec : Prop :=
  ∀ n, (P17885021968195804235.a n : ℤ) = A137773 (n + 1)

end A137773

/-! ## A137773.P10625221775555321581

`A000045(abs(1-Δ[A025581(n)]))`
-/

namespace A137773.P10625221775555321581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (f1 (n + 1) - f1 n)|.toNat

end

end A137773.P10625221775555321581

namespace A137773

/-- `A000045(abs(1-Δ[A025581(n)]))` -/
def P10625221775555321581.Spec : Prop :=
  ∀ n, P10625221775555321581.a n = A137773 (n + 1)

end A137773

/-! ## A137773.P10513635423880965623

`A000045(abs(Δ[A131818(n+2)]))`
-/

namespace A137773.P10513635423880965623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |f1 (n + 1) - f1 n|.toNat

end

end A137773.P10513635423880965623

namespace A137773

/-- `A000045(abs(Δ[A131818(n+2)]))` -/
def P10513635423880965623.Spec : Prop :=
  ∀ n, P10513635423880965623.a n = A137773 (n + 1)

end A137773

/-! ## A137773.P15584211584858410381

`A000045(gcd(A025581(n+2), A025581(n)))`
-/

namespace A137773.P15584211584858410381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.gcd (A025581 (n + 2)) (A025581 n))

end

end A137773.P15584211584858410381

namespace A137773

/-- `A000045(gcd(A025581(n+2), A025581(n)))` -/
def P15584211584858410381.Spec : Prop :=
  ∀ n, P15584211584858410381.a n = A137773 (n + 1)

end A137773

/-! ## A137773.P7658521629982533019

`A292030(n)/A117501(n+2)`
-/

namespace A137773.P7658521629982533019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292030 n : ℚ) / (A117501 (n + 2) : ℚ)

end

end A137773.P7658521629982533019

namespace A137773

/-- `A292030(n)/A117501(n+2)` -/
def P7658521629982533019.Spec : Prop :=
  ∀ n, P7658521629982533019.a n = (A137773 (n + 1) : ℚ)

end A137773

/-!
# A137775: Number of triples of permutations on n letters such that for each j, exactly one of the permutations fixes j and the other two have the same image on j.

The programs for A137775, the canonical program `A137775.P16522445230309725647` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137775 has offset 0).

The definition of A137775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137775.P16522445230309725647

`(n-1)*(a(n-1)+3*a(n-2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137775

/-- `(n-1)*(a(n-1)+3*a(n-2))` -/
def P16522445230309725647.Spec : Prop :=
  ∀ n, P16522445230309725647.a n = A137775 n

theorem P16522445230309725647.correct : P16522445230309725647.Spec := by
  intro n
  simp only [A137775]

end A137775

/-! ## A137775.P4241490355143267025

`A295181(∑[abs(1-n)+5])`
-/

namespace A137775.P4241490355143267025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295181 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137775.P4241490355143267025

namespace A137775

/-- `A295181(∑[abs(1-n)+5])` -/
def P4241490355143267025.Spec : Prop :=
  ∀ n, P4241490355143267025.a n = A137775 n

end A137775

/-! ## A137775.P10906991360445550353

`A295181(A046691(n+2))+A137579(n)`
-/

namespace A137775.P10906991360445550353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295181 (A046691 (n + 2)).toNat + A137579 n

end

end A137775.P10906991360445550353

namespace A137775

/-- `A295181(A046691(n+2))+A137579(n)` -/
def P10906991360445550353.Spec : Prop :=
  ∀ n, P10906991360445550353.a n = A137775 n

end A137775

/-! ## A137775.P4212343539089356953

`A332579(n)+A295181(A046691(n+2))`
-/

namespace A137775.P4212343539089356953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332579 n + A295181 (A046691 (n + 2)).toNat

end

end A137775.P4212343539089356953

namespace A137775

/-- `A332579(n)+A295181(A046691(n+2))` -/
def P4212343539089356953.Spec : Prop :=
  ∀ n, P4212343539089356953.a n = A137775 n

end A137775

/-! ## A137775.P15649166318086404750

`A295181(A046691(n+2))/A119963(n)`
-/

namespace A137775.P15649166318086404750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295181 (A046691 (n + 2)).toNat : ℚ) / (A119963 n : ℚ)

end

end A137775.P15649166318086404750

namespace A137775

/-- `A295181(A046691(n+2))/A119963(n)` -/
def P15649166318086404750.Spec : Prop :=
  ∀ n, P15649166318086404750.a n = (A137775 n : ℚ)

end A137775

/-!
# A137776: Interleave A038504 with A131577.

The programs for A137776, the canonical program `A137776.P16278498535273104316` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137776 has offset 0).

The definition of A137776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137776.P16278498535273104316

`A138569(n-1)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137776

/-- `A138569(n-1)+a(n-1)` -/
def P16278498535273104316.Spec : Prop :=
  ∀ n, P16278498535273104316.a n = A137776 n

theorem P16278498535273104316.correct : P16278498535273104316.Spec := by
  intro n
  simp only [A137776]

end A137776

/-! ## A137776.P4695456609090728465

`∑[A138569(A289207(n+1))]`
-/

namespace A137776.P4695456609090728465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138569 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137776.P4695456609090728465

namespace A137776

/-- `∑[A138569(A289207(n+1))]` -/
def P4695456609090728465.Spec : Prop :=
  ∀ n, P4695456609090728465.a n = A137776 n

end A137776

/-! ## A137776.P16318913970012170373

`∑[A138569(A289207(2*n)/2)]`
-/

namespace A137776.P16318913970012170373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138569 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137776.P16318913970012170373

namespace A137776

/-- `∑[A138569(A289207(2*n)/2)]` -/
def P16318913970012170373.Spec : Prop :=
  ∀ n, P16318913970012170373.a n = A137776 n

end A137776

/-! ## A137776.P7490503793688237236

`∑[A138569(n)]-A138569(n)`
-/

namespace A137776.P7490503793688237236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A138569 n

end

end A137776.P7490503793688237236

namespace A137776

/-- `∑[A138569(n)]-A138569(n)` -/
def P7490503793688237236.Spec : Prop :=
  ∀ n, P7490503793688237236.a n = A137776 n

end A137776

/-! ## A137776.P16191356779031107090

`A038504(gcd(n, ∑[n]))%(2^floor(n/2))`
-/

namespace A137776.P16191356779031107090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038504 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)))

end

end A137776.P16191356779031107090

namespace A137776

/-- `A038504(gcd(n, ∑[n]))%(2^floor(n/2))` -/
def P16191356779031107090.Spec : Prop :=
  ∀ n, P16191356779031107090.a n = A137776 n

end A137776

/-!
# A137777: Triangular sequence of coefficients from the expansion of the derivative of the Bernoulli polynomial function: p(x,t) = t*exp(x*t)/(exp(t)-1); q(x,t) = p'(x,t) = dp(x,t)/dt.

The programs for A137777, there is no canonical definition to state claims against.
-/

/-! ## A137777.P4907818147302669273

`2*A048998(n)`
-/

namespace A137777.P4907818147302669273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048998 n

end

end A137777.P4907818147302669273

/-! ## A137777.P399262571158101476

`2*A048999(∑[2*n]%comp[∑[n]])`
-/

namespace A137777.P399262571158101476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048999 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A137777.P399262571158101476

/-! ## A137777.P9463751796323869577

`2*A048999(∑[char[∑[n]]]²-(n+1))`
-/

namespace A137777.P9463751796323869577
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048999 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A137777.P9463751796323869577

/-! ## A137777.P3143501348876220057

`10*A048999(A061579(n))/5`
-/

namespace A137777.P3143501348876220057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 * ((A048999 (A061579 n).toNat : ℚ) / 5)

end

end A137777.P3143501348876220057

/-! ## A137777.P5547339223434791604

`2*A140756(n+1)*A080779(n)`
-/

namespace A137777.P5547339223434791604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140756 (n + 1) * A080779 n

end

end A137777.P5547339223434791604

/-! ## A137777.P15610048598814493934

`A048998(n)+A048998(A055643(n))`
-/

namespace A137777.P15610048598814493934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048998 n + A048998 (A055643 n).toNat

end

end A137777.P15610048598814493934

/-! ## A137777.P10679810637793178128

`A048999(A061579(n))+A048998(n)`
-/

namespace A137777.P10679810637793178128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048999 (A061579 n).toNat + A048998 n

end

end A137777.P10679810637793178128

/-! ## A137777.P8326178046059483674

`A048998(n)+A048998(A118759(n))`
-/

namespace A137777.P8326178046059483674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048998 n + A048998 (A118759 n).toNat

end

end A137777.P8326178046059483674

/-! ## A137777.P4546606312987320385

`A048998(A003056(∑[n]))+A048998(n)`
-/

namespace A137777.P4546606312987320385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048998 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A048998 n

end

end A137777.P4546606312987320385

/-! ## A137777.P1751921964883555117

`A048998(n)+A048998(n)%A000032(n+2)`
-/

namespace A137777.P1751921964883555117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048998 n + Int.tmod (A048998 n) (A000032 (n + 2))

end

end A137777.P1751921964883555117

/-!
# A137778: Triangular sequence from coefficients of an expansion of a Rankine-Hugoniot relation function for density in terms of thermodynamic gamma as t and pressure ratio as x: p(x,t)=((t + 1)/(t - 1) + x)/(1 + (t + 1)*x/(t - 1)).

The programs for A137778, there is no canonical definition to state claims against.
-/

/-! ## A137778.P10174063729407360971

`floor(acot(n))-2*A196347(n)`
-/

namespace A137778.P10174063729407360971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ - 2 * A196347 n

end

end A137778.P10174063729407360971

/-! ## A137778.P8708762385334088091

`(A057428(n)-1)*A196347(n)`
-/

namespace A137778.P8708762385334088091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057428 n - 1) * A196347 n

end

end A137778.P8708762385334088091

/-! ## A137778.P503357193816218027

`A000007(n)-2*A196347(n)`
-/

namespace A137778.P503357193816218027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - 2 * A196347 n

end

end A137778.P503357193816218027

/-! ## A137778.P10300370748255726493

`(char[A063009(3*n)]-2)*A196347(n)`
-/

namespace A137778.P10300370748255726493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063009 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 2) * A196347 n

end

end A137778.P10300370748255726493

/-! ## A137778.P16096319806893428440

`and(1, A000010(n+2))-2*A196347(n)`
-/

namespace A137778.P16096319806893428440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000010 (n + 2)) - 2 * A196347 n

end

end A137778.P16096319806893428440

/-!
# A137779: Number of bases (numbering systems, including unary) in which the n-th prime is a palindrome having at least two digits.

The programs for A137779, there is no canonical definition to state claims against.
-/

/-! ## A137779.P6255261675454975095

`A135551(A000040(n+1))+1`
-/

namespace A137779.P6255261675454975095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (A000040 (n + 1)).toNat + 1

end

end A137779.P6255261675454975095

/-! ## A137779.P8928236332203682644

`A135551(A040976(n+1)+2)+1`
-/

namespace A137779.P8928236332203682644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (A040976 (n + 1) + 2).toNat + 1

end

end A137779.P8928236332203682644

/-! ## A137779.P3640928009049455580

`A135551(p?[A238526(n+1)+2])+1`
-/

namespace A137779.P3640928009049455580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A137779.P3640928009049455580

/-! ## A137779.P12021356908709409445

`A135551(p?[(n+1)*A001222(n+1)])+1`
-/

namespace A137779.P12021356908709409445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A137779.P12021356908709409445

/-! ## A137779.P12845404723560546167

`A135549(A008578(n+2))+A000005(A008578(2*n+1))`
-/

namespace A137779.P12845404723560546167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135549 (A008578 (n + 2)).toNat + A000005 (A008578 (2 * n + 1)).toNat

end

end A137779.P12845404723560546167

/-! ## A137779.P1244001844504821281

`A126071(A000040(n+1))`
-/

namespace A137779.P1244001844504821281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (A000040 (n + 1)).toNat

end

end A137779.P1244001844504821281

/-! ## A137779.P15166466726002809062

`A126071(A006005(n+1))`
-/

namespace A137779.P15166466726002809062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (A006005 (n + 1)).toNat

end

end A137779.P15166466726002809062

/-! ## A137779.P15734329469244978796

`A126071(A008578(n+2))`
-/

namespace A137779.P15734329469244978796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (A008578 (n + 2)).toNat

end

end A137779.P15734329469244978796

/-! ## A137779.P2132214985732987247

`A126071(A075643(n+2))`
-/

namespace A137779.P2132214985732987247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (A075643 (n + 2)).toNat

end

end A137779.P2132214985732987247

/-! ## A137779.P7479939478747532029

`A126071(A182986(n+2))`
-/

namespace A137779.P7479939478747532029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (A182986 (n + 2)).toNat

end

end A137779.P7479939478747532029

/-! ## A137779.P14951225929427477424

`A126071(record[A006530(n+2)])`
-/

namespace A137779.P14951225929427477424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137779.P14951225929427477424

/-! ## A137779.P13547939290445891737

`A126071(record[A014963(n+2)])`
-/

namespace A137779.P13547939290445891737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137779.P13547939290445891737

/-! ## A137779.P7679329813012359150

`A126071(record[A020639(n+2)])`
-/

namespace A137779.P7679329813012359150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137779.P7679329813012359150

/-! ## A137779.P13684015103412513076

`A126071(eq[n, A000010(n+1)]+1)`
-/

namespace A137779.P13684015103412513076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A137779.P13684015103412513076

/-! ## A137779.P5218713544021260947

`A126071(A383578(n+1))`
-/

namespace A137779.P5218713544021260947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (A383578 (n + 1)).toNat

end

end A137779.P5218713544021260947

/-!
# A137780: a(n) = 1 + 2^( prime(n + 1) - prime(n) ).

The programs for A137780, the canonical program `A137780.P2103839345452959621` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137780 has offset 1).

The definition of A137780 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A137780.P2103839345452959621

`1+2^A001223(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A137780

/-- `1+2^A001223(n+1)` -/
def P2103839345452959621.Spec : Prop :=
  ∀ n, P2103839345452959621.a n = (A137780 (n + 1) : ℚ)

end A137780

/-! ## A137780.P17272974776339642773

`sqrt(A140299(n))+1`
-/

namespace A137780.P17272974776339642773
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A140299 n : ℝ) + 1

end

end A137780.P17272974776339642773

namespace A137780

/-- `sqrt(A140299(n))+1` -/
def P17272974776339642773.Spec : Prop :=
  ∀ n, P17272974776339642773.a n = (A137780 (n + 1) : ℝ)

end A137780

/-! ## A137780.P12430263460119994179

`A218075(n+1)+1`
-/

namespace A137780.P12430263460119994179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218075 (n + 1) + 1

end

end A137780.P12430263460119994179

namespace A137780

/-- `A218075(n+1)+1` -/
def P12430263460119994179.Spec : Prop :=
  ∀ n, P12430263460119994179.a n = A137780 (n + 1)

end A137780

/-! ## A137780.P7731045504673333686

`A000051(A001223(n+1))`
-/

namespace A137780.P7731045504673333686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A001223 (n + 1)).toNat

end

end A137780.P7731045504673333686

namespace A137780

/-- `A000051(A001223(n+1))` -/
def P7731045504673333686.Spec : Prop :=
  ∀ n, P7731045504673333686.a n = A137780 (n + 1)

end A137780

/-! ## A137780.P11196168172712031220

`A048578(A046933(n+1))`
-/

namespace A137780.P11196168172712031220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (A046933 (n + 1)).toNat

end

end A137780.P11196168172712031220

namespace A137780

/-- `A048578(A046933(n+1))` -/
def P11196168172712031220.Spec : Prop :=
  ∀ n, P11196168172712031220.a n = A137780 (n + 1)

end A137780

/-! ## A137780.P3227817821790189956

`A086341(A100803(n+1))`
-/

namespace A137780.P3227817821790189956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086341 (A100803 (n + 1)).toNat

end

end A137780.P3227817821790189956

namespace A137780

/-- `A086341(A100803(n+1))` -/
def P3227817821790189956.Spec : Prop :=
  ∀ n, P3227817821790189956.a n = A137780 (n + 1)

end A137780

/-! ## A137780.P4534792975615970178

`A048656(A082910(n+1))+1`
-/

namespace A137780.P4534792975615970178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048656 (A082910 (n + 1)).toNat + 1

end

end A137780.P4534792975615970178

namespace A137780

/-- `A048656(A082910(n+1))+1` -/
def P4534792975615970178.Spec : Prop :=
  ∀ n, P4534792975615970178.a n = A137780 (n + 1)

end A137780

/-! ## A137780.P10739724334738481404

`A139548(A076821(n+1))+1`
-/

namespace A137780.P10739724334738481404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139548 (A076821 (n + 1)).toNat + 1

end

end A137780.P10739724334738481404

namespace A137780

/-- `A139548(A076821(n+1))+1` -/
def P10739724334738481404.Spec : Prop :=
  ∀ n, P10739724334738481404.a n = A137780 (n + 1)

end A137780

/-! ## A137780.P5780365193601511475

`A048578(A001223(n+1)-1)`
-/

namespace A137780.P5780365193601511475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (A001223 (n + 1) - 1).toNat

end

end A137780.P5780365193601511475

namespace A137780

/-- `A048578(A001223(n+1)-1)` -/
def P5780365193601511475.Spec : Prop :=
  ∀ n, P5780365193601511475.a n = A137780 (n + 1)

end A137780

/-! ## A137780.P15043450773078145618

`2^A075526(n+1)+1`
-/

namespace A137780.P15043450773078145618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A075526 (n + 1) : ℤ) + 1

end

end A137780.P15043450773078145618

namespace A137780

/-- `2^A075526(n+1)+1` -/
def P15043450773078145618.Spec : Prop :=
  ∀ n, P15043450773078145618.a n = (A137780 (n + 1) : ℚ)

end A137780

/-! ## A137780.P6688612049050483356

`2^A054541(n+2)+1`
-/

namespace A137780.P6688612049050483356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A054541 (n + 2) : ℤ) + 1

end

end A137780.P6688612049050483356

namespace A137780

/-- `2^A054541(n+2)+1` -/
def P6688612049050483356.Spec : Prop :=
  ∀ n, P6688612049050483356.a n = (A137780 (n + 1) : ℚ)

end A137780

/-! ## A137780.P7679231250235777291

`2^Δ[A000040(n+1)]+1`
-/

namespace A137780.P7679231250235777291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) + 1

end

end A137780.P7679231250235777291

namespace A137780

/-- `2^Δ[A000040(n+1)]+1` -/
def P7679231250235777291.Spec : Prop :=
  ∀ n, P7679231250235777291.a n = (A137780 (n + 1) : ℚ)

end A137780

/-! ## A137780.P7557082679745775545

`2^Δ[A040976(n+1)]+1`
-/

namespace A137780.P7557082679745775545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) + 1

end

end A137780.P7557082679745775545

namespace A137780

/-- `2^Δ[A040976(n+1)]+1` -/
def P7557082679745775545.Spec : Prop :=
  ∀ n, P7557082679745775545.a n = (A137780 (n + 1) : ℚ)

end A137780

/-! ## A137780.P4203799535753081645

`A000051(A075526(n+1))`
-/

namespace A137780.P4203799535753081645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A075526 (n + 1)).toNat

end

end A137780.P4203799535753081645

namespace A137780

/-- `A000051(A075526(n+1))` -/
def P4203799535753081645.Spec : Prop :=
  ∀ n, P4203799535753081645.a n = A137780 (n + 1)

end A137780

/-! ## A137780.P5743449302849345426

`A000051(A054541(n+2))`
-/

namespace A137780.P5743449302849345426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A054541 (n + 2)).toNat

end

end A137780.P5743449302849345426

namespace A137780

/-- `A000051(A054541(n+2))` -/
def P5743449302849345426.Spec : Prop :=
  ∀ n, P5743449302849345426.a n = A137780 (n + 1)

end A137780

/-! ## A137780.P14318401876835531864

`A000051(A125266(n+2))`
-/

namespace A137780.P14318401876835531864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A125266 (n + 2)).toNat

end

end A137780.P14318401876835531864

namespace A137780

/-- `A000051(A125266(n+2))` -/
def P14318401876835531864.Spec : Prop :=
  ∀ n, P14318401876835531864.a n = A137780 (n + 1)

end A137780

/-! ## A137780.P4838565515252637846

`A085613(A076368(n+2))`
-/

namespace A137780.P4838565515252637846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085613 (A076368 (n + 2)).toNat

end

end A137780.P4838565515252637846

namespace A137780

/-- `A085613(A076368(n+2))` -/
def P4838565515252637846.Spec : Prop :=
  ∀ n, P4838565515252637846.a n = A137780 (n + 1)

end A137780

/-! ## A137780.P11790836225784757860

`A085613(A230846(n+2))`
-/

namespace A137780.P11790836225784757860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085613 (A230846 (n + 2)).toNat

end

end A137780.P11790836225784757860

namespace A137780

/-- `A085613(A230846(n+2))` -/
def P11790836225784757860.Spec : Prop :=
  ∀ n, P11790836225784757860.a n = A137780 (n + 1)

end A137780

/-! ## A137780.P4092413738321819480

`A085613(A230847(n+2))`
-/

namespace A137780.P4092413738321819480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085613 (A230847 (n + 2)).toNat

end

end A137780.P4092413738321819480

namespace A137780

/-- `A085613(A230847(n+2))` -/
def P4092413738321819480.Spec : Prop :=
  ∀ n, P4092413738321819480.a n = A137780 (n + 1)

end A137780

/-! ## A137780.P7872807102326231811

`A000051(Δ[A000040(n+1)])`
-/

namespace A137780.P7872807102326231811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (f1 (n + 1) - f1 n).toNat

end

end A137780.P7872807102326231811

namespace A137780

/-- `A000051(Δ[A000040(n+1)])` -/
def P7872807102326231811.Spec : Prop :=
  ∀ n, P7872807102326231811.a n = A137780 (n + 1)

end A137780

/-!
# A137781: a(n) = (2^prime(n) + 2^prime(n+1)) / 4.

The programs for A137781, the canonical program `A137781.P3937855502889474483` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137781 has offset 1).

The definition of A137781 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137389, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A137781.P3937855502889474483

`A137389(n+1)/4`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A137781

/-- `A137389(n+1)/4` -/
def P3937855502889474483.Spec : Prop :=
  ∀ n, P3937855502889474483.a n = (A137781 (n + 1) : ℚ)

end A137781

/-! ## A137781.P12541336970939441475

`(A034785(n+1)+A034785(n+2))/4`
-/

namespace A137781.P12541336970939441475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034785 (n + 1) + A034785 (n + 2) : ℚ) / 4

end

end A137781.P12541336970939441475

namespace A137781

/-- `(A034785(n+1)+A034785(n+2))/4` -/
def P12541336970939441475.Spec : Prop :=
  ∀ n, P12541336970939441475.a n = (A137781 (n + 1) : ℚ)

end A137781

/-! ## A137781.P10172696443647799591

`A135482(n+2)-A135482(n)`
-/

namespace A137781.P10172696443647799591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135482 (n + 2) - A135482 n

end

end A137781.P10172696443647799591

namespace A137781

/-- `A135482(n+2)-A135482(n)` -/
def P10172696443647799591.Spec : Prop :=
  ∀ n, P10172696443647799591.a n = A137781 (n + 1)

end A137781

/-! ## A137781.P17541879337253456939

`∑{p}[A006094(n+1), A034008(#)]`
-/

namespace A137781.P17541879337253456939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A034008 p

end

end A137781.P17541879337253456939

namespace A137781

/-- `∑{p}[A006094(n+1), A034008(#)]` -/
def P17541879337253456939.Spec : Prop :=
  ∀ n, P17541879337253456939.a n = A137781 (n + 1)

end A137781

/-! ## A137781.P2871568220578430034

`∑{p}[A006094(n+1), A166444(#)]`
-/

namespace A137781.P2871568220578430034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A166444 p

end

end A137781.P2871568220578430034

namespace A137781

/-- `∑{p}[A006094(n+1), A166444(#)]` -/
def P2871568220578430034.Spec : Prop :=
  ∀ n, P2871568220578430034.a n = A137781 (n + 1)

end A137781

/-! ## A137781.P2599312804681874393

`Δ[A135482(n+1)+A135482(n)]`
-/

namespace A137781.P2599312804681874393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135482 (n + 1) + A135482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137781.P2599312804681874393

namespace A137781

/-- `Δ[A135482(n+1)+A135482(n)]` -/
def P2599312804681874393.Spec : Prop :=
  ∀ n, P2599312804681874393.a n = A137781 (n + 1)

end A137781

/-! ## A137781.P5507533894291808235

`A139240(n+1)+A061286(n+1)`
-/

namespace A137781.P5507533894291808235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139240 (n + 1) + A061286 (n + 1)

end

end A137781.P5507533894291808235

namespace A137781

/-- `A139240(n+1)+A061286(n+1)` -/
def P5507533894291808235.Spec : Prop :=
  ∀ n, P5507533894291808235.a n = A137781 (n + 1)

end A137781

/-! ## A137781.P1653803123311272361

`A135620(n+1)+A135620(n+2)`
-/

namespace A137781.P1653803123311272361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135620 (n + 1) + A135620 (n + 2)

end

end A137781.P1653803123311272361

namespace A137781

/-- `A135620(n+1)+A135620(n+2)` -/
def P1653803123311272361.Spec : Prop :=
  ∀ n, P1653803123311272361.a n = A137781 (n + 1)

end A137781

/-! ## A137781.P10461859075867443704

`∑{p}[A006094(n+1), A000079(#-2)]`
-/

namespace A137781.P10461859075867443704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000079 (p - 2)

end

end A137781.P10461859075867443704

namespace A137781

/-- `∑{p}[A006094(n+1), A000079(#-2)]` -/
def P10461859075867443704.Spec : Prop :=
  ∀ n, P10461859075867443704.a n = A137781 (n + 1)

end A137781

/-! ## A137781.P5881225944662713370

`A061286(n+1)+A135630(n+2)-A135630(n+1)`
-/

namespace A137781.P5881225944662713370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061286 (n + 1) + (A135630 (n + 2) - A135630 (n + 1))

end

end A137781.P5881225944662713370

namespace A137781

/-- `A061286(n+1)+A135630(n+2)-A135630(n+1)` -/
def P5881225944662713370.Spec : Prop :=
  ∀ n, P5881225944662713370.a n = A137781 (n + 1)

end A137781

/-!
# A137782: a(n) = the number of permutations (p(1), p(2), ..., p(n)) of (1,2,...,n) where, for each k (2 <= k <= n), the sign of (p(k) - p(k-1)) equals the sign of (p(n+2-k) - p(n+1-k)).

The programs for A137782, there is no canonical definition to state claims against.
-/

/-! ## A137782.P9787300258199002551

`gcd(A001043(A110593(n+1)), A002868(n))`
-/

namespace A137782.P9787300258199002551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001043 (A110593 (n + 1)).toNat) (A002868 n)

end

end A137782.P9787300258199002551

/-! ## A137782.P11732833150371129572

`A055155(A098859(n)!)`
-/

namespace A137782.P11732833150371129572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055155 (Nat.factorial (A098859 n).toNat)

end

end A137782.P11732833150371129572

/-! ## A137782.P11071339956836187849

`A055155(A137200(n)!)`
-/

namespace A137782.P11071339956836187849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055155 (Nat.factorial (A137200 n).toNat)

end

end A137782.P11071339956836187849

/-!
# A137786: a(n) = 4^n - 3^n - 2^n.

The programs for A137786, the canonical program `A137786.P13436273591571490248` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137786 has offset 0).

The definition of A137786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-3^n-2^n` (program `A137786.P13436273591571490248`, by `A137786.P13436273591571490248.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137786.P13436273591571490248

`4^n-3^n-2^n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137786

/-- `4^n-3^n-2^n` -/
def P13436273591571490248.Spec : Prop :=
  ∀ n, P13436273591571490248.a n = A137786 n

theorem P13436273591571490248.correct : P13436273591571490248.Spec := by
  intro n
  simp only [A137786]

end A137786

/-! ## A137786.P9383845456425757147

`or(1, A147975(n+1))`
-/

namespace A137786.P9383845456425757147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147975 (n + 1))

end

end A137786.P9383845456425757147

namespace A137786

/-- `or(1, A147975(n+1))` -/
def P9383845456425757147.Spec : Prop :=
  ∀ n, P9383845456425757147.a n = A137786 n

end A137786

/-! ## A137786.P17199147052907452414

`xor(A027759(2*n+1), A147975(n+1))`
-/

namespace A137786.P17199147052907452414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A027759 (2 * n + 1)) (A147975 (n + 1))

end

end A137786.P17199147052907452414

namespace A137786

/-- `xor(A027759(2*n+1), A147975(n+1))` -/
def P17199147052907452414.Spec : Prop :=
  ∀ n, P17199147052907452414.a n = A137786 n

end A137786

/-! ## A137786.P11337366484401039604

`xor(A147975(n+1), A249739(p?[4*n-1]))`
-/

namespace A137786.P11337366484401039604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A147975 (n + 1)) (A249739 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A137786.P11337366484401039604

namespace A137786

/-- `xor(A147975(n+1), A249739(p?[4*n-1]))` -/
def P11337366484401039604.Spec : Prop :=
  ∀ n, P11337366484401039604.a n = A137786 n

end A137786

/-! ## A137786.P8608262197491517041

`xor(A001222(A046028(n+1)), A147975(n+1))`
-/

namespace A137786.P8608262197491517041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A046028 (n + 1)).toNat) (A147975 (n + 1))

end

end A137786.P8608262197491517041

namespace A137786

/-- `xor(A001222(A046028(n+1)), A147975(n+1))` -/
def P8608262197491517041.Spec : Prop :=
  ∀ n, P8608262197491517041.a n = A137786 n

end A137786

/-! ## A137786.P17545817220778850383

`xor(A001222(A137796(n+1)), A147975(n+1))`
-/

namespace A137786.P17545817220778850383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A137796 (n + 1)).toNat) (A147975 (n + 1))

end

end A137786.P17545817220778850383

namespace A137786

/-- `xor(A001222(A137796(n+1)), A147975(n+1))` -/
def P17545817220778850383.Spec : Prop :=
  ∀ n, P17545817220778850383.a n = A137786 n

end A137786

/-! ## A137786.P5318793406632098211

`xor(A001222(A137812(n+1)), A147975(n+1))`
-/

namespace A137786.P5318793406632098211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A137812 (n + 1)).toNat) (A147975 (n + 1))

end

end A137786.P5318793406632098211

namespace A137786

/-- `xor(A001222(A137812(n+1)), A147975(n+1))` -/
def P5318793406632098211.Spec : Prop :=
  ∀ n, P5318793406632098211.a n = A137786 n

end A137786

/-! ## A137786.P16641782538207319328

`xor(A147975(n+1), A249739(A020639(n+2)))`
-/

namespace A137786.P16641782538207319328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A147975 (n + 1)) (A249739 (A020639 (n + 2)).toNat)

end

end A137786.P16641782538207319328

namespace A137786

/-- `xor(A147975(n+1), A249739(A020639(n+2)))` -/
def P16641782538207319328.Spec : Prop :=
  ∀ n, P16641782538207319328.a n = A137786 n

end A137786

/-! ## A137786.P3495500304659919562

`Δ[A002450(n)-A099754(n)]`
-/

namespace A137786.P3495500304659919562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n - A099754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137786.P3495500304659919562

namespace A137786

/-- `Δ[A002450(n)-A099754(n)]` -/
def P3495500304659919562.Spec : Prop :=
  ∀ n, P3495500304659919562.a n = A137786 n

end A137786

/-! ## A137786.P895431505968935053

`Δ[A162725(n)-A000051(n)]`
-/

namespace A137786.P895431505968935053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162725 n - A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137786.P895431505968935053

namespace A137786

/-- `Δ[A162725(n)-A000051(n)]` -/
def P895431505968935053.Spec : Prop :=
  ∀ n, P895431505968935053.a n = A137786 n

end A137786

/-! ## A137786.P4733232056583511200

`Δ[A162725(n)-A000079(n)]`
-/

namespace A137786.P4733232056583511200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162725 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137786.P4733232056583511200

namespace A137786

/-- `Δ[A162725(n)-A000079(n)]` -/
def P4733232056583511200.Spec : Prop :=
  ∀ n, P4733232056583511200.a n = A137786 n

end A137786

/-! ## A137786.P14567721247747706210

`(A167784(2*n+1)-A000079(n+1))/2`
-/

namespace A137786.P14567721247747706210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167784 (2 * n + 1) - A000079 (n + 1) : ℚ) / 2

end

end A137786.P14567721247747706210

namespace A137786

/-- `(A167784(2*n+1)-A000079(n+1))/2` -/
def P14567721247747706210.Spec : Prop :=
  ∀ n, P14567721247747706210.a n = (A137786 n : ℚ)

end A137786

/-! ## A137786.P5154385912215918699

`xor(char[A002487(n)], A147975(n+1))`
-/

namespace A137786.P5154385912215918699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A147975 (n + 1))

end

end A137786.P5154385912215918699

namespace A137786

/-- `xor(char[A002487(n)], A147975(n+1))` -/
def P5154385912215918699.Spec : Prop :=
  ∀ n, P5154385912215918699.a n = A137786 n

end A137786

/-! ## A137786.P5329505715209505984

`xor(A007318(∑[n+1]), A147975(n+1))`
-/

namespace A137786.P5329505715209505984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A147975 (n + 1))

end

end A137786.P5329505715209505984

namespace A137786

/-- `xor(A007318(∑[n+1]), A147975(n+1))` -/
def P5329505715209505984.Spec : Prop :=
  ∀ n, P5329505715209505984.a n = A137786 n

end A137786

/-! ## A137786.P4316953495691660995

`xor(A147975(n+1), A147986(A001316(n)))`
-/

namespace A137786.P4316953495691660995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A147975 (n + 1)) (A147986 (A001316 n).toNat)

end

end A137786.P4316953495691660995

namespace A137786

/-- `xor(A147975(n+1), A147986(A001316(n)))` -/
def P4316953495691660995.Spec : Prop :=
  ∀ n, P4316953495691660995.a n = A137786 n

end A137786

/-!
# A137787: a(n) = 5^n - 4^n - 3^n - 2^n.

The programs for A137787, the canonical program `A137787.P17173626192039041598` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137787 has offset 0).

The definition of A137787 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-4^n-3^n-2^n` (program `A137787.P17173626192039041598`, by `A137787.P17173626192039041598.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137787.P17173626192039041598

`5^n-4^n-3^n-2^n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137787

/-- `5^n-4^n-3^n-2^n` -/
def P17173626192039041598.Spec : Prop :=
  ∀ n, P17173626192039041598.a n = A137787 n

theorem P17173626192039041598.correct : P17173626192039041598.Spec := by
  intro n
  simp only [A137787]

end A137787

/-! ## A137787.P378427096252520037

`xor(1, A081684(n)-2)`
-/

namespace A137787.P378427096252520037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A081684 n - 2)

end

end A137787.P378427096252520037

namespace A137787

/-- `xor(1, A081684(n)-2)` -/
def P378427096252520037.Spec : Prop :=
  ∀ n, P378427096252520037.a n = A137787 n

end A137787

/-! ## A137787.P4977313654881401428

`2*(A083327(n)-A000244(n))`
-/

namespace A137787.P4977313654881401428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A083327 n - A000244 n)

end

end A137787.P4977313654881401428

namespace A137787

/-- `2*(A083327(n)-A000244(n))` -/
def P4977313654881401428.Spec : Prop :=
  ∀ n, P4977313654881401428.a n = A137787 n

end A137787

/-! ## A137787.P9132813007714377604

`xor(1, A193052(n)-A000225(n))`
-/

namespace A137787.P9132813007714377604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A193052 n - A000225 n)

end

end A137787.P9132813007714377604

namespace A137787

/-- `xor(1, A193052(n)-A000225(n))` -/
def P9132813007714377604.Spec : Prop :=
  ∀ n, P9132813007714377604.a n = A137787 n

end A137787

/-! ## A137787.P13082780496723674609

`(A135158(n)-A000079(n)²)*(1-4/2)²`
-/

namespace A137787.P13082780496723674609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135158 n - A000079 n ^ 2 : ℚ) * (1 - (4 : ℚ) / 2) ^ 2

end

end A137787.P13082780496723674609

namespace A137787

/-- `(A135158(n)-A000079(n)²)*(1-4/2)²` -/
def P13082780496723674609.Spec : Prop :=
  ∀ n, P13082780496723674609.a n = (A137787 n : ℚ)

end A137787

/-!
# A137788: a(n) = 6^n - 5^n - 4^n - 3^n - 2^n.

The programs for A137788, the canonical program `A137788.P16066220811311940031` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137788 has offset 1).

The definition of A137788 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^(n+1)-5^(n+1)-4^(n+1)-3^(n+1)-2^(n+1)` (program `A137788.P16066220811311940031`, by `A137788.P16066220811311940031.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137788.P16066220811311940031

`6^(n+1)-5^(n+1)-4^(n+1)-3^(n+1)-2^(n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137788

/-- `6^(n+1)-5^(n+1)-4^(n+1)-3^(n+1)-2^(n+1)` -/
def P16066220811311940031.Spec : Prop :=
  ∀ n, P16066220811311940031.a n = A137788 (n + 1)

theorem P16066220811311940031.correct : P16066220811311940031.Spec := by
  intro n
  simp only [A137788, Nat.add_sub_cancel]

end A137788

/-!
# A137789: a(n) = 7^n - 6^n - 5^n - 4^n - 3^n - 2^n.

The programs for A137789, the canonical program `A137789.P15874504233263958725` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137789 has offset 4).

The definition of A137789 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^(n+4)-6^(n+4)-5^(n+4)-4^(n+4)-3^(n+4)-2^(n+4)` (program `A137789.P15874504233263958725`, by `A137789.P15874504233263958725.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137789.P15874504233263958725

`7^(n+4)-6^(n+4)-5^(n+4)-4^(n+4)-3^(n+4)-2^(n+4)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137789

/-- `7^(n+4)-6^(n+4)-5^(n+4)-4^(n+4)-3^(n+4)-2^(n+4)` -/
def P15874504233263958725.Spec : Prop :=
  ∀ n, P15874504233263958725.a n = A137789 (n + 4)

theorem P15874504233263958725.correct : P15874504233263958725.Spec := by
  intro n
  simp only [A137789, Nat.add_sub_cancel]

end A137789

/-!
# A137790: a(n) = 8^n-7^n-6^n-5^n-4^n-3^n-2^n.

The programs for A137790, the canonical program `A137790.P12397116425505096847` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137790 has offset 5).

The definition of A137790 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^(n+5)-7^(n+5)-6^(n+5)-5^(n+5)-4^(n+5)-3^(n+5)-2^(n+5)` (program `A137790.P12397116425505096847`, by `A137790.P12397116425505096847.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137790.P12397116425505096847

`8^(n+5)-7^(n+5)-6^(n+5)-5^(n+5)-4^(n+5)-3^(n+5)-2^(n+5)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137790

/-- `8^(n+5)-7^(n+5)-6^(n+5)-5^(n+5)-4^(n+5)-3^(n+5)-2^(n+5)` -/
def P12397116425505096847.Spec : Prop :=
  ∀ n, P12397116425505096847.a n = A137790 (n + 5)

theorem P12397116425505096847.correct : P12397116425505096847.Spec := by
  intro n
  simp only [A137790, Nat.add_sub_cancel]

end A137790

/-!
# A137791: Number of ways to write n as sum of two positive numbers having no prime gaps in their factorization.

The programs for A137791, there is no canonical definition to state claims against.
-/

/-! ## A137791.P784886068976146458

`A048766(A193433(n)-A103574(n+1))`
-/

namespace A137791.P784886068976146458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A193433 n - A103574 (n + 1)).toNat

end

end A137791.P784886068976146458

/-! ## A137791.P5686263185113566265

`∑[A016394(A328578(n)!)]`
-/

namespace A137791.P5686263185113566265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016394 (Nat.factorial (A328578 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137791.P5686263185113566265

/-! ## A137791.P2118638269178740276

`ceil(n/2)-A001221(A147249(n+1))`
-/

namespace A137791.P2118638269178740276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ - A001221 (A147249 (n + 1)).toNat

end

end A137791.P2118638269178740276

/-! ## A137791.P280996910094550277

`A110654(n)-A001221(A147187(n+1))`
-/

namespace A137791.P280996910094550277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A001221 (A147187 (n + 1)).toNat

end

end A137791.P280996910094550277

/-! ## A137791.P12560591629853934861

`A371355(n*A328404(3*n)+1)`
-/

namespace A137791.P12560591629853934861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371355 ((n : ℤ) * A328404 (3 * n) + 1).toNat

end

end A137791.P12560591629853934861

/-!
# A137792: Number of partitions of n into parts with no prime gaps in their factorization.

The programs for A137792, there is no canonical definition to state claims against.
-/

/-! ## A137792.P8621992922234098937

`A039905(n+1)-A102683(A039928(n+1))`
-/

namespace A137792.P8621992922234098937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039905 (n + 1) - A102683 (A039928 (n + 1)).toNat

end

end A137792.P8621992922234098937

/-! ## A137792.P7823594790563499047

`A339404(A187829(n+1))+A008641(n)`
-/

namespace A137792.P7823594790563499047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339404 (A187829 (n + 1)).toNat + A008641 n

end

end A137792.P7823594790563499047

/-! ## A137792.P1335266114407801172

`A266781(A187829(n+1))+A104502(n)`
-/

namespace A137792.P1335266114407801172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266781 (A187829 (n + 1)).toNat + A104502 n

end

end A137792.P1335266114407801172

/-! ## A137792.P8158171649355694986

`A039905(n+1)-A178798(A032153(n))`
-/

namespace A137792.P8158171649355694986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039905 (n + 1) - A178798 (A032153 n).toNat

end

end A137792.P8158171649355694986

/-! ## A137792.P17311777804385544457

`A000041(A187829(n+1))-A326530(n)`
-/

namespace A137792.P17311777804385544457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A187829 (n + 1)).toNat - A326530 n

end

end A137792.P17311777804385544457

/-!
# A137793: Number of partitions of n into distinct parts with no prime gaps in their factorization.

The programs for A137793, there is no canonical definition to state claims against.
-/

/-! ## A137793.P12584469468968024875

`A067659(n+4)-A322358(A018074(n+3))`
-/

namespace A137793.P12584469468968024875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 (n + 4) - A322358 (A018074 (n + 3)).toNat

end

end A137793.P12584469468968024875

/-! ## A137793.P13873319359441647932

`floor(sqrt(Δ[A118301(3*n+5)]))`
-/

namespace A137793.P13873319359441647932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118301 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n)

end

end A137793.P13873319359441647932

/-! ## A137793.P1924570304720928241

`floor(sqrt(Δ[A118302(3*n+5)]))`
-/

namespace A137793.P1924570304720928241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118302 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n)

end

end A137793.P1924570304720928241

/-! ## A137793.P11084070726838681814

`A204560(Δ[n²]*A328546(n))`
-/

namespace A137793.P11084070726838681814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204560 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A328546 n).toNat

end

end A137793.P11084070726838681814

/-! ## A137793.P11371705169139689576

`A204551(xor(A039946(n+3), A076610(n+1)))`
-/

namespace A137793.P11371705169139689576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (Int.xor (A039946 (n + 3)) (A076610 (n + 1))).toNat

end

end A137793.P11371705169139689576

/-!
# A137794: Characteristic function of numbers having no prime gaps in their factorization.

The programs for A137794, the canonical program `A137794.P4088568533380436255` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137794 has offset 1).

The definition of A137794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137794.P2017403033126185183

`A192280(∏{p}[n+1, #])`
-/

namespace A137794.P2017403033126185183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192280 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A137794.P2017403033126185183

namespace A137794

/-- `A192280(∏{p}[n+1, #])` -/
def P2017403033126185183.Spec : Prop :=
  ∀ n, P2017403033126185183.a n = A137794 (n + 1)

end A137794

/-! ## A137794.P7644806387351523767

`A389449(∏{p}[n+1, #])`
-/

namespace A137794.P7644806387351523767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389449 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A137794.P7644806387351523767

namespace A137794

/-- `A389449(∏{p}[n+1, #])` -/
def P7644806387351523767.Spec : Prop :=
  ∀ n, P7644806387351523767.a n = A137794 (n + 1)

end A137794

/-! ## A137794.P4088568533380436255

`A287170(n+1)!%2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A137794

/-- `A287170(n+1)!%2` -/
def P4088568533380436255.Spec : Prop :=
  ∀ n, (P4088568533380436255.a n : ℤ) = A137794 (n + 1)

theorem P4088568533380436255.correct : P4088568533380436255.Spec := by
  intro n
  simp only [A137794, Nat.add_sub_cancel]

end A137794

/-! ## A137794.P5280588420072557063

`char[A073491(n+1)-1]`
-/

namespace A137794.P5280588420072557063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A137794.P5280588420072557063

namespace A137794

/-- `char[A073491(n+1)-1]` -/
def P5280588420072557063.Spec : Prop :=
  ∀ n, (P5280588420072557063.a n : ℤ) = A137794 (n + 1)

end A137794

/-! ## A137794.P7735714834568890589

`char[eq[0, A073490(n+1)]]`
-/

namespace A137794.P7735714834568890589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A137794.P7735714834568890589

namespace A137794

/-- `char[eq[0, A073490(n+1)]]` -/
def P7735714834568890589.Spec : Prop :=
  ∀ n, (P7735714834568890589.a n : ℤ) = A137794 (n + 1)

end A137794

/-! ## A137794.P4519981069095471

`char[lt[A117371(n+1), 1]]`
-/

namespace A137794.P4519981069095471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117371 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A137794.P4519981069095471

namespace A137794

/-- `char[lt[A117371(n+1), 1]]` -/
def P4519981069095471.Spec : Prop :=
  ∀ n, (P4519981069095471.a n : ℤ) = A137794 (n + 1)

end A137794

/-! ## A137794.P12979957020677872753

`C(A074044(n+1), n+1)`
-/

namespace A137794.P12979957020677872753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A074044 (n + 1)).toNat (n + 1)

end

end A137794.P12979957020677872753

namespace A137794

/-- `C(A074044(n+1), n+1)` -/
def P12979957020677872753.Spec : Prop :=
  ∀ n, (P12979957020677872753.a n : ℤ) = A137794 (n + 1)

end A137794

/-! ## A137794.P12367717165413969144

`A000007(A117371(n+1))`
-/

namespace A137794.P12367717165413969144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A117371 (n + 1)).toNat

end

end A137794.P12367717165413969144

namespace A137794

/-- `A000007(A117371(n+1))` -/
def P12367717165413969144.Spec : Prop :=
  ∀ n, P12367717165413969144.a n = A137794 (n + 1)

end A137794

/-! ## A137794.P17334368626146197392

`A192280(A007947(n+1))`
-/

namespace A137794.P17334368626146197392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192280 (A007947 (n + 1)).toNat

end

end A137794.P17334368626146197392

namespace A137794

/-- `A192280(A007947(n+1))` -/
def P17334368626146197392.Spec : Prop :=
  ∀ n, P17334368626146197392.a n = A137794 (n + 1)

end A137794

/-! ## A137794.P10544679081828925070

`A192280(A334085(n+1))`
-/

namespace A137794.P10544679081828925070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192280 (A334085 (n + 1)).toNat

end

end A137794.P10544679081828925070

namespace A137794

/-- `A192280(A334085(n+1))` -/
def P10544679081828925070.Spec : Prop :=
  ∀ n, P10544679081828925070.a n = A137794 (n + 1)

end A137794

/-! ## A137794.P15244996856209279330

`A073532(n+1)^A073490(n+1)`
-/

namespace A137794.P15244996856209279330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073532 (n + 1) : ℚ) ^ (A073490 (n + 1) : ℤ)

end

end A137794.P15244996856209279330

namespace A137794

/-- `A073532(n+1)^A073490(n+1)` -/
def P15244996856209279330.Spec : Prop :=
  ∀ n, P15244996856209279330.a n = (A137794 (n + 1) : ℚ)

end A137794

/-! ## A137794.P3041445178326982088

`A073490(A073481(n+1))^A073490(n+1)`
-/

namespace A137794.P3041445178326982088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073490 (A073481 (n + 1)).toNat : ℚ) ^ (A073490 (n + 1) : ℤ)

end

end A137794.P3041445178326982088

namespace A137794

/-- `A073490(A073481(n+1))^A073490(n+1)` -/
def P3041445178326982088.Spec : Prop :=
  ∀ n, P3041445178326982088.a n = (A137794 (n + 1) : ℚ)

end A137794

/-! ## A137794.P17800702556533727551

`A073490(A073482(n+1))^A073490(n+1)`
-/

namespace A137794.P17800702556533727551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073490 (A073482 (n + 1)).toNat : ℚ) ^ (A073490 (n + 1) : ℤ)

end

end A137794.P17800702556533727551

namespace A137794

/-- `A073490(A073482(n+1))^A073490(n+1)` -/
def P17800702556533727551.Spec : Prop :=
  ∀ n, P17800702556533727551.a n = (A137794 (n + 1) : ℚ)

end A137794

/-! ## A137794.P7304987136961541879

`C(A020639(n+1), A020639(n+1)*A287170(n+1))`
-/

namespace A137794.P7304987136961541879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat (A020639 (n + 1) * A287170 (n + 1)).toNat

end

end A137794.P7304987136961541879

namespace A137794

/-- `C(A020639(n+1), A020639(n+1)*A287170(n+1))` -/
def P7304987136961541879.Spec : Prop :=
  ∀ n, (P7304987136961541879.a n : ℤ) = A137794 (n + 1)

end A137794

/-! ## A137794.P1833284207142262325

`A073531(n+2)^A073490(n+1)`
-/

namespace A137794.P1833284207142262325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073531 (n + 2) : ℚ) ^ (A073490 (n + 1) : ℤ)

end

end A137794.P1833284207142262325

namespace A137794

/-- `A073531(n+2)^A073490(n+1)` -/
def P1833284207142262325.Spec : Prop :=
  ∀ n, P1833284207142262325.a n = (A137794 (n + 1) : ℚ)

end A137794

/-! ## A137794.P8221255839479090375

`char[lt[A286470(n+1), 2]]`
-/

namespace A137794.P8221255839479090375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A137794.P8221255839479090375

namespace A137794

/-- `char[lt[A286470(n+1), 2]]` -/
def P8221255839479090375.Spec : Prop :=
  ∀ n, (P8221255839479090375.a n : ℤ) = A137794 (n + 1)

end A137794

/-! ## A137794.P17208741771318541792

`A000007(n*A073490(n+1))`
-/

namespace A137794.P17208741771318541792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A073490 (n + 1)).toNat

end

end A137794.P17208741771318541792

namespace A137794

/-- `A000007(n*A073490(n+1))` -/
def P17208741771318541792.Spec : Prop :=
  ∀ n, P17208741771318541792.a n = A137794 (n + 1)

end A137794

/-! ## A137794.P10038197642787372588

`A192280(A328915(n+1))`
-/

namespace A137794.P10038197642787372588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192280 (A328915 (n + 1)).toNat

end

end A137794.P10038197642787372588

namespace A137794

/-- `A192280(A328915(n+1))` -/
def P10038197642787372588.Spec : Prop :=
  ∀ n, P10038197642787372588.a n = A137794 (n + 1)

end A137794

/-! ## A137794.P18446407566477032592

`A049084(A000961(n*A073490(n+1)+1)+1)`
-/

namespace A137794.P18446407566477032592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A000961 ((n : ℤ) * A073490 (n + 1) + 1).toNat + 1).toNat

end

end A137794.P18446407566477032592

namespace A137794

/-- `A049084(A000961(n*A073490(n+1)+1)+1)` -/
def P18446407566477032592.Spec : Prop :=
  ∀ n, P18446407566477032592.a n = A137794 (n + 1)

end A137794

/-! ## A137794.P2880824525097236673

`C(2, A137795(n+1)+1)`
-/

namespace A137794.P2880824525097236673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A137795 (n + 1) + 1).toNat

end

end A137794.P2880824525097236673

namespace A137794

/-- `C(2, A137795(n+1)+1)` -/
def P2880824525097236673.Spec : Prop :=
  ∀ n, (P2880824525097236673.a n : ℤ) = A137794 (n + 1)

end A137794

/-!
# A137795: Smallest positive m such that m*n is free of prime gaps in canonical factorization.

The programs for A137795, there is no canonical definition to state claims against.
-/

/-! ## A137795.P14327028712535844808

`A083720(n+1)/A034386(A020639(n+1)-1)`
-/

namespace A137795.P14327028712535844808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083720 (n + 1) : ℚ) / (A034386 (A020639 (n + 1) - 1).toNat : ℚ)

end

end A137795.P14327028712535844808

/-! ## A137795.P16805639644877395294

`A073483(A322590(n+1))`
-/

namespace A137795.P16805639644877395294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073483 (A322590 (n + 1)).toNat

end

end A137795.P16805639644877395294

/-! ## A137795.P16515291686354140987

`A073483(A285329(n+1)+1)`
-/

namespace A137795.P16515291686354140987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073483 (A285329 (n + 1) + 1).toNat

end

end A137795.P16515291686354140987

/-! ## A137795.P15728969790833180495

`A072941(n+1)/(n+1)`
-/

namespace A137795.P15728969790833180495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072941 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A137795.P15728969790833180495

/-! ## A137795.P12785320105126170738

`A083720(n+1)/A083720(A020639(n+1))`
-/

namespace A137795.P12785320105126170738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083720 (n + 1) : ℚ) / (A083720 (A020639 (n + 1)).toNat : ℚ)

end

end A137795.P12785320105126170738

/-! ## A137795.P1803816204093985974

`gcd(A066838(n+1), A072941(n+1))`
-/

namespace A137795.P1803816204093985974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066838 (n + 1)) (A072941 (n + 1))

end

end A137795.P1803816204093985974

/-!
# A137796: Prime numbers p such that p + 12 and p - 12 are primes.

The programs for A137796, there is no canonical definition to state claims against.
-/

/-! ## A137796.P16916055545734637405

`A185022(n+1)+12`
-/

namespace A137796.P16916055545734637405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185022 (n + 1) + 12

end

end A137796.P16916055545734637405

/-! ## A137796.P1552573153895161060

`∩[A046133(n+1), A092216(n+1)]`
-/

namespace A137796.P1552573153895161060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137796.P1552573153895161060

/-! ## A137796.P13765604320758887050

`∩[A015917(n+1), A092216(n+1)]`
-/

namespace A137796.P13765604320758887050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137796.P13765604320758887050

/-! ## A137796.P11895521894532891231

`p?[A033560(n+1)+12]`
-/

namespace A137796.P11895521894532891231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033560 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137796.P11895521894532891231

/-! ## A137796.P12590535674217565509

`∩[A056775(n+1), A092216(n+1)]`
-/

namespace A137796.P12590535674217565509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137796.P12590535674217565509

/-! ## A137796.P11178655811466101248

`record[A006530(A033560(n+1)+12)]`
-/

namespace A137796.P11178655811466101248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A033560 (n + 1) + 12).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137796.P11178655811466101248

/-! ## A137796.P17085142316458551163

`record[A020639(A033560(n+1)+12)]`
-/

namespace A137796.P17085142316458551163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A033560 (n + 1) + 12).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137796.P17085142316458551163

/-! ## A137796.P10711609569948898551

`A033662(A185022(n+1))`
-/

namespace A137796.P10711609569948898551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033662 (A185022 (n + 1)).toNat

end

end A137796.P10711609569948898551

/-! ## A137796.P9121184960921272556

`record[A014963(A033560(n+1)+12)]`
-/

namespace A137796.P9121184960921272556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A033560 (n + 1) + 12).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137796.P9121184960921272556

/-!
# A137797: a(n) = 2*( (n+1) mod 5 ) - 2*( (n+1) mod 2 ).

The programs for A137797, the canonical program `A137797.P9077106251388791321` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137797 has offset 0).

The definition of A137797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137797.P9077106251388791321

`2*((n+1)%5-char[2*n])`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137797

/-- `2*((n+1)%5-char[2*n])` -/
def P9077106251388791321.Spec : Prop :=
  ∀ n, P9077106251388791321.a n = A137797 n

theorem P9077106251388791321.correct : P9077106251388791321.Spec := by
  intro n
  simp only [A137797]

end A137797

/-!
# A137798: Partial sums of A137797.

The programs for A137798, the canonical program `A137798.P1253783435186496139` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137798 has offset 0).

The definition of A137798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137798.P1253783435186496139

`a(n-2)+a(n-5)-a(n-7)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=8, a(4)=16, a(5)=14, a(6)=16`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137798

/-- `a(n-2)+a(n-5)-a(n-7)` -/
def P1253783435186496139.Spec : Prop :=
  ∀ n, P1253783435186496139.a n = A137798 n

theorem P1253783435186496139.correct : P1253783435186496139.Spec := by
  intro n
  simp only [A137798]

end A137798

/-! ## A137798.P1020879449839087248

`∑[2*(n%5-n%2)]`
-/

namespace A137798.P1020879449839087248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((n % 5 : ℕ) : ℤ) - ((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137798.P1020879449839087248

namespace A137798

/-- `∑[2*(n%5-n%2)]` -/
def P1020879449839087248.Spec : Prop :=
  ∀ n, P1020879449839087248.a n = A137798 n

end A137798

/-! ## A137798.P5867670388801607329

`∑[A137797(A028310(n)-1)]`
-/

namespace A137798.P5867670388801607329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137797 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137798.P5867670388801607329

namespace A137798

/-- `∑[A137797(A028310(n)-1)]` -/
def P5867670388801607329.Spec : Prop :=
  ∀ n, P5867670388801607329.a n = A137798 n

end A137798

/-! ## A137798.P545121416801558800

`∑[A137797(A004273(n)-n)]`
-/

namespace A137798.P545121416801558800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137797 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137798.P545121416801558800

namespace A137798

/-- `∑[A137797(A004273(n)-n)]` -/
def P545121416801558800.Spec : Prop :=
  ∀ n, P545121416801558800.a n = A137798 n

end A137798

/-! ## A137798.P8816218609364479345

`∑[A137797(n)]-A137797(n)`
-/

namespace A137798.P8816218609364479345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A137797 n

end

end A137798.P8816218609364479345

namespace A137798

/-- `∑[A137797(n)]-A137797(n)` -/
def P8816218609364479345.Spec : Prop :=
  ∀ n, P8816218609364479345.a n = A137798 n

end A137798

/-! ## A137798.P675728344055914411

`∑[A141518(n)-Δ[A042948(n)]]`
-/

namespace A137798.P675728344055914411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141518 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137798.P675728344055914411

namespace A137798

/-- `∑[A141518(n)-Δ[A042948(n)]]` -/
def P675728344055914411.Spec : Prop :=
  ∀ n, P675728344055914411.a n = A137798 n

end A137798

/-! ## A137798.P4571435015125469210

`∑[A141518(n)]-A042948(n+1)`
-/

namespace A137798.P4571435015125469210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A042948 (n + 1)

end

end A137798.P4571435015125469210

namespace A137798

/-- `∑[A141518(n)]-A042948(n+1)` -/
def P4571435015125469210.Spec : Prop :=
  ∀ n, P4571435015125469210.a n = A137798 n

end A137798

/-! ## A137798.P1009704382051565671

`∑[A137797(A023443(A028310(n)))]`
-/

namespace A137798.P1009704382051565671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137797 (A023443 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137798.P1009704382051565671

namespace A137798

/-- `∑[A137797(A023443(A028310(n)))]` -/
def P1009704382051565671.Spec : Prop :=
  ∀ n, P1009704382051565671.a n = A137798 n

end A137798

/-! ## A137798.P15930569350401887859

`∑[A137797(n+9)]`
-/

namespace A137798.P15930569350401887859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137797 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137798.P15930569350401887859

namespace A137798

/-- `∑[A137797(n+9)]` -/
def P15930569350401887859.Spec : Prop :=
  ∀ n, P15930569350401887859.a n = A137798 n

end A137798

/-! ## A137798.P3438032677370820840

`A005843(∑[n%5]-A110654(n))`
-/

namespace A137798.P3438032677370820840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A110654 n).toNat

end

end A137798.P3438032677370820840

namespace A137798

/-- `A005843(∑[n%5]-A110654(n))` -/
def P3438032677370820840.Spec : Prop :=
  ∀ n, P3438032677370820840.a n = A137798 n

end A137798

/-! ## A137798.P3840611960568868198

`∑[A171654(4*n+1)]-A042948(n+1)`
-/

namespace A137798.P3840611960568868198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171654 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A042948 (n + 1)

end

end A137798.P3840611960568868198

namespace A137798

/-- `∑[A171654(4*n+1)]-A042948(n+1)` -/
def P3840611960568868198.Spec : Prop :=
  ∀ n, P3840611960568868198.a n = A137798 n

end A137798

/-!
# A137799: Consider the first run of composites that contains at least two numbers whose largest prime factor is prime(n), n >= 2. a(n) is the first of these numbers.

The programs for A137799, there is no canonical definition to state claims against.
-/

/-! ## A137799.P5490558287721162932

`A137800(n+2)-p?[A004273(n)]`
-/

namespace A137799.P5490558287721162932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137800 (n + 2) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137799.P5490558287721162932

/-! ## A137799.P14788731346831810499

`A137800(n+2)-p?[A005408(n)]`
-/

namespace A137799.P14788731346831810499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137800 (n + 2) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137799.P14788731346831810499

/-! ## A137799.P13752502345310537857

`A137800(n+2)-p?[A022998(n)]`
-/

namespace A137799.P13752502345310537857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137800 (n + 2) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137799.P13752502345310537857

/-! ## A137799.P15095648602830388457

`A137800(n+2)-p?[A093178(n)]`
-/

namespace A137799.P15095648602830388457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137800 (n + 2) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137799.P15095648602830388457

/-! ## A137799.P2687273172520692106

`A137800(n+2)-A065091(n+1)`
-/

namespace A137799.P2687273172520692106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137800 (n + 2) - A065091 (n + 1)

end

end A137799.P2687273172520692106

