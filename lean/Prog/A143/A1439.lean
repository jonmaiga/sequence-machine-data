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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A143900: Number of simple graphs on n labeled nodes containing at least one cycle subgraph, also row sums of A143899.

The programs for A143900, there is no canonical definition to state claims against.
-/

/-! ## A143900.P5479414742817831696

`A006125(n)-A001858(n)`
-/

namespace A143900.P5479414742817831696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A001858 n

end

end A143900.P5479414742817831696

/-! ## A143900.P16179761949346481232

`∏[A011782(n)]-A001858(n)`
-/

namespace A143900.P16179761949346481232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A001858 n

end

end A143900.P16179761949346481232

/-! ## A143900.P16900507301998682566

`A006125(n)-A144304(∑[n]+n)`
-/

namespace A143900.P16900507301998682566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A144304 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A143900.P16900507301998682566

/-! ## A143900.P5988569107530640840

`A000079(A161680(n))-A001858(n)`
-/

namespace A143900.P5988569107530640840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A161680 n).toNat - A001858 n

end

end A143900.P5988569107530640840

/-! ## A143900.P12590561274060792691

`A011782(A152947(n+1))-A001858(n)`
-/

namespace A143900.P12590561274060792691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A152947 (n + 1)).toNat - A001858 n

end

end A143900.P12590561274060792691

/-!
# A143901: Rectangular array R by antidiagonals: R(m,n) = floor((m*n+1)/2).

The programs for A143901, the canonical program `A143901.P12353677997150197209` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143901 has offset 1).

The definition of A143901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143901.P12353677997150197209

`floor(A059036(n)/2)+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A143901

/-- `floor(A059036(n)/2)+1` -/
def P12353677997150197209.Spec : Prop :=
  ∀ n, P12353677997150197209.a n = A143901 (n + 1)

theorem P12353677997150197209.correct : P12353677997150197209.Spec := by
  intro n
  simp only [A143901, Nat.add_sub_cancel]

end A143901

/-! ## A143901.P1243481767476748683

`ceil(A003991(n+1)/2)`
-/

namespace A143901.P1243481767476748683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003991 (n + 1) : ℚ) / 2⌉

end

end A143901.P1243481767476748683

namespace A143901

/-- `ceil(A003991(n+1)/2)` -/
def P1243481767476748683.Spec : Prop :=
  ∀ n, P1243481767476748683.a n = A143901 (n + 1)

end A143901

/-! ## A143901.P8425734696830141073

`ceil(A098352(n+1)/8)`
-/

namespace A143901.P8425734696830141073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098352 (n + 1) : ℚ) / 8⌉

end

end A143901.P8425734696830141073

namespace A143901

/-- `ceil(A098352(n+1)/8)` -/
def P8425734696830141073.Spec : Prop :=
  ∀ n, P8425734696830141073.a n = A143901 (n + 1)

end A143901

/-! ## A143901.P11025361310881928116

`round(A003991(-xor(n, -1))/2)`
-/

namespace A143901.P11025361310881928116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003991 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2)

end

end A143901.P11025361310881928116

namespace A143901

/-- `round(A003991(-xor(n, -1))/2)` -/
def P11025361310881928116.Spec : Prop :=
  ∀ n, P11025361310881928116.a n = A143901 (n + 1)

end A143901

/-! ## A143901.P14181144003328344501

`round(A003991(ϕ²-(ϕ-n))/2)`
-/

namespace A143901.P14181144003328344501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003991 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℚ) / 2)

end

end A143901.P14181144003328344501

namespace A143901

/-- `round(A003991(ϕ²-(ϕ-n))/2)` -/
def P14181144003328344501.Spec : Prop :=
  ∀ n, P14181144003328344501.a n = A143901 (n + 1)

end A143901

/-! ## A143901.P4158323402409680248

`A008619(A059036(n))`
-/

namespace A143901.P4158323402409680248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A059036 n).toNat

end

end A143901.P4158323402409680248

namespace A143901

/-- `A008619(A059036(n))` -/
def P4158323402409680248.Spec : Prop :=
  ∀ n, P4158323402409680248.a n = A143901 (n + 1)

end A143901

/-! ## A143901.P11978416090808566299

`A065033(A003991(n+1))`
-/

namespace A143901.P11978416090808566299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A003991 (n + 1)).toNat

end

end A143901.P11978416090808566299

namespace A143901

/-- `A065033(A003991(n+1))` -/
def P11978416090808566299.Spec : Prop :=
  ∀ n, P11978416090808566299.a n = A143901 (n + 1)

end A143901

/-! ## A143901.P11766323177327309566

`A110654(A059036(n)+1)`
-/

namespace A143901.P11766323177327309566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A059036 n + 1).toNat

end

end A143901.P11766323177327309566

namespace A143901

/-- `A110654(A059036(n)+1)` -/
def P11766323177327309566.Spec : Prop :=
  ∀ n, P11766323177327309566.a n = A143901 (n + 1)

end A143901

/-! ## A143901.P11389373027057349591

`A004526(A003991(n+1)+1)`
-/

namespace A143901.P11389373027057349591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003991 (n + 1) + 1).toNat

end

end A143901.P11389373027057349591

namespace A143901

/-- `A004526(A003991(n+1)+1)` -/
def P11389373027057349591.Spec : Prop :=
  ∀ n, P11389373027057349591.a n = A143901 (n + 1)

end A143901

/-! ## A143901.P1478474921987664782

`A123108(A003991(n+1)+1)`
-/

namespace A143901.P1478474921987664782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A003991 (n + 1) + 1).toNat

end

end A143901.P1478474921987664782

namespace A143901

/-- `A123108(A003991(n+1)+1)` -/
def P1478474921987664782.Spec : Prop :=
  ∀ n, P1478474921987664782.a n = A143901 (n + 1)

end A143901

/-! ## A143901.P9532547808263475155

`A008619(A003991(n+1)-1)`
-/

namespace A143901.P9532547808263475155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003991 (n + 1) - 1).toNat

end

end A143901.P9532547808263475155

namespace A143901

/-- `A008619(A003991(n+1)-1)` -/
def P9532547808263475155.Spec : Prop :=
  ∀ n, P9532547808263475155.a n = A143901 (n + 1)

end A143901

/-! ## A143901.P6381213126515602952

`A080513(A059036(n)+1)-1`
-/

namespace A143901.P6381213126515602952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A059036 n + 1).toNat - 1

end

end A143901.P6381213126515602952

namespace A143901

/-- `A080513(A059036(n)+1)-1` -/
def P6381213126515602952.Spec : Prop :=
  ∀ n, P6381213126515602952.a n = A143901 (n + 1)

end A143901

/-! ## A143901.P11834975800325927642

`A028242(xor(1, A003991(n+1)))`
-/

namespace A143901.P11834975800325927642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A003991 (n + 1))).toNat

end

end A143901.P11834975800325927642

namespace A143901

/-- `A028242(xor(1, A003991(n+1)))` -/
def P11834975800325927642.Spec : Prop :=
  ∀ n, P11834975800325927642.a n = A143901 (n + 1)

end A143901

/-! ## A143901.P7782932592233870545

`ceil((A049627(n)+A049615(n))/2)`
-/

namespace A143901.P7782932592233870545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049627 n + A049615 n : ℚ) / 2⌉

end

end A143901.P7782932592233870545

namespace A143901

/-- `ceil((A049627(n)+A049615(n))/2)` -/
def P7782932592233870545.Spec : Prop :=
  ∀ n, P7782932592233870545.a n = A143901 (n + 1)

end A143901

/-! ## A143901.P16260021563952439267

`A003991(n+1)-A143902(n+1)`
-/

namespace A143901.P16260021563952439267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A143902 (n + 1)

end

end A143901.P16260021563952439267

namespace A143901

/-- `A003991(n+1)-A143902(n+1)` -/
def P16260021563952439267.Spec : Prop :=
  ∀ n, P16260021563952439267.a n = A143901 (n + 1)

end A143901

/-! ## A143901.P15130406097541515813

`floor(A005843(A003991(n+1)+1)/4)`
-/

namespace A143901.P15130406097541515813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005843 (A003991 (n + 1) + 1).toNat : ℚ) / 4⌋

end

end A143901.P15130406097541515813

namespace A143901

/-- `floor(A005843(A003991(n+1)+1)/4)` -/
def P15130406097541515813.Spec : Prop :=
  ∀ n, P15130406097541515813.a n = A143901 (n + 1)

end A143901

/-! ## A143901.P3977217340736056565

`round(A002260(n+1)*A004736(n+1)/2)`
-/

namespace A143901.P3977217340736056565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002260 (n + 1) * A004736 (n + 1) : ℚ) / 2)

end

end A143901.P3977217340736056565

namespace A143901

/-- `round(A002260(n+1)*A004736(n+1)/2)` -/
def P3977217340736056565.Spec : Prop :=
  ∀ n, P3977217340736056565.a n = A143901 (n + 1)

end A143901

/-! ## A143901.P3363089712025494932

`round((A002262(n)+1)*A004736(n+1)/2)`
-/

namespace A143901.P3363089712025494932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A002262 n + 1) * A004736 (n + 1) : ℚ) / 2)

end

end A143901.P3363089712025494932

namespace A143901

/-- `round((A002262(n)+1)*A004736(n+1)/2)` -/
def P3363089712025494932.Spec : Prop :=
  ∀ n, P3363089712025494932.a n = A143901 (n + 1)

end A143901

/-! ## A143901.P15271173406805646920

`floor((A003991(n+1)+1)/A020639(2*(n+1)))`
-/

namespace A143901.P15271173406805646920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003991 (n + 1) + 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)⌋

end

end A143901.P15271173406805646920

namespace A143901

/-- `floor((A003991(n+1)+1)/A020639(2*(n+1)))` -/
def P15271173406805646920.Spec : Prop :=
  ∀ n, P15271173406805646920.a n = A143901 (n + 1)

end A143901

/-! ## A143901.P5775381860187124160

`A110656(A098352(n+1))`
-/

namespace A143901.P5775381860187124160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A098352 (n + 1)).toNat

end

end A143901.P5775381860187124160

namespace A143901

/-- `A110656(A098352(n+1))` -/
def P5775381860187124160.Spec : Prop :=
  ∀ n, P5775381860187124160.a n = A143901 (n + 1)

end A143901

/-!
# A143902: Rectangular array R by antidiagonals: R(m,n) = number of black squares.

The programs for A143902, the canonical program `A143902.P5916339437029833280` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143902 has offset 1).

The definition of A143902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143902.P5916339437029833280

`ceil(A059036(n)/2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A143902

/-- `ceil(A059036(n)/2)` -/
def P5916339437029833280.Spec : Prop :=
  ∀ n, P5916339437029833280.a n = A143902 (n + 1)

theorem P5916339437029833280.correct : P5916339437029833280.Spec := by
  intro n
  simp only [A143902, Nat.add_sub_cancel]

end A143902

/-! ## A143902.P6237044912251604403

`floor(A003991(n+1)/2)`
-/

namespace A143902.P6237044912251604403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003991 (n + 1) : ℚ) / 2⌋

end

end A143902.P6237044912251604403

namespace A143902

/-- `floor(A003991(n+1)/2)` -/
def P6237044912251604403.Spec : Prop :=
  ∀ n, P6237044912251604403.a n = A143902 (n + 1)

end A143902

/-! ## A143902.P2267424911047298936

`floor(A098352(n+1)/8)`
-/

namespace A143902.P2267424911047298936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098352 (n + 1) : ℚ) / 8⌋

end

end A143902.P2267424911047298936

namespace A143902

/-- `floor(A098352(n+1)/8)` -/
def P2267424911047298936.Spec : Prop :=
  ∀ n, P2267424911047298936.a n = A143902 (n + 1)

end A143902

/-! ## A143902.P1138595135386475578

`A110654(A059036(n))`
-/

namespace A143902.P1138595135386475578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A059036 n).toNat

end

end A143902.P1138595135386475578

namespace A143902

/-- `A110654(A059036(n))` -/
def P1138595135386475578.Spec : Prop :=
  ∀ n, P1138595135386475578.a n = A143902 (n + 1)

end A143902

/-! ## A143902.P16075916890519989061

`A004526(A003991(n+1))`
-/

namespace A143902.P16075916890519989061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003991 (n + 1)).toNat

end

end A143902.P16075916890519989061

namespace A143902

/-- `A004526(A003991(n+1))` -/
def P16075916890519989061.Spec : Prop :=
  ∀ n, P16075916890519989061.a n = A143902 (n + 1)

end A143902

/-! ## A143902.P10824450260080718217

`A008619(A059036(n)+1)-1`
-/

namespace A143902.P10824450260080718217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A059036 n + 1).toNat - 1

end

end A143902.P10824450260080718217

namespace A143902

/-- `A008619(A059036(n)+1)-1` -/
def P10824450260080718217.Spec : Prop :=
  ∀ n, P10824450260080718217.a n = A143902 (n + 1)

end A143902

/-! ## A143902.P9563594933836074941

`A110654(A003991(n+1)-1)`
-/

namespace A143902.P9563594933836074941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A003991 (n + 1) - 1).toNat

end

end A143902.P9563594933836074941

namespace A143902

/-- `A110654(A003991(n+1)-1)` -/
def P9563594933836074941.Spec : Prop :=
  ∀ n, P9563594933836074941.a n = A143902 (n + 1)

end A143902

/-! ## A143902.P9821646500579394878

`floor((A049627(n)+A049615(n))/2)`
-/

namespace A143902.P9821646500579394878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049627 n + A049615 n : ℚ) / 2⌋

end

end A143902.P9821646500579394878

namespace A143902

/-- `floor((A049627(n)+A049615(n))/2)` -/
def P9821646500579394878.Spec : Prop :=
  ∀ n, P9821646500579394878.a n = A143902 (n + 1)

end A143902

/-! ## A143902.P2391342110510949790

`round((A004247(n)+A003056(n))/2)`
-/

namespace A143902.P2391342110510949790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004247 n + A003056 n : ℚ) / 2)

end

end A143902.P2391342110510949790

namespace A143902

/-- `round((A004247(n)+A003056(n))/2)` -/
def P2391342110510949790.Spec : Prop :=
  ∀ n, P2391342110510949790.a n = A143902 (n + 1)

end A143902

/-! ## A143902.P9837921406100840985

`A065033(A003991(n+1)+1)-1`
-/

namespace A143902.P9837921406100840985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A003991 (n + 1) + 1).toNat - 1

end

end A143902.P9837921406100840985

namespace A143902

/-- `A065033(A003991(n+1)+1)-1` -/
def P9837921406100840985.Spec : Prop :=
  ∀ n, P9837921406100840985.a n = A143902 (n + 1)

end A143902

/-! ## A143902.P13372826042554633716

`A008619(A003991(n+1)+2)-2`
-/

namespace A143902.P13372826042554633716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003991 (n + 1) + 2).toNat - 2

end

end A143902.P13372826042554633716

namespace A143902

/-- `A008619(A003991(n+1)+2)-2` -/
def P13372826042554633716.Spec : Prop :=
  ∀ n, P13372826042554633716.a n = A143902 (n + 1)

end A143902

/-! ## A143902.P6824156684959647996

`A003991(n+1)-A143901(n+1)`
-/

namespace A143902.P6824156684959647996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A143901 (n + 1)

end

end A143902.P6824156684959647996

namespace A143902

/-- `A003991(n+1)-A143901(n+1)` -/
def P6824156684959647996.Spec : Prop :=
  ∀ n, P6824156684959647996.a n = A143902 (n + 1)

end A143902

/-! ## A143902.P4908659337355644354

`A205400(n+1)-A128177(n+1)`
-/

namespace A143902.P4908659337355644354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205400 (n + 1) - A128177 (n + 1)

end

end A143902.P4908659337355644354

namespace A143902

/-- `A205400(n+1)-A128177(n+1)` -/
def P4908659337355644354.Spec : Prop :=
  ∀ n, P4908659337355644354.a n = A143902 (n + 1)

end A143902

/-! ## A143902.P7192561861277419431

`round((A002260(n+1)*A004736(n+1)-1)/2)`
-/

namespace A143902.P7192561861277419431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002260 (n + 1) * A004736 (n + 1) - 1 : ℚ) / 2)

end

end A143902.P7192561861277419431

namespace A143902

/-- `round((A002260(n+1)*A004736(n+1)-1)/2)` -/
def P7192561861277419431.Spec : Prop :=
  ∀ n, P7192561861277419431.a n = A143902 (n + 1)

end A143902

/-! ## A143902.P14205557800478061547

`A004526(A002260(n+1)*A004736(n+1))`
-/

namespace A143902.P14205557800478061547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002260 (n + 1) * A004736 (n + 1)).toNat

end

end A143902.P14205557800478061547

namespace A143902

/-- `A004526(A002260(n+1)*A004736(n+1))` -/
def P14205557800478061547.Spec : Prop :=
  ∀ n, P14205557800478061547.a n = A143902 (n + 1)

end A143902

/-! ## A143902.P10517637291509161744

`A123108(A002260(n+1)*A004736(n+1))`
-/

namespace A143902.P10517637291509161744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A002260 (n + 1) * A004736 (n + 1)).toNat

end

end A143902.P10517637291509161744

namespace A143902

/-- `A123108(A002260(n+1)*A004736(n+1))` -/
def P10517637291509161744.Spec : Prop :=
  ∀ n, P10517637291509161744.a n = A143902 (n + 1)

end A143902

/-! ## A143902.P17549852788624670610

`A004526(sqrt(A055461(n+1))*A002260(n+1))`
-/

namespace A143902.P17549852788624670610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ) * (A002260 (n + 1) : ℝ))).toNat

end

end A143902.P17549852788624670610

namespace A143902

/-- `A004526(sqrt(A055461(n+1))*A002260(n+1))` -/
def P17549852788624670610.Spec : Prop :=
  ∀ n, P17549852788624670610.a n = A143902 (n + 1)

end A143902

/-! ## A143902.P10926888993477219602

`A004526(sqrt(A133819(n+1))*A004736(n+1))`
-/

namespace A143902.P10926888993477219602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ) * (A004736 (n + 1) : ℝ))).toNat

end

end A143902.P10926888993477219602

namespace A143902

/-- `A004526(sqrt(A133819(n+1))*A004736(n+1))` -/
def P10926888993477219602.Spec : Prop :=
  ∀ n, P10926888993477219602.a n = A143902 (n + 1)

end A143902

/-! ## A143902.P9859095040018088608

`floor((A004277(A002260(n+1)*A004736(n+1))+1)/4)`
-/

namespace A143902.P9859095040018088608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004277 (A002260 (n + 1) * A004736 (n + 1)).toNat + 1 : ℚ) / 4⌋

end

end A143902.P9859095040018088608

namespace A143902

/-- `floor((A004277(A002260(n+1)*A004736(n+1))+1)/4)` -/
def P9859095040018088608.Spec : Prop :=
  ∀ n, P9859095040018088608.a n = A143902 (n + 1)

end A143902

/-! ## A143902.P18348075076435895698

`A004396(A143998(n+1))`
-/

namespace A143902.P18348075076435895698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A143998 (n + 1)).toNat

end

end A143902.P18348075076435895698

namespace A143902

/-- `A004396(A143998(n+1))` -/
def P18348075076435895698.Spec : Prop :=
  ∀ n, P18348075076435895698.a n = A143902 (n + 1)

end A143902

/-!
# A143903: A positive integer k is included if |(number of 0's in binary k) - (number of 1's in binary k)| divides k.

The programs for A143903, the canonical program `A143903.P8390654288726678182` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143903 has offset 1).

The definition of A143903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143903.P8390654288726678182

`eq[n+1, lcm(n+1, A037861(n+1))]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A143903

/-- `eq[n+1, lcm(n+1, A037861(n+1))]+1` -/
def P8390654288726678182.Spec : Prop :=
  ∀ n, (P8390654288726678182.a n : ℤ) = A143903 (n + 1)

theorem P8390654288726678182.correct : P8390654288726678182.Spec := by
  intro n
  simp only [A143903, Nat.add_sub_cancel]

end A143903

/-! ## A143903.P15241181475644340458

`eq[n, lcm(A028310(n), A037861(n))]`
-/

namespace A143903.P15241181475644340458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A037861 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143903.P15241181475644340458

namespace A143903

/-- `eq[n, lcm(A028310(n), A037861(n))]` -/
def P15241181475644340458.Spec : Prop :=
  ∀ n, (P15241181475644340458.a n : ℤ) = A143903 (n + 1)

end A143903

/-! ## A143903.P15541824053659731970

`eq[lcm(n, A145037(n)), A028310(n)]`
-/

namespace A143903.P15541824053659731970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A145037 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143903.P15541824053659731970

namespace A143903

/-- `eq[lcm(n, A145037(n)), A028310(n)]` -/
def P15541824053659731970.Spec : Prop :=
  ∀ n, (P15541824053659731970.a n : ℤ) = A143903 (n + 1)

end A143903

/-!
# A143905: Positive integers n that are palindromic in base 2 and whose binary representation has the same number of 0's as 1's.

The programs for A143905, the canonical program `A143905.P4327067562106861004` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143905 has offset 1).

The definition of A143905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1047 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143905.P2500942792488700207

`A031443(n+1)*2^A070939(A031443(n+1))+A030101(A031443(n+1))`
-/

namespace A143905.P2500942792488700207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031443 (n + 1) : ℚ) * (2 : ℚ) ^ (A070939 (A031443 (n + 1)).toNat : ℤ) + (A030101 (A031443 (n + 1)).toNat : ℚ)

end

end A143905.P2500942792488700207

namespace A143905

/-- `A031443(n+1)*2^A070939(A031443(n+1))+A030101(A031443(n+1))` -/
def P2500942792488700207.Spec : Prop :=
  ∀ n, P2500942792488700207.a n = (A143905 (n + 1) : ℚ)

end A143905

/-! ## A143905.P13209830925217902755

`A048701(A031443(n+1))`
-/

namespace A143905.P13209830925217902755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048701 (A031443 (n + 1)).toNat

end

end A143905.P13209830925217902755

namespace A143905

/-- `A048701(A031443(n+1))` -/
def P13209830925217902755.Spec : Prop :=
  ∀ n, P13209830925217902755.a n = A143905 (n + 1)

end A143905

/-! ## A143905.P14199721221307006983

`A048701(∑[A145057(n+1)])`
-/

namespace A143905.P14199721221307006983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048701 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A143905.P14199721221307006983

namespace A143905

/-- `A048701(∑[A145057(n+1)])` -/
def P14199721221307006983.Spec : Prop :=
  ∀ n, P14199721221307006983.a n = A143905 (n + 1)

end A143905

/-! ## A143905.P4327067562106861004

`3*A048702(eq[A000120(n), A023416(n)])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143905

/-- `3*A048702(eq[A000120(n), A023416(n)])` -/
def P4327067562106861004.Spec : Prop :=
  ∀ n, P4327067562106861004.a n = A143905 (n + 1)

theorem P4327067562106861004.correct : P4327067562106861004.Spec := by
  intro n
  simp only [A143905, Nat.add_sub_cancel]

end A143905

/-! ## A143905.P13842261408094941929

`3*A048702(eq[A130706(n), A145037(n)])`
-/

namespace A143905.P13842261408094941929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048702 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A143905.P13842261408094941929

namespace A143905

/-- `3*A048702(eq[A130706(n), A145037(n)])` -/
def P13842261408094941929.Spec : Prop :=
  ∀ n, P13842261408094941929.a n = A143905 (n + 1)

end A143905

/-! ## A143905.P14333863206668701710

`3*A048702(eq[A145037(n), A151665(n)])`
-/

namespace A143905.P14333863206668701710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048702 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A143905.P14333863206668701710

namespace A143905

/-- `3*A048702(eq[A145037(n), A151665(n)])` -/
def P14333863206668701710.Spec : Prop :=
  ∀ n, P14333863206668701710.a n = A143905 (n + 1)

end A143905

/-! ## A143905.P3912560324336367011

`∩[A392236(n+1), A048701(n)]`
-/

namespace A143905.P3912560324336367011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048701 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143905.P3912560324336367011

namespace A143905

/-- `∩[A392236(n+1), A048701(n)]` -/
def P3912560324336367011.Spec : Prop :=
  ∀ n, (P3912560324336367011.a n : ℤ) = A143905 (n + 1)

end A143905

/-! ## A143905.P7187095063027977651

`∩[A163170(n+1), A392236(n+1)]`
-/

namespace A143905.P7187095063027977651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143905.P7187095063027977651

namespace A143905

/-- `∩[A163170(n+1), A392236(n+1)]` -/
def P7187095063027977651.Spec : Prop :=
  ∀ n, (P7187095063027977651.a n : ℤ) = A143905 (n + 1)

end A143905

/-! ## A143905.P10206178067125781160

`∩[A306740(n+1), A392236(n+1)]`
-/

namespace A143905.P10206178067125781160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143905.P10206178067125781160

namespace A143905

/-- `∩[A306740(n+1), A392236(n+1)]` -/
def P10206178067125781160.Spec : Prop :=
  ∀ n, (P10206178067125781160.a n : ℤ) = A143905 (n + 1)

end A143905

/-! ## A143905.P16715070782525442356

`∩[A392980(n+1), A048701(n)]`
-/

namespace A143905.P16715070782525442356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048701 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143905.P16715070782525442356

namespace A143905

/-- `∩[A392980(n+1), A048701(n)]` -/
def P16715070782525442356.Spec : Prop :=
  ∀ n, (P16715070782525442356.a n : ℤ) = A143905 (n + 1)

end A143905

/-! ## A143905.P495849056238161970

`∩[A006995(n+1), A392980(n+1)]`
-/

namespace A143905.P495849056238161970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143905.P495849056238161970

namespace A143905

/-- `∩[A006995(n+1), A392980(n+1)]` -/
def P495849056238161970.Spec : Prop :=
  ∀ n, (P495849056238161970.a n : ℤ) = A143905 (n + 1)

end A143905

/-! ## A143905.P17312429190928353594

`∩[A163170(n+1), A392980(n+1)]`
-/

namespace A143905.P17312429190928353594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143905.P17312429190928353594

namespace A143905

/-- `∩[A163170(n+1), A392980(n+1)]` -/
def P17312429190928353594.Spec : Prop :=
  ∀ n, (P17312429190928353594.a n : ℤ) = A143905 (n + 1)

end A143905

/-! ## A143905.P10016959551259105333

`∩[A306740(n+1), A392980(n+1)]`
-/

namespace A143905.P10016959551259105333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143905.P10016959551259105333

namespace A143905

/-- `∩[A306740(n+1), A392980(n+1)]` -/
def P10016959551259105333.Spec : Prop :=
  ∀ n, (P10016959551259105333.a n : ℤ) = A143905 (n + 1)

end A143905

/-!
# A143906: a(n) is A143905(n) written in binary.

The programs for A143906, the canonical program `A143906.P2069080798206098839` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143906 has offset 1).

The definition of A143906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1047 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143906.P3314238388916456487

`A342036(A031443(n+1))`
-/

namespace A143906.P3314238388916456487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342036 (A031443 (n + 1)).toNat

end

end A143906.P3314238388916456487

namespace A143906

/-- `A342036(A031443(n+1))` -/
def P3314238388916456487.Spec : Prop :=
  ∀ n, P3314238388916456487.a n = A143906 (n + 1)

end A143906

/-! ## A143906.P2069080798206098839

