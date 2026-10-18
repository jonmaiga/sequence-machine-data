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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A151800: Least prime > n (version 2 of the "next prime" function).

The programs for A151800, the canonical program `A151800.P4570031678714564115` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151800 has offset 0).

The definition of A151800 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A151800.P4570031678714564115

`A007918(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A151800

/-- `A007918(n+1)` -/
def P4570031678714564115.Spec : Prop :=
  ∀ n, P4570031678714564115.a n = A151800 n

theorem P4570031678714564115.correct : P4570031678714564115.Spec := by
  intro n
  simp only [A151800]

end A151800

/-! ## A151800.P13974608210300517069

`Δ[A117842(n)]`
-/

namespace A151800.P13974608210300517069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151800.P13974608210300517069

namespace A151800

/-- `Δ[A117842(n)]` -/
def P13974608210300517069.Spec : Prop :=
  ∀ n, P13974608210300517069.a n = A151800 n

end A151800

/-! ## A151800.P1221037807629658939

`A013632(n)+n`
-/

namespace A151800.P1221037807629658939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n + (n : ℤ)

end

end A151800.P1221037807629658939

namespace A151800

/-- `A013632(n)+n` -/
def P1221037807629658939.Spec : Prop :=
  ∀ n, P1221037807629658939.a n = A151800 n

end A151800

/-! ## A151800.P10609948057301072099

`A013634(n)-n`
-/

namespace A151800.P10609948057301072099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 n - (n : ℤ)

end

end A151800.P10609948057301072099

namespace A151800

/-- `A013634(n)-n` -/
def P10609948057301072099.Spec : Prop :=
  ∀ n, P10609948057301072099.a n = A151800 n

end A151800

/-! ## A151800.P13390219662769927256

`sqrt(A069549(n+1))`
-/

namespace A151800.P13390219662769927256
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069549 (n + 1) : ℝ)

end

end A151800.P13390219662769927256

namespace A151800

/-- `sqrt(A069549(n+1))` -/
def P13390219662769927256.Spec : Prop :=
  ∀ n, P13390219662769927256.a n = (A151800 n : ℝ)

end A151800

/-! ## A151800.P6143966806599377339

`A007920(n+1)+1+n`
-/

namespace A151800.P6143966806599377339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (n + 1) + 1 + (n : ℤ)

end

end A151800.P6143966806599377339

namespace A151800

/-- `A007920(n+1)+1+n` -/
def P6143966806599377339.Spec : Prop :=
  ∀ n, P6143966806599377339.a n = A151800 n

end A151800

/-! ## A151800.P17907275401422921812

`A053024(n+1)/(n+1)`
-/

namespace A151800.P17907275401422921812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053024 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A151800.P17907275401422921812

namespace A151800

/-- `A053024(n+1)/(n+1)` -/
def P17907275401422921812.Spec : Prop :=
  ∀ n, P17907275401422921812.a n = (A151800 n : ℚ)

end A151800

/-! ## A151800.P13363942279738277478

`A308046(n+1)/2+n+1`
-/

namespace A151800.P13363942279738277478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308046 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A151800.P13363942279738277478

namespace A151800

/-- `A308046(n+1)/2+n+1` -/
def P13363942279738277478.Spec : Prop :=
  ∀ n, P13363942279738277478.a n = (A151800 n : ℚ)

end A151800

/-! ## A151800.P1954271543566966850

`A096500(n-1)+a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A151800.P1954271543566966850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A096500 (n - 1) + a (n - 1)

end

end A151800.P1954271543566966850

namespace A151800

/-- `A096500(n-1)+a(n-1)` -/
def P1954271543566966850.Spec : Prop :=
  ∀ n, P1954271543566966850.a n = A151800 n

end A151800

/-! ## A151800.P5159254299715746298

`A000040(A230980(n)+1)`
-/

namespace A151800.P5159254299715746298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230980 n + 1).toNat

end

end A151800.P5159254299715746298

namespace A151800

/-- `A000040(A230980(n)+1)` -/
def P5159254299715746298.Spec : Prop :=
  ∀ n, P5159254299715746298.a n = A151800 n

end A151800

/-! ## A151800.P4729878626255209894

`A008578(A230980(n)+2)`
-/

namespace A151800.P4729878626255209894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A230980 n + 2).toNat

end

end A151800.P4729878626255209894

namespace A151800

/-- `A008578(A230980(n)+2)` -/
def P4729878626255209894.Spec : Prop :=
  ∀ n, P4729878626255209894.a n = A151800 n

end A151800

/-! ## A151800.P9214210816610586279

`A182986(A230980(n)+2)`
-/

namespace A151800.P9214210816610586279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A230980 n + 2).toNat

end

end A151800.P9214210816610586279

namespace A151800

/-- `A182986(A230980(n)+2)` -/
def P9214210816610586279.Spec : Prop :=
  ∀ n, P9214210816610586279.a n = A151800 n

end A151800

/-! ## A151800.P11606775576092302718

`A000040(A064427(n+1)-n)`
-/

namespace A151800.P11606775576092302718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064427 (n + 1) - (n : ℤ)).toNat

end

end A151800.P11606775576092302718

namespace A151800

/-- `A000040(A064427(n+1)-n)` -/
def P11606775576092302718.Spec : Prop :=
  ∀ n, P11606775576092302718.a n = A151800 n

end A151800

/-! ## A151800.P11594108043749343470

`A053024(n+1)-A013636(n)`
-/

namespace A151800.P11594108043749343470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053024 (n + 1) - A013636 n

end

end A151800.P11594108043749343470

namespace A151800

/-- `A053024(n+1)-A013636(n)` -/
def P11594108043749343470.Spec : Prop :=
  ∀ n, P11594108043749343470.a n = A151800 n

end A151800

/-! ## A151800.P5120373469046103144

`A000040(A095117(n)+1-n)`
-/

namespace A151800.P5120373469046103144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A095117 n + (1 - (n : ℤ))).toNat

end

end A151800.P5120373469046103144

namespace A151800

/-- `A000040(A095117(n)+1-n)` -/
def P5120373469046103144.Spec : Prop :=
  ∀ n, P5120373469046103144.a n = A151800 n

end A151800

/-! ## A151800.P6052372463815105401

`A117842(n+1)-A117842(n)`
-/

namespace A151800.P6052372463815105401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117842 (n + 1) - A117842 n

end

end A151800.P6052372463815105401

namespace A151800

/-- `A117842(n+1)-A117842(n)` -/
def P6052372463815105401.Spec : Prop :=
  ∀ n, P6052372463815105401.a n = A151800 n

end A151800

/-! ## A151800.P8655144630985844629

`A000040(1-(n-A095117(n)))`
-/

namespace A151800.P8655144630985844629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 - ((n : ℤ) - A095117 n)).toNat

end

end A151800.P8655144630985844629

namespace A151800

/-- `A000040(1-(n-A095117(n)))` -/
def P8655144630985844629.Spec : Prop :=
  ∀ n, P8655144630985844629.a n = A151800 n

end A151800

/-! ## A151800.P234320062889561533

`A000040(∑[char[A075860(n+1)]])`
-/

namespace A151800.P234320062889561533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075860 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151800.P234320062889561533

namespace A151800

/-- `A000040(∑[char[A075860(n+1)]])` -/
def P234320062889561533.Spec : Prop :=
  ∀ n, P234320062889561533.a n = A151800 n

end A151800

/-! ## A151800.P7969633060114669753

`A005843(n)-(n-A013632(n))`
-/

namespace A151800.P7969633060114669753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A013632 n)

end

end A151800.P7969633060114669753

namespace A151800

/-- `A005843(n)-(n-A013632(n))` -/
def P7969633060114669753.Spec : Prop :=
  ∀ n, P7969633060114669753.a n = A151800 n

end A151800

/-!
# A151801: Number of n X n binary arrays with rows, considered as binary numbers, in strictly increasing order, and columns, considered as binary numbers, in nondecreasing order.

The programs for A151801, there is no canonical definition to state claims against.
-/

/-! ## A151801.P6124640971131169880

`A180988(∑[4*n]+1)`
-/

namespace A151801.P6124640971131169880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180988 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A151801.P6124640971131169880

/-! ## A151801.P17387633461381778815

`record[A003982(n)*A180988(n+1)]`
-/

namespace A151801.P17387633461381778815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A180988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151801.P17387633461381778815

/-! ## A151801.P6582654944967133781

`record[A180988(n+1)*A214505(n)]`
-/

namespace A151801.P6582654944967133781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180988 (n + 1) * A214505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151801.P6582654944967133781

/-! ## A151801.P3375196296739772052

`record[gcd(A037012(n), A180988(n+1))]`
-/

namespace A151801.P3375196296739772052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A180988 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151801.P3375196296739772052

/-! ## A151801.P10221187752751764233

`A180989(n+1)+A180988(A001844(n))`
-/

namespace A151801.P10221187752751764233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180989 (n + 1) + A180988 (A001844 n).toNat

end

end A151801.P10221187752751764233

/-!
# A151802: Number of n X n binary arrays with rows, considered as binary numbers, in strictly increasing order, and columns, considered as binary numbers, in nondecreasing order, and no more than 2 ones in any row or column.

The programs for A151802, there is no canonical definition to state claims against.
-/

/-! ## A151802.P699340202857804879

`A302188(n)+A284732(A290816(n+3))`
-/

namespace A151802.P699340202857804879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302188 n + A284732 (A290816 (n + 3)).toNat

end

end A151802.P699340202857804879

/-! ## A151802.P3529761676922577508

`A302188(n)+A284732(A295419(n+3))`
-/

namespace A151802.P3529761676922577508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302188 n + A284732 (A295419 (n + 3)).toNat

end

end A151802.P3529761676922577508

/-!
# A151803: Number of n X n binary arrays with rows, considered as binary numbers, in strictly increasing order, and columns, considered as binary numbers, in nondecreasing order, and no more than 3 ones in any row or column.

The programs for A151803, there is no canonical definition to state claims against.
-/

/-! ## A151803.P11378880403084150394

`A049820(A145083(n))+n+2`
-/

namespace A151803.P11378880403084150394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A145083 n).toNat + (n + 2 : ℤ)

end

end A151803.P11378880403084150394

/-!
# A151804: Number of n X n binary arrays with rows, considered as binary numbers, in strictly increasing order, and columns, considered as binary numbers, in nondecreasing order, and no more than 4 ones in any row or column.

The programs for A151804, there is no canonical definition to state claims against.
-/

/-! ## A151804.P11498816136373366213

`A007092(A159931(n+1)+A058349(n+1))`
-/

namespace A151804.P11498816136373366213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A159931 (n + 1) + A058349 (n + 1)).toNat

end

end A151804.P11498816136373366213

/-!
# A151811: Weight distribution of [127,22,47] primitive binary BCH code.

The programs for A151811, there is no canonical definition to state claims against.
-/

/-! ## A151811.P2513218095977412755

`A151877(lt[A151878(2*(n+1)), A151855(n)]-n)`
-/

namespace A151811.P2513218095977412755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151877 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n - n)

end

end A151811.P2513218095977412755

/-!
# A151813: Weight distribution of [127,36,31] primitive binary BCH code.

The programs for A151813, there is no canonical definition to state claims against.
-/

/-! ## A151813.P8140542468474982719

`A139250(C(A286316(n), 2*n))`
-/

namespace A151813.P8140542468474982719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (Nat.choose (A286316 n).toNat (2 * n))

end

end A151813.P8140542468474982719

/-! ## A151813.P9246286592701919524

`A097479(n)%A061579(A208879(n))`
-/

namespace A151813.P9246286592701919524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097479 n) (A061579 (A208879 n).toNat)

end

end A151813.P9246286592701919524

/-! ## A151813.P16883172642145498816

`A151838(n)%A278222(A151815(n))`
-/

namespace A151813.P16883172642145498816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151838 n) (A278222 (A151815 n).toNat)

end

end A151813.P16883172642145498816

/-! ## A151813.P7053551758791879603

`A001001(n+1)%A278222(A151815(n))`
-/

namespace A151813.P7053551758791879603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001001 (n + 1)) (A278222 (A151815 n).toNat)

end

end A151813.P7053551758791879603

/-! ## A151813.P7077375082132678454

`A139250(C(A162499(n+3), A004277(n)))`
-/

namespace A151813.P7077375082132678454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (Nat.choose (A162499 (n + 3)).toNat (A004277 n).toNat)

end

end A151813.P7077375082132678454

/-!
# A151816: a(n) = (2*n)! - ((2*n-1)!!)^2.

The programs for A151816, the canonical program `A151816.P8000088952304632099` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151816 has offset 0).

The definition of A151816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151816.P8000088952304632099

`A010050(n)-A001818(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A151816

/-- `A010050(n)-A001818(n)` -/
def P8000088952304632099.Spec : Prop :=
  ∀ n, P8000088952304632099.a n = A151816 n

theorem P8000088952304632099.correct : P8000088952304632099.Spec := by
  intro n
  simp only [A151816]

end A151816

/-! ## A151816.P14715016191615194806

`(2*n)!-∏[(1-2*n)²]`
-/

namespace A151816.P14715016191615194806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℤ) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A151816.P14715016191615194806

namespace A151816

/-- `(2*n)!-∏[(1-2*n)²]` -/
def P14715016191615194806.Spec : Prop :=
  ∀ n, P14715016191615194806.a n = A151816 n

end A151816

/-! ## A151816.P18011206201315349465

`A059838(2*n)`
-/

namespace A151816.P18011206201315349465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059838 (2 * n)

end

end A151816.P18011206201315349465

namespace A151816

/-- `A059838(2*n)` -/
def P18011206201315349465.Spec : Prop :=
  ∀ n, P18011206201315349465.a n = A151816 n

end A151816

/-! ## A151816.P11375087991310703271

`A087137(2*n)`
-/

namespace A151816.P11375087991310703271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087137 (2 * n)

end

end A151816.P11375087991310703271

namespace A151816

/-- `A087137(2*n)` -/
def P11375087991310703271.Spec : Prop :=
  ∀ n, P11375087991310703271.a n = A151816 n

end A151816

/-! ## A151816.P11974537598033314559

`A000142(2*n)-A001818(n)`
-/

namespace A151816.P11974537598033314559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (2 * n) - A001818 n

end

end A151816.P11974537598033314559

namespace A151816

/-- `A000142(2*n)-A001818(n)` -/
def P11974537598033314559.Spec : Prop :=
  ∀ n, P11974537598033314559.a n = A151816 n

end A151816

/-!
# A151817: a(n) = 2*(2*n)!/n!.

The programs for A151817, the canonical program `A151817.P141060599877187754` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151817 has offset 0).

The definition of A151817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151817.P141060599877187754

`2*(2*n-1)*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A151817

/-- `2*(2*n-1)*a(n-1)` -/
def P141060599877187754.Spec : Prop :=
  ∀ n, P141060599877187754.a n = A151817 n

theorem P141060599877187754.correct : P141060599877187754.Spec := by
  intro n
  simp only [A151817]

end A151817

/-! ## A151817.P17561424534483954660

`2*A001813(n)`
-/

namespace A151817.P17561424534483954660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001813 n

end

end A151817.P17561424534483954660

namespace A151817

/-- `2*A001813(n)` -/
def P17561424534483954660.Spec : Prop :=
  ∀ n, P17561424534483954660.a n = A151817 n

end A151817

/-! ## A151817.P3030037654848569146

`2*(2*n)!/n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A151817.P3030037654848569146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial (2 * n) : ℚ) / (Nat.factorial n : ℚ)

end

end A151817.P3030037654848569146

namespace A151817

/-- `2*(2*n)!/n!` -/
def P3030037654848569146.Spec : Prop :=
  ∀ n, P3030037654848569146.a n = (A151817 n : ℚ)

end A151817

/-! ## A151817.P12162969949238362557

`∏[abs(2-4*n)]`
-/

namespace A151817.P12162969949238362557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (4 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A151817.P12162969949238362557

namespace A151817

/-- `∏[abs(2-4*n)]` -/
def P12162969949238362557.Spec : Prop :=
  ∀ n, P12162969949238362557.a n = A151817 n

end A151817

/-! ## A151817.P17695142284711497060

`lcm(2, ∏[2-4*n])`
-/

namespace A151817.P17695142284711497060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (4 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A151817.P17695142284711497060

namespace A151817

/-- `lcm(2, ∏[2-4*n])` -/
def P17695142284711497060.Spec : Prop :=
  ∀ n, (P17695142284711497060.a n : ℤ) = A151817 n

end A151817

/-! ## A151817.P8070814823736418861

`abs(∏[xor(2, -4*n)])`
-/

namespace A151817.P8070814823736418861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (-(4 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A151817.P8070814823736418861

namespace A151817

/-- `abs(∏[xor(2, -4*n)])` -/
def P8070814823736418861.Spec : Prop :=
  ∀ n, P8070814823736418861.a n = A151817 n

end A151817

/-! ## A151817.P10468065436826583164

`-∏[or(2, 4*(n-1))]`
-/

namespace A151817.P10468065436826583164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (4 * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A151817.P10468065436826583164

namespace A151817

/-- `-∏[or(2, 4*(n-1))]` -/
def P10468065436826583164.Spec : Prop :=
  ∀ n, P10468065436826583164.a n = A151817 n

end A151817

/-! ## A151817.P5854199729718394094

`-∏[xor(2, 4*(n-1))]`
-/

namespace A151817.P5854199729718394094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (4 * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A151817.P5854199729718394094

namespace A151817

/-- `-∏[xor(2, 4*(n-1))]` -/
def P5854199729718394094.Spec : Prop :=
  ∀ n, P5854199729718394094.a n = A151817 n

end A151817

/-! ## A151817.P13250980637623909068

`abs(∏[a(n-1)-4])` with `a(0)=2`
-/

namespace A151817.P13250980637623909068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A151817.P13250980637623909068

namespace A151817

/-- `abs(∏[a(n-1)-4])` -/
def P13250980637623909068.Spec : Prop :=
  ∀ n, P13250980637623909068.a n = A151817 n

end A151817

/-! ## A151817.P560296029816885877

`2*C(2*n, n)*n!`
-/

namespace A151817.P560296029816885877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * n) n * Nat.factorial n

end

end A151817.P560296029816885877

namespace A151817

/-- `2*C(2*n, n)*n!` -/
def P560296029816885877.Spec : Prop :=
  ∀ n, (P560296029816885877.a n : ℤ) = A151817 n

end A151817

/-!
# A151818: Weight distribution of [127,64,21] primitive binary BCH code.

The programs for A151818, there is no canonical definition to state claims against.
-/

/-! ## A151818.P3212779571714248388

`A000122(A239903(2*n))*A239895(n+1)`
-/

namespace A151818.P3212779571714248388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A239903 (2 * n)).toNat * A239895 (n + 1)

end

end A151818.P3212779571714248388

/-!
# A151820: a(n) = A162391(n)^2.

The programs for A151820, there is no canonical definition to state claims against.
-/

/-! ## A151820.P12679028784951734664

`A162391(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A151820.P12679028784951734664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162391 (n + 1) ^ 2

end

end A151820.P12679028784951734664

/-! ## A151820.P11592828252322277652

`A162391(n+1)^A226083(C(n, ∑[n])+1)`
-/

namespace A151820.P11592828252322277652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162391 (n + 1) : ℚ) ^ (A226083 (Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j) + 1) : ℤ)

end

end A151820.P11592828252322277652

/-! ## A151820.P15628058195719766284

`A162391(n+1)^A201384(C(11, C(2, n+2)))`
-/

namespace A151820.P15628058195719766284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162391 (n + 1) : ℚ) ^ (A201384 (Nat.choose 11 (Nat.choose 2 (n + 2))) : ℤ)

end

end A151820.P15628058195719766284

/-! ## A151820.P5197070716934034287

`A162391(n+1)^A007918(Δ[A004525(n)])`
-/

namespace A151820.P5197070716934034287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162391 (n + 1) : ℚ) ^ (A007918 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A151820.P5197070716934034287

/-! ## A151820.P838661831312838709

`A162391(n+1)^(A007423(A007918(n))+2)`
-/

namespace A151820.P838661831312838709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162391 (n + 1) : ℚ) ^ (A007423 (A007918 n).toNat + 2 : ℤ)

end

end A151820.P838661831312838709

/-! ## A151820.P2247284879244803454

`A162391(n+1)^A000005(A162338(n+1))`
-/

namespace A151820.P2247284879244803454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162391 (n + 1) : ℚ) ^ (A000005 (A162338 (n + 1)).toNat : ℤ)

end

end A151820.P2247284879244803454

/-! ## A151820.P14582839600130071588

`A162391(n+1)^A000005(A162358(n+1))`
-/

namespace A151820.P14582839600130071588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162391 (n + 1) : ℚ) ^ (A000005 (A162358 (n + 1)).toNat : ℤ)

end

end A151820.P14582839600130071588

/-!
# A151821: Powers of 2, omitting 2 itself.

The programs for A151821, the canonical program `A151821.P3447003275305928826` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151821 has offset 1).

The definition of A151821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151821.P6425832466505603123

`ogf((1+2x)/(1-2x))`
-/

namespace A151821.P6425832466505603123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -2] n

end

end A151821.P6425832466505603123

namespace A151821

/-- `ogf((1+2x)/(1-2x))` -/
def P6425832466505603123.Spec : Prop :=
  ∀ n, P6425832466505603123.a n = A151821 (n + 1)

end A151821

/-! ## A151821.P3447003275305928826

`record[and(-3, 2^n)]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A151821

/-- `record[and(-3, 2^n)]` -/
def P3447003275305928826.Spec : Prop :=
  ∀ n, P3447003275305928826.a n = A151821 (n + 1)

theorem P3447003275305928826.correct : P3447003275305928826.Spec := by
  intro n
  simp only [A151821, Nat.add_sub_cancel]

end A151821

/-! ## A151821.P5408791025086221827

`∑[char[1]+2^n]`
-/

namespace A151821.P5408791025086221827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151821.P5408791025086221827

namespace A151821

/-- `∑[char[1]+2^n]` -/
def P5408791025086221827.Spec : Prop :=
  ∀ n, (P5408791025086221827.a n : ℤ) = A151821 (n + 1)

end A151821

/-! ## A151821.P2032801844218899912

`2^ceil(n/tanh(4))`
-/

namespace A151821.P2032801844218899912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℝ) / Real.tanh (4 : ℝ)⌉ : ℤ)

end

end A151821.P2032801844218899912

namespace A151821

/-- `2^ceil(n/tanh(4))` -/
def P2032801844218899912.Spec : Prop :=
  ∀ n, P2032801844218899912.a n = (A151821 (n + 1) : ℚ)

end A151821

/-! ## A151821.P10252037758425699988

`2*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A151821.P10252037758425699988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * a (n - 1)

end

end A151821.P10252037758425699988

namespace A151821

/-- `2*a(n-1)` -/
def P10252037758425699988.Spec : Prop :=
  ∀ n, (P10252037758425699988.a n : ℤ) = A151821 (n + 1)

end A151821

/-! ## A151821.P13520443540622670023

