import SequenceMachineLib
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023

/-!
# A217000: Triangular numbers of the form 2p-1 where p is prime.

The programs for A217000, there is no canonical definition to state claims against.
-/

/-! ## A217000.P5149048698559245788

`(A217001(n+1)+A217001(n+1)²)/2`
-/

namespace A217000.P5149048698559245788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217001 (n + 1) + A217001 (n + 1) ^ 2 : ℚ) / 2

end

end A217000.P5149048698559245788

/-! ## A217000.P16843585719811809071

`A000217(A217001(1+n))`
-/

namespace A217000.P16843585719811809071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A217001 (1 + n)).toNat

end

end A217000.P16843585719811809071

/-! ## A217000.P12868703870142717242

`A161680(A217001(n+1)+1)`
-/

namespace A217000.P12868703870142717242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A217001 (n + 1) + 1).toNat

end

end A217000.P12868703870142717242

/-! ## A217000.P7177697923402471444

`A253145(A217001(n+1)-1)`
-/

namespace A217000.P7177697923402471444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A217001 (n + 1) - 1).toNat

end

end A217000.P7177697923402471444

/-! ## A217000.P9254611389010271660

`A160791(2*A217001(n+1))`
-/

namespace A217000.P9254611389010271660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 (2 * A217001 (n + 1)).toNat

end

end A217000.P9254611389010271660

/-! ## A217000.P11516728175516178703

`A245467(2*A217001(n+1))`
-/

namespace A217000.P11516728175516178703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245467 (2 * A217001 (n + 1)).toNat

end

end A217000.P11516728175516178703

/-! ## A217000.P2878221626748754059

`∩[A033945(n+1), A000217(n)]`
-/

namespace A217000.P2878221626748754059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217000.P2878221626748754059

/-! ## A217000.P14387633770757031464

`∩[A033945(n+1), A253145(n)]`
-/

namespace A217000.P14387633770757031464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217000.P14387633770757031464

/-! ## A217000.P9409041567023116402

`∩[A076274(n+1), A253145(n)]`
-/

namespace A217000.P9409041567023116402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217000.P9409041567023116402

/-! ## A217000.P15137175221167573169

`∩[A014493(n+1), A033945(n+1)]`
-/

namespace A217000.P15137175221167573169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217000.P15137175221167573169

/-!
# A217001: Numbers k such that (k^2 + k + 2)/4 is prime.

The programs for A217001, there is no canonical definition to state claims against.
-/

/-! ## A217001.P2205433154775604156

`floor(sqrt(2*A217000(n+1)))`
-/

namespace A217001.P2205433154775604156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A217000 (n + 1))

end

end A217001.P2205433154775604156

/-! ## A217001.P13299096419207191462

`round(sqrt(2*A217000(C(n+1, n))))`
-/

namespace A217001.P13299096419207191462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A217000 (Nat.choose (n + 1) n) : ℝ))

end

end A217001.P13299096419207191462

/-! ## A217001.P8010784137610939017

`round(sqrt(2*A217000((n+1)%((n+5)²+1))))`
-/

namespace A217001.P8010784137610939017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A217000 ((n + 1) % ((n + 5) ^ 2 + 1)) : ℝ))

end

end A217001.P8010784137610939017

/-! ## A217001.P1443109444638526425

`A028310(round(sqrt(2*A217000(n+1))))`
-/

namespace A217001.P1443109444638526425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt (2 * A217000 (n + 1) : ℝ))).toNat

end

end A217001.P1443109444638526425

/-! ## A217001.P10803302655745647504

`A080098(A217000(n+1))`
-/

namespace A217001.P10803302655745647504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A217000 (n + 1)).toNat

end

end A217001.P10803302655745647504

/-! ## A217001.P17826821773716725725

`eq[2*A006530(A000124(n)), A000124(n)]`
-/

namespace A217001.P17826821773716725725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (A000124 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217001.P17826821773716725725

/-! ## A217001.P11847997181393955622

`eq[1, A000217(n)%A000010(A000217(n)+1)]`
-/

namespace A217001.P11847997181393955622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n) (A000010 (A000217 n + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217001.P11847997181393955622

/-!
# A217004: Numbers arising in computing the Turan function of cycles of length 4.

The programs for A217004, there is no canonical definition to state claims against.
-/

/-! ## A217004.P17346097479406995836

`ceil((A000961(n+11)+1/2)²)`
-/

namespace A217004.P17346097479406995836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A000961 (n + 11) : ℚ) + (1 : ℚ) / 2) ^ 2⌉

end

end A217004.P17346097479406995836

/-! ## A217004.P4533900190911163780

`A002378(A246655(n+10))+1`
-/

namespace A217004.P4533900190911163780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A246655 (n + 10)).toNat + 1

end

end A217004.P4533900190911163780

/-! ## A217004.P7584388793453740623

`A002061(A000961(n+11)+1)`
-/

namespace A217004.P7584388793453740623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A000961 (n + 11) + 1).toNat

end

end A217004.P7584388793453740623

/-! ## A217004.P5270973192914803489

`A002378(A225657(n+12))+1`
-/

namespace A217004.P5270973192914803489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A225657 (n + 12)).toNat + 1

end

end A217004.P5270973192914803489

/-! ## A217004.P16477620771645730993

`A094766(A000961(n+11)-2)`
-/

namespace A217004.P16477620771645730993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094766 (A000961 (n + 11) - 2).toNat

end

end A217004.P16477620771645730993

/-!
# A217005: Van der Waerden numbers w(j+2; t_0,t_1,...,t_{j-1}, 3, 3) with t_0 = t_1 = ... = t_{j-1} = 2.

The programs for A217005, there is no canonical definition to state claims against.
-/

/-! ## A217005.P8493475782687832827

`A002808(3*n+5)-A061775(A005558(n))`
-/

namespace A217005.P8493475782687832827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (3 * n + 5) - A061775 (A005558 n).toNat

end

end A217005.P8493475782687832827

/-! ## A217005.P10507748796072616729

`lt[A119679(A063114(n+1)), A000040(n+1)]`
-/

namespace A217005.P10507748796072616729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119679 (A063114 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A217005.P10507748796072616729

/-! ## A217005.P15821216993155626203

`lt[A119679(A063114(n+1)), A002858(n+1)]`
-/

namespace A217005.P15821216993155626203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119679 (A063114 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A217005.P15821216993155626203

/-! ## A217005.P1154603946912613835

`A074940(2*n+4)+A020639(A006882(n+4))`
-/

namespace A217005.P1154603946912613835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074940 (2 * n + 4) + A020639 (A006882 (n + 4)).toNat

end

end A217005.P1154603946912613835

/-! ## A217005.P15712495811490170105

`A096494(5*n+9)+A000034(A094937(7*n))`
-/

namespace A217005.P15712495811490170105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096494 (5 * n + 9) + A000034 (A094937 (7 * n)).toNat

end

end A217005.P15712495811490170105

/-!
# A217006: Numbers k such that phi(k-6) = phi(k) = phi(k+6).

The programs for A217006, the canonical program `A217006.P11652602790585966678` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217006 has offset 1).

The definition of A217006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217006.P11652602790585966678

`∩[A179188(n+1)+6, A179188(n+4)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A217006

/-- `∩[A179188(n+1)+6, A179188(n+4)]` -/
def P11652602790585966678.Spec : Prop :=
  ∀ n, (P11652602790585966678.a n : ℤ) = A217006 (n + 1)

theorem P11652602790585966678.correct : P11652602790585966678.Spec := by
  intro n
  simp only [A217006, Nat.add_sub_cancel]

end A217006

/-! ## A217006.P11134561737214108417

`∩[A179188(n+1), A066659(A179188(n+1))]`
-/

namespace A217006.P11134561737214108417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066659 (A179188 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217006.P11134561737214108417

namespace A217006

/-- `∩[A179188(n+1), A066659(A179188(n+1))]` -/
def P11134561737214108417.Spec : Prop :=
  ∀ n, (P11134561737214108417.a n : ℤ) = A217006 (n + 1)

end A217006

/-!
# A217009: Multiples of 7 in base 8.

The programs for A217009, the canonical program `A217009.P14255670570923127505` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217009 has offset 1).

The definition of A217009 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007094, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A217009.P14255670570923127505

`A007094(A008589(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A217009

/-- `A007094(A008589(n+1))` -/
def P14255670570923127505.Spec : Prop :=
  ∀ n, P14255670570923127505.a n = A217009 (n + 1)

theorem P14255670570923127505.correct : P14255670570923127505.Spec := by
  intro n
  simp only [A217009, Nat.add_sub_cancel]

end A217009

/-! ## A217009.P11979282326358017543

`A007094(7*(n+1))`
-/

namespace A217009.P11979282326358017543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (7 * (n + 1))

end

end A217009.P11979282326358017543

namespace A217009

/-- `A007094(7*(n+1))` -/
def P11979282326358017543.Spec : Prop :=
  ∀ n, P11979282326358017543.a n = A217009 (n + 1)

end A217009

/-! ## A217009.P8657339386831066134

`record[A007094(A195159(n+2))]`
-/

namespace A217009.P8657339386831066134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A195159 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217009.P8657339386831066134

namespace A217009

/-- `record[A007094(A195159(n+2))]` -/
def P8657339386831066134.Spec : Prop :=
  ∀ n, P8657339386831066134.a n = A217009 (n + 1)

end A217009

/-! ## A217009.P3965552179946560311

`record[A007094(7*A008611(n))]`
-/

namespace A217009.P3965552179946560311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (7 * A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217009.P3965552179946560311

namespace A217009

/-- `record[A007094(7*A008611(n))]` -/
def P3965552179946560311.Spec : Prop :=
  ∀ n, P3965552179946560311.a n = A217009 (n + 1)

end A217009

/-! ## A217009.P14169662739619873055

`record[A007094(7*A008624(n))]`
-/

namespace A217009.P14169662739619873055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (7 * A008624 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217009.P14169662739619873055

namespace A217009

/-- `record[A007094(7*A008624(n))]` -/
def P14169662739619873055.Spec : Prop :=
  ∀ n, P14169662739619873055.a n = A217009 (n + 1)

end A217009

/-! ## A217009.P14116678458969730227

`record[A007094(7*A057979(n))]`
-/

namespace A217009.P14116678458969730227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (7 * A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217009.P14116678458969730227

namespace A217009

/-- `record[A007094(7*A057979(n))]` -/
def P14116678458969730227.Spec : Prop :=
  ∀ n, P14116678458969730227.a n = A217009 (n + 1)

end A217009

/-! ## A217009.P6206054920584797335

`record[A007094(7*A291766(n))]`
-/

namespace A217009.P6206054920584797335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (7 * A291766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217009.P6206054920584797335

namespace A217009

/-- `record[A007094(7*A291766(n))]` -/
def P6206054920584797335.Spec : Prop :=
  ∀ n, P6206054920584797335.a n = A217009 (n + 1)

end A217009

/-! ## A217009.P10370286918499766164

`record[A007094(7*A291769(n))]`
-/

namespace A217009.P10370286918499766164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (7 * A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217009.P10370286918499766164

namespace A217009

/-- `record[A007094(7*A291769(n))]` -/
def P10370286918499766164.Spec : Prop :=
  ∀ n, P10370286918499766164.a n = A217009 (n + 1)

end A217009

/-! ## A217009.P11277516928354752492

`A007095(A037477(7*(n+1)))`
-/

namespace A217009.P11277516928354752492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A037477 (7 * (n + 1))).toNat

end

end A217009.P11277516928354752492

namespace A217009

/-- `A007095(A037477(7*(n+1)))` -/
def P11277516928354752492.Spec : Prop :=
  ∀ n, P11277516928354752492.a n = A217009 (n + 1)

end A217009

/-!
# A217010: Permutation of natural numbers arising from applying the walk of a square spiral (e.g., A214526) to the data of right triangular type-1 spiral (defined in A214230).

The programs for A217010, there is no canonical definition to state claims against.
-/

/-! ## A217010.P12627924447067573184

`A217012(A217291(A217011(n+1)))`
-/

namespace A217010.P12627924447067573184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217012 (A217291 (A217011 (n + 1)).toNat).toNat

end

end A217010.P12627924447067573184

/-! ## A217010.P14061955280298955633

`A217012(A217292(A217012(n+1)))`
-/

namespace A217010.P14061955280298955633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217012 (A217292 (A217012 (n + 1)).toNat).toNat

end

end A217010.P14061955280298955633

/-!
# A217011: Permutation of natural numbers arising from applying the walk of a square spiral (e.g. A214526) to the data of right triangular type-2 spiral (defined in A214251).

The programs for A217011, there is no canonical definition to state claims against.
-/

/-! ## A217011.P16295417603313980442

`A217010(A217293(A217010(n+1)))`
-/

namespace A217011.P16295417603313980442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217010 (A217293 (A217010 (n + 1)).toNat).toNat

end

end A217011.P16295417603313980442

/-! ## A217011.P13642198942716711048

`A217010(A217292(A217012(n+1)))`
-/

namespace A217011.P13642198942716711048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217010 (A217292 (A217012 (n + 1)).toNat).toNat

end

end A217011.P13642198942716711048

/-! ## A217011.P13610315030881279313

`A217012(A217291(A217012(A217010(A217291(n+1)))))`
-/

namespace A217011.P13610315030881279313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217012 (A217291 (A217012 (A217010 (A217291 (n + 1)).toNat).toNat).toNat).toNat

end

end A217011.P13610315030881279313

/-!
# A217012: Permutation of natural numbers arising from applying the walk of a square spiral (e.g. A214526) to the data of right triangular type-3 spiral (defined in A214252).

The programs for A217012, there is no canonical definition to state claims against.
-/

/-! ## A217012.P1242686642881901009

`A217010(A217292(A217010(n+1)))`
-/

namespace A217012.P1242686642881901009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217010 (A217292 (A217010 (n + 1)).toNat).toNat

end

end A217012.P1242686642881901009

/-! ## A217012.P16754627450991114147

`A217011(A217291(A217011(n+1)))`
-/

namespace A217012.P16754627450991114147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217011 (A217291 (A217011 (n + 1)).toNat).toNat

end

end A217012.P16754627450991114147

/-!
# A217013: Permutation of natural numbers arising from applying the walk of a square spiral (e.g. A214526) to the data of triangular horizontal-first spiral (defined in A214250).

The programs for A217013, there is no canonical definition to state claims against.
-/

/-! ## A217013.P13264909281815994778

`A090928(A217014(1+n))`
-/

namespace A217013.P13264909281815994778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A217014 (1 + n)).toNat

end

end A217013.P13264909281815994778

/-! ## A217013.P16455599448502054017

`A090915(A217014(A090930(n+1)))`
-/

namespace A217013.P16455599448502054017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A217014 (A090930 (n + 1)).toNat).toNat

end

end A217013.P16455599448502054017

/-! ## A217013.P5527906543618403398

`A090915(A217014(A020703(A090925(n+1))))`
-/

namespace A217013.P5527906543618403398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A217014 (A020703 (A090925 (n + 1)).toNat).toNat).toNat

end

end A217013.P5527906543618403398

/-! ## A217013.P8232565884176293028

`A090915(A217014(A090929(A020703(n+1))))`
-/

namespace A217013.P8232565884176293028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A217014 (A090929 (A020703 (n + 1)).toNat).toNat).toNat

end

end A217013.P8232565884176293028

/-! ## A217013.P11813417081141670423

`A090915(A217014(A090925(A090915(n+1))))`
-/

namespace A217013.P11813417081141670423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A217014 (A090925 (A090915 (n + 1)).toNat).toNat).toNat

end

end A217013.P11813417081141670423

/-! ## A217013.P8185066492828384643

`A090915(A217014(A090915(A090929(n+1))))`
-/

namespace A217013.P8185066492828384643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A217014 (A090915 (A090929 (n + 1)).toNat).toNat).toNat

end

end A217013.P8185066492828384643

/-! ## A217013.P3293493644406232784

`A090930(A090861(A217014(A090861(A090861(n+1)))))`
-/

namespace A217013.P3293493644406232784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A090861 (A217014 (A090861 (A090861 (n + 1)).toNat).toNat).toNat).toNat