`A342036(eq[2, A099246(n)])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143906

/-- `A342036(eq[2, A099246(n)])` -/
def P2069080798206098839.Spec : Prop :=
  ∀ n, P2069080798206098839.a n = A143906 (n + 1)

theorem P2069080798206098839.correct : P2069080798206098839.Spec := by
  intro n
  simp only [A143906, Nat.add_sub_cancel]

end A143906

/-! ## A143906.P7773338262502570266

`A342036(∑[∑[A145058(n+1)]])`
-/

namespace A143906.P7773338262502570266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145058 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342036 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A143906.P7773338262502570266

namespace A143906

/-- `A342036(∑[∑[A145058(n+1)]])` -/
def P7773338262502570266.Spec : Prop :=
  ∀ n, P7773338262502570266.a n = A143906 (n + 1)

end A143906

/-! ## A143906.P697622470340564918

`A342036(floor(A337238(n+1)/4))`
-/

namespace A143906.P697622470340564918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342036 ⌊(A337238 (n + 1) : ℚ) / 4⌋.toNat

end

end A143906.P697622470340564918

namespace A143906

/-- `A342036(floor(A337238(n+1)/4))` -/
def P697622470340564918.Spec : Prop :=
  ∀ n, P697622470340564918.a n = A143906 (n + 1)

end A143906

/-! ## A143906.P1379090225577249837

`A342036(eq[A000007(n), A145037(n)])`
-/

namespace A143906.P1379090225577249837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342036 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A143906.P1379090225577249837

namespace A143906

/-- `A342036(eq[A000007(n), A145037(n)])` -/
def P1379090225577249837.Spec : Prop :=
  ∀ n, P1379090225577249837.a n = A143906 (n + 1)

end A143906

/-! ## A143906.P3502557071321449127

`A342036(∩[A031461(n+1), A072602(n+1)])`
-/

namespace A143906.P3502557071321449127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342036 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A143906.P3502557071321449127

namespace A143906

/-- `A342036(∩[A031461(n+1), A072602(n+1)])` -/
def P3502557071321449127.Spec : Prop :=
  ∀ n, P3502557071321449127.a n = A143906 (n + 1)

end A143906

/-!
# A143907: If n = product{primes p(k)|n} p(k)^b(n,p(k)), where p(k) is the k-th prime that divides n (when these primes are listed from smallest to largest) and each b(n,p(k)) is a positive integer, then the sequence contains the non-prime-powers n such that p(k)^b(n,p(k)) < p(k+1) for all k, 1<=k<= -1 + number of distinct prime divisors of n.

The programs for A143907, there is no canonical definition to state claims against.
-/

/-! ## A143907.P18165840067174726546

`filter[A057714(n+1), A168185(#)]`
-/

namespace A143907.P18165840067174726546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A143907.P18165840067174726546

/-! ## A143907.P496361040413563077

`∩[A057714(n+1), A064598(n+1)]`
-/

namespace A143907.P496361040413563077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143907.P496361040413563077

/-! ## A143907.P12393801811986651458

`∩[A057714(n+1), A168186(n+1)]`
-/

namespace A143907.P12393801811986651458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143907.P12393801811986651458

/-! ## A143907.P9646899811763075317

`∪[A007304(n+1), A132982(n+1)]`
-/

namespace A143907.P9646899811763075317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A143907.P9646899811763075317

/-! ## A143907.P3801769291387724829

`∪[A029702(n+1), A132982(n+1)]`
-/

namespace A143907.P3801769291387724829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A143907.P3801769291387724829

/-! ## A143907.P5084053151402068723

`∪[A046401(n+1), A132982(n+1)]`
-/

namespace A143907.P5084053151402068723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A143907.P5084053151402068723

/-! ## A143907.P702677380233204721

`∪[A046712(n+1), A132982(n+1)]`
-/

namespace A143907.P702677380233204721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A143907.P702677380233204721

/-! ## A143907.P8456665862831097578

`∪[A052053(n+1), A132982(n+1)]`
-/

namespace A143907.P8456665862831097578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A143907.P8456665862831097578

/-! ## A143907.P5694346698914897462

`∪[A068919(n+1), A132982(n+1)]`
-/

namespace A143907.P5694346698914897462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A143907.P5694346698914897462

/-!
# A143909: A positive integer n is included if the number of digits in the binary representation of n is a multiple of the number of zeros in the binary representation of n.

The programs for A143909, there is no canonical definition to state claims against.
-/

/-! ## A143909.P10956649961965005543

`lt[0, A084904(A165265(n))]`
-/

namespace A143909.P10956649961965005543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084904 (A165265 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A143909.P10956649961965005543

/-! ## A143909.P14085744542881538141

`eq[A080791(n), A099244(A028310(n))]`
-/

namespace A143909.P14085744542881538141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099244 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143909.P14085744542881538141

/-! ## A143909.P11081478181397308765

`eq[A052409(A176893(n)), A080791(n)]`
-/

namespace A143909.P11081478181397308765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A176893 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143909.P11081478181397308765

/-! ## A143909.P3103291484210400085

`eq[A080791(n), A284558(A073138(n))]`
-/

namespace A143909.P3103291484210400085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284558 (A073138 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143909.P3103291484210400085

/-! ## A143909.P2955938676554715322

`eq[A080791(n), A099244(A233583(n+1))]`
-/

namespace A143909.P2955938676554715322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099244 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143909.P2955938676554715322

/-! ## A143909.P17086846841833837073

`eq[A080791(n), A099244(A065033(2*n))]`
-/

namespace A143909.P17086846841833837073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099244 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143909.P17086846841833837073

/-! ## A143909.P12928043965201083247

`eq[A080791(n), A099244(A000038(n)+n)]`
-/

namespace A143909.P12928043965201083247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099244 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143909.P12928043965201083247

/-! ## A143909.P18033820270341647125

`eq[A080791(n)*A099246(n), A070939(n)]`
-/

namespace A143909.P18033820270341647125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n * A099246 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143909.P18033820270341647125

/-! ## A143909.P11786634365612015978

`eq[A023416(n)*A099246(n), A029837(n+1)]`
-/

namespace A143909.P11786634365612015978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n * A099246 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143909.P11786634365612015978

/-!
# A143912: Primes of the form : 2*p+1=p1(prime), 2*p1+3=p2(prime), 2*p2+5=p3(prime).

The programs for A143912, there is no canonical definition to state claims against.
-/

/-! ## A143912.P15383268203762250796

`∩[A115449(n+1), A208325(n)]`
-/

namespace A143912.P15383268203762250796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208325 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143912.P15383268203762250796

/-!
# A143914: Numerators of continued fraction convergents to e^(W(e-1)/(e-1)) where W(z) denotes the Lambert W function and e = 2.718281828...

The programs for A143914, there is no canonical definition to state claims against.
-/

/-! ## A143914.P13467018251583186451

`A067539(or(2^n, gcd(n+1, (9-n)^13)))`
-/

namespace A143914.P13467018251583186451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067539 (Nat.lor (2 ^ n) (Int.gcd (n + 1 : ℤ) ((9 - (n : ℤ)) ^ 13)))

end

end A143914.P13467018251583186451

/-! ## A143914.P13560264204013273841

`A054225(A018261(n+4))-1`
-/

namespace A143914.P13560264204013273841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A018261 (n + 4)).toNat - 1

end

end A143914.P13560264204013273841

/-! ## A143914.P9575333651870353450

`A067539(A179016(n)+A084214(n))`
-/

namespace A143914.P9575333651870353450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067539 (A179016 n + A084214 n).toNat

end

end A143914.P9575333651870353450

/-!
# A143916: G.f. A(x) satisfies: A(x) = 1+x + x^2*A(x)*A'(x).

The programs for A143916, there is no canonical definition to state claims against.
-/

/-! ## A143916.P16274737835116707648

`A319198(A064317(n!))`
-/

namespace A143916.P16274737835116707648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319198 (A064317 (Nat.factorial n)).toNat

end

end A143916.P16274737835116707648

/-! ## A143916.P17296137882513800163

`A126208((n+1)!-∑{e}[n+1, #])`
-/

namespace A143916.P17296137882513800163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126208 (Nat.factorial (n + 1) - ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A143916.P17296137882513800163

/-! ## A143916.P18276957261822905352

`A110656(A005500(n)+2)`
-/

namespace A143916.P18276957261822905352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A005500 n + 2).toNat

end

end A143916.P18276957261822905352

/-!
# A143917: G.f. A(x) satisfies A(x) = 1/(1-x) + x^2*A(x)*A'(x).

The programs for A143917, there is no canonical definition to state claims against.
-/

/-! ## A143917.P4494628988915580754

`A323658(n+1)-A000045(and(n, 2*n))`
-/

namespace A143917.P4494628988915580754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323658 (n + 1) - A000045 (Nat.land n (2 * n))

end

end A143917.P4494628988915580754

/-! ## A143917.P16467564256434321270

`A288156(A004523(4*n*a(n-1)+1))` with `a(0)=1`
-/

namespace A143917.P16467564256434321270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A288156 (A004523 (4 * ((n : ℤ) * a (n - 1)) + 1).toNat).toNat

end

end A143917.P16467564256434321270

/-! ## A143917.P5768433480949471569

`A323658(n+1)-A056137(A000088(n))`
-/

namespace A143917.P5768433480949471569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323658 (n + 1) - A056137 (A000088 n).toNat

end

end A143917.P5768433480949471569

/-!
# A143918: G.f. A(x) satisfies: A(x) = 1/(1-x)^2 + x^2*A'(x).

The programs for A143918, the canonical program `A143918.P14184366314646277572` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143918 has offset 0).

The definition of A143918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143918.P14184366314646277572

`(n-1)*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143918

/-- `(n-1)*a(n-1)+n+1` -/
def P14184366314646277572.Spec : Prop :=
  ∀ n, P14184366314646277572.a n = A143918 n

theorem P14184366314646277572.correct : P14184366314646277572.Spec := by
  intro n
  simp only [A143918]

end A143918

/-! ## A143918.P17683748758296591809

`record[(n-2)*a(n-1)+n]` with `a(0)=1`
-/

namespace A143918.P17683748758296591809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 2) * f1 (n - 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143918.P17683748758296591809

namespace A143918

/-- `record[(n-2)*a(n-1)+n]` -/
def P17683748758296591809.Spec : Prop :=
  ∀ n, P17683748758296591809.a n = A143918 n

end A143918

/-! ## A143918.P6431467920297735216

`1-((1-n)*a(n-1)-n)` with `a(0)=1`
-/

namespace A143918.P6431467920297735216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((1 - (n : ℤ)) * a (n - 1) - (n : ℤ))

end

end A143918.P6431467920297735216

namespace A143918

/-- `1-((1-n)*a(n-1)-n)` -/
def P6431467920297735216.Spec : Prop :=
  ∀ n, P6431467920297735216.a n = A143918 n

theorem P6431467920297735216.correct : P6431467920297735216.Spec := by
  intro n
  simp only [A143918, Nat.add_sub_cancel, A143918.P6431467920297735216.a, A143918.P14184366314646277572.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A143918

/-! ## A143918.P7644084028926689112

`lcm(1-n, a(n-1))+1+n` with `a(0)=1`
-/

namespace A143918.P7644084028926689112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (1 - (n : ℤ)) (a (n - 1) : ℤ) + 1 + n

end

end A143918.P7644084028926689112

namespace A143918

/-- `lcm(1-n, a(n-1))+1+n` -/
def P7644084028926689112.Spec : Prop :=
  ∀ n, (P7644084028926689112.a n : ℤ) = A143918 n

end A143918

/-! ## A143918.P13909430429710120578

`a(n-1)/(n-1)^(-1)+n+1` with `a(0)=1, a(1)=2`
-/

namespace A143918.P13909430429710120578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / ((n : ℤ) - 1 : ℚ) ^ (-1 : ℤ) + (n + 1 : ℚ)

end

end A143918.P13909430429710120578

namespace A143918

/-- `a(n-1)/(n-1)^(-1)+n+1` -/
def P13909430429710120578.Spec : Prop :=
  ∀ n, P13909430429710120578.a n = (A143918 n : ℚ)

end A143918

/-! ## A143918.P4857009178066228633

`n+1+a(A023443(n))*A023443(n)` with `a(0)=1`
-/

namespace A143918.P4857009178066228633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) + a (A023443 n).toNat * A023443 n

end

end A143918.P4857009178066228633

namespace A143918

/-- `n+1+a(A023443(n))*A023443(n)` -/
def P4857009178066228633.Spec : Prop :=
  ∀ n, P4857009178066228633.a n = A143918 n

end A143918

/-! ## A143918.P12015679661761377003

`A111063(n)+A007526(n)/A028310(n)`
-/

namespace A143918.P12015679661761377003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111063 n : ℚ) + (A007526 n : ℚ) / (A028310 n : ℚ)

end

end A143918.P12015679661761377003

namespace A143918

/-- `A111063(n)+A007526(n)/A028310(n)` -/
def P12015679661761377003.Spec : Prop :=
  ∀ n, P12015679661761377003.a n = (A143918 n : ℚ)

end A143918

/-!
# A143920: E.g.f. satisfies: A(x) = 1 + x*exp(2*Integral A(x) dx).

The programs for A143920, there is no canonical definition to state claims against.
-/

/-! ## A143920.P17219371008567404426

`n*(A350969(a(n-1))+a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A143920.P17219371008567404426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * (A350969 (a (n - 1)).toNat + a (n - 1))

end

end A143920.P17219371008567404426

/-! ## A143920.P10947922253961730223

`A286956(2*A052860(n))`
-/

namespace A143920.P10947922253961730223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286956 (2 * A052860 n).toNat

end

end A143920.P10947922253961730223

/-!
# A143921: E.g.f. A(x) satisfies: A(x) = exp(x + x*Integral A(x) dx).

The programs for A143921, there is no canonical definition to state claims against.
-/

/-! ## A143921.P15052426193285097639

`A004396(A302749(n+1)+A180191(n+1))`
-/

namespace A143921.P15052426193285097639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A302749 (n + 1) + A180191 (n + 1)).toNat

end

end A143921.P15052426193285097639

/-! ## A143921.P17015481349726576636

`A103221(n!*floor((n+1)*sqrt(6)))`
-/

namespace A143921.P17015481349726576636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 ((Nat.factorial n : ℤ) * ⌊(n + 1 : ℝ) * Real.sqrt (6 : ℝ)⌋).toNat

end

end A143921.P17015481349726576636

/-!
# A143922: E.g.f. A(x) satisfies: A(x) = 1 + x*exp(Integral A(x)^2 dx).

The programs for A143922, there is no canonical definition to state claims against.
-/

/-! ## A143922.P9554610878797726949

`n*A329962(a(n-1))` with `a(0)=1`
-/

namespace A143922.P9554610878797726949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A329962 (a (n - 1)).toNat

end

end A143922.P9554610878797726949

/-! ## A143922.P12059534924207410221

`n*A329987(a(n-1))` with `a(0)=1`
-/

namespace A143922.P12059534924207410221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A329987 (a (n - 1)).toNat

end

end A143922.P12059534924207410221

/-!
# A143923: E.g.f. A(x) satisfies: A(x) = 1 + x*exp(Integral A(x)^3 dx).

The programs for A143923, there is no canonical definition to state claims against.
-/

/-! ## A143923.P10900938368438377435

`lcm(lcm(8, a(n-1))-2, A085709(2*n))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A143923.P10900938368438377435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  Int.lcm ((Nat.lcm 8 (a (n - 1)) : ℤ) - 2) (A085709 (2 * n))

end

end A143923.P10900938368438377435

/-! ## A143923.P10422391693420295999

`A262694(A118804(n)+1)`
-/

namespace A143923.P10422391693420295999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262694 (A118804 n + 1).toNat

end

end A143923.P10422391693420295999

/-!
# A143924: E.g.f. A(x) satisfies: A(x) = 1 + x*exp(Integral A(x)^4 dx).

The programs for A143924, there is no canonical definition to state claims against.
-/

/-! ## A143924.P6694051602401702227

`∑[A008612(∑[A055860(n)])]`
-/

namespace A143924.P6694051602401702227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055860 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143924.P6694051602401702227

/-! ## A143924.P3197923981790910243

`A103221(∑[∑[A055860(n)]])`
-/

namespace A143924.P3197923981790910243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055860 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A143924.P3197923981790910243

/-!
# A143925: E.g.f. A(x) satisfies A(x) = exp(x + x^2*A'(x)).

The programs for A143925, there is no canonical definition to state claims against.
-/

/-! ## A143925.P11926493427418309608

`A050903(A079225(n))`
-/

namespace A143925.P11926493427418309608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050903 (A079225 n).toNat

end

end A143925.P11926493427418309608

/-!
# A143926: G.f. satisfies: A(x) = 1 + x*A(x)*A(-x) + x^2*A(x)^2*A(-x)^2.

The programs for A143926, there is no canonical definition to state claims against.
-/

/-! ## A143926.P8201648171036500125

`A378292(A165157(n))`
-/

namespace A143926.P8201648171036500125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378292 (A165157 n).toNat

end

end A143926.P8201648171036500125

/-! ## A143926.P15002082602625871068

`A378292(eq[1, A343656(n+3)])`
-/

namespace A143926.P15002082602625871068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343656 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143926.P15002082602625871068

/-! ## A143926.P7733598935502741839

`A378292(eq[1, A110112(n+2)])`
-/

namespace A143926.P7733598935502741839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110112 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143926.P7733598935502741839

/-! ## A143926.P5763887864274189305

`A378292(lt[A110112(n+2), 2])`
-/

namespace A143926.P5763887864274189305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110112 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378292 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A143926.P5763887864274189305

/-! ## A143926.P11522468692066298005

`A089646(A056514(n)+1)`
-/

namespace A143926.P11522468692066298005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089646 (A056514 n + 1).toNat

end

end A143926.P11522468692066298005

/-!
# A143927: G.f. A(x) satisfies A(x) = (1 + x*A(x) + x^2*A(x)^2)^2.

The programs for A143927, there is no canonical definition to state claims against.
-/

/-! ## A143927.P1718052944854013884

`((24*n+12)*A006605(n)+(3*n+5)*A006605(n+1))/(13*n+17)`
-/

namespace A143927.P1718052944854013884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((24 * n + 12 : ℤ) * A006605 n + (3 * n + 5 : ℤ) * A006605 (n + 1) : ℚ) / (13 * n + 17 : ℚ)

end

end A143927.P1718052944854013884

/-! ## A143927.P13158422063159980777

`A378292(∑[n+3])`
-/

namespace A143927.P13158422063159980777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378292 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143927.P13158422063159980777

/-! ## A143927.P12473244877343509875

`A143926(2*(n+1))`
-/

namespace A143927.P12473244877343509875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143926 (2 * (n + 1))

end

end A143927.P12473244877343509875

/-! ## A143927.P946853405085817233

`record[A143926(and(n, n+1))]`
-/

namespace A143927.P946853405085817233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143926 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143927.P946853405085817233

/-! ## A143927.P16115402258713932778

`record[A143926(A005131(n))]`
-/

namespace A143927.P16115402258713932778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143926 (A005131 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143927.P16115402258713932778

/-! ## A143927.P6718194180357904252

`record[A143926(A014681(n))]`
-/

namespace A143927.P6718194180357904252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143926 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143927.P6718194180357904252

/-! ## A143927.P1818134906345553398

`record[A143926(A133265(n))]`
-/

namespace A143927.P1818134906345553398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143926 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143927.P1818134906345553398

/-! ## A143927.P8479780197241744679

`record[A033999(n)*A143926(n)]`
-/

namespace A143927.P8479780197241744679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A143926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143927.P8479780197241744679

/-! ## A143927.P15183140817534551639

`record[A143926(n)/A000034(n)]`
-/

namespace A143927.P15183140817534551639
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143926 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143927.P15183140817534551639

/-! ## A143927.P15377351487323256918

`record[A143926(n)/A001511(n+1)]`
-/

namespace A143927.P15377351487323256918
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143926 n : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143927.P15377351487323256918

/-! ## A143927.P11320966858595909732

`A027909(n)/(n+1)`
-/

namespace A143927.P11320966858595909732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027909 n : ℚ) / (n + 1 : ℚ)

end

end A143927.P11320966858595909732

/-!
# A143928: 2*p^2, for p an odd prime.

The programs for A143928, the canonical program `A143928.P14190391261956861434` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143928 has offset 1).

The definition of A143928 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079704, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A143928.P14190391261956861434

`A079704(n+2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143928

/-- `A079704(n+2)` -/
def P14190391261956861434.Spec : Prop :=
  ∀ n, P14190391261956861434.a n = A143928 (n + 1)

theorem P14190391261956861434.correct : P14190391261956861434.Spec := by
  intro n
  simp only [A143928, Nat.add_sub_cancel]

end A143928

/-! ## A143928.P3876845710125273160

`2*A001248(n+2)`
-/

namespace A143928.P3876845710125273160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001248 (n + 2)

end

end A143928.P3876845710125273160

namespace A143928

/-- `2*A001248(n+2)` -/
def P3876845710125273160.Spec : Prop :=
  ∀ n, P3876845710125273160.a n = A143928 (n + 1)

end A143928

/-! ## A143928.P3379888511214734384

`2*p?[2*n+1]²`
-/

namespace A143928.P3379888511214734384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2

end

end A143928.P3379888511214734384

namespace A143928

/-- `2*p?[2*n+1]²` -/
def P3379888511214734384.Spec : Prop :=
  ∀ n, (P3379888511214734384.a n : ℤ) = A143928 (n + 1)

end A143928

/-! ## A143928.P4983069355656037887

`lcm(2, p?[n+1+n]²)`
-/

namespace A143928.P4983069355656037887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2)

end

end A143928.P4983069355656037887

namespace A143928

/-- `lcm(2, p?[n+1+n]²)` -/
def P4983069355656037887.Spec : Prop :=
  ∀ n, (P4983069355656037887.a n : ℤ) = A143928 (n + 1)

end A143928

/-! ## A143928.P5070567705356589761

`2*p?[2*n+1]*p?[2*n+1]`
-/

namespace A143928.P5070567705356589761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

end

end A143928.P5070567705356589761

namespace A143928

/-- `2*p?[2*n+1]*p?[2*n+1]` -/
def P5070567705356589761.Spec : Prop :=
  ∀ n, (P5070567705356589761.a n : ℤ) = A143928 (n + 1)

end A143928

/-! ## A143928.P12839918815092580445

`2*A065091(n+1)²`
-/

namespace A143928.P12839918815092580445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065091 (n + 1) ^ 2

end

end A143928.P12839918815092580445

namespace A143928

/-- `2*A065091(n+1)²` -/
def P12839918815092580445.Spec : Prop :=
  ∀ n, P12839918815092580445.a n = A143928 (n + 1)

end A143928

/-! ## A143928.P8610147175025931634

`4*A216244(n+2)+2`
-/

namespace A143928.P8610147175025931634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A216244 (n + 2) + 2

end

end A143928.P8610147175025931634

namespace A143928

/-- `4*A216244(n+2)+2` -/
def P8610147175025931634.Spec : Prop :=
  ∀ n, P8610147175025931634.a n = A143928 (n + 1)

end A143928

/-! ## A143928.P170622836089864575

`4*A066885(n+2)-2`
-/

namespace A143928.P170622836089864575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A066885 (n + 2) - 2

end

end A143928.P170622836089864575

namespace A143928

/-- `4*A066885(n+2)-2` -/
def P170622836089864575.Spec : Prop :=
  ∀ n, P170622836089864575.a n = A143928 (n + 1)

end A143928

/-! ## A143928.P3925874269094407825

`2*Δ[A007504(n+1)]²`
-/

namespace A143928.P3925874269094407825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) ^ 2

end

end A143928.P3925874269094407825

namespace A143928

/-- `2*Δ[A007504(n+1)]²` -/
def P3925874269094407825.Spec : Prop :=
  ∀ n, P3925874269094407825.a n = A143928 (n + 1)

end A143928

/-! ## A143928.P5528291499554382993

`2*Δ[A064365(n+1)]²`
-/

namespace A143928.P5528291499554382993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) ^ 2

end

end A143928.P5528291499554382993

namespace A143928

/-- `2*Δ[A064365(n+1)]²` -/
def P5528291499554382993.Spec : Prop :=
  ∀ n, P5528291499554382993.a n = A143928 (n + 1)

end A143928

/-! ## A143928.P13122117790797867504

`A069484(n+1)+A069482(n+1)`
-/

namespace A143928.P13122117790797867504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 1) + A069482 (n + 1)

end

end A143928.P13122117790797867504

namespace A143928

/-- `A069484(n+1)+A069482(n+1)` -/
def P13122117790797867504.Spec : Prop :=
  ∀ n, P13122117790797867504.a n = A143928 (n + 1)

end A143928

/-! ## A143928.P4002589393391017303

`A349660(n+1)+A261465(n+1)`
-/

namespace A143928.P4002589393391017303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349660 (n + 1) + A261465 (n + 1)

end

end A143928.P4002589393391017303

namespace A143928

/-- `A349660(n+1)+A261465(n+1)` -/
def P4002589393391017303.Spec : Prop :=
  ∀ n, P4002589393391017303.a n = A143928 (n + 1)

end A143928

/-! ## A143928.P6159003803386092056

`A179262(n+2)+1`
-/

namespace A143928.P6159003803386092056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179262 (n + 2) + 1

end

end A143928.P6159003803386092056

namespace A143928

/-- `A179262(n+2)+1` -/
def P6159003803386092056.Spec : Prop :=
  ∀ n, P6159003803386092056.a n = A143928 (n + 1)

end A143928

/-! ## A143928.P18337413142430832559

`A153480(n+1)+4`
-/

namespace A143928.P18337413142430832559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153480 (n + 1) + 4

end

end A143928.P18337413142430832559

namespace A143928

/-- `A153480(n+1)+4` -/
def P18337413142430832559.Spec : Prop :=
  ∀ n, P18337413142430832559.a n = A143928 (n + 1)

end A143928

/-! ## A143928.P16352567381328613433

`A069262(n+2)/2`
-/

namespace A143928.P16352567381328613433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069262 (n + 2) : ℚ) / 2

end

end A143928.P16352567381328613433

namespace A143928

/-- `A069262(n+2)/2` -/
def P16352567381328613433.Spec : Prop :=
  ∀ n, P16352567381328613433.a n = (A143928 (n + 1) : ℚ)

end A143928

/-! ## A143928.P2439784557008241895

`2*A000040(n+2)²`
-/

namespace A143928.P2439784557008241895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 2) ^ 2

end

end A143928.P2439784557008241895

namespace A143928

/-- `2*A000040(n+2)²` -/
def P2439784557008241895.Spec : Prop :=
  ∀ n, P2439784557008241895.a n = A143928 (n + 1)

end A143928

/-! ## A143928.P14540682043281927173

`Δ[2*A024450(n+1)]`
-/

namespace A143928.P14540682043281927173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143928.P14540682043281927173

namespace A143928

/-- `Δ[2*A024450(n+1)]` -/
def P14540682043281927173.Spec : Prop :=
  ∀ n, P14540682043281927173.a n = A143928 (n + 1)

end A143928

/-! ## A143928.P13555692267503688371

`2*Δ[A008348(n+1)]²`
-/

namespace A143928.P13555692267503688371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) ^ 2

end

end A143928.P13555692267503688371

namespace A143928

/-- `2*Δ[A008348(n+1)]²` -/
def P13555692267503688371.Spec : Prop :=
  ∀ n, P13555692267503688371.a n = A143928 (n + 1)

end A143928

/-! ## A143928.P15224067048637685458

`2*Δ[A077039(n+1)]²`
-/

namespace A143928.P15224067048637685458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) ^ 2

end

end A143928.P15224067048637685458

namespace A143928

/-- `2*Δ[A077039(n+1)]²` -/
def P15224067048637685458.Spec : Prop :=
  ∀ n, P15224067048637685458.a n = A143928 (n + 1)

end A143928

/-! ## A143928.P14675171883612349951

`A117961(n+2)+A000040(n+2)`
-/

namespace A143928.P14675171883612349951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117961 (n + 2) + A000040 (n + 2)

end

end A143928.P14675171883612349951

namespace A143928

/-- `A117961(n+2)+A000040(n+2)` -/
def P14675171883612349951.Spec : Prop :=
  ∀ n, P14675171883612349951.a n = A143928 (n + 1)

end A143928

/-!
# A143929: Eigentriangle by rows, termwise products of the natural numbers decrescendo and the bisected Fibonacci series.

The programs for A143929, the canonical program `A143929.P90318685514600081` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143929 has offset 1).

The definition of A143929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143929.P90318685514600081

`A004736(n+1)*A088305(A002262(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143929

/-- `A004736(n+1)*A088305(A002262(n))` -/
def P90318685514600081.Spec : Prop :=
  ∀ n, P90318685514600081.a n = A143929 (n + 1)

theorem P90318685514600081.correct : P90318685514600081.Spec := by
  intro n
  simp only [A143929, Nat.add_sub_cancel]

end A143929

/-! ## A143929.P8496127371520143470

`(A025581(n)+1)*A088305(A002262(n))`
-/

namespace A143929.P8496127371520143470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A088305 (A002262 n).toNat

end

end A143929.P8496127371520143470

namespace A143929

/-- `(A025581(n)+1)*A088305(A002262(n))` -/
def P8496127371520143470.Spec : Prop :=
  ∀ n, P8496127371520143470.a n = A143929 (n + 1)

end A143929

/-! ## A143929.P12185571823126508825

`A004736(n+1)*A193924(A112367(n))`
-/

namespace A143929.P12185571823126508825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A193924 (A112367 n).toNat

end

end A143929.P12185571823126508825

namespace A143929

/-- `A004736(n+1)*A193924(A112367(n))` -/
def P12185571823126508825.Spec : Prop :=
  ∀ n, P12185571823126508825.a n = A143929 (n + 1)

end A143929

/-! ## A143929.P4132063105380877736

`sqrt(A055461(n+1))*A088305(A002262(n))`
-/

namespace A143929.P4132063105380877736
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) * (A088305 (A002262 n).toNat : ℝ)

end

end A143929.P4132063105380877736

namespace A143929

/-- `sqrt(A055461(n+1))*A088305(A002262(n))` -/
def P4132063105380877736.Spec : Prop :=
  ∀ n, P4132063105380877736.a n = (A143929 (n + 1) : ℝ)

end A143929

/-! ## A143929.P12523280161720110692

`A000005(A130321(n))*A193924(A112367(n))`
-/

namespace A143929.P12523280161720110692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A193924 (A112367 n).toNat

end

end A143929.P12523280161720110692

namespace A143929

/-- `A000005(A130321(n))*A193924(A112367(n))` -/
def P12523280161720110692.Spec : Prop :=
  ∀ n, P12523280161720110692.a n = A143929 (n + 1)

end A143929

/-! ## A143929.P9196928501521615234

`A000005(A140303(n))*A193924(A112367(n))`
-/

namespace A143929.P9196928501521615234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A140303 n).toNat * A193924 (A112367 n).toNat

end

end A143929.P9196928501521615234

namespace A143929

/-- `A000005(A140303(n))*A193924(A112367(n))` -/
def P9196928501521615234.Spec : Prop :=
  ∀ n, P9196928501521615234.a n = A143929 (n + 1)

end A143929

/-!
# A143931: a(n) is the smallest positive integer x such that x^2 - n! is prime.

The programs for A143931, there is no canonical definition to state claims against.
-/

/-! ## A143931.P13013165442414834743

`sqrt(A143932(n+1)+(n+1)!)`
-/

namespace A143931.P13013165442414834743
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143932 (n + 1) + (Nat.factorial (n + 1) : ℤ) : ℝ)

end

end A143931.P13013165442414834743

/-! ## A143931.P6545216393830049683

`sqrt(A143932(n+1)+record[A094587(n)])`
-/

namespace A143931.P6545216393830049683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143932 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A143931.P6545216393830049683

/-! ## A143931.P15135703038963414590

`sqrt(A143932(n+1)+record[A098361(n)])`
-/

namespace A143931.P15135703038963414590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143932 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A143931.P15135703038963414590

/-! ## A143931.P11856186788223737905

`sqrt(A143932(n+1)+record[A152656(n)])`
-/

namespace A143931.P11856186788223737905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152656 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143932 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A143931.P11856186788223737905

/-! ## A143931.P12215362921048081041

`sqrt(A143932(n+1)+A000142(n+1))`
-/

namespace A143931.P12215362921048081041
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143932 (n + 1) + A000142 (n + 1) : ℝ)

end

end A143931.P12215362921048081041

/-!
# A143932: a(n) = smallest positive prime number of the form x^2 - n! (where x is a positive integer).

The programs for A143932, there is no canonical definition to state claims against.
-/

/-! ## A143932.P8829922477858562202

`A143931(n+1)²-(n+1)!`
-/

namespace A143932.P8829922477858562202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143931 (n + 1) ^ 2 - (Nat.factorial (n + 1) : ℤ)

end

end A143932.P8829922477858562202

/-! ## A143932.P8454342506299354989

`A143931(n+1)²-record[A094587(n)]`
-/

namespace A143932.P8454342506299354989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143931 (n + 1) ^ 2 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143932.P8454342506299354989

/-! ## A143932.P11897260538087362284

`A143931(n+1)²-record[A098361(n)]`
-/

namespace A143932.P11897260538087362284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143931 (n + 1) ^ 2 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143932.P11897260538087362284

/-! ## A143932.P3294563791590200174

`A143931(n+1)²-record[A152656(n)]`
-/

namespace A143932.P3294563791590200174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143931 (n + 1) ^ 2 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143932.P3294563791590200174

/-! ## A143932.P17455597174747526249

`A143931(n+1)²-A000142(n+1)`
-/

namespace A143932.P17455597174747526249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143931 (n + 1) ^ 2 - A000142 (n + 1)

end

end A143932.P17455597174747526249

/-!
# A143933: a(n) is the smallest prime x such that x^2-n! is also prime.

The programs for A143933, there is no canonical definition to state claims against.
-/

/-! ## A143933.P4319219029544840454

`A000015(A143931(n+1))`
-/

namespace A143933.P4319219029544840454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A143931 (n + 1)).toNat

end

end A143933.P4319219029544840454

/-! ## A143933.P177184834904803660

`A007918(∏{p}[A143931(n+1), #])`
-/

namespace A143933.P177184834904803660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A143933.P177184834904803660

/-! ## A143933.P14526315371845543035

`A007918(A143931(n+1)-C(2, n+2))`
-/

namespace A143933.P14526315371845543035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A143931 (n + 1) - (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A143933.P14526315371845543035

/-! ## A143933.P5660919630908849557

`A007918(gcd(C(2, n+2), A143931(n+1)))`
-/

namespace A143933.P5660919630908849557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A143931 (n + 1)))

end

end A143933.P5660919630908849557

/-! ## A143933.P2842703299540729686

`A000015(sqrt(A143932(n+1)+(n+1)!))`
-/

namespace A143933.P2842703299540729686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (SequenceMachineLib.roundAway (Real.sqrt (A143932 (n + 1) + (Nat.factorial (n + 1) : ℤ) : ℝ))).toNat

end

end A143933.P2842703299540729686

/-!
# A143935: Number of primes between n^K and (n+1)^K, inclusive, where K=log(127)/log(16).

The programs for A143935, there is no canonical definition to state claims against.
-/

/-! ## A143935.P2060446404546655256

`A028310(Δ[A061395(A144256(n+1))])`
-/

namespace A143935.P2060446404546655256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A144256 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A143935.P2060446404546655256

/-! ## A143935.P2914270272905112699

`A028310(Δ[A003963(A144256(n+1))])`
-/

namespace A143935.P2914270272905112699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A144256 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A143935.P2914270272905112699

/-! ## A143935.P2540386200303244427

`A028310(Δ[A252464(A144256(n+1))])`
-/

namespace A143935.P2540386200303244427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A144256 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A143935.P2540386200303244427

/-! ## A143935.P15431736384392771038

`char[A053846(n+2)]+Δ[A252464(A144256(n+1))]`
-/

namespace A143935.P15431736384392771038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053846 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A144256 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A143935.P15431736384392771038

/-!
# A143938: The Wiener index of a benzenoid consisting of a linear chain of n hexagons.

The programs for A143938, the canonical program `A143938.P16861479997347925285` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143938 has offset 1).

