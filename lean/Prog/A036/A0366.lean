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
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A036600: Number of binary rooted trees with n nodes and height exactly 11.

The programs for A036600, there is no canonical definition to state claims against.
-/

/-! ## A036600.P1257477654530409156

`Δ[A036601(n)-A220659(A015070(n+1))]`
-/

namespace A036600.P1257477654530409156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036601 n - A220659 (A015070 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036600.P1257477654530409156

/-! ## A036600.P14761525832192773124

`Δ[A178334(8*12*C(n, 12))]`
-/

namespace A036600.P14761525832192773124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (8 * (12 * Nat.choose n 12))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036600.P14761525832192773124

/-! ## A036600.P7376219025722007680

`Δ[A002487(C(ceil(3*n/2), 18))]`
-/

namespace A036600.P7376219025722007680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Nat.choose ⌈3 * ((n : ℚ) / 2)⌉.toNat 18)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036600.P7376219025722007680

/-! ## A036600.P9972529272055902114

`Δ[A283977(C(ceil(3*n/2), 18))]`
-/

namespace A036600.P9972529272055902114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 (Nat.choose ⌈3 * ((n : ℚ) / 2)⌉.toNat 18)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036600.P9972529272055902114

/-! ## A036600.P14646086140125834596

`A232710(A011856(n))`
-/

namespace A036600.P14646086140125834596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232710 (A011856 n).toNat

end

end A036600.P14646086140125834596

/-!
# A036601: Number of binary rooted trees with n nodes and height exactly 12.

The programs for A036601, there is no canonical definition to state claims against.
-/

/-! ## A036601.P18352415028210314279

`A178334(8*12*C(n, 12))`
-/

namespace A036601.P18352415028210314279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (8 * (12 * Nat.choose n 12))

end

end A036601.P18352415028210314279

/-! ## A036601.P16859283623655672250

`A342117(C(comp[∑[n-1]], 17))`
-/

namespace A036601.P16859283623655672250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342117 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 17)

end

end A036601.P16859283623655672250

/-! ## A036601.P9901875423379581328

`A002487(C(ceil(3*n/2), 18))`
-/

namespace A036601.P9901875423379581328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Nat.choose ⌈3 * ((n : ℚ) / 2)⌉.toNat 18)

end

end A036601.P9901875423379581328

/-! ## A036601.P459916231575172921

`A283977(C(ceil(3*n/2), 18))`
-/

namespace A036601.P459916231575172921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 (Nat.choose ⌈3 * ((n : ℚ) / 2)⌉.toNat 18)

end

end A036601.P459916231575172921

/-! ## A036601.P7124203514991570090

`A212992(A036427(n))`
-/

namespace A036601.P7124203514991570090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212992 (A036427 n).toNat

end

end A036601.P7124203514991570090

/-!
# A036603: a(n) = n! in binary.

The programs for A036603, there is no canonical definition to state claims against.
-/

/-! ## A036603.P14479226830056858387

`10^A011371(n)*A140105(n)`
-/

namespace A036603.P14479226830056858387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A011371 n : ℤ) * (A140105 n : ℚ)

end

end A036603.P14479226830056858387

/-! ## A036603.P1849687814089788967

`A007088(n!)`
-/

namespace A036603.P1849687814089788967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Nat.factorial n)

end

end A036603.P1849687814089788967

/-! ## A036603.P8791659800268294022

`sqrt(A063009(n!))`
-/

namespace A036603.P8791659800268294022
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 (Nat.factorial n) : ℝ)

end

end A036603.P8791659800268294022

/-! ## A036603.P11527388543100612371

`A204093(n!)/6`
-/

namespace A036603.P11527388543100612371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204093 (Nat.factorial n) : ℚ) / 6

end

end A036603.P11527388543100612371

/-!
# A036604: Sorting numbers: minimal number of comparisons needed to sort n elements.

The programs for A036604, there is no canonical definition to state claims against.
-/

/-! ## A036604.P13814588230106977233

`∑[floor(log2(n+1)+γ)]`
-/

namespace A036604.P13814588230106977233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (n + 1 : ℝ) + Real.eulerMascheroniConstant⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036604.P13814588230106977233

/-! ## A036604.P15011648996716687390

`char[2*n+47]+∑[comp[A056429(2*(n+1))-1]-n]`
-/

namespace A036604.P15011648996716687390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 47

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056429 (2 * (n + 1)) - 1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A036604.P15011648996716687390

/-! ## A036604.P10479093170728687804

`A001768(A348553(n))`
-/

namespace A036604.P10479093170728687804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001768 (A348553 n).toNat

end

end A036604.P10479093170728687804

/-! ## A036604.P12381979065531628085

`A001768(A387051(n))`
-/

namespace A036604.P12381979065531628085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001768 (A387051 n).toNat

end

end A036604.P12381979065531628085

/-! ## A036604.P8951625939849531896

`A001768(A387108(n))`
-/

namespace A036604.P8951625939849531896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001768 (A387108 n).toNat

end

end A036604.P8951625939849531896

/-!
# A036605: a(n) = a(n-2) + 2*a(n-3) + a(n-4).

The programs for A036605, the canonical program `A036605.P3462420480559024181` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036605 has offset 0).

The definition of A036605 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+2*a(n-3)+a(n-4)` (program `A036605.P3462420480559024181`, by `A036605.P3462420480559024181.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036605.P3462420480559024181

