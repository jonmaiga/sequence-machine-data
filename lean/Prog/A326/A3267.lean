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
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
# A326700: Denominator of the average position of a 1 in the reversed binary expansion of n.

The programs for A326700, there is no canonical definition to state claims against.
-/

/-! ## A326700.P2843061249911969176

`A000120(n+1)/A029931(n+1)*A326699(n+1)`
-/

namespace A326700.P2843061249911969176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 (n + 1) : ℚ) / (A029931 (n + 1) : ℚ) * (A326699 (n + 1) : ℚ)

end

end A326700.P2843061249911969176

/-! ## A326700.P2285162212883778860

`A326699(2*(n+1))-A326699(n+1)`
-/

namespace A326700.P2285162212883778860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326699 (2 * (n + 1)) - A326699 (n + 1)

end

end A326700.P2285162212883778860

/-! ## A326700.P9957298527733346036

`A000120(n+1)/gcd(A000120(n+1), A029931(4*(n+1)))`
-/

namespace A326700.P9957298527733346036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 (n + 1) : ℚ) / (Int.gcd (A000120 (n + 1)) (A029931 (4 * (n + 1))) : ℚ)

end

end A326700.P9957298527733346036

/-! ## A326700.P10635690015164005091

`A326568(A019565(n+1))`
-/

namespace A326700.P10635690015164005091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (A019565 (n + 1)).toNat

end

end A326700.P10635690015164005091

/-! ## A326700.P775850616819581849

`A326568(A110765(n+1))`
-/

namespace A326700.P775850616819581849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (A110765 (n + 1)).toNat

end

end A326700.P775850616819581849

/-! ## A326700.P13165942222992165860

`A326568(A332382(n+1))`
-/

namespace A326700.P13165942222992165860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (A332382 (n + 1)).toNat

end

end A326700.P13165942222992165860

/-!
# A326701: BII-numbers of set partitions.

The programs for A326701, there is no canonical definition to state claims against.
-/

/-! ## A326701.P8700634668288923152

`∩[A326704(n+1), A326880(n+1)]`
-/

namespace A326701.P8700634668288923152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326701.P8700634668288923152

/-! ## A326701.P3224021460144290220

`∩[A326704(n+1), A326872(n+1)]`
-/

namespace A326701.P3224021460144290220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326701.P3224021460144290220

/-! ## A326701.P1975535656969667139

`∪[A131577(n), A330296(n+1)]`
-/

namespace A326701.P1975535656969667139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326701.P1975535656969667139

/-! ## A326701.P13761245212513414099

`eq[1, A004065(n)%2]`
-/

namespace A326701.P13761245212513414099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004065 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326701.P13761245212513414099

/-! ## A326701.P4353484082933520058

`eq[A000120(n), A326753(n)]`
-/

namespace A326701.P4353484082933520058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326753 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326701.P4353484082933520058

/-!
# A326702: Number of distinct vertices in the set-system with BII-number n.

The programs for A326702, there is no canonical definition to state claims against.
-/

/-! ## A326702.P15447653221857193221

`A000120(lcm((-1)^n, A327041(n)))`
-/

namespace A326702.P15447653221857193221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm ((-1) ^ n) (A327041 n))

end

end A326702.P15447653221857193221

/-! ## A326702.P16493984208854431626

`A000120(or(val(n+1, 2), A327041(n)))`
-/

namespace A326702.P16493984208854431626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lor (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A327041 n)).toNat

end

end A326702.P16493984208854431626

/-! ## A326702.P16059710494638791202

`A000120(gcd(n, n+1)*A327041(n))`
-/

namespace A326702.P16059710494638791202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((Nat.gcd n (n + 1) : ℤ) * A327041 n).toNat

end

end A326702.P16059710494638791202

/-! ## A326702.P10732039732473962843

`A000120(C(2, C(2, n²))*A327041(n))`
-/

namespace A326702.P10732039732473962843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((Nat.choose 2 (Nat.choose 2 (n ^ 2)) : ℤ) * A327041 n).toNat

end

end A326702.P10732039732473962843

/-! ## A326702.P15470164316691555686

`A000120(A327041(n)/C(2, C(2, n²)))`
-/

namespace A326702.P15470164316691555686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A327041 n : ℚ) / (Nat.choose 2 (Nat.choose 2 (n ^ 2)) : ℚ))).toNat

end

end A326702.P15470164316691555686

/-! ## A326702.P18424376562318933822

`A000120(A327041(n)^C(2, C(2, n²)))`
-/

namespace A326702.P18424376562318933822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A327041 n ^ Nat.choose 2 (Nat.choose 2 (n ^ 2))).toNat

end

end A326702.P18424376562318933822

/-! ## A326702.P427338628891872498

`A000120(floor(n^(1/2)²)*A327041(n))`
-/

namespace A326702.P427338628891872498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (⌊(n : ℝ) ^ (((1 : ℚ) / 2) ^ 2 : ℝ)⌋ * A327041 n).toNat

end

end A326702.P427338628891872498

/-! ## A326702.P13701404208346717067

`∑{p}[A001316(n)*A327041(n), A003646(#)]`
-/

namespace A326702.P13701404208346717067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A327041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003646 p

end

end A326702.P13701404208346717067

/-! ## A326702.P3716083790882714164

`A265340(A265340(A330195(n)))`
-/

namespace A326702.P3716083790882714164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265340 (A265340 (A330195 n).toNat).toNat

end

end A326702.P3716083790882714164

/-!
# A326703: BII-numbers of chains of nonempty sets.

The programs for A326703, there is no canonical definition to state claims against.
-/

/-! ## A326703.P16281935793453703361

`eq[1, and(1, A124774(n))]`
-/

namespace A326703.P16281935793453703361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A124774 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326703.P16281935793453703361

/-! ## A326703.P4778697408063835830

`∩[A095736(n+1), A326913(n+1)]`
-/

namespace A326703.P4778697408063835830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326703.P4778697408063835830

/-! ## A326703.P17300899893354424580

`∩[A233564(n+1), A326913(n+1)]`
-/

namespace A326703.P17300899893354424580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326703.P17300899893354424580

/-! ## A326703.P16981383139836781613

`∩[A326913(n+1), A337582(n+1)]`
-/

namespace A326703.P16981383139836781613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326703.P16981383139836781613

/-! ## A326703.P16664156236796341477

`∩[A326913(n+1), A390673(n+1)]`
-/

namespace A326703.P16664156236796341477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326703.P16664156236796341477

/-!
# A326704: BII-numbers of antichains of nonempty sets.

The programs for A326704, there is no canonical definition to state claims against.
-/

/-! ## A326704.P3804772582283802891

`∪[A326750(n+1), A329560(n+1)]`
-/

namespace A326704.P3804772582283802891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326704.P3804772582283802891

/-! ## A326704.P8772716532418196312

`∪[A326752(n+1), A329560(n+1)]`
-/

namespace A326704.P8772716532418196312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326704.P8772716532418196312

/-! ## A326704.P15409916585004727415

`∪[A329560(n+1), A329561(n+1)]`
-/

namespace A326704.P15409916585004727415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326704.P15409916585004727415

/-! ## A326704.P5470885568633153547

`∪[A309326(n+1), A329560(n+1)]`
-/

namespace A326704.P5470885568633153547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326704.P5470885568633153547

/-! ## A326704.P5668266707311935645

`∪[A309314(n+1), A329560(n+1)]`
-/

namespace A326704.P5668266707311935645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326704.P5668266707311935645

/-!
# A326707: Squares m such that beta(m) = (tau(m) - 3)/2 where beta(m) is the number of Brazilian representations of m and tau(m) is the number of divisors of m.

The programs for A326707, there is no canonical definition to state claims against.
-/

/-! ## A326707.P12476628799220940393

`∪[A326708(n+1), A326709(n+1)]`
-/

namespace A326707.P12476628799220940393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326707.P12476628799220940393

/-! ## A326707.P11874342188556180629

`∑[A035214(A194715(n+2))]²`
-/

namespace A326707.P11874342188556180629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A194715 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A326707.P11874342188556180629

/-! ## A326707.P2472870905530273741

`lt[A055265(n+1), A329449(2*n)]²`
-/

namespace A326707.P2472870905530273741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329449 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A326707.P2472870905530273741

/-! ## A326707.P7718338798212443597

`lt[A143323(n+1), A143334(A143346(n+1))]²`
-/

namespace A326707.P7718338798212443597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143334 (A143346 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A326707.P7718338798212443597

/-! ## A326707.P8524452682171091908

`lt[A323989(n+1), A380201(3*(n+1))]²`
-/

namespace A326707.P8524452682171091908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380201 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A326707.P8524452682171091908

/-!
# A326708: Non-Brazilian squares of primes.

The programs for A326708, there is no canonical definition to state claims against.
-/

/-! ## A326708.P14180100412990828010

`A190300(A065475(n+1))`
-/

namespace A326708.P14180100412990828010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190300 (A065475 (n + 1)).toNat

end

end A326708.P14180100412990828010

/-! ## A326708.P478600209049154078

`A190300(A181440(n+2))`
-/

namespace A326708.P478600209049154078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190300 (A181440 (n + 2)).toNat

end

end A326708.P478600209049154078

/-! ## A326708.P11758089070421212619

`A190300(A184985(n+2))`
-/

namespace A326708.P11758089070421212619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190300 (A184985 (n + 2)).toNat

end

end A326708.P11758089070421212619

/-! ## A326708.P11306842748775567513

`∩[A001248(n+1), A190300(n+1)]`
-/

namespace A326708.P11306842748775567513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326708.P11306842748775567513

/-! ## A326708.P8410737817920264938

`∩[A064599(n+1), A190300(n+1)]`
-/

namespace A326708.P8410737817920264938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326708.P8410737817920264938

/-! ## A326708.P16855086477334923862

`∩[A056798(n+1), A190300(n+1)]`
-/

namespace A326708.P16855086477334923862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326708.P16855086477334923862

/-! ## A326708.P8097991547698530868

`∩[A051676(n+1), A190300(n+1)]`
-/

namespace A326708.P8097991547698530868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326708.P8097991547698530868

/-! ## A326708.P9698706936003997253

`∩[A076794(n+1), A190300(n+1)]`
-/

namespace A326708.P9698706936003997253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326708.P9698706936003997253

/-! ## A326708.P529687763260859492

`∩[A053810(n+1), A190300(n+1)]`
-/

namespace A326708.P529687763260859492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326708.P529687763260859492

/-! ## A326708.P3150417520286321644

`∩[A073045(n+1), A190300(n+1)]`
-/

namespace A326708.P3150417520286321644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326708.P3150417520286321644

/-! ## A326708.P2436810740253281924

`∩[A025475(n+1), A190300(n+1)]`
-/

namespace A326708.P2436810740253281924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326708.P2436810740253281924

/-! ## A326708.P11741761195213484979

`∩[A134611(n+1), A190300(n+1)]`
-/

namespace A326708.P11741761195213484979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326708.P11741761195213484979

/-! ## A326708.P11166886601328687247

`∩[A357497(n+1), A190300(n+1)]`
-/

namespace A326708.P11166886601328687247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326708.P11166886601328687247

/-! ## A326708.P1064908598283197569

`∩[A080062(n+1), A190300(n+1)]`
-/

namespace A326708.P1064908598283197569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326708.P1064908598283197569

/-! ## A326708.P17920435973035193238

`∩[A077438(n+1), A190300(n+1)]`
-/

namespace A326708.P17920435973035193238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326708.P17920435973035193238

/-! ## A326708.P7881509565481361558

`∩[A071835(n+1), A190300(n+1)]`
-/

namespace A326708.P7881509565481361558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326708.P7881509565481361558

/-! ## A326708.P5555635897338623265

`∩[A072777(n+1), A190300(n+1)]`
-/

namespace A326708.P5555635897338623265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326708.P5555635897338623265

/-! ## A326708.P12366865072795107100

`∩[A068999(n+1), A190300(n+1)]`
-/

namespace A326708.P12366865072795107100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326708.P12366865072795107100

/-!
# A326709: Squares of composites such that beta(m) = (tau(m) - 3)/2 where beta(m) = A220136(m) is the number of Brazilian representations of m and tau(m) = A000005(m) is the number of divisors of m.

The programs for A326709, there is no canonical definition to state claims against.
-/

/-! ## A326709.P17768939457521531476

`filter[A326707(n+1), A380454(#)]`
-/

namespace A326709.P17768939457521531476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A326709.P17768939457521531476

/-! ## A326709.P4095832795819797889

`filter[A326707(n+2), A341996(#)]`
-/

namespace A326709.P4095832795819797889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326707 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341996 (f1 j).toNat = 1) n)

end

end A326709.P4095832795819797889

/-! ## A326709.P13895975040790589192

`filter[A326707(n+3), A324883(#)]`
-/

namespace A326709.P13895975040790589192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326707 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324883 (f1 j).toNat = 1) n)

end

end A326709.P13895975040790589192

/-! ## A326709.P9172769639035951778

`∩[A033942(n+1), A326707(n+1)]`
-/

namespace A326709.P9172769639035951778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326709.P9172769639035951778

/-! ## A326709.P855075720361705867

`∩[A033987(n+1), A326707(n+1)]`
-/

namespace A326709.P855075720361705867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326709.P855075720361705867

/-!
# A326710: Squares m such that beta(m) = (tau(m) - 1)/2 where beta(m) is the number of Brazilian representations of m and tau(m) is the number of divisors of m.

The programs for A326710, there is no canonical definition to state claims against.
-/

/-! ## A326710.P6067555873805156252

`A158235(n%xor(-3, a(n-1)))²` with `a(0)=1`
-/

namespace A326710.P6067555873805156252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A158235 (Int.tmod (n : ℤ) (Int.xor (-3) (a (n - 1)))).toNat ^ 2

end

end A326710.P6067555873805156252

/-! ## A326710.P2713383372960910990

`∪[A158235(n+1), A226530(n+1)]²`
-/

namespace A326710.P2713383372960910990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A326710.P2713383372960910990

/-! ## A326710.P6640942259204643827

`∪[A158235(n+1), A253854(n+1)]²`
-/

namespace A326710.P6640942259204643827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A326710.P6640942259204643827

/-! ## A326710.P18010614380657899650

`A158235(n*a(A014963(10*(n+1))-1))²` with `a(0)=1`
-/

namespace A326710.P18010614380657899650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A158235 ((n : ℤ) * a (A014963 (10 * (n + 1)) - 1).toNat).toNat ^ 2

end

end A326710.P18010614380657899650

/-! ## A326710.P6129857934521361697

`A158235(A028310(n))²%A006516(n+4)`
-/

namespace A326710.P6129857934521361697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158235 (A028310 n).toNat ^ 2) (A006516 (n + 4))

end

end A326710.P6129857934521361697

/-!
# A326712: Numbers with a record sum of divisors, weighted by divisor multiplicity (A168512).

The programs for A326712, there is no canonical definition to state claims against.
-/

/-! ## A326712.P8818579209101876834

`record[A062821(A171829(2*n+3))]`
-/

namespace A326712.P8818579209101876834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A171829 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326712.P8818579209101876834

/-! ## A326712.P6567430873210982342

`record[A000005(ceil(A003586(n+1)/ϕ))]`
-/

namespace A326712.P6567430873210982342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ⌈(A003586 (n + 1) : ℝ) / Real.goldenRatio⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326712.P6567430873210982342

/-! ## A326712.P16598404104423821162

`lt[A000070(n), A162211(A074206(n))]`
-/

namespace A326712.P16598404104423821162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162211 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326712.P16598404104423821162

/-! ## A326712.P1689491723726657361

`lt[A130259(A240577(n)), A074206(n)]`
-/

namespace A326712.P1689491723726657361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (A240577 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326712.P1689491723726657361

/-! ## A326712.P9597726039764891036

`record[A062821(A000041(n))]`
-/

namespace A326712.P9597726039764891036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A000041 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326712.P9597726039764891036

/-!
# A326713: Numbers m that are neither arithmetic (A003601) nor RMS numbers (A140480).

The programs for A326713, there is no canonical definition to state claims against.
-/

/-! ## A326713.P14278192251861980597

`A049642(n+1)%201`
-/

namespace A326713.P14278192251861980597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049642 (n + 1)) 201

end

end A326713.P14278192251861980597

/-! ## A326713.P16538843214514641153

`lt[C(7, A057021(n+1))%5, 2]+1`
-/

namespace A326713.P16538843214514641153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 7 (A057021 (n + 1)).toNat % 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A326713.P16538843214514641153

/-! ## A326713.P4459430701959508655

`lt[3*n+1, A009278(n+1)]+1`
-/

namespace A326713.P4459430701959508655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009278 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A326713.P4459430701959508655

/-! ## A326713.P5074741792210799796

`A049642(A055643(n)+1)`
-/

namespace A326713.P5074741792210799796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (A055643 n + 1).toNat

end

end A326713.P5074741792210799796

/-! ## A326713.P5218223819323886401

`A049642(A118759(n+1))`
-/

namespace A326713.P5218223819323886401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (A118759 (n + 1)).toNat

end

end A326713.P5218223819323886401

/-! ## A326713.P17343801607814714420

`∪[A328945(n+1), A017569(n)]`
-/

namespace A326713.P17343801607814714420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326713.P17343801607814714420

/-! ## A326713.P248368076562380780

`∪[A034472(n), A328945(n+1)]`
-/

namespace A326713.P248368076562380780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326713.P248368076562380780

/-! ## A326713.P2511573900087342649

`∪[A042516(n), A328945(n+1)]`
-/

namespace A326713.P2511573900087342649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042516 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326713.P2511573900087342649

/-!
# A326714: a(n) = binomial(n,2) + (2-adic valuation of n).

The programs for A326714, the canonical program `A326714.P2677261734638902469` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326714 has offset 1).

The definition of A326714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326714.P2677261734638902469

