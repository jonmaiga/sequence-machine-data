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
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A004000: RATS: Reverse Add Then Sort the digits applied to previous term, starting with 1.

The programs for A004000, there is no canonical definition to state claims against.
-/

/-! ## A004000.P9148400602356133776

`A036839(a(n-1))` with `a(0)=1`
-/

namespace A004000.P9148400602356133776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036839 (a (n - 1)).toNat

end

end A004000.P9148400602356133776

/-! ## A004000.P1486734780422573217

`A151878(n)+A036839(a(A023443(n)))` with `a(0)=1`
-/

namespace A004000.P1486734780422573217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151878 n + A036839 (a (A023443 n).toNat).toNat

end

end A004000.P1486734780422573217

/-! ## A004000.P13804646369368420816

`A036839(a(A023443(n)))%A019687(n)` with `a(0)=1`
-/

namespace A004000.P13804646369368420816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A036839 (a (A023443 n).toNat).toNat) (A019687 n)

end

end A004000.P13804646369368420816

/-! ## A004000.P1928411273432275434

`A004185(A052008(a(n-1)))` with `a(0)=1`
-/

namespace A004000.P1928411273432275434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004185 (A052008 (a (n - 1)).toNat).toNat

end

end A004000.P1928411273432275434

/-! ## A004000.P6075386235138771408

`A004185(A056964(a(n-1)))` with `a(0)=1`
-/

namespace A004000.P6075386235138771408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004185 (A056964 (a (n - 1)).toNat).toNat

end

end A004000.P6075386235138771408

/-!
# A004001: Hofstadter-Conway $10000 sequence: a(n) = a(a(n-1)) + a(n-a(n-1)) with a(1) = a(2) = 1.

The programs for A004001, the canonical program `A004001.P15027099775036681873` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004001 has offset 1).

The definition of A004001 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-1)+a(n-a(n-1))` (program `A004001.P15027099775036681873`, by `A004001.P15027099775036681873.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004001.P15027099775036681873

`a(a(n-1)-1)+a(n-a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004001

/-- `a(a(n-1)-1)+a(n-a(n-1))` -/
def P15027099775036681873.Spec : Prop :=
  ∀ n, (P15027099775036681873.a n : ℤ) = A004001 (n + 1)

theorem P15027099775036681873.correct : P15027099775036681873.Spec := by
  intro n
  simp only [A004001, Nat.add_sub_cancel]

end A004001

/-! ## A004001.P9212381915296967719

`2-A080677(n+1)+n`
-/

namespace A004001.P9212381915296967719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080677 (n + 1) + (n : ℤ)

end

end A004001.P9212381915296967719

namespace A004001

/-- `2-A080677(n+1)+n` -/
def P9212381915296967719.Spec : Prop :=
  ∀ n, P9212381915296967719.a n = A004001 (n + 1)

theorem P9212381915296967719.correct : P9212381915296967719.Spec := by
  intro n
  simp only [A004001, Nat.add_sub_cancel, A004001.P9212381915296967719.a, A004001.P15027099775036681873.a, A080677, A080677.P3667813120543566006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004001

/-! ## A004001.P17162330912180233894

`A093879(n)+a(n-1)` with `a(0)=1`
-/

namespace A004001.P17162330912180233894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093879 n + a (n - 1)

end

end A004001.P17162330912180233894

namespace A004001

/-- `A093879(n)+a(n-1)` -/
def P17162330912180233894.Spec : Prop :=
  ∀ n, P17162330912180233894.a n = A004001 (n + 1)

end A004001

/-! ## A004001.P7627380823761904449

`∑[floor(1/A265332(n+1))]`
-/

namespace A004001.P7627380823761904449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A265332 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004001.P7627380823761904449

namespace A004001

/-- `∑[floor(1/A265332(n+1))]` -/
def P7627380823761904449.Spec : Prop :=
  ∀ n, P7627380823761904449.a n = A004001 (n + 1)

end A004001

/-! ## A004001.P15920346131798555035

`∑[char[A188163(n+1)-1]]`
-/

namespace A004001.P15920346131798555035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004001.P15920346131798555035

namespace A004001

/-- `∑[char[A188163(n+1)-1]]` -/
def P15920346131798555035.Spec : Prop :=
  ∀ n, (P15920346131798555035.a n : ℤ) = A004001 (n + 1)

end A004001

/-! ## A004001.P16273288465553846131

`ceil((A004074(n+1)+n)/2)`
-/

namespace A004001.P16273288465553846131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004074 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A004001.P16273288465553846131

namespace A004001

/-- `ceil((A004074(n+1)+n)/2)` -/
def P16273288465553846131.Spec : Prop :=
  ∀ n, P16273288465553846131.a n = A004001 (n + 1)

end A004001

/-! ## A004001.P9321214701661078369

`A284019(n+1)+A005185(n+1)`
-/

namespace A004001.P9321214701661078369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284019 (n + 1) + A005185 (n + 1)

end

end A004001.P9321214701661078369

namespace A004001

/-- `A284019(n+1)+A005185(n+1)` -/
def P9321214701661078369.Spec : Prop :=
  ∀ n, P9321214701661078369.a n = A004001 (n + 1)

theorem P9321214701661078369.correct : P9321214701661078369.Spec := by
  intro n
  simp only [A004001, Nat.add_sub_cancel, A004001.P9321214701661078369.a, A004001.P15027099775036681873.a, A005185, A005185.P15523785795587217945.a, A284019, A284019.P8425388726725023330.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004001

/-! ## A004001.P12337244684889454131

`A283472(n+1)+A283469(n+1)`
-/

namespace A004001.P12337244684889454131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283472 (n + 1) + A283469 (n + 1)

end

end A004001.P12337244684889454131

namespace A004001

/-- `A283472(n+1)+A283469(n+1)` -/
def P12337244684889454131.Spec : Prop :=
  ∀ n, P12337244684889454131.a n = A004001 (n + 1)

end A004001

/-! ## A004001.P7028928280434569645

`A283470(n+1)+2*A283472(n+1)`
-/

namespace A004001.P7028928280434569645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283470 (n + 1) + 2 * A283472 (n + 1)

end

end A004001.P7028928280434569645

namespace A004001

/-- `A283470(n+1)+2*A283472(n+1)` -/
def P7028928280434569645.Spec : Prop :=
  ∀ n, P7028928280434569645.a n = A004001 (n + 1)

end A004001

/-! ## A004001.P12362606508530143873

`2*A283469(n+1)-A283470(n+1)`
-/

namespace A004001.P12362606508530143873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283469 (n + 1) - A283470 (n + 1)

end

end A004001.P12362606508530143873

namespace A004001

/-- `2*A283469(n+1)-A283470(n+1)` -/
def P12362606508530143873.Spec : Prop :=
  ∀ n, P12362606508530143873.a n = A004001 (n + 1)

end A004001

/-! ## A004001.P9210557797185353836

`∑[A093879(n+1)]+1-A093879(n+1)`
-/

namespace A004001.P9210557797185353836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A093879 (n + 1))

end

end A004001.P9210557797185353836

namespace A004001

/-- `∑[A093879(n+1)]+1-A093879(n+1)` -/
def P9210557797185353836.Spec : Prop :=
  ∀ n, P9210557797185353836.a n = A004001 (n + 1)

end A004001

/-! ## A004001.P15183426917629968129

`A028242(A004074(n+1))+A028242(n)`
-/

namespace A004001.P15183426917629968129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A004074 (n + 1)).toNat + A028242 n

end

end A004001.P15183426917629968129

namespace A004001

/-- `A028242(A004074(n+1))+A028242(n)` -/
def P15183426917629968129.Spec : Prop :=
  ∀ n, P15183426917629968129.a n = A004001 (n + 1)

end A004001

/-! ## A004001.P14846005066649515637

`A110654(A004074(n+1))+A110654(n)`
-/

namespace A004001.P14846005066649515637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004074 (n + 1)).toNat + A110654 n

end

end A004001.P14846005066649515637

namespace A004001

/-- `A110654(A004074(n+1))+A110654(n)` -/
def P14846005066649515637.Spec : Prop :=
  ∀ n, P14846005066649515637.a n = A004001 (n + 1)

end A004001

/-! ## A004001.P431170539790176707

`A005185(n+1)+A062157(n)*A284606(n+1)`
-/

namespace A004001.P431170539790176707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1) + A062157 n * A284606 (n + 1)

end

end A004001.P431170539790176707

namespace A004001

/-- `A005185(n+1)+A062157(n)*A284606(n+1)` -/
def P431170539790176707.Spec : Prop :=
  ∀ n, P431170539790176707.a n = A004001 (n + 1)

end A004001

/-! ## A004001.P13875877612432518118

`A005185(n+1)+A165326(n)*A284606(n+1)`
-/

namespace A004001.P13875877612432518118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1) + A165326 n * A284606 (n + 1)

end

end A004001.P13875877612432518118

namespace A004001

/-- `A005185(n+1)+A165326(n)*A284606(n+1)` -/
def P13875877612432518118.Spec : Prop :=
  ∀ n, P13875877612432518118.a n = A004001 (n + 1)

end A004001

/-! ## A004001.P17534938311679441235

`A055748(n+1)+A284478(n+1)+A284019(n+1)`
-/

namespace A004001.P17534938311679441235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055748 (n + 1) + (A284478 (n + 1) + A284019 (n + 1))

end

end A004001.P17534938311679441235

namespace A004001

/-- `A055748(n+1)+A284478(n+1)+A284019(n+1)` -/
def P17534938311679441235.Spec : Prop :=
  ∀ n, P17534938311679441235.a n = A004001 (n + 1)

theorem P17534938311679441235.correct : P17534938311679441235.Spec := by
  intro n
  simp only [A004001, Nat.add_sub_cancel, A004001.P17534938311679441235.a, A004001.P15027099775036681873.a, A055748, A055748.P8898530340644746947.a, A284019, A284019.P8425388726725023330.a, A284478, A284478.P17703318329199154233.a, A005185, A005185.P15523785795587217945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004001

/-! ## A004001.P13254606625442441573

`A008619(A004074(n+1)-1+n)`
-/

namespace A004001.P13254606625442441573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004074 (n + 1) - 1 + (n : ℤ)).toNat

end

end A004001.P13254606625442441573

namespace A004001

/-- `A008619(A004074(n+1)-1+n)` -/
def P13254606625442441573.Spec : Prop :=
  ∀ n, P13254606625442441573.a n = A004001 (n + 1)

end A004001

/-! ## A004001.P18277856398672012533

`A008619(A004074(n+1)+n)`
-/

namespace A004001.P18277856398672012533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004074 (n + 1) + (n : ℤ)).toNat

end

end A004001.P18277856398672012533

namespace A004001

/-- `A008619(A004074(n+1)+n)` -/
def P18277856398672012533.Spec : Prop :=
  ∀ n, P18277856398672012533.a n = A004001 (n + 1)

end A004001

/-! ## A004001.P12790756390279826865

`A038459(A004074(n+1)+n)`
-/

namespace A004001.P12790756390279826865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (A004074 (n + 1) + (n : ℤ)).toNat

end

end A004001.P12790756390279826865

namespace A004001

/-- `A038459(A004074(n+1)+n)` -/
def P12790756390279826865.Spec : Prop :=
  ∀ n, P12790756390279826865.a n = A004001 (n + 1)

end A004001

/-! ## A004001.P18108345842160700859

`A109168(A004074(n+1)+n)`
-/

namespace A004001.P18108345842160700859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (A004074 (n + 1) + (n : ℤ)).toNat

end

end A004001.P18108345842160700859

namespace A004001

/-- `A109168(A004074(n+1)+n)` -/
def P18108345842160700859.Spec : Prop :=
  ∀ n, P18108345842160700859.a n = A004001 (n + 1)

end A004001

/-!
# A004003: Number of domino tilings (or dimer coverings) of a 2n X 2n square.

The programs for A004003, there is no canonical definition to state claims against.
-/

/-! ## A004003.P13400952728182848657

`2^n*A065072(n)²`
-/

namespace A004003.P13400952728182848657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A065072 n ^ 2

end

end A004003.P13400952728182848657

/-! ## A004003.P17123932417650938284

`A189002(2*n)`
-/

namespace A004003.P17123932417650938284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189002 (2 * n)

end

end A004003.P17123932417650938284

/-! ## A004003.P2332948285050451515

`A187618(∑[n]+n)`
-/

namespace A004003.P2332948285050451515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187618 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A004003.P2332948285050451515

/-! ## A004003.P9579035820464804442

`record[A187596(∑[4*n])]`
-/

namespace A004003.P9579035820464804442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004003.P9579035820464804442

/-! ## A004003.P1422127311148127002

`record[A187616(∑[n+1]-1)]`
-/

namespace A004003.P1422127311148127002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187616 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004003.P1422127311148127002

/-!
# A004004: a(n) = (3^(2*n+1) - 8*n - 3)/16.

The programs for A004004, the canonical program `A004004.P2489811422528045096` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004004 has offset 0).

The definition of A004004 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^(2*n+1)-8*n-3)/16` (program `A004004.P11749920864418485254`, by `A004004.P11749920864418485254.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004004.P14454120483175392565

`ogf((x+3x^2)/(1-11x+19x^2-9x^3))`
-/

namespace A004004.P14454120483175392565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3] [1, -11, 19, -9] n

end

end A004004.P14454120483175392565

namespace A004004

/-- `ogf((x+3x^2)/(1-11x+19x^2-9x^3))` -/
def P14454120483175392565.Spec : Prop :=
  ∀ n, P14454120483175392565.a n = A004004 n

end A004004

/-! ## A004004.P13918241132658772919

`a(n-1)+(3^(2*n-1)-1)/2` with `a(0)=0`
-/

namespace A004004.P13918241132658772919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((3 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) - 1) / 2

end

end A004004.P13918241132658772919

namespace A004004

/-- `a(n-1)+(3^(2*n-1)-1)/2` -/
def P13918241132658772919.Spec : Prop :=
  ∀ n, P13918241132658772919.a n = (A004004 n : ℚ)

end A004004

/-! ## A004004.P2489811422528045096

`11*a(n-1)-19*a(n-2)+9*a(n-3)` with `a(0)=0, a(1)=1, a(2)=14`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004004

/-- `11*a(n-1)-19*a(n-2)+9*a(n-3)` -/
def P2489811422528045096.Spec : Prop :=
  ∀ n, P2489811422528045096.a n = A004004 n

theorem P2489811422528045096.correct : P2489811422528045096.Spec := by
  intro n
  simp only [A004004]

end A004004

/-! ## A004004.P11749920864418485254

`(3^(2*n+1)-8*n-3)/16`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004004.P11749920864418485254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (2 * n + 1) : ℤ) - (8 * n : ℤ) - 3 : ℚ) / 16

end

end A004004.P11749920864418485254

namespace A004004

/-- `(3^(2*n+1)-8*n-3)/16` -/
def P11749920864418485254.Spec : Prop :=
  ∀ n, P11749920864418485254.a n = (A004004 n : ℚ)

theorem P11749920864418485254.correct : P11749920864418485254.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A004004, Nat.add_sub_cancel, A004004.P11749920864418485254.a, A004004.P2489811422528045096.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A004004, Nat.add_sub_cancel, A004004.P11749920864418485254.a, A004004.P2489811422528045096.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A004004

/-! ## A004004.P5440528803131338930

`∑[ogf((x+3x^2)/(1-10x+9x^2))]`
-/

namespace A004004.P5440528803131338930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3] [1, -10, 9] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004004.P5440528803131338930

namespace A004004

/-- `∑[ogf((x+3x^2)/(1-10x+9x^2))]` -/
def P5440528803131338930.Spec : Prop :=
  ∀ n, P5440528803131338930.a n = A004004 n

end A004004

/-! ## A004004.P9452075121867129273

`∑[9*a(n-1)+4]` with `a(0)=0, a(1)=1`
-/

namespace A004004.P9452075121867129273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  9 * f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004004.P9452075121867129273

namespace A004004

/-- `∑[9*a(n-1)+4]` -/
def P9452075121867129273.Spec : Prop :=
  ∀ n, (P9452075121867129273.a n : ℤ) = A004004 n

end A004004

/-! ## A004004.P8068367318525100572

`∑[lcm(9, a(n-1))+4]` with `a(0)=0, a(1)=1`
-/

namespace A004004.P8068367318525100572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.lcm 9 (f1 (n - 1)) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004004.P8068367318525100572

namespace A004004

/-- `∑[lcm(9, a(n-1))+4]` -/
def P8068367318525100572.Spec : Prop :=
  ∀ n, (P8068367318525100572.a n : ℤ) = A004004 n

end A004004

/-! ## A004004.P8488333251542220552

`∑[∑[9*a(n-1)]]` with `a(0)=0, a(1)=1, a(2)=12`
-/

namespace A004004.P8488333251542220552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 12] fun n f2 =>
  9 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004004.P8488333251542220552

namespace A004004

/-- `∑[∑[9*a(n-1)]]` -/
def P8488333251542220552.Spec : Prop :=
  ∀ n, (P8488333251542220552.a n : ℤ) = A004004 n

end A004004

/-! ## A004004.P13799471834623537197

`record[-(3*a(n-1)+n)]` with `a(0)=0`
-/

namespace A004004.P13799471834623537197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  -(3 * f1 (n - 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004004.P13799471834623537197

namespace A004004

/-- `record[-(3*a(n-1)+n)]` -/
def P13799471834623537197.Spec : Prop :=
  ∀ n, P13799471834623537197.a n = A004004 n

end A004004

/-! ## A004004.P1721721082991665561

`A097137(2*n)`
-/

namespace A004004.P1721721082991665561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097137 (2 * n)

end

end A004004.P1721721082991665561

namespace A004004

/-- `A097137(2*n)` -/
def P1721721082991665561.Spec : Prop :=
  ∀ n, P1721721082991665561.a n = A004004 n

end A004004

/-! ## A004004.P14317946644941579525

`∑[record[A152298(n)]]`
-/

namespace A004004.P14317946644941579525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152298 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004004.P14317946644941579525

namespace A004004

/-- `∑[record[A152298(n)]]` -/
def P14317946644941579525.Spec : Prop :=
  ∀ n, P14317946644941579525.a n = A004004 n

end A004004

/-! ## A004004.P652172362846634877

`record[∑[-A014983(n)]]`
-/

namespace A004004.P652172362846634877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A014983 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004004.P652172362846634877

namespace A004004

/-- `record[∑[-A014983(n)]]` -/
def P652172362846634877.Spec : Prop :=
  ∀ n, P652172362846634877.a n = A004004 n

end A004004

/-! ## A004004.P8660323380004699806

`3*A002754(n)+n`
-/

namespace A004004.P8660323380004699806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002754 n + (n : ℤ)

end

end A004004.P8660323380004699806

namespace A004004

/-- `3*A002754(n)+n` -/
def P8660323380004699806.Spec : Prop :=
  ∀ n, P8660323380004699806.a n = A004004 n

end A004004

/-! ## A004004.P9670267223439900953

`floor((A039306(n)-n)/2)`
-/

namespace A004004.P9670267223439900953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039306 n - (n : ℤ) : ℚ) / 2⌋

end

end A004004.P9670267223439900953

namespace A004004

/-- `floor((A039306(n)-n)/2)` -/
def P9670267223439900953.Spec : Prop :=
  ∀ n, P9670267223439900953.a n = A004004 n

end A004004

/-! ## A004004.P17489033836094741167

`record[∑[floor(A076040(n)/2)]]`
-/

namespace A004004.P17489033836094741167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A076040 n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004004.P17489033836094741167

namespace A004004

/-- `record[∑[floor(A076040(n)/2)]]` -/
def P17489033836094741167.Spec : Prop :=
  ∀ n, P17489033836094741167.a n = A004004 n

end A004004

/-! ## A004004.P11926927283753546015

`A183119(2*n)/2-n`
-/

namespace A004004.P11926927283753546015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183119 (2 * n) : ℚ) / 2 - (n : ℚ)

end

end A004004.P11926927283753546015

namespace A004004

/-- `A183119(2*n)/2-n` -/
def P11926927283753546015.Spec : Prop :=
  ∀ n, P11926927283753546015.a n = (A004004 n : ℚ)

end A004004

/-! ## A004004.P15029460673963242483

`A002754(n)+A002452(n)`
-/

namespace A004004.P15029460673963242483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002754 n + A002452 n

end

end A004004.P15029460673963242483

namespace A004004

/-- `A002754(n)+A002452(n)` -/
def P15029460673963242483.Spec : Prop :=
  ∀ n, P15029460673963242483.a n = A004004 n

end A004004

/-! ## A004004.P5035785460275709915

`∑[A003462(2*n)]-∑[A140429(2*n)]`
-/

namespace A004004.P5035785460275709915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A004004.P5035785460275709915

namespace A004004

/-- `∑[A003462(2*n)]-∑[A140429(2*n)]` -/
def P5035785460275709915.Spec : Prop :=
  ∀ n, P5035785460275709915.a n = A004004 n

end A004004

/-!
# A004005: Coefficients of elliptic function sn.

The programs for A004005, there is no canonical definition to state claims against.
-/

/-! ## A004005.P3600114059622124865

`A060628(∑[n+3])`
-/

namespace A004005.P3600114059622124865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060628 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004005.P3600114059622124865

/-! ## A004005.P4356863105242323753

`or(A060628(A141214(n)), A086008(n))`
-/

namespace A004005.P4356863105242323753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060628 (A141214 n).toNat) (A086008 n)

end

end A004005.P4356863105242323753

/-! ## A004005.P12287544201495388005

`A060628(A141214(n))%A224743(n+1)`
-/

namespace A004005.P12287544201495388005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060628 (A141214 n).toNat) (A224743 (n + 1))

end

end A004005.P12287544201495388005

/-! ## A004005.P10191773663462728213

`A002260(A000124(n))*A060628(A141214(n))`
-/

namespace A004005.P10191773663462728213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A000124 n).toNat * A060628 (A141214 n).toNat

end

end A004005.P10191773663462728213

/-! ## A004005.P16153676316417313616

`A060628(A000217(n))*A060628(A141214(n))`
-/

namespace A004005.P16153676316417313616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060628 (A000217 n).toNat * A060628 (A141214 n).toNat

end

end A004005.P16153676316417313616

/-!
# A004006: a(n) = C(n,1) + C(n,2) + C(n,3), or n*(n^2 + 5)/6.

The programs for A004006, the canonical program `A004006.P3732720668660365450` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004006 has offset 0).

The definition of A004006 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n²+5)/6` (program `A004006.P3051491664590420930`, by `A004006.P3051491664590420930.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004006.P3051491664590420930

`n*(n²+5)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004006.P3051491664590420930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n ^ 2 + 5) : ℚ) / 6

end

end A004006.P3051491664590420930

namespace A004006

/-- `n*(n²+5)/6` -/
def P3051491664590420930.Spec : Prop :=
  ∀ n, P3051491664590420930.a n = (A004006 n : ℚ)