end

end A217013.P3293493644406232784

/-!
# A217014: Permutation of natural numbers arising from applying the walk of a square spiral (e.g. A214526) to the data of triangular horizontal-last spiral (defined in A214226).

The programs for A217014, there is no canonical definition to state claims against.
-/

/-! ## A217014.P15567819880363652872

`A090928(A217013(n+1))`
-/

namespace A217014.P15567819880363652872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A217013 (n + 1)).toNat

end

end A217014.P15567819880363652872

/-! ## A217014.P12574695833090605242

`A090915(A217013(A090930(n+1)))`
-/

namespace A217014.P12574695833090605242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A217013 (A090930 (n + 1)).toNat).toNat

end

end A217014.P12574695833090605242

/-! ## A217014.P1262003948475260715

`A090915(A217013(A020703(A090925(n+1))))`
-/

namespace A217014.P1262003948475260715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A217013 (A020703 (A090925 (n + 1)).toNat).toNat).toNat

end

end A217014.P1262003948475260715

/-! ## A217014.P1070407486753181225

`A090915(A217013(A090929(A020703(n+1))))`
-/

namespace A217014.P1070407486753181225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A217013 (A090929 (A020703 (n + 1)).toNat).toNat).toNat

end

end A217014.P1070407486753181225

/-! ## A217014.P9362901451283378468

`A090915(A217013(A090925(A090915(n+1))))`
-/

namespace A217014.P9362901451283378468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A217013 (A090925 (A090915 (n + 1)).toNat).toNat).toNat

end

end A217014.P9362901451283378468

/-! ## A217014.P4960435030429213361

`A090915(A217013(A090915(A090929(n+1))))`
-/

namespace A217014.P4960435030429213361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A217013 (A090915 (A090929 (n + 1)).toNat).toNat).toNat

end

end A217014.P4960435030429213361

/-! ## A217014.P14492879723200131258

`A090930(A090861(A217013(A090861(A090861(n+1)))))`
-/

namespace A217014.P14492879723200131258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A090861 (A217013 (A090861 (A090861 (n + 1)).toNat).toNat).toNat).toNat

end

end A217014.P14492879723200131258

/-! ## A217014.P4386090170871031158

`A090929(A090929(A217013(A185413(A185413(n+1)))))`
-/

namespace A217014.P4386090170871031158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A090929 (A217013 (A185413 (A185413 (n + 1)).toNat).toNat).toNat).toNat

end

end A217014.P4386090170871031158

/-!
# A217015: Permutation of natural numbers arising from applying the walk of a square spiral (e.g. A214526) to the data of rotated-square spiral (defined in A215468).

The programs for A217015, there is no canonical definition to state claims against.
-/

/-! ## A217015.P13322558840294105034

`ceil(A316884(A020703(n+1))/2)`
-/

namespace A217015.P13322558840294105034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A316884 (A020703 (n + 1)).toNat : ℚ) / 2⌉

end

end A217015.P13322558840294105034

/-! ## A217015.P3752973268576827518

`ceil(A090930(A316884(n+1))/2)`
-/

namespace A217015.P3752973268576827518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A090930 (A316884 (n + 1)).toNat : ℚ) / 2⌉

end

end A217015.P3752973268576827518

/-! ## A217015.P8113025644259434587

`(A090930(A316884(C(n+1, n)))+1)/2`
-/

namespace A217015.P8113025644259434587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090930 (A316884 (Nat.choose (n + 1) n)).toNat + 1 : ℚ) / 2

end

end A217015.P8113025644259434587

/-! ## A217015.P18211371033337732634

`(A090930(A316884(2*n+1-n))+1)/2`
-/

namespace A217015.P18211371033337732634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090930 (A316884 (2 * n + 1 - n)).toNat + 1 : ℚ) / 2

end

end A217015.P18211371033337732634

/-! ## A217015.P1167175563340566809

`A001057(A316884(A020703(n+1)))`
-/

namespace A217015.P1167175563340566809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A316884 (A020703 (n + 1)).toNat).toNat

end

end A217015.P1167175563340566809

/-! ## A217015.P15126929272658514405

`round(A090930(A316884(n+1))/2*A054977(n))`
-/

namespace A217015.P15126929272658514405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A090930 (A316884 (n + 1)).toNat : ℚ) / 2 * (A054977 n : ℚ))

end

end A217015.P15126929272658514405

/-! ## A217015.P2186886339656001082

`round((A000007(n)+1)*A090930(A316884(n+1))/2)`
-/

namespace A217015.P2186886339656001082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 n + 1 : ℚ) * ((A090930 (A316884 (n + 1)).toNat : ℚ) / 2))

end

end A217015.P2186886339656001082

/-! ## A217015.P17433355531449429793

`round(A090930(A316884(n+1))/2*A014963(6*(n+1)))`
-/

namespace A217015.P17433355531449429793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A090930 (A316884 (n + 1)).toNat : ℚ) / 2 * (A014963 (6 * (n + 1)) : ℚ))

end

end A217015.P17433355531449429793

/-!
# A217016: Least r > 1 without Goldbach partition 2r = p+q such that |p-q| is prime(n)-smooth.

The programs for A217016, there is no canonical definition to state claims against.
-/

/-! ## A217016.P6497383747236799924

`A139718(A047025(n+4))`
-/

namespace A217016.P6497383747236799924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139718 (A047025 (n + 4)).toNat

end

end A217016.P6497383747236799924

/-!
# A217017: E.g.f. satisfies: A(x) = Sum_{n>=0} x^n * cosh(n^2*x).

The programs for A217017, there is no canonical definition to state claims against.
-/

/-! ## A217017.P18234601832808910024

`A050294(∏[n!])`
-/

namespace A217017.P18234601832808910024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050294 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A217017.P18234601832808910024

/-!
# A217018: Partial sums of 3-almost primes which are again 3-almost primes, i.e., have exactly 3 not necessarily distinct prime factors.

The programs for A217018, there is no canonical definition to state claims against.
-/

/-! ## A217018.P10744829615119805986

`∩[A014612(n+1), A086062(n+1)]`
-/

namespace A217018.P10744829615119805986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217018.P10744829615119805986

/-! ## A217018.P12149509396872539593

`filter[A086062(n+1), A101605(#)]`
-/

namespace A217018.P12149509396872539593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A217018.P12149509396872539593

/-! ## A217018.P10010751330459138945

`filter[A216686(n+1), A101605(#)]`
-/

namespace A217018.P10010751330459138945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A217018.P10010751330459138945

/-!
# A217019: First differences of A128301.

The programs for A217019, the canonical program `A217019.P8957166499340479280` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217019 has offset 1).

The definition of A217019 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165144, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A217019.P8957166499340479280

