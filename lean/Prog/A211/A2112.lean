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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C036
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
import Seq.B001.C009
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
import Seq.B003.C004
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
import Seq.B008.C001
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A211201: Smallest m such that (sum of binary digits of m*(m+1)/2) = n.

The programs for A211201, there is no canonical definition to state claims against.
-/

/-! ## A211201.P563988956486325451

`floor(A231897(n+1)/2)`
-/

namespace A211201.P563988956486325451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A231897 (n + 1) : ℚ) / 2⌋

end

end A211201.P563988956486325451

/-! ## A211201.P479572181808509108

`∑[floor(Δ[A231897(n)/2])]`
-/

namespace A211201.P479572181808509108
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231897 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211201.P479572181808509108

/-! ## A211201.P17932663602424769892

`(A231897(n+1)-A174783(((-1)^n)²))/2`
-/

namespace A211201.P17932663602424769892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231897 (n + 1) - A174783 (((-1) ^ n) ^ 2).toNat : ℚ) / 2

end

end A211201.P17932663602424769892

/-! ## A211201.P16512855966203068806

`(A231897(n+1)-A338215(((-1)^n)²+1))/2`
-/

namespace A211201.P16512855966203068806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231897 (n + 1) - A338215 (((-1) ^ n) ^ 2 + 1).toNat : ℚ) / 2

end

end A211201.P16512855966203068806

/-! ## A211201.P404172895396099595

`ceil(A231897(n+1)/A000005(A151800(n)))-1`
-/

namespace A211201.P404172895396099595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A231897 (n + 1) : ℚ) / (A000005 (A151800 n).toNat : ℚ)⌉ - 1

end

end A211201.P404172895396099595

/-! ## A211201.P2773957941125742807

`(A231897(n+1)-A000040(A151800(n)+1)%2)/2`
-/

namespace A211201.P2773957941125742807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231897 (n + 1) - Int.tmod (A000040 (A151800 n + 1).toNat) 2 : ℚ) / 2

end

end A211201.P2773957941125742807

/-! ## A211201.P7133174792971134346

`floor(sqrt(2*A089999(n)))`
-/

namespace A211201.P7133174792971134346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A089999 n)

end

end A211201.P7133174792971134346

/-! ## A211201.P7758880023171600803

`round(sqrt(2*A089999(n)))%A055273(n)`
-/

namespace A211201.P7758880023171600803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A089999 n : ℝ))) (A055273 n)

end

end A211201.P7758880023171600803

/-! ## A211201.P528364995932944723

`ceil(sqrt(A000793(n)+2*A089999(n)))-1`
-/

namespace A211201.P528364995932944723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000793 n + 2 * A089999 n : ℝ)⌉ - 1

end

end A211201.P528364995932944723

/-! ## A211201.P5014643489759640105

`ceil(sqrt(A001400(n)+2*A089999(n)))-1`
-/

namespace A211201.P5014643489759640105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001400 n + 2 * A089999 n : ℝ)⌉ - 1

end

end A211201.P5014643489759640105

/-!
# A211203: Prime numbers p such that p-1 divides (2^(p-1)+1)*(2^p-2).

The programs for A211203, there is no canonical definition to state claims against.
-/

/-! ## A211203.P7873533643101802809

`record[A006530(A242870(n+3)/2)]`
-/

namespace A211203.P7873533643101802809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A242870 (n + 3) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211203.P7873533643101802809

/-! ## A211203.P17525014698941060350

`record[A020639(A242870(n+3)/2)]`
-/

namespace A211203.P17525014698941060350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A242870 (n + 3) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211203.P17525014698941060350

/-! ## A211203.P9028033734976588314

`record[A006530(A242870(n+3))]`
-/

namespace A211203.P9028033734976588314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A242870 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211203.P9028033734976588314

/-! ## A211203.P4843865552478688482

`p?[A242870(n+1)-A006530(A242870(n+1))]`
-/

namespace A211203.P4843865552478688482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242870 (n + 1) - A006530 (A242870 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A211203.P4843865552478688482

/-! ## A211203.P17165352021465735918

`record[A014963(A242870(n+3)/2)]`
-/

namespace A211203.P17165352021465735918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A242870 (n + 3) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211203.P17165352021465735918

/-! ## A211203.P8246034398336259917

`p?[A004525(A242870(n+1))]`
-/

namespace A211203.P8246034398336259917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A242870 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A211203.P8246034398336259917

/-!
# A211205: n-th derivative of x^(x^(x^(x^(x^x)))) at x=1.

The programs for A211205, there is no canonical definition to state claims against.
-/

/-! ## A211205.P5814005227350943983

`A277537(eq[6, A025581(n)])`
-/

namespace A211205.P5814005227350943983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211205.P5814005227350943983

/-! ## A211205.P1981690583676580573

`A277537(eq[8, A129713(n)])`
-/

namespace A211205.P1981690583676580573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211205.P1981690583676580573

/-! ## A211205.P2971302019464027403

`A277537(A055999(n+4)-1)`
-/

namespace A211205.P2971302019464027403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (A055999 (n + 4) - 1).toNat

end

end A211205.P2971302019464027403

/-! ## A211205.P5702877646285139464

`A277537(eq[7, A004736(n+1)])`
-/

namespace A211205.P5702877646285139464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211205.P5702877646285139464

/-! ## A211205.P1042954957155860601

`A277537(eq[6, A003056(n)-A002262(n)])`
-/

namespace A211205.P1042954957155860601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211205.P1042954957155860601

/-!
# A211206: Least number which reaches n under the operation introduced in A100787: first differences are the digits of the sequence.

The programs for A211206, there is no canonical definition to state claims against.
-/

/-! ## A211206.P13953526566079481046

`A000265(A187829(n+1)-A064834(n)²)`
-/

namespace A211206.P13953526566079481046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A187829 (n + 1) - A064834 n ^ 2).toNat

end

end A211206.P13953526566079481046

/-! ## A211206.P16870300170839801073

`A000265(xor(A064834(n)², A187829(n+1)))`
-/

namespace A211206.P16870300170839801073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.xor (A064834 n ^ 2) (A187829 (n + 1))).toNat

end

end A211206.P16870300170839801073

/-! ## A211206.P8132665432428681677

`A000265(A187829(n+1)-A070635(n+1))`
-/

namespace A211206.P8132665432428681677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A187829 (n + 1) - A070635 (n + 1)).toNat

end

end A211206.P8132665432428681677

/-! ## A211206.P11786414140954215438

`A030101(A187829(n+1)-A070635(n+1))`
-/

namespace A211206.P11786414140954215438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A187829 (n + 1) - A070635 (n + 1)).toNat

end

end A211206.P11786414140954215438

/-!
# A211207: G.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n / (A(x) + n*x)^n.

The programs for A211207, there is no canonical definition to state claims against.
-/

/-! ## A211207.P9428747129794515335

`A008616(7*A247224(n))`
-/

namespace A211207.P9428747129794515335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (7 * A247224 n).toNat

end

end A211207.P9428747129794515335

/-! ## A211207.P11421317998308750922

`A008616(lcm(7, A247224(n)))`
-/

namespace A211207.P11421317998308750922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.lcm 7 (A247224 n))

end

end A211207.P11421317998308750922

/-! ## A211207.P15973262122516648257

`A091226(A344491(Δ[n²])+1)`
-/

namespace A211207.P15973262122516648257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A344491 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1).toNat

end

end A211207.P15973262122516648257

/-!
# A211208: Sums of squares of terms in rows of Losanitsch's triangle (A034851).

The programs for A211208, there is no canonical definition to state claims against.
-/

/-! ## A211208.P5715381639378858096

`A300362(A152011(n))+A093122(n)`
-/

namespace A211208.P5715381639378858096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300362 (A152011 n).toNat + A093122 n

end

end A211208.P5715381639378858096

/-! ## A211208.P11729048327018979254

`A330058(n)+A277025(A005142(n+1))`
-/

namespace A211208.P11729048327018979254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330058 n + A277025 (A005142 (n + 1)).toNat

end

end A211208.P11729048327018979254

/-!
# A211209: E.g.f.: Sum_{n>=0} cosh(n*x) * tanh(x)^n.

The programs for A211209, there is no canonical definition to state claims against.
-/

/-! ## A211209.P18218345506818496716

`A196126(∏[∑[char[2*n]]])`
-/

namespace A211209.P18218345506818496716
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196126 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A211209.P18218345506818496716

/-! ## A211209.P14317516425485358408

`A152271(∑[10*a(n-1)-a(n-2)]-2)` with `a(0)=2, a(1)=1, a(2)=2, a(3)=10`
-/

namespace A211209.P14317516425485358408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2, 10] fun n f1 =>
  10 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (∑ j ∈ Finset.range (n + 1), f1 j - 2).toNat

end

end A211209.P14317516425485358408

/-!
# A211210: a(n) = Sum_{k=0..n} binomial(n, k)*|S1(n, k)|.

The programs for A211210, there is no canonical definition to state claims against.
-/

/-! ## A211210.P8517257495070312368

`A271700(∑[n]+n)`
-/

namespace A211210.P8517257495070312368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271700 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A211210.P8517257495070312368

/-! ## A211210.P8561744362556661000

`A387152(∑[4*n])`
-/

namespace A211210.P8561744362556661000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387152 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211210.P8561744362556661000

/-!
# A211211: sum( C(n+1,k)*|S1(n,k)|, k=0..n). Binomial convolution of the Stirling numbers of the first kind.

The programs for A211211, there is no canonical definition to state claims against.
-/

/-! ## A211211.P5259665805148974040

`A271700(∑[n+2]-1)`
-/

namespace A211211.P5259665805148974040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271700 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A211211.P5259665805148974040

/-! ## A211211.P16154262626527013407

`record[A271700(gcd(n, A053121(n)))]`
-/

namespace A211211.P16154262626527013407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271700 (Int.gcd (n : ℤ) (A053121 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211211.P16154262626527013407

/-! ## A211211.P18123739690943596386

`A387152(2*(n+1)²)`
-/

namespace A211211.P18123739690943596386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387152 (2 * (n + 1) ^ 2)

end

end A211211.P18123739690943596386

/-! ## A211211.P4037460158959456632

`record[A271700(A300997(n+1))]`
-/

namespace A211211.P4037460158959456632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271700 (A300997 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211211.P4037460158959456632

/-! ## A211211.P10736118236569259279

`record[A271700(n)/A334178(n)]`
-/

namespace A211211.P10736118236569259279
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271700 n : ℚ) / (A334178 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211211.P10736118236569259279

/-!
# A211212: 4-alternating permutations of length 4n.

The programs for A211212, there is no canonical definition to state claims against.
-/

/-! ## A211212.P15515727035676108456

`A178964(4*n)`
-/

namespace A211212.P15515727035676108456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178964 (4 * n)

end

end A211212.P15515727035676108456

/-! ## A211212.P12098954338567728796

`or(1, A178964(A008574(n)))`
-/

namespace A211212.P12098954338567728796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A178964 (A008574 n).toNat)

end

end A211212.P12098954338567728796

/-! ## A211212.P10692113178514645813

`A178964(A008574(n))/A178964(A304819(n+1)^10)`
-/

namespace A211212.P10692113178514645813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178964 (A008574 n).toNat : ℚ) / (A178964 (A304819 (n + 1) ^ 10).toNat : ℚ)

end

end A211212.P10692113178514645813

/-! ## A211212.P9227285255769923818

`A178964(A008586(n))/A178964(A304819(n+1)^10)`
-/

namespace A211212.P9227285255769923818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178964 (A008586 n).toNat : ℚ) / (A178964 (A304819 (n + 1) ^ 10).toNat : ℚ)

end

end A211212.P9227285255769923818

/-! ## A211212.P11123726522260802499

`A181937(A181890(n)-2)`
-/

namespace A211212.P11123726522260802499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (A181890 n - 2).toNat

end

end A211212.P11123726522260802499

/-!
# A211213: n-alternating permutations of length 3n.

The programs for A211213, the canonical program `A211213.P1988209791080602359` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211213 has offset 1).

The definition of A211213 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211213.P1988209791080602359