theorem P3051491664590420930.correct : P3051491664590420930.Spec := by
  intro n
  simp only [A004006, Nat.add_sub_cancel, A004006.P3051491664590420930.a, A004006.P3732720668660365450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A004006

/-! ## A004006.P3732720668660365450

`C(n, 1)+C(n, 2)+C(n, 3)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004006

/-- `C(n, 1)+C(n, 2)+C(n, 3)` -/
def P3732720668660365450.Spec : Prop :=
  ∀ n, (P3732720668660365450.a n : ℤ) = A004006 n

theorem P3732720668660365450.correct : P3732720668660365450.Spec := by
  intro n
  simp only [A004006]

end A004006

/-! ## A004006.P10432571617564631037

`ogf((x-x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A004006.P10432571617564631037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 1] [1, -4, 6, -4, 1] n

end

end A004006.P10432571617564631037

namespace A004006

/-- `ogf((x-x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P10432571617564631037.Spec : Prop :=
  ∀ n, P10432571617564631037.a n = A004006 n

end A004006

/-! ## A004006.P879838240780134291

`2*a(n-1)+n-1-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A004006.P879838240780134291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) + ((n : ℤ) - 1) - a (n - 2)

end

end A004006.P879838240780134291

namespace A004006

/-- `2*a(n-1)+n-1-a(n-2)` -/
def P879838240780134291.Spec : Prop :=
  ∀ n, P879838240780134291.a n = A004006 n

end A004006

/-! ## A004006.P17740325876877607976

`n+∑{#}[n, #*(n-#)]`
-/

namespace A004006.P17740325876877607976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + ∑ k ∈ Finset.range (f1 n + 1), (k : ℤ) * ((n : ℤ) - (k : ℤ))

end

end A004006.P17740325876877607976

namespace A004006

/-- `n+∑{#}[n, #*(n-#)]` -/
def P17740325876877607976.Spec : Prop :=
  ∀ n, P17740325876877607976.a n = A004006 n

end A004006

/-! ## A004006.P17223735122200651541

`∑[C(n, 2)]+n`
-/

namespace A004006.P17223735122200651541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A004006.P17223735122200651541

namespace A004006

/-- `∑[C(n, 2)]+n` -/
def P17223735122200651541.Spec : Prop :=
  ∀ n, (P17223735122200651541.a n : ℤ) = A004006 n

end A004006

/-! ## A004006.P9953121728399796204

`C(n+1, 3)+n`
-/

namespace A004006.P9953121728399796204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 3 + n

end

end A004006.P9953121728399796204

namespace A004006

/-- `C(n+1, 3)+n` -/
def P9953121728399796204.Spec : Prop :=
  ∀ n, (P9953121728399796204.a n : ℤ) = A004006 n

theorem P9953121728399796204.correct : P9953121728399796204.Spec := by
  intro n
  simp only [A004006, Nat.add_sub_cancel, A004006.P9953121728399796204.a, A004006.P3732720668660365450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A004006

/-! ## A004006.P9792239709296725893

`∑[∑[n]]-C(n, 2)`
-/

namespace A004006.P9792239709296725893
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose n 2 : ℤ)

end

end A004006.P9792239709296725893

namespace A004006

/-- `∑[∑[n]]-C(n, 2)` -/
def P9792239709296725893.Spec : Prop :=
  ∀ n, P9792239709296725893.a n = A004006 n

end A004006

/-! ## A004006.P14543824077006671366

`∑[∑[n-floor(atan(n))]]`
-/

namespace A004006.P14543824077006671366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊Real.arctan (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004006.P14543824077006671366

namespace A004006

/-- `∑[∑[n-floor(atan(n))]]` -/
def P14543824077006671366.Spec : Prop :=
  ∀ n, P14543824077006671366.a n = A004006 n

end A004006

/-! ## A004006.P1495810716753171641

`∑[∑[ceil(n-atan(n))]]`
-/

namespace A004006.P1495810716753171641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - Real.arctan (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004006.P1495810716753171641

namespace A004006

/-- `∑[∑[ceil(n-atan(n))]]` -/
def P1495810716753171641.Spec : Prop :=
  ∀ n, P1495810716753171641.a n = A004006 n

end A004006

/-! ## A004006.P7521699673570226570

`∑[∑[n-floor(acot(acot(n)))]]`
-/

namespace A004006.P7521699673570226570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004006.P7521699673570226570

namespace A004006

/-- `∑[∑[n-floor(acot(acot(n)))]]` -/
def P7521699673570226570.Spec : Prop :=
  ∀ n, P7521699673570226570.a n = A004006 n

end A004006

/-! ## A004006.P17654230888676314749

`∑[∑[ceil(n-acot(acot(n)))]]`
-/

namespace A004006.P17654230888676314749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004006.P17654230888676314749

namespace A004006

/-- `∑[∑[ceil(n-acot(acot(n)))]]` -/
def P17654230888676314749.Spec : Prop :=
  ∀ n, P17654230888676314749.a n = A004006 n

end A004006

/-! ## A004006.P11527753509311129747

`∑[(n²+2)%(∑[n]+1)]`
-/

namespace A004006.P11527753509311129747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 2) % (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004006.P11527753509311129747

namespace A004006

/-- `∑[(n²+2)%(∑[n]+1)]` -/
def P11527753509311129747.Spec : Prop :=
  ∀ n, (P11527753509311129747.a n : ℤ) = A004006 n

end A004006

/-! ## A004006.P5945818314044414369

`∑[∑[ceil(∑[cos(2/(n+1))])]]`
-/

namespace A004006.P5945818314044414369
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (2 / (n + 1 : ℚ) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f3 j⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004006.P5945818314044414369

namespace A004006

/-- `∑[∑[ceil(∑[cos(2/(n+1))])]]` -/
def P5945818314044414369.Spec : Prop :=
  ∀ n, P5945818314044414369.a n = A004006 n

end A004006

/-! ## A004006.P3940555115255975611

`∑[n-(1-a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A004006.P3940555115255975611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n : ℤ) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004006.P3940555115255975611

namespace A004006

/-- `∑[n-(1-a(n-1))]` -/
def P3940555115255975611.Spec : Prop :=
  ∀ n, P3940555115255975611.a n = A004006 n

end A004006

/-! ## A004006.P1237810166175594

`(1-n)²+a(n-2)+2` with `a(0)=0, a(1)=1`
-/

namespace A004006.P1237810166175594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (1 - (n : ℤ)) ^ 2 + (a (n - 2) + 2)

end

end A004006.P1237810166175594

namespace A004006

/-- `(1-n)²+a(n-2)+2` -/
def P1237810166175594.Spec : Prop :=
  ∀ n, P1237810166175594.a n = A004006 n

end A004006

/-! ## A004006.P1778136028084540205

`A283551(n)+1`
-/

namespace A004006.P1778136028084540205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283551 n + 1

end

end A004006.P1778136028084540205

namespace A004006

/-- `A283551(n)+1` -/
def P1778136028084540205.Spec : Prop :=
  ∀ n, P1778136028084540205.a n = A004006 n

end A004006

/-! ## A004006.P18222218388635890570

`A000125(n)-1`
-/

namespace A004006.P18222218388635890570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n - 1

end

end A004006.P18222218388635890570

namespace A004006

/-- `A000125(n)-1` -/
def P18222218388635890570.Spec : Prop :=
  ∀ n, P18222218388635890570.a n = A004006 n

theorem P18222218388635890570.correct : P18222218388635890570.Spec := by
  intro n
  simp only [A004006, Nat.add_sub_cancel, A004006.P18222218388635890570.a, A004006.P3732720668660365450.a, A000125, A000125.P10762125132202112265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A004006

/-! ## A004006.P10193881519014370075

`∑[A161680(n)]+n`
-/

namespace A004006.P10193881519014370075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A004006.P10193881519014370075

namespace A004006

/-- `∑[A161680(n)]+n` -/
def P10193881519014370075.Spec : Prop :=
  ∀ n, P10193881519014370075.a n = A004006 n

end A004006

/-! ## A004006.P15330232963578029391

`A011826(n+1)-2`
-/

namespace A004006.P15330232963578029391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011826 (n + 1) - 2

end

end A004006.P15330232963578029391

namespace A004006

/-- `A011826(n+1)-2` -/
def P15330232963578029391.Spec : Prop :=
  ∀ n, P15330232963578029391.a n = A004006 n

end A004006

/-!
# A004007: Theta series of E_6 lattice.

The programs for A004007, there is no canonical definition to state claims against.
-/

/-! ## A004007.P14934756950130585552

`A005129(3*n)`
-/

namespace A004007.P14934756950130585552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005129 (3 * n)

end

end A004007.P14934756950130585552

/-! ## A004007.P11248533818807318455

`A181976(3*n)`
-/

namespace A004007.P11248533818807318455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181976 (3 * n)

end

end A004007.P11248533818807318455

/-! ## A004007.P3932195677770340704

`abs(A181976(A008588(n)/2))`
-/

namespace A004007.P3932195677770340704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A181976 (SequenceMachineLib.roundAway ((A008588 n : ℚ) / 2)).toNat|

end

end A004007.P3932195677770340704

/-! ## A004007.P3031523334692258109

`abs(A181976(A005843(n)+n))`
-/

namespace A004007.P3031523334692258109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A181976 (A005843 n + (n : ℤ)).toNat|

end

end A004007.P3031523334692258109

/-! ## A004007.P17926641937867894230

`2*A109041(n)-A231961(n)`
-/

namespace A004007.P17926641937867894230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109041 n - A231961 n

end

end A004007.P17926641937867894230

/-! ## A004007.P8279358611574689330

`abs(A181976(A007494(A005843(n))))`
-/

namespace A004007.P8279358611574689330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A181976 (A007494 (A005843 n).toNat).toNat|

end

end A004007.P8279358611574689330

/-! ## A004007.P6553925435602197028

`abs(A181976(A025480(A008588(n))))`
-/

namespace A004007.P6553925435602197028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A181976 (A025480 (A008588 n).toNat).toNat|

end

end A004007.P6553925435602197028

/-! ## A004007.P6715907608979057913

`A181976(A008486(n))+A000007(n)`
-/

namespace A004007.P6715907608979057913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181976 (A008486 n).toNat + A000007 n

end

end A004007.P6715907608979057913

/-! ## A004007.P17733840680582846612

`A181976(A008486(n))+A109578(A081765(n+1))`
-/

namespace A004007.P17733840680582846612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181976 (A008486 n).toNat + A109578 (A081765 (n + 1)).toNat

end

end A004007.P17733840680582846612

/-! ## A004007.P7868955012772444302

`A000027(A181976(n+n+n))`
-/

namespace A004007.P7868955012772444302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A181976 (n + n + n)).toNat

end

end A004007.P7868955012772444302

/-!
# A004008: Expansion of theta series of E_7 lattice in powers of q^2.

The programs for A004008, there is no canonical definition to state claims against.
-/

/-! ## A004008.P1596860394640642196

`A023919(16*n)`
-/

namespace A004008.P1596860394640642196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 (16 * n)

end

end A004008.P1596860394640642196

/-! ## A004008.P17009749249567010454

`A030443(2*n)`
-/

namespace A004008.P17009749249567010454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030443 (2 * n)

end

end A004008.P17009749249567010454

/-! ## A004008.P10165353885292319737

`A003781(4*n)`
-/

namespace A004008.P10165353885292319737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 (4 * n)

end

end A004008.P10165353885292319737

/-! ## A004008.P11585634966732471578

`A003781(A008574(n))+A000007(n)`
-/

namespace A004008.P11585634966732471578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 (A008574 n).toNat + A000007 n

end

end A004008.P11585634966732471578

/-! ## A004008.P15072298996786751704

`or(A000007(n), A003781(A008586(n)))`
-/

namespace A004008.P15072298996786751704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A003781 (A008586 n).toNat)

end

end A004008.P15072298996786751704

/-! ## A004008.P11053985755501294261

`A003781(A008586(n))+A000007(n+1)`
-/

namespace A004008.P11053985755501294261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 (A008586 n).toNat + A000007 (n + 1)

end

end A004008.P11053985755501294261

/-! ## A004008.P8468653995822265343

`A021913(A014442(n+1))+A003781(A008574(n))`
-/

namespace A004008.P8468653995822265343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A014442 (n + 1)).toNat + A003781 (A008574 n).toNat

end

end A004008.P8468653995822265343

/-! ## A004008.P11040490453391961523

`A226874(∑[n])+A003781(A008574(n))`
-/

namespace A004008.P11040490453391961523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (∑ j ∈ Finset.range (n + 1), f1 j) + A003781 (A008574 n).toNat

end

end A004008.P11040490453391961523

/-! ## A004008.P15392646694201320275

`A003781(A008574(n))^A226874(A000124(n))`
-/

namespace A004008.P15392646694201320275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003781 (A008574 n).toNat : ℚ) ^ (A226874 (A000124 n).toNat : ℤ)

end

end A004008.P15392646694201320275

/-!
# A004009: Expansion of Eisenstein series E_4(q) (alternate convention E_2(q)); theta series of E_8 lattice.

The programs for A004009, there is no canonical definition to state claims against.
-/

/-! ## A004009.P15675263136638577090

`A008430(n)+128*A007331(n)`
-/

namespace A004009.P15675263136638577090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008430 n + 128 * A007331 n

end

end A004009.P15675263136638577090

/-! ## A004009.P5355899708673276859

`A000143(2*n)+128*A007331(n)`
-/

namespace A004009.P5355899708673276859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000143 (2 * n) + 128 * A007331 n

end

end A004009.P5355899708673276859

/-! ## A004009.P7650173955962088046

`A035016(2*n)+128*A007331(n)`
-/

namespace A004009.P7650173955962088046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035016 (2 * n) + 128 * A007331 n

end

end A004009.P7650173955962088046

/-! ## A004009.P15406996746374761789

`2*A008430(n)-A035016(n)`
-/

namespace A004009.P15406996746374761789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008430 n - A035016 n

end

end A004009.P15406996746374761789

/-! ## A004009.P16092478212999853308

`2*A035016(2*n)-A035016(n)`
-/

namespace A004009.P16092478212999853308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035016 (2 * n) - A035016 n

end

end A004009.P16092478212999853308

/-! ## A004009.P5641021340172184392

`(A035016(2*n)+A008427(2*n))/2`
-/

namespace A004009.P5641021340172184392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035016 (2 * n) + A008427 (2 * n) : ℚ) / 2

end

end A004009.P5641021340172184392

/-! ## A004009.P18054701802056695301

`A023920(9*n)`
-/

namespace A004009.P18054701802056695301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 (9 * n)

end

end A004009.P18054701802056695301

/-! ## A004009.P6791002581577315893

`A072839(18*n)`
-/

namespace A004009.P6791002581577315893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072839 (18 * n)

end

end A004009.P6791002581577315893

/-! ## A004009.P16575122164570917755

`A028579(16*n)`
-/

namespace A004009.P16575122164570917755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028579 (16 * n)

end

end A004009.P16575122164570917755

/-!
# A004010: Theta series of 12-dimensional Coxeter-Todd lattice K_12.

The programs for A004010, there is no canonical definition to state claims against.
-/

/-! ## A004010.P13048082040012099731

`A008657(n)-36*A007332(n)`
-/

namespace A004010.P13048082040012099731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008657 n - 36 * A007332 n

end

end A004010.P13048082040012099731

/-! ## A004010.P2887016419055045980

`A008657(n)+36*A007332(n)*A057428(n+1)`
-/

namespace A004010.P2887016419055045980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008657 n + 36 * A007332 n * A057428 (n + 1)

end

end A004010.P2887016419055045980

/-!
# A004011: Theta series of D_4 lattice; Fourier coefficients of Eisenstein series E_{gamma,2}.

The programs for A004011, there is no canonical definition to state claims against.
-/

/-! ## A004011.P4849692401249712996

`A000118(2*n)`
-/

namespace A004011.P4849692401249712996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (2 * n)

end

end A004011.P4849692401249712996

/-! ## A004011.P5660005945865347656

`A096727(2*n)`
-/

namespace A004011.P5660005945865347656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096727 (2 * n)

end

end A004011.P5660005945865347656

/-! ## A004011.P262174011794913706

`abs(A103640(n))`
-/

namespace A004011.P262174011794913706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103640 n|

end

end A004011.P262174011794913706

/-! ## A004011.P8100891719637548423

`A033999(n)*A103640(n)`
-/

namespace A004011.P8100891719637548423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A103640 n

end

end A004011.P8100891719637548423

/-! ## A004011.P10427514738939402299

`gcd(A000038(n), A103640(n))`
-/

namespace A004011.P10427514738939402299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A103640 n)

end

end A004011.P10427514738939402299

/-! ## A004011.P17281530638018589333

`lcm(A000034(n), A103640(n))`
-/

namespace A004011.P17281530638018589333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A103640 n)

end

end A004011.P17281530638018589333

/-! ## A004011.P17211920838518342170

`lcm(A000118(n), A186100(n))`
-/

namespace A004011.P17211920838518342170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000118 n) (A186100 n)

end

end A004011.P17211920838518342170

/-! ## A004011.P12658889128878140057

`A103640(n)/(2-A010684(n))`
-/

namespace A004011.P12658889128878140057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103640 n : ℚ) / (2 - A010684 n : ℚ)

end

end A004011.P12658889128878140057

/-! ## A004011.P17110891298376887386

`A000118(n)+A000118(n)-A096727(n)`
-/

namespace A004011.P17110891298376887386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n + (A000118 n - A096727 n)

end

end A004011.P17110891298376887386

/-! ## A004011.P1408223469418252530

`A000593(n+1)/A115607(n+1)*A103640(n)`
-/

namespace A004011.P1408223469418252530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000593 (n + 1) : ℚ) / (A115607 (n + 1) : ℚ) * (A103640 n : ℚ)

end

end A004011.P1408223469418252530

/-! ## A004011.P7971071497459269488

`A103640(2*n)`
-/

namespace A004011.P7971071497459269488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103640 (2 * n)

end

end A004011.P7971071497459269488

/-! ## A004011.P4741468508048887135

`gcd(A006352(2*n), A006352(n))`
-/

namespace A004011.P4741468508048887135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006352 (2 * n)) (A006352 n)

end

end A004011.P4741468508048887135

/-! ## A004011.P17408375500324288453

`(A125510(n)+A125510(3*n))/2`
-/

namespace A004011.P17408375500324288453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125510 n + A125510 (3 * n) : ℚ) / 2

end

end A004011.P17408375500324288453

/-! ## A004011.P2081857507162508915

`A097057(4*n)`
-/

namespace A004011.P2081857507162508915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097057 (4 * n)

end

end A004011.P2081857507162508915

/-! ## A004011.P3991866030340087828

`A228746(n)/A010686(n)`
-/

namespace A004011.P3991866030340087828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228746 n : ℚ) / (A010686 n : ℚ)

end

end A004011.P3991866030340087828

/-! ## A004011.P12799037996517962193

`gcd(A143337(n), A228746(n))`
-/

namespace A004011.P12799037996517962193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143337 n) (A228746 n)

end

end A004011.P12799037996517962193

/-! ## A004011.P4626783238604476278

`lcm(A096727(n), A228745(n))`
-/

namespace A004011.P4626783238604476278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A096727 n) (A228745 n)

end

end A004011.P4626783238604476278

/-! ## A004011.P13063049099050057979

`2*A122858(2*n)-A122858(4*n)`
-/

namespace A004011.P13063049099050057979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122858 (2 * n) - A122858 (4 * n)

end

end A004011.P13063049099050057979

/-! ## A004011.P12883874702035460377

`A236923(2*n)/A236924(2*n)*A236923(4*n)`
-/

namespace A004011.P12883874702035460377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236923 (2 * n) : ℚ) / (A236924 (2 * n) : ℚ) * (A236923 (4 * n) : ℚ)

end

end A004011.P12883874702035460377

/-! ## A004011.P8808597150095810340

`A133690(4*n)`
-/

namespace A004011.P8808597150095810340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133690 (4 * n)

end

end A004011.P8808597150095810340

/-!
# A004012: Theta series of hexagonal close-packing.

The programs for A004012, there is no canonical definition to state claims against.
-/

/-! ## A004012.P14731876500408633617

`A217511(8*n)`
-/

namespace A004012.P14731876500408633617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217511 (8 * n)

end

end A004012.P14731876500408633617

/-!
# A004013: Theta series of body-centered cubic (b.c.c.) lattice.

The programs for A004013, there is no canonical definition to state claims against.
-/

/-! ## A004013.P1759644326000743973

`floor(A005875(n)^(-1)^∑[n])`
-/

namespace A004013.P1759644326000743973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005875 n : ℚ) ^ ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)⌋

end

end A004013.P1759644326000743973

/-! ## A004013.P17317185216365983006

`A102560(n)*A213384(n)`
-/

namespace A004013.P17317185216365983006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n * A213384 n

end

end A004013.P17317185216365983006

/-! ## A004013.P16992641431141007123

`lcm(A005875(n), A102560(n))`
-/

namespace A004013.P16992641431141007123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005875 n) (A102560 n)

end

end A004013.P16992641431141007123

/-! ## A004013.P725189641930576693

`A133872(n+1)*A246631(n)`
-/

namespace A004013.P725189641930576693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (n + 1) * A246631 n

end

end A004013.P725189641930576693

/-! ## A004013.P3750991973758539695

`(A246631(n)+A212885(n))/2`
-/

namespace A004013.P3750991973758539695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246631 n + A212885 n : ℚ) / 2

end

end A004013.P3750991973758539695

/-! ## A004013.P15132975900588372172

`char[A042948(n)-1]*A246631(n)`
-/

namespace A004013.P15132975900588372172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A246631 n

end

end A004013.P15132975900588372172

/-! ## A004013.P1630089742737008753

`A000035(A008619(n+1))*A246631(n)`
-/

namespace A004013.P1630089742737008753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008619 (n + 1)).toNat * A246631 n

end

end A004013.P1630089742737008753

/-! ## A004013.P3710484056260751518

`A000035(A008619(n)-A000035(n))*A246631(n)`
-/

namespace A004013.P3710484056260751518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008619 n - A000035 n).toNat * A246631 n

end

end A004013.P3710484056260751518

/-! ## A004013.P6829588345519352855

`lcm(A128130(n+1), A246631(n))`
-/

namespace A004013.P6829588345519352855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128130 (n + 1)) (A246631 n)

end

end A004013.P6829588345519352855

/-! ## A004013.P1799642427271024111

`A219977(n+1)²*A212885(n)`
-/

namespace A004013.P1799642427271024111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (n + 1) ^ 2 * A212885 n

end

end A004013.P1799642427271024111

/-! ## A004013.P17741488280129082475

`A219977(n+1)²*A246631(n)`
-/

namespace A004013.P17741488280129082475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (n + 1) ^ 2 * A246631 n

end

end A004013.P17741488280129082475

/-! ## A004013.P6103973205931905275

`and(1, A081591(n+1))*A005875(n)`
-/

namespace A004013.P6103973205931905275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A081591 (n + 1)) * A005875 n

end

end A004013.P6103973205931905275

/-! ## A004013.P9485953846211832414

`and(A005875(n), A057077(n+3))`
-/

namespace A004013.P9485953846211832414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005875 n) (A057077 (n + 3))

end

end A004013.P9485953846211832414

/-! ## A004013.P7941827829399483111

`and(A057077(n+3), A212885(n))`
-/

namespace A004013.P7941827829399483111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057077 (n + 3)) (A212885 n)

end

end A004013.P7941827829399483111

/-! ## A004013.P11424831274031030896

`sqrt(and(A057077(n+3), A138202(n)))`
-/

namespace A004013.P11424831274031030896
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.land (A057077 (n + 3)) (A138202 n) : ℝ)

end

end A004013.P11424831274031030896

/-! ## A004013.P11147689894544551943

`A005927(n)+A005925(n)`
-/

namespace A004013.P11147689894544551943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005927 n + A005925 n

end

end A004013.P11147689894544551943

/-! ## A004013.P1704942636358730005

`A005925(n)+2*A045830(n)`
-/

namespace A004013.P1704942636358730005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005925 n + 2 * A045830 n

end

end A004013.P1704942636358730005

/-! ## A004013.P15741576885025621272

`Δ[A004525(n)]*A014455(2*n)`
-/

namespace A004013.P15741576885025621272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A014455 (2 * n)

end

end A004013.P15741576885025621272

/-! ## A004013.P2421661417980769377

`A102560(n)*A319078(n)`
-/

namespace A004013.P2421661417980769377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n * A319078 n

end

end A004013.P2421661417980769377

/-! ## A004013.P2322381843989130096

`lcm(A143432(n+1), A319078(n))`
-/

namespace A004013.P2322381843989130096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143432 (n + 1)) (A319078 n)

end

end A004013.P2322381843989130096

/-!
# A004014: Norms of vectors in the b.c.c. lattice.

The programs for A004014, there is no canonical definition to state claims against.
-/

/-! ## A004014.P15452259015152773810

`∪[A034045(n+1), A017101(n)]`
-/

namespace A004014.P15452259015152773810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004014.P15452259015152773810

/-! ## A004014.P3344813041449611821

`∪[A034045(n+1), A055046(n+1)]`
-/

namespace A004014.P3344813041449611821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004014.P3344813041449611821

/-! ## A004014.P16040605550708403531

`∩[A000378(n+1), A014601(n)]`
-/

namespace A004014.P16040605550708403531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004014.P16040605550708403531

/-! ## A004014.P18260516402615202795

`∩[A000378(n+1), A047458(n+1)]`
-/

namespace A004014.P18260516402615202795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004014.P18260516402615202795

/-! ## A004014.P7509266836859861010

`lt[0, A004013(n)]`
-/

namespace A004014.P7509266836859861010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004014.P7509266836859861010

/-! ## A004014.P9263131278690628708

`eq[2, A107279(2*A004013(n))]`
-/

namespace A004014.P9263131278690628708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (2 * A004013 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004014.P9263131278690628708

/-! ## A004014.P4333444850189736415

`eq[2, 2%A008574(3*A004013(n))]`
-/

namespace A004014.P4333444850189736415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A008574 (3 * A004013 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004014.P4333444850189736415

/-! ## A004014.P8382611309159032523

`record[(n+1)%(A053438(A004013(n+1))+n)]`
-/

namespace A004014.P8382611309159032523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A053438 (A004013 (n + 1)).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004014.P8382611309159032523

/-! ## A004014.P13461146701030692981

`lt[0, A212885(n)]`
-/

namespace A004014.P13461146701030692981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004014.P13461146701030692981

/-! ## A004014.P650374398584135803

`filter[A014601(n), A071374(#)]`
-/

namespace A004014.P650374398584135803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071374 (f1 j).toNat = 1) n)

end

end A004014.P650374398584135803

/-! ## A004014.P3819355176022834535

`eq[A014695(n), A071374(n)]`
-/

namespace A004014.P3819355176022834535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071374 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004014.P3819355176022834535

/-! ## A004014.P6132996127126142021

`eq[A071374(n), A084101(n)]`
-/

namespace A004014.P6132996127126142021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071374 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004014.P6132996127126142021

/-! ## A004014.P11007301825639457553

`eq[A071374(n), A087960(n)]`
-/

namespace A004014.P11007301825639457553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071374 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004014.P11007301825639457553

/-! ## A004014.P2337680373227205585

`eq[A071374(n), A131379(n)]`
-/

namespace A004014.P2337680373227205585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071374 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131379 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004014.P2337680373227205585

/-! ## A004014.P17151847765276421232

`eq[A071374(n), A132400(n)]`
-/

namespace A004014.P17151847765276421232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071374 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004014.P17151847765276421232

/-! ## A004014.P10808454800076564106

`eq[A071374(n), A134430(n)]`
-/

namespace A004014.P10808454800076564106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071374 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134430 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004014.P10808454800076564106

/-! ## A004014.P13674273012690928601

`eq[A071374(n), A141134(n)]`
-/

namespace A004014.P13674273012690928601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071374 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004014.P13674273012690928601

/-! ## A004014.P13530613579857199462

`filter[A047458(n+1), A071374(#)]`
-/

namespace A004014.P13530613579857199462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071374 (f1 j).toNat = 1) n)

end

end A004014.P13530613579857199462

/-! ## A004014.P9944799626015019771

`filter[A003815(2*n), A071374(#)]`
-/

namespace A004014.P9944799626015019771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071374 (f1 j).toNat = 1) n)

end

end A004014.P9944799626015019771

/-! ## A004014.P9877591530464167237

`eq[A064873(n), A078112(n+1)]`
-/

namespace A004014.P9877591530464167237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078112 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004014.P9877591530464167237

/-!
# A004015: Theta series of face-centered cubic (f.c.c.) lattice.

The programs for A004015, there is no canonical definition to state claims against.
-/

/-! ## A004015.P2964736483933124265

`A005875(2*n)`
-/

namespace A004015.P2964736483933124265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (2 * n)

end

end A004015.P2964736483933124265

/-! ## A004015.P1991564580594251069

`A010684(n)*A014455(n)`
-/

namespace A004015.P1991564580594251069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A014455 n

end

end A004015.P1991564580594251069

/-! ## A004015.P1107486430245792502

`A213384(2*n)`
-/

namespace A004015.P1107486430245792502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 (2 * n)

end

end A004015.P1107486430245792502

/-! ## A004015.P12763362911606506076

`abs(A213384(A005843(n)))`
-/

namespace A004015.P12763362911606506076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A213384 (A005843 n).toNat|

end

end A004015.P12763362911606506076

/-! ## A004015.P6680862125612931365

`A387658(2*n)-A004018(n)`
-/

namespace A004015.P6680862125612931365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387658 (2 * n) - A004018 n

end

end A004015.P6680862125612931365

/-! ## A004015.P1758393985708390796

`A387658(2*n)-A104794(2*n)`
-/

namespace A004015.P1758393985708390796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387658 (2 * n) - A104794 (2 * n)

end

end A004015.P1758393985708390796

/-! ## A004015.P9261738548550192824

`A005875(A005843(n))%A005879(n)`
-/

namespace A004015.P9261738548550192824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005875 (A005843 n).toNat) (A005879 n)

end

end A004015.P9261738548550192824

/-! ## A004015.P5006487436028365615

`or(A000007(n), A005875(A005843(n)))`
-/

namespace A004015.P5006487436028365615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A005875 (A005843 n).toNat)

end

end A004015.P5006487436028365615

/-! ## A004015.P11271536614219917814

`A005875(A005843(n))+A000007(n+1)`
-/

namespace A004015.P11271536614219917814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (A005843 n).toNat + A000007 (n + 1)

end

end A004015.P11271536614219917814

/-! ## A004015.P15632091154163905590

`sqrt(A138202(2*n))`
-/

namespace A004015.P15632091154163905590
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A138202 (2 * n) : ℝ)

end

end A004015.P15632091154163905590

/-! ## A004015.P15786926249304705511

`(2-A057077(2*n))*A246631(2*n)`
-/

namespace A004015.P15786926249304705511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A057077 (2 * n)) * A246631 (2 * n)

end

end A004015.P15786926249304705511

/-! ## A004015.P14036488367839845378

`(2-A087960(2*n))*A246631(2*n)`
-/

namespace A004015.P14036488367839845378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A087960 (2 * n)) * A246631 (2 * n)

end

end A004015.P14036488367839845378

/-! ## A004015.P5211196965142183615

`(A087960(2*n+1)+2)*A246631(2*n)`
-/

namespace A004015.P5211196965142183615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087960 (2 * n + 1) + 2) * A246631 (2 * n)

end

end A004015.P5211196965142183615

/-! ## A004015.P16145614543011729633

`A014455(4*n)`
-/

namespace A004015.P16145614543011729633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (4 * n)

end

end A004015.P16145614543011729633

/-! ## A004015.P14568901600606403111

`A132429(2*n+1)*A319078(2*n)`
-/

namespace A004015.P14568901600606403111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132429 (2 * n + 1) * A319078 (2 * n)

end

end A004015.P14568901600606403111

/-! ## A004015.P11925029639654810176

`A004013(8*n)`
-/

namespace A004015.P11925029639654810176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (8 * n)

end

end A004015.P11925029639654810176

/-! ## A004015.P6861371904308530485

`A005925(8*n)`
-/

namespace A004015.P6861371904308530485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005925 (8 * n)

end

end A004015.P6861371904308530485

/-! ## A004015.P623389901718739026

`A169783(8*n)`
-/

namespace A004015.P623389901718739026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169783 (8 * n)

end

end A004015.P623389901718739026

/-! ## A004015.P14971309823746637358

`A212885(8*n)`
-/

namespace A004015.P14971309823746637358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212885 (8 * n)

end

end A004015.P14971309823746637358

/-! ## A004015.P1053851232978279035

`A246631(8*n)`
-/

namespace A004015.P1053851232978279035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 (8 * n)

end

end A004015.P1053851232978279035

/-!
# A004016: Theta series of planar hexagonal lattice A_2.

The programs for A004016, there is no canonical definition to state claims against.
-/

/-! ## A004016.P13316380682012922863

`(-1)^n*A180318(n)`
-/

namespace A004016.P13316380682012922863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A180318 n

end

end A004016.P13316380682012922863

/-! ## A004016.P2923148046848042815

`A005928(3*n)`
-/

namespace A004016.P2923148046848042815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 (3 * n)

end

end A004016.P2923148046848042815

/-! ## A004016.P8022032575984641256

`abs(A180318(n))`
-/

namespace A004016.P8022032575984641256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A180318 n|

end

end A004016.P8022032575984641256

/-! ## A004016.P10088491509184585406

`A033716(4*n)`
-/

namespace A004016.P10088491509184585406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (4 * n)

end

end A004016.P10088491509184585406

/-! ## A004016.P17724363215024815326

`A217220(4*n)`
-/

namespace A004016.P17724363215024815326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (4 * n)

end

end A004016.P17724363215024815326

/-! ## A004016.P32367341868014730

`A010882(n)*A113062(n)`
-/

namespace A004016.P32367341868014730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 n * A113062 n

end

end A004016.P32367341868014730

/-! ## A004016.P15151720474951302389

`A069705(n)*A113062(n)`
-/

namespace A004016.P15151720474951302389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069705 n * A113062 n

end

end A004016.P15151720474951302389

/-! ## A004016.P10696381679418117687

`A078070(n)*A115978(n)`
-/

namespace A004016.P10696381679418117687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078070 n * A115978 n

end

end A004016.P10696381679418117687

/-! ## A004016.P8463324959794325264

`A113062(n)*A130196(n)`
-/

namespace A004016.P8463324959794325264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n * A130196 n

end

end A004016.P8463324959794325264

/-! ## A004016.P3613861434906180728

`A113062(n)*A131534(n)`
-/

namespace A004016.P3613861434906180728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n * A131534 n

end

end A004016.P3613861434906180728

/-! ## A004016.P134550902852230524

`A113062(n)*A132677(n)`
-/

namespace A004016.P134550902852230524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n * A132677 n

end

end A004016.P134550902852230524

/-! ## A004016.P11021651186278153095

`A057079(n)*A226535(n)`
-/

namespace A004016.P11021651186278153095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A226535 n

end

end A004016.P11021651186278153095

/-! ## A004016.P12689109114055063312

`A132954(n)*A226535(n)`
-/

namespace A004016.P12689109114055063312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 n * A226535 n

end

end A004016.P12689109114055063312

/-! ## A004016.P13258699237648302780

`gcd(A000038(n), A180318(n))`
-/

namespace A004016.P13258699237648302780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A180318 n)

end

end A004016.P13258699237648302780

/-! ## A004016.P14106403029549022293

`lcm(A005928(n), A033716(n))`
-/

namespace A004016.P14106403029549022293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005928 n) (A033716 n)

end

end A004016.P14106403029549022293

/-! ## A004016.P1789295158184938381

`lcm(A000034(n), A180318(n))`
-/

namespace A004016.P1789295158184938381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A180318 n)

end

end A004016.P1789295158184938381

/-! ## A004016.P13877150077888122372

`lcm(A097109(n), A113660(n))`
-/

namespace A004016.P13877150077888122372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097109 n) (A113660 n)

end

end A004016.P13877150077888122372

/-! ## A004016.P2598697876668501863

`lcm(A107760(n), A115978(n))`
-/

namespace A004016.P2598697876668501863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A107760 n) (A115978 n)

end

end A004016.P2598697876668501863

/-! ## A004016.P2937545694282400994

`lcm(A113062(n), A113973(n))`
-/

namespace A004016.P2937545694282400994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A113062 n) (A113973 n)

end

end A004016.P2937545694282400994

/-! ## A004016.P8428584969703638369

`lcm(A132973(n), A164272(n))`
-/

namespace A004016.P8428584969703638369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132973 n) (A164272 n)

end

end A004016.P8428584969703638369

/-!
# A004017: Theta series of E_8 lattice with respect to deep hole.

The programs for A004017, the canonical program `A004017.P4610875702186550705` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004017 has offset 1).

The definition of A004017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004017.P10961260269828137949

`2*A045825(n+1)`
-/

namespace A004017.P10961260269828137949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045825 (n + 1)

end

end A004017.P10961260269828137949

namespace A004017

/-- `2*A045825(n+1)` -/
def P10961260269828137949.Spec : Prop :=
  ∀ n, P10961260269828137949.a n = A004017 (n + 1)

