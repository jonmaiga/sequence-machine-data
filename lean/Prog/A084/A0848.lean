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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A084802: Least positive integers, all distinct, that satisfy Sum_{n>0} 1/a(n)^z = 0, where z=(24+i*7)/25.

The programs for A084802, there is no canonical definition to state claims against.
-/

/-! ## A084802.P3284832869555685604

`A296967(A046109(n))+A085148(2*n+1)`
-/

namespace A084802.P3284832869555685604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296967 (A046109 n).toNat + A085148 (2 * n + 1)

end

end A084802.P3284832869555685604

/-!
# A084805: Least positive integers, all distinct, that satisfy Sum_{n>0} 1/a(n)^z = 0, where z=(1+I)/sqrt(2).

The programs for A084805, there is no canonical definition to state claims against.
-/

/-! ## A084805.P6112807392927010668

`A083028(2*n+5)%A082704(n+1)`
-/

namespace A084805.P6112807392927010668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083028 (2 * n + 5)) (A082704 (n + 1))

end

end A084805.P6112807392927010668

/-!
# A084806: Least positive integers, all distinct, that satisfy Sum_{n>0} 1/a(n)^z = 0, where z=1/2 + I.

The programs for A084806, there is no canonical definition to state claims against.
-/

/-! ## A084806.P2219370180064568203

`lt[A159284(n), A144150(2*n+3)]+1`
-/

namespace A084806.P2219370180064568203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A084806.P2219370180064568203

/-! ## A084806.P11777215349886250864

`lt[A232797(A028983(2*n+3)), A296935(3*(n+1))]`
-/

namespace A084806.P11777215349886250864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (A028983 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084806.P11777215349886250864

/-! ## A084806.P16785549651223786069

`A004200(A004118(n))+A004131(n+2)`
-/

namespace A084806.P16785549651223786069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 (A004118 n).toNat + A004131 (n + 2)

end

end A084806.P16785549651223786069

/-! ## A084806.P10653645132704147296

`lt[A206563(2*n+3), A246688(A026272(n+1))]`
-/

namespace A084806.P10653645132704147296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206563 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246688 (A026272 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084806.P10653645132704147296

/-!
# A084808: Least positive integers, all distinct, that satisfy sum(n>0,1/a(n)^z)=0, where z=1/2+I*sqrt(2).

The programs for A084808, there is no canonical definition to state claims against.
-/

/-! ## A084808.P13188981164763473091

`∑[A297770(A056431(n+1))]+n`
-/

namespace A084808.P13188981164763473091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A056431 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A084808.P13188981164763473091

/-! ## A084808.P10568540674699922742

`A156078(A052955(n)+1)+n+n+1`
-/

namespace A084808.P10568540674699922742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156078 (A052955 n + 1).toNat + (n : ℤ) + (n + 1 : ℤ)

end

end A084808.P10568540674699922742

/-! ## A084808.P7260128792470578199

`A316846(A006906(n+3)-5)`
-/

namespace A084808.P7260128792470578199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316846 (A006906 (n + 3) - 5).toNat

end

end A084808.P7260128792470578199

/-!
# A084809: Least positive integers, all distinct, that satisfy Sum_{n>0} 1/a(n)^z = 0, where z=(1+I*sqrt(3))/2.

The programs for A084809, there is no canonical definition to state claims against.
-/

/-! ## A084809.P9814520093283637114

`A070939((10*n)²)+∑[n]`
-/

namespace A084809.P9814520093283637114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 ((10 * n) ^ 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A084809.P9814520093283637114

/-! ## A084809.P846328587476166993

`A329202(A016777(3*n))+A000124(n)`
-/

namespace A084809.P846328587476166993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329202 (A016777 (3 * n)).toNat + A000124 n

end

end A084809.P846328587476166993

/-! ## A084809.P4873998267988366802

`lt[A360866(n+2), A191646(A194446(n+1))]`
-/

namespace A084809.P4873998267988366802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360866 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191646 (A194446 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084809.P4873998267988366802

/-!
# A084810: Least positive integers, all distinct, that satisfy Sum_{n>0} 1/a(n)^z = 0, where z=1/2+I*sqrt(3).

The programs for A084810, there is no canonical definition to state claims against.
-/

/-! ## A084810.P10601030126527551499

`∑[A004426(A134997(n+2))]`
-/

namespace A084810.P10601030126527551499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A134997 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084810.P10601030126527551499

/-! ## A084810.P11096007126151402525

`∑[A272171(∑[A087732(n+1)])]`
-/

namespace A084810.P11096007126151402525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087732 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272171 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084810.P11096007126151402525

/-! ## A084810.P10873141204326391500

`∑[A181819(A058800(n)+lcm(3, n)/3)]`
-/

namespace A084810.P10873141204326391500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (SequenceMachineLib.roundAway ((A058800 n : ℚ) + (Nat.lcm 3 n : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084810.P10873141204326391500

/-! ## A084810.P12063876936436483841

`∑[A347662(∑{e}[A105479(n), #]+4)]-1`
-/

namespace A084810.P12063876936436483841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105479 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347662 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A084810.P12063876936436483841

/-!
# A084814: Least integers that satisfy Sum_{n>=1} 1/a(n)^z = 0, where a(1)=1, a(n+1) > a(n) and z = i*Pi/2.

The programs for A084814, there is no canonical definition to state claims against.
-/

/-! ## A084814.P13767404798785031896

`A204980(A011782(2*n))-A045778(n+1)`
-/

namespace A084814.P13767404798785031896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204980 (A011782 (2 * n)).toNat - A045778 (n + 1)

end

end A084814.P13767404798785031896

/-! ## A084814.P9570466169834640059

`A076471(A006355(n+1)+A000032(2*(n+2)))`
-/

namespace A084814.P9570466169834640059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076471 (A006355 (n + 1) + A000032 (2 * (n + 2))).toNat

end

end A084814.P9570466169834640059

/-! ## A084814.P5990022322259024342

`A184414(a(n-1)+1)-4` with `a(0)=1, a(1)=4`
-/

namespace A084814.P5990022322259024342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A184414 (a (n - 1) + 1).toNat - 4

end

end A084814.P5990022322259024342

/-!
# A084815: Least integers that satisfy Sum_{n>=1} 1/a(n)^z = 0, where a(1)=1, a(n+1) > a(n) and z = i*Pi/4.

The programs for A084815, there is no canonical definition to state claims against.
-/

/-! ## A084815.P11598391058918457237

`A104217(A000302(n))-A052511(n+1)`
-/

namespace A084815.P11598391058918457237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104217 (A000302 n).toNat - A052511 (n + 1)

end

end A084815.P11598391058918457237

/-!
# A084816: Least integers that satisfy Sum_{n>=1} 1/a(n)^z = 0, where a(1)=1, a(n+1)>a(n) and z=I*2.

The programs for A084816, there is no canonical definition to state claims against.
-/

/-! ## A084816.P11269107968075334646

`A097992(∑[∑[a(n-2)²-5]])` with `a(0)=4, a(1)=5`
-/

namespace A084816.P11269107968075334646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n f2 =>
  f2 (n - 2) ^ 2 - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084816.P11269107968075334646

/-! ## A084816.P210340264214447467

`A002024(∑[∑{d}[n, (n+1)^#]]+n+1)`
-/

namespace A084816.P210340264214447467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (n + 1) ^ d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j + n + 1)

end

end A084816.P210340264214447467

/-!
# A084817: Least integers that satisfy Sum_{n>=1} 1/a(n)^z = 0, where a(1)=1, a(n+1)>a(n) and z=I/log(2).

The programs for A084817, there is no canonical definition to state claims against.
-/

/-! ## A084817.P3773523281470057656

`A116861(2*n+5)+A050296(A005717(n+2))`
-/

namespace A084817.P3773523281470057656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116861 (2 * n + 5) + A050296 (A005717 (n + 2)).toNat

end

end A084817.P3773523281470057656

/-! ## A084817.P13229625293087329707

`A346052(n+5)%p?[A218612(n+1)]`
-/

namespace A084817.P13229625293087329707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346052 (n + 5)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A084817.P13229625293087329707

/-!
# A084818: Least integers that satisfy Sum_{n>=1} 1/a(n)^z = 0, where a(1)=1, a(n+1)>a(n) and z=I/log(3).

The programs for A084818, there is no canonical definition to state claims against.
-/

/-! ## A084818.P8417623049244443627

`A225645(A212116(n))`
-/

namespace A084818.P8417623049244443627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225645 (A212116 (n + 35)).toNat

end

end A084818.P8417623049244443627

/-!
# A084819: Least integers that satisfy Sum_{n>=1} 1/a(n)^z = 0, where a(1)=1, a(n+1) > a(n) and z = i*Pi/(4*log(2)).

The programs for A084819, there is no canonical definition to state claims against.
-/

/-! ## A084819.P13561100136968429418

`or(A001221(A002698(n+2)), A007806(n+1))`
-/

namespace A084819.P13561100136968429418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A002698 (n + 2)).toNat) (A007806 (n + 1))

end

end A084819.P13561100136968429418

/-!
# A084820: Numbers n such that n, sigma(n) and phi(n) form an integer triangle, where sigma=A000203 is the divisor sum and phi=A000010 the totient.

The programs for A084820, the canonical program `A084820.P7694671206461547684` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084820 has offset 1).

The definition of A084820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084820.P10354972727451777285

`record[(n+1)%(A082729(n+1)+A000010(n+1))]`
-/

namespace A084820.P10354972727451777285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A082729 (n + 1) + A000010 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084820.P10354972727451777285

namespace A084820

/-- `record[(n+1)%(A082729(n+1)+A000010(n+1))]` -/
def P10354972727451777285.Spec : Prop :=
  ∀ n, P10354972727451777285.a n = A084820 (n + 1)

end A084820

/-! ## A084820.P15311434425566026026

`lt[A155085(n+1)-n-A000010(n+1), n+2]+1`
-/

namespace A084820.P15311434425566026026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n : ℤ) - A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A084820.P15311434425566026026

namespace A084820

/-- `lt[A155085(n+1)-n-A000010(n+1), n+2]+1` -/
def P15311434425566026026.Spec : Prop :=
  ∀ n, (P15311434425566026026.a n : ℤ) = A084820 (n + 1)

end A084820

/-! ## A084820.P18303048511467354593

`lt[A051612(n+1), n+1]+1`
-/

namespace A084820.P18303048511467354593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A084820.P18303048511467354593

namespace A084820

/-- `lt[A051612(n+1), n+1]+1` -/
def P18303048511467354593.Spec : Prop :=
  ∀ n, (P18303048511467354593.a n : ℤ) = A084820 (n + 1)

end A084820

/-! ## A084820.P185837787023307486

`lt[A051612(A028310(n)), n]`
-/

namespace A084820.P185837787023307486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A084820.P185837787023307486

namespace A084820

/-- `lt[A051612(A028310(n)), n]` -/
def P185837787023307486.Spec : Prop :=
  ∀ n, (P185837787023307486.a n : ℤ) = A084820 (n + 1)

end A084820

/-! ## A084820.P17615691745654048362

`lt[A001065(n+1), A000010(n+1)]+1`
-/

namespace A084820.P17615691745654048362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A084820.P17615691745654048362

namespace A084820

/-- `lt[A001065(n+1), A000010(n+1)]+1` -/
def P17615691745654048362.Spec : Prop :=
  ∀ n, (P17615691745654048362.a n : ℤ) = A084820 (n + 1)

end A084820

/-! ## A084820.P7694671206461547684

`lt[A000203(n+1), A121048(n+1)]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A084820

/-- `lt[A000203(n+1), A121048(n+1)]+1` -/
def P7694671206461547684.Spec : Prop :=
  ∀ n, (P7694671206461547684.a n : ℤ) = A084820 (n + 1)

theorem P7694671206461547684.correct : P7694671206461547684.Spec := by
  intro n
  simp only [A084820, Nat.add_sub_cancel]

end A084820

/-! ## A084820.P15132231108197656305

`lt[A001065(n+1), A039649(n+1)-1]+1`
-/

namespace A084820.P15132231108197656305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A084820.P15132231108197656305

namespace A084820

/-- `lt[A001065(n+1), A039649(n+1)-1]+1` -/
def P15132231108197656305.Spec : Prop :=
  ∀ n, (P15132231108197656305.a n : ℤ) = A084820 (n + 1)

end A084820

/-! ## A084820.P11817519922555687861

`A004442(eq[A051612(n+1)%(n+1), A051612(n+1)])`
-/

namespace A084820.P11817519922555687861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051612 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A084820.P11817519922555687861

namespace A084820

/-- `A004442(eq[A051612(n+1)%(n+1), A051612(n+1)])` -/
def P11817519922555687861.Spec : Prop :=
  ∀ n, P11817519922555687861.a n = A084820 (n + 1)

end A084820

/-! ## A084820.P2115297506013387733

`record[A033879(n+1)+A001065(n+1)%A000010(n+1)]`
-/

namespace A084820.P2115297506013387733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + Int.tmod (A001065 (n + 1)) (A000010 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084820.P2115297506013387733

namespace A084820

/-- `record[A033879(n+1)+A001065(n+1)%A000010(n+1)]` -/
def P2115297506013387733.Spec : Prop :=
  ∀ n, P2115297506013387733.a n = A084820 (n + 1)

end A084820

/-!
# A084821: Odd numbers m such that sigma(m) > m + phi(m), where sigma=A000203 is the divisor sum and phi=A000010 the totient.

The programs for A084821, there is no canonical definition to state claims against.
-/

/-! ## A084821.P12540497541232793451

`2*A229978(n+1)+1`
-/

namespace A084821.P12540497541232793451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A229978 (n + 1) + 1

end

end A084821.P12540497541232793451

/-! ## A084821.P3435028585854183808

`A005408(A229978(n+1))`
-/

namespace A084821.P3435028585854183808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A229978 (n + 1)).toNat

end

end A084821.P3435028585854183808

/-! ## A084821.P5112690497230718670

`A004273(A229978(n+1)+1)`
-/

namespace A084821.P5112690497230718670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A229978 (n + 1) + 1).toNat

end

end A084821.P5112690497230718670

/-! ## A084821.P12380737274601673454

`A004274(A229978(n+1)+2)`
-/

namespace A084821.P12380737274601673454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A229978 (n + 1) + 2).toNat

end

end A084821.P12380737274601673454

/-! ## A084821.P16717871255530962391

`A004281(A229978(n+1)+2)`
-/

namespace A084821.P16717871255530962391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 (A229978 (n + 1) + 2).toNat

end

end A084821.P16717871255530962391

/-! ## A084821.P1321005480787682427

`lt[n, A051612(A093178(n))]`
-/

namespace A084821.P1321005480787682427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A084821.P1321005480787682427

/-! ## A084821.P5106435694173150921

`A004442(2*A229978(n+1))`
-/

namespace A084821.P5106435694173150921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A229978 (n + 1)).toNat

end

end A084821.P5106435694173150921

/-! ## A084821.P16549035974419031816

`A109613(2*A229978(n+1))`
-/

namespace A084821.P16549035974419031816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * A229978 (n + 1)).toNat

end

end A084821.P16549035974419031816

/-! ## A084821.P3451646538232915601

`record[A079814(n+1)%A051612(A079814(n+1))]`
-/

namespace A084821.P3451646538232915601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079814 (n + 1)) (A051612 (A079814 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084821.P3451646538232915601

/-!
# A084822: 

The programs for A084822, there is no canonical definition to state claims against.
-/

/-! ## A084822.P7328974629002664871

`A023116(n+1)%72`
-/

namespace A084822.P7328974629002664871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023116 (n + 1)) 72

end

end A084822.P7328974629002664871

/-! ## A084822.P11137702625420951362

`or(char[A247602(3*n+1)], A023116(n+1))`
-/

namespace A084822.P11137702625420951362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247602 (3 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A023116 (n + 1))

end

end A084822.P11137702625420951362

/-! ## A084822.P15174684298058260409

`A023116(n+1)*A138138(A259936(n+1))`
-/

namespace A084822.P15174684298058260409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023116 (n + 1) * A138138 (A259936 (n + 1)).toNat

end

end A084822.P15174684298058260409

/-!
# A084829: Best packing of m>1 equal spheres in a sphere setting a new density record.

The programs for A084829, there is no canonical definition to state claims against.
-/

/-! ## A084829.P13747622423272374876

`lt[A115660(A261775(n)), A353808(3*n+2)]`
-/

namespace A084829.P13747622423272374876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A261775 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353808 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084829.P13747622423272374876

/-!
# A084831: Numbers k such that sum of odd divisors and sum of even divisors are both palindromic.

The programs for A084831, there is no canonical definition to state claims against.
-/

/-! ## A084831.P14001158730005487253

`n*A325355(A161805(n)+1)+1`
-/

namespace A084831.P14001158730005487253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A325355 (A161805 n + 1).toNat + 1

end

end A084831.P14001158730005487253

/-! ## A084831.P15415360140551149017

`∑[A359912(n+1)^A018843(3*n+2)]`
-/

namespace A084831.P15415360140551149017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359912 (n + 1) : ℚ) ^ (A018843 (3 * n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084831.P15415360140551149017

/-!
# A084832: Numbers k such that 2*R_k - 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A084832, there is no canonical definition to state claims against.
-/

/-! ## A084832.P17956766494011724956

`A056660(n+1)+1`
-/

namespace A084832.P17956766494011724956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056660 (n + 1) + 1

end

end A084832.P17956766494011724956

/-! ## A084832.P8831228611835629821

`A020725(A056660(n+1))`
-/

namespace A084832.P8831228611835629821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A056660 (n + 1)).toNat

end

end A084832.P8831228611835629821

/-!
# A084835: a(n) = A000094(n+4) - A006918(n).

The programs for A084835, there is no canonical definition to state claims against.
-/

/-! ## A084835.P11974177059150406111

`A000094(n+5)-A006918(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084835.P11974177059150406111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000094 (n + 5) - A006918 (n + 1)

end

end A084835.P11974177059150406111

/-! ## A084835.P5222295372752113659

`A000094(n+5)-∑[A008805(n)]`
-/

namespace A084835.P5222295372752113659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000094 (n + 5) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084835.P5222295372752113659

/-! ## A084835.P13654086402216908375

`A000041(n+4)-A330640(n+4)`
-/

namespace A084835.P13654086402216908375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 4) - A330640 (n + 4)

end

end A084835.P13654086402216908375

/-! ## A084835.P452687462359395671

`record[A000041(n)-n]-A006918(n+1)`
-/

namespace A084835.P452687462359395671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A006918 (n + 1)

end

end A084835.P452687462359395671

/-! ## A084835.P8576309809208152058

`∑[A124943(A000217(n)+1)-A242678(n+3)]`
-/

namespace A084835.P8576309809208152058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124943 (A000217 n + 1).toNat - A242678 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084835.P8576309809208152058

/-!
# A084836: Palindromic primes with nondecreasing digits up to the middle and then nonincreasing.

The programs for A084836, there is no canonical definition to state claims against.
-/

/-! ## A084836.P10404297284896801675

`∩[A002385(n+1), A110784(n+1)]`
-/

namespace A084836.P10404297284896801675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084836.P10404297284896801675

/-! ## A084836.P8261702456220285438

`∩[A072299(n+1), A110784(n+1)]`
-/

namespace A084836.P8261702456220285438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084836.P8261702456220285438

/-! ## A084836.P8794246786524554285

`∩[A110784(n+1), A232183(n+1)]`
-/

namespace A084836.P8794246786524554285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084836.P8794246786524554285

/-! ## A084836.P15950724822171234014

`∩[A110784(n+1), A180440(n+1)]`
-/

namespace A084836.P15950724822171234014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084836.P15950724822171234014

/-! ## A084836.P17270819858972307967

`p?[A110784(n+1)]`
-/

namespace A084836.P17270819858972307967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084836.P17270819858972307967

/-!
# A084837: Palindromic primes with nonincreasing digits up to the middle and then nondecreasing.

The programs for A084837, there is no canonical definition to state claims against.
-/

/-! ## A084837.P748228313177375577

`∩[A002385(n+1), A110785(n+1)]`
-/

namespace A084837.P748228313177375577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084837.P748228313177375577

/-! ## A084837.P17758817088727699731

`∩[A072299(n+1), A110785(n+1)]`
-/

namespace A084837.P17758817088727699731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084837.P17758817088727699731

/-! ## A084837.P13732448709117888235

`∩[A110785(n+1), A232183(n+1)]`
-/

namespace A084837.P13732448709117888235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084837.P13732448709117888235

/-! ## A084837.P14246739267378905172

`p?[A110785(n+1)]`
-/

namespace A084837.P14246739267378905172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084837.P14246739267378905172

/-! ## A084837.P3062863735956069658

`filter[A110785(n+1), A010051(#)]`
-/

namespace A084837.P3062863735956069658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A084837.P3062863735956069658

/-!
# A084840: Write the numbers 1, 2, ... in a triangle with n terms in the n-th row; a(n) = number of abundant integers in n-th row.

The programs for A084840, the canonical program `A084840.P2801589053806159802` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084840 has offset 1).

The definition of A084840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084840.P2801589053806159802

`Δ[A091194(A179865(n+1))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A084840

/-- `Δ[A091194(A179865(n+1))]` -/
def P2801589053806159802.Spec : Prop :=
  ∀ n, P2801589053806159802.a n = A084840 (n + 1)

theorem P2801589053806159802.correct : P2801589053806159802.Spec := by
  intro n
  simp only [A084840, Nat.add_sub_cancel]

end A084840

/-! ## A084840.P14218450855340771961

`Δ[A091194(or(1, A000217(n)))]`
-/

namespace A084840.P14218450855340771961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (Int.lor 1 (A000217 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084840.P14218450855340771961

namespace A084840

/-- `Δ[A091194(or(1, A000217(n)))]` -/
def P14218450855340771961.Spec : Prop :=
  ∀ n, P14218450855340771961.a n = A084840 (n + 1)

end A084840

/-! ## A084840.P12689579622255380046

`Δ[A091194(A008805(A004273(n)))]`
-/

namespace A084840.P12689579622255380046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A008805 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084840.P12689579622255380046

namespace A084840

/-- `Δ[A091194(A008805(A004273(n)))]` -/
def P12689579622255380046.Spec : Prop :=
  ∀ n, P12689579622255380046.a n = A084840 (n + 1)

end A084840

/-! ## A084840.P11099462629956396653

`Δ[A091194(A057944(A000124(n)))]`
-/

namespace A084840.P11099462629956396653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A057944 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084840.P11099462629956396653

namespace A084840

/-- `Δ[A091194(A057944(A000124(n)))]` -/
def P11099462629956396653.Spec : Prop :=
  ∀ n, P11099462629956396653.a n = A084840 (n + 1)

end A084840

/-! ## A084840.P11819085091361331758

`Δ[A091194(A007318(A055998(n)))]`
-/

namespace A084840.P11819085091361331758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A007318 (A055998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084840.P11819085091361331758

namespace A084840

/-- `Δ[A091194(A007318(A055998(n)))]` -/
def P11819085091361331758.Spec : Prop :=
  ∀ n, P11819085091361331758.a n = A084840 (n + 1)

end A084840

/-! ## A084840.P6791166891950844010

`Δ[A091194(A098180(A000217(n)))]`
-/

namespace A084840.P6791166891950844010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A098180 (A000217 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084840.P6791166891950844010

namespace A084840

/-- `Δ[A091194(A098180(A000217(n)))]` -/
def P6791166891950844010.Spec : Prop :=
  ∀ n, P6791166891950844010.a n = A084840 (n + 1)

end A084840

/-! ## A084840.P4341769456750650376

`Δ[A091194(A057944(A133263(n)))]`
-/

namespace A084840.P4341769456750650376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A057944 (A133263 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084840.P4341769456750650376

namespace A084840

/-- `Δ[A091194(A057944(A133263(n)))]` -/
def P4341769456750650376.Spec : Prop :=
  ∀ n, P4341769456750650376.a n = A084840 (n + 1)

end A084840

/-! ## A084840.P8570568886797383718

`Δ[A091194(A008805(A004278(n+1)))]`
-/

namespace A084840.P8570568886797383718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A008805 (A004278 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084840.P8570568886797383718

namespace A084840

/-- `Δ[A091194(A008805(A004278(n+1)))]` -/
def P8570568886797383718.Spec : Prop :=
  ∀ n, P8570568886797383718.a n = A084840 (n + 1)

end A084840

/-! ## A084840.P7836585429200676772

`Δ[A091194(A008805(A004280(n+1)))]`
-/

namespace A084840.P7836585429200676772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A008805 (A004280 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084840.P7836585429200676772

namespace A084840

/-- `Δ[A091194(A008805(A004280(n+1)))]` -/
def P7836585429200676772.Spec : Prop :=
  ∀ n, P7836585429200676772.a n = A084840 (n + 1)

end A084840

/-! ## A084840.P6463225144370215242

`Δ[A091194(A000217(A233583(n+1)))]`
-/

namespace A084840.P6463225144370215242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A000217 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084840.P6463225144370215242

namespace A084840

/-- `Δ[A091194(A000217(A233583(n+1)))]` -/
def P6463225144370215242.Spec : Prop :=
  ∀ n, P6463225144370215242.a n = A084840 (n + 1)

end A084840

/-!
# A084843: Numbers n such that no palindrome m > 0 exists with n + m also a palindrome.

The programs for A084843, there is no canonical definition to state claims against.
-/

/-! ## A084843.P13534241950660414218

`∪[A083142(n+1), A104444(n+1)]`
-/

namespace A084843.P13534241950660414218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084843.P13534241950660414218

/-!
# A084844: Denominators of the continued fraction n + 1/(n + 1/...) [n times].

The programs for A084844, there is no canonical definition to state claims against.
-/

/-! ## A084844.P12607613195754240261

`A117715(∑[n+2])`
-/

namespace A084844.P12607613195754240261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117715 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084844.P12607613195754240261

/-! ## A084844.P16981697762430948468

`record[A117715(abs(A080956(n)))]`
-/

namespace A084844.P16981697762430948468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117715 |A080956 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084844.P16981697762430948468

/-! ## A084844.P10275352818317882371

`A073133((n+1)²+n²)`
-/

namespace A084844.P10275352818317882371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073133 ((n + 1) ^ 2 + n ^ 2)

end

end A084844.P10275352818317882371

/-! ## A084844.P5042265991245031699

`A172236(A058331(n+1))`
-/

namespace A084844.P5042265991245031699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (A058331 (n + 1)).toNat

end

end A084844.P5042265991245031699

/-! ## A084844.P2547306695159341626

`A172236(∑[A008574(n)+2])`
-/

namespace A084844.P2547306695159341626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084844.P2547306695159341626

/-!
# A084845: Numerators of the continued fraction n+1/(n+1/...) [n times].

The programs for A084845, there is no canonical definition to state claims against.
-/

/-! ## A084845.P6024476236536230521

`A117715(∑[n+3]+1)`
-/

namespace A084845.P6024476236536230521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117715 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A084845.P6024476236536230521

/-! ## A084845.P12387987642913497440

`A073133(A058331(n+1))`
-/

namespace A084845.P12387987642913497440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073133 (A058331 (n + 1)).toNat

end

end A084845.P12387987642913497440

/-! ## A084845.P14491616854474730337

`A073133(∑[A008574(n)+2])`
-/

namespace A084845.P14491616854474730337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073133 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084845.P14491616854474730337

/-! ## A084845.P2869284306730189668

`A073133(A001105(n+1)+1)`
-/

namespace A084845.P2869284306730189668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073133 (A001105 (n + 1) + 1).toNat

end

end A084845.P2869284306730189668

/-! ## A084845.P1307242792906734970

`A172236(A001844(n+1)+1)`
-/

namespace A084845.P1307242792906734970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (A001844 (n + 1) + 1).toNat

end

end A084845.P1307242792906734970

/-!
# A084846: mu(n!+1), where mu is the Moebius function (A008683).

The programs for A084846, there is no canonical definition to state claims against.
-/

/-! ## A084846.P8107146725637316404

`A154269(A064144(A028310(n)))`
-/

namespace A084846.P8107146725637316404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A064144 (A028310 n).toNat).toNat

end

end A084846.P8107146725637316404

/-! ## A084846.P14533558121450036630

`A008683(A353403(n)+A008766(n))`
-/

namespace A084846.P14533558121450036630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A353403 n + A008766 n).toNat

end

end A084846.P14533558121450036630

/-! ## A084846.P18442989853971639952

`A008683(A103599(n+1)+A095149(n+1))`
-/

namespace A084846.P18442989853971639952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A103599 (n + 1) + A095149 (n + 1)).toNat

end

end A084846.P18442989853971639952

/-! ## A084846.P3703508625954279559

`A008683(A096346(2*floor((sqrt(2)^n/3)²)+1))`
-/

namespace A084846.P3703508625954279559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A096346 (2 * ⌊(Real.sqrt (2 : ℝ) ^ n / 3) ^ 2⌋ + 1).toNat).toNat

end

end A084846.P3703508625954279559

/-! ## A084846.P17379356701891099320

`A332823(A006478(n+4)-A151895(n))`
-/

namespace A084846.P17379356701891099320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (A006478 (n + 4) - A151895 n).toNat

end

end A084846.P17379356701891099320

/-!
# A084847: a(n) = 2*3^n+2^(2n-1)*(n-2).

The programs for A084847, the canonical program `A084847.P15706749602897950463` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084847 has offset 0).

The definition of A084847 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A084847.anchor (n : ℕ) : (A084847 n : ℚ) = (2 * 3 ^ n : ℚ) + (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) * ((n : ℤ) - 2 : ℚ)` in `Proof.A084.A084847`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084847.P15706749602897950463

`2*3^n+2^(2*n-1)*(n-2)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084847

/-- `2*3^n+2^(2*n-1)*(n-2)` -/
def P15706749602897950463.Spec : Prop :=
  ∀ n, P15706749602897950463.a n = (A084847 n : ℚ)

end A084847

/-!
# A084848: a(n) is the number of quadratic residues of A085635(n).

The programs for A084848, there is no canonical definition to state claims against.
-/

/-! ## A084848.P3659451757640876747

`A000224(A085635(n+1))`
-/

namespace A084848.P3659451757640876747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (A085635 (n + 1)).toNat

end

end A084848.P3659451757640876747

/-! ## A084848.P5241244002877258859

`A105612(A085635(n+1))+A007318(∑[n])`
-/

namespace A084848.P5241244002877258859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (A085635 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084848.P5241244002877258859

/-! ## A084848.P4567359967877472527

`A105612(A085635(n+1))+A000034(2*n)`
-/

namespace A084848.P4567359967877472527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (A085635 (n + 1)).toNat + A000034 (2 * n)

end

end A084848.P4567359967877472527

/-! ## A084848.P16995614365333655341

`A105612(A085635(n+1))+A040961(3*n+2)`
-/

namespace A084848.P16995614365333655341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (A085635 (n + 1)).toNat + A040961 (3 * n + 2)

end

end A084848.P16995614365333655341

/-! ## A084848.P9324054301686449058

`A105612(A085635(n+1))+A014963(4*n+6)`
-/

namespace A084848.P9324054301686449058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (A085635 (n + 1)).toNat + A014963 (4 * n + 6)

end

end A084848.P9324054301686449058

/-!
# A084849: a(n) = 1 + n + 2*n^2.

The programs for A084849, the canonical program `A084849.P10620509709519408572` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084849 has offset 0).

The definition of A084849 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+n+2*n²` (program `A084849.P10620509709519408572`, by `A084849.P10620509709519408572.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084849.P10620509709519408572

`1+n+2*n²`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084849

/-- `1+n+2*n²` -/
def P10620509709519408572.Spec : Prop :=
  ∀ n, (P10620509709519408572.a n : ℤ) = A084849 n

theorem P10620509709519408572.correct : P10620509709519408572.Spec := by
  intro n
  simp only [A084849]

end A084849

/-! ## A084849.P3020706648928772757

`∑[record[lcm(2, n)+1]]`
-/

namespace A084849.P3020706648928772757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084849.P3020706648928772757

namespace A084849

/-- `∑[record[lcm(2, n)+1]]` -/
def P3020706648928772757.Spec : Prop :=
  ∀ n, (P3020706648928772757.a n : ℤ) = A084849 n

end A084849

/-! ## A084849.P9638781170578974739

`record[C(xor(1, n), 2)+1]`
-/

namespace A084849.P9638781170578974739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084849.P9638781170578974739

namespace A084849

/-- `record[C(xor(1, n), 2)+1]` -/
def P9638781170578974739.Spec : Prop :=
  ∀ n, (P9638781170578974739.a n : ℤ) = A084849 n

end A084849

/-! ## A084849.P14768642460728310026

`round(2/acot(n)²+n)`
-/

namespace A084849.P14768642460728310026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (n : ℝ) ^ 2 + (n : ℝ))

end

end A084849.P14768642460728310026

namespace A084849

/-- `round(2/acot(n)²+n)` -/
def P14768642460728310026.Spec : Prop :=
  ∀ n, P14768642460728310026.a n = A084849 n

end A084849

/-! ## A084849.P2626554710977368294

`∑[a(n-1)+4]` with `a(0)=1, a(1)=3`
-/

namespace A084849.P2626554710977368294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084849.P2626554710977368294

namespace A084849

/-- `∑[a(n-1)+4]` -/
def P2626554710977368294.Spec : Prop :=
  ∀ n, (P2626554710977368294.a n : ℤ) = A084849 n

end A084849

/-! ## A084849.P18419446403783413043

`∑[ogf((1+x+2x^2)/(1-2x+x^2))]`
-/

namespace A084849.P18419446403783413043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084849.P18419446403783413043

namespace A084849

/-- `∑[ogf((1+x+2x^2)/(1-2x+x^2))]` -/
def P18419446403783413043.Spec : Prop :=
  ∀ n, P18419446403783413043.a n = A084849 n

end A084849

/-! ## A084849.P10145645175163393117

`ogf((1+x+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A084849.P10145645175163393117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, -3, 3, -1] n

end

end A084849.P10145645175163393117

namespace A084849

/-- `ogf((1+x+2x^2)/(1-3x+3x^2-x^3))` -/
def P10145645175163393117.Spec : Prop :=
  ∀ n, P10145645175163393117.a n = A084849 n

end A084849

/-! ## A084849.P9117500594493302531

`∑[eq[1, n^and(3, n+1)]]`
-/

namespace A084849.P9117500594493302531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 3 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084849.P9117500594493302531

namespace A084849

/-- `∑[eq[1, n^and(3, n+1)]]` -/
def P9117500594493302531.Spec : Prop :=
  ∀ n, (P9117500594493302531.a n : ℤ) = A084849 n

end A084849

/-! ## A084849.P395615056557555570

`floor((2*n+1)/cos(atan(n)))`
-/

namespace A084849.P395615056557555570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / Real.cos (Real.arctan (n : ℝ))⌋

end

end A084849.P395615056557555570

namespace A084849

/-- `floor((2*n+1)/cos(atan(n)))` -/
def P395615056557555570.Spec : Prop :=
  ∀ n, P395615056557555570.a n = A084849 n

end A084849

/-! ## A084849.P10400036615660790934

`round((2*n+1)/cos(atan(n)))`
-/

namespace A084849.P10400036615660790934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) / Real.cos (Real.arctan (n : ℝ)))

end

end A084849.P10400036615660790934

namespace A084849

/-- `round((2*n+1)/cos(atan(n)))` -/
def P10400036615660790934.Spec : Prop :=
  ∀ n, P10400036615660790934.a n = A084849 n

end A084849

/-! ## A084849.P1924648858977855090

`floor((2*n+1)/sin(acot(n)))`
-/

namespace A084849.P1924648858977855090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / Real.sin (SequenceMachineLib.acot (n : ℝ))⌋

end

end A084849.P1924648858977855090

namespace A084849

/-- `floor((2*n+1)/sin(acot(n)))` -/
def P1924648858977855090.Spec : Prop :=
  ∀ n, P1924648858977855090.a n = A084849 n

end A084849

/-! ## A084849.P9858909203851484398

`round((2*n+1)/sin(acot(n)))`
-/

namespace A084849.P9858909203851484398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) / Real.sin (SequenceMachineLib.acot (n : ℝ)))