`a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036605

/-- `a(n-2)+2*a(n-3)+a(n-4)` -/
def P3462420480559024181.Spec : Prop :=
  ∀ n, (P3462420480559024181.a n : ℤ) = A036605 n

theorem P3462420480559024181.correct : P3462420480559024181.Spec := by
  intro n
  simp only [A036605]

end A036605

/-! ## A036605.P6861038982012955585

`(A099837(n+2)+A022086(n+2))/2`
-/

namespace A036605.P6861038982012955585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099837 (n + 2) + A022086 (n + 2) : ℚ) / 2

end

end A036605.P6861038982012955585

namespace A036605

/-- `(A099837(n+2)+A022086(n+2))/2` -/
def P6861038982012955585.Spec : Prop :=
  ∀ n, P6861038982012955585.a n = (A036605 n : ℚ)

end A036605

/-! ## A036605.P16696969775139202070

`ogf((1+4x+3x^2+x^3)/(1-x^2-2x^3-x^4))`
-/

namespace A036605.P16696969775139202070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 3, 1] [1, 0, -1, -2, -1] n

end

end A036605.P16696969775139202070

namespace A036605

/-- `ogf((1+4x+3x^2+x^3)/(1-x^2-2x^3-x^4))` -/
def P16696969775139202070.Spec : Prop :=
  ∀ n, P16696969775139202070.a n = A036605 n

end A036605

/-! ## A036605.P1133512108322888705

`3*A004695(n+2)+1`
-/

namespace A036605.P1133512108322888705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004695 (n + 2) + 1

end

end A036605.P1133512108322888705

namespace A036605

/-- `3*A004695(n+2)+1` -/
def P1133512108322888705.Spec : Prop :=
  ∀ n, P1133512108322888705.a n = A036605 n

end A036605

/-! ## A036605.P4078185930499810561

`3*A147997(n+2)-2`
-/

namespace A036605.P4078185930499810561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A147997 (n + 2) - 2

end

end A036605.P4078185930499810561

namespace A036605

/-- `3*A147997(n+2)-2` -/
def P4078185930499810561.Spec : Prop :=
  ∀ n, P4078185930499810561.a n = A036605 n

end A036605

/-! ## A036605.P17106612324190919739

`3*ceil(∑[A000045(n)/2])+1`
-/

namespace A036605.P17106612324190919739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ + 1

end

end A036605.P17106612324190919739

namespace A036605

/-- `3*ceil(∑[A000045(n)/2])+1` -/
def P17106612324190919739.Spec : Prop :=
  ∀ n, P17106612324190919739.a n = A036605 n

end A036605

/-! ## A036605.P15142303556324930515

`3*floor(A000045(n+2)/2)+1`
-/

namespace A036605.P15142303556324930515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(A000045 (n + 2) : ℚ) / 2⌋ + 1

end

end A036605.P15142303556324930515

namespace A036605

/-- `3*floor(A000045(n+2)/2)+1` -/
def P15142303556324930515.Spec : Prop :=
  ∀ n, P15142303556324930515.a n = A036605 n

end A036605

/-! ## A036605.P10202427295299788238

`3*ceil(A000071(n+2)/2)+1`
-/

namespace A036605.P10202427295299788238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈(A000071 (n + 2) : ℚ) / 2⌉ + 1

end

end A036605.P10202427295299788238

namespace A036605

/-- `3*ceil(A000071(n+2)/2)+1` -/
def P10202427295299788238.Spec : Prop :=
  ∀ n, P10202427295299788238.a n = A036605 n

end A036605

/-! ## A036605.P8374850728462810904

`A390351(n)-A257075(n)`
-/

namespace A036605.P8374850728462810904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390351 n - A257075 n

end

end A036605.P8374850728462810904

namespace A036605

/-- `A390351(n)-A257075(n)` -/
def P8374850728462810904.Spec : Prop :=
  ∀ n, P8374850728462810904.a n = A036605 n

end A036605

/-! ## A036605.P9380486776891853996

`A100886(n+1)+A000045(n)`
-/

namespace A036605.P9380486776891853996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100886 (n + 1) + A000045 n

end

end A036605.P9380486776891853996

namespace A036605

/-- `A100886(n+1)+A000045(n)` -/
def P9380486776891853996.Spec : Prop :=
  ∀ n, P9380486776891853996.a n = A036605 n

end A036605

/-! ## A036605.P12697756230215066521

`A286311(n+2)+A131736(n+1)`
-/

namespace A036605.P12697756230215066521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286311 (n + 2) + A131736 (n + 1)

end

end A036605.P12697756230215066521

namespace A036605

/-- `A286311(n+2)+A131736(n+1)` -/
def P12697756230215066521.Spec : Prop :=
  ∀ n, P12697756230215066521.a n = A036605 n

end A036605

/-! ## A036605.P12938681343782600710

`A147997(n+2)+A104221(n+2)`
-/

namespace A036605.P12938681343782600710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (n + 2) + A104221 (n + 2)

end

end A036605.P12938681343782600710

namespace A036605

/-- `A147997(n+2)+A104221(n+2)` -/
def P12938681343782600710.Spec : Prop :=
  ∀ n, P12938681343782600710.a n = A036605 n

end A036605

/-! ## A036605.P4587986088767159332

`A286311(n+2)-A134668(n+3)`
-/

namespace A036605.P4587986088767159332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286311 (n + 2) - A134668 (n + 3)

end

end A036605.P4587986088767159332

namespace A036605

/-- `A286311(n+2)-A134668(n+3)` -/
def P4587986088767159332.Spec : Prop :=
  ∀ n, P4587986088767159332.a n = A036605 n

end A036605

/-! ## A036605.P14198359952098911964

`Δ[Δ[A201864(n+1)]]+A000032(n+1)`
-/

namespace A036605.P14198359952098911964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201864 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000032 (n + 1)

end

end A036605.P14198359952098911964

namespace A036605

/-- `Δ[Δ[A201864(n+1)]]+A000032(n+1)` -/
def P14198359952098911964.Spec : Prop :=
  ∀ n, P14198359952098911964.a n = A036605 n

end A036605

/-! ## A036605.P18305593537711914035

`A100887(n+1)+A100887(n)+A100886(n)`
-/

namespace A036605.P18305593537711914035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100887 (n + 1) + (A100887 n + A100886 n)

end

end A036605.P18305593537711914035

namespace A036605

/-- `A100887(n+1)+A100887(n)+A100886(n)` -/
def P18305593537711914035.Spec : Prop :=
  ∀ n, P18305593537711914035.a n = A036605 n

end A036605

/-! ## A036605.P4192193968389887690

`A227104(n+1)+A227104(n)-A093040(n)`
-/

namespace A036605.P4192193968389887690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227104 (n + 1) + (A227104 n - A093040 n)

end

end A036605.P4192193968389887690

namespace A036605

/-- `A227104(n+1)+A227104(n)-A093040(n)` -/
def P4192193968389887690.Spec : Prop :=
  ∀ n, P4192193968389887690.a n = A036605 n

end A036605

/-! ## A036605.P6548212320437536528

`Δ[A027976(n)]+A000045(n+1)`
-/

namespace A036605.P6548212320437536528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000045 (n + 1)

end

end A036605.P6548212320437536528

namespace A036605

/-- `Δ[A027976(n)]+A000045(n+1)` -/
def P6548212320437536528.Spec : Prop :=
  ∀ n, P6548212320437536528.a n = A036605 n

end A036605

/-! ## A036605.P6042257481532848309

`A100888(n+2)-A100886(n+1)`
-/

namespace A036605.P6042257481532848309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100888 (n + 2) - A100886 (n + 1)

end

end A036605.P6042257481532848309

namespace A036605

/-- `A100888(n+2)-A100886(n+1)` -/
def P6042257481532848309.Spec : Prop :=
  ∀ n, P6042257481532848309.a n = A036605 n

end A036605

/-! ## A036605.P5419208344945735841

`A000045(n+1)+A027976(n+1)-A027976(n)`
-/

namespace A036605.P5419208344945735841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A027976 (n + 1) - A027976 n)

end

end A036605.P5419208344945735841

namespace A036605

/-- `A000045(n+1)+A027976(n+1)-A027976(n)` -/
def P5419208344945735841.Spec : Prop :=
  ∀ n, P5419208344945735841.a n = A036605 n

end A036605

/-! ## A036605.P12510201867879310225

`A027976(n+1)-(A104221(n+1)+A004695(n))`
-/

namespace A036605.P12510201867879310225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027976 (n + 1) - (A104221 (n + 1) + A004695 n)

end

end A036605.P12510201867879310225

namespace A036605

/-- `A027976(n+1)-(A104221(n+1)+A004695(n))` -/
def P12510201867879310225.Spec : Prop :=
  ∀ n, P12510201867879310225.a n = A036605 n

end A036605

/-!
# A036607: Triangle of coefficients of generating function of 5-ary rooted trees of height at most n.

The programs for A036607, there is no canonical definition to state claims against.
-/

/-! ## A036607.P12417461303359959337

`A170974(A016813(n))%A144619(A017818(n))`
-/

namespace A036607.P12417461303359959337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170974 (A016813 n).toNat) (A144619 (A017818 n).toNat)

end

end A036607.P12417461303359959337

/-! ## A036607.P5389475439059384337

`A257531(A051988(n+1))+A170974(A016813(n))`
-/

namespace A036607.P5389475439059384337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257531 (A051988 (n + 1)).toNat + A170974 (A016813 n).toNat

end

end A036607.P5389475439059384337

/-! ## A036607.P6812099857049000274

`A032742(A257551(n+1))*A170974(A016813(n))`
-/

namespace A036607.P6812099857049000274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A257551 (n + 1)).toNat * A170974 (A016813 n).toNat

end

end A036607.P6812099857049000274

/-! ## A036607.P283056282910572349

`A170974(A016813(n))+A000038(A008778(n))`
-/

namespace A036607.P283056282910572349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170974 (A016813 n).toNat + A000038 (A008778 n).toNat

end

end A036607.P283056282910572349

/-!
# A036609: Number of 4-ary rooted trees with n nodes and height at most 4.

The programs for A036609, there is no canonical definition to state claims against.
-/

/-! ## A036609.P16127972979857128516

`A036606(n+31)`
-/

namespace A036609.P16127972979857128516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036606 (n + 31)

end

end A036609.P16127972979857128516

/-! ## A036609.P12374592085031219298

`A036610(n)-A036629(n)`
-/

namespace A036609.P12374592085031219298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036610 n - A036629 n

end

end A036609.P12374592085031219298

/-! ## A036609.P12658032558295992304

`A036611(n)-(A036630(n)+A036629(n))`
-/

namespace A036609.P12658032558295992304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036611 n - (A036630 n + A036629 n)

end

end A036609.P12658032558295992304

/-! ## A036609.P5691199070451748410

`A036611(n)-A036630(n)-A036629(A028310(n))`
-/

namespace A036609.P5691199070451748410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036611 n - A036630 n - A036629 (A028310 n).toNat

end

end A036609.P5691199070451748410

/-! ## A036609.P6835806436915946149

`A036612(n)-(A036631(n)+A036630(n))-A036629(n)`
-/

namespace A036609.P6835806436915946149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036612 n - (A036631 n + A036630 n) - A036629 n

end

end A036609.P6835806436915946149

/-!
# A036610: Number of 4-ary rooted trees with n nodes and height at most 5.

The programs for A036610, there is no canonical definition to state claims against.
-/

/-! ## A036610.P8994679754173120864

`A036611(n)-A036630(n)`
-/

namespace A036610.P8994679754173120864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036611 n - A036630 n

end

end A036610.P8994679754173120864

/-! ## A036610.P14991152829894290652

`A036611(n)+A036630(n)*A057428(n)`
-/

namespace A036610.P14991152829894290652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036611 n + A036630 n * A057428 n

end

end A036610.P14991152829894290652

/-! ## A036610.P1626842601494684195

`A036612(n)-(A036631(n)+A036630(n))`
-/

namespace A036610.P1626842601494684195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036612 n - (A036631 n + A036630 n)

end

end A036610.P1626842601494684195

/-! ## A036610.P7440757490197072506

`A036611(n)+-A036630(n)%A000244(n)`
-/

namespace A036610.P7440757490197072506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036611 n + Int.tmod (-A036630 n) (A000244 n)

end

end A036610.P7440757490197072506

/-! ## A036610.P12384599617986893941

`A036629(n)+A036609(n)`
-/

namespace A036610.P12384599617986893941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036629 n + A036609 n

end

end A036610.P12384599617986893941

/-!
# A036611: Number of 4-ary rooted trees with n nodes and height at most 6.

The programs for A036611, there is no canonical definition to state claims against.
-/

/-! ## A036611.P10592047966589368468

`A036630(n)+A036610(n)`
-/

namespace A036611.P10592047966589368468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036630 n + A036610 n

end

end A036611.P10592047966589368468

/-! ## A036611.P6955242251355714243

`A036612(n)-A036631(n)`
-/

namespace A036611.P6955242251355714243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036612 n - A036631 n

end

end A036611.P6955242251355714243

/-! ## A036611.P14028145457085582728

`A036609(n)+A036630(n)+A036629(n)`
-/

namespace A036611.P14028145457085582728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036609 n + (A036630 n + A036629 n)

end

end A036611.P14028145457085582728

/-! ## A036611.P2271410400153933311

`A036613(n)-(A036632(n)+A036631(n))`
-/

namespace A036611.P2271410400153933311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036613 n - (A036632 n + A036631 n)

end

end A036611.P2271410400153933311

/-! ## A036611.P10960892107515822425

`A036613(n)-A036632(n)-A036631(A028310(n))`
-/

namespace A036611.P10960892107515822425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036613 n - A036632 n - A036631 (A028310 n).toNat

end

end A036611.P10960892107515822425

/-!
# A036612: Number of 4-ary rooted trees with n nodes and height at most 7.

The programs for A036612, there is no canonical definition to state claims against.
-/

/-! ## A036612.P1918425009959154486

`A036631(n)+A036611(n)`
-/

namespace A036612.P1918425009959154486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036631 n + A036611 n

end

end A036612.P1918425009959154486

/-! ## A036612.P6920051805767495613

`A036610(n)+A036631(n)+A036630(n)`
-/

namespace A036612.P6920051805767495613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036610 n + (A036631 n + A036630 n)

end

end A036612.P6920051805767495613

/-! ## A036612.P14052672988072911134

`A036631(n)+A036609(n)+A036630(n)+A036629(n)`
-/

namespace A036612.P14052672988072911134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036631 n + (A036609 n + (A036630 n + A036629 n))

end

end A036612.P14052672988072911134

/-! ## A036612.P10069711164886316469

`A036613(n)-A036632(n)`
-/

namespace A036612.P10069711164886316469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036613 n - A036632 n

end

end A036612.P10069711164886316469

/-! ## A036612.P2245708193975989827

`A036614(n)-(A036633(n)+A036632(n))`
-/

namespace A036612.P2245708193975989827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036614 n - (A036633 n + A036632 n)

end

end A036612.P2245708193975989827

/-!
# A036613: Number of 4-ary rooted trees with n nodes and height at most 8.

The programs for A036613, there is no canonical definition to state claims against.
-/

/-! ## A036613.P15230022559354024918

`A036632(n)+A036612(n)`
-/

namespace A036613.P15230022559354024918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036632 n + A036612 n

end

end A036613.P15230022559354024918

/-! ## A036613.P6240033149014887751

`A036614(n)-A036633(n)`
-/

namespace A036613.P6240033149014887751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036614 n - A036633 n

end

end A036613.P6240033149014887751

/-! ## A036613.P7931533698416852793

`A036611(n)+A036632(n)+A036631(n)`
-/

namespace A036613.P7931533698416852793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036611 n + (A036632 n + A036631 n)

end

end A036613.P7931533698416852793

/-! ## A036613.P17943262793247070867

`A036632(n)+A036610(n)+A036631(n)+A036630(n)`
-/

namespace A036613.P17943262793247070867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036632 n + (A036610 n + (A036631 n + A036630 n))

end

end A036613.P17943262793247070867

/-! ## A036613.P8728406271318072233

`A028310(A036614(n))-A036640(n)`
-/

namespace A036613.P8728406271318072233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A036614 n).toNat - A036640 n

end

end A036613.P8728406271318072233

/-!
# A036614: Number of 4-ary rooted trees with n nodes and height at most 9.

The programs for A036614, there is no canonical definition to state claims against.
-/

/-! ## A036614.P13178663694307341070

`A036633(n)+A036613(n)`
-/

namespace A036614.P13178663694307341070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036633 n + A036613 n

end

end A036614.P13178663694307341070

/-! ## A036614.P2030042935211956748

`A036612(n)+A036633(n)+A036632(n)`
-/

namespace A036614.P2030042935211956748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036612 n + (A036633 n + A036632 n)

end

end A036614.P2030042935211956748

/-! ## A036614.P1411601839656513136

`A036633(n)+A036611(n)+A036632(n)+A036631(n)`
-/

namespace A036614.P1411601839656513136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036633 n + (A036611 n + (A036632 n + A036631 n))

end

end A036614.P1411601839656513136

/-! ## A036614.P319567050816628395

`A028310(A036640(n)+A036613(n))`
-/

namespace A036614.P319567050816628395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A036640 n + A036613 n).toNat

end

end A036614.P319567050816628395

/-! ## A036614.P8298265054174797560

`A028310(A036647(n)+A036613(n))`
-/

namespace A036614.P8298265054174797560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A036647 n + A036613 n).toNat

end

end A036614.P8298265054174797560

/-!
# A036615: Number of 5-ary rooted trees with n nodes and height at most 4.

The programs for A036615, there is no canonical definition to state claims against.
-/

/-! ## A036615.P17501236733340614253

`A036607(n+42)`
-/

namespace A036615.P17501236733340614253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036607 (n + 42)

end

end A036615.P17501236733340614253

/-! ## A036615.P8440460383457394617

`A036616(n)-A036636(n)`
-/

namespace A036615.P8440460383457394617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036616 n - A036636 n

end

end A036615.P8440460383457394617

/-! ## A036615.P11135630266307156837

`A036617(n)-(A036637(n)+A036636(n))`
-/

namespace A036615.P11135630266307156837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036617 n - (A036637 n + A036636 n)

end

end A036615.P11135630266307156837

/-! ## A036615.P14561625653654535116

`A036617(n)-A036637(n)-A036636(A254667(n))`
-/

namespace A036615.P14561625653654535116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036617 n - A036637 n - A036636 (A254667 n).toNat

end

end A036615.P14561625653654535116

/-! ## A036615.P13884158896188691978

`A036617(n)-A036637(n)-A036636(A001281(2*n))`
-/

namespace A036615.P13884158896188691978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036617 n - A036637 n - A036636 (A001281 (2 * n)).toNat

end

end A036615.P13884158896188691978

/-! ## A036615.P1324551828687221968

`A036617(n)-A036637(n)-A036636(A110654(2*n))`
-/

namespace A036615.P1324551828687221968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036617 n - A036637 n - A036636 (A110654 (2 * n)).toNat

end

end A036615.P1324551828687221968

/-!
# A036616: Number of 5-ary rooted trees with n nodes and height at most 5.

The programs for A036616, there is no canonical definition to state claims against.
-/

/-! ## A036616.P12530962186677178966

`A036617(n)-A036637(n)`
-/

namespace A036616.P12530962186677178966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036617 n - A036637 n

end

end A036616.P12530962186677178966

/-! ## A036616.P16817724959375323907

`A036617(n)+A036637(n)*A057428(n)`
-/

namespace A036616.P16817724959375323907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036617 n + A036637 n * A057428 n

end

end A036616.P16817724959375323907

/-! ## A036616.P12731053411092220575

`A036617(n)+A036637(n)*A134824(n)`
-/

namespace A036616.P12731053411092220575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036617 n + A036637 n * A134824 n

end

end A036616.P12731053411092220575

/-! ## A036616.P11193231574850209718

`A036617(n)+A036637(n)*A373201(3*(n+1))`
-/

namespace A036616.P11193231574850209718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036617 n + A036637 n * A373201 (3 * (n + 1))

end

end A036616.P11193231574850209718

/-! ## A036616.P93724951894721412

`A036636(n)+A036615(n)`
-/

namespace A036616.P93724951894721412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036636 n + A036615 n

end

end A036616.P93724951894721412

/-!
# A036617: Number of 5-ary rooted trees with n nodes and height at most 6.

The programs for A036617, there is no canonical definition to state claims against.
-/

/-! ## A036617.P5544413156404083383

`A036637(n)+A036616(n)`
-/

namespace A036617.P5544413156404083383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036637 n + A036616 n

end

end A036617.P5544413156404083383

/-! ## A036617.P3677213840728911484

`A036616(n)-A036637(n)*A134824(n)`
-/

namespace A036617.P3677213840728911484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036616 n - A036637 n * A134824 n

end

end A036617.P3677213840728911484

/-! ## A036617.P5736222516178320158

`A036616(n)-A036637(n)*A260196(n)`
-/

namespace A036617.P5736222516178320158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036616 n - A036637 n * A260196 n

end

end A036617.P5736222516178320158

/-! ## A036617.P15331615693299059882

`A036615(n)+A036637(n)+A036636(n)`
-/

namespace A036617.P15331615693299059882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036615 n + (A036637 n + A036636 n)

end

end A036617.P15331615693299059882

/-! ## A036617.P2899071149198612568

`A036618(n)-A036638(n)`
-/

namespace A036617.P2899071149198612568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036618 n - A036638 n

end

end A036617.P2899071149198612568

/-!
# A036618: Number of 5-ary rooted trees with n nodes and height at most 7.

The programs for A036618, there is no canonical definition to state claims against.
-/

/-! ## A036618.P18046359174173159691

`A036638(n)+A036617(n)`
-/

namespace A036618.P18046359174173159691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036638 n + A036617 n

end

end A036618.P18046359174173159691

/-! ## A036618.P4304655180475774122

`A036619(n)-A036639(n)`
-/

namespace A036618.P4304655180475774122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036619 n - A036639 n

end

end A036618.P4304655180475774122

/-! ## A036618.P12392987675414474136

`A036616(n)+A036638(n)+A036637(n)`
-/

namespace A036618.P12392987675414474136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036616 n + (A036638 n + A036637 n)

end

end A036618.P12392987675414474136

/-! ## A036618.P3436606915588055457

`A036620(n)-(A036640(n)+A036639(n))`
-/

namespace A036618.P3436606915588055457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036620 n - (A036640 n + A036639 n)

end

end A036618.P3436606915588055457

/-! ## A036618.P16201666435179402214

`A036638(n)+A036615(n)+A036637(n)+A036636(n)`
-/

namespace A036618.P16201666435179402214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036638 n + (A036615 n + (A036637 n + A036636 n))

end

end A036618.P16201666435179402214

/-!
# A036619: Number of 5-ary rooted trees with n nodes and height at most 8.

The programs for A036619, there is no canonical definition to state claims against.
-/

/-! ## A036619.P17668208766120745557

`A036639(n)+A036618(n)`
-/

namespace A036619.P17668208766120745557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036639 n + A036618 n

end

end A036619.P17668208766120745557

/-! ## A036619.P17346044679495845200

`A036620(n)-A036640(n)`
-/

namespace A036619.P17346044679495845200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036620 n - A036640 n

end

end A036619.P17346044679495845200

/-! ## A036619.P16402309058016439950

`A036617(n)+A036639(n)+A036638(n)`
-/

namespace A036619.P16402309058016439950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036617 n + (A036639 n + A036638 n)

end

end A036619.P16402309058016439950

/-! ## A036619.P12333127634368226850

`A036639(n)+A036616(n)+A036638(n)+A036637(n)`
-/

namespace A036619.P12333127634368226850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036639 n + (A036616 n + (A036638 n + A036637 n))

end

end A036619.P12333127634368226850

/-! ## A036619.P16814222740778653402

`A036620(n)-A036647(A055647(n))`
-/

namespace A036619.P16814222740778653402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036620 n - A036647 (A055647 n).toNat

end

end A036619.P16814222740778653402

/-!
# A036620: Number of 5-ary rooted trees with n nodes and height at most 9.

The programs for A036620, there is no canonical definition to state claims against.
-/

/-! ## A036620.P2586033380671555206

`A036640(n)+A036619(n)`
-/

namespace A036620.P2586033380671555206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036640 n + A036619 n

end

end A036620.P2586033380671555206

/-! ## A036620.P8459072502253377404

`A036618(n)+A036640(n)+A036639(n)`
-/

namespace A036620.P8459072502253377404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036618 n + (A036640 n + A036639 n)

end

end A036620.P8459072502253377404

/-! ## A036620.P15767427095474799891

`A036647(n)+A036619(A055647(n))`
-/

namespace A036620.P15767427095474799891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036647 n + A036619 (A055647 n).toNat

end

end A036620.P15767427095474799891

/-! ## A036620.P829676202936313250

`A036647(n)+A036619(A057846(n))`
-/

namespace A036620.P829676202936313250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036647 n + A036619 (A057846 n).toNat

end

end A036620.P829676202936313250

/-! ## A036620.P5290964116603133433

`A036633(A004896(n+1))+A036619(n)`
-/

namespace A036620.P5290964116603133433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036633 (A004896 (n + 1)).toNat + A036619 n

end

end A036620.P5290964116603133433

/-!
# A036621: Number of 6-ary rooted trees with n nodes and height at most 4.

The programs for A036621, there is no canonical definition to state claims against.
-/

/-! ## A036621.P14061061703016520500

`A036608(n+55)`
-/

namespace A036621.P14061061703016520500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036608 (n + 55)

end

end A036621.P14061061703016520500

/-! ## A036621.P7487045027454999385

`A036622(n)-A036643(n)`
-/

namespace A036621.P7487045027454999385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036622 n - A036643 n

end

end A036621.P7487045027454999385

/-! ## A036621.P10481653227364413142

`A036622(n)+A036643(n)*A057428(n)`
-/

namespace A036621.P10481653227364413142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036622 n + A036643 n * A057428 n

end

end A036621.P10481653227364413142

/-! ## A036621.P10621691729727292568

`A036623(n)-(A036644(n)+A036643(n))`
-/

namespace A036621.P10621691729727292568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036623 n - (A036644 n + A036643 n)

end

end A036621.P10621691729727292568

/-! ## A036621.P10154904129155101285

`A036623(n)-A036644(n)-A036643(A028310(n))`
-/

namespace A036621.P10154904129155101285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036623 n - A036644 n - A036643 (A028310 n).toNat

end

end A036621.P10154904129155101285

/-!
# A036622: Number of 6-ary rooted trees with n nodes and height at most 5.

The programs for A036622, there is no canonical definition to state claims against.
-/

/-! ## A036622.P4443388793443079966

`A036643(n)+A036621(n)`
-/

namespace A036622.P4443388793443079966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036643 n + A036621 n

end

end A036622.P4443388793443079966

/-! ## A036622.P10160893022531897347

`A036621(n)-A036643(n)*A057428(n)`
-/

namespace A036622.P10160893022531897347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036621 n - A036643 n * A057428 n

end

end A036622.P10160893022531897347

/-! ## A036622.P11864083332001251364

`A036623(n)-A036644(n)`
-/

namespace A036622.P11864083332001251364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036623 n - A036644 n

end

end A036622.P11864083332001251364

/-! ## A036622.P6215785693326543875

`A036624(n)-(A036645(n)+A036644(n))`
-/

namespace A036622.P6215785693326543875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036624 n - (A036645 n + A036644 n)

end

end A036622.P6215785693326543875

/-! ## A036622.P17716463757050111341

`A036623(n)+A036644(n)*A057428(n)`
-/

namespace A036622.P17716463757050111341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036623 n + A036644 n * A057428 n

end

end A036622.P17716463757050111341

/-!
# A036623: Number of 6-ary rooted trees with n nodes and height at most 6.

The programs for A036623, there is no canonical definition to state claims against.
-/

/-! ## A036623.P17046485493943056612

`A036644(n)+A036622(n)`
-/

namespace A036623.P17046485493943056612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036644 n + A036622 n

end

end A036623.P17046485493943056612

/-! ## A036623.P5579587945689840232

`A036624(n)-A036645(n)`
-/

namespace A036623.P5579587945689840232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036624 n - A036645 n

end

end A036623.P5579587945689840232

/-! ## A036623.P10091085804142061804

`A036621(n)+A036644(n)+A036643(n)`
-/

namespace A036623.P10091085804142061804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036621 n + (A036644 n + A036643 n)

end

end A036623.P10091085804142061804

/-! ## A036623.P10645860992123286519

`A036625(n)-(A036646(n)+A036645(n))`
-/

namespace A036623.P10645860992123286519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036625 n - (A036646 n + A036645 n)

end

end A036623.P10645860992123286519

/-! ## A036623.P11367851258447217068

`A036622(n)-A036644(n)*A057428(n)`
-/

namespace A036623.P11367851258447217068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036622 n - A036644 n * A057428 n

end

end A036623.P11367851258447217068

/-!
# A036624: Number of 6-ary rooted trees with n nodes and height at most 7.

The programs for A036624, there is no canonical definition to state claims against.
-/

/-! ## A036624.P9756737285799320399

`A036645(n)+A036623(n)`
-/

namespace A036624.P9756737285799320399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036645 n + A036623 n

end

end A036624.P9756737285799320399

/-! ## A036624.P7362163821775648398

`A036625(n)-A036646(n)`
-/

namespace A036624.P7362163821775648398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036625 n - A036646 n

end

end A036624.P7362163821775648398

/-! ## A036624.P12894709609223678654

`A036622(n)+A036645(n)+A036644(n)`
-/

namespace A036624.P12894709609223678654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036622 n + (A036645 n + A036644 n)

end

end A036624.P12894709609223678654

/-! ## A036624.P13714671835212630036

`A036626(n)-(A036647(n)+A036646(n))`
-/

namespace A036624.P13714671835212630036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036626 n - (A036647 n + A036646 n)

end

end A036624.P13714671835212630036

/-! ## A036624.P2892334364528884560

`A036623(n)-(A011745(n)-A036645(n))`
-/

namespace A036624.P2892334364528884560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036623 n - (A011745 n - A036645 n)

end

end A036624.P2892334364528884560

/-!
# A036625: Number of 6-ary rooted trees with n nodes and height at most 8.

The programs for A036625, there is no canonical definition to state claims against.
-/

/-! ## A036625.P8727879553635832070

`A036646(n)+A036624(n)`
-/

namespace A036625.P8727879553635832070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036646 n + A036624 n

end

end A036625.P8727879553635832070

/-! ## A036625.P1943291420477605338

`A036626(n)-A036647(n)`
-/

namespace A036625.P1943291420477605338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036626 n - A036647 n

end

end A036625.P1943291420477605338

/-! ## A036625.P15666459789109399944

`A036623(n)+A036646(n)+A036645(n)`
-/

namespace A036625.P15666459789109399944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036623 n + (A036646 n + A036645 n)

end

end A036625.P15666459789109399944

/-! ## A036625.P2871852385222043385

`A036624(n)-(A011745(n)-A036646(n))`
-/

namespace A036625.P2871852385222043385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036624 n - (A011745 n - A036646 n)

end

end A036625.P2871852385222043385

/-! ## A036625.P13079933153523176813

`A036624(n)-(A185284(n)-A036646(n))`
-/

namespace A036625.P13079933153523176813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036624 n - (A185284 n - A036646 n)

end

end A036625.P13079933153523176813

/-!
# A036626: Number of 6-ary rooted trees with n nodes and height at most 9.

The programs for A036626, there is no canonical definition to state claims against.
-/

/-! ## A036626.P1758868268373155632

`A036647(n)+A036625(n)`
-/

namespace A036626.P1758868268373155632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036647 n + A036625 n

end

end A036626.P1758868268373155632

/-! ## A036626.P12906775676574705673

`A036624(n)+A036647(n)+A036646(n)`
-/

namespace A036626.P12906775676574705673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036624 n + (A036647 n + A036646 n)

end

end A036626.P12906775676574705673

/-! ## A036626.P6940425449747430794

`A036625(n)-(A011745(n)-A036647(n))`
-/

namespace A036626.P6940425449747430794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036625 n - (A011745 n - A036647 n)

end

end A036626.P6940425449747430794

/-! ## A036626.P6890701121142988622

`A036647(n)+A036623(n)+A036646(n)+A036645(n)`
-/

namespace A036626.P6890701121142988622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036647 n + (A036623 n + (A036646 n + A036645 n))

end

end A036626.P6890701121142988622

/-! ## A036626.P7690676955314294278

`A028310(A036633(n)+A036625(n))`
-/

namespace A036626.P7690676955314294278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A036633 n + A036625 n).toNat

end

end A036626.P7690676955314294278

/-!
# A036627: Number of 4-ary rooted trees with n nodes and height exactly 3.

The programs for A036627, there is no canonical definition to state claims against.
-/

/-! ## A036627.P10606282916974494248

`round(A036606(n+9)-acot(A036606(n+6)))`
-/

namespace A036627.P10606282916974494248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036606 (n + 9) : ℝ) - SequenceMachineLib.acot (A036606 (n + 6) : ℝ))

end

end A036627.P10606282916974494248

/-!
# A036628: Number of 4-ary rooted trees with n nodes and height exactly 4.

The programs for A036628, there is no canonical definition to state claims against.
-/

/-! ## A036628.P11283218803724110182

`A010434(A023426(n))`
-/

namespace A036628.P11283218803724110182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010434 (A023426 n).toNat

end

end A036628.P11283218803724110182

/-! ## A036628.P17233800562682909991

`A259361(A300184(∑[n]))`
-/

namespace A036628.P17233800562682909991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A300184 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A036628.P17233800562682909991

/-! ## A036628.P17212789212222521697

`A000196(A252696(n))-n`
-/

namespace A036628.P17212789212222521697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A252696 n).toNat - (n : ℤ)

end

end A036628.P17212789212222521697

/-! ## A036628.P18148283650883977086

`A259361(A211279(n))-n`
-/

namespace A036628.P18148283650883977086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A211279 n).toNat - (n : ℤ)

end

end A036628.P18148283650883977086

/-! ## A036628.P9236771947625963409

`∑[A111660(Δ[A036635(n)])]`
-/

namespace A036628.P9236771947625963409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036635 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036628.P9236771947625963409

/-!
# A036629: Number of 4-ary rooted trees with n nodes and height exactly 5.

The programs for A036629, there is no canonical definition to state claims against.
-/

/-! ## A036629.P8298378626790715482

`A036610(n)-A036609(n)`
-/

namespace A036629.P8298378626790715482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036610 n - A036609 n

end

end A036629.P8298378626790715482

/-! ## A036629.P14281591847511637781

`A036611(n)-(A036630(n)+A036609(n))`
-/

namespace A036629.P14281591847511637781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036611 n - (A036630 n + A036609 n)

end

end A036629.P14281591847511637781

/-! ## A036629.P6071771960764657564

`A036611(A028310(n))%(A036630(n)+A036609(n))`
-/

namespace A036629.P6071771960764657564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036611 (A028310 n).toNat) (A036630 n + A036609 n)

end

end A036629.P6071771960764657564

/-! ## A036629.P1254259874272886246

`A036612(n)-(A036631(n)+A036630(n))-A036609(n)`
-/

namespace A036629.P1254259874272886246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036612 n - (A036631 n + A036630 n) - A036609 n

end

end A036629.P1254259874272886246

/-! ## A036629.P11140252349276283083

`A000027(A036611(n)-A036630(n))-A036609(n)`
-/

namespace A036629.P11140252349276283083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A036611 n - A036630 n).toNat - A036609 n

end

end A036629.P11140252349276283083

/-!
# A036630: Number of 4-ary rooted trees with n nodes and height exactly 6.

The programs for A036630, there is no canonical definition to state claims against.
-/

/-! ## A036630.P1374003743611943850

`A036611(n)-A036610(n)`
-/

namespace A036630.P1374003743611943850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036611 n - A036610 n

end

end A036630.P1374003743611943850

/-! ## A036630.P15814091248784334259

`A036612(n)-(A036631(n)+A036610(n))`
-/

namespace A036630.P15814091248784334259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036612 n - (A036631 n + A036610 n)

end

end A036630.P15814091248784334259

/-! ## A036630.P18261675522296404710

`A036612(n)-A036631(n)-A036610(A028310(n))`
-/

namespace A036630.P18261675522296404710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036612 n - A036631 n - A036610 (A028310 n).toNat

end

end A036630.P18261675522296404710

/-! ## A036630.P8261873885770039299

`A036611(n)-(A036629(n)+A036609(n))`
-/

namespace A036630.P8261873885770039299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036611 n - (A036629 n + A036609 n)

end

end A036630.P8261873885770039299

/-! ## A036630.P11969978680782700664

`A036613(n)-(A036632(n)+A036631(n))-A036610(n)`
-/

namespace A036630.P11969978680782700664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036613 n - (A036632 n + A036631 n) - A036610 n

end

end A036630.P11969978680782700664

/-!
# A036631: Number of 4-ary rooted trees with n nodes and height exactly 7.

The programs for A036631, there is no canonical definition to state claims against.
-/

/-! ## A036631.P10495003236341772918

`A036612(n)-A036611(n)`
-/

namespace A036631.P10495003236341772918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036612 n - A036611 n

end

end A036631.P10495003236341772918

/-! ## A036631.P6443235033711233679

`A036612(n)-(A036630(n)+A036610(n))`
-/

namespace A036631.P6443235033711233679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036612 n - (A036630 n + A036610 n)

end

end A036631.P6443235033711233679

/-! ## A036631.P8357461953796044856

`A036612(n)-(A036609(n)+A036630(n)+A036629(n))`
-/

namespace A036631.P8357461953796044856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036612 n - (A036609 n + (A036630 n + A036629 n))

end

end A036631.P8357461953796044856

/-! ## A036631.P18220052974422698725

`A036613(n)-(A036632(n)+A036611(n))`
-/

namespace A036631.P18220052974422698725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036613 n - (A036632 n + A036611 n)

end

end A036631.P18220052974422698725

/-! ## A036631.P13000420110231570470

`A036613(n)-A036632(n)-A036611(A028310(n))`
-/

namespace A036631.P13000420110231570470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036613 n - A036632 n - A036611 (A028310 n).toNat

end

end A036631.P13000420110231570470

/-!
# A036632: Number of 4-ary rooted trees with n nodes and height exactly 8.

The programs for A036632, there is no canonical definition to state claims against.
-/

/-! ## A036632.P10329059246344122334

`A036613(n)-A036612(n)`
-/

namespace A036632.P10329059246344122334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036613 n - A036612 n

end

end A036632.P10329059246344122334

/-! ## A036632.P16518020341373661260

`A036613(n)-(A036631(n)+A036611(n))`
-/

namespace A036632.P16518020341373661260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036613 n - (A036631 n + A036611 n)

end

end A036632.P16518020341373661260

/-! ## A036632.P1275023446016120227

`A036614(n)-(A036633(n)+A036612(n))`
-/

namespace A036632.P1275023446016120227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036614 n - (A036633 n + A036612 n)

end

end A036632.P1275023446016120227

/-! ## A036632.P7932875829621528850

`A036614(n)-A036633(n)-A036612(A028310(n))`
-/

namespace A036632.P7932875829621528850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036614 n - A036633 n - A036612 (A028310 n).toNat

end

end A036632.P7932875829621528850

/-! ## A036632.P17921492119972206454

`A036613(n)-(A036610(n)+A036631(n)+A036630(n))`
-/

namespace A036632.P17921492119972206454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036613 n - (A036610 n + (A036631 n + A036630 n))

end

end A036632.P17921492119972206454

/-!
# A036633: Number of 4-ary rooted trees with n nodes and height exactly 9.

The programs for A036633, there is no canonical definition to state claims against.
-/

/-! ## A036633.P12386929478071782011

`A036614(n)-A036613(n)`
-/

namespace A036633.P12386929478071782011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036614 n - A036613 n

end

end A036633.P12386929478071782011

/-! ## A036633.P9830874436723488409

`A036614(A028310(n))%A036613(n)`
-/

namespace A036633.P9830874436723488409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036614 (A028310 n).toNat) (A036613 n)

end

end A036633.P9830874436723488409

/-! ## A036633.P18261746342741217051

`A036614(A023443(n+1))%A036613(n)`
-/

namespace A036633.P18261746342741217051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036614 (A023443 (n + 1)).toNat) (A036613 n)

end

end A036633.P18261746342741217051

/-! ## A036633.P8891225559770004966

`A036614(n)-(A036632(n)+A036612(n))`
-/

namespace A036633.P8891225559770004966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036614 n - (A036632 n + A036612 n)

end

end A036633.P8891225559770004966

/-! ## A036633.P16148465836382345923

`(A036614(n)%A036613(n))%A000108(n)`
-/

namespace A036633.P16148465836382345923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A036614 n) (A036613 n)) (A000108 n)

end

end A036633.P16148465836382345923

/-!
# A036635: Number of 5-ary rooted trees with n nodes and height exactly 4.

The programs for A036635, there is no canonical definition to state claims against.
-/

/-! ## A036635.P6150435564759469064

`∑[A319642(n)-A000196(A126646(n))]`
-/

namespace A036635.P6150435564759469064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n - A000196 (A126646 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036635.P6150435564759469064

/-! ## A036635.P15834007613936571963

`∩[A000712(n), A103929(n)]-A000098(n)`
-/

namespace A036635.P15834007613936571963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103929 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A000098 n

end

end A036635.P15834007613936571963

/-! ## A036635.P7931541880027504782

`∑[A325719(A342162(n))]`
-/

namespace A036635.P7931541880027504782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325719 (A342162 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036635.P7931541880027504782

/-! ## A036635.P12069903334468811192

`A227568(A224291(n+1))`
-/

namespace A036635.P12069903334468811192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A224291 (n + 1)).toNat

end

end A036635.P12069903334468811192

/-! ## A036635.P9846685796253721133

`∑[∑[A108611(A182522(n))]]`
-/

namespace A036635.P9846685796253721133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A182522 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036635.P9846685796253721133

/-!
# A036636: Number of 5-ary rooted trees with n nodes and height exactly 5.

The programs for A036636, there is no canonical definition to state claims against.
-/

/-! ## A036636.P15587028868878114951

`A036616(n)-A036615(n)`
-/

namespace A036636.P15587028868878114951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036616 n - A036615 n

end

end A036636.P15587028868878114951

/-! ## A036636.P9904724327355778481

`A036617(n)-(A036637(n)+A036615(n))`
-/

namespace A036636.P9904724327355778481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036617 n - (A036637 n + A036615 n)

end

end A036636.P9904724327355778481

/-! ## A036636.P17279312080730219592

`A036617(n)-A036637(n)-A036615(A254667(n))`
-/

namespace A036636.P17279312080730219592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036617 n - A036637 n - A036615 (A254667 n).toNat

end

end A036636.P17279312080730219592

/-! ## A036636.P14079874465522601669

`A036617(n)-A036637(n)-A036615(A001281(2*n))`
-/

namespace A036636.P14079874465522601669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036617 n - A036637 n - A036615 (A001281 (2 * n)).toNat

end

end A036636.P14079874465522601669

/-! ## A036636.P13922508826259253017

`A036617(n)-A036637(n)-A036615(A110654(2*n))`
-/

namespace A036636.P13922508826259253017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036617 n - A036637 n - A036615 (A110654 (2 * n)).toNat

end

end A036636.P13922508826259253017

/-! ## A036636.P1795184582523627073

`A036617(n)-A036637(n)-A036615(A273943(2*n))`
-/

namespace A036636.P1795184582523627073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036617 n - A036637 n - A036615 (A273943 (2 * n)).toNat

end

end A036636.P1795184582523627073

/-!
# A036637: Number of 5-ary rooted trees with n nodes and height exactly 6.

The programs for A036637, there is no canonical definition to state claims against.
-/

/-! ## A036637.P10402502159447114973

`A036617(n)-A036616(n)`
-/

namespace A036637.P10402502159447114973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036617 n - A036616 n

end

end A036637.P10402502159447114973

/-! ## A036637.P17837711544432321396

`A036617(n)+A036616(n)*A260196(n+2)`
-/

namespace A036637.P17837711544432321396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036617 n + A036616 n * A260196 (n + 2)

end

end A036637.P17837711544432321396

/-! ## A036637.P4492144424115314756

`A036617(n)-(A036636(n)+A036615(n))`
-/

namespace A036637.P4492144424115314756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036617 n - (A036636 n + A036615 n)

end

end A036637.P4492144424115314756

/-! ## A036637.P7202922104332858391

`A036618(n)-(A036638(n)+A036616(n))`
-/

namespace A036637.P7202922104332858391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036618 n - (A036638 n + A036616 n)

end

end A036637.P7202922104332858391

/-! ## A036637.P559329877571051146

`A036619(n)-(A036639(n)+A036638(n))-A036616(n)`
-/

namespace A036637.P559329877571051146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036619 n - (A036639 n + A036638 n) - A036616 n

end

end A036637.P559329877571051146

/-!
# A036638: Number of 5-ary rooted trees with n nodes and height exactly 7.

The programs for A036638, there is no canonical definition to state claims against.
-/

/-! ## A036638.P9129243985183045164

`A036618(n)-A036617(n)`
-/

namespace A036638.P9129243985183045164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036618 n - A036617 n

end

end A036638.P9129243985183045164

/-! ## A036638.P14259242806318031406

`A036618(n)-(A036637(n)+A036616(n))`
-/

namespace A036638.P14259242806318031406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036618 n - (A036637 n + A036616 n)

end

end A036638.P14259242806318031406

/-! ## A036638.P5036666733204025632

`A036618(n)-(A036615(n)+A036637(n)+A036636(n))`
-/

namespace A036638.P5036666733204025632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036618 n - (A036615 n + (A036637 n + A036636 n))

end

end A036638.P5036666733204025632

/-! ## A036638.P9706365605946647835

`A036618(n)-(A036616(n)-A036637(n)*A134824(n))`
-/

namespace A036638.P9706365605946647835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036618 n - (A036616 n - A036637 n * A134824 n)

end

end A036638.P9706365605946647835

/-! ## A036638.P12507206673103116128

`A036618(n)-(A036616(n)-A036637(n)*A260196(n))`
-/

namespace A036638.P12507206673103116128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036618 n - (A036616 n - A036637 n * A260196 n)

end

end A036638.P12507206673103116128

/-!
# A036639: Number of 5-ary rooted trees with n nodes and height exactly 8.

The programs for A036639, there is no canonical definition to state claims against.
-/

/-! ## A036639.P7160858934662373711

`A036619(n)-A036618(n)`
-/

namespace A036639.P7160858934662373711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036619 n - A036618 n

end

end A036639.P7160858934662373711

/-! ## A036639.P14237094306019926477

`A036619(n)-(A036638(n)+A036617(n))`
-/

namespace A036639.P14237094306019926477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036619 n - (A036638 n + A036617 n)

end

end A036639.P14237094306019926477

/-! ## A036639.P13980307753628077932

`A036620(n)-(A036640(n)+A036618(n))`
-/

namespace A036639.P13980307753628077932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036620 n - (A036640 n + A036618 n)

end

end A036639.P13980307753628077932

/-! ## A036639.P10902721934917690688

`A036619(A229621(n+1))%A036618(n)`
-/

namespace A036639.P10902721934917690688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036619 (A229621 (n + 1)).toNat) (A036618 n)

end

end A036639.P10902721934917690688

/-! ## A036639.P10742668903630427529

`A000027(A036620(n)-A036640(n))-A036618(n)`
-/

namespace A036639.P10742668903630427529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A036620 n - A036640 n).toNat - A036618 n

end

end A036639.P10742668903630427529

/-!
# A036640: Number of 5-ary rooted trees with n nodes and height exactly 9.

The programs for A036640, there is no canonical definition to state claims against.
-/

/-! ## A036640.P14208678892029249493

`A036620(n)-A036619(n)`
-/

namespace A036640.P14208678892029249493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036620 n - A036619 n

end

end A036640.P14208678892029249493

/-! ## A036640.P12787066655635079221

`A036620(char[1]+n)%A036619(n)`
-/

namespace A036640.P12787066655635079221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036620 ((if ∃ j, f1 j = n then 1 else 0) + n)) (A036619 n)

end

end A036640.P12787066655635079221

/-! ## A036640.P7584970797386355132

`A036620(n)-(A036639(n)+A036618(n))`
-/

namespace A036640.P7584970797386355132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036620 n - (A036639 n + A036618 n)

end

end A036640.P7584970797386355132

/-! ## A036640.P15542885990827102737

`A036647(A055647(n))`
-/

namespace A036640.P15542885990827102737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036647 (A055647 n).toNat

end

end A036640.P15542885990827102737

/-! ## A036640.P5520187075407535770

`A036647(A057846(n))`
-/

namespace A036640.P5520187075407535770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036647 (A057846 n).toNat

end

end A036640.P5520187075407535770

/-!
# A036641: Number of 6-ary rooted trees with n nodes and height exactly 3.

The programs for A036641, there is no canonical definition to state claims against.
-/

/-! ## A036641.P2514772071930606621

`A319158(n+1)-∑[A124765(n)]`
-/

namespace A036641.P2514772071930606621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319158 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036641.P2514772071930606621

/-! ## A036641.P2407503533059836385

`∑[abs(A056239(A056239(2^(n+1)))-n)]`
-/

namespace A036641.P2407503533059836385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056239 (A056239 (2 ^ (n + 1))).toNat - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036641.P2407503533059836385

/-! ## A036641.P7395159822252343658

`∑[A000523(A091919(n))-A056239(n+1)]`
-/

namespace A036641.P7395159822252343658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A091919 n).toNat - A056239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036641.P7395159822252343658

/-! ## A036641.P2815287400377703774

`∑[A178503(n+1)-A057427(A056040(n))]`
-/

namespace A036641.P2815287400377703774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178503 (n + 1) - A057427 (A056040 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036641.P2815287400377703774

/-! ## A036641.P7895730435652206922

`∑[A000523(A290828(n))-A056239(n+1)]`
-/

namespace A036641.P7895730435652206922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A290828 n).toNat - A056239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036641.P7895730435652206922

/-!
# A036642: Number of 6-ary rooted trees with n nodes and height exactly 4.

The programs for A036642, there is no canonical definition to state claims against.
-/

/-! ## A036642.P6752063069299030096

`A006478(∑{digits}[∑{digits}[n, 10^#]+1, 1-#]+(n-∑{digits}[n, #])^n)`
-/

namespace A036642.P6752063069299030096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - (x : ℤ)).sum + ((n : ℤ) - ((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)) ^ n).toNat

end

end A036642.P6752063069299030096

/-! ## A036642.P2753588911207263321

`A000235(n^A123895(n))`
-/

namespace A036642.P2753588911207263321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000235 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A123895 n : ℤ))).toNat

