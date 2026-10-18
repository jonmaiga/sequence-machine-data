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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A231701: Numbers > 100 with decimal digits in arithmetic progression mod 10.

The programs for A231701, there is no canonical definition to state claims against.
-/

/-! ## A231701.P11087191230221355643

`eq[10, A076313(A098488(n))]`
-/

namespace A231701.P11087191230221355643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 (A098488 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231701.P11087191230221355643

/-!
# A231702: Number of (n+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to one.

The programs for A231702, there is no canonical definition to state claims against.
-/

/-! ## A231702.P12382024453480697289

`A231710(∑[4*n]+1)`
-/

namespace A231702.P12382024453480697289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231702.P12382024453480697289

/-! ## A231702.P3661959973119113454

`record[A003982(n)*A231710(n+1)]`
-/

namespace A231702.P3661959973119113454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A231710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231702.P3661959973119113454

/-! ## A231702.P4676069813373747854

`record[gcd(A231710(n+1), A231713(n))]`
-/

namespace A231702.P4676069813373747854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A231710 (n + 1)) (A231713 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231702.P4676069813373747854

/-! ## A231702.P7145252934470614908

`A231710(A001844(n))+A036600(n)`
-/

namespace A231702.P7145252934470614908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (A001844 n).toNat + A036600 n

end

end A231702.P7145252934470614908

/-! ## A231702.P18065756724558870993

`lcm(A015571(n), A231710(A001844(n)))`
-/

namespace A231702.P18065756724558870993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015571 n) (A231710 (A001844 n).toNat)

end

end A231702.P18065756724558870993

/-!
# A231703: Number of (n+1) X (1+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to one.

The programs for A231703, there is no canonical definition to state claims against.
-/

/-! ## A231703.P8004691905829557252

`A231710(∑[n]+1)`
-/

namespace A231703.P8004691905829557252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231703.P8004691905829557252

/-! ## A231703.P12599873186364670735

`record[A010054(n)*A231710(n+1)]`
-/

namespace A231703.P12599873186364670735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A231710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231703.P12599873186364670735

/-! ## A231703.P10737955511208684345

`record[A231710(n+1)/A022166(n)]`
-/

namespace A231703.P10737955511208684345
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231710 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231703.P10737955511208684345

/-! ## A231703.P9197521280138858706

`record[root(A231710(n+1), A001498(n))]`
-/