`A165144(n+1)+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A217019

/-- `A165144(n+1)+1` -/
def P8957166499340479280.Spec : Prop :=
  ∀ n, P8957166499340479280.a n = A217019 (n + 1)

theorem P8957166499340479280.correct : P8957166499340479280.Spec := by
  intro n
  simp only [A217019, Nat.add_sub_cancel]

end A217019

/-! ## A217019.P6083111833470024844

`Δ[A128301(n+1)]`
-/

namespace A217019.P6083111833470024844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217019.P6083111833470024844

namespace A217019

/-- `Δ[A128301(n+1)]` -/
def P6083111833470024844.Spec : Prop :=
  ∀ n, P6083111833470024844.a n = A217019 (n + 1)

end A217019

/-! ## A217019.P868498342404200993

`A128301(n+2)-A128301(n+1)`
-/

namespace A217019.P868498342404200993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128301 (n + 2) - A128301 (n + 1)

end

end A217019.P868498342404200993

namespace A217019

/-- `A128301(n+2)-A128301(n+1)` -/
def P868498342404200993.Spec : Prop :=
  ∀ n, P868498342404200993.a n = A217019 (n + 1)

end A217019

/-! ## A217019.P2586920560551087742

`A020725(A165144(n+1))`
-/

namespace A217019.P2586920560551087742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A165144 (n + 1)).toNat

end

end A217019.P2586920560551087742

namespace A217019

/-- `A020725(A165144(n+1))` -/
def P2586920560551087742.Spec : Prop :=
  ∀ n, P2586920560551087742.a n = A217019 (n + 1)

end A217019

/-! ## A217019.P18263333793081975350

`A028310(Δ[A128301(1-(n-2*n))])`
-/

namespace A217019.P18263333793081975350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128301 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A217019.P18263333793081975350

namespace A217019

/-- `A028310(Δ[A128301(1-(n-2*n))])` -/
def P18263333793081975350.Spec : Prop :=
  ∀ n, P18263333793081975350.a n = A217019 (n + 1)

end A217019

/-! ## A217019.P10649854689233054768

`Δ[A205726(Δ[A007504(n)])]`
-/

namespace A217019.P10649854689233054768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217019.P10649854689233054768

namespace A217019

/-- `Δ[A205726(Δ[A007504(n)])]` -/
def P10649854689233054768.Spec : Prop :=
  ∀ n, P10649854689233054768.a n = A217019 (n + 1)

end A217019

/-! ## A217019.P3110527333866704106

`Δ[A205726(A000040(n+1))]`
-/

namespace A217019.P3110527333866704106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217019.P3110527333866704106

namespace A217019

/-- `Δ[A205726(A000040(n+1))]` -/
def P3110527333866704106.Spec : Prop :=
  ∀ n, P3110527333866704106.a n = A217019 (n + 1)

end A217019

/-! ## A217019.P5721178115779939090

`Δ[A205726(A008578(n+2))]`
-/

namespace A217019.P5721178115779939090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217019.P5721178115779939090

namespace A217019

/-- `Δ[A205726(A008578(n+2))]` -/
def P5721178115779939090.Spec : Prop :=
  ∀ n, P5721178115779939090.a n = A217019 (n + 1)

end A217019

/-! ## A217019.P14040239399872852000

`Δ[A205726(sqrt(A001248(n+1)))]`
-/

namespace A217019.P14040239399872852000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217019.P14040239399872852000

namespace A217019

/-- `Δ[A205726(sqrt(A001248(n+1)))]` -/
def P14040239399872852000.Spec : Prop :=
  ∀ n, P14040239399872852000.a n = A217019 (n + 1)

end A217019

/-! ## A217019.P18204603206880141937

`Δ[A205726(p?[A215261(n+1)])]`
-/

namespace A217019.P18204603206880141937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215261 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217019.P18204603206880141937

namespace A217019

/-- `Δ[A205726(p?[A215261(n+1)])]` -/
def P18204603206880141937.Spec : Prop :=
  ∀ n, P18204603206880141937.a n = A217019 (n + 1)

end A217019

/-! ## A217019.P4673832539350024969

`Δ[A205726(A006093(n+1)+1)]`
-/

namespace A217019.P4673832539350024969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217019.P4673832539350024969

namespace A217019

/-- `Δ[A205726(A006093(n+1)+1)]` -/
def P4673832539350024969.Spec : Prop :=
  ∀ n, P4673832539350024969.a n = A217019 (n + 1)

end A217019

/-!
# A217021: Number of city-block distance 1, pressure limit 2 movements in an n X n array with each element moving exactly one horizontally or vertically and no element acquiring more than two neighbors.

The programs for A217021, there is no canonical definition to state claims against.
-/

/-! ## A217021.P9841805496055274990

`A217028((n+1)²+n²)`
-/

namespace A217021.P9841805496055274990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217028 ((n + 1) ^ 2 + n ^ 2)

end

end A217021.P9841805496055274990

/-! ## A217021.P2167458704364608017

`and(A217028(A001844(n)), A321804(n))`
-/

namespace A217021.P2167458704364608017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A217028 (A001844 n).toNat) (A321804 n)

end

end A217021.P2167458704364608017

/-!
# A217022: Number of city-block distance 1, pressure limit 2 movements in an n X 2 array with each element moving exactly one horizontally or vertically and no element acquiring more than two neighbors.

The programs for A217022, the canonical program `A217022.P7753698139832300629` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217022 has offset 1).

The definition of A217022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217022.P14389603398002909950

`ogf((1+7x-20x^2+8x^3+2x^4-x^5)/(1-9x+3x^2+25x^3-9x^4-3x^5+x^6))`
-/

namespace A217022.P14389603398002909950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, -20, 8, 2, -1] [1, -9, 3, 25, -9, -3, 1] n

end

end A217022.P14389603398002909950

namespace A217022

/-- `ogf((1+7x-20x^2+8x^3+2x^4-x^5)/(1-9x+3x^2+25x^3-9x^4-3x^5+x^6))` -/
def P14389603398002909950.Spec : Prop :=
  ∀ n, P14389603398002909950.a n = A217022 (n + 1)

end A217022

/-! ## A217022.P7753698139832300629

`Δ[3*a(n-1)-a(n-3)]²` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217022

/-- `Δ[3*a(n-1)-a(n-3)]²` -/
def P7753698139832300629.Spec : Prop :=
  ∀ n, P7753698139832300629.a n = A217022 (n + 1)

theorem P7753698139832300629.correct : P7753698139832300629.Spec := by
  intro n
  simp only [A217022, Nat.add_sub_cancel]

end A217022

/-! ## A217022.P9394372327125103557

`Δ[A052536(n)]²`
-/

namespace A217022.P9394372327125103557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A217022.P9394372327125103557

namespace A217022

/-- `Δ[A052536(n)]²` -/
def P9394372327125103557.Spec : Prop :=
  ∀ n, P9394372327125103557.a n = A217022 (n + 1)

end A217022

/-! ## A217022.P14586626721151822654

`A052545(n+1)²`
-/

namespace A217022.P14586626721151822654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 (n + 1) ^ 2

end

end A217022.P14586626721151822654

namespace A217022

/-- `A052545(n+1)²` -/
def P14586626721151822654.Spec : Prop :=
  ∀ n, P14586626721151822654.a n = A217022 (n + 1)

end A217022

/-! ## A217022.P14156643667576118210

`Δ[Δ[A123941(n)]]²`
-/

namespace A217022.P14156643667576118210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123941 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A217022.P14156643667576118210

namespace A217022

/-- `Δ[Δ[A123941(n)]]²` -/
def P14156643667576118210.Spec : Prop :=
  ∀ n, P14156643667576118210.a n = A217022 (n + 1)

end A217022

/-! ## A217022.P10925264297885367412

`∏[ratio[A052545(n)]²]`
-/

namespace A217022.P10925264297885367412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℚ) / (f2 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A217022.P10925264297885367412

namespace A217022

/-- `∏[ratio[A052545(n)]²]` -/
def P10925264297885367412.Spec : Prop :=
  ∀ n, P10925264297885367412.a n = (A217022 (n + 1) : ℚ)

end A217022

/-! ## A217022.P3032799140160675487

`Δ[A122100(n+3)]²`
-/

namespace A217022.P3032799140160675487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122100 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A217022.P3032799140160675487

namespace A217022

/-- `Δ[A122100(n+3)]²` -/
def P3032799140160675487.Spec : Prop :=
  ∀ n, P3032799140160675487.a n = A217022 (n + 1)

end A217022

/-! ## A217022.P1410003662028021241

`Δ[A187505(3*(n+1))]²`
-/

namespace A217022.P1410003662028021241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187505 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A217022.P1410003662028021241

namespace A217022

/-- `Δ[A187505(3*(n+1))]²` -/
def P1410003662028021241.Spec : Prop :=
  ∀ n, P1410003662028021241.a n = A217022 (n + 1)

end A217022

/-! ## A217022.P17904981769502085396

`Δ[A123891(n+1)/3]²`
-/

namespace A217022.P17904981769502085396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123891 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A217022.P17904981769502085396

namespace A217022

/-- `Δ[A123891(n+1)/3]²` -/
def P17904981769502085396.Spec : Prop :=
  ∀ n, P17904981769502085396.a n = (A217022 (n + 1) : ℚ)

end A217022

/-! ## A217022.P3985923433507956027

`A052545(Δ[n^2]-n)^2`
-/

namespace A217022.P3985923433507956027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2

end

end A217022.P3985923433507956027

namespace A217022

/-- `A052545(Δ[n^2]-n)^2` -/
def P3985923433507956027.Spec : Prop :=
  ∀ n, P3985923433507956027.a n = A217022 (n + 1)

end A217022

/-! ## A217022.P2616101695856264014

`record[A052545(A008615(n))²]`
-/

namespace A217022.P2616101695856264014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 (A008615 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217022.P2616101695856264014

namespace A217022

/-- `record[A052545(A008615(n))²]` -/
def P2616101695856264014.Spec : Prop :=
  ∀ n, P2616101695856264014.a n = A217022 (n + 1)

end A217022

/-! ## A217022.P4233742769617090943

`record[A052545(A126760(n))²]`
-/

namespace A217022.P4233742769617090943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 (A126760 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217022.P4233742769617090943

namespace A217022

/-- `record[A052545(A126760(n))²]` -/
def P4233742769617090943.Spec : Prop :=
  ∀ n, P4233742769617090943.a n = A217022 (n + 1)

end A217022

/-! ## A217022.P4005710151769751275

`(A215448(n+1)+A052536(n))²`
-/

namespace A217022.P4005710151769751275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A215448 (n + 1) + A052536 n) ^ 2

end

end A217022.P4005710151769751275

namespace A217022

/-- `(A215448(n+1)+A052536(n))²` -/
def P4005710151769751275.Spec : Prop :=
  ∀ n, P4005710151769751275.a n = A217022 (n + 1)

end A217022

/-! ## A217022.P9489302361078571856

`(A147704(n+1)+A123941(n))²`
-/

namespace A217022.P9489302361078571856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A147704 (n + 1) + A123941 n) ^ 2

end

end A217022.P9489302361078571856

namespace A217022

/-- `(A147704(n+1)+A123941(n))²` -/
def P9489302361078571856.Spec : Prop :=
  ∀ n, P9489302361078571856.a n = A217022 (n + 1)

end A217022

/-! ## A217022.P2402401645871051079

`(A052536(n+1)-A052536(n))²`
-/

namespace A217022.P2402401645871051079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052536 (n + 1) - A052536 n) ^ 2

end

end A217022.P2402401645871051079

namespace A217022

/-- `(A052536(n+1)-A052536(n))²` -/
def P2402401645871051079.Spec : Prop :=
  ∀ n, P2402401645871051079.a n = A217022 (n + 1)

end A217022

/-! ## A217022.P17052994569689177624

`Δ[A052536(n)]*A052545(n+1)`
-/

namespace A217022.P17052994569689177624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A052545 (n + 1)

end

end A217022.P17052994569689177624

namespace A217022

/-- `Δ[A052536(n)]*A052545(n+1)` -/
def P17052994569689177624.Spec : Prop :=
  ∀ n, P17052994569689177624.a n = A217022 (n + 1)

end A217022

/-! ## A217022.P12326670837925922213

`Δ[A052536(n)]^A020639(2*(n+1))`
-/

namespace A217022.P12326670837925922213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A217022.P12326670837925922213

namespace A217022

/-- `Δ[A052536(n)]^A020639(2*(n+1))` -/
def P12326670837925922213.Spec : Prop :=
  ∀ n, P12326670837925922213.a n = (A217022 (n + 1) : ℚ)

end A217022

/-! ## A217022.P3797210951492087973

`A052545(A028310(n+1))*A052545(n+1)`
-/

namespace A217022.P3797210951492087973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 (A028310 (n + 1)).toNat * A052545 (n + 1)

end

end A217022.P3797210951492087973

namespace A217022

/-- `A052545(A028310(n+1))*A052545(n+1)` -/
def P3797210951492087973.Spec : Prop :=
  ∀ n, P3797210951492087973.a n = A217022 (n + 1)

end A217022

/-! ## A217022.P7400748333144128843

`record[A052545(A008615(n+1))]*A052545(n+1)`
-/

namespace A217022.P7400748333144128843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 (A008615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A052545 (n + 1)

end

end A217022.P7400748333144128843

namespace A217022

/-- `record[A052545(A008615(n+1))]*A052545(n+1)` -/
def P7400748333144128843.Spec : Prop :=
  ∀ n, P7400748333144128843.a n = A217022 (n + 1)

end A217022

/-! ## A217022.P5759169016908875407

`record[A052545(A126760(n+1))]*A052545(n+1)`
-/

namespace A217022.P5759169016908875407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 (A126760 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A052545 (n + 1)

end

end A217022.P5759169016908875407

namespace A217022

/-- `record[A052545(A126760(n+1))]*A052545(n+1)` -/
def P5759169016908875407.Spec : Prop :=
  ∀ n, P5759169016908875407.a n = A217022 (n + 1)

end A217022

/-!
# A217023: Number of city-block distance 1, pressure limit 2 movements in an nX3 array with each element moving exactly one horizontally or vertically and no element acquiring more than two neighbors.

The programs for A217023, there is no canonical definition to state claims against.
-/

/-! ## A217023.P6709269817703642888

`A217028(∑[n+2]+4)`
-/

namespace A217023.P6709269817703642888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217028 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A217023.P6709269817703642888

/-! ## A217023.P724471662594907062

`A217028(A167614(n+1))+A025469(n)`
-/

namespace A217023.P724471662594907062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217028 (A167614 (n + 1)).toNat + A025469 n

end

end A217023.P724471662594907062

/-! ## A217023.P793765097350613005

`A326685(n)+A217028(A167614(n+1))`
-/

namespace A217023.P793765097350613005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + A217028 (A167614 (n + 1)).toNat

end

end A217023.P793765097350613005

/-! ## A217023.P1273027396867872936

`A036225(n)*A217028(A167614(n+1))`
-/

namespace A217023.P1273027396867872936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A217028 (A167614 (n + 1)).toNat

end

end A217023.P1273027396867872936

/-! ## A217023.P16998573928505027591

`lcm(A057077(n), A217028(A167614(n+1)))`
-/

namespace A217023.P16998573928505027591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A217028 (A167614 (n + 1)).toNat)

end

end A217023.P16998573928505027591

/-!
# A217024: Number of city-block distance 1, pressure limit 2 movements in an nX4 array with each element moving exactly one horizontally or vertically and no element acquiring more than two neighbors.

The programs for A217024, there is no canonical definition to state claims against.
-/

/-! ## A217024.P2123144325386727858

`A217028(A374004(n+1))`
-/

namespace A217024.P2123144325386727858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217028 (A374004 (n + 1)).toNat

end

end A217024.P2123144325386727858

/-! ## A217024.P16325306353979142851

`A217028(A141214(n)+7)`
-/

namespace A217024.P16325306353979142851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217028 (A141214 n + 7).toNat

end

end A217024.P16325306353979142851

/-! ## A217024.P3934990902163852194

`A217028(A052905(n)+9)`
-/

namespace A217024.P3934990902163852194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217028 (A052905 n + 9).toNat

end

end A217024.P3934990902163852194

/-! ## A217024.P1319090098013428480

`A217028(A167614(n+2)+1)`
-/

namespace A217024.P1319090098013428480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217028 (A167614 (n + 2) + 1).toNat

end

end A217024.P1319090098013428480

/-! ## A217024.P2943103187797893663

`A217028(A055998(n+1)+7)`
-/

namespace A217024.P2943103187797893663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217028 (A055998 (n + 1) + 7).toNat

end

end A217024.P2943103187797893663

/-!
# A217025: Number of city-block distance 1, pressure limit 2 movements in an nX5 array with each element moving exactly one horizontally or vertically and no element acquiring more than two neighbors.

The programs for A217025, there is no canonical definition to state claims against.
-/

/-! ## A217025.P5247623190027328923

`A217028(A374005(n+1))`
-/

namespace A217025.P5247623190027328923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217028 (A374005 (n + 1)).toNat

end

end A217025.P5247623190027328923

/-! ## A217025.P688697530501851057

`A217028(A155212(n)+13)`
-/

namespace A217025.P688697530501851057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217028 (A155212 n + 13).toNat

end

end A217025.P688697530501851057

/-! ## A217025.P9870623830348175103

`A217028(eq[4, A130303(n+1)])`
-/

namespace A217025.P9870623830348175103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217025.P9870623830348175103

/-!
# A217026: Number of city-block distance 1, pressure limit 2 movements in an nX6 array with each element moving exactly one horizontally or vertically and no element acquiring more than two neighbors.

The programs for A217026, there is no canonical definition to state claims against.
-/

/-! ## A217026.P6661200329105868606

`A217028(A374007(n+1))`
-/

namespace A217026.P6661200329105868606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217028 (A374007 (n + 1)).toNat

end

end A217026.P6661200329105868606

/-! ## A217026.P10862852048830391531

`A217028(eq[6, A002260(n+1)]+1)`
-/

namespace A217026.P10862852048830391531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A217026.P10862852048830391531

/-! ## A217026.P9183842894796640269

`A217028(eq[5, A025581(n)]+1)`
-/

namespace A217026.P9183842894796640269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A217026.P9183842894796640269

/-!
# A217028: T(n,k)=Number of city-block distance 1, pressure limit 2 movements in an nXk array with each element moving exactly one horizontally or vertically and no element acquiring more than two neighbors.

The programs for A217028, there is no canonical definition to state claims against.
-/

/-! ## A217028.P5071950657314070681

`A014190(A135835(n+1)%A117416(3*n+1))`
-/

namespace A217028.P5071950657314070681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (Int.tmod (A135835 (n + 1)) (A117416 (3 * n + 1))).toNat

end

end A217028.P5071950657314070681

/-! ## A217028.P5406579356733680676

`A014190(A135835(n+1)%A321642(n))`
-/

namespace A217028.P5406579356733680676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (Int.tmod (A135835 (n + 1)) (A321642 n)).toNat

end

end A217028.P5406579356733680676

/-! ## A217028.P11070068561101567472

`A281116(A001008(n+3))+A221234(n+1)`
-/

namespace A217028.P11070068561101567472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A001008 (n + 3)).toNat + A221234 (n + 1)

end

end A217028.P11070068561101567472

/-! ## A217028.P8350606275276843018

`A014190(A135835(n+1))%A342118(n+1)`
-/

namespace A217028.P8350606275276843018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014190 (A135835 (n + 1)).toNat) (A342118 (n + 1))

end

end A217028.P8350606275276843018

/-!
# A217029: Array T(i,j) read by antidiagonals, where T(i,j) is the height of i/j, that is max(|m|,|n|) with m/n = i/j and gcd(m, n) = 1.

The programs for A217029, the canonical program `A217029.P14938499860737606038` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217029 has offset 1).

The definition of A217029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217029.P14938499860737606038

`A003990(n+1)/A003983(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A217029

/-- `A003990(n+1)/A003983(n+1)` -/
def P14938499860737606038.Spec : Prop :=
  ∀ n, P14938499860737606038.a n = (A217029 (n + 1) : ℚ)

end A217029

/-! ## A217029.P5059902454951131525

`A051125(n+1)/A003989(n+1)`
-/

namespace A217029.P5059902454951131525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051125 (n + 1) : ℚ) / (A003989 (n + 1) : ℚ)

