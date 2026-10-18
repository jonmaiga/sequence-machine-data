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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A026800: Number of partitions of n in which the least part is 7.

The programs for A026800, there is no canonical definition to state claims against.
-/

/-! ## A026800.P10026213250806447667

`A185327(n+1-(n+9)%(n+1))`
-/

namespace A026800.P10026213250806447667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185327 (n + 1 - (n + 9) % (n + 1))

end

end A026800.P10026213250806447667

/-! ## A026800.P17833897539696582612

`A185327(n)-A185328(n)`
-/

namespace A026800.P17833897539696582612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185327 n - A185328 n

end

end A026800.P17833897539696582612

/-! ## A026800.P7539402713876754785

`A185327(abs(7-A028310(n)))`
-/

namespace A026800.P7539402713876754785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185327 |7 - A028310 n|.toNat

end

end A026800.P7539402713876754785

/-! ## A026800.P11170728824885523015

`A185326(n)-(A185328(n)+A026799(n))`
-/

namespace A026800.P11170728824885523015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185326 n - (A185328 n + A026799 n)

end

end A026800.P11170728824885523015

/-! ## A026800.P17167642146165778645

`A185117(n)+A185227(n)-A185328(n)`
-/

namespace A026800.P17167642146165778645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185117 n + (A185227 n - A185328 n)

end

end A026800.P17167642146165778645

/-! ## A026800.P8833618358318768353

`A185327(n)-A026801(n+8)`
-/

namespace A026800.P8833618358318768353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185327 n - A026801 (n + 8)

end

end A026800.P8833618358318768353

/-!
# A026801: Number of partitions of n in which the least part is 8.

The programs for A026801, there is no canonical definition to state claims against.
-/

/-! ## A026801.P11040358578930969089

`A185328(abs(7-n))`
-/

namespace A026801.P11040358578930969089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185328 |7 - (n : ℤ)|.toNat

end

end A026801.P11040358578930969089

/-! ## A026801.P634209593799254295

`A185328(n+1)-A185329(n+1)`
-/

namespace A026801.P634209593799254295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185328 (n + 1) - A185329 (n + 1)

end

end A026801.P634209593799254295

/-! ## A026801.P7448395959689105655

`A198318(n+1)-A186728(n)*A186748(n+1)`
-/

namespace A026801.P7448395959689105655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 (n + 1) - A186728 n * A186748 (n + 1)

end

end A026801.P7448395959689105655

/-! ## A026801.P110543968877201958

`A198318(n+1)-A186729(n)*A186748(n+1)`
-/

namespace A026801.P110543968877201958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 (n + 1) - A186729 n * A186748 (n + 1)

end

end A026801.P110543968877201958

/-! ## A026801.P407505051099482858

`A026830(lt[A265607(n+3), A220738(3*n+5)])`
-/

namespace A026801.P407505051099482858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265607 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026830 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A026801.P407505051099482858

/-!
# A026802: Number of partitions of n in which the least part is 9.

The programs for A026802, there is no canonical definition to state claims against.
-/

/-! ## A026802.P10973152363850262314

`A185329(abs(8-n))`
-/

namespace A026802.P10973152363850262314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 |8 - (n : ℤ)|.toNat

end

end A026802.P10973152363850262314

/-! ## A026802.P12115021139861058103

`A026803(A036741(n+1))`
-/

namespace A026802.P12115021139861058103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026803 (A036741 (n + 1)).toNat

end

end A026802.P12115021139861058103

/-! ## A026802.P6286389161810301022

`A026830(abs(2-A346131(n+1)))`
-/

namespace A026802.P6286389161810301022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026830 |2 - A346131 (n + 1)|.toNat

end

end A026802.P6286389161810301022

/-! ## A026802.P9641888255932108692

`A026828(A128557(n+1)%A128557(2*(n+2)))`
-/

namespace A026802.P9641888255932108692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026828 (Int.tmod (A128557 (n + 1)) (A128557 (2 * (n + 2)))).toNat

end

end A026802.P9641888255932108692

/-!
# A026803: Number of partitions of n in which the least part is 10.

The programs for A026803, there is no canonical definition to state claims against.
-/

/-! ## A026803.P13359693403056332175

`A026802(A233583(n+2)-A005136(n))`
-/

namespace A026803.P13359693403056332175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026802 (A233583 (n + 2) - A005136 n).toNat

end

end A026803.P13359693403056332175

/-! ## A026803.P13130100752758268036

`A198317(lcm(A086525(n+1), A186728(n)))`
-/

namespace A026803.P13130100752758268036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198317 (Int.lcm (A086525 (n + 1)) (A186728 n))

end

end A026803.P13130100752758268036

/-! ## A026803.P12830416797634689160

`A026830(A236850(n+1))%A074817(n+1)`
-/

namespace A026803.P12830416797634689160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026830 (A236850 (n + 1)).toNat) (A074817 (n + 1))

end

end A026803.P12830416797634689160

/-! ## A026803.P15600043241688317678

`A026830(n)*A124010(A204985(3*n+4))`
-/

namespace A026803.P15600043241688317678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026830 n * A124010 (A204985 (3 * n + 4)).toNat

end

end A026803.P15600043241688317678

/-!
# A026804: Number of partitions of n in which the least part is odd.

The programs for A026804, there is no canonical definition to state claims against.
-/

/-! ## A026804.P5649274651091742357

`A027187(n+1)+A027193(n+1)-A026805(n+1)`
-/

namespace A026804.P5649274651091742357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 (n + 1) + (A027193 (n + 1) - A026805 (n + 1))

end

end A026804.P5649274651091742357

/-! ## A026804.P11967875209979819007

`A000041(n+1)-A026805(n+1)`
-/

namespace A026804.P11967875209979819007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A026805 (n + 1)

end

end A026804.P11967875209979819007

/-! ## A026804.P14504004401236347384

`∑[A187219(n+1)]-A026805(n+1)`
-/

namespace A026804.P14504004401236347384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026805 (n + 1)

end

end A026804.P14504004401236347384

/-! ## A026804.P15482443680643788964

`record[A035363(n)]-A026805(n+1)`
-/

namespace A026804.P15482443680643788964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A026805 (n + 1)

end

end A026804.P15482443680643788964

/-! ## A026804.P2448355067917000952

`A035363(A005843(n+1))-A026805(n+1)`
-/

namespace A026804.P2448355067917000952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A005843 (n + 1)).toNat - A026805 (n + 1)

end

end A026804.P2448355067917000952

/-! ## A026804.P18185152372495477939

`A026807(∑[n]+1)-A026805(n+1)`
-/

namespace A026804.P18185152372495477939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A026805 (n + 1)

end

end A026804.P18185152372495477939

/-! ## A026804.P8043725191599253345

`record[A026807(n+1)]-A026805(n+1)`
-/

namespace A026804.P8043725191599253345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A026805 (n + 1)

end

end A026804.P8043725191599253345

/-! ## A026804.P15519338625706934716

`record[A026794(n+1)]-A026805(n+1)`
-/

namespace A026804.P15519338625706934716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A026805 (n + 1)

end

end A026804.P15519338625706934716

/-! ## A026804.P13835370399774798674

`A000041(n+1)-(A325346(n+1)+A325345(n+1))`
-/

namespace A026804.P13835370399774798674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A325346 (n + 1) + A325345 (n + 1))

end

end A026804.P13835370399774798674

/-!
# A026805: Number of partitions of n in which the least part is even.

The programs for A026805, there is no canonical definition to state claims against.
-/

/-! ## A026805.P8578660226455089911

`A000041(n+1)-A026804(n+1)`
-/

namespace A026805.P8578660226455089911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A026804 (n + 1)

end

end A026805.P8578660226455089911

/-! ## A026805.P8444620933583688158

`A087787(n+1)+A087787(n)-A026804(n+1)`
-/

namespace A026805.P8444620933583688158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 (n + 1) + (A087787 n - A026804 (n + 1))

end

end A026805.P8444620933583688158

/-! ## A026805.P18152658303422827292

`A027187(n+1)+A027193(n+1)-A026804(n+1)`
-/

namespace A026805.P18152658303422827292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 (n + 1) + (A027193 (n + 1) - A026804 (n + 1))

end

end A026805.P18152658303422827292

/-! ## A026805.P2618616255063254672

`Δ[A000070(n)]-A026804(n+1)`
-/

namespace A026805.P2618616255063254672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026804 (n + 1)

end

end A026805.P2618616255063254672

/-! ## A026805.P1636929624937004231

`A000070(n+1)-(A026804(n+1)+A000070(n))`
-/

namespace A026805.P1636929624937004231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - (A026804 (n + 1) + A000070 n)

end

end A026805.P1636929624937004231

/-! ## A026805.P8363552941064659069

`record[A035363(n)]-A026804(n+1)`
-/

namespace A026805.P8363552941064659069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A026804 (n + 1)

end

end A026805.P8363552941064659069

/-! ## A026805.P11904031105011002839

`A035363(A005843(n+1))-A026804(n+1)`
-/

namespace A026805.P11904031105011002839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A005843 (n + 1)).toNat - A026804 (n + 1)

end

end A026805.P11904031105011002839

/-! ## A026805.P12740253203341553639

`record[A035444(n)]-A026804(n+1)`
-/

namespace A026805.P12740253203341553639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A026804 (n + 1)

end

end A026805.P12740253203341553639

/-! ## A026805.P5941260580464025964

`A026807(∑[n]+1)-A026804(n+1)`
-/

namespace A026805.P5941260580464025964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A026804 (n + 1)

end

end A026805.P5941260580464025964

/-! ## A026805.P14826955710935148036

`record[A026807(n+1)]-A026804(n+1)`
-/

namespace A026805.P14826955710935148036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A026804 (n + 1)

end

end A026805.P14826955710935148036

/-! ## A026805.P15021580400947815422

`A137639(A133263(n))-A000007(n)`
-/

namespace A026805.P15021580400947815422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137639 (A133263 n).toNat - A000007 n

end

end A026805.P15021580400947815422

/-! ## A026805.P9779942857774228845

`record[A026794(n+1)]-A026804(n+1)`
-/

namespace A026805.P9779942857774228845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A026804 (n + 1)

end

end A026805.P9779942857774228845

/-! ## A026805.P13292395819056529671

`A026794(A000217(n+1)+1)-A026804(n+1)`
-/

namespace A026805.P13292395819056529671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A000217 (n + 1) + 1).toNat - A026804 (n + 1)

end

end A026805.P13292395819056529671

/-!
# A026806: a(n) = number of numbers k such that only one partition of n has least part k.

The programs for A026806, the canonical program `A026806.P6947166589080226043` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026806 has offset 1).

The definition of A026806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026806.P6947166589080226043

`1+floor((n+1)/2)-floor((n+1)/3)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026806

/-- `1+floor((n+1)/2)-floor((n+1)/3)` -/
def P6947166589080226043.Spec : Prop :=
  ∀ n, P6947166589080226043.a n = A026806 (n + 1)

theorem P6947166589080226043.correct : P6947166589080226043.Spec := by
  intro n
  simp only [A026806, Nat.add_sub_cancel]

end A026806

/-! ## A026806.P10186496846441587561

`A008615(n+7)`
-/

namespace A026806.P10186496846441587561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n + 7)

end

end A026806.P10186496846441587561

namespace A026806

/-- `A008615(n+7)` -/
def P10186496846441587561.Spec : Prop :=
  ∀ n, P10186496846441587561.a n = A026806 (n + 1)

end A026806

/-! ## A026806.P10505438836833673709

`ceil(xor(1, n+5)/6)`
-/

namespace A026806.P10505438836833673709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (n + 5) : ℚ) / 6⌉

end

end A026806.P10505438836833673709

namespace A026806

/-- `ceil(xor(1, n+5)/6)` -/
def P10505438836833673709.Spec : Prop :=
  ∀ n, P10505438836833673709.a n = A026806 (n + 1)

end A026806

/-! ## A026806.P6076251620957133009

`floor(∑[1-a(n-1)]/3)` with `a(0)=4, a(1)=2`
-/

namespace A026806.P6076251620957133009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A026806.P6076251620957133009

namespace A026806

/-- `floor(∑[1-a(n-1)]/3)` -/
def P6076251620957133009.Spec : Prop :=
  ∀ n, P6076251620957133009.a n = A026806 (n + 1)

end A026806

/-! ## A026806.P13759780855218029945

`∑[∑[n]%3-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A026806.P13759780855218029945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026806.P13759780855218029945

namespace A026806

/-- `∑[∑[n]%3-a(n-1)]` -/
def P13759780855218029945.Spec : Prop :=
  ∀ n, P13759780855218029945.a n = A026806 (n + 1)

end A026806

/-! ## A026806.P13115818394501852765

`∑[a(n-3)-(-1)^n]` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=1`
-/

namespace A026806.P13115818394501852765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1, 1] fun n f1 =>
  f1 (n - 3) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026806.P13115818394501852765

namespace A026806

/-- `∑[a(n-3)-(-1)^n]` -/
def P13115818394501852765.Spec : Prop :=
  ∀ n, P13115818394501852765.a n = A026806 (n + 1)

end A026806

/-! ## A026806.P3480884362352705920

`Δ[A001399(n+4)]`
-/

namespace A026806.P3480884362352705920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026806.P3480884362352705920

namespace A026806

/-- `Δ[A001399(n+4)]` -/
def P3480884362352705920.Spec : Prop :=
  ∀ n, P3480884362352705920.a n = A026806 (n + 1)

end A026806

/-! ## A026806.P6998438267509339957

`round(A047323(n+1)/2-n)`
-/

namespace A026806.P6998438267509339957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A047323 (n + 1) : ℚ) / 2 - (n : ℚ))

end

end A026806.P6998438267509339957

namespace A026806

/-- `round(A047323(n+1)/2-n)` -/
def P6998438267509339957.Spec : Prop :=
  ∀ n, P6998438267509339957.a n = A026806 (n + 1)

end A026806

/-! ## A026806.P2590269420908087637

`ceil((n+3-A028242(n))/3)`
-/

namespace A026806.P2590269420908087637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 3 : ℤ) - A028242 n : ℚ) / 3⌉

end

end A026806.P2590269420908087637

namespace A026806

/-- `ceil((n+3-A028242(n))/3)` -/
def P2590269420908087637.Spec : Prop :=
  ∀ n, P2590269420908087637.a n = A026806 (n + 1)

end A026806

/-!
# A026807: Triangular array T read by rows: T(n,k) = number of partitions of n in which every part is >=k, for k=1,2,...,n.

The programs for A026807, there is no canonical definition to state claims against.
-/

/-! ## A026807.P245242810158578433

`A027200(n+1)+A027199(n+1)`
-/

namespace A026807.P245242810158578433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027200 (n + 1) + A027199 (n + 1)

end

end A026807.P245242810158578433

/-! ## A026807.P6365842753907671119

`A026794(A245300(n+1))`
-/

namespace A026807.P6365842753907671119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A245300 (n + 1)).toNat

end

end A026807.P6365842753907671119

/-! ## A026807.P1652601382452690855

`A027199(n+1)+A027185(A245300(n)+A108872(n+1))`
-/

namespace A026807.P1652601382452690855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027199 (n + 1) + A027185 (A245300 n + A108872 (n + 1)).toNat

end

end A026807.P1652601382452690855

/-! ## A026807.P8468544870860490323

`A027200(n+1)+A027186(A245300(n)+A108872(n+1))`
-/

namespace A026807.P8468544870860490323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027200 (n + 1) + A027186 (A245300 n + A108872 (n + 1)).toNat

end

end A026807.P8468544870860490323

/-! ## A026807.P5808022148542013205

`A027200(n+1)+A027193(A010766(n+1)%A335389(n+1))`
-/

namespace A026807.P5808022148542013205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027200 (n + 1) + A027193 (Int.tmod (A010766 (n + 1)) (A335389 (n + 1))).toNat

end

end A026807.P5808022148542013205

/-!
# A026808: a(n) is the number of products P of distinct positive integers satisfying P <= n.

The programs for A026808, there is no canonical definition to state claims against.
-/

/-! ## A026808.P10626112994049189733

`2*(A287549(n+1)-1)-n`
-/

namespace A026808.P10626112994049189733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A287549 (n + 1) - 1) - (n : ℤ)

end

end A026808.P10626112994049189733

/-! ## A026808.P17448398137929624711

`∑[A004273(A045778(n+1))]-1`
-/

namespace A026808.P17448398137929624711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A045778 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A026808.P17448398137929624711

/-! ## A026808.P5955079611166047137

`∑[A014681(2*A045778(n+1))]-1`
-/

namespace A026808.P5955079611166047137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A045778 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A026808.P5955079611166047137

/-! ## A026808.P13700559161708758104

`∑[A004273(A045778(n+1)%A005408(n))]`
-/

namespace A026808.P13700559161708758104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Int.tmod (A045778 (n + 1)) (A005408 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026808.P13700559161708758104

/-! ## A026808.P13990431659198992878

`A005843(∑[A045778(n+1)-1])+n`
-/

namespace A026808.P13990431659198992878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A026808.P13990431659198992878

/-! ## A026808.P9320264688622015843

`∑[A137319(A045778(n+1))%A280802(n)]`
-/

namespace A026808.P9320264688622015843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137319 (A045778 (n + 1)).toNat) (A280802 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026808.P9320264688622015843

/-!
# A026809: a(n) = 3^n*(3^n-1)*(3^n-2)/6.

The programs for A026809, the canonical program `A026809.P15605709887583705495` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026809 has offset 0).

The definition of A026809 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026809.P15605709887583705495

`3^n*(3^n-1)*(3^n-2)/6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026809

/-- `3^n*(3^n-1)*(3^n-2)/6` -/
def P15605709887583705495.Spec : Prop :=
  ∀ n, P15605709887583705495.a n = (A026809 n : ℚ)

end A026809

/-! ## A026809.P1400369595859629798

`C(3^n, 3)`
-/

namespace A026809.P1400369595859629798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 ^ n) 3

end

end A026809.P1400369595859629798

namespace A026809

/-- `C(3^n, 3)` -/
def P1400369595859629798.Spec : Prop :=
  ∀ n, (P1400369595859629798.a n : ℤ) = A026809 n

end A026809

/-! ## A026809.P1824143538578213121

`record[C(A112626(n), 3)]`
-/

namespace A026809.P1824143538578213121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A112626 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026809.P1824143538578213121

namespace A026809

/-- `record[C(A112626(n), 3)]` -/
def P1824143538578213121.Spec : Prop :=
  ∀ n, (P1824143538578213121.a n : ℤ) = A026809 n

end A026809

/-! ## A026809.P8591276784960743113

`record[C(A125824(n), 3)]`
-/

namespace A026809.P8591276784960743113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A125824 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026809.P8591276784960743113

namespace A026809

/-- `record[C(A125824(n), 3)]` -/
def P8591276784960743113.Spec : Prop :=
  ∀ n, (P8591276784960743113.a n : ℤ) = A026809 n

end A026809

/-! ## A026809.P15155177955033767682

`record[C(A130599(n), 3)]`
-/

namespace A026809.P15155177955033767682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A130599 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026809.P15155177955033767682

namespace A026809

/-- `record[C(A130599(n), 3)]` -/
def P15155177955033767682.Spec : Prop :=
  ∀ n, (P15155177955033767682.a n : ℤ) = A026809 n

end A026809

/-! ## A026809.P16099864082002288343

`record[C(A131137(n), 3)]`
-/

namespace A026809.P16099864082002288343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131137 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026809.P16099864082002288343

namespace A026809

/-- `record[C(A131137(n), 3)]` -/
def P16099864082002288343.Spec : Prop :=
  ∀ n, (P16099864082002288343.a n : ℤ) = A026809 n

end A026809

/-! ## A026809.P2619623510410631707

`record[C(A140303(n), 3)]`
-/

namespace A026809.P2619623510410631707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A140303 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026809.P2619623510410631707

namespace A026809

/-- `record[C(A140303(n), 3)]` -/
def P2619623510410631707.Spec : Prop :=
  ∀ n, (P2619623510410631707.a n : ℤ) = A026809 n

end A026809

/-! ## A026809.P3888999602050925874

`record[C(A143453(n), 3)]`
-/

namespace A026809.P3888999602050925874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A143453 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026809.P3888999602050925874

namespace A026809

/-- `record[C(A143453(n), 3)]` -/
def P3888999602050925874.Spec : Prop :=
  ∀ n, (P3888999602050925874.a n : ℤ) = A026809 n

end A026809

/-! ## A026809.P6446531968825374810

`record[C(A152714(n), 3)]`
-/

namespace A026809.P6446531968825374810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A152714 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026809.P6446531968825374810

namespace A026809

/-- `record[C(A152714(n), 3)]` -/
def P6446531968825374810.Spec : Prop :=
  ∀ n, (P6446531968825374810.a n : ℤ) = A026809 n

end A026809

/-! ## A026809.P4672159415743166006

`record[C(A175840(n), 3)]`
-/

namespace A026809.P4672159415743166006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A175840 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026809.P4672159415743166006

namespace A026809

/-- `record[C(A175840(n), 3)]` -/
def P4672159415743166006.Spec : Prop :=
  ∀ n, (P4672159415743166006.a n : ℤ) = A026809 n

end A026809

/-!
# A026810: Number of partitions of n in which the greatest part is 4.

The programs for A026810, the canonical program `A026810.P1735869401269353831` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026810 has offset 0).

The definition of A026810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026810.P1735869401269353831

`round((n^3+3*n²-9*n*n%2)/144)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026810

/-- `round((n^3+3*n²-9*n*n%2)/144)` -/
def P1735869401269353831.Spec : Prop :=
  ∀ n, P1735869401269353831.a n = A026810 n

theorem P1735869401269353831.correct : P1735869401269353831.Spec := by
  intro n
  simp only [A026810]

end A026810

/-! ## A026810.P12204452466500451940

`∑[A005044(abs(1-n))]`
-/

namespace A026810.P12204452466500451940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026810.P12204452466500451940

namespace A026810

/-- `∑[A005044(abs(1-n))]` -/
def P12204452466500451940.Spec : Prop :=
  ∀ n, P12204452466500451940.a n = A026810 n

end A026810

/-! ## A026810.P9761360028173274574

`∑[round(A028242(n)²/12)]`
-/

namespace A026810.P9761360028173274574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A028242 n ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026810.P9761360028173274574

namespace A026810

/-- `∑[round(A028242(n)²/12)]` -/
def P9761360028173274574.Spec : Prop :=
  ∀ n, P9761360028173274574.a n = A026810 n

end A026810

/-! ## A026810.P1336911942142922828

`∑[A069905(ceil(xor(1, n)/2))]`
-/

namespace A026810.P1336911942142922828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026810.P1336911942142922828

namespace A026810

/-- `∑[A069905(ceil(xor(1, n)/2))]` -/
def P1336911942142922828.Spec : Prop :=
  ∀ n, P1336911942142922828.a n = A026810 n

end A026810

/-! ## A026810.P11360034862954019902

`A008763(n)-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A026810.P11360034862954019902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A008763 n - a (n - 2)

end

end A026810.P11360034862954019902

namespace A026810

/-- `A008763(n)-a(n-2)` -/
def P11360034862954019902.Spec : Prop :=
  ∀ n, P11360034862954019902.a n = A026810 n

end A026810

/-! ## A026810.P590284270371583929

`∑[A325691(n)]-round(n²/12)`
-/

namespace A026810.P590284270371583929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

end

end A026810.P590284270371583929

namespace A026810

/-- `∑[A325691(n)]-round(n²/12)` -/
def P590284270371583929.Spec : Prop :=
  ∀ n, P590284270371583929.a n = A026810 n

end A026810

/-! ## A026810.P3546148359713909826

