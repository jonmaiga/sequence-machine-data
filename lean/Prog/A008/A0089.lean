import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A008900: x->x/2 if x even, x->3x-1 if x odd.

The programs for A008900, the canonical program `A008900.P7965286308957467722` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008900 has offset 0).

The definition of A008900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008900.P7965286308957467722

`A001281(a(n-1))` with `a(0)=89`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008900

/-- `A001281(a(n-1))` -/
def P7965286308957467722.Spec : Prop :=
  ∀ n, P7965286308957467722.a n = A008900 n

theorem P7965286308957467722.correct : P7965286308957467722.Spec := by
  intro n
  simp only [A008900]

end A008900

/-!
# A008901: x->x/2 if x even, x->3x-1 if x odd.

The programs for A008901, the canonical program `A008901.P17714385854789650431` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008901 has offset 0).

The definition of A008901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008901.P17714385854789650431

`A001281(a(n-1))` with `a(0)=90`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008901

/-- `A001281(a(n-1))` -/
def P17714385854789650431.Spec : Prop :=
  ∀ n, P17714385854789650431.a n = A008901 n

theorem P17714385854789650431.correct : P17714385854789650431.Spec := by
  intro n
  simp only [A008901]

end A008901

/-!
# A008902: x->x/2 if x even, x->3x-1 if x odd.

The programs for A008902, the canonical program `A008902.P8030901881938040270` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008902 has offset 0).

The definition of A008902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008902.P8030901881938040270

`A001281(a(n-1))` with `a(0)=99`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008902

/-- `A001281(a(n-1))` -/
def P8030901881938040270.Spec : Prop :=
  ∀ n, P8030901881938040270.a n = A008902 n

theorem P8030901881938040270.correct : P8030901881938040270.Spec := by
  intro n
  simp only [A008902]

end A008902

/-!
# A008903: x->x/2 if x even, x->3x-1 if x odd.

The programs for A008903, the canonical program `A008903.P196414134318317341` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008903 has offset 0).

The definition of A008903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008903.P196414134318317341

`A003124(A028310(n))*A054977(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A008903

/-- `A003124(A028310(n))*A054977(n)` -/
def P196414134318317341.Spec : Prop :=
  ∀ n, P196414134318317341.a n = A008903 n

theorem P196414134318317341.correct : P196414134318317341.Spec := by
  intro n
  simp only [A008903]

end A008903

/-!
# A008904: a(n) is the final nonzero digit of n!.

The programs for A008904, the canonical program `A008904.P9528914656138212503` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008904 has offset 0).

The definition of A008904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008904.P9528914656138212503

`A000030(A251984(4*n*a(n-1)))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A008904

/-- `A000030(A251984(4*n*a(n-1)))` -/
def P9528914656138212503.Spec : Prop :=
  ∀ n, P9528914656138212503.a n = A008904 n

theorem P9528914656138212503.correct : P9528914656138212503.Spec := by
  intro n
  simp only [A008904]

end A008904

/-! ## A008904.P3627539036058614569

`A004154(n)%10`
-/

namespace A008904.P3627539036058614569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004154 n) 10

end

end A008904.P3627539036058614569

namespace A008904

/-- `A004154(n)%10` -/
def P3627539036058614569.Spec : Prop :=
  ∀ n, P3627539036058614569.a n = A008904 n

end A008904

/-! ## A008904.P10830410895423277822

`(n!/A011557(A027868(n)))%10`
-/

namespace A008904.P10830410895423277822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (A011557 (A027868 n).toNat : ℚ))) 10

end

end A008904.P10830410895423277822

namespace A008904

/-- `(n!/A011557(A027868(n)))%10` -/
def P10830410895423277822.Spec : Prop :=
  ∀ n, P10830410895423277822.a n = A008904 n

end A008904

/-! ## A008904.P10521972321240842801

`(A000142(n)/A011557(A027868(n)))%10`
-/

namespace A008904.P10521972321240842801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000142 n : ℚ) / (A011557 (A027868 n).toNat : ℚ))) 10

end

end A008904.P10521972321240842801

namespace A008904

/-- `(A000142(n)/A011557(A027868(n)))%10` -/
def P10521972321240842801.Spec : Prop :=
  ∀ n, P10521972321240842801.a n = A008904 n

end A008904

/-!
# A008905: Leading digit of n!.

The programs for A008905, there is no canonical definition to state claims against.
-/

/-! ## A008905.P16611400632213392943

`A004153(n)%10`
-/

namespace A008905.P16611400632213392943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004153 n) 10

end

end A008905.P16611400632213392943

/-!
# A008906: Number of digits in n! excluding final zeros.

The programs for A008906, there is no canonical definition to state claims against.
-/

/-! ## A008906.P3488096542164001217

`A034886(n)-A027868(n)`
-/

namespace A008906.P3488096542164001217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - A027868 n

end

end A008906.P3488096542164001217

/-! ## A008906.P4629699647636741105

`A356758(n)+A137581(n)`
-/

namespace A008906.P4629699647636741105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356758 n + A137581 n

end

end A008906.P4629699647636741105

/-! ## A008906.P9222352227109812785

`A034886(n)-A191610(n+1)+n`
-/

namespace A008906.P9222352227109812785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - A191610 (n + 1) + (n : ℤ)

end

end A008906.P9222352227109812785

/-! ## A008906.P239319648135744692

`A055642(n)+A241730(n)-A027868(n)`
-/

namespace A008906.P239319648135744692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n + (A241730 n - A027868 n)

end

end A008906.P239319648135744692

/-! ## A008906.P11607095521574755138

`A112765(n+1)+A034886(n)-∑[A112765(n+1)]`
-/

namespace A008906.P11607095521574755138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (n + 1) + (A034886 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008906.P11607095521574755138

/-! ## A008906.P6486823893797143873

`A034886(n)-∑[A112765(A257088(n))]`
-/

namespace A008906.P6486823893797143873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A257088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008906.P6486823893797143873

/-! ## A008906.P2273339066215144424

`A034886(n)-∑[A112765(A008574(n))]`
-/

namespace A008906.P2273339066215144424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008906.P2273339066215144424

/-! ## A008906.P9774237397484809137

`A034886(n)+A008683(A067367(n+1))*A027868(n)`
-/

namespace A008906.P9774237397484809137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n + A008683 (A067367 (n + 1)).toNat * A027868 n

end

end A008906.P9774237397484809137

/-!
# A008908: a(n) = (1 + number of halving and tripling steps to reach 1 in the Collatz (3x+1) problem), or -1 if 1 is never reached.

The programs for A008908, there is no canonical definition to state claims against.
-/

/-! ## A008908.P16598176972295898861

`A006577(n+1)+1`
-/

namespace A008908.P16598176972295898861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + 1

end

end A008908.P16598176972295898861

/-! ## A008908.P7753671343351972259

`A006666(n+1)+A078719(n+1)`
-/

namespace A008908.P7753671343351972259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) + A078719 (n + 1)

end

end A008908.P7753671343351972259

/-! ## A008908.P7960843534621976853

`A058261(n)/(n+1)+1`
-/

namespace A008908.P7960843534621976853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058261 n : ℚ) / (n + 1 : ℚ) + 1

end

end A008908.P7960843534621976853

/-! ## A008908.P10550586779942816276

`A153330(n)+a(n-1)` with `a(0)=1`
-/

namespace A008908.P10550586779942816276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A153330 n + a (n - 1)

end

end A008908.P10550586779942816276

/-! ## A008908.P3283082030146098254

`floor(log2(A221468(n+1)))+1`
-/

namespace A008908.P3283082030146098254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A221468 (n + 1)).toNat + 1

end

end A008908.P3283082030146098254

/-! ## A008908.P13384972082908742896

`∑[A153330(A028310(n))]`
-/

namespace A008908.P13384972082908742896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153330 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008908.P13384972082908742896

/-! ## A008908.P10053896608003489800

`A158799(n)+A139399(n+1)`
-/

namespace A008908.P10053896608003489800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n + A139399 (n + 1)

end

end A008908.P10053896608003489800

/-! ## A008908.P16093926001111319260

`A087891(n+1)+A078372(n+1)`
-/

namespace A008908.P16093926001111319260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087891 (n + 1) + A078372 (n + 1)

end

end A008908.P16093926001111319260

/-! ## A008908.P4577946969931263941

`A139399(n+1)+A130130(n)+1`
-/

namespace A008908.P4577946969931263941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 1) + (A130130 n + 1)

end

end A008908.P4577946969931263941

/-! ## A008908.P2972026433083995641

`A213204(n+1)+A076228(n+1)`
-/

namespace A008908.P2972026433083995641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213204 (n + 1) + A076228 (n + 1)

end

end A008908.P2972026433083995641

/-! ## A008908.P4145440915367728696

`A222641(n+1)+A087225(n+1)`
-/

namespace A008908.P4145440915367728696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222641 (n + 1) + A087225 (n + 1)

end

end A008908.P4145440915367728696

/-! ## A008908.P12864816855783471628

`A267830(n+1)+A078350(n+1)`
-/

namespace A008908.P12864816855783471628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267830 (n + 1) + A078350 (n + 1)

end

end A008908.P12864816855783471628

/-! ## A008908.P2398451858389115621

`A222597(n+1)+A159999(n+1)`
-/

namespace A008908.P2398451858389115621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222597 (n + 1) + A159999 (n + 1)

end

end A008908.P2398451858389115621

/-! ## A008908.P2953099549923023318

`A226123(n+1)+A208981(n+1)`
-/

namespace A008908.P2953099549923023318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226123 (n + 1) + A208981 (n + 1)

end

end A008908.P2953099549923023318

/-! ## A008908.P7542733254227011840

`A222118(n+1)+A221956(n+1)`
-/

namespace A008908.P7542733254227011840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222118 (n + 1) + A221956 (n + 1)

end

end A008908.P7542733254227011840

/-! ## A008908.P4082197074779604694

`A064433(n+2)+A006667(n+1)`
-/

namespace A008908.P4082197074779604694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (n + 2) + A006667 (n + 1)

end

end A008908.P4082197074779604694

/-! ## A008908.P5200246318913745181

`A006666(n+1)+A006667(n+1)+1`
-/

namespace A008908.P5200246318913745181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) + (A006667 (n + 1) + 1)

end

end A008908.P5200246318913745181

/-! ## A008908.P2703080901544534946

`A076228(n+1)+A222597(n+1)+1`
-/

namespace A008908.P2703080901544534946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076228 (n + 1) + (A222597 (n + 1) + 1)

end

end A008908.P2703080901544534946

/-! ## A008908.P1068805915723786926

`A135282(n+1)+A208981(n+1)+1`
-/

namespace A008908.P1068805915723786926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135282 (n + 1) + (A208981 (n + 1) + 1)

end

end A008908.P1068805915723786926

/-! ## A008908.P6314098845802559781

`A220421(n+1)+A222641(n+1)+1`
-/

namespace A008908.P6314098845802559781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220421 (n + 1) + (A222641 (n + 1) + 1)

end

end A008908.P6314098845802559781

/-!
# A008909: Join 2n points on a line with n arcs above the line; form graph with the arcs as nodes, joining 2 nodes when the arcs cross. a(n) is the number of cases in which the graph is a path.

The programs for A008909, there is no canonical definition to state claims against.
-/

/-! ## A008909.P15450004925538938093

`∑[A086581(n)-char[1]]`
-/

namespace A008909.P15450004925538938093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086581 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008909.P15450004925538938093

/-! ## A008909.P14194768188537414074

`A105633(n)-ceil(n/98)`
-/

namespace A008909.P14194768188537414074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105633 n - ⌈(n : ℚ) / 98⌉

end

end A008909.P14194768188537414074

/-! ## A008909.P14694076349046127157

`∑[A082582(n+1)-char[1]]`
-/

namespace A008909.P14694076349046127157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008909.P14694076349046127157

/-! ## A008909.P15900330733797993285

`∑[A025242(n+2)-char[1]]`
-/

namespace A008909.P15900330733797993285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025242 (n + 2) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008909.P15900330733797993285

/-! ## A008909.P8391438418813079775

`abs(A054977(n)-A105633(n))`
-/

namespace A008909.P8391438418813079775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054977 n - A105633 n|

end

end A008909.P8391438418813079775

/-!
# A008910: Join 2n points on a line with n arcs above the line; form graph with the arcs as nodes, joining 2 nodes when the arcs cross. a(n) is the number of cases in which the graph is symmetric about middle and has no isolated nodes.

The programs for A008910, there is no canonical definition to state claims against.
-/

/-! ## A008910.P15413010927367006780

`A224374(A123459(n+1))%A123471(n+1)`
-/

namespace A008910.P15413010927367006780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224374 (A123459 (n + 1)).toNat) (A123471 (n + 1))

end

end A008910.P15413010927367006780

/-! ## A008910.P8422353492307541666

`∑[A089616((n+2)!)]`
-/

namespace A008910.P8422353492307541666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089616 (Nat.factorial (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008910.P8422353492307541666

/-!
# A008911: a(n) = n^2*(n^2 - 1)/6.

The programs for A008911, the canonical program `A008911.P13273812959186450040` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008911 has offset 0).

The definition of A008911 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n²-1)/6` (program `A008911.P8543920137210058966`, by `A008911.P8543920137210058966.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008911.P3606086270536043515

`C(n², 2)/3`
-/

namespace A008911.P3606086270536043515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / 3

end

end A008911.P3606086270536043515

namespace A008911

/-- `C(n², 2)/3` -/
def P3606086270536043515.Spec : Prop :=
  ∀ n, P3606086270536043515.a n = (A008911 n : ℚ)

theorem P3606086270536043515.correct : P3606086270536043515.Spec := by
  intro n
  simp only [A008911, Nat.add_sub_cancel, A008911.P3606086270536043515.a, A008911.P13273812959186450040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008911

/-! ## A008911.P13273812959186450040

`n*C(n+1, 3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008911

/-- `n*C(n+1, 3)` -/
def P13273812959186450040.Spec : Prop :=
  ∀ n, (P13273812959186450040.a n : ℤ) = A008911 n

theorem P13273812959186450040.correct : P13273812959186450040.Spec := by
  intro n
  simp only [A008911]

end A008911

/-! ## A008911.P8543920137210058966

`n²*(n²-1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A008911.P8543920137210058966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * ((n ^ 2 : ℤ) - 1) : ℚ) / 6

end

end A008911.P8543920137210058966

namespace A008911

/-- `n²*(n²-1)/6` -/
def P8543920137210058966.Spec : Prop :=
  ∀ n, P8543920137210058966.a n = (A008911 n : ℚ)

theorem P8543920137210058966.correct : P8543920137210058966.Spec := by
  intro n
  simp only [A008911, Nat.add_sub_cancel, A008911.P8543920137210058966.a, A008911.P13273812959186450040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008911

/-! ## A008911.P13852911858240107842

`2*A002415(n)`
-/

namespace A008911.P13852911858240107842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002415 n

end

end A008911.P13852911858240107842

namespace A008911

/-- `2*A002415(n)` -/
def P13852911858240107842.Spec : Prop :=
  ∀ n, P13852911858240107842.a n = A008911 n

end A008911

/-! ## A008911.P5093649719108256126

`n*∑[C(n, 2)]`
-/

namespace A008911.P5093649719108256126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008911.P5093649719108256126

namespace A008911

/-- `n*∑[C(n, 2)]` -/
def P5093649719108256126.Spec : Prop :=
  ∀ n, (P5093649719108256126.a n : ℤ) = A008911 n

end A008911

/-! ## A008911.P15949083592380226271

`∑[∑[∑[a(n-1)+4]]]` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A008911.P15949083592380226271
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008911.P15949083592380226271

namespace A008911

/-- `∑[∑[∑[a(n-1)+4]]]` -/
def P15949083592380226271.Spec : Prop :=
  ∀ n, (P15949083592380226271.a n : ℤ) = A008911 n

end A008911

/-! ## A008911.P16742486371888599178

`∑[∑[2*((2*n)%(n+1))²]]`
-/

namespace A008911.P16742486371888599178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n % (n + 1)) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008911.P16742486371888599178

namespace A008911

/-- `∑[∑[2*((2*n)%(n+1))²]]` -/
def P16742486371888599178.Spec : Prop :=
  ∀ n, (P16742486371888599178.a n : ℤ) = A008911 n

end A008911

/-! ## A008911.P15575951868374956069

`A329523(n)-n`
-/

namespace A008911.P15575951868374956069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329523 n - (n : ℤ)

end

end A008911.P15575951868374956069

namespace A008911

/-- `A329523(n)-n` -/
def P15575951868374956069.Spec : Prop :=
  ∀ n, P15575951868374956069.a n = A008911 n

theorem P15575951868374956069.correct : P15575951868374956069.Spec := by
  intro n
  simp only [A008911, Nat.add_sub_cancel, A008911.P15575951868374956069.a, A008911.P13273812959186450040.a, A329523, A329523.P18261458279944651738.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008911

/-! ## A008911.P5341975711668764954

`∑[A146298(n)+n]`
-/

namespace A008911.P5341975711668764954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146298 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008911.P5341975711668764954

namespace A008911

/-- `∑[A146298(n)+n]` -/
def P5341975711668764954.Spec : Prop :=
  ∀ n, P5341975711668764954.a n = A008911 n

end A008911

/-! ## A008911.P2338527465169453065

`∑[A037235(n)-n]`
-/

namespace A008911.P2338527465169453065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037235 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008911.P2338527465169453065

namespace A008911

/-- `∑[A037235(n)-n]` -/
def P2338527465169453065.Spec : Prop :=
  ∀ n, P2338527465169453065.a n = A008911 n

end A008911

/-! ## A008911.P8150338091842519319

`A257055(n)-∑[n]`
-/

namespace A008911.P8150338091842519319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257055 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A008911.P8150338091842519319

namespace A008911

/-- `A257055(n)-∑[n]` -/
def P8150338091842519319.Spec : Prop :=
  ∀ n, P8150338091842519319.a n = A008911 n

end A008911

/-! ## A008911.P13404027691802559411

`n*∑[A161680(n)]`
-/

namespace A008911.P13404027691802559411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008911.P13404027691802559411

namespace A008911

/-- `n*∑[A161680(n)]` -/
def P13404027691802559411.Spec : Prop :=
  ∀ n, P13404027691802559411.a n = A008911 n

end A008911

/-! ## A008911.P18239446160707895372

`2*(A079034(n)-1)`
-/

namespace A008911.P18239446160707895372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A079034 n - 1)

end

end A008911.P18239446160707895372

namespace A008911

/-- `2*(A079034(n)-1)` -/
def P18239446160707895372.Spec : Prop :=
  ∀ n, P18239446160707895372.a n = A008911 n

end A008911

/-! ## A008911.P15261712172024974697

`2/3*A006011(n)`
-/

namespace A008911.P15261712172024974697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A006011 n : ℚ)

end

end A008911.P15261712172024974697

namespace A008911

/-- `2/3*A006011(n)` -/
def P15261712172024974697.Spec : Prop :=
  ∀ n, P15261712172024974697.a n = (A008911 n : ℚ)

end A008911

/-! ## A008911.P8628821871194789254

`n/3*A135503(n)`
-/

namespace A008911.P8628821871194789254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A135503 n : ℚ)

end

end A008911.P8628821871194789254

namespace A008911

/-- `n/3*A135503(n)` -/
def P8628821871194789254.Spec : Prop :=
  ∀ n, P8628821871194789254.a n = (A008911 n : ℚ)

end A008911

/-! ## A008911.P15050804683263496935

`n²²-A008354(n)`
-/

namespace A008911.P15050804683263496935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A008354 n

end

end A008911.P15050804683263496935

namespace A008911

/-- `n²²-A008354(n)` -/
def P15050804683263496935.Spec : Prop :=
  ∀ n, P15050804683263496935.a n = A008911 n

end A008911

/-! ## A008911.P8440048471121452304

`∑[A005900(n)-n²]`
-/

namespace A008911.P8440048471121452304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008911.P8440048471121452304

namespace A008911

/-- `∑[A005900(n)-n²]` -/
def P8440048471121452304.Spec : Prop :=
  ∀ n, P8440048471121452304.a n = A008911 n

end A008911

/-! ## A008911.P228663276016577622

`∑[n]²-A014205(n)`
-/

namespace A008911.P228663276016577622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A014205 n

end

end A008911.P228663276016577622

namespace A008911

/-- `∑[n]²-A014205(n)` -/
def P228663276016577622.Spec : Prop :=
  ∀ n, P228663276016577622.a n = A008911 n

end A008911

/-! ## A008911.P819394331731189605

`A071239(n)-∑[∑[n]]`
-/

namespace A008911.P819394331731189605
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071239 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A008911.P819394331731189605

namespace A008911

/-- `A071239(n)-∑[∑[n]]` -/
def P819394331731189605.Spec : Prop :=
  ∀ n, P819394331731189605.a n = A008911 n

end A008911

/-! ## A008911.P8368792863835030665

`A086602(n)+A000332(n)`
-/

namespace A008911.P8368792863835030665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086602 n + A000332 n

end

end A008911.P8368792863835030665

namespace A008911

/-- `A086602(n)+A000332(n)` -/
def P8368792863835030665.Spec : Prop :=
  ∀ n, P8368792863835030665.a n = A008911 n

end A008911

/-!
# A008912: Truncated triangular numbers (of form n*(n-3)/2 - k^2+k*n+1 for 1<=k

The programs for A008912, the canonical program `A008912.P182979477162641956` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008912 has offset 1).

The definition of A008912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1520 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008912.P182979477162641956