`record[or(2, 2^n)-2]`
-/

namespace A151821.P13520443540622670023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (2 ^ n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151821.P13520443540622670023

namespace A151821

/-- `record[or(2, 2^n)-2]` -/
def P13520443540622670023.Spec : Prop :=
  ∀ n, P13520443540622670023.a n = A151821 (n + 1)

end A151821

/-! ## A151821.P11531427295360451642

`record[xor(2, 2^n)-2]`
-/

namespace A151821.P11531427295360451642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (2 ^ n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151821.P11531427295360451642

namespace A151821

/-- `record[xor(2, 2^n)-2]` -/
def P11531427295360451642.Spec : Prop :=
  ∀ n, P11531427295360451642.a n = A151821 (n + 1)

end A151821

/-! ## A151821.P14832028035900028543

`xor(2, record[xor(2, 2^n)])`
-/

namespace A151821.P14832028035900028543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A151821.P14832028035900028543

namespace A151821

/-- `xor(2, record[xor(2, 2^n)])` -/
def P14832028035900028543.Spec : Prop :=
  ∀ n, (P14832028035900028543.a n : ℤ) = A151821 (n + 1)

end A151821

/-! ## A151821.P9186681753469334911

`record[(2%(n+1))^n]`
-/

namespace A151821.P9186681753469334911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 % (n + 1)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151821.P9186681753469334911

namespace A151821

/-- `record[(2%(n+1))^n]` -/
def P9186681753469334911.Spec : Prop :=
  ∀ n, (P9186681753469334911.a n : ℤ) = A151821 (n + 1)

end A151821

/-! ## A151821.P16091399302091033810

`2^ceil(sin(n)²+n)`
-/

namespace A151821.P16091399302091033810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2 + (n : ℝ)⌉ : ℤ)

end

end A151821.P16091399302091033810

namespace A151821

/-- `2^ceil(sin(n)²+n)` -/
def P16091399302091033810.Spec : Prop :=
  ∀ n, P16091399302091033810.a n = (A151821 (n + 1) : ℚ)

end A151821

/-! ## A151821.P6340924729702650216

`2^round(atan(atan(n))+n)`
-/

namespace A151821.P6340924729702650216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway (Real.arctan (Real.arctan (n : ℝ)) + (n : ℝ)) : ℤ)

end

end A151821.P6340924729702650216

namespace A151821

/-- `2^round(atan(atan(n))+n)` -/
def P6340924729702650216.Spec : Prop :=
  ∀ n, P6340924729702650216.a n = (A151821 (n + 1) : ℚ)

end A151821

/-! ## A151821.P2862601994646215524

`gcd(6, 2^n)^(n+1)`
-/

namespace A151821.P2862601994646215524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 (2 ^ n) ^ (n + 1)

end

end A151821.P2862601994646215524

namespace A151821

/-- `gcd(6, 2^n)^(n+1)` -/
def P2862601994646215524.Spec : Prop :=
  ∀ n, (P2862601994646215524.a n : ℤ) = A151821 (n + 1)

end A151821

/-! ## A151821.P16738275458270203639

`2^((n+1)%Δ[n²])`
-/

namespace A151821.P16738275458270203639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod (n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ)

end

end A151821.P16738275458270203639

namespace A151821

/-- `2^((n+1)%Δ[n²])` -/
def P16738275458270203639.Spec : Prop :=
  ∀ n, P16738275458270203639.a n = (A151821 (n + 1) : ℚ)

end A151821

/-! ## A151821.P2045969028683180396

`record[(2-C(3, n²))^n]`
-/

namespace A151821.P2045969028683180396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.choose 3 (n ^ 2) : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151821.P2045969028683180396

namespace A151821

/-- `record[(2-C(3, n²))^n]` -/
def P2045969028683180396.Spec : Prop :=
  ∀ n, P2045969028683180396.a n = A151821 (n + 1)

end A151821

/-! ## A151821.P4927358587805589246

`2^floor(atan(n+1)+n)`
-/

namespace A151821.P4927358587805589246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ) + (n : ℝ)⌋ : ℤ)

end

end A151821.P4927358587805589246

namespace A151821

/-- `2^floor(atan(n+1)+n)` -/
def P4927358587805589246.Spec : Prop :=
  ∀ n, P4927358587805589246.a n = (A151821 (n + 1) : ℚ)

end A151821

/-! ## A151821.P15306427590439188816

`ceil(atan(n+1))^(n+1)`
-/

namespace A151821.P15306427590439188816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ)⌉ ^ (n + 1)

end

end A151821.P15306427590439188816

namespace A151821

/-- `ceil(atan(n+1))^(n+1)` -/
def P15306427590439188816.Spec : Prop :=
  ∀ n, P15306427590439188816.a n = A151821 (n + 1)

end A151821

/-! ## A151821.P10756694317298746938

`2^(n+1-floor(acot(n)))`
-/

namespace A151821.P10756694317298746938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 1 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋ : ℤ)

end

end A151821.P10756694317298746938

namespace A151821

/-- `2^(n+1-floor(acot(n)))` -/
def P10756694317298746938.Spec : Prop :=
  ∀ n, P10756694317298746938.a n = (A151821 (n + 1) : ℚ)

end A151821

/-! ## A151821.P3176039895379583042

`2^ceil(n+1-acot(n))`
-/

namespace A151821.P3176039895379583042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n + 1 : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A151821.P3176039895379583042

namespace A151821

/-- `2^ceil(n+1-acot(n))` -/
def P3176039895379583042.Spec : Prop :=
  ∀ n, P3176039895379583042.a n = (A151821 (n + 1) : ℚ)

end A151821

/-! ## A151821.P3241255380329589505

`2^(n+1)/ceil(acot(n))`
-/

namespace A151821.P3241255380329589505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A151821.P3241255380329589505

namespace A151821

/-- `2^(n+1)/ceil(acot(n))` -/
def P3241255380329589505.Spec : Prop :=
  ∀ n, P3241255380329589505.a n = (A151821 (n + 1) : ℚ)

end A151821

/-! ## A151821.P822157711118624562

`floor(∑[acot(n²)])^(n+1)`
-/

namespace A151821.P822157711118624562
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ ^ (n + 1)

end

end A151821.P822157711118624562

namespace A151821

/-- `floor(∑[acot(n²)])^(n+1)` -/
def P822157711118624562.Spec : Prop :=
  ∀ n, P822157711118624562.a n = A151821 (n + 1)

end A151821

/-!
# A151823: Number of nonequivalent monoids of order n with more than one invertible element.

The programs for A151823, there is no canonical definition to state claims against.
-/

/-! ## A151823.P8834381650871315856

`A058133(n+1)-A001423(n)`
-/

namespace A151823.P8834381650871315856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058133 (n + 1) - A001423 n

end

end A151823.P8834381650871315856

/-! ## A151823.P9538664960430340280

`record[A058133(A133310(n))]-A001423(n)`
-/

namespace A151823.P9538664960430340280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058133 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A001423 n

end

end A151823.P9538664960430340280

/-! ## A151823.P18165272881678387566

`A058133(n+1)-A014682(A029851(n)+A027851(n))`
-/

namespace A151823.P18165272881678387566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058133 (n + 1) - A014682 (A029851 n + A027851 n).toNat

end

end A151823.P18165272881678387566

/-!
# A151824: Triangle read by rows: peak-to-average-power ratios of vectors of length n under local complementation.

The programs for A151824, there is no canonical definition to state claims against.
-/

/-! ## A151824.P11613292516185018036

`A274036(A034374(n+1)^A238794(n))`
-/

namespace A151824.P11613292516185018036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 (SequenceMachineLib.roundAway ((A034374 (n + 1) : ℚ) ^ (A238794 n : ℤ))).toNat

end

end A151824.P11613292516185018036

/-! ## A151824.P8186538202470698457

`A110654(A034374(n+1)^A145140(n+1))`
-/

namespace A151824.P8186538202470698457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.roundAway ((A034374 (n + 1) : ℚ) ^ (A145140 (n + 1) : ℤ))).toNat

end

end A151824.P8186538202470698457

/-! ## A151824.P1735083355976915899

`A124550(A343960(n+1))%7`
-/

namespace A151824.P1735083355976915899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124550 (A343960 (n + 1)).toNat) 7

end

end A151824.P1735083355976915899

/-! ## A151824.P18188939728311309400

`A373953(A266886(n+1)%A299158(n+2))`
-/

namespace A151824.P18188939728311309400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (Int.tmod (A266886 (n + 1)) (A299158 (n + 2))).toNat

end

end A151824.P18188939728311309400

/-! ## A151824.P5127624353384258061

`ceil((A266904(n+1)%A000005(A299158(n+1)))^γ)`
-/

namespace A151824.P5127624353384258061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (A266904 (n + 1)) (A000005 (A299158 (n + 1)).toNat) : ℝ) ^ Real.eulerMascheroniConstant⌉

end

end A151824.P5127624353384258061

/-!
# A151827: Number of indecomposable self-dual additive codes of length n over GF(4) with minimal distance 4.

The programs for A151827, there is no canonical definition to state claims against.
-/

/-! ## A151827.P7873335874602576184

`A025437(A029889(n)+8)`
-/

namespace A151827.P7873335874602576184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (A029889 n + 8).toNat

end

end A151827.P7873335874602576184

/-! ## A151827.P8847365519298185767

`A257684(or(n, A002816(n+1)))`
-/

namespace A151827.P8847365519298185767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (Int.lor (n : ℤ) (A002816 (n + 1))).toNat

end

end A151827.P8847365519298185767

/-! ## A151827.P17218760250827661584

`C(A177739(n+2), A357622((n+1)²))`
-/

namespace A151827.P17218760250827661584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A177739 (n + 2)).toNat (A357622 ((n + 1) ^ 2)).toNat

end

end A151827.P17218760250827661584

/-! ## A151827.P8232481849492686483

`C(A325831(n), A007376(A215076(n)))`
-/

namespace A151827.P8232481849492686483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325831 n).toNat (A007376 (A215076 n).toNat).toNat

end

end A151827.P8232481849492686483

/-! ## A151827.P400995159946075824

`A334044(A334055(n+1)+A325258(n))`
-/

namespace A151827.P400995159946075824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334044 (A334055 (n + 1) + A325258 n).toNat

end

end A151827.P400995159946075824

/-!
# A151828: Number of hv-convex sets from class S having semiperimeter n of the bounding rectangle.

The programs for A151828, there is no canonical definition to state claims against.
-/

/-! ## A151828.P14125644139840645973

`A150845(A001096(n))`
-/

namespace A151828.P14125644139840645973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150845 (A001096 n).toNat

end

end A151828.P14125644139840645973

/-! ## A151828.P12931605748858712650

`filter[A150845(n), A011748(#)]`
-/

namespace A151828.P12931605748858712650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011748 (f1 j).toNat = 1) n)

end

end A151828.P12931605748858712650

/-!
# A151829: Number of hv-convex sets from class S' having semiperimeter n of the bounding rectangle.

The programs for A151829, there is no canonical definition to state claims against.
-/

/-! ## A151829.P17306826617850115232

`A095775(A150252(n))`
-/

namespace A151829.P17306826617850115232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095775 (A150252 n).toNat

end

end A151829.P17306826617850115232

/-! ## A151829.P17026404687521245360

`Δ[A053645(A026671(n))]`
-/

namespace A151829.P17026404687521245360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A026671 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151829.P17026404687521245360

/-!
# A151830: Number of fixed 4-dimensional polycubes with n cells.

The programs for A151830, there is no canonical definition to state claims against.
-/

/-! ## A151830.P15063909291262388541

`A048665(n+1)/(n+1)`
-/

namespace A151830.P15063909291262388541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048665 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A151830.P15063909291262388541

/-! ## A151830.P6384765113323506860

`ceil(A048665(A005555(n))/A005555(n))`
-/

namespace A151830.P6384765113323506860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048665 (A005555 n).toNat : ℚ) / (A005555 n : ℚ)⌉

end

end A151830.P6384765113323506860

/-! ## A151830.P4033687934269985223

`A048665(A005555(n))/A005555(n)*A016760(n)%2`
-/

namespace A151830.P4033687934269985223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048665 (A005555 n).toNat : ℚ) / (A005555 n : ℚ) * (Int.tmod (A016760 n) 2 : ℚ)

end

end A151830.P4033687934269985223

/-! ## A151830.P11039698458036351386

`(A048665(A005555(n))/A005555(n))%A016941(2*n)`
-/

namespace A151830.P11039698458036351386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A048665 (A005555 n).toNat : ℚ) / (A005555 n : ℚ))) (A016941 (2 * n))

end

end A151830.P11039698458036351386

/-! ## A151830.P2998623336885326180

`A048665(A005555(n))/A005555(n)*A022156(n)%2`
-/

namespace A151830.P2998623336885326180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048665 (A005555 n).toNat : ℚ) / (A005555 n : ℚ) * (Int.tmod (A022156 n) 2 : ℚ)

end

end A151830.P2998623336885326180

/-!
# A151831: Number of fixed 5-dimensional polycubes with n cells.

The programs for A151831, there is no canonical definition to state claims against.
-/

/-! ## A151831.P6445235157789007414

`A048666(n+1)/(n+1)`
-/

namespace A151831.P6445235157789007414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048666 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A151831.P6445235157789007414

/-! ## A151831.P17535826109014755708

`floor(A048666(A005555(n))/A005555(n))`
-/

namespace A151831.P17535826109014755708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048666 (A005555 n).toNat : ℚ) / (A005555 n : ℚ)⌋

end

end A151831.P17535826109014755708

/-! ## A151831.P13387359857286486604

`floor(A048666(A291769(n))/A291769(n))`
-/

namespace A151831.P13387359857286486604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048666 (A291769 n).toNat : ℚ) / (A291769 n : ℚ)⌋

end

end A151831.P13387359857286486604

/-! ## A151831.P12030954006120247841

`record[A048666(A065033(n))/A008619(n)]`
-/

namespace A151831.P12030954006120247841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048666 (A065033 n).toNat : ℚ) / (A008619 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151831.P12030954006120247841

/-! ## A151831.P17348423389779606739

`round(A048666(A291769(n))/A000005(2^n))`
-/

namespace A151831.P17348423389779606739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A048666 (A291769 n).toNat : ℚ) / (A000005 (2 ^ n) : ℚ))

end

end A151831.P17348423389779606739

/-!
# A151832: Number of fixed 6-dimensional polycubes with n cells.

The programs for A151832, there is no canonical definition to state claims against.
-/

/-! ## A151832.P4298261074010141147

`A048667(n+1)/(n+1)`
-/

namespace A151832.P4298261074010141147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048667 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A151832.P4298261074010141147

/-! ## A151832.P17205776908123149747

`ceil(A048667(A005555(n))/A005555(n))`
-/

namespace A151832.P17205776908123149747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048667 (A005555 n).toNat : ℚ) / (A005555 n : ℚ)⌉

end

end A151832.P17205776908123149747

/-! ## A151832.P14060931330098901664

`record[A048667(A065033(n))/A008619(n)]`
-/

namespace A151832.P14060931330098901664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048667 (A065033 n).toNat : ℚ) / (A008619 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151832.P14060931330098901664

/-! ## A151832.P515171491997741635

`A048667(A005555(n))/A005555(n)-A055967(n)`
-/

namespace A151832.P515171491997741635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048667 (A005555 n).toNat : ℚ) / (A005555 n : ℚ) - (A055967 n : ℚ)

end

end A151832.P515171491997741635

/-! ## A151832.P16752135238550955316

`A048667(A005555(n))/A005555(n)*A007318(((-1)^n)²)`
-/

namespace A151832.P16752135238550955316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048667 (A005555 n).toNat : ℚ) / (A005555 n : ℚ) * (A007318 (((-1) ^ n) ^ 2).toNat : ℚ)

end

end A151832.P16752135238550955316

/-!
# A151833: Number of fixed 7-dimensional polycubes with n cells.

The programs for A151833, there is no canonical definition to state claims against.
-/

/-! ## A151833.P13601970187186964370

`A048668(n+1)/(n+1)`
-/

namespace A151833.P13601970187186964370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048668 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A151833.P13601970187186964370

/-! ## A151833.P10026953405031306674

`ceil(A048668(A005555(n))/A005555(n))`
-/

namespace A151833.P10026953405031306674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048668 (A005555 n).toNat : ℚ) / (A005555 n : ℚ)⌉

end

end A151833.P10026953405031306674

/-! ## A151833.P8594322660679434798

`ceil(A048668(A291769(n))/A291769(n))`
-/

namespace A151833.P8594322660679434798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048668 (A291769 n).toNat : ℚ) / (A291769 n : ℚ)⌉

end

end A151833.P8594322660679434798

/-! ## A151833.P12431051189296651227

`record[A048668(A065033(n))/A008619(n)]`
-/

namespace A151833.P12431051189296651227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048668 (A065033 n).toNat : ℚ) / (A008619 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151833.P12431051189296651227

/-! ## A151833.P7828030705222861423

`A048668(A291769(n))/A291769(n)*A033999(n)²`
-/

namespace A151833.P7828030705222861423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048668 (A291769 n).toNat : ℚ) / (A291769 n : ℚ) * (A033999 n ^ 2 : ℚ)

end

end A151833.P7828030705222861423

/-!
# A151834: Number of fixed 8-dimensional polycubes with n cells.

The programs for A151834, there is no canonical definition to state claims against.
-/

/-! ## A151834.P8844396856544099404

`A094101(n+1)/(n+1)`
-/

namespace A151834.P8844396856544099404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094101 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A151834.P8844396856544099404

/-! ## A151834.P2502142144756046455

`ceil(A094101(A005555(n))/A005555(n))`
-/

namespace A151834.P2502142144756046455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094101 (A005555 n).toNat : ℚ) / (A005555 n : ℚ)⌉

end

end A151834.P2502142144756046455

/-! ## A151834.P8664053302220930934

`ceil(A094101(A291769(n))/A291769(n))`
-/

namespace A151834.P8664053302220930934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094101 (A291769 n).toNat : ℚ) / (A291769 n : ℚ)⌉

end

end A151834.P8664053302220930934

/-! ## A151834.P9403037994124309076

`ceil(A094101(A348553(n))/A348553(n))`
-/

namespace A151834.P9403037994124309076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094101 (A348553 n).toNat : ℚ) / (A348553 n : ℚ)⌉

end

end A151834.P9403037994124309076

/-! ## A151834.P7449852954204694772

`round(A094101(A291769(n))/A348553(n))`
-/

namespace A151834.P7449852954204694772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A094101 (A291769 n).toNat : ℚ) / (A348553 n : ℚ))

end

end A151834.P7449852954204694772

/-!
# A151836: First differences of A147552.

The programs for A151836, there is no canonical definition to state claims against.
-/

/-! ## A151836.P12532534612183573016

`Δ[A147552(n)]`
-/

namespace A151836.P12532534612183573016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151836.P12532534612183573016

/-! ## A151836.P4370368146599525128

`A147552(n+1)-A147552(n)`
-/

namespace A151836.P4370368146599525128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147552 (n + 1) - A147552 n

end

end A151836.P4370368146599525128

/-! ## A151836.P9119401838016694510

`A004773(Δ[A160715(n)]%A035525(n+1))`
-/

namespace A151836.P9119401838016694510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (Int.tmod (f1 (n + 1) - f1 n) (A035525 (n + 1))).toNat

end

end A151836.P9119401838016694510

/-! ## A151836.P9470059170674010929

`A329839(Δ[A160715(n)])%A035525(n+1)`
-/

namespace A151836.P9470059170674010929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329839 (f1 (n + 1) - f1 n).toNat) (A035525 (n + 1))

end

end A151836.P9470059170674010929

/-! ## A151836.P10665447736169039053

`A004773(A151710(n+1)%A035525(n+1))`
-/

namespace A151836.P10665447736169039053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (Int.tmod (A151710 (n + 1)) (A035525 (n + 1))).toNat

end

end A151836.P10665447736169039053

/-!
# A151837: a(n) = A151836(n)/4.

The programs for A151837, there is no canonical definition to state claims against.
-/

/-! ## A151837.P11233812259714769131

