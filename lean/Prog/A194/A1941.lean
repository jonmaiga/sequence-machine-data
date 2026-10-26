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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
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
import Seq.B001.C012
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A194101: Inverse permutation of A194100; every positive integer occurs exactly once.

The programs for A194101, there is no canonical definition to state claims against.
-/

/-! ## A194101.P5025733662520085313

`A194037(n)+A066628(A000045(n))`
-/

namespace A194101.P5025733662520085313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194037 n + A066628 (A000045 n).toNat

end

end A194101.P5025733662520085313

/-! ## A194101.P14133500370355417257

`A194037(n)+A000007(A161198(n))`
-/

namespace A194101.P14133500370355417257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194037 n + A000007 (A161198 n).toNat

end

end A194101.P14133500370355417257

/-! ## A194101.P392553960707797543

`A194037(n)^A034386(A362113(n))`
-/

namespace A194101.P392553960707797543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194037 n : ℚ) ^ (A034386 (A362113 n).toNat : ℤ)

end

end A194101.P392553960707797543

/-! ## A194101.P3317215899933106254

`A194037(n)%A038596(A005993(n))`
-/

namespace A194101.P3317215899933106254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194037 n) (A038596 (A005993 n).toNat)

end

end A194101.P3317215899933106254

/-! ## A194101.P220907327461325590

`A194037(n)+A162321(A272285(n+1))`
-/

namespace A194101.P220907327461325590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194037 n + A162321 (A272285 (n + 1)).toNat

end

end A194101.P220907327461325590

/-!
# A194102: a(n) = Sum_{j=1..n} floor(j*sqrt(2)); n-th partial sum of Beatty sequence for sqrt(2), A001951.

The programs for A194102, the canonical program `A194102.P16952581590974244032` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194102 has offset 1).

The definition of A194102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194102.P300790214151012815

`∑[floor((n+1)*sqrt(2))]`
-/

namespace A194102.P300790214151012815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194102.P300790214151012815

namespace A194102

/-- `∑[floor((n+1)*sqrt(2))]` -/
def P300790214151012815.Spec : Prop :=
  ∀ n, P300790214151012815.a n = A194102 (n + 1)

end A194102

/-! ## A194102.P10791705158778008016

`floor(a(n-1)+(n+1)*sqrt(2))` with `a(0)=1`
-/

namespace A194102.P10791705158778008016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A194102.P10791705158778008016

namespace A194102

/-- `floor(a(n-1)+(n+1)*sqrt(2))` -/
def P10791705158778008016.Spec : Prop :=
  ∀ n, P10791705158778008016.a n = A194102 (n + 1)

end A194102

/-! ## A194102.P5216044392306735721

`∑[A286909(n+1)]/2`
-/

namespace A194102.P5216044392306735721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286909 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A194102.P5216044392306735721

namespace A194102

/-- `∑[A286909(n+1)]/2` -/
def P5216044392306735721.Spec : Prop :=
  ∀ n, P5216044392306735721.a n = (A194102 (n + 1) : ℚ)

end A194102

/-! ## A194102.P16549362841051483230

`floor(∑[sqrt(A087055(n+1))])`
-/

namespace A194102.P16549362841051483230
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A087055 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A194102.P16549362841051483230

namespace A194102

/-- `floor(∑[sqrt(A087055(n+1))])` -/
def P16549362841051483230.Spec : Prop :=
  ∀ n, P16549362841051483230.a n = A194102 (n + 1)

end A194102

/-! ## A194102.P16952581590974244032

`and(∑[A001951(n+1)], -1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194102

/-- `and(∑[A001951(n+1)], -1)` -/
def P16952581590974244032.Spec : Prop :=
  ∀ n, P16952581590974244032.a n = A194102 (n + 1)

theorem P16952581590974244032.correct : P16952581590974244032.Spec := by
  intro n
  simp only [A194102, Nat.add_sub_cancel]

end A194102

/-! ## A194102.P13967264376068276148

`A194138(n+1)-∑[n+1]`
-/

namespace A194102.P13967264376068276148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194138 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194102.P13967264376068276148

namespace A194102

/-- `A194138(n+1)-∑[n+1]` -/
def P13967264376068276148.Spec : Prop :=
  ∀ n, P13967264376068276148.a n = A194102 (n + 1)

theorem P13967264376068276148.correct : P13967264376068276148.Spec := by
  intro n
  simp only [A194102, Nat.add_sub_cancel, A194102.P13967264376068276148.f1, A194102.P13967264376068276148.a, A194102.P16952581590974244032.f1, A194102.P16952581590974244032.a, A001951, A001951.P3206377842744091648.a, A194138, A194138.P1802011036160146576.f1, A194138.P1802011036160146576.a, A000196, A000196.P15434771586934192083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194102

/-! ## A194102.P10972926209440493480

`(n+1)²-∑[A074840(n+1)]`
-/

namespace A194102.P10972926209440493480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194102.P10972926209440493480

namespace A194102

/-- `(n+1)²-∑[A074840(n+1)]` -/
def P10972926209440493480.Spec : Prop :=
  ∀ n, P10972926209440493480.a n = A194102 (n + 1)

end A194102

/-! ## A194102.P11017235501032847983

`∑[A184922(n+1)]-(n+1)²`
-/

namespace A194102.P11017235501032847983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A194102.P11017235501032847983

namespace A194102

/-- `∑[A184922(n+1)]-(n+1)²` -/
def P11017235501032847983.Spec : Prop :=
  ∀ n, P11017235501032847983.a n = A194102 (n + 1)

end A194102

/-! ## A194102.P2298039788056881230

`∑[2-A195119(n+1)]+n²+n`
-/

namespace A194102.P2298039788056881230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A195119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 + n : ℤ)

end

end A194102.P2298039788056881230

namespace A194102

/-- `∑[2-A195119(n+1)]+n²+n` -/
def P2298039788056881230.Spec : Prop :=
  ∀ n, P2298039788056881230.a n = A194102 (n + 1)

end A194102

/-! ## A194102.P8044448419843641878

`(n+1)²-∑[∑[char[A003152(n+1)]]]`
-/

namespace A194102.P8044448419843641878
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194102.P8044448419843641878

namespace A194102

/-- `(n+1)²-∑[∑[char[A003152(n+1)]]]` -/
def P8044448419843641878.Spec : Prop :=
  ∀ n, P8044448419843641878.a n = A194102 (n + 1)

end A194102

/-! ## A194102.P5020589422753183242

`∑[A001952(n+1)]-(n+2)*(n+1)`
-/

namespace A194102.P5020589422753183242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 2) * (n + 1) : ℤ)

end

end A194102.P5020589422753183242

namespace A194102

/-- `∑[A001952(n+1)]-(n+2)*(n+1)` -/
def P5020589422753183242.Spec : Prop :=
  ∀ n, P5020589422753183242.a n = A194102 (n + 1)

end A194102

/-! ## A194102.P6710142790115112606

`∑[ceil((n+1)*sqrt(2))]-A000027(n+1)`
-/

namespace A194102.P6710142790115112606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000027 (n + 1)

end

end A194102.P6710142790115112606

namespace A194102

/-- `∑[ceil((n+1)*sqrt(2))]-A000027(n+1)` -/
def P6710142790115112606.Spec : Prop :=
  ∀ n, P6710142790115112606.a n = A194102 (n + 1)

end A194102

/-! ## A194102.P12375031597943069355

`A129232(n+1)+A129232(n)`
-/

namespace A194102.P12375031597943069355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129232 (n + 1) + A129232 n

end

end A194102.P12375031597943069355

namespace A194102

/-- `A129232(n+1)+A129232(n)` -/
def P12375031597943069355.Spec : Prop :=
  ∀ n, P12375031597943069355.a n = A194102 (n + 1)

end A194102

/-! ## A194102.P16932263850308855997

`A001951(n+1)+∑[A001951(n)]`
-/

namespace A194102.P16932263850308855997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194102.P16932263850308855997

namespace A194102

/-- `A001951(n+1)+∑[A001951(n)]` -/
def P16932263850308855997.Spec : Prop :=
  ∀ n, P16932263850308855997.a n = A194102 (n + 1)

end A194102

/-! ## A194102.P4508685497908739286

`A000217(n)+∑[A054071(n+1)]`
-/

namespace A194102.P4508685497908739286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194102.P4508685497908739286

namespace A194102

/-- `A000217(n)+∑[A054071(n+1)]` -/
def P4508685497908739286.Spec : Prop :=
  ∀ n, P4508685497908739286.a n = A194102 (n + 1)

end A194102

/-! ## A194102.P13439074447133130790

`∑[A070098(2*(n+1))]+C(n+2, 2)`
-/

namespace A194102.P13439074447133130790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose (n + 2) 2 : ℤ)

end

end A194102.P13439074447133130790

namespace A194102

/-- `∑[A070098(2*(n+1))]+C(n+2, 2)` -/
def P13439074447133130790.Spec : Prop :=
  ∀ n, P13439074447133130790.a n = A194102 (n + 1)

end A194102

/-! ## A194102.P158267348863971050

`∑[lt[A263844(n+1), 2]]+n+1`
-/

namespace A194102.P158267348863971050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263844 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A194102.P158267348863971050

namespace A194102

/-- `∑[lt[A263844(n+1), 2]]+n+1` -/
def P158267348863971050.Spec : Prop :=
  ∀ n, (P158267348863971050.a n : ℤ) = A194102 (n + 1)

end A194102

/-! ## A194102.P10696747519931925844

`A022775(n+2)-(n+2)`
-/

namespace A194102.P10696747519931925844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022775 (n + 2) - (n + 2 : ℤ)

end

end A194102.P10696747519931925844

namespace A194102

/-- `A022775(n+2)-(n+2)` -/
def P10696747519931925844.Spec : Prop :=
  ∀ n, P10696747519931925844.a n = A194102 (n + 1)

end A194102

/-! ## A194102.P15116364502482331671

`eq[1, A007336(n+2)]-n`
-/

namespace A194102.P15116364502482331671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007336 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A194102.P15116364502482331671

namespace A194102

/-- `eq[1, A007336(n+2)]-n` -/
def P15116364502482331671.Spec : Prop :=
  ∀ n, P15116364502482331671.a n = A194102 (n + 1)

end A194102

/-!
# A194103: Natural fractal sequence of A194102.

The programs for A194103, there is no canonical definition to state claims against.
-/

/-! ## A194103.P10953730536676878519

`A002260(A194105(n+1))`
-/

namespace A194103.P10953730536676878519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194105 (n + 1)).toNat

end

end A194103.P10953730536676878519

/-! ## A194103.P6911770341751584779

`A002262(A194105(n+1)-1)+1`
-/

namespace A194103.P6911770341751584779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A194105 (n + 1) - 1).toNat + 1

end

end A194103.P6911770341751584779

/-! ## A194103.P1213016405555033610

`A131818(A194105(n+1)+1)-1`
-/

namespace A194103.P1213016405555033610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A194105 (n + 1) + 1).toNat - 1

end

end A194103.P1213016405555033610

/-! ## A194103.P9053937394471097101

`A047996(A052307(n+2))+A025668(A194105(n+1))`
-/

namespace A194103.P9053937394471097101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A052307 (n + 2)).toNat + A025668 (A194105 (n + 1)).toNat

end

end A194103.P9053937394471097101

/-! ## A194103.P8492939874413880935

`A002260(lt[A329515(n), A014473(n)])`
-/

namespace A194103.P8492939874413880935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329515 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194103.P8492939874413880935

/-!
# A194104: Natural interspersion of A194102; a rectangular array, by antidiagonals.

The programs for A194104, there is no canonical definition to state claims against.
-/

/-! ## A194104.P11678389072308932747

`A194845(A194071(n+1)%A033266(n+1))`
-/

namespace A194104.P11678389072308932747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194845 (Int.tmod (A194071 (n + 1)) (A033266 (n + 1))).toNat

end

end A194104.P11678389072308932747

/-! ## A194104.P11837236371999122967

`A194845(A194071(n+1))%A062572(n+1)`
-/

namespace A194104.P11837236371999122967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194845 (A194071 (n + 1)).toNat) (A062572 (n + 1))

end

end A194104.P11837236371999122967

/-!
# A194105: Inverse permutation of A194104; every positive integer occurs exactly once.

The programs for A194105, there is no canonical definition to state claims against.
-/

/-! ## A194105.P11473341634975505090

`A194012(∑[A047996(A161953(n+1))])`
-/

namespace A194105.P11473341634975505090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A161953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194012 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194105.P11473341634975505090

/-! ## A194105.P12734088895154378600

`A194072(A194057(n+1))%p?[A256666(n)]`
-/

namespace A194105.P12734088895154378600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194072 (A194057 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A194105.P12734088895154378600

/-! ## A194105.P5081963117728009269

`A194072(A194057(n+1)%A033266(n+1))`
-/

namespace A194105.P5081963117728009269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194072 (Int.tmod (A194057 (n + 1)) (A033266 (n + 1))).toNat

end

end A194105.P5081963117728009269

/-! ## A194105.P15882925054277636722

`A194072(A194846(n+1)%A033266(n+1))`
-/

namespace A194105.P15882925054277636722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194072 (Int.tmod (A194846 (n + 1)) (A033266 (n + 1))).toNat

end

end A194105.P15882925054277636722

/-!
# A194106: Sum{floor(j*sqrt(3)) : 1<=j<=n}; n-th partial sum of Beatty sequence for sqrt(3).

The programs for A194106, the canonical program `A194106.P3441247699156475905` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194106 has offset 1).

The definition of A194106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194106.P5137193092066908505

`∑[floor((n+1)*sqrt(3))]`
-/

namespace A194106.P5137193092066908505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194106.P5137193092066908505

namespace A194106

/-- `∑[floor((n+1)*sqrt(3))]` -/
def P5137193092066908505.Spec : Prop :=
  ∀ n, P5137193092066908505.a n = A194106 (n + 1)

end A194106

/-! ## A194106.P9399731405811942876

`a(n-1)+floor((n+1)*sqrt(3))` with `a(0)=1`
-/

namespace A194106.P9399731405811942876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋

end

end A194106.P9399731405811942876

namespace A194106

/-- `a(n-1)+floor((n+1)*sqrt(3))` -/
def P9399731405811942876.Spec : Prop :=
  ∀ n, P9399731405811942876.a n = A194106 (n + 1)

end A194106

/-! ## A194106.P3441247699156475905

`and(∑[A022838(n+1)], -1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194106

/-- `and(∑[A022838(n+1)], -1)` -/
def P3441247699156475905.Spec : Prop :=
  ∀ n, P3441247699156475905.a n = A194106 (n + 1)

theorem P3441247699156475905.correct : P3441247699156475905.Spec := by
  intro n
  simp only [A194106, Nat.add_sub_cancel]

end A194106

/-! ## A194106.P11962975186800295998

`∑[A180122(n+1)]-∑[n]`
-/

namespace A194106.P11962975186800295998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194106.P11962975186800295998

namespace A194106

/-- `∑[A180122(n+1)]-∑[n]` -/
def P11962975186800295998.Spec : Prop :=
  ∀ n, P11962975186800295998.a n = A194106 (n + 1)

end A194106

/-! ## A194106.P12332687925255894064

`A194140(n+1)-∑[n+1]`
-/

namespace A194106.P12332687925255894064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194140 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194106.P12332687925255894064

namespace A194106

/-- `A194140(n+1)-∑[n+1]` -/
def P12332687925255894064.Spec : Prop :=
  ∀ n, P12332687925255894064.a n = A194106 (n + 1)

end A194106

/-! ## A194106.P17136953926756508502

`∑[A198081(n+1)]-(n+1)`
-/

namespace A194106.P17136953926756508502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A194106.P17136953926756508502

namespace A194106

/-- `∑[A198081(n+1)]-(n+1)` -/
def P17136953926756508502.Spec : Prop :=
  ∀ n, P17136953926756508502.a n = A194106 (n + 1)

end A194106

/-! ## A194106.P15890376812819311148

`∑[A080757(n)]+a(n-1)` with `a(0)=1`
-/

namespace A194106.P15890376812819311148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A194106.P15890376812819311148

namespace A194106

/-- `∑[A080757(n)]+a(n-1)` -/
def P15890376812819311148.Spec : Prop :=
  ∀ n, P15890376812819311148.a n = A194106 (n + 1)

end A194106

/-! ## A194106.P12789686227802831980

`∑[A180123(n+1)]-(n+1)²`
-/

namespace A194106.P12789686227802831980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A194106.P12789686227802831980

namespace A194106

/-- `∑[A180123(n+1)]-(n+1)²` -/
def P12789686227802831980.Spec : Prop :=
  ∀ n, P12789686227802831980.a n = A194106 (n + 1)

end A194106

/-! ## A194106.P8035422992882604454

`∑[A054088(n+1)]-∑[n+1]`
-/

namespace A194106.P8035422992882604454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194106.P8035422992882604454

namespace A194106

/-- `∑[A054088(n+1)]-∑[n+1]` -/
def P8035422992882604454.Spec : Prop :=
  ∀ n, P8035422992882604454.a n = A194106 (n + 1)

end A194106

/-! ## A194106.P16627206105663419358

`∑[∑[A007538(n+1)]]-∑[n+1]`
-/

namespace A194106.P16627206105663419358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A194106.P16627206105663419358

namespace A194106

/-- `∑[∑[A007538(n+1)]]-∑[n+1]` -/
def P16627206105663419358.Spec : Prop :=
  ∀ n, P16627206105663419358.a n = A194106 (n + 1)

end A194106

/-! ## A194106.P5507646700038469261

`A022838(2*n-n+1)+a(n-1)` with `a(0)=1`
-/

namespace A194106.P5507646700038469261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022838 ((2 * n : ℤ) - (n : ℤ) + 1).toNat + a (n - 1)

end

end A194106.P5507646700038469261

namespace A194106

/-- `A022838(2*n-n+1)+a(n-1)` -/
def P5507646700038469261.Spec : Prop :=
  ∀ n, P5507646700038469261.a n = A194106 (n + 1)

end A194106

/-! ## A194106.P13841222547237641417

`root(∑[A022838(n+1)], A054977(n))`
-/

namespace A194106.P13841222547237641417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (A054977 n : ℝ))

end

end A194106.P13841222547237641417

namespace A194106

/-- `root(∑[A022838(n+1)], A054977(n))` -/
def P13841222547237641417.Spec : Prop :=
  ∀ n, P13841222547237641417.a n = (A194106 (n + 1) : ℝ)

end A194106

/-! ## A194106.P15559814706728060967

`∑[A022838(n+1)]%A002148(n)`
-/

namespace A194106.P15559814706728060967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A002148 n)

end

end A194106.P15559814706728060967

namespace A194106

/-- `∑[A022838(n+1)]%A002148(n)` -/
def P15559814706728060967.Spec : Prop :=
  ∀ n, P15559814706728060967.a n = A194106 (n + 1)

end A194106

/-! ## A194106.P6143037147199506428

`gcd(∑[A022838(n+1)], A000038(n))`
-/

namespace A194106.P6143037147199506428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A194106.P6143037147199506428

namespace A194106

/-- `gcd(∑[A022838(n+1)], A000038(n))` -/
def P6143037147199506428.Spec : Prop :=
  ∀ n, (P6143037147199506428.a n : ℤ) = A194106 (n + 1)

end A194106

/-! ## A194106.P2804601151148110910

`lcm(∑[A022838(n+1)], A033999(n))`
-/

namespace A194106.P2804601151148110910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A033999 n)

end

end A194106.P2804601151148110910

namespace A194106

/-- `lcm(∑[A022838(n+1)], A033999(n))` -/
def P2804601151148110910.Spec : Prop :=
  ∀ n, (P2804601151148110910.a n : ℤ) = A194106 (n + 1)

end A194106

/-! ## A194106.P12601628822411858036

`A007318(C(2, n))*∑[A022838(n+1)]`
-/

namespace A194106.P12601628822411858036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194106.P12601628822411858036

namespace A194106

/-- `A007318(C(2, n))*∑[A022838(n+1)]` -/
def P12601628822411858036.Spec : Prop :=
  ∀ n, P12601628822411858036.a n = A194106 (n + 1)

end A194106

/-! ## A194106.P6362592027330194963

`A022838(n+1)+∑[comp[A054406(n+1)]]`
-/

namespace A194106.P6362592027330194963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194106.P6362592027330194963

namespace A194106

/-- `A022838(n+1)+∑[comp[A054406(n+1)]]` -/
def P6362592027330194963.Spec : Prop :=
  ∀ n, P6362592027330194963.a n = A194106 (n + 1)

end A194106

/-! ## A194106.P13723768737185399153

`∑[A022838(n+1)]*A166486(2*n+1)`
-/

namespace A194106.P13723768737185399153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A166486 (2 * n + 1)

end

end A194106.P13723768737185399153

namespace A194106

/-- `∑[A022838(n+1)]*A166486(2*n+1)` -/
def P13723768737185399153.Spec : Prop :=
  ∀ n, P13723768737185399153.a n = A194106 (n + 1)

end A194106

/-! ## A194106.P8870591503558118520

`∑[A022838(n+1)]*A033999(2*n)`
-/

namespace A194106.P8870591503558118520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (2 * n)

end

end A194106.P8870591503558118520

namespace A194106

/-- `∑[A022838(n+1)]*A033999(2*n)` -/
def P8870591503558118520.Spec : Prop :=
  ∀ n, P8870591503558118520.a n = A194106 (n + 1)

end A194106

/-! ## A194106.P13459136184453420166

`A260190(3*n+1)+∑[A022838(n+1)]`
-/

namespace A194106.P13459136184453420166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260190 (3 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194106.P13459136184453420166

namespace A194106

/-- `A260190(3*n+1)+∑[A022838(n+1)]` -/
def P13459136184453420166.Spec : Prop :=
  ∀ n, P13459136184453420166.a n = A194106 (n + 1)

end A194106

/-!
# A194107: Natural fractal sequence of A194106.

The programs for A194107, there is no canonical definition to state claims against.
-/

/-! ## A194107.P11492836841073884736

`A002260(A194109(n+1))`
-/

namespace A194107.P11492836841073884736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194109 (n + 1)).toNat

end

end A194107.P11492836841073884736

/-! ## A194107.P9479865991452531480

`A002262(A194109(n+1)-1)+1`
-/

namespace A194107.P9479865991452531480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A194109 (n + 1) - 1).toNat + 1

end

end A194107.P9479865991452531480

/-! ## A194107.P12664528686919982870

`A131818(A194109(n+1)+1)-1`
-/

namespace A194107.P12664528686919982870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A194109 (n + 1) + 1).toNat - 1

end

end A194107.P12664528686919982870

/-! ## A194107.P5333813115228062590

`A317950(gcd(n, n+1))+A131818(A194109(n+1)+1)`
-/

namespace A194107.P5333813115228062590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317950 (Nat.gcd n (n + 1)) + A131818 (A194109 (n + 1) + 1).toNat

end

end A194107.P5333813115228062590

/-! ## A194107.P5130832318433190131

`A134824(A047842(n))+A131818(A194109(n+1)+1)`
-/

namespace A194107.P5130832318433190131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A047842 n).toNat + A131818 (A194109 (n + 1) + 1).toNat

end

end A194107.P5130832318433190131

/-!
# A194109: Inverse permutation of A194108; every positive integer occurs exactly once.

The programs for A194109, there is no canonical definition to state claims against.
-/

/-! ## A194109.P5251538032210247231

`A194033(A343822(n+1))+A000007(A048586(n))`
-/

namespace A194109.P5251538032210247231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194033 (A343822 (n + 1)).toNat + A000007 (A048586 n).toNat

end

end A194109.P5251538032210247231

/-! ## A194109.P18012498528066627264

`A001222(A338132(n+1))*A194033(A343822(n+1))`
-/

namespace A194109.P18012498528066627264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A338132 (n + 1)).toNat * A194033 (A343822 (n + 1)).toNat

end

end A194109.P18012498528066627264

/-! ## A194109.P10613126436751845673

`A194033(A343822(n+1)+A091536(n+2))`
-/

namespace A194109.P10613126436751845673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194033 (A343822 (n + 1) + A091536 (n + 2)).toNat

end

end A194109.P10613126436751845673

/-! ## A194109.P16007048587682826589

`A194033(A343822(n+1)^A008835(n+1))`
-/