`lt[0, char[A008867(n+2)]]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A008912

/-- `lt[0, char[A008867(n+2)]]` -/
def P182979477162641956.Spec : Prop :=
  ∀ n, (P182979477162641956.a n : ℤ) = A008912 (n + 1)

theorem P182979477162641956.correct : P182979477162641956.Spec := by
  intro n
  simp only [A008912, Nat.add_sub_cancel]

end A008912

/-! ## A008912.P6041491836376125251

`lt[0, A035186(4*n+3)]+1`
-/

namespace A008912.P6041491836376125251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A008912.P6041491836376125251

namespace A008912

/-- `lt[0, A035186(4*n+3)]+1` -/
def P6041491836376125251.Spec : Prop :=
  ∀ n, (P6041491836376125251.a n : ℤ) = A008912 (n + 1)

end A008912

/-! ## A008912.P9510799402315021972

`lt[1/(n+1), A035186(A131098(n+1))]`
-/

namespace A008912.P9510799402315021972
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (A131098 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A008912.P9510799402315021972

namespace A008912

/-- `lt[1/(n+1), A035186(A131098(n+1))]` -/
def P9510799402315021972.Spec : Prop :=
  ∀ n, (P9510799402315021972.a n : ℤ) = A008912 (n + 1)

end A008912

/-! ## A008912.P8504829432550576784

`lt[0, A321740(n+1)]+1`
-/

namespace A008912.P8504829432550576784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321740 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A008912.P8504829432550576784

namespace A008912

/-- `lt[0, A321740(n+1)]+1` -/
def P8504829432550576784.Spec : Prop :=
  ∀ n, (P8504829432550576784.a n : ℤ) = A008912 (n + 1)

end A008912

/-! ## A008912.P9340148876339105178

`record[(n+1)%A133041((n+1)*A321740(n+1))]`
-/

namespace A008912.P9340148876339105178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A133041 ((n + 1 : ℤ) * A321740 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008912.P9340148876339105178

namespace A008912

/-- `record[(n+1)%A133041((n+1)*A321740(n+1))]` -/
def P9340148876339105178.Spec : Prop :=
  ∀ n, P9340148876339105178.a n = A008912 (n + 1)

end A008912

/-!
# A008914: Order of simple Chevalley group G_2 (q), q = prime power.

The programs for A008914, the canonical program `A008914.P8241371107922137073` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008914 has offset 1).

The definition of A008914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008914.P8241371107922137073

`A037248(A246655(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A008914

/-- `A037248(A246655(n+1))` -/
def P8241371107922137073.Spec : Prop :=
  ∀ n, P8241371107922137073.a n = A008914 (n + 1)

theorem P8241371107922137073.correct : P8241371107922137073.Spec := by
  intro n
  simp only [A008914, Nat.add_sub_cancel]

end A008914

/-! ## A008914.P18340420443274825734

`A037248(A000961(n+2))`
-/

namespace A008914.P18340420443274825734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037248 (A000961 (n + 2)).toNat

end

end A008914.P18340420443274825734

namespace A008914

/-- `A037248(A000961(n+2))` -/
def P18340420443274825734.Spec : Prop :=
  ∀ n, P18340420443274825734.a n = A008914 (n + 1)

end A008914

/-!
# A008917: Numbers that are the sum of 3 positive cubes in more than one way.

The programs for A008917, there is no canonical definition to state claims against.
-/

/-! ## A008917.P6156187117421291992

`∪[A025396(n+1), A025398(n+1)]`
-/

namespace A008917.P6156187117421291992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A008917.P6156187117421291992

/-! ## A008917.P16798896082445611294

`A260739(2*A025396(n+1))`
-/

namespace A008917.P16798896082445611294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (2 * A025396 (n + 1)).toNat

end

end A008917.P16798896082445611294

/-! ## A008917.P8914848483275135649

`A025396(n+1)%A253053(n+1)²`
-/

namespace A008917.P8914848483275135649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025396 (n + 1)) (A253053 (n + 1) ^ 2)

end

end A008917.P8914848483275135649

/-! ## A008917.P7433122898467860082

`A340599(A000041(n))+A025396(n+1)`
-/

namespace A008917.P7433122898467860082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340599 (A000041 n).toNat + A025396 (n + 1)

end

end A008917.P7433122898467860082

/-! ## A008917.P6958107840657729035

`A121373(A235332(n))+A025396(n+1)`
-/

namespace A008917.P6958107840657729035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A235332 n).toNat + A025396 (n + 1)

end

end A008917.P6958107840657729035

/-!
# A008918: Numbers k such that 4*k = (k written backwards), k > 0.

The programs for A008918, there is no canonical definition to state claims against.
-/

/-! ## A008918.P9009897584543505827

`2*A001232(n+1)`
-/

namespace A008918.P9009897584543505827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001232 (n + 1)

end

end A008918.P9009897584543505827

/-! ## A008918.P17770785081466558510

`A285040(n+1)/2`
-/

namespace A008918.P17770785081466558510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285040 (n + 1) : ℚ) / 2

end

end A008918.P17770785081466558510

/-! ## A008918.P14101609553132245381

`A222815(n+1)/4`
-/

namespace A008918.P14101609553132245381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222815 (n + 1) : ℚ) / 4

end

end A008918.P14101609553132245381

/-! ## A008918.P8424684313380893610

`2*A222814(n+1)/9`
-/

namespace A008918.P8424684313380893610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A222814 (n + 1) : ℚ) / 9)

end

end A008918.P8424684313380893610

/-! ## A008918.P6068424469188761888

`lcm(A001232(n+1), A010696(n))`
-/

namespace A008918.P6068424469188761888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001232 (n + 1)) (A010696 n)

end

end A008918.P6068424469188761888

/-! ## A008918.P12879169444467319783

`2*(A222814(n+1)-A222815(n+1))`
-/

namespace A008918.P12879169444467319783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A222814 (n + 1) - A222815 (n + 1))

end

end A008918.P12879169444467319783

/-! ## A008918.P4575437380343985532

`(A222814(n+1)-A001232(n+1))/4`
-/

namespace A008918.P4575437380343985532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222814 (n + 1) - A001232 (n + 1) : ℚ) / 4

end

end A008918.P4575437380343985532

/-! ## A008918.P6139944890285998934

`2*gcd(A222814(n+1), A285040(n+1))`
-/

namespace A008918.P6139944890285998934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (A222814 (n + 1)) (A285040 (n + 1))

end

end A008918.P6139944890285998934

/-! ## A008918.P2600493561475070769

`A001232(n+1)+A222814(n+1)-A222815(n+1)`
-/

namespace A008918.P2600493561475070769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001232 (n + 1) + (A222814 (n + 1) - A222815 (n + 1))

end

end A008918.P2600493561475070769

/-! ## A008918.P5487523280468234041

`A285040(n+1)-A001232(n+1)-A001232(n+1)`
-/

namespace A008918.P5487523280468234041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285040 (n + 1) - A001232 (n + 1) - A001232 (n + 1)

end

end A008918.P5487523280468234041

/-! ## A008918.P6317997418686409717

`A101704(n+2)/3`
-/

namespace A008918.P6317997418686409717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101704 (n + 2) : ℚ) / 3

end

end A008918.P6317997418686409717

/-! ## A008918.P17879642901015917069

`2/3*A101706(n+2)`
-/

namespace A008918.P17879642901015917069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A101706 (n + 2) : ℚ)

end

end A008918.P17879642901015917069

/-! ## A008918.P323067816444271140

`A101706(n+2)-A001232(n+1)`
-/

namespace A008918.P323067816444271140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101706 (n + 2) - A001232 (n + 1)

end

end A008918.P323067816444271140

/-! ## A008918.P9797603821992434349

`A101704(n+2)-A285040(n+1)`
-/

namespace A008918.P9797603821992434349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101704 (n + 2) - A285040 (n + 1)

end

end A008918.P9797603821992434349

/-! ## A008918.P15592661818599704972

`A101706(n+2)+A101706(n+2)-A285040(n+1)`
-/

namespace A008918.P15592661818599704972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101706 (n + 2) + (A101706 (n + 2) - A285040 (n + 1))

end

end A008918.P15592661818599704972

/-! ## A008918.P4267173244406864511

`record[lcm(2, A008919(n+1))]`
-/

namespace A008918.P4267173244406864511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A008919 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008918.P4267173244406864511

/-! ## A008918.P2207205530981086650

`record[A031877(n+1)/2-A072141(n+1)]`
-/

namespace A008918.P2207205530981086650
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031877 (n + 1) : ℚ) / 2 - (A072141 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008918.P2207205530981086650

/-! ## A008918.P6942222205510311764

`record[2*gcd(A008919(n+1), A031877(n+1))]`
-/

namespace A008918.P6942222205510311764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (A008919 (n + 1)) (A031877 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008918.P6942222205510311764

/-! ## A008918.P14150121038219028401

`∩[A008919(n+1), A072141(n+1)]`
-/

namespace A008918.P14150121038219028401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008918.P14150121038219028401

/-! ## A008918.P4696737307742884155

`∩[A071685(n+1), A072141(n+1)]`
-/

namespace A008918.P4696737307742884155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008918.P4696737307742884155

/-!
# A008919: Numbers k such that k written backwards is a nontrivial multiple of k.

The programs for A008919, there is no canonical definition to state claims against.
-/

/-! ## A008919.P3408732334039665256

`99*A061852(n+1)`
-/

namespace A008919.P3408732334039665256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  99 * A061852 (n + 1)

end

end A008919.P3408732334039665256

/-! ## A008919.P14688015171801340791

`∪[A001232(n+1), A008918(n+1)]`
-/

namespace A008919.P14688015171801340791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A008919.P14688015171801340791

/-! ## A008919.P15997195661678329216

`∪[A008918(n+1), A285040(n+1)]/2`
-/

namespace A008919.P15997195661678329216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285040 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A008919.P15997195661678329216

/-! ## A008919.P2396100063840064570

`∪[A008918(n+1), A222814(n+1)-A222815(n+1)]`
-/

namespace A008919.P2396100063840064570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222814 (n + 1) - A222815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A008919.P2396100063840064570

/-! ## A008919.P13298051162843497708

`∪[A008918(n+1), A222814(n+1)%A285040(n+1)]`
-/

namespace A008919.P13298051162843497708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222814 (n + 1)) (A285040 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A008919.P13298051162843497708

/-!
# A008920: Let j = | i - i_written_backwards |, k = j + j_written_backwards; then k is in this sequence.

The programs for A008920, there is no canonical definition to state claims against.
-/

/-! ## A008920.P116919693971352714

`∩[A248375(A195161(2*n)), A067030(n)]`
-/

namespace A008920.P116919693971352714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 (A195161 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008920.P116919693971352714

/-! ## A008920.P5667100020742113600

`filter[A067030(n), A267142(#)]`
-/

namespace A008920.P5667100020742113600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267142 (f1 j).toNat = 1) n)

end

end A008920.P5667100020742113600

/-! ## A008920.P8159838796778542288

`∩[A067030(n), A259729(n+1)]`
-/

namespace A008920.P8159838796778542288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008920.P8159838796778542288

/-!
# A008922: Crystal ball sequence for lattice {E_7}*.

The programs for A008922, there is no canonical definition to state claims against.
-/

/-! ## A008922.P15221485863668633891

`∑[A008921(n)]`
-/

namespace A008922.P15221485863668633891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008922.P15221485863668633891

/-! ## A008922.P14755052760657341111

`A008921(gcd(n, 5*n))+a(n-1)` with `a(0)=1`
-/

namespace A008922.P14755052760657341111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008921 (Nat.gcd n (5 * n)) + a (n - 1)

end

end A008922.P14755052760657341111

/-! ## A008922.P8679940971360964338

`A008921(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A008922.P8679940971360964338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008921 n + a (A023443 n).toNat

end

end A008922.P8679940971360964338

/-! ## A008922.P15580693075168421864

`A008921(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A008922.P15580693075168421864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008921 n + a (A028310 n - 1).toNat

end

end A008922.P15580693075168421864

/-! ## A008922.P13751523331171247919

`A008921(n%A008921(n))+a(n-1)` with `a(0)=1`
-/

namespace A008922.P13751523331171247919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008921 (Int.tmod (n : ℤ) (A008921 n)).toNat + a (n - 1)

end

end A008922.P13751523331171247919

/-!
# A008925: Molien series for Conway group Con.0.

The programs for A008925, there is no canonical definition to state claims against.
-/

/-! ## A008925.P1173287790920325358

`∑[A008924(n)]`
-/

namespace A008925.P1173287790920325358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008925.P1173287790920325358

/-! ## A008925.P12035489457252596874

`A008924(n)+a(A323048(n))` with `a(0)=1`
-/

namespace A008925.P12035489457252596874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008924 n + a (A323048 n).toNat

end

end A008925.P12035489457252596874

/-! ## A008925.P1668046251883089774

`a(n-1)+A008924(n)+A000007(n)` with `a(0)=1`
-/

namespace A008925.P1668046251883089774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A008924 n + A000007 n)

end

end A008925.P1668046251883089774

/-! ## A008925.P4819374313838868737

`a(n-1)+A008924(n)+A000038(n)` with `a(0)=1`
-/

namespace A008925.P4819374313838868737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A008924 n + A000038 n)

end

end A008925.P4819374313838868737

/-! ## A008925.P16994218705581251020

`a(n-1)+A008924(n)%A069778(n)` with `a(0)=1`
-/

namespace A008925.P16994218705581251020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A008924 n) (A069778 n)

end

end A008925.P16994218705581251020

/-!
# A008926: Number of uniquely agreeing sequences.

The programs for A008926, there is no canonical definition to state claims against.
-/

/-! ## A008926.P7428739649157010640

`ceil(sqrt(cosh(1-n)^n))`
-/

namespace A008926.P7428739649157010640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.cosh (1 - (n : ℤ) : ℝ) ^ n)⌉

end

end A008926.P7428739649157010640

/-!
# A008927: Number of increasing sequences of star chain type with maximal element n.

The programs for A008927, there is no canonical definition to state claims against.
-/

/-! ## A008927.P14020467642098171833

`A229158(A293642(n))+A210736(n)`
-/

namespace A008927.P14020467642098171833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229158 (A293642 n).toNat + A210736 n

end

end A008927.P14020467642098171833

/-! ## A008927.P3990868695575125394

`A336488(A218032(n+1))`
-/

namespace A008927.P3990868695575125394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336488 (A218032 (n + 1)).toNat

end

end A008927.P3990868695575125394

/-! ## A008927.P18162454589336851517

`A003056(A378971(n)+A045684(n))`
-/

namespace A008927.P18162454589336851517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A378971 n + A045684 n).toNat

end

end A008927.P18162454589336851517

/-! ## A008927.P3611828868671938401

`A161205(A316103(n)+A086012(2*(n+1)))`
-/

namespace A008927.P3611828868671938401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A316103 n + A086012 (2 * (n + 1))).toNat

end

end A008927.P3611828868671938401

/-! ## A008927.P5557843292864970096

`A276330(A058348(3*n+4))+A210736(n)`
-/

namespace A008927.P5557843292864970096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276330 (A058348 (3 * n + 4)).toNat + A210736 n

end

end A008927.P5557843292864970096

/-!
# A008928: Number of increasing sequences of addition chain type with maximal element n.

The programs for A008928, there is no canonical definition to state claims against.
-/

/-! ## A008928.P1663756757253461904

`A295866(A007002(n+1))`
-/

namespace A008928.P1663756757253461904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295866 (A007002 (n + 1)).toNat

end

end A008928.P1663756757253461904

/-! ## A008928.P11741187429150036735

`A020915(A320797(n+1))`
-/

namespace A008928.P11741187429150036735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A320797 (n + 1)).toNat

end

end A008928.P11741187429150036735

/-! ## A008928.P11317877921700083966

`A210736(n)+A068063(A035039(n))`
-/

namespace A008928.P11317877921700083966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n + A068063 (A035039 n).toNat

end

end A008928.P11317877921700083966

/-!
# A008929: Number of increasing sequences of Goldbach type with maximal element n.

The programs for A008929, there is no canonical definition to state claims against.
-/

/-! ## A008929.P14096506885201019658

`A066062(abs(1-n))`
-/

namespace A008929.P14096506885201019658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066062 |1 - (n : ℤ)|.toNat

end

end A008929.P14096506885201019658

/-! ## A008929.P6290126545444519974

`∏{e}[A011782(n), A066062(#)]`
-/

namespace A008929.P6290126545444519974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A066062 (Nat.factorization (f1 n).natAbs p)

end

end A008929.P6290126545444519974

/-! ## A008929.P14506866021041863914

`A331162(A007562(n+1))`
-/

namespace A008929.P14506866021041863914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331162 (A007562 (n + 1)).toNat

end

end A008929.P14506866021041863914

/-! ## A008929.P5377984850956565757

`A331162(A329699(n+1))`
-/

namespace A008929.P5377984850956565757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331162 (A329699 (n + 1)).toNat

end

end A008929.P5377984850956565757

/-!
# A008930: Number of compositions (p_1, p_2, p_3, ...) of n with 1 <= p_i <= i for all i.

The programs for A008930, there is no canonical definition to state claims against.
-/

/-! ## A008930.P4237484472101095496

`A171682(n+1)+A000007(n)-A238859(n)`
-/

namespace A008930.P4237484472101095496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171682 (n + 1) + (A000007 n - A238859 n)

end

end A008930.P4237484472101095496

/-! ## A008930.P12932264033089135329

`A171682(n+1)+A057428(n)*A238859(n)`
-/

namespace A008930.P12932264033089135329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171682 (n + 1) + A057428 n * A238859 n

end

end A008930.P12932264033089135329

/-! ## A008930.P112980962174507731

`A171682(n+1)-A057427(n)*A238859(n)`
-/

namespace A008930.P112980962174507731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171682 (n + 1) - A057427 n * A238859 n

end

end A008930.P112980962174507731

/-! ## A008930.P8488998852899568270

`A171682(n+1)-A238859(n)%A000079(n)`
-/

namespace A008930.P8488998852899568270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171682 (n + 1) - Int.tmod (A238859 n) (A000079 n)

end

end A008930.P8488998852899568270

/-! ## A008930.P9209451697175507083

`A352524(A006463(n+1))`
-/

namespace A008930.P9209451697175507083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352524 (A006463 (n + 1)).toNat

end

end A008930.P9209451697175507083

/-!
# A008932: Number of increasing sequences of Goldbach type of length n; a(0) = 1 by convention.

The programs for A008932, there is no canonical definition to state claims against.
-/

/-! ## A008932.P14705004827822536217

`∏{e}[2^n, A167809(#)]`
-/

namespace A008932.P14705004827822536217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A167809 (Nat.factorization (f1 n) p)

end

end A008932.P14705004827822536217

/-! ## A008932.P11201605468088631519

`A167809(floor(acot(n)+n))`
-/

namespace A008932.P11201605468088631519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167809 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A008932.P11201605468088631519

/-! ## A008932.P5425585129232686031

`A167809(n^floor(atan(n)))`
-/

namespace A008932.P5425585129232686031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167809 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A008932.P5425585129232686031

/-! ## A008932.P13832291039362105622

`A167809(or(n, floor(acot(n))))`
-/

namespace A008932.P13832291039362105622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167809 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A008932.P13832291039362105622

/-! ## A008932.P17704096671607290541

`A167809(xor(n, floor(acot(n))))`
-/

namespace A008932.P17704096671607290541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167809 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A008932.P17704096671607290541

/-!
# A008933: Number of strictly increasing addition chains of length n.

The programs for A008933, there is no canonical definition to state claims against.
-/

/-! ## A008933.P13695926002189112069

`A289494(3*A191277(n))`
-/

namespace A008933.P13695926002189112069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (3 * A191277 n).toNat

end

end A008933.P13695926002189112069

/-! ## A008933.P2305615136405129797

`A029726(n)+A004526(A134055(n))`
-/

namespace A008933.P2305615136405129797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029726 n + A004526 (A134055 n).toNat

end

end A008933.P2305615136405129797

/-! ## A008933.P12970677994751695390

`A137579(A000295(n))+A124373(n)`
-/

namespace A008933.P12970677994751695390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A000295 n).toNat + A124373 n

end

end A008933.P12970677994751695390

/-!
# A008934: Number of tournament sequences: sequences (a_1, a_2, ..., a_n) with a_1 = 1 such that a_i < a_{i+1} <= 2*a_i for all i.

The programs for A008934, there is no canonical definition to state claims against.
-/

/-! ## A008934.P11748537239293053295

`A093655(2^n)`
-/

namespace A008934.P11748537239293053295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093655 (2 ^ n)

end

end A008934.P11748537239293053295

/-! ## A008934.P2132475496225575656

`A097710(∑[n])`
-/

namespace A008934.P2132475496225575656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097710 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008934.P2132475496225575656

/-! ## A008934.P10819338245833552705

`abs(record[Δ[A093729(n)]])`
-/

namespace A008934.P10819338245833552705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093729 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A008934.P10819338245833552705

/-! ## A008934.P4688971380030866026

`A093729(∑[n+1]+1)`
-/

namespace A008934.P4688971380030866026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093729 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A008934.P4688971380030866026

/-! ## A008934.P14401510075301701385

`or(A000007(n), A097710(A000217(n)))`
-/

namespace A008934.P14401510075301701385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A097710 (A000217 n).toNat)

end

end A008934.P14401510075301701385

/-!
# A008935: If 2n = Sum 2^e(k) then a(n) = Sum e(k)^2.

The programs for A008935, the canonical program `A008935.P348153319501579811` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008935 has offset 1).

The definition of A008935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008935.P348153319501579811

`∑[A179297(val(n+1, 2)+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008935

/-- `∑[A179297(val(n+1, 2)+1)]` -/
def P348153319501579811.Spec : Prop :=
  ∀ n, P348153319501579811.a n = A008935 (n + 1)

theorem P348153319501579811.correct : P348153319501579811.Spec := by
  intro n
  simp only [A008935, Nat.add_sub_cancel]

end A008935

/-! ## A008935.P613205391487522312

`∑[A179297(A001511(n+1))]`
-/

namespace A008935.P613205391487522312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179297 (A001511 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008935.P613205391487522312

namespace A008935

/-- `∑[A179297(A001511(n+1))]` -/
def P613205391487522312.Spec : Prop :=
  ∀ n, P613205391487522312.a n = A008935 (n + 1)

end A008935

/-! ## A008935.P7509043593894928155

`∑{digits}[A086068(n+1), (#+1)²]`
-/

namespace A008935.P7509043593894928155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x + 1) ^ 2).sum

