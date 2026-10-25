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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A259700: a(n) = Sum_{k=2..n-1} k*A259698(n,k).

The programs for A259700, there is no canonical definition to state claims against.
-/

/-! ## A259700.P10055829695831243739

`A211515(n*(a(n-1)+3))` with `a(0)=1`
-/

namespace A259700.P10055829695831243739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A211515 ((n : ℤ) * (a (n - 1) + 3)).toNat

end

end A259700.P10055829695831243739

/-! ## A259700.P12356109398280335112

`A046108(A151090(n))`
-/

namespace A259700.P12356109398280335112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046108 (A151090 n).toNat

end

end A259700.P12356109398280335112

/-!
# A259701: Triangle read by rows: T(n,k) = number of permutations without overlaps in which the first increasing run has length k and the second element is not 2.

The programs for A259701, there is no canonical definition to state claims against.
-/

/-! ## A259701.P7884324925276164430

`A088433(gcd(A000079(n), A326476(n)))`
-/

namespace A259701.P7884324925276164430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088433 (Int.gcd (A000079 n) (A326476 n))

end

end A259701.P7884324925276164430

/-! ## A259701.P11055282032837747719

`A186739(and(A138530(n+1), A189043(n+1)))`
-/

namespace A259701.P11055282032837747719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186739 (Int.land (A138530 (n + 1)) (A189043 (n + 1))).toNat

end

end A259701.P11055282032837747719

/-! ## A259701.P9779979978708302553

`A318059(A117529(2*n+1))%A127096(n+1)`
-/

namespace A259701.P9779979978708302553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318059 (A117529 (2 * n + 1)).toNat) (A127096 (n + 1))

end

end A259701.P9779979978708302553

/-! ## A259701.P13692471837265458836

`A255816(n+1)%(2^(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A259701.P13692471837265458836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255816 (n + 1)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)))

end

end A259701.P13692471837265458836

/-! ## A259701.P3102392032323095740

`A195832(A185624(n)^A266832(n+1))`
-/

namespace A259701.P3102392032323095740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195832 (SequenceMachineLib.roundAway ((A185624 n : ℚ) ^ (A266832 (n + 1) : ℤ))).toNat

end

end A259701.P3102392032323095740

/-!
# A259702: Row sums of A259701 except first column.

The programs for A259702, there is no canonical definition to state claims against.
-/

/-! ## A259702.P2555026731347840723

`A301620(round(acot(n)+n))/2`
-/

namespace A259702.P2555026731347840723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301620 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ) / 2

end

end A259702.P2555026731347840723

/-! ## A259702.P15581153931335195520

`A301620(abs(1-n)+1)/2`
-/

namespace A259702.P15581153931335195520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301620 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2

end

end A259702.P15581153931335195520

/-! ## A259702.P7309358440949840366

`A014682(A301620(round(acot(n)+n)))`
-/

namespace A259702.P7309358440949840366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A301620 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat

end

end A259702.P7309358440949840366

/-! ## A259702.P2566670553070291271

`record[A259701(n+2)]%A000682(n+1)`
-/

namespace A259702.P2566670553070291271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259701 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000682 (n + 1))

end

end A259702.P2566670553070291271

/-! ## A259702.P1766907201042019308

`A004525(A000682(n+2))-A000682(n+1)`
-/

namespace A259702.P1766907201042019308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000682 (n + 2)).toNat - A000682 (n + 1)

end

end A259702.P1766907201042019308

/-!
# A259703: Triangle read by rows: T(n,k) = number of permutations without overlaps in which the first increasing run has length k.

The programs for A259703, there is no canonical definition to state claims against.
-/

/-! ## A259703.P17309230728812877135

`ceil(A117384(A125170(n))/2)`
-/

namespace A259703.P17309230728812877135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A117384 (A125170 n).toNat : ℚ) / 2⌉

end

end A259703.P17309230728812877135

/-! ## A259703.P3577472153660275213

`A000005(A000048(A106471(n)))`
-/

namespace A259703.P3577472153660275213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000048 (A106471 n).toNat).toNat

end

end A259703.P3577472153660275213

/-! ## A259703.P7145465641011690581

`A185238(n)+round(A117384(A125170(n))/2)`
-/

namespace A259703.P7145465641011690581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 n + SequenceMachineLib.roundAway ((A117384 (A125170 n).toNat : ℚ) / 2)

end

end A259703.P7145465641011690581

/-! ## A259703.P6966104479087103549

`round(A117384(A125170(n))/2)%A000051(n)`
-/

namespace A259703.P6966104479087103549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A117384 (A125170 n).toNat : ℚ) / 2)) (A000051 n)

end

end A259703.P6966104479087103549

/-!
# A259705: Row sums of A259704.

The programs for A259705, there is no canonical definition to state claims against.
-/

/-! ## A259705.P3966563711485481710

`and(6, n)/6*(n+1)!`
-/

namespace A259705.P3966563711485481710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 6 n : ℚ) / 6 * (Nat.factorial (n + 1) : ℚ)

end

end A259705.P3966563711485481710

/-! ## A259705.P4154295267028731005

`and(6, n)/6*∏[n+1]`
-/

namespace A259705.P4154295267028731005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 6 n : ℚ) / 6 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A259705.P4154295267028731005

/-! ## A259705.P2431946191369116960

`(n+1)!/3*floor(n/2)`
-/

namespace A259705.P2431946191369116960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / 3 * (⌊(n : ℚ) / 2⌋ : ℚ)

end

end A259705.P2431946191369116960

/-! ## A259705.P3427385844217419815

`∏[n+1]/3*floor(n/2)`
-/

namespace A259705.P3427385844217419815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3 * (⌊(n : ℚ) / 2⌋ : ℚ)

end

end A259705.P3427385844217419815

/-!
# A259706: a(n) = Sum_k k*A259707(n,k).

The programs for A259706, there is no canonical definition to state claims against.
-/

/-! ## A259706.P7809151925780778693

`(n+1)!*∑[and(6, n)/6]`
-/

namespace A259706.P7809151925780778693
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 6 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259706.P7809151925780778693

/-! ## A259706.P171627947877965408

`∑[and(6, n)/6]*∏[n+1]`
-/

namespace A259706.P171627947877965408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 6 n : ℚ) / 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A259706.P171627947877965408

/-! ## A259706.P9980192019672772891

`(n+1)!*floor((n/2)²)/3`
-/

namespace A259706.P9980192019672772891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) * ⌊((n : ℚ) / 2) ^ 2⌋ : ℚ) / 3

end

end A259706.P9980192019672772891

/-!
# A259709: a(n) = A259708(n,n-1).

The programs for A259709, the canonical program `A259709.P9823627250390288999` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259709 has offset 1).

The definition of A259709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259709.P9823627250390288999

`A000129(n+2)-A045925(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A259709

/-- `A000129(n+2)-A045925(n+2)` -/
def P9823627250390288999.Spec : Prop :=
  ∀ n, P9823627250390288999.a n = A259709 (n + 1)

theorem P9823627250390288999.correct : P9823627250390288999.Spec := by
  intro n
  simp only [A259709, Nat.add_sub_cancel]

end A259709

/-! ## A259709.P17075814680654163102

`A135153(A005408(n+2))-A045925(n+2)`
-/

namespace A259709.P17075814680654163102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (A005408 (n + 2)).toNat - A045925 (n + 2)

end

end A259709.P17075814680654163102

namespace A259709

/-- `A135153(A005408(n+2))-A045925(n+2)` -/
def P17075814680654163102.Spec : Prop :=
  ∀ n, P17075814680654163102.a n = A259709 (n + 1)

end A259709

/-! ## A259709.P8283627319159220918

`A135153(A005843(n+2))-A045925(n+2)`
-/

namespace A259709.P8283627319159220918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (A005843 (n + 2)).toNat - A045925 (n + 2)

end

end A259709.P8283627319159220918

namespace A259709

/-- `A135153(A005843(n+2))-A045925(n+2)` -/
def P8283627319159220918.Spec : Prop :=
  ∀ n, P8283627319159220918.a n = A259709 (n + 1)

end A259709

/-! ## A259709.P6809405496965224104

`A135153(A059009(n+2))-A045925(n+2)`
-/

namespace A259709.P6809405496965224104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (A059009 (n + 2)).toNat - A045925 (n + 2)

end

end A259709.P6809405496965224104

namespace A259709

/-- `A135153(A059009(n+2))-A045925(n+2)` -/
def P6809405496965224104.Spec : Prop :=
  ∀ n, P6809405496965224104.a n = A259709 (n + 1)

end A259709

/-! ## A259709.P12738624150954493917

`A135153(A059010(n+2))-A045925(n+2)`
-/

namespace A259709.P12738624150954493917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (A059010 (n + 2)).toNat - A045925 (n + 2)

end

end A259709.P12738624150954493917

namespace A259709

/-- `A135153(A059010(n+2))-A045925(n+2)` -/
def P12738624150954493917.Spec : Prop :=
  ∀ n, P12738624150954493917.a n = A259709 (n + 1)

end A259709

/-! ## A259709.P7827525434174361039

`A247311(A016777(n+2))-A045925(n+2)`
-/

namespace A259709.P7827525434174361039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247311 (A016777 (n + 2)).toNat - A045925 (n + 2)

end

end A259709.P7827525434174361039

namespace A259709

/-- `A247311(A016777(n+2))-A045925(n+2)` -/
def P7827525434174361039.Spec : Prop :=
  ∀ n, P7827525434174361039.a n = A259709 (n + 1)

end A259709

/-! ## A259709.P1266479833651573253

`A135153(A268272(n+2))-A045925(n+2)`
-/

namespace A259709.P1266479833651573253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (A268272 (n + 2)).toNat - A045925 (n + 2)

end

end A259709.P1266479833651573253

namespace A259709

/-- `A135153(A268272(n+2))-A045925(n+2)` -/
def P1266479833651573253.Spec : Prop :=
  ∀ n, P1266479833651573253.a n = A259709 (n + 1)

end A259709

/-! ## A259709.P696793916663736426

`A259708(∑[n+2]-1)`
-/

namespace A259709.P696793916663736426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259708 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A259709.P696793916663736426

namespace A259709

/-- `A259708(∑[n+2]-1)` -/
def P696793916663736426.Spec : Prop :=
  ∀ n, P696793916663736426.a n = A259709 (n + 1)

end A259709

/-!
# A259710: Describe previous term in binary, then convert to decimal (initial term is 0).

The programs for A259710, there is no canonical definition to state claims against.
-/

/-! ## A259710.P1795260097946709759

`A321226(a(n-1))` with `a(0)=0`
-/

namespace A259710.P1795260097946709759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A321226 (a (n - 1)).toNat

end

end A259710.P1795260097946709759

/-!
# A259711: Numbers that can be written as a product of Catalan numbers.

The programs for A259711, there is no canonical definition to state claims against.
-/

/-! ## A259711.P11036157122793130092

`∩[A108513(n+1), A260113(n+1)]`
-/

namespace A259711.P11036157122793130092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259711.P11036157122793130092

/-! ## A259711.P7112162426377374803

`∩[A274384(n+1), A384609(n+1)]`
-/

namespace A259711.P7112162426377374803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259711.P7112162426377374803

/-! ## A259711.P15879797517547324815

`∑[A124736(∑[A194214(3*n+1)])]`
-/

namespace A259711.P15879797517547324815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194214 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124736 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259711.P15879797517547324815

/-! ## A259711.P11599379197367013144

`∩[A380573(n+1), A384609(n+1)]`
-/

namespace A259711.P11599379197367013144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259711.P11599379197367013144

/-! ## A259711.P4449589638287018008

`record[gcd(A235319(3*n+4), A289440(2*n+5))]`
-/

namespace A259711.P4449589638287018008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A235319 (3 * n + 4)) (A289440 (2 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259711.P4449589638287018008

/-!
# A259712: Least positive integer k such that prime(k) + prime(k*n) is a square.

The programs for A259712, there is no canonical definition to state claims against.
-/

/-! ## A259712.P1997494768592537665

`A199313(a(n-1)+a(n-2))` with `a(0)=1, a(1)=10, a(2)=2, a(3)=1`
-/

namespace A259712.P1997494768592537665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 2, 1] fun n a =>
  A199313 (a (n - 1) + a (n - 2)).toNat

end

end A259712.P1997494768592537665

/-!
# A259713: a(n) = 3*2^n - 2*(-1)^n.

The programs for A259713, the canonical program `A259713.P6901605689723195442` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259713 has offset 0).

The definition of A259713 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n-2*(-1)^n` (program `A259713.P6901605689723195442`, by `A259713.P6901605689723195442.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259713.P6901605689723195442