`(3*(n+1))!*(1/(3*(n+1))!-2/((n+1)!*(2*(n+1))!)+1/(n+1)!^3)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211213

/-- `(3*(n+1))!*(1/(3*(n+1))!-2/((n+1)!*(2*(n+1))!)+1/(n+1)!^3)` -/
def P1988209791080602359.Spec : Prop :=
  ∀ n, P1988209791080602359.a n = (A211213 (n + 1) : ℚ)

end A211213

/-! ## A211213.P5951504448405566348

`A181937(C(4*(n+1), 2)-n)`
-/

namespace A211213.P5951504448405566348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (Nat.choose (4 * (n + 1)) 2 - n)

end

end A211213.P5951504448405566348

namespace A211213

/-- `A181937(C(4*(n+1), 2)-n)` -/
def P5951504448405566348.Spec : Prop :=
  ∀ n, P5951504448405566348.a n = A211213 (n + 1)

end A211213

/-! ## A211213.P15917006327464026327

`record[A181937(A057029(n+1))]`
-/

namespace A211213.P15917006327464026327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (A057029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211213.P15917006327464026327

namespace A211213

/-- `record[A181937(A057029(n+1))]` -/
def P15917006327464026327.Spec : Prop :=
  ∀ n, P15917006327464026327.a n = A211213 (n + 1)

end A211213

/-! ## A211213.P15786425914954484971

`A181937(A181890(n)+1-n)`
-/

namespace A211213.P15786425914954484971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (A181890 n + (1 - (n : ℤ))).toNat

end

end A211213.P15786425914954484971

namespace A211213

/-- `A181937(A181890(n)+1-n)` -/
def P15786425914954484971.Spec : Prop :=
  ∀ n, P15786425914954484971.a n = A211213 (n + 1)

end A211213

/-! ## A211213.P12440953205207669145

`A181937(A001844(2*n+1)+n+1)`
-/

namespace A211213.P12440953205207669145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (A001844 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A211213.P12440953205207669145

namespace A211213

/-- `A181937(A001844(2*n+1)+n+1)` -/
def P12440953205207669145.Spec : Prop :=
  ∀ n, P12440953205207669145.a n = A211213 (n + 1)

end A211213

/-!
# A211214: Number of reduced Latin n-dimensional hypercubes of order 4; labeled n-ary loops of order 4 with fixed identity.

The programs for A211214, there is no canonical definition to state claims against.
-/

/-! ## A211214.P1166746417781728350

`A211215(n)/(4*6^n)`
-/

namespace A211214.P1166746417781728350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211215 n : ℚ) / (4 * 6 ^ n : ℚ)

end

end A211214.P1166746417781728350

/-!
# A211215: Total number of Latin n-dimensional hypercubes of order 4; labeled n-ary quasigroups of order 4.

The programs for A211215, there is no canonical definition to state claims against.
-/

/-! ## A211215.P5071838926731718372

`4*6^n*A211214(n)`
-/

namespace A211215.P5071838926731718372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * 6 ^ n : ℤ) * A211214 n

end

end A211215.P5071838926731718372

/-! ## A211215.P398623280181873448

`A249026(A167614(n+2))`
-/

namespace A211215.P398623280181873448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249026 (A167614 (n + 2)).toNat

end

end A211215.P398623280181873448

/-!
# A211216: Expansion of (1-8*x+21*x^2-20*x^3+5*x^4)/(1-9*x+28*x^2-35*x^3+15*x^4-x^5).

The programs for A211216, the canonical program `A211216.P6705052347385493786` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211216 has offset 0).

The definition of A211216 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-8x+21x^2-20x^3+5x^4)/(1-9x+28x^2-35x^3+15x^4-x^5))` (program `A211216.P6705052347385493786`, by `A211216.P6705052347385493786.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A211216.P6705052347385493786

`ogf((1-8x+21x^2-20x^3+5x^4)/(1-9x+28x^2-35x^3+15x^4-x^5))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211216

/-- `ogf((1-8x+21x^2-20x^3+5x^4)/(1-9x+28x^2-35x^3+15x^4-x^5))` -/
def P6705052347385493786.Spec : Prop :=
  ∀ n, P6705052347385493786.a n = A211216 n

theorem P6705052347385493786.correct : P6705052347385493786.Spec := by
  intro n
  simp only [A211216]

end A211216

/-! ## A211216.P7015302740571336049

`2*A224514(n)-A216710(n)`
-/

namespace A211216.P7015302740571336049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224514 n - A216710 n

end

end A211216.P7015302740571336049

namespace A211216

/-- `2*A224514(n)-A216710(n)` -/
def P7015302740571336049.Spec : Prop :=
  ∀ n, P7015302740571336049.a n = A211216 n

end A211216

/-! ## A211216.P10456506759092883578

`2*A336675(2*n)-A336675(2*n+1)`
-/

namespace A211216.P10456506759092883578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A336675 (2 * n) - A336675 (2 * n + 1)

end

end A211216.P10456506759092883578

namespace A211216

/-- `2*A336675(2*n)-A336675(2*n+1)` -/
def P10456506759092883578.Spec : Prop :=
  ∀ n, P10456506759092883578.a n = A211216 n

end A211216

/-! ## A211216.P11025638480918486632

`A224509(n)+A224514(n)-Δ[A224514(n)]`
-/

namespace A211216.P11025638480918486632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224509 n + (A224514 n - (f1 (n + 1) - f1 n))

end

end A211216.P11025638480918486632

namespace A211216

/-- `A224509(n)+A224514(n)-Δ[A224514(n)]` -/
def P11025638480918486632.Spec : Prop :=
  ∀ n, P11025638480918486632.a n = A211216 n

end A211216

/-! ## A211216.P5217185179928153928

`A080934(A056000(n+6))`
-/

namespace A211216.P5217185179928153928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (A056000 (n + 6)).toNat

end

end A211216.P5217185179928153928

namespace A211216

/-- `A080934(A056000(n+6))` -/
def P5217185179928153928.Spec : Prop :=
  ∀ n, P5217185179928153928.a n = A211216 n

end A211216

/-! ## A211216.P8472964557017798249

`A080934(A052905(n+7)-5)`
-/

namespace A211216.P8472964557017798249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (A052905 (n + 7) - 5).toNat

end

end A211216.P8472964557017798249

namespace A211216

/-- `A080934(A052905(n+7)-5)` -/
def P8472964557017798249.Spec : Prop :=
  ∀ n, P8472964557017798249.a n = A211216 n

end A211216

/-! ## A211216.P6627380659176009411

`A080934(A000217(n+10)-10)`
-/

namespace A211216.P6627380659176009411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (A000217 (n + 10) - 10).toNat

end

end A211216.P6627380659176009411

namespace A211216

/-- `A080934(A000217(n+10)-10)` -/
def P6627380659176009411.Spec : Prop :=
  ∀ n, P6627380659176009411.a n = A211216 n

end A211216

/-! ## A211216.P16432223555398543338

`A080934(A000124(n+10)-11)`
-/

namespace A211216.P16432223555398543338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (A000124 (n + 10) - 11).toNat

end

end A211216.P16432223555398543338

namespace A211216

/-- `A080934(A000124(n+10)-11)` -/
def P16432223555398543338.Spec : Prop :=
  ∀ n, P16432223555398543338.a n = A211216 n

end A211216

/-! ## A211216.P10892680429503331175

`A080934(A161680(n+11)-10)`
-/

namespace A211216.P10892680429503331175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (A161680 (n + 11) - 10).toNat

end

end A211216.P10892680429503331175

namespace A211216

/-- `A080934(A161680(n+11)-10)` -/
def P10892680429503331175.Spec : Prop :=
  ∀ n, P10892680429503331175.a n = A211216 n

end A211216

/-! ## A211216.P12096371099947942625

`A080934(A033570(n+11)%A000124(n+11))`
-/

namespace A211216.P12096371099947942625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (Int.tmod (A033570 (n + 11)) (A000124 (n + 11))).toNat

end

end A211216.P12096371099947942625

namespace A211216

/-- `A080934(A033570(n+11)%A000124(n+11))` -/
def P12096371099947942625.Spec : Prop :=
  ∀ n, P12096371099947942625.a n = A211216 n

end A211216

/-!
# A211218: Maximum value of sigma(x) + sigma(y) + sigma(z), where x + y + z = n.

The programs for A211218, there is no canonical definition to state claims against.
-/

/-! ## A211218.P6594274477175467135

`∑[p?[A333769(A072668(n+1))]]`
-/

namespace A211218.P6594274477175467135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333769 (A072668 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211218.P6594274477175467135

/-! ## A211218.P9412670388825609905

`∑[p?[A333769(A166460(n+1))]]`
-/

namespace A211218.P9412670388825609905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333769 (A166460 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211218.P9412670388825609905

/-! ## A211218.P11674004207753585472

`∑[p?[A175548(A175557(n+4))]]`
-/

namespace A211218.P11674004207753585472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175548 (A175557 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211218.P11674004207753585472

/-! ## A211218.P17342354674966361107

`∑[A085058(A325702(A322788(n+1)))]`
-/

namespace A211218.P17342354674966361107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A325702 (A322788 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211218.P17342354674966361107

/-! ## A211218.P13419206777167983147

`A391623(2*(n+2))-A000007(A174617(n+2))`
-/

namespace A211218.P13419206777167983147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391623 (2 * (n + 2)) - A000007 (A174617 (n + 2)).toNat

end

end A211218.P13419206777167983147

/-!
# A211220: For any partition of n consider the sum of the sigma of each element. Sequence gives the maximum of such values.

The programs for A211220, there is no canonical definition to state claims against.
-/

/-! ## A211220.P11805738305050700577

`∑[A329900(A203407(n+1)+n+3)]`
-/

namespace A211220.P11805738305050700577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A203407 (n + 1) + (n + 3 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211220.P11805738305050700577

/-! ## A211220.P1444418340252682189

`∑[A000005(A014491(2^n+10))]`
-/

namespace A211220.P1444418340252682189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A014491 (2 ^ n + 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211220.P1444418340252682189

/-! ## A211220.P7623008629219135299

`∑[A090544(A357357(n+1)^(n%2)+2)]`
-/

namespace A211220.P7623008629219135299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090544 (A357357 (n + 1) ^ (n % 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211220.P7623008629219135299

/-! ## A211220.P18112716938837708869

`∑[A080670(A034386(n+1))%A020639(n+2)]`
-/

namespace A211220.P18112716938837708869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080670 (A034386 (n + 1)).toNat) (A020639 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211220.P18112716938837708869

/-!
# A211221: For any partition of n consider the product of the sigma of each element. Sequence gives the maximum of such values.

The programs for A211221, the canonical program `A211221.P8375674458844360101` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211221 has offset 1).

The definition of A211221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211221.P8375674458844360101

`3*a(n-2)` with `a(0)=1, a(1)=3, a(2)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211221

/-- `3*a(n-2)` -/
def P8375674458844360101.Spec : Prop :=
  ∀ n, (P8375674458844360101.a n : ℤ) = A211221 (n + 1)

theorem P8375674458844360101.correct : P8375674458844360101.Spec := by
  intro n
  simp only [A211221, Nat.add_sub_cancel]

end A211221

/-! ## A211221.P7450259180309255050

`ogf((1+3x+x^2)/(1-3x^2))`
-/

namespace A211221.P7450259180309255050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1] [1, 0, -3] n

end

end A211221.P7450259180309255050

namespace A211221

/-- `ogf((1+3x+x^2)/(1-3x^2))` -/
def P7450259180309255050.Spec : Prop :=
  ∀ n, P7450259180309255050.a n = A211221 (n + 1)

end A211221

/-! ## A211221.P422295698211610592

`∏[(char[2]+3)/a(n-1)]` with `a(0)=1`
-/

namespace A211221.P422295698211610592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (((if ∃ j, f2 j = n then 1 else 0) + 3 : ℕ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A211221.P422295698211610592

namespace A211221

/-- `∏[(char[2]+3)/a(n-1)]` -/
def P422295698211610592.Spec : Prop :=
  ∀ n, P422295698211610592.a n = (A211221 (n + 1) : ℚ)

end A211221

/-! ## A211221.P8529515068072425754

`a(n-2)/(1-2/3)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A211221.P8529515068072425754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A211221.P8529515068072425754

namespace A211221

/-- `a(n-2)/(1-2/3)` -/
def P8529515068072425754.Spec : Prop :=
  ∀ n, P8529515068072425754.a n = (A211221 (n + 1) : ℚ)

end A211221

/-! ## A211221.P13266922322355704628

`lcm(3, a(n-2)+1)-3` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A211221.P13266922322355704628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  (Int.lcm 3 (a (n - 2) + 1) : ℤ) - 3

end

end A211221.P13266922322355704628

namespace A211221

/-- `lcm(3, a(n-2)+1)-3` -/
def P13266922322355704628.Spec : Prop :=
  ∀ n, P13266922322355704628.a n = A211221 (n + 1)

end A211221

/-! ## A211221.P2941330040490739677

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A211221.P2941330040490739677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A211221.P2941330040490739677

namespace A211221

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P2941330040490739677.Spec : Prop :=
  ∀ n, (P2941330040490739677.a n : ℤ) = A211221 (n + 1)

theorem P2941330040490739677.correct : P2941330040490739677.Spec := by
  intro n
  simp only [A211221, Nat.add_sub_cancel, A211221.P2941330040490739677.a, A211221.P8375674458844360101.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A211221

/-! ## A211221.P13683559067265270783

`A074324(xor(1, n+1))`
-/

namespace A211221.P13683559067265270783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (Nat.xor 1 (n + 1))

end

end A211221.P13683559067265270783

namespace A211221

/-- `A074324(xor(1, n+1))` -/
def P13683559067265270783.Spec : Prop :=
  ∀ n, P13683559067265270783.a n = A211221 (n + 1)

end A211221

/-! ## A211221.P2357532986019212211

`A000792(comp[3*n+1]+1)`
-/

namespace A211221.P2357532986019212211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A211221.P2357532986019212211

namespace A211221

/-- `A000792(comp[3*n+1]+1)` -/
def P2357532986019212211.Spec : Prop :=
  ∀ n, P2357532986019212211.a n = A211221 (n + 1)

end A211221

/-! ## A211221.P4542023383221917630

`A166465(n-1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A211221.P4542023383221917630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A166465 (n - 1) + a (n - 1)

end

end A211221.P4542023383221917630

namespace A211221

/-- `A166465(n-1)+a(n-1)` -/
def P4542023383221917630.Spec : Prop :=
  ∀ n, P4542023383221917630.a n = A211221 (n + 1)

end A211221

/-! ## A211221.P9641321068509495825

`A074324(A004442(n+1))`
-/

namespace A211221.P9641321068509495825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (A004442 (n + 1)).toNat

end

end A211221.P9641321068509495825

namespace A211221

/-- `A074324(A004442(n+1))` -/
def P9641321068509495825.Spec : Prop :=
  ∀ n, P9641321068509495825.a n = A211221 (n + 1)

end A211221

/-! ## A211221.P6789142405755266087

`A074324(A065190(n+1))`
-/

namespace A211221.P6789142405755266087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (A065190 (n + 1)).toNat

end

end A211221.P6789142405755266087

namespace A211221

/-- `A074324(A065190(n+1))` -/
def P6789142405755266087.Spec : Prop :=
  ∀ n, P6789142405755266087.a n = A211221 (n + 1)

end A211221

/-! ## A211221.P14644454885578133838

`A246090(A026476(n+1))`
-/

namespace A211221.P14644454885578133838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246090 (A026476 (n + 1)).toNat

end

end A211221.P14644454885578133838

namespace A211221

/-- `A246090(A026476(n+1))` -/
def P14644454885578133838.Spec : Prop :=
  ∀ n, P14644454885578133838.a n = A211221 (n + 1)

end A211221

/-! ## A211221.P6305867182954936483

`A122164(A008851(n+2))`
-/

namespace A211221.P6305867182954936483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122164 (A008851 (n + 2)).toNat

end

end A211221.P6305867182954936483

namespace A211221

/-- `A122164(A008851(n+2))` -/
def P6305867182954936483.Spec : Prop :=
  ∀ n, P6305867182954936483.a n = A211221 (n + 1)

end A211221

/-! ## A211221.P16502835103090753466

`A010684(n)*A074324(n)`
-/

namespace A211221.P16502835103090753466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A074324 n

end

end A211221.P16502835103090753466

namespace A211221

/-- `A010684(n)*A074324(n)` -/
def P16502835103090753466.Spec : Prop :=
  ∀ n, P16502835103090753466.a n = A211221 (n + 1)

end A211221

/-! ## A211221.P3949783443666701682

`A074324(A010684(n)-1+n)`
-/

namespace A211221.P3949783443666701682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (A010684 n - 1 + (n : ℤ)).toNat

end

end A211221.P3949783443666701682

namespace A211221

/-- `A074324(A010684(n)-1+n)` -/
def P3949783443666701682.Spec : Prop :=
  ∀ n, P3949783443666701682.a n = A211221 (n + 1)

end A211221

/-! ## A211221.P15669411903262990918

`A074324(n-(1-A010684(n)))`
-/

namespace A211221.P15669411903262990918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 ((n : ℤ) - (1 - A010684 n)).toNat

end

end A211221.P15669411903262990918

namespace A211221

/-- `A074324(n-(1-A010684(n)))` -/
def P15669411903262990918.Spec : Prop :=
  ∀ n, P15669411903262990918.a n = A211221 (n + 1)

end A211221

/-! ## A211221.P7945650820537036231

`A074324(Δ[Δ[A000982(n)]]+n)`
-/

namespace A211221.P7945650820537036231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A211221.P7945650820537036231

namespace A211221

/-- `A074324(Δ[Δ[A000982(n)]]+n)` -/
def P7945650820537036231.Spec : Prop :=
  ∀ n, P7945650820537036231.a n = A211221 (n + 1)

end A211221

/-! ## A211221.P1517516572073938229

`A182522(n+1)+Δ[A182522(n)]`
-/

namespace A211221.P1517516572073938229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (n + 1) + (f1 (n + 1) - f1 n)

end

end A211221.P1517516572073938229

namespace A211221

/-- `A182522(n+1)+Δ[A182522(n)]` -/
def P1517516572073938229.Spec : Prop :=
  ∀ n, P1517516572073938229.a n = A211221 (n + 1)

end A211221

/-! ## A211221.P17344963257788015514

`A038754(n)+A038754(n)-A182522(n)`
-/

namespace A211221.P17344963257788015514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n + (A038754 n - A182522 n)

end

end A211221.P17344963257788015514

namespace A211221

/-- `A038754(n)+A038754(n)-A182522(n)` -/
def P17344963257788015514.Spec : Prop :=
  ∀ n, P17344963257788015514.a n = A211221 (n + 1)

end A211221

/-! ## A211221.P7182200806474580780

`∪[A000244(n), A003946(n)]`
-/

namespace A211221.P7182200806474580780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211221.P7182200806474580780

namespace A211221

/-- `∪[A000244(n), A003946(n)]` -/
def P7182200806474580780.Spec : Prop :=
  ∀ n, (P7182200806474580780.a n : ℤ) = A211221 (n + 1)

end A211221

/-!
# A211223: Numbers k for which sigma(k) = sigma(x) + sigma(y), where k = x + y.

The programs for A211223, there is no canonical definition to state claims against.
-/

/-! ## A211223.P2146433207501747917

`lt[2, a(A211225(n))+1]` with `a(0)=1`
-/

namespace A211223.P2146433207501747917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (A211225 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A211223.P2146433207501747917

/-! ## A211223.P14585744634077737161

`lt[2, A005993(a(A211225(n)))]` with `a(0)=1`
-/

namespace A211223.P14585744634077737161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A005993 (f2 (A211225 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A211223.P14585744634077737161

/-! ## A211223.P16842643168098598986

`lt[2, A096827(a(A211225(n)))]` with `a(0)=1`
-/

namespace A211223.P16842643168098598986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A096827 (f2 (A211225 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A211223.P16842643168098598986

/-! ## A211223.P5125326927459636367

`lt[2, A158708(a(A211225(n)))]` with `a(0)=1`
-/

namespace A211223.P5125326927459636367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A158708 (f2 (A211225 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A211223.P5125326927459636367

/-! ## A211223.P4798958359061207427

`lt[2, A347268(a(A211225(n)))]` with `a(0)=1`
-/

namespace A211223.P4798958359061207427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A347268 (f2 (A211225 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A211223.P4798958359061207427

/-! ## A211223.P7376508343028071896

`eq[2, A000005(a(A211225(n)))]` with `a(0)=4`
-/

namespace A211223.P7376508343028071896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000005 (f2 (A211225 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211223.P7376508343028071896

/-! ## A211223.P8592389051474014841

`eq[4, 2*A006530(a(A211225(n)))]` with `a(0)=1`
-/

namespace A211223.P8592389051474014841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * A006530 (f2 (A211225 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211223.P8592389051474014841

/-! ## A211223.P2186056823682210404

`eq[4, 2*A020639(a(A211225(n)))]` with `a(0)=1`
-/

namespace A211223.P2186056823682210404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * A020639 (f2 (A211225 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211223.P2186056823682210404

/-! ## A211223.P9611658815036535341

`eq[1, A000035(A160552(A211225(n+1)))]+1`
-/

namespace A211223.P9611658815036535341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A160552 (A211225 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A211223.P9611658815036535341

/-!
# A211225: Number of ways to represent sigma(n) as sigma(x) + sigma(y) where x+y = n.

The programs for A211225, there is no canonical definition to state claims against.
-/

/-! ## A211225.P14150137912476286902

`A110177(n+1)/2`
-/

namespace A211225.P14150137912476286902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110177 (n + 1) : ℚ) / 2

end

end A211225.P14150137912476286902

/-! ## A211225.P9076314857227682834

`A004526(A110177(n+1))`
-/

namespace A211225.P9076314857227682834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A110177 (n + 1)).toNat

end

end A211225.P9076314857227682834

/-! ## A211225.P9340460343259671315

`A078898(A110177(n+1)%A019456(n))`
-/

namespace A211225.P9340460343259671315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.tmod (A110177 (n + 1)) (A019456 n)).toNat

end

end A211225.P9340460343259671315

/-! ## A211225.P14939636483583968864

`A001222(sqrt(A112048(n+1)^A110177(n+1)))`
-/

namespace A211225.P14939636483583968864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt ((A112048 (n + 1) : ℚ) ^ (A110177 (n + 1) : ℤ) : ℝ))).toNat

end

end A211225.P14939636483583968864

/-! ## A211225.P4246515257063873241

`A001221(A110177(n+1)!)`
-/

namespace A211225.P4246515257063873241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A110177 (n + 1)).toNat)

end

end A211225.P4246515257063873241

/-! ## A211225.P15426601357548323418

`A327036(A110177(n+1)+A085478(∑[n]))`
-/

namespace A211225.P15426601357548323418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327036 (A110177 (n + 1) + A085478 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A211225.P15426601357548323418

/-!
# A211226: Triangular array: T(n,k) = f(n)/(f(k)*f(n-k)), where f(n) = (floor(n/2))!.

The programs for A211226, there is no canonical definition to state claims against.
-/

/-! ## A211226.P1386111128211974927

`A328001(n)/A182073(n)`
-/

namespace A211226.P1386111128211974927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328001 n : ℚ) / (A182073 n : ℚ)

end

end A211226.P1386111128211974927

/-! ## A211226.P12852787568244742127

`∏{e}[A175840(n), A056040(#)]/A182073(n)`
-/

namespace A211226.P12852787568244742127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056040 (Nat.factorization (f1 n).natAbs p) : ℤ) : ℚ) / (A182073 n : ℚ)

end

end A211226.P12852787568244742127

/-! ## A211226.P15397037650398780221

`A246661(A043569(n+1)-2)/A182073(n)`
-/

namespace A211226.P15397037650398780221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246661 (A043569 (n + 1) - 2).toNat : ℚ) / (A182073 n : ℚ)

end

end A211226.P15397037650398780221

/-! ## A211226.P2162391213208682365

`gcd(A146531(n), A146532(n))`
-/

namespace A211226.P2162391213208682365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A146531 n) (A146532 n)

end

end A211226.P2162391213208682365

/-! ## A211226.P8372606410824836791

`(A146532(n)+A051159(n))/2`
-/

namespace A211226.P8372606410824836791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146532 n + A051159 n : ℚ) / 2

end

end A211226.P8372606410824836791

/-! ## A211226.P1756690080279212064

`A146531(n)/A010684(A004198(n))`
-/

namespace A211226.P1756690080279212064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146531 n : ℚ) / (A010684 (A004198 n).toNat : ℚ)

end

end A211226.P1756690080279212064

/-! ## A211226.P13268142268195869974

`A146531(n)/A010684(A004247(n))`
-/

namespace A211226.P13268142268195869974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146531 n : ℚ) / (A010684 (A004247 n).toNat : ℚ)

end

end A211226.P13268142268195869974

/-! ## A211226.P17911768017428093259

`(A146532(n)+A051159(n))*2^A008683(A057673(n))`
-/

namespace A211226.P17911768017428093259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146532 n + A051159 n : ℚ) * (2 : ℚ) ^ (A008683 (A057673 n).toNat : ℤ)

end

end A211226.P17911768017428093259

/-!
# A211227: Row sums of A211226.

The programs for A211227, the canonical program `A211227.P7619264051597520048` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211227 has offset 0).

The definition of A211227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 650 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211227.P7619264051597520048

`4*(a(n-2)-a(n-4))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211227

/-- `4*(a(n-2)-a(n-4))` -/
def P7619264051597520048.Spec : Prop :=
  ∀ n, P7619264051597520048.a n = A211227 n

theorem P7619264051597520048.correct : P7619264051597520048.Spec := by
  intro n
  simp only [A211227]

end A211227

/-! ## A211227.P1186166194948398052

`A000034(n)*A211164(n+1)`
-/

namespace A211227.P1186166194948398052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A211164 (n + 1)

end

end A211227.P1186166194948398052

namespace A211227

/-- `A000034(n)*A211164(n+1)` -/
def P1186166194948398052.Spec : Prop :=
  ∀ n, P1186166194948398052.a n = A211227 n

end A211227

/-! ## A211227.P18305156305371002065

`Δ[A057353(2*n)]*A211164(n+1)`
-/

namespace A211227.P18305156305371002065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A211164 (n + 1)

end

end A211227.P18305156305371002065

namespace A211227

/-- `Δ[A057353(2*n)]*A211164(n+1)` -/
def P18305156305371002065.Spec : Prop :=
  ∀ n, P18305156305371002065.a n = A211227 n

end A211227

/-! ## A211227.P12928375791902939874

`A211164(xor(1, n+1)+1)`
-/

namespace A211227.P12928375791902939874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211164 (Nat.xor 1 (n + 1) + 1)

end

end A211227.P12928375791902939874

namespace A211227

/-- `A211164(xor(1, n+1)+1)` -/
def P12928375791902939874.Spec : Prop :=
  ∀ n, P12928375791902939874.a n = A211227 n

end A211227

/-! ## A211227.P7079745732947334167

`A211164(A014681(n+2))`
-/

namespace A211227.P7079745732947334167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211164 (A014681 (n + 2)).toNat

end

end A211227.P7079745732947334167

namespace A211227

/-- `A211164(A014681(n+2))` -/
def P7079745732947334167.Spec : Prop :=
  ∀ n, P7079745732947334167.a n = A211227 n

end A211227

/-! ## A211227.P17170335301263620782

`A211164(A103889(n+2))`
-/

namespace A211227.P17170335301263620782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211164 (A103889 (n + 2)).toNat

end

end A211227.P17170335301263620782

namespace A211227

/-- `A211164(A103889(n+2))` -/
def P17170335301263620782.Spec : Prop :=
  ∀ n, P17170335301263620782.a n = A211227 n

end A211227

/-! ## A211227.P10835949674466752068

`A211164(A114112(n+2))`
-/

namespace A211227.P10835949674466752068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211164 (A114112 (n + 2)).toNat

end

end A211227.P10835949674466752068

namespace A211227

/-- `A211164(A114112(n+2))` -/
def P10835949674466752068.Spec : Prop :=
  ∀ n, P10835949674466752068.a n = A211227 n

end A211227

/-! ## A211227.P289891078885060659

`A211164(2-A033999(n)+n)`
-/

namespace A211227.P289891078885060659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211164 (2 - A033999 n + (n : ℤ)).toNat

end

end A211227.P289891078885060659

namespace A211227

/-- `A211164(2-A033999(n)+n)` -/
def P289891078885060659.Spec : Prop :=
  ∀ n, P289891078885060659.a n = A211227 n

end A211227

/-! ## A211227.P10567465585367433184

`A211164(2-(A033999(n)-n))`
-/

namespace A211227.P10567465585367433184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211164 (2 - (A033999 n - (n : ℤ))).toNat

end

end A211227.P10567465585367433184

namespace A211227

/-- `A211164(2-(A033999(n)-n))` -/
def P10567465585367433184.Spec : Prop :=
  ∀ n, P10567465585367433184.a n = A211227 n

end A211227

/-! ## A211227.P1416822170313504924

`A211164(n+2-A009531(2*n+1))`
-/

namespace A211227.P1416822170313504924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211164 ((n + 2 : ℤ) - A009531 (2 * n + 1)).toNat

end

end A211227.P1416822170313504924

namespace A211227

/-- `A211164(n+2-A009531(2*n+1))` -/
def P1416822170313504924.Spec : Prop :=
  ∀ n, P1416822170313504924.a n = A211227 n

end A211227

/-! ## A211227.P7799401683336423608

`ogf((1+2x-x^2-4x^3)/(1-4x^2+4x^4))`
-/

namespace A211227.P7799401683336423608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1, -4] [1, 0, -4, 0, 4] n

end

end A211227.P7799401683336423608

namespace A211227

/-- `ogf((1+2x-x^2-4x^3)/(1-4x^2+4x^4))` -/
def P7799401683336423608.Spec : Prop :=
  ∀ n, P7799401683336423608.a n = A211227 n

end A211227

/-! ## A211227.P2572096123969634150

`A059576(A134519(n+2))`
-/

namespace A211227.P2572096123969634150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059576 (A134519 (n + 2)).toNat

end

end A211227.P2572096123969634150

namespace A211227

/-- `A059576(A134519(n+2))` -/
def P2572096123969634150.Spec : Prop :=
  ∀ n, P2572096123969634150.a n = A211227 n

end A211227

/-! ## A211227.P2542897048844681770

`abs(A118800(A055802(n+5)))`
-/

namespace A211227.P2542897048844681770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118800 (A055802 (n + 5)).toNat|

end

end A211227.P2542897048844681770

namespace A211227

/-- `abs(A118800(A055802(n+5)))` -/
def P2542897048844681770.Spec : Prop :=
  ∀ n, P2542897048844681770.a n = A211227 n

end A211227

/-! ## A211227.P4748761295691486575

`A207613(A101881(n))`
-/

namespace A211227.P4748761295691486575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207613 (A101881 n).toNat

end

end A211227.P4748761295691486575

namespace A211227

/-- `A207613(A101881(n))` -/
def P4748761295691486575.Spec : Prop :=
  ∀ n, P4748761295691486575.a n = A211227 n

end A211227

/-! ## A211227.P6306004538790669977

`A055888(A117142(n+2))`
-/

namespace A211227.P6306004538790669977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055888 (A117142 (n + 2)).toNat

end

end A211227.P6306004538790669977

namespace A211227

/-- `A055888(A117142(n+2))` -/
def P6306004538790669977.Spec : Prop :=
  ∀ n, P6306004538790669977.a n = A211227 n

end A211227

/-! ## A211227.P14445489218151901629

`A164975(lt[A209701(n+2), n])`
-/

namespace A211227.P14445489218151901629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209701 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164975 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A211227.P14445489218151901629

namespace A211227

/-- `A164975(lt[A209701(n+2), n])` -/
def P14445489218151901629.Spec : Prop :=
  ∀ n, P14445489218151901629.a n = A211227 n

end A211227

/-! ## A211227.P9853174293743632684

`Δ[record[A053218(n+2)]]`
-/

namespace A211227.P9853174293743632684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053218 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211227.P9853174293743632684

namespace A211227

/-- `Δ[record[A053218(n+2)]]` -/
def P9853174293743632684.Spec : Prop :=
  ∀ n, P9853174293743632684.a n = A211227 n

end A211227

/-! ## A211227.P10153631110136650763

`A124182(lt[A201701(n), A202023(n+2)])`
-/

namespace A211227.P10153631110136650763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201701 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124182 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A211227.P10153631110136650763

namespace A211227

/-- `A124182(lt[A201701(n), A202023(n+2)])` -/
def P10153631110136650763.Spec : Prop :=
  ∀ n, P10153631110136650763.a n = A211227 n

end A211227

/-! ## A211227.P15946109848464553700

`A059576(eq[2, A131240(n)])`
-/

namespace A211227.P15946109848464553700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131240 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211227.P15946109848464553700

namespace A211227

/-- `A059576(eq[2, A131240(n)])` -/
def P15946109848464553700.Spec : Prop :=
  ∀ n, P15946109848464553700.a n = A211227 n

end A211227

/-! ## A211227.P14844192124203902387

`A211230(∑[n])`
-/

namespace A211227.P14844192124203902387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211230 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211227.P14844192124203902387

namespace A211227

/-- `A211230(∑[n])` -/
def P14844192124203902387.Spec : Prop :=
  ∀ n, P14844192124203902387.a n = A211227 n

end A211227

/-!
# A211228: Shallow diagonal sums of A211226.

The programs for A211228, there is no canonical definition to state claims against.
-/

/-! ## A211228.P6353961323350169986

`A091594(A134519(n+1))`
-/

namespace A211228.P6353961323350169986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091594 (A134519 (n + 1)).toNat

end

end A211228.P6353961323350169986

/-! ## A211228.P5552691348241021487

`A208515(A117142(n+1))`
-/

namespace A211228.P5552691348241021487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208515 (A117142 (n + 1)).toNat

end

end A211228.P5552691348241021487

/-! ## A211228.P6597952363002183047

`A208515(eq[3, A134059(n)])`
-/

namespace A211228.P6597952363002183047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211228.P6597952363002183047

/-! ## A211228.P17855906775088987994

`A208515(eq[4, A132200(n)])`
-/

namespace A211228.P17855906775088987994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211228.P17855906775088987994

/-! ## A211228.P9876566661939761993

`A208515(∑[A057979(n+2)])`
-/

namespace A211228.P9876566661939761993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208515 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211228.P9876566661939761993

/-! ## A211228.P12708616461265729539

`A208515(∑[A174571(2*(n+1))])`
-/

namespace A211228.P12708616461265729539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208515 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211228.P12708616461265729539

/-! ## A211228.P1631880170320351780

`A208515(A008805(n+1)-n%2)`
-/

namespace A211228.P1631880170320351780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208515 (A008805 (n + 1) - ((n % 2 : ℕ) : ℤ)).toNat

end

end A211228.P1631880170320351780

/-! ## A211228.P15523690292118116260

`A208515(eq[A000007(n), A062707(n)])`
-/

namespace A211228.P15523690292118116260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208515 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A211228.P15523690292118116260

/-! ## A211228.P10927498819597453918

`A205575(eq[A002260(n+1), A007318(n)])`
-/

namespace A211228.P10927498819597453918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205575 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A211228.P10927498819597453918

/-! ## A211228.P9273758655552878827

`A208515(eq[A057427(n), A208510(n+1)])`
-/

namespace A211228.P9273758655552878827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208515 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A211228.P9273758655552878827

/-! ## A211228.P10391124040941805106

`A208515(eq[A057427(n), A208513(n+1)])`
-/

namespace A211228.P10391124040941805106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208515 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A211228.P10391124040941805106

/-!
# A211229: Matrix inverse of lower triangular array A211226.

The programs for A211229, there is no canonical definition to state claims against.
-/

/-! ## A211229.P10986474490104572242

`A188044(n+1)-A254990(A000217(A000217(n)))`
-/

namespace A211229.P10986474490104572242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188044 (n + 1) - A254990 (A000217 (A000217 n).toNat).toNat

end

end A211229.P10986474490104572242

/-! ## A211229.P1131495369836254003

`Δ[A164996(A334062(n+1))]`
-/

namespace A211229.P1131495369836254003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164996 (A334062 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211229.P1131495369836254003

/-! ## A211229.P3943396695439996566

`Δ[A001221(A038233(A131112(n)))]`
-/

namespace A211229.P3943396695439996566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A038233 (A131112 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211229.P3943396695439996566

/-! ## A211229.P5730734081936845295

`Δ[A001221(A042174(A132749(n)))]`
-/

namespace A211229.P5730734081936845295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A042174 (A132749 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211229.P5730734081936845295

/-! ## A211229.P12546412802637926015

`Δ[A001222(A212122(A134060(n)))]`
-/

namespace A211229.P12546412802637926015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A212122 (A134060 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211229.P12546412802637926015

/-!
# A211230: Matrix square of lower triangular array A211226.

The programs for A211230, there is no canonical definition to state claims against.
-/

/-! ## A211230.P4821423176692677797

`A211226(n)*A211227(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A211230.P4821423176692677797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211226 n * A211227 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A211230.P4821423176692677797

/-! ## A211230.P15883601903674506084

`A211226(n)*A211227(A025581(n))`
-/

namespace A211230.P15883601903674506084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211226 n * A211227 (A025581 n).toNat

end

end A211230.P15883601903674506084

/-! ## A211230.P419320464029739765

`A211226(n)*A211227(val(A054582(n), 2))`
-/

namespace A211230.P419320464029739765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211226 n * A211227 (SequenceMachineLib.valuation (A054582 n).toNat 2)

end

end A211230.P419320464029739765

/-! ## A211230.P5285181082323397163

`A211226(n)*A211227(∑[A066182(n+1)-(n+1)])`
-/

namespace A211230.P5285181082323397163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211226 n * A211227 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211230.P5285181082323397163

/-! ## A211230.P4501567115290604667

`A211227(A025581(n))/A182073(n)*A328001(n)`
-/

namespace A211230.P4501567115290604667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211227 (A025581 n).toNat : ℚ) / (A182073 n : ℚ) * (A328001 n : ℚ)

end

end A211230.P4501567115290604667

/-!
# A211231: Row sums of A211230.

The programs for A211231, there is no canonical definition to state claims against.
-/

/-! ## A211231.P15922207836568356050

`Δ[A243176(A081741(n+1))]`
-/

namespace A211231.P15922207836568356050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243176 (A081741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211231.P15922207836568356050

/-! ## A211231.P10542791644887401198

`∑[A086920(∑[A394223(n+1)])]`
-/

namespace A211231.P10542791644887401198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394223 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086920 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211231.P10542791644887401198

/-! ## A211231.P4561179859415232545

`∑[A351835(A363771(n+1))+n]`
-/

namespace A211231.P4561179859415232545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351835 (A363771 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211231.P4561179859415232545

/-!
# A211235: Array of generalized Eulerian numbers C(n,k) read by antidiagonals.

The programs for A211235, there is no canonical definition to state claims against.
-/

/-! ## A211235.P3646784291378525324

`A163352(n*A121314(n))+A000005(A008300(n))`
-/

namespace A211235.P3646784291378525324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 ((n : ℤ) * A121314 n).toNat + A000005 (A008300 n).toNat

end

end A211235.P3646784291378525324

/-! ## A211235.P5755495930830169473

`A163352(n*A327618(n))+A000005(A008300(n))`
-/

namespace A211235.P5755495930830169473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 ((n : ℤ) * A327618 n).toNat + A000005 (A008300 n).toNat

end

end A211235.P5755495930830169473

/-! ## A211235.P9636578109995696253

`A163352(n*A119271(n+1))+A000005(A008300(n))`
-/

namespace A211235.P9636578109995696253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 ((n : ℤ) * A119271 (n + 1)).toNat + A000005 (A008300 n).toNat

end

end A211235.P9636578109995696253

/-! ## A211235.P18001187912072033477

`A196238(A142075(n+1))`
-/

namespace A211235.P18001187912072033477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196238 (A142075 (n + 1)).toNat

end

end A211235.P18001187912072033477

/-! ## A211235.P4511575674689359104

`A196238(A156365(n+1))`
-/

namespace A211235.P4511575674689359104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196238 (A156365 (n + 1)).toNat

end

end A211235.P4511575674689359104

/-!
# A211238: Prime numbers p such that x^2 + x + p produces primes for x = 0..9 but not x = 10.

The programs for A211238, there is no canonical definition to state claims against.
-/

/-! ## A211238.P10361511240114502225

`A191456(3%comp[∑[n]]+n)%A121044(2*n+5)`
-/

namespace A211238.P10361511240114502225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191456 (3 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)) (A121044 (2 * n + 5))

end

end A211238.P10361511240114502225

/-!
# A211240: Prime numbers p such that x^2 + x + p produces primes for x = 0..11 but not x = 12.

The programs for A211240, there is no canonical definition to state claims against.
-/

/-! ## A211240.P15565530399474748592

`A191458(lt[A164926(n+1), A298655(n+1)])`
-/

namespace A211240.P15565530399474748592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191458 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A211240.P15565530399474748592

/-!
# A211241: Order of 5 mod n-th prime: least k such that prime(n) divides 5^k-1.

The programs for A211241, there is no canonical definition to state claims against.
-/

/-! ## A211241.P2526993159771756930

`A070677(Δ[A007504(n)])`
-/

namespace A211241.P2526993159771756930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (f1 (n + 1) - f1 n).toNat

end

end A211241.P2526993159771756930

/-! ## A211241.P9168856334357011429

`A070677(A000040(n+1))`
-/

namespace A211241.P9168856334357011429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (A000040 (n + 1)).toNat

end

end A211241.P9168856334357011429

/-! ## A211241.P17627645943007658534

`A070677(A161847(n+1))`
-/

namespace A211241.P17627645943007658534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (A161847 (n + 1)).toNat

end

end A211241.P17627645943007658534

/-! ## A211241.P13963919087739054858

`A070677(A008578(n+2))`
-/

namespace A211241.P13963919087739054858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (A008578 (n + 2)).toNat

end

end A211241.P13963919087739054858

/-! ## A211241.P15687257692188878942

`A070677(A182986(n+2))`
-/

namespace A211241.P15687257692188878942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (A182986 (n + 2)).toNat

end

end A211241.P15687257692188878942

/-! ## A211241.P12921275777188433388

`A070677(record[A006530(n+2)])`
-/

namespace A211241.P12921275777188433388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A211241.P12921275777188433388

/-! ## A211241.P14409524235894500089

`A070677(record[A014963(n+2)])`
-/

namespace A211241.P14409524235894500089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A211241.P14409524235894500089

/-! ## A211241.P8304514770521449459

`A070677(record[A020639(n+2)])`
-/

namespace A211241.P8304514770521449459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A211241.P8304514770521449459

/-! ## A211241.P10875467626965011131

`A070677(A100484(n+1)/2)`
-/

namespace A211241.P10875467626965011131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A211241.P10875467626965011131

/-! ## A211241.P7520908637294799772

`A070677(A001747(n+2)/2)`
-/

namespace A211241.P7520908637294799772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A211241.P7520908637294799772

/-! ## A211241.P4807877868188100800

`A070677(eq[n, A000010(n+1)]+1)`
-/

namespace A211241.P4807877868188100800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A211241.P4807877868188100800

/-! ## A211241.P2186007410109120534

`A070677(eq[n, A029940(n+1)]+1)`
-/

namespace A211241.P2186007410109120534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A211241.P2186007410109120534

/-! ## A211241.P17503309287179668896

`A070677(eq[n, A174940(n+1)]+1)`
-/

namespace A211241.P17503309287179668896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A211241.P17503309287179668896

/-! ## A211241.P17309994478676351555

`A305331(n+1)/A006005(n+1)`
-/

namespace A211241.P17309994478676351555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305331 (n + 1) : ℚ) / (A006005 (n + 1) : ℚ)

end

end A211241.P17309994478676351555

/-! ## A211241.P17080945458974484333

`A070677(A100484(n+1))`
-/

namespace A211241.P17080945458974484333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (A100484 (n + 1)).toNat

end

end A211241.P17080945458974484333

/-! ## A211241.P16807115060188025766

`A070677(A251618(n+1))`
-/

namespace A211241.P16807115060188025766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (A251618 (n + 1)).toNat

end

end A211241.P16807115060188025766

/-! ## A211241.P12584539330300082309

`A070677(A001747(n+2))`
-/

namespace A211241.P12584539330300082309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (A001747 (n + 2)).toNat

end

end A211241.P12584539330300082309

/-! ## A211241.P6513739278484606159

`A070677(A077017(n+2))`
-/

namespace A211241.P6513739278484606159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (A077017 (n + 2)).toNat

end

end A211241.P6513739278484606159

/-! ## A211241.P5970913709202185595

`A070677(2*A006005(n+1))`
-/

namespace A211241.P5970913709202185595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (2 * A006005 (n + 1)).toNat

end

end A211241.P5970913709202185595

/-! ## A211241.P6004227547444830041

`A070677(A062876(n+1)/2)`
-/

namespace A211241.P6004227547444830041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (SequenceMachineLib.roundAway ((A062876 (n + 1) : ℚ) / 2)).toNat

end

end A211241.P6004227547444830041

/-!
# A211242: Order of 6 mod n-th prime: least k such that prime(n) divides 6^k-1.

The programs for A211242, there is no canonical definition to state claims against.
-/

/-! ## A211242.P827258212706015102

`A007737(record[A039649(n+1)])%or(1, n)²`
-/

namespace A211242.P827258212706015102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (Nat.lor 1 n ^ 2 : ℤ)

end

end A211242.P827258212706015102

/-! ## A211242.P2261639713861760162

`A054707(p?[A001751(n+1)])%∑[(1-n²+n)²]`
-/

namespace A211242.P2261639713861760162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n ^ 2 : ℤ) + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054707 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A211242.P2261639713861760162

/-! ## A211242.P7593330467418247903

`A007737(record[A051698(n)])%A002061(n)`
-/

namespace A211242.P7593330467418247903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A002061 n)