end

end A008935.P7509043593894928155

namespace A008935

/-- `∑{digits}[A086068(n+1), (#+1)²]` -/
def P7509043593894928155.Spec : Prop :=
  ∀ n, (P7509043593894928155.a n : ℤ) = A008935 (n + 1)

end A008935

/-! ## A008935.P10730421818916424301

`∑{digits}[A262557(n+1), (#+1)²]`
-/

namespace A008935.P10730421818916424301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x + 1) ^ 2).sum

end

end A008935.P10730421818916424301

namespace A008935

/-- `∑{digits}[A262557(n+1), (#+1)²]` -/
def P10730421818916424301.Spec : Prop :=
  ∀ n, (P10730421818916424301.a n : ℤ) = A008935 (n + 1)

end A008935

/-! ## A008935.P8793956993537657966

`∑{digits}[A063013(n+1), #²]`
-/

namespace A008935.P8793956993537657966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063013 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A008935.P8793956993537657966

namespace A008935

/-- `∑{digits}[A063013(n+1), #²]` -/
def P8793956993537657966.Spec : Prop :=
  ∀ n, (P8793956993537657966.a n : ℤ) = A008935 (n + 1)

end A008935

/-! ## A008935.P11829423966121479971

`∑{p}[A019565(n+1), A000720(#)²]`
-/

namespace A008935.P11829423966121479971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p ^ 2

end

end A008935.P11829423966121479971

namespace A008935

/-- `∑{p}[A019565(n+1), A000720(#)²]` -/
def P11829423966121479971.Spec : Prop :=
  ∀ n, P11829423966121479971.a n = A008935 (n + 1)

end A008935

/-! ## A008935.P9903560533635527832

`∑{p}[A019565(n+1), A290103(#)²]`
-/

namespace A008935.P9903560533635527832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A290103 p ^ 2

end

end A008935.P9903560533635527832

namespace A008935

/-- `∑{p}[A019565(n+1), A290103(#)²]` -/
def P9903560533635527832.Spec : Prop :=
  ∀ n, P9903560533635527832.a n = A008935 (n + 1)

end A008935

/-! ## A008935.P12058145262618125075

`A289506(A019565(n+1))`
-/

namespace A008935.P12058145262618125075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (A019565 (n + 1)).toNat

end

end A008935.P12058145262618125075

namespace A008935

/-- `A289506(A019565(n+1))` -/
def P12058145262618125075.Spec : Prop :=
  ∀ n, P12058145262618125075.a n = A008935 (n + 1)

end A008935

/-! ## A008935.P13756723085960990223

`A289506(A339809(n+1)+1)`
-/

namespace A008935.P13756723085960990223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (A339809 (n + 1) + 1).toNat

end

end A008935.P13756723085960990223

namespace A008935

/-- `A289506(A339809(n+1)+1)` -/
def P13756723085960990223.Spec : Prop :=
  ∀ n, P13756723085960990223.a n = A008935 (n + 1)

end A008935

/-!
# A008936: Expansion of (1 - 2*x -x^4)/(1 - 2*x)^2 in powers of x.

The programs for A008936, the canonical program `A008936.P9589671078343455174` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008936 has offset 0).

The definition of A008936 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x-x^4)/(1-4x+4x^2))` (program `A008936.P9589671078343455174`, by `A008936.P9589671078343455174.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008936.P9589671078343455174

`ogf((1-2x-x^4)/(1-4x+4x^2))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008936

/-- `ogf((1-2x-x^4)/(1-4x+4x^2))` -/
def P9589671078343455174.Spec : Prop :=
  ∀ n, P9589671078343455174.a n = A008936 n

theorem P9589671078343455174.correct : P9589671078343455174.Spec := by
  intro n
  simp only [A008936]

end A008936

/-! ## A008936.P16350889778144032578

`2*a(n-1)-2^(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A008936.P16350889778144032578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  2 * a (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ)

end

end A008936.P16350889778144032578

namespace A008936

/-- `2*a(n-1)-2^(n-4)` -/
def P16350889778144032578.Spec : Prop :=
  ∀ n, P16350889778144032578.a n = (A008936 n : ℚ)

end A008936

/-! ## A008936.P17920595935500508667

`4*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=15`
-/

namespace A008936.P17920595935500508667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 15] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A008936.P17920595935500508667

namespace A008936

/-- `4*(a(n-1)-a(n-2))` -/
def P17920595935500508667.Spec : Prop :=
  ∀ n, P17920595935500508667.a n = A008936 n

end A008936

/-! ## A008936.P7953971828388780254

`Δ[A290114(n)]-A034007(n)`
-/

namespace A008936.P7953971828388780254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A034007 n

end

end A008936.P7953971828388780254

namespace A008936

/-- `Δ[A290114(n)]-A034007(n)` -/
def P7953971828388780254.Spec : Prop :=
  ∀ n, P7953971828388780254.a n = A008936 n

end A008936

/-! ## A008936.P14814223659162826292

`lcm(2, A111286(n+1))-A034007(n)`
-/

namespace A008936.P14814223659162826292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A111286 (n + 1)) : ℤ) - A034007 n

end

end A008936.P14814223659162826292

namespace A008936

/-- `lcm(2, A111286(n+1))-A034007(n)` -/
def P14814223659162826292.Spec : Prop :=
  ∀ n, P14814223659162826292.a n = A008936 n

end A008936

/-! ## A008936.P3277507744381738742

`A000079(n)-A139756(A289207(n))`
-/

namespace A008936.P3277507744381738742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A139756 (A289207 n).toNat

end

end A008936.P3277507744381738742

namespace A008936

/-- `A000079(n)-A139756(A289207(n))` -/
def P3277507744381738742.Spec : Prop :=
  ∀ n, P3277507744381738742.a n = A008936 n

end A008936

/-! ## A008936.P9490276803591101182

`A111286(n+1)-A034007(A028310(n))`
-/

namespace A008936.P9490276803591101182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (n + 1) - A034007 (A028310 n).toNat

end

end A008936.P9490276803591101182

namespace A008936

/-- `A111286(n+1)-A034007(A028310(n))` -/
def P9490276803591101182.Spec : Prop :=
  ∀ n, P9490276803591101182.a n = A008936 n

end A008936

/-! ## A008936.P10370680150586179767

`A129955(n)-(A057711(n)+A034007(n))`
-/

namespace A008936.P10370680150586179767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129955 n - (A057711 n + A034007 n)

end

end A008936.P10370680150586179767

namespace A008936

/-- `A129955(n)-(A057711(n)+A034007(n))` -/
def P10370680150586179767.Spec : Prop :=
  ∀ n, P10370680150586179767.a n = A008936 n

end A008936

/-! ## A008936.P2622917304666575242

`A211164(A103517(n))-A139756(A289207(n))`
-/

namespace A008936.P2622917304666575242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211164 (A103517 n).toNat - A139756 (A289207 n).toNat

end

end A008936.P2622917304666575242

namespace A008936

/-- `A211164(A103517(n))-A139756(A289207(n))` -/
def P2622917304666575242.Spec : Prop :=
  ∀ n, P2622917304666575242.a n = A008936 n

end A008936

/-!
# A008937: a(n) = Sum_{k=0..n} T(k) where T(n) are the tribonacci numbers A000073.

The programs for A008937, the canonical program `A008937.P15076862289702076287` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008937 has offset 0).

The definition of A008937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008937.P15076862289702076287

`2*a(n-1)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008937

/-- `2*a(n-1)-a(n-4)` -/
def P15076862289702076287.Spec : Prop :=
  ∀ n, P15076862289702076287.a n = A008937 n

theorem P15076862289702076287.correct : P15076862289702076287.Spec := by
  intro n
  simp only [A008937]

end A008937

/-! ## A008937.P836109764356203464

`1+a(n-1)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A008937.P836109764356203464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  1 + a (n - 1) + a (n - 2) + a (n - 3)

end

end A008937.P836109764356203464

namespace A008937

/-- `1+a(n-1)+a(n-2)+a(n-3)` -/
def P836109764356203464.Spec : Prop :=
  ∀ n, (P836109764356203464.a n : ℤ) = A008937 n

end A008937

/-! ## A008937.P13654652908452465667

`(A000213(n+2)-1)/2`
-/

namespace A008937.P13654652908452465667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 (n + 2) - 1 : ℚ) / 2

end

end A008937.P13654652908452465667

namespace A008937

/-- `(A000213(n+2)-1)/2` -/
def P13654652908452465667.Spec : Prop :=
  ∀ n, P13654652908452465667.a n = (A008937 n : ℚ)

end A008937

/-! ## A008937.P5330948620157595519

`ogf(x/(1-2x+x^4))`
-/

namespace A008937.P5330948620157595519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 0, 0, 1] n

end

end A008937.P5330948620157595519

namespace A008937

/-- `ogf(x/(1-2x+x^4))` -/
def P5330948620157595519.Spec : Prop :=
  ∀ n, P5330948620157595519.a n = A008937 n

end A008937

/-! ## A008937.P13943129591232737502

`a(n-1)+a(n-1)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A008937.P13943129591232737502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 4))

end

end A008937.P13943129591232737502

namespace A008937

/-- `a(n-1)+a(n-1)-a(n-4)` -/
def P13943129591232737502.Spec : Prop :=
  ∀ n, P13943129591232737502.a n = A008937 n

theorem P13943129591232737502.correct : P13943129591232737502.Spec := by
  intro n
  simp only [A008937, Nat.add_sub_cancel, A008937.P13943129591232737502.a, A008937.P15076862289702076287.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A008937

/-! ## A008937.P6301120413785751969

`floor(a(n-1)-(a(n-4)-a(n-1)))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A008937.P6301120413785751969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 1))

end

end A008937.P6301120413785751969

namespace A008937

/-- `floor(a(n-1)-(a(n-4)-a(n-1)))` -/
def P6301120413785751969.Spec : Prop :=
  ∀ n, P6301120413785751969.a n = A008937 n

theorem P6301120413785751969.correct : P6301120413785751969.Spec := by
  intro n
  simp only [A008937, Nat.add_sub_cancel, A008937.P6301120413785751969.a, A008937.P15076862289702076287.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A008937

/-! ## A008937.P3925400467953759129

`∑[a(n-1)-(a(n-4)-a(n-1))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A008937.P3925400467953759129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n f1 =>
  f1 (n - 1) - (f1 (n - 4) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008937.P3925400467953759129

namespace A008937

/-- `∑[a(n-1)-(a(n-4)-a(n-1))]` -/
def P3925400467953759129.Spec : Prop :=
  ∀ n, P3925400467953759129.a n = A008937 n

end A008937

/-! ## A008937.P16497538857643885683

`∑[∑[A001590(n)]]`
-/

namespace A008937.P16497538857643885683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008937.P16497538857643885683

namespace A008937

/-- `∑[∑[A001590(n)]]` -/
def P16497538857643885683.Spec : Prop :=
  ∀ n, P16497538857643885683.a n = A008937 n

end A008937

/-! ## A008937.P17311054617114655522

`∑[A000073(n+1)]`
-/

namespace A008937.P17311054617114655522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008937.P17311054617114655522

namespace A008937

/-- `∑[A000073(n+1)]` -/
def P17311054617114655522.Spec : Prop :=
  ∀ n, P17311054617114655522.a n = A008937 n

end A008937

/-! ## A008937.P13788236449696096234

`A192804(n+2)-1`
-/

namespace A008937.P13788236449696096234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (n + 2) - 1

end

end A008937.P13788236449696096234

namespace A008937

/-- `A192804(n+2)-1` -/
def P13788236449696096234.Spec : Prop :=
  ∀ n, P13788236449696096234.a n = A008937 n

end A008937

/-! ## A008937.P13284403112878199268

`A317200(n+2)-2`
-/

namespace A008937.P13284403112878199268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317200 (n + 2) - 2

end

end A008937.P13284403112878199268

namespace A008937

/-- `A317200(n+2)-2` -/
def P13284403112878199268.Spec : Prop :=
  ∀ n, P13284403112878199268.a n = A008937 n

end A008937

/-! ## A008937.P13902219385892162450

`∑[A354784(n+1)/2]`
-/

namespace A008937.P13902219385892162450
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354784 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008937.P13902219385892162450

namespace A008937

/-- `∑[A354784(n+1)/2]` -/
def P13902219385892162450.Spec : Prop :=
  ∀ n, P13902219385892162450.a n = (A008937 n : ℚ)

end A008937

/-! ## A008937.P10639918760228213297

`∑[abs(Δ[A192804(n+1)])]`
-/

namespace A008937.P10639918760228213297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008937.P10639918760228213297

namespace A008937

/-- `∑[abs(Δ[A192804(n+1)])]` -/
def P10639918760228213297.Spec : Prop :=
  ∀ n, P10639918760228213297.a n = A008937 n

end A008937

/-! ## A008937.P17266031603911285179

`∑[A114952(A014601(n+1))]`
-/

namespace A008937.P17266031603911285179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (A014601 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008937.P17266031603911285179

namespace A008937

/-- `∑[A114952(A014601(n+1))]` -/
def P17266031603911285179.Spec : Prop :=
  ∀ n, P17266031603911285179.a n = A008937 n

end A008937

/-! ## A008937.P18150436433314686722

`∑[A214727(n)-A000213(n)]`
-/

namespace A008937.P18150436433314686722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n - A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008937.P18150436433314686722

namespace A008937

/-- `∑[A214727(n)-A000213(n)]` -/
def P18150436433314686722.Spec : Prop :=
  ∀ n, P18150436433314686722.a n = A008937 n

end A008937

/-! ## A008937.P17602057980502026510

`∑[∑[A276658(n)-A081172(n)]]`
-/

namespace A008937.P17602057980502026510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 n - A081172 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008937.P17602057980502026510

namespace A008937

/-- `∑[∑[A276658(n)-A081172(n)]]` -/
def P17602057980502026510.Spec : Prop :=
  ∀ n, P17602057980502026510.a n = A008937 n

end A008937

/-! ## A008937.P8636358659402449649

`∑[A112476(n+1)+A033999(n)]`
-/

namespace A008937.P8636358659402449649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112476 (n + 1) + A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008937.P8636358659402449649

namespace A008937

/-- `∑[A112476(n+1)+A033999(n)]` -/
def P8636358659402449649.Spec : Prop :=
  ∀ n, P8636358659402449649.a n = A008937 n

end A008937

/-! ## A008937.P6487699797337887827

`∑[A099330(n+1)+A099329(n+1)]`
-/

namespace A008937.P6487699797337887827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099330 (n + 1) + A099329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008937.P6487699797337887827

namespace A008937

/-- `∑[A099330(n+1)+A099329(n+1)]` -/
def P6487699797337887827.Spec : Prop :=
  ∀ n, P6487699797337887827.a n = A008937 n

end A008937

/-! ## A008937.P5061995755370831718

`∑[A000213(n+1)-A081172(n+1)]`
-/

namespace A008937.P5061995755370831718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1) - A081172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008937.P5061995755370831718

namespace A008937

/-- `∑[A000213(n+1)-A081172(n+1)]` -/
def P5061995755370831718.Spec : Prop :=
  ∀ n, P5061995755370831718.a n = A008937 n

end A008937

/-! ## A008937.P10148985576363314440

`∑[A338192(n+1)-A000045(n+1)]`
-/

namespace A008937.P10148985576363314440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338192 (n + 1) - A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008937.P10148985576363314440

namespace A008937

/-- `∑[A338192(n+1)-A000045(n+1)]` -/
def P10148985576363314440.Spec : Prop :=
  ∀ n, P10148985576363314440.a n = A008937 n

end A008937

/-!
# A008942: Degrees of irreducible representations of group U3(8).

The programs for A008942, there is no canonical definition to state claims against.
-/

/-! ## A008942.P13476235628664861204

`A078910(A144186(n+2)²)`
-/

namespace A008942.P13476235628664861204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078910 (A144186 (n + 2) ^ 2).toNat

end

end A008942.P13476235628664861204

/-!
# A008944: Degrees of irreducible representations of group U3(11).

The programs for A008944, there is no canonical definition to state claims against.
-/

/-! ## A008944.P2598416977745527401

`A034088(∏{e}[A113627(n+1), #])`
-/

namespace A008944.P2598416977745527401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034088 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A008944.P2598416977745527401

/-!
# A008948: Degrees of irreducible representations of group U6(2).

The programs for A008948, there is no canonical definition to state claims against.
-/

/-! ## A008948.P6613599306346958171

`record[A003909(n+1)/A000602(n)]`
-/

namespace A008948.P6613599306346958171
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003909 (n + 1) : ℚ) / (A000602 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008948.P6613599306346958171

/-!
# A008949: Triangle read by rows of partial sums of binomial coefficients: T(n,k) = Sum_{i=0..k} binomial(n,i) (0 <= k <= n); also dimensions of Reed-Muller codes.

The programs for A008949, the canonical program `A008949.P2973966534805579384` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008949 has offset 0).

The definition of A008949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008949.P8586325318948832843

`ceil(A221881(n+1)/2)`
-/

namespace A008949.P8586325318948832843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A221881 (n + 1) : ℚ) / 2⌉

end

end A008949.P8586325318948832843

namespace A008949

/-- `ceil(A221881(n+1)/2)` -/
def P8586325318948832843.Spec : Prop :=
  ∀ n, P8586325318948832843.a n = A008949 n

end A008949

/-! ## A008949.P3767487243279677740

`A102363(n+1)-A137688(n)`
-/

namespace A008949.P3767487243279677740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (n + 1) - A137688 n

end

end A008949.P3767487243279677740

namespace A008949

/-- `A102363(n+1)-A137688(n)` -/
def P3767487243279677740.Spec : Prop :=
  ∀ n, P3767487243279677740.a n = A008949 n

end A008949

/-! ## A008949.P13258037157070025336

`A204202(n+1)-A054143(n)`
-/

namespace A008949.P13258037157070025336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204202 (n + 1) - A054143 n

end

end A008949.P13258037157070025336

namespace A008949

/-- `A204202(n+1)-A054143(n)` -/
def P13258037157070025336.Spec : Prop :=
  ∀ n, P13258037157070025336.a n = A008949 n

theorem P13258037157070025336.correct : P13258037157070025336.Spec := by
  intro n
  simp only [A008949, Nat.add_sub_cancel, A008949.P13258037157070025336.a, A008949.P2973966534805579384.f1, A008949.P2973966534805579384.a, A007318, A007318.P302227728145965961.a, A054143, A054143.P11222314207562248900.a, A137688, A137688.P9746695207037186753.a, A204202, A204202.P1024099258740543106.a, A003056, A003056.P5318256527314048597.a, A140513, A140513.P13579608035938851890.a, A204206, A204206.P854096699827338767.f1, A204206.P854096699827338767.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A010054, A010054.P18347828677204923252.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A008949

/-! ## A008949.P13490220072891754844

`A093375(n+1)-A355659(n)`
-/

namespace A008949.P13490220072891754844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (n + 1) - A355659 n

end

end A008949.P13490220072891754844

namespace A008949

/-- `A093375(n+1)-A355659(n)` -/
def P13490220072891754844.Spec : Prop :=
  ∀ n, P13490220072891754844.a n = A008949 n

theorem P13490220072891754844.correct : P13490220072891754844.Spec := by
  intro n
  simp only [A008949, Nat.add_sub_cancel, A008949.P13490220072891754844.a, A008949.P2973966534805579384.f1, A008949.P2973966534805579384.a, A007318, A007318.P302227728145965961.a, A093375, A093375.P10840461646579491391.a, A137688, A137688.P9746695207037186753.a, A355659, A355659.P4047661433713095930.a, A003056, A003056.P5318256527314048597.a, A028326, A028326.P16610217584664895500.a, A055137, A055137.P26245966992457174.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A025581, A025581.P420762180635059694.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A008949

/-! ## A008949.P4888876239595152894

`(A054143(n)+A007318(n))/2`
-/

namespace A008949.P4888876239595152894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054143 n + A007318 n : ℚ) / 2

end

end A008949.P4888876239595152894

namespace A008949

/-- `(A054143(n)+A007318(n))/2` -/
def P4888876239595152894.Spec : Prop :=
  ∀ n, P4888876239595152894.a n = (A008949 n : ℚ)

end A008949

/-! ## A008949.P2973966534805579384

`∑[A007318(n)]+1-A137688(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A008949

/-- `∑[A007318(n)]+1-A137688(n)` -/
def P2973966534805579384.Spec : Prop :=
  ∀ n, P2973966534805579384.a n = A008949 n

theorem P2973966534805579384.correct : P2973966534805579384.Spec := by
  intro n
  simp only [A008949]

end A008949

/-! ## A008949.P16733552033215084601

`(A054143(n)+Δ[A102363(n)])/2`
-/

namespace A008949.P16733552033215084601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054143 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A008949.P16733552033215084601

namespace A008949

/-- `(A054143(n)+Δ[A102363(n)])/2` -/
def P16733552033215084601.Spec : Prop :=
  ∀ n, P16733552033215084601.a n = (A008949 n : ℚ)

end A008949

/-! ## A008949.P16313645230489227253

`A204204(n+1)-A204202(n+1)`
-/

namespace A008949.P16313645230489227253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204204 (n + 1) - A204202 (n + 1)

end

end A008949.P16313645230489227253

namespace A008949

/-- `A204204(n+1)-A204202(n+1)` -/
def P16313645230489227253.Spec : Prop :=
  ∀ n, P16313645230489227253.a n = A008949 n

theorem P16313645230489227253.correct : P16313645230489227253.Spec := by
  intro n
  simp only [A008949, Nat.add_sub_cancel, A008949.P16313645230489227253.a, A008949.P2973966534805579384.f1, A008949.P2973966534805579384.a, A007318, A007318.P302227728145965961.a, A137688, A137688.P9746695207037186753.a, A204202, A204202.P1024099258740543106.a, A204204, A204204.P9788490803614695615.a, A003056, A003056.P5318256527314048597.a, A054143, A054143.P11222314207562248900.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A140513, A140513.P13579608035938851890.a, A204206, A204206.P854096699827338767.f1, A204206.P854096699827338767.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A008949

/-! ## A008949.P2008768623009257529

`2*A054143(n)-A204201(n+1)`
-/

namespace A008949.P2008768623009257529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054143 n - A204201 (n + 1)

end

end A008949.P2008768623009257529

namespace A008949

/-- `2*A054143(n)-A204201(n+1)` -/
def P2008768623009257529.Spec : Prop :=
  ∀ n, P2008768623009257529.a n = A008949 n

theorem P2008768623009257529.correct : P2008768623009257529.Spec := by
  intro n
  simp only [A008949, Nat.add_sub_cancel, A008949.P2008768623009257529.a, A008949.P2973966534805579384.f1, A008949.P2973966534805579384.a, A007318, A007318.P302227728145965961.a, A054143, A054143.P11222314207562248900.a, A137688, A137688.P9746695207037186753.a, A204201, A204201.P4812556110496593180.a, A003056, A003056.P5318256527314048597.a, A140513, A140513.P13579608035938851890.a, A204206, A204206.P854096699827338767.f1, A204206.P854096699827338767.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A010054, A010054.P18347828677204923252.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A008949

/-! ## A008949.P8303654454983770395

`2*A204201(n+1)-A204205(n+1)`
-/

namespace A008949.P8303654454983770395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204201 (n + 1) - A204205 (n + 1)

end

end A008949.P8303654454983770395

namespace A008949

/-- `2*A204201(n+1)-A204205(n+1)` -/
def P8303654454983770395.Spec : Prop :=
  ∀ n, P8303654454983770395.a n = A008949 n

theorem P8303654454983770395.correct : P8303654454983770395.Spec := by
  intro n
  simp only [A008949, Nat.add_sub_cancel, A008949.P8303654454983770395.a, A008949.P2973966534805579384.f1, A008949.P2973966534805579384.a, A007318, A007318.P302227728145965961.a, A137688, A137688.P9746695207037186753.a, A204201, A204201.P4812556110496593180.a, A204205, A204205.P18235704100513698987.a, A003056, A003056.P5318256527314048597.a, A054143, A054143.P11222314207562248900.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A140513, A140513.P13579608035938851890.a, A204206, A204206.P854096699827338767.f1, A204206.P854096699827338767.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A008949

/-! ## A008949.P10916588315077952720

`A102363(n+1)-A102363(A057944(n))`
-/

namespace A008949.P10916588315077952720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (n + 1) - A102363 (A057944 n).toNat

end

end A008949.P10916588315077952720

namespace A008949

/-- `A102363(n+1)-A102363(A057944(n))` -/
def P10916588315077952720.Spec : Prop :=
  ∀ n, P10916588315077952720.a n = A008949 n

end A008949

/-! ## A008949.P14886405554508883437

`A204201(n+1)+A055248(n)-A102363(n)`
-/

namespace A008949.P14886405554508883437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204201 (n + 1) + (A055248 n - A102363 n)

end

end A008949.P14886405554508883437

namespace A008949

/-- `A204201(n+1)+A055248(n)-A102363(n)` -/
def P14886405554508883437.Spec : Prop :=
  ∀ n, P14886405554508883437.a n = A008949 n

end A008949

/-! ## A008949.P6608741102879968146

`A204201(n+1)+A054143(n)-A204203(n+1)`
-/

namespace A008949.P6608741102879968146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204201 (n + 1) + (A054143 n - A204203 (n + 1))

end

end A008949.P6608741102879968146

namespace A008949

/-- `A204201(n+1)+A054143(n)-A204203(n+1)` -/
def P6608741102879968146.Spec : Prop :=
  ∀ n, P6608741102879968146.a n = A008949 n

end A008949

/-! ## A008949.P14431573373910169733

`A204203(n+1)+A054143(n)-A204205(n+1)`
-/

namespace A008949.P14431573373910169733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204203 (n + 1) + (A054143 n - A204205 (n + 1))

end

end A008949.P14431573373910169733

namespace A008949

/-- `A204203(n+1)+A054143(n)-A204205(n+1)` -/
def P14431573373910169733.Spec : Prop :=
  ∀ n, P14431573373910169733.a n = A008949 n

end A008949

/-! ## A008949.P8048296366289910435

`A055248(A061579(n))`
-/

namespace A008949.P8048296366289910435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (A061579 n).toNat

end

end A008949.P8048296366289910435

namespace A008949

/-- `A055248(A061579(n))` -/
def P8048296366289910435.Spec : Prop :=
  ∀ n, P8048296366289910435.a n = A008949 n

end A008949

/-! ## A008949.P1072024861142799489

`A055248(A038722(n+1)-1)`
-/

namespace A008949.P1072024861142799489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (A038722 (n + 1) - 1).toNat

end

end A008949.P1072024861142799489

namespace A008949

/-- `A055248(A038722(n+1)-1)` -/
def P1072024861142799489.Spec : Prop :=
  ∀ n, P1072024861142799489.a n = A008949 n

end A008949

/-! ## A008949.P946428085906652877

`A193820(comp[∑[n-1]])`
-/

namespace A008949.P946428085906652877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A008949.P946428085906652877

namespace A008949

/-- `A193820(comp[∑[n-1]])` -/
def P946428085906652877.Spec : Prop :=
  ∀ n, P946428085906652877.a n = A008949 n

end A008949

/-! ## A008949.P17253869607746166672

`A128175(A099375(n)+2+n)`
-/

namespace A008949.P17253869607746166672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (A099375 n + 2 + (n : ℤ)).toNat

end

end A008949.P17253869607746166672

namespace A008949

/-- `A128175(A099375(n)+2+n)` -/
def P17253869607746166672.Spec : Prop :=
  ∀ n, P17253869607746166672.a n = A008949 n

end A008949

/-! ## A008949.P17521654763576074348

`A007318(n)+a(n-1)%A098473(n)` with `a(0)=1`
-/

namespace A008949.P17521654763576074348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007318 n + Int.tmod (a (n - 1)) (A098473 n)

end

end A008949.P17521654763576074348

namespace A008949

/-- `A007318(n)+a(n-1)%A098473(n)` -/
def P17521654763576074348.Spec : Prop :=
  ∀ n, P17521654763576074348.a n = A008949 n

end A008949

/-! ## A008949.P9358414024082202351

`A167024(n)/A007318(n)`
-/

namespace A008949.P9358414024082202351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167024 n : ℚ) / (A007318 n : ℚ)

end

end A008949.P9358414024082202351

namespace A008949

/-- `A167024(n)/A007318(n)` -/
def P9358414024082202351.Spec : Prop :=
  ∀ n, P9358414024082202351.a n = (A008949 n : ℚ)

end A008949

/-!
# A008950: Increasing length runs of consecutive composite numbers (starting points).

The programs for A008950, there is no canonical definition to state claims against.
-/

/-! ## A008950.P1723075240971214974

`A002386(n+2)+1`
-/

namespace A008950.P1723075240971214974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002386 (n + 2) + 1

end

end A008950.P1723075240971214974

/-! ## A008950.P7617103809459584427

`A114058(n+2)/2+1`
-/

namespace A008950.P7617103809459584427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114058 (n + 2) : ℚ) / 2 + 1

end

end A008950.P7617103809459584427

/-! ## A008950.P14688092186377305765

`A030296(A005250(n+1))`
-/

namespace A008950.P14688092186377305765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 (A005250 (n + 1)).toNat

end

end A008950.P14688092186377305765

/-! ## A008950.P17774828815464242134

`A030296(A008996(n+1))`
-/

namespace A008950.P17774828815464242134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 (A008996 (n + 1)).toNat

end

end A008950.P17774828815464242134

/-! ## A008950.P7036065689453241918

`A030296(∑[A053695(n+1)])`
-/

namespace A008950.P7036065689453241918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008950.P7036065689453241918

/-! ## A008950.P11777842401965174101

`record[A030296(A000026(n+1))]`
-/

namespace A008950.P11777842401965174101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 (A000026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008950.P11777842401965174101

/-! ## A008950.P16637655380524962900

`record[A030296(A022998(n+1)-n)]`
-/

namespace A008950.P16637655380524962900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 (A022998 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008950.P16637655380524962900

/-! ## A008950.P674147299186612930

`A000101(n+2)-A008996(n+1)`
-/

namespace A008950.P674147299186612930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000101 (n + 2) - A008996 (n + 1)

end

end A008950.P674147299186612930

/-! ## A008950.P17220029584696822810

`record[(A109613(n)-n)*A030296(n+1)]`
-/

namespace A008950.P17220029584696822810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109613 n - (n : ℤ)) * A030296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008950.P17220029584696822810

/-!
# A008951: Array read by columns: number of partitions of n into parts of 2 kinds.

The programs for A008951, there is no canonical definition to state claims against.
-/

/-! ## A008951.P369914054527653803

`A321878(A187829(n+1))+A321878(n)`
-/

namespace A008951.P369914054527653803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321878 (A187829 (n + 1)).toNat + A321878 n

end

end A008951.P369914054527653803

/-! ## A008951.P10866961272628055479

`A321878(A077168(n))+A321878(n)`
-/

namespace A008951.P10866961272628055479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321878 (A077168 n).toNat + A321878 n

end

end A008951.P10866961272628055479

/-!
# A008952: Leading digit of 2^n.

The programs for A008952, the canonical program `A008952.P3263245786884273335` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008952 has offset 0).

The definition of A008952 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008952.P3263245786884273335

`A000030(A000079(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008952

/-- `A000030(A000079(n))` -/
def P3263245786884273335.Spec : Prop :=
  ∀ n, P3263245786884273335.a n = A008952 n

theorem P3263245786884273335.correct : P3263245786884273335.Spec := by
  intro n
  simp only [A008952]

end A008952

/-! ## A008952.P1832642450001151753

`A000030(A247243(n+1))`
-/

namespace A008952.P1832642450001151753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A247243 (n + 1)).toNat

end

end A008952.P1832642450001151753

namespace A008952

/-- `A000030(A247243(n+1))` -/
def P1832642450001151753.Spec : Prop :=
  ∀ n, P1832642450001151753.a n = A008952 n

end A008952

/-! ## A008952.P17834352071382458074

`floor(2^n/10^floor(n*log(2)/log(10)))`
-/

namespace A008952.P17834352071382458074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) / (10 : ℚ) ^ (⌊(n : ℝ) * Real.log (2 : ℝ) / Real.log (10 : ℝ)⌋ : ℤ)⌋

end

end A008952.P17834352071382458074

namespace A008952

/-- `floor(2^n/10^floor(n*log(2)/log(10)))` -/
def P17834352071382458074.Spec : Prop :=
  ∀ n, P17834352071382458074.a n = A008952 n

end A008952

/-! ## A008952.P2894998778268962611

`A004094(n)%10`
-/

namespace A008952.P2894998778268962611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004094 n) 10

end

end A008952.P2894998778268962611

namespace A008952

/-- `A004094(n)%10` -/
def P2894998778268962611.Spec : Prop :=
  ∀ n, P2894998778268962611.a n = A008952 n

end A008952

/-! ## A008952.P9230144223903685372

`(A341718(n)+1)%10`
-/

namespace A008952.P9230144223903685372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341718 n + 1) 10