`A151836(n+2)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A151837.P11233812259714769131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151836 (n + 2) : ℚ) / 4

end

end A151837.P11233812259714769131

/-! ## A151837.P15587691270630249602

`Δ[A147552(n+1)/4]`
-/

namespace A151837.P15587691270630249602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147552 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151837.P15587691270630249602

/-! ## A151837.P6210369431491182682

`A000265(Δ[A147552(n+1)])`
-/

namespace A151837.P6210369431491182682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (n + 1) - f1 n).toNat

end

end A151837.P6210369431491182682

/-! ## A151837.P8815335989550663917

`A002265(Δ[A147552(n+1)])`
-/

namespace A151837.P8815335989550663917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A151837.P8815335989550663917

/-! ## A151837.P12398933952772545341

`A054576(Δ[A147552(n+1)])`
-/

namespace A151837.P12398933952772545341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (f1 (n + 1) - f1 n).toNat

end

end A151837.P12398933952772545341

/-! ## A151837.P710417281761649488

`A110655(Δ[A147552(n+1)])`
-/

namespace A151837.P710417281761649488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (f1 (n + 1) - f1 n).toNat

end

end A151837.P710417281761649488

/-! ## A151837.P1758786542927464645

`A290983(Δ[A147552(n+1)])`
-/

namespace A151837.P1758786542927464645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290983 (f1 (n + 1) - f1 n).toNat

end

end A151837.P1758786542927464645

/-! ## A151837.P13330114320334967320

`A000265(A151836(n+2))`
-/

namespace A151837.P13330114320334967320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A151836 (n + 2)).toNat

end

end A151837.P13330114320334967320

/-!
# A151838: Weight distribution of [127,71,19] primitive binary BCH code.

The programs for A151838, there is no canonical definition to state claims against.
-/

/-! ## A151838.P3735337791963800731

`A326302(A134975(n))`
-/

namespace A151838.P3735337791963800731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326302 (A134975 n).toNat

end

end A151838.P3735337791963800731

/-! ## A151838.P8260243768702859859

`A008578(A084950(n))*A134975(n)`
-/

namespace A151838.P8260243768702859859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A084950 n).toNat * A134975 n

end

end A151838.P8260243768702859859

/-! ## A151838.P1925455650214114767

`A004177(A134975(n))*A099627(n)`
-/

namespace A151838.P1925455650214114767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 (A134975 n).toNat * A099627 n

end

end A151838.P1925455650214114767

/-!
# A151839: Weight distribution of [127,78,15] primitive binary BCH code.

The programs for A151839, there is no canonical definition to state claims against.
-/

/-! ## A151839.P12447175184233927037

`A151876(or(a(n-1), A001462(n+1)))` with `a(0)=1`
-/

namespace A151839.P12447175184233927037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151876 (Int.lor (a (n - 1)) (A001462 (n + 1))).toNat

end

end A151839.P12447175184233927037

/-! ## A151839.P1218077517651588742

`A151876(or(a(n-1)+1, A008611(n)))` with `a(0)=1`
-/

namespace A151839.P1218077517651588742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151876 (Int.lor (a (n - 1) + 1) (A008611 n)).toNat

end

end A151839.P1218077517651588742

/-! ## A151839.P425919241531143973

`A151876(xor(a(n-1), A001462(n+1)))` with `a(0)=1`
-/

namespace A151839.P425919241531143973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151876 (Int.xor (a (n - 1)) (A001462 (n + 1))).toNat

end

end A151839.P425919241531143973

/-! ## A151839.P1764479862378071281

`A151876(or(a(n-1), A003057(n+2)))` with `a(0)=1`
-/

namespace A151839.P1764479862378071281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151876 (Int.lor (a (n - 1)) (A003057 (n + 2))).toNat

end

end A151839.P1764479862378071281

/-! ## A151839.P16391687120729554882

`A151876(A001462(n+1)%A273300(n))`
-/

namespace A151839.P16391687120729554882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151876 (Int.tmod (A001462 (n + 1)) (A273300 n)).toNat

end

end A151839.P16391687120729554882

/-!
# A151840: Weight distribution of [127,85,13] primitive binary BCH code.

The programs for A151840, there is no canonical definition to state claims against.
-/

/-! ## A151840.P9068865320538004675

`A015868(n)*A298024(A274230(n))`
-/

namespace A151840.P9068865320538004675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015868 n * A298024 (A274230 n).toNat

end

end A151840.P9068865320538004675

/-! ## A151840.P17311416654251716738

`A000041(3*n+1)*A037011(A182818(n))`
-/

namespace A151840.P17311416654251716738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (3 * n + 1) * A037011 (A182818 n).toNat

end

end A151840.P17311416654251716738

/-! ## A151840.P12470026317172767101

`A114099(A296468(n+1)*A303637(n+5))`
-/

namespace A151840.P12470026317172767101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (A296468 (n + 1) * A303637 (n + 5)).toNat

end

end A151840.P12470026317172767101

/-! ## A151840.P13415177421860560310

`C(A000041(A239259(n)), A000065(3*n+1))`
-/

namespace A151840.P13415177421860560310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000041 (A239259 n).toNat).toNat (A000065 (3 * n + 1)).toNat

end

end A151840.P13415177421860560310

/-! ## A151840.P12171507860266490457

`C(A119620(A238531(n)), A000065(3*n+1))`
-/

namespace A151840.P12171507860266490457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119620 (A238531 n).toNat).toNat (A000065 (3 * n + 1)).toNat

end

end A151840.P12171507860266490457

/-!
# A151841: Weight distribution of [127,92,11] primitive binary BCH code.

The programs for A151841, there is no canonical definition to state claims against.
-/

/-! ## A151841.P738463443354245105

`A111332(lt[lcm(4, n+1)/4, 7])`
-/

namespace A151841.P738463443354245105
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) : ℚ) / 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A151841.P738463443354245105

/-! ## A151841.P10273074767834378560

`A111332(or(1, lcm(n, 1-a(n-1))+n))` with `a(0)=1`
-/

namespace A151841.P10273074767834378560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A111332 (Nat.lor 1 (Int.lcm (n : ℤ) (1 - a (n - 1)) + n))

end

end A151841.P10273074767834378560

/-! ## A151841.P3115516509214057716

`A111332(gcd(2^n-1, ∑[floor(3^(n-1))]))`
-/

namespace A151841.P3115516509214057716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 (Int.gcd ((2 ^ n : ℤ) - 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A151841.P3115516509214057716

/-! ## A151841.P11482842260578316414

`A111332(comp[2*(n+1)]+Δ[xor(1, n²)]%(2*n+1))`
-/

namespace A151841.P11482842260578316414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) (2 * n + 1 : ℤ)).toNat

end

end A151841.P11482842260578316414

/-! ## A151841.P16121486933283777687

`A111332(A095204(n))`
-/

namespace A151841.P16121486933283777687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 (A095204 n).toNat

end

end A151841.P16121486933283777687

/-!
# A151842: a(3n) = n, a(3n+1) = 2n+1, a(3n+2) = n+1.

The programs for A151842, the canonical program `A151842.P12760278176805969722` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151842 has offset 0).

The definition of A151842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151842.P12760278176805969722

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=3, a(5)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A151842

/-- `2*a(n-3)-a(n-6)` -/
def P12760278176805969722.Spec : Prop :=
  ∀ n, P12760278176805969722.a n = A151842 n

theorem P12760278176805969722.correct : P12760278176805969722.Spec := by
  intro n
  simp only [A151842]

end A151842

/-! ## A151842.P8769734959168840621

`A008133(n+2)-A008133(n)`
-/

namespace A151842.P8769734959168840621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (n + 2) - A008133 n

end

end A151842.P8769734959168840621

namespace A151842

/-- `A008133(n+2)-A008133(n)` -/
def P8769734959168840621.Spec : Prop :=
  ∀ n, P8769734959168840621.a n = A151842 n

end A151842

/-! ## A151842.P13918770441909413431

`lcm(2, ceil(2*n/3))/2`
-/

namespace A151842.P13918770441909413431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ⌈2 * ((n : ℚ) / 3)⌉ : ℚ) / 2

end

end A151842.P13918770441909413431

namespace A151842

/-- `lcm(2, ceil(2*n/3))/2` -/
def P13918770441909413431.Spec : Prop :=
  ∀ n, P13918770441909413431.a n = (A151842 n : ℚ)

end A151842

/-! ## A151842.P10039639898197966067

`ceil(n/3*C(2, n%3))`
-/

namespace A151842.P10039639898197966067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3 * (Nat.choose 2 (n % 3) : ℚ)⌉

end

end A151842.P10039639898197966067

namespace A151842

/-- `ceil(n/3*C(2, n%3))` -/
def P10039639898197966067.Spec : Prop :=
  ∀ n, P10039639898197966067.a n = A151842 n

end A151842

/-! ## A151842.P6374170242677597315

`ceil(n/3*((n+1)%3)!)`
-/

namespace A151842.P6374170242677597315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3 * (Nat.factorial ((n + 1) % 3) : ℚ)⌉

end

end A151842.P6374170242677597315

namespace A151842

/-- `ceil(n/3*((n+1)%3)!)` -/
def P6374170242677597315.Spec : Prop :=
  ∀ n, P6374170242677597315.a n = A151842 n

end A151842

/-! ## A151842.P10647593094948597526

`round(n/3*(∑[n]+1)%3)`
-/

namespace A151842.P10647593094948597526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 3 * (((∑ j ∈ Finset.range (n + 1), f1 j + 1) % 3 : ℕ) : ℚ))

end

end A151842.P10647593094948597526

namespace A151842

/-- `round(n/3*(∑[n]+1)%3)` -/
def P10647593094948597526.Spec : Prop :=
  ∀ n, P10647593094948597526.a n = A151842 n

end A151842

/-! ## A151842.P912134328526526325

`round(n/3*2^(∑[n]%3))`
-/

namespace A151842.P912134328526526325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 3 * (2 ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % 3) : ℚ))

end

end A151842.P912134328526526325

namespace A151842

/-- `round(n/3*2^(∑[n]%3))` -/
def P912134328526526325.Spec : Prop :=
  ∀ n, P912134328526526325.a n = A151842 n

end A151842

/-! ## A151842.P593505445077462117

`∑[∑[Δ[floor((5*n+3)/3)]+n]]%(n+1)`
-/

namespace A151842.P593505445077462117
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 * n + 3 : ℚ) / 3⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A151842.P593505445077462117

namespace A151842

/-- `∑[∑[Δ[floor((5*n+3)/3)]+n]]%(n+1)` -/
def P593505445077462117.Spec : Prop :=
  ∀ n, P593505445077462117.a n = A151842 n

end A151842

/-! ## A151842.P8691096098948481572

`abs(A076118(n))`
-/

namespace A151842.P8691096098948481572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076118 n|

end

end A151842.P8691096098948481572

namespace A151842

/-- `abs(A076118(n))` -/
def P8691096098948481572.Spec : Prop :=
  ∀ n, P8691096098948481572.a n = A151842 n

end A151842

/-! ## A151842.P6107927705032697304

`∑[A131358(n)]`
-/

namespace A151842.P6107927705032697304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151842.P6107927705032697304

namespace A151842

/-- `∑[A131358(n)]` -/
def P6107927705032697304.Spec : Prop :=
  ∀ n, P6107927705032697304.a n = A151842 n

end A151842

/-! ## A151842.P17495927037599515083

`n-A009947(n)`
-/

namespace A151842.P17495927037599515083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A009947 n

end

end A151842.P17495927037599515083

namespace A151842

/-- `n-A009947(n)` -/
def P17495927037599515083.Spec : Prop :=
  ∀ n, P17495927037599515083.a n = A151842 n

end A151842

/-! ## A151842.P13917062624720379370

`abs(∑[A255368(n)])`
-/

namespace A151842.P13917062624720379370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A151842.P13917062624720379370

namespace A151842

/-- `abs(∑[A255368(n)])` -/
def P13917062624720379370.Spec : Prop :=
  ∀ n, P13917062624720379370.a n = A151842 n

end A151842

/-! ## A151842.P15425840231804033588

`abs(∑[n*A102283(n)])`
-/

namespace A151842.P15425840231804033588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A151842.P15425840231804033588

namespace A151842

/-- `abs(∑[n*A102283(n)])` -/
def P15425840231804033588.Spec : Prop :=
  ∀ n, P15425840231804033588.a n = A151842 n

end A151842

/-! ## A151842.P10016612003464624981

`n-floor(A265667(n)/2)`
-/

namespace A151842.P10016612003464624981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(A265667 n : ℚ) / 2⌋

end

end A151842.P10016612003464624981

namespace A151842

/-- `n-floor(A265667(n)/2)` -/
def P10016612003464624981.Spec : Prop :=
  ∀ n, P10016612003464624981.a n = A151842 n

end A151842

/-! ## A151842.P3910324007627472271

`A186101(n)-a(n-1)` with `a(0)=0`
-/

namespace A151842.P3910324007627472271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A186101 n - a (n - 1)

end

end A151842.P3910324007627472271

namespace A151842

/-- `A186101(n)-a(n-1)` -/
def P3910324007627472271.Spec : Prop :=
  ∀ n, P3910324007627472271.a n = A151842 n

end A151842

/-! ## A151842.P10302129588692040333

`n-(A175676(n)+a(n-1))` with `a(0)=0`
-/

namespace A151842.P10302129588692040333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (A175676 n + a (n - 1))

end

end A151842.P10302129588692040333

namespace A151842

/-- `n-(A175676(n)+a(n-1))` -/
def P10302129588692040333.Spec : Prop :=
  ∀ n, P10302129588692040333.a n = A151842 n

end A151842

/-! ## A151842.P210218537580636374

`(n-a(n-1))/A000045(gcd(n, n+3))` with `a(0)=0`
-/

namespace A151842.P210218537580636374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((n : ℚ) - a (n - 1)) / (A000045 (Nat.gcd n (n + 3)) : ℚ)

end

end A151842.P210218537580636374

namespace A151842

/-- `(n-a(n-1))/A000045(gcd(n, n+3))` -/
def P210218537580636374.Spec : Prop :=
  ∀ n, P210218537580636374.a n = (A151842 n : ℚ)

end A151842

/-! ## A151842.P18347737201951041102

`A000045(gcd(n+2, n-1))+a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A151842.P18347737201951041102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A000045 (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1)) + a (n - 3)

end

end A151842.P18347737201951041102

namespace A151842

/-- `A000045(gcd(n+2, n-1))+a(n-3)` -/
def P18347737201951041102.Spec : Prop :=
  ∀ n, P18347737201951041102.a n = A151842 n

end A151842

/-! ## A151842.P16629899487774851367

`n-a(n-1)*A000010(gcd(n-3, 2*n))` with `a(0)=0`
-/

namespace A151842.P16629899487774851367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a (n - 1) * A000010 (Int.gcd ((n : ℤ) - 3) (2 * n : ℤ))

end

end A151842.P16629899487774851367

namespace A151842

/-- `n-a(n-1)*A000010(gcd(n-3, 2*n))` -/
def P16629899487774851367.Spec : Prop :=
  ∀ n, P16629899487774851367.a n = A151842 n

end A151842

/-!
# A151843: a(0)=0; a(1)=0; a(2)=0; for n>=3 if n=2^i + j with 0<=j

The programs for A151843, there is no canonical definition to state claims against.
-/

/-! ## A151843.P6781825774015798930

`A151844(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A151843.P6781825774015798930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A151844 (n - 1) - a (n - 1)

end

end A151843.P6781825774015798930

/-! ## A151843.P17283760922714711197

`A151845(n)-A118977(n)`
-/

namespace A151843.P17283760922714711197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151845 n - A118977 n

end

end A151843.P17283760922714711197

/-! ## A151843.P17823397246112610647

`A151849(n)-A151570(n)`
-/

namespace A151843.P17823397246112610647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151849 n - A151570 n

end

end A151843.P17823397246112610647

/-! ## A151843.P11997360617222327859

`A151847(n)-A151702(n)`
-/

namespace A151843.P11997360617222327859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151847 n - A151702 n

end

end A151843.P11997360617222327859

/-! ## A151843.P15616760413747698203

`A151845(n)+A151847(n)-A151849(n)`
-/

namespace A151843.P15616760413747698203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151845 n + (A151847 n - A151849 n)

end

end A151843.P15616760413747698203

/-! ## A151843.P13018551280561947623

`A118977(n)-A151702(n+1)`
-/

namespace A151843.P13018551280561947623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 n - A151702 (n + 1)

end

end A151843.P13018551280561947623

/-! ## A151843.P10085208237256613980

`(A151702(n)-Δ[A118977(n)])/2`
-/

namespace A151843.P10085208237256613980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151702 n - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A151843.P10085208237256613980

/-! ## A151843.P12805891943428744966

`A151571(n)-(A151702(n+1)+A151570(n))`
-/

namespace A151843.P12805891943428744966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151571 n - (A151702 (n + 1) + A151570 n)

end

end A151843.P12805891943428744966

/-! ## A151843.P9070968674817512456

`A151570(n)-(A151702(n+1)+A151702(n))`
-/

namespace A151843.P9070968674817512456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 n - (A151702 (n + 1) + A151702 n)

end

end A151843.P9070968674817512456

/-! ## A151843.P7359947516874577806

`A118977(n+1)+A118977(n)-A151570(n+1)`
-/

namespace A151843.P7359947516874577806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (n + 1) + (A118977 n - A151570 (n + 1))

end

end A151843.P7359947516874577806

/-!
# A151844: If A151843 is regarded as a triangle then the rows converge to this sequence.

The programs for A151844, there is no canonical definition to state claims against.
-/

/-! ## A151844.P494880233371328089

`A151843(n+1)+A151843(n)`
-/

namespace A151844.P494880233371328089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 (n + 1) + A151843 n

end

end A151844.P494880233371328089

/-! ## A151844.P5762755579366824281

`A151680(n)+1-A151553(n)`
-/

namespace A151844.P5762755579366824281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151680 n + (1 - A151553 n)

end

end A151844.P5762755579366824281

/-! ## A151844.P1229555703491714421

`A151570(n)-A151552(n)-A151843(n)`
-/

namespace A151844.P1229555703491714421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 n - A151552 n - A151843 n

end

end A151844.P1229555703491714421

/-! ## A151844.P17308985796794186437

`A151702(n+1)+A151702(n)-A151552(n)`
-/

namespace A151844.P17308985796794186437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (n + 1) + (A151702 n - A151552 n)

end

end A151844.P17308985796794186437

/-! ## A151844.P3788519917426529165

`A151702(n)-Δ[A151702(n+1)]`
-/

namespace A151844.P3788519917426529165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 n - (f1 (n + 1) - f1 n)

end

end A151844.P3788519917426529165

/-! ## A151844.P15535431119959574516

`A151552(A206332(n+1)-2)-A151552(n)`
-/

namespace A151844.P15535431119959574516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151552 (A206332 (n + 1) - 2).toNat - A151552 n

end

end A151844.P15535431119959574516

/-! ## A151844.P5623340914922312753

`A151843(A206332(n+1))`
-/

namespace A151844.P5623340914922312753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 (A206332 (n + 1)).toNat

end

end A151844.P5623340914922312753

/-! ## A151844.P18311652655834065488

`A118977(A206332(n+1))-A151553(n)`
-/

namespace A151844.P18311652655834065488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A206332 (n + 1)).toNat - A151553 n

end

end A151844.P18311652655834065488

/-! ## A151844.P130068670666993744

`A151702(A206332(n+1))-A151552(n)`
-/

namespace A151844.P130068670666993744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (A206332 (n + 1)).toNat - A151552 n

end

end A151844.P130068670666993744

/-! ## A151844.P741727832242634829

`A151714(n)-A151552(n)`
-/

namespace A151844.P741727832242634829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151714 n - A151552 n

end

end A151844.P741727832242634829

/-!
# A151845: a(0)=0; a(1)=1; a(2)=1; for n>=3 if n=2^i + j with 0<=j

The programs for A151845, there is no canonical definition to state claims against.
-/

/-! ## A151845.P11130302496504299857

`A151843(n)+A118977(n)`
-/

namespace A151845.P11130302496504299857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 n + A118977 n

end

end A151845.P11130302496504299857

/-! ## A151845.P6175385235873819712

`A151849(n)-A151702(n)`
-/

namespace A151845.P6175385235873819712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151849 n - A151702 n

end

end A151845.P6175385235873819712

/-! ## A151845.P7823042187127029485

`A118977(n)+A151847(n)-A151702(n)`
-/

namespace A151845.P7823042187127029485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 n + (A151847 n - A151702 n)

end

end A151845.P7823042187127029485

/-! ## A151845.P18115033824596799463

`A151843(n)+A151849(n)-A151847(n)`
-/

namespace A151845.P18115033824596799463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 n + (A151849 n - A151847 n)

end

end A151845.P18115033824596799463

/-! ## A151845.P14125685602047139037

`(A151571(n)-Δ[A118977(n)])/2`
-/

namespace A151845.P14125685602047139037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151571 n - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A151845.P14125685602047139037

/-! ## A151845.P10518468995003076790

`A014682(A151571(n)-Δ[A118977(n)])`
-/

namespace A151845.P10518468995003076790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A151571 n - (f1 (n + 1) - f1 n)).toNat

end

end A151845.P10518468995003076790

/-! ## A151845.P5209329485801698900

`A005843(A118977(n))-A151702(n+1)`
-/

namespace A151845.P5209329485801698900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A118977 n).toNat - A151702 (n + 1)

end

end A151845.P5209329485801698900

/-! ## A151845.P1391148233292453422

`A151571(n)-(A151702(n+1)+A151702(n))`
-/

namespace A151845.P1391148233292453422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151571 n - (A151702 (n + 1) + A151702 n)

end

end A151845.P1391148233292453422

/-! ## A151845.P10382495231854830847

`A151702(n+1)+A151570(n)-A118977(n+1)`
-/

namespace A151845.P10382495231854830847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (n + 1) + (A151570 n - A118977 (n + 1))

end

end A151845.P10382495231854830847

/-! ## A151845.P9266177060805387305

`A151571(n)-A151714(n)`
-/

namespace A151845.P9266177060805387305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151571 n - A151714 n

end

end A151845.P9266177060805387305

/-!
# A151846: If A151845 is regarded as a triangle then the rows converge to this sequence.

The programs for A151846, there is no canonical definition to state claims against.
-/

/-! ## A151846.P11927860762029745952

`A151571(n)+Δ[A151843(n)]`
-/

namespace A151846.P11927860762029745952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151571 n + (f1 (n + 1) - f1 n)

end

end A151846.P11927860762029745952

/-! ## A151846.P6568375993715476437

`A151847(n+1)+A151570(n)`
-/

namespace A151846.P6568375993715476437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151847 (n + 1) + A151570 n

end

end A151846.P6568375993715476437

/-! ## A151846.P14951671323226817719

`A151845(n+1)+A151845(n)`
-/

namespace A151846.P14951671323226817719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151845 (n + 1) + A151845 n

end

end A151846.P14951671323226817719

/-! ## A151846.P9693782229741001240

`A151847(n+1)+A151848(n)-A151843(n+1)`
-/

namespace A151846.P9693782229741001240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151847 (n + 1) + (A151848 n - A151843 (n + 1))

end

end A151846.P9693782229741001240

/-! ## A151846.P17974169833039038882

`A151849(n+1)+2*A151843(n)`
-/

namespace A151846.P17974169833039038882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151849 (n + 1) + 2 * A151843 n

end

end A151846.P17974169833039038882

/-! ## A151846.P2881710022048161857

`A151571(n)+Δ[A151847(n)-A151702(n)]`
-/

namespace A151846.P2881710022048161857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151847 n - A151702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151571 n + (f1 (n + 1) - f1 n)

end

end A151846.P2881710022048161857

/-! ## A151846.P12788302167532048523

`A151845(A206332(n+1))`
-/

namespace A151846.P12788302167532048523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151845 (A206332 (n + 1)).toNat

end

end A151846.P12788302167532048523

/-! ## A151846.P11467603113975215042

`2*A118977(A206332(n+1))-A151553(n)`
-/

namespace A151846.P11467603113975215042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118977 (A206332 (n + 1)).toNat - A151553 n

end

end A151846.P11467603113975215042

/-! ## A151846.P12336349319044273173

`A151850(n)-A151714(n)`
-/

namespace A151846.P12336349319044273173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151850 n - A151714 n

end

end A151846.P12336349319044273173

/-! ## A151846.P891175169887151746

`A151571(n)+Δ[A151570(n)-A151714(n)]`
-/

namespace A151846.P891175169887151746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 n - A151714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151571 n + (f1 (n + 1) - f1 n)

end

end A151846.P891175169887151746

/-!
# A151847: a(0)=1; a(1)=0; a(2)=1; for n>=3 if n=2^i + j with 0<=j

The programs for A151847, there is no canonical definition to state claims against.
-/

/-! ## A151847.P12991741533136462631

`A151848(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A151847.P12991741533136462631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151848 (n - 1) - a (n - 1)

end

end A151847.P12991741533136462631

/-! ## A151847.P9774296623675809635

`A151843(n)+A151702(n)`
-/

namespace A151847.P9774296623675809635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 n + A151702 n

end

end A151847.P9774296623675809635

/-! ## A151847.P11723018560928167510

`A151849(n)-A118977(n)`
-/

namespace A151847.P11723018560928167510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151849 n - A118977 n

end

end A151847.P11723018560928167510

/-! ## A151847.P18203806135773480570

`A151843(n)+A151849(n)-A151845(n)`
-/

namespace A151847.P18203806135773480570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 n + (A151849 n - A151845 n)

end

end A151847.P18203806135773480570

/-! ## A151847.P3284013053298242922

`A118977(n)-Δ[A151702(n)]`
-/

namespace A151847.P3284013053298242922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 n - (f1 (n + 1) - f1 n)

end

end A151847.P3284013053298242922

/-! ## A151847.P1352157546823869138

`A151570(n)-A151702(n+1)`
-/

namespace A151847.P1352157546823869138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 n - A151702 (n + 1)

end

end A151847.P1352157546823869138

/-! ## A151847.P4453319579929597184

`A151571(n)-(A151702(n+1)+A118977(n))`
-/

namespace A151847.P4453319579929597184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151571 n - (A151702 (n + 1) + A118977 n)

end

end A151847.P4453319579929597184

/-! ## A151847.P4209469751238531944

`A118977(n)+A151702(n)-A151702(n+1)`
-/

namespace A151847.P4209469751238531944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 n + (A151702 n - A151702 (n + 1))

end

end A151847.P4209469751238531944

/-! ## A151847.P17403019375864223938

`A118977(n+1)+A151570(n)-A151570(n+1)`
-/

namespace A151847.P17403019375864223938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (n + 1) + (A151570 n - A151570 (n + 1))

end

end A151847.P17403019375864223938

/-!
# A151848: If A151847 is regarded as a triangle then the rows converge to this sequence.

The programs for A151848, there is no canonical definition to state claims against.
-/

/-! ## A151848.P8245279996803570409

`A151849(n)+Δ[A151843(n)]`
-/

namespace A151848.P8245279996803570409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151849 n + (f1 (n + 1) - f1 n)

end

end A151848.P8245279996803570409

/-! ## A151848.P15376068368129040425

`A151843(n+1)+A151570(n)`
-/

namespace A151848.P15376068368129040425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 (n + 1) + A151570 n

end

end A151848.P15376068368129040425

/-! ## A151848.P16685466264347754866

`A151847(n+1)+A151847(n)`
-/

namespace A151848.P16685466264347754866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151847 (n + 1) + A151847 n

end

end A151848.P16685466264347754866

/-! ## A151848.P8694942231012249984

`A151552(n)+2*A151844(n)`
-/

namespace A151848.P8694942231012249984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151552 n + 2 * A151844 n

end

end A151848.P8694942231012249984

/-! ## A151848.P7209296943795731561

`A151845(n+1)+2*A151843(n)`
-/

namespace A151848.P7209296943795731561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151845 (n + 1) + 2 * A151843 n

end

end A151848.P7209296943795731561

/-! ## A151848.P8115953239057577897

`A151552(n)+A005843(A151844(n))`
-/

namespace A151848.P8115953239057577897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151552 n + A005843 (A151844 n).toNat

end

end A151848.P8115953239057577897

/-! ## A151848.P4765250840008448766

`A151843(n+1)+A151849(n)-A151843(n)`
-/

namespace A151848.P4765250840008448766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 (n + 1) + (A151849 n - A151843 n)

end

end A151848.P4765250840008448766

/-! ## A151848.P2174386002396702811

`A151845(n+1)+A151846(n)-A151849(n+1)`
-/

namespace A151848.P2174386002396702811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151845 (n + 1) + (A151846 n - A151849 (n + 1))

end

end A151848.P2174386002396702811

/-! ## A151848.P15602501073526357087

`A151847(A206332(n+1))`
-/

namespace A151848.P15602501073526357087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151847 (A206332 (n + 1)).toNat

end

end A151848.P15602501073526357087

/-! ## A151848.P4731396168034941326

`2*A151702(A206332(n+1))-A151552(n)`
-/

namespace A151848.P4731396168034941326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151702 (A206332 (n + 1)).toNat - A151552 n

end

end A151848.P4731396168034941326

/-!
# A151849: a(0)=1; a(1)=1; a(2)=2; for n>=3 if n=2^i + j with 0<=j

The programs for A151849, there is no canonical definition to state claims against.
-/

/-! ## A151849.P5802441768138576448

`A151847(n)+A118977(n)`
-/

namespace A151849.P5802441768138576448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151847 n + A118977 n

end

end A151849.P5802441768138576448

/-! ## A151849.P1493172821384787949

`A151843(n)+A151570(n)`
-/

namespace A151849.P1493172821384787949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 n + A151570 n

end

end A151849.P1493172821384787949

/-! ## A151849.P15161410215224412077

`A151845(n)+A151702(n)`
-/

namespace A151849.P15161410215224412077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151845 n + A151702 n

end

end A151849.P15161410215224412077

/-! ## A151849.P11327445209200027897

`A151848(n)-Δ[A151843(n)]`
-/

namespace A151849.P11327445209200027897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151848 n - (f1 (n + 1) - f1 n)

end

end A151849.P11327445209200027897

/-! ## A151849.P17737988902321754943

`A151843(n)+A151846(n)-A151847(n+1)`
-/

namespace A151849.P17737988902321754943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 n + (A151846 n - A151847 (n + 1))

end

end A151849.P17737988902321754943

/-! ## A151849.P2620399609545452710

`A151843(n)+A151848(n)-A151843(n+1)`
-/

namespace A151849.P2620399609545452710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 n + (A151848 n - A151843 (n + 1))

end

end A151849.P2620399609545452710

/-! ## A151849.P10174319397208384246

`A151571(n)-A151702(n+1)`
-/

namespace A151849.P10174319397208384246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151571 n - A151702 (n + 1)

end

end A151849.P10174319397208384246

/-! ## A151849.P16976618043357326655

`Δ[A151702(n)]+2*A151847(n)`
-/

namespace A151849.P16976618043357326655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A151847 n

end

end A151849.P16976618043357326655

/-! ## A151849.P6233576124283885274

`2*A118977(n)-Δ[A151702(n)]`
-/

namespace A151849.P6233576124283885274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118977 n - (f1 (n + 1) - f1 n)

end

end A151849.P6233576124283885274

/-! ## A151849.P8748984537527386406

`A118977(n)+A151570(n)-A151702(n+1)`
-/

namespace A151849.P8748984537527386406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 n + (A151570 n - A151702 (n + 1))

end

end A151849.P8748984537527386406

/-! ## A151849.P9385223879806997426

`A118977(n+1)+A151571(n)-A151570(n+1)`
-/

namespace A151849.P9385223879806997426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (n + 1) + (A151571 n - A151570 (n + 1))

end

end A151849.P9385223879806997426

/-! ## A151849.P8331085331955475793

`A151702(A206332(n+1))+2*A151843(n)`
-/

namespace A151849.P8331085331955475793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (A206332 (n + 1)).toNat + 2 * A151843 n

end

end A151849.P8331085331955475793

/-!
# A151850: If A151849 is regarded as a triangle then the rows converge to this sequence.

The programs for A151850, there is no canonical definition to state claims against.
-/

/-! ## A151850.P8001318067719318394

`A151845(n+1)+A151571(n)`
-/

namespace A151850.P8001318067719318394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151845 (n + 1) + A151571 n

end

end A151850.P8001318067719318394

/-! ## A151850.P7574286237397395541

`A151680(n)+A151848(n)+1`
-/

namespace A151850.P7574286237397395541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151680 n + (A151848 n + 1)

end

end A151850.P7574286237397395541

/-! ## A151850.P16222777867643948202

`A151552(n)+A151846(n)+A151844(n)`
-/

namespace A151850.P16222777867643948202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151552 n + (A151846 n + A151844 n)

end

end A151850.P16222777867643948202

/-! ## A151850.P16623665770513153256

`A151846(n)+A151848(n)-A151844(n)`
-/

namespace A151850.P16623665770513153256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151846 n + (A151848 n - A151844 n)

end

end A151850.P16623665770513153256

/-! ## A151850.P9465518286089614948

`A151571(n)-(A151845(n)-A151846(n))`
-/

namespace A151850.P9465518286089614948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151571 n - (A151845 n - A151846 n)

end

end A151850.P9465518286089614948

/-! ## A151850.P817451652735038657

`A151849(n+1)+A151849(n)`
-/

namespace A151850.P817451652735038657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151849 (n + 1) + A151849 n

end

end A151850.P817451652735038657

/-! ## A151850.P17716607184452945244

`A151849(A206332(n+1))`
-/

namespace A151850.P17716607184452945244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151849 (A206332 (n + 1)).toNat

end

end A151850.P17716607184452945244

/-! ## A151850.P15837706053709571164

`A151846(n)+A151714(n)`
-/

namespace A151850.P15837706053709571164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151846 n + A151714 n

end

end A151850.P15837706053709571164

/-! ## A151850.P9743559306503166521

`Δ[A151714(n)]+2*A151848(n)`
-/

namespace A151850.P9743559306503166521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A151848 n

end

end A151850.P9743559306503166521

/-! ## A151850.P5183590788340022761

`A005843(A151848(n))+Δ[A151714(n)]`
-/

namespace A151850.P5183590788340022761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A151848 n).toNat + (f1 (n + 1) - f1 n)