end

end A211242.P7593330467418247903

/-! ## A211242.P16465066280391626803

`A054707(record[A051698(n)])%A000124(n)`
-/

namespace A211242.P16465066280391626803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054707 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A000124 n)

end

end A211242.P16465066280391626803

/-! ## A211242.P11681700382695348743

`A007737(p?[A004442(n)])%A002061(n)`
-/

namespace A211242.P11681700382695348743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007737 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A002061 n)

end

end A211242.P11681700382695348743

/-! ## A211242.P9129750769028885539

`A007737(p?[A014681(n)])%A002061(n)`
-/

namespace A211242.P9129750769028885539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007737 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A002061 n)

end

end A211242.P9129750769028885539

/-! ## A211242.P6390515415552200343

`A054707(p?[A004442(n)])%A000124(n)`
-/

namespace A211242.P6390515415552200343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054707 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A000124 n)

end

end A211242.P6390515415552200343

/-! ## A211242.P10360016690252280276

`A054707(p?[A014681(n)])%A000124(n)`
-/

namespace A211242.P10360016690252280276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054707 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A000124 n)

end

end A211242.P10360016690252280276

/-! ## A211242.P2312511346437917909

`A007737(A000040(n+1))%A002061(n)`
-/

namespace A211242.P2312511346437917909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007737 (A000040 (n + 1)).toNat) (A002061 n)

end

end A211242.P2312511346437917909

/-! ## A211242.P13012075738947407266

`A054707(A000040(n+1))%A000124(n)`
-/

namespace A211242.P13012075738947407266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054707 (A000040 (n + 1)).toNat) (A000124 n)

end

end A211242.P13012075738947407266

/-! ## A211242.P12225321688824712891

`A007737(record[A039649(n+1)])%A002061(n)`
-/

namespace A211242.P12225321688824712891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A002061 n)

end

end A211242.P12225321688824712891

/-! ## A211242.P8920561559150623684

`A070681(A102781(n+1))`
-/

namespace A211242.P8920561559150623684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070681 (A102781 (n + 1)).toNat

end

end A211242.P8920561559150623684

/-! ## A211242.P5373321720206120346

`A070681(A130290(n+1))`
-/

namespace A211242.P5373321720206120346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070681 (A130290 (n + 1)).toNat

end

end A211242.P5373321720206120346

/-! ## A211242.P1903603825483069021

`A070681(eq[A004275(n+1), A037225(n)])`
-/

namespace A211242.P1903603825483069021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070681 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A211242.P1903603825483069021

/-! ## A211242.P15915360171523331671

`A007737(p?[A005180(n+1)])%A002061(n)`
-/

namespace A211242.P15915360171523331671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007737 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A002061 n)

end

end A211242.P15915360171523331671

/-! ## A211242.P8881407617878957915

`and(A000225(n), A054707(A000040(n+1)))`
-/

namespace A211242.P8881407617878957915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A054707 (A000040 (n + 1)).toNat)

end

end A211242.P8881407617878957915

/-!
# A211243: Order of 7 mod n-th prime: least k such that prime(n) divides 7^k-1.

The programs for A211243, there is no canonical definition to state claims against.
-/

/-! ## A211243.P15254995889121126802

`A070678(Δ[A007504(n)])`
-/

namespace A211243.P15254995889121126802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 (f1 (n + 1) - f1 n).toNat

end

end A211243.P15254995889121126802

/-! ## A211243.P1979917108823084241

`A070678(A000040(n+1))`
-/

namespace A211243.P1979917108823084241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 (A000040 (n + 1)).toNat

end

end A211243.P1979917108823084241

/-! ## A211243.P9639649233879976571

`A070678(A008578(n+2))`
-/

namespace A211243.P9639649233879976571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 (A008578 (n + 2)).toNat

end

end A211243.P9639649233879976571

/-! ## A211243.P6856296743047213754

`A070678(A182986(n+2))`
-/

namespace A211243.P6856296743047213754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 (A182986 (n + 2)).toNat

end

end A211243.P6856296743047213754

/-! ## A211243.P15435994512898580652

`A070678(record[A006530(n+2)])`
-/

namespace A211243.P15435994512898580652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A211243.P15435994512898580652

/-! ## A211243.P7715644899699089632

`A070678(record[A014963(n+2)])`
-/

namespace A211243.P7715644899699089632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A211243.P7715644899699089632

/-! ## A211243.P12332047654919656645

`A070678(record[A020639(n+2)])`
-/

namespace A211243.P12332047654919656645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A211243.P12332047654919656645

/-! ## A211243.P17282034877535612437

`A070678(eq[n, A000010(n+1)]+1)`
-/

namespace A211243.P17282034877535612437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A211243.P17282034877535612437

/-! ## A211243.P7748120003871237441

`A070678(A007504(n+1)-A007504(n))`
-/

namespace A211243.P7748120003871237441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 (A007504 (n + 1) - A007504 n).toNat

end

end A211243.P7748120003871237441

/-! ## A211243.P13020783959517053619

`A070678(A251618(n+1))`
-/

namespace A211243.P13020783959517053619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 (A251618 (n + 1)).toNat

end

end A211243.P13020783959517053619

/-! ## A211243.P2388654229398634214

`A070678(A077017(n+2))`
-/

namespace A211243.P2388654229398634214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 (A077017 (n + 2)).toNat

end

end A211243.P2388654229398634214

/-! ## A211243.P14881425604330413935

`A070678(A107620(n+1))`
-/

namespace A211243.P14881425604330413935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 (A107620 (n + 1)).toNat

end

end A211243.P14881425604330413935

/-! ## A211243.P16736966773199820808

`A323376(∑[n+4]+3)`
-/

namespace A211243.P16736966773199820808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323376 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A211243.P16736966773199820808

/-!
# A211244: Order of 8 mod n-th prime: least k such that prime(n) divides 8^k-1.

The programs for A211244, there is no canonical definition to state claims against.
-/

/-! ## A211244.P2775310432799939967

`A240663(n+1)+A051176(A082654(n+1))`
-/

namespace A211244.P2775310432799939967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240663 (n + 1) + A051176 (A082654 (n + 1)).toNat

end

end A211244.P2775310432799939967

/-! ## A211244.P326433341662472409

`A053451(A102781(n+1))-A000007(n)`
-/

namespace A211244.P326433341662472409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053451 (A102781 (n + 1)).toNat - A000007 n

end

end A211244.P326433341662472409

/-! ## A211244.P471530292158201280

`A053451(A130290(n+1))-A000038(n)`
-/

namespace A211244.P471530292158201280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053451 (A130290 (n + 1)).toNat - A000038 n

end

end A211244.P471530292158201280

/-! ## A211244.P428280705145856042

`A053451(A102781(n+1))*A057427(n)`
-/

namespace A211244.P428280705145856042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053451 (A102781 (n + 1)).toNat * A057427 n

end

end A211244.P428280705145856042

/-! ## A211244.P5404782233394282863

`A053451(A130290(n+1))*A057427(n)`
-/

namespace A211244.P5404782233394282863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053451 (A130290 (n + 1)).toNat * A057427 n

end

end A211244.P5404782233394282863

/-! ## A211244.P5069199855784870345

`A053451(A102781(n+1))%A000328(n)`
-/

namespace A211244.P5069199855784870345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053451 (A102781 (n + 1)).toNat) (A000328 n)

end

end A211244.P5069199855784870345

/-! ## A211244.P7675964165024126357

`A053451(A130290(n+1))%A000328(n)`
-/

namespace A211244.P7675964165024126357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053451 (A130290 (n + 1)).toNat) (A000328 n)

end

end A211244.P7675964165024126357

/-! ## A211244.P2871865132755774440

`∏{p}[A000040(n+1), A054709(#)%#]`
-/

namespace A211244.P2871865132755774440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Int.tmod (A054709 p) (p : ℤ)

end

end A211244.P2871865132755774440

/-! ## A211244.P14657153517620998007

`A054709(p?[A339968(n+1)])%∑[n+1]`
-/

namespace A211244.P14657153517620998007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339968 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054709 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A211244.P14657153517620998007

/-! ## A211244.P2279442623386499452

`A054709(Δ[A007504(n)])%A005893(n)`
-/

namespace A211244.P2279442623386499452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054709 (f1 (n + 1) - f1 n).toNat) (A005893 n)

end

end A211244.P2279442623386499452

/-! ## A211244.P11952665878497161077

`A007739(Δ[A007504(n)])%A056106(n)`
-/

namespace A211244.P11952665878497161077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007739 (f1 (n + 1) - f1 n).toNat) (A056106 n)

end

end A211244.P11952665878497161077

/-! ## A211244.P16661997393568449375

`A007739(A000040(n+1))-A000007(n)`
-/

namespace A211244.P16661997393568449375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007739 (A000040 (n + 1)).toNat - A000007 n

end

end A211244.P16661997393568449375

/-! ## A211244.P6911687271171640396

`A007739(A000040(n+1))*A057427(n)`
-/

namespace A211244.P6911687271171640396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007739 (A000040 (n + 1)).toNat * A057427 n

end

end A211244.P6911687271171640396

/-! ## A211244.P7884783967051751265

`A007739(A000040(n+1))%A000328(n)`
-/

namespace A211244.P7884783967051751265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007739 (A000040 (n + 1)).toNat) (A000328 n)

end

end A211244.P7884783967051751265

/-! ## A211244.P10494565775218639875

`A054709(A000040(n+1))%A000291(n)`
-/

namespace A211244.P10494565775218639875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054709 (A000040 (n + 1)).toNat) (A000291 n)

end

end A211244.P10494565775218639875

/-! ## A211244.P8137011832464040898

`A007739(A006093(n+1)+1)%A301248(n)`
-/

namespace A211244.P8137011832464040898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007739 (A006093 (n + 1) + 1).toNat) (A301248 n)

end

end A211244.P8137011832464040898

/-! ## A211244.P741384454062977870

`A051176(A323376(∑[n+1]))`
-/

namespace A211244.P741384454062977870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A323376 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A211244.P741384454062977870

/-!
# A211245: Order of 9 mod n-th prime: least k such that prime(n) divides 9^k-1.

The programs for A211245, there is no canonical definition to state claims against.
-/

/-! ## A211245.P15968299678925077104

`A062117(n+1)/gcd(2, A062117(n+1))`
-/

namespace A211245.P15968299678925077104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062117 (n + 1) : ℚ) / (Int.gcd 2 (A062117 (n + 1)) : ℚ)