end

end A036642.P2753588911207263321

/-! ## A036642.P13724185623832919965

`A000235(n^A136400(n))`
-/

namespace A036642.P13724185623832919965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000235 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A136400 n : ℤ))).toNat

end

end A036642.P13724185623832919965

/-! ## A036642.P1681434159925591081

`∑[A320278(A000288(n)²)]`
-/

namespace A036642.P1681434159925591081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (A000288 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036642.P1681434159925591081

/-! ## A036642.P12627872173251966806

`∑{e}[A020522(n), A000235(#)]`
-/

namespace A036642.P12627872173251966806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000235 (Nat.factorization (f1 n).natAbs p)

end

end A036642.P12627872173251966806

/-!
# A036643: Number of 6-ary rooted trees with n nodes and height exactly 5.

The programs for A036643, there is no canonical definition to state claims against.
-/

/-! ## A036643.P11641501661347534071

`A036622(n)-A036621(n)`
-/

namespace A036643.P11641501661347534071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036622 n - A036621 n

end

end A036643.P11641501661347534071

/-! ## A036643.P10677796609952228099

`A036622(n)+A036621(n)*A057428(n+1)`
-/

namespace A036643.P10677796609952228099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036622 n + A036621 n * A057428 (n + 1)

end

end A036643.P10677796609952228099

/-! ## A036643.P17825005709008507057

`A036623(n)-(A036644(n)+A036621(n))`
-/

namespace A036643.P17825005709008507057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036623 n - (A036644 n + A036621 n)

end

end A036643.P17825005709008507057

/-! ## A036643.P1171387951399241750

`A036623(n)-A036644(n)-A036621(A028310(n))`
-/

namespace A036643.P1171387951399241750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036623 n - A036644 n - A036621 (A028310 n).toNat

end

end A036643.P1171387951399241750

/-! ## A036643.P16581776650708996589

`(A036621(n)-(A036623(n)-A036644(n)))*A057428(n)`
-/

namespace A036643.P16581776650708996589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036621 n - (A036623 n - A036644 n)) * A057428 n

end

end A036643.P16581776650708996589

/-!
# A036644: Number of 6-ary rooted trees with n nodes and height exactly 6.

The programs for A036644, there is no canonical definition to state claims against.
-/

/-! ## A036644.P9856139030247966446

`A036623(n)-A036622(n)`
-/

namespace A036644.P9856139030247966446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036623 n - A036622 n

end

end A036644.P9856139030247966446

/-! ## A036644.P7212105162469210931

`A036623(n)-(A036643(n)+A036621(n))`
-/

namespace A036644.P7212105162469210931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036623 n - (A036643 n + A036621 n)

end

end A036644.P7212105162469210931

/-! ## A036644.P5620571010531854751

`A036624(n)-(A036645(n)+A036622(n))`
-/

namespace A036644.P5620571010531854751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036624 n - (A036645 n + A036622 n)

end

end A036644.P5620571010531854751

/-! ## A036644.P7239470908702344321

`A036623(n)+A036622(n)*A057428(3*n+1)`
-/

namespace A036644.P7239470908702344321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036623 n + A036622 n * A057428 (3 * n + 1)

end

end A036644.P7239470908702344321

/-! ## A036644.P5036037684146518306

`A036625(n)-(A036646(n)+A036645(n))-A036622(n)`
-/

namespace A036644.P5036037684146518306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036625 n - (A036646 n + A036645 n) - A036622 n

end

end A036644.P5036037684146518306

/-!
# A036645: Number of 6-ary rooted trees with n nodes and height exactly 7.

The programs for A036645, there is no canonical definition to state claims against.
-/

/-! ## A036645.P7532143838856715055

`A036624(n)-A036623(n)`
-/

namespace A036645.P7532143838856715055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036624 n - A036623 n

end

end A036645.P7532143838856715055

/-! ## A036645.P6068614740012920980

`A036624(n)-(A036644(n)+A036622(n))`
-/

namespace A036645.P6068614740012920980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036624 n - (A036644 n + A036622 n)

end

end A036645.P6068614740012920980

/-! ## A036645.P5122959764566770837

`A036625(n)-(A036646(n)+A036623(n))`
-/

namespace A036645.P5122959764566770837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036625 n - (A036646 n + A036623 n)

end

end A036645.P5122959764566770837

/-! ## A036645.P8211897886088845186

`A036624(n)-(A036621(n)+A036644(n)+A036643(n))`
-/

namespace A036645.P8211897886088845186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036624 n - (A036621 n + (A036644 n + A036643 n))

end

end A036645.P8211897886088845186

/-! ## A036645.P17831857159893130750

`A036626(n)-(A036647(n)+A036646(n))-A036623(n)`
-/

namespace A036645.P17831857159893130750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036626 n - (A036647 n + A036646 n) - A036623 n

end

end A036645.P17831857159893130750

/-!
# A036646: Number of 6-ary rooted trees with n nodes and height exactly 8.

The programs for A036646, there is no canonical definition to state claims against.
-/

/-! ## A036646.P11204668506549681345

`A036625(n)-A036624(n)`
-/

namespace A036646.P11204668506549681345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036625 n - A036624 n

end

end A036646.P11204668506549681345

/-! ## A036646.P14971065841838734576

`A036625(n)-(A036645(n)+A036623(n))`
-/

namespace A036646.P14971065841838734576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036625 n - (A036645 n + A036623 n)

end

end A036646.P14971065841838734576

/-! ## A036646.P2040704487251233780

`A036626(n)-(A036647(n)+A036624(n))`
-/

namespace A036646.P2040704487251233780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036626 n - (A036647 n + A036624 n)

end

end A036646.P2040704487251233780

/-! ## A036646.P9957369119848326970

`A036625(n)-(A036622(n)+A036645(n)+A036644(n))`
-/

namespace A036646.P9957369119848326970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036625 n - (A036622 n + (A036645 n + A036644 n))

end

end A036646.P9957369119848326970

/-! ## A036646.P16816596979010064050

`A036625(n)-(A036623(n)-(A011745(n)-A036645(n)))`
-/

namespace A036646.P16816596979010064050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036625 n - (A036623 n - (A011745 n - A036645 n))

end

end A036646.P16816596979010064050

/-!
# A036647: Number of 6-ary rooted trees with n nodes and height exactly 9.

The programs for A036647, there is no canonical definition to state claims against.
-/

/-! ## A036647.P10241552296805379689

`A036626(n)-A036625(n)`
-/

namespace A036647.P10241552296805379689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036626 n - A036625 n

end

end A036647.P10241552296805379689

/-! ## A036647.P6270907086185234804

`A036626(char[1]+n)%A036625(n)`
-/

namespace A036647.P6270907086185234804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036626 ((if ∃ j, f1 j = n then 1 else 0) + n)) (A036625 n)

end

end A036647.P6270907086185234804

/-! ## A036647.P5609259473282342544

`A036626(n)-(A036646(n)+A036624(n))`
-/

namespace A036647.P5609259473282342544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036626 n - (A036646 n + A036624 n)

end

end A036647.P5609259473282342544

/-! ## A036647.P7106538785394989943

`A011745(n)+A036626(n)%A036625(n)`
-/

namespace A036647.P7106538785394989943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011745 n + Int.tmod (A036626 n) (A036625 n)

end

end A036647.P7106538785394989943

/-! ## A036647.P12773438806342609243

`A036626(A233583(n+1))%(A036646(n)+A036624(n))`
-/

namespace A036647.P12773438806342609243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036626 (A233583 (n + 1)).toNat) (A036646 n + A036624 n)

end

end A036647.P12773438806342609243

/-!
# A036648: Number of centered 5-valent trees with n nodes.

The programs for A036648, there is no canonical definition to state claims against.
-/

/-! ## A036648.P13053106612393453954

`A036650(n)-A036649(abs(1-n)+1)`
-/

namespace A036648.P13053106612393453954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036650 n - A036649 (|1 - (n : ℤ)| + 1).toNat

end

end A036648.P13053106612393453954

/-! ## A036648.P9954459278711284720

`A036650(n)-(A036649(n)+A000007(n))`
-/

namespace A036648.P9954459278711284720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036650 n - (A036649 n + A000007 n)

end

end A036648.P9954459278711284720

/-! ## A036648.P2541940574171803065

`(A036650(n)-A036649(n))%A000244(n)`
-/

namespace A036648.P2541940574171803065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036650 n - A036649 n) (A000244 n)

end

end A036648.P2541940574171803065

/-! ## A036648.P13916647109377438422

`char[A038722(n+1)]*A036650(n)-A036649(n)`
-/

namespace A036648.P13916647109377438422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A036650 n - A036649 n

end

end A036648.P13916647109377438422

/-! ## A036648.P5087830490280707483

`A008683(2*A000010(n+2))+A036650(n)-A036649(n)`
-/

namespace A036648.P5087830490280707483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A000010 (n + 2)).toNat + (A036650 n - A036649 n)

end

end A036648.P5087830490280707483

/-!
# A036649: Number of bicentered 5-valent trees with n nodes.

The programs for A036649, there is no canonical definition to state claims against.
-/

/-! ## A036649.P18046849982693859703

`A036650(n)-A036648(A028310(n))`
-/

namespace A036649.P18046849982693859703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036650 n - A036648 (A028310 n).toNat

end

end A036649.P18046849982693859703

/-! ## A036649.P4158453910942082639

`A036650(n)-A036648(A000007(n)+n)`
-/

namespace A036649.P4158453910942082639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036650 n - A036648 (A000007 n + (n : ℤ)).toNat

end

end A036649.P4158453910942082639

/-! ## A036649.P10110209675655028190

`A036650(n)-A036648(n)-A000007(n)`
-/

namespace A036649.P10110209675655028190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036650 n - A036648 n - A000007 n

end

end A036649.P10110209675655028190

/-! ## A036649.P2273760602093930046

`(A036650(n)-A036648(n))*A057427(n)`
-/

namespace A036649.P2273760602093930046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036650 n - A036648 n) * A057427 n

end

end A036649.P2273760602093930046

/-! ## A036649.P16505692083274507337

`(A036650(n)-A036648(n))%A000244(n)`
-/

namespace A036649.P16505692083274507337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036650 n - A036648 n) (A000244 n)

end

end A036649.P16505692083274507337

/-!
# A036650: Number of 5-valent trees with n nodes.

The programs for A036650, there is no canonical definition to state claims against.
-/

/-! ## A036650.P16020103612303502206

`A036649(abs(1-n)+1)+A036648(n)`
-/

namespace A036650.P16020103612303502206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036649 (|1 - (n : ℤ)| + 1).toNat + A036648 n

end

end A036650.P16020103612303502206

/-! ## A036650.P7485894254638493435

`A000007(n)+A036649(n)+A036648(n)`
-/

namespace A036650.P7485894254638493435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A036649 n + A036648 n)

end

end A036650.P7485894254638493435

/-! ## A036650.P11355404408311093396

`char[A016854(n)]+A036649(n)+A036648(n)`
-/

namespace A036650.P11355404408311093396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016854 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A036649 n + A036648 n)

end

end A036650.P11355404408311093396

/-! ## A036650.P5354397216577412961

`A008683(A022144(n))+A036649(n)+A036648(n)`
-/

namespace A036650.P5354397216577412961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A022144 n).toNat + (A036649 n + A036648 n)

end

end A036650.P5354397216577412961

/-! ## A036650.P10190577076454254565

`A008683((n+1)*(n+1)²)+A036649(n)+A036648(n)`
-/

namespace A036650.P10190577076454254565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) * (n + 1) ^ 2) + (A036649 n + A036648 n)

end

end A036650.P10190577076454254565

/-!
# A036651: Number of centered 6-valent trees with n nodes.

The programs for A036651, there is no canonical definition to state claims against.
-/

/-! ## A036651.P10574722168486070597

`A036653(n)-(A036652(n)+A000007(n))`
-/

namespace A036651.P10574722168486070597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036653 n - (A036652 n + A000007 n)

end

end A036651.P10574722168486070597

/-! ## A036651.P10012146470685877496

`A036653(n)-A036652(A000038(n)+n)`
-/

namespace A036651.P10012146470685877496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036653 n - A036652 (A000038 n + (n : ℤ)).toNat

end

end A036651.P10012146470685877496

/-! ## A036651.P6336528398863425443

`(A036653(n)-A036652(n))*A057427(n)`
-/

namespace A036651.P6336528398863425443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036653 n - A036652 n) * A057427 n

end

end A036651.P6336528398863425443

/-! ## A036651.P5487958720222058982

`(A036653(n)-A036652(n))%A000302(n)`
-/

namespace A036651.P5487958720222058982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036653 n - A036652 n) (A000302 n)

end

end A036651.P5487958720222058982

/-! ## A036651.P12753482150284808958

`A036653(n)-A036652(or(n, A000038(n)))`
-/

namespace A036651.P12753482150284808958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036653 n - A036652 (Int.lor (n : ℤ) (A000038 n)).toNat

end

end A036651.P12753482150284808958

/-! ## A036651.P17470376072311513780

`char[A003602(n+1)]*A036653(n)-A036652(n)`
-/

namespace A036651.P17470376072311513780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A036653 n - A036652 n

end

end A036651.P17470376072311513780

/-! ## A036651.P12147289522104119880

`(A036653(n)-A036652(n))*char[A014681(n+1)]`
-/

namespace A036651.P12147289522104119880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036653 n - A036652 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A036651.P12147289522104119880

/-! ## A036651.P12424177091844074228

`char[A038722(n+1)]*A036653(n)-A036652(n)`
-/

namespace A036651.P12424177091844074228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A036653 n - A036652 n

end

end A036651.P12424177091844074228

/-!
# A036652: Number of bicentered 6-valent trees with n nodes.

The programs for A036652, there is no canonical definition to state claims against.
-/

/-! ## A036652.P15873807329951495618

`A036653(n)-A036651(A000007(n)+n)`
-/

namespace A036652.P15873807329951495618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036653 n - A036651 (A000007 n + (n : ℤ)).toNat

end

end A036652.P15873807329951495618

/-! ## A036652.P2299928518116598819

`A036653(n)-A036651(n)-A000007(n)`
-/

namespace A036652.P2299928518116598819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036653 n - A036651 n - A000007 n

end

end A036652.P2299928518116598819

/-! ## A036652.P7167162140372580168

`(A036653(n)-A036651(n))%A000244(n)`
-/

namespace A036652.P7167162140372580168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036653 n - A036651 n) (A000244 n)

end

end A036652.P7167162140372580168

/-! ## A036652.P4852748128146710752

`(A036653(n)-A036651(n))*A008611(C(3, n²))`
-/

namespace A036652.P4852748128146710752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036653 n - A036651 n) * A008611 (Nat.choose 3 (n ^ 2))

end

end A036652.P4852748128146710752

/-! ## A036652.P5788681661438716615

`A001222(A008578(n+1))*A036653(n)-A036651(n)`
-/

namespace A036652.P5788681661438716615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1)).toNat * A036653 n - A036651 n

end

end A036652.P5788681661438716615

/-!
# A036653: Number of 6-valent trees with n nodes.

The programs for A036653, there is no canonical definition to state claims against.
-/

/-! ## A036653.P8389294610745672123

`A036652(abs(1-n)+1)+A036651(n)`
-/

namespace A036653.P8389294610745672123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036652 (|1 - (n : ℤ)| + 1).toNat + A036651 n

end

end A036653.P8389294610745672123

/-! ## A036653.P686746297317515296

`A000007(n)+A036652(n)+A036651(n)`
-/

namespace A036653.P686746297317515296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A036652 n + A036651 n)

end

end A036653.P686746297317515296

/-! ## A036653.P13040551673554341203

`A000079(n)%2+A036652(n)+A036651(n)`
-/

namespace A036653.P13040551673554341203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) 2 + (A036652 n + A036651 n)

end

end A036653.P13040551673554341203

/-! ## A036653.P15579077142396844265

`char[A135968(n+1)]+A036652(n)+A036651(n)`
-/

namespace A036653.P15579077142396844265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135968 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A036652 n + A036651 n)

end

end A036653.P15579077142396844265

/-! ## A036653.P745571149109741956

`(A036652(n)+A036651(n))^A048766(A048766(n))`
-/

namespace A036653.P745571149109741956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036652 n + A036651 n : ℚ) ^ (A048766 (A048766 n).toNat : ℤ)

end

end A036653.P745571149109741956

/-!
# A036655: Numbers d_n used in recurrence for series-parallel numbers.

The programs for A036655, there is no canonical definition to state claims against.
-/

/-! ## A036655.P8820520700806864807

`A058352(n)+1`
-/

namespace A036655.P8820520700806864807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058352 n + 1

end

end A036655.P8820520700806864807

/-! ## A036655.P9544339927048978785

`xor(A058352(n), A122553(n))`
-/

namespace A036655.P9544339927048978785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058352 n) (A122553 n)

end

end A036655.P9544339927048978785

/-! ## A036655.P689549135330423464

`n-(A023443(n)-A058352(n))`
-/

namespace A036655.P689549135330423464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A058352 n)

end

end A036655.P689549135330423464

/-! ## A036655.P6097765472577184684

`A006349(n+1)+1-A058353(n+1)`
-/

namespace A036655.P6097765472577184684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006349 (n + 1) + (1 - A058353 (n + 1))

end

end A036655.P6097765472577184684

/-! ## A036655.P17063139266283909914

`A006349(n+1)%A000084(n+1)+1`
-/

namespace A036655.P17063139266283909914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006349 (n + 1)) (A000084 (n + 1)) + 1

end

end A036655.P17063139266283909914

/-! ## A036655.P16071507946023369494

`A058353(n+1)-(A058351(n)+A006350(n+1))`
-/

namespace A036655.P16071507946023369494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058353 (n + 1) - (A058351 n + A006350 (n + 1))

end

end A036655.P16071507946023369494

/-!
# A036656: Number of n-node rooted unlabeled trees with outdegree <= 2 and exactly 1 edge at the root.

The programs for A036656, there is no canonical definition to state claims against.
-/

/-! ## A036656.P9496369521272187576

`A001190(n-char[1])`
-/

namespace A036656.P9496369521272187576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A036656.P9496369521272187576

/-! ## A036656.P11086123291918300775

`xor(char[1], A001190(n))`
-/

namespace A036656.P11086123291918300775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001190 n)

end

end A036656.P11086123291918300775