The definition of A143938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143938.P16861479997347925285

`Δ[2*C(2*(n+2), 4)]-1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143938

/-- `Δ[2*C(2*(n+2), 4)]-1` -/
def P16861479997347925285.Spec : Prop :=
  ∀ n, P16861479997347925285.a n = A143938 (n + 1)

theorem P16861479997347925285.correct : P16861479997347925285.Spec := by
  intro n
  simp only [A143938, Nat.add_sub_cancel]

end A143938

/-! ## A143938.P6304145210282520058

`∑[(4*(n+1)+1)²+1]+1`
-/

namespace A143938.P6304145210282520058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) + 1) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A143938.P6304145210282520058

namespace A143938

/-- `∑[(4*(n+1)+1)²+1]+1` -/
def P6304145210282520058.Spec : Prop :=
  ∀ n, (P6304145210282520058.a n : ℤ) = A143938 (n + 1)

end A143938

/-! ## A143938.P13635478307810732235

`Δ[(n+2)*(A000447(n+1)-1)]`
-/

namespace A143938.P13635478307810732235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A000447 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143938.P13635478307810732235

namespace A143938

/-- `Δ[(n+2)*(A000447(n+1)-1)]` -/
def P13635478307810732235.Spec : Prop :=
  ∀ n, P13635478307810732235.a n = A143938 (n + 1)

end A143938

/-! ## A143938.P12805416522943262270

`A112524(2*n+3)`
-/

namespace A143938.P12805416522943262270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112524 (2 * n + 3)

end

end A143938.P12805416522943262270

namespace A143938

/-- `A112524(2*n+3)` -/
def P12805416522943262270.Spec : Prop :=
  ∀ n, P12805416522943262270.a n = A143938 (n + 1)

end A143938

/-! ## A143938.P2762955276397252140

`abs(1-A006331(2*n+3))`
-/

namespace A143938.P2762955276397252140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A006331 (2 * n + 3)|

end

end A143938.P2762955276397252140

namespace A143938

/-- `abs(1-A006331(2*n+3))` -/
def P2762955276397252140.Spec : Prop :=
  ∀ n, P2762955276397252140.a n = A143938 (n + 1)

end A143938

/-! ## A143938.P12603076095668563422

`Δ[∑[A006331(2*n+1)]-n]`
-/

namespace A143938.P12603076095668563422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143938.P12603076095668563422

namespace A143938

/-- `Δ[∑[A006331(2*n+1)]-n]` -/
def P12603076095668563422.Spec : Prop :=
  ∀ n, P12603076095668563422.a n = A143938 (n + 1)

end A143938

/-! ## A143938.P4211790829052199210

`Δ[(n+2)*record[A216414(n+3)]]`
-/

namespace A143938.P4211790829052199210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216414 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143938.P4211790829052199210

namespace A143938

/-- `Δ[(n+2)*record[A216414(n+3)]]` -/
def P4211790829052199210.Spec : Prop :=
  ∀ n, P4211790829052199210.a n = A143938 (n + 1)

end A143938

/-! ## A143938.P1213882618790022531

`abs(2-A188475(2*(n+1)+1))`
-/

namespace A143938.P1213882618790022531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A188475 (2 * (n + 1) + 1)|

end

end A143938.P1213882618790022531

namespace A143938

/-- `abs(2-A188475(2*(n+1)+1))` -/
def P1213882618790022531.Spec : Prop :=
  ∀ n, P1213882618790022531.a n = A143938 (n + 1)

end A143938

/-! ## A143938.P613588661376072962

`abs(1-2*A000330(2*n+3))`
-/

namespace A143938.P613588661376072962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A000330 (2 * n + 3)|

end

end A143938.P613588661376072962

namespace A143938

/-- `abs(1-2*A000330(2*n+3))` -/
def P613588661376072962.Spec : Prop :=
  ∀ n, P613588661376072962.a n = A143938 (n + 1)

end A143938

/-! ## A143938.P14800593600195188032

`or(1, ∑[A034106(A016813(n))])`
-/

namespace A143938.P14800593600195188032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034106 (A016813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143938.P14800593600195188032

namespace A143938

/-- `or(1, ∑[A034106(A016813(n))])` -/
def P14800593600195188032.Spec : Prop :=
  ∀ n, P14800593600195188032.a n = A143938 (n + 1)

end A143938

/-!
# A143939: Triangle read by rows: T(n,k) is the number of unordered pairs of vertices at distance k in the cycle C_n (1 <= k <= floor(n/2)).

The programs for A143939, there is no canonical definition to state claims against.
-/

/-! ## A143939.P18019902912371176263

`ceil((2-char[n²-1])*sqrt(n+1))`
-/

namespace A143939.P18019902912371176263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℝ) * Real.sqrt (n + 1 : ℝ)⌉

end

end A143939.P18019902912371176263

/-! ## A143939.P2230677149487531894

`ceil(2*sqrt(n+1))/Δ[A028392(n)]`
-/

namespace A143939.P2230677149487531894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈2 * Real.sqrt (n + 1 : ℝ)⌉ : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A143939.P2230677149487531894

/-! ## A143939.P10802134491994874312

`ceil(2/acot(sqrt(n)))-A037213(n+1)`
-/

namespace A143939.P10802134491994874312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (Real.sqrt (n : ℝ))⌉ - A037213 (n + 1)

end

end A143939.P10802134491994874312

/-! ## A143939.P17396854445781487469

`ceil(record[sqrt(xor(3, n))])/A000122(n+1)!`
-/

namespace A143939.P17396854445781487469
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 3 n : ℝ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ : ℚ) / (Nat.factorial (A000122 (n + 1)).toNat : ℚ)

end

end A143939.P17396854445781487469

/-! ## A143939.P17912244475485238172

`ceil(2*sqrt(n+1))/A000034(∏{e}[n+1, #+1])`
-/

namespace A143939.P17912244475485238172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈2 * Real.sqrt (n + 1 : ℝ)⌉ : ℚ) / (A000034 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℚ)

end

end A143939.P17912244475485238172

/-! ## A143939.P7482942171623487756

`A379604(n+1)+A320471(n+1)`
-/

namespace A143939.P7482942171623487756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379604 (n + 1) + A320471 (n + 1)

end

end A143939.P7482942171623487756

/-! ## A143939.P14874627277987199617

`A000267(n)+1-A037213(n+1)`
-/

namespace A143939.P14874627277987199617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n + (1 - A037213 (n + 1))

end

end A143939.P14874627277987199617

/-! ## A143939.P16008069172535761877

`A027434(n+1)-A037213(n+1)`
-/

namespace A143939.P16008069172535761877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (n + 1) - A037213 (n + 1)

end

end A143939.P16008069172535761877

/-! ## A143939.P1503243343352217433

`A027434(n+1)/Δ[A078358(n+1)]`
-/

namespace A143939.P1503243343352217433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027434 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A143939.P1503243343352217433

/-! ## A143939.P14634605447632822013

`A135034(n+1)+A135034(A173517(n+1))`
-/

namespace A143939.P14634605447632822013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (n + 1) + A135034 (A173517 (n + 1)).toNat

end

end A143939.P14634605447632822013

/-!
# A143940: Triangle read by rows: T(n,k) is the number of unordered pairs of vertices at distance k in a linear chain of n triangles (i.e., joined like VVV..VV; here V is a triangle!), 1 <= k <= n.

The programs for A143940, there is no canonical definition to state claims against.
-/

/-! ## A143940.P6267581608444830933

`A143370(n+1)+2`
-/

namespace A143940.P6267581608444830933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143370 (n + 1) + 2

end

end A143940.P6267581608444830933

/-! ## A143940.P16273322871591122053

`(4-char[∑[n]])*A004736(n+1)`
-/

namespace A143940.P16273322871591122053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A004736 (n + 1)

end

end A143940.P16273322871591122053

/-! ## A143940.P5510482132236441118

`(A025581(n)+1)*(4-char[∑[n]])`
-/

namespace A143940.P5510482132236441118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * (4 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A143940.P5510482132236441118

/-! ## A143940.P7503219176433552394

`(4-char[∑[n]])*sqrt(A055461(n+1))`
-/

namespace A143940.P7503219176433552394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℝ) * Real.sqrt (A055461 (n + 1) : ℝ)

end

end A143940.P7503219176433552394

/-! ## A143940.P15231999322567304945

`(1-∑[A167407(n)])*(4-char[∑[n]])`
-/

namespace A143940.P15231999322567304945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) * (4 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A143940.P15231999322567304945

/-! ## A143940.P4050713657390771005

`(4-char[∑[n]])*val(A043569(n+1), 2)`
-/

namespace A143940.P4050713657390771005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * (SequenceMachineLib.valuation (A043569 (n + 1)).toNat 2 : ℤ)

end

end A143940.P4050713657390771005

/-! ## A143940.P1354026976480321046

`(4-A010054(n))*(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A143940.P1354026976480321046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A010054 n) * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A143940.P1354026976480321046

/-! ## A143940.P6776952948744336307

`A009056(A143370(n+1))`
-/

namespace A143940.P6776952948744336307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A143370 (n + 1)).toNat

end

end A143940.P6776952948744336307

/-! ## A143940.P12060860507552567817

`A195019(A143956(n+1))`
-/

namespace A143940.P12060860507552567817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195019 (A143956 (n + 1)).toNat

end

end A143940.P12060860507552567817

/-! ## A143940.P912443647451053380

`A155124(n)+2*A099375(n)`
-/

namespace A143940.P912443647451053380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155124 n + 2 * A099375 n

end

end A143940.P912443647451053380

/-!
# A143941: The Wiener index of a chain of n triangles (i.e., joined like VVV..VV; here V is a triangle!).

The programs for A143941, the canonical program `A143941.P16333314730129858088` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143941 has offset 1).

The definition of A143941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143941.P16333314730129858088

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=14, a(2)=37, a(3)=76`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143941

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16333314730129858088.Spec : Prop :=
  ∀ n, P16333314730129858088.a n = A143941 (n + 1)

theorem P16333314730129858088.correct : P16333314730129858088.Spec := by
  intro n
  simp only [A143941, Nat.add_sub_cancel]

end A143941

/-! ## A143941.P13960404301148332255

`∑[∑[record[xor(3, n)]]+n]`
-/

namespace A143941.P13960404301148332255
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143941.P13960404301148332255

namespace A143941

/-- `∑[∑[record[xor(3, n)]]+n]` -/
def P13960404301148332255.Spec : Prop :=
  ∀ n, (P13960404301148332255.a n : ℤ) = A143941 (n + 1)

end A143941

/-! ## A143941.P17917722647969475712

`∑[∑[4*(n+1)]-1]`
-/

namespace A143941.P17917722647969475712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143941.P17917722647969475712

namespace A143941

/-- `∑[∑[4*(n+1)]-1]` -/
def P17917722647969475712.Spec : Prop :=
  ∀ n, P17917722647969475712.a n = A143941 (n + 1)

end A143941

/-! ## A143941.P12291782487638423766

`4*C(n+3, 3)-(n+1)`
-/

namespace A143941.P12291782487638423766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose (n + 3) 3 : ℤ) - (n + 1 : ℤ)

end

end A143941.P12291782487638423766

namespace A143941

/-- `4*C(n+3, 3)-(n+1)` -/
def P12291782487638423766.Spec : Prop :=
  ∀ n, P12291782487638423766.a n = A143941 (n + 1)

end A143941

/-! ## A143941.P10607793899228875820

`floor(∑[∑[a(n-1)+4]])` with `a(0)=3, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A143941.P10607793899228875820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143941.P10607793899228875820

namespace A143941

/-- `floor(∑[∑[a(n-1)+4]])` -/
def P10607793899228875820.Spec : Prop :=
  ∀ n, (P10607793899228875820.a n : ℤ) = A143941 (n + 1)

end A143941

/-! ## A143941.P17704663618206305043

`∑[C(2*n+3, 2)]+∑[n]`
-/

namespace A143941.P17704663618206305043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 3) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A143941.P17704663618206305043

namespace A143941

/-- `∑[C(2*n+3, 2)]+∑[n]` -/
def P17704663618206305043.Spec : Prop :=
  ∀ n, (P17704663618206305043.a n : ℤ) = A143941 (n + 1)

end A143941

/-! ## A143941.P13453102941063328666

`-∑[xor((n+3)*2*n, -3)]`
-/

namespace A143941.P13453102941063328666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 3) * (2 * n) : ℤ) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143941.P13453102941063328666

namespace A143941

/-- `-∑[xor((n+3)*2*n, -3)]` -/
def P13453102941063328666.Spec : Prop :=
  ∀ n, P13453102941063328666.a n = A143941 (n + 1)

end A143941

/-! ## A143941.P12750139549698898646

`∑[∑[a(n-1)+4]]+∑[n]` with `a(0)=3`
-/

namespace A143941.P12750139549698898646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A143941.P12750139549698898646

namespace A143941

/-- `∑[∑[a(n-1)+4]]+∑[n]` -/
def P12750139549698898646.Spec : Prop :=
  ∀ n, (P12750139549698898646.a n : ℤ) = A143941 (n + 1)

end A143941

/-! ## A143941.P9951056762727437371

`floor(∑[n-∑[a(n-1)-4]])` with `a(0)=-3`

`floor` is left out, it is the identity on integers.
-/

namespace A143941.P9951056762727437371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-3] fun n f2 =>
  f2 (n - 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143941.P9951056762727437371

namespace A143941

/-- `floor(∑[n-∑[a(n-1)-4]])` -/
def P9951056762727437371.Spec : Prop :=
  ∀ n, P9951056762727437371.a n = A143941 (n + 1)

end A143941

/-! ## A143941.P294753710680668827

`∑[n]-∑[∑[a(n-1)-4]]` with `a(0)=-3`
-/

namespace A143941.P294753710680668827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-3] fun n f3 =>
  f3 (n - 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A143941.P294753710680668827

namespace A143941

/-- `∑[n]-∑[∑[a(n-1)-4]]` -/
def P294753710680668827.Spec : Prop :=
  ∀ n, P294753710680668827.a n = A143941 (n + 1)

end A143941

/-! ## A143941.P11139500099707533367

`(3/n+1)*a(n-1)+2` with `a(0)=3`
-/

namespace A143941.P11139500099707533367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (3 / (n : ℚ) + 1) * a (n - 1) + 2

end

end A143941.P11139500099707533367

namespace A143941

/-- `(3/n+1)*a(n-1)+2` -/
def P11139500099707533367.Spec : Prop :=
  ∀ n, P11139500099707533367.a n = (A143941 (n + 1) : ℚ)

end A143941

/-! ## A143941.P11720648650324833104

`∑[lcm(2, (n+1)²+n)]+n+1`
-/

namespace A143941.P11720648650324833104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n + 1) ^ 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A143941.P11720648650324833104

namespace A143941

/-- `∑[lcm(2, (n+1)²+n)]+n+1` -/
def P11720648650324833104.Spec : Prop :=
  ∀ n, (P11720648650324833104.a n : ℤ) = A143941 (n + 1)

end A143941

/-! ## A143941.P2145120172683287943

`∑[n]+∑[lcm(n+1, 2*n+3)]`
-/

namespace A143941.P2145120172683287943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A143941.P2145120172683287943

namespace A143941

/-- `∑[n]+∑[lcm(n+1, 2*n+3)]` -/
def P2145120172683287943.Spec : Prop :=
  ∀ n, (P2145120172683287943.a n : ℤ) = A143941 (n + 1)

end A143941

/-! ## A143941.P10608069635948144260

`a(n-1)+(n+3)*2*n+3` with `a(0)=3`
-/

namespace A143941.P10608069635948144260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + ((n + 3) * (2 * n) + 3)

end

end A143941.P10608069635948144260

namespace A143941

/-- `a(n-1)+(n+3)*2*n+3` -/
def P10608069635948144260.Spec : Prop :=
  ∀ n, (P10608069635948144260.a n : ℤ) = A143941 (n + 1)

end A143941

/-! ## A143941.P1328300333016921048

`Δ[A004320(n)]+∑[n]`
-/

namespace A143941.P1328300333016921048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004320 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A143941.P1328300333016921048

namespace A143941

/-- `Δ[A004320(n)]+∑[n]` -/
def P1328300333016921048.Spec : Prop :=
  ∀ n, P1328300333016921048.a n = A143941 (n + 1)

end A143941

/-! ## A143941.P12384841610012421013

`n²+A037237(n)+n`
-/

namespace A143941.P12384841610012421013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A037237 n + (n : ℤ))

end

end A143941.P12384841610012421013

namespace A143941

/-- `n²+A037237(n)+n` -/
def P12384841610012421013.Spec : Prop :=
  ∀ n, P12384841610012421013.a n = A143941 (n + 1)

end A143941

/-! ## A143941.P15100849457565870747

`A006331(n+1)+(n+1)²`
-/

namespace A143941.P15100849457565870747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A143941.P15100849457565870747

namespace A143941

/-- `A006331(n+1)+(n+1)²` -/
def P15100849457565870747.Spec : Prop :=
  ∀ n, P15100849457565870747.a n = A143941 (n + 1)

end A143941

/-! ## A143941.P2976934843592550789

`∑[A046092(n+1)]-(n+1)`
-/

namespace A143941.P2976934843592550789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A143941.P2976934843592550789

namespace A143941

/-- `∑[A046092(n+1)]-(n+1)` -/
def P2976934843592550789.Spec : Prop :=
  ∀ n, P2976934843592550789.a n = A143941 (n + 1)

end A143941

/-! ## A143941.P2808839596926121821

`A192023(n+1)+2*(n+1)`
-/

namespace A143941.P2808839596926121821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192023 (n + 1) + (2 * (n + 1) : ℤ)

end

end A143941.P2808839596926121821

namespace A143941

/-- `A192023(n+1)+2*(n+1)` -/
def P2808839596926121821.Spec : Prop :=
  ∀ n, P2808839596926121821.a n = A143941 (n + 1)

end A143941

/-!
# A143943: The Wiener index of a chain of n squares joined at vertices (i.e., joined like <><><>...<>; here <> is a square!).

The programs for A143943, the canonical program `A143943.P4855507385763086149` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143943 has offset 1).

The definition of A143943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143943.P4855507385763086149

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=8, a(1)=40, a(2)=114, a(3)=248`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143943

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4855507385763086149.Spec : Prop :=
  ∀ n, P4855507385763086149.a n = A143943 (n + 1)

theorem P4855507385763086149.correct : P4855507385763086149.Spec := by
  intro n
  simp only [A143943, Nat.add_sub_cancel]

end A143943

/-! ## A143943.P15298772938119215004

`∑[∑[18*n+6]+2]`
-/

namespace A143943.P15298772938119215004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * n + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143943.P15298772938119215004

namespace A143943

/-- `∑[∑[18*n+6]+2]` -/
def P15298772938119215004.Spec : Prop :=
  ∀ n, (P15298772938119215004.a n : ℤ) = A143943 (n + 1)

end A143943

/-! ## A143943.P6327051817023104819

`lcm(n+1, Δ[(n+1)^3])+n+1`
-/

namespace A143943.P6327051817023104819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (n + 1)

end

end A143943.P6327051817023104819

namespace A143943

/-- `lcm(n+1, Δ[(n+1)^3])+n+1` -/
def P6327051817023104819.Spec : Prop :=
  ∀ n, (P6327051817023104819.a n : ℤ) = A143943 (n + 1)

end A143943

/-! ## A143943.P16291841953649565179

`(3*C(n+2, 2)+1)*2*(n+1)`
-/

namespace A143943.P16291841953649565179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (n + 2) 2 + 1) * (2 * (n + 1))

end

end A143943.P16291841953649565179

namespace A143943

/-- `(3*C(n+2, 2)+1)*2*(n+1)` -/
def P16291841953649565179.Spec : Prop :=
  ∀ n, (P16291841953649565179.a n : ℤ) = A143943 (n + 1)

end A143943

/-! ## A143943.P16927542781237204718

`A383854(n+1)-n^3`
-/

namespace A143943.P16927542781237204718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383854 (n + 1) - (n ^ 3 : ℤ)

end

end A143943.P16927542781237204718

namespace A143943

/-- `A383854(n+1)-n^3` -/
def P16927542781237204718.Spec : Prop :=
  ∀ n, P16927542781237204718.a n = A143943 (n + 1)

end A143943

/-! ## A143943.P8665616579893113956

`∑[A304163(n+1)]+1+n`
-/

namespace A143943.P8665616579893113956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A143943.P8665616579893113956

namespace A143943

/-- `∑[A304163(n+1)]+1+n` -/
def P8665616579893113956.Spec : Prop :=
  ∀ n, P8665616579893113956.a n = A143943 (n + 1)

end A143943

/-! ## A143943.P12379078274226216596

`2*(A085789(n+1)+n+1)`
-/

namespace A143943.P12379078274226216596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A085789 (n + 1) + (n + 1 : ℤ))

end

end A143943.P12379078274226216596

namespace A143943

/-- `2*(A085789(n+1)+n+1)` -/
def P12379078274226216596.Spec : Prop :=
  ∀ n, P12379078274226216596.a n = A143943 (n + 1)

end A143943

/-! ## A143943.P553712844011355988

`(2*3*A000217(n+1)+2)*(n+1)`
-/

namespace A143943.P553712844011355988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (3 * A000217 (n + 1)) + 2) * (n + 1 : ℤ)

end

end A143943.P553712844011355988

namespace A143943

/-- `(2*3*A000217(n+1)+2)*(n+1)` -/
def P553712844011355988.Spec : Prop :=
  ∀ n, P553712844011355988.a n = A143943 (n + 1)

end A143943

/-! ## A143943.P12667880398255003951

`A270710(n)+A027602(n)`
-/

namespace A143943.P12667880398255003951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270710 n + A027602 n

end

end A143943.P12667880398255003951

namespace A143943

/-- `A270710(n)+A027602(n)` -/
def P12667880398255003951.Spec : Prop :=
  ∀ n, P12667880398255003951.a n = A143943 (n + 1)

end A143943

/-! ## A143943.P2842919572992114695

`A247727(n+1)-A085540(n)`
-/

namespace A143943.P2842919572992114695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247727 (n + 1) - A085540 n

end

end A143943.P2842919572992114695

namespace A143943

/-- `A247727(n+1)-A085540(n)` -/
def P2842919572992114695.Spec : Prop :=
  ∀ n, P2842919572992114695.a n = A143943 (n + 1)

end A143943

/-! ## A143943.P14682543549365379672

`A094952(n+1)+A000096(n+1)`
-/

namespace A143943.P14682543549365379672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094952 (n + 1) + A000096 (n + 1)

end

end A143943.P14682543549365379672

namespace A143943

/-- `A094952(n+1)+A000096(n+1)` -/
def P14682543549365379672.Spec : Prop :=
  ∀ n, P14682543549365379672.a n = A143943 (n + 1)

end A143943

/-! ## A143943.P13301444322093124534

`A162267(n+1)+A125200(n+1)`
-/

namespace A143943.P13301444322093124534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162267 (n + 1) + A125200 (n + 1)

end

end A143943.P13301444322093124534

namespace A143943

/-- `A162267(n+1)+A125200(n+1)` -/
def P13301444322093124534.Spec : Prop :=
  ∀ n, P13301444322093124534.a n = A143943 (n + 1)

end A143943

/-! ## A143943.P11887236717461070738

`A269538(n+1)-A179824(n+2)`
-/

namespace A143943.P11887236717461070738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269538 (n + 1) - A179824 (n + 2)

end

end A143943.P11887236717461070738

namespace A143943

/-- `A269538(n+1)-A179824(n+2)` -/
def P11887236717461070738.Spec : Prop :=
  ∀ n, P11887236717461070738.a n = A143943 (n + 1)

end A143943

/-! ## A143943.P16408424151012466576

`A228889(n+1)%A094421(n+1)`
-/

namespace A143943.P16408424151012466576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228889 (n + 1)) (A094421 (n + 1))

end

end A143943.P16408424151012466576

namespace A143943

/-- `A228889(n+1)%A094421(n+1)` -/
def P16408424151012466576.Spec : Prop :=
  ∀ n, P16408424151012466576.a n = A143943 (n + 1)

end A143943

/-! ## A143943.P56180671724136753

`(A046092(n+1)-A000096(n))*A005843(n+1)`
-/

namespace A143943.P56180671724136753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046092 (n + 1) - A000096 n) * A005843 (n + 1)

end

end A143943.P56180671724136753

namespace A143943

/-- `(A046092(n+1)-A000096(n))*A005843(n+1)` -/
def P56180671724136753.Spec : Prop :=
  ∀ n, P56180671724136753.a n = A143943 (n + 1)

end A143943

/-! ## A143943.P6319053237791769758

`2*∑[A080855(n+1)]`
-/

namespace A143943.P6319053237791769758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143943.P6319053237791769758

namespace A143943

/-- `2*∑[A080855(n+1)]` -/
def P6319053237791769758.Spec : Prop :=
  ∀ n, P6319053237791769758.a n = A143943 (n + 1)

end A143943

/-! ## A143943.P1233994176470584670

`A249354(n+1)+1+n`
-/

namespace A143943.P1233994176470584670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 (n + 1) + 1 + (n : ℤ)

end

end A143943.P1233994176470584670

namespace A143943

/-- `A249354(n+1)+1+n` -/
def P1233994176470584670.Spec : Prop :=
  ∀ n, P1233994176470584670.a n = A143943 (n + 1)

end A143943

/-! ## A143943.P11668100375166924721

`A248621(n+1)/(n+2)`
-/

namespace A143943.P11668100375166924721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248621 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A143943.P11668100375166924721

namespace A143943

/-- `A248621(n+1)/(n+2)` -/
def P11668100375166924721.Spec : Prop :=
  ∀ n, P11668100375166924721.a n = (A143943 (n + 1) : ℚ)

end A143943

/-! ## A143943.P18052410133047486461

`(n+1)*Δ[A034262(n+1)]`
-/

namespace A143943.P18052410133047486461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A143943.P18052410133047486461

namespace A143943

/-- `(n+1)*Δ[A034262(n+1)]` -/
def P18052410133047486461.Spec : Prop :=
  ∀ n, P18052410133047486461.a n = A143943 (n + 1)

end A143943

/-!
# A143945: Wiener index of the grid P_n x P_n, where P_n is the path graph on n vertices.

The programs for A143945, the canonical program `A143945.P15035695285346219199` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143945 has offset 1).

The definition of A143945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143945.P15035695285346219199

`2*(n+1)²*∑[∑[n]]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143945

/-- `2*(n+1)²*∑[∑[n]]` -/
def P15035695285346219199.Spec : Prop :=
  ∀ n, (P15035695285346219199.a n : ℤ) = A143945 (n + 1)

theorem P15035695285346219199.correct : P15035695285346219199.Spec := by
  intro n
  simp only [A143945, Nat.add_sub_cancel]

end A143945

/-! ## A143945.P10775131670236093312

`∑[lcm(n, n+1)]/(1/(n+1))²`
-/

namespace A143945.P10775131670236093312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (1 / (n + 1 : ℚ)) ^ 2

end

end A143945.P10775131670236093312

namespace A143945

/-- `∑[lcm(n, n+1)]/(1/(n+1))²` -/
def P10775131670236093312.Spec : Prop :=
  ∀ n, P10775131670236093312.a n = (A143945 (n + 1) : ℚ)

end A143945

/-! ## A143945.P2686202223395119966

`floor(∑[a(n-1)+4]*∑[∑[n]])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A143945.P2686202223395119966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A143945.P2686202223395119966

namespace A143945

/-- `floor(∑[a(n-1)+4]*∑[∑[n]])` -/
def P2686202223395119966.Spec : Prop :=
  ∀ n, (P2686202223395119966.a n : ℤ) = A143945 (n + 1)

end A143945

/-! ## A143945.P8137776994749793104

`2*(n+1)*C((n+1)², 2)/3`
-/

namespace A143945.P8137776994749793104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) * Nat.choose ((n + 1) ^ 2) 2 : ℚ) / 3

end

end A143945.P8137776994749793104

namespace A143945

/-- `2*(n+1)*C((n+1)², 2)/3` -/
def P8137776994749793104.Spec : Prop :=
  ∀ n, P8137776994749793104.a n = (A143945 (n + 1) : ℚ)

end A143945

/-! ## A143945.P8075225679675359218

`lcm(2, ∑[2*n+1]*∑[∑[2*n]])`
-/

namespace A143945.P8075225679675359218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A143945.P8075225679675359218

namespace A143945

/-- `lcm(2, ∑[2*n+1]*∑[∑[2*n]])` -/
def P8075225679675359218.Spec : Prop :=
  ∀ n, (P8075225679675359218.a n : ℤ) = A143945 (n + 1)

end A143945

/-! ## A143945.P16466196588652594839

`∑[∑[a(n-1)+2]]/(n+1)^(-2)` with `a(0)=0`
-/

namespace A143945.P16466196588652594839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) ^ (-2 : ℤ)

end

end A143945.P16466196588652594839

namespace A143945

/-- `∑[∑[a(n-1)+2]]/(n+1)^(-2)` -/
def P16466196588652594839.Spec : Prop :=
  ∀ n, P16466196588652594839.a n = (A143945 (n + 1) : ℚ)

end A143945

/-! ## A143945.P536613029564994703

`A133754(n+1)/3`
-/

namespace A143945.P536613029564994703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133754 (n + 1) : ℚ) / 3

end

end A143945.P536613029564994703

namespace A143945

/-- `A133754(n+1)/3` -/
def P536613029564994703.Spec : Prop :=
  ∀ n, P536613029564994703.a n = (A143945 (n + 1) : ℚ)

end A143945

/-! ## A143945.P7216687513111988395

`∑[∑[8*A004068(n)]]`
-/

namespace A143945.P7216687513111988395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A004068 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143945.P7216687513111988395

namespace A143945

/-- `∑[∑[8*A004068(n)]]` -/
def P7216687513111988395.Spec : Prop :=
  ∀ n, P7216687513111988395.a n = A143945 (n + 1)

end A143945

/-! ## A143945.P2168108236230655103

`A245828(n+1)/(n+1)`
-/

namespace A143945.P2168108236230655103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245828 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A143945.P2168108236230655103

namespace A143945