namespace A194109.P16007048587682826589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194033 (SequenceMachineLib.roundAway ((A343822 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A194109.P16007048587682826589

/-! ## A194109.P10193418080793920190

`A194033(A077168(n))`
-/

namespace A194109.P10193418080793920190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194033 (A077168 n).toNat

end

end A194109.P10193418080793920190

/-!
# A194110: Sum{floor(j*sqrt(5)) : 1<=j<=n}; n-th partial sum of Beatty sequence for sqrt(5).

The programs for A194110, the canonical program `A194110.P16949318337987914830` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194110 has offset 1).

The definition of A194110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194110.P2716216224399922905

`∑[floor((n+1)*sqrt(5))]`
-/

namespace A194110.P2716216224399922905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194110.P2716216224399922905

namespace A194110

/-- `∑[floor((n+1)*sqrt(5))]` -/
def P2716216224399922905.Spec : Prop :=
  ∀ n, P2716216224399922905.a n = A194110 (n + 1)

end A194110

/-! ## A194110.P16949318337987914830

`and(∑[A022839(n+1)], -1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194110

/-- `and(∑[A022839(n+1)], -1)` -/
def P16949318337987914830.Spec : Prop :=
  ∀ n, P16949318337987914830.a n = A194110 (n + 1)

theorem P16949318337987914830.correct : P16949318337987914830.Spec := by
  intro n
  simp only [A194110, Nat.add_sub_cancel]

end A194110

/-! ## A194110.P12158452606552941699

`A194144(n+1)+∑[n+1]`
-/

namespace A194110.P12158452606552941699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194144 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194110.P12158452606552941699

namespace A194110

/-- `A194144(n+1)+∑[n+1]` -/
def P12158452606552941699.Spec : Prop :=
  ∀ n, P12158452606552941699.a n = A194110 (n + 1)

theorem P12158452606552941699.correct : P12158452606552941699.Spec := by
  intro n
  simp only [A194110, Nat.add_sub_cancel, A194110.P12158452606552941699.f1, A194110.P12158452606552941699.a, A194110.P16949318337987914830.f1, A194110.P16949318337987914830.a, A022839, A022839.P1029373569643495419.a, A194144, A194144.P17823940702748119438.f1, A194144.P17823940702748119438.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194110

/-! ## A194110.P13658607004694971356

`∑[n+1]+∑[A001961(n+1)]`
-/

namespace A194110.P13658607004694971356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194110.P13658607004694971356

namespace A194110

/-- `∑[n+1]+∑[A001961(n+1)]` -/
def P13658607004694971356.Spec : Prop :=
  ∀ n, P13658607004694971356.a n = A194110 (n + 1)

end A194110

/-! ## A194110.P1548122892082622078

`∑[A276854(n+1)]-∑[n+1]`
-/

namespace A194110.P1548122892082622078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194110.P1548122892082622078

namespace A194110

/-- `∑[A276854(n+1)]-∑[n+1]` -/
def P1548122892082622078.Spec : Prop :=
  ∀ n, P1548122892082622078.a n = A194110 (n + 1)

end A194110

/-! ## A194110.P10620620574443030725

`∑[A022839(n+1)]*A035263(2*n+1)`
-/

namespace A194110.P10620620574443030725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A035263 (2 * n + 1)

end

end A194110.P10620620574443030725

namespace A194110

/-- `∑[A022839(n+1)]*A035263(2*n+1)` -/
def P10620620574443030725.Spec : Prop :=
  ∀ n, P10620620574443030725.a n = A194110 (n + 1)

end A194110

/-! ## A194110.P4280960225549802134

`∑[A022839(n+1)]*A257993(2*n+1)`
-/

namespace A194110.P4280960225549802134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A257993 (2 * n + 1)

end

end A194110.P4280960225549802134

namespace A194110

/-- `∑[A022839(n+1)]*A257993(2*n+1)` -/
def P4280960225549802134.Spec : Prop :=
  ∀ n, P4280960225549802134.a n = A194110 (n + 1)

end A194110

/-! ## A194110.P9304002095111829300

`∑[A300763(n+1)]+(n+1)²`
-/

namespace A194110.P9304002095111829300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A194110.P9304002095111829300

namespace A194110

/-- `∑[A300763(n+1)]+(n+1)²` -/
def P9304002095111829300.Spec : Prop :=
  ∀ n, P9304002095111829300.a n = A194110 (n + 1)

end A194110

/-! ## A194110.P14258028846897554400

`∑[A022342(2*(n+1))]-∑[n]`
-/

namespace A194110.P14258028846897554400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194110.P14258028846897554400

namespace A194110

/-- `∑[A022342(2*(n+1))]-∑[n]` -/
def P14258028846897554400.Spec : Prop :=
  ∀ n, P14258028846897554400.a n = A194110 (n + 1)

end A194110

/-! ## A194110.P10081121425946703963

`∑[A000201(2*(n+1))]-A000217(n+1)`
-/

namespace A194110.P10081121425946703963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000217 (n + 1)

end

end A194110.P10081121425946703963

namespace A194110

/-- `∑[A000201(2*(n+1))]-A000217(n+1)` -/
def P10081121425946703963.Spec : Prop :=
  ∀ n, P10081121425946703963.a n = A194110 (n + 1)

end A194110

/-! ## A194110.P14053118483557825712

`A022779(n+1)+A001961(n+1)`
-/

namespace A194110.P14053118483557825712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022779 (n + 1) + A001961 (n + 1)

end

end A194110.P14053118483557825712

namespace A194110

/-- `A022779(n+1)+A001961(n+1)` -/
def P14053118483557825712.Spec : Prop :=
  ∀ n, P14053118483557825712.a n = A194110 (n + 1)

end A194110

/-! ## A194110.P12590470371643100808

`A022779(n+2)-(n+2)`
-/

namespace A194110.P12590470371643100808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022779 (n + 2) - (n + 2 : ℤ)

end

end A194110.P12590470371643100808

namespace A194110

/-- `A022779(n+2)-(n+2)` -/
def P12590470371643100808.Spec : Prop :=
  ∀ n, P12590470371643100808.a n = A194110 (n + 1)

end A194110

/-!
# A194111: Sum{floor(j*sqrt(7)) : 1<=j<=n}; n-th partial sum of Beatty sequence for sqrt(7).

The programs for A194111, the canonical program `A194111.P2916237642784981807` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194111 has offset 1).

The definition of A194111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194111.P12998694931588197558

`∑[floor((n+1)*sqrt(7))]`
-/

namespace A194111.P12998694931588197558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (7 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194111.P12998694931588197558

namespace A194111

/-- `∑[floor((n+1)*sqrt(7))]` -/
def P12998694931588197558.Spec : Prop :=
  ∀ n, P12998694931588197558.a n = A194111 (n + 1)

end A194111

/-! ## A194111.P2982994785221422441

`floor(a(n-1)+(n+1)*sqrt(7))` with `a(0)=2`
-/

namespace A194111.P2982994785221422441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n + 1 : ℝ) * Real.sqrt (7 : ℝ)⌋

end

end A194111.P2982994785221422441

namespace A194111

/-- `floor(a(n-1)+(n+1)*sqrt(7))` -/
def P2982994785221422441.Spec : Prop :=
  ∀ n, P2982994785221422441.a n = A194111 (n + 1)

end A194111

/-! ## A194111.P2916237642784981807

`abs(∑[A198084(n+1)-1])`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194111

/-- `abs(∑[A198084(n+1)-1])` -/
def P2916237642784981807.Spec : Prop :=
  ∀ n, P2916237642784981807.a n = A194111 (n + 1)

theorem P2916237642784981807.correct : P2916237642784981807.Spec := by
  intro n
  simp only [A194111, Nat.add_sub_cancel]

end A194111

/-! ## A194111.P463020054531545493

`or(∑[A022841(n+1)], char[1])`
-/

namespace A194111.P463020054531545493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022841 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A194111.P463020054531545493

namespace A194111

/-- `or(∑[A022841(n+1)], char[1])` -/
def P463020054531545493.Spec : Prop :=
  ∀ n, P463020054531545493.a n = A194111 (n + 1)

end A194111

/-! ## A194111.P9255988321169352966

`∑[A022841(n+1)]%A016795(n)`
-/

namespace A194111.P9255988321169352966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A016795 n)

end

end A194111.P9255988321169352966

namespace A194111

/-- `∑[A022841(n+1)]%A016795(n)` -/
def P9255988321169352966.Spec : Prop :=
  ∀ n, P9255988321169352966.a n = A194111 (n + 1)

end A194111

/-! ## A194111.P18137584997628805462

`abs(∑[A023443(A198084(n+1))])`
-/

namespace A194111.P18137584997628805462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A198084 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A194111.P18137584997628805462

namespace A194111

/-- `abs(∑[A023443(A198084(n+1))])` -/
def P18137584997628805462.Spec : Prop :=
  ∀ n, P18137584997628805462.a n = A194111 (n + 1)

end A194111

/-! ## A194111.P12116457464690681087

`A022781(n+2)-(n+2)`
-/

namespace A194111.P12116457464690681087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022781 (n + 2) - (n + 2 : ℤ)

end

end A194111.P12116457464690681087

namespace A194111

/-- `A022781(n+2)-(n+2)` -/
def P12116457464690681087.Spec : Prop :=
  ∀ n, P12116457464690681087.a n = A194111 (n + 1)

end A194111

/-! ## A194111.P735186112374805444

`A000027(∑[A022841(n+1)])`
-/

namespace A194111.P735186112374805444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194111.P735186112374805444

namespace A194111

/-- `A000027(∑[A022841(n+1)])` -/
def P735186112374805444.Spec : Prop :=
  ∀ n, P735186112374805444.a n = A194111 (n + 1)

end A194111

/-! ## A194111.P8945680307014520752

`lcm(∑[A202306((n+1)²)], A033999(n))`
-/

namespace A194111.P8945680307014520752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202306 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A033999 n)

end

end A194111.P8945680307014520752

namespace A194111

/-- `lcm(∑[A202306((n+1)²)], A033999(n))` -/
def P8945680307014520752.Spec : Prop :=
  ∀ n, (P8945680307014520752.a n : ℤ) = A194111 (n + 1)

end A194111

/-! ## A194111.P7357218799231917413

`eq[1, A023119(n+2)]-n`
-/

namespace A194111.P7357218799231917413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023119 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A194111.P7357218799231917413

namespace A194111

/-- `eq[1, A023119(n+2)]-n` -/
def P7357218799231917413.Spec : Prop :=
  ∀ n, P7357218799231917413.a n = A194111 (n + 1)

end A194111

/-!
# A194112: a(n) = Sum_{j=1..n} floor(j*sqrt(8)); n-th partial sum of Beatty sequence for sqrt(8).

The programs for A194112, the canonical program `A194112.P17551238798622541587` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194112 has offset 1).

The definition of A194112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194112.P2667577386370855366

`∑[floor((n+1)*sqrt(8))]`
-/

namespace A194112.P2667577386370855366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (8 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194112.P2667577386370855366

namespace A194112

/-- `∑[floor((n+1)*sqrt(8))]` -/
def P2667577386370855366.Spec : Prop :=
  ∀ n, P2667577386370855366.a n = A194112 (n + 1)

end A194112

/-! ## A194112.P2638831301096434139

`floor(a(n-1)+(n+1)*sqrt(8))` with `a(0)=2`
-/

namespace A194112.P2638831301096434139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n + 1 : ℝ) * Real.sqrt (8 : ℝ)⌋

end

end A194112.P2638831301096434139

namespace A194112

/-- `floor(a(n-1)+(n+1)*sqrt(8))` -/
def P2638831301096434139.Spec : Prop :=
  ∀ n, P2638831301096434139.a n = A194112 (n + 1)

end A194112

/-! ## A194112.P17551238798622541587

`and(∑[A022842(n+1)], -1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194112

/-- `and(∑[A022842(n+1)], -1)` -/
def P17551238798622541587.Spec : Prop :=
  ∀ n, P17551238798622541587.a n = A194112 (n + 1)

theorem P17551238798622541587.correct : P17551238798622541587.Spec := by
  intro n
  simp only [A194112, Nat.add_sub_cancel]

end A194112

/-! ## A194112.P6952732755094177654

`∑[A198263(n+1)]-(n+1)`
-/

namespace A194112.P6952732755094177654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A194112.P6952732755094177654

namespace A194112

/-- `∑[A198263(n+1)]-(n+1)` -/
def P6952732755094177654.Spec : Prop :=
  ∀ n, P6952732755094177654.a n = A194112 (n + 1)

end A194112

/-! ## A194112.P3195570788073180104

`∑[A184921(n+1)]-(n+1)²`
-/

namespace A194112.P3195570788073180104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A194112.P3195570788073180104

namespace A194112

/-- `∑[A184921(n+1)]-(n+1)²` -/
def P3195570788073180104.Spec : Prop :=
  ∀ n, P3195570788073180104.a n = A194112 (n + 1)

end A194112

/-! ## A194112.P10719726648923764054

`A022842(n+1)+a(A004277(n)-(n+1))` with `a(0)=2`
-/

namespace A194112.P10719726648923764054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A022842 (n + 1) + a (A004277 n - (n + 1 : ℤ)).toNat

end

end A194112.P10719726648923764054

namespace A194112

/-- `A022842(n+1)+a(A004277(n)-(n+1))` -/
def P10719726648923764054.Spec : Prop :=
  ∀ n, P10719726648923764054.a n = A194112 (n + 1)

end A194112

/-! ## A194112.P3717412335557308669

`A129232(2*(n+1))`
-/

namespace A194112.P3717412335557308669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129232 (2 * (n + 1))

end

end A194112.P3717412335557308669

namespace A194112

/-- `A129232(2*(n+1))` -/
def P3717412335557308669.Spec : Prop :=
  ∀ n, P3717412335557308669.a n = A194112 (n + 1)

end A194112

/-! ## A194112.P12714921118222653025

`A001951(2*(n+1))+a(n-1)` with `a(0)=2`
-/

namespace A194112.P12714921118222653025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001951 (2 * (n + 1)) + a (n - 1)

end

end A194112.P12714921118222653025

namespace A194112

/-- `A001951(2*(n+1))+a(n-1)` -/
def P12714921118222653025.Spec : Prop :=
  ∀ n, P12714921118222653025.a n = A194112 (n + 1)

end A194112

/-! ## A194112.P3799880651992413317

`∑[A001952(2*(n+1))]-A046092(n+1)`
-/

namespace A194112.P3799880651992413317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A046092 (n + 1)

end

end A194112.P3799880651992413317

namespace A194112

/-- `∑[A001952(2*(n+1))]-A046092(n+1)` -/
def P3799880651992413317.Spec : Prop :=
  ∀ n, P3799880651992413317.a n = A194112 (n + 1)

end A194112

/-! ## A194112.P15180880109739153272

`A022793(n+2)-(n+2)`
-/

namespace A194112.P15180880109739153272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022793 (n + 2) - (n + 2 : ℤ)

end

end A194112.P15180880109739153272

namespace A194112

/-- `A022793(n+2)-(n+2)` -/
def P15180880109739153272.Spec : Prop :=
  ∀ n, P15180880109739153272.a n = A194112 (n + 1)

end A194112

/-!
# A194113: a(n) = Sum_{j=1..n} floor(j*sqrt(10)); n-th partial sum of Beatty sequence for sqrt(10).

The programs for A194113, the canonical program `A194113.P6583360892013188664` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194113 has offset 1).

The definition of A194113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194113.P13111501007785147434

`∑[floor((n+1)*sqrt(10))]`
-/

namespace A194113.P13111501007785147434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (10 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194113.P13111501007785147434

namespace A194113

/-- `∑[floor((n+1)*sqrt(10))]` -/
def P13111501007785147434.Spec : Prop :=
  ∀ n, P13111501007785147434.a n = A194113 (n + 1)

end A194113

/-! ## A194113.P15052977749144723978

`a(n-1)+floor((n+1)*sqrt(10))` with `a(0)=3`
-/

namespace A194113.P15052977749144723978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + ⌊(n + 1 : ℝ) * Real.sqrt (10 : ℝ)⌋

end

end A194113.P15052977749144723978

namespace A194113

/-- `a(n-1)+floor((n+1)*sqrt(10))` -/
def P15052977749144723978.Spec : Prop :=
  ∀ n, P15052977749144723978.a n = A194113 (n + 1)

end A194113

/-! ## A194113.P6583360892013188664

`∑[A198265(n+1)]-(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194113

/-- `∑[A198265(n+1)]-(n+1)` -/
def P6583360892013188664.Spec : Prop :=
  ∀ n, P6583360892013188664.a n = A194113 (n + 1)

theorem P6583360892013188664.correct : P6583360892013188664.Spec := by
  intro n
  simp only [A194113, Nat.add_sub_cancel]

end A194113

/-! ## A194113.P16527127087391998636

`lcm((-1)^n, ∑[A177102(n+1)])`
-/

namespace A194113.P16527127087391998636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177102 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194113.P16527127087391998636

namespace A194113

/-- `lcm((-1)^n, ∑[A177102(n+1)])` -/
def P16527127087391998636.Spec : Prop :=
  ∀ n, (P16527127087391998636.a n : ℤ) = A194113 (n + 1)

end A194113

/-! ## A194113.P17926644597895194857

`∑[A177102(n+1)]%A177071(n)`
-/

namespace A194113.P17926644597895194857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A177071 n)

end

end A194113.P17926644597895194857

namespace A194113

/-- `∑[A177102(n+1)]%A177071(n)` -/
def P17926644597895194857.Spec : Prop :=
  ∀ n, P17926644597895194857.a n = A194113 (n + 1)

end A194113

/-! ## A194113.P13740394937585722009

`or(∑[A177102(n+1)], A000007(n))`
-/

namespace A194113.P13740394937585722009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A194113.P13740394937585722009

namespace A194113

/-- `or(∑[A177102(n+1)], A000007(n))` -/
def P13740394937585722009.Spec : Prop :=
  ∀ n, P13740394937585722009.a n = A194113 (n + 1)

end A194113

/-! ## A194113.P9349625075617205709

`∑[∑[A081168(n)]]%A060800(n+1)`
-/

namespace A194113.P9349625075617205709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081168 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A060800 (n + 1))

end

end A194113.P9349625075617205709

namespace A194113

/-- `∑[∑[A081168(n)]]%A060800(n+1)` -/
def P9349625075617205709.Spec : Prop :=
  ∀ n, P9349625075617205709.a n = A194113 (n + 1)

end A194113

/-! ## A194113.P12800584761695842802

`A286747(A286355(n+1))+∑[A177102(n+1)]`
-/

namespace A194113.P12800584761695842802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286747 (A286355 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194113.P12800584761695842802

namespace A194113

/-- `A286747(A286355(n+1))+∑[A177102(n+1)]` -/
def P12800584761695842802.Spec : Prop :=
  ∀ n, P12800584761695842802.a n = A194113 (n + 1)

end A194113

/-! ## A194113.P7335860966327596633

`∑[A177102(n+1)]/A141044(2*(n+1))`
-/

namespace A194113.P7335860966327596633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177102 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A141044 (2 * (n + 1)) : ℚ)

end

end A194113.P7335860966327596633

namespace A194113

/-- `∑[A177102(n+1)]/A141044(2*(n+1))` -/
def P7335860966327596633.Spec : Prop :=
  ∀ n, P7335860966327596633.a n = (A194113 (n + 1) : ℚ)

end A194113

/-! ## A194113.P4036203598108245548

`A000027(∑[∑[A081168(n)]])`
-/

namespace A194113.P4036203598108245548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081168 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194113.P4036203598108245548

namespace A194113

/-- `A000027(∑[∑[A081168(n)]])` -/
def P4036203598108245548.Spec : Prop :=
  ∀ n, P4036203598108245548.a n = A194113 (n + 1)

end A194113

/-! ## A194113.P9992878062811214947

`A000027(∑[A177102(n+1)])`
-/

namespace A194113.P9992878062811214947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194113.P9992878062811214947

namespace A194113

/-- `A000027(∑[A177102(n+1)])` -/
def P9992878062811214947.Spec : Prop :=
  ∀ n, P9992878062811214947.a n = A194113 (n + 1)

end A194113

/-!
# A194114: Sum{floor(j*sqrt(11)) : 1<=j<=n}; n-th partial sum of Beatty sequence for sqrt(11).

The programs for A194114, the canonical program `A194114.P14564231074961159820` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194114 has offset 1).

The definition of A194114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194114.P4792379185621693483

`∑[floor((n+1)*sqrt(11))]`
-/

namespace A194114.P4792379185621693483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (11 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194114.P4792379185621693483

namespace A194114

/-- `∑[floor((n+1)*sqrt(11))]` -/
def P4792379185621693483.Spec : Prop :=
  ∀ n, P4792379185621693483.a n = A194114 (n + 1)

end A194114

/-! ## A194114.P3084220407152874351

`floor(a(n-1)+(n+1)*sqrt(11))` with `a(0)=3`
-/

namespace A194114.P3084220407152874351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n + 1 : ℝ) * Real.sqrt (11 : ℝ)⌋

end

end A194114.P3084220407152874351

namespace A194114

/-- `floor(a(n-1)+(n+1)*sqrt(11))` -/
def P3084220407152874351.Spec : Prop :=
  ∀ n, P3084220407152874351.a n = A194114 (n + 1)

end A194114

/-! ## A194114.P1507047194533266086

`or(∑[A171982(n+1)], char[1])`
-/

namespace A194114.P1507047194533266086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171982 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A194114.P1507047194533266086

namespace A194114

/-- `or(∑[A171982(n+1)], char[1])` -/
def P1507047194533266086.Spec : Prop :=
  ∀ n, P1507047194533266086.a n = A194114 (n + 1)

end A194114

/-! ## A194114.P14564231074961159820

`∑[A198266(n+1)]-(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194114

/-- `∑[A198266(n+1)]-(n+1)` -/
def P14564231074961159820.Spec : Prop :=
  ∀ n, P14564231074961159820.a n = A194114 (n + 1)

theorem P14564231074961159820.correct : P14564231074961159820.Spec := by
  intro n
  simp only [A194114, Nat.add_sub_cancel]

end A194114

/-! ## A194114.P14998892030671088463

`∑[A171982(n+1)]%A005937(n+1)`
-/

namespace A194114.P14998892030671088463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A005937 (n + 1))

end

end A194114.P14998892030671088463

namespace A194114

/-- `∑[A171982(n+1)]%A005937(n+1)` -/
def P14998892030671088463.Spec : Prop :=
  ∀ n, P14998892030671088463.a n = A194114 (n + 1)

end A194114

/-! ## A194114.P9943463106928295175

`A004016(3*n+2)+∑[A171982(n+1)]`
-/

namespace A194114.P9943463106928295175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (3 * n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194114.P9943463106928295175

namespace A194114

/-- `A004016(3*n+2)+∑[A171982(n+1)]` -/
def P9943463106928295175.Spec : Prop :=
  ∀ n, P9943463106928295175.a n = A194114 (n + 1)

end A194114

/-!
# A194115: Sum{floor(j*sqrt(12)) : 1<=j<=n}; n-th partial sum of Beatty sequence for sqrt(12).

The programs for A194115, the canonical program `A194115.P9006159922561375502` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194115 has offset 1).

The definition of A194115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194115.P15737284300798475078

`∑[floor((n+1)*sqrt(12))]`
-/

namespace A194115.P15737284300798475078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (12 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194115.P15737284300798475078

namespace A194115

/-- `∑[floor((n+1)*sqrt(12))]` -/
def P15737284300798475078.Spec : Prop :=
  ∀ n, P15737284300798475078.a n = A194115 (n + 1)

end A194115

/-! ## A194115.P7844698295813679097

`floor(a(n-1)+(n+1)*sqrt(12))` with `a(0)=3`
-/

namespace A194115.P7844698295813679097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n + 1 : ℝ) * Real.sqrt (12 : ℝ)⌋

end

end A194115.P7844698295813679097

namespace A194115

/-- `floor(a(n-1)+(n+1)*sqrt(12))` -/
def P7844698295813679097.Spec : Prop :=
  ∀ n, P7844698295813679097.a n = A194115 (n + 1)

end A194115

/-! ## A194115.P9006159922561375502

`abs(∑[A198269(n+1)-1])`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194115

/-- `abs(∑[A198269(n+1)-1])` -/
def P9006159922561375502.Spec : Prop :=
  ∀ n, P9006159922561375502.a n = A194115 (n + 1)

theorem P9006159922561375502.correct : P9006159922561375502.Spec := by
  intro n
  simp only [A194115, Nat.add_sub_cancel]

end A194115

/-! ## A194115.P15478293527685072959

`root(∑[A194028(n+1)], 2)²`
-/

namespace A194115.P15478293527685072959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194028 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A194115.P15478293527685072959

namespace A194115

/-- `root(∑[A194028(n+1)], 2)²` -/
def P15478293527685072959.Spec : Prop :=
  ∀ n, P15478293527685072959.a n = (A194115 (n + 1) : ℝ)

end A194115

/-! ## A194115.P17159138309266798148

`∑[A194028(n+1)]%A005897(n+1)`
-/

namespace A194115.P17159138309266798148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A005897 (n + 1))

end

end A194115.P17159138309266798148

namespace A194115

/-- `∑[A194028(n+1)]%A005897(n+1)` -/
def P17159138309266798148.Spec : Prop :=
  ∀ n, P17159138309266798148.a n = A194115 (n + 1)

end A194115

/-! ## A194115.P16270583660845304870

`∑[A194028(n+1)+1]-A000027(n+1)`
-/

namespace A194115.P16270583660845304870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194028 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000027 (n + 1)

end

end A194115.P16270583660845304870

namespace A194115

/-- `∑[A194028(n+1)+1]-A000027(n+1)` -/
def P16270583660845304870.Spec : Prop :=
  ∀ n, P16270583660845304870.a n = A194115 (n + 1)

end A194115

/-! ## A194115.P11152803589158855404

`A022838(abs(3*n+1-n)+1)+a(n-1)` with `a(0)=3`
-/

namespace A194115.P11152803589158855404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A022838 (|(3 * n + 1 : ℤ) - (n : ℤ)| + 1).toNat + a (n - 1)

end

end A194115.P11152803589158855404

namespace A194115

/-- `A022838(abs(3*n+1-n)+1)+a(n-1)` -/
def P11152803589158855404.Spec : Prop :=
  ∀ n, P11152803589158855404.a n = A194115 (n + 1)

end A194115

/-!
# A194116: a(n) = Sum_{j=1..n} floor(j*sqrt(13)); n-th partial sum of Beatty sequence for sqrt(13).

The programs for A194116, the canonical program `A194116.P15459040552535540256` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194116 has offset 1).

The definition of A194116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194116.P5791433578525841234

`∑[floor((n+1)*sqrt(13))]`
-/

namespace A194116.P5791433578525841234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (13 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194116.P5791433578525841234

namespace A194116

/-- `∑[floor((n+1)*sqrt(13))]` -/
def P5791433578525841234.Spec : Prop :=
  ∀ n, P5791433578525841234.a n = A194116 (n + 1)

end A194116

/-! ## A194116.P6595483863893693932

`floor(a(n-1)+(n+1)*sqrt(13))` with `a(0)=3`
-/

namespace A194116.P6595483863893693932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n + 1 : ℝ) * Real.sqrt (13 : ℝ)⌋

end

end A194116.P6595483863893693932

namespace A194116

/-- `floor(a(n-1)+(n+1)*sqrt(13))` -/
def P6595483863893693932.Spec : Prop :=
  ∀ n, P6595483863893693932.a n = A194116 (n + 1)

end A194116

/-! ## A194116.P18117066190004237776

`root(∑[A171983(n+1)], 2)²`
-/

namespace A194116.P18117066190004237776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171983 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A194116.P18117066190004237776

namespace A194116

/-- `root(∑[A171983(n+1)], 2)²` -/
def P18117066190004237776.Spec : Prop :=
  ∀ n, P18117066190004237776.a n = (A194116 (n + 1) : ℝ)

end A194116

/-! ## A194116.P15459040552535540256

`∑[A198270(n+1)]-(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194116

/-- `∑[A198270(n+1)]-(n+1)` -/
def P15459040552535540256.Spec : Prop :=
  ∀ n, P15459040552535540256.a n = A194116 (n + 1)

theorem P15459040552535540256.correct : P15459040552535540256.Spec := by
  intro n
  simp only [A194116, Nat.add_sub_cancel]

end A194116

/-! ## A194116.P799711826173656049

`∑[A171983(n+1)]%A001262(n+1)`
-/

namespace A194116.P799711826173656049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A001262 (n + 1))

end

end A194116.P799711826173656049

namespace A194116

/-- `∑[A171983(n+1)]%A001262(n+1)` -/
def P799711826173656049.Spec : Prop :=
  ∀ n, P799711826173656049.a n = A194116 (n + 1)

end A194116

/-! ## A194116.P10469666540681814161

`or(1, A073784(n+1))*∑[A171983(n+1)]`
-/

namespace A194116.P10469666540681814161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A073784 (n + 1)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194116.P10469666540681814161

namespace A194116

/-- `or(1, A073784(n+1))*∑[A171983(n+1)]` -/
def P10469666540681814161.Spec : Prop :=
  ∀ n, P10469666540681814161.a n = A194116 (n + 1)

end A194116

/-! ## A194116.P5420090701490429830

`A000040(n+2)²%2*∑[A171983(n+1)]`
-/

namespace A194116.P5420090701490429830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2) ^ 2) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194116.P5420090701490429830

namespace A194116

/-- `A000040(n+2)²%2*∑[A171983(n+1)]` -/
def P5420090701490429830.Spec : Prop :=
  ∀ n, P5420090701490429830.a n = A194116 (n + 1)

end A194116

/-! ## A194116.P13593242882564066063

`A001222(A040995(n+1))*∑[A171983(n+1)]`
-/

namespace A194116.P13593242882564066063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A040995 (n + 1)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194116.P13593242882564066063

namespace A194116

/-- `A001222(A040995(n+1))*∑[A171983(n+1)]` -/
def P13593242882564066063.Spec : Prop :=
  ∀ n, P13593242882564066063.a n = A194116 (n + 1)

end A194116

/-!
# A194117: a(n) = Sum_{j=1..n} floor(j*(1+sqrt(3))/2); n-th partial sum of Beatty sequence A003511.

The programs for A194117, the canonical program `A194117.P2853746433077659524` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194117 has offset 1).

The definition of A194117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194117.P6311845243338849316

`∑[floor((n+1)/(sqrt(3)-1))]`
-/

namespace A194117.P6311845243338849316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.sqrt (3 : ℝ) - 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194117.P6311845243338849316

namespace A194117

/-- `∑[floor((n+1)/(sqrt(3)-1))]` -/
def P6311845243338849316.Spec : Prop :=
  ∀ n, P6311845243338849316.a n = A194117 (n + 1)

end A194117

/-! ## A194117.P2434609608021732476

`or(∑[A003511(n+1)], char[1])`
-/

namespace A194117.P2434609608021732476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A194117.P2434609608021732476

namespace A194117

/-- `or(∑[A003511(n+1)], char[1])` -/
def P2434609608021732476.Spec : Prop :=
  ∀ n, P2434609608021732476.a n = A194117 (n + 1)

end A194117

/-! ## A194117.P2853746433077659524

`∑[A188070(n+1)]-(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194117

/-- `∑[A188070(n+1)]-(n+1)` -/
def P2853746433077659524.Spec : Prop :=
  ∀ n, P2853746433077659524.a n = A194117 (n + 1)

theorem P2853746433077659524.correct : P2853746433077659524.Spec := by
  intro n
  simp only [A194117, Nat.add_sub_cancel]

end A194117

/-! ## A194117.P1361475048715854921

`A194143(n+1)-∑[n+1]`
-/

namespace A194117.P1361475048715854921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194143 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194117.P1361475048715854921

namespace A194117

/-- `A194143(n+1)-∑[n+1]` -/
def P1361475048715854921.Spec : Prop :=
  ∀ n, P1361475048715854921.a n = A194117 (n + 1)

end A194117

/-! ## A194117.P10104395719159017243

`(n+1)²-∑[A074065(n+1)]`
-/

namespace A194117.P10104395719159017243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194117.P10104395719159017243

namespace A194117

/-- `(n+1)²-∑[A074065(n+1)]` -/
def P10104395719159017243.Spec : Prop :=
  ∀ n, P10104395719159017243.a n = A194117 (n + 1)

end A194117

/-! ## A194117.P15532017470162952880

`∑[A054406(n+1)-n]-(n+1)`
-/

namespace A194117.P15532017470162952880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A194117.P15532017470162952880

namespace A194117

/-- `∑[A054406(n+1)-n]-(n+1)` -/
def P15532017470162952880.Spec : Prop :=
  ∀ n, P15532017470162952880.a n = A194117 (n + 1)

end A194117

/-! ## A194117.P8203892046764430019

`∑[comp[A003512(n+1)-1]]+n+1`
-/

namespace A194117.P8203892046764430019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A194117.P8203892046764430019

namespace A194117

/-- `∑[comp[A003512(n+1)-1]]+n+1` -/
def P8203892046764430019.Spec : Prop :=
  ∀ n, (P8203892046764430019.a n : ℤ) = A194117 (n + 1)

end A194117

/-! ## A194117.P14986093554199780567

`∑[n+1-A182772(n+1)]+(n+1)²`
-/

namespace A194117.P14986093554199780567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A182772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A194117.P14986093554199780567

namespace A194117

/-- `∑[n+1-A182772(n+1)]+(n+1)²` -/
def P14986093554199780567.Spec : Prop :=
  ∀ n, P14986093554199780567.a n = A194117 (n + 1)

end A194117

/-! ## A194117.P9678546491287871024

`∑[A054406(n+1)]-A000217(n+1)`
-/

namespace A194117.P9678546491287871024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000217 (n + 1)

end

end A194117.P9678546491287871024

namespace A194117

/-- `∑[A054406(n+1)]-A000217(n+1)` -/
def P9678546491287871024.Spec : Prop :=
  ∀ n, P9678546491287871024.a n = A194117 (n + 1)

end A194117

/-! ## A194117.P11576485376766081487

`(n+1)²-∑[A004526(A182777(n+1))]`
-/

namespace A194117.P11576485376766081487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A182777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194117.P11576485376766081487

namespace A194117

/-- `(n+1)²-∑[A004526(A182777(n+1))]` -/
def P11576485376766081487.Spec : Prop :=
  ∀ n, P11576485376766081487.a n = A194117 (n + 1)

end A194117

/-! ## A194117.P1044828009296326219

`∑[A008619(A198081(n+1)+n)]-(n+1)`
-/

namespace A194117.P1044828009296326219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A198081 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A194117.P1044828009296326219

namespace A194117

/-- `∑[A008619(A198081(n+1)+n)]-(n+1)` -/
def P1044828009296326219.Spec : Prop :=
  ∀ n, P1044828009296326219.a n = A194117 (n + 1)

end A194117

/-!
# A194118: Triangular array: T(n,k)=C(n+2,k)+C(n+2,k+2), 0<=k<=n.

The programs for A194118, the canonical program `A194118.P7393930768151872042` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194118 has offset 0).

The definition of A194118 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)+2, col(n))+C(row(n)+2, col(n)+2)` (program `A194118.P7393930768151872042`, by `A194118.P7393930768151872042.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A194118.P7393930768151872042

`C(row(n)+2, col(n))+C(row(n)+2, col(n)+2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194118

/-- `C(row(n)+2, col(n))+C(row(n)+2, col(n)+2)` -/
def P7393930768151872042.Spec : Prop :=
  ∀ n, (P7393930768151872042.a n : ℤ) = A194118 n

theorem P7393930768151872042.correct : P7393930768151872042.Spec := by
  intro n
  simp only [A194118]

end A194118

/-! ## A194118.P6268210514841920499

`A014430(n)+A222403(n)+1`
-/

namespace A194118.P6268210514841920499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n + (A222403 n + 1)

end

end A194118.P6268210514841920499

namespace A194118

/-- `A014430(n)+A222403(n)+1` -/
def P6268210514841920499.Spec : Prop :=
  ∀ n, P6268210514841920499.a n = A194118 n

end A194118

/-! ## A194118.P1404583432446779418

`A222403(n)+A014410(n+2)`
-/

namespace A194118.P1404583432446779418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222403 n + A014410 (n + 2)

end

end A194118.P1404583432446779418

namespace A194118

/-- `A222403(n)+A014410(n+2)` -/
def P1404583432446779418.Spec : Prop :=
  ∀ n, P1404583432446779418.a n = A194118 n

end A194118

/-! ## A194118.P13941331000178065428

`A209518(n)+A104712(n+2)`
-/

namespace A194118.P13941331000178065428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 n + A104712 (n + 2)

end

end A194118.P13941331000178065428

namespace A194118

/-- `A209518(n)+A104712(n+2)` -/
def P13941331000178065428.Spec : Prop :=
  ∀ n, P13941331000178065428.a n = A194118 n

end A194118

/-! ## A194118.P13210792263948460704

`A194121(n)-A014410(n+2)`
-/

namespace A194118.P13210792263948460704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194121 n - A014410 (n + 2)

end

end A194118.P13210792263948460704

namespace A194118

/-- `A194121(n)-A014410(n+2)` -/
def P13210792263948460704.Spec : Prop :=
  ∀ n, P13210792263948460704.a n = A194118 n

end A194118

/-! ## A194118.P2737769019268401926

`A222403(n)+A028327(n)/2`
-/

namespace A194118.P2737769019268401926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222403 n : ℚ) + (A028327 n : ℚ) / 2

end

end A194118.P2737769019268401926

namespace A194118

/-- `A222403(n)+A028327(n)/2` -/
def P2737769019268401926.Spec : Prop :=
  ∀ n, P2737769019268401926.a n = (A194118 n : ℚ)

end A194118

/-! ## A194118.P9247686261602084040

`(A222403(n)+A194121(n))/2`
-/

namespace A194118.P9247686261602084040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222403 n + A194121 n : ℚ) / 2

end

end A194118.P9247686261602084040

namespace A194118

/-- `(A222403(n)+A194121(n))/2` -/
def P9247686261602084040.Spec : Prop :=
  ∀ n, P9247686261602084040.a n = (A194118 n : ℚ)

end A194118

/-! ## A194118.P15158394036076497483

`A194121(n)-A028327(n)/2`
-/

namespace A194118.P15158394036076497483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194121 n : ℚ) - (A028327 n : ℚ) / 2

end

end A194118.P15158394036076497483

namespace A194118

/-- `A194121(n)-A028327(n)/2` -/
def P15158394036076497483.Spec : Prop :=
  ∀ n, P15158394036076497483.a n = (A194118 n : ℚ)

end A194118

/-! ## A194118.P17554068371670857288

`A209518(A061579(n))+A209518(n)`
-/

namespace A194118.P17554068371670857288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 (A061579 n).toNat + A209518 n

end

end A194118.P17554068371670857288

namespace A194118

/-- `A209518(A061579(n))+A209518(n)` -/
def P17554068371670857288.Spec : Prop :=
  ∀ n, P17554068371670857288.a n = A194118 n

end A194118

/-! ## A194118.P10152244856372051003

`A209518(A038722(n+2))+A209518(n)`
-/

namespace A194118.P10152244856372051003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 (A038722 (n + 2)).toNat + A209518 n

end

end A194118.P10152244856372051003

namespace A194118

/-- `A209518(A038722(n+2))+A209518(n)` -/
def P10152244856372051003.Spec : Prop :=
  ∀ n, P10152244856372051003.a n = A194118 n

end A194118

/-! ## A194118.P17788231011626487210

`A209518(n)+A135278(A014132(n+1))`
-/

namespace A194118.P17788231011626487210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 n + A135278 (A014132 (n + 1)).toNat

end

end A194118.P17788231011626487210

namespace A194118

/-- `A209518(n)+A135278(A014132(n+1))` -/
def P17788231011626487210.Spec : Prop :=
  ∀ n, P17788231011626487210.a n = A194118 n

end A194118

/-! ## A194118.P2451726422462742311

`A051601(A007401(n+1))+A051601(A014132(n+1))`
-/

namespace A194118.P2451726422462742311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (A007401 (n + 1)).toNat + A051601 (A014132 (n + 1)).toNat

end

end A194118.P2451726422462742311

namespace A194118

/-- `A051601(A007401(n+1))+A051601(A014132(n+1))` -/
def P2451726422462742311.Spec : Prop :=
  ∀ n, P2451726422462742311.a n = A194118 n

end A194118

/-! ## A194118.P14541055455292683426

`A051601(eq[0, A103451(n)])`
-/

namespace A194118.P14541055455292683426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194118.P14541055455292683426

namespace A194118

/-- `A051601(eq[0, A103451(n)])` -/
def P14541055455292683426.Spec : Prop :=
  ∀ n, P14541055455292683426.a n = A194118 n

end A194118

/-! ## A194118.P4505752742242968595

`A051601(eq[0, A103452(n)])`
-/

namespace A194118.P4505752742242968595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194118.P4505752742242968595

namespace A194118

/-- `A051601(eq[0, A103452(n)])` -/
def P4505752742242968595.Spec : Prop :=
  ∀ n, P4505752742242968595.a n = A194118 n

end A194118

/-! ## A194118.P5442492535382196762

`A051601(eq[0, A103516(n)])`
-/

namespace A194118.P5442492535382196762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194118.P5442492535382196762

namespace A194118

/-- `A051601(eq[0, A103516(n)])` -/
def P5442492535382196762.Spec : Prop :=
  ∀ n, P5442492535382196762.a n = A194118 n

end A194118

/-! ## A194118.P18365830077841531158

`A051601(lt[0, A014473(n)])`
-/

namespace A194118.P18365830077841531158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194118.P18365830077841531158

namespace A194118

/-- `A051601(lt[0, A014473(n)])` -/
def P18365830077841531158.Spec : Prop :=
  ∀ n, P18365830077841531158.a n = A194118 n

end A194118

/-! ## A194118.P12882503644189023739

`A051601(lt[1, A007318(n)])`
-/

namespace A194118.P12882503644189023739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194118.P12882503644189023739

namespace A194118

/-- `A051601(lt[1, A007318(n)])` -/
def P12882503644189023739.Spec : Prop :=
  ∀ n, P12882503644189023739.a n = A194118 n

end A194118

/-! ## A194118.P15367562893747975134

`A051601(lt[1, A026637(n)])`
-/

namespace A194118.P15367562893747975134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194118.P15367562893747975134

namespace A194118

/-- `A051601(lt[1, A026637(n)])` -/
def P15367562893747975134.Spec : Prop :=
  ∀ n, P15367562893747975134.a n = A194118 n

end A194118

/-! ## A194118.P4918357052532185782

`A051601(lt[1, A109128(n)])`
-/

namespace A194118.P4918357052532185782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194118.P4918357052532185782

namespace A194118

/-- `A051601(lt[1, A109128(n)])` -/
def P4918357052532185782.Spec : Prop :=
  ∀ n, P4918357052532185782.a n = A194118 n

end A194118

/-! ## A194118.P4948672869093929315

`A051601(lt[2, A028326(n)])`
-/

namespace A194118.P4948672869093929315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194118.P4948672869093929315

namespace A194118

/-- `A051601(lt[2, A028326(n)])` -/
def P4948672869093929315.Spec : Prop :=
  ∀ n, P4948672869093929315.a n = A194118 n

end A194118

/-!
# A194119: Triangular array: T(n,k)=C(n+3,k)+C(n+3,k+3), 0<=k<=n.

The programs for A194119, the canonical program `A194119.P400168590701570029` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194119 has offset 0).

The definition of A194119 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)+3, col(n))+C(row(n)+3, col(n)+3)` (program `A194119.P400168590701570029`, by `A194119.P400168590701570029.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A194119.P400168590701570029

`C(row(n)+3, col(n))+C(row(n)+3, col(n)+3)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194119

/-- `C(row(n)+3, col(n))+C(row(n)+3, col(n)+3)` -/
def P400168590701570029.Spec : Prop :=
  ∀ n, (P400168590701570029.a n : ℤ) = A194119 n

theorem P400168590701570029.correct : P400168590701570029.Spec := by
  intro n
  simp only [A194119]

end A194119

/-! ## A194119.P1363849121054771469

`A222403(2*comp[∑[n]]-n)`
-/

namespace A194119.P1363849121054771469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222403 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A194119.P1363849121054771469

namespace A194119

/-- `A222403(2*comp[∑[n]]-n)` -/
def P1363849121054771469.Spec : Prop :=
  ∀ n, P1363849121054771469.a n = A194119 n

end A194119

/-! ## A194119.P1211391008520965541

`A051631(lt[2, A323211(n)])`
-/

namespace A194119.P1211391008520965541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194119.P1211391008520965541

namespace A194119

/-- `A051631(lt[2, A323211(n)])` -/
def P1211391008520965541.Spec : Prop :=
  ∀ n, P1211391008520965541.a n = A194119 n

end A194119

/-! ## A194119.P13690147337756658282

`A051631(lt[A003056(n), A014473(n)])`
-/

namespace A194119.P13690147337756658282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194119.P13690147337756658282

namespace A194119

/-- `A051631(lt[A003056(n), A014473(n)])` -/
def P13690147337756658282.Spec : Prop :=
  ∀ n, P13690147337756658282.a n = A194119 n

end A194119

/-! ## A194119.P5542008167545512207

`A192915(n)-A144394(n+4)`
-/

namespace A194119.P5542008167545512207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192915 n - A144394 (n + 4)

end

end A194119.P5542008167545512207

namespace A194119

/-- `A192915(n)-A144394(n+4)` -/
def P5542008167545512207.Spec : Prop :=
  ∀ n, P5542008167545512207.a n = A194119 n

end A194119

/-! ## A194119.P9690052224399509179

`A051631(lt[1, A226873(n)])`
-/

namespace A194119.P9690052224399509179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194119.P9690052224399509179

namespace A194119

/-- `A051631(lt[1, A226873(n)])` -/
def P9690052224399509179.Spec : Prop :=
  ∀ n, P9690052224399509179.a n = A194119 n

end A194119

/-! ## A194119.P16770242533565556376

`A051631(lt[1, A242784(n)])`
-/

namespace A194119.P16770242533565556376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194119.P16770242533565556376

namespace A194119

/-- `A051631(lt[1, A242784(n)])` -/
def P16770242533565556376.Spec : Prop :=
  ∀ n, P16770242533565556376.a n = A194119 n

end A194119

/-! ## A194119.P13437825955032967934

`A051631(lt[6, A233543(n+2)])`
-/

namespace A194119.P13437825955032967934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194119.P13437825955032967934

namespace A194119

/-- `A051631(lt[6, A233543(n+2)])` -/
def P13437825955032967934.Spec : Prop :=
  ∀ n, P13437825955032967934.a n = A194119 n

end A194119

/-! ## A194119.P8166114425244462043

`A051631(eq[0, A172090(n)])`
-/

namespace A194119.P8166114425244462043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194119.P8166114425244462043

namespace A194119

/-- `A051631(eq[0, A172090(n)])` -/
def P8166114425244462043.Spec : Prop :=
  ∀ n, P8166114425244462043.a n = A194119 n

end A194119

/-! ## A194119.P2822102330034794834

`A051631(lt[A172090(n), 1])`
-/

namespace A194119.P2822102330034794834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172090 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A194119.P2822102330034794834

namespace A194119

/-- `A051631(lt[A172090(n), 1])` -/
def P2822102330034794834.Spec : Prop :=
  ∀ n, P2822102330034794834.a n = A194119 n

end A194119

/-! ## A194119.P9910519840323556090

`A051631(lt[1, A267479(n)])`
-/

namespace A194119.P9910519840323556090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194119.P9910519840323556090

namespace A194119

/-- `A051631(lt[1, A267479(n)])` -/
def P9910519840323556090.Spec : Prop :=
  ∀ n, P9910519840323556090.a n = A194119 n

end A194119

/-!
# A194120: Triangular array: T(n,k)=C(n+4,k)+C(n+4,k+4), 0<=k<=n.

The programs for A194120, the canonical program `A194120.P612079219847802134` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194120 has offset 0).

The definition of A194120 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)+4, col(n))+C(row(n)+4, col(n)+4)` (program `A194120.P612079219847802134`, by `A194120.P612079219847802134.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A194120.P612079219847802134

`C(row(n)+4, col(n))+C(row(n)+4, col(n)+4)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194120

/-- `C(row(n)+4, col(n))+C(row(n)+4, col(n)+4)` -/
def P612079219847802134.Spec : Prop :=
  ∀ n, (P612079219847802134.a n : ℤ) = A194120 n

theorem P612079219847802134.correct : P612079219847802134.Spec := by
  intro n
  simp only [A194120]

end A194120

/-! ## A194120.P7400034875376895485

`A194119(eq[0, A103516(n)])-A192915(n)`
-/

namespace A194120.P7400034875376895485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A192915 n

end

end A194120.P7400034875376895485

namespace A194120

/-- `A194119(eq[0, A103516(n)])-A192915(n)` -/
def P7400034875376895485.Spec : Prop :=
  ∀ n, P7400034875376895485.a n = A194120 n

end A194120

/-! ## A194120.P7821873799442761485

`A194122(n)-(A192915(n)+A144394(n+4))`
-/

namespace A194120.P7821873799442761485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194122 n - (A192915 n + A144394 (n + 4))

end

end A194120.P7821873799442761485

namespace A194120

/-- `A194122(n)-(A192915(n)+A144394(n+4))` -/
def P7821873799442761485.Spec : Prop :=
  ∀ n, P7821873799442761485.a n = A194120 n

end A194120

/-!
# A194121: Triangular array: T(n,k)=C(n+2,k)+C(n+2,k+1)+C(n+2,k+2), 0<=k<=n.

The programs for A194121, the canonical program `A194121.P9595817741942349886` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194121 has offset 0).

The definition of A194121 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)+2, col(n)+1)+C(row(n)+2, col(n)+2)+C(row(n)+2, col(n))` (program `A194121.P9595817741942349886`, by `A194121.P9595817741942349886.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A194121.P9595817741942349886

`C(row(n)+2, col(n)+1)+C(row(n)+2, col(n)+2)+C(row(n)+2, col(n))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194121

/-- `C(row(n)+2, col(n)+1)+C(row(n)+2, col(n)+2)+C(row(n)+2, col(n))` -/
def P9595817741942349886.Spec : Prop :=
  ∀ n, (P9595817741942349886.a n : ℤ) = A194121 n

theorem P9595817741942349886.correct : P9595817741942349886.Spec := by
  intro n
  simp only [A194121]

end A194121

/-! ## A194121.P8447217528528794439

`C(row(n)+2, col(n))+C(row(n)+2, col(n)+1)+C(row(n)+2, col(n)+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A194121.P8447217528528794439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n + 2) (SequenceMachineLib.triCol n) + Nat.choose (SequenceMachineLib.triRow n + 2) (SequenceMachineLib.triCol n + 1) + Nat.choose (SequenceMachineLib.triRow n + 2) (SequenceMachineLib.triCol n + 2)

end

end A194121.P8447217528528794439

namespace A194121

/-- `C(row(n)+2, col(n))+C(row(n)+2, col(n)+1)+C(row(n)+2, col(n)+2)` -/
def P8447217528528794439.Spec : Prop :=
  ∀ n, (P8447217528528794439.a n : ℤ) = A194121 n

theorem P8447217528528794439.correct : P8447217528528794439.Spec := by
  intro n
  simp only [A194121, Nat.add_sub_cancel, A194121.P8447217528528794439.a, A194121.P9595817741942349886.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A194121

/-! ## A194121.P5354878863619766184

`C(row(n)+3, col(n)+2)+C(row(n)+2, col(n))`
-/

namespace A194121.P5354878863619766184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n + 3) (SequenceMachineLib.triCol n + 2) + Nat.choose (SequenceMachineLib.triRow n + 2) (SequenceMachineLib.triCol n)

end

end A194121.P5354878863619766184

namespace A194121

/-- `C(row(n)+3, col(n)+2)+C(row(n)+2, col(n))` -/
def P5354878863619766184.Spec : Prop :=
  ∀ n, (P5354878863619766184.a n : ℤ) = A194121 n

end A194121

/-! ## A194121.P7280713985771854510

`A222403(n)+A028327(n)`
-/

namespace A194121.P7280713985771854510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222403 n + A028327 n

end

end A194121.P7280713985771854510

namespace A194121

/-- `A222403(n)+A028327(n)` -/
def P7280713985771854510.Spec : Prop :=
  ∀ n, P7280713985771854510.a n = A194121 n

theorem P7280713985771854510.correct : P7280713985771854510.Spec := by
  intro n
  simp only [A194121, Nat.add_sub_cancel, A194121.P7280713985771854510.a, A194121.P9595817741942349886.a, A028327, A028327.P9835590816428302231.a, A222403, A222403.P3020155544965014607.a, A014430, A014430.P2601729842851247134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A194121

/-! ## A194121.P17426594421090696578

`A061928(n+1)-A059797(n)`
-/

namespace A194121.P17426594421090696578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061928 (n + 1) - A059797 n

end

end A194121.P17426594421090696578

namespace A194121

/-- `A061928(n+1)-A059797(n)` -/
def P17426594421090696578.Spec : Prop :=
  ∀ n, P17426594421090696578.a n = A194121 n

theorem P17426594421090696578.correct : P17426594421090696578.Spec := by
  intro n
  simp only [A194121, Nat.add_sub_cancel, A194121.P17426594421090696578.a, A194121.P9595817741942349886.a, A059797, A059797.P8076883929035700437.a, A061928, A061928.P7626325743492745551.a, A014410, A014410.P12420516935091573692.a, A133196, A133196.P16440954679324344778.a, A003056, A003056.P5318256527314048597.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194121

/-! ## A194121.P4983122932321246475

`A194118(n)+A014410(n+2)`
-/

namespace A194121.P4983122932321246475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194118 n + A014410 (n + 2)

end

end A194121.P4983122932321246475

namespace A194121

/-- `A194118(n)+A014410(n+2)` -/
def P4983122932321246475.Spec : Prop :=
  ∀ n, P4983122932321246475.a n = A194121 n

end A194121

/-! ## A194121.P12479557855365254500

`A209518(n)+A168577(n+2)`
-/

namespace A194121.P12479557855365254500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 n + A168577 (n + 2)

end

end A194121.P12479557855365254500

namespace A194121

/-- `A209518(n)+A168577(n+2)` -/
def P12479557855365254500.Spec : Prop :=
  ∀ n, P12479557855365254500.a n = A194121 n

end A194121

/-! ## A194121.P17517809599513139307

`A194118(n)+A028327(n)/2`
-/

namespace A194121.P17517809599513139307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194118 n : ℚ) + (A028327 n : ℚ) / 2

end

end A194121.P17517809599513139307

namespace A194121

/-- `A194118(n)+A028327(n)/2` -/
def P17517809599513139307.Spec : Prop :=
  ∀ n, P17517809599513139307.a n = (A194121 n : ℚ)

end A194121

/-! ## A194121.P8501876614135244174

`2*A194118(n)-A222403(n)`
-/

namespace A194121.P8501876614135244174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194118 n - A222403 n

end

end A194121.P8501876614135244174

namespace A194121

/-- `2*A194118(n)-A222403(n)` -/
def P8501876614135244174.Spec : Prop :=
  ∀ n, P8501876614135244174.a n = A194121 n

end A194121

/-! ## A194121.P5086261873224946076

`A222403(n)+2*A014410(n+2)`
-/

namespace A194121.P5086261873224946076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222403 n + 2 * A014410 (n + 2)

end

end A194121.P5086261873224946076

namespace A194121

/-- `A222403(n)+2*A014410(n+2)` -/
def P5086261873224946076.Spec : Prop :=
  ∀ n, P5086261873224946076.a n = A194121 n

end A194121

/-! ## A194121.P4710514754082213098

`A209518(A014132(n+1))+A135278(A014132(n+1))`
-/

namespace A194121.P4710514754082213098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 (A014132 (n + 1)).toNat + A135278 (A014132 (n + 1)).toNat

end

end A194121.P4710514754082213098

namespace A194121

/-- `A209518(A014132(n+1))+A135278(A014132(n+1))` -/
def P4710514754082213098.Spec : Prop :=
  ∀ n, P4710514754082213098.a n = A194121 n

end A194121

/-! ## A194121.P18346728649012389911

`A051597(comp[∑[n]]+comp[∑[n]]-n)`
-/

namespace A194121.P18346728649012389911
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
  A051597 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A194121.P18346728649012389911

namespace A194121

/-- `A051597(comp[∑[n]]+comp[∑[n]]-n)` -/
def P18346728649012389911.Spec : Prop :=
  ∀ n, P18346728649012389911.a n = A194121 n

end A194121

/-! ## A194121.P17321488318030792013

`A209561(lt[1, A097805(n)])`
-/

namespace A194121.P17321488318030792013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194121.P17321488318030792013

namespace A194121

/-- `A209561(lt[1, A097805(n)])` -/
def P17321488318030792013.Spec : Prop :=
  ∀ n, P17321488318030792013.a n = A194121 n

end A194121

/-! ## A194121.P128099195501907425

`A072405(lt[1, A004197(n)])`
-/

namespace A194121.P128099195501907425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194121.P128099195501907425

namespace A194121

/-- `A072405(lt[1, A004197(n)])` -/
def P128099195501907425.Spec : Prop :=
  ∀ n, P128099195501907425.a n = A194121 n

end A194121

/-! ## A194121.P2845034096007404474

`A072405(lt[1, A052307(n)])`
-/

namespace A194121.P2845034096007404474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194121.P2845034096007404474

namespace A194121

/-- `A072405(lt[1, A052307(n)])` -/
def P2845034096007404474.Spec : Prop :=
  ∀ n, P2845034096007404474.a n = A194121 n

end A194121

/-! ## A194121.P6093092962544085848

`A122218(lt[1, A004197(n)])`
-/

namespace A194121.P6093092962544085848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194121.P6093092962544085848

namespace A194121

/-- `A122218(lt[1, A004197(n)])` -/
def P6093092962544085848.Spec : Prop :=
  ∀ n, P6093092962544085848.a n = A194121 n

end A194121

/-! ## A194121.P11898258952400553855

`A072405(lt[1, A068914(n)])`
-/

namespace A194121.P11898258952400553855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194121.P11898258952400553855

namespace A194121

/-- `A072405(lt[1, A068914(n)])` -/
def P11898258952400553855.Spec : Prop :=
  ∀ n, P11898258952400553855.a n = A194121 n

end A194121

/-! ## A194121.P7155119830980599771

`A122218(lt[1, A052307(n)])`
-/

namespace A194121.P7155119830980599771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194121.P7155119830980599771

namespace A194121

/-- `A122218(lt[1, A052307(n)])` -/
def P7155119830980599771.Spec : Prop :=
  ∀ n, P7155119830980599771.a n = A194121 n

end A194121

/-! ## A194121.P2161761823520624162

`A122218(lt[1, A068914(n)])`
-/

namespace A194121.P2161761823520624162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194121.P2161761823520624162

namespace A194121

/-- `A122218(lt[1, A068914(n)])` -/
def P2161761823520624162.Spec : Prop :=
  ∀ n, P2161761823520624162.a n = A194121 n

end A194121

/-! ## A194121.P5290863214439907064

`A144394(n+4)-A014410(n+2)`
-/

namespace A194121.P5290863214439907064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144394 (n + 4) - A014410 (n + 2)

end

end A194121.P5290863214439907064

namespace A194121

/-- `A144394(n+4)-A014410(n+2)` -/
def P5290863214439907064.Spec : Prop :=
  ∀ n, P5290863214439907064.a n = A194121 n

end A194121

/-!
# A194122: Triangular array: T(n,k) = C(n+4,k) + C(n+4,k+1) + C(n+4,k+2) + C(n+4,k+3) + C(n+4,k+4), 0 <= k <= n.

The programs for A194122, the canonical program `A194122.P1212420979446489230` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194122 has offset 0).

The definition of A194122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6903 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194122.P1212420979446489230

`A194119(eq[0, A103516(n)])+A144394(n+4)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A194122

/-- `A194119(eq[0, A103516(n)])+A144394(n+4)` -/
def P1212420979446489230.Spec : Prop :=
  ∀ n, P1212420979446489230.a n = A194122 n

theorem P1212420979446489230.correct : P1212420979446489230.Spec := by
  intro n
  simp only [A194122]

end A194122

/-! ## A194122.P9605335268371695727

`A144394(n+4)+A194120(n)+A192915(n)`
-/

namespace A194122.P9605335268371695727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144394 (n + 4) + (A194120 n + A192915 n)

end

end A194122.P9605335268371695727

namespace A194122

/-- `A144394(n+4)+A194120(n)+A192915(n)` -/
def P9605335268371695727.Spec : Prop :=
  ∀ n, P9605335268371695727.a n = A194122 n

end A194122

/-!
# A194123: Triangular array: T(n,k)=|C(n+2,k)-C(n+2,k+2)|, 0<=k<=n.

The programs for A194123, the canonical program `A194123.P9267081841225222537` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194123 has offset 0).