end

end A151850.P5183590788340022761

/-!
# A151851: a(0)=0; a(1)=0; a(2)=0; for n>=3 if n=2^i + j with 0<=j

The programs for A151851, there is no canonical definition to state claims against.
-/

/-! ## A151851.P4937157128631788661

`A151853(n)-A151572(n)`
-/

namespace A151851.P4937157128631788661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151853 n - A151572 n

end

end A151851.P4937157128631788661

/-! ## A151851.P10556121376824151252

`A151857(n)-A151573(n)`
-/

namespace A151851.P10556121376824151252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151857 n - A151573 n

end

end A151851.P10556121376824151252

/-! ## A151851.P14345408342566836042

`A151855(n)-A151703(n)`
-/

namespace A151851.P14345408342566836042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151855 n - A151703 n

end

end A151851.P14345408342566836042

/-! ## A151851.P15753582154765440381

`A151853(n)%A151572(A028310(n))`
-/

namespace A151851.P15753582154765440381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151853 n) (A151572 (A028310 n).toNat)

end

end A151851.P15753582154765440381

/-! ## A151851.P8657542780430465826

`A151572(n)+A151855(n)-A151573(n)`
-/

namespace A151851.P8657542780430465826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151572 n + (A151855 n - A151573 n)

end

end A151851.P8657542780430465826

/-! ## A151851.P8165624964991641672

`A151573(n)+A151853(n)-A151574(n)`
-/

namespace A151851.P8165624964991641672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151573 n + (A151853 n - A151574 n)

end

end A151851.P8165624964991641672

/-! ## A151851.P3473259254190629263

`A151703(n)+A151853(n)-A151573(n)`
-/

namespace A151851.P3473259254190629263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151703 n + (A151853 n - A151573 n)

end

end A151851.P3473259254190629263

/-! ## A151851.P12132923109490553081

`A151855(n)%A151703(A233583(n+1))`
-/

namespace A151851.P12132923109490553081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151855 n) (A151703 (A233583 (n + 1)).toNat)

end

end A151851.P12132923109490553081

/-! ## A151851.P745680119820095859

`A151852(and(n, A070198(n)))`
-/

namespace A151851.P745680119820095859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151852 (Int.land (n : ℤ) (A070198 n)).toNat

end

end A151851.P745680119820095859

/-!
# A151852: If A151851 is regarded as a triangle then the rows converge to this sequence.

The programs for A151852, there is no canonical definition to state claims against.
-/

/-! ## A151852.P3512092951152651212

`A151851(n)+2*A151851(n+1)`
-/

namespace A151852.P3512092951152651212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151851 n + 2 * A151851 (n + 1)

end

end A151852.P3512092951152651212

/-! ## A151852.P11113830492794566127

`A151851(A206332(n+1))`
-/

namespace A151852.P11113830492794566127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151851 (A206332 (n + 1)).toNat

end

end A151852.P11113830492794566127

/-! ## A151852.P4910919856430398741

`A151854(n)-A151572(A206332(n+1))`
-/

namespace A151852.P4910919856430398741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151854 n - A151572 (A206332 (n + 1)).toNat

end

end A151852.P4910919856430398741

/-! ## A151852.P3789776512775603859

`A151858(n)-A151573(A206332(n+1))`
-/

namespace A151852.P3789776512775603859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151858 n - A151573 (A206332 (n + 1)).toNat

end

end A151852.P3789776512775603859

/-! ## A151852.P7470905940063495582

`A151856(n)-A151703(A206332(n+1))`
-/

namespace A151852.P7470905940063495582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151856 n - A151703 (A206332 (n + 1)).toNat

end

end A151852.P7470905940063495582

/-! ## A151852.P16258510540339302179

`A151851(n)+A005843(A151851(n+1))`
-/

namespace A151852.P16258510540339302179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151851 n + A005843 (A151851 (n + 1)).toNat

end

end A151852.P16258510540339302179

/-! ## A151852.P4172616895577393221

`(A151856(n)-A151691(n))/3`
-/

namespace A151852.P4172616895577393221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151856 n - A151691 n : ℚ) / 3

end

end A151852.P4172616895577393221

/-! ## A151852.P18290263109381649838

`A002264(A151856(n)-A151691(n))`
-/

namespace A151852.P18290263109381649838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A151856 n - A151691 n).toNat

end

end A151852.P18290263109381649838

/-!
# A151853: a(0)=0; a(1)=1; a(2)=2; for n>=3 if n=2^i + j with 0<=j

The programs for A151853, there is no canonical definition to state claims against.
-/

/-! ## A151853.P4128108716140150772

`A151851(n)+A151572(n)`
-/

namespace A151853.P4128108716140150772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151851 n + A151572 n

end

end A151853.P4128108716140150772

/-! ## A151853.P1641723899978049802

`A151857(n)-A151703(n)`
-/

namespace A151853.P1641723899978049802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151857 n - A151703 n

end

end A151853.P1641723899978049802

/-! ## A151853.P12290770617023302029

`A151572(n)+A151857(n)-A151573(n)`
-/

namespace A151853.P12290770617023302029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151572 n + (A151857 n - A151573 n)

end

end A151853.P12290770617023302029

/-! ## A151853.P9276343182257732395

`A151574(n)+A151851(n)-A151573(n)`
-/

namespace A151853.P9276343182257732395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151574 n + (A151851 n - A151573 n)

end

end A151853.P9276343182257732395

/-! ## A151853.P12645022049809743424

`A151572(n)+A151855(n)-A151703(n)`
-/

namespace A151853.P12645022049809743424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151572 n + (A151855 n - A151703 n)

end

end A151853.P12645022049809743424

/-! ## A151853.P12345599275379392747

`A151573(n)+A151851(n)-A151703(n)`
-/

namespace A151853.P12345599275379392747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151573 n + (A151851 n - A151703 n)

end

end A151853.P12345599275379392747

/-! ## A151853.P60122327251644379

`A151851(n)+(A151574(n)-A151703(n))/2`
-/

namespace A151853.P60122327251644379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151851 n : ℚ) + (A151574 n - A151703 n : ℚ) / 2

end

end A151853.P60122327251644379

/-! ## A151853.P9941887325170970435

`A151572(n)+A151572(n)+A151855(n)-A151573(n)`
-/

namespace A151853.P9941887325170970435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151572 n + (A151572 n + (A151855 n - A151573 n))

end

end A151853.P9941887325170970435

/-! ## A151853.P12312793116203829760

`A151572(n)+A151855(n)%A151703(A233583(n+1))`
-/

namespace A151853.P12312793116203829760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151572 n + Int.tmod (A151855 n) (A151703 (A233583 (n + 1)).toNat)

end

end A151853.P12312793116203829760

/-! ## A151853.P9637584521908196694

`A151851(n)+A004525(A151574(n)-A151703(n))`
-/

namespace A151853.P9637584521908196694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151851 n + A004525 (A151574 n - A151703 n).toNat

end

end A151853.P9637584521908196694

/-!
# A151854: If A151853 is regarded as a triangle then the rows converge to this sequence.

The programs for A151854, there is no canonical definition to state claims against.
-/

/-! ## A151854.P5481993456532999156

`A151852(n)+A151858(n)-A151856(n)`
-/

namespace A151854.P5481993456532999156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151852 n + (A151858 n - A151856 n)

end

end A151854.P5481993456532999156

/-! ## A151854.P9276321418931217435

`A151853(n+1)+A151853(n+1)+A151853(n)`
-/

namespace A151854.P9276321418931217435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151853 (n + 1) + (A151853 (n + 1) + A151853 n)

end

end A151854.P9276321418931217435

/-! ## A151854.P9047924904740493650

`A151853(A206332(n+1))`
-/

namespace A151854.P9047924904740493650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151853 (A206332 (n + 1)).toNat

end

end A151854.P9047924904740493650

/-! ## A151854.P4670008069968938301

`A151852(n)+A151572(A206332(n+1))`
-/

namespace A151854.P4670008069968938301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151852 n + A151572 (A206332 (n + 1)).toNat

end

end A151854.P4670008069968938301

/-! ## A151854.P18176442241421918599

`A151858(n)-A151703(A206332(n+1))`
-/

namespace A151854.P18176442241421918599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151858 n - A151703 (A206332 (n + 1)).toNat

end

end A151854.P18176442241421918599

/-! ## A151854.P3258948560240879715

`A151572(A206332(n+1))+A151851(n)+2*A151851(n+1)`
-/

namespace A151854.P3258948560240879715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151572 (A206332 (n + 1)).toNat + (A151851 n + 2 * A151851 (n + 1))

end

end A151854.P3258948560240879715

/-! ## A151854.P12566858503108798609

`A151572(A115421(n+1))+(A151856(n)-A151691(n))/3`
-/

namespace A151854.P12566858503108798609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151572 (A115421 (n + 1)).toNat : ℚ) + (A151856 n - A151691 n : ℚ) / 3

end

end A151854.P12566858503108798609

/-! ## A151854.P13940811217034144145

`A151572(A206332(n+1))+(A151856(n)-A151691(n))/3`
-/

namespace A151854.P13940811217034144145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151572 (A206332 (n + 1)).toNat : ℚ) + (A151856 n - A151691 n : ℚ) / 3

end

end A151854.P13940811217034144145

/-!
# A151855: a(0)=1; a(1)=0; a(2)=1; for n>=3 if n=2^i + j with 0<=j

The programs for A151855, there is no canonical definition to state claims against.
-/

/-! ## A151855.P13999278656531939796

`A151851(n)+A151703(n)`
-/

namespace A151855.P13999278656531939796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151851 n + A151703 n

end

end A151855.P13999278656531939796

/-! ## A151855.P8719989345884181064

`A151857(n)-A151572(n)`
-/

namespace A151855.P8719989345884181064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151857 n - A151572 n

end

end A151855.P8719989345884181064

/-! ## A151855.P14733189563518184305

`A151573(n)+A151851(n)-A151572(n)`
-/

namespace A151855.P14733189563518184305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151573 n + (A151851 n - A151572 n)

end

end A151855.P14733189563518184305

/-! ## A151855.P15871293818037771770

`A151703(n)+A151853(n)-A151572(n)`
-/

namespace A151855.P15871293818037771770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151703 n + (A151853 n - A151572 n)

end

end A151855.P15871293818037771770

/-! ## A151855.P16659480947070621917

`A151851(n)+2*A151573(n)-A151574(n)`
-/

namespace A151855.P16659480947070621917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151851 n + (2 * A151573 n - A151574 n)

end

end A151855.P16659480947070621917

/-! ## A151855.P18225998089006143912

`A151851(n)+A151574(n)-2*A151572(n)`
-/

namespace A151855.P18225998089006143912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151851 n + (A151574 n - 2 * A151572 n)

end

end A151855.P18225998089006143912

/-! ## A151855.P1449091101698500448

`A151703(n)+A151853(n)%A151572(A028310(n))`
-/

namespace A151855.P1449091101698500448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151703 n + Int.tmod (A151853 n) (A151572 (A028310 n).toNat)

end

end A151855.P1449091101698500448

/-! ## A151855.P2171188850124227170

`A151703(n)+A151703(n)+A151853(n)-A151573(n)`
-/

namespace A151855.P2171188850124227170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151703 n + (A151703 n + (A151853 n - A151573 n))

end

end A151855.P2171188850124227170

/-! ## A151855.P9504113179965647967

`A151573(n)-(A151572(n)-(A151853(n)-A151572(n)))`
-/

namespace A151855.P9504113179965647967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151573 n - (A151572 n - (A151853 n - A151572 n))

end

end A151855.P9504113179965647967

/-! ## A151855.P11280020532374818799

`A005843(A151573(n))+A151851(n)-A151574(n)`
-/

namespace A151855.P11280020532374818799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A151573 n).toNat + (A151851 n - A151574 n)

end

end A151855.P11280020532374818799

/-!
# A151856: If A151855 is regarded as a triangle then the rows converge to this sequence.

The programs for A151856, there is no canonical definition to state claims against.
-/

/-! ## A151856.P13174815604195488722

`A151852(n)+A151858(n)-A151854(n)`
-/

namespace A151856.P13174815604195488722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151852 n + (A151858 n - A151854 n)

end

end A151856.P13174815604195488722

/-! ## A151856.P5846220618588671639

`A151855(n+1)+A151855(n+1)+A151855(n)`
-/

namespace A151856.P5846220618588671639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151855 (n + 1) + (A151855 (n + 1) + A151855 n)

end

end A151856.P5846220618588671639

/-! ## A151856.P16750236553795627153

`A151855(A206332(n+1))`
-/

namespace A151856.P16750236553795627153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151855 (A206332 (n + 1)).toNat

end

end A151856.P16750236553795627153

/-! ## A151856.P360233484660101316

`A151852(n)+A151703(A206332(n+1))`
-/

namespace A151856.P360233484660101316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151852 n + A151703 (A206332 (n + 1)).toNat

end

end A151856.P360233484660101316

/-! ## A151856.P16429437371165570421

`A151858(n)-A151572(A206332(n+1))`
-/

namespace A151856.P16429437371165570421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151858 n - A151572 (A206332 (n + 1)).toNat

end

end A151856.P16429437371165570421

/-! ## A151856.P11693594340981715271

`A151703(A206332(n+1))+A151851(n)+2*A151851(n+1)`
-/

namespace A151856.P11693594340981715271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151703 (A206332 (n + 1)).toNat + (A151851 n + 2 * A151851 (n + 1))

end

end A151856.P11693594340981715271

/-! ## A151856.P5390545396993241117

`A151855(n)+A005843(A151855(n+1))`
-/

namespace A151856.P5390545396993241117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151855 n + A005843 (A151855 (n + 1)).toNat

end

end A151856.P5390545396993241117

/-! ## A151856.P2401369068921359456

`A151691(n)+3*A151852(n)`
-/

namespace A151856.P2401369068921359456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151691 n + 3 * A151852 n

end

end A151856.P2401369068921359456

/-!
# A151857: a(0)=1; a(1)=1; a(2)=3; for n>=3 if n=2^i + j with 0<=j

The programs for A151857, there is no canonical definition to state claims against.
-/

/-! ## A151857.P1048147740053368130

`A151851(n)+A151573(n)`
-/

namespace A151857.P1048147740053368130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151851 n + A151573 n

end

end A151857.P1048147740053368130

/-! ## A151857.P13398783038967872160

`A151855(n)+A151572(n)`
-/

namespace A151857.P13398783038967872160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151855 n + A151572 n

end

end A151857.P13398783038967872160

/-! ## A151857.P13289136927173814079

`A151853(n)+A151703(n)`
-/

namespace A151857.P13289136927173814079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151853 n + A151703 n

end

end A151857.P13289136927173814079

/-! ## A151857.P12085981498538294588