end

end A211245.P15968299678925077104

/-! ## A211245.P8410715972548898854

`lcm(2, A062117(n+1))/2`
-/

namespace A211245.P8410715972548898854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A062117 (n + 1)) : ℚ) / 2

end

end A211245.P8410715972548898854

/-! ## A211245.P597629188337375608

`gcd(A062117(n+1), A240658(n+1))`
-/

namespace A211245.P597629188337375608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062117 (n + 1)) (A240658 (n + 1))

end

end A211245.P597629188337375608

/-! ## A211245.P11517287462756339890

`A026741(A062117(n+1))`
-/

namespace A211245.P11517287462756339890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A062117 (n + 1)).toNat

end

end A211245.P11517287462756339890

/-! ## A211245.P11572024169158619613

`A026741(A380482(n+1))`
-/

namespace A211245.P11572024169158619613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A380482 (n + 1)).toNat

end

end A211245.P11572024169158619613

/-! ## A211245.P15632577208943961923

`A004525(lcm(2, A062117(n+1)))`
-/

namespace A211245.P15632577208943961923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A062117 (n + 1)))

end

end A211245.P15632577208943961923

/-! ## A211245.P4144606519950921502

`A007740(A000040(n+1))-char[1]`
-/

namespace A211245.P4144606519950921502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007740 (A000040 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A211245.P4144606519950921502

/-! ## A211245.P4916740430334305862

`A007740(A000040(n+1))*A060576(n)`
-/

namespace A211245.P4916740430334305862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007740 (A000040 (n + 1)).toNat * A060576 n

end

end A211245.P4916740430334305862

/-! ## A211245.P11467301984511544405

`A070679(A000040(n+1))`
-/

namespace A211245.P11467301984511544405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070679 (A000040 (n + 1)).toNat

end

end A211245.P11467301984511544405

/-! ## A211245.P12420461908819861967

`A070679(A008578(n+2))`
-/

namespace A211245.P12420461908819861967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070679 (A008578 (n + 2)).toNat

end

end A211245.P12420461908819861967

/-! ## A211245.P1494563364890041628

`A070679(record[A006530(n+2)])`
-/

namespace A211245.P1494563364890041628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070679 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A211245.P1494563364890041628

/-! ## A211245.P17721696643251986422

`A070679(record[A014963(n+2)])`
-/

namespace A211245.P17721696643251986422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070679 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A211245.P17721696643251986422

/-! ## A211245.P8265728006879645841

`A070679(record[A020639(n+2)])`
-/

namespace A211245.P8265728006879645841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070679 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A211245.P8265728006879645841

/-! ## A211245.P174351338407127525

`A070679(A100484(n+1)/2)`
-/

namespace A211245.P174351338407127525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070679 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A211245.P174351338407127525

/-! ## A211245.P10266545703778049652

`A070679(A001747(n+2)/2)`
-/

namespace A211245.P10266545703778049652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070679 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A211245.P10266545703778049652

/-! ## A211245.P13215151829612164825

`A070679(A100484(n+1))`
-/

namespace A211245.P13215151829612164825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070679 (A100484 (n + 1)).toNat

end

end A211245.P13215151829612164825

/-! ## A211245.P1632625953822067886

`A070679(A001747(n+2))`
-/

namespace A211245.P1632625953822067886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070679 (A001747 (n + 2)).toNat

end

end A211245.P1632625953822067886

/-! ## A211245.P2922353008761832540

`A070679(A074845(n+2))`
-/

namespace A211245.P2922353008761832540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070679 (A074845 (n + 2)).toNat

end

end A211245.P2922353008761832540

/-! ## A211245.P6769326172662585272

`A070679(A077017(n+2))`
-/

namespace A211245.P6769326172662585272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070679 (A077017 (n + 2)).toNat

end

end A211245.P6769326172662585272

/-! ## A211245.P18048473970184683694

`A070679(A001749(n+1)/2)`
-/

namespace A211245.P18048473970184683694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070679 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat

end

end A211245.P18048473970184683694

/-!
# A211248: G.f. satisfies: A(x) = (1 + x*A(x)^3) * (1 + x^2*A(x)^4).

The programs for A211248, there is no canonical definition to state claims against.
-/

/-! ## A211248.P10275394735863788096

`A004396(or(A083652(n), A366266(n)))`
-/

namespace A211248.P10275394735863788096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.lor (A083652 n) (A366266 n)).toNat

end

end A211248.P10275394735863788096

/-! ## A211248.P10341110070106643227

`A004396(or(A133041(n), A366266(n)))`
-/

namespace A211248.P10341110070106643227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.lor (A133041 n) (A366266 n)).toNat

end

end A211248.P10341110070106643227

/-!
# A211249: G.f. satisfies: A(x) = (1 + x*A(x)^3) * (1 + x^2*A(x)^5).

The programs for A211249, there is no canonical definition to state claims against.
-/

/-! ## A211249.P15384499233998828804

`A123496(A184993(n))+A003168(n)`
-/

namespace A211249.P15384499233998828804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123496 (A184993 n).toNat + A003168 n

end

end A211249.P15384499233998828804

/-! ## A211249.P5650953717419547465

`A007953(A324424(2*(n+1)))+A003168(n)`
-/

namespace A211249.P5650953717419547465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A324424 (2 * (n + 1))).toNat + A003168 n

end

end A211249.P5650953717419547465

/-!
# A211253: Number of (n+1) X (n+1) -6..6 symmetric matrices with every 2 X 2 subblock having sum zero and one or two distinct values.

The programs for A211253, the canonical program `A211253.P15551715546563988252` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211253 has offset 1).

The definition of A211253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211253.P15551715546563988252

`a(n-1)+a(n-2)-9` with `a(0)=21, a(1)=29`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211253

/-- `a(n-1)+a(n-2)-9` -/
def P15551715546563988252.Spec : Prop :=
  ∀ n, P15551715546563988252.a n = A211253 (n + 1)

theorem P15551715546563988252.correct : P15551715546563988252.Spec := by
  intro n
  simp only [A211253, Nat.add_sub_cancel]

end A211253

/-! ## A211253.P12631491296137196243

`a(n-1)-(9-a(n-2))` with `a(0)=21, a(1)=29`
-/

namespace A211253.P12631491296137196243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [21, 29] fun n a =>
  a (n - 1) - (9 - a (n - 2))

end

end A211253.P12631491296137196243

namespace A211253

/-- `a(n-1)-(9-a(n-2))` -/
def P12631491296137196243.Spec : Prop :=
  ∀ n, P12631491296137196243.a n = A211253 (n + 1)

theorem P12631491296137196243.correct : P12631491296137196243.Spec := by
  intro n
  simp only [A211253, Nat.add_sub_cancel, A211253.P12631491296137196243.a, A211253.P15551715546563988252.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A211253

/-! ## A211253.P5675418261822295772

`A211466(n+1)-4`
-/

namespace A211253.P5675418261822295772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211466 (n + 1) - 4

end

end A211253.P5675418261822295772

namespace A211253

/-- `A211466(n+1)-4` -/
def P5675418261822295772.Spec : Prop :=
  ∀ n, P5675418261822295772.a n = A211253 (n + 1)

end A211253

/-! ## A211253.P3809750396973832607

`4*A048584(n)+1`
-/

namespace A211253.P3809750396973832607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A048584 n + 1

end

end A211253.P3809750396973832607

namespace A211253

/-- `4*A048584(n)+1` -/
def P3809750396973832607.Spec : Prop :=
  ∀ n, P3809750396973832607.a n = A211253 (n + 1)

end A211253

/-! ## A211253.P14373042248358279154

`4*A020706(n)+5`
-/

namespace A211253.P14373042248358279154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020706 n + 5

end

end A211253.P14373042248358279154

namespace A211253

/-- `4*A020706(n)+5` -/
def P14373042248358279154.Spec : Prop :=
  ∀ n, P14373042248358279154.a n = A211253 (n + 1)

end A211253

/-! ## A211253.P8006013994983129509

`A164485(n+4)+8`
-/

namespace A211253.P8006013994983129509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164485 (n + 4) + 8

end

end A211253.P8006013994983129509

namespace A211253

/-- `A164485(n+4)+8` -/
def P8006013994983129509.Spec : Prop :=
  ∀ n, P8006013994983129509.a n = A211253 (n + 1)

end A211253

/-! ## A211253.P17605798638890336153

`A022087(n+4)+9`
-/

namespace A211253.P17605798638890336153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 (n + 4) + 9

end

end A211253.P17605798638890336153

namespace A211253

/-- `A022087(n+4)+9` -/
def P17605798638890336153.Spec : Prop :=
  ∀ n, P17605798638890336153.a n = A211253 (n + 1)

end A211253

/-! ## A211253.P6651560296078979044

`4*A020701(n)+9`
-/

namespace A211253.P6651560296078979044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020701 n + 9

end

end A211253.P6651560296078979044

namespace A211253

/-- `4*A020701(n)+9` -/
def P6651560296078979044.Spec : Prop :=
  ∀ n, P6651560296078979044.a n = A211253 (n + 1)

end A211253

/-! ## A211253.P15551225104216156776

`2*A211322(n+1)-1`
-/

namespace A211253.P15551225104216156776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211322 (n + 1) - 1

end

end A211253.P15551225104216156776

namespace A211253

/-- `2*A211322(n+1)-1` -/
def P15551225104216156776.Spec : Prop :=
  ∀ n, P15551225104216156776.a n = A211253 (n + 1)

end A211253

/-! ## A211253.P5250047835388189227

`2*A097280(n+2)+3`
-/

namespace A211253.P5250047835388189227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097280 (n + 2) + 3

end

end A211253.P5250047835388189227

namespace A211253

/-- `2*A097280(n+2)+3` -/
def P5250047835388189227.Spec : Prop :=
  ∀ n, P5250047835388189227.a n = A211253 (n + 1)

end A211253

/-! ## A211253.P12832260913749777150

`2*A211490(n+1)-5`
-/

namespace A211253.P12832260913749777150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211490 (n + 1) - 5

end

end A211253.P12832260913749777150

namespace A211253

/-- `2*A211490(n+1)-5` -/
def P12832260913749777150.Spec : Prop :=
  ∀ n, P12832260913749777150.a n = A211253 (n + 1)

end A211253

/-! ## A211253.P4749145089713754254

`4*A000045(n+4)+9`
-/

namespace A211253.P4749145089713754254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (n + 4) + 9

end

end A211253.P4749145089713754254

namespace A211253

/-- `4*A000045(n+4)+9` -/
def P4749145089713754254.Spec : Prop :=
  ∀ n, P4749145089713754254.a n = A211253 (n + 1)

end A211253

/-! ## A211253.P17729865528862356140

`A211329(n+1)+A090991(n+1)`
-/

namespace A211253.P17729865528862356140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211329 (n + 1) + A090991 (n + 1)

end

end A211253.P17729865528862356140

namespace A211253

/-- `A211329(n+1)+A090991(n+1)` -/
def P17729865528862356140.Spec : Prop :=
  ∀ n, P17729865528862356140.a n = A211253 (n + 1)

end A211253

/-! ## A211253.P11653584850608963125

`A211813(n+1)-A211322(n+1)`
-/

namespace A211253.P11653584850608963125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211813 (n + 1) - A211322 (n + 1)

end

end A211253.P11653584850608963125

namespace A211253

/-- `A211813(n+1)-A211322(n+1)` -/
def P11653584850608963125.Spec : Prop :=
  ∀ n, P11653584850608963125.a n = A211253 (n + 1)

end A211253

/-! ## A211253.P9037293522250806400

`A211710(n+1)-A211490(n+1)`
-/

namespace A211253.P9037293522250806400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211710 (n + 1) - A211490 (n + 1)

end

end A211253.P9037293522250806400

namespace A211253

/-- `A211710(n+1)-A211490(n+1)` -/
def P9037293522250806400.Spec : Prop :=
  ∀ n, P9037293522250806400.a n = A211253 (n + 1)

end A211253

/-! ## A211253.P13531974415312142561

`4*A179242(A000124(n))+5`
-/

namespace A211253.P13531974415312142561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A179242 (A000124 n).toNat + 5

end

end A211253.P13531974415312142561

namespace A211253

/-- `4*A179242(A000124(n))+5` -/
def P13531974415312142561.Spec : Prop :=
  ∀ n, P13531974415312142561.a n = A211253 (n + 1)

end A211253

/-! ## A211253.P5877197066688781474

`4*A084176(A167499(n))+1`
-/

namespace A211253.P5877197066688781474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A084176 (A167499 n).toNat + 1

end

end A211253.P5877197066688781474

namespace A211253

/-- `4*A084176(A167499(n))+1` -/
def P5877197066688781474.Spec : Prop :=
  ∀ n, P5877197066688781474.a n = A211253 (n + 1)

end A211253

/-!
# A211261: Number of integer pairs (x,y) such that 0

The programs for A211261, the canonical program `A211261.P11564212885417913307` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211261 has offset 1).

The definition of A211261 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A211261.P11564212885417913307

`floor(A000005(2*(n+1))/2)-1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A211261

/-- `floor(A000005(2*(n+1))/2)-1` -/
def P11564212885417913307.Spec : Prop :=
  ∀ n, P11564212885417913307.a n = A211261 (n + 1)

theorem P11564212885417913307.correct : P11564212885417913307.Spec := by
  intro n
  simp only [A211261, Nat.add_sub_cancel]

end A211261

/-! ## A211261.P16177848292609839620

`floor(A069930(n+1)/2)`
-/

namespace A211261.P16177848292609839620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A069930 (n + 1) : ℚ) / 2⌋

end

end A211261.P16177848292609839620

namespace A211261

/-- `floor(A069930(n+1)/2)` -/
def P16177848292609839620.Spec : Prop :=
  ∀ n, P16177848292609839620.a n = A211261 (n + 1)

end A211261

/-! ## A211261.P6667023635718224694

`ceil(A337566(n+1)/2)`
-/

namespace A211261.P6667023635718224694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337566 (n + 1) : ℚ) / 2⌉

end

end A211261.P6667023635718224694

namespace A211261

/-- `ceil(A337566(n+1)/2)` -/
def P6667023635718224694.Spec : Prop :=
  ∀ n, P6667023635718224694.a n = A211261 (n + 1)

end A211261

/-! ## A211261.P16982041620777651390

`ceil((A000005(2*n+2)+1)/2)-2`
-/

namespace A211261.P16982041620777651390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (2 * n + 2) + 1 : ℚ) / 2⌉ - 2

end

end A211261.P16982041620777651390

namespace A211261

/-- `ceil((A000005(2*n+2)+1)/2)-2` -/
def P16982041620777651390.Spec : Prop :=
  ∀ n, P16982041620777651390.a n = A211261 (n + 1)

end A211261

/-! ## A211261.P5419567537398564085

`A004526(A069930(n+1))`
-/

namespace A211261.P5419567537398564085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A069930 (n + 1)).toNat

end

end A211261.P5419567537398564085

namespace A211261

/-- `A004526(A069930(n+1))` -/
def P5419567537398564085.Spec : Prop :=
  ∀ n, P5419567537398564085.a n = A211261 (n + 1)

end A211261

/-! ## A211261.P4091484944467796701

`A059169(A111150(n+1))`
-/

namespace A211261.P4091484944467796701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A111150 (n + 1)).toNat

end

end A211261.P4091484944467796701

namespace A211261

/-- `A059169(A111150(n+1))` -/
def P4091484944467796701.Spec : Prop :=
  ∀ n, P4091484944467796701.a n = A211261 (n + 1)

end A211261

/-! ## A211261.P10839069406828118307

`A004526(A066660(n+1)-1)`
-/

namespace A211261.P10839069406828118307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A066660 (n + 1) - 1).toNat

end

end A211261.P10839069406828118307

namespace A211261

/-- `A004526(A066660(n+1)-1)` -/
def P10839069406828118307.Spec : Prop :=
  ∀ n, P10839069406828118307.a n = A211261 (n + 1)

end A211261

/-! ## A211261.P15172504294575061334

`A002265(A111150(n+1)-1)`
-/

namespace A211261.P15172504294575061334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A111150 (n + 1) - 1).toNat

end

end A211261.P15172504294575061334

namespace A211261

/-- `A002265(A111150(n+1)-1)` -/
def P15172504294575061334.Spec : Prop :=
  ∀ n, P15172504294575061334.a n = A211261 (n + 1)

end A211261

/-! ## A211261.P10082851859974221175

`A061857(A066446(2*(n+1)))`
-/

namespace A211261.P10082851859974221175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061857 (A066446 (2 * (n + 1))).toNat

end

end A211261.P10082851859974221175

namespace A211261

/-- `A061857(A066446(2*(n+1)))` -/
def P10082851859974221175.Spec : Prop :=
  ∀ n, P10082851859974221175.a n = A211261 (n + 1)

end A211261

/-! ## A211261.P1276388561524309825

`A140106(A000005(2*(n+1)))`
-/

namespace A211261.P1276388561524309825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A000005 (2 * (n + 1))).toNat

end

end A211261.P1276388561524309825

namespace A211261

/-- `A140106(A000005(2*(n+1)))` -/
def P1276388561524309825.Spec : Prop :=
  ∀ n, P1276388561524309825.a n = A211261 (n + 1)

end A211261

/-! ## A211261.P16248959802921364654

`A369258(n+1)+A072670(n)`
-/

namespace A211261.P16248959802921364654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369258 (n + 1) + A072670 n

end

end A211261.P16248959802921364654

namespace A211261

/-- `A369258(n+1)+A072670(n)` -/
def P16248959802921364654.Spec : Prop :=
  ∀ n, P16248959802921364654.a n = A211261 (n + 1)

end A211261

/-! ## A211261.P9971859258224321860

`A095861(A066446(2*(n+1))+1)`
-/

namespace A211261.P9971859258224321860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A066446 (2 * (n + 1)) + 1).toNat

end

end A211261.P9971859258224321860

namespace A211261

/-- `A095861(A066446(2*(n+1))+1)` -/
def P9971859258224321860.Spec : Prop :=
  ∀ n, P9971859258224321860.a n = A211261 (n + 1)

end A211261

/-! ## A211261.P17334094906018842710

`A004526(A000005(2*(n+1))-2)`
-/

namespace A211261.P17334094906018842710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (2 * (n + 1)) - 2).toNat

end

end A211261.P17334094906018842710

namespace A211261

/-- `A004526(A000005(2*(n+1))-2)` -/
def P17334094906018842710.Spec : Prop :=
  ∀ n, P17334094906018842710.a n = A211261 (n + 1)

end A211261

/-! ## A211261.P14812856353211285852

`A069930(n+1)-A211270(n+1)`
-/

namespace A211261.P14812856353211285852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069930 (n + 1) - A211270 (n + 1)

end

end A211261.P14812856353211285852

namespace A211261

/-- `A069930(n+1)-A211270(n+1)` -/
def P14812856353211285852.Spec : Prop :=
  ∀ n, P14812856353211285852.a n = A211261 (n + 1)

end A211261

/-! ## A211261.P9118653307890006627

`A319571(A000005(2*(n+1))²+1)`
-/

namespace A211261.P9118653307890006627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (A000005 (2 * (n + 1)) ^ 2 + 1).toNat

end

end A211261.P9118653307890006627

namespace A211261

/-- `A319571(A000005(2*(n+1))²+1)` -/
def P9118653307890006627.Spec : Prop :=
  ∀ n, P9118653307890006627.a n = A211261 (n + 1)

end A211261

/-! ## A211261.P8513183325083326988

`A057554(A000005(2*(n+1))²)-1`
-/

namespace A211261.P8513183325083326988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A000005 (2 * (n + 1)) ^ 2).toNat - 1

end

end A211261.P8513183325083326988

namespace A211261

/-- `A057554(A000005(2*(n+1))²)-1` -/
def P8513183325083326988.Spec : Prop :=
  ∀ n, P8513183325083326988.a n = A211261 (n + 1)

end A211261

/-! ## A211261.P2036088347523186019

`A064727(A000005(2*(n+1))²)-1`
-/

namespace A211261.P2036088347523186019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A000005 (2 * (n + 1)) ^ 2).toNat - 1

end

end A211261.P2036088347523186019

namespace A211261

/-- `A064727(A000005(2*(n+1))²)-1` -/
def P2036088347523186019.Spec : Prop :=
  ∀ n, P2036088347523186019.a n = A211261 (n + 1)

end A211261

/-! ## A211261.P4066679103887510447

`A337101(A000005(2*(n+1))²)-1`
-/

namespace A211261.P4066679103887510447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A000005 (2 * (n + 1)) ^ 2).toNat - 1

end

end A211261.P4066679103887510447

namespace A211261

/-- `A337101(A000005(2*(n+1))²)-1` -/
def P4066679103887510447.Spec : Prop :=
  ∀ n, P4066679103887510447.a n = A211261 (n + 1)

end A211261

/-! ## A211261.P9527807357406830127

`A338664(A000005(2*(n+1))²)-1`
-/

namespace A211261.P9527807357406830127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338664 (A000005 (2 * (n + 1)) ^ 2).toNat - 1

end

end A211261.P9527807357406830127

namespace A211261

/-- `A338664(A000005(2*(n+1))²)-1` -/
def P9527807357406830127.Spec : Prop :=
  ∀ n, P9527807357406830127.a n = A211261 (n + 1)

end A211261

/-! ## A211261.P13796090079619497739

`A057555(A000005(2*(n+1))²)-2`
-/

namespace A211261.P13796090079619497739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (A000005 (2 * (n + 1)) ^ 2).toNat - 2

end

end A211261.P13796090079619497739

namespace A211261

/-- `A057555(A000005(2*(n+1))²)-2` -/
def P13796090079619497739.Spec : Prop :=
  ∀ n, P13796090079619497739.a n = A211261 (n + 1)

end A211261

/-!
# A211262: Number of integer pairs (x,y) such that 0

The programs for A211262, the canonical program `A211262.P15561464354873054007` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211262 has offset 1).

The definition of A211262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211262.P15561464354873054007

`A004526(A000005(3*(n+1)))-A000034(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A211262

/-- `A004526(A000005(3*(n+1)))-A000034(n)` -/
def P15561464354873054007.Spec : Prop :=
  ∀ n, P15561464354873054007.a n = A211262 (n + 1)

theorem P15561464354873054007.correct : P15561464354873054007.Spec := by
  intro n
  simp only [A211262, Nat.add_sub_cancel]

end A211262

/-! ## A211262.P9890477939815630704

`A004526(A000005(3*(n+1)))-A040001(n+1)`
-/

namespace A211262.P9890477939815630704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (3 * (n + 1))).toNat - A040001 (n + 1)

end

end A211262.P9890477939815630704

namespace A211262

/-- `A004526(A000005(3*(n+1)))-A040001(n+1)` -/
def P9890477939815630704.Spec : Prop :=
  ∀ n, P9890477939815630704.a n = A211262 (n + 1)