end

end A084849.P9858909203851484398

namespace A084849

/-- `round((2*n+1)/sin(acot(n)))` -/
def P9858909203851484398.Spec : Prop :=
  ∀ n, P9858909203851484398.a n = A084849 n

end A084849

/-! ## A084849.P4672327651302028765

`ceil((2*n+1)/sinh(acot(n)))`
-/

namespace A084849.P4672327651302028765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / Real.sinh (SequenceMachineLib.acot (n : ℝ))⌉

end

end A084849.P4672327651302028765

namespace A084849

/-- `ceil((2*n+1)/sinh(acot(n)))` -/
def P4672327651302028765.Spec : Prop :=
  ∀ n, P4672327651302028765.a n = A084849 n

end A084849

/-! ## A084849.P7511710390037778840

`(4-∑[a(n-1)-8])/2` with `a(0)=2`
-/

namespace A084849.P7511710390037778840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A084849.P7511710390037778840

namespace A084849

/-- `(4-∑[a(n-1)-8])/2` -/
def P7511710390037778840.Spec : Prop :=
  ∀ n, P7511710390037778840.a n = (A084849 n : ℚ)

end A084849

/-! ## A084849.P1476952650173170481

`floor(4*n+a(n-1)-1)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A084849.P1476952650173170481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 * n : ℤ) + (a (n - 1) - 1)

end

end A084849.P1476952650173170481

namespace A084849

/-- `floor(4*n+a(n-1)-1)` -/
def P1476952650173170481.Spec : Prop :=
  ∀ n, P1476952650173170481.a n = A084849 n

theorem P1476952650173170481.correct : P1476952650173170481.Spec := by
  intro n
  induction n with
  | zero => simp [A084849, A084849.P1476952650173170481.a, A084849.P10620509709519408572.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A084849, Nat.add_sub_cancel, A084849.P1476952650173170481.a, A084849.P10620509709519408572.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A084849

/-! ## A084849.P16326610177892347650

`floor(4*n-(1-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A084849.P16326610177892347650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 * n : ℤ) - (1 - a (n - 1))

end

end A084849.P16326610177892347650

namespace A084849

/-- `floor(4*n-(1-a(n-1)))` -/
def P16326610177892347650.Spec : Prop :=
  ∀ n, P16326610177892347650.a n = A084849 n

theorem P16326610177892347650.correct : P16326610177892347650.Spec := by
  intro n
  induction n with
  | zero => simp [A084849, A084849.P16326610177892347650.a, A084849.P10620509709519408572.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A084849, Nat.add_sub_cancel, A084849.P16326610177892347650.a, A084849.P10620509709519408572.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A084849

/-! ## A084849.P2020508975408996597

`4*((a(n-1)-1)/4+n)` with `a(0)=1`
-/

namespace A084849.P2020508975408996597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((a (n - 1) - 1) / 4 + (n : ℚ))

end

end A084849.P2020508975408996597

namespace A084849

/-- `4*((a(n-1)-1)/4+n)` -/
def P2020508975408996597.Spec : Prop :=
  ∀ n, P2020508975408996597.a n = (A084849 n : ℚ)

theorem P2020508975408996597.correct : P2020508975408996597.Spec := by
  intro n
  induction n with
  | zero => simp [A084849, A084849.P2020508975408996597.a, A084849.P10620509709519408572.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A084849, Nat.add_sub_cancel, A084849.P2020508975408996597.a, A084849.P10620509709519408572.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A084849

/-! ## A084849.P16971114801711751984

`4*(n-(1-a(n-1))/4)` with `a(0)=1`
-/

namespace A084849.P16971114801711751984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((n : ℚ) - (1 - a (n - 1)) / 4)

end

end A084849.P16971114801711751984

namespace A084849

/-- `4*(n-(1-a(n-1))/4)` -/
def P16971114801711751984.Spec : Prop :=
  ∀ n, P16971114801711751984.a n = (A084849 n : ℚ)

theorem P16971114801711751984.correct : P16971114801711751984.Spec := by
  intro n
  induction n with
  | zero => simp [A084849, A084849.P16971114801711751984.a, A084849.P10620509709519408572.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A084849, Nat.add_sub_cancel, A084849.P16971114801711751984.a, A084849.P10620509709519408572.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A084849

/-! ## A084849.P15174029582101231768

`A000124(2*n)`
-/

namespace A084849.P15174029582101231768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (2 * n)

end

end A084849.P15174029582101231768

namespace A084849

/-- `A000124(2*n)` -/
def P15174029582101231768.Spec : Prop :=
  ∀ n, P15174029582101231768.a n = A084849 n

end A084849

/-! ## A084849.P14521963498190298448

`A007606(n²+1)`
-/

namespace A084849.P14521963498190298448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (n ^ 2 + 1)

end

end A084849.P14521963498190298448

namespace A084849

/-- `A007606(n²+1)` -/
def P14521963498190298448.Spec : Prop :=
  ∀ n, P14521963498190298448.a n = A084849 n

end A084849

/-!
# A084850: a(n) = 2^(n-1)*(n^2+2n+2).

The programs for A084850, the canonical program `A084850.P15002065475991743167` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084850 has offset 0).

The definition of A084850 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A084850.anchor (n : ℕ) : (A084850 n : ℚ) = (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n ^ 2 + 2 * n + 2 : ℚ)` in `Proof.A084.A084850`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084850.P15002065475991743167

`2^(n-1)*(n²+2*n+2)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084850

/-- `2^(n-1)*(n²+2*n+2)` -/
def P15002065475991743167.Spec : Prop :=
  ∀ n, P15002065475991743167.a n = (A084850 n : ℚ)

end A084850

/-! ## A084850.P259930345426087013

`2*a(n-1)/ratio[1/(n²+1)]` with `a(0)=1`
-/

namespace A084850.P259930345426087013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n ^ 2 + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) / (f1 (n + 1) / f1 n)

end

end A084850.P259930345426087013

namespace A084850

/-- `2*a(n-1)/ratio[1/(n²+1)]` -/
def P259930345426087013.Spec : Prop :=
  ∀ n, P259930345426087013.a n = (A084850 n : ℚ)

end A084850

/-! ## A084850.P14408143251296254367

`∑[(n+1)*A045623(n)]`
-/

namespace A084850.P14408143251296254367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084850.P14408143251296254367

namespace A084850

/-- `∑[(n+1)*A045623(n)]` -/
def P14408143251296254367.Spec : Prop :=
  ∀ n, P14408143251296254367.a n = A084850 n

end A084850

/-! ## A084850.P10110455656172459541

`2^n+n*A001792(n)`
-/

namespace A084850.P10110455656172459541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (n : ℤ) * A001792 n

end

end A084850.P10110455656172459541

namespace A084850

/-- `2^n+n*A001792(n)` -/
def P10110455656172459541.Spec : Prop :=
  ∀ n, P10110455656172459541.a n = A084850 n

end A084850

/-! ## A084850.P3727747175095212345

`record[(n²+1)*A034008(n)]`
-/

namespace A084850.P3727747175095212345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084850.P3727747175095212345

namespace A084850

/-- `record[(n²+1)*A034008(n)]` -/
def P3727747175095212345.Spec : Prop :=
  ∀ n, P3727747175095212345.a n = A084850 n

end A084850

/-! ## A084850.P16908119783584404318

`∑[(n+1)*∑[A045891(n)]]`
-/

namespace A084850.P16908119783584404318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084850.P16908119783584404318

namespace A084850

/-- `∑[(n+1)*∑[A045891(n)]]` -/
def P16908119783584404318.Spec : Prop :=
  ∀ n, P16908119783584404318.a n = A084850 n

end A084850

/-! ## A084850.P11376250141833705146

`∑[(n+1)*∑[∑[A034007(n)]]]`
-/

namespace A084850.P11376250141833705146
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084850.P11376250141833705146

namespace A084850

/-- `∑[(n+1)*∑[∑[A034007(n)]]]` -/
def P11376250141833705146.Spec : Prop :=
  ∀ n, P11376250141833705146.a n = A084850 n

end A084850

/-! ## A084850.P548569814800714314

`∑[(n+1)*Δ[A049610(n+1)]]`
-/

namespace A084850.P548569814800714314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084850.P548569814800714314

namespace A084850

/-- `∑[(n+1)*Δ[A049610(n+1)]]` -/
def P548569814800714314.Spec : Prop :=
  ∀ n, P548569814800714314.a n = A084850 n

end A084850

/-! ## A084850.P8979622203795856633

`floor(2^(n-1)*A002522(n+1))`
-/

namespace A084850.P8979622203795856633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A002522 (n + 1) : ℚ)⌋

end

end A084850.P8979622203795856633

namespace A084850

/-- `floor(2^(n-1)*A002522(n+1))` -/
def P8979622203795856633.Spec : Prop :=
  ∀ n, P8979622203795856633.a n = A084850 n

end A084850

/-! ## A084850.P6047554284285297165

`A128135(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A084850.P6047554284285297165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128135 (n + 1) + 2 * a (n - 1)

end

end A084850.P6047554284285297165

namespace A084850

/-- `A128135(n+1)+2*a(n-1)` -/
def P6047554284285297165.Spec : Prop :=
  ∀ n, P6047554284285297165.a n = A084850 n

end A084850

/-! ## A084850.P14960623841939697517

`2^n+2^(n-1)*A005563(n)`
-/

namespace A084850.P14960623841939697517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A005563 n : ℚ)

end

end A084850.P14960623841939697517

namespace A084850

/-- `2^n+2^(n-1)*A005563(n)` -/
def P14960623841939697517.Spec : Prop :=
  ∀ n, P14960623841939697517.a n = (A084850 n : ℚ)

end A084850

/-! ## A084850.P6201050187482629347

`A089658(n)+A072863(n)`
-/

namespace A084850.P6201050187482629347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089658 n + A072863 n

end

end A084850.P6201050187482629347

namespace A084850

/-- `A089658(n)+A072863(n)` -/
def P6201050187482629347.Spec : Prop :=
  ∀ n, P6201050187482629347.a n = A084850 n

end A084850

/-! ## A084850.P12050176882319467785

`A176027(n)+A053730(n)`
-/

namespace A084850.P12050176882319467785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 n + A053730 n

end

end A084850.P12050176882319467785

namespace A084850

/-- `A176027(n)+A053730(n)` -/
def P12050176882319467785.Spec : Prop :=
  ∀ n, P12050176882319467785.a n = A084850 n

end A084850

/-! ## A084850.P4864090017476478013

`A340257(n)+A001787(n)`
-/

namespace A084850.P4864090017476478013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340257 n + A001787 n

end

end A084850.P4864090017476478013

namespace A084850

/-- `A340257(n)+A001787(n)` -/
def P4864090017476478013.Spec : Prop :=
  ∀ n, P4864090017476478013.a n = A084850 n

end A084850

/-! ## A084850.P15068518920584300438

`A276289(n)+A084851(n)`
-/

namespace A084850.P15068518920584300438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276289 n + A084851 n

end

end A084850.P15068518920584300438

namespace A084850

/-- `A276289(n)+A084851(n)` -/
def P15068518920584300438.Spec : Prop :=
  ∀ n, P15068518920584300438.a n = A084850 n

end A084850

/-! ## A084850.P7869743477106363050

`A001815(n)+Δ[A001788(n)]`
-/

namespace A084850.P7869743477106363050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + (f1 (n + 1) - f1 n)

end

end A084850.P7869743477106363050

namespace A084850

/-- `A001815(n)+Δ[A001788(n)]` -/
def P7869743477106363050.Spec : Prop :=
  ∀ n, P7869743477106363050.a n = A084850 n

end A084850

/-! ## A084850.P1739623167329211325

`A001815(n+1)+A001792(n)`
-/

namespace A084850.P1739623167329211325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 (n + 1) + A001792 n

end

end A084850.P1739623167329211325

namespace A084850

/-- `A001815(n+1)+A001792(n)` -/
def P1739623167329211325.Spec : Prop :=
  ∀ n, P1739623167329211325.a n = A084850 n

end A084850

/-! ## A084850.P833900772696491104

`A001815(n)+A001793(n+1)`
-/

namespace A084850.P833900772696491104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + A001793 (n + 1)

end

end A084850.P833900772696491104

namespace A084850

/-- `A001815(n)+A001793(n+1)` -/
def P833900772696491104.Spec : Prop :=
  ∀ n, P833900772696491104.a n = A084850 n

end A084850

/-! ## A084850.P17732396825099468484

`A007466(n+1)+A001788(n)`
-/

namespace A084850.P17732396825099468484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007466 (n + 1) + A001788 n

end

end A084850.P17732396825099468484

namespace A084850

/-- `A007466(n+1)+A001788(n)` -/
def P17732396825099468484.Spec : Prop :=
  ∀ n, P17732396825099468484.a n = A084850 n

end A084850

/-! ## A084850.P13002579388574467737

`A100381(n)+A053220(n+1)`
-/

namespace A084850.P13002579388574467737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100381 n + A053220 (n + 1)

end

end A084850.P13002579388574467737

namespace A084850

/-- `A100381(n)+A053220(n+1)` -/
def P13002579388574467737.Spec : Prop :=
  ∀ n, P13002579388574467737.a n = A084850 n

end A084850

/-!
# A084851: Binomial transform of binomial(n+2,2).

The programs for A084851, the canonical program `A084851.P6363770667321943635` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084851 has offset 0).

The definition of A084851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084851.P6363770667321943635

`(n²+7*n+8)*2^(n-3)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084851

/-- `(n²+7*n+8)*2^(n-3)` -/
def P6363770667321943635.Spec : Prop :=
  ∀ n, P6363770667321943635.a n = (A084851 n : ℚ)

end A084851

/-! ## A084851.P5799029460500256698

`A049611(n+1)`
-/

namespace A084851.P5799029460500256698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1)