`3*2^n-2*(-1)^n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259713

/-- `3*2^n-2*(-1)^n` -/
def P6901605689723195442.Spec : Prop :=
  ∀ n, P6901605689723195442.a n = A259713 n

theorem P6901605689723195442.correct : P6901605689723195442.Spec := by
  intro n
  simp only [A259713]

end A259713

/-! ## A259713.P17424388840697165812

`ogf((1+7x)/(1-x-2x^2))`
-/

namespace A259713.P17424388840697165812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, -1, -2] n

end

end A259713.P17424388840697165812

namespace A259713

/-- `ogf((1+7x)/(1-x-2x^2))` -/
def P17424388840697165812.Spec : Prop :=
  ∀ n, P17424388840697165812.a n = A259713 n

end A259713

/-! ## A259713.P4879882954701374793

`2*(a(n-1)-3*(-1)^n)` with `a(0)=1`
-/

namespace A259713.P4879882954701374793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - 3 * (-1) ^ n)

end

end A259713.P4879882954701374793

namespace A259713

/-- `2*(a(n-1)-3*(-1)^n)` -/
def P4879882954701374793.Spec : Prop :=
  ∀ n, P4879882954701374793.a n = A259713 n

theorem P4879882954701374793.correct : P4879882954701374793.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A259713, Nat.add_sub_cancel, A259713.P4879882954701374793.a, A259713.P6901605689723195442.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A259713, Nat.add_sub_cancel, A259713.P4879882954701374793.a, A259713.P6901605689723195442.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A259713

/-! ## A259713.P11544678359516739246

`Δ[abs(A140683(n))]`
-/

namespace A259713.P11544678359516739246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140683 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259713.P11544678359516739246

namespace A259713

/-- `Δ[abs(A140683(n))]` -/
def P11544678359516739246.Spec : Prop :=
  ∀ n, P11544678359516739246.a n = A259713 n

end A259713

/-! ## A259713.P10389327337597987684

`∪[A096045(n), A140788(n)]`
-/

namespace A259713.P10389327337597987684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140788 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259713.P10389327337597987684

namespace A259713

/-- `∪[A096045(n), A140788(n)]` -/
def P10389327337597987684.Spec : Prop :=
  ∀ n, (P10389327337597987684.a n : ℤ) = A259713 n

end A259713

/-! ## A259713.P10053696241447520363

`Δ[Δ[A280345(n)]]`
-/

namespace A259713.P10053696241447520363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280345 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259713.P10053696241447520363

namespace A259713

/-- `Δ[Δ[A280345(n)]]` -/
def P10053696241447520363.Spec : Prop :=
  ∀ n, P10053696241447520363.a n = A259713 n

end A259713

/-! ## A259713.P16566610142787863187

`A110287(n)%A321483(n)`
-/

namespace A259713.P16566610142787863187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110287 n) (A321483 n)

end

end A259713.P16566610142787863187

namespace A259713

/-- `A110287(n)%A321483(n)` -/
def P16566610142787863187.Spec : Prop :=
  ∀ n, P16566610142787863187.a n = A259713 n

end A259713

/-!
# A259714: a(n) = Sum_{k=1..n-1}((k mod 5)*a(n-k)), a(1) = 1.

The programs for A259714, the canonical program `A259714.P863791997064439886` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259714 has offset 1).

The definition of A259714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259714.P863791997064439886

`a(n-1)+2*a(n-2)+3*a(n-3)+4*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=8, a(4)=21, a(5)=50`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259714

/-- `a(n-1)+2*a(n-2)+3*a(n-3)+4*a(n-4)+a(n-5)` -/
def P863791997064439886.Spec : Prop :=
  ∀ n, (P863791997064439886.a n : ℤ) = A259714 (n + 1)

theorem P863791997064439886.correct : P863791997064439886.Spec := by
  intro n
  simp only [A259714, Nat.add_sub_cancel]

end A259714

/-! ## A259714.P6380029661220121743

`A080791(A200075(n))+A029855(n+5)`
-/

namespace A259714.P6380029661220121743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A200075 n).toNat + A029855 (n + 5)

end

end A259714.P6380029661220121743

namespace A259714

/-- `A080791(A200075(n))+A029855(n+5)` -/
def P6380029661220121743.Spec : Prop :=
  ∀ n, P6380029661220121743.a n = A259714 (n + 1)

end A259714

/-! ## A259714.P16026716640952775590

`or(A174198(n+1), A174206(A083491(n)))`
-/

namespace A259714.P16026716640952775590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A174198 (n + 1)) (A174206 (A083491 n).toNat)

end

end A259714.P16026716640952775590

namespace A259714

/-- `or(A174198(n+1), A174206(A083491(n)))` -/
def P16026716640952775590.Spec : Prop :=
  ∀ n, P16026716640952775590.a n = A259714 (n + 1)

end A259714

/-! ## A259714.P5120582046853590795

`A174206(A016825(2*n))+A174198(n+1)`
-/

namespace A259714.P5120582046853590795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174206 (A016825 (2 * n)).toNat + A174198 (n + 1)

end

end A259714.P5120582046853590795

namespace A259714

/-- `A174206(A016825(2*n))+A174198(n+1)` -/
def P5120582046853590795.Spec : Prop :=
  ∀ n, P5120582046853590795.a n = A259714 (n + 1)

end A259714

/-!
# A259715: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 or 00000011.

The programs for A259715, there is no canonical definition to state claims against.
-/

/-! ## A259715.P16500585119585895881

`A259723(∑[4*n]+1)`
-/

namespace A259715.P16500585119585895881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259715.P16500585119585895881

/-! ## A259715.P5113491768516161603

`record[A259723(A152271(n²))]`
-/

namespace A259715.P5113491768516161603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259715.P5113491768516161603

/-! ## A259715.P6647093923552639150

`and(-1, A259723(A001844(n)))`
-/

namespace A259715.P6647093923552639150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A259723 (A001844 n).toNat)

end

end A259715.P6647093923552639150

/-! ## A259715.P3664985634660978433

`record[A259723(A330613(n+1))]`
-/

namespace A259715.P3664985634660978433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259715.P3664985634660978433

/-! ## A259715.P17337001474014597337

`record[A005369(n)*A259723(2*n+1)]`
-/

namespace A259715.P17337001474014597337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n * A259723 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259715.P17337001474014597337

/-!
# A259716: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 or 00000011.

The programs for A259716, the canonical program `A259716.P8747073409549536892` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259716 has offset 1).

The definition of A259716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259716.P8747073409549536892

`4*a(n-3)+3*a(n-4)` with `a(0)=32, a(1)=54, a(2)=140, a(3)=242`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259716

/-- `4*a(n-3)+3*a(n-4)` -/
def P8747073409549536892.Spec : Prop :=
  ∀ n, (P8747073409549536892.a n : ℤ) = A259716 (n + 1)

theorem P8747073409549536892.correct : P8747073409549536892.Spec := by
  intro n
  simp only [A259716, Nat.add_sub_cancel]

end A259716

/-! ## A259716.P12566426913815907932

`A259723(∑[n]+1)`
-/

namespace A259716.P12566426913815907932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259716.P12566426913815907932

namespace A259716

/-- `A259723(∑[n]+1)` -/
def P12566426913815907932.Spec : Prop :=
  ∀ n, P12566426913815907932.a n = A259716 (n + 1)

end A259716

/-! ## A259716.P6227263743079842000

`lcm(2, A259723(A000124(n)))`
-/

namespace A259716.P6227263743079842000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A259723 (A000124 n).toNat)

end

end A259716.P6227263743079842000

namespace A259716

/-- `lcm(2, A259723(A000124(n)))` -/
def P6227263743079842000.Spec : Prop :=
  ∀ n, (P6227263743079842000.a n : ℤ) = A259716 (n + 1)

end A259716

/-! ## A259716.P17635713651741009726

`record[A259723(A056536(n+1))]`
-/

namespace A259716.P17635713651741009726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259716.P17635713651741009726

namespace A259716

/-- `record[A259723(A056536(n+1))]` -/
def P17635713651741009726.Spec : Prop :=
  ∀ n, P17635713651741009726.a n = A259716 (n + 1)

end A259716

/-! ## A259716.P8772165465952103395

`record[A259723(A114091(n+1))]`
-/

namespace A259716.P8772165465952103395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259716.P8772165465952103395

namespace A259716

/-- `record[A259723(A114091(n+1))]` -/
def P8772165465952103395.Spec : Prop :=
  ∀ n, P8772165465952103395.a n = A259716 (n + 1)

end A259716

/-!
# A259717: Number of (n+2) X (2+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 or 00000011.

The programs for A259717, there is no canonical definition to state claims against.
-/

/-! ## A259717.P10035146073302993520

`A259723(∑[n+1]+2)`
-/

namespace A259717.P10035146073302993520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A259717.P10035146073302993520

/-! ## A259717.P4620763711841341769

`or(char[1], A259723(A133263(n+1)))`
-/

namespace A259717.P4620763711841341769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A259723 (A133263 (n + 1)).toNat)

end

end A259717.P4620763711841341769

/-! ## A259717.P1964981571818055557

`or(char[1], A259723(A000096(n)+3))`
-/

namespace A259717.P1964981571818055557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A259723 (A000096 n + 3).toNat)

end

end A259717.P1964981571818055557

/-! ## A259717.P13715889633360899349

`record[A005369(2*n)*A259723(n+2)]`
-/

namespace A259717.P13715889633360899349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (2 * n) * A259723 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259717.P13715889633360899349

/-! ## A259717.P11432037386530150267

`A007318(C(2, n))*A259723(A000096(n)+3)`
-/

namespace A259717.P11432037386530150267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A259723 (A000096 n + 3).toNat

end

end A259717.P11432037386530150267

/-!
# A259718: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 or 00000011.

The programs for A259718, there is no canonical definition to state claims against.
-/

/-! ## A259718.P1153796192988671417

`A259723(∑[n+2]+4)`
-/

namespace A259718.P1153796192988671417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A259718.P1153796192988671417

/-! ## A259718.P7388732698280296801

`lcm(2, A259723(A167614(n+1)))`
-/

namespace A259718.P7388732698280296801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A259723 (A167614 (n + 1)).toNat)

end

end A259718.P7388732698280296801

/-! ## A259718.P9232572808123184059

`lcm(4/2, A259723(A055998(n)+6))`
-/

namespace A259718.P9232572808123184059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((4 : ℚ) / 2)) (A259723 (A055998 n + 6).toNat)

end

end A259718.P9232572808123184059

/-! ## A259718.P13691407206317574964

`A259723(A167614(n+1))+A151933(n+3)`
-/

namespace A259718.P13691407206317574964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A167614 (n + 1)).toNat + A151933 (n + 3)

end

end A259718.P13691407206317574964

/-! ## A259718.P11306989452203797049

`A259723(A167614(n+1))+A010872(3*n)`
-/

namespace A259718.P11306989452203797049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A167614 (n + 1)).toNat + A010872 (3 * n)

end

end A259718.P11306989452203797049

/-!
# A259719: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 or 00000011.

The programs for A259719, there is no canonical definition to state claims against.
-/

/-! ## A259719.P17443209556127311482

`A259723(∑[n+3]+7)`
-/

namespace A259719.P17443209556127311482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A259719.P17443209556127311482

/-! ## A259719.P649914365770318013

`A259723(A055999(n)+10)+char[34]`
-/

namespace A259719.P649914365770318013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A259719.P649914365770318013

/-! ## A259719.P3602477710111941244

`char[xor(42, n)]*A259723(A052905(n)+9)`
-/

namespace A259719.P3602477710111941244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 42 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A259723 (A052905 n + 9).toNat

end

end A259719.P3602477710111941244

/-! ## A259719.P9614450546802294491

`A007318(C(n, 2))*A259723(A055999(n)+10)`
-/

namespace A259719.P9614450546802294491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A259723 (A055999 n + 10).toNat

end

end A259719.P9614450546802294491

/-! ## A259719.P8918163297793346885

`A007318(and(1, -n))*A259723(A055999(n)+10)`
-/

namespace A259719.P8918163297793346885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A259723 (A055999 n + 10).toNat

end

end A259719.P8918163297793346885

/-!
# A259720: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 or 00000011.

The programs for A259720, there is no canonical definition to state claims against.
-/

/-! ## A259720.P204200129405194720

`A259723(A374005(n+1))`
-/

namespace A259720.P204200129405194720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A374005 (n + 1)).toNat

end

end A259720.P204200129405194720

/-! ## A259720.P17011228400579988338

`A259723(A167499(n+3))`
-/

namespace A259720.P17011228400579988338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A167499 (n + 3)).toNat

end

end A259720.P17011228400579988338

/-! ## A259720.P13299593809045506973

`A259723(A155212(n)+13)`
-/

namespace A259720.P13299593809045506973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A155212 n + 13).toNat

end

end A259720.P13299593809045506973

/-! ## A259720.P12060144097900229867

`A259723(A056000(n)+15)`
-/

namespace A259720.P12060144097900229867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A056000 n + 15).toNat

end

end A259720.P12060144097900229867

/-! ## A259720.P1148386460124806511

`A259723(A166136(n+3)-1)`
-/

namespace A259720.P1148386460124806511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A166136 (n + 3) - 1).toNat

end

end A259720.P1148386460124806511

/-!
# A259721: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 or 00000011.

The programs for A259721, there is no canonical definition to state claims against.
-/

/-! ## A259721.P2516167251439243816

`A259723(A374007(n+1))`
-/

namespace A259721.P2516167251439243816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A374007 (n + 1)).toNat

end

end A259721.P2516167251439243816

/-! ## A259721.P9223107763705123880

`A259723(A167499(n+4)+1)`
-/

namespace A259721.P9223107763705123880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A167499 (n + 4) + 1).toNat

end

end A259721.P9223107763705123880

/-! ## A259721.P5529615134087691258

`A259723(A000124(n+5)+5)`
-/

namespace A259721.P5529615134087691258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A000124 (n + 5) + 5).toNat

end

end A259721.P5529615134087691258

/-! ## A259721.P6975458679837654820

`A259723(A000096(n+4)+7)`
-/

namespace A259721.P6975458679837654820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A000096 (n + 4) + 7).toNat

end

end A259721.P6975458679837654820

/-! ## A259721.P11874775588984319531

`A259723(A000217(n+5)+6)`
-/

namespace A259721.P11874775588984319531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A000217 (n + 5) + 6).toNat

end

end A259721.P11874775588984319531

/-!
# A259722: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 or 00000011.

The programs for A259722, there is no canonical definition to state claims against.
-/

/-! ## A259722.P16423165905630093145

`A259723(A374008(n+1))`
-/

namespace A259722.P16423165905630093145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A374008 (n + 1)).toNat

end

end A259722.P16423165905630093145

/-! ## A259722.P17558968599248371661

`A259723(A056119(n)+28)`
-/

namespace A259722.P17558968599248371661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A056119 n + 28).toNat

end

end A259722.P17558968599248371661

/-! ## A259722.P14712967331296667842

`A259723(A166136(n+5)+1)`
-/

namespace A259722.P14712967331296667842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A166136 (n + 5) + 1).toNat

end

end A259722.P14712967331296667842

/-! ## A259722.P17196567420764385884

`A259723(A167499(n+5)+2)`
-/

namespace A259722.P17196567420764385884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A167499 (n + 5) + 2).toNat

end

end A259722.P17196567420764385884

/-! ## A259722.P10043823033928777068

`A259723(A000124(n+6)+6)`
-/

namespace A259722.P10043823033928777068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259723 (A000124 (n + 6) + 6).toNat

end

end A259722.P10043823033928777068

/-!
# A259724: Numbers k such that [r[s*k]] < [s[r*k]], where r = sqrt(2), s=sqrt(3), and [ ] = floor.

The programs for A259724, there is no canonical definition to state claims against.
-/

/-! ## A259724.P8509310068228826655

`∪[A259584(n+1), A259585(n+1)]`
-/

namespace A259724.P8509310068228826655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259724.P8509310068228826655

/-! ## A259724.P10984500622497526914

`A259585(n+1)%A255401(2*n+5)`
-/

namespace A259724.P10984500622497526914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259585 (n + 1)) (A255401 (2 * n + 5))

end

end A259724.P10984500622497526914

/-! ## A259724.P4714063778686360054

`A259585(n+1)+A000007(A111123(n))`
-/

namespace A259724.P4714063778686360054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259585 (n + 1) + A000007 (A111123 n).toNat

end

end A259724.P4714063778686360054

/-! ## A259724.P11591654002664207800

`A259585(n+1)+A185237(A127301(n))`
-/

namespace A259724.P11591654002664207800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259585 (n + 1) + A185237 (A127301 n).toNat

end

end A259724.P11591654002664207800

/-! ## A259724.P6705493238832425573

`A259585(n+1)+A010051(A334110(n))`
-/

namespace A259724.P6705493238832425573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259585 (n + 1) + A010051 (A334110 n).toNat

end

end A259724.P6705493238832425573

/-!
# A259726: Numbers k such that [r[s*k]] > [s[r*k]], where r = sqrt(2), s=sqrt(3), and [ ] = floor.

The programs for A259726, there is no canonical definition to state claims against.
-/

/-! ## A259726.P4032793331555398546

`∪[A259586(n+1), A259587(n+1)]`
-/

namespace A259726.P4032793331555398546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259726.P4032793331555398546

/-!
# A259727: Sum of digits of a(n) equals the sum of digits of 3*a(n).

The programs for A259727, there is no canonical definition to state claims against.
-/

/-! ## A259727.P13797842125376939556

`eq[A007953(3*n), A007953(n)]`
-/

namespace A259727.P13797842125376939556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259727.P13797842125376939556

/-! ## A259727.P8527399684145247514

`eq[A118880(3*n), A118880(n)]`
-/

namespace A259727.P8527399684145247514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259727.P8527399684145247514

/-! ## A259727.P2216353482133449324

`eq[A118881(3*n), A118881(n)]`
-/

namespace A259727.P2216353482133449324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259727.P2216353482133449324

/-! ## A259727.P13406204419434392337

`eq[A136614(3*n), A136614(n)]`
-/

namespace A259727.P13406204419434392337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259727.P13406204419434392337

/-! ## A259727.P5222669187541300800

`eq[A169805(3*n), A169805(n)]`
-/

namespace A259727.P5222669187541300800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259727.P5222669187541300800

/-! ## A259727.P15399975698414129900

`eq[A180019(3*n), A180019(n)]`
-/

namespace A259727.P15399975698414129900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180019 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259727.P15399975698414129900

/-! ## A259727.P11528365711260827684

`eq[A329562(3*n), A329562(n)]`
-/

namespace A259727.P11528365711260827684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259727.P11528365711260827684

/-!
# A259728: Sum of digits of a(n) equals the sum of digits of 4*a(n).

The programs for A259728, the canonical program `A259728.P15786736245011630451` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259728 has offset 1).

The definition of A259728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 899 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259728.P15786736245011630451

`eq[∑{digits}[n, #], A004092(2*n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A259728

/-- `eq[∑{digits}[n, #], A004092(2*n)]` -/
def P15786736245011630451.Spec : Prop :=
  ∀ n, (P15786736245011630451.a n : ℤ) = A259728 (n + 1)

theorem P15786736245011630451.correct : P15786736245011630451.Spec := by
  intro n
  simp only [A259728, Nat.add_sub_cancel]

end A259728

/-! ## A259728.P300792307334498783

`eq[A004092(2*n), A007953(n)]`
-/

namespace A259728.P300792307334498783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259728.P300792307334498783

namespace A259728

/-- `eq[A004092(2*n), A007953(n)]` -/
def P300792307334498783.Spec : Prop :=
  ∀ n, (P300792307334498783.a n : ℤ) = A259728 (n + 1)

end A259728

/-! ## A259728.P603632106731231101

`eq[A007953(n), A326746(A008586(n))]`
-/

namespace A259728.P603632106731231101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A008586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259728.P603632106731231101

namespace A259728

/-- `eq[A007953(n), A326746(A008586(n))]` -/
def P603632106731231101.Spec : Prop :=
  ∀ n, (P603632106731231101.a n : ℤ) = A259728 (n + 1)

end A259728

/-! ## A259728.P14117726336285015779

`eq[A007953(4*n), A007953(n)]`
-/

namespace A259728.P14117726336285015779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259728.P14117726336285015779

namespace A259728

/-- `eq[A007953(4*n), A007953(n)]` -/
def P14117726336285015779.Spec : Prop :=
  ∀ n, (P14117726336285015779.a n : ℤ) = A259728 (n + 1)

end A259728

/-! ## A259728.P903171883099072109

`eq[A118881(4*n), A118881(n)]`
-/

namespace A259728.P903171883099072109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259728.P903171883099072109

namespace A259728

/-- `eq[A118881(4*n), A118881(n)]` -/
def P903171883099072109.Spec : Prop :=
  ∀ n, (P903171883099072109.a n : ℤ) = A259728 (n + 1)

end A259728

/-! ## A259728.P7224733459663205420

`eq[A136614(4*n), A136614(n)]`
-/

namespace A259728.P7224733459663205420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259728.P7224733459663205420

namespace A259728

/-- `eq[A136614(4*n), A136614(n)]` -/
def P7224733459663205420.Spec : Prop :=
  ∀ n, (P7224733459663205420.a n : ℤ) = A259728 (n + 1)

end A259728

/-! ## A259728.P2838894130959372286

`eq[A169805(4*n), A169805(n)]`
-/

namespace A259728.P2838894130959372286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259728.P2838894130959372286

namespace A259728

/-- `eq[A169805(4*n), A169805(n)]` -/
def P2838894130959372286.Spec : Prop :=
  ∀ n, (P2838894130959372286.a n : ℤ) = A259728 (n + 1)

end A259728

/-! ## A259728.P6307693474224522265

`eq[A329562(4*n), A329562(n)]`
-/

namespace A259728.P6307693474224522265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259728.P6307693474224522265

namespace A259728

/-- `eq[A329562(4*n), A329562(n)]` -/
def P6307693474224522265.Spec : Prop :=
  ∀ n, (P6307693474224522265.a n : ℤ) = A259728 (n + 1)

end A259728

/-! ## A259728.P10765436146103216227

`eq[A180018(A008574(n)), A180018(n)]`
-/

namespace A259728.P10765436146103216227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259728.P10765436146103216227

namespace A259728

/-- `eq[A180018(A008574(n)), A180018(n)]` -/
def P10765436146103216227.Spec : Prop :=
  ∀ n, (P10765436146103216227.a n : ℤ) = A259728 (n + 1)

end A259728

/-! ## A259728.P1424752017416451275

`eq[A007953(n)+1, A007953(A016813(n))]`
-/

namespace A259728.P1424752017416451275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A016813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259728.P1424752017416451275

namespace A259728

/-- `eq[A007953(n)+1, A007953(A016813(n))]` -/
def P1424752017416451275.Spec : Prop :=
  ∀ n, (P1424752017416451275.a n : ℤ) = A259728 (n + 1)

end A259728

/-!
# A259729: Sum of digits of a(n) equals the sum of digits of 5*a(n).

The programs for A259729, there is no canonical definition to state claims against.
-/

/-! ## A259729.P2136886126364987753

`eq[1, A059717(A059717(n)+1)]`
-/

namespace A259729.P2136886126364987753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 (A059717 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259729.P2136886126364987753

/-! ## A259729.P6187325351958168768

`eq[A007953(5*n), A007953(n)]`
-/

namespace A259729.P6187325351958168768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (5 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259729.P6187325351958168768

/-! ## A259729.P17311589393314287575

`eq[A118881(5*n), A118881(n)]`
-/

namespace A259729.P17311589393314287575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (5 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259729.P17311589393314287575

/-! ## A259729.P2176421386487624520

`eq[A169805(5*n), A169805(n)]`
-/

namespace A259729.P2176421386487624520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (5 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259729.P2176421386487624520

/-! ## A259729.P1913823442983991646

`eq[A136614(A008587(n)), A136614(n)]`
-/

namespace A259729.P1913823442983991646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 (A008587 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259729.P1913823442983991646

/-! ## A259729.P12121730711309534886

`eq[A007953(n), A326746(A008587(n))]`
-/

namespace A259729.P12121730711309534886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A008587 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259729.P12121730711309534886

/-! ## A259729.P10269598810651020178

`eq[A329562(A008587(n)), A329562(n)]`
-/

namespace A259729.P10269598810651020178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 (A008587 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259729.P10269598810651020178

/-!
# A259730: Primes p such that both 2*p - 3 and 3*p - 2 are prime.

The programs for A259730, there is no canonical definition to state claims against.
-/

/-! ## A259730.P2952558355225891883

`∩[A063908(n+1), A088878(n+1)]`
-/

namespace A259730.P2952558355225891883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259730.P2952558355225891883

/-! ## A259730.P4738779326986914528

`∩[A088878(n+1), A090670(n+1)]`
-/

namespace A259730.P4738779326986914528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259730.P4738779326986914528

/-! ## A259730.P16145001492215878870

`∩[A063908(n+1), A153183(n+1)]`
-/

namespace A259730.P16145001492215878870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259730.P16145001492215878870

/-! ## A259730.P246487841267568238

`∩[A088878(n+1), A098090(n+1)]`
-/

namespace A259730.P246487841267568238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259730.P246487841267568238

/-! ## A259730.P6369652069785521646

`∩[A006254(n+1)+1, A088878(n+1)]`
-/

namespace A259730.P6369652069785521646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259730.P6369652069785521646

/-! ## A259730.P11561222396858662786

`∩[A088878(n+1), A111333(n+1)+1]`
-/

namespace A259730.P11561222396858662786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259730.P11561222396858662786

/-! ## A259730.P12169463922486648657

`p?[A101264(A034936(n+1))+A024892(n+1)]`
-/

namespace A259730.P12169463922486648657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A034936 (n + 1)).toNat + A024892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259730.P12169463922486648657

/-! ## A259730.P15498779703081476603

`p?[A107303(n+1)-A101264(A034936(n+1))]`
-/

namespace A259730.P15498779703081476603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107303 (n + 1) - A101264 (A034936 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259730.P15498779703081476603

/-! ## A259730.P7711627186827924611

`∩[A063908(n+1), A181709(n+1)]`
-/

namespace A259730.P7711627186827924611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259730.P7711627186827924611

/-! ## A259730.P169019571076445269

`p?[A051552(A008864(n+1))-A008864(n+1)]`
-/

namespace A259730.P169019571076445269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051552 (A008864 (n + 1)).toNat - A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259730.P169019571076445269

/-!
# A259734: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010101 or 01010101.

The programs for A259734, there is no canonical definition to state claims against.
-/

/-! ## A259734.P3090558874432336824

`A259742((n+1)²+n²)`
-/

namespace A259734.P3090558874432336824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 ((n + 1) ^ 2 + n ^ 2)

end

end A259734.P3090558874432336824

/-! ## A259734.P14473157228571602803

`lcm(A033999(n), A259742(A001844(n)))`
-/

namespace A259734.P14473157228571602803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A259742 (A001844 n).toNat)

end

end A259734.P14473157228571602803

/-! ## A259734.P17109976464671796220

`A007318(∑[n])*A259742(A001844(n))`
-/

namespace A259734.P17109976464671796220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A259742 (A001844 n).toNat

end

end A259734.P17109976464671796220

/-! ## A259734.P10223977669003883964

`A014963(A141759(n))*A259742(A001844(n))`
-/

namespace A259734.P10223977669003883964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A141759 n).toNat * A259742 (A001844 n).toNat

end

end A259734.P10223977669003883964

/-! ## A259734.P11643612298762048041

`A014963(A142241(n))*A259742(A001844(n))`
-/

namespace A259734.P11643612298762048041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A142241 n).toNat * A259742 (A001844 n).toNat

end

end A259734.P11643612298762048041

/-!
# A259735: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00010101 or 01010101.

The programs for A259735, the canonical program `A259735.P5524759696150440284` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259735 has offset 1).

The definition of A259735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 494 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259735.P5524759696150440284

`a(n-2)+3*a(n-4)+2*a(n-6)` with `a(0)=20, a(1)=22, a(2)=42, a(3)=62, a(4)=101, a(5)=152, a(6)=265`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259735

/-- `a(n-2)+3*a(n-4)+2*a(n-6)` -/
def P5524759696150440284.Spec : Prop :=
  ∀ n, (P5524759696150440284.a n : ℤ) = A259735 (n + 1)

theorem P5524759696150440284.correct : P5524759696150440284.Spec := by
  intro n
  simp only [A259735, Nat.add_sub_cancel]

end A259735

/-! ## A259735.P14160429533616033652

`A259742(∑[n]+1)`
-/

namespace A259735.P14160429533616033652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259735.P14160429533616033652

namespace A259735

/-- `A259742(∑[n]+1)` -/
def P14160429533616033652.Spec : Prop :=
  ∀ n, P14160429533616033652.a n = A259735 (n + 1)

end A259735

/-! ## A259735.P2365161604899832915

`record[A010054(n)*A259742(n+1)]`
-/

namespace A259735.P2365161604899832915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A259742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259735.P2365161604899832915

namespace A259735

/-- `record[A010054(n)*A259742(n+1)]` -/
def P2365161604899832915.Spec : Prop :=
  ∀ n, P2365161604899832915.a n = A259735 (n + 1)

end A259735

/-! ## A259735.P4494787073015151646

`record[A259742(n+1)/A259697(n)]`
-/

namespace A259735.P4494787073015151646
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259742 (n + 1) : ℚ) / (A259697 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259735.P4494787073015151646

namespace A259735

/-- `record[A259742(n+1)/A259697(n)]` -/
def P4494787073015151646.Spec : Prop :=
  ∀ n, P4494787073015151646.a n = (A259735 (n + 1) : ℚ)

end A259735

/-! ## A259735.P14145019055659644003

`record[gcd(A002262(n), A259742(n+1))]`
-/

namespace A259735.P14145019055659644003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A259742 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259735.P14145019055659644003

namespace A259735

/-- `record[gcd(A002262(n), A259742(n+1))]` -/
def P14145019055659644003.Spec : Prop :=
  ∀ n, (P14145019055659644003.a n : ℤ) = A259735 (n + 1)

end A259735

/-!
# A259736: Number of (n+2) X (2+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00010101 or 01010101.

The programs for A259736, the canonical program `A259736.P14068772076501426062` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259736 has offset 1).

The definition of A259736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 389 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259736.P14068772076501426062

`a(n-1)+2*a(n-3)+a(n-4)` with `a(0)=22, a(1)=36, a(2)=74, a(3)=136`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259736

/-- `a(n-1)+2*a(n-3)+a(n-4)` -/
def P14068772076501426062.Spec : Prop :=
  ∀ n, (P14068772076501426062.a n : ℤ) = A259736 (n + 1)

theorem P14068772076501426062.correct : P14068772076501426062.Spec := by
  intro n
  simp only [A259736, Nat.add_sub_cancel]

end A259736

/-! ## A259736.P5579614800211072571

`A259742(∑[n+1]+2)`
-/

namespace A259736.P5579614800211072571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A259736.P5579614800211072571

namespace A259736

/-- `A259742(∑[n+1]+2)` -/
def P5579614800211072571.Spec : Prop :=
  ∀ n, P5579614800211072571.a n = A259736 (n + 1)

end A259736

/-! ## A259736.P17678745676023262616

`record[A010054(n)*A259742(n+2)]`
-/

namespace A259736.P17678745676023262616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A259742 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259736.P17678745676023262616

namespace A259736

/-- `record[A010054(n)*A259742(n+2)]` -/
def P17678745676023262616.Spec : Prop :=
  ∀ n, P17678745676023262616.a n = A259736 (n + 1)

end A259736

/-! ## A259736.P11356304381952711159

`record[gcd(A002262(n), A259742(n+2))]`
-/

namespace A259736.P11356304381952711159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A259742 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259736.P11356304381952711159

namespace A259736

/-- `record[gcd(A002262(n), A259742(n+2))]` -/
def P11356304381952711159.Spec : Prop :=
  ∀ n, (P11356304381952711159.a n : ℤ) = A259736 (n + 1)

end A259736

/-! ## A259736.P18331686757431021964

`lcm(2, A259742(A000096(n+1)))`
-/

namespace A259736.P18331686757431021964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A259742 (A000096 (n + 1)).toNat)

end

end A259736.P18331686757431021964

namespace A259736

/-- `lcm(2, A259742(A000096(n+1)))` -/
def P18331686757431021964.Spec : Prop :=
  ∀ n, (P18331686757431021964.a n : ℤ) = A259736 (n + 1)

end A259736

/-!
# A259737: Number of (n+2) X (3+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00010101 or 01010101.

The programs for A259737, there is no canonical definition to state claims against.
-/

/-! ## A259737.P4037521613635676356

`A259742(∑[n+2]+4)`
-/

namespace A259737.P4037521613635676356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A259737.P4037521613635676356

/-! ## A259737.P15620073617299549919

`lcm(2, A259742(A167614(n+1)))`
-/

namespace A259737.P15620073617299549919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A259742 (A167614 (n + 1)).toNat)

end

end A259737.P15620073617299549919

/-! ## A259737.P7017925378080982326

`or(A000038(n), A259742(A167614(n+1)))`
-/

namespace A259737.P7017925378080982326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A259742 (A167614 (n + 1)).toNat)