theorem P10961260269828137949.correct : P10961260269828137949.Spec := by
  intro n
  simp only [A004017, Nat.add_sub_cancel, A004017.P10961260269828137949.a, A004017.P4610875702186550705.a, A007331, A007331.P7249092391155220355.f1, A007331.P7249092391155220355.a, A045825, A045825.P17882755795761985408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004017

/-! ## A004017.P4610875702186550705

`16*A007331(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004017

/-- `16*A007331(n+1)` -/
def P4610875702186550705.Spec : Prop :=
  ∀ n, P4610875702186550705.a n = A004017 (n + 1)

theorem P4610875702186550705.correct : P4610875702186550705.Spec := by
  intro n
  simp only [A004017, Nat.add_sub_cancel]

end A004017

/-! ## A004017.P13811960015015040808

`(A008427(n+1)-A035016(n+1))/2`
-/

namespace A004017.P13811960015015040808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008427 (n + 1) - A035016 (n + 1) : ℚ) / 2

end

end A004017.P13811960015015040808

namespace A004017

/-- `(A008427(n+1)-A035016(n+1))/2` -/
def P13811960015015040808.Spec : Prop :=
  ∀ n, P13811960015015040808.a n = (A004017 (n + 1) : ℚ)

end A004017

/-! ## A004017.P16296693764615952686

`A045825(A000027(n+1))+A045825(n+1)`
-/

namespace A004017.P16296693764615952686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045825 (A000027 (n + 1)).toNat + A045825 (n + 1)

end

end A004017.P16296693764615952686

namespace A004017

/-- `A045825(A000027(n+1))+A045825(n+1)` -/
def P16296693764615952686.Spec : Prop :=
  ∀ n, P16296693764615952686.a n = A004017 (n + 1)

end A004017

/-! ## A004017.P5144034968821743323

`Δ[16*∑[A007331(n)]]`
-/

namespace A004017.P5144034968821743323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004017.P5144034968821743323

namespace A004017

/-- `Δ[16*∑[A007331(n)]]` -/
def P5144034968821743323.Spec : Prop :=
  ∀ n, P5144034968821743323.a n = A004017 (n + 1)

end A004017

/-! ## A004017.P14332545975067356444

`2*A352049(2*(n+1))`
-/

namespace A004017.P14332545975067356444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A352049 (2 * (n + 1))

end

end A004017.P14332545975067356444

namespace A004017

/-- `2*A352049(2*(n+1))` -/
def P14332545975067356444.Spec : Prop :=
  ∀ n, P14332545975067356444.a n = A004017 (n + 1)

end A004017

/-! ## A004017.P17661947527541183969

`A078307(2*(n+1))+A001158(2*(n+1))`
-/

namespace A004017.P17661947527541183969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078307 (2 * (n + 1)) + A001158 (2 * (n + 1))

end

end A004017.P17661947527541183969

namespace A004017

/-- `A078307(2*(n+1))+A001158(2*(n+1))` -/
def P17661947527541183969.Spec : Prop :=
  ∀ n, P17661947527541183969.a n = A004017 (n + 1)

end A004017

/-! ## A004017.P12658303878586532008

`2*(A050466(2*(n+1))+A050462(2*(n+1)))`
-/

namespace A004017.P12658303878586532008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A050466 (2 * (n + 1)) + A050462 (2 * (n + 1)))

end

end A004017.P12658303878586532008

namespace A004017

/-- `2*(A050466(2*(n+1))+A050462(2*(n+1)))` -/
def P12658303878586532008.Spec : Prop :=
  ∀ n, P12658303878586532008.a n = A004017 (n + 1)

end A004017

/-! ## A004017.P14878000695976690654

`A204386(4*(n+1))/6`
-/

namespace A004017.P14878000695976690654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204386 (4 * (n + 1)) : ℚ) / 6

end

end A004017.P14878000695976690654

namespace A004017

/-- `A204386(4*(n+1))/6` -/
def P14878000695976690654.Spec : Prop :=
  ∀ n, P14878000695976690654.a n = (A004017 (n + 1) : ℚ)

end A004017

/-! ## A004017.P14408021751375988930

`abs(16*A002408(n+1))`
-/

namespace A004017.P14408021751375988930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |16 * A002408 (n + 1)|

end

end A004017.P14408021751375988930

namespace A004017

/-- `abs(16*A002408(n+1))` -/
def P14408021751375988930.Spec : Prop :=
  ∀ n, P14408021751375988930.a n = A004017 (n + 1)

end A004017

/-!
# A004018: Theta series of square lattice (or number of ways of writing n as a sum of 2 squares). Often denoted by r(n) or r_2(n).

The programs for A004018, there is no canonical definition to state claims against.
-/

/-! ## A004018.P17520826799434225784

`A004531(4*n)`
-/

namespace A004018.P17520826799434225784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 (4 * n)

end

end A004018.P17520826799434225784

/-! ## A004018.P4186754900733801329

`abs(A104794(n))`
-/

namespace A004018.P4186754900733801329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104794 n|

end

end A004018.P4186754900733801329

/-! ## A004018.P11063448730883238141

`A094683(A104794(n)²)`
-/

namespace A004018.P11063448730883238141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094683 (A104794 n ^ 2).toNat

end

end A004018.P11063448730883238141

/-! ## A004018.P2660082387121333524

`A262689(A104794(n)²)`
-/

namespace A004018.P2660082387121333524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A104794 n ^ 2).toNat

end

end A004018.P2660082387121333524

/-! ## A004018.P4893809665267831127

`A387658(n)-A005875(n)`
-/

namespace A004018.P4893809665267831127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387658 n - A005875 n

end

end A004018.P4893809665267831127

/-! ## A004018.P12233993391451585154

`A033999(n)*A104794(n)`
-/

namespace A004018.P12233993391451585154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A104794 n

end

end A004018.P12233993391451585154

/-! ## A004018.P2486808680257217122

`A057079(n)*A256014(n)`
-/

namespace A004018.P2486808680257217122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A256014 n

end

end A004018.P2486808680257217122

/-! ## A004018.P6020226256945768096

`A131713(n)*A256280(n)`
-/

namespace A004018.P6020226256945768096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n * A256280 n

end

end A004018.P6020226256945768096

/-! ## A004018.P4008214921307986759

`A130196(n)*A259761(n)`
-/

namespace A004018.P4008214921307986759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130196 n * A259761 n

end

end A004018.P4008214921307986759

/-! ## A004018.P2565177893667464019

`A132954(n)*A258279(n)`
-/

namespace A004018.P2565177893667464019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 n * A258279 n

end

end A004018.P2565177893667464019

/-! ## A004018.P8976491017958937340

`gcd(A000038(n), A104794(n))`
-/

namespace A004018.P8976491017958937340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A104794 n)

end

end A004018.P8976491017958937340

/-! ## A004018.P13749905588384881230

`lcm(A000034(n), A104794(n))`
-/

namespace A004018.P13749905588384881230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A104794 n)

end

end A004018.P13749905588384881230

/-! ## A004018.P11767153447487315716

`∑{d}[A104794(n), A000010(#)]`
-/

namespace A004018.P11767153447487315716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A004018.P11767153447487315716

/-! ## A004018.P12601507743877585128

`A130196(n)²*A258256(n)`
-/

namespace A004018.P12601507743877585128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130196 n ^ 2 * A258256 n

end

end A004018.P12601507743877585128

/-! ## A004018.P13004158446442402904

`A104794(n)*A309873(n+1)`
-/

namespace A004018.P13004158446442402904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n * A309873 (n + 1)

end

end A004018.P13004158446442402904

/-! ## A004018.P9643293839187476649

`2*A244540(n)-A033715(n)`
-/

namespace A004018.P9643293839187476649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244540 n - A033715 n

end

end A004018.P9643293839187476649

/-! ## A004018.P1002614990390327387

`(2-A057079(n)²)*A256280(n)`
-/

namespace A004018.P1002614990390327387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A057079 n ^ 2) * A256280 n

end

end A004018.P1002614990390327387

/-! ## A004018.P16078267867598029307

`A000152(n)*A104794(n)/A319307(n)`
-/

namespace A004018.P16078267867598029307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000152 n * A104794 n : ℚ) / (A319307 n : ℚ)

end

end A004018.P16078267867598029307

/-! ## A004018.P13666318995792469782

`A000156(n)*A104794(n)/A319309(n)`
-/

namespace A004018.P13666318995792469782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000156 n * A104794 n : ℚ) / (A319309 n : ℚ)

end

end A004018.P13666318995792469782

/-! ## A004018.P15496104580075676844

`A115607(n+1)/A327095(n+1)*A104794(n)`
-/

namespace A004018.P15496104580075676844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115607 (n + 1) : ℚ) / (A327095 (n + 1) : ℚ) * (A104794 n : ℚ)

end

end A004018.P15496104580075676844

/-!
# A004019: a(0) = 0; for n > 0, a(n) = (a(n-1) + 1)^2.

The programs for A004019, the canonical program `A004019.P2132685558657837876` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004019 has offset 0).

The definition of A004019 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+1)²` (program `A004019.P2132685558657837876`, by `A004019.P2132685558657837876.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004019.P2132685558657837876

`(a(n-1)+1)²` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004019

/-- `(a(n-1)+1)²` -/
def P2132685558657837876.Spec : Prop :=
  ∀ n, (P2132685558657837876.a n : ℤ) = A004019 n

theorem P2132685558657837876.correct : P2132685558657837876.Spec := by
  intro n
  simp only [A004019]

end A004019

/-! ## A004019.P16606940723321321630

`A003095(n)²`
-/

namespace A004019.P16606940723321321630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003095 n ^ 2

end

end A004019.P16606940723321321630

namespace A004019

/-- `A003095(n)²` -/
def P16606940723321321630.Spec : Prop :=
  ∀ n, P16606940723321321630.a n = A004019 n

end A004019

/-! ## A004019.P1575041393289292008

`A003095(n+1)-1`
-/

namespace A004019.P1575041393289292008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003095 (n + 1) - 1

end

end A004019.P1575041393289292008

namespace A004019

/-- `A003095(n+1)-1` -/
def P1575041393289292008.Spec : Prop :=
  ∀ n, P1575041393289292008.a n = A004019 n

end A004019

/-! ## A004019.P1798736239234466348

`(1+a(n-1))²` with `a(0)=0`
-/

namespace A004019.P1798736239234466348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (1 + a (n - 1)) ^ 2

end

end A004019.P1798736239234466348

namespace A004019

/-- `(1+a(n-1))²` -/
def P1798736239234466348.Spec : Prop :=
  ∀ n, (P1798736239234466348.a n : ℤ) = A004019 n

theorem P1798736239234466348.correct : P1798736239234466348.Spec := by
  intro n
  simp only [A004019, Nat.add_sub_cancel, A004019.P1798736239234466348.a, A004019.P2132685558657837876.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A004019

/-! ## A004019.P12985172073310604937

`xor(-1, a(n-1))²` with `a(0)=0`
-/

namespace A004019.P12985172073310604937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (-1) (a (n - 1)) ^ 2

end

end A004019.P12985172073310604937

namespace A004019

/-- `xor(-1, a(n-1))²` -/
def P12985172073310604937.Spec : Prop :=
  ∀ n, P12985172073310604937.a n = A004019 n

end A004019

/-!
# A004020: Theta series of square lattice with respect to edge.

The programs for A004020, the canonical program `A004020.P12808183263529079992` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004020 has offset 0).

The definition of A004020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004020.P12808183263529079992

`2*A008441(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A004020

/-- `2*A008441(n)` -/
def P12808183263529079992.Spec : Prop :=
  ∀ n, P12808183263529079992.a n = A004020 n

theorem P12808183263529079992.correct : P12808183263529079992.Spec := by
  intro n
  simp only [A004020]

end A004020

/-! ## A004020.P834717393472799194

`A004531(4*n+1)`
-/

namespace A004020.P834717393472799194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 (4 * n + 1)

end

end A004020.P834717393472799194

namespace A004020

/-- `A004531(4*n+1)` -/
def P834717393472799194.Spec : Prop :=
  ∀ n, P834717393472799194.a n = A004020 n

end A004020

/-! ## A004020.P1726012255227711435

`A005883(n)/2`
-/

namespace A004020.P1726012255227711435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005883 n : ℚ) / 2

end

end A004020.P1726012255227711435

namespace A004020

/-- `A005883(n)/2` -/
def P1726012255227711435.Spec : Prop :=
  ∀ n, P1726012255227711435.a n = (A004020 n : ℚ)

theorem P1726012255227711435.correct : P1726012255227711435.Spec := by
  intro n
  simp only [A004020, Nat.add_sub_cancel, A004020.P1726012255227711435.a, A004020.P12808183263529079992.a, A005883, A005883.P3734216093274140482.a, A008441, A008441.P257068461411472066.a, A002654, A002654.P11574922253888480122.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7159875081872045936.f1, A001842.P7159875081872045936.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A121262, A121262.P5808261376347758400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004020

/-! ## A004020.P9845811075153042295

`abs(2*A134343(n))`
-/

namespace A004020.P9845811075153042295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A134343 n|

end

end A004020.P9845811075153042295

namespace A004020

/-- `abs(2*A134343(n))` -/
def P9845811075153042295.Spec : Prop :=
  ∀ n, P9845811075153042295.a n = A004020 n

end A004020

/-! ## A004020.P13262247918087295395

`A001281(A005883(n))`
-/

namespace A004020.P13262247918087295395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005883 n).toNat

end

end A004020.P13262247918087295395

namespace A004020

/-- `A001281(A005883(n))` -/
def P13262247918087295395.Spec : Prop :=
  ∀ n, P13262247918087295395.a n = A004020 n

end A004020

/-! ## A004020.P4404572111436365025

`A005843(A008441(n))`
-/

namespace A004020.P4404572111436365025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008441 n).toNat

end

end A004020.P4404572111436365025

namespace A004020

/-- `A005843(A008441(n))` -/
def P4404572111436365025.Spec : Prop :=
  ∀ n, P4404572111436365025.a n = A004020 n

end A004020

/-! ## A004020.P10564751526801671863

`A027709(A008441(n)²)/2`
-/

namespace A004020.P10564751526801671863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027709 (A008441 n ^ 2).toNat : ℚ) / 2

end

end A004020.P10564751526801671863

namespace A004020

/-- `A027709(A008441(n)²)/2` -/
def P10564751526801671863.Spec : Prop :=
  ∀ n, P10564751526801671863.a n = (A004020 n : ℚ)

end A004020

/-! ## A004020.P798849993011248830

`A027709(A134343(n)²)/2`
-/

namespace A004020.P798849993011248830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027709 (A134343 n ^ 2).toNat : ℚ) / 2

end

end A004020.P798849993011248830

namespace A004020

/-- `A027709(A134343(n)²)/2` -/
def P798849993011248830.Spec : Prop :=
  ∀ n, P798849993011248830.a n = (A004020 n : ℚ)

end A004020

/-! ## A004020.P7725065677064724274

`A005883(n)-A008441(n)-A008441(n)`
-/

namespace A004020.P7725065677064724274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005883 n - A008441 n - A008441 n

end

end A004020.P7725065677064724274

namespace A004020

/-- `A005883(n)-A008441(n)-A008441(n)` -/
def P7725065677064724274.Spec : Prop :=
  ∀ n, P7725065677064724274.a n = A004020 n

theorem P7725065677064724274.correct : P7725065677064724274.Spec := by
  intro n
  simp only [A004020, Nat.add_sub_cancel, A004020.P7725065677064724274.a, A004020.P12808183263529079992.a, A005883, A005883.P3734216093274140482.a, A008441, A008441.P257068461411472066.a, A002654, A002654.P11574922253888480122.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7159875081872045936.f1, A001842.P7159875081872045936.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A121262, A121262.P5808261376347758400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004020

/-! ## A004020.P2644225721183745398

`2*A125079(2*n)`
-/

namespace A004020.P2644225721183745398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125079 (2 * n)

end

end A004020.P2644225721183745398

namespace A004020

/-- `2*A125079(2*n)` -/
def P2644225721183745398.Spec : Prop :=
  ∀ n, P2644225721183745398.a n = A004020 n

end A004020

/-! ## A004020.P10159747642474950889

`2*A116604(2*n)`
-/

namespace A004020.P10159747642474950889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116604 (2 * n)

end

end A004020.P10159747642474950889

namespace A004020

/-- `2*A116604(2*n)` -/
def P10159747642474950889.Spec : Prop :=
  ∀ n, P10159747642474950889.a n = A004020 n

end A004020

/-! ## A004020.P7535719954374230272

`2*A129447(2*n)`
-/

namespace A004020.P7535719954374230272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129447 (2 * n)

end

end A004020.P7535719954374230272

namespace A004020

/-- `2*A129447(2*n)` -/
def P7535719954374230272.Spec : Prop :=
  ∀ n, P7535719954374230272.a n = A004020 n

end A004020

/-! ## A004020.P5037809378065287493

`2*A138741(2*n)`
-/

namespace A004020.P5037809378065287493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138741 (2 * n)

end

end A004020.P5037809378065287493

namespace A004020

/-- `2*A138741(2*n)` -/
def P5037809378065287493.Spec : Prop :=
  ∀ n, P5037809378065287493.a n = A004020 n

end A004020

/-! ## A004020.P5838211310269539528

`A105673(4*n+1)`
-/

namespace A004020.P5838211310269539528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105673 (4 * n + 1)

end

end A004020.P5838211310269539528

namespace A004020

/-- `A105673(4*n+1)` -/
def P5838211310269539528.Spec : Prop :=
  ∀ n, P5838211310269539528.a n = A004020 n

end A004020

/-! ## A004020.P8798385076063371972

`A138951(4*n+1)`
-/

namespace A004020.P8798385076063371972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138951 (4 * n + 1)

end

end A004020.P8798385076063371972

namespace A004020

/-- `A138951(4*n+1)` -/
def P8798385076063371972.Spec : Prop :=
  ∀ n, P8798385076063371972.a n = A004020 n

end A004020

/-! ## A004020.P13661218744974316564

`A122857(3*n+n+1)`
-/

namespace A004020.P13661218744974316564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122857 (3 * n + (n + 1))

end

end A004020.P13661218744974316564

namespace A004020

/-- `A122857(3*n+n+1)` -/
def P13661218744974316564.Spec : Prop :=
  ∀ n, P13661218744974316564.a n = A004020 n

end A004020

/-! ## A004020.P18345183318582962759

`2*A338690(A016813(n))`
-/

namespace A004020.P18345183318582962759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338690 (A016813 n).toNat

end

end A004020.P18345183318582962759

namespace A004020

/-- `2*A338690(A016813(n))` -/
def P18345183318582962759.Spec : Prop :=
  ∀ n, P18345183318582962759.a n = A004020 n

end A004020

/-! ## A004020.P12781660325389143532

`2*A002654(A008574(n)+1)`
-/

namespace A004020.P12781660325389143532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002654 (A008574 n + 1).toNat

end

end A004020.P12781660325389143532

namespace A004020

/-- `2*A002654(A008574(n)+1)` -/
def P12781660325389143532.Spec : Prop :=
  ∀ n, P12781660325389143532.a n = A004020 n

end A004020

/-! ## A004020.P9862220811367126966

`2*A113446(A008586(n)+1)`
-/

namespace A004020.P9862220811367126966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113446 (A008586 n + 1).toNat

end

end A004020.P9862220811367126966

namespace A004020

/-- `2*A113446(A008586(n)+1)` -/
def P9862220811367126966.Spec : Prop :=
  ∀ n, P9862220811367126966.a n = A004020 n

end A004020

/-! ## A004020.P7969138876048647716

`A004018(A008574(n)+1)/2`
-/

namespace A004020.P7969138876048647716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 (A008574 n + 1).toNat : ℚ) / 2

end

end A004020.P7969138876048647716

namespace A004020

/-- `A004018(A008574(n)+1)/2` -/
def P7969138876048647716.Spec : Prop :=
  ∀ n, P7969138876048647716.a n = (A004020 n : ℚ)

end A004020

/-!
# A004023: Indices of prime repunits: numbers k such that 11...111 (with k 1's) = (10^k - 1)/9 is prime.

The programs for A004023, there is no canonical definition to state claims against.
-/

/-! ## A004023.P5471318592787596768

`p?[A138940(n+1)]`
-/

namespace A004023.P5471318592787596768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004023.P5471318592787596768

/-! ## A004023.P14412540625910533548

`p?[A007498(n+1)+char[2]]`
-/

namespace A004023.P14412540625910533548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007498 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004023.P14412540625910533548

/-! ## A004023.P14678988702606796796

`p?[A007498(comp[A001045(n)])]`
-/

namespace A004023.P14678988702606796796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007498 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004023.P14678988702606796796

/-! ## A004023.P2630680927364375790

`p?[A007498(comp[A152773(n)])]`
-/

namespace A004023.P2630680927364375790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152773 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007498 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004023.P2630680927364375790

/-!
# A004024: Theta series of b.c.c. lattice with respect to deep hole.

The programs for A004024, there is no canonical definition to state claims against.
-/

/-! ## A004024.P13132245223820482033

`4*A045831(n)`
-/

namespace A004024.P13132245223820482033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A045831 n

end

end A004024.P13132245223820482033

/-! ## A004024.P6208714175219171581

`A045834(Δ[n²])`
-/

namespace A004024.P6208714175219171581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045834 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A004024.P6208714175219171581

/-! ## A004024.P17583296206457228712

`A246811(4*n+2)`
-/

namespace A004024.P17583296206457228712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246811 (4 * n + 2)

end

end A004024.P17583296206457228712

/-! ## A004024.P11078156115366718465

`A005876(Δ[n²])/2`
-/

namespace A004024.P11078156115366718465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005876 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A004024.P11078156115366718465

/-! ## A004024.P163186747048795888

`abs(A246954(2*n+1))`
-/

namespace A004024.P163186747048795888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246954 (2 * n + 1)|

end

end A004024.P163186747048795888

/-! ## A004024.P5452422532232373626

`lcm(2, A045834(2*n+1))`
-/

namespace A004024.P5452422532232373626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A045834 (2 * n + 1))

end

end A004024.P5452422532232373626

/-! ## A004024.P6616073544309320629

`A008574(A045831(n))`
-/

namespace A004024.P6616073544309320629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A045831 n).toNat

end

end A004024.P6616073544309320629

/-! ## A004024.P2146471619564773145

`A045836(A004770(n+1))`
-/

namespace A004024.P2146471619564773145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045836 (A004770 (n + 1)).toNat

end

end A004024.P2146471619564773145

/-! ## A004024.P10608559337208718161

`A001281(A005876(2*n+1))`
-/

namespace A004024.P10608559337208718161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005876 (2 * n + 1)).toNat

end

end A004024.P10608559337208718161

/-! ## A004024.P17528422547898235889

`lcm(A246954(2*n+1), A247004(n))`
-/

namespace A004024.P17528422547898235889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A246954 (2 * n + 1)) (A247004 n)

end

end A004024.P17528422547898235889

/-! ## A004024.P1608709136363831451

`A005876(2*n+1)-A045834(2*n+1)`
-/

namespace A004024.P1608709136363831451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005876 (2 * n + 1) - A045834 (2 * n + 1)

end

end A004024.P1608709136363831451

/-! ## A004024.P5785177130501583660

`A014601(A006374(A042963(A014601(2*n+1))))`
-/

namespace A004024.P5785177130501583660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A006374 (A042963 (A014601 (2 * n + 1)).toNat).toNat).toNat

end

end A004024.P5785177130501583660

/-!
# A004025: Theta series of b.c.c. lattice with respect to long edge.

The programs for A004025, there is no canonical definition to state claims against.
-/

/-! ## A004025.P2635868315957310964

`2*A045836(n+1)`
-/

namespace A004025.P2635868315957310964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045836 (n + 1)

end

end A004025.P2635868315957310964

/-! ## A004025.P3197749603968065222

`A005843(A045836(n+1))`
-/

namespace A004025.P3197749603968065222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A045836 (n + 1)).toNat

end

end A004025.P3197749603968065222

/-! ## A004025.P13539985472436868043

`A133872(n)*A246631(n+1)`
-/

namespace A004025.P13539985472436868043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n * A246631 (n + 1)

end

end A004025.P13539985472436868043

/-! ## A004025.P11505552848506041730

`lcm(A128130(n), A246631(n+1))`
-/

namespace A004025.P11505552848506041730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128130 n) (A246631 (n + 1))

end

end A004025.P11505552848506041730

/-! ## A004025.P3758703147030355768

`lcm(A130731(n), A319078(n+1))`
-/

namespace A004025.P3758703147030355768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130731 n) (A319078 (n + 1))

end

end A004025.P3758703147030355768

/-! ## A004025.P14324189135128989899

`A219977(n)²*A246631(n+1)`
-/

namespace A004025.P14324189135128989899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n ^ 2 * A246631 (n + 1)

end

end A004025.P14324189135128989899

/-! ## A004025.P15854543000838266719

`∑[A056594(n)]*A246631(n+1)`
-/

namespace A004025.P15854543000838266719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A246631 (n + 1)

end

end A004025.P15854543000838266719

/-! ## A004025.P512367689680530010

`char[A042948(n)]*A246631(n+1)`
-/

namespace A004025.P512367689680530010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A246631 (n + 1)

end

end A004025.P512367689680530010

/-! ## A004025.P3385947825948920840

`A004013(n+1)-A212885(n+1)`
-/

namespace A004025.P3385947825948920840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (n + 1) - A212885 (n + 1)

end

end A004025.P3385947825948920840

/-! ## A004025.P4441599471023919204

`A246631(n+1)-A004013(n+1)`
-/

namespace A004025.P4441599471023919204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 (n + 1) - A004013 (n + 1)

end

end A004025.P4441599471023919204

/-! ## A004025.P13851800335667432789

`A169783(n+1)-A329290(n+1)`
-/

namespace A004025.P13851800335667432789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169783 (n + 1) - A329290 (n + 1)

end

end A004025.P13851800335667432789

/-! ## A004025.P11301114658961716729

`A033717(2*(n+1))-A004013(n+1)`
-/

namespace A004025.P11301114658961716729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033717 (2 * (n + 1)) - A004013 (n + 1)

end

end A004025.P11301114658961716729

/-! ## A004025.P17730868249296092415

`(A005875(n+1)-A246631(n+1))/2`
-/

namespace A004025.P17730868249296092415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 (n + 1) - A246631 (n + 1) : ℚ) / 2

end

end A004025.P17730868249296092415

/-! ## A004025.P5409389477849855767

`(A246631(n+1)-A212885(n+1))/2`
-/

namespace A004025.P5409389477849855767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246631 (n + 1) - A212885 (n + 1) : ℚ) / 2

end

end A004025.P5409389477849855767

/-! ## A004025.P12647789645628052809

`(A005875(n+1)-A004013(n+1))/3`
-/

namespace A004025.P12647789645628052809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 (n + 1) - A004013 (n + 1) : ℚ) / 3

end

end A004025.P12647789645628052809

/-! ## A004025.P16361710718654639009

`and(1, A081591(n))/3*A005875(n+1)`
-/

namespace A004025.P16361710718654639009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 1 (A081591 n) : ℚ) / 3 * (A005875 (n + 1) : ℚ)

end

end A004025.P16361710718654639009

/-! ## A004025.P9956344469403681638

`A033717(A005843(n+1))*A133872(n)`
-/

namespace A004025.P9956344469403681638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033717 (A005843 (n + 1)).toNat * A133872 n

end

end A004025.P9956344469403681638

/-! ## A004025.P2154954518026113839

`A000035(A008619(n))*A246631(n+1)`
-/

namespace A004025.P2154954518026113839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008619 n).toNat * A246631 (n + 1)

end

end A004025.P2154954518026113839

/-! ## A004025.P17321191998623734630

`∑[n+1]%2*A153182(n+1)`
-/

namespace A004025.P17321191998623734630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ) * A153182 (n + 1)

end

end A004025.P17321191998623734630

/-! ## A004025.P15709569881351205932

`and(-A057077(n), A153182(n+1))`
-/

namespace A004025.P15709569881351205932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A057077 n) (A153182 (n + 1))

end

end A004025.P15709569881351205932

/-!
# A004027: Number of arithmetic n-dimensional crystal classes.

The programs for A004027, there is no canonical definition to state claims against.
-/

/-! ## A004027.P17584309894712236919

`A104778(A149662(n+1))`
-/

namespace A004027.P17584309894712236919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104778 (A149662 (n + 1)).toNat

end

end A004027.P17584309894712236919

/-!
# A004028: Number of geometric n-dimensional crystal classes.

The programs for A004028, there is no canonical definition to state claims against.
-/

/-! ## A004028.P1769490618275311686

`A293060(∑[n])`
-/

namespace A004028.P1769490618275311686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293060 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004028.P1769490618275311686

/-! ## A004028.P2497104684514342533

`record[A293060(A360259(n))]`
-/

namespace A004028.P2497104684514342533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293060 (A360259 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004028.P2497104684514342533

/-!
# A004029: Number of n-dimensional space groups.

The programs for A004029, there is no canonical definition to state claims against.
-/

/-! ## A004029.P13926834046971500036

`A293060(∑[n]+n)`
-/

namespace A004029.P13926834046971500036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293060 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A004029.P13926834046971500036

/-!
# A004031: Number of n-dimensional crystal systems.

The programs for A004031, there is no canonical definition to state claims against.
-/

/-! ## A004031.P8244683787263871800

`∑{d}[A326763(n), A130700(#)]`
-/

namespace A004031.P8244683787263871800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A130700 d

end

end A004031.P8244683787263871800

/-! ## A004031.P3457989720019357797

`∑{d}[n+1, A080871(#-1)*A110078((n+1)/#-1)]`
-/

namespace A004031.P3457989720019357797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080871 (d - 1) * A110078 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A004031.P3457989720019357797

/-! ## A004031.P1651381548770699405

`A080871(n)+A032741(A061129(n))`
-/

namespace A004031.P1651381548770699405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080871 n + A032741 (A061129 n).toNat

end

end A004031.P1651381548770699405

/-!
# A004034: Theta series of Leech lattice with respect to deep hole of type A_1.

The programs for A004034, there is no canonical definition to state claims against.
-/

/-! ## A004034.P6286714074829677152

`16*A045824(n)`
-/

namespace A004034.P6286714074829677152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A045824 n

end

end A004034.P6286714074829677152

/-!
# A004036: The coding-theoretic function A(n,4,6).

The programs for A004036, there is no canonical definition to state claims against.
-/

/-! ## A004036.P7906818849668382402

`ogf((1-x+2x^2+4x^3+6x^4+6x^5)/(1-2x))`
-/

namespace A004036.P7906818849668382402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2, 4, 6, 6] [1, -2] n

end

end A004036.P7906818849668382402

/-! ## A004036.P2041861316597629376

`char[7]+ceil(C(n+6, 6)/7)`
-/

namespace A004036.P2041861316597629376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌈(Nat.choose (n + 6) 6 : ℚ) / 7⌉

end

end A004036.P2041861316597629376

/-! ## A004036.P7401917825009964318

`ceil((C(n+6, 6)-n+1)/7)`
-/

namespace A004036.P7401917825009964318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose (n + 6) 6 : ℤ) - (n : ℤ) + 1 : ℚ) / 7⌉