end

end A084851.P5799029460500256698

namespace A084851

/-- `A049611(n+1)` -/
def P5799029460500256698.Spec : Prop :=
  ∀ n, P5799029460500256698.a n = A084851 n

end A084851

/-! ## A084851.P9893799688859474609

`∑[A058396(n)]`
-/

namespace A084851.P9893799688859474609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084851.P9893799688859474609

namespace A084851

/-- `∑[A058396(n)]` -/
def P9893799688859474609.Spec : Prop :=
  ∀ n, P9893799688859474609.a n = A084851 n

end A084851

/-! ## A084851.P6948653439662887533

`∑[abs(Δ[A049611(n)])]`
-/

namespace A084851.P6948653439662887533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084851.P6948653439662887533

namespace A084851

/-- `∑[abs(Δ[A049611(n)])]` -/
def P6948653439662887533.Spec : Prop :=
  ∀ n, P6948653439662887533.a n = A084851 n

end A084851

/-! ## A084851.P7895601396002043489

`record[A049611(abs(1-n))]`
-/

namespace A084851.P7895601396002043489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084851.P7895601396002043489

namespace A084851

/-- `record[A049611(abs(1-n))]` -/
def P7895601396002043489.Spec : Prop :=
  ∀ n, P7895601396002043489.a n = A084851 n

end A084851

/-! ## A084851.P4570113895500464706

`∑[∑[A158920(n+1)]]`
-/

namespace A084851.P4570113895500464706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158920 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084851.P4570113895500464706

namespace A084851

/-- `∑[∑[A158920(n+1)]]` -/
def P4570113895500464706.Spec : Prop :=
  ∀ n, P4570113895500464706.a n = A084851 n

end A084851

/-! ## A084851.P4683451620818381567

`A190050(n+1)-2^n`
-/

namespace A084851.P4683451620818381567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190050 (n + 1) - (2 ^ n : ℤ)

end

end A084851.P4683451620818381567

namespace A084851

/-- `A190050(n+1)-2^n` -/
def P4683451620818381567.Spec : Prop :=
  ∀ n, P4683451620818381567.a n = A084851 n

end A084851

/-! ## A084851.P16428388568022471067

`A268586(n+2)+2^n`
-/

namespace A084851.P16428388568022471067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268586 (n + 2) + (2 ^ n : ℤ)

end

end A084851.P16428388568022471067

namespace A084851

/-- `A268586(n+2)+2^n` -/
def P16428388568022471067.Spec : Prop :=
  ∀ n, P16428388568022471067.a n = A084851 n

end A084851

/-! ## A084851.P6661624508201118136

`A045623(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A084851.P6661624508201118136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045623 n + 2 * a (n - 1)

end

end A084851.P6661624508201118136

namespace A084851

/-- `A045623(n)+2*a(n-1)` -/
def P6661624508201118136.Spec : Prop :=
  ∀ n, P6661624508201118136.a n = A084851 n

end A084851

/-! ## A084851.P17743650740734264236

`∑[∑[A034007(n)+2*a(n-1)]]` with `a(0)=1`
-/

namespace A084851.P17743650740734264236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A034007 n + 2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084851.P17743650740734264236

namespace A084851

/-- `∑[∑[A034007(n)+2*a(n-1)]]` -/
def P17743650740734264236.Spec : Prop :=
  ∀ n, P17743650740734264236.a n = A084851 n

end A084851

/-! ## A084851.P6401982290550477626

`A072863(n)+A001787(n)`
-/

namespace A084851.P6401982290550477626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072863 n + A001787 n

end

end A084851.P6401982290550477626

namespace A084851

/-- `A072863(n)+A001787(n)` -/
def P6401982290550477626.Spec : Prop :=
  ∀ n, P6401982290550477626.a n = A084851 n

end A084851

/-! ## A084851.P2445495496751252523

`A081908(n)+A036289(n)`
-/

namespace A084851.P2445495496751252523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081908 n + A036289 n

end

end A084851.P2445495496751252523

namespace A084851

/-- `A081908(n)+A036289(n)` -/
def P2445495496751252523.Spec : Prop :=
  ∀ n, P2445495496751252523.a n = A084851 n

end A084851

/-! ## A084851.P8244126825010707877

`A131577(n)+A084266(n)`
-/

namespace A084851.P8244126825010707877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A084266 n

end

end A084851.P8244126825010707877

namespace A084851

/-- `A131577(n)+A084266(n)` -/
def P8244126825010707877.Spec : Prop :=
  ∀ n, P8244126825010707877.a n = A084851 n

end A084851

/-! ## A084851.P5933975035430356750

`A343561(n)-A001792(n+1)`
-/

namespace A084851.P5933975035430356750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343561 n - A001792 (n + 1)

end

end A084851.P5933975035430356750

namespace A084851

/-- `A343561(n)-A001792(n+1)` -/
def P5933975035430356750.Spec : Prop :=
  ∀ n, P5933975035430356750.a n = A084851 n

end A084851

/-! ## A084851.P17366363253199082586

`A081908(n)+2*A001787(n)`
-/

namespace A084851.P17366363253199082586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081908 n + 2 * A001787 n

end

end A084851.P17366363253199082586

namespace A084851

/-- `A081908(n)+2*A001787(n)` -/
def P17366363253199082586.Spec : Prop :=
  ∀ n, P17366363253199082586.a n = A084851 n

end A084851

/-! ## A084851.P5952738327998930176

`2*A058396(n)-A045623(n)`
-/

namespace A084851.P5952738327998930176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058396 n - A045623 n

end

end A084851.P5952738327998930176

namespace A084851

/-- `2*A058396(n)-A045623(n)` -/
def P5952738327998930176.Spec : Prop :=
  ∀ n, P5952738327998930176.a n = A084851 n

end A084851

/-! ## A084851.P11331350092461517698

`A072863(n)+A036289(n)/2`
-/

namespace A084851.P11331350092461517698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072863 n : ℚ) + (A036289 n : ℚ) / 2

end

end A084851.P11331350092461517698

namespace A084851

/-- `A072863(n)+A036289(n)/2` -/
def P11331350092461517698.Spec : Prop :=
  ∀ n, P11331350092461517698.a n = (A084851 n : ℚ)

end A084851

/-! ## A084851.P7030992670307841415

`A081908(n)+n*A000079(n)`
-/

namespace A084851.P7030992670307841415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081908 n + (n : ℤ) * A000079 n

end

end A084851.P7030992670307841415

namespace A084851

/-- `A081908(n)+n*A000079(n)` -/
def P7030992670307841415.Spec : Prop :=
  ∀ n, P7030992670307841415.a n = A084851 n

end A084851

/-! ## A084851.P3038728088846518227

`A072863(n)+n*A011782(n)`
-/

namespace A084851.P3038728088846518227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072863 n + (n : ℤ) * A011782 n

end

end A084851.P3038728088846518227

namespace A084851

/-- `A072863(n)+n*A011782(n)` -/
def P3038728088846518227.Spec : Prop :=
  ∀ n, P3038728088846518227.a n = A084851 n

end A084851

/-! ## A084851.P2867966567852100555

`A106472(n)+n*A045891(n)`
-/

namespace A084851.P2867966567852100555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106472 n + (n : ℤ) * A045891 n

end

end A084851.P2867966567852100555

namespace A084851

/-- `A106472(n)+n*A045891(n)` -/
def P2867966567852100555.Spec : Prop :=
  ∀ n, P2867966567852100555.a n = A084851 n

end A084851

/-!
# A084854: Triangular array, read by rows: T(n,k) = concatenated decimal representations of n and k, 1<=k<=n.

The programs for A084854, the canonical program `A084854.P13726695903674628097` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084854 has offset 1).

The definition of A084854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084854.P13726695903674628097

`(row(n)+1)*10^A055642(col(n)+1)+col(n)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A084854

/-- `(row(n)+1)*10^A055642(col(n)+1)+col(n)+1` -/
def P13726695903674628097.Spec : Prop :=
  ∀ n, P13726695903674628097.a n = (A084854 (n + 1) : ℚ)

end A084854

/-! ## A084854.P15411497586837973964

`A127668(A087112(n+1))`
-/

namespace A084854.P15411497586837973964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127668 (A087112 (n + 1)).toNat

end

end A084854.P15411497586837973964

namespace A084854

/-- `A127668(A087112(n+1))` -/
def P15411497586837973964.Spec : Prop :=
  ∀ n, P15411497586837973964.a n = A084854 (n + 1)

end A084854

/-! ## A084854.P3810421193589797601

`A333659(A084855(n+1))+A000007(A144183(n))`
-/

namespace A084854.P3810421193589797601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (A084855 (n + 1)).toNat + A000007 (A144183 n).toNat

end

end A084854.P3810421193589797601

namespace A084854

/-- `A333659(A084855(n+1))+A000007(A144183(n))` -/
def P3810421193589797601.Spec : Prop :=
  ∀ n, P3810421193589797601.a n = A084854 (n + 1)

end A084854

/-! ## A084854.P8439955617530269751

`A152036(A057944(n))*A333659(A084855(n+1))`
-/

namespace A084854.P8439955617530269751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152036 (A057944 n).toNat * A333659 (A084855 (n + 1)).toNat

end

end A084854.P8439955617530269751

namespace A084854

/-- `A152036(A057944(n))*A333659(A084855(n+1))` -/
def P8439955617530269751.Spec : Prop :=
  ∀ n, P8439955617530269751.a n = A084854 (n + 1)

end A084854

/-! ## A084854.P7185601766334217854

`A001222(A129227(n+1))*A333659(A084855(n+1))`
-/

namespace A084854.P7185601766334217854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A129227 (n + 1)).toNat * A333659 (A084855 (n + 1)).toNat

end

end A084854.P7185601766334217854

namespace A084854

/-- `A001222(A129227(n+1))*A333659(A084855(n+1))` -/
def P7185601766334217854.Spec : Prop :=
  ∀ n, P7185601766334217854.a n = A084854 (n + 1)

end A084854

/-!
# A084855: Triangular array, read by rows: T(n,k) = concatenated decimal representations of k and n, 1<=k<=n.

The programs for A084855, the canonical program `A084855.P17956969381726171491` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084855 has offset 1).

The definition of A084855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084855.P17956969381726171491

`(col(n)+1)*10^A055642(row(n)+1)+row(n)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A084855

/-- `(col(n)+1)*10^A055642(row(n)+1)+row(n)+1` -/
def P17956969381726171491.Spec : Prop :=
  ∀ n, P17956969381726171491.a n = (A084855 (n + 1) : ℚ)

end A084855

/-! ## A084855.P8091574830927073308

`A087712(A087112(n+1))`
-/

namespace A084855.P8091574830927073308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A087112 (n + 1)).toNat

end

end A084855.P8091574830927073308

namespace A084855

/-- `A087712(A087112(n+1))` -/
def P8091574830927073308.Spec : Prop :=
  ∀ n, P8091574830927073308.a n = A084855 (n + 1)

end A084855

/-! ## A084855.P1028894746432618158

`A087712(A005145(n+1)*A037126(n+1))`
-/

namespace A084855.P1028894746432618158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A005145 (n + 1) * A037126 (n + 1)).toNat

end

end A084855.P1028894746432618158

namespace A084855

/-- `A087712(A005145(n+1)*A037126(n+1))` -/
def P1028894746432618158.Spec : Prop :=
  ∀ n, P1028894746432618158.a n = A084855 (n + 1)

end A084855

/-! ## A084855.P5747506206566136996

`A333659(lcm(A084854(n+1), A279769(n+1)))`
-/

namespace A084855.P5747506206566136996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (Int.lcm (A084854 (n + 1)) (A279769 (n + 1)))

end

end A084855.P5747506206566136996

namespace A084855

/-- `A333659(lcm(A084854(n+1), A279769(n+1)))` -/
def P5747506206566136996.Spec : Prop :=
  ∀ n, P5747506206566136996.a n = A084855 (n + 1)

end A084855

/-! ## A084855.P9168390035248257343

`A333659(eq[18, A007953(9*n)]%A180385(n+4))`
-/

namespace A084855.P9168390035248257343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (9 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A180385 (n + 4))).toNat

end

end A084855.P9168390035248257343

namespace A084855

/-- `A333659(eq[18, A007953(9*n)]%A180385(n+4))` -/
def P9168390035248257343.Spec : Prop :=
  ∀ n, P9168390035248257343.a n = A084855 (n + 1)

end A084855

/-! ## A084855.P14024844117631248477

`A001222(A142719(n+1))*A333659(A084854(n+1))`
-/

namespace A084855.P14024844117631248477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A142719 (n + 1)).toNat * A333659 (A084854 (n + 1)).toNat

end

end A084855.P14024844117631248477

namespace A084855

/-- `A001222(A142719(n+1))*A333659(A084854(n+1))` -/
def P14024844117631248477.Spec : Prop :=
  ∀ n, P14024844117631248477.a n = A084855 (n + 1)

end A084855

/-! ## A084855.P13791678098745512130

`A333659(A084854(n+1)%A268396(n+1))`
-/

namespace A084855.P13791678098745512130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (Int.tmod (A084854 (n + 1)) (A268396 (n + 1))).toNat

end

end A084855.P13791678098745512130

namespace A084855

/-- `A333659(A084854(n+1)%A268396(n+1))` -/
def P13791678098745512130.Spec : Prop :=
  ∀ n, P13791678098745512130.a n = A084855 (n + 1)

end A084855

/-! ## A084855.P7430980951327387024

`A333659(A279769(n+1)%A268396(n+1))`
-/

namespace A084855.P7430980951327387024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (Int.tmod (A279769 (n + 1)) (A268396 (n + 1))).toNat

end

end A084855.P7430980951327387024

namespace A084855

/-- `A333659(A279769(n+1)%A268396(n+1))` -/
def P7430980951327387024.Spec : Prop :=
  ∀ n, P7430980951327387024.a n = A084855 (n + 1)

end A084855

/-! ## A084855.P415786906977390380

`A333659(eq[2, A095827(n+1)]+1)`
-/

namespace A084855.P415786906977390380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A084855.P415786906977390380

namespace A084855

/-- `A333659(eq[2, A095827(n+1)]+1)` -/
def P415786906977390380.Spec : Prop :=
  ∀ n, P415786906977390380.a n = A084855 (n + 1)

end A084855

/-! ## A084855.P11129956700244721266

`A333659(A084854(n+1))%A086402(n+1)`
-/

namespace A084855.P11129956700244721266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333659 (A084854 (n + 1)).toNat) (A086402 (n + 1))

end

end A084855.P11129956700244721266

namespace A084855

/-- `A333659(A084854(n+1))%A086402(n+1)` -/
def P11129956700244721266.Spec : Prop :=
  ∀ n, P11129956700244721266.a n = A084855 (n + 1)

end A084855

/-!
# A084856: a(n) = prime(n+2)^2 - prime(n)^2.

The programs for A084856, the canonical program `A084856.P17326876538272872775` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084856 has offset 1).

The definition of A084856 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+3)²-A000040(n+1)²` (program `A084856.P17326876538272872775`, by `A084856.P17326876538272872775.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084856.P14949074464839728074

`A069482(n+2)+A069482(n+1)`
-/

namespace A084856.P14949074464839728074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069482 (n + 2) + A069482 (n + 1)

end

end A084856.P14949074464839728074

namespace A084856

/-- `A069482(n+2)+A069482(n+1)` -/
def P14949074464839728074.Spec : Prop :=
  ∀ n, P14949074464839728074.a n = A084856 (n + 1)

theorem P14949074464839728074.correct : P14949074464839728074.Spec := by
  intro n
  simp only [A084856, Nat.add_sub_cancel, A084856.P14949074464839728074.a, A084856.P17326876538272872775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A069482, A069482.P16588716990720648360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084856

/-! ## A084856.P6795753576200282642

`A001248(n+3)-A001248(n+1)`
-/

namespace A084856.P6795753576200282642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 3) - A001248 (n + 1)

end

end A084856.P6795753576200282642

namespace A084856

/-- `A001248(n+3)-A001248(n+1)` -/
def P6795753576200282642.Spec : Prop :=
  ∀ n, P6795753576200282642.a n = A084856 (n + 1)

end A084856

/-! ## A084856.P17326876538272872775

`A000040(n+3)²-A000040(n+1)²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084856

/-- `A000040(n+3)²-A000040(n+1)²` -/
def P17326876538272872775.Spec : Prop :=
  ∀ n, P17326876538272872775.a n = A084856 (n + 1)

theorem P17326876538272872775.correct : P17326876538272872775.Spec := by
  intro n
  simp only [A084856, Nat.add_sub_cancel]

end A084856

/-! ## A084856.P1428151638634973869

`p?[2*n+5]²-p?[round(8*n/7)]²`
-/

namespace A084856.P1428151638634973869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℤ) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