end

end A217029.P5059902454951131525

namespace A217029

/-- `A051125(n+1)/A003989(n+1)` -/
def P5059902454951131525.Spec : Prop :=
  ∀ n, P5059902454951131525.a n = (A217029 (n + 1) : ℚ)

end A217029

/-! ## A217029.P14980867126914512027

`A109042(lt[0, A109042(n)])/A003983(n+1)`
-/

namespace A217029.P14980867126914512027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109042 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / (A003983 (n + 1) : ℚ)

end

end A217029.P14980867126914512027

namespace A217029

/-- `A109042(lt[0, A109042(n)])/A003983(n+1)` -/
def P14980867126914512027.Spec : Prop :=
  ∀ n, P14980867126914512027.a n = (A217029 (n + 1) : ℚ)

end A217029

/-! ## A217029.P4248122605436962691

`A051125(n+1)/gcd(A049581(n), A051125(n+1))`
-/

namespace A217029.P4248122605436962691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051125 (n + 1) : ℚ) / (Int.gcd (A049581 n) (A051125 (n + 1)) : ℚ)

end

end A217029.P4248122605436962691

namespace A217029

/-- `A051125(n+1)/gcd(A049581(n), A051125(n+1))` -/
def P4248122605436962691.Spec : Prop :=
  ∀ n, P4248122605436962691.a n = (A217029 (n + 1) : ℚ)

end A217029

/-! ## A217029.P8483828801063282112

`lcm(A131818(n+1), A193592(n))/A003983(n+1)`
-/

namespace A217029.P8483828801063282112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A131818 (n + 1)) (A193592 n) : ℚ) / (A003983 (n + 1) : ℚ)

end

end A217029.P8483828801063282112

namespace A217029

/-- `lcm(A131818(n+1), A193592(n))/A003983(n+1)` -/
def P8483828801063282112.Spec : Prop :=
  ∀ n, P8483828801063282112.a n = (A217029 (n + 1) : ℚ)

end A217029

/-! ## A217029.P4042027540356708611

`lcm(A128227(n), A257522(n+1))/A003983(n+1)`
-/

namespace A217029.P4042027540356708611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A128227 n) (A257522 (n + 1)) : ℚ) / (A003983 (n + 1) : ℚ)

end

end A217029.P4042027540356708611

namespace A217029

/-- `lcm(A128227(n), A257522(n+1))/A003983(n+1)` -/
def P4042027540356708611.Spec : Prop :=
  ∀ n, P4042027540356708611.a n = (A217029 (n + 1) : ℚ)

end A217029

/-! ## A217029.P13734804564217928316

`(A003057(n+2)-A003983(n+1))/A003989(n+1)`
-/

namespace A217029.P13734804564217928316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) - A003983 (n + 1) : ℚ) / (A003989 (n + 1) : ℚ)

end

end A217029.P13734804564217928316

namespace A217029

/-- `(A003057(n+2)-A003983(n+1))/A003989(n+1)` -/
def P13734804564217928316.Spec : Prop :=
  ∀ n, P13734804564217928316.a n = (A217029 (n + 1) : ℚ)

end A217029

/-! ## A217029.P15512269121195845037

`A003991(n+1)/(A003983(n+1)*A003989(n+1))`
-/

namespace A217029.P15512269121195845037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / (A003983 (n + 1) * A003989 (n + 1) : ℚ)

end

end A217029.P15512269121195845037

namespace A217029

/-- `A003991(n+1)/(A003983(n+1)*A003989(n+1))` -/
def P15512269121195845037.Spec : Prop :=
  ∀ n, P15512269121195845037.a n = (A217029 (n + 1) : ℚ)

end A217029

/-! ## A217029.P4734983051138398114

`lcm(A003983(n+1), A051125(n+1))/A003983(n+1)`
-/

namespace A217029.P4734983051138398114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A003983 (n + 1)) (A051125 (n + 1)) : ℚ) / (A003983 (n + 1) : ℚ)

end

end A217029.P4734983051138398114

namespace A217029

/-- `lcm(A003983(n+1), A051125(n+1))/A003983(n+1)` -/
def P4734983051138398114.Spec : Prop :=
  ∀ n, P4734983051138398114.a n = (A217029 (n + 1) : ℚ)

end A217029

/-! ## A217029.P2032477342956949679

`A099246(A131816(n))`
-/

namespace A217029.P2032477342956949679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 (A131816 n).toNat

end

end A217029.P2032477342956949679

namespace A217029

/-- `A099246(A131816(n))` -/
def P2032477342956949679.Spec : Prop :=
  ∀ n, P2032477342956949679.a n = A217029 (n + 1)

end A217029

/-!
# A217031: Minimum value of A173419(k*n!) over nonzero k.

The programs for A217031, there is no canonical definition to state claims against.
-/

/-! ## A217031.P8099677968316792032

`comp[A303704(n+1)+A000120(n)]-n`
-/

namespace A217031.P8099677968316792032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303704 (n + 1) + A000120 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A217031.P8099677968316792032

/-! ## A217031.P14542933101375320375

`A347697(A250120(n)-A000095(n+1))`
-/

namespace A217031.P14542933101375320375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A250120 n - A000095 (n + 1)).toNat

end

end A217031.P14542933101375320375

/-! ## A217031.P3304397487895610100

`A347697(A313237(n)-A000095(n+1))`
-/

namespace A217031.P3304397487895610100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A313237 n - A000095 (n + 1)).toNat

end

end A217031.P3304397487895610100

/-! ## A217031.P739855223458734803

`A003056(eq[A069158(n+1), A101675(n)])`
-/

namespace A217031.P739855223458734803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A217031.P739855223458734803

/-! ## A217031.P11165647375331458151

`A003056(eq[A074754(n+1), A205565(n)])`
-/

namespace A217031.P11165647375331458151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A217031.P11165647375331458151

/-!
# A217032: Minimum number of steps to reach n! starting from 1 and using the operations of multiplication, addition, or subtraction.

The programs for A217032, there is no canonical definition to state claims against.
-/

/-! ## A217032.P10879973767042177989

`ceil(sqrt(∪[13*(n+1), n^3]))`
-/

namespace A217032.P10879973767042177989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℝ)⌉

end

end A217032.P10879973767042177989

/-! ## A217032.P7905978229483273235

`ceil(log2(A066186(n)+(1-n)²+n))`
-/

namespace A217032.P7905978229483273235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A066186 n + ((1 - (n : ℤ)) ^ 2 + (n : ℤ)) : ℝ)⌉

end

end A217032.P7905978229483273235

/-! ## A217032.P11101868817381415110

`A277903(A176039(n+1))`
-/

namespace A217032.P11101868817381415110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (A176039 (n + 1)).toNat

end

end A217032.P11101868817381415110

/-! ## A217032.P3034937507057413063

`A025561(or(1, A080036(n)))`
-/

namespace A217032.P3034937507057413063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025561 (Int.lor 1 (A080036 n)).toNat

end

end A217032.P3034937507057413063

/-! ## A217032.P12180881300100480177

`A061420(n*A025766(n))`
-/

namespace A217032.P12180881300100480177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061420 ((n : ℤ) * A025766 n).toNat

end

end A217032.P12180881300100480177

/-!
# A217033: Expansion of e.g.f. 1/(1 - log(1 - log(1-x))).

The programs for A217033, there is no canonical definition to state claims against.
-/

/-! ## A217033.P3795875739424306216

`A008619(A193714(n*a(n-1)))` with `a(0)=1`
-/

namespace A217033.P3795875739424306216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008619 (A193714 ((n : ℤ) * a (n - 1)).toNat).toNat

end

end A217033.P3795875739424306216

/-! ## A217033.P3309621599629284899

`A002264(A287775(2*n*a(n-1)))` with `a(0)=1`
-/

namespace A217033.P3309621599629284899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002264 (A287775 (2 * ((n : ℤ) * a (n - 1))).toNat).toNat

end

end A217033.P3309621599629284899

/-! ## A217033.P3595435935688344098

`floor(A287775(a(n-1)*A004277(n))/3)` with `a(0)=1`
-/

namespace A217033.P3595435935688344098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(A287775 (a (n - 1) * A004277 n).toNat : ℚ) / 3⌋

end

end A217033.P3595435935688344098

/-!
# A217034: E.g.f.: 1-log(1-log(1-log(1-x))).

The programs for A217034, there is no canonical definition to state claims against.
-/

/-! ## A217034.P9932538575368589120

`A292375(A062439(n))`
-/

namespace A217034.P9932538575368589120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292375 (A062439 n).toNat

end

end A217034.P9932538575368589120

/-! ## A217034.P16991474877691293468

`A292375(A000040(n!))`
-/

namespace A217034.P16991474877691293468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292375 (A000040 (Nat.factorial n)).toNat

end

end A217034.P16991474877691293468

/-! ## A217034.P7222345807799273236

`A267097(A062944(n+1)!)+1`
-/

namespace A217034.P7222345807799273236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267097 (Nat.factorial (A062944 (n + 1)).toNat) + 1

end

end A217034.P7222345807799273236

/-!
# A217035: Generalized cuban primes (A007645) which are also Class 1- (or Pierpont) primes (A005109).

The programs for A217035, there is no canonical definition to state claims against.
-/

/-! ## A217035.P2488093100537932970

`A058383(A028310(n))-A000038(n)²`
-/

namespace A217035.P2488093100537932970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058383 (A028310 n).toNat - A000038 n ^ 2

end

end A217035.P2488093100537932970

/-! ## A217035.P16021625951074394411

`floor(A058383(A028310(n))/A054977(n))`
-/

namespace A217035.P16021625951074394411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A058383 (A028310 n).toNat : ℚ) / (A054977 n : ℚ)⌋

end

end A217035.P16021625951074394411

/-! ## A217035.P5404866093084995945

`A058383(A028310(n))-A080414(C(2, n+2))`
-/

namespace A217035.P5404866093084995945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058383 (A028310 n).toNat - A080414 (Nat.choose 2 (n + 2))

end

end A217035.P5404866093084995945

/-! ## A217035.P10956166902416027664

`A058383(A028310(n))-A048298(A001358(n+1))`
-/

namespace A217035.P10956166902416027664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058383 (A028310 n).toNat - A048298 (A001358 (n + 1)).toNat

end

end A217035.P10956166902416027664

/-! ## A217035.P8828843887715052670

`A058383(A028310(n))-4*(A129952(n)-A057711(n))`
-/

namespace A217035.P8828843887715052670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058383 (A028310 n).toNat - 4 * (A129952 n - A057711 n)

end

end A217035.P8828843887715052670

/-! ## A217035.P8480574953496852157

`A058383(A028310(n))-A048298(A073123(n+1))`
-/

namespace A217035.P8480574953496852157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058383 (A028310 n).toNat - A048298 (A073123 (n + 1)).toNat

end

end A217035.P8480574953496852157

/-! ## A217035.P11696518182152400428

`record[A058383(A003602(n+1))%A002011(n)]`
-/

namespace A217035.P11696518182152400428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058383 (A003602 (n + 1)).toNat) (A002011 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217035.P11696518182152400428

/-! ## A217035.P13021841438756319371

`A058383(A028310(n))%A001248(A008121(n))`
-/

namespace A217035.P13021841438756319371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058383 (A028310 n).toNat) (A001248 (A008121 n).toNat)

end

end A217035.P13021841438756319371

/-!
# A217036: Term preceding the first zero in the Fibonacci numbers modulo n.

The programs for A217036, there is no canonical definition to state claims against.
-/

/-! ## A217036.P897833377214555541

`A000045(A213648(n+2))%(n+2)`
-/

namespace A217036.P897833377214555541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A213648 (n + 2)).toNat) (n + 2 : ℤ)

end

end A217036.P897833377214555541

/-! ## A217036.P8792996821831433391