`A007814(n+1)+A161680(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A326714

/-- `A007814(n+1)+A161680(n+1)` -/
def P2677261734638902469.Spec : Prop :=
  ∀ n, P2677261734638902469.a n = A326714 (n + 1)

theorem P2677261734638902469.correct : P2677261734638902469.Spec := by
  intro n
  simp only [A326714, Nat.add_sub_cancel]

end A326714

/-! ## A326714.P11303017991016263310

`∑[n]+val(n+1, 2)`
-/

namespace A326714.P11303017991016263310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + SequenceMachineLib.valuation (n + 1) 2

end

end A326714.P11303017991016263310

namespace A326714

/-- `∑[n]+val(n+1, 2)` -/
def P11303017991016263310.Spec : Prop :=
  ∀ n, (P11303017991016263310.a n : ℤ) = A326714 (n + 1)

end A326714

/-! ## A326714.P17948319922871733679

`floor(∑[n]+log2(xor(n, n+1)))`
-/

namespace A326714.P17948319922871733679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.logb 2 (Nat.xor n (n + 1) : ℝ)⌋

end

end A326714.P17948319922871733679

namespace A326714

/-- `floor(∑[n]+log2(xor(n, n+1)))` -/
def P17948319922871733679.Spec : Prop :=
  ∀ n, P17948319922871733679.a n = A326714 (n + 1)

end A326714

/-! ## A326714.P5135669294682174563

`val(n+1, 2)+C(n+1, 2)`
-/

namespace A326714.P5135669294682174563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + Nat.choose (n + 1) 2

end

end A326714.P5135669294682174563

namespace A326714

/-- `val(n+1, 2)+C(n+1, 2)` -/
def P5135669294682174563.Spec : Prop :=
  ∀ n, (P5135669294682174563.a n : ℤ) = A326714 (n + 1)

end A326714

/-! ## A326714.P16869811740767739575

`∑[n]+log2(or(n, n+1)-n)`
-/

namespace A326714.P16869811740767739575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.logb 2 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ)

end

end A326714.P16869811740767739575

namespace A326714

/-- `∑[n]+log2(or(n, n+1)-n)` -/
def P16869811740767739575.Spec : Prop :=
  ∀ n, P16869811740767739575.a n = (A326714 (n + 1) : ℝ)

end A326714

/-! ## A326714.P15985445189195145583

`∑[n]+log2(xor(n, or(n, n+1)))`
-/

namespace A326714.P15985445189195145583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.logb 2 (Nat.xor n (Nat.lor n (n + 1)) : ℝ)

end

end A326714.P15985445189195145583

namespace A326714

/-- `∑[n]+log2(xor(n, or(n, n+1)))` -/
def P15985445189195145583.Spec : Prop :=
  ∀ n, P15985445189195145583.a n = (A326714 (n + 1) : ℝ)

end A326714

/-! ## A326714.P7104770533394184703

`∑[n]+log2(and(n+1, -(n+1)))`
-/

namespace A326714.P7104770533394184703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ)

end

end A326714.P7104770533394184703

namespace A326714

/-- `∑[n]+log2(and(n+1, -(n+1)))` -/
def P7104770533394184703.Spec : Prop :=
  ∀ n, P7104770533394184703.a n = (A326714 (n + 1) : ℝ)

end A326714

/-! ## A326714.P647795583203869464

`val(n+1, 2)+(n+1)*n/2`
-/

namespace A326714.P647795583203869464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℚ) + (n + 1 : ℚ) * ((n : ℚ) / 2)

end

end A326714.P647795583203869464

namespace A326714

/-- `val(n+1, 2)+(n+1)*n/2` -/
def P647795583203869464.Spec : Prop :=
  ∀ n, P647795583203869464.a n = (A326714 (n + 1) : ℚ)

end A326714

/-! ## A326714.P3804813740268782148

`Δ[A011371(n)]+∑[n]`
-/

namespace A326714.P3804813740268782148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A326714.P3804813740268782148

namespace A326714

/-- `Δ[A011371(n)]+∑[n]` -/
def P3804813740268782148.Spec : Prop :=
  ∀ n, P3804813740268782148.a n = A326714 (n + 1)

end A326714

/-! ## A326714.P12522871944630940558

`A007814(n+1)+∑[n]`
-/

namespace A326714.P12522871944630940558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A326714.P12522871944630940558

namespace A326714

/-- `A007814(n+1)+∑[n]` -/
def P12522871944630940558.Spec : Prop :=
  ∀ n, P12522871944630940558.a n = A326714 (n + 1)

end A326714

/-! ## A326714.P9397400615546943400

`∑[n]+log2(A006519(n+1))`
-/

namespace A326714.P9397400615546943400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.logb 2 (A006519 (n + 1) : ℝ)

end

end A326714.P9397400615546943400

namespace A326714

/-- `∑[n]+log2(A006519(n+1))` -/
def P9397400615546943400.Spec : Prop :=
  ∀ n, P9397400615546943400.a n = (A326714 (n + 1) : ℝ)

end A326714

/-! ## A326714.P13643236154072077090

`∑[n]+A001222(or(n, n+1)-n)`
-/

namespace A326714.P13643236154072077090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A001222 (Nat.lor n (n + 1) - n)

end

end A326714.P13643236154072077090

namespace A326714

/-- `∑[n]+A001222(or(n, n+1)-n)` -/
def P13643236154072077090.Spec : Prop :=
  ∀ n, P13643236154072077090.a n = A326714 (n + 1)

end A326714

/-! ## A326714.P16713018751574733286

`∑[n]+A001222(and(n+1, -(n+1)))`
-/

namespace A326714.P16713018751574733286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A001222 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat

end

end A326714.P16713018751574733286

namespace A326714

/-- `∑[n]+A001222(and(n+1, -(n+1)))` -/
def P16713018751574733286.Spec : Prop :=
  ∀ n, P16713018751574733286.a n = A326714 (n + 1)

end A326714

/-! ## A326714.P5152765058385319498

`∑[n]+A001222(n+1-and(n, n+1))`
-/

namespace A326714.P5152765058385319498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A001222 (n + 1 - Nat.land n (n + 1))

end

end A326714.P5152765058385319498

namespace A326714

/-- `∑[n]+A001222(n+1-and(n, n+1))` -/
def P5152765058385319498.Spec : Prop :=
  ∀ n, P5152765058385319498.a n = A326714 (n + 1)

end A326714

/-! ## A326714.P8499105288251130225

`A283208(n)+A127944(n)`
-/

namespace A326714.P8499105288251130225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283208 n + A127944 n

end

end A326714.P8499105288251130225

namespace A326714

/-- `A283208(n)+A127944(n)` -/
def P8499105288251130225.Spec : Prop :=
  ∀ n, P8499105288251130225.a n = A326714 (n + 1)

end A326714

/-! ## A326714.P3880537771334286150

`A000124(n)-Δ[A000120(n)]`
-/

namespace A326714.P3880537771334286150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (f1 (n + 1) - f1 n)

end

end A326714.P3880537771334286150

namespace A326714

/-- `A000124(n)-Δ[A000120(n)]` -/
def P3880537771334286150.Spec : Prop :=
  ∀ n, P3880537771334286150.a n = A326714 (n + 1)

end A326714

/-! ## A326714.P290513633753017201

`A000124(n)-A088705(n+1)`
-/

namespace A326714.P290513633753017201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A088705 (n + 1)

end

end A326714.P290513633753017201

namespace A326714

/-- `A000124(n)-A088705(n+1)` -/
def P290513633753017201.Spec : Prop :=
  ∀ n, P290513633753017201.a n = A326714 (n + 1)

end A326714

/-! ## A326714.P8144442795167417889

`A055998(n)-A101921(n+1)`
-/

namespace A326714.P8144442795167417889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n - A101921 (n + 1)

end

end A326714.P8144442795167417889

namespace A326714

/-- `A055998(n)-A101921(n+1)` -/
def P8144442795167417889.Spec : Prop :=
  ∀ n, P8144442795167417889.a n = A326714 (n + 1)

end A326714

/-! ## A326714.P3569031061843235649

`A001511(n+1)+A000217(n)-1`
-/

namespace A326714.P3569031061843235649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + (A000217 n - 1)

end

end A326714.P3569031061843235649

namespace A326714

/-- `A001511(n+1)+A000217(n)-1` -/
def P3569031061843235649.Spec : Prop :=
  ∀ n, P3569031061843235649.a n = A326714 (n + 1)

end A326714

/-! ## A326714.P1538667966021490444

`A001511(n+1)+A000124(n)-2`
-/

namespace A326714.P1538667966021490444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + (A000124 n - 2)

end

end A326714.P1538667966021490444

namespace A326714

/-- `A001511(n+1)+A000124(n)-2` -/
def P1538667966021490444.Spec : Prop :=
  ∀ n, P1538667966021490444.a n = A326714 (n + 1)

end A326714

/-!
# A326715: Values of n for which the denominator of (Sum_{prime p | n} 1/p - 1/n) is 1.

The programs for A326715, there is no canonical definition to state claims against.
-/

/-! ## A326715.P10016390298187204356

`filter[A274222(n+1), A008966(#)]`
-/

namespace A326715.P10016390298187204356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A326715.P10016390298187204356

/-! ## A326715.P7657636927102460383

`filter[A274222(n+1), A323154(#)]`
-/

namespace A326715.P7657636927102460383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A326715.P7657636927102460383

/-! ## A326715.P17577201623723242072

`record[A326691(n+1)]`
-/

namespace A326715.P17577201623723242072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326715.P17577201623723242072

/-! ## A326715.P14735230105419717878

`A000027(eq[n+1, A326691(n+1)]+1)`
-/

namespace A326715.P14735230105419717878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A326715.P14735230105419717878

/-! ## A326715.P17853337683626199702

`eq[A000005(n+1), A000005(A326691(n+1))]+1`
-/

namespace A326715.P17853337683626199702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A326691 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A326715.P17853337683626199702

/-! ## A326715.P16877105227253039750

`eq[1, A326690(n+1)]+1`
-/

namespace A326715.P16877105227253039750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326690 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A326715.P16877105227253039750

/-! ## A326715.P8870218592509232163

`eq[n, n*A342014(n+1)]+1`
-/

namespace A326715.P8870218592509232163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A342014 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A326715.P8870218592509232163

/-! ## A326715.P11329714151660795504

`record[gcd(n+1, 1-A342001(n+1))]`
-/

namespace A326715.P11329714151660795504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (1 - A342001 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326715.P11329714151660795504

/-! ## A326715.P5360082080498893978

`record[A007947(n+1)/A326690(n+1)]`
-/

namespace A326715.P5360082080498893978
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A326690 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326715.P5360082080498893978

/-! ## A326715.P4410075936005984358

`record[gcd(n, 1-A003415(n))]`
-/

namespace A326715.P4410075936005984358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (1 - A003415 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326715.P4410075936005984358

/-! ## A326715.P11939772807426070608

`eq[n, A235138(n+1)]+1`
-/

namespace A326715.P11939772807426070608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235138 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A326715.P11939772807426070608

/-! ## A326715.P5969283240334044658

`eq[n, A326691(A000038(n)+n)]`
-/

namespace A326715.P5969283240334044658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326691 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326715.P5969283240334044658

/-! ## A326715.P2031782657577888612

`eq[n, A326691(xor(n, A000038(n)))]`
-/

namespace A326715.P2031782657577888612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326691 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326715.P2031782657577888612

/-! ## A326715.P8291240346649654108

`record[A143051(n+1)/A326690(A143051(n+1))]`
-/

namespace A326715.P8291240346649654108
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143051 (n + 1) : ℚ) / (A326690 (A143051 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326715.P8291240346649654108

/-! ## A326715.P10965861090096609727

`record[A210436(n)/A326690(A210436(n))]`
-/

namespace A326715.P10965861090096609727
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210436 n : ℚ) / (A326690 (A210436 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326715.P10965861090096609727

/-! ## A326715.P1510455672724469854

`record[A020915(n)/A326690(A020915(n))]`
-/

namespace A326715.P1510455672724469854
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020915 n : ℚ) / (A326690 (A020915 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326715.P1510455672724469854

/-! ## A326715.P7032564874126528058

`record[A008619(n)/A326690(A008619(n))]`
-/

namespace A326715.P7032564874126528058
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A326690 (A008619 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326715.P7032564874126528058

/-! ## A326715.P12759032092246815265

`record[A052938(2*n)/A326690(A052938(2*n))]`
-/

namespace A326715.P12759032092246815265
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052938 (2 * n) : ℚ) / (A326690 (A052938 (2 * n)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326715.P12759032092246815265

/-! ## A326715.P1230361492569258376

`record[A008620(n)/A326690(A008620(n))]`
-/

namespace A326715.P1230361492569258376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 n : ℚ) / (A326690 (A008620 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326715.P1230361492569258376

/-! ## A326715.P4154539437981977249

`record[A034887(n)/A326690(A034887(n))]`
-/

namespace A326715.P4154539437981977249
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034887 n : ℚ) / (A326690 (A034887 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326715.P4154539437981977249

/-!
# A326716: 3-term arithmetic progressions of primes whose indices are also primes in arithmetic progression.

The programs for A326716, there is no canonical definition to state claims against.
-/

/-! ## A326716.P3867015291038254048

`∏{p}[A000040(p?[A265059(n)])², #]`
-/

namespace A326716.P3867015291038254048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265059 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A326716.P3867015291038254048

/-!
# A326717: Coefficients of polynomials related to ordered set partitions. Triangle read by rows, T_{m}(n, k) for m = 5 and 0 <= k <= n.

The programs for A326717, there is no canonical definition to state claims against.
-/

/-! ## A326717.P4149591707811807248

`A080539(a(n-2))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A326717.P4149591707811807248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0] fun n a =>
  A080539 (a (n - 2)).toNat

end

end A326717.P4149591707811807248

/-! ## A326717.P9804256200505086372

`xor(n, A182864(2^floor(n/2)))`
-/

namespace A326717.P9804256200505086372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A182864 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat)

end

end A326717.P9804256200505086372

/-!
# A326718: a(n) = n! * [x^n] (tanh(x) + x*(2*x*tanh(x) - 1)*sech(x)^2)/8.

The programs for A326718, there is no canonical definition to state claims against.
-/

/-! ## A326718.P6743956002193446984

`A131119(n)*A155585(n)`
-/

namespace A326718.P6743956002193446984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131119 n * A155585 n

end

end A326718.P6743956002193446984

/-! ## A326718.P2510949665181856580

`-(A001971(n)*A155585(n))`
-/

namespace A326718.P2510949665181856580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001971 n * A155585 n)

end

end A326718.P2510949665181856580

/-! ## A326718.P1540344526448568375

`-(A123596(n)*A155585(n))`
-/

namespace A326718.P1540344526448568375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A123596 n * A155585 n)

end

end A326718.P1540344526448568375

/-! ## A326718.P599147272737799853

`A004174((n²+n)/2)*A123596(n)`
-/

namespace A326718.P599147272737799853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004174 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat * A123596 n

end

end A326718.P599147272737799853

/-! ## A326718.P4956751192938249043

`A000217(A004524(n))*A004174(A000217(n))`
-/

namespace A326718.P4956751192938249043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004524 n).toNat * A004174 (A000217 n).toNat

end

end A326718.P4956751192938249043

/-!
# A326719: a(n) = n! * [x^n] (x * tanh(x) * sech(x)) / 2.

The programs for A326719, there is no canonical definition to state claims against.
-/

/-! ## A326719.P6472521270834140428

`(n-2*n)*A122045(n)/2`
-/

namespace A326719.P6472521270834140428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - (2 * n : ℤ)) * A122045 n : ℚ) / 2

end

end A326719.P6472521270834140428

/-! ## A326719.P2949892030651308063

`(ceil(C(or(1, n), n)/2)-1)*A240559(n)`
-/

namespace A326719.P2949892030651308063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉ - 1) * A240559 n

end

end A326719.P2949892030651308063

/-! ## A326719.P807341576114355786

`A001057(n)*A122045(n)`
-/

namespace A326719.P807341576114355786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n * A122045 n

end

end A326719.P807341576114355786

/-! ## A326719.P17453975657093752448

`-(A004526(n)*A122045(n))`
-/

namespace A326719.P17453975657093752448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A004526 n * A122045 n)

end

end A326719.P17453975657093752448

/-! ## A326719.P9977382408632091730

`-(A014682(n)*A122045(n))`
-/

namespace A326719.P9977382408632091730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A014682 n * A122045 n)

end

end A326719.P9977382408632091730

/-! ## A326719.P36306000696565472

`-(A026741(n)*A122045(n))`
-/

namespace A326719.P36306000696565472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A026741 n * A122045 n)

end

end A326719.P36306000696565472

/-! ## A326719.P2674329254553337041

`-(A110654(n)*A122045(n))`
-/

namespace A326719.P2674329254553337041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A110654 n * A122045 n)

end

end A326719.P2674329254553337041

/-! ## A326719.P17598367240344604602

`A001057(n)*A119879(∑[n])`
-/

namespace A326719.P17598367240344604602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n * A119879 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326719.P17598367240344604602

/-! ## A326719.P11774777036428192659

`Δ[A009390(n)]*A001057(n)`
-/

namespace A326719.P11774777036428192659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001057 n

end

end A326719.P11774777036428192659

/-!
# A326722: T(n, k) = n! * [x^k] [y^n] sec(z)(x + z*sin(z)/y) where z = y*sqrt(x^2 - 1) for 0 <= k <= n+1 and T(-1, 0) = 1, triangle read by rows.

The programs for A326722, there is no canonical definition to state claims against.
-/

/-! ## A326722.P16399265280951030537

`A096825(A000055(n))*A178111(n)`
-/

namespace A326722.P16399265280951030537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096825 (A000055 n).toNat * A178111 n

end

end A326722.P16399265280951030537

/-! ## A326722.P6829084679222507550

`∑[A000161(A022345(n))]*A178111(n)`
-/

namespace A326722.P6829084679222507550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A022345 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A178111 n

end

end A326722.P6829084679222507550

/-! ## A326722.P6974404618806943141

`A046698(A147005(n+1))*A178111(n)`
-/

namespace A326722.P6974404618806943141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A147005 (n + 1)).toNat * A178111 n

end

end A326722.P6974404618806943141

/-!
# A326724: Triangle with Euler (secant) numbers, read by rows, T(n, k) for 0 <= k <= n.

The programs for A326724, there is no canonical definition to state claims against.
-/

/-! ## A326724.P17569053318340765161

`A000364(A003056(n))*A130595(n)`
-/

namespace A326724.P17569053318340765161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000364 (A003056 n).toNat * A130595 n

end

end A326724.P17569053318340765161

/-! ## A326724.P8417487740984696386

`A130595(n)*A181612(A057944(n))`
-/

namespace A326724.P8417487740984696386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A181612 (A057944 n).toNat

end

end A326724.P8417487740984696386

/-! ## A326724.P5847006009639225072

`A125053(A003056(n)²)*A130595(n)`
-/

namespace A326724.P5847006009639225072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125053 (A003056 n ^ 2).toNat * A130595 n

end

end A326724.P5847006009639225072

/-!
# A326725: a(n) = (1/2)*n*(5*n - 7); row 5 of A326728.

The programs for A326725, the canonical program `A326725.P17940242180544248545` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326725 has offset 0).

The definition of A326725 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/2*n*(5*n-7)` (program `A326725.P3466728860476816417`, by `A326725.P3466728860476816417.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A326725.P3051412415916571781

`n*(5*n-7)/2`
-/

namespace A326725.P3051412415916571781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((5 * n : ℤ) - 7) : ℚ) / 2

end

end A326725.P3051412415916571781

namespace A326725

/-- `n*(5*n-7)/2` -/
def P3051412415916571781.Spec : Prop :=
  ∀ n, P3051412415916571781.a n = (A326725 n : ℚ)

theorem P3051412415916571781.correct : P3051412415916571781.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A326725, Nat.add_sub_cancel, A326725.P3051412415916571781.a, A326725.P17940242180544248545.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A326725, Nat.add_sub_cancel, A326725.P3051412415916571781.a, A326725.P17940242180544248545.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A326725

/-! ## A326725.P3466728860476816417

`1/2*n*(5*n-7)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326725.P3466728860476816417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (n : ℚ) * ((5 * n : ℤ) - 7 : ℚ)

end

end A326725.P3466728860476816417

namespace A326725

/-- `1/2*n*(5*n-7)` -/
def P3466728860476816417.Spec : Prop :=
  ∀ n, P3466728860476816417.a n = (A326725 n : ℚ)

theorem P3466728860476816417.correct : P3466728860476816417.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A326725, Nat.add_sub_cancel, A326725.P3466728860476816417.a, A326725.P17940242180544248545.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A326725, Nat.add_sub_cancel, A326725.P3466728860476816417.a, A326725.P17940242180544248545.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A326725

/-! ## A326725.P17940242180544248545

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=-1, a(2)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A326725

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P17940242180544248545.Spec : Prop :=
  ∀ n, P17940242180544248545.a n = A326725 n

theorem P17940242180544248545.correct : P17940242180544248545.Spec := by
  intro n
  simp only [A326725]

end A326725

/-! ## A326725.P3807433425276551410

`5*C(n, 2)-n`
-/

namespace A326725.P3807433425276551410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * Nat.choose n 2 : ℤ) - (n : ℤ)

end

end A326725.P3807433425276551410

namespace A326725

/-- `5*C(n, 2)-n` -/
def P3807433425276551410.Spec : Prop :=
  ∀ n, P3807433425276551410.a n = A326725 n

end A326725

/-! ## A326725.P3858745525417137664

`∑[a(n-1)+5]` with `a(0)=0, a(1)=-1`
-/

namespace A326725.P3858745525417137664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326725.P3858745525417137664

namespace A326725

/-- `∑[a(n-1)+5]` -/
def P3858745525417137664.Spec : Prop :=
  ∀ n, P3858745525417137664.a n = A326725 n

end A326725

/-! ## A326725.P9880377043907564962

`∑[ogf((-x+6x^2)/(1-2x+x^2))]`
-/

namespace A326725.P9880377043907564962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326725.P9880377043907564962

namespace A326725

/-- `∑[ogf((-x+6x^2)/(1-2x+x^2))]` -/
def P9880377043907564962.Spec : Prop :=
  ∀ n, P9880377043907564962.a n = A326725 n

end A326725

/-! ## A326725.P10067763334308493600

`ogf((-x+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A326725.P10067763334308493600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 6] [1, -3, 3, -1] n

end

end A326725.P10067763334308493600

namespace A326725

/-- `ogf((-x+6x^2)/(1-3x+3x^2-x^3))` -/
def P10067763334308493600.Spec : Prop :=
  ∀ n, P10067763334308493600.a n = A326725 n

end A326725

/-! ## A326725.P3029785615263708582

`-∑[a(n-1)-5]` with `a(0)=0, a(1)=1`
-/

namespace A326725.P3029785615263708582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326725.P3029785615263708582

namespace A326725

/-- `-∑[a(n-1)-5]` -/
def P3029785615263708582.Spec : Prop :=
  ∀ n, P3029785615263708582.a n = A326725 n

end A326725

/-! ## A326725.P7927184882787237722

`5*n-(6-a(n-1))` with `a(0)=0`
-/

namespace A326725.P7927184882787237722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (5 * n : ℤ) - (6 - a (n - 1))

end

end A326725.P7927184882787237722

namespace A326725

/-- `5*n-(6-a(n-1))` -/
def P7927184882787237722.Spec : Prop :=
  ∀ n, P7927184882787237722.a n = A326725 n

end A326725

/-! ## A326725.P11320001016648305775

`n-∑[a(n-1)-5]` with `a(0)=0, a(1)=2`
-/

namespace A326725.P11320001016648305775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326725.P11320001016648305775

namespace A326725

/-- `n-∑[a(n-1)-5]` -/
def P11320001016648305775.Spec : Prop :=
  ∀ n, P11320001016648305775.a n = A326725 n

end A326725

/-! ## A326725.P15362548649339923392

`A000566(n)-2*n`
-/

namespace A326725.P15362548649339923392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n - (2 * n : ℤ)

end

end A326725.P15362548649339923392

namespace A326725

/-- `A000566(n)-2*n` -/
def P15362548649339923392.Spec : Prop :=
  ∀ n, P15362548649339923392.a n = A326725 n

end A326725

/-! ## A326725.P3692949660797616947

`A005476(n)-3*n`
-/

namespace A326725.P3692949660797616947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n - (3 * n : ℤ)

end

end A326725.P3692949660797616947

namespace A326725

/-- `A005476(n)-3*n` -/
def P3692949660797616947.Spec : Prop :=
  ∀ n, P3692949660797616947.a n = A326725 n

end A326725

/-! ## A326725.P9431311235754151952

`A082450(n)-(n+5)`
-/

namespace A326725.P9431311235754151952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082450 n - (n + 5 : ℤ)

end

end A326725.P9431311235754151952

namespace A326725

/-- `A082450(n)-(n+5)` -/
def P9431311235754151952.Spec : Prop :=
  ∀ n, P9431311235754151952.a n = A326725 n

end A326725

/-! ## A326725.P6392952489074828236

`A005475(n)-4*n`
-/

namespace A326725.P6392952489074828236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - (4 * n : ℤ)

end

end A326725.P6392952489074828236

namespace A326725

/-- `A005475(n)-4*n` -/
def P6392952489074828236.Spec : Prop :=
  ∀ n, P6392952489074828236.a n = A326725 n

end A326725

/-! ## A326725.P14141642222363943913

`A147875(n)-5*n`
-/

namespace A326725.P14141642222363943913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n - (5 * n : ℤ)

end

end A326725.P14141642222363943913

namespace A326725

/-- `A147875(n)-5*n` -/
def P14141642222363943913.Spec : Prop :=
  ∀ n, P14141642222363943913.a n = A326725 n

end A326725

/-! ## A326725.P6551589885626262217

`5*A161680(n)-n`
-/

namespace A326725.P6551589885626262217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A161680 n - (n : ℤ)

end

end A326725.P6551589885626262217

namespace A326725

/-- `5*A161680(n)-n` -/
def P6551589885626262217.Spec : Prop :=
  ∀ n, P6551589885626262217.a n = A326725 n

end A326725

/-! ## A326725.P17980653144100019698

`A192136(n)-Δ[n²]`
-/

namespace A326725.P17980653144100019698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A326725.P17980653144100019698

namespace A326725

/-- `A192136(n)-Δ[n²]` -/
def P17980653144100019698.Spec : Prop :=
  ∀ n, P17980653144100019698.a n = A326725 n

end A326725

/-! ## A326725.P1624289551445469248

`A056105(n)-∑[n+1]`
-/

namespace A326725.P1624289551445469248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A326725.P1624289551445469248

namespace A326725

/-- `A056105(n)-∑[n+1]` -/
def P1624289551445469248.Spec : Prop :=
  ∀ n, P1624289551445469248.a n = A326725 n

end A326725

/-! ## A326725.P14438994944759926445

`A001106(n)-(n²+n)`
-/

namespace A326725.P14438994944759926445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n - (n ^ 2 + n : ℤ)

end

end A326725.P14438994944759926445

namespace A326725

/-- `A001106(n)-(n²+n)` -/
def P14438994944759926445.Spec : Prop :=
  ∀ n, P14438994944759926445.a n = A326725 n

end A326725

/-! ## A326725.P5265775772582758448

`A140065(n+1)-(n+1)²`
-/

namespace A326725.P5265775772582758448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140065 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A326725.P5265775772582758448

namespace A326725

/-- `A140065(n+1)-(n+1)²` -/
def P5265775772582758448.Spec : Prop :=
  ∀ n, P5265775772582758448.a n = A326725 n

end A326725

/-!
# A326726: The prime factorization of abs(E(2k)) for k >= 2, E(k) the k-th Euler number. Factors sorted by size with the smallest factor negated. a(n) = -1 by convention for n = 1, 2.

The programs for A326726, there is no canonical definition to state claims against.
-/

/-! ## A326726.P11788236372565827291

`A003780(n+1)-A020639(A000364(n))`
-/

namespace A326726.P11788236372565827291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003780 (n + 1) - A020639 (A000364 n).toNat

end

end A326726.P11788236372565827291

/-!
# A326727: The prime factorization of abs(numerator(B(2k))) for k >= 5, B(k) the k-th Bernoulli number. Factors sorted by size with the smallest factor negated. a(n) = -1 by convention for 1 <= n <= 5.

The programs for A326727, there is no canonical definition to state claims against.
-/

/-! ## A326727.P18058178048051379376

`-(A332300(n)%A332262(n+1))`
-/

namespace A326727.P18058178048051379376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A332300 n) (A332262 (n + 1))

end

end A326727.P18058178048051379376

/-! ## A326727.P15775252743551857213

`-A332300(n)%A040175(n+3)`
-/

namespace A326727.P15775252743551857213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A332300 n) (A040175 (n + 3))

end

end A326727.P15775252743551857213

/-! ## A326727.P1698299159054865396

`-A242193(round(2/A128027(n+1))+n)`
-/

namespace A326727.P1698299159054865396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A242193 (SequenceMachineLib.roundAway (2 / (A128027 (n + 1) : ℚ)) + (n : ℤ)).toNat

end

end A326727.P1698299159054865396

/-! ## A326727.P2053128447614180986

`A000007(A001519(n))-A332300(n)`
-/

namespace A326727.P2053128447614180986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A001519 n).toNat - A332300 n

end

end A326727.P2053128447614180986

/-! ## A326727.P17837989514386160759

`A000007(A002426(n))-A332300(n)`
-/

namespace A326727.P17837989514386160759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A002426 n).toNat - A332300 n

end

end A326727.P17837989514386160759

/-!
# A326728: A(n, k) = n*(k - 1)*k/2 - k, square array for n >= 0 and k >= 0 read by ascending antidiagonals.

The programs for A326728, there is no canonical definition to state claims against.
-/

/-! ## A326728.P223814159661008751

`A244911(n)-A128139(n)`
-/

namespace A326728.P223814159661008751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244911 n - A128139 n

end

end A326728.P223814159661008751

/-! ## A326728.P18240001224348679925

`A139600(n)-2*A002262(n)`
-/

namespace A326728.P18240001224348679925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 n - 2 * A002262 n

end

end A326728.P18240001224348679925

/-! ## A326728.P15589403082049324412

`A086273(n+1)-A209297(n+1)`
-/

namespace A326728.P15589403082049324412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086273 (n + 1) - A209297 (n + 1)

end

end A326728.P15589403082049324412

/-! ## A326728.P8798716551837959426

`A139600(n)+1-A158405(n+1)`
-/

namespace A326728.P8798716551837959426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 n + (1 - A158405 (n + 1))

end

end A326728.P8798716551837959426

/-! ## A326728.P8733535930201644512

`A139600(n)-2*A025668(n+1)`
-/

namespace A326728.P8733535930201644512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 n - 2 * A025668 (n + 1)

end

end A326728.P8733535930201644512

/-! ## A326728.P16914026533602868745

`A139600(n)+2-2*A002260(n+1)`
-/

namespace A326728.P16914026533602868745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 n + (2 - 2 * A002260 (n + 1))

end

end A326728.P16914026533602868745

/-! ## A326728.P8962597611863117662

`A062707(A056943(n))-A002262(n)`
-/

namespace A326728.P8962597611863117662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 (A056943 n).toNat - A002262 n

end

end A326728.P8962597611863117662

/-! ## A326728.P7336714003702965984

`A139601(n)-A000096(A002262(n))`
-/

namespace A326728.P7336714003702965984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139601 n - A000096 (A002262 n).toNat

end

end A326728.P7336714003702965984

/-! ## A326728.P7296210921122517292

`A139600(n)-A005843(A002262(n))`
-/

namespace A326728.P7296210921122517292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 n - A005843 (A002262 n).toNat

end

end A326728.P7296210921122517292

/-! ## A326728.P2438302382479444744

`A139600(n)-A001414(A059268(n))`
-/

namespace A326728.P2438302382479444744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 n - A001414 (A059268 n).toNat

end

end A326728.P2438302382479444744

/-!
# A326729: a(0) = 0; for n >= 1, a(n) is the result of inverting s-th bit (from right) in n, where s is the number of ones in the binary representation of n.

The programs for A326729, the canonical program `A326729.P660711864705047236` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326729 has offset 0).

The definition of A326729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326729.P660711864705047236

`xor(n, ceil(A335063(n)/(n+1)))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A326729

/-- `xor(n, ceil(A335063(n)/(n+1)))` -/
def P660711864705047236.Spec : Prop :=
  ∀ n, P660711864705047236.a n = A326729 n

theorem P660711864705047236.correct : P660711864705047236.Spec := by
  intro n
  simp only [A326729]

end A326729

/-! ## A326729.P4514712458767275209

`xor(n, A004526(A001316(n)))`
-/

namespace A326729.P4514712458767275209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004526 (A001316 n).toNat)

end

end A326729.P4514712458767275209

namespace A326729

/-- `xor(n, A004526(A001316(n)))` -/
def P4514712458767275209.Spec : Prop :=
  ∀ n, P4514712458767275209.a n = A326729 n

end A326729

/-! ## A326729.P305014389437877658

`xor(n, A131577(A000120(n)))`
-/

namespace A326729.P305014389437877658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A131577 (A000120 n).toNat)

end

end A326729.P305014389437877658

namespace A326729

/-- `xor(n, A131577(A000120(n)))` -/
def P305014389437877658.Spec : Prop :=
  ∀ n, P305014389437877658.a n = A326729 n

end A326729

/-! ## A326729.P12529307220927264448

`xor(n, A131577(log2(A001316(n))))`
-/

namespace A326729.P12529307220927264448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A131577 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat)

end

end A326729.P12529307220927264448

namespace A326729

/-- `xor(n, A131577(log2(A001316(n))))` -/
def P12529307220927264448.Spec : Prop :=
  ∀ n, P12529307220927264448.a n = A326729 n

end A326729

/-! ## A326729.P11920930498588688151

`xor(n, A053644(A001316(n)-1))`
-/

namespace A326729.P11920930498588688151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A053644 (A001316 n - 1).toNat)

end

end A326729.P11920930498588688151

namespace A326729

/-- `xor(n, A053644(A001316(n)-1))` -/
def P11920930498588688151.Spec : Prop :=
  ∀ n, P11920930498588688151.a n = A326729 n

end A326729

/-! ## A326729.P3384845191785798467

`xor(A001316(n), A004277(n))/2`
-/

namespace A326729.P3384845191785798467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A001316 n) (A004277 n) : ℚ) / 2

end

end A326729.P3384845191785798467

namespace A326729

/-- `xor(A001316(n), A004277(n))/2` -/
def P3384845191785798467.Spec : Prop :=
  ∀ n, P3384845191785798467.a n = (A326729 n : ℚ)

end A326729

/-! ## A326729.P15642713787675697953

`xor(n, A004526(2^A000120(n)))`
-/

namespace A326729.P15642713787675697953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004526 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000120 n : ℤ))).toNat)

end

end A326729.P15642713787675697953

namespace A326729

/-- `xor(n, A004526(2^A000120(n)))` -/
def P15642713787675697953.Spec : Prop :=
  ∀ n, P15642713787675697953.a n = A326729 n

end A326729

/-! ## A326729.P8810549982516878710

`xor(n, A072376(xor(1, A001316(n))))`
-/

namespace A326729.P8810549982516878710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A072376 (Int.xor 1 (A001316 n)).toNat)