end

end A008952.P9230144223903685372

namespace A008952

/-- `(A341718(n)+1)%10` -/
def P9230144223903685372.Spec : Prop :=
  ∀ n, P9230144223903685372.a n = A008952 n

end A008952

/-! ## A008952.P13944241872269683039

`(A002522(n)-(n²-A341718(n)))%10`
-/

namespace A008952.P13944241872269683039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002522 n - ((n ^ 2 : ℤ) - A341718 n)) 10

end

end A008952.P13944241872269683039

namespace A008952

/-- `(A002522(n)-(n²-A341718(n)))%10` -/
def P13944241872269683039.Spec : Prop :=
  ∀ n, P13944241872269683039.a n = A008952 n

end A008952

/-! ## A008952.P13380802601435194749

`A367362(10*A247243(n+1))`
-/

namespace A008952.P13380802601435194749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367362 (10 * A247243 (n + 1)).toNat

end

end A008952.P13380802601435194749

namespace A008952

/-- `A367362(10*A247243(n+1))` -/
def P13380802601435194749.Spec : Prop :=
  ∀ n, P13380802601435194749.a n = A008952 n

end A008952

/-! ## A008952.P996024956170903239

`A084010(n)%10`
-/

namespace A008952.P996024956170903239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084010 n) 10

end

end A008952.P996024956170903239

namespace A008952

/-- `A084010(n)%10` -/
def P996024956170903239.Spec : Prop :=
  ∀ n, P996024956170903239.a n = A008952 n

end A008952

/-! ## A008952.P3301686979215887784

`(2-(A054143(∑[n])-A341718(n)))%10`
-/

namespace A008952.P3301686979215887784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - (A054143 (∑ j ∈ Finset.range (n + 1), f1 j) - A341718 n)) 10

end

end A008952.P3301686979215887784

namespace A008952

/-- `(2-(A054143(∑[n])-A341718(n)))%10` -/
def P3301686979215887784.Spec : Prop :=
  ∀ n, P3301686979215887784.a n = A008952 n

end A008952

/-!
# A008953: a(n) is the leading digit of the n-th triangular number, n*(n+1)/2.

The programs for A008953, the canonical program `A008953.P16873125012605614489` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008953 has offset 1).

The definition of A008953 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008953.P16873125012605614489

`A000030(A000217(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008953

/-- `A000030(A000217(n+1))` -/
def P16873125012605614489.Spec : Prop :=
  ∀ n, P16873125012605614489.a n = A008953 (n + 1)

theorem P16873125012605614489.correct : P16873125012605614489.Spec := by
  intro n
  simp only [A008953, Nat.add_sub_cancel]

end A008953

/-! ## A008953.P15329064601943700819

`A004158(n+1)%10`
-/

namespace A008953.P15329064601943700819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004158 (n + 1)) 10

end

end A008953.P15329064601943700819

namespace A008953

/-- `A004158(n+1)%10` -/
def P15329064601943700819.Spec : Prop :=
  ∀ n, P15329064601943700819.a n = A008953 (n + 1)

end A008953

/-! ## A008953.P573708394371266946

`A004086(∑[n+1])%10`
-/

namespace A008953.P573708394371266946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (∑ j ∈ Finset.range (n + 1), f1 j)) 10

end

end A008953.P573708394371266946

namespace A008953

/-- `A004086(∑[n+1])%10` -/
def P573708394371266946.Spec : Prop :=
  ∀ n, P573708394371266946.a n = A008953 (n + 1)

end A008953

/-! ## A008953.P2768321293144426832

`A008952(A018856(∑[n+1]))`
-/

namespace A008953.P2768321293144426832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 (A018856 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A008953.P2768321293144426832

namespace A008953

/-- `A008952(A018856(∑[n+1]))` -/
def P2768321293144426832.Spec : Prop :=
  ∀ n, P2768321293144426832.a n = A008953 (n + 1)

end A008953

/-! ## A008953.P1862938910763463301

`(A056964(∑[n+1])-∑[n+1])%10`
-/

namespace A008953.P1862938910763463301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056964 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) 10

end

end A008953.P1862938910763463301

namespace A008953

/-- `(A056964(∑[n+1])-∑[n+1])%10` -/
def P1862938910763463301.Spec : Prop :=
  ∀ n, P1862938910763463301.a n = A008953 (n + 1)

end A008953

/-! ## A008953.P1775322870563742072

`A000030(∑[n]+A228722(n)+1)`
-/

namespace A008953.P1775322870563742072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A228722 n + 1)).toNat

end

end A008953.P1775322870563742072

namespace A008953

/-- `A000030(∑[n]+A228722(n)+1)` -/
def P1775322870563742072.Spec : Prop :=
  ∀ n, P1775322870563742072.a n = A008953 (n + 1)

end A008953

/-! ## A008953.P5779646793831568627

`A000030(xor(∑[n+1], A261684(n+1)))`
-/

namespace A008953.P5779646793831568627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A261684 (n + 1))).toNat

end

end A008953.P5779646793831568627

namespace A008953

/-- `A000030(xor(∑[n+1], A261684(n+1)))` -/
def P5779646793831568627.Spec : Prop :=
  ∀ n, P5779646793831568627.a n = A008953 (n + 1)

end A008953

/-! ## A008953.P9975113539493196527

`A000030(xor((n+1)%A087062(n+1), ∑[n+1]))`
-/

namespace A008953.P9975113539493196527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (Int.xor (Int.tmod (n + 1 : ℤ) (A087062 (n + 1))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A008953.P9975113539493196527

namespace A008953

/-- `A000030(xor((n+1)%A087062(n+1), ∑[n+1]))` -/
def P9975113539493196527.Spec : Prop :=
  ∀ n, P9975113539493196527.a n = A008953 (n + 1)

end A008953

/-! ## A008953.P2110437669621198443

`A000030(∑[n+1])`
-/

namespace A008953.P2110437669621198443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008953.P2110437669621198443

namespace A008953

/-- `A000030(∑[n+1])` -/
def P2110437669621198443.Spec : Prop :=
  ∀ n, P2110437669621198443.a n = A008953 (n + 1)

end A008953

/-! ## A008953.P14039513843835422193

`A056142(∑[n+1])%10`
-/

namespace A008953.P14039513843835422193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056142 (∑ j ∈ Finset.range (n + 1), f1 j)) 10

end

end A008953.P14039513843835422193

namespace A008953

/-- `A056142(∑[n+1])%10` -/
def P14039513843835422193.Spec : Prop :=
  ∀ n, P14039513843835422193.a n = A008953 (n + 1)

end A008953

/-! ## A008953.P3902427115290946181

`A010879(A004158(n+1))`
-/

namespace A008953.P3902427115290946181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004158 (n + 1)).toNat

end

end A008953.P3902427115290946181

namespace A008953

/-- `A010879(A004158(n+1))` -/
def P3902427115290946181.Spec : Prop :=
  ∀ n, P3902427115290946181.a n = A008953 (n + 1)

end A008953

/-! ## A008953.P12216832400620404849

`A010879(A004086(∑[n+1]))`
-/

namespace A008953.P12216832400620404849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004086 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A008953.P12216832400620404849

namespace A008953

/-- `A010879(A004086(∑[n+1]))` -/
def P12216832400620404849.Spec : Prop :=
  ∀ n, P12216832400620404849.a n = A008953 (n + 1)

end A008953

/-! ## A008953.P13806325017912768802

`A007376(A031297(∑[n+1]))`
-/

namespace A008953.P13806325017912768802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A031297 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A008953.P13806325017912768802

namespace A008953

/-- `A007376(A031297(∑[n+1]))` -/
def P13806325017912768802.Spec : Prop :=
  ∀ n, P13806325017912768802.a n = A008953 (n + 1)

end A008953

/-! ## A008953.P8815210979032806142

`A001113(A078197(∑[n+1]))`
-/

namespace A008953.P8815210979032806142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A078197 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 1)

end

end A008953.P8815210979032806142

namespace A008953

/-- `A001113(A078197(∑[n+1]))` -/
def P8815210979032806142.Spec : Prop :=
  ∀ n, P8815210979032806142.a n = A008953 (n + 1)

end A008953

/-! ## A008953.P1436887081736053788

`A007376(A117804(∑[n+1]))`
-/

namespace A008953.P1436887081736053788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A117804 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A008953.P1436887081736053788

namespace A008953

/-- `A007376(A117804(∑[n+1]))` -/
def P1436887081736053788.Spec : Prop :=
  ∀ n, P1436887081736053788.a n = A008953 (n + 1)

end A008953

/-! ## A008953.P4932910590904715996

`A007376(A229186(∑[n+1]))`
-/

namespace A008953.P4932910590904715996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A229186 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A008953.P4932910590904715996

namespace A008953

/-- `A007376(A229186(∑[n+1]))` -/
def P4932910590904715996.Spec : Prop :=
  ∀ n, P4932910590904715996.a n = A008953 (n + 1)

end A008953

/-!
# A008954: Final digit of triangular number n*(n+1)/2.

The programs for A008954, the canonical program `A008954.P2244665883226884460` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008954 has offset 0).

The definition of A008954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008954.P2244665883226884460

`C(n+1, 2)%10`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008954

/-- `C(n+1, 2)%10` -/
def P2244665883226884460.Spec : Prop :=
  ∀ n, (P2244665883226884460.a n : ℤ) = A008954 n

theorem P2244665883226884460.correct : P2244665883226884460.Spec := by
  intro n
  simp only [A008954]

end A008954

/-!
# A008955: Triangle of central factorial numbers |t(2n,2n-2k)| read by rows.

The programs for A008955, there is no canonical definition to state claims against.
-/

/-! ## A008955.P3963352532862981248

`A269944(A099375(n)+1+n)`
-/

namespace A008955.P3963352532862981248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (A099375 n + 1 + (n : ℤ)).toNat

end

end A008955.P3963352532862981248

/-! ## A008955.P805073857917826908

`A269944(2*A004736(n+1)+n)`
-/

namespace A008955.P805073857917826908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A008955.P805073857917826908

/-! ## A008955.P4152438870273848513

`A269944(2*A127739(n+1)-n)`
-/

namespace A008955.P4152438870273848513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (2 * A127739 (n + 1) - (n : ℤ)).toNat

end

end A008955.P4152438870273848513

/-! ## A008955.P8372482206030720919

`A269944(A114327(n)+∑[A035214(n)])`
-/

namespace A008955.P8372482206030720919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (A114327 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008955.P8372482206030720919

/-! ## A008955.P13541901441335608401

`A269944(A114327(n)+A014132(n+1))`
-/

namespace A008955.P13541901441335608401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (A114327 n + A014132 (n + 1)).toNat

end

end A008955.P13541901441335608401

/-! ## A008955.P5704469435300070628

`A269944(A061579(n)+A003057(n+2))`
-/

namespace A008955.P5704469435300070628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (A061579 n + A003057 (n + 2)).toNat

end

end A008955.P5704469435300070628

/-! ## A008955.P1237898473106698385

`A269944(A038722(n+1)+A002024(n+1))`
-/

namespace A008955.P1237898473106698385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A008955.P1237898473106698385

/-! ## A008955.P15343766740113532851

`A269944(A127739(n+1)+A004736(n+1))`
-/

namespace A008955.P15343766740113532851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (A127739 (n + 1) + A004736 (n + 1)).toNat

end

end A008955.P15343766740113532851

/-! ## A008955.P11539276969588650614

`A269944(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A008955.P11539276969588650614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A008955.P11539276969588650614

/-! ## A008955.P5629735086203947416

`A269944(A127739(n+1)+A127739(n+1)-n)`
-/

namespace A008955.P5629735086203947416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (A127739 (n + 1) + (A127739 (n + 1) - (n : ℤ))).toNat

end

end A008955.P5629735086203947416

/-! ## A008955.P5075512687889777589

`abs(A204579(A038722(n+1)))`
-/

namespace A008955.P5075512687889777589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A204579 (A038722 (n + 1)).toNat|

end

end A008955.P5075512687889777589

/-!
# A008956: Triangle of central factorial numbers |4^k t(2n+1,2n+1-2k)| read by rows (n>=0, k=0..n).

The programs for A008956, there is no canonical definition to state claims against.
-/

/-! ## A008956.P16561127071585482080

`A160563(A061579(n)%A008955(n))`
-/

namespace A008956.P16561127071585482080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160563 (Int.tmod (A061579 n) (A008955 n)).toNat

end

end A008956.P16561127071585482080

/-! ## A008956.P2762219362916620302

`A160563(A002378(n)%A080036(n))`
-/

namespace A008956.P2762219362916620302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160563 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A008956.P2762219362916620302

/-! ## A008956.P7203987946014967958

`A160563(A061579(gcd(n, A198954(n))))`
-/

namespace A008956.P7203987946014967958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160563 (A061579 (Int.gcd (n : ℤ) (A198954 n))).toNat

end

end A008956.P7203987946014967958

/-! ## A008956.P14949097101888527636

`A160563(A061579(n))`
-/

namespace A008956.P14949097101888527636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160563 (A061579 n).toNat

end

end A008956.P14949097101888527636

/-! ## A008956.P12746700200045963297

`A160563(A005843(∑[n])%A080036(n))`
-/

namespace A008956.P12746700200045963297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160563 (Int.tmod (A005843 (∑ j ∈ Finset.range (n + 1), f1 j)) (A080036 n)).toNat

end

end A008956.P12746700200045963297

/-!
# A008957: Triangle of central factorial numbers T(2*n,2*n-2*k), k >= 0, n >= 1 (in Riordan's notation).

The programs for A008957, there is no canonical definition to state claims against.
-/

/-! ## A008957.P1362493544349750904

`A036969(A038722(n+1))`
-/

namespace A008957.P1362493544349750904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036969 (A038722 (n + 1)).toNat

end

end A008957.P1362493544349750904

/-! ## A008957.P15108078591619219645

`A036969(A061579(n)+1)`
-/

namespace A008957.P15108078591619219645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036969 (A061579 n + 1).toNat

end

end A008957.P15108078591619219645

/-! ## A008957.P18243646132696099642

`A036969(A114327(n)+1+n)`
-/

namespace A008957.P18243646132696099642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036969 (A114327 n + 1 + (n : ℤ)).toNat

end

end A008957.P18243646132696099642

/-! ## A008957.P1707020775966321093

`A269945(A099375(n)+1+n)`
-/

namespace A008957.P1707020775966321093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 (A099375 n + 1 + (n : ℤ)).toNat

end

end A008957.P1707020775966321093

/-! ## A008957.P16323908309858623925

`A036969(A002024(n+1)²-n)`
-/

namespace A008957.P16323908309858623925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036969 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A008957.P16323908309858623925

/-! ## A008957.P205535644036533303

`A036969(A057944(n)+A004736(n+1))`
-/

namespace A008957.P205535644036533303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036969 (A057944 n + A004736 (n + 1)).toNat

end

end A008957.P205535644036533303

/-! ## A008957.P7276301859827338673

`A394813(n+1)/A004736(n+1)`
-/

namespace A008957.P7276301859827338673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394813 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A008957.P7276301859827338673

/-!
# A008958: Triangle of central factorial numbers 4^k T(2n+1, 2n+1-2k).

The programs for A008958, there is no canonical definition to state claims against.
-/

/-! ## A008958.P16511004396685395562

`A160562(A002378(n)%A080036(n))`
-/

namespace A008958.P16511004396685395562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160562 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A008958.P16511004396685395562

/-! ## A008958.P8271254554491913504

`A160562(A061579(n))`
-/

namespace A008958.P8271254554491913504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160562 (A061579 n).toNat

end

end A008958.P8271254554491913504

/-! ## A008958.P6685121009479355224

`A160562(A114327(n)+n)`
-/

namespace A008958.P6685121009479355224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160562 (A114327 n + (n : ℤ)).toNat

end

end A008958.P6685121009479355224

/-! ## A008958.P1329077158411178961

`A160562(∑[A198954(n)-1])`
-/

namespace A008958.P1329077158411178961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160562 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008958.P1329077158411178961

/-! ## A008958.P10086081729743697741

`A160562(A038722(n+1)-1)`
-/

namespace A008958.P10086081729743697741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160562 (A038722 (n + 1) - 1).toNat

end

end A008958.P10086081729743697741

/-! ## A008958.P12048182355822182327

`A160562(A038722(n+2))`
-/

namespace A008958.P12048182355822182327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160562 (A038722 (n + 2)).toNat

end

end A008958.P12048182355822182327

/-!
# A008959: Final digit of squares: a(n) = n^2 mod 10.

The programs for A008959, the canonical program `A008959.P6259965535017437861` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008959 has offset 0).