end

end A259737.P7017925378080982326

/-! ## A259737.P4851795027066585769

`A057427(n+1)*A259742(A167614(n+1))`
-/

namespace A259737.P4851795027066585769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A259742 (A167614 (n + 1)).toNat

end

end A259737.P4851795027066585769

/-! ## A259737.P17006069315427160591

`A259742(A167614(n+1))%A080125(n+1)`
-/

namespace A259737.P17006069315427160591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259742 (A167614 (n + 1)).toNat) (A080125 (n + 1))

end

end A259737.P17006069315427160591

/-!
# A259738: Number of (n+2) X (4+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00010101 or 01010101.

The programs for A259738, there is no canonical definition to state claims against.
-/

/-! ## A259738.P6543013606235409157

`A259742(∑[n+3]+7)`
-/

namespace A259738.P6543013606235409157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A259738.P6543013606235409157

/-! ## A259738.P3788885471420922474

`A004216(n+1)!*A259742(A167614(n+2)+1)`
-/

namespace A259738.P3788885471420922474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004216 (n + 1)).toNat : ℤ) * A259742 (A167614 (n + 2) + 1).toNat

end

end A259738.P3788885471420922474

/-! ## A259738.P4572484377855512496

`A259742(A167614(n+2)+1)+A010054(90*(n+1)-7)`
-/

namespace A259738.P4572484377855512496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (A167614 (n + 2) + 1).toNat + A010054 (90 * (n + 1) - 7)

end

end A259738.P4572484377855512496

/-! ## A259738.P4189225500754285075

`A259742(A167614(n+2)+1)+A057764(90*(n+1)-7)`
-/

namespace A259738.P4189225500754285075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (A167614 (n + 2) + 1).toNat + A057764 (90 * (n + 1) - 7)

end

end A259738.P4189225500754285075

/-! ## A259738.P7154373731350573960

`A007318(A000217(n))*A259742(A167614(n+2)+1)`
-/

namespace A259738.P7154373731350573960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A259742 (A167614 (n + 2) + 1).toNat

end

end A259738.P7154373731350573960

/-!
# A259739: Number of (n+2) X (5+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00010101 or 01010101.

The programs for A259739, there is no canonical definition to state claims against.
-/

/-! ## A259739.P7838157775197806545

`A259742(A167499(n+3))`
-/

namespace A259739.P7838157775197806545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (A167499 (n + 3)).toNat

end

end A259739.P7838157775197806545

/-! ## A259739.P6874954167759505759

`A259742(A167614(n+3)+2)`
-/

namespace A259739.P6874954167759505759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (A167614 (n + 3) + 2).toNat

end

end A259739.P6874954167759505759

/-! ## A259739.P12398613798976938923

`A259742(A000124(n+4)+4)`
-/

namespace A259739.P12398613798976938923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (A000124 (n + 4) + 4).toNat

end

end A259739.P12398613798976938923

/-! ## A259739.P12024938046797968620

`A259742(Δ[A264443(n)])`
-/

namespace A259739.P12024938046797968620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (f1 (n + 1) - f1 n).toNat

end

end A259739.P12024938046797968620

/-! ## A259739.P4966052691615512921

`A259742(A374005(n+1))`
-/

namespace A259739.P4966052691615512921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (A374005 (n + 1)).toNat

end

end A259739.P4966052691615512921

/-!
# A259740: Number of (n+2) X (6+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00010101 or 01010101.

The programs for A259740, there is no canonical definition to state claims against.
-/

/-! ## A259740.P1052650375195015757

`A259742(A167614(n+4)+3)`
-/

namespace A259740.P1052650375195015757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (A167614 (n + 4) + 3).toNat

end

end A259740.P1052650375195015757

/-! ## A259740.P1629471519396264039

`A259742(A000124(n+5)+5)`
-/

namespace A259740.P1629471519396264039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (A000124 (n + 5) + 5).toNat

end

end A259740.P1629471519396264039

/-! ## A259740.P3839686624999041198

`A259742(A000217(n+5)+6)`
-/

namespace A259740.P3839686624999041198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (A000217 (n + 5) + 6).toNat

end

end A259740.P3839686624999041198

/-! ## A259740.P2072878912644739951

`A259742(A374007(n+1))`
-/

namespace A259740.P2072878912644739951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (A374007 (n + 1)).toNat

end

end A259740.P2072878912644739951

/-! ## A259740.P14693739405629711789

`A259742(A052905(n+3))`
-/

namespace A259740.P14693739405629711789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (A052905 (n + 3)).toNat

end

end A259740.P14693739405629711789

/-!
# A259741: Number of (n+2) X (7+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00010101 or 01010101.

The programs for A259741, there is no canonical definition to state claims against.
-/

/-! ## A259741.P6045772652930122991

`A259742(A167614(n+5)+4)`
-/

namespace A259741.P6045772652930122991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (A167614 (n + 5) + 4).toNat

end

end A259741.P6045772652930122991

/-! ## A259741.P14626029635575128967

`A259742(A000217(n+6)+7)`
-/

namespace A259741.P14626029635575128967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (A000217 (n + 6) + 7).toNat

end

end A259741.P14626029635575128967

/-! ## A259741.P6913236837177960375

`A259742(A374008(n+1))`
-/

namespace A259741.P6913236837177960375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (A374008 (n + 1)).toNat

end

end A259741.P6913236837177960375

/-! ## A259741.P13066644651396645449

`A259742(A055999(n+4))`
-/

namespace A259741.P13066644651396645449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (A055999 (n + 4)).toNat

end

end A259741.P13066644651396645449

/-! ## A259741.P1203523423432672995

`A259742(Δ[A023551(n+2)])`
-/

namespace A259741.P1203523423432672995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259742 (f1 (n + 1) - f1 n).toNat

end

end A259741.P1203523423432672995

/-!
# A259743: Expansion of f(-x)^3 * psi(x^4) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A259743, there is no canonical definition to state claims against.
-/

/-! ## A259743.P2126245160431808661

`A138515(Δ[n²])/2`
-/

namespace A259743.P2126245160431808661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138515 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A259743.P2126245160431808661

/-! ## A259743.P3174316229173332610

`A002171(2*n+1)/(1-6/2)`
-/

namespace A259743.P3174316229173332610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002171 (2 * n + 1) : ℚ) / (1 - (6 : ℚ) / 2)

end

end A259743.P3174316229173332610

/-! ## A259743.P7211102802626188786

`floor(A138515(A005408(n))/2)`
-/

namespace A259743.P7211102802626188786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138515 (A005408 n).toNat : ℚ) / 2⌋

end

end A259743.P7211102802626188786

/-! ## A259743.P15230267696752848913

`A138515(A005408(n))/2*A056594(2*n)²`
-/

namespace A259743.P15230267696752848913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138515 (A005408 n).toNat : ℚ) / 2 * (A056594 (2 * n) ^ 2 : ℚ)

end

end A259743.P15230267696752848913

/-! ## A259743.P13125815688984426108

`(A138515(A005408(n))/2)^(A038509(n+1)%2)`
-/

namespace A259743.P13125815688984426108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A138515 (A005408 n).toNat : ℚ) / 2) ^ (Int.tmod (A038509 (n + 1)) 2 : ℤ)

end

end A259743.P13125815688984426108

/-! ## A259743.P17698409904302082348

`A138515(A005408(n))/2*A007318(∑[n])`
-/

namespace A259743.P17698409904302082348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138515 (A005408 n).toNat : ℚ) / 2 * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A259743.P17698409904302082348

/-!
# A259745: Triangular numbers representable as x*y+x+y such that x and y are triangular numbers, x>=y>0.

The programs for A259745, there is no canonical definition to state claims against.
-/

/-! ## A259745.P10141352758497292908

`A147849(∑[A194008(n)])`
-/

namespace A259745.P10141352758497292908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147849 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A259745.P10141352758497292908

/-! ## A259745.P6320842266233226712

`eq[A091991(n+1), A226422(n+1)]`
-/

namespace A259745.P6320842266233226712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259745.P6320842266233226712

/-!
# A259747: 

The programs for A259747, there is no canonical definition to state claims against.
-/

/-! ## A259747.P8843886010913954745

`a(n-1)*10^2^n+n*10^(2^n-1)+a(n-1)` with `a(0)=1`
-/

namespace A259747.P8843886010913954745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (10 ^ 2 ^ n : ℚ) + (n : ℚ) * (10 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ) + a (n - 1)

end

end A259747.P8843886010913954745

/-!
# A259748: a(n) = (Sum_{0

The programs for A259748, the canonical program `A259748.P8030133310890595506` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259748 has offset 1).

The definition of A259748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259748.P8030133310890595506

`(n*(n+1)*(n+2)*(3*(n+1)+2)/24)%(n+1)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259748

/-- `(n*(n+1)*(n+2)*(3*(n+1)+2)/24)%(n+1)` -/
def P8030133310890595506.Spec : Prop :=
  ∀ n, P8030133310890595506.a n = A259748 (n + 1)

theorem P8030133310890595506.correct : P8030133310890595506.Spec := by
  intro n
  simp only [A259748, Nat.add_sub_cancel]

end A259748

/-! ## A259748.P1803407671034161943

`abs(A290312(n)%A001478(n+1))`
-/

namespace A259748.P1803407671034161943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A290312 n) (A001478 (n + 1))|

end

end A259748.P1803407671034161943

namespace A259748

/-- `abs(A290312(n)%A001478(n+1))` -/
def P1803407671034161943.Spec : Prop :=
  ∀ n, P1803407671034161943.a n = A259748 (n + 1)

end A259748

/-! ## A259748.P10669522219668022344

`abs(A000914(n)%xor(n, -1))`
-/

namespace A259748.P10669522219668022344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000914 n) (Int.xor (n : ℤ) (-1))|

end

end A259748.P10669522219668022344

namespace A259748

/-- `abs(A000914(n)%xor(n, -1))` -/
def P10669522219668022344.Spec : Prop :=
  ∀ n, P10669522219668022344.a n = A259748 (n + 1)

end A259748

/-!
# A259749: Numbers that are congruent to {1,2,5,7,10,11,13,17,19,23} mod 24.

The programs for A259749, the canonical program `A259749.P10572001326868023231` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259749 has offset 1).

The definition of A259749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259749.P10572001326868023231

`record[gcd(1-n, C(n, 4))]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259749

/-- `record[gcd(1-n, C(n, 4))]` -/
def P10572001326868023231.Spec : Prop :=
  ∀ n, (P10572001326868023231.a n : ℤ) = A259749 (n + 1)

theorem P10572001326868023231.correct : P10572001326868023231.Spec := by
  intro n
  simp only [A259749, Nat.add_sub_cancel]

end A259749

/-! ## A259749.P20321526864383961

`lt[A259748(n+1), 1]+1`
-/

namespace A259749.P20321526864383961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259748 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A259749.P20321526864383961

namespace A259749

/-- `lt[A259748(n+1), 1]+1` -/
def P20321526864383961.Spec : Prop :=
  ∀ n, (P20321526864383961.a n : ℤ) = A259749 (n + 1)

end A259749

/-! ## A259749.P823102031593244641

`∪[A007310(n+1), A103215(n+1)]`
-/

namespace A259749.P823102031593244641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259749.P823102031593244641

namespace A259749

/-- `∪[A007310(n+1), A103215(n+1)]` -/
def P823102031593244641.Spec : Prop :=
  ∀ n, (P823102031593244641.a n : ℤ) = A259749 (n + 1)

end A259749

/-! ## A259749.P16409041021037040066

`∪[A103215(n+1), A168489(n+1)]`
-/

namespace A259749.P16409041021037040066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259749.P16409041021037040066

namespace A259749

/-- `∪[A103215(n+1), A168489(n+1)]` -/
def P16409041021037040066.Spec : Prop :=
  ∀ n, (P16409041021037040066.a n : ℤ) = A259749 (n + 1)

end A259749

/-! ## A259749.P11785827772011209782

`∩[A047489(n+1), A108118(n+1)]`
-/

namespace A259749.P11785827772011209782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259749.P11785827772011209782

namespace A259749

/-- `∩[A047489(n+1), A108118(n+1)]` -/
def P11785827772011209782.Spec : Prop :=
  ∀ n, (P11785827772011209782.a n : ℤ) = A259749 (n + 1)

end A259749

/-! ## A259749.P7455622379372133240

`∩[A001651(n+1), A047489(n+1)]`
-/

namespace A259749.P7455622379372133240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259749.P7455622379372133240

namespace A259749

/-- `∩[A001651(n+1), A047489(n+1)]` -/
def P7455622379372133240.Spec : Prop :=
  ∀ n, (P7455622379372133240.a n : ℤ) = A259749 (n + 1)

end A259749

/-! ## A259749.P5312430336372267933

`∩[A047490(n+1), A108118(n+1)]`
-/

namespace A259749.P5312430336372267933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259749.P5312430336372267933

namespace A259749

/-- `∩[A047490(n+1), A108118(n+1)]` -/
def P5312430336372267933.Spec : Prop :=
  ∀ n, (P5312430336372267933.a n : ℤ) = A259749 (n + 1)

end A259749

/-! ## A259749.P1700259232519998995

`∩[A047504(n+1), A108118(n+1)]`
-/

namespace A259749.P1700259232519998995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259749.P1700259232519998995

namespace A259749

/-- `∩[A047504(n+1), A108118(n+1)]` -/
def P1700259232519998995.Spec : Prop :=
  ∀ n, (P1700259232519998995.a n : ℤ) = A259749 (n + 1)

end A259749

/-! ## A259749.P10334395637359660942