end

end A326729.P8810549982516878710

namespace A326729

/-- `xor(n, A072376(xor(1, A001316(n))))` -/
def P8810549982516878710.Spec : Prop :=
  ∀ n, P8810549982516878710.a n = A326729 n

end A326729

/-! ## A326729.P18209541185479088346

`xor(n, A131577(n-A011371(n)))`
-/

namespace A326729.P18209541185479088346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A131577 ((n : ℤ) - A011371 n).toNat)

end

end A326729.P18209541185479088346

namespace A326729

/-- `xor(n, A131577(n-A011371(n)))` -/
def P18209541185479088346.Spec : Prop :=
  ∀ n, P18209541185479088346.a n = A326729 n

end A326729

/-! ## A326729.P14868778499798932157

`xor(n, A131577(A092391(n)-n))`
-/

namespace A326729.P14868778499798932157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A131577 (A092391 n - (n : ℤ)).toNat)

end

end A326729.P14868778499798932157

namespace A326729

/-- `xor(n, A131577(A092391(n)-n))` -/
def P14868778499798932157.Spec : Prop :=
  ∀ n, P14868778499798932157.a n = A326729 n

end A326729

/-! ## A326729.P10349593053957408035

`xor(A011782(A000120(n)), A028310(n))`
-/

namespace A326729.P10349593053957408035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011782 (A000120 n).toNat) (A028310 n)

end

end A326729.P10349593053957408035

namespace A326729

/-- `xor(A011782(A000120(n)), A028310(n))` -/
def P10349593053957408035.Spec : Prop :=
  ∀ n, P10349593053957408035.a n = A326729 n

end A326729

/-! ## A326729.P12241905159917584550

`xor(A028310(n), A305438(A001316(n)))`
-/

namespace A326729.P12241905159917584550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A028310 n) (A305438 (A001316 n).toNat)

end

end A326729.P12241905159917584550

namespace A326729

/-- `xor(A028310(n), A305438(A001316(n)))` -/
def P12241905159917584550.Spec : Prop :=
  ∀ n, P12241905159917584550.a n = A326729 n

end A326729

/-! ## A326729.P3326192448239918906

`xor(n, A001316(n)-A011782(A000120(n)))`
-/

namespace A326729.P3326192448239918906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A001316 n - A011782 (A000120 n).toNat)

end

end A326729.P3326192448239918906

namespace A326729

/-- `xor(n, A001316(n)-A011782(A000120(n)))` -/
def P3326192448239918906.Spec : Prop :=
  ∀ n, P3326192448239918906.a n = A326729 n

end A326729

/-! ## A326729.P13096955813866058615

`xor(A011782(n-A011371(n)), A028310(n))`
-/

namespace A326729.P13096955813866058615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011782 ((n : ℤ) - A011371 n).toNat) (A028310 n)

end

end A326729.P13096955813866058615

namespace A326729

/-- `xor(A011782(n-A011371(n)), A028310(n))` -/
def P13096955813866058615.Spec : Prop :=
  ∀ n, P13096955813866058615.a n = A326729 n

end A326729

/-! ## A326729.P7813557472176677221

`xor(n, A011782(A000120(n))%A059893(n+1))`
-/

namespace A326729.P7813557472176677221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.tmod (A011782 (A000120 n).toNat) (A059893 (n + 1)))

end

end A326729.P7813557472176677221

namespace A326729

/-- `xor(n, A011782(A000120(n))%A059893(n+1))` -/
def P7813557472176677221.Spec : Prop :=
  ∀ n, P7813557472176677221.a n = A326729 n

end A326729

/-! ## A326729.P1896183359484868871

`xor(A011782(A324467(n)/3), A028310(n))`
-/

namespace A326729.P1896183359484868871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011782 (SequenceMachineLib.roundAway ((A324467 n : ℚ) / 3)).toNat) (A028310 n)

end

end A326729.P1896183359484868871

namespace A326729

/-- `xor(A011782(A324467(n)/3), A028310(n))` -/
def P1896183359484868871.Spec : Prop :=
  ∀ n, P1896183359484868871.a n = A326729 n

end A326729

/-! ## A326729.P953591648357307252

`xor(n, A002265(2*A001316(n)))`
-/

namespace A326729.P953591648357307252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A002265 (2 * A001316 n).toNat)

end

end A326729.P953591648357307252

namespace A326729

/-- `xor(n, A002265(2*A001316(n)))` -/
def P953591648357307252.Spec : Prop :=
  ∀ n, P953591648357307252.a n = A326729 n

end A326729

/-! ## A326729.P2229892413409994115

`xor(A001316(n), A028310(2*n))/2`
-/

namespace A326729.P2229892413409994115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A001316 n) (A028310 (2 * n)) : ℚ) / 2

end

end A326729.P2229892413409994115

namespace A326729

/-- `xor(A001316(n), A028310(2*n))/2` -/
def P2229892413409994115.Spec : Prop :=
  ∀ n, P2229892413409994115.a n = (A326729 n : ℚ)

end A326729

/-! ## A326729.P3833600628710149109

`xor(n, A029578(A071044(2*n)))`
-/

