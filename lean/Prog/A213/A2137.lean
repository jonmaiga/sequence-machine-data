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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A213700: Half the number of 5X5 0..n symmetric arrays with no 2X2 subblock summing to 2n.

The programs for A213700, there is no canonical definition to state claims against.
-/

/-! ## A213700.P18211952633276096246

`A213697(A141214(n)+7)`
-/

namespace A213700.P18211952633276096246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (A141214 n + 7).toNat

end

end A213700.P18211952633276096246

/-! ## A213700.P8805356435837947407

`A213697(A052905(n)+9)`
-/

namespace A213700.P8805356435837947407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (A052905 n + 9).toNat

end

end A213700.P8805356435837947407

/-! ## A213700.P13117454116331039853

`A213697(A055999(n)+10)`
-/

namespace A213700.P13117454116331039853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (A055999 n + 10).toNat

end

end A213700.P13117454116331039853

/-! ## A213700.P112672026850704591

`A213697(A167614(n+2)+1)`
-/

namespace A213700.P112672026850704591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (A167614 (n + 2) + 1).toNat

end

end A213700.P112672026850704591

/-! ## A213700.P2117436558108602887

`A213697(eq[5, A131818(n+1)])`
-/

namespace A213700.P2117436558108602887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213700.P2117436558108602887

/-!
# A213701: Half the number of 6X6 0..n symmetric arrays with no 2X2 subblock summing to 2n.

The programs for A213701, there is no canonical definition to state claims against.
-/

/-! ## A213701.P12725567980680445701

`A213697(A167499(n+3))`
-/

namespace A213701.P12725567980680445701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (A167499 (n + 3)).toNat

end

end A213701.P12725567980680445701

/-! ## A213701.P2253503775701821089

`A213697(A052905(n+2)-n+5)`
-/

namespace A213701.P2253503775701821089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (A052905 (n + 2) - (n : ℤ) + 5).toNat

end

end A213701.P2253503775701821089

/-!
# A213702: 

The programs for A213702, there is no canonical definition to state claims against.
-/

/-! ## A213702.P10162120204814684191

`A213697(A166136(n+4))`
-/

namespace A213702.P10162120204814684191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213697 (A166136 (n + 4)).toNat

end

end A213702.P10162120204814684191

/-!
# A213704: Catalan Unranking function U(size,rank) for totally balanced binary strings (converted to decimal). Each row 'size' of an array lists all A000108(size) such items in standard lexicographic order, followed by an infinite number of zeros.

The programs for A213704, there is no canonical definition to state claims against.
-/

/-! ## A213704.P7285415319763810141

`A258651(n)*A339822(A015519(n))`
-/

namespace A213704.P7285415319763810141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 n * A339822 (A015519 n).toNat

end

end A213704.P7285415319763810141

/-! ## A213704.P14497014421065796440

`A277536(n)*A317056(A274676(n+1))`
-/

namespace A213704.P14497014421065796440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277536 n * A317056 (A274676 (n + 1)).toNat

end

end A213704.P14497014421065796440

/-! ## A213704.P13700879229226755260

`A268383(3*n+1)*A268389(A268419(n+1))`
-/

namespace A213704.P13700879229226755260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268383 (3 * n + 1) * A268389 (A268419 (n + 1)).toNat

end

end A213704.P13700879229226755260

/-!
# A213705: a(n)=n if n <= 3, otherwise a(n) = A007477(n-1) + A007477(n).

The programs for A213705, there is no canonical definition to state claims against.
-/

/-! ## A213705.P8111567008802824465

`A007477(n+1)+A007477(n)-A000007(n)`
-/

namespace A213705.P8111567008802824465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007477 (n + 1) + (A007477 n - A000007 n)

end

end A213705.P8111567008802824465

/-! ## A213705.P6797757509323608445

`A007477(n+1)+A007477(n)%A007477(n+2)`
-/

namespace A213705.P6797757509323608445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007477 (n + 1) + Int.tmod (A007477 n) (A007477 (n + 2))

end

end A213705.P6797757509323608445

/-! ## A213705.P16246218584819821322

`A007477(n+1)+A007477(n)%A000302(n)`
-/

namespace A213705.P16246218584819821322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007477 (n + 1) + Int.tmod (A007477 n) (A000302 n)

end

end A213705.P16246218584819821322

/-! ## A213705.P2864370911274478049

`A024417(A275864(n+1)+1)`
-/

namespace A213705.P2864370911274478049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A275864 (n + 1) + 1).toNat

end

end A213705.P2864370911274478049

/-! ## A213705.P5089341250786329695

`A352629(A185063(2*n+1))+floor(2^(n-1))`
-/

namespace A213705.P5089341250786329695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352629 (A185063 (2 * n + 1)).toNat + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A213705.P5089341250786329695

/-!
# A213706: Partial sums of A071542.

The programs for A213706, the canonical program `A213706.P17260508495557102754` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213706 has offset 0).

The definition of A213706 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213706.P17260508495557102754

`a(n-1)+A071542(n)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A213706

/-- `a(n-1)+A071542(n)` -/
def P17260508495557102754.Spec : Prop :=
  ∀ n, P17260508495557102754.a n = A213706 n

theorem P17260508495557102754.correct : P17260508495557102754.Spec := by
  intro n
  simp only [A213706]

end A213706

/-! ## A213706.P16621594529062308728

`∑[A071542(n)]`
-/

namespace A213706.P16621594529062308728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213706.P16621594529062308728

namespace A213706

/-- `∑[A071542(n)]` -/
def P16621594529062308728.Spec : Prop :=
  ∀ n, P16621594529062308728.a n = A213706 n

end A213706

/-! ## A213706.P16227956781201002363

`A213707(n)-n`
-/

namespace A213706.P16227956781201002363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213707 n - (n : ℤ)

end

end A213706.P16227956781201002363

namespace A213706

/-- `A213707(n)-n` -/
def P16227956781201002363.Spec : Prop :=
  ∀ n, P16227956781201002363.a n = A213706 n

end A213706

/-! ## A213706.P17978199554487036249

`∑[∑[char[A173601(n)+1]]]`
-/

namespace A213706.P17978199554487036249
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213706.P17978199554487036249

namespace A213706

/-- `∑[∑[char[A173601(n)+1]]]` -/
def P17978199554487036249.Spec : Prop :=
  ∀ n, (P17978199554487036249.a n : ℤ) = A213706 n

end A213706

/-! ## A213706.P4258919683457664137

`∑[∑[char[A213708(n+1)]]]`
-/

namespace A213706.P4258919683457664137
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213708 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213706.P4258919683457664137

namespace A213706

/-- `∑[∑[char[A213708(n+1)]]]` -/
def P4258919683457664137.Spec : Prop :=
  ∀ n, (P4258919683457664137.a n : ℤ) = A213706 n

end A213706

/-! ## A213706.P2125685364066578015

`∑[a(n-A000120(n))+1]` with `a(0)=0`
-/

namespace A213706.P2125685364066578015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ((n : ℤ) - A000120 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213706.P2125685364066578015

namespace A213706

/-- `∑[a(n-A000120(n))+1]` -/
def P2125685364066578015.Spec : Prop :=
  ∀ n, (P2125685364066578015.a n : ℤ) = A213706 n

end A213706

/-! ## A213706.P3529860061938831141

`∑[a(A005187(n)-n)+1]` with `a(0)=0`
-/

namespace A213706.P3529860061938831141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (A005187 n - (n : ℤ)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213706.P3529860061938831141

namespace A213706

/-- `∑[a(A005187(n)-n)+1]` -/
def P3529860061938831141.Spec : Prop :=
  ∀ n, (P3529860061938831141.a n : ℤ) = A213706 n

end A213706

/-! ## A213706.P220739586337574185

`eq[0, A218254(n)]-n`
-/

namespace A213706.P220739586337574185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A213706.P220739586337574185

namespace A213706

/-- `eq[0, A218254(n)]-n` -/
def P220739586337574185.Spec : Prop :=
  ∀ n, P220739586337574185.a n = A213706 n

end A213706

/-! ## A213706.P11515187074764064862

`∑[a(val(n!, 2))+1]` with `a(0)=0`
-/

namespace A213706.P11515187074764064862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (SequenceMachineLib.valuation (Nat.factorial n) 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213706.P11515187074764064862

namespace A213706

/-- `∑[a(val(n!, 2))+1]` -/
def P11515187074764064862.Spec : Prop :=
  ∀ n, (P11515187074764064862.a n : ℤ) = A213706 n

end A213706

/-!
# A213707: Positions of zeros in A218254.

The programs for A213707, the canonical program `A213707.P7878863599904127051` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213707 has offset 0).

The definition of A213707 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213706, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213707.P7878863599904127051

`n+A213706(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A213707

/-- `n+A213706(n)` -/
def P7878863599904127051.Spec : Prop :=
  ∀ n, P7878863599904127051.a n = A213707 n

theorem P7878863599904127051.correct : P7878863599904127051.Spec := by
  intro n
  simp only [A213707]

end A213707

/-! ## A213707.P4992810464705949754

`∑[A071542(n)]+n`
-/

namespace A213707.P4992810464705949754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A213707.P4992810464705949754

namespace A213707

/-- `∑[A071542(n)]+n` -/
def P4992810464705949754.Spec : Prop :=
  ∀ n, P4992810464705949754.a n = A213707 n

end A213707

/-! ## A213707.P1215702854466212805

`∑[∑[char[A213708(n+1)]]]+n`
-/

namespace A213707.P1215702854466212805
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213708 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A213707.P1215702854466212805

namespace A213707

/-- `∑[∑[char[A213708(n+1)]]]+n` -/
def P1215702854466212805.Spec : Prop :=
  ∀ n, (P1215702854466212805.a n : ℤ) = A213707 n

end A213707

/-! ## A213707.P7883704216620102101

`∑[a(n-A000120(n))+1]` with `a(0)=0, a(1)=2`
-/

namespace A213707.P7883704216620102101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 ((n : ℤ) - A000120 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213707.P7883704216620102101

namespace A213707

/-- `∑[a(n-A000120(n))+1]` -/
def P7883704216620102101.Spec : Prop :=
  ∀ n, (P7883704216620102101.a n : ℤ) = A213707 n

end A213707

/-! ## A213707.P10708875767279361889

`∑[a(A005187(n)-n)+1]` with `a(0)=0, a(1)=2`
-/

namespace A213707.P10708875767279361889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (A005187 n - (n : ℤ)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213707.P10708875767279361889

namespace A213707

/-- `∑[a(A005187(n)-n)+1]` -/
def P10708875767279361889.Spec : Prop :=
  ∀ n, (P10708875767279361889.a n : ℤ) = A213707 n

end A213707

/-! ## A213707.P18181961985433979326

`A213706(n)-A001489(n)`
-/

namespace A213707.P18181961985433979326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213706 n - A001489 n

end

end A213707.P18181961985433979326

namespace A213707

/-- `A213706(n)-A001489(n)` -/
def P18181961985433979326.Spec : Prop :=
  ∀ n, P18181961985433979326.a n = A213707 n

end A213707

/-! ## A213707.P8058319773785049787

`n-(A060373(A060373(n))-A213706(n))`
-/

namespace A213707.P8058319773785049787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A060373 (A060373 n).toNat - A213706 n)

end

end A213707.P8058319773785049787

namespace A213707

/-- `n-(A060373(A060373(n))-A213706(n))` -/
def P8058319773785049787.Spec : Prop :=
  ∀ n, P8058319773785049787.a n = A213707 n

end A213707

/-! ## A213707.P18226971099209268153

`eq[0, A218254(n)]`
-/

namespace A213707.P18226971099209268153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213707.P18226971099209268153

namespace A213707

/-- `eq[0, A218254(n)]` -/
def P18226971099209268153.Spec : Prop :=
  ∀ n, (P18226971099209268153.a n : ℤ) = A213707 n

end A213707

/-! ## A213707.P9949266495006522274

`∑[a(val(n!, 2))+1]` with `a(0)=0, a(1)=2`
-/

namespace A213707.P9949266495006522274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (SequenceMachineLib.valuation (Nat.factorial n) 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213707.P9949266495006522274

namespace A213707

/-- `∑[a(val(n!, 2))+1]` -/
def P9949266495006522274.Spec : Prop :=
  ∀ n, (P9949266495006522274.a n : ℤ) = A213707 n

end A213707

/-!
# A213708: a(n) is the least inverse of A071542, i.e., minimal i such that A071542(i) = n.

The programs for A213708, there is no canonical definition to state claims against.
-/

/-! ## A213708.P9416063174866155521

`A086876(A071542(a(n-1)))+a(n-1)` with `a(0)=0`
-/

namespace A213708.P9416063174866155521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A086876 (A071542 (a (n - 1)).toNat).toNat + a (n - 1)

end

end A213708.P9416063174866155521

/-! ## A213708.P13918400988278119792

`∑[A086876(n)]-A086876(n)`
-/

namespace A213708.P13918400988278119792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A086876 n

end

end A213708.P13918400988278119792

/-! ## A213708.P7927006168689281637

`A173601(n)+1-A086876(n)`
-/

namespace A213708.P7927006168689281637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n + (1 - A086876 n)

end

end A213708.P7927006168689281637

/-! ## A213708.P7011024422730354441

`A179016(n)-A218603(n)`
-/

namespace A213708.P7011024422730354441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 n - A218603 n

end

end A213708.P7011024422730354441

/-! ## A213708.P8366731817924643254

`A173601(n)-(A218604(n)+A218603(n))`
-/

namespace A213708.P8366731817924643254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n - (A218604 n + A218603 n)

end

end A213708.P8366731817924643254

/-! ## A213708.P4792619808405845198

`A007843(a(n-1))` with `a(0)=0`
-/

namespace A213708.P4792619808405845198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007843 (a (n - 1)).toNat

end

end A213708.P4792619808405845198

/-!
# A213709: Number of steps to go from 2^(n+1)-1 to (2^n)-1 using the iterative process described in A071542.

The programs for A213709, the canonical program `A213709.P17085692847900461859` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213709 has offset 0).

The definition of A213709 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213709.P886375037561146910

`A218542(n)+A218543(n)`
-/

namespace A213709.P886375037561146910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218542 n + A218543 n

end

end A213709.P886375037561146910

namespace A213709

/-- `A218542(n)+A218543(n)` -/
def P886375037561146910.Spec : Prop :=
  ∀ n, P886375037561146910.a n = A213709 n

end A213709

/-! ## A213709.P2040512516816100524

`A011782(n)-A213722(n)`
-/

namespace A213709.P2040512516816100524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A213722 n

end

end A213709.P2040512516816100524

namespace A213709

/-- `A011782(n)-A213722(n)` -/
def P2040512516816100524.Spec : Prop :=
  ∀ n, P2040512516816100524.a n = A213709 n

end A213709

/-! ## A213709.P17085692847900461859

`A071542(2^(n+1)-1)-A071542(2^n-1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A213709

/-- `A071542(2^(n+1)-1)-A071542(2^n-1)` -/
def P17085692847900461859.Spec : Prop :=
  ∀ n, P17085692847900461859.a n = A213709 n

theorem P17085692847900461859.correct : P17085692847900461859.Spec := by
  intro n
  simp only [A213709]

end A213709

/-! ## A213709.P16346658472074276452

`∑[A226060(abs(1-n))]`
-/

namespace A213709.P16346658472074276452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226060 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213709.P16346658472074276452

namespace A213709

/-- `∑[A226060(abs(1-n))]` -/
def P16346658472074276452.Spec : Prop :=
  ∀ n, P16346658472074276452.a n = A213709 n

end A213709

/-! ## A213709.P15464449121321952731

`A226060(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A213709.P15464449121321952731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A226060 (n - 1) + a (n - 1)

end

end A213709.P15464449121321952731

namespace A213709

/-- `A226060(n-1)+a(n-1)` -/
def P15464449121321952731.Spec : Prop :=
  ∀ n, P15464449121321952731.a n = A213709 n

end A213709

/-!
# A213710: Number of steps to reach 0 when starting from 2^n and iterating the map x -> x - (number of 1's in binary representation of x): a(n) = A071542(2^n) = A218600(n)+1.

The programs for A213710, the canonical program `A213710.P973503051556971072` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213710 has offset 0).

The definition of A213710 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213710.P7861717647770693786

`1+A218600(n)`
-/

namespace A213710.P7861717647770693786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A218600 n

end

end A213710.P7861717647770693786

namespace A213710

/-- `1+A218600(n)` -/
def P7861717647770693786.Spec : Prop :=
  ∀ n, P7861717647770693786.a n = A213710 n

end A213710

/-! ## A213710.P973503051556971072

`A071542(2^n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A213710

/-- `A071542(2^n)` -/
def P973503051556971072.Spec : Prop :=
  ∀ n, P973503051556971072.a n = A213710 n

theorem P973503051556971072.correct : P973503051556971072.Spec := by
  intro n
  simp only [A213710]

end A213710

/-! ## A213710.P7436512266072314247

`∑[A213709(abs(1-n))]`
-/

namespace A213710.P7436512266072314247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213709 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213710.P7436512266072314247

namespace A213710

/-- `∑[A213709(abs(1-n))]` -/
def P7436512266072314247.Spec : Prop :=
  ∀ n, P7436512266072314247.a n = A213710 n

end A213710

/-! ## A213710.P3698167791183740254

`A213709(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A213710.P3698167791183740254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213709 (n - 1) + a (n - 1)

end

end A213710.P3698167791183740254

namespace A213710

/-- `A213709(n-1)+a(n-1)` -/
def P3698167791183740254.Spec : Prop :=
  ∀ n, P3698167791183740254.a n = A213710 n

end A213710

/-! ## A213710.P7559437377967361884

`A218600(n)-ratio[A033999(n)]`
-/

namespace A213710.P7559437377967361884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218600 n : ℚ) - (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A213710.P7559437377967361884

namespace A213710

/-- `A218600(n)-ratio[A033999(n)]` -/
def P7559437377967361884.Spec : Prop :=
  ∀ n, P7559437377967361884.a n = (A213710 n : ℚ)

end A213710

/-!
# A213711: a(n) = minimal k for which A218600(k) >= n.

The programs for A213711, the canonical program `A213711.P10909222957996312783` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213711 has offset 0).

The definition of A213711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8728 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213711.P10909222957996312783

`∑[char[A213710(n)]]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A213711

/-- `∑[char[A213710(n)]]` -/
def P10909222957996312783.Spec : Prop :=
  ∀ n, (P10909222957996312783.a n : ℤ) = A213711 n

theorem P10909222957996312783.correct : P10909222957996312783.Spec := by
  intro n
  simp only [A213711]

end A213711

/-! ## A213711.P10770993072805067987

`ceil(log2(∑[A086876(n)]))`
-/

namespace A213711.P10770993072805067987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A213711.P10770993072805067987

namespace A213711

/-- `ceil(log2(∑[A086876(n)]))` -/
def P10770993072805067987.Spec : Prop :=
  ∀ n, P10770993072805067987.a n = A213711 n

end A213711

/-! ## A213711.P5201409257167260046

`ceil(log2(A179016(n)+1))`
-/

namespace A213711.P5201409257167260046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A179016 n + 1 : ℝ)⌉

end

end A213711.P5201409257167260046

namespace A213711

/-- `ceil(log2(A179016(n)+1))` -/
def P5201409257167260046.Spec : Prop :=
  ∀ n, P5201409257167260046.a n = A213711 n

end A213711

/-! ## A213711.P6624460220538199288

`ceil(log2(A213708(n+1)))`
-/

namespace A213711.P6624460220538199288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A213708 (n + 1) : ℝ)⌉

end

end A213711.P6624460220538199288

namespace A213711

/-- `ceil(log2(A213708(n+1)))` -/
def P6624460220538199288.Spec : Prop :=
  ∀ n, P6624460220538199288.a n = A213711 n

end A213711

/-! ## A213711.P12935999988148357284

`ceil(log2(A233271(n)+1))`
-/

namespace A213711.P12935999988148357284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A233271 n + 1 : ℝ)⌉

end

end A213711.P12935999988148357284

namespace A213711

/-- `ceil(log2(A233271(n)+1))` -/
def P12935999988148357284.Spec : Prop :=
  ∀ n, P12935999988148357284.a n = A213711 n

end A213711

/-! ## A213711.P16684906347216752385

`∑[char[A218600(n)+1]]`
-/

namespace A213711.P16684906347216752385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218600 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213711.P16684906347216752385

namespace A213711

/-- `∑[char[A218600(n)+1]]` -/
def P16684906347216752385.Spec : Prop :=
  ∀ n, (P16684906347216752385.a n : ℤ) = A213711 n

end A213711

/-! ## A213711.P905556577896020366

`∑[char[A071542(2^n)]]`
-/

namespace A213711.P905556577896020366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (2 ^ n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213711.P905556577896020366

namespace A213711

/-- `∑[char[A071542(2^n)]]` -/
def P905556577896020366.Spec : Prop :=
  ∀ n, (P905556577896020366.a n : ℤ) = A213711 n

end A213711

/-! ## A213711.P16643835748888076320

`∑[char[∑[A213709(log2(A011782(n)))]]]`
-/

namespace A213711.P16643835748888076320
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213709 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213711.P16643835748888076320

namespace A213711

/-- `∑[char[∑[A213709(log2(A011782(n)))]]]` -/
def P16643835748888076320.Spec : Prop :=
  ∀ n, (P16643835748888076320.a n : ℤ) = A213711 n

end A213711

/-! ## A213711.P4094836419863012789

`A029837(A179016(n)+1)`
-/

namespace A213711.P4094836419863012789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A179016 n + 1).toNat

end

end A213711.P4094836419863012789

namespace A213711

/-- `A029837(A179016(n)+1)` -/
def P4094836419863012789.Spec : Prop :=
  ∀ n, P4094836419863012789.a n = A213711 n

end A213711

/-! ## A213711.P9484193623341932601

`A007456(A173601(n)+1)`
-/

namespace A213711.P9484193623341932601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (A173601 n + 1).toNat

end

end A213711.P9484193623341932601

namespace A213711

/-- `A007456(A173601(n)+1)` -/
def P9484193623341932601.Spec : Prop :=
  ∀ n, P9484193623341932601.a n = A213711 n

end A213711

/-! ## A213711.P3270759944660655055

`A007456(A213708(n+1))`
-/

namespace A213711.P3270759944660655055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (A213708 (n + 1)).toNat

end

end A213711.P3270759944660655055

namespace A213711

/-- `A007456(A213708(n+1))` -/
def P3270759944660655055.Spec : Prop :=
  ∀ n, P3270759944660655055.a n = A213711 n

end A213711

/-! ## A213711.P10788419270052520696

`A029837(A233271(n)+1)`
-/

namespace A213711.P10788419270052520696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A233271 n + 1).toNat

end

end A213711.P10788419270052520696

namespace A213711

/-- `A029837(A233271(n)+1)` -/
def P10788419270052520696.Spec : Prop :=
  ∀ n, P10788419270052520696.a n = A213711 n

end A213711

/-! ## A213711.P2578919810990747908

`A029837(A218616(n)+1)`
-/

namespace A213711.P2578919810990747908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A218616 n + 1).toNat

end

end A213711.P2578919810990747908

namespace A213711

/-- `A029837(A218616(n)+1)` -/
def P2578919810990747908.Spec : Prop :=
  ∀ n, P2578919810990747908.a n = A213711 n

end A213711

/-! ## A213711.P7208440911558031018

`A000523(2*A179016(n)+1)`
-/

namespace A213711.P7208440911558031018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A179016 n + 1).toNat

end

end A213711.P7208440911558031018

namespace A213711

/-- `A000523(2*A179016(n)+1)` -/
def P7208440911558031018.Spec : Prop :=
  ∀ n, P7208440911558031018.a n = A213711 n

end A213711

/-! ## A213711.P2304246362746364606

`A070939(2*A179016(n))-1`
-/

namespace A213711.P2304246362746364606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * A179016 n).toNat - 1

end

end A213711.P2304246362746364606

namespace A213711

/-- `A070939(2*A179016(n))-1` -/
def P2304246362746364606.Spec : Prop :=
  ∀ n, P2304246362746364606.a n = A213711 n

end A213711

/-! ## A213711.P8752461346827628725

`A000523(A179016(n)+A179016(n)+1)`
-/

namespace A213711.P8752461346827628725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A179016 n + (A179016 n + 1)).toNat

end

end A213711.P8752461346827628725

namespace A213711

/-- `A000523(A179016(n)+A179016(n)+1)` -/
def P8752461346827628725.Spec : Prop :=
  ∀ n, P8752461346827628725.a n = A213711 n

end A213711

/-! ## A213711.P7566502249327783187

`A000523(2*A218616(n)+1)`
-/

namespace A213711.P7566502249327783187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A218616 n + 1).toNat

end

end A213711.P7566502249327783187

namespace A213711

/-- `A000523(2*A218616(n)+1)` -/
def P7566502249327783187.Spec : Prop :=
  ∀ n, P7566502249327783187.a n = A213711 n

end A213711

/-! ## A213711.P11864783873881253899

`A000523(A218616(n)+A218616(n)+1)`
-/

namespace A213711.P11864783873881253899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A218616 n + (A218616 n + 1)).toNat

end

end A213711.P11864783873881253899

namespace A213711

/-- `A000523(A218616(n)+A218616(n)+1)` -/
def P11864783873881253899.Spec : Prop :=
  ∀ n, P11864783873881253899.a n = A213711 n

end A213711

/-! ## A213711.P3228006018313602139

`A255121(A218599(n)+n)`
-/

namespace A213711.P3228006018313602139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255121 (A218599 n + (n : ℤ)).toNat

end

end A213711.P3228006018313602139

namespace A213711

/-- `A255121(A218599(n)+n)` -/
def P3228006018313602139.Spec : Prop :=
  ∀ n, P3228006018313602139.a n = A213711 n

end A213711

/-! ## A213711.P2132044366604316981

`A255121(A218602(n)+n-A255121(n))`
-/

namespace A213711.P2132044366604316981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255121 (A218602 n + ((n : ℤ) - A255121 n)).toNat

end

end A213711.P2132044366604316981

namespace A213711

/-- `A255121(A218602(n)+n-A255121(n))` -/
def P2132044366604316981.Spec : Prop :=
  ∀ n, P2132044366604316981.a n = A213711 n

end A213711

/-!
# A213712: a(n) = A000120(A179016(n)).

The programs for A213712, there is no canonical definition to state claims against.
-/

/-! ## A213712.P3038930954642052467

`A000120(A179016(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A213712.P3038930954642052467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A179016 n).toNat

end

end A213712.P3038930954642052467

/-! ## A213712.P7991586999826020090

`A179016(n)-A179016(n-A057427(n))`
-/

namespace A213712.P7991586999826020090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 n - A179016 ((n : ℤ) - A057427 n).toNat

end

end A213712.P7991586999826020090

/-! ## A213712.P10018405757110843453

`A280700(A213715(n))`
-/

namespace A213712.P10018405757110843453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280700 (A213715 n).toNat

end

end A213712.P10018405757110843453

/-! ## A213712.P3737811389206161560

`A000120(eq[0, A213725(n)])`
-/

namespace A213712.P3737811389206161560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213712.P3737811389206161560

/-! ## A213712.P271600662943885677

`A000120(eq[0, A213727(n)])`
-/

namespace A213712.P271600662943885677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213712.P271600662943885677

/-! ## A213712.P8166113195990846495

`A000120(lt[A213725(n), 1])`
-/

namespace A213712.P8166113195990846495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A213712.P8166113195990846495

/-! ## A213712.P12538468418381573875

`A000120(lt[A213727(n), 1])`
-/

namespace A213712.P12538468418381573875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A213712.P12538468418381573875

/-! ## A213712.P5379401037054241175

`A000120(eq[0, char[A213713(n+1)]])`
-/

namespace A213712.P5379401037054241175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213713 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A213712.P5379401037054241175

/-! ## A213712.P931862453906104894

`A000120(A218603(n)+A213708(n))`
-/

namespace A213712.P931862453906104894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A218603 n + A213708 n).toNat

end

end A213712.P931862453906104894

/-! ## A213712.P9038541826999847868

`A000120(A173601(n)-A218604(n))`
-/

namespace A213712.P9038541826999847868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A173601 n - A218604 n).toNat

end

end A213712.P9038541826999847868

/-! ## A213712.P17408189006708265411

`A000120(A218616(A071542(A218616(n))))`
-/

namespace A213712.P17408189006708265411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A218616 (A071542 (A218616 n).toNat).toNat).toNat

end

end A213712.P17408189006708265411

/-! ## A213712.P13351156506542037434

`A352784(A213730(n))`
-/

namespace A213712.P13351156506542037434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352784 (A213730 n).toNat

end

end A213712.P13351156506542037434

/-! ## A213712.P857717461618318598

`A352784(A179016(n+1))`
-/

namespace A213712.P857717461618318598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352784 (A179016 (n + 1)).toNat

end

end A213712.P857717461618318598

/-!
# A213713: Complement of A179016.

The programs for A213713, there is no canonical definition to state claims against.
-/

/-! ## A213713.P1218900473311275700

`comp[A179016(n)]`
-/

namespace A213713.P1218900473311275700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A213713.P1218900473311275700

/-! ## A213713.P15474684717341162850

`comp[A218616(n)]`
-/

namespace A213713.P15474684717341162850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218616 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A213713.P15474684717341162850

/-! ## A213713.P13884161274430916415

`lt[0, A213727(n)]`
-/

namespace A213713.P13884161274430916415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213713.P13884161274430916415

/-! ## A213713.P16323861489941813776

`lt[1, A213725(n)+1]`
-/

namespace A213713.P16323861489941813776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213713.P16323861489941813776

/-! ## A213713.P1312296556046026099

`lt[1, A005187(n)*A213725(n)]`
-/

namespace A213713.P1312296556046026099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n * A213725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213713.P1312296556046026099

/-! ## A213713.P8317291740106776169

`∪[A055938(n+1), A213717(n+1)]`
-/

namespace A213713.P8317291740106776169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A213713.P8317291740106776169

/-! ## A213713.P14117289778079393442

`lt[A213725(A213725(n)²), A213725(n)]`
-/

namespace A213713.P14117289778079393442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 (A213725 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A213713.P14117289778079393442

/-! ## A213713.P11122826499334710281

`lt[A000120(n), n*A213725(n)]`
-/

namespace A213713.P11122826499334710281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A213725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A213713.P11122826499334710281

/-! ## A213713.P18112260798191239617

`eq[A000038(n)², A000038(A213725(n))]`
-/

namespace A213713.P18112260798191239617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A213725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213713.P18112260798191239617

/-! ## A213713.P791602668023423915

`A269397(A269390(A269398(n+1)))`
-/

namespace A213713.P791602668023423915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269397 (A269390 (A269398 (n + 1)).toNat).toNat

end

end A213713.P791602668023423915

/-! ## A213713.P15414239225167938228

`eq[0, A213719(n)]`
-/

namespace A213713.P15414239225167938228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213719 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213713.P15414239225167938228

/-! ## A213713.P10436691010149942407

`A269397(A269390(A269392(A269401(n+1))))`
-/

namespace A213713.P10436691010149942407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269397 (A269390 (A269392 (A269401 (n + 1)).toNat).toNat).toNat

end

end A213713.P10436691010149942407

/-!
# A213714: Inverse function for injection A005187.

The programs for A213714, the canonical program `A213714.P736048023233046129` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213714 has offset 0).

The definition of A213714 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046699, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213714.P736048023233046129

`A079559(n)*(A046699(n+2)-1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A213714

/-- `A079559(n)*(A046699(n+2)-1)` -/
def P736048023233046129.Spec : Prop :=
  ∀ n, P736048023233046129.a n = A213714 n

theorem P736048023233046129.correct : P736048023233046129.Spec := by
  intro n
  simp only [A213714]

end A213714

/-! ## A213714.P14999187078196866910

`Δ[C(A046699(n+1), 2)]`
-/

namespace A213714.P14999187078196866910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046699 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A213714.P14999187078196866910

namespace A213714

/-- `Δ[C(A046699(n+1), 2)]` -/
def P14999187078196866910.Spec : Prop :=
  ∀ n, P14999187078196866910.a n = A213714 n

end A213714

/-! ## A213714.P7360696666427299622

`Δ[C(floor(A007843(n)/2), 2)]`
-/

namespace A213714.P7360696666427299622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(A007843 n : ℚ) / 2⌋.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A213714.P7360696666427299622

namespace A213714

/-- `Δ[C(floor(A007843(n)/2), 2)]` -/
def P7360696666427299622.Spec : Prop :=
  ∀ n, P7360696666427299622.a n = A213714 n

end A213714

/-! ## A213714.P17774174313060542572

`A339451(n*A079559(n))`
-/

namespace A213714.P17774174313060542572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 ((n : ℤ) * A079559 n).toNat

end

end A213714.P17774174313060542572

namespace A213714

/-- `A339451(n*A079559(n))` -/
def P17774174313060542572.Spec : Prop :=
  ∀ n, P17774174313060542572.a n = A213714 n

end A213714

/-! ## A213714.P8936058775813232166

`(n-A234016(n))*A079559(n)`
-/

namespace A213714.P8936058775813232166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A234016 n) * A079559 n

end

end A213714.P8936058775813232166

namespace A213714

/-- `(n-A234016(n))*A079559(n)` -/
def P8936058775813232166.Spec : Prop :=
  ∀ n, P8936058775813232166.a n = A213714 n

end A213714

/-! ## A213714.P5781711215808024882

`A046699(n+1)%∑[A079559(n)]`
-/

namespace A213714.P5781711215808024882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046699 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213714.P5781711215808024882

namespace A213714

/-- `A046699(n+1)%∑[A079559(n)]` -/
def P5781711215808024882.Spec : Prop :=
  ∀ n, P5781711215808024882.a n = A213714 n

end A213714

/-! ## A213714.P869248495442478052

`A004526(A007843(n*A079559(n)))`
-/

namespace A213714.P869248495442478052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A007843 ((n : ℤ) * A079559 n).toNat).toNat

end

end A213714.P869248495442478052

namespace A213714

/-- `A004526(A007843(n*A079559(n)))` -/
def P869248495442478052.Spec : Prop :=
  ∀ n, P869248495442478052.a n = A213714 n

end A213714

/-! ## A213714.P16398391019111957903

`A004526(char[A005187(n)]*A007843(n))`
-/

namespace A213714.P16398391019111957903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007843 n).toNat

end

end A213714.P16398391019111957903

namespace A213714

/-- `A004526(char[A005187(n)]*A007843(n))` -/
def P16398391019111957903.Spec : Prop :=
  ∀ n, P16398391019111957903.a n = A213714 n

end A213714

/-! ## A213714.P16776574115751050645

`A007814(A182105(n+1)+1)*A339451(n)`
-/

namespace A213714.P16776574115751050645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A182105 (n + 1) + 1).toNat * A339451 n

end

end A213714.P16776574115751050645

namespace A213714

/-- `A007814(A182105(n+1)+1)*A339451(n)` -/
def P16776574115751050645.Spec : Prop :=
  ∀ n, P16776574115751050645.a n = A213714 n

end A213714

/-! ## A213714.P3221254930585701069

`A078898(A007843(n))%∑[A257265(n)²%3]`
-/

namespace A213714.P3221254930585701069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257265 n ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078898 (A007843 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213714.P3221254930585701069

namespace A213714

/-- `A078898(A007843(n))%∑[A257265(n)²%3]` -/
def P3221254930585701069.Spec : Prop :=
  ∀ n, P3221254930585701069.a n = A213714 n

end A213714

/-! ## A213714.P10236823911568924762

`char[A011371(2*(n+1))]*A078898(A007843(n))`
-/

namespace A213714.P10236823911568924762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A078898 (A007843 n).toNat

end

end A213714.P10236823911568924762

namespace A213714

/-- `char[A011371(2*(n+1))]*A078898(A007843(n))` -/
def P10236823911568924762.Spec : Prop :=
  ∀ n, P10236823911568924762.a n = A213714 n

end A213714

/-! ## A213714.P918227990823526599

`(∑[A079559(n)]-A182105(n+1))*A079559(n)`
-/

namespace A213714.P918227990823526599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - A182105 (n + 1)) * A079559 n

end

end A213714.P918227990823526599

namespace A213714

/-- `(∑[A079559(n)]-A182105(n+1))*A079559(n)` -/
def P918227990823526599.Spec : Prop :=
  ∀ n, P918227990823526599.a n = A213714 n

end A213714

/-! ## A213714.P3541154195155710435

`(A046699(n+2)-A046699(n+1))*A046699(n+1)`
-/

namespace A213714.P3541154195155710435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046699 (n + 2) - A046699 (n + 1)) * A046699 (n + 1)

end

end A213714.P3541154195155710435

namespace A213714

/-- `(A046699(n+2)-A046699(n+1))*A046699(n+1)` -/
def P3541154195155710435.Spec : Prop :=
  ∀ n, P3541154195155710435.a n = A213714 n

end A213714

/-! ## A213714.P12653175303248334784

`A129760(A108918(n+1))/2*A079559(n)`
-/

namespace A213714.P12653175303248334784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129760 (A108918 (n + 1)).toNat : ℚ) / 2 * (A079559 n : ℚ)

end

end A213714.P12653175303248334784

namespace A213714

/-- `A129760(A108918(n+1))/2*A079559(n)` -/
def P12653175303248334784.Spec : Prop :=
  ∀ n, P12653175303248334784.a n = (A213714 n : ℚ)

end A213714

/-! ## A213714.P18211657323279325986

`A004526(and(1, A108918(n+1))*A108918(n+1))`
-/

namespace A213714.P18211657323279325986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.land 1 (A108918 (n + 1)) * A108918 (n + 1)).toNat

end

end A213714.P18211657323279325986

namespace A213714

/-- `A004526(and(1, A108918(n+1))*A108918(n+1))` -/
def P18211657323279325986.Spec : Prop :=
  ∀ n, P18211657323279325986.a n = A213714 n

end A213714

/-! ## A213714.P11128494405247105027

`A213723(n*A079559(n))/2`
-/

namespace A213714.P11128494405247105027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213723 ((n : ℤ) * A079559 n).toNat : ℚ) / 2

end

end A213714.P11128494405247105027

namespace A213714

/-- `A213723(n*A079559(n))/2` -/
def P11128494405247105027.Spec : Prop :=
  ∀ n, P11128494405247105027.a n = (A213714 n : ℚ)

end A213714

/-! ## A213714.P13847314540302766606

`A213723(n)/2`
-/

namespace A213714.P13847314540302766606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213723 n : ℚ) / 2

end

end A213714.P13847314540302766606

namespace A213714

/-- `A213723(n)/2` -/
def P13847314540302766606.Spec : Prop :=
  ∀ n, P13847314540302766606.a n = (A213714 n : ℚ)

end A213714

/-! ## A213714.P250706878734237998

`A001281(A213723(n))`
-/

namespace A213714.P250706878734237998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A213723 n).toNat

end

end A213714.P250706878734237998

namespace A213714

/-- `A001281(A213723(n))` -/
def P250706878734237998.Spec : Prop :=
  ∀ n, P250706878734237998.a n = A213714 n

end A213714

/-! ## A213714.P4068589710862956373

`A004524(A213724(n))`
-/

namespace A213714.P4068589710862956373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A213724 n).toNat

end

end A213714.P4068589710862956373

namespace A213714

/-- `A004524(A213724(n))` -/
def P4068589710862956373.Spec : Prop :=
  ∀ n, P4068589710862956373.a n = A213714 n

end A213714

/-! ## A213714.P17684194308146251121

`A213724(n)%A123390(n+1)`
-/

namespace A213714.P17684194308146251121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213724 n) (A123390 (n + 1))

end

end A213714.P17684194308146251121

namespace A213714

/-- `A213724(n)%A123390(n+1)` -/
def P17684194308146251121.Spec : Prop :=
  ∀ n, P17684194308146251121.a n = A213714 n

end A213714

/-!
# A213715: a(n) = position of A179016(n) in A005187.

The programs for A213715, there is no canonical definition to state claims against.
-/

/-! ## A213715.P11864376071353087317

`A213714(A179016(n))`
-/

namespace A213715.P11864376071353087317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (A179016 n).toNat

end

end A213715.P11864376071353087317

/-! ## A213715.P11686223031093771850

`lt[A213725(A005187(n)), 1]`
-/

namespace A213715.P11686223031093771850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 (A005187 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A213715.P11686223031093771850

/-! ## A213715.P17109120494782263076

`A004526(A213730(n))`
-/

namespace A213715.P17109120494782263076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A213730 n).toNat

end

end A213715.P17109120494782263076

/-! ## A213715.P4356955664173945900

`A004526(A179016(n+1))`
-/

namespace A213715.P4356955664173945900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A179016 (n + 1)).toNat

end

end A213715.P4356955664173945900

/-! ## A213715.P10911957296896257721

`A090616(A213730(n+1))`
-/

namespace A213715.P10911957296896257721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090616 (A213730 (n + 1)).toNat

end

end A213715.P10911957296896257721

/-! ## A213715.P11151070164776015632

`A213714(A218616(A071542(A218616(n))))`
-/

namespace A213715.P11151070164776015632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (A218616 (A071542 (A218616 n).toNat).toNat).toNat

end

end A213715.P11151070164776015632

/-!
# A213716: Complement of A213715.

The programs for A213716, there is no canonical definition to state claims against.
-/

/-! ## A213716.P13279174587878571478

`comp[A213715(n)]`
-/

namespace A213716.P13279174587878571478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213715 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A213716.P13279174587878571478

/-! ## A213716.P6438916487648886190

`A046699(A213717(n+1)+1)`
-/

namespace A213716.P6438916487648886190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A213717 (n + 1) + 1).toNat

end

end A213716.P6438916487648886190

/-! ## A213716.P16327657585519604663

`lt[0, A213725(A005187(n))]`
-/

namespace A213716.P16327657585519604663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 (A005187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213716.P16327657585519604663

/-! ## A213716.P11072303474263679020

`lt[1, A213727(lt[A308187(n+1), 1])]`
-/

namespace A213716.P11072303474263679020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308187 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213716.P11072303474263679020

/-! ## A213716.P1203655531594279734

`lt[1, A213727(lt[A308188(n+1), 2])]`
-/

namespace A213716.P1203655531594279734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308188 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213716.P1203655531594279734

/-! ## A213716.P17166285030721597955

`lt[A257265(2*n), A213727(2*n+1)*A213727(2*n)]`
-/

namespace A213716.P17166285030721597955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257265 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 (2 * n + 1) * A213727 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A213716.P17166285030721597955

/-! ## A213716.P17822662147035077519

`A213714(A213717(n+1))`
-/

namespace A213716.P17822662147035077519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (A213717 (n + 1)).toNat

end

end A213716.P17822662147035077519

/-! ## A213716.P5043968481244101028

`eq[2*A213719(2*n+1), A213719(2*n)]`
-/

namespace A213716.P5043968481244101028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213719 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213719 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213716.P5043968481244101028

/-!
# A213717: Terms of A005187 not found in A179016.

The programs for A213717, there is no canonical definition to state claims against.
-/

/-! ## A213717.P2109476846422818055

`A005187(A213716(n+1))`
-/

namespace A213717.P2109476846422818055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A213716 (n + 1)).toNat

end

end A213717.P2109476846422818055

/-! ## A213717.P16904783899291136272

`∩[A213713(n+1), A005187(n)]`
-/

namespace A213717.P16904783899291136272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213717.P16904783899291136272

/-! ## A213717.P1868008436334762137

`lt[1, A213725(n)]`
-/

namespace A213717.P1868008436334762137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213717.P1868008436334762137

/-! ## A213717.P5146129179063430721

`lt[1, A213727(n)]`
-/

namespace A213717.P5146129179063430721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213717.P5146129179063430721

/-! ## A213717.P15884807572358624140

`filter[A213713(n+1), A079559(#)]`
-/

namespace A213717.P15884807572358624140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079559 (f1 j).toNat = 1) n)