/-- `A245828(n+1)/(n+1)` -/
def P2168108236230655103.Spec : Prop :=
  ∀ n, P2168108236230655103.a n = (A143945 (n + 1) : ℚ)

end A143945

/-! ## A143945.P17521768286401892407

`n*A179824(n+2)/3`
-/

namespace A143945.P17521768286401892407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A179824 (n + 2) : ℚ) / 3

end

end A143945.P17521768286401892407

namespace A143945

/-- `n*A179824(n+2)/3` -/
def P17521768286401892407.Spec : Prop :=
  ∀ n, P17521768286401892407.a n = (A143945 (n + 1) : ℚ)

end A143945

/-! ## A143945.P2265664870195339677

`A136038(n+1)/(3*(n+1))`
-/

namespace A143945.P2265664870195339677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136038 (n + 1) : ℚ) / (3 * (n + 1) : ℚ)

end

end A143945.P2265664870195339677

namespace A143945

/-- `A136038(n+1)/(3*(n+1))` -/
def P2265664870195339677.Spec : Prop :=
  ∀ n, P2265664870195339677.a n = (A143945 (n + 1) : ℚ)

end A143945

/-! ## A143945.P17222190750373971446

`A288961(n+1)+A121782(n+1)`
-/

namespace A143945.P17222190750373971446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288961 (n + 1) + A121782 (n + 1)

end

end A143945.P17222190750373971446

namespace A143945

/-- `A288961(n+1)+A121782(n+1)` -/
def P17222190750373971446.Spec : Prop :=
  ∀ n, P17222190750373971446.a n = A143945 (n + 1)

end A143945

/-! ## A143945.P2528679138743322686

`A292053(n+1)+2*A024166(n)`
-/

namespace A143945.P2528679138743322686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292053 (n + 1) + 2 * A024166 n

end

end A143945.P2528679138743322686

namespace A143945

/-- `A292053(n+1)+2*A024166(n)` -/
def P2528679138743322686.Spec : Prop :=
  ∀ n, P2528679138743322686.a n = A143945 (n + 1)

end A143945

/-! ## A143945.P5107983007215419345

`A052460(n+1)%A337897(n+1)`
-/

namespace A143945.P5107983007215419345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052460 (n + 1)) (A337897 (n + 1))

end

end A143945.P5107983007215419345

namespace A143945

/-- `A052460(n+1)%A337897(n+1)` -/
def P5107983007215419345.Spec : Prop :=
  ∀ n, P5107983007215419345.a n = A143945 (n + 1)

end A143945

/-! ## A143945.P16197095728923862967

`∑[A004767(n)-1]*∑[A046092(n)]/4`
-/

namespace A143945.P16197095728923862967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) : ℚ) / 4

end

end A143945.P16197095728923862967

namespace A143945

/-- `∑[A004767(n)-1]*∑[A046092(n)]/4` -/
def P16197095728923862967.Spec : Prop :=
  ∀ n, P16197095728923862967.a n = (A143945 (n + 1) : ℚ)

end A143945

/-! ## A143945.P14482242530015352807

`A000292(n)+A000292(n)*A056220(n+1)`
-/

namespace A143945.P14482242530015352807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + A000292 n * A056220 (n + 1)

end

end A143945.P14482242530015352807

namespace A143945

/-- `A000292(n)+A000292(n)*A056220(n+1)` -/
def P14482242530015352807.Spec : Prop :=
  ∀ n, P14482242530015352807.a n = A143945 (n + 1)

end A143945

/-! ## A143945.P10688370275698227804

`A008911(n+1)+A000217(n+1)*A006331(n)`
-/

namespace A143945.P10688370275698227804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (n + 1) + A000217 (n + 1) * A006331 n

end

end A143945.P10688370275698227804

namespace A143945

/-- `A008911(n+1)+A000217(n+1)*A006331(n)` -/
def P10688370275698227804.Spec : Prop :=
  ∀ n, P10688370275698227804.a n = A143945 (n + 1)

end A143945

/-! ## A143945.P16496427676906124550

`(n+1)²*A000578(n+1)-A272125(n+1)`
-/

namespace A143945.P16496427676906124550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A000578 (n + 1) - A272125 (n + 1)

end

end A143945.P16496427676906124550

namespace A143945

/-- `(n+1)²*A000578(n+1)-A272125(n+1)` -/
def P16496427676906124550.Spec : Prop :=
  ∀ n, P16496427676906124550.a n = A143945 (n + 1)

end A143945

/-! ## A143945.P11115314972356107197

`A006414(2*n)-A000584(n+1)`
-/

namespace A143945.P11115314972356107197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 (2 * n) - A000584 (n + 1)

end

end A143945.P11115314972356107197

namespace A143945

/-- `A006414(2*n)-A000584(n+1)` -/
def P11115314972356107197.Spec : Prop :=
  ∀ n, P11115314972356107197.a n = A143945 (n + 1)

end A143945

/-! ## A143945.P15223865205407582192

`∑[∑[2*A212578(2*n)]]`
-/

namespace A143945.P15223865205407582192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212578 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143945.P15223865205407582192

namespace A143945

/-- `∑[∑[2*A212578(2*n)]]` -/
def P15223865205407582192.Spec : Prop :=
  ∀ n, P15223865205407582192.a n = A143945 (n + 1)

end A143945

/-!
# A143947: Triangle read by rows: T(n,k) is the number of permutations of [n] for which the sum of the positions of the right-to-left minima is k (1 <= k <= n*(n+1)/2).

The programs for A143947, there is no canonical definition to state claims against.
-/

/-! ## A143947.P3295366112294238759

`and(A053265(n), A194083(A214514(n+1)))`
-/

namespace A143947.P3295366112294238759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053265 n) (A194083 (A214514 (n + 1)).toNat)

end

end A143947.P3295366112294238759

/-! ## A143947.P2524728836455640092

`A007895(A058865(n+1)^A172414(n))`
-/

namespace A143947.P2524728836455640092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.roundAway ((A058865 (n + 1) : ℚ) ^ (A172414 n : ℤ))).toNat

end

end A143947.P2524728836455640092

/-!
# A143948: Number of permutations of some {1,2,...,k} in which the sum of the positions of the right-to-left minima is n.

The programs for A143948, there is no canonical definition to state claims against.
-/

/-! ## A143948.P4478213151704433651

`A147680(A378730(n))`
-/

namespace A143948.P4478213151704433651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147680 (A378730 n).toNat

end

end A143948.P4478213151704433651

/-! ## A143948.P922821326197988378

`A230060(A334578(n))`
-/

namespace A143948.P922821326197988378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230060 (A334578 n).toNat

end

end A143948.P922821326197988378

/-! ## A143948.P13983484673309093248

`A230060(A360810(n))`
-/

namespace A143948.P13983484673309093248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230060 (A360810 n).toNat

end

end A143948.P13983484673309093248

/-!
# A143949: Triangle read by rows: T(n,k) is the number of n-Dyck paths containing k odd-length descents to ground level (0<=k<=n).

The programs for A143949, there is no canonical definition to state claims against.
-/

/-! ## A143949.P5624628813991378647

`A127321(lcm(A134380(n), A198261(n)))`
-/

namespace A143949.P5624628813991378647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (Int.lcm (A134380 n) (A198261 n))

end

end A143949.P5624628813991378647

/-! ## A143949.P14183565903935988975

`A328456(A152148(n))`
-/

namespace A143949.P14183565903935988975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328456 (A152148 n).toNat

end

end A143949.P14183565903935988975

/-! ## A143949.P12169393260782782893

`A357743(A302224(n+2))`
-/

namespace A143949.P12169393260782782893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357743 (A302224 (n + 2)).toNat

end

end A143949.P12169393260782782893

/-! ## A143949.P12807258440741823892

`A357743(A302670(n+2))`
-/

namespace A143949.P12807258440741823892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357743 (A302670 (n + 2)).toNat

end

end A143949.P12807258440741823892

/-! ## A143949.P482486652695392876

`A262324(10*A124323(n))`
-/

namespace A143949.P482486652695392876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262324 (10 * A124323 n).toNat

end

end A143949.P482486652695392876

/-!
# A143951: Number of Dyck paths such that the area between the x-axis and the path is n.

The programs for A143951, there is no canonical definition to state claims against.
-/

/-! ## A143951.P8292457245378692130

`A276571(A190162(abs(1-n)))`
-/

namespace A143951.P8292457245378692130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A190162 |1 - (n : ℤ)|.toNat).toNat

end

end A143951.P8292457245378692130

/-! ## A143951.P12489270143681321569

`or(A078620(n+1), A188068(A250285(n)))`
-/

namespace A143951.P12489270143681321569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A078620 (n + 1)) (A188068 (A250285 n).toNat)

end

end A143951.P12489270143681321569

/-! ## A143951.P10301531526778829180

`A100617(A190162(n))`
-/

namespace A143951.P10301531526778829180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A190162 n).toNat

end

end A143951.P10301531526778829180

/-! ## A143951.P12002298608106032756

`A088141(A202842(n))`
-/

namespace A143951.P12002298608106032756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A202842 n).toNat

end

end A143951.P12002298608106032756

/-! ## A143951.P8462888643022064993

`A111654(A127602(n+2))`
-/

namespace A143951.P8462888643022064993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A127602 (n + 2)).toNat

end

end A143951.P8462888643022064993

/-!
# A143952: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having k peak plateaux (0<=k<=floor(n/2)). A peak plateau is a run of consecutive peaks that is preceded by an upstep and followed by a down step; a peak consists of an upstep followed by a downstep.

The programs for A143952, there is no canonical definition to state claims against.
-/

/-! ## A143952.P10937478260457475730

`A101919(A091018(n))`
-/

namespace A143952.P10937478260457475730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101919 (A091018 n).toNat

end

end A143952.P10937478260457475730

/-! ## A143952.P7847403146037679473

`A101919(A056536(n+1)-1)`
-/

namespace A143952.P7847403146037679473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101919 (A056536 (n + 1) - 1).toNat

end

end A143952.P7847403146037679473

/-! ## A143952.P6358665341442807128

`A097877(n)-A178798(A000045(n))`
-/

namespace A143952.P6358665341442807128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097877 n - A178798 (A000045 n).toNat

end

end A143952.P6358665341442807128

/-! ## A143952.P12167490354394823818

`A097877(n)-A178798(A001590(n))`
-/

namespace A143952.P12167490354394823818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097877 n - A178798 (A001590 n).toNat

end

end A143952.P12167490354394823818

/-! ## A143952.P17764364720603770363

`A097877(n)-A178798(A157726(n))`
-/

namespace A143952.P17764364720603770363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097877 n - A178798 (A157726 n).toNat

end

end A143952.P17764364720603770363

/-!
# A143954: Number of peaks in the peak plateaux of all Dyck paths of semilength n.

The programs for A143954, the canonical program `A143954.P7218840039139452048` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143954 has offset 0).

The definition of A143954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143954.P7218840039139452048

`∑[∑[floor((A323230(n)-1)/2)]]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A143954

/-- `∑[∑[floor((A323230(n)-1)/2)]]` -/
def P7218840039139452048.Spec : Prop :=
  ∀ n, P7218840039139452048.a n = A143954 n

theorem P7218840039139452048.correct : P7218840039139452048.Spec := by
  intro n
  simp only [A143954]

end A143954

/-! ## A143954.P17902224637748372146

`∑[A191790(A004275(n))]`
-/

namespace A143954.P17902224637748372146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143954.P17902224637748372146

namespace A143954

/-- `∑[A191790(A004275(n))]` -/
def P17902224637748372146.Spec : Prop :=
  ∀ n, P17902224637748372146.a n = A143954 n

end A143954

/-! ## A143954.P8139665539684361615

`∑[A191790(record[A029578(n)])]`
-/

namespace A143954.P8139665539684361615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143954.P8139665539684361615

namespace A143954

/-- `∑[A191790(record[A029578(n)])]` -/
def P8139665539684361615.Spec : Prop :=
  ∀ n, P8139665539684361615.a n = A143954 n

end A143954

/-! ## A143954.P18222103396304280504

`∑[A191790(record[A110090(n)])]`
-/

namespace A143954.P18222103396304280504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110090 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143954.P18222103396304280504

namespace A143954

/-- `∑[A191790(record[A110090(n)])]` -/
def P18222103396304280504.Spec : Prop :=
  ∀ n, P18222103396304280504.a n = A143954 n

end A143954

/-! ## A143954.P11660372246495351818

`∑[A191790(record[A265667(n)])]`
-/

namespace A143954.P11660372246495351818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143954.P11660372246495351818

namespace A143954

/-- `∑[A191790(record[A265667(n)])]` -/
def P11660372246495351818.Spec : Prop :=
  ∀ n, P11660372246495351818.a n = A143954 n

end A143954

/-! ## A143954.P18385012108890536607

`∑[A191790(eq[1, A093178(n)])]`
-/

namespace A143954.P18385012108890536607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143954.P18385012108890536607

namespace A143954

/-- `∑[A191790(eq[1, A093178(n)])]` -/
def P18385012108890536607.Spec : Prop :=
  ∀ n, P18385012108890536607.a n = A143954 n

end A143954

/-! ## A143954.P4259557658996458377

`∑[A001791(n)-∑[A216318(n)]]`
-/

namespace A143954.P4259557658996458377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143954.P4259557658996458377

namespace A143954

/-- `∑[A001791(n)-∑[A216318(n)]]` -/
def P4259557658996458377.Spec : Prop :=
  ∀ n, P4259557658996458377.a n = A143954 n

end A143954

/-! ## A143954.P8532905491568551427

`∑[A024718(n)]-(A024718(n)+n)`
-/

namespace A143954.P8532905491568551427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A024718 n + (n : ℤ))

end

end A143954.P8532905491568551427

namespace A143954

/-- `∑[A024718(n)]-(A024718(n)+n)` -/
def P8532905491568551427.Spec : Prop :=
  ∀ n, P8532905491568551427.a n = A143954 n

end A143954

/-! ## A143954.P6146706036822801868

`∑[A174783(2*n)]-A174783(2*n)`
-/

namespace A143954.P6146706036822801868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A174783 (2 * n)

end

end A143954.P6146706036822801868

namespace A143954

/-- `∑[A174783(2*n)]-A174783(2*n)` -/
def P6146706036822801868.Spec : Prop :=
  ∀ n, P6146706036822801868.a n = A143954 n

end A143954

/-! ## A143954.P16698655885465174468

`∑[A191790(2*n)]-A191790(2*n)`
-/

namespace A143954.P16698655885465174468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A191790 (2 * n)

end

end A143954.P16698655885465174468

namespace A143954

/-- `∑[A191790(2*n)]-A191790(2*n)` -/
def P16698655885465174468.Spec : Prop :=
  ∀ n, P16698655885465174468.a n = A143954 n

end A143954

/-! ## A143954.P8370793858841008154

`∑[A332754(2*n+1)]-A332754(2*n+1)`
-/

namespace A143954.P8370793858841008154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332754 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332754 (2 * n + 1)

end

end A143954.P8370793858841008154

namespace A143954

/-- `∑[A332754(2*n+1)]-A332754(2*n+1)` -/
def P8370793858841008154.Spec : Prop :=
  ∀ n, P8370793858841008154.a n = A143954 n

end A143954

/-! ## A143954.P12768352255454582993

`∑[A332754(A109128(∑[n]+1))]`
-/

namespace A143954.P12768352255454582993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332754 (A109128 (∑ j ∈ Finset.range (n + 1), f2 j + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143954.P12768352255454582993

namespace A143954

/-- `∑[A332754(A109128(∑[n]+1))]` -/
def P12768352255454582993.Spec : Prop :=
  ∀ n, P12768352255454582993.a n = A143954 n

end A143954

/-!
# A143955: Sum of the altitudes of the leftmost valleys of all Dyck paths of semilength n (if path has no valley, then this altitude is taken to be 0).

The programs for A143955, the canonical program `A143955.P2620701624282528188` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143955 has offset 0).

The definition of A143955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143955.P2761700172701399327

`5-∑[A115144(n+2)]`
-/

namespace A143955.P2761700172701399327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115144 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143955.P2761700172701399327

namespace A143955

/-- `5-∑[A115144(n+2)]` -/
def P2761700172701399327.Spec : Prop :=
  ∀ n, P2761700172701399327.a n = A143955 n

end A143955

/-! ## A143955.P2620701624282528188

`A000245(n)-A014138(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143955

/-- `A000245(n)-A014138(n)` -/
def P2620701624282528188.Spec : Prop :=
  ∀ n, P2620701624282528188.a n = A143955 n

theorem P2620701624282528188.correct : P2620701624282528188.Spec := by
  intro n
  simp only [A143955]

end A143955

/-! ## A143955.P16349903752491288046

`A279557(n)-A000108(n)`
-/

namespace A143955.P16349903752491288046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n - A000108 n

end

end A143955.P16349903752491288046

namespace A143955

/-- `A279557(n)-A000108(n)` -/
def P16349903752491288046.Spec : Prop :=
  ∀ n, P16349903752491288046.a n = A143955 n

end A143955

/-! ## A143955.P7404522286880474364

`A279557(n)-abs(A168491(n))`
-/

namespace A143955.P7404522286880474364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n - |A168491 n|

end

end A143955.P7404522286880474364

namespace A143955

/-- `A279557(n)-abs(A168491(n))` -/
def P7404522286880474364.Spec : Prop :=
  ∀ n, P7404522286880474364.a n = A143955 n

end A143955

/-! ## A143955.P1038647855268220963

`A106271(n)+Δ[A246604(n)]`
-/

namespace A143955.P1038647855268220963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106271 n + (f1 (n + 1) - f1 n)

end

end A143955.P1038647855268220963

namespace A143955

/-- `A106271(n)+Δ[A246604(n)]` -/
def P1038647855268220963.Spec : Prop :=
  ∀ n, P1038647855268220963.a n = A143955 n

end A143955

/-! ## A143955.P9766093847705834031

`Δ[A000108(n)]-A014138(n)`
-/

namespace A143955.P9766093847705834031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A014138 n

end

end A143955.P9766093847705834031

namespace A143955

/-- `Δ[A000108(n)]-A014138(n)` -/
def P9766093847705834031.Spec : Prop :=
  ∀ n, P9766093847705834031.a n = A143955 n

end A143955

/-! ## A143955.P3999215955525179925

`Δ[A120304(n)]-A014138(n)`
-/

namespace A143955.P3999215955525179925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A014138 n

end

end A143955.P3999215955525179925

namespace A143955

/-- `Δ[A120304(n)]-A014138(n)` -/
def P3999215955525179925.Spec : Prop :=
  ∀ n, P3999215955525179925.a n = A143955 n

end A143955

/-! ## A143955.P14333693815706897966

`A279557(n)-Δ[A155587(n)]`
-/

namespace A143955.P14333693815706897966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n - (f1 (n + 1) - f1 n)

end

end A143955.P14333693815706897966

namespace A143955

/-- `A279557(n)-Δ[A155587(n)]` -/
def P14333693815706897966.Spec : Prop :=
  ∀ n, P14333693815706897966.a n = A143955 n

end A143955

/-! ## A143955.P10559051426438539747

`A000245(n)+1-A014137(n)`
-/

namespace A143955.P10559051426438539747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + (1 - A014137 n)

end

end A143955.P10559051426438539747

namespace A143955

/-- `A000245(n)+1-A014137(n)` -/
def P10559051426438539747.Spec : Prop :=
  ∀ n, P10559051426438539747.a n = A143955 n

end A143955

/-! ## A143955.P15524012579437555227

`A000245(n)+A106271(n)-1`
-/

namespace A143955.P15524012579437555227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + (A106271 n - 1)

end

end A143955.P15524012579437555227

namespace A143955

/-- `A000245(n)+A106271(n)-1` -/
def P15524012579437555227.Spec : Prop :=
  ∀ n, P15524012579437555227.a n = A143955 n

end A143955

/-! ## A143955.P8562217172328658756

`A279557(n)-A126120(2*n)`
-/

namespace A143955.P8562217172328658756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n - A126120 (2 * n)

end

end A143955.P8562217172328658756

namespace A143955

/-- `A279557(n)-A126120(2*n)` -/
def P8562217172328658756.Spec : Prop :=
  ∀ n, P8562217172328658756.a n = A143955 n

end A143955

/-! ## A143955.P8789162183734591392

`A000245(n)+1-∑[A000108(n)]`
-/

namespace A143955.P8789162183734591392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143955.P8789162183734591392

namespace A143955

/-- `A000245(n)+1-∑[A000108(n)]` -/
def P8789162183734591392.Spec : Prop :=
  ∀ n, P8789162183734591392.a n = A143955 n

end A143955

/-! ## A143955.P13323013114109811766

`Δ[A000108(n)]+1-A014137(n)`
-/

namespace A143955.P13323013114109811766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A014137 n)

end

end A143955.P13323013114109811766

namespace A143955

/-- `Δ[A000108(n)]+1-A014137(n)` -/
def P13323013114109811766.Spec : Prop :=
  ∀ n, P13323013114109811766.a n = A143955 n

end A143955

/-! ## A143955.P1921742298364934336

`∑[A000245(n)]+2-A081293(n)`
-/

namespace A143955.P1921742298364934336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A081293 n)

end

end A143955.P1921742298364934336

namespace A143955

/-- `∑[A000245(n)]+2-A081293(n)` -/
def P1921742298364934336.Spec : Prop :=
  ∀ n, P1921742298364934336.a n = A143955 n

end A143955

/-! ## A143955.P1697233653849489565

`Δ[A120588(n+1)]-A014138(n)`
-/

namespace A143955.P1697233653849489565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A014138 n

end

end A143955.P1697233653849489565

namespace A143955

/-- `Δ[A120588(n+1)]-A014138(n)` -/
def P1697233653849489565.Spec : Prop :=
  ∀ n, P1697233653849489565.a n = A143955 n

end A143955

/-! ## A143955.P17329799619708966444

`A279557(n)-A089408(2*n+1)`
-/

namespace A143955.P17329799619708966444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n - A089408 (2 * n + 1)

end

end A143955.P17329799619708966444

namespace A143955

/-- `A279557(n)-A089408(2*n+1)` -/
def P17329799619708966444.Spec : Prop :=
  ∀ n, P17329799619708966444.a n = A143955 n

end A143955

/-! ## A143955.P262226714649096451

`Δ[A089408(2*n+1)]-A014138(n)`
-/

namespace A143955.P262226714649096451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A014138 n

end

end A143955.P262226714649096451

namespace A143955

/-- `Δ[A089408(2*n+1)]-A014138(n)` -/
def P262226714649096451.Spec : Prop :=
  ∀ n, P262226714649096451.a n = A143955 n

end A143955

/-! ## A143955.P14078109200052310981

`Δ[A263986(n)+A000045(n)]-A014138(n)`
-/

namespace A143955.P14078109200052310981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263986 n + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A014138 n

end

end A143955.P14078109200052310981

namespace A143955

/-- `Δ[A263986(n)+A000045(n)]-A014138(n)` -/
def P14078109200052310981.Spec : Prop :=
  ∀ n, P14078109200052310981.a n = A143955 n

end A143955

/-! ## A143955.P9811067470658398863

`A000108(n+1)-(A014138(n)+A000108(n))`
-/

namespace A143955.P9811067470658398863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - (A014138 n + A000108 n)

end

end A143955.P9811067470658398863

namespace A143955

/-- `A000108(n+1)-(A014138(n)+A000108(n))` -/
def P9811067470658398863.Spec : Prop :=
  ∀ n, P9811067470658398863.a n = A143955 n

end A143955

/-! ## A143955.P5898938129262554177

`A120304(n+1)-(A120304(n)+A014138(n))`
-/

namespace A143955.P5898938129262554177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 (n + 1) - (A120304 n + A014138 n)

end

end A143955.P5898938129262554177

namespace A143955

/-- `A120304(n+1)-(A120304(n)+A014138(n))` -/
def P5898938129262554177.Spec : Prop :=
  ∀ n, P5898938129262554177.a n = A143955 n

end A143955

/-!
# A143956: Triangle read by rows, A000012 * A136521 * A000012; 1<=k<=n.

The programs for A143956, the canonical program `A143956.P16519828096933120938` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143956 has offset 1).

The definition of A143956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143956.P6220577869225882427

`2*(C(comp[∑[n]]-n, 2)-n)-char[∑[n]]`
-/

namespace A143956.P6220577869225882427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A143956.P6220577869225882427

namespace A143956

/-- `2*(C(comp[∑[n]]-n, 2)-n)-char[∑[n]]` -/
def P6220577869225882427.Spec : Prop :=
  ∀ n, P6220577869225882427.a n = A143956 (n + 1)

end A143956

/-! ## A143956.P17691317206630625032

`(n²+1+n)%(comp[C(n, 2)]+1)+1-char[∑[n]]`
-/

namespace A143956.P17691317206630625032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 + 1 + n) % (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℕ) : ℤ) + (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A143956.P17691317206630625032

namespace A143956

/-- `(n²+1+n)%(comp[C(n, 2)]+1)+1-char[∑[n]]` -/
def P17691317206630625032.Spec : Prop :=
  ∀ n, P17691317206630625032.a n = A143956 (n + 1)

end A143956

/-! ## A143956.P304768554615358546

`A099375(n)+char[comp[∑[n]]]`
-/

namespace A143956.P304768554615358546
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A143956.P304768554615358546

namespace A143956

/-- `A099375(n)+char[comp[∑[n]]]` -/
def P304768554615358546.Spec : Prop :=
  ∀ n, P304768554615358546.a n = A143956 (n + 1)

end A143956

/-! ## A143956.P16743988396832602116

`abs(xor(-2, A185782(n+1)))`
-/

namespace A143956.P16743988396832602116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-2) (A185782 (n + 1))|

end

end A143956.P16743988396832602116

namespace A143956

/-- `abs(xor(-2, A185782(n+1)))` -/
def P16743988396832602116.Spec : Prop :=
  ∀ n, P16743988396832602116.a n = A143956 (n + 1)

end A143956

/-! ## A143956.P10077632497249391690

`lcm(2, A143593(n+1))/2`
-/

namespace A143956.P10077632497249391690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A143593 (n + 1)) : ℚ) / 2

end

end A143956.P10077632497249391690

namespace A143956

/-- `lcm(2, A143593(n+1))/2` -/
def P10077632497249391690.Spec : Prop :=
  ∀ n, P10077632497249391690.a n = (A143956 (n + 1) : ℚ)

end A143956

/-! ## A143956.P15256757361758875329

`A212012(n+1)-char[∑[n]]`
-/

namespace A143956.P15256757361758875329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A143956.P15256757361758875329

namespace A143956

/-- `A212012(n+1)-char[∑[n]]` -/
def P15256757361758875329.Spec : Prop :=
  ∀ n, P15256757361758875329.a n = A143956 (n + 1)

end A143956

/-! ## A143956.P13236574391635259298

`log2(A262616(n))+2-char[∑[n]]`
-/

namespace A143956.P13236574391635259298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A262616 n : ℝ) + (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℝ)

end

end A143956.P13236574391635259298

namespace A143956

/-- `log2(A262616(n))+2-char[∑[n]]` -/
def P13236574391635259298.Spec : Prop :=
  ∀ n, P13236574391635259298.a n = (A143956 (n + 1) : ℝ)

end A143956

/-! ## A143956.P2943045134600194247

`round(sqrt(2*n))+A114327(n)+1`
-/

namespace A143956.P2943045134600194247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + (A114327 n + 1)

end

end A143956.P2943045134600194247

namespace A143956

/-- `round(sqrt(2*n))+A114327(n)+1` -/
def P2943045134600194247.Spec : Prop :=
  ∀ n, P2943045134600194247.a n = A143956 (n + 1)

end A143956

/-! ## A143956.P3503422172023720273

`round(sqrt(2*n))+A038722(n+1)-n`
-/

namespace A143956.P3503422172023720273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + (A038722 (n + 1) - (n : ℤ))

end

end A143956.P3503422172023720273

namespace A143956

/-- `round(sqrt(2*n))+A038722(n+1)-n` -/
def P3503422172023720273.Spec : Prop :=
  ∀ n, P3503422172023720273.a n = A143956 (n + 1)

end A143956

/-! ## A143956.P6240571211503317400

`A026741(A143593(n+1))`
-/

namespace A143956.P6240571211503317400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A143593 (n + 1)).toNat

end

end A143956.P6240571211503317400

namespace A143956

/-- `A026741(A143593(n+1))` -/
def P6240571211503317400.Spec : Prop :=
  ∀ n, P6240571211503317400.a n = A143956 (n + 1)

end A143956

/-! ## A143956.P16519828096933120938