namespace A231703.P9197521280138858706
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231710 (n + 1) : ℝ) ^ (1 / (A001498 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231703.P9197521280138858706

/-! ## A231703.P6830528640631129891

`record[root(A231710(n+1), A008279(n))]`
-/

namespace A231703.P6830528640631129891
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231710 (n + 1) : ℝ) ^ (1 / (A008279 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231703.P6830528640631129891

/-!
# A231704: Number of (n+1)X(2+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to one.

The programs for A231704, there is no canonical definition to state claims against.
-/

/-! ## A231704.P14669337100444477464

`A231710(∑[n+1]+2)`
-/

namespace A231704.P14669337100444477464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231704.P14669337100444477464

/-! ## A231704.P10338358396375306175

`record[A010054(n)*A231710(n+2)]`
-/

namespace A231704.P10338358396375306175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A231710 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231704.P10338358396375306175

/-! ## A231704.P8318104786397704147

`record[gcd(A002262(n), A231710(n+2))]`
-/

namespace A231704.P8318104786397704147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A231710 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231704.P8318104786397704147

/-! ## A231704.P15152404602116163639

`record[root(A231710(n+2), A200370(n+1))]`
-/

namespace A231704.P15152404602116163639
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231710 (n + 2) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231704.P15152404602116163639

/-! ## A231704.P14105695568823689411

`record[root(A231710(n+2), A004739(2*n+1))]`
-/

namespace A231704.P14105695568823689411
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231710 (n + 2) : ℝ) ^ (1 / (A004739 (2 * n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231704.P14105695568823689411

/-!
# A231705: Number of (n+1)X(3+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to one.

The programs for A231705, there is no canonical definition to state claims against.
-/

/-! ## A231705.P3071063789689996994

`A231710(∑[n+2]+4)`
-/

namespace A231705.P3071063789689996994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231705.P3071063789689996994

/-! ## A231705.P5693665839741395061

`A231710(A167614(n+1))+A011737(n)`
-/

namespace A231705.P5693665839741395061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (A167614 (n + 1)).toNat + A011737 n

end

end A231705.P5693665839741395061

/-! ## A231705.P8770765293437752656

`A231710(A167614(n+1))+A185284(n)`
-/

namespace A231705.P8770765293437752656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (A167614 (n + 1)).toNat + A185284 n

end

end A231705.P8770765293437752656

/-! ## A231705.P5133928287261794967

`lcm(A033999(n), A231710(A167614(n+1)))`
-/

namespace A231705.P5133928287261794967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A231710 (A167614 (n + 1)).toNat)

end

end A231705.P5133928287261794967

/-! ## A231705.P14639240624094988757

`A231710(A167614(n+1))%A231709(n+1)`
-/

namespace A231705.P14639240624094988757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231710 (A167614 (n + 1)).toNat) (A231709 (n + 1))

end

end A231705.P14639240624094988757

/-!
# A231706: Number of (n+1)X(4+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to one.

The programs for A231706, there is no canonical definition to state claims against.
-/

/-! ## A231706.P17101641485428662280

`A231710(A374004(n+1))`
-/

namespace A231706.P17101641485428662280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (A374004 (n + 1)).toNat

end

end A231706.P17101641485428662280

/-! ## A231706.P6980851365002911543

`A231710(A141214(n)+7)`
-/

namespace A231706.P6980851365002911543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (A141214 n + 7).toNat

end

end A231706.P6980851365002911543

/-! ## A231706.P7934964481558534648

`A231710(A055999(n)+10)`
-/

namespace A231706.P7934964481558534648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (A055999 n + 10).toNat

end

end A231706.P7934964481558534648

/-! ## A231706.P18432919052056193904

`A231710(A167614(n+2)+1)`
-/

namespace A231706.P18432919052056193904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (A167614 (n + 2) + 1).toNat

end

end A231706.P18432919052056193904

/-! ## A231706.P13318930253817950369

`A231710(Δ[A264443(n)-n²])`
-/

namespace A231706.P13318930253817950369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (f1 (n + 1) - f1 n).toNat

end

end A231706.P13318930253817950369

/-!
# A231707: Number of (n+1)X(5+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to one.

The programs for A231707, there is no canonical definition to state claims against.
-/

/-! ## A231707.P14802597524277199139

`A231710(A374005(n+1))`
-/

namespace A231707.P14802597524277199139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (A374005 (n + 1)).toNat

end

end A231707.P14802597524277199139

/-! ## A231707.P17176497654605355368

`A231710(A167499(n+3))`
-/

namespace A231707.P17176497654605355368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (A167499 (n + 3)).toNat

end

end A231707.P17176497654605355368

/-! ## A231707.P13283834289970242752

`A231710(Δ[A264443(n)])`
-/

namespace A231707.P13283834289970242752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (f1 (n + 1) - f1 n).toNat

end

end A231707.P13283834289970242752

/-! ## A231707.P209105598970619744

`A231710(A046691(n+3))`
-/

namespace A231707.P209105598970619744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (A046691 (n + 3)).toNat

end

end A231707.P209105598970619744

/-! ## A231707.P385752893978638648

`A231710(eq[4, A193592(n)])`
-/

namespace A231707.P385752893978638648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231707.P385752893978638648

/-!
# A231708: Number of (n+1)X(6+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to one.

The programs for A231708, there is no canonical definition to state claims against.
-/

/-! ## A231708.P8676051532386235672

`A231710(A374007(n+1))`
-/

namespace A231708.P8676051532386235672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (A374007 (n + 1)).toNat

end

end A231708.P8676051532386235672

/-! ## A231708.P12639164433611689341

`A231710(eq[7, A131818(n+1)])`
-/

namespace A231708.P12639164433611689341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231708.P12639164433611689341

/-! ## A231708.P7699759437419971043

`A231710(eq[3, A219347(n)])`
-/

namespace A231708.P7699759437419971043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231708.P7699759437419971043

/-! ## A231708.P13760311561660297751

`A231710(eq[5, A193592(n)])`
-/

namespace A231708.P13760311561660297751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231708.P13760311561660297751

/-! ## A231708.P16805771708259730096

`A231710(A155212(n+2)+3)`
-/

namespace A231708.P16805771708259730096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (A155212 (n + 2) + 3).toNat

end

end A231708.P16805771708259730096

/-!
# A231709: Number of (n+1) X (7+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to one.

The programs for A231709, there is no canonical definition to state claims against.
-/

/-! ## A231709.P16778673703000767241

`A231710(A374008(n+1))`
-/

namespace A231709.P16778673703000767241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (A374008 (n + 1)).toNat

end

end A231709.P16778673703000767241

/-! ## A231709.P2508584214235950222

`A231710(eq[8, A131818(n+1)])`
-/

namespace A231709.P2508584214235950222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231709.P2508584214235950222

/-! ## A231709.P2381743521352011775

`A231710(A055999(n+4))`
-/

namespace A231709.P2381743521352011775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (A055999 (n + 4)).toNat

end

end A231709.P2381743521352011775

/-! ## A231709.P16661508884116692300

`A231710(eq[4, A219347(n)])`
-/

namespace A231709.P16661508884116692300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231709.P16661508884116692300

/-! ## A231709.P1979140669160480962

`A231710(eq[6, A193592(n)])`
-/

namespace A231709.P1979140669160480962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231709.P1979140669160480962

/-!
# A231711: Numbers n such that n > sigma(n) - sigma(n-1).

The programs for A231711, the canonical program `A231711.P16047213515376347188` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231711 has offset 1).

The definition of A231711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231711.P16047213515376347188

`lt[Δ[∑{d}[n, #]], n+1]+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A231711

/-- `lt[Δ[∑{d}[n, #]], n+1]+1` -/
def P16047213515376347188.Spec : Prop :=
  ∀ n, (P16047213515376347188.a n : ℤ) = A231711 (n + 1)

theorem P16047213515376347188.correct : P16047213515376347188.Spec := by
  intro n
  simp only [A231711, Nat.add_sub_cancel]

end A231711

/-! ## A231711.P1855857748097574127

`lt[∑{d}[n+1, #]-∑{d}[n, #], n+1]+1`
-/

namespace A231711.P1855857748097574127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 1

end

end A231711.P1855857748097574127

namespace A231711

/-- `lt[∑{d}[n+1, #]-∑{d}[n, #], n+1]+1` -/
def P1855857748097574127.Spec : Prop :=
  ∀ n, (P1855857748097574127.a n : ℤ) = A231711 (n + 1)

theorem P1855857748097574127.correct : P1855857748097574127.Spec := by
  intro n
  simp only [A231711, Nat.add_sub_cancel, A231711.P1855857748097574127.f2, A231711.P1855857748097574127.f3, A231711.P1855857748097574127.f1, A231711.P1855857748097574127.f4, A231711.P1855857748097574127.a, A231711.P16047213515376347188.f3, A231711.P16047213515376347188.f2, A231711.P16047213515376347188.f1, A231711.P16047213515376347188.f4, A231711.P16047213515376347188.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A231711

/-! ## A231711.P1320904415053172105

`lt[Δ[A237588(n+1)], n]+2`
-/

namespace A231711.P1320904415053172105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A231711.P1320904415053172105

namespace A231711

/-- `lt[Δ[A237588(n+1)], n]+2` -/
def P1320904415053172105.Spec : Prop :=
  ∀ n, (P1320904415053172105.a n : ℤ) = A231711 (n + 1)

end A231711

/-! ## A231711.P13623980699611334526

`lt[A340793(n+1), n+1]+1`
-/

namespace A231711.P13623980699611334526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A231711.P13623980699611334526

namespace A231711

/-- `lt[A340793(n+1), n+1]+1` -/
def P13623980699611334526.Spec : Prop :=
  ∀ n, (P13623980699611334526.a n : ℤ) = A231711 (n + 1)

end A231711

/-! ## A231711.P2026699308667737384

`lt[A001065(n+1), ∑{d}[n, #]]+1`
-/

namespace A231711.P2026699308667737384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A231711.P2026699308667737384

namespace A231711

/-- `lt[A001065(n+1), ∑{d}[n, #]]+1` -/
def P2026699308667737384.Spec : Prop :=
  ∀ n, (P2026699308667737384.a n : ℤ) = A231711 (n + 1)

end A231711

/-! ## A231711.P8777966367988791225

`lt[Δ[A000203(n+1)], n+2]+2`
-/

namespace A231711.P8777966367988791225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A231711.P8777966367988791225

namespace A231711

/-- `lt[Δ[A000203(n+1)], n+2]+2` -/
def P8777966367988791225.Spec : Prop :=
  ∀ n, (P8777966367988791225.a n : ℤ) = A231711 (n + 1)

end A231711

/-! ## A231711.P8431947807064122709

`lt[A340793(A028310(n)), n]`
-/

namespace A231711.P8431947807064122709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A231711.P8431947807064122709

namespace A231711

/-- `lt[A340793(A028310(n)), n]` -/
def P8431947807064122709.Spec : Prop :=
  ∀ n, (P8431947807064122709.a n : ℤ) = A231711 (n + 1)

end A231711

/-! ## A231711.P14824160196393280366

`lt[A048050(n+1), A039653(n)]+1`
-/

namespace A231711.P14824160196393280366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A231711.P14824160196393280366

namespace A231711

/-- `lt[A048050(n+1), A039653(n)]+1` -/
def P14824160196393280366.Spec : Prop :=
  ∀ n, (P14824160196393280366.a n : ℤ) = A231711 (n + 1)

end A231711

/-! ## A231711.P1439086011950543565

`A020725(lt[A340793(n+1), n+1])`
-/

namespace A231711.P1439086011950543565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A231711.P1439086011950543565

namespace A231711

/-- `A020725(lt[A340793(n+1), n+1])` -/
def P1439086011950543565.Spec : Prop :=
  ∀ n, P1439086011950543565.a n = A231711 (n + 1)

end A231711

/-! ## A231711.P1318611789831287626

`lt[A053246(n+1), A153152(n)]+2`
-/

namespace A231711.P1318611789831287626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A231711.P1318611789831287626

namespace A231711

/-- `lt[A053246(n+1), A153152(n)]+2` -/
def P1318611789831287626.Spec : Prop :=
  ∀ n, (P1318611789831287626.a n : ℤ) = A231711 (n + 1)

end A231711

/-! ## A231711.P12382764587826878227

`lt[A001065(n+2), A000203(n+1)]+2`
-/

namespace A231711.P12382764587826878227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A231711.P12382764587826878227

namespace A231711

/-- `lt[A001065(n+2), A000203(n+1)]+2` -/
def P12382764587826878227.Spec : Prop :=
  ∀ n, (P12382764587826878227.a n : ℤ) = A231711 (n + 1)

end A231711

/-! ## A231711.P140521719787669254

`lt[A024816(n+1), A024816(n+2)]+2`
-/

namespace A231711.P140521719787669254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A231711.P140521719787669254

namespace A231711

/-- `lt[A024816(n+1), A024816(n+2)]+2` -/
def P140521719787669254.Spec : Prop :=
  ∀ n, (P140521719787669254.a n : ℤ) = A231711 (n + 1)

end A231711

/-! ## A231711.P13725039303080964991

`lt[A237588(n+2), A294888(n+1)]+2`
-/

namespace A231711.P13725039303080964991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A231711.P13725039303080964991

namespace A231711

/-- `lt[A237588(n+2), A294888(n+1)]+2` -/
def P13725039303080964991.Spec : Prop :=
  ∀ n, (P13725039303080964991.a n : ℤ) = A231711 (n + 1)

end A231711

/-! ## A231711.P7769608522173508474

`A020725(lt[A048050(n+1), A039653(n)])`
-/

namespace A231711.P7769608522173508474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A231711.P7769608522173508474

namespace A231711

/-- `A020725(lt[A048050(n+1), A039653(n)])` -/
def P7769608522173508474.Spec : Prop :=
  ∀ n, P7769608522173508474.a n = A231711 (n + 1)

end A231711

/-!
# A231712: a(n) = n^n + n - 1.

The programs for A231712, the canonical program `A231712.P7544452473713834558` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231712 has offset 0).

The definition of A231712 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n+n-1` (program `A231712.P7544452473713834558`, by `A231712.P7544452473713834558.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A231712.P7544452473713834558

`n^n+n-1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A231712

/-- `n^n+n-1` -/
def P7544452473713834558.Spec : Prop :=
  ∀ n, P7544452473713834558.a n = A231712 n

theorem P7544452473713834558.correct : P7544452473713834558.Spec := by
  intro n
  simp only [A231712]

end A231712

/-! ## A231712.P4621896603713697553

`xor(1, abs(2-n^n-n))`
-/

namespace A231712.P4621896603713697553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 |2 - (n ^ n : ℤ) - (n : ℤ)|

end

end A231712.P4621896603713697553

namespace A231712

/-- `xor(1, abs(2-n^n-n))` -/
def P4621896603713697553.Spec : Prop :=
  ∀ n, P4621896603713697553.a n = A231712 n

end A231712

/-! ## A231712.P17790697002557024810

`abs(1-(A000312(n)+n))`
-/

namespace A231712.P17790697002557024810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A000312 n + (n : ℤ))|

end

end A231712.P17790697002557024810

namespace A231712

/-- `abs(1-(A000312(n)+n))` -/
def P17790697002557024810.Spec : Prop :=
  ∀ n, P17790697002557024810.a n = A231712 n

end A231712

/-! ## A231712.P14314742313969021456

`abs(A023443(n)+n^n)`
-/

namespace A231712.P14314742313969021456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023443 n + (n ^ n : ℤ)|

end

end A231712.P14314742313969021456

namespace A231712

/-- `abs(A023443(n)+n^n)` -/
def P14314742313969021456.Spec : Prop :=
  ∀ n, P14314742313969021456.a n = A231712 n

end A231712

/-! ## A231712.P4667732156750609609

`abs(A024000(n)-A000312(n))`
-/

namespace A231712.P4667732156750609609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 n - A000312 n|

end

end A231712.P4667732156750609609

namespace A231712

/-- `abs(A024000(n)-A000312(n))` -/
def P4667732156750609609.Spec : Prop :=
  ∀ n, P4667732156750609609.a n = A231712 n

end A231712

/-! ## A231712.P10676406896153431002

`(A000312(n)+n-1)*A003781(C(2, n+2))`
-/

namespace A231712.P10676406896153431002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000312 n + ((n : ℤ) - 1)) * A003781 (Nat.choose 2 (n + 2))

end

end A231712.P10676406896153431002

namespace A231712

/-- `(A000312(n)+n-1)*A003781(C(2, n+2))` -/
def P10676406896153431002.Spec : Prop :=
  ∀ n, P10676406896153431002.a n = A231712 n

end A231712

/-! ## A231712.P2677075561060057665

`(A023443(n)+A000312(n))*A178489(n)`
-/

namespace A231712.P2677075561060057665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023443 n + A000312 n) * A178489 n

end

end A231712.P2677075561060057665

namespace A231712

/-- `(A023443(n)+A000312(n))*A178489(n)` -/
def P2677075561060057665.Spec : Prop :=
  ∀ n, P2677075561060057665.a n = A231712 n

end A231712

/-! ## A231712.P5248839069729848036

`abs(A007318(A000217(n))^3-A000312(n)-n)`
-/

namespace A231712.P5248839069729848036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007318 (A000217 n).toNat ^ 3 - A000312 n - (n : ℤ)|

end

end A231712.P5248839069729848036

namespace A231712

/-- `abs(A007318(A000217(n))^3-A000312(n)-n)` -/
def P5248839069729848036.Spec : Prop :=
  ∀ n, P5248839069729848036.a n = A231712 n

end A231712

/-!
# A231713: Square array A(i,j) = the sum of absolute values of digit differences in the matching positions of the factorial base representations of i and j, for i >= 0, j >= 0, read by antidiagonals.

The programs for A231713, there is no canonical definition to state claims against.
-/

/-! ## A231713.P9501964189683715295

`A276150(A003987(n))%A105702(n)`
-/

namespace A231713.P9501964189683715295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276150 (A003987 n).toNat) (A105702 n)

end

end A231713.P9501964189683715295

/-! ## A231713.P12906550151227505866

`A034968(A003987(n))%A125665(n+1)`
-/

namespace A231713.P12906550151227505866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034968 (A003987 n).toNat) (A125665 (n + 1))

end

end A231713.P12906550151227505866

/-! ## A231713.P13495865413952169490

`A275729(A003987(n))%A329327(n+1)`
-/

namespace A231713.P13495865413952169490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275729 (A003987 n).toNat) (A329327 (n + 1))

end

end A231713.P13495865413952169490

/-! ## A231713.P15297865134987796256

`A276150(A003987(n)%A330097(n+1))`
-/

namespace A231713.P15297865134987796256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (Int.tmod (A003987 n) (A330097 (n + 1))).toNat

end

end A231713.P15297865134987796256

/-! ## A231713.P9436522034684295365

`A328481(A003987(n))%A338587(n+1)`
-/

namespace A231713.P9436522034684295365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328481 (A003987 n).toNat) (A338587 (n + 1))

end

end A231713.P9436522034684295365

/-! ## A231713.P390559272889546560

`A034968(A003987(n))%A102708(A102674(n))`
-/

namespace A231713.P390559272889546560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034968 (A003987 n).toNat) (A102708 (A102674 n).toNat)

end

end A231713.P390559272889546560

/-!
# A231714: Lower triangular region of A231713; A triangular table read by rows: T(n,k) = sum of absolute values of digit differences in the factorial base representations (A007623) of n and k, where (n, k) = (0,0), (1,0), (1,1), (2,0), (2,1), (2,2), ..., n >= 0 and (0 <= k <= n).

The programs for A231714, there is no canonical definition to state claims against.
-/

/-! ## A231714.P16802182449287820141

`A231713(A245300(n))`
-/

namespace A231714.P16802182449287820141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231713 (A245300 n).toNat

end

end A231714.P16802182449287820141

/-! ## A231714.P15579748129538874411

`A231713(floor(A214661(n+1)/2))`
-/

namespace A231714.P15579748129538874411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231713 ⌊(A214661 (n + 1) : ℚ) / 2⌋.toNat

end

end A231714.P15579748129538874411

/-! ## A231714.P9831661309347722774

`A231713((A214661(n+1)-1)/2)`
-/

namespace A231714.P9831661309347722774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231713 (SequenceMachineLib.roundAway ((A214661 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A231714.P9831661309347722774

/-! ## A231714.P816848104809758119

`A231713(A028242(A214661(n+1)))`
-/

namespace A231714.P816848104809758119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231713 (A028242 (A214661 (n + 1)).toNat).toNat

end

end A231714.P816848104809758119

/-! ## A231714.P3094497447132965551

`A001359(A243751(3*(n+1)))%A209278(n+1)`
-/

namespace A231714.P3094497447132965551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001359 (A243751 (3 * (n + 1))).toNat) (A209278 (n + 1))

end

end A231714.P3094497447132965551

/-!
# A231715: For n with a unique factorial base representation n = du*u! + ... + d2*2! + d1*1! (each di in range 0..i, cf. A007623), a(n) = Product_{i=1..u} (gcd(d_i,i+1) mod i+1), where u is given by A084558(n).

The programs for A231715, there is no canonical definition to state claims against.
-/

/-! ## A231715.P6354087576506575896

`A099563(∏{digits}[A007623(n+1), #*A265891(n+1)])`
-/

namespace A231715.P6354087576506575896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℤ) * A265891 (n + 1)).prod.toNat

end

end A231715.P6354087576506575896

/-! ## A231715.P3837475699714805173

`val(A154376(7*n+16), A154411(A249744(5*n+3)))`
-/

namespace A231715.P3837475699714805173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A154376 (7 * n + 16)).toNat (A154411 (A249744 (5 * n + 3)).toNat).toNat

end

end A231715.P3837475699714805173

/-! ## A231715.P17454185932867056040

`A000161(A273410(3*n+2)-A001105(n))`
-/

namespace A231715.P17454185932867056040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A273410 (3 * n + 2) - A001105 n).toNat

end

end A231715.P17454185932867056040

/-! ## A231715.P7806799231271309157

`A010051(n+3)*A062379(A301028(3*n+4))`
-/

namespace A231715.P7806799231271309157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 3) * A062379 (A301028 (3 * n + 4)).toNat

end

end A231715.P7806799231271309157

/-! ## A231715.P11843805754480153511

`C(A000002(A010001(2*(n+1))), A014648(n+3))`
-/

namespace A231715.P11843805754480153511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000002 (A010001 (2 * (n + 1))).toNat).toNat (A014648 (n + 3)).toNat

end

end A231715.P11843805754480153511

/-!
# A231716: Numbers with restricted residue set factorial base representation: numbers n which can be formed as a sum n = du*u! + ... + d2*2! + d1*1!, where each di is in range 1..i and gcd(di,i+1)=1.

The programs for A231716, there is no canonical definition to state claims against.
-/

/-! ## A231716.P2190916241133995800

`eq[1, A231715(n+1)]+1`
-/

namespace A231716.P2190916241133995800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231715 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A231716.P2190916241133995800

/-! ## A231716.P15379305894499340999

`A004442(eq[1, A231715(n+1)])`
-/

namespace A231716.P15379305894499340999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231716.P15379305894499340999

/-! ## A231716.P16965160983498996423

`A079097(eq[1, A231715(n+1)])`
-/

namespace A231716.P16965160983498996423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231716.P16965160983498996423

/-! ## A231716.P570814509020999943

`eq[A000035(n), A231715(A093178(n))]`
-/

namespace A231716.P570814509020999943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231715 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231716.P570814509020999943

/-! ## A231716.P4932913680814932608

`eq[n-A231715(A093178(n)), A276093(n)]`
-/

namespace A231716.P4932913680814932608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A231715 (A093178 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231716.P4932913680814932608

/-!
# A231718: Positions of ones in A231717.

The programs for A231718, there is no canonical definition to state claims against.
-/

/-! ## A231718.P10026190016873045537

`A258008(n)+a(n-1)` with `a(0)=1`
-/

namespace A231718.P10026190016873045537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A258008 n + a (n - 1)

end

end A231718.P10026190016873045537

/-! ## A231718.P11143723195932451127

`∑[A258008(n+1)]+1-A258008(n+1)`
-/

namespace A231718.P11143723195932451127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A258008 (n + 1))

end

end A231718.P11143723195932451127

/-! ## A231718.P988279806583051944

`∑[A258008(n+1)]-A023443(A258008(n+1))`
-/

namespace A231718.P988279806583051944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023443 (A258008 (n + 1)).toNat

end

end A231718.P988279806583051944

/-! ## A231718.P8894526962062082562

`A020725(∑[A258008(n+1)])-A258008(n+1)`
-/

namespace A231718.P8894526962062082562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A258008 (n + 1)

end

end A231718.P8894526962062082562

/-! ## A231718.P6039626993759312231

`eq[1, A231717(n)]`
-/

namespace A231718.P6039626993759312231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231718.P6039626993759312231

/-! ## A231718.P15124188487541239066

`record[A230422(n+1)/A231717(A230422(n+1))]`
-/

namespace A231718.P15124188487541239066
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230422 (n + 1) : ℚ) / (A231717 (A230422 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231718.P15124188487541239066

/-!
# A231719: After zero, a(n) = largest m such that m! divides the difference between successive nodes A219666(n-1) and A219666(n) in the infinite trunk of the factorial beanstalk.

The programs for A231719, there is no canonical definition to state claims against.
-/

/-! ## A231719.P16369555669636589777

`∑{d}[A230406(n), A012245(#)]`
-/

namespace A231719.P16369555669636589777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A012245 d

end

end A231719.P16369555669636589777

/-! ## A231719.P11090032500771493359

`∑{d}[A230406(n), A316341(#)]`
-/

namespace A231719.P11090032500771493359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A316341 d

end

end A231719.P11090032500771493359

/-! ## A231719.P4138930522681380152

`A230415(2*A230406(n)²)`
-/

namespace A231719.P4138930522681380152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230415 (2 * A230406 n ^ 2).toNat

end

end A231719.P4138930522681380152

/-! ## A231719.P8533316165300067609

`A230415(2*A230406(n)*A230406(n))`
-/

namespace A231719.P8533316165300067609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230415 (2 * A230406 n * A230406 n).toNat

end

end A231719.P8533316165300067609

/-! ## A231719.P8193730327920995542

`A332202(∑{e}[A278534(n), #])`
-/

namespace A231719.P8193730327920995542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332202 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A231719.P8193730327920995542

/-! ## A231719.P8966214585040182040

`A332202(2*n+1)*A332202(A230406(n))`
-/

namespace A231719.P8966214585040182040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332202 (2 * n + 1) * A332202 (A230406 n).toNat

end

end A231719.P8966214585040182040

/-!
# A231720: a(0)=1, after which, for any n uniquely written as du*u! + ... + d2*2! + d1*1! (each di in range 0..i), a(n) = (du+1)*(u+1)! + ... + (d2+1)*3! + (d1+1)*2! + 1; the natural numbers with their factorial base representation (A007623) shifted left one step and each digit incremented by one, converted back to decimal.

The programs for A231720, the canonical program `A231720.P17111948023975065534` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231720 has offset 0).

The definition of A231720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231720.P17111948023975065534

`A153880(n)+A073575(A048765(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A231720

/-- `A153880(n)+A073575(A048765(n+1))` -/
def P17111948023975065534.Spec : Prop :=
  ∀ n, P17111948023975065534.a n = A231720 n

theorem P17111948023975065534.correct : P17111948023975065534.Spec := by
  intro n
  simp only [A231720]

end A231720

/-! ## A231720.P13160536996010956723

`A073575(A048765(n+1))+record[n-A276008(n)]`
-/

namespace A231720.P13160536996010956723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (A048765 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231720.P13160536996010956723

namespace A231720

/-- `A073575(A048765(n+1))+record[n-A276008(n)]` -/
def P13160536996010956723.Spec : Prop :=
  ∀ n, P13160536996010956723.a n = A231720 n

end A231720

/-! ## A231720.P13737026606021240715

`A073575(A048765(n+1))+A255411(n)-(A225901(n)+n)`
-/

namespace A231720.P13737026606021240715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (A048765 (n + 1)).toNat + (A255411 n - (A225901 n + (n : ℤ)))

end

end A231720.P13737026606021240715

namespace A231720

/-- `A073575(A048765(n+1))+A255411(n)-(A225901(n)+n)` -/
def P13737026606021240715.Spec : Prop :=
  ∀ n, P13737026606021240715.a n = A231720 n

end A231720

/-! ## A231720.P277179784580036559

`A220655(A153880(n)+1)-1`
-/

namespace A231720.P277179784580036559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220655 (A153880 n + 1).toNat - 1

end

end A231720.P277179784580036559

namespace A231720

/-- `A220655(A153880(n)+1)-1` -/
def P277179784580036559.Spec : Prop :=
  ∀ n, P277179784580036559.a n = A231720 n

end A231720

/-! ## A231720.P12823802645513279034

`A220656(A153880(n)+1)-2`
-/

namespace A231720.P12823802645513279034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220656 (A153880 n + 1).toNat - 2

end

end A231720.P12823802645513279034

namespace A231720

/-- `A220656(A153880(n)+1)-2` -/
def P12823802645513279034.Spec : Prop :=
  ∀ n, P12823802645513279034.a n = A231720 n

end A231720

/-! ## A231720.P5973565237205772789

`A085219(∑[n+1]+1)`
-/

namespace A231720.P5973565237205772789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085219 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231720.P5973565237205772789

namespace A231720

/-- `A085219(∑[n+1]+1)` -/
def P5973565237205772789.Spec : Prop :=
  ∀ n, P5973565237205772789.a n = A231720 n

end A231720

/-! ## A231720.P156915731918033768

`A085220(∑[n+1]+n)`
-/

namespace A231720.P156915731918033768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085220 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A231720.P156915731918033768

namespace A231720

/-- `A085220(∑[n+1]+n)` -/
def P156915731918033768.Spec : Prop :=
  ∀ n, P156915731918033768.a n = A231720 n

end A231720

/-!
# A231721: Partial sums of phitorials: a(n) = A001088(1)+A001088(2)+...+A001088(n).

The programs for A231721, there is no canonical definition to state claims against.
-/

/-! ## A231721.P11844634151567994827

`A231722(n+1)+1`
-/

namespace A231721.P11844634151567994827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231722 (n + 1) + 1

end

end A231721.P11844634151567994827

/-! ## A231721.P9309349516734492890

`A001088(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A231721.P9309349516734492890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001088 (n + 1) + a (n - 1)

end

end A231721.P9309349516734492890

/-! ## A231721.P12017758555251422960

`∑[∏[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]]`
-/

namespace A231721.P12017758555251422960
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f4 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231721.P12017758555251422960

/-! ## A231721.P16604311922552591550

`∑[A001088(n+1)]`
-/

namespace A231721.P16604311922552591550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231721.P16604311922552591550

/-! ## A231721.P14206474794551767153

`∑[∏[Δ[A002088(n)]]]`
-/

namespace A231721.P14206474794551767153
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231721.P14206474794551767153

/-! ## A231721.P12690680051516696403

`∑[∏[Δ[A005728(n)]]]`
-/

namespace A231721.P12690680051516696403
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231721.P12690680051516696403

/-! ## A231721.P144012563498342007

`∑[∏[A000010(n+1)]]`
-/

namespace A231721.P144012563498342007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231721.P144012563498342007

/-! ## A231721.P8521565190268208374

`∑[∏[A282634(∑[n]+1)]]`
-/

namespace A231721.P8521565190268208374
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282634 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231721.P8521565190268208374

/-! ## A231721.P9530816811517787222

`∑[∏[A109606(n+1)+1]]`
-/

namespace A231721.P9530816811517787222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231721.P9530816811517787222

/-! ## A231721.P17694986486591135180

`∑[∏[A067541(2*n+1)]]`
-/

namespace A231721.P17694986486591135180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231721.P17694986486591135180

/-!
# A231722: Partial sums of A001088 starting from its second term; a(1)=0, a(n) = A001088(2)+...+A001088(n).

The programs for A231722, there is no canonical definition to state claims against.
-/

/-! ## A231722.P4758167632056826235

`A231721(n+1)-1`
-/

namespace A231722.P4758167632056826235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231721 (n + 1) - 1

end

end A231722.P4758167632056826235

/-! ## A231722.P5457155675872827279

`∑[A001088(n+1)]-1`
-/

namespace A231722.P5457155675872827279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A231722.P5457155675872827279

/-! ## A231722.P16306193501288756331

`∑[∏[Δ[A002088(n)]]]-1`
-/

namespace A231722.P16306193501288756331
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A231722.P16306193501288756331

/-! ## A231722.P543425680043352624

`∑[∏[Δ[A005728(n)]]]-1`
-/

namespace A231722.P543425680043352624
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A231722.P543425680043352624

/-! ## A231722.P15133429544279014553

`∑[∏[A000010(n+1)]]-1`
-/

namespace A231722.P15133429544279014553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A231722.P15133429544279014553

/-! ## A231722.P16171113049323097471

`∑[∏[A282634(∑[n]+1)]]-1`
-/

namespace A231722.P16171113049323097471
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282634 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A231722.P16171113049323097471

/-! ## A231722.P7086921780796700707

`∑[a(n-1)*A000010(lcm(2, n+1))]` with `a(0)=0, a(1)=1`
-/

namespace A231722.P7086921780796700707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) * A000010 (Nat.lcm 2 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231722.P7086921780796700707

/-! ## A231722.P15130097435984728871

`∑[a(n-2)*A000010(n²+n)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A231722.P15130097435984728871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 2) * A000010 (n ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231722.P15130097435984728871

/-! ## A231722.P12440024019441253176

`∑[∏[∑{d}[n+1, (n+1)/#*A008683(#)]]]-1`
-/

namespace A231722.P12440024019441253176
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A231722.P12440024019441253176

/-! ## A231722.P12540984719265608960

`∑[a(n-1)*A000010(2*n-(n-1))]-1` with `a(0)=1`
-/

namespace A231722.P12540984719265608960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A231722.P12540984719265608960

/-!
# A231723: a(n) = the difference between the n-th node of the infinite trunk of the factorial beanstalk (A219666(n)) and the smallest integer (A219653(n)) which is as many A219651-iteration steps distanced from the root (zero); a(n) = A219666(n) - A219653(n).

The programs for A231723, there is no canonical definition to state claims against.
-/

/-! ## A231723.P11055579130008081032

`A219666(n)-A219653(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A231723.P11055579130008081032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219666 n - A219653 n

end

end A231723.P11055579130008081032

/-! ## A231723.P1875687751721032477

`∑[A230406(n)]-A219653(n)`
-/

namespace A231723.P1875687751721032477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A219653 n

end

end A231723.P1875687751721032477

/-! ## A231723.P7768308445517384064

`A219654(n)-(A231724(n)+1)`
-/

namespace A231723.P7768308445517384064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219654 n - (A231724 n + 1)

end

end A231723.P7768308445517384064

/-! ## A231723.P13386478515322502782

`A230416(A230432(n))-A219653(n)`
-/

namespace A231723.P13386478515322502782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230416 (A230432 n).toNat - A219653 n

end

end A231723.P13386478515322502782

/-! ## A231723.P9670275015891821823

`A219655(n)-(A231724(n)+A219653(n))`
-/

namespace A231723.P9670275015891821823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219655 n - (A231724 n + A219653 n)

end

end A231723.P9670275015891821823

/-! ## A231723.P2369426464488872830

`A219651(A230430(n))-A219653(n)`
-/

namespace A231723.P2369426464488872830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219651 (A230430 n).toNat - A219653 n

end

end A231723.P2369426464488872830

/-!
# A231724: a(n) = the difference between the n-th node of the infinite trunk of the factorial beanstalk (A219666(n)) and the greatest integer (A219655(n)) which is as many A219651-iteration steps distanced from the root (zero); a(n) = A219655(n) - A219666(n).

The programs for A231724, there is no canonical definition to state claims against.
-/

/-! ## A231724.P13822515611785266447

`A219655(n)-A219666(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A231724.P13822515611785266447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219655 n - A219666 n

end

end A231724.P13822515611785266447

/-! ## A231724.P13342247755008614344

`A219654(n)-(A231723(n)+1)`
-/

namespace A231724.P13342247755008614344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219654 n - (A231723 n + 1)

end

end A231724.P13342247755008614344

/-! ## A231724.P3939949130360597617

`A219653(n+1)-(A219666(n)+1)`
-/

namespace A231724.P3939949130360597617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219653 (n + 1) - (A219666 n + 1)

end

end A231724.P3939949130360597617

/-! ## A231724.P13520898388681994230

`A219655(n)-(A231723(n)+A219653(n))`
-/

namespace A231724.P13520898388681994230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219655 n - (A231723 n + A219653 n)

end

end A231724.P13520898388681994230

/-! ## A231724.P711336836667303912

`A034968(A219666(n+1))-1-A231723(n+1)`
-/

namespace A231724.P711336836667303912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A219666 (n + 1)).toNat - 1 - A231723 (n + 1)

end

end A231724.P711336836667303912

/-!
# A231726: Count of the first 10^n primes containing at least one 0's digit.

The programs for A231726, there is no canonical definition to state claims against.
-/

/-! ## A231726.P5939707166885477139

`A011557(n+1)-A231412(n+1)`
-/

namespace A231726.P5939707166885477139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A231412 (n + 1)

end

end A231726.P5939707166885477139

/-! ## A231726.P9118891293887171937

`A007088(A000079(n+1))-A231412(n+1)`
-/

namespace A231726.P9118891293887171937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000079 (n + 1)).toNat - A231412 (n + 1)

end

end A231726.P9118891293887171937

/-! ## A231726.P17249089401450817620

`record[∑{digits}[n, 10^#]-A231412(n)]`
-/

namespace A231726.P17249089401450817620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum : ℕ) : ℤ) - A231412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231726.P17249089401450817620

/-! ## A231726.P9841339340277866156

`record[A348783(n)-A231412(n)]`
-/

namespace A231726.P9841339340277866156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348783 n - A231412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231726.P9841339340277866156

/-!
# A231731: Triangular array read by rows: row n shows the coefficients of the polynomial u(n) = c(0) + c(1)*x + ... + c(n)*x^(n) which is the numerator of the n-th convergent of the continued fraction [k, k, k, ... ], where k = 2*x + 1.

The programs for A231731, there is no canonical definition to state claims against.
-/

/-! ## A231731.P11114286415028065403

`A037027(n+1)*A059268(n+1)`
-/

namespace A231731.P11114286415028065403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (n + 1) * A059268 (n + 1)

end

end A231731.P11114286415028065403

/-! ## A231731.P5691689424407885827

`A000079(A002262(n+1))*A037027(n+1)`
-/

namespace A231731.P5691689424407885827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 (n + 1)).toNat * A037027 (n + 1)

end

end A231731.P5691689424407885827

/-! ## A231731.P6239412891389493228

`A038137(A061579(n+1))*A059268(n+1)`
-/

namespace A231731.P6239412891389493228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A061579 (n + 1)).toNat * A059268 (n + 1)