end

end A084856.P1428151638634973869

namespace A084856

/-- `p?[2*n+5]²-p?[round(8*n/7)]²` -/
def P1428151638634973869.Spec : Prop :=
  ∀ n, P1428151638634973869.a n = A084856 (n + 1)

end A084856

/-! ## A084856.P17478216438027065633

`A393202(n+1)+A291463(n+1)`
-/

namespace A084856.P17478216438027065633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393202 (n + 1) + A291463 (n + 1)

end

end A084856.P17478216438027065633

namespace A084856

/-- `A393202(n+1)+A291463(n+1)` -/
def P17478216438027065633.Spec : Prop :=
  ∀ n, P17478216438027065633.a n = A084856 (n + 1)

theorem P17478216438027065633.correct : P17478216438027065633.Spec := by
  intro n
  simp only [A084856, Nat.add_sub_cancel, A084856.P17478216438027065633.a, A084856.P17326876538272872775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A291463, A291463.P14308935140851577628.a, A393202, A393202.P8725241224376797018.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084856

/-! ## A084856.P7908280091911070591

`A066872(n+3)-A066872(n+1)`
-/

namespace A084856.P7908280091911070591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 3) - A066872 (n + 1)

end

end A084856.P7908280091911070591

namespace A084856

/-- `A066872(n+3)-A066872(n+1)` -/
def P7908280091911070591.Spec : Prop :=
  ∀ n, P7908280091911070591.a n = A084856 (n + 1)

theorem P7908280091911070591.correct : P7908280091911070591.Spec := by
  intro n
  simp only [A084856, Nat.add_sub_cancel, A084856.P7908280091911070591.a, A084856.P17326876538272872775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A066872, A066872.P16166098773502812344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084856

/-! ## A084856.P16249887511737533027

`2*A075892(n+2)-A069484(n+1)`
-/

namespace A084856.P16249887511737533027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075892 (n + 2) - A069484 (n + 1)

end

end A084856.P16249887511737533027

namespace A084856

/-- `2*A075892(n+2)-A069484(n+1)` -/
def P16249887511737533027.Spec : Prop :=
  ∀ n, P16249887511737533027.a n = A084856 (n + 1)

end A084856

/-! ## A084856.P9963632454383703631

`Δ[p?[2*n+1]²+p?[round(8*n/7)]²]`
-/

namespace A084856.P9963632454383703631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2 : ℤ) + f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084856.P9963632454383703631

namespace A084856

/-- `Δ[p?[2*n+1]²+p?[round(8*n/7)]²]` -/
def P9963632454383703631.Spec : Prop :=
  ∀ n, P9963632454383703631.a n = A084856 (n + 1)

end A084856

/-! ## A084856.P15931157022272068507

`Δ[A069484(n+1)]`
-/

namespace A084856.P15931157022272068507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084856.P15931157022272068507

namespace A084856

/-- `Δ[A069484(n+1)]` -/
def P15931157022272068507.Spec : Prop :=
  ∀ n, P15931157022272068507.a n = A084856 (n + 1)

theorem P15931157022272068507.correct : P15931157022272068507.Spec := by
  intro n
  simp only [A084856, Nat.add_sub_cancel, A084856.P15931157022272068507.f1, A084856.P15931157022272068507.a, A084856.P17326876538272872775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A069484, A069484.P10584348183158188878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084856

/-! ## A084856.P8322369663114162299

`A069484(n+2)-A069484(n+1)`
-/

namespace A084856.P8322369663114162299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 2) - A069484 (n + 1)

end

end A084856.P8322369663114162299

namespace A084856

/-- `A069484(n+2)-A069484(n+1)` -/
def P8322369663114162299.Spec : Prop :=
  ∀ n, P8322369663114162299.a n = A084856 (n + 1)

theorem P8322369663114162299.correct : P8322369663114162299.Spec := by
  intro n
  simp only [A084856, Nat.add_sub_cancel, A084856.P8322369663114162299.a, A084856.P17326876538272872775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A069484, A069484.P10584348183158188878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084856

/-! ## A084856.P16149687677058430214

`A349660(n+2)-A352851(n+1)`
-/

namespace A084856.P16149687677058430214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349660 (n + 2) - A352851 (n + 1)

end

end A084856.P16149687677058430214

namespace A084856

/-- `A349660(n+2)-A352851(n+1)` -/
def P16149687677058430214.Spec : Prop :=
  ∀ n, P16149687677058430214.a n = A084856 (n + 1)

theorem P16149687677058430214.correct : P16149687677058430214.Spec := by
  intro n
  simp only [A084856, Nat.add_sub_cancel, A084856.P16149687677058430214.a, A084856.P17326876538272872775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A349660, A349660.P9981326327431548497.a, A352851, A352851.P9611710498335111080.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084856

/-! ## A084856.P11710747473209757706

`A031131(n+1)*A048448(n+2)`
-/

namespace A084856.P11710747473209757706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1) * A048448 (n + 2)

end

end A084856.P11710747473209757706

namespace A084856

/-- `A031131(n+1)*A048448(n+2)` -/
def P11710747473209757706.Spec : Prop :=
  ∀ n, P11710747473209757706.a n = A084856 (n + 1)

end A084856

/-! ## A084856.P2647636348542148470

`A048448(n+2)*A075527(n+1)`
-/

namespace A084856.P2647636348542148470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 2) * A075527 (n + 1)

end

end A084856.P2647636348542148470

namespace A084856

/-- `A048448(n+2)*A075527(n+1)` -/
def P2647636348542148470.Spec : Prop :=
  ∀ n, P2647636348542148470.a n = A084856 (n + 1)

end A084856

/-! ## A084856.P17844105482414036241

`A065091(n+2)²-A280076(n+2)`
-/

namespace A084856.P17844105482414036241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) ^ 2 - A280076 (n + 2)

end

end A084856.P17844105482414036241

namespace A084856

/-- `A065091(n+2)²-A280076(n+2)` -/
def P17844105482414036241.Spec : Prop :=
  ∀ n, P17844105482414036241.a n = A084856 (n + 1)

end A084856

/-! ## A084856.P888554584923417370

`Δ[A001248(n+1)+A065091(n+1)²]`
-/

namespace A084856.P888554584923417370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + A065091 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084856.P888554584923417370

namespace A084856

/-- `Δ[A001248(n+1)+A065091(n+1)²]` -/
def P888554584923417370.Spec : Prop :=
  ∀ n, P888554584923417370.a n = A084856 (n + 1)

theorem P888554584923417370.correct : P888554584923417370.Spec := by
  intro n
  simp only [A084856, Nat.add_sub_cancel, A084856.P888554584923417370.f1, A084856.P888554584923417370.a, A084856.P17326876538272872775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084856

/-! ## A084856.P728061174309464663

`A001223(n+1)+A261465(n+2)-A036689(n+1)`
-/

namespace A084856.P728061174309464663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A261465 (n + 2) - A036689 (n + 1))

end

end A084856.P728061174309464663

namespace A084856

/-- `A001223(n+1)+A261465(n+2)-A036689(n+1)` -/
def P728061174309464663.Spec : Prop :=
  ∀ n, P728061174309464663.a n = A084856 (n + 1)

end A084856

/-! ## A084856.P10380508186556369036

`A349660(n+2)-(A036690(n+1)+A001223(n+1))`
-/

namespace A084856.P10380508186556369036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349660 (n + 2) - (A036690 (n + 1) + A001223 (n + 1))

end

end A084856.P10380508186556369036

namespace A084856

/-- `A349660(n+2)-(A036690(n+1)+A001223(n+1))` -/
def P10380508186556369036.Spec : Prop :=
  ∀ n, P10380508186556369036.a n = A084856 (n + 1)

end A084856

/-! ## A084856.P9620708914908008133

`Δ[A048851(n+2)]`
-/

namespace A084856.P9620708914908008133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048851 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084856.P9620708914908008133

namespace A084856

/-- `Δ[A048851(n+2)]` -/
def P9620708914908008133.Spec : Prop :=
  ∀ n, P9620708914908008133.a n = A084856 (n + 1)

end A084856

/-! ## A084856.P2599066838646222037

`A049001(n+3)-A049001(n+1)`
-/

namespace A084856.P2599066838646222037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 3) - A049001 (n + 1)

end

end A084856.P2599066838646222037

namespace A084856

/-- `A049001(n+3)-A049001(n+1)` -/
def P2599066838646222037.Spec : Prop :=
  ∀ n, P2599066838646222037.a n = A084856 (n + 1)

theorem P2599066838646222037.correct : P2599066838646222037.Spec := by
  intro n
  simp only [A084856, Nat.add_sub_cancel, A084856.P2599066838646222037.a, A084856.P17326876538272872775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A049001, A049001.P8777299766092042792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084856

/-! ## A084856.P1559872713862320691

`A061725(n+3)-A061725(n+1)`
-/

namespace A084856.P1559872713862320691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 3) - A061725 (n + 1)

end

end A084856.P1559872713862320691

namespace A084856

/-- `A061725(n+3)-A061725(n+1)` -/
def P1559872713862320691.Spec : Prop :=
  ∀ n, P1559872713862320691.a n = A084856 (n + 1)

theorem P1559872713862320691.correct : P1559872713862320691.Spec := by
  intro n
  simp only [A084856, Nat.add_sub_cancel, A084856.P1559872713862320691.a, A084856.P17326876538272872775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A061725, A061725.P7248628641150990420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084856

/-!
# A084857: Inverse binomial transform of n^2*3^(n-1).

The programs for A084857, the canonical program `A084857.P292780445584747127` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084857 has offset 0).

The definition of A084857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084857.P292780445584747127

`n*(3*n-1)*2^(n-2)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084857

/-- `n*(3*n-1)*2^(n-2)` -/
def P292780445584747127.Spec : Prop :=
  ∀ n, P292780445584747127.a n = (A084857 n : ℚ)

end A084857

/-! ## A084857.P13429979952060838116

`round(C(3*n, 2)/6*A000079(n))`
-/

namespace A084857.P13429979952060838116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (3 * n) 2 : ℚ) / 6 * (A000079 n : ℚ))

end

end A084857.P13429979952060838116

namespace A084857

/-- `round(C(3*n, 2)/6*A000079(n))` -/
def P13429979952060838116.Spec : Prop :=
  ∀ n, P13429979952060838116.a n = A084857 n

end A084857

/-! ## A084857.P2552304013246953526

`A100381(n)+A001788(n)`
-/

namespace A084857.P2552304013246953526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100381 n + A001788 n

end

end A084857.P2552304013246953526

namespace A084857

/-- `A100381(n)+A001788(n)` -/
def P2552304013246953526.Spec : Prop :=
  ∀ n, P2552304013246953526.a n = A084857 n

end A084857

/-! ## A084857.P14594667392011995403

`A052481(n)-A127276(n)`
-/

namespace A084857.P14594667392011995403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052481 n - A127276 n

end

end A084857.P14594667392011995403

namespace A084857

/-- `A052481(n)-A127276(n)` -/
def P14594667392011995403.Spec : Prop :=
  ∀ n, P14594667392011995403.a n = A084857 n

end A084857

/-! ## A084857.P7593774823825472882

`A178987(n)+A001815(n+1)`
-/

namespace A084857.P7593774823825472882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 n + A001815 (n + 1)

end

end A084857.P7593774823825472882

namespace A084857

/-- `A178987(n)+A001815(n+1)` -/
def P7593774823825472882.Spec : Prop :=
  ∀ n, P7593774823825472882.a n = A084857 n

end A084857

/-! ## A084857.P9348546225958139261

`A001788(n)+2*A001815(n)`
-/

namespace A084857.P9348546225958139261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n + 2 * A001815 n

end

end A084857.P9348546225958139261

namespace A084857

/-- `A001788(n)+2*A001815(n)` -/
def P9348546225958139261.Spec : Prop :=
  ∀ n, P9348546225958139261.a n = A084857 n

end A084857

/-! ## A084857.P74107060998580635

`A178987(n)+2*A001788(n)`
-/

namespace A084857.P74107060998580635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 n + 2 * A001788 n

end

end A084857.P74107060998580635

namespace A084857

/-- `A178987(n)+2*A001788(n)` -/
def P74107060998580635.Spec : Prop :=
  ∀ n, P74107060998580635.a n = A084857 n

end A084857

/-! ## A084857.P11577918622694871890

`A176027(n)+2*A178987(n)`
-/

namespace A084857.P11577918622694871890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 n + 2 * A178987 n

end

end A084857.P11577918622694871890

namespace A084857

/-- `A176027(n)+2*A178987(n)` -/
def P11577918622694871890.Spec : Prop :=
  ∀ n, P11577918622694871890.a n = A084857 n

end A084857

/-! ## A084857.P7569021654394229778

`A084899(n)+A001815(n)/2`
-/

namespace A084857.P7569021654394229778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084899 n : ℚ) + (A001815 n : ℚ) / 2

end

end A084857.P7569021654394229778

namespace A084857

/-- `A084899(n)+A001815(n)/2` -/
def P7569021654394229778.Spec : Prop :=
  ∀ n, P7569021654394229778.a n = (A084857 n : ℚ)

end A084857

/-! ## A084857.P5631552905338049629

`A001815(n)+n*A001787(n)`
-/

namespace A084857.P5631552905338049629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + (n : ℤ) * A001787 n

end

end A084857.P5631552905338049629

namespace A084857

/-- `A001815(n)+n*A001787(n)` -/
def P5631552905338049629.Spec : Prop :=
  ∀ n, P5631552905338049629.a n = A084857 n

end A084857

/-! ## A084857.P7998644083107103575

`abs(Δ[A056469(n)]*A000326(n))`
-/

namespace A084857.P7998644083107103575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A000326 n|

end

end A084857.P7998644083107103575

namespace A084857

/-- `abs(Δ[A056469(n)]*A000326(n))` -/
def P7998644083107103575.Spec : Prop :=
  ∀ n, P7998644083107103575.a n = A084857 n

end A084857

/-! ## A084857.P139363957672486061

`abs(Δ[A122958(n)]*A000326(n))`
-/

namespace A084857.P139363957672486061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A000326 n|

end

end A084857.P139363957672486061

namespace A084857

/-- `abs(Δ[A122958(n)]*A000326(n))` -/
def P139363957672486061.Spec : Prop :=
  ∀ n, P139363957672486061.a n = A084857 n

end A084857

/-! ## A084857.P13449540877675496550

`A104270(n+1)-∑[A127276(n)]`
-/

namespace A084857.P13449540877675496550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104270 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084857.P13449540877675496550

namespace A084857

/-- `A104270(n+1)-∑[A127276(n)]` -/
def P13449540877675496550.Spec : Prop :=
  ∀ n, P13449540877675496550.a n = A084857 n

end A084857

/-! ## A084857.P11611515242262795165

`A001815(n)+n²*A011782(n)`
-/

namespace A084857.P11611515242262795165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + (n ^ 2 : ℤ) * A011782 n

end

end A084857.P11611515242262795165

namespace A084857

/-- `A001815(n)+n²*A011782(n)` -/
def P11611515242262795165.Spec : Prop :=
  ∀ n, P11611515242262795165.a n = A084857 n

end A084857

/-! ## A084857.P217323242663002443

`A001815(n)+n²*A131577(n)`
-/

namespace A084857.P217323242663002443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + (n ^ 2 : ℤ) * A131577 n

end

end A084857.P217323242663002443

namespace A084857

/-- `A001815(n)+n²*A131577(n)` -/
def P217323242663002443.Spec : Prop :=
  ∀ n, P217323242663002443.a n = A084857 n

end A084857

/-! ## A084857.P14891691215075299188

`A001788(n)+A052481(n)-A000079(n)`
-/

namespace A084857.P14891691215075299188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n + (A052481 n - A000079 n)

end

end A084857.P14891691215075299188

namespace A084857

/-- `A001788(n)+A052481(n)-A000079(n)` -/
def P14891691215075299188.Spec : Prop :=
  ∀ n, P14891691215075299188.a n = A084857 n

end A084857

/-! ## A084857.P652898095231638547

`A001815(n)+A048482(n)-A005183(n)`
-/

namespace A084857.P652898095231638547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + (A048482 n - A005183 n)

end

end A084857.P652898095231638547

namespace A084857

/-- `A001815(n)+A048482(n)-A005183(n)` -/
def P652898095231638547.Spec : Prop :=
  ∀ n, P652898095231638547.a n = A084857 n

end A084857

/-! ## A084857.P7834465805692942610

`A084899(n)+A276289(n)-A001788(n)`
-/

namespace A084857.P7834465805692942610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084899 n + (A276289 n - A001788 n)

end

end A084857.P7834465805692942610

namespace A084857

/-- `A084899(n)+A276289(n)-A001788(n)` -/
def P7834465805692942610.Spec : Prop :=
  ∀ n, P7834465805692942610.a n = A084857 n

end A084857

/-! ## A084857.P8509129752413906548

`A178987(n+1)+A001788(n)+A000079(n)`
-/

namespace A084857.P8509129752413906548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 (n + 1) + (A001788 n + A000079 n)

end

end A084857.P8509129752413906548

namespace A084857

/-- `A178987(n+1)+A001788(n)+A000079(n)` -/
def P8509129752413906548.Spec : Prop :=
  ∀ n, P8509129752413906548.a n = A084857 n

end A084857

/-! ## A084857.P14332272940191807381

`A001815(n+1)+A001815(n)-A001787(n)`
-/

namespace A084857.P14332272940191807381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 (n + 1) + (A001815 n - A001787 n)

end

end A084857.P14332272940191807381

namespace A084857

/-- `A001815(n+1)+A001815(n)-A001787(n)` -/
def P14332272940191807381.Spec : Prop :=
  ∀ n, P14332272940191807381.a n = A084857 n

end A084857

/-!
# A084858: Binomial transform of A001651.

The programs for A084858, the canonical program `A084858.P2959413612920315668` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084858 has offset 0).

The definition of A084858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084858.P2959413612920315668

`2*a(n-1)+3*2^(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084858

/-- `2*a(n-1)+3*2^(n-2)` -/
def P2959413612920315668.Spec : Prop :=
  ∀ n, P2959413612920315668.a n = (A084858 n : ℚ)

end A084858

/-! ## A084858.P6395500371567663106

`ogf((1-x+x^2)/(1-4x+4x^2))`
-/

namespace A084858.P6395500371567663106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -4, 4] n

end

end A084858.P6395500371567663106

namespace A084858

/-- `ogf((1-x+x^2)/(1-4x+4x^2))` -/
def P6395500371567663106.Spec : Prop :=
  ∀ n, P6395500371567663106.a n = A084858 n

end A084858

/-! ## A084858.P1058010095835000222

`(2/n+2)*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A084858.P1058010095835000222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 / (n : ℚ) + 2) * a (n - 1)

end

end A084858.P1058010095835000222

namespace A084858

/-- `(2/n+2)*a(n-1)` -/
def P1058010095835000222.Spec : Prop :=
  ∀ n, P1058010095835000222.a n = (A084858 n : ℚ)

end A084858

/-! ## A084858.P18287631027371184289

`ceil(3*(n+1)*2^(n-2))`
-/

namespace A084858.P18287631027371184289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))⌉

end

end A084858.P18287631027371184289

namespace A084858

/-- `ceil(3*(n+1)*2^(n-2))` -/
def P18287631027371184289.Spec : Prop :=
  ∀ n, P18287631027371184289.a n = A084858 n

end A084858

/-! ## A084858.P6391238263499988537

`4*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A084858.P6391238263499988537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A084858.P6391238263499988537

namespace A084858