end A211262

/-! ## A211262.P16776233730691733772

`A211159(A016789(n))-char[2*n+1]`
-/

namespace A211262.P16776233730691733772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211159 (A016789 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A211262.P16776233730691733772

namespace A211262

/-- `A211159(A016789(n))-char[2*n+1]` -/
def P16776233730691733772.Spec : Prop :=
  ∀ n, P16776233730691733772.a n = A211262 (n + 1)

end A211262

/-! ## A211262.P6553369929436111390

`A056924(A008585(n+1))-A000034(n)`
-/

namespace A211262.P6553369929436111390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A008585 (n + 1)).toNat - A000034 n

end

end A211262.P6553369929436111390

namespace A211262

/-- `A056924(A008585(n+1))-A000034(n)` -/
def P6553369929436111390.Spec : Prop :=
  ∀ n, P6553369929436111390.a n = A211262 (n + 1)

end A211262

/-! ## A211262.P8725197829992800234

`A056924(A008585(n+1))-A000045(or(n, -2)+4)`
-/

namespace A211262.P8725197829992800234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A008585 (n + 1)).toNat - A000045 (Int.lor (n : ℤ) (-2) + 4).toNat

end

end A211262.P8725197829992800234

namespace A211262

/-- `A056924(A008585(n+1))-A000045(or(n, -2)+4)` -/
def P8725197829992800234.Spec : Prop :=
  ∀ n, P8725197829992800234.a n = A211262 (n + 1)

end A211262

/-! ## A211262.P16111364670468918281

`A056924(A008585(n+1))-A007302(or(n, -2)+4)`
-/

namespace A211262.P16111364670468918281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A008585 (n + 1)).toNat - A007302 (Int.lor (n : ℤ) (-2) + 4).toNat

end

end A211262.P16111364670468918281

namespace A211262

/-- `A056924(A008585(n+1))-A007302(or(n, -2)+4)` -/
def P16111364670468918281.Spec : Prop :=
  ∀ n, P16111364670468918281.a n = A211262 (n + 1)

end A211262

/-! ## A211262.P4101882953910334160

`A056924(A008585(n+1))-A008620(or(n, -2)+4)`
-/

namespace A211262.P4101882953910334160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A008585 (n + 1)).toNat - A008620 (Int.lor (n : ℤ) (-2) + 4).toNat

end

end A211262.P4101882953910334160

namespace A211262

/-- `A056924(A008585(n+1))-A008620(or(n, -2)+4)` -/
def P4101882953910334160.Spec : Prop :=
  ∀ n, P4101882953910334160.a n = A211262 (n + 1)

end A211262

/-!
# A211263: Number of integer pairs (x,y) such that 0

The programs for A211263, the canonical program `A211263.P4539019558918800266` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211263 has offset 1).

The definition of A211263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211263.P4539019558918800266

`floor(∏{e}[floor((n+1)/2), #+1]/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211263

/-- `floor(∏{e}[floor((n+1)/2), #+1]/2)` -/
def P4539019558918800266.Spec : Prop :=
  ∀ n, P4539019558918800266.a n = A211263 (n + 1)

theorem P4539019558918800266.correct : P4539019558918800266.Spec := by
  intro n
  simp only [A211263, Nat.add_sub_cancel]

end A211263

/-! ## A211263.P13798597868986184970

`ceil((∏{e}[ceil(n/2), #+1]-1)/2)`
-/

namespace A211263.P13798597868986184970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) - 1 : ℚ) / 2⌉

end

end A211263.P13798597868986184970

namespace A211263

/-- `ceil((∏{e}[ceil(n/2), #+1]-1)/2)` -/
def P13798597868986184970.Spec : Prop :=
  ∀ n, P13798597868986184970.a n = A211263 (n + 1)

end A211263

/-! ## A211263.P10423158754326668264

`ceil(A032741(ceil(n/2))/2)`
-/

namespace A211263.P10423158754326668264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032741 ⌈(n : ℚ) / 2⌉.toNat : ℚ) / 2⌉

end

end A211263.P10423158754326668264

namespace A211263

/-- `ceil(A032741(ceil(n/2))/2)` -/
def P10423158754326668264.Spec : Prop :=
  ∀ n, P10423158754326668264.a n = A211263 (n + 1)

end A211263

/-! ## A211263.P13375112800809455535

`round(A032741(round(n/2))/2)`
-/

namespace A211263.P13375112800809455535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032741 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat : ℚ) / 2)

end

end A211263.P13375112800809455535

namespace A211263

/-- `round(A032741(round(n/2))/2)` -/
def P13375112800809455535.Spec : Prop :=
  ∀ n, P13375112800809455535.a n = A211263 (n + 1)

end A211263

/-! ## A211263.P17690536088618037967

`∑{d}[∑[n%2], A001222(#)%2]`
-/

namespace A211263.P17690536088618037967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A001222 d) 2

end

end A211263.P17690536088618037967

namespace A211263

/-- `∑{d}[∑[n%2], A001222(#)%2]` -/
def P17690536088618037967.Spec : Prop :=
  ∀ n, P17690536088618037967.a n = A211263 (n + 1)

end A211263

/-! ## A211263.P8278232198196952471

`floor((A032741(floor((n+1)/2))+1)/2)`
-/

namespace A211263.P8278232198196952471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032741 ⌊(n + 1 : ℚ) / 2⌋.toNat + 1 : ℚ) / 2⌋

end

end A211263.P8278232198196952471

namespace A211263

/-- `floor((A032741(floor((n+1)/2))+1)/2)` -/
def P8278232198196952471.Spec : Prop :=
  ∀ n, P8278232198196952471.a n = A211263 (n + 1)

end A211263

/-! ## A211263.P645635732707877853

`floor(A000005(floor((n+1)²/(2*n+1)))/2)`
-/

namespace A211263.P645635732707877853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 ⌊((n + 1) ^ 2 : ℚ) / (2 * n + 1 : ℚ)⌋.toNat : ℚ) / 2⌋

end

end A211263.P645635732707877853

namespace A211263

/-- `floor(A000005(floor((n+1)²/(2*n+1)))/2)` -/
def P645635732707877853.Spec : Prop :=
  ∀ n, P645635732707877853.a n = A211263 (n + 1)

end A211263

/-! ## A211263.P18381337570051978079

`A056924(A065033(n))`
-/

namespace A211263.P18381337570051978079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A065033 n).toNat

end

end A211263.P18381337570051978079

namespace A211263

/-- `A056924(A065033(n))` -/
def P18381337570051978079.Spec : Prop :=
  ∀ n, P18381337570051978079.a n = A211263 (n + 1)

end A211263

/-! ## A211263.P8406031122569668540

`∑{d}[A001057(n), A066829(#)]`
-/

namespace A211263.P8406031122569668540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066829 d

end

end A211263.P8406031122569668540

namespace A211263

/-- `∑{d}[A001057(n), A066829(#)]` -/
def P8406031122569668540.Spec : Prop :=
  ∀ n, P8406031122569668540.a n = A211263 (n + 1)

end A211263

/-! ## A211263.P15497386556800114984

`A056924(A008619(abs(1-n)))`
-/

namespace A211263.P15497386556800114984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A008619 |1 - (n : ℤ)|.toNat).toNat

end

end A211263.P15497386556800114984

namespace A211263

/-- `A056924(A008619(abs(1-n)))` -/
def P15497386556800114984.Spec : Prop :=
  ∀ n, P15497386556800114984.a n = A211263 (n + 1)

end A211263

/-! ## A211263.P1057840308722851020

`A110654(A032741(ceil(n/2)))`
-/

namespace A211263.P1057840308722851020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A032741 ⌈(n : ℚ) / 2⌉.toNat).toNat

end

end A211263.P1057840308722851020

namespace A211263

/-- `A110654(A032741(ceil(n/2)))` -/
def P1057840308722851020.Spec : Prop :=
  ∀ n, P1057840308722851020.a n = A211263 (n + 1)

end A211263

/-! ## A211263.P10306405897221536586

`A004526(∏{e}[A001057(n), #+1])`
-/

namespace A211263.P10306405897221536586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A211263.P10306405897221536586

namespace A211263

/-- `A004526(∏{e}[A001057(n), #+1])` -/
def P10306405897221536586.Spec : Prop :=
  ∀ n, P10306405897221536586.a n = A211263 (n + 1)

end A211263

/-! ## A211263.P7921328926634018142

`A004526(∏{e}[A065033(n), #+1])`
-/

namespace A211263.P7921328926634018142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A211263.P7921328926634018142

namespace A211263

/-- `A004526(∏{e}[A065033(n), #+1])` -/
def P7921328926634018142.Spec : Prop :=
  ∀ n, P7921328926634018142.a n = A211263 (n + 1)

end A211263

/-! ## A211263.P8017146346719034003

`∑{d}[A065033(n), A001222(#)%2]`
-/

namespace A211263.P8017146346719034003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A001222 d) 2

end

end A211263.P8017146346719034003

namespace A211263

/-- `∑{d}[A065033(n), A001222(#)%2]` -/
def P8017146346719034003.Spec : Prop :=
  ∀ n, P8017146346719034003.a n = A211263 (n + 1)

end A211263

/-! ## A211263.P385506088418309346

`∑{d}[A110654(n), and(1, A001222(#))]`
-/

namespace A211263.P385506088418309346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.land 1 (A001222 d)

end

end A211263.P385506088418309346

namespace A211263

/-- `∑{d}[A110654(n), and(1, A001222(#))]` -/
def P385506088418309346.Spec : Prop :=
  ∀ n, P385506088418309346.a n = A211263 (n + 1)

end A211263

/-! ## A211263.P2338413039037762380

`A057554(A000005(A065033(n))²)`
-/

namespace A211263.P2338413039037762380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A000005 (A065033 n).toNat ^ 2).toNat

end

end A211263.P2338413039037762380

namespace A211263

/-- `A057554(A000005(A065033(n))²)` -/
def P2338413039037762380.Spec : Prop :=
  ∀ n, P2338413039037762380.a n = A211263 (n + 1)

end A211263

/-! ## A211263.P9336085090519713206

`∑{d}[A001057(n), A000035(A001222(#))]`
-/

namespace A211263.P9336085090519713206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 (A001222 d).toNat

end

end A211263.P9336085090519713206

namespace A211263

/-- `∑{d}[A001057(n), A000035(A001222(#))]` -/
def P9336085090519713206.Spec : Prop :=
  ∀ n, P9336085090519713206.a n = A211263 (n + 1)

end A211263

/-!
# A211264: Number of integer pairs (x,y) such that 0 < x < y <= n and x*y <= n.

The programs for A211264, the canonical program `A211264.P11691633609460959975` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211264 has offset 1).

The definition of A211264 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181972, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A211264.P13864961006010053696

`A094820(n+1)-A000196(n+1)`
-/

namespace A211264.P13864961006010053696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 (n + 1) - A000196 (n + 1)

end

end A211264.P13864961006010053696

namespace A211264

/-- `A094820(n+1)-A000196(n+1)` -/
def P13864961006010053696.Spec : Prop :=
  ∀ n, P13864961006010053696.a n = A211264 (n + 1)

end A211264

/-! ## A211264.P12932782242906971167

`1/2*(A006218(n+1)-A000196(n+1))`
-/

namespace A211264.P12932782242906971167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A006218 (n + 1) - A000196 (n + 1) : ℚ)

end

end A211264.P12932782242906971167

namespace A211264

/-- `1/2*(A006218(n+1)-A000196(n+1))` -/
def P12932782242906971167.Spec : Prop :=
  ∀ n, P12932782242906971167.a n = (A211264 (n + 1) : ℚ)

end A211264

/-! ## A211264.P11691633609460959975

`A181972(2*(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211264

/-- `A181972(2*(n+1))` -/
def P11691633609460959975.Spec : Prop :=
  ∀ n, P11691633609460959975.a n = A211264 (n + 1)

theorem P11691633609460959975.correct : P11691633609460959975.Spec := by
  intro n
  simp only [A211264, Nat.add_sub_cancel]

end A211264

/-! ## A211264.P14323456786115144974

`∑[floor(∏{e}[n+1, #+1]/2)]`
-/

namespace A211264.P14323456786115144974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211264.P14323456786115144974

namespace A211264

/-- `∑[floor(∏{e}[n+1, #+1]/2)]` -/
def P14323456786115144974.Spec : Prop :=
  ∀ n, P14323456786115144974.a n = A211264 (n + 1)

end A211264

/-! ## A211264.P17535351815343456851

`∑[ceil((∏{e}[n+1, #+1]-1)/2)]`
-/

namespace A211264.P17535351815343456851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - 1 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211264.P17535351815343456851

namespace A211264

/-- `∑[ceil((∏{e}[n+1, #+1]-1)/2)]` -/
def P17535351815343456851.Spec : Prop :=
  ∀ n, P17535351815343456851.a n = A211264 (n + 1)

end A211264

/-! ## A211264.P140071949593750265

`∑[A056924(n+1)]`
-/

namespace A211264.P140071949593750265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211264.P140071949593750265

namespace A211264

/-- `∑[A056924(n+1)]` -/
def P140071949593750265.Spec : Prop :=
  ∀ n, P140071949593750265.a n = A211264 (n + 1)

end A211264

/-! ## A211264.P15060339854413173496

`∑[floor(Δ[A006218(n)/2])]`
-/

namespace A211264.P15060339854413173496
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006218 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211264.P15060339854413173496

namespace A211264

/-- `∑[floor(Δ[A006218(n)/2])]` -/
def P15060339854413173496.Spec : Prop :=
  ∀ n, P15060339854413173496.a n = A211264 (n + 1)

end A211264

/-! ## A211264.P8175274932628921858

`∑[floor(A000005(n+1)/2)]`
-/

namespace A211264.P8175274932628921858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211264.P8175274932628921858

namespace A211264

/-- `∑[floor(A000005(n+1)/2)]` -/
def P8175274932628921858.Spec : Prop :=
  ∀ n, P8175274932628921858.a n = A211264 (n + 1)

end A211264

/-! ## A211264.P6967824052592072303

`∑[ceil(A032741(n+1)/2)]`
-/

namespace A211264.P6967824052592072303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032741 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211264.P6967824052592072303

namespace A211264

/-- `∑[ceil(A032741(n+1)/2)]` -/
def P6967824052592072303.Spec : Prop :=
  ∀ n, P6967824052592072303.a n = A211264 (n + 1)

end A211264

/-! ## A211264.P1624413643004008188

`∑[A200213(n+1)/2]+n`
-/

namespace A211264.P1624413643004008188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200213 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)

end

end A211264.P1624413643004008188

namespace A211264

/-- `∑[A200213(n+1)/2]+n` -/
def P1624413643004008188.Spec : Prop :=
  ∀ n, P1624413643004008188.a n = (A211264 (n + 1) : ℚ)

end A211264

/-! ## A211264.P14388039741534624376

`a(n-1)+A211159(n)+1` with `a(0)=0`
-/

namespace A211264.P14388039741534624376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A211159 n + 1)

end

end A211264.P14388039741534624376

namespace A211264

/-- `a(n-1)+A211159(n)+1` -/
def P14388039741534624376.Spec : Prop :=
  ∀ n, P14388039741534624376.a n = A211264 (n + 1)

end A211264

/-! ## A211264.P7106870957135643761

`∑[A004526(Δ[A006218(n)])]`
-/

namespace A211264.P7106870957135643761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211264.P7106870957135643761

namespace A211264

/-- `∑[A004526(Δ[A006218(n)])]` -/
def P7106870957135643761.Spec : Prop :=
  ∀ n, P7106870957135643761.a n = A211264 (n + 1)

end A211264

/-! ## A211264.P18266246106968250018

`∑[A004526(A000005(n+1))]`
-/

namespace A211264.P18266246106968250018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211264.P18266246106968250018

namespace A211264

/-- `∑[A004526(A000005(n+1))]` -/
def P18266246106968250018.Spec : Prop :=
  ∀ n, P18266246106968250018.a n = A211264 (n + 1)

end A211264

/-! ## A211264.P7100717752009917981

`∑[A002265(A062011(n+1))]`
-/

namespace A211264.P7100717752009917981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A062011 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211264.P7100717752009917981

namespace A211264

/-- `∑[A002265(A062011(n+1))]` -/
def P7100717752009917981.Spec : Prop :=
  ∀ n, P7100717752009917981.a n = A211264 (n + 1)

end A211264

/-! ## A211264.P2749502426650063899

`∑[A110654(A032741(n+1))]`
-/

namespace A211264.P2749502426650063899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A032741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211264.P2749502426650063899

namespace A211264

/-- `∑[A110654(A032741(n+1))]` -/
def P2749502426650063899.Spec : Prop :=
  ∀ n, P2749502426650063899.a n = A211264 (n + 1)

end A211264

/-! ## A211264.P382808016455342013

`∑[A057554(A000005(n+1)²)]`
-/

namespace A211264.P382808016455342013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A000005 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211264.P382808016455342013

namespace A211264

/-- `∑[A057554(A000005(n+1)²)]` -/
def P382808016455342013.Spec : Prop :=
  ∀ n, P382808016455342013.a n = A211264 (n + 1)

end A211264

/-! ## A211264.P991248903067405997

`∑[A337101(A000005(n+1)²)]`
-/

namespace A211264.P991248903067405997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A000005 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211264.P991248903067405997

namespace A211264

/-- `∑[A337101(A000005(n+1)²)]` -/
def P991248903067405997.Spec : Prop :=
  ∀ n, P991248903067405997.a n = A211264 (n + 1)

end A211264

/-! ## A211264.P4822128266740018204

`∑[A140106(Δ[A006218(n)]+2)]`
-/

namespace A211264.P4822128266740018204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211264.P4822128266740018204

namespace A211264

/-- `∑[A140106(Δ[A006218(n)]+2)]` -/
def P4822128266740018204.Spec : Prop :=
  ∀ n, P4822128266740018204.a n = A211264 (n + 1)

end A211264

/-! ## A211264.P7186153699962603455

`∑[A140106(Δ[A054519(n)]+2)]`
-/

namespace A211264.P7186153699962603455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211264.P7186153699962603455

namespace A211264

/-- `∑[A140106(Δ[A054519(n)]+2)]` -/
def P7186153699962603455.Spec : Prop :=
  ∀ n, P7186153699962603455.a n = A211264 (n + 1)

end A211264

/-! ## A211264.P3078853848185720412

`∑[A110654(A000005(n+1)-1)]`
-/

namespace A211264.P3078853848185720412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000005 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211264.P3078853848185720412

namespace A211264

/-- `∑[A110654(A000005(n+1)-1)]` -/
def P3078853848185720412.Spec : Prop :=
  ∀ n, P3078853848185720412.a n = A211264 (n + 1)

end A211264

/-!
# A211265: Number of integer pairs (x,y) such that 0

The programs for A211265, the canonical program `A211265.P3770983483908970250` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211265 has offset 1).

The definition of A211265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211265.P3770983483908970250

`∑[A211159(n+1)]+n`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A211265

/-- `∑[A211159(n+1)]+n` -/
def P3770983483908970250.Spec : Prop :=
  ∀ n, P3770983483908970250.a n = A211265 (n + 1)

theorem P3770983483908970250.correct : P3770983483908970250.Spec := by
  intro n
  simp only [A211265, Nat.add_sub_cancel]

end A211265

/-! ## A211265.P10159074659127787377

`∑[floor(A000005(n+2)/2)]-1`
-/

namespace A211265.P10159074659127787377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (n + 2) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A211265.P10159074659127787377

namespace A211265

/-- `∑[floor(A000005(n+2)/2)]-1` -/
def P10159074659127787377.Spec : Prop :=
  ∀ n, P10159074659127787377.a n = A211265 (n + 1)

end A211265

/-! ## A211265.P7329506349623991980

`∑[floor(Δ[A006218(n+1)]/2)]-1`
-/

namespace A211265.P7329506349623991980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (n + 1) - f2 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A211265.P7329506349623991980

namespace A211265

/-- `∑[floor(Δ[A006218(n+1)]/2)]-1` -/
def P7329506349623991980.Spec : Prop :=
  ∀ n, P7329506349623991980.a n = A211265 (n + 1)

end A211265

/-! ## A211265.P6263723382291156265

`∑[A004526(A000005(n+2))]-1`
-/

namespace A211265.P6263723382291156265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A211265.P6263723382291156265

namespace A211265

/-- `∑[A004526(A000005(n+2))]-1` -/
def P6263723382291156265.Spec : Prop :=
  ∀ n, P6263723382291156265.a n = A211265 (n + 1)

end A211265

/-! ## A211265.P4661261725939220567

`A211264(n+1)+A211159(n+1)`
-/

namespace A211265.P4661261725939220567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211264 (n + 1) + A211159 (n + 1)

end

end A211265.P4661261725939220567

namespace A211265

/-- `A211264(n+1)+A211159(n+1)` -/
def P4661261725939220567.Spec : Prop :=
  ∀ n, P4661261725939220567.a n = A211265 (n + 1)

end A211265

/-! ## A211265.P5944371109883350477

`∑[A004526(Δ[A006218(n+1)])]-1`
-/

namespace A211265.P5944371109883350477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A211265.P5944371109883350477

namespace A211265

/-- `∑[A004526(Δ[A006218(n+1)])]-1` -/
def P5944371109883350477.Spec : Prop :=
  ∀ n, P5944371109883350477.a n = A211265 (n + 1)

end A211265

/-! ## A211265.P1047498500004211750

`∑[A008615(3*A000005(n+2))]-1`
-/

namespace A211265.P1047498500004211750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A000005 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A211265.P1047498500004211750

namespace A211265

/-- `∑[A008615(3*A000005(n+2))]-1` -/
def P1047498500004211750.Spec : Prop :=
  ∀ n, P1047498500004211750.a n = A211265 (n + 1)

end A211265

/-! ## A211265.P15092441140843288456

`A211264(n+2)-1`
-/

namespace A211265.P15092441140843288456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211264 (n + 2) - 1

end

end A211265.P15092441140843288456

namespace A211265

/-- `A211264(n+2)-1` -/
def P15092441140843288456.Spec : Prop :=
  ∀ n, P15092441140843288456.a n = A211265 (n + 1)

end A211265

/-! ## A211265.P9719348510088636870

`∑[A056924(n+2)]-1`
-/

namespace A211265.P9719348510088636870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A211265.P9719348510088636870

namespace A211265

/-- `∑[A056924(n+2)]-1` -/
def P9719348510088636870.Spec : Prop :=
  ∀ n, P9719348510088636870.a n = A211265 (n + 1)

end A211265

/-! ## A211265.P8793653611581368720

`record[A091627(n)-A000196(n)]`
-/

namespace A211265.P8793653611581368720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091627 n - A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211265.P8793653611581368720

namespace A211265