end

end A231731.P6239412891389493228

/-! ## A231731.P1925525444014753024

`A037027(n+1)*A130321(A061579(n+1))`
-/

namespace A231731.P1925525444014753024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (n + 1) * A130321 (A061579 (n + 1)).toNat

end

end A231731.P1925525444014753024

/-!
# A231734: Least k such that n*k^2 - 1 is a prime, or 0 if no such k exists.

The programs for A231734, there is no canonical definition to state claims against.
-/

/-! ## A231734.P6633165638317234002

`A231735(n+1)%A035359(A268674(n+1))`
-/

namespace A231734.P6633165638317234002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231735 (n + 1)) (A035359 (A268674 (n + 1)).toNat)

end

end A231734.P6633165638317234002

/-! ## A231734.P2427808988567333490

`A231735(A187829(n+1))%11`
-/

namespace A231734.P2427808988567333490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231735 (A187829 (n + 1)).toNat) 11

end

end A231734.P2427808988567333490

/-! ## A231734.P9856504158197521330

`A231735(n+1)%A002808(A288648(n))`
-/

namespace A231734.P9856504158197521330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231735 (n + 1)) (A002808 (A288648 n).toNat)

end

end A231734.P9856504158197521330

/-! ## A231734.P4606659415268619819

`gcd(A173680(A075200(n+1)), A231735(n+1))`
-/