end

end A213717.P15884807572358624140

/-! ## A213717.P6552064069838985632

`eq[2, A213731(n)]`
-/

namespace A213717.P6552064069838985632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213731 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213717.P6552064069838985632

/-! ## A213717.P2407800152285187847

`eq[A213719(n), A234017(n)]`
-/

namespace A213717.P2407800152285187847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213719 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213717.P2407800152285187847

/-! ## A213717.P11637782708543570740

`eq[1, A213719(n)+A079559(n)]`
-/

namespace A213717.P11637782708543570740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213719 n + A079559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213717.P11637782708543570740

/-! ## A213717.P3612404450059133208

`eq[A213719(n), A215020(n+1)]`
-/

namespace A213717.P3612404450059133208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213719 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215020 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213717.P3612404450059133208

/-! ## A213717.P17842023935214394383

`eq[A213719(n), A308187(n+1)]`
-/

namespace A213717.P17842023935214394383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213719 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308187 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213717.P17842023935214394383

/-!
# A213718: n occurs A213712(n) times.

The programs for A213718, there is no canonical definition to state claims against.
-/

/-! ## A213718.P16810961718935492286

`∑[A213719(n)]`
-/

namespace A213718.P16810961718935492286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213718.P16810961718935492286

/-! ## A213718.P713124184529526499

`A269371(n)+1`
-/

namespace A213718.P713124184529526499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269371 n + 1

end

end A213718.P713124184529526499

/-! ## A213718.P2623964492916666354

`∑[char[A179016(n)]]`
-/

namespace A213718.P2623964492916666354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213718.P2623964492916666354

/-! ## A213718.P6296041114706078113

`∑[char[A218616(n)]]`
-/

namespace A213718.P6296041114706078113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218616 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213718.P6296041114706078113

/-! ## A213718.P12837538249605623580

`∑[A213731(n)%2]`
-/

namespace A213718.P12837538249605623580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213731 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213718.P12837538249605623580

/-! ## A213718.P17434548872605374528

`∑[char[∑[A213712(n)]]]`
-/

namespace A213718.P17434548872605374528
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213712 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213718.P17434548872605374528

/-! ## A213718.P12155352350566778805

`∑[floor(acot(A213725(n)))]`
-/

namespace A213718.P12155352350566778805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A213725 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213718.P12155352350566778805

/-! ## A213718.P14081858702928841925

`∑[floor(acot(A213727(n)))]`
-/

namespace A213718.P14081858702928841925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A213727 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213718.P14081858702928841925

/-! ## A213718.P2394791168982346773

`∑[char[comp[A213713(n+1)]]]`
-/

namespace A213718.P2394791168982346773
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213713 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213718.P2394791168982346773

/-!
# A213719: Characteristic function for A179016.

The programs for A213719, there is no canonical definition to state claims against.
-/

/-! ## A213719.P5642866934782703999

`char[A179016(n)]`
-/

namespace A213719.P5642866934782703999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A213719.P5642866934782703999

/-! ## A213719.P7259617543317508395

`char[A218616(n)]`
-/

namespace A213719.P7259617543317508395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218616 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A213719.P7259617543317508395

/-! ## A213719.P3361791425334071738

`A213731(n)%2`
-/

namespace A213719.P3361791425334071738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213731 n) 2

end

end A213719.P3361791425334071738

/-! ## A213719.P4553090513462802109

`char[∑[A213712(n)]]`
-/

namespace A213719.P4553090513462802109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213712 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A213719.P4553090513462802109

/-! ## A213719.P5013647909615824019

`floor(acot(A213725(n)))`
-/

namespace A213719.P5013647909615824019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A213725 n : ℝ)⌋

end

end A213719.P5013647909615824019

/-! ## A213719.P8048421281048395119

`floor(acot(A213727(n)))`
-/

namespace A213719.P8048421281048395119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A213727 n : ℝ)⌋

end

end A213719.P8048421281048395119

/-! ## A213719.P10802281811337275348

`char[comp[A213713(n+1)]]`
-/

namespace A213719.P10802281811337275348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213713 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A213719.P10802281811337275348

/-! ## A213719.P18057848974240615479

`A000007(A213725(n))`
-/

namespace A213719.P18057848974240615479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A213725 n).toNat

end

end A213719.P18057848974240615479

/-! ## A213719.P12053112700040693505

`A000007(A213727(n))`
-/

namespace A213719.P12053112700040693505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A213727 n).toNat

end

end A213719.P12053112700040693505

/-! ## A213719.P6148534403254284623

`A063524(A213727(n)+1)`
-/

namespace A213719.P6148534403254284623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A213727 n + 1).toNat

end

end A213719.P6148534403254284623

/-! ## A213719.P10231484622891743565

`and(A000328(n), A213731(n))`
-/

namespace A213719.P10231484622891743565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A213731 n)

end

end A213719.P10231484622891743565

/-! ## A213719.P12133565085101758614

`and(A001513(n), A213731(n))`
-/

namespace A213719.P12133565085101758614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001513 n) (A213731 n)

end

end A213719.P12133565085101758614

/-! ## A213719.P13944394700653243490

`and(A001535(n), A213731(n))`
-/

namespace A213719.P13944394700653243490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A213731 n)

end

end A213719.P13944394700653243490

/-! ## A213719.P16225941581745066362

`and(A001546(n), A213731(n))`
-/

namespace A213719.P16225941581745066362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A213731 n)

end

end A213719.P16225941581745066362

/-! ## A213719.P16032818743420110373

`and(A001844(n), A213731(n))`
-/

namespace A213719.P16032818743420110373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 n) (A213731 n)

end

end A213719.P16032818743420110373

/-! ## A213719.P13643543678936194827

`and(A001846(n), A213731(n))`
-/

namespace A213719.P13643543678936194827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A213731 n)

end

end A213719.P13643543678936194827

/-! ## A213719.P3120286718533066912

`and(A001848(n), A213731(n))`
-/

namespace A213719.P3120286718533066912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001848 n) (A213731 n)

end

end A213719.P3120286718533066912

/-!
# A213720: a(0)=0, a(1)=0; for n>1, a(n) = a(n-1) + (n+2)*a(n-2) + 1.

The programs for A213720, the canonical program `A213720.P1820650890932697031` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213720 has offset 0).

The definition of A213720 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)+(n+2)*a(n-2)` (program `A213720.P1820650890932697031`, by `A213720.P1820650890932697031.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213720.P1820650890932697031

`1+a(n-1)+(n+2)*a(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213720

/-- `1+a(n-1)+(n+2)*a(n-2)` -/
def P1820650890932697031.Spec : Prop :=
  ∀ n, (P1820650890932697031.a n : ℤ) = A213720 n

theorem P1820650890932697031.correct : P1820650890932697031.Spec := by
  intro n
  simp only [A213720]

end A213720

/-! ## A213720.P10398345478240385177

`A185308(n+2)-A000932(n+2)/3`
-/

namespace A213720.P10398345478240385177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185308 (n + 2) : ℚ) - (A000932 (n + 2) : ℚ) / 3

end

end A213720.P10398345478240385177

namespace A213720

/-- `A185308(n+2)-A000932(n+2)/3` -/
def P10398345478240385177.Spec : Prop :=
  ∀ n, P10398345478240385177.a n = (A213720 n : ℚ)

end A213720

/-!
# A213721: Smallest prime that is the sum of four nonzero squares in exactly n ways, or -1 if there is no such prime.

The programs for A213721, there is no canonical definition to state claims against.
-/

/-! ## A213721.P9547585908010894084

`p?[A125716(2*(n+1))+A125692(2*n+1)]`
-/

namespace A213721.P9547585908010894084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125716 (2 * (n + 1)) + A125692 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A213721.P9547585908010894084

/-! ## A213721.P6527425700315788631

`p?[A085257(p?[A037456(n)])]`
-/

namespace A213721.P6527425700315788631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085257 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A213721.P6527425700315788631

/-!
# A213722: a(n) = number of terms in A213717 whose magnitude is in range [(2^n)-1,(2^(n+1))-2] (or equally, in range [(2^n),(2^(n+1))-1]).

The programs for A213722, the canonical program `A213722.P18332226970150710010` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213722 has offset 0).

The definition of A213722 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213709, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213722.P18332226970150710010

`A011782(n)-A213709(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A213722

/-- `A011782(n)-A213709(n)` -/
def P18332226970150710010.Spec : Prop :=
  ∀ n, P18332226970150710010.a n = A213722 n

theorem P18332226970150710010.correct : P18332226970150710010.Spec := by
  intro n
  simp only [A213722]

end A213722

/-! ## A213722.P707183065251046332

`Δ[floor(2^(n-1))-A213710(n)]`
-/

namespace A213722.P707183065251046332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A213710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213722.P707183065251046332

namespace A213722

/-- `Δ[floor(2^(n-1))-A213710(n)]` -/
def P707183065251046332.Spec : Prop :=
  ∀ n, P707183065251046332.a n = A213722 n

end A213722

/-! ## A213722.P15909842778290281885

`ceil(2^(n-1))-Δ[A218600(n)]`
-/

namespace A213722.P15909842778290281885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - (f1 (n + 1) - f1 n)

end

end A213722.P15909842778290281885

namespace A213722

/-- `ceil(2^(n-1))-Δ[A218600(n)]` -/
def P15909842778290281885.Spec : Prop :=
  ∀ n, P15909842778290281885.a n = A213722 n

end A213722

/-! ## A213722.P272909050331510228

`ceil(2^(n-1))-∑[A226060(abs(1-n))]`
-/

namespace A213722.P272909050331510228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226060 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213722.P272909050331510228

namespace A213722

/-- `ceil(2^(n-1))-∑[A226060(abs(1-n))]` -/
def P272909050331510228.Spec : Prop :=
  ∀ n, P272909050331510228.a n = A213722 n

end A213722

/-! ## A213722.P15714267677430726913

`A011782(n)-Δ[A213710(n)]`
-/

namespace A213722.P15714267677430726913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (f1 (n + 1) - f1 n)

end

end A213722.P15714267677430726913

namespace A213722

/-- `A011782(n)-Δ[A213710(n)]` -/
def P15714267677430726913.Spec : Prop :=
  ∀ n, P15714267677430726913.a n = A213722 n

end A213722

/-!
# A213723: a(n) = smallest natural number x such that x=n+A000120(x), otherwise zero.

The programs for A213723, the canonical program `A213723.P16906504039314298671` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213723 has offset 0).

The definition of A213723 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213714, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213723.P16906504039314298671

`2*A213714(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A213723

/-- `2*A213714(n)` -/
def P16906504039314298671.Spec : Prop :=
  ∀ n, P16906504039314298671.a n = A213723 n

theorem P16906504039314298671.correct : P16906504039314298671.Spec := by
  intro n
  simp only [A213723]

end A213723

/-! ## A213723.P5493122486507377974

`A005843(A213714(n))`
-/

namespace A213723.P5493122486507377974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213714 n).toNat

end

end A213723.P5493122486507377974

namespace A213723

/-- `A005843(A213714(n))` -/
def P5493122486507377974.Spec : Prop :=
  ∀ n, P5493122486507377974.a n = A213723 n

end A213723

/-! ## A213723.P16570112914283748830

`Δ[2*C(A046699(n+1), 2)]`
-/

namespace A213723.P16570112914283748830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A046699 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A213723.P16570112914283748830

namespace A213723

/-- `Δ[2*C(A046699(n+1), 2)]` -/
def P16570112914283748830.Spec : Prop :=
  ∀ n, P16570112914283748830.a n = A213723 n

end A213723

/-! ## A213723.P5066532740789034294

`A029578(A213724(n))`
-/

namespace A213723.P5066532740789034294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A213724 n).toNat

end

end A213723.P5066532740789034294

namespace A213723

/-- `A029578(A213724(n))` -/
def P5066532740789034294.Spec : Prop :=
  ∀ n, P5066532740789034294.a n = A213723 n

end A213723

/-! ## A213723.P16954226787780794353

`A004524(2*A213724(n))`
-/

namespace A213723.P16954226787780794353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (2 * A213724 n).toNat

end

end A213723.P16954226787780794353

namespace A213723

/-- `A004524(2*A213724(n))` -/
def P16954226787780794353.Spec : Prop :=
  ∀ n, P16954226787780794353.a n = A213723 n

end A213723

/-! ## A213723.P10215374499278607435

`A213724(n)-A079559(n)`
-/

namespace A213723.P10215374499278607435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213724 n - A079559 n

end

end A213723.P10215374499278607435

namespace A213723

/-- `A213724(n)-A079559(n)` -/
def P10215374499278607435.Spec : Prop :=
  ∀ n, P10215374499278607435.a n = A213723 n

end A213723

/-! ## A213723.P15908373517215180459

`lcm(A007843(n), A213714(n))`
-/

namespace A213723.P15908373517215180459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007843 n) (A213714 n)

end

end A213723.P15908373517215180459

namespace A213723

/-- `lcm(A007843(n), A213714(n))` -/
def P15908373517215180459.Spec : Prop :=
  ∀ n, (P15908373517215180459.a n : ℤ) = A213723 n

end A213723

/-! ## A213723.P14306149687864997519

`A213714(comp[A005187(n)+1])`
-/

namespace A213723.P14306149687864997519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A213723.P14306149687864997519

namespace A213723

/-- `A213714(comp[A005187(n)+1])` -/
def P14306149687864997519.Spec : Prop :=
  ∀ n, P14306149687864997519.a n = A213723 n

end A213723

/-! ## A213723.P9812677927057930225

`A213714(comp[A011371(n)+1])`
-/

namespace A213723.P9812677927057930225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A213723.P9812677927057930225

namespace A213723

/-- `A213714(comp[A011371(n)+1])` -/
def P9812677927057930225.Spec : Prop :=
  ∀ n, P9812677927057930225.a n = A213723 n

end A213723

/-! ## A213723.P7490927644690300790

`A213714(A080578(n+1)-1)`
-/

namespace A213723.P7490927644690300790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (A080578 (n + 1) - 1).toNat

end

end A213723.P7490927644690300790

namespace A213723

/-- `A213714(A080578(n+1)-1)` -/
def P7490927644690300790.Spec : Prop :=
  ∀ n, P7490927644690300790.a n = A213723 n

end A213723

/-! ## A213723.P10551094942009406139

`A004277(A213714(n)+1)-2`
-/

namespace A213723.P10551094942009406139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A213714 n + 1).toNat - 2

end

end A213723.P10551094942009406139

namespace A213723

/-- `A004277(A213714(n)+1)-2` -/
def P10551094942009406139.Spec : Prop :=
  ∀ n, P10551094942009406139.a n = A213723 n

end A213723

/-! ## A213723.P15772855183923267686

`2*A339451(n*A079559(n))`
-/

namespace A213723.P15772855183923267686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339451 ((n : ℤ) * A079559 n).toNat

end

end A213723.P15772855183923267686

namespace A213723

/-- `2*A339451(n*A079559(n))` -/
def P15772855183923267686.Spec : Prop :=
  ∀ n, P15772855183923267686.a n = A213723 n

end A213723

/-! ## A213723.P5866198043371027158

`(A108918(n+1)-1)*A079559(n)`
-/

namespace A213723.P5866198043371027158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108918 (n + 1) - 1) * A079559 n

end

end A213723.P5866198043371027158

namespace A213723

/-- `(A108918(n+1)-1)*A079559(n)` -/
def P5866198043371027158.Spec : Prop :=
  ∀ n, P5866198043371027158.a n = A213723 n

end A213723

/-! ## A213723.P17773311127509676261

`(A080468(n+2)+n)*A079559(n)`
-/

namespace A213723.P17773311127509676261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080468 (n + 2) + (n : ℤ)) * A079559 n

end

end A213723.P17773311127509676261

namespace A213723

/-- `(A080468(n+2)+n)*A079559(n)` -/
def P17773311127509676261.Spec : Prop :=
  ∀ n, P17773311127509676261.a n = A213723 n

end A213723

/-! ## A213723.P14527610210154055306

`char[A011371(2*(n+1))]*A007843(n)`
-/

namespace A213723.P14527610210154055306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007843 n

end

end A213723.P14527610210154055306

namespace A213723

/-- `char[A011371(2*(n+1))]*A007843(n)` -/
def P14527610210154055306.Spec : Prop :=
  ∀ n, P14527610210154055306.a n = A213723 n

end A213723

/-! ## A213723.P14881249404368325517

`2*A046699(n+1)%∑[A079559(n)]`
-/

namespace A213723.P14881249404368325517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A046699 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213723.P14881249404368325517

namespace A213723

/-- `2*A046699(n+1)%∑[A079559(n)]` -/
def P14881249404368325517.Spec : Prop :=
  ∀ n, P14881249404368325517.a n = A213723 n

end A213723

/-! ## A213723.P14947728938265218874

`A007843(n)%A046699(comp[A005187(n)])`
-/

namespace A213723.P14947728938265218874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007843 n) (A046699 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A213723.P14947728938265218874

namespace A213723

/-- `A007843(n)%A046699(comp[A005187(n)])` -/
def P14947728938265218874.Spec : Prop :=
  ∀ n, P14947728938265218874.a n = A213723 n

end A213723

/-! ## A213723.P1711101563407877124

`A079559(n)*A129760(A108918(n+1))`
-/

namespace A213723.P1711101563407877124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n * A129760 (A108918 (n + 1)).toNat

end

end A213723.P1711101563407877124

namespace A213723

/-- `A079559(n)*A129760(A108918(n+1))` -/
def P1711101563407877124.Spec : Prop :=
  ∀ n, P1711101563407877124.a n = A213723 n

end A213723

/-! ## A213723.P8034076702872990645

`A213714(A000038(n)+n)+A213714(n)`
-/

namespace A213723.P8034076702872990645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (A000038 n + (n : ℤ)).toNat + A213714 n

end

end A213723.P8034076702872990645

namespace A213723

/-- `A213714(A000038(n)+n)+A213714(n)` -/
def P8034076702872990645.Spec : Prop :=
  ∀ n, P8034076702872990645.a n = A213723 n

end A213723

/-! ## A213723.P2282626034772005625

`A213714(A213714(n)+A213714(n)+n)`
-/

namespace A213723.P2282626034772005625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (A213714 n + (A213714 n + (n : ℤ))).toNat

end

end A213723.P2282626034772005625

namespace A213723

/-- `A213714(A213714(n)+A213714(n)+n)` -/
def P2282626034772005625.Spec : Prop :=
  ∀ n, P2282626034772005625.a n = A213723 n

end A213723

/-!
# A213724: Largest natural number x such that x = n + A000120(x), or zero if no such number exists.

The programs for A213724, the canonical program `A213724.P12963400970453454858` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213724 has offset 0).

The definition of A213724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213724.P7416422331828366707

`Δ[floor((A007843(n)/2)²)]`
-/

namespace A213724.P7416422331828366707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A007843 n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213724.P7416422331828366707

namespace A213724

/-- `Δ[floor((A007843(n)/2)²)]` -/
def P7416422331828366707.Spec : Prop :=
  ∀ n, P7416422331828366707.a n = A213724 n

end A213724

/-! ## A213724.P4615272510083897960

`Δ[(n+1-A288934(n+1))²]`
-/

namespace A213724.P4615272510083897960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A288934 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213724.P4615272510083897960

namespace A213724

/-- `Δ[(n+1-A288934(n+1))²]` -/
def P4615272510083897960.Spec : Prop :=
  ∀ n, P4615272510083897960.a n = A213724 n

end A213724

/-! ## A213724.P12963400970453454858

`Δ[(∑[A079559(abs(1-n))]-1)²]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A213724

/-- `Δ[(∑[A079559(abs(1-n))]-1)²]` -/
def P12963400970453454858.Spec : Prop :=
  ∀ n, P12963400970453454858.a n = A213724 n

theorem P12963400970453454858.correct : P12963400970453454858.Spec := by
  intro n
  simp only [A213724]

end A213724

/-! ## A213724.P6202100553095036759

`Δ[(C(2, n+2)-A046699(n+1))²]`
-/

namespace A213724.P6202100553095036759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 2 (n + 2) : ℤ) - A046699 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213724.P6202100553095036759

namespace A213724

/-- `Δ[(C(2, n+2)-A046699(n+1))²]` -/
def P6202100553095036759.Spec : Prop :=
  ∀ n, P6202100553095036759.a n = A213724 n

end A213724

/-! ## A213724.P5035343657926830198

`A193356(A108918(n+1))`
-/

namespace A213724.P5035343657926830198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (A108918 (n + 1)).toNat

end

end A213724.P5035343657926830198

namespace A213724

/-- `A193356(A108918(n+1))` -/
def P5035343657926830198.Spec : Prop :=
  ∀ n, P5035343657926830198.a n = A213724 n

end A213724

/-! ## A213724.P5057317632959533737

`A213723(n)+A079559(n)`
-/

namespace A213724.P5057317632959533737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213723 n + A079559 n

end

end A213724.P5057317632959533737

namespace A213724

/-- `A213723(n)+A079559(n)` -/
def P5057317632959533737.Spec : Prop :=
  ∀ n, P5057317632959533737.a n = A213724 n

end A213724

/-! ## A213724.P13711273667609312193

`A213714(comp[A005187(n)-1])`
-/

namespace A213724.P13711273667609312193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A213724.P13711273667609312193

namespace A213724

/-- `A213714(comp[A005187(n)-1])` -/
def P13711273667609312193.Spec : Prop :=
  ∀ n, P13711273667609312193.a n = A213724 n

end A213724

/-! ## A213724.P6690995433910530778

`A213714(comp[A011371(n)-1])`
-/

namespace A213724.P6690995433910530778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A213724.P6690995433910530778

namespace A213724

/-- `A213714(comp[A011371(n)-1])` -/
def P6690995433910530778.Spec : Prop :=
  ∀ n, P6690995433910530778.a n = A213724 n

end A213724

/-! ## A213724.P16912898638371450171

`A213714(A055938(n+1)-1)`
-/

namespace A213724.P16912898638371450171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (A055938 (n + 1) - 1).toNat

end

end A213724.P16912898638371450171

namespace A213724

/-- `A213714(A055938(n+1)-1)` -/
def P16912898638371450171.Spec : Prop :=
  ∀ n, P16912898638371450171.a n = A213724 n

end A213724

/-! ## A213724.P12015406277547517172

`A213714(eq[0, A213714(n+1)])`
-/

namespace A213724.P12015406277547517172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213724.P12015406277547517172

namespace A213724

/-- `A213714(eq[0, A213714(n+1)])` -/
def P12015406277547517172.Spec : Prop :=
  ∀ n, P12015406277547517172.a n = A213724 n

end A213724

/-! ## A213724.P2514236508735245846

`A213714(lt[A079559(n+1), 1])`
-/

namespace A213724.P2514236508735245846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A213724.P2514236508735245846

namespace A213724

/-- `A213714(lt[A079559(n+1), 1])` -/
def P2514236508735245846.Spec : Prop :=
  ∀ n, P2514236508735245846.a n = A213724 n

end A213724

/-! ## A213724.P17480349205172992725

`A213714(lt[A213714(n+1), 1])`
-/

namespace A213724.P17480349205172992725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A213724.P17480349205172992725

namespace A213724

/-- `A213714(lt[A213714(n+1), 1])` -/
def P17480349205172992725.Spec : Prop :=
  ∀ n, P17480349205172992725.a n = A213724 n

end A213724

/-! ## A213724.P15234374469117982380

`A213714(lt[A079559(n), 1]-1)`
-/

namespace A213724.P15234374469117982380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A213724.P15234374469117982380

namespace A213724

/-- `A213714(lt[A079559(n), 1]-1)` -/
def P15234374469117982380.Spec : Prop :=
  ∀ n, P15234374469117982380.a n = A213724 n

end A213724

/-! ## A213724.P11937863332756998864

`A079559(n)*A108918(n+1)`
-/

namespace A213724.P11937863332756998864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n * A108918 (n + 1)

end

end A213724.P11937863332756998864

namespace A213724

/-- `A079559(n)*A108918(n+1)` -/
def P11937863332756998864.Spec : Prop :=
  ∀ n, P11937863332756998864.a n = A213724 n

end A213724

/-! ## A213724.P4143328339750236393

`A079559(n)+2*A213714(n)`
-/

namespace A213724.P4143328339750236393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n + 2 * A213714 n

end

end A213724.P4143328339750236393

namespace A213724

/-- `A079559(n)+2*A213714(n)` -/
def P4143328339750236393.Spec : Prop :=
  ∀ n, P4143328339750236393.a n = A213724 n

end A213724

/-! ## A213724.P13761833436916401488

`A213714(A100661(n+1)+2*n)`
-/

namespace A213724.P13761833436916401488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (A100661 (n + 1) + (2 * n : ℤ)).toNat

end

end A213724.P13761833436916401488

namespace A213724

/-- `A213714(A100661(n+1)+2*n)` -/
def P13761833436916401488.Spec : Prop :=
  ∀ n, P13761833436916401488.a n = A213724 n

end A213724

/-! ## A213724.P3870952368968090681

`(A100661(n+1)+n)*A079559(n)`
-/

namespace A213724.P3870952368968090681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100661 (n + 1) + (n : ℤ)) * A079559 n

end

end A213724.P3870952368968090681

namespace A213724

/-- `(A100661(n+1)+n)*A079559(n)` -/
def P3870952368968090681.Spec : Prop :=
  ∀ n, P3870952368968090681.a n = A213724 n

end A213724

/-! ## A213724.P4387337028499610623

`(A080578(n+1)-n)*A079559(n)`
-/

namespace A213724.P4387337028499610623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080578 (n + 1) - (n : ℤ)) * A079559 n

end

end A213724.P4387337028499610623

namespace A213724

/-- `(A080578(n+1)-n)*A079559(n)` -/
def P4387337028499610623.Spec : Prop :=
  ∀ n, P4387337028499610623.a n = A213724 n

end A213724

/-! ## A213724.P6981035471344035972

`xor(A004277(A213714(n)), A057427(n))`
-/

namespace A213724.P6981035471344035972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004277 (A213714 n).toNat) (A057427 n)

end

end A213724.P6981035471344035972

namespace A213724

/-- `xor(A004277(A213714(n)), A057427(n))` -/
def P6981035471344035972.Spec : Prop :=
  ∀ n, P6981035471344035972.a n = A213724 n

end A213724

/-! ## A213724.P6885254033932376853

`A213714(A046699(A055938(n+1))+n)`
-/

namespace A213724.P6885254033932376853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (A046699 (A055938 (n + 1)).toNat + (n : ℤ)).toNat

end

end A213724.P6885254033932376853

namespace A213724

/-- `A213714(A046699(A055938(n+1))+n)` -/
def P6885254033932376853.Spec : Prop :=
  ∀ n, P6885254033932376853.a n = A213724 n

end A213724

/-!
# A213725: a(n)=0 if n is in the infinite trunk of Carl White's beanstalk (i.e., in A179016), otherwise 1 + number of steps to reach the farthest leaf in that finite branch of the beanstalk.

The programs for A213725, there is no canonical definition to state claims against.
-/

/-! ## A213725.P11663131357625611758

`A100073(3^A213727(n))`
-/

namespace A213725.P11663131357625611758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100073 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A213727 n : ℤ))).toNat

end

end A213725.P11663131357625611758

/-! ## A213725.P6685775615275457023

`A139352(3^A213727(n))`
-/

namespace A213725.P6685775615275457023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A213727 n : ℤ))).toNat

end

end A213725.P6685775615275457023

/-! ## A213725.P11664088835785217772

`A001221(A000984(A213727(n)))`
-/

namespace A213725.P11664088835785217772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000984 (A213727 n).toNat).toNat

end

end A213725.P11664088835785217772

/-!
# A213726: 

The programs for A213726, there is no canonical definition to state claims against.
-/

/-! ## A213726.P4022112895024245945

`ceil(A213727(n)/2)`
-/

namespace A213726.P4022112895024245945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A213727 n : ℚ) / 2⌉

end

end A213726.P4022112895024245945

/-! ## A213726.P2428961429551790367

`A001057(A213727(n))`
-/

namespace A213726.P2428961429551790367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A213727 n).toNat

end

end A213726.P2428961429551790367

/-! ## A213726.P16799074548598490813

`A004526(A213727(n)+1)`
-/

namespace A213726.P16799074548598490813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A213727 n + 1).toNat

end

end A213726.P16799074548598490813

/-! ## A213726.P916056123292880158

`A025480(A213727(n)+1)`
-/

namespace A213726.P916056123292880158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A213727 n + 1).toNat

end

end A213726.P916056123292880158

/-! ## A213726.P12672097107457606805

`A123108(A213727(n)+1)`
-/

namespace A213726.P12672097107457606805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A213727 n + 1).toNat

end

end A213726.P12672097107457606805

/-! ## A213726.P16912406747201346570

`A028242(xor(1, A213727(n)))`
-/

namespace A213726.P16912406747201346570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A213727 n)).toNat

end

end A213726.P16912406747201346570

/-! ## A213726.P15042781646080295059

`A100073(2^(A213727(n)+2))`
-/

namespace A213726.P15042781646080295059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100073 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A213727 n + 2 : ℤ))).toNat

end

end A213726.P15042781646080295059

/-!
# A213728: Binary complement of A213729.

The programs for A213728, there is no canonical definition to state claims against.
-/

/-! ## A213728.P1445365403769965981

`1-A213729(n)`
-/

namespace A213728.P1445365403769965981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A213729 n

end

end A213728.P1445365403769965981

/-! ## A213728.P4523829767714251440

`log2(gcd(2, A179016(n)))`
-/

namespace A213728.P4523829767714251440
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A179016 n) : ℝ)

end

end A213728.P4523829767714251440

/-! ## A213728.P2264407049469877407

`1-char[A213733(n+1)]`
-/

namespace A213728.P2264407049469877407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213733 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A213728.P2264407049469877407

/-! ## A213728.P5151853527837213905

`1-char[A218773(n+1)+1]`
-/

namespace A213728.P5151853527837213905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218773 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A213728.P5151853527837213905

/-! ## A213728.P12037311955501516186

`A010059(A213715(n))`
-/

namespace A213728.P12037311955501516186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A213715 n).toNat

end

end A213728.P12037311955501516186

/-! ## A213728.P13312395185550754893

`A000007(n*A213729(n))`
-/

namespace A213728.P13312395185550754893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A213729 n).toNat

end

end A213728.P13312395185550754893

/-! ## A213728.P9329704158781764859

`A257800(A218602(n+2)+2)`
-/

namespace A213728.P9329704158781764859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257800 (A218602 (n + 2) + 2).toNat

end

end A213728.P9329704158781764859

/-! ## A213728.P16964980123259905650

`and(1, A020639(A179016(n)+1))`
-/

namespace A213728.P16964980123259905650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A020639 (A179016 n + 1).toNat)

end

end A213728.P16964980123259905650

/-! ## A213728.P17135609084535195936

`A057427(and(1, 1-A179016(n)))`
-/

namespace A213728.P17135609084535195936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Int.land 1 (1 - A179016 n)).toNat

end

end A213728.P17135609084535195936

/-! ## A213728.P772664790061030006

`A178334(and(1, 1-A179016(n)))`
-/

namespace A213728.P772664790061030006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (Int.land 1 (1 - A179016 n)).toNat

end

end A213728.P772664790061030006

/-! ## A213728.P11962266570166991827

`A179016(and(1, 1-A179016(n)))`
-/

namespace A213728.P11962266570166991827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 (Int.land 1 (1 - A179016 n)).toNat

end

end A213728.P11962266570166991827

/-! ## A213728.P597472540293207891

`A130706((n+1)*A213729(n))`
-/

namespace A213728.P597472540293207891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 ((n + 1 : ℤ) * A213729 n).toNat

end

end A213728.P597472540293207891

/-! ## A213728.P11099251008847971461

`A285476((n+1)*A213729(n))`
-/