namespace A326729.P3833600628710149109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A029578 (A071044 (2 * n)).toNat)

end

end A326729.P3833600628710149109

namespace A326729

/-- `xor(n, A029578(A071044(2*n)))` -/
def P3833600628710149109.Spec : Prop :=
  ∀ n, P3833600628710149109.a n = A326729 n

end A326729

/-! ## A326729.P16337266987287900163

`xor(n, A088512(2*n+1)-A088512(n))`
-/

namespace A326729.P16337266987287900163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A088512 (2 * n + 1) - A088512 n)

end

end A326729.P16337266987287900163

namespace A326729

/-- `xor(n, A088512(2*n+1)-A088512(n))` -/
def P16337266987287900163.Spec : Prop :=
  ∀ n, P16337266987287900163.a n = A326729 n

end A326729

/-!
# A326730: Number of iterations of A326729(x) starting at x = n to reach 0.

The programs for A326730, the canonical program `A326730.P12598629395687838766` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326730 has offset 0).

The definition of A326730 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326730.P12598629395687838766

`2*A029931(n)-A000120(n)²`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A326730

/-- `2*A029931(n)-A000120(n)²` -/
def P12598629395687838766.Spec : Prop :=
  ∀ n, P12598629395687838766.a n = A326730 n

theorem P12598629395687838766.correct : P12598629395687838766.Spec := by
  intro n
  simp only [A326730]

end A326730

/-! ## A326730.P13455285298396678906

`A161511(n)+A055941(n)`
-/

namespace A326730.P13455285298396678906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 n + A055941 n

end

end A326730.P13455285298396678906

namespace A326730

/-- `A161511(n)+A055941(n)` -/
def P13455285298396678906.Spec : Prop :=
  ∀ n, P13455285298396678906.a n = A326730 n

end A326730

/-! ## A326730.P4669841717231834933

`A000120(n)+2*A055941(n)`
-/

namespace A326730.P4669841717231834933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 2 * A055941 n

end

end A326730.P4669841717231834933

namespace A326730

/-- `A000120(n)+2*A055941(n)` -/
def P4669841717231834933.Spec : Prop :=
  ∀ n, P4669841717231834933.a n = A326730 n

end A326730

/-! ## A326730.P18046283079062018085

`2*A161511(n)-A000120(n)`
-/

namespace A326730.P18046283079062018085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161511 n - A000120 n

end

end A326730.P18046283079062018085

namespace A326730

/-- `2*A161511(n)-A000120(n)` -/
def P18046283079062018085.Spec : Prop :=
  ∀ n, P18046283079062018085.a n = A326730 n

end A326730

/-! ## A326730.P7395519323051241879

`A005843(A055941(n))+A000120(n)`
-/

namespace A326730.P7395519323051241879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A055941 n).toNat + A000120 n

end

end A326730.P7395519323051241879

namespace A326730

/-- `A005843(A055941(n))+A000120(n)` -/
def P7395519323051241879.Spec : Prop :=
  ∀ n, P7395519323051241879.a n = A326730 n

end A326730

/-! ## A326730.P12681609450909947868

`A161511(A025480(n))+A161511(n)`
-/

namespace A326730.P12681609450909947868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A025480 n).toNat + A161511 n

end

end A326730.P12681609450909947868

namespace A326730

/-- `A161511(A025480(n))+A161511(n)` -/
def P12681609450909947868.Spec : Prop :=
  ∀ n, P12681609450909947868.a n = A326730 n

end A326730

/-! ## A326730.P12372398232509073180

`A005843(A161511(n))-A000120(n)`
-/

namespace A326730.P12372398232509073180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A161511 n).toNat - A000120 n

end

end A326730.P12372398232509073180

namespace A326730

/-- `A005843(A161511(n))-A000120(n)` -/
def P12372398232509073180.Spec : Prop :=
  ∀ n, P12372398232509073180.a n = A326730 n

end A326730

/-! ## A326730.P6308098680580343806

`A000120(n)+A000120(n)-A397100(n)`
-/

namespace A326730.P6308098680580343806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A000120 n - A397100 n)

end

end A326730.P6308098680580343806

namespace A326730

/-- `A000120(n)+A000120(n)-A397100(n)` -/
def P6308098680580343806.Spec : Prop :=
  ∀ n, P6308098680580343806.a n = A326730 n

end A326730

/-! ## A326730.P3017033966746296663

`A055941(n)+A055941(n)+log2(A001316(n))`
-/

namespace A326730.P3017033966746296663
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A055941 n : ℝ) + ((A055941 n : ℝ) + Real.logb 2 (A001316 n : ℝ))

end

end A326730.P3017033966746296663

namespace A326730

/-- `A055941(n)+A055941(n)+log2(A001316(n))` -/
def P3017033966746296663.Spec : Prop :=
  ∀ n, P3017033966746296663.a n = (A326730 n : ℝ)

end A326730

/-! ## A326730.P2221988913647221017

`A161511(A000265(n+1))+A161511(n)-1`
-/

namespace A326730.P2221988913647221017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A000265 (n + 1)).toNat + (A161511 n - 1)

end

end A326730.P2221988913647221017

namespace A326730

/-- `A161511(A000265(n+1))+A161511(n)-1` -/
def P2221988913647221017.Spec : Prop :=
  ∀ n, P2221988913647221017.a n = A326730 n

end A326730

/-! ## A326730.P11563915099770971463

`A161511(A003602(n+1)-1)+A161511(n)`
-/

namespace A326730.P11563915099770971463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A003602 (n + 1) - 1).toNat + A161511 n

end

end A326730.P11563915099770971463

namespace A326730

/-- `A161511(A003602(n+1)-1)+A161511(n)` -/
def P11563915099770971463.Spec : Prop :=
  ∀ n, P11563915099770971463.a n = A326730 n

end A326730

/-! ## A326730.P3174563163248760062

`A055941(n)+A055941(n)+A000120(A030101(n))`
-/

namespace A326730.P3174563163248760062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 n + (A055941 n + A000120 (A030101 n).toNat)

end

end A326730.P3174563163248760062

namespace A326730

/-- `A055941(n)+A055941(n)+A000120(A030101(n))` -/
def P3174563163248760062.Spec : Prop :=
  ∀ n, P3174563163248760062.a n = A326730 n

end A326730

/-! ## A326730.P11623563157548437633

`abs(A397100(2*n))`
-/

namespace A326730.P11623563157548437633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A397100 (2 * n)|

end

end A326730.P11623563157548437633

namespace A326730

/-- `abs(A397100(2*n))` -/
def P11623563157548437633.Spec : Prop :=
  ∀ n, P11623563157548437633.a n = A326730 n

end A326730

/-! ## A326730.P14446425544790549205

`A055941(2*n)+A055941(n)`
-/

namespace A326730.P14446425544790549205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (2 * n) + A055941 n

end

end A326730.P14446425544790549205

namespace A326730

/-- `A055941(2*n)+A055941(n)` -/
def P14446425544790549205.Spec : Prop :=
  ∀ n, P14446425544790549205.a n = A326730 n

end A326730

/-! ## A326730.P14104308917789266685

`2*A055941(2*n)-A000120(n)`
-/

namespace A326730.P14104308917789266685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055941 (2 * n) - A000120 n

end

end A326730.P14104308917789266685

namespace A326730

/-- `2*A055941(2*n)-A000120(n)` -/
def P14104308917789266685.Spec : Prop :=
  ∀ n, P14104308917789266685.a n = A326730 n

end A326730

/-! ## A326730.P13628056271920371900

`A396409(2*n)`
-/

namespace A326730.P13628056271920371900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396409 (2 * n)

end

end A326730.P13628056271920371900

namespace A326730

/-- `A396409(2*n)` -/
def P13628056271920371900.Spec : Prop :=
  ∀ n, P13628056271920371900.a n = A326730 n

end A326730

/-! ## A326730.P4762586684939730934

`A007814(2*n+1)-A397100(2*n)`
-/

namespace A326730.P4762586684939730934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) - A397100 (2 * n)

end

end A326730.P4762586684939730934

namespace A326730

/-- `A007814(2*n+1)-A397100(2*n)` -/
def P4762586684939730934.Spec : Prop :=
  ∀ n, P4762586684939730934.a n = A326730 n

end A326730

/-! ## A326730.P10840529544078587052

`2*A161511(n)-A001222(A005940(n+1))`
-/

namespace A326730.P10840529544078587052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161511 n - A001222 (A005940 (n + 1)).toNat

end

end A326730.P10840529544078587052

namespace A326730

/-- `2*A161511(n)-A001222(A005940(n+1))` -/
def P10840529544078587052.Spec : Prop :=
  ∀ n, P10840529544078587052.a n = A326730 n

end A326730

/-! ## A326730.P11960806780269678764

`A056239(A005940(n+1))+A055941(n)`
-/

namespace A326730.P11960806780269678764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A005940 (n + 1)).toNat + A055941 n

end

end A326730.P11960806780269678764

namespace A326730

/-- `A056239(A005940(n+1))+A055941(n)` -/
def P11960806780269678764.Spec : Prop :=
  ∀ n, P11960806780269678764.a n = A326730 n

end A326730

/-! ## A326730.P3336312681619288646

`2*A056239(A005940(n+1))-A000120(n)`
-/

namespace A326730.P3336312681619288646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056239 (A005940 (n + 1)).toNat - A000120 n

end

end A326730.P3336312681619288646

namespace A326730

/-- `2*A056239(A005940(n+1))-A000120(n)` -/
def P3336312681619288646.Spec : Prop :=
  ∀ n, P3336312681619288646.a n = A326730 n

end A326730

/-!
# A326731: a(0) = 0; for n >= 1, a(n) = result of inverting s-th bit (from left) in n, where s is the number of ones in the binary representation of n.

The programs for A326731, the canonical program `A326731.P9620470420384958029` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326731 has offset 0).

The definition of A326731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326731.P9620470420384958029