/-! ## A036656.P17718404744503465487

`A159075(n)+A001190(n)`
-/

namespace A036656.P17718404744503465487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A001190 n

end

end A036656.P17718404744503465487

/-! ## A036656.P15047971093092820115

`A001190(n)-A063524(n)`
-/

namespace A036656.P15047971093092820115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 n - A063524 n

end

end A036656.P15047971093092820115

/-! ## A036656.P299168041732515736

`A001190(n)*A060576(n)`
-/

namespace A036656.P299168041732515736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 n * A060576 n

end

end A036656.P299168041732515736

/-! ## A036656.P12562881866053963380

`A001190(n)*A157928(n)`
-/

namespace A036656.P12562881866053963380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 n * A157928 n

end

end A036656.P12562881866053963380

/-! ## A036656.P5771929678295644528

`lcm(A001190(n), A105812(n))`
-/

namespace A036656.P5771929678295644528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001190 n) (A105812 n)

end

end A036656.P5771929678295644528

/-! ## A036656.P10948944797006897388

`A001190(n)-A000007(xor(1, n))`
-/

namespace A036656.P10948944797006897388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 n - A000007 (Nat.xor 1 n)

end

end A036656.P10948944797006897388

/-! ## A036656.P18203052878407787445

`A001190(n)-floor(1/A000032(n))`
-/

namespace A036656.P18203052878407787445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 n - ⌊1 / (A000032 n : ℚ)⌋

end

end A036656.P18203052878407787445

/-! ## A036656.P7427364895664034110

`A199969(n+1)+A001190(n)-n`
-/

namespace A036656.P7427364895664034110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (n + 1) + (A001190 n - (n : ℤ))

end

end A036656.P7427364895664034110

/-! ## A036656.P14037238740876382327

`(A184985(n+1)-n)*A001190(n)`
-/

namespace A036656.P14037238740876382327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A184985 (n + 1) - (n : ℤ)) * A001190 n

end

end A036656.P14037238740876382327

/-! ## A036656.P9850196103991646097

`gcd(a(A008683(n)²), A001190(n))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A036656.P9850196103991646097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  Int.gcd (a (A008683 n ^ 2).toNat : ℤ) (A001190 n)

end

end A036656.P9850196103991646097

/-! ## A036656.P1027487853600821832

`A001190(n)-A004526(A007318(C(2, n)²))`
-/

namespace A036656.P1027487853600821832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 n - A004526 (A007318 (Nat.choose 2 n ^ 2)).toNat

end

end A036656.P1027487853600821832

/-! ## A036656.P536787892762845128

`A001190(n)-A001190(n)*A019590(n+1)`
-/

namespace A036656.P536787892762845128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 n - A001190 n * A019590 (n + 1)

end

end A036656.P536787892762845128

/-! ## A036656.P8868946302297931851

`A019590(n+2)+A001190(n)-A019590(n+1)`
-/

namespace A036656.P8868946302297931851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2) + (A001190 n - A019590 (n + 1))

end

end A036656.P8868946302297931851

/-! ## A036656.P11917484012806708761

`A001190(n)%A001333(n)`
-/

namespace A036656.P11917484012806708761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001190 n) (A001333 n)

end

end A036656.P11917484012806708761

/-! ## A036656.P1168099752887690507

`A001190(A028310(n))%A001190(n+2)`
-/

namespace A036656.P1168099752887690507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001190 (A028310 n).toNat) (A001190 (n + 2))

end

end A036656.P1168099752887690507

/-! ## A036656.P15351762792478608388

`and(A001190(n), A267586(n))`
-/

namespace A036656.P15351762792478608388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001190 n) (A267586 n)

end

end A036656.P15351762792478608388

/-!
# A036657: Number of n-node rooted unlabeled trees with out-degree <=2 and exactly 2 edges at the root.

The programs for A036657, there is no canonical definition to state claims against.
-/

/-! ## A036657.P2095873039744481165

`Δ[A036656(n)]-char[1]`
-/

namespace A036657.P2095873039744481165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036656 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A036657.P2095873039744481165

/-! ## A036657.P1955328826977742143

`Δ[A001190(C(2, n)+n)]`
-/

namespace A036657.P1955328826977742143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036657.P1955328826977742143

/-! ## A036657.P9764801981204244623

`Δ[A001190(xor(n, C(3, n)))]`
-/

namespace A036657.P9764801981204244623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 (Nat.xor n (Nat.choose 3 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036657.P9764801981204244623

/-! ## A036657.P4390426103493655743

`Δ[A001190(floor(1/(n+1)+n))]`
-/

namespace A036657.P4390426103493655743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 ⌊1 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036657.P4390426103493655743

/-! ## A036657.P4927184956311223039

`A036656(n+1)-A001190(n)`
-/

namespace A036657.P4927184956311223039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036656 (n + 1) - A001190 n

end

end A036657.P4927184956311223039

/-! ## A036657.P1504753974167991719

`A001190(A326178(n))-A001190(n)`
-/

namespace A036657.P1504753974167991719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 (A326178 n).toNat - A001190 n

end

end A036657.P1504753974167991719

/-! ## A036657.P11625495293754087116

`A001190(n+1)-A001190(A028310(n))`
-/

namespace A036657.P11625495293754087116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 (n + 1) - A001190 (A028310 n).toNat

end

end A036657.P11625495293754087116

/-! ## A036657.P9182821598661313221

`A001190(A184985(n+1))-A001190(n)`
-/

namespace A036657.P9182821598661313221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 (A184985 (n + 1)).toNat - A001190 n

end

end A036657.P9182821598661313221

/-! ## A036657.P13845673584016053930

`A036656(n+1)-A036656(A254667(n))`
-/

namespace A036657.P13845673584016053930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036656 (n + 1) - A036656 (A254667 n).toNat

end

end A036657.P13845673584016053930

/-! ## A036657.P8033752821586149714

`A001190(A199969(n+2))-A001190(n)`
-/

namespace A036657.P8033752821586149714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 (A199969 (n + 2)).toNat - A001190 n

end

end A036657.P8033752821586149714

/-! ## A036657.P1705964258687274318

`A000671(n)-(A036658(n)+A001190(n))`
-/

namespace A036657.P1705964258687274318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000671 n - (A036658 n + A001190 n)

end

end A036657.P1705964258687274318

/-! ## A036657.P9414695024493817850

`A001190(A157928(n)+n)-A001190(n)`
-/

namespace A036657.P9414695024493817850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 (A157928 n + (n : ℤ)).toNat - A001190 n

end

end A036657.P9414695024493817850

/-! ## A036657.P17108033562048316855

`A001190(n+1)-A001190(A065033(2*n))`
-/

namespace A036657.P17108033562048316855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 (n + 1) - A001190 (A065033 (2 * n)).toNat

end

end A036657.P17108033562048316855

/-! ## A036657.P9987133138975239824

`A001190(n+1)-(A063524(n+1)+A001190(n))`
-/

namespace A036657.P9987133138975239824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 (n + 1) - (A063524 (n + 1) + A001190 n)

end

end A036657.P9987133138975239824

/-! ## A036657.P287304668226540151

`A001190(n+1)-(A019590(n+2)+A001190(n))`
-/

namespace A036657.P287304668226540151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 (n + 1) - (A019590 (n + 2) + A001190 n)

end

end A036657.P287304668226540151

/-! ## A036657.P2782517491975310807

`Δ[A001190(n)]%A036656(n+3)`
-/

namespace A036657.P2782517491975310807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A036656 (n + 3))

end

end A036657.P2782517491975310807

/-! ## A036657.P4486486128336556663

`Δ[A036656(char[1]+n)]%A036656(n+3)`
-/

namespace A036657.P4486486128336556663
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036656 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A036656 (n + 3))

end

end A036657.P4486486128336556663

/-! ## A036657.P8820679724189610331

`A344613(2*(n+1))-A344613(A004277(n))`
-/

namespace A036657.P8820679724189610331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344613 (2 * (n + 1)) - A344613 (A004277 n).toNat

end

end A036657.P8820679724189610331

/-!
# A036658: Number of n-node rooted unlabeled trees with exactly 3 edges at root and otherwise out-degree <= 2.

The programs for A036658, there is no canonical definition to state claims against.
-/

/-! ## A036658.P6454687612385866267

`A000671(n)-A036656(n+1)`
-/

namespace A036658.P6454687612385866267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000671 n - A036656 (n + 1)

end

end A036658.P6454687612385866267

/-! ## A036658.P1692262499099143595

`A000671(n)%A001190(n+1)`
-/

namespace A036658.P1692262499099143595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000671 n) (A001190 (n + 1))

end

end A036658.P1692262499099143595

/-! ## A036658.P2352147755902727708

`A000671(n)-A001190(A326178(n))`
-/

namespace A036658.P2352147755902727708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000671 n - A001190 (A326178 n).toNat

end

end A036658.P2352147755902727708

/-! ## A036658.P3985096847976772447

`A000671(n)-(A036657(n)+A001190(n))`
-/

namespace A036658.P3985096847976772447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000671 n - (A036657 n + A001190 n)

end

end A036658.P3985096847976772447

/-! ## A036658.P3604499467894750935

`A088326(A016028(n+1))%A003426(n+1)`
-/

namespace A036658.P3604499467894750935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088326 (A016028 (n + 1)).toNat) (A003426 (n + 1))

end

end A036658.P3604499467894750935

/-!
# A036659: Product of n with sum of next n consecutive integers.

The programs for A036659, the canonical program `A036659.P4355094521976219678` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036659 has offset 1).

The definition of A036659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036659.P4355094521976219678

`(n+1)²*(1+3*(n+1))/2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036659

/-- `(n+1)²*(1+3*(n+1))/2` -/
def P4355094521976219678.Spec : Prop :=
  ∀ n, P4355094521976219678.a n = (A036659 (n + 1) : ℚ)

end A036659

/-! ## A036659.P12743921245785988341

`∑[∑[a(n-1)+9]]` with `a(0)=2, a(1)=10`
-/

namespace A036659.P12743921245785988341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 10] fun n f2 =>
  f2 (n - 1) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036659.P12743921245785988341

namespace A036659

/-- `∑[∑[a(n-1)+9]]` -/
def P12743921245785988341.Spec : Prop :=
  ∀ n, (P12743921245785988341.a n : ℤ) = A036659 (n + 1)

end A036659

/-! ## A036659.P3948693221262737490

`∑[∑[ogf((2+6x+x^2)/(1-2x+x^2))]]`
-/

namespace A036659.P3948693221262737490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, 1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036659.P3948693221262737490

namespace A036659

/-- `∑[∑[ogf((2+6x+x^2)/(1-2x+x^2))]]` -/
def P3948693221262737490.Spec : Prop :=
  ∀ n, P3948693221262737490.a n = A036659 (n + 1)

end A036659

/-! ## A036659.P16572666130795788662

`ogf((2+6x+x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A036659.P16572666130795788662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, 1] [1, -4, 6, -4, 1] n

end

end A036659.P16572666130795788662

namespace A036659

/-- `ogf((2+6x+x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P16572666130795788662.Spec : Prop :=
  ∀ n, P16572666130795788662.a n = A036659 (n + 1)

end A036659

/-! ## A036659.P833687001982964273

`∑[C(n+2, 2)+Δ[n²]²]`
-/

namespace A036659.P833687001982964273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036659.P833687001982964273

namespace A036659

/-- `∑[C(n+2, 2)+Δ[n²]²]` -/
def P833687001982964273.Spec : Prop :=
  ∀ n, P833687001982964273.a n = A036659 (n + 1)

end A036659

/-! ## A036659.P11416699825909550270

`(C(n+2, 2)+(n+1)²)*(n+1)`
-/

namespace A036659.P11416699825909550270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 + (n + 1) ^ 2) * (n + 1)

end

end A036659.P11416699825909550270

namespace A036659

/-- `(C(n+2, 2)+(n+1)²)*(n+1)` -/
def P11416699825909550270.Spec : Prop :=
  ∀ n, (P11416699825909550270.a n : ℤ) = A036659 (n + 1)

end A036659

/-! ## A036659.P14069311070793215184

`C(2*n+3, 2*n)+C(n+3, 3)`
-/

namespace A036659.P14069311070793215184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 3) (2 * n) + Nat.choose (n + 3) 3

end

end A036659.P14069311070793215184

namespace A036659

/-- `C(2*n+3, 2*n)+C(n+3, 3)` -/
def P14069311070793215184.Spec : Prop :=
  ∀ n, (P14069311070793215184.a n : ℤ) = A036659 (n + 1)

end A036659

/-! ## A036659.P3339663939339779372

`∑[A062123(n)+n]`
-/

namespace A036659.P3339663939339779372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062123 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036659.P3339663939339779372

namespace A036659

/-- `∑[A062123(n)+n]` -/
def P3339663939339779372.Spec : Prop :=
  ∀ n, P3339663939339779372.a n = A036659 (n + 1)

end A036659

/-! ## A036659.P8051165072026036613

`A050509(n)+(n+1)²`
-/

namespace A036659.P8051165072026036613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050509 n + ((n + 1) ^ 2 : ℤ)

end

end A036659.P8051165072026036613

namespace A036659

/-- `A050509(n)+(n+1)²` -/
def P8051165072026036613.Spec : Prop :=
  ∀ n, P8051165072026036613.a n = A036659 (n + 1)

end A036659

/-! ## A036659.P10736353588169921833

`∑[A064226(n)-(n+1)]`
-/

namespace A036659.P10736353588169921833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064226 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036659.P10736353588169921833

namespace A036659

/-- `∑[A064226(n)-(n+1)]` -/
def P10736353588169921833.Spec : Prop :=
  ∀ n, P10736353588169921833.a n = A036659 (n + 1)

end A036659

/-! ## A036659.P3509749158004997495

`(n+1)*∑[A016789(n)]`
-/

namespace A036659.P3509749158004997495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036659.P3509749158004997495

namespace A036659

/-- `(n+1)*∑[A016789(n)]` -/
def P3509749158004997495.Spec : Prop :=
  ∀ n, P3509749158004997495.a n = A036659 (n + 1)

end A036659

/-! ## A036659.P11367713906293844138

`(n+1)*(A140090(n)+2)`
-/

namespace A036659.P11367713906293844138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A140090 n + 2)

end

end A036659.P11367713906293844138

namespace A036659

/-- `(n+1)*(A140090(n)+2)` -/
def P11367713906293844138.Spec : Prop :=
  ∀ n, P11367713906293844138.a n = A036659 (n + 1)

end A036659

/-! ## A036659.P14831928743001242759

`∑[A081267(n)]+(n+1)²`
-/

namespace A036659.P14831928743001242759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A036659.P14831928743001242759

namespace A036659

/-- `∑[A081267(n)]+(n+1)²` -/
def P14831928743001242759.Spec : Prop :=
  ∀ n, P14831928743001242759.a n = A036659 (n + 1)

end A036659

/-! ## A036659.P11667783637186796948

`A085789(n+1)-(n+1)²`
-/

namespace A036659.P11667783637186796948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085789 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A036659.P11667783637186796948

namespace A036659

/-- `A085789(n+1)-(n+1)²` -/
def P11667783637186796948.Spec : Prop :=
  ∀ n, P11667783637186796948.a n = A036659 (n + 1)

end A036659

/-! ## A036659.P8148233787056658152

`(n+1)*(A095794(n+1)+1)`
-/

namespace A036659.P8148233787056658152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A095794 (n + 1) + 1)

end

end A036659.P8148233787056658152

namespace A036659

/-- `(n+1)*(A095794(n+1)+1)` -/
def P8148233787056658152.Spec : Prop :=
  ∀ n, P8148233787056658152.a n = A036659 (n + 1)

end A036659

/-! ## A036659.P376607460796544003

`(n+1)*(A000326(n+1)+n+1)`
-/

namespace A036659.P376607460796544003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000326 (n + 1) + (n + 1 : ℤ))

end

end A036659.P376607460796544003

namespace A036659

/-- `(n+1)*(A000326(n+1)+n+1)` -/
def P376607460796544003.Spec : Prop :=
  ∀ n, P376607460796544003.a n = A036659 (n + 1)

end A036659

/-! ## A036659.P1355133495743230788

`A051662(n)+A008778(n)`
-/

namespace A036659.P1355133495743230788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051662 n + A008778 n

end

end A036659.P1355133495743230788

namespace A036659

/-- `A051662(n)+A008778(n)` -/
def P1355133495743230788.Spec : Prop :=
  ∀ n, P1355133495743230788.a n = A036659 (n + 1)

end A036659

/-! ## A036659.P1718726060752040232

`A081437(n)+A006000(n)`
-/

namespace A036659.P1718726060752040232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081437 n + A006000 n

end

end A036659.P1718726060752040232

namespace A036659

/-- `A081437(n)+A006000(n)` -/
def P1718726060752040232.Spec : Prop :=
  ∀ n, P1718726060752040232.a n = A036659 (n + 1)

end A036659

/-! ## A036659.P11341042123962176579

`A143058(n)+A001845(n)`
-/

namespace A036659.P11341042123962176579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143058 n + A001845 n

end

end A036659.P11341042123962176579

namespace A036659

/-- `A143058(n)+A001845(n)` -/
def P11341042123962176579.Spec : Prop :=
  ∀ n, P11341042123962176579.a n = A036659 (n + 1)

end A036659

/-! ## A036659.P421637284655343519

`A081438(n)+A064808(n)`
-/

namespace A036659.P421637284655343519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081438 n + A064808 n

end

end A036659.P421637284655343519

namespace A036659

/-- `A081438(n)+A064808(n)` -/
def P421637284655343519.Spec : Prop :=
  ∀ n, P421637284655343519.a n = A036659 (n + 1)

end A036659

/-!
# A036660: Product of prime p with sum of next p consecutive primes.

The programs for A036660, the canonical program `A036660.P2237359148755878033` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036660 has offset 1).

The definition of A036660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036660.P2237359148755878033