end

end A004036.P7401917825009964318

/-!
# A004040: Inversion of A000257.

The programs for A004040, there is no canonical definition to state claims against.
-/

/-! ## A004040.P12804740077057974130

`A022558(n+1)`
-/

namespace A004040.P12804740077057974130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022558 (n + 1)

end

end A004040.P12804740077057974130

/-! ## A004040.P331020284038978084

`record[A022558(A008611(n))]`
-/

namespace A004040.P331020284038978084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022558 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004040.P331020284038978084

/-! ## A004040.P11698587256393462457

`record[A022558(A008616(n))]`
-/

namespace A004040.P11698587256393462457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022558 (A008616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004040.P11698587256393462457

/-! ## A004040.P92017443160189826

`record[A022558(A008624(n))]`
-/

namespace A004040.P92017443160189826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022558 (A008624 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004040.P92017443160189826

/-! ## A004040.P13648376509144711169

`record[A022558(A134478(n))]`
-/

namespace A004040.P13648376509144711169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022558 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004040.P13648376509144711169

/-! ## A004040.P7064470589593658558

`ratio[A022558(n)]*A022558(n)`
-/

namespace A004040.P7064470589593658558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022558 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A022558 n : ℚ)

end

end A004040.P7064470589593658558

/-!
# A004041: Scaled sums of odd reciprocals: a(n) = (2*n + 1)!!*(Sum_{k=0..n} 1/(2*k + 1)).

The programs for A004041, the canonical program `A004041.P1786320005625674015` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004041 has offset 0).

The definition of A004041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004041.P1786320005625674015

`4*n*a(n-1)-(2*n-1)²*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004041

/-- `4*n*a(n-1)-(2*n-1)²*a(n-2)` -/
def P1786320005625674015.Spec : Prop :=
  ∀ n, P1786320005625674015.a n = A004041 n

theorem P1786320005625674015.correct : P1786320005625674015.Spec := by
  intro n
  simp only [A004041]

end A004041

/-! ## A004041.P1417893387007633481

`∑[1/(2*n+1)]*∏[2*n+1]`
-/

namespace A004041.P1417893387007633481
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (2 * n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A004041.P1417893387007633481

namespace A004041

/-- `∑[1/(2*n+1)]*∏[2*n+1]` -/
def P1417893387007633481.Spec : Prop :=
  ∀ n, P1417893387007633481.a n = (A004041 n : ℚ)

end A004041

/-! ## A004041.P1514661725406897102

`A028338(∑[n+1]+1)`
-/

namespace A004041.P1514661725406897102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A004041.P1514661725406897102

namespace A004041

/-- `A028338(∑[n+1]+1)` -/
def P1514661725406897102.Spec : Prop :=
  ∀ n, P1514661725406897102.a n = A004041 n

end A004041

/-! ## A004041.P6282656106668281061

`A109692(∑[n+2]-1)`
-/

namespace A004041.P6282656106668281061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109692 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A004041.P6282656106668281061

namespace A004041

/-- `A109692(∑[n+2]-1)` -/
def P6282656106668281061.Spec : Prop :=
  ∀ n, P6282656106668281061.a n = A004041 n

end A004041

/-! ## A004041.P16215777418956945260

`A334670(n)+∏[2*n+1]`
-/

namespace A004041.P16215777418956945260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334670 n + ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004041.P16215777418956945260

namespace A004041

/-- `A334670(n)+∏[2*n+1]` -/
def P16215777418956945260.Spec : Prop :=
  ∀ n, P16215777418956945260.a n = A004041 n

end A004041

/-! ## A004041.P10974288386103947324

`abs(A039757(A134869(n+1)))`
-/

namespace A004041.P10974288386103947324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039757 (A134869 (n + 1)).toNat|

end

end A004041.P10974288386103947324

namespace A004041

/-- `abs(A039757(A134869(n+1)))` -/
def P10974288386103947324.Spec : Prop :=
  ∀ n, P10974288386103947324.a n = A004041 n

end A004041

/-! ## A004041.P8006705001610872646

`abs(A039757(A000096(n)+2))`
-/

namespace A004041.P8006705001610872646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039757 (A000096 n + 2).toNat|

end

end A004041.P8006705001610872646

namespace A004041

/-- `abs(A039757(A000096(n)+2))` -/
def P8006705001610872646.Spec : Prop :=
  ∀ n, P8006705001610872646.a n = A004041 n

end A004041

/-! ## A004041.P16772403987492809792

`A161198(A000096(n)+2)/2`
-/

namespace A004041.P16772403987492809792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161198 (A000096 n + 2).toNat : ℚ) / 2

end

end A004041.P16772403987492809792

namespace A004041

/-- `A161198(A000096(n)+2)/2` -/
def P16772403987492809792.Spec : Prop :=
  ∀ n, P16772403987492809792.a n = (A004041 n : ℚ)

end A004041

/-! ## A004041.P12216392672428057065

`record[A028338(gcd(n, A303913(n+1)))]`
-/

namespace A004041.P12216392672428057065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (Int.gcd (n : ℤ) (A303913 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004041.P12216392672428057065

namespace A004041

/-- `record[A028338(gcd(n, A303913(n+1)))]` -/
def P12216392672428057065.Spec : Prop :=
  ∀ n, P12216392672428057065.a n = A004041 n

end A004041

/-! ## A004041.P9719800769424650962

`A114160(n+1)-A001147(n+1)`
-/

namespace A004041.P9719800769424650962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114160 (n + 1) - A001147 (n + 1)

end

end A004041.P9719800769424650962

namespace A004041

/-- `A114160(n+1)-A001147(n+1)` -/
def P9719800769424650962.Spec : Prop :=
  ∀ n, P9719800769424650962.a n = A004041 n

end A004041

/-!
# A004042: 

The programs for A004042, there is no canonical definition to state claims against.
-/

/-! ## A004042.P12867329777388959723

`A036275(A006883(n+1))`
-/

namespace A004042.P12867329777388959723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036275 (A006883 (n + 1)).toNat

end

end A004042.P12867329777388959723

/-! ## A004042.P16404368742796493212

`record[A036275(∑[A001227(n+1)])]`
-/

namespace A004042.P16404368742796493212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036275 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004042.P16404368742796493212

/-!
# A004043: The coding-theoretic function A(n,8,8).

The programs for A004043, there is no canonical definition to state claims against.
-/

/-! ## A004043.P9039166320290264468

`A209039(A355225(n+1))`
-/

namespace A004043.P9039166320290264468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209039 (A355225 (n + 1)).toNat

end

end A004043.P9039166320290264468

/-! ## A004043.P952439456414162951

`A080550(ceil(sqrt(A099962(n))))`
-/

namespace A004043.P952439456414162951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080550 ⌈Real.sqrt (A099962 n : ℝ)⌉.toNat

end

end A004043.P952439456414162951

/-! ## A004043.P13063868020255821830

`A080550(A103632(∑{digits}[n, #]))`
-/

namespace A004043.P13063868020255821830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080550 (A103632 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum).toNat

end

end A004043.P13063868020255821830

/-! ## A004043.P7686947997715803560

`A030069(n+8)+A005873(n)`
-/

namespace A004043.P7686947997715803560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030069 (n + 8) + A005873 n

end

end A004043.P7686947997715803560

/-! ## A004043.P8341502847165408930

`A236378(n)+A030069(n+8)`
-/

namespace A004043.P8341502847165408930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 n + A030069 (n + 8)

end

end A004043.P8341502847165408930

/-!
# A004046: Theta series of extremal 3-modular even 24-dimensional lattice with minimal norm 6 and det = 3^12.

The programs for A004046, there is no canonical definition to state claims against.
-/

/-! ## A004046.P577082801117762251

`A095915(A259276(n))*A107657(n)`
-/

namespace A004046.P577082801117762251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095915 (A259276 n).toNat * A107657 n

end

end A004046.P577082801117762251

/-! ## A004046.P15946349771322939499

`A107657(n)*A107670(A329334(n))`
-/

namespace A004046.P15946349771322939499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107657 n * A107670 (A329334 n).toNat

end

end A004046.P15946349771322939499

/-!
# A004048: Theta series of 14-dimensional extremal 3-modular lattice with det 3^7, minimal norm 4, group 2 X G_2(3).

The programs for A004048, there is no canonical definition to state claims against.
-/

/-! ## A004048.P2921850913662085364

`A018898(n)`
-/

namespace A004048.P2921850913662085364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018898 n

end

end A004048.P2921850913662085364

/-!
# A004050: Numbers of the form 2^j + 3^k, for j and k >= 0.

The programs for A004050, there is no canonical definition to state claims against.
-/

/-! ## A004050.P17488938808023737362

`eq[1, A000010(a(A141747(n)))]` with `a(0)=3`
-/

namespace A004050.P17488938808023737362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A141747 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004050.P17488938808023737362

/-! ## A004050.P9591493843116405419

`eq[1, A007318(a(A141747(n)))]` with `a(0)=4`
-/

namespace A004050.P9591493843116405419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A007318 (f2 (A141747 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004050.P9591493843116405419

/-! ## A004050.P13945275028846257169

`eq[1, A000041(a(A141747(n)))]` with `a(0)=2, a(1)=0`
-/

namespace A004050.P13945275028846257169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  A000041 (f2 (A141747 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004050.P13945275028846257169

/-! ## A004050.P2488169371734365436

`eq[1, A000045(a(A141747(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A004050.P2488169371734365436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A000045 (f2 (A141747 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004050.P2488169371734365436

/-! ## A004050.P5673077867535803358

`eq[1, A005044(a(A141747(n)))+1]` with `a(0)=3`
-/

namespace A004050.P5673077867535803358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A005044 (f2 (A141747 n).toNat).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004050.P5673077867535803358

/-! ## A004050.P2691588268725069545

`eq[A141747(n+1)!, A141747(n+1)]+1`
-/

namespace A004050.P2691588268725069545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A141747 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004050.P2691588268725069545

/-! ## A004050.P15458580147189344713

`∪[A141748(n+1), A346676(n+1)]`
-/

namespace A004050.P15458580147189344713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004050.P15458580147189344713

/-!
# A004051: Primes of the form 2^a + 3^b.

The programs for A004051, there is no canonical definition to state claims against.
-/

/-! ## A004051.P5554207954232194361

`p?[A004050(n+1)]`
-/

namespace A004051.P5554207954232194361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004051.P5554207954232194361

/-! ## A004051.P13320178184988387296

`p?[record[A004050(A133310(n))]]`
-/

namespace A004051.P13320178184988387296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004050 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004051.P13320178184988387296

/-! ## A004051.P10264672864461076028

`p?[record[A004050(A286544(n))]]`
-/

namespace A004051.P10264672864461076028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004050 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004051.P10264672864461076028

/-! ## A004051.P2764020078443991646

`p?[record[A004050(A328576(n))]]`
-/

namespace A004051.P2764020078443991646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004050 (A328576 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004051.P2764020078443991646

/-! ## A004051.P13726130928335940789

`p?[record[A004050(A329048(n))]]`
-/

namespace A004051.P13726130928335940789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004050 (A329048 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004051.P13726130928335940789

/-! ## A004051.P2832880900718959558

`filter[A004050(n+1), A010051(#)]`
-/

namespace A004051.P2832880900718959558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A004051.P2832880900718959558

/-! ## A004051.P4019442281700309405

`filter[A004050(n+1), A380467(#)]`
-/

namespace A004051.P4019442281700309405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A004051.P4019442281700309405

/-! ## A004051.P7964603262435165267

`record[A006530(A004050(Δ[n²]-n))]`
-/

namespace A004051.P7964603262435165267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004050 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004051.P7964603262435165267

/-! ## A004051.P1183459881016779089

`∩[A000040(n+1), A004050(n+1)]`
-/

namespace A004051.P1183459881016779089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004051.P1183459881016779089

/-! ## A004051.P12414378092290986054

`∩[A004050(n+1), A008578(n+1)]`
-/

namespace A004051.P12414378092290986054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004051.P12414378092290986054

/-!
# A004053: For m=2,3,..., write m in bases 2,3,..,m.

The programs for A004053, there is no canonical definition to state claims against.
-/

/-! ## A004053.P2232602058137639403

`A063432(A080036(n+1))`
-/

namespace A004053.P2232602058137639403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063432 (A080036 (n + 1)).toNat

end

end A004053.P2232602058137639403

/-! ## A004053.P12008948538387342556

`A004209(∑[char[∑[n]]]²-n+1)`
-/

namespace A004053.P12008948538387342556
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004209 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat

end

end A004053.P12008948538387342556

/-! ## A004053.P13212005648564075083

`A082492(A099375(n)+1+n)`
-/

namespace A004053.P13212005648564075083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (A099375 n + 1 + (n : ℤ)).toNat

end

end A004053.P13212005648564075083

/-! ## A004053.P5142673313295361083

`A082492(A038722(comp[∑[n]]+1))`
-/

namespace A004053.P5142673313295361083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A004053.P5142673313295361083

/-! ## A004053.P1173370408555641138

`A082492(A014132(A038722(n+1)))`
-/

namespace A004053.P1173370408555641138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (A014132 (A038722 (n + 1)).toNat).toNat

end

end A004053.P1173370408555641138

/-! ## A004053.P16639559141318580925

`A082492(A061579(A007401(n+1)))`
-/

namespace A004053.P16639559141318580925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (A061579 (A007401 (n + 1)).toNat).toNat

end

end A004053.P16639559141318580925

/-! ## A004053.P8319825421926285959

`A082492(A061579(A002024(n+1)+n))`
-/

namespace A004053.P8319825421926285959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (A061579 (A002024 (n + 1) + (n : ℤ)).toNat).toNat

end

end A004053.P8319825421926285959

/-! ## A004053.P11827897145276602150

`A082492(A038722(n+1)+A002024(n+1))`
-/

namespace A004053.P11827897145276602150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A004053.P11827897145276602150

/-!
# A004054: Expansion of (1-x)/((1+x)*(1-2*x)*(1-3*x)).

The programs for A004054, the canonical program `A004054.P13322834352181265065` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004054 has offset 0).

The definition of A004054 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-4x+x^2+6x^3))` (program `A004054.P13322834352181265065`, by `A004054.P13322834352181265065.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004054.P13322834352181265065

`ogf((1-x)/(1-4x+x^2+6x^3))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004054

/-- `ogf((1-x)/(1-4x+x^2+6x^3))` -/
def P13322834352181265065.Spec : Prop :=
  ∀ n, P13322834352181265065.a n = A004054 n

theorem P13322834352181265065.correct : P13322834352181265065.Spec := by
  intro n
  simp only [A004054]

end A004054

/-! ## A004054.P15305902659284205527

`∑{#}[n, A078008(#)*3^(n-#)]`
-/

namespace A004054.P15305902659284205527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A078008 k : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A004054.P15305902659284205527

namespace A004054

/-- `∑{#}[n, A078008(#)*3^(n-#)]` -/
def P15305902659284205527.Spec : Prop :=
  ∀ n, P15305902659284205527.a n = (A004054 n : ℚ)

end A004054

/-! ## A004054.P17603231056276103615

`A094705(n+1)-A094705(n)`
-/

namespace A004054.P17603231056276103615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094705 (n + 1) - A094705 n

end

end A004054.P17603231056276103615

namespace A004054

/-- `A094705(n+1)-A094705(n)` -/
def P17603231056276103615.Spec : Prop :=
  ∀ n, P17603231056276103615.a n = A004054 n

end A004054

/-! ## A004054.P6092275034059547932

`(3*A000244(n)-A001045(n+2))/2`
-/

namespace A004054.P6092275034059547932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A000244 n - A001045 (n + 2) : ℚ) / 2

end

end A004054.P6092275034059547932

namespace A004054

/-- `(3*A000244(n)-A001045(n+2))/2` -/
def P6092275034059547932.Spec : Prop :=
  ∀ n, P6092275034059547932.a n = (A004054 n : ℚ)

end A004054

/-! ## A004054.P6654107015721881863

`1/6*((-1)^(2+n)-2^(n+2)+3^(n+2))`
-/

namespace A004054.P6654107015721881863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * ((-1) ^ (2 + n) - (2 ^ (n + 2) : ℤ) + (3 ^ (n + 2) : ℤ) : ℚ)

end

end A004054.P6654107015721881863

namespace A004054

/-- `1/6*((-1)^(2+n)-2^(n+2)+3^(n+2))` -/
def P6654107015721881863.Spec : Prop :=
  ∀ n, P6654107015721881863.a n = (A004054 n : ℚ)

end A004054

/-! ## A004054.P16680348288306276979

`(A001047(n+2)+(-1)^n)/6`
-/

namespace A004054.P16680348288306276979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001047 (n + 2) + (-1) ^ n : ℚ) / 6

end

end A004054.P16680348288306276979

namespace A004054

/-- `(A001047(n+2)+(-1)^n)/6` -/
def P16680348288306276979.Spec : Prop :=
  ∀ n, P16680348288306276979.a n = (A004054 n : ℚ)

end A004054

/-! ## A004054.P5412891447211853430

`2*a(n-1)+∑[ceil(3^(n-1))]-n%2` with `a(0)=1`
-/

namespace A004054.P5412891447211853430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j - ((n % 2 : ℕ) : ℤ))

end

end A004054.P5412891447211853430

namespace A004054

/-- `2*a(n-1)+∑[ceil(3^(n-1))]-n%2` -/
def P5412891447211853430.Spec : Prop :=
  ∀ n, P5412891447211853430.a n = A004054 n

end A004054

/-! ## A004054.P6064618743716346832

`∑[floor(3^(n-1))+(-1)^n]+2*a(n-1)` with `a(0)=1`
-/

namespace A004054.P6064618743716346832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A004054.P6064618743716346832

namespace A004054

/-- `∑[floor(3^(n-1))+(-1)^n]+2*a(n-1)` -/
def P6064618743716346832.Spec : Prop :=
  ∀ n, P6064618743716346832.a n = A004054 n

end A004054

/-! ## A004054.P8592412841313257257

`∑[A093833(n)]`
-/

namespace A004054.P8592412841313257257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004054.P8592412841313257257

namespace A004054

/-- `∑[A093833(n)]` -/
def P8592412841313257257.Spec : Prop :=
  ∀ n, P8592412841313257257.a n = A004054 n

end A004054

/-! ## A004054.P13149597185988553593

`∑[3^n]-A000975(n)`
-/

namespace A004054.P13149597185988553593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000975 n

end

end A004054.P13149597185988553593

namespace A004054

/-- `∑[3^n]-A000975(n)` -/
def P13149597185988553593.Spec : Prop :=
  ∀ n, P13149597185988553593.a n = A004054 n

end A004054

/-! ## A004054.P15105328145313535572

`∑[3^n]-∑[A001045(n)]`
-/

namespace A004054.P15105328145313535572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A004054.P15105328145313535572

namespace A004054

/-- `∑[3^n]-∑[A001045(n)]` -/
def P15105328145313535572.Spec : Prop :=
  ∀ n, P15105328145313535572.a n = A004054 n

end A004054

/-! ## A004054.P10061952522329817792

`A053581(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A004054.P10061952522329817792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A053581 n + a (n - 2)

end

end A004054.P10061952522329817792

namespace A004054

/-- `A053581(n)+a(n-2)` -/
def P10061952522329817792.Spec : Prop :=
  ∀ n, P10061952522329817792.a n = A004054 n

end A004054

/-! ## A004054.P9402024259739966457

`A087432(n+2)-2^(n+1)`
-/

namespace A004054.P9402024259739966457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087432 (n + 2) - (2 ^ (n + 1) : ℤ)

end

end A004054.P9402024259739966457

namespace A004054

/-- `A087432(n+2)-2^(n+1)` -/
def P9402024259739966457.Spec : Prop :=
  ∀ n, P9402024259739966457.a n = A004054 n

end A004054

/-! ## A004054.P12737973859398550705

`a(n-1)+A046717(n)+a(n-1)` with `a(0)=1`
-/

namespace A004054.P12737973859398550705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A046717 n + a (n - 1))

end

end A004054.P12737973859398550705

namespace A004054

/-- `a(n-1)+A046717(n)+a(n-1)` -/
def P12737973859398550705.Spec : Prop :=
  ∀ n, P12737973859398550705.a n = A004054 n

end A004054

/-! ## A004054.P7726794878284846257

`a(n-1)+A080925(n)+a(n-1)` with `a(0)=1`
-/

namespace A004054.P7726794878284846257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A080925 n + a (n - 1))

end

end A004054.P7726794878284846257

namespace A004054

/-- `a(n-1)+A080925(n)+a(n-1)` -/
def P7726794878284846257.Spec : Prop :=
  ∀ n, P7726794878284846257.a n = A004054 n

end A004054

/-! ## A004054.P17478643998927053683

`A097074(n)+A092438(n)`
-/

namespace A004054.P17478643998927053683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097074 n + A092438 n

end

end A004054.P17478643998927053683

namespace A004054

/-- `A097074(n)+A092438(n)` -/
def P17478643998927053683.Spec : Prop :=
  ∀ n, P17478643998927053683.a n = A004054 n

end A004054

/-! ## A004054.P14056591126879046478

`A164907(n)-A014113(n)`
-/

namespace A004054.P14056591126879046478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164907 n - A014113 n

end

end A004054.P14056591126879046478

namespace A004054

/-- `A164907(n)-A014113(n)` -/
def P14056591126879046478.Spec : Prop :=
  ∀ n, P14056591126879046478.a n = A004054 n

end A004054

/-! ## A004054.P2170862599005683794

`A133453(n)-A130781(n)`
-/

namespace A004054.P2170862599005683794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133453 n - A130781 n

end

end A004054.P2170862599005683794

namespace A004054

/-- `A133453(n)-A130781(n)` -/
def P2170862599005683794.Spec : Prop :=
  ∀ n, P2170862599005683794.a n = A004054 n

end A004054

/-! ## A004054.P8347514931363673925

`A053152(n+1)+A005578(n)`
-/

namespace A004054.P8347514931363673925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053152 (n + 1) + A005578 n

end

end A004054.P8347514931363673925

namespace A004054

/-- `A053152(n+1)+A005578(n)` -/
def P8347514931363673925.Spec : Prop :=
  ∀ n, P8347514931363673925.a n = A004054 n

end A004054

/-! ## A004054.P3436534769179813265

`A094705(n)+A015518(n+1)`
-/

namespace A004054.P3436534769179813265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094705 n + A015518 (n + 1)

end

end A004054.P3436534769179813265

namespace A004054

/-- `A094705(n)+A015518(n+1)` -/
def P3436534769179813265.Spec : Prop :=
  ∀ n, P3436534769179813265.a n = A004054 n

end A004054

/-!
# A004055: ((p-1)/2)! mod p for odd primes p.

The programs for A004055, there is no canonical definition to state claims against.
-/

/-! ## A004055.P16304440430363967727

`floor(p?[2*n+1]/2)!%p?[2*n+1]`
-/

namespace A004055.P16304440430363967727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋.toNat % f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

end

end A004055.P16304440430363967727

/-! ## A004055.P2586617845154508421

`A005097(n+1)!%p?[2*n+1]`
-/

namespace A004055.P2586617845154508421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A005097 (n + 1)).toNat % f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A004055.P2586617845154508421

/-! ## A004055.P6753885245791598320

`A000142(floor(p?[2*n+1]/2))%p?[2*n+1]`
-/

namespace A004055.P6753885245791598320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋.toNat) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A004055.P6753885245791598320

/-! ## A004055.P7861789272801496847

`A062169(A084921(n+2))`
-/

namespace A004055.P7861789272801496847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062169 (A084921 (n + 2)).toNat

end

end A004055.P7861789272801496847

/-! ## A004055.P4399013196486666101

`A062169(A216244(n+2))`
-/

namespace A004055.P4399013196486666101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062169 (A216244 (n + 2)).toNat

end

end A004055.P4399013196486666101

/-!
# A004057: Expansion of (1-x)/( (1+x)*(1-2*x)*(1-3*x)*(1-4*x)).

The programs for A004057, the canonical program `A004057.P4548016279350071204` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004057 has offset 0).

The definition of A004057 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-8x+17x^2+2x^3-24x^4))` (program `A004057.P4548016279350071204`, by `A004057.P4548016279350071204.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004057.P4548016279350071204

`ogf((1-x)/(1-8x+17x^2+2x^3-24x^4))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004057

/-- `ogf((1-x)/(1-8x+17x^2+2x^3-24x^4))` -/
def P4548016279350071204.Spec : Prop :=
  ∀ n, P4548016279350071204.a n = A004057 n

theorem P4548016279350071204.correct : P4548016279350071204.Spec := by
  intro n
  simp only [A004057]

end A004057

/-! ## A004057.P12421997367512667329

`1/30*(20*2^n-135*3^n+144*4^n+(-1)^n)`
-/

namespace A004057.P12421997367512667329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 30 * ((20 * 2 ^ n : ℤ) - (135 * 3 ^ n : ℤ) + (144 * 4 ^ n : ℤ) + (-1) ^ n : ℚ)

end

end A004057.P12421997367512667329

namespace A004057

/-- `1/30*(20*2^n-135*3^n+144*4^n+(-1)^n)` -/
def P12421997367512667329.Spec : Prop :=
  ∀ n, P12421997367512667329.a n = (A004057 n : ℚ)

end A004057

/-! ## A004057.P17793710037562123763

`A027650(n)-a(n-1)` with `a(0)=1`
-/

namespace A004057.P17793710037562123763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027650 n - a (n - 1)

end

end A004057.P17793710037562123763

namespace A004057

/-- `A027650(n)-a(n-1)` -/
def P17793710037562123763.Spec : Prop :=
  ∀ n, P17793710037562123763.a n = A004057 n

end A004057

/-! ## A004057.P7999017136843089565

`2*A099110(n)-A016269(n)`
-/

namespace A004057.P7999017136843089565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099110 n - A016269 n

end

end A004057.P7999017136843089565

namespace A004057

/-- `2*A099110(n)-A016269(n)` -/
def P7999017136843089565.Spec : Prop :=
  ∀ n, P7999017136843089565.a n = A004057 n

end A004057

/-! ## A004057.P10975313105498298864

`Δ[Δ[A214142(n+2)-A006342(n+1)]]`
-/

namespace A004057.P10975313105498298864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214142 (n + 2) - A006342 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004057.P10975313105498298864

namespace A004057

/-- `Δ[Δ[A214142(n+2)-A006342(n+1)]]` -/
def P10975313105498298864.Spec : Prop :=
  ∀ n, P10975313105498298864.a n = A004057 n

end A004057

/-! ## A004057.P12362065951522044254

`Δ[a(n-2)+A010036(n)-A027649(n)]` with `a(0)=1, a(1)=2`
-/

namespace A004057.P12362065951522044254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + (A010036 n - A027649 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004057.P12362065951522044254

namespace A004057

/-- `Δ[a(n-2)+A010036(n)-A027649(n)]` -/
def P12362065951522044254.Spec : Prop :=
  ∀ n, P12362065951522044254.a n = A004057 n

end A004057

/-! ## A004057.P11146477091132740752

`Δ[A016269(n)-A099110(n)]`
-/

namespace A004057.P11146477091132740752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n - A099110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004057.P11146477091132740752

namespace A004057

/-- `Δ[A016269(n)-A099110(n)]` -/
def P11146477091132740752.Spec : Prop :=
  ∀ n, P11146477091132740752.a n = A004057 n

end A004057

/-!
# A004058: Expansion of (1-x)/( (1+x)*(1-2*x)*(1-3*x)*(1-4*x)*(1-5*x)).

The programs for A004058, the canonical program `A004058.P18064057115329645850` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004058 has offset 0).

The definition of A004058 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-13x+57x^2-83x^3-34x^4+120x^5))` (program `A004058.P18064057115329645850`, by `A004058.P18064057115329645850.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004058.P18064057115329645850

`ogf((1-x)/(1-13x+57x^2-83x^3-34x^4+120x^5))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004058

/-- `ogf((1-x)/(1-13x+57x^2-83x^3-34x^4+120x^5))` -/
def P18064057115329645850.Spec : Prop :=
  ∀ n, P18064057115329645850.a n = A004058 n

theorem P18064057115329645850.correct : P18064057115329645850.Spec := by
  intro n
  simp only [A004058]

end A004058

/-! ## A004058.P5511295671970083369

`A004057(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A004058.P5511295671970083369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004057 n + 5 * a (n - 1)

end

end A004058.P5511295671970083369

namespace A004058

/-- `A004057(n)+5*a(n-1)` -/
def P5511295671970083369.Spec : Prop :=
  ∀ n, P5511295671970083369.a n = A004058 n

end A004058

/-! ## A004058.P3432655816962759926

`Δ[Δ[A214167(n+3)-A214142(n+3)]]`
-/

namespace A004058.P3432655816962759926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214167 (n + 3) - A214142 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004058.P3432655816962759926

namespace A004058

/-- `Δ[Δ[A214167(n+3)-A214142(n+3)]]` -/
def P3432655816962759926.Spec : Prop :=
  ∀ n, P3432655816962759926.a n = A004058 n

end A004058

/-! ## A004058.P7267885397950552791

`A099111(n)+A099111(n)-A025211(n)`
-/

namespace A004058.P7267885397950552791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099111 n + (A099111 n - A025211 n)

end

end A004058.P7267885397950552791

namespace A004058

/-- `A099111(n)+A099111(n)-A025211(n)` -/
def P7267885397950552791.Spec : Prop :=
  ∀ n, P7267885397950552791.a n = A004058 n

end A004058

/-! ## A004058.P15831419692920331357

`Δ[A025211(n)-A099111(n)]`
-/

namespace A004058.P15831419692920331357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n - A099111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004058.P15831419692920331357

namespace A004058

/-- `Δ[A025211(n)-A099111(n)]` -/
def P15831419692920331357.Spec : Prop :=
  ∀ n, P15831419692920331357.a n = A004058 n

end A004058

/-! ## A004058.P2872835117821919790

`Δ[Δ[A056511(2*n+7)]%A099111(n)]`
-/

namespace A004058.P2872835117821919790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 (2 * n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A099111 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004058.P2872835117821919790

namespace A004058

/-- `Δ[Δ[A056511(2*n+7)]%A099111(n)]` -/
def P2872835117821919790.Spec : Prop :=
  ∀ n, P2872835117821919790.a n = A004058 n

end A004058

/-!
# A004059: a(n) gives position of first n in A057561.

The programs for A004059, there is no canonical definition to state claims against.
-/

/-! ## A004059.P235361785380695002

`A094708(A301729(n))+1+n`
-/

namespace A004059.P235361785380695002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094708 (A301729 n).toNat + 1 + (n : ℤ)

end

end A004059.P235361785380695002

/-! ## A004059.P15567712615877184686

`A094708(A094708(a(n-1)+1)+n+1)+n+1` with `a(0)=1`
-/

namespace A004059.P15567712615877184686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094708 (A094708 (a (n - 1) + 1).toNat + (n : ℤ) + 1).toNat + (n + 1 : ℤ)

end

end A004059.P15567712615877184686

/-! ## A004059.P13503356874310038145

`∑[A001285(A001747(2*(n+2))+A000045(n))]`
-/

namespace A004059.P13503356874310038145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A001747 (2 * (n + 2)) + A000045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004059.P13503356874310038145

/-! ## A004059.P5270791037319940994

`lt[A326800(n+1), A000217(A046765(2*(n+1)))]`
-/

namespace A004059.P5270791037319940994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A046765 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004059.P5270791037319940994

/-! ## A004059.P3179628183155739363

`∑[A007421(A052217(n+1))]`
-/

namespace A004059.P3179628183155739363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007421 (A052217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004059.P3179628183155739363

/-!
# A004061: Numbers k such that (5^k - 1)/4 is prime.

The programs for A004061, there is no canonical definition to state claims against.
-/

/-! ## A004061.P2573907067028175877

`A086123(n+1)+1`
-/

namespace A004061.P2573907067028175877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086123 (n + 1) + 1

end

end A004061.P2573907067028175877

/-! ## A004061.P2705370444944322497

`xor(1, A086123(ϕ²-(ϕ-n)))`
-/

namespace A004061.P2705370444944322497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A086123 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

end

end A004061.P2705370444944322497

/-! ## A004061.P5530597915024811957

`p?[A138935(n+1)]`
-/

namespace A004061.P5530597915024811957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004061.P5530597915024811957

/-! ## A004061.P16942611420074316256

`A151800(A086123(n+1))`
-/

namespace A004061.P16942611420074316256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A086123 (n + 1)).toNat

end

end A004061.P16942611420074316256

/-! ## A004061.P11975772982578957605

`p?[A330734(A138925(n+1))]`
-/

namespace A004061.P11975772982578957605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330734 (A138925 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004061.P11975772982578957605

/-!
# A004062: Numbers k such that (6^k - 1)/5 is prime.

The programs for A004062, there is no canonical definition to state claims against.
-/

/-! ## A004062.P12069413206097116197

`p?[A138936(n+1)]`
-/

namespace A004062.P12069413206097116197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004062.P12069413206097116197

/-! ## A004062.P17791899897987489923

`p?[record[A138936(A134478(n))]]`
-/

namespace A004062.P17791899897987489923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138936 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004062.P17791899897987489923

/-! ## A004062.P10315858842295076481

`p?[record[A138936(A154958(n))]]`
-/

namespace A004062.P10315858842295076481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138936 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004062.P10315858842295076481

/-! ## A004062.P14728296317215277190

`p?[record[A138936(A158416(n))]]`
-/

namespace A004062.P14728296317215277190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138936 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004062.P14728296317215277190

/-! ## A004062.P424851417243829528

`record[A020639(A138936(n+2))]`
-/

namespace A004062.P424851417243829528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A138936 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004062.P424851417243829528

/-!
# A004063: Numbers k such that (7^k - 1)/6 is prime.

The programs for A004063, there is no canonical definition to state claims against.
-/

/-! ## A004063.P14016793263121036059

`p?[A138937(n+1)]`
-/

namespace A004063.P14016793263121036059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004063.P14016793263121036059

/-! ## A004063.P12918744038268761203

`p?[record[A138937(A134478(n))]]`
-/

namespace A004063.P12918744038268761203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138937 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004063.P12918744038268761203

/-! ## A004063.P15742627094294707650

`filter[A138937(n+1), A010051(#)]`
-/

namespace A004063.P15742627094294707650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A004063.P15742627094294707650

/-!
# A004064: Numbers k such that (12^k - 1)/11 is prime.

The programs for A004064, there is no canonical definition to state claims against.
-/

/-! ## A004064.P6371903753198913706

`p?[A252353(n+1)]`
-/

namespace A004064.P6371903753198913706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004064.P6371903753198913706

/-! ## A004064.P1318939079954642048

`p?[record[A252353(A133310(n))]]`
-/

namespace A004064.P1318939079954642048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252353 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004064.P1318939079954642048

/-! ## A004064.P11325687642805588085

`p?[record[A252353(A134478(n))]]`
-/

namespace A004064.P11325687642805588085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252353 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004064.P11325687642805588085

/-! ## A004064.P4676557728847556131

`p?[record[A252353(A154958(n))]]`
-/

namespace A004064.P4676557728847556131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252353 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004064.P4676557728847556131

/-! ## A004064.P12153272477508919298

`record[A020639(A252353(n+2))]`
-/

namespace A004064.P12153272477508919298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A252353 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004064.P12153272477508919298

/-!
# A004066: Number of simple regular trivalent bicolored graphs with 2n nodes.

The programs for A004066, there is no canonical definition to state claims against.
-/

/-! ## A004066.P16000577298465789130

`(A000840(n+1)+A000512(n+1))/2`
-/

namespace A004066.P16000577298465789130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000840 (n + 1) + A000512 (n + 1) : ℚ) / 2

end

end A004066.P16000577298465789130

/-! ## A004066.P14427773722183621618

`A004525(A000840(n+1)+A000512(n+1))`
-/

namespace A004066.P14427773722183621618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000840 (n + 1) + A000512 (n + 1)).toNat

end

end A004066.P14427773722183621618

/-! ## A004066.P6211709206753500765

`A004526(A000840(n+1)+A000512(n+1))`
-/

namespace A004066.P6211709206753500765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000840 (n + 1) + A000512 (n + 1)).toNat

end

end A004066.P6211709206753500765

/-! ## A004066.P15962299150640411158

`A110654(A000840(n+1)+A000512(n+1))`
-/

namespace A004066.P15962299150640411158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000840 (n + 1) + A000512 (n + 1)).toNat

end

end A004066.P15962299150640411158

/-! ## A004066.P529696008616370007

`A098641(n)-A155972(A005195(n))`
-/

namespace A004066.P529696008616370007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098641 n - A155972 (A005195 n).toNat

end

end A004066.P529696008616370007

/-!
# A004067: The coding-theoretic function A(n,6,7).

The programs for A004067, there is no canonical definition to state claims against.
-/

/-! ## A004067.P7746507132654840714

`A047894(A327046(n))`
-/

namespace A004067.P7746507132654840714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047894 (A327046 n).toNat

end

end A004067.P7746507132654840714

/-! ## A004067.P12055696804352675551

`A179834(A298338(n))`
-/

namespace A004067.P12055696804352675551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179834 (A298338 n).toNat

end

end A004067.P12055696804352675551

/-! ## A004067.P10967382828530956925

`A008718(∑[A165597(n)])`
-/

namespace A004067.P10967382828530956925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008718 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A004067.P10967382828530956925

/-! ## A004067.P10079519310404958874

`A356990(A001137(n+1))`
-/

namespace A004067.P10079519310404958874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356990 (A001137 (n + 1)).toNat

end

end A004067.P10079519310404958874

/-! ## A004067.P13541972094396912642

`A324738(n)-A334888(n)`
-/

namespace A004067.P13541972094396912642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324738 n - A334888 n

end

end A004067.P13541972094396912642

/-!
# A004068: Number of atoms in a decahedron with n shells.

The programs for A004068, the canonical program `A004068.P4270773251638208572` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004068 has offset 0).

The definition of A004068 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004068.P4270773251638208572

`5*n^3/6+n/6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004068

/-- `5*n^3/6+n/6` -/
def P4270773251638208572.Spec : Prop :=
  ∀ n, P4270773251638208572.a n = (A004068 n : ℚ)

end A004068

/-! ## A004068.P10357954129654491446

`ogf((x+3x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A004068.P10357954129654491446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 1] [1, -4, 6, -4, 1] n

end

end A004068.P10357954129654491446

namespace A004068

/-- `ogf((x+3x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P10357954129654491446.Spec : Prop :=
  ∀ n, P10357954129654491446.a n = A004068 n

end A004068

/-! ## A004068.P9320540896043967507

`5*∑[C(n, 2)]+n`
-/

namespace A004068.P9320540896043967507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A004068.P9320540896043967507

namespace A004068

/-- `5*∑[C(n, 2)]+n` -/
def P9320540896043967507.Spec : Prop :=
  ∀ n, (P9320540896043967507.a n : ℤ) = A004068 n

end A004068

/-! ## A004068.P2669479772974820017

`n^3-∑[C(n, 2)]`
-/

namespace A004068.P2669479772974820017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004068.P2669479772974820017

namespace A004068

/-- `n^3-∑[C(n, 2)]` -/
def P2669479772974820017.Spec : Prop :=
  ∀ n, P2669479772974820017.a n = A004068 n

end A004068

/-! ## A004068.P10965032000504937971

`5*C(n+1, 3)+n`
-/

namespace A004068.P10965032000504937971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose (n + 1) 3 + n

end

end A004068.P10965032000504937971

namespace A004068

/-- `5*C(n+1, 3)+n` -/
def P10965032000504937971.Spec : Prop :=
  ∀ n, (P10965032000504937971.a n : ℤ) = A004068 n

end A004068

/-! ## A004068.P13490534648191950772

`n^3-C(n+1, 3)`
-/

namespace A004068.P13490534648191950772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.choose (n + 1) 3 : ℤ)

end

end A004068.P13490534648191950772

namespace A004068

/-- `n^3-C(n+1, 3)` -/
def P13490534648191950772.Spec : Prop :=
  ∀ n, P13490534648191950772.a n = A004068 n

end A004068

/-! ## A004068.P361843309712828151

`∑[∑[a(n-1)+5]]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A004068.P361843309712828151
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004068.P361843309712828151

namespace A004068

/-- `∑[∑[a(n-1)+5]]` -/
def P361843309712828151.Spec : Prop :=
  ∀ n, (P361843309712828151.a n : ℤ) = A004068 n

end A004068

/-! ## A004068.P5481894575038512619

`(A004466(n)+n)/2`
-/

namespace A004068.P5481894575038512619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004466 n + (n : ℤ) : ℚ) / 2

end

end A004068.P5481894575038512619

namespace A004068

/-- `(A004466(n)+n)/2` -/
def P5481894575038512619.Spec : Prop :=
  ∀ n, P5481894575038512619.a n = (A004068 n : ℚ)

end A004068

/-! ## A004068.P7274422509962831443

`n/12*A005901(n)`
-/

namespace A004068.P7274422509962831443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 12 * (A005901 n : ℚ)

end

end A004068.P7274422509962831443

namespace A004068

/-- `n/12*A005901(n)` -/
def P7274422509962831443.Spec : Prop :=
  ∀ n, P7274422509962831443.a n = (A004068 n : ℚ)

end A004068

/-! ## A004068.P14053621770996943245

`A005902(n)%A006564(n+1)`
-/

namespace A004068.P14053621770996943245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005902 n) (A006564 (n + 1))