`A131413(n)-A134403(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143956

/-- `A131413(n)-A134403(n)` -/
def P16519828096933120938.Spec : Prop :=
  ∀ n, P16519828096933120938.a n = A143956 (n + 1)

theorem P16519828096933120938.correct : P16519828096933120938.Spec := by
  intro n
  simp only [A143956, Nat.add_sub_cancel]

end A143956

/-! ## A143956.P1569649904713505513

`A193974(n)-A144330(n)`
-/

namespace A143956.P1569649904713505513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 n - A144330 n

end

end A143956.P1569649904713505513

namespace A143956

/-- `A193974(n)-A144330(n)` -/
def P1569649904713505513.Spec : Prop :=
  ∀ n, P1569649904713505513.a n = A143956 (n + 1)

end A143956

/-! ## A143956.P10937225329245239495

`A060819(2*A143593(n+1))`
-/

namespace A143956.P10937225329245239495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * A143593 (n + 1)).toNat

end

end A143956.P10937225329245239495

namespace A143956

/-- `A060819(2*A143593(n+1))` -/
def P10937225329245239495.Spec : Prop :=
  ∀ n, P10937225329245239495.a n = A143956 (n + 1)

end A143956

/-! ## A143956.P13998338714028031541

`A130303(n+1)*A238303(n)`
-/

namespace A143956.P13998338714028031541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130303 (n + 1) * A238303 n

end

end A143956.P13998338714028031541

namespace A143956

/-- `A130303(n+1)*A238303(n)` -/
def P13998338714028031541.Spec : Prop :=
  ∀ n, P13998338714028031541.a n = A143956 (n + 1)

end A143956

/-! ## A143956.P9315421250198803917

`A238303(n)+2*A025581(n)`
-/

namespace A143956.P9315421250198803917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238303 n + 2 * A025581 n

end

end A143956.P9315421250198803917

namespace A143956

/-- `A238303(n)+2*A025581(n)` -/
def P9315421250198803917.Spec : Prop :=
  ∀ n, P9315421250198803917.a n = A143956 (n + 1)

end A143956

/-! ## A143956.P7721115812725511341

`A143593(n+1)/A238303(n)`
-/

namespace A143956.P7721115812725511341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143593 (n + 1) : ℚ) / (A238303 n : ℚ)

end

end A143956.P7721115812725511341

namespace A143956

/-- `A143593(n+1)/A238303(n)` -/
def P7721115812725511341.Spec : Prop :=
  ∀ n, P7721115812725511341.a n = (A143956 (n + 1) : ℚ)

end A143956

/-! ## A143956.P1089345820565205985

`A063929(n+1)-A158841(n+1)`
-/

namespace A143956.P1089345820565205985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063929 (n + 1) - A158841 (n + 1)

end

end A143956.P1089345820565205985

namespace A143956

/-- `A063929(n+1)-A158841(n+1)` -/
def P1089345820565205985.Spec : Prop :=
  ∀ n, P1089345820565205985.a n = A143956 (n + 1)

end A143956

/-! ## A143956.P15516629247009627612

`A212012(n+1)+1-A035214(n)`
-/

namespace A143956.P15516629247009627612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1) + 1 - A035214 n

end

end A143956.P15516629247009627612

namespace A143956

/-- `A212012(n+1)+1-A035214(n)` -/
def P15516629247009627612.Spec : Prop :=
  ∀ n, P15516629247009627612.a n = A143956 (n + 1)

end A143956

/-! ## A143956.P9708322215484987306

`A238303(n)+A212012(n+1)-2`
-/

namespace A143956.P9708322215484987306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238303 n + (A212012 (n + 1) - 2)

end

end A143956.P9708322215484987306

namespace A143956

/-- `A238303(n)+A212012(n+1)-2` -/
def P9708322215484987306.Spec : Prop :=
  ∀ n, P9708322215484987306.a n = A143956 (n + 1)

end A143956

/-! ## A143956.P9472364192396936067

`2*A004736(n+1)-A010054(n)`
-/

namespace A143956.P9472364192396936067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004736 (n + 1) - A010054 n

end

end A143956.P9472364192396936067

namespace A143956

/-- `2*A004736(n+1)-A010054(n)` -/
def P9472364192396936067.Spec : Prop :=
  ∀ n, P9472364192396936067.a n = A143956 (n + 1)

end A143956

/-!
# A143957: An integer >= 2 is included if {the difference between the largest and smallest primes dividing n} divides n+1.

The programs for A143957, there is no canonical definition to state claims against.
-/

/-! ## A143957.P16262470991265416552

`eq[n+2, lcm(n+2, A046665(n+1))]+1`
-/

namespace A143957.P16262470991265416552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) (A046665 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A143957.P16262470991265416552

/-!
# A143958: Integers n > 1 such that n-1 is divisible by the difference between the largest and smallest primes dividing n.

The programs for A143958, there is no canonical definition to state claims against.
-/

/-! ## A143958.P17533208295333791047

`eq[A004277(n)/2, lcm(n, A046665(n+1))]+1`
-/

namespace A143958.P17533208295333791047
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 n : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A046665 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A143958.P17533208295333791047

/-! ## A143958.P5193668985812111008

`A324857(A324849(n+1))+A324832(A324886(n+4))`
-/

namespace A143958.P5193668985812111008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324857 (A324849 (n + 1)).toNat + A324832 (A324886 (n + 4)).toNat

end

end A143958.P5193668985812111008

/-! ## A143958.P16826629104843122686

`∩[A153264(n+1), A201463(n+1)]`
-/

namespace A143958.P16826629104843122686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143958.P16826629104843122686

/-! ## A143958.P4091092595340739977

`∩[A201463(n+1), A391579(n+1)]`
-/

namespace A143958.P4091092595340739977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143958.P4091092595340739977

/-! ## A143958.P18396661029659103904

`A181569(lt[A240831(n+2), A001221(n+1)])`
-/

namespace A143958.P18396661029659103904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240831 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A143958.P18396661029659103904

/-!
# A143959: Final digit of n^(n+1)-(n+1)^n for n>2.

The programs for A143959, there is no canonical definition to state claims against.
-/

/-! ## A143959.P2789505900073897746

`Δ[A145328(n+2)]%10`
-/

namespace A143959.P2789505900073897746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 10

end

end A143959.P2789505900073897746

/-!
# A143960: a(n) = the n-th positive integer with exactly n zeros and n ones in its binary representation.

The programs for A143960, the canonical program `A143960.P11326528955184198405` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143960 has offset 1).

The definition of A143960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143960.P11326528955184198405

`2*A099393(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A143960

/-- `2*A099393(n)` -/
def P11326528955184198405.Spec : Prop :=
  ∀ n, P11326528955184198405.a n = A143960 (n + 1)

theorem P11326528955184198405.correct : P11326528955184198405.Spec := by
  intro n
  simp only [A143960, Nat.add_sub_cancel]

end A143960

/-! ## A143960.P7399373457750063406

`4*C(2^n+1, 2)-2`
-/

namespace A143960.P7399373457750063406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose (2 ^ n + 1) 2 : ℤ) - 2

end

end A143960.P7399373457750063406

namespace A143960

/-- `4*C(2^n+1, 2)-2` -/
def P7399373457750063406.Spec : Prop :=
  ∀ n, P7399373457750063406.a n = A143960 (n + 1)

end A143960

/-! ## A143960.P1090736423813477162

`2*(2^n+4^n-1)`
-/

namespace A143960.P1090736423813477162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 ^ n : ℤ) + ((4 ^ n : ℤ) - 1))

end

end A143960.P1090736423813477162

namespace A143960

/-- `2*(2^n+4^n-1)` -/
def P1090736423813477162.Spec : Prop :=
  ∀ n, P1090736423813477162.a n = A143960 (n + 1)

end A143960

/-! ## A143960.P3893467914973857375

`lcm(2, 2^n+4^n-1)`
-/

namespace A143960.P3893467914973857375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((2 ^ n : ℤ) + ((4 ^ n : ℤ) - 1))

end

end A143960.P3893467914973857375

namespace A143960

/-- `lcm(2, 2^n+4^n-1)` -/
def P3893467914973857375.Spec : Prop :=
  ∀ n, (P3893467914973857375.a n : ℤ) = A143960 (n + 1)

end A143960

/-! ## A143960.P14823445374147103944

`xor(1, ∑[2^n]+2*4^n)`
-/

namespace A143960.P14823445374147103944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 2 * 4 ^ n)

end

end A143960.P14823445374147103944

namespace A143960

/-- `xor(1, ∑[2^n]+2*4^n)` -/
def P14823445374147103944.Spec : Prop :=
  ∀ n, (P14823445374147103944.a n : ℤ) = A143960 (n + 1)

end A143960

/-! ## A143960.P17076311706339333884

`xor(2*4^n, ∑[2^n])-1`
-/

namespace A143960.P17076311706339333884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor (2 * 4 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A143960.P17076311706339333884

namespace A143960

/-- `xor(2*4^n, ∑[2^n])-1` -/
def P17076311706339333884.Spec : Prop :=
  ∀ n, P17076311706339333884.a n = A143960 (n + 1)

end A143960

/-! ## A143960.P7924606986871209855

`xor(-1, 2^n)²-(3-4^n)`
-/

namespace A143960.P7924606986871209855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (2 ^ n : ℤ) ^ 2 - (3 - (4 ^ n : ℤ))

end

end A143960.P7924606986871209855

namespace A143960

/-- `xor(-1, 2^n)²-(3-4^n)` -/
def P7924606986871209855.Spec : Prop :=
  ∀ n, P7924606986871209855.a n = A143960 (n + 1)

end A143960

/-! ## A143960.P7042290579487598688

`4^n+a(n-1)+a(n-1)+2` with `a(0)=2`
-/

namespace A143960.P7042290579487598688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  4 ^ n + (a (n - 1) + (a (n - 1) + 2))

end

end A143960.P7042290579487598688

namespace A143960

/-- `4^n+a(n-1)+a(n-1)+2` -/
def P7042290579487598688.Spec : Prop :=
  ∀ n, (P7042290579487598688.a n : ℤ) = A143960 (n + 1)

end A143960

/-! ## A143960.P8233715021455573745

`A281482(n)-1`
-/

namespace A143960.P8233715021455573745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281482 n - 1

end

end A143960.P8233715021455573745

namespace A143960

/-- `A281482(n)-1` -/
def P8233715021455573745.Spec : Prop :=
  ∀ n, P8233715021455573745.a n = A143960 (n + 1)

end A143960

/-! ## A143960.P13138860748891385292

`A085601(n)-3`
-/

namespace A143960.P13138860748891385292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085601 n - 3

end

end A143960.P13138860748891385292

namespace A143960

/-- `A085601(n)-3` -/
def P13138860748891385292.Spec : Prop :=
  ∀ n, P13138860748891385292.a n = A143960 (n + 1)

end A143960

/-! ## A143960.P13504490149567303573

`A028403(n+1)-2`
-/

namespace A143960.P13504490149567303573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028403 (n + 1) - 2

end

end A143960.P13504490149567303573

namespace A143960

/-- `A028403(n+1)-2` -/
def P13504490149567303573.Spec : Prop :=
  ∀ n, P13504490149567303573.a n = A143960 (n + 1)

end A143960

/-! ## A143960.P2249308871971224728

`A159230(2*(n+1))`
-/

namespace A143960.P2249308871971224728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159230 (2 * (n + 1))

end

end A143960.P2249308871971224728

namespace A143960

/-- `A159230(2*(n+1))` -/
def P2249308871971224728.Spec : Prop :=
  ∀ n, P2249308871971224728.a n = A143960 (n + 1)

end A143960

/-! ## A143960.P12494945814595655469

`A343175(n+1)-3`
-/

namespace A143960.P12494945814595655469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343175 (n + 1) - 3

end

end A143960.P12494945814595655469

namespace A143960

/-- `A343175(n+1)-3` -/
def P12494945814595655469.Spec : Prop :=
  ∀ n, P12494945814595655469.a n = A143960 (n + 1)

end A143960

/-! ## A143960.P1904891248482484823

`2*A161168(n)-2`
-/

namespace A143960.P1904891248482484823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161168 n - 2

end

end A143960.P1904891248482484823

namespace A143960

/-- `2*A161168(n)-2` -/
def P1904891248482484823.Spec : Prop :=
  ∀ n, P1904891248482484823.a n = A143960 (n + 1)

end A143960

/-! ## A143960.P4317277986164890022

`4*A007582(n)-2`
-/

namespace A143960.P4317277986164890022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007582 n - 2

end

end A143960.P4317277986164890022

namespace A143960

/-- `4*A007582(n)-2` -/
def P4317277986164890022.Spec : Prop :=
  ∀ n, P4317277986164890022.a n = A143960 (n + 1)

end A143960

/-! ## A143960.P4711274549104047212

`A171663(Δ[n²])-3`
-/

namespace A143960.P4711274549104047212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171663 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 3

end

end A143960.P4711274549104047212

namespace A143960

/-- `A171663(Δ[n²])-3` -/
def P4711274549104047212.Spec : Prop :=
  ∀ n, P4711274549104047212.a n = A143960 (n + 1)

end A143960

/-! ## A143960.P5990181706330735609

`∑[A093356(n+1)]-1`
-/

namespace A143960.P5990181706330735609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A143960.P5990181706330735609

namespace A143960

/-- `∑[A093356(n+1)]-1` -/
def P5990181706330735609.Spec : Prop :=
  ∀ n, P5990181706330735609.a n = A143960 (n + 1)

end A143960

/-! ## A143960.P6397598946090906945

`Δ[A060919(n+1)]-2`
-/

namespace A143960.P6397598946090906945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A143960.P6397598946090906945

namespace A143960

/-- `Δ[A060919(n+1)]-2` -/
def P6397598946090906945.Spec : Prop :=
  ∀ n, P6397598946090906945.a n = A143960 (n + 1)

end A143960

/-!
# A143961: Binomial transform of A010054 (characteristic function of triangular numbers).

The programs for A143961, there is no canonical definition to state claims against.
-/

/-! ## A143961.P14286039182301014606

`∑[A280352(round(acot(n)+n))]`
-/

namespace A143961.P14286039182301014606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280352 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143961.P14286039182301014606

/-! ## A143961.P15317529085698009821

`A280352(n)+a(n-1)` with `a(0)=1`
-/

namespace A143961.P15317529085698009821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280352 n + a (n - 1)

end

end A143961.P15317529085698009821

/-! ## A143961.P4156815319767012463

`∑[A280352(abs(1-n)+1)]`
-/

namespace A143961.P4156815319767012463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280352 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143961.P4156815319767012463

/-! ## A143961.P7169247283311389474

`∑[A280352(n+1)]+1-A280352(n+1)`
-/

namespace A143961.P7169247283311389474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A280352 (n + 1))

end

end A143961.P7169247283311389474

/-!
# A143962: Binomial transform of A066247 (characteristic function of composite numbers).

The programs for A143962, there is no canonical definition to state claims against.
-/

/-! ## A143962.P13504375990730402917

`A000295(n)-A121497(n)`
-/

namespace A143962.P13504375990730402917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n - A121497 n

end

end A143962.P13504375990730402917

/-! ## A143962.P9862291162222637461

`A000225(n)-(A121497(n)+n)`
-/

namespace A143962.P9862291162222637461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - (A121497 n + (n : ℤ))

end

end A143962.P9862291162222637461

/-! ## A143962.P17017954934508815370

`A000079(n)-(A121497(n)+1+n)`
-/

namespace A143962.P17017954934508815370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A121497 n + 1 + (n : ℤ))

end

end A143962.P17017954934508815370

/-! ## A143962.P16577714025419058326

`A000295(n)-∑[A052467(A028310(n))]`
-/

namespace A143962.P16577714025419058326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052467 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143962.P16577714025419058326

/-! ## A143962.P10240416628627652458

`A052467(n+1)+A000295(n)-∑[A052467(n+1)]`
-/

namespace A143962.P10240416628627652458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052467 (n + 1) + (A000295 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143962.P10240416628627652458

/-! ## A143962.P10539951561448061404

`Δ[A002662(n)]-A121497(n)`
-/

namespace A143962.P10539951561448061404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A121497 n

end

end A143962.P10539951561448061404

/-!
# A143963: Binomial transform of A012245 (characteristic function of factorial numbers).

The programs for A143963, there is no canonical definition to state claims against.
-/

/-! ## A143963.P14409469490864954561

`∑[n]+A000579(n)%A153913(n)`
-/

namespace A143963.P14409469490864954561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (A000579 n) (A153913 n)

end

end A143963.P14409469490864954561

/-! ## A143963.P4487701029953740864

`A000579(n)+A000217(n)%A141733(n+1)`
-/

namespace A143963.P4487701029953740864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n + Int.tmod (A000217 n) (A141733 (n + 1))

end

end A143963.P4487701029953740864

/-! ## A143963.P17649564466112235109

`A000217(n)+A000579(n)^(1-A296076(n+1))²`
-/

namespace A143963.P17649564466112235109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n : ℚ) + (A000579 n : ℚ) ^ ((1 - A296076 (n + 1)) ^ 2 : ℤ)

end

end A143963.P17649564466112235109

/-! ## A143963.P9605107507579464005

`(A000579(n)+A000217(n))*A118135(A213028(n))!`
-/

namespace A143963.P9605107507579464005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000579 n + A000217 n) * (Nat.factorial (A118135 (A213028 n).toNat).toNat : ℤ)

end

end A143963.P9605107507579464005

/-! ## A143963.P9790659582101286599

`A029931(A000225(n))+A000579(n)`
-/

namespace A143963.P9790659582101286599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A000225 n).toNat + A000579 n

end

end A143963.P9790659582101286599

/-!
# A143964: Sequence representing valid nontrivial 1-dimensional Hashi (a.k.a. Bridges or Hashiwokakero) puzzle orientations.

The programs for A143964, there is no canonical definition to state claims against.
-/

/-! ## A143964.P15118661030103691954

`11*A000196(A007089(n)²)`
-/

namespace A143964.P15118661030103691954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A000196 (A007089 n ^ 2).toNat

end

end A143964.P15118661030103691954

/-! ## A143964.P13810251298738896104

`11*A007089(A227549(n+1))`
-/

namespace A143964.P13810251298738896104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A007089 (A227549 (n + 1)).toNat

end

end A143964.P13810251298738896104

/-! ## A143964.P3315861477210757518

`11*A007089(n)%A132606(n+1)`
-/

namespace A143964.P3315861477210757518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * Int.tmod (A007089 n) (A132606 (n + 1))

end

end A143964.P3315861477210757518

/-! ## A143964.P18194413931620399159

`A008593(C(A007089(n), 1-∑{digits}[n, #]+n))`
-/

namespace A143964.P18194413931620399159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (Nat.choose (A007089 n).toNat (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ)).toNat)

end

end A143964.P18194413931620399159

/-! ## A143964.P12991294828195716645

`11*A159952(n+1)%A169954(3*n+1)`
-/

namespace A143964.P12991294828195716645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * Int.tmod (A159952 (n + 1)) (A169954 (3 * n + 1))

end

end A143964.P12991294828195716645

/-!
# A143965: Factorial eigentriangle: A119502 * (A051295 *0^(n-k)); 0 <= k <= n.

The programs for A143965, there is no canonical definition to state claims against.
-/

/-! ## A143965.P9294735134013754506

`A051295(A002262(n))*A119502(n)`
-/

namespace A143965.P9294735134013754506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051295 (A002262 n).toNat * A119502 n

end

end A143965.P9294735134013754506

/-! ## A143965.P18336576383240469041

`A119502(n)*A134379(A112367(n))`
-/

namespace A143965.P18336576383240469041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A134379 (A112367 n).toNat

end

end A143965.P18336576383240469041

/-! ## A143965.P15521009733035558199

`∏{e}[A099884(n), #!]*A051295(A002262(n))`
-/

namespace A143965.P15521009733035558199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℕ) : ℤ) * A051295 (A002262 n).toNat

end

end A143965.P15521009733035558199

/-! ## A143965.P9257037281935970927

`∏{e}[A130321(n), #!]*A051295(A002262(n))`
-/

namespace A143965.P9257037281935970927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℕ) : ℤ) * A051295 (A002262 n).toNat

end

end A143965.P9257037281935970927

/-! ## A143965.P11872184776470259679

`A051295(A002262(n))/A007318(n)*A094587(n)`
-/

namespace A143965.P11872184776470259679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051295 (A002262 n).toNat : ℚ) / (A007318 n : ℚ) * (A094587 n : ℚ)

end

end A143965.P11872184776470259679

/-!
# A143966: Eigentriangle with row sums = A001333 starting (1, 3, 7, 17, 41, 99, ...).

The programs for A143966, there is no canonical definition to state claims against.
-/

/-! ## A143966.P6337163383232271797

`Δ[A001614(n+1)]*A001333(A002262(n))`
-/

namespace A143966.P6337163383232271797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001333 (A002262 n).toNat

end

end A143966.P6337163383232271797

/-! ## A143966.P1173788258529417684

`A000034(A083140(n+2))*A001333(A002262(n))`
-/

namespace A143966.P1173788258529417684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A083140 (n + 2)).toNat * A001333 (A002262 n).toNat

end

end A143966.P1173788258529417684

/-! ## A143966.P12551302270064782968

`A001333(A002262(n))*A020639(A038303(n))`
-/

namespace A143966.P12551302270064782968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A002262 n).toNat * A020639 (A038303 n).toNat

end

end A143966.P12551302270064782968

/-! ## A143966.P14544764294607740615

`A007947(A152227(n+1)^4)`
-/

namespace A143966.P14544764294607740615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A152227 (n + 1) ^ 4).toNat

end

end A143966.P14544764294607740615

/-! ## A143966.P17155794432389491813

`A007947(A152227(n+1)²²)`
-/

namespace A143966.P17155794432389491813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((A152227 (n + 1) ^ 2) ^ 2).toNat

end

end A143966.P17155794432389491813

/-!
# A143967: Numbers containing only digits 3 or 7 in decimal representation.

The programs for A143967, there is no canonical definition to state claims against.
-/

/-! ## A143967.P6406627036648182301

`A032822(n+1)+A032810(n+1)`
-/

namespace A143967.P6406627036648182301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1) + A032810 (n + 1)

end

end A143967.P6406627036648182301

/-! ## A143967.P1333433158513564136

`A072961(n+1)+A007931(n+1)`
-/

namespace A143967.P1333433158513564136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (n + 1) + A007931 (n + 1)

end

end A143967.P1333433158513564136

/-! ## A143967.P17729959848235097064

`A284920(n+1)+A032917(n+1)`
-/

namespace A143967.P17729959848235097064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284920 (n + 1) + A032917 (n + 1)

end

end A143967.P17729959848235097064

/-! ## A143967.P5412589638198428716

`A284632(n+1)+A256077(n+1)`
-/

namespace A143967.P5412589638198428716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284632 (n + 1) + A256077 (n + 1)

end

end A143967.P5412589638198428716

/-! ## A143967.P7910016370698267335

`A284973(n+1)-A007931(n+1)`
-/

namespace A143967.P7910016370698267335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1) - A007931 (n + 1)

end

end A143967.P7910016370698267335

/-! ## A143967.P12251278216696682953

`A284972(n+1)-A256077(n+1)`
-/

namespace A143967.P12251278216696682953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284972 (n + 1) - A256077 (n + 1)

end

end A143967.P12251278216696682953

/-! ## A143967.P774641028396478205

`A032917(n+1)+2*A007931(n+1)`
-/

namespace A143967.P774641028396478205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1) + 2 * A007931 (n + 1)

end

end A143967.P774641028396478205

/-! ## A143967.P2057670663326686563

`A256077(n+1)+2*A032917(n+1)`
-/

namespace A143967.P2057670663326686563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256077 (n + 1) + 2 * A032917 (n + 1)

end

end A143967.P2057670663326686563

/-! ## A143967.P15502982574728029682

`A276037(n+1)+2*A256077(n+1)`
-/

namespace A143967.P15502982574728029682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (n + 1) + 2 * A256077 (n + 1)

end

end A143967.P15502982574728029682

/-! ## A143967.P18386848467125127614

`2*A072961(n+1)-A032917(n+1)`
-/

namespace A143967.P18386848467125127614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072961 (n + 1) - A032917 (n + 1)

end

end A143967.P18386848467125127614

/-! ## A143967.P672173540031994071

`A032822(n+1)+A284634(n+1)/2`
-/

namespace A143967.P672173540031994071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032822 (n + 1) : ℚ) + (A284634 (n + 1) : ℚ) / 2

end

end A143967.P672173540031994071

/-! ## A143967.P3185436987320714041

`A032810(n+1)+A284922(n+1)/2`
-/

namespace A143967.P3185436987320714041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032810 (n + 1) : ℚ) + (A284922 (n + 1) : ℚ) / 2

end

end A143967.P3185436987320714041

/-! ## A143967.P2709523432315299548

`A032917(n+1)+A284972(n+1)/2`
-/

namespace A143967.P2709523432315299548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032917 (n + 1) : ℚ) + (A284972 (n + 1) : ℚ) / 2

end

end A143967.P2709523432315299548

/-! ## A143967.P10646438660794117261

`A072961(n+1)+A284920(n+1)/2`
-/

namespace A143967.P10646438660794117261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072961 (n + 1) : ℚ) + (A284920 (n + 1) : ℚ) / 2

end

end A143967.P10646438660794117261

/-! ## A143967.P897278061928328414

`(A284973(n+1)+A072961(n+1))/2`
-/

namespace A143967.P897278061928328414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284973 (n + 1) + A072961 (n + 1) : ℚ) / 2

end

end A143967.P897278061928328414

/-! ## A143967.P5923538832802002924

`A284382(n+1)-2*A256077(n+1)`
-/

namespace A143967.P5923538832802002924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1) - 2 * A256077 (n + 1)

end

end A143967.P5923538832802002924

/-! ## A143967.P3656062728581789822

`2*A284920(n+1)-A256077(n+1)`
-/

namespace A143967.P3656062728581789822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284920 (n + 1) - A256077 (n + 1)

end

end A143967.P3656062728581789822

/-! ## A143967.P4853948026882516751

`(A284380(n+1)+A276039(n+1))/2`
-/

namespace A143967.P4853948026882516751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284380 (n + 1) + A276039 (n + 1) : ℚ) / 2

end

end A143967.P4853948026882516751

/-! ## A143967.P449703958071077590

`(A284382(n+1)+A276037(n+1))/2`
-/

namespace A143967.P449703958071077590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284382 (n + 1) + A276037 (n + 1) : ℚ) / 2

end

end A143967.P449703958071077590

/-! ## A143967.P13785490017771288575

`2*A284632(n+1)-A276037(n+1)`
-/

namespace A143967.P13785490017771288575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284632 (n + 1) - A276037 (n + 1)

end

end A143967.P13785490017771288575

/-!
# A143968: Denominators of numbers with g.f. exp(1-(1-x)^(1/2)).

The programs for A143968, there is no canonical definition to state claims against.
-/

/-! ## A143968.P2822328636884072914

`lcm(n!, A144526(A087051(n)))`
-/

namespace A143968.P2822328636884072914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial n : ℤ) (A144526 (A087051 n).toNat)

end

end A143968.P2822328636884072914

/-! ## A143968.P12139644889686313102

`lcm(A087051(n)!, A144578(n))`
-/

namespace A143968.P12139644889686313102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A087051 n).toNat : ℤ) (A144578 n)

end

end A143968.P12139644889686313102

/-! ## A143968.P8386275669639322406

`lcm(A227549(n+1)!, A144526(n))`
-/

namespace A143968.P8386275669639322406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A227549 (n + 1)).toNat : ℤ) (A144526 n)

end

end A143968.P8386275669639322406

/-! ## A143968.P4734382307207210933

`A000165(n)/A001511(A041673(n))`
-/

namespace A143968.P4734382307207210933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 n : ℚ) / (A001511 (A041673 n).toNat : ℚ)

end

end A143968.P4734382307207210933

/-! ## A143968.P14506396193313313842

`A000165(n)/A131714(A001815(n))`
-/

namespace A143968.P14506396193313313842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 n : ℚ) / (A131714 (A001815 n).toNat : ℚ)

end

end A143968.P14506396193313313842

/-!
# A143971: Triangle read by rows, (3n-2) subsequences decrescendo.

The programs for A143971, the canonical program `A143971.P13153355682087978447` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143971 has offset 1).

The definition of A143971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143971.P3187045504821944741

`3*(C(comp[∑[n]]-n, 2)-n)-2`
-/

namespace A143971.P3187045504821944741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 2

end

end A143971.P3187045504821944741

namespace A143971

/-- `3*(C(comp[∑[n]]-n, 2)-n)-2` -/
def P3187045504821944741.Spec : Prop :=
  ∀ n, P3187045504821944741.a n = A143971 (n + 1)

end A143971

/-! ## A143971.P5729834011214646312

`floor(3*(∑[2*n]%(comp[∑[n]]+1)+1)/2)`
-/

namespace A143971.P5729834011214646312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 * ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1) : ℕ) : ℚ) / 2⌋

end

end A143971.P5729834011214646312

namespace A143971

/-- `floor(3*(∑[2*n]%(comp[∑[n]]+1)+1)/2)` -/
def P5729834011214646312.Spec : Prop :=
  ∀ n, P5729834011214646312.a n = A143971 (n + 1)

end A143971

/-! ## A143971.P1986357405362305666

`3*(abs(C(round(sqrt(2*n+1))+1, 2)-n)-1)+1`
-/

namespace A143971.P1986357405362305666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (|(Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) + 1).toNat 2 : ℤ) - (n : ℤ)| - 1) + 1

end

end A143971.P1986357405362305666

namespace A143971

/-- `3*(abs(C(round(sqrt(2*n+1))+1, 2)-n)-1)+1` -/
def P1986357405362305666.Spec : Prop :=
  ∀ n, P1986357405362305666.a n = A143971 (n + 1)

end A143971

/-! ## A143971.P6768958284225679570

`3*C(comp[C(comp[3*n+4]-n, 2)]-n, 2)%(n+1)+1`
-/

namespace A143971.P6768958284225679570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 % (n + 1)) + 1

end

end A143971.P6768958284225679570

namespace A143971

/-- `3*C(comp[C(comp[3*n+4]-n, 2)]-n, 2)%(n+1)+1` -/
def P6768958284225679570.Spec : Prop :=
  ∀ n, (P6768958284225679570.a n : ℤ) = A143971 (n + 1)

end A143971

/-! ## A143971.P13153355682087978447

`3*A025581(n)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143971

/-- `3*A025581(n)+1` -/
def P13153355682087978447.Spec : Prop :=
  ∀ n, P13153355682087978447.a n = A143971 (n + 1)

theorem P13153355682087978447.correct : P13153355682087978447.Spec := by
  intro n
  simp only [A143971, Nat.add_sub_cancel]

end A143971

/-! ## A143971.P2766781630776585356

`3*log2(A130321(n))+1`
-/

namespace A143971.P2766781630776585356
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.logb 2 (A130321 n : ℝ) + 1

end

end A143971.P2766781630776585356

namespace A143971

/-- `3*log2(A130321(n))+1` -/
def P2766781630776585356.Spec : Prop :=
  ∀ n, P2766781630776585356.a n = (A143971 (n + 1) : ℝ)

end A143971

/-! ## A143971.P11173130011165400371

`3*A004736(n+1)-2`
-/

namespace A143971.P11173130011165400371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004736 (n + 1) - 2

end

end A143971.P11173130011165400371

namespace A143971

/-- `3*A004736(n+1)-2` -/
def P11173130011165400371.Spec : Prop :=
  ∀ n, P11173130011165400371.a n = A143971 (n + 1)

end A143971

/-! ## A143971.P3380933203913763901

`A016777(A025581(n))`
-/

namespace A143971.P3380933203913763901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A025581 n).toNat

end

end A143971.P3380933203913763901

namespace A143971

/-- `A016777(A025581(n))` -/
def P3380933203913763901.Spec : Prop :=
  ∀ n, P3380933203913763901.a n = A143971 (n + 1)

end A143971

/-! ## A143971.P4158822088419054442

`A001651(A099375(n))`
-/

namespace A143971.P4158822088419054442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A099375 n).toNat

end

end A143971.P4158822088419054442

namespace A143971

/-- `A001651(A099375(n))` -/
def P4158822088419054442.Spec : Prop :=
  ∀ n, P4158822088419054442.a n = A143971 (n + 1)

end A143971

/-! ## A143971.P424192521001414747

`A029739(A104568(n))`
-/

namespace A143971.P424192521001414747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029739 (A104568 n).toNat

end

end A143971.P424192521001414747

namespace A143971

/-- `A029739(A104568(n))` -/
def P424192521001414747.Spec : Prop :=
  ∀ n, P424192521001414747.a n = A143971 (n + 1)

end A143971

/-! ## A143971.P12667107618063633885

`A047237(A212012(n+1))`
-/

namespace A143971.P12667107618063633885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (A212012 (n + 1)).toNat

end

end A143971.P12667107618063633885

namespace A143971

/-- `A047237(A212012(n+1))` -/
def P12667107618063633885.Spec : Prop :=
  ∀ n, P12667107618063633885.a n = A143971 (n + 1)

end A143971

/-! ## A143971.P13442989850689759305

`A099375(n)+A025581(n)`
-/

namespace A143971.P13442989850689759305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n + A025581 n

end

end A143971.P13442989850689759305

namespace A143971

/-- `A099375(n)+A025581(n)` -/
def P13442989850689759305.Spec : Prop :=
  ∀ n, P13442989850689759305.a n = A143971 (n + 1)

end A143971

/-! ## A143971.P7474640974676888536

`A016777(A004736(n+1)-1)`
-/

namespace A143971.P7474640974676888536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A004736 (n + 1) - 1).toNat

end

end A143971.P7474640974676888536

namespace A143971

/-- `A016777(A004736(n+1)-1)` -/
def P7474640974676888536.Spec : Prop :=
  ∀ n, P7474640974676888536.a n = A143971 (n + 1)

end A143971

/-! ## A143971.P10836140850676328455

`A294317(2*A055461(n+1))`
-/

namespace A143971.P10836140850676328455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 (2 * A055461 (n + 1)).toNat

end

end A143971.P10836140850676328455

namespace A143971

/-- `A294317(2*A055461(n+1))` -/
def P10836140850676328455.Spec : Prop :=
  ∀ n, P10836140850676328455.a n = A143971 (n + 1)

end A143971

/-! ## A143971.P5905828002315447185

`A128076(n+1)+A114327(n)`
-/

namespace A143971.P5905828002315447185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (n + 1) + A114327 n

end

end A143971.P5905828002315447185

namespace A143971

/-- `A128076(n+1)+A114327(n)` -/
def P5905828002315447185.Spec : Prop :=
  ∀ n, P5905828002315447185.a n = A143971 (n + 1)

end A143971

/-! ## A143971.P1242998029861794634

`A131914(n+1)-A002262(n)`
-/

namespace A143971.P1242998029861794634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131914 (n + 1) - A002262 n

end

end A143971.P1242998029861794634

namespace A143971

/-- `A131914(n+1)-A002262(n)` -/
def P1242998029861794634.Spec : Prop :=
  ∀ n, P1242998029861794634.a n = A143971 (n + 1)

end A143971

/-! ## A143971.P495188522248053218

`A209304(n+1)-A003056(n)`
-/

namespace A143971.P495188522248053218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209304 (n + 1) - A003056 n

end

end A143971.P495188522248053218

namespace A143971

/-- `A209304(n+1)-A003056(n)` -/
def P495188522248053218.Spec : Prop :=
  ∀ n, P495188522248053218.a n = A143971 (n + 1)

end A143971

/-! ## A143971.P15404919325445777432

`A131413(n)-2*A002262(n)`
-/

namespace A143971.P15404919325445777432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131413 n - 2 * A002262 n

end

end A143971.P15404919325445777432

namespace A143971

/-- `A131413(n)-2*A002262(n)` -/
def P15404919325445777432.Spec : Prop :=
  ∀ n, P15404919325445777432.a n = A143971 (n + 1)

end A143971

/-! ## A143971.P692803189016319829

`A004736(n+1)+A099375(n)-1`
-/

namespace A143971.P692803189016319829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A099375 n - 1)

end

end A143971.P692803189016319829

namespace A143971

/-- `A004736(n+1)+A099375(n)-1` -/
def P692803189016319829.Spec : Prop :=
  ∀ n, P692803189016319829.a n = A143971 (n + 1)

end A143971

/-! ## A143971.P15978983607083984863

`A103217(n)-2*A095831(n+1)`
-/

namespace A143971.P15978983607083984863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103217 n - 2 * A095831 (n + 1)

end

end A143971.P15978983607083984863

namespace A143971

/-- `A103217(n)-2*A095831(n+1)` -/
def P15978983607083984863.Spec : Prop :=
  ∀ n, P15978983607083984863.a n = A143971 (n + 1)

end A143971

/-!
# A143973: Distances between multiples of 3 in A000010.

The programs for A143973, the canonical program `A143973.P9186749906629124843` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143973 has offset 1).

The definition of A143973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143973.P6790940772631247719

`Δ[A066498(n+1)]`
-/

namespace A143973.P6790940772631247719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143973.P6790940772631247719

namespace A143973

/-- `Δ[A066498(n+1)]` -/
def P6790940772631247719.Spec : Prop :=
  ∀ n, P6790940772631247719.a n = A143973 (n + 1)

end A143973

/-! ## A143973.P9186749906629124843

`Δ[lt[0, A354099(n+1)]]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A143973