The definition of A008959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008959.P6259965535017437861

`n²%10`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008959

/-- `n²%10` -/
def P6259965535017437861.Spec : Prop :=
  ∀ n, (P6259965535017437861.a n : ℤ) = A008959 n

theorem P6259965535017437861.correct : P6259965535017437861.Spec := by
  intro n
  simp only [A008959]

end A008959

/-!
# A008960: Final digit of cubes: n^3 mod 10.

The programs for A008960, the canonical program `A008960.P12983754541815162440` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008960 has offset 0).

The definition of A008960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008960.P12983754541815162440

`(n^3)%10`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008960

/-- `(n^3)%10` -/
def P12983754541815162440.Spec : Prop :=
  ∀ n, (P12983754541815162440.a n : ℤ) = A008960 n

theorem P12983754541815162440.correct : P12983754541815162440.Spec := by
  intro n
  simp only [A008960]

end A008960

/-!
# A008962: Number of letters in n (in Polish), excluding spaces and hyphens.

The programs for A008962, there is no canonical definition to state claims against.
-/

/-! ## A008962.P10169546864217750276

`A295300(A175725(n))`
-/

namespace A008962.P10169546864217750276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295300 (A175725 n).toNat

end

end A008962.P10169546864217750276

/-! ## A008962.P18048208790183821587

`A139179(A175725(n)+1)`
-/

namespace A008962.P18048208790183821587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139179 (A175725 n + 1).toNat

end

end A008962.P18048208790183821587

/-! ## A008962.P7653414490960143959

`A175725(n)-∑[A025469(A251740(n))]`
-/

namespace A008962.P7653414490960143959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A251740 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175725 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008962.P7653414490960143959

/-! ## A008962.P10916335639940156461

`A175725(n)+A010052(A335557(n+1))`
-/

namespace A008962.P10916335639940156461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175725 n + A010052 (A335557 (n + 1)).toNat

end

end A008962.P10916335639940156461

/-!
# A008963: Initial digit of Fibonacci number F(n).

The programs for A008963, the canonical program `A008963.P6523085309151912316` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008963 has offset 0).

The definition of A008963 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008963.P6523085309151912316

`A000030(A000045(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008963

/-- `A000030(A000045(n))` -/
def P6523085309151912316.Spec : Prop :=
  ∀ n, P6523085309151912316.a n = A008963 n

theorem P6523085309151912316.correct : P6523085309151912316.Spec := by
  intro n
  simp only [A008963]

end A008963

/-! ## A008963.P12612679790820368113

`A000030(A395361(n))`
-/

namespace A008963.P12612679790820368113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A395361 n).toNat

end

end A008963.P12612679790820368113

namespace A008963

/-- `A000030(A395361(n))` -/
def P12612679790820368113.Spec : Prop :=
  ∀ n, P12612679790820368113.a n = A008963 n

end A008963

/-! ## A008963.P10806909067643598139

`A004091(n)%10`
-/

namespace A008963.P10806909067643598139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004091 n) 10

end

end A008963.P10806909067643598139

namespace A008963

/-- `A004091(n)%10` -/
def P10806909067643598139.Spec : Prop :=
  ∀ n, P10806909067643598139.a n = A008963 n

end A008963

/-! ## A008963.P14550835089363012597

`(A133022(n)/A324969(n+1))%10`
-/

namespace A008963.P14550835089363012597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A133022 n : ℚ) / (A324969 (n + 1) : ℚ))) 10

end

end A008963.P14550835089363012597

namespace A008963

/-- `(A133022(n)/A324969(n+1))%10` -/
def P14550835089363012597.Spec : Prop :=
  ∀ n, P14550835089363012597.a n = A008963 n

end A008963

/-! ## A008963.P12255224804644399081

`(A133022(n)/A000045(A028310(n)))%10`
-/

namespace A008963.P12255224804644399081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A133022 n : ℚ) / (A000045 (A028310 n).toNat : ℚ))) 10

end

end A008963.P12255224804644399081

namespace A008963

/-- `(A133022(n)/A000045(A028310(n)))%10` -/
def P12255224804644399081.Spec : Prop :=
  ∀ n, P12255224804644399081.a n = A008963 n

end A008963

/-! ## A008963.P12396291987171776081

`(A133022(n)/Δ[record[A094570(n)]])%10`
-/

namespace A008963.P12396291987171776081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A133022 n : ℚ) / (f1 (n + 1) - f1 n : ℚ))) 10

end

end A008963.P12396291987171776081

namespace A008963

/-- `(A133022(n)/Δ[record[A094570(n)]])%10` -/
def P12396291987171776081.Spec : Prop :=
  ∀ n, P12396291987171776081.a n = A008963 n

end A008963

/-!
# A008964: Number of elements of order <= 2 in group of n X n upper triangular matrices over GF(2).

The programs for A008964, there is no canonical definition to state claims against.
-/

/-! ## A008964.P208883579899838655

`∑[A046699(∑[n^n]+A161680(n)²)]`
-/

namespace A008964.P208883579899838655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + A161680 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008964.P208883579899838655

/-! ## A008964.P11701823244123702457

`A286066(A342435(n+1)-(floor(n/2)-floor(n/3)))`
-/

namespace A008964.P11701823244123702457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286066 (A342435 (n + 1) - (⌊(n : ℚ) / 2⌋ - ⌊(n : ℚ) / 3⌋)).toNat

end

end A008964.P11701823244123702457

/-!
# A008965: Number of necklaces of sets of beads containing a total of n beads.

The programs for A008965, the canonical program `A008965.P16924218572130557635` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008965 has offset 1).

The definition of A008965 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008965.P16924218572130557635

`A000031(n+1)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A008965

/-- `A000031(n+1)-1` -/
def P16924218572130557635.Spec : Prop :=
  ∀ n, P16924218572130557635.a n = A008965 (n + 1)

theorem P16924218572130557635.correct : P16924218572130557635.Spec := by
  intro n
  simp only [A008965, Nat.add_sub_cancel]

end A008965

/-! ## A008965.P18374976391450890453

`∑[abs(Δ[A000031(n)])]`
-/

namespace A008965.P18374976391450890453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008965.P18374976391450890453

namespace A008965

/-- `∑[abs(Δ[A000031(n)])]` -/
def P18374976391450890453.Spec : Prop :=
  ∀ n, P18374976391450890453.a n = A008965 (n + 1)

end A008965

/-! ## A008965.P8913786874908489675

`A052823(n+1)+1`
-/

namespace A008965.P8913786874908489675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (n + 1) + 1

end

end A008965.P8913786874908489675

namespace A008965

/-- `A052823(n+1)+1` -/
def P8913786874908489675.Spec : Prop :=
  ∀ n, P8913786874908489675.a n = A008965 (n + 1)

end A008965

/-! ## A008965.P10461409089035588824

`∑{d}[n+1, A059966(#)]`
-/

namespace A008965.P10461409089035588824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059966 d

end

end A008965.P10461409089035588824

namespace A008965

/-- `∑{d}[n+1, A059966(#)]` -/
def P10461409089035588824.Spec : Prop :=
  ∀ n, P10461409089035588824.a n = A008965 (n + 1)

theorem P10461409089035588824.correct : P10461409089035588824.Spec := by
  intro n
  simp only [A008965, Nat.add_sub_cancel, A008965.P10461409089035588824.f1, A008965.P10461409089035588824.a, A008965.P16924218572130557635.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A059966, A059966.P5188141675617584754.a, A001037, A001037.P3072020637183991904.a, A045664, A045664.P10163269847227854319.a, A253909, A253909.P4396033400827970723.a, A000007, A000007.P6599383543502402472.a, A027375, A027375.P1624201345270917595.f1, A027375.P1624201345270917595.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008965

/-! ## A008965.P13500816094010041079

`record[A000031(abs(comp[3*n]-2*n))-1]`
-/

namespace A008965.P13500816094010041079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 |(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (2 * n : ℤ)|.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008965.P13500816094010041079

namespace A008965

/-- `record[A000031(abs(comp[3*n]-2*n))-1]` -/
def P13500816094010041079.Spec : Prop :=
  ∀ n, P13500816094010041079.a n = A008965 (n + 1)

end A008965

/-! ## A008965.P17269359254996109287

`A093367(n+1)+A000034(n)`
-/

namespace A008965.P17269359254996109287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093367 (n + 1) + A000034 n

end

end A008965.P17269359254996109287

namespace A008965

/-- `A093367(n+1)+A000034(n)` -/
def P17269359254996109287.Spec : Prop :=
  ∀ n, P17269359254996109287.a n = A008965 (n + 1)

end A008965

/-! ## A008965.P3100097894371980371

`A056295(n+1)+A000016(n+1)`
-/

namespace A008965.P3100097894371980371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056295 (n + 1) + A000016 (n + 1)

end

end A008965.P3100097894371980371

namespace A008965

/-- `A056295(n+1)+A000016(n+1)` -/
def P3100097894371980371.Spec : Prop :=
  ∀ n, P3100097894371980371.a n = A008965 (n + 1)

theorem P3100097894371980371.correct : P3100097894371980371.Spec := by
  intro n
  simp only [A008965, Nat.add_sub_cancel, A008965.P3100097894371980371.a, A008965.P16924218572130557635.a, A000016, A000016.P4834367987804555054.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A056295, A056295.P9438402425658344231.a, A000007, A000007.P6599383543502402472.a, A059966, A059966.P5188141675617584754.a, A096010, A096010.P4903496547079153273.a, A001037, A001037.P3072020637183991904.a, A063776, A063776.P939957080839248717.f1, A063776.P939957080839248717.a, A045664, A045664.P10163269847227854319.a, A059841, A059841.P2666504972441551157.a, A064355, A064355.P15803301992756024606.a, A253909, A253909.P4396033400827970723.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008965

/-! ## A008965.P10800194768429027110

`A091696(n+1)+A059076(n+1)`
-/

namespace A008965.P10800194768429027110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091696 (n + 1) + A059076 (n + 1)

end

end A008965.P10800194768429027110

namespace A008965

/-- `A091696(n+1)+A059076(n+1)` -/
def P10800194768429027110.Spec : Prop :=
  ∀ n, P10800194768429027110.a n = A008965 (n + 1)

end A008965

/-! ## A008965.P16731626490181668216

`A298971(n+1)+A059966(n+1)`
-/

namespace A008965.P16731626490181668216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298971 (n + 1) + A059966 (n + 1)

end

end A008965.P16731626490181668216

namespace A008965

/-- `A298971(n+1)+A059966(n+1)` -/
def P16731626490181668216.Spec : Prop :=
  ∀ n, P16731626490181668216.a n = A008965 (n + 1)

theorem P16731626490181668216.correct : P16731626490181668216.Spec := by
  intro n
  simp only [A008965, Nat.add_sub_cancel, A008965.P16731626490181668216.a, A008965.P16924218572130557635.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A059966, A059966.P5188141675617584754.a, A298971, A298971.P5502893336547545168.a, A001037, A001037.P3072020637183991904.a, A045664, A045664.P10163269847227854319.a, A253909, A253909.P4396033400827970723.a, A000007, A000007.P6599383543502402472.a, A027375, A027375.P1624201345270917595.f1, A027375.P1624201345270917595.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008965

/-! ## A008965.P4184790514613024825

`A262232(n+1)+A004526(n+3)`
-/

namespace A008965.P4184790514613024825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262232 (n + 1) + A004526 (n + 3)

end

end A008965.P4184790514613024825

namespace A008965

/-- `A262232(n+1)+A004526(n+3)` -/
def P4184790514613024825.Spec : Prop :=
  ∀ n, P4184790514613024825.a n = A008965 (n + 1)

end A008965

/-! ## A008965.P7876239414975912858

`A000013(n+1)+A000016(n+1)-1`
-/

namespace A008965.P7876239414975912858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (n + 1) + (A000016 (n + 1) - 1)

end

end A008965.P7876239414975912858

namespace A008965

/-- `A000013(n+1)+A000016(n+1)-1` -/
def P7876239414975912858.Spec : Prop :=
  ∀ n, P7876239414975912858.a n = A008965 (n + 1)

end A008965

/-! ## A008965.P1732789859109803547

`A000029(n+1)+A059076(n+1)-1`
-/

namespace A008965.P1732789859109803547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) + (A059076 (n + 1) - 1)

end

end A008965.P1732789859109803547

namespace A008965

/-- `A000029(n+1)+A059076(n+1)-1` -/
def P1732789859109803547.Spec : Prop :=
  ∀ n, P1732789859109803547.a n = A008965 (n + 1)

end A008965

/-! ## A008965.P16009998337928092653

`A001037(n+1)+A066656(n+1)-1`
-/

namespace A008965.P16009998337928092653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) + (A066656 (n + 1) - 1)

end

end A008965.P16009998337928092653

namespace A008965

/-- `A001037(n+1)+A066656(n+1)-1` -/
def P16009998337928092653.Spec : Prop :=
  ∀ n, P16009998337928092653.a n = A008965 (n + 1)

theorem P16009998337928092653.correct : P16009998337928092653.Spec := by
  intro n
  simp only [A008965, Nat.add_sub_cancel, A008965.P16009998337928092653.a, A008965.P16924218572130557635.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A001037, A001037.P3072020637183991904.a, A066656, A066656.P10645985252166079910.a, A045664, A045664.P10163269847227854319.a, A059966, A059966.P5188141675617584754.a, A253909, A253909.P4396033400827970723.a, A000007, A000007.P6599383543502402472.a, A027375, A027375.P1624201345270917595.f1, A027375.P1624201345270917595.a, A296302, A296302.P8637239320253714587.f1, A296302.P8637239320253714587.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008965

/-! ## A008965.P14821367635134830770

`A262232(n+1)+A266977(n+1)-1`
-/

namespace A008965.P14821367635134830770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262232 (n + 1) + (A266977 (n + 1) - 1)

end

end A008965.P14821367635134830770

namespace A008965

/-- `A262232(n+1)+A266977(n+1)-1` -/
def P14821367635134830770.Spec : Prop :=
  ∀ n, P14821367635134830770.a n = A008965 (n + 1)

end A008965

/-! ## A008965.P2361667834345294604

`A033999(2*n+1)+A000031(n+1)`
-/

namespace A008965.P2361667834345294604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A000031 (n + 1)

end

end A008965.P2361667834345294604

namespace A008965

/-- `A033999(2*n+1)+A000031(n+1)` -/
def P2361667834345294604.Spec : Prop :=
  ∀ n, P2361667834345294604.a n = A008965 (n + 1)

end A008965

/-! ## A008965.P2132216641786970594

`∑{d}[n+1, A000005(#)*A318731((n+1)/#)]`
-/

namespace A008965.P2132216641786970594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A318731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A008965.P2132216641786970594

namespace A008965

/-- `∑{d}[n+1, A000005(#)*A318731((n+1)/#)]` -/
def P2132216641786970594.Spec : Prop :=
  ∀ n, P2132216641786970594.a n = A008965 (n + 1)

end A008965

/-! ## A008965.P7619381192703635061

`∑{d}[n+1, A059841(#-1)*A383034((n+1)/#)]`
-/

namespace A008965.P7619381192703635061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A383034 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A008965.P7619381192703635061

namespace A008965

/-- `∑{d}[n+1, A059841(#-1)*A383034((n+1)/#)]` -/
def P7619381192703635061.Spec : Prop :=
  ∀ n, P7619381192703635061.a n = A008965 (n + 1)

end A008965

/-! ## A008965.P7756776297502632463

`A059076(n+1)+A059076(n+1)+A052955(n)`
-/

namespace A008965.P7756776297502632463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 (n + 1) + (A059076 (n + 1) + A052955 n)

end

end A008965.P7756776297502632463

namespace A008965

/-- `A059076(n+1)+A059076(n+1)+A052955(n)` -/
def P7756776297502632463.Spec : Prop :=
  ∀ n, P7756776297502632463.a n = A008965 (n + 1)

end A008965

/-! ## A008965.P15421076239507362337

`Δ[A052825(n+1)]`
-/

namespace A008965.P15421076239507362337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008965.P15421076239507362337

namespace A008965

/-- `Δ[A052825(n+1)]` -/
def P15421076239507362337.Spec : Prop :=
  ∀ n, P15421076239507362337.a n = A008965 (n + 1)

end A008965

/-!
# A008966: a(n) = 1 if n is squarefree, otherwise 0.

The programs for A008966, the canonical program `A008966.P884693903657889754` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008966 has offset 1).

The definition of A008966 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008966.P13237705255831258161

`1-A107078(n+1)`
-/

namespace A008966.P13237705255831258161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A107078 (n + 1)

end

end A008966.P13237705255831258161

namespace A008966

/-- `1-A107078(n+1)` -/
def P13237705255831258161.Spec : Prop :=
  ∀ n, P13237705255831258161.a n = A008966 (n + 1)

theorem P13237705255831258161.correct : P13237705255831258161.Spec := by
  intro n
  simp only [A008966, Nat.add_sub_cancel, A008966.P13237705255831258161.a, A008966.P884693903657889754.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A107078, A107078.P17495564514640749054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008966

/-! ## A008966.P5666372231626846110

`A008836(n+1)*A008683(n+1)`
-/

namespace A008966.P5666372231626846110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A008683 (n + 1)

end

end A008966.P5666372231626846110

namespace A008966

/-- `A008836(n+1)*A008683(n+1)` -/
def P5666372231626846110.Spec : Prop :=
  ∀ n, P5666372231626846110.a n = A008966 (n + 1)

end A008966

/-! ## A008966.P884693903657889754

`A013928(n+2)-A013928(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008966

/-- `A013928(n+2)-A013928(n+1)` -/
def P884693903657889754.Spec : Prop :=
  ∀ n, P884693903657889754.a n = A008966 (n + 1)

theorem P884693903657889754.correct : P884693903657889754.Spec := by
  intro n
  simp only [A008966, Nat.add_sub_cancel]

end A008966

/-! ## A008966.P13519845556172655651

`floor(A000005((n+1)²)/A007425(n+1))`
-/

namespace A008966.P13519845556172655651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 ((n + 1) ^ 2) : ℚ) / (A007425 (n + 1) : ℚ)⌋

end

end A008966.P13519845556172655651

namespace A008966

/-- `floor(A000005((n+1)²)/A007425(n+1))` -/
def P13519845556172655651.Spec : Prop :=
  ∀ n, P13519845556172655651.a n = A008966 (n + 1)

end A008966

/-! ## A008966.P16092525731915072152

`A085357(A156552(n+1))`
-/

namespace A008966.P16092525731915072152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 (A156552 (n + 1)).toNat

end

end A008966.P16092525731915072152

namespace A008966

/-- `A085357(A156552(n+1))` -/
def P16092525731915072152.Spec : Prop :=
  ∀ n, P16092525731915072152.a n = A008966 (n + 1)

end A008966

/-! ## A008966.P1116985154236629972

`round(acot(∏{e}[n+1, #]))`
-/

namespace A008966.P1116985154236629972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))

end

end A008966.P1116985154236629972

namespace A008966

/-- `round(acot(∏{e}[n+1, #]))` -/
def P1116985154236629972.Spec : Prop :=
  ∀ n, P1116985154236629972.a n = A008966 (n + 1)

end A008966

/-! ## A008966.P13785194801527791696

`floor(1/∏{e}[n+1, #])`
-/

namespace A008966.P13785194801527791696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)⌋

end

end A008966.P13785194801527791696

namespace A008966

/-- `floor(1/∏{e}[n+1, #])` -/
def P13785194801527791696.Spec : Prop :=
  ∀ n, P13785194801527791696.a n = A008966 (n + 1)

end A008966

/-! ## A008966.P18444031257857153223

`∏{e}[n+1, #!%2]`
-/

namespace A008966.P18444031257857153223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) % 2

end

end A008966.P18444031257857153223

namespace A008966

/-- `∏{e}[n+1, #!%2]` -/
def P18444031257857153223.Spec : Prop :=
  ∀ n, (P18444031257857153223.a n : ℤ) = A008966 (n + 1)

end A008966

/-! ## A008966.P10863681012673316219

`and(1, ∏{e}[n+1, #!])`
-/

namespace A008966.P10863681012673316219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p))