`A005044(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A026810.P3546148359713909826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005044 (n - 1) + a (n - 1)

end

end A026810.P3546148359713909826

namespace A026810

/-- `A005044(n-1)+a(n-1)` -/
def P3546148359713909826.Spec : Prop :=
  ∀ n, P3546148359713909826.a n = A026810 n

end A026810

/-! ## A026810.P2435723745162220788

`∑[A069905(A028242(n))]`
-/

namespace A026810.P2435723745162220788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026810.P2435723745162220788

namespace A026810

/-- `∑[A069905(A028242(n))]` -/
def P2435723745162220788.Spec : Prop :=
  ∀ n, P2435723745162220788.a n = A026810 n

end A026810

/-! ## A026810.P13591943559227394672

`A309715(n)+A309712(n)`
-/

namespace A026810.P13591943559227394672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309715 n + A309712 n

end

end A026810.P13591943559227394672

namespace A026810

/-- `A309715(n)+A309712(n)` -/
def P13591943559227394672.Spec : Prop :=
  ∀ n, P13591943559227394672.a n = A026810 n

end A026810

/-! ## A026810.P12723122166602242378

`A309795(n)+A309793(n)`
-/

namespace A026810.P12723122166602242378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309795 n + A309793 n

end

end A026810.P12723122166602242378

namespace A026810

/-- `A309795(n)+A309793(n)` -/
def P12723122166602242378.Spec : Prop :=
  ∀ n, P12723122166602242378.a n = A026810 n

end A026810

/-! ## A026810.P14008162788703528990

`A001400(n)-A001399(n)`
-/

namespace A026810.P14008162788703528990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n - A001399 n

end

end A026810.P14008162788703528990

namespace A026810

/-- `A001400(n)-A001399(n)` -/
def P14008162788703528990.Spec : Prop :=
  ∀ n, P14008162788703528990.a n = A026810 n

end A026810

/-! ## A026810.P1739149677106304513

`A008765(n)-A001400(n)`
-/

namespace A026810.P1739149677106304513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008765 n - A001400 n

end

end A026810.P1739149677106304513

namespace A026810

/-- `A008765(n)-A001400(n)` -/
def P1739149677106304513.Spec : Prop :=
  ∀ n, P1739149677106304513.a n = A026810 n

end A026810

/-! ## A026810.P16471059384019662892

`A005232(n)-A266769(n)`
-/

namespace A026810.P16471059384019662892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 n - A266769 n

end

end A026810.P16471059384019662892

namespace A026810

/-- `A005232(n)-A266769(n)` -/
def P16471059384019662892.Spec : Prop :=
  ∀ n, P16471059384019662892.a n = A026810 n

end A026810

/-! ## A026810.P14200252181772536176

`A266755(n)-A060023(n)`
-/

namespace A026810.P14200252181772536176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n - A060023 n

end

end A026810.P14200252181772536176

namespace A026810

/-- `A266755(n)-A060023(n)` -/
def P14200252181772536176.Spec : Prop :=
  ∀ n, P14200252181772536176.a n = A026810 n

end A026810

/-! ## A026810.P14353883768157748807

`A308775(n)/A028310(n)`
-/

namespace A026810.P14353883768157748807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308775 n : ℚ) / (A028310 n : ℚ)

end

end A026810.P14353883768157748807

namespace A026810

/-- `A308775(n)/A028310(n)` -/
def P14353883768157748807.Spec : Prop :=
  ∀ n, P14353883768157748807.a n = (A026810 n : ℚ)

end A026810

/-! ## A026810.P2123407384510753779

`∑[A005044(n)]-A005044(n)`
-/

namespace A026810.P2123407384510753779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005044 n

end

end A026810.P2123407384510753779

namespace A026810

/-- `∑[A005044(n)]-A005044(n)` -/
def P2123407384510753779.Spec : Prop :=
  ∀ n, P2123407384510753779.a n = A026810 n

end A026810

/-! ## A026810.P14529935015131231417

`∑[A008733(n)-A008731(n)]`
-/

namespace A026810.P14529935015131231417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 n - A008731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026810.P14529935015131231417

namespace A026810

/-- `∑[A008733(n)-A008731(n)]` -/
def P14529935015131231417.Spec : Prop :=
  ∀ n, P14529935015131231417.a n = A026810 n

end A026810

/-! ## A026810.P767341429882051135

`∑[A266755(n)]-A001399(n)`
-/

namespace A026810.P767341429882051135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001399 n

end

end A026810.P767341429882051135

namespace A026810

/-- `∑[A266755(n)]-A001399(n)` -/
def P767341429882051135.Spec : Prop :=
  ∀ n, P767341429882051135.a n = A026810 n

end A026810

/-! ## A026810.P9942944511463456904

`A394873(n+1)-A335583(n)`
-/

namespace A026810.P9942944511463456904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394873 (n + 1) - A335583 n

end

end A026810.P9942944511463456904

namespace A026810

/-- `A394873(n+1)-A335583(n)` -/
def P9942944511463456904.Spec : Prop :=
  ∀ n, P9942944511463456904.a n = A026810 n

end A026810

/-! ## A026810.P18045438566293831747

`A266769(n)-A320592(n+6)`
-/

namespace A026810.P18045438566293831747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n - A320592 (n + 6)

end

end A026810.P18045438566293831747

namespace A026810

/-- `A266769(n)-A320592(n+6)` -/
def P18045438566293831747.Spec : Prop :=
  ∀ n, P18045438566293831747.a n = A026810 n

end A026810

/-!
# A026811: Number of partitions of n in which the greatest part is 5.

The programs for A026811, the canonical program `A026811.P6823680176287512686` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026811 has offset 0).

The definition of A026811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026811.P1261157276818972580

`A309881(n)+A309879(n)`
-/

namespace A026811.P1261157276818972580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309881 n + A309879 n

end

end A026811.P1261157276818972580

namespace A026811

/-- `A309881(n)+A309879(n)` -/
def P1261157276818972580.Spec : Prop :=
  ∀ n, P1261157276818972580.a n = A026811 n

end A026811

/-! ## A026811.P3733977926683615734

`A001401(n)-A001400(n)`
-/

namespace A026811.P3733977926683615734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - A001400 n

end

end A026811.P3733977926683615734

namespace A026811

/-- `A001401(n)-A001400(n)` -/
def P3733977926683615734.Spec : Prop :=
  ∀ n, P3733977926683615734.a n = A026811 n

end A026811

/-! ## A026811.P16479814304219847200

`A008667(n)-A060024(n)`
-/

namespace A026811.P16479814304219847200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n - A060024 n

end

end A026811.P16479814304219847200

namespace A026811

/-- `A008667(n)-A060024(n)` -/
def P16479814304219847200.Spec : Prop :=
  ∀ n, P16479814304219847200.a n = A026811 n

end A026811

/-! ## A026811.P10274254445764758686

`A308822(n)/A028310(n)`
-/

namespace A026811.P10274254445764758686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308822 n : ℚ) / (A028310 n : ℚ)

end

end A026811.P10274254445764758686

namespace A026811

/-- `A308822(n)/A028310(n)` -/
def P10274254445764758686.Spec : Prop :=
  ∀ n, P10274254445764758686.a n = (A026811 n : ℚ)

end A026811

/-! ## A026811.P6823680176287512686

`∑[A008667(n)]-A001400(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026811

/-- `∑[A008667(n)]-A001400(n)` -/
def P6823680176287512686.Spec : Prop :=
  ∀ n, P6823680176287512686.a n = A026811 n

theorem P6823680176287512686.correct : P6823680176287512686.Spec := by
  intro n
  simp only [A026811]

end A026811

/-! ## A026811.P3357914761919402342

`∑[A008667(n)-A266755(n)]`
-/

namespace A026811.P3357914761919402342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n - A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026811.P3357914761919402342

namespace A026811

/-- `∑[A008667(n)-A266755(n)]` -/
def P3357914761919402342.Spec : Prop :=
  ∀ n, P3357914761919402342.a n = A026811 n

end A026811

/-! ## A026811.P153625081203836991

`A394985(n+1)-A394873(n)`
-/

namespace A026811.P153625081203836991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394985 (n + 1) - A394873 n

end

end A026811.P153625081203836991

namespace A026811

/-- `A394985(n+1)-A394873(n)` -/
def P153625081203836991.Spec : Prop :=
  ∀ n, P153625081203836991.a n = A026811 n

end A026811

/-! ## A026811.P7290061764847436192

`A001401(n)-(A026810(n)+A001399(n))`
-/

namespace A026811.P7290061764847436192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - (A026810 n + A001399 n)

end

end A026811.P7290061764847436192

namespace A026811

/-- `A001401(n)-(A026810(n)+A001399(n))` -/
def P7290061764847436192.Spec : Prop :=
  ∀ n, P7290061764847436192.a n = A026811 n

end A026811

/-! ## A026811.P16086370895205850720

`A026810(n+1)+A060023(n+1)-A060024(n+1)`
-/

namespace A026811.P16086370895205850720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1) + (A060023 (n + 1) - A060024 (n + 1))

end

end A026811.P16086370895205850720

namespace A026811

/-- `A026810(n+1)+A060023(n+1)-A060024(n+1)` -/
def P16086370895205850720.Spec : Prop :=
  ∀ n, P16086370895205850720.a n = A026811 n

end A026811

/-! ## A026811.P12071887029859139642

`A001401(n)-A026810(n+4)`
-/

namespace A026811.P12071887029859139642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - A026810 (n + 4)

end

end A026811.P12071887029859139642

namespace A026811

/-- `A001401(n)-A026810(n+4)` -/
def P12071887029859139642.Spec : Prop :=
  ∀ n, P12071887029859139642.a n = A026811 n

end A026811

/-! ## A026811.P7891574540887910217

`A266768(2*n)-A001400(n)`
-/

namespace A026811.P7891574540887910217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266768 (2 * n) - A001400 n

end

end A026811.P7891574540887910217

namespace A026811

/-- `A266768(2*n)-A001400(n)` -/
def P7891574540887910217.Spec : Prop :=
  ∀ n, P7891574540887910217.a n = A026811 n

end A026811

/-! ## A026811.P15308783023122705243

`∑[A029138(2*n+1)-A029140(2*n+1)]`
-/

namespace A026811.P15308783023122705243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029138 (2 * n + 1) - A029140 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026811.P15308783023122705243

namespace A026811

/-- `∑[A029138(2*n+1)-A029140(2*n+1)]` -/
def P15308783023122705243.Spec : Prop :=
  ∀ n, P15308783023122705243.a n = A026811 n

end A026811

/-! ## A026811.P17831757123820478140

`A288166(record[A195140(n)]-n)`
-/

namespace A026811.P17831757123820478140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288166 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A026811.P17831757123820478140

namespace A026811

/-- `A288166(record[A195140(n)]-n)` -/
def P17831757123820478140.Spec : Prop :=
  ∀ n, P17831757123820478140.a n = A026811 n

end A026811

/-! ## A026811.P5103595824387356546

`A288166(4*n)`
-/

namespace A026811.P5103595824387356546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288166 (4 * n)

end

end A026811.P5103595824387356546

namespace A026811

/-- `A288166(4*n)` -/
def P5103595824387356546.Spec : Prop :=
  ∀ n, P5103595824387356546.a n = A026811 n

end A026811

/-! ## A026811.P7519378433404581987

`A308822(n)/A233583(n+1)`
-/

namespace A026811.P7519378433404581987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308822 n : ℚ) / (A233583 (n + 1) : ℚ)

end

end A026811.P7519378433404581987

namespace A026811

/-- `A308822(n)/A233583(n+1)` -/
def P7519378433404581987.Spec : Prop :=
  ∀ n, P7519378433404581987.a n = (A026811 n : ℚ)

end A026811

/-! ## A026811.P11056722877333187780

`A001401(n)-A152146(A167614(n+1)-1)`
-/

namespace A026811.P11056722877333187780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - A152146 (A167614 (n + 1) - 1).toNat

end

end A026811.P11056722877333187780

namespace A026811

/-- `A001401(n)-A152146(A167614(n+1)-1)` -/
def P11056722877333187780.Spec : Prop :=
  ∀ n, P11056722877333187780.a n = A026811 n

end A026811

/-!
# A026812: Number of partitions of n in which the greatest part is 6.

The programs for A026812, the canonical program `A026812.P368867106460486570` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026812 has offset 0).

The definition of A026812 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, A001402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A026812.P368867106460486570

`A001402(n)-A001401(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026812

/-- `A001402(n)-A001401(n)` -/
def P368867106460486570.Spec : Prop :=
  ∀ n, P368867106460486570.a n = A026812 n

theorem P368867106460486570.correct : P368867106460486570.Spec := by
  intro n
  simp only [A026812]

end A026812

/-! ## A026812.P3590545821854890271

`A037145(n)-A060025(n)`
-/

namespace A026812.P3590545821854890271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n - A060025 n

end

end A026812.P3590545821854890271

namespace A026812

/-- `A037145(n)-A060025(n)` -/
def P3590545821854890271.Spec : Prop :=
  ∀ n, P3590545821854890271.a n = A026812 n

end A026812

/-! ## A026812.P9475161351886708419

`A001402(n)-∑[A008667(n)]`
-/

namespace A026812.P9475161351886708419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026812.P9475161351886708419

namespace A026812

/-- `A001402(n)-∑[A008667(n)]` -/
def P9475161351886708419.Spec : Prop :=
  ∀ n, P9475161351886708419.a n = A026812 n

end A026812

/-! ## A026812.P10852964397072353944

`∑[A037145(n)-A008667(n)]`
-/

namespace A026812.P10852964397072353944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n - A008667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026812.P10852964397072353944

namespace A026812

/-- `∑[A037145(n)-A008667(n)]` -/
def P10852964397072353944.Spec : Prop :=
  ∀ n, P10852964397072353944.a n = A026812 n

end A026812

/-! ## A026812.P14391242646425714566

`Δ[A001401(n)]-A060025(n+1)`
-/

namespace A026812.P14391242646425714566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A060025 (n + 1)

end

end A026812.P14391242646425714566

namespace A026812

/-- `Δ[A001401(n)]-A060025(n+1)` -/
def P14391242646425714566.Spec : Prop :=
  ∀ n, P14391242646425714566.a n = A026812 n

end A026812

/-! ## A026812.P15887068489083699475

`Δ[A001401(n)-A060025(n)]-A060025(n)`
-/

namespace A026812.P15887068489083699475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - A060025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A060025 n

end

end A026812.P15887068489083699475

namespace A026812

/-- `Δ[A001401(n)-A060025(n)]-A060025(n)` -/
def P15887068489083699475.Spec : Prop :=
  ∀ n, P15887068489083699475.a n = A026812 n

end A026812

/-! ## A026812.P8615377084829834072

`A026811(n+1)+A060024(n+1)-A060025(n+1)`
-/

namespace A026812.P8615377084829834072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (n + 1) + (A060024 (n + 1) - A060025 (n + 1))

end

end A026812.P8615377084829834072

namespace A026812

/-- `A026811(n+1)+A060024(n+1)-A060025(n+1)` -/
def P8615377084829834072.Spec : Prop :=
  ∀ n, P8615377084829834072.a n = A026812 n

end A026812

/-! ## A026812.P8578937668362165431

`A001402(n)-A026811(n+5)`
-/

namespace A026812.P8578937668362165431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n - A026811 (n + 5)

end

end A026812.P8578937668362165431

namespace A026812

/-- `A001402(n)-A026811(n+5)` -/
def P8578937668362165431.Spec : Prop :=
  ∀ n, P8578937668362165431.a n = A026812 n

end A026812

/-! ## A026812.P11389414017377159203

`A008636(n)-(A026813(n)+A001401(n))`
-/

namespace A026812.P11389414017377159203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n - (A026813 n + A001401 n)

end

end A026812.P11389414017377159203

namespace A026812

/-- `A008636(n)-(A026813(n)+A001401(n))` -/
def P11389414017377159203.Spec : Prop :=
  ∀ n, P11389414017377159203.a n = A026812 n

end A026812

/-! ## A026812.P13474088352613759801

`A308867(n)/A028310(n)`
-/

namespace A026812.P13474088352613759801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308867 n : ℚ) / (A028310 n : ℚ)

end

end A026812.P13474088352613759801

namespace A026812

/-- `A308867(n)/A028310(n)` -/
def P13474088352613759801.Spec : Prop :=
  ∀ n, P13474088352613759801.a n = (A026812 n : ℚ)

end A026812

/-! ## A026812.P16180350695912684156

`A308867(n)/A233583(n+1)`
-/

namespace A026812.P16180350695912684156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308867 n : ℚ) / (A233583 (n + 1) : ℚ)

end

end A026812.P16180350695912684156

namespace A026812

/-- `A308867(n)/A233583(n+1)` -/
def P16180350695912684156.Spec : Prop :=
  ∀ n, P16180350695912684156.a n = (A026812 n : ℚ)

end A026812

/-! ## A026812.P12099213910797785207

`A152146(A167614(n+2))-A001401(n)`
-/

namespace A026812.P12099213910797785207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A167614 (n + 2)).toNat - A001401 n

end

end A026812.P12099213910797785207

namespace A026812

/-- `A152146(A167614(n+2))-A001401(n)` -/
def P12099213910797785207.Spec : Prop :=
  ∀ n, P12099213910797785207.a n = A026812 n

end A026812

/-!
# A026813: Number of partitions of n in which the greatest part is 7.

The programs for A026813, there is no canonical definition to state claims against.
-/

/-! ## A026813.P7762519429294832842

`A026814(n+1)-A026814(n-7%(n+1))`
-/

namespace A026813.P7762519429294832842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 (n + 1) - A026814 (n - 7 % (n + 1))

end

end A026813.P7762519429294832842

/-! ## A026813.P5819855777755678847

`A266770(2*n)-A001402(n)`
-/

namespace A026813.P5819855777755678847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266770 (2 * n) - A001402 n

end

end A026813.P5819855777755678847

/-! ## A026813.P1419099261575752422

`A008636(n)-A001402(n)`
-/

namespace A026813.P1419099261575752422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n - A001402 n

end

end A026813.P1419099261575752422

/-! ## A026813.P4300878147880850344

`A008636(n)-A026812(n+6)`
-/

namespace A026813.P4300878147880850344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n - A026812 (n + 6)

end

end A026813.P4300878147880850344

/-! ## A026813.P601432636064467305

`A008636(n)-A001401(n)-A026812(n)`
-/

namespace A026813.P601432636064467305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n - A001401 n - A026812 n

end

end A026813.P601432636064467305

/-! ## A026813.P10780338912672529471

`A001996(n)-A060026(n)`
-/

namespace A026813.P10780338912672529471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n - A060026 n

end

end A026813.P10780338912672529471

/-! ## A026813.P10809998667059320830

`∑[A001996(n)]-A001402(n)`
-/

namespace A026813.P10809998667059320830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001402 n

end

end A026813.P10809998667059320830

/-! ## A026813.P3107340168373293778

`∑[A001996(n)-A037145(n)]`
-/

namespace A026813.P3107340168373293778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n - A037145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026813.P3107340168373293778

/-! ## A026813.P18171951697988737749

`A308926(n)/A028310(n)`
-/

namespace A026813.P18171951697988737749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308926 n : ℚ) / (A028310 n : ℚ)

end

end A026813.P18171951697988737749

/-! ## A026813.P9098524696708589613

`A308926(n)/A233583(n+1)`
-/

namespace A026813.P9098524696708589613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308926 n : ℚ) / (A233583 (n + 1) : ℚ)

end

end A026813.P9098524696708589613

/-!
# A026814: Number of partitions of n in which the greatest part is 8.

The programs for A026814, there is no canonical definition to state claims against.
-/

/-! ## A026814.P12780207848130592125

`A266776(n)-A060027(n)`
-/

namespace A026814.P12780207848130592125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266776 n - A060027 n

end

end A026814.P12780207848130592125

/-! ## A026814.P6846290596217799330

`A308989(n)/A028310(n)`
-/

namespace A026814.P6846290596217799330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308989 n : ℚ) / (A028310 n : ℚ)

end

end A026814.P6846290596217799330

/-! ## A026814.P522654994272050517

`A026815(n+9)-A026813(n+7)-A026815(n)`
-/

namespace A026814.P522654994272050517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026815 (n + 9) - A026813 (n + 7) - A026815 n

end

end A026814.P522654994272050517

/-! ## A026814.P4712273585728831239

`Δ[A008636(n)]-A060027(n+1)`
-/

namespace A026814.P4712273585728831239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A060027 (n + 1)

end

end A026814.P4712273585728831239

/-! ## A026814.P6027901421766596487

`Δ[A008636(n)-A060027(n)]-A060027(n)`
-/

namespace A026814.P6027901421766596487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n - A060027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A060027 n

end

end A026814.P6027901421766596487

/-! ## A026814.P13830691001166324205

`A008637(n)-A008636(n)`
-/

namespace A026814.P13830691001166324205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 n - A008636 n

end

end A026814.P13830691001166324205

/-! ## A026814.P3340943852383535920

`A008637(n)-A026813(n+7)`
-/

namespace A026814.P3340943852383535920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 n - A026813 (n + 7)

end

end A026814.P3340943852383535920

/-! ## A026814.P14656657406562137363

`A008637(n)-∑[A001996(n)]`
-/

namespace A026814.P14656657406562137363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026814.P14656657406562137363

/-! ## A026814.P13433099642755302823

`∑[A266776(n)-A001996(n)]`
-/

namespace A026814.P13433099642755302823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266776 n - A001996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026814.P13433099642755302823

/-! ## A026814.P16899624065450518281

`A308989(n)/A233583(n+1)`
-/

namespace A026814.P16899624065450518281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308989 n : ℚ) / (A233583 (n + 1) : ℚ)

end

end A026814.P16899624065450518281

/-!
# A026815: Number of partitions of n in which the greatest part is 9.

The programs for A026815, there is no canonical definition to state claims against.
-/

/-! ## A026815.P5276443904030797904

`A266777(n)-A060028(n)`
-/

namespace A026815.P5276443904030797904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266777 n - A060028 n

end

end A026815.P5276443904030797904

/-! ## A026815.P1327878240296115421

`∑[A266777(n)-A266776(n)]`
-/

namespace A026815.P1327878240296115421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266777 n - A266776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026815.P1327878240296115421

/-! ## A026815.P1197240085959104661

`A026814(n+1)+A060027(n+1)-A060028(n+1)`
-/

namespace A026815.P1197240085959104661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 (n + 1) + (A060027 (n + 1) - A060028 (n + 1))

end

end A026815.P1197240085959104661

/-! ## A026815.P15509004943935566846

`A008638(n)-A026814(n+8)`
-/

namespace A026815.P15509004943935566846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 n - A026814 (n + 8)

end

end A026815.P15509004943935566846

/-! ## A026815.P10404663570536894984

`A008638(n)-A008637(n)`
-/

namespace A026815.P10404663570536894984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 n - A008637 n

end

end A026815.P10404663570536894984

/-! ## A026815.P15159554431503494285

`∑[A266777(n)]-A008637(n)`
-/

namespace A026815.P15159554431503494285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008637 n

end

end A026815.P15159554431503494285

/-! ## A026815.P10045100318444537668

`A266772(2*n)-A008637(n)`
-/

namespace A026815.P10045100318444537668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266772 (2 * n) - A008637 n

end

end A026815.P10045100318444537668

/-! ## A026815.P10505813269800008885

`A326464(n)/A028310(n)`
-/

namespace A026815.P10505813269800008885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326464 n : ℚ) / (A028310 n : ℚ)

end

end A026815.P10505813269800008885

/-! ## A026815.P10919131906885336675

`A326464(n)/A233583(n+1)`
-/

namespace A026815.P10919131906885336675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326464 n : ℚ) / (A233583 (n + 1) : ℚ)

end

end A026815.P10919131906885336675

/-! ## A026815.P11496894294339200949

`A326464(n)/A160755(n+1)`
-/

namespace A026815.P11496894294339200949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326464 n : ℚ) / (A160755 (n + 1) : ℚ)

end

end A026815.P11496894294339200949

/-!
# A026816: Number of partitions of n in which the greatest part is 10.

The programs for A026816, there is no canonical definition to state claims against.
-/

/-! ## A026816.P17683183862151269342

`A266778(n)-A060029(n)`
-/

namespace A026816.P17683183862151269342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266778 n - A060029 n

end

end A026816.P17683183862151269342

/-! ## A026816.P12139166739703690779

`∑[A266778(n)-A266777(n)]`
-/

namespace A026816.P12139166739703690779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266778 n - A266777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026816.P12139166739703690779

/-! ## A026816.P426028584173067345

`A266777(n+1)-A060029(n+1)`
-/

namespace A026816.P426028584173067345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266777 (n + 1) - A060029 (n + 1)

end

end A026816.P426028584173067345

/-! ## A026816.P6102603444962691964

`A026815(n+1)+A060028(n+1)-A060029(n+1)`
-/

namespace A026816.P6102603444962691964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026815 (n + 1) + (A060028 (n + 1) - A060029 (n + 1))

end

end A026816.P6102603444962691964

/-! ## A026816.P17491476416020128227

`A008639(n)-∑[A266777(n)]`
-/

namespace A026816.P17491476416020128227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008639 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026816.P17491476416020128227

/-! ## A026816.P9116981332822233494

`A008639(n)-A026815(n+9)`
-/

namespace A026816.P9116981332822233494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008639 n - A026815 (n + 9)

end

end A026816.P9116981332822233494

/-! ## A026816.P3573604831970466616

`A008639(n)-A008638(n)`
-/

namespace A026816.P3573604831970466616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008639 n - A008638 n

end

end A026816.P3573604831970466616

/-! ## A026816.P8203121254722140876

`∑[A266778(n)]-A008638(n)`
-/

namespace A026816.P8203121254722140876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008638 n

end

end A026816.P8203121254722140876

/-! ## A026816.P5114462908781972234

`Δ[A008638(n)]-A060029(n+1)`
-/

namespace A026816.P5114462908781972234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A060029 (n + 1)

end

end A026816.P5114462908781972234

/-! ## A026816.P16966001858624678208

`Δ[A008638(n)-A060029(n)]-A060029(n)`
-/

namespace A026816.P16966001858624678208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 n - A060029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A060029 n

end

end A026816.P16966001858624678208

/-! ## A026816.P16461830461068967958

`A326588(n)/A028310(n)`
-/

namespace A026816.P16461830461068967958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326588 n : ℚ) / (A028310 n : ℚ)

end

end A026816.P16461830461068967958

/-! ## A026816.P14147147698785257271

`A326588(n)/A233583(n+1)`
-/

namespace A026816.P14147147698785257271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326588 n : ℚ) / (A233583 (n + 1) : ℚ)

end

end A026816.P14147147698785257271

/-!
# A026817: Number of sets which can be obtained by selecting unique elements from two sets with 2n and 3n elements respectively and n common elements.

The programs for A026817, the canonical program `A026817.P12054409485250161144` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026817 has offset 1).

The definition of A026817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026817.P12054409485250161144

`∑[11*n+6]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026817