/-- `4*(a(n-1)-a(n-2))` -/
def P6391238263499988537.Spec : Prop :=
  ∀ n, P6391238263499988537.a n = A084858 n

end A084858

/-! ## A084858.P509710932000698540

`a(n-1)+a(n-1)-floor((1-a(n-1)-a(n-1))/n)` with `a(0)=1`
-/

namespace A084858.P509710932000698540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - ⌊(1 - a (n - 1) - a (n - 1) : ℚ) / (n : ℚ)⌋)

end

end A084858.P509710932000698540

namespace A084858

/-- `a(n-1)+a(n-1)-floor((1-a(n-1)-a(n-1))/n)` -/
def P509710932000698540.Spec : Prop :=
  ∀ n, P509710932000698540.a n = A084858 n

end A084858

/-! ## A084858.P14675964337426274457

`a(n-1)-floor((1-a(n-1)-a(n-1))/n-a(n-1))` with `a(0)=1`
-/

namespace A084858.P14675964337426274457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌊(1 - a (n - 1) - a (n - 1) : ℚ) / (n : ℚ) - (a (n - 1) : ℚ)⌋

end

end A084858.P14675964337426274457

namespace A084858

/-- `a(n-1)-floor((1-a(n-1)-a(n-1))/n-a(n-1))` -/
def P14675964337426274457.Spec : Prop :=
  ∀ n, P14675964337426274457.a n = A084858 n

end A084858

/-! ## A084858.P16973144283811700654

`∑[A084860(n)]`
-/

namespace A084858.P16973144283811700654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084858.P16973144283811700654

namespace A084858

/-- `∑[A084860(n)]` -/
def P16973144283811700654.Spec : Prop :=
  ∀ n, P16973144283811700654.a n = A084858 n

end A084858

/-! ## A084858.P2187803674425190903

`∑[∑[A084861(n)]]`
-/

namespace A084858.P2187803674425190903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084861 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084858.P2187803674425190903

namespace A084858

/-- `∑[∑[A084861(n)]]` -/
def P2187803674425190903.Spec : Prop :=
  ∀ n, P2187803674425190903.a n = A084858 n

end A084858

/-! ## A084858.P18124587927134385561

`(n+1)/2*A042950(n)`
-/

namespace A084858.P18124587927134385561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A042950 n : ℚ)

end

end A084858.P18124587927134385561

namespace A084858

/-- `(n+1)/2*A042950(n)` -/
def P18124587927134385561.Spec : Prop :=
  ∀ n, P18124587927134385561.a n = (A084858 n : ℚ)

end A084858

/-! ## A084858.P6550759363671709725

`A098156(n+1)-2^n`
-/

namespace A084858.P6550759363671709725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098156 (n + 1) - (2 ^ n : ℤ)

end

end A084858.P6550759363671709725

namespace A084858

/-- `A098156(n+1)-2^n` -/
def P6550759363671709725.Spec : Prop :=
  ∀ n, P6550759363671709725.a n = A084858 n

end A084858

/-! ## A084858.P11572201442219928774

`(n+1)/2*A098011(n+3)`
-/

namespace A084858.P11572201442219928774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A098011 (n + 3) : ℚ)

end

end A084858.P11572201442219928774

namespace A084858

/-- `(n+1)/2*A098011(n+3)` -/
def P11572201442219928774.Spec : Prop :=
  ∀ n, P11572201442219928774.a n = (A084858 n : ℚ)

end A084858

/-! ## A084858.P18298927338658005638

`A106472(n+1)-2^(n+1)`
-/

namespace A084858.P18298927338658005638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106472 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A084858.P18298927338658005638

namespace A084858

/-- `A106472(n+1)-2^(n+1)` -/
def P18298927338658005638.Spec : Prop :=
  ∀ n, P18298927338658005638.a n = A084858 n

end A084858

/-! ## A084858.P2917806936786860281

`floor(3*(n+1)/2*A011782(n))`
-/

namespace A084858.P2917806936786860281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * (n + 1) : ℚ) / 2 * (A011782 n : ℚ)⌋

end

end A084858.P2917806936786860281

namespace A084858

/-- `floor(3*(n+1)/2*A011782(n))` -/
def P2917806936786860281.Spec : Prop :=
  ∀ n, P2917806936786860281.a n = A084858 n

end A084858

/-! ## A084858.P9587838420723378487

`A045623(n)+A001787(n)`
-/

namespace A084858.P9587838420723378487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n + A001787 n

end

end A084858.P9587838420723378487

namespace A084858

/-- `A045623(n)+A001787(n)` -/
def P9587838420723378487.Spec : Prop :=
  ∀ n, P9587838420723378487.a n = A084858 n

end A084858

/-! ## A084858.P11297451745435282375

`A139756(n)+A001792(n)`
-/

namespace A084858.P11297451745435282375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n + A001792 n

end

end A084858.P11297451745435282375

namespace A084858

/-- `A139756(n)+A001792(n)` -/
def P11297451745435282375.Spec : Prop :=
  ∀ n, P11297451745435282375.a n = A084858 n

end A084858

/-! ## A084858.P6646593139538851903

`A133086(n)-A166444(n)`
-/

namespace A084858.P6646593139538851903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133086 n - A166444 n

end

end A084858.P6646593139538851903

namespace A084858

/-- `A133086(n)-A166444(n)` -/
def P6646593139538851903.Spec : Prop :=
  ∀ n, P6646593139538851903.a n = A084858 n

end A084858

/-! ## A084858.P1566229979719261010

`A339252(n)-A131577(n)`
-/

namespace A084858.P1566229979719261010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339252 n - A131577 n

end

end A084858.P1566229979719261010

namespace A084858

/-- `A339252(n)-A131577(n)` -/
def P1566229979719261010.Spec : Prop :=
  ∀ n, P1566229979719261010.a n = A084858 n

end A084858

/-! ## A084858.P6938728000312364947

`A001792(n)+∑[A049610(n)]`
-/

namespace A084858.P6938728000312364947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084858.P6938728000312364947

namespace A084858

/-- `A001792(n)+∑[A049610(n)]` -/
def P6938728000312364947.Spec : Prop :=
  ∀ n, P6938728000312364947.a n = A084858 n

end A084858

/-! ## A084858.P12481560627410489320

`∑[A049610(n)+A045623(n)]`
-/

namespace A084858.P12481560627410489320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n + A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084858.P12481560627410489320

namespace A084858

/-- `∑[A049610(n)+A045623(n)]` -/
def P12481560627410489320.Spec : Prop :=
  ∀ n, P12481560627410489320.a n = A084858 n

end A084858

/-!
# A084859: Binomial transform of Cullen numbers A002064.

The programs for A084859, the canonical program `A084859.P3942692863971022780` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084859 has offset 0).

The definition of A084859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084859.P3942692863971022780

`2^n+2*n*3^(n-1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084859

/-- `2^n+2*n*3^(n-1)` -/
def P3942692863971022780.Spec : Prop :=
  ∀ n, P3942692863971022780.a n = (A084859 n : ℚ)

end A084859

/-! ## A084859.P581461235719500994

`abs(A001047(n)-A081038(n))`
-/

namespace A084859.P581461235719500994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A081038 n|

end

end A084859.P581461235719500994

namespace A084859

/-- `abs(A001047(n)-A081038(n))` -/
def P581461235719500994.Spec : Prop :=
  ∀ n, P581461235719500994.a n = A084859 n

end A084859

/-! ## A084859.P15922310430209235400

`abs(∑[A120926(n+1)]-A001047(n))`
-/

namespace A084859.P15922310430209235400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A001047 n|

end

end A084859.P15922310430209235400

namespace A084859

/-- `abs(∑[A120926(n+1)]-A001047(n))` -/
def P15922310430209235400.Spec : Prop :=
  ∀ n, P15922310430209235400.a n = A084859 n

end A084859

/-! ## A084859.P14566285756967074695

`abs(2*A086972(n)-1-A001047(n))`
-/

namespace A084859.P14566285756967074695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A086972 n - 1 - A001047 n|

end

end A084859.P14566285756967074695

namespace A084859

/-- `abs(2*A086972(n)-1-A001047(n))` -/
def P14566285756967074695.Spec : Prop :=
  ∀ n, P14566285756967074695.a n = A084859 n

end A084859

/-! ## A084859.P3496041800278591329

`abs(∑[2*A199923(n)]-1-A001047(n))`
-/

namespace A084859.P3496041800278591329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1 - A001047 n|

end

end A084859.P3496041800278591329

namespace A084859

/-- `abs(∑[2*A199923(n)]-1-A001047(n))` -/
def P3496041800278591329.Spec : Prop :=
  ∀ n, P3496041800278591329.a n = A084859 n

end A084859

/-! ## A084859.P11324245930657755181

`abs(2*Δ[A082133(n)]-1-A001047(n))`
-/

namespace A084859.P11324245930657755181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (f1 (n + 1) - f1 n) - 1 - A001047 n|

end

end A084859.P11324245930657755181

namespace A084859

/-- `abs(2*Δ[A082133(n)]-1-A001047(n))` -/
def P11324245930657755181.Spec : Prop :=
  ∀ n, P11324245930657755181.a n = A084859 n

end A084859

/-! ## A084859.P2173267029656215100

`abs(A199923(n+1)-3^n-A001047(n))`
-/

namespace A084859.P2173267029656215100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199923 (n + 1) - (3 ^ n : ℤ) - A001047 n|

end

end A084859.P2173267029656215100

namespace A084859

/-- `abs(A199923(n+1)-3^n-A001047(n))` -/
def P2173267029656215100.Spec : Prop :=
  ∀ n, P2173267029656215100.a n = A084859 n

end A084859

/-! ## A084859.P16618379835829652509

`abs(A000244(n)+n*A025192(n)-A001047(n))`
-/

namespace A084859.P16618379835829652509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n + (n : ℤ) * A025192 n - A001047 n|

end

end A084859.P16618379835829652509

namespace A084859

/-- `abs(A000244(n)+n*A025192(n)-A001047(n))` -/
def P16618379835829652509.Spec : Prop :=
  ∀ n, P16618379835829652509.a n = A084859 n

end A084859

/-! ## A084859.P13203326788937568466

`Δ[A084643(n)/2]`
-/

namespace A084859.P13203326788937568466
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084643 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084859.P13203326788937568466

namespace A084859

/-- `Δ[A084643(n)/2]` -/
def P13203326788937568466.Spec : Prop :=
  ∀ n, P13203326788937568466.a n = (A084859 n : ℚ)

end A084859

/-! ## A084859.P8164478721879055894

`(A084643(n)+A081038(n))/2`
-/

namespace A084859.P8164478721879055894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084643 n + A081038 n : ℚ) / 2

end

end A084859.P8164478721879055894

namespace A084859

/-- `(A084643(n)+A081038(n))/2` -/
def P8164478721879055894.Spec : Prop :=
  ∀ n, P8164478721879055894.a n = (A084859 n : ℚ)

end A084859

/-! ## A084859.P1367605991805064220

`Δ[Δ[A082133(n)]-A001047(n)]`
-/

namespace A084859.P1367605991805064220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082133 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084859.P1367605991805064220

namespace A084859

/-- `Δ[Δ[A082133(n)]-A001047(n)]` -/
def P1367605991805064220.Spec : Prop :=
  ∀ n, P1367605991805064220.a n = A084859 n

end A084859

/-! ## A084859.P3381360912367024993

`Δ[2^n-(A003462(n)-A027471(n+1))]`
-/

namespace A084859.P3381360912367024993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A003462 n - A027471 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084859.P3381360912367024993

namespace A084859

/-- `Δ[2^n-(A003462(n)-A027471(n+1))]` -/
def P3381360912367024993.Spec : Prop :=
  ∀ n, P3381360912367024993.a n = A084859 n

end A084859

/-!
# A084860: Expansion of (1 - 2*x + 2*x^2 - x^3)/(1 - 2*x)^2.

The programs for A084860, the canonical program `A084860.P5246588383665058899` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084860 has offset 0).

The definition of A084860 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+2x^2-x^3)/(1-4x+4x^2))` (program `A084860.P5246588383665058899`, by `A084860.P5246588383665058899.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084860.P5246588383665058899

`ogf((1-2x+2x^2-x^3)/(1-4x+4x^2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084860

/-- `ogf((1-2x+2x^2-x^3)/(1-4x+4x^2))` -/
def P5246588383665058899.Spec : Prop :=
  ∀ n, P5246588383665058899.a n = A084860 n

theorem P5246588383665058899.correct : P5246588383665058899.Spec := by
  intro n
  simp only [A084860]

end A084860

/-! ## A084860.P7618857615137171316

`round(3*(n+2)*2^(n-3))`
-/

namespace A084860.P7618857615137171316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)))

end

end A084860.P7618857615137171316

namespace A084860

/-- `round(3*(n+2)*2^(n-3))` -/
def P7618857615137171316.Spec : Prop :=
  ∀ n, P7618857615137171316.a n = A084860 n

end A084860

/-! ## A084860.P12964522276704242683

`∑[A084861(n)]`
-/

namespace A084860.P12964522276704242683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084860.P12964522276704242683

namespace A084860

/-- `∑[A084861(n)]` -/
def P12964522276704242683.Spec : Prop :=
  ∀ n, P12964522276704242683.a n = A084860 n

end A084860

/-! ## A084860.P3970168371493145613

`A049610(n)+A045623(n)`
-/

namespace A084860.P3970168371493145613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n + A045623 n

end

end A084860.P3970168371493145613

namespace A084860

/-- `A049610(n)+A045623(n)` -/
def P3970168371493145613.Spec : Prop :=
  ∀ n, P3970168371493145613.a n = A084860 n

end A084860

/-! ## A084860.P9053635742991786728

`A139756(n)+A111297(n)`
-/

namespace A084860.P9053635742991786728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n + A111297 n

end

end A084860.P9053635742991786728

namespace A084860

/-- `A139756(n)+A111297(n)` -/
def P9053635742991786728.Spec : Prop :=
  ∀ n, P9053635742991786728.a n = A084860 n

end A084860

/-! ## A084860.P3963075479617893310

`A255047(n)+A170881(n)`
-/

namespace A084860.P3963075479617893310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n + A170881 n

end

end A084860.P3963075479617893310

namespace A084860

/-- `A255047(n)+A170881(n)` -/
def P3963075479617893310.Spec : Prop :=
  ∀ n, P3963075479617893310.a n = A084860 n

end A084860

/-! ## A084860.P13008867210043572297

`A106472(n)-A166444(n)`
-/

namespace A084860.P13008867210043572297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106472 n - A166444 n

end

end A084860.P13008867210043572297

namespace A084860

/-- `A106472(n)-A166444(n)` -/
def P13008867210043572297.Spec : Prop :=
  ∀ n, P13008867210043572297.a n = A084860 n

end A084860

/-! ## A084860.P2737414993345665801

`A049610(n+1)+A045891(n)`
-/

namespace A084860.P2737414993345665801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 1) + A045891 n

end

end A084860.P2737414993345665801

namespace A084860

/-- `A049610(n+1)+A045891(n)` -/
def P2737414993345665801.Spec : Prop :=
  ∀ n, P2737414993345665801.a n = A084860 n

end A084860

/-! ## A084860.P6988218980904557442

`A109975(n)+2*A049610(n)`
-/

namespace A084860.P6988218980904557442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 n + 2 * A049610 n

end

end A084860.P6988218980904557442

namespace A084860

/-- `A109975(n)+2*A049610(n)` -/
def P6988218980904557442.Spec : Prop :=
  ∀ n, P6988218980904557442.a n = A084860 n

end A084860

/-! ## A084860.P16952138582623610885

`A109975(n)+n*A034008(n)`
-/

namespace A084860.P16952138582623610885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 n + (n : ℤ) * A034008 n

end

end A084860.P16952138582623610885

namespace A084860

/-- `A109975(n)+n*A034008(n)` -/
def P16952138582623610885.Spec : Prop :=
  ∀ n, P16952138582623610885.a n = A084860 n

end A084860

/-! ## A084860.P7638498876453019105

`A139756(n)+Δ[record[A034007(n)]]`
-/

namespace A084860.P7638498876453019105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n + (f1 (n + 1) - f1 n)

end

end A084860.P7638498876453019105

namespace A084860

/-- `A139756(n)+Δ[record[A034007(n)]]` -/
def P7638498876453019105.Spec : Prop :=
  ∀ n, P7638498876453019105.a n = A084860 n

end A084860

/-! ## A084860.P3520229418249346785

`A111286(n)+n*A098011(n+1)`
-/

namespace A084860.P3520229418249346785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 n + (n : ℤ) * A098011 (n + 1)

end

end A084860.P3520229418249346785

namespace A084860

/-- `A111286(n)+n*A098011(n+1)` -/
def P3520229418249346785.Spec : Prop :=
  ∀ n, P3520229418249346785.a n = A084860 n

end A084860

/-! ## A084860.P16164395231809216369

`(A329683(n)+n)*A098011(n+1)`
-/

namespace A084860.P16164395231809216369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A329683 n + (n : ℤ)) * A098011 (n + 1)

end

end A084860.P16164395231809216369

namespace A084860

/-- `(A329683(n)+n)*A098011(n+1)` -/
def P16164395231809216369.Spec : Prop :=
  ∀ n, P16164395231809216369.a n = A084860 n

end A084860

/-! ## A084860.P11930129756155668331

`A045623(n)+A045891(n)-A011782(n)`
-/

namespace A084860.P11930129756155668331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n + (A045891 n - A011782 n)

end

end A084860.P11930129756155668331

namespace A084860

/-- `A045623(n)+A045891(n)-A011782(n)` -/
def P11930129756155668331.Spec : Prop :=
  ∀ n, P11930129756155668331.a n = A084860 n

end A084860

/-! ## A084860.P4172430704284557033

`A045623(n)+A111297(n)-A000079(n)`
-/

namespace A084860.P4172430704284557033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n + (A111297 n - A000079 n)

end

end A084860.P4172430704284557033

namespace A084860

/-- `A045623(n)+A111297(n)-A000079(n)` -/
def P4172430704284557033.Spec : Prop :=
  ∀ n, P4172430704284557033.a n = A084860 n

end A084860

/-! ## A084860.P7288297959245031723

`A045623(n)+A045623(n)-A109975(n)`
-/

namespace A084860.P7288297959245031723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n + (A045623 n - A109975 n)

end

end A084860.P7288297959245031723

namespace A084860

/-- `A045623(n)+A045623(n)-A109975(n)` -/
def P7288297959245031723.Spec : Prop :=
  ∀ n, P7288297959245031723.a n = A084860 n

end A084860

/-! ## A084860.P16645553165824633892

`A045891(n+1)+A045891(n)-A000079(n)`
-/

namespace A084860.P16645553165824633892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 1) + (A045891 n - A000079 n)

end

end A084860.P16645553165824633892

namespace A084860

/-- `A045891(n+1)+A045891(n)-A000079(n)` -/
def P16645553165824633892.Spec : Prop :=
  ∀ n, P16645553165824633892.a n = A084860 n

end A084860

/-! ## A084860.P14232361498341617359

`A045891(n+1)+A045891(n)-A011782(n+1)`
-/

namespace A084860.P14232361498341617359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 1) + (A045891 n - A011782 (n + 1))

end

end A084860.P14232361498341617359

namespace A084860

/-- `A045891(n+1)+A045891(n)-A011782(n+1)` -/
def P14232361498341617359.Spec : Prop :=
  ∀ n, P14232361498341617359.a n = A084860 n

end A084860

/-! ## A084860.P10785140965779707914

`Δ[n/2*A098011(n+2)]`
-/

namespace A084860.P10785140965779707914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A098011 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084860.P10785140965779707914

namespace A084860

/-- `Δ[n/2*A098011(n+2)]` -/
def P10785140965779707914.Spec : Prop :=
  ∀ n, P10785140965779707914.a n = (A084860 n : ℚ)

end A084860

/-! ## A084860.P15894171982762364673

`A045891(n)+Δ[A139756(n)]`
-/

namespace A084860.P15894171982762364673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n + (f1 (n + 1) - f1 n)

end

end A084860.P15894171982762364673

namespace A084860

/-- `A045891(n)+Δ[A139756(n)]` -/
def P15894171982762364673.Spec : Prop :=
  ∀ n, P15894171982762364673.a n = A084860 n

end A084860

/-!
# A084861: Expansion of (1-3*x+4*x^2-3*x^3+x^4)/(1-2*x)^2.

The programs for A084861, the canonical program `A084861.P1174036714811825226` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084861 has offset 0).

The definition of A084861 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+4x^2-3x^3+x^4)/(1-4x+4x^2))` (program `A084861.P1174036714811825226`, by `A084861.P1174036714811825226.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084861.P1174036714811825226