end

end A008966.P10863681012673316219

namespace A008966

/-- `and(1, ∏{e}[n+1, #!])` -/
def P10863681012673316219.Spec : Prop :=
  ∀ n, (P10863681012673316219.a n : ℤ) = A008966 (n + 1)

end A008966

/-! ## A008966.P15590101863369122026

`round(γ/∏{e}[n+1, #])`
-/

namespace A008966.P15590101863369122026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.eulerMascheroniConstant / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))

end

end A008966.P15590101863369122026

namespace A008966

/-- `round(γ/∏{e}[n+1, #])` -/
def P15590101863369122026.Spec : Prop :=
  ∀ n, P15590101863369122026.a n = A008966 (n + 1)

end A008966

/-! ## A008966.P17744630480612205542

`round(γ^∏{e}[n+1, #])`
-/

namespace A008966.P17744630480612205542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.eulerMascheroniConstant ^ (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A008966.P17744630480612205542

namespace A008966

/-- `round(γ^∏{e}[n+1, #])` -/
def P17744630480612205542.Spec : Prop :=
  ∀ n, P17744630480612205542.a n = A008966 (n + 1)

end A008966

/-! ## A008966.P8018938228803106900

`floor(acot(∑{e}[n+1, log(#)]))`
-/

namespace A008966.P8018938228803106900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (∑ p ∈ Nat.primeFactors (f1 n), Real.log (Nat.factorization (f1 n) p : ℝ))⌋

end

end A008966.P8018938228803106900

namespace A008966

/-- `floor(acot(∑{e}[n+1, log(#)]))` -/
def P8018938228803106900.Spec : Prop :=
  ∀ n, P8018938228803106900.a n = A008966 (n + 1)

end A008966

/-! ## A008966.P507247635287955589

`∏{e}[n+1, floor(acot(log(#)))]`
-/

namespace A008966.P507247635287955589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊SequenceMachineLib.acot (Real.log (Nat.factorization (f1 n) p : ℝ))⌋

end

end A008966.P507247635287955589

namespace A008966

/-- `∏{e}[n+1, floor(acot(log(#)))]` -/
def P507247635287955589.Spec : Prop :=
  ∀ n, P507247635287955589.a n = A008966 (n + 1)

end A008966

/-! ## A008966.P3883399238588071710

`floor(acot(log2(∏{e}[n+1, #])))`
-/

namespace A008966.P3883399238588071710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌋

end

end A008966.P3883399238588071710

namespace A008966

/-- `floor(acot(log2(∏{e}[n+1, #])))` -/
def P3883399238588071710.Spec : Prop :=
  ∀ n, P3883399238588071710.a n = A008966 (n + 1)

end A008966

/-! ## A008966.P8424723240459190519

`round(cos(atan(∏{e}[n+1, #])))`
-/

namespace A008966.P8424723240459190519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (Real.arctan ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)))

end

end A008966.P8424723240459190519

namespace A008966

/-- `round(cos(atan(∏{e}[n+1, #])))` -/
def P8424723240459190519.Spec : Prop :=
  ∀ n, P8424723240459190519.a n = A008966 (n + 1)

end A008966

/-! ## A008966.P424545688540555493

`floor(tan(acot(∏{e}[n+1, #])))`
-/

namespace A008966.P424545688540555493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌋

end

end A008966.P424545688540555493

namespace A008966

/-- `floor(tan(acot(∏{e}[n+1, #])))` -/
def P424545688540555493.Spec : Prop :=
  ∀ n, P424545688540555493.a n = A008966 (n + 1)

end A008966

/-! ## A008966.P11065214691523867096

`round(acos(tanh(∏{e}[n+1, #])))`
-/

namespace A008966.P11065214691523867096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arccos (Real.tanh ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)))

end

end A008966.P11065214691523867096

namespace A008966

/-- `round(acos(tanh(∏{e}[n+1, #])))` -/
def P11065214691523867096.Spec : Prop :=
  ∀ n, P11065214691523867096.a n = A008966 (n + 1)

end A008966

/-! ## A008966.P2457368734933306243

`floor(cot(atan(∏{e}[n+1, #])))`
-/

namespace A008966.P2457368734933306243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (Real.arctan ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌋

end

end A008966.P2457368734933306243

namespace A008966

/-- `floor(cot(atan(∏{e}[n+1, #])))` -/
def P2457368734933306243.Spec : Prop :=
  ∀ n, P2457368734933306243.a n = A008966 (n + 1)

end A008966

/-! ## A008966.P5129904039741092226

`floor(cot(tanh(∏{e}[n+1, #])))`
-/

namespace A008966.P5129904039741092226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (Real.tanh ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌋

end

end A008966.P5129904039741092226

namespace A008966

/-- `floor(cot(tanh(∏{e}[n+1, #])))` -/
def P5129904039741092226.Spec : Prop :=
  ∀ n, P5129904039741092226.a n = A008966 (n + 1)

end A008966

/-! ## A008966.P1600130606724216508

`C(2, ∏{e}[n+1, #]+1)`
-/

namespace A008966.P1600130606724216508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)

end

end A008966.P1600130606724216508

namespace A008966

/-- `C(2, ∏{e}[n+1, #]+1)` -/
def P1600130606724216508.Spec : Prop :=
  ∀ n, (P1600130606724216508.a n : ℤ) = A008966 (n + 1)

end A008966

/-!
# A008967: Coefficients of Gaussian polynomials q_binomial(n-2, 2). Also triangle of distribution of rank sums: Wilcoxon's statistic. Irregular triangle read by rows.

The programs for A008967, the canonical program `A008967.P514633784673822211` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008967 has offset 4).

The definition of A008967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008967.P514633784673822211

`ceil(A004737(n+1)/2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008967

/-- `ceil(A004737(n+1)/2)` -/
def P514633784673822211.Spec : Prop :=
  ∀ n, P514633784673822211.a n = A008967 (n + 4)

theorem P514633784673822211.correct : P514633784673822211.Spec := by
  intro n
  simp only [A008967, Nat.add_sub_cancel]

end A008967

/-! ## A008967.P15802023544548561948

`abs(A010751(A133825(n)))`
-/

namespace A008967.P15802023544548561948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010751 (A133825 n).toNat|

end

end A008967.P15802023544548561948

namespace A008967

/-- `abs(A010751(A133825(n)))` -/
def P15802023544548561948.Spec : Prop :=
  ∀ n, P15802023544548561948.a n = A008967 (n + 4)

end A008967

/-! ## A008967.P6933025482873568343

`A065033(A004737(n+1))`
-/

namespace A008967.P6933025482873568343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A004737 (n + 1)).toNat

end

end A008967.P6933025482873568343

namespace A008967

/-- `A065033(A004737(n+1))` -/
def P6933025482873568343.Spec : Prop :=
  ∀ n, P6933025482873568343.a n = A008967 (n + 4)

end A008967

/-! ## A008967.P14769583549700384182

`A004526(A004737(n+1)+1)`
-/

namespace A008967.P14769583549700384182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004737 (n + 1) + 1).toNat

end

end A008967.P14769583549700384182

namespace A008967

/-- `A004526(A004737(n+1)+1)` -/
def P14769583549700384182.Spec : Prop :=
  ∀ n, P14769583549700384182.a n = A008967 (n + 4)

end A008967

/-! ## A008967.P15582459755986554781

`A123108(A004737(n+1)+1)`
-/

namespace A008967.P15582459755986554781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A004737 (n + 1) + 1).toNat

end

end A008967.P15582459755986554781

namespace A008967

/-- `A123108(A004737(n+1)+1)` -/
def P15582459755986554781.Spec : Prop :=
  ∀ n, P15582459755986554781.a n = A008967 (n + 4)

end A008967

/-! ## A008967.P16147163698995623551

`A008619(A004737(n+1)-1)`
-/

namespace A008967.P16147163698995623551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004737 (n + 1) - 1).toNat

end

end A008967.P16147163698995623551

namespace A008967

/-- `A008619(A004737(n+1)-1)` -/
def P16147163698995623551.Spec : Prop :=
  ∀ n, P16147163698995623551.a n = A008967 (n + 4)

end A008967

/-! ## A008967.P4620468301353300617

`A028242(xor(1, A004737(n+1)))`
-/

namespace A008967.P4620468301353300617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A004737 (n + 1))).toNat

end

end A008967.P4620468301353300617

namespace A008967

/-- `A028242(xor(1, A004737(n+1)))` -/
def P4620468301353300617.Spec : Prop :=
  ∀ n, P4620468301353300617.a n = A008967 (n + 4)

end A008967

/-! ## A008967.P1230919404125378115

`A000027(round(A004737(n+1)/2))`
-/

namespace A008967.P1230919404125378115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A004737 (n + 1) : ℚ) / 2)).toNat

end

end A008967.P1230919404125378115

namespace A008967

/-- `A000027(round(A004737(n+1)/2))` -/
def P1230919404125378115.Spec : Prop :=
  ∀ n, P1230919404125378115.a n = A008967 (n + 4)

end A008967

/-! ## A008967.P4085507790728852732

`A110654(A004737(n+1)+2)-1`
-/

namespace A008967.P4085507790728852732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004737 (n + 1) + 2).toNat - 1

end

end A008967.P4085507790728852732

namespace A008967

/-- `A110654(A004737(n+1)+2)-1` -/
def P4085507790728852732.Spec : Prop :=
  ∀ n, P4085507790728852732.a n = A008967 (n + 4)

end A008967

/-! ## A008967.P5926829102102961090

`(A071028(n)+A004737(n+1))/2`
-/

namespace A008967.P5926829102102961090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071028 n + A004737 (n + 1) : ℚ) / 2

end

end A008967.P5926829102102961090

namespace A008967

/-- `(A071028(n)+A004737(n+1))/2` -/
def P5926829102102961090.Spec : Prop :=
  ∀ n, P5926829102102961090.a n = (A008967 (n + 4) : ℚ)

end A008967

/-! ## A008967.P11858454597397996951

`round(A004737(n+1)/A020639(2*(n+1)))`
-/

namespace A008967.P11858454597397996951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004737 (n + 1) : ℚ) / (A020639 (2 * (n + 1)) : ℚ))

end

end A008967.P11858454597397996951

namespace A008967

/-- `round(A004737(n+1)/A020639(2*(n+1)))` -/
def P11858454597397996951.Spec : Prop :=
  ∀ n, P11858454597397996951.a n = A008967 (n + 4)

end A008967

/-! ## A008967.P3489857348454543174

`A004737(A004737(n+1)²)*A110654(A004737(n+1))`
-/

namespace A008967.P3489857348454543174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A004737 (n + 1) ^ 2).toNat * A110654 (A004737 (n + 1)).toNat

end

end A008967.P3489857348454543174

namespace A008967

/-- `A004737(A004737(n+1)²)*A110654(A004737(n+1))` -/
def P3489857348454543174.Spec : Prop :=
  ∀ n, P3489857348454543174.a n = A008967 (n + 4)

end A008967

/-! ## A008967.P500959505733421123

`ceil(A004739(comp[n²])/2)`
-/

namespace A008967.P500959505733421123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004739 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2⌉

end

end A008967.P500959505733421123

namespace A008967

/-- `ceil(A004739(comp[n²])/2)` -/
def P500959505733421123.Spec : Prop :=
  ∀ n, P500959505733421123.a n = A008967 (n + 4)

end A008967

/-! ## A008967.P17578450177145332716

`ceil(A053615(∑[char[n²]]+n)/2)`
-/

namespace A008967.P17578450177145332716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053615 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) / 2⌉

end

end A008967.P17578450177145332716

namespace A008967

/-- `ceil(A053615(∑[char[n²]]+n)/2)` -/
def P17578450177145332716.Spec : Prop :=
  ∀ n, P17578450177145332716.a n = A008967 (n + 4)

end A008967

/-! ## A008967.P1003207704731696511

`A220693(A004737(n+1)+A004737(n+1)²)`
-/

namespace A008967.P1003207704731696511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220693 (A004737 (n + 1) + A004737 (n + 1) ^ 2).toNat

end

end A008967.P1003207704731696511

namespace A008967

/-- `A220693(A004737(n+1)+A004737(n+1)²)` -/
def P1003207704731696511.Spec : Prop :=
  ∀ n, P1003207704731696511.a n = A008967 (n + 4)

end A008967

/-! ## A008967.P6305774452410229439

`A220693((A004737(n+1)+1)*A004737(n+1))`
-/

namespace A008967.P6305774452410229439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220693 ((A004737 (n + 1) + 1) * A004737 (n + 1)).toNat

end

end A008967.P6305774452410229439

namespace A008967

/-- `A220693((A004737(n+1)+1)*A004737(n+1))` -/
def P6305774452410229439.Spec : Prop :=
  ∀ n, P6305774452410229439.a n = A008967 (n + 4)

end A008967

/-! ## A008967.P3643660061168433233

`round(A004737(n+1)/2)%A000041(n+2)`
-/

namespace A008967.P3643660061168433233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A004737 (n + 1) : ℚ) / 2)) (A000041 (n + 2))

end

end A008967.P3643660061168433233

namespace A008967

/-- `round(A004737(n+1)/2)%A000041(n+2)` -/
def P3643660061168433233.Spec : Prop :=
  ∀ n, P3643660061168433233.a n = A008967 (n + 4)

end A008967

/-! ## A008967.P5787017106590105349

`A203905(A007606(n+1))`
-/

namespace A008967.P5787017106590105349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203905 (A007606 (n + 1)).toNat

end

end A008967.P5787017106590105349

namespace A008967

/-- `A203905(A007606(n+1))` -/
def P5787017106590105349.Spec : Prop :=
  ∀ n, P5787017106590105349.a n = A008967 (n + 4)

end A008967

/-! ## A008967.P14763843917111342027

`A204164(A106255(∑[A204131(2*n+1)]))`
-/

namespace A008967.P14763843917111342027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204131 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A106255 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A008967.P14763843917111342027

namespace A008967

/-- `A204164(A106255(∑[A204131(2*n+1)]))` -/
def P14763843917111342027.Spec : Prop :=
  ∀ n, P14763843917111342027.a n = A008967 (n + 4)

end A008967

/-! ## A008967.P13969045621746047048

`A203905(A316670(n+2))`
-/

namespace A008967.P13969045621746047048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203905 (A316670 (n + 2)).toNat

end

end A008967.P13969045621746047048

namespace A008967

/-- `A203905(A316670(n+2))` -/
def P13969045621746047048.Spec : Prop :=
  ∀ n, P13969045621746047048.a n = A008967 (n + 4)

end A008967

/-!
# A008968: Triangle of distribution of rank sums: Wilcoxon's statistic.

The programs for A008968, there is no canonical definition to state claims against.
-/

/-! ## A008968.P13447204563208974114

`A047971(12+n)`
-/

namespace A008968.P13447204563208974114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047971 (12 + n)

end

end A008968.P13447204563208974114

/-!
# A008969: Triangle read by rows of differences of reciprocals of unity.

The programs for A008969, there is no canonical definition to state claims against.
-/

/-! ## A008969.P18435323758028635306

`A112492(A099375(n)+1+n)`
-/

namespace A008969.P18435323758028635306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 (A099375 n + 1 + (n : ℤ)).toNat

end

end A008969.P18435323758028635306

/-! ## A008969.P14767889167209448159

`A112492(2*A004736(n+1)+n)`
-/

namespace A008969.P14767889167209448159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A008969.P14767889167209448159

/-! ## A008969.P5859846227435423329

`A112492(A014132(A038722(n+1)))`
-/

namespace A008969.P5859846227435423329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 (A014132 (A038722 (n + 1)).toNat).toNat

end

end A008969.P5859846227435423329

/-! ## A008969.P3874454607547277227

`A112492(A061579(A007401(n+1)))`
-/

namespace A008969.P3874454607547277227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 (A061579 (A007401 (n + 1)).toNat).toNat

end

end A008969.P3874454607547277227

/-! ## A008969.P13969997203069402774

`A112492(A005843(A004736(n+1))+n)`
-/

namespace A008969.P13969997203069402774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 (A005843 (A004736 (n + 1)).toNat + (n : ℤ)).toNat

end

end A008969.P13969997203069402774

/-! ## A008969.P9793396065039924989

`A112492(A114327(n)+A014132(n+1))`
-/

namespace A008969.P9793396065039924989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 (A114327 n + A014132 (n + 1)).toNat

end

end A008969.P9793396065039924989

/-! ## A008969.P9837855746094559468

`A112492(A061579(n)+A003057(n+2))`
-/

namespace A008969.P9837855746094559468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 (A061579 n + A003057 (n + 2)).toNat

end

end A008969.P9837855746094559468

/-! ## A008969.P18292626965003603449

`A112492(A038722(n+1)+A002024(n+1))`
-/

namespace A008969.P18292626965003603449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A008969.P18292626965003603449

/-! ## A008969.P16277397145681242160

`A112492(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A008969.P16277397145681242160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A008969.P16277397145681242160

/-!
# A008970: Triangle T(n,k) = P(n,k)/2, n >= 2, 1 <= k < n, of one-half of number of permutations of 1..n such that the differences have k runs with the same signs.

The programs for A008970, there is no canonical definition to state claims against.
-/

/-! ## A008970.P16128224656357723971

`A059427(n+2)/2`
-/

namespace A008970.P16128224656357723971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059427 (n + 2) : ℚ) / 2

end

end A008970.P16128224656357723971

/-! ## A008970.P7968555088207050064

`2^A008683(A020483(n))*A059427(n+2)`
-/

namespace A008970.P7968555088207050064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A059427 (n + 2) : ℚ)

end

end A008970.P7968555088207050064

/-! ## A008970.P7379378884861674877

`2^A008683(A151800(n))*A059427(n+2)`
-/

namespace A008970.P7379378884861674877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A151800 n).toNat : ℤ) * (A059427 (n + 2) : ℚ)

end

end A008970.P7379378884861674877

/-! ## A008970.P16811274850207037972

`2^A008683(A184868(n+1))*A059427(n+2)`
-/

namespace A008970.P16811274850207037972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A184868 (n + 1)).toNat : ℤ) * (A059427 (n + 2) : ℚ)

end

end A008970.P16811274850207037972

/-! ## A008970.P13166718248345410571

`(A000051(n)*A059427(n+2))%A048578(n)`
-/

namespace A008970.P13166718248345410571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 n * A059427 (n + 2)) (A048578 n)