namespace A213728.P11099251008847971461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 ((n + 1 : ℤ) * A213729 n).toNat

end

end A213728.P11099251008847971461

/-! ## A213728.P1627757590902835587

`A000038(n*A213729(n))/2`
-/

namespace A213728.P1627757590902835587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 ((n : ℤ) * A213729 n).toNat : ℚ) / 2

end

end A213728.P1627757590902835587

/-! ## A213728.P17571835367999198215

`and(1, A179016(n)+A158388(n))`
-/

namespace A213728.P17571835367999198215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A179016 n + A158388 n)

end

end A213728.P17571835367999198215

/-! ## A213728.P5425651079180881959

`A000035(A213729(n)+2*n+1)`
-/

namespace A213728.P5425651079180881959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A213729 n + (2 * n + 1 : ℤ)).toNat

end

end A213728.P5425651079180881959

/-! ## A213728.P11891265635069819581

`A001221(and(1, -(A179016(n)+1))+1)`
-/

namespace A213728.P11891265635069819581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.land 1 (-(A179016 n + 1)) + 1).toNat

end

end A213728.P11891265635069819581

/-! ## A213728.P7096597664161924481

`A230264(2*and(1, -A179016(n))+4)`
-/

namespace A213728.P7096597664161924481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230264 (2 * Int.land 1 (-A179016 n) + 4).toNat

end

end A213728.P7096597664161924481

/-! ## A213728.P2814156609945311380

`A059841(A179016(n))`
-/

namespace A213728.P2814156609945311380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A179016 n).toNat

end

end A213728.P2814156609945311380

/-! ## A213728.P7996054461818109178

`A179020(A213730(n))`
-/

namespace A213728.P7996054461818109178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179020 (A213730 n).toNat

end

end A213728.P7996054461818109178

/-!
# A213729: Sequence A179016 reduced modulo 2.

The programs for A213729, there is no canonical definition to state claims against.
-/

/-! ## A213729.P10850365475016250286

`A000035(A179016(n))`
-/

namespace A213729.P10850365475016250286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A179016 n).toNat

end

end A213729.P10850365475016250286

/-! ## A213729.P12305828564478153117

`1-A213728(n)`
-/

namespace A213729.P12305828564478153117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A213728 n

end

end A213729.P12305828564478153117

/-! ## A213729.P5443327748229157293

`char[A213733(n+1)]`
-/

namespace A213729.P5443327748229157293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A213729.P5443327748229157293

/-! ## A213729.P7776177693095179921

`∑[A213712(n)]%2`
-/

namespace A213729.P7776177693095179921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A213729.P7776177693095179921

/-! ## A213729.P16102563675821361255

`char[A218773(n+1)+1]`
-/

namespace A213729.P16102563675821361255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218773 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A213729.P16102563675821361255

/-! ## A213729.P14003369529162104106

`A010060(A213715(n))`
-/

namespace A213729.P14003369529162104106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A213715 n).toNat

end

end A213729.P14003369529162104106

/-! ## A213729.P10147797805787887776

`and(A054977(n), A179016(n))`
-/

namespace A213729.P10147797805787887776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A179016 n)

end

end A213729.P10147797805787887776

/-! ## A213729.P9074380185028842514

`and(A057427(n), A179016(n))`
-/

namespace A213729.P9074380185028842514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A179016 n)

end

end A213729.P9074380185028842514

/-! ## A213729.P17579742331989130651

`and(A158388(n), A179016(n))`
-/

namespace A213729.P17579742331989130651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A179016 n)

end

end A213729.P17579742331989130651

/-! ## A213729.P17182397484140553802

`and(A043545(2*n), A179016(n))`
-/

namespace A213729.P17182397484140553802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043545 (2 * n)) (A179016 n)

end

end A213729.P17182397484140553802

/-! ## A213729.P16892981469255239434

`A000035(A213728(n)+2*n+1)`
-/

namespace A213729.P16892981469255239434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A213728 n + (2 * n + 1 : ℤ)).toNat

end

end A213729.P16892981469255239434

/-! ## A213729.P9563051587798238838

`and(1, -(A179016(n)+A169967(n+1)))`
-/

namespace A213729.P9563051587798238838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (-(A179016 n + A169967 (n + 1)))

end

end A213729.P9563051587798238838

/-! ## A213729.P16771729439607753132

`and(1, A000040(val(A179016(n)+1, 2)+1))`
-/

namespace A213729.P16771729439607753132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (SequenceMachineLib.valuation (A179016 n + 1).toNat 2 + 1))

end

end A213729.P16771729439607753132

/-! ## A213729.P443497819485812481

`and(A179016(n), A230412(A219650(n)))`
-/

namespace A213729.P443497819485812481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179016 n) (A230412 (A219650 n).toNat)

end

end A213729.P443497819485812481

/-! ## A213729.P5525472726543499465

`and(A179016(n), A230412(A219651(n)))`
-/

namespace A213729.P5525472726543499465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179016 n) (A230412 (A219651 n).toNat)

end

end A213729.P5525472726543499465

/-! ## A213729.P16344067333869519857

`and(A179016(n), A230425(A219658(n+1)))`
-/

namespace A213729.P16344067333869519857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179016 n) (A230425 (A219658 (n + 1)).toNat)

end

end A213729.P16344067333869519857

/-! ## A213729.P11420721433368217780

`and(A179016(n), A230426(A219658(n+3)))`
-/

namespace A213729.P11420721433368217780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179016 n) (A230426 (A219658 (n + 3)).toNat)

end

end A213729.P11420721433368217780

/-! ## A213729.P12366836429638356718

`A213728(gcd(n, A000040(n+1))*A213728(n))`
-/

namespace A213729.P12366836429638356718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 ((Int.gcd (n : ℤ) (A000040 (n + 1)) : ℤ) * A213728 n).toNat

end

end A213729.P12366836429638356718

/-! ## A213729.P14236044153704778975

`A095190(A213730(n))`
-/

namespace A213729.P14236044153704778975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 (A213730 n).toNat

end

end A213729.P14236044153704778975

/-!
# A213730: After zero, gives the numbers where finite "side-trees" (or "tendrils") of beanstalk branch off from its infinite trunk (A179016).

The programs for A213730, there is no canonical definition to state claims against.
-/

/-! ## A213730.P10106299287366087167

`A213723(A179016(n))+A213728(n+1)`
-/

namespace A213730.P10106299287366087167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213723 (A179016 n).toNat + A213728 (n + 1)

end

end A213730.P10106299287366087167

/-! ## A213730.P13781807589339662724

`xor(1, A179016(n+1))`
-/

namespace A213730.P13781807589339662724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A179016 (n + 1))

end

end A213730.P13781807589339662724

/-! ## A213730.P18158590321423544842

`xor(1, lt[A213727(n+1), 1]+1)`
-/

namespace A213730.P18158590321423544842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A213730.P18158590321423544842

/-! ## A213730.P8012095543465635772

`A213728(n+1)+2*A213715(n)`
-/

namespace A213730.P8012095543465635772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 (n + 1) + 2 * A213715 n

end

end A213730.P8012095543465635772

/-! ## A213730.P7733096915672153472

`A179016(n+1)+A213728(n+1)-A213729(n+1)`
-/

namespace A213730.P7733096915672153472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 (n + 1) + (A213728 (n + 1) - A213729 (n + 1))

end

end A213730.P7733096915672153472

/-! ## A213730.P6791777598234011553

`A004442(A179016(n+1))`
-/

namespace A213730.P6791777598234011553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A179016 (n + 1)).toNat

end

end A213730.P6791777598234011553

/-! ## A213730.P1463365922906631670

`A179016(n+1)+A009001(2*A179016(n+1))`
-/

namespace A213730.P1463365922906631670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 (n + 1) + A009001 (2 * A179016 (n + 1)).toNat

end

end A213730.P1463365922906631670

/-! ## A213730.P11704849244436556552

`A213724(A179016(n))-A213729(n+1)`
-/

namespace A213730.P11704849244436556552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213724 (A179016 n).toNat - A213729 (n + 1)

end

end A213730.P11704849244436556552

/-!
# A213731: a(n)=0 if n is in A055938, a(n)=1 if n is in A179016, otherwise (i.e., n is in A213717), a(n)=2.

The programs for A213731, there is no canonical definition to state claims against.
-/

/-! ## A213731.P853240587098942477

`2*A079559(n)-A213719(n)`
-/

namespace A213731.P853240587098942477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079559 n - A213719 n

end

end A213731.P853240587098942477

/-! ## A213731.P4657606026226879137

`2-C(2, A213727(n))`
-/

namespace A213731.P4657606026226879137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 (A213727 n).toNat : ℤ)

end

end A213731.P4657606026226879137

/-! ## A213731.P17752841254458248416

`2*char[A005187(n)]-A213719(n)`
-/

namespace A213731.P17752841254458248416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - A213719 n

end

end A213731.P17752841254458248416

/-! ## A213731.P7883807592719377625

`2*char[A011371(n)]-A213719(n)`
-/

namespace A213731.P7883807592719377625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - A213719 n

end

end A213731.P7883807592719377625

/-! ## A213731.P12574147387491220648

`char[lt[1, A213727(n)]]+A257265(n)²%3`
-/

namespace A213731.P12574147387491220648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + Int.tmod (A257265 n ^ 2) 3

end

end A213731.P12574147387491220648

/-! ## A213731.P10048106252203356742

`char[lt[1, A213727(n)]]+1-A308187(n+1)`
-/

namespace A213731.P10048106252203356742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (1 - A308187 (n + 1))

end

end A213731.P10048106252203356742

/-! ## A213731.P1953411440419873209

`char[lt[1, A213727(n)]]+2-A308188(n+1)`
-/

namespace A213731.P1953411440419873209
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (2 - A308188 (n + 1))

end

end A213731.P1953411440419873209

/-! ## A213731.P10702399043363162320

`A255327(A213727(n)²²+1)`
-/

namespace A213731.P10702399043363162320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255327 ((A213727 n ^ 2) ^ 2 + 1).toNat

end

end A213731.P10702399043363162320

/-!
# A213732: Positions of even numbers greater than zero in A179016.

The programs for A213732, there is no canonical definition to state claims against.
-/

/-! ## A213732.P11064600431313715394

`1+A218772(n+1)`
-/

namespace A213732.P11064600431313715394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A218772 (n + 1)

end

end A213732.P11064600431313715394

/-! ## A213732.P16089527925213966678

`A218774(n)+a(n-1)` with `a(0)=3`
-/

namespace A213732.P16089527925213966678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A218774 n + a (n - 1)

end

end A213732.P16089527925213966678

/-! ## A213732.P14017588099080002888

`lt[2, A020639(A179016(n)+1)]`
-/

namespace A213732.P14017588099080002888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A179016 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213732.P14017588099080002888

/-! ## A213732.P13905424805936080800

`A059841(2*(n+1))+comp[A218773(n+1)]`
-/

namespace A213732.P13905424805936080800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218773 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * (n + 1)) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A213732.P13905424805936080800

/-! ## A213732.P321066866553258227

`A020725(A218772(n+1))`
-/

namespace A213732.P321066866553258227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A218772 (n + 1)).toNat

end

end A213732.P321066866553258227

/-! ## A213732.P14065583656008605034

`lt[A218618(n+1), 0]+2`
-/

namespace A213732.P14065583656008605034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218618 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A213732.P14065583656008605034

/-! ## A213732.P6803931089701820551

`eq[1, gcd(2, A218604(n))]`
-/

namespace A213732.P6803931089701820551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A218604 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213732.P6803931089701820551

/-! ## A213732.P16024076450314232620

`lt[2, A020639(lt[A213727(n), 1]+1)]`
-/

namespace A213732.P16024076450314232620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213732.P16024076450314232620

/-! ## A213732.P12557256639562960268

`lt[acot(n), A213728(n)]`
-/

namespace A213732.P12557256639562960268
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A213732.P12557256639562960268

/-! ## A213732.P13389866574985439265

`filter[n+1, A213728(#)]`
-/

namespace A213732.P13389866574985439265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A213728 (f1 j) = 1) n)

end

end A213732.P13389866574985439265

/-! ## A213732.P2086761647077938137

`lt[n*A213729(n), n]`
-/

namespace A213732.P2086761647077938137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A213729 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A213732.P2086761647077938137

/-! ## A213732.P8884687226243083787

`eq[1, A213728(n+1)]+1`
-/

namespace A213732.P8884687226243083787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A213732.P8884687226243083787

/-! ## A213732.P4826045233634076191

`lt[A213729(n+1), 1]+1`
-/

namespace A213732.P4826045233634076191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A213732.P4826045233634076191

/-! ## A213732.P6654300469675324645

`eq[A000007(n), A213729(n)]`
-/

namespace A213732.P6654300469675324645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213732.P6654300469675324645

/-! ## A213732.P8793130619023891486

`eq[A000038(n), A213729(n)]`
-/

namespace A213732.P8793130619023891486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213732.P8793130619023891486

/-! ## A213732.P2434199169450893603

`eq[A054977(n), A213728(n)]`
-/

namespace A213732.P2434199169450893603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213732.P2434199169450893603

/-! ## A213732.P1513466065731479761

`eq[A057427(n), A213728(n)]`
-/

namespace A213732.P1513466065731479761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213732.P1513466065731479761

/-! ## A213732.P39499230724700116

`eq[A130706(n), A213729(n)]`
-/

namespace A213732.P39499230724700116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213732.P39499230724700116

/-! ## A213732.P10514251523663495029

`eq[A141044(n), A213728(n)]`
-/

namespace A213732.P10514251523663495029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213732.P10514251523663495029

/-! ## A213732.P16849915759488349294

`eq[A158388(n), A213728(n)]`
-/

namespace A213732.P16849915759488349294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213732.P16849915759488349294

/-!
# A213733: Positions of odd numbers in A179016.

The programs for A213733, there is no canonical definition to state claims against.
-/

/-! ## A213733.P2365181745259886955

`1+A218773(n+1)`
-/

namespace A213733.P2365181745259886955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A218773 (n + 1)

end

end A213733.P2365181745259886955

/-! ## A213733.P1929295896071351974

`comp[A218772(n+1)]+1`
-/

namespace A213733.P1929295896071351974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A213733.P1929295896071351974

/-! ## A213733.P5179959210258217938

`A218775(n)+a(n-1)` with `a(0)=1`
-/

namespace A213733.P5179959210258217938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A218775 n + a (n - 1)

end

end A213733.P5179959210258217938

/-! ## A213733.P11287179348495012231

`comp[A213732(n+1)-1]+1`
-/

namespace A213733.P11287179348495012231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213732 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A213733.P11287179348495012231

/-! ## A213733.P10847640347590364284

`∑[A218775(n+1)]+1-A218775(n+1)`
-/

namespace A213733.P10847640347590364284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A218775 (n + 1))

end

end A213733.P10847640347590364284

/-! ## A213733.P10564030147806388254

`eq[1, A179016(n)%2]`
-/

namespace A213733.P10564030147806388254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179016 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213733.P10564030147806388254

/-! ## A213733.P14480925968064668558

`eq[2, A020639(A179016(n)+1)]`
-/

namespace A213733.P14480925968064668558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A179016 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213733.P14480925968064668558

/-! ## A213733.P15069522088928577538

`lt[2, A020639(A179016(n)+2)]`
-/

namespace A213733.P15069522088928577538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A179016 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213733.P15069522088928577538

/-! ## A213733.P14645114342417924235

`eq[0, A010059(A213715(n))]`
-/

namespace A213733.P14645114342417924235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A213715 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213733.P14645114342417924235

/-! ## A213733.P13746162643317885517

`eq[0, A213728(n)]`
-/

namespace A213733.P13746162643317885517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213733.P13746162643317885517

/-! ## A213733.P4494588248106123703

`lt[0, A213729(n)]`
-/

namespace A213733.P4494588248106123703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213733.P4494588248106123703

/-! ## A213733.P7667743680731503638

`filter[n+1, A213729(#)]`
-/

namespace A213733.P7667743680731503638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A213729 (f1 j) = 1) n)

end

end A213733.P7667743680731503638

/-! ## A213733.P15391655834842009627

`eq[A054977(n), A213729(n)]`
-/

namespace A213733.P15391655834842009627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213733.P15391655834842009627

/-! ## A213733.P2074237891096412334

`eq[A158388(n), A213729(n)]`
-/

namespace A213733.P2074237891096412334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213733.P2074237891096412334

/-! ## A213733.P16535191679509408775

`eq[1, A213729(n*A213729(n))]`
-/

namespace A213733.P16535191679509408775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 ((n : ℤ) * A213729 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213733.P16535191679509408775

/-! ## A213733.P7167455549376955018

`eq[(A000038(n)-1)², A213729(n)]`
-/

namespace A213733.P7167455549376955018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n - 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213733.P7167455549376955018

/-! ## A213733.P365891814727033175

`lt[0, A000035(A179016(n))]`
-/

namespace A213733.P365891814727033175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A179016 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213733.P365891814727033175

/-! ## A213733.P5145460006480176628

`lt[1, A010686(lt[A213727(n), 1])]`
-/

namespace A213733.P5145460006480176628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213733.P5145460006480176628

/-!
# A213734: Primes in A213650.

The programs for A213734, the canonical program `A213734.P14902977437505676787` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213734 has offset 1).

The definition of A213734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213734.P14902977437505676787

`p?[A213650(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A213734

/-- `p?[A213650(n+1)]` -/
def P14902977437505676787.Spec : Prop :=
  ∀ n, P14902977437505676787.a n = A213734 (n + 1)

theorem P14902977437505676787.correct : P14902977437505676787.Spec := by
  intro n
  simp only [A213734, Nat.add_sub_cancel]

end A213734

/-! ## A213734.P17315475195166523721

`∩[A000040(n+1), A213650(n+1)]`
-/

namespace A213734.P17315475195166523721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213734.P17315475195166523721

namespace A213734

/-- `∩[A000040(n+1), A213650(n+1)]` -/
def P17315475195166523721.Spec : Prop :=
  ∀ n, (P17315475195166523721.a n : ℤ) = A213734 (n + 1)

end A213734

/-! ## A213734.P17938628194804178812

`∩[A004139(n+1), A213650(n+1)]`
-/

namespace A213734.P17938628194804178812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213734.P17938628194804178812

namespace A213734

/-- `∩[A004139(n+1), A213650(n+1)]` -/
def P17938628194804178812.Spec : Prop :=
  ∀ n, (P17938628194804178812.a n : ℤ) = A213734 (n + 1)

end A213734

/-! ## A213734.P15365923852819629710

`∩[A006005(n+1), A213650(n+1)]`
-/

namespace A213734.P15365923852819629710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213734.P15365923852819629710

namespace A213734

/-- `∩[A006005(n+1), A213650(n+1)]` -/
def P15365923852819629710.Spec : Prop :=
  ∀ n, (P15365923852819629710.a n : ℤ) = A213734 (n + 1)

end A213734

/-! ## A213734.P4613066682252046832

`∩[A008578(n+1), A213650(n+1)]`
-/

namespace A213734.P4613066682252046832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213734.P4613066682252046832

namespace A213734

/-- `∩[A008578(n+1), A213650(n+1)]` -/
def P4613066682252046832.Spec : Prop :=
  ∀ n, (P4613066682252046832.a n : ℤ) = A213734 (n + 1)

end A213734

/-! ## A213734.P7758242713803153340

`∩[A033946(n+1), A213650(n+1)]`
-/

namespace A213734.P7758242713803153340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213734.P7758242713803153340

namespace A213734

/-- `∩[A033946(n+1), A213650(n+1)]` -/
def P7758242713803153340.Spec : Prop :=
  ∀ n, (P7758242713803153340.a n : ℤ) = A213734 (n + 1)

end A213734

/-! ## A213734.P457720251690463037

`∩[A045319(n+1), A213650(n+1)]`
-/

namespace A213734.P457720251690463037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213734.P457720251690463037

namespace A213734

/-- `∩[A045319(n+1), A213650(n+1)]` -/
def P457720251690463037.Spec : Prop :=
  ∀ n, (P457720251690463037.a n : ℤ) = A213734 (n + 1)

end A213734

/-! ## A213734.P16548194025766556992

`∩[A046022(n+1), A213650(n+1)]`
-/

namespace A213734.P16548194025766556992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213734.P16548194025766556992

namespace A213734

/-- `∩[A046022(n+1), A213650(n+1)]` -/
def P16548194025766556992.Spec : Prop :=
  ∀ n, (P16548194025766556992.a n : ℤ) = A213734 (n + 1)

end A213734

/-! ## A213734.P3856972878069021223

`∩[A065091(n+1), A213650(n+1)]`
-/

namespace A213734.P3856972878069021223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213734.P3856972878069021223

namespace A213734

/-- `∩[A065091(n+1), A213650(n+1)]` -/
def P3856972878069021223.Spec : Prop :=
  ∀ n, (P3856972878069021223.a n : ℤ) = A213734 (n + 1)

end A213734

/-! ## A213734.P5125120694595967334

`p?[A000720(A089894(n))]`
-/

namespace A213734.P5125120694595967334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A089894 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A213734.P5125120694595967334

namespace A213734

/-- `p?[A000720(A089894(n))]` -/
def P5125120694595967334.Spec : Prop :=
  ∀ n, P5125120694595967334.a n = A213734 (n + 1)

end A213734

/-!
# A213735: Triangle read by rows: row n is the expansion of x^n in terms of (x+k)!/x! for decreasing k.

The programs for A213735, there is no canonical definition to state claims against.
-/

/-! ## A213735.P16190714336030508481

`A075263(n)/(C(comp[∑[n]]-n, 2)-(n+1))!`
-/

namespace A213735.P16190714336030508481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075263 n : ℚ) / (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)

end

end A213735.P16190714336030508481

/-! ## A213735.P8696768601402633256

`A075263(n)/A119502(n)`
-/

namespace A213735.P8696768601402633256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075263 n : ℚ) / (A119502 n : ℚ)

end

end A213735.P8696768601402633256

/-! ## A213735.P7649160361884753165

`A075263(n)/A025581(n)!`
-/

namespace A213735.P7649160361884753165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075263 n : ℚ) / (Nat.factorial (A025581 n).toNat : ℚ)

end

end A213735.P7649160361884753165

/-! ## A213735.P16705493035480908789

`A145661(n)%2*A008278(n+1)`
-/

namespace A213735.P16705493035480908789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145661 n) 2 * A008278 (n + 1)

end

end A213735.P16705493035480908789

/-! ## A213735.P1506731966256758176

`A075263(n)/A233543(A061579(n))`
-/

namespace A213735.P1506731966256758176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075263 n : ℚ) / (A233543 (A061579 n).toNat : ℚ)

end

end A213735.P1506731966256758176

/-! ## A213735.P1347495003364576184

`A008278(n+1)*A014451(A002262(n))`
-/

namespace A213735.P1347495003364576184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (n + 1) * A014451 (A002262 n).toNat

end

end A213735.P1347495003364576184

/-! ## A213735.P9609861041051297415

`A008278(n+1)*A008836(A059268(n))`
-/

namespace A213735.P9609861041051297415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (n + 1) * A008836 (A059268 n).toNat

end

end A213735.P9609861041051297415

/-! ## A213735.P3925352869069512919

`A008278(n+1)*A033999(A061885(n))`
-/

namespace A213735.P3925352869069512919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (n + 1) * A033999 (A061885 n).toNat

end

end A213735.P3925352869069512919

/-! ## A213735.P5509508936261138408

`A008278(n+1)*A097807(A061579(n))`
-/

namespace A213735.P5509508936261138408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (n + 1) * A097807 (A061579 n).toNat

end

end A213735.P5509508936261138408

/-! ## A213735.P7995611051580413303

`A008278(n+1)*A097807(A112367(n))`
-/

namespace A213735.P7995611051580413303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (n + 1) * A097807 (A112367 n).toNat

end

end A213735.P7995611051580413303

/-!
# A213738: a(n) is the smallest prime of the form n*m^q + 1 where m is an integer and q >= 2.

The programs for A213738, there is no canonical definition to state claims against.
-/

/-! ## A213738.P3022729649005776700

`A070848(A252754(n+2)%A139450(2*(n+1)))`
-/

namespace A213738.P3022729649005776700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070848 (Int.tmod (A252754 (n + 2)) (A139450 (2 * (n + 1)))).toNat

end

end A213738.P3022729649005776700

/-!
# A213739: Numbers n such that n and n^2 are sums of two successive primes.

The programs for A213739, there is no canonical definition to state claims against.
-/

/-! ## A213739.P1646903114562104375

`∩[A001043(n+1), A074924(n+1)]`
-/

namespace A213739.P1646903114562104375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213739.P1646903114562104375

/-! ## A213739.P16335800711599150511

`∩[A011974(n+1), A074924(n+1)]`
-/

namespace A213739.P16335800711599150511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213739.P16335800711599150511

/-! ## A213739.P4348140507054271242

`∩[A074924(n+1), A164653(n+1)]`
-/

namespace A213739.P4348140507054271242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213739.P4348140507054271242

/-! ## A213739.P4463841041652667570

`∩[A074924(n+1), A031131(n)+a(n-1)]` with `a(0)=5`
-/

namespace A213739.P4463841041652667570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A031131 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213739.P4463841041652667570

/-! ## A213739.P17524376980338952712

`∩[A074924(n+1), A096277(n)-a(n-1)]` with `a(0)=5`
-/

namespace A213739.P17524376980338952712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A096277 n - f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213739.P17524376980338952712

/-! ## A213739.P15254863681829526655

`∩[A000040(n+1)+A000040(n+2), A074924(n+1)]`
-/

namespace A213739.P15254863681829526655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213739.P15254863681829526655

/-! ## A213739.P15444061822433563218

`∩[2*A139013(n+1), A001043(n+1)]`
-/

namespace A213739.P15444061822433563218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213739.P15444061822433563218

/-! ## A213739.P1218845307635870716

`∩[2*A139013(n+1), A011974(n+1)]`
-/

namespace A213739.P1218845307635870716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213739.P1218845307635870716

/-! ## A213739.P7966785871292303852

`∩[2*A139013(n+1), A000040(n+1)+A000040(n+2)]`
-/

namespace A213739.P7966785871292303852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213739.P7966785871292303852

/-!
# A213740: a(n) is the smallest prime of the form n*m^q - 1 where m is an integer > 1 and q >= 2.

The programs for A213740, there is no canonical definition to state claims against.
-/

/-! ## A213740.P14767798230733947731

`p?[A052333(2*n+1)]`
-/

namespace A213740.P14767798230733947731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052333 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A213740.P14767798230733947731

/-! ## A213740.P7509290517570915376

`p?[A038699(4*(n+1))]`
-/

namespace A213740.P7509290517570915376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038699 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A213740.P7509290517570915376

/-! ## A213740.P7056291041888371620

`∑{p}[A052333((n+1)²-n²), #]`
-/

namespace A213740.P7056291041888371620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052333 ((n + 1) ^ 2 - n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A213740.P7056291041888371620

/-! ## A213740.P16891774561922314053

`A006530(A052333(Δ[n²]))`
-/

namespace A213740.P16891774561922314053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A052333 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A213740.P16891774561922314053

/-! ## A213740.P12031272941051424172

`∏{p}[A052333(A005408(n)), #]`
-/

namespace A213740.P12031272941051424172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052333 (A005408 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A213740.P12031272941051424172

/-!
# A213741: Numbers n such that the sum of the first n primes is divisible by exactly 3 prime powers (not including 1).

The programs for A213741, the canonical program `A213741.P11773447692620937170` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213741 has offset 1).

The definition of A213741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213741.P11773447692620937170

`eq[3, A102862(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213741

/-- `eq[3, A102862(n+1)]+1` -/
def P11773447692620937170.Spec : Prop :=
  ∀ n, (P11773447692620937170.a n : ℤ) = A213741 (n + 1)

theorem P11773447692620937170.correct : P11773447692620937170.Spec := by
  intro n
  simp only [A213741, Nat.add_sub_cancel]

end A213741

/-! ## A213741.P3624883732059650242

`eq[3, A102862(n^floor(atan(n)))]`
-/

namespace A213741.P3624883732059650242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102862 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213741.P3624883732059650242

namespace A213741

/-- `eq[3, A102862(n^floor(atan(n)))]` -/
def P3624883732059650242.Spec : Prop :=
  ∀ n, (P3624883732059650242.a n : ℤ) = A213741 (n + 1)

end A213741

/-! ## A213741.P8432389224273810338

`eq[3, A102862(A000007(n)+n)]`
-/

namespace A213741.P8432389224273810338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102862 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213741.P8432389224273810338

namespace A213741

/-- `eq[3, A102862(A000007(n)+n)]` -/
def P8432389224273810338.Spec : Prop :=
  ∀ n, (P8432389224273810338.a n : ℤ) = A213741 (n + 1)

end A213741

/-! ## A213741.P631629300686445833

`eq[3, A102862(A000038(n)+n)]`
-/

namespace A213741.P631629300686445833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102862 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213741.P631629300686445833

namespace A213741

/-- `eq[3, A102862(A000038(n)+n)]` -/
def P631629300686445833.Spec : Prop :=
  ∀ n, (P631629300686445833.a n : ℤ) = A213741 (n + 1)

end A213741

/-! ## A213741.P16244042969227435333

`eq[3, A102862(xor(n, A000007(n)))]`
-/

namespace A213741.P16244042969227435333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102862 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213741.P16244042969227435333

namespace A213741

/-- `eq[3, A102862(xor(n, A000007(n)))]` -/
def P16244042969227435333.Spec : Prop :=
  ∀ n, (P16244042969227435333.a n : ℤ) = A213741 (n + 1)

end A213741

/-! ## A213741.P6855225386647594074

`eq[3, A102862(A065033(2*n))]`
-/

namespace A213741.P6855225386647594074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102862 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213741.P6855225386647594074

namespace A213741

/-- `eq[3, A102862(A065033(2*n))]` -/
def P6855225386647594074.Spec : Prop :=
  ∀ n, (P6855225386647594074.a n : ℤ) = A213741 (n + 1)

end A213741

/-! ## A213741.P4214619875810267232

`eq[3, A102862(A233583(n+1))]`
-/

namespace A213741.P4214619875810267232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102862 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213741.P4214619875810267232

namespace A213741

/-- `eq[3, A102862(A233583(n+1))]` -/
def P4214619875810267232.Spec : Prop :=
  ∀ n, (P4214619875810267232.a n : ℤ) = A213741 (n + 1)

end A213741

/-! ## A213741.P17343829605814972328

`eq[3, ∑{e}[A007504(n), #]]`
-/

namespace A213741.P17343829605814972328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213741.P17343829605814972328

namespace A213741

/-- `eq[3, ∑{e}[A007504(n), #]]` -/
def P17343829605814972328.Spec : Prop :=
  ∀ n, (P17343829605814972328.a n : ℤ) = A213741 (n + 1)

end A213741

/-!
# A213742: Triangle of numbers C^(3)(n,k) of combinations with repetitions from n different elements over k for each of them not more than three appearances allowed.

The programs for A213742, there is no canonical definition to state claims against.
-/

/-! ## A213742.P3381227571613649806

`A008287(A083920(n)+A003056(n)²)`
-/

namespace A213742.P3381227571613649806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008287 (A083920 n + A003056 n ^ 2).toNat

end

end A213742.P3381227571613649806

/-! ## A213742.P11242666316907526962

`A213887(A245300(n)+A025581(n))`
-/

namespace A213742.P11242666316907526962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213887 (A245300 n + A025581 n).toNat

end

end A213742.P11242666316907526962

/-! ## A213742.P17540735221814003350

`A059481(n)-A058348(A055934(n))`
-/

namespace A213742.P17540735221814003350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n - A058348 (A055934 n).toNat

end

end A213742.P17540735221814003350

/-! ## A213742.P12632297108640171254

`A213808(n)-A058348(A055934(n))`
-/

namespace A213742.P12632297108640171254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213808 n - A058348 (A055934 n).toNat

end

end A213742.P12632297108640171254

/-! ## A213742.P8114159085739908262

`A059481(n)-A102683(A131269(n))²`
-/

namespace A213742.P8114159085739908262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n - A102683 (A131269 n).toNat ^ 2

end

end A213742.P8114159085739908262

/-!
# A213743: Triangle T(n,k), read by rows, of numbers T(n,k)=C^(4)(n,k) of combinations with repetitions from n different elements over k for each of them not more than four appearances allowed.

The programs for A213743, there is no canonical definition to state claims against.
-/

/-! ## A213743.P16493827819156809944

`A213888(A245300(n)+A025581(n))`
-/

namespace A213743.P16493827819156809944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213888 (A245300 n + A025581 n).toNat

end

end A213743.P16493827819156809944

/-!
# A213748: Principal diagonal of the convolution array A213747.

The programs for A213748, the canonical program `A213748.P12691812581179159646` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213748 has offset 1).

The definition of A213748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213748.P12691812581179159646

`A000337(2*n+1)-∑[A000225(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213748

/-- `A000337(2*n+1)-∑[A000225(n)]` -/
def P12691812581179159646.Spec : Prop :=
  ∀ n, P12691812581179159646.a n = A213748 (n + 1)

theorem P12691812581179159646.correct : P12691812581179159646.Spec := by
  intro n
  simp only [A213748, Nat.add_sub_cancel]

end A213748

/-! ## A213748.P14047830278039792755

`A000337(2*n+1)-A000295(n+1)`
-/

namespace A213748.P14047830278039792755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 (2 * n + 1) - A000295 (n + 1)

end

end A213748.P14047830278039792755

namespace A213748

/-- `A000337(2*n+1)-A000295(n+1)` -/
def P14047830278039792755.Spec : Prop :=
  ∀ n, P14047830278039792755.a n = A213748 (n + 1)

end A213748

/-! ## A213748.P9900683124021156429

`2*A002064(2*n)-A000325(n+1)`
-/

namespace A213748.P9900683124021156429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002064 (2 * n) - A000325 (n + 1)

end

end A213748.P9900683124021156429

namespace A213748

/-- `2*A002064(2*n)-A000325(n+1)` -/
def P9900683124021156429.Spec : Prop :=
  ∀ n, P9900683124021156429.a n = A213748 (n + 1)

end A213748

/-! ## A213748.P8781681810625699609

`A000337(2*n+1)+1-A000325(n+1)`
-/

namespace A213748.P8781681810625699609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 (2 * n + 1) + (1 - A000325 (n + 1))

end

end A213748.P8781681810625699609

namespace A213748

/-- `A000337(2*n+1)+1-A000325(n+1)` -/
def P8781681810625699609.Spec : Prop :=
  ∀ n, P8781681810625699609.a n = A213748 (n + 1)

end A213748

/-! ## A213748.P17334308912584936585

`A058922(2*n+1)+1-A000295(n+1)`
-/

namespace A213748.P17334308912584936585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058922 (2 * n + 1) + (1 - A000295 (n + 1))

end

end A213748.P17334308912584936585

namespace A213748

/-- `A058922(2*n+1)+1-A000295(n+1)` -/
def P17334308912584936585.Spec : Prop :=
  ∀ n, P17334308912584936585.a n = A213748 (n + 1)

end A213748

/-! ## A213748.P10515227620686341388

`A058922(2*n+1)+2-A000325(n+1)`
-/

namespace A213748.P10515227620686341388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058922 (2 * n + 1) + (2 - A000325 (n + 1))

end

end A213748.P10515227620686341388

namespace A213748

/-- `A058922(2*n+1)+2-A000325(n+1)` -/
def P10515227620686341388.Spec : Prop :=
  ∀ n, P10515227620686341388.a n = A213748 (n + 1)

end A213748

/-! ## A213748.P10083435670992171571

`A000337(2*n+1)-A005803(n+2)/2`
-/

namespace A213748.P10083435670992171571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000337 (2 * n + 1) : ℚ) - (A005803 (n + 2) : ℚ) / 2

end

end A213748.P10083435670992171571

namespace A213748

/-- `A000337(2*n+1)-A005803(n+2)/2` -/
def P10083435670992171571.Spec : Prop :=
  ∀ n, P10083435670992171571.a n = (A213748 (n + 1) : ℚ)

end A213748

/-! ## A213748.P3329115694490731083

`A000337(2*n+1)-A000918(n+1)+n`
-/

namespace A213748.P3329115694490731083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 (2 * n + 1) - A000918 (n + 1) + (n : ℤ)

end

end A213748.P3329115694490731083

namespace A213748

/-- `A000337(2*n+1)-A000918(n+1)+n` -/
def P3329115694490731083.Spec : Prop :=
  ∀ n, P3329115694490731083.a n = A213748 (n + 1)

end A213748

/-! ## A213748.P12547593530607269737

`A000337(2*n+1)-(A005803(n+1)+n)`
-/

namespace A213748.P12547593530607269737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 (2 * n + 1) - (A005803 (n + 1) + (n : ℤ))

end

end A213748.P12547593530607269737

namespace A213748

/-- `A000337(2*n+1)-(A005803(n+1)+n)` -/
def P12547593530607269737.Spec : Prop :=
  ∀ n, P12547593530607269737.a n = A213748 (n + 1)

end A213748

/-! ## A213748.P5590244128203123442

`A048495(2*n+1)-A000225(n+1)+n`
-/

namespace A213748.P5590244128203123442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048495 (2 * n + 1) - A000225 (n + 1) + (n : ℤ)

end

end A213748.P5590244128203123442

namespace A213748

/-- `A048495(2*n+1)-A000225(n+1)+n` -/
def P5590244128203123442.Spec : Prop :=
  ∀ n, P5590244128203123442.a n = A213748 (n + 1)

end A213748

/-! ## A213748.P3307079734974909419

`A036799(2*n+1)/2-A000295(n+1)`
-/

namespace A213748.P3307079734974909419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036799 (2 * n + 1) : ℚ) / 2 - (A000295 (n + 1) : ℚ)

end

end A213748.P3307079734974909419

namespace A213748

/-- `A036799(2*n+1)/2-A000295(n+1)` -/
def P3307079734974909419.Spec : Prop :=
  ∀ n, P3307079734974909419.a n = (A213748 (n + 1) : ℚ)

end A213748

/-!
# A213749: Antidiagonal sums of the convolution array A213747.

The programs for A213749, the canonical program `A213749.P1313503808114137028` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213749 has offset 1).

The definition of A213749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213749.P9813520135730428923

`(n+2)/2*A045618(n)`
-/

namespace A213749.P9813520135730428923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A045618 n : ℚ)

end

end A213749.P9813520135730428923

namespace A213749

/-- `(n+2)/2*A045618(n)` -/
def P9813520135730428923.Spec : Prop :=
  ∀ n, P9813520135730428923.a n = (A213749 (n + 1) : ℚ)

end A213749

/-! ## A213749.P1313503808114137028

`∑[∑[n*A129954(n+1)+1]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213749

/-- `∑[∑[n*A129954(n+1)+1]]` -/
def P1313503808114137028.Spec : Prop :=
  ∀ n, P1313503808114137028.a n = A213749 (n + 1)

theorem P1313503808114137028.correct : P1313503808114137028.Spec := by
  intro n
  simp only [A213749, Nat.add_sub_cancel]

end A213749

/-! ## A213749.P731894465421624985

`∑[n+1]/(n+1)*∑[A000337(n+1)]`
-/

namespace A213749.P731894465421624985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A213749.P731894465421624985

namespace A213749

/-- `∑[n+1]/(n+1)*∑[A000337(n+1)]` -/
def P731894465421624985.Spec : Prop :=
  ∀ n, P731894465421624985.a n = (A213749 (n + 1) : ℚ)

end A213749

/-! ## A213749.P14249331750364485777

`A091135(n)-A045618(n)`
-/

namespace A213749.P14249331750364485777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091135 n - A045618 n

end

end A213749.P14249331750364485777

namespace A213749

/-- `A091135(n)-A045618(n)` -/
def P14249331750364485777.Spec : Prop :=
  ∀ n, P14249331750364485777.a n = A213749 (n + 1)

end A213749

/-! ## A213749.P15036579846370407289

`∑[A055580(n)+∑[A000337(n)]]`
-/

namespace A213749.P15036579846370407289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055580 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213749.P15036579846370407289

namespace A213749

/-- `∑[A055580(n)+∑[A000337(n)]]` -/
def P15036579846370407289.Spec : Prop :=
  ∀ n, P15036579846370407289.a n = A213749 (n + 1)

end A213749

/-! ## A213749.P9317268772018359414

`A068605(n+2)-A213583(n+1)`
-/

namespace A213749.P9317268772018359414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068605 (n + 2) - A213583 (n + 1)

end

end A213749.P9317268772018359414

namespace A213749

/-- `A068605(n+2)-A213583(n+1)` -/
def P9317268772018359414.Spec : Prop :=
  ∀ n, P9317268772018359414.a n = A213749 (n + 1)

end A213749

/-! ## A213749.P3840142213244888459

`A045889(n)+A055581(n)-A045618(n)`
-/

namespace A213749.P3840142213244888459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045889 n + (A055581 n - A045618 n)

end

end A213749.P3840142213244888459

namespace A213749

/-- `A045889(n)+A055581(n)-A045618(n)` -/
def P3840142213244888459.Spec : Prop :=
  ∀ n, P3840142213244888459.a n = A213749 (n + 1)

end A213749

/-! ## A213749.P3143626226373723139

`A090981(∑[n+2]+3)`
-/

namespace A213749.P3143626226373723139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090981 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A213749.P3143626226373723139

namespace A213749

/-- `A090981(∑[n+2]+3)` -/
def P3143626226373723139.Spec : Prop :=
  ∀ n, P3143626226373723139.a n = A213749 (n + 1)

end A213749

/-! ## A213749.P1332925566066775295

`A246187((n+1)²+(n+2)²)`
-/

namespace A213749.P1332925566066775295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246187 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A213749.P1332925566066775295

namespace A213749

/-- `A246187((n+1)²+(n+2)²)` -/
def P1332925566066775295.Spec : Prop :=
  ∀ n, P1332925566066775295.a n = A213749 (n + 1)

end A213749

/-!
# A213750: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = 2*(n-1+h)-1, n>=1, h>=1, and ** = convolution.

The programs for A213750, the canonical program `A213750.P11543633709042919296` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213750 has offset 1).

The definition of A213750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213750.P13408660141824552380

`A213819(n+1)-A213500(n+1)`
-/

namespace A213750.P13408660141824552380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213819 (n + 1) - A213500 (n + 1)

end

end A213750.P13408660141824552380

namespace A213750

/-- `A213819(n+1)-A213500(n+1)` -/
def P13408660141824552380.Spec : Prop :=
  ∀ n, P13408660141824552380.a n = A213750 (n + 1)

end A213750

/-! ## A213750.P11543633709042919296

`2*A213500(n+1)-abs(A122432(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A213750

/-- `2*A213500(n+1)-abs(A122432(n))` -/
def P11543633709042919296.Spec : Prop :=
  ∀ n, P11543633709042919296.a n = A213750 (n + 1)

theorem P11543633709042919296.correct : P11543633709042919296.Spec := by
  intro n
  simp only [A213750, Nat.add_sub_cancel]

end A213750

/-! ## A213750.P8007776846714937648

`(A213761(n+1)+A213500(n+1))/2`
-/

namespace A213750.P8007776846714937648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213761 (n + 1) + A213500 (n + 1) : ℚ) / 2

end

end A213750.P8007776846714937648

namespace A213750

/-- `(A213761(n+1)+A213500(n+1))/2` -/
def P8007776846714937648.Spec : Prop :=
  ∀ n, P8007776846714937648.a n = (A213750 (n + 1) : ℚ)

end A213750

/-! ## A213750.P11180868881956118108

`2*A213752(n+1)-A213833(n+1)`
-/

namespace A213750.P11180868881956118108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213752 (n + 1) - A213833 (n + 1)

end

end A213750.P11180868881956118108

namespace A213750

/-- `2*A213752(n+1)-A213833(n+1)` -/
def P11180868881956118108.Spec : Prop :=
  ∀ n, P11180868881956118108.a n = A213750 (n + 1)

end A213750

/-! ## A213750.P16876660453031067032

`2*A213761(n+1)-A213835(n+1)`
-/

namespace A213750.P16876660453031067032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213761 (n + 1) - A213835 (n + 1)

end

end A213750.P16876660453031067032

namespace A213750

/-- `2*A213761(n+1)-A213835(n+1)` -/
def P16876660453031067032.Spec : Prop :=
  ∀ n, P16876660453031067032.a n = A213750 (n + 1)

end A213750

/-! ## A213750.P4209502672381987657

`(A213847(n+1)-A213752(n+1))/2`
-/

namespace A213750.P4209502672381987657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213847 (n + 1) - A213752 (n + 1) : ℚ) / 2

end

end A213750.P4209502672381987657

namespace A213750

/-- `(A213847(n+1)-A213752(n+1))/2` -/
def P4209502672381987657.Spec : Prop :=
  ∀ n, P4209502672381987657.a n = (A213750 (n + 1) : ℚ)

end A213750

/-! ## A213750.P8505335263758246375

`2*A213500(n+1)-A000217(A004736(n+1))`
-/

namespace A213750.P8505335263758246375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213500 (n + 1) - A000217 (A004736 (n + 1)).toNat

end

end A213750.P8505335263758246375

namespace A213750

/-- `2*A213500(n+1)-A000217(A004736(n+1))` -/
def P8505335263758246375.Spec : Prop :=
  ∀ n, P8505335263758246375.a n = A213750 (n + 1)

end A213750

/-! ## A213750.P596939085468039360

`A104634(n+1)+A062707(A007401(n+1))`
-/

namespace A213750.P596939085468039360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (n + 1) + A062707 (A007401 (n + 1)).toNat

end

end A213750.P596939085468039360

namespace A213750

/-- `A104634(n+1)+A062707(A007401(n+1))` -/
def P596939085468039360.Spec : Prop :=
  ∀ n, P596939085468039360.a n = A213750 (n + 1)

end A213750

/-! ## A213750.P3715714452652972731

`A213751(n+1)+A004247(A007401(n+1))`
-/

namespace A213750.P3715714452652972731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213751 (n + 1) + A004247 (A007401 (n + 1)).toNat

end

end A213750.P3715714452652972731

namespace A213750

/-- `A213751(n+1)+A004247(A007401(n+1))` -/
def P3715714452652972731.Spec : Prop :=
  ∀ n, P3715714452652972731.a n = A213750 (n + 1)

end A213750

/-! ## A213750.P9093455111757659366

`A104634(A002262(n)+A245300(n)+1)`
-/

namespace A213750.P9093455111757659366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (A002262 n + (A245300 n + 1)).toNat

end

end A213750.P9093455111757659366

namespace A213750

/-- `A104634(A002262(n)+A245300(n)+1)` -/
def P9093455111757659366.Spec : Prop :=
  ∀ n, P9093455111757659366.a n = A213750 (n + 1)

end A213750

/-! ## A213750.P15324670070241057700

`A104634(A245300(n)+A002260(n+1))`
-/

namespace A213750.P15324670070241057700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (A245300 n + A002260 (n + 1)).toNat

end

end A213750.P15324670070241057700

namespace A213750

/-- `A104634(A245300(n)+A002260(n+1))` -/
def P15324670070241057700.Spec : Prop :=
  ∀ n, P15324670070241057700.a n = A213750 (n + 1)

end A213750

/-! ## A213750.P3762717660843457850

`A271916(A292565(n+1))`
-/

namespace A213750.P3762717660843457850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271916 (A292565 (n + 1)).toNat

end

end A213750.P3762717660843457850

namespace A213750

/-- `A271916(A292565(n+1))` -/
def P3762717660843457850.Spec : Prop :=
  ∀ n, P3762717660843457850.a n = A213750 (n + 1)

end A213750

/-! ## A213750.P8000837157130402232

`A213835(n+1)-A005843(A213835(n+1)-A213761(n+1))`
-/

namespace A213750.P8000837157130402232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213835 (n + 1) - A005843 (A213835 (n + 1) - A213761 (n + 1)).toNat

end

end A213750.P8000837157130402232

namespace A213750

/-- `A213835(n+1)-A005843(A213835(n+1)-A213761(n+1))` -/
def P8000837157130402232.Spec : Prop :=
  ∀ n, P8000837157130402232.a n = A213750 (n + 1)

end A213750

/-! ## A213750.P4155220804985278109

`A005843(A213500(n+1))-abs(A122432(n))`
-/

namespace A213750.P4155220804985278109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213500 (n + 1)).toNat - |A122432 n|

end

end A213750.P4155220804985278109

namespace A213750

/-- `A005843(A213500(n+1))-abs(A122432(n))` -/
def P4155220804985278109.Spec : Prop :=
  ∀ n, P4155220804985278109.a n = A213750 (n + 1)

end A213750

/-! ## A213750.P1345581622341658484

`A213500(n+1)+A029578(A213761(n+1)-A213500(n+1))`
-/

namespace A213750.P1345581622341658484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) + A029578 (A213761 (n + 1) - A213500 (n + 1)).toNat

end

end A213750.P1345581622341658484

namespace A213750

/-- `A213500(n+1)+A029578(A213761(n+1)-A213500(n+1))` -/
def P1345581622341658484.Spec : Prop :=
  ∀ n, P1345581622341658484.a n = A213750 (n + 1)

end A213750

/-! ## A213750.P16003381666543014040

`A005843(A213761(n+1))-A213835(n+1)`
-/

namespace A213750.P16003381666543014040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213761 (n + 1)).toNat - A213835 (n + 1)

end

end A213750.P16003381666543014040

namespace A213750

/-- `A005843(A213761(n+1))-A213835(n+1)` -/
def P16003381666543014040.Spec : Prop :=
  ∀ n, P16003381666543014040.a n = A213750 (n + 1)

end A213750

/-! ## A213750.P3577115197504537209

`A029578(A213761(n+1)+A213500(n+1))`
-/

namespace A213750.P3577115197504537209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A213761 (n + 1) + A213500 (n + 1)).toNat

end

end A213750.P3577115197504537209

namespace A213750

/-- `A029578(A213761(n+1)+A213500(n+1))` -/
def P3577115197504537209.Spec : Prop :=
  ∀ n, P3577115197504537209.a n = A213750 (n + 1)

end A213750

/-! ## A213750.P18065185910936825540

`A005843(A213752(n+1))-A213833(n+1)`
-/

namespace A213750.P18065185910936825540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213752 (n + 1)).toNat - A213833 (n + 1)

end

end A213750.P18065185910936825540

namespace A213750

/-- `A005843(A213752(n+1))-A213833(n+1)` -/
def P18065185910936825540.Spec : Prop :=
  ∀ n, P18065185910936825540.a n = A213750 (n + 1)

end A213750

/-!
# A213751: Rectangular array: (row n) = b**c, where b(h) = 2*h-1, c(h) = n-1+h, n>=1, h>=1, and ** = convolution.

The programs for A213751, the canonical program `A213751.P3389573996948061720` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213751 has offset 1).

The definition of A213751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213751.P3389573996948061720

`A104634(n+1)+A062707(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A213751

/-- `A104634(n+1)+A062707(n)` -/
def P3389573996948061720.Spec : Prop :=
  ∀ n, P3389573996948061720.a n = A213751 (n + 1)

theorem P3389573996948061720.correct : P3389573996948061720.Spec := by
  intro n
  simp only [A213751, Nat.add_sub_cancel]

end A213751

/-! ## A213751.P9524528668274621580

`A213821(n+1)-A213500(n+1)`
-/

namespace A213751.P9524528668274621580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213821 (n + 1) - A213500 (n + 1)

end

end A213751.P9524528668274621580

namespace A213751

/-- `A213821(n+1)-A213500(n+1)` -/
def P9524528668274621580.Spec : Prop :=
  ∀ n, P9524528668274621580.a n = A213751 (n + 1)

end A213751

/-! ## A213751.P6679845947471394334

`2*A213500(n+1)-A049777(n+1)`
-/

namespace A213751.P6679845947471394334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213500 (n + 1) - A049777 (n + 1)

end

end A213751.P6679845947471394334

namespace A213751

/-- `2*A213500(n+1)-A049777(n+1)` -/
def P6679845947471394334.Spec : Prop :=
  ∀ n, P6679845947471394334.a n = A213751 (n + 1)

end A213751

/-! ## A213751.P12949762739344102540

`(A213836(n+1)+A049777(n+1))/2`
-/

namespace A213751.P12949762739344102540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213836 (n + 1) + A049777 (n + 1) : ℚ) / 2

end

end A213751.P12949762739344102540

namespace A213751

/-- `(A213836(n+1)+A049777(n+1))/2` -/
def P12949762739344102540.Spec : Prop :=
  ∀ n, P12949762739344102540.a n = (A213751 (n + 1) : ℚ)

end A213751

/-! ## A213751.P15690389594529095257

`(A213752(n+1)+A055461(n+1))/2`
-/

namespace A213751.P15690389594529095257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213752 (n + 1) + A055461 (n + 1) : ℚ) / 2

end

end A213751.P15690389594529095257

namespace A213751

/-- `(A213752(n+1)+A055461(n+1))/2` -/
def P15690389594529095257.Spec : Prop :=
  ∀ n, P15690389594529095257.a n = (A213751 (n + 1) : ℚ)

end A213751

/-! ## A213751.P3646390844537922551

`(A213771(n+1)+A213500(n+1))/2`
-/

namespace A213751.P3646390844537922551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213771 (n + 1) + A213500 (n + 1) : ℚ) / 2

end

end A213751.P3646390844537922551

namespace A213751

/-- `(A213771(n+1)+A213500(n+1))/2` -/
def P3646390844537922551.Spec : Prop :=
  ∀ n, P3646390844537922551.a n = (A213751 (n + 1) : ℚ)

end A213751

/-! ## A213751.P17223539063294779518

`2*A213771(n+1)-A213836(n+1)`
-/

namespace A213751.P17223539063294779518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213771 (n + 1) - A213836 (n + 1)

end

end A213751.P17223539063294779518

namespace A213751

/-- `2*A213771(n+1)-A213836(n+1)` -/
def P17223539063294779518.Spec : Prop :=
  ∀ n, P17223539063294779518.a n = A213751 (n + 1)

end A213751

/-! ## A213751.P10187604306255851369

`(A213844(n+1)-A213752(n+1))/2`
-/

namespace A213751.P10187604306255851369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213844 (n + 1) - A213752 (n + 1) : ℚ) / 2