`xor(n, floor(A267584(n)/2))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A326731

/-- `xor(n, floor(A267584(n)/2))` -/
def P9620470420384958029.Spec : Prop :=
  ∀ n, P9620470420384958029.a n = A326731 n

theorem P9620470420384958029.correct : P9620470420384958029.Spec := by
  intro n
  simp only [A326731]

end A326731

/-! ## A326731.P16755162546025017078

`xor(n, A080100(n)%(n+1))`
-/

namespace A326731.P16755162546025017078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.tmod (A080100 n) (n + 1 : ℤ))

end

end A326731.P16755162546025017078

namespace A326731

/-- `xor(n, A080100(n)%(n+1))` -/
def P16755162546025017078.Spec : Prop :=
  ∀ n, P16755162546025017078.a n = A326731 n

end A326731

/-! ## A326731.P7515688680071295608

`xor(2^A080791(n), round(sqrt(n²+1)))`
-/

namespace A326731.P7515688680071295608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A080791 n : ℤ))) (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)))

end

end A326731.P7515688680071295608

namespace A326731

/-- `xor(2^A080791(n), round(sqrt(n²+1)))` -/
def P7515688680071295608.Spec : Prop :=
  ∀ n, P7515688680071295608.a n = A326731 n

end A326731

/-! ## A326731.P5771885184671410097

`xor(round(1/acot(n)), A080100(2*n+1))`
-/

namespace A326731.P5771885184671410097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))) (A080100 (2 * n + 1))

end

end A326731.P5771885184671410097

namespace A326731

/-- `xor(round(1/acot(n)), A080100(2*n+1))` -/
def P5771885184671410097.Spec : Prop :=
  ∀ n, P5771885184671410097.a n = A326731 n

end A326731

/-! ## A326731.P16366599450773630514

`xor(round(acot(n)+n), A080100(round(acot(n)+n)))`
-/

namespace A326731.P16366599450773630514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))) (A080100 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A326731.P16366599450773630514

namespace A326731

/-- `xor(round(acot(n)+n), A080100(round(acot(n)+n)))` -/
def P16366599450773630514.Spec : Prop :=
  ∀ n, P16366599450773630514.a n = A326731 n

end A326731

/-! ## A326731.P11438043750836700467

`xor(abs(1-n)+1, A080100(abs(1-n)+1))`
-/

namespace A326731.P11438043750836700467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (|1 - (n : ℤ)| + 1) (A080100 (|1 - (n : ℤ)| + 1).toNat)

end

end A326731.P11438043750836700467

namespace A326731

/-- `xor(abs(1-n)+1, A080100(abs(1-n)+1))` -/
def P11438043750836700467.Spec : Prop :=
  ∀ n, P11438043750836700467.a n = A326731 n

end A326731

/-! ## A326731.P15525463255177830460

`xor(n, A090077(A073138(n)))`
-/

namespace A326731.P15525463255177830460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A090077 (A073138 n).toNat)

end

end A326731.P15525463255177830460

namespace A326731

/-- `xor(n, A090077(A073138(n)))` -/
def P15525463255177830460.Spec : Prop :=
  ∀ n, P15525463255177830460.a n = A326731 n

end A326731

/-! ## A326731.P7987749423199082940

`xor(n, A151930(A036044(n)))`
-/

namespace A326731.P7987749423199082940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A151930 (A036044 n).toNat)

end

end A326731.P7987749423199082940

namespace A326731

/-- `xor(n, A151930(A036044(n)))` -/
def P7987749423199082940.Spec : Prop :=
  ∀ n, P7987749423199082940.a n = A326731 n

end A326731

/-! ## A326731.P6718819036824243041

`xor(n, A004526(A267584(n)))`
-/

namespace A326731.P6718819036824243041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004526 (A267584 n).toNat)

end

end A326731.P6718819036824243041

namespace A326731

/-- `xor(n, A004526(A267584(n)))` -/
def P6718819036824243041.Spec : Prop :=
  ∀ n, P6718819036824243041.a n = A326731 n

end A326731

/-! ## A326731.P5640506699178871629

`xor(n, A004526(A080100(2*n)))`
-/

namespace A326731.P5640506699178871629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004526 (A080100 (2 * n)).toNat)

end

end A326731.P5640506699178871629

namespace A326731

/-- `xor(n, A004526(A080100(2*n)))` -/
def P5640506699178871629.Spec : Prop :=
  ∀ n, P5640506699178871629.a n = A326731 n

end A326731

/-! ## A326731.P7311490058845432263

`xor(n, A025480(A073137(2*n)))`
-/

namespace A326731.P7311490058845432263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A025480 (A073137 (2 * n)).toNat)

end

end A326731.P7311490058845432263

namespace A326731

/-- `xor(n, A025480(A073137(2*n)))` -/
def P7311490058845432263.Spec : Prop :=
  ∀ n, P7311490058845432263.a n = A326731 n

end A326731

/-! ## A326731.P7985779092751724517

`xor(n, A002265(A080100(4*n)))`
-/

namespace A326731.P7985779092751724517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A002265 (A080100 (4 * n)).toNat)

end

end A326731.P7985779092751724517

namespace A326731

/-- `xor(n, A002265(A080100(4*n)))` -/
def P7985779092751724517.Spec : Prop :=
  ∀ n, P7985779092751724517.a n = A326731 n

end A326731

/-! ## A326731.P5644401079691116746

`xor(n, A080100(n)-A000007(n))`
-/

namespace A326731.P5644401079691116746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A080100 n - A000007 n)

end

end A326731.P5644401079691116746

namespace A326731

/-- `xor(n, A080100(n)-A000007(n))` -/
def P5644401079691116746.Spec : Prop :=
  ∀ n, P5644401079691116746.a n = A326731 n

end A326731

/-! ## A326731.P6977029959290493395

`xor(n, n-A004524(Δ[A080572(n)]))`
-/

namespace A326731.P6977029959290493395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - A004524 (f1 (n + 1) - f1 n).toNat)

end

end A326731.P6977029959290493395

namespace A326731

/-- `xor(n, n-A004524(Δ[A080572(n)]))` -/
def P6977029959290493395.Spec : Prop :=
  ∀ n, P6977029959290493395.a n = A326731 n

end A326731

/-! ## A326731.P15182055199025526258

`xor(n, A034008(A008687(2*n+1)))`
-/

namespace A326731.P15182055199025526258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A034008 (A008687 (2 * n + 1)).toNat)

end

end A326731.P15182055199025526258

namespace A326731

/-- `xor(n, A034008(A008687(2*n+1)))` -/
def P15182055199025526258.Spec : Prop :=
  ∀ n, P15182055199025526258.a n = A326731 n

end A326731

/-! ## A326731.P7499367543093441049

`xor(n, A080100(2*n)-A080100(n))`
-/

namespace A326731.P7499367543093441049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A080100 (2 * n) - A080100 n)

end

end A326731.P7499367543093441049

namespace A326731

/-- `xor(n, A080100(2*n)-A080100(n))` -/
def P7499367543093441049.Spec : Prop :=
  ∀ n, P7499367543093441049.a n = A326731 n

end A326731

/-! ## A326731.P2524808034307337523

`xor(n, A053644(2*n)/A001316(n))`
-/

namespace A326731.P2524808034307337523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((A053644 (2 * n) : ℚ) / (A001316 n : ℚ)))

end

end A326731.P2524808034307337523

namespace A326731

/-- `xor(n, A053644(2*n)/A001316(n))` -/
def P2524808034307337523.Spec : Prop :=
  ∀ n, P2524808034307337523.a n = A326731 n

end A326731

/-! ## A326731.P1040712303148807514

`xor(abs(1-n)+1, A000079(A023416(n)))`
-/

namespace A326731.P1040712303148807514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (|1 - (n : ℤ)| + 1) (A000079 (A023416 n).toNat)

end

end A326731.P1040712303148807514

namespace A326731

/-- `xor(abs(1-n)+1, A000079(A023416(n)))` -/
def P1040712303148807514.Spec : Prop :=
  ∀ n, P1040712303148807514.a n = A326731 n

end A326731

/-! ## A326731.P14008141181792542435

`xor(n, A131577(A001222(A163511(n))))`
-/

namespace A326731.P14008141181792542435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A131577 (A001222 (A163511 n).toNat).toNat)

end

end A326731.P14008141181792542435

namespace A326731

/-- `xor(n, A131577(A001222(A163511(n))))` -/
def P14008141181792542435.Spec : Prop :=
  ∀ n, P14008141181792542435.a n = A326731 n

end A326731

/-! ## A326731.P16695109022032303497

`xor(n, A156552(A006530(A253565(n))))`
-/

namespace A326731.P16695109022032303497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A156552 (A006530 (A253565 n).toNat).toNat)

end

end A326731.P16695109022032303497

namespace A326731

/-- `xor(n, A156552(A006530(A253565(n))))` -/
def P16695109022032303497.Spec : Prop :=
  ∀ n, P16695109022032303497.a n = A326731 n

end A326731

/-!
# A326732: Number of iterations of A326731(x) starting at x = n to reach 0.

The programs for A326732, the canonical program `A326732.P16179678050265044032` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326732 has offset 0).

The definition of A326732 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230877, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326732.P16179678050265044032

`2*A230877(n)-A000120(n)²`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A326732

/-- `2*A230877(n)-A000120(n)²` -/
def P16179678050265044032.Spec : Prop :=
  ∀ n, P16179678050265044032.a n = A326732 n

theorem P16179678050265044032.correct : P16179678050265044032.Spec := by
  intro n
  simp only [A326732]

end A326732

/-! ## A326732.P12354443621232687661

`A326730(A030101(n))`
-/

namespace A326732.P12354443621232687661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326730 (A030101 n).toNat

end

end A326732.P12354443621232687661

namespace A326732

/-- `A326730(A030101(n))` -/
def P12354443621232687661.Spec : Prop :=
  ∀ n, P12354443621232687661.a n = A326732 n

end A326732

/-! ## A326732.P14117198138900962020

`A326730(n-A055945(n))`
-/

namespace A326732.P14117198138900962020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326730 ((n : ℤ) - A055945 n).toNat

end

end A326732.P14117198138900962020

namespace A326732

/-- `A326730(n-A055945(n))` -/
def P14117198138900962020.Spec : Prop :=
  ∀ n, P14117198138900962020.a n = A326732 n

end A326732

/-! ## A326732.P13618785781972964298

`A326730(A055944(n)-n)`
-/

namespace A326732.P13618785781972964298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326730 (A055944 n - (n : ℤ)).toNat

end

end A326732.P13618785781972964298

namespace A326732

/-- `A326730(A055944(n)-n)` -/
def P13618785781972964298.Spec : Prop :=
  ∀ n, P13618785781972964298.a n = A326732 n

end A326732

/-! ## A326732.P13320044871398928466

`A326730(xor(n, A175919(n)))`
-/

namespace A326732.P13320044871398928466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326730 (Int.xor (n : ℤ) (A175919 n)).toNat

end

end A326732.P13320044871398928466

namespace A326732

/-- `A326730(xor(n, A175919(n)))` -/
def P13320044871398928466.Spec : Prop :=
  ∀ n, P13320044871398928466.a n = A326732 n

end A326732

/-! ## A326732.P13751635001145010866

`2*A281392(n)-A000120(n)`
-/

namespace A326732.P13751635001145010866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281392 n - A000120 n

end

end A326732.P13751635001145010866

namespace A326732

/-- `2*A281392(n)-A000120(n)` -/
def P13751635001145010866.Spec : Prop :=
  ∀ n, P13751635001145010866.a n = A326732 n

end A326732

/-! ## A326732.P15652405135475373439

`2*A281392(n)-log2(A001316(n))`
-/

namespace A326732.P15652405135475373439
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A281392 n : ℝ) - Real.logb 2 (A001316 n : ℝ)

end

end A326732.P15652405135475373439

namespace A326732

/-- `2*A281392(n)-log2(A001316(n))` -/
def P15652405135475373439.Spec : Prop :=
  ∀ n, P15652405135475373439.a n = (A326732 n : ℝ)

end A326732

/-! ## A326732.P11273746576207207514

`A281392(n)+A055941(A030101(n))`
-/

namespace A326732.P11273746576207207514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281392 n + A055941 (A030101 n).toNat

end

end A326732.P11273746576207207514

namespace A326732

/-- `A281392(n)+A055941(A030101(n))` -/
def P11273746576207207514.Spec : Prop :=
  ∀ n, P11273746576207207514.a n = A326732 n

end A326732

/-! ## A326732.P7008557693034164876

`A281392(n)+A055941(A035327(n))`
-/

namespace A326732.P7008557693034164876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281392 n + A055941 (A035327 n).toNat

end

end A326732.P7008557693034164876

namespace A326732

/-- `A281392(n)+A055941(A035327(n))` -/
def P7008557693034164876.Spec : Prop :=
  ∀ n, P7008557693034164876.a n = A326732 n

end A326732

/-! ## A326732.P9180382307063833788

`A005843(A281392(n))-A000120(n)`
-/

namespace A326732.P9180382307063833788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A281392 n).toNat - A000120 n

end

end A326732.P9180382307063833788

namespace A326732

/-- `A005843(A281392(n))-A000120(n)` -/
def P9180382307063833788.Spec : Prop :=
  ∀ n, P9180382307063833788.a n = A326732 n

end A326732

/-! ## A326732.P5908323128598290607

`A005843(A281392(n))-log2(A001316(n))`
-/

namespace A326732.P5908323128598290607
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005843 (A281392 n).toNat : ℝ) - Real.logb 2 (A001316 n : ℝ)

end

end A326732.P5908323128598290607

namespace A326732

/-- `A005843(A281392(n))-log2(A001316(n))` -/
def P5908323128598290607.Spec : Prop :=
  ∀ n, P5908323128598290607.a n = (A326732 n : ℝ)

end A326732

/-! ## A326732.P15287430366464471072

`A005408(A281392(n))-A063787(n+1)`
-/

namespace A326732.P15287430366464471072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A281392 n).toNat - A063787 (n + 1)

end

end A326732.P15287430366464471072

namespace A326732

/-- `A005408(A281392(n))-A063787(n+1)` -/
def P15287430366464471072.Spec : Prop :=
  ∀ n, P15287430366464471072.a n = A326732 n

end A326732

/-! ## A326732.P17527621170631990956

`A000120(n)+2*A055941(A030101(n))`
-/

namespace A326732.P17527621170631990956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 2 * A055941 (A030101 n).toNat

end

end A326732.P17527621170631990956

namespace A326732

/-- `A000120(n)+2*A055941(A030101(n))` -/
def P17527621170631990956.Spec : Prop :=
  ∀ n, P17527621170631990956.a n = A326732 n

end A326732

/-! ## A326732.P11478353623261735086

`2*A281392(n)-A227183(A038573(n))`
-/

namespace A326732.P11478353623261735086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281392 n - A227183 (A038573 n).toNat

end

end A326732.P11478353623261735086

namespace A326732

/-- `2*A281392(n)-A227183(A038573(n))` -/
def P11478353623261735086.Spec : Prop :=
  ∀ n, P11478353623261735086.a n = A326732 n

end A326732

/-! ## A326732.P15149803167578261060

`2*A281392(n)-A281392(A073138(n))`
-/

namespace A326732.P15149803167578261060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281392 n - A281392 (A073138 n).toNat

end

end A326732.P15149803167578261060

namespace A326732

/-- `2*A281392(n)-A281392(A073138(n))` -/
def P15149803167578261060.Spec : Prop :=
  ∀ n, P15149803167578261060.a n = A326732 n

end A326732

/-! ## A326732.P5084026530551035147

`A281392(2*n+1)+A281392(n)-(A029837(n+1)+1)`
-/

namespace A326732.P5084026530551035147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281392 (2 * n + 1) + (A281392 n - (A029837 (n + 1) + 1))

end

end A326732.P5084026530551035147

namespace A326732

/-- `A281392(2*n+1)+A281392(n)-(A029837(n+1)+1)` -/
def P5084026530551035147.Spec : Prop :=
  ∀ n, P5084026530551035147.a n = A326732 n

end A326732

/-! ## A326732.P11034467754832718005

`A005408(A281392(n))-A000120(A005408(n))`
-/

namespace A326732.P11034467754832718005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A281392 n).toNat - A000120 (A005408 n).toNat

end

end A326732.P11034467754832718005

namespace A326732

/-- `A005408(A281392(n))-A000120(A005408(n))` -/
def P11034467754832718005.Spec : Prop :=
  ∀ n, P11034467754832718005.a n = A326732 n

end A326732

/-! ## A326732.P16019255964363784704

`A325135(A253565(n))+A281392(n)`
-/

namespace A326732.P16019255964363784704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (A253565 n).toNat + A281392 n

end

end A326732.P16019255964363784704

namespace A326732

/-- `A325135(A253565(n))+A281392(n)` -/
def P16019255964363784704.Spec : Prop :=
  ∀ n, P16019255964363784704.a n = A326732 n

end A326732

/-! ## A326732.P13821909480936573249

`A325135(A163511(n))+A281392(n)`
-/

namespace A326732.P13821909480936573249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (A163511 n).toNat + A281392 n

end

end A326732.P13821909480936573249

namespace A326732

/-- `A325135(A163511(n))+A281392(n)` -/
def P13821909480936573249.Spec : Prop :=
  ∀ n, P13821909480936573249.a n = A326732 n

end A326732

/-! ## A326732.P3704972366923077061

`2*A281392(n)-A001222(A019565(n))`
-/

namespace A326732.P3704972366923077061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281392 n - A001222 (A019565 n).toNat

end

end A326732.P3704972366923077061

namespace A326732

/-- `2*A281392(n)-A001222(A019565(n))` -/
def P3704972366923077061.Spec : Prop :=
  ∀ n, P3704972366923077061.a n = A326732 n

end A326732

/-!
# A326733: Numbers which converge to 0 under repeated application of the powertrain map of A133500.

The programs for A326733, there is no canonical definition to state claims against.
-/

/-! ## A326733.P13368526769034792370

`lt[n*A287877(abs(1-n)+1), 1]`
-/

namespace A326733.P13368526769034792370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A287877 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A326733.P13368526769034792370

/-! ## A326733.P17726257660739657402

`lt[A287877(A017281(n)), acot(n)]`
-/

namespace A326733.P17726257660739657402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A017281 n).toNat

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A326733.P17726257660739657402

/-! ## A326733.P7743534295944054453

`lt[A287877(A028310(n)), acot(n)]`
-/

namespace A326733.P7743534295944054453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A028310 n).toNat

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A326733.P7743534295944054453

/-! ## A326733.P8685682570335400750

`eq[0, n*A287877(A000007(n)+n)]`
-/

namespace A326733.P8685682570335400750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A287877 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326733.P8685682570335400750

/-! ## A326733.P10577528669775878259

`eq[C(2, n), A287877(A004277(n)-n)]`
-/

namespace A326733.P10577528669775878259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326733.P10577528669775878259

/-! ## A326733.P16034660086638518112

`A326178(eq[C(2, n+2), A287877(n+1)])`
-/

namespace A326733.P16034660086638518112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326733.P16034660086638518112

/-! ## A326733.P9438153318471995206

`eq[A000007(n), A287877(A017281(n))]`
-/

namespace A326733.P9438153318471995206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326733.P9438153318471995206

/-! ## A326733.P17800196254315181755

`eq[A287877(A017281(n))+1, A054977(n)]`
-/

namespace A326733.P17800196254315181755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A017281 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326733.P17800196254315181755

/-! ## A326733.P8897547181743644962

`eq[1, A287877(A017281(n))+A057427(n)]`
-/

namespace A326733.P8897547181743644962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A017281 n).toNat + A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326733.P8897547181743644962

/-!
# A326734: Numbers which converge to 1 under repeated application of the powertrain map of A133500.

The programs for A326734, there is no canonical definition to state claims against.
-/

/-! ## A326734.P6834717665772982814

`eq[1, A287877(n+1)]+1`
-/

namespace A326734.P6834717665772982814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A326734.P6834717665772982814

/-! ## A326734.P13100798584594783765

`eq[1, A287877(n/a(a(2%n)-1))]` with `a(0)=2, a(1)=1`
-/

namespace A326734.P13100798584594783765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A287877 (SequenceMachineLib.roundAway ((n : ℚ) / (f2 (f2 (2 % n) - 1).toNat : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326734.P13100798584594783765

/-! ## A326734.P8980294656923082582

`eq[1, A287877(A000038(n)+n)]`
-/

namespace A326734.P8980294656923082582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326734.P8980294656923082582

/-! ## A326734.P11282961177090483541

`eq[1, A287877(or(n, A000038(n)))]`
-/

namespace A326734.P11282961177090483541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326734.P11282961177090483541

/-! ## A326734.P11332121811056104092

`eq[(2*n-1)%2, A287877(A028310(n))]`
-/

namespace A326734.P11332121811056104092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n : ℤ) - 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326734.P11332121811056104092

/-! ## A326734.P14708430860851062067

`eq[A054977(n), A287877(A017281(n))]`
-/

namespace A326734.P14708430860851062067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326734.P14708430860851062067

/-! ## A326734.P2121750264880851860

`eq[A057427(n), A287877(A017281(n))]`
-/

namespace A326734.P2121750264880851860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326734.P2121750264880851860

/-! ## A326734.P6694432617251993757

`eq[A054977(n), A287877(A028310(n))]`
-/

namespace A326734.P6694432617251993757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326734.P6694432617251993757

/-! ## A326734.P971376410846160632

`eq[A057427(n), A287877(A028310(n))]`
-/

namespace A326734.P971376410846160632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326734.P971376410846160632

/-! ## A326734.P9131990521835391943

`eq[-A287877(A017281(n)), A057428(n)]`
-/

namespace A326734.P9131990521835391943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A287877 (A017281 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326734.P9131990521835391943

/-!
# A326735: Numbers which converge to 2 under repeated application of the powertrain map of A133500.

The programs for A326735, there is no canonical definition to state claims against.
-/

/-! ## A326735.P4629144026577441316

`eq[2, A287877(n+1)]+1`
-/

namespace A326735.P4629144026577441316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A326735.P4629144026577441316

/-! ## A326735.P1419948022716733728

`eq[2, A287877(A017281(n))]`
-/

namespace A326735.P1419948022716733728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326735.P1419948022716733728

/-! ## A326735.P12949411520757808918

`eq[2, A287877(A028310(n))]`
-/

namespace A326735.P12949411520757808918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326735.P12949411520757808918

/-! ## A326735.P4782277819396824954

`eq[2, A287877(A065033(2*n))]`
-/

namespace A326735.P4782277819396824954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326735.P4782277819396824954

/-! ## A326735.P18202943059916826110

`eq[2, A287877(A000007(n)+n)]`
-/

namespace A326735.P18202943059916826110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326735.P18202943059916826110

/-! ## A326735.P13411331121972093153

`eq[2, A287877(A004277(n)-n)]`
-/

namespace A326735.P13411331121972093153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326735.P13411331121972093153

/-! ## A326735.P5156727801901970001

`eq[2, A287877(or(n, A000007(n)))]`
-/

namespace A326735.P5156727801901970001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326735.P5156727801901970001

/-!
# A326736: Numbers which converge to 3 under repeated application of the powertrain map of A133500.

The programs for A326736, there is no canonical definition to state claims against.
-/

/-! ## A326736.P16941504148984560730

`eq[3, A133500(n)]`
-/

namespace A326736.P16941504148984560730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326736.P16941504148984560730

/-! ## A326736.P15352737874121277617

`eq[3, A287877(A028310(n))]`
-/

namespace A326736.P15352737874121277617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326736.P15352737874121277617

/-! ## A326736.P18086779012332866916

`A153152(eq[3, A287877(n+1)])`
-/

namespace A326736.P18086779012332866916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326736.P18086779012332866916

/-! ## A326736.P3328533506461722545

`eq[3, A287877(A017281(n))]`
-/

namespace A326736.P3328533506461722545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326736.P3328533506461722545

/-! ## A326736.P5344740153642835643

`eq[3, A287877(A233583(n+1))]`
-/

namespace A326736.P5344740153642835643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326736.P5344740153642835643

/-!
# A326737: Numbers which converge to 4 under repeated application of the powertrain map of A133500.

The programs for A326737, there is no canonical definition to state claims against.
-/

/-! ## A326737.P2186287779265652302

`eq[4, A287877(n+1)]+1`
-/

namespace A326737.P2186287779265652302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A326737.P2186287779265652302

/-! ## A326737.P5192889936681454665

`eq[4, A287877(A028310(n))]`
-/

namespace A326737.P5192889936681454665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326737.P5192889936681454665

/-! ## A326737.P5552333482064194519

`eq[4, A287877(A060000(n+1))]`
-/

namespace A326737.P5552333482064194519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326737.P5552333482064194519

/-! ## A326737.P14295463895926325995

`eq[4, A287877(A000007(n)+n)]`
-/

namespace A326737.P14295463895926325995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326737.P14295463895926325995

/-! ## A326737.P8323021655188725422

`eq[4, A287877(A017281(n))]`
-/

namespace A326737.P8323021655188725422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326737.P8323021655188725422

/-!
# A326738: Numbers which converge to 5 under repeated application of the powertrain map of A133500.

The programs for A326738, there is no canonical definition to state claims against.
-/

/-! ## A326738.P8106285651426038106

`eq[5, A287877(n+1)]+1`
-/

namespace A326738.P8106285651426038106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A326738.P8106285651426038106

/-! ## A326738.P163802674388393241

`eq[5, A287877(A028310(n))]`
-/

namespace A326738.P163802674388393241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326738.P163802674388393241

/-! ## A326738.P12854811332392477505

`A153152(eq[5, A287877(n+1)])`
-/

namespace A326738.P12854811332392477505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326738.P12854811332392477505

/-! ## A326738.P17935928734660789128

`eq[5, A287877(A017281(n))]`
-/

namespace A326738.P17935928734660789128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326738.P17935928734660789128

/-! ## A326738.P17237140717644834722

`eq[5, A287877(A233583(n+1))]`
-/

namespace A326738.P17237140717644834722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326738.P17237140717644834722

/-!
# A326739: Numbers which converge to 6 under repeated application of the powertrain map of A133500.

The programs for A326739, there is no canonical definition to state claims against.
-/

/-! ## A326739.P9503473927554598937

`eq[6, A287877(n+1)]+1`
-/

namespace A326739.P9503473927554598937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A326739.P9503473927554598937

/-! ## A326739.P2517097439392782596

`eq[6, A287877(A028310(n))]`
-/

namespace A326739.P2517097439392782596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326739.P2517097439392782596

/-! ## A326739.P5916559987657313407

`eq[6, A287877(A060000(n+1))]`
-/

namespace A326739.P5916559987657313407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326739.P5916559987657313407

/-! ## A326739.P332397673880715454

`A326178(eq[6, A287877(n+1)])`
-/

namespace A326739.P332397673880715454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326739.P332397673880715454

/-! ## A326739.P7979887822363712806

`eq[6, A287877(A000007(n)+n)]`
-/

namespace A326739.P7979887822363712806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326739.P7979887822363712806

/-!
# A326740: Numbers which converge to 7 under repeated application of the powertrain map of A133500.

The programs for A326740, there is no canonical definition to state claims against.
-/

/-! ## A326740.P5875541679198187863

`eq[7, A287877(A028310(n))]`
-/

namespace A326740.P5875541679198187863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326740.P5875541679198187863

/-! ## A326740.P16477866784469018879

`eq[7, A287877(A093178(n))]`
-/

namespace A326740.P16477866784469018879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326740.P16477866784469018879

/-! ## A326740.P10214081584504675055

`A004442(eq[7, A287877(n+1)])`
-/

namespace A326740.P10214081584504675055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326740.P10214081584504675055

/-! ## A326740.P3497450395763940806

`A079097(eq[7, A287877(n+1)])`
-/

namespace A326740.P3497450395763940806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326740.P3497450395763940806

/-! ## A326740.P5126519328152510613

`A113636(eq[7, A287877(n+1)])`
-/

namespace A326740.P5126519328152510613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326740.P5126519328152510613

/-!
# A326741: Numbers which converge to 8 under repeated application of the powertrain map of A133500.

The programs for A326741, there is no canonical definition to state claims against.
-/

/-! ## A326741.P12366758249109312179

`eq[8, A287877(n+1)]+1`
-/

namespace A326741.P12366758249109312179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A326741.P12366758249109312179

/-! ## A326741.P11883519856841479779

`eq[8, A287877(A017281(n))]`
-/

namespace A326741.P11883519856841479779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326741.P11883519856841479779

/-! ## A326741.P13880016850163668892

`eq[8, A287877(A028310(n))]`
-/

namespace A326741.P13880016850163668892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326741.P13880016850163668892

/-! ## A326741.P18431255420322819799

`eq[8, A287877(A233583(n+1))]`
-/

namespace A326741.P18431255420322819799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326741.P18431255420322819799

/-! ## A326741.P9884671592433305893

`eq[8, A287877(A000007(n)+n)]`
-/

namespace A326741.P9884671592433305893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326741.P9884671592433305893

/-! ## A326741.P1594189508504741676

`eq[8, A287877(or(n, A000007(n)))]`
-/

namespace A326741.P1594189508504741676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326741.P1594189508504741676

/-!
# A326742: Numbers which converge to 9 under repeated application of the powertrain map of A133500.

The programs for A326742, there is no canonical definition to state claims against.
-/

/-! ## A326742.P6776117312285888554

`eq[9, A287877(n+1)]+1`
-/

namespace A326742.P6776117312285888554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A326742.P6776117312285888554

/-! ## A326742.P13844031922053085907

`eq[9, A287877(A028310(n))]`
-/

namespace A326742.P13844031922053085907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326742.P13844031922053085907

/-! ## A326742.P6013591993441685941

`eq[9, A287877(A000007(n)+n)]`
-/

namespace A326742.P6013591993441685941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326742.P6013591993441685941

/-! ## A326742.P14019404728502061302

`eq[9, A287877(or(n, A000007(n)))]`
-/

namespace A326742.P14019404728502061302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326742.P14019404728502061302

/-! ## A326742.P8091765680416647416

`eq[9, A287877(A017281(n))]`
-/

namespace A326742.P8091765680416647416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326742.P8091765680416647416

/-!
# A326743: Number of length n self-avoiding walks on the kisrhombille tiling starting at a degree 12 vertex.

The programs for A326743, there is no canonical definition to state claims against.
-/

/-! ## A326743.P8619509051853645733

`A181798((n+2)*2^(n-1))`
-/

namespace A326743.P8619509051853645733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181798 (SequenceMachineLib.roundAway ((n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A326743.P8619509051853645733

/-!
# A326744: Number of length n self-avoiding walks on the kisrhombille tiling starting at a degree 6 vertex.

The programs for A326744, there is no canonical definition to state claims against.
-/

/-! ## A326744.P2082020618867237826

`A002329(A002308(2*(n+2))+A002279(n))`
-/

namespace A326744.P2082020618867237826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002329 (A002308 (2 * (n + 2)) + A002279 n).toNat

end

end A326744.P2082020618867237826

/-!
# A326745: Number of length n self-avoiding walks on the kisrhombille tiling starting at a degree 4 vertex.

The programs for A326745, there is no canonical definition to state claims against.
-/

/-! ## A326745.P6982480804068552403

`A381811(A074890(n+1))`
-/

namespace A326745.P6982480804068552403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381811 (A074890 (n + 1)).toNat

end

end A326745.P6982480804068552403

/-!
# A326746: a(n) = (sum of digits of n) mod (sum of digits of n+1).

The programs for A326746, the canonical program `A326746.P12545346649694249600` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326746 has offset 0).

The definition of A326746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326746.P12545346649694249600

`∑{digits}[n, #]%∑{digits}[n+1, #]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A326746

/-- `∑{digits}[n, #]%∑{digits}[n+1, #]` -/
def P12545346649694249600.Spec : Prop :=
  ∀ n, (P12545346649694249600.a n : ℤ) = A326746 n

theorem P12545346649694249600.correct : P12545346649694249600.Spec := by
  intro n
  simp only [A326746]

end A326746

/-! ## A326746.P10447853140516127025

`A007953(n)%Δ[A037123(n)]`
-/

namespace A326746.P10447853140516127025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 n) (f1 (n + 1) - f1 n)