`(A007504(A014688(n+1))-A007504(n+1))*A000040(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A036660

/-- `(A007504(A014688(n+1))-A007504(n+1))*A000040(n+1)` -/
def P2237359148755878033.Spec : Prop :=
  ∀ n, P2237359148755878033.a n = A036660 (n + 1)

theorem P2237359148755878033.correct : P2237359148755878033.Spec := by
  intro n
  simp only [A036660, Nat.add_sub_cancel]

end A036660

/-! ## A036660.P4355145074251435340

`(A007504(A000040(n+1)+n+1)-A007504(n+1))*A000040(n+1)`
-/

namespace A036660.P4355145074251435340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 (A000040 (n + 1) + (n + 1 : ℤ)).toNat - A007504 (n + 1)) * A000040 (n + 1)

end

end A036660.P4355145074251435340

namespace A036660

/-- `(A007504(A000040(n+1)+n+1)-A007504(n+1))*A000040(n+1)` -/
def P4355145074251435340.Spec : Prop :=
  ∀ n, P4355145074251435340.a n = A036660 (n + 1)

end A036660

/-! ## A036660.P12543696506690411035

`Δ[A007504(n)]*A099274(n+1)`
-/

namespace A036660.P12543696506690411035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A099274 (n + 1)

end

end A036660.P12543696506690411035

namespace A036660

/-- `Δ[A007504(n)]*A099274(n+1)` -/
def P12543696506690411035.Spec : Prop :=
  ∀ n, P12543696506690411035.a n = A036660 (n + 1)

end A036660

/-! ## A036660.P7569259037460230374

`A000040(n+1)*A099274(n+1)`
-/

namespace A036660.P7569259037460230374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A099274 (n + 1)

end

end A036660.P7569259037460230374

namespace A036660

/-- `A000040(n+1)*A099274(n+1)` -/
def P7569259037460230374.Spec : Prop :=
  ∀ n, P7569259037460230374.a n = A036660 (n + 1)

end A036660

/-! ## A036660.P14180024303029531522

`A049551(n+1)*A099274(n+1)`
-/

namespace A036660.P14180024303029531522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1) * A099274 (n + 1)

end

end A036660.P14180024303029531522

namespace A036660

/-- `A049551(n+1)*A099274(n+1)` -/
def P14180024303029531522.Spec : Prop :=
  ∀ n, P14180024303029531522.a n = A036660 (n + 1)

end A036660

/-!
# A036661: Number of n-node rooted labeled trees with deg <= 4 at root and outdegree <= 2 elsewhere.

The programs for A036661, there is no canonical definition to state claims against.
-/

/-! ## A036661.P2974721639889142056

`A271362((n+1)²+4)`
-/

namespace A036661.P2974721639889142056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271362 ((n + 1) ^ 2 + 4)

end

end A036661.P2974721639889142056

/-! ## A036661.P12918788060084246483

`A271205(∑[n+2]+2)`
-/

namespace A036661.P12918788060084246483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271205 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A036661.P12918788060084246483

/-! ## A036661.P14482569294544018891

`A271205(A000124(n+2))^A178334(n)`
-/

namespace A036661.P14482569294544018891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271205 (A000124 (n + 2)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A036661.P14482569294544018891

/-! ## A036661.P8118264187081198768

`A271205(A000124(n+2))^A178489(n)`
-/

namespace A036661.P8118264187081198768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271205 (A000124 (n + 2)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A036661.P8118264187081198768

/-! ## A036661.P15977661868356593592

`or(A000007(n), A271205(A000124(n+2)))`
-/

namespace A036661.P15977661868356593592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A271205 (A000124 (n + 2)).toNat)

end

end A036661.P15977661868356593592

/-!
# A036662: Shapes of height-balanced AVL trees of height at most 5 with n nodes.

The programs for A036662, there is no canonical definition to state claims against.
-/

/-! ## A036662.P7683715509043494539

`A103205(A134306(n))`
-/

namespace A036662.P7683715509043494539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 (A134306 n).toNat

end

end A036662.P7683715509043494539

/-! ## A036662.P11623381021316663197

`A023443(A134306(n)+1)`
-/

namespace A036662.P11623381021316663197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A134306 n + 1).toNat

end

end A036662.P11623381021316663197

/-! ## A036662.P12163743154206906616

`A023444(A134306(n)+2)`
-/

namespace A036662.P12163743154206906616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A134306 n + 2).toNat

end

end A036662.P12163743154206906616

/-! ## A036662.P3252904107232746060

`A289207(A134306(n)+2)`
-/

namespace A036662.P3252904107232746060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A134306 n + 2).toNat

end

end A036662.P3252904107232746060

/-! ## A036662.P6979335253345677254

`A023445(A134306(n)+3)`
-/

namespace A036662.P6979335253345677254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A134306 n + 3).toNat

end

end A036662.P6979335253345677254

/-!
# A036663: Decimal expansion of 1/98019801.

The programs for A036663, there is no canonical definition to state claims against.
-/

/-! ## A036663.P11717362254715212706

`A380305(A173254(n))`
-/

namespace A036663.P11717362254715212706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380305 (A173254 n).toNat

end

end A036663.P11717362254715212706

/-!
# A036664: Decimal expansion of 1/980198019801.

The programs for A036664, there is no canonical definition to state claims against.
-/

/-! ## A036664.P10498545195062084184

`A105514((n*ratio[gcd(2, n)])%A105544(n))`
-/

namespace A036664.P10498545195062084184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105514 (Int.tmod (SequenceMachineLib.roundAway ((n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))) (A105544 n)).toNat

end

end A036664.P10498545195062084184

/-!
# A036665: Decimal expansion of 1/9801980198019801.

The programs for A036665, there is no canonical definition to state claims against.
-/

/-! ## A036665.P6441491534635804374

`val(A208510(A377037(n+4)), 8)`
-/

namespace A036665.P6441491534635804374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A208510 (A377037 (n + 4)).toNat).toNat 8

end

end A036665.P6441491534635804374

/-!
# A036666: Numbers k such that 5*k + 1 is a square.

The programs for A036666, the canonical program `A036666.P14422854938732959437` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036666 has offset 1).

The definition of A036666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036666.P14422854938732959437

`n²+n+ceil(n/2)²`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036666

/-- `n²+n+ceil(n/2)²` -/
def P14422854938732959437.Spec : Prop :=
  ∀ n, P14422854938732959437.a n = A036666 (n + 1)

theorem P14422854938732959437.correct : P14422854938732959437.Spec := by
  intro n
  simp only [A036666, Nat.add_sub_cancel]

end A036666

/-! ## A036666.P12003028341335652820

`∑[lcm(2, n)+n]`
-/

namespace A036666.P12003028341335652820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036666.P12003028341335652820

namespace A036666

/-- `∑[lcm(2, n)+n]` -/
def P12003028341335652820.Spec : Prop :=
  ∀ n, (P12003028341335652820.a n : ℤ) = A036666 (n + 1)

end A036666

/-! ## A036666.P18229460401920301490

`∑[n*(n%2+2)]`
-/

namespace A036666.P18229460401920301490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036666.P18229460401920301490

namespace A036666

/-- `∑[n*(n%2+2)]` -/
def P18229460401920301490.Spec : Prop :=
  ∀ n, (P18229460401920301490.a n : ℤ) = A036666 (n + 1)

end A036666

/-! ## A036666.P1822457372456524982

`∑[n*(4-gcd(2, n))]`
-/

namespace A036666.P1822457372456524982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (4 - (Nat.gcd 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036666.P1822457372456524982

namespace A036666

/-- `∑[n*(4-gcd(2, n))]` -/
def P1822457372456524982.Spec : Prop :=
  ∀ n, P1822457372456524982.a n = A036666 (n + 1)

end A036666

/-! ## A036666.P18184785420551204659

`∑[n*(and(1, n)+2)]`
-/

namespace A036666.P18184785420551204659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036666.P18184785420551204659

namespace A036666

/-- `∑[n*(and(1, n)+2)]` -/
def P18184785420551204659.Spec : Prop :=
  ∀ n, (P18184785420551204659.a n : ℤ) = A036666 (n + 1)

end A036666

/-! ## A036666.P16417859406507243401

`∑[n*or(2, and(1, n))]`
-/

namespace A036666.P16417859406507243401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 2 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036666.P16417859406507243401

namespace A036666

/-- `∑[n*or(2, and(1, n))]` -/
def P16417859406507243401.Spec : Prop :=
  ∀ n, (P16417859406507243401.a n : ℤ) = A036666 (n + 1)

end A036666

/-! ## A036666.P11710942115396693543

`∑[n*xor(2, and(1, n))]`
-/

namespace A036666.P11710942115396693543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.xor 2 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036666.P11710942115396693543

namespace A036666

/-- `∑[n*xor(2, and(1, n))]` -/
def P11710942115396693543.Spec : Prop :=
  ∀ n, (P11710942115396693543.a n : ℤ) = A036666 (n + 1)

end A036666

/-! ## A036666.P11005547124522712092

`∑[n*(n+3-or(1, n))]`
-/

namespace A036666.P11005547124522712092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n + 3 : ℤ) - (Nat.lor 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036666.P11005547124522712092

namespace A036666

/-- `∑[n*(n+3-or(1, n))]` -/
def P11005547124522712092.Spec : Prop :=
  ∀ n, P11005547124522712092.a n = A036666 (n + 1)

end A036666

/-! ## A036666.P10276911916761489692

`∑[gcd(2*n, ∑[2*n])+n]`
-/

namespace A036666.P10276911916761489692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (∑ j ∈ Finset.range (n + 1), f2 j) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036666.P10276911916761489692

namespace A036666

/-- `∑[gcd(2*n, ∑[2*n])+n]` -/
def P10276911916761489692.Spec : Prop :=
  ∀ n, (P10276911916761489692.a n : ℤ) = A036666 (n + 1)

end A036666

/-! ## A036666.P8604547302581453715

`floor(∑[5-a(n-1)]²/5)` with `a(0)=1, a(1)=3`
-/

namespace A036666.P8604547302581453715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 5⌋

end

end A036666.P8604547302581453715

namespace A036666

/-- `floor(∑[5-a(n-1)]²/5)` -/
def P8604547302581453715.Spec : Prop :=
  ∀ n, P8604547302581453715.a n = A036666 (n + 1)

end A036666

/-! ## A036666.P18414856839171714228

`∑[n*∑[a(n-1)-2/a(n-1)]]` with `a(0)=2`
-/

namespace A036666.P18414856839171714228
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - 2 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036666.P18414856839171714228

namespace A036666

/-- `∑[n*∑[a(n-1)-2/a(n-1)]]` -/
def P18414856839171714228.Spec : Prop :=
  ∀ n, P18414856839171714228.a n = (A036666 (n + 1) : ℚ)

end A036666

/-! ## A036666.P3968930364274458122

`A273365(n)/2`
-/

namespace A036666.P3968930364274458122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273365 n : ℚ) / 2

end

end A036666.P3968930364274458122

namespace A036666

/-- `A273365(n)/2` -/
def P3968930364274458122.Spec : Prop :=
  ∀ n, P3968930364274458122.a n = (A036666 (n + 1) : ℚ)

end A036666

/-! ## A036666.P10294593847616646310

`∑[A109043(n)+n]`
-/

namespace A036666.P10294593847616646310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036666.P10294593847616646310

namespace A036666

/-- `∑[A109043(n)+n]` -/
def P10294593847616646310.Spec : Prop :=
  ∀ n, P10294593847616646310.a n = A036666 (n + 1)

end A036666

/-! ## A036666.P10664350307545744410

`∑[n*A010693(n)]`
-/

namespace A036666.P10664350307545744410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036666.P10664350307545744410

namespace A036666

/-- `∑[n*A010693(n)]` -/
def P10664350307545744410.Spec : Prop :=
  ∀ n, P10664350307545744410.a n = A036666 (n + 1)

end A036666

/-! ## A036666.P17621613140162586138

`A003215(n)%A212965(n)`
-/

namespace A036666.P17621613140162586138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003215 n) (A212965 n)

end

end A036666.P17621613140162586138

namespace A036666

/-- `A003215(n)%A212965(n)` -/
def P17621613140162586138.Spec : Prop :=
  ∀ n, P17621613140162586138.a n = A036666 (n + 1)

end A036666

/-! ## A036666.P10742604240738534702

`∪[A147874(n+1), A168668(n)]`
-/

namespace A036666.P10742604240738534702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168668 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036666.P10742604240738534702

namespace A036666

/-- `∪[A147874(n+1), A168668(n)]` -/
def P10742604240738534702.Spec : Prop :=
  ∀ n, (P10742604240738534702.a n : ℤ) = A036666 (n + 1)

end A036666

/-! ## A036666.P2050714318652632281

`A375352(n+1)%A135556(n+1)`
-/

namespace A036666.P2050714318652632281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375352 (n + 1)) (A135556 (n + 1))

end

end A036666.P2050714318652632281

namespace A036666

/-- `A375352(n+1)%A135556(n+1)` -/
def P2050714318652632281.Spec : Prop :=
  ∀ n, P2050714318652632281.a n = A036666 (n + 1)

end A036666

/-! ## A036666.P16877772244617501583

`∑[n*A176059(n+1)]`
-/

namespace A036666.P16877772244617501583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A176059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036666.P16877772244617501583

namespace A036666

/-- `∑[n*A176059(n+1)]` -/
def P16877772244617501583.Spec : Prop :=
  ∀ n, P16877772244617501583.a n = A036666 (n + 1)

end A036666

/-! ## A036666.P14058141083152796163

`A004526(n+1)*A047221(n+1)`
-/

namespace A036666.P14058141083152796163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) * A047221 (n + 1)

end

end A036666.P14058141083152796163

namespace A036666

/-- `A004526(n+1)*A047221(n+1)` -/
def P14058141083152796163.Spec : Prop :=
  ∀ n, P14058141083152796163.a n = A036666 (n + 1)

end A036666

/-! ## A036666.P6360885620806968855

`A008738(A047209(n+1))`
-/

namespace A036666.P6360885620806968855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 (A047209 (n + 1)).toNat

end

end A036666.P6360885620806968855

namespace A036666

/-- `A008738(A047209(n+1))` -/
def P6360885620806968855.Spec : Prop :=
  ∀ n, P6360885620806968855.a n = A036666 (n + 1)

end A036666

/-!
# A036667: Numbers of the form 2^i*3^j, i+j even.

The programs for A036667, there is no canonical definition to state claims against.
-/

/-! ## A036667.P4555366417760012237

`∪[A025618(n+1), A025628(n+1)]`
-/

namespace A036667.P4555366417760012237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036667.P4555366417760012237

/-! ## A036667.P8034274022462434547

`∪[6*A025620(n+1), A025620(n+1)]`
-/

namespace A036667.P8034274022462434547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A025620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036667.P8034274022462434547

/-! ## A036667.P2205789397701772667

`record[A003586(n+1)*A033999(A069352(n+1))]`
-/

namespace A036667.P2205789397701772667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) * A033999 (A069352 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036667.P2205789397701772667

/-! ## A036667.P2371332601020181926

`record[A003586(n+1)*A033999(A227861(n+1))]`
-/

namespace A036667.P2371332601020181926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) * A033999 (A227861 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036667.P2371332601020181926

/-! ## A036667.P13720396851817695893

`∩[A003586(n+1), A155567(n+1)]`
-/

namespace A036667.P13720396851817695893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036667.P13720396851817695893

/-! ## A036667.P14180522174543046810

`∩[A003586(n+1), A155569(n+1)]`
-/

namespace A036667.P14180522174543046810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036667.P14180522174543046810

/-! ## A036667.P4047188147390278236

`filter[A003586(n+1), A373136(#)]`
-/

namespace A036667.P4047188147390278236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A036667.P4047188147390278236

/-!
# A036668: Hati numbers: of form 2^i*3^j*k, i+j even, (k,6)=1.

The programs for A036668, the canonical program `A036668.P17602112398128853294` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036668 has offset 1).

The definition of A036668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036668.P13870346813791250552

`eq[0, A182582(n+1)]+1`
-/

namespace A036668.P13870346813791250552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182582 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036668.P13870346813791250552

namespace A036668

/-- `eq[0, A182582(n+1)]+1` -/
def P13870346813791250552.Spec : Prop :=
  ∀ n, (P13870346813791250552.a n : ℤ) = A036668 (n + 1)

end A036668

/-! ## A036668.P11459009054109910867

`A325498(n)+a(n-1)` with `a(0)=1`
-/

namespace A036668.P11459009054109910867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325498 n + a (n - 1)

end

end A036668.P11459009054109910867

namespace A036668

/-- `A325498(n)+a(n-1)` -/
def P11459009054109910867.Spec : Prop :=
  ∀ n, P11459009054109910867.a n = A036668 (n + 1)

end A036668

/-! ## A036668.P9027968471918750991

`comp[A325424(n+1)-1]+1`
-/

namespace A036668.P9027968471918750991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325424 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A036668.P9027968471918750991

namespace A036668

/-- `comp[A325424(n+1)-1]+1` -/
def P9027968471918750991.Spec : Prop :=
  ∀ n, (P9027968471918750991.a n : ℤ) = A036668 (n + 1)

end A036668

/-! ## A036668.P540043767903663269

`record[A325424(n+2)/A020639(A325424(n+2))]`
-/

namespace A036668.P540043767903663269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325424 (n + 2) : ℚ) / (A020639 (A325424 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036668.P540043767903663269

namespace A036668

/-- `record[A325424(n+2)/A020639(A325424(n+2))]` -/
def P540043767903663269.Spec : Prop :=
  ∀ n, P540043767903663269.a n = (A036668 (n + 1) : ℚ)

end A036668

/-! ## A036668.P17602112398128853294

`filter[A183300(n+1), A373136(#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036668

/-- `filter[A183300(n+1), A373136(#)]` -/
def P17602112398128853294.Spec : Prop :=
  ∀ n, P17602112398128853294.a n = A036668 (n + 1)

theorem P17602112398128853294.correct : P17602112398128853294.Spec := by
  intro n
  simp only [A036668, Nat.add_sub_cancel]

end A036668

/-! ## A036668.P229209097815795442

`filter[n+1, A373136(#)]`
-/

namespace A036668.P229209097815795442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j) = 1) n)

end

end A036668.P229209097815795442

namespace A036668

/-- `filter[n+1, A373136(#)]` -/
def P229209097815795442.Spec : Prop :=
  ∀ n, (P229209097815795442.a n : ℤ) = A036668 (n + 1)

end A036668

/-! ## A036668.P7905899911470711952

`eq[1, A008836(A102440(n+1))]+1`
-/

namespace A036668.P7905899911470711952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A102440 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036668.P7905899911470711952

namespace A036668

/-- `eq[1, A008836(A102440(n+1))]+1` -/
def P7905899911470711952.Spec : Prop :=
  ∀ n, (P7905899911470711952.a n : ℤ) = A036668 (n + 1)

end A036668

/-! ## A036668.P16225474601199149583

`record[(n+1)*A059841(A169611(n+1))]`
-/

namespace A036668.P16225474601199149583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A059841 (A169611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036668.P16225474601199149583

namespace A036668

/-- `record[(n+1)*A059841(A169611(n+1))]` -/
def P16225474601199149583.Spec : Prop :=
  ∀ n, P16225474601199149583.a n = A036668 (n + 1)

end A036668

/-! ## A036668.P2566969991897437801

`eq[0, A169611(A169611(n+1)²+1)]+1`
-/

namespace A036668.P2566969991897437801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A169611 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036668.P2566969991897437801

namespace A036668

/-- `eq[0, A169611(A169611(n+1)²+1)]+1` -/
def P2566969991897437801.Spec : Prop :=
  ∀ n, (P2566969991897437801.a n : ℤ) = A036668 (n + 1)

end A036668

/-! ## A036668.P16873149861977017982

`eq[A014578(n), A285384(n+1)]`
-/

namespace A036668.P16873149861977017982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036668.P16873149861977017982

namespace A036668

/-- `eq[A014578(n), A285384(n+1)]` -/
def P16873149861977017982.Spec : Prop :=
  ∀ n, (P16873149861977017982.a n : ℤ) = A036668 (n + 1)

end A036668

/-! ## A036668.P8616644578802346124

`eq[A014578(n), A284948(2*n+1)]`
-/

namespace A036668.P8616644578802346124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284948 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036668.P8616644578802346124

namespace A036668

/-- `eq[A014578(n), A284948(2*n+1)]` -/
def P8616644578802346124.Spec : Prop :=
  ∀ n, (P8616644578802346124.a n : ℤ) = A036668 (n + 1)

end A036668

/-! ## A036668.P91029517503320434

`record[gcd(n+1, A169611(A169611(n+1)²²+1))]`
-/

namespace A036668.P91029517503320434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A169611 ((A169611 (n + 1) ^ 2) ^ 2 + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036668.P91029517503320434

namespace A036668

/-- `record[gcd(n+1, A169611(A169611(n+1)²²+1))]` -/
def P91029517503320434.Spec : Prop :=
  ∀ n, (P91029517503320434.a n : ℤ) = A036668 (n + 1)

end A036668

/-!
# A036669: G.f.: A(x) = x*cycle_index(S4, B(x)-1), where B(x) is g.f. for A000598.

The programs for A036669, there is no canonical definition to state claims against.
-/

/-! ## A036669.P6968580855048001015

`A000678(n)%A000598(n)`
-/

namespace A036669.P6968580855048001015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000678 n) (A000598 n)

end

end A036669.P6968580855048001015

/-! ## A036669.P9156126379720000500

`A000678(A028310(n))-A000598(n)`
-/

namespace A036669.P9156126379720000500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000678 (A028310 n).toNat - A000598 n

end

end A036669.P9156126379720000500

/-! ## A036669.P6791824758290785215

`A000678(A233583(n+1))-A000598(n)`
-/

namespace A036669.P6791824758290785215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000678 (A233583 (n + 1)).toNat - A000598 n

end

end A036669.P6791824758290785215

/-! ## A036669.P14939639671436093489

`A000678(A000007(n)+n)-A000598(n)`
-/

namespace A036669.P14939639671436093489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000678 (A000007 n + (n : ℤ)).toNat - A000598 n

end

end A036669.P14939639671436093489

/-! ## A036669.P14292399133651555143

`A000678(A000038(n)+n)-A000598(n)`
-/

namespace A036669.P14292399133651555143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000678 (A000038 n + (n : ℤ)).toNat - A000598 n

end

end A036669.P14292399133651555143

/-! ## A036669.P11876611601715111345

`A000007(n)-(A000598(n)-A000678(n))`
-/

namespace A036669.P11876611601715111345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (A000598 n - A000678 n)

end

end A036669.P11876611601715111345

/-! ## A036669.P17010224567430868864

`A000678(n)-A000598(n)*A057427(n)`
-/

namespace A036669.P17010224567430868864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000678 n - A000598 n * A057427 n

end

end A036669.P17010224567430868864

/-!
# A036670: G.f.: A(x) = x*cycle_index(S5, B(x)-1), where B(x) is g.f. for A000598.

The programs for A036670, there is no canonical definition to state claims against.
-/

/-! ## A036670.P12147280119526822346

`round(A228419(n)/A005380(3*n+2))`
-/

namespace A036670.P12147280119526822346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A228419 n : ℚ) / (A005380 (3 * n + 2) : ℚ))

end

end A036670.P12147280119526822346

/-! ## A036670.P16311516149676817397

`A395967(A025727(n+1))`
-/

namespace A036670.P16311516149676817397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395967 (A025727 (n + 1)).toNat

end

end A036670.P16311516149676817397

/-! ## A036670.P14895503077136935129

`A264595(lt[A126442(n+1), n+1])`
-/

namespace A036670.P14895503077136935129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126442 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264595 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A036670.P14895503077136935129

/-! ## A036670.P6086686162202402395

`floor(A057779(n+5)/A002522(n+1))`
-/

namespace A036670.P6086686162202402395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057779 (n + 5) : ℚ) / (A002522 (n + 1) : ℚ)⌋

end

end A036670.P6086686162202402395

/-! ## A036670.P3262327022626724597

`A085970(A192586(round(n²/12)+1)+1)`
-/

namespace A036670.P3262327022626724597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085970 (A192586 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) + 1).toNat + 1).toNat

end

end A036670.P3262327022626724597

/-!
# A036671: Number of isomers C_n H_{2n} without double bonds.

The programs for A036671, there is no canonical definition to state claims against.
-/

/-! ## A036671.P4045971966302789590

`A071542(A057366(ceil(3^(n-1))))`
-/

namespace A036671.P4045971966302789590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (A057366 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

end

end A036671.P4045971966302789590

/-! ## A036671.P13623044346199144903

`A054899(A351012(2*(n+2))+A000045(2*n+1))`
-/

namespace A036671.P13623044346199144903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A351012 (2 * (n + 2)) + A000045 (2 * n + 1)).toNat

end

end A036671.P13623044346199144903

/-! ## A036671.P11106817508023378785

`A008651(4*A077939(n))`
-/

namespace A036671.P11106817508023378785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (4 * A077939 n).toNat

end

end A036671.P11106817508023378785

/-! ## A036671.P7397631566457890018

`A033182(4*A077939(n))`
-/

namespace A036671.P7397631566457890018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (4 * A077939 n).toNat

end

end A036671.P7397631566457890018

/-! ## A036671.P14626893098038033043

`A185712((n+1)*A001519(n))`
-/

namespace A036671.P14626893098038033043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 ((n + 1 : ℤ) * A001519 n).toNat

end

end A036671.P14626893098038033043

/-!
# A036672: Number of stereoisomers of acyclic hydrocarbons with n carbon atoms.

The programs for A036672, there is no canonical definition to state claims against.
-/

/-! ## A036672.P14760299270323718043

`A211781(or(n, a(n-1)))` with `a(0)=1, a(1)=3`
-/

namespace A036672.P14760299270323718043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A211781 (Int.lor (n : ℤ) (a (n - 1))).toNat

end

end A036672.P14760299270323718043

/-! ## A036672.P8376969960032856245

`A036048(A008023(n+1))`
-/

namespace A036672.P8376969960032856245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036048 (A008023 (n + 1)).toNat

end

end A036672.P8376969960032856245

/-!
# A036673: Number of stereoisomers of all n-node acyclic hydrocarbons with no triple bonds.

The programs for A036673, there is no canonical definition to state claims against.
-/

/-! ## A036673.P14736346612680232964

`A134482(A168357(n))`
-/

namespace A036673.P14736346612680232964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134482 (A168357 n).toNat

end

end A036673.P14736346612680232964

/-! ## A036673.P188857943815552232

`A106432(∑[∑[A002996(n+1)]])`
-/

namespace A036673.P188857943815552232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002996 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A036673.P188857943815552232

/-! ## A036673.P6604725638960862517

`A292973(3*n+1)+record[A086425(n)]`
-/

namespace A036673.P6604725638960862517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292973 (3 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036673.P6604725638960862517

/-!
# A036674: G.f.: A(x) = (1/2)*x*(B(x)^2+B(x^2)), where B(x) = g.f. for A000600.

The programs for A036674, there is no canonical definition to state claims against.
-/

/-! ## A036674.P12598543745863417369

`A058488(A026796(n))`
-/

namespace A036674.P12598543745863417369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058488 (A026796 n).toNat

end

end A036674.P12598543745863417369

/-! ## A036674.P1459069750842800676

`A058488(A286316(n))`
-/

namespace A036674.P1459069750842800676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058488 (A286316 n).toNat

end

end A036674.P1459069750842800676

/-! ## A036674.P10012729506958175804

`floor(A207411(n+1)/A005635(n))`
-/

namespace A036674.P10012729506958175804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A207411 (n + 1) : ℚ) / (A005635 n : ℚ)⌋

end

end A036674.P10012729506958175804

/-! ## A036674.P1241818600529318839

`A058488(A003114(n)-A025159(n+1))`
-/

namespace A036674.P1241818600529318839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058488 (A003114 n - A025159 (n + 1)).toNat

end

end A036674.P1241818600529318839

/-!
# A036675: G.f. satisfies A(x) = 1 + x*A(x)^2*A(x^2).

The programs for A036675, there is no canonical definition to state claims against.
-/

/-! ## A036675.P6706852542743858694

`A108954(A376810(n))`
-/

namespace A036675.P6706852542743858694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A376810 n).toNat

end

end A036675.P6706852542743858694

/-! ## A036675.P6990956045771618989

`A081753(A173278(2*n+3))`
-/

namespace A036675.P6990956045771618989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A173278 (2 * n + 3)).toNat

end

end A036675.P6990956045771618989

/-! ## A036675.P10026496914843804088

`A227373(n)-A036593(A036629(n))`
-/

namespace A036675.P10026496914843804088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227373 n - A036593 (A036629 n).toNat

end

end A036675.P10026496914843804088

/-! ## A036675.P3887531361837253784

`A227373(n)-A036593(A036636(n))`
-/

namespace A036675.P3887531361837253784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227373 n - A036593 (A036636 n).toNat

end

end A036675.P3887531361837253784

/-!
# A036676: Used by Polya in calculating A000598.

The programs for A036676, there is no canonical definition to state claims against.
-/

/-! ## A036676.P11199549327740924401

`∑[A073778(A062399(n))]`
-/

namespace A036676.P11199549327740924401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073778 (A062399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036676.P11199549327740924401

/-! ## A036676.P15656692309689105173

`∑[A073778(A120126(n))]`
-/

namespace A036676.P15656692309689105173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073778 (A120126 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036676.P15656692309689105173

/-! ## A036676.P4283389005999452277

`∑[A018851(A073778(n)²)]`
-/

namespace A036676.P4283389005999452277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A073778 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036676.P4283389005999452277

/-! ## A036676.P7479749389672721324

`A056926(∑[A073778(n)]²)`
-/

namespace A036676.P7479749389672721324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A036676.P7479749389672721324

/-! ## A036676.P6447624214507030344

`∑[A073778(n)%A384754(n)]`
-/

namespace A036676.P6447624214507030344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073778 n) (A384754 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036676.P6447624214507030344

/-!
# A036677: Used by Polya in calculating A000598.

The programs for A036677, there is no canonical definition to state claims against.
-/

/-! ## A036677.P5370986423800122549

`∑[∑[A118088(C(n, 6))]]`
-/

namespace A036677.P5370986423800122549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118088 (Nat.choose n 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036677.P5370986423800122549

/-! ## A036677.P8685627434604688496

`A168201(A293114(n))`
-/

namespace A036677.P8685627434604688496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A293114 n).toNat

end

end A036677.P8685627434604688496

/-! ## A036677.P750915184065815840

`A168201(A293746(n))`
-/

namespace A036677.P750915184065815840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A293746 n).toNat

end

end A036677.P750915184065815840

/-! ## A036677.P3260256957936255204

`A168201(A293747(n))`
-/

namespace A036677.P3260256957936255204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A293747 n).toNat

end

end A036677.P3260256957936255204

/-! ## A036677.P3662254597112817615

`A168201(A293748(n))`
-/

namespace A036677.P3662254597112817615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A293748 n).toNat

end

end A036677.P3662254597112817615

/-!
# A036678: Used by Polya in calculating A000598.

The programs for A036678, there is no canonical definition to state claims against.
-/

/-! ## A036678.P3066051836438453223

`A211540(floor(sqrt(A034332(n))))`
-/

namespace A036678.P3066051836438453223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (Int.sqrt (A034332 n)).toNat

end

end A036678.P3066051836438453223

/-! ## A036678.P9703668198882367269

`floor(A122741(n+3)/A122784(3*n+4))`
-/

namespace A036678.P9703668198882367269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A122741 (n + 3) : ℚ) / (A122784 (3 * n + 4) : ℚ)⌋

end

end A036678.P9703668198882367269

/-! ## A036678.P3314179000383951795

`A095126(n+1)%A322390(A000040(n+1))`
-/