namespace A231734.P4606659415268619819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173680 (A075200 (n + 1)).toNat) (A231735 (n + 1))

end

end A231734.P4606659415268619819

/-!
# A231735: Least positive k such that n*k^k - 1 is a prime, or 0 if no such k exists.

The programs for A231735, there is no canonical definition to state claims against.
-/

/-! ## A231735.P7514017743696962005

`A195040(A356292(n))+1`
-/

namespace A231735.P7514017743696962005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195040 (A356292 n).toNat + 1

end

end A231735.P7514017743696962005

/-! ## A231735.P8843581412042511049

`gcd(A073090(n+4), A275949(A380989(n)))`
-/

namespace A231735.P8843581412042511049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073090 (n + 4)) (A275949 (A380989 n).toNat)

end

end A231735.P8843581412042511049

/-! ## A231735.P270334444795157189

`A225803(A103889(n+5)+A023143(n+1))`
-/

namespace A231735.P270334444795157189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225803 (A103889 (n + 5) + A023143 (n + 1)).toNat

end

end A231735.P270334444795157189

/-!
# A231741: Number of nX2 0..3 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231741, there is no canonical definition to state claims against.
-/

/-! ## A231741.P2932789091399076194

`A231746(∑[n+1]+2)`
-/

namespace A231741.P2932789091399076194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231741.P2932789091399076194

/-! ## A231741.P272187336846056316

`record[root(A231746(n+1), A130270(n+1))]`
-/

namespace A231741.P272187336846056316
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231746 (n + 1) : ℝ) ^ (1 / (A130270 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231741.P272187336846056316

/-! ## A231741.P1164493731726641855

`record[A231746(∑[A152271(n)])]`
-/

namespace A231741.P1164493731726641855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231741.P1164493731726641855

/-! ## A231741.P16496973446692668868

`record[root(A231746(n+1), A066633(n+1))]`
-/

namespace A231741.P16496973446692668868
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231746 (n + 1) : ℝ) ^ (1 / (A066633 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231741.P16496973446692668868

/-! ## A231741.P6655692199317901180

`A231940(∑[n+2])`
-/

namespace A231741.P6655692199317901180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231741.P6655692199317901180

/-!
# A231742: Number of nX3 0..3 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231742, there is no canonical definition to state claims against.
-/

/-! ## A231742.P2774579148096849515

`A231746(∑[n+2]+4)`
-/

namespace A231742.P2774579148096849515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231742.P2774579148096849515

/-! ## A231742.P15190404531985761727

`A231746(A167614(n+1))+A185284(n)`
-/

namespace A231742.P15190404531985761727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (A167614 (n + 1)).toNat + A185284 n

end

end A231742.P15190404531985761727

/-! ## A231742.P7995571355146018091

`A231746(A167614(n+1))+A133010(n+1)`
-/

namespace A231742.P7995571355146018091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (A167614 (n + 1)).toNat + A133010 (n + 1)

end

end A231742.P7995571355146018091

/-! ## A231742.P13646227359279900942

`A297245(n+1)+A231746(A167614(n+1))`
-/

namespace A231742.P13646227359279900942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297245 (n + 1) + A231746 (A167614 (n + 1)).toNat

end

end A231742.P13646227359279900942

/-! ## A231742.P429189970513066788

`A231746(A167614(n+1))+A216037(n+2)`
-/

namespace A231742.P429189970513066788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (A167614 (n + 1)).toNat + A216037 (n + 2)

end

end A231742.P429189970513066788

/-!
# A231743: Number of nX4 0..3 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231743, there is no canonical definition to state claims against.
-/

/-! ## A231743.P243400109071876732

`A231746(A374004(n+1))`
-/

namespace A231743.P243400109071876732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (A374004 (n + 1)).toNat

end

end A231743.P243400109071876732

/-! ## A231743.P550355773419945220

`A231746(A052905(n)+9)`
-/

namespace A231743.P550355773419945220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (A052905 n + 9).toNat

end

end A231743.P550355773419945220

/-! ## A231743.P14265593416109102149

`A231746(A055999(n)+10)`
-/

namespace A231743.P14265593416109102149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (A055999 n + 10).toNat

end

end A231743.P14265593416109102149

/-! ## A231743.P8987838202801652508

`A231746(A167614(n+2)+1)`
-/

namespace A231743.P8987838202801652508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (A167614 (n + 2) + 1).toNat

end

end A231743.P8987838202801652508

/-! ## A231743.P14725485708585128921

`A231746(eq[5, A131818(n+1)])`
-/

namespace A231743.P14725485708585128921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231743.P14725485708585128921

/-!
# A231744: Number of n X 5 0..3 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231744, there is no canonical definition to state claims against.
-/

/-! ## A231744.P5564622359635132605

`A231746(A374005(n+1))`
-/

namespace A231744.P5564622359635132605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (A374005 (n + 1)).toNat

end

end A231744.P5564622359635132605

/-! ## A231744.P5206568308200582363

`A231746(eq[7, A066657(n)])`
-/

namespace A231744.P5206568308200582363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231744.P5206568308200582363

/-! ## A231744.P16151295851080965470

`A231746(eq[6, A131818(n+1)])`
-/

namespace A231744.P16151295851080965470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231744.P16151295851080965470

/-! ## A231744.P18392147070361381754

`A231746(Δ[A264443(n)])`
-/

namespace A231744.P18392147070361381754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (f1 (n + 1) - f1 n).toNat

end

end A231744.P18392147070361381754

/-! ## A231744.P12547617684598364297

`A231746(eq[4, A193592(n)])`
-/

namespace A231744.P12547617684598364297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231744.P12547617684598364297

/-!
# A231745: Number of nX6 0..3 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231745, there is no canonical definition to state claims against.
-/

/-! ## A231745.P922297916728590882

`A231746(A374007(n+1))`
-/

namespace A231745.P922297916728590882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (A374007 (n + 1)).toNat

end

end A231745.P922297916728590882

/-! ## A231745.P494100195338223918

`A231746(eq[3, A274661(n)])`
-/

namespace A231745.P494100195338223918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231745.P494100195338223918

/-! ## A231745.P17033214676363048107

`A231746(Δ[Δ[A006504(n+1)]])`
-/

namespace A231745.P17033214676363048107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (f1 (n + 1) - f1 n).toNat

end

end A231745.P17033214676363048107

/-!
# A231747: Number of n X 2 0..2 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231747, there is no canonical definition to state claims against.
-/

/-! ## A231747.P2685424785089936916

`A231753(∑[n+1]+2)`
-/

namespace A231747.P2685424785089936916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231747.P2685424785089936916

/-! ## A231747.P5752320140275915952

`record[gcd(A002262(n), A231753(n+2))]`
-/

namespace A231747.P5752320140275915952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A231753 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231747.P5752320140275915952

/-! ## A231747.P5519765003781461956

`record[gcd(A092921(n), A231753(n+3))]`
-/

namespace A231747.P5519765003781461956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092921 n) (A231753 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231747.P5519765003781461956

/-! ## A231747.P9429396932253022267

`record[A231753(∑[A152271(n)])]`
-/

namespace A231747.P9429396932253022267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231747.P9429396932253022267

/-! ## A231747.P16109159061212175257

`record[A231753(A117142(n+1))]`
-/

namespace A231747.P16109159061212175257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231747.P16109159061212175257

/-!
# A231748: Number of nX3 0..2 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231748, there is no canonical definition to state claims against.
-/

/-! ## A231748.P10806187073925062411

`A231753(∑[n+2]+4)`
-/

namespace A231748.P10806187073925062411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231748.P10806187073925062411

/-! ## A231748.P805266643376592742

`or(A000007(n), A231753(A167614(n+1)))`
-/

namespace A231748.P805266643376592742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A231753 (A167614 (n + 1)).toNat)

end

end A231748.P805266643376592742

/-! ## A231748.P8009699758010080646

`or(A231753(A167614(n+1)), A343380(n))`
-/

namespace A231748.P8009699758010080646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A231753 (A167614 (n + 1)).toNat) (A343380 n)

end

end A231748.P8009699758010080646

/-! ## A231748.P1049036510477902541

`A353482(n+1)+A231753(A167614(n+1))`
-/

namespace A231748.P1049036510477902541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353482 (n + 1) + A231753 (A167614 (n + 1)).toNat

end

end A231748.P1049036510477902541

/-! ## A231748.P9483917057401799148

`A231753(A167614(n+1))%A210104(n+1)`
-/

namespace A231748.P9483917057401799148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231753 (A167614 (n + 1)).toNat) (A210104 (n + 1))

