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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A032801: Number of unordered sets a, b, c, d of distinct integers from 1..n such that a+b+c+d = 0 (mod n).

The programs for A032801, the canonical program `A032801.P10872476125885974760` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032801 has offset 1).

The definition of A032801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032801.P121785331506598973

`A122046(n)-A211520(n)`
-/

namespace A032801.P121785331506598973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122046 n - A211520 n

end

end A032801.P121785331506598973

namespace A032801

/-- `A122046(n)-A211520(n)` -/
def P121785331506598973.Spec : Prop :=
  ∀ n, P121785331506598973.a n = A032801 (n + 1)

end A032801

/-! ## A032801.P16436511865093134093

`A011894(n)-A280186(n)/2`
-/

namespace A032801.P16436511865093134093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011894 n : ℚ) - (A280186 n : ℚ) / 2

end

end A032801.P16436511865093134093

namespace A032801

/-- `A011894(n)-A280186(n)/2` -/
def P16436511865093134093.Spec : Prop :=
  ∀ n, P16436511865093134093.a n = (A032801 (n + 1) : ℚ)

end A032801

/-! ## A032801.P13271904202238955052

`∑[∑[A142150(n)]]-A211521(n)`
-/

namespace A032801.P13271904202238955052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A211521 n

end

end A032801.P13271904202238955052

namespace A032801

/-- `∑[∑[A142150(n)]]-A211521(n)` -/
def P13271904202238955052.Spec : Prop :=
  ∀ n, P13271904202238955052.a n = A032801 (n + 1)

end A032801

/-! ## A032801.P10872476125885974760

`∑[2*A008217(n)]-A295643(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A032801

/-- `∑[2*A008217(n)]-A295643(n)` -/
def P10872476125885974760.Spec : Prop :=
  ∀ n, P10872476125885974760.a n = A032801 (n + 1)

theorem P10872476125885974760.correct : P10872476125885974760.Spec := by
  intro n
  simp only [A032801, Nat.add_sub_cancel]

end A032801

/-! ## A032801.P10404310253064783790

`∑[A110660(n)/2]-A211521(n)`
-/

namespace A032801.P10404310253064783790
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110660 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A211521 n : ℚ)

end

end A032801.P10404310253064783790

namespace A032801

/-- `∑[A110660(n)/2]-A211521(n)` -/
def P10404310253064783790.Spec : Prop :=
  ∀ n, P10404310253064783790.a n = (A032801 (n + 1) : ℚ)

end A032801

/-! ## A032801.P17176552732918221024

`∑[∑[A047411(n+1)%A065033(n)]]`
-/

namespace A032801.P17176552732918221024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047411 (n + 1)) (A065033 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032801.P17176552732918221024

namespace A032801

/-- `∑[∑[A047411(n+1)%A065033(n)]]` -/
def P17176552732918221024.Spec : Prop :=
  ∀ n, P17176552732918221024.a n = A032801 (n + 1)

end A032801

/-! ## A032801.P17229634780119769139

`∑[A000217(A004526(n))]-A211521(n)`
-/

namespace A032801.P17229634780119769139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A211521 n

end

end A032801.P17229634780119769139

namespace A032801

/-- `∑[A000217(A004526(n))]-A211521(n)` -/
def P17229634780119769139.Spec : Prop :=
  ∀ n, P17229634780119769139.a n = A032801 (n + 1)

end A032801

/-! ## A032801.P5264645962937371548

`A014557(n+1)+A002265(n)`
-/

namespace A032801.P5264645962937371548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014557 (n + 1) + A002265 n

end

end A032801.P5264645962937371548

namespace A032801

/-- `A014557(n+1)+A002265(n)` -/
def P5264645962937371548.Spec : Prop :=
  ∀ n, P5264645962937371548.a n = A032801 (n + 1)

end A032801

/-! ## A032801.P2957852732442521379

`A014557(n+1)+A110655(n+1)-1`
-/

namespace A032801.P2957852732442521379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014557 (n + 1) + (A110655 (n + 1) - 1)

end

end A032801.P2957852732442521379

namespace A032801

/-- `A014557(n+1)+A110655(n+1)-1` -/
def P2957852732442521379.Spec : Prop :=
  ∀ n, P2957852732442521379.a n = A032801 (n + 1)

end A032801

/-! ## A032801.P4087792258618875371

`A014557(n+1)+A004526(A004526(n))`
-/

namespace A032801.P4087792258618875371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014557 (n + 1) + A004526 (A004526 n).toNat

end

end A032801.P4087792258618875371

namespace A032801

/-- `A014557(n+1)+A004526(A004526(n))` -/
def P4087792258618875371.Spec : Prop :=
  ∀ n, P4087792258618875371.a n = A032801 (n + 1)

end A032801

/-! ## A032801.P13938378927117731312

`A014557(n+1)+A110654(A008619(n))-1`
-/

namespace A032801.P13938378927117731312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014557 (n + 1) + (A110654 (A008619 n).toNat - 1)

end

end A032801.P13938378927117731312

namespace A032801

/-- `A014557(n+1)+A110654(A008619(n))-1` -/
def P13938378927117731312.Spec : Prop :=
  ∀ n, P13938378927117731312.a n = A032801 (n + 1)

end A032801

/-! ## A032801.P13263294379050341712

`A014557(n+1)+A110654(A110654(n+1))-1`
-/

namespace A032801.P13263294379050341712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014557 (n + 1) + (A110654 (A110654 (n + 1)).toNat - 1)

end

end A032801.P13263294379050341712

namespace A032801

/-- `A014557(n+1)+A110654(A110654(n+1))-1` -/
def P13263294379050341712.Spec : Prop :=
  ∀ n, P13263294379050341712.a n = A032801 (n + 1)

end A032801

/-! ## A032801.P8086229855821317952

`A122046(n)-A069905(A267528(n))`
-/

namespace A032801.P8086229855821317952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122046 n - A069905 (A267528 n).toNat

end

end A032801.P8086229855821317952

namespace A032801

/-- `A122046(n)-A069905(A267528(n))` -/
def P8086229855821317952.Spec : Prop :=
  ∀ n, P8086229855821317952.a n = A032801 (n + 1)

end A032801

/-! ## A032801.P10321869249389701953

`∑[A005843(A008217(n))]-A295643(n)`
-/

namespace A032801.P10321869249389701953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295643 n

end

end A032801.P10321869249389701953

namespace A032801

/-- `∑[A005843(A008217(n))]-A295643(n)` -/
def P10321869249389701953.Spec : Prop :=
  ∀ n, P10321869249389701953.a n = A032801 (n + 1)

end A032801

/-! ## A032801.P17023865899626472490

`∑[A130519(n)-A239287(A130519(n))]`
-/

namespace A032801.P17023865899626472490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 n - A239287 (A130519 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032801.P17023865899626472490

namespace A032801

/-- `∑[A130519(n)-A239287(A130519(n))]` -/
def P17023865899626472490.Spec : Prop :=
  ∀ n, P17023865899626472490.a n = A032801 (n + 1)

end A032801

/-! ## A032801.P16673463537577689289

`∑[A008619(A008794(n))]-A134519(n+1)`
-/

namespace A032801.P16673463537577689289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008794 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A134519 (n + 1)

end

end A032801.P16673463537577689289

namespace A032801

/-- `∑[A008619(A008794(n))]-A134519(n+1)` -/
def P16673463537577689289.Spec : Prop :=
  ∀ n, P16673463537577689289.a n = A032801 (n + 1)

end A032801

/-! ## A032801.P11924784695627878760

`∑[A004525(A110660(n))]-A211521(n)`
-/

namespace A032801.P11924784695627878760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A110660 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A211521 n

end

end A032801.P11924784695627878760

namespace A032801

/-- `∑[A004525(A110660(n))]-A211521(n)` -/
def P11924784695627878760.Spec : Prop :=
  ∀ n, P11924784695627878760.a n = A032801 (n + 1)

end A032801

/-! ## A032801.P14672820428836790512

`∑[A166515(n+1)]-A004442(A166515(2*n))`
-/

namespace A032801.P14672820428836790512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004442 (A166515 (2 * n)).toNat

end

end A032801.P14672820428836790512

namespace A032801

/-- `∑[A166515(n+1)]-A004442(A166515(2*n))` -/
def P14672820428836790512.Spec : Prop :=
  ∀ n, P14672820428836790512.a n = A032801 (n + 1)

end A032801

/-! ## A032801.P6421204125141188627

`A008610(n)-A008619(A001082(n+1))`
-/

namespace A032801.P6421204125141188627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008610 n - A008619 (A001082 (n + 1)).toNat

end

end A032801.P6421204125141188627

namespace A032801

/-- `A008610(n)-A008619(A001082(n+1))` -/
def P6421204125141188627.Spec : Prop :=
  ∀ n, P6421204125141188627.a n = A032801 (n + 1)

end A032801

/-!
# A032803: Expansion of Sum_{i>=0} q^i*theta_3^i.

The programs for A032803, there is no canonical definition to state claims against.
-/

/-! ## A032803.P811449808788326975

`or(A193592(n), A226190(A018099(n)))`
-/

namespace A032803.P811449808788326975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A193592 n) (A226190 (A018099 n).toNat)

end

end A032803.P811449808788326975

/-! ## A032803.P3556504035687348476

`or(1, A000006(A148939(n)))`
-/

namespace A032803.P3556504035687348476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000006 (A148939 n).toNat)

end

end A032803.P3556504035687348476

/-! ## A032803.P17394839821949876135

`or(1, A046155(A270062(n)))`
-/

namespace A032803.P17394839821949876135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A046155 (A270062 n).toNat)

end

end A032803.P17394839821949876135

/-! ## A032803.P14179164936518526962

`A262689(or(3, A155084(n)))`
-/

namespace A032803.P14179164936518526962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.lor 3 (A155084 n)).toNat

end

end A032803.P14179164936518526962

/-! ## A032803.P12129948079454310990

`A262689(xor(3, A155084(n)))`
-/

namespace A032803.P12129948079454310990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.xor 3 (A155084 n)).toNat

end

end A032803.P12129948079454310990

/-!
# A032804: Numbers whose set of base-4 digits is {2,3}.

The programs for A032804, there is no canonical definition to state claims against.
-/

/-! ## A032804.P16132680717733638818

`A115637(n)+A032911(n+1)`
-/

namespace A032804.P16132680717733638818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115637 n + A032911 (n + 1)

end

end A032804.P16132680717733638818

/-! ## A032804.P13017615101132435848

`A003754(A054204(n+2))`
-/

namespace A032804.P13017615101132435848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (A054204 (n + 2)).toNat

end

end A032804.P13017615101132435848

/-! ## A032804.P10019961947954461970

`A023709(A153775(n+2))`
-/

namespace A032804.P10019961947954461970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (A153775 (n + 2)).toNat

end

end A032804.P10019961947954461970

/-! ## A032804.P9959489773296011141

`A023709(A032924(n+1)+1)`
-/

namespace A032804.P9959489773296011141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (A032924 (n + 1) + 1).toNat

end

end A032804.P9959489773296011141

/-! ## A032804.P16907011633694087957

`∩[A023709(n+1), A032975(n+1)]`
-/

namespace A032804.P16907011633694087957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032804.P16907011633694087957

/-! ## A032804.P675233745450244307

`∩[A023709(n+1), A317407(n+1)]`
-/

namespace A032804.P675233745450244307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032804.P675233745450244307

/-! ## A032804.P8445144206916771535

`A023705(A005836(n+3)-1)`
-/

namespace A032804.P8445144206916771535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (A005836 (n + 3) - 1).toNat

end

end A032804.P8445144206916771535

/-! ## A032804.P1345011541013438361

`∩[A023705(n+1), A023709(n+1)]`
-/

namespace A032804.P1345011541013438361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032804.P1345011541013438361

/-! ## A032804.P7324392426716779150

`∩[A003754(n+1), A039002(n+1)]`
-/

namespace A032804.P7324392426716779150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032804.P7324392426716779150

/-! ## A032804.P8712744572758603671

`∩[A023705(n+1), A039002(n+1)]`
-/

namespace A032804.P8712744572758603671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032804.P8712744572758603671

/-! ## A032804.P1862366570458031772

`∩[A023709(n+1), A039002(n+1)]`
-/

namespace A032804.P1862366570458031772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032804.P1862366570458031772

/-! ## A032804.P13112671179640660933

`∩[A039002(n+1), A317407(n+1)]`
-/

namespace A032804.P13112671179640660933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032804.P13112671179640660933

/-! ## A032804.P6153252285815032805

`A006015(A032925(n+1))`
-/

namespace A032804.P6153252285815032805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A032925 (n + 1)).toNat

end

end A032804.P6153252285815032805

/-! ## A032804.P13156629508709344284

`A057300(A032911(n+1))`
-/

namespace A032804.P13156629508709344284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A032911 (n + 1)).toNat

end

end A032804.P13156629508709344284

/-! ## A032804.P4912059357577052467

`record[A057300(A247648(n+1))]`
-/

namespace A032804.P4912059357577052467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A247648 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032804.P4912059357577052467

/-! ## A032804.P16813329643082975350

`∩[A081706(n+1), A317407(n+1)]`
-/

namespace A032804.P16813329643082975350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032804.P16813329643082975350

/-! ## A032804.P220667151217855152

`∩[A139371(n+1), A317407(n+1)]`
-/

namespace A032804.P220667151217855152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032804.P220667151217855152

/-! ## A032804.P5122122484279576420

`eq[1-A030300(n+1), A303827(n+1)]+1`
-/

namespace A032804.P5122122484279576420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A032804.P5122122484279576420

/-! ## A032804.P166041920908579002

`eq[A030300(2*(n+1)), A303827(n+1)]+1`
-/

namespace A032804.P166041920908579002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A032804.P166041920908579002

/-! ## A032804.P16990226608997961528

`A032925(n+1)+A115639(n)+A002264(A115639(n))`
-/

namespace A032804.P16990226608997961528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032925 (n + 1) + (A115639 n + A002264 (A115639 n).toNat)

end

end A032804.P16990226608997961528

/-!
# A032805: Numbers whose set of base-5 digits is {2,3}.

The programs for A032805, there is no canonical definition to state claims against.
-/

/-! ## A032805.P7934384884032400618

`(A032926(n+1)+A032829(n+1))/2`
-/

namespace A032805.P7934384884032400618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032926 (n + 1) + A032829 (n + 1) : ℚ) / 2

end

end A032805.P7934384884032400618

/-! ## A032805.P9793131964989232977

`3*A032926(n+1)-A032912(n+1)`
-/

namespace A032805.P9793131964989232977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032926 (n + 1) - A032912 (n + 1)

end

end A032805.P9793131964989232977

/-! ## A032805.P12391521966512720608

`∩[A037339(n+1), A039565(n+1)]`
-/

namespace A032805.P12391521966512720608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032805.P12391521966512720608

/-! ## A032805.P13571309094713706326

`A032926(n+1)+A014682(A032829(n+1)-A032926(n+1))`
-/

namespace A032805.P13571309094713706326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032926 (n + 1) + A014682 (A032829 (n + 1) - A032926 (n + 1)).toNat

end

end A032805.P13571309094713706326

/-! ## A032805.P3746031294749869787

`A023725(A032925(n+1)+1)`
-/

namespace A032805.P3746031294749869787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (A032925 (n + 1) + 1).toNat

end

end A032805.P3746031294749869787

/-! ## A032805.P16629524543494122103

`∩[A023725(n+1), A039565(n+1)]`
-/

namespace A032805.P16629524543494122103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032805.P16629524543494122103

/-! ## A032805.P4784094116421645726

`A014682(A032926(n+1)+A032829(n+1))`
-/

namespace A032805.P4784094116421645726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A032926 (n + 1) + A032829 (n + 1)).toNat

end

end A032805.P4784094116421645726

/-! ## A032805.P696098523262915448

`A004515(A032817(n+1))`
-/

namespace A032805.P696098523262915448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 (A032817 (n + 1)).toNat

end

end A032805.P696098523262915448

/-! ## A032805.P11765157969265357382

`A020655(A032804(n+1))`
-/

namespace A032805.P11765157969265357382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (A032804 (n + 1)).toNat

end

end A032805.P11765157969265357382

/-! ## A032805.P10884822113950452397

`A256295(A032926(n+1))`
-/

namespace A032805.P10884822113950452397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256295 (A032926 (n + 1)).toNat

end

end A032805.P10884822113950452397

/-! ## A032805.P2276633530488984622

`A020654(A032804(n+1)+1)`
-/

namespace A032805.P2276633530488984622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A032804 (n + 1) + 1).toNat

end

end A032805.P2276633530488984622

/-! ## A032805.P11715033380382026629

`A023721(or(2, A032804(n+1)))`
-/

namespace A032805.P11715033380382026629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (Int.lor 2 (A032804 (n + 1))).toNat

end

end A032805.P11715033380382026629

/-! ## A032805.P11349770198445919337

`∩[A020654(n+1), A039565(n+1)]`
-/

namespace A032805.P11349770198445919337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032805.P11349770198445919337

/-! ## A032805.P11778513971346443863

`∩[A023721(n+1), A039565(n+1)]`
-/

namespace A032805.P11778513971346443863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032805.P11778513971346443863

/-! ## A032805.P12215970189626086821

`∩[A031470(n+1), A037339(n+1)]`
-/

namespace A032805.P12215970189626086821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032805.P12215970189626086821

/-! ## A032805.P1737769656575018401

`∩[A037459(n+1), A039565(n+1)]`
-/

namespace A032805.P1737769656575018401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032805.P1737769656575018401

/-!
# A032806: Numbers whose set of base-6 digits is {2,3}.

The programs for A032806, the canonical program `A032806.P6530555208973634118` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032806 has offset 1).

The definition of A032806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032806.P484249580612749693

`(A032927(n+1)+A032830(n+1))/2`
-/

namespace A032806.P484249580612749693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032927 (n + 1) + A032830 (n + 1) : ℚ) / 2

end

end A032806.P484249580612749693

namespace A032806

/-- `(A032927(n+1)+A032830(n+1))/2` -/
def P484249580612749693.Spec : Prop :=
  ∀ n, P484249580612749693.a n = (A032806 (n + 1) : ℚ)

end A032806

/-! ## A032806.P6999107343886832504

`3*A032927(n+1)-A032913(n+1)`
-/

namespace A032806.P6999107343886832504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032927 (n + 1) - A032913 (n + 1)

end

end A032806.P6999107343886832504

namespace A032806

/-- `3*A032927(n+1)-A032913(n+1)` -/
def P6999107343886832504.Spec : Prop :=
  ∀ n, P6999107343886832504.a n = A032806 (n + 1)

end A032806

/-! ## A032806.P6530555208973634118

`floor(A147993(n+2)/2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A032806

/-- `floor(A147993(n+2)/2)` -/
def P6530555208973634118.Spec : Prop :=
  ∀ n, P6530555208973634118.a n = A032806 (n + 1)

theorem P6530555208973634118.correct : P6530555208973634118.Spec := by
  intro n
  simp only [A032806, Nat.add_sub_cancel]

end A032806

/-! ## A032806.P7381899779475425367

`∑[Δ[A147993(n+1)]/2]`
-/

namespace A032806.P7381899779475425367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147993 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032806.P7381899779475425367

namespace A032806

/-- `∑[Δ[A147993(n+1)]/2]` -/
def P7381899779475425367.Spec : Prop :=
  ∀ n, P7381899779475425367.a n = (A032806 (n + 1) : ℚ)

end A032806

/-! ## A032806.P17128527563024614045

`round(A147993(n+2)/2)-A014963(4*n+10)`
-/

namespace A032806.P17128527563024614045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A147993 (n + 2) : ℚ) / 2) - A014963 (4 * n + 10)

end

end A032806.P17128527563024614045

namespace A032806

/-- `round(A147993(n+2)/2)-A014963(4*n+10)` -/
def P17128527563024614045.Spec : Prop :=
  ∀ n, P17128527563024614045.a n = A032806 (n + 1)

end A032806

/-! ## A032806.P13622378252342830568

`∩[A037340(n+1), A039588(n+1)]`
-/

namespace A032806.P13622378252342830568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032806.P13622378252342830568

namespace A032806

/-- `∩[A037340(n+1), A039588(n+1)]` -/
def P13622378252342830568.Spec : Prop :=
  ∀ n, (P13622378252342830568.a n : ℤ) = A032806 (n + 1)

end A032806

/-! ## A032806.P4476854768637585621

`A037460(A032804(n+1))`
-/

namespace A032806.P4476854768637585621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 (A032804 (n + 1)).toNat

end

end A032806.P4476854768637585621

namespace A032806

/-- `A037460(A032804(n+1))` -/
def P4476854768637585621.Spec : Prop :=
  ∀ n, P4476854768637585621.a n = A032806 (n + 1)

end A032806

/-! ## A032806.P17644529890954137267

`A014682(A147993(n+2)-1)`
-/

namespace A032806.P17644529890954137267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A147993 (n + 2) - 1).toNat

end

end A032806.P17644529890954137267

namespace A032806

/-- `A014682(A147993(n+2)-1)` -/
def P17644529890954137267.Spec : Prop :=
  ∀ n, P17644529890954137267.a n = A032806 (n + 1)

end A032806

/-! ## A032806.P16925930873280066980

`A273943(A147993(n+2)-1)`
-/

namespace A032806.P16925930873280066980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A147993 (n + 2) - 1).toNat

end

end A032806.P16925930873280066980

namespace A032806

/-- `A273943(A147993(n+2)-1)` -/
def P16925930873280066980.Spec : Prop :=
  ∀ n, P16925930873280066980.a n = A032806 (n + 1)

end A032806

/-! ## A032806.P11341436047779475577

`A014682(xor(1, A147993(n+2)))`
-/

namespace A032806.P11341436047779475577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.xor 1 (A147993 (n + 2))).toNat

end

end A032806.P11341436047779475577

namespace A032806

/-- `A014682(xor(1, A147993(n+2)))` -/
def P11341436047779475577.Spec : Prop :=
  ∀ n, P11341436047779475577.a n = A032806 (n + 1)

end A032806

/-! ## A032806.P7429203006229134207

`∑[A014682(Δ[A147993(n+1)])]`
-/

namespace A032806.P7429203006229134207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147993 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032806.P7429203006229134207