The definition of A194123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194123.P9267081841225222537

`abs(A104712(n+2)-A209518(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A194123

/-- `abs(A104712(n+2)-A209518(n))` -/
def P9267081841225222537.Spec : Prop :=
  ∀ n, P9267081841225222537.a n = A194123 n

theorem P9267081841225222537.correct : P9267081841225222537.Spec := by
  intro n
  simp only [A194123]

end A194123

/-! ## A194123.P8325020397358580167

`abs(2*A104712(n+2)-A194118(n))`
-/

namespace A194123.P8325020397358580167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A104712 (n + 2) - A194118 n|

end

end A194123.P8325020397358580167

namespace A194123

/-- `abs(2*A104712(n+2)-A194118(n))` -/
def P8325020397358580167.Spec : Prop :=
  ∀ n, P8325020397358580167.a n = A194123 n

end A194123

/-! ## A194123.P14483504251200431688

`abs(A209518(A061579(n))-A209518(n))`
-/

namespace A194123.P14483504251200431688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A209518 (A061579 n).toNat - A209518 n|

end

end A194123.P14483504251200431688

namespace A194123

/-- `abs(A209518(A061579(n))-A209518(n))` -/
def P14483504251200431688.Spec : Prop :=
  ∀ n, P14483504251200431688.a n = A194123 n

end A194123

/-! ## A194123.P15060826082320955674

`abs(Δ[A299146(A080036(n))])`
-/

namespace A194123.P15060826082320955674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299146 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A194123.P15060826082320955674

namespace A194123

/-- `abs(Δ[A299146(A080036(n))])` -/
def P15060826082320955674.Spec : Prop :=
  ∀ n, P15060826082320955674.a n = A194123 n

end A194123

/-! ## A194123.P639823892914538507

`abs(Δ[A299146(A014132(n+1))])`
-/

namespace A194123.P639823892914538507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299146 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A194123.P639823892914538507

namespace A194123

/-- `abs(Δ[A299146(A014132(n+1))])` -/
def P639823892914538507.Spec : Prop :=
  ∀ n, P639823892914538507.a n = A194123 n

end A194123

/-! ## A194123.P17823022113031841446

`abs(A135278(A014132(n+1))-A209518(n))`
-/

namespace A194123.P17823022113031841446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135278 (A014132 (n + 1)).toNat - A209518 n|

end

end A194123.P17823022113031841446

namespace A194123

/-- `abs(A135278(A014132(n+1))-A209518(n))` -/
def P17823022113031841446.Spec : Prop :=
  ∀ n, P17823022113031841446.a n = A194123 n

end A194123

/-! ## A194123.P3075692472615799029

`abs(A214292(eq[0, A158821(n)]))`
-/

namespace A194123.P3075692472615799029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A214292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A194123.P3075692472615799029

namespace A194123

/-- `abs(A214292(eq[0, A158821(n)]))` -/
def P3075692472615799029.Spec : Prop :=
  ∀ n, P3075692472615799029.a n = A194123 n

end A194123

/-! ## A194123.P9318582479889430154

`abs(A131085(A099375(n)+A014132(n+1)))`
-/

namespace A194123.P9318582479889430154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131085 (A099375 n + A014132 (n + 1)).toNat|

end

end A194123.P9318582479889430154

namespace A194123

/-- `abs(A131085(A099375(n)+A014132(n+1)))` -/
def P9318582479889430154.Spec : Prop :=
  ∀ n, P9318582479889430154.a n = A194123 n

end A194123

/-! ## A194123.P18318543823385372457

`abs(A097808(lt[1, A071919(n)]))`
-/

namespace A194123.P18318543823385372457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)|

end

end A194123.P18318543823385372457

namespace A194123

/-- `abs(A097808(lt[1, A071919(n)]))` -/
def P18318543823385372457.Spec : Prop :=
  ∀ n, P18318543823385372457.a n = A194123 n

end A194123

/-! ## A194123.P2483236409980913790

`abs(A156644(lt[1, A071919(n)]))`
-/

namespace A194123.P2483236409980913790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)|

end

end A194123.P2483236409980913790

namespace A194123

/-- `abs(A156644(lt[1, A071919(n)]))` -/
def P2483236409980913790.Spec : Prop :=
  ∀ n, P2483236409980913790.a n = A194123 n

end A194123

/-!
# A194124: a(n) = Sum_{k=0..floor(n/2)} (C(n+2, k+2) - C(n+2, k)).

The programs for A194124, the canonical program `A194124.P14535517237618100898` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194124 has offset 0).

The definition of A194124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194124.P11362509850442094658

`record[(n-1)*a(n-1)/floor(n/2)]-(n+3)` with `a(0)=3, a(1)=1`
-/

namespace A194124.P11362509850442094658
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) * (f1 (n - 1) / (⌊(n : ℚ) / 2⌋ : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 3 : ℚ)

end

end A194124.P11362509850442094658

namespace A194124

/-- `record[(n-1)*a(n-1)/floor(n/2)]-(n+3)` -/
def P11362509850442094658.Spec : Prop :=
  ∀ n, P11362509850442094658.a n = (A194124 n : ℚ)

end A194124

/-! ## A194124.P16072402798251659337

`∑[A047171(n+2)]`
-/

namespace A194124.P16072402798251659337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047171 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194124.P16072402798251659337

namespace A194124

/-- `∑[A047171(n+2)]` -/
def P16072402798251659337.Spec : Prop :=
  ∀ n, P16072402798251659337.a n = A194124 n

end A194124

/-! ## A194124.P14535517237618100898

`∑[∑[A191529(n+3)]]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194124

/-- `∑[∑[A191529(n+3)]]` -/
def P14535517237618100898.Spec : Prop :=
  ∀ n, P14535517237618100898.a n = A194124 n

theorem P14535517237618100898.correct : P14535517237618100898.Spec := by
  intro n
  simp only [A194124]

end A194124

/-! ## A194124.P3822349680096794706

`∑[A007007(n+2)-1]`
-/

namespace A194124.P3822349680096794706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007007 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194124.P3822349680096794706

namespace A194124

/-- `∑[A007007(n+2)-1]` -/
def P3822349680096794706.Spec : Prop :=
  ∀ n, P3822349680096794706.a n = A194124 n

end A194124

/-! ## A194124.P3819763199078140096

`A201686(n+3)-(n+1)`
-/

namespace A194124.P3819763199078140096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 (n + 3) - (n + 1 : ℤ)

end

end A194124.P3819763199078140096

namespace A194124

/-- `A201686(n+3)-(n+1)` -/
def P3819763199078140096.Spec : Prop :=
  ∀ n, P3819763199078140096.a n = A194124 n

end A194124

/-! ## A194124.P2913418930591092815

`A014495(n+3)-(n+2)`
-/

namespace A194124.P2913418930591092815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (n + 3) - (n + 2 : ℤ)

end

end A194124.P2913418930591092815

namespace A194124

/-- `A014495(n+3)-(n+2)` -/
def P2913418930591092815.Spec : Prop :=
  ∀ n, P2913418930591092815.a n = A194124 n

end A194124

/-! ## A194124.P17258826955754465579

`A001405(n+3)-(n+3)`
-/

namespace A194124.P17258826955754465579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 3) - (n + 3 : ℤ)

end

end A194124.P17258826955754465579

namespace A194124

/-- `A001405(n+3)-(n+3)` -/
def P17258826955754465579.Spec : Prop :=
  ∀ n, P17258826955754465579.a n = A194124 n

end A194124

/-! ## A194124.P2743110189689324690

`A129937(n+3)-A317301(2*n)`
-/

namespace A194124.P2743110189689324690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129937 (n + 3) - A317301 (2 * n)

end

end A194124.P2743110189689324690

namespace A194124

/-- `A129937(n+3)-A317301(2*n)` -/
def P2743110189689324690.Spec : Prop :=
  ∀ n, P2743110189689324690.a n = A194124 n

end A194124

/-! ## A194124.P9095065064762943086

`record[A001405(A152271(n))-A152271(n)]`
-/

namespace A194124.P9095065064762943086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A152271 n).toNat - A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194124.P9095065064762943086

namespace A194124

/-- `record[A001405(A152271(n))-A152271(n)]` -/
def P9095065064762943086.Spec : Prop :=
  ∀ n, P9095065064762943086.a n = A194124 n

end A194124

/-! ## A194124.P8456909876795407696

`∑[C(n+2, ceil(n/2))-1]`
-/

namespace A194124.P8456909876795407696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) ⌈(n : ℚ) / 2⌉.toNat : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194124.P8456909876795407696

namespace A194124

/-- `∑[C(n+2, ceil(n/2))-1]` -/
def P8456909876795407696.Spec : Prop :=
  ∀ n, P8456909876795407696.a n = A194124 n

end A194124

/-! ## A194124.P18352020270447015802

`C(n+3, ceil(n/2)+1)-(n+3)`
-/

namespace A194124.P18352020270447015802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) (⌈(n : ℚ) / 2⌉ + 1).toNat : ℤ) - (n + 3 : ℤ)

end

end A194124.P18352020270447015802

namespace A194124

/-- `C(n+3, ceil(n/2)+1)-(n+3)` -/
def P18352020270447015802.Spec : Prop :=
  ∀ n, P18352020270447015802.a n = A194124 n

end A194124

/-!
# A194126: -1+A088207.

The programs for A194126, the canonical program `A194126.P8549741617855437289` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194126 has offset 1).

The definition of A194126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194126.P11356321687879431015

`∑[comp[floor(ϕ*n)]]-1`
-/

namespace A194126.P11356321687879431015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A194126.P11356321687879431015

namespace A194126

/-- `∑[comp[floor(ϕ*n)]]-1` -/
def P11356321687879431015.Spec : Prop :=
  ∀ n, P11356321687879431015.a n = A194126 (n + 1)

end A194126

/-! ## A194126.P6551163958983406821

`floor(a(n-1)+(n+1)*ϕ²)` with `a(0)=1`
-/

namespace A194126.P6551163958983406821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n + 1 : ℝ) * Real.goldenRatio ^ 2⌋

end

end A194126.P6551163958983406821

namespace A194126

/-- `floor(a(n-1)+(n+1)*ϕ²)` -/
def P6551163958983406821.Spec : Prop :=
  ∀ n, P6551163958983406821.a n = A194126 (n + 1)

end A194126

/-! ## A194126.P10417194493565976042

`∑[record[2-xor(1, -n)]+floor((n+1)/ϕ)]`
-/

namespace A194126.P10417194493565976042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194126.P10417194493565976042

namespace A194126

/-- `∑[record[2-xor(1, -n)]+floor((n+1)/ϕ)]` -/
def P10417194493565976042.Spec : Prop :=
  ∀ n, P10417194493565976042.a n = A194126 (n + 1)

end A194126

/-! ## A194126.P4499147740069915088

`floor(ϕ*(n+1)+a(n-1)+n+1)` with `a(0)=1`
-/

namespace A194126.P4499147740069915088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio * (n + 1 : ℝ) + (a (n - 1) + (n + 1 : ℤ) : ℝ)⌋

end

end A194126.P4499147740069915088

namespace A194126

/-- `floor(ϕ*(n+1)+a(n-1)+n+1)` -/
def P4499147740069915088.Spec : Prop :=
  ∀ n, P4499147740069915088.a n = A194126 (n + 1)

end A194126

/-! ## A194126.P13201164491476818995

`floor(∑[A004957(n)+ϕ])`
-/

namespace A194126.P13201164491476818995
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A004957 n : ℝ) + Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A194126.P13201164491476818995

namespace A194126

/-- `floor(∑[A004957(n)+ϕ])` -/
def P13201164491476818995.Spec : Prop :=
  ∀ n, P13201164491476818995.a n = A194126 (n + 1)

end A194126

/-! ## A194126.P8549741617855437289

`abs(1-∑[A001950(n+1)])`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194126

/-- `abs(1-∑[A001950(n+1)])` -/
def P8549741617855437289.Spec : Prop :=
  ∀ n, P8549741617855437289.a n = A194126 (n + 1)

theorem P8549741617855437289.correct : P8549741617855437289.Spec := by
  intro n
  simp only [A194126, Nat.add_sub_cancel]

end A194126

/-! ## A194126.P10678813145251645926

`∑[floor((n+1)*ϕ²)-A000007(n)]`
-/

namespace A194126.P10678813145251645926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋ - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194126.P10678813145251645926

namespace A194126

/-- `∑[floor((n+1)*ϕ²)-A000007(n)]` -/
def P10678813145251645926.Spec : Prop :=
  ∀ n, P10678813145251645926.a n = A194126 (n + 1)

end A194126

/-! ## A194126.P4096703195492300567

`abs(∑[A000201(n+1)+1+n]-1)`
-/

namespace A194126.P4096703195492300567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A194126.P4096703195492300567

namespace A194126

/-- `abs(∑[A000201(n+1)+1+n]-1)` -/
def P4096703195492300567.Spec : Prop :=
  ∀ n, P4096703195492300567.a n = A194126 (n + 1)

end A194126

/-! ## A194126.P999980209641879701

`∑[A003622(n+1)+n²%(n+1)]`
-/

namespace A194126.P999980209641879701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194126.P999980209641879701

namespace A194126

/-- `∑[A003622(n+1)+n²%(n+1)]` -/
def P999980209641879701.Spec : Prop :=
  ∀ n, P999980209641879701.a n = A194126 (n + 1)

end A194126

/-! ## A194126.P3296212825644046598

`ceil(a(n-1)+A004957(n+1)-1)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A194126.P3296212825644046598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A004957 (n + 1) - 1)

end

end A194126.P3296212825644046598

namespace A194126

/-- `ceil(a(n-1)+A004957(n+1)-1)` -/
def P3296212825644046598.Spec : Prop :=
  ∀ n, P3296212825644046598.a n = A194126 (n + 1)

end A194126

/-! ## A194126.P9543504603654765401

`∑[A103517(n)+A005206(n)]`
-/

namespace A194126.P9543504603654765401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + A005206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194126.P9543504603654765401

namespace A194126

/-- `∑[A103517(n)+A005206(n)]` -/
def P9543504603654765401.Spec : Prop :=
  ∀ n, P9543504603654765401.a n = A194126 (n + 1)

end A194126

/-! ## A194126.P14890097620773868811

`∑[A054770(n+1)-A028310(n)]`
-/

namespace A194126.P14890097620773868811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054770 (n + 1) - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194126.P14890097620773868811

namespace A194126

/-- `∑[A054770(n+1)-A028310(n)]` -/
def P14890097620773868811.Spec : Prop :=
  ∀ n, P14890097620773868811.a n = A194126 (n + 1)

end A194126

/-! ## A194126.P8684871584638062860

`∑[A001950(n+1)^(A000040(n+1)%2)]`
-/

namespace A194126.P8684871584638062860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001950 (n + 1) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194126.P8684871584638062860

namespace A194126

/-- `∑[A001950(n+1)^(A000040(n+1)%2)]` -/
def P8684871584638062860.Spec : Prop :=
  ∀ n, P8684871584638062860.a n = (A194126 (n + 1) : ℚ)

end A194126

/-! ## A194126.P15978269499718346663

`∑[record[A002251(n+2)]]`
-/

namespace A194126.P15978269499718346663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194126.P15978269499718346663

namespace A194126

/-- `∑[record[A002251(n+2)]]` -/
def P15978269499718346663.Spec : Prop :=
  ∀ n, P15978269499718346663.a n = A194126 (n + 1)

end A194126

/-! ## A194126.P5588007033280894327

`∑[A073929(A000201(n+1))]`
-/

namespace A194126.P5588007033280894327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073929 (A000201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194126.P5588007033280894327

namespace A194126

/-- `∑[A073929(A000201(n+1))]` -/
def P5588007033280894327.Spec : Prop :=
  ∀ n, P5588007033280894327.a n = A194126 (n + 1)

end A194126

/-! ## A194126.P12794265335814134307

`∑[record[A054084(n+2)]]`
-/

namespace A194126.P12794265335814134307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194126.P12794265335814134307

namespace A194126

/-- `∑[record[A054084(n+2)]]` -/
def P12794265335814134307.Spec : Prop :=
  ∀ n, P12794265335814134307.a n = A194126 (n + 1)

end A194126

/-! ## A194126.P3125605991924569061

`abs(1-∑[eq[1, A003849(n)]+1])`
-/

namespace A194126.P3125605991924569061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A194126.P3125605991924569061

namespace A194126

/-- `abs(1-∑[eq[1, A003849(n)]+1])` -/
def P3125605991924569061.Spec : Prop :=
  ∀ n, P3125605991924569061.a n = A194126 (n + 1)

end A194126

/-! ## A194126.P4025203633291383754

`∑[floor((n+1)*ϕ²)/A014963(4*n+2)]`
-/

namespace A194126.P4025203633291383754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋ : ℚ) / (A014963 (4 * n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194126.P4025203633291383754

namespace A194126

/-- `∑[floor((n+1)*ϕ²)/A014963(4*n+2)]` -/
def P4025203633291383754.Spec : Prop :=
  ∀ n, P4025203633291383754.a n = (A194126 (n + 1) : ℚ)

end A194126

/-!
# A194127: Listed by antidiagonals, array A(k,n) = digital root of n-th nonzero centered k-gonal number.

The programs for A194127, there is no canonical definition to state claims against.
-/

/-! ## A194127.P11500489740107035502

`dr(A086273(comp[∑[n]]))`
-/

namespace A194127.P11500489740107035502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A086273 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A194127.P11500489740107035502

/-! ## A194127.P3604677470169633858

`A010888(A086273(comp[C(n, 2)]))`
-/

namespace A194127.P3604677470169633858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A086273 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A194127.P3604677470169633858

/-! ## A194127.P16042176478930081490

`dr(A143844(n)+A086271(n+1))`
-/

namespace A194127.P16042176478930081490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A143844 n + A086271 (n + 1))

end

end A194127.P16042176478930081490

/-! ## A194127.P14972042118692934869

`dr(A193043(n+1)+A143844(n))`
-/

namespace A194127.P14972042118692934869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A193043 (n + 1) + A143844 n)

end

end A194127.P14972042118692934869

/-! ## A194127.P16624008521158061457

`dr(A086271(n+1)+A025668(n+1)²)`
-/

namespace A194127.P16624008521158061457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A086271 (n + 1) + A025668 (n + 1) ^ 2)

end

end A194127.P16624008521158061457

/-! ## A194127.P7306519382995801825

`A010888(A143844(n)+A086271(n+1))`
-/

namespace A194127.P7306519382995801825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A143844 n + A086271 (n + 1)).toNat

end

end A194127.P7306519382995801825

/-! ## A194127.P8266009256252949071

`A010888(A193043(n+1)+A143844(n))`
-/

namespace A194127.P8266009256252949071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A193043 (n + 1) + A143844 n).toNat

end

end A194127.P8266009256252949071

/-! ## A194127.P13274086883912122107

`dr(A139267(A002262(n))+A057145(n+2))`
-/

namespace A194127.P13274086883912122107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A139267 (A002262 n).toNat + A057145 (n + 2))

end

end A194127.P13274086883912122107

/-! ## A194127.P3212411502772522819

`dr(A095831(A038722(n+1))+A086271(n+1))`
-/

namespace A194127.P3212411502772522819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A095831 (A038722 (n + 1)).toNat + A086271 (n + 1))

end

end A194127.P3212411502772522819

/-! ## A194127.P3779844601378910192

`dr(A193043(n+1)+A095831(A038722(n+1)))`
-/

namespace A194127.P3779844601378910192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A193043 (n + 1) + A095831 (A038722 (n + 1)).toNat)

end

end A194127.P3779844601378910192

/-!
# A194128: (Partial sums of the squarefree integers) that are prime.

The programs for A194128, there is no canonical definition to state claims against.
-/

/-! ## A194128.P9031086344411881483

`p?[∑[record[∏{p}[n, #]]]]`
-/

namespace A194128.P9031086344411881483
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A194128.P9031086344411881483

/-! ## A194128.P9561732555840565818

`p?[A013932(n+1)]`
-/

namespace A194128.P9561732555840565818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194128.P9561732555840565818

/-! ## A194128.P2129550921217206299

`p?[A173143(n+1)]`
-/

namespace A194128.P2129550921217206299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194128.P2129550921217206299

/-! ## A194128.P7347248547139993496

`p?[∑[A005117(n+1)]]`
-/

namespace A194128.P7347248547139993496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194128.P7347248547139993496

/-! ## A194128.P3082661281993891677

`p?[∑[record[A007913(n+1)]]]`
-/

namespace A194128.P3082661281993891677
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194128.P3082661281993891677

/-! ## A194128.P2495773861366779977

`p?[∑[record[A007947(n+1)]]]`
-/

namespace A194128.P2495773861366779977
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194128.P2495773861366779977

/-! ## A194128.P1262868837526899132

`p?[∑[record[A055231(n+1)]]]`
-/

namespace A194128.P1262868837526899132
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194128.P1262868837526899132

/-! ## A194128.P11485620014136093051

`p?[∑[record[A182938(n+1)]]]`
-/

namespace A194128.P11485620014136093051
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194128.P11485620014136093051

/-!
# A194129: Number of digits in n^100.

The programs for A194129, there is no canonical definition to state claims against.
-/

/-! ## A194129.P10928788384730758951

`A004222(floor(acot(n)+n))+1`
-/

namespace A194129.P10928788384730758951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004222 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + 1

end

end A194129.P10928788384730758951

/-! ## A194129.P11964861466068810298

`A004222(round(sqrt(n²+1)))+1`
-/

namespace A194129.P11964861466068810298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004222 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1

end

end A194129.P11964861466068810298

/-! ## A194129.P14973932163900679372

`abs(1-4/2-A004222(A028310(n)))`
-/

namespace A194129.P14973932163900679372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |1 - (4 : ℚ) / 2 - (A004222 (A028310 n).toNat : ℚ)|

end

end A194129.P14973932163900679372

/-! ## A194129.P9380360045148156747

`A008619(2*A004222(A028310(n)))`
-/

namespace A194129.P9380360045148156747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A004222 (A028310 n).toNat).toNat

end

end A194129.P9380360045148156747

/-! ## A194129.P7805670474136162763

`A004222(A028310(n))*A060576(n)+1`
-/

namespace A194129.P7805670474136162763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004222 (A028310 n).toNat * A060576 n + 1

end

end A194129.P7805670474136162763

/-! ## A194129.P18182497549862765402

`(A004222(A028310(n))+1)^(A000040(n+1)%2)`
-/

namespace A194129.P18182497549862765402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004222 (A028310 n).toNat + 1 : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A194129.P18182497549862765402

/-! ## A194129.P2506013293414664613

`A000007(n+1)+A004222(A028310(n))+1`
-/

namespace A194129.P2506013293414664613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A004222 (A028310 n).toNat + 1)

end

end A194129.P2506013293414664613

/-! ## A194129.P891528970765146527

`lcm(A014963(15*(n+1))², A004222(A028310(n)))+1`
-/

namespace A194129.P891528970765146527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (15 * (n + 1)) ^ 2) (A004222 (A028310 n).toNat) + 1

end

end A194129.P891528970765146527

/-! ## A194129.P15292074841229497495

`A004222(A028310(n))%A080036(A320710(n+1))+1`
-/

namespace A194129.P15292074841229497495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004222 (A028310 n).toNat) (A080036 (A320710 (n + 1)).toNat) + 1

end

end A194129.P15292074841229497495

/-! ## A194129.P11584519414635593482

`A131713(3*n²)+A004222(A028310(n))`
-/

namespace A194129.P11584519414635593482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (3 * n ^ 2) + A004222 (A028310 n).toNat

end

end A194129.P11584519414635593482

/-!
# A194130: a(n) = n!/gcd(n,3).

The programs for A194130, the canonical program `A194130.P14790468293046025112` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194130 has offset 1).

The definition of A194130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194130.P14790468293046025112

`(n+1)!/gcd(n+1, 3)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194130

/-- `(n+1)!/gcd(n+1, 3)` -/
def P14790468293046025112.Spec : Prop :=
  ∀ n, P14790468293046025112.a n = (A194130 (n + 1) : ℚ)

end A194130

/-! ## A194130.P4045610767827997284

`∑[round(Δ[n!/gcd(3, n)])]`
-/

namespace A194130.P4045610767827997284
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Nat.gcd 3 n : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194130.P4045610767827997284

namespace A194130

/-- `∑[round(Δ[n!/gcd(3, n)])]` -/
def P4045610767827997284.Spec : Prop :=
  ∀ n, P4045610767827997284.a n = A194130 (n + 1)

end A194130

/-! ## A194130.P5209065967174289908

`lcm(3, n+1)/3*n!`
-/

namespace A194130.P5209065967174289908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n + 1) : ℚ) / 3 * (Nat.factorial n : ℚ)

end

end A194130.P5209065967174289908

namespace A194130

/-- `lcm(3, n+1)/3*n!` -/
def P5209065967174289908.Spec : Prop :=
  ∀ n, P5209065967174289908.a n = (A194130 (n + 1) : ℚ)

end A194130

/-! ## A194130.P17331118822374388626

`(n+1)!/or(1, n%3)`
-/

namespace A194130.P17331118822374388626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (Nat.lor 1 (n % 3) : ℚ)

end

end A194130.P17331118822374388626

namespace A194130

/-- `(n+1)!/or(1, n%3)` -/
def P17331118822374388626.Spec : Prop :=
  ∀ n, P17331118822374388626.a n = (A194130 (n + 1) : ℚ)

end A194130

/-! ## A194130.P16032289505430324776

`(n^3-n)*a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A194130.P16032289505430324776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  ((n ^ 3 : ℤ) - (n : ℤ)) * a (n - 3)

end

end A194130.P16032289505430324776

namespace A194130

/-- `(n^3-n)*a(n-3)` -/
def P16032289505430324776.Spec : Prop :=
  ∀ n, P16032289505430324776.a n = A194130 (n + 1)

end A194130

/-! ## A194130.P4548340417355159454