/-- `∑[11*n+6]` -/
def P12054409485250161144.Spec : Prop :=
  ∀ n, (P12054409485250161144.a n : ℤ) = A026817 (n + 1)

theorem P12054409485250161144.correct : P12054409485250161144.Spec := by
  intro n
  simp only [A026817, Nat.add_sub_cancel]

end A026817

/-! ## A026817.P10318279355795855599

`ogf((6+5x)/(1-3x+3x^2-x^3))`
-/

namespace A026817.P10318279355795855599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 5] [1, -3, 3, -1] n

end

end A026817.P10318279355795855599

namespace A026817

/-- `ogf((6+5x)/(1-3x+3x^2-x^3))` -/
def P10318279355795855599.Spec : Prop :=
  ∀ n, P10318279355795855599.a n = A026817 (n + 1)

end A026817

/-! ## A026817.P13075373243145141603

`abs(∑[a(n-1)+11])` with `a(0)=6`
-/

namespace A026817.P13075373243145141603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026817.P13075373243145141603

namespace A026817

/-- `abs(∑[a(n-1)+11])` -/
def P13075373243145141603.Spec : Prop :=
  ∀ n, (P13075373243145141603.a n : ℤ) = A026817 (n + 1)

end A026817

/-! ## A026817.P14551885191140759127

`floor(∑[a(n-1)+11])` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A026817.P14551885191140759127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026817.P14551885191140759127

namespace A026817

/-- `floor(∑[a(n-1)+11])` -/
def P14551885191140759127.Spec : Prop :=
  ∀ n, (P14551885191140759127.a n : ℤ) = A026817 (n + 1)

end A026817

/-! ## A026817.P8747297977368689026

`ceil(∑[a(n-1)+11])` with `a(0)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A026817.P8747297977368689026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026817.P8747297977368689026

namespace A026817

/-- `ceil(∑[a(n-1)+11])` -/
def P8747297977368689026.Spec : Prop :=
  ∀ n, (P8747297977368689026.a n : ℤ) = A026817 (n + 1)

end A026817

/-! ## A026817.P877357034067392300

`round(∑[a(n-1)+11])` with `a(0)=6`

`round` is left out, it is the identity on integers.
-/

namespace A026817.P877357034067392300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026817.P877357034067392300

namespace A026817

/-- `round(∑[a(n-1)+11])` -/
def P877357034067392300.Spec : Prop :=
  ∀ n, (P877357034067392300.a n : ℤ) = A026817 (n + 1)

end A026817

/-! ## A026817.P17164811461085241274

`∑[a(n-1)+10]+∑[n]` with `a(0)=6`
-/

namespace A026817.P17164811461085241274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A026817.P17164811461085241274

namespace A026817

/-- `∑[a(n-1)+10]+∑[n]` -/
def P17164811461085241274.Spec : Prop :=
  ∀ n, (P17164811461085241274.a n : ℤ) = A026817 (n + 1)

end A026817

/-! ## A026817.P2527694217003187801

`C(n+2, 2)+5*(n+1)²`
-/

namespace A026817.P2527694217003187801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 + 5 * (n + 1) ^ 2

end

end A026817.P2527694217003187801

namespace A026817

/-- `C(n+2, 2)+5*(n+1)²` -/
def P2527694217003187801.Spec : Prop :=
  ∀ n, (P2527694217003187801.a n : ℤ) = A026817 (n + 1)

end A026817

/-! ## A026817.P2755676564524391800

`A160749(n)+Δ[n²]`
-/

namespace A026817.P2755676564524391800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160749 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A026817.P2755676564524391800

namespace A026817

/-- `A160749(n)+Δ[n²]` -/
def P2755676564524391800.Spec : Prop :=
  ∀ n, P2755676564524391800.a n = A026817 (n + 1)

end A026817

/-! ## A026817.P17406444464857067362

`A145910(n)+(n+2)²`
-/

namespace A026817.P17406444464857067362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145910 n + ((n + 2) ^ 2 : ℤ)

end

end A026817.P17406444464857067362

namespace A026817

/-- `A145910(n)+(n+2)²` -/
def P17406444464857067362.Spec : Prop :=
  ∀ n, P17406444464857067362.a n = A026817 (n + 1)

end A026817

/-! ## A026817.P10366559376120523476

`A033581(n+1)-∑[n]`
-/

namespace A026817.P10366559376120523476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A026817.P10366559376120523476

namespace A026817

/-- `A033581(n+1)-∑[n]` -/
def P10366559376120523476.Spec : Prop :=
  ∀ n, P10366559376120523476.a n = A026817 (n + 1)

end A026817

/-! ## A026817.P7680455595910817132

`n²+A235332(n)-n`
-/

namespace A026817.P7680455595910817132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A235332 n - (n : ℤ))

end

end A026817.P7680455595910817132

namespace A026817

/-- `n²+A235332(n)-n` -/
def P7680455595910817132.Spec : Prop :=
  ∀ n, P7680455595910817132.a n = A026817 (n + 1)

end A026817

/-! ## A026817.P101453442644093257

`A017461(n)+a(n-1)` with `a(0)=6`
-/

namespace A026817.P101453442644093257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A017461 n + a (n - 1)

end

end A026817.P101453442644093257

namespace A026817

/-- `A017461(n)+a(n-1)` -/
def P101453442644093257.Spec : Prop :=
  ∀ n, P101453442644093257.a n = A026817 (n + 1)

end A026817

/-! ## A026817.P17355069686422920742

`∑[A017221(n)]+(n+1)²`
-/

namespace A026817.P17355069686422920742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A026817.P17355069686422920742

namespace A026817

/-- `∑[A017221(n)]+(n+1)²` -/
def P17355069686422920742.Spec : Prop :=
  ∀ n, P17355069686422920742.a n = A026817 (n + 1)

end A026817

/-! ## A026817.P6078719618178882963

`∑[n]+∑[A017329(n)+1]`
-/

namespace A026817.P6078719618178882963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A026817.P6078719618178882963

namespace A026817

/-- `∑[n]+∑[A017329(n)+1]` -/
def P6078719618178882963.Spec : Prop :=
  ∀ n, P6078719618178882963.a n = A026817 (n + 1)

end A026817

/-! ## A026817.P17533014198489762765

`A022267(n+1)+(n+1)²`
-/

namespace A026817.P17533014198489762765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A026817.P17533014198489762765

namespace A026817

/-- `A022267(n+1)+(n+1)²` -/
def P17533014198489762765.Spec : Prop :=
  ∀ n, P17533014198489762765.a n = A026817 (n + 1)

end A026817

/-! ## A026817.P52337416856239559

`A201279(n)-(∑[n-2]+1)`
-/

namespace A026817.P52337416856239559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201279 n - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A026817.P52337416856239559

namespace A026817

/-- `A201279(n)-(∑[n-2]+1)` -/
def P52337416856239559.Spec : Prop :=
  ∀ n, P52337416856239559.a n = A026817 (n + 1)

end A026817

/-! ## A026817.P15093748815853257641

`(A017509(n)/2+1)*(n+1)`
-/

namespace A026817.P15093748815853257641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017509 n : ℚ) / 2 + 1) * (n + 1 : ℚ)

end

end A026817.P15093748815853257641

namespace A026817

/-- `(A017509(n)/2+1)*(n+1)` -/
def P15093748815853257641.Spec : Prop :=
  ∀ n, P15093748815853257641.a n = (A026817 (n + 1) : ℚ)

end A026817

/-! ## A026817.P15081344203187524809

`a(n-1)+A017341(n)+n` with `a(0)=6`
-/

namespace A026817.P15081344203187524809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + (A017341 n + (n : ℤ))

end

end A026817.P15081344203187524809

namespace A026817

/-- `a(n-1)+A017341(n)+n` -/
def P15081344203187524809.Spec : Prop :=
  ∀ n, P15081344203187524809.a n = A026817 (n + 1)

end A026817

/-! ## A026817.P6337114198919112481

`a(n-1)+A017593(n)-n` with `a(0)=6`
-/

namespace A026817.P6337114198919112481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + (A017593 n - (n : ℤ))

end

end A026817.P6337114198919112481

namespace A026817

/-- `a(n-1)+A017593(n)-n` -/
def P6337114198919112481.Spec : Prop :=
  ∀ n, P6337114198919112481.a n = A026817 (n + 1)

end A026817

/-!
# A026818: Largest digit of n concatenated with smallest digit of n is prime.

The programs for A026818, the canonical program `A026818.P14528478807317566553` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026818 has offset 1).

The definition of A026818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026818.P14528478807317566553

`eq[2, A000005(A073730(n+1))]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026818

/-- `eq[2, A000005(A073730(n+1))]+1` -/
def P14528478807317566553.Spec : Prop :=
  ∀ n, (P14528478807317566553.a n : ℤ) = A026818 (n + 1)

theorem P14528478807317566553.correct : P14528478807317566553.Spec := by
  intro n
  simp only [A026818, Nat.add_sub_cancel]

end A026818

/-! ## A026818.P8363853532669383859

`eq[A073855(A004186(n)), A138902(n)]`
-/

namespace A026818.P8363853532669383859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (A004186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026818.P8363853532669383859

namespace A026818

/-- `eq[A073855(A004186(n)), A138902(n)]` -/
def P8363853532669383859.Spec : Prop :=
  ∀ n, (P8363853532669383859.a n : ℤ) = A026818 (n + 1)

end A026818

/-! ## A026818.P15988188455061398596

`eq[A074206(A004186(n)²), A262190(n)]`
-/

namespace A026818.P15988188455061398596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A004186 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026818.P15988188455061398596

namespace A026818

/-- `eq[A074206(A004186(n)²), A262190(n)]` -/
def P15988188455061398596.Spec : Prop :=
  ∀ n, (P15988188455061398596.a n : ℤ) = A026818 (n + 1)

end A026818

/-! ## A026818.P15073202415203540419

`eq[A004218(n+1), A327859(A004186(n))]`
-/

namespace A026818.P15073202415203540419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 (A004186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026818.P15073202415203540419

namespace A026818

/-- `eq[A004218(n+1), A327859(A004186(n))]` -/
def P15073202415203540419.Spec : Prop :=
  ∀ n, (P15073202415203540419.a n : ℤ) = A026818 (n + 1)

end A026818

/-! ## A026818.P16951195259966035822

`eq[A077982(A004186(n)), A276502(n+1)]`
-/

namespace A026818.P16951195259966035822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 (A004186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026818.P16951195259966035822

namespace A026818

/-- `eq[A077982(A004186(n)), A276502(n+1)]` -/
def P16951195259966035822.Spec : Prop :=
  ∀ n, (P16951195259966035822.a n : ℤ) = A026818 (n + 1)

end A026818

/-!
# A026819: a(n) = least k such that if 1<=h<=n then T(n,k)>=T(n,h), T given by A008284.

The programs for A026819, there is no canonical definition to state claims against.
-/

/-! ## A026819.P12580673122043590437

`A046155(n+1)`
-/

namespace A026819.P12580673122043590437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (n + 1)

end

end A026819.P12580673122043590437

/-! ## A026819.P945645082727932960

`∑[abs(Δ[A046155(n)])]`
-/

namespace A026819.P945645082727932960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026819.P945645082727932960

/-! ## A026819.P294578114367038988

`∑[A000001(Δ[A046155(n)])]`
-/

namespace A026819.P294578114367038988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026819.P294578114367038988

/-! ## A026819.P13907195384619709018

`∑[A000030(Δ[A046155(n)])]`
-/

namespace A026819.P13907195384619709018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026819.P13907195384619709018

/-! ## A026819.P2500707501642702634

`∑[A000035(Δ[A046155(n)])]`
-/

namespace A026819.P2500707501642702634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026819.P2500707501642702634

/-! ## A026819.P12003910538717417146

`∑[A000045(Δ[A046155(n)])]`
-/

namespace A026819.P12003910538717417146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026819.P12003910538717417146

/-! ## A026819.P6735202258186288942

`∑[A000120(Δ[A046155(n)])]`
-/

namespace A026819.P6735202258186288942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026819.P6735202258186288942

/-! ## A026819.P1134518859023763951

`∑[A000196(Δ[A046155(n)])]`
-/

namespace A026819.P1134518859023763951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026819.P1134518859023763951

/-! ## A026819.P4194124374867042494

`∑[A000217(Δ[A046155(n)])]`
-/

namespace A026819.P4194124374867042494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026819.P4194124374867042494

/-! ## A026819.P4430168986220473819

`∑[A046114(Δ[A046155(n)])]`
-/

namespace A026819.P4430168986220473819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046114 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026819.P4430168986220473819

/-! ## A026819.P7685847201670895287

`∑[A046155(Δ[A046155(n)])]`
-/

namespace A026819.P7685847201670895287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026819.P7685847201670895287

/-!
# A026820: Euler's table: triangular array T read by rows, where T(n,k) = number of partitions in which every part is <= k for 1 <= k <= n. Also number of partitions of n into at most k parts.

The programs for A026820, there is no canonical definition to state claims against.
-/

/-! ## A026820.P13618782403496193288

`A026932(n+1)+A026931(n+1)`
-/

namespace A026820.P13618782403496193288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026932 (n + 1) + A026931 (n + 1)

end

end A026820.P13618782403496193288

/-! ## A026820.P7460539237241390174

`A008284(n+1)+A214314(n+1)-1`
-/

namespace A026820.P7460539237241390174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1) + (A214314 (n + 1) - 1)

end

end A026820.P7460539237241390174

/-! ## A026820.P17318895883085479426

`A058400(gcd(A010816(n), A038722(n+1)))`
-/

namespace A026820.P17318895883085479426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058400 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A026820.P17318895883085479426

/-! ## A026820.P17962271096230914819

`A058400(A038722(n+1))`
-/

namespace A026820.P17962271096230914819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058400 (A038722 (n + 1)).toNat

end

end A026820.P17962271096230914819

/-! ## A026820.P11111184066302163012

`A058400(A061579(n)+1)`
-/

namespace A026820.P11111184066302163012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058400 (A061579 n + 1).toNat

end

end A026820.P11111184066302163012

/-! ## A026820.P13098738331737610084

`A008284(A245300(n)+A108872(n+1))`
-/

namespace A026820.P13098738331737610084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A245300 n + A108872 (n + 1)).toNat

end

end A026820.P13098738331737610084

/-! ## A026820.P390213294061111753

`A106254(A245300(n)+1)`
-/

namespace A026820.P390213294061111753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106254 (A245300 n + 1).toNat

end

end A026820.P390213294061111753

/-! ## A026820.P9162144585535373247

`A008284(A080036(A245300(n)))`
-/

namespace A026820.P9162144585535373247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A080036 (A245300 n).toNat).toNat

end

end A026820.P9162144585535373247

/-! ## A026820.P16341513120599062801

`A026931(n+1)+A026920(A245300(n)+A108872(n+1))`
-/

namespace A026820.P16341513120599062801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026931 (n + 1) + A026920 (A245300 n + A108872 (n + 1)).toNat

end

end A026820.P16341513120599062801

/-! ## A026820.P17531476859000582108

`A072233(A245300(comp[∑[n]]))`
-/

namespace A026820.P17531476859000582108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A245300 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A026820.P17531476859000582108

/-!
# A026821: Triangular array T read by rows: T(n,k) = number of partitions of n into distinct parts, the least being k, for k=1,2,...,n.

The programs for A026821, there is no canonical definition to state claims against.
-/

/-! ## A026821.P6677143267505090621

`A127322(ceil(ratio[A188567(n+1)]))`
-/

namespace A026821.P6677143267505090621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A026821.P6677143267505090621

/-! ## A026821.P3771114999485547818

`A096765(A120885(n+1)%A166537(n+1))`
-/

namespace A026821.P3771114999485547818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (Int.tmod (A120885 (n + 1)) (A166537 (n + 1))).toNat

end

end A026821.P3771114999485547818

/-! ## A026821.P17707783131059396521

`A102669(2^A137585(n+1))`
-/

namespace A026821.P17707783131059396521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A137585 (n + 1) : ℤ))).toNat

end

end A026821.P17707783131059396521

/-! ## A026821.P5386691739857509156

`A001221(A013025(A137586(n+1)))`
-/

namespace A026821.P5386691739857509156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A013025 (A137586 (n + 1)).toNat).toNat

end

end A026821.P5386691739857509156

/-! ## A026821.P12812542227963598658

`A371245(A134033(n+1))`
-/

namespace A026821.P12812542227963598658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371245 (A134033 (n + 1)).toNat

end

end A026821.P12812542227963598658

/-!
# A026822: CONTINUANT transform of Fibonacci number 1, 1, 2, 3, 5, 8, ...

The programs for A026822, there is no canonical definition to state claims against.
-/

/-! ## A026822.P4884246385643656677