namespace A032806

/-- `∑[A014682(Δ[A147993(n+1)])]` -/
def P7429203006229134207.Spec : Prop :=
  ∀ n, P7429203006229134207.a n = A032806 (n + 1)

end A032806

/-! ## A032806.P15714272603906892897

`∑[A273943(Δ[A147993(n+1)])]`
-/

namespace A032806.P15714272603906892897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147993 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032806.P15714272603906892897

namespace A032806

/-- `∑[A273943(Δ[A147993(n+1)])]` -/
def P15714272603906892897.Spec : Prop :=
  ∀ n, P15714272603906892897.a n = A032806 (n + 1)

end A032806

/-! ## A032806.P5964608384234217594

`∩[A037340(n+1), A037460(n)]`
-/

namespace A032806.P5964608384234217594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032806.P5964608384234217594

namespace A032806

/-- `∩[A037340(n+1), A037460(n)]` -/
def P5964608384234217594.Spec : Prop :=
  ∀ n, (P5964608384234217594.a n : ℤ) = A032806 (n + 1)

end A032806

/-! ## A032806.P9631809339755995002

`∩[A039575(n+1), A037460(n)]`
-/

namespace A032806.P9631809339755995002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032806.P9631809339755995002

namespace A032806

/-- `∩[A039575(n+1), A037460(n)]` -/
def P9631809339755995002.Spec : Prop :=
  ∀ n, (P9631809339755995002.a n : ℤ) = A032806 (n + 1)

end A032806

/-! ## A032806.P18197034980916867677

`∩[A039576(n+1), A037460(n)]`
-/

namespace A032806.P18197034980916867677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032806.P18197034980916867677

namespace A032806

/-- `∩[A039576(n+1), A037460(n)]` -/
def P18197034980916867677.Spec : Prop :=
  ∀ n, (P18197034980916867677.a n : ℤ) = A032806 (n + 1)

end A032806

/-!
# A032807: Numbers whose set of base-7 digits is {2,3}.

The programs for A032807, there is no canonical definition to state claims against.
-/

/-! ## A032807.P2735126898466820731

`(A032928(n+1)+A032831(n+1))/2`
-/

namespace A032807.P2735126898466820731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032928 (n + 1) + A032831 (n + 1) : ℚ) / 2

end

end A032807.P2735126898466820731

/-! ## A032807.P5099980648940163130

`3*A032928(n+1)-A032914(n+1)`
-/

namespace A032807.P5099980648940163130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032928 (n + 1) - A032914 (n + 1)

end

end A032807.P5099980648940163130

/-! ## A032807.P8466502467293757725

`(A032831(n+1)+2*A032914(n+1)-A032819(n+1))/2`
-/

namespace A032807.P8466502467293757725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032831 (n + 1) + (2 * A032914 (n + 1) - A032819 (n + 1)) : ℚ) / 2

end

end A032807.P8466502467293757725

/-! ## A032807.P7147201538832349932

`(A037455(eq[0, A212193(n)])+A032831(n+1))/2`
-/

namespace A032807.P7147201538832349932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037455 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A032831 (n + 1) : ℚ) / 2

end

end A032807.P7147201538832349932

/-! ## A032807.P12934655001593209843

`(A037461(A032925(n+1))+A032831(n+1))/2`
-/

namespace A032807.P12934655001593209843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037461 (A032925 (n + 1)).toNat + A032831 (n + 1) : ℚ) / 2

end

end A032807.P12934655001593209843

/-! ## A032807.P12162710388290910369

`A037461(A032804(n+1))`
-/

namespace A032807.P12162710388290910369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (A032804 (n + 1)).toNat

end

end A032807.P12162710388290910369

/-! ## A032807.P18280333752057231623

`A037341(A032926(n+1))`
-/

namespace A032807.P18280333752057231623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037341 (A032926 (n + 1)).toNat

end

end A032807.P18280333752057231623

/-! ## A032807.P11962127197941819654

`∩[A037341(n+1), A037461(n+1)]`
-/

namespace A032807.P11962127197941819654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032807.P11962127197941819654

/-! ## A032807.P14029905121371355379

`A037466(A032805(n+1))`
-/

namespace A032807.P14029905121371355379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (A032805 (n + 1)).toNat

end

end A032807.P14029905121371355379

/-! ## A032807.P508975812455467820

`A020658(A032806(n+1))`
-/

namespace A032807.P508975812455467820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (A032806 (n + 1)).toNat

end

end A032807.P508975812455467820

/-!
# A032808: Numbers whose set of base-8 digits is {2,3}.

The programs for A032808, there is no canonical definition to state claims against.
-/

/-! ## A032808.P3254425322555770401

`(A032929(n+1)+A032832(n+1))/2`
-/

namespace A032808.P3254425322555770401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032929 (n + 1) + A032832 (n + 1) : ℚ) / 2

end

end A032808.P3254425322555770401

/-! ## A032808.P3784840454157518328

`3*A032929(n+1)-A032915(n+1)`
-/

namespace A032808.P3784840454157518328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032929 (n + 1) - A032915 (n + 1)

end

end A032808.P3784840454157518328

/-! ## A032808.P8871185390772121712

`A032915(n+1)+and(A032820(n+1), A032915(n+1))`
-/

namespace A032808.P8871185390772121712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032915 (n + 1) + Int.land (A032820 (n + 1)) (A032915 (n + 1))

end

end A032808.P8871185390772121712

/-! ## A032808.P9362313112113173609

`A032915(n+1)+and(A032832(n+1), A032915(n+1))`
-/

namespace A032808.P9362313112113173609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032915 (n + 1) + Int.land (A032832 (n + 1)) (A032915 (n + 1))

end

end A032808.P9362313112113173609

/-! ## A032808.P8073028588201406537

`or(A032832(n+1), A032915(n+1))-A032820(n+1)`
-/

namespace A032808.P8073028588201406537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032832 (n + 1)) (A032915 (n + 1)) - A032820 (n + 1)

end

end A032808.P8073028588201406537

/-! ## A032808.P7642980078489881744

`or(A032832(n+1), A032929(n+1))-A032915(n+1)`
-/

namespace A032808.P7642980078489881744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032832 (n + 1)) (A032929 (n + 1)) - A032915 (n + 1)

end

end A032808.P7642980078489881744

/-! ## A032808.P11018288251999325431

`A037462(A115637(n))+A032915(n+1)`
-/

namespace A032808.P11018288251999325431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A115637 n).toNat + A032915 (n + 1)

end

end A032808.P11018288251999325431

/-! ## A032808.P2982375834111213066

`A037462(A115637(n))+A033034(A032925(n+1))`
-/

namespace A032808.P2982375834111213066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A115637 n).toNat + A033034 (A032925 (n + 1)).toNat

end

end A032808.P2982375834111213066

/-! ## A032808.P11095962912341268506

`A037462(A032911(n+1))+A037462(A115637(n))`
-/

namespace A032808.P11095962912341268506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A032911 (n + 1)).toNat + A037462 (A115637 n).toNat

end

end A032808.P11095962912341268506

/-! ## A032808.P7325520730652545508

`A037462(A032804(n+1))`
-/

namespace A032808.P7325520730652545508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A032804 (n + 1)).toNat

end

end A032808.P7325520730652545508

/-! ## A032808.P903495067056826046

`A037462(A115637(n)+A032911(n+1))`
-/

namespace A032808.P903495067056826046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A115637 n + A032911 (n + 1)).toNat

end

end A032808.P903495067056826046

/-! ## A032808.P12571885229773608647

`A037462(A115637(n)+record[A332769(n+1)])`
-/

namespace A032808.P12571885229773608647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A115637 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A032808.P12571885229773608647

/-!
# A032809: Numbers whose set of base-9 digits is {2,3}.

The programs for A032809, there is no canonical definition to state claims against.
-/

/-! ## A032809.P14013736552636393093

`(A032930(n+1)+A032833(n+1))/2`
-/

namespace A032809.P14013736552636393093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032930 (n + 1) + A032833 (n + 1) : ℚ) / 2

end

end A032809.P14013736552636393093

/-! ## A032809.P5161181037175918524

`3*A032930(n+1)-A032916(n+1)`
-/

namespace A032809.P5161181037175918524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032930 (n + 1) - A032916 (n + 1)

end

end A032809.P5161181037175918524

/-! ## A032809.P2447403047770431731

`A032821(n+1)+A032930(A346306(n+1))-A032930(n+1)`
-/

namespace A032809.P2447403047770431731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032821 (n + 1) + (A032930 (A346306 (n + 1)).toNat - A032930 (n + 1))

end

end A032809.P2447403047770431731

/-! ## A032809.P3175622358531594397

`A037463(A115637(n))+A032916(n+1)`
-/

namespace A032809.P3175622358531594397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (A115637 n).toNat + A032916 (n + 1)

end

end A032809.P3175622358531594397

/-! ## A032809.P2110090630468027285

`A037463(A032911(n+1))+A037463(A115637(n))`
-/

namespace A032809.P2110090630468027285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (A032911 (n + 1)).toNat + A037463 (A115637 n).toNat

end

end A032809.P2110090630468027285

/-! ## A032809.P9450044236605207551

`A037463(A032804(n+1))`
-/

namespace A032809.P9450044236605207551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (A032804 (n + 1)).toNat

end

end A032809.P9450044236605207551

/-! ## A032809.P7730869663999470383

`A037463(A115637(n)+A032911(n+1))`
-/

namespace A032809.P7730869663999470383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (A115637 n + A032911 (n + 1)).toNat

end

end A032809.P7730869663999470383

/-! ## A032809.P5604672380017748160

`A037468(A032805(n+1))`
-/

namespace A032809.P5604672380017748160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (A032805 (n + 1)).toNat

end

end A032809.P5604672380017748160

/-! ## A032809.P6649226574845559155

`A037472(A032806(n+1))`
-/

namespace A032809.P6649226574845559155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (A032806 (n + 1)).toNat

end

end A032809.P6649226574845559155

/-! ## A032809.P15830805739286610197

`A037475(A032807(n+1))`
-/

namespace A032809.P15830805739286610197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A032807 (n + 1)).toNat

end

end A032809.P15830805739286610197

/-!
# A032810: Numbers using only digits 2 and 3.

The programs for A032810, there is no canonical definition to state claims against.
-/

/-! ## A032810.P1971984483397515625

`A007931(n+1)+A002275(A000523(n+2))`
-/

namespace A032810.P1971984483397515625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + A002275 (A000523 (n + 2)).toNat

end

end A032810.P1971984483397515625

/-! ## A032810.P8424408007413648640

`A284634(n+1)/2`
-/

namespace A032810.P8424408007413648640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284634 (n + 1) : ℚ) / 2

end

end A032810.P8424408007413648640

/-! ## A032810.P5019990268591045958

`A284636(n+1)/3`
-/

namespace A032810.P5019990268591045958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284636 (n + 1) : ℚ) / 3

end

end A032810.P5019990268591045958

/-! ## A032810.P8251154481272289692

`A256077(n+1)+A007931(n+1)`
-/

namespace A032810.P8251154481272289692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256077 (n + 1) + A007931 (n + 1)

end

end A032810.P8251154481272289692

/-! ## A032810.P7941418831696029699

`A143967(n+1)-A032822(n+1)`
-/

namespace A032810.P7941418831696029699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (n + 1) - A032822 (n + 1)

end

end A032810.P7941418831696029699

/-! ## A032810.P626338801042609544

`A032834(n+1)-A256077(n+1)`
-/

namespace A032810.P626338801042609544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1) - A256077 (n + 1)

end

end A032810.P626338801042609544

/-! ## A032810.P2697381521098001197

`A284379(n+1)-A007931(n+1)`
-/

namespace A032810.P2697381521098001197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (n + 1) - A007931 (n + 1)

end

end A032810.P2697381521098001197

/-! ## A032810.P108828522211644974

`A284380(n+1)-A032834(n+1)`
-/

namespace A032810.P108828522211644974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284380 (n + 1) - A032834 (n + 1)

end

end A032810.P108828522211644974

/-! ## A032810.P2860139751370439448

`A284633(n+1)-A032917(n+1)`
-/

namespace A032810.P2860139751370439448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284633 (n + 1) - A032917 (n + 1)

end

end A032810.P2860139751370439448

/-! ## A032810.P7486356058128835498

`A284972(n+1)-A072961(n+1)`
-/

namespace A032810.P7486356058128835498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284972 (n + 1) - A072961 (n + 1)

end

end A032810.P7486356058128835498

/-! ## A032810.P4683896991516853915

`A284635(n+1)-A256290(n+1)`
-/

namespace A032810.P4683896991516853915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284635 (n + 1) - A256290 (n + 1)

end

end A032810.P4683896991516853915

/-! ## A032810.P5133530075944508822

`A285011(n+1)-A256291(n+1)`
-/

namespace A032810.P5133530075944508822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285011 (n + 1) - A256291 (n + 1)

end

end A032810.P5133530075944508822

/-! ## A032810.P10532667104918543003

`A284963(n+1)-A276037(n+1)`
-/

namespace A032810.P10532667104918543003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1) - A276037 (n + 1)

end

end A032810.P10532667104918543003

/-! ## A032810.P5098165812990447858

`A284381(n+1)-A284379(n+1)`
-/

namespace A032810.P5098165812990447858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284381 (n + 1) - A284379 (n + 1)

end

end A032810.P5098165812990447858

/-! ## A032810.P3804453430515583138

`A284382(n+1)-A284633(n+1)`
-/

namespace A032810.P3804453430515583138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1) - A284633 (n + 1)

end

end A032810.P3804453430515583138

/-! ## A032810.P2365993730259638311

`A284964(n+1)-A284293(n+1)`
-/

namespace A032810.P2365993730259638311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284964 (n + 1) - A284293 (n + 1)

end

end A032810.P2365993730259638311

/-! ## A032810.P11289406896370140462

`A284636(n+1)-A284634(n+1)`
-/

namespace A032810.P11289406896370140462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284636 (n + 1) - A284634 (n + 1)

end

end A032810.P11289406896370140462

/-! ## A032810.P12407186640435290749

`A284973(n+1)-A284632(n+1)`
-/

namespace A032810.P12407186640435290749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1) - A284632 (n + 1)

end

end A032810.P12407186640435290749

/-! ## A032810.P14888233238198840057

`A284971(n+1)-A284920(n+1)`
-/

namespace A032810.P14888233238198840057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284971 (n + 1) - A284920 (n + 1)

end

end A032810.P14888233238198840057

/-! ## A032810.P15291673856780461448

`A302938(n+3)-A284920(n+1)`
-/

namespace A032810.P15291673856780461448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302938 (n + 3) - A284920 (n + 1)

end

end A032810.P15291673856780461448

/-!
# A032811: Numbers whose set of base-11 digits is {2,3}.

The programs for A032811, there is no canonical definition to state claims against.
-/

/-! ## A032811.P6857421712883564920

`(A032931(n+1)+A032835(n+1))/2`
-/

namespace A032811.P6857421712883564920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032931 (n + 1) + A032835 (n + 1) : ℚ) / 2

end

end A032811.P6857421712883564920

/-! ## A032811.P12018773910378270254

`3*A032931(n+1)-A032918(n+1)`
-/

namespace A032811.P12018773910378270254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032931 (n + 1) - A032918 (n + 1)

end

end A032811.P12018773910378270254

/-! ## A032811.P13785357281276537497

`(A032931(n+1)+4*A032931(n+1)-A032823(n+1))/2`
-/

namespace A032811.P13785357281276537497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032931 (n + 1) + (4 * A032931 (n + 1) - A032823 (n + 1)) : ℚ) / 2

end

end A032811.P13785357281276537497

/-! ## A032811.P6434790288072794159

`3*A032931(n+1)-A033036(A032926(n+1))`
-/

namespace A032811.P6434790288072794159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032931 (n + 1) - A033036 (A032926 (n + 1)).toNat

end

end A032811.P6434790288072794159

/-! ## A032811.P10652271573096454450

`A033036(2*A032926(n+1))-A032823(n+1)`
-/

namespace A032811.P10652271573096454450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033036 (2 * A032926 (n + 1)).toNat - A032823 (n + 1)

end

end A032811.P10652271573096454450

/-! ## A032811.P5079498263172412625

`A014682(A032931(n+1)+A032835(n+1))`
-/

namespace A032811.P5079498263172412625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A032931 (n + 1) + A032835 (n + 1)).toNat

end

end A032811.P5079498263172412625

/-!
# A032812: Numbers whose set of base-12 digits is {2,3}.

The programs for A032812, the canonical program `A032812.P741658071294242113` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032812 has offset 1).

The definition of A032812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032812.P741658071294242113

`record[n%2+12*a(floor(n/2))+2]` with `a(0)=2, a(1)=0`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032812

/-- `record[n%2+12*a(floor(n/2))+2]` -/
def P741658071294242113.Spec : Prop :=
  ∀ n, (P741658071294242113.a n : ℤ) = A032812 (n + 1)

theorem P741658071294242113.correct : P741658071294242113.Spec := by
  intro n
  simp only [A032812, Nat.add_sub_cancel]

end A032812

/-! ## A032812.P6919290295547391848

`(A032932(n+1)+A032836(n+1))/2`
-/

namespace A032812.P6919290295547391848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032932 (n + 1) + A032836 (n + 1) : ℚ) / 2

end

end A032812.P6919290295547391848

namespace A032812

/-- `(A032932(n+1)+A032836(n+1))/2` -/
def P6919290295547391848.Spec : Prop :=
  ∀ n, P6919290295547391848.a n = (A032812 (n + 1) : ℚ)

end A032812

/-! ## A032812.P6391665093917356579

`3*A032932(n+1)-A032919(n+1)`
-/

namespace A032812.P6391665093917356579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032932 (n + 1) - A032919 (n + 1)

end

end A032812.P6391665093917356579

namespace A032812

/-- `3*A032932(n+1)-A032919(n+1)` -/
def P6391665093917356579.Spec : Prop :=
  ∀ n, P6391665093917356579.a n = A032812 (n + 1)

end A032812

/-! ## A032812.P7841899779968322254

`(A032932(n+1)+4*A032932(n+1)-A032824(n+1))/2`
-/

namespace A032812.P7841899779968322254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032932 (n + 1) + (4 * A032932 (n + 1) - A032824 (n + 1)) : ℚ) / 2

end

end A032812.P7841899779968322254

namespace A032812

/-- `(A032932(n+1)+4*A032932(n+1)-A032824(n+1))/2` -/
def P7841899779968322254.Spec : Prop :=
  ∀ n, P7841899779968322254.a n = (A032812 (n + 1) : ℚ)

end A032812

/-! ## A032812.P7174244082225221564

`A102487(A032810(n+1)+1)`
-/

namespace A032812.P7174244082225221564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (A032810 (n + 1) + 1).toNat

end

end A032812.P7174244082225221564

namespace A032812

/-- `A102487(A032810(n+1)+1)` -/
def P7174244082225221564.Spec : Prop :=
  ∀ n, P7174244082225221564.a n = A032812 (n + 1)

end A032812

/-!
# A032813: Numbers whose set of base-13 digits is {2,3}.

The programs for A032813, there is no canonical definition to state claims against.
-/

/-! ## A032813.P8880745080390358476

`(A032933(n+1)+A032837(n+1))/2`
-/

namespace A032813.P8880745080390358476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032933 (n + 1) + A032837 (n + 1) : ℚ) / 2

end

end A032813.P8880745080390358476

/-! ## A032813.P15969398922324894092

`3*A032933(n+1)-A032920(n+1)`
-/

namespace A032813.P15969398922324894092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032933 (n + 1) - A032920 (n + 1)

end

end A032813.P15969398922324894092

/-! ## A032813.P12933002474911774042

`(A032837(n+1)+2*A032920(n+1)-A032825(n+1))/2`
-/

namespace A032813.P12933002474911774042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032837 (n + 1) + (2 * A032920 (n + 1) - A032825 (n + 1)) : ℚ) / 2

end

end A032813.P12933002474911774042

/-! ## A032813.P3890857200925970327

`A032933(n+1)+A014682(A032837(n+1)-A032933(n+1))`
-/

namespace A032813.P3890857200925970327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032933 (n + 1) + A014682 (A032837 (n + 1) - A032933 (n + 1)).toNat

end

end A032813.P3890857200925970327

/-! ## A032813.P14562943560227466587

`A094823(A032810(n+1))`
-/

namespace A032813.P14562943560227466587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094823 (A032810 (n + 1)).toNat

end

end A032813.P14562943560227466587

/-!
# A032814: Numbers whose set of base-14 digits is {2,3}.

The programs for A032814, there is no canonical definition to state claims against.
-/

/-! ## A032814.P1503597839866630767

`(A032934(n+1)+A032838(n+1))/2`
-/

namespace A032814.P1503597839866630767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032934 (n + 1) + A032838 (n + 1) : ℚ) / 2

end

end A032814.P1503597839866630767

/-! ## A032814.P18294736730433003999

`3*A032934(n+1)-A032921(n+1)`
-/

namespace A032814.P18294736730433003999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032934 (n + 1) - A032921 (n + 1)

end

end A032814.P18294736730433003999

/-! ## A032814.P6531616174887343301

`A008486(A032934(n+1))-A032921(n+1)`
-/

namespace A032814.P6531616174887343301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A032934 (n + 1)).toNat - A032921 (n + 1)

end

end A032814.P6531616174887343301

/-! ## A032814.P8612450512517847602

`A008486(A032934(n+1))-A033039(A032928(n+1))`
-/

namespace A032814.P8612450512517847602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A032934 (n + 1)).toNat - A033039 (A032928 (n + 1)).toNat

end

end A032814.P8612450512517847602

/-! ## A032814.P9201354839519030079

`A252463(A032838(n+1)-A032934(n+1))+A032934(n+1)`
-/

namespace A032814.P9201354839519030079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A032838 (n + 1) - A032934 (n + 1)).toNat + A032934 (n + 1)

end

end A032814.P9201354839519030079

/-!
# A032815: Numbers whose set of base-15 digits is {2,3}.

The programs for A032815, there is no canonical definition to state claims against.
-/

/-! ## A032815.P6365182479474074314

`(A032935(n+1)+A032839(n+1))/2`
-/

namespace A032815.P6365182479474074314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032935 (n + 1) + A032839 (n + 1) : ℚ) / 2