end

end A008970.P13166718248345410571

/-!
# A008971: Triangle read by rows: T(n,k) is the number of permutations of [n] with k increasing runs of length at least 2.

The programs for A008971, there is no canonical definition to state claims against.
-/

/-! ## A008971.P8855287296866943933

`A198895(2*n-floor(sqrt(n)))`
-/

namespace A008971.P8855287296866943933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198895 (2 * n - Nat.sqrt n)

end

end A008971.P8855287296866943933

/-! ## A008971.P17388438744998109618

`A220854(3^A220901(n))`
-/

namespace A008971.P17388438744998109618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220854 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A220901 n : ℤ))).toNat

end

end A008971.P17388438744998109618

/-!
# A008972: 

The programs for A008972, there is no canonical definition to state claims against.
-/

/-! ## A008972.P1424348387397640816

`record[n^dr(n)²]²`
-/

namespace A008972.P1424348387397640816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.digitalRoot (n : ℤ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A008972.P1424348387397640816

/-! ## A008972.P13529303081664824747

`∏[ratio[n^n²]²]`
-/

namespace A008972.P13529303081664824747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℚ) / (f2 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008972.P13529303081664824747

/-! ## A008972.P4567517025117056260

`record[n^(n*char[n²])]`
-/

namespace A008972.P4567517025117056260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n * (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008972.P4567517025117056260

/-!
# A008973: Fibonacci number F(n) to power F(n).

The programs for A008973, the canonical program `A008973.P5055514071689765304` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008973 has offset 0).

The definition of A008973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008973.P5055514071689765304

`A000312(A000045(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008973

/-- `A000312(A000045(n))` -/
def P5055514071689765304.Spec : Prop :=
  ∀ n, P5055514071689765304.a n = A008973 n

theorem P5055514071689765304.correct : P5055514071689765304.Spec := by
  intro n
  simp only [A008973]

end A008973

/-! ## A008973.P4258471246083907388

`round(ϕ^n/sqrt(5))^round(ϕ^n/sqrt(5))`
-/

namespace A008973.P4258471246083907388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) : ℚ) ^ (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) : ℤ)

end

end A008973.P4258471246083907388

namespace A008973

/-- `round(ϕ^n/sqrt(5))^round(ϕ^n/sqrt(5))` -/
def P4258471246083907388.Spec : Prop :=
  ∀ n, P4258471246083907388.a n = (A008973 n : ℚ)

end A008973

/-! ## A008973.P17954852050139035890

`A000312(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A008973.P17954852050139035890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008973.P17954852050139035890

namespace A008973

/-- `A000312(∑[round(ϕ*a(n-1))])` -/
def P17954852050139035890.Spec : Prop :=
  ∀ n, P17954852050139035890.a n = A008973 n

end A008973

/-! ## A008973.P4024165492534736900

`A055858(A033192(n))`
-/

namespace A008973.P4024165492534736900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055858 (A033192 n).toNat

end

end A008973.P4024165492534736900

namespace A008973

/-- `A055858(A033192(n))` -/
def P4024165492534736900.Spec : Prop :=
  ∀ n, P4024165492534736900.a n = A008973 n

end A008973

/-! ## A008973.P381433765050812941

`A071207(A032441(n))`
-/

namespace A008973.P381433765050812941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071207 (A032441 n).toNat

end

end A008973.P381433765050812941

namespace A008973

/-- `A071207(A032441(n))` -/
def P381433765050812941.Spec : Prop :=
  ∀ n, P381433765050812941.a n = A008973 n

end A008973

/-!
# A008974: 

The programs for A008974, there is no canonical definition to state claims against.
-/

/-! ## A008974.P14382055078767763303

`record[n^(n*char[∑[n]])]`
-/

namespace A008974.P14382055078767763303
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n * (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008974.P14382055078767763303

/-! ## A008974.P4322767449686640340

`∑[n+1]^∑[n+1]`
-/

namespace A008974.P4322767449686640340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A008974.P4322767449686640340

/-! ## A008974.P10835064341099400506

`A000312(∑[n+1])`
-/

namespace A008974.P10835064341099400506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008974.P10835064341099400506

/-! ## A008974.P7374216286778471340

`A094054(∑[n+1]²)`
-/

namespace A008974.P7374216286778471340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094054 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A008974.P7374216286778471340

/-! ## A008974.P904183182789528918

`A048861(∑[n+1])+1`
-/

namespace A008974.P904183182789528918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048861 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A008974.P904183182789528918

/-!
# A008975: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 10.

The programs for A008975, the canonical program `A008975.P8745923045402742944` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008975 has offset 0).

The definition of A008975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008975.P18043345017473266195

`A007318(n)%10`
-/

namespace A008975.P18043345017473266195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 10

end

end A008975.P18043345017473266195

namespace A008975

/-- `A007318(n)%10` -/
def P18043345017473266195.Spec : Prop :=
  ∀ n, P18043345017473266195.a n = A008975 n

end A008975

/-! ## A008975.P6765533182724861709

`abs(A117440(n)%10)`
-/

namespace A008975.P6765533182724861709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A117440 n) 10|

end

end A008975.P6765533182724861709

namespace A008975

/-- `abs(A117440(n)%10)` -/
def P6765533182724861709.Spec : Prop :=
  ∀ n, P6765533182724861709.a n = A008975 n

end A008975

/-! ## A008975.P5920631069678717170

`abs(A130595(n)%10)`
-/

namespace A008975.P5920631069678717170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A130595 n) 10|

end

end A008975.P5920631069678717170

namespace A008975

/-- `abs(A130595(n)%10)` -/
def P5920631069678717170.Spec : Prop :=
  ∀ n, P5920631069678717170.a n = A008975 n

end A008975

/-! ## A008975.P16544271421969746214

`sqrt(A008459(n))%10`
-/

namespace A008975.P16544271421969746214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))) 10

end

end A008975.P16544271421969746214

namespace A008975

/-- `sqrt(A008459(n))%10` -/
def P16544271421969746214.Spec : Prop :=
  ∀ n, P16544271421969746214.a n = A008975 n

end A008975

/-! ## A008975.P17858741538901638693

`Δ[A102363(n)]%10`
-/

namespace A008975.P17858741538901638693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 10

end

end A008975.P17858741538901638693

namespace A008975

/-- `Δ[A102363(n)]%10` -/
def P17858741538901638693.Spec : Prop :=
  ∀ n, P17858741538901638693.a n = A008975 n

end A008975

/-! ## A008975.P7279874764281604996

`(A014473(n)+1)%10`
-/

namespace A008975.P7279874764281604996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014473 n + 1) 10

end

end A008975.P7279874764281604996

namespace A008975

/-- `(A014473(n)+1)%10` -/
def P7279874764281604996.Spec : Prop :=
  ∀ n, P7279874764281604996.a n = A008975 n

end A008975

/-! ## A008975.P1639810791389201950

`(A153491(n)-2)%10`
-/

namespace A008975.P1639810791389201950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153491 n - 2) 10

end

end A008975.P1639810791389201950

namespace A008975

/-- `(A153491(n)-2)%10` -/
def P1639810791389201950.Spec : Prop :=
  ∀ n, P1639810791389201950.a n = A008975 n

end A008975

/-! ## A008975.P6918029592305759354

`(A028326(n)/2)%10`
-/

namespace A008975.P6918029592305759354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)) 10

end

end A008975.P6918029592305759354

namespace A008975

/-- `(A028326(n)/2)%10` -/
def P6918029592305759354.Spec : Prop :=
  ∀ n, P6918029592305759354.a n = A008975 n

end A008975

/-! ## A008975.P14548331889488067467

`gcd(A124927(n), A124928(n))%10`
-/

namespace A008975.P14548331889488067467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124927 n) (A124928 n) % 10

end

end A008975.P14548331889488067467

namespace A008975

/-- `gcd(A124927(n), A124928(n))%10` -/
def P14548331889488067467.Spec : Prop :=
  ∀ n, (P14548331889488067467.a n : ℤ) = A008975 n

end A008975

/-! ## A008975.P7861034492773527204

`(A097805(n+1)+A097805(n))%10`
-/

namespace A008975.P7861034492773527204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097805 (n + 1) + A097805 n) 10

end

end A008975.P7861034492773527204

namespace A008975

/-- `(A097805(n+1)+A097805(n))%10` -/
def P7861034492773527204.Spec : Prop :=
  ∀ n, P7861034492773527204.a n = A008975 n

end A008975

/-! ## A008975.P8745923045402742944

`C(A003056(n), A004736(n+1)-1)%10`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008975

/-- `C(A003056(n), A004736(n+1)-1)%10` -/
def P8745923045402742944.Spec : Prop :=
  ∀ n, (P8745923045402742944.a n : ℤ) = A008975 n

theorem P8745923045402742944.correct : P8745923045402742944.Spec := by
  intro n
  simp only [A008975]

end A008975

/-! ## A008975.P15940286453590265991

`C(A003056(n), A004736(n+2)%A004736(n+1))%10`
-/

namespace A008975.P15940286453590265991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (Int.tmod (A004736 (n + 2)) (A004736 (n + 1))).toNat % 10

end

end A008975.P15940286453590265991

namespace A008975

/-- `C(A003056(n), A004736(n+2)%A004736(n+1))%10` -/
def P15940286453590265991.Spec : Prop :=
  ∀ n, (P15940286453590265991.a n : ℤ) = A008975 n

end A008975

/-! ## A008975.P5131656534746694108

`(A176348(n)/A176346(n))%10`
-/

namespace A008975.P5131656534746694108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A176348 n : ℚ) / (A176346 n : ℚ))) 10

end

end A008975.P5131656534746694108

namespace A008975

/-- `(A176348(n)/A176346(n))%10` -/
def P5131656534746694108.Spec : Prop :=
  ∀ n, P5131656534746694108.a n = A008975 n

end A008975

/-! ## A008975.P14955777721935713010

`A013618(n)%10`
-/

namespace A008975.P14955777721935713010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013618 n) 10

end

end A008975.P14955777721935713010

namespace A008975

/-- `A013618(n)%10` -/
def P14955777721935713010.Spec : Prop :=
  ∀ n, P14955777721935713010.a n = A008975 n

end A008975

/-! ## A008975.P10734751086463217275

`A038315(n)%10`
-/

namespace A008975.P10734751086463217275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038315 n) 10

end

end A008975.P10734751086463217275

namespace A008975

/-- `A038315(n)%10` -/
def P10734751086463217275.Spec : Prop :=
  ∀ n, P10734751086463217275.a n = A008975 n

end A008975

/-! ## A008975.P13143480587013588132

`A038325(n)%10`
-/

namespace A008975.P13143480587013588132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038325 n) 10

end

end A008975.P13143480587013588132

namespace A008975

/-- `A038325(n)%10` -/
def P13143480587013588132.Spec : Prop :=
  ∀ n, P13143480587013588132.a n = A008975 n

end A008975

/-! ## A008975.P3774861022511219583

`A142460(n+1)%A040020(n)`
-/

namespace A008975.P3774861022511219583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142460 (n + 1)) (A040020 n)

end

end A008975.P3774861022511219583

namespace A008975

/-- `A142460(n+1)%A040020(n)` -/
def P3774861022511219583.Spec : Prop :=
  ∀ n, P3774861022511219583.a n = A008975 n

end A008975

/-! ## A008975.P1666542909784917491

`A164866(n+1)%A040020(n)`
-/

namespace A008975.P1666542909784917491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164866 (n + 1)) (A040020 n)

end

end A008975.P1666542909784917491

namespace A008975

/-- `A164866(n+1)%A040020(n)` -/
def P1666542909784917491.Spec : Prop :=
  ∀ n, P1666542909784917491.a n = A008975 n

end A008975

/-! ## A008975.P10718569874752537925

`A022175(n)%10`
-/

namespace A008975.P10718569874752537925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022175 n) 10

end

end A008975.P10718569874752537925

namespace A008975

/-- `A022175(n)%10` -/
def P10718569874752537925.Spec : Prop :=
  ∀ n, P10718569874752537925.a n = A008975 n

end A008975

/-!
# A008976: Orders of non-cyclic simple groups (divided by 4).

The programs for A008976, there is no canonical definition to state claims against.
-/

/-! ## A008976.P3911298642888501096

`A001034(n+1)/4`
-/

namespace A008976.P3911298642888501096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001034 (n + 1) : ℚ) / 4

end

end A008976.P3911298642888501096

/-! ## A008976.P18282123530918443090

`record[A109379(ceil(C(or(1, n), n)/2))]/4`
-/

namespace A008976.P18282123530918443090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109379 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4

end

end A008976.P18282123530918443090

/-! ## A008976.P6608852687039130160

`record[A109379(floor(n/(xor(n, n+1)+1))+1)]/4`
-/

namespace A008976.P6608852687039130160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109379 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4

end

end A008976.P6608852687039130160

/-! ## A008976.P12170426890743422881

`record[A001034(A133310(n))/4]`
-/

namespace A008976.P12170426890743422881
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001034 (A133310 n).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008976.P12170426890743422881

/-! ## A008976.P14536320109717924205

`record[A109379(A028920(n))/4]`
-/

namespace A008976.P14536320109717924205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109379 (A028920 n).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008976.P14536320109717924205

/-!
# A008977: a(n) = (4*n)!/(n!)^4.

The programs for A008977, the canonical program `A008977.P6553658077722946254` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008977 has offset 0).

The definition of A008977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008977.P12229486708434218498

`A139541(n)*(A001316(n)/A049606(n))^3`
-/

namespace A008977.P12229486708434218498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139541 n : ℚ) * ((A001316 n : ℚ) / (A049606 n : ℚ)) ^ 3

end

end A008977.P12229486708434218498

namespace A008977

/-- `A139541(n)*(A001316(n)/A049606(n))^3` -/
def P12229486708434218498.Spec : Prop :=
  ∀ n, P12229486708434218498.a n = (A008977 n : ℚ)

end A008977

/-! ## A008977.P6553658077722946254