/-- `record[A091627(n)-A000196(n)]` -/
def P8793653611581368720.Spec : Prop :=
  ∀ n, P8793653611581368720.a n = A211265 (n + 1)

end A211265

/-! ## A211265.P12208073096007346409

`∑[A002265(A062011(n+2))]-1`
-/

namespace A211265.P12208073096007346409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A062011 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A211265.P12208073096007346409

namespace A211265

/-- `∑[A002265(A062011(n+2))]-1` -/
def P12208073096007346409.Spec : Prop :=
  ∀ n, P12208073096007346409.a n = A211265 (n + 1)

end A211265

/-! ## A211265.P3400951246169993596

`A091627(n+2)-A000196(n+2)`
-/

namespace A211265.P3400951246169993596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091627 (n + 2) - A000196 (n + 2)

end

end A211265.P3400951246169993596

namespace A211265

/-- `A091627(n+2)-A000196(n+2)` -/
def P3400951246169993596.Spec : Prop :=
  ∀ n, P3400951246169993596.a n = A211265 (n + 1)

end A211265

/-! ## A211265.P5111163094329129191

`∑[A056924(n+2)%A000203(n+1)]`
-/

namespace A211265.P5111163094329129191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056924 (n + 2)) (A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211265.P5111163094329129191

namespace A211265

/-- `∑[A056924(n+2)%A000203(n+1)]` -/
def P5111163094329129191.Spec : Prop :=
  ∀ n, P5111163094329129191.a n = A211265 (n + 1)

end A211265

/-! ## A211265.P15063612595399929672

`A002541(n+2)-(A183003(n+2)+1)`
-/

namespace A211265.P15063612595399929672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (n + 2) - (A183003 (n + 2) + 1)

end

end A211265.P15063612595399929672

namespace A211265

/-- `A002541(n+2)-(A183003(n+2)+1)` -/
def P15063612595399929672.Spec : Prop :=
  ∀ n, P15063612595399929672.a n = A211265 (n + 1)

end A211265

/-! ## A211265.P5846607160934335413

`A023443(n+1)+∑[A023443(A056924(n+2))]`
-/

namespace A211265.P5846607160934335413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A056924 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211265.P5846607160934335413

namespace A211265

/-- `A023443(n+1)+∑[A023443(A056924(n+2))]` -/
def P5846607160934335413.Spec : Prop :=
  ∀ n, P5846607160934335413.a n = A211265 (n + 1)

end A211265

/-! ## A211265.P4714991677823645285

`a(n-1)+val(∏{d}[n+2, #], n+2)` with `a(0)=0`
-/

namespace A211265.P4714991677823645285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation (∏ d ∈ Nat.divisors (f1 n), d) (n + 2)

end

end A211265.P4714991677823645285

namespace A211265

/-- `a(n-1)+val(∏{d}[n+2, #], n+2)` -/
def P4714991677823645285.Spec : Prop :=
  ∀ n, (P4714991677823645285.a n : ℤ) = A211265 (n + 1)

end A211265

/-! ## A211265.P2984823419311068464

`A211159(n+1)+A181972(2*(n+1))`
-/

namespace A211265.P2984823419311068464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211159 (n + 1) + A181972 (2 * (n + 1))

end

end A211265.P2984823419311068464

namespace A211265

/-- `A211159(n+1)+A181972(2*(n+1))` -/
def P2984823419311068464.Spec : Prop :=
  ∀ n, P2984823419311068464.a n = A211265 (n + 1)

end A211265

/-! ## A211265.P17980615643656883085

`A181972(2*(n+2))-1`
-/

namespace A211265.P17980615643656883085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181972 (2 * (n + 2)) - 1

end

end A211265.P17980615643656883085

namespace A211265

/-- `A181972(2*(n+2))-1` -/
def P17980615643656883085.Spec : Prop :=
  ∀ n, P17980615643656883085.a n = A211265 (n + 1)

end A211265

/-! ## A211265.P10428988885557014410

`A333535(A063539(∑[A056924(n+2)]))`
-/

namespace A211265.P10428988885557014410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333535 (A063539 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A211265.P10428988885557014410

namespace A211265

/-- `A333535(A063539(∑[A056924(n+2)]))` -/
def P10428988885557014410.Spec : Prop :=
  ∀ n, P10428988885557014410.a n = A211265 (n + 1)

end A211265

/-! ## A211265.P7319926045955871202

`lt[0, Δ[A061408(n)]]`
-/

namespace A211265.P7319926045955871202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A211265.P7319926045955871202

namespace A211265

/-- `lt[0, Δ[A061408(n)]]` -/
def P7319926045955871202.Spec : Prop :=
  ∀ n, (P7319926045955871202.a n : ℤ) = A211265 (n + 1)

end A211265

/-!
# A211266: Number of integer pairs (x,y) such that 0

The programs for A211266, the canonical program `A211266.P4070917168156634709` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211266 has offset 1).

The definition of A211266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211266.P5765585516071239042

`∑[A140106(Δ[A062550(n)])]`
-/

namespace A211266.P5765585516071239042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062550 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211266.P5765585516071239042

namespace A211266

/-- `∑[A140106(Δ[A062550(n)])]` -/
def P5765585516071239042.Spec : Prop :=
  ∀ n, P5765585516071239042.a n = A211266 (n + 1)

end A211266

/-! ## A211266.P8289880294018091974

`∑[A140106(Δ[A006218(2*n)])]`
-/

namespace A211266.P8289880294018091974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211266.P8289880294018091974

namespace A211266

/-- `∑[A140106(Δ[A006218(2*n)])]` -/
def P8289880294018091974.Spec : Prop :=
  ∀ n, P8289880294018091974.a n = A211266 (n + 1)

end A211266

/-! ## A211266.P4070917168156634709

`∑[A140106(A092405(2*n+1))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A211266

/-- `∑[A140106(A092405(2*n+1))]` -/
def P4070917168156634709.Spec : Prop :=
  ∀ n, P4070917168156634709.a n = A211266 (n + 1)

theorem P4070917168156634709.correct : P4070917168156634709.Spec := by
  intro n
  simp only [A211266, Nat.add_sub_cancel]

end A211266

/-! ## A211266.P2788961510279357391

`A211265(Δ[n²])-n`
-/

namespace A211266.P2788961510279357391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211265 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A211266.P2788961510279357391

namespace A211266

/-- `A211265(Δ[n²])-n` -/
def P2788961510279357391.Spec : Prop :=
  ∀ n, P2788961510279357391.a n = A211266 (n + 1)

end A211266

/-! ## A211266.P2592451533638089512

`A211264(2*(n+1))-(n+1)`
-/

namespace A211266.P2592451533638089512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211264 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A211266.P2592451533638089512

namespace A211266

/-- `A211264(2*(n+1))-(n+1)` -/
def P2592451533638089512.Spec : Prop :=
  ∀ n, P2592451533638089512.a n = A211266 (n + 1)

end A211266

/-! ## A211266.P8871508854472874319

`∑[A140106(Δ[A054519(2*n)])]`
-/

namespace A211266.P8871508854472874319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211266.P8871508854472874319

namespace A211266

/-- `∑[A140106(Δ[A054519(2*n)])]` -/
def P8871508854472874319.Spec : Prop :=
  ∀ n, P8871508854472874319.a n = A211266 (n + 1)

end A211266

/-! ## A211266.P8512475558293193220

`∑[A211261(n+1)+A056924(2*n+1)]`
-/

namespace A211266.P8512475558293193220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211261 (n + 1) + A056924 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211266.P8512475558293193220

namespace A211266

/-- `∑[A211261(n+1)+A056924(2*n+1)]` -/
def P8512475558293193220.Spec : Prop :=
  ∀ n, P8512475558293193220.a n = A211266 (n + 1)

end A211266

/-! ## A211266.P16914416721990985962

`∑[A004526(A274010(A103517(n)))]`
-/

namespace A211266.P16914416721990985962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A274010 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211266.P16914416721990985962

namespace A211266

/-- `∑[A004526(A274010(A103517(n)))]` -/
def P16914416721990985962.Spec : Prop :=
  ∀ n, P16914416721990985962.a n = A211266 (n + 1)

end A211266

/-! ## A211266.P6639548778415939670

`∑[A023443(A056924(2*n+1)+A056924(2*(n+1)))]`
-/

namespace A211266.P6639548778415939670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A056924 (2 * n + 1) + A056924 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211266.P6639548778415939670

namespace A211266

/-- `∑[A023443(A056924(2*n+1)+A056924(2*(n+1)))]` -/
def P6639548778415939670.Spec : Prop :=
  ∀ n, P6639548778415939670.a n = A211266 (n + 1)

end A211266

/-! ## A211266.P854965500611829411

`A023443(A211264(2*(n+1))-n)`
-/

namespace A211266.P854965500611829411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A211264 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A211266.P854965500611829411

namespace A211266

/-- `A023443(A211264(2*(n+1))-n)` -/
def P854965500611829411.Spec : Prop :=
  ∀ n, P854965500611829411.a n = A211266 (n + 1)

end A211266

/-!
# A211267: Number of integer pairs (x,y) such that 0

The programs for A211267, there is no canonical definition to state claims against.
-/

/-! ## A211267.P9161293032960285464

`A056556(A257971(n)+A211921(n))`
-/

namespace A211267.P9161293032960285464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A257971 n + A211921 n).toNat

end

end A211267.P9161293032960285464

/-! ## A211267.P4598932693636240971

`A056556(or(A079524(n), A211921(n)))`
-/

namespace A211267.P4598932693636240971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (Int.lor (A079524 n) (A211921 n)).toNat

end

end A211267.P4598932693636240971

/-! ## A211267.P4159268634025190367

`A130248(n+1)-A341027(A000045(n))`
-/

namespace A211267.P4159268634025190367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130248 (n + 1) - A341027 ((A000045 n).toNat + 220)

end

end A211267.P4159268634025190367

/-! ## A211267.P10670684406921683169

`ceil(log(A108305(2*n)))`
-/

namespace A211267.P10670684406921683169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A108305 (2 * n) : ℝ)⌉

end

end A211267.P10670684406921683169

/-! ## A211267.P18061449569541332177

`A130243(n+1)-A143477(A000383(n))`
-/

namespace A211267.P18061449569541332177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130243 (n + 1) - A143477 (A000383 n).toNat

end

end A211267.P18061449569541332177

/-!
# A211270: Number of integer pairs (x,y) such that 0 < x <= y <= n and x*y = 2n.

The programs for A211270, the canonical program `A211270.P5835320324361181167` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211270 has offset 1).

The definition of A211270 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A211270.P5835320324361181167

`floor((A000005(2*(n+1))-1)/2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A211270

/-- `floor((A000005(2*(n+1))-1)/2)` -/
def P5835320324361181167.Spec : Prop :=
  ∀ n, P5835320324361181167.a n = A211270 (n + 1)

theorem P5835320324361181167.correct : P5835320324361181167.Spec := by
  intro n
  simp only [A211270, Nat.add_sub_cancel]

end A211270

/-! ## A211270.P6587730718144839583

`ceil(A069930(n+1)/2)`
-/

namespace A211270.P6587730718144839583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A069930 (n + 1) : ℚ) / 2⌉

end

end A211270.P6587730718144839583

namespace A211270

/-- `ceil(A069930(n+1)/2)` -/
def P6587730718144839583.Spec : Prop :=
  ∀ n, P6587730718144839583.a n = A211270 (n + 1)

end A211270

/-! ## A211270.P17655537780034322209

`floor(sinh(log(A000005(2*(n+1)))))`
-/

namespace A211270.P17655537780034322209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A000005 (2 * (n + 1)) : ℝ))⌋

end

end A211270.P17655537780034322209

namespace A211270

/-- `floor(sinh(log(A000005(2*(n+1)))))` -/
def P17655537780034322209.Spec : Prop :=
  ∀ n, P17655537780034322209.a n = A211270 (n + 1)

end A211270

/-! ## A211270.P8864133086116564258

`round(A000005(2*n+2)/2)-1`
-/

namespace A211270.P8864133086116564258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000005 (2 * n + 2) : ℚ) / 2) - 1

end

end A211270.P8864133086116564258

namespace A211270

/-- `round(A000005(2*n+2)/2)-1` -/
def P8864133086116564258.Spec : Prop :=
  ∀ n, P8864133086116564258.a n = A211270 (n + 1)

end A211270

/-! ## A211270.P14041825647480070849

`ceil((A000005(Δ[n²]+1)-2)/2)`
-/

namespace A211270.P14041825647480070849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat - 2 : ℚ) / 2⌉

end

end A211270.P14041825647480070849

namespace A211270

/-- `ceil((A000005(Δ[n²]+1)-2)/2)` -/
def P14041825647480070849.Spec : Prop :=
  ∀ n, P14041825647480070849.a n = A211270 (n + 1)

end A211270

/-! ## A211270.P5580047253945827817

`floor(n*A000005(n+2+n)/(2*n+1))`
-/

namespace A211270.P5580047253945827817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((A000005 (n + 2 + n) : ℚ) / (2 * n + 1 : ℚ))⌋

end

end A211270.P5580047253945827817

namespace A211270

/-- `floor(n*A000005(n+2+n)/(2*n+1))` -/
def P5580047253945827817.Spec : Prop :=
  ∀ n, P5580047253945827817.a n = A211270 (n + 1)

end A211270

/-! ## A211270.P14243561606939089614

`A004526(A066660(n+1))`
-/

namespace A211270.P14243561606939089614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A066660 (n + 1)).toNat

end

end A211270.P14243561606939089614

namespace A211270

/-- `A004526(A066660(n+1))` -/
def P14243561606939089614.Spec : Prop :=
  ∀ n, P14243561606939089614.a n = A211270 (n + 1)

end A211270

/-! ## A211270.P10428390599043175251

`A002265(A111150(n+1))`
-/

namespace A211270.P10428390599043175251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A111150 (n + 1)).toNat

end

end A211270.P10428390599043175251

namespace A211270

/-- `A002265(A111150(n+1))` -/
def P10428390599043175251.Spec : Prop :=
  ∀ n, P10428390599043175251.a n = A211270 (n + 1)

end A211270

/-! ## A211270.P18431835636411272182

`A004526(A069930(n+1)+1)`
-/

namespace A211270.P18431835636411272182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A069930 (n + 1) + 1).toNat

end

end A211270.P18431835636411272182

namespace A211270

/-- `A004526(A069930(n+1)+1)` -/
def P18431835636411272182.Spec : Prop :=
  ∀ n, P18431835636411272182.a n = A211270 (n + 1)

end A211270

/-! ## A211270.P2191208708402548253

`A059169(A111150(n+1)-1)`
-/

namespace A211270.P2191208708402548253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A111150 (n + 1) - 1).toNat

end

end A211270.P2191208708402548253

namespace A211270

/-- `A059169(A111150(n+1)-1)` -/
def P2191208708402548253.Spec : Prop :=
  ∀ n, P2191208708402548253.a n = A211270 (n + 1)

end A211270

/-! ## A211270.P13213914032038514530

`A140106(A000005(2*(n+1))+1)`
-/

namespace A211270.P13213914032038514530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A000005 (2 * (n + 1)) + 1).toNat

end

end A211270.P13213914032038514530

namespace A211270

/-- `A140106(A000005(2*(n+1))+1)` -/
def P13213914032038514530.Spec : Prop :=
  ∀ n, P13213914032038514530.a n = A211270 (n + 1)

end A211270

/-! ## A211270.P11800080135213493054

`A004526(A000005(2*(n+1))-1)`
-/

namespace A211270.P11800080135213493054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (2 * (n + 1)) - 1).toNat

end

end A211270.P11800080135213493054

namespace A211270

/-- `A004526(A000005(2*(n+1))-1)` -/
def P11800080135213493054.Spec : Prop :=
  ∀ n, P11800080135213493054.a n = A211270 (n + 1)

end A211270

/-! ## A211270.P12283833777161329692

`A123108(A000005(2*(n+1))-1)`
-/

namespace A211270.P12283833777161329692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A000005 (2 * (n + 1)) - 1).toNat

end

end A211270.P12283833777161329692

namespace A211270

/-- `A123108(A000005(2*(n+1))-1)` -/
def P12283833777161329692.Spec : Prop :=
  ∀ n, P12283833777161329692.a n = A211270 (n + 1)

end A211270

/-! ## A211270.P8834054820504365370

`A110654(A000005(2*(n+1))-2)`
-/

namespace A211270.P8834054820504365370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000005 (2 * (n + 1)) - 2).toNat

end

end A211270.P8834054820504365370

namespace A211270

/-- `A110654(A000005(2*(n+1))-2)` -/
def P8834054820504365370.Spec : Prop :=
  ∀ n, P8834054820504365370.a n = A211270 (n + 1)

end A211270

/-! ## A211270.P18101734953596752657

`A059169(2*A000005(2*(n+1)))`
-/

namespace A211270.P18101734953596752657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (2 * A000005 (2 * (n + 1))).toNat

end

end A211270.P18101734953596752657

namespace A211270

/-- `A059169(2*A000005(2*(n+1)))` -/
def P18101734953596752657.Spec : Prop :=
  ∀ n, P18101734953596752657.a n = A211270 (n + 1)

end A211270

/-! ## A211270.P12604433338184316249

`A069930(n+1)-A211261(n+1)`
-/

namespace A211270.P12604433338184316249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069930 (n + 1) - A211261 (n + 1)

end

end A211270.P12604433338184316249

namespace A211270

/-- `A069930(n+1)-A211261(n+1)` -/
def P12604433338184316249.Spec : Prop :=
  ∀ n, P12604433338184316249.a n = A211270 (n + 1)

end A211270

/-! ## A211270.P17520292334691551058

`abs(A001057(A000005(2*(n+1))-2))`
-/

namespace A211270.P17520292334691551058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A000005 (2 * (n + 1)) - 2).toNat|

end

end A211270.P17520292334691551058

namespace A211270

/-- `abs(A001057(A000005(2*(n+1))-2))` -/
def P17520292334691551058.Spec : Prop :=
  ∀ n, P17520292334691551058.a n = A211270 (n + 1)

end A211270

/-! ## A211270.P3824500890566370485

`A057554((1-A000005(2*(n+1)))²)`
-/

namespace A211270.P3824500890566370485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 ((1 - A000005 (2 * (n + 1))) ^ 2).toNat

end

end A211270.P3824500890566370485

namespace A211270

/-- `A057554((1-A000005(2*(n+1)))²)` -/
def P3824500890566370485.Spec : Prop :=
  ∀ n, P3824500890566370485.a n = A211270 (n + 1)

end A211270

/-! ## A211270.P17082710946288999182

`A064727((1-A000005(2*(n+1)))²)`
-/

namespace A211270.P17082710946288999182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 ((1 - A000005 (2 * (n + 1))) ^ 2).toNat

end

end A211270.P17082710946288999182

namespace A211270

/-- `A064727((1-A000005(2*(n+1)))²)` -/
def P17082710946288999182.Spec : Prop :=
  ∀ n, P17082710946288999182.a n = A211270 (n + 1)

end A211270

/-! ## A211270.P16587818091184845527

`A319571((1-A000005(2*(n+1)))²)`
-/

namespace A211270.P16587818091184845527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 ((1 - A000005 (2 * (n + 1))) ^ 2).toNat

end

end A211270.P16587818091184845527

namespace A211270

/-- `A319571((1-A000005(2*(n+1)))²)` -/
def P16587818091184845527.Spec : Prop :=
  ∀ n, P16587818091184845527.a n = A211270 (n + 1)

end A211270

/-!
# A211271: Number of integer pairs (x,y) such that 0

The programs for A211271, the canonical program `A211271.P4906391338954789075` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211271 has offset 1).

The definition of A211271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211271.P6915975957292712491

`A072670(3*n+2)-char[Δ[n²]]`
-/

namespace A211271.P6915975957292712491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (3 * n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A211271.P6915975957292712491

namespace A211271

/-- `A072670(3*n+2)-char[Δ[n²]]` -/
def P6915975957292712491.Spec : Prop :=
  ∀ n, P6915975957292712491.a n = A211271 (n + 1)

end A211271

/-! ## A211271.P4906391338954789075

`A038548(3*(n+1))-gcd(2, n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A211271

/-- `A038548(3*(n+1))-gcd(2, n+1)` -/
def P4906391338954789075.Spec : Prop :=
  ∀ n, P4906391338954789075.a n = A211271 (n + 1)

theorem P4906391338954789075.correct : P4906391338954789075.Spec := by
  intro n
  simp only [A211271, Nat.add_sub_cancel]

end A211271

/-! ## A211271.P5091460284820685315

`A038548(3*(n+1))-Δ[A001651(n+1)]`
-/

namespace A211271.P5091460284820685315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (3 * (n + 1)) - (f1 (n + 1) - f1 n)

end

end A211271.P5091460284820685315

namespace A211271

/-- `A038548(3*(n+1))-Δ[A001651(n+1)]` -/
def P5091460284820685315.Spec : Prop :=
  ∀ n, P5091460284820685315.a n = A211271 (n + 1)

end A211271

/-! ## A211271.P16914905199846797890

`A038548(3*n+3)-A020639(A006519(n+1))`
-/

namespace A211271.P16914905199846797890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (3 * n + 3) - A020639 (A006519 (n + 1)).toNat

end

end A211271.P16914905199846797890

namespace A211271

/-- `A038548(3*n+3)-A020639(A006519(n+1))` -/
def P16914905199846797890.Spec : Prop :=
  ∀ n, P16914905199846797890.a n = A211271 (n + 1)

end A211271

/-! ## A211271.P17295753727827863038

`A255361(3*n+2)`
-/

namespace A211271.P17295753727827863038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255361 (3 * n + 2)

end

end A211271.P17295753727827863038

namespace A211271

/-- `A255361(3*n+2)` -/
def P17295753727827863038.Spec : Prop :=
  ∀ n, P17295753727827863038.a n = A211271 (n + 1)

end A211271

/-! ## A211271.P2088049932356730810

`A038548(3*(n+1))-A006519(n²+1)`
-/

namespace A211271.P2088049932356730810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (3 * (n + 1)) - A006519 (n ^ 2 + 1)

end

end A211271.P2088049932356730810

namespace A211271

/-- `A038548(3*(n+1))-A006519(n²+1)` -/
def P2088049932356730810.Spec : Prop :=
  ∀ n, P2088049932356730810.a n = A211271 (n + 1)

end A211271

/-!
# A211272: Number of integer pairs (x,y) such that 0

The programs for A211272, the canonical program `A211272.P4633808634347613999` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211272 has offset 1).

The definition of A211272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5555 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211272.P2617869678084153193

`∑{d}[A001057(n), 1-A066829(#)]`
-/

namespace A211272.P2617869678084153193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (1 - A066829 d)

end

end A211272.P2617869678084153193

namespace A211272

/-- `∑{d}[A001057(n), 1-A066829(#)]` -/
def P2617869678084153193.Spec : Prop :=
  ∀ n, P2617869678084153193.a n = A211272 (n + 1)

end A211272

/-! ## A211272.P16505565597827321454

`∑{d}[A001057(n), A066829(2*#)]`
-/

namespace A211272.P16505565597827321454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066829 (2 * d)

end

end A211272.P16505565597827321454

namespace A211272

/-- `∑{d}[A001057(n), A066829(2*#)]` -/
def P16505565597827321454.Spec : Prop :=
  ∀ n, P16505565597827321454.a n = A211272 (n + 1)

end A211272

/-! ## A211272.P9968147892124992400

`A038548(A065033(n))*A057427(n)`
-/

namespace A211272.P9968147892124992400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A065033 n).toNat * A057427 n

end

end A211272.P9968147892124992400

namespace A211272

/-- `A038548(A065033(n))*A057427(n)` -/
def P9968147892124992400.Spec : Prop :=
  ∀ n, P9968147892124992400.a n = A211272 (n + 1)

end A211272

/-! ## A211272.P18255488129994237367

`A038548(A065033(n))%A054519(n)`
-/

namespace A211272.P18255488129994237367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038548 (A065033 n).toNat) (A054519 n)

end

end A211272.P18255488129994237367

namespace A211272

/-- `A038548(A065033(n))%A054519(n)` -/
def P18255488129994237367.Spec : Prop :=
  ∀ n, P18255488129994237367.a n = A211272 (n + 1)

end A211272

/-! ## A211272.P4633808634347613999

`abs(Δ[A220400(2*n)])`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A211272

/-- `abs(Δ[A220400(2*n)])` -/
def P4633808634347613999.Spec : Prop :=
  ∀ n, P4633808634347613999.a n = A211272 (n + 1)

theorem P4633808634347613999.correct : P4633808634347613999.Spec := by
  intro n
  simp only [A211272, Nat.add_sub_cancel]

end A211272

/-! ## A211272.P12806673873370244137

`A220400(2*(n%2+n))`
-/

namespace A211272.P12806673873370244137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (2 * (n % 2 + n))

end

end A211272.P12806673873370244137

namespace A211272

/-- `A220400(2*(n%2+n))` -/
def P12806673873370244137.Spec : Prop :=
  ∀ n, P12806673873370244137.a n = A211272 (n + 1)

end A211272

/-! ## A211272.P3639561926903897903

`A220400(∑[val(n²+3, 2)²])`
-/

namespace A211272.P3639561926903897903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n ^ 2 + 3) 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211272.P3639561926903897903