`a(n-2)+a(n-1)*A000045(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A026822.P4884246385643656677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) * A000045 (n + 1)

end

end A026822.P4884246385643656677

/-! ## A026822.P13373527000393150269

`A328505(A110083(n))+n`
-/

namespace A026822.P13373527000393150269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328505 (A110083 n).toNat + (n : ℤ)

end

end A026822.P13373527000393150269

/-!
# A026824: Number of partitions of n into distinct parts, the least being 3.

The programs for A026824, there is no canonical definition to state claims against.
-/

/-! ## A026824.P3627465324303061725

`A025148(n)-(A026825(n)+A025150(n))`
-/

namespace A026824.P3627465324303061725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025148 n - (A026825 n + A025150 n)

end

end A026824.P3627465324303061725

/-! ## A026824.P16920284553318620436

`A025149(abs(3-n))`
-/

namespace A026824.P16920284553318620436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025149 |3 - (n : ℤ)|.toNat

end

end A026824.P16920284553318620436

/-! ## A026824.P5202812978567214252

`A025148(n)-A025149(n)`
-/

namespace A026824.P5202812978567214252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025148 n - A025149 n

end

end A026824.P5202812978567214252

/-! ## A026824.P13449168267239709907

`A096749(n+2)-A025149(n)`
-/

namespace A026824.P13449168267239709907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096749 (n + 2) - A025149 n

end

end A026824.P13449168267239709907

/-! ## A026824.P6417728200917439049

`A025149(n+1)-Δ[A015745(n)]`
-/

namespace A026824.P6417728200917439049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015745 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025149 (n + 1) - (f1 (n + 1) - f1 n)

end

end A026824.P6417728200917439049

/-! ## A026824.P17433138082080735854

`A025149(n+1)+A015745(n)-A015745(n+1)`
-/

namespace A026824.P17433138082080735854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025149 (n + 1) + (A015745 n - A015745 (n + 1))

end

end A026824.P17433138082080735854

/-!
# A026825: Number of partitions of n into distinct parts, the least being 4.

The programs for A026825, there is no canonical definition to state claims against.
-/

/-! ## A026825.P2581433991522324977

`A025150(abs(4-n))`
-/

namespace A026825.P2581433991522324977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025150 |4 - (n : ℤ)|.toNat

end

end A026825.P2581433991522324977

/-! ## A026825.P11297667248182578888

`A026824(n+3)-A025150(n)`
-/

namespace A026825.P11297667248182578888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026824 (n + 3) - A025150 n

end

end A026825.P11297667248182578888

/-! ## A026825.P14241638860108157094

`A025149(n)-A025150(n)`
-/

namespace A026825.P14241638860108157094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025149 n - A025150 n

end

end A026825.P14241638860108157094

/-! ## A026825.P17284431990801700014

`A025149(n)-(A026826(n)+A025151(n))`
-/

namespace A026825.P17284431990801700014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025149 n - (A026826 n + A025151 n)

end

end A026825.P17284431990801700014

/-! ## A026825.P2151821523605191541

`A025150(n+4)-Δ[A015745(n+3)]`
-/

namespace A026825.P2151821523605191541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015745 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025150 (n + 4) - (f1 (n + 1) - f1 n)

end

end A026825.P2151821523605191541

/-!
# A026826: Number of partitions of n into distinct parts, the least being 5.

The programs for A026826, there is no canonical definition to state claims against.
-/

/-! ## A026826.P13339342909914624827

`A025151(abs(5-n))`
-/

namespace A026826.P13339342909914624827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025151 |5 - (n : ℤ)|.toNat

end

end A026826.P13339342909914624827

/-! ## A026826.P5336005478965184268

`A026825(n+4)-A025151(n)`
-/

namespace A026826.P5336005478965184268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026825 (n + 4) - A025151 n

end

end A026826.P5336005478965184268

/-! ## A026826.P2848926302494163606

`A025150(n)-A025151(n)`
-/

namespace A026826.P2848926302494163606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025150 n - A025151 n

end

end A026826.P2848926302494163606

/-! ## A026826.P7647212141338311771

`A025150(n)-(A026827(n)+A025152(n))`
-/

namespace A026826.P7647212141338311771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025150 n - (A026827 n + A025152 n)

end

end A026826.P7647212141338311771

/-!
# A026827: Number of partitions of n into distinct parts, the least being 6.

The programs for A026827, there is no canonical definition to state claims against.
-/

/-! ## A026827.P8408677251484258442

`A025151(n)-(A026828(n)+A025153(n))`
-/

namespace A026827.P8408677251484258442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025151 n - (A026828 n + A025153 n)

end

end A026827.P8408677251484258442

/-! ## A026827.P18385646649353516355

`A025152(abs(6-n))`
-/

namespace A026827.P18385646649353516355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025152 |6 - (n : ℤ)|.toNat

end

end A026827.P18385646649353516355

/-! ## A026827.P17660573207234674418

`A025151(n)-A025152(n)`
-/

namespace A026827.P17660573207234674418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025151 n - A025152 n

end

end A026827.P17660573207234674418

/-! ## A026827.P18164296814796043504

`A026826(A020710(n))-A025152(n)`
-/

namespace A026827.P18164296814796043504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026826 (A020710 n).toNat - A025152 n

end

end A026827.P18164296814796043504

/-! ## A026827.P7697847108763054756

`A025150(n)-(A026826(n)+A025152(n))`
-/

namespace A026827.P7697847108763054756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025150 n - (A026826 n + A025152 n)

end

end A026827.P7697847108763054756

/-!
# A026828: Number of partitions of n into distinct parts, the least being 7.

The programs for A026828, there is no canonical definition to state claims against.
-/

/-! ## A026828.P8273859796549108008

`A025153(abs(7-n))`
-/

namespace A026828.P8273859796549108008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025153 |7 - (n : ℤ)|.toNat

end

end A026828.P8273859796549108008

/-! ## A026828.P11202139232816555233

`A026827(n+6)-A025153(n)`
-/

namespace A026828.P11202139232816555233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026827 (n + 6) - A025153 n

end

end A026828.P11202139232816555233

/-! ## A026828.P1524008216548765783

`A025151(n)-A025153(n)-A026827(n)`
-/

namespace A026828.P1524008216548765783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025151 n - A025153 n - A026827 n

end

end A026828.P1524008216548765783

/-! ## A026828.P6061943144488780934

`A025152(n)-A025153(n)`
-/

namespace A026828.P6061943144488780934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025152 n - A025153 n

end

end A026828.P6061943144488780934

/-! ## A026828.P15395442395444473581

`A025152(n)-(A026829(n)+A025154(n))`
-/

namespace A026828.P15395442395444473581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025152 n - (A026829 n + A025154 n)

end

end A026828.P15395442395444473581

/-!
# A026829: Number of partitions of n into distinct parts, the least being 8.

The programs for A026829, there is no canonical definition to state claims against.
-/

/-! ## A026829.P2446786901361352250

`A025154(abs(8-n))`
-/

namespace A026829.P2446786901361352250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025154 |8 - (n : ℤ)|.toNat

end

end A026829.P2446786901361352250

/-! ## A026829.P2103020983120895127

`A025153(n)-A025154(n)`
-/

namespace A026829.P2103020983120895127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025153 n - A025154 n

end

end A026829.P2103020983120895127

/-! ## A026829.P5872435184115325785

`A026828(n+7)-A025154(n)`
-/

namespace A026829.P5872435184115325785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026828 (n + 7) - A025154 n

end

end A026829.P5872435184115325785

/-! ## A026829.P17382895167309206850

`A025153(n)-(A026830(n)+A025155(n))`
-/

namespace A026829.P17382895167309206850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025153 n - (A026830 n + A025155 n)

end

end A026829.P17382895167309206850

/-! ## A026829.P2381850958675350619

`A025152(n)-A025154(n)-A026828(n)`
-/

namespace A026829.P2381850958675350619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025152 n - A025154 n - A026828 n

end

end A026829.P2381850958675350619

/-!
# A026830: Number of partitions of n into distinct parts, the least being 9.

The programs for A026830, there is no canonical definition to state claims against.
-/

/-! ## A026830.P8328163016823160428

`A025155(abs(9-n))`
-/

namespace A026830.P8328163016823160428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025155 |9 - (n : ℤ)|.toNat

end

end A026830.P8328163016823160428

/-! ## A026830.P12491375966897544895

`A025154(n)-A025155(n)`
-/

namespace A026830.P12491375966897544895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025154 n - A025155 n

end

end A026830.P12491375966897544895

/-! ## A026830.P12051437759916502277

`A025154(n)-(A096740(n)+A026831(n))`
-/

namespace A026830.P12051437759916502277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025154 n - (A096740 n + A026831 n)

end

end A026830.P12051437759916502277

/-! ## A026830.P17273991441874282337

`A025153(n)-(A026829(n)+A025155(n))`
-/

namespace A026830.P17273991441874282337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025153 n - (A026829 n + A025155 n)

end

end A026830.P17273991441874282337

/-! ## A026830.P14772670986346273291

`A026829(A020722(n))-A025155(n)`
-/

namespace A026830.P14772670986346273291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026829 (A020722 n).toNat - A025155 n

end

end A026830.P14772670986346273291

/-! ## A026830.P11024384401425697111

`A025155(A349315(n))%A000040(A000009(n))`
-/

namespace A026830.P11024384401425697111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025155 (A349315 n).toNat) (A000040 (A000009 n).toNat)

end

end A026830.P11024384401425697111

/-!
# A026831: Number of partitions of n into distinct parts, the least being 10.

The programs for A026831, there is no canonical definition to state claims against.
-/

/-! ## A026831.P17735696701956961258

`A096740(abs(10-n))`
-/

namespace A026831.P17735696701956961258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096740 |10 - (n : ℤ)|.toNat

end

end A026831.P17735696701956961258

/-! ## A026831.P11781627353868499608

`A025155(n)-A096740(n)`
-/

namespace A026831.P11781627353868499608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025155 n - A096740 n

end

end A026831.P11781627353868499608

/-! ## A026831.P288164703850208763

`A026830(n+9)-A096740(n)`
-/

namespace A026831.P288164703850208763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026830 (n + 9) - A096740 n

end

end A026831.P288164703850208763

/-! ## A026831.P10759766677094376871

`A025153(n)-A026829(n)-A026830(n)-A096740(n)`
-/

namespace A026831.P10759766677094376871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025153 n - A026829 n - A026830 n - A096740 n

end

end A026831.P10759766677094376871

/-! ## A026831.P8290461031065679276

`A025155(n)-A026821(A000217(n+9)+10)`
-/

namespace A026831.P8290461031065679276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025155 n - A026821 (A000217 (n + 9) + 10).toNat

end

end A026831.P8290461031065679276

/-! ## A026831.P2772116187056814137

`A025155(n)-A026821(A000124(n+11)-12-2*n)`
-/

namespace A026831.P2772116187056814137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025155 n - A026821 (A000124 (n + 11) - 12 - (2 * n : ℤ)).toNat

end

end A026831.P2772116187056814137

/-!
# A026832: Number of partitions of n into distinct parts, the least being odd.

The programs for A026832, there is no canonical definition to state claims against.
-/

/-! ## A026832.P17557528563445303921

`A000009(n)%A092265(n+1)-A026833(n)`
-/

namespace A026832.P17557528563445303921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n) (A092265 (n + 1)) - A026833 n

end

end A026832.P17557528563445303921

/-! ## A026832.P16413448867644177245

`floor(A097042(n)/2)`
-/

namespace A026832.P16413448867644177245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097042 n : ℚ) / 2⌋

end

end A026832.P16413448867644177245

/-! ## A026832.P3111045100585116623

`(A097042(n)-A000007(n))/2`
-/

namespace A026832.P3111045100585116623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097042 n - A000007 n : ℚ) / 2

end

end A026832.P3111045100585116623

/-! ## A026832.P14153039032081203351

`A026833(n)+A097042(n)-A000009(n)`
-/

namespace A026832.P14153039032081203351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026833 n + (A097042 n - A000009 n)

end

end A026832.P14153039032081203351

/-! ## A026832.P13127950984272593707

`A273943(A097042(n)*A178334(n))`
-/

namespace A026832.P13127950984272593707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A097042 n * A178334 n).toNat

end

end A026832.P13127950984272593707

/-! ## A026832.P17003568427983883367

`A273943(A097042(n)+A178334(n)-1)`
-/

namespace A026832.P17003568427983883367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A097042 n + (A178334 n - 1)).toNat

end

end A026832.P17003568427983883367

/-! ## A026832.P6450730952940400772

`A273943(A097042(n)-(1-A178334(n)))`
-/

namespace A026832.P6450730952940400772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A097042 n - (1 - A178334 n)).toNat

end

end A026832.P6450730952940400772

/-! ## A026832.P4411263395874756825

`A014682(A097042(n)%A007096(n))`
-/

namespace A026832.P4411263395874756825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.tmod (A097042 n) (A007096 n)).toNat

end

end A026832.P4411263395874756825

/-! ## A026832.P9641482735783103299

`A004526(A097042(n))`
-/

namespace A026832.P9641482735783103299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A097042 n).toNat

end

end A026832.P9641482735783103299

/-!
# A026833: Number of partitions of n into distinct parts, the least being even.

The programs for A026833, there is no canonical definition to state claims against.
-/

/-! ## A026833.P14907783705781198647

`A000009(n)-A026832(A028310(n))`
-/

namespace A026833.P14907783705781198647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A026832 (A028310 n).toNat

end

end A026833.P14907783705781198647

/-! ## A026833.P6060173322449664

`A000009(n)-A026832(A000007(n)+n)`
-/

namespace A026833.P6060173322449664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A026832 (A000007 n + (n : ℤ)).toNat

end

end A026833.P6060173322449664

/-! ## A026833.P644991224056748397

`A000009(n)%A005895(n+1)-A026832(n)`
-/

namespace A026833.P644991224056748397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n) (A005895 (n + 1)) - A026832 n

end

end A026833.P644991224056748397

/-! ## A026833.P10663728326126041295

`(A000009(n)-A026832(n))%A000041(n)`
-/

namespace A026833.P10663728326126041295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n - A026832 n) (A000041 n)

end

end A026833.P10663728326126041295

/-! ## A026833.P2445020452804769442

`A000009(n)+A026832(n)-A097042(n)`
-/

namespace A026833.P2445020452804769442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A026832 n - A097042 n)

end

end A026833.P2445020452804769442

/-! ## A026833.P3407007975173746673

`A000009(n)%A033484(n)-A026832(n)`
-/

namespace A026833.P3407007975173746673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n) (A033484 n) - A026832 n

end

end A026833.P3407007975173746673

/-! ## A026833.P18225905022649463464

`A000009(n)-A273943(A097042(n))`
-/

namespace A026833.P18225905022649463464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A273943 (A097042 n).toNat

end

end A026833.P18225905022649463464

/-!
# A026834: a(n) = number of numbers k such that only one partition of n into distinct parts has least part k.

The programs for A026834, the canonical program `A026834.P15410853218638490600` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026834 has offset 1).

The definition of A026834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1482 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026834.P15410853218638490600

`a(n-2)+∑[n]%3` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026834

/-- `a(n-2)+∑[n]%3` -/
def P15410853218638490600.Spec : Prop :=
  ∀ n, (P15410853218638490600.a n : ℤ) = A026834 (n + 1)

theorem P15410853218638490600.correct : P15410853218638490600.Spec := by
  intro n
  simp only [A026834, Nat.add_sub_cancel]

end A026834

/-! ## A026834.P1882497171584000977

`3-floor(a(n-1)-n/3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A026834.P1882497171584000977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  3 - ⌊(a (n - 1) : ℚ) - (n : ℚ) / 3⌋

end

end A026834.P1882497171584000977

namespace A026834

/-- `3-floor(a(n-1)-n/3)` -/
def P1882497171584000977.Spec : Prop :=
  ∀ n, P1882497171584000977.a n = A026834 (n + 1)

end A026834

/-! ## A026834.P17294746848178626981

`ceil(n/3+3-a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A026834.P17294746848178626981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ⌈(n : ℚ) / 3 + (3 - a (n - 1) : ℚ)⌉

end

end A026834.P17294746848178626981

namespace A026834

/-- `ceil(n/3+3-a(n-1))` -/
def P17294746848178626981.Spec : Prop :=
  ∀ n, P17294746848178626981.a n = A026834 (n + 1)

end A026834

/-! ## A026834.P1243027298218732946

`3-(a(n-1)-ceil(n/3))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A026834.P1243027298218732946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  3 - (a (n - 1) - ⌈(n : ℚ) / 3⌉)

end

end A026834.P1243027298218732946

namespace A026834

/-- `3-(a(n-1)-ceil(n/3))` -/
def P1243027298218732946.Spec : Prop :=
  ∀ n, P1243027298218732946.a n = A026834 (n + 1)

end A026834

/-! ## A026834.P178232762081360635

`Δ[comp[2*n+3]+round((2-n)²/12)]`
-/

namespace A026834.P178232762081360635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) + SequenceMachineLib.roundAway (((2 - (n : ℤ)) ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026834.P178232762081360635

namespace A026834

/-- `Δ[comp[2*n+3]+round((2-n)²/12)]` -/
def P178232762081360635.Spec : Prop :=
  ∀ n, P178232762081360635.a n = A026834 (n + 1)

end A026834

/-! ## A026834.P16076700393754228352

`∑[char[3*n+1]-a(n-1)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A026834.P16076700393754228352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0] fun n f1 =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026834.P16076700393754228352

namespace A026834

/-- `∑[char[3*n+1]-a(n-1)]` -/
def P16076700393754228352.Spec : Prop :=
  ∀ n, P16076700393754228352.a n = A026834 (n + 1)

end A026834

/-! ## A026834.P16045815027644505602

`∑[gcd(2, n)-A107751(n)]`
-/

namespace A026834.P16045815027644505602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) - A107751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026834.P16045815027644505602

namespace A026834

/-- `∑[gcd(2, n)-A107751(n)]` -/
def P16045815027644505602.Spec : Prop :=
  ∀ n, P16045815027644505602.a n = A026834 (n + 1)

end A026834

/-! ## A026834.P4389529255151393989

`∑[A115360(n+2)^(2-n)²]`
-/

namespace A026834.P4389529255151393989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115360 (n + 2) : ℚ) ^ ((2 - (n : ℤ)) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026834.P4389529255151393989

namespace A026834

/-- `∑[A115360(n+2)^(2-n)²]` -/
def P4389529255151393989.Spec : Prop :=
  ∀ n, P4389529255151393989.a n = (A026834 (n + 1) : ℚ)

end A026834

/-! ## A026834.P3564131000621861388

`A266977(A285870(n))`
-/

namespace A026834.P3564131000621861388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (A285870 n).toNat

end

end A026834.P3564131000621861388

namespace A026834

/-- `A266977(A285870(n))` -/
def P3564131000621861388.Spec : Prop :=
  ∀ n, P3564131000621861388.a n = A026834 (n + 1)

end A026834

/-! ## A026834.P14752405177549675317

`A103221(A057544(n))+1`
-/

namespace A026834.P14752405177549675317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A057544 n).toNat + 1

end

end A026834.P14752405177549675317

namespace A026834

/-- `A103221(A057544(n))+1` -/
def P14752405177549675317.Spec : Prop :=
  ∀ n, P14752405177549675317.a n = A026834 (n + 1)

end A026834

/-! ## A026834.P15221058442914101686

`A011960(A253472(n+1))`
-/

namespace A026834.P15221058442914101686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011960 (A253472 (n + 1)).toNat

end

end A026834.P15221058442914101686

namespace A026834

/-- `A011960(A253472(n+1))` -/
def P15221058442914101686.Spec : Prop :=
  ∀ n, P15221058442914101686.a n = A026834 (n + 1)

end A026834

/-! ## A026834.P15828644939862939074

`A097921(n)-A374702(n)`
-/

namespace A026834.P15828644939862939074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097921 n - A374702 n

end

end A026834.P15828644939862939074

namespace A026834

/-- `A097921(n)-A374702(n)` -/
def P15828644939862939074.Spec : Prop :=
  ∀ n, P15828644939862939074.a n = A026834 (n + 1)

end A026834

/-! ## A026834.P17720830430309844577

`A103221(A171526(n+2))+1`
-/

namespace A026834.P17720830430309844577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A171526 (n + 2)).toNat + 1

end

end A026834.P17720830430309844577

namespace A026834

/-- `A103221(A171526(n+2))+1` -/
def P17720830430309844577.Spec : Prop :=
  ∀ n, P17720830430309844577.a n = A026834 (n + 1)

end A026834

/-! ## A026834.P513486082923838764

`A090168(n)+1-A131737(n)`
-/

namespace A026834.P513486082923838764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090168 n + (1 - A131737 n)

end

end A026834.P513486082923838764

namespace A026834

/-- `A090168(n)+1-A131737(n)` -/
def P513486082923838764.Spec : Prop :=
  ∀ n, P513486082923838764.a n = A026834 (n + 1)

end A026834

/-! ## A026834.P14091373362902987521

`A184985(n+1)+1-A010761(n+1)`
-/

namespace A026834.P14091373362902987521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (n + 1) + (1 - A010761 (n + 1))

end

end A026834.P14091373362902987521

namespace A026834

/-- `A184985(n+1)+1-A010761(n+1)` -/
def P14091373362902987521.Spec : Prop :=
  ∀ n, P14091373362902987521.a n = A026834 (n + 1)

end A026834

/-! ## A026834.P3972662730706580740

`n+1+A110654(n+1)-A107750(n+1)`
-/

namespace A026834.P3972662730706580740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A110654 (n + 1) - A107750 (n + 1))

end

end A026834.P3972662730706580740

namespace A026834

/-- `n+1+A110654(n+1)-A107750(n+1)` -/
def P3972662730706580740.Spec : Prop :=
  ∀ n, P3972662730706580740.a n = A026834 (n + 1)

end A026834

/-! ## A026834.P9236617214776920544

`A266977(n-A004523(A052928(n+1)))`
-/

namespace A026834.P9236617214776920544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 ((n : ℤ) - A004523 (A052928 (n + 1)).toNat).toNat

end

end A026834.P9236617214776920544

namespace A026834

/-- `A266977(n-A004523(A052928(n+1)))` -/
def P9236617214776920544.Spec : Prop :=
  ∀ n, P9236617214776920544.a n = A026834 (n + 1)

end A026834

/-! ## A026834.P10315696439451740360

`A103221(n+2)%(A000040(A109613(n))-1)+1`
-/

namespace A026834.P10315696439451740360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103221 (n + 2)) (A000040 (A109613 n).toNat - 1) + 1

end

end A026834.P10315696439451740360

namespace A026834

/-- `A103221(n+2)%(A000040(A109613(n))-1)+1` -/
def P10315696439451740360.Spec : Prop :=
  ∀ n, P10315696439451740360.a n = A026834 (n + 1)

end A026834

/-! ## A026834.P6447572235641955478

`A004274(2*n+1)+A008647(2*n+1)-A004274(2*n)`
-/

namespace A026834.P6447572235641955478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (2 * n + 1) + (A008647 (2 * n + 1) - A004274 (2 * n))

end

end A026834.P6447572235641955478

namespace A026834

/-- `A004274(2*n+1)+A008647(2*n+1)-A004274(2*n)` -/
def P6447572235641955478.Spec : Prop :=
  ∀ n, P6447572235641955478.a n = A026834 (n + 1)

end A026834

/-!
# A026835: Triangular array read by rows: T(n,k) = number of partitions of n into distinct parts in which every part is >=k, for k=1,2,...,n.

The programs for A026835, there is no canonical definition to state claims against.
-/

/-! ## A026835.P14621462564003938429

`A002024(A098824(n)%A166537(n+1))`
-/

namespace A026835.P14621462564003938429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.tmod (A098824 n) (A166537 (n + 1))).toNat

end

end A026835.P14621462564003938429

/-! ## A026835.P14399709048775187963

`A054846(A195825(n)%A166537(n+1))`
-/

namespace A026835.P14399709048775187963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (Int.tmod (A195825 n) (A166537 (n + 1))).toNat

end

end A026835.P14399709048775187963

/-! ## A026835.P12215521888023530134

`A002024(A098824(n))+A000007(A008778(n))`
-/

namespace A026835.P12215521888023530134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A098824 n).toNat + A000007 (A008778 n).toNat

end

end A026835.P12215521888023530134

/-! ## A026835.P18326416607379166419

`A110592(A143983(n+1))`
-/

namespace A026835.P18326416607379166419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A143983 (n + 1)).toNat

end

end A026835.P18326416607379166419

/-!
# A026836: Triangular array T read by rows: T(n,k) = number of partitions of n into distinct parts, the greatest being k, for k=1,2,...,n.

The programs for A026836, there is no canonical definition to state claims against.
-/

/-! ## A026836.P4404676333269422587

`A070936(A061579(n))`
-/

namespace A026836.P4404676333269422587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070936 (A061579 n).toNat

end

end A026836.P4404676333269422587

/-! ## A026836.P5640294941526118363

`A070936(A114327(n)+n)`
-/

namespace A026836.P5640294941526118363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070936 (A114327 n + (n : ℤ)).toNat

end

end A026836.P5640294941526118363

/-! ## A026836.P3914019102966115192

`A070936(A038722(n+1)-1)`
-/

namespace A026836.P3914019102966115192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070936 (A038722 (n + 1) - 1).toNat

end

end A026836.P3914019102966115192

/-! ## A026836.P15231497660580015976

`A070936(A057944(n)+A025581(n))`
-/

namespace A026836.P15231497660580015976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070936 (A057944 n + A025581 n).toNat

end

end A026836.P15231497660580015976

/-! ## A026836.P1554185517316133207

`A070936(A038722(n+2))`
-/

namespace A026836.P1554185517316133207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070936 (A038722 (n + 2)).toNat

end

end A026836.P1554185517316133207

/-! ## A026836.P16089468402648628856

`A059607(comp[∑[n]])`
-/

namespace A026836.P16089468402648628856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059607 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A026836.P16089468402648628856

/-!
# A026837: Number of partitions of n into distinct parts, the greatest being odd.

The programs for A026837, there is no canonical definition to state claims against.
-/

/-! ## A026837.P1269888625162994791

`A000009(n+1)-A026838(n+1)`
-/

namespace A026837.P1269888625162994791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A026838 (n + 1)

end

end A026837.P1269888625162994791

/-! ## A026837.P7432000659135283842

`Δ[floor(A036469(n)/2)]`
-/

namespace A026837.P7432000659135283842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036469 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026837.P7432000659135283842

/-! ## A026837.P9026450794489399706

`Δ[round(A248956(n)/4)]`
-/

namespace A026837.P9026450794489399706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A248956 n : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026837.P9026450794489399706

/-! ## A026837.P14385916202447134677

`Δ[floor(∑[A000009(n)/2])]`
-/

namespace A026837.P14385916202447134677
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026837.P14385916202447134677

/-! ## A026837.P14822996917361596878

`Δ[floor((A317910(n)+1+n)/2)]`
-/

namespace A026837.P14822996917361596878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A317910 n + 1 + (n : ℤ) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026837.P14822996917361596878

/-! ## A026837.P72088813583360186

`Δ[A036469(n)]-A026838(n+1)`
-/

namespace A026837.P72088813583360186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026838 (n + 1)

end

end A026837.P72088813583360186

/-! ## A026837.P7458637538946398099

`A203568(n+1)+A026838(n+1)`
-/

namespace A026837.P7458637538946398099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203568 (n + 1) + A026838 (n + 1)

end

end A026837.P7458637538946398099

/-! ## A026837.P14560719022639319777

`A026838(n+1)-A143062(n+1)`
-/

namespace A026837.P14560719022639319777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026838 (n + 1) - A143062 (n + 1)

end

end A026837.P14560719022639319777

/-! ## A026837.P7115858077533329124

`(A000009(n+1)-A143062(n+1))/2`
-/

namespace A026837.P7115858077533329124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 (n + 1) - A143062 (n + 1) : ℚ) / 2

end

end A026837.P7115858077533329124

/-! ## A026837.P10567728769054199321

`Δ[or(1, A036469(n))/A020639(2*(n+1))]`
-/

namespace A026837.P10567728769054199321
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A036469 n) : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026837.P10567728769054199321

/-!
# A026838: Number of partitions of n into distinct parts, the greatest being even.

The programs for A026838, there is no canonical definition to state claims against.
-/

/-! ## A026838.P8906959101229900065

`A000009(n+1)-A026837(n+1)`
-/

namespace A026838.P8906959101229900065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A026837 (n + 1)

end

end A026838.P8906959101229900065

/-! ## A026838.P415577912058743566

`Δ[ceil(A036469(n)/2)]`
-/

namespace A026838.P415577912058743566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036469 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026838.P415577912058743566

/-! ## A026838.P6460641340182580239

`Δ[ceil(A248956(n)/4)]`
-/

namespace A026838.P6460641340182580239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A248956 n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026838.P6460641340182580239

/-! ## A026838.P10040305870762636316

`Δ[round(∑[A000009(n)/2])]`
-/

namespace A026838.P10040305870762636316
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026838.P10040305870762636316

/-! ## A026838.P12891428151109036308

`(A143062(n+1)+A000009(n+1))/2`
-/

namespace A026838.P12891428151109036308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143062 (n + 1) + A000009 (n + 1) : ℚ) / 2

end

end A026838.P12891428151109036308

/-! ## A026838.P7441371469995821754

`A143062(n+1)+A026837(n+1)`
-/

namespace A026838.P7441371469995821754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143062 (n + 1) + A026837 (n + 1)

end

end A026838.P7441371469995821754

/-! ## A026838.P11604969929384049354

`A026837(n+1)-A203568(n+1)`
-/

namespace A026838.P11604969929384049354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026837 (n + 1) - A203568 (n + 1)

end

end A026838.P11604969929384049354

/-! ## A026838.P4124382130465117292

`A025147(n)+Δ[A110654(A025147(n))]`
-/

namespace A026838.P4124382130465117292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A025147 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n + (f1 (n + 1) - f1 n)

end

end A026838.P4124382130465117292

/-! ## A026838.P13195338941751675654

`A026832(n+1)+A391233(n+1)-A391228(n+1)`
-/

namespace A026838.P13195338941751675654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026832 (n + 1) + (A391233 (n + 1) - A391228 (n + 1))

end

end A026838.P13195338941751675654

/-!
# A026839: a(n) = MAX{T(n,k) for k=1,2,...,n}, T given in A026836.

The programs for A026839, there is no canonical definition to state claims against.
-/

/-! ## A026839.P10392414295524229551

`A105209(A389509(n))`
-/

namespace A026839.P10392414295524229551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105209 (A389509 n).toNat

end

end A026839.P10392414295524229551

/-! ## A026839.P13512307700877130296

`A048766(ceil(sqrt(A002215(n+3))))`
-/

namespace A026839.P13512307700877130296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ⌈Real.sqrt (A002215 (n + 3) : ℝ)⌉.toNat

end

end A026839.P13512307700877130296

/-! ## A026839.P11857103945174370046

`Δ[floor(8/7*a(n-1))]%A128166(3*n+2)` with `a(0)=8`
-/

namespace A026839.P11857103945174370046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  ⌊(8 : ℚ) / 7 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A128166 (3 * n + 2))

end

end A026839.P11857103945174370046

/-! ## A026839.P4793917738587439570

`A007814(2^A120186(n+3))`
-/

namespace A026839.P4793917738587439570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A120186 (n + 3) : ℤ))).toNat

end

end A026839.P4793917738587439570

/-! ## A026839.P245144649230435144

`A324381(A018140(n))`
-/

namespace A026839.P245144649230435144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324381 (A018140 n).toNat

end

end A026839.P245144649230435144

/-!
# A026840: Triangular array T read by rows: T(n,k) = number of partitions of n into distinct parts <= k, for k=1,2,...n.

The programs for A026840, there is no canonical definition to state claims against.
-/

/-! ## A026840.P823786228148002334

`A079126(comp[∑[n]])`
-/

namespace A026840.P823786228148002334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079126 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A026840.P823786228148002334

/-! ## A026840.P16126852791875544042

`gcd(A000038(n), A079126(A014132(n+1)))`
-/

namespace A026840.P16126852791875544042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A079126 (A014132 (n + 1)).toNat)

end

end A026840.P16126852791875544042

/-! ## A026840.P9111938229979257860

`or(A000007(n), A079126(A014132(n+1)))`
-/

namespace A026840.P9111938229979257860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A079126 (A014132 (n + 1)).toNat)

end

end A026840.P9111938229979257860

/-! ## A026840.P15363698843655643262

`char[A004488(n)]*A079126(A007401(n+1)+1)`
-/

namespace A026840.P15363698843655643262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A079126 (A007401 (n + 1) + 1).toNat

end

end A026840.P15363698843655643262

/-! ## A026840.P14430840107566774856

`gcd(2, A005846(n+1))*A079126(A007401(n+1)+1)`
-/

namespace A026840.P14430840107566774856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A005846 (n + 1)) : ℤ) * A079126 (A007401 (n + 1) + 1).toNat

end

end A026840.P14430840107566774856

/-! ## A026840.P7650023140788181412

`A079126(A014132(n+1)+A000007(n))+A000007(n)`
-/

namespace A026840.P7650023140788181412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079126 (A014132 (n + 1) + A000007 n).toNat + A000007 n

end

end A026840.P7650023140788181412

/-! ## A026840.P12931535290772728709

`∑{d}[A079126(A014132(n+1)), A000010(#)]`
-/

namespace A026840.P12931535290772728709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079126 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A026840.P12931535290772728709

/-! ## A026840.P15964204622420815951

`A014963(∑[n+1])*A079126(A014132(n+1))`
-/

namespace A026840.P15964204622420815951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A079126 (A014132 (n + 1)).toNat

end

end A026840.P15964204622420815951

/-! ## A026840.P17755297031267611540

`A014963(∑[n+1])*A079126(A007401(n+1)+1)`
-/

namespace A026840.P17755297031267611540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A079126 (A007401 (n + 1) + 1).toNat

end

end A026840.P17755297031267611540

/-! ## A026840.P6222381070458427658

`A079126(A014132(n+1))+A000038(A014132(n+1)²)`
-/

namespace A026840.P6222381070458427658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079126 (A014132 (n + 1)).toNat + A000038 (A014132 (n + 1) ^ 2).toNat

end

end A026840.P6222381070458427658

/-!
# A026841: a(n) = T(2n,n-4), T given by A026725.

The programs for A026841, there is no canonical definition to state claims against.
-/

/-! ## A026841.P10685944870334291418

`A026843(n+4)-A000588(n+4)`
-/

namespace A026841.P10685944870334291418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026843 (n + 4) - A000588 (n + 4)

end

end A026841.P10685944870334291418

/-! ## A026841.P11034230328463262358

`A026842(n+4)-A026852(n+4)`
-/

namespace A026841.P11034230328463262358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026842 (n + 4) - A026852 (n + 4)

end

end A026841.P11034230328463262358

/-! ## A026841.P1025014187466269299

`A026673(n+4)-A026856(n+4)`
-/

namespace A026841.P1025014187466269299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026673 (n + 4) - A026856 (n + 4)

end

end A026841.P1025014187466269299

/-! ## A026841.P16108034951569660755

`A026844(n+5)-A026842(n+4)`
-/

namespace A026841.P16108034951569660755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026844 (n + 5) - A026842 (n + 4)

end

end A026841.P16108034951569660755

/-! ## A026841.P14503537312270051766

`A026844(n+5)-(A026844(n+4)+A026843(n+4))`
-/

namespace A026841.P14503537312270051766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026844 (n + 5) - (A026844 (n + 4) + A026843 (n + 4))

end

end A026841.P14503537312270051766

/-! ## A026841.P14370606077094018545

`A026725(2*A028552(n+3))`
-/

namespace A026841.P14370606077094018545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 (2 * A028552 (n + 3)).toNat

end

end A026841.P14370606077094018545

/-! ## A026841.P7582243777358068761

`A026725(A000217(2*(n+4))+n)`
-/

namespace A026841.P7582243777358068761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 (A000217 (2 * (n + 4)) + (n : ℤ)).toNat

end

end A026841.P7582243777358068761

/-! ## A026841.P12531930537449503604

`A026725(A005843(n+3)*(n+6))`
-/

namespace A026841.P12531930537449503604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 (A005843 (n + 3) * (n + 6 : ℤ)).toNat

end

end A026841.P12531930537449503604

/-! ## A026841.P8361911454986972178

`A026725(A051890(n+5)+A005843(n+6))`
-/

namespace A026841.P8361911454986972178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 (A051890 (n + 5) + A005843 (n + 6)).toNat

end

end A026841.P8361911454986972178

/-!
# A026842: a(n) = T(2n,n-3), T given by A026725.

The programs for A026842, there is no canonical definition to state claims against.
-/

/-! ## A026842.P17410966182327374244

`A026673(n+3)-A026851(n+3)`
-/

namespace A026842.P17410966182327374244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026673 (n + 3) - A026851 (n + 3)

end

end A026842.P17410966182327374244

/-! ## A026842.P669355155819409893

`A026843(n+4)-A026673(n+3)`
-/

namespace A026842.P669355155819409893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026843 (n + 4) - A026673 (n + 3)

end

end A026842.P669355155819409893

/-! ## A026842.P1998304907469912435

`A026672(n+4)-A026855(n+3)`
-/

namespace A026842.P1998304907469912435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026672 (n + 4) - A026855 (n + 3)

end

end A026842.P1998304907469912435

/-! ## A026842.P8651388178102299577

`Δ[A026843(n+3)-∑[A026675(n+2)]]`
-/

namespace A026842.P8651388178102299577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026675 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026843 (n + 3) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026842.P8651388178102299577

/-! ## A026842.P14641216861264748908

`A026673(n+3)-(A026856(n+2)+A026855(n+2))`
-/

namespace A026842.P14641216861264748908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026673 (n + 3) - (A026856 (n + 2) + A026855 (n + 2))

end

end A026842.P14641216861264748908

/-! ## A026842.P5746383551937194405

`A026843(n+4)-(A026843(n+3)+A026675(n+3))`
-/

namespace A026842.P5746383551937194405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026843 (n + 4) - (A026843 (n + 3) + A026675 (n + 3))

end

end A026842.P5746383551937194405

/-! ## A026842.P10413332094404577602

`A026725(A059993(n+2))`
-/

namespace A026842.P10413332094404577602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 (A059993 (n + 2)).toNat

end

end A026842.P10413332094404577602

/-! ## A026842.P8306956156015909118

`A026725(A090288(n+2)-1)`
-/

namespace A026842.P8306956156015909118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 (A090288 (n + 2) - 1).toNat

end

end A026842.P8306956156015909118

/-! ## A026842.P2409738943671259072

`record[A026725(A059993(A008611(n)))]`
-/

namespace A026842.P2409738943671259072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 (A059993 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026842.P2409738943671259072

/-! ## A026842.P1778217304213038417

`record[A026725(A059993(A008612(n)))]`
-/

namespace A026842.P1778217304213038417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 (A059993 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026842.P1778217304213038417

/-!
# A026843: a(n) = T(2n,n+3), T given by A026725.

The programs for A026843, there is no canonical definition to state claims against.
-/

/-! ## A026843.P4420461623608991391

`A026675(n+3)-A026855(n+2)`
-/

namespace A026843.P4420461623608991391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026675 (n + 3) - A026855 (n + 2)

end

end A026843.P4420461623608991391

/-! ## A026843.P16269033500754002097

`2*A026673(n+2)-A026851(n+2)`
-/

namespace A026843.P16269033500754002097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026673 (n + 2) - A026851 (n + 2)

end

end A026843.P16269033500754002097

/-! ## A026843.P11022428639514021214

`A026673(n+2)+A026672(n+3)-A026855(n+2)`
-/

namespace A026843.P11022428639514021214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026673 (n + 2) + (A026672 (n + 3) - A026855 (n + 2))

end

end A026843.P11022428639514021214

/-! ## A026843.P4536556056833477090

`A026673(n+3)-A026675(n+3)`
-/

namespace A026843.P4536556056833477090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026673 (n + 3) - A026675 (n + 3)

end

end A026843.P4536556056833477090

/-! ## A026843.P13292102421830769526

`(A026673(n+3)-A026855(n+2))/2`
-/

namespace A026843.P13292102421830769526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026673 (n + 3) - A026855 (n + 2) : ℚ) / 2

end

end A026843.P13292102421830769526

/-! ## A026843.P16107794784313638336

`Δ[A026673(n+2)-∑[A026672(n+2)]]`
-/

namespace A026843.P16107794784313638336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026672 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026673 (n + 2) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026843.P16107794784313638336

/-! ## A026843.P2983194556061436161

`A026673(n+3)-(A026673(n+2)+A026672(n+3))`
-/

namespace A026843.P2983194556061436161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026673 (n + 3) - (A026673 (n + 2) + A026672 (n + 3))

end

end A026843.P2983194556061436161

/-! ## A026843.P5757982910567495710

`A026670(A268581(n+1))`
-/

namespace A026843.P5757982910567495710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026670 (A268581 (n + 1)).toNat

end

end A026843.P5757982910567495710

/-! ## A026843.P7194881429901140709

`A026725(A052905(Δ[(n+1)*(n+1)])-(n+1))`
-/

namespace A026843.P7194881429901140709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 (A052905 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)).toNat

end

end A026843.P7194881429901140709

/-!
# A026844: a(n) = T(2n,n+4), T given by A026725.

The programs for A026844, there is no canonical definition to state claims against.
-/

/-! ## A026844.P10264981357893733490

`A026852(n+4)-A000588(n+4)`
-/

namespace A026844.P10264981357893733490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026852 (n + 4) - A000588 (n + 4)

end

end A026844.P10264981357893733490

/-! ## A026844.P17429578673729865178

`A026842(n+4)-A026843(n+4)`
-/

namespace A026844.P17429578673729865178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026842 (n + 4) - A026843 (n + 4)

end

end A026844.P17429578673729865178

/-! ## A026844.P16406587500471255430

`A026674(n+3)-Δ[A000344(n+3)]`
-/

namespace A026844.P16406587500471255430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026674 (n + 3) - (f1 (n + 1) - f1 n)

end

end A026844.P16406587500471255430

/-! ## A026844.P5420934012875533508

`2*A026842(n+3)-A026852(n+3)`
-/

namespace A026844.P5420934012875533508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026842 (n + 3) - A026852 (n + 3)

end

end A026844.P5420934012875533508

/-! ## A026844.P1732462740300441548

`Δ[A026842(n+3)-∑[A026673(n+2)]]`
-/

namespace A026844.P1732462740300441548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026673 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026842 (n + 3) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026844.P1732462740300441548

/-! ## A026844.P9161991384293605095

`A026842(n+4)-(A026842(n+3)+A026673(n+3))`
-/

namespace A026844.P9161991384293605095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026842 (n + 4) - (A026842 (n + 3) + A026673 (n + 3))

end

end A026844.P9161991384293605095

/-! ## A026844.P213130224848177546

`A236830(A000217(n+9)+9)`
-/

namespace A026844.P213130224848177546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236830 (A000217 (n + 9) + 9).toNat

end

end A026844.P213130224848177546

/-! ## A026844.P7383971037563208138

`A026736(A054000(n+4)-2)`
-/

namespace A026844.P7383971037563208138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 (A054000 (n + 4) - 2).toNat

end

end A026844.P7383971037563208138

/-!
# A026847: a(n) = T(n,m) + T(n,m+1) + ... + T(n,n), where m=[ (n+1)/2 ], T given by A026725.

The programs for A026847, there is no canonical definition to state claims against.
-/

/-! ## A026847.P17663387868284760489

`A010752(A032766(n))`
-/

namespace A026847.P17663387868284760489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010752 (A032766 n).toNat

end

end A026847.P17663387868284760489

/-! ## A026847.P9127572599247376390

`A010752(A002265(6*n))`
-/

namespace A026847.P9127572599247376390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010752 (A002265 (6 * n)).toNat

end

end A026847.P9127572599247376390

/-! ## A026847.P16466998645098020466

`A010752(A001651(n+1)-1)`
-/

namespace A026847.P16466998645098020466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010752 (A001651 (n + 1) - 1).toNat

end

end A026847.P16466998645098020466

/-! ## A026847.P16813442810205976020

`A010752(A097482(n+1)-1)`
-/

namespace A026847.P16813442810205976020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010752 (A097482 (n + 1) - 1).toNat

end

end A026847.P16813442810205976020

/-! ## A026847.P17929933328825060897

`A010752(A008619(3*n)-1)`
-/

namespace A026847.P17929933328825060897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010752 (A008619 (3 * n) - 1).toNat

end

end A026847.P17929933328825060897

/-! ## A026847.P8333015331529717991

`A010752(A008619(n)-1+n)`
-/

namespace A026847.P8333015331529717991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010752 (A008619 n - 1 + (n : ℤ)).toNat

end

end A026847.P8333015331529717991

/-! ## A026847.P16178583782713727827

`A010752(n-(1-A008619(n)))`
-/

namespace A026847.P16178583782713727827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010752 ((n : ℤ) - (1 - A008619 n)).toNat

end

end A026847.P16178583782713727827

/-! ## A026847.P11350131543857624302

`A010752(∑[A014681(a(n-1))])` with `a(0)=0, a(1)=1`
-/

namespace A026847.P11350131543857624302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A014681 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010752 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026847.P11350131543857624302

/-! ## A026847.P4500310957628225125

`A010752(∑[A035214(a(n-1))])` with `a(0)=0, a(1)=1`
-/

namespace A026847.P4500310957628225125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A035214 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010752 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026847.P4500310957628225125

/-! ## A026847.P16298472201664624295

`A193667(A007590(n))`
-/

namespace A026847.P16298472201664624295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193667 (A007590 n).toNat

end

end A026847.P16298472201664624295

/-! ## A026847.P6790765036442456135

`A125171(A007590(n+1))`
-/

namespace A026847.P6790765036442456135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 (A007590 (n + 1)).toNat

end

end A026847.P6790765036442456135

/-! ## A026847.P8582501886677789192

`A125171(A000982(n)+n)`
-/

namespace A026847.P8582501886677789192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 (A000982 n + (n : ℤ)).toNat

end

end A026847.P8582501886677789192

/-! ## A026847.P12736035581494416521

`A125171(∑[A000035(n)+n])`
-/

namespace A026847.P12736035581494416521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026847.P12736035581494416521

/-! ## A026847.P6544209304513148285

`A125171(∑[∑[2*A000035(n)]])`
-/

namespace A026847.P6544209304513148285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026847.P6544209304513148285

/-! ## A026847.P2740773272923126239

`A193923(A047838(n+2))`
-/

namespace A026847.P2740773272923126239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193923 (A047838 (n + 2)).toNat

end

end A026847.P2740773272923126239

/-!
# A026850: a(n) = T(2n,n+1), T given by A026736.

The programs for A026850, there is no canonical definition to state claims against.
-/

/-! ## A026850.P13614857373961951728

`A099376(n)+A026671(n)`
-/

namespace A026850.P13614857373961951728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A026671 n

end

end A026850.P13614857373961951728

/-! ## A026850.P3752994798952953216

`A099376(n)+A026676(2*n)`
-/

namespace A026850.P3752994798952953216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A026676 (2 * n)

end

end A026850.P3752994798952953216

/-! ## A026850.P4453220361862459626

`A099376(n)+A026742(2*n+1)`
-/

namespace A026850.P4453220361862459626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A026742 (2 * n + 1)

end

end A026850.P4453220361862459626

/-! ## A026850.P3649733250807338187

`A165407(3*n+1)+A099376(n)`
-/

namespace A026850.P3649733250807338187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165407 (3 * n + 1) + A099376 n

end

end A026850.P3649733250807338187

/-! ## A026850.P6751033767894308904

`A099376(n)+record[A026676(A014681(n))]`
-/

namespace A026850.P6751033767894308904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026850.P6751033767894308904

/-! ## A026850.P3487933037136121880

`Δ[A026854(n)]-A026671(n)`
-/

namespace A026850.P3487933037136121880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026671 n

end

end A026850.P3487933037136121880

/-! ## A026850.P9307996029670304839

`A026854(n+1)-A026737(n+1)`
-/

namespace A026850.P9307996029670304839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026854 (n + 1) - A026737 (n + 1)

end

end A026850.P9307996029670304839

/-! ## A026850.P13500212537087499778

`A026854(n+1)-A111279(n+2)`
-/

namespace A026850.P13500212537087499778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026854 (n + 1) - A111279 (n + 2)

end

end A026850.P13500212537087499778

/-! ## A026850.P16419075110105903735

`A026854(n+1)-(A026854(n)+A026671(n))`
-/

namespace A026850.P16419075110105903735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026854 (n + 1) - (A026854 n + A026671 n)

end

end A026850.P16419075110105903735

/-! ## A026850.P3508182303351457878

`A026672(n+2)+A026672(n+2)-A026675(n+2)`
-/

namespace A026850.P3508182303351457878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026672 (n + 2) + (A026672 (n + 2) - A026675 (n + 2))

end

end A026850.P3508182303351457878

/-! ## A026850.P13498567060385064471

`2*A026672(n+2)-A026675(n+2)`
-/

namespace A026850.P13498567060385064471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026672 (n + 2) - A026675 (n + 2)

end

end A026850.P13498567060385064471

/-!
# A026851: a(n) = T(2n,n+2), T given by A026736.

The programs for A026851, there is no canonical definition to state claims against.
-/

/-! ## A026851.P6803457974734952251

`A026855(n+2)-A026850(n+2)`
-/

namespace A026851.P6803457974734952251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026855 (n + 2) - A026850 (n + 2)

end

end A026851.P6803457974734952251

/-! ## A026851.P11632939015019810409

`2*A026673(n+2)-A026843(n+3)`
-/

namespace A026851.P11632939015019810409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026673 (n + 2) - A026843 (n + 3)

end

end A026851.P11632939015019810409

/-! ## A026851.P917660383499334771

`A026855(n+2)-(A026855(n+1)+A026854(n+1))`
-/

namespace A026851.P917660383499334771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026855 (n + 2) - (A026855 (n + 1) + A026854 (n + 1))

end

end A026851.P917660383499334771

/-! ## A026851.P13278734019358462592

`A026673(n+2)+A026855(n+2)-A026672(n+3)`
-/

namespace A026851.P13278734019358462592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026673 (n + 2) + (A026855 (n + 2) - A026672 (n + 3))

end

end A026851.P13278734019358462592

/-! ## A026851.P9979095544799912029

`A128899(A167614(n+1))+A026672(n+2)`
-/

namespace A026851.P9979095544799912029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (A167614 (n + 1)).toNat + A026672 (n + 2)

end

end A026851.P9979095544799912029

/-! ## A026851.P8934246148348733131

`A026736(A099776(n+2)+1)`
-/

namespace A026851.P8934246148348733131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 (A099776 (n + 2) + 1).toNat

end

end A026851.P8934246148348733131

/-! ## A026851.P17054730426673359221

`A026736(A167614(2*n+3)+n+1)`
-/

namespace A026851.P17054730426673359221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 (A167614 (2 * n + 3) + (n + 1 : ℤ)).toNat

end

end A026851.P17054730426673359221

/-! ## A026851.P12028634943634537936

`record[A026736(A155705(A194922(n+1)))]`
-/

namespace A026851.P12028634943634537936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 (A155705 (A194922 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026851.P12028634943634537936

/-! ## A026851.P2747101342359203021

`record[A026736(A155705(n+1))/A026736(n)²]`
-/

namespace A026851.P2747101342359203021
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026736 (A155705 (n + 1)).toNat : ℚ) / (A026736 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026851.P2747101342359203021

/-!
# A026852: a(n) = T(2n,n+3), T given by A026736.

The programs for A026852, there is no canonical definition to state claims against.
-/

/-! ## A026852.P3039359625127358876

`A026856(n+3)-A026851(n+3)`
-/

namespace A026852.P3039359625127358876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026856 (n + 3) - A026851 (n + 3)

end

end A026852.P3039359625127358876

/-! ## A026852.P888600980444143417

`Δ[A026856(n+2)]-A026855(n+2)`
-/

namespace A026852.P888600980444143417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026856 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026855 (n + 2)

end

end A026852.P888600980444143417

/-! ## A026852.P11571604553093434129

`A026856(n+3)-(A026856(n+2)+A026855(n+2))`
-/

namespace A026852.P11571604553093434129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026856 (n + 3) - (A026856 (n + 2) + A026855 (n + 2))

end

end A026852.P11571604553093434129

/-! ## A026852.P15042434369598910668

`2*A026842(n+3)-A026844(n+4)`
-/

namespace A026852.P15042434369598910668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026842 (n + 3) - A026844 (n + 4)

end

end A026852.P15042434369598910668

/-! ## A026852.P18078832420719108503

`A026736(A033816(n+3)-(n+3))`
-/

namespace A026852.P18078832420719108503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 (A033816 (n + 3) - (n + 3 : ℤ)).toNat

end

end A026852.P18078832420719108503

/-! ## A026852.P15949098016447100226

`A026736(A000096(2*n+5)+n+7)`
-/

namespace A026852.P15949098016447100226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 (A000096 (2 * n + 5) + (n + 7 : ℤ)).toNat

end

end A026852.P15949098016447100226

/-!
# A026853: a(n) = T(2n,n+4), T given by A026736.

The programs for A026853, there is no canonical definition to state claims against.
-/

/-! ## A026853.P8051568867731135924

`A026857(n+4)-A026852(n+4)`
-/

namespace A026853.P8051568867731135924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026857 (n + 4) - A026852 (n + 4)

end

end A026853.P8051568867731135924

/-! ## A026853.P11248971097380588561

`Δ[A026857(n+3)]-A026856(n+3)`
-/

namespace A026853.P11248971097380588561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026857 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026856 (n + 3)

end

end A026853.P11248971097380588561

/-! ## A026853.P7152132181381500538

`A026736(4*A000124(n+4))`
-/

namespace A026853.P7152132181381500538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 (4 * A000124 (n + 4)).toNat

end

end A026853.P7152132181381500538

/-! ## A026853.P7100403845773354895

`A026736(A033816(n+4)-(n+3))`
-/

namespace A026853.P7100403845773354895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 (A033816 (n + 4) - (n + 3 : ℤ)).toNat

end

end A026853.P7100403845773354895

/-! ## A026853.P5612395918290780275

`A026736(A000096(2*n+7)+n+9)`
-/

namespace A026853.P5612395918290780275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 (A000096 (2 * n + 7) + (n + 9 : ℤ)).toNat

end

end A026853.P5612395918290780275

/-!
# A026854: a(n) = T(2n+1,n+1), T given by A026736.

The programs for A026854, there is no canonical definition to state claims against.
-/

/-! ## A026854.P460794287196501894

`A026726(n)+A000245(n)`
-/

namespace A026854.P460794287196501894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 n + A000245 n

end

end A026854.P460794287196501894

/-! ## A026854.P7340226236454646433

`A026726(n)+Δ[A120304(n)]`
-/

namespace A026854.P7340226236454646433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 n + (f1 (n + 1) - f1 n)

end

end A026854.P7340226236454646433

/-! ## A026854.P423698517251700013

`A026731(2*n)+A000245(n)`
-/

namespace A026854.P423698517251700013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026731 (2 * n) + A000245 n

end

end A026854.P423698517251700013

/-! ## A026854.P6525842670788552801

`A000108(n+1)+A026726(n)-A000108(n)`
-/

namespace A026854.P6525842670788552801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A026726 n - A000108 n)

end

end A026854.P6525842670788552801

/-! ## A026854.P16963010981239645328

`A000245(n)+A026671(n)-A165201(n)%A026671(n)`
-/

namespace A026854.P16963010981239645328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + (A026671 n - Int.tmod (A165201 n) (A026671 n))

end

end A026854.P16963010981239645328

/-! ## A026854.P2804043084850271509

`A026737(n+1)-A026671(n)`
-/

namespace A026854.P2804043084850271509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026737 (n + 1) - A026671 n

end

end A026854.P2804043084850271509

/-! ## A026854.P4344386558526947975

`A111279(n+2)-A026671(n)`
-/

namespace A026854.P4344386558526947975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111279 (n + 2) - A026671 n

end

end A026854.P4344386558526947975

/-! ## A026854.P756194595916252953

`Δ[A026671(n)]-A026672(n+2)`
-/

namespace A026854.P756194595916252953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026672 (n + 2)

end

end A026854.P756194595916252953

/-! ## A026854.P12761620674301835150

`A026737(n+1)-A026676(2*n)`
-/

namespace A026854.P12761620674301835150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026737 (n + 1) - A026676 (2 * n)

end

end A026854.P12761620674301835150

/-! ## A026854.P8241022169291683873

`A111279(n+2)-A026676(2*n)`
-/

namespace A026854.P8241022169291683873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111279 (n + 2) - A026676 (2 * n)

end

end A026854.P8241022169291683873

/-! ## A026854.P2332181697917406977

`A026737(n+1)-A026742(2*n+1)`
-/

namespace A026854.P2332181697917406977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026737 (n + 1) - A026742 (2 * n + 1)

end

end A026854.P2332181697917406977

/-! ## A026854.P8402711348658135500

`A026737(n+1)-A027214(2*n+1)`
-/

namespace A026854.P8402711348658135500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026737 (n + 1) - A027214 (2 * n + 1)

end

end A026854.P8402711348658135500

/-! ## A026854.P4218488130139589091

`2*A026674(n+1)-A026672(n+2)`
-/

namespace A026854.P4218488130139589091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026674 (n + 1) - A026672 (n + 2)

end

end A026854.P4218488130139589091

/-! ## A026854.P9703732343821739492

`A111279(n+2)-A026742(2*n+1)`
-/

namespace A026854.P9703732343821739492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111279 (n + 2) - A026742 (2 * n + 1)

end

end A026854.P9703732343821739492

/-! ## A026854.P18427345842283289314

`A111279(n+2)-A027214(2*n+1)`
-/

namespace A026854.P18427345842283289314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111279 (n + 2) - A027214 (2 * n + 1)

end

end A026854.P18427345842283289314

/-! ## A026854.P16319232812129512334

`A026742(2*(n+1))-A026742(2*n+1)`
-/

namespace A026854.P16319232812129512334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (2 * (n + 1)) - A026742 (2 * n + 1)

end

end A026854.P16319232812129512334

/-! ## A026854.P8207727818409638675

`record[A026742(A014681(n+1))-A026742(n+1)]`
-/

namespace A026854.P8207727818409638675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (A014681 (n + 1)).toNat - A026742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026854.P8207727818409638675

/-! ## A026854.P13394045761203506056

`A000108(n+1)+A026674(n+1)-A026671(n)`
-/

namespace A026854.P13394045761203506056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A026674 (n + 1) - A026671 n)

end

end A026854.P13394045761203506056

/-! ## A026854.P6918114248605704189

`A026671(n+1)-(A026672(n+2)+A026671(n))`
-/

namespace A026854.P6918114248605704189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 (n + 1) - (A026672 (n + 2) + A026671 n)

end

end A026854.P6918114248605704189

/-!
# A026855: a(n) = T(2n+1,n+2), T given by A026736.

The programs for A026855, there is no canonical definition to state claims against.
-/

/-! ## A026855.P12013813959007215242

`A026850(n+2)-A026854(n+1)`
-/

namespace A026855.P12013813959007215242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026850 (n + 2) - A026854 (n + 1)

end

end A026855.P12013813959007215242

/-! ## A026855.P16893951142912580143

`A026850(n+2)-(A026850(n+1)+A026737(n+1))`
-/

namespace A026855.P16893951142912580143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026850 (n + 2) - (A026850 (n + 1) + A026737 (n + 1))

end

end A026855.P16893951142912580143

/-! ## A026855.P903556083229263308

`2*A026675(n+2)-A026673(n+2)`
-/

namespace A026855.P903556083229263308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026675 (n + 2) - A026673 (n + 2)

end

end A026855.P903556083229263308

/-! ## A026855.P5323381894488003543

`A026736(A005408((n+2)²))`
-/

namespace A026855.P5323381894488003543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 (A005408 ((n + 2) ^ 2)).toNat

end

end A026855.P5323381894488003543

/-! ## A026855.P5601964992634757903

`A026736(A184636(n+2)+1)`
-/

namespace A026855.P5601964992634757903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 (A184636 (n + 2) + 1).toNat

end

end A026855.P5601964992634757903

/-! ## A026855.P15516529467490439599

`A026736(A004442(2*(n+2)²))`
-/

namespace A026855.P15516529467490439599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 (A004442 (2 * (n + 2) ^ 2)).toNat

end

end A026855.P15516529467490439599

/-! ## A026855.P2739322133969035550

`A026736(A167614(2*(n+1))+n)`
-/

namespace A026855.P2739322133969035550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 (A167614 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A026855.P2739322133969035550

/-!
# A026856: a(n) = T(2n+1,n+3), T given by A026736.

The programs for A026856, there is no canonical definition to state claims against.
-/

/-! ## A026856.P17826378625329172233

`A026851(n+3)-A026855(n+2)`
-/

namespace A026856.P17826378625329172233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026851 (n + 3) - A026855 (n + 2)

end

end A026856.P17826378625329172233

/-! ## A026856.P3698571700316748776

`A026851(n+3)-(A026851(n+2)+A026850(n+2))`
-/

namespace A026856.P3698571700316748776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026851 (n + 3) - (A026851 (n + 2) + A026850 (n + 2))

end

end A026856.P3698571700316748776

/-! ## A026856.P13125668330602075288

`A026843(n+3)+A026843(n+3)-A026842(n+3)`
-/

namespace A026856.P13125668330602075288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026843 (n + 3) + (A026843 (n + 3) - A026842 (n + 3))

end

end A026856.P13125668330602075288

/-! ## A026856.P10631222514577631184

`2*A026843(n+3)-A026842(n+3)`
-/

namespace A026856.P10631222514577631184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026843 (n + 3) - A026842 (n + 3)

end

end A026856.P10631222514577631184

/-! ## A026856.P13849831435361541728

`A026736(A005893(n+3))`
-/

namespace A026856.P13849831435361541728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 (A005893 (n + 3)).toNat

end

end A026856.P13849831435361541728

/-! ## A026856.P14292363367280902343

`A026736(A167499(2*(n+2))+n)`
-/

namespace A026856.P14292363367280902343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 (A167499 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A026856.P14292363367280902343

/-! ## A026856.P17296020036389737217

`A026736(A167614(2*(n+2))+n+2)`
-/

namespace A026856.P17296020036389737217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 (A167614 (2 * (n + 2)) + (n + 2 : ℤ)).toNat

end

end A026856.P17296020036389737217

/-!
# A026857: a(n) = T(2n+1,n+4), T given by A026736.

The programs for A026857, there is no canonical definition to state claims against.
-/

/-! ## A026857.P3483546861252801561

`A026018(n+3)+A026842(n+3)-A026673(n+2)`
-/

namespace A026857.P3483546861252801561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026018 (n + 3) + (A026842 (n + 3) - A026673 (n + 2))

end

end A026857.P3483546861252801561

/-! ## A026857.P4459633368464820203

`A026852(n+4)-A026856(n+3)`
-/

namespace A026857.P4459633368464820203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026852 (n + 4) - A026856 (n + 3)

end

end A026857.P4459633368464820203

/-! ## A026857.P14665975354650737990

`2*A026844(n+4)-A026841(n+4)`
-/

namespace A026857.P14665975354650737990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026844 (n + 4) - A026841 (n + 4)

end

end A026857.P14665975354650737990

/-! ## A026857.P2885257073162446896

`Δ[A026852(n+3)-∑[A026851(n+2)]]`
-/

namespace A026857.P2885257073162446896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026851 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026852 (n + 3) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026857.P2885257073162446896

/-! ## A026857.P16313669245095044337

`A026852(n+4)-(A026852(n+3)+A026851(n+3))`
-/

namespace A026857.P16313669245095044337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026852 (n + 4) - (A026852 (n + 3) + A026851 (n + 3))

end

end A026857.P16313669245095044337

/-! ## A026857.P2299269806940764373

`A026736(2*(n+4)²+3)`
-/

namespace A026857.P2299269806940764373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 (2 * (n + 4) ^ 2 + 3)

end

end A026857.P2299269806940764373

/-!
# A026859: T(2n,n-4), T given by A026747.

The programs for A026859, there is no canonical definition to state claims against.
-/

/-! ## A026859.P18097096171285574957

`A026747(4*(∑[n+4]+5))`
-/

namespace A026859.P18097096171285574957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (4 * (∑ j ∈ Finset.range (n + 1), f1 j + 5))

end

end A026859.P18097096171285574957

/-!
# A026860: T(2n,n-3), T given by A026747.

The programs for A026860, there is no canonical definition to state claims against.
-/

/-! ## A026860.P1897354624857853459

`A026747(eq[6, round(sqrt(2*(n+1)))²-(2*n+1)])`
-/

namespace A026860.P1897354624857853459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026860.P1897354624857853459

/-! ## A026860.P8976229213461110293

`A026747(A059993(n+2))`
-/

namespace A026860.P8976229213461110293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A059993 (n + 2)).toNat

end

end A026860.P8976229213461110293

/-! ## A026860.P14881018146004445901

`A026747(A142463(n+3)-2)`
-/

namespace A026860.P14881018146004445901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A142463 (n + 3) - 2).toNat

end

end A026860.P14881018146004445901

/-! ## A026860.P9393125608300444674

`A026747(A033816(n+3)-(n+9))`
-/

namespace A026860.P9393125608300444674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A033816 (n + 3) - (n + 9 : ℤ)).toNat

end

end A026860.P9393125608300444674

/-! ## A026860.P3026959300466065995

`A026747(A038722((n+5)²+(n+2)²))`
-/

namespace A026860.P3026959300466065995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A038722 ((n + 5) ^ 2 + (n + 2) ^ 2)).toNat

end

end A026860.P3026959300466065995

/-!
# A026861: T(2n,n+1), T given by A026747.

The programs for A026861, the canonical program `A026861.P9052032595999137875` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026861 has offset 1).

The definition of A026861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026861.P9052032595999137875

`A002212(n+2)-A000108(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026861

/-- `A002212(n+2)-A000108(n+2)` -/
def P9052032595999137875.Spec : Prop :=
  ∀ n, P9052032595999137875.a n = A026861 (n + 1)

theorem P9052032595999137875.correct : P9052032595999137875.Spec := by
  intro n
  simp only [A026861, Nat.add_sub_cancel]

end A026861

/-! ## A026861.P471245241801296625

`A026759(n+1)-A000108(n+1)`
-/

namespace A026861.P471245241801296625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026759 (n + 1) - A000108 (n + 1)

end

end A026861.P471245241801296625

namespace A026861

/-- `A026759(n+1)-A000108(n+1)` -/
def P471245241801296625.Spec : Prop :=
  ∀ n, P471245241801296625.a n = A026861 (n + 1)

end A026861

/-! ## A026861.P5828200003948694018

`A025238(n+3)-A000108(n+2)`
-/

namespace A026861.P5828200003948694018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025238 (n + 3) - A000108 (n + 2)

end

end A026861.P5828200003948694018

namespace A026861

/-- `A025238(n+3)-A000108(n+2)` -/
def P5828200003948694018.Spec : Prop :=
  ∀ n, P5828200003948694018.a n = A026861 (n + 1)

end A026861

/-! ## A026861.P14353330759045042090

`A026762(n+2)-A026748(n+1)`
-/

namespace A026861.P14353330759045042090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026762 (n + 2) - A026748 (n + 1)

end

end A026861.P14353330759045042090

namespace A026861

/-- `A026762(n+2)-A026748(n+1)` -/
def P14353330759045042090.Spec : Prop :=
  ∀ n, P14353330759045042090.a n = A026861 (n + 1)

end A026861

/-! ## A026861.P4795579755689625789

`A026747((n+1)²+(n+2)²)`
-/

namespace A026861.P4795579755689625789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A026861.P4795579755689625789

namespace A026861

/-- `A026747((n+1)²+(n+2)²)` -/
def P4795579755689625789.Spec : Prop :=
  ∀ n, P4795579755689625789.a n = A026861 (n + 1)

end A026861

/-! ## A026861.P13441520314268671263

`A026747(A001844(n+1))%A100062(n+1)`
-/

namespace A026861.P13441520314268671263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026747 (A001844 (n + 1)).toNat) (A100062 (n + 1))

end

end A026861.P13441520314268671263

namespace A026861

/-- `A026747(A001844(n+1))%A100062(n+1)` -/
def P13441520314268671263.Spec : Prop :=
  ∀ n, P13441520314268671263.a n = A026861 (n + 1)

end A026861

/-!
# A026862: T(2n,n+2), T given by A026747.

The programs for A026862, there is no canonical definition to state claims against.
-/

/-! ## A026862.P6074524167235135906

`A026876(n+2)-A002212(n+3)`
-/

namespace A026862.P6074524167235135906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026876 (n + 2) - A002212 (n + 3)

end

end A026862.P6074524167235135906

/-! ## A026862.P6009942603976695516

`A026747(A046092(n+2)+2)`
-/

namespace A026862.P6009942603976695516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A046092 (n + 2) + 2).toNat

end

end A026862.P6009942603976695516

/-! ## A026862.P1065918986831368670

`A026747(record[A156681(n+2)+2])`
-/

namespace A026862.P1065918986831368670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156681 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A026862.P1065918986831368670

/-! ## A026862.P10449271532311303511

`record[A026747(A038722(A156681(n+1)))]`
-/

namespace A026862.P10449271532311303511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A038722 (A156681 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026862.P10449271532311303511

/-! ## A026862.P250840234162414514

`A026747(A132209(n)+A004771(n+1))`
-/

namespace A026862.P250840234162414514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A132209 n + A004771 (n + 1)).toNat

end

end A026862.P250840234162414514

/-! ## A026862.P1128189579935994499

`record[A026747(A278539(A081346(n)))]`
-/

namespace A026862.P1128189579935994499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A278539 (A081346 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026862.P1128189579935994499

/-!
# A026863: T(2n,n+3), T given by A026747.

The programs for A026863, there is no canonical definition to state claims against.
-/

/-! ## A026863.P5930007595470130053

`A026867(n+3)-A026862(n+3)`
-/

namespace A026863.P5930007595470130053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026867 (n + 3) - A026862 (n + 3)

end

end A026863.P5930007595470130053

/-! ## A026863.P16559037361630429116

`Δ[A026867(n+2)]-A026866(n+2)`
-/

namespace A026863.P16559037361630429116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026867 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026866 (n + 2)

end

end A026863.P16559037361630429116

/-! ## A026863.P1718153883498188615

`A026747(A001844(n+3)+2)`
-/

namespace A026863.P1718153883498188615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A001844 (n + 3) + 2).toNat

end

end A026863.P1718153883498188615

/-! ## A026863.P3082368450630085325

`A026747(A167614(2*n+5)+n+3)`
-/

namespace A026863.P3082368450630085325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A167614 (2 * n + 5) + (n + 3 : ℤ)).toNat

end

end A026863.P3082368450630085325

/-! ## A026863.P16910735812460096399

`A026747(A090288(n)+A004768(n+2))`
-/

namespace A026863.P16910735812460096399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A090288 n + A004768 (n + 2)).toNat

end

end A026863.P16910735812460096399

/-!
# A026864: T(2n,n+4), T given by A026747.

The programs for A026864, there is no canonical definition to state claims against.
-/

/-! ## A026864.P9592990425721225555

`A026868(n+4)-A026863(n+4)`
-/

namespace A026864.P9592990425721225555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026868 (n + 4) - A026863 (n + 4)

end

end A026864.P9592990425721225555

/-! ## A026864.P15231555134752993463

`Δ[A026868(n+3)]%A026867(n+3)`
-/

namespace A026864.P15231555134752993463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026868 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A026867 (n + 3))

end

end A026864.P15231555134752993463

/-! ## A026864.P10889120055864708943

`Δ[A026868(n+3)-∑[A026867(n+2)]]`
-/

namespace A026864.P10889120055864708943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026867 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026868 (n + 3) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026864.P10889120055864708943

/-! ## A026864.P4365705571467967918

`A026747(4*A000124(n+4))`
-/

namespace A026864.P4365705571467967918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (4 * A000124 (n + 4)).toNat

end

end A026864.P4365705571467967918

/-! ## A026864.P7690371819504167031

`A026747(A008586(A000096(n+3)+2))`
-/

namespace A026864.P7690371819504167031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A008586 (A000096 (n + 3) + 2).toNat).toNat

end

end A026864.P7690371819504167031

/-!
# A026866: a(n) = T(2n+1,n+2), T given by A026747.

The programs for A026866, there is no canonical definition to state claims against.
-/

/-! ## A026866.P16021413516744716473

`A026876(n+1)-A000108(n+2)`
-/

namespace A026866.P16021413516744716473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026876 (n + 1) - A000108 (n + 2)

end

end A026866.P16021413516744716473

/-! ## A026866.P16453829892334487454

`A026861(n+2)-A026762(n+2)`
-/

namespace A026866.P16453829892334487454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026861 (n + 2) - A026762 (n + 2)

end

end A026866.P16453829892334487454

/-! ## A026866.P4002447859430670626

`A026747(A268581(n)+4)`
-/

namespace A026866.P4002447859430670626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A268581 n + 4).toNat

end

end A026866.P4002447859430670626

/-! ## A026866.P17462719393357116127

`A026747(A161532(n)+8)`
-/

namespace A026866.P17462719393357116127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A161532 n + 8).toNat

end

end A026866.P17462719393357116127

/-! ## A026866.P14754135369529437314

`A026747(A005408((n+2)²))`
-/

namespace A026866.P14754135369529437314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A005408 ((n + 2) ^ 2)).toNat

end

end A026866.P14754135369529437314

/-! ## A026866.P15603269444090725568

`A026747(Δ[A005894(n+1)]-1)`
-/

namespace A026866.P15603269444090725568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (f1 (n + 1) - f1 n - 1).toNat

end

end A026866.P15603269444090725568

/-! ## A026866.P1045132660590519290

`A026747(A167614(2*(n+1))+n)`
-/

namespace A026866.P1045132660590519290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A167614 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A026866.P1045132660590519290

/-! ## A026866.P4489253348094089863

`A026747(A004768(n)+A001105(n))`
-/

namespace A026866.P4489253348094089863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A004768 n + A001105 n).toNat

end

end A026866.P4489253348094089863

/-! ## A026866.P7045503083212621580

`record[A026747(A005408(A008616(n)²))]`
-/

namespace A026866.P7045503083212621580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A005408 (A008616 n ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026866.P7045503083212621580

/-!
# A026867: T(2n+1,n+3), T given by A026747.

The programs for A026867, there is no canonical definition to state claims against.
-/

/-! ## A026867.P15125716889918870958

`Δ[A026862(n+2)]-A026861(n+2)`
-/

namespace A026867.P15125716889918870958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026862 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026861 (n + 2)

end

end A026867.P15125716889918870958

/-! ## A026867.P15576909275399868833

`A026862(n+3)-(A026862(n+2)+A026861(n+2))`
-/

namespace A026867.P15576909275399868833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026862 (n + 3) - (A026862 (n + 2) + A026861 (n + 2))

end

end A026867.P15576909275399868833

/-! ## A026867.P6183053317958583512

`A026747(A005893(n+3))`
-/

namespace A026867.P6183053317958583512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A005893 (n + 3)).toNat

end

end A026867.P6183053317958583512

/-! ## A026867.P11700723985411912563

`A026747(A103517((n+3)²))`
-/

namespace A026867.P11700723985411912563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A103517 ((n + 3) ^ 2)).toNat

end

end A026867.P11700723985411912563

/-! ## A026867.P10899422553717252285

`A026747(Δ[A005894(n+2)])`
-/

namespace A026867.P10899422553717252285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (f1 (n + 1) - f1 n).toNat

end

end A026867.P10899422553717252285

/-! ## A026867.P2319673081009598987

`A026747(A167614(2*(n+2))+n+2)`
-/

namespace A026867.P2319673081009598987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A167614 (2 * (n + 2)) + (n + 2 : ℤ)).toNat

end

end A026867.P2319673081009598987

/-!
# A026868: T(2n+1,n+4), T given by A026747.

The programs for A026868, there is no canonical definition to state claims against.
-/

/-! ## A026868.P7611280186791255964

`A026863(n+4)-A026867(n+3)`
-/

namespace A026868.P7611280186791255964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026863 (n + 4) - A026867 (n + 3)

end

end A026868.P7611280186791255964

/-! ## A026868.P11761640464930053104

`Δ[A026863(n+3)]-A026862(n+3)`
-/

namespace A026868.P11761640464930053104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026863 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026862 (n + 3)

end

end A026868.P11761640464930053104

/-! ## A026868.P3657649458416910347

`A026747(A001105(n+4)+3)`
-/

namespace A026868.P3657649458416910347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A001105 (n + 4) + 3).toNat

end

end A026868.P3657649458416910347

/-! ## A026868.P9050322465242202105

`A026747(A000217(2*(n+4))-(n+1))`
-/

namespace A026868.P9050322465242202105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A000217 (2 * (n + 4)) - (n + 1 : ℤ)).toNat

end

end A026868.P9050322465242202105

/-! ## A026868.P11411642573882821519

`A026747(A142463(n+4)-A163300(n+2))`
-/

namespace A026868.P11411642573882821519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (A142463 (n + 4) - A163300 (n + 2)).toNat

end

end A026868.P11411642573882821519

/-!
# A026869: a(n) = T(n,m) + T(n,m+1) + ... + T(n,n), m=[ (n+1)/2 ], T given by A026747.

The programs for A026869, there is no canonical definition to state claims against.
-/

/-! ## A026869.P4461422465627311758

`A026678(n)+A011744(A015448(n))`
-/

namespace A026869.P4461422465627311758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026678 n + A011744 (A015448 n).toNat

end

end A026869.P4461422465627311758

/-! ## A026869.P7598689060532920595

`A054907(A052551(n))+A026678(n)`
-/

namespace A026869.P7598689060532920595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054907 (A052551 n).toNat + A026678 n

end

end A026869.P7598689060532920595

/-! ## A026869.P13859421868247848775

`A105518(A032551(n+1))+A026678(n)`
-/

namespace A026869.P13859421868247848775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 (A032551 (n + 1)).toNat + A026678 n

end

end A026869.P13859421868247848775

/-! ## A026869.P16930859097694259591

`A345917(or(A027306(n), A296620(n+5)))`
-/

namespace A026869.P16930859097694259591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345917 (Int.lor (A027306 n) (A296620 (n + 5))).toNat

end

end A026869.P16930859097694259591

/-!
# A026870: T(2n,n-4), T given by A026758.

The programs for A026870, there is no canonical definition to state claims against.
-/

/-! ## A026870.P16965162212481218736

`A026758(eq[8, round(sqrt(2*(n+1)))²-(2*n+1)])`
-/

namespace A026870.P16965162212481218736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026870.P16965162212481218736

/-! ## A026870.P6632403049242511412

`A026758(4*A000096(n+3))`
-/

namespace A026870.P6632403049242511412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (4 * A000096 (n + 3)).toNat

end

end A026870.P6632403049242511412

/-! ## A026870.P8994691903315834342

`A026758(A000217(2*(n+4))+n)`
-/

namespace A026870.P8994691903315834342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A000217 (2 * (n + 4)) + (n : ℤ)).toNat

end

end A026870.P8994691903315834342

/-! ## A026870.P14342686447226213340

`A026758(A022998(n+3)*A022998(n+6))`
-/

namespace A026870.P14342686447226213340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A022998 (n + 3) * A022998 (n + 6)).toNat

end

end A026870.P14342686447226213340

/-! ## A026870.P8937303596560474058

`A026758(A151978(2*n+5)+A133263(2*n))`
-/

namespace A026870.P8937303596560474058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A151978 (2 * n + 5) + A133263 (2 * n)).toNat

end

end A026870.P8937303596560474058

/-!
# A026871: T(2n,n-3), T given by A026758.

The programs for A026871, there is no canonical definition to state claims against.
-/

/-! ## A026871.P1175411214857756910

`A026758(eq[6, round(sqrt(2*(n+1)))²-(2*n+1)])`
-/

namespace A026871.P1175411214857756910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026871.P1175411214857756910

/-! ## A026871.P5293769205813436762

`A026758(A046092(n+3)-3)`
-/

namespace A026871.P5293769205813436762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A046092 (n + 3) - 3).toNat

end

end A026871.P5293769205813436762

/-! ## A026871.P8391895500616004331

`A026758(A001844(n+3)-4)`
-/

namespace A026871.P8391895500616004331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A001844 (n + 3) - 4).toNat

end

end A026871.P8391895500616004331

/-! ## A026871.P14847475500776547662

`A026758(A055999(2*(n+2))-(n+1))`
-/

namespace A026871.P14847475500776547662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A055999 (2 * (n + 2)) - (n + 1 : ℤ)).toNat

end

end A026871.P14847475500776547662

/-! ## A026871.P14062041128176464147

`A026758(A266074(2*(n+2))+2*n+5)`
-/

namespace A026871.P14062041128176464147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A266074 (2 * (n + 2)) + (2 * n + 5 : ℤ)).toNat

end

end A026871.P14062041128176464147

/-!
# A026872: T(2n,n+1), T given by A026758.

The programs for A026872, there is no canonical definition to state claims against.
-/

/-! ## A026872.P300112671365493344

`Δ[A026759(n+1)]-A026762(n+2)`
-/

namespace A026872.P300112671365493344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026762 (n + 2)

end

end A026872.P300112671365493344

/-! ## A026872.P18334844653526335200

`A026758((n+1)²+(n+2)²)`
-/

namespace A026872.P18334844653526335200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A026872.P18334844653526335200

/-! ## A026872.P16653835870011955893

`record[A026758(∑[A266981(n)])]`
-/

namespace A026872.P16653835870011955893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026872.P16653835870011955893

/-! ## A026872.P9771469258348811294

`record[A026758(∑[A014682(n)]-n)]`
-/

namespace A026872.P9771469258348811294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026872.P9771469258348811294

/-! ## A026872.P10094891412062730622

`A026758(A099776(n+1))^A178334(n)`
-/

namespace A026872.P10094891412062730622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026758 (A099776 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A026872.P10094891412062730622

/-! ## A026872.P4973357200041094897

`A007318(A000217(n))*A026758(A099776(n+1))`
-/

namespace A026872.P4973357200041094897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A026758 (A099776 (n + 1)).toNat

end

end A026872.P4973357200041094897

/-!
# A026873: T(2n,n+2), T given by A026758.

The programs for A026873, there is no canonical definition to state claims against.
-/

/-! ## A026873.P2072202593474411641

`A026758(A051890(n+3))`
-/

namespace A026873.P2072202593474411641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A051890 (n + 3)).toNat

end

end A026873.P2072202593474411641

/-! ## A026873.P16301139289941094917

`A026758(A152813(n)+11)`
-/

namespace A026873.P16301139289941094917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A152813 n + 11).toNat

end

end A026873.P16301139289941094917

/-! ## A026873.P12428597517818723906

`A026758(A099776(n+2)+1)`
-/

namespace A026873.P12428597517818723906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A099776 (n + 2) + 1).toNat

end

end A026873.P12428597517818723906

/-! ## A026873.P14362292641323986250

`A026758(eq[2, A056951(n+1)-2])`
-/

namespace A026873.P14362292641323986250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026873.P14362292641323986250

/-! ## A026873.P11993616068811362419

`A026758(eq[2, A056951(n+1)/2])`
-/

namespace A026873.P11993616068811362419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056951 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A026873.P11993616068811362419

/-! ## A026873.P6451173858865376591

`record[A026758(A051890(A008611(n)))]`
-/

namespace A026873.P6451173858865376591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A051890 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026873.P6451173858865376591

/-! ## A026873.P14810002336622941101

`record[A026758(A051890(A008615(n)))]`
-/

namespace A026873.P14810002336622941101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A051890 (A008615 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026873.P14810002336622941101

/-! ## A026873.P6749999539568190605

`record[A026758(A051890(A008616(n)))]`
-/

namespace A026873.P6749999539568190605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A051890 (A008616 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026873.P6749999539568190605

/-!
# A026874: T(2n,n+3), T given by A026758.

The programs for A026874, there is no canonical definition to state claims against.
-/

/-! ## A026874.P10581525772883250338

`Δ[A026878(n+2)-∑[A026877(n+1)]]`
-/

namespace A026874.P10581525772883250338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026877 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026878 (n + 2) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026874.P10581525772883250338

/-! ## A026874.P14421213241951757571

`A026758(eq[6, -A114327(n)])`
-/

namespace A026874.P14421213241951757571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026874.P14421213241951757571

/-! ## A026874.P15307351290538956892

`A026758(eq[6, A056951(n+1)])`
-/

namespace A026874.P15307351290538956892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026874.P15307351290538956892

/-! ## A026874.P8074742767725668505

`A026758(A000096(2*(n+3))-n)`
-/

namespace A026874.P8074742767725668505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A000096 (2 * (n + 3)) - (n : ℤ)).toNat

end

end A026874.P8074742767725668505

/-! ## A026874.P4605683803055400474

`A026758(A133263(2*(n+3))+n+4)`
-/

namespace A026874.P4605683803055400474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A133263 (2 * (n + 3)) + (n + 4 : ℤ)).toNat

end

end A026874.P4605683803055400474

/-!
# A026875: T(2n,n+4), T given by A026758.

The programs for A026875, there is no canonical definition to state claims against.
-/

/-! ## A026875.P7152712064732728387

`Δ[A026879(n+3)-∑[A026878(n+2)]]`
-/

namespace A026875.P7152712064732728387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026878 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026879 (n + 3) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026875.P7152712064732728387

/-! ## A026875.P327473341387518509

`A026758(4*A000124(n+4))`
-/

namespace A026875.P327473341387518509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (4 * A000124 (n + 4)).toNat

end

end A026875.P327473341387518509

/-! ## A026875.P6267087968966614775

`A026758(eq[8, A056951(n+1)])`
-/

namespace A026875.P6267087968966614775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026875.P6267087968966614775

/-! ## A026875.P15021165868305272397

`A026758(A000096(2*(n+4))-n)`
-/

namespace A026875.P15021165868305272397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A000096 (2 * (n + 4)) - (n : ℤ)).toNat

end

end A026875.P15021165868305272397

/-! ## A026875.P1689493453119541732

`A026758(A133263(2*n+9)-(n+3))`
-/

namespace A026875.P1689493453119541732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A133263 (2 * n + 9) - (n + 3 : ℤ)).toNat

end

end A026875.P1689493453119541732

/-!
# A026876: T(2n+1, n+1), T given by A026758.

The programs for A026876, there is no canonical definition to state claims against.
-/

/-! ## A026876.P11924624394799959403

`A026759(n+1)-A026762(n+1)`
-/

namespace A026876.P11924624394799959403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026759 (n + 1) - A026762 (n + 1)

end

end A026876.P11924624394799959403

/-! ## A026876.P7392824278187314837

`A026764(2*(n+1))-A026762(n+1)`
-/

namespace A026876.P7392824278187314837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026764 (2 * (n + 1)) - A026762 (n + 1)

end

end A026876.P7392824278187314837

/-! ## A026876.P2616718048288347324

`A026759(n+1)-A026764(2*n+1)`
-/

namespace A026876.P2616718048288347324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026759 (n + 1) - A026764 (2 * n + 1)

end

end A026876.P2616718048288347324

/-! ## A026876.P13812659203092831105

`A026764(2*(n+1))-A026764(2*n+1)`
-/

namespace A026876.P13812659203092831105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026764 (2 * (n + 1)) - A026764 (2 * n + 1)

end

end A026876.P13812659203092831105

/-! ## A026876.P16765195245471305758

`A026758(2*(n+1)²)`
-/

namespace A026876.P16765195245471305758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (2 * (n + 1) ^ 2)

end

end A026876.P16765195245471305758

/-! ## A026876.P6436037632568835260

`record[A026758(∑[A014682(n)])]`
-/

namespace A026876.P6436037632568835260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026876.P6436037632568835260

/-! ## A026876.P1636928418535840391

`record[A026758(n*A025480(n))]`
-/

namespace A026876.P1636928418535840391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 ((n : ℤ) * A025480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026876.P1636928418535840391

/-! ## A026876.P1971757370401810641

`record[A026758(2*A008615(n)²)]`
-/

namespace A026876.P1971757370401810641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (2 * A008615 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026876.P1971757370401810641

/-! ## A026876.P16219869255518025250

`record[A026758(∑[A266981(n)+1])]`
-/

namespace A026876.P16219869255518025250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026876.P16219869255518025250

/-! ## A026876.P5818710815545623659

`record[A026758(A000217(n)-A026741(n))]`
-/

namespace A026876.P5818710815545623659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A000217 n - A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026876.P5818710815545623659

/-!
# A026877: T(2n+1,n+2), T given by A026758.

The programs for A026877, there is no canonical definition to state claims against.
-/

/-! ## A026877.P1414770194061640887

`A026758(Δ[A037237(n)])`
-/

namespace A026877.P1414770194061640887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (f1 (n + 1) - f1 n).toNat

end

end A026877.P1414770194061640887

/-! ## A026877.P6521900742373510732

`A026758(A058331(n+2))`
-/

namespace A026877.P6521900742373510732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A058331 (n + 2)).toNat

end

end A026877.P6521900742373510732

/-! ## A026877.P960894337320872826

`A026758(A268581(n)+4)`
-/

namespace A026877.P960894337320872826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A268581 n + 4).toNat

end

end A026877.P960894337320872826

/-! ## A026877.P16643963863277972107

`A026758(A161532(n)+8)`
-/

namespace A026877.P16643963863277972107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A161532 n + 8).toNat

end

end A026877.P16643963863277972107

/-! ## A026877.P9958574890163654003

`A026758(A005408((n+2)²))`
-/

namespace A026877.P9958574890163654003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A005408 ((n + 2) ^ 2)).toNat

end

end A026877.P9958574890163654003

/-! ## A026877.P6978793825467015414

`A026758(eq[1, A056951(n+1)-2])`
-/

namespace A026877.P6978793825467015414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026877.P6978793825467015414

/-! ## A026877.P5674007406373473749

`A026758(A037237(n+1)-A037237(n))`
-/

namespace A026877.P5674007406373473749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A037237 (n + 1) - A037237 n).toNat

end

end A026877.P5674007406373473749

/-! ## A026877.P1333547292418694824

`A026758(A163300(n+2)+A001844(n+1))`
-/

namespace A026877.P1333547292418694824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A163300 (n + 2) + A001844 (n + 1)).toNat

end

end A026877.P1333547292418694824

/-!
# A026878: a(n) = T(2n+1,n+3), T given by A026758.

The programs for A026878, there is no canonical definition to state claims against.
-/

/-! ## A026878.P11621912725808059667

`A026758(A005893(n+3))`
-/

namespace A026878.P11621912725808059667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A005893 (n + 3)).toNat

end

end A026878.P11621912725808059667

/-! ## A026878.P2918490061224013430

`A026758(A067728(n+1)+10)`
-/

namespace A026878.P2918490061224013430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A067728 (n + 1) + 10).toNat

end

end A026878.P2918490061224013430

/-! ## A026878.P1991889220758123870

`A026758(Δ[A037237(n+1)]+1)`
-/

namespace A026878.P1991889220758123870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (f1 (n + 1) - f1 n + 1).toNat

end

end A026878.P1991889220758123870

/-! ## A026878.P10601669535822148930

`A026758(A266074(2*(n+2))+4)`
-/

namespace A026878.P10601669535822148930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A266074 (2 * (n + 2)) + 4).toNat

end

end A026878.P10601669535822148930

/-! ## A026878.P13868974764994045444

`A026758(A000096(2*n+5)-n)`
-/

namespace A026878.P13868974764994045444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A000096 (2 * n + 5) - (n : ℤ)).toNat

end

end A026878.P13868974764994045444

/-! ## A026878.P7620178496644617631

`A026758(A000292(n+4)-A000292(n))`
-/

namespace A026878.P7620178496644617631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A000292 (n + 4) - A000292 n).toNat

end

end A026878.P7620178496644617631

/-!
# A026879: T(2n+1,n+4), T given by A026758.

The programs for A026879, there is no canonical definition to state claims against.
-/

/-! ## A026879.P14641019653043280112

`Δ[A026874(n+3)-∑[A026873(n+2)]]`
-/

namespace A026879.P14641019653043280112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026873 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026874 (n + 3) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026879.P14641019653043280112

/-! ## A026879.P17216776760957609612

`A026758(eq[7, A056951(n+1)])`
-/

namespace A026879.P17216776760957609612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026879.P17216776760957609612

/-! ## A026879.P12743221757116591472

`A026758(A000096(2*n+7)-n)`
-/

namespace A026879.P12743221757116591472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A000096 (2 * n + 7) - (n : ℤ)).toNat

end

end A026879.P12743221757116591472

/-! ## A026879.P17374332880499119992

`A026758(A000217(2*(n+4))-(n+1))`
-/

namespace A026879.P17374332880499119992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A000217 (2 * (n + 4)) - (n + 1 : ℤ)).toNat

end

end A026879.P17374332880499119992

/-! ## A026879.P1177784998049360326

`A026758(A133263(2*(n+4))-(n+3))`
-/

namespace A026879.P1177784998049360326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (A133263 (2 * (n + 4)) - (n + 3 : ℤ)).toNat

end

end A026879.P1177784998049360326

/-!
# A026880: a(n) = T(n,m) + T(n,m+1) + ... + T(n,n), m=[ (n+1)/2 ], T given by A026758.

The programs for A026880, there is no canonical definition to state claims against.
-/

/-! ## A026880.P9778796283600582677

`A178798(A023613(n))+A026847(n)`
-/

namespace A026880.P9778796283600582677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A023613 n).toNat + A026847 n

end

end A026880.P9778796283600582677

/-! ## A026880.P5754185320452836642

`A185284(A310799(n))+A026847(n)`
-/

namespace A026880.P5754185320452836642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A310799 n).toNat + A026847 n

end

end A026880.P5754185320452836642

/-! ## A026880.P16155726479463918291

`A078359(A001008(n+1))+A026847(n)`
-/

namespace A026880.P16155726479463918291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078359 (A001008 (n + 1)).toNat + A026847 n

end

end A026880.P16155726479463918291

/-! ## A026880.P12162045811139816730

`A026847(n)+A011744(A083778(n+1))`
-/

namespace A026880.P12162045811139816730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026847 n + A011744 (A083778 (n + 1)).toNat

end

end A026880.P12162045811139816730

/-! ## A026880.P3845561102199475003

`A046660(A033321(n))+A026847(n)`
-/

namespace A026880.P3845561102199475003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A033321 n).toNat + A026847 n

end

end A026880.P3845561102199475003

/-!
# A026881: T(2n,n-4), T given by A026769.

The programs for A026881, there is no canonical definition to state claims against.
-/

/-! ## A026881.P5793136178499623821

`A026769(eq[8, A114327(n)])`
-/

namespace A026881.P5793136178499623821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026881.P5793136178499623821

/-! ## A026881.P3552669759032317963

`A026769(4*A000096(n+3))`
-/

namespace A026881.P3552669759032317963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (4 * A000096 (n + 3)).toNat

end

end A026881.P3552669759032317963

/-! ## A026881.P12162621658463365135

`A026769(eq[9, A185914(n+1)])`
-/

namespace A026881.P12162621658463365135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026881.P12162621658463365135

/-! ## A026881.P2548870466584613715

`A026769(A020715(2*n)*A020715(n))`
-/

namespace A026881.P2548870466584613715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A020715 (2 * n) * A020715 n).toNat

end

end A026881.P2548870466584613715

/-! ## A026881.P10494909996320590460

`A026769(A265046(2*(n+3))+A046092(n+2))`
-/

namespace A026881.P10494909996320590460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A265046 (2 * (n + 3)) + A046092 (n + 2)).toNat

end

end A026881.P10494909996320590460

/-!
# A026882: T(2n,n-3), T given by A026769.

The programs for A026882, there is no canonical definition to state claims against.
-/

/-! ## A026882.P5112747764482215936

`A026769(eq[6, round(sqrt(2*(n+1)))²-(2*n+1)])`
-/

namespace A026882.P5112747764482215936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026882.P5112747764482215936

/-! ## A026882.P16689371297727687576

`A026769(A046092(n+3)-3)`
-/

namespace A026882.P16689371297727687576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A046092 (n + 3) - 3).toNat

end

end A026882.P16689371297727687576

/-! ## A026882.P5636052930354357017

`A026769(A001844(n+3)-4)`
-/

namespace A026882.P5636052930354357017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A001844 (n + 3) - 4).toNat

end

end A026882.P5636052930354357017

/-! ## A026882.P13942128697390334231

`A026769(A014105(n+3)+n)`
-/

namespace A026882.P13942128697390334231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A014105 (n + 3) + (n : ℤ)).toNat

end

end A026882.P13942128697390334231

/-! ## A026882.P8713475857022812301

`A026769(A034856(2*n+5)+n+2)`
-/

namespace A026882.P8713475857022812301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A034856 (2 * n + 5) + (n + 2 : ℤ)).toNat

end

end A026882.P8713475857022812301

/-!
# A026883: T(2n,n+1), T given by A026769.

The programs for A026883, there is no canonical definition to state claims against.
-/

/-! ## A026883.P3720148698244160618

`Δ[A026887(n)]-A026773(n+1)`
-/

namespace A026883.P3720148698244160618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026773 (n + 1)

end

end A026883.P3720148698244160618

/-! ## A026883.P11233279808278366643

`A026887(n+1)-A026770(n+1)`
-/

namespace A026883.P11233279808278366643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026887 (n + 1) - A026770 (n + 1)

end

end A026883.P11233279808278366643

/-! ## A026883.P11430129420916337841

`Δ[A026887(n)]-A026775(2*n+1)`
-/

namespace A026883.P11430129420916337841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026775 (2 * n + 1)

end

end A026883.P11430129420916337841

/-! ## A026883.P18088282139999189301

`A026887(n+1)%A026770(A052938(2*n))`
-/

namespace A026883.P18088282139999189301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026887 (n + 1)) (A026770 (A052938 (2 * n)).toNat)

end

end A026883.P18088282139999189301

/-! ## A026883.P11714851262399242990

`Δ[A026770(n+1)]-A026773(n+2)`
-/

namespace A026883.P11714851262399242990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026773 (n + 2)

end

end A026883.P11714851262399242990

/-! ## A026883.P13241823807003993669

`Δ[A026775(2*(n+1))-A026773(n+1)]-A026773(n+1)`
-/

namespace A026883.P13241823807003993669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026775 (2 * (n + 1)) - A026773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026773 (n + 1)

end

end A026883.P13241823807003993669

/-! ## A026883.P18328281613715313932

`A026769((n+1)²+(n+2)²)`
-/

namespace A026883.P18328281613715313932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A026883.P18328281613715313932

/-! ## A026883.P12707515302004898591

`record[A026769(∑[A014682(n)]-n)]`
-/

namespace A026883.P12707515302004898591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026883.P12707515302004898591

/-! ## A026883.P17425854299741789590

`record[A026769(n+1)/A259992(2*n)]`
-/

namespace A026883.P17425854299741789590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026769 (n + 1) : ℚ) / (A259992 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026883.P17425854299741789590

/-!
# A026884: T(2n,n+2), T given by A026769.

The programs for A026884, there is no canonical definition to state claims against.
-/

/-! ## A026884.P7126579627697554050

`Δ[A026888(n+1)]-A026887(n+1)`
-/

namespace A026884.P7126579627697554050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026887 (n + 1)

end

end A026884.P7126579627697554050

/-! ## A026884.P11470744194461197613

`A026769(A051890(n+3))`
-/

namespace A026884.P11470744194461197613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A051890 (n + 3)).toNat

end

end A026884.P11470744194461197613

/-! ## A026884.P540978074946255048

`A026769(A099776(n+2)+1)`
-/

namespace A026884.P540978074946255048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A099776 (n + 2) + 1).toNat

end

end A026884.P540978074946255048

/-! ## A026884.P842740347526957028

`A026769(eq[2, A056951(n+1)-2])`
-/

namespace A026884.P842740347526957028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026884.P842740347526957028

/-! ## A026884.P2036700775779590554

`A026769(eq[2, A056951(n+1)/2])`
-/

namespace A026884.P2036700775779590554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056951 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A026884.P2036700775779590554

/-! ## A026884.P8246567505844911108

`record[A026769(A051890(A028920(n)))]`
-/

namespace A026884.P8246567505844911108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A051890 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026884.P8246567505844911108

/-! ## A026884.P2357221028066563205

`record[A026769(A051890(A080099(n)))]`
-/

namespace A026884.P2357221028066563205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A051890 (A080099 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026884.P2357221028066563205

/-!
# A026885: T(2n,n+3), T given by A026769.

The programs for A026885, there is no canonical definition to state claims against.
-/

/-! ## A026885.P3853480050311348522

`A026769(A001844(n+3)+2)`
-/

namespace A026885.P3853480050311348522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A001844 (n + 3) + 2).toNat

end

end A026885.P3853480050311348522

/-! ## A026885.P1879669915282890532

`A026769(A046092(n+3)+3)`
-/

namespace A026885.P1879669915282890532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A046092 (n + 3) + 3).toNat

end

end A026885.P1879669915282890532

/-! ## A026885.P878238401811440166

`A026769(eq[6, A056951(n+1)])`
-/

namespace A026885.P878238401811440166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026885.P878238401811440166

/-! ## A026885.P8583506063698102231

`A026769(A005563(n+1)+A005563(n+4))`
-/

namespace A026885.P8583506063698102231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A005563 (n + 1) + A005563 (n + 4)).toNat

end

end A026885.P8583506063698102231

/-! ## A026885.P8668728385313585989

`A026769(A175886(2*n+5)+A000217(2*n))`
-/

namespace A026885.P8668728385313585989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A175886 (2 * n + 5) + A000217 (2 * n)).toNat

end

end A026885.P8668728385313585989

/-!
# A026886: T(2n,n+4), T given by A026769.

The programs for A026886, there is no canonical definition to state claims against.
-/

/-! ## A026886.P314642383881626914

`A026890(n+4)-A026885(n+4)`
-/

namespace A026886.P314642383881626914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026890 (n + 4) - A026885 (n + 4)

end

end A026886.P314642383881626914

/-! ## A026886.P7588057334152098693

`Δ[A026890(n+3)]-A026889(n+3)`
-/

namespace A026886.P7588057334152098693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026890 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026889 (n + 3)

end

end A026886.P7588057334152098693

/-! ## A026886.P12596699003232366048

`A026769(4*A000124(n+4))`
-/

namespace A026886.P12596699003232366048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (4 * A000124 (n + 4)).toNat

end

end A026886.P12596699003232366048

/-! ## A026886.P7798535788751462551

`A026769(eq[8, A056951(n+1)])`
-/

namespace A026886.P7798535788751462551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026886.P7798535788751462551

/-! ## A026886.P16163798541788549355

`A026769(8*(n+4)+A046092(n+2))`
-/

namespace A026886.P16163798541788549355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 ((8 * (n + 4) : ℤ) + A046092 (n + 2)).toNat

end

end A026886.P16163798541788549355

/-!
# A026887: T(2n+1,n+1), T given by A026769.

The programs for A026887, there is no canonical definition to state claims against.
-/

/-! ## A026887.P7416618508596609733

`A026770(n+1)-A026773(n+1)`
-/

namespace A026887.P7416618508596609733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026770 (n + 1) - A026773 (n + 1)

end

end A026887.P7416618508596609733

/-! ## A026887.P9511518757936454302

`A026775(2*(n+1))-A026773(n+1)`
-/

namespace A026887.P9511518757936454302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026775 (2 * (n + 1)) - A026773 (n + 1)

end

end A026887.P9511518757936454302

/-! ## A026887.P16190721388026434259

`A026770(n+1)-A026775(2*n+1)`
-/

namespace A026887.P16190721388026434259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026770 (n + 1) - A026775 (2 * n + 1)

end

end A026887.P16190721388026434259

/-! ## A026887.P6492377975599070435

`A026775(2*(n+1))-A026775(2*n+1)`
-/

namespace A026887.P6492377975599070435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026775 (2 * (n + 1)) - A026775 (2 * n + 1)

end

end A026887.P6492377975599070435

/-! ## A026887.P2551642505392920178

`Δ[A026773(n+1)]-(A026773(n+1)+A026771(n+1))`
-/

namespace A026887.P2551642505392920178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A026773 (n + 1) + A026771 (n + 1))

end

end A026887.P2551642505392920178

/-! ## A026887.P13867635317992826990

`A026769(2*(n+1)²)`
-/

namespace A026887.P13867635317992826990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (2 * (n + 1) ^ 2)

end

end A026887.P13867635317992826990

/-! ## A026887.P10612185680694291927

`record[A026769(∑[A014682(n)])]`
-/

namespace A026887.P10612185680694291927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026887.P10612185680694291927

/-! ## A026887.P5132727134511783917

`record[A026769(n*A123108(n))]`
-/

namespace A026887.P5132727134511783917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 ((n : ℤ) * A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026887.P5132727134511783917

/-! ## A026887.P4414911862594026199

`record[A026769(2*A080099(n)²)]`
-/

namespace A026887.P4414911862594026199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (2 * A080099 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026887.P4414911862594026199

/-! ## A026887.P5830511017672981563

`A026769(A074148(2*(n+1)))-A026769(A074148(2*n+1))`
-/

namespace A026887.P5830511017672981563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A074148 (2 * (n + 1))).toNat - A026769 (A074148 (2 * n + 1)).toNat

end

end A026887.P5830511017672981563

/-!
# A026888: T(2n+1,n+2), T given by A026769.

The programs for A026888, there is no canonical definition to state claims against.
-/

/-! ## A026888.P13378603126973688255

`A026769(A058331(n+2))`
-/

namespace A026888.P13378603126973688255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A058331 (n + 2)).toNat

end

end A026888.P13378603126973688255

/-! ## A026888.P1025614906483746485

`A026769(A268581(n)+4)`
-/

namespace A026888.P1025614906483746485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A268581 n + 4).toNat

end

end A026888.P1025614906483746485

/-! ## A026888.P16325217221863314120

`A026769(A005408((n+2)²))`
-/

namespace A026888.P16325217221863314120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A005408 ((n + 2) ^ 2)).toNat

end

end A026888.P16325217221863314120

/-! ## A026888.P13966670556287710073

`A026769(A144396((n+2)²))`
-/

namespace A026888.P13966670556287710073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A144396 ((n + 2) ^ 2)).toNat

end

end A026888.P13966670556287710073

/-! ## A026888.P13594171738098031249

`A026769(A267873((n+2)²))`
-/

namespace A026888.P13594171738098031249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A267873 ((n + 2) ^ 2)).toNat

end

end A026888.P13594171738098031249

/-! ## A026888.P18348763649848425670

`A026769(eq[1, A056951(n+1)-2])`
-/

namespace A026888.P18348763649848425670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026888.P18348763649848425670

/-! ## A026888.P17990683792695581992

`A026769(eq[1, A202451(n+1)-2])`
-/

namespace A026888.P17990683792695581992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202451 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026888.P17990683792695581992

/-!
# A026889: T(2n+1,n+3), T given by A026769.

The programs for A026889, there is no canonical definition to state claims against.
-/

/-! ## A026889.P4423054724684929473

`A026769(A026491((n+3)²))`
-/

namespace A026889.P4423054724684929473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A026491 ((n + 3) ^ 2)).toNat

end

end A026889.P4423054724684929473

/-! ## A026889.P14119815929488511289

`A026769(2*A002522(n+3))`
-/

namespace A026889.P14119815929488511289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (2 * A002522 (n + 3)).toNat

end

end A026889.P14119815929488511289

/-! ## A026889.P543543396809294222

`A026769(A067728(n+1)+10)`
-/

namespace A026889.P543543396809294222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A067728 (n + 1) + 10).toNat

end

end A026889.P543543396809294222

/-! ## A026889.P10400022221993673851

`A026769(A074148(2*(n+2))+2*(n+4))`
-/

namespace A026889.P10400022221993673851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A074148 (2 * (n + 2)) + (2 * (n + 4) : ℤ)).toNat

end

end A026889.P10400022221993673851

/-! ## A026889.P13227337847246541393

`A026769(A046092(n+3)-A005843(n+2))`
-/

namespace A026889.P13227337847246541393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A046092 (n + 3) - A005843 (n + 2)).toNat

end

end A026889.P13227337847246541393

/-!
# A026890: T(2n+1,n+4), T given by A026769.

The programs for A026890, there is no canonical definition to state claims against.
-/

/-! ## A026890.P4285806100290228301

`A026885(n+4)-A026889(n+3)`
-/

namespace A026890.P4285806100290228301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026885 (n + 4) - A026889 (n + 3)

end

end A026890.P4285806100290228301

/-! ## A026890.P12023601366070366988

`A026769(eq[7, -A114327(n)])`
-/

namespace A026890.P12023601366070366988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026890.P12023601366070366988

/-! ## A026890.P5553164068454500217

`A026769(eq[7, A056951(n+1)])`
-/

namespace A026890.P5553164068454500217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026890.P5553164068454500217

/-! ## A026890.P11154687925169664919

`A026769(eq[21, A202451(n+1)])`
-/

namespace A026890.P11154687925169664919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026890.P11154687925169664919

/-! ## A026890.P2093933594527137359

`A026769(A034856(2*n+3)+A017053(n+3))`
-/

namespace A026890.P2093933594527137359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 (A034856 (2 * n + 3) + A017053 (n + 3)).toNat

end

end A026890.P2093933594527137359

/-!
# A026892: T(2n,n-4), T given by A026780.

The programs for A026892, there is no canonical definition to state claims against.
-/

/-! ## A026892.P2027573235587432154

`A026780(A142463(n+4)-3)`
-/

namespace A026892.P2027573235587432154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A142463 (n + 4) - 3).toNat

end

end A026892.P2027573235587432154

/-! ## A026892.P8891218549005779271

`A026780(4*A000096(n+3))`
-/

namespace A026892.P8891218549005779271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (4 * A000096 (n + 3)).toNat

end

end A026892.P8891218549005779271

/-! ## A026892.P15238081034742489109

`A026780(xor(3, A142463(n+4)))`
-/

namespace A026892.P15238081034742489109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (Int.xor 3 (A142463 (n + 4))).toNat

end

end A026892.P15238081034742489109

/-! ## A026892.P15111824201300417555

`A026780(A000217(2*(n+4))+n)`
-/

namespace A026892.P15111824201300417555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A000217 (2 * (n + 4)) + (n : ℤ)).toNat

end

end A026892.P15111824201300417555

/-! ## A026892.P5381568717990663726

`A026780(A005843(n+3)*(n+6))`
-/

namespace A026892.P5381568717990663726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A005843 (n + 3) * (n + 6 : ℤ)).toNat

end

end A026892.P5381568717990663726

/-!
# A026893: T(2n,n-3), T given by A026780.

The programs for A026893, there is no canonical definition to state claims against.
-/

/-! ## A026893.P12593557927296544417

`A026780(A059993(n+2))`
-/

namespace A026893.P12593557927296544417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A059993 (n + 2)).toNat

end

end A026893.P12593557927296544417

/-! ## A026893.P3919327567902195955

`A026780(A090288(n+2)-1)`
-/

namespace A026893.P3919327567902195955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A090288 (n + 2) - 1).toNat

end

end A026893.P3919327567902195955

/-! ## A026893.P9723745186406903204

`A026780(xor(3, A090288(n+2)))`
-/

namespace A026893.P9723745186406903204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (Int.xor 3 (A090288 (n + 2))).toNat

end

end A026893.P9723745186406903204

/-! ## A026893.P16336602902989657493

`A026780(A000217(2*(n+3))+n)`
-/

namespace A026893.P16336602902989657493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A000217 (2 * (n + 3)) + (n : ℤ)).toNat

end

end A026893.P16336602902989657493

/-! ## A026893.P3396555032298576911

`record[A026780(A059993(A025581(n)))]`
-/

namespace A026893.P3396555032298576911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A059993 (A025581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026893.P3396555032298576911

/-!
# A026894: T(2n,n+1), T given by A026780.

The programs for A026894, there is no canonical definition to state claims against.
-/

/-! ## A026894.P10499872485125351109

`A026770(n+1)-Δ[A014137(n)]`
-/

namespace A026894.P10499872485125351109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026770 (n + 1) - (f1 (n + 1) - f1 n)

end

end A026894.P10499872485125351109

/-! ## A026894.P18131800047055714642

`Δ[-∑[A000108(n)-A026770(n)]]`
-/

namespace A026894.P18131800047055714642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A026770 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026894.P18131800047055714642

/-! ## A026894.P4508516982094420259

`A026770(n+1)-A000108(n+1)`
-/

namespace A026894.P4508516982094420259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026770 (n + 1) - A000108 (n + 1)

end

end A026894.P4508516982094420259

/-! ## A026894.P14508980801807378942

`A026770(n+1)+A026773(n+1)-A006318(n+1)`
-/

namespace A026894.P14508980801807378942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026770 (n + 1) + (A026773 (n + 1) - A006318 (n + 1))

end

end A026894.P14508980801807378942

/-! ## A026894.P10467076429378194345

`A026773(n+2)-A026781(n+1)`
-/

namespace A026894.P10467076429378194345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026773 (n + 2) - A026781 (n + 1)

end

end A026894.P10467076429378194345

/-! ## A026894.P7649997213062217178

`A026773(n+2)-(A026771(n+1)+A006318(n+1))`
-/

namespace A026894.P7649997213062217178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026773 (n + 2) - (A026771 (n + 1) + A006318 (n + 1))

end

end A026894.P7649997213062217178

/-! ## A026894.P474293877644226982

`A026770(n+1)-A172392(n)/A000984(n)`
-/

namespace A026894.P474293877644226982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026770 (n + 1) : ℚ) - (A172392 n : ℚ) / (A000984 n : ℚ)

end

end A026894.P474293877644226982

/-! ## A026894.P5387595286524543758

`A026780((n+1)²+(n+2)²)`
-/

namespace A026894.P5387595286524543758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A026894.P5387595286524543758

/-! ## A026894.P4246356814071611690

`A249488(A090288(n)+1)`
-/

namespace A026894.P4246356814071611690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249488 (A090288 n + 1).toNat

end

end A026894.P4246356814071611690

/-! ## A026894.P1605229780697766443

`A249488(A132209(n+1))`
-/

namespace A026894.P1605229780697766443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249488 (A132209 (n + 1)).toNat

end

end A026894.P1605229780697766443

/-!
# A026895: T(2n,n+2), T given by A026780.

The programs for A026895, there is no canonical definition to state claims against.
-/

/-! ## A026895.P7687169474367640456

`A249488(A090288(n+1))`
-/

namespace A026895.P7687169474367640456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249488 (A090288 (n + 1)).toNat

end

end A026895.P7687169474367640456

/-! ## A026895.P10017411981444179553

`A026780(A001844(n+2)+1)`
-/

namespace A026895.P10017411981444179553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A001844 (n + 2) + 1).toNat

end

end A026895.P10017411981444179553

/-! ## A026895.P13325468642114543222

`A026780(eq[n, A061579(n)+4])`
-/

namespace A026895.P13325468642114543222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026895.P13325468642114543222

/-! ## A026895.P16291658788591743024

`A026780(Δ[A224141(n+1)]-1)`
-/

namespace A026895.P16291658788591743024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (f1 (n + 1) - f1 n - 1).toNat

end

end A026895.P16291658788591743024

/-! ## A026895.P8827896504850730723

`record[A026780(A061925(A026741(n)))]`
-/

namespace A026895.P8827896504850730723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A061925 (A026741 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026895.P8827896504850730723

/-! ## A026895.P11981112084797292464

`record[A026780(A103391(A002522(n)))]`
-/

namespace A026895.P11981112084797292464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A103391 (A002522 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026895.P11981112084797292464

/-! ## A026895.P2924920991358032674

`A026780(A090288(n+2)-A008586(n+2))`
-/

namespace A026895.P2924920991358032674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A090288 (n + 2) - A008586 (n + 2)).toNat

end

end A026895.P2924920991358032674

/-!
# A026896: T(2n,n+3), T given by A026780.

The programs for A026896, there is no canonical definition to state claims against.
-/

/-! ## A026896.P10776170478945642544

`Δ[A026900(n+2)]-A026899(n+2)`
-/

namespace A026896.P10776170478945642544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026900 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026899 (n + 2)

end

end A026896.P10776170478945642544

/-! ## A026896.P14422150406578951967

`A026780(Δ[A224141(n+2)])`
-/

namespace A026896.P14422150406578951967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224141 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (f1 (n + 1) - f1 n).toNat

end

end A026896.P14422150406578951967

/-! ## A026896.P14567790251105228059

`A026780(eq[6, -A114327(n)])`
-/

namespace A026896.P14567790251105228059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026896.P14567790251105228059

/-! ## A026896.P8942959845754432203

`A026780(eq[n-5, A038722(n+1)])`
-/

namespace A026896.P8942959845754432203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026896.P8942959845754432203

/-! ## A026896.P4207034015118488514

`A026780(eq[A023448(n), A061579(n)])`
-/

namespace A026896.P4207034015118488514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026896.P4207034015118488514

/-! ## A026896.P3455539057252341143

`A026780(A054000(n+4)-A005408(n+1))`
-/

namespace A026896.P3455539057252341143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A054000 (n + 4) - A005408 (n + 1)).toNat

end

end A026896.P3455539057252341143

/-!
# A026897: T(2n,n+4), T given by A026780.

The programs for A026897, there is no canonical definition to state claims against.
-/

/-! ## A026897.P14176671498999118852

`A026901(n+4)-A026896(n+4)`
-/

namespace A026897.P14176671498999118852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026901 (n + 4) - A026896 (n + 4)

end

end A026897.P14176671498999118852

/-! ## A026897.P15399643975519557660

`Δ[A026901(n+3)]-A026900(n+3)`
-/

namespace A026897.P15399643975519557660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026901 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026900 (n + 3)

end

end A026897.P15399643975519557660

/-! ## A026897.P10634157467594087213

`A026780(eq[8, -A114327(n)])`
-/

namespace A026897.P10634157467594087213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026897.P10634157467594087213

/-! ## A026897.P1980956145141394010

`A026780(A090288(n+3)+6)`
-/

namespace A026897.P1980956145141394010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A090288 (n + 3) + 6).toNat

end

end A026897.P1980956145141394010

/-! ## A026897.P9231235289088662847

`A026780(4*A000124(n+4))`
-/

namespace A026897.P9231235289088662847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (4 * A000124 (n + 4)).toNat

end

end A026897.P9231235289088662847

/-! ## A026897.P11793595478753762703

`A026780(eq[A061579(n)+2, A023448(n)])`
-/

namespace A026897.P11793595478753762703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026897.P11793595478753762703

/-! ## A026897.P16417242869863081168

`A026780(eq[2, A023448(n)-A061579(n)])`
-/

namespace A026897.P16417242869863081168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 n - A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026897.P16417242869863081168

/-! ## A026897.P7107842838215658466

`A026780(eq[A038722(n+1)+1, A023448(n)])`
-/

namespace A026897.P7107842838215658466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026897.P7107842838215658466

/-!
# A026898: a(n) = Sum_{k=0..n} (n-k+1)^k.

The programs for A026898, there is no canonical definition to state claims against.
-/

/-! ## A026898.P8816626874188979368

`A003101(n)+1`
-/

namespace A026898.P8816626874188979368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 n + 1

end

end A026898.P8816626874188979368

/-! ## A026898.P2446491202248098178

`Δ[A103439(n)]`
-/

namespace A026898.P2446491202248098178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026898.P2446491202248098178

/-! ## A026898.P13868450759982583824

`Δ[A104879(n)]`
-/

namespace A026898.P13868450759982583824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026898.P13868450759982583824

/-! ## A026898.P6739501673666935356

`record[ratio[A101494(n)]]`
-/

namespace A026898.P6739501673666935356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026898.P6739501673666935356

/-! ## A026898.P17950461938808074674

`A101494(∑[n+1])`
-/

namespace A026898.P17950461938808074674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026898.P17950461938808074674

/-! ## A026898.P17626764976621689556

`(A062810(n+1)+1)/2`
-/

namespace A026898.P17626764976621689556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062810 (n + 1) + 1 : ℚ) / 2

end

end A026898.P17626764976621689556

/-! ## A026898.P17432179514595310552

`A103480(n+1)-(n+1)`
-/

namespace A026898.P17432179514595310552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103480 (n + 1) - (n + 1 : ℤ)

end

end A026898.P17432179514595310552

/-! ## A026898.P6579202821355838190

`A179928(n)-a(n-1)` with `a(0)=1`
-/

namespace A026898.P6579202821355838190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A179928 n - a (n - 1)

end

end A026898.P6579202821355838190

/-! ## A026898.P10919346507908642633

`A047970(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A026898.P10919346507908642633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047970 (n - 1) + a (n - 1)

end

end A026898.P10919346507908642633

/-! ## A026898.P8759893421006850535

`record[A101494(A001971(n))]`
-/

namespace A026898.P8759893421006850535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (A001971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026898.P8759893421006850535

/-!
# A026899: T(2n+1,n+2), T given by A026780.

The programs for A026899, there is no canonical definition to state claims against.
-/

/-! ## A026899.P1349062964997431858

`A026770(n+2)-A006318(n+2)`
-/

namespace A026899.P1349062964997431858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026770 (n + 2) - A006318 (n + 2)

end

end A026899.P1349062964997431858

/-! ## A026899.P15986373550734994076

`A026894(n+2)-(A026894(n+1)+A026781(n+1))`
-/

namespace A026899.P15986373550734994076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026894 (n + 2) - (A026894 (n + 1) + A026781 (n + 1))

end

end A026899.P15986373550734994076

/-! ## A026899.P1346249274319300720

`A249488(A268581(n)+1)`
-/

namespace A026899.P1346249274319300720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249488 (A268581 n + 1).toNat

end

end A026899.P1346249274319300720

/-! ## A026899.P5273182637072191642

`A026780(A058331(n+2))`
-/

namespace A026899.P5273182637072191642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A058331 (n + 2)).toNat

end

end A026899.P5273182637072191642

/-! ## A026899.P15917885765226069424

`A249488(A054000(n+2))`
-/

namespace A026899.P15917885765226069424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249488 (A054000 (n + 2)).toNat

end

end A026899.P15917885765226069424

/-! ## A026899.P13540213770185153133

`A026780(A268581(n)+4)`
-/

namespace A026899.P13540213770185153133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A268581 n + 4).toNat

end

end A026899.P13540213770185153133

/-! ## A026899.P15877294976296136208

`A026780(A161532(n)+8)`
-/

namespace A026899.P15877294976296136208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A161532 n + 8).toNat

end

end A026899.P15877294976296136208

/-! ## A026899.P11949502820926474445

`A026780(A005408((n+2)²))`
-/

namespace A026899.P11949502820926474445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A005408 ((n + 2) ^ 2)).toNat

end

end A026899.P11949502820926474445

/-! ## A026899.P14762553663911540061

`record[A026780(A031940(n+1))]`
-/

namespace A026899.P14762553663911540061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A031940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026899.P14762553663911540061

/-! ## A026899.P6659574003085807106

`A026780(A167614(2*(n+1))+n)`
-/

namespace A026899.P6659574003085807106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 (A167614 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A026899.P6659574003085807106