/-- `Δ[lt[0, A354099(n+1)]]` -/
def P9186749906629124843.Spec : Prop :=
  ∀ n, P9186749906629124843.a n = A143973 (n + 1)

theorem P9186749906629124843.correct : P9186749906629124843.Spec := by
  intro n
  simp only [A143973, Nat.add_sub_cancel]

end A143973

/-! ## A143973.P3297299543955735465

`Δ[eq[3, gcd(3, A000010(n+1))]]`
-/

namespace A143973.P3297299543955735465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A000010 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A143973.P3297299543955735465

namespace A143973

/-- `Δ[eq[3, gcd(3, A000010(n+1))]]` -/
def P3297299543955735465.Spec : Prop :=
  ∀ n, P3297299543955735465.a n = A143973 (n + 1)

end A143973

/-! ## A143973.P680117244779154147

`A066498(n+2)-A066498(n+1)`
-/

namespace A143973.P680117244779154147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066498 (n + 2) - A066498 (n + 1)

end

end A143973.P680117244779154147

namespace A143973

/-- `A066498(n+2)-A066498(n+1)` -/
def P680117244779154147.Spec : Prop :=
  ∀ n, P680117244779154147.a n = A143973 (n + 1)

end A143973

/-! ## A143973.P1505500924310763672

`Δ[eq[3, A020639(A000010(n+1)+3)]]`
-/

namespace A143973.P1505500924310763672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 1) + 3).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A143973.P1505500924310763672

namespace A143973

/-- `Δ[eq[3, A020639(A000010(n+1)+3)]]` -/
def P1505500924310763672.Spec : Prop :=
  ∀ n, P1505500924310763672.a n = A143973 (n + 1)

end A143973

/-! ## A143973.P1298502368119840503

`A066498(A020725(n+1))%A066498(n+1)`
-/

namespace A143973.P1298502368119840503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066498 (A020725 (n + 1)).toNat) (A066498 (n + 1))

end

end A143973.P1298502368119840503

namespace A143973

/-- `A066498(A020725(n+1))%A066498(n+1)` -/
def P1298502368119840503.Spec : Prop :=
  ∀ n, P1298502368119840503.a n = A143973 (n + 1)

end A143973

/-! ## A143973.P9183027972368694746

`Δ[eq[0, A084300(n+1)]]`
-/

namespace A143973.P9183027972368694746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084300 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A143973.P9183027972368694746

namespace A143973

/-- `Δ[eq[0, A084300(n+1)]]` -/
def P9183027972368694746.Spec : Prop :=
  ∀ n, P9183027972368694746.a n = A143973 (n + 1)

end A143973

/-! ## A143973.P12486393886858325428

`Δ[lt[1, A060839(n+1)]]`
-/

namespace A143973.P12486393886858325428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060839 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A143973.P12486393886858325428

namespace A143973

/-- `Δ[lt[1, A060839(n+1)]]` -/
def P12486393886858325428.Spec : Prop :=
  ∀ n, P12486393886858325428.a n = A143973 (n + 1)

end A143973

/-! ## A143973.P7914348415231463779

`Δ[lt[2, A343783(n+1)]]`
-/

namespace A143973.P7914348415231463779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343783 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A143973.P7914348415231463779

namespace A143973

/-- `Δ[lt[2, A343783(n+1)]]` -/
def P7914348415231463779.Spec : Prop :=
  ∀ n, P7914348415231463779.a n = A143973 (n + 1)

end A143973

/-! ## A143973.P13392704230739303585

`Δ[lt[A091733(n+1), n]]`
-/

namespace A143973.P13392704230739303585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091733 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A143973.P13392704230739303585

namespace A143973

/-- `Δ[lt[A091733(n+1), n]]` -/
def P13392704230739303585.Spec : Prop :=
  ∀ n, P13392704230739303585.a n = A143973 (n + 1)

end A143973

/-! ## A143973.P6280436421619718600

`Δ[lt[A014963(A319100(n+3)), 2]]`
-/

namespace A143973.P6280436421619718600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A319100 (n + 3)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A143973.P6280436421619718600

namespace A143973

/-- `Δ[lt[A014963(A319100(n+3)), 2]]` -/
def P6280436421619718600.Spec : Prop :=
  ∀ n, P6280436421619718600.a n = A143973 (n + 1)

end A143973

/-! ## A143973.P13198780349005581831

`Δ[lt[1, A077959(A000010(n+1))]]`
-/

namespace A143973.P13198780349005581831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077959 (A000010 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A143973.P13198780349005581831

namespace A143973

/-- `Δ[lt[1, A077959(A000010(n+1))]]` -/
def P13198780349005581831.Spec : Prop :=
  ∀ n, P13198780349005581831.a n = A143973 (n + 1)

end A143973

/-! ## A143973.P9972598806726813854

`Δ[A277915(∑[n+2])]`
-/

namespace A143973.P9972598806726813854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277915 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143973.P9972598806726813854

namespace A143973

/-- `Δ[A277915(∑[n+2])]` -/
def P9972598806726813854.Spec : Prop :=
  ∀ n, P9972598806726813854.a n = A143973 (n + 1)

end A143973

/-! ## A143973.P9047701559793913272

`Δ[lt[A212286(n+2), A212255(n)]]`
-/

namespace A143973.P9047701559793913272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212286 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212255 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A143973.P9047701559793913272

namespace A143973

/-- `Δ[lt[A212286(n+2), A212255(n)]]` -/
def P9047701559793913272.Spec : Prop :=
  ∀ n, P9047701559793913272.a n = A143973 (n + 1)

end A143973

/-!
# A143974: Rectangular array R by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark those having x+y=1(mod 3); then R(m,n) is the number of marked unit squares in the rectangle [0,m]x[0,n].

The programs for A143974, there is no canonical definition to state claims against.
-/

/-! ## A143974.P16649592713469887655

`round(A059036(n)/3)`
-/

namespace A143974.P16649592713469887655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A059036 n : ℚ) / 3)

end

end A143974.P16649592713469887655

/-! ## A143974.P2670442301864178024

`floor(A144000(n+1)/2)`
-/

namespace A143974.P2670442301864178024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A144000 (n + 1) : ℚ) / 2⌋

end

end A143974.P2670442301864178024

/-! ## A143974.P3599271984170184032

`floor(A003991(n+1)/3)`
-/

namespace A143974.P3599271984170184032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003991 (n + 1) : ℚ) / 3⌋

end

end A143974.P3599271984170184032

/-! ## A143974.P8216797095116304044

`floor(A098352(n+1)/12)`
-/

namespace A143974.P8216797095116304044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098352 (n + 1) : ℚ) / 12⌋

end

end A143974.P8216797095116304044

/-! ## A143974.P15757251303292484936

`round(log2(sqrt(A198013(n+1))))`
-/

namespace A143974.P15757251303292484936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.sqrt (A198013 (n + 1) : ℝ)))

end

end A143974.P15757251303292484936

/-! ## A143974.P6676957202164597381

`round(log2(A300182(n+1))/3)`
-/

namespace A143974.P6676957202164597381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A300182 (n + 1) : ℝ) / 3)

end

end A143974.P6676957202164597381

/-! ## A143974.P5529220231607293479

`A002264(A003991(n+1))`
-/

namespace A143974.P5529220231607293479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A003991 (n + 1)).toNat

end

end A143974.P5529220231607293479

/-! ## A143974.P7308996972039205955

`A004526(A144000(n+1))`
-/

namespace A143974.P7308996972039205955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A144000 (n + 1)).toNat

end

end A143974.P7308996972039205955

/-! ## A143974.P9397492348263007616

`A008620(A059036(n)+1)-1`
-/

namespace A143974.P9397492348263007616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A059036 n + 1).toNat - 1

end

end A143974.P9397492348263007616

/-! ## A143974.P7244909172766899885

`A152467(A098352(n+1)/2)`
-/

namespace A143974.P7244909172766899885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (SequenceMachineLib.roundAway ((A098352 (n + 1) : ℚ) / 2)).toNat

end

end A143974.P7244909172766899885

/-!
# A143975: a(n) = floor(n*(n+3)/3).

The programs for A143975, the canonical program `A143975.P15597017707247908431` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143975 has offset 1).

The definition of A143975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143975.P15597017707247908431

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=9, a(4)=13`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143975

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P15597017707247908431.Spec : Prop :=
  ∀ n, P15597017707247908431.a n = A143975 (n + 1)

theorem P15597017707247908431.correct : P15597017707247908431.Spec := by
  intro n
  simp only [A143975, Nat.add_sub_cancel]

end A143975

/-! ## A143975.P13071638004250746503

`∑[∑[n²%3]+1]`
-/

namespace A143975.P13071638004250746503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143975.P13071638004250746503

namespace A143975

/-- `∑[∑[n²%3]+1]` -/
def P13071638004250746503.Spec : Prop :=
  ∀ n, (P13071638004250746503.a n : ℤ) = A143975 (n + 1)

end A143975

/-! ## A143975.P11938269410326792882

`∑[∑[∏{d}[n, #²%3]]]`
-/

namespace A143975.P11938269410326792882
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d ^ 2 % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143975.P11938269410326792882

namespace A143975

/-- `∑[∑[∏{d}[n, #²%3]]]` -/
def P11938269410326792882.Spec : Prop :=
  ∀ n, (P11938269410326792882.a n : ℤ) = A143975 (n + 1)

end A143975

/-! ## A143975.P11873623931181377543

`∑[∑[∏{p}[n, #²]%3]]`
-/

namespace A143975.P11873623931181377543
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f3 n), p ^ 2) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143975.P11873623931181377543

namespace A143975

/-- `∑[∑[∏{p}[n, #²]%3]]` -/
def P11873623931181377543.Spec : Prop :=
  ∀ n, (P11873623931181377543.a n : ℤ) = A143975 (n + 1)

end A143975

/-! ## A143975.P7621159415780090033

`floor(2/3*∑[n+2])`
-/

namespace A143975.P7621159415780090033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A143975.P7621159415780090033

namespace A143975

/-- `floor(2/3*∑[n+2])` -/
def P7621159415780090033.Spec : Prop :=
  ∀ n, P7621159415780090033.a n = A143975 (n + 1)

end A143975

/-! ## A143975.P12792643106456454117

`∑[∑[round(sqrt(n%3))^n]]`
-/

namespace A143975.P12792643106456454117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n % 3 : ℕ) : ℝ)) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143975.P12792643106456454117

namespace A143975

/-- `∑[∑[round(sqrt(n%3))^n]]` -/
def P12792643106456454117.Spec : Prop :=
  ∀ n, P12792643106456454117.a n = A143975 (n + 1)

end A143975

/-! ## A143975.P1820059800756524269

`∑[Δ[n²]-comp[or(3, n)]]`
-/

namespace A143975.P1820059800756524269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143975.P1820059800756524269

namespace A143975

/-- `∑[Δ[n²]-comp[or(3, n)]]` -/
def P1820059800756524269.Spec : Prop :=
  ∀ n, P1820059800756524269.a n = A143975 (n + 1)

end A143975

/-! ## A143975.P2066289794450065629

`∑[a(n-3)+2]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A143975.P2066289794450065629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  f1 (n - 3) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143975.P2066289794450065629

namespace A143975

/-- `∑[a(n-3)+2]` -/
def P2066289794450065629.Spec : Prop :=
  ∀ n, (P2066289794450065629.a n : ℤ) = A143975 (n + 1)

end A143975

/-! ## A143975.P742365921664198463

`∑[∑[1-char[lcm(3, n+1)]]]`
-/

namespace A143975.P742365921664198463
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143975.P742365921664198463

namespace A143975

/-- `∑[∑[1-char[lcm(3, n+1)]]]` -/
def P742365921664198463.Spec : Prop :=
  ∀ n, P742365921664198463.a n = A143975 (n + 1)

end A143975

/-! ## A143975.P10654670625705150443

`∑[ceil(2/(3*acot(n+1)))]`
-/

namespace A143975.P10654670625705150443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (3 * SequenceMachineLib.acot (n + 1 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143975.P10654670625705150443

namespace A143975

/-- `∑[ceil(2/(3*acot(n+1)))]` -/
def P10654670625705150443.Spec : Prop :=
  ∀ n, P10654670625705150443.a n = A143975 (n + 1)

end A143975

/-! ## A143975.P17861410878834634889

`∑[∑[xor(1, char[3*(n+1)])]]`
-/

namespace A143975.P17861410878834634889
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143975.P17861410878834634889

namespace A143975

/-- `∑[∑[xor(1, char[3*(n+1)])]]` -/
def P17861410878834634889.Spec : Prop :=
  ∀ n, (P17861410878834634889.a n : ℤ) = A143975 (n + 1)

end A143975

/-! ## A143975.P12904846383636652602

`record[floor(((2-n)²-n)/3)]`
-/

namespace A143975.P12904846383636652602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 - (n : ℤ)) ^ 2 - (n : ℤ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143975.P12904846383636652602

namespace A143975

/-- `record[floor(((2-n)²-n)/3)]` -/
def P12904846383636652602.Spec : Prop :=
  ∀ n, P12904846383636652602.a n = A143975 (n + 1)

end A143975

/-! ## A143975.P8743327323172134302

`round((record[(n-2)²]+n)/3)`
-/

namespace A143975.P8743327323172134302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ) : ℚ) / 3)

end

end A143975.P8743327323172134302

namespace A143975

/-- `round((record[(n-2)²]+n)/3)` -/
def P8743327323172134302.Spec : Prop :=
  ∀ n, P8743327323172134302.a n = A143975 (n + 1)

end A143975

/-! ## A143975.P2600938743648368628

`round(record[((2-n)²-n)/3])`
-/

namespace A143975.P2600938743648368628
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 - (n : ℤ)) ^ 2 - (n : ℤ) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A143975.P2600938743648368628

namespace A143975

/-- `round(record[((2-n)²-n)/3])` -/
def P2600938743648368628.Spec : Prop :=
  ∀ n, P2600938743648368628.a n = A143975 (n + 1)

end A143975

/-! ## A143975.P1726940699402876512

`∑[∑[((2*n)²%3)^n]]`
-/

namespace A143975.P1726940699402876512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 % 3) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143975.P1726940699402876512

namespace A143975

/-- `∑[∑[((2*n)²%3)^n]]` -/
def P1726940699402876512.Spec : Prop :=
  ∀ n, (P1726940699402876512.a n : ℤ) = A143975 (n + 1)

end A143975

/-! ## A143975.P9209901197664674719

`(n+1)²-∑[comp[or(3, n)]]`
-/

namespace A143975.P9209901197664674719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A143975.P9209901197664674719

namespace A143975

/-- `(n+1)²-∑[comp[or(3, n)]]` -/
def P9209901197664674719.Spec : Prop :=
  ∀ n, P9209901197664674719.a n = A143975 (n + 1)

end A143975

/-! ## A143975.P3826628757493102502

`∑[∑[abs(a(n-3))]]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A143975.P3826628757493102502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143975.P3826628757493102502

namespace A143975

/-- `∑[∑[abs(a(n-3))]]` -/
def P3826628757493102502.Spec : Prop :=
  ∀ n, (P3826628757493102502.a n : ℤ) = A143975 (n + 1)

end A143975

/-! ## A143975.P9599402603701191375

`∑[∑[a(n-3)²]]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A143975.P9599402603701191375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 0] fun n f2 =>
  f2 (n - 3) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143975.P9599402603701191375

namespace A143975

/-- `∑[∑[a(n-3)²]]` -/
def P9599402603701191375.Spec : Prop :=
  ∀ n, (P9599402603701191375.a n : ℤ) = A143975 (n + 1)

end A143975

/-! ## A143975.P11702209396675470492

`∑[∑[sqrt(a(n-3))]]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A143975.P11702209396675470492
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [1, 1, 1, 0] fun n f2 =>
  Real.sqrt (f2 (n - 3))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143975.P11702209396675470492

namespace A143975

/-- `∑[∑[sqrt(a(n-3))]]` -/
def P11702209396675470492.Spec : Prop :=
  ∀ n, P11702209396675470492.a n = (A143975 (n + 1) : ℝ)

end A143975

/-! ## A143975.P1632748942057586275

`∑[∑[dr(a(n-3))]]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A143975.P1632748942057586275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 0] fun n f2 =>
  SequenceMachineLib.digitalRoot (f2 (n - 3) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143975.P1632748942057586275

namespace A143975

/-- `∑[∑[dr(a(n-3))]]` -/
def P1632748942057586275.Spec : Prop :=
  ∀ n, (P1632748942057586275.a n : ℤ) = A143975 (n + 1)

end A143975

/-!
# A143976: Rectangular array R by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares having x + y == 1 (mod 3); then R(m,n) is the number of UNmarked squares in the rectangle [0,m] X [0,n].

The programs for A143976, the canonical program `A143976.P15673367063394364256` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143976 has offset 1).

The definition of A143976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143976.P15673367063394364256

`ceil(A098352(n+1)/6)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A143976

/-- `ceil(A098352(n+1)/6)` -/
def P15673367063394364256.Spec : Prop :=
  ∀ n, P15673367063394364256.a n = A143976 (n + 1)

theorem P15673367063394364256.correct : P15673367063394364256.Spec := by
  intro n
  simp only [A143976, Nat.add_sub_cancel]

end A143976

/-! ## A143976.P2777099256599992817

`ceil(2/3*A003991(n+1))`
-/

namespace A143976.P2777099256599992817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * (A003991 (n + 1) : ℚ)⌉

end

end A143976.P2777099256599992817

namespace A143976

/-- `ceil(2/3*A003991(n+1))` -/
def P2777099256599992817.Spec : Prop :=
  ∀ n, P2777099256599992817.a n = A143976 (n + 1)

end A143976

/-! ## A143976.P2137762275436041381

`A004396(A059036(n))+1`
-/

namespace A143976.P2137762275436041381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A059036 n).toNat + 1

end

end A143976.P2137762275436041381

namespace A143976

/-- `A004396(A059036(n))+1` -/
def P2137762275436041381.Spec : Prop :=
  ∀ n, P2137762275436041381.a n = A143976 (n + 1)

end A143976

/-! ## A143976.P13271639702354410457

`A004523(A003991(n+1)+1)`
-/

namespace A143976.P13271639702354410457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A003991 (n + 1) + 1).toNat

end

end A143976.P13271639702354410457

namespace A143976

/-- `A004523(A003991(n+1)+1)` -/
def P13271639702354410457.Spec : Prop :=
  ∀ n, P13271639702354410457.a n = A143976 (n + 1)

end A143976

/-! ## A143976.P7986001663844897206

`A008620(2*A059036(n)+1)`
-/

namespace A143976.P7986001663844897206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * A059036 n + 1).toNat

end

end A143976.P7986001663844897206

namespace A143976

/-- `A008620(2*A059036(n)+1)` -/
def P7986001663844897206.Spec : Prop :=
  ∀ n, P7986001663844897206.a n = A143976 (n + 1)

end A143976

/-! ## A143976.P11268971579388818678

`A004396(A003991(n+1)-1)+1`
-/

namespace A143976.P11268971579388818678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A003991 (n + 1) - 1).toNat + 1

end

end A143976.P11268971579388818678

namespace A143976

/-- `A004396(A003991(n+1)-1)+1` -/
def P11268971579388818678.Spec : Prop :=
  ∀ n, P11268971579388818678.a n = A143976 (n + 1)

end A143976

/-! ## A143976.P9910868728050498362

`A002264(2*(A003991(n+1)+1))`
-/

namespace A143976.P9910868728050498362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * (A003991 (n + 1) + 1)).toNat

end

end A143976.P9910868728050498362

namespace A143976

/-- `A002264(2*(A003991(n+1)+1))` -/
def P9910868728050498362.Spec : Prop :=
  ∀ n, P9910868728050498362.a n = A143976 (n + 1)

end A143976

/-! ## A143976.P3776188539616648066

`A008620(2*A003991(n+1)-1)`
-/

namespace A143976.P3776188539616648066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * A003991 (n + 1) - 1).toNat

end

end A143976.P3776188539616648066

namespace A143976

/-- `A008620(2*A003991(n+1)-1)` -/
def P3776188539616648066.Spec : Prop :=
  ∀ n, P3776188539616648066.a n = A143976 (n + 1)

end A143976

/-! ## A143976.P8229677244124835700

`A008620(A059036(n)+A059036(n)+1)`
-/

namespace A143976.P8229677244124835700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A059036 n + (A059036 n + 1)).toNat

end

end A143976.P8229677244124835700

namespace A143976

/-- `A008620(A059036(n)+A059036(n)+1)` -/
def P8229677244124835700.Spec : Prop :=
  ∀ n, P8229677244124835700.a n = A143976 (n + 1)

end A143976

/-! ## A143976.P16871191641999835213

`A002264(A003991(n+1)+A003991(n+1)+2)`
-/

namespace A143976.P16871191641999835213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A003991 (n + 1) + (A003991 (n + 1) + 2)).toNat

end

end A143976.P16871191641999835213

namespace A143976

/-- `A002264(A003991(n+1)+A003991(n+1)+2)` -/
def P16871191641999835213.Spec : Prop :=
  ∀ n, P16871191641999835213.a n = A143976 (n + 1)

end A143976

/-! ## A143976.P1905801487231956273

`A008620(A003991(n+1)+A003991(n+1)-1)`
-/

namespace A143976.P1905801487231956273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A003991 (n + 1) + (A003991 (n + 1) - 1)).toNat

end

end A143976.P1905801487231956273

namespace A143976

/-- `A008620(A003991(n+1)+A003991(n+1)-1)` -/
def P1905801487231956273.Spec : Prop :=
  ∀ n, P1905801487231956273.a n = A143976 (n + 1)

end A143976

/-! ## A143976.P12116979120111516348

`A008615(A098352(n+1))`
-/

namespace A143976.P12116979120111516348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A098352 (n + 1)).toNat

end

end A143976.P12116979120111516348

namespace A143976

/-- `A008615(A098352(n+1))` -/
def P12116979120111516348.Spec : Prop :=
  ∀ n, P12116979120111516348.a n = A143976 (n + 1)

end A143976

/-! ## A143976.P7922046394293474173

`A103221(A098352(n+1)-2)`
-/

namespace A143976.P7922046394293474173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A098352 (n + 1) - 2).toNat

end

end A143976.P7922046394293474173

namespace A143976

/-- `A103221(A098352(n+1)-2)` -/
def P7922046394293474173.Spec : Prop :=
  ∀ n, P7922046394293474173.a n = A143976 (n + 1)

end A143976

/-! ## A143976.P12163829587651529721

`A152467(A098352(n+1)-1)+1`
-/

namespace A143976.P12163829587651529721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A098352 (n + 1) - 1).toNat + 1

end

end A143976.P12163829587651529721

namespace A143976

/-- `A152467(A098352(n+1)-1)+1` -/
def P12163829587651529721.Spec : Prop :=
  ∀ n, P12163829587651529721.a n = A143976 (n + 1)

end A143976

/-!
# A143977: Rectangular array R by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares having |x-y| == 0 (mod 3); then R(m,n) is the number of marked squares in the rectangle [0,m] X [0,n].

The programs for A143977, the canonical program `A143977.P12984671264075313918` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143977 has offset 1).

The definition of A143977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143977.P12984671264075313918

`floor(A059036(n)/3)+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A143977

/-- `floor(A059036(n)/3)+1` -/
def P12984671264075313918.Spec : Prop :=
  ∀ n, P12984671264075313918.a n = A143977 (n + 1)

theorem P12984671264075313918.correct : P12984671264075313918.Spec := by
  intro n
  simp only [A143977, Nat.add_sub_cancel]

end A143977

/-! ## A143977.P6642984360783449575

`ceil(A143976(n+1)/2)`
-/

namespace A143977.P6642984360783449575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A143976 (n + 1) : ℚ) / 2⌉

end

end A143977.P6642984360783449575

namespace A143977

/-- `ceil(A143976(n+1)/2)` -/
def P6642984360783449575.Spec : Prop :=
  ∀ n, P6642984360783449575.a n = A143977 (n + 1)

end A143977

/-! ## A143977.P15646539297615266919

`ceil(A003991(n+1)/3)`
-/

namespace A143977.P15646539297615266919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003991 (n + 1) : ℚ) / 3⌉

end

end A143977.P15646539297615266919

namespace A143977

/-- `ceil(A003991(n+1)/3)` -/
def P15646539297615266919.Spec : Prop :=
  ∀ n, P15646539297615266919.a n = A143977 (n + 1)

end A143977

/-! ## A143977.P10792176393483629795

`ceil(A098352(n+1)/12)`
-/

namespace A143977.P10792176393483629795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098352 (n + 1) : ℚ) / 12⌉

end

end A143977.P10792176393483629795

namespace A143977

/-- `ceil(A098352(n+1)/12)` -/
def P10792176393483629795.Spec : Prop :=
  ∀ n, P10792176393483629795.a n = A143977 (n + 1)

end A143977

/-! ## A143977.P6431425700985180304

`floor((A077028(n)+comp[∑[n]]-n)/3)`
-/

namespace A143977.P6431425700985180304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077028 n + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) : ℚ) / 3⌋

end

end A143977.P6431425700985180304

namespace A143977

/-- `floor((A077028(n)+comp[∑[n]]-n)/3)` -/
def P6431425700985180304.Spec : Prop :=
  ∀ n, P6431425700985180304.a n = A143977 (n + 1)

end A143977

/-! ## A143977.P5987543919532818081

`A008620(A059036(n))`
-/

namespace A143977.P5987543919532818081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A059036 n).toNat

end

end A143977.P5987543919532818081

namespace A143977

/-- `A008620(A059036(n))` -/
def P5987543919532818081.Spec : Prop :=
  ∀ n, P5987543919532818081.a n = A143977 (n + 1)

end A143977

/-! ## A143977.P13055308153457184484

`A002264(A003991(n+1)+2)`
-/

namespace A143977.P13055308153457184484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A003991 (n + 1) + 2).toNat

end

end A143977.P13055308153457184484

namespace A143977

/-- `A002264(A003991(n+1)+2)` -/
def P13055308153457184484.Spec : Prop :=
  ∀ n, P13055308153457184484.a n = A143977 (n + 1)

end A143977

/-! ## A143977.P10492346613530521683

`A008620(A003991(n+1)-1)`
-/

namespace A143977.P10492346613530521683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A003991 (n + 1) - 1).toNat

end

end A143977.P10492346613530521683

namespace A143977

/-- `A008620(A003991(n+1)-1)` -/
def P10492346613530521683.Spec : Prop :=
  ∀ n, P10492346613530521683.a n = A143977 (n + 1)

end A143977

/-! ## A143977.P14544489517347474975

`A008615(A098352(n+1)/2)`
-/

namespace A143977.P14544489517347474975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.roundAway ((A098352 (n + 1) : ℚ) / 2)).toNat

end

end A143977.P14544489517347474975

namespace A143977

/-- `A008615(A098352(n+1)/2)` -/
def P14544489517347474975.Spec : Prop :=
  ∀ n, P14544489517347474975.a n = A143977 (n + 1)

end A143977

/-! ## A143977.P15933445814608311721

`A103221(A098352(n+1)/2+1)`
-/

namespace A143977.P15933445814608311721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (SequenceMachineLib.roundAway ((A098352 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A143977.P15933445814608311721

namespace A143977

/-- `A103221(A098352(n+1)/2+1)` -/
def P15933445814608311721.Spec : Prop :=
  ∀ n, P15933445814608311721.a n = A143977 (n + 1)

end A143977

/-! ## A143977.P6997118881116796417

`A008620(A004247(n)+A003056(n))`
-/

namespace A143977.P6997118881116796417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A004247 n + A003056 n).toNat

end

end A143977.P6997118881116796417

namespace A143977

/-- `A008620(A004247(n)+A003056(n))` -/
def P6997118881116796417.Spec : Prop :=
  ∀ n, P6997118881116796417.a n = A143977 (n + 1)

end A143977

/-! ## A143977.P9393881496773662245

`ceil(A094053(comp[∑[n]])/3)`
-/

namespace A143977.P9393881496773662245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094053 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 3⌉

end

end A143977.P9393881496773662245

namespace A143977

/-- `ceil(A094053(comp[∑[n]])/3)` -/
def P9393881496773662245.Spec : Prop :=
  ∀ n, P9393881496773662245.a n = A143977 (n + 1)

end A143977

/-! ## A143977.P10038356812813529237

`ceil(∏{e}[A036561(n), #+1]/3)`
-/

namespace A143977.P10038356812813529237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℚ) / 3⌉

end

end A143977.P10038356812813529237

namespace A143977

/-- `ceil(∏{e}[A036561(n), #+1]/3)` -/
def P10038356812813529237.Spec : Prop :=
  ∀ n, P10038356812813529237.a n = A143977 (n + 1)

end A143977

/-!
# A143978: a(n) = floor(2*n*(n+1)/3).

The programs for A143978, the canonical program `A143978.P13758902658485407541` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143978 has offset 1).