`A212804(A001177(n+2))%(n+2)`
-/

namespace A217036.P8792996821831433391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212804 (A001177 (n + 2)).toNat) (n + 2 : ℤ)

end

end A217036.P8792996821831433391

/-! ## A217036.P13338700895426153904

`A000032(A001177(n+2)+1)%(n+2)`
-/

namespace A217036.P13338700895426153904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (A001177 (n + 2) + 1).toNat) (n + 2 : ℤ)

end

end A217036.P13338700895426153904

/-! ## A217036.P10376551683069392543

`A000045(A001177(n+2)+1)%(n+2)`
-/

namespace A217036.P10376551683069392543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A001177 (n + 2) + 1).toNat) (n + 2 : ℤ)

end

end A217036.P10376551683069392543

/-! ## A217036.P6426276304237164282

`A000204(A001177(n+2)+1)%(n+2)`
-/

namespace A217036.P6426276304237164282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000204 (A001177 (n + 2) + 1).toNat) (n + 2 : ℤ)

end

end A217036.P6426276304237164282

/-! ## A217036.P9115515525332851312

`A136376(A213648(n+2))%A020725(n+1)`
-/

namespace A217036.P9115515525332851312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136376 (A213648 (n + 2)).toNat) (A020725 (n + 1))

end

end A217036.P9115515525332851312

/-!
# A217038: Number of powerful numbers < n.

The programs for A217038, the canonical program `A217038.P18316143875162456827` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217038 has offset 1).

The definition of A217038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217038.P2226467351910158696

`∑[char[(1+n)*∏{p}[n+1, #]]]`
-/

namespace A217038.P2226467351910158696
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + n) * (∏ p ∈ Nat.primeFactors (f3 n), p)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217038.P2226467351910158696

namespace A217038

/-- `∑[char[(1+n)*∏{p}[n+1, #]]]` -/
def P2226467351910158696.Spec : Prop :=
  ∀ n, (P2226467351910158696.a n : ℤ) = A217038 (n + 1)

end A217038

/-! ## A217038.P14309247933255807429

`∑[char[A001694(1+n)]]`
-/