end

end A231748.P9483917057401799148

/-!
# A231749: Number of nX4 0..2 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231749, there is no canonical definition to state claims against.
-/

/-! ## A231749.P11748754512552270578

`A231753(A374004(n+1))`
-/

namespace A231749.P11748754512552270578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (A374004 (n + 1)).toNat

end

end A231749.P11748754512552270578

/-! ## A231749.P12090376481381221928

`A231753(A141214(n)+7)`
-/

namespace A231749.P12090376481381221928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (A141214 n + 7).toNat

end

end A231749.P12090376481381221928

/-! ## A231749.P3727913644412915693

`A231753(A052905(n)+9)`
-/

namespace A231749.P3727913644412915693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (A052905 n + 9).toNat

end

end A231749.P3727913644412915693

/-! ## A231749.P3374663987290335684

`A231753(A055999(n)+10)`
-/

namespace A231749.P3374663987290335684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (A055999 n + 10).toNat

end

end A231749.P3374663987290335684

/-! ## A231749.P8485834563705538646

`A231753(A167614(n+2)+1)`
-/

namespace A231749.P8485834563705538646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (A167614 (n + 2) + 1).toNat

end

end A231749.P8485834563705538646

/-!
# A231750: Number of nX5 0..2 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231750, there is no canonical definition to state claims against.
-/

/-! ## A231750.P7644899955566612354

`A231753(A374005(n+1))`
-/

namespace A231750.P7644899955566612354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (A374005 (n + 1)).toNat

end

end A231750.P7644899955566612354

/-! ## A231750.P15079758938110191818

`A231753(A167499(n+3))`
-/

namespace A231750.P15079758938110191818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (A167499 (n + 3)).toNat

end

end A231750.P15079758938110191818

/-! ## A231750.P10836853882426021179

`A231753(A056000(n)+15)`
-/

namespace A231750.P10836853882426021179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (A056000 n + 15).toNat

end

end A231750.P10836853882426021179

/-! ## A231750.P13769396823410129659

`A231753(A173036(n)+A016825(n))`
-/

namespace A231750.P13769396823410129659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (A173036 n + A016825 n).toNat

end

end A231750.P13769396823410129659

/-! ## A231750.P13070560166110137775

`A231753(eq[3, A152157(n)])`
-/

namespace A231750.P13070560166110137775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231750.P13070560166110137775

/-!
# A231751: Number of nX6 0..2 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231751, there is no canonical definition to state claims against.
-/

/-! ## A231751.P10568201737235921232

`A231753(A374007(n+1))`
-/

namespace A231751.P10568201737235921232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (A374007 (n + 1)).toNat

end

end A231751.P10568201737235921232

/-! ## A231751.P11574488158160838758

`A231753(A166136(n+4))`
-/

namespace A231751.P11574488158160838758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (A166136 (n + 4)).toNat

end

end A231751.P11574488158160838758

/-! ## A231751.P10498026728159641664

`A231753(Δ[A023545(n+1)]+10)`
-/

namespace A231751.P10498026728159641664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (f1 (n + 1) - f1 n + 10).toNat

end

end A231751.P10498026728159641664

/-! ## A231751.P9619055942013614339

`A231753(eq[3, A219347(n)])`
-/

namespace A231751.P9619055942013614339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231751.P9619055942013614339

/-! ## A231751.P4445296744359001907

`A231753(eq[5, A193592(n)])`
-/

namespace A231751.P4445296744359001907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231751.P4445296744359001907

/-!
# A231752: Number of nX7 0..2 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231752, there is no canonical definition to state claims against.
-/

/-! ## A231752.P12209438912737968766

`A231753(A374008(n+1))`
-/

namespace A231752.P12209438912737968766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (A374008 (n + 1)).toNat

end

end A231752.P12209438912737968766

/-! ## A231752.P14603212061003440241

`A231753(A145018(n+7)+3)`
-/

namespace A231752.P14603212061003440241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (A145018 (n + 7) + 3).toNat

end

end A231752.P14603212061003440241

/-! ## A231752.P16475790469887972322

`A231753(A000217(n+6)+7)`
-/

namespace A231752.P16475790469887972322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (A000217 (n + 6) + 7).toNat

end

end A231752.P16475790469887972322

/-! ## A231752.P15124772867510382715

`A231753(eq[8, A131818(n+1)])`
-/

namespace A231752.P15124772867510382715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231752.P15124772867510382715

/-!
# A231753: T(n,k)=Number of nXk 0..2 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231753, there is no canonical definition to state claims against.
-/

/-! ## A231753.P15177288521088717033

`A231663(or(∑{e}[n+1, #], A032559(n+1)))`
-/

namespace A231753.P15177288521088717033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (Int.lor ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A032559 (n + 1))).toNat

end

end A231753.P15177288521088717033

/-! ## A231753.P17529073831311271557

`A231663(or(∑{e}[n+1, #], A257275(n+1)))`
-/

namespace A231753.P17529073831311271557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (Int.lor ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A257275 (n + 1))).toNat

end

end A231753.P17529073831311271557

/-! ## A231753.P5222641269246353681

`A231663(or(A003987(n), A032559(n+1)))`
-/

namespace A231753.P5222641269246353681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (Int.lor (A003987 n) (A032559 (n + 1))).toNat

end

end A231753.P5222641269246353681

/-! ## A231753.P9520775707343301031

`A231663(or(A003987(n), A257275(n+1)))`
-/

namespace A231753.P9520775707343301031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (Int.lor (A003987 n) (A257275 (n + 1))).toNat

end

end A231753.P9520775707343301031

/-! ## A231753.P9983113350866077236

`A231663(or(A032559(n+1), A303776(n)))`
-/

namespace A231753.P9983113350866077236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (Int.lor (A032559 (n + 1)) (A303776 n)).toNat

end

end A231753.P9983113350866077236

/-!
# A231754: Products of distinct primes congruent to 1 modulo 4 (A002144).

The programs for A231754, the canonical program `A231754.P1945507588168497190` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231754 has offset 1).

The definition of A231754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7751 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231754.P2656668768234779450

`filter[A004613(n+1), A008966(#)]`
-/

namespace A231754.P2656668768234779450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A231754.P2656668768234779450

namespace A231754

/-- `filter[A004613(n+1), A008966(#)]` -/
def P2656668768234779450.Spec : Prop :=
  ∀ n, P2656668768234779450.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P5143854081901754722

`filter[A004613(n+1), A359377(#)]`
-/

namespace A231754.P5143854081901754722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A231754.P5143854081901754722

namespace A231754

/-- `filter[A004613(n+1), A359377(#)]` -/
def P5143854081901754722.Spec : Prop :=
  ∀ n, P5143854081901754722.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P14366107102571976736

`filter[A004613(n+1), A359590(#)]`
-/

namespace A231754.P14366107102571976736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A231754.P14366107102571976736

namespace A231754

/-- `filter[A004613(n+1), A359590(#)]` -/
def P14366107102571976736.Spec : Prop :=
  ∀ n, P14366107102571976736.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P1303294722107192386

`filter[A004613(n+1), A359592(#)]`
-/

namespace A231754.P1303294722107192386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A231754.P1303294722107192386

namespace A231754

/-- `filter[A004613(n+1), A359592(#)]` -/
def P1303294722107192386.Spec : Prop :=
  ∀ n, P1303294722107192386.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P10209716291933801470

`filter[A004613(n+1), A359834(#)]`
-/

namespace A231754.P10209716291933801470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A231754.P10209716291933801470

namespace A231754

/-- `filter[A004613(n+1), A359834(#)]` -/
def P10209716291933801470.Spec : Prop :=
  ∀ n, P10209716291933801470.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P17812227964099881283

`filter[A004613(n+1), A373154(#)]`
-/

namespace A231754.P17812227964099881283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A231754.P17812227964099881283

namespace A231754

/-- `filter[A004613(n+1), A373154(#)]` -/
def P17812227964099881283.Spec : Prop :=
  ∀ n, P17812227964099881283.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P10842869906083563652

`filter[A057653(n+1), A008966(#)]`
-/

namespace A231754.P10842869906083563652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A231754.P10842869906083563652

namespace A231754

/-- `filter[A057653(n+1), A008966(#)]` -/
def P10842869906083563652.Spec : Prop :=
  ∀ n, P10842869906083563652.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P1945507588168497190