end

end A213751.P10187604306255851369

namespace A213751

/-- `(A213844(n+1)-A213752(n+1))/2` -/
def P10187604306255851369.Spec : Prop :=
  ∀ n, P10187604306255851369.a n = (A213751 (n + 1) : ℚ)

end A213751

/-! ## A213751.P2770411523933648620

`A082652(A038722(n+1))+A062707(n)`
-/

namespace A213751.P2770411523933648620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082652 (A038722 (n + 1)).toNat + A062707 n

end

end A213751.P2770411523933648620

namespace A213751

/-- `A082652(A038722(n+1))+A062707(n)` -/
def P2770411523933648620.Spec : Prop :=
  ∀ n, P2770411523933648620.a n = A213751 (n + 1)

end A213751

/-! ## A213751.P16975523731726206798

`A274602(n+1)+A047732(A025581(n))`
-/

namespace A213751.P16975523731726206798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274602 (n + 1) + A047732 (A025581 n).toNat

end

end A213751.P16975523731726206798

namespace A213751

/-- `A274602(n+1)+A047732(A025581(n))` -/
def P16975523731726206798.Spec : Prop :=
  ∀ n, P16975523731726206798.a n = A213751 (n + 1)

end A213751

/-! ## A213751.P15013029497574922198

`A213849(A185868(n+1))`
-/

namespace A213751.P15013029497574922198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213849 (A185868 (n + 1)).toNat

end

end A213751.P15013029497574922198

namespace A213751

/-- `A213849(A185868(n+1))` -/
def P15013029497574922198.Spec : Prop :=
  ∀ n, P15013029497574922198.a n = A213751 (n + 1)

end A213751

/-! ## A213751.P1959261509297645880

`A213752(n+1)-A014682(A213841(n+1)-A213752(n+1))`
-/

namespace A213751.P1959261509297645880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213752 (n + 1) - A014682 (A213841 (n + 1) - A213752 (n + 1)).toNat

end

end A213751.P1959261509297645880

namespace A213751

/-- `A213752(n+1)-A014682(A213841(n+1)-A213752(n+1))` -/
def P1959261509297645880.Spec : Prop :=
  ∀ n, P1959261509297645880.a n = A213751 (n + 1)

end A213751

/-! ## A213751.P146762861990777858

`A014682((A213844(n+1)+A055461(n+1))/2)`
-/

namespace A213751.P146762861990777858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A213844 (n + 1) + A055461 (n + 1) : ℚ) / 2)).toNat

end

end A213751.P146762861990777858

namespace A213751

/-- `A014682((A213844(n+1)+A055461(n+1))/2)` -/
def P146762861990777858.Spec : Prop :=
  ∀ n, P146762861990777858.a n = A213751 (n + 1)

end A213751

/-! ## A213751.P11028738990576588232

`A005843(A213500(n+1))-A049777(n+1)`
-/

namespace A213751.P11028738990576588232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213500 (n + 1)).toNat - A049777 (n + 1)

end

end A213751.P11028738990576588232

namespace A213751

/-- `A005843(A213500(n+1))-A049777(n+1)` -/
def P11028738990576588232.Spec : Prop :=
  ∀ n, P11028738990576588232.a n = A213751 (n + 1)

end A213751

/-! ## A213751.P12888974736314596037

`A213752(n+1)-A004525(A213841(n+1)-A213752(n+1))`
-/

namespace A213751.P12888974736314596037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213752 (n + 1) - A004525 (A213841 (n + 1) - A213752 (n + 1)).toNat

end

end A213751.P12888974736314596037

namespace A213751

/-- `A213752(n+1)-A004525(A213841(n+1)-A213752(n+1))` -/
def P12888974736314596037.Spec : Prop :=
  ∀ n, P12888974736314596037.a n = A213751 (n + 1)

end A213751

/-! ## A213751.P10219788644713768197

`A213752(n+1)-A026741(A213841(n+1)-A213752(n+1))`
-/

namespace A213751.P10219788644713768197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213752 (n + 1) - A026741 (A213841 (n + 1) - A213752 (n + 1)).toNat

end

end A213751.P10219788644713768197

namespace A213751

/-- `A213752(n+1)-A026741(A213841(n+1)-A213752(n+1))` -/
def P10219788644713768197.Spec : Prop :=
  ∀ n, P10219788644713768197.a n = A213751 (n + 1)

end A213751

/-! ## A213751.P1856315368135021765

`A004525(A213836(n+1)+A049777(n+1))`
-/

namespace A213751.P1856315368135021765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A213836 (n + 1) + A049777 (n + 1)).toNat

end

end A213751.P1856315368135021765

namespace A213751

/-- `A004525(A213836(n+1)+A049777(n+1))` -/
def P1856315368135021765.Spec : Prop :=
  ∀ n, P1856315368135021765.a n = A213751 (n + 1)

end A213751

/-! ## A213751.P15978769402888260982

`A110654(A213836(n+1)+A049777(n+1))`
-/

namespace A213751.P15978769402888260982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A213836 (n + 1) + A049777 (n + 1)).toNat

end

end A213751.P15978769402888260982

namespace A213751

/-- `A110654(A213836(n+1)+A049777(n+1))` -/
def P15978769402888260982.Spec : Prop :=
  ∀ n, P15978769402888260982.a n = A213751 (n + 1)

end A213751

/-! ## A213751.P17661547839881907172

`A004525((A213844(n+1)+A055461(n+1))/2)`
-/

namespace A213751.P17661547839881907172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A213844 (n + 1) + A055461 (n + 1) : ℚ) / 2)).toNat

end

end A213751.P17661547839881907172

namespace A213751

/-- `A004525((A213844(n+1)+A055461(n+1))/2)` -/
def P17661547839881907172.Spec : Prop :=
  ∀ n, P17661547839881907172.a n = A213751 (n + 1)

end A213751

/-! ## A213751.P3947407442156874971

`A026741((A213844(n+1)+A055461(n+1))/2)`
-/

namespace A213751.P3947407442156874971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A213844 (n + 1) + A055461 (n + 1) : ℚ) / 2)).toNat

end

end A213751.P3947407442156874971

namespace A213751

/-- `A026741((A213844(n+1)+A055461(n+1))/2)` -/
def P3947407442156874971.Spec : Prop :=
  ∀ n, P3947407442156874971.a n = A213751 (n + 1)

end A213751

/-!
# A213752: Rectangular array: (row n) = b**c, where b(h) = 2*h-1, c(h) = b(n-1+h), n>=1, h>=1, and ** = convolution.

The programs for A213752, the canonical program `A213752.P6712457032791748921` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213752 has offset 1).

The definition of A213752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213752.P6712457032791748921

`2*A213751(n+1)-A055461(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A213752

/-- `2*A213751(n+1)-A055461(n+1)` -/
def P6712457032791748921.Spec : Prop :=
  ∀ n, P6712457032791748921.a n = A213752 (n + 1)

theorem P6712457032791748921.correct : P6712457032791748921.Spec := by
  intro n
  simp only [A213752, Nat.add_sub_cancel]

end A213752

/-! ## A213752.P1758552170149435626

`(A213841(n+1)+A055461(n+1))/2`
-/

namespace A213752.P1758552170149435626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213841 (n + 1) + A055461 (n + 1) : ℚ) / 2

end

end A213752.P1758552170149435626

namespace A213752

/-- `(A213841(n+1)+A055461(n+1))/2` -/
def P1758552170149435626.Spec : Prop :=
  ∀ n, P1758552170149435626.a n = (A213752 (n + 1) : ℚ)

end A213752

/-! ## A213752.P7853133110555924157

`(A213833(n+1)+A213750(n+1))/2`
-/

namespace A213752.P7853133110555924157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213833 (n + 1) + A213750 (n + 1) : ℚ) / 2

end

end A213752.P7853133110555924157

namespace A213752

/-- `(A213833(n+1)+A213750(n+1))/2` -/
def P7853133110555924157.Spec : Prop :=
  ∀ n, P7853133110555924157.a n = (A213752 (n + 1) : ℚ)

end A213752

/-! ## A213752.P17082180909153037317

`A213844(n+1)-2*A213751(n+1)`
-/

namespace A213752.P17082180909153037317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213844 (n + 1) - 2 * A213751 (n + 1)

end

end A213752.P17082180909153037317

namespace A213752

/-- `A213844(n+1)-2*A213751(n+1)` -/
def P17082180909153037317.Spec : Prop :=
  ∀ n, P17082180909153037317.a n = A213752 (n + 1)

end A213752

/-! ## A213752.P15690174602926162804

`2*A213833(n+1)-A213838(n+1)`
-/

namespace A213752.P15690174602926162804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213833 (n + 1) - A213838 (n + 1)

end

end A213752.P15690174602926162804

namespace A213752

/-- `2*A213833(n+1)-A213838(n+1)` -/
def P15690174602926162804.Spec : Prop :=
  ∀ n, P15690174602926162804.a n = A213752 (n + 1)

end A213752

/-! ## A213752.P2998645206010789569

`(A213844(n+1)-A055461(n+1))/2`
-/

namespace A213752.P2998645206010789569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213844 (n + 1) - A055461 (n + 1) : ℚ) / 2

end

end A213752.P2998645206010789569

namespace A213752

/-- `(A213844(n+1)-A055461(n+1))/2` -/
def P2998645206010789569.Spec : Prop :=
  ∀ n, P2998645206010789569.a n = (A213752 (n + 1) : ℚ)

end A213752

/-! ## A213752.P7562926640358182793

`2*A213751(n+1)-A004736(n+1)²`
-/

namespace A213752.P7562926640358182793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213751 (n + 1) - A004736 (n + 1) ^ 2

end

end A213752.P7562926640358182793

namespace A213752

/-- `2*A213751(n+1)-A004736(n+1)²` -/
def P7562926640358182793.Spec : Prop :=
  ∀ n, P7562926640358182793.a n = A213752 (n + 1)

end A213752

/-! ## A213752.P2969971773848802515

`(A213841(n+1)+A004736(n+1)²)/2`
-/

namespace A213752.P2969971773848802515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213841 (n + 1) + A004736 (n + 1) ^ 2 : ℚ) / 2

end

end A213752.P2969971773848802515

namespace A213752

/-- `(A213841(n+1)+A004736(n+1)²)/2` -/
def P2969971773848802515.Spec : Prop :=
  ∀ n, P2969971773848802515.a n = (A213752 (n + 1) : ℚ)

end A213752

/-! ## A213752.P8278916030651799263

`(A213844(n+1)-A004736(n+1)²)/2`
-/

namespace A213752.P8278916030651799263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213844 (n + 1) - A004736 (n + 1) ^ 2 : ℚ) / 2

end

end A213752.P8278916030651799263

namespace A213752

/-- `(A213844(n+1)-A004736(n+1)²)/2` -/
def P8278916030651799263.Spec : Prop :=
  ∀ n, P8278916030651799263.a n = (A213752 (n + 1) : ℚ)

end A213752

/-! ## A213752.P5720575572163926097

`A103219(n)-A210440(A025581(n))`
-/

namespace A213752.P5720575572163926097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103219 n - A210440 (A025581 n).toNat

end

end A213752.P5720575572163926097

namespace A213752

/-- `A103219(n)-A210440(A025581(n))` -/
def P5720575572163926097.Spec : Prop :=
  ∀ n, P5720575572163926097.a n = A213752 (n + 1)

end A213752

/-! ## A213752.P17694388022665062586

`A213822(n+1)-(A213819(n+1)+A213751(n+1))`
-/

namespace A213752.P17694388022665062586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213822 (n + 1) - (A213819 (n + 1) + A213751 (n + 1))

end

end A213752.P17694388022665062586

namespace A213752

/-- `A213822(n+1)-(A213819(n+1)+A213751(n+1))` -/
def P17694388022665062586.Spec : Prop :=
  ∀ n, P17694388022665062586.a n = A213752 (n + 1)

end A213752

/-! ## A213752.P14752192321272543187

`A213822(n+1)-(A213821(n+1)+A213750(n+1))`
-/

namespace A213752.P14752192321272543187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213822 (n + 1) - (A213821 (n + 1) + A213750 (n + 1))

end

end A213752.P14752192321272543187

namespace A213752

/-- `A213822(n+1)-(A213821(n+1)+A213750(n+1))` -/
def P14752192321272543187.Spec : Prop :=
  ∀ n, P14752192321272543187.a n = A213752 (n + 1)

end A213752

/-! ## A213752.P14286183374508901202

`A014682(A213841(n+1)+A055461(n+1))`
-/

namespace A213752.P14286183374508901202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A213841 (n + 1) + A055461 (n + 1)).toNat

end

end A213752.P14286183374508901202

namespace A213752

/-- `A014682(A213841(n+1)+A055461(n+1))` -/
def P14286183374508901202.Spec : Prop :=
  ∀ n, P14286183374508901202.a n = A213752 (n + 1)

end A213752

/-! ## A213752.P5695131423314727442

`A014682(A213844(n+1)-A055461(n+1))`
-/

namespace A213752.P5695131423314727442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A213844 (n + 1) - A055461 (n + 1)).toNat

end

end A213752.P5695131423314727442

namespace A213752

/-- `A014682(A213844(n+1)-A055461(n+1))` -/
def P5695131423314727442.Spec : Prop :=
  ∀ n, P5695131423314727442.a n = A213752 (n + 1)

end A213752

/-! ## A213752.P14288764791095674489

`A055461(n+1)+A005843(A213751(n+1)-A055461(n+1))`
-/

namespace A213752.P14288764791095674489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) + A005843 (A213751 (n + 1) - A055461 (n + 1)).toNat

end

end A213752.P14288764791095674489

namespace A213752

/-- `A055461(n+1)+A005843(A213751(n+1)-A055461(n+1))` -/
def P14288764791095674489.Spec : Prop :=
  ∀ n, P14288764791095674489.a n = A213752 (n + 1)

end A213752

/-! ## A213752.P2183660384191474079

`A005843(A213751(n+1))-A055461(n+1)`
-/

namespace A213752.P2183660384191474079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213751 (n + 1)).toNat - A055461 (n + 1)

end

end A213752.P2183660384191474079

namespace A213752

/-- `A005843(A213751(n+1))-A055461(n+1)` -/
def P2183660384191474079.Spec : Prop :=
  ∀ n, P2183660384191474079.a n = A213752 (n + 1)

end A213752

/-! ## A213752.P10822952304193285620

`A213844(n+1)-A005843(A213751(n+1))`
-/

namespace A213752.P10822952304193285620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213844 (n + 1) - A005843 (A213751 (n + 1)).toNat

end

end A213752.P10822952304193285620

namespace A213752

/-- `A213844(n+1)-A005843(A213751(n+1))` -/
def P10822952304193285620.Spec : Prop :=
  ∀ n, P10822952304193285620.a n = A213752 (n + 1)

end A213752

/-! ## A213752.P10095098101612012322

`A055461(n+1)+A004525(A213841(n+1)-A055461(n+1))`
-/

namespace A213752.P10095098101612012322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) + A004525 (A213841 (n + 1) - A055461 (n + 1)).toNat

end

end A213752.P10095098101612012322

namespace A213752

/-- `A055461(n+1)+A004525(A213841(n+1)-A055461(n+1))` -/
def P10095098101612012322.Spec : Prop :=
  ∀ n, P10095098101612012322.a n = A213752 (n + 1)

end A213752

/-! ## A213752.P2086580255550299450

`A004525(A213841(n+1)+A055461(n+1))`
-/

namespace A213752.P2086580255550299450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A213841 (n + 1) + A055461 (n + 1)).toNat

end

end A213752.P2086580255550299450

namespace A213752

/-- `A004525(A213841(n+1)+A055461(n+1))` -/
def P2086580255550299450.Spec : Prop :=
  ∀ n, P2086580255550299450.a n = A213752 (n + 1)

end A213752

/-! ## A213752.P9767395941795651444

`A004525(A213844(n+1)-A055461(n+1))`
-/

namespace A213752.P9767395941795651444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A213844 (n + 1) - A055461 (n + 1)).toNat

end

end A213752.P9767395941795651444

namespace A213752

/-- `A004525(A213844(n+1)-A055461(n+1))` -/
def P9767395941795651444.Spec : Prop :=
  ∀ n, P9767395941795651444.a n = A213752 (n + 1)

end A213752

/-!
# A213754: Principal diagonal of the convolution array A213753.

The programs for A213754, the canonical program `A213754.P8480363023296275666` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213754 has offset 1).

The definition of A213754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213754.P8480363023296275666

`Δ[A286778(n)-∑[n²]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213754

/-- `Δ[A286778(n)-∑[n²]]` -/
def P8480363023296275666.Spec : Prop :=
  ∀ n, P8480363023296275666.a n = A213754 (n + 1)

theorem P8480363023296275666.correct : P8480363023296275666.Spec := by
  intro n
  simp only [A213754, Nat.add_sub_cancel]

end A213754

/-! ## A213754.P1012115625386241475

`A047520(n)+Δ[A000295(n+1)²]`
-/

namespace A213754.P1012115625386241475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047520 n + (f1 (n + 1) - f1 n)

end

end A213754.P1012115625386241475

namespace A213754

/-- `A047520(n)+Δ[A000295(n+1)²]` -/
def P1012115625386241475.Spec : Prop :=
  ∀ n, P1012115625386241475.a n = A213754 (n + 1)

end A213754

/-! ## A213754.P913219027835212457

`A286778(n+1)-(A286778(n)+(n+1)²)`
-/

namespace A213754.P913219027835212457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286778 (n + 1) - (A286778 n + ((n + 1) ^ 2 : ℤ))

end

end A213754.P913219027835212457

namespace A213754

/-- `A286778(n+1)-(A286778(n)+(n+1)²)` -/
def P913219027835212457.Spec : Prop :=
  ∀ n, P913219027835212457.a n = A213754 (n + 1)

end A213754

/-! ## A213754.P9370474081182144800

`A000079(n+1)*A050488(n+1)-(n+1)²`
-/

namespace A213754.P9370474081182144800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A050488 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A213754.P9370474081182144800

namespace A213754

/-- `A000079(n+1)*A050488(n+1)-(n+1)²` -/
def P9370474081182144800.Spec : Prop :=
  ∀ n, P9370474081182144800.a n = A213754 (n + 1)

end A213754

/-! ## A213754.P13379382116955264883

`A047520(n)+A000225(n+1)*A050488(n+1)`
-/

namespace A213754.P13379382116955264883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047520 n + A000225 (n + 1) * A050488 (n + 1)

end

end A213754.P13379382116955264883

namespace A213754

/-- `A047520(n)+A000225(n+1)*A050488(n+1)` -/
def P13379382116955264883.Spec : Prop :=
  ∀ n, P13379382116955264883.a n = A213754 (n + 1)

end A213754

/-! ## A213754.P14104559141262472172

`A000225(n+1)+A000295(n+1)*A275970(n+1)`
-/

namespace A213754.P14104559141262472172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + A000295 (n + 1) * A275970 (n + 1)

end

end A213754.P14104559141262472172

namespace A213754

/-- `A000225(n+1)+A000295(n+1)*A275970(n+1)` -/
def P14104559141262472172.Spec : Prop :=
  ∀ n, P14104559141262472172.a n = A213754 (n + 1)

end A213754

/-! ## A213754.P9993011431411828554

`A213753((n+1)²+n²)`
-/

namespace A213754.P9993011431411828554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213753 ((n + 1) ^ 2 + n ^ 2)

end

end A213754.P9993011431411828554

namespace A213754

/-- `A213753((n+1)²+n²)` -/
def P9993011431411828554.Spec : Prop :=
  ∀ n, P9993011431411828554.a n = A213754 (n + 1)

end A213754

/-!
# A213755: Antidiagonal sums of the convolution array A213753.

The programs for A213755, the canonical program `A213755.P14938991153294945988` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213755 has offset 1).

The definition of A213755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213755.P14938991153294945988