`∩[A047595(n+1), A108118(n+1)]`
-/

namespace A259749.P10334395637359660942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259749.P10334395637359660942

namespace A259749

/-- `∩[A047595(n+1), A108118(n+1)]` -/
def P10334395637359660942.Spec : Prop :=
  ∀ n, (P10334395637359660942.a n : ℤ) = A259749 (n + 1)

end A259749

/-! ## A259749.P6474907618338586939

`eq[1, A007310(A259748(n+1)+1)]+1`
-/

namespace A259749.P6474907618338586939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A259748 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A259749.P6474907618338586939

namespace A259749

/-- `eq[1, A007310(A259748(n+1)+1)]+1` -/
def P6474907618338586939.Spec : Prop :=
  ∀ n, (P6474907618338586939.a n : ℤ) = A259749 (n + 1)

end A259749

/-! ## A259749.P5497095856284043089

`record[gcd(n+1, ∑[(n+1)*∑[n]])]`
-/

namespace A259749.P5497095856284043089
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259749.P5497095856284043089

namespace A259749

/-- `record[gcd(n+1, ∑[(n+1)*∑[n]])]` -/
def P5497095856284043089.Spec : Prop :=
  ∀ n, (P5497095856284043089.a n : ℤ) = A259749 (n + 1)

end A259749

/-! ## A259749.P6641697030405802848

`eq[gcd(6, n)², A003484(n+2)]`
-/

namespace A259749.P6641697030405802848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259749.P6641697030405802848

namespace A259749

/-- `eq[gcd(6, n)², A003484(n+2)]` -/
def P6641697030405802848.Spec : Prop :=
  ∀ n, (P6641697030405802848.a n : ℤ) = A259749 (n + 1)

end A259749

/-! ## A259749.P16021805218165608747

`filter[A047489(n+1), A011655(#)]`
-/

namespace A259749.P16021805218165608747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A259749.P16021805218165608747

namespace A259749

/-- `filter[A047489(n+1), A011655(#)]` -/
def P16021805218165608747.Spec : Prop :=
  ∀ n, P16021805218165608747.a n = A259749 (n + 1)

end A259749

/-! ## A259749.P7803901703215800244

`filter[A047489(n+1), A267208(#)]`
-/

namespace A259749.P7803901703215800244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A259749.P7803901703215800244

namespace A259749

/-- `filter[A047489(n+1), A267208(#)]` -/
def P7803901703215800244.Spec : Prop :=
  ∀ n, P7803901703215800244.a n = A259749 (n + 1)

end A259749

/-! ## A259749.P2194042478508103347

`lt[(A050534(n)+A050533(n)+1)%(n+1), 1]+1`
-/

namespace A259749.P2194042478508103347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050534 n + A050533 n + 1) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A259749.P2194042478508103347

namespace A259749

/-- `lt[(A050534(n)+A050533(n)+1)%(n+1), 1]+1` -/
def P2194042478508103347.Spec : Prop :=
  ∀ n, (P2194042478508103347.a n : ℤ) = A259749 (n + 1)

end A259749

/-! ## A259749.P11378581260319195215

`eq[A171942(n+1), A171942(A010144(n)+n)]`
-/

namespace A259749.P11378581260319195215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171942 (A010144 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259749.P11378581260319195215

namespace A259749

/-- `eq[A171942(n+1), A171942(A010144(n)+n)]` -/
def P11378581260319195215.Spec : Prop :=
  ∀ n, (P11378581260319195215.a n : ℤ) = A259749 (n + 1)

end A259749

/-! ## A259749.P13275391064236858155

`∪[A067934(n+1), A133634(n+1)]`
-/

namespace A259749.P13275391064236858155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259749.P13275391064236858155

namespace A259749

/-- `∪[A067934(n+1), A133634(n+1)]` -/
def P13275391064236858155.Spec : Prop :=
  ∀ n, (P13275391064236858155.a n : ℤ) = A259749 (n + 1)

end A259749

/-! ## A259749.P6911523690781683101

`record[(n+1)/A001752(A000914(n)%(n+1))]`
-/

namespace A259749.P6911523690781683101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001752 (Int.tmod (A000914 n) (n + 1 : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259749.P6911523690781683101

namespace A259749

/-- `record[(n+1)/A001752(A000914(n)%(n+1))]` -/
def P6911523690781683101.Spec : Prop :=
  ∀ n, P6911523690781683101.a n = (A259749 (n + 1) : ℚ)

end A259749

/-!
# A259750: Numbers that are congruent to {14, 22} mod 24.

The programs for A259750, the canonical program `A259750.P1421847281924663937` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259750 has offset 1).

The definition of A259750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259750.P14697613207899086896

`2*(6*(n+1)-(-1)^(n+1))`
-/

namespace A259750.P14697613207899086896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((6 * (n + 1) : ℤ) - (-1) ^ (n + 1))

end

end A259750.P14697613207899086896

namespace A259750

/-- `2*(6*(n+1)-(-1)^(n+1))` -/
def P14697613207899086896.Spec : Prop :=
  ∀ n, P14697613207899086896.a n = A259750 (n + 1)

theorem P14697613207899086896.correct : P14697613207899086896.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A259750, Nat.add_sub_cancel, A259750.P14697613207899086896.a, A259750.P1421847281924663937.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A259750, Nat.add_sub_cancel, A259750.P14697613207899086896.a, A259750.P1421847281924663937.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A259750

/-! ## A259750.P1421847281924663937

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=14, a(1)=22, a(2)=38`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259750

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P1421847281924663937.Spec : Prop :=
  ∀ n, P1421847281924663937.a n = A259750 (n + 1)

theorem P1421847281924663937.correct : P1421847281924663937.Spec := by
  intro n
  simp only [A259750, Nat.add_sub_cancel]

end A259750

/-! ## A259750.P17141500784685350334

`or(4, 12*n+10)`
-/

namespace A259750.P17141500784685350334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (12 * n + 10)

end

end A259750.P17141500784685350334

namespace A259750

/-- `or(4, 12*n+10)` -/
def P17141500784685350334.Spec : Prop :=
  ∀ n, (P17141500784685350334.a n : ℤ) = A259750 (n + 1)

end A259750

/-! ## A259750.P2948704082806126631

`a(n-2)+24` with `a(0)=14, a(1)=22`
-/

namespace A259750.P2948704082806126631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [14, 22] fun n a =>
  a (n - 2) + 24

end

end A259750.P2948704082806126631

namespace A259750

/-- `a(n-2)+24` -/
def P2948704082806126631.Spec : Prop :=
  ∀ n, (P2948704082806126631.a n : ℤ) = A259750 (n + 1)

end A259750

/-! ## A259750.P50586116850790278

`∑[8*gcd(2, n)]-2`
-/

namespace A259750.P50586116850790278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A259750.P50586116850790278

namespace A259750

/-- `∑[8*gcd(2, n)]-2` -/
def P50586116850790278.Spec : Prop :=
  ∀ n, P50586116850790278.a n = A259750 (n + 1)

end A259750

/-! ## A259750.P11297533037454822140

`xor(6, 8*comp[3*n])`
-/

namespace A259750.P11297533037454822140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (8 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A259750.P11297533037454822140

namespace A259750

/-- `xor(6, 8*comp[3*n])` -/
def P11297533037454822140.Spec : Prop :=
  ∀ n, (P11297533037454822140.a n : ℤ) = A259750 (n + 1)

end A259750

/-! ## A259750.P13747543809296487256

`∑[24-a(n-1)]` with `a(0)=14, a(1)=8`
-/

namespace A259750.P13747543809296487256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [14, 8] fun n f1 =>
  24 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259750.P13747543809296487256

namespace A259750

/-- `∑[24-a(n-1)]` -/
def P13747543809296487256.Spec : Prop :=
  ∀ n, P13747543809296487256.a n = A259750 (n + 1)

end A259750

/-! ## A259750.P16758686348906136224

`record[2*(lcm(3, 2-n)+n+1)]`
-/

namespace A259750.P16758686348906136224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Int.lcm 3 (2 - (n : ℤ)) + (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259750.P16758686348906136224

namespace A259750

/-- `record[2*(lcm(3, 2-n)+n+1)]` -/
def P16758686348906136224.Spec : Prop :=
  ∀ n, (P16758686348906136224.a n : ℤ) = A259750 (n + 1)

end A259750

/-! ## A259750.P5673473267004065281

`A259751(n+1)+6`
-/

namespace A259750.P5673473267004065281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259751 (n + 1) + 6

end

end A259750.P5673473267004065281

namespace A259750

/-- `A259751(n+1)+6` -/
def P5673473267004065281.Spec : Prop :=
  ∀ n, P5673473267004065281.a n = A259750 (n + 1)

theorem P5673473267004065281.correct : P5673473267004065281.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A259750, Nat.add_sub_cancel, A259750.P5673473267004065281.a, A259750.P1421847281924663937.a, A259751, A259751.P14043662995474397611.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A259750, Nat.add_sub_cancel, A259750.P5673473267004065281.a, A259750.P1421847281924663937.a, A259751, A259751.P14043662995474397611.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A259750

/-! ## A259750.P318499145188948624

`4*A047270(n+1)+2`
-/

namespace A259750.P318499145188948624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A047270 (n + 1) + 2

end

end A259750.P318499145188948624

namespace A259750

/-- `4*A047270(n+1)+2` -/
def P318499145188948624.Spec : Prop :=
  ∀ n, P318499145188948624.a n = A259750 (n + 1)

end A259750

/-! ## A259750.P9012382612737613751

`A176260(n)+A017629(n)`
-/

namespace A259750.P9012382612737613751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176260 n + A017629 n

end

end A259750.P9012382612737613751

namespace A259750

/-- `A176260(n)+A017629(n)` -/
def P9012382612737613751.Spec : Prop :=
  ∀ n, P9012382612737613751.a n = A259750 (n + 1)

end A259750

/-! ## A259750.P3810185939088103736

`A067870(n+1)+A020742(n)`
-/

namespace A259750.P3810185939088103736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067870 (n + 1) + A020742 n

end

end A259750.P3810185939088103736

namespace A259750

/-- `A067870(n+1)+A020742(n)` -/
def P3810185939088103736.Spec : Prop :=
  ∀ n, P3810185939088103736.a n = A259750 (n + 1)

end A259750

/-! ## A259750.P15851026790911706942

`A168379(n+1)+A004771(n)`
-/

namespace A259750.P15851026790911706942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168379 (n + 1) + A004771 n

end

end A259750.P15851026790911706942

namespace A259750

/-- `A168379(n+1)+A004771(n)` -/
def P15851026790911706942.Spec : Prop :=
  ∀ n, P15851026790911706942.a n = A259750 (n + 1)

theorem P15851026790911706942.correct : P15851026790911706942.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A259750, Nat.add_sub_cancel, A259750.P15851026790911706942.a, A259750.P1421847281924663937.a, A004771, A004771.P15562682025386998074.a, A168379, A168379.P18212022095183093388.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A259750, Nat.add_sub_cancel, A259750.P15851026790911706942.a, A259750.P1421847281924663937.a, A004771, A004771.P15562682025386998074.a, A168379, A168379.P18212022095183093388.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A259750

/-! ## A259750.P3567315081409500920

`A168392(n+1)+A004768(n)`
-/

namespace A259750.P3567315081409500920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168392 (n + 1) + A004768 n

end

end A259750.P3567315081409500920

namespace A259750

/-- `A168392(n+1)+A004768(n)` -/
def P3567315081409500920.Spec : Prop :=
  ∀ n, P3567315081409500920.a n = A259750 (n + 1)

end A259750

/-! ## A259750.P10095379491753566838

`A214863(n+1)+A004767(n)`
-/

namespace A259750.P10095379491753566838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214863 (n + 1) + A004767 n

end

end A259750.P10095379491753566838

namespace A259750

/-- `A214863(n+1)+A004767(n)` -/
def P10095379491753566838.Spec : Prop :=
  ∀ n, P10095379491753566838.a n = A259750 (n + 1)

theorem P10095379491753566838.correct : P10095379491753566838.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A259750, Nat.add_sub_cancel, A259750.P10095379491753566838.a, A259750.P1421847281924663937.a, A004767, A004767.P13352534504447192883.a, A214863, A214863.P7535900749094371618.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A259750, Nat.add_sub_cancel, A259750.P10095379491753566838.a, A259750.P1421847281924663937.a, A004767, A004767.P13352534504447192883.a, A214863, A214863.P7535900749094371618.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A259750

/-! ## A259750.P580983036641940399

`A125169(n)-A168390(n+1)`
-/

namespace A259750.P580983036641940399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n - A168390 (n + 1)

end

end A259750.P580983036641940399

namespace A259750

/-- `A125169(n)-A168390(n+1)` -/
def P580983036641940399.Spec : Prop :=
  ∀ n, P580983036641940399.a n = A259750 (n + 1)

end A259750

/-! ## A259750.P11126525355742944043

`A267984(n+1)-A136320(n)`
-/

namespace A259750.P11126525355742944043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267984 (n + 1) - A136320 n

end

end A259750.P11126525355742944043

namespace A259750

/-- `A267984(n+1)-A136320(n)` -/
def P11126525355742944043.Spec : Prop :=
  ∀ n, P11126525355742944043.a n = A259750 (n + 1)

end A259750

/-! ## A259750.P5457472155515358209

`A259755(n+2)-6`
-/

namespace A259750.P5457472155515358209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259755 (n + 2) - 6

end

end A259750.P5457472155515358209

namespace A259750

/-- `A259755(n+2)-6` -/
def P5457472155515358209.Spec : Prop :=
  ∀ n, P5457472155515358209.a n = A259750 (n + 1)

theorem P5457472155515358209.correct : P5457472155515358209.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A259750, Nat.add_sub_cancel, A259750.P5457472155515358209.a, A259750.P1421847281924663937.a, A259755, A259755.P4631213340866640928.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A259750, Nat.add_sub_cancel, A259750.P5457472155515358209.a, A259750.P1421847281924663937.a, A259755, A259755.P4631213340866640928.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A259750

/-! ## A259750.P5238837674689924099

`∑[2*Δ[A063221(n+1)]]`
-/

namespace A259750.P5238837674689924099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063221 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259750.P5238837674689924099

namespace A259750

/-- `∑[2*Δ[A063221(n+1)]]` -/
def P5238837674689924099.Spec : Prop :=
  ∀ n, P5238837674689924099.a n = A259750 (n + 1)

end A259750

/-! ## A259750.P3375529793404130160

`A091998(n+2)+A016945(n)`
-/

namespace A259750.P3375529793404130160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 2) + A016945 n

end

end A259750.P3375529793404130160

namespace A259750

/-- `A091998(n+2)+A016945(n)` -/
def P3375529793404130160.Spec : Prop :=
  ∀ n, P3375529793404130160.a n = A259750 (n + 1)

end A259750

/-!
# A259751: Numbers that are congruent to {8, 16} mod 24.

The programs for A259751, the canonical program `A259751.P14043662995474397611` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259751 has offset 1).

The definition of A259751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259751.P14043662995474397611

`12*(n+1)-2*(-1)^(n+1)-6`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259751

/-- `12*(n+1)-2*(-1)^(n+1)-6` -/
def P14043662995474397611.Spec : Prop :=
  ∀ n, P14043662995474397611.a n = A259751 (n + 1)

theorem P14043662995474397611.correct : P14043662995474397611.Spec := by
  intro n
  simp only [A259751, Nat.add_sub_cancel]

end A259751

/-! ## A259751.P13904412123610054687

`∑[8*gcd(2, ∏{p}[n, #])]`
-/

namespace A259751.P13904412123610054687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259751.P13904412123610054687

namespace A259751

/-- `∑[8*gcd(2, ∏{p}[n, #])]` -/
def P13904412123610054687.Spec : Prop :=
  ∀ n, (P13904412123610054687.a n : ℤ) = A259751 (n + 1)

end A259751

/-! ## A259751.P9433449386209208201

`∑[abs(a(n-2))]` with `a(0)=8, a(1)=8, a(2)=16`
-/

namespace A259751.P9433449386209208201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 8, 16] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259751.P9433449386209208201

namespace A259751

/-- `∑[abs(a(n-2))]` -/
def P9433449386209208201.Spec : Prop :=
  ∀ n, (P9433449386209208201.a n : ℤ) = A259751 (n + 1)

end A259751

/-! ## A259751.P11261016820501808314

`∑[24-a(n-1)]` with `a(0)=8, a(1)=8`
-/

namespace A259751.P11261016820501808314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 8] fun n f1 =>
  24 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259751.P11261016820501808314

namespace A259751

/-- `∑[24-a(n-1)]` -/
def P11261016820501808314.Spec : Prop :=
  ∀ n, P11261016820501808314.a n = A259751 (n + 1)

end A259751

/-! ## A259751.P13864066961631310006

`∑[∑[ogf((8+8x+8x^2)/(1+x))]]`
-/

namespace A259751.P13864066961631310006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 8, 8] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259751.P13864066961631310006

namespace A259751

/-- `∑[∑[ogf((8+8x+8x^2)/(1+x))]]` -/
def P13864066961631310006.Spec : Prop :=
  ∀ n, P13864066961631310006.a n = A259751 (n + 1)

end A259751

/-! ## A259751.P13703909079222762886

`ogf((8+8x+8x^2)/(1-x-x^2+x^3))`
-/

namespace A259751.P13703909079222762886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 8, 8] [1, -1, -1, 1] n

end

end A259751.P13703909079222762886

namespace A259751

/-- `ogf((8+8x+8x^2)/(1-x-x^2+x^3))` -/
def P13703909079222762886.Spec : Prop :=
  ∀ n, P13703909079222762886.a n = A259751 (n + 1)

end A259751

/-! ## A259751.P10112912549331669977

`record[lcm(9, n+1)-(n+1)]`
-/

namespace A259751.P10112912549331669977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 9 (n + 1) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259751.P10112912549331669977

namespace A259751

/-- `record[lcm(9, n+1)-(n+1)]` -/
def P10112912549331669977.Spec : Prop :=
  ∀ n, P10112912549331669977.a n = A259751 (n + 1)

end A259751

/-! ## A259751.P6808727081360241407

`∑[2^(4-(n%2)^n)]`
-/

namespace A259751.P6808727081360241407
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (4 - (((n % 2) ^ n : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259751.P6808727081360241407

namespace A259751

/-- `∑[2^(4-(n%2)^n)]` -/
def P6808727081360241407.Spec : Prop :=
  ∀ n, P6808727081360241407.a n = (A259751 (n + 1) : ℚ)

end A259751

/-! ## A259751.P4264026201835458051

`and(4*(2*n+n+2), -5)`
-/

namespace A259751.P4264026201835458051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (4 * (2 * n + (n + 2)) : ℤ) (-5)

end

end A259751.P4264026201835458051

namespace A259751

/-- `and(4*(2*n+n+2), -5)` -/
def P4264026201835458051.Spec : Prop :=
  ∀ n, P4264026201835458051.a n = A259751 (n + 1)

end A259751

/-! ## A259751.P1767365677211166974

`∑[A040057(n)]`
-/

namespace A259751.P1767365677211166974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259751.P1767365677211166974

namespace A259751

/-- `∑[A040057(n)]` -/
def P1767365677211166974.Spec : Prop :=
  ∀ n, P1767365677211166974.a n = A259751 (n + 1)

end A259751

/-! ## A259751.P10994500660127693746

`∑[2*A040013(n)]`
-/

namespace A259751.P10994500660127693746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259751.P10994500660127693746

namespace A259751

/-- `∑[2*A040013(n)]` -/
def P10994500660127693746.Spec : Prop :=
  ∀ n, P10994500660127693746.a n = A259751 (n + 1)

end A259751

/-! ## A259751.P17949441569701779262

`∑[A040241(n)/2]`
-/

namespace A259751.P17949441569701779262
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040241 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259751.P17949441569701779262

namespace A259751

/-- `∑[A040241(n)/2]` -/
def P17949441569701779262.Spec : Prop :=
  ∀ n, P17949441569701779262.a n = (A259751 (n + 1) : ℚ)

end A259751

/-! ## A259751.P4509993753077764991

`∑[4*A040003(n)]`
-/

namespace A259751.P4509993753077764991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A040003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259751.P4509993753077764991

namespace A259751

/-- `∑[4*A040003(n)]` -/
def P4509993753077764991.Spec : Prop :=
  ∀ n, P4509993753077764991.a n = A259751 (n + 1)

end A259751

/-! ## A259751.P7424074379351085450

`∑[A040553(n)/3]`
-/

namespace A259751.P7424074379351085450
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040553 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259751.P7424074379351085450

namespace A259751

/-- `∑[A040553(n)/3]` -/
def P7424074379351085450.Spec : Prop :=
  ∀ n, P7424074379351085450.a n = (A259751 (n + 1) : ℚ)

end A259751

/-! ## A259751.P13129197253085156595

`2*A092259(n+1)`
-/

namespace A259751.P13129197253085156595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092259 (n + 1)

end

end A259751.P13129197253085156595

namespace A259751

/-- `2*A092259(n+1)` -/
def P13129197253085156595.Spec : Prop :=
  ∀ n, P13129197253085156595.a n = A259751 (n + 1)

end A259751

/-! ## A259751.P1163544863659783778

`4*A047235(n+1)`
-/

namespace A259751.P1163544863659783778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A047235 (n + 1)

end

end A259751.P1163544863659783778

namespace A259751

/-- `4*A047235(n+1)` -/
def P1163544863659783778.Spec : Prop :=
  ∀ n, P1163544863659783778.a n = A259751 (n + 1)

end A259751

/-! ## A259751.P13281525250560588966

`8*A001651(n+1)`
-/

namespace A259751.P13281525250560588966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A001651 (n + 1)

end

end A259751.P13281525250560588966

namespace A259751

/-- `8*A001651(n+1)` -/
def P13281525250560588966.Spec : Prop :=
  ∀ n, P13281525250560588966.a n = A259751 (n + 1)

end A259751

/-! ## A259751.P13766968351872979540

`4*(A047241(n+1)+1)`
-/

namespace A259751.P13766968351872979540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A047241 (n + 1) + 1)

end

end A259751.P13766968351872979540

namespace A259751

/-- `4*(A047241(n+1)+1)` -/
def P13766968351872979540.Spec : Prop :=
  ∀ n, P13766968351872979540.a n = A259751 (n + 1)

end A259751

/-! ## A259751.P16143518466990791613

`2*(A087445(n+1)+3)`
-/

namespace A259751.P16143518466990791613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A087445 (n + 1) + 3)

end

end A259751.P16143518466990791613

namespace A259751

/-- `2*(A087445(n+1)+3)` -/
def P16143518466990791613.Spec : Prop :=
  ∀ n, P16143518466990791613.a n = A259751 (n + 1)

theorem P16143518466990791613.correct : P16143518466990791613.Spec := by
  intro n
  simp only [A259751, Nat.add_sub_cancel, A259751.P16143518466990791613.a, A259751.P14043662995474397611.a, A087445, A087445.P15689331082767495636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259751

/-! ## A259751.P11280463933326371408

`4*(A047238(n+1)+2)`
-/

namespace A259751.P11280463933326371408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A047238 (n + 1) + 2)

end

end A259751.P11280463933326371408

namespace A259751

/-- `4*(A047238(n+1)+2)` -/
def P11280463933326371408.Spec : Prop :=
  ∀ n, P11280463933326371408.a n = A259751 (n + 1)

end A259751

/-!
# A259752: a(n) = 24*n - 18.

The programs for A259752, the canonical program `A259752.P893208831791855020` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259752 has offset 1).

The definition of A259752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*(n+1)-18` (program `A259752.P893208831791855020`, by `A259752.P893208831791855020.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259752.P893208831791855020

`24*(n+1)-18`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259752

/-- `24*(n+1)-18` -/
def P893208831791855020.Spec : Prop :=
  ∀ n, P893208831791855020.a n = A259752 (n + 1)

theorem P893208831791855020.correct : P893208831791855020.Spec := by
  intro n
  simp only [A259752, Nat.add_sub_cancel]

end A259752

/-!
# A259753: For increasing z > 0, integers, y - x, where x^3 + y^3 = z^3 + 1, with y > x > 1.

The programs for A259753, there is no canonical definition to state claims against.
-/

/-! ## A259753.P18212891651283393401

`A050793(n+1)-A050792(n+1)`
-/

namespace A259753.P18212891651283393401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050793 (n + 1) - A050792 (n + 1)

end

end A259753.P18212891651283393401

/-!
# A259754: Numbers that are congruent to {3,9,15,18,21} mod 24.

The programs for A259754, the canonical program `A259754.P10715791582844863484` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259754 has offset 1).