`A151572(n)+A151851(n)+A151703(n)`
-/

namespace A151857.P12085981498538294588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151572 n + (A151851 n + A151703 n)

end

end A151857.P12085981498538294588

/-! ## A151857.P8520789148993253221

`A151573(n)+A151853(n)-A151572(n)`
-/

namespace A151857.P8520789148993253221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151573 n + (A151853 n - A151572 n)

end

end A151857.P8520789148993253221

/-! ## A151857.P15372913181675129239

`A151574(n)+A151851(n)-A151572(n)`
-/

namespace A151857.P15372913181675129239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151574 n + (A151851 n - A151572 n)

end

end A151857.P15372913181675129239

/-! ## A151857.P3576265725984063575

`A151853(n)+A151855(n)-A151851(n)`
-/

namespace A151857.P3576265725984063575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151853 n + (A151855 n - A151851 n)

end

end A151857.P3576265725984063575

/-! ## A151857.P14551537834142414667

`A151851(n)+A004525(A151703(n)+A151574(n))`
-/

namespace A151857.P14551537834142414667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151851 n + A004525 (A151703 n + A151574 n).toNat

end

end A151857.P14551537834142414667

/-!
# A151858: If A151857 is regarded as a triangle then the rows converge to this sequence.

The programs for A151858, there is no canonical definition to state claims against.
-/

/-! ## A151858.P7633607845690409902

`A151854(n)+A151856(n)-A151852(n)`
-/

namespace A151858.P7633607845690409902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151854 n + (A151856 n - A151852 n)

end

end A151858.P7633607845690409902

/-! ## A151858.P2829793005994062116

`A151857(n+1)+A151857(n+1)+A151857(n)`
-/

namespace A151858.P2829793005994062116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151857 (n + 1) + (A151857 (n + 1) + A151857 n)

end

end A151858.P2829793005994062116

/-! ## A151858.P7720034921799835957

`A151857(A206332(n+1))`
-/

namespace A151858.P7720034921799835957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151857 (A206332 (n + 1)).toNat

end

end A151858.P7720034921799835957

/-! ## A151858.P5771240409156244881

`A151852(n)+A151573(A206332(n+1))`
-/

namespace A151858.P5771240409156244881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151852 n + A151573 (A206332 (n + 1)).toNat

end

end A151858.P5771240409156244881

/-! ## A151858.P84543647189529576

`A151856(n)+A151572(A206332(n+1))`
-/

namespace A151858.P84543647189529576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151856 n + A151572 (A206332 (n + 1)).toNat

end

end A151858.P84543647189529576

/-! ## A151858.P16807081937830320603

`A151854(n)+A151703(A206332(n+1))`
-/

namespace A151858.P16807081937830320603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151854 n + A151703 (A206332 (n + 1)).toNat

end

end A151858.P16807081937830320603

/-! ## A151858.P9646546688907382879

`A151857(n)+A005843(A151857(n+1))`
-/

namespace A151858.P9646546688907382879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151857 n + A005843 (A151857 (n + 1)).toNat

end

end A151858.P9646546688907382879

/-! ## A151858.P741442136750662766

`A151685(n)+7*A151852(n)`
-/

namespace A151858.P741442136750662766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151685 n + 7 * A151852 n

end

end A151858.P741442136750662766

/-!
# A151859: a(0)=0; a(1)=0; a(2)=0; for n>=3 if n=2^i + j with 0<=j

The programs for A151859, there is no canonical definition to state claims against.
-/

/-! ## A151859.P4522293557928797484

`A151865(n)-A151568(n)`
-/

namespace A151859.P4522293557928797484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151865 n - A151568 n

end

end A151859.P4522293557928797484

/-! ## A151859.P3036472948540618528

`A151863(n)-A151704(n)`
-/

namespace A151859.P3036472948540618528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151863 n - A151704 n

end

end A151859.P3036472948540618528

/-! ## A151859.P16422030262757637306

`A151861(n)-A160552(n)`
-/

namespace A151859.P16422030262757637306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151861 n - A160552 n

end

end A151859.P16422030262757637306

/-! ## A151859.P6564897731534093726

`(A151569(n)-Δ[A139250(n)])/4`
-/

namespace A151859.P6564897731534093726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151569 n - (f1 (n + 1) - f1 n) : ℚ) / 4

end

end A151859.P6564897731534093726

/-! ## A151859.P5637377937879930316

`(A151568(n)-A160552(n+1))/4`
-/

namespace A151859.P5637377937879930316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151568 n - A160552 (n + 1) : ℚ) / 4

end

end A151859.P5637377937879930316

/-! ## A151859.P7270917477240770387

`A151861(n)+A151863(n)-A151865(n)`
-/

namespace A151859.P7270917477240770387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151861 n + (A151863 n - A151865 n)

end

end A151859.P7270917477240770387

/-! ## A151859.P9550923141791607211

`A151550(n)+A160552(n)-A152980(n)`
-/

namespace A151859.P9550923141791607211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151550 n + (A160552 n - A152980 n)

end

end A151859.P9550923141791607211

/-! ## A151859.P15365944846592192731

`A151864(n)-(A151865(n)+A151861(n+1))`
-/

namespace A151859.P15365944846592192731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151864 n - (A151865 n + A151861 (n + 1))

end

end A151859.P15365944846592192731

/-! ## A151859.P8102307617978963118

`A002265(A151569(n)-Δ[A139250(n)])`
-/

namespace A151859.P8102307617978963118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A151569 n - (f1 (n + 1) - f1 n)).toNat

end

end A151859.P8102307617978963118

/-! ## A151859.P13224896590124361804

`A110657(A151569(n)-Δ[A139250(n)])`
-/

namespace A151859.P13224896590124361804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A151569 n - (f1 (n + 1) - f1 n)).toNat

end

end A151859.P13224896590124361804

/-! ## A151859.P11061436184586804825

`A160552(n)-A008624(A151548(n))`
-/

namespace A151859.P11061436184586804825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 n - A008624 (A151548 n).toNat

end

end A151859.P11061436184586804825

/-! ## A151859.P11285277773132625400

`A151704(n)-A110657(A151548(n))`
-/

namespace A151859.P11285277773132625400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151704 n - A110657 (A151548 n).toNat

end

end A151859.P11285277773132625400

/-! ## A151859.P17731713576434307954

`∑[A004526(A151569(n))]-A153006(n)`
-/

namespace A151859.P17731713576434307954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A151569 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A153006 n

end

end A151859.P17731713576434307954

/-! ## A151859.P6871577317079802119

`A008621(A151548(n))-A255045(n+1)`
-/

namespace A151859.P6871577317079802119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A151548 n).toNat - A255045 (n + 1)

end

end A151859.P6871577317079802119

/-! ## A151859.P8726421431106502004

`A151863(n)-A008611(A151569(n)-1)`
-/

namespace A151859.P8726421431106502004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151863 n - A008611 (A151569 n - 1).toNat

end

end A151859.P8726421431106502004

/-! ## A151859.P14187840280495141509

`A032766(A255747(n))-A153006(n)`
-/

namespace A151859.P14187840280495141509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A255747 n).toNat - A153006 n

end

end A151859.P14187840280495141509

/-!
# A151860: If A151859 is regarded as a triangle then the rows converge to this sequence.

The programs for A151860, there is no canonical definition to state claims against.
-/

/-! ## A151860.P16252089520382901093

`A151548(n)-A151555(n)`
-/

namespace A151860.P16252089520382901093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 n - A151555 n

end

end A151860.P16252089520382901093

/-! ## A151860.P15257525093711796562

`A151862(n)-A151548(n)`
-/

namespace A151860.P15257525093711796562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151862 n - A151548 n

end

end A151860.P15257525093711796562

/-! ## A151860.P9687063371962424968

`A151548(A028310(n))%A151555(n)`
-/

namespace A151860.P9687063371962424968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151548 (A028310 n).toNat) (A151555 n)

end

end A151860.P9687063371962424968

/-! ## A151860.P15748616803955257008

`A151859(n+1)+2*A151859(n)`
-/

namespace A151860.P15748616803955257008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151859 (n + 1) + 2 * A151859 n

end

end A151860.P15748616803955257008

/-! ## A151860.P18006906620089109853

`(A151548(n)%A151555(n))%A000041(n)`
-/

namespace A151860.P18006906620089109853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A151548 n) (A151555 n)) (A000041 n)

end

end A151860.P18006906620089109853

/-! ## A151860.P5673982670382768109

`A151859(A206332(n+1))`
-/

namespace A151860.P5673982670382768109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151859 (A206332 (n + 1)).toNat

end

end A151860.P5673982670382768109

/-! ## A151860.P1752550379174108671

`A008585(A151859(n))+Δ[A151859(n)]`
-/

namespace A151860.P1752550379174108671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A151859 n).toNat + (f1 (n + 1) - f1 n)

end

end A151860.P1752550379174108671

/-! ## A151860.P4367938629825894525

`A151859(n+1)+A005843(A151859(n))`
-/

namespace A151860.P4367938629825894525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151859 (n + 1) + A005843 (A151859 n).toNat

end

end A151860.P4367938629825894525

/-! ## A151860.P12521454895013846596

`abs(A001489(A151548(n)%A151555(n)))`
-/

namespace A151860.P12521454895013846596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 (Int.tmod (A151548 n) (A151555 n)).toNat|

end

end A151860.P12521454895013846596

/-! ## A151860.P11974045265912882649

`A160552(n)-A008624(A160552(n+2))`
-/

namespace A151860.P11974045265912882649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 n - A008624 (A160552 (n + 2)).toNat

end

end A151860.P11974045265912882649

/-! ## A151860.P8187869046790785265

`A004525(A151548(n))-A151550(n)`
-/

namespace A151860.P8187869046790785265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151548 n).toNat - A151550 n

end

end A151860.P8187869046790785265

/-! ## A151860.P9415474764349633862

`A006368(A151548(n))-A152980(n)`
-/

namespace A151860.P9415474764349633862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A151548 n).toNat - A152980 n

end

end A151860.P9415474764349633862

/-!
# A151861: a(0)=0; a(1)=1; a(2)=1; for n>=3 if n=2^i + j with 0<=j

The programs for A151861, there is no canonical definition to state claims against.
-/

/-! ## A151861.P2374500224627436032

`A151863(n)-(-1)^n`
-/

namespace A151861.P2374500224627436032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151863 n - (-1) ^ n

end

end A151861.P2374500224627436032

/-! ## A151861.P13048858458759259147

`A160552(n)+A151859(n)`
-/

namespace A151861.P13048858458759259147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 n + A151859 n

end

end A151861.P13048858458759259147

/-! ## A151861.P17172226333368896849

`A151865(n)-A151704(n)`
-/

namespace A151861.P17172226333368896849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151865 n - A151704 n

end

end A151861.P17172226333368896849

/-! ## A151861.P5298133799986606958

`abs(A033999(n)-A151863(n))`
-/

namespace A151861.P5298133799986606958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n - A151863 n|

end

end A151861.P5298133799986606958

/-! ## A151861.P14904416385414522167

`abs(A151863(n)+A033999(n+1))`
-/

namespace A151861.P14904416385414522167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A151863 n + A033999 (n + 1)|

end

end A151861.P14904416385414522167

/-! ## A151861.P11601848184238762065

`-(A033999(n)-A151863(n))*and(1, A000040(n+1))`
-/

namespace A151861.P11601848184238762065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A033999 n - A151863 n) * Int.land 1 (A000040 (n + 1)))

end

end A151861.P11601848184238762065

/-! ## A151861.P12990530746006937637

`A151862(n)-(A151863(n+1)+A151863(n))`
-/

namespace A151861.P12990530746006937637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151862 n - (A151863 (n + 1) + A151863 n)

end

end A151861.P12990530746006937637

/-! ## A151861.P1150156349139102472

`A000007(n+1)-(A033999(n)-A151863(n))`
-/

namespace A151861.P1150156349139102472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - (A033999 n - A151863 n)

end

end A151861.P1150156349139102472

/-! ## A151861.P2499279487074240231

`2*A160552(n)-A008624(A151548(n))`
-/

namespace A151861.P2499279487074240231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160552 n - A008624 (A151548 n).toNat

end

end A151861.P2499279487074240231

/-! ## A151861.P16521351401260648417

`A151569(n)+A151859(n)-A004396(A151569(n))`
-/

namespace A151861.P16521351401260648417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151569 n + (A151859 n - A004396 (A151569 n).toNat)

end

end A151861.P16521351401260648417

/-!
# A151862: If A151861 is regarded as a triangle then the rows converge to this sequence.

The programs for A151862, there is no canonical definition to state claims against.
-/

/-! ## A151862.P16323505737216455807

`A151864(n)-(-1)^n`
-/

namespace A151862.P16323505737216455807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151864 n - (-1) ^ n

end

end A151862.P16323505737216455807

/-! ## A151862.P2451359507171492221

`A151860(n)+A151548(n)`
-/

namespace A151862.P2451359507171492221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151860 n + A151548 n

end

end A151862.P2451359507171492221

/-! ## A151862.P18253749651035591670

`abs(A033999(n)-A151864(n))`
-/

namespace A151862.P18253749651035591670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n - A151864 n|

end

end A151862.P18253749651035591670

/-! ## A151862.P5147390416865067848

`A151555(n)+2*A151860(n)`
-/

namespace A151862.P5147390416865067848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151555 n + 2 * A151860 n

end

end A151862.P5147390416865067848

/-! ## A151862.P5707877655286319842

`2*A151548(n)-A151555(n)`
-/

namespace A151862.P5707877655286319842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151548 n - A151555 n

end

end A151862.P5707877655286319842

/-! ## A151862.P14585227074242240144

`abs(A151864(n)+A033999(n+1))`
-/

namespace A151862.P14585227074242240144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A151864 n + A033999 (n + 1)|

end

end A151862.P14585227074242240144

/-! ## A151862.P11868372012095251420

`abs(A004442(n)-n-A151864(n))`
-/

namespace A151862.P11868372012095251420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004442 n - (n : ℤ) - A151864 n|

end

end A151862.P11868372012095251420

/-! ## A151862.P12450002973120267663

`A151861(n)+A151864(n)-A151863(n)`
-/

namespace A151862.P12450002973120267663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151861 n + (A151864 n - A151863 n)

end

end A151862.P12450002973120267663

/-! ## A151862.P5622782846338441853

`A151861(n+1)+2*A151861(n)`
-/

namespace A151862.P5622782846338441853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151861 (n + 1) + 2 * A151861 n

end

end A151862.P5622782846338441853

/-! ## A151862.P3153145216684970017

`abs(A151864(n)+A087960(2*n+1))`
-/

namespace A151862.P3153145216684970017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A151864 n + A087960 (2 * n + 1)|

end

end A151862.P3153145216684970017

/-! ## A151862.P18041250068300090277

`A151861(A206332(n+1))`
-/

namespace A151862.P18041250068300090277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151861 (A206332 (n + 1)).toNat

end

end A151862.P18041250068300090277

/-! ## A151862.P5947118156458963939

`∑{d}[A004442(n)-n-A151864(n), A000010(#)]`
-/

namespace A151862.P5947118156458963939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n - (n : ℤ) - A151864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A151862.P5947118156458963939

/-! ## A151862.P13082263562704339058

`A151548(n)-A001489(A151548(n)-A151555(n))`
-/

namespace A151862.P13082263562704339058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 n - A001489 (A151548 n - A151555 n).toNat

end

end A151862.P13082263562704339058

/-! ## A151862.P13579533442354282810

`(A151864(n)-A033999(n))%A000040(A000040(n+1))`
-/

namespace A151862.P13579533442354282810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151864 n - A033999 n) (A000040 (A000040 (n + 1)).toNat)

end

end A151862.P13579533442354282810

/-! ## A151862.P15753044009024591240

`A151548(n)+A004525(A151548(n))-A151550(n)`
-/

namespace A151862.P15753044009024591240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 n + (A004525 (A151548 n).toNat - A151550 n)

end

end A151862.P15753044009024591240

/-! ## A151862.P9013587615050012184

`A151548(n)+A006368(A151548(n))-A152980(n)`
-/

namespace A151862.P9013587615050012184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 n + (A006368 (A151548 n).toNat - A152980 n)

end

end A151862.P9013587615050012184

/-! ## A151862.P1575513588959643402

`A028310(A151548(n)+A151548(n)-A151555(n))`
-/

namespace A151862.P1575513588959643402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A151548 n + (A151548 n - A151555 n)).toNat

end

end A151862.P1575513588959643402

/-! ## A151862.P13967384379197717619

`A028310(A151548(n)-(A151555(n)-A151548(n)))`
-/

namespace A151862.P13967384379197717619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A151548 n - (A151555 n - A151548 n)).toNat

end

end A151862.P13967384379197717619

/-! ## A151862.P6490824394516646829

`abs(A087960(n²)-A151864(n))`
-/

namespace A151862.P6490824394516646829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A087960 (n ^ 2) - A151864 n|

end

end A151862.P6490824394516646829

/-!
# A151863: a(0)=1; a(1)=0; a(2)=2; for n>=3 if n=2^i + j with 0<=j

The programs for A151863, there is no canonical definition to state claims against.
-/

/-! ## A151863.P4798762469649280963

`A151861(n)+(-1)^n`
-/

namespace A151863.P4798762469649280963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151861 n + (-1) ^ n

end

end A151863.P4798762469649280963

/-! ## A151863.P17319149045306141267

`A151859(n)+A151704(n)`
-/

namespace A151863.P17319149045306141267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151859 n + A151704 n

end

end A151863.P17319149045306141267

/-! ## A151863.P17192513379492358566

`A151865(n)-A160552(n)`
-/

namespace A151863.P17192513379492358566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151865 n - A160552 n

end

end A151863.P17192513379492358566

/-! ## A151863.P13767220348127954768

`abs(A151861(n)+A033999(n))`
-/

namespace A151863.P13767220348127954768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A151861 n + A033999 n|

end

end A151863.P13767220348127954768

/-! ## A151863.P17866284925088135462

`abs(A151861(n)-A165326(n))`
-/

namespace A151863.P17866284925088135462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A151861 n - A165326 n|

end

end A151863.P17866284925088135462

/-! ## A151863.P8010783562518941421

`A004442(n)+A151861(n)-n`
-/

namespace A151863.P8010783562518941421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n + (A151861 n - (n : ℤ))

end

end A151863.P8010783562518941421

/-! ## A151863.P4050759510924458992

`A151859(n)+A151865(n)-A151861(n)`
-/

namespace A151863.P4050759510924458992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151859 n + (A151865 n - A151861 n)

end

end A151863.P4050759510924458992

/-! ## A151863.P6084087254256192246

`(A151861(n)+A033999(n))*A000045(A020639(2*(n+1)))`
-/

namespace A151863.P6084087254256192246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A151861 n + A033999 n) * A000045 (A020639 (2 * (n + 1))).toNat

end

end A151863.P6084087254256192246

/-! ## A151863.P15797271841214447762

`A165326(n+1)+A151861(n)`
-/

namespace A151863.P15797271841214447762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (n + 1) + A151861 n

end

end A151863.P15797271841214447762

/-! ## A151863.P12117039124069971089

`A151864(n)-(A151861(n+1)+A151861(n))`
-/

namespace A151863.P12117039124069971089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151864 n - (A151861 (n + 1) + A151861 n)

end

end A151863.P12117039124069971089

/-! ## A151863.P17253207856548174275

`2*A151704(n)-A110657(A151548(n))`
-/

namespace A151863.P17253207856548174275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151704 n - A110657 (A151548 n).toNat

end

end A151863.P17253207856548174275

/-! ## A151863.P1526501385152520620

`(A151861(n)+A033999(n))*A014963(∑[n+1])`
-/

namespace A151863.P1526501385152520620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A151861 n + A033999 n) * A014963 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151863.P1526501385152520620

/-! ## A151863.P10814697380688403421

`A214507(n²)+A151861(n)`
-/

namespace A151863.P10814697380688403421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214507 (n ^ 2) + A151861 n

end

end A151863.P10814697380688403421

/-! ## A151863.P13967736195638452002

`abs(A151861(n)+A034947(n²+5))`
-/

namespace A151863.P13967736195638452002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A151861 n + A034947 (n ^ 2 + 5)|

end

end A151863.P13967736195638452002

/-!
# A151864: If A151863 is regarded as a triangle then the rows converge to this sequence.

The programs for A151864, there is no canonical definition to state claims against.
-/

/-! ## A151864.P8892382713390468646

`A151862(n)+(-1)^n`
-/

namespace A151864.P8892382713390468646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151862 n + (-1) ^ n

end

end A151864.P8892382713390468646

/-! ## A151864.P5342750455102181757

`A151866(n)-A151548(n)`
-/

namespace A151864.P5342750455102181757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151866 n - A151548 n

end

end A151864.P5342750455102181757

/-! ## A151864.P4860737933420755911

`abs(A151862(n)+A033999(n))`
-/

namespace A151864.P4860737933420755911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A151862 n + A033999 n|

end

end A151864.P4860737933420755911

/-! ## A151864.P1681273750265828318

`A151860(n)+A151866(n)-A151862(n)`
-/

namespace A151864.P1681273750265828318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151860 n + (A151866 n - A151862 n)

end

end A151864.P1681273750265828318

/-! ## A151864.P4265518457482307392

`A151863(n)+A151862(n)-A151861(n)`
-/

namespace A151864.P4265518457482307392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151863 n + (A151862 n - A151861 n)

end

end A151864.P4265518457482307392

/-! ## A151864.P11567598580019823043

`A165326(n+1)+A151862(n)`
-/

namespace A151864.P11567598580019823043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (n + 1) + A151862 n

end

end A151864.P11567598580019823043

/-! ## A151864.P372646715005935272

`A151863(n+1)+2*A151863(n)`
-/

namespace A151864.P372646715005935272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151863 (n + 1) + 2 * A151863 n

end

end A151864.P372646715005935272

/-! ## A151864.P13987721054745201535

`A151861(n+1)+A151863(n)+A151861(n)`
-/

namespace A151864.P13987721054745201535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151861 (n + 1) + (A151863 n + A151861 n)

end

end A151864.P13987721054745201535

/-! ## A151864.P6375933504353856676

`A151861(n+1)+A151865(n)+A151859(n)`
-/

namespace A151864.P6375933504353856676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151861 (n + 1) + (A151865 n + A151859 n)

end

end A151864.P6375933504353856676

/-! ## A151864.P8817899094442577063

`A151863(A206332(n+1))`
-/

namespace A151864.P8817899094442577063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151863 (A206332 (n + 1)).toNat

end

end A151864.P8817899094442577063

/-! ## A151864.P14248976367292560730

`abs(A151862(n)+A034947(n²+5))`
-/

namespace A151864.P14248976367292560730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A151862 n + A034947 (n ^ 2 + 5)|

end

end A151864.P14248976367292560730

/-!
# A151865: a(0)=1; a(1)=1; a(2)=3; for n>=3 if n=2^i + j with 0<=j

The programs for A151865, there is no canonical definition to state claims against.
-/

/-! ## A151865.P11874902411696146599