`∑[∑[A288038(n+1)-2*(n+1)]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213755

/-- `∑[∑[A288038(n+1)-2*(n+1)]]` -/
def P14938991153294945988.Spec : Prop :=
  ∀ n, P14938991153294945988.a n = A213755 (n + 1)

theorem P14938991153294945988.correct : P14938991153294945988.Spec := by
  intro n
  simp only [A213755, Nat.add_sub_cancel]

end A213755

/-! ## A213755.P10292957517333794517

`∑[∑[2*(A053220(n+1)-n)-1]]`
-/

namespace A213755.P10292957517333794517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A053220 (n + 1) - (n : ℤ)) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213755.P10292957517333794517

namespace A213755

/-- `∑[∑[2*(A053220(n+1)-n)-1]]` -/
def P10292957517333794517.Spec : Prop :=
  ∀ n, P10292957517333794517.a n = A213755 (n + 1)

end A213755

/-! ## A213755.P2897358292916880156

`∑[∑[A066524(n+1)+A066524(n)]]`
-/

namespace A213755.P2897358292916880156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066524 (n + 1) + A066524 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213755.P2897358292916880156

namespace A213755

/-- `∑[∑[A066524(n+1)+A066524(n)]]` -/
def P2897358292916880156.Spec : Prop :=
  ∀ n, P2897358292916880156.a n = A213755 (n + 1)

end A213755

/-! ## A213755.P12653306034227974152

`∑[A045618(n)+(n+1)*A000295(n+1)]`
-/

namespace A213755.P12653306034227974152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045618 n + (n + 1 : ℤ) * A000295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213755.P12653306034227974152

namespace A213755

/-- `∑[A045618(n)+(n+1)*A000295(n+1)]` -/
def P12653306034227974152.Spec : Prop :=
  ∀ n, P12653306034227974152.a n = A213755 (n + 1)

end A213755

/-! ## A213755.P16338408677766189195

`∑[A036799(n+1)+A036799(n)-(n+1)²]`
-/

namespace A213755.P16338408677766189195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036799 (n + 1) + (A036799 n - ((n + 1) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213755.P16338408677766189195

namespace A213755

/-- `∑[A036799(n+1)+A036799(n)-(n+1)²]` -/
def P16338408677766189195.Spec : Prop :=
  ∀ n, P16338408677766189195.a n = A213755 (n + 1)

end A213755

/-!
# A213757: Principal diagonal of the convolution array A213756.

The programs for A213757, the canonical program `A213757.P16311074821919734922` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213757 has offset 1).

The definition of A213757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213757.P16311074821919734922

`∑[∑[Δ[A128135(n+2)]-6]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213757

/-- `∑[∑[Δ[A128135(n+2)]-6]]` -/
def P16311074821919734922.Spec : Prop :=
  ∀ n, P16311074821919734922.a n = A213757 (n + 1)

theorem P16311074821919734922.correct : P16311074821919734922.Spec := by
  intro n
  simp only [A213757, Nat.add_sub_cancel]

end A213757

/-! ## A213757.P9999841166756828845

`∑[A213763(n+1)+A145654(n+1)]`
-/

namespace A213757.P9999841166756828845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213763 (n + 1) + A145654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213757.P9999841166756828845

namespace A213757

/-- `∑[A213763(n+1)+A145654(n+1)]` -/
def P9999841166756828845.Spec : Prop :=
  ∀ n, P9999841166756828845.a n = A213757 (n + 1)

end A213757

/-! ## A213757.P481570177866786229

`∑[A118414(n+1)+∑[A028399(n+2)]]`
-/

namespace A213757.P481570177866786229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028399 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118414 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213757.P481570177866786229

namespace A213757

/-- `∑[A118414(n+1)+∑[A028399(n+2)]]` -/
def P481570177866786229.Spec : Prop :=
  ∀ n, P481570177866786229.a n = A213757 (n + 1)

end A213757

/-! ## A213757.P6730185912073665380

`A213574(n+1)-n*A059672(n)`
-/

namespace A213757.P6730185912073665380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213574 (n + 1) - (n : ℤ) * A059672 n

end

end A213757.P6730185912073665380

namespace A213757

/-- `A213574(n+1)-n*A059672(n)` -/
def P6730185912073665380.Spec : Prop :=
  ∀ n, P6730185912073665380.a n = A213757 (n + 1)

end A213757

/-! ## A213757.P7353298783859553729

`Δ[A004273(n)*A055248(A167614(n+1))]`
-/

namespace A213757.P7353298783859553729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n * A055248 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213757.P7353298783859553729

namespace A213757

/-- `Δ[A004273(n)*A055248(A167614(n+1))]` -/
def P7353298783859553729.Spec : Prop :=
  ∀ n, P7353298783859553729.a n = A213757 (n + 1)

end A213757

/-! ## A213757.P5917771961809368864

`A213756((n+1)²+n²)`
-/

namespace A213757.P5917771961809368864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213756 ((n + 1) ^ 2 + n ^ 2)

end

end A213757.P5917771961809368864

namespace A213757

/-- `A213756((n+1)²+n²)` -/
def P5917771961809368864.Spec : Prop :=
  ∀ n, P5917771961809368864.a n = A213757 (n + 1)

end A213757

/-!
# A213758: Antidiagonal sums of the convolution array A213756.

The programs for A213758, the canonical program `A213758.P4241879048330554058` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213758 has offset 1).

The definition of A213758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213758.P4241879048330554058

`∑[∑[∑[5*2^n-4]]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213758

/-- `∑[∑[∑[5*2^n-4]]]` -/
def P4241879048330554058.Spec : Prop :=
  ∀ n, P4241879048330554058.a n = A213758 (n + 1)

theorem P4241879048330554058.correct : P4241879048330554058.Spec := by
  intro n
  simp only [A213758, Nat.add_sub_cancel]

end A213758

/-! ## A213758.P8676355736634501810

`floor(∑[∑[∑[2*a(n-1)+4]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A213758.P8676355736634501810
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  2 * f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213758.P8676355736634501810

namespace A213758

/-- `floor(∑[∑[∑[2*a(n-1)+4]]])` -/
def P8676355736634501810.Spec : Prop :=
  ∀ n, (P8676355736634501810.a n : ℤ) = A213758 (n + 1)

end A213758

/-! ## A213758.P7509964531808794535

`∑[∑[2*a(n-1)+4]]+a(n-1)` with `a(0)=1`
-/

namespace A213758.P7509964531808794535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A213758.P7509964531808794535

namespace A213758

/-- `∑[∑[2*a(n-1)+4]]+a(n-1)` -/
def P7509964531808794535.Spec : Prop :=
  ∀ n, (P7509964531808794535.a n : ℤ) = A213758 (n + 1)

end A213758

/-! ## A213758.P6849876033887245704

`floor(∑[∑[∑[a(n-1)+a(n-1)+4]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A213758.P6849876033887245704
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) + (f3 (n - 1) + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213758.P6849876033887245704

namespace A213758

/-- `floor(∑[∑[∑[a(n-1)+a(n-1)+4]]])` -/
def P6849876033887245704.Spec : Prop :=
  ∀ n, (P6849876033887245704.a n : ℤ) = A213758 (n + 1)

end A213758

/-! ## A213758.P5554521705311777740

`∑[∑[a(n-1)+a(n-1)+4]]+a(n-1)` with `a(0)=1`
-/

namespace A213758.P5554521705311777740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A213758.P5554521705311777740

namespace A213758

/-- `∑[∑[a(n-1)+a(n-1)+4]]+a(n-1)` -/
def P5554521705311777740.Spec : Prop :=
  ∀ n, (P5554521705311777740.a n : ℤ) = A213758 (n + 1)

end A213758

/-! ## A213758.P12355529155431979570

`A213764(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A213758.P12355529155431979570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213764 (n + 1) + a (n - 1)

end

end A213758.P12355529155431979570

namespace A213758

/-- `A213764(n+1)+a(n-1)` -/
def P12355529155431979570.Spec : Prop :=
  ∀ n, P12355529155431979570.a n = A213758 (n + 1)

end A213758

/-! ## A213758.P1593137572644030664

`A213764(n+2)-A002412(n+2)`
-/

namespace A213758.P1593137572644030664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213764 (n + 2) - A002412 (n + 2)

end

end A213758.P1593137572644030664

namespace A213758

/-- `A213764(n+2)-A002412(n+2)` -/
def P1593137572644030664.Spec : Prop :=
  ∀ n, P1593137572644030664.a n = A213758 (n + 1)

end A213758

/-! ## A213758.P10651700979472651747

`A126284(n+3)-A002412(n+3)`
-/

namespace A213758.P10651700979472651747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126284 (n + 3) - A002412 (n + 3)

end

end A213758.P10651700979472651747

namespace A213758

/-- `A126284(n+3)-A002412(n+3)` -/
def P10651700979472651747.Spec : Prop :=
  ∀ n, P10651700979472651747.a n = A213758 (n + 1)

end A213758

/-! ## A213758.P6669245419891391129

`A000007(n+1)+∑[A213764(n+1)]`
-/

namespace A213758.P6669245419891391129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213758.P6669245419891391129

namespace A213758

/-- `A000007(n+1)+∑[A213764(n+1)]` -/
def P6669245419891391129.Spec : Prop :=
  ∀ n, P6669245419891391129.a n = A213758 (n + 1)

end A213758

/-! ## A213758.P9180840564599681092

`∑[A213764(n+1)]+and(2, A001844(n))`
-/

namespace A213758.P9180840564599681092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.land 2 (A001844 n)

end

end A213758.P9180840564599681092

namespace A213758

/-- `∑[A213764(n+1)]+and(2, A001844(n))` -/
def P9180840564599681092.Spec : Prop :=
  ∀ n, P9180840564599681092.a n = A213758 (n + 1)

end A213758

/-! ## A213758.P1423569569735369231

`and(1, A006512(n+1))*∑[A213764(n+1)]`
-/

namespace A213758.P1423569569735369231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006512 (n + 1)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213758.P1423569569735369231

namespace A213758

/-- `and(1, A006512(n+1))*∑[A213764(n+1)]` -/
def P1423569569735369231.Spec : Prop :=
  ∀ n, P1423569569735369231.a n = A213758 (n + 1)

end A213758

/-! ## A213758.P864159141787112540

`A010054(A017257(n))+∑[A213764(n+1)]`
-/

namespace A213758.P864159141787112540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A017257 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213758.P864159141787112540

namespace A213758

/-- `A010054(A017257(n))+∑[A213764(n+1)]` -/
def P864159141787112540.Spec : Prop :=
  ∀ n, P864159141787112540.a n = A213758 (n + 1)

end A213758

/-! ## A213758.P17561963179958261008

`∑[A213764(n+1)]*A091090(A005843(n+1))`
-/

namespace A213758.P17561963179958261008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A091090 (A005843 (n + 1)).toNat

end

end A213758.P17561963179958261008

namespace A213758

/-- `∑[A213764(n+1)]*A091090(A005843(n+1))` -/
def P17561963179958261008.Spec : Prop :=
  ∀ n, P17561963179958261008.a n = A213758 (n + 1)

end A213758

/-! ## A213758.P16484975706459427219

`and(1, A063396(n))*∑[A213764(n+1)]`
-/

namespace A213758.P16484975706459427219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A063396 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213758.P16484975706459427219

namespace A213758

/-- `and(1, A063396(n))*∑[A213764(n+1)]` -/
def P16484975706459427219.Spec : Prop :=
  ∀ n, P16484975706459427219.a n = A213758 (n + 1)

end A213758

/-! ## A213758.P11336096125913512715

`∑[A213764(n+1)]%A202530(n+1)`
-/

namespace A213758.P11336096125913512715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A202530 (n + 1))

end

end A213758.P11336096125913512715

namespace A213758

/-- `∑[A213764(n+1)]%A202530(n+1)` -/
def P11336096125913512715.Spec : Prop :=
  ∀ n, P11336096125913512715.a n = A213758 (n + 1)

end A213758

/-! ## A213758.P15190221493342094127

`A323135(A323136(n+1))+∑[A213764(n+1)]`
-/

namespace A213758.P15190221493342094127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323135 (A323136 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213758.P15190221493342094127

namespace A213758

/-- `A323135(A323136(n+1))+∑[A213764(n+1)]` -/
def P15190221493342094127.Spec : Prop :=
  ∀ n, P15190221493342094127.a n = A213758 (n + 1)

end A213758

/-! ## A213758.P3293970364289066929

`∑[A213764(n+1)]%A033876(n)`
-/

namespace A213758.P3293970364289066929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A033876 n)

end

end A213758.P3293970364289066929

namespace A213758

/-- `∑[A213764(n+1)]%A033876(n)` -/
def P3293970364289066929.Spec : Prop :=
  ∀ n, P3293970364289066929.a n = A213758 (n + 1)

end A213758

/-! ## A213758.P8999938076145156895

`A007318(A000217(n))*∑[A213764(n+1)]`
-/

namespace A213758.P8999938076145156895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213758.P8999938076145156895

namespace A213758

/-- `A007318(A000217(n))*∑[A213764(n+1)]` -/
def P8999938076145156895.Spec : Prop :=
  ∀ n, P8999938076145156895.a n = A213758 (n + 1)

end A213758

/-! ## A213758.P8919424690255275675

`A173787(∑[n]+n)+∑[A213764(n+1)]`
-/

namespace A213758.P8919424690255275675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 (∑ j ∈ Finset.range (n + 1), f1 j + n) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A213758.P8919424690255275675

namespace A213758

/-- `A173787(∑[n]+n)+∑[A213764(n+1)]` -/
def P8919424690255275675.Spec : Prop :=
  ∀ n, P8919424690255275675.a n = A213758 (n + 1)

end A213758

/-!
# A213759: Principal diagonal of the convolution array A213783.

The programs for A213759, the canonical program `A213759.P6509183296340595488` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213759 has offset 1).

The definition of A213759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213759.P6509183296340595488

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=4, a(2)=11, a(3)=22, a(4)=39`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213759

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P6509183296340595488.Spec : Prop :=
  ∀ n, P6509183296340595488.a n = A213759 (n + 1)

theorem P6509183296340595488.correct : P6509183296340595488.Spec := by
  intro n
  simp only [A213759, Nat.add_sub_cancel]

end A213759

/-! ## A213759.P7614153955164334440

`∑[∑[or(1, n)]+n]`
-/

namespace A213759.P7614153955164334440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213759.P7614153955164334440

namespace A213759

/-- `∑[∑[or(1, n)]+n]` -/
def P7614153955164334440.Spec : Prop :=
  ∀ n, (P7614153955164334440.a n : ℤ) = A213759 (n + 1)

end A213759

/-! ## A213759.P9843782584187833136

`∑[comp[3*n]+∑[n]]`
-/

namespace A213759.P9843782584187833136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213759.P9843782584187833136

namespace A213759

/-- `∑[comp[3*n]+∑[n]]` -/
def P9843782584187833136.Spec : Prop :=
  ∀ n, (P9843782584187833136.a n : ℤ) = A213759 (n + 1)

end A213759

/-! ## A213759.P15616404497543404560

`floor((n/2)²)+C(n+3, 3)`
-/

namespace A213759.P15616404497543404560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋ + (Nat.choose (n + 3) 3 : ℤ)

end

end A213759.P15616404497543404560

namespace A213759

/-- `floor((n/2)²)+C(n+3, 3)` -/
def P15616404497543404560.Spec : Prop :=
  ∀ n, P15616404497543404560.a n = A213759 (n + 1)

end A213759

/-! ## A213759.P4824535848298000113

`floor(∑[∑[a(n-2)+2]])` with `a(0)=1, a(1)=2, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A213759.P4824535848298000113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213759.P4824535848298000113

namespace A213759

/-- `floor(∑[∑[a(n-2)+2]])` -/
def P4824535848298000113.Spec : Prop :=
  ∀ n, (P4824535848298000113.a n : ℤ) = A213759 (n + 1)

end A213759

/-! ## A213759.P16076023083661322857

`a(n-2)+n*(n+3)` with `a(0)=1, a(1)=4`
-/

namespace A213759.P16076023083661322857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + n * (n + 3)

end

end A213759.P16076023083661322857

namespace A213759

/-- `a(n-2)+n*(n+3)` -/
def P16076023083661322857.Spec : Prop :=
  ∀ n, (P16076023083661322857.a n : ℤ) = A213759 (n + 1)

end A213759

/-! ## A213759.P8887604466039347844

`floor(∑[∑[∑[2-a(n-1)]]])` with `a(0)=1, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A213759.P8887604466039347844
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f3 =>
  2 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213759.P8887604466039347844

namespace A213759

/-- `floor(∑[∑[∑[2-a(n-1)]]])` -/
def P8887604466039347844.Spec : Prop :=
  ∀ n, P8887604466039347844.a n = A213759 (n + 1)

end A213759

/-! ## A213759.P6163312435169507862

`∑[∑[a(n-2)+2]]+∑[n]` with `a(0)=1, a(1)=1`
-/

namespace A213759.P6163312435169507862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A213759.P6163312435169507862

namespace A213759

/-- `∑[∑[a(n-2)+2]]+∑[n]` -/
def P6163312435169507862.Spec : Prop :=
  ∀ n, (P6163312435169507862.a n : ℤ) = A213759 (n + 1)

end A213759

/-! ## A213759.P2754315906206325452

`∑[∑[n+2-and(1, n)]]-(n+1)`
-/

namespace A213759.P2754315906206325452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.land 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A213759.P2754315906206325452

namespace A213759

/-- `∑[∑[n+2-and(1, n)]]-(n+1)` -/
def P2754315906206325452.Spec : Prop :=
  ∀ n, P2754315906206325452.a n = A213759 (n + 1)

end A213759

/-! ## A213759.P12440188114274703549

`∑[n]-∑[∑[a(n-2)-2]]` with `a(0)=-1, a(1)=-1`
-/

namespace A213759.P12440188114274703549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n f3 =>
  f3 (n - 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A213759.P12440188114274703549

namespace A213759

/-- `∑[n]-∑[∑[a(n-2)-2]]` -/
def P12440188114274703549.Spec : Prop :=
  ∀ n, P12440188114274703549.a n = A213759 (n + 1)

end A213759

/-! ## A213759.P1687918276237522717

`(n+1)²-1+a(n-2)+n` with `a(0)=1, a(1)=4`
-/

namespace A213759.P1687918276237522717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ((n + 1) ^ 2 : ℤ) - 1 + (a (n - 2) + (n : ℤ))

end

end A213759.P1687918276237522717

namespace A213759

/-- `(n+1)²-1+a(n-2)+n` -/
def P1687918276237522717.Spec : Prop :=
  ∀ n, P1687918276237522717.a n = A213759 (n + 1)

end A213759

/-! ## A213759.P8309158052456933091

`A055232(n)-∑[n²]`
-/

namespace A213759.P8309158052456933091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055232 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213759.P8309158052456933091

namespace A213759

/-- `A055232(n)-∑[n²]` -/
def P8309158052456933091.Spec : Prop :=
  ∀ n, P8309158052456933091.a n = A213759 (n + 1)

end A213759

/-! ## A213759.P5384082986273037201

`A131941(n+1)+∑[n]`
-/

namespace A213759.P5384082986273037201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213759.P5384082986273037201

namespace A213759

/-- `A131941(n+1)+∑[n]` -/
def P5384082986273037201.Spec : Prop :=
  ∀ n, P5384082986273037201.a n = A213759 (n + 1)

end A213759

/-! ## A213759.P210342961318356147

`∑[n]+A173154(n)-n`
-/

namespace A213759.P210342961318356147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A173154 n - (n : ℤ))

end

end A213759.P210342961318356147

namespace A213759

/-- `∑[n]+A173154(n)-n` -/
def P210342961318356147.Spec : Prop :=
  ∀ n, P210342961318356147.a n = A213759 (n + 1)

end A213759

/-! ## A213759.P6265570228215411181

`2*A005744(n)+n+1`
-/

namespace A213759.P6265570228215411181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005744 n + (n + 1 : ℤ)

end

end A213759.P6265570228215411181

namespace A213759

/-- `2*A005744(n)+n+1` -/
def P6265570228215411181.Spec : Prop :=
  ∀ n, P6265570228215411181.a n = A213759 (n + 1)

end A213759

/-! ## A213759.P16507867489224999695

`2*A002623(n)-(n+1)`
-/

namespace A213759.P16507867489224999695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002623 n - (n + 1 : ℤ)

end

end A213759.P16507867489224999695

namespace A213759

/-- `2*A002623(n)-(n+1)` -/
def P16507867489224999695.Spec : Prop :=
  ∀ n, P16507867489224999695.a n = A213759 (n + 1)

end A213759

/-! ## A213759.P15424651340583831106

`∑[A007590(n)]+(n+1)²`
-/

namespace A213759.P15424651340583831106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A213759.P15424651340583831106

namespace A213759

/-- `∑[A007590(n)]+(n+1)²` -/
def P15424651340583831106.Spec : Prop :=
  ∀ n, P15424651340583831106.a n = A213759 (n + 1)

end A213759

/-! ## A213759.P13210470170520867796

`∑[A333574(n+1)]+n²`
-/

namespace A213759.P13210470170520867796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A213759.P13210470170520867796

namespace A213759

/-- `∑[A333574(n+1)]+n²` -/
def P13210470170520867796.Spec : Prop :=
  ∀ n, P13210470170520867796.a n = A213759 (n + 1)

end A213759

/-! ## A213759.P3107087272325199971

`A077043(n+1)+∑[∑[n]]`
-/

namespace A213759.P3107087272325199971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213759.P3107087272325199971

namespace A213759

/-- `A077043(n+1)+∑[∑[n]]` -/
def P3107087272325199971.Spec : Prop :=
  ∀ n, P3107087272325199971.a n = A213759 (n + 1)

end A213759

/-! ## A213759.P706809397782030617

`A005744(n)+A002623(n)`
-/

namespace A213759.P706809397782030617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005744 n + A002623 n

end

end A213759.P706809397782030617

namespace A213759

/-- `A005744(n)+A002623(n)` -/
def P706809397782030617.Spec : Prop :=
  ∀ n, P706809397782030617.a n = A213759 (n + 1)

end A213759

/-!
# A213760: Antidiagonal sums of the convolution array A213783.

The programs for A213760, the canonical program `A213760.P5004262437479471162` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213760 has offset 1).

The definition of A213760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213760.P5004262437479471162

`∑[∑[A093005(n+1)-A245288(n)]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213760

/-- `∑[∑[A093005(n+1)-A245288(n)]]` -/
def P5004262437479471162.Spec : Prop :=
  ∀ n, P5004262437479471162.a n = A213760 (n + 1)

theorem P5004262437479471162.correct : P5004262437479471162.Spec := by
  intro n
  simp only [A213760, Nat.add_sub_cancel]

end A213760

/-! ## A213760.P7872591979441725005

`A049778(n+1)+∑[A049778(n+1)]-A213850(n+1)`
-/

namespace A213760.P7872591979441725005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049778 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A213850 (n + 1))

end

end A213760.P7872591979441725005

namespace A213760

/-- `A049778(n+1)+∑[A049778(n+1)]-A213850(n+1)` -/
def P7872591979441725005.Spec : Prop :=
  ∀ n, P7872591979441725005.a n = A213760 (n + 1)

end A213760

/-! ## A213760.P408374105190128427

`Δ[∑[A213850(n+1)]-A049778(n+1)]`
-/

namespace A213760.P408374105190128427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213850 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A049778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213760.P408374105190128427

namespace A213760

/-- `Δ[∑[A213850(n+1)]-A049778(n+1)]` -/
def P408374105190128427.Spec : Prop :=
  ∀ n, P408374105190128427.a n = A213760 (n + 1)

end A213760

/-! ## A213760.P17274442769612658409

`A049778(n+1)+A213850(n+2)-A049778(n+2)`
-/

namespace A213760.P17274442769612658409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049778 (n + 1) + (A213850 (n + 2) - A049778 (n + 2))

end

end A213760.P17274442769612658409

namespace A213760

/-- `A049778(n+1)+A213850(n+2)-A049778(n+2)` -/
def P17274442769612658409.Spec : Prop :=
  ∀ n, P17274442769612658409.a n = A213760 (n + 1)

end A213760

/-! ## A213760.P17269333956787324583

`∑[A245288(n+1)+∑[A245288(n+2)]]`
-/

namespace A213760.P17269333956787324583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213760.P17269333956787324583

namespace A213760

/-- `∑[A245288(n+1)+∑[A245288(n+2)]]` -/
def P17269333956787324583.Spec : Prop :=
  ∀ n, P17269333956787324583.a n = A213760 (n + 1)

end A213760

/-!
# A213761: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = 3*n-5+3*h, n>=1, h>=1, and ** = convolution.

The programs for A213761, the canonical program `A213761.P7356628059179805218` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213761 has offset 1).

The definition of A213761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213761.P2574291283467490774

`A213819(n+1)-abs(A122432(n))`
-/

namespace A213761.P2574291283467490774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213819 (n + 1) - |A122432 n|

end

end A213761.P2574291283467490774

namespace A213761

/-- `A213819(n+1)-abs(A122432(n))` -/
def P2574291283467490774.Spec : Prop :=
  ∀ n, P2574291283467490774.a n = A213761 (n + 1)

end A213761

/-! ## A213761.P17052226337278724058

`A213825(n+1)-A213831(n+1)`
-/

namespace A213761.P17052226337278724058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213825 (n + 1) - A213831 (n + 1)

end

end A213761.P17052226337278724058

namespace A213761

/-- `A213825(n+1)-A213831(n+1)` -/
def P17052226337278724058.Spec : Prop :=
  ∀ n, P17052226337278724058.a n = A213761 (n + 1)

end A213761

/-! ## A213761.P7356628059179805218

`2*A213750(n+1)-A213500(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A213761

/-- `2*A213750(n+1)-A213500(n+1)` -/
def P7356628059179805218.Spec : Prop :=
  ∀ n, P7356628059179805218.a n = A213761 (n + 1)

theorem P7356628059179805218.correct : P7356628059179805218.Spec := by
  intro n
  simp only [A213761, Nat.add_sub_cancel]

end A213761

/-! ## A213761.P5896292964125715894

`2*A213831(n+1)-A213773(n+1)`
-/

namespace A213761.P5896292964125715894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213831 (n + 1) - A213773 (n + 1)

end

end A213761.P5896292964125715894

namespace A213761

/-- `2*A213831(n+1)-A213773(n+1)` -/
def P5896292964125715894.Spec : Prop :=
  ∀ n, P5896292964125715894.a n = A213761 (n + 1)

end A213761

/-! ## A213761.P6826367839244935662

`A213819(n+1)-A000217(A004736(n+1))`
-/

namespace A213761.P6826367839244935662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213819 (n + 1) - A000217 (A004736 (n + 1)).toNat

end

end A213761.P6826367839244935662

namespace A213761

/-- `A213819(n+1)-A000217(A004736(n+1))` -/
def P6826367839244935662.Spec : Prop :=
  ∀ n, P6826367839244935662.a n = A213761 (n + 1)

end A213761

/-! ## A213761.P15959265926842723302

`A213771(n+1)+A213841(n+1)-A213838(n+1)`
-/

namespace A213761.P15959265926842723302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213771 (n + 1) + (A213841 (n + 1) - A213838 (n + 1))

end

end A213761.P15959265926842723302

namespace A213761

/-- `A213771(n+1)+A213841(n+1)-A213838(n+1)` -/
def P15959265926842723302.Spec : Prop :=
  ∀ n, P15959265926842723302.a n = A213761 (n + 1)

end A213761

/-! ## A213761.P17529323256129958200

`(A051162(n)+A002260(n+1))*A000217(A004736(n+1))`
-/

namespace A213761.P17529323256129958200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051162 n + A002260 (n + 1)) * A000217 (A004736 (n + 1)).toNat

end

end A213761.P17529323256129958200

namespace A213761

/-- `(A051162(n)+A002260(n+1))*A000217(A004736(n+1))` -/
def P17529323256129958200.Spec : Prop :=
  ∀ n, P17529323256129958200.a n = A213761 (n + 1)

end A213761

/-! ## A213761.P6418276906401787028

`2*A213819(n+1)-A008486(A213500(n+1))`
-/

namespace A213761.P6418276906401787028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213819 (n + 1) - A008486 (A213500 (n + 1)).toNat

end

end A213761.P6418276906401787028

namespace A213761

/-- `2*A213819(n+1)-A008486(A213500(n+1))` -/
def P6418276906401787028.Spec : Prop :=
  ∀ n, P6418276906401787028.a n = A213761 (n + 1)

end A213761

/-! ## A213761.P15938003645772164895

`A005843(A213750(n+1))-A213500(n+1)`
-/

namespace A213761.P15938003645772164895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213750 (n + 1)).toNat - A213500 (n + 1)

end

end A213761.P15938003645772164895

namespace A213761

/-- `A005843(A213750(n+1))-A213500(n+1)` -/
def P15938003645772164895.Spec : Prop :=
  ∀ n, P15938003645772164895.a n = A213761 (n + 1)

end A213761

/-! ## A213761.P8005629146068854404

`A213750(n+1)+A004277(A213750(n+1))-A213819(n+1)`
-/

namespace A213761.P8005629146068854404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213750 (n + 1) + (A004277 (A213750 (n + 1)).toNat - A213819 (n + 1))

end

end A213761.P8005629146068854404

namespace A213761

/-- `A213750(n+1)+A004277(A213750(n+1))-A213819(n+1)` -/
def P8005629146068854404.Spec : Prop :=
  ∀ n, P8005629146068854404.a n = A213761 (n + 1)

end A213761

/-! ## A213761.P10782174563919999889

`A005843(A213819(n+1)-A213500(n+1))-A213500(n+1)`
-/

namespace A213761.P10782174563919999889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213819 (n + 1) - A213500 (n + 1)).toNat - A213500 (n + 1)

end

end A213761.P10782174563919999889

namespace A213761

/-- `A005843(A213819(n+1)-A213500(n+1))-A213500(n+1)` -/
def P10782174563919999889.Spec : Prop :=
  ∀ n, P10782174563919999889.a n = A213761 (n + 1)

end A213761

/-! ## A213761.P8233780727948094905

`A008486(A213819(n+1)-A213500(n+1))-A213819(n+1)`
-/

namespace A213761.P8233780727948094905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A213819 (n + 1) - A213500 (n + 1)).toNat - A213819 (n + 1)

end

end A213761.P8233780727948094905

namespace A213761

/-- `A008486(A213819(n+1)-A213500(n+1))-A213819(n+1)` -/
def P8233780727948094905.Spec : Prop :=
  ∀ n, P8233780727948094905.a n = A213761 (n + 1)

end A213761

/-! ## A213761.P14602803274416142417

`A005843(A213819(n+1))-A008486(A213500(n+1))`
-/

namespace A213761.P14602803274416142417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213819 (n + 1)).toNat - A008486 (A213500 (n + 1)).toNat

end

end A213761.P14602803274416142417

namespace A213761

/-- `A005843(A213819(n+1))-A008486(A213500(n+1))` -/
def P14602803274416142417.Spec : Prop :=
  ∀ n, P14602803274416142417.a n = A213761 (n + 1)

end A213761

/-! ## A213761.P8195598811438456865

`A002264(2*A213825(n+1)-A213773(n+1))`
-/

namespace A213761.P8195598811438456865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * A213825 (n + 1) - A213773 (n + 1)).toNat

end

end A213761.P8195598811438456865

namespace A213761

/-- `A002264(2*A213825(n+1)-A213773(n+1))` -/
def P8195598811438456865.Spec : Prop :=
  ∀ n, P8195598811438456865.a n = A213761 (n + 1)

end A213761

/-! ## A213761.P17323748449727164642

`A002264(A213825(n+1)+A213825(n+1)-A213773(n+1))`
-/

namespace A213761.P17323748449727164642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A213825 (n + 1) + (A213825 (n + 1) - A213773 (n + 1))).toNat

end

end A213761.P17323748449727164642

namespace A213761

/-- `A002264(A213825(n+1)+A213825(n+1)-A213773(n+1))` -/
def P17323748449727164642.Spec : Prop :=
  ∀ n, P17323748449727164642.a n = A213761 (n + 1)

end A213761

/-!
# A213763: Principal diagonal of the convolution array A213762.

The programs for A213763, the canonical program `A213763.P12833680941205307654` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213763 has offset 1).

The definition of A213763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213763.P12833680941205307654

`6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=11, a(2)=43, a(3)=127`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213763

/-- `6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` -/
def P12833680941205307654.Spec : Prop :=
  ∀ n, P12833680941205307654.a n = A213763 (n + 1)

theorem P12833680941205307654.correct : P12833680941205307654.Spec := by
  intro n
  simp only [A213763, Nat.add_sub_cancel]

end A213763

/-! ## A213763.P3088797458663431392

`∑[2*(a(n-1)+2^n+2)]` with `a(0)=1`
-/

namespace A213763.P3088797458663431392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (f1 (n - 1) + (2 ^ n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213763.P3088797458663431392

namespace A213763

/-- `∑[2*(a(n-1)+2^n+2)]` -/
def P3088797458663431392.Spec : Prop :=
  ∀ n, (P3088797458663431392.a n : ℤ) = A213763 (n + 1)

end A213763

/-! ## A213763.P8108373756639212569

`∑[A052951(n+1)-4]`
-/

namespace A213763.P8108373756639212569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052951 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213763.P8108373756639212569

namespace A213763

/-- `∑[A052951(n+1)-4]` -/
def P8108373756639212569.Spec : Prop :=
  ∀ n, P8108373756639212569.a n = A213763 (n + 1)

end A213763

/-! ## A213763.P18281571171039794480

`A208658(n+2)-3*(n+1)`
-/

namespace A213763.P18281571171039794480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208658 (n + 2) - (3 * (n + 1) : ℤ)

end

end A213763.P18281571171039794480

namespace A213763

/-- `A208658(n+2)-3*(n+1)` -/
def P18281571171039794480.Spec : Prop :=
  ∀ n, P18281571171039794480.a n = A213763 (n + 1)

end A213763

/-! ## A213763.P3447352414630767028

`A014480(n+1)-(4*n+5)`
-/

namespace A213763.P3447352414630767028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014480 (n + 1) - (4 * n + 5 : ℤ)

end

end A213763.P3447352414630767028

namespace A213763

/-- `A014480(n+1)-(4*n+5)` -/
def P3447352414630767028.Spec : Prop :=
  ∀ n, P3447352414630767028.a n = A213763 (n + 1)

end A213763

/-! ## A213763.P246414090800374732

`(4*n+6)*A000225(n)+1`
-/

namespace A213763.P246414090800374732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 6 : ℤ) * A000225 n + 1

end

end A213763.P246414090800374732

namespace A213763

/-- `(4*n+6)*A000225(n)+1` -/
def P246414090800374732.Spec : Prop :=
  ∀ n, P246414090800374732.a n = A213763 (n + 1)

end A213763

/-! ## A213763.P10608151594831548360

`(A004767(n)+3)*(2^n-1)+1`
-/

namespace A213763.P10608151594831548360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004767 n + 3) * ((2 ^ n : ℤ) - 1) + 1

end

end A213763.P10608151594831548360

namespace A213763

/-- `(A004767(n)+3)*(2^n-1)+1` -/
def P10608151594831548360.Spec : Prop :=
  ∀ n, P10608151594831548360.a n = A213763 (n + 1)

end A213763

/-! ## A213763.P17420269984957919296

`∑[∑[(2*n+7)*A131577(n)]+1]`
-/

namespace A213763.P17420269984957919296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 7 : ℤ) * A131577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213763.P17420269984957919296

namespace A213763

/-- `∑[∑[(2*n+7)*A131577(n)]+1]` -/
def P17420269984957919296.Spec : Prop :=
  ∀ n, P17420269984957919296.a n = A213763 (n + 1)

end A213763

/-! ## A213763.P18277527967459944202

`(2*n+3)*(A000079(n+1)-2)+1`
-/

namespace A213763.P18277527967459944202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * (A000079 (n + 1) - 2) + 1

end

end A213763.P18277527967459944202

namespace A213763

/-- `(2*n+3)*(A000079(n+1)-2)+1` -/
def P18277527967459944202.Spec : Prop :=
  ∀ n, P18277527967459944202.a n = A213763 (n + 1)

end A213763

/-! ## A213763.P689065399799355090

`A051667(n)+A048479(n)`
-/

namespace A213763.P689065399799355090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051667 n + A048479 n

end

end A213763.P689065399799355090

namespace A213763

/-- `A051667(n)+A048479(n)` -/
def P689065399799355090.Spec : Prop :=
  ∀ n, P689065399799355090.a n = A213763 (n + 1)

end A213763

/-! ## A213763.P12111850363616048134

`A131438(n+1)+A059672(n)`
-/

namespace A213763.P12111850363616048134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131438 (n + 1) + A059672 n

end

end A213763.P12111850363616048134

namespace A213763

/-- `A131438(n+1)+A059672(n)` -/
def P12111850363616048134.Spec : Prop :=
  ∀ n, P12111850363616048134.a n = A213763 (n + 1)

end A213763

/-! ## A213763.P12644156491712255871

`A362526(n+1)+A276659(n)`
-/

namespace A213763.P12644156491712255871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362526 (n + 1) + A276659 n

end

end A213763.P12644156491712255871

namespace A213763

/-- `A362526(n+1)+A276659(n)` -/
def P12644156491712255871.Spec : Prop :=
  ∀ n, P12644156491712255871.a n = A213763 (n + 1)

end A213763

/-! ## A213763.P17114356880702501713

`A142964(n)+2*A059672(n)`
-/

namespace A213763.P17114356880702501713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142964 n + 2 * A059672 n

end

end A213763.P17114356880702501713

namespace A213763

/-- `A142964(n)+2*A059672(n)` -/
def P17114356880702501713.Spec : Prop :=
  ∀ n, P17114356880702501713.a n = A213763 (n + 1)

end A213763

/-! ## A213763.P4060261321230957813

`∑[A033484(n)+2*A087323(n)]`
-/

namespace A213763.P4060261321230957813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n + 2 * A087323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213763.P4060261321230957813

namespace A213763

/-- `∑[A033484(n)+2*A087323(n)]` -/
def P4060261321230957813.Spec : Prop :=
  ∀ n, P4060261321230957813.a n = A213763 (n + 1)

end A213763

/-! ## A213763.P11942304185922834216

`∑[A033484(n)]+n*A134067(n)`
-/

namespace A213763.P11942304185922834216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A134067 n

end

end A213763.P11942304185922834216

namespace A213763

/-- `∑[A033484(n)]+n*A134067(n)` -/
def P11942304185922834216.Spec : Prop :=
  ∀ n, P11942304185922834216.a n = A213763 (n + 1)

end A213763

/-! ## A213763.P10356915157607879697

`A145654(n+1)+A118414(n+1)`
-/

namespace A213763.P10356915157607879697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145654 (n + 1) + A118414 (n + 1)

end

end A213763.P10356915157607879697

namespace A213763

/-- `A145654(n+1)+A118414(n+1)` -/
def P10356915157607879697.Spec : Prop :=
  ∀ n, P10356915157607879697.a n = A213763 (n + 1)

end A213763

/-! ## A213763.P4939751831927395398

`A002064(n+2)-A100315(n+1)`
-/

namespace A213763.P4939751831927395398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 (n + 2) - A100315 (n + 1)

end

end A213763.P4939751831927395398

namespace A213763

/-- `A002064(n+2)-A100315(n+1)` -/
def P4939751831927395398.Spec : Prop :=
  ∀ n, P4939751831927395398.a n = A213763 (n + 1)

end A213763

/-! ## A213763.P3213230365060843404

`A339771(n)+2*A145654(n+1)`
-/

namespace A213763.P3213230365060843404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339771 n + 2 * A145654 (n + 1)

end

end A213763.P3213230365060843404

namespace A213763

/-- `A339771(n)+2*A145654(n+1)` -/
def P3213230365060843404.Spec : Prop :=
  ∀ n, P3213230365060843404.a n = A213763 (n + 1)

end A213763

/-! ## A213763.P11399328265339234567

`A048488(n)+n*A028399(n+2)`
-/

namespace A213763.P11399328265339234567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048488 n + (n : ℤ) * A028399 (n + 2)

end

end A213763.P11399328265339234567

namespace A213763

/-- `A048488(n)+n*A028399(n+2)` -/
def P11399328265339234567.Spec : Prop :=
  ∀ n, P11399328265339234567.a n = A213763 (n + 1)

end A213763

/-! ## A213763.P11822840485204625475

`A000918(n+1)*A005408(n+1)+1`
-/

namespace A213763.P11822840485204625475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (n + 1) * A005408 (n + 1) + 1

end

end A213763.P11822840485204625475

namespace A213763

/-- `A000918(n+1)*A005408(n+1)+1` -/
def P11822840485204625475.Spec : Prop :=
  ∀ n, P11822840485204625475.a n = A213763 (n + 1)

end A213763

/-!
# A213764: Antidiagonal sums of the convolution array A213762.

The programs for A213764, the canonical program `A213764.P5320050557074539896` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213764 has offset 1).

The definition of A213764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213764.P5320050557074539896

`5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=8, a(2)=31, a(3)=90`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213764

/-- `5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` -/
def P5320050557074539896.Spec : Prop :=
  ∀ n, P5320050557074539896.a n = A213764 (n + 1)

theorem P5320050557074539896.correct : P5320050557074539896.Spec := by
  intro n
  simp only [A213764, Nat.add_sub_cancel]

end A213764

/-! ## A213764.P16705996093898151055

`∑[∑[5*2^n-4]]`
-/

namespace A213764.P16705996093898151055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * 2 ^ n : ℤ) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213764.P16705996093898151055

namespace A213764

/-- `∑[∑[5*2^n-4]]` -/
def P16705996093898151055.Spec : Prop :=
  ∀ n, P16705996093898151055.a n = A213764 (n + 1)

end A213764

/-! ## A213764.P17459042982486969918

`floor(∑[∑[2*(a(n-1)+2)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A213764.P17459042982486969918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * (f2 (n - 1) + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213764.P17459042982486969918

namespace A213764

/-- `floor(∑[∑[2*(a(n-1)+2)]])` -/
def P17459042982486969918.Spec : Prop :=
  ∀ n, (P17459042982486969918.a n : ℤ) = A213764 (n + 1)

end A213764

/-! ## A213764.P18220845465528804547

`floor(∑[∑[∑[2*a(n-1)]]])` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A213764.P18220845465528804547
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213764.P18220845465528804547

namespace A213764

/-- `floor(∑[∑[∑[2*a(n-1)]]])` -/
def P18220845465528804547.Spec : Prop :=
  ∀ n, (P18220845465528804547.a n : ℤ) = A213764 (n + 1)

end A213764

/-! ## A213764.P16583606372439040146

`∑[2*(a(n-1)+2)]+a(n-1)` with `a(0)=1`
-/

namespace A213764.P16583606372439040146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (f1 (n - 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A213764.P16583606372439040146

namespace A213764

/-- `∑[2*(a(n-1)+2)]+a(n-1)` -/
def P16583606372439040146.Spec : Prop :=
  ∀ n, (P16583606372439040146.a n : ℤ) = A213764 (n + 1)

end A213764

/-! ## A213764.P3426104914088903442

`floor(∑[∑[a(n-1)+a(n-1)+4]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A213764.P3426104914088903442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213764.P3426104914088903442

namespace A213764

/-- `floor(∑[∑[a(n-1)+a(n-1)+4]])` -/
def P3426104914088903442.Spec : Prop :=
  ∀ n, (P3426104914088903442.a n : ℤ) = A213764 (n + 1)

end A213764

/-! ## A213764.P14941840842885702441

`2*(a(n-1)+(n+1)²)-(n+1)` with `a(0)=1`
-/

namespace A213764.P14941840842885702441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + ((n + 1) ^ 2 : ℤ)) - (n + 1 : ℤ)

end

end A213764.P14941840842885702441

namespace A213764

/-- `2*(a(n-1)+(n+1)²)-(n+1)` -/
def P14941840842885702441.Spec : Prop :=
  ∀ n, P14941840842885702441.a n = A213764 (n + 1)

end A213764

/-! ## A213764.P16596849928416463143

`lcm(2, a(n-1)+(n+1)²)-(n+1)` with `a(0)=1`
-/

namespace A213764.P16596849928416463143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 2 (a (n - 1) + ((n + 1) ^ 2 : ℤ)) : ℤ) - (n + 1 : ℤ)

end

end A213764.P16596849928416463143

namespace A213764

/-- `lcm(2, a(n-1)+(n+1)²)-(n+1)` -/
def P16596849928416463143.Spec : Prop :=
  ∀ n, P16596849928416463143.a n = A213764 (n + 1)

end A213764

/-! ## A213764.P15130139926919467767

`(n+1)*comp[2*n]+2*a(n-1)` with `a(0)=1`
-/

namespace A213764.P15130139926919467767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 * a (n - 1)

end

end A213764.P15130139926919467767

namespace A213764

/-- `(n+1)*comp[2*n]+2*a(n-1)` -/
def P15130139926919467767.Spec : Prop :=
  ∀ n, (P15130139926919467767.a n : ℤ) = A213764 (n + 1)

end A213764

/-! ## A213764.P2502529757195175324

`2*a(n-1)+(2*n+1)*(n+1)` with `a(0)=1`
-/

namespace A213764.P2502529757195175324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (2 * n + 1) * (n + 1)

end

end A213764.P2502529757195175324

namespace A213764

/-- `2*a(n-1)+(2*n+1)*(n+1)` -/
def P2502529757195175324.Spec : Prop :=
  ∀ n, (P2502529757195175324.a n : ℤ) = A213764 (n + 1)

end A213764

/-! ## A213764.P13313141114344825568

`∑[a(n-1)+4]+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A213764.P13313141114344825568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (a (n - 1) + a (n - 1))

end

end A213764.P13313141114344825568

namespace A213764

/-- `∑[a(n-1)+4]+a(n-1)+a(n-1)` -/
def P13313141114344825568.Spec : Prop :=
  ∀ n, (P13313141114344825568.a n : ℤ) = A213764 (n + 1)

end A213764

/-! ## A213764.P4710368380367292695

`xor(n, xor(n, ∑[A126284(n+1)]))`
-/

namespace A213764.P4710368380367292695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A213764.P4710368380367292695

namespace A213764

/-- `xor(n, xor(n, ∑[A126284(n+1)]))` -/
def P4710368380367292695.Spec : Prop :=
  ∀ n, P4710368380367292695.a n = A213764 (n + 1)

end A213764

/-! ## A213764.P16971109698910480150

`a(n-1)+A247904(n)+n` with `a(0)=1`
-/

namespace A213764.P16971109698910480150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A247904 n + (n : ℤ))

end

end A213764.P16971109698910480150

namespace A213764

/-- `a(n-1)+A247904(n)+n` -/
def P16971109698910480150.Spec : Prop :=
  ∀ n, P16971109698910480150.a n = A213764 (n + 1)

end A213764

/-! ## A213764.P17474334216439540014

`a(n-1)+A169831(n)-n` with `a(0)=1`
-/

namespace A213764.P17474334216439540014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A169831 n - (n : ℤ))

end

end A213764.P17474334216439540014

namespace A213764

/-- `a(n-1)+A169831(n)-n` -/
def P17474334216439540014.Spec : Prop :=
  ∀ n, P17474334216439540014.a n = A213764 (n + 1)

end A213764

/-! ## A213764.P1120648617887981832

`A001844(n)+2*a(n-1)+n` with `a(0)=1`
-/

namespace A213764.P1120648617887981832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001844 n + 2 * a (n - 1) + (n : ℤ)

end

end A213764.P1120648617887981832

namespace A213764

/-- `A001844(n)+2*a(n-1)+n` -/
def P1120648617887981832.Spec : Prop :=
  ∀ n, P1120648617887981832.a n = A213764 (n + 1)

end A213764

/-! ## A213764.P16793611944272094003

`A257448(n+1)-A047520(n)`
-/

namespace A213764.P16793611944272094003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257448 (n + 1) - A047520 n

end

end A213764.P16793611944272094003

namespace A213764

/-- `A257448(n+1)-A047520(n)` -/
def P16793611944272094003.Spec : Prop :=
  ∀ n, P16793611944272094003.a n = A213764 (n + 1)

end A213764

/-! ## A213764.P10295178582827118304

`A247904(n+1)-A001844(n+1)`
-/

namespace A213764.P10295178582827118304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247904 (n + 1) - A001844 (n + 1)

end

end A213764.P10295178582827118304

namespace A213764

/-- `A247904(n+1)-A001844(n+1)` -/
def P10295178582827118304.Spec : Prop :=
  ∀ n, P10295178582827118304.a n = A213764 (n + 1)

end A213764

/-! ## A213764.P1107475560904100107

`A126284(n+2)-A000384(n+2)`
-/

namespace A213764.P1107475560904100107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126284 (n + 2) - A000384 (n + 2)

end

end A213764.P1107475560904100107

namespace A213764

/-- `A126284(n+2)-A000384(n+2)` -/
def P1107475560904100107.Spec : Prop :=
  ∀ n, P1107475560904100107.a n = A213764 (n + 1)

end A213764

/-! ## A213764.P7054682854149639150

`A095264(n+1)+2*A047520(n)`
-/

namespace A213764.P7054682854149639150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095264 (n + 1) + 2 * A047520 n

end

end A213764.P7054682854149639150

namespace A213764

/-- `A095264(n+1)+2*A047520(n)` -/
def P7054682854149639150.Spec : Prop :=
  ∀ n, P7054682854149639150.a n = A213764 (n + 1)

end A213764

/-!
# A213765: Rectangular array: (row n) = b**c, where b(h) = 2*n-1, c(h) = F(n-1+h), F=A000045 (Fibonacci numbers), n>=1, h>=1, and ** = convolution.

The programs for A213765, there is no canonical definition to state claims against.
-/

/-! ## A213765.P15708373216718192462

`2*A213576(n+1)-A204922(n+1)`
-/

namespace A213765.P15708373216718192462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213576 (n + 1) - A204922 (n + 1)

end

end A213765.P15708373216718192462

/-! ## A213765.P11303757743726727991

`2*A213576(n+1)-A005206(A193999(n+1))`
-/

namespace A213765.P11303757743726727991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213576 (n + 1) - A005206 (A193999 (n + 1)).toNat

end

end A213765.P11303757743726727991

/-! ## A213765.P11424248440641486633

`A005843(A213576(n+1))-A204922(n+1)`
-/

namespace A213765.P11424248440641486633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213576 (n + 1)).toNat - A204922 (n + 1)

end

end A213765.P11424248440641486633

/-! ## A213765.P18294247164957082531

`A005843(A213576(n+1))-A005206(A193999(n+1))`
-/

namespace A213765.P18294247164957082531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213576 (n + 1)).toNat - A005206 (A193999 (n + 1)).toNat

end

end A213765.P18294247164957082531

/-!
# A213766: Principal diagonal of the convolution array A213765.

The programs for A213766, the canonical program `A213766.P16960842637779880189` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213766 has offset 1).

The definition of A213766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213766.P16960842637779880189

`A023860(2*(n+1))-A099920(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A213766

/-- `A023860(2*(n+1))-A099920(n)` -/
def P16960842637779880189.Spec : Prop :=
  ∀ n, P16960842637779880189.a n = A213766 (n + 1)

theorem P16960842637779880189.correct : P16960842637779880189.Spec := by
  intro n
  simp only [A213766, Nat.add_sub_cancel]

end A213766

/-! ## A213766.P12855096985047356158

`A023864(2*n+1)-A099920(n)`
-/

namespace A213766.P12855096985047356158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023864 (2 * n + 1) - A099920 n

end

end A213766.P12855096985047356158

namespace A213766

/-- `A023864(2*n+1)-A099920(n)` -/
def P12855096985047356158.Spec : Prop :=
  ∀ n, P12855096985047356158.a n = A213766 (n + 1)

end A213766

/-! ## A213766.P16162659521316670272

`A023860(2*n+1)+A023860(2*n+1)-A129361(2*n)`
-/

namespace A213766.P16162659521316670272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023860 (2 * n + 1) + (A023860 (2 * n + 1) - A129361 (2 * n))

end

end A213766.P16162659521316670272

namespace A213766

/-- `A023860(2*n+1)+A023860(2*n+1)-A129361(2*n)` -/
def P16162659521316670272.Spec : Prop :=
  ∀ n, P16162659521316670272.a n = A213766 (n + 1)

end A213766

/-! ## A213766.P4961624140244127329

`2*A023860(2*n+1)-A129361(2*n)`
-/

namespace A213766.P4961624140244127329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023860 (2 * n + 1) - A129361 (2 * n)

end

end A213766.P4961624140244127329

namespace A213766

/-- `2*A023860(2*n+1)-A129361(2*n)` -/
def P4961624140244127329.Spec : Prop :=
  ∀ n, P4961624140244127329.a n = A213766 (n + 1)

end A213766

/-! ## A213766.P6717939880415989828

`A213765((n+1)²+n²)`
-/

namespace A213766.P6717939880415989828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213765 ((n + 1) ^ 2 + n ^ 2)

end

end A213766.P6717939880415989828

namespace A213766

/-- `A213765((n+1)²+n²)` -/
def P6717939880415989828.Spec : Prop :=
  ∀ n, P6717939880415989828.a n = A213766 (n + 1)

end A213766

/-!
# A213767: Antidiagonal sums of the convolution array A213765.

The programs for A213767, the canonical program `A213767.P7252667460162350283` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213767 has offset 1).

The definition of A213767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213767.P7252667460162350283

`4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=1, a(1)=5, a(2)=17, a(3)=47, a(4)=114, a(5)=254`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213767

/-- `4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` -/
def P7252667460162350283.Spec : Prop :=
  ∀ n, P7252667460162350283.a n = A213767 (n + 1)

theorem P7252667460162350283.correct : P7252667460162350283.Spec := by
  intro n
  simp only [A213767, Nat.add_sub_cancel]

end A213767

/-! ## A213767.P11123540354197309516

`∑[∑[A136376(n+1)]]`
-/

namespace A213767.P11123540354197309516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136376 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213767.P11123540354197309516

namespace A213767

/-- `∑[∑[A136376(n+1)]]` -/
def P11123540354197309516.Spec : Prop :=
  ∀ n, P11123540354197309516.a n = A213767 (n + 1)

end A213767

/-! ## A213767.P10946732818476557352

`∑[(n-1)*A020701(n)+4]`
-/

namespace A213767.P10946732818476557352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A020701 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213767.P10946732818476557352

namespace A213767

/-- `∑[(n-1)*A020701(n)+4]` -/
def P10946732818476557352.Spec : Prop :=
  ∀ n, P10946732818476557352.a n = A213767 (n + 1)

end A213767

/-! ## A213767.P9738712837678006318

`∑[∑[A000032(n+1)+a(n-2)+a(n-1)]]` with `a(0)=1, a(1)=3`
-/

namespace A213767.P9738712837678006318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  A000032 (n + 1) + (f2 (n - 2) + f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213767.P9738712837678006318

namespace A213767

/-- `∑[∑[A000032(n+1)+a(n-2)+a(n-1)]]` -/
def P9738712837678006318.Spec : Prop :=
  ∀ n, P9738712837678006318.a n = A213767 (n + 1)

end A213767

/-! ## A213767.P11142853271247507536

`∑[∑[A014739(n)+A014286(n)]]`
-/

namespace A213767.P11142853271247507536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 n + A014286 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213767.P11142853271247507536

namespace A213767

/-- `∑[∑[A014739(n)+A014286(n)]]` -/
def P11142853271247507536.Spec : Prop :=
  ∀ n, P11142853271247507536.a n = A213767 (n + 1)

end A213767

/-! ## A213767.P6926856817851113877

`∑[A014286(n+1)+A014286(n)]`
-/

namespace A213767.P6926856817851113877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014286 (n + 1) + A014286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213767.P6926856817851113877

namespace A213767

/-- `∑[A014286(n+1)+A014286(n)]` -/
def P6926856817851113877.Spec : Prop :=
  ∀ n, P6926856817851113877.a n = A213767 (n + 1)

end A213767

/-! ## A213767.P1827957098027292157

`∑[∑[A023607(n)+A007502(n+1)]]`
-/

namespace A213767.P1827957098027292157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 n + A007502 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213767.P1827957098027292157

namespace A213767

/-- `∑[∑[A023607(n)+A007502(n+1)]]` -/
def P1827957098027292157.Spec : Prop :=
  ∀ n, P1827957098027292157.a n = A213767 (n + 1)

end A213767

/-! ## A213767.P683552222297114838

`∑[∑[A000045(n+1)+n*A000045(n+2)]]`
-/

namespace A213767.P683552222297114838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (n : ℤ) * A000045 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213767.P683552222297114838

namespace A213767

/-- `∑[∑[A000045(n+1)+n*A000045(n+2)]]` -/
def P683552222297114838.Spec : Prop :=
  ∀ n, P683552222297114838.a n = A213767 (n + 1)

end A213767

/-!
# A213768: Rectangular array: (row n) = b**c, where b(h) = F(h), c(h) = 2*n-3+2*h, F=A000045 (Fibonacci numbers), n>=1, h>=1, and ** = convolution.

The programs for A213768, the canonical program `A213768.P6784078122479010732` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213768 has offset 1).

The definition of A213768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213768.P6784078122479010732

`2*A213579(n+1)-A104582(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A213768

/-- `2*A213579(n+1)-A104582(n+1)` -/
def P6784078122479010732.Spec : Prop :=
  ∀ n, P6784078122479010732.a n = A213768 (n + 1)

theorem P6784078122479010732.correct : P6784078122479010732.Spec := by
  intro n
  simp only [A213768, Nat.add_sub_cancel]

end A213768

/-! ## A213768.P15620731306970611475

`A004277(A213579(n+1))-A104582(n+1)`
-/

namespace A213768.P15620731306970611475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A213579 (n + 1)).toNat - A104582 (n + 1)

end

end A213768.P15620731306970611475

namespace A213768

/-- `A004277(A213579(n+1))-A104582(n+1)` -/
def P15620731306970611475.Spec : Prop :=
  ∀ n, P15620731306970611475.a n = A213768 (n + 1)

end A213768

/-!
# A213769: Principal diagonal of the convolution array A213768.

The programs for A213769, the canonical program `A213769.P7680823754271710707` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213769 has offset 1).

The definition of A213769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213769.P7680823754271710707

`4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=1, a(1)=8, a(2)=26, a(3)=63, a(4)=136, a(5)=272`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213769

/-- `4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` -/
def P7680823754271710707.Spec : Prop :=
  ∀ n, P7680823754271710707.a n = A213769 (n + 1)

theorem P7680823754271710707.correct : P7680823754271710707.Spec := by
  intro n
  simp only [A213769, Nat.add_sub_cancel]

end A213769

/-! ## A213769.P7400630825354303181

`A024463(Δ[n²])`
-/

namespace A213769.P7400630825354303181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024463 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A213769.P7400630825354303181

namespace A213769

/-- `A024463(Δ[n²])` -/
def P7400630825354303181.Spec : Prop :=
  ∀ n, P7400630825354303181.a n = A213769 (n + 1)

end A213769

/-! ## A213769.P1401879328860199535

`A213585(n+1)+A023607(n)`
-/

namespace A213769.P1401879328860199535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213585 (n + 1) + A023607 n

end

end A213769.P1401879328860199535

namespace A213769

/-- `A213585(n+1)+A023607(n)` -/
def P1401879328860199535.Spec : Prop :=
  ∀ n, P1401879328860199535.a n = A213769 (n + 1)

end A213769

/-! ## A213769.P3444455789385869956

`A024463(2*n+1)%A024469(n+4)`
-/

namespace A213769.P3444455789385869956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024463 (2 * n + 1)) (A024469 (n + 4))