The definition of A143978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143978.P13758902658485407541

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=8, a(3)=13, a(4)=20`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143978

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P13758902658485407541.Spec : Prop :=
  ∀ n, P13758902658485407541.a n = A143978 (n + 1)

theorem P13758902658485407541.correct : P13758902658485407541.Spec := by
  intro n
  simp only [A143978, Nat.add_sub_cancel]

end A143978

/-! ## A143978.P9675311808944763706

`∑[comp[record[lcm(2, n)]]]`
-/

namespace A143978.P9675311808944763706
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143978.P9675311808944763706

namespace A143978

/-- `∑[comp[record[lcm(2, n)]]]` -/
def P9675311808944763706.Spec : Prop :=
  ∀ n, (P9675311808944763706.a n : ℤ) = A143978 (n + 1)

end A143978

/-! ## A143978.P785898948759887226

`∑[∑[C(2, n%3)]]`
-/

namespace A143978.P785898948759887226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143978.P785898948759887226

namespace A143978

/-- `∑[∑[C(2, n%3)]]` -/
def P785898948759887226.Spec : Prop :=
  ∀ n, (P785898948759887226.a n : ℤ) = A143978 (n + 1)

end A143978

/-! ## A143978.P7301244781698763587

`∑[∑[((n+1)%3)!]]`
-/

namespace A143978.P7301244781698763587
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n + 1) % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143978.P7301244781698763587

namespace A143978

/-- `∑[∑[((n+1)%3)!]]` -/
def P7301244781698763587.Spec : Prop :=
  ∀ n, (P7301244781698763587.a n : ℤ) = A143978 (n + 1)

end A143978

/-! ## A143978.P18345432138348066608

`∑[∑[(∑[n]+1)%3]]`
-/

namespace A143978.P18345432138348066608
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j + 1) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143978.P18345432138348066608

namespace A143978

/-- `∑[∑[(∑[n]+1)%3]]` -/
def P18345432138348066608.Spec : Prop :=
  ∀ n, (P18345432138348066608.a n : ℤ) = A143978 (n + 1)

end A143978

/-! ## A143978.P10022775032517280391

`∑[∑[2^(∑[n]%3)]]`
-/

namespace A143978.P10022775032517280391
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((∑ j ∈ Finset.range (n + 1), f3 j) % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143978.P10022775032517280391

namespace A143978

/-- `∑[∑[2^(∑[n]%3)]]` -/
def P10022775032517280391.Spec : Prop :=
  ∀ n, (P10022775032517280391.a n : ℤ) = A143978 (n + 1)

end A143978

/-! ## A143978.P14373885486824444996

`∑[∑[dr(∑[n]²+1)]]`
-/

namespace A143978.P14373885486824444996
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 + 1 : ℕ) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143978.P14373885486824444996

namespace A143978

/-- `∑[∑[dr(∑[n]²+1)]]` -/
def P14373885486824444996.Spec : Prop :=
  ∀ n, (P14373885486824444996.a n : ℤ) = A143978 (n + 1)

end A143978

/-! ## A143978.P11372752818615220365

`floor((2*n+3)²/6)`
-/

namespace A143978.P11372752818615220365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 3) ^ 2 : ℚ) / 6⌋

end

end A143978.P11372752818615220365

namespace A143978

/-- `floor((2*n+3)²/6)` -/
def P11372752818615220365.Spec : Prop :=
  ∀ n, P11372752818615220365.a n = A143978 (n + 1)

end A143978

/-! ## A143978.P8549625155803328242

`∑[a(n-3)+4]` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A143978.P8549625155803328242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n f1 =>
  f1 (n - 3) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143978.P8549625155803328242

namespace A143978

/-- `∑[a(n-3)+4]` -/
def P8549625155803328242.Spec : Prop :=
  ∀ n, (P8549625155803328242.a n : ℤ) = A143978 (n + 1)

end A143978

/-! ## A143978.P10528338997280251070

`round(4/3*C(n+2, 2))`
-/

namespace A143978.P10528338997280251070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 : ℚ) / 3 * (Nat.choose (n + 2) 2 : ℚ))

end

end A143978.P10528338997280251070

namespace A143978

/-- `round(4/3*C(n+2, 2))` -/
def P10528338997280251070.Spec : Prop :=
  ∀ n, P10528338997280251070.a n = A143978 (n + 1)

end A143978

/-! ## A143978.P16635061224721026043

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=2, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A143978.P16635061224721026043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143978.P16635061224721026043

namespace A143978

/-- `∑[∑[floor(a(n-3))]]` -/
def P16635061224721026043.Spec : Prop :=
  ∀ n, (P16635061224721026043.a n : ℤ) = A143978 (n + 1)

end A143978

/-! ## A143978.P938866198118111248

`∑[∑[2-(1-n)²%3]]`
-/

namespace A143978.P938866198118111248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod ((1 - (n : ℤ)) ^ 2) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143978.P938866198118111248

namespace A143978

/-- `∑[∑[2-(1-n)²%3]]` -/
def P938866198118111248.Spec : Prop :=
  ∀ n, P938866198118111248.a n = A143978 (n + 1)

end A143978

/-! ## A143978.P13604119786188730903

`∑[∑[4/(gcd(3, ∑[n])+1)]]`
-/

namespace A143978.P13604119786188730903
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f3 j) + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143978.P13604119786188730903

namespace A143978

/-- `∑[∑[4/(gcd(3, ∑[n])+1)]]` -/
def P13604119786188730903.Spec : Prop :=
  ∀ n, P13604119786188730903.a n = (A143978 (n + 1) : ℚ)

end A143978

/-! ## A143978.P2089338294581742631

`a(n-3)+4*n` with `a(0)=1, a(1)=4, a(2)=8`
-/

namespace A143978.P2089338294581742631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 8] fun n a =>
  a (n - 3) + 4 * n

end

end A143978.P2089338294581742631

namespace A143978

/-- `a(n-3)+4*n` -/
def P2089338294581742631.Spec : Prop :=
  ∀ n, (P2089338294581742631.a n : ℤ) = A143978 (n + 1)

end A143978

/-! ## A143978.P12571291583836410763

`∑[∑[3-a(a(n-3))]]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A143978.P12571291583836410763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f2 =>
  3 - f2 (f2 (n - 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143978.P12571291583836410763

namespace A143978

/-- `∑[∑[3-a(a(n-3))]]` -/
def P12571291583836410763.Spec : Prop :=
  ∀ n, P12571291583836410763.a n = A143978 (n + 1)

end A143978

/-! ## A143978.P11968021189734650294

`round(2/3*lcm(n+1, n+2))`
-/

namespace A143978.P11968021189734650294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) / 3 * (Nat.lcm (n + 1) (n + 2) : ℚ))

end

end A143978.P11968021189734650294

namespace A143978

/-- `round(2/3*lcm(n+1, n+2))` -/
def P11968021189734650294.Spec : Prop :=
  ∀ n, P11968021189734650294.a n = A143978 (n + 1)

end A143978

/-! ## A143978.P3689328606161973151

`ceil(or(2, (n+3)*2*n)/3)`
-/

namespace A143978.P3689328606161973151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 2 ((n + 3) * (2 * n)) : ℚ) / 3⌉

end

end A143978.P3689328606161973151

namespace A143978

/-- `ceil(or(2, (n+3)*2*n)/3)` -/
def P3689328606161973151.Spec : Prop :=
  ∀ n, P3689328606161973151.a n = A143978 (n + 1)

end A143978

/-!
# A143979: Rectangular array R by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares having |x-y| = 0 (mod 3); then R(m,n) is the number of UNmarked squares in the rectangle [0,m] X [0,n].

The programs for A143979, there is no canonical definition to state claims against.
-/

/-! ## A143979.P7177839430345826296

`ceil(A059036(n)/atan(15))`
-/

namespace A143979.P7177839430345826296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059036 n : ℝ) / Real.arctan (15 : ℝ)⌉

end

end A143979.P7177839430345826296

/-! ## A143979.P6313232645590987655

`floor(A098352(n+1)/6)`
-/

namespace A143979.P6313232645590987655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098352 (n + 1) : ℚ) / 6⌋

end

end A143979.P6313232645590987655

/-! ## A143979.P1076789004321486732

`floor(A003991(n+1)/atan(12))`
-/

namespace A143979.P1076789004321486732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003991 (n + 1) : ℝ) / Real.arctan (12 : ℝ)⌋

end

end A143979.P1076789004321486732

/-! ## A143979.P11692416507808691208

`ceil(2*log2(A300182(n+1))/3)`
-/

namespace A143979.P11692416507808691208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * (Real.logb 2 (A300182 (n + 1) : ℝ) / 3)⌉

end

end A143979.P11692416507808691208

/-! ## A143979.P16906467347580883729

`A004523(A003991(n+1))`
-/

namespace A143979.P16906467347580883729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A003991 (n + 1)).toNat

end

end A143979.P16906467347580883729

/-! ## A143979.P17665990472288312730

`A152467(A098352(n+1))`
-/

namespace A143979.P17665990472288312730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A098352 (n + 1)).toNat

end

end A143979.P17665990472288312730

/-! ## A143979.P764863009345426244

`A008615(A098352(n+1)-1)`
-/

namespace A143979.P764863009345426244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A098352 (n + 1) - 1).toNat

end

end A143979.P764863009345426244

/-! ## A143979.P1481601423635503173

`A004396(A059036(n)+2)-1`
-/

namespace A143979.P1481601423635503173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A059036 n + 2).toNat - 1

end

end A143979.P1481601423635503173

/-! ## A143979.P13403259043003178598

`A002264(2*A003991(n+1))`
-/

namespace A143979.P13403259043003178598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * A003991 (n + 1)).toNat

end

end A143979.P13403259043003178598

/-! ## A143979.P15786651393514286925

`A003991(n+1)-A143977(n+1)`
-/

namespace A143979.P15786651393514286925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A143977 (n + 1)

end

end A143979.P15786651393514286925

/-!
# A143980: Binomial transform of A079260.

The programs for A143980, there is no canonical definition to state claims against.
-/

/-! ## A143980.P7563349790719801333

`∑{p}[A000448(n+1), C(n+1, #)]`
-/

namespace A143980.P7563349790719801333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose (n + 1) p

end

end A143980.P7563349790719801333

/-! ## A143980.P12920995134876517346

`Δ[A020710(Δ[A290995(n+1)])]`
-/

namespace A143980.P12920995134876517346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290995 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143980.P12920995134876517346

/-! ## A143980.P5572942439870580347

`∑[A306859(n)]-A099587(A187829(n+1))`
-/

namespace A143980.P5572942439870580347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099587 (A187829 (n + 1)).toNat

end

end A143980.P5572942439870580347

/-! ## A143980.P3090945699668895607

`Δ[Δ[A290995(A187829(n+1))]]`
-/

namespace A143980.P3090945699668895607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290995 (A187829 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143980.P3090945699668895607

/-! ## A143980.P14778240854075468402

`Δ[Δ[A020722(A306721(n+2))]]`
-/

namespace A143980.P14778240854075468402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020722 (A306721 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143980.P14778240854075468402

/-!
# A143981: The number of unigraphical partitions of 2m; that is, the number of partitions of 2m which are realizable as the degree sequence of one and only one graph (where loops are not allowed but multiple edges are allowed).

The programs for A143981, there is no canonical definition to state claims against.
-/

/-! ## A143981.P1977529657750531392

`∑[A087855(A137461(n+1))]`
-/

namespace A143981.P1977529657750531392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087855 (A137461 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143981.P1977529657750531392

/-! ## A143981.P16691439455437430774

`A083375(A000040(n+1)*A343017(n+1))`
-/

namespace A143981.P16691439455437430774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A000040 (n + 1) * A343017 (n + 1)).toNat

end

end A143981.P16691439455437430774

/-! ## A143981.P16640445934144784397

`A122921(A278355(2*n+1)-A001006(n))`
-/

namespace A143981.P16640445934144784397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A278355 (2 * n + 1) - A001006 n).toNat

end

end A143981.P16640445934144784397

/-! ## A143981.P291859427455427084

`A018819(2*n+3)-A101455(A328432(n))`
-/

namespace A143981.P291859427455427084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (2 * n + 3) - A101455 (A328432 n).toNat

end

end A143981.P291859427455427084

/-! ## A143981.P6935742775630636155

`A103677(lt[A286216(2*n+3), A000045(n)])`
-/

namespace A143981.P6935742775630636155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103677 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A143981.P6935742775630636155

/-!
# A143982: Binomial transform of A079261.

The programs for A143982, there is no canonical definition to state claims against.
-/

/-! ## A143982.P8972493784200742629

`A099423(A025442(n)+A016825(n))`
-/

namespace A143982.P8972493784200742629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099423 (A025442 n + A016825 n).toNat

end

end A143982.P8972493784200742629

/-! ## A143982.P6731048264728681081

`A099423(A185036(n)+A016825(n))`
-/

namespace A143982.P6731048264728681081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099423 (A185036 n + A016825 n).toNat

end

end A143982.P6731048264728681081

/-! ## A143982.P11337880680361986153

`A099423(or(A016825(n), A025442(n)))`
-/

namespace A143982.P11337880680361986153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099423 (Int.lor (A016825 n) (A025442 n)).toNat

end

end A143982.P11337880680361986153

/-! ## A143982.P17662973868882062738

`A099423(or(A016825(n), A185036(n)))`
-/

namespace A143982.P17662973868882062738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099423 (Int.lor (A016825 n) (A185036 n)).toNat

end

end A143982.P17662973868882062738

/-! ## A143982.P7081711047062551039

`A000749(n+1)-A354983(A144699(2*n+7))`
-/

namespace A143982.P7081711047062551039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 (n + 1) - A354983 (A144699 (2 * n + 7)).toNat

end

end A143982.P7081711047062551039

/-!
# A143983: Triangle T(n,k), n>=1, 1<=k<=n, read by rows, where sequence a_k of column k has a_k(0)=1, followed by (k-1)-fold 0 and a_k(n) shifts k places down under binomial transform.

The programs for A143983, there is no canonical definition to state claims against.
-/

/-! ## A143983.P10292652984308275572

`A000110(A210992(n))-A321936(A069777(n))`
-/

namespace A143983.P10292652984308275572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A210992 n).toNat - A321936 (A069777 n).toNat

end

end A143983.P10292652984308275572

/-! ## A143983.P17180813525228537587

`A000110(A210992(n))-A025466(A126120(n))`
-/

namespace A143983.P17180813525228537587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A210992 n).toNat - A025466 (A126120 n).toNat

end

end A143983.P17180813525228537587

/-! ## A143983.P10006897723573307494

`A015070(n)!*A000110(A210992(n))`
-/

namespace A143983.P10006897723573307494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A015070 n).toNat : ℤ) * A000110 (A210992 n).toNat

end

end A143983.P10006897723573307494

/-! ## A143983.P9498540416406635775

`gcd(A061358(A000105(n)), A137650(n+1))`
-/

namespace A143983.P9498540416406635775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061358 (A000105 n).toNat) (A137650 (n + 1))

end

end A143983.P9498540416406635775

/-!
# A143984: a(0) = 0; thereafter, a(n) = (a(n - 1) - 2)^2 - n.

The programs for A143984, the canonical program `A143984.P17902868996798147111` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143984 has offset 0).

The definition of A143984 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)-2)²-n` (program `A143984.P17902868996798147111`, by `A143984.P17902868996798147111.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143984.P17902868996798147111

`(a(n-1)-2)²-n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143984

/-- `(a(n-1)-2)²-n` -/
def P17902868996798147111.Spec : Prop :=
  ∀ n, P17902868996798147111.a n = A143984 n

theorem P17902868996798147111.correct : P17902868996798147111.Spec := by
  intro n
  simp only [A143984]

end A143984

/-! ## A143984.P17098823603887204673

`(2-a(n-1))^2-n` with `a(0)=0`
-/

namespace A143984.P17098823603887204673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 - a (n - 1)) ^ 2 - (n : ℤ)

end

end A143984.P17098823603887204673

namespace A143984

/-- `(2-a(n-1))^2-n` -/
def P17098823603887204673.Spec : Prop :=
  ∀ n, P17098823603887204673.a n = A143984 n

theorem P17098823603887204673.correct : P17098823603887204673.Spec := by
  intro n
  simp only [A143984, Nat.add_sub_cancel, A143984.P17098823603887204673.a, A143984.P17902868996798147111.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A143984

/-! ## A143984.P5464248857003277516

`(2-a(n-1))*(2-a(n-1))-n` with `a(0)=0`
-/

namespace A143984.P5464248857003277516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 - a (n - 1)) * (2 - a (n - 1)) - (n : ℤ)

end

end A143984.P5464248857003277516

namespace A143984

/-- `(2-a(n-1))*(2-a(n-1))-n` -/
def P5464248857003277516.Spec : Prop :=
  ∀ n, P5464248857003277516.a n = A143984 n

theorem P5464248857003277516.correct : P5464248857003277516.Spec := by
  intro n
  simp only [A143984, Nat.add_sub_cancel, A143984.P5464248857003277516.a, A143984.P17902868996798147111.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A143984

/-! ## A143984.P9012852313890082466

`A086851(n+3)+2`
-/

namespace A143984.P9012852313890082466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086851 (n + 3) + 2

end

end A143984.P9012852313890082466

namespace A143984

/-- `A086851(n+3)+2` -/
def P9012852313890082466.Spec : Prop :=
  ∀ n, P9012852313890082466.a n = A143984 n

end A143984

/-! ## A143984.P14774908827385911606

`A143763(n+2)-n`
-/

namespace A143984.P14774908827385911606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143763 (n + 2) - (n : ℤ)

end

end A143984.P14774908827385911606

namespace A143984

/-- `A143763(n+2)-n` -/
def P14774908827385911606.Spec : Prop :=
  ∀ n, P14774908827385911606.a n = A143984 n

end A143984

/-!
# A143985: a(0) = 0; thereafter, a(n) = (a(n - 1) + 2)^2 - n.

The programs for A143985, the canonical program `A143985.P17456414753200187811` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143985 has offset 0).

The definition of A143985 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+2)²-n` (program `A143985.P17456414753200187811`, by `A143985.P17456414753200187811.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143985.P17456414753200187811

`(a(n-1)+2)²-n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143985

/-- `(a(n-1)+2)²-n` -/
def P17456414753200187811.Spec : Prop :=
  ∀ n, P17456414753200187811.a n = A143985 n

theorem P17456414753200187811.correct : P17456414753200187811.Spec := by
  intro n
  simp only [A143985]

end A143985

/-! ## A143985.P915390750501697541

`(a(n-1)+2)^(4/2)-n` with `a(0)=0`
-/

namespace A143985.P915390750501697541
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 2) ^ ((4 : ℚ) / 2 : ℝ) - (n : ℝ)

end

end A143985.P915390750501697541

namespace A143985

/-- `(a(n-1)+2)^(4/2)-n` -/
def P915390750501697541.Spec : Prop :=
  ∀ n, P915390750501697541.a n = (A143985 n : ℝ)

end A143985

/-! ## A143985.P2571682680001895691

`(a(n-1)+2)*(a(n-1)+2)-n` with `a(0)=0`
-/

namespace A143985.P2571682680001895691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 2) * (a (n - 1) + 2) - (n : ℤ)

end

end A143985.P2571682680001895691

namespace A143985

/-- `(a(n-1)+2)*(a(n-1)+2)-n` -/
def P2571682680001895691.Spec : Prop :=
  ∀ n, P2571682680001895691.a n = A143985 n

theorem P2571682680001895691.correct : P2571682680001895691.Spec := by
  intro n
  simp only [A143985, Nat.add_sub_cancel, A143985.P2571682680001895691.a, A143985.P17456414753200187811.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A143985

/-!
# A143988: Numbers congruent to {5, 13} mod 18.

The programs for A143988, the canonical program `A143988.P11380688683622933754` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143988 has offset 1).

The definition of A143988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143988.P11380688683622933754

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=5, a(1)=13, a(2)=23`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143988

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P11380688683622933754.Spec : Prop :=
  ∀ n, P11380688683622933754.a n = A143988 (n + 1)

theorem P11380688683622933754.correct : P11380688683622933754.Spec := by
  intro n
  simp only [A143988, Nat.add_sub_cancel]

end A143988

/-! ## A143988.P11756397105055993916

`or(1, 9*n+4)`
-/

namespace A143988.P11756397105055993916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (9 * n + 4)

end

end A143988.P11756397105055993916

namespace A143988

/-- `or(1, 9*n+4)` -/
def P11756397105055993916.Spec : Prop :=
  ∀ n, (P11756397105055993916.a n : ℤ) = A143988 (n + 1)

end A143988

/-! ## A143988.P13201748599746144300

`a(n-2)+18` with `a(0)=5, a(1)=13`
-/

namespace A143988.P13201748599746144300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 13] fun n a =>
  a (n - 2) + 18

end

end A143988.P13201748599746144300

namespace A143988

/-- `a(n-2)+18` -/
def P13201748599746144300.Spec : Prop :=
  ∀ n, (P13201748599746144300.a n : ℤ) = A143988 (n + 1)

end A143988

/-! ## A143988.P2714829651567390128

`Δ[ceil((3*n)²/2)]`
-/

namespace A143988.P2714829651567390128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 * n) ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143988.P2714829651567390128

namespace A143988

/-- `Δ[ceil((3*n)²/2)]` -/
def P2714829651567390128.Spec : Prop :=
  ∀ n, P2714829651567390128.a n = A143988 (n + 1)

end A143988

/-! ## A143988.P7732987969834725932

`∑[abs(a(n-2))]` with `a(0)=5, a(1)=8, a(2)=10`
-/

namespace A143988.P7732987969834725932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 8, 10] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143988.P7732987969834725932

namespace A143988

/-- `∑[abs(a(n-2))]` -/
def P7732987969834725932.Spec : Prop :=
  ∀ n, (P7732987969834725932.a n : ℤ) = A143988 (n + 1)

end A143988

/-! ## A143988.P11409748239031096101

`∑[lcm(2, a(n-2))]` with `a(0)=5, a(1)=8`
-/

namespace A143988.P11409748239031096101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 8] fun n f1 =>
  Nat.lcm 2 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143988.P11409748239031096101

namespace A143988

/-- `∑[lcm(2, a(n-2))]` -/
def P11409748239031096101.Spec : Prop :=
  ∀ n, (P11409748239031096101.a n : ℤ) = A143988 (n + 1)

end A143988

/-! ## A143988.P6436233995617126477

`∑[18-a(n-1)]` with `a(0)=5, a(1)=8`
-/

namespace A143988.P6436233995617126477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 8] fun n f1 =>
  18 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143988.P6436233995617126477

namespace A143988

/-- `∑[18-a(n-1)]` -/
def P6436233995617126477.Spec : Prop :=
  ∀ n, P6436233995617126477.a n = A143988 (n + 1)

end A143988

/-! ## A143988.P13717096899063275259

`18*n-a(n-1)` with `a(0)=5`
-/

namespace A143988.P13717096899063275259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (18 * n : ℤ) - a (n - 1)

end

end A143988.P13717096899063275259

namespace A143988

/-- `18*n-a(n-1)` -/
def P13717096899063275259.Spec : Prop :=
  ∀ n, P13717096899063275259.a n = A143988 (n + 1)

end A143988

/-! ## A143988.P10430986243857460235

`∑[2*(gcd(2, n)+3)]-5`
-/

namespace A143988.P10430986243857460235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.gcd 2 n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 5

end

end A143988.P10430986243857460235

namespace A143988

/-- `∑[2*(gcd(2, n)+3)]-5` -/
def P10430986243857460235.Spec : Prop :=
  ∀ n, P10430986243857460235.a n = A143988 (n + 1)

end A143988

/-! ## A143988.P14078956135827081049

`∑[2*(5-n%2)]-5`
-/

namespace A143988.P14078956135827081049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (5 - ((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A143988.P14078956135827081049

namespace A143988

/-- `∑[2*(5-n%2)]-5` -/
def P14078956135827081049.Spec : Prop :=
  ∀ n, P14078956135827081049.a n = A143988 (n + 1)

end A143988

/-! ## A143988.P2844561995479555674

`or(1, n)-Δ[-(2*n)²]`
-/

namespace A143988.P2844561995479555674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - (f1 (n + 1) - f1 n)

end

end A143988.P2844561995479555674

namespace A143988

/-- `or(1, n)-Δ[-(2*n)²]` -/
def P2844561995479555674.Spec : Prop :=
  ∀ n, P2844561995479555674.a n = A143988 (n + 1)

end A143988

/-! ## A143988.P8054622011111163467

`and(1, n+1)+9*n+4`
-/

namespace A143988.P8054622011111163467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1) + (9 * n + 4)

end

end A143988.P8054622011111163467

namespace A143988

/-- `and(1, n+1)+9*n+4` -/
def P8054622011111163467.Spec : Prop :=
  ∀ n, (P8054622011111163467.a n : ℤ) = A143988 (n + 1)

end A143988

/-! ## A143988.P17555791949105905954

`∑[A168428(n)+4]`
-/

namespace A143988.P17555791949105905954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168428 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143988.P17555791949105905954

namespace A143988

/-- `∑[A168428(n)+4]` -/
def P17555791949105905954.Spec : Prop :=
  ∀ n, P17555791949105905954.a n = A143988 (n + 1)

end A143988

/-! ## A143988.P9457313569515042302

`xor(1, A173512(n))+n`
-/

namespace A143988.P9457313569515042302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A173512 n) + (n : ℤ)

end

end A143988.P9457313569515042302

namespace A143988

/-- `xor(1, A173512(n))+n` -/
def P9457313569515042302.Spec : Prop :=
  ∀ n, P9457313569515042302.a n = A143988 (n + 1)

end A143988

/-! ## A143988.P615749226062198188

`∑[A141745(a(n-1))]` with `a(0)=5`
-/

namespace A143988.P615749226062198188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A141745 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143988.P615749226062198188

namespace A143988

/-- `∑[A141745(a(n-1))]` -/
def P615749226062198188.Spec : Prop :=
  ∀ n, P615749226062198188.a n = A143988 (n + 1)

end A143988

/-! ## A143988.P13391866859549388615

`∑[A259556(a(n-1))]` with `a(0)=5`
-/

namespace A143988.P13391866859549388615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A259556 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143988.P13391866859549388615

namespace A143988

/-- `∑[A259556(a(n-1))]` -/
def P13391866859549388615.Spec : Prop :=
  ∀ n, P13391866859549388615.a n = A143988 (n + 1)

end A143988

/-! ## A143988.P4972237957583173150

`∑[A320138(a(n-1))]` with `a(0)=5`
-/

namespace A143988.P4972237957583173150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A320138 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143988.P4972237957583173150

namespace A143988

/-- `∑[A320138(a(n-1))]` -/
def P4972237957583173150.Spec : Prop :=
  ∀ n, P4972237957583173150.a n = A143988 (n + 1)

end A143988

/-! ## A143988.P14291174827009332695

`A017209(n)+char[2*n]`
-/

namespace A143988.P14291174827009332695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A143988.P14291174827009332695

namespace A143988

/-- `A017209(n)+char[2*n]` -/
def P14291174827009332695.Spec : Prop :=
  ∀ n, P14291174827009332695.a n = A143988 (n + 1)

end A143988

/-!
# A143989: Numbers having a unique representation as a sum of a prime and a square.

The programs for A143989, there is no canonical definition to state claims against.
-/

/-! ## A143989.P120974393758605514

`eq[1, A002471(n+1)]+1`
-/

namespace A143989.P120974393758605514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002471 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A143989.P120974393758605514

/-! ## A143989.P6592483665415552905

`eq[n, n-a(A002471(n))]` with `a(0)=1`
-/

namespace A143989.P6592483665415552905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (A002471 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143989.P6592483665415552905

/-! ## A143989.P13793173042607608002

`eq[1, A002471(A028310(n))]`
-/

namespace A143989.P13793173042607608002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002471 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143989.P13793173042607608002

/-! ## A143989.P12686164122471975320

`eq[1, A001045(A283183(n+1))]+1`
-/

namespace A143989.P12686164122471975320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A283183 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A143989.P12686164122471975320

/-! ## A143989.P4404862941317484809

`eq[1, A002471(A065033(2*n))]`
-/

namespace A143989.P4404862941317484809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002471 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143989.P4404862941317484809

/-! ## A143989.P13806999074452040499

`A000720(p?[A000040(n+1)*A002471(n+1)])`
-/

namespace A143989.P13806999074452040499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A002471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A143989.P13806999074452040499

/-!
# A143990: a(n) = n!*A001515(n-1) with a(0) = 1.

The programs for A143990, the canonical program `A143990.P759714326100056060` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143990 has offset 0).

The definition of A143990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143990.P759714326100056060

`n*(2*n-3)*a(n-1)+n*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A143990

/-- `n*(2*n-3)*a(n-1)+n*(n-1)*a(n-2)` -/
def P759714326100056060.Spec : Prop :=
  ∀ n, P759714326100056060.a n = A143990 n

theorem P759714326100056060.correct : P759714326100056060.Spec := by
  intro n
  simp only [A143990]

end A143990

/-! ## A143990.P16489508396173528993

`n!*A144301(n)`
-/

namespace A143990.P16489508396173528993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A144301 n

end

end A143990.P16489508396173528993

namespace A143990

/-- `n!*A144301(n)` -/
def P16489508396173528993.Spec : Prop :=
  ∀ n, P16489508396173528993.a n = A143990 n

end A143990

/-! ## A143990.P15958495627876001304

`A000142(n)*A144301(n)`
-/

namespace A143990.P15958495627876001304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A144301 n

end

end A143990.P15958495627876001304

namespace A143990

/-- `A000142(n)*A144301(n)` -/
def P15958495627876001304.Spec : Prop :=
  ∀ n, P15958495627876001304.a n = A143990 n

end A143990

/-! ## A143990.P15522565726655233392

`n!*A144505(A000217(n))`
-/

namespace A143990.P15522565726655233392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A144505 (A000217 n).toNat

end

end A143990.P15522565726655233392

namespace A143990

/-- `n!*A144505(A000217(n))` -/
def P15522565726655233392.Spec : Prop :=
  ∀ n, P15522565726655233392.a n = A143990 n

end A143990