`filter[A057653(n+1), A359377(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A231754

/-- `filter[A057653(n+1), A359377(#)]` -/
def P1945507588168497190.Spec : Prop :=
  ∀ n, P1945507588168497190.a n = A231754 (n + 1)

theorem P1945507588168497190.correct : P1945507588168497190.Spec := by
  intro n
  simp only [A231754, Nat.add_sub_cancel]

end A231754

/-! ## A231754.P757112027506627143

`filter[A057653(n+1), A359590(#)]`
-/

namespace A231754.P757112027506627143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A231754.P757112027506627143

namespace A231754

/-- `filter[A057653(n+1), A359590(#)]` -/
def P757112027506627143.Spec : Prop :=
  ∀ n, P757112027506627143.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P17983310610972988889

`filter[A057653(n+1), A359592(#)]`
-/

namespace A231754.P17983310610972988889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A231754.P17983310610972988889

namespace A231754

/-- `filter[A057653(n+1), A359592(#)]` -/
def P17983310610972988889.Spec : Prop :=
  ∀ n, P17983310610972988889.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P4452074719873576012

`filter[A057653(n+1), A359834(#)]`
-/

namespace A231754.P4452074719873576012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A231754.P4452074719873576012

namespace A231754

/-- `filter[A057653(n+1), A359834(#)]` -/
def P4452074719873576012.Spec : Prop :=
  ∀ n, P4452074719873576012.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P10435291497839677812

`filter[A057653(n+1), A373154(#)]`
-/

namespace A231754.P10435291497839677812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A231754.P10435291497839677812

namespace A231754

/-- `filter[A057653(n+1), A373154(#)]` -/
def P10435291497839677812.Spec : Prop :=
  ∀ n, P10435291497839677812.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P7939151566473920213

`filter[A020893(n+1), A187074(#)]`
-/

namespace A231754.P7939151566473920213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A231754.P7939151566473920213

namespace A231754

/-- `filter[A020893(n+1), A187074(#)]` -/
def P7939151566473920213.Spec : Prop :=
  ∀ n, P7939151566473920213.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P4383659154830476894

`filter[A020893(n+1), A322980(#)]`
-/

namespace A231754.P4383659154830476894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A231754.P4383659154830476894

namespace A231754

/-- `filter[A020893(n+1), A322980(#)]` -/
def P4383659154830476894.Spec : Prop :=
  ∀ n, P4383659154830476894.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P15096760512966101858

`∩[A004613(n+1), A020893(n+1)]`
-/

namespace A231754.P15096760512966101858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231754.P15096760512966101858

namespace A231754

/-- `∩[A004613(n+1), A020893(n+1)]` -/
def P15096760512966101858.Spec : Prop :=
  ∀ n, (P15096760512966101858.a n : ℤ) = A231754 (n + 1)

end A231754

/-! ## A231754.P15682844871497545481

`filter[A008784(n+1), A359590(#)]`
-/

namespace A231754.P15682844871497545481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A231754.P15682844871497545481

namespace A231754

/-- `filter[A008784(n+1), A359590(#)]` -/
def P15682844871497545481.Spec : Prop :=
  ∀ n, P15682844871497545481.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P5468216751344799064

`filter[A008784(n+1), A359592(#)]`
-/

namespace A231754.P5468216751344799064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A231754.P5468216751344799064

namespace A231754

/-- `filter[A008784(n+1), A359592(#)]` -/
def P5468216751344799064.Spec : Prop :=
  ∀ n, P5468216751344799064.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P18129044954864842972

`filter[A008784(n+1), A373154(#)]`
-/

namespace A231754.P18129044954864842972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A231754.P18129044954864842972

namespace A231754

/-- `filter[A008784(n+1), A373154(#)]` -/
def P18129044954864842972.Spec : Prop :=
  ∀ n, P18129044954864842972.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P15486410484111582271

`filter[A020893(n+1), A093719(#)]`
-/

namespace A231754.P15486410484111582271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A231754.P15486410484111582271

namespace A231754

/-- `filter[A020893(n+1), A093719(#)]` -/
def P15486410484111582271.Spec : Prop :=
  ∀ n, P15486410484111582271.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P12565236037113468786

`filter[A020893(n+1), A105234(#)]`
-/

namespace A231754.P12565236037113468786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A231754.P12565236037113468786

namespace A231754

/-- `filter[A020893(n+1), A105234(#)]` -/
def P12565236037113468786.Spec : Prop :=
  ∀ n, P12565236037113468786.a n = A231754 (n + 1)

end A231754

/-!
# A231756: Numbers n such that reversal (n^2) plus 1 is prime.

The programs for A231756, there is no canonical definition to state claims against.
-/

/-! ## A231756.P7328679515145416290

`eq[1, A001222(A061226(n)-n²+1)]`
-/

namespace A231756.P7328679515145416290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061226 n - (n ^ 2 : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231756.P7328679515145416290

/-! ## A231756.P3012898478675112108

`eq[2, A000005(A061226(n)-n²+1)]`
-/

namespace A231756.P3012898478675112108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A061226 n - (n ^ 2 : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231756.P3012898478675112108

/-! ## A231756.P6632972844692944349

`eq[1, A001222(A002942(n+1)+1)]+1`
-/

namespace A231756.P6632972844692944349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002942 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A231756.P6632972844692944349

/-! ## A231756.P4403986986215614584

`eq[1, A001222(A004086(n²)+1)]`
-/

namespace A231756.P4403986986215614584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004086 (n ^ 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231756.P4403986986215614584

/-! ## A231756.P10125029202160682267

`eq[2, A000005(A004086(n²)+1)]`
-/

namespace A231756.P10125029202160682267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004086 (n ^ 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231756.P10125029202160682267

/-!
# A231757: Number of (n+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231757, there is no canonical definition to state claims against.
-/

/-! ## A231757.P6396026146076722867

`A231764(∑[4*n]+1)`
-/

namespace A231757.P6396026146076722867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231757.P6396026146076722867

/-! ## A231757.P11875785511483370302

`record[A003982(n)*A231764(n+1)]`
-/

namespace A231757.P11875785511483370302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A231764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231757.P11875785511483370302

/-! ## A231757.P4489069219876490554

`record[gcd(A003987(n), A231764(n+1))]`
-/

namespace A231757.P4489069219876490554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A231764 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231757.P4489069219876490554

/-! ## A231757.P1675909786119765219

`A231764(A001844(n))+A054899(n)`
-/

namespace A231757.P1675909786119765219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A001844 n).toNat + A054899 n

end

end A231757.P1675909786119765219

/-! ## A231757.P7817393520152792491

`A231764(A001844(n))+A122180(n+1)`
-/

namespace A231757.P7817393520152792491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A001844 n).toNat + A122180 (n + 1)

end

end A231757.P7817393520152792491

/-!
# A231758: Number of (n+1)X(2+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231758, there is no canonical definition to state claims against.
-/

/-! ## A231758.P9389206447133222089

`A231764(∑[n+2])`
-/

namespace A231758.P9389206447133222089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231758.P9389206447133222089

/-! ## A231758.P2205456056963685791

`record[A231764(abs(A201163(n)))]`
-/

namespace A231758.P2205456056963685791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231758.P2205456056963685791

/-! ## A231758.P3853409444084114740

`record[A231764(Δ[A003453(n+5)])]`
-/

namespace A231758.P3853409444084114740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231758.P3853409444084114740

/-! ## A231758.P15534428756046086319

`record[gcd(A008290(n+1), A231764(n+2))]`
-/

namespace A231758.P15534428756046086319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 (n + 1)) (A231764 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231758.P15534428756046086319

/-! ## A231758.P11867557271052678630

`A231764(A000096(n+1))*A344757(2*n+3)`
-/

namespace A231758.P11867557271052678630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A000096 (n + 1)).toNat * A344757 (2 * n + 3)

end

end A231758.P11867557271052678630

/-!
# A231759: Number of (n+1)X(3+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231759, there is no canonical definition to state claims against.
-/

/-! ## A231759.P5953723981952123328

`A231764(∑[n+3]+1)`
-/

namespace A231759.P5953723981952123328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231759.P5953723981952123328

/-! ## A231759.P17943863077528200064

`record[A231764(A198464(n+1))]`
-/

namespace A231759.P17943863077528200064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231759.P17943863077528200064

/-! ## A231759.P1590348345543459931

`record[A231764(A286159(n+5))]`
-/

namespace A231759.P1590348345543459931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A286159 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231759.P1590348345543459931

/-!
# A231760: Number of (n+1)X(4+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231760, there is no canonical definition to state claims against.
-/

/-! ## A231760.P6146510268193080059

`A231764(A141214(n+1))`
-/

namespace A231760.P6146510268193080059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A141214 (n + 1)).toNat

end

end A231760.P6146510268193080059

/-! ## A231760.P326514602951840459

`A231764(A055998(n+2))`
-/

namespace A231760.P326514602951840459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A055998 (n + 2)).toNat

end

end A231760.P326514602951840459

/-! ## A231760.P4103576775364660937

`A231764(A155212(n)+5)`
-/

namespace A231760.P4103576775364660937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A155212 n + 5).toNat

end

end A231760.P4103576775364660937

/-! ## A231760.P10154723034758518926

`A231764(A056000(n)+7)`
-/

namespace A231760.P10154723034758518926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A056000 n + 7).toNat

end

end A231760.P10154723034758518926

/-! ## A231760.P8822907253181791988

`A231764(eq[3, A193592(n)])`
-/

namespace A231760.P8822907253181791988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231760.P8822907253181791988

/-!
# A231761: Number of (n+1)X(5+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231761, there is no canonical definition to state claims against.
-/

/-! ## A231761.P17426360514059522533

`A231764(A046691(n+3))`
-/

namespace A231761.P17426360514059522533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A046691 (n + 3)).toNat

end

end A231761.P17426360514059522533

/-! ## A231761.P16302520116421970859

`A231764(eq[4, A193592(n)])`
-/

namespace A231761.P16302520116421970859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231761.P16302520116421970859

/-! ## A231761.P18334369327776503001

`A231764(Δ[A023545(n+1)])`
-/

namespace A231761.P18334369327776503001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (f1 (n + 1) - f1 n).toNat

end

end A231761.P18334369327776503001

/-! ## A231761.P12754633576667671311

`A231764(A155212(n+1)+4)`
-/

namespace A231761.P12754633576667671311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A155212 (n + 1) + 4).toNat

end

end A231761.P12754633576667671311

/-! ## A231761.P15684936841435603317

`A231764(eq[5, A200370(n+1)])`
-/

namespace A231761.P15684936841435603317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231761.P15684936841435603317

/-!
# A231762: Number of (n+1)X(6+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231762, there is no canonical definition to state claims against.
-/

/-! ## A231762.P14257192145396907515

`A231764(A052905(n+3))`
-/

namespace A231762.P14257192145396907515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A052905 (n + 3)).toNat

end

end A231762.P14257192145396907515

/-! ## A231762.P7443920382724073661

`A231764(eq[3, A219347(n)])`
-/

namespace A231762.P7443920382724073661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231762.P7443920382724073661

/-! ## A231762.P9519395270341565618

`A231764(eq[5, A193592(n)])`
-/

namespace A231762.P9519395270341565618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231762.P9519395270341565618

/-! ## A231762.P6389723577858848084

`A231764(eq[6, A200370(n+1)])`
-/

namespace A231762.P6389723577858848084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231762.P6389723577858848084

/-! ## A231762.P15834805578717267821

`A231764(eq[8, A185782(n+1)])`
-/

namespace A231762.P15834805578717267821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231762.P15834805578717267821

/-!
# A231763: Number of (n+1)X(7+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231763, there is no canonical definition to state claims against.
-/

/-! ## A231763.P9570896665568519823

`A231764(eq[4, A219347(n)])`
-/

namespace A231763.P9570896665568519823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231763.P9570896665568519823

/-! ## A231763.P10406000858935384418

`A231764(eq[6, A193592(n)])`
-/

namespace A231763.P10406000858935384418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231763.P10406000858935384418

/-! ## A231763.P4543889858489454102

`A231764(eq[7, A200370(n+1)])`
-/

namespace A231763.P4543889858489454102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231763.P4543889858489454102

/-! ## A231763.P17674856341732043277

`A231764(eq[10, A185782(n+1)])`
-/

namespace A231763.P17674856341732043277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231763.P17674856341732043277

/-! ## A231763.P4316735853607908329

`A231764(eq[32, A057728(n+1)])`
-/

namespace A231763.P4316735853607908329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231763.P4316735853607908329

/-!
# A231764: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231764, there is no canonical definition to state claims against.
-/

/-! ## A231764.P8761897391021153626

`A221446(3*n+5)-A157082(A001181(n))`
-/

namespace A231764.P8761897391021153626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (3 * n + 5) - A157082 (A001181 n).toNat

end

end A231764.P8761897391021153626

/-!
# A231765: Number of (1+1) X (n+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231765, there is no canonical definition to state claims against.
-/

/-! ## A231765.P1338651707331123759

`A231764(∑[n]+1)`
-/

namespace A231765.P1338651707331123759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231765.P1338651707331123759

/-! ## A231765.P10707039045925330157

`record[A231764(n+1)/A022166(n)]`
-/

namespace A231765.P10707039045925330157
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231764 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231765.P10707039045925330157

/-! ## A231765.P10314496892323556845

`record[A231764(n+1)/A078122(n)]`
-/