end

end A004068.P14053621770996943245

namespace A004068

/-- `A005902(n)%A006564(n+1)` -/
def P14053621770996943245.Spec : Prop :=
  ∀ n, P14053621770996943245.a n = A004068 n

end A004068

/-! ## A004068.P8047707625414013350

`A063494(n+1)%A005906(n)`
-/

namespace A004068.P8047707625414013350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063494 (n + 1)) (A005906 n)

end

end A004068.P8047707625414013350

namespace A004068

/-- `A063494(n+1)%A005906(n)` -/
def P8047707625414013350.Spec : Prop :=
  ∀ n, P8047707625414013350.a n = A004068 n

end A004068

/-! ## A004068.P12893429598556589705

`A063490(n+1)%A005920(n)`
-/

namespace A004068.P12893429598556589705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063490 (n + 1)) (A005920 n)

end

end A004068.P12893429598556589705

namespace A004068

/-- `A063490(n+1)%A005920(n)` -/
def P12893429598556589705.Spec : Prop :=
  ∀ n, P12893429598556589705.a n = A004068 n

end A004068

/-! ## A004068.P12854264809644009106

`A005904(n)%A100173(n+1)`
-/

namespace A004068.P12854264809644009106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005904 n) (A100173 (n + 1))

end

end A004068.P12854264809644009106

namespace A004068

/-- `A005904(n)%A100173(n+1)` -/
def P12854264809644009106.Spec : Prop :=
  ∀ n, P12854264809644009106.a n = A004068 n

end A004068

/-! ## A004068.P17901609128697671124

`A005898(n)%A100182(n+1)`
-/

namespace A004068.P17901609128697671124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005898 n) (A100182 (n + 1))

end

end A004068.P17901609128697671124

namespace A004068

/-- `A005898(n)%A100182(n+1)` -/
def P17901609128697671124.Spec : Prop :=
  ∀ n, P17901609128697671124.a n = A004068 n

end A004068

/-! ## A004068.P3563073073838752954

`A212578(2*n)/4`
-/

namespace A004068.P3563073073838752954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212578 (2 * n) : ℚ) / 4

end

end A004068.P3563073073838752954

namespace A004068

/-- `A212578(2*n)/4` -/
def P3563073073838752954.Spec : Prop :=
  ∀ n, P3563073073838752954.a n = (A004068 n : ℚ)

end A004068

/-!
# A004070: Table of Whitney numbers W(n,k) read by antidiagonals, where W(n,k) is maximal number of pieces into which n-space is sliced by k hyperplanes, n >= 0, k >= 0.

The programs for A004070, there is no canonical definition to state claims against.
-/

/-! ## A004070.P13572337845476268292

`ceil(A131248(n)/2)`
-/

namespace A004070.P13572337845476268292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131248 n : ℚ) / 2⌉

end

end A004070.P13572337845476268292

/-! ## A004070.P17311121483942135889

`A052509(A061579(n))`
-/

namespace A004070.P17311121483942135889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A061579 n).toNat

end

end A004070.P17311121483942135889

/-! ## A004070.P6469419483748644977

`A216274(A083920(n))`
-/

namespace A004070.P6469419483748644977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216274 (A083920 n).toNat

end

end A004070.P6469419483748644977

/-! ## A004070.P3377010488362087403

`A216274(A271439(n))`
-/

namespace A004070.P3377010488362087403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216274 (A271439 n).toNat

end

end A004070.P3377010488362087403

/-! ## A004070.P10479753128485295674

`A052509(A038722(n+2))`
-/

namespace A004070.P10479753128485295674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A038722 (n + 2)).toNat

end

end A004070.P10479753128485295674

/-! ## A004070.P6376153577284824097

`A052509(A114327(n)+n)`
-/

namespace A004070.P6376153577284824097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A114327 n + (n : ℤ)).toNat

end

end A004070.P6376153577284824097

/-! ## A004070.P91498329532068796

`A122438(n)/A130321(n)`
-/

namespace A004070.P91498329532068796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122438 n : ℚ) / (A130321 n : ℚ)

end

end A004070.P91498329532068796

/-! ## A004070.P13437236910555478423

`A052509(∑[A198954(n)-1])`
-/

namespace A004070.P13437236910555478423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A004070.P13437236910555478423

/-! ## A004070.P4985476886471516499

`A052509(A093995(n+1)-(n+1))`
-/

namespace A004070.P4985476886471516499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A004070.P4985476886471516499

/-! ## A004070.P8526314419841561056

`A052509((A003056(n)+1)²-(n+1))`
-/

namespace A004070.P8526314419841561056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 ((A003056 n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A004070.P8526314419841561056

/-! ## A004070.P7625396763635050434

`round(A059250(n+2)/2)`
-/

namespace A004070.P7625396763635050434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A059250 (n + 2) : ℚ) / 2)

end

end A004070.P7625396763635050434

/-! ## A004070.P7666157222234351567

`A054124(comp[∑[n]])`
-/

namespace A004070.P7666157222234351567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A004070.P7666157222234351567

/-! ## A004070.P17230715025869891518

`A058393(A014132(n+1))`
-/

namespace A004070.P17230715025869891518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058393 (A014132 (n + 1)).toNat

end

end A004070.P17230715025869891518

/-! ## A004070.P1913301284948973386

`A058393(A123578(n+1)+n+1)`
-/

namespace A004070.P1913301284948973386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058393 (A123578 (n + 1) + (n + 1 : ℤ)).toNat

end

end A004070.P1913301284948973386

/-! ## A004070.P14118712957628205801

`A054123(A099375(n)+n)`
-/

namespace A004070.P14118712957628205801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (A099375 n + (n : ℤ)).toNat

end

end A004070.P14118712957628205801

/-! ## A004070.P4261945215669983897

`A054124(A014963(2*(n+1)))*A054124(A007401(n+2))`
-/

namespace A004070.P4261945215669983897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (A014963 (2 * (n + 1))).toNat * A054124 (A007401 (n + 2)).toNat

end

end A004070.P4261945215669983897

/-! ## A004070.P687339540057472495

`A000463(A131248(n))`
-/

namespace A004070.P687339540057472495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A131248 n).toNat

end

end A004070.P687339540057472495

/-! ## A004070.P3434670829261668057

`A004525(A059250(n+2))`
-/

namespace A004070.P3434670829261668057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A059250 (n + 2)).toNat

end

end A004070.P3434670829261668057

/-!
# A004071: Start with a(0)=1; replace each i with 12...i, then add 1 to final digit.

The programs for A004071, there is no canonical definition to state claims against.
-/

/-! ## A004071.P17513584741641957531

`A048766(n)+A004073(A028310(n))`
-/

namespace A004071.P17513584741641957531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n + A004073 (A028310 n).toNat

end

end A004071.P17513584741641957531

/-!
# A004073: Start with a(1)=1; to get a(n) replace each i in a(n-1) with 12...i, then append n.

The programs for A004073, there is no canonical definition to state claims against.
-/

/-! ## A004073.P12351289390108947066

`∑[abs(Δ[A004071(n)])]`
-/

namespace A004073.P12351289390108947066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004071 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004073.P12351289390108947066

/-! ## A004073.P5000072530834057388

`A004071(n+1)-1`
-/

namespace A004073.P5000072530834057388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004071 (n + 1) - 1

end

end A004073.P5000072530834057388

/-!
# A004074: a(n) = 2*A004001(n) - n, where A004001 is the Hofstadter-Conway $10000 sequence.

The programs for A004074, the canonical program `A004074.P7923375237967652699` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004074 has offset 1).

The definition of A004074 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A004001(n+1)-(n+1)` (program `A004074.P7923375237967652699`, by `A004074.P7923375237967652699.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004074.P7923375237967652699

`2*A004001(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004074

/-- `2*A004001(n+1)-(n+1)` -/
def P7923375237967652699.Spec : Prop :=
  ∀ n, P7923375237967652699.a n = A004074 (n + 1)

theorem P7923375237967652699.correct : P7923375237967652699.Spec := by
  intro n
  simp only [A004074, Nat.add_sub_cancel]

end A004074

/-! ## A004074.P8203148157942957646

`∑[floor(acot(1-A265332(n+1)))]`
-/

namespace A004074.P8203148157942957646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (1 - A265332 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004074.P8203148157942957646

namespace A004074

/-- `∑[floor(acot(1-A265332(n+1)))]` -/
def P8203148157942957646.Spec : Prop :=
  ∀ n, P8203148157942957646.a n = A004074 (n + 1)

end A004074

/-! ## A004074.P6842236234220587684

`n+3-2*A080677(n+1)`
-/

namespace A004074.P6842236234220587684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - 2 * A080677 (n + 1)

end

end A004074.P6842236234220587684

namespace A004074

/-- `n+3-2*A080677(n+1)` -/
def P6842236234220587684.Spec : Prop :=
  ∀ n, P6842236234220587684.a n = A004074 (n + 1)

theorem P6842236234220587684.correct : P6842236234220587684.Spec := by
  intro n
  simp only [A004074, Nat.add_sub_cancel, A004074.P6842236234220587684.a, A004074.P7923375237967652699.a, A004001, A004001.P15027099775036681873.a, A080677, A080677.P3667813120543566006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004074

/-! ## A004074.P4387220861699318370

`A004273(A004001(n+1))-n`
-/

namespace A004074.P4387220861699318370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A004001 (n + 1)).toNat - (n : ℤ)

end

end A004074.P4387220861699318370

namespace A004074

/-- `A004273(A004001(n+1))-n` -/
def P4387220861699318370.Spec : Prop :=
  ∀ n, P4387220861699318370.a n = A004074 (n + 1)

end A004074

/-! ## A004074.P16431798488517791233

`A004001(n+1)+1-A080677(n+1)`
-/

namespace A004074.P16431798488517791233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) + (1 - A080677 (n + 1))

end

end A004074.P16431798488517791233

namespace A004074

/-- `A004001(n+1)+1-A080677(n+1)` -/
def P16431798488517791233.Spec : Prop :=
  ∀ n, P16431798488517791233.a n = A004074 (n + 1)

theorem P16431798488517791233.correct : P16431798488517791233.Spec := by
  intro n
  simp only [A004074, Nat.add_sub_cancel, A004074.P16431798488517791233.a, A004074.P7923375237967652699.a, A004001, A004001.P15027099775036681873.a, A080677, A080677.P3667813120543566006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004074

/-! ## A004074.P15024484180690474475

`A004277(A004001(n+1))-A000027(n+1)`
-/

namespace A004074.P15024484180690474475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A004001 (n + 1)).toNat - A000027 (n + 1)

end

end A004074.P15024484180690474475

namespace A004074

/-- `A004277(A004001(n+1))-A000027(n+1)` -/
def P15024484180690474475.Spec : Prop :=
  ∀ n, P15024484180690474475.a n = A004074 (n + 1)

end A004074

/-! ## A004074.P11921488855531223967

`A046666(A004001(n+1)+A004001(n+1)+2)-(n+1)`
-/

namespace A004074.P11921488855531223967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A004001 (n + 1) + A004001 (n + 1) + 2).toNat - (n + 1 : ℤ)

end

end A004074.P11921488855531223967

namespace A004074

/-- `A046666(A004001(n+1)+A004001(n+1)+2)-(n+1)` -/
def P11921488855531223967.Spec : Prop :=
  ∀ n, P11921488855531223967.a n = A004074 (n + 1)

end A004074

/-! ## A004074.P2558644164104617861

`A014681(2*A004001(n+1))-n`
-/

namespace A004074.P2558644164104617861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A004001 (n + 1)).toNat - (n : ℤ)

end

end A004074.P2558644164104617861

namespace A004074

/-- `A014681(2*A004001(n+1))-n` -/
def P2558644164104617861.Spec : Prop :=
  ∀ n, P2558644164104617861.a n = A004074 (n + 1)

end A004074

/-! ## A004074.P10220629075517458747

`A283468(A088359(n+1))+1`
-/

namespace A004074.P10220629075517458747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283468 (A088359 (n + 1)).toNat + 1

end

end A004074.P10220629075517458747

namespace A004074

/-- `A283468(A088359(n+1))+1` -/
def P10220629075517458747.Spec : Prop :=
  ∀ n, P10220629075517458747.a n = A004074 (n + 1)

end A004074

/-! ## A004074.P9865671190082214561

`A285763(2*(n+1))-(n+1)`
-/

namespace A004074.P9865671190082214561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285763 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A004074.P9865671190082214561

namespace A004074

/-- `A285763(2*(n+1))-(n+1)` -/
def P9865671190082214561.Spec : Prop :=
  ∀ n, P9865671190082214561.a n = A004074 (n + 1)

end A004074

/-! ## A004074.P12408687948975307664

`A005843(A004001(n+1))-A028242(A005843(n))`
-/

namespace A004074.P12408687948975307664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A004001 (n + 1)).toNat - A028242 (A005843 n).toNat

end

end A004074.P12408687948975307664

namespace A004074

/-- `A005843(A004001(n+1))-A028242(A005843(n))` -/
def P12408687948975307664.Spec : Prop :=
  ∀ n, P12408687948975307664.a n = A004074 (n + 1)

end A004074

/-!
# A004075: Number of Skolem sequences of order n.

The programs for A004075, there is no canonical definition to state claims against.
-/

/-! ## A004075.P11465537092252867313

`A036453(n+1)*A059106(n+1)`
-/

namespace A004075.P11465537092252867313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A059106 (n + 1)

end

end A004075.P11465537092252867313

/-! ## A004075.P14933522205335197062

`A020639(A004277(n))*A059106(n+1)`
-/

namespace A004075.P14933522205335197062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A059106 (n + 1)

end

end A004075.P14933522205335197062

/-! ## A004075.P4907853155021217860

`A020639(A007899(n))*A059106(n+1)`
-/

namespace A004075.P4907853155021217860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007899 n).toNat * A059106 (n + 1)

end

end A004075.P4907853155021217860

/-! ## A004075.P11476795188969270399

`A020639(A037225(n))*A059106(n+1)`
-/

namespace A004075.P11476795188969270399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A037225 n).toNat * A059106 (n + 1)

end

end A004075.P11476795188969270399

/-!
# A004076: Number of hooked Skolem sequences of order n.

The programs for A004076, there is no canonical definition to state claims against.
-/

/-! ## A004076.P1537429061512360463

`A330475(n)%A330475(floor(sqrt(4*n+1)))`
-/

namespace A004076.P1537429061512360463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330475 n) (A330475 (Nat.sqrt (4 * n + 1)))

end

end A004076.P1537429061512360463

/-! ## A004076.P10058923448764325115

`A055641(A003783(n))*A148315(n)`
-/

namespace A004076.P10058923448764325115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A003783 n).toNat * A148315 n

end

end A004076.P10058923448764325115

/-! ## A004076.P16611484119575765530

`A363928(A202814(n)+A109466(n+1))`
-/

namespace A004076.P16611484119575765530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (A202814 n + A109466 (n + 1)).toNat

end

end A004076.P16611484119575765530

/-!
# A004077: Number of extended Skolem sequences of order n.

The programs for A004077, there is no canonical definition to state claims against.
-/

/-! ## A004077.P8944738200876037710

`A000010(A353391(n+2)+A353390(2*(n+2)))`
-/

namespace A004077.P8944738200876037710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A353391 (n + 2) + A353390 (2 * (n + 2))).toNat

end

end A004077.P8944738200876037710

/-!
# A004078: Number of Tuscan squares of order n.

The programs for A004078, there is no canonical definition to state claims against.
-/

/-! ## A004078.P1325364039975091799

`46/2^(a(n-1)-n)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A004078.P1325364039975091799
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 0, 1, 0] fun n a =>
  46 / (2 : ℝ) ^ (a (n - 1) - (n : ℝ))

end

end A004078.P1325364039975091799

/-!
# A004080: Least k such that H(k) >= n, where H(k) is the harmonic number Sum_{i=1..k} 1/i.

The programs for A004080, the canonical program `A004080.P11497575846285057357` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004080 has offset 0).

The definition of A004080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004080.P5467284555246610369

`xor(C(3, n²), round(exp(n-γ)))`
-/

namespace A004080.P5467284555246610369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose 3 (n ^ 2) : ℤ) (SequenceMachineLib.roundAway (Real.exp ((n : ℝ) - Real.eulerMascheroniConstant)))

end

end A004080.P5467284555246610369

namespace A004080

/-- `xor(C(3, n²), round(exp(n-γ)))` -/
def P5467284555246610369.Spec : Prop :=
  ∀ n, P5467284555246610369.a n = A004080 n

end A004080

/-! ## A004080.P2153166269071767625

`round(exp(n-γ))-char[n^17]`
-/

namespace A004080.P2153166269071767625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp ((n : ℝ) - Real.eulerMascheroniConstant)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A004080.P2153166269071767625

namespace A004080

/-- `round(exp(n-γ))-char[n^17]` -/
def P2153166269071767625.Spec : Prop :=
  ∀ n, P2153166269071767625.a n = A004080 n

end A004080

/-! ## A004080.P18031422461573889795

`abs(C(3, n²)-round(exp(n-γ)))`
-/

namespace A004080.P18031422461573889795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose 3 (n ^ 2) : ℤ) - SequenceMachineLib.roundAway (Real.exp ((n : ℝ) - Real.eulerMascheroniConstant))|

end

end A004080.P18031422461573889795

namespace A004080

/-- `abs(C(3, n²)-round(exp(n-γ)))` -/
def P18031422461573889795.Spec : Prop :=
  ∀ n, P18031422461573889795.a n = A004080 n

end A004080

/-! ## A004080.P11348560984508749273

`xor(round(exp(n-γ)), A169585(n))`
-/

namespace A004080.P11348560984508749273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (Real.exp ((n : ℝ) - Real.eulerMascheroniConstant))) (A169585 n)

end

end A004080.P11348560984508749273

namespace A004080

/-- `xor(round(exp(n-γ)), A169585(n))` -/
def P11348560984508749273.Spec : Prop :=
  ∀ n, P11348560984508749273.a n = A004080 n

end A004080

/-! ## A004080.P17265838413966719773

`floor(A002387(n)/A141044(n))`
-/