The definition of A259754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259754.P10715791582844863484

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=3, a(1)=9, a(2)=15, a(3)=18, a(4)=21, a(5)=27`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259754

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P10715791582844863484.Spec : Prop :=
  ∀ n, P10715791582844863484.a n = A259754 (n + 1)

theorem P10715791582844863484.correct : P10715791582844863484.Spec := by
  intro n
  simp only [A259754, Nat.add_sub_cancel]

end A259754

/-! ## A259754.P6226256351590829170

`3*A047584(n+1)`
-/

namespace A259754.P6226256351590829170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047584 (n + 1)

end

end A259754.P6226256351590829170

namespace A259754

/-- `3*A047584(n+1)` -/
def P6226256351590829170.Spec : Prop :=
  ∀ n, P6226256351590829170.a n = A259754 (n + 1)

end A259754

/-! ## A259754.P17143462937674828724

`3*comp[and(n, n+3)]`
-/

namespace A259754.P17143462937674828724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A259754.P17143462937674828724

namespace A259754

/-- `3*comp[and(n, n+3)]` -/
def P17143462937674828724.Spec : Prop :=
  ∀ n, (P17143462937674828724.a n : ℤ) = A259754 (n + 1)

end A259754

/-! ## A259754.P17289057576380736339

`3*comp[2*comp[or(3, n)]]`
-/

namespace A259754.P17289057576380736339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A259754.P17289057576380736339

namespace A259754

/-- `3*comp[2*comp[or(3, n)]]` -/
def P17289057576380736339.Spec : Prop :=
  ∀ n, (P17289057576380736339.a n : ℤ) = A259754 (n + 1)

end A259754

/-! ## A259754.P5686714520195088732

`3*comp[2*n-and(2, n)]`
-/

namespace A259754.P5686714520195088732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.land 2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A259754.P5686714520195088732

namespace A259754

/-- `3*comp[2*n-and(2, n)]` -/
def P5686714520195088732.Spec : Prop :=
  ∀ n, (P5686714520195088732.a n : ℤ) = A259754 (n + 1)

end A259754

/-! ## A259754.P8789056141827066310

`∑[floor(a(n-5))]` with `a(0)=3, a(1)=6, a(2)=6, a(3)=3, a(4)=3, a(5)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A259754.P8789056141827066310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 6, 6, 3, 3, 6] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259754.P8789056141827066310

namespace A259754

/-- `∑[floor(a(n-5))]` -/
def P8789056141827066310.Spec : Prop :=
  ∀ n, (P8789056141827066310.a n : ℤ) = A259754 (n + 1)

end A259754

/-! ## A259754.P7702401685607199308

`3*∪[2*n+1, Δ[(2*n+1)*2*n]]`
-/

namespace A259754.P7702401685607199308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259754.P7702401685607199308

namespace A259754

/-- `3*∪[2*n+1, Δ[(2*n+1)*2*n]]` -/
def P7702401685607199308.Spec : Prop :=
  ∀ n, (P7702401685607199308.a n : ℤ) = A259754 (n + 1)

end A259754

/-! ## A259754.P3531082613819517196

`3*(A047434(n+1)+1)`
-/

namespace A259754.P3531082613819517196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A047434 (n + 1) + 1)

end

end A259754.P3531082613819517196

namespace A259754

/-- `3*(A047434(n+1)+1)` -/
def P3531082613819517196.Spec : Prop :=
  ∀ n, P3531082613819517196.a n = A259754 (n + 1)

end A259754

/-! ## A259754.P4312502834239497622

`3*(A229838(n+1)-2)`
-/

namespace A259754.P4312502834239497622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A229838 (n + 1) - 2)

end

end A259754.P4312502834239497622

namespace A259754

/-- `3*(A229838(n+1)-2)` -/
def P4312502834239497622.Spec : Prop :=
  ∀ n, P4312502834239497622.a n = A259754 (n + 1)

end A259754

/-! ## A259754.P2140122197831415011

`3*comp[2*comp[A004767(n)]]`
-/

namespace A259754.P2140122197831415011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A259754.P2140122197831415011

namespace A259754

/-- `3*comp[2*comp[A004767(n)]]` -/
def P2140122197831415011.Spec : Prop :=
  ∀ n, (P2140122197831415011.a n : ℤ) = A259754 (n + 1)

end A259754

/-! ## A259754.P12639498330324361142

`3*(∑[A000005(a(n-5))]-2)` with `a(0)=3, a(1)=2, a(2)=2, a(3)=1, a(4)=1`
-/

namespace A259754.P12639498330324361142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 2, 1, 1] fun n f1 =>
  A000005 (f1 (n - 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A259754.P12639498330324361142

namespace A259754

/-- `3*(∑[A000005(a(n-5))]-2)` -/
def P12639498330324361142.Spec : Prop :=
  ∀ n, P12639498330324361142.a n = A259754 (n + 1)

end A259754

/-! ## A259754.P7496971023590060051

`3*(A047511(n+2)-1)`
-/

namespace A259754.P7496971023590060051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A047511 (n + 2) - 1)

end

end A259754.P7496971023590060051

namespace A259754

/-- `3*(A047511(n+2)-1)` -/
def P7496971023590060051.Spec : Prop :=
  ∀ n, P7496971023590060051.a n = A259754 (n + 1)

end A259754

/-! ## A259754.P16863082109913508092

`A047434(n+1)+A047584(n+1)+A047511(n+2)`
-/

namespace A259754.P16863082109913508092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047434 (n + 1) + (A047584 (n + 1) + A047511 (n + 2))

end

end A259754.P16863082109913508092

namespace A259754

/-- `A047434(n+1)+A047584(n+1)+A047511(n+2)` -/
def P16863082109913508092.Spec : Prop :=
  ∀ n, P16863082109913508092.a n = A259754 (n + 1)

end A259754

/-! ## A259754.P17754520130319026532

`3*(A047486(n+3)-2)`
-/

namespace A259754.P17754520130319026532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A047486 (n + 3) - 2)

end

end A259754.P17754520130319026532

namespace A259754

/-- `3*(A047486(n+3)-2)` -/
def P17754520130319026532.Spec : Prop :=
  ∀ n, P17754520130319026532.a n = A259754 (n + 1)

end A259754

/-! ## A259754.P11681452652527968285

`3*comp[2*n*A177704(n)]`
-/

namespace A259754.P11681452652527968285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A177704 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A259754.P11681452652527968285

namespace A259754

/-- `3*comp[2*n*A177704(n)]` -/
def P11681452652527968285.Spec : Prop :=
  ∀ n, (P11681452652527968285.a n : ℤ) = A259754 (n + 1)

end A259754

/-! ## A259754.P7042115931000762154

`3*comp[2*(n-1)*A040406(n)]`
-/

namespace A259754.P7042115931000762154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 1) * A040406 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A259754.P7042115931000762154

namespace A259754

/-- `3*comp[2*(n-1)*A040406(n)]` -/
def P7042115931000762154.Spec : Prop :=
  ∀ n, (P7042115931000762154.a n : ℤ) = A259754 (n + 1)

end A259754

/-! ## A259754.P12164153629223085550

`3*comp[2*n*A007814(n+1)!]`
-/

namespace A259754.P12164153629223085550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.factorial (A007814 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A259754.P12164153629223085550

namespace A259754

/-- `3*comp[2*n*A007814(n+1)!]` -/
def P12164153629223085550.Spec : Prop :=
  ∀ n, (P12164153629223085550.a n : ℤ) = A259754 (n + 1)

end A259754

/-! ## A259754.P6802397421430901445

`A008486(A047584(n+1))`
-/

namespace A259754.P6802397421430901445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A047584 (n + 1)).toNat

end

end A259754.P6802397421430901445

namespace A259754

/-- `A008486(A047584(n+1))` -/
def P6802397421430901445.Spec : Prop :=
  ∀ n, P6802397421430901445.a n = A259754 (n + 1)

end A259754

/-! ## A259754.P13771577328413898230

`A008486(A047486(n+3)-2)`
-/

namespace A259754.P13771577328413898230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A047486 (n + 3) - 2).toNat

end

end A259754.P13771577328413898230

namespace A259754

/-- `A008486(A047486(n+3)-2)` -/
def P13771577328413898230.Spec : Prop :=
  ∀ n, P13771577328413898230.a n = A259754 (n + 1)

end A259754

/-! ## A259754.P17332026764841141010

`A296515(A229838(n+1))`
-/

namespace A259754.P17332026764841141010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296515 (A229838 (n + 1)).toNat

end

end A259754.P17332026764841141010

namespace A259754

/-- `A296515(A229838(n+1))` -/
def P17332026764841141010.Spec : Prop :=
  ∀ n, P17332026764841141010.a n = A259754 (n + 1)

end A259754

/-!
# A259755: Numbers that are congruent to {4, 20} mod 24.

The programs for A259755, the canonical program `A259755.P4631213340866640928` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259755 has offset 1).

The definition of A259755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259755.P4631213340866640928

`2*(6*(n+1)+(-1)^(n+1)-3)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259755

/-- `2*(6*(n+1)+(-1)^(n+1)-3)` -/
def P4631213340866640928.Spec : Prop :=
  ∀ n, P4631213340866640928.a n = A259755 (n + 1)

theorem P4631213340866640928.correct : P4631213340866640928.Spec := by
  intro n
  simp only [A259755, Nat.add_sub_cancel]

end A259755

/-! ## A259755.P4050260720341884614

`or(4, 12*n+4)`
-/

namespace A259755.P4050260720341884614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (12 * n + 4)

end

end A259755.P4050260720341884614

namespace A259755

/-- `or(4, 12*n+4)` -/
def P4050260720341884614.Spec : Prop :=
  ∀ n, (P4050260720341884614.a n : ℤ) = A259755 (n + 1)

end A259755

/-! ## A259755.P9675863434565349840

`Δ[or(2, 6*n²)]`
-/

namespace A259755.P9675863434565349840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (6 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A259755.P9675863434565349840

namespace A259755

/-- `Δ[or(2, 6*n²)]` -/
def P9675863434565349840.Spec : Prop :=
  ∀ n, P9675863434565349840.a n = A259755 (n + 1)

end A259755

/-! ## A259755.P7816616174692930209

`Δ[and(6*n², -3)]`
-/

namespace A259755.P7816616174692930209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (6 * n ^ 2 : ℤ) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259755.P7816616174692930209

namespace A259755

/-- `Δ[and(6*n², -3)]` -/
def P7816616174692930209.Spec : Prop :=
  ∀ n, P7816616174692930209.a n = A259755 (n + 1)

end A259755

/-! ## A259755.P9873038039259782395

`a(n-2)+24` with `a(0)=4, a(1)=20`
-/

namespace A259755.P9873038039259782395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 20] fun n a =>
  a (n - 2) + 24

end

end A259755.P9873038039259782395

namespace A259755

/-- `a(n-2)+24` -/
def P9873038039259782395.Spec : Prop :=
  ∀ n, (P9873038039259782395.a n : ℤ) = A259755 (n + 1)

theorem P9873038039259782395.correct : P9873038039259782395.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A259755, Nat.add_sub_cancel, A259755.P9873038039259782395.a, A259755.P4631213340866640928.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A259755, Nat.add_sub_cancel, A259755.P9873038039259782395.a, A259755.P4631213340866640928.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A259755

/-! ## A259755.P11401771629345543970

`∑[24-a(n-1)]` with `a(0)=4, a(1)=16`
-/

namespace A259755.P11401771629345543970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 16] fun n f1 =>
  24 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259755.P11401771629345543970

namespace A259755

/-- `∑[24-a(n-1)]` -/
def P11401771629345543970.Spec : Prop :=
  ∀ n, P11401771629345543970.a n = A259755 (n + 1)

end A259755

/-! ## A259755.P12521059049368608031

`24*n-a(n-1)` with `a(0)=4`
-/

namespace A259755.P12521059049368608031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (24 * n : ℤ) - a (n - 1)

end

end A259755.P12521059049368608031

namespace A259755

/-- `24*n-a(n-1)` -/
def P12521059049368608031.Spec : Prop :=
  ∀ n, P12521059049368608031.a n = A259755 (n + 1)

theorem P12521059049368608031.correct : P12521059049368608031.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A259755, Nat.add_sub_cancel, A259755.P12521059049368608031.a, A259755.P4631213340866640928.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A259755, Nat.add_sub_cancel, A259755.P12521059049368608031.a, A259755.P4631213340866640928.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A259755

/-! ## A259755.P5967988975038399703

`∑[2^(n%2+3)]-4`
-/

namespace A259755.P5967988975038399703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n % 2 + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A259755.P5967988975038399703

namespace A259755

/-- `∑[2^(n%2+3)]-4` -/
def P5967988975038399703.Spec : Prop :=
  ∀ n, P5967988975038399703.a n = A259755 (n + 1)

end A259755

/-! ## A259755.P2694862999240986833

`record[lcm(3, 8*n+4)/3]`
-/

namespace A259755.P2694862999240986833
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (8 * n + 4) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259755.P2694862999240986833

namespace A259755

/-- `record[lcm(3, 8*n+4)/3]` -/
def P2694862999240986833.Spec : Prop :=
  ∀ n, P2694862999240986833.a n = (A259755 (n + 1) : ℚ)

end A259755

/-! ## A259755.P4561988768160959978

`record[(n+1)*(2-n)²%6]`
-/

namespace A259755.P4561988768160959978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod ((2 - (n : ℤ)) ^ 2) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259755.P4561988768160959978

namespace A259755

/-- `record[(n+1)*(2-n)²%6]` -/
def P4561988768160959978.Spec : Prop :=
  ∀ n, P4561988768160959978.a n = A259755 (n + 1)

end A259755

/-! ## A259755.P15021870063700423372

`record[lcm(n-1, (n+2)²%6)]`
-/

namespace A259755.P15021870063700423372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (((n + 2) ^ 2 % 6 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259755.P15021870063700423372

namespace A259755

/-- `record[lcm(n-1, (n+2)²%6)]` -/
def P15021870063700423372.Spec : Prop :=
  ∀ n, (P15021870063700423372.a n : ℤ) = A259755 (n + 1)

end A259755

/-! ## A259755.P3661620997222713161

`xor(3, 7*(2*n+1))-2*n`
-/

namespace A259755.P3661620997222713161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (7 * (2 * n + 1)) : ℤ) - (2 * n : ℤ)

end

end A259755.P3661620997222713161

namespace A259755

/-- `xor(3, 7*(2*n+1))-2*n` -/
def P3661620997222713161.Spec : Prop :=
  ∀ n, P3661620997222713161.a n = A259755 (n + 1)

end A259755

/-! ## A259755.P2138286953995998288

`floor(record[lcm(12, n+1)/3]+n)-n`
-/

namespace A259755.P2138286953995998288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 12 (n + 1) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℚ)⌋ - (n : ℤ)

end

end A259755.P2138286953995998288

namespace A259755

/-- `floor(record[lcm(12, n+1)/3]+n)-n` -/
def P2138286953995998288.Spec : Prop :=
  ∀ n, P2138286953995998288.a n = A259755 (n + 1)

end A259755

/-! ## A259755.P17719737993996115358

`record[(2*n+1)*4/gcd(3, 1-n)]`
-/

namespace A259755.P17719737993996115358
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (4 / (Int.gcd 3 (1 - (n : ℤ)) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259755.P17719737993996115358

namespace A259755

/-- `record[(2*n+1)*4/gcd(3, 1-n)]` -/
def P17719737993996115358.Spec : Prop :=
  ∀ n, P17719737993996115358.a n = (A259755 (n + 1) : ℚ)

end A259755

/-! ## A259755.P190099179312517205

`record[4*(2*n+1)/gcd(n+2, 2*n+1)]`
-/

namespace A259755.P190099179312517205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (2 * n + 1) : ℚ) / (Nat.gcd (n + 2) (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259755.P190099179312517205

namespace A259755

/-- `record[4*(2*n+1)/gcd(n+2, 2*n+1)]` -/
def P190099179312517205.Spec : Prop :=
  ∀ n, P190099179312517205.a n = (A259755 (n + 1) : ℚ)

end A259755

/-! ## A259755.P15680669407191383231

`∑[4*A382713(n)]`
-/

namespace A259755.P15680669407191383231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A382713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259755.P15680669407191383231

namespace A259755

/-- `∑[4*A382713(n)]` -/
def P15680669407191383231.Spec : Prop :=
  ∀ n, P15680669407191383231.a n = A259755 (n + 1)

end A259755

/-! ## A259755.P8764617364076124738

`Δ[4*A032528(n)]`
-/

namespace A259755.P8764617364076124738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259755.P8764617364076124738

namespace A259755

/-- `Δ[4*A032528(n)]` -/
def P8764617364076124738.Spec : Prop :=
  ∀ n, P8764617364076124738.a n = A259755 (n + 1)

end A259755

/-! ## A259755.P8238197867289876485

`A306285(n+1)-n`
-/

namespace A259755.P8238197867289876485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) - (n : ℤ)

end

end A259755.P8238197867289876485

namespace A259755

/-- `A306285(n+1)-n` -/
def P8238197867289876485.Spec : Prop :=
  ∀ n, P8238197867289876485.a n = A259755 (n + 1)

end A259755

/-! ## A259755.P7959986873432722566

`∑[2*dr(A040384(n))]`
-/

namespace A259755.P7959986873432722566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.digitalRoot (A040384 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259755.P7959986873432722566

namespace A259755

/-- `∑[2*dr(A040384(n))]` -/
def P7959986873432722566.Spec : Prop :=
  ∀ n, (P7959986873432722566.a n : ℤ) = A259755 (n + 1)

end A259755

/-! ## A259755.P1615071520365494385

`A306279(n+1)+n+1`
-/

namespace A259755.P1615071520365494385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306279 (n + 1) + (n + 1 : ℤ)

end

end A259755.P1615071520365494385

namespace A259755

/-- `A306279(n+1)+n+1` -/
def P1615071520365494385.Spec : Prop :=
  ∀ n, P1615071520365494385.a n = A259755 (n + 1)

theorem P1615071520365494385.correct : P1615071520365494385.Spec := by
  intro n
  simp only [A259755, Nat.add_sub_cancel, A259755.P1615071520365494385.a, A259755.P4631213340866640928.a, A306279, A306279.P15417631850282334460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259755

/-!
# A259756: Numbers n such that numbers n through n+6 are the product of exactly three (not necessarily distinct) primes.

The programs for A259756, there is no canonical definition to state claims against.
-/

/-! ## A259756.P14490672055303980161

`∩[A123103(n+1), A375239(n+1)]`
-/

namespace A259756.P14490672055303980161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259756.P14490672055303980161

/-! ## A259756.P6602983478756767600

`∩[A123103(n+1), A268588(n+5)]`
-/

namespace A259756.P6602983478756767600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268588 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259756.P6602983478756767600

/-! ## A259756.P5601637044970968403

`∩[A045941(n+1), A124057(n+1)-3]`
-/

namespace A259756.P5601637044970968403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124057 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259756.P5601637044970968403

/-! ## A259756.P2881894479770699473

`8*A275417(n+1)+1`
-/

namespace A259756.P2881894479770699473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A275417 (n + 1) + 1

end

end A259756.P2881894479770699473

/-! ## A259756.P10559081010857194863

`A123103(∑[A089723(2^n+4)])`
-/

namespace A259756.P10559081010857194863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (2 ^ n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123103 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A259756.P10559081010857194863

/-!
# A259757: G.f. A(x) satisfies A(x)^2 = 1 +x + x*A(x)^5.

The programs for A259757, there is no canonical definition to state claims against.
-/

/-! ## A259757.P3733520955570685830

`A011791(n-floor(sqrt(sqrt(n))))`
-/

namespace A259757.P3733520955570685830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011791 ((n : ℤ) - ⌊Real.sqrt (Real.sqrt (n : ℝ))⌋).toNat

end

end A259757.P3733520955570685830

/-! ## A259757.P10933424066692178714

`∏{e}[floor(2^(n-1)), A011791(#)]`
-/

namespace A259757.P10933424066692178714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A011791 (Nat.factorization (f1 n).natAbs p)

end

end A259757.P10933424066692178714

/-! ## A259757.P4904612778345864185

`A011791(n-1)%(n%2+10*a(n-1))` with `a(0)=1`
-/

namespace A259757.P4904612778345864185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A011791 (n - 1)) (((n % 2 : ℕ) : ℤ) + 10 * a (n - 1))

end

end A259757.P4904612778345864185

/-! ## A259757.P17770511145507228413

`A011791(n-1)^A220073(a(A025436(3*n)))` with `a(0)=1`
-/

namespace A259757.P17770511145507228413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A011791 (n - 1) : ℚ) ^ (A220073 (SequenceMachineLib.roundAway (a (A025436 (3 * n)).toNat)).toNat : ℤ)