namespace A231765.P10314496892323556845
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231764 (n + 1) : ℚ) / (A078122 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231765.P10314496892323556845

/-! ## A231765.P12084843596234633057

`record[root(A231764(n+1), A059268(n))]`
-/

namespace A231765.P12084843596234633057
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231764 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231765.P12084843596234633057

/-! ## A231765.P9128807289849165292

`record[root(A231764(n+1), A074909(n))]`
-/

namespace A231765.P9128807289849165292
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231764 (n + 1) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231765.P9128807289849165292

/-!
# A231766: Number of (2+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231766, there is no canonical definition to state claims against.
-/

/-! ## A231766.P3497278468245280454

`A231764(∑[n+1]+2)`
-/

namespace A231766.P3497278468245280454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231766.P3497278468245280454

/-! ## A231766.P18410911636500157397

`record[A055137(n)*A231764(n+3)]`
-/

namespace A231766.P18410911636500157397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055137 n * A231764 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231766.P18410911636500157397

/-! ## A231766.P12856735124280253134

`record[gcd(A231714(n), A231764(n+3))]`
-/

namespace A231766.P12856735124280253134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A231714 n) (A231764 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231766.P12856735124280253134

/-!
# A231767: Number of (3+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231767, there is no canonical definition to state claims against.
-/

/-! ## A231767.P11382839239522727135

`A231764(∑[n+2]+4)`
-/

namespace A231767.P11382839239522727135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231767.P11382839239522727135

/-! ## A231767.P7494370234723508824

`record[A231764(A167614(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A231767.P7494370234723508824
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A167614 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231767.P7494370234723508824

/-! ## A231767.P10258888148231192079

`A326292(n)+A231764(A167614(n+1))`
-/

namespace A231767.P10258888148231192079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A231764 (A167614 (n + 1)).toNat

end

end A231767.P10258888148231192079

/-! ## A231767.P15689275744237108350

`lcm(A033999(n), A231764(A167614(n+1)))`
-/

namespace A231767.P15689275744237108350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A231764 (A167614 (n + 1)).toNat)

end

end A231767.P15689275744237108350

/-! ## A231767.P15797814934628833759

`A221193(2*n)*A231764(A167614(n+1))`
-/

namespace A231767.P15797814934628833759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221193 (2 * n) * A231764 (A167614 (n + 1)).toNat

end

end A231767.P15797814934628833759

/-!
# A231768: Number of (4+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231768, there is no canonical definition to state claims against.
-/

/-! ## A231768.P3853463861747569150

`A231764(A052905(n)+9)`
-/

namespace A231768.P3853463861747569150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A052905 n + 9).toNat

end

end A231768.P3853463861747569150

/-! ## A231768.P7685524518956195145

`A231764(A055999(n)+10)`
-/

namespace A231768.P7685524518956195145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A055999 n + 10).toNat

end

end A231768.P7685524518956195145

/-! ## A231768.P3451563140572015836

`A231764(A167614(n+2)+1)`
-/

namespace A231768.P3451563140572015836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A167614 (n + 2) + 1).toNat

end

end A231768.P3451563140572015836

/-! ## A231768.P2966459229748128997

`A231764(Δ[A023545(n+1)-n²])`
-/

namespace A231768.P2966459229748128997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (f1 (n + 1) - f1 n).toNat

end

end A231768.P2966459229748128997

/-! ## A231768.P9131657770598128233

`A231764(Δ[A006503(n+1)]-(n-3))`
-/

namespace A231768.P9131657770598128233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (f1 (n + 1) - f1 n - ((n : ℤ) - 3)).toNat

end

end A231768.P9131657770598128233

/-!
# A231769: Number of (5+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231769, there is no canonical definition to state claims against.
-/

/-! ## A231769.P5870840558722967399

`A231764(A167499(n+3))`
-/

namespace A231769.P5870840558722967399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A167499 (n + 3)).toNat

end

end A231769.P5870840558722967399

/-! ## A231769.P14014669561914765060

`A231764(A155212(n)+13)`
-/

namespace A231769.P14014669561914765060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A155212 n + 13).toNat

end

end A231769.P14014669561914765060

/-! ## A231769.P12177001634378982692

`A231764(A056000(n)+15)`
-/

namespace A231769.P12177001634378982692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A056000 n + 15).toNat

end

end A231769.P12177001634378982692

/-! ## A231769.P14896013153457667443

`A231764(eq[7, A066657(n)])`
-/

namespace A231769.P14896013153457667443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231769.P14896013153457667443

/-! ## A231769.P4377789568885940345

`A231764(A055998(n+2)+8)`
-/

namespace A231769.P4377789568885940345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A055998 (n + 2) + 8).toNat

end

end A231769.P4377789568885940345

/-!
# A231770: Number of (6+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231770, there is no canonical definition to state claims against.
-/

/-! ## A231770.P2590180410069621624

`A231764(A055998(n+3)+9)`
-/

namespace A231770.P2590180410069621624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A055998 (n + 3) + 9).toNat

end

end A231770.P2590180410069621624

/-! ## A231770.P17576680001217048686

`A231764(A056000(n+1)+16)`
-/

namespace A231770.P17576680001217048686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A056000 (n + 1) + 16).toNat

end

end A231770.P17576680001217048686

/-! ## A231770.P6850410476787089902

`A231764(A246172(n+1)+20)`
-/

namespace A231770.P6850410476787089902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A246172 (n + 1) + 20).toNat

end

end A231770.P6850410476787089902

/-! ## A231770.P8357734112762744657

`A231764(eq[7, A131818(n+1)])`
-/

namespace A231770.P8357734112762744657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231770.P8357734112762744657

/-! ## A231770.P4982056591951848761

`A231764(A004274(n+7)+A167614(n+2)+1)`
-/

namespace A231770.P4982056591951848761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A004274 (n + 7) + (A167614 (n + 2) + 1)).toNat

end

end A231770.P4982056591951848761

/-!
# A231771: Number of (7+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231771, there is no canonical definition to state claims against.
-/

/-! ## A231771.P992854800537687994

`A231764(A056119(n)+28)`
-/

namespace A231771.P992854800537687994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A056119 n + 28).toNat

end

end A231771.P992854800537687994

/-! ## A231771.P15919267908442671270

`A231764(eq[11, A066657(n)])`
-/

namespace A231771.P15919267908442671270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231771.P15919267908442671270

/-! ## A231771.P13551319119713525128

`A231764(A000217(n+6)+7)`
-/

namespace A231771.P13551319119713525128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A000217 (n + 6) + 7).toNat

end

end A231771.P13551319119713525128

/-! ## A231771.P11588324252725930809

`A231764(eq[6, A002262(n)]+1)`
-/

namespace A231771.P11588324252725930809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A231771.P11588324252725930809

/-! ## A231771.P11980190041557521425

`A231764(eq[8, A131818(n+1)])`
-/

namespace A231771.P11980190041557521425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231771.P11980190041557521425

/-!
# A231773: Numbers k such that there are no numbers with k primitive roots.

The programs for A231773, the canonical program `A231773.P13203328181478767103` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231773 has offset 1).

The definition of A231773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231773.P13203328181478767103

`comp[A072209(n+1)-1]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A231773

/-- `comp[A072209(n+1)-1]+1` -/
def P13203328181478767103.Spec : Prop :=
  ∀ n, (P13203328181478767103.a n : ℤ) = A231773 (n + 1)

theorem P13203328181478767103.correct : P13203328181478767103.Spec := by
  intro n
  simp only [A231773, Nat.add_sub_cancel]

end A231773

/-! ## A231773.P8020094457226730771

`comp[A072209(n+1)%A072202(n+1)]`
-/

namespace A231773.P8020094457226730771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072209 (n + 1)) (A072202 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231773.P8020094457226730771

namespace A231773

/-- `comp[A072209(n+1)%A072202(n+1)]` -/
def P8020094457226730771.Spec : Prop :=
  ∀ n, (P8020094457226730771.a n : ℤ) = A231773 (n + 1)

end A231773

/-! ## A231773.P6299006545091801334

`eq[A231772(A014092(n+1)), A231772(n)]`
-/

namespace A231773.P6299006545091801334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 (A014092 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231773.P6299006545091801334

namespace A231773

/-- `eq[A231772(A014092(n+1)), A231772(n)]` -/
def P6299006545091801334.Spec : Prop :=
  ∀ n, (P6299006545091801334.a n : ℤ) = A231773 (n + 1)

end A231773

/-! ## A231773.P10287105291848624533

`eq[1, A002126(A231772(n))]`
-/

namespace A231773.P10287105291848624533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A231772 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231773.P10287105291848624533

namespace A231773

/-- `eq[1, A002126(A231772(n))]` -/
def P10287105291848624533.Spec : Prop :=
  ∀ n, (P10287105291848624533.a n : ℤ) = A231773 (n + 1)

end A231773

/-! ## A231773.P245805859458697537

`eq[1, A231772(A231772(n)+1)]`
-/

namespace A231773.P245805859458697537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 (A231772 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231773.P245805859458697537

namespace A231773

/-- `eq[1, A231772(A231772(n)+1)]` -/
def P245805859458697537.Spec : Prop :=
  ∀ n, (P245805859458697537.a n : ℤ) = A231773 (n + 1)

end A231773

/-! ## A231773.P5147151444704068149

`eq[A231772(n), A295819(A008586(n))]`
-/

namespace A231773.P5147151444704068149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295819 (A008586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231773.P5147151444704068149

namespace A231773

/-- `eq[A231772(n), A295819(A008586(n))]` -/
def P5147151444704068149.Spec : Prop :=
  ∀ n, (P5147151444704068149.a n : ℤ) = A231773 (n + 1)

end A231773

/-! ## A231773.P2923577612347169116

`eq[A008586(2*A231772(n)), A231772(n)]`
-/

namespace A231773.P2923577612347169116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (2 * A231772 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231773.P2923577612347169116

namespace A231773

/-- `eq[A008586(2*A231772(n)), A231772(n)]` -/
def P2923577612347169116.Spec : Prop :=
  ∀ n, (P2923577612347169116.a n : ℤ) = A231773 (n + 1)

end A231773

/-! ## A231773.P3705165664878029456

`eq[A231772(A017101(n)), A231772(n)]`
-/

namespace A231773.P3705165664878029456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 (A017101 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231773.P3705165664878029456

namespace A231773

/-- `eq[A231772(A017101(n)), A231772(n)]` -/
def P3705165664878029456.Spec : Prop :=
  ∀ n, (P3705165664878029456.a n : ℤ) = A231773 (n + 1)

end A231773

/-! ## A231773.P767264676224796520

`eq[A167001(n), A231772(n)]`
-/

namespace A231773.P767264676224796520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231773.P767264676224796520

namespace A231773

/-- `eq[A167001(n), A231772(n)]` -/
def P767264676224796520.Spec : Prop :=
  ∀ n, (P767264676224796520.a n : ℤ) = A231773 (n + 1)

end A231773

/-!
# A231776: Least positive integer k <= n with (2^k + k) * n - 1 prime, or 0 if such a number k does not exist.

The programs for A231776, there is no canonical definition to state claims against.
-/

/-! ## A231776.P33338400224303922

`A318360(A053989(3*(n+1))*A072669(n+1))`
-/

namespace A231776.P33338400224303922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318360 (A053989 (3 * (n + 1)) * A072669 (n + 1)).toNat

end

end A231776.P33338400224303922

/-! ## A231776.P5248180978606592278

`A004275(A053989(3*(n+1))%A274709(3*n+4))`
-/

namespace A231776.P5248180978606592278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (Int.tmod (A053989 (3 * (n + 1))) (A274709 (3 * n + 4))).toNat

end

end A231776.P5248180978606592278

/-! ## A231776.P8494127404819363455

`A004275(A053989(3*(n+1)))%A331873(3*n+5)`
-/

namespace A231776.P8494127404819363455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004275 (A053989 (3 * (n + 1))).toNat) (A331873 (3 * n + 5))

end

end A231776.P8494127404819363455

/-! ## A231776.P7214447099304509572

`A300826(A141353(n))`
-/

namespace A231776.P7214447099304509572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300826 (A141353 n).toNat

end

end A231776.P7214447099304509572

/-! ## A231776.P10688835761581391828

`A050320(A286173(n+1))`
-/

namespace A231776.P10688835761581391828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A286173 (n + 1)).toNat

end

end A231776.P10688835761581391828

/-!
# A231778: Number of n X n 0..2 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231778, there is no canonical definition to state claims against.
-/

/-! ## A231778.P14061702448446700783

`A231785((n+1)²+n²)`
-/

namespace A231778.P14061702448446700783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 ((n + 1) ^ 2 + n ^ 2)

end

end A231778.P14061702448446700783

/-!
# A231779: Number of n X 2 0..2 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231779, there is no canonical definition to state claims against.
-/

/-! ## A231779.P11312351285670974897

`A231785(∑[n+1]+2)`
-/

namespace A231779.P11312351285670974897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231779.P11312351285670974897

/-! ## A231779.P3927918149931752806

`record[gcd(A098825(n), A231785(n+1))]`
-/

namespace A231779.P3927918149931752806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A231785 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231779.P3927918149931752806

/-! ## A231779.P9301377672349283000

`record[gcd(A121314(n), A231785(n+2))]`
-/

namespace A231779.P9301377672349283000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121314 n) (A231785 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231779.P9301377672349283000

/-! ## A231779.P8860359871916734239

`record[A231785(∑[A152271(n)])]`
-/

namespace A231779.P8860359871916734239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231779.P8860359871916734239

/-! ## A231779.P14813359119833943154

`A231908(∑[n+2])`
-/

namespace A231779.P14813359119833943154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231779.P14813359119833943154

/-!
# A231780: Number of nX3 0..2 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231780, there is no canonical definition to state claims against.
-/

/-! ## A231780.P4736511242033612304

`A231785(∑[n+2]+4)`
-/

namespace A231780.P4736511242033612304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231780.P4736511242033612304

/-! ## A231780.P4136452303648891610

`record[gcd(A121314(n+1), A231785(n+4))]`
-/

namespace A231780.P4136452303648891610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121314 (n + 1)) (A231785 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231780.P4136452303648891610

/-! ## A231780.P15823532245619111258

`A096811(n)*A231785(A167614(n+1))`
-/

namespace A231780.P15823532245619111258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096811 n * A231785 (A167614 (n + 1)).toNat

end

end A231780.P15823532245619111258

/-! ## A231780.P3147889901823930238

`lcm(A091499(n), A231785(A167614(n+1)))`
-/

namespace A231780.P3147889901823930238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A091499 n) (A231785 (A167614 (n + 1)).toNat)

end

end A231780.P3147889901823930238

/-! ## A231780.P4862660528933948896

`or(A000038(n), A231785(A167614(n+1)))`
-/

namespace A231780.P4862660528933948896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A231785 (A167614 (n + 1)).toNat)

end

end A231780.P4862660528933948896

/-!
# A231781: Number of nX4 0..2 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231781, there is no canonical definition to state claims against.
-/

/-! ## A231781.P910965416648690141

`A231785(A052905(n)+9)`
-/

namespace A231781.P910965416648690141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A052905 n + 9).toNat

end

end A231781.P910965416648690141

/-! ## A231781.P6322633351048015153

`A231785(A055999(n)+10)`
-/

namespace A231781.P6322633351048015153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A055999 n + 10).toNat

end

end A231781.P6322633351048015153