namespace A004080.P17265838413966719773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002387 n : ℚ) / (A141044 n : ℚ)⌋

end

end A004080.P17265838413966719773

namespace A004080

/-- `floor(A002387(n)/A141044(n))` -/
def P17265838413966719773.Spec : Prop :=
  ∀ n, P17265838413966719773.a n = A004080 n

end A004080

/-! ## A004080.P8240267622540527873

`A002387(char[1]+n)%A024581(n)`
-/

namespace A004080.P8240267622540527873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002387 ((if ∃ j, f1 j = n then 1 else 0) + n)) (A024581 n)

end

end A004080.P8240267622540527873

namespace A004080

/-- `A002387(char[1]+n)%A024581(n)` -/
def P8240267622540527873.Spec : Prop :=
  ∀ n, P8240267622540527873.a n = A004080 n

end A004080

/-! ## A004080.P11497575846285057357

`record[A002387(A028242(n))-A000038(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004080

/-- `record[A002387(A028242(n))-A000038(n)]` -/
def P11497575846285057357.Spec : Prop :=
  ∀ n, P11497575846285057357.a n = A004080 n

theorem P11497575846285057357.correct : P11497575846285057357.Spec := by
  intro n
  simp only [A004080]

end A004080

/-!
# A004081: a(n) = n-th positive integer such that only one integer lies between exp(s(m)) and exp(s(m+1)), where s(m) = 1 + 1/2 + 1/3 + . . . + 1/m.

The programs for A004081, there is no canonical definition to state claims against.
-/

/-! ## A004081.P15954538755087047404

`eq[A215000(n+1), A215001(A138153(n+1))]`
-/

namespace A004081.P15954538755087047404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215001 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004081.P15954538755087047404

/-! ## A004081.P17066294160544930541

`eq[A215001(A138153(n+1))+1, A215001(n+1)]`
-/

namespace A004081.P17066294160544930541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215001 (A138153 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215001 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004081.P17066294160544930541

/-! ## A004081.P9431664852623698781

`eq[2, A226895(n+1)]+1`
-/

namespace A004081.P9431664852623698781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226895 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004081.P9431664852623698781

/-! ## A004081.P14372338164074349920

`lt[A226895(round(acot(n)+n)), 3]`
-/

namespace A004081.P14372338164074349920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226895 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004081.P14372338164074349920

/-! ## A004081.P14560698268522895175

`eq[2, A226895(A028310(n))]`
-/

namespace A004081.P14560698268522895175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226895 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004081.P14560698268522895175

/-! ## A004081.P18115483509996631688

`A020725(eq[2, A226895(n+1)])`
-/

namespace A004081.P18115483509996631688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004081.P18115483509996631688

/-! ## A004081.P893175371641324680

`A065475(eq[2, A226895(n+1)])`
-/

namespace A004081.P893175371641324680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004081.P893175371641324680

/-! ## A004081.P8931231207409149326

`eq[2, A226895(A233583(n+1))]`
-/

namespace A004081.P8931231207409149326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226895 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004081.P8931231207409149326

/-! ## A004081.P3165559924585963102

`eq[2, A226895(A065033(2*n))]`
-/

namespace A004081.P3165559924585963102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226895 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004081.P3165559924585963102

/-! ## A004081.P5167834889683597751

`eq[2, A226895(A123108(2*n))]`
-/

namespace A004081.P5167834889683597751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226895 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004081.P5167834889683597751

/-! ## A004081.P17198318615439108361

`eq[2, A226895(A000007(n)+n)]`
-/

namespace A004081.P17198318615439108361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226895 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004081.P17198318615439108361

/-! ## A004081.P3411326992679950809

`eq[2, A226895(A138153(n+1))]`
-/

namespace A004081.P3411326992679950809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226895 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004081.P3411326992679950809

/-! ## A004081.P11618291931040014165

`lt[A226895(n+2), A226895(2*(n+1))]+2`
-/

namespace A004081.P11618291931040014165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226895 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226895 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A004081.P11618291931040014165

/-!
# A004082: Numbers k such that sin(k-1) <= 0 and sin(k) > 0.

The programs for A004082, the canonical program `A004082.P11339627534885608868` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004082 has offset 1).

The definition of A004082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004082.P11339627534885608868

`A038130(n)+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004082

/-- `A038130(n)+1` -/
def P11339627534885608868.Spec : Prop :=
  ∀ n, P11339627534885608868.a n = A004082 (n + 1)

theorem P11339627534885608868.correct : P11339627534885608868.Spec := by
  intro n
  simp only [A004082, Nat.add_sub_cancel]

end A004082

/-! ## A004082.P10229848586516479895

`comp[ceil(sin(n)+n)]`
-/

namespace A004082.P10229848586516479895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) + (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004082.P10229848586516479895

namespace A004082

/-- `comp[ceil(sin(n)+n)]` -/
def P10229848586516479895.Spec : Prop :=
  ∀ n, (P10229848586516479895.a n : ℤ) = A004082 (n + 1)

end A004082

/-! ## A004082.P6605441405682385158

`floor(2*π*n)+1`
-/

namespace A004082.P6605441405682385158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.pi * (n : ℝ))⌋ + 1

end

end A004082.P6605441405682385158

namespace A004082

/-- `floor(2*π*n)+1` -/
def P6605441405682385158.Spec : Prop :=
  ∀ n, P6605441405682385158.a n = A004082 (n + 1)

end A004082

/-! ## A004082.P16927904405675449132

`abs(or(1, -n)%2-floor(2*π*n))`
-/

namespace A004082.P16927904405675449132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (Int.lor 1 (-(n : ℤ))) 2 - ⌊2 * (Real.pi * (n : ℝ))⌋|

end

end A004082.P16927904405675449132

namespace A004082

/-- `abs(or(1, -n)%2-floor(2*π*n))` -/
def P16927904405675449132.Spec : Prop :=
  ∀ n, P16927904405675449132.a n = A004082 (n + 1)

end A004082

/-! ## A004082.P4476576570868739300

`ceil(atan(A008574(n)²)*A008574(n))`
-/

namespace A004082.P4476576570868739300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A008574 n ^ 2 : ℝ) * (A008574 n : ℝ)⌉

end

end A004082.P4476576570868739300

namespace A004082

/-- `ceil(atan(A008574(n)²)*A008574(n))` -/
def P4476576570868739300.Spec : Prop :=
  ∀ n, P4476576570868739300.a n = A004082 (n + 1)

end A004082

/-! ## A004082.P6193384974844588056

`lt[ceil(sin(n-1)), sin(n)]`
-/

namespace A004082.P6193384974844588056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin ((n : ℤ) - 1 : ℝ)⌉

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A004082.P6193384974844588056

namespace A004082

/-- `lt[ceil(sin(n-1)), sin(n)]` -/
def P6193384974844588056.Spec : Prop :=
  ∀ n, (P6193384974844588056.a n : ℤ) = A004082 (n + 1)

end A004082

/-! ## A004082.P16128235873647436703

`A004084(Δ[n²])`
-/

namespace A004082.P16128235873647436703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A004082.P16128235873647436703

namespace A004082

/-- `A004084(Δ[n²])` -/
def P16128235873647436703.Spec : Prop :=
  ∀ n, P16128235873647436703.a n = A004082 (n + 1)

end A004082

/-! ## A004082.P15543944580623226426

`ceil(atan(1)*A008574(2*n))`
-/

namespace A004082.P15543944580623226426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (1 : ℝ) * (A008574 (2 * n) : ℝ)⌉

end

end A004082.P15543944580623226426

namespace A004082

/-- `ceil(atan(1)*A008574(2*n))` -/
def P15543944580623226426.Spec : Prop :=
  ∀ n, P15543944580623226426.a n = A004082 (n + 1)

end A004082

/-! ## A004082.P17865684763786543068

`∩[A004084(n+1), A277093(n+1)]`
-/

namespace A004082.P17865684763786543068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004082.P17865684763786543068

namespace A004082

/-- `∩[A004084(n+1), A277093(n+1)]` -/
def P17865684763786543068.Spec : Prop :=
  ∀ n, (P17865684763786543068.a n : ℤ) = A004082 (n + 1)

end A004082

/-! ## A004082.P6066763788307064785

`∩[A004084(n+1), A277137(n+1)]`
-/

namespace A004082.P6066763788307064785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004082.P6066763788307064785

namespace A004082

/-- `∩[A004084(n+1), A277137(n+1)]` -/
def P6066763788307064785.Spec : Prop :=
  ∀ n, (P6066763788307064785.a n : ℤ) = A004082 (n + 1)

end A004082

/-! ## A004082.P10387560698586543144

`∩[A004084(n+1), A332480(n+1)]`
-/

namespace A004082.P10387560698586543144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004082.P10387560698586543144

namespace A004082

/-- `∩[A004084(n+1), A332480(n+1)]` -/
def P10387560698586543144.Spec : Prop :=
  ∀ n, (P10387560698586543144.a n : ℤ) = A004082 (n + 1)

end A004082

/-! ## A004082.P4487737717756253088

`∩[A004084(n+1), A070752(n+1)]`
-/

namespace A004082.P4487737717756253088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004082.P4487737717756253088

namespace A004082

/-- `∩[A004084(n+1), A070752(n+1)]` -/
def P4487737717756253088.Spec : Prop :=
  ∀ n, (P4487737717756253088.a n : ℤ) = A004082 (n + 1)

end A004082

/-! ## A004082.P9816231391433977651

`∩[A004084(n+1), A246413(n+1)]`
-/

namespace A004082.P9816231391433977651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004082.P9816231391433977651

namespace A004082

/-- `∩[A004084(n+1), A246413(n+1)]` -/
def P9816231391433977651.Spec : Prop :=
  ∀ n, (P9816231391433977651.a n : ℤ) = A004082 (n + 1)

end A004082

/-! ## A004082.P13501846924146395592

`∩[A004084(n+1), A026309(n+1)]`
-/

namespace A004082.P13501846924146395592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004082.P13501846924146395592

namespace A004082

/-- `∩[A004084(n+1), A026309(n+1)]` -/
def P13501846924146395592.Spec : Prop :=
  ∀ n, (P13501846924146395592.a n : ℤ) = A004082 (n + 1)

end A004082

/-! ## A004082.P348336561371640415

`∩[A004084(n+1), A026311(n+1)]`
-/

namespace A004082.P348336561371640415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004082.P348336561371640415

namespace A004082

/-- `∩[A004084(n+1), A026311(n+1)]` -/
def P348336561371640415.Spec : Prop :=
  ∀ n, (P348336561371640415.a n : ℤ) = A004082 (n + 1)

end A004082

/-! ## A004082.P3572431518358614439

`∩[A004084(n+1), A131503(n+1)]`
-/

namespace A004082.P3572431518358614439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004082.P3572431518358614439

namespace A004082

/-- `∩[A004084(n+1), A131503(n+1)]` -/
def P3572431518358614439.Spec : Prop :=
  ∀ n, (P3572431518358614439.a n : ℤ) = A004082 (n + 1)

end A004082

/-! ## A004082.P17079890359247497057

`A258048(A063459(2*n))`
-/

namespace A004082.P17079890359247497057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258048 (A063459 (2 * n)).toNat

end

end A004082.P17079890359247497057

namespace A004082

/-- `A258048(A063459(2*n))` -/
def P17079890359247497057.Spec : Prop :=
  ∀ n, P17079890359247497057.a n = A004082 (n + 1)

end A004082

/-! ## A004082.P7066004785510862199

`A054386(A063459(2*n)+1)`
-/

namespace A004082.P7066004785510862199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (A063459 (2 * n) + 1).toNat

end

end A004082.P7066004785510862199

namespace A004082

/-- `A054386(A063459(2*n)+1)` -/
def P7066004785510862199.Spec : Prop :=
  ∀ n, P7066004785510862199.a n = A004082 (n + 1)

end A004082

/-! ## A004082.P18299567033476542491

`∩[A004084(n+1), A332484(n+1)]`
-/

namespace A004082.P18299567033476542491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004082.P18299567033476542491

namespace A004082

/-- `∩[A004084(n+1), A332484(n+1)]` -/
def P18299567033476542491.Spec : Prop :=
  ∀ n, (P18299567033476542491.a n : ℤ) = A004082 (n + 1)

end A004082

/-! ## A004082.P11248255703558387571

`filter[A004084(n+1), A302203(#)]`
-/

namespace A004082.P11248255703558387571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302203 (f1 j).toNat = 1) n)

end

end A004082.P11248255703558387571

namespace A004082

/-- `filter[A004084(n+1), A302203(#)]` -/
def P11248255703558387571.Spec : Prop :=
  ∀ n, P11248255703558387571.a n = A004082 (n + 1)

end A004082

/-!
# A004083: Numbers k such that cos(k-1) <= 0 and cos(k) > 0.

The programs for A004083, the canonical program `A004083.P6881247767696671398` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004083 has offset 1).

The definition of A004083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004083.P6881247767696671398

`record[ceil(xor(3, n)*acos(0))]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004083

/-- `record[ceil(xor(3, n)*acos(0))]` -/
def P6881247767696671398.Spec : Prop :=
  ∀ n, P6881247767696671398.a n = A004083 (n + 1)

theorem P6881247767696671398.correct : P6881247767696671398.Spec := by
  intro n
  simp only [A004083, Nat.add_sub_cancel]

end A004083

/-! ## A004083.P15832636421355269267

`ceil((4*n+3)*acos(0))`
-/

namespace A004083.P15832636421355269267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 * n + 3 : ℝ) * Real.arccos (0 : ℝ)⌉

end

end A004083.P15832636421355269267

namespace A004083

/-- `ceil((4*n+3)*acos(0))` -/
def P15832636421355269267.Spec : Prop :=
  ∀ n, P15832636421355269267.a n = A004083 (n + 1)

end A004083

/-! ## A004083.P11660655954135616577

`ceil((4*n+3)*asin(1))`
-/

namespace A004083.P11660655954135616577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 * n + 3 : ℝ) * Real.arcsin (1 : ℝ)⌉

end

end A004083.P11660655954135616577

namespace A004083

/-- `ceil((4*n+3)*asin(1))` -/
def P11660655954135616577.Spec : Prop :=
  ∀ n, P11660655954135616577.a n = A004083 (n + 1)

end A004083

/-! ## A004083.P5750365308185421620

`ceil(acot(1)*(8*n+6))`
-/

namespace A004083.P5750365308185421620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (1 : ℝ) * (8 * n + 6 : ℝ)⌉

end

end A004083.P5750365308185421620

namespace A004083

/-- `ceil(acot(1)*(8*n+6))` -/
def P5750365308185421620.Spec : Prop :=
  ∀ n, P5750365308185421620.a n = A004083 (n + 1)

end A004083

/-! ## A004083.P8750497402207371335

`comp[floor(cos(n+1)+n)]+2`
-/

namespace A004083.P8750497402207371335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (n + 1 : ℝ) + (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A004083.P8750497402207371335

namespace A004083

/-- `comp[floor(cos(n+1)+n)]+2` -/
def P8750497402207371335.Spec : Prop :=
  ∀ n, (P8750497402207371335.a n : ℤ) = A004083 (n + 1)

end A004083

/-! ## A004083.P9060023920213100926

`comp[ceil(cos(n)+n-1)]+1`
-/

namespace A004083.P9060023920213100926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (n : ℝ) + ((n : ℤ) - 1 : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A004083.P9060023920213100926

namespace A004083

/-- `comp[ceil(cos(n)+n-1)]+1` -/
def P9060023920213100926.Spec : Prop :=
  ∀ n, (P9060023920213100926.a n : ℤ) = A004083 (n + 1)

end A004083

/-! ## A004083.P3023059384728484192

`floor((Δ[(2*n)²]+2)*atan(1))+1`
-/

namespace A004083.P3023059384728484192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2 : ℝ) * Real.arctan (1 : ℝ)⌋ + 1

end

end A004083.P3023059384728484192

namespace A004083

/-- `floor((Δ[(2*n)²]+2)*atan(1))+1` -/
def P3023059384728484192.Spec : Prop :=
  ∀ n, P3023059384728484192.a n = A004083 (n + 1)

end A004083

/-! ## A004083.P12767681963175886604

`A246394(n)+1`
-/

namespace A004083.P12767681963175886604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246394 n + 1

end

end A004083.P12767681963175886604

namespace A004083

/-- `A246394(n)+1` -/
def P12767681963175886604.Spec : Prop :=
  ∀ n, P12767681963175886604.a n = A004083 (n + 1)

theorem P12767681963175886604.correct : P12767681963175886604.Spec := by
  intro n
  simp only [A004083, Nat.add_sub_cancel, A004083.P12767681963175886604.a, A004083.P6881247767696671398.f1, A004083.P6881247767696671398.a, A246394, A246394.P5096704532663512882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004083

/-! ## A004083.P2108963334409978803

`lt[ceil(cos(1-n)), cos(n)]`
-/

namespace A004083.P2108963334409978803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (1 - (n : ℤ) : ℝ)⌉

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A004083.P2108963334409978803

namespace A004083

/-- `lt[ceil(cos(1-n)), cos(n)]` -/
def P2108963334409978803.Spec : Prop :=
  ∀ n, (P2108963334409978803.a n : ℤ) = A004083 (n + 1)

end A004083

/-! ## A004083.P4465942297348839634

`lt[cos(n), floor(cos(n+1))]+1`
-/

namespace A004083.P4465942297348839634
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A004083.P4465942297348839634

namespace A004083

/-- `lt[cos(n), floor(cos(n+1))]+1` -/
def P4465942297348839634.Spec : Prop :=
  ∀ n, (P4465942297348839634.a n : ℤ) = A004083 (n + 1)

end A004083

/-! ## A004083.P8989588421403246543

`A257984(2*(n+1))`
-/

namespace A004083.P8989588421403246543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 (2 * (n + 1))

end

end A004083.P8989588421403246543

namespace A004083

/-- `A257984(2*(n+1))` -/
def P8989588421403246543.Spec : Prop :=
  ∀ n, P8989588421403246543.a n = A004083 (n + 1)

end A004083

/-! ## A004083.P10060428393265900096

`A277138(Δ[n²])+2`
-/

namespace A004083.P10060428393265900096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A004083.P10060428393265900096

namespace A004083

/-- `A277138(Δ[n²])+2` -/
def P10060428393265900096.Spec : Prop :=
  ∀ n, P10060428393265900096.a n = A004083 (n + 1)

end A004083

/-! ## A004083.P6284011803053151595

`A062389(2*(n+1))+1`
-/

namespace A004083.P6284011803053151595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (2 * (n + 1)) + 1

end

end A004083.P6284011803053151595

namespace A004083

/-- `A062389(2*(n+1))+1` -/
def P6284011803053151595.Spec : Prop :=
  ∀ n, P6284011803053151595.a n = A004083 (n + 1)

end A004083

/-! ## A004083.P13264699906972192441

`∩[A257984(n+1), A277095(n+1)]`
-/

namespace A004083.P13264699906972192441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004083.P13264699906972192441

namespace A004083

/-- `∩[A257984(n+1), A277095(n+1)]` -/
def P13264699906972192441.Spec : Prop :=
  ∀ n, (P13264699906972192441.a n : ℤ) = A004083 (n + 1)

end A004083

/-! ## A004083.P6413635550816755339

`∩[A257984(n+1), A277136(n+1)]`
-/

namespace A004083.P6413635550816755339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004083.P6413635550816755339

namespace A004083

/-- `∩[A257984(n+1), A277136(n+1)]` -/
def P6413635550816755339.Spec : Prop :=
  ∀ n, (P6413635550816755339.a n : ℤ) = A004083 (n + 1)

end A004083

/-! ## A004083.P13139216361909506453

`∩[A257984(n+1), A332482(n+1)]`
-/

namespace A004083.P13139216361909506453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004083.P13139216361909506453

namespace A004083

/-- `∩[A257984(n+1), A332482(n+1)]` -/
def P13139216361909506453.Spec : Prop :=
  ∀ n, (P13139216361909506453.a n : ℤ) = A004083 (n + 1)

end A004083

/-! ## A004083.P15183078427755275542

`∩[A257984(n+1), A246395(n)]`
-/

namespace A004083.P15183078427755275542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004083.P15183078427755275542

namespace A004083

/-- `∩[A257984(n+1), A246395(n)]` -/
def P15183078427755275542.Spec : Prop :=
  ∀ n, (P15183078427755275542.a n : ℤ) = A004083 (n + 1)

end A004083

/-! ## A004083.P13497243871002678872

`A246408(3*(n+1))+1`
-/

namespace A004083.P13497243871002678872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (3 * (n + 1)) + 1

end

end A004083.P13497243871002678872

namespace A004083

/-- `A246408(3*(n+1))+1` -/
def P13497243871002678872.Spec : Prop :=
  ∀ n, P13497243871002678872.a n = A004083 (n + 1)

end A004083

/-! ## A004083.P8236681646304468492

`∩[A026309(n+1), A257984(n+1)]`
-/

namespace A004083.P8236681646304468492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004083.P8236681646304468492

namespace A004083

/-- `∩[A026309(n+1), A257984(n+1)]` -/
def P8236681646304468492.Spec : Prop :=
  ∀ n, (P8236681646304468492.a n : ℤ) = A004083 (n + 1)

end A004083

/-! ## A004083.P9182088972130164986

`∩[A026312(n+1), A257984(n+1)]`
-/

namespace A004083.P9182088972130164986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004083.P9182088972130164986

namespace A004083

/-- `∩[A026312(n+1), A257984(n+1)]` -/
def P9182088972130164986.Spec : Prop :=
  ∀ n, (P9182088972130164986.a n : ℤ) = A004083 (n + 1)

end A004083

/-!
# A004084: a(n) = n-th positive integer k such that tan(k-1) <= 0 and tan(k) > 0.

The programs for A004084, the canonical program `A004084.P5990171731736367185` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004084 has offset 1).

The definition of A004084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004084.P14852416372485893531

`floor(π*n)+1`
-/

namespace A004084.P14852416372485893531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n : ℝ)⌋ + 1

end

end A004084.P14852416372485893531

namespace A004084

/-- `floor(π*n)+1` -/
def P14852416372485893531.Spec : Prop :=
  ∀ n, P14852416372485893531.a n = A004084 (n + 1)

end A004084

/-! ## A004084.P1028189268114004614

`abs(xor(-1, floor(π*n)))`
-/

namespace A004084.P1028189268114004614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) ⌊Real.pi * (n : ℝ)⌋|

end

end A004084.P1028189268114004614

namespace A004084

/-- `abs(xor(-1, floor(π*n)))` -/
def P1028189268114004614.Spec : Prop :=
  ∀ n, P1028189268114004614.a n = A004084 (n + 1)

end A004084

/-! ## A004084.P13976409891228753616

`-xor(-1, floor(π*n))`
-/

namespace A004084.P13976409891228753616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) ⌊Real.pi * (n : ℝ)⌋

end

end A004084.P13976409891228753616

namespace A004084

/-- `-xor(-1, floor(π*n))` -/
def P13976409891228753616.Spec : Prop :=
  ∀ n, P13976409891228753616.a n = A004084 (n + 1)

end A004084

/-! ## A004084.P8662119816378076479

`eq[1, ceil(tan(n)/tan(1))]`
-/

namespace A004084.P8662119816378076479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (n : ℝ) / Real.tan (1 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004084.P8662119816378076479

namespace A004084

/-- `eq[1, ceil(tan(n)/tan(1))]` -/
def P8662119816378076479.Spec : Prop :=
  ∀ n, (P8662119816378076479.a n : ℤ) = A004084 (n + 1)

end A004084

/-! ## A004084.P13669610206589498916

`eq[1, ceil(tan(n)*cot(1))]`
-/

namespace A004084.P13669610206589498916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (n : ℝ) * Real.cot (1 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004084.P13669610206589498916

namespace A004084

/-- `eq[1, ceil(tan(n)*cot(1))]` -/
def P13669610206589498916.Spec : Prop :=
  ∀ n, (P13669610206589498916.a n : ℤ) = A004084 (n + 1)

end A004084

/-! ## A004084.P11540037432377207057

`comp[ceil(sin(2*n)+n)]`
-/

namespace A004084.P11540037432377207057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (2 * n : ℝ) + (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004084.P11540037432377207057

namespace A004084

/-- `comp[ceil(sin(2*n)+n)]` -/
def P11540037432377207057.Spec : Prop :=
  ∀ n, (P11540037432377207057.a n : ℤ) = A004084 (n + 1)

end A004084

/-! ## A004084.P7192579479275085865

`comp[floor(sin(a(n-1)+n))+n]` with `a(0)=3`
-/

namespace A004084.P7192579479275085865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  ⌊Real.sin (f1 (n - 1) + (n : ℤ) : ℝ)⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004084.P7192579479275085865

namespace A004084

/-- `comp[floor(sin(a(n-1)+n))+n]` -/
def P7192579479275085865.Spec : Prop :=
  ∀ n, (P7192579479275085865.a n : ℤ) = A004084 (n + 1)

end A004084

/-! ## A004084.P7490584677556941712

`ceil(atan(1)*A008574(n))`
-/

namespace A004084.P7490584677556941712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (1 : ℝ) * (A008574 n : ℝ)⌉

end

end A004084.P7490584677556941712

namespace A004084

/-- `ceil(atan(1)*A008574(n))` -/
def P7490584677556941712.Spec : Prop :=
  ∀ n, P7490584677556941712.a n = A004084 (n + 1)

end A004084

/-! ## A004084.P1978839449853528480

`ceil(1/acot(A022844(n)))`
-/

namespace A004084.P1978839449853528480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot (A022844 n : ℝ)⌉

end

end A004084.P1978839449853528480

namespace A004084

/-- `ceil(1/acot(A022844(n)))` -/
def P1978839449853528480.Spec : Prop :=
  ∀ n, P1978839449853528480.a n = A004084 (n + 1)

end A004084

/-! ## A004084.P5990171731736367185

`ceil(A004082(n+1)/2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004084

/-- `ceil(A004082(n+1)/2)` -/
def P5990171731736367185.Spec : Prop :=
  ∀ n, P5990171731736367185.a n = A004084 (n + 1)

theorem P5990171731736367185.correct : P5990171731736367185.Spec := by
  intro n
  simp only [A004084, Nat.add_sub_cancel]

end A004084

/-! ## A004084.P12010418889490302531

`A000027(A022844(n)+1)`
-/

namespace A004084.P12010418889490302531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A022844 n + 1).toNat

end

end A004084.P12010418889490302531

namespace A004084

/-- `A000027(A022844(n)+1)` -/
def P12010418889490302531.Spec : Prop :=
  ∀ n, P12010418889490302531.a n = A004084 (n + 1)

end A004084

/-! ## A004084.P2353199552286506085

`xor(A000007(n), A121381(n))`
-/

namespace A004084.P2353199552286506085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A121381 n)

end

end A004084.P2353199552286506085

namespace A004084

/-- `xor(A000007(n), A121381(n))` -/
def P2353199552286506085.Spec : Prop :=
  ∀ n, P2353199552286506085.a n = A004084 (n + 1)

end A004084

/-! ## A004084.P2800370423347453438

`ceil(acot(1)*A004277(2*n))`
-/

namespace A004084.P2800370423347453438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (1 : ℝ) * (A004277 (2 * n) : ℝ)⌉

end

end A004084.P2800370423347453438

namespace A004084

/-- `ceil(acot(1)*A004277(2*n))` -/
def P2800370423347453438.Spec : Prop :=
  ∀ n, P2800370423347453438.a n = A004084 (n + 1)

end A004084

/-! ## A004084.P3831136249035913115

`(A132222(2*n)+1)/2`
-/

namespace A004084.P3831136249035913115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132222 (2 * n) + 1 : ℚ) / 2

end

end A004084.P3831136249035913115

namespace A004084

/-- `(A132222(2*n)+1)/2` -/
def P3831136249035913115.Spec : Prop :=
  ∀ n, P3831136249035913115.a n = (A004084 (n + 1) : ℚ)

end A004084

/-! ## A004084.P5893059035058584656

`A258048(A063459(n))`
-/

namespace A004084.P5893059035058584656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258048 (A063459 n).toNat

end

end A004084.P5893059035058584656

namespace A004084

/-- `A258048(A063459(n))` -/
def P5893059035058584656.Spec : Prop :=
  ∀ n, P5893059035058584656.a n = A004084 (n + 1)

end A004084

/-! ## A004084.P6885467177864411994

`A054386(A063459(n)+1)`
-/

namespace A004084.P6885467177864411994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (A063459 n + 1).toNat

end

end A004084.P6885467177864411994

namespace A004084

/-- `A054386(A063459(n)+1)` -/
def P6885467177864411994.Spec : Prop :=
  ∀ n, P6885467177864411994.a n = A004084 (n + 1)

end A004084

/-! ## A004084.P2253070402027321345

`A258048(A022844(n)-n)`
-/

namespace A004084.P2253070402027321345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258048 (A022844 n - (n : ℤ)).toNat

end

end A004084.P2253070402027321345

namespace A004084

/-- `A258048(A022844(n)-n)` -/
def P2253070402027321345.Spec : Prop :=
  ∀ n, P2253070402027321345.a n = A004084 (n + 1)

end A004084

/-! ## A004084.P18071368900739345447

`∏{d}[ceil(π*n), A014963(#)]`
-/

namespace A004084.P18071368900739345447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A004084.P18071368900739345447

namespace A004084

/-- `∏{d}[ceil(π*n), A014963(#)]` -/
def P18071368900739345447.Spec : Prop :=
  ∀ n, P18071368900739345447.a n = A004084 (n + 1)

end A004084

/-! ## A004084.P1758246870004594214

`A028310(A121381(n))`
-/

namespace A004084.P1758246870004594214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A121381 n).toNat

end

end A004084.P1758246870004594214

namespace A004084

/-- `A028310(A121381(n))` -/
def P1758246870004594214.Spec : Prop :=
  ∀ n, P1758246870004594214.a n = A004084 (n + 1)

end A004084

/-!
# A004085: Sum of digits of Euler totient function of n.

The programs for A004085, the canonical program `A004085.P11876971383816228899` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004085 has offset 1).

The definition of A004085 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004085.P11876971383816228899