end

end A213769.P3444455789385869956

namespace A213769

/-- `A024463(2*n+1)%A024469(n+4)` -/
def P3444455789385869956.Spec : Prop :=
  ∀ n, P3444455789385869956.a n = A213769 (n + 1)

end A213769

/-! ## A213769.P1747069081949129690

`A024463(2*n+1)-char[A026741(n)]+1`
-/

namespace A213769.P1747069081949129690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024463 (2 * n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 1

end

end A213769.P1747069081949129690

namespace A213769

/-- `A024463(2*n+1)-char[A026741(n)]+1` -/
def P1747069081949129690.Spec : Prop :=
  ∀ n, P1747069081949129690.a n = A213769 (n + 1)

end A213769

/-! ## A213769.P9306702290255459317

`∑[A000032(n+1)]+(n+1)*A168193(n)`
-/

namespace A213769.P9306702290255459317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ) * A168193 n

end

end A213769.P9306702290255459317

namespace A213769

/-- `∑[A000032(n+1)]+(n+1)*A168193(n)` -/
def P9306702290255459317.Spec : Prop :=
  ∀ n, P9306702290255459317.a n = A213769 (n + 1)

end A213769

/-! ## A213769.P11788632227758220126

`∑[A000204(n+1)]+(n+1)*A168193(n)`
-/

namespace A213769.P11788632227758220126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ) * A168193 n

end

end A213769.P11788632227758220126

namespace A213769

/-- `∑[A000204(n+1)]+(n+1)*A168193(n)` -/
def P11788632227758220126.Spec : Prop :=
  ∀ n, P11788632227758220126.a n = A213769 (n + 1)

end A213769

/-! ## A213769.P5649390010204322933

`A024463(2*n+1)^A014963(4*n+2)`
-/

namespace A213769.P5649390010204322933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024463 (2 * n + 1) : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A213769.P5649390010204322933

namespace A213769

/-- `A024463(2*n+1)^A014963(4*n+2)` -/
def P5649390010204322933.Spec : Prop :=
  ∀ n, P5649390010204322933.a n = (A213769 (n + 1) : ℚ)

end A213769

/-! ## A213769.P8664442364609443333

`A024463(2*n+1)-A000027(n+1)+1+n`
-/

namespace A213769.P8664442364609443333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024463 (2 * n + 1) - A000027 (n + 1) + 1 + (n : ℤ)

end

end A213769.P8664442364609443333

namespace A213769

/-- `A024463(2*n+1)-A000027(n+1)+1+n` -/
def P8664442364609443333.Spec : Prop :=
  ∀ n, P8664442364609443333.a n = A213769 (n + 1)

end A213769

/-! ## A213769.P8428181680657761781

`A023607(n)+Δ[n*A001891(n)]`
-/

namespace A213769.P8428181680657761781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 n + (f1 (n + 1) - f1 n)

end

end A213769.P8428181680657761781

namespace A213769

/-- `A023607(n)+Δ[n*A001891(n)]` -/
def P8428181680657761781.Spec : Prop :=
  ∀ n, P8428181680657761781.a n = A213769 (n + 1)

end A213769

/-! ## A213769.P14808573181846994361

`2*A025083(2*n+1)-A025083(2*(n+1))`
-/

namespace A213769.P14808573181846994361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025083 (2 * n + 1) - A025083 (2 * (n + 1))

end

end A213769.P14808573181846994361

namespace A213769

/-- `2*A025083(2*n+1)-A025083(2*(n+1))` -/
def P14808573181846994361.Spec : Prop :=
  ∀ n, P14808573181846994361.a n = A213769 (n + 1)

end A213769

/-! ## A213769.P3581371210170013623

`Δ[A001924(n)*A004273(n)]`
-/

namespace A213769.P3581371210170013623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n * A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213769.P3581371210170013623

namespace A213769

/-- `Δ[A001924(n)*A004273(n)]` -/
def P3581371210170013623.Spec : Prop :=
  ∀ n, P3581371210170013623.a n = A213769 (n + 1)

end A213769

/-! ## A213769.P9527229565928144449

`A024463(A000027(2*n+1))²/A024463(2*n+1)`
-/

namespace A213769.P9527229565928144449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024463 (A000027 (2 * n + 1)).toNat ^ 2 : ℚ) / (A024463 (2 * n + 1) : ℚ)

end

end A213769.P9527229565928144449

namespace A213769

/-- `A024463(A000027(2*n+1))²/A024463(2*n+1)` -/
def P9527229565928144449.Spec : Prop :=
  ∀ n, P9527229565928144449.a n = (A213769 (n + 1) : ℚ)

end A213769

/-! ## A213769.P8687857583579766436

`A024463(2*n+1)²/A024463(A026741(2*n+1))`
-/

namespace A213769.P8687857583579766436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024463 (2 * n + 1) ^ 2 : ℚ) / (A024463 (A026741 (2 * n + 1)).toNat : ℚ)

end

end A213769.P8687857583579766436

namespace A213769

/-- `A024463(2*n+1)²/A024463(A026741(2*n+1))` -/
def P8687857583579766436.Spec : Prop :=
  ∀ n, P8687857583579766436.a n = (A213769 (n + 1) : ℚ)

end A213769

/-! ## A213769.P6055920449064254447

`A024463(2*n+1)%A227485(n)`
-/

namespace A213769.P6055920449064254447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024463 (2 * n + 1)) (A227485 n)

end

end A213769.P6055920449064254447

namespace A213769

/-- `A024463(2*n+1)%A227485(n)` -/
def P6055920449064254447.Spec : Prop :=
  ∀ n, P6055920449064254447.a n = A213769 (n + 1)

end A213769

/-!
# A213770: Antidiagonal sums of the convolution array A213768.

The programs for A213770, the canonical program `A213770.P906070619957960189` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213770 has offset 1).

The definition of A213770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213770.P906070619957960189

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=7, a(2)=23, a(3)=58, a(4)=126`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213770

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P906070619957960189.Spec : Prop :=
  ∀ n, P906070619957960189.a n = A213770 (n + 1)

theorem P906070619957960189.correct : P906070619957960189.Spec := by
  intro n
  simp only [A213770, Nat.add_sub_cancel]

end A213770

/-! ## A213770.P13036724019757614337

`∑[∑[∑[a(n-1)+a(n-2)]]]` with `a(0)=1, a(1)=4`
-/

namespace A213770.P13036724019757614337
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f3 =>
  f3 (n - 1) + f3 (n - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213770.P13036724019757614337

namespace A213770

/-- `∑[∑[∑[a(n-1)+a(n-2)]]]` -/
def P13036724019757614337.Spec : Prop :=
  ∀ n, (P13036724019757614337.a n : ℤ) = A213770 (n + 1)

end A213770

/-! ## A213770.P11886996046628734549

`∑[∑[A053311(n)]]`
-/

namespace A213770.P11886996046628734549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053311 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213770.P11886996046628734549

namespace A213770

/-- `∑[∑[A053311(n)]]` -/
def P11886996046628734549.Spec : Prop :=
  ∀ n, P11886996046628734549.a n = A213770 (n + 1)

end A213770

/-! ## A213770.P18103838432487529325

`∑[A192749(n+1)]`
-/

namespace A213770.P18103838432487529325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213770.P18103838432487529325

namespace A213770

/-- `∑[A192749(n+1)]` -/
def P18103838432487529325.Spec : Prop :=
  ∀ n, P18103838432487529325.a n = A213770 (n + 1)

end A213770

/-! ## A213770.P1173056681183309410

`∑[∑[∑[A000285(n)]]]`
-/

namespace A213770.P1173056681183309410
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213770.P1173056681183309410

namespace A213770

/-- `∑[∑[∑[A000285(n)]]]` -/
def P1173056681183309410.Spec : Prop :=
  ∀ n, P1173056681183309410.a n = A213770 (n + 1)

end A213770

/-! ## A213770.P8414202694557958076

`∑[∑[∑[A104449(n+1)]]]`
-/

namespace A213770.P8414202694557958076
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213770.P8414202694557958076

namespace A213770

/-- `∑[∑[∑[A104449(n+1)]]]` -/
def P8414202694557958076.Spec : Prop :=
  ∀ n, P8414202694557958076.a n = A213770 (n + 1)

end A213770

/-! ## A213770.P13230300226733305527

`∑[∑[A171516(n+1)-1]]`
-/

namespace A213770.P13230300226733305527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171516 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213770.P13230300226733305527

namespace A213770

/-- `∑[∑[A171516(n+1)-1]]` -/
def P13230300226733305527.Spec : Prop :=
  ∀ n, P13230300226733305527.a n = A213770 (n + 1)

end A213770

/-! ## A213770.P14544946461185598073

`∑[∑[A030119(n+1)+n]]`
-/

namespace A213770.P14544946461185598073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030119 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213770.P14544946461185598073

namespace A213770

/-- `∑[∑[A030119(n+1)+n]]` -/
def P14544946461185598073.Spec : Prop :=
  ∀ n, P14544946461185598073.a n = A213770 (n + 1)

end A213770

/-! ## A213770.P8517232528214147824

`∑[A192951(n+2)-(n+2)]`
-/

namespace A213770.P8517232528214147824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 (n + 2) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213770.P8517232528214147824

namespace A213770

/-- `∑[A192951(n+2)-(n+2)]` -/
def P8517232528214147824.Spec : Prop :=
  ∀ n, P8517232528214147824.a n = A213770 (n + 1)

end A213770

/-! ## A213770.P3679227463979166264

`A213586(n+1)+A001924(n)`
-/

namespace A213770.P3679227463979166264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213586 (n + 1) + A001924 n

end

end A213770.P3679227463979166264

namespace A213770

/-- `A213586(n+1)+A001924(n)` -/
def P3679227463979166264.Spec : Prop :=
  ∀ n, P3679227463979166264.a n = A213770 (n + 1)

end A213770

/-! ## A213770.P9656534254767211506

`A027963(n+3)+A014162(n)`
-/

namespace A213770.P9656534254767211506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027963 (n + 3) + A014162 n

end

end A213770.P9656534254767211506

namespace A213770

/-- `A027963(n+3)+A014162(n)` -/
def P9656534254767211506.Spec : Prop :=
  ∀ n, P9656534254767211506.a n = A213770 (n + 1)

end A213770

/-! ## A213770.P13108739440581784761

`A053808(n)+2*A014162(n)`
-/

namespace A213770.P13108739440581784761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053808 n + 2 * A014162 n

end

end A213770.P13108739440581784761

namespace A213770

/-- `A053808(n)+2*A014162(n)` -/
def P13108739440581784761.Spec : Prop :=
  ∀ n, P13108739440581784761.a n = A213770 (n + 1)

end A213770

/-! ## A213770.P17897931133588498897

`A193008(n+1)-A192982(n+2)`
-/

namespace A213770.P17897931133588498897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193008 (n + 1) - A192982 (n + 2)

end

end A213770.P17897931133588498897

namespace A213770

/-- `A193008(n+1)-A192982(n+2)` -/
def P17897931133588498897.Spec : Prop :=
  ∀ n, P17897931133588498897.a n = A213770 (n + 1)

end A213770

/-! ## A213770.P8367815772219851759

`A213586(n+2)-A023537(n+2)`
-/

namespace A213770.P8367815772219851759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213586 (n + 2) - A023537 (n + 2)

end

end A213770.P8367815772219851759

namespace A213770

/-- `A213586(n+2)-A023537(n+2)` -/
def P8367815772219851759.Spec : Prop :=
  ∀ n, P8367815772219851759.a n = A213770 (n + 1)

end A213770

/-! ## A213770.P315404264624107203

`2*A027963(n+3)-A053808(n)`
-/

namespace A213770.P315404264624107203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027963 (n + 3) - A053808 n

end

end A213770.P315404264624107203

namespace A213770

/-- `2*A027963(n+3)-A053808(n)` -/
def P315404264624107203.Spec : Prop :=
  ∀ n, P315404264624107203.a n = A213770 (n + 1)

end A213770

/-! ## A213770.P5567937403316000283

`∑[∑[A168193(n)+A000204(n+1)]]`
-/

namespace A213770.P5567937403316000283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168193 n + A000204 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213770.P5567937403316000283

namespace A213770

/-- `∑[∑[A168193(n)+A000204(n+1)]]` -/
def P5567937403316000283.Spec : Prop :=
  ∀ n, P5567937403316000283.a n = A213770 (n + 1)

end A213770

/-! ## A213770.P4136723741436015057

`∑[∑[∑[A000032(n+1)+A000045(n)]]]`
-/

namespace A213770.P4136723741436015057
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213770.P4136723741436015057

namespace A213770

/-- `∑[∑[∑[A000032(n+1)+A000045(n)]]]` -/
def P4136723741436015057.Spec : Prop :=
  ∀ n, P4136723741436015057.a n = A213770 (n + 1)

end A213770

/-! ## A213770.P3472244080585322231

`∑[∑[A355019(2*n+1)+A355019(2*n)]]`
-/

namespace A213770.P3472244080585322231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355019 (2 * n + 1) + A355019 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213770.P3472244080585322231

namespace A213770

/-- `∑[∑[A355019(2*n+1)+A355019(2*n)]]` -/
def P3472244080585322231.Spec : Prop :=
  ∀ n, P3472244080585322231.a n = A213770 (n + 1)

end A213770

/-!
# A213771: Rectangular array: (row n) = b**c, where b(h) = 3*h-2, c(h) = n-1+h, n>=1, h>=1, and ** = convolution.

The programs for A213771, the canonical program `A213771.P15097200566803793023` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213771 has offset 1).

The definition of A213771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213771.P11153485520562185096

`A213821(n+1)-A049777(n+1)`
-/

namespace A213771.P11153485520562185096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213821 (n + 1) - A049777 (n + 1)

end

end A213771.P11153485520562185096

namespace A213771

/-- `A213821(n+1)-A049777(n+1)` -/
def P11153485520562185096.Spec : Prop :=
  ∀ n, P11153485520562185096.a n = A213771 (n + 1)

end A213771

/-! ## A213771.P14170993203198598699

`A213828(n+1)-A213833(n+1)`
-/

namespace A213771.P14170993203198598699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213828 (n + 1) - A213833 (n + 1)

end

end A213771.P14170993203198598699

namespace A213771

/-- `A213828(n+1)-A213833(n+1)` -/
def P14170993203198598699.Spec : Prop :=
  ∀ n, P14170993203198598699.a n = A213771 (n + 1)

end A213771

/-! ## A213771.P6399970240518220322

`(A213833(n+1)+A104572(n+1))/2`
-/

namespace A213771.P6399970240518220322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213833 (n + 1) + A104572 (n + 1) : ℚ) / 2

end

end A213771.P6399970240518220322

namespace A213771

/-- `(A213833(n+1)+A104572(n+1))/2` -/
def P6399970240518220322.Spec : Prop :=
  ∀ n, P6399970240518220322.a n = (A213771 (n + 1) : ℚ)

end A213771

/-! ## A213771.P15097200566803793023

`2*A213751(n+1)-A213500(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A213771

/-- `2*A213751(n+1)-A213500(n+1)` -/
def P15097200566803793023.Spec : Prop :=
  ∀ n, P15097200566803793023.a n = A213771 (n + 1)

theorem P15097200566803793023.correct : P15097200566803793023.Spec := by
  intro n
  simp only [A213771, Nat.add_sub_cancel]

end A213771

/-! ## A213771.P8929826743260446634

`2*A213833(n+1)-A213773(n+1)`
-/

namespace A213771.P8929826743260446634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213833 (n + 1) - A213773 (n + 1)

end

end A213771.P8929826743260446634

namespace A213771

/-- `2*A213833(n+1)-A213773(n+1)` -/
def P8929826743260446634.Spec : Prop :=
  ∀ n, P8929826743260446634.a n = A213771 (n + 1)

end A213771

/-! ## A213771.P11403005655903373582

`(A213828(n+1)+A104572(n+1))/3`
-/

namespace A213771.P11403005655903373582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213828 (n + 1) + A104572 (n + 1) : ℚ) / 3

end

end A213771.P11403005655903373582

namespace A213771

/-- `(A213828(n+1)+A104572(n+1))/3` -/
def P11403005655903373582.Spec : Prop :=
  ∀ n, P11403005655903373582.a n = (A213771 (n + 1) : ℚ)

end A213771

/-! ## A213771.P1534420378729071463

`A062707(n)+A004736(n+1)*A049777(n+1)`
-/

namespace A213771.P1534420378729071463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n + A004736 (n + 1) * A049777 (n + 1)

end

end A213771.P1534420378729071463

namespace A213771

/-- `A062707(n)+A004736(n+1)*A049777(n+1)` -/
def P1534420378729071463.Spec : Prop :=
  ∀ n, P1534420378729071463.a n = A213771 (n + 1)

end A213771

/-! ## A213771.P12234658278829755928

`A104633(n+1)+A025581(n)*A049777(n+1)`
-/

namespace A213771.P12234658278829755928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) + A025581 n * A049777 (n + 1)

end

end A213771.P12234658278829755928

namespace A213771

/-- `A104633(n+1)+A025581(n)*A049777(n+1)` -/
def P12234658278829755928.Spec : Prop :=
  ∀ n, P12234658278829755928.a n = A213771 (n + 1)

end A213771

/-! ## A213771.P1395235489965136993

`A049777(n+1)+A213836(n+1)-A213500(n+1)`
-/

namespace A213771.P1395235489965136993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + (A213836 (n + 1) - A213500 (n + 1))

end

end A213771.P1395235489965136993

namespace A213771

/-- `A049777(n+1)+A213836(n+1)-A213500(n+1)` -/
def P1395235489965136993.Spec : Prop :=
  ∀ n, P1395235489965136993.a n = A213771 (n + 1)