end

end A259757.P17770511145507228413

/-!
# A259758: Squarefree semiprimes of the form (2*p - 3) * (3*p - 2), p prime.

The programs for A259758, there is no canonical definition to state claims against.
-/

/-! ## A259758.P17043676475305231094

`6*A259730(n+1)²-13*A259730(n+1)+6`
-/

namespace A259758.P17043676475305231094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A259730 (n + 1) ^ 2 - 13 * A259730 (n + 1) + 6

end

end A259758.P17043676475305231094

/-! ## A259758.P10193342324344626274

`A033569(A259730(n+1)-1)`
-/

namespace A259758.P10193342324344626274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033569 (A259730 (n + 1) - 1).toNat

end

end A259758.P10193342324344626274

/-! ## A259758.P1599585773869648825

`A033569(xor(1, A259730(n+1)))`
-/

namespace A259758.P1599585773869648825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033569 (Int.xor 1 (A259730 (n + 1))).toNat

end

end A259758.P1599585773869648825

/-! ## A259758.P6772337657694536113

`A033569(A000010(A259730(n+1)))`
-/

namespace A259758.P6772337657694536113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033569 (A000010 (A259730 (n + 1)).toNat).toNat

end

end A259758.P6772337657694536113

/-!
# A259759: Triangle read by rows: T(n,k) = number of partial idempotent mappings (of an n-chain) with collapse exactly k.

The programs for A259759, there is no canonical definition to state claims against.
-/

/-! ## A259759.P8522944374741010055

`A002262(A191971(n)^A128076(n+1))`
-/

namespace A259759.P8522944374741010055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.roundAway ((A191971 n : ℚ) ^ (A128076 (n + 1) : ℤ))).toNat

end

end A259759.P8522944374741010055

/-!
# A259760: Triangle read by rows: T(n,k) is the number of partial idempotent mappings (of an n-chain) with breadth exactly k.

The programs for A259760, there is no canonical definition to state claims against.
-/

/-! ## A259760.P6501349990697287159

`A116071(∑[2*n]%comp[∑[n]])`
-/

namespace A259760.P6501349990697287159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116071 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A259760.P6501349990697287159

/-! ## A259760.P6970677976418911065

`A116071(∑[char[∑[n]]]²-(n+1))`
-/

namespace A259760.P6970677976418911065
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116071 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A259760.P6970677976418911065

/-! ## A259760.P5980586962058709550

`or(char[1], A116071(A061579(n)))`
-/

namespace A259760.P5980586962058709550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A116071 (A061579 n).toNat)

end

end A259760.P5980586962058709550

/-! ## A259760.P16771706506037165439

`A000248(A002262(n))*A007318(n)`
-/

namespace A259760.P16771706506037165439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000248 (A002262 n).toNat * A007318 n

end

end A259760.P16771706506037165439

/-! ## A259760.P15558290501438408522

`A007318(n)*A116071(A112367(n))`
-/

namespace A259760.P15558290501438408522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A116071 (A112367 n).toNat

end

end A259760.P15558290501438408522

/-! ## A259760.P1904516121749842606

`A116071(A061579(n))^A035214(n)`
-/

namespace A259760.P1904516121749842606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116071 (A061579 n).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A259760.P1904516121749842606

/-! ## A259760.P15453039138761888651

`A116071(A061579(n))%A062988(n)`
-/

namespace A259760.P15453039138761888651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116071 (A061579 n).toNat) (A062988 n)

end

end A259760.P15453039138761888651

/-! ## A259760.P12933552410567296978

`lcm(A007318(n), A116071(A061579(n)))`
-/

namespace A259760.P12933552410567296978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A116071 (A061579 n).toNat)

end

end A259760.P12933552410567296978

/-! ## A259760.P4122634713022566478

`A116071(A061579(n))/gcd(5, A000032(n))`
-/

namespace A259760.P4122634713022566478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116071 (A061579 n).toNat : ℚ) / (Int.gcd 5 (A000032 n) : ℚ)

end

end A259760.P4122634713022566478

/-!
# A259761: Expansion of (phi(x)^2 + phi(x^9)^2) / 2 in powers of x where phi() is a Ramanujan theta function.

The programs for A259761, there is no canonical definition to state claims against.
-/

/-! ## A259761.P9031959356106144094

`A004018(n)/(n²+1)%3`
-/

namespace A259761.P9031959356106144094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n : ℚ) / (((n ^ 2 + 1) % 3 : ℕ) : ℚ)

end

end A259761.P9031959356106144094

/-! ## A259761.P6556892005908118792

`A131714(n)*A256282(n)`
-/

namespace A259761.P6556892005908118792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131714 n * A256282 n

end

end A259761.P6556892005908118792

/-! ## A259761.P8891356396060374395

`A130196(n)*A258256(n)`
-/

namespace A259761.P8891356396060374395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130196 n * A258256 n

end

end A259761.P8891356396060374395

/-! ## A259761.P14240202968143597190

`A132367(n)*A258279(n)`
-/

namespace A259761.P14240202968143597190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132367 n * A258279 n

end

end A259761.P14240202968143597190

/-! ## A259761.P319276099709683640

`A004018(n)/A130196(n)`
-/

namespace A259761.P319276099709683640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n : ℚ) / (A130196 n : ℚ)

end

end A259761.P319276099709683640

/-! ## A259761.P1174651437361570299

`A104794(n)/A131714(n)`
-/

namespace A259761.P1174651437361570299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104794 n : ℚ) / (A131714 n : ℚ)

end

end A259761.P1174651437361570299

/-! ## A259761.P11824363973571576775

`A256014(n)/A132367(n)`
-/

namespace A259761.P11824363973571576775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256014 n : ℚ) / (A132367 n : ℚ)

end

end A259761.P11824363973571576775

/-! ## A259761.P14170774870746820279

`gcd(A028601(n), A256014(n))`
-/

namespace A259761.P14170774870746820279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028601 n) (A256014 n)

end

end A259761.P14170774870746820279

/-! ## A259761.P2625272425710868583

`lcm(A122857(n), A256282(n))`
-/

namespace A259761.P2625272425710868583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A122857 n) (A256282 n)

end

end A259761.P2625272425710868583

/-! ## A259761.P16323996591918226221

`lcm(A132003(n), A258210(n))`
-/

namespace A259761.P16323996591918226221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132003 n) (A258210 n)

end

end A259761.P16323996591918226221

/-! ## A259761.P14422979221466481137

`lcm(A138949(n), A258228(n))`
-/

namespace A259761.P14422979221466481137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138949 n) (A258228 n)

end

end A259761.P14422979221466481137

/-! ## A259761.P3440602239366910851

`lcm(A138951(n), A258256(n))`
-/

namespace A259761.P3440602239366910851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138951 n) (A258256 n)

end

end A259761.P3440602239366910851

/-! ## A259761.P6973702279105221534

`or(abs(A258322(n)), A028601(n))`
-/

namespace A259761.P6973702279105221534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |A258322 n| (A028601 n)

end

end A259761.P6973702279105221534

/-! ## A259761.P7576124323162227569

`(A011655(n)+1)*A258256(n)`
-/

namespace A259761.P7576124323162227569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011655 n + 1) * A258256 n

end

end A259761.P7576124323162227569

/-! ## A259761.P5616948591088056820

`gcd(2*A256282(n), A004018(n))`
-/

namespace A259761.P5616948591088056820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A256282 n) (A004018 n)

end

end A259761.P5616948591088056820

/-! ## A259761.P15894538869123632027

`gcd(A258034(2*n), A258034(n))`
-/

namespace A259761.P15894538869123632027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A258034 (2 * n)) (A258034 n)

end

end A259761.P15894538869123632027

/-! ## A259761.P10566356218566377768

`gcd(A256280(2*n), A256280(n))`
-/

namespace A259761.P10566356218566377768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A256280 (2 * n)) (A256280 n)

end

end A259761.P10566356218566377768

/-! ## A259761.P14270966227818990216

`gcd(A258322(2*n), A258322(n))`
-/

namespace A259761.P14270966227818990216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A258322 (2 * n)) (A258322 n)

end

end A259761.P14270966227818990216

/-! ## A259761.P2593128917965436840

`lcm(A258279(2*n), A258279(n))`
-/

namespace A259761.P2593128917965436840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A258279 (2 * n)) (A258279 n)

end

end A259761.P2593128917965436840

/-! ## A259761.P14873686304525690605

`lcm(A258292(2*n), A258292(n))`
-/

namespace A259761.P14873686304525690605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A258292 (2 * n)) (A258292 n)

end

end A259761.P14873686304525690605

/-!
# A259762: Smallest integer k_1 such that there exist n positive integers k_1 > k_2 > ... > k_n having the property that k_j * k_n > k_(j+1)^2 for j=1..n-1.

The programs for A259762, there is no canonical definition to state claims against.
-/

/-! ## A259762.P3418418009517837855

`∑[A025686(A129519(2*n)+2)]+n`
-/

namespace A259762.P3418418009517837855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025686 (A129519 (2 * n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A259762.P3418418009517837855

/-! ## A259762.P5269920832379427934

`A026011(n)-A007949(A001349(n+1))`
-/

namespace A259762.P5269920832379427934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026011 n - A007949 (A001349 (n + 1)).toNat

end

end A259762.P5269920832379427934

/-! ## A259762.P6747232879695068267

`A026011(n)-A010054(A196850(n+1))`
-/

namespace A259762.P6747232879695068267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026011 n - A010054 (A196850 (n + 1)).toNat

end

end A259762.P6747232879695068267

/-!
# A259763: Number of symmetric n X n (0,1)-matrices with pairwise distinct rows and columns.

The programs for A259763, there is no canonical definition to state claims against.
-/

/-! ## A259763.P14444788758271318602

`A006024(n+1)+n*A006024(n)`
-/

namespace A259763.P14444788758271318602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006024 (n + 1) + (n : ℤ) * A006024 n

end

end A259763.P14444788758271318602

/-!
# A259765: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 or 00000101.

The programs for A259765, there is no canonical definition to state claims against.
-/

/-! ## A259765.P18302198069993709594

`A259770(∑[n]+1)`
-/

namespace A259765.P18302198069993709594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259770 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259765.P18302198069993709594

/-! ## A259765.P596283691992125142

`record[A259770(n+1)]`
-/

namespace A259765.P596283691992125142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259765.P596283691992125142

/-! ## A259765.P91406330866343920

`and(-1, A259770(A000124(n)))`
-/

namespace A259765.P91406330866343920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A259770 (A000124 n).toNat)

end

end A259765.P91406330866343920

/-! ## A259765.P7079672071137628567

`A007318(∑[n])*A259770(A000124(n))`
-/

namespace A259765.P7079672071137628567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A259770 (A000124 n).toNat

end

end A259765.P7079672071137628567

/-! ## A259765.P11051205432878012010

`A060576(n+3)*A259770(A000124(n))`
-/

namespace A259765.P11051205432878012010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 3) * A259770 (A000124 n).toNat

end

end A259765.P11051205432878012010

/-! ## A259765.P12634722036761069736

`A259770(A000124(n))/A007318(C(2, n))`
-/

namespace A259765.P12634722036761069736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259770 (A000124 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A259765.P12634722036761069736

/-! ## A259765.P15430681715588120072

`A000041(C(n, 64))*A259770(A000124(n))`
-/

namespace A259765.P15430681715588120072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A259770 (A000124 n).toNat

end

end A259765.P15430681715588120072

/-! ## A259765.P2501923438036997813

`A000010(C(2, n)!)*A259770(A000124(n))`
-/

namespace A259765.P2501923438036997813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A259770 (A000124 n).toNat

end

end A259765.P2501923438036997813

/-! ## A259765.P1464074509276965704

`A259770(A000124(n))+A008683(4*(n+5))`
-/

namespace A259765.P1464074509276965704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259770 (A000124 n).toNat + A008683 (4 * (n + 5))

end

end A259765.P1464074509276965704

/-! ## A259765.P12773665006916687221

`A014963(4*n+6)*A259770(A000124(n))`
-/

namespace A259765.P12773665006916687221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A259770 (A000124 n).toNat

end

end A259765.P12773665006916687221

/-!
# A259766: Number of (n+2) X (2+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 or 00000101.

The programs for A259766, there is no canonical definition to state claims against.
-/

/-! ## A259766.P17570934116030624675

`A259770(∑[n+1]+2)`
-/

namespace A259766.P17570934116030624675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259770 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A259766.P17570934116030624675

/-! ## A259766.P6149837516279066443

`A259770(A000096(n+1))%((n+2)^10)`
-/

namespace A259766.P6149837516279066443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259770 (A000096 (n + 1)).toNat) ((n + 2) ^ 10 : ℤ)

end

end A259766.P6149837516279066443

/-! ## A259766.P2651611238122063860

`A259770(A000096(n+1))+A070176(n²)`
-/

namespace A259766.P2651611238122063860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259770 (A000096 (n + 1)).toNat + A070176 (n ^ 2)

end

end A259766.P2651611238122063860

/-! ## A259766.P3089798310080762520

`A259770(A000096(n+1))+A008683(4*(n+1))`
-/

namespace A259766.P3089798310080762520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259770 (A000096 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A259766.P3089798310080762520

/-! ## A259766.P17925111350747163380

`A014963(28*(n+1))*A259770(A000096(n+1))`
-/

namespace A259766.P17925111350747163380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (28 * (n + 1)) * A259770 (A000096 (n + 1)).toNat

end

end A259766.P17925111350747163380

/-!
# A259767: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 or 00000101.

The programs for A259767, there is no canonical definition to state claims against.
-/

/-! ## A259767.P1135722535455626249

`A259770(∑[n+2]+4)`
-/

namespace A259767.P1135722535455626249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259770 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A259767.P1135722535455626249

/-! ## A259767.P4810214330165302149

`and(-1, A259770(A167614(n+1)))`
-/

namespace A259767.P4810214330165302149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A259770 (A167614 (n + 1)).toNat)

end

end A259767.P4810214330165302149