`A151859(n)+A151568(n)`
-/

namespace A151865.P11874902411696146599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151859 n + A151568 n

end

end A151865.P11874902411696146599

/-! ## A151865.P4065670090830628007

`A151861(n)+A151704(n)`
-/

namespace A151865.P4065670090830628007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151861 n + A151704 n

end

end A151865.P4065670090830628007

/-! ## A151865.P522713479331771907

`A160552(n)+A151863(n)`
-/

namespace A151865.P522713479331771907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 n + A151863 n

end

end A151865.P522713479331771907

/-! ## A151865.P14715010962512107415

`A160552(n)+A151861(n)+(-1)^n`
-/

namespace A151865.P14715010962512107415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 n + (A151861 n + (-1) ^ n)

end

end A151865.P14715010962512107415

/-! ## A151865.P3749647873521746178

`A151704(n)+A160552(n)+A151859(n)`
-/

namespace A151865.P3749647873521746178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151704 n + (A160552 n + A151859 n)

end

end A151865.P3749647873521746178

/-! ## A151865.P11488354013217201439

`A266529(2*(n+1))+A151863(n)`
-/

namespace A151865.P11488354013217201439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266529 (2 * (n + 1)) + A151863 n

end

end A151865.P11488354013217201439

/-! ## A151865.P12016189049785327907

`A151569(n)-A110654(A151549(n))`
-/

namespace A151865.P12016189049785327907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151569 n - A110654 (A151549 n).toNat

end

end A151865.P12016189049785327907

/-! ## A151865.P3909811102590247326

`A151859(n)+A004396(A151569(n))`
-/

namespace A151865.P3909811102590247326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151859 n + A004396 (A151569 n).toNat

end

end A151865.P3909811102590247326

/-! ## A151865.P2493829948491519553

`A151863(n)+A008611(A151569(n))`
-/

namespace A151865.P2493829948491519553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151863 n + A008611 (A151569 n).toNat

end

end A151865.P2493829948491519553

/-! ## A151865.P9852978420026377416

`A151569(n)-A008624(A151548(n))`
-/

namespace A151865.P9852978420026377416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151569 n - A008624 (A151548 n).toNat

end

end A151865.P9852978420026377416

/-!
# A151866: If A151865 is regarded as a triangle then the rows converge to this sequence.

The programs for A151866, there is no canonical definition to state claims against.
-/

/-! ## A151866.P3326420077144906713

`A151864(n)+A151548(n)`
-/

namespace A151866.P3326420077144906713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151864 n + A151548 n

end

end A151866.P3326420077144906713

/-! ## A151866.P696779094254555739

`A151548(n)+A151862(n)+(-1)^n`
-/

namespace A151866.P696779094254555739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 n + (A151862 n + (-1) ^ n)

end

end A151866.P696779094254555739

/-! ## A151866.P12917188819042454563

`A151862(n)+A151864(n)-A151860(n)`
-/

namespace A151866.P12917188819042454563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151862 n + (A151864 n - A151860 n)

end

end A151866.P12917188819042454563

/-! ## A151866.P432843333147137287

`A151865(n+1)+2*A151865(n)`
-/

namespace A151866.P432843333147137287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151865 (n + 1) + 2 * A151865 n

end

end A151866.P432843333147137287

/-! ## A151866.P17749689764795674040

`A160552(A206332(n+1))+A151864(n)`
-/

namespace A151866.P17749689764795674040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A206332 (n + 1)).toNat + A151864 n

end

end A151866.P17749689764795674040

/-! ## A151866.P5608220722198426837

`A151865(A206332(n+1))`
-/

namespace A151866.P5608220722198426837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151865 (A206332 (n + 1)).toNat

end

end A151866.P5608220722198426837

/-! ## A151866.P6611161205186838091

`A151862(n)+A151704(A206332(n+1))`
-/

namespace A151866.P6611161205186838091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151862 n + A151704 (A206332 (n + 1)).toNat

end

end A151866.P6611161205186838091

/-! ## A151866.P13588215949704423047

`A151569(A206332(n+1))-A151555(n)`
-/

namespace A151866.P13588215949704423047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151569 (A206332 (n + 1)).toNat - A151555 n

end

end A151866.P13588215949704423047

/-! ## A151866.P14850578401820241077

`A008486(A151865(n))+Δ[A151865(n)]`
-/

namespace A151866.P14850578401820241077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A151865 n).toNat + (f1 (n + 1) - f1 n)

end

end A151866.P14850578401820241077

/-! ## A151866.P396833502955517358

`A151865(n+1)+A005843(A151865(n))`
-/

namespace A151866.P396833502955517358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151865 (n + 1) + A005843 (A151865 n).toNat

end

end A151866.P396833502955517358

/-!
# A151867: a(0)=0; a(1)=0; a(2)=0; for n>=3 if n=2^i + j with 0<=j

The programs for A151867, there is no canonical definition to state claims against.
-/

/-! ## A151867.P15648027970852184615

`A151869(n)-A151705(n)`
-/

namespace A151867.P15648027970852184615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151869 n - A151705 n

end

end A151867.P15648027970852184615

/-! ## A151867.P8769767873528701157

`A151871(n)-A151706(n)`
-/

namespace A151867.P8769767873528701157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151871 n - A151706 n

end

end A151867.P8769767873528701157

/-! ## A151867.P13626324956393473529

`A151873(n)-A151707(n)`
-/

namespace A151867.P13626324956393473529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151873 n - A151707 n

end

end A151867.P13626324956393473529

/-! ## A151867.P8855132552318976398

`A151705(n)+A151871(n)-A151707(n)`
-/

namespace A151867.P8855132552318976398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151705 n + (A151871 n - A151707 n)

end

end A151867.P8855132552318976398

/-! ## A151867.P6664054656870202811

`A151706(n)+A151869(n)-A151707(n)`
-/

namespace A151867.P6664054656870202811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151706 n + (A151869 n - A151707 n)

end

end A151867.P6664054656870202811

/-! ## A151867.P4034019244547434171

`A151871(n)-(2*A151707(n)-A151708(n))`
-/

namespace A151867.P4034019244547434171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151871 n - (2 * A151707 n - A151708 n)

end

end A151867.P4034019244547434171

/-! ## A151867.P586138780555602839

`A151871(n)-(A151708(n)-2*A151705(n))`
-/

namespace A151867.P586138780555602839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151871 n - (A151708 n - 2 * A151705 n)

end

end A151867.P586138780555602839

/-! ## A151867.P6970566936848938898

`A151705(n)-(A151707(A028310(n))-A151871(n))`
-/

namespace A151867.P6970566936848938898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151705 n - (A151707 (A028310 n).toNat - A151871 n)

end

end A151867.P6970566936848938898

/-! ## A151867.P4478878958653232300

`A000027(A151871(n)+A151705(n))%A151707(n)`
-/

namespace A151867.P4478878958653232300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A151871 n + A151705 n).toNat) (A151707 n)

end

end A151867.P4478878958653232300

/-! ## A151867.P5790227448546822826

`A151871(A233583(n+1))%A151706(A233583(n+1))`
-/

namespace A151867.P5790227448546822826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151871 (A233583 (n + 1)).toNat) (A151706 (A233583 (n + 1)).toNat)

end

end A151867.P5790227448546822826

/-! ## A151867.P17180527767571136517

`A005843(A151705(n))+A151871(n)-A151708(n)`
-/

namespace A151867.P17180527767571136517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A151705 n).toNat + (A151871 n - A151708 n)

end

end A151867.P17180527767571136517

/-! ## A151867.P14894560260147267756

`A151708(n)+A151871(n)-A004277(A151707(n))`
-/

namespace A151867.P14894560260147267756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151708 n + (A151871 n - A004277 (A151707 n).toNat)

end

end A151867.P14894560260147267756

/-!
# A151868: If A151867 is regarded as a triangle then the rows converge to this sequence.

The programs for A151868, there is no canonical definition to state claims against.
-/

/-! ## A151868.P17050823229779041997

`2*(A151867(n+1)+A151867(n))`
-/

namespace A151868.P17050823229779041997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A151867 (n + 1) + A151867 n)

end

end A151868.P17050823229779041997

/-! ## A151868.P10979103017103225637

`A151867(A206332(n+1))`
-/

namespace A151868.P10979103017103225637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151867 (A206332 (n + 1)).toNat

end

end A151868.P10979103017103225637

/-! ## A151868.P6178154114962892145

`A005843(A151867(n+1)+A151867(n))`
-/

namespace A151868.P6178154114962892145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A151867 (n + 1) + A151867 n).toNat

end

end A151868.P6178154114962892145

/-! ## A151868.P17910293027911554044

`A005408(A151867(n+1)+A151867(n))-1`
-/

namespace A151868.P17910293027911554044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A151867 (n + 1) + A151867 n).toNat - 1

end

end A151868.P17910293027911554044

/-! ## A151868.P4472125697488716988

`A008586(A151867(n+1)+A151867(n))/2`
-/

namespace A151868.P4472125697488716988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008586 (A151867 (n + 1) + A151867 n).toNat : ℚ) / 2

end

end A151868.P4472125697488716988

/-! ## A151868.P2288174022992488796

`A008588(A151867(n+1)+A151867(n))/3`
-/

namespace A151868.P2288174022992488796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008588 (A151867 (n + 1) + A151867 n).toNat : ℚ) / 3

end

end A151868.P2288174022992488796

/-! ## A151868.P9758080620297074182

`A020742(A151867(n+1)+A151867(n))-7`
-/

namespace A151868.P9758080620297074182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (A151867 (n + 1) + A151867 n).toNat - 7

end

end A151868.P9758080620297074182

/-! ## A151868.P2110518466183157634

`lcm(2, A022998(A151867(n+1)+A151867(n)))`
-/

namespace A151868.P2110518466183157634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A022998 (A151867 (n + 1) + A151867 n).toNat)

end

end A151868.P2110518466183157634

/-!
# A151869: a(0)=0; a(1)=1; a(2)=2; for n>=3 if n=2^i + j with 0<=j

The programs for A151869, there is no canonical definition to state claims against.
-/

/-! ## A151869.P2784394720778323482

`A151867(n)+A151705(n)`
-/

namespace A151869.P2784394720778323482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151867 n + A151705 n

end

end A151869.P2784394720778323482

/-! ## A151869.P16837892031111341977

`A151873(n)-A151706(n)`
-/

namespace A151869.P16837892031111341977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151873 n - A151706 n

end

end A151869.P16837892031111341977

/-! ## A151869.P855981494810520114

`A151705(n)+A151871(n)-A151706(n)`
-/

namespace A151869.P855981494810520114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151705 n + (A151871 n - A151706 n)

end

end A151869.P855981494810520114

/-! ## A151869.P14805104206927671813

`A151705(n)+A151873(n)-A151707(n)`
-/

namespace A151869.P14805104206927671813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151705 n + (A151873 n - A151707 n)

end

end A151869.P14805104206927671813

/-! ## A151869.P16146713698113100417

`A151707(n)+A151867(n)-A151706(n)`
-/

namespace A151869.P16146713698113100417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151707 n + (A151867 n - A151706 n)

end

end A151869.P16146713698113100417

/-! ## A151869.P2057770014810719693

`A151708(n)+A151867(n)-A151707(n)`
-/

namespace A151869.P2057770014810719693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151708 n + (A151867 n - A151707 n)

end

end A151869.P2057770014810719693

/-! ## A151869.P6745464567563768640

`A151867(n)+A151873(n)-A151871(n)`
-/

namespace A151869.P6745464567563768640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151867 n + (A151873 n - A151871 n)

end

end A151869.P6745464567563768640

/-! ## A151869.P1256716737795576271

`A151705(n)+A151705(n)+A151871(n)-A151707(n)`
-/

namespace A151869.P1256716737795576271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151705 n + (A151705 n + (A151871 n - A151707 n))

end

end A151869.P1256716737795576271

/-! ## A151869.P16018977002014239988

`A151707(n)+A151871(n)-A151706(n)-A151706(n)`
-/

namespace A151869.P16018977002014239988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151707 n + (A151871 n - A151706 n) - A151706 n

end

end A151869.P16018977002014239988

/-! ## A151869.P12988840109934304500

`A151705(n)+A151871(n)-(A151708(n)-2*A151705(n))`
-/

namespace A151869.P12988840109934304500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151705 n + (A151871 n - (A151708 n - 2 * A151705 n))

end

end A151869.P12988840109934304500

/-!
# A151870: If A151869 is regarded as a triangle then the rows converge to this sequence.

The programs for A151870, there is no canonical definition to state claims against.
-/

/-! ## A151870.P5797188445420583615

`2*(A151869(n+1)+A151869(n))`
-/

namespace A151870.P5797188445420583615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A151869 (n + 1) + A151869 n)

end

end A151870.P5797188445420583615

/-! ## A151870.P3602965504378646998

`A151869(A206332(n+1))`
-/

namespace A151870.P3602965504378646998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151869 (A206332 (n + 1)).toNat

end

end A151870.P3602965504378646998

/-! ## A151870.P1364714620483257521

`A151868(n)+A151705(A206332(n+1))`
-/

namespace A151870.P1364714620483257521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151868 n + A151705 (A206332 (n + 1)).toNat

end

end A151870.P1364714620483257521

/-! ## A151870.P287140928034267132

`A151874(n)-A151706(A206332(n+1))`
-/

namespace A151870.P287140928034267132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151874 n - A151706 (A206332 (n + 1)).toNat

end

end A151870.P287140928034267132

/-! ## A151870.P16049777172037878429

`A151868(n)+A151705(A132196(2*n+1))`
-/

namespace A151870.P16049777172037878429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151868 n + A151705 (A132196 (2 * n + 1)).toNat

end

end A151870.P16049777172037878429

/-! ## A151870.P9023249131538098843

`2*(A151873(n+1)+A151873(n))-A151706(A206332(n+1))`
-/

namespace A151870.P9023249131538098843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A151873 (n + 1) + A151873 n) - A151706 (A206332 (n + 1)).toNat

end

end A151870.P9023249131538098843

/-! ## A151870.P9156291243507785545

`A004277(A151869(n+1)+A151869(n))`
-/

namespace A151870.P9156291243507785545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151869 (n + 1) + A151869 n).toNat

end

end A151870.P9156291243507785545

/-! ## A151870.P1766971853995169551

`A005843(A151869(n+1)+A151869(n))`
-/

namespace A151870.P1766971853995169551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A151869 (n + 1) + A151869 n).toNat

end

end A151870.P1766971853995169551

/-! ## A151870.P11783198537174647548

`A004273(A151869(n+1)+A151869(n))+1`
-/

namespace A151870.P11783198537174647548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A151869 (n + 1) + A151869 n).toNat + 1

end

end A151870.P11783198537174647548

/-! ## A151870.P2289847683716470421

`A005408(A151869(n+1)+A151869(n))-1`
-/

namespace A151870.P2289847683716470421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A151869 (n + 1) + A151869 n).toNat - 1

end

end A151870.P2289847683716470421

/-! ## A151870.P9487518017191409058

`A008574(A151869(n+1)+A151869(n))/2`
-/

namespace A151870.P9487518017191409058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A151869 (n + 1) + A151869 n).toNat : ℚ) / 2

end

end A151870.P9487518017191409058

/-! ## A151870.P1024946233314685228

`A008586(A151869(n+1)+A151869(n))/2`
-/

namespace A151870.P1024946233314685228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008586 (A151869 (n + 1) + A151869 n).toNat : ℚ) / 2

end

end A151870.P1024946233314685228

/-!
# A151871: a(0)=1; a(1)=0; a(2)=2; for n>=3 if n=2^i + j with 0<=j

The programs for A151871, there is no canonical definition to state claims against.
-/

/-! ## A151871.P2714981037175406114

`A151867(n)+A151706(n)`
-/

namespace A151871.P2714981037175406114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151867 n + A151706 n

end

end A151871.P2714981037175406114

/-! ## A151871.P1953381231282667073

`A151873(n)-A151705(n)`
-/

namespace A151871.P1953381231282667073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151873 n - A151705 n

end

end A151871.P1953381231282667073

/-! ## A151871.P14594820244011455099

`A151706(n)+A151869(n)-A151705(n)`
-/

namespace A151871.P14594820244011455099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151706 n + (A151869 n - A151705 n)

end

end A151871.P14594820244011455099

/-! ## A151871.P16987359657286474210

`A151706(n)+A151873(n)-A151707(n)`
-/

namespace A151871.P16987359657286474210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151706 n + (A151873 n - A151707 n)

end

end A151871.P16987359657286474210

/-! ## A151871.P9120691269262255678

`A151707(n)+A151867(n)-A151705(n)`
-/

namespace A151871.P9120691269262255678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151707 n + (A151867 n - A151705 n)

end

end A151871.P9120691269262255678

/-! ## A151871.P12578571029797935283

`A151867(n)+A151873(n)-A151869(n)`
-/

namespace A151871.P12578571029797935283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151867 n + (A151873 n - A151869 n)

end

end A151871.P12578571029797935283

/-! ## A151871.P8351091790702811829

`A151867(n)+2*A151707(n)-A151708(n)`
-/

namespace A151871.P8351091790702811829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151867 n + (2 * A151707 n - A151708 n)

end

end A151871.P8351091790702811829

/-! ## A151871.P14238014960452764638

`A151706(n)+A151869(n)%A151705(A028310(n))`
-/

namespace A151871.P14238014960452764638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151706 n + Int.tmod (A151869 n) (A151705 (A028310 n).toNat)

end

end A151871.P14238014960452764638

/-! ## A151871.P14420311106598504603

`A151706(n)+A151869(n)+A151706(n)-A151707(n)`
-/

namespace A151871.P14420311106598504603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151706 n + (A151869 n + A151706 n - A151707 n)

end

end A151871.P14420311106598504603

/-! ## A151871.P2373339676973926415

`A151707(n)+A151869(n)-A151705(n)-A151705(n)`
-/

namespace A151871.P2373339676973926415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151707 n + (A151869 n - A151705 n) - A151705 n

end

end A151871.P2373339676973926415

/-!
# A151872: If A151871 is regarded as a triangle then the rows converge to this sequence.

The programs for A151872, there is no canonical definition to state claims against.
-/

/-! ## A151872.P6738657991746463290

`2*(A151871(n+1)+A151871(n))`
-/

namespace A151872.P6738657991746463290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A151871 (n + 1) + A151871 n)

end

end A151872.P6738657991746463290

/-! ## A151872.P3770422354536271506

`A151871(A206332(n+1))`
-/

namespace A151872.P3770422354536271506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151871 (A206332 (n + 1)).toNat

end

end A151872.P3770422354536271506

/-! ## A151872.P9903143382725304738

`A151871(A004755(n+1)-1)`
-/

namespace A151872.P9903143382725304738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151871 (A004755 (n + 1) - 1).toNat

end

end A151872.P9903143382725304738

/-! ## A151872.P12076476229435287326

`A151868(n)+A151706(A206332(n+1))`
-/

namespace A151872.P12076476229435287326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151868 n + A151706 (A206332 (n + 1)).toNat

end

end A151872.P12076476229435287326

/-! ## A151872.P12140093553686946923

`A151868(n)+A151706(A132196(2*n+1))`
-/

namespace A151872.P12140093553686946923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151868 n + A151706 (A132196 (2 * n + 1)).toNat

end

end A151872.P12140093553686946923

/-! ## A151872.P10799030949229970554

`A004277(A151871(n+1)+A151871(n))`
-/

namespace A151872.P10799030949229970554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151871 (n + 1) + A151871 n).toNat

end

end A151872.P10799030949229970554

/-! ## A151872.P10809030440275056356

`A005843(A151871(n+1)+A151871(n))`
-/

namespace A151872.P10809030440275056356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A151871 (n + 1) + A151871 n).toNat

end

end A151872.P10809030440275056356

/-! ## A151872.P11522471195166471000

`A004275(A151871(n+1)+A151871(n)+1)`
-/

namespace A151872.P11522471195166471000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A151871 (n + 1) + A151871 n + 1).toNat

end

end A151872.P11522471195166471000

/-! ## A151872.P6419204808251073635

`A004273(A151871(n+1)+A151871(n))+1`
-/

namespace A151872.P6419204808251073635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A151871 (n + 1) + A151871 n).toNat + 1

end

end A151872.P6419204808251073635

/-! ## A151872.P844752424066634508

`A005408(A151871(n+1)+A151871(n))-1`
-/

namespace A151872.P844752424066634508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A151871 (n + 1) + A151871 n).toNat - 1

end

end A151872.P844752424066634508

/-! ## A151872.P15052089831319142198

`A022144(A151871(n+1)+A151871(n))/4`
-/

namespace A151872.P15052089831319142198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022144 (A151871 (n + 1) + A151871 n).toNat : ℚ) / 4

end

end A151872.P15052089831319142198

/-!
# A151873: a(0)=1; a(1)=1; a(2)=4; for n>=3 if n=2^i + j with 0<=j

The programs for A151873, there is no canonical definition to state claims against.
-/

/-! ## A151873.P4452619024142454819

`A151867(n)+A151707(n)`
-/

namespace A151873.P4452619024142454819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151867 n + A151707 n

end

end A151873.P4452619024142454819

/-! ## A151873.P12514824647814687432

`A151869(n)+A151706(n)`
-/

namespace A151873.P12514824647814687432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151869 n + A151706 n

end

end A151873.P12514824647814687432

/-! ## A151873.P2407651667049642554

`A151871(n)+A151705(n)`
-/

namespace A151873.P2407651667049642554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151871 n + A151705 n

end

end A151873.P2407651667049642554

/-! ## A151873.P16833880132979376658

`A151705(n)+A151867(n)+A151706(n)`
-/

namespace A151873.P16833880132979376658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151705 n + (A151867 n + A151706 n)

end

end A151873.P16833880132979376658

/-! ## A151873.P15791674542323395629

`A151707(n)+A151869(n)-A151705(n)`
-/

namespace A151873.P15791674542323395629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151707 n + (A151869 n - A151705 n)

end

end A151873.P15791674542323395629

/-! ## A151873.P4167827337146446912

`A151707(n)+A151871(n)-A151706(n)`
-/

namespace A151873.P4167827337146446912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151707 n + (A151871 n - A151706 n)

end

end A151873.P4167827337146446912

/-! ## A151873.P7216793768171991780

`A151708(n)+A151871(n)-A151707(n)`
-/

namespace A151873.P7216793768171991780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151708 n + (A151871 n - A151707 n)

end

end A151873.P7216793768171991780

/-! ## A151873.P5225976690639597747

`A151869(n)+A151871(n)-A151867(n)`
-/

namespace A151873.P5225976690639597747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151869 n + (A151871 n - A151867 n)

end

end A151873.P5225976690639597747

/-!
# A151874: If A151873 is regarded as a triangle then the rows converge to this sequence.

The programs for A151874, there is no canonical definition to state claims against.
-/

/-! ## A151874.P788744020965572132

`A151870(n)+A151872(n)-A151868(n)`
-/

namespace A151874.P788744020965572132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151870 n + (A151872 n - A151868 n)

end

end A151874.P788744020965572132