end

end A326746.P10447853140516127025

namespace A326746

/-- `A007953(n)%Δ[A037123(n)]` -/
def P10447853140516127025.Spec : Prop :=
  ∀ n, P10447853140516127025.a n = A326746 n

end A326746

/-! ## A326746.P12444221931977220493

`sqrt(A118881(n))%A007953(n+1)`
-/

namespace A326746.P12444221931977220493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A118881 n : ℝ))) (A007953 (n + 1))

end

end A326746.P12444221931977220493

namespace A326746

/-- `sqrt(A118881(n))%A007953(n+1)` -/
def P12444221931977220493.Spec : Prop :=
  ∀ n, P12444221931977220493.a n = A326746 n

end A326746

/-! ## A326746.P2315822919795643344

`log2(A329562(n))%A007953(n+1)`
-/

namespace A326746.P2315822919795643344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (A329562 n : ℝ))) (A007953 (n + 1))

end

end A326746.P2315822919795643344

namespace A326746

/-- `log2(A329562(n))%A007953(n+1)` -/
def P2315822919795643344.Spec : Prop :=
  ∀ n, P2315822919795643344.a n = A326746 n

end A326746

/-! ## A326746.P807469905540602881

`(A062028(n)-n)%A007953(n+1)`
-/

namespace A326746.P807469905540602881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062028 n - (n : ℤ)) (A007953 (n + 1))

end

end A326746.P807469905540602881

namespace A326746

/-- `(A062028(n)-n)%A007953(n+1)` -/
def P807469905540602881.Spec : Prop :=
  ∀ n, P807469905540602881.a n = A326746 n

end A326746

/-! ## A326746.P6321077069991308069

`(A118880(n)^(1/3))%A007953(n+1)`
-/

namespace A326746.P6321077069991308069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A118880 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ))) (A007953 (n + 1))

end

end A326746.P6321077069991308069

namespace A326746

/-- `(A118880(n)^(1/3))%A007953(n+1)` -/
def P6321077069991308069.Spec : Prop :=
  ∀ n, P6321077069991308069.a n = A326746 n

end A326746

/-! ## A326746.P17977286925998195719

`(A180018(n)+A000120(n))%A007953(n+1)`
-/

namespace A326746.P17977286925998195719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180018 n + A000120 n) (A007953 (n + 1))

end

end A326746.P17977286925998195719

namespace A326746

/-- `(A180018(n)+A000120(n))%A007953(n+1)` -/
def P17977286925998195719.Spec : Prop :=
  ∀ n, P17977286925998195719.a n = A326746 n

end A326746

/-! ## A326746.P6855877556922684902

`∑{digits}[n, #]%A061762(n+1)`
-/

namespace A326746.P6855877556922684902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A061762 (n + 1))

end

end A326746.P6855877556922684902

namespace A326746

/-- `∑{digits}[n, #]%A061762(n+1)` -/
def P6855877556922684902.Spec : Prop :=
  ∀ n, P6855877556922684902.a n = A326746 n

end A326746

/-! ## A326746.P162473834121671809

`A053831(A171397(n))%A007953(n+1)`
-/

namespace A326746.P162473834121671809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053831 (A171397 n).toNat) (A007953 (n + 1))

end

end A326746.P162473834121671809

namespace A326746

/-- `A053831(A171397(n))%A007953(n+1)` -/
def P162473834121671809.Spec : Prop :=
  ∀ n, P162473834121671809.a n = A326746 n

end A326746

/-!
# A326749: BII-numbers of connected set-systems.

The programs for A326749, there is no canonical definition to state claims against.
-/

/-! ## A326749.P2201206452278174029

`lt[A326753(n), 2]`
-/

namespace A326749.P2201206452278174029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326753 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A326749.P2201206452278174029

/-! ## A326749.P3158418681911630050

`eq[1, A326753(A028310(n))]`
-/

namespace A326749.P3158418681911630050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326753 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326749.P3158418681911630050

/-! ## A326749.P165682556474550710

`eq[A002828(n)*A326753(n), A002828(n)]`
-/

namespace A326749.P165682556474550710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n * A326753 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326749.P165682556474550710

/-! ## A326749.P8077413912548265342

`eq[A057427(n), A326753(n)]`
-/

namespace A326749.P8077413912548265342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326753 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326749.P8077413912548265342

/-! ## A326749.P9076519606212029606

`eq[abs(A057428(n)), A326753(n)]`
-/

namespace A326749.P9076519606212029606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057428 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326753 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326749.P9076519606212029606

/-! ## A326749.P6974605720391136021

`eq[A178489(n)*A326753(n), A178489(n)]`
-/

namespace A326749.P6974605720391136021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A326753 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326749.P6974605720391136021

/-! ## A326749.P10497273668776320748

`eq[A002828(n²), A326753(n)]`
-/

namespace A326749.P10497273668776320748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326753 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326749.P10497273668776320748

/-! ## A326749.P8889242570862108378

`eq[A178334(n)², A326753(n)]`
-/

namespace A326749.P8889242570862108378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326753 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326749.P8889242570862108378

/-! ## A326749.P8115467423103875731

`∪[A326853(n+1), A327098(n+1)]`
-/

namespace A326749.P8115467423103875731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326749.P8115467423103875731

/-! ## A326749.P15772114787933768856

`∪[A326853(n+1), A327111(n+1)]`
-/

namespace A326749.P15772114787933768856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326749.P15772114787933768856

/-!
# A326750: BII-numbers of clutters (connected antichains of nonempty sets).

The programs for A326750, there is no canonical definition to state claims against.
-/

/-! ## A326750.P5885081260962355992

`∩[A326704(n+1), A326749(n+1)]`
-/

namespace A326750.P5885081260962355992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326750.P5885081260962355992

/-! ## A326750.P8545718416914971127

`∪[A326751(n+1), A327100(n+1)]`
-/

namespace A326750.P8545718416914971127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326750.P8545718416914971127

/-! ## A326750.P12004127924970634889

`A329561(A000005(2^n))`
-/

namespace A326750.P12004127924970634889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329561 (A000005 (2 ^ n)).toNat

end

end A326750.P12004127924970634889

/-! ## A326750.P1535473405793743512

`A329561((n+1)^A225654(n+1))`
-/

namespace A326750.P1535473405793743512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329561 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A225654 (n + 1) : ℤ))).toNat

end

end A326750.P1535473405793743512

/-! ## A326750.P7760110308240281114

`A329561(n+1)%A181376(n+1)`
-/

namespace A326750.P7760110308240281114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329561 (n + 1)) (A181376 (n + 1))

end

end A326750.P7760110308240281114

/-!
# A326751: BII-numbers of blobs.

The programs for A326751, there is no canonical definition to state claims against.
-/

/-! ## A326751.P13261171297662009382

`eq[A319409(n), A342272(n)]`
-/

namespace A326751.P13261171297662009382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319409 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326751.P13261171297662009382

/-! ## A326751.P17702827183119688982

`eq[A105670(n+1), A292849(n+1)]`
-/

namespace A326751.P17702827183119688982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292849 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326751.P17702827183119688982

/-! ## A326751.P17029799276074877103

`∩[A326785(n+1), A326910(n+1)]`
-/

namespace A326751.P17029799276074877103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326751.P17029799276074877103

/-! ## A326751.P13120814796752416140

`∩[A326910(n+1), A327080(n+1)]`
-/

namespace A326751.P13120814796752416140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326751.P13120814796752416140

/-! ## A326751.P8442821447117099176

`eq[A294640(n), A329593(n)]`
-/

namespace A326751.P8442821447117099176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294640 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329593 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326751.P8442821447117099176

/-!
# A326752: BII-numbers of hypertrees.

The programs for A326752, there is no canonical definition to state claims against.
-/

/-! ## A326752.P10520702048712201194

`∩[A309314(n+1), A326749(n+1)]`
-/

namespace A326752.P10520702048712201194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326752.P10520702048712201194

/-! ## A326752.P807844482949275881

`∩[A309314(n+1), A326750(n+1)]`
-/

namespace A326752.P807844482949275881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326752.P807844482949275881

/-! ## A326752.P9679418106847844661

`A329561(∑[A343234(A343234(n))])`
-/

namespace A326752.P9679418106847844661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343234 (A343234 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329561 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326752.P9679418106847844661

/-! ## A326752.P10209976524702135719

`record[A057889(A326750(A087470(n+1)))]`
-/

namespace A326752.P10209976524702135719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A326750 (A087470 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326752.P10209976524702135719

/-! ## A326752.P7611678264938329113

`∩[A171827(n+1), A326750(n+1)]`
-/

namespace A326752.P7611678264938329113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326752.P7611678264938329113

/-!
# A326753: Number of connected components of the set-system with BII-number n.

The programs for A326753, there is no canonical definition to state claims against.
-/

/-! ## A326753.P13433114847522079415

`A371451(A019565(n))`
-/

namespace A326753.P13433114847522079415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371451 (A019565 n).toNat

end

end A326753.P13433114847522079415

/-! ## A326753.P11160420176719696157

`A305079(A371450(n))`
-/

namespace A326753.P11160420176719696157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A371450 n).toNat

end

end A326753.P11160420176719696157

/-! ## A326753.P2841705249133101893

`A371451(A334110(n))`
-/

namespace A326753.P2841705249133101893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371451 (A334110 n).toNat

end

end A326753.P2841705249133101893

/-! ## A326753.P7789382656357948233

`gcd(A072491(A045991(n)), A327144(n))`
-/

namespace A326753.P7789382656357948233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072491 (A045991 n).toNat) (A327144 n)

end

end A326753.P7789382656357948233

/-! ## A326753.P6598871291876974423

`A329313(A317823(n+2)%A334266(2*(n+1)))`
-/

namespace A326753.P6598871291876974423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (Int.tmod (A317823 (n + 2)) (A334266 (2 * (n + 1)))).toNat

end

end A326753.P6598871291876974423

/-!
# A326754: BII-numbers of set-systems covering an initial interval of positive integers.

The programs for A326754, there is no canonical definition to state claims against.
-/

/-! ## A326754.P12881768292071343816

`lt[A130260(n), cosh(A326702(n))]`
-/

namespace A326754.P12881768292071343816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (A326702 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A326754.P12881768292071343816

/-! ## A326754.P10483413659400396744

`eq[A003817(A029837(n+1)), A327041(n)]`
-/

namespace A326754.P10483413659400396744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A029837 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327041 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326754.P10483413659400396744

/-! ## A326754.P15028643604701065330

`eq[0, A048967(A178334(n)*A327041(n))]`
-/

namespace A326754.P15028643604701065330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 (A178334 n * A327041 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326754.P15028643604701065330

/-! ## A326754.P11206381235946111820

`eq[1, A038568(A178334(n)*A327041(n))]`
-/

namespace A326754.P11206381235946111820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (A178334 n * A327041 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326754.P11206381235946111820

/-! ## A326754.P17656116862234924885

`eq[1, A048896(A178334(n)*A327041(n))]`
-/

namespace A326754.P17656116862234924885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A178334 n * A327041 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326754.P17656116862234924885

/-! ## A326754.P18194151059321054078

`record[n%A005704(A330101(n))]`
-/

namespace A326754.P18194151059321054078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A005704 (A330101 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326754.P18194151059321054078

/-! ## A326754.P17622628233143678931

`eq[A327041(n), A327041(A330101(n))]`
-/

namespace A326754.P17622628233143678931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327041 (A330101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326754.P17622628233143678931

/-! ## A326754.P3835900234899033466

`eq[A327041(n), A327041(A330195(n))]`
-/

namespace A326754.P3835900234899033466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327041 (A330195 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326754.P3835900234899033466

/-! ## A326754.P16470054932613329409

`eq[A326702(A003817(n)), A326702(n)]`
-/

namespace A326754.P16470054932613329409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (A003817 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326754.P16470054932613329409

/-! ## A326754.P11152966226391389133

`eq[A327041(A003817(n)), A327041(n)]`
-/

namespace A326754.P11152966226391389133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327041 (A003817 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327041 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326754.P11152966226391389133

/-!
# A326755: E.g.f.: Product_{k>=1} 1/(1 - x^(3*k-1)/(3*k-1)).

The programs for A326755, there is no canonical definition to state claims against.
-/

/-! ## A326755.P6211303715971791206

`A365978(n)/A000002(A027864(n+1))`
-/

namespace A326755.P6211303715971791206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365978 n : ℚ) / (A000002 (A027864 (n + 1)).toNat : ℚ)

end

end A326755.P6211303715971791206

/-! ## A326755.P17226463516306052412

`A365978(n)/A055229(A218160(2*n+5))`
-/

namespace A326755.P17226463516306052412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365978 n : ℚ) / (A055229 (A218160 (2 * n + 5)).toNat : ℚ)

end

end A326755.P17226463516306052412

/-! ## A326755.P8846316459393969603

`A365978(n)/A000002(A041699(n))`
-/

namespace A326755.P8846316459393969603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365978 n : ℚ) / (A000002 (A041699 n).toNat : ℚ)

end

end A326755.P8846316459393969603

/-! ## A326755.P5971678560114698063

`A026741(A326860(n)/A177704(n))`
-/

namespace A326755.P5971678560114698063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A326860 n : ℚ) / (A177704 n : ℚ))).toNat

end

end A326755.P5971678560114698063

/-!
# A326756: E.g.f.: Product_{k>=1} 1/(1 - x^(3*k-2)/(3*k-2)).

The programs for A326756, there is no canonical definition to state claims against.
-/

/-! ## A326756.P17572883233113344560

`A029574(n)+A000027(A306946(n))`
-/

namespace A326756.P17572883233113344560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029574 n + A000027 (A306946 n).toNat

end

end A326756.P17572883233113344560

/-! ## A326756.P8251507837095055381

`A306946(A106618(n))+A106618(A029574(n))`
-/

namespace A326756.P8251507837095055381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306946 (A106618 n).toNat + A106618 (A029574 n).toNat

end

end A326756.P8251507837095055381

/-! ## A326756.P6604434423090005592

`A106618(A029574(n))-(A036633(n)-A306946(n))`
-/

namespace A326756.P6604434423090005592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (A029574 n).toNat - (A036633 n - A306946 n)

end

end A326756.P6604434423090005592

/-! ## A326756.P12457443965647802362

`A028310(A362696(n))`
-/

namespace A326756.P12457443965647802362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A362696 n).toNat

end

end A326756.P12457443965647802362

/-!
# A326757: a(n) is the X-coordinate of the n-th nonattacking queen placed by a greedy algorithm on N^3 (see Comments for details).

The programs for A326757, there is no canonical definition to state claims against.
-/

/-! ## A326757.P16597237553847192126

`A056558(A309362(n))`
-/

namespace A326757.P16597237553847192126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 (A309362 n).toNat

end

end A326757.P16597237553847192126

/-! ## A326757.P3461570063744948639

`A056558(eq[0, A326764(n)])`
-/

namespace A326757.P3461570063744948639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326757.P3461570063744948639

/-! ## A326757.P1915545775995155693

`A056558(record[(n+1)*(1-A326764(n+1))])`
-/

namespace A326757.P1915545775995155693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A326764 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A326757.P1915545775995155693

/-! ## A326757.P15822587010888013054

`A056558(record[n-A275895(n)*A326764(n)])`
-/

namespace A326757.P15822587010888013054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A275895 n * A326764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A326757.P15822587010888013054

/-! ## A326757.P12865679294586051353

`A056558(record[n-A001950(n+1)*A326764(n)])`
-/

namespace A326757.P12865679294586051353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001950 (n + 1) * A326764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A326757.P12865679294586051353

/-! ## A326757.P2221929621319705212

`A056558(record[n-A326764(n)*A326766(n)])`
-/

namespace A326757.P2221929621319705212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A326764 n * A326766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A326757.P2221929621319705212

/-!
# A326758: a(n) is the Y-coordinate of the n-th nonattacking queen placed by greedy algorithm on N^3 (as described in A326757).

The programs for A326758, there is no canonical definition to state claims against.
-/

/-! ## A326758.P13765346178941780629

`A056560(A309362(n))`
-/

namespace A326758.P13765346178941780629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056560 (A309362 n).toNat

end

end A326758.P13765346178941780629

/-! ## A326758.P12563989486132539968

`A056560(eq[0, A326764(n)])`
-/

namespace A326758.P12563989486132539968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326758.P12563989486132539968

/-! ## A326758.P15887559249420789953

`A056560(lt[A326764(n), 1])`
-/

namespace A326758.P15887559249420789953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326764 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056560 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A326758.P15887559249420789953

/-! ## A326758.P16040050431974330536

`A056560(record[(n+1)*(1-A326764(n+1))])`
-/

namespace A326758.P16040050431974330536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A326764 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056560 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A326758.P16040050431974330536

/-! ## A326758.P11647563230025579211

`A056560(record[n-A275895(n)*A326764(n)])`
-/

namespace A326758.P11647563230025579211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A275895 n * A326764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056560 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A326758.P11647563230025579211

/-! ## A326758.P9171527724639577050

`A056560(record[n-A326764(n)*A326766(n)])`
-/

namespace A326758.P9171527724639577050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A326764 n * A326766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056560 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A326758.P9171527724639577050

/-!
# A326759: a(n) is the Z-coordinate of the n-th nonattacking queen placed by greedy algorithm on N^3 (as described in A326757).

The programs for A326759, there is no canonical definition to state claims against.
-/

/-! ## A326759.P13155077923372329657

`A056559(A309362(n))`
-/

namespace A326759.P13155077923372329657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 (A309362 n).toNat

end

end A326759.P13155077923372329657

/-! ## A326759.P1254641029538577094

`A056559(eq[0, A326764(n)])`
-/

namespace A326759.P1254641029538577094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326759.P1254641029538577094

/-! ## A326759.P2812677366481506847

`A056559(record[(n+1)*(1-A326764(n+1))])`
-/

namespace A326759.P2812677366481506847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A326764 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A326759.P2812677366481506847

/-! ## A326759.P13668591312750172938

`A056559(record[n-A275895(n)*A326764(n)])`
-/

namespace A326759.P13668591312750172938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A275895 n * A326764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A326759.P13668591312750172938

/-! ## A326759.P11242281602369256961

`A056559(record[n-A001950(n+1)*A326764(n)])`
-/

namespace A326759.P11242281602369256961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001950 (n + 1) * A326764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A326759.P11242281602369256961

/-! ## A326759.P2485748958251413677

`A056559(record[n-A326764(n)*A326766(n)])`
-/

namespace A326759.P2485748958251413677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A326764 n * A326766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A326759.P2485748958251413677

/-!
# A326760: Number of permutations of length n whose powers all avoid the pattern 321.

The programs for A326760, there is no canonical definition to state claims against.
-/

/-! ## A326760.P13487475669493631747

`xor(A085856(A000166(n)), A326761(n+1))`
-/

namespace A326760.P13487475669493631747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A085856 (A000166 n).toNat) (A326761 (n + 1))