`ogf((1-3x+4x^2-3x^3+x^4)/(1-4x+4x^2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084861

/-- `ogf((1-3x+4x^2-3x^3+x^4)/(1-4x+4x^2))` -/
def P1174036714811825226.Spec : Prop :=
  ∀ n, P1174036714811825226.a n = A084861 n

theorem P1174036714811825226.correct : P1174036714811825226.Spec := by
  intro n
  simp only [A084861]

end A084861

/-! ## A084861.P9500290020436145548

`A323936(n+1)+A122742(n+4)`
-/

namespace A084861.P9500290020436145548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323936 (n + 1) + A122742 (n + 4)

end

end A084861.P9500290020436145548

namespace A084861

/-- `A323936(n+1)+A122742(n+4)` -/
def P9500290020436145548.Spec : Prop :=
  ∀ n, P9500290020436145548.a n = A084861 n

end A084861

/-! ## A084861.P14316594233501983757

`A034007(n)+A045891(n)-A034008(n)`
-/

namespace A084861.P14316594233501983757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n + (A045891 n - A034008 n)

end

end A084861.P14316594233501983757

namespace A084861

/-- `A034007(n)+A045891(n)-A034008(n)` -/
def P14316594233501983757.Spec : Prop :=
  ∀ n, P14316594233501983757.a n = A084861 n

end A084861

/-! ## A084861.P8777612638102016450

`A034007(n+1)+A034007(n)-A131577(n)`
-/

namespace A084861.P8777612638102016450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (n + 1) + (A034007 n - A131577 n)

end

end A084861.P8777612638102016450

namespace A084861

/-- `A034007(n+1)+A034007(n)-A131577(n)` -/
def P8777612638102016450.Spec : Prop :=
  ∀ n, P8777612638102016450.a n = A084861 n

end A084861

/-! ## A084861.P4398530215254248858

`A034007(n+1)+A034007(n)-A034008(n+1)`
-/

namespace A084861.P4398530215254248858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (n + 1) + (A034007 n - A034008 (n + 1))

end

end A084861.P4398530215254248858

namespace A084861

/-- `A034007(n+1)+A034007(n)-A034008(n+1)` -/
def P4398530215254248858.Spec : Prop :=
  ∀ n, P4398530215254248858.a n = A084861 n

end A084861

/-! ## A084861.P7548109395486918952

`A034007(n)+A045623(n)-A045891(n)`
-/

namespace A084861.P7548109395486918952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n + (A045623 n - A045891 n)

end

end A084861.P7548109395486918952

namespace A084861

/-- `A034007(n)+A045623(n)-A045891(n)` -/
def P7548109395486918952.Spec : Prop :=
  ∀ n, P7548109395486918952.a n = A084861 n

end A084861

/-! ## A084861.P890074594741233271

`A045891(n+1)+A034007(n)-A111297(n)`
-/

namespace A084861.P890074594741233271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 1) + (A034007 n - A111297 n)

end

end A084861.P890074594741233271

namespace A084861

/-- `A045891(n+1)+A034007(n)-A111297(n)` -/
def P890074594741233271.Spec : Prop :=
  ∀ n, P890074594741233271.a n = A084861 n

end A084861

/-! ## A084861.P11752953322291728444

`Δ[A087447(n)-A034007(n)]`
-/

namespace A084861.P11752953322291728444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 n - A034007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084861.P11752953322291728444

namespace A084861

/-- `Δ[A087447(n)-A034007(n)]` -/
def P11752953322291728444.Spec : Prop :=
  ∀ n, P11752953322291728444.a n = A084861 n

end A084861

/-! ## A084861.P11606535255747169261

`Δ[round(A084858(n)/4)]`
-/

namespace A084861.P11606535255747169261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A084858 n : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084861.P11606535255747169261

namespace A084861

/-- `Δ[round(A084858(n)/4)]` -/
def P11606535255747169261.Spec : Prop :=
  ∀ n, P11606535255747169261.a n = A084861 n

end A084861

/-! ## A084861.P12152558322884339988

`Δ[Δ[A057711(n)]-A034007(n)]`
-/

namespace A084861.P12152558322884339988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A034007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084861.P12152558322884339988

namespace A084861

/-- `Δ[Δ[A057711(n)]-A034007(n)]` -/
def P12152558322884339988.Spec : Prop :=
  ∀ n, P12152558322884339988.a n = A084861 n

end A084861

/-! ## A084861.P5799213708410310252

`A062110(∑[n+1]+2)+A034007(n)`
-/

namespace A084861.P5799213708410310252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A034007 n

end

end A084861.P5799213708410310252

namespace A084861

/-- `A062110(∑[n+1]+2)+A034007(n)` -/
def P5799213708410310252.Spec : Prop :=
  ∀ n, P5799213708410310252.a n = A084861 n

end A084861

/-! ## A084861.P3744081836466607148

`A207633(A179865(n+1))`
-/

namespace A084861.P3744081836466607148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207633 (A179865 (n + 1)).toNat

end

end A084861.P3744081836466607148

namespace A084861

/-- `A207633(A179865(n+1))` -/
def P3744081836466607148.Spec : Prop :=
  ∀ n, P3744081836466607148.a n = A084861 n

end A084861

/-!
# A084863: Number of solutions to n = 2*u^2 + 3*v^2, u*v>0.

The programs for A084863, there is no canonical definition to state claims against.
-/

/-! ## A084863.P3574304303384220450

`floor(A108563(n+1)/4)`
-/

namespace A084863.P3574304303384220450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A108563 (n + 1) : ℚ) / 4⌋

end

end A084863.P3574304303384220450

/-! ## A084863.P7499525096117330794

`A002265(A108563(n+1))`
-/

namespace A084863.P7499525096117330794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A108563 (n + 1)).toNat

end

end A084863.P7499525096117330794

/-! ## A084863.P7750775183403249388

`A059169(A108563(n+1)+2)`
-/

namespace A084863.P7750775183403249388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A108563 (n + 1) + 2).toNat

end

end A084863.P7750775183403249388

/-! ## A084863.P4770969413572260477

`A004526(A108563(n+1)/2)`
-/

namespace A084863.P4770969413572260477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A108563 (n + 1) : ℚ) / 2)).toNat

end

end A084863.P4770969413572260477

/-! ## A084863.P12321081723802469831

`floor(A046113(2*(n+1))/4)`
-/

namespace A084863.P12321081723802469831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046113 (2 * (n + 1)) : ℚ) / 4⌋

end

end A084863.P12321081723802469831

/-! ## A084863.P10970445318529001457

`A002265(A046113(2*(n+1)))`
-/

namespace A084863.P10970445318529001457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A046113 (2 * (n + 1))).toNat

end

end A084863.P10970445318529001457

/-! ## A084863.P12523444918233395642

`A002265(abs(A260309(2*(n+1))))`
-/

namespace A084863.P12523444918233395642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 |A260309 (2 * (n + 1))|.toNat

end

end A084863.P12523444918233395642

/-! ## A084863.P14126073356665391290

`floor(A260309(8*(n+1))/4)`
-/

namespace A084863.P14126073356665391290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A260309 (8 * (n + 1)) : ℚ) / 4⌋

end

end A084863.P14126073356665391290

/-!
# A084864: Numbers that can be written in the form 2*u^2 + 3*v^2, u*v>0.

The programs for A084864, there is no canonical definition to state claims against.
-/

/-! ## A084864.P5063051814036826654

`lt[2, A108563(n)]`
-/

namespace A084864.P5063051814036826654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A084864.P5063051814036826654

/-! ## A084864.P16052304924717695061

`lt[A115660(n+1), -1]+1`
-/

namespace A084864.P16052304924717695061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A084864.P16052304924717695061

/-! ## A084864.P5456225291095741860

`eq[2, A051700(A108563(n)+1)]`
-/

namespace A084864.P5456225291095741860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A108563 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084864.P5456225291095741860

/-! ## A084864.P17200062083519764652

`eq[1, A014963(or(2, A108563(n)))]`
-/

namespace A084864.P17200062083519764652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.lor 2 (A108563 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084864.P17200062083519764652

/-! ## A084864.P13845482964424800982

`eq[A046113(n), A240349(A000377(n))]`
-/

namespace A084864.P13845482964424800982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240349 (A000377 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084864.P13845482964424800982

/-! ## A084864.P13034544645687886542

`lt[2, A046113(2*n)]`
-/

namespace A084864.P13034544645687886542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A084864.P13034544645687886542

/-! ## A084864.P4289783123344484869

`record[A032742(A155716(n+2))]`
-/

namespace A084864.P4289783123344484869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A155716 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084864.P4289783123344484869

/-! ## A084864.P5000020599193927489

`eq[A000038(n), A135863(A046113(2*n))]`
-/

namespace A084864.P5000020599193927489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135863 (A046113 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084864.P5000020599193927489

/-! ## A084864.P199168008256452276

`eq[A014087(A108563(n)), A108563(2*n)]`
-/

namespace A084864.P199168008256452276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014087 (A108563 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108563 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084864.P199168008256452276

/-! ## A084864.P11656634853633151440

`eq[A089803(2*n), A135863(A046113(2*n))]`
-/

namespace A084864.P11656634853633151440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089803 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135863 (A046113 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084864.P11656634853633151440

/-! ## A084864.P15968251883959025102

`lt[2, abs(A229723(3*n))]`
-/

namespace A084864.P15968251883959025102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A229723 (3 * n)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A084864.P15968251883959025102

/-! ## A084864.P17204616184075435843

`eq[A010815(A000377(n)²²), A046113(n)]`
-/

namespace A084864.P17204616184075435843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 ((A000377 n ^ 2) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084864.P17204616184075435843

/-! ## A084864.P7251911385685682051

`lt[2, A229723(12*n)]`
-/

namespace A084864.P7251911385685682051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229723 (12 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A084864.P7251911385685682051

/-!
# A084865: Primes of the form 2x^2 + 3y^2.

The programs for A084865, the canonical program `A084865.P10178582118198326892` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084865 has offset 1).

The definition of A084865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4503 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084865.P15204900460667127616

`∩[A045309(n+1), A296924(n+1)]`
-/

namespace A084865.P15204900460667127616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084865.P15204900460667127616

namespace A084865

/-- `∩[A045309(n+1), A296924(n+1)]` -/
def P15204900460667127616.Spec : Prop :=
  ∀ n, (P15204900460667127616.a n : ℤ) = A084865 (n + 1)

end A084865

/-! ## A084865.P2040893119368926627

`∩[A042999(n+1), A045309(n+1)]`
-/

namespace A084865.P2040893119368926627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084865.P2040893119368926627

namespace A084865

/-- `∩[A042999(n+1), A045309(n+1)]` -/
def P2040893119368926627.Spec : Prop :=
  ∀ n, (P2040893119368926627.a n : ℤ) = A084865 (n + 1)

end A084865

/-! ## A084865.P17015736051198373875

`∩[A042999(n+1), A296924(n+1)]`
-/

namespace A084865.P17015736051198373875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084865.P17015736051198373875

namespace A084865

/-- `∩[A042999(n+1), A296924(n+1)]` -/
def P17015736051198373875.Spec : Prop :=
  ∀ n, (P17015736051198373875.a n : ℤ) = A084865 (n + 1)

end A084865

/-! ## A084865.P14628016654519349472

`∩[A042999(n+1), A391366(n+1)]`
-/

namespace A084865.P14628016654519349472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084865.P14628016654519349472

namespace A084865

/-- `∩[A042999(n+1), A391366(n+1)]` -/
def P14628016654519349472.Spec : Prop :=
  ∀ n, (P14628016654519349472.a n : ℤ) = A084865 (n + 1)

end A084865

/-! ## A084865.P12515193625876310872

`∩[A045309(n+1), A391366(n+1)]`
-/

namespace A084865.P12515193625876310872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084865.P12515193625876310872

namespace A084865

/-- `∩[A045309(n+1), A391366(n+1)]` -/
def P12515193625876310872.Spec : Prop :=
  ∀ n, (P12515193625876310872.a n : ℤ) = A084865 (n + 1)

end A084865

/-! ## A084865.P10178582118198326892

`p?[xor(2, n-n%3)+n]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084865

/-- `p?[xor(2, n-n%3)+n]` -/
def P10178582118198326892.Spec : Prop :=
  ∀ n, P10178582118198326892.a n = A084865 (n + 1)

theorem P10178582118198326892.correct : P10178582118198326892.Spec := by
  intro n
  simp only [A084865, Nat.add_sub_cancel]

end A084865

/-! ## A084865.P9916444203233504356

`∩[A042999(n+1), A066501(n+1)]`
-/

namespace A084865.P9916444203233504356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084865.P9916444203233504356

namespace A084865

/-- `∩[A042999(n+1), A066501(n+1)]` -/
def P9916444203233504356.Spec : Prop :=
  ∀ n, (P9916444203233504356.a n : ℤ) = A084865 (n + 1)

end A084865

/-! ## A084865.P6267863125342672695

`∩[A066501(n+1), A296924(n+1)]`
-/

namespace A084865.P6267863125342672695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084865.P6267863125342672695

namespace A084865

/-- `∩[A066501(n+1), A296924(n+1)]` -/
def P6267863125342672695.Spec : Prop :=
  ∀ n, (P6267863125342672695.a n : ℤ) = A084865 (n + 1)

end A084865

/-! ## A084865.P3005211753771072644

`record[A020639(2*xor(5, n)+n)]`
-/

namespace A084865.P3005211753771072644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * Nat.xor 5 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084865.P3005211753771072644

namespace A084865

/-- `record[A020639(2*xor(5, n)+n)]` -/
def P3005211753771072644.Spec : Prop :=
  ∀ n, P3005211753771072644.a n = A084865 (n + 1)

end A084865

/-! ## A084865.P16479161582559805406

`p?[A002480(n+1)]`
-/

namespace A084865.P16479161582559805406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084865.P16479161582559805406

namespace A084865

/-- `p?[A002480(n+1)]` -/
def P16479161582559805406.Spec : Prop :=
  ∀ n, P16479161582559805406.a n = A084865 (n + 1)

end A084865

/-! ## A084865.P2624807054547785995

`record[A006530(A002480(n+2))]`
-/

namespace A084865.P2624807054547785995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002480 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084865.P2624807054547785995

namespace A084865

/-- `record[A006530(A002480(n+2))]` -/
def P2624807054547785995.Spec : Prop :=
  ∀ n, P2624807054547785995.a n = A084865 (n + 1)

end A084865

/-! ## A084865.P18053330146315978300

`filter[A002480(n+2), A010051(#)]`
-/

namespace A084865.P18053330146315978300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A084865.P18053330146315978300

namespace A084865

/-- `filter[A002480(n+2), A010051(#)]` -/
def P18053330146315978300.Spec : Prop :=
  ∀ n, P18053330146315978300.a n = A084865 (n + 1)

end A084865

/-! ## A084865.P16455615896169355861

`filter[A002480(n+2), A302777(#)]`
-/

namespace A084865.P16455615896169355861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A084865.P16455615896169355861

namespace A084865

/-- `filter[A002480(n+2), A302777(#)]` -/
def P16455615896169355861.Spec : Prop :=
  ∀ n, P16455615896169355861.a n = A084865 (n + 1)

end A084865

/-! ## A084865.P7400447075032506384

`filter[A002480(n+2), A323153(#)]`
-/

namespace A084865.P7400447075032506384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A084865.P7400447075032506384

namespace A084865

/-- `filter[A002480(n+2), A323153(#)]` -/
def P7400447075032506384.Spec : Prop :=
  ∀ n, P7400447075032506384.a n = A084865 (n + 1)

end A084865

/-! ## A084865.P13878303797771758541

`filter[A002480(n+2), A355937(#)]`
-/

namespace A084865.P13878303797771758541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A084865.P13878303797771758541

namespace A084865

/-- `filter[A002480(n+2), A355937(#)]` -/
def P13878303797771758541.Spec : Prop :=
  ∀ n, P13878303797771758541.a n = A084865 (n + 1)

end A084865

/-! ## A084865.P9192385561814322990

`∩[A000040(n+1), A002480(n+1)]`
-/

namespace A084865.P9192385561814322990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084865.P9192385561814322990

namespace A084865

/-- `∩[A000040(n+1), A002480(n+1)]` -/
def P9192385561814322990.Spec : Prop :=
  ∀ n, (P9192385561814322990.a n : ℤ) = A084865 (n + 1)

end A084865

/-! ## A084865.P1666595889042579725

`∩[A000430(n+1), A002480(n+1)]`
-/

namespace A084865.P1666595889042579725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084865.P1666595889042579725

namespace A084865

/-- `∩[A000430(n+1), A002480(n+1)]` -/
def P1666595889042579725.Spec : Prop :=
  ∀ n, (P1666595889042579725.a n : ℤ) = A084865 (n + 1)

end A084865

/-! ## A084865.P13221501964943565078

`∩[A002480(n+1), A008578(n+1)]`
-/

namespace A084865.P13221501964943565078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084865.P13221501964943565078

namespace A084865

/-- `∩[A002480(n+1), A008578(n+1)]` -/
def P13221501964943565078.Spec : Prop :=
  ∀ n, (P13221501964943565078.a n : ℤ) = A084865 (n + 1)

end A084865

/-! ## A084865.P3209327477012671749

`∩[A002480(n+1), A009087(n+1)]`
-/

namespace A084865.P3209327477012671749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084865.P3209327477012671749

namespace A084865

/-- `∩[A002480(n+1), A009087(n+1)]` -/
def P3209327477012671749.Spec : Prop :=
  ∀ n, (P3209327477012671749.a n : ℤ) = A084865 (n + 1)

end A084865

/-! ## A084865.P11838370181495909897

`∩[A002480(n+1), A033946(n+1)]`
-/

namespace A084865.P11838370181495909897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084865.P11838370181495909897

namespace A084865

/-- `∩[A002480(n+1), A033946(n+1)]` -/
def P11838370181495909897.Spec : Prop :=
  ∀ n, (P11838370181495909897.a n : ℤ) = A084865 (n + 1)

end A084865

/-!
# A084867: Symmetric square table, read by antidiagonals, such that antidiagonal sums form the first row shifted left: T(0,0)=1, T(0,k) = Sum_{m=0..k-1} T(m,k-1-m) when k > 0; and T(n,k) = T(n-1,k) + T(n,k-1) when n > 0, k > 0.

The programs for A084867, there is no canonical definition to state claims against.
-/

/-! ## A084867.P6319064482637716737

`A113221(A227550(n))`
-/

namespace A084867.P6319064482637716737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A227550 n).toNat

end

end A084867.P6319064482637716737

/-!
# A084868: Main diagonal of symmetric square table A084867, in which the antidiagonal sums (A006012) form the first row shifted left.

The programs for A084868, there is no canonical definition to state claims against.
-/

/-! ## A084868.P6740648316419441585

`A084867(∑[4*n])`
-/

namespace A084868.P6740648316419441585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084867 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084868.P6740648316419441585

/-! ## A084868.P11613922826350294608

`A008679(A010907(n)+2)`
-/

namespace A084868.P11613922826350294608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A010907 n + 2).toNat

end

end A084868.P11613922826350294608

/-!
# A084869: Number of 2-multiantichains of an n-set.

The programs for A084869, the canonical program `A084869.P8642846568196599687` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084869 has offset 0).

The definition of A084869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084869.P8642846568196599687