`(4*n)!/n!^4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008977

/-- `(4*n)!/n!^4` -/
def P6553658077722946254.Spec : Prop :=
  ∀ n, P6553658077722946254.a n = (A008977 n : ℚ)

end A008977

/-! ## A008977.P13884330725139242136

`C(2*n, n)*C(3*n, n)*C(4*n, n)`
-/

namespace A008977.P13884330725139242136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n * Nat.choose (3 * n) n * Nat.choose (4 * n) n

end

end A008977.P13884330725139242136

namespace A008977

/-- `C(2*n, n)*C(3*n, n)*C(4*n, n)` -/
def P13884330725139242136.Spec : Prop :=
  ∀ n, (P13884330725139242136.a n : ℤ) = A008977 n

end A008977

/-! ## A008977.P15618031590574070068

`A318105(∑[n])`
-/

namespace A008977.P15618031590574070068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318105 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008977.P15618031590574070068

namespace A008977

/-- `A318105(∑[n])` -/
def P15618031590574070068.Spec : Prop :=
  ∀ n, P15618031590574070068.a n = A008977 n

end A008977

/-! ## A008977.P13824756845545693730

`record[A318105(n)]`
-/

namespace A008977.P13824756845545693730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008977.P13824756845545693730

namespace A008977

/-- `record[A318105(n)]` -/
def P13824756845545693730.Spec : Prop :=
  ∀ n, P13824756845545693730.a n = A008977 n

end A008977

/-!
# A008978: a(n) = (5*n)!/(n!)^5.

The programs for A008978, there is no canonical definition to state claims against.
-/

/-! ## A008978.P17914482423632976283

`C(2*n, n)*C(3*n, n)*C(4*n, n)*C(5*n, n)`
-/

namespace A008978.P17914482423632976283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n * Nat.choose (3 * n) n * Nat.choose (4 * n) n * Nat.choose (5 * n) n

end

end A008978.P17914482423632976283

/-! ## A008978.P16396687731183172261

`C(4*n, n)*C(5*n, n)*A006480(n)`
-/

namespace A008978.P16396687731183172261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) n * Nat.choose (5 * n) n : ℤ) * A006480 n

end

end A008978.P16396687731183172261

/-! ## A008978.P2592246099476986857

`C(2*n, n)²*C(3*n, n)*A001450(n)`
-/

namespace A008978.P2592246099476986857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n ^ 2 * Nat.choose (3 * n) n : ℤ) * A001450 n

end

end A008978.P2592246099476986857

/-! ## A008978.P17641066366398938133

`A000984(n)*A001460(n)`
-/

namespace A008978.P17641066366398938133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A001460 n

end

end A008978.P17641066366398938133

/-! ## A008978.P2037981686915836820

`A001459(n)*A002894(n)`
-/

namespace A008978.P2037981686915836820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001459 n * A002894 n

end

end A008978.P2037981686915836820

/-!
# A008979: a(n) = (6n)!/(n!)^6.

The programs for A008979, there is no canonical definition to state claims against.
-/

/-! ## A008979.P10815208238127387904

`C(6*n, n)*C(5*n, n)*C(4*n, n)*C(3*n, n)*C(2*n, n)`
-/

namespace A008979.P10815208238127387904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (6 * n) n * Nat.choose (5 * n) n * Nat.choose (4 * n) n * Nat.choose (3 * n) n * Nat.choose (2 * n) n

end

end A008979.P10815208238127387904

/-! ## A008979.P4685676582529549533

`A320824(∑[4*n])`
-/

namespace A008979.P4685676582529549533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320824 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008979.P4685676582529549533

/-! ## A008979.P14451404506196721026

`C(2*n, n)^3*A006480(2*n)`
-/

namespace A008979.P14451404506196721026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n ^ 3 : ℤ) * A006480 (2 * n)

end

end A008979.P14451404506196721026

/-! ## A008979.P1305219938050381993

`C(2*n, n)²*C(3*n, n)*A113424(n)`
-/

namespace A008979.P1305219938050381993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n ^ 2 * Nat.choose (3 * n) n : ℤ) * A113424 n

end

end A008979.P1305219938050381993

/-! ## A008979.P13785316567917423526

`A001421(n)*A006480(n)`
-/

namespace A008979.P13785316567917423526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001421 n * A006480 n

end

end A008979.P13785316567917423526

/-!
# A008980: Number of immersions of the oriented circle into the oriented plane with n double points.

The programs for A008980, there is no canonical definition to state claims against.
-/

/-! ## A008980.P7721277607197012973

`A004523(A179327(n+2)+A002293(n))`
-/

namespace A008980.P7721277607197012973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A179327 (n + 2) + A002293 n).toNat

end

end A008980.P7721277607197012973

/-!
# A008981: Number of immersions of the unoriented circle into the oriented plane with n double points.

The programs for A008981, there is no canonical definition to state claims against.
-/

/-! ## A008981.P3181593418926501696

`A014018(A008983(n))+A008982(n)`
-/

namespace A008981.P3181593418926501696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014018 (A008983 n).toNat + A008982 n

end

end A008981.P3181593418926501696

/-! ## A008981.P5469648464428541208

`A248805(A001077(n))+A008982(n)`
-/

namespace A008981.P5469648464428541208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248805 (A001077 n).toNat + A008982 n

end

end A008981.P5469648464428541208

/-! ## A008981.P1974632858572177067

`A248805(A005493(n))+A008982(n)`
-/

namespace A008981.P1974632858572177067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248805 (A005493 n).toNat + A008982 n

end

end A008981.P1974632858572177067

/-!
# A008982: Number of immersions of the oriented circle into the unoriented plane with n double points.

The programs for A008982, there is no canonical definition to state claims against.
-/

/-! ## A008982.P4789639243029427493

`A140201(A008981(n))`
-/

namespace A008982.P4789639243029427493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140201 (A008981 n).toNat

end

end A008982.P4789639243029427493

/-! ## A008982.P14777183312727538227

`A011702(A000272(n))+A008981(n)`
-/

namespace A008982.P14777183312727538227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011702 (A000272 n).toNat + A008981 n

end

end A008982.P14777183312727538227

/-! ## A008982.P2903548978581152252

`A008981(n)+A007949(A008983(n))`
-/

namespace A008982.P2903548978581152252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008981 n + A007949 (A008983 n).toNat

end

end A008982.P2903548978581152252

/-!
# A008983: Number of immersions of the unoriented circle into the unoriented plane with n double points.

The programs for A008983, there is no canonical definition to state claims against.
-/

/-! ## A008983.P11014486444418679568

`∑[A365740(∑[A007286(n)])]`
-/

namespace A008983.P11014486444418679568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007286 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365740 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008983.P11014486444418679568

/-! ## A008983.P4359460415633406946

`∑[A169982(n+1)]-A191719(n)`
-/

namespace A008983.P4359460415633406946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A191719 n

end

end A008983.P4359460415633406946

/-!
# A008984: Number of immersions of the oriented circle into the oriented plane with n double points and index n-1.

The programs for A008984, there is no canonical definition to state claims against.
-/

/-! ## A008984.P9407092980464687809

`A137588(A377109(n)+A108870(n))`
-/

namespace A008984.P9407092980464687809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A377109 n + A108870 n).toNat

end

end A008984.P9407092980464687809

/-! ## A008984.P12602118451813082974

`or(A000045(n), A151733(A011782(n)))`
-/

namespace A008984.P12602118451813082974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000045 n) (A151733 (A011782 n).toNat)

end

end A008984.P12602118451813082974

/-!
# A008986: Number of immersions of oriented circle into oriented sphere with n double points.

The programs for A008986, there is no canonical definition to state claims against.
-/

/-! ## A008986.P813786207734589947

`A260285(C(n, 2)+1)`
-/

namespace A008986.P813786207734589947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260285 (Nat.choose n 2 + 1)

end

end A008986.P813786207734589947

/-! ## A008986.P11011975496353816407

`A260285(∑[abs(1-n)])`
-/

namespace A008986.P11011975496353816407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260285 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008986.P11011975496353816407

/-! ## A008986.P7061540015100866562

`or(char[1], A260285(A152947(n+1)))`
-/

namespace A008986.P7061540015100866562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260285 (A152947 (n + 1)).toNat)

end

end A008986.P7061540015100866562

/-! ## A008986.P4749950901594246920

`A260285(A152947(n+1))+A026831(n)`
-/

namespace A008986.P4749950901594246920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260285 (A152947 (n + 1)).toNat + A026831 n

end

end A008986.P4749950901594246920

/-! ## A008986.P3678805525449814829

`A260285(A152947(n+1))+A185037(n)`
-/

namespace A008986.P3678805525449814829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260285 (A152947 (n + 1)).toNat + A185037 n

end

end A008986.P3678805525449814829

/-!
# A008987: Number of immersions of an unoriented circle into the oriented sphere with n double points.

The programs for A008987, there is no canonical definition to state claims against.
-/

/-! ## A008987.P16303096270486343014

`A260848(C(n, 2)+1)`
-/

namespace A008987.P16303096270486343014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260848 (Nat.choose n 2 + 1)

end

end A008987.P16303096270486343014

/-! ## A008987.P4042262546985465170

`A260848(∑[abs(1-n)])`
-/

namespace A008987.P4042262546985465170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260848 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008987.P4042262546985465170

/-! ## A008987.P10899186132370246758

`or(char[1], A260848(A152947(n+1)))`
-/

namespace A008987.P10899186132370246758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260848 (A152947 (n + 1)).toNat)

end

end A008987.P10899186132370246758

/-! ## A008987.P2789566033815652719

`A260848(A152947(n+1))+A026831(n)`
-/

namespace A008987.P2789566033815652719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260848 (A152947 (n + 1)).toNat + A026831 n

end

end A008987.P2789566033815652719

/-! ## A008987.P8132677895435664992

`A260848(A152947(n+1))+A185037(n)`
-/

namespace A008987.P8132677895435664992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260848 (A152947 (n + 1)).toNat + A185037 n

end

end A008987.P8132677895435664992

/-!
# A008988: Number of immersions of oriented circle into unoriented sphere with n double points.

The programs for A008988, there is no canonical definition to state claims against.
-/

/-! ## A008988.P11257117376532974207

`A260885(C(n, 2)+1)`
-/

namespace A008988.P11257117376532974207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260885 (Nat.choose n 2 + 1)

end

end A008988.P11257117376532974207

/-! ## A008988.P12752331488730215059

`A260885(∑[abs(1-n)])`
-/

namespace A008988.P12752331488730215059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260885 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008988.P12752331488730215059

/-! ## A008988.P10636182720925325686

`or(char[1], A260885(A152947(n+1)))`
-/

namespace A008988.P10636182720925325686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260885 (A152947 (n + 1)).toNat)

end

end A008988.P10636182720925325686

/-! ## A008988.P14704695431945169432

`A260885(A152947(n+1))+A026831(n)`
-/

namespace A008988.P14704695431945169432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260885 (A152947 (n + 1)).toNat + A026831 n

end

end A008988.P14704695431945169432

/-! ## A008988.P5865660363823974292

`A260885(A152947(n+1))+A185037(n)`
-/

namespace A008988.P5865660363823974292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260885 (A152947 (n + 1)).toNat + A185037 n

end

end A008988.P5865660363823974292

/-!
# A008989: Number of immersions of an unoriented circle into the unoriented sphere with n double points.

The programs for A008989, there is no canonical definition to state claims against.
-/

/-! ## A008989.P16164651996568838100

`A260914(C(n, 2)+1)`
-/

namespace A008989.P16164651996568838100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260914 (Nat.choose n 2 + 1)

end

end A008989.P16164651996568838100

/-! ## A008989.P5007776058726889235

`A260914(∑[abs(1-n)])`
-/

namespace A008989.P5007776058726889235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260914 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008989.P5007776058726889235

/-! ## A008989.P9468595070406022534

`or(char[1], A260914(A152947(n+1)))`
-/

namespace A008989.P9468595070406022534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260914 (A152947 (n + 1)).toNat)

end

end A008989.P9468595070406022534

/-! ## A008989.P5664618424251800778

`A260914(A152947(n+1))+A026831(n)`
-/

namespace A008989.P5664618424251800778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260914 (A152947 (n + 1)).toNat + A026831 n

end

end A008989.P5664618424251800778

/-! ## A008989.P12486985208314913268

`A260914(A152947(n+1))+A185037(n)`
-/

namespace A008989.P12486985208314913268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260914 (A152947 (n + 1)).toNat + A185037 n

end

end A008989.P12486985208314913268

/-!
# A008990: Numerators of sequence having sqrt(cos(x)) as e.g.f. (even-indexed coefficients only).

The programs for A008990, there is no canonical definition to state claims against.
-/

/-! ## A008990.P12558927375286911556

`1-A007494(A082403(n))`
-/

namespace A008990.P12558927375286911556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007494 (A082403 n).toNat

end

end A008990.P12558927375286911556

/-!
# A008992: Denominators of coefficients in expansion of sqrt(sin(x)/x) (even powers only).

The programs for A008992, there is no canonical definition to state claims against.
-/

/-! ## A008992.P7494612384583357181

`A220371(n)/gcd(A220002(n), A220371(n))`
-/

namespace A008992.P7494612384583357181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220371 n : ℚ) / (Int.gcd (A220002 n) (A220371 n) : ℚ)

end

end A008992.P7494612384583357181

/-!
# A008993: Numerators of coefficients in expansion of cube root of sin(x).

The programs for A008993, there is no canonical definition to state claims against.
-/

/-! ## A008993.P10221061306301915337

`3-A022446((n+1)^(n+1))`
-/

namespace A008993.P10221061306301915337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A022446 ((n + 1) ^ (n + 1))

end

end A008993.P10221061306301915337

/-!
# A008995: Increasing length runs of consecutive composite numbers (endpoints).

The programs for A008995, there is no canonical definition to state claims against.
-/

/-! ## A008995.P11412360016878317409

`A000101(n+2)-1`
-/

namespace A008995.P11412360016878317409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000101 (n + 2) - 1

end

end A008995.P11412360016878317409

/-! ## A008995.P16048621682520422128

`∑[abs(Δ[A000101(n+1)])]+2`
-/

namespace A008995.P16048621682520422128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000101 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A008995.P16048621682520422128

/-! ## A008995.P897097177628859348

`xor(1, A000101(A020725(n+1)))`
-/

namespace A008995.P897097177628859348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000101 (A020725 (n + 1)).toNat)

end

end A008995.P897097177628859348

/-! ## A008995.P8963962797791706284

`xor(1, A000101(A257333(n+1)))`
-/

namespace A008995.P8963962797791706284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000101 (A257333 (n + 1)).toNat)

end

end A008995.P8963962797791706284

/-! ## A008995.P388786371184166147

`xor(1, A000101(A000027(n+2)))`
-/

namespace A008995.P388786371184166147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000101 (A000027 (n + 2)).toNat)

end

end A008995.P388786371184166147

/-!
# A008996: Increasing length runs of consecutive composite numbers (records).

The programs for A008996, there is no canonical definition to state claims against.
-/

/-! ## A008996.P545895348162192074

`A005250(n+2)-1`
-/

namespace A008996.P545895348162192074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005250 (n + 2) - 1

end

end A008996.P545895348162192074

/-! ## A008996.P4709795267043076062

`∑[A053695(n+1)]`
-/

namespace A008996.P4709795267043076062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008996.P4709795267043076062

/-! ## A008996.P15248749355806482279

`record[A014320(n+2)-1]`
-/

namespace A008996.P15248749355806482279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014320 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008996.P15248749355806482279

/-! ## A008996.P4813922511530042422

`∑[abs(Δ[A005250(n+1)])]`
-/

namespace A008996.P4813922511530042422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005250 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008996.P4813922511530042422

/-! ## A008996.P385409612347688874

`A014681(A005250(n+2))`
-/

namespace A008996.P385409612347688874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A005250 (n + 2)).toNat

end

end A008996.P385409612347688874

/-! ## A008996.P12754610208622785429

`∑[A000027(Δ[A005250(n+1)])]`
-/

namespace A008996.P12754610208622785429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005250 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008996.P12754610208622785429

/-! ## A008996.P11751830229117384251

`record[2*A014321(n+1)-1]`
-/

namespace A008996.P11751830229117384251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014321 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008996.P11751830229117384251

/-! ## A008996.P1236725705829398733

`record[A005843(A014321(n+1)+1)-2]-1`
-/

namespace A008996.P1236725705829398733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A014321 (n + 1) + 1).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A008996.P1236725705829398733

/-! ## A008996.P13123173927753422779

`2*A270711(n+2)-1`
-/

namespace A008996.P13123173927753422779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A270711 (n + 2) - 1

end

end A008996.P13123173927753422779

/-! ## A008996.P9751415995556801682

`A004273(A270711(n+2))`
-/

namespace A008996.P9751415995556801682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A270711 (n + 2)).toNat

end

end A008996.P9751415995556801682

/-!
# A008997: Orchard problem with 5 trees in a row (may not have all been proved optimal).

The programs for A008997, there is no canonical definition to state claims against.
-/

/-! ## A008997.P17449518774717743946

`floor(A162408(n+1)/7)`
-/

namespace A008997.P17449518774717743946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162408 (n + 1) : ℚ) / 7⌋

end

end A008997.P17449518774717743946

/-! ## A008997.P9588777930217925070

`floor((A152212(n+1)/11)²)`
-/

namespace A008997.P9588777930217925070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A152212 (n + 1) : ℚ) / 11) ^ 2⌋

end

end A008997.P9588777930217925070

/-! ## A008997.P17277005631376623672

`round(A007360(2*(n+1))/11)`
-/

namespace A008997.P17277005631376623672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007360 (2 * (n + 1)) : ℚ) / 11)

end

end A008997.P17277005631376623672

/-! ## A008997.P4273690969219032912

`A074239(or(1, A035382(n)))`
-/

namespace A008997.P4273690969219032912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074239 (Int.lor 1 (A035382 n)).toNat

end

end A008997.P4273690969219032912

/-! ## A008997.P13210200354416598651

`∑[A005089(∑[A121416(n)])]`
-/

namespace A008997.P13210200354416598651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008997.P13210200354416598651

/-!
# A008998: a(n) = 2*a(n-1) + a(n-3), with a(0)=1 and a(1)=2.

The programs for A008998, the canonical program `A008998.P11318023901438216252` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008998 has offset 0).

The definition of A008998 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-3)` (program `A008998.P11318023901438216252`, by `A008998.P11318023901438216252.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008998.P11318023901438216252

`2*a(n-1)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008998

/-- `2*a(n-1)+a(n-3)` -/
def P11318023901438216252.Spec : Prop :=
  ∀ n, (P11318023901438216252.a n : ℤ) = A008998 n

theorem P11318023901438216252.correct : P11318023901438216252.Spec := by
  intro n
  simp only [A008998]

end A008998

/-! ## A008998.P1613416151598929372

`ogf(1/(1-2x-x^3))`
-/

namespace A008998.P1613416151598929372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 0, -1] n

end

end A008998.P1613416151598929372

namespace A008998

/-- `ogf(1/(1-2x-x^3))` -/
def P1613416151598929372.Spec : Prop :=
  ∀ n, P1613416151598929372.a n = A008998 n

end A008998

/-! ## A008998.P481236675319298553

`a(n-1)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A008998.P481236675319298553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 3))

end

end A008998.P481236675319298553

namespace A008998

/-- `a(n-1)+a(n-1)+a(n-3)` -/
def P481236675319298553.Spec : Prop :=
  ∀ n, (P481236675319298553.a n : ℤ) = A008998 n

theorem P481236675319298553.correct : P481236675319298553.Spec := by
  intro n
  simp only [A008998, Nat.add_sub_cancel, A008998.P481236675319298553.a, A008998.P11318023901438216252.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A008998

/-! ## A008998.P17186608577012266912

`∑[A052980(n)]`
-/

namespace A008998.P17186608577012266912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008998.P17186608577012266912

namespace A008998

/-- `∑[A052980(n)]` -/
def P17186608577012266912.Spec : Prop :=
  ∀ n, P17186608577012266912.a n = A008998 n

end A008998

/-! ## A008998.P18046415635872356661

`∑[abs(A110513(n))]`
-/

namespace A008998.P18046415635872356661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110513 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008998.P18046415635872356661

namespace A008998

/-- `∑[abs(A110513(n))]` -/
def P18046415635872356661.Spec : Prop :=
  ∀ n, P18046415635872356661.a n = A008998 n

end A008998

/-! ## A008998.P3095218142528294558

`A239905(4*n+3)`
-/

namespace A008998.P3095218142528294558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239905 (4 * n + 3)

end

end A008998.P3095218142528294558

namespace A008998

/-- `A239905(4*n+3)` -/
def P3095218142528294558.Spec : Prop :=
  ∀ n, P3095218142528294558.a n = A008998 n

end A008998

/-! ## A008998.P17215217544503627830

`A190512(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A008998.P17215217544503627830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A190512 n - a (n - 2)

end

end A008998.P17215217544503627830

namespace A008998

/-- `A190512(n)-a(n-2)` -/
def P17215217544503627830.Spec : Prop :=
  ∀ n, P17215217544503627830.a n = A008998 n

end A008998

/-! ## A008998.P8470042554876386453

`A052910(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A008998.P8470042554876386453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A052910 n + a (n - 3)

end

end A008998.P8470042554876386453

namespace A008998

/-- `A052910(n)+a(n-3)` -/
def P8470042554876386453.Spec : Prop :=
  ∀ n, P8470042554876386453.a n = A008998 n

end A008998

/-! ## A008998.P3943636122791313295

`∑[lcm(A110513(n), A110515(n))]`
-/

namespace A008998.P3943636122791313295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A110513 n) (A110515 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008998.P3943636122791313295

namespace A008998

/-- `∑[lcm(A110513(n), A110515(n))]` -/
def P3943636122791313295.Spec : Prop :=
  ∀ n, (P3943636122791313295.a n : ℤ) = A008998 n

end A008998

/-! ## A008998.P14397280108339166395

`A052980(n)+A332647(n)-A332491(n)`
-/

namespace A008998.P14397280108339166395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n + (A332647 n - A332491 n)

end

end A008998.P14397280108339166395

namespace A008998

/-- `A052980(n)+A332647(n)-A332491(n)` -/
def P14397280108339166395.Spec : Prop :=
  ∀ n, P14397280108339166395.a n = A008998 n

end A008998

/-! ## A008998.P3039307455640413293

`3*a(n-1)-(a(n-1)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A008998.P3039307455640413293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 3))

end

end A008998.P3039307455640413293

namespace A008998

/-- `3*a(n-1)-(a(n-1)-a(n-3))` -/
def P3039307455640413293.Spec : Prop :=
  ∀ n, P3039307455640413293.a n = A008998 n

end A008998

/-! ## A008998.P12679077781299160177

`A052910(n+1)/2`
-/

namespace A008998.P12679077781299160177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052910 (n + 1) : ℚ) / 2

end

end A008998.P12679077781299160177

namespace A008998

/-- `A052910(n+1)/2` -/
def P12679077781299160177.Spec : Prop :=
  ∀ n, P12679077781299160177.a n = (A008998 n : ℚ)

end A008998

/-! ## A008998.P2091781158997691702

`A214260(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A008998.P2091781158997691702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214260 (n + 1) - a (n - 1)

end

end A008998.P2091781158997691702

namespace A008998

/-- `A214260(n+1)-a(n-1)` -/
def P2091781158997691702.Spec : Prop :=
  ∀ n, P2091781158997691702.a n = A008998 n

end A008998

/-! ## A008998.P5517449743640240887

`A193641(n+1)-A214260(n)`
-/

namespace A008998.P5517449743640240887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 1) - A214260 n

end

end A008998.P5517449743640240887

namespace A008998

/-- `A193641(n+1)-A214260(n)` -/
def P5517449743640240887.Spec : Prop :=
  ∀ n, P5517449743640240887.a n = A008998 n

end A008998

/-! ## A008998.P16388416368568039294

`A335242(n+2)-A052980(n)`
-/

namespace A008998.P16388416368568039294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335242 (n + 2) - A052980 n

end

end A008998.P16388416368568039294

namespace A008998

/-- `A335242(n+2)-A052980(n)` -/
def P16388416368568039294.Spec : Prop :=
  ∀ n, P16388416368568039294.a n = A008998 n

end A008998

/-! ## A008998.P3912264529537383060

`∑[A190512(n)]+1-A190512(n)`
-/

namespace A008998.P3912264529537383060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A190512 n)

end

end A008998.P3912264529537383060

namespace A008998

/-- `∑[A190512(n)]+1-A190512(n)` -/
def P3912264529537383060.Spec : Prop :=
  ∀ n, P3912264529537383060.a n = A008998 n

end A008998

/-! ## A008998.P9844498001240568014

`A332647(n+1)-A332491(n+1)`
-/

namespace A008998.P9844498001240568014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332647 (n + 1) - A332491 (n + 1)

end

end A008998.P9844498001240568014

namespace A008998

/-- `A332647(n+1)-A332491(n+1)` -/
def P9844498001240568014.Spec : Prop :=
  ∀ n, P9844498001240568014.a n = A008998 n

end A008998

/-! ## A008998.P9317101161027589945

`A052980(n+2)-A193641(n+1)`
-/

namespace A008998.P9317101161027589945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (n + 2) - A193641 (n + 1)

end

end A008998.P9317101161027589945

namespace A008998

/-- `A052980(n+2)-A193641(n+1)` -/
def P9317101161027589945.Spec : Prop :=
  ∀ n, P9317101161027589945.a n = A008998 n

end A008998

/-! ## A008998.P3411172615636117939

`abs(∑[A078061(n)])`
-/

namespace A008998.P3411172615636117939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A008998.P3411172615636117939

namespace A008998

/-- `abs(∑[A078061(n)])` -/
def P3411172615636117939.Spec : Prop :=
  ∀ n, P3411172615636117939.a n = A008998 n

end A008998

/-! ## A008998.P14978320218337884230

`A052980(n+3)-A020708(n)`
-/

namespace A008998.P14978320218337884230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (n + 3) - A020708 n

end

end A008998.P14978320218337884230

namespace A008998

/-- `A052980(n+3)-A020708(n)` -/
def P14978320218337884230.Spec : Prop :=
  ∀ n, P14978320218337884230.a n = A008998 n

end A008998

/-!
# A008999: a(n) = 2*a(n-1) + a(n-4).

The programs for A008999, the canonical program `A008999.P9781322241096637079` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008999 has offset 0).

The definition of A008999 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-4)` (program `A008999.P9781322241096637079`, by `A008999.P9781322241096637079.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008999.P9781322241096637079

`2*a(n-1)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008999

/-- `2*a(n-1)+a(n-4)` -/
def P9781322241096637079.Spec : Prop :=
  ∀ n, (P9781322241096637079.a n : ℤ) = A008999 n

theorem P9781322241096637079.correct : P9781322241096637079.Spec := by
  intro n
  simp only [A008999]

end A008999

/-! ## A008999.P10505661625115372784

`ogf(1/(1-2x-x^4))`
-/

namespace A008999.P10505661625115372784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 0, 0, -1] n

end

end A008999.P10505661625115372784

namespace A008999

/-- `ogf(1/(1-2x-x^4))` -/
def P10505661625115372784.Spec : Prop :=
  ∀ n, P10505661625115372784.a n = A008999 n

end A008999

/-! ## A008999.P12558995598031196328

`a(n-1)+a(n-1)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A008999.P12558995598031196328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 4))

end

end A008999.P12558995598031196328

namespace A008999

/-- `a(n-1)+a(n-1)+a(n-4)` -/
def P12558995598031196328.Spec : Prop :=
  ∀ n, (P12558995598031196328.a n : ℤ) = A008999 n

theorem P12558995598031196328.correct : P12558995598031196328.Spec := by
  intro n
  simp only [A008999, Nat.add_sub_cancel, A008999.P12558995598031196328.a, A008999.P9781322241096637079.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A008999

/-! ## A008999.P7838041347599553963

`A052667(n)/n!`
-/

namespace A008999.P7838041347599553963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052667 n : ℚ) / (Nat.factorial n : ℚ)

end

end A008999.P7838041347599553963

namespace A008999

/-- `A052667(n)/n!` -/
def P7838041347599553963.Spec : Prop :=
  ∀ n, P7838041347599553963.a n = (A008999 n : ℚ)

end A008999

/-! ## A008999.P13467684744528635359

`A052667(n)/A000142(n)`
-/

namespace A008999.P13467684744528635359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052667 n : ℚ) / (A000142 n : ℚ)

end

end A008999.P13467684744528635359

namespace A008999

/-- `A052667(n)/A000142(n)` -/
def P13467684744528635359.Spec : Prop :=
  ∀ n, P13467684744528635359.a n = (A008999 n : ℚ)

end A008999

/-! ## A008999.P4975409468864944112

`A052667(n)/∏[A028310(n)]`
-/

namespace A008999.P4975409468864944112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052667 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A008999.P4975409468864944112

namespace A008999

/-- `A052667(n)/∏[A028310(n)]` -/
def P4975409468864944112.Spec : Prop :=
  ∀ n, P4975409468864944112.a n = (A008999 n : ℚ)

end A008999

/-! ## A008999.P2366745661105849260

`A052667(n)/A021009(A000217(n))`
-/

namespace A008999.P2366745661105849260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052667 n : ℚ) / (A021009 (A000217 n).toNat : ℚ)

end

end A008999.P2366745661105849260

namespace A008999

/-- `A052667(n)/A021009(A000217(n))` -/
def P2366745661105849260.Spec : Prop :=
  ∀ n, P2366745661105849260.a n = (A008999 n : ℚ)

end A008999

/-! ## A008999.P4269296146155362790

`A052667(n)/A142589(A000124(n))`
-/

namespace A008999.P4269296146155362790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052667 n : ℚ) / (A142589 (A000124 n).toNat : ℚ)

end

end A008999.P4269296146155362790

namespace A008999

/-- `A052667(n)/A142589(A000124(n))` -/
def P4269296146155362790.Spec : Prop :=
  ∀ n, P4269296146155362790.a n = (A008999 n : ℚ)

end A008999