/-! ## A259767.P9589369256204766396

`or(char[1], A259770(A000217(n+2)+3))`
-/

namespace A259767.P9589369256204766396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A259770 (A000217 (n + 2) + 3).toNat)

end

end A259767.P9589369256204766396

/-! ## A259767.P1441079907914320986

`A259770(A167614(n+1))%A017465(n)`
-/

namespace A259767.P1441079907914320986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259770 (A167614 (n + 1)).toNat) (A017465 n)

end

end A259767.P1441079907914320986

/-! ## A259767.P15675644118578581439

`A259770(A167614(n+1))+A185015(2*n)`
-/

namespace A259767.P15675644118578581439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259770 (A167614 (n + 1)).toNat + A185015 (2 * n)

end

end A259767.P15675644118578581439

/-!
# A259768: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 or 00000101.

The programs for A259768, there is no canonical definition to state claims against.
-/

/-! ## A259768.P7992258561143565742

`A259770(∑[n+3]+7)`
-/

namespace A259768.P7992258561143565742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259770 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A259768.P7992258561143565742

/-! ## A259768.P5830711967113912253

`or(char[1], A259770(A167614(n+2)+1))`
-/

namespace A259768.P5830711967113912253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A259770 (A167614 (n + 2) + 1).toNat)

end

end A259768.P5830711967113912253

/-! ## A259768.P16670100549878071082

`A007318(C(n, 2))*A259770(A167614(n+2)+1)`
-/

namespace A259768.P16670100549878071082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A259770 (A167614 (n + 2) + 1).toNat

end

end A259768.P16670100549878071082

/-! ## A259768.P10739196197184002698

`A000010(C(2, n)!)*A259770(A167614(n+2)+1)`
-/

namespace A259768.P10739196197184002698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A259770 (A167614 (n + 2) + 1).toNat

end

end A259768.P10739196197184002698

/-! ## A259768.P2297734063557772143

`A259770(A167614(n+2)+1)/A007318(C(n, n²))`
-/

namespace A259768.P2297734063557772143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259770 (A167614 (n + 2) + 1).toNat : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A259768.P2297734063557772143

/-!
# A259769: Number of (n+2) X (5+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 or 00000101.

The programs for A259769, there is no canonical definition to state claims against.
-/

/-! ## A259769.P4258694627707137699

`A259770(A167499(n+3))`
-/

namespace A259769.P4258694627707137699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259770 (A167499 (n + 3)).toNat

end

end A259769.P4258694627707137699

/-! ## A259769.P3029277418814642884

`A259770(A155212(n)+13)`
-/

namespace A259769.P3029277418814642884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259770 (A155212 n + 13).toNat

end

end A259769.P3029277418814642884

/-! ## A259769.P14443903300838036840

`A259770(A056000(n)+15)`
-/

namespace A259769.P14443903300838036840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259770 (A056000 n + 15).toNat

end

end A259769.P14443903300838036840

/-! ## A259769.P13185254918280931639

`A259770(A167614(n+3)+2)`
-/

namespace A259769.P13185254918280931639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259770 (A167614 (n + 3) + 2).toNat

end

end A259769.P13185254918280931639

/-! ## A259769.P9983634599710237729

`A259770(A000124(n+4)+4)`
-/

namespace A259769.P9983634599710237729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259770 (A000124 (n + 4) + 4).toNat

end

end A259769.P9983634599710237729

/-!
# A259771: Expansion of x * psi(x^5) * f(-x^10) / f(-x^2,-x^8) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A259771, there is no canonical definition to state claims against.
-/

/-! ## A259771.P3016946779741254829

`A053265(n)-A053267(n+1)`
-/

namespace A259771.P3016946779741254829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053265 n - A053267 (n + 1)

end

end A259771.P3016946779741254829

/-! ## A259771.P13626637326722817145

`A053265(n)-A053267(n)-Δ[A053267(n)]`
-/

namespace A259771.P13626637326722817145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053265 n - A053267 n - (f1 (n + 1) - f1 n)

end

end A259771.P13626637326722817145

/-! ## A259771.P5627916037629525753

`A053261(2*n+1)-A053267(n+1)`
-/

namespace A259771.P5627916037629525753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053261 (2 * n + 1) - A053267 (n + 1)

end

end A259771.P5627916037629525753

/-! ## A259771.P12017752897867494523

`A053265(n)-A282537(n+1)`
-/

namespace A259771.P12017752897867494523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053265 n - A282537 (n + 1)

end

end A259771.P12017752897867494523

/-! ## A259771.P15580138019088920731

`A053261(2*n+1)-A282537(n+1)`
-/

namespace A259771.P15580138019088920731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053261 (2 * n + 1) - A282537 (n + 1)

end

end A259771.P15580138019088920731

/-!
# A259772: Primes p such that p^3 + q^2 + r is also prime, where p,q,r are consecutive primes.

The programs for A259772, there is no canonical definition to state claims against.
-/

/-! ## A259772.P5381305826768568657

`floor(root(A258269(n+1), 3))`
-/

namespace A259772.P5381305826768568657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A258269 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A259772.P5381305826768568657

/-! ## A259772.P1982787138042746937

`ceil(root(A258269(n+1), 3))-A165326(n)²`
-/

namespace A259772.P1982787138042746937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A258269 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉ - A165326 n ^ 2

end

end A259772.P1982787138042746937

/-! ## A259772.P10829675897101120742

`ceil(root(A258269(n+1), 3))-A054977(n+1)`
-/

namespace A259772.P10829675897101120742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A258269 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉ - A054977 (n + 1)

end

end A259772.P10829675897101120742

/-! ## A259772.P1115030687589278024

`A001414(ceil(root(A258269(n+1), 3))-1)`
-/

namespace A259772.P1115030687589278024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (⌈(A258269 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉ - 1).toNat

end

end A259772.P1115030687589278024

/-! ## A259772.P16096498152772581518

`A006530(ceil(root(A258269(n+1), 3))-1)`
-/

namespace A259772.P16096498152772581518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (⌈(A258269 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉ - 1).toNat

end

end A259772.P16096498152772581518

/-! ## A259772.P12405110221165999945

`A020639(ceil(root(A258269(n+1), 3))-1)`
-/

namespace A259772.P12405110221165999945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (⌈(A258269 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉ - 1).toNat

end

end A259772.P12405110221165999945

/-! ## A259772.P7096671585741219053

`A039649(ceil(root(A258269(n+1), 3))-1)`
-/

namespace A259772.P7096671585741219053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (⌈(A258269 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉ - 1).toNat

end

end A259772.P7096671585741219053

/-! ## A259772.P316261092352391305

`A069208(ceil(root(A258269(n+1), 3))-1)`
-/

namespace A259772.P316261092352391305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069208 (⌈(A258269 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉ - 1).toNat

end

end A259772.P316261092352391305

/-! ## A259772.P5629341800885390352

`A075860(ceil(root(A258269(n+1), 3))-1)`
-/

namespace A259772.P5629341800885390352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075860 (⌈(A258269 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉ - 1).toNat

end

end A259772.P5629341800885390352

/-!
# A259773: Product of the digits of the n-th Lucas number.

The programs for A259773, the canonical program `A259773.P1634430538473741223` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259773 has offset 0).

The definition of A259773 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A259773.P1634430538473741223

`A007954(A000032(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A259773

/-- `A007954(A000032(n))` -/
def P1634430538473741223.Spec : Prop :=
  ∀ n, P1634430538473741223.a n = A259773 n

theorem P1634430538473741223.correct : P1634430538473741223.Spec := by
  intro n
  simp only [A259773]

end A259773

/-!
# A259774: Expansion of f(x, x^7) / f(x, x^3) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A259774, there is no canonical definition to state claims against.
-/

/-! ## A259774.P13930681941655919964

`(-1)^n*A036015(n)`
-/

namespace A259774.P13930681941655919964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A036015 n

end

end A259774.P13930681941655919964

/-! ## A259774.P17832061238833227624

`A029838(2*n+1)`
-/

namespace A259774.P17832061238833227624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029838 (2 * n + 1)

end

end A259774.P17832061238833227624

/-! ## A259774.P13103686848356827643

`-A082303(2*n+1)`
-/

namespace A259774.P13103686848356827643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A082303 (2 * n + 1)

end

end A259774.P13103686848356827643

/-! ## A259774.P10845216610885290431

`A036015(n)*A036016(n)/A258741(n)`
-/

namespace A259774.P10845216610885290431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036015 n * A036016 n : ℚ) / (A258741 n : ℚ)

end

end A259774.P10845216610885290431

/-! ## A259774.P7559407710110431777

`A000007(n+1)-A082303(2*n+1)`
-/

namespace A259774.P7559407710110431777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A082303 (2 * n + 1)

end

end A259774.P7559407710110431777

/-! ## A259774.P18181280538704853786

`A057077(2*n)*A316384(2*n+1)`
-/

namespace A259774.P18181280538704853786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A316384 (2 * n + 1)

end

end A259774.P18181280538704853786

/-! ## A259774.P9193923841293491306

`A087960(2*n)*A316384(2*n+1)`
-/

namespace A259774.P9193923841293491306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A316384 (2 * n + 1)

end

end A259774.P9193923841293491306

/-! ## A259774.P17655277715086894200

`1-(A082303(2*n+1)+A033999(2*n))`
-/

namespace A259774.P17655277715086894200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A082303 (2 * n + 1) + A033999 (2 * n))

end

end A259774.P17655277715086894200

/-! ## A259774.P16556717397825736356

`A035444(2*n+1)-A082303(2*n+1)`
-/

namespace A259774.P16556717397825736356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (2 * n + 1) - A082303 (2 * n + 1)

end

end A259774.P16556717397825736356

/-! ## A259774.P16571505058006183949

`A051516(2*n+1)-A082303(2*n+1)`
-/

namespace A259774.P16571505058006183949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (2 * n + 1) - A082303 (2 * n + 1)

end

end A259774.P16571505058006183949

/-! ## A259774.P14150442611493436923

`A274719(2*n+1)-A082303(2*n+1)`
-/

namespace A259774.P14150442611493436923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274719 (2 * n + 1) - A082303 (2 * n + 1)

end

end A259774.P14150442611493436923

/-! ## A259774.P5000698340402687598

`A033999(2*n+1)*A082303(2*n+1)`
-/

namespace A259774.P5000698340402687598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A082303 (2 * n + 1)

end

end A259774.P5000698340402687598

/-! ## A259774.P2156792311850832416

`A004526(2*n)-(A082303(2*n+1)+n)`
-/

namespace A259774.P2156792311850832416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * n) - (A082303 (2 * n + 1) + (n : ℤ))

end

end A259774.P2156792311850832416

/-! ## A259774.P10145125005560103643

`n*A033322(n+2)-A082303(2*n+1)`
-/

namespace A259774.P10145125005560103643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033322 (n + 2) - A082303 (2 * n + 1)

end

end A259774.P10145125005560103643

/-! ## A259774.P11074152353619747664

`A283000(4*n+2)`
-/

namespace A259774.P11074152353619747664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283000 (4 * n + 2)

end

end A259774.P11074152353619747664

/-! ## A259774.P10305110449192804432

`A093085(8*n+4)`
-/

namespace A259774.P10305110449192804432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093085 (8 * n + 4)

end

end A259774.P10305110449192804432

/-! ## A259774.P7504377818943141438

`A208589(8*n+4)`
-/

namespace A259774.P7504377818943141438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208589 (8 * n + 4)

end

end A259774.P7504377818943141438

/-! ## A259774.P12477462555506856213

`A134178(A004770(n+1))`
-/

namespace A259774.P12477462555506856213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134178 (A004770 (n + 1)).toNat

end

end A259774.P12477462555506856213

/-! ## A259774.P11011758593613009562

`A283023(6*(2*n+1))`
-/

namespace A259774.P11011758593613009562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283023 (6 * (2 * n + 1))

end

end A259774.P11011758593613009562

/-! ## A259774.P4627891767479631198

`A134178(A073762(n+1))`
-/

namespace A259774.P4627891767479631198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134178 (A073762 (n + 1)).toNat

end

end A259774.P4627891767479631198

/-!
# A259775: Stepped path in P(k,n) array of k-th partial sums of squares (A000290).

The programs for A259775, the canonical program `A259775.P2988660272303760513` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259775 has offset 1).

The definition of A259775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259775.P2988660272303760513

`A029644(A184676(n+2))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A259775

/-- `A029644(A184676(n+2))` -/
def P2988660272303760513.Spec : Prop :=
  ∀ n, P2988660272303760513.a n = A259775 (n + 1)

theorem P2988660272303760513.correct : P2988660272303760513.Spec := by
  intro n
  simp only [A259775, Nat.add_sub_cancel]

end A259775

/-! ## A259775.P2903869415047955320

`A125165(∑[2-n%2+n])`
-/

namespace A259775.P2903869415047955320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n % 2 : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125165 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A259775.P2903869415047955320

namespace A259775

/-- `A125165(∑[2-n%2+n])` -/
def P2903869415047955320.Spec : Prop :=
  ∀ n, P2903869415047955320.a n = A259775 (n + 1)

end A259775

/-! ## A259775.P3845539800530355774

`A125165(∑[or(1, n)]+n+1)`
-/

namespace A259775.P3845539800530355774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125165 (∑ j ∈ Finset.range (n + 1), f1 j + n + 1)

end

end A259775.P3845539800530355774

namespace A259775

/-- `A125165(∑[or(1, n)]+n+1)` -/
def P3845539800530355774.Spec : Prop :=
  ∀ n, P3845539800530355774.a n = A259775 (n + 1)

end A259775

/-! ## A259775.P5634726157361388011

`A125165(A080476(n+2))`
-/

namespace A259775.P5634726157361388011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125165 (A080476 (n + 2)).toNat

end

end A259775.P5634726157361388011

namespace A259775

/-- `A125165(A080476(n+2))` -/
def P5634726157361388011.Spec : Prop :=
  ∀ n, P5634726157361388011.a n = A259775 (n + 1)

end A259775

/-! ## A259775.P15667854622856467232

`A029655(floor(n/2)+∑[n+2]+4)`
-/

namespace A259775.P15667854622856467232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 (⌊(n : ℚ) / 2⌋ + ((∑ j ∈ Finset.range (n + 1), f1 j + 4 : ℕ) : ℤ)).toNat

end

end A259775.P15667854622856467232

namespace A259775

/-- `A029655(floor(n/2)+∑[n+2]+4)` -/
def P15667854622856467232.Spec : Prop :=
  ∀ n, P15667854622856467232.a n = A259775 (n + 1)

end A259775

/-!
# A259776: Number A(n,k) of permutations p of [n] with no fixed points and displacement of elements restricted by k: 1 <= |p(i)-i| <= k, square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A259776, there is no canonical definition to state claims against.
-/

/-! ## A259776.P18383767131698809222

`A333817(A329515(n)²)`
-/

namespace A259776.P18383767131698809222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333817 (A329515 n ^ 2).toNat

end

end A259776.P18383767131698809222

/-! ## A259776.P11026878496603384768

`A248908(A203647(n+1))`
-/

namespace A259776.P11026878496603384768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248908 (A203647 (n + 1)).toNat

end

end A259776.P11026878496603384768

/-! ## A259776.P5149933740150070151

`A248908(A137855(comp[∑[n]]))`
-/

namespace A259776.P5149933740150070151
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248908 (A137855 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A259776.P5149933740150070151

/-! ## A259776.P7841503787293002053

`A383706(2*A212829(n+1))`
-/

namespace A259776.P7841503787293002053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383706 (2 * A212829 (n + 1)).toNat

end

end A259776.P7841503787293002053

/-! ## A259776.P5764028719446528434

`A327005(n+1)%A127907(n+1)`
-/

namespace A259776.P5764028719446528434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327005 (n + 1)) (A127907 (n + 1))

end

end A259776.P5764028719446528434

/-!
# A259777: Number of permutations p of [n] with no fixed points and displacement of elements restricted by four: 1 <= |p(i)-i| <= 4.

The programs for A259777, there is no canonical definition to state claims against.
-/

/-! ## A259777.P378762908378230544

`A259776(A052905(n+2))`
-/

namespace A259777.P378762908378230544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A052905 (n + 2)).toNat

end

end A259777.P378762908378230544

/-! ## A259777.P14368582691404757474

`A259776(eq[4, A025581(n)])`
-/

namespace A259777.P14368582691404757474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259777.P14368582691404757474

/-! ## A259777.P7789661855401761348

`A259776(eq[9, A099375(n)])`
-/

namespace A259777.P7789661855401761348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259777.P7789661855401761348

/-! ## A259777.P5916963560764311337

`A259776(A055999(n+2)+1)`
-/

namespace A259777.P5916963560764311337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A055999 (n + 2) + 1).toNat

end

end A259777.P5916963560764311337

/-! ## A259777.P12629078198767986185

`A259776(A027379(n+3)-2)`
-/

namespace A259777.P12629078198767986185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A027379 (n + 3) - 2).toNat

end

end A259777.P12629078198767986185

/-!
# A259778: Number of permutations p of [n] with no fixed points and displacement of elements restricted by five: 1 <= |p(i)-i| <= 5.

The programs for A259778, there is no canonical definition to state claims against.
-/

/-! ## A259778.P2743637231781760557

`A259776(A055999(n+3))`
-/

namespace A259778.P2743637231781760557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A055999 (n + 3)).toNat

end

end A259778.P2743637231781760557

/-! ## A259778.P7803960575136134244

`A259776(Δ[A023551(n+1)])`
-/

namespace A259778.P7803960575136134244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (f1 (n + 1) - f1 n).toNat

end

end A259778.P7803960575136134244

/-! ## A259778.P15396237974657598667

`A259776(A052905(n+3)-1)`
-/

namespace A259778.P15396237974657598667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A052905 (n + 3) - 1).toNat

end

end A259778.P15396237974657598667

/-! ## A259778.P9224758529907832657

`A259776(A000217(n+6)-6)`
-/

namespace A259778.P9224758529907832657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A000217 (n + 6) - 6).toNat

end

end A259778.P9224758529907832657

/-! ## A259778.P5441177400967742021

`A259776(A000124(n+6)-7)`
-/

namespace A259778.P5441177400967742021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A000124 (n + 6) - 7).toNat

end

end A259778.P5441177400967742021

/-!
# A259779: Number of permutations p of [n] with no fixed points and displacement of elements restricted by six: 1 <= |p(i)-i| <= 6.

The programs for A259779, there is no canonical definition to state claims against.
-/

/-! ## A259779.P3272380521625613557

`A259776(eq[6, A025581(n)])`
-/

namespace A259779.P3272380521625613557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259779.P3272380521625613557

/-! ## A259779.P9154051846715241259

`A259776(A000217(n+7)-7)`
-/

namespace A259779.P9154051846715241259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A000217 (n + 7) - 7).toNat

end

end A259779.P9154051846715241259

/-! ## A259779.P10097233371885768466

`A259776(eq[7, A004736(n+1)])`
-/

namespace A259779.P10097233371885768466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259779.P10097233371885768466

/-! ## A259779.P17788415858731739991

`A259776(2*n+A000217(n+5)+6)`
-/

namespace A259779.P17788415858731739991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 ((2 * n : ℤ) + (A000217 (n + 5) + 6)).toNat

end

end A259779.P17788415858731739991

/-! ## A259779.P3173803862433276101

`A259776(A000124(n+7)-7-A007318(C(n, 2)))`
-/

namespace A259779.P3173803862433276101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A000124 (n + 7) - 7 - A007318 (Nat.choose n 2)).toNat

end

end A259779.P3173803862433276101

/-!
# A259780: Number of permutations p of [n] with no fixed points and displacement of elements restricted by seven: 1 <= |p(i)-i| <= 7.

The programs for A259780, there is no canonical definition to state claims against.
-/

/-! ## A259780.P5564449443394165339

`A259776(A155212(n+4))`
-/