`2^(2*n-1)-3^n+3*2^(n-1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084869

/-- `2^(2*n-1)-3^n+3*2^(n-1)` -/
def P8642846568196599687.Spec : Prop :=
  ∀ n, P8642846568196599687.a n = (A084869 n : ℚ)

end A084869

/-! ## A084869.P8977830723898537885

`or(A133789(n)+1, char[3])`
-/

namespace A084869.P8977830723898537885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A133789 n + 1) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A084869.P8977830723898537885

namespace A084869

/-- `or(A133789(n)+1, char[3])` -/
def P8977830723898537885.Spec : Prop :=
  ∀ n, P8977830723898537885.a n = A084869 n

end A084869

/-! ## A084869.P16702977297143564449

`abs(2^n-1-A134165(n))`
-/

namespace A084869.P16702977297143564449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - 1 - A134165 n|

end

end A084869.P16702977297143564449

namespace A084869

/-- `abs(2^n-1-A134165(n))` -/
def P16702977297143564449.Spec : Prop :=
  ∀ n, P16702977297143564449.a n = A084869 n

end A084869

/-! ## A084869.P1315785945526620600

`abs((2^n+4^n)/2-A001047(n))`
-/

namespace A084869.P1315785945526620600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(2 ^ n + 4 ^ n : ℚ) / 2 - (A001047 n : ℚ)|

end

end A084869.P1315785945526620600

namespace A084869

/-- `abs((2^n+4^n)/2-A001047(n))` -/
def P1315785945526620600.Spec : Prop :=
  ∀ n, P1315785945526620600.a n = (A084869 n : ℚ)

end A084869

/-! ## A084869.P9456278486849469945

`abs(abs((2^n-1)*(2^(n-1)-1)-A083324(n))-(2^n-1))`
-/

namespace A084869.P9456278486849469945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(|((2 ^ n : ℤ) - 1 : ℚ) * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1) - (A083324 n : ℚ)| - ((2 ^ n : ℤ) - 1 : ℚ))|

end

end A084869.P9456278486849469945

namespace A084869

/-- `abs(abs((2^n-1)*(2^(n-1)-1)-A083324(n))-(2^n-1))` -/
def P9456278486849469945.Spec : Prop :=
  ∀ n, P9456278486849469945.a n = (A084869 n : ℚ)

end A084869

/-! ## A084869.P17356309503009999063

`abs(A001047(n)-A007582(n))`
-/

namespace A084869.P17356309503009999063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A007582 n|

end

end A084869.P17356309503009999063

namespace A084869

/-- `abs(A001047(n)-A007582(n))` -/
def P17356309503009999063.Spec : Prop :=
  ∀ n, P17356309503009999063.a n = A084869 n

end A084869

/-! ## A084869.P3466217974454106155

`abs(A134165(n)-A000225(n))`
-/

namespace A084869.P3466217974454106155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134165 n - A000225 n|

end

end A084869.P3466217974454106155

namespace A084869

/-- `abs(A134165(n)-A000225(n))` -/
def P3466217974454106155.Spec : Prop :=
  ∀ n, P3466217974454106155.a n = A084869 n

end A084869

/-! ## A084869.P9633614080860284710

`abs(A003462(n)-A134168(n))`
-/

namespace A084869.P9633614080860284710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003462 n - A134168 n|

end

end A084869.P9633614080860284710

namespace A084869

/-- `abs(A003462(n)-A134168(n))` -/
def P9633614080860284710.Spec : Prop :=
  ∀ n, P9633614080860284710.a n = A084869 n

end A084869

/-! ## A084869.P14646713337325633469

`lcm(A133789(n)+1, A020985(n))`
-/

namespace A084869.P14646713337325633469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A133789 n + 1) (A020985 n)

end

end A084869.P14646713337325633469

namespace A084869

/-- `lcm(A133789(n)+1, A020985(n))` -/
def P14646713337325633469.Spec : Prop :=
  ∀ n, (P14646713337325633469.a n : ℤ) = A084869 n

end A084869

/-! ## A084869.P14118339074357940684

`(A000079(n)²-A245804(n))/2`
-/

namespace A084869.P14118339074357940684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 - A245804 n : ℚ) / 2

end

end A084869.P14118339074357940684

namespace A084869

/-- `(A000079(n)²-A245804(n))/2` -/
def P14118339074357940684.Spec : Prop :=
  ∀ n, P14118339074357940684.a n = (A084869 n : ℚ)

end A084869

/-! ## A084869.P4929930472548352468

`Δ[A007581(n)-A000392(n+1)]`
-/

namespace A084869.P4929930472548352468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n - A000392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084869.P4929930472548352468

namespace A084869

/-- `Δ[A007581(n)-A000392(n+1)]` -/
def P4929930472548352468.Spec : Prop :=
  ∀ n, P4929930472548352468.a n = A084869 n

end A084869

/-! ## A084869.P11997957279898062961

`Δ[A056473(2*(n+1))+A000079(n)]`
-/

namespace A084869.P11997957279898062961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056473 (2 * (n + 1)) + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084869.P11997957279898062961

namespace A084869

/-- `Δ[A056473(2*(n+1))+A000079(n)]` -/
def P11997957279898062961.Spec : Prop :=
  ∀ n, P11997957279898062961.a n = A084869 n

end A084869

/-! ## A084869.P4082842655503924824

`gcd(A133789(n)+1, A000038(n+1)*A167614(n+4))`
-/

namespace A084869.P4082842655503924824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133789 n + 1) (A000038 (n + 1) * A167614 (n + 4))

end

end A084869.P4082842655503924824

namespace A084869

/-- `gcd(A133789(n)+1, A000038(n+1)*A167614(n+4))` -/
def P4082842655503924824.Spec : Prop :=
  ∀ n, (P4082842655503924824.a n : ℤ) = A084869 n

end A084869

/-! ## A084869.P11597903217755599036

`A032125(n+1)%A074605(n)`
-/

namespace A084869.P11597903217755599036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032125 (n + 1)) (A074605 n)

end

end A084869.P11597903217755599036

namespace A084869

/-- `A032125(n+1)%A074605(n)` -/
def P11597903217755599036.Spec : Prop :=
  ∀ n, P11597903217755599036.a n = A084869 n

end A084869

/-! ## A084869.P7708982047116392879

`(A133789(n)+1)%A253487(n)`
-/

namespace A084869.P7708982047116392879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133789 n + 1) (A253487 n)

end

end A084869.P7708982047116392879

namespace A084869

/-- `(A133789(n)+1)%A253487(n)` -/
def P7708982047116392879.Spec : Prop :=
  ∀ n, P7708982047116392879.a n = A084869 n

end A084869

/-! ## A084869.P3574658670483197034

`record[A133789(A002262(n))+1]`
-/

namespace A084869.P3574658670483197034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133789 (A002262 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084869.P3574658670483197034

namespace A084869

/-- `record[A133789(A002262(n))+1]` -/
def P3574658670483197034.Spec : Prop :=
  ∀ n, P3574658670483197034.a n = A084869 n

end A084869

/-!
# A084870: Number of 3-multiantichains of an n-set.

The programs for A084870, the canonical program `A084870.P13503325003942060983` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084870 has offset 0).

The definition of A084870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084870.P13503325003942060983

`A092880(n)+A047707(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084870

/-- `A092880(n)+A047707(n)` -/
def P13503325003942060983.Spec : Prop :=
  ∀ n, P13503325003942060983.a n = A084870 n

theorem P13503325003942060983.correct : P13503325003942060983.Spec := by
  intro n
  simp only [A084870]

end A084870

/-! ## A084870.P22463171995297627

`A047707(n)+A083324(n)-A001047(n)`
-/

namespace A084870.P22463171995297627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047707 n + (A083324 n - A001047 n)

end

end A084870.P22463171995297627

namespace A084870

/-- `A047707(n)+A083324(n)-A001047(n)` -/
def P22463171995297627.Spec : Prop :=
  ∀ n, P22463171995297627.a n = A084870 n

theorem P22463171995297627.correct : P22463171995297627.Spec := by
  intro n
  simp only [A084870, Nat.add_sub_cancel, A084870.P22463171995297627.a, A084870.P13503325003942060983.a, A001047, A001047.P13659031121335709313.a, A047707, A047707.P6174633853749338442.a, A083324, A083324.P712014390410923406.a, A092880, A092880.P17673784852893796403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A084870

/-! ## A084870.P1410621164679548980

`A020522(n)+A047707(n)-A245804(n)`
-/

namespace A084870.P1410621164679548980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020522 n + (A047707 n - A245804 n)

end

end A084870.P1410621164679548980

namespace A084870

/-- `A020522(n)+A047707(n)-A245804(n)` -/
def P1410621164679548980.Spec : Prop :=
  ∀ n, P1410621164679548980.a n = A084870 n

theorem P1410621164679548980.correct : P1410621164679548980.Spec := by
  intro n
  simp only [A084870, Nat.add_sub_cancel, A084870.P1410621164679548980.a, A084870.P13503325003942060983.a, A020522, A020522.P10227953348410881457.a, A047707, A047707.P6174633853749338442.a, A092880, A092880.P17673784852893796403.a, A245804, A245804.P12793058916236791245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A084870

/-! ## A084870.P4443320749140548470

`A000079(n+1)+A047707(n)+A002250(n)`
-/

namespace A084870.P4443320749140548470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A047707 n + A002250 n)

end

end A084870.P4443320749140548470

namespace A084870

/-- `A000079(n+1)+A047707(n)+A002250(n)` -/
def P4443320749140548470.Spec : Prop :=
  ∀ n, P4443320749140548470.a n = A084870 n

theorem P4443320749140548470.correct : P4443320749140548470.Spec := by
  intro n
  simp only [A084870, Nat.add_sub_cancel, A084870.P4443320749140548470.a, A084870.P13503325003942060983.a, A000079, A000079.P10855139691139572931.a, A002250, A002250.P15900526212734195691.a, A047707, A047707.P6174633853749338442.a, A092880, A092880.P17673784852893796403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A084870

/-! ## A084870.P3530378301272374673

`A000225(n+1)+1+A047707(n)+A002250(n)`
-/

namespace A084870.P3530378301272374673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + 1 + (A047707 n + A002250 n)

end

end A084870.P3530378301272374673

namespace A084870

/-- `A000225(n+1)+1+A047707(n)+A002250(n)` -/
def P3530378301272374673.Spec : Prop :=
  ∀ n, P3530378301272374673.a n = A084870 n

theorem P3530378301272374673.correct : P3530378301272374673.Spec := by
  intro n
  simp only [A084870, Nat.add_sub_cancel, A084870.P3530378301272374673.a, A084870.P13503325003942060983.a, A000225, A000225.P6535533121115206393.a, A002250, A002250.P15900526212734195691.a, A047707, A047707.P6174633853749338442.a, A092880, A092880.P17673784852893796403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A084870

/-! ## A084870.P1006667555713269752

`record[A046143(n+1)+1]+A047707(n)+A002250(n)`
-/

namespace A084870.P1006667555713269752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046143 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A047707 n + A002250 n)

end

end A084870.P1006667555713269752

namespace A084870

/-- `record[A046143(n+1)+1]+A047707(n)+A002250(n)` -/
def P1006667555713269752.Spec : Prop :=
  ∀ n, P1006667555713269752.a n = A084870 n

end A084870

/-!
# A084871: Number of 4-multiantichains of an n-set.

The programs for A084871, there is no canonical definition to state claims against.
-/

/-! ## A084871.P12861192847040296956

`A026496(n^n)+n`
-/

namespace A084871.P12861192847040296956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026496 (n ^ n) + (n : ℤ)

end

end A084871.P12861192847040296956

/-!
# A084872: Number of 5-multiantichains of an n-set.

The programs for A084872, there is no canonical definition to state claims against.
-/

/-! ## A084872.P7508378636889572059

`A188277(A162743(n))`
-/

namespace A084872.P7508378636889572059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (A162743 n).toNat

end

end A084872.P7508378636889572059

/-!
# A084873: Number of 6-multiantichains of an n-set.

The programs for A084873, there is no canonical definition to state claims against.
-/

/-! ## A084873.P2479218292992134100

`∑[A073199(A073179(n))]`
-/

namespace A084873.P2479218292992134100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073199 (A073179 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084873.P2479218292992134100

/-!
# A084874: Number of (k,m,n)-antichains of multisets with k=3 and m=2.

The programs for A084874, the canonical program `A084874.P2299025076880832872` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084874 has offset 0).

The definition of A084874 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084874.P2299025076880832872

`(9^n-2*6^n+3^n)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084874

/-- `(9^n-2*6^n+3^n)/2` -/
def P2299025076880832872.Spec : Prop :=
  ∀ n, P2299025076880832872.a n = (A084874 n : ℚ)

end A084874

/-! ## A084874.P14245900498521166114

`3^n*A000392(n+1)`
-/

namespace A084874.P14245900498521166114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000392 (n + 1)

end

end A084874.P14245900498521166114

namespace A084874

/-- `3^n*A000392(n+1)` -/
def P14245900498521166114.Spec : Prop :=
  ∀ n, P14245900498521166114.a n = A084874 n

end A084874

/-! ## A084874.P4924862003437846739

`3^(n-1)*A094033(n+1)`
-/

namespace A084874.P4924862003437846739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A094033 (n + 1) : ℚ)

end

end A084874.P4924862003437846739

namespace A084874

/-- `3^(n-1)*A094033(n+1)` -/
def P4924862003437846739.Spec : Prop :=
  ∀ n, P4924862003437846739.a n = (A084874 n : ℚ)

end A084874

/-! ## A084874.P2177597074256985471

`∑[A304973(2*n)]/2*3^n`
-/

namespace A084874.P2177597074256985471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304973 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 * (3 ^ n : ℚ)

end

end A084874.P2177597074256985471

namespace A084874

/-- `∑[A304973(2*n)]/2*3^n` -/
def P2177597074256985471.Spec : Prop :=
  ∀ n, P2177597074256985471.a n = (A084874 n : ℚ)

end A084874

/-! ## A084874.P9126393495237108111

`3^n*3*(A101052(n)-1)/6`
-/

namespace A084874.P9126393495237108111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) * ((3 * (A101052 n - 1) : ℚ) / 6)

end

end A084874.P9126393495237108111

namespace A084874

/-- `3^n*3*(A101052(n)-1)/6` -/
def P9126393495237108111.Spec : Prop :=
  ∀ n, P9126393495237108111.a n = (A084874 n : ℚ)

end A084874

/-! ## A084874.P3243241406189816393

`(A134063(n)-1)*A000244(n)`
-/

namespace A084874.P3243241406189816393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134063 n - 1) * A000244 n

end

end A084874.P3243241406189816393

namespace A084874

/-- `(A134063(n)-1)*A000244(n)` -/
def P3243241406189816393.Spec : Prop :=
  ∀ n, P3243241406189816393.a n = A084874 n

end A084874

/-! ## A084874.P4011602830930403524

`A000392(n+1)*A140429(n+1)`
-/

namespace A084874.P4011602830930403524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) * A140429 (n + 1)

end

end A084874.P4011602830930403524

namespace A084874

/-- `A000392(n+1)*A140429(n+1)` -/
def P4011602830930403524.Spec : Prop :=
  ∀ n, P4011602830930403524.a n = A084874 n

end A084874

/-! ## A084874.P15170600454533399620

`A000244(n)*A056509(2*n+1)`
-/

namespace A084874.P15170600454533399620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A056509 (2 * n + 1)

end

end A084874.P15170600454533399620

namespace A084874

/-- `A000244(n)*A056509(2*n+1)` -/
def P15170600454533399620.Spec : Prop :=
  ∀ n, P15170600454533399620.a n = A084874 n

end A084874

/-! ## A084874.P433926671427793149

`A000392(n+1)*A056449(2*n)`
-/

namespace A084874.P433926671427793149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) * A056449 (2 * n)

end

end A084874.P433926671427793149

namespace A084874

/-- `A000392(n+1)*A056449(2*n)` -/
def P433926671427793149.Spec : Prop :=
  ∀ n, P433926671427793149.a n = A084874 n

end A084874

/-! ## A084874.P1658463278037938187

`A028243(n+1)/2*A000244(n)`
-/

namespace A084874.P1658463278037938187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028243 (n + 1) : ℚ) / 2 * (A000244 n : ℚ)

end

end A084874.P1658463278037938187

namespace A084874

/-- `A028243(n+1)/2*A000244(n)` -/
def P1658463278037938187.Spec : Prop :=
  ∀ n, P1658463278037938187.a n = (A084874 n : ℚ)

end A084874

/-! ## A084874.P10433824286995836808

`(A003462(n)-A000225(n))*A000244(n)`
-/

namespace A084874.P10433824286995836808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003462 n - A000225 n) * A000244 n

end

end A084874.P10433824286995836808

namespace A084874

/-- `(A003462(n)-A000225(n))*A000244(n)` -/
def P10433824286995836808.Spec : Prop :=
  ∀ n, P10433824286995836808.a n = A084874 n

end A084874

/-! ## A084874.P11215071034283466538

`(A001047(n)-A003462(n))*A000244(n)`
-/

namespace A084874.P11215071034283466538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001047 n - A003462 n) * A000244 n

end

end A084874.P11215071034283466538

namespace A084874

/-- `(A001047(n)-A003462(n))*A000244(n)` -/
def P11215071034283466538.Spec : Prop :=
  ∀ n, P11215071034283466538.a n = A084874 n

end A084874

/-! ## A084874.P5114475703014757743

`(A007051(n)-A000079(n))*A000244(n)`
-/

namespace A084874.P5114475703014757743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007051 n - A000079 n) * A000244 n

end

end A084874.P5114475703014757743

namespace A084874

/-- `(A007051(n)-A000079(n))*A000244(n)` -/
def P5114475703014757743.Spec : Prop :=
  ∀ n, P5114475703014757743.a n = A084874 n

end A084874

/-! ## A084874.P11401838317573295447

`(A000244(n)-A094374(n))*A000244(n)`
-/

namespace A084874.P11401838317573295447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A094374 n) * A000244 n

end

end A084874.P11401838317573295447

namespace A084874

/-- `(A000244(n)-A094374(n))*A000244(n)` -/
def P11401838317573295447.Spec : Prop :=
  ∀ n, P11401838317573295447.a n = A084874 n

end A084874

/-! ## A084874.P515447062469038514

`(A027649(n)-∑[A000244(n)])*A000244(n)`
-/

namespace A084874.P515447062469038514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027649 n - ∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A084874.P515447062469038514

namespace A084874

/-- `(A027649(n)-∑[A000244(n)])*A000244(n)` -/
def P515447062469038514.Spec : Prop :=
  ∀ n, P515447062469038514.a n = A084874 n

end A084874

/-! ## A084874.P7354315603468289996

`(A053156(n+1)-A000244(n))*A000244(n)`
-/

namespace A084874.P7354315603468289996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053156 (n + 1) - A000244 n) * A000244 n

end

end A084874.P7354315603468289996

namespace A084874

/-- `(A053156(n+1)-A000244(n))*A000244(n)` -/
def P7354315603468289996.Spec : Prop :=
  ∀ n, P7354315603468289996.a n = A084874 n

end A084874

/-! ## A084874.P17019320235370578289

`A000392(n+1)/A000079(n)*A000400(n)`
-/

namespace A084874.P17019320235370578289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000392 (n + 1) : ℚ) / (A000079 n : ℚ) * (A000400 n : ℚ)

end

end A084874.P17019320235370578289

namespace A084874

/-- `A000392(n+1)/A000079(n)*A000400(n)` -/
def P17019320235370578289.Spec : Prop :=
  ∀ n, P17019320235370578289.a n = (A084874 n : ℚ)

end A084874

/-! ## A084874.P4329838125069283816

`A000392(n+1)*A034472(n)-A000392(n+1)`
-/

namespace A084874.P4329838125069283816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) * A034472 n - A000392 (n + 1)

end

end A084874.P4329838125069283816

namespace A084874

/-- `A000392(n+1)*A034472(n)-A000392(n+1)` -/
def P4329838125069283816.Spec : Prop :=
  ∀ n, P4329838125069283816.a n = A084874 n

end A084874

/-!
# A084875: Number of (k,m,n)-antichains of multisets with k=3 and m=3.

The programs for A084875, there is no canonical definition to state claims against.
-/

/-! ## A084875.P6379177038160229880

`A084880(n)-(A084879(n)+A084874(n))`
-/

namespace A084875.P6379177038160229880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084880 n - (A084879 n + A084874 n)

end

end A084875.P6379177038160229880

/-!
# A084879: Number of (k,m,n)-multiantichains of multisets with k=3 and m=2.

The programs for A084879, the canonical program `A084879.P849843844686271333` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084879 has offset 0).

The definition of A084879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084879.P849843844686271333

`(9^n-2*6^n+3*3^n)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084879

/-- `(9^n-2*6^n+3*3^n)/2` -/
def P849843844686271333.Spec : Prop :=
  ∀ n, P849843844686271333.a n = (A084879 n : ℚ)

end A084879

/-! ## A084879.P8813857883745884355

`A084874(n)+3^n`
-/

namespace A084879.P8813857883745884355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084874 n + (3 ^ n : ℤ)

end

end A084879.P8813857883745884355

namespace A084879

/-- `A084874(n)+3^n` -/
def P8813857883745884355.Spec : Prop :=
  ∀ n, P8813857883745884355.a n = A084879 n

end A084879

/-! ## A084879.P16470049757941451571

`3^n*A134063(n)`
-/

namespace A084879.P16470049757941451571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A134063 n

end

end A084879.P16470049757941451571

namespace A084879

/-- `3^n*A134063(n)` -/
def P16470049757941451571.Spec : Prop :=
  ∀ n, P16470049757941451571.a n = A084879 n

end A084879

/-! ## A084879.P14310683019030978243

`(floor(A101052(n)/2)+1)*3^n`
-/

namespace A084879.P14310683019030978243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(A101052 n : ℚ) / 2⌋ + 1) * (3 ^ n : ℤ)

end

end A084879.P14310683019030978243

namespace A084879

/-- `(floor(A101052(n)/2)+1)*3^n` -/
def P14310683019030978243.Spec : Prop :=
  ∀ n, P14310683019030978243.a n = A084879 n

end A084879

/-! ## A084879.P18047045822177702697

`lcm(A000244(n), A134063(n))`
-/

namespace A084879.P18047045822177702697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 n) (A134063 n)

end

end A084879.P18047045822177702697

namespace A084879

/-- `lcm(A000244(n), A134063(n))` -/
def P18047045822177702697.Spec : Prop :=
  ∀ n, (P18047045822177702697.a n : ℤ) = A084879 n

end A084879

/-! ## A084879.P10833356737093376020

`(A000392(n+1)+1)*A140429(n+1)`
-/

namespace A084879.P10833356737093376020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000392 (n + 1) + 1) * A140429 (n + 1)

end

end A084879.P10833356737093376020

namespace A084879

/-- `(A000392(n+1)+1)*A140429(n+1)` -/
def P10833356737093376020.Spec : Prop :=
  ∀ n, P10833356737093376020.a n = A084879 n

end A084879

/-! ## A084879.P5344770088013313000

`(A000392(n+1)+1)*A056449(2*n)`
-/

namespace A084879.P5344770088013313000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000392 (n + 1) + 1) * A056449 (2 * n)

end

end A084879.P5344770088013313000

namespace A084879

/-- `(A000392(n+1)+1)*A056449(2*n)` -/
def P5344770088013313000.Spec : Prop :=
  ∀ n, P5344770088013313000.a n = A084879 n

end A084879

/-! ## A084879.P15240289239600491314

`A025551(n)+A034472(n)-A062394(n)`
-/

namespace A084879.P15240289239600491314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025551 n + (A034472 n - A062394 n)

end

end A084879.P15240289239600491314

namespace A084879

/-- `A025551(n)+A034472(n)-A062394(n)` -/
def P15240289239600491314.Spec : Prop :=
  ∀ n, P15240289239600491314.a n = A084879 n

end A084879

/-! ## A084879.P14301738075917604768

`(A003462(n)-A000918(n))*A000244(n)`
-/

namespace A084879.P14301738075917604768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003462 n - A000918 n) * A000244 n

end

end A084879.P14301738075917604768

namespace A084879

/-- `(A003462(n)-A000918(n))*A000244(n)` -/
def P14301738075917604768.Spec : Prop :=
  ∀ n, P14301738075917604768.a n = A084879 n

end A084879

/-! ## A084879.P3870051024583553838

`(A007051(n)-A000225(n))*A000244(n)`
-/

namespace A084879.P3870051024583553838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007051 n - A000225 n) * A000244 n

end

end A084879.P3870051024583553838

namespace A084879

/-- `(A007051(n)-A000225(n))*A000244(n)` -/
def P3870051024583553838.Spec : Prop :=
  ∀ n, P3870051024583553838.a n = A084879 n