`(n-1)*a(n-3)*∑[2*n]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A194130.P4548340417355159454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  ((n : ℤ) - 1) * a (n - 3) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194130.P4548340417355159454

namespace A194130

/-- `(n-1)*a(n-3)*∑[2*n]` -/
def P4548340417355159454.Spec : Prop :=
  ∀ n, P4548340417355159454.a n = A194130 (n + 1)

end A194130

/-! ## A194130.P14888426080841862496

`A199127(n+1)*A264557(n+1)`
-/

namespace A194130.P14888426080841862496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199127 (n + 1) * A264557 (n + 1)

end

end A194130.P14888426080841862496

namespace A194130

/-- `A199127(n+1)*A264557(n+1)` -/
def P14888426080841862496.Spec : Prop :=
  ∀ n, P14888426080841862496.a n = A194130 (n + 1)

end A194130

/-! ## A194130.P3222810343178110050

`gcd(∏[n+3]/3, ∏[n+1])`
-/

namespace A194130.P3222810343178110050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3)) ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194130.P3222810343178110050

namespace A194130

/-- `gcd(∏[n+3]/3, ∏[n+1])` -/
def P3222810343178110050.Spec : Prop :=
  ∀ n, (P3222810343178110050.a n : ℤ) = A194130 (n + 1)

end A194130

/-!
# A194131: Number of ways to arrange 3 indistinguishable points on an n X n X n triangular grid so that no three points are collinear at any angle.

The programs for A194131, there is no canonical definition to state claims against.
-/

/-! ## A194131.P7663419534104181633

`A194136(∑[n+2]-1)%(4^n)`
-/

namespace A194131.P7663419534104181633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194136 (∑ j ∈ Finset.range (n + 1), f1 j - 1)) (4 ^ n : ℤ)

end

end A194131.P7663419534104181633

/-! ## A194131.P2247005984982153838

`A194136(A027379(n)+1)`
-/

namespace A194131.P2247005984982153838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 (A027379 n + 1).toNat

end

end A194131.P2247005984982153838

/-! ## A194131.P15593967906859018643

`A194136(floor(A034856(n+1)+acot(n)))`
-/

namespace A194131.P15593967906859018643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 ⌊(A034856 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A194131.P15593967906859018643

/-! ## A194131.P5678221701424300005

`A194136(∑[n+2]-1)-A000007(n)`
-/

namespace A194131.P5678221701424300005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A000007 n

end

end A194131.P5678221701424300005

/-! ## A194131.P9698872347909403664

`char[A007318(n)]*A194136(∑[n+2]-1)`
-/

namespace A194131.P9698872347909403664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A194136 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

end

end A194131.P9698872347909403664

/-!
# A194132: Number of ways to arrange 4 indistinguishable points on an n X n X n triangular grid so that no three points are collinear at any angle.

The programs for A194132, there is no canonical definition to state claims against.
-/

/-! ## A194132.P8273278320382206682

`A194136(∑[n+3]+n+4)`
-/

namespace A194132.P8273278320382206682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A194132.P8273278320382206682

/-! ## A194132.P14266020878432941134

`lcm(3, A194136(A141214(n+1)))`
-/

namespace A194132.P14266020878432941134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A194136 (A141214 (n + 1)).toNat)

end

end A194132.P14266020878432941134

/-! ## A194132.P6713067204298594654

`A194136(A055998(n+2))+char[19]`
-/

namespace A194132.P6713067204298594654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 (A055998 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A194132.P6713067204298594654

/-! ## A194132.P884574950353881565

`A194136(A141214(n+1))%A227383(n+1)`
-/

namespace A194132.P884574950353881565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194136 (A141214 (n + 1)).toNat) (A227383 (n + 1))

end

end A194132.P884574950353881565

/-! ## A194132.P12933314488328257774

`A007318(C(2, n))*A194136(A027379(n+2))`
-/

namespace A194132.P12933314488328257774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A194136 (A027379 (n + 2)).toNat

end

end A194132.P12933314488328257774

/-!
# A194133: Number of ways to arrange 5 indistinguishable points on an n X n X n triangular grid so that no three points are collinear at any angle.

The programs for A194133, there is no canonical definition to state claims against.
-/

/-! ## A194133.P16126883010447144719

`A194136(∑[n+5]+6)`
-/

namespace A194133.P16126883010447144719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A194133.P16126883010447144719

/-! ## A194133.P7940230978089043153

`A194136(A046691(n+3))%A271554(n)`
-/

namespace A194133.P7940230978089043153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194136 (A046691 (n + 3)).toNat) (A271554 n)

end

end A194133.P7940230978089043153

/-! ## A194133.P17455080525415453200

`char[A338096(n)]*A194136(A046691(n+3))`
-/

namespace A194133.P17455080525415453200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A194136 (A046691 (n + 3)).toNat

end

end A194133.P17455080525415453200

/-! ## A194133.P4954217670192227235

`A194136(Δ[A264443(n)])+A114099(3*n+1)`
-/

namespace A194133.P4954217670192227235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 (f1 (n + 1) - f1 n).toNat + A114099 (3 * n + 1)

end

end A194133.P4954217670192227235

/-!
# A194134: Number of ways to arrange 6 indistinguishable points on an n X n X n triangular grid so that no three points are collinear at any angle.

The programs for A194134, there is no canonical definition to state claims against.
-/

/-! ## A194134.P9733223001930354993

`A194136(A052905(n+3))`
-/

namespace A194134.P9733223001930354993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 (A052905 (n + 3)).toNat

end

end A194134.P9733223001930354993

/-! ## A194134.P3133768279217552635

`A194136(eq[3, A219347(n)])`
-/

namespace A194134.P3133768279217552635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194134.P3133768279217552635

/-! ## A194134.P1573109499503196983

`A194136(eq[5, A152157(n)])`
-/

namespace A194134.P1573109499503196983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194134.P1573109499503196983

/-! ## A194134.P1249433576627407120

`A194136(eq[5, A193592(n)])`
-/

namespace A194134.P1249433576627407120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194134.P1249433576627407120

/-! ## A194134.P15060922423735033406

`A194136(eq[16, A209439(n)])`
-/

namespace A194134.P15060922423735033406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194134.P15060922423735033406

/-!
# A194135: Number of ways to arrange 7 indistinguishable points on an n X n X n triangular grid so that no three points are collinear at any angle.

The programs for A194135, there is no canonical definition to state claims against.
-/

/-! ## A194135.P12398316546591845625

`A194136(A055999(n+4))`
-/

namespace A194135.P12398316546591845625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 (A055999 (n + 4)).toNat

end

end A194135.P12398316546591845625

/-! ## A194135.P3824080420007275475

`A194136(eq[4, A219347(n)])`
-/

namespace A194135.P3824080420007275475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194135.P3824080420007275475

/-! ## A194135.P16597798147194176601

`A194136(eq[6, A193592(n)])`
-/

namespace A194135.P16597798147194176601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194135.P16597798147194176601

/-! ## A194135.P819619493049014228

`A194136(eq[7, A152157(n)])`
-/

namespace A194135.P819619493049014228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194135.P819619493049014228

/-! ## A194135.P5801696759974004639

`A194136(Δ[A023551(n+2)])`
-/

namespace A194135.P5801696759974004639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 (f1 (n + 1) - f1 n).toNat

end

end A194135.P5801696759974004639

/-!
# A194136: T(n,k) = number of ways to arrange k indistinguishable points on an n X n X n triangular grid so that no three points are collinear at any angle.

The programs for A194136, there is no canonical definition to state claims against.
-/

/-! ## A194136.P13102485593685686796

`A018851(A194480(n+1)²)`
-/

namespace A194136.P13102485593685686796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A194480 (n + 1) ^ 2).toNat

end

end A194136.P13102485593685686796

/-! ## A194136.P9854711669548929802

`A056926(A194480(n+1)²)`
-/

namespace A194136.P9854711669548929802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A194480 (n + 1) ^ 2).toNat

end

end A194136.P9854711669548929802

/-! ## A194136.P12142851682140832951

`A262689(A194480(n+1)²)`
-/

namespace A194136.P12142851682140832951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A194480 (n + 1) ^ 2).toNat

end

end A194136.P12142851682140832951

/-! ## A194136.P7916946420022296084

`A182182(3*A194480(n+1))`
-/

namespace A194136.P7916946420022296084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182182 (3 * A194480 (n + 1)).toNat

end

end A194136.P7916946420022296084

/-! ## A194136.P1823093884438761597

`A194480(n+1)%A102474(n)`
-/

namespace A194136.P1823093884438761597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194480 (n + 1)) (A102474 n)

end

end A194136.P1823093884438761597

/-!
# A194137: a(n) = Sum_{j=1..n} floor(j*sqrt(6)); n-th partial sum of Beatty sequence for sqrt(6).

The programs for A194137, the canonical program `A194137.P4172174883832530821` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194137 has offset 1).

The definition of A194137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194137.P5641448932078746080

`∑[floor((n+1)*sqrt(6))]`
-/

namespace A194137.P5641448932078746080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (6 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194137.P5641448932078746080

namespace A194137

/-- `∑[floor((n+1)*sqrt(6))]` -/
def P5641448932078746080.Spec : Prop :=
  ∀ n, P5641448932078746080.a n = A194137 (n + 1)

end A194137

/-! ## A194137.P3914935123197592685

`floor(a(n-1)+(n+1)*sqrt(6))` with `a(0)=2`
-/

namespace A194137.P3914935123197592685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n + 1 : ℝ) * Real.sqrt (6 : ℝ)⌋

end

end A194137.P3914935123197592685

namespace A194137

/-- `floor(a(n-1)+(n+1)*sqrt(6))` -/
def P3914935123197592685.Spec : Prop :=
  ∀ n, P3914935123197592685.a n = A194137 (n + 1)

end A194137

/-! ## A194137.P4172174883832530821

`abs(∑[1-A198083(n+1)])`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194137

/-- `abs(∑[1-A198083(n+1)])` -/
def P4172174883832530821.Spec : Prop :=
  ∀ n, P4172174883832530821.a n = A194137 (n + 1)

theorem P4172174883832530821.correct : P4172174883832530821.Spec := by
  intro n
  simp only [A194137, Nat.add_sub_cancel]

end A194137

/-! ## A194137.P7228414636063167453

`root(∑[A022840(n+1)], 2)²`
-/

namespace A194137.P7228414636063167453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A194137.P7228414636063167453

namespace A194137

/-- `root(∑[A022840(n+1)], 2)²` -/
def P7228414636063167453.Spec : Prop :=
  ∀ n, P7228414636063167453.a n = (A194137 (n + 1) : ℝ)

end A194137

/-! ## A194137.P18437917106116726012

`A194147(n+1)+∑[n+1]`
-/

namespace A194137.P18437917106116726012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194147 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194137.P18437917106116726012

namespace A194137

/-- `A194147(n+1)+∑[n+1]` -/
def P18437917106116726012.Spec : Prop :=
  ∀ n, P18437917106116726012.a n = A194137 (n + 1)

theorem P18437917106116726012.correct : P18437917106116726012.Spec := by
  intro n
  simp only [A194137, Nat.add_sub_cancel, A194137.P18437917106116726012.f1, A194137.P18437917106116726012.a, A194137.P4172174883832530821.f1, A194137.P4172174883832530821.a, A194147, A194147.P11761770816087481396.f1, A194147.P11761770816087481396.a, A198083, A198083.P2199406623985289841.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194137

/-! ## A194137.P6166382170600321456

`∑[A194145(n+1)+1]+∑[n]`
-/

namespace A194137.P6166382170600321456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194145 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194137.P6166382170600321456

namespace A194137

/-- `∑[A194145(n+1)+1]+∑[n]` -/
def P6166382170600321456.Spec : Prop :=
  ∀ n, P6166382170600321456.a n = A194137 (n + 1)

end A194137

/-! ## A194137.P16823208144587906879

`∑[A022840(n+1)]+C(n, A004277(n))`
-/

namespace A194137.P16823208144587906879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n (A004277 n).toNat : ℤ)

end

end A194137.P16823208144587906879

namespace A194137

/-- `∑[A022840(n+1)]+C(n, A004277(n))` -/
def P16823208144587906879.Spec : Prop :=
  ∀ n, P16823208144587906879.a n = A194137 (n + 1)

end A194137

/-! ## A194137.P11949794278131384070

`∑[record[A138236(n+2)]]+1`
-/

namespace A194137.P11949794278131384070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138236 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194137.P11949794278131384070

namespace A194137

/-- `∑[record[A138236(n+2)]]+1` -/
def P11949794278131384070.Spec : Prop :=
  ∀ n, P11949794278131384070.a n = A194137 (n + 1)

end A194137

/-! ## A194137.P11418535015603665622

`record[A138236(n+1)]+a(n-1)` with `a(0)=2`
-/

namespace A194137.P11418535015603665622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 1)

end

end A194137.P11418535015603665622

namespace A194137

/-- `record[A138236(n+1)]+a(n-1)` -/
def P11418535015603665622.Spec : Prop :=
  ∀ n, P11418535015603665622.a n = A194137 (n + 1)

end A194137

/-! ## A194137.P3412158801708305482

`A194145(n+1)+A022789(n+1)`
-/

namespace A194137.P3412158801708305482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194145 (n + 1) + A022789 (n + 1)

end

end A194137.P3412158801708305482

namespace A194137

/-- `A194145(n+1)+A022789(n+1)` -/
def P3412158801708305482.Spec : Prop :=
  ∀ n, P3412158801708305482.a n = A194137 (n + 1)

end A194137

/-! ## A194137.P3490901862053336330

`A022789(n+2)-(n+2)`
-/

namespace A194137.P3490901862053336330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022789 (n + 2) - (n + 2 : ℤ)

end

end A194137.P3490901862053336330

namespace A194137

/-- `A022789(n+2)-(n+2)` -/
def P3490901862053336330.Spec : Prop :=
  ∀ n, P3490901862053336330.a n = A194137 (n + 1)

end A194137

/-! ## A194137.P14102691284679803476

`∑[A022840(n+1)]%A182691(n+4)`
-/

namespace A194137.P14102691284679803476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A182691 (n + 4))

end

end A194137.P14102691284679803476

namespace A194137

/-- `∑[A022840(n+1)]%A182691(n+4)` -/
def P14102691284679803476.Spec : Prop :=
  ∀ n, P14102691284679803476.a n = A194137 (n + 1)

end A194137

/-!
# A194138: a(n) = Sum_{j=1..n} floor(j*(1+sqrt(2))), n-th partial sum of Beatty sequence for 1+sqrt(2).

The programs for A194138, the canonical program `A194138.P1802011036160146576` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194138 has offset 1).

The definition of A194138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194138.P4891002948996412325

`∑[comp[floor(n/sqrt(2))+n]]`
-/

namespace A194138.P4891002948996412325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋ + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194138.P4891002948996412325

namespace A194138

/-- `∑[comp[floor(n/sqrt(2))+n]]` -/
def P4891002948996412325.Spec : Prop :=
  ∀ n, (P4891002948996412325.a n : ℤ) = A194138 (n + 1)

end A194138

/-! ## A194138.P12010216974278271271

`comp[floor(n/sqrt(2))+n]+a(n-1)` with `a(0)=2`
-/

namespace A194138.P12010216974278271271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + a (n - 1)

end

end A194138.P12010216974278271271

namespace A194138

/-- `comp[floor(n/sqrt(2))+n]+a(n-1)` -/
def P12010216974278271271.Spec : Prop :=
  ∀ n, (P12010216974278271271.a n : ℤ) = A194138 (n + 1)

end A194138

/-! ## A194138.P11247265018464204736

`a(n-1)+floor((sqrt(2)+1)*(n+1))` with `a(0)=2`
-/

namespace A194138.P11247265018464204736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + ⌊(Real.sqrt (2 : ℝ) + 1) * (n + 1 : ℝ)⌋

end

end A194138.P11247265018464204736

namespace A194138

/-- `a(n-1)+floor((sqrt(2)+1)*(n+1))` -/
def P11247265018464204736.Spec : Prop :=
  ∀ n, P11247265018464204736.a n = A194138 (n + 1)

end A194138

/-! ## A194138.P14167895347283990488

`∑[A022804(n+1)]/2`
-/

namespace A194138.P14167895347283990488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022804 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A194138.P14167895347283990488

namespace A194138

/-- `∑[A022804(n+1)]/2` -/
def P14167895347283990488.Spec : Prop :=
  ∀ n, P14167895347283990488.a n = (A194138 (n + 1) : ℚ)

end A194138

/-! ## A194138.P10112432125143343764

`A194139(n)-∑[n+1]`
-/

namespace A194138.P10112432125143343764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194139 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194138.P10112432125143343764

namespace A194138

/-- `A194139(n)-∑[n+1]` -/
def P10112432125143343764.Spec : Prop :=
  ∀ n, P10112432125143343764.a n = A194138 (n + 1)

end A194138

/-! ## A194138.P1802011036160146576

`A194102(n+1)+∑[n+1]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A194138

/-- `A194102(n+1)+∑[n+1]` -/
def P1802011036160146576.Spec : Prop :=
  ∀ n, P1802011036160146576.a n = A194138 (n + 1)

theorem P1802011036160146576.correct : P1802011036160146576.Spec := by
  intro n
  simp only [A194138, Nat.add_sub_cancel]

end A194138

/-! ## A194138.P13123309640058586648

`∑[A054071(n+1)]+(n+1)²`
-/

namespace A194138.P13123309640058586648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A194138.P13123309640058586648

namespace A194138

/-- `∑[A054071(n+1)]+(n+1)²` -/
def P13123309640058586648.Spec : Prop :=
  ∀ n, P13123309640058586648.a n = A194138 (n + 1)

end A194138

/-! ## A194138.P9585439805537574428

`∑[A286923(n+1)]-(n+1)²`
-/

namespace A194138.P9585439805537574428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A194138.P9585439805537574428

namespace A194138

/-- `∑[A286923(n+1)]-(n+1)²` -/
def P9585439805537574428.Spec : Prop :=
  ∀ n, P9585439805537574428.a n = A194138 (n + 1)

end A194138

/-! ## A194138.P81409779124058448

`∑[A001951(n+1)+1]+∑[n]`
-/

namespace A194138.P81409779124058448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194138.P81409779124058448

namespace A194138

/-- `∑[A001951(n+1)+1]+∑[n]` -/
def P81409779124058448.Spec : Prop :=
  ∀ n, P81409779124058448.a n = A194138 (n + 1)

end A194138

/-! ## A194138.P8091879037254752978

`∑[A001952(n+1)]-∑[n+1]`
-/

namespace A194138.P8091879037254752978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194138.P8091879037254752978

namespace A194138

/-- `∑[A001952(n+1)]-∑[n+1]` -/
def P8091879037254752978.Spec : Prop :=
  ∀ n, P8091879037254752978.a n = A194138 (n + 1)

end A194138

/-! ## A194138.P17131232713140860808

`∑[A003152(2*(n+1))]-∑[n+1]`
-/

namespace A194138.P17131232713140860808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194138.P17131232713140860808

namespace A194138

/-- `∑[A003152(2*(n+1))]-∑[n+1]` -/
def P17131232713140860808.Spec : Prop :=
  ∀ n, P17131232713140860808.a n = A194138 (n + 1)

end A194138

/-! ## A194138.P14374339410775749848

`∑[A188375(2*(n+1))]-∑[n+1]`
-/

namespace A194138.P14374339410775749848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188375 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194138.P14374339410775749848

namespace A194138

/-- `∑[A188375(2*(n+1))]-∑[n+1]` -/
def P14374339410775749848.Spec : Prop :=
  ∀ n, P14374339410775749848.a n = A194138 (n + 1)

end A194138

/-!
# A194139: a(n) = Sum_{j=1..n} floor(j*(2+sqrt(2))); n-th partial sum of Beatty sequence for 2+sqrt(2).

The programs for A194139, the canonical program `A194139.P15118620267476663729` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194139 has offset 0).

The definition of A194139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194139.P7630538839382693600

`∑[comp[floor(n*sqrt(2))]]`
-/

namespace A194139.P7630538839382693600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194139.P7630538839382693600

namespace A194139

/-- `∑[comp[floor(n*sqrt(2))]]` -/
def P7630538839382693600.Spec : Prop :=
  ∀ n, (P7630538839382693600.a n : ℤ) = A194139 n

end A194139

/-! ## A194139.P12143455044675363841

`comp[floor(n*sqrt(2))]+a(n-1)` with `a(0)=3`
-/

namespace A194139.P12143455044675363841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + a (n - 1)

end

end A194139.P12143455044675363841

namespace A194139

/-- `comp[floor(n*sqrt(2))]+a(n-1)` -/
def P12143455044675363841.Spec : Prop :=
  ∀ n, (P12143455044675363841.a n : ℤ) = A194139 n

end A194139

/-! ## A194139.P17891920675455557488

`∑[A286927(n+1)]/2`
-/

namespace A194139.P17891920675455557488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286927 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A194139.P17891920675455557488

namespace A194139

/-- `∑[A286927(n+1)]/2` -/
def P17891920675455557488.Spec : Prop :=
  ∀ n, P17891920675455557488.a n = (A194139 n : ℚ)

end A194139

/-! ## A194139.P15118620267476663729

`and(∑[A001952(n+1)], -1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194139

/-- `and(∑[A001952(n+1)], -1)` -/
def P15118620267476663729.Spec : Prop :=
  ∀ n, P15118620267476663729.a n = A194139 n

theorem P15118620267476663729.correct : P15118620267476663729.Spec := by
  intro n
  simp only [A194139]

end A194139

/-! ## A194139.P10375874482769952665

`∑[A080754(n+1)]+∑[n]`
-/

namespace A194139.P10375874482769952665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194139.P10375874482769952665

namespace A194139

/-- `∑[A080754(n+1)]+∑[n]` -/
def P10375874482769952665.Spec : Prop :=
  ∀ n, P10375874482769952665.a n = A194139 n

end A194139

/-! ## A194139.P17397537019032158026

`∑[A286923(n+1)]-∑[n]`
-/

namespace A194139.P17397537019032158026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286923 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194139.P17397537019032158026

namespace A194139

/-- `∑[A286923(n+1)]-∑[n]` -/
def P17397537019032158026.Spec : Prop :=
  ∀ n, P17397537019032158026.a n = A194139 n

end A194139

/-! ## A194139.P15984627221388818421

`∑[A286690(n+1)+1]/2`
-/

namespace A194139.P15984627221388818421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286690 (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A194139.P15984627221388818421

namespace A194139

/-- `∑[A286690(n+1)+1]/2` -/
def P15984627221388818421.Spec : Prop :=
  ∀ n, P15984627221388818421.a n = (A194139 n : ℚ)

end A194139

/-! ## A194139.P7830347716635830486

`A194138(n+1)+∑[n+1]`
-/

namespace A194139.P7830347716635830486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194138 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194139.P7830347716635830486

namespace A194139

/-- `A194138(n+1)+∑[n+1]` -/
def P7830347716635830486.Spec : Prop :=
  ∀ n, P7830347716635830486.a n = A194139 n

end A194139

/-! ## A194139.P12920920595932068097

`a(n-1)+A288999(n)+3` with `a(0)=3`
-/

namespace A194139.P12920920595932068097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A288999 n + 3)

end

end A194139.P12920920595932068097

namespace A194139

/-- `a(n-1)+A288999(n)+3` -/
def P12920920595932068097.Spec : Prop :=
  ∀ n, P12920920595932068097.a n = A194139 n

end A194139

/-! ## A194139.P10364876255334795097

`∑[A087057(n+1)]+(n+1)²`
-/

namespace A194139.P10364876255334795097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A194139.P10364876255334795097

namespace A194139

/-- `∑[A087057(n+1)]+(n+1)²` -/
def P10364876255334795097.Spec : Prop :=
  ∀ n, P10364876255334795097.a n = A194139 n

end A194139

/-! ## A194139.P16831752493226341118

`A194102(n+1)+(n+1)*(n+2)`
-/

namespace A194139.P16831752493226341118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194102 (n + 1) + ((n + 1) * (n + 2) : ℤ)

end

end A194139.P16831752493226341118

namespace A194139

/-- `A194102(n+1)+(n+1)*(n+2)` -/
def P16831752493226341118.Spec : Prop :=
  ∀ n, P16831752493226341118.a n = A194139 n

end A194139

/-! ## A194139.P14819480793648666609

`n²+∑[A001951(n+1)+3]-1`
-/

namespace A194139.P14819480793648666609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A194139.P14819480793648666609

namespace A194139

/-- `n²+∑[A001951(n+1)+3]-1` -/
def P14819480793648666609.Spec : Prop :=
  ∀ n, P14819480793648666609.a n = A194139 n

end A194139

/-! ## A194139.P3286663217996813510

`or(∑[A001952(n+1)], A000007(n))`
-/

namespace A194139.P3286663217996813510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A194139.P3286663217996813510

namespace A194139

/-- `or(∑[A001952(n+1)], A000007(n))` -/
def P3286663217996813510.Spec : Prop :=
  ∀ n, P3286663217996813510.a n = A194139 n

end A194139

/-! ## A194139.P11654092858017647617

`∑[A001952(n+1)+n]-A000217(n)`
-/

namespace A194139.P11654092858017647617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000217 n

end

end A194139.P11654092858017647617

namespace A194139

/-- `∑[A001952(n+1)+n]-A000217(n)` -/
def P11654092858017647617.Spec : Prop :=
  ∀ n, P11654092858017647617.a n = A194139 n

end A194139

/-! ## A194139.P5924093937680905828

`A002378(n+1)+∑[A001951(n+1)]`
-/

namespace A194139.P5924093937680905828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194139.P5924093937680905828

namespace A194139

/-- `A002378(n+1)+∑[A001951(n+1)]` -/
def P5924093937680905828.Spec : Prop :=
  ∀ n, P5924093937680905828.a n = A194139 n

end A194139

/-! ## A194139.P12141901092727780927

`∑[A001952(n+1)]%A046092(n+2)`
-/

namespace A194139.P12141901092727780927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A046092 (n + 2))

end

end A194139.P12141901092727780927

namespace A194139

/-- `∑[A001952(n+1)]%A046092(n+2)` -/
def P12141901092727780927.Spec : Prop :=
  ∀ n, P12141901092727780927.a n = A194139 n

end A194139

/-! ## A194139.P143303911498110376

`A022775(n+2)+n*(n+2)`
-/

namespace A194139.P143303911498110376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022775 (n + 2) + (n * (n + 2) : ℤ)

end

end A194139.P143303911498110376

namespace A194139

/-- `A022775(n+2)+n*(n+2)` -/
def P143303911498110376.Spec : Prop :=
  ∀ n, P143303911498110376.a n = A194139 n

end A194139

/-!
# A194140: a(n) = Sum_{j=1..n} floor(j*(1+sqrt(3))); n-th partial sum of Beatty sequence for 1+sqrt(3).

The programs for A194140, the canonical program `A194140.P16657759496107479356` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194140 has offset 1).

The definition of A194140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194140.P6281868163633836577

`∑[floor((sqrt(3)+1)*(n+1))]`
-/

namespace A194140.P6281868163633836577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (3 : ℝ) + 1) * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194140.P6281868163633836577

namespace A194140

/-- `∑[floor((sqrt(3)+1)*(n+1))]` -/
def P6281868163633836577.Spec : Prop :=
  ∀ n, P6281868163633836577.a n = A194140 (n + 1)

end A194140

/-! ## A194140.P16657759496107479356

`and(∑[A054088(n+1)], -1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194140

/-- `and(∑[A054088(n+1)], -1)` -/
def P16657759496107479356.Spec : Prop :=
  ∀ n, P16657759496107479356.a n = A194140 (n + 1)

theorem P16657759496107479356.correct : P16657759496107479356.Spec := by
  intro n
  simp only [A194140, Nat.add_sub_cancel]

end A194140

/-! ## A194140.P7151097895249494391

`A194106(n+1)+∑[n+1]`
-/

namespace A194140.P7151097895249494391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194106 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194140.P7151097895249494391

namespace A194140

/-- `A194106(n+1)+∑[n+1]` -/
def P7151097895249494391.Spec : Prop :=
  ∀ n, P7151097895249494391.a n = A194140 (n + 1)

end A194140

/-! ## A194140.P11635353612865951507

`A194141(n+1)-∑[n+1]`
-/

namespace A194140.P11635353612865951507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194141 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194140.P11635353612865951507

namespace A194140

/-- `A194141(n+1)-∑[n+1]` -/
def P11635353612865951507.Spec : Prop :=
  ∀ n, P11635353612865951507.a n = A194140 (n + 1)

theorem P11635353612865951507.correct : P11635353612865951507.Spec := by
  intro n
  simp only [A194140, Nat.add_sub_cancel, A194140.P11635353612865951507.f1, A194140.P11635353612865951507.a, A194140.P16657759496107479356.f1, A194140.P16657759496107479356.a, A054088, A054088.P12267112223667201366.a, A194141, A194141.P4532975986403058293.f1, A194141.P4532975986403058293.a, A022838, A022838.P2955185450675945792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194140

/-! ## A194140.P8032148439566286649

`∑[A215781(n+1)]+(n+1)²`
-/

namespace A194140.P8032148439566286649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A194140.P8032148439566286649

namespace A194140

/-- `∑[A215781(n+1)]+(n+1)²` -/
def P8032148439566286649.Spec : Prop :=
  ∀ n, P8032148439566286649.a n = A194140 (n + 1)

end A194140

/-! ## A194140.P5332811492985132239

`A003511(2*(n+1))+a(n-1)` with `a(0)=2`
-/

namespace A194140.P5332811492985132239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A003511 (2 * (n + 1)) + a (n - 1)

end

end A194140.P5332811492985132239

namespace A194140

/-- `A003511(2*(n+1))+a(n-1)` -/
def P5332811492985132239.Spec : Prop :=
  ∀ n, P5332811492985132239.a n = A194140 (n + 1)

end A194140

/-! ## A194140.P15237016461965448595

`A246277(2*(n+1))+∑[A180122(n+1)]`
-/

namespace A194140.P15237016461965448595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194140.P15237016461965448595

namespace A194140

/-- `A246277(2*(n+1))+∑[A180122(n+1)]` -/
def P15237016461965448595.Spec : Prop :=
  ∀ n, P15237016461965448595.a n = A194140 (n + 1)

end A194140

/-! ## A194140.P10063997562489931200

`A000027(∑[∑[A007538(n+1)]])`
-/

namespace A194140.P10063997562489931200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194140.P10063997562489931200

namespace A194140

/-- `A000027(∑[∑[A007538(n+1)]])` -/
def P10063997562489931200.Spec : Prop :=
  ∀ n, P10063997562489931200.a n = A194140 (n + 1)

end A194140

/-!
# A194141: Sum{floor(j*(2+sqrt(3))) : 1<=j<=n}; n-th partial sum of Beatty sequence for 2+sqrt(3).

The programs for A194141, the canonical program `A194141.P4532975986403058293` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194141 has offset 1).

The definition of A194141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194141.P1209224557212294105

`∑[comp[floor(n/(sqrt(3)-1))]]`
-/

namespace A194141.P1209224557212294105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (Real.sqrt (3 : ℝ) - 1)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194141.P1209224557212294105

namespace A194141

/-- `∑[comp[floor(n/(sqrt(3)-1))]]` -/
def P1209224557212294105.Spec : Prop :=
  ∀ n, (P1209224557212294105.a n : ℤ) = A194141 (n + 1)

end A194141

/-! ## A194141.P9518262783465747053

`and(∑[floor((sqrt(3)+2)*(n+1))], -1)`
-/

namespace A194141.P9518262783465747053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A194141.P9518262783465747053

namespace A194141

/-- `and(∑[floor((sqrt(3)+2)*(n+1))], -1)` -/
def P9518262783465747053.Spec : Prop :=
  ∀ n, P9518262783465747053.a n = A194141 (n + 1)

end A194141

/-! ## A194141.P13133599427544042591

`or(floor(acot(n)), ∑[floor((sqrt(3)+2)*(n+1))])`
-/

namespace A194141.P13133599427544042591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194141.P13133599427544042591

namespace A194141

/-- `or(floor(acot(n)), ∑[floor((sqrt(3)+2)*(n+1))])` -/
def P13133599427544042591.Spec : Prop :=
  ∀ n, P13133599427544042591.a n = A194141 (n + 1)

end A194141

/-! ## A194141.P16806965336200257953

`a(n-1)+floor((sqrt(3)+2)*(n+1))` with `a(0)=3`
-/

namespace A194141.P16806965336200257953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + ⌊(Real.sqrt (3 : ℝ) + 2) * (n + 1 : ℝ)⌋

end

end A194141.P16806965336200257953

namespace A194141

/-- `a(n-1)+floor((sqrt(3)+2)*(n+1))` -/
def P16806965336200257953.Spec : Prop :=
  ∀ n, P16806965336200257953.a n = A194141 (n + 1)

end A194141

/-! ## A194141.P11123173567172522551

`lcm((-1)^n, ∑[floor((sqrt(3)+2)*(n+1))])`
-/

namespace A194141.P11123173567172522551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194141.P11123173567172522551

namespace A194141

/-- `lcm((-1)^n, ∑[floor((sqrt(3)+2)*(n+1))])` -/
def P11123173567172522551.Spec : Prop :=
  ∀ n, (P11123173567172522551.a n : ℤ) = A194141 (n + 1)

end A194141

/-! ## A194141.P4532975986403058293

`A194140(n+1)+∑[n+1]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A194141

/-- `A194140(n+1)+∑[n+1]` -/
def P4532975986403058293.Spec : Prop :=
  ∀ n, P4532975986403058293.a n = A194141 (n + 1)

theorem P4532975986403058293.correct : P4532975986403058293.Spec := by
  intro n
  simp only [A194141, Nat.add_sub_cancel]

end A194141

/-! ## A194141.P1189977002733237814

`A003512(n+1)+a(n-1)` with `a(0)=3`
-/

namespace A194141.P1189977002733237814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A003512 (n + 1) + a (n - 1)

end

end A194141.P1189977002733237814

namespace A194141

/-- `A003512(n+1)+a(n-1)` -/
def P1189977002733237814.Spec : Prop :=
  ∀ n, P1189977002733237814.a n = A194141 (n + 1)

end A194141

/-! ## A194141.P13937722820287719078

`∑[A198081(n+1)]+(n+1)²`
-/

namespace A194141.P13937722820287719078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A194141.P13937722820287719078

namespace A194141

/-- `∑[A198081(n+1)]+(n+1)²` -/
def P13937722820287719078.Spec : Prop :=
  ∀ n, P13937722820287719078.a n = A194141 (n + 1)

end A194141

/-! ## A194141.P13687299386622722567

`A194106(n+1)+A016789(n)+n²`
-/

namespace A194141.P13687299386622722567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194106 (n + 1) + (A016789 n + (n ^ 2 : ℤ))

end

end A194141.P13687299386622722567

namespace A194141

/-- `A194106(n+1)+A016789(n)+n²` -/
def P13687299386622722567.Spec : Prop :=
  ∀ n, P13687299386622722567.a n = A194141 (n + 1)

end A194141

/-! ## A194141.P14210089529342802253

`∑[A054406(2*(n+1))]-A000217(n+1)`
-/

namespace A194141.P14210089529342802253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000217 (n + 1)

end

end A194141.P14210089529342802253

namespace A194141

/-- `∑[A054406(2*(n+1))]-A000217(n+1)` -/
def P14210089529342802253.Spec : Prop :=
  ∀ n, P14210089529342802253.a n = A194141 (n + 1)

end A194141

/-!
# A194142: a(n) = Sum_{j=1..n} floor(j*(3-sqrt(3))); n-th partial sum of Beatty sequence for 3-sqrt(3).

The programs for A194142, the canonical program `A194142.P2157525427764519074` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194142 has offset 1).

The definition of A194142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194142.P1118742594811479157

`∑[floor((n+1)*(3-sqrt(3)))]`
-/

namespace A194142.P1118742594811479157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (3 - Real.sqrt (3 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194142.P1118742594811479157

namespace A194142

/-- `∑[floor((n+1)*(3-sqrt(3)))]` -/
def P1118742594811479157.Spec : Prop :=
  ∀ n, P1118742594811479157.a n = A194142 (n + 1)

end A194142

/-! ## A194142.P4297516334203553165

`root(∑[A182777(n+1)], 2)²`
-/

namespace A194142.P4297516334203553165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182777 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A194142.P4297516334203553165

namespace A194142

/-- `root(∑[A182777(n+1)], 2)²` -/
def P4297516334203553165.Spec : Prop :=
  ∀ n, P4297516334203553165.a n = (A194142 (n + 1) : ℝ)

end A194142

/-! ## A194142.P2157525427764519074

`∑[A195120(n+1)]+∑[n]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194142

/-- `∑[A195120(n+1)]+∑[n]` -/
def P2157525427764519074.Spec : Prop :=
  ∀ n, P2157525427764519074.a n = A194142 (n + 1)

theorem P2157525427764519074.correct : P2157525427764519074.Spec := by
  intro n
  simp only [A194142, Nat.add_sub_cancel]

end A194142

/-! ## A194142.P5531175157961524938

`2*(n+1)²-∑[A180122(n+1)]`
-/

namespace A194142.P5531175157961524938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194142.P5531175157961524938

namespace A194142

/-- `2*(n+1)²-∑[A180122(n+1)]` -/
def P5531175157961524938.Spec : Prop :=
  ∀ n, P5531175157961524938.a n = A194142 (n + 1)

end A194142

/-! ## A194142.P13863465461532985512

`∑[A016789(n)]-A194106(n+1)`
-/

namespace A194142.P13863465461532985512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A194106 (n + 1)

end

end A194142.P13863465461532985512

namespace A194142

/-- `∑[A016789(n)]-A194106(n+1)` -/
def P13863465461532985512.Spec : Prop :=
  ∀ n, P13863465461532985512.a n = A194142 (n + 1)

end A194142

/-! ## A194142.P11649049112675915869

`∑[A182777(n+1)]%A017128(n)`
-/

namespace A194142.P11649049112675915869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A017128 n)

end

end A194142.P11649049112675915869

namespace A194142

/-- `∑[A182777(n+1)]%A017128(n)` -/
def P11649049112675915869.Spec : Prop :=
  ∀ n, P11649049112675915869.a n = A194142 (n + 1)

end A194142

/-! ## A194142.P15818356838933506281

`gcd(∑[A182777(n+1)], A000038(n))`
-/

namespace A194142.P15818356838933506281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A194142.P15818356838933506281

namespace A194142

/-- `gcd(∑[A182777(n+1)], A000038(n))` -/
def P15818356838933506281.Spec : Prop :=
  ∀ n, (P15818356838933506281.a n : ℤ) = A194142 (n + 1)

end A194142

/-! ## A194142.P2931444533772442016

`lcm(∑[A182777(n+1)], A057077(n))`
-/

namespace A194142.P2931444533772442016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A057077 n)

end

end A194142.P2931444533772442016

namespace A194142

/-- `lcm(∑[A182777(n+1)], A057077(n))` -/
def P2931444533772442016.Spec : Prop :=
  ∀ n, (P2931444533772442016.a n : ℤ) = A194142 (n + 1)

end A194142

/-! ## A194142.P829683328298662192

`or(∑[A182777(n+1)], A000007(n))`
-/

namespace A194142.P829683328298662192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A194142.P829683328298662192

namespace A194142

/-- `or(∑[A182777(n+1)], A000007(n))` -/
def P829683328298662192.Spec : Prop :=
  ∀ n, P829683328298662192.a n = A194142 (n + 1)

end A194142

/-! ## A194142.P5629757150693238572

`or(∑[A182777(n+1)], A130706(n))`
-/

namespace A194142.P5629757150693238572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A130706 n)

end

end A194142.P5629757150693238572

namespace A194142

/-- `or(∑[A182777(n+1)], A130706(n))` -/
def P5629757150693238572.Spec : Prop :=
  ∀ n, P5629757150693238572.a n = A194142 (n + 1)

end A194142

/-! ## A194142.P6628777158758623840

`A007318(C(2, n))*∑[A182777(n+1)]`
-/

namespace A194142.P6628777158758623840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194142.P6628777158758623840

namespace A194142

/-- `A007318(C(2, n))*∑[A182777(n+1)]` -/
def P6628777158758623840.Spec : Prop :=
  ∀ n, P6628777158758623840.a n = A194142 (n + 1)

end A194142

/-! ## A194142.P13810685944939293594

`∑[A182777(n+1)]+A008683(8*n+4)`
-/

namespace A194142.P13810685944939293594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A008683 (8 * n + 4)

end

end A194142.P13810685944939293594

namespace A194142

/-- `∑[A182777(n+1)]+A008683(8*n+4)` -/
def P13810685944939293594.Spec : Prop :=
  ∀ n, P13810685944939293594.a n = A194142 (n + 1)

end A194142

/-! ## A194142.P5105028475888019927

`∑[A182777(n+1)]^A014963(4*n+2)`
-/

namespace A194142.P5105028475888019927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182777 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A194142.P5105028475888019927

namespace A194142

/-- `∑[A182777(n+1)]^A014963(4*n+2)` -/
def P5105028475888019927.Spec : Prop :=
  ∀ n, P5105028475888019927.a n = (A194142 (n + 1) : ℚ)

end A194142

/-! ## A194142.P1611132998139669177

`A000027(∑[A182777(n+1)])`
-/

namespace A194142.P1611132998139669177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194142.P1611132998139669177

namespace A194142

/-- `A000027(∑[A182777(n+1)])` -/
def P1611132998139669177.Spec : Prop :=
  ∀ n, P1611132998139669177.a n = A194142 (n + 1)

end A194142

/-! ## A194142.P14510830109411561925

`A028310(∑[A182777(n+1)])`
-/

namespace A194142.P14510830109411561925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194142.P14510830109411561925

namespace A194142

/-- `A028310(∑[A182777(n+1)])` -/
def P14510830109411561925.Spec : Prop :=
  ∀ n, P14510830109411561925.a n = A194142 (n + 1)

end A194142

/-! ## A194142.P1627033577065076948

`abs(A001489(∑[A182777(n+1)]))`
-/

namespace A194142.P1627033577065076948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A194142.P1627033577065076948

namespace A194142

/-- `abs(A001489(∑[A182777(n+1)]))` -/
def P1627033577065076948.Spec : Prop :=
  ∀ n, P1627033577065076948.a n = A194142 (n + 1)

end A194142

/-!
# A194143: Sum{floor(j*(3+sqrt(3))/2) : 1<=j<=n}; n-th partial sum of Beatty sequence for (3+sqrt(3))/2.

The programs for A194143, the canonical program `A194143.P5634458808628739583` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194143 has offset 1).

The definition of A194143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194143.P10486835864514288972

`∑[comp[floor(n*sqrt(3))]]`
-/

namespace A194143.P10486835864514288972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194143.P10486835864514288972

namespace A194143

/-- `∑[comp[floor(n*sqrt(3))]]` -/
def P10486835864514288972.Spec : Prop :=
  ∀ n, (P10486835864514288972.a n : ℤ) = A194143 (n + 1)

end A194143

/-! ## A194143.P5050442224688744227

`comp[floor(n*sqrt(3))]+a(n-1)` with `a(0)=2`
-/

namespace A194143.P5050442224688744227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + a (n - 1)

end

end A194143.P5050442224688744227

namespace A194143

/-- `comp[floor(n*sqrt(3))]+a(n-1)` -/
def P5050442224688744227.Spec : Prop :=
  ∀ n, (P5050442224688744227.a n : ℤ) = A194143 (n + 1)

end A194143

/-! ## A194143.P5634458808628739583