namespace A259780.P5564449443394165339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A155212 (n + 4)).toNat

end

end A259780.P5564449443394165339

/-! ## A259780.P17537210338665184459

`A259776(A054254(n+8)-6)`
-/

namespace A259780.P17537210338665184459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A054254 (n + 8) - 6).toNat

end

end A259780.P17537210338665184459

/-! ## A259780.P10355080663289641540

`A259776(A000217(n+8)-8)`
-/

namespace A259780.P10355080663289641540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A000217 (n + 8) - 8).toNat

end

end A259780.P10355080663289641540

/-! ## A259780.P6115653997317640284

`A259776(eq[8, A004736(n+1)])`
-/

namespace A259780.P6115653997317640284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259780.P6115653997317640284

/-! ## A259780.P11764286136825719089

`A259776(2*n+A034856(n+5)+9)`
-/

namespace A259780.P11764286136825719089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 ((2 * n : ℤ) + (A034856 (n + 5) + 9)).toNat

end

end A259780.P11764286136825719089

/-!
# A259781: Number of permutations p of [n] with no fixed points and displacement of elements restricted by eight: 1 <= |p(i)-i| <= 8.

The programs for A259781, there is no canonical definition to state claims against.
-/

/-! ## A259781.P4922987956819844111

`A259776(A155212(n+5)-1)`
-/

namespace A259781.P4922987956819844111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A155212 (n + 5) - 1).toNat

end

end A259781.P4922987956819844111

/-! ## A259781.P12878109560457663359

`A259776(A000217(n+9)-9)`
-/

namespace A259781.P12878109560457663359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A000217 (n + 9) - 9).toNat

end

end A259781.P12878109560457663359

/-! ## A259781.P16331900594493580920

`A259776(A000124(n+9)-10)`
-/

namespace A259781.P16331900594493580920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A000124 (n + 9) - 10).toNat

end

end A259781.P16331900594493580920

/-! ## A259781.P922291881781125533

`A259776(A161680(n+10)-9)`
-/

namespace A259781.P922291881781125533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A161680 (n + 10) - 9).toNat

end

end A259781.P922291881781125533

/-! ## A259781.P7137898595874093643

`A259776(A000096(n+7)+n+1)`
-/

namespace A259781.P7137898595874093643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A259781.P7137898595874093643

/-!
# A259782: Number of permutations p of [n] with no fixed points and displacement of elements restricted by nine: 1 <= |p(i)-i| <= 9.

The programs for A259782, there is no canonical definition to state claims against.
-/

/-! ## A259782.P16873036378742740145

`A259776(A056000(n+6))`
-/

namespace A259782.P16873036378742740145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A056000 (n + 6)).toNat

end

end A259782.P16873036378742740145

/-! ## A259782.P15114024406539904527

`A259776(A000217(n+10)-10)`
-/

namespace A259782.P15114024406539904527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A000217 (n + 10) - 10).toNat

end

end A259782.P15114024406539904527

/-! ## A259782.P4335830213702593604

`A259776(A000096(n+8)+n+1)`
-/

namespace A259782.P4335830213702593604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A000096 (n + 8) + (n + 1 : ℤ)).toNat

end

end A259782.P4335830213702593604

/-! ## A259782.P8042522712448519128

`A259776(A000124(n+9)+n-1)`
-/

namespace A259782.P8042522712448519128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A000124 (n + 9) + ((n : ℤ) - 1)).toNat

end

end A259782.P8042522712448519128

/-!
# A259783: Number of permutations p of [n] with no fixed points and displacement of elements restricted by ten: 1 <= |p(i)-i| <= 10.

The programs for A259783, there is no canonical definition to state claims against.
-/

/-! ## A259783.P13741561356160006907

`A259776(A000217(n+11)-11)`
-/

namespace A259783.P13741561356160006907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A000217 (n + 11) - 11).toNat

end

end A259783.P13741561356160006907

/-! ## A259783.P1159577953605809139

`A259776(A000096(n+9)+n+1)`
-/

namespace A259783.P1159577953605809139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A000096 (n + 9) + (n + 1 : ℤ)).toNat

end

end A259783.P1159577953605809139

/-! ## A259783.P2640720284795663736

`A259776(A000124(n+10)+n-1)`
-/

namespace A259783.P2640720284795663736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A000124 (n + 10) + ((n : ℤ) - 1)).toNat

end

end A259783.P2640720284795663736

/-! ## A259783.P2827335543309194147

`A259776((n+9)²-A167499(n+5))`
-/

namespace A259783.P2827335543309194147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (((n + 9) ^ 2 : ℤ) - A167499 (n + 5)).toNat

end

end A259783.P2827335543309194147

/-! ## A259783.P13908854973252663921

`A259776(A055999(n+7)+A020715(n))`
-/

namespace A259783.P13908854973252663921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A055999 (n + 7) + A020715 n).toNat

end

end A259783.P13908854973252663921

/-!
# A259784: Number T(n,k) of permutations p of [n] with no fixed points where the maximal displacement of an element equals k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A259784, there is no canonical definition to state claims against.
-/

/-! ## A259784.P11970177484061338769

`xor(1, and(A007318(n), A265773(n+1)))`
-/

namespace A259784.P11970177484061338769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.land (A007318 n) (A265773 (n + 1)))

end

end A259784.P11970177484061338769

/-! ## A259784.P10351736981016623958

`and(A014396(A003082(n)), A191646(n))`
-/

namespace A259784.P10351736981016623958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014396 (A003082 n).toNat) (A191646 n)

end

end A259784.P10351736981016623958

/-! ## A259784.P10467234209939770536

`A004442(and(A007318(n), A265773(n+1)))`
-/

namespace A259784.P10467234209939770536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.land (A007318 n) (A265773 (n + 1))).toNat

end

end A259784.P10467234209939770536

/-! ## A259784.P3223689868621219291

`A000005(A281100(n))%A029635(n)`
-/

namespace A259784.P3223689868621219291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A281100 n).toNat) (A029635 n)

end

end A259784.P3223689868621219291

/-! ## A259784.P17585209571124587323

`A191646(n)*A285960(A035008(2*(n+2)))`
-/

namespace A259784.P17585209571124587323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191646 n * A285960 (A035008 (2 * (n + 2))).toNat

end

end A259784.P17585209571124587323

/-!
# A259785: Number of permutations p of [2n] with no fixed points where the maximal displacement of an element equals n.

The programs for A259785, there is no canonical definition to state claims against.
-/

/-! ## A259785.P4681974056184160966

`A259784(∑[4*n])`
-/

namespace A259785.P4681974056184160966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259785.P4681974056184160966

/-! ## A259785.P10250695472230294867

`A259784(A046092(n))%A013033(n)`
-/

namespace A259785.P10250695472230294867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259784 (A046092 n).toNat) (A013033 n)

end

end A259785.P10250695472230294867

/-! ## A259785.P7530929472704113045

`gcd(A111332(n), A259784(A046092(n)))`
-/

namespace A259785.P7530929472704113045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111332 n) (A259784 (A046092 n).toNat)

end

end A259785.P7530929472704113045

/-! ## A259785.P11843319673287606281

`or(A259784(A046092(n)), A259784(n))`
-/

namespace A259785.P11843319673287606281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A259784 (A046092 n).toNat) (A259784 n)

end

end A259785.P11843319673287606281

/-! ## A259785.P9320983917085242289

`A259784(A046092(n))^log2(A036453(n+1))`
-/

namespace A259785.P9320983917085242289
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A259784 (A046092 n).toNat : ℝ) ^ (Real.logb 2 (A036453 (n + 1) : ℝ))

end

end A259785.P9320983917085242289

/-!
# A259787: Total element sum of all n X n Tesler matrices of nonnegative integers.

The programs for A259787, there is no canonical definition to state claims against.
-/

/-! ## A259787.P13776378691454731760

`A313782(Δ[A293379(n)])`
-/

namespace A259787.P13776378691454731760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313782 (f1 (n + 1) - f1 n).toNat

end

end A259787.P13776378691454731760

/-!
# A259790: Expansion of f(-x)^3 * phi(x^2) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A259790, there is no canonical definition to state claims against.
-/

/-! ## A259790.P13326563209785220673

`A002171(2*n)`
-/

namespace A259790.P13326563209785220673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002171 (2 * n)

end

end A259790.P13326563209785220673

/-! ## A259790.P11449861943361152551

`A138515(2*n)`
-/

namespace A259790.P11449861943361152551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138515 (2 * n)

end

end A259790.P11449861943361152551

/-! ## A259790.P4594331673270773867

`or(A002171(n+n), A010054(n))`
-/

namespace A259790.P4594331673270773867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002171 (n + n)) (A010054 n)

end

end A259790.P4594331673270773867

/-! ## A259790.P6577902014928291919

`A002171(n+n)%A006094(n+1)`
-/

namespace A259790.P6577902014928291919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002171 (n + n)) (A006094 (n + 1))

end

end A259790.P6577902014928291919

/-! ## A259790.P9243401635264443252

`A138515(n+n)%A007510(n+1)`
-/

namespace A259790.P9243401635264443252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138515 (n + n)) (A007510 (n + 1))

end

end A259790.P9243401635264443252

/-! ## A259790.P9174429037545596758

`A138515(A005843(n))%A016873(n)`
-/

namespace A259790.P9174429037545596758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138515 (A005843 n).toNat) (A016873 n)

end

end A259790.P9174429037545596758

/-!
# A259792: Number of partitions of n^3 into cubes.

The programs for A259792, there is no canonical definition to state claims against.
-/

/-! ## A259792.P2387254476652641450

`A003108(n^3)`
-/

namespace A259792.P2387254476652641450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (n ^ 3)

end

end A259792.P2387254476652641450

/-! ## A259792.P16669110308342309846

`A003108(n*n²)*A304042(n)`
-/

namespace A259792.P16669110308342309846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (n * n ^ 2) * A304042 n

end

end A259792.P16669110308342309846

/-! ## A259792.P1791453622444374808

`A003108(n*n²)%A004171(n)`
-/

namespace A259792.P1791453622444374808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003108 (n * n ^ 2)) (A004171 n)

end

end A259792.P1791453622444374808

/-! ## A259792.P7140190938024994090

`lcm(A003108(n*n²), A033999(n))`
-/

namespace A259792.P7140190938024994090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003108 (n * n ^ 2)) (A033999 n)

end

end A259792.P7140190938024994090

/-! ## A259792.P8769278013275468006

`A003108(n*n²)*A054977(n+1)`
-/

namespace A259792.P8769278013275468006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (n * n ^ 2) * A054977 (n + 1)

end

end A259792.P8769278013275468006

/-!
# A259793: Number of partitions of n^4 into fourth powers.

The programs for A259793, there is no canonical definition to state claims against.
-/

/-! ## A259793.P18055455984309505382

`A259799(∑[n+4]+3)`
-/

namespace A259793.P18055455984309505382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A259793.P18055455984309505382

/-! ## A259793.P8264078336863654102

`A046042(A028310(n^4))`
-/

namespace A259793.P8264078336863654102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046042 (A028310 (n ^ 4)).toNat

end

end A259793.P8264078336863654102

/-! ## A259793.P4747639207183682461

`A046042(A028310(n)²²)`
-/

namespace A259793.P4747639207183682461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046042 ((A028310 n ^ 2) ^ 2).toNat

end

end A259793.P4747639207183682461

/-! ## A259793.P1648489985176462139

`A046042((A000007(n)+n)²²)`
-/

namespace A259793.P1648489985176462139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046042 (((A000007 n + (n : ℤ)) ^ 2) ^ 2).toNat

end

end A259793.P1648489985176462139

/-! ## A259793.P7282174248039981672

`A046042(A000583(n)+floor(1/(n+1)))`
-/

namespace A259793.P7282174248039981672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046042 (A000583 n + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A259793.P7282174248039981672

/-!
# A259794: Number of partitions of n^5 into fifth powers.

The programs for A259794, there is no canonical definition to state claims against.
-/

/-! ## A259794.P17282359322741166301

`A259799(Δ[A264443(n)])`
-/

namespace A259794.P17282359322741166301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (f1 (n + 1) - f1 n).toNat

end

end A259794.P17282359322741166301

/-! ## A259794.P7855622526688647968

`A259799(A056115(n)+11)`
-/

namespace A259794.P7855622526688647968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (A056115 n + 11).toNat

end

end A259794.P7855622526688647968

/-! ## A259794.P9697542647210821022

`A259799(eq[2, A092921(n)])`
-/

namespace A259794.P9697542647210821022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259794.P9697542647210821022

/-! ## A259794.P18310293823375048944

`A259799(eq[3, A152157(n)])`
-/

namespace A259794.P18310293823375048944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259794.P18310293823375048944

/-! ## A259794.P17079495615508705600

`A259799(eq[4, A193592(n)])`
-/

namespace A259794.P17079495615508705600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259794.P17079495615508705600

/-!
# A259795: Number of partitions of n^6 into sixth powers.

The programs for A259795, there is no canonical definition to state claims against.
-/

/-! ## A259795.P3563743796283067675

`A259799(A302537(n)+15)`
-/

namespace A259795.P3563743796283067675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (A302537 n + 15).toNat

end

end A259795.P3563743796283067675

/-! ## A259795.P16298587932903908151

`A259799(A056119(n)+16)`
-/

namespace A259795.P16298587932903908151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (A056119 n + 16).toNat

end

end A259795.P16298587932903908151

/-! ## A259795.P14142639898225944382

`A259799(eq[3, A219347(n)])`
-/

namespace A259795.P14142639898225944382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259795.P14142639898225944382

/-! ## A259795.P13915214984375012612

`A259799(eq[5, A152157(n)])`
-/

namespace A259795.P13915214984375012612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259795.P13915214984375012612

/-! ## A259795.P4660070740930976101

`A259799(eq[5, A193592(n)])`
-/

namespace A259795.P4660070740930976101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259795.P4660070740930976101

/-!
# A259796: Number of partitions of 3^n into n-th powers.

The programs for A259796, the canonical program `A259796.P15851994839478741160` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259796 has offset 1).

The definition of A259796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259796.P15851994839478741160

`floor((3/2)^(n+1))+2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259796

/-- `floor((3/2)^(n+1))+2` -/
def P15851994839478741160.Spec : Prop :=
  ∀ n, P15851994839478741160.a n = A259796 (n + 1)

theorem P15851994839478741160.correct : P15851994839478741160.Spec := by
  intro n
  simp only [A259796, Nat.add_sub_cancel]

end A259796

/-! ## A259796.P562361176650201245

`record[A002379(A028242(n))+2]`
-/

namespace A259796.P562361176650201245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (A028242 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259796.P562361176650201245

namespace A259796

/-- `record[A002379(A028242(n))+2]` -/
def P562361176650201245.Spec : Prop :=
  ∀ n, P562361176650201245.a n = A259796 (n + 1)

end A259796

/-! ## A259796.P1036712737685643793

`record[A002379(A133310(n))+2]`
-/

namespace A259796.P1036712737685643793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (A133310 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259796.P1036712737685643793

namespace A259796

/-- `record[A002379(A133310(n))+2]` -/
def P1036712737685643793.Spec : Prop :=
  ∀ n, P1036712737685643793.a n = A259796 (n + 1)

end A259796

/-! ## A259796.P14326748997521721274

`record[A002379(A324346(n))+2]`
-/

namespace A259796.P14326748997521721274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (A324346 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259796.P14326748997521721274

namespace A259796

/-- `record[A002379(A324346(n))+2]` -/
def P14326748997521721274.Spec : Prop :=
  ∀ n, P14326748997521721274.a n = A259796 (n + 1)

end A259796

/-! ## A259796.P10012054640050610443

`ceil((2^n+∑[3^n]+1)/A000079(n))`
-/

namespace A259796.P10012054640050610443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 ^ n + (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℕ) : ℚ) / (A000079 n : ℚ)⌉

end

end A259796.P10012054640050610443

namespace A259796

/-- `ceil((2^n+∑[3^n]+1)/A000079(n))` -/
def P10012054640050610443.Spec : Prop :=
  ∀ n, P10012054640050610443.a n = A259796 (n + 1)

end A259796

/-!
# A259797: Number of partitions of 5^n into n-th powers.

The programs for A259797, there is no canonical definition to state claims against.
-/

/-! ## A259797.P1801297101994294636

`A259799(A167499(n+4)+1)`
-/

namespace A259797.P1801297101994294636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (A167499 (n + 4) + 1).toNat

end

end A259797.P1801297101994294636

/-! ## A259797.P14147543816169379888

`A259799(A167614(n+4)+3)`
-/

namespace A259797.P14147543816169379888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (A167614 (n + 4) + 3).toNat

end

end A259797.P14147543816169379888

/-! ## A259797.P10120014271709190045

`A259799(A246172(n+1)+20)`
-/

namespace A259797.P10120014271709190045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (A246172 (n + 1) + 20).toNat

end

end A259797.P10120014271709190045

/-! ## A259797.P17113822359005324188

`A259799(eq[5, A002262(n)]+1)`
-/

namespace A259797.P17113822359005324188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A259797.P17113822359005324188

/-! ## A259797.P5975470885192158097

`A259799(eq[7, A131818(n+1)])`
-/

namespace A259797.P5975470885192158097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259797.P5975470885192158097

/-!
# A259798: Number of partitions of 6^n into n-th powers.

The programs for A259798, there is no canonical definition to state claims against.
-/

/-! ## A259798.P13099033012748778796

`A259799(eq[11, A066657(n)])`
-/

namespace A259798.P13099033012748778796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259798.P13099033012748778796

/-! ## A259798.P4483958164610774436

`A259799(A167614(n+5)+4)`
-/

namespace A259798.P4483958164610774436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (A167614 (n + 5) + 4).toNat

end

end A259798.P4483958164610774436

/-! ## A259798.P953034188486290838

`A259799(A000217(n+6)+7)`
-/

namespace A259798.P953034188486290838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (A000217 (n + 6) + 7).toNat

end

end A259798.P953034188486290838

/-! ## A259798.P1443063163972110138

`A259799(A141214(n+3)+10)`
-/

namespace A259798.P1443063163972110138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (A141214 (n + 3) + 10).toNat

end

end A259798.P1443063163972110138

/-! ## A259798.P6278866242839603514

`A259799(A155212(n+2)+15)`
-/

namespace A259798.P6278866242839603514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (A155212 (n + 2) + 15).toNat

end

end A259798.P6278866242839603514

/-!
# A259799: Array read by antidiagonals upwards: T(n,k) = number of partitions of k^n into n-th powers (n>=1, k>=0).

The programs for A259799, there is no canonical definition to state claims against.
-/

/-! ## A259799.P15364938519761130206

`A221671(A334622(n))`
-/

namespace A259799.P15364938519761130206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221671 (A334622 n).toNat

end

end A259799.P15364938519761130206

/-! ## A259799.P3050049179226614540

`A126236(A334622(n)+1)`
-/

namespace A259799.P3050049179226614540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126236 (A334622 n + 1).toNat

end

end A259799.P3050049179226614540

/-! ## A259799.P8726277925032074745

`A003056(A203647(n+1)^A053878(n+2))`
-/

namespace A259799.P8726277925032074745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A203647 (n + 1) : ℚ) ^ (A053878 (n + 2) : ℤ))).toNat

end

end A259799.P8726277925032074745

/-! ## A259799.P15512768372448164443

`A003056(A203647(n+1)%A050264(n+1))`
-/

namespace A259799.P15512768372448164443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A203647 (n + 1)) (A050264 (n + 1))).toNat

end

end A259799.P15512768372448164443

/-! ## A259799.P13941211458537865438

`A003056(A203647(n+1))%A159585(n+5)`
-/

namespace A259799.P13941211458537865438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A203647 (n + 1)).toNat) (A159585 (n + 5))

end

end A259799.P13941211458537865438