namespace A036678.P3314179000383951795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095126 (n + 1)) (A322390 (A000040 (n + 1)).toNat)

end

end A036678.P3314179000383951795

/-! ## A036678.P5595370721750263625

`A131829(C(n, 8))`
-/

namespace A036678.P5595370721750263625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131829 (Nat.choose n 8)

end

end A036678.P5595370721750263625

/-! ## A036678.P15499035824142605049

`A211317(C(n+1, 9))`
-/

namespace A036678.P15499035824142605049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211317 (Nat.choose (n + 1) 9)

end

end A036678.P15499035824142605049

/-!
# A036679: a(n) = n^n - n!.

The programs for A036679, the canonical program `A036679.P12226400419972912467` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036679 has offset 0).

The definition of A036679 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n-n!` (program `A036679.P12226400419972912467`, by `A036679.P12226400419972912467.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036679.P12226400419972912467

`n^n-n!`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036679

/-- `n^n-n!` -/
def P12226400419972912467.Spec : Prop :=
  ∀ n, P12226400419972912467.a n = A036679 n

theorem P12226400419972912467.correct : P12226400419972912467.Spec := by
  intro n
  simp only [A036679]

end A036679

/-! ## A036679.P1835102831891869089

`cot(-acot(n!))+n^n`
-/

namespace A036679.P1835102831891869089
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (-SequenceMachineLib.acot (Nat.factorial n : ℝ)) + (n ^ n : ℝ)

end

end A036679.P1835102831891869089

namespace A036679

/-- `cot(-acot(n!))+n^n` -/
def P1835102831891869089.Spec : Prop :=
  ∀ n, P1835102831891869089.a n = (A036679 n : ℝ)

end A036679

/-! ## A036679.P6619254373073064310

`n^n-∏[round(1/acot(n))]`
-/

namespace A036679.P6619254373073064310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036679.P6619254373073064310

namespace A036679

/-- `n^n-∏[round(1/acot(n))]` -/
def P6619254373073064310.Spec : Prop :=
  ∀ n, P6619254373073064310.a n = A036679 n

end A036679

/-! ## A036679.P2972803471642640949

`n^n-∏[ceil(abs(γ-n))]`
-/

namespace A036679.P2972803471642640949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036679.P2972803471642640949

namespace A036679

/-- `n^n-∏[ceil(abs(γ-n))]` -/
def P2972803471642640949.Spec : Prop :=
  ∀ n, P2972803471642640949.a n = A036679 n

end A036679

/-! ## A036679.P15738981912520678640

`abs(n!-A000312(n))`
-/

namespace A036679.P15738981912520678640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n : ℤ) - A000312 n|

end

end A036679.P15738981912520678640

namespace A036679

/-- `abs(n!-A000312(n))` -/
def P15738981912520678640.Spec : Prop :=
  ∀ n, P15738981912520678640.a n = A036679 n

end A036679

/-! ## A036679.P7970290600210975388

`abs(n^n-A000142(n))`
-/

namespace A036679.P7970290600210975388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ n : ℤ) - A000142 n|

end

end A036679.P7970290600210975388

namespace A036679

/-- `abs(n^n-A000142(n))` -/
def P7970290600210975388.Spec : Prop :=
  ∀ n, P7970290600210975388.a n = A036679 n

end A036679

/-! ## A036679.P13812194736772911472

`abs(A081123(2*n)-n^n)`
-/

namespace A036679.P13812194736772911472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081123 (2 * n) - (n ^ n : ℤ)|

end

end A036679.P13812194736772911472

namespace A036679

/-- `abs(A081123(2*n)-n^n)` -/
def P13812194736772911472.Spec : Prop :=
  ∀ n, P13812194736772911472.a n = A036679 n

end A036679

/-! ## A036679.P5309788496918300618

`abs(A000142(n)-A000312(n))`
-/

namespace A036679.P5309788496918300618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000142 n - A000312 n|

end

end A036679.P5309788496918300618

namespace A036679

/-- `abs(A000142(n)-A000312(n))` -/
def P5309788496918300618.Spec : Prop :=
  ∀ n, P5309788496918300618.a n = A036679 n

end A036679

/-! ## A036679.P10909616600078067810

`(A248744(n)-A000142(n))/2`
-/

namespace A036679.P10909616600078067810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248744 n - A000142 n : ℚ) / 2

end

end A036679.P10909616600078067810

namespace A036679

/-- `(A248744(n)-A000142(n))/2` -/
def P10909616600078067810.Spec : Prop :=
  ∀ n, P10909616600078067810.a n = (A036679 n : ℚ)

end A036679

/-! ## A036679.P6644404607675140171

`(n^n-A000142(n))*gcd(3, A000040(n+2))`
-/

namespace A036679.P6644404607675140171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ n : ℤ) - A000142 n) * (Int.gcd 3 (A000040 (n + 2)) : ℤ)

end

end A036679.P6644404607675140171

namespace A036679

/-- `(n^n-A000142(n))*gcd(3, A000040(n+2))` -/
def P6644404607675140171.Spec : Prop :=
  ∀ n, P6644404607675140171.a n = A036679 n

end A036679

/-!
# A036681: T(n+2,2) with T as in A036355.

The programs for A036681, the canonical program `A036681.P10320585013589590924` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036681 has offset 0).

The definition of A036681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036681.P4289850782262312596

`A370304(n)+A023610(n)`
-/

namespace A036681.P4289850782262312596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370304 n + A023610 n

end

end A036681.P4289850782262312596

namespace A036681

/-- `A370304(n)+A023610(n)` -/
def P4289850782262312596.Spec : Prop :=
  ∀ n, P4289850782262312596.a n = A036681 n

end A036681

/-! ## A036681.P10320585013589590924

`∑[A054455(n)+A006367(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036681

/-- `∑[A054455(n)+A006367(n)]` -/
def P10320585013589590924.Spec : Prop :=
  ∀ n, P10320585013589590924.a n = A036681 n

theorem P10320585013589590924.correct : P10320585013589590924.Spec := by
  intro n
  simp only [A036681]

end A036681

/-! ## A036681.P3319296134225993116

`A001629(n+2)+A001628(n)`
-/

namespace A036681.P3319296134225993116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 2) + A001628 n

end

end A036681.P3319296134225993116

namespace A036681

/-- `A001629(n+2)+A001628(n)` -/
def P3319296134225993116.Spec : Prop :=
  ∀ n, P3319296134225993116.a n = A036681 n

end A036681

/-! ## A036681.P10972533221845228444

`A001628(n)+∑[A010049(n+1)]`
-/

namespace A036681.P10972533221845228444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036681.P10972533221845228444

namespace A036681

/-- `A001628(n)+∑[A010049(n+1)]` -/
def P10972533221845228444.Spec : Prop :=
  ∀ n, P10972533221845228444.a n = A036681 n

end A036681

/-! ## A036681.P94850687638283356

`A010049(n+1)+∑[A054455(n)]`
-/

namespace A036681.P94850687638283356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036681.P94850687638283356

namespace A036681

/-- `A010049(n+1)+∑[A054455(n)]` -/
def P94850687638283356.Spec : Prop :=
  ∀ n, P94850687638283356.a n = A036681 n

end A036681

/-! ## A036681.P15771780507852917876

`∑[A055243(n)+A010049(n+1)]`
-/

namespace A036681.P15771780507852917876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055243 n + A010049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036681.P15771780507852917876

namespace A036681

/-- `∑[A055243(n)+A010049(n+1)]` -/
def P15771780507852917876.Spec : Prop :=
  ∀ n, P15771780507852917876.a n = A036681 n

end A036681

/-! ## A036681.P9427020867402885489

`A001629(n+2)+∑[A055243(n)]`
-/

namespace A036681.P9427020867402885489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036681.P9427020867402885489

namespace A036681

/-- `A001629(n+2)+∑[A055243(n)]` -/
def P9427020867402885489.Spec : Prop :=
  ∀ n, P9427020867402885489.a n = A036681 n

end A036681

/-! ## A036681.P9341716994294642802

`A001628(n)+A001628(n)-A129707(n+1)`
-/

namespace A036681.P9341716994294642802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 n + (A001628 n - A129707 (n + 1))

end

end A036681.P9341716994294642802

namespace A036681

/-- `A001628(n)+A001628(n)-A129707(n+1)` -/
def P9341716994294642802.Spec : Prop :=
  ∀ n, P9341716994294642802.a n = A036681 n

end A036681

/-! ## A036681.P4738296079630866497

`A261055(n+1)-A001628(n+1)`
-/

namespace A036681.P4738296079630866497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261055 (n + 1) - A001628 (n + 1)

end

end A036681.P4738296079630866497

namespace A036681

/-- `A261055(n+1)-A001628(n+1)` -/
def P4738296079630866497.Spec : Prop :=
  ∀ n, P4738296079630866497.a n = A036681 n

end A036681

/-! ## A036681.P3241055027350610458

`Δ[A001628(n+1)-A023610(n+1)]`
-/

namespace A036681.P3241055027350610458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 (n + 1) - A023610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036681.P3241055027350610458

namespace A036681

/-- `Δ[A001628(n+1)-A023610(n+1)]` -/
def P3241055027350610458.Spec : Prop :=
  ∀ n, P3241055027350610458.a n = A036681 n

end A036681

/-! ## A036681.P14252834475711054476

`A001628(n)+record[A067418(n)]`
-/

namespace A036681.P14252834475711054476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036681.P14252834475711054476

namespace A036681

/-- `A001628(n)+record[A067418(n)]` -/
def P14252834475711054476.Spec : Prop :=
  ∀ n, P14252834475711054476.a n = A036681 n

end A036681

/-! ## A036681.P4278678916559634260

`A036355(∑[n+2]+3)`
-/

namespace A036681.P4278678916559634260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A036681.P4278678916559634260

namespace A036681

/-- `A036355(∑[n+2]+3)` -/
def P4278678916559634260.Spec : Prop :=
  ∀ n, P4278678916559634260.a n = A036681 n

end A036681

/-! ## A036681.P16728722552390404370

`A205575(∑[n+3])`
-/

namespace A036681.P16728722552390404370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205575 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036681.P16728722552390404370

namespace A036681

/-- `A205575(∑[n+3])` -/
def P16728722552390404370.Spec : Prop :=
  ∀ n, P16728722552390404370.a n = A036681 n

end A036681

/-! ## A036681.P8667902489621867053

`A209126(∑[n+3]+1)`
-/

namespace A036681.P8667902489621867053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209126 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A036681.P8667902489621867053

namespace A036681

/-- `A209126(∑[n+3]+1)` -/
def P8667902489621867053.Spec : Prop :=
  ∀ n, P8667902489621867053.a n = A036681 n

end A036681

/-! ## A036681.P4371596348814452213

`A036355(Δ[A006503(n)])%A077970(n+2)`
-/

namespace A036681.P4371596348814452213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036355 (f1 (n + 1) - f1 n).toNat) (A077970 (n + 2))

end

end A036681.P4371596348814452213

namespace A036681

/-- `A036355(Δ[A006503(n)])%A077970(n+2)` -/
def P4371596348814452213.Spec : Prop :=
  ∀ n, P4371596348814452213.a n = A036681 n

end A036681

/-!
# A036682: T(n+3,3) with T as in A036355.

The programs for A036682, there is no canonical definition to state claims against.
-/

/-! ## A036682.P4573644156298680558

`A001872(n)+2*A001628(n)`
-/

namespace A036682.P4573644156298680558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001872 n + 2 * A001628 n

end

end A036682.P4573644156298680558

/-! ## A036682.P6165523463834635295

`A036355(∑[n+3]+6)`
-/

namespace A036682.P6165523463834635295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A036682.P6165523463834635295

/-! ## A036682.P3055684554023195147

`A244415(2*n+1)+A036355(A167614(n+2))`
-/

namespace A036682.P3055684554023195147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (2 * n + 1) + A036355 (A167614 (n + 2)).toNat

end

end A036682.P3055684554023195147

/-! ## A036682.P3397618994825338554

`A036355(A034856(n+2)+5)%A252212(n+1)`
-/

namespace A036682.P3397618994825338554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036355 (A034856 (n + 2) + 5).toNat) (A252212 (n + 1))

end

end A036682.P3397618994825338554

/-! ## A036682.P472669088522784662

`and(1, A215828(n))*A036355(A034856(n+2)+5)`
-/

namespace A036682.P472669088522784662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A215828 n) * A036355 (A034856 (n + 2) + 5).toNat

end

end A036682.P472669088522784662

/-! ## A036682.P11477370812690098131

`and(1, A003625(n+1))*A036355(A034856(n+2)+5)`
-/

namespace A036682.P11477370812690098131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A003625 (n + 1)) * A036355 (A034856 (n + 2) + 5).toNat

end

end A036682.P11477370812690098131

/-! ## A036682.P3964001366445027106

`and(1, A215106(n+1))*A036355(A034856(n+2)+5)`
-/

namespace A036682.P3964001366445027106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A215106 (n + 1)) * A036355 (A034856 (n + 2) + 5).toNat

end

end A036682.P3964001366445027106

/-! ## A036682.P11851097291231198418

`and(1, A215131(n+1))*A036355(A034856(n+2)+5)`
-/

namespace A036682.P11851097291231198418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A215131 (n + 1)) * A036355 (A034856 (n + 2) + 5).toNat

end

end A036682.P11851097291231198418

/-! ## A036682.P8621425234351851205

`A007318(A000217(n+6))*A036355(A034856(n+2)+5)`
-/

namespace A036682.P8621425234351851205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 6)).toNat * A036355 (A034856 (n + 2) + 5).toNat

end

end A036682.P8621425234351851205

/-!
# A036683: T(n+4,4) with T as in A036355.

The programs for A036683, there is no canonical definition to state claims against.
-/

/-! ## A036683.P2745491018697872798

`A001628(n)+3*A001872(n)+A001873(n)`
-/

namespace A036683.P2745491018697872798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 n + 3 * A001872 n + A001873 n

end

end A036683.P2745491018697872798

/-! ## A036683.P5214688755686394985

`A036355(A056000(n)+14)`
-/

namespace A036683.P5214688755686394985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (A056000 n + 14).toNat

end

end A036683.P5214688755686394985

/-! ## A036683.P3002384247388512813

`A036355(A167614(n+3)+1)`
-/

namespace A036683.P3002384247388512813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (A167614 (n + 3) + 1).toNat

end

end A036683.P3002384247388512813

/-! ## A036683.P554465181097932059

`A036355(A000217(n+4)+4)`
-/

namespace A036683.P554465181097932059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (A000217 (n + 4) + 4).toNat

end

end A036683.P554465181097932059

/-! ## A036683.P16055206210665627950

`A036355(Δ[A026054(n+3)-n²])`
-/

namespace A036683.P16055206210665627950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (f1 (n + 1) - f1 n).toNat

end

end A036683.P16055206210665627950

/-! ## A036683.P17724893044330468474

`A036355(A046691(n+4)-2-Δ[n²])`
-/

namespace A036683.P17724893044330468474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (A046691 (n + 4) - 2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A036683.P17724893044330468474

/-! ## A036683.P6832603632212596411

`A036355(A000124(n+6)-6-2*(n+1))`
-/

namespace A036683.P6832603632212596411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (A000124 (n + 6) - 6 - (2 * (n + 1) : ℤ)).toNat

end

end A036683.P6832603632212596411

/-! ## A036683.P947048045331544905

`A036355(∑[n+5]+6-abs((-1)^n))`
-/

namespace A036683.P947048045331544905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (((∑ j ∈ Finset.range (n + 1), f1 j + 6 : ℕ) : ℤ) - |(-1) ^ n|).toNat

end

end A036683.P947048045331544905

/-!
# A036684: T(n+5,5) with T as in A036355.

The programs for A036684, there is no canonical definition to state claims against.
-/

/-! ## A036684.P15237940237504667908

`3*A001872(n)+4*A001873(n)+A001874(n)`
-/

namespace A036684.P15237940237504667908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001872 n + 4 * A001873 n + A001874 n

end

end A036684.P15237940237504667908

/-! ## A036684.P15166909164809818287

`A036355(A167499(n+4))`
-/

namespace A036684.P15166909164809818287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (A167499 (n + 4)).toNat

end

end A036684.P15166909164809818287

/-! ## A036684.P17883931118539119188

`A036355(A056115(n)+20)`
-/

namespace A036684.P17883931118539119188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (A056115 n + 20).toNat

end

end A036684.P17883931118539119188

/-! ## A036684.P17791493530952920759

`A036355(A166136(n+4)-1)`
-/

namespace A036684.P17791493530952920759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (A166136 (n + 4) - 1).toNat

end

end A036684.P17791493530952920759

/-! ## A036684.P12061194173761898764

`A036355(A000124(n+5)+4)`
-/

namespace A036684.P12061194173761898764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (A000124 (n + 5) + 4).toNat

end

end A036684.P12061194173761898764

/-! ## A036684.P1903340514880638037

`A036355(A000217(n+5)+5)`
-/

namespace A036684.P1903340514880638037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (A000217 (n + 5) + 5).toNat

end

end A036684.P1903340514880638037

/-! ## A036684.P609400561540865224

`A036355(A046691(n+3)+9)`
-/

namespace A036684.P609400561540865224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (A046691 (n + 3) + 9).toNat

end

end A036684.P609400561540865224

/-! ## A036684.P4867776330480900882

`A036355(A055999(n+3))`
-/

namespace A036684.P4867776330480900882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (A055999 (n + 3)).toNat

end

end A036684.P4867776330480900882

/-! ## A036684.P11161190928754076616

`A036355(Δ[A026054(n+3)])`
-/

namespace A036684.P11161190928754076616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (f1 (n + 1) - f1 n).toNat

end

end A036684.P11161190928754076616

/-! ## A036684.P5514138748492743224

`A036355(A052905(n+3)-1)`
-/

namespace A036684.P5514138748492743224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (A052905 (n + 3) - 1).toNat

end

end A036684.P5514138748492743224

/-! ## A036684.P18087486711665865493

`A036355(A034856(n+5)-4)`
-/

namespace A036684.P18087486711665865493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (A034856 (n + 5) - 4).toNat

end

end A036684.P18087486711665865493

/-! ## A036684.P11416911907751113726

`A036355(Δ[A023545(n+2)]-2)`
-/

namespace A036684.P11416911907751113726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (f1 (n + 1) - f1 n - 2).toNat

end

end A036684.P11416911907751113726

/-!
# A036685: List of single-heap P-positions in Grundy's game.

The programs for A036685, there is no canonical definition to state claims against.
-/

/-! ## A036685.P12703799687776926607

`eq[0, A002188(n)]`
-/

namespace A036685.P12703799687776926607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002188 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036685.P12703799687776926607

/-! ## A036685.P5319823836622206645

`record[gcd(n, A002188(n%(n+1)))]`
-/

namespace A036685.P5319823836622206645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A002188 (n % (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036685.P5319823836622206645

/-! ## A036685.P1721609749986803004

`record[n-A000040(n+1)*A002188(n)]`
-/

namespace A036685.P1721609749986803004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000040 (n + 1) * A002188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036685.P1721609749986803004

/-! ## A036685.P6609999522327831641

`record[n-A000203(n+1)*A002188(n)]`
-/

namespace A036685.P6609999522327831641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000203 (n + 1) * A002188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036685.P6609999522327831641

/-! ## A036685.P14988823654347173571

`record[n-A018252(n+1)*A002188(n)]`
-/

namespace A036685.P14988823654347173571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A018252 (n + 1) * A002188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036685.P14988823654347173571

/-!
# A036686: Single-heap P-positions in misere version of Grundy's game.

The programs for A036686, there is no canonical definition to state claims against.
-/

/-! ## A036686.P347347187006575598

`∑[A257019(A332640(n)!)]`
-/

namespace A036686.P347347187006575598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257019 (Nat.factorial (A332640 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036686.P347347187006575598

/-! ## A036686.P14815482850773402713

`∑[A030731(Δ[A048313(n)])]`
-/

namespace A036686.P14815482850773402713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048313 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030731 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036686.P14815482850773402713

/-! ## A036686.P1135843801126985376

`∑[A030731(Δ[A048340(n)])]`
-/

namespace A036686.P1135843801126985376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048340 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030731 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036686.P1135843801126985376

/-! ## A036686.P12245054199787454089

`∑[A034784(Δ[A048313(n)])]`
-/

namespace A036686.P12245054199787454089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048313 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036686.P12245054199787454089

/-! ## A036686.P1273737384111239480

`∑[A034784(Δ[A048340(n)])]`
-/

namespace A036686.P1273737384111239480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048340 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036686.P1273737384111239480

/-!
# A036687: a(n) = Product_{i=0..n} (3*i+1)! / (n+i)!.

The programs for A036687, there is no canonical definition to state claims against.
-/

/-! ## A036687.P10737949526152565462

`∏[A090816(n)/A088218(n)]`
-/

namespace A036687.P10737949526152565462
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090816 n : ℚ) / (A088218 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036687.P10737949526152565462

/-! ## A036687.P7148488287810644378

`A001700(n)*A134356(n+1)`
-/

namespace A036687.P7148488287810644378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A134356 (n + 1)

end

end A036687.P7148488287810644378

/-! ## A036687.P2472233605419001409

`A007559(n+1)*A266091(n)`
-/

namespace A036687.P2472233605419001409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007559 (n + 1) * A266091 n

end

end A036687.P2472233605419001409

/-! ## A036687.P17448456090962016973

`A088218(n+1)*A134356(n+1)`
-/

namespace A036687.P17448456090962016973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) * A134356 (n + 1)

end

end A036687.P17448456090962016973

/-! ## A036687.P10185883469842986489

`∏[A090816(n)/A001700(n)]*A001700(n)`
-/

namespace A036687.P10185883469842986489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090816 n : ℚ) / (A001700 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * (A001700 n : ℚ)

end

end A036687.P10185883469842986489

/-!
# A036689: Product of a prime and the previous number.

The programs for A036689, the canonical program `A036689.P7293150385208763651` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036689 has offset 1).

The definition of A036689 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008837, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A036689.P7293150385208763651

`2*A008837(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036689

/-- `2*A008837(n+1)` -/
def P7293150385208763651.Spec : Prop :=
  ∀ n, P7293150385208763651.a n = A036689 (n + 1)

theorem P7293150385208763651.correct : P7293150385208763651.Spec := by
  intro n
  simp only [A036689, Nat.add_sub_cancel]

end A036689

/-! ## A036689.P9571022637597942336

`A001248(n+1)-A000040(n+1)`
-/

namespace A036689.P9571022637597942336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A000040 (n + 1)

end

end A036689.P9571022637597942336

namespace A036689

/-- `A001248(n+1)-A000040(n+1)` -/
def P9571022637597942336.Spec : Prop :=
  ∀ n, P9571022637597942336.a n = A036689 (n + 1)

end A036689

/-! ## A036689.P16439988437163061591

`A000040(n+1)*A006093(n+1)`
-/

namespace A036689.P16439988437163061591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A006093 (n + 1)

end

end A036689.P16439988437163061591

namespace A036689

/-- `A000040(n+1)*A006093(n+1)` -/
def P16439988437163061591.Spec : Prop :=
  ∀ n, P16439988437163061591.a n = A036689 (n + 1)

end A036689

/-! ## A036689.P5980035345150098784

`A000010(A001248(n+1))`
-/

namespace A036689.P5980035345150098784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001248 (n + 1)).toNat

end

end A036689.P5980035345150098784

namespace A036689

/-- `A000010(A001248(n+1))` -/
def P5980035345150098784.Spec : Prop :=
  ∀ n, P5980035345150098784.a n = A036689 (n + 1)

end A036689

/-! ## A036689.P8602351019076266782

`∑[2*A371201(n)]`
-/

namespace A036689.P8602351019076266782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A371201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036689.P8602351019076266782

namespace A036689

/-- `∑[2*A371201(n)]` -/
def P8602351019076266782.Spec : Prop :=
  ∀ n, P8602351019076266782.a n = A036689 (n + 1)

end A036689

/-! ## A036689.P4390603718742251368

`A306190(n+1)+1`
-/

namespace A036689.P4390603718742251368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (n + 1) + 1

end

end A036689.P4390603718742251368

namespace A036689

/-- `A306190(n+1)+1` -/
def P4390603718742251368.Spec : Prop :=
  ∀ n, P4390603718742251368.a n = A036689 (n + 1)

end A036689

/-! ## A036689.P1823033016870115322

`A119959(n+1)-1`
-/

namespace A036689.P1823033016870115322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119959 (n + 1) - 1

end

end A036689.P1823033016870115322

namespace A036689

/-- `A119959(n+1)-1` -/
def P1823033016870115322.Spec : Prop :=
  ∀ n, P1823033016870115322.a n = A036689 (n + 1)

end A036689

/-! ## A036689.P6334388974259435712

`2*C(Δ[A007504(n)], 2)`
-/