`∑[A188070(n+1)]+∑[n]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194143

/-- `∑[A188070(n+1)]+∑[n]` -/
def P5634458808628739583.Spec : Prop :=
  ∀ n, P5634458808628739583.a n = A194143 (n + 1)

theorem P5634458808628739583.correct : P5634458808628739583.Spec := by
  intro n
  simp only [A194143, Nat.add_sub_cancel]

end A194143

/-! ## A194143.P6748877621942854069

`2*∑[A054406(n+1)/2]`
-/

namespace A194143.P6748877621942854069
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054406 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194143.P6748877621942854069

namespace A194143

/-- `2*∑[A054406(n+1)/2]` -/
def P6748877621942854069.Spec : Prop :=
  ∀ n, P6748877621942854069.a n = (A194143 (n + 1) : ℚ)

end A194143

/-! ## A194143.P6877476388322792768

`A194117(n+1)+∑[n+1]`
-/

namespace A194143.P6877476388322792768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194117 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194143.P6877476388322792768

namespace A194143

/-- `A194117(n+1)+∑[n+1]` -/
def P6877476388322792768.Spec : Prop :=
  ∀ n, P6877476388322792768.a n = A194143 (n + 1)

end A194143

/-! ## A194143.P15157243142380607647

`∑[n+1]+∑[A003511(n+1)]`
-/

namespace A194143.P15157243142380607647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194143.P15157243142380607647

namespace A194143

/-- `∑[n+1]+∑[A003511(n+1)]` -/
def P15157243142380607647.Spec : Prop :=
  ∀ n, P15157243142380607647.a n = A194143 (n + 1)

end A194143

/-! ## A194143.P288463599726553000

`gcd(∑[A054406(n+1)], A000038(n))`
-/

namespace A194143.P288463599726553000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A194143.P288463599726553000

namespace A194143

/-- `gcd(∑[A054406(n+1)], A000038(n))` -/
def P288463599726553000.Spec : Prop :=
  ∀ n, (P288463599726553000.a n : ℤ) = A194143 (n + 1)

end A194143

/-! ## A194143.P4796358791557513391

`∑[A054406(n+1)]%A000040(n+1)²`
-/

namespace A194143.P4796358791557513391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1) ^ 2)

end

end A194143.P4796358791557513391

namespace A194143

/-- `∑[A054406(n+1)]%A000040(n+1)²` -/
def P4796358791557513391.Spec : Prop :=
  ∀ n, P4796358791557513391.a n = A194143 (n + 1)

end A194143

/-! ## A194143.P7434612769189435989

`∑[A054406(n+1)]*A040001(2*n+1)`
-/

namespace A194143.P7434612769189435989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A040001 (2 * n + 1)

end

end A194143.P7434612769189435989

namespace A194143

/-- `∑[A054406(n+1)]*A040001(2*n+1)` -/
def P7434612769189435989.Spec : Prop :=
  ∀ n, P7434612769189435989.a n = A194143 (n + 1)

end A194143

/-! ## A194143.P15621516916170261300

`∑[A054406(n+1)]%A000292(n+2)`
-/

namespace A194143.P15621516916170261300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000292 (n + 2))

end

end A194143.P15621516916170261300

namespace A194143

/-- `∑[A054406(n+1)]%A000292(n+2)` -/
def P15621516916170261300.Spec : Prop :=
  ∀ n, P15621516916170261300.a n = A194143 (n + 1)

end A194143

/-! ## A194143.P2885003282551717038

`∑[record[A026255(n+2)]]+1`
-/

namespace A194143.P2885003282551717038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026255 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194143.P2885003282551717038

namespace A194143

/-- `∑[record[A026255(n+2)]]+1` -/
def P2885003282551717038.Spec : Prop :=
  ∀ n, P2885003282551717038.a n = A194143 (n + 1)

end A194143

/-! ## A194143.P8026249981475863495

`A000027(∑[A054406(n+1)])`
-/

namespace A194143.P8026249981475863495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194143.P8026249981475863495

namespace A194143

/-- `A000027(∑[A054406(n+1)])` -/
def P8026249981475863495.Spec : Prop :=
  ∀ n, P8026249981475863495.a n = A194143 (n + 1)

end A194143

/-!
# A194144: Sum{floor(j*(-1+sqrt(5))) : 1<=j<=n}; n-th partial sum of Beatty sequence for -1+sqrt(5).

The programs for A194144, the canonical program `A194144.P17823940702748119438` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194144 has offset 1).

The definition of A194144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194144.P7550157837456365204

`∑[floor(2*(n+1)/ϕ)]`
-/

namespace A194144.P7550157837456365204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n + 1 : ℝ) / Real.goldenRatio)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194144.P7550157837456365204

namespace A194144

/-- `∑[floor(2*(n+1)/ϕ)]` -/
def P7550157837456365204.Spec : Prop :=
  ∀ n, P7550157837456365204.a n = A194144 (n + 1)

end A194144

/-! ## A194144.P13811153627964784798

`abs(∑[-ceil(xor(2*n, -2)/ϕ)])`
-/

namespace A194144.P13811153627964784798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(Int.xor (2 * n : ℤ) (-2) : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A194144.P13811153627964784798

namespace A194144

/-- `abs(∑[-ceil(xor(2*n, -2)/ϕ)])` -/
def P13811153627964784798.Spec : Prop :=
  ∀ n, P13811153627964784798.a n = A194144 (n + 1)

end A194144

/-! ## A194144.P7541175431680146876

`round((sqrt(ϕ-1)+sqrt(a(n-1)))²)` with `a(0)=1`
-/

namespace A194144.P7541175431680146876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (Real.goldenRatio - 1) + Real.sqrt (a (n - 1) : ℝ)) ^ 2)

end

end A194144.P7541175431680146876

namespace A194144

/-- `round((sqrt(ϕ-1)+sqrt(a(n-1)))²)` -/
def P7541175431680146876.Spec : Prop :=
  ∀ n, P7541175431680146876.a n = A194144 (n + 1)

end A194144

/-! ## A194144.P18346786632645509359

`floor(a(n-1)+2*(n+1)/ϕ)` with `a(0)=1`
-/

namespace A194144.P18346786632645509359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + 2 * ((n + 1 : ℝ) / Real.goldenRatio)⌋

end

end A194144.P18346786632645509359

namespace A194144

/-- `floor(a(n-1)+2*(n+1)/ϕ)` -/
def P18346786632645509359.Spec : Prop :=
  ∀ n, P18346786632645509359.a n = A194144 (n + 1)

end A194144

/-! ## A194144.P13931939198611126691

`∑[floor((n+1)*sqrt(5))]-C(n+2, 2)`
-/

namespace A194144.P13931939198611126691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose (n + 2) 2 : ℤ)

end

end A194144.P13931939198611126691

namespace A194144

/-- `∑[floor((n+1)*sqrt(5))]-C(n+2, 2)` -/
def P13931939198611126691.Spec : Prop :=
  ∀ n, P13931939198611126691.a n = A194144 (n + 1)

end A194144

/-! ## A194144.P14082432987110367532

`a(n-1)+floor((n+2+n)/ϕ)` with `a(0)=1`
-/

namespace A194144.P14082432987110367532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊(n + 2 + n : ℝ) / Real.goldenRatio⌋

end

end A194144.P14082432987110367532

namespace A194144

/-- `a(n-1)+floor((n+2+n)/ϕ)` -/
def P14082432987110367532.Spec : Prop :=
  ∀ n, P14082432987110367532.a n = A194144 (n + 1)

end A194144

/-! ## A194144.P17823940702748119438

`A194110(n+1)-∑[n+1]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194144

/-- `A194110(n+1)-∑[n+1]` -/
def P17823940702748119438.Spec : Prop :=
  ∀ n, P17823940702748119438.a n = A194144 (n + 1)

theorem P17823940702748119438.correct : P17823940702748119438.Spec := by
  intro n
  simp only [A194144, Nat.add_sub_cancel]

end A194144

/-! ## A194144.P847182143923345569

`A001961(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A194144.P847182143923345569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001961 (n + 1) + a (n - 1)

end

end A194144.P847182143923345569

namespace A194144

/-- `A001961(n+1)+a(n-1)` -/
def P847182143923345569.Spec : Prop :=
  ∀ n, P847182143923345569.a n = A194144 (n + 1)

end A194144

/-! ## A194144.P4645388805201305743

`or(∑[A005206(2*n+1)], char[1])`
-/

namespace A194144.P4645388805201305743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A194144.P4645388805201305743

namespace A194144

/-- `or(∑[A005206(2*n+1)], char[1])` -/
def P4645388805201305743.Spec : Prop :=
  ∀ n, P4645388805201305743.a n = A194144 (n + 1)

end A194144

/-! ## A194144.P1976007249342316534

`(n+1)²-∑[A187329(n+1)]`
-/

namespace A194144.P1976007249342316534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194144.P1976007249342316534

namespace A194144

/-- `(n+1)²-∑[A187329(n+1)]` -/
def P1976007249342316534.Spec : Prop :=
  ∀ n, P1976007249342316534.a n = A194144 (n + 1)

end A194144

/-! ## A194144.P5213636798807786440

`A005206(2*n+1)+∑[A060143(2*n)]`
-/

namespace A194144.P5213636798807786440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194144.P5213636798807786440

namespace A194144

/-- `A005206(2*n+1)+∑[A060143(2*n)]` -/
def P5213636798807786440.Spec : Prop :=
  ∀ n, P5213636798807786440.a n = A194144 (n + 1)

end A194144

/-! ## A194144.P10160641681924786630

`∑[A022342(2*(n+1))]-(n+1)²`
-/

namespace A194144.P10160641681924786630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A194144.P10160641681924786630

namespace A194144

/-- `∑[A022342(2*(n+1))]-(n+1)²` -/
def P10160641681924786630.Spec : Prop :=
  ∀ n, P10160641681924786630.a n = A194144 (n + 1)

end A194144

/-! ## A194144.P16230232963094583051

`A183136(2*(n+1))-∑[A060143(2*n+1)]`
-/

namespace A194144.P16230232963094583051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183136 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194144.P16230232963094583051

namespace A194144

/-- `A183136(2*(n+1))-∑[A060143(2*n+1)]` -/
def P16230232963094583051.Spec : Prop :=
  ∀ n, P16230232963094583051.a n = A194144 (n + 1)

end A194144

/-! ## A194144.P1281359200927187456

`∑[A001961(n+1)]*A000034(2*(n+2))`
-/

namespace A194144.P1281359200927187456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000034 (2 * (n + 2))

end

end A194144.P1281359200927187456

namespace A194144

/-- `∑[A001961(n+1)]*A000034(2*(n+2))` -/
def P1281359200927187456.Spec : Prop :=
  ∀ n, P1281359200927187456.a n = A194144 (n + 1)

end A194144

/-! ## A194144.P3188223450157092312

`A028310(∑[A005206(2*n+1)])`
-/

namespace A194144.P3188223450157092312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194144.P3188223450157092312

namespace A194144

/-- `A028310(∑[A005206(2*n+1)])` -/
def P3188223450157092312.Spec : Prop :=
  ∀ n, P3188223450157092312.a n = A194144 (n + 1)

end A194144

/-!
# A194145: Beatty sequence for -1+sqrt(6), a(n) = floor(n*(-1+sqrt(6))); complement of A194146.

The programs for A194145, the canonical program `A194145.P8325608198081642426` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194145 has offset 1).

The definition of A194145 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((-1+sqrt(6))*(n+1))` (program `A194145.P8325608198081642426`, by `A194145.P8325608198081642426.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A194145.P8325608198081642426

`floor((-1+sqrt(6))*(n+1))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194145

/-- `floor((-1+sqrt(6))*(n+1))` -/
def P8325608198081642426.Spec : Prop :=
  ∀ n, P8325608198081642426.a n = A194145 (n + 1)

theorem P8325608198081642426.correct : P8325608198081642426.Spec := by
  intro n
  simp only [A194145, Nat.add_sub_cancel]

end A194145

/-! ## A194145.P3448033956575133155

`floor((n+1)*(-1+sqrt(6)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A194145.P3448033956575133155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (-1 + Real.sqrt (6 : ℝ))⌋

end

end A194145.P3448033956575133155

namespace A194145

/-- `floor((n+1)*(-1+sqrt(6)))` -/
def P3448033956575133155.Spec : Prop :=
  ∀ n, P3448033956575133155.a n = A194145 (n + 1)

theorem P3448033956575133155.correct : P3448033956575133155.Spec := by
  intro n
  simp only [A194145, Nat.add_sub_cancel, A194145.P3448033956575133155.a, A194145.P8325608198081642426.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A194145

/-! ## A194145.P5928020002378563389

`∑[5%Δ[floor(n*sqrt(6))]]`
-/

namespace A194145.P5928020002378563389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (6 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194145.P5928020002378563389

namespace A194145

/-- `∑[5%Δ[floor(n*sqrt(6))]]` -/
def P5928020002378563389.Spec : Prop :=
  ∀ n, P5928020002378563389.a n = A194145 (n + 1)

end A194145

/-! ## A194145.P5301155137108908677

`∑[A276856(n+1)-1]`
-/

namespace A194145.P5301155137108908677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276856 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194145.P5301155137108908677

namespace A194145

/-- `∑[A276856(n+1)-1]` -/
def P5301155137108908677.Spec : Prop :=
  ∀ n, P5301155137108908677.a n = A194145 (n + 1)

end A194145

/-! ## A194145.P16327926411740099884

`A022840(n+1)-(n+1)`
-/

namespace A194145.P16327926411740099884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1) - (n + 1 : ℤ)

end

end A194145.P16327926411740099884

namespace A194145

/-- `A022840(n+1)-(n+1)` -/
def P16327926411740099884.Spec : Prop :=
  ∀ n, P16327926411740099884.a n = A194145 (n + 1)

end A194145

/-! ## A194145.P17154627426235916181

`A198083(n+1)-(n+2)`
-/

namespace A194145.P17154627426235916181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198083 (n + 1) - (n + 2 : ℤ)

end

end A194145.P17154627426235916181

namespace A194145

/-- `A198083(n+1)-(n+2)` -/
def P17154627426235916181.Spec : Prop :=
  ∀ n, P17154627426235916181.a n = A194145 (n + 1)

end A194145

/-! ## A194145.P16892109575404843167

`∑[A000010(Δ[floor(n*sqrt(6))])]`
-/

namespace A194145.P16892109575404843167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (6 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194145.P16892109575404843167

namespace A194145

/-- `∑[A000010(Δ[floor(n*sqrt(6))])]` -/
def P16892109575404843167.Spec : Prop :=
  ∀ n, P16892109575404843167.a n = A194145 (n + 1)

end A194145

/-! ## A194145.P12557663359265687754

`∑[A000045(Δ[floor(n*sqrt(6))])]`
-/

namespace A194145.P12557663359265687754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (6 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194145.P12557663359265687754

namespace A194145

/-- `∑[A000045(Δ[floor(n*sqrt(6))])]` -/
def P12557663359265687754.Spec : Prop :=
  ∀ n, P12557663359265687754.a n = A194145 (n + 1)

end A194145

/-! ## A194145.P1668121235362836810

`A277645(n+1)-4*(n+1)`
-/

namespace A194145.P1668121235362836810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277645 (n + 1) - (4 * (n + 1) : ℤ)

end

end A194145.P1668121235362836810

namespace A194145

/-- `A277645(n+1)-4*(n+1)` -/
def P1668121235362836810.Spec : Prop :=
  ∀ n, P1668121235362836810.a n = A194145 (n + 1)

end A194145

/-! ## A194145.P11898758519992237507

`A189396(n+1)-A001952(n+1)`
-/

namespace A194145.P11898758519992237507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189396 (n + 1) - A001952 (n + 1)

end

end A194145.P11898758519992237507

namespace A194145

/-- `A189396(n+1)-A001952(n+1)` -/
def P11898758519992237507.Spec : Prop :=
  ∀ n, P11898758519992237507.a n = A194145 (n + 1)

end A194145

/-! ## A194145.P8342779964835295919

`A189388(n+1)-A003512(n+1)`
-/

namespace A194145.P8342779964835295919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189388 (n + 1) - A003512 (n + 1)

end

end A194145.P8342779964835295919

namespace A194145

/-- `A189388(n+1)-A003512(n+1)` -/
def P8342779964835295919.Spec : Prop :=
  ∀ n, P8342779964835295919.a n = A194145 (n + 1)

end A194145

/-! ## A194145.P16704154911952361266

`record[A138236(n+1)]-(n+1)`
-/

namespace A194145.P16704154911952361266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A194145.P16704154911952361266

namespace A194145

/-- `record[A138236(n+1)]-(n+1)` -/
def P16704154911952361266.Spec : Prop :=
  ∀ n, P16704154911952361266.a n = A194145 (n + 1)

end A194145

/-! ## A194145.P7610882466023284403

`A138236(A138235(n+1))-(n+1)`
-/

namespace A194145.P7610882466023284403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138236 (A138235 (n + 1)).toNat - (n + 1 : ℤ)

end

end A194145.P7610882466023284403

namespace A194145

/-- `A138236(A138235(n+1))-(n+1)` -/
def P7610882466023284403.Spec : Prop :=
  ∀ n, P7610882466023284403.a n = A194145 (n + 1)

end A194145

/-! ## A194145.P3665584411554422929

`A277644(2*(n+1))-(n+1)`
-/

namespace A194145.P3665584411554422929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A194145.P3665584411554422929

namespace A194145

/-- `A277644(2*(n+1))-(n+1)` -/
def P3665584411554422929.Spec : Prop :=
  ∀ n, P3665584411554422929.a n = A194145 (n + 1)

end A194145

/-! ## A194145.P13705993762113968035

`A001478(2*n+1)+A184809(2*(n+1))+A001478(n+2)`
-/

namespace A194145.P13705993762113968035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (2 * n + 1) + (A184809 (2 * (n + 1)) + A001478 (n + 2))

end

end A194145.P13705993762113968035

namespace A194145

/-- `A001478(2*n+1)+A184809(2*(n+1))+A001478(n+2)` -/
def P13705993762113968035.Spec : Prop :=
  ∀ n, P13705993762113968035.a n = A194145 (n + 1)

end A194145

/-! ## A194145.P1740757762035631733

`A171974(3*(n+1))-(n+1)`
-/

namespace A194145.P1740757762035631733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171974 (3 * (n + 1)) - (n + 1 : ℤ)

end

end A194145.P1740757762035631733

namespace A194145

/-- `A171974(3*(n+1))-(n+1)` -/
def P1740757762035631733.Spec : Prop :=
  ∀ n, P1740757762035631733.a n = A194145 (n + 1)

end A194145

/-! ## A194145.P5825082169710913012

`A171975(4*(n+1))-(n+1)`
-/

namespace A194145.P5825082169710913012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171975 (4 * (n + 1)) - (n + 1 : ℤ)

end

end A194145.P5825082169710913012

namespace A194145

/-- `A171975(4*(n+1))-(n+1)` -/
def P5825082169710913012.Spec : Prop :=
  ∀ n, P5825082169710913012.a n = A194145 (n + 1)

end A194145

/-!
# A194146: Beatty sequence for (4+sqrt(6))/2; complement of A194145.

The programs for A194146, the canonical program `A194146.P2039339783935275615` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194146 has offset 1).

The definition of A194146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194146.P2039339783935275615

`floor((n+1)*(4+sqrt(6))/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194146

/-- `floor((n+1)*(4+sqrt(6))/2)` -/
def P2039339783935275615.Spec : Prop :=
  ∀ n, P2039339783935275615.a n = A194146 (n + 1)

theorem P2039339783935275615.correct : P2039339783935275615.Spec := by
  intro n
  simp only [A194146, Nat.add_sub_cancel]

end A194146

/-! ## A194146.P3688912649562326004

`A184809(n+1)+1+n`
-/

namespace A194146.P3688912649562326004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184809 (n + 1) + 1 + (n : ℤ)

end

end A194146.P3688912649562326004

namespace A194146

/-- `A184809(n+1)+1+n` -/
def P3688912649562326004.Spec : Prop :=
  ∀ n, P3688912649562326004.a n = A194146 (n + 1)

end A194146

/-! ## A194146.P14350149443066054320

`A277644(n+1)+2*(n+1)`
-/

namespace A194146.P14350149443066054320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (n + 1) + (2 * (n + 1) : ℤ)

end

end A194146.P14350149443066054320

namespace A194146

/-- `A277644(n+1)+2*(n+1)` -/
def P14350149443066054320.Spec : Prop :=
  ∀ n, P14350149443066054320.a n = A194146 (n + 1)

end A194146

/-! ## A194146.P455693574431272071

`A194920(n+1)+A189362(n+1)`
-/

namespace A194146.P455693574431272071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (n + 1) + A189362 (n + 1)

end

end A194146.P455693574431272071

namespace A194146

/-- `A194920(n+1)+A189362(n+1)` -/
def P455693574431272071.Spec : Prop :=
  ∀ n, P455693574431272071.a n = A194146 (n + 1)

end A194146

/-! ## A194146.P8416943337189950902

`ceil((record[A138236(n+1)]+1)/2)+2*n+1`
-/

namespace A194146.P8416943337189950902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℚ) / 2⌉ + (2 * n + 1 : ℤ)

end

end A194146.P8416943337189950902

namespace A194146

/-- `ceil((record[A138236(n+1)]+1)/2)+2*n+1` -/
def P8416943337189950902.Spec : Prop :=
  ∀ n, P8416943337189950902.a n = A194146 (n + 1)

end A194146

/-! ## A194146.P11215369174909503630

`A171975(2*(n+1))+2*(n+1)`
-/

namespace A194146.P11215369174909503630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171975 (2 * (n + 1)) + (2 * (n + 1) : ℤ)

end

end A194146.P11215369174909503630

namespace A194146

/-- `A171975(2*(n+1))+2*(n+1)` -/
def P11215369174909503630.Spec : Prop :=
  ∀ n, P11215369174909503630.a n = A194146 (n + 1)

end A194146

/-! ## A194146.P5570916817517654629

`record[A026741(n+1)]+A277644(n+1)+1`
-/

namespace A194146.P5570916817517654629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A277644 (n + 1) + 1)

end

end A194146.P5570916817517654629

namespace A194146

/-- `record[A026741(n+1)]+A277644(n+1)+1` -/
def P5570916817517654629.Spec : Prop :=
  ∀ n, P5570916817517654629.a n = A194146 (n + 1)

end A194146

/-! ## A194146.P698838968242841569

`A172476(3*(n+1))+2*(n+1)`
-/

namespace A194146.P698838968242841569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (3 * (n + 1)) + (2 * (n + 1) : ℤ)

end

end A194146.P698838968242841569

namespace A194146

/-- `A172476(3*(n+1))+2*(n+1)` -/
def P698838968242841569.Spec : Prop :=
  ∀ n, P698838968242841569.a n = A194146 (n + 1)

end A194146

/-! ## A194146.P10061572773579794449

`Δ[A022784(n+1)+n²]`
-/

namespace A194146.P10061572773579794449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022784 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194146.P10061572773579794449

namespace A194146

/-- `Δ[A022784(n+1)+n²]` -/
def P10061572773579794449.Spec : Prop :=
  ∀ n, P10061572773579794449.a n = A194146 (n + 1)

end A194146

/-! ## A194146.P18053185178597355010

`lt[n*char[A194145(n+1)], n]`
-/

namespace A194146.P18053185178597355010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194145 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A194146.P18053185178597355010

namespace A194146

/-- `lt[n*char[A194145(n+1)], n]` -/
def P18053185178597355010.Spec : Prop :=
  ∀ n, (P18053185178597355010.a n : ℤ) = A194146 (n + 1)

end A194146

/-! ## A194146.P15656397842756148579

`A172476(A277645(n+1))+1+n`
-/

namespace A194146.P15656397842756148579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (A277645 (n + 1)).toNat + 1 + (n : ℤ)

end

end A194146.P15656397842756148579

namespace A194146

/-- `A172476(A277645(n+1))+1+n` -/
def P15656397842756148579.Spec : Prop :=
  ∀ n, P15656397842756148579.a n = A194146 (n + 1)

end A194146

/-!
# A194147: a(n) = Sum_{j=1..n} floor(j*(-1+sqrt(6))); n-th partial sum of Beatty sequence for -1+sqrt(6).

The programs for A194147, the canonical program `A194147.P11761770816087481396` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194147 has offset 1).

The definition of A194147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194147.P14209285480439783524

`∑[abs(n+1-floor((n+1)*sqrt(6)))]`
-/

namespace A194147.P14209285480439783524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - ⌊(n + 1 : ℝ) * Real.sqrt (6 : ℝ)⌋|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194147.P14209285480439783524

namespace A194147

/-- `∑[abs(n+1-floor((n+1)*sqrt(6)))]` -/
def P14209285480439783524.Spec : Prop :=
  ∀ n, P14209285480439783524.a n = A194147 (n + 1)

end A194147

/-! ## A194147.P5282537215175460638

`∑[floor((n+1)*sqrt(6))]-C(n+2, 2)`
-/

namespace A194147.P5282537215175460638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (6 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose (n + 2) 2 : ℤ)

end

end A194147.P5282537215175460638

namespace A194147

/-- `∑[floor((n+1)*sqrt(6))]-C(n+2, 2)` -/
def P5282537215175460638.Spec : Prop :=
  ∀ n, P5282537215175460638.a n = A194147 (n + 1)

end A194147

/-! ## A194147.P18209260605388426763

`2*∑[A194145(n+1)/2]`
-/

namespace A194147.P18209260605388426763
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194145 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194147.P18209260605388426763

namespace A194147

/-- `2*∑[A194145(n+1)/2]` -/
def P18209260605388426763.Spec : Prop :=
  ∀ n, P18209260605388426763.a n = (A194147 (n + 1) : ℚ)

end A194147

/-! ## A194147.P11761770816087481396

`A194137(n+1)-∑[n+1]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194147

/-- `A194137(n+1)-∑[n+1]` -/
def P11761770816087481396.Spec : Prop :=
  ∀ n, P11761770816087481396.a n = A194147 (n + 1)

theorem P11761770816087481396.correct : P11761770816087481396.Spec := by
  intro n
  simp only [A194147, Nat.add_sub_cancel]

end A194147

/-! ## A194147.P14729822876967161067

`∑[A022840(n+1)]-∑[n+1]`
-/

namespace A194147.P14729822876967161067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194147.P14729822876967161067

namespace A194147

/-- `∑[A022840(n+1)]-∑[n+1]` -/
def P14729822876967161067.Spec : Prop :=
  ∀ n, P14729822876967161067.a n = A194147 (n + 1)

end A194147

/-! ## A194147.P16619917703870040731

`∑[∑[A276856(n+1)]-n]-(n+1)`
-/

namespace A194147.P16619917703870040731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276856 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A194147.P16619917703870040731

namespace A194147

/-- `∑[∑[A276856(n+1)]-n]-(n+1)` -/
def P16619917703870040731.Spec : Prop :=
  ∀ n, P16619917703870040731.a n = A194147 (n + 1)

end A194147

/-! ## A194147.P2090716624284960222

`∑[record[A138236(n+1)]]-∑[n+1]`
-/

namespace A194147.P2090716624284960222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138236 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A194147.P2090716624284960222

namespace A194147

/-- `∑[record[A138236(n+1)]]-∑[n+1]` -/
def P2090716624284960222.Spec : Prop :=
  ∀ n, P2090716624284960222.a n = A194147 (n + 1)

end A194147

/-! ## A194147.P15819321036435449277

`∑[A277644(2*(n+1))]-∑[n+1]`
-/

namespace A194147.P15819321036435449277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194147.P15819321036435449277

namespace A194147

/-- `∑[A277644(2*(n+1))]-∑[n+1]` -/
def P15819321036435449277.Spec : Prop :=
  ∀ n, P15819321036435449277.a n = A194147 (n + 1)

end A194147

/-!
# A194148: Sum_{j=1..n} floor(j*(1/2 + sqrt(2))); n-th partial sum of Beatty sequence for 1/2 + sqrt(2).

The programs for A194148, the canonical program `A194148.P6171851851729030861` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194148 has offset 1).

The definition of A194148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194148.P6171851851729030861

`∑[A137803(n+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194148

/-- `∑[A137803(n+1)]` -/
def P6171851851729030861.Spec : Prop :=
  ∀ n, P6171851851729030861.a n = A194148 (n + 1)

theorem P6171851851729030861.correct : P6171851851729030861.Spec := by
  intro n
  simp only [A194148, Nat.add_sub_cancel]

end A194148

/-! ## A194148.P13018647762666248932

`∑[A189459(n+1)-A001952(n+1)]`
-/

namespace A194148.P13018647762666248932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189459 (n + 1) - A001952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194148.P13018647762666248932

namespace A194148

/-- `∑[A189459(n+1)-A001952(n+1)]` -/
def P13018647762666248932.Spec : Prop :=
  ∀ n, P13018647762666248932.a n = A194148 (n + 1)

end A194148

/-! ## A194148.P14017222585709509446

`∑[A137805(A137804(n+1))]`
-/

namespace A194148.P14017222585709509446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (A137804 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194148.P14017222585709509446

namespace A194148

/-- `∑[A137805(A137804(n+1))]` -/
def P14017222585709509446.Spec : Prop :=
  ∀ n, P14017222585709509446.a n = A194148 (n + 1)

end A194148

/-! ## A194148.P9364925821216804243

`∑[A137805(record[A137805(n+1)])]`
-/

namespace A194148.P9364925821216804243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194148.P9364925821216804243

namespace A194148

/-- `∑[A137805(record[A137805(n+1)])]` -/
def P9364925821216804243.Spec : Prop :=
  ∀ n, P9364925821216804243.a n = A194148 (n + 1)

end A194148

/-! ## A194148.P4962900163244234221

`∑[A004526(A198263(n+1)+n)]`
-/

namespace A194148.P4962900163244234221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A198263 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194148.P4962900163244234221

namespace A194148

/-- `∑[A004526(A198263(n+1)+n)]` -/
def P4962900163244234221.Spec : Prop :=
  ∀ n, P4962900163244234221.a n = A194148 (n + 1)

end A194148

/-! ## A194148.P3353824411929151455

`∑[A004526(A087057(2*(n+1))+n)]`
-/

namespace A194148.P3353824411929151455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A087057 (2 * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194148.P3353824411929151455

namespace A194148

/-- `∑[A004526(A087057(2*(n+1))+n)]` -/
def P3353824411929151455.Spec : Prop :=
  ∀ n, P3353824411929151455.a n = A194148 (n + 1)

end A194148

/-! ## A194148.P7616795940455617410

`∑[A004526(A001951(2*(n+1))+n+1)]`
-/

namespace A194148.P7616795940455617410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001951 (2 * (n + 1)) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194148.P7616795940455617410

namespace A194148

/-- `∑[A004526(A001951(2*(n+1))+n+1)]` -/
def P7616795940455617410.Spec : Prop :=
  ∀ n, P7616795940455617410.a n = A194148 (n + 1)

end A194148

/-!
# A194149: Sum_{floor(j*(5-sqrt(3))/2) : 1<=j<=n}; n-th partial sum of Beatty sequence for (5-sqrt(3))/2.

The programs for A194149, the canonical program `A194149.P7917881621638136352` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194149 has offset 1).

The definition of A194149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194149.P7917881621638136352

`∑[A182772(n+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194149

/-- `∑[A182772(n+1)]` -/
def P7917881621638136352.Spec : Prop :=
  ∀ n, P7917881621638136352.a n = A194149 (n + 1)

theorem P7917881621638136352.correct : P7917881621638136352.Spec := by
  intro n
  simp only [A194149, Nat.add_sub_cancel]

end A194149

/-! ## A194149.P5425887800901242659

`∑[∑[3-A245222(n)]]`
-/

namespace A194149.P5425887800901242659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A245222 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194149.P5425887800901242659

namespace A194149

/-- `∑[∑[3-A245222(n)]]` -/
def P5425887800901242659.Spec : Prop :=
  ∀ n, P5425887800901242659.a n = A194149 (n + 1)

end A194149

/-! ## A194149.P194787254511232782

`∑[A074065(n+1)+n+1]`
-/

namespace A194149.P194787254511232782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074065 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194149.P194787254511232782

namespace A194149

/-- `∑[A074065(n+1)+n+1]` -/
def P194787254511232782.Spec : Prop :=
  ∀ n, P194787254511232782.a n = A194149 (n + 1)

end A194149

/-! ## A194149.P9693507756013577094

`∑[record[xor(3, n)]-A054406(n+1)]`
-/

namespace A194149.P9693507756013577094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194149.P9693507756013577094

namespace A194149

/-- `∑[record[xor(3, n)]-A054406(n+1)]` -/
def P9693507756013577094.Spec : Prop :=
  ∀ n, P9693507756013577094.a n = A194149 (n + 1)

end A194149

/-! ## A194149.P15826856094786016824

`∑[3*(n+1)-A188070(n+1)]`
-/

namespace A194149.P15826856094786016824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A188070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194149.P15826856094786016824

namespace A194149

/-- `∑[3*(n+1)-A188070(n+1)]` -/
def P15826856094786016824.Spec : Prop :=
  ∀ n, P15826856094786016824.a n = A194149 (n + 1)

end A194149

/-! ## A194149.P4059125703892440419

`∑[4*n+3]-A194143(n+1)`
-/

namespace A194149.P4059125703892440419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A194143 (n + 1)

end

end A194149.P4059125703892440419

namespace A194149

/-- `∑[4*n+3]-A194143(n+1)` -/
def P4059125703892440419.Spec : Prop :=
  ∀ n, P4059125703892440419.a n = A194149 (n + 1)

end A194149

/-! ## A194149.P18285681737421481953

`∑[comp[A097337(n+1)+2*n+1]+1]`
-/

namespace A194149.P18285681737421481953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (n + 1) + (2 * n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194149.P18285681737421481953

namespace A194149

/-- `∑[comp[A097337(n+1)+2*n+1]+1]` -/
def P18285681737421481953.Spec : Prop :=
  ∀ n, (P18285681737421481953.a n : ℤ) = A194149 (n + 1)

end A194149

/-! ## A194149.P13127843045796306230

`∑[A016789(n)-A003511(n+1)]`
-/

namespace A194149.P13127843045796306230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A003511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194149.P13127843045796306230

namespace A194149

/-- `∑[A016789(n)-A003511(n+1)]` -/
def P13127843045796306230.Spec : Prop :=
  ∀ n, P13127843045796306230.a n = A194149 (n + 1)

end A194149

/-! ## A194149.P821336587270645495

`∑[A004767(n)-A054406(n+1)]`
-/

namespace A194149.P821336587270645495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194149.P821336587270645495

namespace A194149

/-- `∑[A004767(n)-A054406(n+1)]` -/
def P821336587270645495.Spec : Prop :=
  ∀ n, P821336587270645495.a n = A194149 (n + 1)

end A194149

/-! ## A194149.P12904362427360543541

`∑[A016789(n)]-A194117(n+1)`
-/

namespace A194149.P12904362427360543541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A194117 (n + 1)

end

end A194149.P12904362427360543541

namespace A194149

/-- `∑[A016789(n)]-A194117(n+1)` -/
def P12904362427360543541.Spec : Prop :=
  ∀ n, P12904362427360543541.a n = A194149 (n + 1)

end A194149

/-! ## A194149.P484158628861214196

`∑[∑[A080757(A003511(n+1)-1)]]`
-/

namespace A194149.P484158628861214196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 (A003511 (n + 1) - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194149.P484158628861214196

namespace A194149

/-- `∑[∑[A080757(A003511(n+1)-1)]]` -/
def P484158628861214196.Spec : Prop :=
  ∀ n, P484158628861214196.a n = A194149 (n + 1)

end A194149

/-! ## A194149.P9081054029425769027

`∑[A004767(n)-record[A026255(n+1)]]`
-/

namespace A194149.P9081054029425769027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026255 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194149.P9081054029425769027

namespace A194149

/-- `∑[A004767(n)-record[A026255(n+1)]]` -/
def P9081054029425769027.Spec : Prop :=
  ∀ n, P9081054029425769027.a n = A194149 (n + 1)

end A194149

/-! ## A194149.P1455993298161407732

`∑[record[A182772(A152271(n))]]`
-/

namespace A194149.P1455993298161407732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182772 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194149.P1455993298161407732

namespace A194149

/-- `∑[record[A182772(A152271(n))]]` -/
def P1455993298161407732.Spec : Prop :=
  ∀ n, P1455993298161407732.a n = A194149 (n + 1)

end A194149

/-! ## A194149.P9782043441652258516

`∑[A004767(n)-(A194979(A184007(n+1))+n)]`
-/

namespace A194149.P9782043441652258516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - (A194979 (A184007 (n + 1)).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194149.P9782043441652258516

namespace A194149

/-- `∑[A004767(n)-(A194979(A184007(n+1))+n)]` -/
def P9782043441652258516.Spec : Prop :=
  ∀ n, P9782043441652258516.a n = A194149 (n + 1)

end A194149

/-! ## A194149.P18309200644837103063

`∑[A004767(n)-(A194979(A184653(n+1))+n)]`
-/

namespace A194149.P18309200644837103063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - (A194979 (A184653 (n + 1)).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194149.P18309200644837103063

namespace A194149

/-- `∑[A004767(n)-(A194979(A184653(n+1))+n)]` -/
def P18309200644837103063.Spec : Prop :=
  ∀ n, P18309200644837103063.a n = A194149 (n + 1)

end A194149

/-! ## A194149.P17518848088806634610

`∑[record[A182772(A051340(n))]]`
-/

namespace A194149.P17518848088806634610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182772 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194149.P17518848088806634610

namespace A194149

/-- `∑[record[A182772(A051340(n))]]` -/
def P17518848088806634610.Spec : Prop :=
  ∀ n, P17518848088806634610.a n = A194149 (n + 1)

end A194149

/-!
# A194150: a(n) = Sum_{j=1..n} floor(j*(3+sqrt(5))); n-th partial sum of Beatty sequence for 3+sqrt(5).

The programs for A194150, the canonical program `A194150.P5049106201563811675` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194150 has offset 1).

The definition of A194150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194150.P2976655452524749278

`∑[comp[floor(2*n/ϕ)]]`
-/

namespace A194150.P2976655452524749278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℝ) / Real.goldenRatio)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194150.P2976655452524749278

namespace A194150

/-- `∑[comp[floor(2*n/ϕ)]]` -/
def P2976655452524749278.Spec : Prop :=
  ∀ n, (P2976655452524749278.a n : ℤ) = A194150 (n + 1)

end A194150

/-! ## A194150.P4354919928322538495

`comp[floor(2*n/ϕ)]+a(n-1)` with `a(0)=5`
-/

namespace A194150.P4354919928322538495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℝ) / Real.goldenRatio)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + a (n - 1)

end

end A194150.P4354919928322538495

namespace A194150

/-- `comp[floor(2*n/ϕ)]+a(n-1)` -/
def P4354919928322538495.Spec : Prop :=
  ∀ n, (P4354919928322538495.a n : ℤ) = A194150 (n + 1)

end A194150

/-! ## A194150.P2833443896434718148

`C(2, n+2)!*∑[floor((sqrt(5)+3)*(n+1))]`
-/

namespace A194150.P2833443896434718148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (5 : ℝ) + 3) * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose 2 (n + 2)) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194150.P2833443896434718148

namespace A194150

/-- `C(2, n+2)!*∑[floor((sqrt(5)+3)*(n+1))]` -/
def P2833443896434718148.Spec : Prop :=
  ∀ n, P2833443896434718148.a n = A194150 (n + 1)

end A194150

/-! ## A194150.P9677565322244294696

`lcm((2*n-1)%2, ∑[floor((sqrt(5)+3)*(n+1))])`
-/

namespace A194150.P9677565322244294696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (5 : ℝ) + 3) * (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod ((2 * n : ℤ) - 1) 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194150.P9677565322244294696

namespace A194150

/-- `lcm((2*n-1)%2, ∑[floor((sqrt(5)+3)*(n+1))])` -/
def P9677565322244294696.Spec : Prop :=
  ∀ n, (P9677565322244294696.a n : ℤ) = A194150 (n + 1)

end A194150

/-! ## A194150.P12685410665268591209

`2*∑[A001962(n+1)/2]`
-/

namespace A194150.P12685410665268591209
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001962 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194150.P12685410665268591209

namespace A194150

/-- `2*∑[A001962(n+1)/2]` -/
def P12685410665268591209.Spec : Prop :=
  ∀ n, P12685410665268591209.a n = (A194150 (n + 1) : ℚ)

end A194150

/-! ## A194150.P5049106201563811675

`∑[A003622(2*(n+1))]+1+n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194150

/-- `∑[A003622(2*(n+1))]+1+n` -/
def P5049106201563811675.Spec : Prop :=
  ∀ n, P5049106201563811675.a n = A194150 (n + 1)

theorem P5049106201563811675.correct : P5049106201563811675.Spec := by
  intro n
  simp only [A194150, Nat.add_sub_cancel]

end A194150

/-! ## A194150.P5011286369468055620

`∑[A001961(n+1)]+∑[4*(n+1)]`
-/

namespace A194150.P5011286369468055620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194150.P5011286369468055620

namespace A194150

/-- `∑[A001961(n+1)]+∑[4*(n+1)]` -/
def P5011286369468055620.Spec : Prop :=
  ∀ n, P5011286369468055620.a n = A194150 (n + 1)

end A194150

/-! ## A194150.P8581902567475431308

`lcm(∑[A001962(n+1)], A020985(n))`
-/

namespace A194150.P8581902567475431308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A020985 n)

end

end A194150.P8581902567475431308

namespace A194150

/-- `lcm(∑[A001962(n+1)], A020985(n))` -/
def P8581902567475431308.Spec : Prop :=
  ∀ n, (P8581902567475431308.a n : ℤ) = A194150 (n + 1)

end A194150

/-! ## A194150.P7797624836902833525

`or(∑[A001962(n+1)], A000007(n))`
-/

namespace A194150.P7797624836902833525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A194150.P7797624836902833525

namespace A194150

/-- `or(∑[A001962(n+1)], A000007(n))` -/
def P7797624836902833525.Spec : Prop :=
  ∀ n, P7797624836902833525.a n = A194150 (n + 1)

end A194150

/-! ## A194150.P11564749799642620871

`∑[A001962(n+1)]%A023060(n+1)`
-/

namespace A194150.P11564749799642620871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A023060 (n + 1))

end

end A194150.P11564749799642620871

namespace A194150

/-- `∑[A001962(n+1)]%A023060(n+1)` -/
def P11564749799642620871.Spec : Prop :=
  ∀ n, P11564749799642620871.a n = A194150 (n + 1)

end A194150

/-! ## A194150.P11833027969678450294

`A007318(C(2, n))*∑[A001962(n+1)]`
-/

namespace A194150.P11833027969678450294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194150.P11833027969678450294

namespace A194150

/-- `A007318(C(2, n))*∑[A001962(n+1)]` -/
def P11833027969678450294.Spec : Prop :=
  ∀ n, P11833027969678450294.a n = A194150 (n + 1)

end A194150

/-! ## A194150.P1533957890765136511

`∑[A054770(2*(n+1))]-(n+1)²`
-/

namespace A194150.P1533957890765136511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054770 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A194150.P1533957890765136511

namespace A194150

/-- `∑[A054770(2*(n+1))]-(n+1)²` -/
def P1533957890765136511.Spec : Prop :=
  ∀ n, P1533957890765136511.a n = A194150 (n + 1)

end A194150

/-! ## A194150.P16414040905662063046

`A000027(∑[A001962(n+1)])`
-/

namespace A194150.P16414040905662063046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194150.P16414040905662063046

namespace A194150

/-- `A000027(∑[A001962(n+1)])` -/
def P16414040905662063046.Spec : Prop :=
  ∀ n, P16414040905662063046.a n = A194150 (n + 1)

end A194150

/-! ## A194150.P9547870198684482037

`A000027(∑[A001950(2*(n+1))])`
-/

namespace A194150.P9547870198684482037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194150.P9547870198684482037

namespace A194150

/-- `A000027(∑[A001950(2*(n+1))])` -/
def P9547870198684482037.Spec : Prop :=
  ∀ n, P9547870198684482037.a n = A194150 (n + 1)

end A194150

/-! ## A194150.P5933826146463716159

`A023612(2*n+1)-∑[A023612(2*n)]`
-/

namespace A194150.P5933826146463716159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023612 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023612 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194150.P5933826146463716159

namespace A194150

/-- `A023612(2*n+1)-∑[A023612(2*n)]` -/
def P5933826146463716159.Spec : Prop :=
  ∀ n, P5933826146463716159.a n = A194150 (n + 1)

end A194150

/-! ## A194150.P8344639613393654613

`∑[A001950(2*(n+1))]%A206121(n+1)`
-/

namespace A194150.P8344639613393654613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A206121 (n + 1))