end

end A032815.P6365182479474074314

/-! ## A032815.P9799938288912856231

`3*A032935(n+1)-A032922(n+1)`
-/

namespace A032815.P9799938288912856231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032935 (n + 1) - A032922 (n + 1)

end

end A032815.P9799938288912856231

/-! ## A032815.P14035412618541302778

`(A032839(n+1)+2*A032922(n+1)-A032827(n+1))/2`
-/

namespace A032815.P14035412618541302778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032839 (n + 1) + (2 * A032922 (n + 1) - A032827 (n + 1)) : ℚ) / 2

end

end A032815.P14035412618541302778

/-! ## A032815.P13321603606824630651

`A273943(A032935(n+1)+A032839(n+1))`
-/

namespace A032815.P13321603606824630651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A032935 (n + 1) + A032839 (n + 1)).toNat

end

end A032815.P13321603606824630651

/-! ## A032815.P9021633565941436132

`A008486(A032935(n+1))-A032922(n+1)`
-/

namespace A032815.P9021633565941436132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A032935 (n + 1)).toNat - A032922 (n + 1)

end

end A032815.P9021633565941436132

/-!
# A032816: Numbers whose set of base-16 digits is {2,3}.

The programs for A032816, there is no canonical definition to state claims against.
-/

/-! ## A032816.P13162463556830239643

`(A032936(n+1)+A032840(n+1))/2`
-/

namespace A032816.P13162463556830239643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032936 (n + 1) + A032840 (n + 1) : ℚ) / 2

end

end A032816.P13162463556830239643

/-! ## A032816.P16241723455368777672

`3*A032936(n+1)-A032923(n+1)`
-/

namespace A032816.P16241723455368777672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032936 (n + 1) - A032923 (n + 1)

end

end A032816.P16241723455368777672

/-! ## A032816.P628256185572818439

`A032923(n+1)+and(A032828(n+1), A032923(n+1))`
-/

namespace A032816.P628256185572818439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032923 (n + 1) + Int.land (A032828 (n + 1)) (A032923 (n + 1))

end

end A032816.P628256185572818439

/-! ## A032816.P15059531418874655666

`A032923(n+1)+and(A032840(n+1), A032923(n+1))`
-/

namespace A032816.P15059531418874655666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032923 (n + 1) + Int.land (A032840 (n + 1)) (A032923 (n + 1))

end

end A032816.P15059531418874655666

/-! ## A032816.P14277204347254652251

`xor(A032923(A346306(n+1)), A032936(n+1))`
-/

namespace A032816.P14277204347254652251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A032923 (A346306 (n + 1)).toNat) (A032936 (n + 1))

end

end A032816.P14277204347254652251

/-! ## A032816.P15571701673310862934

`A032923(n+1)+A000695(A115637(n))`
-/

namespace A032816.P15571701673310862934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032923 (n + 1) + A000695 (A115637 n).toNat

end

end A032816.P15571701673310862934

/-!
# A032817: Numbers whose set of base-5 digits is {1,4}.

The programs for A032817, there is no canonical definition to state claims against.
-/

/-! ## A032817.P7167770422688270493

`2*A032912(n+1)-A032926(n+1)`
-/

namespace A032817.P7167770422688270493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032912 (n + 1) - A032926 (n + 1)

end

end A032817.P7167770422688270493

/-! ## A032817.P17043952271647690238

`4*A032926(n+1)-A032829(n+1)`
-/

namespace A032817.P17043952271647690238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032926 (n + 1) - A032829 (n + 1)

end

end A032817.P17043952271647690238

/-! ## A032817.P7432336003766563080

`2*A032805(n+1)-A032805(A346306(n+1))`
-/

namespace A032817.P7432336003766563080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032805 (n + 1) - A032805 (A346306 (n + 1)).toNat

end

end A032817.P7432336003766563080

/-! ## A032817.P12508118088363808041

`A023729(A032911(n+1)+1)`
-/

namespace A032817.P12508118088363808041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (A032911 (n + 1) + 1).toNat

end

end A032817.P12508118088363808041

/-! ## A032817.P1494436905487009915

`A023733(A032911(n+1)+1)`
-/

namespace A032817.P1494436905487009915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (A032911 (n + 1) + 1).toNat

end

end A032817.P1494436905487009915

/-! ## A032817.P17028848320440413991

`∩[A023721(n+1), A039566(n+1)]`
-/

namespace A032817.P17028848320440413991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032817.P17028848320440413991

/-! ## A032817.P2644153033987904507

`∩[A023729(n+1), A039566(n+1)]`
-/

namespace A032817.P2644153033987904507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032817.P2644153033987904507

/-! ## A032817.P9712355583575678116

`∩[A023733(n+1), A039566(n+1)]`
-/

namespace A032817.P9712355583575678116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032817.P9712355583575678116

/-! ## A032817.P9108576023270705531

`record[gcd(A039008(n+1), A039009(n+1))]`
-/

namespace A032817.P9108576023270705531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039008 (n + 1)) (A039009 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032817.P9108576023270705531

/-! ## A032817.P17399561668668903980

`A032805(A346306(n+1))-A309991(A032805(n+1))`
-/

namespace A032817.P17399561668668903980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032805 (A346306 (n + 1)).toNat - A309991 (A032805 (n + 1)).toNat

end

end A032817.P17399561668668903980

/-!
# A032818: Numbers whose set of base-6 digits is {1,4}.

The programs for A032818, the canonical program `A032818.P11687481509006464414` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032818 has offset 1).

The definition of A032818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032818.P12875280582383564254

`2*A032913(n+1)-A032927(n+1)`
-/

namespace A032818.P12875280582383564254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032913 (n + 1) - A032927 (n + 1)

end

end A032818.P12875280582383564254

namespace A032818

/-- `2*A032913(n+1)-A032927(n+1)` -/
def P12875280582383564254.Spec : Prop :=
  ∀ n, P12875280582383564254.a n = A032818 (n + 1)

end A032818

/-! ## A032818.P16854104233901744281

`4*A032927(n+1)-A032830(n+1)`
-/

namespace A032818.P16854104233901744281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032927 (n + 1) - A032830 (n + 1)

end

end A032818.P16854104233901744281

namespace A032818

/-- `4*A032927(n+1)-A032830(n+1)` -/
def P16854104233901744281.Spec : Prop :=
  ∀ n, P16854104233901744281.a n = A032818 (n + 1)

end A032818

/-! ## A032818.P11687481509006464414