namespace A217038.P14309247933255807429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (1 + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217038.P14309247933255807429

namespace A217038

/-- `∑[char[A001694(1+n)]]` -/
def P14309247933255807429.Spec : Prop :=
  ∀ n, (P14309247933255807429.a n : ℤ) = A217038 (n + 1)

end A217038

/-! ## A217038.P5255389369923391303

`∑[char[A064549(n+1)]]`
-/

namespace A217038.P5255389369923391303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217038.P5255389369923391303

namespace A217038

/-- `∑[char[A064549(n+1)]]` -/
def P5255389369923391303.Spec : Prop :=
  ∀ n, (P5255389369923391303.a n : ℤ) = A217038 (n + 1)

end A217038

/-! ## A217038.P18316143875162456827

`A112526(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A217038

/-- `A112526(n)+a(n-1)` -/
def P18316143875162456827.Spec : Prop :=
  ∀ n, P18316143875162456827.a n = A217038 (n + 1)

theorem P18316143875162456827.correct : P18316143875162456827.Spec := by
  intro n
  simp only [A217038, Nat.add_sub_cancel]

end A217038

/-! ## A217038.P3703128255595413255

`∑[char[A297075(2*n+1)]]`
-/

namespace A217038.P3703128255595413255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297075 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217038.P3703128255595413255

namespace A217038

/-- `∑[char[A297075(2*n+1)]]` -/
def P3703128255595413255.Spec : Prop :=
  ∀ n, (P3703128255595413255.a n : ℤ) = A217038 (n + 1)

end A217038

/-! ## A217038.P14195015465442439101

`∑[char[(n+1)*A007947(n+1)]]`
-/

namespace A217038.P14195015465442439101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007947 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217038.P14195015465442439101

namespace A217038

/-- `∑[char[(n+1)*A007947(n+1)]]` -/
def P14195015465442439101.Spec : Prop :=
  ∀ n, (P14195015465442439101.a n : ℤ) = A217038 (n + 1)

end A217038

/-! ## A217038.P11687395484989033702

`∑[A112526(n+1)]-A112526(n+1)`
-/

namespace A217038.P11687395484989033702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A112526 (n + 1)

end

end A217038.P11687395484989033702

namespace A217038

/-- `∑[A112526(n+1)]-A112526(n+1)` -/
def P11687395484989033702.Spec : Prop :=
  ∀ n, P11687395484989033702.a n = A217038 (n + 1)

end A217038

/-! ## A217038.P11304576420524587319

`∑[abs(A307423(n+1))]-A307423(n+1)²`
-/

namespace A217038.P11304576420524587319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307423 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A307423 (n + 1) ^ 2

end

end A217038.P11304576420524587319

namespace A217038

/-- `∑[abs(A307423(n+1))]-A307423(n+1)²` -/
def P11304576420524587319.Spec : Prop :=
  ∀ n, P11304576420524587319.a n = A217038 (n + 1)

end A217038

/-! ## A217038.P7487845241472722526

`∑[abs(A355683(n+1))]-A355683(n+1)²`
-/

namespace A217038.P7487845241472722526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355683 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A355683 (n + 1) ^ 2

end

end A217038.P7487845241472722526

namespace A217038

/-- `∑[abs(A355683(n+1))]-A355683(n+1)²` -/
def P7487845241472722526.Spec : Prop :=
  ∀ n, P7487845241472722526.a n = A217038 (n + 1)

end A217038

/-! ## A217038.P519964638435741055

`∑[abs(A355684(n+1))]-A355684(n+1)²`
-/

namespace A217038.P519964638435741055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355684 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A355684 (n + 1) ^ 2

end

end A217038.P519964638435741055

namespace A217038

/-- `∑[abs(A355684(n+1))]-A355684(n+1)²` -/
def P519964638435741055.Spec : Prop :=
  ∀ n, P519964638435741055.a n = A217038 (n + 1)

end A217038

/-! ## A217038.P3793980938688019267

`∑[char[A057521(n+1)]]`
-/

namespace A217038.P3793980938688019267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217038.P3793980938688019267

namespace A217038

/-- `∑[char[A057521(n+1)]]` -/
def P3793980938688019267.Spec : Prop :=
  ∀ n, (P3793980938688019267.a n : ℤ) = A217038 (n + 1)

end A217038

/-! ## A217038.P11871577539612606675

`∑[char[A197863(n+1)]]`
-/

namespace A217038.P11871577539612606675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197863 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217038.P11871577539612606675

namespace A217038

/-- `∑[char[A197863(n+1)]]` -/
def P11871577539612606675.Spec : Prop :=
  ∀ n, (P11871577539612606675.a n : ℤ) = A217038 (n + 1)

end A217038

/-! ## A217038.P12917994297608301197

`∑[A140579(3*n+2)^A286852(n)]`
-/

namespace A217038.P12917994297608301197
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140579 (3 * n + 2) : ℚ) ^ (A286852 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217038.P12917994297608301197

namespace A217038

/-- `∑[A140579(3*n+2)^A286852(n)]` -/
def P12917994297608301197.Spec : Prop :=
  ∀ n, P12917994297608301197.a n = (A217038 (n + 1) : ℚ)

end A217038

/-! ## A217038.P9672091822464938032

`∑[char[A011264(n+1)]]`
-/

namespace A217038.P9672091822464938032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011264 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217038.P9672091822464938032

namespace A217038

/-- `∑[char[A011264(n+1)]]` -/
def P9672091822464938032.Spec : Prop :=
  ∀ n, (P9672091822464938032.a n : ℤ) = A217038 (n + 1)

end A217038

/-! ## A217038.P7716114027139340516

`∑[char[A008477(n+1)]]`
-/

namespace A217038.P7716114027139340516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008477 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217038.P7716114027139340516

namespace A217038

/-- `∑[char[A008477(n+1)]]` -/
def P7716114027139340516.Spec : Prop :=
  ∀ n, (P7716114027139340516.a n : ℤ) = A217038 (n + 1)

end A217038

/-!
# A217039: Primes having only {4, 5, 7} as digits.

The programs for A217039, there is no canonical definition to state claims against.
-/

/-! ## A217039.P557921635117235864

`∩[A386070(n+1), A386190(n+1)]`
-/

namespace A217039.P557921635117235864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217039.P557921635117235864

/-! ## A217039.P14458825386072794401

`∩[A386070(n+1), A386188(n+1)]`
-/

namespace A217039.P14458825386072794401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217039.P14458825386072794401

/-! ## A217039.P13448454102652300441

`∩[A386188(n+1), A386190(n+1)]`
-/

namespace A217039.P13448454102652300441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217039.P13448454102652300441

/-! ## A217039.P7323472610561450464

`∩[A386070(n+1), A386153(n+1)]`
-/

namespace A217039.P7323472610561450464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217039.P7323472610561450464

/-! ## A217039.P16003169557597103162

`∩[A386153(n+1), A386188(n+1)]`
-/

namespace A217039.P16003169557597103162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217039.P16003169557597103162

/-! ## A217039.P11631694319234617566

`∩[A386153(n+1), A386190(n+1)]`
-/

namespace A217039.P11631694319234617566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217039.P11631694319234617566

/-! ## A217039.P10098628051388073536

`∩[A386070(n+1), A386191(n+1)]`
-/

namespace A217039.P10098628051388073536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217039.P10098628051388073536

/-! ## A217039.P2738731825025290234

`∩[A386153(n+1), A386191(n+1)]`
-/

namespace A217039.P2738731825025290234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217039.P2738731825025290234

/-! ## A217039.P9244787027162979249

`∩[A386188(n+1), A386191(n+1)]`
-/

namespace A217039.P9244787027162979249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217039.P9244787027162979249

/-! ## A217039.P2247128319867542799

`∩[A386190(n+1), A386191(n+1)]`
-/

namespace A217039.P2247128319867542799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217039.P2247128319867542799

/-! ## A217039.P486979798702276082

`∩[A386070(n+1), A386120(n+1)]`
-/

namespace A217039.P486979798702276082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217039.P486979798702276082

/-! ## A217039.P17344796401028137239

`∩[A386070(n+1), A386170(n+1)]`
-/

namespace A217039.P17344796401028137239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217039.P17344796401028137239

/-! ## A217039.P12122638059559770865

`∩[A386120(n+1), A386153(n+1)]`
-/

namespace A217039.P12122638059559770865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217039.P12122638059559770865

/-! ## A217039.P11775005175865334433

`∩[A386120(n+1), A386170(n+1)]`
-/

namespace A217039.P11775005175865334433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217039.P11775005175865334433

/-! ## A217039.P3290057598904955073

`∩[A386120(n+1), A386188(n+1)]`
-/

namespace A217039.P3290057598904955073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217039.P3290057598904955073

/-! ## A217039.P13469090348888015422

`∩[A386120(n+1), A386190(n+1)]`
-/

namespace A217039.P13469090348888015422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217039.P13469090348888015422

/-! ## A217039.P8436953313936116771

`∩[A386120(n+1), A386191(n+1)]`
-/

namespace A217039.P8436953313936116771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217039.P8436953313936116771

/-! ## A217039.P18398822790302901729

`∩[A386153(n+1), A386170(n+1)]`
-/

namespace A217039.P18398822790302901729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217039.P18398822790302901729

/-! ## A217039.P4610478083418169572

`∩[A386170(n+1), A386188(n+1)]`
-/

namespace A217039.P4610478083418169572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217039.P4610478083418169572

/-! ## A217039.P907946348692109112

`∩[A386170(n+1), A386190(n+1)]`
-/

namespace A217039.P907946348692109112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217039.P907946348692109112

/-!
# A217040: Bases b in which the increasing concatenation of all primes smaller than b forms a prime number.

The programs for A217040, there is no canonical definition to state claims against.
-/

/-! ## A217040.P7356210154426328928

`record[A285068(A018157(n))+A127483(n+1)]`
-/

namespace A217040.P7356210154426328928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285068 (A018157 n).toNat + A127483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217040.P7356210154426328928

/-!
# A217041: G.f. satisfies: A(x) = Sum_{n>=0} x^n * (A(x)^n + 1/A(x)^n)^n.

The programs for A217041, there is no canonical definition to state claims against.
-/

/-! ## A217041.P12003232311938846477

`lcm(ceil(2^(n-1)), A194062(2^n))`
-/

namespace A217041.P12003232311938846477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (A194062 (2 ^ n))

end

end A217041.P12003232311938846477

/-! ## A217041.P13136678936192667909

`A055034(A097174(n+1)+(n+1)²)`
-/

namespace A217041.P13136678936192667909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A097174 (n + 1) + ((n + 1) ^ 2 : ℤ)).toNat

end

end A217041.P13136678936192667909

/-!
# A217042: G.f.: 1 = Sum_{n>=0} a(n) * x^n * Sum_{k=0..2*n+1} binomial(2*n+1,k)^2 * (-x)^k.

The programs for A217042, there is no canonical definition to state claims against.
-/

/-! ## A217042.P16812830403861599521

`A065475(A152282(n)*A212342(n))`
-/

namespace A217042.P16812830403861599521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A152282 n * A212342 n).toNat

end

end A217042.P16812830403861599521

/-!
# A217044: Primes that remain prime when a single "2" digit is inserted between any two adjacent decimal digits.

The programs for A217044, there is no canonical definition to state claims against.
-/

/-! ## A217044.P830275496482409399

`p?[A304247(n+9)]`
-/

namespace A217044.P830275496482409399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304247 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217044.P830275496482409399

/-! ## A217044.P1754651998467311301

`∩[A049593(n+1), A304247(n+1)]`
-/

namespace A217044.P1754651998467311301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217044.P1754651998467311301

/-! ## A217044.P14699377177021446180

`∩[A157996(n+1), A304247(n+1)]`
-/

namespace A217044.P14699377177021446180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217044.P14699377177021446180

/-! ## A217044.P17377672885327393804

`∩[A162790(n+1), A304247(n+1)]`
-/

namespace A217044.P17377672885327393804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217044.P17377672885327393804

/-! ## A217044.P12321509503946564825

`∩[A162792(n+1), A304247(n+1)]`
-/

namespace A217044.P12321509503946564825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217044.P12321509503946564825

/-! ## A217044.P17400213508763011186

`record[∑{p}[A304247(n+11), A000265(#)]]`
-/

namespace A217044.P17400213508763011186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304247 (n + 11)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A000265 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217044.P17400213508763011186

/-!
# A217045: Primes that remain prime when a single "4" digit is inserted between any two adjacent decimal digits.

The programs for A217045, there is no canonical definition to state claims against.
-/

/-! ## A217045.P15124986834768960171

`p?[A332261(n+9)]`
-/

namespace A217045.P15124986834768960171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332261 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217045.P15124986834768960171

/-! ## A217045.P8172835503272891328

`∩[A164318(n+1), A332261(n+1)]`
-/

namespace A217045.P8172835503272891328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217045.P8172835503272891328

/-! ## A217045.P5613649680813225135

`∩[A059500(n+1), A332261(n+1)]`
-/

namespace A217045.P5613649680813225135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217045.P5613649680813225135

/-! ## A217045.P1054254778893308729

`∩[A067833(n+1), A332261(n+1)]`
-/

namespace A217045.P1054254778893308729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217045.P1054254778893308729

/-! ## A217045.P7106210456771308433

`∩[A099184(n+2), A332261(n+1)]`
-/

namespace A217045.P7106210456771308433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217045.P7106210456771308433

/-! ## A217045.P4010694135178302728

`∩[A071621(n+1), A332261(n+1)]`
-/

namespace A217045.P4010694135178302728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217045.P4010694135178302728

/-! ## A217045.P5256476512031280588

`∩[A157996(n+1), A332261(n+1)]`
-/

namespace A217045.P5256476512031280588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217045.P5256476512031280588

/-! ## A217045.P2548089979776326906

`∩[A162790(n+1), A332261(n+1)]`
-/

namespace A217045.P2548089979776326906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217045.P2548089979776326906

/-! ## A217045.P2489389586811873239

`∩[A162792(n+1), A332261(n+1)]`
-/

namespace A217045.P2489389586811873239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217045.P2489389586811873239

/-! ## A217045.P6408665628579945095

`∩[A286042(n+5), A332261(n+1)]`
-/

namespace A217045.P6408665628579945095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286042 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217045.P6408665628579945095

/-!
# A217046: Primes that remain prime when a single "6" digit is inserted between any two adjacent decimal digits.

The programs for A217046, there is no canonical definition to state claims against.
-/

/-! ## A217046.P14290042260665142365

`∩[A050716(n+1), A346724(n+1)]`
-/

namespace A217046.P14290042260665142365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217046.P14290042260665142365

/-!
# A217047: Primes that remain prime when a single "8" digit is inserted between any two adjacent digits.

The programs for A217047, there is no canonical definition to state claims against.
-/

/-! ## A217047.P13175011537550976520

`A078861(∑[n+2]-1)`
-/

namespace A217047.P13175011537550976520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078861 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A217047.P13175011537550976520

/-! ## A217047.P15402757569144210474

`A302568(A302568(n+1)+∑[∑{d}[n, #]+1+n])`
-/

namespace A217047.P15402757569144210474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302568 (A302568 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A217047.P15402757569144210474

/-!
# A217048: Semiprimes using only the curved digits 0, 3, 6, 8 and 9.

The programs for A217048, the canonical program `A217048.P2019170486783892809` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217048 has offset 1).

The definition of A217048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 458 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217048.P5392876597327947100

`∩[A072960(n+1), A242756(n+1)]`
-/

namespace A217048.P5392876597327947100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217048.P5392876597327947100

namespace A217048

/-- `∩[A072960(n+1), A242756(n+1)]` -/
def P5392876597327947100.Spec : Prop :=
  ∀ n, (P5392876597327947100.a n : ℤ) = A217048 (n + 1)

end A217048

/-! ## A217048.P2019170486783892809

`∩[A001358(n+1), A072960(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A217048

/-- `∩[A001358(n+1), A072960(n+1)]` -/
def P2019170486783892809.Spec : Prop :=
  ∀ n, (P2019170486783892809.a n : ℤ) = A217048 (n + 1)

theorem P2019170486783892809.correct : P2019170486783892809.Spec := by
  intro n
  simp only [A217048, Nat.add_sub_cancel]

end A217048

/-! ## A217048.P1892048283879560894

`filter[A072960(n+2), A064911(#)]`
-/

namespace A217048.P1892048283879560894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A217048.P1892048283879560894

namespace A217048

/-- `filter[A072960(n+2), A064911(#)]` -/
def P1892048283879560894.Spec : Prop :=
  ∀ n, P1892048283879560894.a n = A217048 (n + 1)

end A217048

/-! ## A217048.P4977260039883862762

`∩[A072960(n+1), A176540(n+1)]`
-/

namespace A217048.P4977260039883862762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217048.P4977260039883862762

namespace A217048

/-- `∩[A072960(n+1), A176540(n+1)]` -/
def P4977260039883862762.Spec : Prop :=
  ∀ n, (P4977260039883862762.a n : ℤ) = A217048 (n + 1)

end A217048

/-! ## A217048.P14969980350480349407

`∩[A222234(A001744(n+1)), A242756(n+1)]`
-/

namespace A217048.P14969980350480349407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A001744 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217048.P14969980350480349407

namespace A217048

/-- `∩[A222234(A001744(n+1)), A242756(n+1)]` -/
def P14969980350480349407.Spec : Prop :=
  ∀ n, (P14969980350480349407.a n : ℤ) = A217048 (n + 1)

end A217048

/-! ## A217048.P8325052784823992658

`∩[A137386(n+1), A242756(n+1)]`
-/

namespace A217048.P8325052784823992658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217048.P8325052784823992658

namespace A217048

/-- `∩[A137386(n+1), A242756(n+1)]` -/
def P8325052784823992658.Spec : Prop :=
  ∀ n, (P8325052784823992658.a n : ℤ) = A217048 (n + 1)

end A217048

/-!
# A217050: Number of primes of n base-3 digits such that each of the 3 digits (0, 1, 2) appears exactly a prime number of times.

The programs for A217050, there is no canonical definition to state claims against.
-/

/-! ## A217050.P14160975238989059625

`A004524(C(floor((n*floor(n/2)+1)/2), n))`
-/

namespace A217050.P14160975238989059625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Nat.choose ⌊((n : ℤ) * ⌊(n : ℚ) / 2⌋ + 1 : ℚ) / 2⌋.toNat n)

end

end A217050.P14160975238989059625

/-! ## A217050.P17650564692238984792

`A085393(A129949(n)+5)`
-/

namespace A217050.P17650564692238984792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085393 (A129949 n + 5).toNat

end

end A217050.P17650564692238984792

/-! ## A217050.P10315462063281455442

`A092213(5*A349053(n))`
-/

namespace A217050.P10315462063281455442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092213 (5 * A349053 n).toNat

end

end A217050.P10315462063281455442

/-! ## A217050.P13032673284737821878

`∑{d}[A065714(A053625(n)), #]`
-/

namespace A217050.P13032673284737821878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065714 (A053625 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A217050.P13032673284737821878

/-!
# A217052: a(n) = 3*a(n-1) + 24*a(n-2) + a(n-3), with a(0)=a(1)=1, and a(2)=19.

The programs for A217052, the canonical program `A217052.P14221540265742383581` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217052 has offset 0).

The definition of A217052 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+24*a(n-2)+a(n-3)` (program `A217052.P14221540265742383581`, by `A217052.P14221540265742383581.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217052.P3347922256510079140

`ogf((1-2x-8x^2)/(1-3x-24x^2-x^3))`
-/

namespace A217052.P3347922256510079140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -8] [1, -3, -24, -1] n

end

end A217052.P3347922256510079140

namespace A217052

/-- `ogf((1-2x-8x^2)/(1-3x-24x^2-x^3))` -/
def P3347922256510079140.Spec : Prop :=
  ∀ n, P3347922256510079140.a n = A217052 n

end A217052

/-! ## A217052.P14221540265742383581

`3*a(n-1)+24*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=19`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217052

/-- `3*a(n-1)+24*a(n-2)+a(n-3)` -/
def P14221540265742383581.Spec : Prop :=
  ∀ n, (P14221540265742383581.a n : ℤ) = A217052 n

theorem P14221540265742383581.correct : P14221540265742383581.Spec := by
  intro n
  simp only [A217052]

end A217052

/-! ## A217052.P15632010435340084535

`A188048(3*n)`
-/

namespace A217052.P15632010435340084535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (3 * n)

end

end A217052.P15632010435340084535

namespace A217052

/-- `A188048(3*n)` -/
def P15632010435340084535.Spec : Prop :=
  ∀ n, P15632010435340084535.a n = A217052 n

end A217052

/-! ## A217052.P55742049985202668

`A187497(9*n+1)`
-/

namespace A217052.P55742049985202668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (9 * n + 1)

end

end A217052.P55742049985202668

namespace A217052

/-- `A187497(9*n+1)` -/
def P55742049985202668.Spec : Prop :=
  ∀ n, P55742049985202668.a n = A217052 n

end A217052

/-! ## A217052.P11763602514939442527

`A188048(A008486(n))+A000007(n)`
-/

namespace A217052.P11763602514939442527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (A008486 n).toNat + A000007 n

end

end A217052.P11763602514939442527

namespace A217052

/-- `A188048(A008486(n))+A000007(n)` -/
def P11763602514939442527.Spec : Prop :=
  ∀ n, P11763602514939442527.a n = A217052 n

end A217052

/-! ## A217052.P6885793876240234087

`A188048(A008585(n))+A000007(n+1)`
-/

namespace A217052.P6885793876240234087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (A008585 n).toNat + A000007 (n + 1)

end

end A217052.P6885793876240234087

namespace A217052

/-- `A188048(A008585(n))+A000007(n+1)` -/
def P6885793876240234087.Spec : Prop :=
  ∀ n, P6885793876240234087.a n = A217052 n

end A217052

/-! ## A217052.P15441991563343149826

`A188048(A008585(n))^(1-A000007(n))`
-/

namespace A217052.P15441991563343149826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188048 (A008585 n).toNat : ℚ) ^ (1 - A000007 n : ℤ)

end

end A217052.P15441991563343149826

namespace A217052

/-- `A188048(A008585(n))^(1-A000007(n))` -/
def P15441991563343149826.Spec : Prop :=
  ∀ n, P15441991563343149826.a n = (A217052 n : ℚ)

end A217052

/-! ## A217052.P10165797426670533865

`abs(A215664(3*n))/3`
-/

namespace A217052.P10165797426670533865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A215664 (3 * n)| : ℚ) / 3

end

end A217052.P10165797426670533865

namespace A217052

/-- `abs(A215664(3*n))/3` -/
def P10165797426670533865.Spec : Prop :=
  ∀ n, P10165797426670533865.a n = (A217052 n : ℚ)

end A217052

/-!
# A217053: a(n) = 3*a(n-1) + 24*a(n-2) + a(n-3), with a(0) = 2, a(1) = 5, and a(2) = 62.

The programs for A217053, the canonical program `A217053.P11012374821487022235` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217053 has offset 0).

The definition of A217053 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+24*a(n-2)+a(n-3)` (program `A217053.P11012374821487022235`, by `A217053.P11012374821487022235.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217053.P10153422764794099191

`ogf((2-x-x^2)/(1-3x-24x^2-x^3))`
-/

namespace A217053.P10153422764794099191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -1] [1, -3, -24, -1] n

end

end A217053.P10153422764794099191

namespace A217053

/-- `ogf((2-x-x^2)/(1-3x-24x^2-x^3))` -/
def P10153422764794099191.Spec : Prop :=
  ∀ n, P10153422764794099191.a n = A217053 n

end A217053

/-! ## A217053.P11012374821487022235

`3*a(n-1)+24*a(n-2)+a(n-3)` with `a(0)=2, a(1)=5, a(2)=62`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217053

/-- `3*a(n-1)+24*a(n-2)+a(n-3)` -/
def P11012374821487022235.Spec : Prop :=
  ∀ n, (P11012374821487022235.a n : ℤ) = A217053 n

theorem P11012374821487022235.correct : P11012374821487022235.Spec := by
  intro n
  simp only [A217053]

end A217053

/-! ## A217053.P1414727640379868947

`Δ[A217069(n)]`
-/

namespace A217053.P1414727640379868947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217053.P1414727640379868947

namespace A217053

/-- `Δ[A217069(n)]` -/
def P1414727640379868947.Spec : Prop :=
  ∀ n, P1414727640379868947.a n = A217053 n

end A217053

/-! ## A217053.P15061862676463205407

`A188048(3*n+2)`
-/

namespace A217053.P15061862676463205407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (3 * n + 2)

end

end A217053.P15061862676463205407

namespace A217053

/-- `A188048(3*n+2)` -/
def P15061862676463205407.Spec : Prop :=
  ∀ n, P15061862676463205407.a n = A217053 n

end A217053

/-! ## A217053.P2870254344004104727

`∑[abs(A215664(3*n))]-1`
-/