end

end A194150.P8344639613393654613

namespace A194150

/-- `∑[A001950(2*(n+1))]%A206121(n+1)` -/
def P8344639613393654613.Spec : Prop :=
  ∀ n, P8344639613393654613.a n = A194150 (n + 1)

end A194150

/-! ## A194150.P2588706003336573800

`A007318(∑[n])*∑[A001962(n+1)]`
-/

namespace A194150.P2588706003336573800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A194150.P2588706003336573800

namespace A194150

/-- `A007318(∑[n])*∑[A001962(n+1)]` -/
def P2588706003336573800.Spec : Prop :=
  ∀ n, P2588706003336573800.a n = A194150 (n + 1)

end A194150

/-!
# A194151: Beatty sequence for (1/2)*sqrt(5); complement of A194152.

The programs for A194151, the canonical program `A194151.P5431600877886687202` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194151 has offset 1).

The definition of A194151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194151.P15185005525647877437

`floor((n+1)/cos(acot(2)))`
-/

namespace A194151.P15185005525647877437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.cos (SequenceMachineLib.acot (2 : ℝ))⌋

end

end A194151.P15185005525647877437

namespace A194151

/-- `floor((n+1)/cos(acot(2)))` -/
def P15185005525647877437.Spec : Prop :=
  ∀ n, P15185005525647877437.a n = A194151 (n + 1)

end A194151

/-! ## A194151.P5417319954861173869

`floor((n+1)*cosh(log(ϕ)))`
-/

namespace A194151.P5417319954861173869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.cosh (Real.log Real.goldenRatio)⌋

end

end A194151.P5417319954861173869

namespace A194151

/-- `floor((n+1)*cosh(log(ϕ)))` -/
def P5417319954861173869.Spec : Prop :=
  ∀ n, P5417319954861173869.a n = A194151 (n + 1)

end A194151

/-! ## A194151.P10090303089925274606

`floor((n+1)/2*sqrt(5))`
-/

namespace A194151.P10090303089925274606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℚ) / 2 : ℝ) * Real.sqrt (5 : ℝ)⌋

end

end A194151.P10090303089925274606

namespace A194151

/-- `floor((n+1)/2*sqrt(5))` -/
def P10090303089925274606.Spec : Prop :=
  ∀ n, P10090303089925274606.a n = A194151 (n + 1)

end A194151

/-! ## A194151.P15477560690736924916

`round(n/2-xor(n, -1)/ϕ)`
-/

namespace A194151.P15477560690736924916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 2 : ℝ) - (Int.xor (n : ℤ) (-1) : ℝ) / Real.goldenRatio)

end

end A194151.P15477560690736924916

namespace A194151

/-- `round(n/2-xor(n, -1)/ϕ)` -/
def P15477560690736924916.Spec : Prop :=
  ∀ n, P15477560690736924916.a n = A194151 (n + 1)

end A194151

/-! ## A194151.P5431600877886687202

`ceil(A190511(n+1)/2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194151

/-- `ceil(A190511(n+1)/2)` -/
def P5431600877886687202.Spec : Prop :=
  ∀ n, P5431600877886687202.a n = A194151 (n + 1)

theorem P5431600877886687202.correct : P5431600877886687202.Spec := by
  intro n
  simp only [A194151, Nat.add_sub_cancel]

end A194151

/-! ## A194151.P8243150665030196571

`comp[A004976(2*n)+n]`
-/

namespace A194151.P8243150665030196571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (2 * n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A194151.P8243150665030196571

namespace A194151

/-- `comp[A004976(2*n)+n]` -/
def P8243150665030196571.Spec : Prop :=
  ∀ n, (P8243150665030196571.a n : ℤ) = A194151 (n + 1)

end A194151

/-! ## A194151.P1134065023434959093

`comp[A194152(n+1)-1]+1`
-/

namespace A194151.P1134065023434959093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194152 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A194151.P1134065023434959093

namespace A194151

/-- `comp[A194152(n+1)-1]+1` -/
def P1134065023434959093.Spec : Prop :=
  ∀ n, (P1134065023434959093.a n : ℤ) = A194151 (n + 1)

end A194151

/-! ## A194151.P7960482367551093143

`ceil((A001961(n+1)+n)/2)`
-/

namespace A194151.P7960482367551093143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001961 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A194151.P7960482367551093143

namespace A194151

/-- `ceil((A001961(n+1)+n)/2)` -/
def P7960482367551093143.Spec : Prop :=
  ∀ n, P7960482367551093143.a n = A194151 (n + 1)

end A194151

/-! ## A194151.P4248218197072848114

`A189460(n+1)-A001950(n+1)`
-/

namespace A194151.P4248218197072848114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189460 (n + 1) - A001950 (n + 1)

end

end A194151.P4248218197072848114

namespace A194151

/-- `A189460(n+1)-A001950(n+1)` -/
def P4248218197072848114.Spec : Prop :=
  ∀ n, P4248218197072848114.a n = A194151 (n + 1)

end A194151

/-! ## A194151.P12597057333493862733

`∪[A022839(n+1), A184586(n+1)]`
-/

namespace A194151.P12597057333493862733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A194151.P12597057333493862733

namespace A194151

/-- `∪[A022839(n+1), A184586(n+1)]` -/
def P12597057333493862733.Spec : Prop :=
  ∀ n, (P12597057333493862733.a n : ℤ) = A194151 (n + 1)

end A194151

/-! ## A194151.P12017709873754952993

`A058066(n+1)-(n+1)`
-/

namespace A194151.P12017709873754952993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058066 (n + 1) - (n + 1 : ℤ)

end

end A194151.P12017709873754952993

namespace A194151

/-- `A058066(n+1)-(n+1)` -/
def P12017709873754952993.Spec : Prop :=
  ∀ n, P12017709873754952993.a n = A194151 (n + 1)

end A194151

/-! ## A194151.P670987776231831820

`A065033(A300763(n+1))+n`
-/

namespace A194151.P670987776231831820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A300763 (n + 1)).toNat + (n : ℤ)

end

end A194151.P670987776231831820

namespace A194151

/-- `A065033(A300763(n+1))+n` -/
def P670987776231831820.Spec : Prop :=
  ∀ n, P670987776231831820.a n = A194151 (n + 1)

end A194151

/-! ## A194151.P10271491050654386689

`2*n+1-A004526(A187330(n+1))`
-/

namespace A194151.P10271491050654386689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A004526 (A187330 (n + 1)).toNat

end

end A194151.P10271491050654386689

namespace A194151

/-- `2*n+1-A004526(A187330(n+1))` -/
def P10271491050654386689.Spec : Prop :=
  ∀ n, P10271491050654386689.a n = A194151 (n + 1)

end A194151

/-! ## A194151.P16426465012777800593

`A110654(A022839(n+1)-1)`
-/

namespace A194151.P16426465012777800593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A022839 (n + 1) - 1).toNat

end

end A194151.P16426465012777800593

namespace A194151

/-- `A110654(A022839(n+1)-1)` -/
def P16426465012777800593.Spec : Prop :=
  ∀ n, P16426465012777800593.a n = A194151 (n + 1)

end A194151

/-! ## A194151.P4896157618132858451

`A008619(A022839(n+1)-2)`
-/

namespace A194151.P4896157618132858451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A022839 (n + 1) - 2).toNat

end

end A194151.P4896157618132858451

namespace A194151

/-- `A008619(A022839(n+1)-2)` -/
def P4896157618132858451.Spec : Prop :=
  ∀ n, P4896157618132858451.a n = A194151 (n + 1)

end A194151

/-! ## A194151.P15224015180811621324

`A110654(A005206(2*n+1)+n)`
-/

namespace A194151.P15224015180811621324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A005206 (2 * n + 1) + (n : ℤ)).toNat

end

end A194151.P15224015180811621324

namespace A194151

/-- `A110654(A005206(2*n+1)+n)` -/
def P15224015180811621324.Spec : Prop :=
  ∀ n, P15224015180811621324.a n = A194151 (n + 1)

end A194151

/-! ## A194151.P14564984961099641109

`A110654(A005378(2*n+1)+n)`
-/

namespace A194151.P14564984961099641109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A005378 (2 * n + 1) + (n : ℤ)).toNat

end

end A194151.P14564984961099641109

namespace A194151

/-- `A110654(A005378(2*n+1)+n)` -/
def P14564984961099641109.Spec : Prop :=
  ∀ n, P14564984961099641109.a n = A194151 (n + 1)

end A194151

/-! ## A194151.P3116216630953898545

`A110654(A276854(n+1)-A266977(2*n))`
-/

namespace A194151.P3116216630953898545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A276854 (n + 1) - A266977 (2 * n)).toNat

end

end A194151.P3116216630953898545

namespace A194151

/-- `A110654(A276854(n+1)-A266977(2*n))` -/
def P3116216630953898545.Spec : Prop :=
  ∀ n, P3116216630953898545.a n = A194151 (n + 1)

end A194151

/-! ## A194151.P10918639053827627232

`A004526(floor(2*(n+1)/ϕ)+n+1)`
-/

namespace A194151.P10918639053827627232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (⌊(2 * (n + 1) : ℝ) / Real.goldenRatio⌋ + (n + 1 : ℤ)).toNat

end

end A194151.P10918639053827627232

namespace A194151

/-- `A004526(floor(2*(n+1)/ϕ)+n+1)` -/
def P10918639053827627232.Spec : Prop :=
  ∀ n, P10918639053827627232.a n = A194151 (n + 1)

end A194151

/-!
# A194152: Beatty sequence for 5+2*sqrt(5); complement of A194151.

The programs for A194152, the canonical program `A194152.P720401562078837155` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194152 has offset 1).

The definition of A194152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194152.P18085160682619173947

`floor((n+1)*(5+2*sqrt(5)))`
-/

namespace A194152.P18085160682619173947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (5 + 2 * Real.sqrt (5 : ℝ))⌋

end

end A194152.P18085160682619173947

namespace A194152

/-- `floor((n+1)*(5+2*sqrt(5)))` -/
def P18085160682619173947.Spec : Prop :=
  ∀ n, P18085160682619173947.a n = A194152 (n + 1)

end A194152

/-! ## A194152.P720401562078837155

`5*(n+1)+A022839(2*(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194152

/-- `5*(n+1)+A022839(2*(n+1))` -/
def P720401562078837155.Spec : Prop :=
  ∀ n, P720401562078837155.a n = A194152 (n + 1)

theorem P720401562078837155.correct : P720401562078837155.Spec := by
  intro n
  simp only [A194152, Nat.add_sub_cancel]

end A194152

/-! ## A194152.P16486779855202247602

`A017509(n)-A189935(n+1)`
-/

namespace A194152.P16486779855202247602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n - A189935 (n + 1)

end

end A194152.P16486779855202247602

namespace A194152

/-- `A017509(n)-A189935(n+1)` -/
def P16486779855202247602.Spec : Prop :=
  ∀ n, P16486779855202247602.a n = A194152 (n + 1)

end A194152

/-! ## A194152.P3484500844667468178

`A190508(n+1)+A190248(n+1)`
-/

namespace A194152.P3484500844667468178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190508 (n + 1) + A190248 (n + 1)

end

end A194152.P3484500844667468178

namespace A194152

/-- `A190508(n+1)+A190248(n+1)` -/
def P3484500844667468178.Spec : Prop :=
  ∀ n, P3484500844667468178.a n = A194152 (n + 1)

end A194152

/-! ## A194152.P8684262467510840025

`A321371(n+1)-A001962(n+1)`
-/

namespace A194152.P8684262467510840025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321371 (n + 1) - A001962 (n + 1)

end

end A194152.P8684262467510840025

namespace A194152

/-- `A321371(n+1)-A001962(n+1)` -/
def P8684262467510840025.Spec : Prop :=
  ∀ n, P8684262467510840025.a n = A194152 (n + 1)

theorem P8684262467510840025.correct : P8684262467510840025.Spec := by
  intro n
  simp only [A194152, Nat.add_sub_cancel, A194152.P8684262467510840025.a, A194152.P720401562078837155.a, A001962, A001962.P17556668907359697489.a, A022839, A022839.P1029373569643495419.a, A321371, A321371.P7279978321700670498.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194152

/-! ## A194152.P10794309661298843258

`A003622(4*(n+1))-n`
-/

namespace A194152.P10794309661298843258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (4 * (n + 1)) - (n : ℤ)

end

end A194152.P10794309661298843258

namespace A194152

/-- `A003622(4*(n+1))-n` -/
def P10794309661298843258.Spec : Prop :=
  ∀ n, P10794309661298843258.a n = A194152 (n + 1)

end A194152

/-! ## A194152.P12578279094794492688

`A001962(2*(n+1))-(n+1)`
-/

namespace A194152.P12578279094794492688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A194152.P12578279094794492688

namespace A194152

/-- `A001962(2*(n+1))-(n+1)` -/
def P12578279094794492688.Spec : Prop :=
  ∀ n, P12578279094794492688.a n = A194152 (n + 1)

end A194152

/-! ## A194152.P11096554255496978175

`A001962(n+2+n)-n-1`
-/

namespace A194152.P11096554255496978175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (n + 2 + n) - (n : ℤ) - 1

end

end A194152.P11096554255496978175

namespace A194152

/-- `A001962(n+2+n)-n-1` -/
def P11096554255496978175.Spec : Prop :=
  ∀ n, P11096554255496978175.a n = A194152 (n + 1)

end A194152

/-! ## A194152.P14031414299611272912

`A190511(2*(n+1))+5*n+6`
-/

namespace A194152.P14031414299611272912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190511 (2 * (n + 1)) + (5 * n + 6 : ℤ)

end

end A194152.P14031414299611272912

namespace A194152

/-- `A190511(2*(n+1))+5*n+6` -/
def P14031414299611272912.Spec : Prop :=
  ∀ n, P14031414299611272912.a n = A194152 (n + 1)

theorem P14031414299611272912.correct : P14031414299611272912.Spec := by
  intro n
  simp only [A194152, Nat.add_sub_cancel, A194152.P14031414299611272912.a, A194152.P720401562078837155.a, A022839, A022839.P1029373569643495419.a, A190511, A190511.P10122857199414912232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194152

/-! ## A194152.P5403980819822374306

`8*n+7+A001961(2*(n+1))-n`
-/

namespace A194152.P5403980819822374306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 7 : ℤ) + (A001961 (2 * (n + 1)) - (n : ℤ))

end

end A194152.P5403980819822374306

namespace A194152

/-- `8*n+7+A001961(2*(n+1))-n` -/
def P5403980819822374306.Spec : Prop :=
  ∀ n, P5403980819822374306.a n = A194152 (n + 1)

end A194152

/-! ## A194152.P1130929009167880560

`A190508(2*(n+1))-A356220(2*(n+1))`
-/

namespace A194152.P1130929009167880560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190508 (2 * (n + 1)) - A356220 (2 * (n + 1))

end

end A194152.P1130929009167880560

namespace A194152

/-- `A190508(2*(n+1))-A356220(2*(n+1))` -/
def P1130929009167880560.Spec : Prop :=
  ∀ n, P1130929009167880560.a n = A194152 (n + 1)

end A194152

/-! ## A194152.P9581048695191164416

`A168199(2*n+1)+A186500(2*(n+1))+1`
-/

namespace A194152.P9581048695191164416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168199 (2 * n + 1) + (A186500 (2 * (n + 1)) + 1)

end

end A194152.P9581048695191164416

namespace A194152

/-- `A168199(2*n+1)+A186500(2*(n+1))+1` -/
def P9581048695191164416.Spec : Prop :=
  ∀ n, P9581048695191164416.a n = A194152 (n + 1)

end A194152

/-! ## A194152.P7489869742143893460

`A189378(2*(n+1))-A003623(2*(n+1))/2`
-/

namespace A194152.P7489869742143893460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189378 (2 * (n + 1)) : ℚ) - (A003623 (2 * (n + 1)) : ℚ) / 2

end

end A194152.P7489869742143893460

namespace A194152

/-- `A189378(2*(n+1))-A003623(2*(n+1))/2` -/
def P7489869742143893460.Spec : Prop :=
  ∀ n, P7489869742143893460.a n = (A194152 (n + 1) : ℚ)

end A194152

/-! ## A194152.P5533803124677815134

`A004958(2*n+1)+A276866(2*(n+1))+n`
-/

namespace A194152.P5533803124677815134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 (2 * n + 1) + (A276866 (2 * (n + 1)) + (n : ℤ))

end

end A194152.P5533803124677815134

namespace A194152

/-- `A004958(2*n+1)+A276866(2*(n+1))+n` -/
def P5533803124677815134.Spec : Prop :=
  ∀ n, P5533803124677815134.a n = A194152 (n + 1)

end A194152

/-! ## A194152.P8643602338418438399

`A001950(2*(n+1))+A189379(2*(n+1))-n`
-/

namespace A194152.P8643602338418438399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (2 * (n + 1)) + (A189379 (2 * (n + 1)) - (n : ℤ))

end

end A194152.P8643602338418438399

namespace A194152

/-- `A001950(2*(n+1))+A189379(2*(n+1))-n` -/
def P8643602338418438399.Spec : Prop :=
  ∀ n, P8643602338418438399.a n = A194152 (n + 1)

end A194152

/-! ## A194152.P16176189462729597311

`A004958(2*(n+1))+n`
-/

namespace A194152.P16176189462729597311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 (2 * (n + 1)) + (n : ℤ)

end

end A194152.P16176189462729597311

namespace A194152

/-- `A004958(2*(n+1))+n` -/
def P16176189462729597311.Spec : Prop :=
  ∀ n, P16176189462729597311.a n = A194152 (n + 1)

end A194152

/-! ## A194152.P15255642578847206268

`∑[Δ[A004976(2*n)]+1]`
-/

namespace A194152.P15255642578847206268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194152.P15255642578847206268

namespace A194152

/-- `∑[Δ[A004976(2*n)]+1]` -/
def P15255642578847206268.Spec : Prop :=
  ∀ n, P15255642578847206268.a n = A194152 (n + 1)

end A194152

/-! ## A194152.P15929382438258265452

`A004976(2*(n+1))+n+1`
-/

namespace A194152.P15929382438258265452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A194152.P15929382438258265452

namespace A194152

/-- `A004976(2*(n+1))+n+1` -/
def P15929382438258265452.Spec : Prop :=
  ∀ n, P15929382438258265452.a n = A194152 (n + 1)

end A194152

/-! ## A194152.P17004178416338813842

`A001950(4*(n+1))-(n+1)`
-/

namespace A194152.P17004178416338813842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (4 * (n + 1)) - (n + 1 : ℤ)

end

end A194152.P17004178416338813842

namespace A194152

/-- `A001950(4*(n+1))-(n+1)` -/
def P17004178416338813842.Spec : Prop :=
  ∀ n, P17004178416338813842.a n = A194152 (n + 1)

end A194152

/-! ## A194152.P15560981177821954647

`A001950(A004767(n)+1)-1-n`
-/

namespace A194152.P15560981177821954647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A004767 n + 1).toNat - 1 - (n : ℤ)

end

end A194152.P15560981177821954647

namespace A194152

/-- `A001950(A004767(n)+1)-1-n` -/
def P15560981177821954647.Spec : Prop :=
  ∀ n, P15560981177821954647.a n = A194152 (n + 1)

end A194152

/-!
# A194153: a(n) = Sum_{j=1..n} floor(j*(sqrt(5))/2); n-th partial sum of Beatty sequence for (sqrt(5))/2.

The programs for A194153, the canonical program `A194153.P3430387214408108044` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194153 has offset 1).

The definition of A194153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194153.P9795491153326470534

`∑[floor((n+1)/2*sqrt(5))]`
-/

namespace A194153.P9795491153326470534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℚ) / 2 : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194153.P9795491153326470534

namespace A194153

/-- `∑[floor((n+1)/2*sqrt(5))]` -/
def P9795491153326470534.Spec : Prop :=
  ∀ n, P9795491153326470534.a n = A194153 (n + 1)

end A194153

/-! ## A194153.P3758565239960173422

`abs(∑[floor((n+1)/cos(acot(2)))])`
-/