end A213771

/-! ## A213771.P12321541112957726889

`A213761(n+1)+A213838(n+1)-A213841(n+1)`
-/

namespace A213771.P12321541112957726889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213761 (n + 1) + (A213838 (n + 1) - A213841 (n + 1))

end

end A213771.P12321541112957726889

namespace A213771

/-- `A213761(n+1)+A213838(n+1)-A213841(n+1)` -/
def P12321541112957726889.Spec : Prop :=
  ∀ n, P12321541112957726889.a n = A213771 (n + 1)

end A213771

/-! ## A213771.P12157048906141641055

`2*A213849(A185868(n+1))-A213500(n+1)`
-/

namespace A213771.P12157048906141641055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213849 (A185868 (n + 1)).toNat - A213500 (n + 1)

end

end A213771.P12157048906141641055

namespace A213771

/-- `2*A213849(A185868(n+1))-A213500(n+1)` -/
def P12157048906141641055.Spec : Prop :=
  ∀ n, P12157048906141641055.a n = A213771 (n + 1)

end A213771

/-! ## A213771.P13011665475062451255

`A213500(n+1)+A005843(A213500(n+1)-A049777(n+1))`
-/

namespace A213771.P13011665475062451255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) + A005843 (A213500 (n + 1) - A049777 (n + 1)).toNat

end

end A213771.P13011665475062451255

namespace A213771

/-- `A213500(n+1)+A005843(A213500(n+1)-A049777(n+1))` -/
def P13011665475062451255.Spec : Prop :=
  ∀ n, P13011665475062451255.a n = A213771 (n + 1)

end A213771

/-! ## A213771.P600009865207327114

`A008486(A213500(n+1))-2*A049777(n+1)`
-/

namespace A213771.P600009865207327114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A213500 (n + 1)).toNat - 2 * A049777 (n + 1)

end

end A213771.P600009865207327114

namespace A213771

/-- `A008486(A213500(n+1))-2*A049777(n+1)` -/
def P600009865207327114.Spec : Prop :=
  ∀ n, P600009865207327114.a n = A213771 (n + 1)

end A213771

/-! ## A213771.P12451390759421195459

`A213751(n+1)+A029578(A213751(n+1)-A049777(n+1))`
-/

namespace A213771.P12451390759421195459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213751 (n + 1) + A029578 (A213751 (n + 1) - A049777 (n + 1)).toNat

end

end A213771.P12451390759421195459

namespace A213771

/-- `A213751(n+1)+A029578(A213751(n+1)-A049777(n+1))` -/
def P12451390759421195459.Spec : Prop :=
  ∀ n, P12451390759421195459.a n = A213771 (n + 1)

end A213771

/-! ## A213771.P5215464096464348076

`A104572(n+1)+A004525(A213833(n+1)-A104572(n+1))`
-/

namespace A213771.P5215464096464348076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104572 (n + 1) + A004525 (A213833 (n + 1) - A104572 (n + 1)).toNat

end

end A213771.P5215464096464348076

namespace A213771

/-- `A104572(n+1)+A004525(A213833(n+1)-A104572(n+1))` -/
def P5215464096464348076.Spec : Prop :=
  ∀ n, P5215464096464348076.a n = A213771 (n + 1)

end A213771

/-! ## A213771.P12014820542896728347

`A104572(n+1)+A029578(A213833(n+1)-A104572(n+1))`
-/

namespace A213771.P12014820542896728347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104572 (n + 1) + A029578 (A213833 (n + 1) - A104572 (n + 1)).toNat

end

end A213771.P12014820542896728347

namespace A213771

/-- `A104572(n+1)+A029578(A213833(n+1)-A104572(n+1))` -/
def P12014820542896728347.Spec : Prop :=
  ∀ n, P12014820542896728347.a n = A213771 (n + 1)

end A213771

/-! ## A213771.P17469726527610619841

`A004525(A213833(n+1)+A104572(n+1))`
-/

namespace A213771.P17469726527610619841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A213833 (n + 1) + A104572 (n + 1)).toNat

end

end A213771.P17469726527610619841

namespace A213771

/-- `A004525(A213833(n+1)+A104572(n+1))` -/
def P17469726527610619841.Spec : Prop :=
  ∀ n, P17469726527610619841.a n = A213771 (n + 1)

end A213771

/-! ## A213771.P18298099684010225503

`A029578(A213833(n+1)+A104572(n+1))`
-/

namespace A213771.P18298099684010225503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A213833 (n + 1) + A104572 (n + 1)).toNat

end

end A213771.P18298099684010225503

namespace A213771

/-- `A029578(A213833(n+1)+A104572(n+1))` -/
def P18298099684010225503.Spec : Prop :=
  ∀ n, P18298099684010225503.a n = A213771 (n + 1)

end A213771

/-! ## A213771.P15241525278607188056

`A110654(A213833(n+1)+A104572(n+1))`
-/

namespace A213771.P15241525278607188056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A213833 (n + 1) + A104572 (n + 1)).toNat

end

end A213771.P15241525278607188056

namespace A213771

/-- `A110654(A213833(n+1)+A104572(n+1))` -/
def P15241525278607188056.Spec : Prop :=
  ∀ n, P15241525278607188056.a n = A213771 (n + 1)

end A213771

/-! ## A213771.P15429587992814266696

`A002264(A213828(n+1)+A104572(n+1))`
-/

namespace A213771.P15429587992814266696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A213828 (n + 1) + A104572 (n + 1)).toNat

end

end A213771.P15429587992814266696

namespace A213771

/-- `A002264(A213828(n+1)+A104572(n+1))` -/
def P15429587992814266696.Spec : Prop :=
  ∀ n, P15429587992814266696.a n = A213771 (n + 1)

end A213771

/-!
# A213772: Principal diagonal of the convolution array A213771.

The programs for A213772, the canonical program `A213772.P5510246262199692766` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213772 has offset 1).

The definition of A213772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213772.P5510246262199692766

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=11, a(2)=42, a(3)=106`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213772

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5510246262199692766.Spec : Prop :=
  ∀ n, P5510246262199692766.a n = A213772 (n + 1)

theorem P5510246262199692766.correct : P5510246262199692766.Spec := by
  intro n
  simp only [A213772, Nat.add_sub_cancel]

end A213772

/-! ## A213772.P1378142242882147484

`∑[∑[12*n-3]+4]`
-/

namespace A213772.P1378142242882147484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213772.P1378142242882147484

namespace A213772

/-- `∑[∑[12*n-3]+4]` -/
def P1378142242882147484.Spec : Prop :=
  ∀ n, P1378142242882147484.a n = A213772 (n + 1)

end A213772

/-! ## A213772.P6286298765591936106

`Δ[C(n+1, 2)*n²]`
-/

namespace A213772.P6286298765591936106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A213772.P6286298765591936106

namespace A213772

/-- `Δ[C(n+1, 2)*n²]` -/
def P6286298765591936106.Spec : Prop :=
  ∀ n, P6286298765591936106.a n = A213772 (n + 1)

end A213772

/-! ## A213772.P8593801942408596702

`Δ[lcm(n+1, n^3)]/2`
-/

namespace A213772.P8593801942408596702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n ^ 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2

end

end A213772.P8593801942408596702

namespace A213772

/-- `Δ[lcm(n+1, n^3)]/2` -/
def P8593801942408596702.Spec : Prop :=
  ∀ n, P8593801942408596702.a n = (A213772 (n + 1) : ℚ)

end A213772

/-! ## A213772.P4311899855297721712

`Δ[(n²-C(n, 2))*n²]`
-/

namespace A213772.P4311899855297721712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)) * (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213772.P4311899855297721712

namespace A213772

/-- `Δ[(n²-C(n, 2))*n²]` -/
def P4311899855297721712.Spec : Prop :=
  ∀ n, P4311899855297721712.a n = A213772 (n + 1)

end A213772

/-! ## A213772.P16975799060821659026

`abs(∑[∑[a(n-1)+12]])` with `a(0)=1, a(1)=9`
-/

namespace A213772.P16975799060821659026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213772.P16975799060821659026

namespace A213772

/-- `abs(∑[∑[a(n-1)+12]])` -/
def P16975799060821659026.Spec : Prop :=
  ∀ n, (P16975799060821659026.a n : ℤ) = A213772 (n + 1)

end A213772

/-! ## A213772.P8399128172199991181

`floor(∑[∑[a(n-1)+12]])` with `a(0)=1, a(1)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A213772.P8399128172199991181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213772.P8399128172199991181

namespace A213772

/-- `floor(∑[∑[a(n-1)+12]])` -/
def P8399128172199991181.Spec : Prop :=
  ∀ n, (P8399128172199991181.a n : ℤ) = A213772 (n + 1)

end A213772

/-! ## A213772.P1148508314014573886

`ceil(∑[∑[a(n-1)+12]])` with `a(0)=1, a(1)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A213772.P1148508314014573886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213772.P1148508314014573886

namespace A213772

/-- `ceil(∑[∑[a(n-1)+12]])` -/
def P1148508314014573886.Spec : Prop :=
  ∀ n, (P1148508314014573886.a n : ℤ) = A213772 (n + 1)

end A213772

/-! ## A213772.P11296357439426665773

`lcm((n+1)², Δ[n²])-∑[n]`
-/

namespace A213772.P11296357439426665773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n + 1) ^ 2 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A213772.P11296357439426665773

namespace A213772

/-- `lcm((n+1)², Δ[n²])-∑[n]` -/
def P11296357439426665773.Spec : Prop :=
  ∀ n, P11296357439426665773.a n = A213772 (n + 1)

end A213772

/-! ## A213772.P9161697762115741758

`C(n+2, 2)+2*n*(n+1)²`
-/

namespace A213772.P9161697762115741758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 + 2 * n * (n + 1) ^ 2

end

end A213772.P9161697762115741758

namespace A213772

/-- `C(n+2, 2)+2*n*(n+1)²` -/
def P9161697762115741758.Spec : Prop :=
  ∀ n, (P9161697762115741758.a n : ℤ) = A213772 (n + 1)

end A213772

/-! ## A213772.P6033815350237952182

`∑[n+1]+lcm(2, 2*n*(n+1)²)`
-/

namespace A213772.P6033815350237952182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm 2 (2 * n * (n + 1) ^ 2)

end

end A213772.P6033815350237952182

namespace A213772

/-- `∑[n+1]+lcm(2, 2*n*(n+1)²)` -/
def P6033815350237952182.Spec : Prop :=
  ∀ n, (P6033815350237952182.a n : ℤ) = A213772 (n + 1)

end A213772

/-! ## A213772.P18060839202071181754

`∑[n+1]+2*lcm(n, ∑[2*n+1])`
-/

namespace A213772.P18060839202071181754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * Nat.lcm n (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A213772.P18060839202071181754

namespace A213772

/-- `∑[n+1]+2*lcm(n, ∑[2*n+1])` -/
def P18060839202071181754.Spec : Prop :=
  ∀ n, (P18060839202071181754.a n : ℤ) = A213772 (n + 1)

end A213772

/-! ## A213772.P4983536986283686113

`(n+1)*(2*n+1)*(n+1)-C(n+1, 2)`
-/

namespace A213772.P4983536986283686113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * ((2 * n + 1) * (n + 1)) : ℤ) - (Nat.choose (n + 1) 2 : ℤ)

end

end A213772.P4983536986283686113

namespace A213772

/-- `(n+1)*(2*n+1)*(n+1)-C(n+1, 2)` -/
def P4983536986283686113.Spec : Prop :=
  ∀ n, P4983536986283686113.a n = A213772 (n + 1)

end A213772

/-! ## A213772.P16988045707732985484

`∑[n+1]+and(2*n+1, 2*n)*(n+1)²`
-/

namespace A213772.P16988045707732985484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land (2 * n + 1) (2 * n) * (n + 1) ^ 2

end

end A213772.P16988045707732985484

namespace A213772

/-- `∑[n+1]+and(2*n+1, 2*n)*(n+1)²` -/
def P16988045707732985484.Spec : Prop :=
  ∀ n, (P16988045707732985484.a n : ℤ) = A213772 (n + 1)

end A213772

/-! ## A213772.P18251568235983589150

`(2*n+1)*(n+1)+a(n-1)+(2*n)²` with `a(0)=1`
-/

namespace A213772.P18251568235983589150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1) * (n + 1) + (a (n - 1) + (2 * n) ^ 2)

end

end A213772.P18251568235983589150

namespace A213772

/-- `(2*n+1)*(n+1)+a(n-1)+(2*n)²` -/
def P18251568235983589150.Spec : Prop :=
  ∀ n, (P18251568235983589150.a n : ℤ) = A213772 (n + 1)

end A213772

/-! ## A213772.P12577280831907490512

`A281381(n)+1+n`
-/

namespace A213772.P12577280831907490512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281381 n + 1 + (n : ℤ)

end

end A213772.P12577280831907490512

namespace A213772

/-- `A281381(n)+1+n` -/
def P12577280831907490512.Spec : Prop :=
  ∀ n, P12577280831907490512.a n = A213772 (n + 1)

end A213772

/-! ## A213772.P10560361337626604549

`A096000(n)+∑[n²]`
-/

namespace A213772.P10560361337626604549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096000 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213772.P10560361337626604549

namespace A213772

/-- `A096000(n)+∑[n²]` -/
def P10560361337626604549.Spec : Prop :=
  ∀ n, P10560361337626604549.a n = A213772 (n + 1)

end A213772

/-! ## A213772.P17066644667210915806

`Δ[n²*A000217(n)]`
-/

namespace A213772.P17066644667210915806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213772.P17066644667210915806

namespace A213772

/-- `Δ[n²*A000217(n)]` -/
def P17066644667210915806.Spec : Prop :=
  ∀ n, P17066644667210915806.a n = A213772 (n + 1)

end A213772

/-! ## A213772.P14601754351719215974

`2*∑[A085473(n)/2]`
-/

namespace A213772.P14601754351719215974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085473 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213772.P14601754351719215974

namespace A213772

/-- `2*∑[A085473(n)/2]` -/
def P14601754351719215974.Spec : Prop :=
  ∀ n, P14601754351719215974.a n = (A213772 (n + 1) : ℚ)

end A213772

/-! ## A213772.P15848856347688824125

`A051895(n)+(n+1)²`
-/

namespace A213772.P15848856347688824125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051895 n + ((n + 1) ^ 2 : ℤ)

end

end A213772.P15848856347688824125

namespace A213772

/-- `A051895(n)+(n+1)²` -/
def P15848856347688824125.Spec : Prop :=
  ∀ n, P15848856347688824125.a n = A213772 (n + 1)

end A213772

/-!
# A213773: Rectangular array: (row n) = b**c, where b(h) = 3*h-2, c(h) = 3*n-5+3*h, n>=1, h>=1, and ** = convolution.

The programs for A213773, the canonical program `A213773.P8651754157967858797` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213773 has offset 1).

The definition of A213773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213773.P8651754157967858797

`A213825(n+1)-A095871(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A213773

/-- `A213825(n+1)-A095871(n+1)` -/
def P8651754157967858797.Spec : Prop :=
  ∀ n, P8651754157967858797.a n = A213773 (n + 1)

theorem P8651754157967858797.correct : P8651754157967858797.Spec := by
  intro n
  simp only [A213773, Nat.add_sub_cancel]

end A213773

/-! ## A213773.P3662634185881703140

`A213828(n+1)-A104572(n+1)`
-/

namespace A213773.P3662634185881703140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213828 (n + 1) - A104572 (n + 1)

end

end A213773.P3662634185881703140

namespace A213773

/-- `A213828(n+1)-A104572(n+1)` -/
def P3662634185881703140.Spec : Prop :=
  ∀ n, P3662634185881703140.a n = A213773 (n + 1)

end A213773

/-! ## A213773.P10576460015932689401

`2*A213831(n+1)-A213761(n+1)`
-/

namespace A213773.P10576460015932689401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213831 (n + 1) - A213761 (n + 1)

end

end A213773.P10576460015932689401

namespace A213773

/-- `2*A213831(n+1)-A213761(n+1)` -/
def P10576460015932689401.Spec : Prop :=
  ∀ n, P10576460015932689401.a n = A213773 (n + 1)

end A213773

/-! ## A213773.P5181589677520946555

`2*A213833(n+1)-A213771(n+1)`
-/

namespace A213773.P5181589677520946555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213833 (n + 1) - A213771 (n + 1)

end

end A213773.P5181589677520946555

namespace A213773

/-- `2*A213833(n+1)-A213771(n+1)` -/
def P5181589677520946555.Spec : Prop :=
  ∀ n, P5181589677520946555.a n = A213773 (n + 1)

end A213773

/-! ## A213773.P1171392431102487872

`A213828(n+1)-A001318(A099375(n))`
-/

namespace A213773.P1171392431102487872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213828 (n + 1) - A001318 (A099375 n).toNat

end

end A213773.P1171392431102487872

namespace A213773

/-- `A213828(n+1)-A001318(A099375(n))` -/
def P1171392431102487872.Spec : Prop :=
  ∀ n, P1171392431102487872.a n = A213773 (n + 1)

end A213773

/-! ## A213773.P15715210912887603633

`A213828(n+1)-A000326(A004736(n+1))`
-/

namespace A213773.P15715210912887603633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213828 (n + 1) - A000326 (A004736 (n + 1)).toNat

end

end A213773.P15715210912887603633

namespace A213773

/-- `A213828(n+1)-A000326(A004736(n+1))` -/
def P15715210912887603633.Spec : Prop :=
  ∀ n, P15715210912887603633.a n = A213773 (n + 1)

end A213773

/-! ## A213773.P14841269163495478326

`A213500(n+1)+A213838(n+1)-A055461(n+1)`
-/

namespace A213773.P14841269163495478326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) + (A213838 (n + 1) - A055461 (n + 1))

end

end A213773.P14841269163495478326

namespace A213773

/-- `A213500(n+1)+A213838(n+1)-A055461(n+1)` -/
def P14841269163495478326.Spec : Prop :=
  ∀ n, P14841269163495478326.a n = A213773 (n + 1)

end A213773

/-! ## A213773.P2270093560595062146

`A213771(n+1)+A005843(A213771(n+1)-A104572(n+1))`
-/

namespace A213773.P2270093560595062146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213771 (n + 1) + A005843 (A213771 (n + 1) - A104572 (n + 1)).toNat

end

end A213773.P2270093560595062146

namespace A213773

/-- `A213771(n+1)+A005843(A213771(n+1)-A104572(n+1))` -/
def P2270093560595062146.Spec : Prop :=
  ∀ n, P2270093560595062146.a n = A213773 (n + 1)

end A213773

/-! ## A213773.P7277840439047916076

`A008486(A213771(n+1))-2*A104572(n+1)`
-/

namespace A213773.P7277840439047916076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A213771 (n + 1)).toNat - 2 * A104572 (n + 1)

end

end A213773.P7277840439047916076

namespace A213773

/-- `A008486(A213771(n+1))-2*A104572(n+1)` -/
def P7277840439047916076.Spec : Prop :=
  ∀ n, P7277840439047916076.a n = A213773 (n + 1)

end A213773

/-! ## A213773.P6368732801299100127

`2*A213828(n+1)-A008486(A213771(n+1))`
-/

namespace A213773.P6368732801299100127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213828 (n + 1) - A008486 (A213771 (n + 1)).toNat

end

end A213773.P6368732801299100127

namespace A213773

/-- `2*A213828(n+1)-A008486(A213771(n+1))` -/
def P6368732801299100127.Spec : Prop :=
  ∀ n, P6368732801299100127.a n = A213773 (n + 1)

end A213773

/-! ## A213773.P15589102866687287134

`A008486(A213771(n+1))-A005843(A104572(n+1))`
-/

namespace A213773.P15589102866687287134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A213771 (n + 1)).toNat - A005843 (A104572 (n + 1)).toNat

end

end A213773.P15589102866687287134

namespace A213773

/-- `A008486(A213771(n+1))-A005843(A104572(n+1))` -/
def P15589102866687287134.Spec : Prop :=
  ∀ n, P15589102866687287134.a n = A213773 (n + 1)

end A213773

/-! ## A213773.P6391953326974305127

`A213833(n+1)+A004525(A213833(n+1)-A104572(n+1))`
-/

namespace A213773.P6391953326974305127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213833 (n + 1) + A004525 (A213833 (n + 1) - A104572 (n + 1)).toNat

end

end A213773.P6391953326974305127

namespace A213773

/-- `A213833(n+1)+A004525(A213833(n+1)-A104572(n+1))` -/
def P6391953326974305127.Spec : Prop :=
  ∀ n, P6391953326974305127.a n = A213773 (n + 1)

end A213773

/-! ## A213773.P16222123719930943952

`A213833(n+1)+A029578(A213833(n+1)-A104572(n+1))`
-/

namespace A213773.P16222123719930943952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213833 (n + 1) + A029578 (A213833 (n + 1) - A104572 (n + 1)).toNat

end

end A213773.P16222123719930943952

namespace A213773

/-- `A213833(n+1)+A029578(A213833(n+1)-A104572(n+1))` -/
def P16222123719930943952.Spec : Prop :=
  ∀ n, P16222123719930943952.a n = A213773 (n + 1)

end A213773

/-! ## A213773.P3382408340855912671

`A213833(n+1)+A110654(A213833(n+1)-A104572(n+1))`
-/

namespace A213773.P3382408340855912671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213833 (n + 1) + A110654 (A213833 (n + 1) - A104572 (n + 1)).toNat

end

end A213773.P3382408340855912671

namespace A213773

/-- `A213833(n+1)+A110654(A213833(n+1)-A104572(n+1))` -/
def P3382408340855912671.Spec : Prop :=
  ∀ n, P3382408340855912671.a n = A213773 (n + 1)

end A213773

/-! ## A213773.P12350472666851946050

`A005843(A213833(n+1))-A213771(n+1)`
-/

namespace A213773.P12350472666851946050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213833 (n + 1)).toNat - A213771 (n + 1)

end

end A213773.P12350472666851946050

namespace A213773

/-- `A005843(A213833(n+1))-A213771(n+1)` -/
def P12350472666851946050.Spec : Prop :=
  ∀ n, P12350472666851946050.a n = A213773 (n + 1)

end A213773

/-! ## A213773.P5259960375276594412

`A008486(A213833(n+1))-A213828(n+1)`
-/

namespace A213773.P5259960375276594412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A213833 (n + 1)).toNat - A213828 (n + 1)

end

end A213773.P5259960375276594412

namespace A213773

/-- `A008486(A213833(n+1))-A213828(n+1)` -/
def P5259960375276594412.Spec : Prop :=
  ∀ n, P5259960375276594412.a n = A213773 (n + 1)

end A213773

/-! ## A213773.P8709544053233293096

`A005843(A213828(n+1)-A213771(n+1))-A213771(n+1)`
-/

namespace A213773.P8709544053233293096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213828 (n + 1) - A213771 (n + 1)).toNat - A213771 (n + 1)

end

end A213773.P8709544053233293096

namespace A213773

/-- `A005843(A213828(n+1)-A213771(n+1))-A213771(n+1)` -/
def P8709544053233293096.Spec : Prop :=
  ∀ n, P8709544053233293096.a n = A213773 (n + 1)

end A213773

/-! ## A213773.P10349133896598820550

`A008486(A213828(n+1)-A213771(n+1))-A213828(n+1)`
-/

namespace A213773.P10349133896598820550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A213828 (n + 1) - A213771 (n + 1)).toNat - A213828 (n + 1)

end

end A213773.P10349133896598820550

namespace A213773

/-- `A008486(A213828(n+1)-A213771(n+1))-A213828(n+1)` -/
def P10349133896598820550.Spec : Prop :=
  ∀ n, P10349133896598820550.a n = A213773 (n + 1)

end A213773

/-! ## A213773.P516332233679587721

`A005843(A213828(n+1))-A008486(A213771(n+1))`
-/

namespace A213773.P516332233679587721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213828 (n + 1)).toNat - A008486 (A213771 (n + 1)).toNat

end

end A213773.P516332233679587721

namespace A213773

/-- `A005843(A213828(n+1))-A008486(A213771(n+1))` -/
def P516332233679587721.Spec : Prop :=
  ∀ n, P516332233679587721.a n = A213773 (n + 1)

end A213773

/-!
# A213774: Rectangular array: (row n) = b**c, where b(h) = F(h+1), c(h) = 2*n-3+2*h, F=A000045 (Fibonacci numbers), n>=1, h>=1, and ** = convolution.

The programs for A213774, the canonical program `A213774.P653417461158321534` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213774 has offset 1).

The definition of A213774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213774.P653417461158321534

`A213768(A014132(n+1))-A005408(A002024(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A213774

/-- `A213768(A014132(n+1))-A005408(A002024(n+1))` -/
def P653417461158321534.Spec : Prop :=
  ∀ n, P653417461158321534.a n = A213774 (n + 1)

theorem P653417461158321534.correct : P653417461158321534.Spec := by
  intro n
  simp only [A213774, Nat.add_sub_cancel]

end A213774

/-!
# A213775: Principal diagonal of the convolution array A213774.

The programs for A213775, the canonical program `A213775.P4854575633129812363` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213775 has offset 1).

The definition of A213775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213775.P4854575633129812363

`4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=1, a(1)=11, a(2)=38, a(3)=97, a(4)=213, a(5)=432`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213775

/-- `4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` -/
def P4854575633129812363.Spec : Prop :=
  ∀ n, P4854575633129812363.a n = A213775 (n + 1)

theorem P4854575633129812363.correct : P4854575633129812363.Spec := by
  intro n
  simp only [A213775, Nat.add_sub_cancel]

end A213775

/-! ## A213775.P7459363796158394207

`A024592(Δ[n²])`
-/

namespace A213775.P7459363796158394207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024592 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A213775.P7459363796158394207

namespace A213775

/-- `A024592(Δ[n²])` -/
def P7459363796158394207.Spec : Prop :=
  ∀ n, P7459363796158394207.a n = A213775 (n + 1)

end A213775

/-! ## A213775.P17514521084165787899

`2*A025106(2*n+1)-A025106(2*(n+1))`
-/

namespace A213775.P17514521084165787899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025106 (2 * n + 1) - A025106 (2 * (n + 1))

end

end A213775.P17514521084165787899

namespace A213775

/-- `2*A025106(2*n+1)-A025106(2*(n+1))` -/
def P17514521084165787899.Spec : Prop :=
  ∀ n, P17514521084165787899.a n = A213775 (n + 1)

end A213775

/-! ## A213775.P10086615056594871031

`Δ[A001891(n)*A004273(n)]`
-/

namespace A213775.P10086615056594871031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n * A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213775.P10086615056594871031

namespace A213775

/-- `Δ[A001891(n)*A004273(n)]` -/
def P10086615056594871031.Spec : Prop :=
  ∀ n, P10086615056594871031.a n = A213775 (n + 1)

end A213775

/-! ## A213775.P5520390890830088001

`Δ[A001891(n)*A060747(n)]`
-/

namespace A213775.P5520390890830088001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n * A060747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213775.P5520390890830088001

namespace A213775

/-- `Δ[A001891(n)*A060747(n)]` -/
def P5520390890830088001.Spec : Prop :=
  ∀ n, P5520390890830088001.a n = A213775 (n + 1)

end A213775

/-! ## A213775.P3422580937382203822

`Δ[A001891(n)*A014681(2*n)]`
-/

namespace A213775.P3422580937382203822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n * A014681 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213775.P3422580937382203822

namespace A213775

/-- `Δ[A001891(n)*A014681(2*n)]` -/
def P3422580937382203822.Spec : Prop :=
  ∀ n, P3422580937382203822.a n = A213775 (n + 1)

end A213775

/-! ## A213775.P12171517792837232086

`Δ[(A008486(n)-(n+1))*A001891(n)]`
-/

namespace A213775.P12171517792837232086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008486 n - (n + 1 : ℤ)) * A001891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213775.P12171517792837232086

namespace A213775

/-- `Δ[(A008486(n)-(n+1))*A001891(n)]` -/
def P12171517792837232086.Spec : Prop :=
  ∀ n, P12171517792837232086.a n = A213775 (n + 1)

end A213775

/-! ## A213775.P16530628456058483964

`Δ[(A192960(n)-A000045(n+2))*A004273(n)]`
-/

namespace A213775.P16530628456058483964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A192960 n - A000045 (n + 2)) * A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213775.P16530628456058483964

namespace A213775

/-- `Δ[(A192960(n)-A000045(n+2))*A004273(n)]` -/
def P16530628456058483964.Spec : Prop :=
  ∀ n, P16530628456058483964.a n = A213775 (n + 1)

end A213775

/-! ## A213775.P2334335095986350541

`Δ[A001891(n)*A103450(A000124(n))]`
-/

namespace A213775.P2334335095986350541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n * A103450 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213775.P2334335095986350541

namespace A213775

/-- `Δ[A001891(n)*A103450(A000124(n))]` -/
def P2334335095986350541.Spec : Prop :=
  ∀ n, P2334335095986350541.a n = A213775 (n + 1)

end A213775

/-! ## A213775.P3926014188229921490

`A213774((n+1)²+n²)`
-/

namespace A213775.P3926014188229921490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213774 ((n + 1) ^ 2 + n ^ 2)

end

end A213775.P3926014188229921490

namespace A213775

/-- `A213774((n+1)²+n²)` -/
def P3926014188229921490.Spec : Prop :=
  ∀ n, P3926014188229921490.a n = A213775 (n + 1)

end A213775

/-!
# A213776: Antidiagonal sums of the convolution array A213774.

The programs for A213776, the canonical program `A213776.P14892860163344575269` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213776 has offset 1).

The definition of A213776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213776.P14892860163344575269

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=8, a(2)=30, a(3)=81, a(4)=184`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213776

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P14892860163344575269.Spec : Prop :=
  ∀ n, P14892860163344575269.a n = A213776 (n + 1)

theorem P14892860163344575269.correct : P14892860163344575269.Spec := by
  intro n
  simp only [A213776, Nat.add_sub_cancel]

end A213776

/-! ## A213776.P10007606106841557110

`∑[∑[a(n-1)+a(n-2)+8]]` with `a(0)=1, a(1)=6`
-/

namespace A213776.P10007606106841557110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f2 =>
  f2 (n - 1) + (f2 (n - 2) + 8)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213776.P10007606106841557110

namespace A213776

/-- `∑[∑[a(n-1)+a(n-2)+8]]` -/
def P10007606106841557110.Spec : Prop :=
  ∀ n, (P10007606106841557110.a n : ℤ) = A213776 (n + 1)

end A213776

/-! ## A213776.P3055077176207928943

`∑[∑[A000285(n+3)-8]]`
-/

namespace A213776.P3055077176207928943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (n + 3) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213776.P3055077176207928943

namespace A213776

/-- `∑[∑[A000285(n+3)-8]]` -/
def P3055077176207928943.Spec : Prop :=
  ∀ n, P3055077176207928943.a n = A213776 (n + 1)

end A213776

/-! ## A213776.P10581856431557328523

`∑[∑[A023552(n+1)-2+n]]`
-/

namespace A213776.P10581856431557328523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023552 (n + 1) - 2 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213776.P10581856431557328523

namespace A213776

/-- `∑[∑[A023552(n+1)-2+n]]` -/
def P10581856431557328523.Spec : Prop :=
  ∀ n, P10581856431557328523.a n = A213776 (n + 1)

end A213776

/-! ## A213776.P12926264104863170396

`∑[∑[∑[A022308(n+1)+1]-3]]`
-/

namespace A213776.P12926264104863170396
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213776.P12926264104863170396

namespace A213776

/-- `∑[∑[∑[A022308(n+1)+1]-3]]` -/
def P12926264104863170396.Spec : Prop :=
  ∀ n, P12926264104863170396.a n = A213776 (n + 1)

end A213776

/-! ## A213776.P15503199104391059102

`∑[A192749(n+1)+A192749(n)]`
-/

namespace A213776.P15503199104391059102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192749 (n + 1) + A192749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213776.P15503199104391059102

namespace A213776

/-- `∑[A192749(n+1)+A192749(n)]` -/
def P15503199104391059102.Spec : Prop :=
  ∀ n, P15503199104391059102.a n = A213776 (n + 1)

end A213776

/-! ## A213776.P7205212238461677855

`∑[A001891(n+1)+3*A001891(n)]`
-/

namespace A213776.P7205212238461677855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 (n + 1) + 3 * A001891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213776.P7205212238461677855

namespace A213776

/-- `∑[A001891(n+1)+3*A001891(n)]` -/
def P7205212238461677855.Spec : Prop :=
  ∀ n, P7205212238461677855.a n = A213776 (n + 1)

end A213776

/-! ## A213776.P5638911433322209612

`A213586(n+1)+A213586(n+1)-A001891(n+1)`
-/

namespace A213776.P5638911433322209612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213586 (n + 1) + (A213586 (n + 1) - A001891 (n + 1))

end

end A213776.P5638911433322209612

namespace A213776

/-- `A213586(n+1)+A213586(n+1)-A001891(n+1)` -/
def P5638911433322209612.Spec : Prop :=
  ∀ n, P5638911433322209612.a n = A213776 (n + 1)

end A213776

/-!
# A213777: Rectangular array: (row n) = b**c, where b(h) = F(h), c(h) = F(h+1), F=A000045 (Fibonacci numbers), n>=1, h>=1, and ** = convolution.

The programs for A213777, there is no canonical definition to state claims against.
-/

/-! ## A213777.P11661366693486031197

`A067418(comp[∑[n]])`
-/

namespace A213777.P11661366693486031197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A213777.P11661366693486031197

/-! ## A213777.P9342704418293752527

`and(1-4/2, A067418(A014132(n+1)))`
-/

namespace A213777.P9342704418293752527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (A067418 (A014132 (n + 1)).toNat)

end

end A213777.P9342704418293752527

/-! ## A213777.P4386855724458553525

`A067330(A061579(n)+A002024(n+1))`
-/

namespace A213777.P4386855724458553525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A061579 n + A002024 (n + 1)).toNat

end

end A213777.P4386855724458553525

/-! ## A213777.P7225656013275297256

`A055396(2*(n+2))*A067418(A014132(n+1))`
-/

namespace A213777.P7225656013275297256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * (n + 2)) * A067418 (A014132 (n + 1)).toNat

end

end A213777.P7225656013275297256

/-! ## A213777.P13410315991769816638

`A067418(A014132(n+1))%A236191(n+4)`
-/

namespace A213777.P13410315991769816638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067418 (A014132 (n + 1)).toNat) (A236191 (n + 4))

end

end A213777.P13410315991769816638

/-! ## A213777.P12690150830493504200

`A067418(A014132(n+1))%A067334(n)`
-/

namespace A213777.P12690150830493504200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067418 (A014132 (n + 1)).toNat) (A067334 n)

end

end A213777.P12690150830493504200

/-! ## A213777.P7933165173442029909

`A067330(A380649(n+1))`
-/

namespace A213777.P7933165173442029909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A380649 (n + 1)).toNat

end

end A213777.P7933165173442029909

/-!
# A213779: Principal diagonal of the convolution array A213778.

The programs for A213779, the canonical program `A213779.P3749960587606658589` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213779 has offset 1).

The definition of A213779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213779.P11732785029747155250

`∑[ceil((sqrt(a(n-2))+2)²)]` with `a(0)=1, a(1)=5`
-/

namespace A213779.P11732785029747155250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  ⌈(Real.sqrt (f1 (n - 2) : ℝ) + 2) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213779.P11732785029747155250

namespace A213779

/-- `∑[ceil((sqrt(a(n-2))+2)²)]` -/
def P11732785029747155250.Spec : Prop :=
  ∀ n, P11732785029747155250.a n = A213779 (n + 1)

end A213779

/-! ## A213779.P3749960587606658589

`∑[∑[floor(lcm(2, n)+(n+3)/2)]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213779

/-- `∑[∑[floor(lcm(2, n)+(n+3)/2)]]` -/
def P3749960587606658589.Spec : Prop :=
  ∀ n, P3749960587606658589.a n = A213779 (n + 1)

theorem P3749960587606658589.correct : P3749960587606658589.Spec := by
  intro n
  simp only [A213779, Nat.add_sub_cancel]

end A213779

/-! ## A213779.P4041452652153240757

`∑[∑[n]%(n+1)+(n+1)²]`
-/

namespace A213779.P4041452652153240757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) + (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213779.P4041452652153240757

namespace A213779

/-- `∑[∑[n]%(n+1)+(n+1)²]` -/
def P4041452652153240757.Spec : Prop :=
  ∀ n, (P4041452652153240757.a n : ℤ) = A213779 (n + 1)

end A213779

/-! ## A213779.P13345423500171848161

`∑[(n+1)²-∑[∑[n*(-1)^n]]]`
-/

namespace A213779.P13345423500171848161
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213779.P13345423500171848161

namespace A213779

/-- `∑[(n+1)²-∑[∑[n*(-1)^n]]]` -/
def P13345423500171848161.Spec : Prop :=
  ∀ n, P13345423500171848161.a n = A213779 (n + 1)

end A213779

/-! ## A213779.P5165020655946904954

`A110349(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A213779.P5165020655946904954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110349 (n + 1) + a (n - 1)

end

end A213779.P5165020655946904954

namespace A213779

/-- `A110349(n+1)+a(n-1)` -/
def P5165020655946904954.Spec : Prop :=
  ∀ n, P5165020655946904954.a n = A213779 (n + 1)

end A213779

/-! ## A213779.P7815043663079454756

`A294172(n+1)+A006918(n)`
-/

namespace A213779.P7815043663079454756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294172 (n + 1) + A006918 n

end

end A213779.P7815043663079454756

namespace A213779

/-- `A294172(n+1)+A006918(n)` -/
def P7815043663079454756.Spec : Prop :=
  ∀ n, P7815043663079454756.a n = A213779 (n + 1)

end A213779

/-! ## A213779.P11423355067378405948

`A213782(n+1)-A006578(n)`
-/

namespace A213779.P11423355067378405948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213782 (n + 1) - A006578 n

end

end A213779.P11423355067378405948

namespace A213779

/-- `A213782(n+1)-A006578(n)` -/
def P11423355067378405948.Spec : Prop :=
  ∀ n, P11423355067378405948.a n = A213779 (n + 1)

end A213779

/-! ## A213779.P3400181173522871873

`A000330(n+1)+A001318(n)-A002620(n)`
-/

namespace A213779.P3400181173522871873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A001318 n - A002620 n)