/-! ## A143990.P4918106802340856585

`∏[A028310(n)]*A144301(n)`
-/

namespace A143990.P4918106802340856585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A144301 n

end

end A143990.P4918106802340856585

namespace A143990

/-- `∏[A028310(n)]*A144301(n)` -/
def P4918106802340856585.Spec : Prop :=
  ∀ n, P4918106802340856585.a n = A143990 n

end A143990

/-!
# A143991: Numerators of numbers with g.f. exp(1-(1-x)^(1/2)).

The programs for A143991, there is no canonical definition to state claims against.
-/

/-! ## A143991.P12510366719983118637

`gcd(A144301(n), A144525(n))`
-/

namespace A143991.P12510366719983118637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144301 n) (A144525 n)

end

end A143991.P12510366719983118637

/-! ## A143991.P5300643666581368662

`lcm(A000142(n), A144301(n))/A000142(n)`
-/

namespace A143991.P5300643666581368662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000142 n) (A144301 n) : ℚ) / (A000142 n : ℚ)

end

end A143991.P5300643666581368662

/-! ## A143991.P17901621993431154735

`(A144301(n)/A138742(n+1))^floor(n/5)²!`
-/

namespace A143991.P17901621993431154735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A144301 n : ℚ) / (A138742 (n + 1) : ℚ)) ^ Nat.factorial (⌊(n : ℚ) / 5⌋ ^ 2).toNat

end

end A143991.P17901621993431154735

/-! ## A143991.P12925297803567808393

`A144301(n)/A001511(A041673(n))`
-/

namespace A143991.P12925297803567808393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144301 n : ℚ) / (A001511 (A041673 n).toNat : ℚ)

end

end A143991.P12925297803567808393

/-! ## A143991.P12355360111907646906

`A144301(n)/A177704(A018033(n))`
-/

namespace A143991.P12355360111907646906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144301 n : ℚ) / (A177704 (A018033 n).toNat : ℚ)

end

end A143991.P12355360111907646906

/-!
# A143993: Composite numbers n such that the sum of prime factors of n (counted with multiplicity) terminates n as a substring.

The programs for A143993, there is no canonical definition to state claims against.
-/

/-! ## A143993.P12902142439835110296

`A071173(n+2)`
-/

namespace A143993.P12902142439835110296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071173 (n + 2)

end

end A143993.P12902142439835110296

/-! ## A143993.P6011365897628748073

`record[A071173(2-(A030451(n)-n))]`
-/

namespace A143993.P6011365897628748073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071173 (2 - (A030451 n - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143993.P6011365897628748073

/-! ## A143993.P14103540587523710673

`record[A071173(A080513(A007599(n)))]`
-/

namespace A143993.P14103540587523710673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071173 (A080513 (A007599 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143993.P14103540587523710673

/-! ## A143993.P17913607000860493521

`record[A071173(A000267(A004442(n)))]`
-/

namespace A143993.P17913607000860493521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071173 (A000267 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143993.P17913607000860493521

/-! ## A143993.P15892559300434463817

`record[A071173(A028920(A005408(n)))]`
-/

namespace A143993.P15892559300434463817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071173 (A028920 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143993.P15892559300434463817

/-!
# A143994: Years in which there are five Tuesdays in the month of February.

The programs for A143994, there is no canonical definition to state claims against.
-/

/-! ## A143994.P11285139464064595041

`A119406(n+1)-4`
-/

namespace A143994.P11285139464064595041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119406 (n + 1) - 4

end

end A143994.P11285139464064595041

/-! ## A143994.P11731879816600615190

`A224951(n+6)`
-/

namespace A143994.P11731879816600615190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224951 (n + 6)

end

end A143994.P11731879816600615190

/-! ## A143994.P1617296661424292624

`A224949(n+6)-4`
-/

namespace A143994.P1617296661424292624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224949 (n + 6) - 4

end

end A143994.P1617296661424292624

/-! ## A143994.P2378019015679249949

`A023446(A119406(n+1))`
-/

namespace A143994.P2378019015679249949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A119406 (n + 1)).toNat

end

end A143994.P2378019015679249949

/-! ## A143994.P10994603642806589495

`A023447(A119406(n+1)+1)`
-/

namespace A143994.P10994603642806589495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A119406 (n + 1) + 1).toNat

end

end A143994.P10994603642806589495

/-! ## A143994.P1852809079813538146

`A023450(A119406(n+1)+4)`
-/

namespace A143994.P1852809079813538146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023450 (A119406 (n + 1) + 4).toNat

end

end A143994.P1852809079813538146

/-!
# A143995: Years in which there are five Thursdays in the month of February, in the Gregorian calendar.

The programs for A143995, there is no canonical definition to state claims against.
-/

/-! ## A143995.P15353743932332028133

`A143994(n+2)-4`
-/

namespace A143995.P15353743932332028133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143994 (n + 2) - 4

end

end A143995.P15353743932332028133

/-! ## A143995.P721692718729400990

`A119406(n+2)-8`
-/

namespace A143995.P721692718729400990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119406 (n + 2) - 8

end

end A143995.P721692718729400990

/-! ## A143995.P1698843488275230820

`A224946(n+7)`
-/

namespace A143995.P1698843488275230820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224946 (n + 7)

end

end A143995.P1698843488275230820

/-! ## A143995.P13504053063394434638

`A005843(A143994(n+2))%A119406(n+2)`
-/

namespace A143995.P13504053063394434638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A143994 (n + 2)).toNat) (A119406 (n + 2))

end

end A143995.P13504053063394434638

/-! ## A143995.P10736424233889008700

`A023450(A119406(n+2))`
-/

namespace A143995.P10736424233889008700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023450 (A119406 (n + 2)).toNat

end

end A143995.P10736424233889008700

/-! ## A143995.P16458676096555325598

`A023446(A143994(n+2))`
-/

namespace A143995.P16458676096555325598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A143994 (n + 2)).toNat

end

end A143995.P16458676096555325598

/-!
# A143996: Rectangular array by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares for which (x,y) is congruent mod 4 to one of the following: (1,4), (2,2), (3,3), (4,1); then R(m,n) is the number of marked squares in the rectangle [0,m]x[0,n].

The programs for A143996, the canonical program `A143996.P13382186350544876179` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143996 has offset 1).

The definition of A143996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143996.P13382186350544876179

`floor(A143902(n+1)/2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A143996

/-- `floor(A143902(n+1)/2)` -/
def P13382186350544876179.Spec : Prop :=
  ∀ n, P13382186350544876179.a n = A143996 (n + 1)

theorem P13382186350544876179.correct : P13382186350544876179.Spec := by
  intro n
  simp only [A143996, Nat.add_sub_cancel]

end A143996

/-! ## A143996.P16577255202114212102

`floor(A143998(n+1)/3)`
-/

namespace A143996.P16577255202114212102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A143998 (n + 1) : ℚ) / 3⌋

end

end A143996.P16577255202114212102

namespace A143996

/-- `floor(A143998(n+1)/3)` -/
def P16577255202114212102.Spec : Prop :=
  ∀ n, P16577255202114212102.a n = A143996 (n + 1)

end A143996

/-! ## A143996.P10876862184999534471

`floor(A003991(n+1)/4)`
-/

namespace A143996.P10876862184999534471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003991 (n + 1) : ℚ) / 4⌋

end

end A143996.P10876862184999534471

namespace A143996

/-- `floor(A003991(n+1)/4)` -/
def P10876862184999534471.Spec : Prop :=
  ∀ n, P10876862184999534471.a n = A143996 (n + 1)

end A143996

/-! ## A143996.P4046232261750398078

`A002265(A003991(n+1))`
-/

namespace A143996.P4046232261750398078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A003991 (n + 1)).toNat

end

end A143996.P4046232261750398078

namespace A143996

/-- `A002265(A003991(n+1))` -/
def P4046232261750398078.Spec : Prop :=
  ∀ n, P4046232261750398078.a n = A143996 (n + 1)

end A143996

/-! ## A143996.P8464239742344491524

`A002264(A143998(n+1))`
-/

namespace A143996.P8464239742344491524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A143998 (n + 1)).toNat

end

end A143996.P8464239742344491524

namespace A143996

/-- `A002264(A143998(n+1))` -/
def P8464239742344491524.Spec : Prop :=
  ∀ n, P8464239742344491524.a n = A143996 (n + 1)

end A143996

/-! ## A143996.P1941424392617227508

`A004526(A143902(n+1))`
-/

namespace A143996.P1941424392617227508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A143902 (n + 1)).toNat

end

end A143996.P1941424392617227508

namespace A143996

/-- `A004526(A143902(n+1))` -/
def P1941424392617227508.Spec : Prop :=
  ∀ n, P1941424392617227508.a n = A143996 (n + 1)

end A143996

/-! ## A143996.P14368368077004131039

`A110655(A003991(n+1)+1)-1`
-/

namespace A143996.P14368368077004131039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A003991 (n + 1) + 1).toNat - 1

end

end A143996.P14368368077004131039

namespace A143996

/-- `A110655(A003991(n+1)+1)-1` -/
def P14368368077004131039.Spec : Prop :=
  ∀ n, P14368368077004131039.a n = A143996 (n + 1)

end A143996

/-! ## A143996.P12819588933415014980

`A106466(or(1, A003991(n+1)))-1`
-/

namespace A143996.P12819588933415014980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (Int.lor 1 (A003991 (n + 1))).toNat - 1

end

end A143996.P12819588933415014980

namespace A143996

/-- `A106466(or(1, A003991(n+1)))-1` -/
def P12819588933415014980.Spec : Prop :=
  ∀ n, P12819588933415014980.a n = A143996 (n + 1)

end A143996

/-! ## A143996.P18248993067511412255

`A003991(n+1)-A143997(n+1)`
-/

namespace A143996.P18248993067511412255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A143997 (n + 1)

end

end A143996.P18248993067511412255

namespace A143996

/-- `A003991(n+1)-A143997(n+1)` -/
def P18248993067511412255.Spec : Prop :=
  ∀ n, P18248993067511412255.a n = A143996 (n + 1)

end A143996

/-! ## A143996.P933690164751690704

`floor(floor((A049627(n)+A049615(n))/2)/2)`
-/

namespace A143996.P933690164751690704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A049627 n + A049615 n : ℚ) / 2⌋ : ℚ) / 2⌋

end

end A143996.P933690164751690704

namespace A143996

/-- `floor(floor((A049627(n)+A049615(n))/2)/2)` -/
def P933690164751690704.Spec : Prop :=
  ∀ n, P933690164751690704.a n = A143996 (n + 1)

end A143996

/-! ## A143996.P610608544751178610

`floor(A002260(n+1)*A004736(n+1)/4)`
-/

namespace A143996.P610608544751178610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (n + 1) * A004736 (n + 1) : ℚ) / 4⌋

end

end A143996.P610608544751178610

namespace A143996

/-- `floor(A002260(n+1)*A004736(n+1)/4)` -/
def P610608544751178610.Spec : Prop :=
  ∀ n, P610608544751178610.a n = A143996 (n + 1)

end A143996

/-! ## A143996.P7881419663011238782

`A002265(A002265(A098352(n+1)))`
-/

namespace A143996.P7881419663011238782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002265 (A098352 (n + 1)).toNat).toNat

end

end A143996.P7881419663011238782

namespace A143996

/-- `A002265(A002265(A098352(n+1)))` -/
def P7881419663011238782.Spec : Prop :=
  ∀ n, P7881419663011238782.a n = A143996 (n + 1)

end A143996

/-! ## A143996.P16300720160960626380

`A002265(A049627(n)+A049615(n))`
-/

namespace A143996.P16300720160960626380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A049627 n + A049615 n).toNat

end

end A143996.P16300720160960626380

namespace A143996

/-- `A002265(A049627(n)+A049615(n))` -/
def P16300720160960626380.Spec : Prop :=
  ∀ n, P16300720160960626380.a n = A143996 (n + 1)

end A143996

/-! ## A143996.P17778864131232573002

`A002265(A002260(n+1)*A004736(n+1))`
-/

namespace A143996.P17778864131232573002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002260 (n + 1) * A004736 (n + 1)).toNat

end

end A143996.P17778864131232573002

namespace A143996

/-- `A002265(A002260(n+1)*A004736(n+1))` -/
def P17778864131232573002.Spec : Prop :=
  ∀ n, P17778864131232573002.a n = A143996 (n + 1)

end A143996

/-! ## A143996.P11819846640612629246

`A003991(n+1)-A057353(A003991(n+1)+1)`
-/

namespace A143996.P11819846640612629246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A057353 (A003991 (n + 1) + 1).toNat

end

end A143996.P11819846640612629246

namespace A143996

/-- `A003991(n+1)-A057353(A003991(n+1)+1)` -/
def P11819846640612629246.Spec : Prop :=
  ∀ n, P11819846640612629246.a n = A143996 (n + 1)

end A143996

/-! ## A143996.P14489080822626165908

`A143998(n+1)+A143999(n+1)-A143997(n+1)`
-/

namespace A143996.P14489080822626165908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143998 (n + 1) + (A143999 (n + 1) - A143997 (n + 1))

end

end A143996.P14489080822626165908

namespace A143996

/-- `A143998(n+1)+A143999(n+1)-A143997(n+1)` -/
def P14489080822626165908.Spec : Prop :=
  ∀ n, P14489080822626165908.a n = A143996 (n + 1)

end A143996

/-! ## A143996.P18025452173575369545

`A144000(n+1)+A144001(n+1)-A143997(n+1)`
-/

namespace A143996.P18025452173575369545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144000 (n + 1) + (A144001 (n + 1) - A143997 (n + 1))

end

end A143996.P18025452173575369545

namespace A143996

/-- `A144000(n+1)+A144001(n+1)-A143997(n+1)` -/
def P18025452173575369545.Spec : Prop :=
  ∀ n, P18025452173575369545.a n = A143996 (n + 1)

end A143996

/-!
# A143997: Rectangular array by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares for which (x,y) is congruent mod 4 to one of the following: (1,4), (2,2), (3,3), (4,1); then R(m,n) is the number of UNmarked squares in the rectangle [0,m]x[0,n].

The programs for A143997, the canonical program `A143997.P1090156401817259901` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143997 has offset 1).

The definition of A143997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143997.P1090156401817259901

`A057353(A003991(n+1)+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143997

/-- `A057353(A003991(n+1)+1)` -/
def P1090156401817259901.Spec : Prop :=
  ∀ n, P1090156401817259901.a n = A143997 (n + 1)

theorem P1090156401817259901.correct : P1090156401817259901.Spec := by
  intro n
  simp only [A143997, Nat.add_sub_cancel]

end A143997

/-! ## A143997.P16862599521300697112

`A002265(3*(A003991(n+1)+1))`
-/

namespace A143997.P16862599521300697112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (3 * (A003991 (n + 1) + 1)).toNat

end

end A143997.P16862599521300697112

namespace A143997

/-- `A002265(3*(A003991(n+1)+1))` -/
def P16862599521300697112.Spec : Prop :=
  ∀ n, P16862599521300697112.a n = A143997 (n + 1)

end A143997

/-! ## A143997.P6729495824245769705

`A003991(n+1)-A143996(n+1)`
-/

namespace A143997.P6729495824245769705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A143996 (n + 1)

end

end A143997.P6729495824245769705

namespace A143997

/-- `A003991(n+1)-A143996(n+1)` -/
def P6729495824245769705.Spec : Prop :=
  ∀ n, P6729495824245769705.a n = A143997 (n + 1)

end A143997

/-! ## A143997.P863517188103637395

`A143901(n+1)+A110654(A143902(n+1))`
-/

namespace A143997.P863517188103637395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143901 (n + 1) + A110654 (A143902 (n + 1)).toNat

end

end A143997.P863517188103637395

namespace A143997

/-- `A143901(n+1)+A110654(A143902(n+1))` -/
def P863517188103637395.Spec : Prop :=
  ∀ n, P863517188103637395.a n = A143997 (n + 1)

end A143997

/-! ## A143997.P17488014055588943232

`A002265(3*(A049627(n)+A049615(n)+1))`
-/

namespace A143997.P17488014055588943232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (3 * (A049627 n + A049615 n + 1)).toNat

end

end A143997.P17488014055588943232

namespace A143997

/-- `A002265(3*(A049627(n)+A049615(n)+1))` -/
def P17488014055588943232.Spec : Prop :=
  ∀ n, P17488014055588943232.a n = A143997 (n + 1)

end A143997

/-! ## A143997.P17727955294461851505

`A110655(A003991(n+1)+2*A003991(n+1))`
-/

namespace A143997.P17727955294461851505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A003991 (n + 1) + 2 * A003991 (n + 1)).toNat

end

end A143997.P17727955294461851505

namespace A143997

/-- `A110655(A003991(n+1)+2*A003991(n+1))` -/
def P17727955294461851505.Spec : Prop :=
  ∀ n, P17727955294461851505.a n = A143997 (n + 1)

end A143997

/-! ## A143997.P5778980723401352719

`A110656(A098352(n+1)+A098352(n+1)/2)`
-/

namespace A143997.P5778980723401352719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (SequenceMachineLib.roundAway ((A098352 (n + 1) : ℚ) + (A098352 (n + 1) : ℚ) / 2)).toNat

end

end A143997.P5778980723401352719

namespace A143997

/-- `A110656(A098352(n+1)+A098352(n+1)/2)` -/
def P5778980723401352719.Spec : Prop :=
  ∀ n, P5778980723401352719.a n = A143997 (n + 1)

end A143997

/-! ## A143997.P8440549621159865234

`A143998(n+1)+A143999(n+1)-A143996(n+1)`
-/

namespace A143997.P8440549621159865234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143998 (n + 1) + (A143999 (n + 1) - A143996 (n + 1))

end

end A143997.P8440549621159865234

namespace A143997

/-- `A143998(n+1)+A143999(n+1)-A143996(n+1)` -/
def P8440549621159865234.Spec : Prop :=
  ∀ n, P8440549621159865234.a n = A143997 (n + 1)

end A143997

/-! ## A143997.P3950000285672742626

`A144000(n+1)+A144001(n+1)-A143996(n+1)`
-/

namespace A143997.P3950000285672742626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144000 (n + 1) + (A144001 (n + 1) - A143996 (n + 1))

end

end A143997.P3950000285672742626

namespace A143997

/-- `A144000(n+1)+A144001(n+1)-A143996(n+1)` -/
def P3950000285672742626.Spec : Prop :=
  ∀ n, P3950000285672742626.a n = A143997 (n + 1)

end A143997

/-! ## A143997.P6834643093513812525

`A143996(A185871(n+1))-A143996(n+1)`
-/

namespace A143997.P6834643093513812525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143996 (A185871 (n + 1)).toNat - A143996 (n + 1)

end

end A143997.P6834643093513812525

namespace A143997

/-- `A143996(A185871(n+1))-A143996(n+1)` -/
def P6834643093513812525.Spec : Prop :=
  ∀ n, P6834643093513812525.a n = A143997 (n + 1)

end A143997

/-!
# A143998: Rectangular array by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares for which (x,y) is congruent mod 4 to one of the following: (1,1), (2,3), (3,2), (4,0); then R(m,n) is the number of marked squares in the rectangle [0,m]x[0,n].

The programs for A143998, the canonical program `A143998.P2440036411916309485` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143998 has offset 1).

The definition of A143998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143998.P2440036411916309485

`floor(3*A003991(n+1)/4)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143998

/-- `floor(3*A003991(n+1)/4)` -/
def P2440036411916309485.Spec : Prop :=
  ∀ n, P2440036411916309485.a n = A143998 (n + 1)

theorem P2440036411916309485.correct : P2440036411916309485.Spec := by
  intro n
  simp only [A143998, Nat.add_sub_cancel]

end A143998

/-! ## A143998.P13737828175391014101

`A057353(A003991(n+1))`
-/

namespace A143998.P13737828175391014101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A003991 (n + 1)).toNat

end

end A143998.P13737828175391014101

namespace A143998

/-- `A057353(A003991(n+1))` -/
def P13737828175391014101.Spec : Prop :=
  ∀ n, P13737828175391014101.a n = A143998 (n + 1)

end A143998

/-! ## A143998.P5627189587075564379

`A002265(3*A003991(n+1))`
-/

namespace A143998.P5627189587075564379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (3 * A003991 (n + 1)).toNat

end

end A143998.P5627189587075564379

namespace A143998

/-- `A002265(3*A003991(n+1))` -/
def P5627189587075564379.Spec : Prop :=
  ∀ n, P5627189587075564379.a n = A143998 (n + 1)

end A143998

/-! ## A143998.P17751081411446261993

`A003991(n+1)-A143999(n+1)`
-/

namespace A143998.P17751081411446261993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A143999 (n + 1)

end

end A143998.P17751081411446261993

namespace A143998

/-- `A003991(n+1)-A143999(n+1)` -/
def P17751081411446261993.Spec : Prop :=
  ∀ n, P17751081411446261993.a n = A143998 (n + 1)

end A143998

/-! ## A143998.P7868039250117193923

`A002265(3*(A049627(n)+A049615(n)))`
-/

namespace A143998.P7868039250117193923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (3 * (A049627 n + A049615 n)).toNat

end

end A143998.P7868039250117193923

namespace A143998

/-- `A002265(3*(A049627(n)+A049615(n)))` -/
def P7868039250117193923.Spec : Prop :=
  ∀ n, P7868039250117193923.a n = A143998 (n + 1)

end A143998

/-! ## A143998.P4620731635270909522

`A003991(n+1)-A008621(A003991(n+1)-1)`
-/

namespace A143998.P4620731635270909522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A008621 (A003991 (n + 1) - 1).toNat

end

end A143998.P4620731635270909522

namespace A143998

/-- `A003991(n+1)-A008621(A003991(n+1)-1)` -/
def P4620731635270909522.Spec : Prop :=
  ∀ n, P4620731635270909522.a n = A143998 (n + 1)

end A143998

/-! ## A143998.P17764199842754277922

`A003991(n+1)-A002265(A003991(n+1)+3)`
-/

namespace A143998.P17764199842754277922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A002265 (A003991 (n + 1) + 3).toNat

end

end A143998.P17764199842754277922

namespace A143998

/-- `A003991(n+1)-A002265(A003991(n+1)+3)` -/
def P17764199842754277922.Spec : Prop :=
  ∀ n, P17764199842754277922.a n = A143998 (n + 1)

end A143998

/-! ## A143998.P11428000258145936579

`A143996(n+1)+A143997(n+1)-A143999(n+1)`
-/

namespace A143998.P11428000258145936579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143996 (n + 1) + (A143997 (n + 1) - A143999 (n + 1))

end

end A143998.P11428000258145936579

namespace A143998

/-- `A143996(n+1)+A143997(n+1)-A143999(n+1)` -/
def P11428000258145936579.Spec : Prop :=
  ∀ n, P11428000258145936579.a n = A143998 (n + 1)

end A143998

/-! ## A143998.P12795246054906227050

`A144000(n+1)+A144001(n+1)-A143999(n+1)`
-/

namespace A143998.P12795246054906227050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144000 (n + 1) + (A144001 (n + 1) - A143999 (n + 1))

end

end A143998.P12795246054906227050

namespace A143998

/-- `A144000(n+1)+A144001(n+1)-A143999(n+1)` -/
def P12795246054906227050.Spec : Prop :=
  ∀ n, P12795246054906227050.a n = A143998 (n + 1)

end A143998

/-!
# A143999: Rectangular array by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares for which (x,y) is congruent mod 4 to one of the following: (1,1), (2,3), (3,2), (4,0); then R(m,n) is the number of UNmarked squares in the rectangle [0,m]x[0,n].

The programs for A143999, the canonical program `A143999.P17929209227279405618` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143999 has offset 1).

The definition of A143999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143999.P17929209227279405618

`ceil(A143901(n+1)/2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A143999

/-- `ceil(A143901(n+1)/2)` -/
def P17929209227279405618.Spec : Prop :=
  ∀ n, P17929209227279405618.a n = A143999 (n + 1)

theorem P17929209227279405618.correct : P17929209227279405618.Spec := by
  intro n
  simp only [A143999, Nat.add_sub_cancel]

end A143999

/-! ## A143999.P3734542513809051311

`floor(A059036(n)/4)+1`
-/

namespace A143999.P3734542513809051311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059036 n : ℚ) / 4⌋ + 1

end

end A143999.P3734542513809051311

namespace A143999

/-- `floor(A059036(n)/4)+1` -/
def P3734542513809051311.Spec : Prop :=
  ∀ n, P3734542513809051311.a n = A143999 (n + 1)

end A143999

/-! ## A143999.P17486661267394686624

`ceil(A003991(n+1)/4)`
-/

namespace A143999.P17486661267394686624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003991 (n + 1) : ℚ) / 4⌉

end

end A143999.P17486661267394686624

namespace A143999

/-- `ceil(A003991(n+1)/4)` -/
def P17486661267394686624.Spec : Prop :=
  ∀ n, P17486661267394686624.a n = A143999 (n + 1)

end A143999

/-! ## A143999.P14180836322767518319

`A008621(A059036(n))`
-/

namespace A143999.P14180836322767518319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A059036 n).toNat

end

end A143999.P14180836322767518319

namespace A143999

/-- `A008621(A059036(n))` -/
def P14180836322767518319.Spec : Prop :=
  ∀ n, P14180836322767518319.a n = A143999 (n + 1)

end A143999

/-! ## A143999.P1824169366877774310

`A110655(A003991(n+1))`
-/

namespace A143999.P1824169366877774310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A003991 (n + 1)).toNat

end

end A143999.P1824169366877774310

namespace A143999

/-- `A110655(A003991(n+1))` -/
def P1824169366877774310.Spec : Prop :=
  ∀ n, P1824169366877774310.a n = A143999 (n + 1)

end A143999

/-! ## A143999.P7870960687083855071

`A110654(A143901(n+1))`
-/

namespace A143999.P7870960687083855071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A143901 (n + 1)).toNat

end

end A143999.P7870960687083855071

namespace A143999

/-- `A110654(A143901(n+1))` -/
def P7870960687083855071.Spec : Prop :=
  ∀ n, P7870960687083855071.a n = A143999 (n + 1)

end A143999

/-! ## A143999.P18400355830430614217

`A004526(A143901(n+1)+1)`
-/

namespace A143999.P18400355830430614217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A143901 (n + 1) + 1).toNat

end

end A143999.P18400355830430614217

namespace A143999

/-- `A004526(A143901(n+1)+1)` -/
def P18400355830430614217.Spec : Prop :=
  ∀ n, P18400355830430614217.a n = A143999 (n + 1)

end A143999

/-! ## A143999.P16870785502335763693

`A008621(A003991(n+1)-1)`
-/

namespace A143999.P16870785502335763693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A003991 (n + 1) - 1).toNat

end

end A143999.P16870785502335763693

namespace A143999

/-- `A008621(A003991(n+1)-1)` -/
def P16870785502335763693.Spec : Prop :=
  ∀ n, P16870785502335763693.a n = A143999 (n + 1)

end A143999

/-! ## A143999.P16423173639160457450

`A110656(A098352(n+1)/2)`
-/

namespace A143999.P16423173639160457450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (SequenceMachineLib.roundAway ((A098352 (n + 1) : ℚ) / 2)).toNat

end

end A143999.P16423173639160457450

namespace A143999

/-- `A110656(A098352(n+1)/2)` -/
def P16423173639160457450.Spec : Prop :=
  ∀ n, P16423173639160457450.a n = A143999 (n + 1)

end A143999

/-! ## A143999.P13440077789028734756

`A002265(A003991(n+1)-1)+1`
-/

namespace A143999.P13440077789028734756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A003991 (n + 1) - 1).toNat + 1

end

end A143999.P13440077789028734756

namespace A143999

/-- `A002265(A003991(n+1)-1)+1` -/
def P13440077789028734756.Spec : Prop :=
  ∀ n, P13440077789028734756.a n = A143999 (n + 1)

end A143999

/-! ## A143999.P4717417005854010236

`A106466(or(1, A003991(n+1)-1))`
-/

namespace A143999.P4717417005854010236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (Int.lor 1 (A003991 (n + 1) - 1)).toNat

end

end A143999.P4717417005854010236

namespace A143999

/-- `A106466(or(1, A003991(n+1)-1))` -/
def P4717417005854010236.Spec : Prop :=
  ∀ n, P4717417005854010236.a n = A143999 (n + 1)

end A143999

/-! ## A143999.P5984691223282951660

`A003991(n+1)-A143998(n+1)`
-/

namespace A143999.P5984691223282951660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A143998 (n + 1)

end

end A143999.P5984691223282951660

namespace A143999

/-- `A003991(n+1)-A143998(n+1)` -/
def P5984691223282951660.Spec : Prop :=
  ∀ n, P5984691223282951660.a n = A143999 (n + 1)

end A143999

/-! ## A143999.P15438477977216264373

`round(round((A049627(n)+A049615(n))/2)/2)`
-/

namespace A143999.P15438477977216264373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A049627 n + A049615 n : ℚ) / 2) : ℚ) / 2)

end

end A143999.P15438477977216264373

namespace A143999

/-- `round(round((A049627(n)+A049615(n))/2)/2)` -/
def P15438477977216264373.Spec : Prop :=
  ∀ n, P15438477977216264373.a n = A143999 (n + 1)

end A143999

/-! ## A143999.P12636112003927809950

`round(round(A002260(n+1)*A004736(n+1)/2)/2)`
-/

namespace A143999.P12636112003927809950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A002260 (n + 1) * A004736 (n + 1) : ℚ) / 2) : ℚ) / 2)

end

end A143999.P12636112003927809950

namespace A143999

/-- `round(round(A002260(n+1)*A004736(n+1)/2)/2)` -/
def P12636112003927809950.Spec : Prop :=
  ∀ n, P12636112003927809950.a n = A143999 (n + 1)

end A143999

/-! ## A143999.P12288557846845567107

`A143996(n+1)+A143997(n+1)-A143998(n+1)`
-/

namespace A143999.P12288557846845567107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143996 (n + 1) + (A143997 (n + 1) - A143998 (n + 1))

end

end A143999.P12288557846845567107

namespace A143999

/-- `A143996(n+1)+A143997(n+1)-A143998(n+1)` -/
def P12288557846845567107.Spec : Prop :=
  ∀ n, P12288557846845567107.a n = A143999 (n + 1)

end A143999

/-! ## A143999.P18162633641043247471

`A144000(n+1)+A144001(n+1)-A143998(n+1)`
-/

namespace A143999.P18162633641043247471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144000 (n + 1) + (A144001 (n + 1) - A143998 (n + 1))

end

end A143999.P18162633641043247471

namespace A143999

/-- `A144000(n+1)+A144001(n+1)-A143998(n+1)` -/
def P18162633641043247471.Spec : Prop :=
  ∀ n, P18162633641043247471.a n = A143999 (n + 1)

end A143999

/-! ## A143999.P8620369886158993737

`A143901(A214928(A143901(n+1)²))`
-/

namespace A143999.P8620369886158993737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143901 (A214928 (A143901 (n + 1) ^ 2).toNat).toNat

end

end A143999.P8620369886158993737

namespace A143999

/-- `A143901(A214928(A143901(n+1)²))` -/
def P8620369886158993737.Spec : Prop :=
  ∀ n, P8620369886158993737.a n = A143999 (n + 1)

end A143999