namespace A036689.P6334388974259435712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A036689.P6334388974259435712

namespace A036689

/-- `2*C(Δ[A007504(n)], 2)` -/
def P6334388974259435712.Spec : Prop :=
  ∀ n, (P6334388974259435712.a n : ℤ) = A036689 (n + 1)

end A036689

/-! ## A036689.P12374161105963405986

`2*(A072205(n+1)-1)`
-/

namespace A036689.P12374161105963405986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A072205 (n + 1) - 1)

end

end A036689.P12374161105963405986

namespace A036689

/-- `2*(A072205(n+1)-1)` -/
def P12374161105963405986.Spec : Prop :=
  ∀ n, P12374161105963405986.a n = A036689 (n + 1)

end A036689

/-! ## A036689.P11328268308347977249

`2/3*A179545(n+1)`
-/

namespace A036689.P11328268308347977249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A179545 (n + 1) : ℚ)

end

end A036689.P11328268308347977249

namespace A036689

/-- `2/3*A179545(n+1)` -/
def P11328268308347977249.Spec : Prop :=
  ∀ n, P11328268308347977249.a n = (A036689 (n + 1) : ℚ)

end A036689

/-! ## A036689.P4843378715121960865

`2*C(A000040(n+1), 2)`
-/

namespace A036689.P4843378715121960865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A000040 (n + 1)).toNat 2

end

end A036689.P4843378715121960865

namespace A036689

/-- `2*C(A000040(n+1), 2)` -/
def P4843378715121960865.Spec : Prop :=
  ∀ n, (P4843378715121960865.a n : ℤ) = A036689 (n + 1)

end A036689

/-! ## A036689.P9239735633672851721

`A244509(n+1)%A153480(n)`
-/

namespace A036689.P9239735633672851721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244509 (n + 1)) (A153480 n)

end

end A036689.P9239735633672851721

namespace A036689

/-- `A244509(n+1)%A153480(n)` -/
def P9239735633672851721.Spec : Prop :=
  ∀ n, P9239735633672851721.a n = A036689 (n + 1)

end A036689

/-! ## A036689.P2411209246557396169

`A006093(n+1)+A005722(n+1)`
-/

namespace A036689.P2411209246557396169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A005722 (n + 1)

end

end A036689.P2411209246557396169

namespace A036689

/-- `A006093(n+1)+A005722(n+1)` -/
def P2411209246557396169.Spec : Prop :=
  ∀ n, P2411209246557396169.a n = A036689 (n + 1)

end A036689

/-! ## A036689.P5006238006123733728

`A062235(n+1)+A001223(n+1)`
-/

namespace A036689.P5006238006123733728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062235 (n + 1) + A001223 (n + 1)

end

end A036689.P5006238006123733728

namespace A036689

/-- `A062235(n+1)+A001223(n+1)` -/
def P5006238006123733728.Spec : Prop :=
  ∀ n, P5006238006123733728.a n = A036689 (n + 1)

end A036689

/-! ## A036689.P7687620206183027711

`A106588(n+1)+A073497(n+1)`
-/

namespace A036689.P7687620206183027711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106588 (n + 1) + A073497 (n + 1)

end

end A036689.P7687620206183027711

namespace A036689

/-- `A106588(n+1)+A073497(n+1)` -/
def P7687620206183027711.Spec : Prop :=
  ∀ n, P7687620206183027711.a n = A036689 (n + 1)

end A036689

/-! ## A036689.P3247427250618929033

`A161522(n+1)+A117495(n+1)`
-/

namespace A036689.P3247427250618929033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161522 (n + 1) + A117495 (n + 1)

end

end A036689.P3247427250618929033

namespace A036689

/-- `A161522(n+1)+A117495(n+1)` -/
def P3247427250618929033.Spec : Prop :=
  ∀ n, P3247427250618929033.a n = A036689 (n + 1)

end A036689

/-! ## A036689.P10943557426893655247

`A066872(n+1)-A008864(n+1)`
-/

namespace A036689.P10943557426893655247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) - A008864 (n + 1)

end

end A036689.P10943557426893655247

namespace A036689

/-- `A066872(n+1)-A008864(n+1)` -/
def P10943557426893655247.Spec : Prop :=
  ∀ n, P10943557426893655247.a n = A036689 (n + 1)

end A036689

/-! ## A036689.P14210818826247969166

`A135177(n+1)/A000040(n+1)`
-/

namespace A036689.P14210818826247969166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135177 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A036689.P14210818826247969166

namespace A036689

/-- `A135177(n+1)/A000040(n+1)` -/
def P14210818826247969166.Spec : Prop :=
  ∀ n, P14210818826247969166.a n = (A036689 (n + 1) : ℚ)

end A036689

/-! ## A036689.P9483641501474429263

`A030078(n+1)%A083558(n+1)`
-/

namespace A036689.P9483641501474429263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030078 (n + 1)) (A083558 (n + 1))

end

end A036689.P9483641501474429263

namespace A036689

/-- `A030078(n+1)%A083558(n+1)` -/
def P9483641501474429263.Spec : Prop :=
  ∀ n, P9483641501474429263.a n = A036689 (n + 1)

end A036689

/-! ## A036689.P14140933678054921286

`A079704(n+1)%A036690(n+1)`
-/

namespace A036689.P14140933678054921286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079704 (n + 1)) (A036690 (n + 1))

end

end A036689.P14140933678054921286

namespace A036689

/-- `A079704(n+1)%A036690(n+1)` -/
def P14140933678054921286.Spec : Prop :=
  ∀ n, P14140933678054921286.a n = A036689 (n + 1)

end A036689

/-!
# A036690: Product of a prime and the following number.

The programs for A036690, the canonical program `A036690.P4894927351784660474` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036690 has offset 1).

The definition of A036690 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A036690.P6526026011443284220

`A060800(n+1)-1`
-/

namespace A036690.P6526026011443284220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1) - 1

end

end A036690.P6526026011443284220

namespace A036690

/-- `A060800(n+1)-1` -/
def P6526026011443284220.Spec : Prop :=
  ∀ n, P6526026011443284220.a n = A036690 (n + 1)

end A036690

/-! ## A036690.P4894927351784660474

`2*A034953(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036690

/-- `2*A034953(n+1)` -/
def P4894927351784660474.Spec : Prop :=
  ∀ n, P4894927351784660474.a n = A036690 (n + 1)

theorem P4894927351784660474.correct : P4894927351784660474.Spec := by
  intro n
  simp only [A036690, Nat.add_sub_cancel]

end A036690

/-! ## A036690.P13792247141089666403

`∑[2*A138383(n)]`
-/

namespace A036690.P13792247141089666403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036690.P13792247141089666403

namespace A036690

/-- `∑[2*A138383(n)]` -/
def P13792247141089666403.Spec : Prop :=
  ∀ n, P13792247141089666403.a n = A036690 (n + 1)

end A036690

/-! ## A036690.P16657944311156383409

`A319597(n+1)+1`
-/

namespace A036690.P16657944311156383409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319597 (n + 1) + 1

end

end A036690.P16657944311156383409

namespace A036690

/-- `A319597(n+1)+1` -/
def P16657944311156383409.Spec : Prop :=
  ∀ n, P16657944311156383409.a n = A036690 (n + 1)

end A036690

/-! ## A036690.P16138564522952125554

`A367573(n+1)/2`
-/

namespace A036690.P16138564522952125554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367573 (n + 1) : ℚ) / 2

end

end A036690.P16138564522952125554

namespace A036690

/-- `A367573(n+1)/2` -/
def P16138564522952125554.Spec : Prop :=
  ∀ n, P16138564522952125554.a n = (A036690 (n + 1) : ℚ)

end A036690

/-! ## A036690.P7293725707012644972

`2*C(A008864(n+1), 2)`
-/

namespace A036690.P7293725707012644972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A008864 (n + 1)).toNat 2

end

end A036690.P7293725707012644972

namespace A036690

/-- `2*C(A008864(n+1), 2)` -/
def P7293725707012644972.Spec : Prop :=
  ∀ n, (P7293725707012644972.a n : ℤ) = A036690 (n + 1)

end A036690

/-! ## A036690.P4128192632134742751

`floor((A072055(n+1)/2)²)`
-/

namespace A036690.P4128192632134742751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A072055 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A036690.P4128192632134742751

namespace A036690

/-- `floor((A072055(n+1)/2)²)` -/
def P4128192632134742751.Spec : Prop :=
  ∀ n, P4128192632134742751.a n = A036690 (n + 1)

end A036690

/-! ## A036690.P12104720369351949854

`A000040(n+1)+A001248(n+1)`
-/

namespace A036690.P12104720369351949854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A001248 (n + 1)

end

end A036690.P12104720369351949854

namespace A036690

/-- `A000040(n+1)+A001248(n+1)` -/
def P12104720369351949854.Spec : Prop :=
  ∀ n, P12104720369351949854.a n = A036690 (n + 1)

end A036690

/-! ## A036690.P4575640562058725900

`A062235(n+1)+A001043(n+1)`
-/

namespace A036690.P4575640562058725900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062235 (n + 1) + A001043 (n + 1)

end

end A036690.P4575640562058725900

namespace A036690

/-- `A062235(n+1)+A001043(n+1)` -/
def P4575640562058725900.Spec : Prop :=
  ∀ n, P4575640562058725900.a n = A036690 (n + 1)

end A036690

/-! ## A036690.P5410910562974286576

`A066872(n+1)+A006093(n+1)`
-/

namespace A036690.P5410910562974286576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) + A006093 (n + 1)

end

end A036690.P5410910562974286576

namespace A036690

/-- `A066872(n+1)+A006093(n+1)` -/
def P5410910562974286576.Spec : Prop :=
  ∀ n, P5410910562974286576.a n = A036690 (n + 1)

end A036690

/-! ## A036690.P2101193321683490300

`A084920(n+1)+A008864(n+1)`
-/

namespace A036690.P2101193321683490300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + A008864 (n + 1)

end

end A036690.P2101193321683490300

namespace A036690

/-- `A084920(n+1)+A008864(n+1)` -/
def P2101193321683490300.Spec : Prop :=
  ∀ n, P2101193321683490300.a n = A036690 (n + 1)

end A036690

/-! ## A036690.P16059983376043371079

`A052147(n+1)+A049001(n+1)`
-/

namespace A036690.P16059983376043371079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + A049001 (n + 1)

end

end A036690.P16059983376043371079

namespace A036690

/-- `A052147(n+1)+A049001(n+1)` -/
def P16059983376043371079.Spec : Prop :=
  ∀ n, P16059983376043371079.a n = A036690 (n + 1)

end A036690

/-! ## A036690.P13625737616190558789

`A061725(n+1)+A040976(n+1)`
-/

namespace A036690.P13625737616190558789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1) + A040976 (n + 1)

end

end A036690.P13625737616190558789

namespace A036690

/-- `A061725(n+1)+A040976(n+1)` -/
def P13625737616190558789.Spec : Prop :=
  ∀ n, P13625737616190558789.a n = A036690 (n + 1)

end A036690

/-! ## A036690.P779088310192730992

`A106588(n+1)+A004232(n+1)`
-/

namespace A036690.P779088310192730992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106588 (n + 1) + A004232 (n + 1)

end

end A036690.P779088310192730992

namespace A036690

/-- `A106588(n+1)+A004232(n+1)` -/
def P779088310192730992.Spec : Prop :=
  ∀ n, P779088310192730992.a n = A036690 (n + 1)

end A036690

/-! ## A036690.P7060501889714757068

`A100484(n+1)+A036689(n+1)`
-/

namespace A036690.P7060501889714757068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A036689 (n + 1)

end

end A036690.P7060501889714757068

namespace A036690

/-- `A100484(n+1)+A036689(n+1)` -/
def P7060501889714757068.Spec : Prop :=
  ∀ n, P7060501889714757068.a n = A036690 (n + 1)

end A036690

/-! ## A036690.P12566033817416129298

`A182174(n+1)+A014688(n+1)`
-/

namespace A036690.P12566033817416129298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182174 (n + 1) + A014688 (n + 1)

end

end A036690.P12566033817416129298

namespace A036690

/-- `A182174(n+1)+A014688(n+1)` -/
def P12566033817416129298.Spec : Prop :=
  ∀ n, P12566033817416129298.a n = A036690 (n + 1)

end A036690

/-! ## A036690.P6745474585534355110

`A352851(n+1)-A001223(n+1)`
-/

namespace A036690.P6745474585534355110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352851 (n + 1) - A001223 (n + 1)

end

end A036690.P6745474585534355110

namespace A036690

/-- `A352851(n+1)-A001223(n+1)` -/
def P6745474585534355110.Spec : Prop :=
  ∀ n, P6745474585534355110.a n = A036690 (n + 1)

end A036690

/-! ## A036690.P11526282545566420717

`A000040(n+1)*A008864(n+1)`
-/

namespace A036690.P11526282545566420717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A008864 (n + 1)

end

end A036690.P11526282545566420717

namespace A036690

/-- `A000040(n+1)*A008864(n+1)` -/
def P11526282545566420717.Spec : Prop :=
  ∀ n, P11526282545566420717.a n = A036690 (n + 1)

end A036690

/-! ## A036690.P15912844504934216572

`A135178(n+1)/A000040(n+1)`
-/

namespace A036690.P15912844504934216572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135178 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A036690.P15912844504934216572

namespace A036690

/-- `A135178(n+1)/A000040(n+1)` -/
def P15912844504934216572.Spec : Prop :=
  ∀ n, P15912844504934216572.a n = (A036690 (n + 1) : ℚ)

end A036690

/-! ## A036690.P10431993380634507771

`A098996(n+1)%A079704(n+1)`
-/

namespace A036690.P10431993380634507771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098996 (n + 1)) (A079704 (n + 1))

end

end A036690.P10431993380634507771

namespace A036690

/-- `A098996(n+1)%A079704(n+1)` -/
def P10431993380634507771.Spec : Prop :=
  ∀ n, P10431993380634507771.a n = A036690 (n + 1)

end A036690

/-!
# A036691: Compositorial numbers: product of first n composite numbers.

The programs for A036691, there is no canonical definition to state claims against.
-/

/-! ## A036691.P3798658916408336476

`∏[lt[∑{p}[n, #], n]]`
-/

namespace A036691.P3798658916408336476
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036691.P3798658916408336476

/-! ## A036691.P14194486684105648323

`∏[comp[record[∑{p}[n, #]]]]`
-/

namespace A036691.P14194486684105648323
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036691.P14194486684105648323

/-! ## A036691.P9623833097280880225

`A060880(n)+1`
-/

namespace A036691.P9623833097280880225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060880 n + 1

end

end A036691.P9623833097280880225

/-! ## A036691.P9095573914728912828

`A049650(n)-1`
-/

namespace A036691.P9095573914728912828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049650 n - 1

end

end A036691.P9095573914728912828

/-! ## A036691.P14725181383773389510

`∏[Δ[A051349(n)]]`
-/

namespace A036691.P14725181383773389510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036691.P14725181383773389510

/-! ## A036691.P4528784669001659339

`∏[A018252(n+1)]`
-/

namespace A036691.P4528784669001659339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036691.P4528784669001659339

/-! ## A036691.P2456928141773239729

`∏[A141468(n+2)]`
-/

namespace A036691.P2456928141773239729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036691.P2456928141773239729

/-! ## A036691.P11627629493446373496

`∏[sqrt(A062312(n+1))]`
-/

namespace A036691.P11627629493446373496
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062312 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036691.P11627629493446373496

/-! ## A036691.P14990864950947851045

`∏[sqrt(A161753(n+2))]`
-/

namespace A036691.P14990864950947851045
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A161753 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036691.P14990864950947851045

/-! ## A036691.P15813593963095917163

`∏[∑[A054546(n+1)]]`
-/

namespace A036691.P15813593963095917163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036691.P15813593963095917163

/-!
# A036692: T(2n,n) with T as in A036355.

The programs for A036692, there is no canonical definition to state claims against.
-/

/-! ## A036692.P4930241413201471289

`A036355(∑[4*n])`
-/

namespace A036692.P4930241413201471289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036692.P4930241413201471289

/-! ## A036692.P1871300178356701076

`record[A036355(n*A028242(n))]`
-/

namespace A036692.P1871300178356701076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 ((n : ℤ) * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036692.P1871300178356701076

/-! ## A036692.P589383818557037283

`A036355(A046092(n))^A057428(n)²`
-/

namespace A036692.P589383818557037283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036355 (A046092 n).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A036692.P589383818557037283

/-! ## A036692.P4671185167278665312

`A036355(A046092(n))+A000007(n+1)`
-/

namespace A036692.P4671185167278665312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (A046092 n).toNat + A000007 (n + 1)

end

end A036692.P4671185167278665312

/-! ## A036692.P7878241449425301144

`A036355(A046092(n))%A025131(n+2)`
-/

namespace A036692.P7878241449425301144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036355 (A046092 n).toNat) (A025131 (n + 2))

end

end A036692.P7878241449425301144

/-! ## A036692.P18334620195204137989

`lcm(A025142(n+1), A036355(A046092(n)))`
-/

namespace A036692.P18334620195204137989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025142 (n + 1)) (A036355 (A046092 n).toNat)

end

end A036692.P18334620195204137989

/-!
# A036693: Number of Gaussian integers z = a + bi satisfying n-1 < |z| <= n.

The programs for A036693, there is no canonical definition to state claims against.
-/

/-! ## A036693.P16454934401892808585

`A000007(n)+4*A036694(n)`
-/

namespace A036693.P16454934401892808585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 4 * A036694 n

end

end A036693.P16454934401892808585

/-! ## A036693.P4391636001637705682

`A138427(n+1)%2+4*A036694(n)`
-/

namespace A036693.P4391636001637705682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138427 (n + 1)) 2 + 4 * A036694 n

end

end A036693.P4391636001637705682

/-! ## A036693.P11519128535672788638

`(4*A036694(n))^(A002385(n+1)%2)`
-/

namespace A036693.P11519128535672788638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A036694 n : ℚ) ^ (Int.tmod (A002385 (n + 1)) 2 : ℤ)

end

end A036693.P11519128535672788638

/-! ## A036693.P2486858262901986117

`2*(A036696(n)-1)+3-A157532(n+1)`
-/

namespace A036693.P2486858262901986117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A036696 n - 1) + 3 - A157532 (n + 1)

end

end A036693.P2486858262901986117

/-! ## A036693.P16895285191340916371

`A008574(A036694(n))`
-/

namespace A036693.P16895285191340916371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A036694 n).toNat

end

end A036693.P16895285191340916371

/-! ## A036693.P8903033184604711954

`A008574(A036697(n)-1)`
-/

namespace A036693.P8903033184604711954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A036697 n - 1).toNat

end

end A036693.P8903033184604711954

/-! ## A036693.P395995193021362605

`A019425(2*A036697(n)-1)`
-/

namespace A036693.P395995193021362605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * A036697 n - 1).toNat

end

end A036693.P395995193021362605

/-! ## A036693.P4306658450305758365

`A019425(A036697(n)+A036697(n)-1)`
-/

namespace A036693.P4306658450305758365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A036697 n + (A036697 n - 1)).toNat

end

end A036693.P4306658450305758365

/-! ## A036693.P11462271776713865119

`A019425(A036697(n)-(1-A036697(n)))`
-/

namespace A036693.P11462271776713865119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A036697 n - (1 - A036697 n)).toNat

end

end A036693.P11462271776713865119

/-! ## A036693.P52330761428345683

`A004275(A036696(n))`
-/

namespace A036693.P52330761428345683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A036696 n).toNat

end

end A036693.P52330761428345683

/-! ## A036693.P9699500868534486133

`A004277(A036696(n)-1)`
-/

namespace A036693.P9699500868534486133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A036696 n - 1).toNat

end

end A036693.P9699500868534486133

/-! ## A036693.P1155249617817939690

`A004277(2*A036694(n))`
-/

namespace A036693.P1155249617817939690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * A036694 n).toNat

end

end A036693.P1155249617817939690

/-! ## A036693.P14640396337268374932

`A257088(2*A036694(n))`
-/

namespace A036693.P14640396337268374932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (2 * A036694 n).toNat

end

end A036693.P14640396337268374932

/-! ## A036693.P4165780468338262739

`A280166(2*A036694(n))`
-/

namespace A036693.P4165780468338262739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280166 (2 * A036694 n).toNat

end

end A036693.P4165780468338262739

/-! ## A036693.P17279808549789611302

`A004273(2*A036694(n))+1`
-/

namespace A036693.P17279808549789611302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * A036694 n).toNat + 1

end

end A036693.P17279808549789611302

/-! ## A036693.P6370842887667719434

`A028310(4*A036694(n))`
-/

namespace A036693.P6370842887667719434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (4 * A036694 n).toNat

end

end A036693.P6370842887667719434

/-! ## A036693.P1840531690083107344

`A065033(8*A036694(n))`
-/

namespace A036693.P1840531690083107344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (8 * A036694 n).toNat

end

end A036693.P1840531690083107344

/-! ## A036693.P7943701625208150420

`A123108(8*A036694(n))`
-/

namespace A036693.P7943701625208150420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (8 * A036694 n).toNat

end

end A036693.P7943701625208150420

/-!
# A036694: a(n) = (1/4)*A036693(n) for n >= 1.

The programs for A036694, there is no canonical definition to state claims against.
-/

/-! ## A036694.P16524574510351332983

`A036697(n)-1`
-/

namespace A036694.P16524574510351332983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036697 n - 1

end

end A036694.P16524574510351332983

/-! ## A036694.P4275720705734099896

`floor(A036696(n)/2)`
-/

namespace A036694.P4275720705734099896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036696 n : ℚ) / 2⌋

end

end A036694.P4275720705734099896

/-! ## A036694.P16421928960871729214

`floor(A036693(n)/4)`
-/

namespace A036694.P16421928960871729214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036693 n : ℚ) / 4⌋

end

end A036694.P16421928960871729214

/-! ## A036694.P18225452884804469754

`A036696(n)%A036697(n)`
-/

namespace A036694.P18225452884804469754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036696 n) (A036697 n)

end

end A036694.P18225452884804469754

/-! ## A036694.P2364296823698406252

`A036701(n)+A036703(n)-1`
-/

namespace A036694.P2364296823698406252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036701 n + (A036703 n - 1)

end

end A036694.P2364296823698406252

/-! ## A036694.P17609854529105372967

`A036693(n)%A000328(n)/4`
-/

namespace A036694.P17609854529105372967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A036693 n) (A000328 n) : ℚ) / 4

end

end A036694.P17609854529105372967

/-! ## A036694.P8104780822189915680

`A000027(A036696(n)+1)/2-1`
-/

namespace A036694.P8104780822189915680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A036696 n + 1).toNat : ℚ) / 2 - 1

end

end A036694.P8104780822189915680

/-! ## A036694.P17639406338441210532

`A023443(A036697(n))`
-/

namespace A036694.P17639406338441210532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A036697 n).toNat

end

end A036694.P17639406338441210532

/-! ## A036694.P852553572974453642

`A004524(A036696(n))`
-/

namespace A036694.P852553572974453642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A036696 n).toNat

end

end A036694.P852553572974453642

/-! ## A036694.P16317302216800512860

`A002265(A036693(n))`
-/

namespace A036694.P16317302216800512860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A036693 n).toNat

end

end A036694.P16317302216800512860

/-! ## A036694.P16971335259941494521

`A110659(A036693(n)+1)`
-/

namespace A036694.P16971335259941494521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (A036693 n + 1).toNat

end

end A036694.P16971335259941494521

/-! ## A036694.P16015699167010076111

`A110655(A036693(n)-1)`
-/

namespace A036694.P16015699167010076111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A036693 n - 1).toNat

end

end A036694.P16015699167010076111

/-! ## A036694.P6451762213552503139

`A002265(2*A036696(n))`
-/

namespace A036694.P6451762213552503139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A036696 n).toNat

end

end A036694.P6451762213552503139

/-! ## A036694.P16739909253715235895

`A131508(2*A036696(n))`
-/

namespace A036694.P16739909253715235895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (2 * A036696 n).toNat

end

end A036694.P16739909253715235895

/-! ## A036694.P16582989474259341834

`A110657(or(3, A036693(n)))`
-/

namespace A036694.P16582989474259341834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (Int.lor 3 (A036693 n)).toNat

end

end A036694.P16582989474259341834

/-! ## A036694.P18229512818310736446

`A008621(A036693(n)+1)-1`
-/

namespace A036694.P18229512818310736446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A036693 n + 1).toNat - 1

end

end A036694.P18229512818310736446

/-! ## A036694.P2539951339234510641

`A110659(A036693(n)-1)-1`
-/

namespace A036694.P2539951339234510641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (A036693 n - 1).toNat - 1

end

end A036694.P2539951339234510641

/-! ## A036694.P2777790673547797390

`A004524(A036693(n)+1)/2`
-/