`A007953(A000010(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A004085

/-- `A007953(A000010(n+1))` -/
def P11876971383816228899.Spec : Prop :=
  ∀ n, P11876971383816228899.a n = A004085 (n + 1)

theorem P11876971383816228899.correct : P11876971383816228899.Spec := by
  intro n
  simp only [A004085, Nat.add_sub_cancel]

end A004085

/-! ## A004085.P7642286515677788177

`∑{digits}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #]`
-/

namespace A004085.P7642286515677788177
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A004085.P7642286515677788177

namespace A004085

/-- `∑{digits}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #]` -/
def P7642286515677788177.Spec : Prop :=
  ∀ n, (P7642286515677788177.a n : ℤ) = A004085 (n + 1)

end A004085

/-! ## A004085.P1011887722960685347

`∑{digits}[A000010(n+1), #]`
-/

namespace A004085.P1011887722960685347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004085.P1011887722960685347

namespace A004085

/-- `∑{digits}[A000010(n+1), #]` -/
def P1011887722960685347.Spec : Prop :=
  ∀ n, (P1011887722960685347.a n : ℤ) = A004085 (n + 1)

end A004085

/-! ## A004085.P11264889275827522540

`∑{digits}[sqrt(A127473(n+1)), #]`
-/

namespace A004085.P11264889275827522540
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A004085.P11264889275827522540

namespace A004085

/-- `∑{digits}[sqrt(A127473(n+1)), #]` -/
def P11264889275827522540.Spec : Prop :=
  ∀ n, (P11264889275827522540.a n : ℤ) = A004085 (n + 1)

end A004085

/-! ## A004085.P9592644769818333018

`∑{digits}[A109606(n+1)+1, #]`
-/

namespace A004085.P9592644769818333018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004085.P9592644769818333018

namespace A004085

/-- `∑{digits}[A109606(n+1)+1, #]` -/
def P9592644769818333018.Spec : Prop :=
  ∀ n, (P9592644769818333018.a n : ℤ) = A004085 (n + 1)

end A004085

/-! ## A004085.P15246717361100420931

`∑{digits}[1-A039649(n+1), #]`
-/

namespace A004085.P15246717361100420931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A039649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004085.P15246717361100420931

namespace A004085

/-- `∑{digits}[1-A039649(n+1), #]` -/
def P15246717361100420931.Spec : Prop :=
  ∀ n, (P15246717361100420931.a n : ℤ) = A004085 (n + 1)

end A004085

/-! ## A004085.P205425675734271152

`∑{digits}[A349137(2*n+1), #]`
-/

namespace A004085.P205425675734271152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004085.P205425675734271152

namespace A004085

/-- `∑{digits}[A349137(2*n+1), #]` -/
def P205425675734271152.Spec : Prop :=
  ∀ n, (P205425675734271152.a n : ℤ) = A004085 (n + 1)

end A004085

/-! ## A004085.P6341054729593999171

`∑{digits}[1-A051953(n+1)+n, #]`
-/

namespace A004085.P6341054729593999171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051953 (n + 1) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004085.P6341054729593999171

namespace A004085

/-- `∑{digits}[1-A051953(n+1)+n, #]` -/
def P6341054729593999171.Spec : Prop :=
  ∀ n, (P6341054729593999171.a n : ℤ) = A004085 (n + 1)

end A004085

/-! ## A004085.P240735437254129653

`∑{digits}[∏{p}[n+1, #-1]*A003557(n+1), #]`
-/

namespace A004085.P240735437254129653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)) * A003557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004085.P240735437254129653

namespace A004085

/-- `∑{digits}[∏{p}[n+1, #-1]*A003557(n+1), #]` -/
def P240735437254129653.Spec : Prop :=
  ∀ n, (P240735437254129653.a n : ℤ) = A004085 (n + 1)

end A004085

/-! ## A004085.P2633435297710432216

`∑{digits}[∑{d}[n+1, #*A008683((n+1)/#)], #]`
-/

namespace A004085.P2633435297710432216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004085.P2633435297710432216

namespace A004085

/-- `∑{digits}[∑{d}[n+1, #*A008683((n+1)/#)], #]` -/
def P2633435297710432216.Spec : Prop :=
  ∀ n, (P2633435297710432216.a n : ℤ) = A004085 (n + 1)

end A004085

/-! ## A004085.P5232997265502915604

`A007953((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A004085.P5232997265502915604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A004085.P5232997265502915604

namespace A004085

/-- `A007953((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P5232997265502915604.Spec : Prop :=
  ∀ n, P5232997265502915604.a n = A004085 (n + 1)

end A004085

/-! ## A004085.P4637837919427435710

`A007953(Δ[A002088(n)])`
-/

namespace A004085.P4637837919427435710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f1 (n + 1) - f1 n).toNat

end

end A004085.P4637837919427435710

namespace A004085

/-- `A007953(Δ[A002088(n)])` -/
def P4637837919427435710.Spec : Prop :=
  ∀ n, P4637837919427435710.a n = A004085 (n + 1)

end A004085

/-! ## A004085.P10966163412392838404

`A007953(A109606(n+1)+1)`
-/

namespace A004085.P10966163412392838404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A109606 (n + 1) + 1).toNat

end

end A004085.P10966163412392838404

namespace A004085

/-- `A007953(A109606(n+1)+1)` -/
def P10966163412392838404.Spec : Prop :=
  ∀ n, P10966163412392838404.a n = A004085 (n + 1)

theorem P10966163412392838404.correct : P10966163412392838404.Spec := by
  intro n
  simp only [A004085, Nat.add_sub_cancel, A004085.P10966163412392838404.a, A004085.P11876971383816228899.a, A000010, A000010.P4673923239450215316.a, A007953, A007953.P3472751987379697826.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A054899, A054899.P10770181254942084517.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004085

/-! ## A004085.P11521638846657491633

`A007953(A002088(n+1)-A002088(n))`
-/

namespace A004085.P11521638846657491633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A002088 (n + 1) - A002088 n).toNat

end

end A004085.P11521638846657491633

namespace A004085

/-- `A007953(A002088(n+1)-A002088(n))` -/
def P11521638846657491633.Spec : Prop :=
  ∀ n, P11521638846657491633.a n = A004085 (n + 1)

end A004085

/-! ## A004085.P17709579149944198504

`A326746(2*A000010(n+1)-A000010(n+1))`
-/

namespace A004085.P17709579149944198504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (2 * A000010 (n + 1) - A000010 (n + 1)).toNat

end

end A004085.P17709579149944198504

namespace A004085

/-- `A326746(2*A000010(n+1)-A000010(n+1))` -/
def P17709579149944198504.Spec : Prop :=
  ∀ n, P17709579149944198504.a n = A004085 (n + 1)

end A004085

/-! ## A004085.P9328331975196381560

`∑{digits}[A067541(2*n+1), #]`
-/

namespace A004085.P9328331975196381560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004085.P9328331975196381560

namespace A004085

/-- `∑{digits}[A067541(2*n+1), #]` -/
def P9328331975196381560.Spec : Prop :=
  ∀ n, (P9328331975196381560.a n : ℤ) = A004085 (n + 1)

end A004085

/-! ## A004085.P821129534802018435

`∑{digits}[A089929(2*(n+1)), #]`
-/

namespace A004085.P821129534802018435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089929 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004085.P821129534802018435

namespace A004085

/-- `∑{digits}[A089929(2*(n+1)), #]` -/
def P821129534802018435.Spec : Prop :=
  ∀ n, (P821129534802018435.a n : ℤ) = A004085 (n + 1)

end A004085

/-! ## A004085.P14133137762339496651

`∑{digits}[A309563(2*n+1), #]`
-/

namespace A004085.P14133137762339496651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309563 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004085.P14133137762339496651

namespace A004085

/-- `∑{digits}[A309563(2*n+1), #]` -/
def P14133137762339496651.Spec : Prop :=
  ∀ n, (P14133137762339496651.a n : ℤ) = A004085 (n + 1)

end A004085

/-! ## A004085.P2396162725302219029

`A004092(5*A000010(n+1))`
-/

namespace A004085.P2396162725302219029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (5 * A000010 (n + 1)).toNat

end

end A004085.P2396162725302219029

namespace A004085

/-- `A004092(5*A000010(n+1))` -/
def P2396162725302219029.Spec : Prop :=
  ∀ n, P2396162725302219029.a n = A004085 (n + 1)

end A004085

/-! ## A004085.P6164725107445380248

`A326746(A000010((n+1)²)/(n+1))`
-/

namespace A004085.P6164725107445380248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (SequenceMachineLib.roundAway ((A000010 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ))).toNat

end

end A004085.P6164725107445380248

namespace A004085

/-- `A326746(A000010((n+1)²)/(n+1))` -/
def P6164725107445380248.Spec : Prop :=
  ∀ n, P6164725107445380248.a n = A004085 (n + 1)

end A004085

/-!
# A004086: Read n backwards (referred to as R(n) in many sequences).

The programs for A004086, there is no canonical definition to state claims against.
-/

/-! ## A004086.P11869927176866678430

`A056964(n)-n`
-/

namespace A004086.P11869927176866678430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n - (n : ℤ)

end

end A004086.P11869927176866678430

/-! ## A004086.P13889162307958229393

`n-A056965(n)`
-/

namespace A004086.P13889162307958229393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056965 n

end

end A004086.P13889162307958229393

/-! ## A004086.P656274157535351605

`xor(n, A256756(n))`
-/

namespace A004086.P656274157535351605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A256756 n)

end

end A004086.P656274157535351605

/-! ## A004086.P10741917706849352511

`A160927(n+1)-(n+1)`
-/

namespace A004086.P10741917706849352511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160927 (n + 1) - (n + 1 : ℤ)

end

end A004086.P10741917706849352511

/-! ## A004086.P1725232267841662563

`1-A160928(n+1)+n`
-/

namespace A004086.P1725232267841662563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A160928 (n + 1) + (n : ℤ)

end

end A004086.P1725232267841662563

/-! ## A004086.P12827677002621455763

`A160929(n+1)/(n+1)`
-/

namespace A004086.P12827677002621455763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160929 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A004086.P12827677002621455763

/-! ## A004086.P5169197443596120997

`A340479(n)-A007953(n)`
-/

namespace A004086.P5169197443596120997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340479 n - A007953 n

end

end A004086.P5169197443596120997

/-! ## A004086.P9898987080706861550

`A061205(n)/A028310(n)`
-/

namespace A004086.P9898987080706861550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061205 n : ℚ) / (A028310 n : ℚ)

end

end A004086.P9898987080706861550

/-! ## A004086.P10636913900897341825

`gcd(A061205(n), A160929(n+1))`
-/

namespace A004086.P10636913900897341825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061205 n) (A160929 (n + 1))

end

end A004086.P10636913900897341825

/-! ## A004086.P18395462177014308693

`A061601(n)+n-A267193(n)`
-/

namespace A004086.P18395462177014308693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n + ((n : ℤ) - A267193 n)

end

end A004086.P18395462177014308693

/-! ## A004086.P15925225809724189366

`A340479(n)+n-A062028(n)`
-/

namespace A004086.P15925225809724189366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340479 n + ((n : ℤ) - A062028 n)

end

end A004086.P15925225809724189366

/-! ## A004086.P11637426715683640615

`A256754(n)+A256755(n)-n`
-/

namespace A004086.P11637426715683640615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256754 n + (A256755 n - (n : ℤ))

end

end A004086.P11637426715683640615

/-! ## A004086.P16740580189486609444

`A160936(n+1)/A160926(n+1)`
-/

namespace A004086.P16740580189486609444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160936 (n + 1) : ℚ) / (A160926 (n + 1) : ℚ)

end

end A004086.P16740580189486609444

/-! ## A004086.P5016617031322104547

`A023443(A160927(n+1)-n)`
-/

namespace A004086.P5016617031322104547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A160927 (n + 1) - (n : ℤ)).toNat

end

end A004086.P5016617031322104547

/-! ## A004086.P10165438969559532064

`A004093(5*n)`
-/

namespace A004086.P10165438969559532064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * n)

end

end A004086.P10165438969559532064

/-! ## A004086.P3302445530996877426

`A103168(A370532(n+2))`
-/

namespace A004086.P3302445530996877426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103168 (A370532 (n + 2)).toNat

end

end A004086.P3302445530996877426

/-! ## A004086.P12566632779468859030

`A103168(A008706(2*n))`
-/

namespace A004086.P12566632779468859030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103168 (A008706 (2 * n)).toNat

end

end A004086.P12566632779468859030

/-! ## A004086.P11950963809113119544

`A248423(A008607(n))`
-/

namespace A004086.P11950963809113119544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248423 (A008607 n).toNat

end

end A004086.P11950963809113119544

/-! ## A004086.P4335513818253343375

`A391365(∑[n+1]+1)`
-/

namespace A004086.P4335513818253343375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391365 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A004086.P4335513818253343375

/-!
# A004087: Primes written backwards.

The programs for A004087, there is no canonical definition to state claims against.
-/

/-! ## A004087.P16132582902242415849

`A000040(n+1)-A068396(n+1)`
-/

namespace A004087.P16132582902242415849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A068396 (n + 1)

end

end A004087.P16132582902242415849

/-! ## A004087.P10742074480679311470

`A004086(A000040(n+1))`
-/

namespace A004087.P10742074480679311470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000040 (n + 1)).toNat

end

end A004087.P10742074480679311470

/-! ## A004087.P12490322343910845171

`A061227(n)-A000040(n+1)`
-/

namespace A004087.P12490322343910845171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061227 n - A000040 (n + 1)

end

end A004087.P12490322343910845171

/-! ## A004087.P14195176815162831048

`Δ[A007504(n)]-A068396(n+1)`
-/

namespace A004087.P14195176815162831048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A068396 (n + 1)

end

end A004087.P14195176815162831048

/-! ## A004087.P17961475110425077693

`A133019(n+1)/A000040(n+1)`
-/

namespace A004087.P17961475110425077693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133019 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A004087.P17961475110425077693

/-! ## A004087.P7674760117081459768

`A061227(n)-A100484(n+1)/2`
-/

namespace A004087.P7674760117081459768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061227 n : ℚ) - (A100484 (n + 1) : ℚ) / 2

end

end A004087.P7674760117081459768

/-! ## A004087.P16227861657641351699

`A067087(n+1)%A142342(n+1)`
-/

namespace A004087.P16227861657641351699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067087 (n + 1)) (A142342 (n + 1))

end

end A004087.P16227861657641351699

/-! ## A004087.P11815278712085896135

`A100484(n+1)/2-A068396(n+1)`
-/

namespace A004087.P11815278712085896135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) : ℚ) / 2 - (A068396 (n + 1) : ℚ)

end

end A004087.P11815278712085896135

/-! ## A004087.P2938170345495529949

`A007504(n+1)-(A068396(n+1)+A007504(n))`
-/

namespace A004087.P2938170345495529949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - (A068396 (n + 1) + A007504 n)

end

end A004087.P2938170345495529949

/-! ## A004087.P2745363832804270971

`A070883(n+1)+A194187(n+1)-A068396(n+1)`
-/

namespace A004087.P2745363832804270971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070883 (n + 1) + (A194187 (n + 1) - A068396 (n + 1))

end

end A004087.P2745363832804270971

/-! ## A004087.P15340379947577087224

`A098957(n+1)+A265326(n+1)-A068396(n+1)`
-/

namespace A004087.P15340379947577087224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098957 (n + 1) + (A265326 (n + 1) - A068396 (n + 1))

end

end A004087.P15340379947577087224

/-! ## A004087.P4250096851094297024

`A133019(n+1)/(A038529(n+1)+A002808(n+1))`
-/

namespace A004087.P4250096851094297024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133019 (n + 1) : ℚ) / (A038529 (n + 1) + A002808 (n + 1) : ℚ)

end

end A004087.P4250096851094297024

/-! ## A004087.P284422187233188174

`A014303(n+1)/A005097(n+1)-A068396(n+1)`
-/

namespace A004087.P284422187233188174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014303 (n + 1) : ℚ) / (A005097 (n + 1) : ℚ) - (A068396 (n + 1) : ℚ)

end

end A004087.P284422187233188174

/-! ## A004087.P7951035234784903648

`A133019(n+1)/(A064799(n+1)-A002808(n+1))`
-/

namespace A004087.P7951035234784903648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133019 (n + 1) : ℚ) / (A064799 (n + 1) - A002808 (n + 1) : ℚ)

end

end A004087.P7951035234784903648

/-! ## A004087.P2819970642411203327

`A002808(n+1)/A067563(n+1)*A133019(n+1)`
-/

namespace A004087.P2819970642411203327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A067563 (n + 1) : ℚ) * (A133019 (n + 1) : ℚ)

end

end A004087.P2819970642411203327

/-! ## A004087.P3860346506262772138

`A133019(n+1)/A008578(n+2)`
-/

namespace A004087.P3860346506262772138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133019 (n + 1) : ℚ) / (A008578 (n + 2) : ℚ)

end

end A004087.P3860346506262772138

/-! ## A004087.P5353447117046840244

`A004086(Δ[A007504(n)])`
-/

namespace A004087.P5353447117046840244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (n + 1) - f1 n).toNat

end

end A004087.P5353447117046840244

/-! ## A004087.P14659414861638028963

`A004086(A008578(n+2))`
-/

namespace A004087.P14659414861638028963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A008578 (n + 2)).toNat

end

end A004087.P14659414861638028963

/-! ## A004087.P8892167904246762119

`A004086(A182986(n+2))`
-/

namespace A004087.P8892167904246762119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A182986 (n + 2)).toNat

end

end A004087.P8892167904246762119

/-! ## A004087.P5895985195383237437

`A004086(∑[A054541(n+1)])`
-/

namespace A004087.P5895985195383237437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A004087.P5895985195383237437

/-!
# A004088: Sum of digits of number of partitions of n.

The programs for A004088, there is no canonical definition to state claims against.
-/

/-! ## A004088.P12174524099074097524

`A007953(A000041(n))`
-/

namespace A004088.P12174524099074097524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000041 n).toNat

end

end A004088.P12174524099074097524

/-! ## A004088.P16689891365776896315

`∑{digits}[A004089(n), #]`
-/

namespace A004088.P16689891365776896315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004089 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004088.P16689891365776896315

/-! ## A004088.P3817393696169575262

`∑{digits}[A000041(n), #]`
-/

namespace A004088.P3817393696169575262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004088.P3817393696169575262

/-! ## A004088.P4129824135527852821

`∑{digits}[∑[A002865(n)], #]`
-/

namespace A004088.P4129824135527852821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004088.P4129824135527852821

/-! ## A004088.P17689049583688242132

`∑{digits}[A000065(n)+1, #]`
-/

namespace A004088.P17689049583688242132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004088.P17689049583688242132

/-! ## A004088.P18222170293211484901

`∑{digits}[∑[A085811(n+3)], #]`
-/

namespace A004088.P18222170293211484901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004088.P18222170293211484901

/-! ## A004088.P2071154879411584410

`∑{digits}[A047967(n)+A000009(n), #]`
-/

namespace A004088.P2071154879411584410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + A000009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004088.P2071154879411584410

/-! ## A004088.P13711602820989493457

`∑{digits}[A027193(n)+A027187(n), #]`
-/

namespace A004088.P13711602820989493457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 n + A027187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004088.P13711602820989493457

/-! ## A004088.P154803748173957354

`∑{digits}[A086543(n)+A035363(n), #]`
-/

namespace A004088.P154803748173957354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 n + A035363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004088.P154803748173957354

/-! ## A004088.P10142560797809000776

`∑{digits}[A295341(n)+A000726(n), #]`
-/

namespace A004088.P10142560797809000776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295341 n + A000726 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004088.P10142560797809000776

/-! ## A004088.P16208628001625279330

`∑{digits}[A239262(n)+A239260(n), #]`
-/

namespace A004088.P16208628001625279330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239262 n + A239260 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004088.P16208628001625279330

/-! ## A004088.P8472468207313569335

`∑{digits}[A239263(n)+A239259(n), #]`
-/

namespace A004088.P8472468207313569335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239263 n + A239259 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004088.P8472468207313569335

/-! ## A004088.P718872172660133554

`∑{digits}[A035363(2*n), #]`
-/

namespace A004088.P718872172660133554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004088.P718872172660133554

/-! ## A004088.P11866136257858783908

`∑{digits}[A119620(2*n), #]`
-/

namespace A004088.P11866136257858783908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004088.P11866136257858783908

/-! ## A004088.P10379423006223271428

`∑{digits}[sqrt(A001255(n)), #]`
-/

namespace A004088.P10379423006223271428
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A004088.P10379423006223271428

/-! ## A004088.P7348908547688236627

`∑{digits}[A047967(n)+A067661(n)+A067659(n), #]`
-/

namespace A004088.P7348908547688236627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + (A067661 n + A067659 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004088.P7348908547688236627

/-! ## A004088.P3906094168860459025

`∑{digits}[A332281(n)+A332280(n), #]`
-/

namespace A004088.P3906094168860459025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332281 n + A332280 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004088.P3906094168860459025

/-! ## A004088.P6127091744990506888

`∑{digits}[A100824(2*n), #]`
-/

namespace A004088.P6127091744990506888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004088.P6127091744990506888

/-! ## A004088.P7056160967015657321

`∑{digits}[A332284(n)+A332283(n), #]`
-/

namespace A004088.P7056160967015657321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332284 n + A332283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004088.P7056160967015657321

/-! ## A004088.P14478270062594603821

`∑{digits}[A054225(∑[n]), #]`
-/

namespace A004088.P14478270062594603821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004088.P14478270062594603821

/-!
# A004089: Reverse digits of number of partitions of n.

The programs for A004089, there is no canonical definition to state claims against.
-/

/-! ## A004089.P16375070092714034451

`A004086(A000041(n))`
-/

namespace A004089.P16375070092714034451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000041 n).toNat

end

end A004089.P16375070092714034451

/-! ## A004089.P18061510980766559989

`A004086(A213598(n))`
-/

namespace A004089.P18061510980766559989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A213598 n).toNat

end

end A004089.P18061510980766559989

/-! ## A004089.P15444560204385556740

`A004086(sqrt(A001255(n)))`
-/

namespace A004089.P15444560204385556740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway (Real.sqrt (A001255 n : ℝ))).toNat

end

end A004089.P15444560204385556740

/-! ## A004089.P5726658227309211257

`A004086(∑[A002865(n)])`
-/

namespace A004089.P5726658227309211257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A004089.P5726658227309211257

/-! ## A004089.P6862492957065998637

`A004086(A054225(∑[n]))`
-/

namespace A004089.P6862492957065998637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A054225 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A004089.P6862492957065998637

/-!
# A004090: Sum of digits of Fibonacci numbers.

The programs for A004090, the canonical program `A004090.P12560450015442128281` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004090 has offset 0).

The definition of A004090 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004090.P12560450015442128281

`A007953(A000045(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004090

/-- `A007953(A000045(n))` -/
def P12560450015442128281.Spec : Prop :=
  ∀ n, P12560450015442128281.a n = A004090 n

theorem P12560450015442128281.correct : P12560450015442128281.Spec := by
  intro n
  simp only [A004090]

end A004090

/-! ## A004090.P11925586258069151378

`n-A280185(n)`
-/

namespace A004090.P11925586258069151378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A280185 n

end

end A004090.P11925586258069151378

namespace A004090

/-- `n-A280185(n)` -/
def P11925586258069151378.Spec : Prop :=
  ∀ n, P11925586258069151378.a n = A004090 n

theorem P11925586258069151378.correct : P11925586258069151378.Spec := by
  intro n
  simp only [A004090, Nat.add_sub_cancel, A004090.P11925586258069151378.a, A004090.P12560450015442128281.a, A000045, A000045.P11838749114346432762.a, A007953, A007953.P3472751987379697826.a, A280185, A280185.P338572658367298625.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004090

/-! ## A004090.P14352259221749177742

`∑{digits}[A272918(n), #]`
-/

namespace A004090.P14352259221749177742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004090.P14352259221749177742

namespace A004090

/-- `∑{digits}[A272918(n), #]` -/
def P14352259221749177742.Spec : Prop :=
  ∀ n, (P14352259221749177742.a n : ℤ) = A004090 n

end A004090

/-! ## A004090.P2690043965157728937

`∑{digits}[a(n-1)+a(n-2), #]` with `a(0)=0, a(1)=1`
-/

namespace A004090.P2690043965157728937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A004090.P2690043965157728937

namespace A004090

/-- `∑{digits}[a(n-1)+a(n-2), #]` -/
def P2690043965157728937.Spec : Prop :=
  ∀ n, (P2690043965157728937.a n : ℤ) = A004090 n

end A004090

/-! ## A004090.P16706379768019181596

`∑{digits}[A000045(n), #]`
-/

namespace A004090.P16706379768019181596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004090.P16706379768019181596

namespace A004090

/-- `∑{digits}[A000045(n), #]` -/
def P16706379768019181596.Spec : Prop :=
  ∀ n, (P16706379768019181596.a n : ℤ) = A004090 n

end A004090

/-! ## A004090.P15391180423805503208

`∑{digits}[A004091(n), #]`
-/

namespace A004090.P15391180423805503208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004090.P15391180423805503208

namespace A004090

/-- `∑{digits}[A004091(n), #]` -/
def P15391180423805503208.Spec : Prop :=
  ∀ n, (P15391180423805503208.a n : ℤ) = A004090 n

end A004090

/-! ## A004090.P13842011534100788482

`∑{digits}[A236191(n), #]`
-/

namespace A004090.P13842011534100788482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004090.P13842011534100788482

namespace A004090

/-- `∑{digits}[A236191(n), #]` -/
def P13842011534100788482.Spec : Prop :=
  ∀ n, (P13842011534100788482.a n : ℤ) = A004090 n

end A004090

/-! ## A004090.P801936754572657312

`∑{digits}[A273003(n), #]`
-/

namespace A004090.P801936754572657312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273003 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004090.P801936754572657312

namespace A004090

/-- `∑{digits}[A273003(n), #]` -/
def P801936754572657312.Spec : Prop :=
  ∀ n, (P801936754572657312.a n : ℤ) = A004090 n

end A004090

/-! ## A004090.P12949770741001582177

`∑{digits}[A212804(n+1), #]`
-/

namespace A004090.P12949770741001582177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004090.P12949770741001582177

namespace A004090

/-- `∑{digits}[A212804(n+1), #]` -/
def P12949770741001582177.Spec : Prop :=
  ∀ n, (P12949770741001582177.a n : ℤ) = A004090 n

end A004090

/-! ## A004090.P9091990057022979749

`∑{digits}[1-A001611(n), #]`
-/

namespace A004090.P9091990057022979749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004090.P9091990057022979749

namespace A004090

/-- `∑{digits}[1-A001611(n), #]` -/
def P9091990057022979749.Spec : Prop :=
  ∀ n, (P9091990057022979749.a n : ℤ) = A004090 n

end A004090

/-! ## A004090.P11309101062497834556

`∑{digits}[A152163(n+2), #]`
-/

namespace A004090.P11309101062497834556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004090.P11309101062497834556

namespace A004090

/-- `∑{digits}[A152163(n+2), #]` -/
def P11309101062497834556.Spec : Prop :=
  ∀ n, (P11309101062497834556.a n : ℤ) = A004090 n

end A004090

/-! ## A004090.P14179932027503840761

`∑{digits}[A103609(2*n), #]`
-/

namespace A004090.P14179932027503840761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004090.P14179932027503840761

namespace A004090

/-- `∑{digits}[A103609(2*n), #]` -/
def P14179932027503840761.Spec : Prop :=
  ∀ n, (P14179932027503840761.a n : ℤ) = A004090 n

end A004090

/-! ## A004090.P18354606541704982063

`∑{digits}[A119282(n+1)+1, #]`
-/

namespace A004090.P18354606541704982063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004090.P18354606541704982063

namespace A004090

/-- `∑{digits}[A119282(n+1)+1, #]` -/
def P18354606541704982063.Spec : Prop :=
  ∀ n, (P18354606541704982063.a n : ℤ) = A004090 n

end A004090

/-! ## A004090.P11436649480547737805

`∑{digits}[A129982(2*n+1), #]`
-/

namespace A004090.P11436649480547737805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004090.P11436649480547737805

namespace A004090

/-- `∑{digits}[A129982(2*n+1), #]` -/
def P11436649480547737805.Spec : Prop :=
  ∀ n, (P11436649480547737805.a n : ℤ) = A004090 n

end A004090

/-! ## A004090.P2089019480913601997

`∑{digits}[lcm(A167808(n), A167816(n)), #]`
-/

namespace A004090.P2089019480913601997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A167808 n) (A167816 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A004090.P2089019480913601997

namespace A004090

/-- `∑{digits}[lcm(A167808(n), A167816(n)), #]` -/
def P2089019480913601997.Spec : Prop :=
  ∀ n, (P2089019480913601997.a n : ℤ) = A004090 n

end A004090

/-! ## A004090.P1658227303099140246

`∑{digits}[A053602(2*n), #]`
-/

namespace A004090.P1658227303099140246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004090.P1658227303099140246

namespace A004090

/-- `∑{digits}[A053602(2*n), #]` -/
def P1658227303099140246.Spec : Prop :=
  ∀ n, (P1658227303099140246.a n : ℤ) = A004090 n

end A004090

/-! ## A004090.P13145403480106561470

`∑{digits}[A302126(2*n), #]`
-/

namespace A004090.P13145403480106561470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004090.P13145403480106561470

namespace A004090

/-- `∑{digits}[A302126(2*n), #]` -/
def P13145403480106561470.Spec : Prop :=
  ∀ n, (P13145403480106561470.a n : ℤ) = A004090 n

end A004090

/-! ## A004090.P6763457941445452344

`∑{digits}[A212804(n)-∑[A212804(n)], #]`
-/

namespace A004090.P6763457941445452344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004090.P6763457941445452344

namespace A004090

/-- `∑{digits}[A212804(n)-∑[A212804(n)], #]` -/
def P6763457941445452344.Spec : Prop :=
  ∀ n, (P6763457941445452344.a n : ℤ) = A004090 n

end A004090

/-! ## A004090.P6022098645240197964

`∑{digits}[A333378(n), #]`
-/

namespace A004090.P6022098645240197964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004090.P6022098645240197964

namespace A004090

/-- `∑{digits}[A333378(n), #]` -/
def P6022098645240197964.Spec : Prop :=
  ∀ n, (P6022098645240197964.a n : ℤ) = A004090 n

end A004090

/-!
# A004091: Fibonacci numbers written backwards.

The programs for A004091, there is no canonical definition to state claims against.
-/

/-! ## A004091.P10122387767403690003

`A004086(A000045(n))`
-/

namespace A004091.P10122387767403690003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000045 n).toNat