namespace A217053.P2870254344004104727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215664 (3 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A217053.P2870254344004104727

namespace A217053

/-- `∑[abs(A215664(3*n))]-1` -/
def P2870254344004104727.Spec : Prop :=
  ∀ n, P2870254344004104727.a n = A217053 n

end A217053

/-! ## A217053.P17958117562865494861

`A187497(2*n+7*(n+1))`
-/

namespace A217053.P17958117562865494861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (2 * n + 7 * (n + 1))

end

end A217053.P17958117562865494861

namespace A217053

/-- `A187497(2*n+7*(n+1))` -/
def P17958117562865494861.Spec : Prop :=
  ∀ n, P17958117562865494861.a n = A217053 n

end A217053

/-! ## A217053.P16847985917687685924

`record[A188048(A014682(n+1))]`
-/

namespace A217053.P16847985917687685924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (A014682 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217053.P16847985917687685924

namespace A217053

/-- `record[A188048(A014682(n+1))]` -/
def P16847985917687685924.Spec : Prop :=
  ∀ n, P16847985917687685924.a n = A217053 n

end A217053

/-! ## A217053.P11571034765180420941

`A217069(n+1)-A217069(n)`
-/

namespace A217053.P11571034765180420941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217069 (n + 1) - A217069 n

end

end A217053.P11571034765180420941

namespace A217053

/-- `A217069(n+1)-A217069(n)` -/
def P11571034765180420941.Spec : Prop :=
  ∀ n, P11571034765180420941.a n = A217053 n

end A217053

/-! ## A217053.P3106835012762518314

`A188048(A008486(n)+2)+A000007(n)`
-/

namespace A217053.P3106835012762518314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (A008486 n + 2).toNat + A000007 n

end

end A217053.P3106835012762518314

namespace A217053

/-- `A188048(A008486(n)+2)+A000007(n)` -/
def P3106835012762518314.Spec : Prop :=
  ∀ n, P3106835012762518314.a n = A217053 n

end A217053

/-! ## A217053.P9556668073583027361

`Δ[A094649(3*n+1)/9]`
-/

namespace A217053.P9556668073583027361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094649 (3 * n + 1) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217053.P9556668073583027361

namespace A217053

/-- `Δ[A094649(3*n+1)/9]` -/
def P9556668073583027361.Spec : Prop :=
  ∀ n, P9556668073583027361.a n = (A217053 n : ℚ)

end A217053

/-!
# A217055: Prime numbers which are conductors of elliptic curves.

The programs for A217055, there is no canonical definition to state claims against.
-/

/-! ## A217055.P15520033084625864940

`p?[A005788(n+1)]`
-/

namespace A217055.P15520033084625864940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217055.P15520033084625864940

/-! ## A217055.P3911853736408477496

`filter[A005788(n+1), A010051(#)]`
-/

namespace A217055.P3911853736408477496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A217055.P3911853736408477496

/-! ## A217055.P15442553187308637297

`record[A006530(A005788(ceil((n+1)/3)))]`
-/

namespace A217055.P15442553187308637297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005788 ⌈(n + 1 : ℚ) / 3⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217055.P15442553187308637297

/-! ## A217055.P9381345347215838381

`∩[A000040(n+1), A005788(n+1)]`
-/

namespace A217055.P9381345347215838381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217055.P9381345347215838381

/-! ## A217055.P16135338543435546094

`∩[A004139(n+1), A005788(n+1)]`
-/

namespace A217055.P16135338543435546094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217055.P16135338543435546094

/-! ## A217055.P55632704875080905

`∩[A005788(n+1), A006005(n+1)]`
-/

namespace A217055.P55632704875080905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217055.P55632704875080905

/-! ## A217055.P7239981124703118935

`∩[A005788(n+1), A008578(n+1)]`
-/

namespace A217055.P7239981124703118935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217055.P7239981124703118935

/-! ## A217055.P8537838945992426473

`∩[A005788(n+1), A045319(n+1)]`
-/

namespace A217055.P8537838945992426473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217055.P8537838945992426473

/-! ## A217055.P5792017479077715883

`∩[A005788(n+1), A045344(n+1)]`
-/

namespace A217055.P5792017479077715883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217055.P5792017479077715883

/-! ## A217055.P7668724499124241091

`∩[A005788(n+1), A046022(n+1)]`
-/

namespace A217055.P7668724499124241091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217055.P7668724499124241091

/-! ## A217055.P10993054880006691492

`∩[A005788(n+1), A051948(n+1)]`
-/

namespace A217055.P10993054880006691492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217055.P10993054880006691492

/-! ## A217055.P3222226444621064523

`∩[A005788(n+1), A065091(n+1)]`
-/

namespace A217055.P3222226444621064523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217055.P3222226444621064523

/-! ## A217055.P9162048418764828216

`∩[A005788(n+1), A066050(n+1)]`
-/

namespace A217055.P9162048418764828216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217055.P9162048418764828216

/-! ## A217055.P4877866782033668732

`∩[A005788(n+1), A067126(n+1)]`
-/

namespace A217055.P4877866782033668732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217055.P4877866782033668732

/-! ## A217055.P4654743938794904052

`∩[A005788(n+1), A083249(n+1)]`
-/

namespace A217055.P4654743938794904052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217055.P4654743938794904052

/-! ## A217055.P4069691887788157811

`∩[A140475(n+1), A005788(n+1)]`
-/

namespace A217055.P4069691887788157811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217055.P4069691887788157811

/-! ## A217055.P13486128296322092022

`∩[A161428(n+1), A005788(n+1)]`
-/

namespace A217055.P13486128296322092022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217055.P13486128296322092022

/-! ## A217055.P494301655822310464

`∩[A005788(n+1), A251595(n+1)]`
-/

namespace A217055.P494301655822310464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217055.P494301655822310464

/-! ## A217055.P13158780172717285922

`filter[A005788(n+1), A080339(#)]`
-/

namespace A217055.P13158780172717285922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A217055.P13158780172717285922

/-! ## A217055.P6846000647770898694

`filter[A005788(n+1), A080545(#)]`
-/

namespace A217055.P6846000647770898694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A217055.P6846000647770898694

/-!
# A217056: Highly composite numbers (A002182) which are the product of 4 consecutive integers (A052762).

The programs for A217056, there is no canonical definition to state claims against.
-/

/-! ## A217056.P13955055768153409055

`∩[(n+2)*n, A004778(n+1)]`
-/

namespace A217056.P13955055768153409055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217056.P13955055768153409055

/-! ## A217056.P8749409370158104582

`∩[n*4*(n+1), A066044(n+1)]`
-/

namespace A217056.P8749409370158104582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (4 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217056.P8749409370158104582

/-! ## A217056.P3546330892252005151

`∩[A004778(n+1), A005563(n)]`
-/

namespace A217056.P3546330892252005151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217056.P3546330892252005151

/-!
# A217057: Number of permutations in S_n containing exactly one increasing subsequence of length 4.

The programs for A217057, there is no canonical definition to state claims against.
-/

/-! ## A217057.P5669439410919522404

`A139273(n+3)%A003188(A327426(n))`
-/

namespace A217057.P5669439410919522404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139273 (n + 3)) (A003188 (A327426 n).toNat)

end

end A217057.P5669439410919522404

/-! ## A217057.P10714853732794529142

`floor(A326351(n)/25)`
-/

namespace A217057.P10714853732794529142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326351 n : ℚ) / 25⌋

end

end A217057.P10714853732794529142

/-! ## A217057.P11128867908240371952

`A340593(C(n+3, 7))`
-/

namespace A217057.P11128867908240371952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340593 (Nat.choose (n + 3) 7)

end

end A217057.P11128867908240371952

/-!
# A217058: Van der Waerden numbers w(j+2; t_0,t_1,...,t_{j-1}, 3, 4) with t_0 = t_1 = ... = t_{j-1} = 2.

The programs for A217058, there is no canonical definition to state claims against.
-/

/-! ## A217058.P13208812642837680116

`A254671(A180122(n+3))-(n+2)`
-/

namespace A217058.P13208812642837680116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254671 (A180122 (n + 3)).toNat - (n + 2 : ℤ)

end

end A217058.P13208812642837680116

/-! ## A217058.P6696170727379436288

`A125006(n+1)+A000120(A125050(n+5))`
-/

namespace A217058.P6696170727379436288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125006 (n + 1) + A000120 (A125050 (n + 5)).toNat

end

end A217058.P6696170727379436288

/-! ## A217058.P5351908413952068625

`A125008(n+1)+A000120(A125050(n+5))`
-/

namespace A217058.P5351908413952068625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125008 (n + 1) + A000120 (A125050 (n + 5)).toNat

end

end A217058.P5351908413952068625

/-!
# A217061: Expansion of e.g.f. exp(A006351(x)).

The programs for A217061, there is no canonical definition to state claims against.
-/

/-! ## A217061.P15841072657981841198

`A379458(abs(1-∑[n]))`
-/

namespace A217061.P15841072657981841198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379458 |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat

end

end A217061.P15841072657981841198

/-! ## A217061.P9922159452733014954

`A057354(A058892(n))+A032020(n)`
-/

namespace A217061.P9922159452733014954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A058892 n).toNat + A032020 n

end

end A217061.P9922159452733014954

/-!
# A217062: Primes that remain prime when a single "9" digit is inserted between any two adjacent digits.

The programs for A217062, there is no canonical definition to state claims against.
-/

/-! ## A217062.P14122309043140550282

`p?[A050719(A077168(n))]`
-/

namespace A217062.P14122309043140550282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050719 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217062.P14122309043140550282

/-! ## A217062.P10548281100165001080

`A118759(p?[A050719(n+1)])`
-/

namespace A217062.P10548281100165001080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A217062.P10548281100165001080

/-! ## A217062.P10376426450710143893

`A225655(p?[A050719(n+1)])`
-/

namespace A217062.P10376426450710143893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225655 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A217062.P10376426450710143893

/-! ## A217062.P2994017453004090629

`record[A217581(A050719(n+1)²)]`
-/

namespace A217062.P2994017453004090629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A050719 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217062.P2994017453004090629

/-! ## A217062.P13944980239708052358

`record[A238525(A050719(n+1)²)]`
-/

namespace A217062.P13944980239708052358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238525 (A050719 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217062.P13944980239708052358

/-!
# A217063: Primes that remain prime when a single "3" digit is inserted between any two adjacent decimal digits.

The programs for A217063, there is no canonical definition to state claims against.
-/

/-! ## A217063.P6926261919953307886

`p?[A304248(n+9)]`
-/

namespace A217063.P6926261919953307886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304248 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217063.P6926261919953307886

/-! ## A217063.P5494970074368320251

`∩[A157996(n+1), A304248(n+1)]`
-/

namespace A217063.P5494970074368320251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217063.P5494970074368320251

/-! ## A217063.P17346821988789439007

`∩[A162790(n+1), A304248(n+1)]`
-/

namespace A217063.P17346821988789439007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217063.P17346821988789439007

/-! ## A217063.P3475652156762165122

`∩[A304248(n+1), A045319(n+4)]`
-/

namespace A217063.P3475652156762165122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217063.P3475652156762165122

/-! ## A217063.P9543394658593435322

`∩[A000040(n+1), A304248(n+9)]`
-/

namespace A217063.P9543394658593435322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304248 (n + 9)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217063.P9543394658593435322

/-! ## A217063.P2846533251865465885

`∩[A008578(n+2), A304248(n+9)]`
-/

namespace A217063.P2846533251865465885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304248 (n + 9)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217063.P2846533251865465885

/-!
# A217064: Primes that remain prime when a single "5" digit is inserted between any two adjacent decimal digits.

The programs for A217064, there is no canonical definition to state claims against.
-/

/-! ## A217064.P3498857330164186964

`A007528(lt[A000700(n)², A280822(n)])`
-/

namespace A217064.P3498857330164186964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A217064.P3498857330164186964

/-! ## A217064.P14676005805555957274

`A007528(lt[A000700(2*n), A280822(n)])`
-/

namespace A217064.P14676005805555957274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A217064.P14676005805555957274

/-!
# A217065: Primes that remain prime when a single "7" digit is inserted between any two adjacent digits.

The programs for A217065, there is no canonical definition to state claims against.
-/

/-! ## A217065.P7461152166463128590

`A331959(A249553(n+1)+A006472(n+1))`
-/

namespace A217065.P7461152166463128590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331959 (A249553 (n + 1) + A006472 (n + 1)).toNat

end

end A217065.P7461152166463128590

/-!
# A217066: E.g.f. is series reversion of x*(sec(x)+tan(x)).

The programs for A217066, there is no canonical definition to state claims against.
-/

/-! ## A217066.P11930095409463792593

`Δ[A001057(n)]*A290579(n)`
-/

namespace A217066.P11930095409463792593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A290579 n

end

end A217066.P11930095409463792593

/-! ## A217066.P14200515986333410606

`A000027(A290579(n))*A071650(n+1)`
-/

namespace A217066.P14200515986333410606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A290579 n).toNat * A071650 (n + 1)

end

end A217066.P14200515986333410606

/-!
# A217067: Number of unlabeled graphs on n nodes whose components are cycles or complete graphs.

The programs for A217067, there is no canonical definition to state claims against.
-/

/-! ## A217067.P12152123964502695057

`A120401(A047967(n))+A014605(n+1)`
-/

namespace A217067.P12152123964502695057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120401 (A047967 n).toNat + A014605 (n + 1)

end

end A217067.P12152123964502695057

/-! ## A217067.P10863150631719272206

`A342525(A226635(n))`
-/

namespace A217067.P10863150631719272206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (A226635 n).toNat

end

end A217067.P10863150631719272206

/-! ## A217067.P7739542977186416747

`∑[A025872(A062399(n)²)]`
-/