`2*(3*A032927(n+1)-A032806(n+1))-A032927(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A032818

/-- `2*(3*A032927(n+1)-A032806(n+1))-A032927(n+1)` -/
def P11687481509006464414.Spec : Prop :=
  ∀ n, P11687481509006464414.a n = A032818 (n + 1)

theorem P11687481509006464414.correct : P11687481509006464414.Spec := by
  intro n
  simp only [A032818, Nat.add_sub_cancel]

end A032818

/-! ## A032818.P15808607031329618474

`(5*A032806(n+1))%A032830(n+1)+A032913(n+1)%A032927(n+1)`
-/

namespace A032818.P15808607031329618474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A032806 (n + 1)) (A032830 (n + 1)) + Int.tmod (A032913 (n + 1)) (A032927 (n + 1))

end

end A032818.P15808607031329618474

namespace A032818

/-- `(5*A032806(n+1))%A032830(n+1)+A032913(n+1)%A032927(n+1)` -/
def P15808607031329618474.Spec : Prop :=
  ∀ n, P15808607031329618474.a n = A032818 (n + 1)

end A032818

/-! ## A032818.P9976138502756402541

`2*A033032(A032924(n+1))-A032927(n+1)`
-/

namespace A032818.P9976138502756402541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033032 (A032924 (n + 1)).toNat - A032927 (n + 1)

end

end A032818.P9976138502756402541

namespace A032818

/-- `2*A033032(A032924(n+1))-A032927(n+1)` -/
def P9976138502756402541.Spec : Prop :=
  ∀ n, P9976138502756402541.a n = A032818 (n + 1)

end A032818

/-! ## A032818.P14277434559738181883

`A037460(2*A032911(n+1))/2`
-/

namespace A032818.P14277434559738181883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037460 (2 * A032911 (n + 1)).toNat : ℚ) / 2

end

end A032818.P14277434559738181883

namespace A032818

/-- `A037460(2*A032911(n+1))/2` -/
def P14277434559738181883.Spec : Prop :=
  ∀ n, P14277434559738181883.a n = (A032818 (n + 1) : ℚ)

end A032818

/-! ## A032818.P8867062219788855473

`A037465(A032817(n+1))`
-/

namespace A032818.P8867062219788855473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A032817 (n + 1)).toNat

end

end A032818.P8867062219788855473

namespace A032818

/-- `A037465(A032817(n+1))` -/
def P8867062219788855473.Spec : Prop :=
  ∀ n, P8867062219788855473.a n = A032818 (n + 1)

end A032818

/-! ## A032818.P815900342385301333

`A004277(A032913(n+1))-A032927(n+1)`
-/

namespace A032818.P815900342385301333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032913 (n + 1)).toNat - A032927 (n + 1)

end

end A032818.P815900342385301333

namespace A032818

/-- `A004277(A032913(n+1))-A032927(n+1)` -/
def P815900342385301333.Spec : Prop :=
  ∀ n, P815900342385301333.a n = A032818 (n + 1)

end A032818

/-!
# A032819: Numbers whose set of base-7 digits is {1,4}.

The programs for A032819, there is no canonical definition to state claims against.
-/

/-! ## A032819.P13678674396380638839

`2*A032914(n+1)-A032928(n+1)`
-/

namespace A032819.P13678674396380638839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032914 (n + 1) - A032928 (n + 1)

end

end A032819.P13678674396380638839

/-! ## A032819.P6229594811287287115

`4*A032928(n+1)-A032831(n+1)`
-/

namespace A032819.P6229594811287287115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032928 (n + 1) - A032831 (n + 1)

end

end A032819.P6229594811287287115

/-! ## A032819.P16806289391240058067

`2*A033033(A032924(n+1))-A032928(n+1)`
-/

namespace A032819.P16806289391240058067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033033 (A032924 (n + 1)).toNat - A032928 (n + 1)

end

end A032819.P16806289391240058067

/-! ## A032819.P17304794636654888134

`2*A037461(A032911(n+1))-A032928(n+1)`
-/

namespace A032819.P17304794636654888134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037461 (A032911 (n + 1)).toNat - A032928 (n + 1)

end

end A032819.P17304794636654888134

/-! ## A032819.P4024654596196452473

`A037466(A032817(n+1))`
-/

namespace A032819.P4024654596196452473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (A032817 (n + 1)).toNat

end

end A032819.P4024654596196452473

/-! ## A032819.P24635272931759912

`A037466(2*A032912(n+1))/2`
-/

namespace A032819.P24635272931759912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037466 (2 * A032912 (n + 1)).toNat : ℚ) / 2

end

end A032819.P24635272931759912

/-! ## A032819.P239502526681279179

`A020658(A032818(n+1))`
-/

namespace A032819.P239502526681279179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (A032818 (n + 1)).toNat

end

end A032819.P239502526681279179

/-! ## A032819.P4991162552038154087

`A020657(A032818(n+1)+1)`
-/

namespace A032819.P4991162552038154087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (A032818 (n + 1) + 1).toNat

end

end A032819.P4991162552038154087

/-! ## A032819.P9435613846112971985

`A005843(A032914(n+1))-A032928(n+1)`
-/

namespace A032819.P9435613846112971985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A032914 (n + 1)).toNat - A032928 (n + 1)

end

end A032819.P9435613846112971985

/-!
# A032820: Numbers whose set of base-8 digits is {1,4}.

The programs for A032820, there is no canonical definition to state claims against.
-/

/-! ## A032820.P2743917332830709804

`2*A032915(n+1)-A032929(n+1)`
-/

namespace A032820.P2743917332830709804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032915 (n + 1) - A032929 (n + 1)

end

end A032820.P2743917332830709804

/-! ## A032820.P2426439784364563706

`4*A032929(n+1)-A032832(n+1)`
-/

namespace A032820.P2426439784364563706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032929 (n + 1) - A032832 (n + 1)

end

end A032820.P2426439784364563706

/-! ## A032820.P15920226024887514864

`A032929(n+1)+and(A032808(n+1), A032929(n+1))`
-/

namespace A032820.P15920226024887514864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032929 (n + 1) + Int.land (A032808 (n + 1)) (A032929 (n + 1))

end

end A032820.P15920226024887514864

/-! ## A032820.P8908891405326300386

`or(A032808(n+1), A032832(n+1))-A032808(n+1)`
-/

namespace A032820.P8908891405326300386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032808 (n + 1)) (A032832 (n + 1)) - A032808 (n + 1)

end

end A032820.P8908891405326300386

/-! ## A032820.P12344574066431514689

`xor(A032832(n+1), A032915(n+1))-A032915(n+1)`
-/

namespace A032820.P12344574066431514689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A032832 (n + 1)) (A032915 (n + 1)) - A032915 (n + 1)

end

end A032820.P12344574066431514689

/-! ## A032820.P5898737310392145411

`A084471(∑[A115716(n)])`
-/

namespace A032820.P5898737310392145411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032820.P5898737310392145411

/-! ## A032820.P4607561837407608809

`A084471(A032925(n+1))`
-/

namespace A032820.P4607561837407608809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084471 (A032925 (n + 1)).toNat

end

end A032820.P4607561837407608809

/-! ## A032820.P12492667378068238791

`and(A032832(n+1), A113835(n+1))`
-/

namespace A032820.P12492667378068238791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032832 (n + 1)) (A113835 (n + 1))

end

end A032820.P12492667378068238791

/-! ## A032820.P3818269373085628368

`A308496(A032911(n+1))`
-/

namespace A032820.P3818269373085628368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308496 (A032911 (n + 1)).toNat

end

end A032820.P3818269373085628368

/-! ## A032820.P13904540512336822940

`A308496(A032804(n+1)-A115637(n))`
-/

namespace A032820.P13904540512336822940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308496 (A032804 (n + 1) - A115637 n).toNat

end

end A032820.P13904540512336822940

/-! ## A032820.P4710019198477209244

`A037462(2*A032925(n+1))/2`
-/

namespace A032820.P4710019198477209244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037462 (2 * A032925 (n + 1)).toNat : ℚ) / 2

end

end A032820.P4710019198477209244

/-!
# A032821: Numbers whose set of base-9 digits is {1,4}.

The programs for A032821, there is no canonical definition to state claims against.
-/

/-! ## A032821.P3618465818664261792

`2*A032916(n+1)-A032930(n+1)`
-/

namespace A032821.P3618465818664261792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032916 (n + 1) - A032930 (n + 1)

end

end A032821.P3618465818664261792

/-! ## A032821.P3824982271348597666

`4*A032930(n+1)-A032833(n+1)`
-/

namespace A032821.P3824982271348597666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032930 (n + 1) - A032833 (n + 1)

end

end A032821.P3824982271348597666

/-! ## A032821.P3681978620165475471

`A338086(A032924(n+1))-A032833(n+1)`
-/

namespace A032821.P3681978620165475471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338086 (A032924 (n + 1)).toNat - A032833 (n + 1)

end

end A032821.P3681978620165475471

/-! ## A032821.P15220533643871102016

`2*A319497(A032924(n+1))-A032930(n+1)`
-/

namespace A032821.P15220533643871102016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319497 (A032924 (n + 1)).toNat - A032930 (n + 1)

end

end A032821.P15220533643871102016

/-! ## A032821.P10152267145893998037

`A338086(A032924(n+1))-(2*A032809(n+1)-A032930(n+1))`
-/

namespace A032821.P10152267145893998037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338086 (A032924 (n + 1)).toNat - (2 * A032809 (n + 1) - A032930 (n + 1))

end

end A032821.P10152267145893998037

/-! ## A032821.P16490134936005260397

`A003278(A032911(n+1))`
-/

namespace A032821.P16490134936005260397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A032911 (n + 1)).toNat

end

end A032821.P16490134936005260397

/-! ## A032821.P18007403520563088087

`A003278(record[A332769(n+1)])`
-/

namespace A032821.P18007403520563088087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A032821.P18007403520563088087

/-! ## A032821.P8254316086461549665

`A005836(A032911(n+1)+1)`
-/

namespace A032821.P8254316086461549665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A032911 (n + 1) + 1).toNat

end

end A032821.P8254316086461549665

/-! ## A032821.P12610994812072133309

`A004793(or(1, A032911(n+1)))`
-/

namespace A032821.P12610994812072133309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (Int.lor 1 (A032911 (n + 1))).toNat

end

end A032821.P12610994812072133309

/-! ## A032821.P13104627004043828606

`A004793(A032911(n+1)%A074985(n+1))`
-/

namespace A032821.P13104627004043828606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (Int.tmod (A032911 (n + 1)) (A074985 (n + 1))).toNat

end

end A032821.P13104627004043828606

/-!
# A032822: Numbers whose set of base-10 digits is {1,4}.

The programs for A032822, there is no canonical definition to state claims against.
-/

/-! ## A032822.P11869420860159802865

`A284922(n+1)/2`
-/

namespace A032822.P11869420860159802865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284922 (n + 1) : ℚ) / 2

end

end A032822.P11869420860159802865

/-! ## A032822.P8383039069565397962

`A143967(n+1)-A032810(n+1)`
-/

namespace A032822.P8383039069565397962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (n + 1) - A032810 (n + 1)

end

end A032822.P8383039069565397962

/-! ## A032822.P5000546135673829691

`A284632(n+1)-A007931(n+1)`
-/

namespace A032822.P5000546135673829691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284632 (n + 1) - A007931 (n + 1)

end

end A032822.P5000546135673829691

/-! ## A032822.P2661261896718777625

`A284972(n+1)-A032834(n+1)`
-/

namespace A032822.P2661261896718777625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284972 (n + 1) - A032834 (n + 1)

end

end A032822.P2661261896718777625

/-! ## A032822.P11064466616089865318

`A284921(n+1)-A032917(n+1)`
-/

namespace A032822.P11064466616089865318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1) - A032917 (n + 1)

end

end A032822.P11064466616089865318

/-! ## A032822.P11848945060630044679

`A072961(n+1)-A256077(n+1)`
-/

namespace A032822.P11848945060630044679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (n + 1) - A256077 (n + 1)

end

end A032822.P11848945060630044679

/-! ## A032822.P6021331506639958229

`A284964(n+1)-A072961(n+1)`
-/

namespace A032822.P6021331506639958229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284964 (n + 1) - A072961 (n + 1)

end

end A032822.P6021331506639958229

/-! ## A032822.P5013994869257651104

`A284382(n+1)-A256290(n+1)`
-/

namespace A032822.P5013994869257651104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1) - A256290 (n + 1)

end

end A032822.P5013994869257651104

/-! ## A032822.P16593074915548696250

`A284923(n+1)-A276037(n+1)`
-/

namespace A032822.P16593074915548696250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284923 (n + 1) - A276037 (n + 1)

end

end A032822.P16593074915548696250

/-! ## A032822.P1827792569187976535

`A284973(n+1)-A284379(n+1)`
-/

namespace A032822.P1827792569187976535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1) - A284379 (n + 1)

end

end A032822.P1827792569187976535

/-! ## A032822.P12270413727045450424

`A284963(n+1)-A284920(n+1)`
-/

namespace A032822.P12270413727045450424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1) - A284920 (n + 1)

end

end A032822.P12270413727045450424

/-! ## A032822.P4972688810577164066

`2*A032917(n+1)-A007931(n+1)`
-/

namespace A032822.P4972688810577164066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032917 (n + 1) - A007931 (n + 1)

end

end A032822.P4972688810577164066

/-! ## A032822.P14880740143477339697

`(A284293(n+1)+A007931(n+1))/2`
-/

namespace A032822.P14880740143477339697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284293 (n + 1) + A007931 (n + 1) : ℚ) / 2

end

end A032822.P14880740143477339697

/-! ## A032822.P12745688592124505838

`A284963(n+1)-2*A007931(n+1)`
-/

namespace A032822.P12745688592124505838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1) - 2 * A007931 (n + 1)

end

end A032822.P12745688592124505838

/-! ## A032822.P16163189288712488022

`(A276037(n+1)+A032917(n+1))/2`
-/

namespace A032822.P16163189288712488022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276037 (n + 1) + A032917 (n + 1) : ℚ) / 2

end

end A032822.P16163189288712488022

/-! ## A032822.P1639032067738048053

`2*A284920(n+1)-A032834(n+1)`
-/

namespace A032822.P1639032067738048053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284920 (n + 1) - A032834 (n + 1)

end

end A032822.P1639032067738048053

/-! ## A032822.P11883885631745009610

`2*A072961(n+1)-A284633(n+1)`
-/

namespace A032822.P11883885631745009610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072961 (n + 1) - A284633 (n + 1)

end

end A032822.P11883885631745009610

/-! ## A032822.P6165164299134541368

`(A276039(n+1)+A256077(n+1))/2`
-/

namespace A032822.P6165164299134541368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276039 (n + 1) + A256077 (n + 1) : ℚ) / 2

end

end A032822.P6165164299134541368

/-! ## A032822.P1672435689054115854

`2*A284379(n+1)-A256291(n+1)`
-/

namespace A032822.P1672435689054115854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284379 (n + 1) - A256291 (n + 1)

end

end A032822.P1672435689054115854

/-! ## A032822.P13401024203897757823

`A284633(n+1)-2*A256077(n+1)`
-/

namespace A032822.P13401024203897757823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284633 (n + 1) - 2 * A256077 (n + 1)

end

end A032822.P13401024203897757823

/-!
# A032823: Numbers whose set of base-11 digits is {1,4}.

The programs for A032823, there is no canonical definition to state claims against.
-/

/-! ## A032823.P153427226851631479

`2*A032918(n+1)-A032931(n+1)`
-/

namespace A032823.P153427226851631479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032918 (n + 1) - A032931 (n + 1)

end

end A032823.P153427226851631479

/-! ## A032823.P9354171966265903938

`4*A032931(n+1)-A032835(n+1)`
-/

namespace A032823.P9354171966265903938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032931 (n + 1) - A032835 (n + 1)

end

end A032823.P9354171966265903938

/-! ## A032823.P2702202473014981621

`4*A032931(n+1)-(2*A032811(n+1)-A032931(n+1))`
-/

namespace A032823.P2702202473014981621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032931 (n + 1) - (2 * A032811 (n + 1) - A032931 (n + 1))

end

end A032823.P2702202473014981621

/-! ## A032823.P9390753622983220855

`2*A033036(A032926(n+1))-A032931(n+1)`
-/

namespace A032823.P9390753622983220855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033036 (A032926 (n + 1)).toNat - A032931 (n + 1)

end

end A032823.P9390753622983220855

/-! ## A032823.P16312059526648011823

`A032918(n+1)+A033036(A032926(n+1))-A032931(n+1)`
-/

namespace A032823.P16312059526648011823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032918 (n + 1) + (A033036 (A032926 (n + 1)).toNat - A032931 (n + 1))

end

end A032823.P16312059526648011823

/-! ## A032823.P13338885864585694831

`A033036(2*A032926(n+1))-A032811(n+1)`
-/

namespace A032823.P13338885864585694831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033036 (2 * A032926 (n + 1)).toNat - A032811 (n + 1)

end

end A032823.P13338885864585694831

/-!
# A032824: Numbers whose set of base-12 digits is {1,4}.

The programs for A032824, there is no canonical definition to state claims against.
-/

/-! ## A032824.P199635097438796342

`2*A032919(n+1)-A032932(n+1)`
-/

namespace A032824.P199635097438796342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032919 (n + 1) - A032932 (n + 1)

end

end A032824.P199635097438796342

/-! ## A032824.P1274078288819378781

`4*A032932(n+1)-A032836(n+1)`
-/

namespace A032824.P1274078288819378781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032932 (n + 1) - A032836 (n + 1)

end

end A032824.P1274078288819378781

/-! ## A032824.P11148772530135206985

`4*A032932(n+1)-(2*A032812(n+1)-A032932(n+1))`
-/

namespace A032824.P11148772530135206985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032932 (n + 1) - (2 * A032812 (n + 1) - A032932 (n + 1))

end

end A032824.P11148772530135206985

/-! ## A032824.P2209521964981952953

`A102487(A032822(n+1)+1)`
-/

namespace A032824.P2209521964981952953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (A032822 (n + 1) + 1).toNat

end

end A032824.P2209521964981952953

/-! ## A032824.P14602436191884909195

`A004277(A032919(n+1))-A032932(n+1)`
-/

namespace A032824.P14602436191884909195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032919 (n + 1)).toNat - A032932 (n + 1)

end

end A032824.P14602436191884909195

/-!
# A032825: Numbers whose set of base-13 digits is {1,4}.

The programs for A032825, there is no canonical definition to state claims against.
-/

/-! ## A032825.P17710074409254212604

`2*A032920(n+1)-A032933(n+1)`
-/

namespace A032825.P17710074409254212604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032920 (n + 1) - A032933 (n + 1)

end

end A032825.P17710074409254212604

/-! ## A032825.P14974325048648354094

`4*A032933(n+1)-A032837(n+1)`
-/

namespace A032825.P14974325048648354094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032933 (n + 1) - A032837 (n + 1)

end

end A032825.P14974325048648354094

/-! ## A032825.P17754728863351886396

`2*A032920(n+1)-(2*A032813(n+1)-A032837(n+1))`
-/

namespace A032825.P17754728863351886396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032920 (n + 1) - (2 * A032813 (n + 1) - A032837 (n + 1))

end

end A032825.P17754728863351886396

/-! ## A032825.P12328885716885973751

`A094823(A032822(n+1))`
-/

namespace A032825.P12328885716885973751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094823 (A032822 (n + 1)).toNat

end

end A032825.P12328885716885973751

/-! ## A032825.P17873789884270320043

`A004277(A032920(n+1))-A032933(n+1)`
-/

namespace A032825.P17873789884270320043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032920 (n + 1)).toNat - A032933 (n + 1)

end

end A032825.P17873789884270320043

/-!
# A032826: Numbers whose set of base-14 digits is {1,4}.

The programs for A032826, there is no canonical definition to state claims against.
-/

/-! ## A032826.P17811653867871379588

`2*A032921(n+1)-A032934(n+1)`
-/

namespace A032826.P17811653867871379588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032921 (n + 1) - A032934 (n + 1)

end

end A032826.P17811653867871379588

/-! ## A032826.P17768239449750873975

`4*A032934(n+1)-A032838(n+1)`
-/

namespace A032826.P17768239449750873975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032934 (n + 1) - A032838 (n + 1)

end

end A032826.P17768239449750873975

/-! ## A032826.P2636899942720816121

`2*A033039(A032928(n+1))-A032934(n+1)`
-/

namespace A032826.P2636899942720816121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033039 (A032928 (n + 1)).toNat - A032934 (n + 1)

end

end A032826.P2636899942720816121

/-! ## A032826.P11406343060673343153

`A004277(A032921(n+1))-A032934(n+1)`
-/

namespace A032826.P11406343060673343153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032921 (n + 1)).toNat - A032934 (n + 1)

end

end A032826.P11406343060673343153

/-! ## A032826.P15041785794102555773

`A008574(A032934(n+1))-A032838(n+1)`
-/

namespace A032826.P15041785794102555773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A032934 (n + 1)).toNat - A032838 (n + 1)

end

end A032826.P15041785794102555773

/-!
# A032827: Numbers whose set of base-15 digits is {1,4}.

The programs for A032827, there is no canonical definition to state claims against.
-/

/-! ## A032827.P15267638397349544378

`2*A032922(n+1)-A032935(n+1)`
-/

namespace A032827.P15267638397349544378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032922 (n + 1) - A032935 (n + 1)

end

end A032827.P15267638397349544378

/-! ## A032827.P5240880682660794688

`4*A032935(n+1)-A032839(n+1)`
-/

namespace A032827.P5240880682660794688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032935 (n + 1) - A032839 (n + 1)

end

end A032827.P5240880682660794688

/-! ## A032827.P16530745475838269318

`2*A032922(n+1)-(2*A032815(n+1)-A032839(n+1))`
-/

namespace A032827.P16530745475838269318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032922 (n + 1) - (2 * A032815 (n + 1) - A032839 (n + 1))

end

end A032827.P16530745475838269318

/-! ## A032827.P9456165363517329228

`A032839(n+1)-A005843(A032815(n+1)-A032922(n+1))`
-/

namespace A032827.P9456165363517329228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032839 (n + 1) - A005843 (A032815 (n + 1) - A032922 (n + 1)).toNat

end

end A032827.P9456165363517329228

/-! ## A032827.P12244888118754014626

`A004277(A032922(n+1))-A032935(n+1)`
-/

namespace A032827.P12244888118754014626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032922 (n + 1)).toNat - A032935 (n + 1)

end

end A032827.P12244888118754014626

/-!
# A032828: Numbers whose set of base-16 digits is {1,4}.

The programs for A032828, there is no canonical definition to state claims against.
-/

/-! ## A032828.P4775963268131900009

`2*A032923(n+1)-A032936(n+1)`
-/

namespace A032828.P4775963268131900009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032923 (n + 1) - A032936 (n + 1)

end

end A032828.P4775963268131900009

/-! ## A032828.P3185662873074893051

`4*A032936(n+1)-A032840(n+1)`
-/

namespace A032828.P3185662873074893051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032936 (n + 1) - A032840 (n + 1)

end

end A032828.P3185662873074893051

/-! ## A032828.P14721779021851856881

`and(A032840(n+1)+A032816(n+1), A032840(n+1))`
-/

namespace A032828.P14721779021851856881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032840 (n + 1) + A032816 (n + 1)) (A032840 (n + 1))

end

end A032828.P14721779021851856881

/-! ## A032828.P16976982374563930588

`A032936(n+1)+and(A032816(n+1), A032936(n+1))`
-/

namespace A032828.P16976982374563930588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032936 (n + 1) + Int.land (A032816 (n + 1)) (A032936 (n + 1))

end

end A032828.P16976982374563930588

/-! ## A032828.P12670121686267490711

`2*A032816(n+1)-A032816(A346306(n+1))`
-/

namespace A032828.P12670121686267490711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032816 (n + 1) - A032816 (A346306 (n + 1)).toNat

end

end A032828.P12670121686267490711

/-! ## A032828.P15218351577449796884

`xor(2*A032923(n+1), A032816(A346306(n+1)))`
-/

namespace A032828.P15218351577449796884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A032923 (n + 1)) (A032816 (A346306 (n + 1)).toNat)

end

end A032828.P15218351577449796884

/-! ## A032828.P7574419592206469372

`A032840(n+1)-A062880(A115637(n))`
-/

namespace A032828.P7574419592206469372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032840 (n + 1) - A062880 (A115637 n).toNat

end

end A032828.P7574419592206469372

/-! ## A032828.P6916035415854422142

`A000695(∑[A115716(n)])`
-/

namespace A032828.P6916035415854422142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032828.P6916035415854422142

/-! ## A032828.P14098068016002719815

`A000695(A032925(n+1))`
-/

namespace A032828.P14098068016002719815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A032925 (n + 1)).toNat

end

end A032828.P14098068016002719815

/-! ## A032828.P12473616804339481065

`A062880(∑[A115716(n)])/2`
-/

namespace A032828.P12473616804339481065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062880 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A032828.P12473616804339481065

/-! ## A032828.P12320903859796065992

`A001196(∑[A115716(n)])/3`
-/

namespace A032828.P12320903859796065992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 3

end

end A032828.P12320903859796065992

/-! ## A032828.P2037945460012169878

`A115637(A374625(n+2)-2)`
-/

namespace A032828.P2037945460012169878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115637 (A374625 (n + 2) - 2).toNat

end

end A032828.P2037945460012169878

/-! ## A032828.P687271323794780747

`A000695(A035327(A374625(n+2)))`
-/

namespace A032828.P687271323794780747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A035327 (A374625 (n + 2)).toNat).toNat

end

end A032828.P687271323794780747

/-!
# A032829: Numbers whose set of base-5 digits is {3,4}.

The programs for A032829, there is no canonical definition to state claims against.
-/

/-! ## A032829.P12511521818261320662

`2*A032805(n+1)-A032926(n+1)`
-/

namespace A032829.P12511521818261320662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032805 (n + 1) - A032926 (n + 1)

end

end A032829.P12511521818261320662

/-! ## A032829.P17460346425328170229

`4*A032926(n+1)-A032817(n+1)`
-/

namespace A032829.P17460346425328170229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032926 (n + 1) - A032817 (n + 1)

end

end A032829.P17460346425328170229

/-! ## A032829.P1181658832542444935

`4*A032926(n+1)-(2*A032912(n+1)-A032926(n+1))`
-/

namespace A032829.P1181658832542444935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032926 (n + 1) - (2 * A032912 (n + 1) - A032926 (n + 1))

end

end A032829.P1181658832542444935

/-! ## A032829.P2376128059966959834

`A032926(A346306(n+1))+A032912(n+1)`
-/

namespace A032829.P2376128059966959834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032926 (A346306 (n + 1)).toNat + A032912 (n + 1)

end

end A032829.P2376128059966959834

/-! ## A032829.P5136825238216233904

`∩[A037339(n+1), A039563(n+1)]`
-/

namespace A032829.P5136825238216233904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032829.P5136825238216233904

/-! ## A032829.P7930879382648854944

`∩[A037346(n+1), A039563(n+1)]`
-/

namespace A032829.P7930879382648854944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032829.P7930879382648854944

/-! ## A032829.P7585996204200244549

`4*A032926(n+1)-A023729(A032911(n+1)+1)`
-/

namespace A032829.P7585996204200244549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032926 (n + 1) - A023729 (A032911 (n + 1) + 1).toNat

end

end A032829.P7585996204200244549

/-! ## A032829.P1365058049601402855

`A023725(A032804(n+1)+1)`
-/

namespace A032829.P1365058049601402855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (A032804 (n + 1) + 1).toNat

end

end A032829.P1365058049601402855

/-! ## A032829.P161046042490072381

`A023729(A032804(n+1)+1)`
-/

namespace A032829.P161046042490072381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (A032804 (n + 1) + 1).toNat

end

end A032829.P161046042490072381

/-! ## A032829.P12856254676293902120

`∩[A023721(n+1), A039563(n+1)]`
-/

namespace A032829.P12856254676293902120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032829.P12856254676293902120

/-! ## A032829.P2010554336382056577

`∩[A023725(n+1), A039563(n+1)]`
-/

namespace A032829.P2010554336382056577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032829.P2010554336382056577

/-! ## A032829.P6633728291964897316

`∩[A023729(n+1), A039563(n+1)]`
-/

namespace A032829.P6633728291964897316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032829.P6633728291964897316

/-! ## A032829.P6826762062325868850

`∩[A037339(n+1), A039008(n+1)]`
-/

namespace A032829.P6826762062325868850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032829.P6826762062325868850

/-! ## A032829.P7948579224442381502

`A023721(2*A032804(n+1)-A032925(n+1))`
-/

namespace A032829.P7948579224442381502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (2 * A032804 (n + 1) - A032925 (n + 1)).toNat

end

end A032829.P7948579224442381502

/-! ## A032829.P11824586385377851601

`A023721(A032804(n+1)+A032804(n+1)-A032925(n+1))`
-/

namespace A032829.P11824586385377851601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (A032804 (n + 1) + (A032804 (n + 1) - A032925 (n + 1))).toNat

end

end A032829.P11824586385377851601

/-!
# A032830: Numbers whose set of base-6 digits is {3,4}.

The programs for A032830, the canonical program `A032830.P14599917088282478471` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032830 has offset 1).

The definition of A032830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032830.P14599917088282478471

`2*A032806(n+1)-A032927(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A032830

/-- `2*A032806(n+1)-A032927(n+1)` -/
def P14599917088282478471.Spec : Prop :=
  ∀ n, P14599917088282478471.a n = A032830 (n + 1)

theorem P14599917088282478471.correct : P14599917088282478471.Spec := by
  intro n
  simp only [A032830, Nat.add_sub_cancel]

end A032830

/-! ## A032830.P5354883503928142270

`4*A032927(n+1)-A032818(n+1)`
-/

namespace A032830.P5354883503928142270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032927 (n + 1) - A032818 (n + 1)

end

end A032830.P5354883503928142270

namespace A032830

/-- `4*A032927(n+1)-A032818(n+1)` -/
def P5354883503928142270.Spec : Prop :=
  ∀ n, P5354883503928142270.a n = A032830 (n + 1)

end A032830

/-! ## A032830.P13778365909028364178

`A147993(n+2)-(A032927(n+1)+1)`
-/

namespace A032830.P13778365909028364178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147993 (n + 2) - (A032927 (n + 1) + 1)

end

end A032830.P13778365909028364178

namespace A032830

/-- `A147993(n+2)-(A032927(n+1)+1)` -/
def P13778365909028364178.Spec : Prop :=
  ∀ n, P13778365909028364178.a n = A032830 (n + 1)

end A032830

/-! ## A032830.P4216462550729395135

`A147993(n+2)-(∑[A147993(A135517(n+1))]+1)`
-/

namespace A032830.P4216462550729395135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147993 (A135517 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147993 (n + 2) - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A032830.P4216462550729395135

namespace A032830

/-- `A147993(n+2)-(∑[A147993(A135517(n+1))]+1)` -/
def P4216462550729395135.Spec : Prop :=
  ∀ n, P4216462550729395135.a n = A032830 (n + 1)

end A032830

/-! ## A032830.P73742167605366232

`A147993(n+2)-(2*A032913(n+1)-A032818(n+1)+1)`
-/

namespace A032830.P73742167605366232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147993 (n + 2) - (2 * A032913 (n + 1) - A032818 (n + 1) + 1)

end

end A032830.P73742167605366232

namespace A032830

/-- `A147993(n+2)-(2*A032913(n+1)-A032818(n+1)+1)` -/
def P73742167605366232.Spec : Prop :=
  ∀ n, P73742167605366232.a n = A032830 (n + 1)

end A032830

/-! ## A032830.P1695638215598004

`A032927(A346306(n+1))+A032913(n+1)`
-/

namespace A032830.P1695638215598004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032927 (A346306 (n + 1)).toNat + A032913 (n + 1)

end

end A032830.P1695638215598004

namespace A032830

/-- `A032927(A346306(n+1))+A032913(n+1)` -/
def P1695638215598004.Spec : Prop :=
  ∀ n, P1695638215598004.a n = A032830 (n + 1)

end A032830

/-! ## A032830.P18111415336976061278

`A037460(2*A032804(n+1))/2`
-/

namespace A032830.P18111415336976061278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037460 (2 * A032804 (n + 1)).toNat : ℚ) / 2

end

end A032830.P18111415336976061278

namespace A032830

/-- `A037460(2*A032804(n+1))/2` -/
def P18111415336976061278.Spec : Prop :=
  ∀ n, P18111415336976061278.a n = (A032830 (n + 1) : ℚ)

end A032830

/-! ## A032830.P14327686890811345547

`∩[A037340(n+1), A039579(n+1)]`
-/

namespace A032830.P14327686890811345547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032830.P14327686890811345547

namespace A032830

/-- `∩[A037340(n+1), A039579(n+1)]` -/
def P14327686890811345547.Spec : Prop :=
  ∀ n, (P14327686890811345547.a n : ℤ) = A032830 (n + 1)

end A032830

/-! ## A032830.P13480242327917742107

`∩[A037340(n+1), A039585(n+1)]`
-/

namespace A032830.P13480242327917742107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032830.P13480242327917742107

namespace A032830

/-- `∩[A037340(n+1), A039585(n+1)]` -/
def P13480242327917742107.Spec : Prop :=
  ∀ n, (P13480242327917742107.a n : ℤ) = A032830 (n + 1)

end A032830

/-! ## A032830.P5303933527682912210

`∩[A037347(n+1), A039579(n+1)]`
-/

namespace A032830.P5303933527682912210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032830.P5303933527682912210

namespace A032830

/-- `∩[A037347(n+1), A039579(n+1)]` -/
def P5303933527682912210.Spec : Prop :=
  ∀ n, (P5303933527682912210.a n : ℤ) = A032830 (n + 1)

end A032830

/-!
# A032831: Numbers whose set of base-7 digits is {3,4}.

The programs for A032831, there is no canonical definition to state claims against.
-/

/-! ## A032831.P11929160531715099144

`2*A032807(n+1)-A032928(n+1)`
-/

namespace A032831.P11929160531715099144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032807 (n + 1) - A032928 (n + 1)

end

end A032831.P11929160531715099144

/-! ## A032831.P2255868918457423013

`4*A032928(n+1)-A032819(n+1)`
-/

namespace A032831.P2255868918457423013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032928 (n + 1) - A032819 (n + 1)

end

end A032831.P2255868918457423013

/-! ## A032831.P13060071753229074236

`4*A032928(n+1)-(2*A032914(n+1)-A032928(n+1))`
-/

namespace A032831.P13060071753229074236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032928 (n + 1) - (2 * A032914 (n + 1) - A032928 (n + 1))

end

end A032831.P13060071753229074236

/-! ## A032831.P1371478495561179302

`A032928(A346306(n+1))+A032914(n+1)`
-/

namespace A032831.P1371478495561179302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032928 (A346306 (n + 1)).toNat + A032914 (n + 1)

end

end A032831.P1371478495561179302

/-! ## A032831.P1135627138335442198

`A033033(A032924(n+1))+A032928(A346306(n+1))`
-/

namespace A032831.P1135627138335442198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033033 (A032924 (n + 1)).toNat + A032928 (A346306 (n + 1)).toNat

end

end A032831.P1135627138335442198

/-! ## A032831.P12350005336581699884

`A037461(A032911(n+1))+A032928(A346306(n+1))`
-/

namespace A032831.P12350005336581699884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (A032911 (n + 1)).toNat + A032928 (A346306 (n + 1)).toNat

end

end A032831.P12350005336581699884

/-! ## A032831.P9580889697563481460

`A037341(A032805(n+1))`
-/

namespace A032831.P9580889697563481460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037341 (A032805 (n + 1)).toNat

end

end A032831.P9580889697563481460

/-! ## A032831.P6223880836444853979

`4*A032928(n+1)-A037466(A032817(n+1))`
-/

namespace A032831.P6223880836444853979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032928 (n + 1) - A037466 (A032817 (n + 1)).toNat

end

end A032831.P6223880836444853979

/-! ## A032831.P2752587996308741430

`4*A032928(n+1)-A020657(A032818(n+1)+1)`
-/

namespace A032831.P2752587996308741430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032928 (n + 1) - A020657 (A032818 (n + 1) + 1).toNat

end

end A032831.P2752587996308741430

/-! ## A032831.P2911877521170686123

`A020658(A032830(n+1))`
-/

namespace A032831.P2911877521170686123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (A032830 (n + 1)).toNat

end

end A032831.P2911877521170686123

/-!
# A032832: Numbers whose set of base-8 digits is {3,4}.

The programs for A032832, there is no canonical definition to state claims against.
-/

/-! ## A032832.P2575494116095359974

`2*A032808(n+1)-A032929(n+1)`
-/

namespace A032832.P2575494116095359974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032808 (n + 1) - A032929 (n + 1)

end

end A032832.P2575494116095359974

/-! ## A032832.P12147207938025162239

`4*A032929(n+1)-A032820(n+1)`
-/

namespace A032832.P12147207938025162239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032929 (n + 1) - A032820 (n + 1)

end

end A032832.P12147207938025162239

/-! ## A032832.P2368597907744320520

`xor(2*A032915(n+1), A032929(n+1))`
-/

namespace A032832.P2368597907744320520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A032915 (n + 1)) (A032929 (n + 1))

end

end A032832.P2368597907744320520

/-! ## A032832.P10489759110844478198

`xor(A032915(n+1)+A032820(n+1), A032915(n+1))`
-/

namespace A032832.P10489759110844478198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A032915 (n + 1) + A032820 (n + 1)) (A032915 (n + 1))

end

end A032832.P10489759110844478198

/-! ## A032832.P14783727678620842884

`or(A032820(n+1), A308496(A032804(n+1)))`
-/

namespace A032832.P14783727678620842884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032820 (n + 1)) (A308496 (A032804 (n + 1)).toNat)

end

end A032832.P14783727678620842884

/-! ## A032832.P75828511551028387