namespace A194153.P3758565239960173422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.cos (SequenceMachineLib.acot (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A194153.P3758565239960173422

namespace A194153

/-- `abs(∑[floor((n+1)/cos(acot(2)))])` -/
def P3758565239960173422.Spec : Prop :=
  ∀ n, P3758565239960173422.a n = A194153 (n + 1)

end A194153

/-! ## A194153.P2668486683396716673

`-∑[-floor((n+1)/cos(acot(2)))]`
-/

namespace A194153.P2668486683396716673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(n + 1 : ℝ) / Real.cos (SequenceMachineLib.acot (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194153.P2668486683396716673

namespace A194153

/-- `-∑[-floor((n+1)/cos(acot(2)))]` -/
def P2668486683396716673.Spec : Prop :=
  ∀ n, P2668486683396716673.a n = A194153 (n + 1)

end A194153

/-! ## A194153.P3430387214408108044

`A194151(n+1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A194153

/-- `A194151(n+1)+a(n-1)` -/
def P3430387214408108044.Spec : Prop :=
  ∀ n, P3430387214408108044.a n = A194153 (n + 1)

theorem P3430387214408108044.correct : P3430387214408108044.Spec := by
  intro n
  simp only [A194153, Nat.add_sub_cancel]

end A194153

/-! ## A194153.P573976925449350867

`∑[A194151(n+1)]%A016792(n)`
-/

namespace A194153.P573976925449350867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A016792 n)

end

end A194153.P573976925449350867

namespace A194153

/-- `∑[A194151(n+1)]%A016792(n)` -/
def P573976925449350867.Spec : Prop :=
  ∀ n, P573976925449350867.a n = A194153 (n + 1)

end A194153

/-! ## A194153.P6324136583935462779

`gcd(∑[A194151(n+1)], A000038(n))`
-/

namespace A194153.P6324136583935462779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194151 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A194153.P6324136583935462779

namespace A194153

/-- `gcd(∑[A194151(n+1)], A000038(n))` -/
def P6324136583935462779.Spec : Prop :=
  ∀ n, (P6324136583935462779.a n : ℤ) = A194153 (n + 1)

end A194153

/-! ## A194153.P12760173468631525413

`A000027(∑[A194151(n+1)])`
-/

namespace A194153.P12760173468631525413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194153.P12760173468631525413

namespace A194153

/-- `A000027(∑[A194151(n+1)])` -/
def P12760173468631525413.Spec : Prop :=
  ∀ n, P12760173468631525413.a n = A194153 (n + 1)

end A194153

/-!
# A194154: All possible numbers of whole squares which can be contained inside a square drawn with all of its vertices on lattice points.

The programs for A194154, there is no canonical definition to state claims against.
-/

/-! ## A194154.P7195914152864990916

`eq[A035639(A299925(n+1)), A058377(n+1)]`
-/

namespace A194154.P7195914152864990916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035639 (A299925 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194154.P7195914152864990916

/-! ## A194154.P7896021799610653224

`eq[A057077(n), A117825(A138259(2*n+3))]`
-/

namespace A194154.P7896021799610653224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117825 (A138259 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194154.P7896021799610653224

/-! ## A194154.P5306742732444387838

`eq[A047999(A091191(n+1)), A334720(n+1)]`
-/

namespace A194154.P5306742732444387838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A091191 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194154.P5306742732444387838

/-! ## A194154.P4152266374707409324

`eq[A276404(n+1), A304271(n+1)]`
-/

namespace A194154.P4152266374707409324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194154.P4152266374707409324

/-! ## A194154.P16020440656744286747

`eq[A304271(n+1), A308275(n+1)]`
-/

namespace A194154.P16020440656744286747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308275 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194154.P16020440656744286747

/-!
# A194155: Primes of the form k^8 + (k+1)^8.

The programs for A194155, there is no canonical definition to state claims against.
-/

/-! ## A194155.P4738697547443517753

`A036086(A153504(n+1))`
-/

namespace A194155.P4738697547443517753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036086 (A153504 (n + 1)).toNat

end

end A194155.P4738697547443517753

/-! ## A194155.P8115224533911732664

`A036086(eq[n+2, A244932(n+1)]+1)`
-/

namespace A194155.P8115224533911732664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A194155.P8115224533911732664

/-! ## A194155.P17183886599733493591

`∩[A006686(n+1), A036086(n)]`
-/

namespace A194155.P17183886599733493591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036086 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194155.P17183886599733493591

/-! ## A194155.P14946934060723451070

`∩[A036086(n), A078902(n+1)]`
-/

namespace A194155.P14946934060723451070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194155.P14946934060723451070

/-!
# A194156: Prime number that appears the most often as the n-th prime factor of an integer in a factorization given in ascending order.

The programs for A194156, there is no canonical definition to state claims against.
-/

/-! ## A194156.P304059974279251644

`A141246(A023204(n+1)+1)`
-/

namespace A194156.P304059974279251644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141246 (A023204 (n + 1) + 1).toNat

end

end A194156.P304059974279251644

/-!
# A194157: Product of first n nonzero even-indexed Fibonacci numbers F(2), F(4), F(6), ..., F(2*n).

The programs for A194157, the canonical program `A194157.P17008371756882806042` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194157 has offset 1).

The definition of A194157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194157.P17008371756882806042

`A123029(2*(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194157

/-- `A123029(2*(n+1))` -/
def P17008371756882806042.Spec : Prop :=
  ∀ n, P17008371756882806042.a n = A194157 (n + 1)

theorem P17008371756882806042.correct : P17008371756882806042.Spec := by
  intro n
  simp only [A194157, Nat.add_sub_cancel]

end A194157

/-! ## A194157.P15505310667512418705

`∏[3*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=3`
-/

namespace A194157.P15505310667512418705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A194157.P15505310667512418705

namespace A194157

/-- `∏[3*a(n-1)-a(n-2)]` -/
def P15505310667512418705.Spec : Prop :=
  ∀ n, P15505310667512418705.a n = A194157 (n + 1)

end A194157

/-! ## A194157.P13722651530071111501

`∏[A060921(∑[n])]`
-/

namespace A194157.P13722651530071111501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060921 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A194157.P13722651530071111501

namespace A194157

/-- `∏[A060921(∑[n])]` -/
def P13722651530071111501.Spec : Prop :=
  ∀ n, P13722651530071111501.a n = A194157 (n + 1)

end A194157

/-! ## A194157.P12684511590792819063

`∏[∑[A122367(n)]]`
-/

namespace A194157.P12684511590792819063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A194157.P12684511590792819063

namespace A194157

/-- `∏[∑[A122367(n)]]` -/
def P12684511590792819063.Spec : Prop :=
  ∀ n, P12684511590792819063.a n = A194157 (n + 1)

end A194157

/-! ## A194157.P6379047157177197771

`∏[A123965(∑[n])]`
-/

namespace A194157.P6379047157177197771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123965 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A194157.P6379047157177197771

namespace A194157

/-- `∏[A123965(∑[n])]` -/
def P6379047157177197771.Spec : Prop :=
  ∀ n, P6379047157177197771.a n = A194157 (n + 1)

end A194157

/-!
# A194158: Product of first n nonzero odd-indexed Fibonacci numbers F(1), ..., F(2*n-1).

The programs for A194158, the canonical program `A194158.P10027610832487113876` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194158 has offset 1).

The definition of A194158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194158.P10027610832487113876

`A123029(2*n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194158

/-- `A123029(2*n+1)` -/
def P10027610832487113876.Spec : Prop :=
  ∀ n, P10027610832487113876.a n = A194158 (n + 1)

theorem P10027610832487113876.correct : P10027610832487113876.Spec := by
  intro n
  simp only [A194158, Nat.add_sub_cancel]

end A194158

/-! ## A194158.P13525478106514695695

`∏[3*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A194158.P13525478106514695695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A194158.P13525478106514695695

namespace A194158

/-- `∏[3*a(n-1)-a(n-2)]` -/
def P13525478106514695695.Spec : Prop :=
  ∀ n, P13525478106514695695.a n = A194158 (n + 1)

end A194158

/-! ## A194158.P1613366823179307594

`∏[A122367(n)]`
-/

namespace A194158.P1613366823179307594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A194158.P1613366823179307594

namespace A194158

/-- `∏[A122367(n)]` -/
def P1613366823179307594.Spec : Prop :=
  ∀ n, P1613366823179307594.a n = A194158 (n + 1)

end A194158

/-! ## A194158.P1469984456669822557

`∏[abs(A099496(n))]`
-/

namespace A194158.P1469984456669822557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099496 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A194158.P1469984456669822557

namespace A194158

/-- `∏[abs(A099496(n))]` -/
def P1469984456669822557.Spec : Prop :=
  ∀ n, P1469984456669822557.a n = A194158 (n + 1)

end A194158

/-! ## A194158.P8611983875517616830

`∏[sqrt(A081068(n))]`
-/

namespace A194158.P8611983875517616830
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A081068 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A194158.P8611983875517616830

namespace A194158

/-- `∏[sqrt(A081068(n))]` -/
def P8611983875517616830.Spec : Prop :=
  ∀ n, P8611983875517616830.a n = (A194158 (n + 1) : ℝ)

end A194158

/-!
# A194161: a(n) = [Sum_{k=1..n} (k*r)], where [ ]=floor, ( )=fractional part, and r=sqrt(2).

The programs for A194161, there is no canonical definition to state claims against.
-/

/-! ## A194161.P7687200275079655091

`n-A194243(n+1)`
-/

namespace A194161.P7687200275079655091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194243 (n + 1)

end

end A194161.P7687200275079655091

/-! ## A194161.P14255868616286727751

`Δ[A194162(1-(1-n)%(n+1))]`
-/

namespace A194161.P14255868616286727751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194162 (1 - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194161.P14255868616286727751

/-! ## A194161.P4374309836652328768

`Δ[A194162(A065033(2*n))]`
-/

namespace A194161.P4374309836652328768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194162 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194161.P4374309836652328768

/-! ## A194161.P17649596726392925643

`Δ[A194162(A000007(n)+n)]`
-/

namespace A194161.P17649596726392925643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194162 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194161.P17649596726392925643

/-! ## A194161.P5859503476995460597

`Δ[A194162(xor(n, A000007(n)))]`
-/

namespace A194161.P5859503476995460597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194162 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194161.P5859503476995460597

/-! ## A194161.P6018374915465037320

`Δ[A194162(A008619(A004273(n)))]`
-/

namespace A194161.P6018374915465037320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194162 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194161.P6018374915465037320

/-! ## A194161.P12601582153080475330

`A194162(n+1)-A194162(A065033(2*n))`
-/

namespace A194161.P12601582153080475330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194162 (n + 1) - A194162 (A065033 (2 * n)).toNat

end

end A194161.P12601582153080475330

/-! ## A194161.P1666729151073893362

`A194162(n+1)-A194162(A000007(n)+n)`
-/

namespace A194161.P1666729151073893362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194162 (n + 1) - A194162 (A000007 n + (n : ℤ)).toNat

end

end A194161.P1666729151073893362

/-! ## A194161.P12285198480939737929

`A001951(∑[n+1])-∑[A001951(n+1)]`
-/

namespace A194161.P12285198480939737929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194161.P12285198480939737929

/-! ## A194161.P12255110553708795423

`A001952(∑[n+1])-∑[A001952(n+1)]`
-/

namespace A194161.P12255110553708795423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194161.P12255110553708795423

/-! ## A194161.P1209476664334998967

`A187338(∑[n+1])-∑[A187338(n+1)]`
-/

namespace A194161.P1209476664334998967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187338 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194161.P1209476664334998967

/-! ## A194161.P8692010554663440981

`∑[A195119(n+1)]-A195119(∑[n+1])`
-/

namespace A194161.P8692010554663440981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A195119 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A194161.P8692010554663440981

/-! ## A194161.P276490933280581201

`∑[A195176(n+1)]-A195176(∑[n+1])`
-/

namespace A194161.P276490933280581201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A195176 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A194161.P276490933280581201

/-!
# A194162: Partial sums of A194161.

The programs for A194162, there is no canonical definition to state claims against.
-/

/-! ## A194162.P17008047011543035919

`∑[A194161(n+1)]`
-/

namespace A194162.P17008047011543035919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194162.P17008047011543035919

/-! ## A194162.P4068033412601994076

`∑[n-A194243(n+1)]`
-/

namespace A194162.P4068033412601994076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194162.P4068033412601994076

/-! ## A194162.P10379386978684915489

`∑[n]-A194244(n+1)`
-/

namespace A194162.P10379386978684915489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A194244 (n + 1)

end

end A194162.P10379386978684915489

/-! ## A194162.P12003486523609363846

`abs(A194244(n+1)-A000217(n))`
-/

namespace A194162.P12003486523609363846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194244 (n + 1) - A000217 n|

end

end A194162.P12003486523609363846

/-! ## A194162.P5549920499003272425

`∑[abs(A194243(n+1)+A001489(n))]`
-/

namespace A194162.P5549920499003272425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194243 (n + 1) + A001489 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194162.P5549920499003272425

/-! ## A194162.P1560830977095639573

`A194161(A028310(n)+1)+a(n-1)` with `a(0)=0`
-/

namespace A194162.P1560830977095639573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194161 (A028310 n + 1).toNat + a (n - 1)

end

end A194162.P1560830977095639573

/-! ## A194162.P18251952258619190388

`A055998(n)-(A194244(n+1)+2*n)`
-/

namespace A194162.P18251952258619190388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n - (A194244 (n + 1) + (2 * n : ℤ))

end

end A194162.P18251952258619190388

/-! ## A194162.P3065391226301161938

`a(n-1)+A194161(n+1)+A001489(n)+n` with `a(0)=0`
-/

namespace A194162.P3065391226301161938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A194161 (n + 1) + A001489 n + (n : ℤ))

end

end A194162.P3065391226301161938

/-! ## A194162.P14855484517994351101

`A194161(n+1)+A163332(A163332(a(n-1)))` with `a(0)=0`
-/

namespace A194162.P14855484517994351101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194161 (n + 1) + A163332 (A163332 (a (n - 1)).toNat).toNat

end

end A194162.P14855484517994351101

/-! ## A194162.P11649826672249436392

`A001489(∑[A194243(n+1)])+∑[n]`
-/

namespace A194162.P11649826672249436392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194243 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194162.P11649826672249436392

/-!
# A194163: a(n) = [sum{(k*r) : 1<=k<=n}], where [ ]=floor, ( )=fractional part, and r=sqrt(3).

The programs for A194163, there is no canonical definition to state claims against.
-/

/-! ## A194163.P6305489381005071496

`n-A194245(n+1)`
-/

namespace A194163.P6305489381005071496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194245 (n + 1)

end

end A194163.P6305489381005071496

/-! ## A194163.P12941048277573357946

`Δ[A194164(n^floor(atan(n)))]`
-/

namespace A194163.P12941048277573357946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194164 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194163.P12941048277573357946

/-! ## A194163.P9091475976976951273

`Δ[A194164(n-ceil(n/(n+1))+1)]`
-/

namespace A194163.P9091475976976951273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194164 ((n : ℤ) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194163.P9091475976976951273

/-! ## A194163.P14478202249634475930

`abs(Δ[A194164(A000007(n)+n)])`
-/

namespace A194163.P14478202249634475930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194164 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A194163.P14478202249634475930

/-! ## A194163.P7823179157462665369

`A194164(n+1)-A194164(A028310(n))`
-/

namespace A194163.P7823179157462665369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194164 (n + 1) - A194164 (A028310 n).toNat

end

end A194163.P7823179157462665369

/-! ## A194163.P4654808684188580332

`Δ[A194164(A028310(n))]%A000040(n+2)`
-/

namespace A194163.P4654808684188580332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194164 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 2))

end

end A194163.P4654808684188580332

/-! ## A194163.P16113906141600828404

`A194164(n+1)-A194164(A000007(n)+n)`
-/

namespace A194163.P16113906141600828404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194164 (n + 1) - A194164 (A000007 n + (n : ℤ)).toNat

end

end A194163.P16113906141600828404

/-! ## A194163.P15719227203894679294

`A003512(∑[n+1])-∑[A003512(n+1)]`
-/

namespace A194163.P15719227203894679294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194163.P15719227203894679294

/-! ## A194163.P14438343983134356517

`A022838(∑[n+1])-∑[A022838(n+1)]`
-/

namespace A194163.P14438343983134356517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194163.P14438343983134356517

/-! ## A194163.P13923282573138231141

`A182778(∑[n+1])-∑[A182778(n+1)]`
-/

namespace A194163.P13923282573138231141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182778 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194163.P13923282573138231141

/-! ## A194163.P17591436626379984547

`∑[A195120(n+1)]-A195120(∑[n+1])`
-/

namespace A194163.P17591436626379984547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A195120 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A194163.P17591436626379984547

/-! ## A194163.P2757894058669650515

`A180123(∑[n+1])-(∑[A180123(n+1)]+n)`
-/

namespace A194163.P2757894058669650515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (∑ j ∈ Finset.range (n + 1), f1 j) - (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ))

end

end A194163.P2757894058669650515

/-! ## A194163.P17173254547491287575

`∑[A182777(n+1)]-A182777(∑[n+1])+n`
-/

namespace A194163.P17173254547491287575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182777 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A182777 (∑ j ∈ Finset.range (n + 1), f2 j) + (n : ℤ)

end

end A194163.P17173254547491287575

/-!
# A194164: Partial sums of A194163.

The programs for A194164, there is no canonical definition to state claims against.
-/

/-! ## A194164.P13592769815556619625

`∑[A194163(n+1)]`
-/

namespace A194164.P13592769815556619625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194164.P13592769815556619625

/-! ## A194164.P3221166715653424200

`∑[n-A194245(n+1)]`
-/

namespace A194164.P3221166715653424200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194164.P3221166715653424200

/-! ## A194164.P15839250508768686114

`∑[n]-A194246(n+1)`
-/

namespace A194164.P15839250508768686114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A194246 (n + 1)

end

end A194164.P15839250508768686114

/-! ## A194164.P1036284480473186400

`abs(A194246(n+1)-A000217(n))`
-/

namespace A194164.P1036284480473186400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194246 (n + 1) - A000217 n|

end

end A194164.P1036284480473186400

/-! ## A194164.P17661026063060226130

`∑[abs(A194245(n+1)+A001489(n))]`
-/

namespace A194164.P17661026063060226130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194245 (n + 1) + A001489 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194164.P17661026063060226130

/-! ## A194164.P10019768464635577033

`A194163(n+1)+a(A023443(n))` with `a(0)=0, a(1)=1`
-/

namespace A194164.P10019768464635577033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A194163 (n + 1) + a (A023443 n).toNat

end

end A194164.P10019768464635577033

/-! ## A194164.P8672836366171512690

`a(n-1)+A028310(n)-A194245(n+1)` with `a(0)=0`
-/

namespace A194164.P8672836366171512690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A028310 n - A194245 (n + 1))

end

end A194164.P8672836366171512690

/-! ## A194164.P18384523303589938930

`a(n-1)+A194163(n+1)+A001489(n)+n` with `a(0)=0`
-/

namespace A194164.P18384523303589938930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A194163 (n + 1) + A001489 n + (n : ℤ))

end

end A194164.P18384523303589938930

/-! ## A194164.P13592226381687662329

`A001489(∑[A194245(n+1)])+∑[n]`
-/

namespace A194164.P13592226381687662329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194245 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194164.P13592226381687662329

/-! ## A194164.P4604444663751669935

`A222238(A222238(a(n-1)))+A194163(n+1)` with `a(0)=0`
-/

namespace A194164.P4604444663751669935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A222238 (A222238 (a (n - 1)).toNat).toNat + A194163 (n + 1)

end

end A194164.P4604444663751669935

/-!
# A194165: a(n) = [Sum_{k=1..n} (k*r)], where [ ]=floor, ( )=fractional part, and r = (1+sqrt(5))/2, the golden ratio.

The programs for A194165, the canonical program `A194165.P9655520461940932840` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194165 has offset 1).

The definition of A194165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194165.P9655520461940932840

`floor(∑[∑[ϕ-A001468(n)]])`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194165

/-- `floor(∑[∑[ϕ-A001468(n)]])` -/
def P9655520461940932840.Spec : Prop :=
  ∀ n, P9655520461940932840.a n = A194165 (n + 1)

theorem P9655520461940932840.correct : P9655520461940932840.Spec := by
  intro n
  simp only [A194165, Nat.add_sub_cancel]

end A194165

/-! ## A194165.P5893978579958684642

`floor(∑[ϕ*(n+1)-A000201(n+1)])`
-/

namespace A194165.P5893978579958684642
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * (n + 1 : ℝ) - (A000201 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A194165.P5893978579958684642

namespace A194165

/-- `floor(∑[ϕ*(n+1)-A000201(n+1)])` -/
def P5893978579958684642.Spec : Prop :=
  ∀ n, P5893978579958684642.a n = A194165 (n + 1)

end A194165

/-! ## A194165.P13631552342799424286

`Δ[A194166(A065033(2*n))]`
-/

namespace A194165.P13631552342799424286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194166 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194165.P13631552342799424286

namespace A194165

/-- `Δ[A194166(A065033(2*n))]` -/
def P13631552342799424286.Spec : Prop :=
  ∀ n, P13631552342799424286.a n = A194165 (n + 1)

end A194165

/-! ## A194165.P1916512562601469218

`Δ[A194166(gcd(n, A008486(n)))]`
-/

namespace A194165.P1916512562601469218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194166 (Int.gcd (n : ℤ) (A008486 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194165.P1916512562601469218

namespace A194165

/-- `Δ[A194166(gcd(n, A008486(n)))]` -/
def P1916512562601469218.Spec : Prop :=
  ∀ n, P1916512562601469218.a n = A194165 (n + 1)

end A194165

/-! ## A194165.P2922127989520075730

`Δ[A194166(A004275(n+1)-n)]`
-/

namespace A194165.P2922127989520075730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194166 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194165.P2922127989520075730

namespace A194165

/-- `Δ[A194166(A004275(n+1)-n)]` -/
def P2922127989520075730.Spec : Prop :=
  ∀ n, P2922127989520075730.a n = A194165 (n + 1)

end A194165

/-! ## A194165.P10754900686403349740

`Δ[A194166(A008619(A004275(n)))]`
-/

namespace A194165.P10754900686403349740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194166 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194165.P10754900686403349740

namespace A194165

/-- `Δ[A194166(A008619(A004275(n)))]` -/
def P10754900686403349740.Spec : Prop :=
  ∀ n, P10754900686403349740.a n = A194165 (n + 1)

end A194165

/-! ## A194165.P3056843108575351519

`A194166(n+1)-A194166(A065033(2*n))`
-/

namespace A194165.P3056843108575351519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194166 (n + 1) - A194166 (A065033 (2 * n)).toNat

end

end A194165.P3056843108575351519

namespace A194165

/-- `A194166(n+1)-A194166(A065033(2*n))` -/
def P3056843108575351519.Spec : Prop :=
  ∀ n, P3056843108575351519.a n = A194165 (n + 1)

end A194165

/-! ## A194165.P8595519150133392037

`A005206(∑[n]+n)-∑[A005206(n)]`
-/

namespace A194165.P8595519150133392037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (∑ j ∈ Finset.range (n + 1), f1 j + n) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194165.P8595519150133392037

namespace A194165

/-- `A005206(∑[n]+n)-∑[A005206(n)]` -/
def P8595519150133392037.Spec : Prop :=
  ∀ n, P8595519150133392037.a n = A194165 (n + 1)

end A194165

/-! ## A194165.P16651320369263566951

`A000201(∑[n+1])-A054347(n+1)`
-/

namespace A194165.P16651320369263566951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (∑ j ∈ Finset.range (n + 1), f1 j) - A054347 (n + 1)

end

end A194165.P16651320369263566951

namespace A194165

/-- `A000201(∑[n+1])-A054347(n+1)` -/
def P16651320369263566951.Spec : Prop :=
  ∀ n, P16651320369263566951.a n = A194165 (n + 1)

end A194165

/-! ## A194165.P8771597548849968116

`A000201(∑[n+1])-∑[A000201(n+1)]`
-/

namespace A194165.P8771597548849968116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194165.P8771597548849968116

namespace A194165

/-- `A000201(∑[n+1])-∑[A000201(n+1)]` -/
def P8771597548849968116.Spec : Prop :=
  ∀ n, P8771597548849968116.a n = A194165 (n + 1)

end A194165

/-! ## A194165.P4204372897191812775

`A001950(∑[n+1])-∑[A001950(n+1)]`
-/

namespace A194165.P4204372897191812775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194165.P4204372897191812775

namespace A194165

/-- `A001950(∑[n+1])-∑[A001950(n+1)]` -/
def P4204372897191812775.Spec : Prop :=
  ∀ n, P4204372897191812775.a n = A194165 (n + 1)

end A194165

/-! ## A194165.P2078878657226371750

`A001950(A000217(n+1))-A088207(n+1)`
-/

namespace A194165.P2078878657226371750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A000217 (n + 1)).toNat - A088207 (n + 1)

end

end A194165.P2078878657226371750

namespace A194165

/-- `A001950(A000217(n+1))-A088207(n+1)` -/
def P2078878657226371750.Spec : Prop :=
  ∀ n, P2078878657226371750.a n = A194165 (n + 1)

end A194165

/-! ## A194165.P11993584152151779823

`A060143(A000217(n+1))-A183136(n+1)`
-/

namespace A194165.P11993584152151779823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A000217 (n + 1)).toNat - A183136 (n + 1)

end

end A194165.P11993584152151779823

namespace A194165

/-- `A060143(A000217(n+1))-A183136(n+1)` -/
def P11993584152151779823.Spec : Prop :=
  ∀ n, P11993584152151779823.a n = A194165 (n + 1)

end A194165

/-! ## A194165.P17717945343563958060

`A060143(A000217(n+1))-∑[A060143(n+1)]`
-/

namespace A194165.P17717945343563958060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A000217 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194165.P17717945343563958060

namespace A194165

/-- `A060143(A000217(n+1))-∑[A060143(n+1)]` -/
def P17717945343563958060.Spec : Prop :=
  ∀ n, P17717945343563958060.a n = A194165 (n + 1)

end A194165

/-!
# A194166: Partial sums of A194165.

The programs for A194166, the canonical program `A194166.P9820872437032125516` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194166 has offset 1).

The definition of A194166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4690 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194166.P9820872437032125516

`∑[A194165(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194166

/-- `∑[A194165(n+1)]` -/
def P9820872437032125516.Spec : Prop :=
  ∀ n, P9820872437032125516.a n = A194166 (n + 1)

theorem P9820872437032125516.correct : P9820872437032125516.Spec := by
  intro n
  simp only [A194166, Nat.add_sub_cancel]

end A194166

/-! ## A194166.P6766009572211089838

`∑[floor(∑[∑[ϕ-A001468(n)]])]`
-/

namespace A194166.P6766009572211089838
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (A001468 n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194166.P6766009572211089838

namespace A194166

/-- `∑[floor(∑[∑[ϕ-A001468(n)]])]` -/
def P6766009572211089838.Spec : Prop :=
  ∀ n, P6766009572211089838.a n = A194166 (n + 1)

end A194166

/-! ## A194166.P1125189559787998948

`∑[floor(∑[ϕ*(n+1)-A000201(n+1)])]`
-/

namespace A194166.P1125189559787998948
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * (n + 1 : ℝ) - (A000201 (n + 1) : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194166.P1125189559787998948

namespace A194166

/-- `∑[floor(∑[ϕ*(n+1)-A000201(n+1)])]` -/
def P1125189559787998948.Spec : Prop :=
  ∀ n, P1125189559787998948.a n = A194166 (n + 1)

end A194166

/-! ## A194166.P5713001047341117647

`∑[A000201(∑[n+1])-A054347(n+1)]`
-/

namespace A194166.P5713001047341117647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (∑ j ∈ Finset.range (n + 1), f2 j) - A054347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194166.P5713001047341117647

namespace A194166

/-- `∑[A000201(∑[n+1])-A054347(n+1)]` -/
def P5713001047341117647.Spec : Prop :=
  ∀ n, P5713001047341117647.a n = A194166 (n + 1)

end A194166

/-! ## A194166.P17157276205144072743

`∑[A001950(A000217(n+1))-A088207(n+1)]`
-/

namespace A194166.P17157276205144072743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A000217 (n + 1)).toNat - A088207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194166.P17157276205144072743

namespace A194166

/-- `∑[A001950(A000217(n+1))-A088207(n+1)]` -/
def P17157276205144072743.Spec : Prop :=
  ∀ n, P17157276205144072743.a n = A194166 (n + 1)

end A194166

/-! ## A194166.P6794526711475199757

`∑[A060143(A000217(n+1))-A183136(n+1)]`
-/

namespace A194166.P6794526711475199757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A000217 (n + 1)).toNat - A183136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194166.P6794526711475199757

namespace A194166

/-- `∑[A060143(A000217(n+1))-A183136(n+1)]` -/
def P6794526711475199757.Spec : Prop :=
  ∀ n, P6794526711475199757.a n = A194166 (n + 1)

end A194166

/-!
# A194167: [sum{(k*r) : 1<=k<=n}], where [ ]=floor, ( )=fractional part, and r=(3+sqrt(5))/2, the golden ratio.

The programs for A194167, there is no canonical definition to state claims against.
-/

/-! ## A194167.P16022068991207871682

`Δ[A194168(floor(acot(n)+n))]`
-/

namespace A194167.P16022068991207871682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194168 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194167.P16022068991207871682

/-! ## A194167.P13809337041019068631

`Δ[A194168(round(acot(n)+n))]`
-/

namespace A194167.P13809337041019068631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194168 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194167.P13809337041019068631

/-! ## A194167.P7663265477949955707

`Δ[A194168(round(sqrt(n²+1)))]`
-/

namespace A194167.P7663265477949955707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194168 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194167.P7663265477949955707

/-! ## A194167.P9443721306998499303

`abs(Δ[A194168(A028310(n))])`
-/

namespace A194167.P9443721306998499303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194168 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A194167.P9443721306998499303

/-! ## A194167.P9247182601964616886

`A194168(n+1)-A194168(round(sqrt(n²+1)))`
-/

namespace A194167.P9247182601964616886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194168 (n + 1) - A194168 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A194167.P9247182601964616886

/-! ## A194167.P2975556111550893920

`A194151(∑[n+1])-A194153(n+1)`
-/

namespace A194167.P2975556111550893920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194151 (∑ j ∈ Finset.range (n + 1), f1 j) - A194153 (n + 1)

end

end A194167.P2975556111550893920

/-!
# A194168: Partial sums of A194167.

The programs for A194168, there is no canonical definition to state claims against.
-/

/-! ## A194168.P14764155492211930068

`∑[A194167(n+1)]`
-/

namespace A194168.P14764155492211930068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194168.P14764155492211930068

/-! ## A194168.P4016391590048360183

`∑[A194151(∑[n+1])-A194153(n+1)]`
-/

namespace A194168.P4016391590048360183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194151 (∑ j ∈ Finset.range (n + 1), f2 j) - A194153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194168.P4016391590048360183

/-! ## A194168.P7742588044036385530

`∑[∑[A021913(A078513(n))]]`
-/

namespace A194168.P7742588044036385530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A078513 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194168.P7742588044036385530

/-! ## A194168.P14728212811116397861

`∑[∑[A252742(A191614(n+1))]]`
-/

namespace A194168.P14728212811116397861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (A191614 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194168.P14728212811116397861

/-! ## A194168.P18217274144760605699

`∑[∑[A038219(A038238(n+4))]]`
-/

namespace A194168.P18217274144760605699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038219 (A038238 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194168.P18217274144760605699

/-!
# A194169: a(n) = [Sum_{k=1..n} (k*r)], where [ ]=floor, ( )=fractional part, and r=sqrt(5).

The programs for A194169, there is no canonical definition to state claims against.
-/

/-! ## A194169.P2486285911814575018

`n-A194247(n+1)`
-/

namespace A194169.P2486285911814575018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194247 (n + 1)

end

end A194169.P2486285911814575018

/-! ## A194169.P9767806736135694979

`Δ[A194170(abs(1-n)+1)]`
-/

namespace A194169.P9767806736135694979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194170 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194169.P9767806736135694979

/-! ## A194169.P10955223178972883771

`n-abs(n-Δ[A194170(A028310(n))])`
-/

namespace A194169.P10955223178972883771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194170 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - |(n : ℤ) - (f1 (n + 1) - f1 n)|

end

end A194169.P10955223178972883771

/-! ## A194169.P9064176082983142035

`A194170(n+1)-A194170(abs(1-n)+1)`
-/

namespace A194169.P9064176082983142035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194170 (n + 1) - A194170 (|1 - (n : ℤ)| + 1).toNat

end

end A194169.P9064176082983142035

/-! ## A194169.P14300354467750701615

`abs(Δ[A194170(A233583(n+1))])`
-/

namespace A194169.P14300354467750701615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194170 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A194169.P14300354467750701615

/-! ## A194169.P9515448872677621439

`A292251(2*(n+1))+Δ[A194170(A233583(n+1))]`
-/

namespace A194169.P9515448872677621439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194170 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292251 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A194169.P9515448872677621439

/-! ## A194169.P4326488843202612971

`A022839(∑[n+1])-A194110(n+1)`
-/

namespace A194169.P4326488843202612971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (∑ j ∈ Finset.range (n + 1), f1 j) - A194110 (n + 1)

end

end A194169.P4326488843202612971

/-! ## A194169.P6688507243370022518

`A001961(∑[n+1])-∑[A001961(n+1)]`
-/

namespace A194169.P6688507243370022518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194169.P6688507243370022518

/-! ## A194169.P15316293042438970377

`A001962(∑[n+1])-∑[A001962(n+1)]`
-/

namespace A194169.P15316293042438970377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194169.P15316293042438970377

/-! ## A194169.P15841178033260612296

`A022839(∑[n+1])-∑[A022839(n+1)]`
-/

namespace A194169.P15841178033260612296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194169.P15841178033260612296

/-! ## A194169.P16747577609134045868

`∑[A195172(n+1)]-A195172(∑[n+1])`
-/

namespace A194169.P16747577609134045868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A195172 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A194169.P16747577609134045868

/-!
# A194170: Partial sums of A194169.

The programs for A194170, there is no canonical definition to state claims against.
-/

/-! ## A194170.P4252539898577595979

`∑[A194169(n+1)]`
-/

namespace A194170.P4252539898577595979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194170.P4252539898577595979

/-! ## A194170.P9051466674777112224

`∑[n-A194247(n+1)]`
-/

namespace A194170.P9051466674777112224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194170.P9051466674777112224

/-! ## A194170.P9182862029656459989

`∑[n]-A194248(n+1)`
-/

namespace A194170.P9182862029656459989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A194248 (n + 1)

end

end A194170.P9182862029656459989

/-! ## A194170.P8163650307070319435

`A000124(n)-(A194248(n+1)+1)`
-/

namespace A194170.P8163650307070319435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A194248 (n + 1) + 1)

end

end A194170.P8163650307070319435

/-! ## A194170.P18375877220511740984

`a(n-1)+A194169(n+1)+A000038(n)` with `a(0)=0`
-/

namespace A194170.P18375877220511740984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A194169 (n + 1) + A000038 n)

end

end A194170.P18375877220511740984

/-! ## A194170.P680213739835902500

`A001489(∑[A194247(n+1)])+∑[n]`
-/

namespace A194170.P680213739835902500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194247 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194170.P680213739835902500

/-! ## A194170.P5877285638769470463

`∑[A022839(∑[n+1])-A194110(n+1)]`
-/

namespace A194170.P5877285638769470463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (∑ j ∈ Finset.range (n + 1), f2 j) - A194110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194170.P5877285638769470463

/-! ## A194170.P14012468734893980078

`∑[A001961(∑[n+1])-∑[A001961(n+1)]]`
-/

namespace A194170.P14012468734893980078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (∑ j ∈ Finset.range (n + 1), f2 j) - ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194170.P14012468734893980078

/-! ## A194170.P5625779157824715500

`∑[A001962(∑[n+1])-∑[A001962(n+1)]]`
-/

namespace A194170.P5625779157824715500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (∑ j ∈ Finset.range (n + 1), f2 j) - ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194170.P5625779157824715500

/-! ## A194170.P7459244261143825043

`∑[A022839(∑[n+1])-∑[A022839(n+1)]]`
-/

namespace A194170.P7459244261143825043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (∑ j ∈ Finset.range (n + 1), f2 j) - ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194170.P7459244261143825043

/-! ## A194170.P14245576825813565204

`∑[∑[A195172(n+1)]-A195172(∑[n+1])]`
-/

namespace A194170.P14245576825813565204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A195172 (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194170.P14245576825813565204

/-!
# A194171: [sum{(k*r) : 1<=k<=n}], where [ ]=floor, ( )=fractional part, and r=1/2+sqrt(5).

The programs for A194171, there is no canonical definition to state claims against.
-/

/-! ## A194171.P14896192395691998998

`Δ[A194172(floor(acot(n)+n))]`
-/

namespace A194171.P14896192395691998998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194172 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194171.P14896192395691998998

/-! ## A194171.P11426810987085857294

`Δ[A194172(A028310(n))]`
-/

namespace A194171.P11426810987085857294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194172 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194171.P11426810987085857294

/-! ## A194171.P1912076706214873550

`Δ[A194172(sqrt(A253909(n)))]`
-/

namespace A194171.P1912076706214873550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194172 (SequenceMachineLib.roundAway (Real.sqrt (A253909 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194171.P1912076706214873550

/-! ## A194171.P14670919597497745518

`Δ[A194172(A065033(2*n))]`
-/

namespace A194171.P14670919597497745518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194172 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194171.P14670919597497745518

/-! ## A194171.P1608302641765431691

`Δ[A194172(A123108(2*n))]`
-/

namespace A194171.P1608302641765431691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194172 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194171.P1608302641765431691

/-! ## A194171.P16584101698752676249

`Δ[A194172(A000007(n)+n)]`
-/

namespace A194171.P16584101698752676249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194172 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194171.P16584101698752676249

/-! ## A194171.P15556778797403685914

`Δ[A194172(gcd(n, A008574(n)))]`
-/

namespace A194171.P15556778797403685914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194172 (Int.gcd (n : ℤ) (A008574 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194171.P15556778797403685914

/-! ## A194171.P13056522619199389091

`Δ[A194172(or(n, A000007(n)))]`
-/

namespace A194171.P13056522619199389091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194172 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194171.P13056522619199389091

/-! ## A194171.P15248815418858732230

`Δ[A194172(A008619(A004273(n)))]`
-/

namespace A194171.P15248815418858732230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194172 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194171.P15248815418858732230

/-! ## A194171.P10725583091693928088

`A194172(n+1)-A194172(A028310(n))`
-/

namespace A194171.P10725583091693928088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194172 (n + 1) - A194172 (A028310 n).toNat

end

end A194171.P10725583091693928088

/-! ## A194171.P16356505549054204796

`A194172(n+1)-A194172(sqrt(A253909(n)))`
-/

namespace A194171.P16356505549054204796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194172 (n + 1) - A194172 (SequenceMachineLib.roundAway (Real.sqrt (A253909 n : ℝ))).toNat

end

end A194171.P16356505549054204796

/-! ## A194171.P8312792027953258566

`Δ[A194172(A007318(A000124(n)))]`
-/

namespace A194171.P8312792027953258566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194172 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194171.P8312792027953258566

/-!
# A194172: Partial sums of A194171.

The programs for A194172, there is no canonical definition to state claims against.
-/

/-! ## A194172.P6549422086558062245

`∑[A194171(n+1)]`
-/

namespace A194172.P6549422086558062245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194172.P6549422086558062245

/-! ## A194172.P11480346553015681962

`A194171(n+1)+a(A023443(n))` with `a(0)=0`
-/

namespace A194172.P11480346553015681962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194171 (n + 1) + a (A023443 n).toNat

end

end A194172.P11480346553015681962

/-! ## A194172.P1914873065539060994

`A194171(A020725(n))+a(n-1)` with `a(0)=0`
-/

namespace A194172.P1914873065539060994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194171 (A020725 n).toNat + a (n - 1)

end

end A194172.P1914873065539060994

/-! ## A194172.P5010684416901616143

`A194171(A000027(n+1))+a(n-1)` with `a(0)=0`
-/

namespace A194172.P5010684416901616143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194171 (A000027 (n + 1)).toNat + a (n - 1)

end

end A194172.P5010684416901616143

/-! ## A194172.P10651336055240863414

`A194171(n+1)+a(n-1)%A041022(n)` with `a(0)=0`
-/

namespace A194172.P10651336055240863414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194171 (n + 1) + Int.tmod (a (n - 1)) (A041022 n)

end

end A194172.P10651336055240863414

/-!
# A194173: a(n) = [Sum_{k=1..n} (k*r)], where [ ]=floor, ( )=fractional part, and r=sqrt(6).

The programs for A194173, there is no canonical definition to state claims against.
-/

/-! ## A194173.P9025777533665470102

`n-A194249(n+1)`
-/

namespace A194173.P9025777533665470102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194249 (n + 1)

end

end A194173.P9025777533665470102

/-! ## A194173.P9856778375636199161

`Δ[A194174(floor(1/(n+1)+n))]`
-/

namespace A194173.P9856778375636199161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194174 ⌊1 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194173.P9856778375636199161

/-! ## A194173.P17742388847782153935

`-Δ[-A194174(A123108(2*n))]`
-/

namespace A194173.P17742388847782153935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A194174 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A194173.P17742388847782153935

/-! ## A194173.P13085649329034656737

`A194174(n+1)-A194174(A028310(n))`
-/

namespace A194173.P13085649329034656737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194174 (n + 1) - A194174 (A028310 n).toNat

end

end A194173.P13085649329034656737

/-! ## A194173.P9146261325517123677

`Δ[A194174(A123108(2*n))%A000143(n)]`
-/

namespace A194173.P9146261325517123677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194174 (A123108 (2 * n)).toNat) (A000143 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194173.P9146261325517123677

/-! ## A194173.P13548975224639799878

`A194174(n+1)-A194174(A123108(2*n))`
-/

namespace A194173.P13548975224639799878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194174 (n + 1) - A194174 (A123108 (2 * n)).toNat

end

end A194173.P13548975224639799878

/-! ## A194173.P1371864748299780909

`Δ[A194174(A123108(2*n))]%A000040(n+1)`
-/

namespace A194173.P1371864748299780909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194174 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1))

end

end A194173.P1371864748299780909

/-! ## A194173.P11503467001666979004

`A022840(∑[n+1])-∑[A022840(n+1)]`
-/

namespace A194173.P11503467001666979004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194173.P11503467001666979004

/-! ## A194173.P4903048894335543971

`A277645(∑[n+1])-∑[A277645(n+1)]`
-/

namespace A194173.P4903048894335543971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277645 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194173.P4903048894335543971

/-! ## A194173.P15661321439083934211

`A022840(A000217(n+1))%∑[A022840(n+1)]`
-/

namespace A194173.P15661321439083934211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022840 (A000217 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194173.P15661321439083934211

/-!
# A194174: Partial sums of A194173.

The programs for A194174, there is no canonical definition to state claims against.
-/

/-! ## A194174.P11459655286059097610

`∑[A194173(n+1)]`
-/

namespace A194174.P11459655286059097610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194174.P11459655286059097610

/-! ## A194174.P7689910698753362092

`∑[n-A194249(n+1)]`
-/

namespace A194174.P7689910698753362092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194174.P7689910698753362092

/-! ## A194174.P751871637083028061

`∑[n]-A194250(n+1)`
-/

namespace A194174.P751871637083028061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A194250 (n + 1)

end

end A194174.P751871637083028061

/-! ## A194174.P3916598469933887858

`∑[abs(A194249(n+1)+A001489(n))]`
-/

namespace A194174.P3916598469933887858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194249 (n + 1) + A001489 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194174.P3916598469933887858

/-! ## A194174.P7191924022106394418

`A194173(n+1)+a(A289207(n+1))` with `a(0)=0`
-/

namespace A194174.P7191924022106394418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194173 (n + 1) + a (A289207 (n + 1)).toNat

end

end A194174.P7191924022106394418

/-! ## A194174.P13608899118668023579

`a(n-1)+A028310(n)-A194249(n+1)` with `a(0)=0`
-/

namespace A194174.P13608899118668023579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A028310 n - A194249 (n + 1))

end

end A194174.P13608899118668023579

/-! ## A194174.P18100731557960558909

`A194173(n+1)+a(A004277(n+1)-n-3)` with `a(0)=0`
-/

namespace A194174.P18100731557960558909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194173 (n + 1) + a (A004277 (n + 1) - (n : ℤ) - 3).toNat

end

end A194174.P18100731557960558909

/-! ## A194174.P6190521189620752319

`A194173(A002264(3*n+4))+a(n-1)` with `a(0)=0`
-/

namespace A194174.P6190521189620752319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194173 (A002264 (3 * n + 4)).toNat + a (n - 1)

end

end A194174.P6190521189620752319

/-! ## A194174.P1073602942417162772

`A000027(A194173(n+1)+a(n-1))` with `a(0)=0`
-/

namespace A194174.P1073602942417162772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000027 (A194173 (n + 1) + a (n - 1)).toNat

end

end A194174.P1073602942417162772

/-! ## A194174.P1056493391343256498

`A001489(∑[A194249(n+1)])+∑[n]`
-/

namespace A194174.P1056493391343256498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194249 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194174.P1056493391343256498

/-! ## A194174.P15684009501765600605

`A235201(A235201(a(n-1)))+A194173(n+1)` with `a(0)=0`
-/

namespace A194174.P15684009501765600605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A235201 (A235201 (a (n - 1)).toNat).toNat + A194173 (n + 1)

end

end A194174.P15684009501765600605

/-!
# A194175: [sum{(k*r) : 1<=k<=n}], where [ ]=floor, ( )=fractional part, and r=sqrt(7).

The programs for A194175, there is no canonical definition to state claims against.
-/

/-! ## A194175.P814509019181647747

`Δ[A194176(round(acot(n)+n))]`
-/

namespace A194175.P814509019181647747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194176 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194175.P814509019181647747

/-! ## A194175.P1049224296510706406

`Δ[A194176(abs(1-n)+1)]`
-/

namespace A194175.P1049224296510706406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194176 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194175.P1049224296510706406

/-! ## A194175.P14519055828430562467

`A194176(n+1)-A194176(round(sqrt(n²+1)))`
-/

namespace A194175.P14519055828430562467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194176 (n + 1) - A194176 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A194175.P14519055828430562467

/-! ## A194175.P5186300278069346281

`A022841(∑[n+1])-A194111(n+1)`
-/

namespace A194175.P5186300278069346281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022841 (∑ j ∈ Finset.range (n + 1), f1 j) - A194111 (n + 1)

end

end A194175.P5186300278069346281

/-! ## A194175.P12174440529774826111

`A022841(∑[n+1])-∑[A022841(n+1)]`
-/

namespace A194175.P12174440529774826111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022841 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194175.P12174440529774826111

/-! ## A194175.P736707752136251230

`A022841(∑[A000027(n+1)])%A194111(n+1)`
-/

namespace A194175.P736707752136251230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022841 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A194111 (n + 1))

end

end A194175.P736707752136251230

/-!
# A194176: Partial sums of A194175.

The programs for A194176, there is no canonical definition to state claims against.
-/

/-! ## A194176.P3572830077646465168

`∑[A194175(n+1)]`
-/

namespace A194176.P3572830077646465168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194176.P3572830077646465168

/-! ## A194176.P8891509229316381722

`A194175(n+1)+a(A023443(n))` with `a(0)=0`
-/

namespace A194176.P8891509229316381722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194175 (n + 1) + a (A023443 n).toNat

end

end A194176.P8891509229316381722

/-! ## A194176.P15565346509901486492

`∑[A022841(∑[n+1])-A194111(n+1)]`
-/

namespace A194176.P15565346509901486492
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022841 (∑ j ∈ Finset.range (n + 1), f2 j) - A194111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194176.P15565346509901486492

/-! ## A194176.P3226082891277548909

`∑[A022841(∑[n+1])-∑[A022841(n+1)]]`
-/

namespace A194176.P3226082891277548909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022841 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022841 (∑ j ∈ Finset.range (n + 1), f2 j) - ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194176.P3226082891277548909

/-! ## A194176.P3795536400110355549

`∑[∑[A272532(A188396(n+1))]-1]`
-/

namespace A194176.P3795536400110355549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272532 (A188396 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194176.P3795536400110355549

/-!
# A194177: [sum{(k*r) : 1<=k<=n}], where [ ]=floor, ( )=fractional part, and r=sqrt(8).

The programs for A194177, there is no canonical definition to state claims against.
-/

/-! ## A194177.P1185119254043787947

`n-A194251(n+1)`
-/

namespace A194177.P1185119254043787947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194251 (n + 1)

end

end A194177.P1185119254043787947

/-! ## A194177.P7715799593829812174

`abs(A194251(abs(xor(n, -1)))-n)`
-/

namespace A194177.P7715799593829812174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A194251 |Int.xor (n : ℤ) (-1)|.toNat - (n : ℤ))|

end

end A194177.P7715799593829812174

/-! ## A194177.P14833921645063392819

`abs(n-A194251(Δ[n²]-n))`
-/

namespace A194177.P14833921645063392819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A194251 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A194177.P14833921645063392819

/-! ## A194177.P13420835563434117733

`abs(A194251(n+1)+A001489(n))`
-/

namespace A194177.P13420835563434117733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194251 (n + 1) + A001489 n|

end

end A194177.P13420835563434117733

/-! ## A194177.P2830213333968231432

`A020715(n)%(A194251(n+1)+6)`
-/

namespace A194177.P2830213333968231432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020715 n) (A194251 (n + 1) + 6)

end

end A194177.P2830213333968231432

/-! ## A194177.P17368747706111154818

`A057428(n)*A194251(n+1)+n`
-/

namespace A194177.P17368747706111154818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A194251 (n + 1) + (n : ℤ)

end

end A194177.P17368747706111154818

/-! ## A194177.P2095719221011317451

`∑{d}[A194251(n+1)+A001489(n), A000010(#)]`
-/

namespace A194177.P2095719221011317451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194251 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A194177.P2095719221011317451

/-! ## A194177.P4905609769833629295

`A000040(n+1)%(A000040(n+1)+A194251(n+1)+A001489(n))`
-/

namespace A194177.P4905609769833629295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A000040 (n + 1) + (A194251 (n + 1) + A001489 n))

end

end A194177.P4905609769833629295

/-! ## A194177.P9813653267271584833

`(A194251(n+1)+A001489(n))*-1%A000032(n+1)`
-/

namespace A194177.P9813653267271584833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A194251 (n + 1) + A001489 n) * Int.tmod (-1) (A000032 (n + 1))

end

end A194177.P9813653267271584833

/-! ## A194177.P4116460450844422420

`A025581(A194251(n+1)+∑[n])`
-/

namespace A194177.P4116460450844422420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A194251 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A194177.P4116460450844422420

/-!
# A194178: Partial sums of A194177.

The programs for A194178, there is no canonical definition to state claims against.
-/

/-! ## A194178.P7072501547903890255

`∑[A194177(n+1)]`
-/

namespace A194178.P7072501547903890255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194178.P7072501547903890255

/-! ## A194178.P11690019904563703887

`∑[n-A194251(n+1)]`
-/

namespace A194178.P11690019904563703887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194178.P11690019904563703887

/-! ## A194178.P6515050184245251336

`∑[n]-A194252(n+1)`
-/

namespace A194178.P6515050184245251336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A194252 (n + 1)

end

end A194178.P6515050184245251336

/-! ## A194178.P10016211568599318903

`-∑[A194251(-xor(n, -1))-n]`
-/

namespace A194178.P10016211568599318903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194251 (-Int.xor (n : ℤ) (-1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194178.P10016211568599318903

/-! ## A194178.P15130109779262396166

`∑[abs(n-A194251(Δ[n²]-n))]`
-/

namespace A194178.P15130109779262396166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A194251 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194178.P15130109779262396166

/-! ## A194178.P17406630370784010055

`abs(A194252(n+1)-A000217(n))`
-/

namespace A194178.P17406630370784010055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194252 (n + 1) - A000217 n|

end

end A194178.P17406630370784010055

/-! ## A194178.P7958292849163061609

`A000096(n)-(A194252(n+1)+n)`
-/

namespace A194178.P7958292849163061609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - (A194252 (n + 1) + (n : ℤ))

end

end A194178.P7958292849163061609

/-! ## A194178.P14175588523339763167

`∑[-(A194251(n+1)+A001489(n))]`
-/

namespace A194178.P14175588523339763167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A194251 (n + 1) + A001489 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194178.P14175588523339763167

/-! ## A194178.P15910737960608297874

`A001489(∑[A194251(n+1)])+∑[n]`
-/

namespace A194178.P15910737960608297874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194251 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194178.P15910737960608297874

/-! ## A194178.P8284459029214619170

`∑[A025581(A194251(n+1)+∑[n])]`
-/

namespace A194178.P8284459029214619170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A194251 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194178.P8284459029214619170

/-!
# A194179: [sum{(k*r) : 1<=k<=n}], where [ ]=floor, ( )=fractional part, and r=1/2+sqrt(8).

The programs for A194179, there is no canonical definition to state claims against.
-/

/-! ## A194179.P4759795702440186867

`Δ[A194180(floor(acot(n)+n))]`
-/

namespace A194179.P4759795702440186867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194180 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194179.P4759795702440186867

/-! ## A194179.P14105671068404168159

`Δ[A194180(round(acot(n)+n))]`
-/

namespace A194179.P14105671068404168159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194180 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194179.P14105671068404168159

/-! ## A194179.P17843756929395816838

`Δ[A194180(sqrt(n^(2%(n+1))))]`
-/

namespace A194179.P17843756929395816838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194180 (SequenceMachineLib.roundAway (Real.sqrt (n ^ (2 % (n + 1)) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194179.P17843756929395816838

/-! ## A194179.P15328324006875692890

`Δ[A194180(A028310(n))]`
-/

namespace A194179.P15328324006875692890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194180 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194179.P15328324006875692890

/-! ## A194179.P7191505291157873896

`Δ[A194180(sqrt(A253909(n)))]`
-/

namespace A194179.P7191505291157873896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194180 (SequenceMachineLib.roundAway (Real.sqrt (A253909 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194179.P7191505291157873896

/-! ## A194179.P9471880100078569425

`Δ[A194180(A065033(2*n))]`
-/

namespace A194179.P9471880100078569425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194180 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194179.P9471880100078569425

/-! ## A194179.P12687032511977927400

`Δ[A194180(A123108(2*n))]`
-/

namespace A194179.P12687032511977927400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194180 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194179.P12687032511977927400

/-! ## A194179.P12898825284376994369

`Δ[A194180(A000007(n)+n)]`
-/

namespace A194179.P12898825284376994369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194180 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194179.P12898825284376994369

/-! ## A194179.P11823374831543739206

`A194180(n+1)-A194180(A028310(n))`
-/

namespace A194179.P11823374831543739206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194180 (n + 1) - A194180 (A028310 n).toNat

end

end A194179.P11823374831543739206

/-! ## A194179.P9158710731372089913

`A194180(n+1)-A194180(sqrt(A253909(n)))`
-/

namespace A194179.P9158710731372089913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194180 (n + 1) - A194180 (SequenceMachineLib.roundAway (Real.sqrt (A253909 n : ℝ))).toNat

end

end A194179.P9158710731372089913

/-! ## A194179.P14211309812402870643

`A194180(n+1)-A194180(A233583(n+1))`
-/

namespace A194179.P14211309812402870643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194180 (n + 1) - A194180 (A233583 (n + 1)).toNat

end

end A194179.P14211309812402870643

/-! ## A194179.P15328806618922978219

`Δ[A194180(A233583(n+1))]`
-/

namespace A194179.P15328806618922978219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194180 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194179.P15328806618922978219

/-! ## A194179.P14973491117199450334

`Δ[A194180(A137734(n²))]`
-/

namespace A194179.P14973491117199450334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194180 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194179.P14973491117199450334

/-!
# A194180: Partial sums of A194179.

The programs for A194180, there is no canonical definition to state claims against.
-/

/-! ## A194180.P8030866583283360493

`∑[A194179(n+1)]`
-/

namespace A194180.P8030866583283360493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194180.P8030866583283360493

/-! ## A194180.P1952751245261463568

`∑[A059939(∑[A225393(n)])]`
-/

namespace A194180.P1952751245261463568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225393 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194180.P1952751245261463568

/-! ## A194180.P8428798743253520953

`∑[A101803(n)%A079437(n)]`
-/

namespace A194180.P8428798743253520953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101803 n) (A079437 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194180.P8428798743253520953

/-! ## A194180.P7247778983697878054

`∑[A005379(n)%A194000(3*n)]`
-/

namespace A194180.P7247778983697878054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005379 n) (A194000 (3 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194180.P7247778983697878054

/-! ## A194180.P10011922155187847923

`∑[A005379(n)]%A337459(3*(n+1))`
-/

namespace A194180.P10011922155187847923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A337459 (3 * (n + 1)))

end

end A194180.P10011922155187847923

/-!
# A194184: a(n) = A104272(n)-A193507(n).

The programs for A194184, there is no canonical definition to state claims against.
-/

/-! ## A194184.P3450595656937976270

`A104272(n+1)-A193507(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A194184.P3450595656937976270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - A193507 (n + 1)

end

end A194184.P3450595656937976270

/-! ## A194184.P17537335594222965254

`A194217(n+1)-A194186(n+1)`
-/

namespace A194184.P17537335594222965254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194217 (n + 1) - A194186 (n + 1)

end

end A194184.P17537335594222965254

/-! ## A194184.P16643086765314314086

`A104272(n+1)-(A194186(n+1)+A080359(n+1))`
-/

namespace A194184.P16643086765314314086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - (A194186 (n + 1) + A080359 (n + 1))

end

end A194184.P16643086765314314086

/-! ## A194184.P17316214302677078048

`A005408(A084139(n))-A168425(A028310(n))`
-/

namespace A194184.P17316214302677078048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A084139 n).toNat - A168425 (A028310 n).toNat

end

end A194184.P17316214302677078048

/-! ## A194184.P4534734797466661482

`A194217(A000027(n+1))+A001489(A194186(n+1))`
-/

namespace A194184.P4534734797466661482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194217 (A000027 (n + 1)).toNat + A001489 (A194186 (n + 1)).toNat

end

end A194184.P4534734797466661482

/-! ## A194184.P3360698435977632148

`A194658(n+1)+A194659(n+1)-(A194186(n+1)+A080359(n+1))`
-/

namespace A194184.P3360698435977632148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194658 (n + 1) + (A194659 (n + 1) - (A194186 (n + 1) + A080359 (n + 1)))

end

end A194184.P3360698435977632148

/-! ## A194184.P12370032764060781992

`A034694(A084139(n))-A193507(n+1)`
-/

namespace A194184.P12370032764060781992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A084139 n).toNat - A193507 (n + 1)

end

end A194184.P12370032764060781992

/-! ## A194184.P15043928443651708243

`A000040(A179196(n+1))-A193507(n+1)`
-/

namespace A194184.P15043928443651708243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A179196 (n + 1)).toNat - A193507 (n + 1)

end

end A194184.P15043928443651708243

/-! ## A194184.P13687678279974964012

`A080359(n+1)+A194217(n+1)-A193507(n+1)`
-/

namespace A194184.P13687678279974964012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080359 (n + 1) + (A194217 (n + 1) - A193507 (n + 1))

end

end A194184.P13687678279974964012

/-!
# A194186: a(n) = A193507(n) - A080359(n).

The programs for A194186, there is no canonical definition to state claims against.
-/

/-! ## A194186.P8833646006588450216

`A193507(n+1)-A080359(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A194186.P8833646006588450216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193507 (n + 1) - A080359 (n + 1)

end

end A194186.P8833646006588450216

/-! ## A194186.P7226231432435080405

`A194217(n+1)-A194184(n+1)`
-/

namespace A194186.P7226231432435080405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194217 (n + 1) - A194184 (n + 1)

end

end A194186.P7226231432435080405

/-! ## A194186.P16156064752070882806

`A194217(n+1)+A057428(n)*A194184(n+1)`
-/

namespace A194186.P16156064752070882806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194217 (n + 1) + A057428 n * A194184 (n + 1)

end

end A194186.P16156064752070882806

/-! ## A194186.P3154094784420861259

`A104272(n+1)-(A194184(n+1)+A080359(n+1))`
-/

namespace A194186.P3154094784420861259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - (A194184 (n + 1) + A080359 (n + 1))

end

end A194186.P3154094784420861259

/-! ## A194186.P16418613219547534076

`A168425(A028310(n))%A004273(A059316(n+1))`
-/

namespace A194186.P16418613219547534076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168425 (A028310 n).toNat) (A004273 (A059316 (n + 1)).toNat)

end

end A194186.P16418613219547534076

/-! ## A194186.P1952769375973811277

`A000040(A179196(n+1))-(A194184(n+1)+A080359(n+1))`
-/

namespace A194186.P1952769375973811277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A179196 (n + 1)).toNat - (A194184 (n + 1) + A080359 (n + 1))

end

end A194186.P1952769375973811277

/-! ## A194186.P8870215567573082654

`A000203(A193507(n+1))%A059316(n+1)`
-/

namespace A194186.P8870215567573082654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A193507 (n + 1)).toNat) (A059316 (n + 1))

end

end A194186.P8870215567573082654

/-! ## A194186.P3314664128204342871

`A193507(A000027(n+1))%A080359(n+1)`
-/

namespace A194186.P3314664128204342871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193507 (A000027 (n + 1)).toNat) (A080359 (n + 1))

end

end A194186.P3314664128204342871

/-! ## A194186.P18062487720915317644

`A193507(n+1)+A194217(n+1)-A104272(n+1)`
-/

namespace A194186.P18062487720915317644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193507 (n + 1) + (A194217 (n + 1) - A104272 (n + 1))

end

end A194186.P18062487720915317644

/-!
# A194187: Difference of n-th prime and (bitwise XOR of n and n-th prime).

The programs for A194187, the canonical program `A194187.P2031847061750070614` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194187 has offset 1).

The definition of A194187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194187.P15077235504050130424

`Δ[A007504(n)]-A070883(n+1)`
-/

namespace A194187.P15077235504050130424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A070883 (n + 1)

end

end A194187.P15077235504050130424

namespace A194187

/-- `Δ[A007504(n)]-A070883(n+1)` -/
def P15077235504050130424.Spec : Prop :=
  ∀ n, P15077235504050130424.a n = A194187 (n + 1)

end A194187

/-! ## A194187.P2031847061750070614

`A000040(n+1)-A070883(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194187

/-- `A000040(n+1)-A070883(n+1)` -/
def P2031847061750070614.Spec : Prop :=
  ∀ n, P2031847061750070614.a n = A194187 (n + 1)

theorem P2031847061750070614.correct : P2031847061750070614.Spec := by
  intro n
  simp only [A194187, Nat.add_sub_cancel]

end A194187

/-! ## A194187.P15212068251330905876

`abs(Δ[A022837(n)])-A070883(n+1)`
-/

namespace A194187.P15212068251330905876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A070883 (n + 1)

end

end A194187.P15212068251330905876

namespace A194187

/-- `abs(Δ[A022837(n)])-A070883(n+1)` -/
def P15212068251330905876.Spec : Prop :=
  ∀ n, P15212068251330905876.a n = A194187 (n + 1)

end A194187

/-! ## A194187.P9512848099852283320

`∑[A054541(n+1)]-A070883(n+1)`
-/

namespace A194187.P9512848099852283320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A070883 (n + 1)

end

end A194187.P9512848099852283320

namespace A194187

/-- `∑[A054541(n+1)]-A070883(n+1)` -/
def P9512848099852283320.Spec : Prop :=
  ∀ n, P9512848099852283320.a n = A194187 (n + 1)

end A194187

/-! ## A194187.P9166674594497086322

`A006093(n+1)+1-A070883(n+1)`
-/

namespace A194187.P9166674594497086322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A070883 (n + 1))

end

end A194187.P9166674594497086322

namespace A194187

/-- `A006093(n+1)+1-A070883(n+1)` -/
def P9166674594497086322.Spec : Prop :=
  ∀ n, P9166674594497086322.a n = A194187 (n + 1)

theorem P9166674594497086322.correct : P9166674594497086322.Spec := by
  intro n
  simp only [A194187, Nat.add_sub_cancel, A194187.P9166674594497086322.a, A194187.P2031847061750070614.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A070883, A070883.P5422218626691008934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194187

/-! ## A194187.P9860153128818208866

`A052147(n+1)-(A070883(n+1)+2)`
-/

namespace A194187.P9860153128818208866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - (A070883 (n + 1) + 2)

end

end A194187.P9860153128818208866

namespace A194187

/-- `A052147(n+1)-(A070883(n+1)+2)` -/
def P9860153128818208866.Spec : Prop :=
  ∀ n, P9860153128818208866.a n = A194187 (n + 1)

theorem P9860153128818208866.correct : P9860153128818208866.Spec := by
  intro n
  simp only [A194187, Nat.add_sub_cancel, A194187.P9860153128818208866.a, A194187.P2031847061750070614.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, A070883, A070883.P5422218626691008934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194187

/-! ## A194187.P7699881970880737769

`A008864(n+1)+xor(n+1, -A008864(n+1))`
-/

namespace A194187.P7699881970880737769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + Int.xor (n + 1 : ℤ) (-A008864 (n + 1))

end

end A194187.P7699881970880737769

namespace A194187

/-- `A008864(n+1)+xor(n+1, -A008864(n+1))` -/
def P7699881970880737769.Spec : Prop :=
  ∀ n, P7699881970880737769.a n = A194187 (n + 1)

end A194187

/-! ## A194187.P2978343715112879187

`A052147(n+1)-2-xor(n+1, sqrt(A001248(n+1)))`
-/

namespace A194187.P2978343715112879187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - 2 - Int.xor (n + 1 : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ)))

end

end A194187.P2978343715112879187

namespace A194187

/-- `A052147(n+1)-2-xor(n+1, sqrt(A001248(n+1)))` -/
def P2978343715112879187.Spec : Prop :=
  ∀ n, P2978343715112879187.a n = A194187 (n + 1)

end A194187

/-! ## A194187.P3656346848153543195

`A052147(n+1)-2-xor(n+1, A040976(n+1)+2)`
-/

namespace A194187.P3656346848153543195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - 2 - Int.xor (n + 1 : ℤ) (A040976 (n + 1) + 2)

end

end A194187.P3656346848153543195

namespace A194187

/-- `A052147(n+1)-2-xor(n+1, A040976(n+1)+2)` -/
def P3656346848153543195.Spec : Prop :=
  ∀ n, P3656346848153543195.a n = A194187 (n + 1)

theorem P3656346848153543195.correct : P3656346848153543195.Spec := by
  intro n
  simp only [A194187, Nat.add_sub_cancel, A194187.P3656346848153543195.a, A194187.P2031847061750070614.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A052147, A052147.P15217781913070555828.a, A070883, A070883.P5422218626691008934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194187

/-! ## A194187.P3842074349794859889

`A000040(n+1)-xor(A000027(n+1), A000040(n+1))`
-/

namespace A194187.P3842074349794859889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - Int.xor (A000027 (n + 1)) (A000040 (n + 1))

end

end A194187.P3842074349794859889

namespace A194187

/-- `A000040(n+1)-xor(A000027(n+1), A000040(n+1))` -/
def P3842074349794859889.Spec : Prop :=
  ∀ n, P3842074349794859889.a n = A194187 (n + 1)

theorem P3842074349794859889.correct : P3842074349794859889.Spec := by
  intro n
  simp only [A194187, Nat.add_sub_cancel, A194187.P3842074349794859889.a, A194187.P2031847061750070614.a, A000027, A000027.P10331202704469894836.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070883, A070883.P5422218626691008934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194187

/-! ## A194187.P829329170214677920

`2*and(n+1, A008578(n+2))-(n+1)`
-/

namespace A194187.P829329170214677920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n + 1 : ℤ) (A008578 (n + 2)) - (n + 1 : ℤ)

end

end A194187.P829329170214677920

namespace A194187

/-- `2*and(n+1, A008578(n+2))-(n+1)` -/
def P829329170214677920.Spec : Prop :=
  ∀ n, P829329170214677920.a n = A194187 (n + 1)

end A194187

/-! ## A194187.P10776052857449030895

`A000040(n+1)-xor(n+1, A008578(n+2))`
-/

namespace A194187.P10776052857449030895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - Int.xor (n + 1 : ℤ) (A008578 (n + 2))

end

end A194187.P10776052857449030895

namespace A194187

/-- `A000040(n+1)-xor(n+1, A008578(n+2))` -/
def P10776052857449030895.Spec : Prop :=
  ∀ n, P10776052857449030895.a n = A194187 (n + 1)

end A194187

/-! ## A194187.P891620101643044846

`A082500(2*(n+1))-xor(n+1, A082500(2*(n+1)))`
-/

namespace A194187.P891620101643044846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * (n + 1)) - Int.xor (n + 1 : ℤ) (A082500 (2 * (n + 1)))

end

end A194187.P891620101643044846

namespace A194187

/-- `A082500(2*(n+1))-xor(n+1, A082500(2*(n+1)))` -/
def P891620101643044846.Spec : Prop :=
  ∀ n, P891620101643044846.a n = A194187 (n + 1)

end A194187

/-! ## A194187.P12199663303376526850

`A219606(2*(n+1))-xor(n+1, A219606(2*(n+1)))`
-/

namespace A194187.P12199663303376526850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * (n + 1)) - Int.xor (n + 1 : ℤ) (A219606 (2 * (n + 1)))

end

end A194187.P12199663303376526850

namespace A194187

/-- `A219606(2*(n+1))-xor(n+1, A219606(2*(n+1)))` -/
def P12199663303376526850.Spec : Prop :=
  ∀ n, P12199663303376526850.a n = A194187 (n + 1)

end A194187

/-! ## A194187.P3375663490069668687

`p?[A000037(n+1)]-A070883(n+1)`
-/

namespace A194187.P3375663490069668687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A070883 (n + 1)

end

end A194187.P3375663490069668687

namespace A194187

/-- `p?[A000037(n+1)]-A070883(n+1)` -/
def P3375663490069668687.Spec : Prop :=
  ∀ n, P3375663490069668687.a n = A194187 (n + 1)

end A194187

/-!
# A194188: Triangle read by rows in which row n lists the numbers k >= 0 such that n-k and n+k are both odd noncomposite numbers.

The programs for A194188, there is no canonical definition to state claims against.
-/

/-! ## A194188.P10373374281553442972

`A267814(A157221(n))+A229946(n)`
-/

namespace A194188.P10373374281553442972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267814 (A157221 n).toNat + A229946 n

end

end A194188.P10373374281553442972

/-! ## A194188.P17166935581797511409

`A006218(A216134(n))%A206915(n)`
-/

namespace A194188.P17166935581797511409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006218 (A216134 n).toNat) (A206915 n)

end

end A194188.P17166935581797511409

/-! ## A194188.P12687490732565289803

`A267682(n)%A000005(A032557(n+1))`
-/

namespace A194188.P12687490732565289803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267682 n) (A000005 (A032557 (n + 1)).toNat)

end

end A194188.P12687490732565289803

/-! ## A194188.P3380375433510042264

`A004719(A018008(n))%A278539(n+1)`
-/

namespace A194188.P3380375433510042264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004719 (A018008 n).toNat) (A278539 (n + 1))

end

end A194188.P3380375433510042264

/-! ## A194188.P14552897431099384967

`A063733(A001333(n))%A305897(n+1)`
-/

namespace A194188.P14552897431099384967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063733 (A001333 n).toNat) (A305897 (n + 1))

end

end A194188.P14552897431099384967

/-!
# A194189: Number of primes between the n-th triangular number and the n-th square.

The programs for A194189, the canonical program `A194189.P14886406155760808185` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194189 has offset 1).

The definition of A194189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194189.P14886406155760808185

`A000720((n+1)²)-A000720((n+1)*(n+2)/2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194189

/-- `A000720((n+1)²)-A000720((n+1)*(n+2)/2)` -/
def P14886406155760808185.Spec : Prop :=
  ∀ n, P14886406155760808185.a n = A194189 (n + 1)

theorem P14886406155760808185.correct : P14886406155760808185.Spec := by
  intro n
  simp only [A194189, Nat.add_sub_cancel]

end A194189

/-! ## A194189.P18023174637330569418

`∑[A014085(n)-A066888(n)]`
-/

namespace A194189.P18023174637330569418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n - A066888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194189.P18023174637330569418

namespace A194189

/-- `∑[A014085(n)-A066888(n)]` -/
def P18023174637330569418.Spec : Prop :=
  ∀ n, P18023174637330569418.a n = A194189 (n + 1)

end A194189

/-! ## A194189.P14819770933594929215

`∑[A014085(n)]-A111208(n+1)`
-/

namespace A194189.P14819770933594929215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A111208 (n + 1)

end

end A194189.P14819770933594929215

namespace A194189

/-- `∑[A014085(n)]-A111208(n+1)` -/
def P14819770933594929215.Spec : Prop :=
  ∀ n, P14819770933594929215.a n = A194189 (n + 1)

end A194189

/-! ## A194189.P17432191767136494476

`A038107(n+1)-A111208(n+1)`
-/

namespace A194189.P17432191767136494476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - A111208 (n + 1)

end

end A194189.P17432191767136494476

namespace A194189

/-- `A038107(n+1)-A111208(n+1)` -/
def P17432191767136494476.Spec : Prop :=
  ∀ n, P17432191767136494476.a n = A194189 (n + 1)

end A194189

/-! ## A194189.P9004814671507163884

`A220506(2*(n+1))-A111208(n+1)`
-/

namespace A194189.P9004814671507163884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220506 (2 * (n + 1)) - A111208 (n + 1)

end

end A194189.P9004814671507163884

namespace A194189

/-- `A220506(2*(n+1))-A111208(n+1)` -/
def P9004814671507163884.Spec : Prop :=
  ∀ n, P9004814671507163884.a n = A194189 (n + 1)

end A194189

/-! ## A194189.P11849656013401965564

`A038107(n+1)-A000720(∑[n+1])`
-/

namespace A194189.P11849656013401965564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - A000720 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194189.P11849656013401965564

namespace A194189

/-- `A038107(n+1)-A000720(∑[n+1])` -/
def P11849656013401965564.Spec : Prop :=
  ∀ n, P11849656013401965564.a n = A194189 (n + 1)

end A194189

/-! ## A194189.P3485669235811314601

`A000720((n+1)²)-A111208(n+1)`
-/

namespace A194189.P3485669235811314601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1) ^ 2) - A111208 (n + 1)

end

end A194189.P3485669235811314601

namespace A194189

/-- `A000720((n+1)²)-A111208(n+1)` -/
def P3485669235811314601.Spec : Prop :=
  ∀ n, P3485669235811314601.a n = A194189 (n + 1)

end A194189

/-!
# A194190: Number of ways to arrange 5 indistinguishable points on an n X n square grid so that no three points are collinear at any angle.

The programs for A194190, there is no canonical definition to state claims against.
-/

/-! ## A194190.P15607523821154811755

`A194193(Δ[A264443(n)])`
-/

namespace A194190.P15607523821154811755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194193 (f1 (n + 1) - f1 n).toNat

end

end A194190.P15607523821154811755

/-! ## A194190.P10851993559244243673

`A194193(A046691(n+3))`
-/

namespace A194190.P10851993559244243673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194193 (A046691 (n + 3)).toNat

end

end A194190.P10851993559244243673

/-! ## A194190.P4946811622849907679

`A194193(A056115(n)+11)`
-/

namespace A194190.P4946811622849907679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194193 (A056115 n + 11).toNat

end

end A194190.P4946811622849907679

/-! ## A194190.P9916461140682035827

`A194193(eq[2, A092921(n)])`
-/

namespace A194190.P9916461140682035827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194190.P9916461140682035827

/-! ## A194190.P17003603262000560654

`A194193(eq[3, A152157(n)])`
-/

namespace A194190.P17003603262000560654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194190.P17003603262000560654

/-!
# A194191: Number of ways to arrange 6 indistinguishable points on an n X n square grid so that no three points are collinear at any angle.

The programs for A194191, there is no canonical definition to state claims against.
-/

/-! ## A194191.P6226190465700962956

`A194193(A052905(n+3))`
-/

namespace A194191.P6226190465700962956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194193 (A052905 (n + 3)).toNat

end

end A194191.P6226190465700962956

/-! ## A194191.P15319063647297766765

`A194193(A302537(n)+15)`
-/

namespace A194191.P15319063647297766765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194193 (A302537 n + 15).toNat

end

end A194191.P15319063647297766765

/-! ## A194191.P12334870182218755320

`A194193(eq[3, A219347(n)])`
-/

namespace A194191.P12334870182218755320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194191.P12334870182218755320

/-! ## A194191.P6766982859654342956

`A194193(eq[5, A152157(n)])`
-/

namespace A194191.P6766982859654342956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194191.P6766982859654342956

/-! ## A194191.P9202699666849204146

`A194193(eq[5, A193592(n)])`
-/

namespace A194191.P9202699666849204146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194191.P9202699666849204146

/-!
# A194192: Number of ways to arrange 7 indistinguishable points on an n X n square grid so that no three points are collinear at any angle.

The programs for A194192, there is no canonical definition to state claims against.
-/

/-! ## A194192.P1541544198722717721

`A194193(eq[4, A219347(n)])`
-/

namespace A194192.P1541544198722717721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194192.P1541544198722717721

/-! ## A194192.P318536150784150204

`A194193(eq[6, A193592(n)])`
-/

namespace A194192.P318536150784150204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194192.P318536150784150204

/-! ## A194192.P17900980777441794213

`A194193(eq[7, A152157(n)])`
-/

namespace A194192.P17900980777441794213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194192.P17900980777441794213

/-! ## A194192.P1807718586745056640

`A194193(A000124(n+7)-7)`
-/

namespace A194192.P1807718586745056640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194193 (A000124 (n + 7) - 7).toNat

end

end A194192.P1807718586745056640

/-! ## A194192.P7799882970315644344

`A194193(eq[7, A200370(n+1)])`
-/

namespace A194192.P7799882970315644344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194192.P7799882970315644344

/-!
# A194193: Square array read by antidiagonals downwards: T(n,k) = number of ways to arrange k indistinguishable points on an n X n square grid so that no three points are collinear at any angle.

The programs for A194193, there is no canonical definition to state claims against.
-/

/-! ## A194193.P1858460077735966194

`A072089(C(A133819(n+1), A004736(n+1)))`
-/

namespace A194193.P1858460077735966194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (Nat.choose (A133819 (n + 1)).toNat (A004736 (n + 1)).toNat)

end

end A194193.P1858460077735966194

/-! ## A194193.P15620691490309096801

`A351870(C(A133819(n+1), A004736(n+1)))`
-/

namespace A194193.P15620691490309096801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (Nat.choose (A133819 (n + 1)).toNat (A004736 (n + 1)).toNat)

end

end A194193.P15620691490309096801

/-! ## A194193.P16557970391425551273

`A182406(n+1)*A326198(A048473(n))`
-/

namespace A194193.P16557970391425551273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182406 (n + 1) * A326198 (A048473 n).toNat

end

end A194193.P16557970391425551273

/-! ## A194193.P3473657895535080535

`A086342(A301462(n))*A182406(n+1)`
-/

namespace A194193.P3473657895535080535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A301462 n).toNat * A182406 (n + 1)

end

end A194193.P3473657895535080535

/-! ## A194193.P14033372722742711145

`C(A133819(A032559(n+1)), A004736(n+1))`
-/

namespace A194193.P14033372722742711145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A133819 (A032559 (n + 1)).toNat).toNat (A004736 (n + 1)).toNat

end

end A194193.P14033372722742711145

/-!
# A194194: Primes of the form k^6 + k^5 + k^4 + k^3 + k^2 + k + 1 where k is nonprime.

The programs for A194194, there is no canonical definition to state claims against.
-/

/-! ## A194194.P9280069831988225501

`A053716(A288939(n+1))`
-/

namespace A194194.P9280069831988225501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (A288939 (n + 1)).toNat

end

end A194194.P9280069831988225501

/-! ## A194194.P15239610817842746764

`A053716(∩[A018252(n+1), A100330(n+1)])`
-/

namespace A194194.P15239610817842746764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A194194.P15239610817842746764

/-! ## A194194.P14792836474358111533

`A053716(∩[A056653(n+1), A100330(n+1)])`
-/

namespace A194194.P14792836474358111533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A194194.P14792836474358111533

/-! ## A194194.P941684098609537896

`A228290(∩[A018252(n+1), A100330(n+1)])+1`
-/

namespace A194194.P941684098609537896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228290 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A194194.P941684098609537896

/-! ## A194194.P18379910093181373302

`A228290(∩[A056653(n+1), A100330(n+1)])+1`
-/

namespace A194194.P18379910093181373302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228290 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A194194.P18379910093181373302

/-!
# A194195: First inverse function (numbers of rows) for pairing function A060734.

The programs for A194195, the canonical program `A194195.P697157208742840349` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194195 has offset 1).