namespace A036694.P2777790673547797390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004524 (A036693 n + 1).toNat : ℚ) / 2

end

end A036694.P2777790673547797390

/-! ## A036694.P539169930759741871

`A008624(2*A036696(n)-1)`
-/

namespace A036694.P539169930759741871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A036696 n - 1).toNat

end

end A036694.P539169930759741871

/-! ## A036694.P14866290753748679904

`A008621(2*A036696(n))-1`
-/

namespace A036694.P14866290753748679904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A036696 n).toNat - 1

end

end A036694.P14866290753748679904

/-!
# A036695: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n, b>=0.

The programs for A036695, the canonical program `A036695.P3115726908508133400` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036695 has offset 0).

The definition of A036695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036695.P4470097181957794344

`∑[A036696(n)]`
-/

namespace A036695.P4470097181957794344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036695.P4470097181957794344

namespace A036695

/-- `∑[A036696(n)]` -/
def P4470097181957794344.Spec : Prop :=
  ∀ n, P4470097181957794344.a n = A036695 n

end A036695

/-! ## A036695.P9462154660486458229

`∑[2*A036694(n)+1]`
-/

namespace A036695.P9462154660486458229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036694 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036695.P9462154660486458229

namespace A036695

/-- `∑[2*A036694(n)+1]` -/
def P9462154660486458229.Spec : Prop :=
  ∀ n, P9462154660486458229.a n = A036695 n

end A036695

/-! ## A036695.P1065225322043478342

`∑[2*A036697(n)-1]`
-/

namespace A036695.P1065225322043478342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036697 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036695.P1065225322043478342

namespace A036695

/-- `∑[2*A036697(n)-1]` -/
def P1065225322043478342.Spec : Prop :=
  ∀ n, P1065225322043478342.a n = A036695 n

end A036695

/-! ## A036695.P3115726908508133400

`ceil(A000328(n)/2+n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A036695

/-- `ceil(A000328(n)/2+n)` -/
def P3115726908508133400.Spec : Prop :=
  ∀ n, P3115726908508133400.a n = A036695 n

theorem P3115726908508133400.correct : P3115726908508133400.Spec := by
  intro n
  simp only [A036695]

end A036695

/-! ## A036695.P14620381944614439074

`2*A036698(n)+n+1`
-/

namespace A036695.P14620381944614439074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036698 n + (n + 1 : ℤ)

end

end A036695.P14620381944614439074

namespace A036695

/-- `2*A036698(n)+n+1` -/
def P14620381944614439074.Spec : Prop :=
  ∀ n, P14620381944614439074.a n = A036695 n

end A036695

/-! ## A036695.P17947241214015445561

`2*A000603(n)-(n+1)`
-/

namespace A036695.P17947241214015445561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000603 n - (n + 1 : ℤ)

end

end A036695.P17947241214015445561

namespace A036695

/-- `2*A000603(n)-(n+1)` -/
def P17947241214015445561.Spec : Prop :=
  ∀ n, P17947241214015445561.a n = A036695 n

end A036695

/-! ## A036695.P1681098564197951974

`A036698(n)+A000603(n)`
-/

namespace A036695.P1681098564197951974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036698 n + A000603 n

end

end A036695.P1681098564197951974

namespace A036695

/-- `A036698(n)+A000603(n)` -/
def P1681098564197951974.Spec : Prop :=
  ∀ n, P1681098564197951974.a n = A036695 n

end A036695

/-! ## A036695.P18345590261166647027

`∑[A036697(n)+A036694(n)]`
-/

namespace A036695.P18345590261166647027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036697 n + A036694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036695.P18345590261166647027

namespace A036695

/-- `∑[A036697(n)+A036694(n)]` -/
def P18345590261166647027.Spec : Prop :=
  ∀ n, P18345590261166647027.a n = A036695 n

end A036695

/-! ## A036695.P17645847317738064332

`A036698(n)+∑[A036697(n)]`
-/

namespace A036695.P17645847317738064332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036698 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036695.P17645847317738064332

namespace A036695

/-- `A036698(n)+∑[A036697(n)]` -/
def P17645847317738064332.Spec : Prop :=
  ∀ n, P17645847317738064332.a n = A036695 n

end A036695

/-! ## A036695.P14288927633767433211

`A001478(n+1)+2*A000603(n)`
-/

namespace A036695.P14288927633767433211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + 2 * A000603 n

end

end A036695.P14288927633767433211

namespace A036695

/-- `A001478(n+1)+2*A000603(n)` -/
def P14288927633767433211.Spec : Prop :=
  ∀ n, P14288927633767433211.a n = A036695 n

end A036695

/-! ## A036695.P4546477711084814114

`∑[A000027(A036697(n)+A036697(n)-1)]`
-/

namespace A036695.P4546477711084814114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A036697 n + (A036697 n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036695.P4546477711084814114

namespace A036695

/-- `∑[A000027(A036697(n)+A036697(n)-1)]` -/
def P4546477711084814114.Spec : Prop :=
  ∀ n, P4546477711084814114.a n = A036695 n

end A036695

/-! ## A036695.P12445123132080170305

`A000603(n)+A000603(n)-A194922(A195071(n+1))`
-/

namespace A036695.P12445123132080170305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000603 n + (A000603 n - A194922 (A195071 (n + 1)).toNat)

end

end A036695.P12445123132080170305

namespace A036695

/-- `A000603(n)+A000603(n)-A194922(A195071(n+1))` -/
def P12445123132080170305.Spec : Prop :=
  ∀ n, P12445123132080170305.a n = A036695 n

end A036695

/-! ## A036695.P13411220475382119484

`(A053411(2*n)+2*n+1)/2`
-/

namespace A036695.P13411220475382119484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053411 (2 * n) + (2 * n + 1 : ℤ) : ℚ) / 2

end

end A036695.P13411220475382119484

namespace A036695

/-- `(A053411(2*n)+2*n+1)/2` -/
def P13411220475382119484.Spec : Prop :=
  ∀ n, P13411220475382119484.a n = (A036695 n : ℚ)

end A036695

/-! ## A036695.P151923878266552583

`∑[A023443(2*A036697(n))]`
-/

namespace A036695.P151923878266552583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A036697 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036695.P151923878266552583

namespace A036695

/-- `∑[A023443(2*A036697(n))]` -/
def P151923878266552583.Spec : Prop :=
  ∀ n, P151923878266552583.a n = A036695 n

end A036695

/-! ## A036695.P11742533512796737916

`∑[A008619(A036693(n))]`
-/

namespace A036695.P11742533512796737916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A036693 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036695.P11742533512796737916

namespace A036695

/-- `∑[A008619(A036693(n))]` -/
def P11742533512796737916.Spec : Prop :=
  ∀ n, P11742533512796737916.a n = A036695 n

end A036695

/-! ## A036695.P16537892767341910002

`∑[A000463(A036693(n)+1)]`
-/

namespace A036695.P16537892767341910002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A036693 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036695.P16537892767341910002

namespace A036695

/-- `∑[A000463(A036693(n)+1)]` -/
def P16537892767341910002.Spec : Prop :=
  ∀ n, P16537892767341910002.a n = A036695 n

end A036695

/-! ## A036695.P6783121188407826825

`∑[A008621(2*A036693(n))]`
-/

namespace A036695.P6783121188407826825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A036693 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036695.P6783121188407826825

namespace A036695

/-- `∑[A008621(2*A036693(n))]` -/
def P6783121188407826825.Spec : Prop :=
  ∀ n, P6783121188407826825.a n = A036695 n

end A036695

/-! ## A036695.P18086157201955606729

`A049723(∑[n])`
-/

namespace A036695.P18086157201955606729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036695.P18086157201955606729

namespace A036695

/-- `A049723(∑[n])` -/
def P18086157201955606729.Spec : Prop :=
  ∀ n, P18086157201955606729.a n = A036695 n

end A036695

/-! ## A036695.P17620532911983922291

`record[A049723(n)]`
-/

namespace A036695.P17620532911983922291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036695.P17620532911983922291

namespace A036695

/-- `record[A049723(n)]` -/
def P17620532911983922291.Spec : Prop :=
  ∀ n, P17620532911983922291.a n = A036695 n

end A036695

/-! ## A036695.P13925232928490858353

`A005408(A014200(n²))+n`
-/

namespace A036695.P13925232928490858353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A014200 (n ^ 2)).toNat + (n : ℤ)

end

end A036695.P13925232928490858353

namespace A036695

/-- `A005408(A014200(n²))+n` -/
def P13925232928490858353.Spec : Prop :=
  ∀ n, P13925232928490858353.a n = A036695 n

end A036695

/-!
# A036696: a(n)=number of Gaussian integers z=a+bi satisfying n-1<|z|<=n, b>=0.

The programs for A036696, there is no canonical definition to state claims against.
-/

/-! ## A036696.P14481442498107050007

`2*A036694(n)+1`
-/

namespace A036696.P14481442498107050007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036694 n + 1

end

end A036696.P14481442498107050007

/-! ## A036696.P17288701093634296127

`2*A036697(n)-1`
-/

namespace A036696.P17288701093634296127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036697 n - 1

end

end A036696.P17288701093634296127

/-! ## A036696.P18052529843385250315

`floor(A036693(n)/2)+1`
-/

namespace A036696.P18052529843385250315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036693 n : ℚ) / 2⌋ + 1

end

end A036696.P18052529843385250315

/-! ## A036696.P12109001229253892861

`A016825(A036694(n))/2`
-/

namespace A036696.P12109001229253892861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A036694 n).toNat : ℚ) / 2

end

end A036696.P12109001229253892861

/-! ## A036696.P2397840028939350471

`A036697(n)+A036694(n)`
-/

namespace A036696.P2397840028939350471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036697 n + A036694 n

end

end A036696.P2397840028939350471

/-! ## A036696.P1685128954821767350

`A000265(xor(1, 2*A036694(n)))`
-/

namespace A036696.P1685128954821767350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.xor 1 (2 * A036694 n)).toNat

end

end A036696.P1685128954821767350

/-! ## A036696.P829739514123146332

`2*(A036703(n)+A036701(n))-1`
-/

namespace A036696.P829739514123146332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A036703 n + A036701 n) - 1

end

end A036696.P829739514123146332

/-! ## A036696.P7106105928191365058

`A000027(A036697(n)+A036697(n)-1)`
-/

namespace A036696.P7106105928191365058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A036697 n + (A036697 n - 1)).toNat

end

end A036696.P7106105928191365058

/-! ## A036696.P5890114278863954351

`A004273(A036697(n))`
-/

namespace A036696.P5890114278863954351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A036697 n).toNat

end

end A036696.P5890114278863954351

/-! ## A036696.P3501090035607123362

`A004273(A036694(n)+1)`
-/

namespace A036696.P3501090035607123362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A036694 n + 1).toNat

end

end A036696.P3501090035607123362

/-! ## A036696.P14475573666451828954

`A004277(A036694(n)+1)-1`
-/

namespace A036696.P14475573666451828954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A036694 n + 1).toNat - 1

end

end A036696.P14475573666451828954

/-! ## A036696.P14513374742780015416

`A023443(2*A036697(n))`
-/

namespace A036696.P14513374742780015416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A036697 n).toNat

end

end A036696.P14513374742780015416

/-! ## A036696.P8282949646536823513

`A008619(A036693(n))`
-/

namespace A036696.P8282949646536823513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A036693 n).toNat

end

end A036696.P8282949646536823513

/-! ## A036696.P16609358070734586553

`A000463(A036693(n)+1)`
-/

namespace A036696.P16609358070734586553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A036693 n + 1).toNat

end

end A036696.P16609358070734586553

/-! ## A036696.P1808332112229258575

`A004526(A036693(n)+2)`
-/

namespace A036696.P1808332112229258575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036693 n + 2).toNat

end

end A036696.P1808332112229258575

/-! ## A036696.P9257771381303761976

`A008619(4*A036694(n))`
-/

namespace A036696.P9257771381303761976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A036694 n).toNat

end

end A036696.P9257771381303761976

/-! ## A036696.P17019253801419430588

`A004526(or(2, A036693(n)))`
-/

namespace A036696.P17019253801419430588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lor 2 (A036693 n)).toNat

end

end A036696.P17019253801419430588

/-! ## A036696.P8854247400726286296

`A001057(A036693(n)-1)+1`
-/

namespace A036696.P8854247400726286296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A036693 n - 1).toNat + 1

end

end A036696.P8854247400726286296

/-! ## A036696.P7632902572037543618

`A008621(2*A036693(n))`
-/

namespace A036696.P7632902572037543618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A036693 n).toNat

end

end A036696.P7632902572037543618

/-!
# A036697: a(n)=number of Gaussian integers z=a+bi satisfying n-1<|z|<=n, a>=0, b>=0.

The programs for A036697, there is no canonical definition to state claims against.
-/

/-! ## A036697.P13867516508356864030

`A036694(n)+1`
-/

namespace A036697.P13867516508356864030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036694 n + 1

end

end A036697.P13867516508356864030

/-! ## A036697.P8488915317449356144

`ceil(A036696(n)/2)`
-/

namespace A036697.P8488915317449356144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036696 n : ℚ) / 2⌉

end

end A036697.P8488915317449356144

/-! ## A036697.P1317588204115547363

`floor(A036693(n)/4)+1`
-/

namespace A036697.P1317588204115547363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036693 n : ℚ) / 4⌋ + 1

end

end A036697.P1317588204115547363

/-! ## A036697.P6698536834207364938

`A036703(n)+A036701(n)`
-/

namespace A036697.P6698536834207364938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036703 n + A036701 n

end

end A036697.P6698536834207364938

/-! ## A036697.P15715472478674060095

`A036696(n)-A036694(n)`
-/

namespace A036697.P15715472478674060095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036696 n - A036694 n

end

end A036697.P15715472478674060095

/-! ## A036697.P18121288053051268628

`A000027((A036696(n)+1)/2)`
-/

namespace A036697.P18121288053051268628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A036696 n + 1 : ℚ) / 2)).toNat

end

end A036697.P18121288053051268628

/-! ## A036697.P6035893213168702041

`(A036696(n)+A004767(n)%2)/2`
-/

namespace A036697.P6035893213168702041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036696 n + Int.tmod (A004767 n) 2 : ℚ) / 2

end

end A036697.P6035893213168702041

/-! ## A036697.P3788202530249148028

`Δ[A000603(n)-A036694(n)]`
-/

namespace A036697.P3788202530249148028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000603 n - A036694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036697.P3788202530249148028

/-! ## A036697.P1004493111356736422

`A000463(A036696(n))`
-/

namespace A036697.P1004493111356736422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A036696 n).toNat

end

end A036697.P1004493111356736422

/-! ## A036697.P8274307813676237497

`A004524(A036696(n)+2)`
-/

namespace A036697.P8274307813676237497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A036696 n + 2).toNat

end

end A036697.P8274307813676237497

/-! ## A036697.P3249797077184187991

`A008619(2*A036694(n))`
-/

namespace A036697.P3249797077184187991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A036694 n).toNat

end

end A036697.P3249797077184187991

/-! ## A036697.P3245790216544660926

`A008611(3*A036694(n))`
-/

namespace A036697.P3245790216544660926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A036694 n).toNat

end

end A036697.P3245790216544660926

/-! ## A036697.P16993357370545502017

`A008621(A036693(n))`
-/

namespace A036697.P16993357370545502017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A036693 n).toNat

end

end A036697.P16993357370545502017

/-! ## A036697.P1859846961225364804

`A110655(A036693(n)+1)`
-/

namespace A036697.P1859846961225364804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A036693 n + 1).toNat

end

end A036697.P1859846961225364804

/-! ## A036697.P4334432941580304279

`A110659(A036693(n)-1)`
-/

namespace A036697.P4334432941580304279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (A036693 n - 1).toNat

end

end A036697.P4334432941580304279

/-! ## A036697.P6181319935820638836

`A008621(2*A036696(n))`
-/

namespace A036697.P6181319935820638836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A036696 n).toNat

end

end A036697.P6181319935820638836

/-! ## A036697.P3130000291055355634

`A008624(2*A036696(n))`
-/

namespace A036697.P3130000291055355634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A036696 n).toNat

end

end A036697.P3130000291055355634

/-! ## A036697.P12288747482455391671

`A110657(or(1, A036693(n)))`
-/

namespace A036697.P12288747482455391671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (Int.lor 1 (A036693 n)).toNat

end

end A036697.P12288747482455391671

/-! ## A036697.P6758999668686250477

`A110659(A036693(n)+1)+1`
-/

namespace A036697.P6758999668686250477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (A036693 n + 1).toNat + 1

end

end A036697.P6758999668686250477

/-! ## A036697.P4870383215055962182

`A002265(2*(A036696(n)+1))`
-/

namespace A036697.P4870383215055962182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A036696 n + 1)).toNat

end

end A036697.P4870383215055962182

/-!
# A036698: a(n) is the number of Gaussian integers z=a+bi satisfying |z|<=n, a>0, b>=0.

The programs for A036698, the canonical program `A036698.P3152835247264100802` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036698 has offset 0).

The definition of A036698 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014200, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A036698.P586023150729988500

`A000603(n)-n-1`
-/

namespace A036698.P586023150729988500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000603 n - (n : ℤ) - 1

end

end A036698.P586023150729988500

namespace A036698

/-- `A000603(n)-n-1` -/
def P586023150729988500.Spec : Prop :=
  ∀ n, P586023150729988500.a n = A036698 n

end A036698

/-! ## A036698.P3152835247264100802

`A014200(n²)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A036698

/-- `A014200(n²)` -/
def P3152835247264100802.Spec : Prop :=
  ∀ n, P3152835247264100802.a n = A036698 n

theorem P3152835247264100802.correct : P3152835247264100802.Spec := by
  intro n
  simp only [A036698]

end A036698

/-! ## A036698.P6059266995597972896

`∑[A036694(n)]`
-/

namespace A036698.P6059266995597972896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036698.P6059266995597972896

namespace A036698

/-- `∑[A036694(n)]` -/
def P6059266995597972896.Spec : Prop :=
  ∀ n, P6059266995597972896.a n = A036698 n

end A036698

/-! ## A036698.P15969906307566372949

`floor(A000328(n)/4)`
-/

namespace A036698.P15969906307566372949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000328 n : ℚ) / 4⌋

end

end A036698.P15969906307566372949

namespace A036698

/-- `floor(A000328(n)/4)` -/
def P15969906307566372949.Spec : Prop :=
  ∀ n, P15969906307566372949.a n = A036698 n

end A036698

/-! ## A036698.P11947056281787245650

`∑[A036697(n)-1]`
-/

namespace A036698.P11947056281787245650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036697 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036698.P11947056281787245650

namespace A036698

/-- `∑[A036697(n)-1]` -/
def P11947056281787245650.Spec : Prop :=
  ∀ n, P11947056281787245650.a n = A036698 n

end A036698

/-! ## A036698.P12768516602573465856

`A119677(n)/4+n`
-/

namespace A036698.P12768516602573465856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119677 n : ℚ) / 4 + (n : ℚ)

end

end A036698.P12768516602573465856

namespace A036698

/-- `A119677(n)/4+n` -/
def P12768516602573465856.Spec : Prop :=
  ∀ n, P12768516602573465856.a n = (A036698 n : ℚ)

end A036698

/-! ## A036698.P4579477963248865799

`∑[(A036696(n)-1)/2]`
-/

namespace A036698.P4579477963248865799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036696 n - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036698.P4579477963248865799

namespace A036698

/-- `∑[(A036696(n)-1)/2]` -/
def P4579477963248865799.Spec : Prop :=
  ∀ n, P4579477963248865799.a n = (A036698 n : ℚ)

end A036698

/-! ## A036698.P9750075785778527434

`floor((A036695(n)-n)/2)`
-/

namespace A036698.P9750075785778527434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036695 n - (n : ℤ) : ℚ) / 2⌋

end

end A036698.P9750075785778527434

namespace A036698

/-- `floor((A036695(n)-n)/2)` -/
def P9750075785778527434.Spec : Prop :=
  ∀ n, P9750075785778527434.a n = A036698 n

end A036698

/-! ## A036698.P16631566920742833908

`A001182(A028310(n))+n`
-/

namespace A036698.P16631566920742833908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001182 (A028310 n).toNat + (n : ℤ)

end

end A036698.P16631566920742833908

namespace A036698

/-- `A001182(A028310(n))+n` -/
def P16631566920742833908.Spec : Prop :=
  ∀ n, P16631566920742833908.a n = A036698 n

end A036698

/-! ## A036698.P607902826251842863

`A036695(n)-A000603(n)`
-/

namespace A036698.P607902826251842863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036695 n - A000603 n

end

end A036698.P607902826251842863

namespace A036698

/-- `A036695(n)-A000603(n)` -/
def P607902826251842863.Spec : Prop :=
  ∀ n, P607902826251842863.a n = A036698 n

end A036698

/-! ## A036698.P1545798803490243587

`A036695(n)%∑[A036697(n)]`
-/

namespace A036698.P1545798803490243587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036695 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036698.P1545798803490243587

namespace A036698

/-- `A036695(n)%∑[A036697(n)]` -/
def P1545798803490243587.Spec : Prop :=
  ∀ n, P1545798803490243587.a n = A036698 n

end A036698

/-! ## A036698.P14393315491432961610

`∑[A036696(n)%A036697(n)]`
-/

namespace A036698.P14393315491432961610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036696 n) (A036697 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036698.P14393315491432961610

namespace A036698

/-- `∑[A036696(n)%A036697(n)]` -/
def P14393315491432961610.Spec : Prop :=
  ∀ n, P14393315491432961610.a n = A036698 n

end A036698

/-! ## A036698.P18281071571383421088

`A001478(n+1)+A000603(n)`
-/

namespace A036698.P18281071571383421088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A000603 n

end

end A036698.P18281071571383421088

namespace A036698

/-- `A001478(n+1)+A000603(n)` -/
def P18281071571383421088.Spec : Prop :=
  ∀ n, P18281071571383421088.a n = A036698 n

end A036698

/-! ## A036698.P2094640518300084739

`∑[A036703(n)+A036701(n)-1]`
-/

namespace A036698.P2094640518300084739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036703 n + (A036701 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036698.P2094640518300084739

namespace A036698

/-- `∑[A036703(n)+A036701(n)-1]` -/
def P2094640518300084739.Spec : Prop :=
  ∀ n, P2094640518300084739.a n = A036698 n

end A036698

/-! ## A036698.P9114172367927849308

`A036702(n)+A036700(n)-(n+1)`
-/

namespace A036698.P9114172367927849308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036702 n + (A036700 n - (n + 1 : ℤ))

end

end A036698.P9114172367927849308

namespace A036698

/-- `A036702(n)+A036700(n)-(n+1)` -/
def P9114172367927849308.Spec : Prop :=
  ∀ n, P9114172367927849308.a n = A036698 n

end A036698

/-! ## A036698.P17571333690822242876

`A036695(n)-(A036702(n)+A036700(n))`
-/

namespace A036698.P17571333690822242876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036695 n - (A036702 n + A036700 n)

end

end A036698.P17571333690822242876

namespace A036698

/-- `A036695(n)-(A036702(n)+A036700(n))` -/
def P17571333690822242876.Spec : Prop :=
  ∀ n, P17571333690822242876.a n = A036698 n

end A036698

/-! ## A036698.P10252186696820106856

`∑[A023443(A036697(n))]`
-/

namespace A036698.P10252186696820106856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A036697 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036698.P10252186696820106856

namespace A036698

/-- `∑[A023443(A036697(n))]` -/
def P10252186696820106856.Spec : Prop :=
  ∀ n, P10252186696820106856.a n = A036698 n

end A036698

/-! ## A036698.P4884057506322492646

`A136483(A004277(n))+n`
-/

namespace A036698.P4884057506322492646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136483 (A004277 n).toNat + (n : ℤ)

end

end A036698.P4884057506322492646

namespace A036698

/-- `A136483(A004277(n))+n` -/
def P4884057506322492646.Spec : Prop :=
  ∀ n, P4884057506322492646.a n = A036698 n

end A036698

/-! ## A036698.P13045068664819052806

`A136483(A028310(2*n))+n`
-/

namespace A036698.P13045068664819052806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136483 (A028310 (2 * n)).toNat + (n : ℤ)

end

end A036698.P13045068664819052806

namespace A036698

/-- `A136483(A028310(2*n))+n` -/
def P13045068664819052806.Spec : Prop :=
  ∀ n, P13045068664819052806.a n = A036698 n

end A036698

/-! ## A036698.P12094006227638105846

`∑[A002265(A036693(n))]`
-/

namespace A036698.P12094006227638105846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A036693 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036698.P12094006227638105846

namespace A036698

/-- `∑[A002265(A036693(n))]` -/
def P12094006227638105846.Spec : Prop :=
  ∀ n, P12094006227638105846.a n = A036698 n

end A036698