/-! ## A151874.P8019955655005458116

`2*(A151873(n+1)+A151873(n))`
-/

namespace A151874.P8019955655005458116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A151873 (n + 1) + A151873 n)

end

end A151874.P8019955655005458116

/-! ## A151874.P11514761760571388925

`A151873(A206332(n+1))`
-/

namespace A151874.P11514761760571388925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151873 (A206332 (n + 1)).toNat

end

end A151874.P11514761760571388925

/-! ## A151874.P10268580903406345752

`A151868(n)+A151707(A206332(n+1))`
-/

namespace A151874.P10268580903406345752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151868 n + A151707 (A206332 (n + 1)).toNat

end

end A151874.P10268580903406345752

/-! ## A151874.P15179075045242161491

`A151870(n)+A151706(A206332(n+1))`
-/

namespace A151874.P15179075045242161491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151870 n + A151706 (A206332 (n + 1)).toNat

end

end A151874.P15179075045242161491

/-! ## A151874.P11787504053831534601

`A151868(n)+A151707(A132196(2*n+1))`
-/

namespace A151874.P11787504053831534601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151868 n + A151707 (A132196 (2 * n + 1)).toNat

end

end A151874.P11787504053831534601

/-! ## A151874.P16911863493160551357

`A005843(A151873(n+1)+A151873(n))`
-/

namespace A151874.P16911863493160551357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A151873 (n + 1) + A151873 n).toNat

end

end A151874.P16911863493160551357

/-! ## A151874.P764531524336698245

`A005408(A151873(n+1)+A151873(n))-1`
-/

namespace A151874.P764531524336698245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A151873 (n + 1) + A151873 n).toNat - 1

end

end A151874.P764531524336698245

/-!
# A151876: Weight distribution of [127,106,7] primitive binary BCH code.

The programs for A151876, there is no canonical definition to state claims against.
-/

/-! ## A151876.P12814157557934884627

`A151839(lt[and(n, Δ[-n²]), 3])`
-/

namespace A151876.P12814157557934884627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (f2 (n + 1) - f2 n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151839 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A151876.P12814157557934884627

/-! ## A151876.P17771374514346662026

`A151839(lt[or(n, floor(n/2))-n, 2])`
-/

namespace A151876.P17771374514346662026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151839 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A151876.P17771374514346662026

/-! ## A151876.P4685451267660337099

`A151839(or(a(n-1)+1, 2*n))` with `a(0)=1`
-/

namespace A151876.P4685451267660337099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151839 (Int.lor (a (n - 1) + 1) (2 * n : ℤ)).toNat

end

end A151876.P4685451267660337099

/-! ## A151876.P16600519377779591748

`A151839(A064689(n))`
-/

namespace A151876.P16600519377779591748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151839 (A064689 n).toNat

end

end A151876.P16600519377779591748

/-!
# A151877: Weight distribution of [127,113,5] primitive binary BCH code.

The programs for A151877, there is no canonical definition to state claims against.
-/

/-! ## A151877.P13470266716313839202

`A151811(∑[n]+and(-2, 2^n))`
-/

namespace A151877.P13470266716313839202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151811 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.land (-2) (2 ^ n : ℤ)).toNat

end

end A151877.P13470266716313839202

/-! ## A151877.P15690516729360093497

`A151811(xor(and(-2, 2^n), ∑[n]))`
-/

namespace A151877.P15690516729360093497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151811 (Int.xor (Int.land (-2) (2 ^ n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A151877.P15690516729360093497

/-!
# A151879: Produced by same formula that gives A000568 (unlabeled tournaments), but with LCM instead of GCD in the exponent.

The programs for A151879, there is no canonical definition to state claims against.
-/

/-! ## A151879.P6208833053272004944

`A000010(A280788(A000045(n)))`
-/

namespace A151879.P6208833053272004944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A280788 (A000045 n).toNat).toNat

end

end A151879.P6208833053272004944

/-! ## A151879.P3297129977030828705

`A285879(A000272(n)+A000196(n))`
-/

namespace A151879.P3297129977030828705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285879 (A000272 n + A000196 n).toNat

end

end A151879.P3297129977030828705

/-! ## A151879.P8250375680198394664

`A285879(A067661(n)+A000272(n))`
-/

namespace A151879.P8250375680198394664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285879 (A067661 n + A000272 n).toNat

end

end A151879.P8250375680198394664

/-!
# A151881: Sum (number of cycles)^2 over all n! permutations of [1..n].

The programs for A151881, there is no canonical definition to state claims against.
-/

/-! ## A151881.P6006848077200495501

`abs(A081051(n+1)-A081052(n+1))`
-/

namespace A151881.P6006848077200495501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081051 (n + 1) - A081052 (n + 1)|

end

end A151881.P6006848077200495501

/-! ## A151881.P15205745545036196232

`A000254(n)+A000254(n)+n!+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A151881.P15205745545036196232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000254 n + (A000254 n + ((Nat.factorial n : ℤ) + (n + 1 : ℤ) * a (n - 1)))

end

end A151881.P15205745545036196232

/-!
# A151882: Let g be a permutation of [1..n] having say j_i cycles of length i, with Sum_i i*j_i = n; sequence gives Sum_g Sum_i (j_i)^2.

The programs for A151882, there is no canonical definition to state claims against.
-/

/-! ## A151882.P2122319764834681239

`A151884(n+1)+A151883(n+1)`
-/

namespace A151882.P2122319764834681239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151884 (n + 1) + A151883 (n + 1)

end

end A151882.P2122319764834681239

/-! ## A151882.P2022572213575525884

`A175126(A003056(n)*A334395(n+1))+A151884(n+1)`
-/

namespace A151882.P2022572213575525884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A003056 n * A334395 (n + 1)).toNat + A151884 (n + 1)

end

end A151882.P2022572213575525884

/-!
# A151883: Let g be a permutation of [1..n] having say j_i cycles of length i, with Sum_i i*j_i = n; sequence gives Sum_g Sum_{i even} (j_i)^2.

The programs for A151883, there is no canonical definition to state claims against.
-/

/-! ## A151883.P4288959261649360254

`A151882(n+1)-A151884(n+1)`
-/

namespace A151883.P4288959261649360254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151882 (n + 1) - A151884 (n + 1)

end

end A151883.P4288959261649360254

/-! ## A151883.P11675663730124755873

`A151882(gcd(n, n+1)+n)%A151884(n+1)`
-/

namespace A151883.P11675663730124755873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151882 (Nat.gcd n (n + 1) + n)) (A151884 (n + 1))

end

end A151883.P11675663730124755873

/-! ## A151883.P18372944393376139643

`A151882(A000027(n+1))%A151884(n+1)`
-/

namespace A151883.P18372944393376139643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151882 (A000027 (n + 1)).toNat) (A151884 (n + 1))

end

end A151883.P18372944393376139643

/-! ## A151883.P11419664584024421743

`(A151909(n)+A151882(n+1))%A151884(n+1)`
-/

namespace A151883.P11419664584024421743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151909 n + A151882 (n + 1)) (A151884 (n + 1))

end

end A151883.P11419664584024421743

/-! ## A151883.P16415387622557070239

`A151882(A077342(n+1))%A151884(n+1)`
-/

namespace A151883.P16415387622557070239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151882 (A077342 (n + 1)).toNat) (A151884 (n + 1))

end

end A151883.P16415387622557070239

/-!
# A151884: Let g be a permutation of [1..n] having say j_i cycles of length i, with Sum_i i*j_i = n; sequence gives Sum_g Sum_{i odd} (j_i)^2.

The programs for A151884, there is no canonical definition to state claims against.
-/

/-! ## A151884.P13227192988895904238

`A151882(n+1)-A151883(n+1)`
-/

namespace A151884.P13227192988895904238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151882 (n + 1) - A151883 (n + 1)

end

end A151884.P13227192988895904238

/-! ## A151884.P14360681543878620984

`A151882(n+1)-A004525(A003056(n)*A037992(n))`
-/

namespace A151884.P14360681543878620984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151882 (n + 1) - A004525 (A003056 n * A037992 n).toNat

end

end A151884.P14360681543878620984

/-!
# A151885: Similar to the original toothpick sequence A139250, except that the rule is now: a toothpick changes state if its midpoint is adjacent to exactly one ON toothpick.

The programs for A151885, there is no canonical definition to state claims against.
-/

/-! ## A151885.P7553570962166345730

`a(n-1)+A151888(n)` with `a(0)=0`
-/

namespace A151885.P7553570962166345730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A151888 n

end

end A151885.P7553570962166345730

/-! ## A151885.P6046369724438202559

`∑[A151888(n)]`
-/

namespace A151885.P6046369724438202559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151885.P6046369724438202559

/-! ## A151885.P6280125227252902728

`∑[A151886(n)-A151887(n)]`
-/

namespace A151885.P6280125227252902728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151886 n - A151887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151885.P6280125227252902728

/-! ## A151885.P3463745810438786488

`A151886(2*n)/2`
-/

namespace A151885.P3463745810438786488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151886 (2 * n) : ℚ) / 2

end

end A151885.P3463745810438786488

/-! ## A151885.P12467884377631816043

`A151888(2*n)/2`
-/

namespace A151885.P12467884377631816043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151888 (2 * n) : ℚ) / 2

end

end A151885.P12467884377631816043

/-! ## A151885.P16092259932929708014

`A014682(A151888(2*n))`
-/

namespace A151885.P16092259932929708014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A151888 (2 * n)).toNat

end

end A151885.P16092259932929708014

/-! ## A151885.P11976616893353475343

`A175126(A151886(2*n))`
-/

namespace A151885.P11976616893353475343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A151886 (2 * n)).toNat

end

end A151885.P11976616893353475343

/-! ## A151885.P6775074594423407518

`abs(A001057(abs(A151888(2*n))))`
-/

namespace A151885.P6775074594423407518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A001057 |A151888 (2 * n)|.toNat)|

end

end A151885.P6775074594423407518

/-!
# A151886: Number of toothpicks turned ON at generation n in A151885.

The programs for A151886, there is no canonical definition to state claims against.
-/

/-! ## A151886.P11508173480403062495

`A151888(n)+A151887(n)`
-/

namespace A151886.P11508173480403062495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151888 n + A151887 n

end

end A151886.P11508173480403062495

/-! ## A151886.P15363295506383758565

`A151887(n)+Δ[A151885(A004273(n)-n)]`
-/

namespace A151886.P15363295506383758565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151885 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151887 n + (f1 (n + 1) - f1 n)

end

end A151886.P15363295506383758565

/-! ## A151886.P7278724258618007943

`A151887(n)+Δ[A151885(n-A057427(n))]`
-/

namespace A151886.P7278724258618007943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151885 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151887 n + (f1 (n + 1) - f1 n)

end

end A151886.P7278724258618007943

/-! ## A151886.P14268682692476323653

`A151887(n)-A008683(A088732(n))*A151888(n)`
-/

namespace A151886.P14268682692476323653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151887 n - A008683 (A088732 n).toNat * A151888 n

end

end A151886.P14268682692476323653

/-! ## A151886.P960643628882037038

`A151887(n)+A151885(n)-A151885(A004273(n)-n)`
-/

namespace A151886.P960643628882037038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151887 n + (A151885 n - A151885 (A004273 n - (n : ℤ)).toNat)

end

end A151886.P960643628882037038

/-!
# A151887: Number of toothpicks turned OFF at generation n in A151885.

The programs for A151887, there is no canonical definition to state claims against.
-/

/-! ## A151887.P5194863336980712269

`A151886(n)-A151888(n)`
-/

namespace A151887.P5194863336980712269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151886 n - A151888 n

end

end A151887.P5194863336980712269

/-! ## A151887.P6724791055464377416

`A151886(n)-Δ[A151885(A004273(n)-n)]`
-/

namespace A151887.P6724791055464377416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151885 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151886 n - (f1 (n + 1) - f1 n)

end

end A151887.P6724791055464377416

/-! ## A151887.P3127782543294898530

`A151886(n)-Δ[A151885(n-A057427(n))]`
-/

namespace A151887.P3127782543294898530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151885 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151886 n - (f1 (n + 1) - f1 n)

end

end A151887.P3127782543294898530

/-! ## A151887.P15464681208257698747

`A151886(n)+A151888(n)/A033999(2*n+3)`
-/

namespace A151887.P15464681208257698747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151886 n : ℚ) + (A151888 n : ℚ) / (A033999 (2 * n + 3) : ℚ)

end

end A151887.P15464681208257698747

/-! ## A151887.P860779716034240864

`A151886(n)-(A151885(n)-A151885(A004273(n)-n))`
-/

namespace A151887.P860779716034240864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151886 n - (A151885 n - A151885 (A004273 n - (n : ℤ)).toNat)

end

end A151887.P860779716034240864

/-! ## A151887.P6887319209812247094

`A151886(n)-(A151885(n)-A151885(n-A057427(n)))`
-/

namespace A151887.P6887319209812247094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151886 n - (A151885 n - A151885 ((n : ℤ) - A057427 n).toNat)

end

end A151887.P6887319209812247094

/-!
# A151888: Net increase in number of ON toothpicks at generation n in A151885.

The programs for A151888, there is no canonical definition to state claims against.
-/

/-! ## A151888.P8440615396130846560

`A151886(n)-A151887(n)`
-/

namespace A151888.P8440615396130846560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151886 n - A151887 n

end

end A151888.P8440615396130846560

/-! ## A151888.P4984033614867779308

`Δ[A151885(A004273(n)-n)]`
-/

namespace A151888.P4984033614867779308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151885 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151888.P4984033614867779308

/-! ## A151888.P6674672367656638428

`Δ[A151885(n-A057427(n))]`
-/

namespace A151888.P6674672367656638428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151885 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151888.P6674672367656638428

/-! ## A151888.P3625457077406855284

`Δ[A151885(A004526(A004273(n)))]`
-/

namespace A151888.P3625457077406855284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151885 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151888.P3625457077406855284

/-! ## A151888.P12093631102177795246

`Δ[A151885(A175126(A004275(n)))]`
-/

namespace A151888.P12093631102177795246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151885 (A175126 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151888.P12093631102177795246

/-! ## A151888.P14196383118748951966

`A151885(n)-A151885(A004273(n)-n)`
-/

namespace A151888.P14196383118748951966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151885 n - A151885 (A004273 n - (n : ℤ)).toNat

end

end A151888.P14196383118748951966

/-! ## A151888.P6965404053913821649

`A151885(n)-A151885(n-A057427(n))`
-/

namespace A151888.P6965404053913821649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151885 n - A151885 ((n : ℤ) - A057427 n).toNat

end

end A151888.P6965404053913821649

/-!
# A151889: a(1)=2, a(2)=3; a(2k-1)=2a(2k-2)+a(2k-3), a(2k)=3a(2k-2)+2a(2k-3), k >= 2.

The programs for A151889, the canonical program `A151889.P3310195681120347904` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151889 has offset 1).

The definition of A151889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151889.P6560412158685068786

`round(ϕ^3*a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A151889.P6560412158685068786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 3 * (a (n - 2) : ℝ))

end

end A151889.P6560412158685068786

namespace A151889

/-- `round(ϕ^3*a(n-2))` -/
def P6560412158685068786.Spec : Prop :=
  ∀ n, P6560412158685068786.a n = A151889 (n + 1)

end A151889

/-! ## A151889.P4577436258320764616

`ogf((2+3x+x^3)/(1-4x^2-x^4))`
-/

namespace A151889.P4577436258320764616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 0, 1] [1, 0, -4, 0, -1] n

end

end A151889.P4577436258320764616

namespace A151889

/-- `ogf((2+3x+x^3)/(1-4x^2-x^4))` -/
def P4577436258320764616.Spec : Prop :=
  ∀ n, P4577436258320764616.a n = A151889 (n + 1)

end A151889

/-! ## A151889.P3310195681120347904

`2*a(n-1)%a(n-2)+3*a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A151889

/-- `2*a(n-1)%a(n-2)+3*a(n-2)` -/
def P3310195681120347904.Spec : Prop :=
  ∀ n, (P3310195681120347904.a n : ℤ) = A151889 (n + 1)

theorem P3310195681120347904.correct : P3310195681120347904.Spec := by
  intro n
  simp only [A151889, Nat.add_sub_cancel]

end A151889

/-! ## A151889.P1386092895243104811

`A103609(3*(n+2))`
-/

namespace A151889.P1386092895243104811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (3 * (n + 2))

end

end A151889.P1386092895243104811

namespace A151889

/-- `A103609(3*(n+2))` -/
def P1386092895243104811.Spec : Prop :=
  ∀ n, P1386092895243104811.a n = A151889 (n + 1)

end A151889

/-! ## A151889.P7106935448596493022

`A097575(6*(n+1))`
-/

namespace A151889.P7106935448596493022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097575 (6 * (n + 1))

end

end A151889.P7106935448596493022

namespace A151889

/-- `A097575(6*(n+1))` -/
def P7106935448596493022.Spec : Prop :=
  ∀ n, P7106935448596493022.a n = A151889 (n + 1)

end A151889

/-! ## A151889.P1738876953073085705

`record[Δ[A111466(n+2)]]`
-/

namespace A151889.P1738876953073085705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111466 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151889.P1738876953073085705

namespace A151889

/-- `record[Δ[A111466(n+2)]]` -/
def P1738876953073085705.Spec : Prop :=
  ∀ n, P1738876953073085705.a n = A151889 (n + 1)

end A151889

/-! ## A151889.P8077123104333388281

`A000045(∑[gcd(2, n)]+1)`
-/

namespace A151889.P8077123104333388281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A151889.P8077123104333388281

namespace A151889

/-- `A000045(∑[gcd(2, n)]+1)` -/
def P8077123104333388281.Spec : Prop :=
  ∀ n, P8077123104333388281.a n = A151889 (n + 1)

end A151889

/-! ## A151889.P12721845458270321979

`A000045(comp[3*n]+2)`
-/

namespace A151889.P12721845458270321979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A151889.P12721845458270321979

namespace A151889

/-- `A000045(comp[3*n]+2)` -/
def P12721845458270321979.Spec : Prop :=
  ∀ n, P12721845458270321979.a n = A151889 (n + 1)

end A151889

/-! ## A151889.P6829182052055896124

`A107363(3*(n+1)+1)`
-/

namespace A151889.P6829182052055896124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107363 (3 * (n + 1) + 1)

end

end A151889.P6829182052055896124

namespace A151889

/-- `A107363(3*(n+1)+1)` -/
def P6829182052055896124.Spec : Prop :=
  ∀ n, P6829182052055896124.a n = A151889 (n + 1)

end A151889

/-! ## A151889.P4029967369145654682

`A131524(3*(n+1))+1`
-/

namespace A151889.P4029967369145654682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (3 * (n + 1)) + 1

end

end A151889.P4029967369145654682

namespace A151889

/-- `A131524(3*(n+1))+1` -/
def P4029967369145654682.Spec : Prop :=
  ∀ n, P4029967369145654682.a n = A151889 (n + 1)

end A151889

/-! ## A151889.P4566642844302896500

`record[A000045((n+2)%3+n+1)]`
-/

namespace A151889.P4566642844302896500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((n + 2) % 3 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151889.P4566642844302896500

namespace A151889

/-- `record[A000045((n+2)%3+n+1)]` -/
def P4566642844302896500.Spec : Prop :=
  ∀ n, P4566642844302896500.a n = A151889 (n + 1)

end A151889

/-! ## A151889.P15009216695646749884

`A020695(A032766(n))`
-/

namespace A151889.P15009216695646749884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (A032766 n).toNat

end

end A151889.P15009216695646749884

namespace A151889

/-- `A020695(A032766(n))` -/
def P15009216695646749884.Spec : Prop :=
  ∀ n, P15009216695646749884.a n = A151889 (n + 1)

end A151889

/-! ## A151889.P17196097385480582745

`A097637(A142241(n))`
-/

namespace A151889.P17196097385480582745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097637 (A142241 n).toNat

end

end A151889.P17196097385480582745

namespace A151889

/-- `A097637(A142241(n))` -/
def P17196097385480582745.Spec : Prop :=
  ∀ n, P17196097385480582745.a n = A151889 (n + 1)

end A151889

/-! ## A151889.P14136074486621985820

`A097637(A348845(n))`
-/

namespace A151889.P14136074486621985820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097637 (A348845 n).toNat

end

end A151889.P14136074486621985820

namespace A151889

/-- `A097637(A348845(n))` -/
def P14136074486621985820.Spec : Prop :=
  ∀ n, P14136074486621985820.a n = A151889 (n + 1)

end A151889

/-! ## A151889.P5386038051991965482

`A053602(A047270(n+1))`
-/

namespace A151889.P5386038051991965482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A047270 (n + 1)).toNat

end

end A151889.P5386038051991965482

namespace A151889

/-- `A053602(A047270(n+1))` -/
def P5386038051991965482.Spec : Prop :=
  ∀ n, P5386038051991965482.a n = A151889 (n + 1)

end A151889

/-! ## A151889.P14071981584179839737

`A103610(A017557(n+1))`
-/

namespace A151889.P14071981584179839737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 (A017557 (n + 1)).toNat

end

end A151889.P14071981584179839737

namespace A151889

/-- `A103610(A017557(n+1))` -/
def P14071981584179839737.Spec : Prop :=
  ∀ n, P14071981584179839737.a n = A151889 (n + 1)

end A151889

/-! ## A151889.P1931834827356281865

`A103610(A017593(n+1))`
-/

namespace A151889.P1931834827356281865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 (A017593 (n + 1)).toNat

end

end A151889.P1931834827356281865

namespace A151889

/-- `A103610(A017593(n+1))` -/
def P1931834827356281865.Spec : Prop :=
  ∀ n, P1931834827356281865.a n = A151889 (n + 1)

end A151889

/-! ## A151889.P17675169533447922381

`A103610(A017629(n+1))`
-/

namespace A151889.P17675169533447922381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 (A017629 (n + 1)).toNat

end

end A151889.P17675169533447922381

namespace A151889

/-- `A103610(A017629(n+1))` -/
def P17675169533447922381.Spec : Prop :=
  ∀ n, P17675169533447922381.a n = A151889 (n + 1)

end A151889

/-! ## A151889.P12641285368284591078

`A096748(A047235(n+1))`
-/

namespace A151889.P12641285368284591078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (A047235 (n + 1)).toNat

end

end A151889.P12641285368284591078

namespace A151889

/-- `A096748(A047235(n+1))` -/
def P12641285368284591078.Spec : Prop :=
  ∀ n, P12641285368284591078.a n = A151889 (n + 1)

end A151889

/-! ## A151889.P8564717934536221595

`A102875(A168198(n+1))`
-/

namespace A151889.P8564717934536221595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102875 (A168198 (n + 1)).toNat

end

end A151889.P8564717934536221595

namespace A151889

/-- `A102875(A168198(n+1))` -/
def P8564717934536221595.Spec : Prop :=
  ∀ n, P8564717934536221595.a n = A151889 (n + 1)

end A151889

/-!
# A151890: Triangle read by rows: T(l,c) = 2*l*c + l + c (0 <= c <= l).

The programs for A151890, the canonical program `A151890.P12585172383525440924` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151890 has offset 0).

The definition of A151890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151890.P17893924306199593477

`A244418(n+1)-1`
-/

namespace A151890.P17893924306199593477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244418 (n + 1) - 1

end

end A151890.P17893924306199593477

namespace A151890

/-- `A244418(n+1)-1` -/
def P17893924306199593477.Spec : Prop :=
  ∀ n, P17893924306199593477.a n = A151890 n

end A151890

/-! ## A151890.P12585172383525440924

`floor(A143218(n+1)/2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A151890

/-- `floor(A143218(n+1)/2)` -/
def P12585172383525440924.Spec : Prop :=
  ∀ n, P12585172383525440924.a n = A151890 n

theorem P12585172383525440924.correct : P12585172383525440924.Spec := by
  intro n
  simp only [A151890]

end A151890

/-! ## A151890.P13353560687263774771

`A330613(A038722(n+1))-1`
-/

namespace A151890.P13353560687263774771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330613 (A038722 (n + 1)).toNat - 1

end

end A151890.P13353560687263774771

namespace A151890

/-- `A330613(A038722(n+1))-1` -/
def P13353560687263774771.Spec : Prop :=
  ∀ n, P13353560687263774771.a n = A151890 n

end A151890

/-! ## A151890.P5935921121059583469

`A330613(A061579(n)+1)-1`
-/

namespace A151890.P5935921121059583469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330613 (A061579 n + 1).toNat - 1

end

end A151890.P5935921121059583469

namespace A151890

/-- `A330613(A061579(n)+1)-1` -/
def P5935921121059583469.Spec : Prop :=
  ∀ n, P5935921121059583469.a n = A151890 n

end A151890

/-! ## A151890.P13738706484371630873

`A223544(n+1)+A079904(n)`
-/

namespace A151890.P13738706484371630873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223544 (n + 1) + A079904 n

end

end A151890.P13738706484371630873

namespace A151890

/-- `A223544(n+1)+A079904(n)` -/
def P13738706484371630873.Spec : Prop :=
  ∀ n, P13738706484371630873.a n = A151890 n

end A151890

/-! ## A151890.P1682294926684284874

`A051162(n)+2*A079904(n)`
-/

namespace A151890.P1682294926684284874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + 2 * A079904 n

end

end A151890.P1682294926684284874

namespace A151890

/-- `A051162(n)+2*A079904(n)` -/
def P1682294926684284874.Spec : Prop :=
  ∀ n, P1682294926684284874.a n = A151890 n

end A151890

/-! ## A151890.P11995275368700428485

`A292564(n)-2*A091435(n)`
-/

namespace A151890.P11995275368700428485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292564 n - 2 * A091435 n

end

end A151890.P11995275368700428485

namespace A151890

/-- `A292564(n)-2*A091435(n)` -/
def P11995275368700428485.Spec : Prop :=
  ∀ n, P11995275368700428485.a n = A151890 n

end A151890

/-! ## A151890.P12437236951949508592

`A144204(n+1)+A075362(n+1)`
-/

namespace A151890.P12437236951949508592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144204 (n + 1) + A075362 (n + 1)

end

end A151890.P12437236951949508592

namespace A151890

/-- `A144204(n+1)+A075362(n+1)` -/
def P12437236951949508592.Spec : Prop :=
  ∀ n, P12437236951949508592.a n = A151890 n

end A151890

/-! ## A151890.P14361098649648142131

`A079297(n+1)-A002260(n+1)`
-/

namespace A151890.P14361098649648142131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079297 (n + 1) - A002260 (n + 1)

end

end A151890.P14361098649648142131

namespace A151890

/-- `A079297(n+1)-A002260(n+1)` -/
def P14361098649648142131.Spec : Prop :=
  ∀ n, P14361098649648142131.a n = A151890 n

end A151890

/-! ## A151890.P15069685386439636289

`A127780(n+1)-A002024(n+1)`
-/

namespace A151890.P15069685386439636289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127780 (n + 1) - A002024 (n + 1)

end

end A151890.P15069685386439636289

namespace A151890

/-- `A127780(n+1)-A002024(n+1)` -/
def P15069685386439636289.Spec : Prop :=
  ∀ n, P15069685386439636289.a n = A151890 n

end A151890

/-! ## A151890.P9658932103374965067

`A127780(n+1)-(A003056(n)+1)`
-/

namespace A151890.P9658932103374965067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127780 (n + 1) - (A003056 n + 1)

end

end A151890.P9658932103374965067

namespace A151890

/-- `A127780(n+1)-(A003056(n)+1)` -/
def P9658932103374965067.Spec : Prop :=
  ∀ n, P9658932103374965067.a n = A151890 n

end A151890

/-! ## A151890.P12108540536118604642

`A075362(n+1)+A079904(n)-1`
-/

namespace A151890.P12108540536118604642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) + (A079904 n - 1)

end

end A151890.P12108540536118604642

namespace A151890

/-- `A075362(n+1)+A079904(n)-1` -/
def P12108540536118604642.Spec : Prop :=
  ∀ n, P12108540536118604642.a n = A151890 n

end A151890

/-! ## A151890.P6995223576289204979

`A154684(n+1)-A131421(n+1)`
-/

namespace A151890.P6995223576289204979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) - A131421 (n + 1)