The definition of A194195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194195.P11824413324142806473

`A194258(A020703(n+1))`
-/

namespace A194195.P11824413324142806473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (A020703 (n + 1)).toNat

end

end A194195.P11824413324142806473

namespace A194195

/-- `A194258(A020703(n+1))` -/
def P11824413324142806473.Spec : Prop :=
  ∀ n, P11824413324142806473.a n = A194195 (n + 1)

end A194195

/-! ## A194195.P15018093508472516382

`A381232(n)+A194258(n+1)`
-/

namespace A194195.P15018093508472516382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381232 n + A194258 (n + 1)

end

end A194195.P15018093508472516382

namespace A194195

/-- `A381232(n)+A194258(n+1)` -/
def P15018093508472516382.Spec : Prop :=
  ∀ n, P15018093508472516382.a n = A194195 (n + 1)

end A194195

/-! ## A194195.P6799424042813064047

`A194258(n+1)-A196199(n)`
-/

namespace A194195.P6799424042813064047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (n + 1) - A196199 n

end

end A194195.P6799424042813064047

namespace A194195

/-- `A194258(n+1)-A196199(n)` -/
def P6799424042813064047.Spec : Prop :=
  ∀ n, P6799424042813064047.a n = A194195 (n + 1)

end A194195

/-! ## A194195.P16096910441821076183

`(A080883(n)+A004737(n+1))/2`
-/

namespace A194195.P16096910441821076183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080883 n + A004737 (n + 1) : ℚ) / 2

end

end A194195.P16096910441821076183

namespace A194195

/-- `(A080883(n)+A004737(n+1))/2` -/
def P16096910441821076183.Spec : Prop :=
  ∀ n, P16096910441821076183.a n = (A194195 (n + 1) : ℚ)

end A194195

/-! ## A194195.P8573365375400280561

`A209302(n+1)+1-A194258(n+1)`
-/

namespace A194195.P8573365375400280561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (n + 1) + (1 - A194258 (n + 1))

end

end A194195.P8573365375400280561

namespace A194195

/-- `A209302(n+1)+1-A194258(n+1)` -/
def P8573365375400280561.Spec : Prop :=
  ∀ n, P8573365375400280561.a n = A194195 (n + 1)

end A194195

/-! ## A194195.P697157208742840349

`A004737(n+1)+A004739(n+1)*A079813(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A194195

/-- `A004737(n+1)+A004739(n+1)*A079813(n+1)` -/
def P697157208742840349.Spec : Prop :=
  ∀ n, P697157208742840349.a n = A194195 (n + 1)

theorem P697157208742840349.correct : P697157208742840349.Spec := by
  intro n
  simp only [A194195, Nat.add_sub_cancel]

end A194195

/-! ## A194195.P8816259003112429834

`A269501(A170949(n+1))`
-/

namespace A194195.P8816259003112429834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269501 (A170949 (n + 1)).toNat

end

end A194195.P8816259003112429834

namespace A194195

/-- `A269501(A170949(n+1))` -/
def P8816259003112429834.Spec : Prop :=
  ∀ n, P8816259003112429834.a n = A194195 (n + 1)

end A194195

/-! ## A194195.P6416493163380099671

`A004737(n+1)+A004738(n+2)*A079813(n+1)`
-/

namespace A194195.P6416493163380099671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) + A004738 (n + 2) * A079813 (n + 1)

end

end A194195.P6416493163380099671

namespace A194195

/-- `A004737(n+1)+A004738(n+2)*A079813(n+1)` -/
def P6416493163380099671.Spec : Prop :=
  ∀ n, P6416493163380099671.a n = A194195 (n + 1)

end A194195

/-! ## A194195.P13484522718884770578

`A220603(n+1)+A220604(n+1)-A194258(n+1)`
-/

namespace A194195.P13484522718884770578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220603 (n + 1) + (A220604 (n + 1) - A194258 (n + 1))

end

end A194195.P13484522718884770578

namespace A194195

/-- `A220603(n+1)+A220604(n+1)-A194258(n+1)` -/
def P13484522718884770578.Spec : Prop :=
  ∀ n, P13484522718884770578.a n = A194195 (n + 1)

end A194195

/-! ## A194195.P391923544105705682

`A002260(A064790(n+1))`
-/

namespace A194195.P391923544105705682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A064790 (n + 1)).toNat

end

end A194195.P391923544105705682

namespace A194195

/-- `A002260(A064790(n+1))` -/
def P391923544105705682.Spec : Prop :=
  ∀ n, P391923544105705682.a n = A194195 (n + 1)

end A194195

/-! ## A194195.P7814128607081441646

`A004736(A064788(n+1))`
-/

namespace A194195.P7814128607081441646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A064788 (n + 1)).toNat

end

end A194195.P7814128607081441646

namespace A194195

/-- `A004736(A064788(n+1))` -/
def P7814128607081441646.Spec : Prop :=
  ∀ n, P7814128607081441646.a n = A194195 (n + 1)

end A194195

/-! ## A194195.P4964370518651828249

`A168258(A007606(n+1))`
-/

namespace A194195.P4964370518651828249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168258 (A007606 (n + 1)).toNat

end

end A194195.P4964370518651828249

namespace A194195

/-- `A168258(A007606(n+1))` -/
def P4964370518651828249.Spec : Prop :=
  ∀ n, P4964370518651828249.a n = A194195 (n + 1)

end A194195

/-! ## A194195.P16054186931591513073

`A168258(A161983(n+1))`
-/

namespace A194195.P16054186931591513073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168258 (A161983 (n + 1)).toNat

end

end A194195.P16054186931591513073

namespace A194195

/-- `A168258(A161983(n+1))` -/
def P16054186931591513073.Spec : Prop :=
  ∀ n, P16054186931591513073.a n = A194195 (n + 1)

end A194195

/-! ## A194195.P3693964787764946803

`A209278(A056536(n+1))`
-/

namespace A194195.P3693964787764946803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A056536 (n + 1)).toNat

end

end A194195.P3693964787764946803

namespace A194195

/-- `A209278(A056536(n+1))` -/
def P3693964787764946803.Spec : Prop :=
  ∀ n, P3693964787764946803.a n = A194195 (n + 1)

end A194195

/-! ## A194195.P1084679425633135572

`A208234(A194280(n+1))`
-/

namespace A194195.P1084679425633135572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (A194280 (n + 1)).toNat

end

end A194195.P1084679425633135572

namespace A194195

/-- `A208234(A194280(n+1))` -/
def P1084679425633135572.Spec : Prop :=
  ∀ n, P1084679425633135572.a n = A194195 (n + 1)

end A194195

/-! ## A194195.P4697610992729189387

`A210535(A214928(n+1))`
-/

namespace A194195.P4697610992729189387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (A214928 (n + 1)).toNat

end

end A194195.P4697610992729189387

namespace A194195

/-- `A210535(A214928(n+1))` -/
def P4697610992729189387.Spec : Prop :=
  ∀ n, P4697610992729189387.a n = A194195 (n + 1)

end A194195

/-! ## A194195.P11105472962562840002

`A213195(A211377(A211377(A216252(n+1))))`
-/

namespace A194195.P11105472962562840002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213195 (A211377 (A211377 (A216252 (n + 1)).toNat).toNat).toNat

end

end A194195.P11105472962562840002

namespace A194195

/-- `A213195(A211377(A211377(A216252(n+1))))` -/
def P11105472962562840002.Spec : Prop :=
  ∀ n, P11105472962562840002.a n = A194195 (n + 1)

end A194195

/-! ## A194195.P1602494956178283360

`A208234(A188568(A064788(A188568(A188568(n+1)))))`
-/

namespace A194195.P1602494956178283360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (A188568 (A064788 (A188568 (A188568 (n + 1)).toNat).toNat).toNat).toNat

end

end A194195.P1602494956178283360

namespace A194195

/-- `A208234(A188568(A064788(A188568(A188568(n+1)))))` -/
def P1602494956178283360.Spec : Prop :=
  ∀ n, P1602494956178283360.a n = A194195 (n + 1)

end A194195

/-!
# A194196: Numbers k such that the sum of the divisors of k and the sum of the distinct prime divisors of k are both a square.

The programs for A194196, the canonical program `A194196.P7947729533032304729` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194196 has offset 1).

The definition of A194196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194196.P7947729533032304729

`∩[A006532(n+1), A164722(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A194196

/-- `∩[A006532(n+1), A164722(n+1)]` -/
def P7947729533032304729.Spec : Prop :=
  ∀ n, (P7947729533032304729.a n : ℤ) = A194196 (n + 1)

theorem P7947729533032304729.correct : P7947729533032304729.Spec := by
  intro n
  simp only [A194196, Nat.add_sub_cancel]

end A194196

/-!
# A194197: Number of partitions of 60n into parts <= 6.

The programs for A194197, the canonical program `A194197.P10047679271071113195` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194197 has offset 0).

The definition of A194197 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001402, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A194197.P10047679271071113195

`A001402(60*n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194197

/-- `A001402(60*n)` -/
def P10047679271071113195.Spec : Prop :=
  ∀ n, P10047679271071113195.a n = A194197 n

theorem P10047679271071113195.correct : P10047679271071113195.Spec := by
  intro n
  simp only [A194197]

end A194197

/-! ## A194197.P14155972502283171182

`A256226(A017281(n))`
-/

namespace A194197.P14155972502283171182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256226 (A017281 n).toNat

end

end A194197.P14155972502283171182

namespace A194197

/-- `A256226(A017281(n))` -/
def P14155972502283171182.Spec : Prop :=
  ∀ n, P14155972502283171182.a n = A194197 n

end A194197

/-! ## A194197.P13996515148380383735

`A256226(A008588(n)+4*n+1)`
-/

namespace A194197.P13996515148380383735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256226 (A008588 n + (4 * n + 1 : ℤ)).toNat

end

end A194197.P13996515148380383735

namespace A194197

/-- `A256226(A008588(n)+4*n+1)` -/
def P13996515148380383735.Spec : Prop :=
  ∀ n, P13996515148380383735.a n = A194197 n

end A194197

/-! ## A194197.P14983023192742627574

`A256540(15*n)`
-/

namespace A194197.P14983023192742627574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256540 (15 * n)

end

end A194197.P14983023192742627574

namespace A194197

/-- `A256540(15*n)` -/
def P14983023192742627574.Spec : Prop :=
  ∀ n, P14983023192742627574.a n = A194197 n

theorem P14983023192742627574.correct : P14983023192742627574.Spec := by
  intro n
  simp only [A194197, Nat.add_sub_cancel, A194197.P14983023192742627574.a, A194197.P10047679271071113195.a, A001402, A001402.P12217424370709294362.f1, A001402.P12217424370709294362.a, A256540, A256540.P17379518847437446653.a, A037145, A037145.P14292097428719380923.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194197

/-! ## A194197.P641716685313507968

`A256315(3*7*n-(n-2))`
-/

namespace A194197.P641716685313507968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256315 ((3 * (7 * n) : ℤ) - ((n : ℤ) - 2)).toNat

end

end A194197.P641716685313507968

namespace A194197

/-- `A256315(3*7*n-(n-2))` -/
def P641716685313507968.Spec : Prop :=
  ∀ n, P641716685313507968.a n = A194197 n

end A194197

/-! ## A194197.P12608368888686167834

`A256310(A139222(n+1))`
-/

namespace A194197.P12608368888686167834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256310 (A139222 (n + 1)).toNat

end

end A194197.P12608368888686167834

namespace A194197

/-- `A256310(A139222(n+1))` -/
def P12608368888686167834.Spec : Prop :=
  ∀ n, P12608368888686167834.a n = A194197 n

end A194197

/-! ## A194197.P17202737985953946746

`A026812(3*A017293(2*n))`
-/

namespace A194197.P17202737985953946746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (3 * A017293 (2 * n)).toNat

end

end A194197.P17202737985953946746

namespace A194197

/-- `A026812(3*A017293(2*n))` -/
def P17202737985953946746.Spec : Prop :=
  ∀ n, P17202737985953946746.a n = A194197 n

end A194197

/-!
# A194198: [sum{(k*r) : 1<=k<=n}], where [ ]=floor, ( )=fractional part, and r=sqrt(10).

The programs for A194198, there is no canonical definition to state claims against.
-/

/-! ## A194198.P10035532905899566064

`Δ[A194199(A028310(n))]`
-/

namespace A194198.P10035532905899566064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194199 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194198.P10035532905899566064

/-! ## A194198.P15627454968626381463

`A194199(n+1)-A194199(A028310(n))`
-/

namespace A194198.P15627454968626381463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194199 (n + 1) - A194199 (A028310 n).toNat

end

end A194198.P15627454968626381463

/-! ## A194198.P4931189048900468305

`A177102(∑[n+1])-A194113(n+1)`
-/

namespace A194198.P4931189048900468305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177102 (∑ j ∈ Finset.range (n + 1), f1 j) - A194113 (n + 1)

end

end A194198.P4931189048900468305

/-! ## A194198.P6233514464163068907

`A177102(C(n+2, 2))%A194113(n+1)`
-/

namespace A194198.P6233514464163068907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177102 (Nat.choose (n + 2) 2)) (A194113 (n + 1))

end

end A194198.P6233514464163068907

/-! ## A194198.P16797269670345518586

`A177102(∑[n+1])-∑[A177102(n+1)]`
-/

namespace A194198.P16797269670345518586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177102 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194198.P16797269670345518586

/-! ## A194198.P10047260590217750696

`A198265(∑[n+1])-(A194113(n+1)+1)`
-/

namespace A194198.P10047260590217750696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198265 (∑ j ∈ Finset.range (n + 1), f1 j) - (A194113 (n + 1) + 1)

end

end A194198.P10047260590217750696

/-! ## A194198.P330609926132543269

`A177102(∑[n]+n+1)%A194113(n+1)`
-/

namespace A194198.P330609926132543269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177102 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))) (A194113 (n + 1))

end

end A194198.P330609926132543269

/-!
# A194199: Partial sums of A194198.

The programs for A194199, there is no canonical definition to state claims against.
-/

/-! ## A194199.P6981180664434498520

`∑[A194198(n+1)]`
-/

namespace A194199.P6981180664434498520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194199.P6981180664434498520

/-! ## A194199.P12103580815460794075

`∑[A177102(∑[n+1])-A194113(n+1)]`
-/

namespace A194199.P12103580815460794075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177102 (∑ j ∈ Finset.range (n + 1), f2 j) - A194113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194199.P12103580815460794075

/-! ## A194199.P18370541417011832335

`∑[A177102(C(n+2, 2))%A194113(n+1)]`
-/

namespace A194199.P18370541417011832335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177102 (Nat.choose (n + 2) 2)) (A194113 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194199.P18370541417011832335

/-! ## A194199.P9858294661599870195

`∑[A198265(∑[n+1])-(A194113(n+1)+1)]`
-/

namespace A194199.P9858294661599870195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198265 (∑ j ∈ Finset.range (n + 1), f2 j) - (A194113 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194199.P9858294661599870195

/-! ## A194199.P16577553130884367116

`∑[A177102(∑[n]+n+1)%A194113(n+1)]`
-/

namespace A194199.P16577553130884367116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177102 (∑ j ∈ Finset.range (n + 1), f2 j + (n + 1))) (A194113 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194199.P16577553130884367116