namespace A211272

/-- `A220400(∑[val(n²+3, 2)²])` -/
def P3639561926903897903.Spec : Prop :=
  ∀ n, P3639561926903897903.a n = A211272 (n + 1)

end A211272

/-! ## A211272.P5197934876340644454

`A220400(A168273(n+1))`
-/

namespace A211272.P5197934876340644454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (A168273 (n + 1)).toNat

end

end A211272.P5197934876340644454

namespace A211272

/-- `A220400(A168273(n+1))` -/
def P5197934876340644454.Spec : Prop :=
  ∀ n, P5197934876340644454.a n = A211272 (n + 1)

end A211272

/-! ## A211272.P439940132630659681

`A220400(2*(n+1))+A220400(2*n)`
-/

namespace A211272.P439940132630659681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (2 * (n + 1)) + A220400 (2 * n)

end

end A211272.P439940132630659681

namespace A211272

/-- `A220400(2*(n+1))+A220400(2*n)` -/
def P439940132630659681.Spec : Prop :=
  ∀ n, P439940132630659681.a n = A211272 (n + 1)

end A211272

/-! ## A211272.P621796716341519466

`A034178(2*(A135528(n+1)+n))`
-/

namespace A211272.P621796716341519466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (2 * (A135528 (n + 1) + (n : ℤ))).toNat

end

end A211272.P621796716341519466

namespace A211272

/-- `A034178(2*(A135528(n+1)+n))` -/
def P621796716341519466.Spec : Prop :=
  ∀ n, P621796716341519466.a n = A211272 (n + 1)

end A211272

/-! ## A211272.P2650359626905369090

`A034178(A233583(2*n+1))+A034178(2*(n+1))`
-/

namespace A211272.P2650359626905369090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A233583 (2 * n + 1)).toNat + A034178 (2 * (n + 1))

end

end A211272.P2650359626905369090

namespace A211272

/-- `A034178(A233583(2*n+1))+A034178(2*(n+1))` -/
def P2650359626905369090.Spec : Prop :=
  ∀ n, P2650359626905369090.a n = A211272 (n + 1)

end A211272

/-!
# A211273: Number of integer pairs (x,y) such that 0

The programs for A211273, the canonical program `A211273.P13713686683909964253` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211273 has offset 1).

The definition of A211273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211273.P9944538862681397600

`∑[A065423(Δ[A132106(2*n)])]`
-/

namespace A211273.P9944538862681397600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132106 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211273.P9944538862681397600

namespace A211273

/-- `∑[A065423(Δ[A132106(2*n)])]` -/
def P9944538862681397600.Spec : Prop :=
  ∀ n, P9944538862681397600.a n = A211273 (n + 1)

end A211273

/-! ## A211273.P13713686683909964253

`A091627(2*(n+1))-n`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A211273

/-- `A091627(2*(n+1))-n` -/
def P13713686683909964253.Spec : Prop :=
  ∀ n, P13713686683909964253.a n = A211273 (n + 1)

theorem P13713686683909964253.correct : P13713686683909964253.Spec := by
  intro n
  simp only [A211273, Nat.add_sub_cancel]

end A211273

/-! ## A211273.P2143870299786401753

`A183003(2*(n+1))+n+1`
-/

namespace A211273.P2143870299786401753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183003 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A211273.P2143870299786401753

namespace A211273

/-- `A183003(2*(n+1))+n+1` -/
def P2143870299786401753.Spec : Prop :=
  ∀ n, P2143870299786401753.a n = A211273 (n + 1)

end A211273

/-! ## A211273.P17645251220451973079

`A094820(2*(n+1))-(n+1)`
-/

namespace A211273.P17645251220451973079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A211273.P17645251220451973079

namespace A211273

/-- `A094820(2*(n+1))-(n+1)` -/
def P17645251220451973079.Spec : Prop :=
  ∀ n, P17645251220451973079.a n = A211273 (n + 1)

end A211273

/-! ## A211273.P17024035615174057546

`∑[Δ[A183003(A004277(n))]+1]`
-/

namespace A211273.P17024035615174057546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183003 (A004277 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211273.P17024035615174057546

namespace A211273

/-- `∑[Δ[A183003(A004277(n))]+1]` -/
def P17024035615174057546.Spec : Prop :=
  ∀ n, P17024035615174057546.a n = A211273 (n + 1)

end A211273

/-! ## A211273.P7337274173370397707

`A211266(n+1)+A000196(2*(n+1))`
-/

namespace A211273.P7337274173370397707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211266 (n + 1) + A000196 (2 * (n + 1))

end

end A211273.P7337274173370397707

namespace A211273

/-- `A211266(n+1)+A000196(2*(n+1))` -/
def P7337274173370397707.Spec : Prop :=
  ∀ n, P7337274173370397707.a n = A211273 (n + 1)

end A211273

/-!
# A211274: Number of integer pairs (x,y) such that 0 < x <= y <= n and x*y <= 3n.

The programs for A211274, there is no canonical definition to state claims against.
-/

/-! ## A211274.P7087867536189747263

`A130248(n+2)-A185284(3*n+2)`
-/

namespace A211274.P7087867536189747263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130248 (n + 2) - A185284 (3 * n + 2)

end

end A211274.P7087867536189747263

/-! ## A211274.P11200935128475181900

`eq[A025437(A108611(2*n)), A291895(n+2)]`
-/

namespace A211274.P11200935128475181900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (A108611 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291895 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211274.P11200935128475181900

/-! ## A211274.P10402626473088075047

`A080197(3*n+2)-A124765(A095336(n+3))`
-/

namespace A211274.P10402626473088075047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (3 * n + 2) - A124765 (A095336 (n + 3)).toNat

end

end A211274.P10402626473088075047

/-! ## A211274.P11217649191957251325

`A056556(A071270(n+1))`
-/

namespace A211274.P11217649191957251325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A071270 (n + 1)).toNat

end

end A211274.P11217649191957251325

/-! ## A211274.P1154407334670893639

`A056556(A212509(n+1))`
-/

namespace A211274.P1154407334670893639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A212509 (n + 1)).toNat

end

end A211274.P1154407334670893639

/-!
# A211275: Number of integer pairs (x,y) such that 0 < x <= y <= n and x*y <= floor(n/2).

The programs for A211275, the canonical program `A211275.P17918795795607819298` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211275 has offset 1).

The definition of A211275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211275.P13335525902326922837

`∑[ceil(A183063(n+1)/2)]`
-/

namespace A211275.P13335525902326922837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A183063 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211275.P13335525902326922837

namespace A211275

/-- `∑[ceil(A183063(n+1)/2)]` -/
def P13335525902326922837.Spec : Prop :=
  ∀ n, P13335525902326922837.a n = A211275 (n + 1)

end A211275

/-! ## A211275.P10604870548982238620

`floor(A132106(floor((n+1)/2))/2)`
-/

namespace A211275.P10604870548982238620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132106 ⌊(n + 1 : ℚ) / 2⌋.toNat : ℚ) / 2⌋

end

end A211275.P10604870548982238620

namespace A211275

/-- `floor(A132106(floor((n+1)/2))/2)` -/
def P10604870548982238620.Spec : Prop :=
  ∀ n, P10604870548982238620.a n = A211275 (n + 1)

end A211275

/-! ## A211275.P3389391233566579548

`∑[∑{d}[n+1, A001222(#)%gcd(2, #)]]`
-/