`A037342(A032806(n+1))`
-/

namespace A032832.P75828511551028387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037342 (A032806 (n + 1)).toNat

end

end A032832.P75828511551028387

/-! ## A032832.P14641794503318822794

`A037467(A032829(n+1))`
-/

namespace A032832.P14641794503318822794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (A032829 (n + 1)).toNat

end

end A032832.P14641794503318822794

/-! ## A032832.P2350497571488083503

`A037471(A032830(n+1))`
-/

namespace A032832.P2350497571488083503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (A032830 (n + 1)).toNat

end

end A032832.P2350497571488083503

/-! ## A032832.P10376232316486089798

`or(A005843(A032929(n+1)), A032820(n+1))`
-/

namespace A032832.P10376232316486089798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005843 (A032929 (n + 1)).toNat) (A032820 (n + 1))

end

end A032832.P10376232316486089798

/-!
# A032833: Numbers whose set of base-9 digits is {3,4}.

The programs for A032833, there is no canonical definition to state claims against.
-/

/-! ## A032833.P8521581732769721771

`2*A032809(n+1)-A032930(n+1)`
-/

namespace A032833.P8521581732769721771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032809 (n + 1) - A032930 (n + 1)

end

end A032833.P8521581732769721771

/-! ## A032833.P2445913033546158139

`4*A032930(n+1)-A032821(n+1)`
-/

namespace A032833.P2445913033546158139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032930 (n + 1) - A032821 (n + 1)

end

end A032833.P2445913033546158139

/-! ## A032833.P17846777061188711212

`A032930(A346306(n+1))+A032916(n+1)`
-/

namespace A032833.P17846777061188711212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032930 (A346306 (n + 1)).toNat + A032916 (n + 1)

end

end A032833.P17846777061188711212

/-! ## A032833.P11596769610508710853

`A032930(A346306(n+1))+(A032930(n+1)+A032821(n+1))/2`
-/

namespace A032833.P11596769610508710853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032930 (A346306 (n + 1)).toNat : ℚ) + (A032930 (n + 1) + A032821 (n + 1) : ℚ) / 2

end

end A032833.P11596769610508710853

/-! ## A032833.P715129048208889201

`A338086(A032924(n+1))-A032821(n+1)`
-/

namespace A032833.P715129048208889201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338086 (A032924 (n + 1)).toNat - A032821 (n + 1)

end

end A032833.P715129048208889201

/-! ## A032833.P1370097183771632813

`A319497(A032924(n+1))+A032930(A346306(n+1))`
-/

namespace A032833.P1370097183771632813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319497 (A032924 (n + 1)).toNat + A032930 (A346306 (n + 1)).toNat

end

end A032833.P1370097183771632813

/-! ## A032833.P454677829540956040

`A338086(A032924(n+1))-A003278(A032911(n+1))`
-/

namespace A032833.P454677829540956040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338086 (A032924 (n + 1)).toNat - A003278 (A032911 (n + 1)).toNat

end

end A032833.P454677829540956040

/-! ## A032833.P15819685696637572855

`A004793(A032804(n+1))`
-/

namespace A032833.P15819685696637572855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (A032804 (n + 1)).toNat

end

end A032833.P15819685696637572855

/-! ## A032833.P9928342437099644642

`A005836(A032804(n+1)+1)`
-/

namespace A032833.P9928342437099644642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A032804 (n + 1) + 1).toNat

end

end A032833.P9928342437099644642

/-! ## A032833.P4159905521719989298

`A037350(A032927(n+1))`
-/

namespace A032833.P4159905521719989298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037350 (A032927 (n + 1)).toNat

end

end A032833.P4159905521719989298

/-!
# A032834: Numbers with digits 3 and 4 only.

The programs for A032834, there is no canonical definition to state claims against.
-/

/-! ## A032834.P5670912099542955886

`A032810(n+1)+A256077(n+1)`
-/

namespace A032834.P5670912099542955886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1) + A256077 (n + 1)

end

end A032834.P5670912099542955886

/-! ## A032834.P1761393112119193626

`A007931(n+1)+A002276(A000523(n+2))`
-/

namespace A032834.P1761393112119193626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + A002276 (A000523 (n + 2)).toNat

end

end A032834.P1761393112119193626

/-! ## A032834.P7484955003074937405

`A284635(n+1)/2`
-/

namespace A032834.P7484955003074937405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284635 (n + 1) : ℚ) / 2

end

end A032834.P7484955003074937405

/-! ## A032834.P5322769219914678541

`A284634(n+1)-A007931(n+1)`
-/

namespace A032834.P5322769219914678541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284634 (n + 1) - A007931 (n + 1)

end

end A032834.P5322769219914678541

/-! ## A032834.P11781653007886802055

`A284380(n+1)-A032810(n+1)`
-/

namespace A032834.P11781653007886802055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284380 (n + 1) - A032810 (n + 1)

end

end A032834.P11781653007886802055

/-! ## A032834.P8022256614094742855

`A284972(n+1)-A032822(n+1)`
-/

namespace A032834.P8022256614094742855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284972 (n + 1) - A032822 (n + 1)

end

end A032834.P8022256614094742855

/-! ## A032834.P15712218345325208034

`A284971(n+1)-A032917(n+1)`
-/

namespace A032834.P15712218345325208034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284971 (n + 1) - A032917 (n + 1)

end

end A032834.P15712218345325208034

/-! ## A032834.P2543597564390202490

`A284382(n+1)-A072961(n+1)`
-/

namespace A032834.P2543597564390202490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1) - A072961 (n + 1)

end

end A032834.P2543597564390202490

/-! ## A032834.P3384012625802454151

`A256290(n+1)-A256077(n+1)`
-/

namespace A032834.P3384012625802454151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) - A256077 (n + 1)

end

end A032834.P3384012625802454151

/-! ## A032834.P1188395679787933885

`A285011(n+1)-A256290(n+1)`
-/

namespace A032834.P1188395679787933885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285011 (n + 1) - A256290 (n + 1)

end

end A032834.P1188395679787933885

/-! ## A032834.P14675321603959422045

`A284973(n+1)-A276037(n+1)`
-/

namespace A032834.P14675321603959422045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1) - A276037 (n + 1)

end

end A032834.P14675321603959422045

/-! ## A032834.P17832357172435356740

`A284636(n+1)-A284379(n+1)`
-/

namespace A032834.P17832357172435356740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284636 (n + 1) - A284379 (n + 1)

end

end A032834.P17832357172435356740

/-! ## A032834.P6914652181001552571

`A284381(n+1)-A284920(n+1)`
-/

namespace A032834.P6914652181001552571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284381 (n + 1) - A284920 (n + 1)

end

end A032834.P6914652181001552571

/-! ## A032834.P12415678775287186603

`A007931(n+1)+2*A256077(n+1)`
-/

namespace A032834.P12415678775287186603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + 2 * A256077 (n + 1)

end

end A032834.P12415678775287186603

/-! ## A032834.P2182958487447734506

`2*A032810(n+1)-A007931(n+1)`
-/

namespace A032834.P2182958487447734506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032810 (n + 1) - A007931 (n + 1)

end

end A032834.P2182958487447734506

/-! ## A032834.P2811875713008883523

`(A256291(n+1)+A007931(n+1))/2`
-/

namespace A032834.P2811875713008883523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256291 (n + 1) + A007931 (n + 1) : ℚ) / 2

end

end A032834.P2811875713008883523

/-! ## A032834.P11001363093858593108

`(A256290(n+1)+A032810(n+1))/2`
-/

namespace A032834.P11001363093858593108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256290 (n + 1) + A032810 (n + 1) : ℚ) / 2

end

end A032834.P11001363093858593108

/-! ## A032834.P11320318511750722672

`A284381(n+1)-2*A007931(n+1)`
-/

namespace A032834.P11320318511750722672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284381 (n + 1) - 2 * A007931 (n + 1)

end

end A032834.P11320318511750722672

/-! ## A032834.P4513224018162522390

`2*A284920(n+1)-A032822(n+1)`
-/

namespace A032834.P4513224018162522390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284920 (n + 1) - A032822 (n + 1)

end

end A032834.P4513224018162522390

/-! ## A032834.P4687251200772275095

`A256291(n+1)-2*A256077(n+1)`
-/

namespace A032834.P4687251200772275095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256291 (n + 1) - 2 * A256077 (n + 1)

end

end A032834.P4687251200772275095

/-!
# A032835: Numbers whose set of base-11 digits is {3,4}.

The programs for A032835, there is no canonical definition to state claims against.
-/

/-! ## A032835.P17093437871182636247

`2*A032811(n+1)-A032931(n+1)`
-/

namespace A032835.P17093437871182636247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032811 (n + 1) - A032931 (n + 1)

end

end A032835.P17093437871182636247

/-! ## A032835.P7410797970072760942

`4*A032931(n+1)-A032823(n+1)`
-/

namespace A032835.P7410797970072760942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032931 (n + 1) - A032823 (n + 1)

end

end A032835.P7410797970072760942

/-! ## A032835.P5012585678911170292

`2*(3*A032931(n+1)-A032918(n+1))-A032931(n+1)`
-/

namespace A032835.P5012585678911170292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A032931 (n + 1) - A032918 (n + 1)) - A032931 (n + 1)

end

end A032835.P5012585678911170292

/-! ## A032835.P10042245651444143541

`A171397(A032834(n+1))`
-/

namespace A032835.P10042245651444143541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A032834 (n + 1)).toNat

end

end A032835.P10042245651444143541

/-! ## A032835.P5817799665200397165

`A004277(A032811(n+1))-A032931(n+1)`
-/

namespace A032835.P5817799665200397165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032811 (n + 1)).toNat - A032931 (n + 1)

end

end A032835.P5817799665200397165

/-!
# A032836: Numbers whose set of base-12 digits is {3,4}.

The programs for A032836, there is no canonical definition to state claims against.
-/

/-! ## A032836.P9699027378334044215

`2*A032812(n+1)-A032932(n+1)`
-/

namespace A032836.P9699027378334044215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032812 (n + 1) - A032932 (n + 1)

end

end A032836.P9699027378334044215

/-! ## A032836.P10743210065160727652

`4*A032932(n+1)-A032824(n+1)`
-/

namespace A032836.P10743210065160727652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032932 (n + 1) - A032824 (n + 1)

end

end A032836.P10743210065160727652

/-! ## A032836.P393582895934984790

`4*A032932(n+1)-(2*A032919(n+1)-A032932(n+1))`
-/

namespace A032836.P393582895934984790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032932 (n + 1) - (2 * A032919 (n + 1) - A032932 (n + 1))

end

end A032836.P393582895934984790

/-! ## A032836.P6156086028533003250

`A102487(A032834(n+1)+1)`
-/

namespace A032836.P6156086028533003250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (A032834 (n + 1) + 1).toNat

end

end A032836.P6156086028533003250

/-! ## A032836.P10981643774056043613

`A004277(A032812(n+1))-A032932(n+1)`
-/

namespace A032836.P10981643774056043613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032812 (n + 1)).toNat - A032932 (n + 1)

end

end A032836.P10981643774056043613

/-!
# A032837: Numbers whose set of base-13 digits is {3,4}.

The programs for A032837, there is no canonical definition to state claims against.
-/

/-! ## A032837.P2200338346255499286

`2*A032813(n+1)-A032933(n+1)`
-/

namespace A032837.P2200338346255499286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032813 (n + 1) - A032933 (n + 1)

end

end A032837.P2200338346255499286

/-! ## A032837.P7680671989554570398

`4*A032933(n+1)-A032825(n+1)`
-/

namespace A032837.P7680671989554570398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032933 (n + 1) - A032825 (n + 1)

end

end A032837.P7680671989554570398

/-! ## A032837.P6753726185375961932

`2*A032813(n+1)-(2*A032920(n+1)-A032825(n+1))`
-/

namespace A032837.P6753726185375961932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032813 (n + 1) - (2 * A032920 (n + 1) - A032825 (n + 1))

end

end A032837.P6753726185375961932

/-! ## A032837.P11204119128626054695

`A094823(A032834(n+1))`
-/

namespace A032837.P11204119128626054695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094823 (A032834 (n + 1)).toNat

end

end A032837.P11204119128626054695

/-! ## A032837.P3373364047028070548

`A004277(A032813(n+1))-A032933(n+1)`
-/

namespace A032837.P3373364047028070548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032813 (n + 1)).toNat - A032933 (n + 1)

end

end A032837.P3373364047028070548

/-!
# A032838: Numbers whose set of base-14 digits is {3,4}.

The programs for A032838, there is no canonical definition to state claims against.
-/

/-! ## A032838.P13028284209851801383

`2*A032814(n+1)-A032934(n+1)`
-/

namespace A032838.P13028284209851801383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032814 (n + 1) - A032934 (n + 1)

end

end A032838.P13028284209851801383

/-! ## A032838.P9667612904202218689

`4*A032934(n+1)-A032826(n+1)`
-/

namespace A032838.P9667612904202218689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032934 (n + 1) - A032826 (n + 1)

end

end A032838.P9667612904202218689

/-! ## A032838.P5812166508583752301

`A004277(A032814(n+1))-A032934(n+1)`
-/

namespace A032838.P5812166508583752301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032814 (n + 1)).toNat - A032934 (n + 1)

end

end A032838.P5812166508583752301

/-! ## A032838.P16208294168766622088

`A008574(A032934(n+1))-A032826(n+1)`
-/

namespace A032838.P16208294168766622088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A032934 (n + 1)).toNat - A032826 (n + 1)

end

end A032838.P16208294168766622088

/-! ## A032838.P7782193851663501191

`A004277(A032814(n+1))-(2*A032921(n+1)-A032826(n+1))`
-/

namespace A032838.P7782193851663501191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032814 (n + 1)).toNat - (2 * A032921 (n + 1) - A032826 (n + 1))

end

end A032838.P7782193851663501191

/-!
# A032839: Numbers whose set of base-15 digits is {3,4}.

The programs for A032839, there is no canonical definition to state claims against.
-/

/-! ## A032839.P18152187960753827515

`2*A032815(n+1)-A032935(n+1)`
-/

namespace A032839.P18152187960753827515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032815 (n + 1) - A032935 (n + 1)

end

end A032839.P18152187960753827515

/-! ## A032839.P8932906093014694835

`4*A032935(n+1)-A032827(n+1)`
-/

namespace A032839.P8932906093014694835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032935 (n + 1) - A032827 (n + 1)

end

end A032839.P8932906093014694835

/-! ## A032839.P7694410779052313895

`2*A032815(n+1)-(2*A032922(n+1)-A032827(n+1))`
-/

namespace A032839.P7694410779052313895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032815 (n + 1) - (2 * A032922 (n + 1) - A032827 (n + 1))

end

end A032839.P7694410779052313895

/-! ## A032839.P13908178012851338626

`A032935(n+1)+A004277(A032815(n+1)-A032935(n+1))`
-/

namespace A032839.P13908178012851338626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032935 (n + 1) + A004277 (A032815 (n + 1) - A032935 (n + 1)).toNat

end

end A032839.P13908178012851338626

/-! ## A032839.P14672493887696098238

`A004277(A032815(n+1))-A032935(n+1)`
-/

namespace A032839.P14672493887696098238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032815 (n + 1)).toNat - A032935 (n + 1)

end

end A032839.P14672493887696098238

/-!
# A032840: Numbers whose set of base-16 digits is {3,4}.

The programs for A032840, there is no canonical definition to state claims against.
-/

/-! ## A032840.P1517758187134349282

`2*A032816(n+1)-A032936(n+1)`
-/

namespace A032840.P1517758187134349282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032816 (n + 1) - A032936 (n + 1)

end

end A032840.P1517758187134349282

/-! ## A032840.P130494531083065339

`4*A032936(n+1)-A032828(n+1)`
-/

namespace A032840.P130494531083065339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032936 (n + 1) - A032828 (n + 1)

end

end A032840.P130494531083065339

/-! ## A032840.P2997732939979061160

`xor(2*A032923(n+1), A032936(n+1))`
-/

namespace A032840.P2997732939979061160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A032923 (n + 1)) (A032936 (n + 1))

end

end A032840.P2997732939979061160

/-! ## A032840.P17811380941703838985

`xor(A032923(n+1)+A032828(n+1), A032923(n+1))`
-/

namespace A032840.P17811380941703838985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A032923 (n + 1) + A032828 (n + 1)) (A032923 (n + 1))

end

end A032840.P17811380941703838985

/-! ## A032840.P5008703600463904534

`A032936(A346306(n+1))+A032923(n+1)`
-/

namespace A032840.P5008703600463904534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032936 (A346306 (n + 1)).toNat + A032923 (n + 1)

end

end A032840.P5008703600463904534

/-! ## A032840.P313560283583507603

`A062880(A115637(n))+A032828(n+1)`
-/

namespace A032840.P313560283583507603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 (A115637 n).toNat + A032828 (n + 1)

end

end A032840.P313560283583507603

/-!
# A032841: Numbers whose base-3 representation Sum_{i=0..m} d(i)*3^i has d(m) < d(m-1) > d(m-2) < ...

The programs for A032841, there is no canonical definition to state claims against.
-/

/-! ## A032841.P17404424510709365415

`∩[A032850(n+1), A043089(n)]`
-/

namespace A032841.P17404424510709365415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032841.P17404424510709365415

/-! ## A032841.P8402834214337865726

`∩[A031941(n+1), A032850(n+1)]`
-/

namespace A032841.P8402834214337865726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032841.P8402834214337865726

/-!
# A032842: Numbers whose base-4 representation Sum_{i=0..m} d(i)*4^i has d(m) < d(m-1) > d(m-2) < ...

The programs for A032842, there is no canonical definition to state claims against.
-/

/-! ## A032842.P15582319208676126237

`∩[A032851(n+1), A043090(n)]`
-/

namespace A032842.P15582319208676126237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032842.P15582319208676126237

/-! ## A032842.P14788709577322720094

`∩[A031942(n+1), A032851(n+1)]`
-/

namespace A032842.P14788709577322720094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032842.P14788709577322720094

/-!
# A032843: Numbers whose base-5 representation Sum_{i=0..m} d(i)*5^i has d(m) < d(m-1) > d(m-2) < ...

The programs for A032843, there is no canonical definition to state claims against.
-/

/-! ## A032843.P17323529113487000863

`∩[A032852(n+1), A043091(n)]`
-/

namespace A032843.P17323529113487000863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032843.P17323529113487000863

/-! ## A032843.P10309954300995826172

`∩[A031943(n+1), A032852(n+1)]`
-/

namespace A032843.P10309954300995826172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032843.P10309954300995826172

/-! ## A032843.P11324763056923650765

`eq[A015070(n), A046269(A033182(n))]`
-/