end

end A326760.P13487475669493631747

/-! ## A326760.P5991526263566579427

`A362601(A042339(n))`
-/

namespace A326760.P5991526263566579427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362601 (A042339 n).toNat

end

end A326760.P5991526263566579427

/-! ## A326760.P17861737557346079839

`A362601(A041247(n+1))`
-/

namespace A326760.P17861737557346079839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362601 (A041247 (n + 1)).toNat

end

end A326760.P17861737557346079839

/-!
# A326761: Number of 321-avoiding permutations of length n whose squares also avoid the pattern 321.

The programs for A326761, there is no canonical definition to state claims against.
-/

/-! ## A326761.P8815831338862080797

`A023190(A018042(n))`
-/

namespace A326761.P8815831338862080797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A018042 n).toNat

end

end A326761.P8815831338862080797

/-! ## A326761.P9406794176630789889

`A023190(A018043(n))`
-/

namespace A326761.P9406794176630789889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A018043 n).toNat

end

end A326761.P9406794176630789889

/-! ## A326761.P7599466238120855869

`A023193(2*A018042(n))`
-/

namespace A326761.P7599466238120855869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (2 * A018042 n).toNat

end

end A326761.P7599466238120855869

/-!
# A326762: Number of permutations of length n whose powers all avoid the pattern 132.

The programs for A326762, there is no canonical definition to state claims against.
-/

/-! ## A326762.P7679390804432122273

`A058696(n)+A037888(A348410(n))`
-/

namespace A326762.P7679390804432122273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n + A037888 (A348410 n).toNat

end

end A326762.P7679390804432122273

/-! ## A326762.P13599128712156441944

`A309950(n)+A244220(A273197(n))`
-/

namespace A326762.P13599128712156441944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309950 n + A244220 (A273197 n).toNat

end

end A326762.P13599128712156441944

/-! ## A326762.P4052891887783282297

`A316824(A265125(n+1))+A309950(n)`
-/

namespace A326762.P4052891887783282297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316824 (A265125 (n + 1)).toNat + A309950 n

end

end A326762.P4052891887783282297

/-! ## A326762.P1760439731544449061

`A005041(A084171(n))-A084143(n+1)`
-/

namespace A326762.P1760439731544449061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A084171 n).toNat - A084143 (n + 1)

end

end A326762.P1760439731544449061

/-!
# A326763: Number of permutations of length n and order at most 3 whose powers all avoid the pattern 132.

The programs for A326763, there is no canonical definition to state claims against.
-/

/-! ## A326763.P3915547583011098307

`A014495(n)+A370686(n)`
-/

namespace A326763.P3915547583011098307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 n + A370686 n

end

end A326763.P3915547583011098307

/-! ## A326763.P11109476518697712454

`A243713(A300355(n))+A014495(n)`
-/

namespace A326763.P11109476518697712454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243713 (A300355 n).toNat + A014495 n

end

end A326763.P11109476518697712454

/-! ## A326763.P9667892903087315250

`A194975(A373292(n+1))+A014495(n)`
-/

namespace A326763.P9667892903087315250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194975 (A373292 (n + 1)).toNat + A014495 n

end

end A326763.P9667892903087315250

/-!
# A326765: Values of A326764 along the X-axis.

The programs for A326765, there is no canonical definition to state claims against.
-/

/-! ## A326765.P17015232512478597026

`A326764(∑[∑[n+1]]-1)`
-/

namespace A326765.P17015232512478597026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326764 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A326765.P17015232512478597026

/-!
# A326766: Values of A326764 along the Y-axis.

The programs for A326766, there is no canonical definition to state claims against.
-/

/-! ## A326766.P3137328695966725565

`A326764(∑[∑[n]+n])`
-/

namespace A326766.P3137328695966725565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326764 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326766.P3137328695966725565

/-!
# A326767: Values of A326764 along the diagonal X=Y=Z.

The programs for A326767, there is no canonical definition to state claims against.
-/

/-! ## A326767.P17545093304021645699

`A326764(n*A064226(n))`
-/

namespace A326767.P17545093304021645699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326764 ((n : ℤ) * A064226 n).toNat

end

end A326767.P17545093304021645699

/-!
# A326768: Values of A326764 along the diagonal X=0 and Y=Z.

The programs for A326768, there is no canonical definition to state claims against.
-/

/-! ## A326768.P17677687493321938466

`A326764(∑[n*(4*n+1)])`
-/

namespace A326768.P17677687493321938466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326764 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326768.P17677687493321938466

/-! ## A326768.P573206651088524691

`A326764(A331987(n))%53`
-/

namespace A326768.P573206651088524691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326764 (A331987 n).toNat) 53

end

end A326768.P573206651088524691

/-! ## A326768.P9261273505188267118

`A178489(n)*A326764(A331987(n))`
-/

namespace A326768.P9261273505188267118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A326764 (A331987 n).toNat

end

end A326768.P9261273505188267118

/-! ## A326768.P7600385586846940084

`A335520(n+1)+A326764(A331987(n))`
-/

namespace A326768.P7600385586846940084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (n + 1) + A326764 (A331987 n).toNat

end

end A326768.P7600385586846940084

/-! ## A326768.P5719528220537702960

`A326764(A331987(n))/A178489(n+4)`
-/

namespace A326768.P5719528220537702960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326764 (A331987 n).toNat : ℚ) / (A178489 (n + 4) : ℚ)

end

end A326768.P5719528220537702960

/-!
# A326769: Values of A326764 along the diagonal Y=0 and X=Z.

The programs for A326769, there is no canonical definition to state claims against.
-/

/-! ## A326769.P10403962827796823662

`A326764(A332698(n))`
-/

namespace A326769.P10403962827796823662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326764 (A332698 n).toNat

end

end A326769.P10403962827796823662

/-! ## A326769.P16709967291933333182

`A326764(A331987(n)+n)`
-/

namespace A326769.P16709967291933333182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326764 (A331987 n + (n : ℤ)).toNat

end

end A326769.P16709967291933333182

/-! ## A326769.P8969066792954814454

`A326764(∑[A007742(n)]+n)`
-/

namespace A326769.P8969066792954814454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326764 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A326769.P8969066792954814454

/-! ## A326769.P2656269136357627141

`A326764(A050533(n)+∑[n])`
-/

namespace A326769.P2656269136357627141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326764 (A050533 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A326769.P2656269136357627141

/-! ## A326769.P12813198945525142817

`A326764(A100178(n+1)-A000124(n))`
-/

namespace A326769.P12813198945525142817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326764 (A100178 (n + 1) - A000124 n).toNat

end

end A326769.P12813198945525142817

/-!
# A326770: Values of A326764 along the diagonal Z=0 and X=Y.

The programs for A326770, there is no canonical definition to state claims against.
-/

/-! ## A326770.P12373309020402598133

`A326764(∑[∑[8*n]])`
-/

namespace A326770.P12373309020402598133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326764 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326770.P12373309020402598133

/-!
# A326774: For any number m, let m* be the bi-infinite string obtained by repetition of the binary representation of m; this sequence lists the numbers n such that for any k < n, n* does not equal k* up to a shift.

The programs for A326774, there is no canonical definition to state claims against.
-/

/-! ## A326774.P925128026170892959

`record[floor(n/A211100(n))]`
-/

namespace A326774.P925128026170892959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A211100 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326774.P925128026170892959

/-! ## A326774.P4172122788086205061

`floor(A339608(n+1)/2)`
-/

namespace A326774.P4172122788086205061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A339608 (n + 1) : ℚ) / 2⌋

end

end A326774.P4172122788086205061

/-! ## A326774.P2526373918656201751

`lt[A211100(2*n+1), 3]`
-/

namespace A326774.P2526373918656201751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A326774.P2526373918656201751

/-! ## A326774.P5118895339985795294

`lt[A211097(4*n+1)-1, 2]`
-/

namespace A326774.P5118895339985795294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 (4 * n + 1) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A326774.P5118895339985795294

/-! ## A326774.P14370364980784495628

`A004526(A339608(n+1))`
-/

namespace A326774.P14370364980784495628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A339608 (n + 1)).toNat

end

end A326774.P14370364980784495628

/-! ## A326774.P16826370710056417785

`eq[1, A211097(A004277(n))]`
-/

namespace A326774.P16826370710056417785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326774.P16826370710056417785

/-! ## A326774.P821041948903036790

`A004524(A339608(n+1)+1)`
-/

namespace A326774.P821041948903036790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A339608 (n + 1) + 1).toNat

end

end A326774.P821041948903036790

/-! ## A326774.P18281279112928385186

`A001057(A339608(n+1)-1)`
-/

namespace A326774.P18281279112928385186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A339608 (n + 1) - 1).toNat

end

end A326774.P18281279112928385186

/-! ## A326774.P11326336717941518459

`A001057(eq[1, A211097(n+1)])`
-/

namespace A326774.P11326336717941518459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326774.P11326336717941518459

/-! ## A326774.P840623438453027031

`A082010(A339608(n+1)%A006508(n))`
-/

namespace A326774.P840623438453027031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082010 (Int.tmod (A339608 (n + 1)) (A006508 n)).toNat

end

end A326774.P840623438453027031

/-!
# A326775: For any n >= 0, let b >= 2 be the smallest base where n has all digits equal, say to d; a(n) = d.

The programs for A326775, there is no canonical definition to state claims against.
-/

/-! ## A326775.P8474783420352270170

`n%A059711(n)`
-/

namespace A326775.P8474783420352270170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A059711 n)

end

end A326775.P8474783420352270170

/-! ## A326775.P2379653845782428581

`gcd(n, A257990(A374687(n)))`
-/

namespace A326775.P2379653845782428581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A257990 (A374687 n).toNat)

end

end A326775.P2379653845782428581

/-! ## A326775.P3106141235459974299

`A001221(A326935(n+1)%A183802(n+1))`
-/

namespace A326775.P3106141235459974299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A326935 (n + 1)) (A183802 (n + 1))).toNat

end

end A326775.P3106141235459974299

/-! ## A326775.P9889537766207741528

`A001221(A326935(A028233(n+1)^A014673(n+1)))`
-/

namespace A326775.P9889537766207741528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A326935 (SequenceMachineLib.roundAway ((A028233 (n + 1) : ℚ) ^ (A014673 (n + 1) : ℤ))).toNat).toNat

end

end A326775.P9889537766207741528

/-! ## A326775.P4716346479844268688

`gcd(n^6, A001222(A167188(n+1)))`
-/

namespace A326775.P4716346479844268688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 6 : ℤ) (A001222 (A167188 (n + 1)).toNat)

end

end A326775.P4716346479844268688

/-!
# A326776: a(n) is the smallest divisor of the n-th nonprime number (A018252(n)) not already in the sequence.

The programs for A326776, there is no canonical definition to state claims against.
-/

/-! ## A326776.P2705619181965330136

`A006368(A187829(A153152(n+1)))`
-/

namespace A326776.P2705619181965330136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A187829 (A153152 (n + 1)).toNat).toNat

end

end A326776.P2705619181965330136

/-! ## A326776.P211796328705019302

`A006368(A153152(n+1))%A033766(n+3)`
-/

namespace A326776.P211796328705019302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006368 (A153152 (n + 1)).toNat) (A033766 (n + 3))

end

end A326776.P211796328705019302

/-!
# A326778: a(n) is the least k such that A213636(k) = n.

The programs for A326778, there is no canonical definition to state claims against.
-/

/-! ## A326778.P11441501007505454130

`(n+1)*A070460(a(n-1)²)` with `a(0)=1`
-/

namespace A326778.P11441501007505454130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A070460 (a (n - 1) ^ 2).toNat

end

end A326778.P11441501007505454130

/-!
# A326779: E.g.f.: Product_{k>=1} 1/(1 - x^(4*k-1)/(4*k-1)).

The programs for A326779, there is no canonical definition to state claims against.
-/

/-! ## A326779.P726400780433671213

`A365981(n)/A332278(A000045(n))`
-/

namespace A326779.P726400780433671213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365981 n : ℚ) / (A332278 (A000045 n).toNat : ℚ)

end

end A326779.P726400780433671213

/-! ## A326779.P2211550224407930654

`A365981(n)/A043290(A200380(n+1))`
-/

namespace A326779.P2211550224407930654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365981 n : ℚ) / (A043290 (A200380 (n + 1)).toNat : ℚ)

end

end A326779.P2211550224407930654

/-! ## A326779.P8325006179350015495

`A273943(A326862(n))`
-/

namespace A326779.P8325006179350015495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A326862 n).toNat

end

end A326779.P8325006179350015495

/-! ## A326779.P10081457323323923416

`A245092(A365981(n))`
-/

namespace A326779.P10081457323323923416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A365981 n).toNat

end

end A326779.P10081457323323923416

/-! ## A326779.P2313237378416561458

`A365981(A378837(n+1))`
-/

namespace A326779.P2313237378416561458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365981 (A378837 (n + 1)).toNat

end

end A326779.P2313237378416561458

/-!
# A326780: E.g.f.: Product_{k>=1} 1/(1 - x^(4*k-3)/(4*k-3)).

The programs for A326780, there is no canonical definition to state claims against.
-/

/-! ## A326780.P10210880465890414986

`A000203(n*a(n-1)-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A326780.P10210880465890414986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000203 ((n : ℤ) * a (n - 1) - 1).toNat

end

end A326780.P10210880465890414986

/-! ## A326780.P16234032176685764709

`(∏{e}[A032557(n+4), val(#, 2)]+n)*a(n-1)` with `a(0)=1`
-/

namespace A326780.P16234032176685764709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032557 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (Nat.factorization (f1 n).natAbs p) 2 + n) * a (n - 1)

end

end A326780.P16234032176685764709

/-! ## A326780.P5267895443924321567

`∏[A005811(A026641(n))]`
-/

namespace A326780.P5267895443924321567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A026641 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A326780.P5267895443924321567

/-! ## A326780.P7483050736235102962

`∏[∑[A053838(A131535(n))]]`
-/

namespace A326780.P7483050736235102962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 (A131535 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A326780.P7483050736235102962

/-! ## A326780.P3305071787747002280

`∏[A365722(∑[A001930(n)])]`
-/

namespace A326780.P3305071787747002280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001930 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365722 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A326780.P3305071787747002280

/-!
# A326781: No position of a 1 in the reversed binary expansion of n is a power of 2.

The programs for A326781, the canonical program `A326781.P12865584155483009950` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326781 has offset 1).

The definition of A326781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326781.P12865584155483009950

`record[4*and(n, -35)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A326781

/-- `record[4*and(n, -35)]` -/
def P12865584155483009950.Spec : Prop :=
  ∀ n, P12865584155483009950.a n = A326781 (n + 1)

theorem P12865584155483009950.correct : P12865584155483009950.Spec := by
  intro n
  simp only [A326781, Nat.add_sub_cancel]

end A326781

/-! ## A326781.P2043700660073711739

`record[4*(or(34, n)-34)]`
-/

namespace A326781.P2043700660073711739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((Nat.lor 34 n : ℤ) - 34)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326781.P2043700660073711739

namespace A326781

/-- `record[4*(or(34, n)-34)]` -/
def P2043700660073711739.Spec : Prop :=
  ∀ n, P2043700660073711739.a n = A326781 (n + 1)

end A326781

/-! ## A326781.P11677564953359039407

`record[4*(xor(34, n)-34)]`
-/

namespace A326781.P11677564953359039407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((Nat.xor 34 n : ℤ) - 34)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326781.P11677564953359039407

namespace A326781

/-- `record[4*(xor(34, n)-34)]` -/
def P11677564953359039407.Spec : Prop :=
  ∀ n, P11677564953359039407.a n = A326781 (n + 1)

end A326781

/-! ## A326781.P13695689524308746433

`4*xor(34, record[xor(34, n)])`
-/

namespace A326781.P13695689524308746433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 34 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.xor 34 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A326781.P13695689524308746433

namespace A326781

/-- `4*xor(34, record[xor(34, n)])` -/
def P13695689524308746433.Spec : Prop :=
  ∀ n, (P13695689524308746433.a n : ℤ) = A326781 (n + 1)

end A326781

/-! ## A326781.P3873401014817474316

`record[4*(n-and(34, n))]`
-/

namespace A326781.P3873401014817474316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) - (Nat.land 34 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326781.P3873401014817474316

namespace A326781

/-- `record[4*(n-and(34, n))]` -/
def P3873401014817474316.Spec : Prop :=
  ∀ n, P3873401014817474316.a n = A326781 (n + 1)

end A326781

/-! ## A326781.P12933929000228415750

`4*eq[n, and(n, -35)]`
-/

namespace A326781.P12933929000228415750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-35)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326781.P12933929000228415750

namespace A326781

/-- `4*eq[n, and(n, -35)]` -/
def P12933929000228415750.Spec : Prop :=
  ∀ n, (P12933929000228415750.a n : ℤ) = A326781 (n + 1)

end A326781

/-! ## A326781.P3770034444132135617

`4*A126001(n+1)`
-/

namespace A326781.P3770034444132135617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A126001 (n + 1)

end

end A326781.P3770034444132135617

namespace A326781

/-- `4*A126001(n+1)` -/
def P3770034444132135617.Spec : Prop :=
  ∀ n, P3770034444132135617.a n = A326781 (n + 1)

end A326781

/-! ## A326781.P568739409066619944

`A008586(A126001(n+1))`
-/

namespace A326781.P568739409066619944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A126001 (n + 1)).toNat

end

end A326781.P568739409066619944

namespace A326781

/-- `A008586(A126001(n+1))` -/
def P568739409066619944.Spec : Prop :=
  ∀ n, P568739409066619944.a n = A326781 (n + 1)

end A326781

/-!
# A326782: Numbers whose binary indices are prime numbers.

The programs for A326782, there is no canonical definition to state claims against.
-/

/-! ## A326782.P2159930014530392464

`∑{p}[A019565(n), A005179(#)]`
-/

namespace A326782.P2159930014530392464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005179 p

end

end A326782.P2159930014530392464

/-! ## A326782.P8950311506541754754

`∑{p}[A019565(n), A011782(#)]`
-/

namespace A326782.P8950311506541754754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A011782 p

end

end A326782.P8950311506541754754

/-! ## A326782.P2680994583910922767

`∑{p}[A019565(n), A037019(#)]`
-/

namespace A326782.P2680994583910922767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A037019 p

end

end A326782.P2680994583910922767

/-! ## A326782.P7841723611024849227

`∑{p}[A019565(n), A066781(#)]`
-/

namespace A326782.P7841723611024849227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A066781 p

end

end A326782.P7841723611024849227

/-! ## A326782.P14330112764316707221

`∑{p}[A019565(n), A099315(#)]`
-/

namespace A326782.P14330112764316707221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A099315 p

end

end A326782.P14330112764316707221

/-! ## A326782.P12442598152847917167

`∑{p}[A019565(n), A131577(#)]`
-/

namespace A326782.P12442598152847917167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A131577 p

end

end A326782.P12442598152847917167

/-! ## A326782.P14471414115370468022

`∑{p}[A019565(n), A000079(#-1)]`
-/

namespace A326782.P14471414115370468022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000079 (p - 1)

end

end A326782.P14471414115370468022

/-! ## A326782.P576280476854610879

`∑{p}[A019565(n), A094373(#)-1]`
-/

namespace A326782.P576280476854610879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A094373 p - 1)

end

end A326782.P576280476854610879

/-! ## A326782.P16813699967360239940

`∑{p}[A019565(n), A000079(#)/2]`
-/

namespace A326782.P16813699967360239940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A000079 p : ℚ) / 2

end

end A326782.P16813699967360239940

/-! ## A326782.P13445951576924411174

`∑{p}[A019565(n), A048675(A000040(#))]`
-/

namespace A326782.P13445951576924411174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 (A000040 p).toNat

end

end A326782.P13445951576924411174

/-! ## A326782.P16745228296544165885

`∑{p}[A019565(n), A000400(#)/A008776(#)]`
-/

namespace A326782.P16745228296544165885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A000400 p : ℚ) / (A008776 p : ℚ)

end

end A326782.P16745228296544165885

/-!
# A326783: BII-numbers of uniform set-systems.

The programs for A326783, there is no canonical definition to state claims against.
-/

/-! ## A326783.P4380415693245141123

`∪[A326750(n+1), A326785(n+1)]%A340020(2*(n+2))`
-/

namespace A326783.P4380415693245141123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326785 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A340020 (2 * (n + 2)))