namespace A211275.P3389391233566579548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (A001222 d) (Nat.gcd 2 d : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211275.P3389391233566579548

namespace A211275

/-- `∑[∑{d}[n+1, A001222(#)%gcd(2, #)]]` -/
def P3389391233566579548.Spec : Prop :=
  ∀ n, P3389391233566579548.a n = A211275 (n + 1)

end A211275

/-! ## A211275.P13751820722374400442

`∑[A211272(n+1)%((2*n)^(n%2))]`
-/

namespace A211275.P13751820722374400442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211272 (n + 1)) ((2 * n) ^ (n % 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211275.P13751820722374400442

namespace A211275

/-- `∑[A211272(n+1)%((2*n)^(n%2))]` -/
def P13751820722374400442.Spec : Prop :=
  ∀ n, P13751820722374400442.a n = A211275 (n + 1)

end A211275

/-! ## A211275.P14012651855935683873

`∑[A110654(A183063(n+1))]`
-/

namespace A211275.P14012651855935683873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A183063 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211275.P14012651855935683873

namespace A211275

/-- `∑[A110654(A183063(n+1))]` -/
def P14012651855935683873.Spec : Prop :=
  ∀ n, P14012651855935683873.a n = A211275 (n + 1)

end A211275

/-! ## A211275.P11920734894595402746

`(A132106(A110654(n))-1)/2`
-/

namespace A211275.P11920734894595402746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132106 (A110654 n).toNat - 1 : ℚ) / 2

end

end A211275.P11920734894595402746

namespace A211275

/-- `(A132106(A110654(n))-1)/2` -/
def P11920734894595402746.Spec : Prop :=
  ∀ n, P11920734894595402746.a n = (A211275 (n + 1) : ℚ)

end A211275

/-! ## A211275.P7236260195748231364

`∑[A004526(A183063(n+1)+1)]`
-/

namespace A211275.P7236260195748231364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A183063 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211275.P7236260195748231364

namespace A211275

/-- `∑[A004526(A183063(n+1)+1)]` -/
def P7236260195748231364.Spec : Prop :=
  ∀ n, P7236260195748231364.a n = A211275 (n + 1)

end A211275

/-! ## A211275.P17918795795607819298

`A362059(n+1)-A181972(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A211275

/-- `A362059(n+1)-A181972(n+1)` -/
def P17918795795607819298.Spec : Prop :=
  ∀ n, P17918795795607819298.a n = A211275 (n + 1)

theorem P17918795795607819298.correct : P17918795795607819298.Spec := by
  intro n
  simp only [A211275, Nat.add_sub_cancel]

end A211275

/-! ## A211275.P3993667448494293457

`∑[A220400(2*(n+1))]`
-/

namespace A211275.P3993667448494293457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211275.P3993667448494293457

namespace A211275

/-- `∑[A220400(2*(n+1))]` -/
def P3993667448494293457.Spec : Prop :=
  ∀ n, P3993667448494293457.a n = A211275 (n + 1)

end A211275

/-! ## A211275.P8141170143766731311

`∑[A034178(2*(n+1))]`
-/

namespace A211275.P8141170143766731311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211275.P8141170143766731311

namespace A211275

/-- `∑[A034178(2*(n+1))]` -/
def P8141170143766731311.Spec : Prop :=
  ∀ n, P8141170143766731311.a n = A211275 (n + 1)

end A211275

/-! ## A211275.P308875939299130196

`∑[A131728(A094572(2*(n+1)))]`
-/

namespace A211275.P308875939299130196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131728 (A094572 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211275.P308875939299130196

namespace A211275

/-- `∑[A131728(A094572(2*(n+1)))]` -/
def P308875939299130196.Spec : Prop :=
  ∀ n, P308875939299130196.a n = A211275 (n + 1)

end A211275

/-! ## A211275.P5667096616123997891

`∑[A002265(A094572(2*(n+1))+2)]`
-/

namespace A211275.P5667096616123997891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A094572 (2 * (n + 1)) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211275.P5667096616123997891

namespace A211275

/-- `∑[A002265(A094572(2*(n+1))+2)]` -/
def P5667096616123997891.Spec : Prop :=
  ∀ n, P5667096616123997891.a n = A211275 (n + 1)

end A211275

/-! ## A211275.P8714391370621191413

`∑[A038548(2*(n+1))-A001227(n+1)]`
-/

namespace A211275.P8714391370621191413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (2 * (n + 1)) - A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211275.P8714391370621191413

namespace A211275

/-- `∑[A038548(2*(n+1))-A001227(n+1)]` -/
def P8714391370621191413.Spec : Prop :=
  ∀ n, P8714391370621191413.a n = A211275 (n + 1)

end A211275

/-! ## A211275.P17746955740887559888

`∑[A000005(n+1)-A056924(2*(n+1))]`
-/

namespace A211275.P17746955740887559888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A056924 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211275.P17746955740887559888

namespace A211275

/-- `∑[A000005(n+1)-A056924(2*(n+1))]` -/
def P17746955740887559888.Spec : Prop :=
  ∀ n, P17746955740887559888.a n = A211275 (n + 1)

end A211275

/-!
# A211276: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 1] as of [1, 2].

The programs for A211276, there is no canonical definition to state claims against.
-/

/-! ## A211276.P3090150253570958993

`A097882(A134377(n+2))`
-/

namespace A211276.P3090150253570958993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097882 (A134377 (n + 2)).toNat

end

end A211276.P3090150253570958993

/-! ## A211276.P2045578488782309911

`A100196(A150206(n+1))`
-/

namespace A211276.P2045578488782309911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A150206 (n + 1)).toNat

end

end A211276.P2045578488782309911

/-!
# A211277: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 1] as of [2, 2].

The programs for A211277, there is no canonical definition to state claims against.
-/

/-! ## A211277.P13204470515687639521

`floor(A020884(A005169(2*n+3))/3)`
-/

namespace A211277.P13204470515687639521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020884 (A005169 (2 * n + 3)).toNat : ℚ) / 3⌋

end

end A211277.P13204470515687639521

/-! ## A211277.P2154448167448519725

`round(sqrt(A336016(3*n+4)/3))`
-/

namespace A211277.P2154448167448519725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A336016 (3 * n + 4) : ℚ) / 3 : ℝ))

end

end A211277.P2154448167448519725

/-! ## A211277.P5185892712781275426

`A111439(A122558(n))`
-/

namespace A211277.P5185892712781275426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A122558 n).toNat

end

end A211277.P5185892712781275426

/-!
# A211278: a(n) is the number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 1] as of [2, 3].

The programs for A211278, the canonical program `A211278.P4317320324057331909` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211278 has offset 0).

The definition of A211278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211278.P4317320324057331909

`∑[A383527(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211278

/-- `∑[A383527(n)]` -/
def P4317320324057331909.Spec : Prop :=
  ∀ n, P4317320324057331909.a n = A211278 n

theorem P4317320324057331909.correct : P4317320324057331909.Spec := by
  intro n
  simp only [A211278]

end A211278

/-! ## A211278.P4840431708003079063

`∑[∑[A005773(n)]]`
-/

namespace A211278.P4840431708003079063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211278.P4840431708003079063

namespace A211278

/-- `∑[∑[A005773(n)]]` -/
def P4840431708003079063.Spec : Prop :=
  ∀ n, P4840431708003079063.a n = A211278 n

end A211278

/-! ## A211278.P13211634391475772602

`∑[∑[A307789(n+1)]]`
-/

namespace A211278.P13211634391475772602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307789 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211278.P13211634391475772602

namespace A211278

/-- `∑[∑[A307789(n+1)]]` -/
def P13211634391475772602.Spec : Prop :=
  ∀ n, P13211634391475772602.a n = A211278 n

end A211278

/-! ## A211278.P2186743050170368095

`A385641(n)-A247287(n)`
-/

namespace A211278.P2186743050170368095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385641 n - A247287 n

end

end A211278.P2186743050170368095

namespace A211278

/-- `A385641(n)-A247287(n)` -/
def P2186743050170368095.Spec : Prop :=
  ∀ n, P2186743050170368095.a n = A211278 n

end A211278

/-! ## A211278.P8556372196466236611

`∑[∑[(2*n*a(n-1)+3*(n-2)*a(n-2))/n]]` with `a(0)=1, a(1)=1`
-/

namespace A211278.P8556372196466236611
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  (2 * ((n : ℚ) * f2 (n - 1)) + 3 * (((n : ℤ) - 2 : ℚ) * f2 (n - 2))) / (n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211278.P8556372196466236611

namespace A211278

/-- `∑[∑[(2*n*a(n-1)+3*(n-2)*a(n-2))/n]]` -/
def P8556372196466236611.Spec : Prop :=
  ∀ n, P8556372196466236611.a n = (A211278 n : ℚ)

end A211278

/-! ## A211278.P4860269522329082077

`∑[∑[A038622(C(n, 2))]]`
-/

namespace A211278.P4860269522329082077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 (Nat.choose n 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211278.P4860269522329082077

namespace A211278

/-- `∑[∑[A038622(C(n, 2))]]` -/
def P4860269522329082077.Spec : Prop :=
  ∀ n, P4860269522329082077.a n = A211278 n

end A211278

/-!
# A211279: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 2] as of [1, 3].

The programs for A211279, there is no canonical definition to state claims against.
-/

/-! ## A211279.P6135172702849280118

`∑[A304713(a(n-1)+1)+1]` with `a(0)=1, a(1)=2`
-/

namespace A211279.P6135172702849280118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A304713 (f1 (n - 1) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211279.P6135172702849280118

/-! ## A211279.P7005468736520765486

`∑[A078451(A129400(n))]`
-/

namespace A211279.P7005468736520765486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078451 (A129400 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211279.P7005468736520765486

/-! ## A211279.P10201454913623025347

`∑[∑[A000194(A306082(n))]]`
-/

namespace A211279.P10201454913623025347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A306082 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211279.P10201454913623025347

/-!
# A211280: Numerator of prime(n+1) - prime(n)/2.

The programs for A211280, the canonical program `A211280.P11515842632403342583` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211280 has offset 1).

The definition of A211280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211280.P11515842632403342583

`xor(-A210497(n+1), -2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A211280

/-- `xor(-A210497(n+1), -2)` -/
def P11515842632403342583.Spec : Prop :=
  ∀ n, P11515842632403342583.a n = A211280 (n + 1)

theorem P11515842632403342583.correct : P11515842632403342583.Spec := by
  intro n
  simp only [A211280, Nat.add_sub_cancel]

end A211280

/-! ## A211280.P13833619570597948169

`A210497(n%a(n-1)+1)` with `a(0)=2`
-/

namespace A211280.P13833619570597948169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A210497 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A211280.P13833619570597948169

namespace A211280

/-- `A210497(n%a(n-1)+1)` -/
def P13833619570597948169.Spec : Prop :=
  ∀ n, P13833619570597948169.a n = A211280 (n + 1)

end A211280

/-! ## A211280.P11064270822835677800

`A001223(n+1)+and(abs(1-n)-n, p?[2*n+1])`
-/

namespace A211280.P11064270822835677800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + Int.land (|1 - (n : ℤ)| - (n : ℤ)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A211280.P11064270822835677800

namespace A211280

/-- `A001223(n+1)+and(abs(1-n)-n, p?[2*n+1])` -/
def P11064270822835677800.Spec : Prop :=
  ∀ n, P11064270822835677800.a n = A211280 (n + 1)

end A211280

/-! ## A211280.P7714333579210514493

`A210497(n+1)-A000038(n)`
-/

namespace A211280.P7714333579210514493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 1) - A000038 n

end

end A211280.P7714333579210514493

namespace A211280

/-- `A210497(n+1)-A000038(n)` -/
def P7714333579210514493.Spec : Prop :=
  ∀ n, P7714333579210514493.a n = A211280 (n + 1)

end A211280

/-! ## A211280.P12396219630400370557

`A210497(n+1)/A054977(n)`
-/

namespace A211280.P12396219630400370557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210497 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A211280.P12396219630400370557

namespace A211280

/-- `A210497(n+1)/A054977(n)` -/
def P12396219630400370557.Spec : Prop :=
  ∀ n, P12396219630400370557.a n = (A211280 (n + 1) : ℚ)

end A211280

/-! ## A211280.P16672135070567573895

`A140475(n+1)+A001223(n+1)`
-/

namespace A211280.P16672135070567573895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1) + A001223 (n + 1)

end

end A211280.P16672135070567573895

namespace A211280

/-- `A140475(n+1)+A001223(n+1)` -/
def P16672135070567573895.Spec : Prop :=
  ∀ n, P16672135070567573895.a n = A211280 (n + 1)

end A211280

/-! ## A211280.P3602473476475270532

`A100803(n+1)+A055670(n+1)`
-/

namespace A211280.P3602473476475270532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100803 (n + 1) + A055670 (n + 1)

end

end A211280.P3602473476475270532

namespace A211280

/-- `A100803(n+1)+A055670(n+1)` -/
def P3602473476475270532.Spec : Prop :=
  ∀ n, P3602473476475270532.a n = A211280 (n + 1)

end A211280

/-! ## A211280.P5197826988381181896

`A004139(n+1)-A036263(n+1)`
-/

namespace A211280.P5197826988381181896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1) - A036263 (n + 1)

end

end A211280.P5197826988381181896

namespace A211280

/-- `A004139(n+1)-A036263(n+1)` -/
def P5197826988381181896.Spec : Prop :=
  ∀ n, P5197826988381181896.a n = A211280 (n + 1)

end A211280

/-! ## A211280.P5856163752765224241

`2*A045344(n+1)-A000040(n+1)`
-/

namespace A211280.P5856163752765224241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045344 (n + 1) - A000040 (n + 1)

end

end A211280.P5856163752765224241

namespace A211280

/-- `2*A045344(n+1)-A000040(n+1)` -/
def P5856163752765224241.Spec : Prop :=
  ∀ n, P5856163752765224241.a n = A211280 (n + 1)

end A211280

/-! ## A211280.P3975691147160062809

`A210497(n+1)-A109578(n+1)*A109578(n+2)`
-/

namespace A211280.P3975691147160062809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 1) - A109578 (n + 1) * A109578 (n + 2)

end

end A211280.P3975691147160062809

namespace A211280

/-- `A210497(n+1)-A109578(n+1)*A109578(n+2)` -/
def P3975691147160062809.Spec : Prop :=
  ∀ n, P3975691147160062809.a n = A211280 (n + 1)

end A211280

/-! ## A211280.P8551955704007740732

`A176569(n+1)+A176569(n+1)-A082454(n+1)`
-/

namespace A211280.P8551955704007740732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176569 (n + 1) + (A176569 (n + 1) - A082454 (n + 1))

end

end A211280.P8551955704007740732

namespace A211280

/-- `A176569(n+1)+A176569(n+1)-A082454(n+1)` -/
def P8551955704007740732.Spec : Prop :=
  ∀ n, P8551955704007740732.a n = A211280 (n + 1)

end A211280

/-! ## A211280.P10590372560584782533

`A135731(n+1)+A000040(n+2)-A175216(n+1)`
-/

namespace A211280.P10590372560584782533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1) + (A000040 (n + 2) - A175216 (n + 1))

end

end A211280.P10590372560584782533

namespace A211280

/-- `A135731(n+1)+A000040(n+2)-A175216(n+1)` -/
def P10590372560584782533.Spec : Prop :=
  ∀ n, P10590372560584782533.a n = A211280 (n + 1)

end A211280

/-! ## A211280.P13594865912742214019

`A087030(A000040(n+1))/ceil(acot(n))`
-/

namespace A211280.P13594865912742214019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087030 (A000040 (n + 1)).toNat : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A211280.P13594865912742214019

namespace A211280

/-- `A087030(A000040(n+1))/ceil(acot(n))` -/
def P13594865912742214019.Spec : Prop :=
  ∀ n, P13594865912742214019.a n = (A211280 (n + 1) : ℚ)

end A211280

/-! ## A211280.P15054429038025148721

`A026741(A210497(n+1))`
-/

namespace A211280.P15054429038025148721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A210497 (n + 1)).toNat

end

end A211280.P15054429038025148721

namespace A211280

/-- `A026741(A210497(n+1))` -/
def P15054429038025148721.Spec : Prop :=
  ∀ n, P15054429038025148721.a n = A211280 (n + 1)

end A211280

/-! ## A211280.P17095395029077109173

`A361565(A048852(n+1))`
-/

namespace A211280.P17095395029077109173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361565 (A048852 (n + 1)).toNat

end

end A211280.P17095395029077109173

namespace A211280

/-- `A361565(A048852(n+1))` -/
def P17095395029077109173.Spec : Prop :=
  ∀ n, P17095395029077109173.a n = A211280 (n + 1)

end A211280

/-!
# A211281: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 2] as of [2, 3].

The programs for A211281, there is no canonical definition to state claims against.
-/

/-! ## A211281.P13385879724157651652

`A008621(A098182(n+2))-A261336(n+1)`
-/

namespace A211281.P13385879724157651652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A098182 (n + 2)).toNat - A261336 (n + 1)

end

end A211281.P13385879724157651652

/-! ## A211281.P12942994318238805546

`or(1, A001462(A217461(n)))`
-/

namespace A211281.P12942994318238805546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001462 (A217461 n).toNat)

end

end A211281.P12942994318238805546

/-! ## A211281.P3239123656191040534

`∑[A005041(∑[A025756(n)])]`
-/

namespace A211281.P3239123656191040534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025756 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211281.P3239123656191040534

/-!
# A211282: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 1, 1] as of [1, 1, 2].

The programs for A211282, there is no canonical definition to state claims against.
-/

/-! ## A211282.P1417496392979603246

`A245473(A107839(n))`
-/

namespace A211282.P1417496392979603246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245473 (A107839 n).toNat

end

end A211282.P1417496392979603246

/-! ## A211282.P16888054059407949456

`A214701(A211298(n))`
-/

namespace A211282.P16888054059407949456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A211298 n).toNat

end

end A211282.P16888054059407949456

/-! ## A211282.P13912292995580949073

`A268132(A276068(n+2))`
-/

namespace A211282.P13912292995580949073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268132 (A276068 (n + 2)).toNat

end

end A211282.P13912292995580949073

/-!
# A211283: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 1, 1] as of [1, 2, 1].

The programs for A211283, there is no canonical definition to state claims against.
-/

/-! ## A211283.P243793472582278628

`∑[record[A008676(A059502(n))]]`
-/

namespace A211283.P243793472582278628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A059502 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211283.P243793472582278628

/-! ## A211283.P14639686295802240553

`A061017(∑[A005682(n+5)²])`
-/

namespace A211283.P14639686295802240553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005682 (n + 5) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211283.P14639686295802240553

/-!
# A211284: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 1, 1] as of [1, 2, 2].

The programs for A211284, there is no canonical definition to state claims against.
-/

/-! ## A211284.P10353397561851715242

`A032634(A211291(n+1))`
-/

namespace A211284.P10353397561851715242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (A211291 (n + 1)).toNat

end

end A211284.P10353397561851715242

/-! ## A211284.P9785951913674614936

`∑[A100196(∑[A151198(n)])]`
-/

namespace A211284.P9785951913674614936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151198 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211284.P9785951913674614936

/-! ## A211284.P12140738809928052826

`A351358(A000079(n))+A097861(n+2)`
-/

namespace A211284.P12140738809928052826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351358 (A000079 n).toNat + A097861 (n + 2)

end

end A211284.P12140738809928052826

/-!
# A211285: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 1, 1] as of [2, 1, 2].

The programs for A211285, there is no canonical definition to state claims against.
-/

/-! ## A211285.P3186487916261100009

`A339479(n+1)+A004526(A211295(n))`
-/

namespace A211285.P3186487916261100009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339479 (n + 1) + A004526 (A211295 n).toNat

end

end A211285.P3186487916261100009

/-! ## A211285.P11173293577410823375

`A298866(A026299(n))`
-/

namespace A211285.P11173293577410823375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298866 (A026299 n).toNat

end

end A211285.P11173293577410823375

/-! ## A211285.P11491579329708223325

`∑[A194640(A101197(n))]`
-/

namespace A211285.P11491579329708223325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A101197 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211285.P11491579329708223325

/-!
# A211286: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 1, 1] as of [2, 1, 3].

The programs for A211286, there is no canonical definition to state claims against.
-/

/-! ## A211286.P10495326154892573352

`A028310(A026151(n+2)-A026325(n))`
-/

namespace A211286.P10495326154892573352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A026151 (n + 2) - A026325 n).toNat

end

end A211286.P10495326154892573352

/-! ## A211286.P9712956313199932740

`A026151(n+2)-(A002426(n)-A046080(A259793(n)))`
-/

namespace A211286.P9712956313199932740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026151 (n + 2) - (A002426 n - A046080 (A259793 n).toNat)

end

end A211286.P9712956313199932740

/-! ## A211286.P15883115553504464385

`A348616(A006951(n))+A007046(n+3)`
-/

namespace A211286.P15883115553504464385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348616 (A006951 n).toNat + A007046 (n + 3)

end

end A211286.P15883115553504464385

/-!
# A211287: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 1, 1] as of [2, 2, 2].

The programs for A211287, there is no canonical definition to state claims against.
-/

/-! ## A211287.P2898711043610114445

`A101168(n)+A025466(A184953(n))`
-/

namespace A211287.P2898711043610114445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101168 n + A025466 (A184953 n).toNat

end

end A211287.P2898711043610114445

/-! ## A211287.P5002813284828068627

`A038567(A066265(n)-A002275(n))`
-/

namespace A211287.P5002813284828068627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A066265 n - A002275 n).toNat

end

end A211287.P5002813284828068627

/-! ## A211287.P8215020726885894167

`or(A101168(n), A135481(A063443(n)))`
-/

namespace A211287.P8215020726885894167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101168 n) (A135481 (A063443 n).toNat)

end

end A211287.P8215020726885894167

/-!
# A211288: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 1, 2] as of [1, 1, 3].

The programs for A211288, the canonical program `A211288.P15666308228399164925` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211288 has offset 0).

The definition of A211288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211288.P15666308228399164925

`A002426(n)+2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211288

/-- `A002426(n)+2*a(n-1)` -/
def P15666308228399164925.Spec : Prop :=
  ∀ n, P15666308228399164925.a n = A211288 n

theorem P15666308228399164925.correct : P15666308228399164925.Spec := by
  intro n
  simp only [A211288]

end A211288

/-! ## A211288.P9510798393834561930

`A005213(2*n)+2*a(n-1)` with `a(0)=1`
-/

namespace A211288.P9510798393834561930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005213 (2 * n) + 2 * a (n - 1)

end

end A211288.P9510798393834561930

namespace A211288

/-- `A005213(2*n)+2*a(n-1)` -/
def P9510798393834561930.Spec : Prop :=
  ∀ n, P9510798393834561930.a n = A211288 n

end A211288

/-! ## A211288.P3716617118239222860

`2*a(n-1)+2*A097861(n)+1` with `a(0)=1`
-/

namespace A211288.P3716617118239222860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (2 * A097861 n + 1)

end

end A211288.P3716617118239222860

namespace A211288

/-- `2*a(n-1)+2*A097861(n)+1` -/
def P3716617118239222860.Spec : Prop :=
  ∀ n, P3716617118239222860.a n = A211288 n

end A211288

/-! ## A211288.P6835089341361371788

`2*a(n-1)+2*A257520(n)-1` with `a(0)=1`
-/

namespace A211288.P6835089341361371788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (2 * A257520 n - 1)

end

end A211288.P6835089341361371788

namespace A211288

/-- `2*a(n-1)+2*A257520(n)-1` -/
def P6835089341361371788.Spec : Prop :=
  ∀ n, P6835089341361371788.a n = A211288 n

end A211288

/-! ## A211288.P14935642710767093057

`2*a(n-1)-(A000038(n)-A002426(n))` with `a(0)=1`
-/

namespace A211288.P14935642710767093057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (A000038 n - A002426 n)

end

end A211288.P14935642710767093057

namespace A211288

/-- `2*a(n-1)-(A000038(n)-A002426(n))` -/
def P14935642710767093057.Spec : Prop :=
  ∀ n, P14935642710767093057.a n = A211288 n

end A211288

/-! ## A211288.P3999288856873167969

`2*a(n-1)-(A036987(2*n)-A002426(n))` with `a(0)=1`
-/

namespace A211288.P3999288856873167969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (A036987 (2 * n) - A002426 n)

end

end A211288.P3999288856873167969

namespace A211288

/-- `2*a(n-1)-(A036987(2*n)-A002426(n))` -/
def P3999288856873167969.Spec : Prop :=
  ∀ n, P3999288856873167969.a n = A211288 n

end A211288

/-! ## A211288.P13104786787918345141

`A328347(∑[n])+2*a(n-1)` with `a(0)=1`
-/

namespace A211288.P13104786787918345141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A328347 (∑ j ∈ Finset.range (n + 1), f1 j) + 2 * a (n - 1)

end

end A211288.P13104786787918345141

namespace A211288

/-- `A328347(∑[n])+2*a(n-1)` -/
def P13104786787918345141.Spec : Prop :=
  ∀ n, P13104786787918345141.a n = A211288 n

end A211288

/-! ## A211288.P8682272665158310049

`sqrt(A168597(n))+2*a(n-1)` with `a(0)=1`
-/

namespace A211288.P8682272665158310049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.sqrt (A168597 n : ℝ) + 2 * a (n - 1)

end

end A211288.P8682272665158310049

namespace A211288

/-- `sqrt(A168597(n))+2*a(n-1)` -/
def P8682272665158310049.Spec : Prop :=
  ∀ n, P8682272665158310049.a n = (A211288 n : ℝ)

end A211288

/-! ## A211288.P15928681540280603386

`A163771(∑[n])+lcm(2, a(n-1))` with `a(0)=1`
-/

namespace A211288.P15928681540280603386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163771 (∑ j ∈ Finset.range (n + 1), f1 j) + (Int.lcm 2 (a (n - 1)) : ℤ)

end

end A211288.P15928681540280603386

namespace A211288

/-- `A163771(∑[n])+lcm(2, a(n-1))` -/
def P15928681540280603386.Spec : Prop :=
  ∀ n, P15928681540280603386.a n = A211288 n

end A211288

/-!
# A211289: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 1, 2] as of [1, 2, 1].

The programs for A211289, there is no canonical definition to state claims against.
-/

/-! ## A211289.P17471736181138471118

`∑[∑[A243283(A002310(n))]]`
-/

namespace A211289.P17471736181138471118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A002310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211289.P17471736181138471118

/-! ## A211289.P13659639679770000760

`floor((A297161(A223379(∑[n+1]))+3)/6)`
-/

namespace A211289.P13659639679770000760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A297161 (A223379 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 3 : ℚ) / 6⌋

end

end A211289.P13659639679770000760

/-! ## A211289.P9117001915092641091

`record[A280986(n+1)]+∑[A006645(n+1)]`
-/

namespace A211289.P9117001915092641091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A211289.P9117001915092641091

/-!
# A211290: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 1, 2] as of [1, 2, 2].

The programs for A211290, there is no canonical definition to state claims against.
-/

/-! ## A211290.P7052786951516572942

`A004525(A211298(n)+A211294(n))`
-/

namespace A211290.P7052786951516572942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A211298 n + A211294 n).toNat

end

end A211290.P7052786951516572942

/-! ## A211290.P4704180195560671573

`A004526(A211298(n)+A211294(n))`
-/

namespace A211290.P4704180195560671573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A211298 n + A211294 n).toNat

end

end A211290.P4704180195560671573

/-! ## A211290.P177101839963238753

`A026741(A211298(n)+A211294(n))`
-/

namespace A211290.P177101839963238753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A211298 n + A211294 n).toNat

end

end A211290.P177101839963238753

/-! ## A211290.P15428465323490799699

`A032742(A211298(n)+A211294(n))`
-/

namespace A211290.P15428465323490799699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A211298 n + A211294 n).toNat

end

end A211290.P15428465323490799699

/-! ## A211290.P10827677925383466103

`A097140(A211298(n)+A211294(n))`
-/

namespace A211290.P10827677925383466103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A211298 n + A211294 n).toNat

end

end A211290.P10827677925383466103

/-!
# A211291: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 1, 2] as of [1, 3, 1].

The programs for A211291, there is no canonical definition to state claims against.
-/

/-! ## A211291.P17993944623910422014

`A004525(A211300(n)+A211294(n))`
-/

namespace A211291.P17993944623910422014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A211300 n + A211294 n).toNat

end

end A211291.P17993944623910422014

/-! ## A211291.P2092376734926670653

`A004526(A211300(n)+A211294(n))`
-/

namespace A211291.P2092376734926670653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A211300 n + A211294 n).toNat

end

end A211291.P2092376734926670653

/-! ## A211291.P9624414632545461046

`A026741(A211300(n)+A211294(n))`
-/

namespace A211291.P9624414632545461046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A211300 n + A211294 n).toNat

end

end A211291.P9624414632545461046

/-! ## A211291.P11383352641610650524

`A032742(A211300(n)+A211294(n))`
-/

namespace A211291.P11383352641610650524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A211300 n + A211294 n).toNat

end

end A211291.P11383352641610650524

/-! ## A211291.P10533413642481964127

`A142150(A211300(n)+A211294(n))`
-/

namespace A211291.P10533413642481964127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A211300 n + A211294 n).toNat

end

end A211291.P10533413642481964127

/-!
# A211292: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 1, 2] as of [2, 1, 1].

The programs for A211292, there is no canonical definition to state claims against.
-/

/-! ## A211292.P728732054762164124

`A189574(A027036(n+1))`
-/

namespace A211292.P728732054762164124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189574 (A027036 (n + 1)).toNat

end

end A211292.P728732054762164124

/-! ## A211292.P5315587823282397247

`A008612(8*A094864(n))`
-/

namespace A211292.P5315587823282397247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (8 * A094864 n).toNat

end

end A211292.P5315587823282397247

/-! ## A211292.P2338291434821813033

`or(1, A214701(A079121(n)))`
-/

namespace A211292.P2338291434821813033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A214701 (A079121 n).toNat)

end

end A211292.P2338291434821813033

/-!
# A211293: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 1, 2] as of [2, 1, 3].

The programs for A211293, there is no canonical definition to state claims against.
-/

/-! ## A211293.P4807276981440539119

`A060653(A211300(n))`
-/

namespace A211293.P4807276981440539119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060653 (A211300 n).toNat

end

end A211293.P4807276981440539119

/-! ## A211293.P951087711904492884

`A211300(A004879(n+1))`
-/

namespace A211293.P951087711904492884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211300 (A004879 (n + 1)).toNat

end

end A211293.P951087711904492884

/-! ## A211293.P8293869155553460299

`A211300(A004890(n+1))`
-/

namespace A211293.P8293869155553460299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211300 (A004890 (n + 1)).toNat

end

end A211293.P8293869155553460299

/-!
# A211294: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 1, 2] as of [2, 2, 1].

The programs for A211294, there is no canonical definition to state claims against.
-/

/-! ## A211294.P2866475556952019813

`A005843(A211290(n))-A211298(n)`
-/

namespace A211294.P2866475556952019813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A211290 n).toNat - A211298 n

end

end A211294.P2866475556952019813

/-! ## A211294.P8725922889512812911

`A005843(A211291(n))-A211300(n)`
-/

namespace A211294.P8725922889512812911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A211291 n).toNat - A211300 n

end

end A211294.P8725922889512812911

/-! ## A211294.P14135674888092938758

`A211288(n)+A005843(A211291(n))%A211296(n)`
-/

namespace A211294.P14135674888092938758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211288 n + Int.tmod (A005843 (A211291 n).toNat) (A211296 n)

end

end A211294.P14135674888092938758

/-!
# A211295: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 1, 2] as of [3, 1, 1].

The programs for A211295, there is no canonical definition to state claims against.
-/

/-! ## A211295.P9924517453235873907

`A008615(A123891(n+2)+1)`
-/

namespace A211295.P9924517453235873907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A123891 (n + 2) + 1).toNat

end

end A211295.P9924517453235873907

/-! ## A211295.P8918124868646578929

`or(1, A268132(or(1, A211282(n))))`
-/

namespace A211295.P8918124868646578929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A268132 (Int.lor 1 (A211282 n)).toNat)

end

end A211295.P8918124868646578929

/-! ## A211295.P10732214248159262010

`A098703(A065666(n+1))+A000045(2*n)`
-/

namespace A211295.P10732214248159262010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098703 (A065666 (n + 1)).toNat + A000045 (2 * n)

end

end A211295.P10732214248159262010

/-!
# A211296: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 1, 2] as of [3, 1, 3].

The programs for A211296, there is no canonical definition to state claims against.
-/

/-! ## A211296.P10733790429915376473

`A004525(A211300(n)+A211288(n))`
-/

namespace A211296.P10733790429915376473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A211300 n + A211288 n).toNat

end

end A211296.P10733790429915376473

/-! ## A211296.P1914552239480889085

`A004526(A211300(n)+A211288(n))`
-/

namespace A211296.P1914552239480889085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A211300 n + A211288 n).toNat

end

end A211296.P1914552239480889085

/-! ## A211296.P10304047173157861259

`A065033(A211300(n)+A211288(n))`
-/

namespace A211296.P10304047173157861259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A211300 n + A211288 n).toNat

end

end A211296.P10304047173157861259

/-! ## A211296.P12209227805466999932

`A211316(A211300(n)+A211288(n))`
-/

namespace A211296.P12209227805466999932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211316 (A211300 n + A211288 n).toNat

end

end A211296.P12209227805466999932

/-! ## A211296.P13427655836097802729

`A065033(A211288(n)-(1-A211300(n)))`
-/

namespace A211296.P13427655836097802729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A211288 n - (1 - A211300 n)).toNat

end

end A211296.P13427655836097802729

/-!
# A211297: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 2, 1] as of [1, 3, 1].

The programs for A211297, there is no canonical definition to state claims against.
-/

/-! ## A211297.P10946530780251722938

`A038567(A114496(n)-1)`
-/

namespace A211297.P10946530780251722938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A114496 n - 1).toNat

end

end A211297.P10946530780251722938

/-! ## A211297.P14834707661989731037

`A056533(A003958(6^n))`
-/

namespace A211297.P14834707661989731037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056533 (A003958 (6 ^ n)).toNat

end

end A211297.P14834707661989731037

/-! ## A211297.P15049798378653620988

`A056533(eq[2, A334968(n)])`
-/

namespace A211297.P15049798378653620988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056533 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211297.P15049798378653620988

/-!
# A211298: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 2, 1] as of [2, 1, 2].

The programs for A211298, there is no canonical definition to state claims against.
-/

/-! ## A211298.P12870727190466765593

`A005843(A211290(n))-A211294(n)`
-/

namespace A211298.P12870727190466765593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A211290 n).toNat - A211294 n

end

end A211298.P12870727190466765593

/-! ## A211298.P9307128754252400475

`A194640(A052963(n+1))`
-/

namespace A211298.P9307128754252400475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A052963 (n + 1)).toNat

end

end A211298.P9307128754252400475

/-!
# A211299: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 2, 1] as of [2, 1, 3].

The programs for A211299, there is no canonical definition to state claims against.
-/

/-! ## A211299.P1487516751513307539

`or(ceil(24^(n/3)), A344606(floor(9^(n/3))))`
-/

namespace A211299.P1487516751513307539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈(24 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉ (A344606 ⌊(9 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋.toNat)

end

end A211299.P1487516751513307539

/-! ## A211299.P10267201313182281613

`A008679(A224033(n+2))`
-/

namespace A211299.P10267201313182281613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A224033 (n + 2)).toNat

end

end A211299.P10267201313182281613

/-! ## A211299.P10897744049522947105

`A381577(A139756(n))+A018046(n)`
-/

namespace A211299.P10897744049522947105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381577 (A139756 n).toNat + A018046 n

end

end A211299.P10897744049522947105