namespace A032843.P11324763056923650765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046269 (A033182 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032843.P11324763056923650765

/-! ## A032843.P13381188306708568186

`eq[A033182(n)*A033420(n+1), A033182(n)²]`
-/

namespace A032843.P13381188306708568186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 n * A033420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032843.P13381188306708568186

/-! ## A032843.P17661653590100983886

`eq[A033182(n)*A051513(n+1), A033182(n)²]`
-/

namespace A032843.P17661653590100983886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 n * A051513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032843.P17661653590100983886

/-!
# A032844: Numbers whose base-6 representation Sum_{i=0..m} d(i)*6^i has d(m) < d(m-1) > d(m-2) < ...

The programs for A032844, there is no canonical definition to state claims against.
-/

/-! ## A032844.P6894529704765067481

`∩[A032853(n+1), A043092(n+1)]`
-/

namespace A032844.P6894529704765067481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032844.P6894529704765067481

/-! ## A032844.P8011012689690459780

`eq[A017847(n), A100921(A017847(n))]`
-/

namespace A032844.P8011012689690459780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100921 (A017847 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032844.P8011012689690459780

/-! ## A032844.P17529138473224407482

`eq[A017887(n)!, A017867(A017847(n))]`
-/

namespace A032844.P17529138473224407482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A017887 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 (A017847 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032844.P17529138473224407482

/-! ## A032844.P2442406908310596682

`lt[A053393(A017847(n)), A160870(n+3)]`
-/

namespace A032844.P2442406908310596682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053393 (A017847 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032844.P2442406908310596682

/-! ## A032844.P13382136123313149409

`eq[0, A027387(A017847(n))]`
-/

namespace A032844.P13382136123313149409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027387 (A017847 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032844.P13382136123313149409

/-!
# A032845: Numbers whose base-7 representation Sum_{i=0..m} d(i)*7^i has d(m) < d(m-1) > d(m-2) < ...

The programs for A032845, there is no canonical definition to state claims against.
-/

/-! ## A032845.P6111476156576412693

`∩[A032854(n+1), A043093(n)]`
-/

namespace A032845.P6111476156576412693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032845.P6111476156576412693

/-! ## A032845.P11538276765624379909

`eq[A017857(n), A306758(A002260(n+1))]`
-/

namespace A032845.P11538276765624379909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017857 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306758 (A002260 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032845.P11538276765624379909

/-! ## A032845.P10494786496478993033

`eq[A017857(n), A306758(A131818(n+1))]`
-/

namespace A032845.P10494786496478993033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017857 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306758 (A131818 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032845.P10494786496478993033

/-! ## A032845.P17446675029437190799

`lt[A178334(A306756(n)), A178334(2*(n+2))]`
-/

namespace A032845.P17446675029437190799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A306756 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032845.P17446675029437190799

/-! ## A032845.P5490261223590060833

`eq[0, A004184(A017857(n))]`
-/

namespace A032845.P5490261223590060833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A017857 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032845.P5490261223590060833

/-!
# A032846: Numbers whose base-8 representation Sum_{i=0..m} d(i)*8^i has d(m) < d(m-1) > d(m-2) < ...

The programs for A032846, there is no canonical definition to state claims against.
-/

/-! ## A032846.P4780976738636798210

`∩[A032855(n+1), A043094(n)]`
-/

namespace A032846.P4780976738636798210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032846.P4780976738636798210

/-! ## A032846.P3092773809091712241

`eq[2*A341881(n), A017867(n)]`
-/

namespace A032846.P3092773809091712241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341881 (n + 32)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032846.P3092773809091712241

/-! ## A032846.P9841053224706781246

`eq[5*A229659(n), A017867(n)]`
-/

namespace A032846.P9841053224706781246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A229659 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032846.P9841053224706781246

/-! ## A032846.P5139674176618259909

`eq[A078771(round(acot(n)+n)), A127843(n+1)]`
-/

namespace A032846.P5139674176618259909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127843 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032846.P5139674176618259909

/-! ## A032846.P18227864276792566176

`eq[A017847(A080100(n)), A017867(n)]`
-/

namespace A032846.P18227864276792566176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (A080100 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032846.P18227864276792566176

/-!
# A032847: Numbers whose base-9 representation Sum_{i=0..m} d(i)*9^i has d(m) < d(m-1) > d(m-2) < ...

The programs for A032847, there is no canonical definition to state claims against.
-/

/-! ## A032847.P10347630574215363314

`∩[A032856(n+1), A043095(n+1)]`
-/

namespace A032847.P10347630574215363314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032847.P10347630574215363314

/-! ## A032847.P16717185702047864656

`eq[1, A008723(A017877(n))]`
-/

namespace A032847.P16717185702047864656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008723 (A017877 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032847.P16717185702047864656

/-! ## A032847.P2368333797105204311

`eq[A025439(n), A056960(A017877(n))]`
-/

namespace A032847.P2368333797105204311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 (A017877 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032847.P2368333797105204311

/-! ## A032847.P6410648794493908693

`eq[A168036(A306758(n)), A306758(n)]`
-/

namespace A032847.P6410648794493908693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (A306758 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306758 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032847.P6410648794493908693

/-! ## A032847.P11193887020795926595

`eq[A127844(n+1), A306758(A007953(n))]`
-/

namespace A032847.P11193887020795926595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306758 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032847.P11193887020795926595

/-!
# A032848: Numbers whose base-10 representation Sum_{i=0..m} d(i)*10^i has d(m) < d(m-1) > d(m-2) < ...

The programs for A032848, there is no canonical definition to state claims against.
-/

/-! ## A032848.P9334464446199428965

`∩[A032857(n+1), A043096(n+1)]`
-/

namespace A032848.P9334464446199428965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032848.P9334464446199428965

/-! ## A032848.P7616630824012861830

`record[A321801(A032857(n+1))]`
-/

namespace A032848.P7616630824012861830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 (A032857 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032848.P7616630824012861830

/-! ## A032848.P9050436340789109541

`filter[A032857(n+1), A196368(#)]`
-/

namespace A032848.P9050436340789109541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A032848.P9050436340789109541

/-! ## A032848.P10357269938778902157

`∩[A032857(n+1), A355301(n+1)]`
-/

namespace A032848.P10357269938778902157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032848.P10357269938778902157

/-! ## A032848.P479366805325654508

`eq[A017887(n), A036496(A017887(n))]`
-/

namespace A032848.P479366805325654508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036496 (A017887 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032848.P479366805325654508

/-!
# A032849: Numbers whose base-2 representation Sum_{i=0..m} d(i)*2^i has d(m) <= d(m-1) >= d(m-2) <= ...

The programs for A032849, the canonical program `A032849.P8157283972770785231` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032849 has offset 1).

The definition of A032849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032849.P8157283972770785231

`A038572(or(1, A160530(n+1)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A032849

/-- `A038572(or(1, A160530(n+1)))` -/
def P8157283972770785231.Spec : Prop :=
  ∀ n, P8157283972770785231.a n = A032849 (n + 1)

theorem P8157283972770785231.correct : P8157283972770785231.Spec := by
  intro n
  simp only [A032849, Nat.add_sub_cancel]

end A032849

/-! ## A032849.P11050715024050785318

`eq[1, A343029(A280995(n))]`
-/

namespace A032849.P11050715024050785318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (A280995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032849.P11050715024050785318

namespace A032849

/-- `eq[1, A343029(A280995(n))]` -/
def P11050715024050785318.Spec : Prop :=
  ∀ n, (P11050715024050785318.a n : ℤ) = A032849 (n + 1)

end A032849

/-! ## A032849.P1741169803492635193

`eq[A000007(n), A292274(A003188(n))]`
-/

namespace A032849.P1741169803492635193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292274 (A003188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032849.P1741169803492635193

namespace A032849

/-- `eq[A000007(n), A292274(A003188(n))]` -/
def P1741169803492635193.Spec : Prop :=
  ∀ n, (P1741169803492635193.a n : ℤ) = A032849 (n + 1)

end A032849

/-! ## A032849.P4063649831617570400

`record[A008486(n)-2*n-A292274(A003188(n))]`
-/

namespace A032849.P4063649831617570400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - (2 * n : ℤ) - A292274 (A003188 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032849.P4063649831617570400

namespace A032849

/-- `record[A008486(n)-2*n-A292274(A003188(n))]` -/
def P4063649831617570400.Spec : Prop :=
  ∀ n, P4063649831617570400.a n = A032849 (n + 1)

end A032849

/-! ## A032849.P11291541257181705665

`eq[1, A272604(A165199(n))]`
-/

namespace A032849.P11291541257181705665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A165199 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032849.P11291541257181705665

namespace A032849

/-- `eq[1, A272604(A165199(n))]` -/
def P11291541257181705665.Spec : Prop :=
  ∀ n, (P11291541257181705665.a n : ℤ) = A032849 (n + 1)

end A032849

/-! ## A032849.P7161099460793606171

`eq[A000007(n), A014081(A165199(n))]`
-/

namespace A032849.P7161099460793606171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A165199 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032849.P7161099460793606171

namespace A032849

/-- `eq[A000007(n), A014081(A165199(n))]` -/
def P7161099460793606171.Spec : Prop :=
  ∀ n, (P7161099460793606171.a n : ℤ) = A032849 (n + 1)

end A032849

/-! ## A032849.P5929300384600292412

`eq[A000038(n), A014081(A165199(n))]`
-/

namespace A032849.P5929300384600292412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A165199 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032849.P5929300384600292412

namespace A032849

/-- `eq[A000038(n), A014081(A165199(n))]` -/
def P5929300384600292412.Spec : Prop :=
  ∀ n, (P5929300384600292412.a n : ℤ) = A032849 (n + 1)

end A032849

/-!
# A032850: Numbers whose base-3 representation Sum_{i=0..m} d(i)*3^i has d(m) <= d(m-1) >= d(m-2) <= ...

The programs for A032850, there is no canonical definition to state claims against.
-/

/-! ## A032850.P787943553812408928

`A244321(A004277(n)-A185284(3*n+1))`
-/

namespace A032850.P787943553812408928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244321 (A004277 n - A185284 (3 * n + 1)).toNat

end

end A032850.P787943553812408928

/-! ## A032850.P754464554945859870

`record[gcd(A203476(n+1), A306806(n+1))]`
-/

namespace A032850.P754464554945859870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A203476 (n + 1)) (A306806 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032850.P754464554945859870

/-! ## A032850.P9352769490882982704

`lt[A355770(3*n+2), A151672(A304880(n))]`
-/

namespace A032850.P9352769490882982704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355770 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151672 (A304880 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032850.P9352769490882982704

/-!
# A032851: Numbers whose base-4 representation Sum_{i=0..m} d(i)*4^i has d(m) <= d(m-1) >= d(m-2) <= ...

The programs for A032851, there is no canonical definition to state claims against.
-/

/-! ## A032851.P6598737346421499946

`∑[A211098(A005428(n)+1)]`
-/

namespace A032851.P6598737346421499946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211098 (A005428 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032851.P6598737346421499946

/-! ## A032851.P5450768795413694967

`lt[A285340(n), A285328(A285281(n+4))]`
-/

namespace A032851.P5450768795413694967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285340 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285328 (A285281 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032851.P5450768795413694967

/-! ## A032851.P12267349164382050997

`lt[A374700(A302569(2*n+1)), A283464(n+1)]`
-/

namespace A032851.P12267349164382050997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374700 (A302569 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032851.P12267349164382050997

/-!
# A032852: Numbers whose base-5 representation Sum_{i=0..m} d(i)*5^i has d(m) <= d(m-1) >= d(m-2) <= ...

The programs for A032852, there is no canonical definition to state claims against.
-/

/-! ## A032852.P4562750395280439982

`eq[A030341(A210632(n)), A109702(n)]`
-/

namespace A032852.P4562750395280439982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (A210632 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109702 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032852.P4562750395280439982

/-! ## A032852.P1484094237432031690

`eq[A109702(n), A210632(n)]`
-/

namespace A032852.P1484094237432031690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109702 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032852.P1484094237432031690

/-! ## A032852.P12189280729441247530

`eq[A034479(n+1), A109702(n)]`
-/

namespace A032852.P12189280729441247530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109702 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032852.P12189280729441247530

/-! ## A032852.P2383759133839358113

`eq[A011730(A102413(n)), A025896(n)]`
-/

namespace A032852.P2383759133839358113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011730 (A102413 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025896 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032852.P2383759133839358113

/-! ## A032852.P11847564801985670187

`eq[A025442(A007318(n)), A109702(n)]`
-/

namespace A032852.P11847564801985670187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A007318 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109702 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032852.P11847564801985670187

/-!
# A032853: Numbers whose base-6 representation Sum_{i=0..m} d(i)*6^i has d(m) <= d(m-1) >= d(m-2) <= ...

The programs for A032853, there is no canonical definition to state claims against.
-/

/-! ## A032853.P9424114353079918940

`eq[A102683(2*(n+3)), A109708(n)]`
-/

namespace A032853.P9424114353079918940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (2 * (n + 3))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109708 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032853.P9424114353079918940

/-! ## A032853.P15568407416413912450

`eq[A025442(A002264(n)), A109708(n)]`
-/

namespace A032853.P15568407416413912450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A002264 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109708 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032853.P15568407416413912450

/-! ## A032853.P1502013985555586717

`eq[A025922(A097992(n)), A109708(n)]`
-/

namespace A032853.P1502013985555586717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 (A097992 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109708 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032853.P1502013985555586717

/-! ## A032853.P16240171499561762589

`eq[A109708(n), A125005(A008620(n))]`
-/

namespace A032853.P16240171499561762589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109708 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A008620 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032853.P16240171499561762589

/-! ## A032853.P16845744076743025616

`eq[A046778(A195174(n)), A109708(n)]`
-/

namespace A032853.P16845744076743025616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046778 (A195174 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109708 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032853.P16845744076743025616

/-!
# A032854: Numbers whose base-7 representation Sum_{i=0..m} d(i)*7^i has d(m) <= d(m-1) >= d(m-2) <= ...

The programs for A032854, there is no canonical definition to state claims against.
-/

/-! ## A032854.P10331790870387543129

`lt[A255651(n), A255654(A255692(n))]`
-/

namespace A032854.P10331790870387543129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255651 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255654 (A255692 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032854.P10331790870387543129

/-! ## A032854.P11987398403121895411

`record[A239088(n+1)-A192543(n+1)]`
-/

namespace A032854.P11987398403121895411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239088 (n + 1) - A192543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032854.P11987398403121895411

/-! ## A032854.P14064727015400749266

`lt[floor(n/7)², n%7*ceil(n/7)]`
-/

namespace A032854.P14064727015400749266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 7⌋ ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 7 : ℕ) : ℤ) * ⌈(n : ℚ) / 7⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032854.P14064727015400749266

/-! ## A032854.P14936572716326469831

`eq[0, Δ[A035651(n+7)]]`
-/

namespace A032854.P14936572716326469831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035651 (n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032854.P14936572716326469831

/-! ## A032854.P4699033614223069427

`eq[1, A051794(n+1)]+1`
-/

namespace A032854.P4699033614223069427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051794 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032854.P4699033614223069427

/-!
# A032855: Numbers whose base-8 representation Sum_{i=0..m} d(i)*8^i has d(m) <= d(m-1) >= d(m-2) <= ...

The programs for A032855, there is no canonical definition to state claims against.
-/

/-! ## A032855.P7260050485524366934

`eq[A116377(A116375(n+2)+1), A116378(n+1)]+1`
-/

namespace A032855.P7260050485524366934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116377 (A116375 (n + 2) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A032855.P7260050485524366934

/-! ## A032855.P9713434004173622513

`eq[A116377(A116377(n+2)+1), A116378(n+1)]+1`
-/

namespace A032855.P9713434004173622513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116377 (A116377 (n + 2) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A032855.P9713434004173622513

/-! ## A032855.P5730507279038355435

`comp[7*dr(n)+n]`
-/

namespace A032855.P5730507279038355435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * SequenceMachineLib.digitalRoot (n : ℤ) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A032855.P5730507279038355435

/-! ## A032855.P12784408856567681905

`eq[0, A116378(n+1)]+1`
-/

namespace A032855.P12784408856567681905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032855.P12784408856567681905

/-! ## A032855.P13171919747368897423

`eq[A010877(n), A033929(n+1)]`
-/

namespace A032855.P13171919747368897423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032855.P13171919747368897423

/-!
# A032856: Numbers whose base-9 representation Sum_{i=0..m} d(i)*9^i has d(m) <= d(m-1) >= d(m-2) <= ...

The programs for A032856, there is no canonical definition to state claims against.
-/

/-! ## A032856.P5397614808709396240

`∑[Δ[A304366(n+1)]%A240537(n+1)]`
-/

namespace A032856.P5397614808709396240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304366 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A240537 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032856.P5397614808709396240

/-! ## A032856.P10878981316914009782

`eq[A002620(A017877(n)), A267142(n)]`
-/

namespace A032856.P10878981316914009782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A017877 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032856.P10878981316914009782

/-! ## A032856.P12119175146074861276

`lt[ϕ^((n-2)/dr(n+1)), n]`
-/

namespace A032856.P12119175146074861276
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (((n : ℤ) - 2 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A032856.P12119175146074861276

/-! ## A032856.P17053367355050052680

`lt[ϕ^(n-2), n^dr(n+1)]`
-/

namespace A032856.P17053367355050052680
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ ((n : ℤ) - 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.digitalRoot (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A032856.P17053367355050052680

/-! ## A032856.P13145097995905000749

`lt[n-9*floor(n/10), dr(9*n)]`
-/

namespace A032856.P13145097995905000749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 9 * ⌊(n : ℚ) / 10⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (9 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032856.P13145097995905000749

/-!
# A032857: Numbers whose base-10 representation Sum_{i=0..m} d(i)*10^i, d(m) > 0, has d(m) <= d(m-1) >= d(m-2) <= ...

The programs for A032857, there is no canonical definition to state claims against.
-/

/-! ## A032857.P9503605712422120125

`eq[0, A057556(A213217(n+1)+1)]+1`
-/

namespace A032857.P9503605712422120125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057556 (A213217 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032857.P9503605712422120125

/-! ## A032857.P157782694393575872

`eq[A057427(n), A211992(A213217(n))]`
-/

namespace A032857.P157782694393575872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211992 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032857.P157782694393575872

/-! ## A032857.P3867899029209487538

`eq[A178334(n), A211992(A213217(n))]`
-/

namespace A032857.P3867899029209487538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211992 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032857.P3867899029209487538

/-! ## A032857.P16758858715008310472

`lt[A017887(n), A028310(A321538(n))]`
-/

namespace A032857.P16758858715008310472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A321538 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032857.P16758858715008310472

/-! ## A032857.P6108645090231561025

`eq[A000007(n), A057556(A213217(n)+1)]`
-/

namespace A032857.P6108645090231561025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057556 (A213217 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032857.P6108645090231561025

/-!
# A032858: Numbers whose base-3 representation Sum_{i=0..m} d(i)*3^i has d(m) > d(m-1) < d(m-2) > ...

The programs for A032858, there is no canonical definition to state claims against.
-/

/-! ## A032858.P15073595044440425231

`A028898(A306105(n+1))`
-/

namespace A032858.P15073595044440425231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A306105 (n + 1)).toNat

end

end A032858.P15073595044440425231

/-! ## A032858.P17280389989865673560

`A028898(∩[A306106(n+1), A007089(n)])`
-/

namespace A032858.P17280389989865673560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032858.P17280389989865673560

/-! ## A032858.P15362546713728895671

`A028898(∩[A306107(n+1), A007089(n)])`
-/

namespace A032858.P15362546713728895671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032858.P15362546713728895671

/-! ## A032858.P18410502070196564503

`A028898(∩[A306108(n+1), A007089(n)])`
-/

namespace A032858.P18410502070196564503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032858.P18410502070196564503

/-! ## A032858.P16266227878203542041

`A028898(∩[A306110(n+1), A007089(n)])`
-/

namespace A032858.P16266227878203542041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032858.P16266227878203542041

/-!
# A032859: Numbers whose base-4 representation Sum_{i=0..m} d(i)*4^i has d(m) > d(m-1) < d(m-2) > ...

The programs for A032859, there is no canonical definition to state claims against.
-/

/-! ## A032859.P8603378871047609505

`A028899(A306106(n+1))`
-/

namespace A032859.P8603378871047609505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A306106 (n + 1)).toNat

end

end A032859.P8603378871047609505

/-! ## A032859.P2810784000668535767

`A028899(∩[A032865(n+1), A007090(n)])`
-/

namespace A032859.P2810784000668535767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032859.P2810784000668535767

/-! ## A032859.P13106924955539291763

`A028899(∩[A306109(n+1), A007090(n)])`
-/

namespace A032859.P13106924955539291763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032859.P13106924955539291763

/-! ## A032859.P11786146122564831144

`A028899(∩[A306111(n+1), A007090(n)])`
-/

namespace A032859.P11786146122564831144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032859.P11786146122564831144

/-! ## A032859.P13385757138935603782

`lt[A185742(A185712(2*(n+2))), A185739(n+1)]`
-/

namespace A032859.P13385757138935603782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185742 (A185712 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185739 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032859.P13385757138935603782

/-!
# A032860: Numbers whose base-5 representation Sum_{i=0..m} d(i)*5^i has d(m) > d(m-1) < d(m-2) > ...

The programs for A032860, there is no canonical definition to state claims against.
-/

/-! ## A032860.P10812988340405885978

`A028900(A306107(n+1))`
-/

namespace A032860.P10812988340405885978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A306107 (n + 1)).toNat

end

end A032860.P10812988340405885978

/-! ## A032860.P1500831955470806467

`A028900(∩[A306108(n+1), A007091(n)])`
-/

namespace A032860.P1500831955470806467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032860.P1500831955470806467

/-! ## A032860.P5111338365671972242

`A028900(∩[A306109(n+1), A007091(n)])`
-/

namespace A032860.P5111338365671972242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032860.P5111338365671972242

/-! ## A032860.P4393725507334831838

`A028900(∩[A306110(n+1), A007091(n)])`
-/

namespace A032860.P4393725507334831838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032860.P4393725507334831838

/-! ## A032860.P15326726300321491074

`A028900(∩[A039149(n+1), A306108(n+1)])`
-/

namespace A032860.P15326726300321491074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306108 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032860.P15326726300321491074

/-! ## A032860.P2103667544210264019

`A028900(∩[A135210(n+1), A306109(n+1)])`
-/

namespace A032860.P2103667544210264019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306109 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032860.P2103667544210264019

/-!
# A032861: Numbers whose base-6 representation Sum_{i=0..m} d(i)*6^i has d(m) > d(m-1) < d(m-2) > ...

The programs for A032861, there is no canonical definition to state claims against.
-/

/-! ## A032861.P6993703356107679158

`A028901(A306108(n+1))`
-/

namespace A032861.P6993703356107679158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A306108 (n + 1)).toNat

end

end A032861.P6993703356107679158

/-! ## A032861.P9533663048153177221

`A028901(∩[A306109(n+1), A007092(n)])`
-/

namespace A032861.P9533663048153177221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032861.P9533663048153177221

/-! ## A032861.P15290947780648967622

`A089867(A023788(n+1))`
-/

namespace A032861.P15290947780648967622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A023788 (n + 1)).toNat

end

end A032861.P15290947780648967622

/-!
# A032862: Numbers whose base-7 representation Sum_{i=0..m} d(i)*7^i has d(m) > d(m-1) < d(m-2) > ...

The programs for A032862, there is no canonical definition to state claims against.
-/

/-! ## A032862.P1407544970822184633

`A028902(A306109(n+1))`
-/

namespace A032862.P1407544970822184633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A306109 (n + 1)).toNat

end

end A032862.P1407544970822184633

/-! ## A032862.P1609903271285113190

`A028902(∩[A032865(n+1), A007093(n)])`
-/

namespace A032862.P1609903271285113190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032862.P1609903271285113190

/-! ## A032862.P13910094970938720108

`A028902(∩[A306110(n+1), A007093(n)])`
-/

namespace A032862.P13910094970938720108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032862.P13910094970938720108

/-! ## A032862.P2022992140032329287

`A028902(∩[A039154(n+1), A306110(n+1)])`
-/

namespace A032862.P2022992140032329287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306110 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032862.P2022992140032329287

/-! ## A032862.P533176188426703019

`A028902(∩[A052419(n+1), A306110(n+1)])`
-/

namespace A032862.P533176188426703019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306110 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032862.P533176188426703019

/-!
# A032863: Numbers whose base-8 representation Sum_{i=0..m} d(i)*8^i has d(m) > d(m-1) < d(m-2) > ...

The programs for A032863, there is no canonical definition to state claims against.
-/

/-! ## A032863.P5806335269691398858

`A028903(A306110(n+1))`
-/

namespace A032863.P5806335269691398858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A306110 (n + 1)).toNat

end

end A032863.P5806335269691398858

/-! ## A032863.P4437880224974154863

`A028903(∩[A032865(n+1), A007094(n)])`
-/

namespace A032863.P4437880224974154863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032863.P4437880224974154863

/-! ## A032863.P9175617909590594979

`A118759(A023790(n+1))`
-/

namespace A032863.P9175617909590594979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A023790 (n + 1)).toNat

end

end A032863.P9175617909590594979

/-! ## A032863.P4093628673617991030

`A000194(A023790(n+1)²)`
-/

namespace A032863.P4093628673617991030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A023790 (n + 1) ^ 2).toNat

end

end A032863.P4093628673617991030

/-! ## A032863.P8207920281963001624

`A000196(A023790(n+1)²)`
-/

namespace A032863.P8207920281963001624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A023790 (n + 1) ^ 2).toNat

end

end A032863.P8207920281963001624

/-!
# A032864: Numbers whose base-9 representation Sum_{i=0..m} d(i)*9^i has d(m) > d(m-1) < d(m-2) > ...

The programs for A032864, there is no canonical definition to state claims against.
-/

/-! ## A032864.P11442379090930031743

`A028904(A306111(n+1))`
-/

namespace A032864.P11442379090930031743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A306111 (n + 1)).toNat

end

end A032864.P11442379090930031743

/-! ## A032864.P13500228829378395974

`A118759(A023791(n+1))`
-/

namespace A032864.P13500228829378395974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A023791 (n + 1)).toNat

end

end A032864.P13500228829378395974

/-! ## A032864.P12534135074275630059

`A130734(A023791(n+1)+1)`
-/

namespace A032864.P12534135074275630059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A023791 (n + 1) + 1).toNat

end

end A032864.P12534135074275630059

/-! ## A032864.P13540691736806609976

`and(A023791(n+1), A387410(n+1))`
-/

namespace A032864.P13540691736806609976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023791 (n + 1)) (A387410 (n + 1))

end

end A032864.P13540691736806609976

/-! ## A032864.P6495255593020661152

`∩[A023791(n+1), A323048(n+1)]`
-/

namespace A032864.P6495255593020661152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032864.P6495255593020661152

/-!
# A032865: Numbers whose base-10 representation Sum_{i=0..m} d(i)*10^i has d(m) > d(m-1) < d(m-2) > ...

The programs for A032865, there is no canonical definition to state claims against.
-/

/-! ## A032865.P16853921510087985091

`eq[0, A213209(A213217(n))]`
-/

namespace A032865.P16853921510087985091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213209 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032865.P16853921510087985091

/-! ## A032865.P16649114362324852947

`eq[2, A072078(A213217(n)+1)]`
-/

namespace A032865.P16649114362324852947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (A213217 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032865.P16649114362324852947

/-! ## A032865.P2053412017401151368

`lt[4, A226929(A213217(n)+2)]`
-/

namespace A032865.P2053412017401151368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226929 (A213217 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A032865.P2053412017401151368

/-! ## A032865.P680847743768918313

`∩[A355301(n+1), A084383(n)]`
-/

namespace A032865.P680847743768918313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032865.P680847743768918313

/-! ## A032865.P17975095358105885525

`eq[2, A001222(or(4, A213217(n))+1)]`
-/

namespace A032865.P17975095358105885525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor 4 (A213217 n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032865.P17975095358105885525

/-! ## A032865.P14636641999781908210

`eq[A000120(A213217(n)), A120004(n)]`
-/

namespace A032865.P14636641999781908210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A213217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120004 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032865.P14636641999781908210

/-! ## A032865.P15629886200668422010

`eq[A046660(A213217(n)), A107846(n)]`
-/

namespace A032865.P15629886200668422010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A213217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032865.P15629886200668422010

/-! ## A032865.P7228977503370459636

`eq[A058306(A213217(n)), A196368(n)]`
-/

namespace A032865.P7228977503370459636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058306 (A213217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032865.P7228977503370459636

/-! ## A032865.P4254969269817415628

`eq[A083218(A213217(n)), A202022(n)]`
-/

namespace A032865.P4254969269817415628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083218 (A213217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032865.P4254969269817415628

/-! ## A032865.P18168485481928909147

`eq[A178788(n), A285373(A213217(n))]`
-/

namespace A032865.P18168485481928909147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285373 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032865.P18168485481928909147

/-!
# A032866: Numbers whose base-3 representation Sum_{i=0..m} d(i)*3^i has d(m) >= d(m-1) <= d(m-2) >= ...

The programs for A032866, there is no canonical definition to state claims against.
-/

/-! ## A032866.P2025592951747695405

`eq[A093958(A376702(n+1)), A376650(n)]`
-/

namespace A032866.P2025592951747695405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093958 (A376702 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376650 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032866.P2025592951747695405

/-! ## A032866.P13698336835474501443

`eq[A057427(n), A123230(A029201(2*n))]`
-/

namespace A032866.P13698336835474501443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123230 (A029201 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032866.P13698336835474501443

/-!
# A032867: Numbers whose base-4 representation Sum_{i=0..m} d(i)*4^i has d(m) >= d(m-1) <= d(m-2) >= ...

The programs for A032867, there is no canonical definition to state claims against.
-/

/-! ## A032867.P9698787819234666852

`record[A035327(A035327(A032851(n+1)))]`
-/

namespace A032867.P9698787819234666852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A035327 (A032851 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032867.P9698787819234666852

/-! ## A032867.P14972760656555751443

`eq[A214455(n+1), A353535(A165190(n))]`
-/

namespace A032867.P14972760656555751443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353535 (A165190 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032867.P14972760656555751443

/-! ## A032867.P15068551201876764787

`eq[A153764(A103609(n)), A168184(n)]`
-/

namespace A032867.P15068551201876764787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 (A103609 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032867.P15068551201876764787

/-!
# A032868: Numbers whose base-5 representation Sum_{i=0..m} d(i)*5^i has d(m) >= d(m-1) <= d(m-2) >= ...

The programs for A032868, there is no canonical definition to state claims against.
-/

/-! ## A032868.P13455138980194652816

`eq[A033182(n)², A297034(n+1)]`
-/

namespace A032868.P13455138980194652816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297034 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032868.P13455138980194652816

/-! ## A032868.P16650907386831088480

`eq[A001221(A243757(n)), A033182(n)]`
-/

namespace A032868.P16650907386831088480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A243757 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032868.P16650907386831088480

/-! ## A032868.P7425144740004113477

`eq[A033182(n), A127322(A135664(n+1))]`
-/

namespace A032868.P7425144740004113477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 (A135664 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032868.P7425144740004113477

/-! ## A032868.P4958098587120811641

`eq[A101402(A025881(n))², A297034(n+1)]`
-/

namespace A032868.P4958098587120811641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A025881 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297034 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032868.P4958098587120811641

/-!
# A032869: Numbers whose base-6 representation Sum_{i=0..m} d(i)*6^i has d(m) >= d(m-1) <= d(m-2) >= ...

The programs for A032869, there is no canonical definition to state claims against.
-/

/-! ## A032869.P16383872491564978816

`lt[A000108(A276335(3*n+2)), A128169(n+1)]`
-/

namespace A032869.P16383872491564978816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A276335 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032869.P16383872491564978816

/-! ## A032869.P736119519583940535

`lt[A335599(A030105(n)), n]`
-/

namespace A032869.P736119519583940535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335599 (A030105 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032869.P736119519583940535

/-! ## A032869.P5382992088132052470

`lt[A236912(A319723(n)), A265058(n)]`
-/

namespace A032869.P5382992088132052470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236912 (A319723 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265058 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032869.P5382992088132052470

/-!
# A032870: Numbers whose base-7 representation Sum_{i=0..m} d(i)*7^i has d(m) >= d(m-1) <= d(m-2) >= ...

The programs for A032870, there is no canonical definition to state claims against.
-/

/-! ## A032870.P11004570199333476121

`lt[n+1, A228946(a(A037830(n)))]` with `a(0)=1, a(1)=9`
-/

namespace A032870.P11004570199333476121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n f2 =>
  A228946 (f2 (A037830 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A032870.P11004570199333476121

/-! ## A032870.P7260668736192254660

`lt[acot(3)^A055955(n), A028233(n+1)]`
-/

namespace A032870.P7260668736192254660
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (3 : ℝ) ^ (A055955 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A032870.P7260668736192254660

/-!
# A032871: Numbers whose base-8 representation Sum_{i=0..m} d(i)*8^i has d(m) >= d(m-1) <= d(m-2) >= ...

The programs for A032871, there is no canonical definition to state claims against.
-/

/-! ## A032871.P4379628144379758173

`lt[A255693(n), A138891(n+1)]`
-/

namespace A032871.P4379628144379758173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255693 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138891 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032871.P4379628144379758173

/-! ## A032871.P3522950683482177327

`lt[A383013(A030107(n)), A261650(n)]`
-/

namespace A032871.P3522950683482177327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383013 (A030107 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261650 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032871.P3522950683482177327

/-! ## A032871.P12619388263704800143

`∩[A023764(n+1), A090107(n+1)]`
-/

namespace A032871.P12619388263704800143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032871.P12619388263704800143

/-!
# A032872: Numbers whose base-9 representation Sum_{i=0..m} d(i)*9^i has d(m) >= d(m-1) <= d(m-2) >= ...

The programs for A032872, there is no canonical definition to state claims against.
-/

/-! ## A032872.P10081183284305048196

`eq[A055641(n), A283001(A261906(n+1))]`
-/

namespace A032872.P10081183284305048196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (A261906 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032872.P10081183284305048196

/-! ## A032872.P4608287606652563628

`lt[A265556(A004185(n)), A028392(n)]`
-/

namespace A032872.P4608287606652563628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 (A004185 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032872.P4608287606652563628

/-! ## A032872.P14554844455812268336

`lt[A265556(A004185(n)), A230099(n)]`
-/

namespace A032872.P14554844455812268336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 (A004185 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032872.P14554844455812268336

/-! ## A032872.P15326445400372735976

`lt[A265556(A004185(n)), A340479(n)]`
-/

namespace A032872.P15326445400372735976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 (A004185 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340479 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032872.P15326445400372735976

/-! ## A032872.P12862437327626630776

`lt[A319726(n), A118759(A062028(n))]`
-/

namespace A032872.P12862437327626630776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032872.P12862437327626630776

/-! ## A032872.P4992257049122373059

`lt[A057428(A008763(n+3)), A055959(n)]`
-/

namespace A032872.P4992257049122373059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A008763 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032872.P4992257049122373059

/-! ## A032872.P3848941653166792918

`lt[A319726(A151933(n)+n), A062028(n)]`
-/

namespace A032872.P3848941653166792918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 (A151933 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032872.P3848941653166792918

/-! ## A032872.P3888684402029321336

`lt[(n-A265556(n))², n]`
-/

namespace A032872.P3888684402029321336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A265556 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032872.P3888684402029321336

/-! ## A032872.P3611511999018544018

`lt[A265556(n), A062028(n)]`
-/

namespace A032872.P3611511999018544018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032872.P3611511999018544018

/-!
# A032873: Numbers whose base-10 representation Sum_{i=0..m} d(i)*10^i has d(m) >= d(m-1) <= d(m-2) >= ...

The programs for A032873, there is no canonical definition to state claims against.
-/

/-! ## A032873.P17984315739851187361

`lt[n*A296210(A213217(n)), n]`
-/

namespace A032873.P17984315739851187361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A296210 (A213217 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032873.P17984315739851187361

/-! ## A032873.P11702992754256653895

`eq[1, A112104(A213217(n+1))]+1`
-/

namespace A032873.P11702992754256653895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112104 (A213217 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032873.P11702992754256653895

/-! ## A032873.P9674719293179087758

`eq[A057427(n), A112104(A213217(n))]`
-/

namespace A032873.P9674719293179087758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112104 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032873.P9674719293179087758

/-! ## A032873.P550824687135105583

`eq[A112104(A213217(n)), A178334(n)]`
-/

namespace A032873.P550824687135105583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112104 (A213217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032873.P550824687135105583

/-! ## A032873.P16305522716729445663

`eq[A000007(n), A296210(A213217(n))]`
-/

namespace A032873.P16305522716729445663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296210 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032873.P16305522716729445663

/-! ## A032873.P14010385514583732914

`eq[A000038(n), A296210(A213217(n))]`
-/

namespace A032873.P14010385514583732914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296210 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032873.P14010385514583732914

/-! ## A032873.P15157761875109515527

`record[A028310(n)/A330749(A213217(n))]`
-/

namespace A032873.P15157761875109515527
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A330749 (A213217 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032873.P15157761875109515527

/-! ## A032873.P3013490353552504301

`eq[A019431(2*n), A330749(A213217(n))]`
-/

namespace A032873.P3013490353552504301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330749 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032873.P3013490353552504301

/-! ## A032873.P14764796212212908625

`eq[A008683(2*(n+1)²)², A296210(A213217(n))]`
-/

namespace A032873.P14764796212212908625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * (n + 1) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296210 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032873.P14764796212212908625

/-! ## A032873.P13665020746419108199

`eq[(n*A296210(A213217(n)))², A000010(n+2)%2]`
-/

namespace A032873.P13665020746419108199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A296210 (A213217 n).toNat) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032873.P13665020746419108199

/-!
# A032874: Numbers whose base-3 representation Sum_{i=0..m} d(i)*3^i has d(0) > d(1) < d(2) > ...

The programs for A032874, there is no canonical definition to state claims against.
-/

/-! ## A032874.P11626938866395363494

`∩[A032891(n+1), A043089(n)]`
-/

namespace A032874.P11626938866395363494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032874.P11626938866395363494

/-! ## A032874.P14415812234335933009

`∩[A031941(n+1), A032891(n+1)]`
-/

namespace A032874.P14415812234335933009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032874.P14415812234335933009

/-! ## A032874.P14492899565164237493

`∪[A032930(n+1), A239215(A000712(n))]`
-/

namespace A032874.P14492899565164237493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239215 (A000712 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A032874.P14492899565164237493

/-!
# A032875: Numbers whose base-4 representation Sum_{i=0..m} d(i)*4^i has d(0) > d(1) < d(2) > ...

The programs for A032875, there is no canonical definition to state claims against.
-/

/-! ## A032875.P15811400398456233427

`∩[A032892(n+1), A043090(n)]`
-/

namespace A032875.P15811400398456233427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032875.P15811400398456233427

/-! ## A032875.P1378636721587923599

`∩[A031942(n+1), A032892(n+1)]`
-/

namespace A032875.P1378636721587923599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032875.P1378636721587923599

/-! ## A032875.P7208286654589010532

`record[A054576(A032883(n+1))]`
-/

namespace A032875.P7208286654589010532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A032883 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032875.P7208286654589010532

/-! ## A032875.P599795931116760388

`A054576(∩[A043090(3*n+4), A032883(n+1)])`
-/

namespace A032875.P599795931116760388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043090 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032883 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032875.P599795931116760388

/-! ## A032875.P14373914104820619113

`A054576(∩[A043090(3*n+4), A032901(n+1)])`
-/

namespace A032875.P14373914104820619113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043090 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032901 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032875.P14373914104820619113

/-!
# A032876: Numbers whose base-5 representation Sum_{i=0..m} d(i)*5^i has d(0) > d(1) < d(2) > ...

The programs for A032876, there is no canonical definition to state claims against.
-/

/-! ## A032876.P2868894463082161291

`∩[A032893(n+1), A043091(n)]`
-/

namespace A032876.P2868894463082161291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032876.P2868894463082161291

/-! ## A032876.P8397638274604742349

`∩[A031943(n+1), A032893(n+1)]`
-/

namespace A032876.P8397638274604742349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032876.P8397638274604742349

/-!
# A032877: Numbers whose base-6 representation Sum_{i=0..m} d(i)*6^i has d(0) > d(1) < d(2) > ...

The programs for A032877, there is no canonical definition to state claims against.
-/

/-! ## A032877.P9048233903188096755

`∩[A032894(n+1), A043092(n+1)]`
-/

namespace A032877.P9048233903188096755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032877.P9048233903188096755

/-! ## A032877.P9173789576258615356

`lt[A185264(A050292(n)), A346690(n)]`
-/

namespace A032877.P9173789576258615356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 (A050292 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346690 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032877.P9173789576258615356

/-! ## A032877.P12295374135981119789

`lt[A025901(n), A319848(A245636(2*n+5))]`
-/

namespace A032877.P12295374135981119789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025901 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319848 (A245636 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032877.P12295374135981119789

/-! ## A032877.P16806811985505888433

`eq[A180474(n+6), A180474(A319654(n+6))]`
-/

namespace A032877.P16806811985505888433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180474 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180474 (A319654 (n + 6)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032877.P16806811985505888433

/-! ## A032877.P16235961210249039299

`lt[A260390(A067538(n+2)), A346690(n)]`
-/

namespace A032877.P16235961210249039299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260390 (A067538 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346690 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032877.P16235961210249039299

/-!
# A032878: Numbers whose base-7 representation Sum_{i=0..m} d(i)*7^i has d(0) > d(1) < d(2) > ...

The programs for A032878, there is no canonical definition to state claims against.
-/

/-! ## A032878.P10070224807555220926

`∩[A032895(n+1), A043093(n)]`
-/

namespace A032878.P10070224807555220926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032878.P10070224807555220926

/-! ## A032878.P2418656967552467069

`eq[1, A017857(A023933(n)+A017857(n))]`
-/

namespace A032878.P2418656967552467069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017857 (A023933 n + A017857 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032878.P2418656967552467069

/-! ## A032878.P7363229070572329255

`eq[A000007(A000328(n)), A037857(n+7)]`
-/

namespace A032878.P7363229070572329255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000328 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037857 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032878.P7363229070572329255

/-! ## A032878.P5727989773321859337

`eq[A000038(A003215(n)), A037857(n+7)]`
-/

namespace A032878.P5727989773321859337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A003215 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037857 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032878.P5727989773321859337

/-! ## A032878.P3866550872096818233

`eq[A000038(A033428(n)), A037857(n+7)]`
-/

namespace A032878.P3866550872096818233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A033428 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037857 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032878.P3866550872096818233

/-!
# A032879: Numbers whose that base-8 representation Sum_{i=0..m} d(i)*8^i has d(0) > d(1) < d(2) > ...

The programs for A032879, there is no canonical definition to state claims against.
-/

/-! ## A032879.P2104598809310477451

`∩[A032896(n+1), A043094(n)]`
-/

namespace A032879.P2104598809310477451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032879.P2104598809310477451

/-! ## A032879.P9612147151834936785

`lt[A055957(n), A138262(n+5)*A346731(n)]`
-/

namespace A032879.P9612147151834936785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138262 (n + 5) * A346731 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032879.P9612147151834936785

/-! ## A032879.P2248045786066224495

`lt[A005369(A084193(n+2)), A346731(n)]`
-/

namespace A032879.P2248045786066224495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A084193 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346731 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032879.P2248045786066224495

/-! ## A032879.P15961226066782985955

`eq[C(n, 64), A037831(n+1)]+1`
-/

namespace A032879.P15961226066782985955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032879.P15961226066782985955

/-! ## A032879.P10140515213387301096

`lt[A017867(n), A080211(A080577(2*(n+1)))]`
-/

namespace A032879.P10140515213387301096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080211 (A080577 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032879.P10140515213387301096

/-!
# A032880: Numbers whose base-9 representation Sum_{i=0..m} d(i)*9^i has d(0) > d(1) < d(2) > ...

The programs for A032880, there is no canonical definition to state claims against.
-/

/-! ## A032880.P11798334264092921930

`∩[A032897(n+1), A043095(n+1)]`
-/

namespace A032880.P11798334264092921930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032880.P11798334264092921930

/-! ## A032880.P14055195737542750962

`lt[A056965(A359983(n+1)), 0]`
-/

namespace A032880.P14055195737542750962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A359983 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032880.P14055195737542750962

/-! ## A032880.P4095854559896426401

`eq[1, A029742(n+1)/A359983(n+1)]`
-/

namespace A032880.P4095854559896426401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029742 (n + 1) : ℚ) / (A359983 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A032880.P4095854559896426401

/-! ## A032880.P14071647182988204765

`eq[10, A029742(n+1)-A052382(n+1)]`
-/

namespace A032880.P14071647182988204765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1) - A052382 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032880.P14071647182988204765

/-! ## A032880.P7089739511076697055

`eq[A029742(n+1), A321801(A359983(n+1))]`
-/

namespace A032880.P7089739511076697055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 (A359983 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032880.P7089739511076697055

/-!
# A032881: Numbers whose base-10 representation Sum_{i=0..m} d(i)*10^i has d(0) > d(1) < d(2) > ...

The programs for A032881, there is no canonical definition to state claims against.
-/

/-! ## A032881.P12381573999089183313

`∩[A032898(n+1), A043096(n+1)]`
-/

namespace A032881.P12381573999089183313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032881.P12381573999089183313

/-! ## A032881.P10175289411299203949

`record[A321802(A032898(n+1))]`
-/

namespace A032881.P10175289411299203949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A032898 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032881.P10175289411299203949

/-! ## A032881.P17130692536321204122

`filter[A032898(n+1), A196368(#)]`
-/

namespace A032881.P17130692536321204122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A032881.P17130692536321204122

/-! ## A032881.P17692259431367985083

`eq[0, A065641(A193581(n+10))]`
-/

namespace A032881.P17692259431367985083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065641 (A193581 (n + 10)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032881.P17692259431367985083

/-! ## A032881.P4812126702905549001

`∩[A032898(n+1), A355301(n+1)]`
-/

namespace A032881.P4812126702905549001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032881.P4812126702905549001

/-! ## A032881.P5874622338436097459

`eq[A054977(n), A271498(A213217(n))]`
-/

namespace A032881.P5874622338436097459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271498 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032881.P5874622338436097459

/-! ## A032881.P4364187894325724196

`eq[A000040(n+1)%2, A271498(A213217(n))]`
-/

namespace A032881.P4364187894325724196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271498 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032881.P4364187894325724196

/-!
# A032882: Numbers whose base-3 representation Sum_{i=0..m} d(i)*3^i has d(0) < d(1) > d(2) < ...

The programs for A032882, there is no canonical definition to state claims against.
-/

/-! ## A032882.P18226343447980213894

`∩[A032900(n+1), A043089(n)]`
-/

namespace A032882.P18226343447980213894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032882.P18226343447980213894

/-! ## A032882.P16173151579164473317

`∩[A031941(n+1), A032900(n+1)]`
-/

namespace A032882.P16173151579164473317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032882.P16173151579164473317

/-! ## A032882.P6646749795107263933

`∑[A095791(A129168(n)²)]`
-/

namespace A032882.P6646749795107263933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 (A129168 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032882.P6646749795107263933

/-! ## A032882.P3537831524691344196

`∑[∏{e}[A324118(n+1)!, #]]`
-/

namespace A032882.P3537831524691344196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A324118 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032882.P3537831524691344196

/-! ## A032882.P7734415750098329315

`∑[∏{e}[A348717(n+1)!, #]]`
-/

namespace A032882.P7734415750098329315
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A348717 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032882.P7734415750098329315

/-!
# A032883: Numbers whose base-4 representation Sum_{i=0..m} d(i)*4^i has d(0) < d(1) > d(2) < ...

The programs for A032883, there is no canonical definition to state claims against.
-/

/-! ## A032883.P5975358354703344916

`∩[A032901(n+1), A043090(n)]`
-/

namespace A032883.P5975358354703344916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032883.P5975358354703344916

/-! ## A032883.P17749693060478261690

`∩[A031942(n+1), A032901(n+1)]`
-/

namespace A032883.P17749693060478261690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032883.P17749693060478261690

/-!
# A032884: Numbers whose base-5 representation Sum_{i=0..m} d(i)*5^i has d(0) < d(1) > d(2) < ...

The programs for A032884, there is no canonical definition to state claims against.
-/

/-! ## A032884.P16225079380122106251

`∩[A032902(n+1), A043091(n)]`
-/

namespace A032884.P16225079380122106251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032884.P16225079380122106251

/-! ## A032884.P9313866305438171132

`∩[A031943(n+1), A032902(n+1)]`
-/

namespace A032884.P9313866305438171132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032884.P9313866305438171132

/-! ## A032884.P12288202404587217543

`lt[A070565(A037468(n)), A007095(n)]`
-/

namespace A032884.P12288202404587217543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 (A037468 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032884.P12288202404587217543

/-! ## A032884.P18427691862742891369

`lt[A070565(A037468(n)), A037477(n)]`
-/

namespace A032884.P18427691862742891369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 (A037468 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032884.P18427691862742891369

/-! ## A032884.P16232492229719585458

`lt[A054861(n+1), A007091(A053827(n))]`
-/

namespace A032884.P16232492229719585458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A053827 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032884.P16232492229719585458

/-!
# A032885: Numbers whose base-6 representation Sum_{i=0..m} d(i)*6^i has d(0) < d(1) > d(2) < ...

The programs for A032885, there is no canonical definition to state claims against.
-/

/-! ## A032885.P4117355094216393388

`∩[A032903(n+1), A043092(n+1)]`
-/

namespace A032885.P4117355094216393388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032885.P4117355094216393388

/-! ## A032885.P12891799960029888959

`A085735(A023788(n+2))`
-/

namespace A032885.P12891799960029888959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085735 (A023788 (n + 2)).toNat

end

end A032885.P12891799960029888959

/-! ## A032885.P15748738541022794903

`∑[A018412(Δ[A023788(n+1)])]`
-/

namespace A032885.P15748738541022794903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023788 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018412 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032885.P15748738541022794903

/-! ## A032885.P2392170788688500466

`∑[A020753(Δ[A023788(n+1)])]`
-/

namespace A032885.P2392170788688500466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023788 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032885.P2392170788688500466

/-! ## A032885.P3822113863125438611

`∑[A032559(Δ[A023788(n+1)])]`
-/

namespace A032885.P3822113863125438611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023788 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032559 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032885.P3822113863125438611

/-!
# A032886: Numbers whose base-7 representation Sum_{i=0..m} d(i)*7^i has d(0) < d(1) > d(2) < ...

The programs for A032886, there is no canonical definition to state claims against.
-/

/-! ## A032886.P7635063937955154338

`∩[A032904(n+1), A043093(n)]`
-/

namespace A032886.P7635063937955154338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032886.P7635063937955154338

/-! ## A032886.P2041513633981067603

`A085736(A023789(n+2))`
-/

namespace A032886.P2041513633981067603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A023789 (n + 2)).toNat

end

end A032886.P2041513633981067603

/-! ## A032886.P3398136406096800287

`A000188(A023789(n+2)²)`
-/

namespace A032886.P3398136406096800287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A023789 (n + 2) ^ 2).toNat

end

end A032886.P3398136406096800287

/-! ## A032886.P3109914683531227983

`A000194(A023789(n+2)²)`
-/

namespace A032886.P3109914683531227983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A023789 (n + 2) ^ 2).toNat

end

end A032886.P3109914683531227983

/-! ## A032886.P15605215053243210550

`A000196(A023789(n+2)²)`
-/

namespace A032886.P15605215053243210550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A023789 (n + 2) ^ 2).toNat

end

end A032886.P15605215053243210550

/-!
# A032887: Numbers whose base-8 representation Sum_{i=0..m} d(i)*8^i has d(0) < d(1) > d(2) < ...

The programs for A032887, there is no canonical definition to state claims against.
-/

/-! ## A032887.P16510738127976725361

`∩[A032905(n+1), A043094(n)]`
-/

namespace A032887.P16510738127976725361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032887.P16510738127976725361

/-! ## A032887.P604997139454054023

`∩[8^C(n, 64)²+n, A032863(n+1)]`
-/

namespace A032887.P604997139454054023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ Nat.choose n 64 ^ 2 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032887.P604997139454054023

/-! ## A032887.P11559000406248021168

`A090109(A023790(n+2))`
-/

namespace A032887.P11559000406248021168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090109 (A023790 (n + 2)).toNat

end

end A032887.P11559000406248021168

/-! ## A032887.P16160905625807689386

`A000194(A023790(n+2)²)`
-/

namespace A032887.P16160905625807689386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A023790 (n + 2) ^ 2).toNat

end

end A032887.P16160905625807689386

/-! ## A032887.P14913889194406966127

`A000196(A023790(n+2)²)`
-/

namespace A032887.P14913889194406966127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A023790 (n + 2) ^ 2).toNat

end

end A032887.P14913889194406966127

/-!
# A032888: Numbers whose base-9 representation Sum_{i=0..m} d(i)*9^i has d(0) < d(1) > d(2) < ...

The programs for A032888, there is no canonical definition to state claims against.
-/

/-! ## A032888.P1862012947629133795

`∩[A032906(n+1), A043095(n+1)]`
-/

namespace A032888.P1862012947629133795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032888.P1862012947629133795

/-! ## A032888.P6430835232181165421

`lt[n/10, dr(A030108(n))]`
-/

namespace A032888.P6430835232181165421
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030108 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A032888.P6430835232181165421

/-! ## A032888.P16167844855762038801

`A118759(A023791(n+2))`
-/

namespace A032888.P16167844855762038801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A023791 (n + 2)).toNat

end

end A032888.P16167844855762038801

/-! ## A032888.P7853789995055888463

`lt[A265557(n), A056964(n)]`
-/

namespace A032888.P7853789995055888463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032888.P7853789995055888463

/-! ## A032888.P3786964842204422256

`lt[A265557(n), A061563(n)]`
-/

namespace A032888.P3786964842204422256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032888.P3786964842204422256

/-!
# A032889: Numbers whose base-10 representation Sum_{i=0..m} d(i)*10^i has d(0) < d(1) > d(2) < ...

The programs for A032889, there is no canonical definition to state claims against.
-/

/-! ## A032889.P14897434871483284393

`∩[A032907(n+1), A043096(n+1)]`
-/

namespace A032889.P14897434871483284393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032889.P14897434871483284393

/-! ## A032889.P6774242617743270870

`filter[A032907(n+1), A196368(#)]`
-/

namespace A032889.P6774242617743270870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A032889.P6774242617743270870

/-! ## A032889.P7857476783946164282

`∩[A355301(n+1), A032907(n+1)]`
-/

namespace A032889.P7857476783946164282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032889.P7857476783946164282

/-! ## A032889.P14796936761567965692

`lt[A070565(n), A051022(A053831(n))]`
-/

namespace A032889.P14796936761567965692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A053831 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032889.P14796936761567965692

/-! ## A032889.P10394112782886852209

`lt[A249121(A087052(n)), A193581(n)]`
-/

namespace A032889.P10394112782886852209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249121 (A087052 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032889.P10394112782886852209

/-!
# A032890: Numbers whose base-2 representation Sum_{i=0..m} d(i)*2^i has d(0) >= d(1) <= d(2) >= ...

The programs for A032890, the canonical program `A032890.P13361457398123682468` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032890 has offset 1).

The definition of A032890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032890.P9465838858920058534

`record[A032742(A032899(n+1))]`
-/

namespace A032890.P9465838858920058534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A032899 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032890.P9465838858920058534

namespace A032890

/-- `record[A032742(A032899(n+1))]` -/
def P9465838858920058534.Spec : Prop :=
  ∀ n, P9465838858920058534.a n = A032890 (n + 1)

end A032890

/-! ## A032890.P15729971427196311531

`record[A065261(A032899(n+2))]`
-/

namespace A032890.P15729971427196311531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065261 (A032899 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032890.P15729971427196311531

namespace A032890

/-- `record[A065261(A032899(n+2))]` -/
def P15729971427196311531.Spec : Prop :=
  ∀ n, P15729971427196311531.a n = A032890 (n + 1)

end A032890

/-! ## A032890.P7497986690259902186

`record[A004525(A032899(A052938(n)))]`
-/

namespace A032890.P7497986690259902186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A032899 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032890.P7497986690259902186

namespace A032890

/-- `record[A004525(A032899(A052938(n)))]` -/
def P7497986690259902186.Spec : Prop :=
  ∀ n, P7497986690259902186.a n = A032890 (n + 1)

end A032890

/-! ## A032890.P12561892309450945958

`eq[A000007(n), A343030(A038556(2*n))]`
-/

namespace A032890.P12561892309450945958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (A038556 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032890.P12561892309450945958

namespace A032890

/-- `eq[A000007(n), A343030(A038556(2*n))]` -/
def P12561892309450945958.Spec : Prop :=
  ∀ n, (P12561892309450945958.a n : ℤ) = A032890 (n + 1)

end A032890

/-! ## A032890.P2238206385240490688

`eq[A000038(n), A343030(A038556(2*n))]`
-/

namespace A032890.P2238206385240490688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (A038556 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032890.P2238206385240490688

namespace A032890

/-- `eq[A000038(n), A343030(A038556(2*n))]` -/
def P2238206385240490688.Spec : Prop :=
  ∀ n, (P2238206385240490688.a n : ℤ) = A032890 (n + 1)

end A032890

/-! ## A032890.P6820099715530489582

`eq[A036987(2*n), A343030(A038556(2*n))]`
-/

namespace A032890.P6820099715530489582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (A038556 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032890.P6820099715530489582

namespace A032890

/-- `eq[A036987(2*n), A343030(A038556(2*n))]` -/
def P6820099715530489582.Spec : Prop :=
  ∀ n, (P6820099715530489582.a n : ℤ) = A032890 (n + 1)

end A032890

/-! ## A032890.P13178838688056863460

`eq[A084099(2*n), A343030(A038556(2*n))]`
-/

namespace A032890.P13178838688056863460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (A038556 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032890.P13178838688056863460

namespace A032890

/-- `eq[A084099(2*n), A343030(A038556(2*n))]` -/
def P13178838688056863460.Spec : Prop :=
  ∀ n, (P13178838688056863460.a n : ℤ) = A032890 (n + 1)

end A032890

/-! ## A032890.P902975355670353178

`eq[A341629(2*n+1), A343030(A038556(2*n))]`
-/

namespace A032890.P902975355670353178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (A038556 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032890.P902975355670353178

namespace A032890

/-- `eq[A341629(2*n+1), A343030(A038556(2*n))]` -/
def P902975355670353178.Spec : Prop :=
  ∀ n, (P902975355670353178.a n : ℤ) = A032890 (n + 1)

end A032890

/-! ## A032890.P13361457398123682468

`record[abs(1-n)-A338251(A004523(n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A032890

/-- `record[abs(1-n)-A338251(A004523(n))]` -/
def P13361457398123682468.Spec : Prop :=
  ∀ n, P13361457398123682468.a n = A032890 (n + 1)

theorem P13361457398123682468.correct : P13361457398123682468.Spec := by
  intro n
  simp only [A032890, Nat.add_sub_cancel]

end A032890

/-! ## A032890.P6931433448789598250

`eq[3, A261461(A129594(4*n))]`
-/

namespace A032890.P6931433448789598250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (A129594 (4 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032890.P6931433448789598250

namespace A032890

/-- `eq[3, A261461(A129594(4*n))]` -/
def P6931433448789598250.Spec : Prop :=
  ∀ n, (P6931433448789598250.a n : ℤ) = A032890 (n + 1)

end A032890

/-!
# A032891: Numbers whose base-3 representation Sum_{i=0..m} d(i)*3^i has d(0) >= d(1) <= d(2) >= ...

The programs for A032891, there is no canonical definition to state claims against.
-/

/-! ## A032891.P11047019828826273109

`record[A103627(A032900(n+1))]`
-/

namespace A032891.P11047019828826273109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A032900 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032891.P11047019828826273109

/-! ## A032891.P10907454889088047009

`record[A135997(A032900(n+2))]`
-/

namespace A032891.P10907454889088047009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A032900 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032891.P10907454889088047009

/-! ## A032891.P1977363003356276371

`lt[A333817(A325781(n+1)), 1]`
-/

namespace A032891.P1977363003356276371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333817 (A325781 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032891.P1977363003356276371

/-! ## A032891.P8293329438172445007

`∑[gcd(A133041(n), A153713(n+1))]`
-/

namespace A032891.P8293329438172445007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133041 n) (A153713 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032891.P8293329438172445007

/-! ## A032891.P5689804055625328169

`eq[A087049(A001588(n)), A163533(n)]`
-/

namespace A032891.P5689804055625328169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A001588 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163533 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032891.P5689804055625328169

/-!
# A032892: Numbers whose base-4 representation Sum_{i=0..m} d(i)*4^i has d(0) >= d(1) <= d(2) >= ...

The programs for A032892, there is no canonical definition to state claims against.
-/

/-! ## A032892.P5613229224070187579

`record[A054576(A032901(n+1))]`
-/

namespace A032892.P5613229224070187579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A032901 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032892.P5613229224070187579

/-!
# A032894: Numbers whose base-6 representation Sum_{i=0..m} d(i)*6^i has d(0) >= d(1) <= d(2) >= ...

The programs for A032894, there is no canonical definition to state claims against.
-/

/-! ## A032894.P6276105635946910894

`lt[A109708(n), A000079(A034458(n+1))]`
-/

namespace A032894.P6276105635946910894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109708 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A034458 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032894.P6276105635946910894

/-! ## A032894.P10990661695380880749

`lt[A109708(n), A109708(A034458(n+5))]`
-/

namespace A032894.P10990661695380880749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109708 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109708 (A034458 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032894.P10990661695380880749

/-! ## A032894.P9524696096184588476

`eq[A109708(n)², ∑[A034457(n+1)]]`
-/

namespace A032894.P9524696096184588476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109708 n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032894.P9524696096184588476

/-! ## A032894.P12214955012100126108

`lt[A109708(n), A109673(A109673(2*n))]`
-/

namespace A032894.P12214955012100126108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109708 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109673 (A109673 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032894.P12214955012100126108

/-! ## A032894.P3376152077398407316

`eq[A025466(n), A109708(n)]`
-/

namespace A032894.P3376152077398407316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109708 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032894.P3376152077398407316

/-!
# A032895: Numbers whose base-7 representation Sum_{i=0..m} d(i)*7^i has d(0) >= d(1) <= d(2) >= ...

The programs for A032895, there is no canonical definition to state claims against.
-/

/-! ## A032895.P5358206842689465847

`lt[A057428(A160117(n)), A346691(n)]`
-/

namespace A032895.P5358206842689465847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A160117 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346691 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032895.P5358206842689465847

/-! ## A032895.P737126828040376505

`lt[A017857(n), acot(A015283(n))]`
-/

namespace A032895.P737126828040376505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017857 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A015283 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A032895.P737126828040376505

/-! ## A032895.P8542506003307294579

`lt[A057428((2*n)²), A346691(n)]`
-/

namespace A032895.P8542506003307294579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 ((2 * n) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346691 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032895.P8542506003307294579

/-!
# A032896: Numbers whose base-8 representation Sum_{i=0..m} d(i)*8^i has d(0) >= d(1) <= d(2) >= ...

The programs for A032896, there is no canonical definition to state claims against.
-/

/-! ## A032896.P963269205512378985

`eq[A037816(A088476(n+1)), A057427(n)]`
-/

namespace A032896.P963269205512378985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (A088476 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032896.P963269205512378985

/-! ## A032896.P17398937751350107427

`lt[A000007(n), A037816(A088476(n+1))]`
-/

namespace A032896.P17398937751350107427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (A088476 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032896.P17398937751350107427

/-! ## A032896.P18218724137933380288

`eq[A017867(n)%A031182(n), A127843(n+1)]`
-/

namespace A032896.P18218724137933380288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017867 n) (A031182 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127843 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032896.P18218724137933380288

/-! ## A032896.P6607581883208331771

`lt[A037816(n+1), n*A037816(A088476(n+1))]`
-/

namespace A032896.P6607581883208331771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037816 (A088476 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032896.P6607581883208331771

/-! ## A032896.P10573204722224005879

`eq[A112316(n), A127843(n+2)]`
-/

namespace A032896.P10573204722224005879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127843 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032896.P10573204722224005879

/-!
# A032897: Numbers whose base-9 representation Sum_{i=0..m} d(i)*9^i has d(0) >= d(1) <= d(2) >= ...

The programs for A032897, there is no canonical definition to state claims against.
-/

/-! ## A032897.P1308859451752129307

`lt[A056965(A359983(n+1)), A056965(n)]`
-/

namespace A032897.P1308859451752129307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A359983 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032897.P1308859451752129307

/-!
# A032898: Numbers whose base-10 representation Sum_{i=0..m} d(i)*10^i, d(m) > 0, has d(0) >= d(1) <= d(2) >= ...

The programs for A032898, there is no canonical definition to state claims against.
-/

/-! ## A032898.P2148998850513819919

`lt[A023921(A213217(n)), n]`
-/

namespace A032898.P2148998850513819919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023921 (A213217 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032898.P2148998850513819919

/-! ## A032898.P5017373713682133376

`lt[sin(A213217(n)), A055017(n)]`
-/

namespace A032898.P5017373713682133376
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A213217 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A032898.P5017373713682133376

/-! ## A032898.P11286480926536384535

`lt[0, A287267(A213217(n+1))]+1`
-/

namespace A032898.P11286480926536384535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (A213217 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A032898.P11286480926536384535

/-! ## A032898.P3560381989078025153

`eq[A057427(n), A287267(A213217(n))]`
-/

namespace A032898.P3560381989078025153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032898.P3560381989078025153

/-! ## A032898.P1895329947577407705

`eq[A178334(n), A287267(A213217(n))]`
-/

namespace A032898.P1895329947577407705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032898.P1895329947577407705

/-! ## A032898.P15761903849026882112

`lt[A000007(n), A287267(A213217(n))]`
-/

namespace A032898.P15761903849026882112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032898.P15761903849026882112

/-! ## A032898.P7113446449724443645

`lt[A000038(n), A287267(A213217(n))]`
-/

namespace A032898.P7113446449724443645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032898.P7113446449724443645

/-! ## A032898.P13713114214414750415

`lt[A056967(A213217(n)), A344511(n)]`
-/

namespace A032898.P13713114214414750415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 (A213217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032898.P13713114214414750415

/-! ## A032898.P13734256912074823143

`A059995(A135499(n+1))%A341327(n+1)`
-/

namespace A032898.P13734256912074823143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059995 (A135499 (n + 1)).toNat) (A341327 (n + 1))

end

end A032898.P13734256912074823143

/-! ## A032898.P5958679852886115370

`eq[A017887(n), A107846(n)]`
-/

namespace A032898.P5958679852886115370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032898.P5958679852886115370

/-!
# A032899: Numbers whose base-2 representation Sum_{i=0..m} d(i)*2^i has d(0) <= d(1) >= d(2) <= ...

The programs for A032899, the canonical program `A032899.P11516375942382021658` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032899 has offset 1).

The definition of A032899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 829 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032899.P11516375942382021658

`eq[A000007(n), A343030(A038556(n))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A032899

/-- `eq[A000007(n), A343030(A038556(n))]` -/
def P11516375942382021658.Spec : Prop :=
  ∀ n, (P11516375942382021658.a n : ℤ) = A032899 (n + 1)

theorem P11516375942382021658.correct : P11516375942382021658.Spec := by
  intro n
  simp only [A032899, Nat.add_sub_cancel]

end A032899

/-! ## A032899.P17745818669459210884

`eq[A000038(n), A343030(A038556(n))]`
-/

namespace A032899.P17745818669459210884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (A038556 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032899.P17745818669459210884

namespace A032899

/-- `eq[A000038(n), A343030(A038556(n))]` -/
def P17745818669459210884.Spec : Prop :=
  ∀ n, (P17745818669459210884.a n : ℤ) = A032899 (n + 1)

end A032899

/-! ## A032899.P5057926262589895310

`eq[A036987(2*n), A343030(A038556(n))]`
-/

namespace A032899.P5057926262589895310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (A038556 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032899.P5057926262589895310

namespace A032899

/-- `eq[A036987(2*n), A343030(A038556(n))]` -/
def P5057926262589895310.Spec : Prop :=
  ∀ n, (P5057926262589895310.a n : ℤ) = A032899 (n + 1)

end A032899

/-! ## A032899.P95575366937588620

`eq[A341629(2*n+1), A343030(A038556(n))]`
-/

namespace A032899.P95575366937588620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (A038556 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032899.P95575366937588620

namespace A032899

/-- `eq[A341629(2*n+1), A343030(A038556(n))]` -/
def P95575366937588620.Spec : Prop :=
  ∀ n, (P95575366937588620.a n : ℤ) = A032899 (n + 1)

end A032899

/-! ## A032899.P13785754233695431997

`eq[(n-1)*A204843(4*n), A343030(A038556(n))]`
-/

namespace A032899.P13785754233695431997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A204843 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (A038556 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032899.P13785754233695431997

namespace A032899

/-- `eq[(n-1)*A204843(4*n), A343030(A038556(n))]` -/
def P13785754233695431997.Spec : Prop :=
  ∀ n, (P13785754233695431997.a n : ℤ) = A032899 (n + 1)

end A032899

/-! ## A032899.P9896284394400752792

`eq[A084099(2*n), A343030(A038556(n))]`
-/

namespace A032899.P9896284394400752792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (A038556 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032899.P9896284394400752792

namespace A032899

/-- `eq[A084099(2*n), A343030(A038556(n))]` -/
def P9896284394400752792.Spec : Prop :=
  ∀ n, (P9896284394400752792.a n : ℤ) = A032899 (n + 1)

end A032899