namespace A217067.P7739542977186416747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 (A062399 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217067.P7739542977186416747

/-! ## A217067.P9943031861580447935

`∑[A025872(A120126(n)²)]`
-/

namespace A217067.P9943031861580447935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 (A120126 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217067.P9943031861580447935

/-! ## A217067.P17719721632817889156

`∑[A025872(A351870(n)²)]`
-/

namespace A217067.P17719721632817889156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 (A351870 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217067.P17719721632817889156

/-!
# A217069: a(n) = 3*a(n-1) + 24*a(n-2) + a(n-3), with a(0)=0, a(1)=2, and a(2)=7.

The programs for A217069, the canonical program `A217069.P13531888860897650308` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217069 has offset 0).

The definition of A217069 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+24*a(n-2)+a(n-3)` (program `A217069.P13531888860897650308`, by `A217069.P13531888860897650308.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217069.P2568936849035952699

`ogf((2x+x^2)/(1-3x-24x^2-x^3))`
-/

namespace A217069.P2568936849035952699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1] [1, -3, -24, -1] n

end

end A217069.P2568936849035952699

namespace A217069

/-- `ogf((2x+x^2)/(1-3x-24x^2-x^3))` -/
def P2568936849035952699.Spec : Prop :=
  ∀ n, P2568936849035952699.a n = A217069 n

end A217069

/-! ## A217069.P13531888860897650308

`3*a(n-1)+24*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217069

/-- `3*a(n-1)+24*a(n-2)+a(n-3)` -/
def P13531888860897650308.Spec : Prop :=
  ∀ n, (P13531888860897650308.a n : ℤ) = A217069 n

theorem P13531888860897650308.correct : P13531888860897650308.Spec := by
  intro n
  simp only [A217069]

end A217069

/-! ## A217069.P16685628940506226412

`∑[A188048(record[A187012(n+2)])]`
-/

namespace A217069.P16685628940506226412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187012 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217069.P16685628940506226412

namespace A217069

/-- `∑[A188048(record[A187012(n+2)])]` -/
def P16685628940506226412.Spec : Prop :=
  ∀ n, P16685628940506226412.a n = A217069 n

end A217069

/-! ## A217069.P13546040219051469408

`∑[A188048(A165355(A004273(n)))]`
-/

namespace A217069.P13546040219051469408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (A165355 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217069.P13546040219051469408

namespace A217069

/-- `∑[A188048(A165355(A004273(n)))]` -/
def P13546040219051469408.Spec : Prop :=
  ∀ n, P13546040219051469408.a n = A217069 n

end A217069

/-! ## A217069.P15642436623689677695

`Δ[A217052(n)/9]`
-/

namespace A217069.P15642436623689677695
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217052 n : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217069.P15642436623689677695

namespace A217069

/-- `Δ[A217052(n)/9]` -/
def P15642436623689677695.Spec : Prop :=
  ∀ n, P15642436623689677695.a n = (A217069 n : ℚ)

end A217069

/-! ## A217069.P7979743884831774380

`Δ[A188048(3*n)]/9`
-/

namespace A217069.P7979743884831774380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 9

end

end A217069.P7979743884831774380

namespace A217069

/-- `Δ[A188048(3*n)]/9` -/
def P7979743884831774380.Spec : Prop :=
  ∀ n, P7979743884831774380.a n = (A217069 n : ℚ)

end A217069

/-! ## A217069.P9223437479304332098

`A188048(A016777(n))/3`
-/

namespace A217069.P9223437479304332098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188048 (A016777 n).toNat : ℚ) / 3

end

end A217069.P9223437479304332098

namespace A217069

/-- `A188048(A016777(n))/3` -/
def P9223437479304332098.Spec : Prop :=
  ∀ n, P9223437479304332098.a n = (A217069 n : ℚ)

end A217069

/-!
# A217073: Numbers k such that (k^23-1)/(k-1) is prime.

The programs for A217073, there is no canonical definition to state claims against.
-/

/-! ## A217073.P11362439170352903260

`A052034(2*n+1)-A262742(A080040(n))`
-/

namespace A217073.P11362439170352903260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052034 (2 * n + 1) - A262742 (A080040 n).toNat

end

end A217073.P11362439170352903260

/-!
# A217074: Numbers k such that (k^29-1)/(k-1) is prime.

The programs for A217074, there is no canonical definition to state claims against.
-/

/-! ## A217074.P4301291519027611123

`A198327(n+1)+A198326(A272847(n))`
-/

namespace A217074.P4301291519027611123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198327 (n + 1) + A198326 (A272847 n).toNat

end

end A217074.P4301291519027611123

/-!
# A217080: Numbers n such that (n^53-1)/(n-1) is prime.

The programs for A217080, there is no canonical definition to state claims against.
-/

/-! ## A217080.P397199548300259527

`record[A351043(p?[A050504(n+1)])]`
-/

namespace A217080.P397199548300259527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351043 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217080.P397199548300259527

/-!
# A217082: Numbers n such that (n^61-1)/(n-1) is prime.

The programs for A217082, there is no canonical definition to state claims against.
-/

/-! ## A217082.P1025703584097765199

`eq[A000010(A311440(n)), A189578(n+1)]`
-/

namespace A217082.P1025703584097765199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A311440 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217082.P1025703584097765199

/-!
# A217084: Numbers n such that (n^71-1)/(n-1) is prime.

The programs for A217084, there is no canonical definition to state claims against.
-/

/-! ## A217084.P733779378596945187

`A274528(A157208(2*n+3)+A154638(n+1))`
-/

namespace A217084.P733779378596945187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (A157208 (2 * n + 3) + A154638 (n + 1)).toNat

end

end A217084.P733779378596945187

/-!
# A217090: Optimus primes.

The programs for A217090, there is no canonical definition to state claims against.
-/

/-! ## A217090.P16379893658137913751

`p?[A121537(comp[A132158(n)])]`
-/

namespace A217090.P16379893658137913751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132158 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121537 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217090.P16379893658137913751

/-! ## A217090.P3399367005648749969

`p?[∑[A227782(A020174(n+1))]]`
-/

namespace A217090.P3399367005648749969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227782 (A020174 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217090.P3399367005648749969

/-! ## A217090.P13781846812321220853

`A000040(lt[A270040(n+5), A270091(n)])`
-/

namespace A217090.P13781846812321220853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270040 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A217090.P13781846812321220853

/-! ## A217090.P12621760018648597847

`A000040(lt[A000720(n+4), A262211(3*n+2)])`
-/

namespace A217090.P12621760018648597847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262211 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A217090.P12621760018648597847

/-! ## A217090.P104749022726784923

`A000040(comp[A110774(n+1)-(n+2)]+2)`
-/

namespace A217090.P104749022726784923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110774 (n + 1) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A217090.P104749022726784923

/-!
# A217092: Values of A196189 such that both k and A196189(k) are odd.

The programs for A217092, there is no canonical definition to state claims against.
-/

/-! ## A217092.P13819955061768710575

`A196189(A196190(n+1))`
-/

namespace A217092.P13819955061768710575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196189 (A196190 (n + 1)).toNat

end

end A217092.P13819955061768710575

/-! ## A217092.P508299084635930702

`filter[A196189(2*n+1), A000035(#)]`
-/

namespace A217092.P508299084635930702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196189 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A217092.P508299084635930702

/-! ## A217092.P11326553469152790239

`filter[A196189(2*n+1), A266070(#)]`
-/

namespace A217092.P11326553469152790239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196189 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A217092.P11326553469152790239

/-! ## A217092.P457938769394389777

`filter[A196189(2*n+1), A266719(#)]`
-/

namespace A217092.P457938769394389777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196189 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A217092.P457938769394389777

/-! ## A217092.P7197425450204282727

`filter[A196189(2*n+1), A267256(#)]`
-/

namespace A217092.P7197425450204282727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196189 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A217092.P7197425450204282727

/-!
# A217093: Number of partitions of n objects of 3 colors.

The programs for A217093, there is no canonical definition to state claims against.
-/

/-! ## A217093.P7239870294196884077

`A382045(∑[n]+n)`
-/

namespace A217093.P7239870294196884077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382045 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A217093.P7239870294196884077

/-! ## A217093.P13143279035887748666

`A075196(∑[n+2]-1)`
-/

namespace A217093.P13143279035887748666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075196 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A217093.P13143279035887748666

/-! ## A217093.P14273594432532635622

`record[A075196(Δ[A054974(n+2)])]`
-/

namespace A217093.P14273594432532635622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054974 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075196 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217093.P14273594432532635622

/-! ## A217093.P13971268609667293952

`gcd(C(2, n+2), A075196(A034856(n+1)))`
-/

namespace A217093.P13971268609667293952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A075196 (A034856 (n + 1)).toNat)

end

end A217093.P13971268609667293952

/-! ## A217093.P9071740444982823501

`or(A000007(n), A075196(A034856(n+1)))`
-/

namespace A217093.P9071740444982823501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A075196 (A034856 (n + 1)).toNat)

end

end A217093.P9071740444982823501

/-! ## A217093.P16211150671873840481

`A075196(A034856(n+1))%A038846(n+1)`
-/

namespace A217093.P16211150671873840481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075196 (A034856 (n + 1)).toNat) (A038846 (n + 1))

end

end A217093.P16211150671873840481

/-! ## A217093.P9633011574731054312

`A000041(A052409(n²+1))*A075196(A034856(n+1))`
-/

namespace A217093.P9633011574731054312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A052409 (n ^ 2 + 1)).toNat * A075196 (A034856 (n + 1)).toNat

end

end A217093.P9633011574731054312

/-! ## A217093.P7393014051960917617

`and(A000225(3*n+2), A075196(A034856(n+1)))`
-/

namespace A217093.P7393014051960917617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (3 * n + 2)) (A075196 (A034856 (n + 1)).toNat)

end

end A217093.P7393014051960917617

/-!
# A217094: Least index k such that A011540(k) >= 10^n.

The programs for A217094, the canonical program `A217094.P8661026900854958369` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217094 has offset 0).

The definition of A217094 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217094.P11038775916532384985

`ogf((2-38x+189x^2)/(1-20x+109x^2-90x^3))`
-/

namespace A217094.P11038775916532384985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -38, 189] [1, -20, 109, -90] n

end

end A217094.P11038775916532384985

namespace A217094

/-- `ogf((2-38x+189x^2)/(1-20x+109x^2-90x^3))` -/
def P11038775916532384985.Spec : Prop :=
  ∀ n, P11038775916532384985.a n = A217094 n

end A217094

/-! ## A217094.P8661026900854958369

`2+10^n-9^n-(9^n-1)/8`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217094

/-- `2+10^n-9^n-(9^n-1)/8` -/
def P8661026900854958369.Spec : Prop :=
  ∀ n, P8661026900854958369.a n = (A217094 n : ℚ)

end A217094

/-! ## A217094.P18167007545591178285

`abs(A014963(4*n+2)+A178500(n)-A052386(n))`
-/

namespace A217094.P18167007545591178285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014963 (4 * n + 2) + (A178500 n - A052386 n)|

end

end A217094.P18167007545591178285

namespace A217094

/-- `abs(A014963(4*n+2)+A178500(n)-A052386(n))` -/
def P18167007545591178285.Spec : Prop :=
  ∀ n, P18167007545591178285.a n = A217094 n

end A217094

/-!
# A217096: Characteristic function of numbers that have a nonleading zero in their decimal representation (A011540). 0 itself is also included, so a(0) = 1.

The programs for A217096, the canonical program `A217096.P6951719319144444068` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217096 has offset 0).

The definition of A217096 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A168046, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A217096.P6951719319144444068

`1-A168046(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A217096

/-- `1-A168046(n)` -/
def P6951719319144444068.Spec : Prop :=
  ∀ n, P6951719319144444068.a n = A217096 n

theorem P6951719319144444068.correct : P6951719319144444068.Spec := by
  intro n
  simp only [A217096]

end A217096

/-! ## A217096.P4667039963433001392

`char[n*(1-∏{digits}[n, #])]`
-/

namespace A217096.P4667039963433001392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A217096.P4667039963433001392

namespace A217096

/-- `char[n*(1-∏{digits}[n, #])]` -/
def P4667039963433001392.Spec : Prop :=
  ∀ n, (P4667039963433001392.a n : ℤ) = A217096 n

end A217096

/-!
# A217098: Greatest binary palindrome (cf. A006995) with n binary digits such that the number of contiguous palindromic bit patterns is minimal.

The programs for A217098, there is no canonical definition to state claims against.
-/

/-! ## A217098.P2710182461965160697

`A265527(∑[A050343(n)])`
-/

namespace A217098.P2710182461965160697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265527 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217098.P2710182461965160697

/-! ## A217098.P1171252917689453665

`A265527(∑[A122552(n)])`
-/

namespace A217098.P1171252917689453665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265527 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217098.P1171252917689453665

/-! ## A217098.P17375634121590886648

`A265527(A049958(n+1))`
-/

namespace A217098.P17375634121590886648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265527 (A049958 (n + 1)).toNat

end

end A217098.P17375634121590886648

/-!
# A217099: Binary palindromes (cf. A006995) such that the number of contiguous palindromic bit patterns is minimal (for a given number of places).

The programs for A217099, there is no canonical definition to state claims against.
-/

/-! ## A217099.P6687932919636087031

`eq[A055640(A187818(n+1)), A178225(n)]`
-/

namespace A217099.P6687932919636087031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A187818 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217099.P6687932919636087031

/-! ## A217099.P5400175424363535796

`A040976(eq[0, A025900(n)])`
-/

namespace A217099.P5400175424363535796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217099.P5400175424363535796

/-! ## A217099.P12433352237670468621

`A040976(eq[0, A029422(n)])`
-/

namespace A217099.P12433352237670468621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217099.P12433352237670468621

/-! ## A217099.P11454295914689525228

`A040976(lt[A025900(n), 1])`
-/

namespace A217099.P11454295914689525228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025900 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A217099.P11454295914689525228

/-! ## A217099.P12658691226356003787

`A000040(eq[0, A029422(n)])-2`
-/

namespace A217099.P12658691226356003787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 2

end

end A217099.P12658691226356003787