end

end A326783.P4380415693245141123

/-! ## A326783.P5973782847653427004

`record[and(n, A327081(A070939(n)))]`
-/

namespace A326783.P5973782847653427004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A327081 (A070939 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326783.P5973782847653427004

/-! ## A326783.P16467937583576508149

`∪[A326785(n+1), A329561(A010121((n-n²)²+1)+n)]`
-/

namespace A326783.P16467937583576508149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329561 (A010121 (((n : ℤ) - (n ^ 2 : ℤ)) ^ 2 + 1).toNat + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326783.P16467937583576508149

/-! ## A326783.P469927051800727545

`∪[A327080(A004918(n+1)+1), A329561(n+1)]`
-/

namespace A326783.P469927051800727545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327080 (A004918 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326783.P469927051800727545

/-! ## A326783.P9899450444587462664

`∪[A326785(A004918(n+2)), A329561(n+2)]`
-/

namespace A326783.P9899450444587462664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326785 (A004918 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329561 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326783.P9899450444587462664

/-!
# A326784: BII-numbers of regular set-systems.

The programs for A326784, there is no canonical definition to state claims against.
-/

/-! ## A326784.P1512241356904606608

`eq[A327103(n), A327104(n)]`
-/

namespace A326784.P1512241356904606608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327104 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326784.P1512241356904606608

/-! ## A326784.P7002525907302805888

`eq[A327041(n)*A327103(n), A029931(n)]`
-/

namespace A326784.P7002525907302805888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327041 n * A327103 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326784.P7002525907302805888

/-! ## A326784.P10578190613086292065

`eq[A327041(n)*A327104(n), A029931(n)]`
-/

namespace A326784.P10578190613086292065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327041 n * A327104 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326784.P10578190613086292065

/-! ## A326784.P8591343972827717406

`eq[A139351(A330101(n)), A327103(n)]`
-/

namespace A326784.P8591343972827717406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A330101 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326784.P8591343972827717406

/-! ## A326784.P9633661944290344861

`eq[A139351(A330195(n)), A327103(n)]`
-/

namespace A326784.P9633661944290344861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A330195 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326784.P9633661944290344861

/-!
# A326785: BII-numbers of uniform regular set-systems.

The programs for A326785, there is no canonical definition to state claims against.
-/

/-! ## A326785.P16722652623555753377

`∩[A326783(n+1), A326784(n+1)]`
-/

namespace A326785.P16722652623555753377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326785.P16722652623555753377

/-! ## A326785.P10067437988646258682

`A056926(A327080(n+1)²)`
-/

namespace A326785.P10067437988646258682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A327080 (n + 1) ^ 2).toNat

end

end A326785.P10067437988646258682

/-! ## A326785.P798396829093391125

`A327080(n+1)%A109319(n)`
-/

namespace A326785.P798396829093391125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327080 (n + 1)) (A109319 n)

end

end A326785.P798396829093391125

/-! ## A326785.P4492281210616003644

`record[A327080(A325178(n+1)+1)]`
-/

namespace A326785.P4492281210616003644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327080 (A325178 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326785.P4492281210616003644

/-! ## A326785.P849683703987263478

`A327080(lcm(n+1, A080686(n+1)))`
-/

namespace A326785.P849683703987263478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327080 (Int.lcm (n + 1 : ℤ) (A080686 (n + 1)))

end

end A326785.P849683703987263478

/-!
# A326786: Cut-connectivity of the set-system with BII-number n.

The programs for A326786, there is no canonical definition to state claims against.
-/

/-! ## A326786.P2684324931431373087

`A327051(n)+char[A326853(n+2)]`
-/

namespace A326786.P2684324931431373087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326853 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327051 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A326786.P2684324931431373087

/-!
# A326787: Non-spanning edge-connectivity of the set-system with BII-number n.

The programs for A326787, there is no canonical definition to state claims against.
-/

/-! ## A326787.P286666841946018263

`A334028(A124108(n*A327144(n)))`
-/

namespace A326787.P286666841946018263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A124108 ((n : ℤ) * A327144 n).toNat).toNat

end

end A326787.P286666841946018263

/-! ## A326787.P6141628019543864274

`A334028(lcm(A124108(n), A327144(n)))`
-/

namespace A326787.P6141628019543864274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (Int.lcm (A124108 n) (A327144 n))

end

end A326787.P6141628019543864274

/-! ## A326787.P4372546166533642361

`and(A000120(n), A162321(A089246(3*(n+1))))`
-/

namespace A326787.P4372546166533642361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 n) (A162321 (A089246 (3 * (n + 1))).toNat)

end

end A326787.P4372546166533642361

/-! ## A326787.P14296176922095046737

`A327103(5*n*A327144(n))`
-/

namespace A326787.P14296176922095046737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 (5 * ((n : ℤ) * A327144 n)).toNat

end

end A326787.P14296176922095046737

/-! ## A326787.P1995086305073952633

`A327144(n)*A378397(A090466(2*(n+2)))`
-/

namespace A326787.P1995086305073952633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327144 n * A378397 (A090466 (2 * (n + 2))).toNat

end

end A326787.P1995086305073952633

/-!
# A326788: BII-numbers of simple labeled graphs.

The programs for A326788, there is no canonical definition to state claims against.
-/

/-! ## A326788.P21138657414212101

`4*eq[A000120(n), A339822(n)]`
-/

namespace A326788.P21138657414212101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326788.P21138657414212101

/-! ## A326788.P10869584360254223332

`4*eq[2^A339822(n), A001316(n)]`
-/

namespace A326788.P10869584360254223332
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A339822 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A326788.P10869584360254223332

/-! ## A326788.P14050330829178456946

`A008586(eq[A000120(n), A339822(n)])`
-/

namespace A326788.P14050330829178456946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A326788.P14050330829178456946

/-! ## A326788.P12139823504029207327

`A380009(2*n)/2`
-/

namespace A326788.P12139823504029207327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380009 (2 * n) : ℚ) / 2

end

end A326788.P12139823504029207327

/-! ## A326788.P13355722602673543631

`record[A285779(A380009(n))]`
-/

namespace A326788.P13355722602673543631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285779 (A380009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326788.P13355722602673543631

/-!
# A326789: Number of n-bead asymmetric bracelets with exactly 4 different colored beads.

The programs for A326789, the canonical program `A326789.P13673445755032286177` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326789 has offset 1).

The definition of A326789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326789.P8084090249258460331

`A056350(n+1)-A056500(n+1)`
-/

namespace A326789.P8084090249258460331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056350 (n + 1) - A056500 (n + 1)

end

end A326789.P8084090249258460331

namespace A326789

/-- `A056350(n+1)-A056500(n+1)` -/
def P8084090249258460331.Spec : Prop :=
  ∀ n, P8084090249258460331.a n = A326789 (n + 1)

end A326789

/-! ## A326789.P16087189373780168339

`∑{d}[n+1, A008683(#)*A305543((n+1)/#)]`
-/

namespace A326789.P16087189373780168339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A305543 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326789.P16087189373780168339

namespace A326789

/-- `∑{d}[n+1, A008683(#)*A305543((n+1)/#)]` -/
def P16087189373780168339.Spec : Prop :=
  ∀ n, P16087189373780168339.a n = A326789 (n + 1)

end A326789

/-! ## A326789.P3244453275838229082

`A056289(n+1)-A056350(n+1)`
-/

namespace A326789.P3244453275838229082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056289 (n + 1) - A056350 (n + 1)

end

end A326789.P3244453275838229082

namespace A326789

/-- `A056289(n+1)-A056350(n+1)` -/
def P3244453275838229082.Spec : Prop :=
  ∀ n, P3244453275838229082.a n = A326789 (n + 1)

end A326789

/-! ## A326789.P13673445755032286177

`(A056289(n+1)-A056500(n+1))/2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A326789

/-- `(A056289(n+1)-A056500(n+1))/2` -/
def P13673445755032286177.Spec : Prop :=
  ∀ n, P13673445755032286177.a n = (A326789 (n + 1) : ℚ)

end A326789

/-! ## A326789.P7227360868914083466

`A309651(∑[n]+4)`
-/

namespace A326789.P7227360868914083466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309651 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A326789.P7227360868914083466

namespace A326789

/-- `A309651(∑[n]+4)` -/
def P7227360868914083466.Spec : Prop :=
  ∀ n, P7227360868914083466.a n = A326789 (n + 1)

end A326789

/-!
# A326790: The rank of the group of functions on the units of Z/nZ generated by the functions f(u) = u*k mod n.

The programs for A326790, there is no canonical definition to state claims against.
-/

/-! ## A326790.P2462090737526206322

`ceil(n*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/(2*n-1))`
-/

namespace A326790.P2462090737526206322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) / ((2 * n : ℤ) - 1 : ℚ)⌉

end

end A326790.P2462090737526206322

/-! ## A326790.P12799337981390699644

`A057001(n)+a(n-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A326790.P12799337981390699644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A057001 n + a (n - 1)

end

end A326790.P12799337981390699644

/-! ## A326790.P5155102336087848597

`floor(atan(n)+A000010(n+1)/2)`
-/

namespace A326790.P5155102336087848597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + ((A000010 (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A326790.P5155102336087848597

/-! ## A326790.P7655697597603892535

`ceil(A039649(n+1)/2)%(n+1)`
-/

namespace A326790.P7655697597603892535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A039649 (n + 1) : ℚ) / 2⌉ (n + 1 : ℤ)

end

end A326790.P7655697597603892535

/-! ## A326790.P9935360471274622238

`(ceil(A109606(n+1)/2)+1)%(n+1)`
-/

namespace A326790.P9935360471274622238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈(A109606 (n + 1) : ℚ) / 2⌉ + 1) (n + 1 : ℤ)

end

end A326790.P9935360471274622238

/-! ## A326790.P8216765597158505946

`floor(Δ[A002088(abs(1-n)+1)]/2)+1`
-/

namespace A326790.P8216765597158505946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 2⌋ + 1

end

end A326790.P8216765597158505946

/-! ## A326790.P1057910540168494556

`(floor(Δ[A002088(n)/2])+1)%(2*n+1)`
-/

namespace A326790.P1057910540168494556
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002088 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊f1 (n + 1) - f1 n⌋ + 1) (2 * n + 1 : ℤ)

end

end A326790.P1057910540168494556

/-! ## A326790.P13074809527243565555

`ceil((A000010((n+1)²)+n-1)/(2*n+1))`
-/

namespace A326790.P13074809527243565555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 ((n + 1) ^ 2) + ((n : ℤ) - 1) : ℚ) / (2 * n + 1 : ℚ)⌉

end

end A326790.P13074809527243565555

/-! ## A326790.P11885768571295360709

`A028242((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])+char[1]`
-/

namespace A326790.P11885768571295360709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat + ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A326790.P11885768571295360709

/-! ## A326790.P8824646312889567702

`A052938((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%(n+1)`
-/

namespace A326790.P8824646312889567702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat) (n + 1 : ℤ)

end

end A326790.P8824646312889567702

/-!
# A326792: Triangular array: T(n,k) equals the number of small Schröder paths such that the area between the path and the x-axis contains n up-triangles and k down-triangles; n >= 1, k >= 0.

The programs for A326792, there is no canonical definition to state claims against.
-/

/-! ## A326792.P13227236360612028744

`A326454(A056537(n+1)%A000408(n+1))`
-/

namespace A326792.P13227236360612028744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326454 (Int.tmod (A056537 (n + 1)) (A000408 (n + 1))).toNat

end

end A326792.P13227236360612028744

/-! ## A326792.P3032530422256699577

`A326454(A056537(n+1))`
-/

namespace A326792.P3032530422256699577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326454 (A056537 (n + 1)).toNat

end

end A326792.P3032530422256699577

/-! ## A326792.P7916820860274152474

`A058260(A257493(n))+A008288(n)`
-/

namespace A326792.P7916820860274152474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058260 (A257493 n).toNat + A008288 n

end

end A326792.P7916820860274152474

/-! ## A326792.P4958834093713378386

`A345332(A269129(n))+A008288(n)`
-/

namespace A326792.P4958834093713378386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345332 (A269129 n).toNat + A008288 n

end

end A326792.P4958834093713378386

/-! ## A326792.P12231653620268055530

`A121373(A135193(n+1))+A008288(n)`
-/

namespace A326792.P12231653620268055530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A135193 (n + 1)).toNat + A008288 n

end

end A326792.P12231653620268055530

/-!
# A326793: The number of small Schröder paths such that the area between the path and the x-axis contains n up-triangles.

The programs for A326793, there is no canonical definition to state claims against.
-/

/-! ## A326793.P18297649441143255109

`ceil(A088354(n)/2)`
-/

namespace A326793.P18297649441143255109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088354 n : ℚ) / 2⌉

end

end A326793.P18297649441143255109

/-! ## A326793.P7279807287100236941

`A088354(floor(sqrt(n²+1)))/2`
-/

namespace A326793.P7279807287100236941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088354 (Nat.sqrt (n ^ 2 + 1)) : ℚ) / 2

end

end A326793.P7279807287100236941

/-! ## A326793.P6042075740082829820

`(A088354(n)+A000007(n))/2`
-/

namespace A326793.P6042075740082829820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088354 n + A000007 n : ℚ) / 2

end

end A326793.P6042075740082829820

/-! ## A326793.P12951126329104245799

`floor((A361024(n+1)+A088354(n))/2)`
-/

namespace A326793.P12951126329104245799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A361024 (n + 1) + A088354 n : ℚ) / 2⌋

end

end A326793.P12951126329104245799

/-!
# A326797: Consider the e.g.f. A(x,y) = Sum_{n>=0} Sum_{k=0..n} T(n,k) * x^(2*n-2*k+1) * y^(2*k) / (2*n+1)! and related functions B(x,y) and C(x,y), as defined in the Formula section. Sequence gives the triangular array of coefficients T(n,k) (n>=0, 0<=k<=n) of A(x,y).

The programs for A326797, there is no canonical definition to state claims against.
-/

/-! ## A326797.P3861508970244848827

`A091042(n)*A326800(n+1)`
-/

namespace A326797.P3861508970244848827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 n * A326800 (n + 1)

end

end A326797.P3861508970244848827

/-!
# A326798: Consider the e.g.f. B(x,y) = Sum_{n>=0} Sum_{k=0..floor(n/2)} T(n,k) * x^(2*n-2*k) * y^(2*k) / (2*n)! and related functions A(x,y) and C(x,y), as defined in the Formula section. Sequence gives the triangular array of coefficients T(n,k) (n>=0, 0<=k<=floor(n/2)) of B(x,y).

The programs for A326798, there is no canonical definition to state claims against.
-/

/-! ## A326798.P7576896457262870757

`A005820(a(n-1)^(n+1))` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=0, a(4)=-1`
-/

namespace A326798.P7576896457262870757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, 0, -1] fun n a =>
  A005820 (a (n - 1) ^ (n + 1)).toNat

end

end A326798.P7576896457262870757

/-! ## A326798.P8276052490479713977

`Δ[A259542(a(n-1)+2)!]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=1, a(5)=0`
-/

namespace A326798.P8276052490479713977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1, 1, 0] fun n f1 =>
  Nat.factorial (A259542 (f1 (n - 1) + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A326798.P8276052490479713977

/-!
# A326799: Consider the e.g.f. C(x,y) = Sum_{n>=0} Sum_{k=0..n} T(n,k) * x^(2*n-2*k+1) * y^(2*k+1) / (2*n+2)! and related functions A(x,y) and B(x,y), as defined in the Formula section. Sequence gives the triangular array of coefficients T(n,k) (n>=0, 0<=k<=n) of C(x,y).

The programs for A326799, there is no canonical definition to state claims against.
-/

/-! ## A326799.P2138702626742260415

`A116597(A120593(n)+n)`
-/

namespace A326799.P2138702626742260415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116597 (A120593 n + (n : ℤ)).toNat

end

end A326799.P2138702626742260415