/-! ## A231781.P13397245079573599019

`A231785(A167614(n+2)+1)`
-/

namespace A231781.P13397245079573599019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A167614 (n + 2) + 1).toNat

end

end A231781.P13397245079573599019

/-! ## A231781.P16781172075941292660

`A231785(A167499(n+2)-1)`
-/

namespace A231781.P16781172075941292660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A167499 (n + 2) - 1).toNat

end

end A231781.P16781172075941292660

/-! ## A231781.P1176456751828710131

`A231785(A166136(n+2)-2)`
-/

namespace A231781.P1176456751828710131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A166136 (n + 2) - 2).toNat

end

end A231781.P1176456751828710131

/-!
# A231782: Number of nX5 0..2 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231782, there is no canonical definition to state claims against.
-/

/-! ## A231782.P195188731230871000

`A231785(A167499(n+3))`
-/

namespace A231782.P195188731230871000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A167499 (n + 3)).toNat

end

end A231782.P195188731230871000

/-! ## A231782.P7880771142688033434

`A231785(A155212(n)+13)`
-/

namespace A231782.P7880771142688033434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A155212 n + 13).toNat

end

end A231782.P7880771142688033434

/-! ## A231782.P5734363854148670689

`A231785(A056000(n)+15)`
-/

namespace A231782.P5734363854148670689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A056000 n + 15).toNat

end

end A231782.P5734363854148670689

/-! ## A231782.P15681123188352772377

`A231785(A000217(n+4)+5)`
-/

namespace A231782.P15681123188352772377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A000217 (n + 4) + 5).toNat

end

end A231782.P15681123188352772377

/-! ## A231782.P18300055687287343492

`A231785(A374005(n+1))`
-/

namespace A231782.P18300055687287343492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A374005 (n + 1)).toNat

end

end A231782.P18300055687287343492

/-!
# A231783: Number of nX6 0..2 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231783, there is no canonical definition to state claims against.
-/

/-! ## A231783.P6592376856126547739

`A231785(A000217(n+5)+6)`
-/

namespace A231783.P6592376856126547739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A000217 (n + 5) + 6).toNat

end

end A231783.P6592376856126547739

/-! ## A231783.P7423135946865445940

`A231785(A000096(n+5)-(n-1))`
-/

namespace A231783.P7423135946865445940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A231783.P7423135946865445940

/-! ## A231783.P12540271096251200012

`A231785(A374007(n+1))`
-/

namespace A231783.P12540271096251200012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A374007 (n + 1)).toNat

end

end A231783.P12540271096251200012

/-! ## A231783.P15367415574382366747

`A231785(eq[3, A219347(n)])`
-/

namespace A231783.P15367415574382366747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231783.P15367415574382366747

/-! ## A231783.P15453564288673196843

`A231785(eq[16, A166065(n)])`
-/

namespace A231783.P15453564288673196843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231783.P15453564288673196843

/-!
# A231784: Number of nX7 0..2 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231784, there is no canonical definition to state claims against.
-/

/-! ## A231784.P4911741986747219783

`A231785(A000096(n+5)+8)`
-/

namespace A231784.P4911741986747219783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A000096 (n + 5) + 8).toNat

end

end A231784.P4911741986747219783

/-! ## A231784.P7860493225677001142

`A231785(A374008(n+1))`
-/

namespace A231784.P7860493225677001142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A374008 (n + 1)).toNat

end

end A231784.P7860493225677001142

/-! ## A231784.P1023371393957185134

`A231785(A055999(n+4))`
-/

namespace A231784.P1023371393957185134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A055999 (n + 4)).toNat

end

end A231784.P1023371393957185134

/-! ## A231784.P3814373346752702544

`A231785(eq[4, A219347(n)])`
-/

namespace A231784.P3814373346752702544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231784.P3814373346752702544

/-! ## A231784.P5851096005041515109

`A231785(eq[6, A193592(n)])`
-/

namespace A231784.P5851096005041515109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231784.P5851096005041515109

/-!
# A231787: Count of the first 10^n primes containing at least one 1's digit.

The programs for A231787, there is no canonical definition to state claims against.
-/

/-! ## A231787.P14537879958901652084

`A011557(n+1)-A228413(n+1)`
-/

namespace A231787.P14537879958901652084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A228413 (n + 1)

end

end A231787.P14537879958901652084

/-! ## A231787.P15400199168180046519

`Δ[A000042(n+1)]-A228413(n+1)`
-/

namespace A231787.P15400199168180046519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228413 (n + 1)

end

end A231787.P15400199168180046519

/-!
# A231790: Count of the first 10^n primes containing at least one 4's digit.

The programs for A231790, there is no canonical definition to state claims against.
-/

/-! ## A231790.P3671607650269711405

`record[A348783(n)-A228416(n)]`
-/

namespace A231790.P3671607650269711405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348783 n - A228416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231790.P3671607650269711405

/-! ## A231790.P8480195487827637600

`record[A219112(n+1)-A228416(n)]`
-/

namespace A231790.P8480195487827637600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219112 (n + 1) - A228416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231790.P8480195487827637600

/-!
# A231791: Integers k such that A231589(k) = floor(k*(k-1)/4) - k.

The programs for A231791, there is no canonical definition to state claims against.
-/

/-! ## A231791.P9965313161898305240

`eq[2, A025581(2*A231589(n+1))]+1`
-/

namespace A231791.P9965313161898305240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A231589 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A231791.P9965313161898305240

/-!
# A231793: Count of the first 10^n primes containing at least one 6's digit.

The programs for A231793, there is no canonical definition to state claims against.
-/

/-! ## A231793.P10183138687438550913

`record[A348783(n)-A228418(n)]`
-/

namespace A231793.P10183138687438550913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348783 n - A228418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231793.P10183138687438550913

/-! ## A231793.P16957131279353597438

`record[A219112(n+1)-A228418(n)]`
-/

namespace A231793.P16957131279353597438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219112 (n + 1) - A228418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231793.P16957131279353597438

/-!
# A231795: Count of the first 10^n primes containing at least one 8's digit.

The programs for A231795, there is no canonical definition to state claims against.
-/

/-! ## A231795.P4400767373217360177

`record[A348783(n)-A228420(n+1)]`
-/

namespace A231795.P4400767373217360177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348783 n - A228420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231795.P4400767373217360177

/-! ## A231795.P13754027996432926591

`record[A219112(n+1)-A228420(n+1)]`
-/

namespace A231795.P13754027996432926591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219112 (n + 1) - A228420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231795.P13754027996432926591

/-!
# A231796: Count of the first 10^n primes containing at least one 9's digit.

The programs for A231796, there is no canonical definition to state claims against.
-/

/-! ## A231796.P5211003091275163720

`A011557(n+1)-A228421(n+1)`
-/

namespace A231796.P5211003091275163720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A228421 (n + 1)

end

end A231796.P5211003091275163720

/-!
# A231797: Number of endofunctions on [n] such that no element has a preimage of cardinality one.

The programs for A231797, there is no canonical definition to state claims against.
-/

/-! ## A231797.P17924590450244633859

`A245405(∑[n+2]-1)`
-/

namespace A231797.P17924590450244633859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A231797.P17924590450244633859

/-! ## A231797.P3361180770866688325

`gcd(n+2, n+1)*A245405(A034856(n+1))`
-/

namespace A231797.P3361180770866688325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 2) (n + 1) : ℤ) * A245405 (A034856 (n + 1)).toNat

end

end A231797.P3361180770866688325

/-! ## A231797.P2218056859774704057

`A245405(A034856(n+1))^A178489(n)`
-/

namespace A231797.P2218056859774704057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245405 (A034856 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A231797.P2218056859774704057

/-! ## A231797.P4163208839310074902

`A178489(n+1)*A245405(A034856(n+1))`
-/

namespace A231797.P4163208839310074902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (n + 1) * A245405 (A034856 (n + 1)).toNat

end

end A231797.P4163208839310074902

/-! ## A231797.P16934527632540072128

`A245405(A034856(n+1))%A078986(n+1)`
-/

namespace A231797.P16934527632540072128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245405 (A034856 (n + 1)).toNat) (A078986 (n + 1))

end

end A231797.P16934527632540072128

/-! ## A231797.P13832778777398972922

`A210216(C(n, 2)+1)*A245405(A034856(n+1))`
-/

namespace A231797.P13832778777398972922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210216 (Nat.choose n 2 + 1) * A245405 (A034856 (n + 1)).toNat

end

end A231797.P13832778777398972922

/-! ## A231797.P15184307082211024391

`A206823(∑[n])`
-/

namespace A231797.P15184307082211024391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206823 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231797.P15184307082211024391

/-! ## A231797.P690154859889275686

`lcm(-(-1)^n, A206823(A000217(n)))`
-/

namespace A231797.P690154859889275686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-((-1) ^ n)) (A206823 (A000217 n).toNat)

end

end A231797.P690154859889275686

/-! ## A231797.P1879314100933831696

`A206823(A000217(n))^A178489(n)`
-/

namespace A231797.P1879314100933831696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206823 (A000217 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A231797.P1879314100933831696

/-!
# A231798: Number of (n+1) X (n+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors equal to one.

The programs for A231798, there is no canonical definition to state claims against.
-/

/-! ## A231798.P801647609390410386

`A231806(∑[4*n]+1)`
-/

namespace A231798.P801647609390410386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231798.P801647609390410386

/-! ## A231798.P13590880612418396459

`record[gcd(A114327(n), A231806(n+1))]`
-/

namespace A231798.P13590880612418396459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A231806 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231798.P13590880612418396459

/-! ## A231798.P18302458113376396392

`A326459(n)+A231806(A001844(n))`
-/

namespace A231798.P18302458113376396392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326459 n + A231806 (A001844 n).toNat

end

end A231798.P18302458113376396392

/-! ## A231798.P6553476413699121946

`or(A000038(n)², A231806(A001844(n)))`
-/

namespace A231798.P6553476413699121946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n ^ 2) (A231806 (A001844 n).toNat)

end

end A231798.P6553476413699121946

/-! ## A231798.P12471983035111446862

`A231806(A001844(n))+A034561(n+1)`
-/

namespace A231798.P12471983035111446862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (A001844 n).toNat + A034561 (n + 1)

end

end A231798.P12471983035111446862

/-!
# A231799: Number of (n+1) X (1+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors equal to one.

The programs for A231799, the canonical program `A231799.P3211724560709468117` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231799 has offset 1).

The definition of A231799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231799.P3211724560709468117

`a(n-1)+2*a(n-2)+5*a(n-3)-2*a(n-5)-4*a(n-6)` with `a(0)=5, a(1)=13, a(2)=32, a(3)=79, a(4)=200, a(5)=500`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A231799

/-- `a(n-1)+2*a(n-2)+5*a(n-3)-2*a(n-5)-4*a(n-6)` -/
def P3211724560709468117.Spec : Prop :=
  ∀ n, P3211724560709468117.a n = A231799 (n + 1)

theorem P3211724560709468117.correct : P3211724560709468117.Spec := by
  intro n
  simp only [A231799, Nat.add_sub_cancel]

end A231799

/-! ## A231799.P5381383147762202042

`A231806(∑[n]+1)`
-/

namespace A231799.P5381383147762202042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231799.P5381383147762202042

namespace A231799

/-- `A231806(∑[n]+1)` -/
def P5381383147762202042.Spec : Prop :=
  ∀ n, P5381383147762202042.a n = A231799 (n + 1)

end A231799

/-! ## A231799.P14382923144347155097

`record[A010054(n)*A231806(n+1)]`
-/

namespace A231799.P14382923144347155097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A231806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231799.P14382923144347155097

namespace A231799

/-- `record[A010054(n)*A231806(n+1)]` -/
def P14382923144347155097.Spec : Prop :=
  ∀ n, P14382923144347155097.a n = A231799 (n + 1)

end A231799

/-! ## A231799.P10288169222474477495

`record[gcd(A002262(n), A231806(n+1))]`
-/

namespace A231799.P10288169222474477495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A231806 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231799.P10288169222474477495

namespace A231799

/-- `record[gcd(A002262(n), A231806(n+1))]` -/
def P10288169222474477495.Spec : Prop :=
  ∀ n, (P10288169222474477495.a n : ℤ) = A231799 (n + 1)

end A231799

/-! ## A231799.P2736105588892352900

`record[root(A231806(n+1), A002260(n+1))]`
-/

namespace A231799.P2736105588892352900
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231806 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231799.P2736105588892352900

namespace A231799

/-- `record[root(A231806(n+1), A002260(n+1))]` -/
def P2736105588892352900.Spec : Prop :=
  ∀ n, P2736105588892352900.a n = (A231799 (n + 1) : ℝ)

end A231799