end

end A004091.P10122387767403690003

/-! ## A004091.P12484715233382891059

`A133022(n)/A324969(n+1)`
-/

namespace A004091.P12484715233382891059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133022 n : ℚ) / (A324969 (n + 1) : ℚ)

end

end A004091.P12484715233382891059

/-! ## A004091.P13155394572361874130

`A133022(n)/A000045(A028310(n))`
-/

namespace A004091.P13155394572361874130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133022 n : ℚ) / (A000045 (A028310 n).toNat : ℚ)

end

end A004091.P13155394572361874130

/-! ## A004091.P2083102188509972026

`A133022(n)/gcd(A000038(n), A236191(n))`
-/

namespace A004091.P2083102188509972026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133022 n : ℚ) / (Int.gcd (A000038 n) (A236191 n) : ℚ)

end

end A004091.P2083102188509972026

/-! ## A004091.P16315484720377811828

`A133022(n)/A058071(A000124(n))`
-/

namespace A004091.P16315484720377811828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133022 n : ℚ) / (A058071 (A000124 n).toNat : ℚ)

end

end A004091.P16315484720377811828

/-! ## A004091.P3631847405242062082

`A133022(n)/Δ[record[A094570(n)]]`
-/

namespace A004091.P3631847405242062082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133022 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A004091.P3631847405242062082

/-!
# A004092: Sum of digits of even numbers.

The programs for A004092, the canonical program `A004092.P17027968154304682565` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004092 has offset 0).

The definition of A004092 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004092.P17027968154304682565

`A007953(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004092

/-- `A007953(2*n)` -/
def P17027968154304682565.Spec : Prop :=
  ∀ n, P17027968154304682565.a n = A004092 n

theorem P17027968154304682565.correct : P17027968154304682565.Spec := by
  intro n
  simp only [A004092]

end A004092

/-! ## A004092.P6649066638961294860

`∑{digits}[2*n, #]`
-/

namespace A004092.P6649066638961294860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A004092.P6649066638961294860

namespace A004092

/-- `∑{digits}[2*n, #]` -/
def P6649066638961294860.Spec : Prop :=
  ∀ n, (P6649066638961294860.a n : ℤ) = A004092 n

end A004092

/-! ## A004092.P8241314053166190445

`log(∏{digits}[2*n, exp(#)])`
-/

namespace A004092.P8241314053166190445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod

end

end A004092.P8241314053166190445

namespace A004092

/-- `log(∏{digits}[2*n, exp(#)])` -/
def P8241314053166190445.Spec : Prop :=
  ∀ n, P8241314053166190445.a n = (A004092 n : ℝ)

end A004092

/-! ## A004092.P3836389986382454041

`∑{digits}[Δ[n²], #]-1`
-/

namespace A004092.P3836389986382454041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A004092.P3836389986382454041

namespace A004092

/-- `∑{digits}[Δ[n²], #]-1` -/
def P3836389986382454041.Spec : Prop :=
  ∀ n, P3836389986382454041.a n = A004092 n

end A004092

/-! ## A004092.P12058980860289411089

`log2(∏{digits}[2*n, 2^#])`
-/

namespace A004092.P12058980860289411089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

end

end A004092.P12058980860289411089

namespace A004092

/-- `log2(∏{digits}[2*n, 2^#])` -/
def P12058980860289411089.Spec : Prop :=
  ∀ n, P12058980860289411089.a n = (A004092 n : ℝ)

end A004092

/-! ## A004092.P18028797116412808293

`val(∏{digits}[2*n, 2^#], 2)`
-/

namespace A004092.P18028797116412808293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod 2

end

end A004092.P18028797116412808293

namespace A004092

/-- `val(∏{digits}[2*n, 2^#], 2)` -/
def P18028797116412808293.Spec : Prop :=
  ∀ n, (P18028797116412808293.a n : ℤ) = A004092 n

end A004092

/-! ## A004092.P13336379592810198967

`abs(1-∑{digits}[n+1+n, #])`
-/

namespace A004092.P13336379592810198967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)|

end

end A004092.P13336379592810198967

namespace A004092

/-- `abs(1-∑{digits}[n+1+n, #])` -/
def P13336379592810198967.Spec : Prop :=
  ∀ n, P13336379592810198967.a n = A004092 n

end A004092

/-! ## A004092.P15120655251132782341

`A004155(n)-1`
-/

namespace A004092.P15120655251132782341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n - 1

end

end A004092.P15120655251132782341

namespace A004092

/-- `A004155(n)-1` -/
def P15120655251132782341.Spec : Prop :=
  ∀ n, P15120655251132782341.a n = A004092 n

end A004092

/-! ## A004092.P8317446315905643972

`A326746(2*n)`
-/

namespace A004092.P8317446315905643972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (2 * n)

end

end A004092.P8317446315905643972

namespace A004092

/-- `A326746(2*n)` -/
def P8317446315905643972.Spec : Prop :=
  ∀ n, P8317446315905643972.a n = A004092 n

end A004092

/-! ## A004092.P5440276549248918231

`A002837(A004155(n))`
-/

namespace A004092.P5440276549248918231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A004155 n).toNat

end

end A004092.P5440276549248918231

namespace A004092

/-- `A002837(A004155(n))` -/
def P5440276549248918231.Spec : Prop :=
  ∀ n, P5440276549248918231.a n = A004092 n

end A004092

/-! ## A004092.P1076736899241417391

`sqrt(A118881(2*n))`
-/

namespace A004092.P1076736899241417391
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 (2 * n) : ℝ)

end

end A004092.P1076736899241417391

namespace A004092

/-- `sqrt(A118881(2*n))` -/
def P1076736899241417391.Spec : Prop :=
  ∀ n, P1076736899241417391.a n = (A004092 n : ℝ)

end A004092

/-! ## A004092.P14929627267486127377

`log2(A329562(2*n))`
-/

namespace A004092.P14929627267486127377
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 (2 * n) : ℝ)

end

end A004092.P14929627267486127377

namespace A004092

/-- `log2(A329562(2*n))` -/
def P14929627267486127377.Spec : Prop :=
  ∀ n, P14929627267486127377.a n = (A004092 n : ℝ)

end A004092

/-! ## A004092.P2017787164954573546

`A062028(2*n)-2*n`
-/

namespace A004092.P2017787164954573546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (2 * n) - (2 * n : ℤ)

end

end A004092.P2017787164954573546

namespace A004092

/-- `A062028(2*n)-2*n` -/
def P2017787164954573546.Spec : Prop :=
  ∀ n, P2017787164954573546.a n = A004092 n

theorem P2017787164954573546.correct : P2017787164954573546.Spec := by
  intro n
  simp only [A004092, Nat.add_sub_cancel, A004092.P2017787164954573546.a, A004092.P17027968154304682565.a, A007953, A007953.P3472751987379697826.a, A062028, A062028.P8420805724104474199.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004092

/-! ## A004092.P17420578718349986688

`A180018(2*n)+A000120(n)`
-/

namespace A004092.P17420578718349986688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 (2 * n) + A000120 n

end

end A004092.P17420578718349986688

namespace A004092

/-- `A180018(2*n)+A000120(n)` -/
def P17420578718349986688.Spec : Prop :=
  ∀ n, P17420578718349986688.a n = A004092 n

end A004092

/-! ## A004092.P558800316214135671

`A092384(2*n)`
-/

namespace A004092.P558800316214135671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092384 (2 * n)

end

end A004092.P558800316214135671

namespace A004092

/-- `A092384(2*n)` -/
def P558800316214135671.Spec : Prop :=
  ∀ n, P558800316214135671.a n = A004092 n

end A004092

/-! ## A004092.P9102060590357578313

`A169805(2*n)/2`
-/

namespace A004092.P9102060590357578313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 (2 * n) : ℚ) / 2

end

end A004092.P9102060590357578313

namespace A004092

/-- `A169805(2*n)/2` -/
def P9102060590357578313.Spec : Prop :=
  ∀ n, P9102060590357578313.a n = (A004092 n : ℚ)

theorem P9102060590357578313.correct : P9102060590357578313.Spec := by
  intro n
  simp only [A004092, Nat.add_sub_cancel, A004092.P9102060590357578313.a, A004092.P17027968154304682565.a, A007953, A007953.P3472751987379697826.a, A169805, A169805.P17977796700678006772.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004092

/-! ## A004092.P4834764734362199909

`A007953(Δ[n²])-1`
-/

namespace A004092.P4834764734362199909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A004092.P4834764734362199909

namespace A004092

/-- `A007953(Δ[n²])-1` -/
def P4834764734362199909.Spec : Prop :=
  ∀ n, P4834764734362199909.a n = A004092 n

end A004092

/-! ## A004092.P9964966657146753742

`A092383(Δ[n²])-1`
-/

namespace A004092.P9964966657146753742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092383 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A004092.P9964966657146753742

namespace A004092

/-- `A092383(Δ[n²])-1` -/
def P9964966657146753742.Spec : Prop :=
  ∀ n, P9964966657146753742.a n = A004092 n

end A004092

/-! ## A004092.P16450794949334890493

`2*n-A066568(2*n)`
-/

namespace A004092.P16450794949334890493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A066568 (2 * n)

end

end A004092.P16450794949334890493

namespace A004092

/-- `2*n-A066568(2*n)` -/
def P16450794949334890493.Spec : Prop :=
  ∀ n, P16450794949334890493.a n = A004092 n

theorem P16450794949334890493.correct : P16450794949334890493.Spec := by
  intro n
  simp only [A004092, Nat.add_sub_cancel, A004092.P16450794949334890493.a, A004092.P17027968154304682565.a, A007953, A007953.P3472751987379697826.a, A066568, A066568.P9469533663660008085.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004092

/-! ## A004092.P4784572245970062123

`A160939(2*n+1)-(2*n+1)`
-/

namespace A004092.P4784572245970062123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A004092.P4784572245970062123

namespace A004092

/-- `A160939(2*n+1)-(2*n+1)` -/
def P4784572245970062123.Spec : Prop :=
  ∀ n, P4784572245970062123.a n = A004092 n

theorem P4784572245970062123.correct : P4784572245970062123.Spec := by
  intro n
  simp only [A004092, Nat.add_sub_cancel, A004092.P4784572245970062123.a, A004092.P17027968154304682565.a, A007953, A007953.P3472751987379697826.a, A160939, A160939.P10335950988782502839.a, A054899, A054899.P10770181254942084517.a, A062028, A062028.P8420805724104474199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004092

/-!
# A004093: Even numbers written backwards.

The programs for A004093, there is no canonical definition to state claims against.
-/

/-! ## A004093.P11155277429126871493

`A004086(2*n)`
-/

namespace A004093.P11155277429126871493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (2 * n)

end

end A004093.P11155277429126871493

/-! ## A004093.P66129076972621710

`A056964(2*n)-2*n`
-/

namespace A004093.P66129076972621710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (2 * n) - (2 * n : ℤ)

end

end A004093.P66129076972621710

/-! ## A004093.P12517353385839519050

`and(-1, A004086(A005843(n)))`
-/

namespace A004093.P12517353385839519050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A004086 (A005843 n).toNat)

end

end A004093.P12517353385839519050

/-! ## A004093.P8571687463013037920

`A004086(A004277(n))-A000007(n)`
-/

namespace A004093.P8571687463013037920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004277 n).toNat - A000007 n

end

end A004093.P8571687463013037920

/-! ## A004093.P4384736833021570446

`A004086(A005843(n))/A054977(n)`
-/

namespace A004093.P4384736833021570446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004086 (A005843 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A004093.P4384736833021570446

/-! ## A004093.P6463709226737003060

`A004086(A005843(n))%A000132(n)`
-/

namespace A004093.P6463709226737003060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A005843 n).toNat) (A000132 n)

end

end A004093.P6463709226737003060

/-! ## A004093.P5951883035490418455

`A004086(A004277(n))%A053755(n)`
-/

namespace A004093.P5951883035490418455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A004277 n).toNat) (A053755 n)

end

end A004093.P5951883035490418455

/-! ## A004093.P1639423716691101547

`A004086(A004275(n+1))%A273982(n+1)`
-/

namespace A004093.P1639423716691101547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A004275 (n + 1)).toNat) (A273982 (n + 1))

end

end A004093.P1639423716691101547

/-! ## A004093.P9398994852955850375

`2*n-A056965(2*n)`
-/

namespace A004093.P9398994852955850375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A056965 (2 * n)

end

end A004093.P9398994852955850375

/-! ## A004093.P11601195539900267768

`xor(2*n, A256756(2*n))`
-/

namespace A004093.P11601195539900267768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (A256756 (2 * n))

end

end A004093.P11601195539900267768

/-! ## A004093.P16607267423161423177

`A160927(2*n+1)-Δ[n²]`
-/

namespace A004093.P16607267423161423177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160927 (2 * n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A004093.P16607267423161423177

/-! ## A004093.P7733401341206423579

`2*n+1-A160928(2*n+1)`
-/

namespace A004093.P7733401341206423579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A160928 (2 * n + 1)

end

end A004093.P7733401341206423579

/-! ## A004093.P13075019597103607301

`A160929(2*n+1)/(2*n+1)`
-/

namespace A004093.P13075019597103607301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160929 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A004093.P13075019597103607301

/-! ## A004093.P13806106759955727588

`A061601(A267193(2*n))`
-/

namespace A004093.P13806106759955727588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A267193 (2 * n)).toNat

end

end A004093.P13806106759955727588

/-! ## A004093.P6180712780046659228

`A340479(2*n)-A007953(2*n)`
-/

namespace A004093.P6180712780046659228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340479 (2 * n) - A007953 (2 * n)

end

end A004093.P6180712780046659228

/-! ## A004093.P1546411197900300207

`A248423(5*n)`
-/

namespace A004093.P1546411197900300207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248423 (5 * n)

end

end A004093.P1546411197900300207

/-! ## A004093.P4955081987576765915

`A103168(2*A008706(2*n))`
-/

namespace A004093.P4955081987576765915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103168 (2 * A008706 (2 * n)).toNat

end

end A004093.P4955081987576765915

/-! ## A004093.P4373180467943165697

`A391365(∑[n+3])`
-/

namespace A004093.P4373180467943165697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391365 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004093.P4373180467943165697

/-!
# A004094: Powers of 2 written backwards.

The programs for A004094, there is no canonical definition to state claims against.
-/

/-! ## A004094.P3958399981844638064

`A004086(A000079(n))`
-/

namespace A004094.P3958399981844638064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000079 n).toNat

end

end A004094.P3958399981844638064

/-! ## A004094.P2304224272276526057

`A341718(n)+1`
-/

namespace A004094.P2304224272276526057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341718 n + 1

end

end A004094.P2304224272276526057

/-! ## A004094.P10524973432735562663

`A002522(n)-(n²-A341718(n))`
-/

namespace A004094.P10524973432735562663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n - ((n ^ 2 : ℤ) - A341718 n)

end

end A004094.P10524973432735562663

/-! ## A004094.P2024751172713898496

`1-(A025458(A025458(n))-A341718(n))`
-/

namespace A004094.P2024751172713898496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A025458 (A025458 n).toNat - A341718 n)

end

end A004094.P2024751172713898496

/-! ## A004094.P11127401542592046614

`2-(A054143(∑[n])-A341718(n))`
-/

namespace A004094.P11127401542592046614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A054143 (∑ j ∈ Finset.range (n + 1), f1 j) - A341718 n)

end

end A004094.P11127401542592046614

/-! ## A004094.P5528323772166574416

`1-(A000007(A130321(n))-A341718(n))`
-/

namespace A004094.P5528323772166574416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000007 (A130321 n).toNat - A341718 n)

end

end A004094.P5528323772166574416

/-!
# A004095: Sum of digits of Catalan numbers.

The programs for A004095, the canonical program `A004095.P282943264106656556` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004095 has offset 0).

The definition of A004095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004095.P3265077636473517506

`∑{digits}[A133375(n), #]`
-/

namespace A004095.P3265077636473517506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133375 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004095.P3265077636473517506

namespace A004095

/-- `∑{digits}[A133375(n), #]` -/
def P3265077636473517506.Spec : Prop :=
  ∀ n, (P3265077636473517506.a n : ℤ) = A004095 n

end A004095

/-! ## A004095.P2829214652184681898

`∑{digits}[A004096(n), #]`
-/

namespace A004095.P2829214652184681898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004095.P2829214652184681898

namespace A004095

/-- `∑{digits}[A004096(n), #]` -/
def P2829214652184681898.Spec : Prop :=
  ∀ n, (P2829214652184681898.a n : ℤ) = A004095 n

end A004095

/-! ## A004095.P282943264106656556

`∑{digits}[(4-6/(n+1))*a(n-1), #]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004095

/-- `∑{digits}[(4-6/(n+1))*a(n-1), #]` -/
def P282943264106656556.Spec : Prop :=
  ∀ n, (P282943264106656556.a n : ℤ) = A004095 n

theorem P282943264106656556.correct : P282943264106656556.Spec := by
  intro n
  simp only [A004095]

end A004095

/-! ## A004095.P6989530125550391367

`∑{digits}[A000108(n), #]`
-/

namespace A004095.P6989530125550391367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004095.P6989530125550391367

namespace A004095

/-- `∑{digits}[A000108(n), #]` -/
def P6989530125550391367.Spec : Prop :=
  ∀ n, (P6989530125550391367.a n : ℤ) = A004095 n

end A004095

/-! ## A004095.P17952212397848777451

`∑{digits}[A168491(n), #]`
-/

namespace A004095.P17952212397848777451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004095.P17952212397848777451

namespace A004095

/-- `∑{digits}[A168491(n), #]` -/
def P17952212397848777451.Spec : Prop :=
  ∀ n, (P17952212397848777451.a n : ℤ) = A004095 n

end A004095

/-! ## A004095.P13713979898495991412

`∑{digits}[A115140(n+1), #]`
-/

namespace A004095.P13713979898495991412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004095.P13713979898495991412

namespace A004095

/-- `∑{digits}[A115140(n+1), #]` -/
def P13713979898495991412.Spec : Prop :=
  ∀ n, (P13713979898495991412.a n : ℤ) = A004095 n

end A004095

/-! ## A004095.P15399168558646086277

`∑{digits}[A120588(n+1), #]`
-/

namespace A004095.P15399168558646086277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004095.P15399168558646086277

namespace A004095

/-- `∑{digits}[A120588(n+1), #]` -/
def P15399168558646086277.Spec : Prop :=
  ∀ n, (P15399168558646086277.a n : ℤ) = A004095 n

end A004095

/-! ## A004095.P1112943015121162766

`∑{digits}[A028303(2*n), #]`
-/

namespace A004095.P1112943015121162766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004095.P1112943015121162766

namespace A004095

/-- `∑{digits}[A028303(2*n), #]` -/
def P1112943015121162766.Spec : Prop :=
  ∀ n, (P1112943015121162766.a n : ℤ) = A004095 n

end A004095

/-! ## A004095.P9526582520829056506

`∑{digits}[A028304(2*n), #]`
-/

namespace A004095.P9526582520829056506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004095.P9526582520829056506

namespace A004095

/-- `∑{digits}[A028304(2*n), #]` -/
def P9526582520829056506.Spec : Prop :=
  ∀ n, (P9526582520829056506.a n : ℤ) = A004095 n

end A004095

/-! ## A004095.P12181255689738532658

`∑{digits}[A126120(2*n), #]`
-/

namespace A004095.P12181255689738532658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004095.P12181255689738532658

namespace A004095

/-- `∑{digits}[A126120(2*n), #]` -/
def P12181255689738532658.Spec : Prop :=
  ∀ n, (P12181255689738532658.a n : ℤ) = A004095 n

end A004095

/-! ## A004095.P7612714372773366056

`∑{digits}[A126324(2*n), #]`
-/

namespace A004095.P7612714372773366056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004095.P7612714372773366056

namespace A004095

/-- `∑{digits}[A126324(2*n), #]` -/
def P7612714372773366056.Spec : Prop :=
  ∀ n, (P7612714372773366056.a n : ℤ) = A004095 n

end A004095

/-! ## A004095.P17064626604432299851

`∑{digits}[A208355(2*n), #]`
-/

namespace A004095.P17064626604432299851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004095.P17064626604432299851

namespace A004095

/-- `∑{digits}[A208355(2*n), #]` -/
def P17064626604432299851.Spec : Prop :=
  ∀ n, (P17064626604432299851.a n : ℤ) = A004095 n

end A004095

/-! ## A004095.P16017279339202900167

`∑{digits}[A089408(2*n+1), #]`
-/

namespace A004095.P16017279339202900167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004095.P16017279339202900167

namespace A004095

/-- `∑{digits}[A089408(2*n+1), #]` -/
def P16017279339202900167.Spec : Prop :=
  ∀ n, (P16017279339202900167.a n : ℤ) = A004095 n

end A004095

/-! ## A004095.P1907944007950088231

`∑{digits}[A090192(2*n+1), #]`
-/

namespace A004095.P1907944007950088231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004095.P1907944007950088231

namespace A004095

/-- `∑{digits}[A090192(2*n+1), #]` -/
def P1907944007950088231.Spec : Prop :=
  ∀ n, (P1907944007950088231.a n : ℤ) = A004095 n

end A004095

/-! ## A004095.P4004194695046568664

`∑{digits}[A097331(2*n+1), #]`
-/

namespace A004095.P4004194695046568664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004095.P4004194695046568664

namespace A004095

/-- `∑{digits}[A097331(2*n+1), #]` -/
def P4004194695046568664.Spec : Prop :=
  ∀ n, (P4004194695046568664.a n : ℤ) = A004095 n

end A004095

/-! ## A004095.P13690884066672231583

`∑{digits}[A105523(2*n+1), #]`
-/

namespace A004095.P13690884066672231583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004095.P13690884066672231583

namespace A004095

/-- `∑{digits}[A105523(2*n+1), #]` -/
def P13690884066672231583.Spec : Prop :=
  ∀ n, (P13690884066672231583.a n : ℤ) = A004095 n

end A004095

/-! ## A004095.P14422177665029864737

`∑{digits}[A210628(2*n+1), #]`
-/

namespace A004095.P14422177665029864737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004095.P14422177665029864737

namespace A004095

/-- `∑{digits}[A210628(2*n+1), #]` -/
def P14422177665029864737.Spec : Prop :=
  ∀ n, (P14422177665029864737.a n : ℤ) = A004095 n

end A004095

/-! ## A004095.P356464725538820826

`∑{digits}[A263986(n)+A000045(n), #]`
-/

namespace A004095.P356464725538820826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263986 n + A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004095.P356464725538820826

namespace A004095

/-- `∑{digits}[A263986(n)+A000045(n), #]` -/
def P356464725538820826.Spec : Prop :=
  ∀ n, (P356464725538820826.a n : ℤ) = A004095 n

end A004095

/-! ## A004095.P7316824735931058964

`∑{digits}[ceil(A068875(n)/2), #]`
-/

namespace A004095.P7316824735931058964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A068875 n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004095.P7316824735931058964

namespace A004095

/-- `∑{digits}[ceil(A068875(n)/2), #]` -/
def P7316824735931058964.Spec : Prop :=
  ∀ n, (P7316824735931058964.a n : ℤ) = A004095 n

end A004095

/-! ## A004095.P16426964075452906291

`∑{digits}[A068875(n)/(char[A002251(n+1)]+1), #]`
-/

namespace A004095.P16426964075452906291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (n + 1)

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068875 n : ℚ) / (((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A004095.P16426964075452906291

namespace A004095

/-- `∑{digits}[A068875(n)/(char[A002251(n+1)]+1), #]` -/
def P16426964075452906291.Spec : Prop :=
  ∀ n, (P16426964075452906291.a n : ℤ) = A004095 n

end A004095

/-!
# A004096: Catalan numbers written backwards.

The programs for A004096, there is no canonical definition to state claims against.
-/

/-! ## A004096.P16445991905756084055

`A004086(A000108(n))`
-/

namespace A004096.P16445991905756084055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000108 n).toNat

end

end A004096.P16445991905756084055

/-! ## A004096.P11148195224294002513

`A004086(C(2*n, n)/(n+1))`
-/

namespace A004096.P11148195224294002513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ))).toNat

end

end A004096.P11148195224294002513

/-! ## A004096.P8899079009383873

`A004086(A287974(n))`
-/

namespace A004096.P8899079009383873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A287974 n).toNat

end

end A004096.P8899079009383873

/-! ## A004096.P16841835822678678030

`A004086(A291825(n))`
-/

namespace A004096.P16841835822678678030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A291825 n).toNat

end

end A004096.P16841835822678678030

/-! ## A004096.P6074009244967030516

`A004086(abs(A168491(n)))`
-/

namespace A004096.P6074009244967030516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 |A168491 n|.toNat

end

end A004096.P6074009244967030516

/-!
# A004097: Sum of digits of Bell numbers.

The programs for A004097, there is no canonical definition to state claims against.
-/

/-! ## A004097.P17267962804486173783

`∑{digits}[A000110(n), #]`
-/

namespace A004097.P17267962804486173783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004097.P17267962804486173783

/-! ## A004097.P7577324670171063433

`∑{digits}[A004098(n), #]`
-/

namespace A004097.P7577324670171063433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004098 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004097.P7577324670171063433

/-! ## A004097.P7130260375631276927

`∑{digits}[A292935(n), #]`
-/

namespace A004097.P7130260375631276927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292935 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004097.P7130260375631276927

/-! ## A004097.P15076348919458626768

`∑{digits}[A011971(∑[n]), #]`
-/

namespace A004097.P15076348919458626768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004097.P15076348919458626768

/-! ## A004097.P5906042717006660274

`∑{digits}[A095149(∑[n]), #]`
-/

namespace A004097.P5906042717006660274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004097.P5906042717006660274

/-! ## A004097.P10989409683958507133

`∑{digits}[A108087(∑[n]), #]`
-/

namespace A004097.P10989409683958507133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004097.P10989409683958507133

/-! ## A004097.P16893262971280975916

`∑{digits}[A123081(∑[n]), #]`
-/

namespace A004097.P16893262971280975916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004097.P16893262971280975916

/-! ## A004097.P6973614475895259030

`∑{digits}[A346426(∑[n]), #]`
-/

namespace A004097.P6973614475895259030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004097.P6973614475895259030

/-! ## A004097.P17657190930610156997

`∑{digits}[Δ[A005001(n)], #]`
-/

namespace A004097.P17657190930610156997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004097.P17657190930610156997

/-! ## A004097.P16430406541368536737

`∑{digits}[A188164(2*n), #]`
-/

namespace A004097.P16430406541368536737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188164 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004097.P16430406541368536737

/-!
# A004098: Bell numbers written backwards.

The programs for A004098, there is no canonical definition to state claims against.
-/

/-! ## A004098.P12183266079191935721

`A004086(A000110(n))`
-/

namespace A004098.P12183266079191935721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000110 n).toNat

end

end A004098.P12183266079191935721

/-! ## A004098.P9380043055156779857

`A322924(n)-A000110(n)`
-/

namespace A004098.P9380043055156779857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322924 n - A000110 n

end

end A004098.P9380043055156779857

/-! ## A004098.P1398750308952734506

`A322924(n)-abs(A292935(n))`
-/

namespace A004098.P1398750308952734506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322924 n - |A292935 n|

end

end A004098.P1398750308952734506

/-! ## A004098.P8899414554261817152

`A322924(n)-A011971(A000217(n))`
-/

namespace A004098.P8899414554261817152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322924 n - A011971 (A000217 n).toNat

end

end A004098.P8899414554261817152

/-! ## A004098.P10778859412697617870

`A322924(n)-A108087(A000124(n))`
-/

namespace A004098.P10778859412697617870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322924 n - A108087 (A000124 n).toNat

end

end A004098.P10778859412697617870

/-! ## A004098.P4829840833162559856

`A302092(n)/A000110(n)`
-/

namespace A004098.P4829840833162559856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302092 n : ℚ) / (A000110 n : ℚ)

end

end A004098.P4829840833162559856

/-!
# A004099: Sum of digits of Euler numbers.

The programs for A004099, there is no canonical definition to state claims against.
-/

/-! ## A004099.P15840801060559586245

`∑{digits}[A000111(n), #]`
-/

namespace A004099.P15840801060559586245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004099.P15840801060559586245

/-! ## A004099.P15052372710203380610

`∑{digits}[A004150(n), #]`
-/

namespace A004099.P15052372710203380610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004099.P15052372710203380610

/-! ## A004099.P3738688045982863868

`∑{digits}[A346838(n), #]`
-/

namespace A004099.P3738688045982863868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346838 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004099.P3738688045982863868

/-! ## A004099.P4788459501428920970

`∑{digits}[A109449(∑[n]), #]`
-/

namespace A004099.P4788459501428920970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004099.P4788459501428920970

/-! ## A004099.P12852084713383563048

`∑{digits}[A247453(∑[n]), #]`
-/

namespace A004099.P12852084713383563048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247453 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004099.P12852084713383563048

/-! ## A004099.P2645594121385991800

`∑{digits}[A008281(A000096(n)), #]`
-/

namespace A004099.P2645594121385991800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A000096 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004099.P2645594121385991800

/-! ## A004099.P5772733055372773062

`∑{digits}[A008282(A000124(n)), #]`
-/

namespace A004099.P5772733055372773062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A000124 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004099.P5772733055372773062

/-! ## A004099.P17422624503482653982

`∑{digits}[A010094(A238531(n)), #]`
-/

namespace A004099.P17422624503482653982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (A238531 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004099.P17422624503482653982

/-! ## A004099.P4602469349109991406

`∑{digits}[A108040(A266665(n)), #]`
-/

namespace A004099.P4602469349109991406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108040 (A266665 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004099.P4602469349109991406