end

end A151890.P6995223576289204979

namespace A151890

/-- `A154684(n+1)-A131421(n+1)` -/
def P6995223576289204979.Spec : Prop :=
  ∀ n, P6995223576289204979.a n = A151890 n

end A151890

/-! ## A151890.P3399517998474296325

`A182491(n+1)-A215630(n+1)`
-/

namespace A151890.P3399517998474296325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182491 (n + 1) - A215630 (n + 1)

end

end A151890.P3399517998474296325

namespace A151890

/-- `A182491(n+1)-A215630(n+1)` -/
def P3399517998474296325.Spec : Prop :=
  ∀ n, P3399517998474296325.a n = A151890 n

end A151890

/-! ## A151890.P11048555181518585483

`A143218(n+1)%A244418(n+1)`
-/

namespace A151890.P11048555181518585483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143218 (n + 1)) (A244418 (n + 1))

end

end A151890.P11048555181518585483

namespace A151890

/-- `A143218(n+1)%A244418(n+1)` -/
def P11048555181518585483.Spec : Prop :=
  ∀ n, P11048555181518585483.a n = A151890 n

end A151890

/-! ## A151890.P6832034140407262585

`A154680(n+1)-(A131421(n+1)+1)`
-/

namespace A151890.P6832034140407262585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154680 (n + 1) - (A131421 (n + 1) + 1)

end

end A151890.P6832034140407262585

namespace A151890

/-- `A154680(n+1)-(A131421(n+1)+1)` -/
def P6832034140407262585.Spec : Prop :=
  ∀ n, P6832034140407262585.a n = A151890 n

end A151890

/-! ## A151890.P6119554932733189732

`A076110(n+1)+A223544(n+1)-1`
-/

namespace A151890.P6119554932733189732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) + (A223544 (n + 1) - 1)

end

end A151890.P6119554932733189732

namespace A151890

/-- `A076110(n+1)+A223544(n+1)-1` -/
def P6119554932733189732.Spec : Prop :=
  ∀ n, P6119554932733189732.a n = A151890 n

end A151890

/-! ## A151890.P7964560888281822865

`A108872(n+1)+2*A144204(n+1)`
-/

namespace A151890.P7964560888281822865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) + 2 * A144204 (n + 1)

end

end A151890.P7964560888281822865

namespace A151890

/-- `A108872(n+1)+2*A144204(n+1)` -/
def P7964560888281822865.Spec : Prop :=
  ∀ n, P7964560888281822865.a n = A151890 n

end A151890

/-! ## A151890.P18071610080170340408

`2*A075362(n+1)-A108872(n+1)`
-/

namespace A151890.P18071610080170340408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075362 (n + 1) - A108872 (n + 1)

end

end A151890.P18071610080170340408

namespace A151890

/-- `2*A075362(n+1)-A108872(n+1)` -/
def P18071610080170340408.Spec : Prop :=
  ∀ n, P18071610080170340408.a n = A151890 n

end A151890

/-! ## A151890.P17145385763700276447

`A051162(n)+A051162(n)²-A069011(n)`
-/

namespace A151890.P17145385763700276447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + (A051162 n ^ 2 - A069011 n)

end

end A151890.P17145385763700276447

namespace A151890

/-- `A051162(n)+A051162(n)²-A069011(n)` -/
def P17145385763700276447.Spec : Prop :=
  ∀ n, P17145385763700276447.a n = A151890 n

end A151890

/-!
# A151891: a(n) = Pi(A113824(n+1)).

The programs for A151891, there is no canonical definition to state claims against.
-/

/-! ## A151891.P8846218374264222020

`record[A257062(a(n-1))²]` with `a(0)=2`
-/

namespace A151891.P8846218374264222020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A257062 (f1 (n - 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151891.P8846218374264222020

/-!
# A151892: Numbers m such that m! + (next prime after m!) is prime.

The programs for A151892, there is no canonical definition to state claims against.
-/

/-! ## A151892.P11431351864843153722

`eq[1, A151893(n+1)]+1`
-/

namespace A151892.P11431351864843153722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A151892.P11431351864843153722

/-! ## A151892.P17410978879953126528

`record[A000027(n+1)/A151893(n+1)]`
-/

namespace A151892.P17410978879953126528
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A151893 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151892.P17410978879953126528

/-! ## A151892.P14612602957153507855

`record[A028310(n+1)/A151893(n+1)]`
-/

namespace A151892.P14612602957153507855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) : ℚ) / (A151893 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151892.P14612602957153507855

/-! ## A151892.P14455753548562796181

`record[A089247(n+1)/A151893(n+1)]`
-/

namespace A151892.P14455753548562796181
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089247 (n + 1) : ℚ) / (A151893 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151892.P14455753548562796181

/-!
# A151894: Numbers k such that k! + second prime after k! is prime.

The programs for A151894, there is no canonical definition to state claims against.
-/

/-! ## A151894.P11570981331111198641

`record[A352629(∑[A083788(n+1)])]`
-/

namespace A151894.P11570981331111198641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083788 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352629 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151894.P11570981331111198641

/-! ## A151894.P6835517715986551970

`A261767(A253853(n))+A057354(3*n+4)`
-/

namespace A151894.P6835517715986551970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261767 (A253853 n).toNat + A057354 (3 * n + 4)

end

end A151894.P6835517715986551970

/-! ## A151894.P1105331797627432489

`eq[A076616(A341945(2*(n+2))), A329767(n)]`
-/

namespace A151894.P1105331797627432489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076616 (A341945 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151894.P1105331797627432489

/-!
# A151895: Number of ON cells after n generations of the cellular automaton on the square grid that is described in the Comments.

The programs for A151895, there is no canonical definition to state claims against.
-/

/-! ## A151895.P8156784816568163782

`∑[A151896(n)]`
-/

namespace A151895.P8156784816568163782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151895.P8156784816568163782

/-! ## A151895.P5904242574346269939

`∑{d}[A000079(n), A151896(log2(#))]`
-/

namespace A151895.P5904242574346269939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A151896 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A151895.P5904242574346269939

/-! ## A151895.P14496001723753546604

`A267190(A001222(2^n))`
-/

namespace A151895.P14496001723753546604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267190 (A001222 (2 ^ n)).toNat

end

end A151895.P14496001723753546604

/-! ## A151895.P7050686928238647525

`A267190(A052409(2^n))`
-/

namespace A151895.P7050686928238647525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267190 (A052409 (2 ^ n)).toNat

end

end A151895.P7050686928238647525

/-! ## A151895.P4162386556500912505

`A267190(n)%A057200(n+1)`
-/

namespace A151895.P4162386556500912505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267190 n) (A057200 (n + 1))

end

end A151895.P4162386556500912505

/-!
# A151896: Number of new cells turned ON at generation n in cellular automaton described in A151895.

The programs for A151896, there is no canonical definition to state claims against.
-/

/-! ## A151896.P1805359991978837719

`Δ[A151895(log2(A011782(n)))]`
-/

namespace A151896.P1805359991978837719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151895 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151896.P1805359991978837719

/-! ## A151896.P6680399543071412863

`Δ[A151895(A004273(n)-n)]`
-/

namespace A151896.P6680399543071412863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151895 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151896.P6680399543071412863

/-! ## A151896.P17621400671796942973

`Δ[A151895(A004526(A004273(n)))]`
-/

namespace A151896.P17621400671796942973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151895 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151896.P17621400671796942973

/-! ## A151896.P5106305310761734008

`A151895(n)-A151895(log2(A011782(n)))`
-/

namespace A151896.P5106305310761734008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151895 n - A151895 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A151896.P5106305310761734008

/-! ## A151896.P6935585998992522393

`A151895(n)-A151895(A004273(n)-n)`
-/

namespace A151896.P6935585998992522393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151895 n - A151895 (A004273 n - (n : ℤ)).toNat

end

end A151896.P6935585998992522393

/-! ## A151896.P8326897828315880570

`A151895(n)-A151895(A070804(A008578(n+1)))`
-/

namespace A151896.P8326897828315880570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151895 n - A151895 (A070804 (A008578 (n + 1)).toNat).toNat

end

end A151896.P8326897828315880570

/-!
# A151897: Number of subsets of {1, 2, ..., n} such that no member is a sum of distinct other members.

The programs for A151897, there is no canonical definition to state claims against.
-/

/-! ## A151897.P8503111438865964647

`∑[A365071(n)]+1`
-/

namespace A151897.P8503111438865964647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A151897.P8503111438865964647

/-! ## A151897.P2482903141703090903

`2^n-A364534(n)`
-/

namespace A151897.P2482903141703090903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A364534 n

end

end A151897.P2482903141703090903

/-! ## A151897.P2920152719936896459

`∑[A365071(A028310(n))]`
-/

namespace A151897.P2920152719936896459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365071 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151897.P2920152719936896459

/-! ## A151897.P11028811478494007923

`abs(A000079(n)-A364534(n))`
-/

namespace A151897.P11028811478494007923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A364534 n|

end

end A151897.P11028811478494007923

/-! ## A151897.P7527358122498670252

`∑[gcd(A130706(n), A365071(n))]`
-/

namespace A151897.P7527358122498670252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A365071 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151897.P7527358122498670252

/-! ## A151897.P386120265942384667

`A000225(n)+1-A364534(n)`
-/

namespace A151897.P386120265942384667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A364534 n)

end

end A151897.P386120265942384667

/-! ## A151897.P5677405682387124787

`lcm(A000079(n)-A364534(n), A033999(n))`
-/

namespace A151897.P5677405682387124787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n - A364534 n) (A033999 n)

end

end A151897.P5677405682387124787

/-! ## A151897.P3966253468373047708

`A007814(A006567(n+1))+A000079(n)-A364534(n)`
-/

namespace A151897.P3966253468373047708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006567 (n + 1)).toNat + (A000079 n - A364534 n)

end

end A151897.P3966253468373047708

/-! ## A151897.P1168866622232615120

`A007814(A028234(n+1))+A000079(n)-A364534(n)`
-/

namespace A151897.P1168866622232615120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A028234 (n + 1)).toNat + (A000079 n - A364534 n)

end

end A151897.P1168866622232615120

/-! ## A151897.P17441062637232033659

`A007814(A145388(n+1))+A000079(n)-A364534(n)`
-/

namespace A151897.P17441062637232033659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A145388 (n + 1)).toNat + (A000079 n - A364534 n)

end

end A151897.P17441062637232033659

/-!
# A151898: First differences of Frobenius numbers for 7 successive numbers A138987.

The programs for A151898, the canonical program `A151898.P6874926057123941970` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151898 has offset 1).

The definition of A151898 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151898.P6874926057123941970

`A138987(n+2)-A138987(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A151898

/-- `A138987(n+2)-A138987(n+1)` -/
def P6874926057123941970.Spec : Prop :=
  ∀ n, P6874926057123941970.a n = A151898 (n + 1)

theorem P6874926057123941970.correct : P6874926057123941970.Spec := by
  intro n
  simp only [A151898, Nat.add_sub_cancel]

end A151898

/-! ## A151898.P7797165314976242540

`Δ[(n+2)*(floor(n/6)+1)]`
-/

namespace A151898.P7797165314976242540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (⌊(n : ℚ) / 6⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151898.P7797165314976242540

namespace A151898

/-- `Δ[(n+2)*(floor(n/6)+1)]` -/
def P7797165314976242540.Spec : Prop :=
  ∀ n, P7797165314976242540.a n = A151898 (n + 1)

end A151898

/-! ## A151898.P6772219294513820393

`abs(Δ[A138987(n+1)])`
-/

namespace A151898.P6772219294513820393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A151898.P6772219294513820393

namespace A151898

/-- `abs(Δ[A138987(n+1)])` -/
def P6772219294513820393.Spec : Prop :=
  ∀ n, P6772219294513820393.a n = A151898 (n + 1)

end A151898

/-! ## A151898.P10677031095603237137

`abs(Δ[(n+2)*A097992(n)])`
-/

namespace A151898.P10677031095603237137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A097992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A151898.P10677031095603237137

namespace A151898

/-- `abs(Δ[(n+2)*A097992(n)])` -/
def P10677031095603237137.Spec : Prop :=
  ∀ n, P10677031095603237137.a n = A151898 (n + 1)

end A151898

/-! ## A151898.P8750092831169868461

`Δ[(n+2)*A152467(n)]+1`
-/

namespace A151898.P8750092831169868461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A152467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A151898.P8750092831169868461

namespace A151898

/-- `Δ[(n+2)*A152467(n)]+1` -/
def P8750092831169868461.Spec : Prop :=
  ∀ n, P8750092831169868461.a n = A151898 (n + 1)

end A151898

/-! ## A151898.P1045182620435886041

`A000027(Δ[A138987(n+1)])`
-/

namespace A151898.P1045182620435886041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A151898.P1045182620435886041

namespace A151898

/-- `A000027(Δ[A138987(n+1)])` -/
def P1045182620435886041.Spec : Prop :=
  ∀ n, P1045182620435886041.a n = A151898 (n + 1)

end A151898

/-! ## A151898.P705475163631664020

`Δ[A138987(n+1)]%A004767(n)`
-/

namespace A151898.P705475163631664020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A004767 n)

end

end A151898.P705475163631664020

namespace A151898

/-- `Δ[A138987(n+1)]%A004767(n)` -/
def P705475163631664020.Spec : Prop :=
  ∀ n, P705475163631664020.a n = A151898 (n + 1)

end A151898

/-! ## A151898.P5366104993720910677

`or(Δ[A138987(n+1)], A000007(n))`
-/

namespace A151898.P5366104993720910677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A000007 n)

end

end A151898.P5366104993720910677

namespace A151898

/-- `or(Δ[A138987(n+1)], A000007(n))` -/
def P5366104993720910677.Spec : Prop :=
  ∀ n, P5366104993720910677.a n = A151898 (n + 1)

end A151898

/-! ## A151898.P15259131257570660575

`∑{d}[Δ[A138987(n+1)], A000010(#)]`
-/

namespace A151898.P15259131257570660575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138987 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A151898.P15259131257570660575

namespace A151898

/-- `∑{d}[Δ[A138987(n+1)], A000010(#)]` -/
def P15259131257570660575.Spec : Prop :=
  ∀ n, P15259131257570660575.a n = A151898 (n + 1)

end A151898

/-! ## A151898.P9540025903864910354

`gcd(Δ[-A138987(n+1)], A000038(n))`
-/

namespace A151898.P9540025903864910354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A138987 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A151898.P9540025903864910354

namespace A151898

/-- `gcd(Δ[-A138987(n+1)], A000038(n))` -/
def P9540025903864910354.Spec : Prop :=
  ∀ n, (P9540025903864910354.a n : ℤ) = A151898 (n + 1)

end A151898

/-! ## A151898.P8411224105739833515

`Δ[A138987(n+1)]^A001221(A100549(n+1))`
-/

namespace A151898.P8411224105739833515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138987 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A001221 (A100549 (n + 1)).toNat : ℤ)

end

end A151898.P8411224105739833515

namespace A151898

/-- `Δ[A138987(n+1)]^A001221(A100549(n+1))` -/
def P8411224105739833515.Spec : Prop :=
  ∀ n, P8411224105739833515.a n = (A151898 (n + 1) : ℚ)

end A151898

/-! ## A151898.P9821424047140751442

`A004526(Δ[2*A138987(n+1)])`
-/

namespace A151898.P9821424047140751442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A151898.P9821424047140751442

namespace A151898

/-- `A004526(Δ[2*A138987(n+1)])` -/
def P9821424047140751442.Spec : Prop :=
  ∀ n, P9821424047140751442.a n = A151898 (n + 1)

end A151898

/-! ## A151898.P17885079954411180067

`A004526(Δ[2*(n+2)*A097992(n)])`
-/

namespace A151898.P17885079954411180067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) * A097992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A151898.P17885079954411180067

namespace A151898

/-- `A004526(Δ[2*(n+2)*A097992(n)])` -/
def P17885079954411180067.Spec : Prop :=
  ∀ n, P17885079954411180067.a n = A151898 (n + 1)

end A151898

/-! ## A151898.P4618306563495615943

`A002264(Δ[3*A138987(n+1)])`
-/

namespace A151898.P4618306563495615943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (n + 1) - f1 n).toNat

end

end A151898.P4618306563495615943

namespace A151898

/-- `A002264(Δ[3*A138987(n+1)])` -/
def P4618306563495615943.Spec : Prop :=
  ∀ n, P4618306563495615943.a n = A151898 (n + 1)

end A151898

/-! ## A151898.P666100365288971291

`Δ[(n+2)*val(A007283(n), 64)]+1`
-/

namespace A151898.P666100365288971291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * SequenceMachineLib.valuation (A007283 n).toNat 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A151898.P666100365288971291

namespace A151898

/-- `Δ[(n+2)*val(A007283(n), 64)]+1` -/
def P666100365288971291.Spec : Prop :=
  ∀ n, P666100365288971291.a n = A151898 (n + 1)

end A151898

/-! ## A151898.P79071577400105033

`Δ[A138987(n+1)]^A014963(∑[n+1])`
-/

namespace A151898.P79071577400105033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138987 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A151898.P79071577400105033

namespace A151898

/-- `Δ[A138987(n+1)]^A014963(∑[n+1])` -/
def P79071577400105033.Spec : Prop :=
  ∀ n, P79071577400105033.a n = (A151898 (n + 1) : ℚ)

end A151898

/-!
# A151899: Period 6: repeat [0, 0, 1, 1, 1, 2].

The programs for A151899, the canonical program `A151899.P10038057238036685762` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151899 has offset 0).

The definition of A151899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151899.P10038057238036685762

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A151899

/-- `a(n-6)` -/
def P10038057238036685762.Spec : Prop :=
  ∀ n, (P10038057238036685762.a n : ℤ) = A151899 n

theorem P10038057238036685762.correct : P10038057238036685762.Spec := by
  intro n
  simp only [A151899]

end A151899