end

end A213779.P3400181173522871873

namespace A213779

/-- `A000330(n+1)+A001318(n)-A002620(n)` -/
def P3400181173522871873.Spec : Prop :=
  ∀ n, P3400181173522871873.a n = A213779 (n + 1)

end A213779

/-! ## A213779.P17877571570959434445

`A000330(n+1)+A000217(n)-A211539(n)`
-/

namespace A213779.P17877571570959434445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A000217 n - A211539 n)

end

end A213779.P17877571570959434445

namespace A213779

/-- `A000330(n+1)+A000217(n)-A211539(n)` -/
def P17877571570959434445.Spec : Prop :=
  ∀ n, P17877571570959434445.a n = A213779 (n + 1)

end A213779

/-! ## A213779.P14100782533670110764

`∑[(Δ[A317186(n)]+1)*(n+1)]/2`
-/

namespace A213779.P14100782533670110764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317186 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n + 1) * (n + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A213779.P14100782533670110764

namespace A213779

/-- `∑[(Δ[A317186(n)]+1)*(n+1)]/2` -/
def P14100782533670110764.Spec : Prop :=
  ∀ n, P14100782533670110764.a n = (A213779 (n + 1) : ℚ)

end A213779

/-! ## A213779.P14795175380455970681

`A000330(n+1)+∑[A142150(n+1)]`
-/

namespace A213779.P14795175380455970681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213779.P14795175380455970681

namespace A213779

/-- `A000330(n+1)+∑[A142150(n+1)]` -/
def P14795175380455970681.Spec : Prop :=
  ∀ n, P14795175380455970681.a n = A213779 (n + 1)

end A213779

/-! ## A213779.P8241403788864054710

`2*A000292(n+1)-A001318(n+1)`
-/

namespace A213779.P8241403788864054710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000292 (n + 1) - A001318 (n + 1)

end

end A213779.P8241403788864054710

namespace A213779

/-- `2*A000292(n+1)-A001318(n+1)` -/
def P8241403788864054710.Spec : Prop :=
  ∀ n, P8241403788864054710.a n = A213779 (n + 1)

end A213779

/-! ## A213779.P3907574049710093031

`A005744(n+1)+A002620(n+1)*(n+1)`
-/

namespace A213779.P3907574049710093031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005744 (n + 1) + A002620 (n + 1) * (n + 1 : ℤ)

end

end A213779.P3907574049710093031

namespace A213779

/-- `A005744(n+1)+A002620(n+1)*(n+1)` -/
def P3907574049710093031.Spec : Prop :=
  ∀ n, P3907574049710093031.a n = A213779 (n + 1)

end A213779

/-! ## A213779.P6786180090223673174

`A000330(n+1)+A000217(A004526(n+1))`
-/

namespace A213779.P6786180090223673174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + A000217 (A004526 (n + 1)).toNat

end

end A213779.P6786180090223673174

namespace A213779

/-- `A000330(n+1)+A000217(A004526(n+1))` -/
def P6786180090223673174.Spec : Prop :=
  ∀ n, P6786180090223673174.a n = A213779 (n + 1)

end A213779

/-! ## A213779.P3586207954551549961

`A005449(n+1)+A000330(n)-A001318(n+1)`
-/

namespace A213779.P3586207954551549961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (n + 1) + (A000330 n - A001318 (n + 1))

end

end A213779.P3586207954551549961

namespace A213779

/-- `A005449(n+1)+A000330(n)-A001318(n+1)` -/
def P3586207954551549961.Spec : Prop :=
  ∀ n, P3586207954551549961.a n = A213779 (n + 1)

end A213779

/-! ## A213779.P13157998585431213744

`A000330(n+1)+A006918(n+1)-A053307(n)`
-/

namespace A213779.P13157998585431213744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A006918 (n + 1) - A053307 n)

end

end A213779.P13157998585431213744

namespace A213779

/-- `A000330(n+1)+A006918(n+1)-A053307(n)` -/
def P13157998585431213744.Spec : Prop :=
  ∀ n, P13157998585431213744.a n = A213779 (n + 1)

end A213779

/-! ## A213779.P6113789967977625441

`A000217(n+1)+A051925(n+1)-A211539(n)`
-/

namespace A213779.P6113789967977625441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A051925 (n + 1) - A211539 n)

end

end A213779.P6113789967977625441

namespace A213779

/-- `A000217(n+1)+A051925(n+1)-A211539(n)` -/
def P6113789967977625441.Spec : Prop :=
  ∀ n, P6113789967977625441.a n = A213779 (n + 1)

end A213779

/-! ## A213779.P14853602631778238190

`A212959(n+1)+A212970(n)-A002623(n+1)`
-/

namespace A213779.P14853602631778238190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 (n + 1) + (A212970 n - A002623 (n + 1))

end

end A213779.P14853602631778238190

namespace A213779

/-- `A212959(n+1)+A212970(n)-A002623(n+1)` -/
def P14853602631778238190.Spec : Prop :=
  ∀ n, P14853602631778238190.a n = A213779 (n + 1)

end A213779

/-! ## A213779.P13087665565884381192

`A000217(n+1)+A000330(n+1)-A001318(n+1)`
-/

namespace A213779.P13087665565884381192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000330 (n + 1) - A001318 (n + 1))

end

end A213779.P13087665565884381192

namespace A213779

/-- `A000217(n+1)+A000330(n+1)-A001318(n+1)` -/
def P13087665565884381192.Spec : Prop :=
  ∀ n, P13087665565884381192.a n = A213779 (n + 1)

end A213779

/-! ## A213779.P7259134963861482597

`A212968(n+1)-A019298(n+2)`
-/

namespace A213779.P7259134963861482597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212968 (n + 1) - A019298 (n + 2)

end

end A213779.P7259134963861482597

namespace A213779

/-- `A212968(n+1)-A019298(n+2)` -/
def P7259134963861482597.Spec : Prop :=
  ∀ n, P7259134963861482597.a n = A213779 (n + 1)

end A213779

/-!
# A213780: Antidiagonal sums of the convolution array A213778.

The programs for A213780, the canonical program `A213780.P12877946639196474457` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213780 has offset 1).

The definition of A213780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213780.P12877946639196474457

`∑[∑[∑[∑[1-n*(-1)^n]]]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213780

/-- `∑[∑[∑[∑[1-n*(-1)^n]]]]` -/
def P12877946639196474457.Spec : Prop :=
  ∀ n, P12877946639196474457.a n = A213780 (n + 1)

theorem P12877946639196474457.correct : P12877946639196474457.Spec := by
  intro n
  simp only [A213780, Nat.add_sub_cancel]

end A213780

/-! ## A213780.P13287242025048517505

`A006918(n)+C(n+4, 4)`
-/

namespace A213780.P13287242025048517505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + (Nat.choose (n + 4) 4 : ℤ)

end

end A213780.P13287242025048517505

namespace A213780

/-- `A006918(n)+C(n+4, 4)` -/
def P13287242025048517505.Spec : Prop :=
  ∀ n, P13287242025048517505.a n = A213780 (n + 1)

end A213780

/-! ## A213780.P17581736106414177911

`A058195(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A213780.P17581736106414177911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A058195 (n + 1) - a (n - 1)

end

end A213780.P17581736106414177911

namespace A213780

/-- `A058195(n+1)-a(n-1)` -/
def P17581736106414177911.Spec : Prop :=
  ∀ n, P17581736106414177911.a n = A213780 (n + 1)

end A213780

/-! ## A213780.P17392087135328883949

`A082289(n+4)-A005994(n)`
-/

namespace A213780.P17392087135328883949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082289 (n + 4) - A005994 n

end

end A213780.P17392087135328883949

namespace A213780

/-- `A082289(n+4)-A005994(n)` -/
def P17392087135328883949.Spec : Prop :=
  ∀ n, P17392087135328883949.a n = A213780 (n + 1)

end A213780

/-! ## A213780.P17052305534264457430

`A006918(n)+∑[A000292(n+1)]`
-/

namespace A213780.P17052305534264457430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213780.P17052305534264457430

namespace A213780

/-- `A006918(n)+∑[A000292(n+1)]` -/
def P17052305534264457430.Spec : Prop :=
  ∀ n, P17052305534264457430.a n = A213780 (n + 1)

end A213780

/-! ## A213780.P16657515600307868802

`A001752(n)+A001752(n)-A006918(n+1)`
-/

namespace A213780.P16657515600307868802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n + (A001752 n - A006918 (n + 1))

end

end A213780.P16657515600307868802

namespace A213780

/-- `A001752(n)+A001752(n)-A006918(n+1)` -/
def P16657515600307868802.Spec : Prop :=
  ∀ n, P16657515600307868802.a n = A213780 (n + 1)

end A213780

/-! ## A213780.P8565766108974190640

`A189376(2*n)`
-/

namespace A213780.P8565766108974190640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189376 (2 * n)

end

end A213780.P8565766108974190640

namespace A213780

/-- `A189376(2*n)` -/
def P8565766108974190640.Spec : Prop :=
  ∀ n, P8565766108974190640.a n = A213780 (n + 1)

end A213780

/-! ## A213780.P16023038876870769258

`A006918(n)+∑[A008804(2*n)]`
-/

namespace A213780.P16023038876870769258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213780.P16023038876870769258

namespace A213780

/-- `A006918(n)+∑[A008804(2*n)]` -/
def P16023038876870769258.Spec : Prop :=
  ∀ n, P16023038876870769258.a n = A213780 (n + 1)

end A213780

/-! ## A213780.P11932966872550901989

`∑[∑[A265225(n)]]%A000975(2*(n+1))`
-/

namespace A213780.P11932966872550901989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000975 (2 * (n + 1)))

end

end A213780.P11932966872550901989

namespace A213780

/-- `∑[∑[A265225(n)]]%A000975(2*(n+1))` -/
def P11932966872550901989.Spec : Prop :=
  ∀ n, P11932966872550901989.a n = A213780 (n + 1)

end A213780

/-!
# A213782: Principal diagonal of the convolution array A213781.

The programs for A213782, the canonical program `A213782.P455640345224430548` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213782 has offset 1).

The definition of A213782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213782.P455640345224430548

`∑[(n+1)²+gcd(n, ∑[n])+n]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213782

/-- `∑[(n+1)²+gcd(n, ∑[n])+n]` -/
def P455640345224430548.Spec : Prop :=
  ∀ n, (P455640345224430548.a n : ℤ) = A213782 (n + 1)

theorem P455640345224430548.correct : P455640345224430548.Spec := by
  intro n
  simp only [A213782, Nat.add_sub_cancel]

end A213782

/-! ## A213782.P13384863403873973083

`∑[lcm(2, n)/2]+∑[(n+1)²+n]`
-/

namespace A213782.P13384863403873973083
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A213782.P13384863403873973083

namespace A213782

/-- `∑[lcm(2, n)/2]+∑[(n+1)²+n]` -/
def P13384863403873973083.Spec : Prop :=
  ∀ n, P13384863403873973083.a n = (A213782 (n + 1) : ℚ)

end A213782

/-! ## A213782.P817994027542414625

`∑[A028387(n)+gcd(n, ∑[n])]`
-/

namespace A213782.P817994027542414625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n + (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213782.P817994027542414625

namespace A213782

/-- `∑[A028387(n)+gcd(n, ∑[n])]` -/
def P817994027542414625.Spec : Prop :=
  ∀ n, P817994027542414625.a n = A213782 (n + 1)

end A213782

/-! ## A213782.P10145214407123045967

`A274830(n+1)+∑[(n+1)²]`
-/

namespace A213782.P10145214407123045967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274830 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213782.P10145214407123045967

namespace A213782

/-- `A274830(n+1)+∑[(n+1)²]` -/
def P10145214407123045967.Spec : Prop :=
  ∀ n, P10145214407123045967.a n = A213782 (n + 1)

end A213782

/-! ## A213782.P6039791292295913489

`A180118(n)+A131355(n)`
-/

namespace A213782.P6039791292295913489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180118 n + A131355 n

end

end A213782.P6039791292295913489

namespace A213782

/-- `A180118(n)+A131355(n)` -/
def P6039791292295913489.Spec : Prop :=
  ∀ n, P6039791292295913489.a n = A213782 (n + 1)

end A213782

/-! ## A213782.P10286177580626578535

`A001318(n)+∑[A028387(n)]`
-/

namespace A213782.P10286177580626578535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213782.P10286177580626578535

namespace A213782

/-- `A001318(n)+∑[A028387(n)]` -/
def P10286177580626578535.Spec : Prop :=
  ∀ n, P10286177580626578535.a n = A213782 (n + 1)

end A213782

/-! ## A213782.P9925074041074655950

`∑[A028387(n)+A026741(n)]`
-/

namespace A213782.P9925074041074655950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n + A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213782.P9925074041074655950

namespace A213782

/-- `∑[A028387(n)+A026741(n)]` -/
def P9925074041074655950.Spec : Prop :=
  ∀ n, P9925074041074655950.a n = A213782 (n + 1)

end A213782

/-! ## A213782.P1465289694549770688

`A213779(n+1)+A006578(n)`
-/

namespace A213782.P1465289694549770688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213779 (n + 1) + A006578 n

end

end A213782.P1465289694549770688

namespace A213782

/-- `A213779(n+1)+A006578(n)` -/
def P1465289694549770688.Spec : Prop :=
  ∀ n, P1465289694549770688.a n = A213782 (n + 1)

end A213782

/-! ## A213782.P17365634935482218468

`A319390(n)+A077415(n+2)`
-/

namespace A213782.P17365634935482218468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n + A077415 (n + 2)

end

end A213782.P17365634935482218468

namespace A213782

/-- `A319390(n)+A077415(n+2)` -/
def P17365634935482218468.Spec : Prop :=
  ∀ n, P17365634935482218468.a n = A213782 (n + 1)

end A213782

/-! ## A213782.P14987192352474147612

`A001318(n)+∑[∑[A103517(n)]]`
-/

namespace A213782.P14987192352474147612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213782.P14987192352474147612

namespace A213782

/-- `A001318(n)+∑[∑[A103517(n)]]` -/
def P14987192352474147612.Spec : Prop :=
  ∀ n, P14987192352474147612.a n = A213782 (n + 1)

end A213782

/-! ## A213782.P12469054929345840110

`A000330(n+1)+A001318(n)+A000217(n)`
-/

namespace A213782.P12469054929345840110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A001318 n + A000217 n)

end

end A213782.P12469054929345840110

namespace A213782

/-- `A000330(n+1)+A001318(n)+A000217(n)` -/
def P12469054929345840110.Spec : Prop :=
  ∀ n, P12469054929345840110.a n = A213782 (n + 1)

end A213782

/-! ## A213782.P4237676357491808379

`A000326(n+1)+A001318(n)+A000330(n)`
-/

namespace A213782.P4237676357491808379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1) + (A001318 n + A000330 n)

end

end A213782.P4237676357491808379

namespace A213782

/-- `A000326(n+1)+A001318(n)+A000330(n)` -/
def P4237676357491808379.Spec : Prop :=
  ∀ n, P4237676357491808379.a n = A213782 (n + 1)

end A213782

/-! ## A213782.P6084107042774028335

`Δ[n*∑[a(n-2)+n+1]]` with `a(0)=0, a(1)=1`
-/

namespace A213782.P6084107042774028335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2) + (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A213782.P6084107042774028335

namespace A213782

/-- `Δ[n*∑[a(n-2)+n+1]]` -/
def P6084107042774028335.Spec : Prop :=
  ∀ n, P6084107042774028335.a n = A213782 (n + 1)

end A213782

/-! ## A213782.P18382544983492182266

`Δ[n*A005744(n)]`
-/

namespace A213782.P18382544983492182266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213782.P18382544983492182266

namespace A213782

/-- `Δ[n*A005744(n)]` -/
def P18382544983492182266.Spec : Prop :=
  ∀ n, P18382544983492182266.a n = A213782 (n + 1)

end A213782

/-! ## A213782.P6315703025618392519

`A005744(n+1)+n*A024206(n+2)`
-/

namespace A213782.P6315703025618392519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005744 (n + 1) + (n : ℤ) * A024206 (n + 2)

end

end A213782.P6315703025618392519

namespace A213782

/-- `A005744(n+1)+n*A024206(n+2)` -/
def P6315703025618392519.Spec : Prop :=
  ∀ n, P6315703025618392519.a n = A213782 (n + 1)

end A213782

/-! ## A213782.P3628891137918338400

`∑[(n+1)²-A255563(2*n)]`
-/

namespace A213782.P3628891137918338400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A255563 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213782.P3628891137918338400

namespace A213782

/-- `∑[(n+1)²-A255563(2*n)]` -/
def P3628891137918338400.Spec : Prop :=
  ∀ n, P3628891137918338400.a n = A213782 (n + 1)

end A213782

/-! ## A213782.P10795910883799239991

`∑[A030065(2*n)+∑[A265283(2*n)]]`
-/

namespace A213782.P10795910883799239991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265283 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213782.P10795910883799239991

namespace A213782

/-- `∑[A030065(2*n)+∑[A265283(2*n)]]` -/
def P10795910883799239991.Spec : Prop :=
  ∀ n, P10795910883799239991.a n = A213782 (n + 1)

end A213782

/-!
# A213784: Numbers k such that both k and k^2 are sums of a twin prime pair.

The programs for A213784, there is no canonical definition to state claims against.
-/

/-! ## A213784.P16667173974672549890

`12*A213789(n+1)`
-/

namespace A213784.P16667173974672549890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A213789 (n + 1)

end

end A213784.P16667173974672549890

/-! ## A213784.P12722068484368640991

`∩[A054735(n+1), A152786(n+1)]`
-/

namespace A213784.P12722068484368640991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213784.P12722068484368640991

/-! ## A213784.P17915560666831074147

`∩[2*A014574(n+1), A152786(n+1)]`
-/

namespace A213784.P17915560666831074147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213784.P17915560666831074147

/-! ## A213784.P7814236600931173126

`∩[2*A217259(n+1), A152786(n+1)]`
-/

namespace A213784.P7814236600931173126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213784.P7814236600931173126

/-! ## A213784.P7744590768210986064

`∩[A152786(n+1), A268186(n+1)]`
-/

namespace A213784.P7744590768210986064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213784.P7744590768210986064

/-! ## A213784.P12438077262894813411

`∩[A213739(n+1), A268186(n+1)]`
-/

namespace A213784.P12438077262894813411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213784.P12438077262894813411

/-! ## A213784.P7846864814314265318

`∩[A054735(n+1), A268186(n+1)]`
-/

namespace A213784.P7846864814314265318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213784.P7846864814314265318

/-!
# A213785: a(n) = Sum(P(i)*P(j), 1<=i

The programs for A213785, the canonical program `A213785.P14258117274799753723` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213785 has offset 0).

The definition of A213785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213785.P14258117274799753723

`9*a(n-1)-20*a(n-2)+8*a(n-3)+5*a(n-4)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=17, a(4)=113`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A213785

/-- `9*a(n-1)-20*a(n-2)+8*a(n-3)+5*a(n-4)-a(n-5)` -/
def P14258117274799753723.Spec : Prop :=
  ∀ n, P14258117274799753723.a n = A213785 n

theorem P14258117274799753723.correct : P14258117274799753723.Spec := by
  intro n
  simp only [A213785]

end A213785

/-! ## A213785.P12401850446313984554

`∑[(A001109(n)-A000129(n))/2]`
-/

namespace A213785.P12401850446313984554
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001109 n - A000129 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213785.P12401850446313984554

namespace A213785

/-- `∑[(A001109(n)-A000129(n))/2]` -/
def P12401850446313984554.Spec : Prop :=
  ∀ n, P12401850446313984554.a n = (A213785 n : ℚ)

end A213785

/-! ## A213785.P18003764612249727906

`∑[(1-∑[A176981(n)])*A000129(n)]`
-/

namespace A213785.P18003764612249727906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f2 j) * A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213785.P18003764612249727906

namespace A213785

/-- `∑[(1-∑[A176981(n)])*A000129(n)]` -/
def P18003764612249727906.Spec : Prop :=
  ∀ n, P18003764612249727906.a n = A213785 n

end A213785

/-! ## A213785.P4214437907286917245

`∑[A293004(n)/2*Δ[A293004(n)/2]]`
-/

namespace A213785.P4214437907286917245
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293004 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293004 n : ℚ) / 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213785.P4214437907286917245

namespace A213785

/-- `∑[A293004(n)/2*Δ[A293004(n)/2]]` -/
def P4214437907286917245.Spec : Prop :=
  ∀ n, P4214437907286917245.a n = (A213785 n : ℚ)

end A213785

/-! ## A213785.P1824012992372351682

`∑[A000129(n)*A247311(A016789(n))]`
-/

namespace A213785.P1824012992372351682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A247311 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213785.P1824012992372351682

namespace A213785

/-- `∑[A000129(n)*A247311(A016789(n))]` -/
def P1824012992372351682.Spec : Prop :=
  ∀ n, P1824012992372351682.a n = A213785 n

end A213785

/-! ## A213785.P6234376900302879428

`∑[A215928(n)*A247311(A016789(n))]`
-/

namespace A213785.P6234376900302879428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n * A247311 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213785.P6234376900302879428

namespace A213785

/-- `∑[A215928(n)*A247311(A016789(n))]` -/
def P6234376900302879428.Spec : Prop :=
  ∀ n, P6234376900302879428.a n = A213785 n

end A213785

/-! ## A213785.P4917099409743129664

`∑[(A033539(n+1)-A001333(n))*A000129(n)]`
-/

namespace A213785.P4917099409743129664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033539 (n + 1) - A001333 n) * A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213785.P4917099409743129664

namespace A213785

/-- `∑[(A033539(n+1)-A001333(n))*A000129(n)]` -/
def P4917099409743129664.Spec : Prop :=
  ∀ n, P4917099409743129664.a n = A213785 n

end A213785

/-! ## A213785.P16252208510373815042

`(A213788(n+1)-A213788(n))/A000129(n+1)`
-/

namespace A213785.P16252208510373815042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213788 (n + 1) - A213788 n : ℚ) / (A000129 (n + 1) : ℚ)

end

end A213785.P16252208510373815042

namespace A213785

/-- `(A213788(n+1)-A213788(n))/A000129(n+1)` -/
def P16252208510373815042.Spec : Prop :=
  ∀ n, P16252208510373815042.a n = (A213785 n : ℚ)

end A213785

/-!
# A213786: a(n) = Sum_{1<=i

The programs for A213786, the canonical program `A213786.P3878037431570602295` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213786 has offset 0).

The definition of A213786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213786.P3878037431570602295

`A099392(A020986(n))-A008619(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A213786

/-- `A099392(A020986(n))-A008619(n)` -/
def P3878037431570602295.Spec : Prop :=
  ∀ n, P3878037431570602295.a n = A213786 n

theorem P3878037431570602295.correct : P3878037431570602295.Spec := by
  intro n
  simp only [A213786]

end A213786

/-! ## A213786.P35682876864144937

`A099392(∑[A020985(n)])-A008619(n)`
-/

namespace A213786.P35682876864144937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A008619 n

end

end A213786.P35682876864144937

namespace A213786

/-- `A099392(∑[A020985(n)])-A008619(n)` -/
def P35682876864144937.Spec : Prop :=
  ∀ n, P35682876864144937.a n = A213786 n

end A213786

/-! ## A213786.P10331221050361188038

`A099392(A020986(n))-∑[A059841(n)]`
-/

namespace A213786.P10331221050361188038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (A020986 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213786.P10331221050361188038

namespace A213786

/-- `A099392(A020986(n))-∑[A059841(n)]` -/
def P10331221050361188038.Spec : Prop :=
  ∀ n, P10331221050361188038.a n = A213786 n

end A213786

/-! ## A213786.P2347862217648244418

`A099392(A020986(n))-A065033(n+1)`
-/

namespace A213786.P2347862217648244418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (A020986 n).toNat - A065033 (n + 1)

end

end A213786.P2347862217648244418

namespace A213786

/-- `A099392(A020986(n))-A065033(n+1)` -/
def P2347862217648244418.Spec : Prop :=
  ∀ n, P2347862217648244418.a n = A213786 n

end A213786

/-! ## A213786.P8389896606736956374

`A099392(∑[A020985(n)])-A065033(n+1)`
-/

namespace A213786.P8389896606736956374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A065033 (n + 1)

end

end A213786.P8389896606736956374

namespace A213786

/-- `A099392(∑[A020985(n)])-A065033(n+1)` -/
def P8389896606736956374.Spec : Prop :=
  ∀ n, P8389896606736956374.a n = A213786 n

end A213786

/-! ## A213786.P4551590253051635112

`A099392(A020986(n))-A008624(2*n)`
-/

namespace A213786.P4551590253051635112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (A020986 n).toNat - A008624 (2 * n)

end

end A213786.P4551590253051635112

namespace A213786

/-- `A099392(A020986(n))-A008624(2*n)` -/
def P4551590253051635112.Spec : Prop :=
  ∀ n, P4551590253051635112.a n = A213786 n

end A213786

/-! ## A213786.P10718016812712120866

`A099392(A020986(n))-A103221(A016789(n))`
-/

namespace A213786.P10718016812712120866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (A020986 n).toNat - A103221 (A016789 n).toNat

end

end A213786.P10718016812712120866

namespace A213786

/-- `A099392(A020986(n))-A103221(A016789(n))` -/
def P10718016812712120866.Spec : Prop :=
  ∀ n, P10718016812712120866.a n = A213786 n

end A213786

/-! ## A213786.P179409077999401320

`A213626(n)-A359045(n)`
-/

namespace A213786.P179409077999401320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213626 n - A359045 n

end

end A213786.P179409077999401320

namespace A213786

/-- `A213626(n)-A359045(n)` -/
def P179409077999401320.Spec : Prop :=
  ∀ n, P179409077999401320.a n = A213786 n

end A213786

/-! ## A213786.P8339410817020524608

`(A359045(n+1)-A359045(n))*A020985(n+1)`
-/

namespace A213786.P8339410817020524608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A359045 (n + 1) - A359045 n) * A020985 (n + 1)

end

end A213786.P8339410817020524608

namespace A213786

/-- `(A359045(n+1)-A359045(n))*A020985(n+1)` -/
def P8339410817020524608.Spec : Prop :=
  ∀ n, P8339410817020524608.a n = A213786 n

end A213786

/-!
# A213787: a(n) = Sum_{1<=i

The programs for A213787, the canonical program `A213787.P10885586562566697687` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213787 has offset 0).

The definition of A213787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213787.P10885586562566697687

`A000045(n)*A191797(n+1)-A056014(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A213787

/-- `A000045(n)*A191797(n+1)-A056014(n+1)` -/
def P10885586562566697687.Spec : Prop :=
  ∀ n, P10885586562566697687.a n = A213787 n

theorem P10885586562566697687.correct : P10885586562566697687.Spec := by
  intro n
  simp only [A213787]

end A213787

/-! ## A213787.P1892479238878799592

`A064542(A179230(n))-A104219(n)`
-/

namespace A213787.P1892479238878799592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064542 (A179230 n).toNat - A104219 n

end

end A213787.P1892479238878799592

namespace A213787

/-- `A064542(A179230(n))-A104219(n)` -/
def P1892479238878799592.Spec : Prop :=
  ∀ n, P1892479238878799592.a n = A213787 n

end A213787

/-! ## A213787.P567564743129566524

`A054895(A160128(n)-A176027(n))`
-/

namespace A213787.P567564743129566524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054895 (A160128 n - A176027 n).toNat

end

end A213787.P567564743129566524

namespace A213787

/-- `A054895(A160128(n)-A176027(n))` -/
def P567564743129566524.Spec : Prop :=
  ∀ n, P567564743129566524.a n = A213787 n

end A213787

/-!
# A213788: a(n) = Sum_{1<=i

The programs for A213788, there is no canonical definition to state claims against.
-/

/-! ## A213788.P7191826270971727988

`A054861(A064138(n+1)*A320562(n+1))`
-/

namespace A213788.P7191826270971727988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A064138 (n + 1) * A320562 (n + 1)).toNat

end

end A213788.P7191826270971727988

/-! ## A213788.P7443002621760577221

`A054519(A037270(2*n+1))%A111532(n)`
-/

namespace A213788.P7443002621760577221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054519 (A037270 (2 * n + 1)).toNat) (A111532 n)

end

end A213788.P7443002621760577221

/-!
# A213789: A213784/12.

The programs for A213789, there is no canonical definition to state claims against.
-/

/-! ## A213789.P5825705130076517096

`A213784(n+1)/12`
-/

namespace A213789.P5825705130076517096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213784 (n + 1) : ℚ) / 12

end

end A213789.P5825705130076517096

/-! ## A213789.P9347879013454549733

`record[ratio[A213784(A193739(n))]]`
-/

namespace A213789.P9347879013454549733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213784 (A193739 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213789.P9347879013454549733

/-! ## A213789.P15370526403256130198

`∩[A152786(n+1), A268186(n+1)]/12`
-/

namespace A213789.P15370526403256130198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268186 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 12

end

end A213789.P15370526403256130198

/-! ## A213789.P2478370786578763604

`∩[A213739(n+1), A268186(n+1)]/12`
-/

namespace A213789.P2478370786578763604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268186 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 12

end

end A213789.P2478370786578763604

/-! ## A213789.P15715332415541801637

`A047538(p?[A153376(n+1)+2])/12`
-/

namespace A213789.P15715332415541801637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153376 (n + 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047538 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 12

end

end A213789.P15715332415541801637

/-!
# A213791: Expansion of psi(-x)^6 in powers of x where psi() is a Ramanujan theta function.

The programs for A213791, the canonical program `A213791.P5287273639939640334` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213791 has offset 0).

The definition of A213791 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008440, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213791.P5287273639939640334

`(-1)^n*A008440(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A213791

/-- `(-1)^n*A008440(n)` -/
def P5287273639939640334.Spec : Prop :=
  ∀ n, P5287273639939640334.a n = A213791 n

theorem P5287273639939640334.correct : P5287273639939640334.Spec := by
  intro n
  simp only [A213791]

end A213791

/-! ## A213791.P2504098953527801811

`A008440(n)*A033999(n)`
-/

namespace A213791.P2504098953527801811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008440 n * A033999 n

end

end A213791.P2504098953527801811

namespace A213791

/-- `A008440(n)*A033999(n)` -/
def P2504098953527801811.Spec : Prop :=
  ∀ n, P2504098953527801811.a n = A213791 n

end A213791

/-! ## A213791.P13799357098376977303

`A008440(n)*A120030(n)/A138504(n)`
-/

namespace A213791.P13799357098376977303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008440 n * A120030 n : ℚ) / (A138504 n : ℚ)

end

end A213791.P13799357098376977303

namespace A213791

/-- `A008440(n)*A120030(n)/A138504(n)` -/
def P13799357098376977303.Spec : Prop :=
  ∀ n, P13799357098376977303.a n = (A213791 n : ℚ)

end A213791

/-! ## A213791.P11745491904801515893

`A008440(n)/A033999(n+2)`
-/

namespace A213791.P11745491904801515893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008440 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A213791.P11745491904801515893

namespace A213791

/-- `A008440(n)/A033999(n+2)` -/
def P11745491904801515893.Spec : Prop :=
  ∀ n, P11745491904801515893.a n = (A213791 n : ℚ)

end A213791

/-! ## A213791.P7075840426751967613

`A008440(n)*A056594(2*n)`
-/

namespace A213791.P7075840426751967613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008440 n * A056594 (2 * n)

end

end A213791.P7075840426751967613

namespace A213791

/-- `A008440(n)*A056594(2*n)` -/
def P7075840426751967613.Spec : Prop :=
  ∀ n, P7075840426751967613.a n = A213791 n

end A213791

/-! ## A213791.P11109554647430278546

`A008440(n)*A101455(2*n+1)`
-/

namespace A213791.P11109554647430278546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008440 n * A101455 (2 * n + 1)

end

end A213791.P11109554647430278546

namespace A213791

/-- `A008440(n)*A101455(2*n+1)` -/
def P11109554647430278546.Spec : Prop :=
  ∀ n, P11109554647430278546.a n = A213791 n

end A213791

/-!
# A213792: Number of n X n 0..n symmetric arrays with every row summing to floor(n^2/2).

The programs for A213792, there is no canonical definition to state claims against.
-/

/-! ## A213792.P11433665900653424609

`A213800((1-n)²+n²)`
-/

namespace A213792.P11433665900653424609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A213792.P11433665900653424609

/-!
# A213793: Number of n X n 0..1 symmetric arrays with every row summing to floor(n/2).

The programs for A213793, there is no canonical definition to state claims against.
-/

/-! ## A213793.P406755508379736718

`A333157(A194274(n))`
-/

namespace A213793.P406755508379736718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (A194274 n).toNat

end

end A213793.P406755508379736718

/-! ## A213793.P14741368372161848805

`A333157(A007590(n+1))`
-/

namespace A213793.P14741368372161848805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (A007590 (n + 1)).toNat

end

end A213793.P14741368372161848805

/-! ## A213793.P12798453712361113138

`A333157(A080476(n+1))`
-/

namespace A213793.P12798453712361113138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (A080476 (n + 1)).toNat

end

end A213793.P12798453712361113138

/-! ## A213793.P4168397707317469763

`A333157(A156324(n+1))`
-/

namespace A213793.P4168397707317469763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (A156324 (n + 1)).toNat

end

end A213793.P4168397707317469763

/-! ## A213793.P10774809087998694734

`A333157(∑[∑[A010673(n)]])`
-/

namespace A213793.P10774809087998694734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213793.P10774809087998694734

/-!
# A213794: Number of n X n 0..2 symmetric arrays with every row summing to n.

The programs for A213794, there is no canonical definition to state claims against.
-/

/-! ## A213794.P12464410710076176588

`A213800(∑[1-char[1]+n])`
-/

namespace A213794.P12464410710076176588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213794.P12464410710076176588

/-!
# A213795: Number of n X n 0..3 symmetric arrays with every row summing to floor(n*3/2).

The programs for A213795, there is no canonical definition to state claims against.
-/

/-! ## A213795.P9927136055244794669

`A213800(∑[n+2]-1)`
-/

namespace A213795.P9927136055244794669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A213795.P9927136055244794669

/-! ## A213795.P6249746356891434979

`and(-1, A213800(A034856(n+1)))`
-/

namespace A213795.P6249746356891434979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A213800 (A034856 (n + 1)).toNat)

end

end A213795.P6249746356891434979

/-! ## A213795.P3561712668280104699

`A213800(A034856(n+1))+A102683(n)`
-/

namespace A213795.P3561712668280104699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (A034856 (n + 1)).toNat + A102683 n

end

end A213795.P3561712668280104699

/-! ## A213795.P6870610989923710518

`A308975(n)+A213800(A034856(n+1))`
-/

namespace A213795.P6870610989923710518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308975 n + A213800 (A034856 (n + 1)).toNat

end

end A213795.P6870610989923710518

/-! ## A213795.P17095119557583237065

`A175740(n)*A213800(A034856(n+1))`
-/

namespace A213795.P17095119557583237065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175740 n * A213800 (A034856 (n + 1)).toNat

end

end A213795.P17095119557583237065

/-!
# A213796: Number of n X n 0..4 symmetric arrays with every row summing to 2*n.

The programs for A213796, there is no canonical definition to state claims against.
-/

/-! ## A213796.P9812395618646884378

`A213800(eq[2, A309049(n)])`
-/

namespace A213796.P9812395618646884378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213796.P9812395618646884378

/-! ## A213796.P6435911713817172597

`A213800(A134227(n+1)+3)`
-/

namespace A213796.P6435911713817172597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (A134227 (n + 1) + 3).toNat

end

end A213796.P6435911713817172597

/-! ## A213796.P18416781338212509776

`A213800(eq[2, A008284(n+1)])`
-/

namespace A213796.P18416781338212509776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213796.P18416781338212509776

/-! ## A213796.P7282301611966558879

`A213800(eq[2, A144257(n+1)])`
-/

namespace A213796.P7282301611966558879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213796.P7282301611966558879

/-!
# A213797: Number of n X n 0..5 symmetric arrays with every row summing to floor(n*5/2).

The programs for A213797, there is no canonical definition to state claims against.
-/

/-! ## A213797.P6744713562693848430

`A213800(∑[n+5]+6)`
-/

namespace A213797.P6744713562693848430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A213797.P6744713562693848430

/-! ## A213797.P17211301395190737062

`A213800(Δ[A023545(n+1)])+A007814(2*n+3)`
-/

namespace A213797.P17211301395190737062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (f1 (n + 1) - f1 n).toNat + A007814 (2 * n + 3)

end

end A213797.P17211301395190737062

/-!
# A213798: Number of n X n 0..6 symmetric arrays with every row summing to 3*n.

The programs for A213798, there is no canonical definition to state claims against.
-/

/-! ## A213798.P17987273536859759086

`A213800(A052905(n+3))`
-/

namespace A213798.P17987273536859759086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (A052905 (n + 3)).toNat

end

end A213798.P17987273536859759086

/-!
# A213799: Number of n X n 0..7 symmetric arrays with every row summing to floor(n*7/2).

The programs for A213799, there is no canonical definition to state claims against.
-/

/-! ## A213799.P5073164695481752856

`A213800(A055999(n+4))`
-/

namespace A213799.P5073164695481752856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (A055999 (n + 4)).toNat

end

end A213799.P5073164695481752856