end A084879

/-! ## A084879.P8870035424203232326

`A007051(n)*A168607(n)-A062394(n)`
-/

namespace A084879.P8870035424203232326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n * A168607 n - A062394 n

end

end A084879.P8870035424203232326

namespace A084879

/-- `A007051(n)*A168607(n)-A062394(n)` -/
def P8870035424203232326.Spec : Prop :=
  ∀ n, P8870035424203232326.a n = A084879 n

end A084879

/-! ## A084879.P2723661343769789314

`A000244(n)+A000244(n)*A000392(n+1)`
-/

namespace A084879.P2723661343769789314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + A000244 n * A000392 (n + 1)

end

end A084879.P2723661343769789314

namespace A084879

/-- `A000244(n)+A000244(n)*A000392(n+1)` -/
def P2723661343769789314.Spec : Prop :=
  ∀ n, P2723661343769789314.a n = A084879 n

end A084879

/-! ## A084879.P7215940737574611240

`(A053156(n+1)-A024023(n))*A000244(n)`
-/

namespace A084879.P7215940737574611240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053156 (n + 1) - A024023 n) * A000244 n

end

end A084879.P7215940737574611240

namespace A084879

/-- `(A053156(n+1)-A024023(n))*A000244(n)` -/
def P7215940737574611240.Spec : Prop :=
  ∀ n, P7215940737574611240.a n = A084879 n

end A084879

/-!
# A084880: Number of (k,m,n)-multiantichains of multisets with k=3 and m=3.

The programs for A084880, there is no canonical definition to state claims against.
-/

/-! ## A084880.P10241316455254126619

`A084874(n)+A084879(n)+A084875(n)`
-/

namespace A084880.P10241316455254126619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084874 n + (A084879 n + A084875 n)

end

end A084880.P10241316455254126619

/-!
# A084885: Triangular array, read by rows: T(n,k) = denominator of arithmetic derivative of n/k, 1<=k<=n.

The programs for A084885, there is no canonical definition to state claims against.
-/

/-! ## A084885.P13622506474253594354

`A164306(n+1)²%p?[A238343(n)]`
-/

namespace A084885.P13622506474253594354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164306 (n + 1) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A084885.P13622506474253594354

/-! ## A084885.P10898832855619876860

`A053165((A164306(n+1)^A033630(n))²)`
-/

namespace A084885.P10898832855619876860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (SequenceMachineLib.roundAway (((A164306 (n + 1) : ℚ) ^ (A033630 n : ℤ)) ^ 2)).toNat

end

end A084885.P10898832855619876860

/-! ## A084885.P8562938987469828920

`A055491(A059479(n+1)*A164306(n+1))`
-/

namespace A084885.P8562938987469828920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (A059479 (n + 1) * A164306 (n + 1)).toNat

end

end A084885.P8562938987469828920

/-! ## A084885.P10319004725000267445

`A053165((A033630(n)²*A164306(n+1))²)`
-/

namespace A084885.P10319004725000267445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 ((A033630 n ^ 2 * A164306 (n + 1)) ^ 2).toNat

end

end A084885.P10319004725000267445

/-!
# A084887: Triangular array, read by rows: T(n,k) = denominator of arithmetic derivative of k/n, 1<=k<=n.

The programs for A084887, there is no canonical definition to state claims against.
-/

/-! ## A084887.P12836178926677959927

`A050985(A093995(n+1)^A119803(A122202(n)))`
-/

namespace A084887.P12836178926677959927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (SequenceMachineLib.roundAway ((A093995 (n + 1) : ℚ) ^ (A119803 (A122202 n).toNat : ℤ))).toNat

end

end A084887.P12836178926677959927

/-!
# A084888: Number of partitions of n^3 into two squares>0.

The programs for A084888, the canonical program `A084888.P9794820322775673437` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084888 has offset 0).

The definition of A084888 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025426, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A084888.P9794820322775673437

`A025426(A000578(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A084888

/-- `A025426(A000578(n))` -/
def P9794820322775673437.Spec : Prop :=
  ∀ n, P9794820322775673437.a n = A084888 n

theorem P9794820322775673437.correct : P9794820322775673437.Spec := by
  intro n
  simp only [A084888]

end A084888

/-! ## A084888.P720214026411120993

`A091226(2*A342154(n))`
-/

namespace A084888.P720214026411120993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (2 * A342154 n).toNat

end

end A084888.P720214026411120993

namespace A084888

/-- `A091226(2*A342154(n))` -/
def P720214026411120993.Spec : Prop :=
  ∀ n, P720214026411120993.a n = A084888 n

end A084888

/-! ## A084888.P4978148083302216207

`A000196(A063725(n)*A342154(n))`
-/

namespace A084888.P4978148083302216207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A063725 n * A342154 n).toNat

end

end A084888.P4978148083302216207

namespace A084888

/-- `A000196(A063725(n)*A342154(n))` -/
def P4978148083302216207.Spec : Prop :=
  ∀ n, P4978148083302216207.a n = A084888 n

end A084888

/-! ## A084888.P13529906674267156659

`A172471(A025426(n)*A342154(n))`
-/

namespace A084888.P13529906674267156659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A025426 n * A342154 n).toNat

end

end A084888.P13529906674267156659

namespace A084888

/-- `A172471(A025426(n)*A342154(n))` -/
def P13529906674267156659.Spec : Prop :=
  ∀ n, P13529906674267156659.a n = A084888 n

end A084888

/-! ## A084888.P663789421754437045

`∑{d}[A342154(n), A000010(A000010(#))]`
-/

namespace A084888.P663789421754437045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 (A000010 d).toNat

end

end A084888.P663789421754437045

namespace A084888

/-- `∑{d}[A342154(n), A000010(A000010(#))]` -/
def P663789421754437045.Spec : Prop :=
  ∀ n, P663789421754437045.a n = A084888 n

end A084888

/-! ## A084888.P10237939213984324553

`A000120(A085187(A342154(n)))`
-/

namespace A084888.P10237939213984324553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A085187 (A342154 n).toNat).toNat

end

end A084888.P10237939213984324553

namespace A084888

/-- `A000120(A085187(A342154(n)))` -/
def P10237939213984324553.Spec : Prop :=
  ∀ n, P10237939213984324553.a n = A084888 n

end A084888

/-! ## A084888.P5670605972435138650

`A319081(A342154(n)²)`
-/

namespace A084888.P5670605972435138650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319081 (A342154 n ^ 2).toNat

end

end A084888.P5670605972435138650

namespace A084888

/-- `A319081(A342154(n)²)` -/
def P5670605972435138650.Spec : Prop :=
  ∀ n, P5670605972435138650.a n = A084888 n

end A084888

/-! ## A084888.P14888237863395219555

`A001221((A342154(n)+1)!)`
-/

namespace A084888.P14888237863395219555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A342154 n + 1).toNat)

end

end A084888.P14888237863395219555

namespace A084888

/-- `A001221((A342154(n)+1)!)` -/
def P14888237863395219555.Spec : Prop :=
  ∀ n, P14888237863395219555.a n = A084888 n

end A084888

/-! ## A084888.P7970405074876419852

`A001222(A005994(A342154(n)²))`
-/

namespace A084888.P7970405074876419852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005994 (A342154 n ^ 2).toNat).toNat

end

end A084888.P7970405074876419852

namespace A084888

/-- `A001222(A005994(A342154(n)²))` -/
def P7970405074876419852.Spec : Prop :=
  ∀ n, P7970405074876419852.a n = A084888 n

end A084888

/-! ## A084888.P10287880014824594166

`A025441(5^A342154(n))`
-/

namespace A084888.P10287880014824594166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A342154 n : ℤ))).toNat

end

end A084888.P10287880014824594166

namespace A084888

/-- `A025441(5^A342154(n))` -/
def P10287880014824594166.Spec : Prop :=
  ∀ n, P10287880014824594166.a n = A084888 n

end A084888

/-!
# A084890: Triangular array, read by rows: T(n,k) = arithmetic derivative of n*k, 1<=k<=n.

The programs for A084890, the canonical program `A084890.P16937717917964139730` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084890 has offset 1).

The definition of A084890 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A084890.P16937717917964139730

`A003415((row(n)+1)*(col(n)+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A084890

/-- `A003415((row(n)+1)*(col(n)+1))` -/
def P16937717917964139730.Spec : Prop :=
  ∀ n, P16937717917964139730.a n = A084890 (n + 1)

theorem P16937717917964139730.correct : P16937717917964139730.Spec := by
  intro n
  simp only [A084890, Nat.add_sub_cancel]

end A084890

/-! ## A084890.P15332583745101372815

`∑{d}[A075362(n+1), A300251(#)]`
-/

namespace A084890.P15332583745101372815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A084890.P15332583745101372815

namespace A084890

/-- `∑{d}[A075362(n+1), A300251(#)]` -/
def P15332583745101372815.Spec : Prop :=
  ∀ n, P15332583745101372815.a n = A084890 (n + 1)

end A084890

/-! ## A084890.P10785200768662986957

`A003415((1-C(∑[char[∑[n]]], 2)+n)*∑[char[∑[n]]])`
-/

namespace A084890.P10785200768662986957
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)).toNat

end

end A084890.P10785200768662986957

namespace A084890

/-- `A003415((1-C(∑[char[∑[n]]], 2)+n)*∑[char[∑[n]]])` -/
def P10785200768662986957.Spec : Prop :=
  ∀ n, P10785200768662986957.a n = A084890 (n + 1)

end A084890

/-! ## A084890.P7143406375753628406

`A003415(A075362(n+1))`
-/

namespace A084890.P7143406375753628406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A075362 (n + 1)).toNat

end

end A084890.P7143406375753628406

namespace A084890

/-- `A003415(A075362(n+1))` -/
def P7143406375753628406.Spec : Prop :=
  ∀ n, P7143406375753628406.a n = A084890 (n + 1)

end A084890

/-! ## A084890.P4559610009944632180

`A003415(A079904(comp[∑[n]]))`
-/

namespace A084890.P4559610009944632180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A079904 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A084890.P4559610009944632180

namespace A084890

/-- `A003415(A079904(comp[∑[n]]))` -/
def P4559610009944632180.Spec : Prop :=
  ∀ n, P4559610009944632180.a n = A084890 (n + 1)

end A084890

/-! ## A084890.P779742480702341615

`A003415(A223544(n+1)+1)`
-/

namespace A084890.P779742480702341615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A223544 (n + 1) + 1).toNat

end

end A084890.P779742480702341615

namespace A084890

/-- `A003415(A223544(n+1)+1)` -/
def P779742480702341615.Spec : Prop :=
  ∀ n, P779742480702341615.a n = A084890 (n + 1)

end A084890

/-! ## A084890.P5321314268739020570

`A003415(round(sqrt(2*n+1))*A002260(n+1))`
-/

namespace A084890.P5321314268739020570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) * A002260 (n + 1)).toNat

end

end A084890.P5321314268739020570

namespace A084890

/-- `A003415(round(sqrt(2*n+1))*A002260(n+1))` -/
def P5321314268739020570.Spec : Prop :=
  ∀ n, P5321314268739020570.a n = A084890 (n + 1)

end A084890

/-! ## A084890.P9488916384750550367

`A319703(2*A075362(n+1))`
-/

namespace A084890.P9488916384750550367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * A075362 (n + 1)).toNat

end

end A084890.P9488916384750550367

namespace A084890

/-- `A319703(2*A075362(n+1))` -/
def P9488916384750550367.Spec : Prop :=
  ∀ n, P9488916384750550367.a n = A084890 (n + 1)

end A084890

/-!
# A084891: Multiples of 2, 3, 5, or 7, but not 7-smooth.

The programs for A084891, the canonical program `A084891.P4686034000926733691` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084891 has offset 1).

The definition of A084891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7636 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084891.P4686034000926733691

`∩[A068191(n+1), A080672(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A084891

/-- `∩[A068191(n+1), A080672(n+1)]` -/
def P4686034000926733691.Spec : Prop :=
  ∀ n, (P4686034000926733691.a n : ℤ) = A084891 (n + 1)

theorem P4686034000926733691.correct : P4686034000926733691.Spec := by
  intro n
  simp only [A084891, Nat.add_sub_cancel]

end A084891

/-!
# A084894: Number of permutations of length n such that at least one absolute difference between consecutive elements has a distinct partner.

The programs for A084894, there is no canonical definition to state claims against.
-/

/-! ## A084894.P6687257763757966620

`(n+1)!-A006967(n+1)`
-/

namespace A084894.P6687257763757966620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A006967 (n + 1)

end

end A084894.P6687257763757966620

/-! ## A084894.P8808812716695641214

`record[A132159(n)]-A006967(n+1)`
-/

namespace A084894.P8808812716695641214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A006967 (n + 1)

end

end A084894.P8808812716695641214

/-! ## A084894.P11346640854220002210

`A000142(n+1)-A006967(n+1)`
-/

namespace A084894.P11346640854220002210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A006967 (n + 1)

end

end A084894.P11346640854220002210

/-! ## A084894.P9471165656218560631

`∏[A000027(n+1)]-A006967(n+1)`
-/

namespace A084894.P9471165656218560631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A006967 (n + 1)

end

end A084894.P9471165656218560631

/-! ## A084894.P7437547497060189742

`∏[n+1]-A006967(A085736(n+1))`
-/

namespace A084894.P7437547497060189742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A006967 (A085736 (n + 1)).toNat

end

end A084894.P7437547497060189742

/-!
# A084899: Binomial transform of heptagonal numbers A000566.

The programs for A084899, the canonical program `A084899.P14965695271258843141` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084899 has offset 0).

The definition of A084899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084899.P14965695271258843141

`2^(n-2)*n*(5*n-1)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084899

/-- `2^(n-2)*n*(5*n-1)/2` -/
def P14965695271258843141.Spec : Prop :=
  ∀ n, P14965695271258843141.a n = (A084899 n : ℚ)

end A084899

/-! ## A084899.P11635969865908465783

`A178987(n)+A089658(n)`
-/

namespace A084899.P11635969865908465783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 n + A089658 n

end

end A084899.P11635969865908465783

namespace A084899

/-- `A178987(n)+A089658(n)` -/
def P11635969865908465783.Spec : Prop :=
  ∀ n, P11635969865908465783.a n = A084899 n

end A084899

/-! ## A084899.P12978004586898238452

`A276289(n)+A001815(n)`
-/

namespace A084899.P12978004586898238452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276289 n + A001815 n

end

end A084899.P12978004586898238452

namespace A084899

/-- `A276289(n)+A001815(n)` -/
def P12978004586898238452.Spec : Prop :=
  ∀ n, P12978004586898238452.a n = A084899 n

end A084899

/-! ## A084899.P5083645629393562104

`A300451(n)-A127276(n)`
-/

namespace A084899.P5083645629393562104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300451 n - A127276 n

end

end A084899.P5083645629393562104

namespace A084899

/-- `A300451(n)-A127276(n)` -/
def P5083645629393562104.Spec : Prop :=
  ∀ n, P5083645629393562104.a n = A084899 n

end A084899

/-! ## A084899.P10008970779572750871

`A178987(n+1)+A072863(n)`
-/

namespace A084899.P10008970779572750871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 (n + 1) + A072863 n

end

end A084899.P10008970779572750871

namespace A084899

/-- `A178987(n+1)+A072863(n)` -/
def P10008970779572750871.Spec : Prop :=
  ∀ n, P10008970779572750871.a n = A084899 n

end A084899

/-! ## A084899.P10304379411885326807

`A084857(n)-A001815(n)/2`
-/

namespace A084899.P10304379411885326807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084857 n : ℚ) - (A001815 n : ℚ) / 2

end

end A084899.P10304379411885326807

namespace A084899

/-- `A084857(n)-A001815(n)/2` -/
def P10304379411885326807.Spec : Prop :=
  ∀ n, P10304379411885326807.a n = (A084899 n : ℚ)

end A084899

/-! ## A084899.P13836194721919632826

`∑[A268586(n+1)+A001788(n)]`
-/

namespace A084899.P13836194721919632826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268586 (n + 1) + A001788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084899.P13836194721919632826

namespace A084899

/-- `∑[A268586(n+1)+A001788(n)]` -/
def P13836194721919632826.Spec : Prop :=
  ∀ n, P13836194721919632826.a n = A084899 n

end A084899

/-! ## A084899.P1479837360991749868

`A001788(n)+A052481(n)-A081908(n)`
-/

namespace A084899.P1479837360991749868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n + (A052481 n - A081908 n)

end

end A084899.P1479837360991749868

namespace A084899

/-- `A001788(n)+A052481(n)-A081908(n)` -/
def P1479837360991749868.Spec : Prop :=
  ∀ n, P1479837360991749868.a n = A084899 n

end A084899

/-! ## A084899.P17380142092824156919

`A001788(n)+A300451(n)-A000079(n)`
-/

namespace A084899.P17380142092824156919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n + (A300451 n - A000079 n)

end

end A084899.P17380142092824156919

namespace A084899

/-- `A001788(n)+A300451(n)-A000079(n)` -/
def P17380142092824156919.Spec : Prop :=
  ∀ n, P17380142092824156919.a n = A084899 n

end A084899

/-! ## A084899.P13203248835569177502

`A178987(n+1)+A081908(n)+A001787(n)`
-/

namespace A084899.P13203248835569177502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 (n + 1) + (A081908 n + A001787 n)

end

end A084899.P13203248835569177502

namespace A084899

/-- `A178987(n+1)+A081908(n)+A001787(n)` -/
def P13203248835569177502.Spec : Prop :=
  ∀ n, P13203248835569177502.a n = A084899 n

end A084899

/-! ## A084899.P7532541526374366379

`A178987(n+1)+A300451(n)-A178987(n)`
-/

namespace A084899.P7532541526374366379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 (n + 1) + (A300451 n - A178987 n)

end

end A084899.P7532541526374366379

namespace A084899

/-- `A178987(n+1)+A300451(n)-A178987(n)` -/
def P7532541526374366379.Spec : Prop :=
  ∀ n, P7532541526374366379.a n = A084899 n

end A084899

/-! ## A084899.P12770923995618570306

`A001793(n+1)+A276289(n)-A053220(n+1)`
-/

namespace A084899.P12770923995618570306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 1) + (A276289 n - A053220 (n + 1))

end

end A084899.P12770923995618570306

namespace A084899

/-- `A001793(n+1)+A276289(n)-A053220(n+1)` -/
def P12770923995618570306.Spec : Prop :=
  ∀ n, P12770923995618570306.a n = A084899 n

end A084899

/-! ## A084899.P10549077586028092834

`A081908(n+1)+A178987(n+1)-A081908(n)`
-/

namespace A084899.P10549077586028092834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081908 (n + 1) + (A178987 (n + 1) - A081908 n)

end

end A084899.P10549077586028092834

namespace A084899

/-- `A081908(n+1)+A178987(n+1)-A081908(n)` -/
def P10549077586028092834.Spec : Prop :=
  ∀ n, P10549077586028092834.a n = A084899 n

end A084899

/-! ## A084899.P11267460718343613267

`ogf((x+3x^2)/(1-6x+12x^2-8x^3))`
-/

namespace A084899.P11267460718343613267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3] [1, -6, 12, -8] n

end

end A084899.P11267460718343613267

namespace A084899

/-- `ogf((x+3x^2)/(1-6x+12x^2-8x^3))` -/
def P11267460718343613267.Spec : Prop :=
  ∀ n, P11267460718343613267.a n = A084899 n

end A084899

/-! ## A084899.P18062593528678087224

`A007758(n)-A276289(n)`
-/

namespace A084899.P18062593528678087224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007758 n - A276289 n

end

end A084899.P18062593528678087224

namespace A084899

/-- `A007758(n)-A276289(n)` -/
def P18062593528678087224.Spec : Prop :=
  ∀ n, P18062593528678087224.a n = A084899 n

end A084899

/-! ## A084899.P15275234661024472063

`A276041(n)-A295288(n)`
-/

namespace A084899.P15275234661024472063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276041 n - A295288 n

end

end A084899.P15275234661024472063

namespace A084899

/-- `A276041(n)-A295288(n)` -/
def P15275234661024472063.Spec : Prop :=
  ∀ n, P15275234661024472063.a n = A084899 n

end A084899

/-! ## A084899.P3208414905747020567

`A056243(n+3)-A100312(n)`
-/

namespace A084899.P3208414905747020567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056243 (n + 3) - A100312 n

end

end A084899.P3208414905747020567

namespace A084899

/-- `A056243(n+3)-A100312(n)` -/
def P3208414905747020567.Spec : Prop :=
  ∀ n, P3208414905747020567.a n = A084899 n

end A084899

/-! ## A084899.P10276268602881055310

`A300451(n+1)-(A081908(n)+A001787(n+1))`
-/

namespace A084899.P10276268602881055310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300451 (n + 1) - (A081908 n + A001787 (n + 1))

end

end A084899.P10276268602881055310

namespace A084899

/-- `A300451(n+1)-(A081908(n)+A001787(n+1))` -/
def P10276268602881055310.Spec : Prop :=
  ∀ n, P10276268602881055310.a n = A084899 n

end A084899

/-! ## A084899.P8423545959749719224

`A300451(n+1)+A072863(n)-A072863(n+1)`
-/

namespace A084899.P8423545959749719224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300451 (n + 1) + (A072863 n - A072863 (n + 1))

end

end A084899.P8423545959749719224

namespace A084899

/-- `A300451(n+1)+A072863(n)-A072863(n+1)` -/
def P8423545959749719224.Spec : Prop :=
  ∀ n, P8423545959749719224.a n = A084899 n

end A084899

