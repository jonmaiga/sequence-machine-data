import SequenceMachineLib
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
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
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
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

/-!
# A043600: Numbers whose base-4 representation has exactly 9 runs.

The programs for A043600, there is no canonical definition to state claims against.
-/

/-! ## A043600.P907365181268519538

`floor(A043601(3*n+1)/4)`
-/

namespace A043600.P907365181268519538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043601 (3 * n + 1) : ℚ) / 4⌋

end

end A043600.P907365181268519538

/-! ## A043600.P4180121571547810113

`record[floor(A043601(A291766(n))/4)]`
-/

namespace A043600.P4180121571547810113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043601 (A291766 n).toNat : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043600.P4180121571547810113

/-! ## A043600.P11286305150804374209

`record[floor(A043601(A141310(n))/4)]`
-/

namespace A043600.P11286305150804374209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043601 (A141310 n).toNat : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043600.P11286305150804374209

/-! ## A043600.P10287221268301703979

`record[floor(A043601(A133310(n))/4)]`
-/

namespace A043600.P10287221268301703979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043601 (A133310 n).toNat : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043600.P10287221268301703979

/-!
# A043602: Numbers whose base-5 representation has exactly 2 runs.

The programs for A043602, there is no canonical definition to state claims against.
-/

/-! ## A043602.P5277481195090862279

`eq[2, A043557(n)]`
-/

namespace A043602.P5277481195090862279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043602.P5277481195090862279

/-! ## A043602.P10158249851134965722

`eq[2, A043558(A037465(n))]`
-/

namespace A043602.P10158249851134965722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (A037465 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043602.P10158249851134965722

/-! ## A043602.P6414438438271513744

`eq[2, A043559(A037466(n))]`
-/

namespace A043602.P6414438438271513744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 (A037466 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043602.P6414438438271513744

/-! ## A043602.P16494733813206563028

`eq[2, A043560(A037467(n))]`
-/

namespace A043602.P16494733813206563028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043560 (A037467 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043602.P16494733813206563028

/-! ## A043602.P6636100460330427690

`eq[2, A043561(A037468(n))]`
-/

namespace A043602.P6636100460330427690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A037468 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043602.P6636100460330427690

/-! ## A043602.P15990750812775169957

`eq[2, A043562(A007091(n))]`
-/

namespace A043602.P15990750812775169957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043602.P15990750812775169957

/-! ## A043602.P18336507428762889983

`eq[2, A043562(A080228(n+1))]`
-/

namespace A043602.P18336507428762889983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A080228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043602.P18336507428762889983

/-! ## A043602.P3224796706010192816

`eq[2, A043562(A014263(n+1)/2)]`
-/

namespace A043602.P3224796706010192816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043602.P3224796706010192816

/-! ## A043602.P6724878264529940197

`eq[2, A043562(A001744(n+1))]`
-/

namespace A043602.P6724878264529940197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A001744 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043602.P6724878264529940197

/-! ## A043602.P3326205558978700931

`eq[2, A043562(A014263(n+1))]`
-/

namespace A043602.P3326205558978700931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A014263 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043602.P3326205558978700931

/-!
# A043603: Numbers whose base-5 representation has exactly 3 runs.

The programs for A043603, there is no canonical definition to state claims against.
-/

/-! ## A043603.P4918183181196909678

`eq[3, A043557(n)]`
-/

namespace A043603.P4918183181196909678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043603.P4918183181196909678

/-! ## A043603.P5382478988855116418

`eq[1, A043558(A037465(n))-2]`
-/

namespace A043603.P5382478988855116418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (A037465 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043603.P5382478988855116418

/-! ## A043603.P4674853439976997882

`eq[1, A043559(A037466(n))-2]`
-/

namespace A043603.P4674853439976997882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 (A037466 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043603.P4674853439976997882

/-! ## A043603.P17652129125580842868

`eq[1, A043560(A037467(n))-2]`
-/

namespace A043603.P17652129125580842868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043560 (A037467 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043603.P17652129125580842868

/-! ## A043603.P4449975203214317951

`eq[1, A043561(A037468(n))-2]`
-/

namespace A043603.P4449975203214317951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A037468 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043603.P4449975203214317951

/-! ## A043603.P8209496239473324119

`eq[3, A043562(A007091(n))]`
-/

namespace A043603.P8209496239473324119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043603.P8209496239473324119

/-! ## A043603.P16088886866789874679

`eq[3, A043562(A001744(n+1))]`
-/

namespace A043603.P16088886866789874679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A001744 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043603.P16088886866789874679

/-! ## A043603.P4427400853735038271

`eq[3, A043562(A014263(n+1))]`
-/

namespace A043603.P4427400853735038271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A014263 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043603.P4427400853735038271

/-! ## A043603.P4767278282342746973

`eq[3, A043562(A072960(n+1))]`
-/

namespace A043603.P4767278282342746973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A072960 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043603.P4767278282342746973

/-! ## A043603.P4593258061861406791

`eq[3, A043562(A080228(n+1))]`
-/

namespace A043603.P4593258061861406791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A080228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043603.P4593258061861406791

/-!
# A043604: Numbers whose base-5 representation has exactly 4 runs.

The programs for A043604, there is no canonical definition to state claims against.
-/

/-! ## A043604.P5420965896835369304

`eq[4, A043557(n)]`
-/

namespace A043604.P5420965896835369304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043604.P5420965896835369304

/-! ## A043604.P14566966847311312979

`eq[2, A043558(A037465(n))-2]`
-/

namespace A043604.P14566966847311312979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (A037465 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043604.P14566966847311312979

/-! ## A043604.P15219347408308204060

`eq[2, A043559(A037466(n))-2]`
-/

namespace A043604.P15219347408308204060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 (A037466 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043604.P15219347408308204060

/-! ## A043604.P14594001188437659203

`eq[2, A043560(A037467(n))-2]`
-/

namespace A043604.P14594001188437659203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043560 (A037467 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043604.P14594001188437659203

/-! ## A043604.P13169435092394981993

`eq[2, A043561(A037468(n))-2]`
-/

namespace A043604.P13169435092394981993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A037468 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043604.P13169435092394981993

/-! ## A043604.P14332329551650461762

`eq[4, A043562(A007091(n))]`
-/

namespace A043604.P14332329551650461762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043604.P14332329551650461762

/-! ## A043604.P14911644238347769346

`eq[4, A043562(A001744(n+1))]`
-/

namespace A043604.P14911644238347769346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A001744 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043604.P14911644238347769346

/-! ## A043604.P18285495958890259561

`eq[4, A043562(A014263(n+1))]`
-/

namespace A043604.P18285495958890259561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A014263 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043604.P18285495958890259561

/-! ## A043604.P169777086621048794

`eq[4, A043562(A072960(n+1))]`
-/

namespace A043604.P169777086621048794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A072960 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043604.P169777086621048794

/-! ## A043604.P17241594259761540778

`eq[4, A043562(A080228(n+1))]`
-/

namespace A043604.P17241594259761540778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A080228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043604.P17241594259761540778

/-!
# A043605: Numbers whose base-5 representation has exactly 5 runs.

The programs for A043605, there is no canonical definition to state claims against.
-/

/-! ## A043605.P602785355760510909

`eq[5, A043557(n)]`
-/

namespace A043605.P602785355760510909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043605.P602785355760510909

/-! ## A043605.P11098488233869447927

`eq[5, A044945(A028310(n))]`
-/

namespace A043605.P11098488233869447927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044945 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043605.P11098488233869447927

/-!
# A043608: Numbers whose base-5 representation has exactly 8 runs.

The programs for A043608, there is no canonical definition to state claims against.
-/

/-! ## A043608.P15862297816982808006

`floor(A043609(4*n+1)/5)`
-/

namespace A043608.P15862297816982808006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043609 (4 * n + 1) : ℚ) / 5⌋

end

end A043608.P15862297816982808006

/-! ## A043608.P4012992424542776720

`round(A043609(4*n+2)/5)`
-/

namespace A043608.P4012992424542776720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A043609 (4 * n + 2) : ℚ) / 5)

end

end A043608.P4012992424542776720

/-!
# A043610: Numbers whose base-6 representation has exactly 2 runs.

The programs for A043610, there is no canonical definition to state claims against.
-/

/-! ## A043610.P670579573148786138

`eq[2, A043558(n)]`
-/

namespace A043610.P670579573148786138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043610.P670579573148786138

/-! ## A043610.P2411813770709360812

`eq[2, A043561(A037472(n))]`
-/

namespace A043610.P2411813770709360812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A037472 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043610.P2411813770709360812

/-! ## A043610.P13972476672985541572

`eq[2, A043562(A007092(n))]`
-/

namespace A043610.P13972476672985541572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043610.P13972476672985541572

/-! ## A043610.P6793357847460932807

`eq[2, A043562(A084984(n+1))]`
-/

namespace A043610.P6793357847460932807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043610.P6793357847460932807

/-! ## A043610.P8614163437383895090

`eq[2, A043562(A202267(n+1))]`
-/

namespace A043610.P8614163437383895090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043610.P8614163437383895090

/-! ## A043610.P3952078558893609124

`eq[2, A043562(A276138(n+1))]`
-/

namespace A043610.P3952078558893609124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A276138 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043610.P3952078558893609124

/-! ## A043610.P41678976593553646

`eq[2, A043562(A137386(n+1))]`
-/

namespace A043610.P41678976593553646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A137386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043610.P41678976593553646

/-!
# A043611: Numbers whose base-6 representation has exactly 3 runs.

The programs for A043611, there is no canonical definition to state claims against.
-/

/-! ## A043611.P17970241549729126816

`eq[3, A043558(n)]`
-/

namespace A043611.P17970241549729126816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043611.P17970241549729126816

/-! ## A043611.P900228694615821360

`eq[1, A043561(A037472(n))-2]`
-/

namespace A043611.P900228694615821360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A037472 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043611.P900228694615821360

/-! ## A043611.P10088942042466172262

`eq[3, A043562(A007092(n))]`
-/

namespace A043611.P10088942042466172262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043611.P10088942042466172262

/-! ## A043611.P2318321401746957650

`eq[3, A043562(A084984(n+1))]`
-/

namespace A043611.P2318321401746957650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043611.P2318321401746957650

/-! ## A043611.P10425678380248663790

`eq[3, A043562(A202267(n+1))]`
-/

namespace A043611.P10425678380248663790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043611.P10425678380248663790

/-! ## A043611.P1726366323979479274

`eq[3, A043562(A276138(n+1))]`
-/

namespace A043611.P1726366323979479274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A276138 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043611.P1726366323979479274

/-! ## A043611.P5870075149391854490

`eq[3, A043562(A137386(n+1))]`
-/

namespace A043611.P5870075149391854490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A137386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043611.P5870075149391854490

/-!
# A043612: Numbers whose base-6 representation has exactly 4 runs.

The programs for A043612, there is no canonical definition to state claims against.
-/

/-! ## A043612.P4389066234021965820

`eq[4, A043558(n)]`
-/

namespace A043612.P4389066234021965820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043612.P4389066234021965820

/-! ## A043612.P1733399345366521786

`eq[2, A043561(A037472(n))-2]`
-/

namespace A043612.P1733399345366521786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A037472 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043612.P1733399345366521786

/-! ## A043612.P9060843603933068821

`eq[4, A043562(A007092(n))]`
-/

namespace A043612.P9060843603933068821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043612.P9060843603933068821

/-! ## A043612.P4170207967124091855

`eq[4, A043562(A084984(n+1))]`
-/

namespace A043612.P4170207967124091855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043612.P4170207967124091855

/-! ## A043612.P3685517104593561917

`eq[4, A043562(A202267(n+1))]`
-/

namespace A043612.P3685517104593561917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043612.P3685517104593561917

/-! ## A043612.P8334738338786749819

`eq[4, A043562(A276138(n+1))]`
-/

namespace A043612.P8334738338786749819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A276138 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043612.P8334738338786749819

/-! ## A043612.P11086932250156082829

`eq[4, A043562(A137386(n+1))]`
-/

namespace A043612.P11086932250156082829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A137386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043612.P11086932250156082829

/-!
# A043613: Numbers whose base-6 representation has exactly 5 runs.

The programs for A043613, there is no canonical definition to state claims against.
-/

/-! ## A043613.P15356550177228843473

`eq[5, A043558(n)]`
-/

namespace A043613.P15356550177228843473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043613.P15356550177228843473

/-! ## A043613.P11840934426532108459

`A020725(eq[5, A044946(n+1)])`
-/

namespace A043613.P11840934426532108459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043613.P11840934426532108459

/-!
# A043614: Numbers whose base-6 representation has exactly 6 runs.

The programs for A043614, there is no canonical definition to state claims against.
-/

/-! ## A043614.P2196840121727627473

`round(A043615(5*n+1)/6)`
-/

namespace A043614.P2196840121727627473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A043615 (5 * n + 1) : ℚ) / 6)

end

end A043614.P2196840121727627473

/-! ## A043614.P5740729038986479503

`floor(A043615(4*n+1+n)/6)`
-/

namespace A043614.P5740729038986479503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043615 (4 * n + 1 + n) : ℚ) / 6⌋

end

end A043614.P5740729038986479503

/-! ## A043614.P3872378418251307338

`record[floor(A043615(and(n, n-1)+1)/6)]`
-/

namespace A043614.P3872378418251307338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043615 (Int.land (n : ℤ) ((n : ℤ) - 1) + 1).toNat : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043614.P3872378418251307338

/-! ## A043614.P2925961546784859493

`record[floor(A043615((-1)^n+n+1)/6)]`
-/

namespace A043614.P2925961546784859493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043615 ((-1) ^ n + (n + 1 : ℤ)).toNat : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043614.P2925961546784859493

/-! ## A043614.P9701687452781284013

`A000027(floor(A043615(5*n+1)/6))`
-/

namespace A043614.P9701687452781284013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(A043615 (5 * n + 1) : ℚ) / 6⌋.toNat

end

end A043614.P9701687452781284013

/-!
# A043617: Numbers whose base-7 representation has exactly 2 runs.

The programs for A043617, there is no canonical definition to state claims against.
-/

/-! ## A043617.P12097373003785115882

`eq[2, A043559(n)]`
-/

namespace A043617.P12097373003785115882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043617.P12097373003785115882

/-! ## A043617.P15889033347455775358

`eq[2, A043561(A037475(n))]`
-/

namespace A043617.P15889033347455775358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A037475 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043617.P15889033347455775358

/-! ## A043617.P9326574546032180734

`eq[2, A043562(A007093(n))]`
-/

namespace A043617.P9326574546032180734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043617.P9326574546032180734

/-! ## A043617.P6478350815974142412

`eq[2, A043562(A168501(n+1))]`
-/

namespace A043617.P6478350815974142412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A168501 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043617.P6478350815974142412

/-! ## A043617.P6746374506199380741

`eq[2, A043562(A307913(n+1))]`
-/

namespace A043617.P6746374506199380741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A307913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043617.P6746374506199380741

/-! ## A043617.P17012722659024680768

`eq[2, A043562(A028374(n+1))]`
-/

namespace A043617.P17012722659024680768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A028374 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043617.P17012722659024680768

/-!
# A043618: Numbers whose base-7 representation has exactly 3 runs.

The programs for A043618, there is no canonical definition to state claims against.
-/

/-! ## A043618.P2068206201817967526

`eq[3, A043559(n)]`
-/

namespace A043618.P2068206201817967526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043618.P2068206201817967526

/-! ## A043618.P12307170599261529751

`eq[1, A043561(A037475(n))-2]`
-/

namespace A043618.P12307170599261529751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A037475 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043618.P12307170599261529751

/-! ## A043618.P6046564574003162975

`eq[3, A043562(A007093(n))]`
-/

namespace A043618.P6046564574003162975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043618.P6046564574003162975

/-! ## A043618.P8338281906220125883

`eq[3, A043562(A028374(n+1))]`
-/

namespace A043618.P8338281906220125883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A028374 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043618.P8338281906220125883

/-! ## A043618.P1016864323561932351

`eq[3, A043562(A168501(n+1))]`
-/

namespace A043618.P1016864323561932351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A168501 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043618.P1016864323561932351

/-! ## A043618.P12858520629603659598

`eq[3, A043562(A307913(n+1))]`
-/

namespace A043618.P12858520629603659598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A307913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043618.P12858520629603659598

/-! ## A043618.P18012466496154459044

`eq[1, A044947(A233583(n+1))-2]`
-/

namespace A043618.P18012466496154459044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044947 (A233583 (n + 1)).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043618.P18012466496154459044

/-! ## A043618.P18134413929084348870

`lt[A043559(A043617(n+1)), A043559(n)]`
-/

namespace A043618.P18134413929084348870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 (A043617 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043618.P18134413929084348870

/-! ## A043618.P2284455400252092081

`lt[A020639(A043569(n+1)), A043559(n)]`
-/

namespace A043618.P2284455400252092081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A043569 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043618.P2284455400252092081

/-!
# A043619: Numbers whose base-7 representation has exactly 4 runs.

The programs for A043619, there is no canonical definition to state claims against.
-/

/-! ## A043619.P3441432977557082569

`eq[4, A043559(n)]`
-/

namespace A043619.P3441432977557082569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043619.P3441432977557082569

/-! ## A043619.P16683127888702346325

`lt[3, A043562(A007093(n))]`
-/

namespace A043619.P16683127888702346325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043619.P16683127888702346325

/-! ## A043619.P1359712482712008335

`eq[4, A044947(A028310(n))]`
-/

namespace A043619.P1359712482712008335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044947 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043619.P1359712482712008335

/-! ## A043619.P5889610932499963022

`lt[3, A043562(A028374(n+1))]`
-/

namespace A043619.P5889610932499963022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A028374 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043619.P5889610932499963022

/-! ## A043619.P10274709395331469119

`A065475(eq[4, A044947(n+1)])`
-/

namespace A043619.P10274709395331469119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043619.P10274709395331469119

/-! ## A043619.P1567985464573824066

`lt[3, A043562(A307913(n+1))]`
-/

namespace A043619.P1567985464573824066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A307913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043619.P1567985464573824066

/-! ## A043619.P2065083731087355872

`eq[4, A044947(A233583(n+1))]`
-/

namespace A043619.P2065083731087355872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044947 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043619.P2065083731087355872

/-!
# A043624: Numbers whose base-8 representation has exactly 2 runs.

The programs for A043624, there is no canonical definition to state claims against.
-/

/-! ## A043624.P13269152789002574533

`eq[2, A043560(n)]`
-/

namespace A043624.P13269152789002574533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043624.P13269152789002574533

/-! ## A043624.P6476403436684023196

`lt[A227551(a(A043560(n)-1)+1), 1]` with `a(0)=1, a(1)=2`
-/

namespace A043624.P6476403436684023196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A227551 (f1 (A043560 n - 1).toNat + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043624.P6476403436684023196

/-! ## A043624.P17171347262357537381

`eq[2, A043561(A037477(n))]`
-/

namespace A043624.P17171347262357537381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A037477 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043624.P17171347262357537381

/-! ## A043624.P6510306561126865855

`eq[2, A043562(A007094(n))]`
-/

namespace A043624.P6510306561126865855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043624.P6510306561126865855

/-! ## A043624.P3434679620342022329

`eq[2, A043562(A008541(n+1))]`
-/

namespace A043624.P3434679620342022329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A008541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043624.P3434679620342022329

/-!
# A043625: Numbers whose base-8 representation has exactly 3 runs.

The programs for A043625, there is no canonical definition to state claims against.
-/

/-! ## A043625.P11064487673064257744

`eq[3, A043560(n)]`
-/

namespace A043625.P11064487673064257744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043625.P11064487673064257744

/-! ## A043625.P15214127270693817864

`eq[3, A043561(A037477(n))]`
-/

namespace A043625.P15214127270693817864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A037477 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043625.P15214127270693817864

/-! ## A043625.P7692221524086253276

`eq[3, A043562(A007094(n))]`
-/

namespace A043625.P7692221524086253276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043625.P7692221524086253276

/-! ## A043625.P7343081877383713076

`eq[1, A043562(A008541(n+1))-2]`
-/

namespace A043625.P7343081877383713076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A008541 (n + 1)).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043625.P7343081877383713076

/-! ## A043625.P1716149389485292109

`eq[3, A044948(A233583(n+1))]`
-/

namespace A043625.P1716149389485292109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044948 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043625.P1716149389485292109

/-! ## A043625.P7923930093499302936

`A053645(2*A043627(n+1))/2`
-/

namespace A043625.P7923930093499302936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053645 (2 * A043627 (n + 1)).toNat : ℚ) / 2

end

end A043625.P7923930093499302936

/-!
# A043626: Numbers whose base-8 representation has exactly 4 runs.

The programs for A043626, there is no canonical definition to state claims against.
-/

/-! ## A043626.P18023734009423680970

`eq[4, A043560(n)]`
-/

namespace A043626.P18023734009423680970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043626.P18023734009423680970

/-! ## A043626.P937999160228292831

`eq[4, A043562(A007094(n))]`
-/

namespace A043626.P937999160228292831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043626.P937999160228292831

/-! ## A043626.P15133791619890633001

`eq[4, A044948(A028310(n))]`
-/

namespace A043626.P15133791619890633001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044948 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043626.P15133791619890633001

/-! ## A043626.P123211490496027616

`and(A003817(A124057(n+1)-n), A043628(n+1))`
-/

namespace A043626.P123211490496027616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (A124057 (n + 1) - (n : ℤ)).toNat) (A043628 (n + 1))

end

end A043626.P123211490496027616

/-! ## A043626.P15026211698626101982

`and(A003817(A124057(n+1)), A043628(n+1))`
-/

namespace A043626.P15026211698626101982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (A124057 (n + 1)).toNat) (A043628 (n + 1))

end

end A043626.P15026211698626101982

/-!
# A043628: Numbers whose base-8 representation has exactly 6 runs.

The programs for A043628, there is no canonical definition to state claims against.
-/

/-! ## A043628.P5749515575204239343

`A043630(n+1)%(A043627(n+1)-A043629(n+1))`
-/

namespace A043628.P5749515575204239343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043630 (n + 1)) (A043627 (n + 1) - A043629 (n + 1))

end

end A043628.P5749515575204239343

/-!
# A043631: Numbers whose base-9 representation has exactly 2 runs.

The programs for A043631, there is no canonical definition to state claims against.
-/

/-! ## A043631.P1324910305145305297

`eq[2, A043561(n)]`
-/

namespace A043631.P1324910305145305297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043631.P1324910305145305297

/-! ## A043631.P1562333684700352734

`eq[2, A043562(A007095(n))]`
-/

namespace A043631.P1562333684700352734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043631.P1562333684700352734

/-! ## A043631.P4607987156915045609

`eq[2, A043562(A052406(n+1))]`
-/

namespace A043631.P4607987156915045609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A052406 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043631.P4607987156915045609

/-! ## A043631.P8280858935131055660

`eq[2, A043562(A052413(n+1))]`
-/

namespace A043631.P8280858935131055660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A052413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043631.P8280858935131055660

/-! ## A043631.P663621860605722821

`eq[2, A043562(A052414(n+1))]`
-/

namespace A043631.P663621860605722821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A052414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043631.P663621860605722821

/-! ## A043631.P2263494496250828463

`eq[2, A043562(A052421(n+1))]`
-/

namespace A043631.P2263494496250828463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A052421 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043631.P2263494496250828463

/-! ## A043631.P2860025414284165306

`eq[2, A043568(A023717(n))]`
-/

namespace A043631.P2860025414284165306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043631.P2860025414284165306

/-!
# A043632: Numbers whose base-9 representation has exactly 3 runs.

The programs for A043632, there is no canonical definition to state claims against.
-/

/-! ## A043632.P3202346217958978330

`eq[3, A043561(n)]`
-/

namespace A043632.P3202346217958978330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043632.P3202346217958978330

/-! ## A043632.P1299865969706419356

`eq[3, A043562(A007095(n))]`
-/

namespace A043632.P1299865969706419356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043632.P1299865969706419356

/-! ## A043632.P4569356820709251172

`eq[3, A043562(A052406(n+1))]`
-/

namespace A043632.P4569356820709251172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A052406 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043632.P4569356820709251172

/-! ## A043632.P14402073014146195993

`eq[3, A043562(A052421(n+1))]`
-/

namespace A043632.P14402073014146195993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A052421 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043632.P14402073014146195993

/-! ## A043632.P5215555715774990718

`eq[1, A043562(A052405(n+1))-2]`
-/

namespace A043632.P5215555715774990718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A052405 (n + 1)).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043632.P5215555715774990718

/-! ## A043632.P970427549328440287

`eq[3, A043568(A023717(n))]`
-/

namespace A043632.P970427549328440287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043632.P970427549328440287

/-! ## A043632.P60373504886260452

`eq[1, A044949(A233583(n+1))-2]`
-/

namespace A043632.P60373504886260452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A233583 (n + 1)).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043632.P60373504886260452

/-!
# A043633: Numbers whose base-9 representation has exactly 4 runs.

The programs for A043633, there is no canonical definition to state claims against.
-/

/-! ## A043633.P3531122745427393459

`eq[4, A043561(n)]`
-/

namespace A043633.P3531122745427393459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043633.P3531122745427393459

/-! ## A043633.P12552668755527382915

`lt[3, A043562(A007095(n))]`
-/

namespace A043633.P12552668755527382915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043633.P12552668755527382915

/-! ## A043633.P7327142423301803880

`eq[4, A044949(A028310(n))]`
-/

namespace A043633.P7327142423301803880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043633.P7327142423301803880

/-! ## A043633.P991985988918354415

`lt[3, A043562(A052406(n+1))]`
-/

namespace A043633.P991985988918354415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A052406 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043633.P991985988918354415

/-! ## A043633.P13892091478726975913

`eq[4, A043562(A052405(n+1))]`
-/

namespace A043633.P13892091478726975913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A052405 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043633.P13892091478726975913

/-! ## A043633.P9954597096361533800

`lt[3, A043562(A052413(n+1))]`
-/

namespace A043633.P9954597096361533800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A052413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043633.P9954597096361533800

/-! ## A043633.P10616066763481785053

`lt[3, A043562(A052414(n+1))]`
-/

namespace A043633.P10616066763481785053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A052414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043633.P10616066763481785053

/-! ## A043633.P15224971485695164462

`lt[3, A043562(A052421(n+1))]`
-/

namespace A043633.P15224971485695164462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A052421 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043633.P15224971485695164462

/-! ## A043633.P4840904011400003120

`A114637(eq[4, A044949(n+1)])`
-/

namespace A043633.P4840904011400003120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043633.P4840904011400003120

/-! ## A043633.P17198202675253743126

`lt[3, A043568(A023717(n))]`
-/

namespace A043633.P17198202675253743126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043633.P17198202675253743126

/-! ## A043633.P11458556800883358598

`eq[4, A044949(A233583(n+1))]`
-/

namespace A043633.P11458556800883358598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043633.P11458556800883358598

/-!
# A043635: Numbers whose base-9 representation has exactly 6 runs.

The programs for A043635, there is no canonical definition to state claims against.
-/

/-! ## A043635.P1117160256095855139

`A043637(n+1)%(A043634(n+1)-A043636(n+1))`
-/

namespace A043635.P1117160256095855139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043637 (n + 1)) (A043634 (n + 1) - A043636 (n + 1))

end

end A043635.P1117160256095855139

/-!
# A043638: Numbers whose base-10 representation has exactly 2 runs.

The programs for A043638, the canonical program `A043638.P8660108337525184615` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043638 has offset 1).

The definition of A043638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043638.P4316373431091572823

`eq[2, A043562(n)]`
-/

namespace A043638.P4316373431091572823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043638.P4316373431091572823

namespace A043638

/-- `eq[2, A043562(n)]` -/
def P4316373431091572823.Spec : Prop :=
  ∀ n, (P4316373431091572823.a n : ℤ) = A043638 (n + 1)

end A043638

/-! ## A043638.P17934926884183190492

`eq[2, A343383(A123895(n))]`
-/

namespace A043638.P17934926884183190492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343383 (A123895 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043638.P17934926884183190492

namespace A043638

/-- `eq[2, A343383(A123895(n))]` -/
def P17934926884183190492.Spec : Prop :=
  ∀ n, (P17934926884183190492.a n : ℤ) = A043638 (n + 1)

end A043638

/-! ## A043638.P8660108337525184615

`eq[2, A055640(A098488(n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A043638

/-- `eq[2, A055640(A098488(n))]` -/
def P8660108337525184615.Spec : Prop :=
  ∀ n, (P8660108337525184615.a n : ℤ) = A043638 (n + 1)

theorem P8660108337525184615.correct : P8660108337525184615.Spec := by
  intro n
  simp only [A043638, Nat.add_sub_cancel]

end A043638

/-! ## A043638.P11254408106454980540

`lt[tan(A043562(n)), A057428(n)]`
-/

namespace A043638.P11254408106454980540
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A043562 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A043638.P11254408106454980540

namespace A043638

/-- `lt[tan(A043562(n)), A057428(n)]` -/
def P11254408106454980540.Spec : Prop :=
  ∀ n, (P11254408106454980540.a n : ℤ) = A043638 (n + 1)

end A043638

/-! ## A043638.P11396790208006561060

`eq[2, A043568(A102489(n))]`
-/

namespace A043638.P11396790208006561060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (A102489 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043638.P11396790208006561060

namespace A043638

/-- `eq[2, A043568(A102489(n))]` -/
def P11396790208006561060.Spec : Prop :=
  ∀ n, (P11396790208006561060.a n : ℤ) = A043638 (n + 1)

end A043638

/-! ## A043638.P1059617688810046987

`eq[A016411(A139337(n)), A107846(n)]`
-/

namespace A043638.P1059617688810046987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016411 (A139337 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043638.P1059617688810046987

namespace A043638

/-- `eq[A016411(A139337(n)), A107846(n)]` -/
def P1059617688810046987.Spec : Prop :=
  ∀ n, (P1059617688810046987.a n : ℤ) = A043638 (n + 1)

end A043638

/-! ## A043638.P2492124945927471605

`eq[A025444(A139337(n)), A202022(n)]`
-/

namespace A043638.P2492124945927471605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (A139337 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043638.P2492124945927471605

namespace A043638

/-- `eq[A025444(A139337(n)), A202022(n)]` -/
def P2492124945927471605.Spec : Prop :=
  ∀ n, (P2492124945927471605.a n : ℤ) = A043638 (n + 1)

end A043638

/-! ## A043638.P11125387871169477150

`eq[A073729(A233583(n+1)), A137564(n)]`
-/

namespace A043638.P11125387871169477150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043638.P11125387871169477150

namespace A043638

/-- `eq[A073729(A233583(n+1)), A137564(n)]` -/
def P11125387871169477150.Spec : Prop :=
  ∀ n, (P11125387871169477150.a n : ℤ) = A043638 (n + 1)

end A043638

/-! ## A043638.P2503692091651079668

`eq[1, A039710(A213217(n))]`
-/

namespace A043638.P2503692091651079668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043638.P2503692091651079668

namespace A043638

/-- `eq[1, A039710(A213217(n))]` -/
def P2503692091651079668.Spec : Prop :=
  ∀ n, (P2503692091651079668.a n : ℤ) = A043638 (n + 1)

end A043638

/-!
# A043639: Numbers whose base-10 representation has exactly 3 runs.

The programs for A043639, the canonical program `A043639.P17311220086423612145` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043639 has offset 1).

The definition of A043639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043639.P14444302418685326549

`∩[A043713(n+1), A139819(n+1)]`
-/

namespace A043639.P14444302418685326549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043639.P14444302418685326549

namespace A043639

/-- `∩[A043713(n+1), A139819(n+1)]` -/
def P14444302418685326549.Spec : Prop :=
  ∀ n, (P14444302418685326549.a n : ℤ) = A043639 (n + 1)

end A043639

/-! ## A043639.P5174820816753196987

`eq[3, A043562(n)]`
-/

namespace A043639.P5174820816753196987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043639.P5174820816753196987

namespace A043639

/-- `eq[3, A043562(n)]` -/
def P5174820816753196987.Spec : Prop :=
  ∀ n, (P5174820816753196987.a n : ℤ) = A043639 (n + 1)

end A043639

/-! ## A043639.P17311220086423612145

`eq[1, A055640(A098488(n))-2]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A043639

/-- `eq[1, A055640(A098488(n))-2]` -/
def P17311220086423612145.Spec : Prop :=
  ∀ n, (P17311220086423612145.a n : ℤ) = A043639 (n + 1)

theorem P17311220086423612145.correct : P17311220086423612145.Spec := by
  intro n
  simp only [A043639, Nat.add_sub_cancel]

end A043639

/-! ## A043639.P14391511517396210988

`eq[3, A043568(A102489(n))]`
-/

namespace A043639.P14391511517396210988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (A102489 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043639.P14391511517396210988

namespace A043639

/-- `eq[3, A043568(A102489(n))]` -/
def P14391511517396210988.Spec : Prop :=
  ∀ n, (P14391511517396210988.a n : ℤ) = A043639 (n + 1)

end A043639

/-! ## A043639.P9833294220894201433

`lt[A345580(n+1), A000027(A045918(n))]`
-/

namespace A043639.P9833294220894201433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A045918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043639.P9833294220894201433

namespace A043639

/-- `lt[A345580(n+1), A000027(A045918(n))]` -/
def P9833294220894201433.Spec : Prop :=
  ∀ n, (P9833294220894201433.a n : ℤ) = A043639 (n + 1)

end A043639

/-! ## A043639.P13045891982549890927

`eq[3, A044950(n+1)]+1`
-/

namespace A043639.P13045891982549890927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043639.P13045891982549890927

namespace A043639

/-- `eq[3, A044950(n+1)]+1` -/
def P13045891982549890927.Spec : Prop :=
  ∀ n, (P13045891982549890927.a n : ℤ) = A043639 (n + 1)

end A043639

/-! ## A043639.P13644871306432306901

`eq[3, A044950(A028310(n))]`
-/

namespace A043639.P13644871306432306901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043639.P13644871306432306901

namespace A043639

/-- `eq[3, A044950(A028310(n))]` -/
def P13644871306432306901.Spec : Prop :=
  ∀ n, (P13644871306432306901.a n : ℤ) = A043639 (n + 1)

end A043639

/-! ## A043639.P1628275678904408878

`eq[5, A046695(A139337(n))]`
-/

namespace A043639.P1628275678904408878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046695 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043639.P1628275678904408878

namespace A043639

/-- `eq[5, A046695(A139337(n))]` -/
def P1628275678904408878.Spec : Prop :=
  ∀ n, (P1628275678904408878.a n : ℤ) = A043639 (n + 1)

end A043639

/-! ## A043639.P10657402945470246934

`eq[3, A044950(A233583(n+1))]`
-/

namespace A043639.P10657402945470246934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043639.P10657402945470246934

namespace A043639

/-- `eq[3, A044950(A233583(n+1))]` -/
def P10657402945470246934.Spec : Prop :=
  ∀ n, (P10657402945470246934.a n : ℤ) = A043639 (n + 1)

end A043639

/-! ## A043639.P1961194978189380660

`eq[3, A044950(A123108(2*n))]`
-/

namespace A043639.P1961194978189380660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044950 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043639.P1961194978189380660

namespace A043639

/-- `eq[3, A044950(A123108(2*n))]` -/
def P1961194978189380660.Spec : Prop :=
  ∀ n, (P1961194978189380660.a n : ℤ) = A043639 (n + 1)

end A043639

/-! ## A043639.P3100899355015589869

`lt[A301628(A301628(n+1)), A045918(n)]`
-/

namespace A043639.P3100899355015589869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (A301628 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043639.P3100899355015589869

namespace A043639

/-- `lt[A301628(A301628(n+1)), A045918(n)]` -/
def P3100899355015589869.Spec : Prop :=
  ∀ n, (P3100899355015589869.a n : ℤ) = A043639 (n + 1)

end A043639

/-!
# A043640: Numbers whose base-10 representation has exactly 4 runs.

The programs for A043640, there is no canonical definition to state claims against.
-/

/-! ## A043640.P4214794468750220286

`lt[3, A043562(n)]`
-/

namespace A043640.P4214794468750220286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043640.P4214794468750220286

/-! ## A043640.P13382697949288404263

`eq[4, A043562(A028310(n))]`
-/

namespace A043640.P13382697949288404263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043640.P13382697949288404263

/-! ## A043640.P13449362427463562254

`eq[4, A043562(A222252(n))]`
-/

namespace A043640.P13449362427463562254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A222252 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043640.P13449362427463562254

/-! ## A043640.P7308664720032481004

`eq[4, A043562(A222254(n))]`
-/

namespace A043640.P7308664720032481004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043640.P7308664720032481004

/-! ## A043640.P2836736707397784154

`eq[4, A043562(A048379(n))]`
-/

namespace A043640.P2836736707397784154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A048379 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043640.P2836736707397784154

/-!
# A043641: Numbers whose base-10 representation has exactly 5 runs.

The programs for A043641, there is no canonical definition to state claims against.
-/

/-! ## A043641.P440656665785004809

`A043643(n+1)-A165831(A046306(n+1))`
-/

namespace A043641.P440656665785004809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043643 (n + 1) - A165831 (A046306 (n + 1)).toNat

end

end A043641.P440656665785004809

/-! ## A043641.P2552276595654591538

`A043643(n+1)%A165831(A046306(n+3))`
-/

namespace A043641.P2552276595654591538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043643 (n + 1)) (A165831 (A046306 (n + 3)).toNat)

end

end A043641.P2552276595654591538

/-! ## A043641.P13070563832327028954

`A213182(A134817(n+2))`
-/

namespace A043641.P13070563832327028954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213182 (A134817 (n + 2)).toNat

end

end A043641.P13070563832327028954

/-! ## A043641.P18319864381515347288

`A213182(A330927(n+1)+1)`
-/

namespace A043641.P18319864381515347288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213182 (A330927 (n + 1) + 1).toNat

end

end A043641.P18319864381515347288

/-! ## A043641.P14952964057425332778

`A280443(A000055(n))+A213182(n+1)`
-/

namespace A043641.P14952964057425332778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280443 (A000055 n).toNat + A213182 (n + 1)

end

end A043641.P14952964057425332778

/-!
# A043643: Numbers whose base-10 representation has exactly 7 runs.

The programs for A043643, there is no canonical definition to state claims against.
-/

/-! ## A043643.P10558765526809818902

`A165831(A046306(n+1))+A043641(n+1)`
-/

namespace A043643.P10558765526809818902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (A046306 (n + 1)).toNat + A043641 (n + 1)

end

end A043643.P10558765526809818902

/-! ## A043643.P6874248598159131065

`A213182(A134817(n+2))+A165831(A046306(n+1))`
-/

namespace A043643.P6874248598159131065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213182 (A134817 (n + 2)).toNat + A165831 (A046306 (n + 1)).toNat

end

end A043643.P6874248598159131065

/-!
# A043645: Numbers whose base-11 representation has exactly 2 runs.

The programs for A043645, there is no canonical definition to state claims against.
-/

/-! ## A043645.P11124534081657869915

`eq[2, A043563(n)]`
-/

namespace A043645.P11124534081657869915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043645.P11124534081657869915

/-!
# A043646: Numbers whose base-11 representation has exactly 3 runs.

The programs for A043646, there is no canonical definition to state claims against.
-/

/-! ## A043646.P2361448800108410083

`eq[3, A043563(n)]`
-/

namespace A043646.P2361448800108410083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043646.P2361448800108410083

/-! ## A043646.P8522495750096166135

`lt[A043529(A043466(n+1)), A043563(n)]`
-/

namespace A043646.P8522495750096166135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A043466 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043646.P8522495750096166135

/-! ## A043646.P4151788917464628888

`lt[A043529(A043454(n+1)), A043563(n)]`
-/

namespace A043646.P4151788917464628888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A043454 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043646.P4151788917464628888

/-! ## A043646.P8939083846366614871

`lt[A043529(A043478(n+1)), A043563(n)]`
-/

namespace A043646.P8939083846366614871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A043478 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043646.P8939083846366614871

/-! ## A043646.P9405947939616016109

`lt[A043529(A043506(n+1)), A043563(n)]`
-/

namespace A043646.P9405947939616016109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A043506 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043646.P9405947939616016109

/-! ## A043646.P705538953558511796

`lt[A043529(A043570(n+1)), A043563(n)]`
-/

namespace A043646.P705538953558511796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A043570 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043646.P705538953558511796

/-!
# A043647: Numbers whose base-11 representation has exactly 4 runs.

The programs for A043647, there is no canonical definition to state claims against.
-/

/-! ## A043647.P13595128158897474420

`eq[4, A043563(n)]`
-/

namespace A043647.P13595128158897474420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043647.P13595128158897474420

/-!
# A043651: Numbers whose base-12 representation has exactly 2 runs.

The programs for A043651, there is no canonical definition to state claims against.
-/

/-! ## A043651.P8954348132843268187

`eq[2, A043564(n)]`
-/

namespace A043651.P8954348132843268187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043651.P8954348132843268187

/-!
# A043652: Numbers whose base-12 representation has exactly 3 runs.

The programs for A043652, there is no canonical definition to state claims against.
-/

/-! ## A043652.P9975122369979556416

`eq[3, A043564(n)]`
-/

namespace A043652.P9975122369979556416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043652.P9975122369979556416

/-! ## A043652.P9250586615128432492

`lt[A141310(A166744(n+1)), A043564(n)]`
-/

namespace A043652.P9250586615128432492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A166744 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043652.P9250586615128432492

/-! ## A043652.P5873511805356636597

`lt[A318512(A302491(n+1)), A043564(n)]`
-/

namespace A043652.P5873511805356636597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318512 (A302491 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043652.P5873511805356636597

/-! ## A043652.P12206961994714630734

`lt[A043529(A043454(n+1)), A043564(n)]`
-/

namespace A043652.P12206961994714630734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A043454 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043652.P12206961994714630734

/-! ## A043652.P16868872004174256992

`lt[A141310(A045416(n+1)), A043564(n)]`
-/

namespace A043652.P16868872004174256992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A045416 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043652.P16868872004174256992

/-! ## A043652.P12293607646786171485

`lt[A000005(A028864(n+1)), A043564(n)]`
-/

namespace A043652.P12293607646786171485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028864 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043652.P12293607646786171485

/-! ## A043652.P418064784654703762

`lt[A043558(A043610(n+1)), A043564(n)]`
-/

namespace A043652.P418064784654703762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (A043610 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043652.P418064784654703762

/-! ## A043652.P16361001599578850751

`A043656(n+1)%((2%A055983(n))^8)`
-/

namespace A043652.P16361001599578850751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043656 (n + 1)) (Int.tmod 2 (A055983 n) ^ 8)

end

end A043652.P16361001599578850751

/-! ## A043652.P8456781750908403446

`lt[A141310(A236568(n+1)), A043564(n)]`
-/

namespace A043652.P8456781750908403446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A236568 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043652.P8456781750908403446

/-!
# A043654: Numbers whose base-12 representation has exactly 5 runs.

The programs for A043654, there is no canonical definition to state claims against.
-/

/-! ## A043654.P1898339090816852517

`A043656(n+1)%(A043653(n+1)-A043655(n+1))`
-/

namespace A043654.P1898339090816852517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043656 (n + 1)) (A043653 (n + 1) - A043655 (n + 1))

end

end A043654.P1898339090816852517

/-!
# A043657: Numbers whose base-13 representation has exactly 2 runs.

The programs for A043657, there is no canonical definition to state claims against.
-/

/-! ## A043657.P15373386044399632815

`eq[2, A043565(n)]`
-/

namespace A043657.P15373386044399632815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043657.P15373386044399632815

/-!
# A043658: Numbers whose base-13 representation has exactly 3 runs.

The programs for A043658, there is no canonical definition to state claims against.
-/

/-! ## A043658.P16225185526413544397

`eq[3, A043565(n)]`
-/

namespace A043658.P16225185526413544397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043658.P16225185526413544397

/-! ## A043658.P14325656658045833188

`lt[A305800(A040172(n+1)), A043565(n)]`
-/

namespace A043658.P14325656658045833188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (A040172 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043658.P14325656658045833188

/-! ## A043658.P13085384915486456549

`lt[A018892(A000040(n+1)), A043565(n)]`
-/

namespace A043658.P13085384915486456549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043658.P13085384915486456549

/-! ## A043658.P9546327606574590766

`lt[A020639(A140470(n+1)), A043565(n)]`
-/

namespace A043658.P9546327606574590766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A140470 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043658.P9546327606574590766

/-! ## A043658.P3194729021306745582

`lt[A001222(A077065(n+1)), A043565(n)]`
-/

namespace A043658.P3194729021306745582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A077065 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043658.P3194729021306745582

/-! ## A043658.P10799218816324538628

`lt[A043529(A043522(n+1)), A043565(n)]`
-/

namespace A043658.P10799218816324538628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A043522 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043658.P10799218816324538628

/-! ## A043658.P12103197710561180335

`lt[A043529(A043526(n+1)), A043565(n)]`
-/

namespace A043658.P12103197710561180335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A043526 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043658.P12103197710561180335

/-! ## A043658.P12010021092264996217

`lt[A000005(A245742(n+1)), A043565(n)]`
-/

namespace A043658.P12010021092264996217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A245742 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043658.P12010021092264996217

/-! ## A043658.P15808962389287407163

`lt[A000005(A245743(n+1)), A043565(n)]`
-/

namespace A043658.P15808962389287407163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A245743 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043658.P15808962389287407163

/-!
# A043663: Numbers whose base-14 representation has exactly 2 runs.

The programs for A043663, there is no canonical definition to state claims against.
-/

/-! ## A043663.P11280787412104476181

`eq[2, A043566(n)]`
-/

namespace A043663.P11280787412104476181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043566 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043663.P11280787412104476181

/-!
# A043664: Numbers whose base-14 representation has exactly 3 runs.

The programs for A043664, there is no canonical definition to state claims against.
-/

/-! ## A043664.P2775519498720805720

`eq[3, A043566(n)]`
-/

namespace A043664.P2775519498720805720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043566 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043664.P2775519498720805720

/-! ## A043664.P3265129460006115168

`lt[A040637(4*n+2), A043566(n)]`
-/

namespace A043664.P3265129460006115168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040637 (4 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043566 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043664.P3265129460006115168

/-! ## A043664.P16918706157721066479

`lt[A190544(A190547(n+1)), A043566(n)]`
-/

namespace A043664.P16918706157721066479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190544 (A190547 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043566 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043664.P16918706157721066479

/-! ## A043664.P1977029050669798297

`lt[2, A043566(A233583(n+1))]`
-/

namespace A043664.P1977029050669798297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043566 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043664.P1977029050669798297

/-! ## A043664.P4281211788373035032

`lt[A020639(A225531(n)), A043566(n)]`
-/

namespace A043664.P4281211788373035032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A225531 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043566 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043664.P4281211788373035032

/-! ## A043664.P1146871565431224174

`lt[A089367(A176045(n+1)-1), A043566(n)]`
-/

namespace A043664.P1146871565431224174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089367 (A176045 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043566 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043664.P1146871565431224174

/-!
# A043666: Numbers whose base-14 representation has exactly 5 runs.

The programs for A043666, there is no canonical definition to state claims against.
-/

/-! ## A043666.P16730111320586268967

`A043668(n+1)%(A043665(n+1)-A043667(n+1))`
-/

namespace A043666.P16730111320586268967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043668 (n + 1)) (A043665 (n + 1) - A043667 (n + 1))

end

end A043666.P16730111320586268967

/-!
# A043669: Numbers whose base-15 representation has exactly 2 runs.

The programs for A043669, there is no canonical definition to state claims against.
-/

/-! ## A043669.P5034070191189732616

`eq[2, A043567(n)]`
-/

namespace A043669.P5034070191189732616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043669.P5034070191189732616

/-!
# A043670: Numbers whose base-15 representation has exactly 3 runs.

The programs for A043670, there is no canonical definition to state claims against.
-/

/-! ## A043670.P9012970799851750223

`eq[3, A043567(n)]`
-/

namespace A043670.P9012970799851750223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043670.P9012970799851750223

/-! ## A043670.P3955594587535426329

`A217558(A319282(n+2)+15)`
-/

namespace A043670.P3955594587535426329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (A319282 (n + 2) + 15).toNat

end

end A043670.P3955594587535426329

/-!
# A043672: Numbers whose base-15 representation has exactly 5 runs.

The programs for A043672, there is no canonical definition to state claims against.
-/

/-! ## A043672.P7267125337151438620

`A043674(n+1)%(A043671(n+1)-A043673(n+1))`
-/

namespace A043672.P7267125337151438620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043674 (n + 1)) (A043671 (n + 1) - A043673 (n + 1))

end

end A043672.P7267125337151438620

/-!
# A043675: Numbers whose base-16 representation has exactly 2 runs.

The programs for A043675, there is no canonical definition to state claims against.
-/

/-! ## A043675.P7425814826625443261

`eq[2, A043568(n)]`
-/

namespace A043675.P7425814826625443261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043675.P7425814826625443261

/-!
# A043676: Numbers whose base-16 representation has exactly 3 runs.

The programs for A043676, there is no canonical definition to state claims against.
-/

/-! ## A043676.P12031253644088371133

`eq[3, A043568(n)]`
-/

namespace A043676.P12031253644088371133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043676.P12031253644088371133

/-! ## A043676.P12215643559277663704

`A004524(A006257(A043678(n+1)))`
-/

namespace A043676.P12215643559277663704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A006257 (A043678 (n + 1)).toNat).toNat

end

end A043676.P12215643559277663704

/-! ## A043676.P1654150423895468612

`and(A003817(A043634(n+1)), A043678(n+1))`
-/

namespace A043676.P1654150423895468612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (A043634 (n + 1)).toNat) (A043678 (n + 1))

end

end A043676.P1654150423895468612

/-! ## A043676.P6339573574215322653

`and(A003817(A033548(n+3)), A043678(n+1))`
-/

namespace A043676.P6339573574215322653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (A033548 (n + 3)).toNat) (A043678 (n + 1))

end

end A043676.P6339573574215322653

/-! ## A043676.P9107418816010682654

`and(A003817(A350027(n+1)), A043678(n+1))`
-/

namespace A043676.P9107418816010682654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (A350027 (n + 1)).toNat) (A043678 (n + 1))

end

end A043676.P9107418816010682654

/-!
# A043677: Numbers whose base-16 representation has exactly 4 runs.

The programs for A043677, there is no canonical definition to state claims against.
-/

/-! ## A043677.P9553240289971708016

`A043675(n+1)+A262616(A056000(n)+6)²`
-/

namespace A043677.P9553240289971708016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043675 (n + 1) + A262616 (A056000 n + 6).toNat ^ 2

end

end A043677.P9553240289971708016

/-! ## A043677.P2746505880003815968

`A043675(n+1)+A262616(∑[n+5]+6)²`
-/

namespace A043677.P2746505880003815968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043675 (n + 1) + A262616 (∑ j ∈ Finset.range (n + 1), f1 j + 6) ^ 2

end

end A043677.P2746505880003815968

/-!
# A043678: Numbers whose base-16 representation has exactly 5 runs.

The programs for A043678, there is no canonical definition to state claims against.
-/

/-! ## A043678.P10980869633163647990

`A043680(n+1)%(A043677(n+1)-A043679(n+1))`
-/

namespace A043678.P10980869633163647990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043680 (n + 1)) (A043677 (n + 1) - A043679 (n + 1))

end

end A043678.P10980869633163647990

/-! ## A043678.P2635094283739618543

`and(A043680(n+1), A158011(A158011(n+1)))`
-/

namespace A043678.P2635094283739618543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043680 (n + 1)) (A158011 (A158011 (n + 1)).toNat)

end

end A043678.P2635094283739618543

/-!
# A043681: When cubed gives number composed just of the digits 0, 1, 2, 3.

The programs for A043681, there is no canonical definition to state claims against.
-/

/-! ## A043681.P7763177247076175969

`∩[A048792(n), A340051(n)]`
-/

namespace A043681.P7763177247076175969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048792 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043681.P7763177247076175969

/-! ## A043681.P17761223328683709145

`A007088(lt[A093655(n+1), 3])`
-/

namespace A043681.P17761223328683709145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093655 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A043681.P17761223328683709145

/-! ## A043681.P15486913706263594608

`∩[A136816(n+1), A048792(n)]`
-/

namespace A043681.P15486913706263594608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048792 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043681.P15486913706263594608

/-! ## A043681.P3911951466913807047

`∩[A136822(n+1), A048792(n)]`
-/

namespace A043681.P3911951466913807047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048792 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043681.P3911951466913807047

/-! ## A043681.P4541882189215019536

`∩[A136808(n+1), A234472(n+1)]`
-/

namespace A043681.P4541882189215019536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043681.P4541882189215019536

/-!
# A043682: a(n) = (1/2)*(n-th number whose base-2 representation has exactly 4 runs).

The programs for A043682, there is no canonical definition to state claims against.
-/

/-! ## A043682.P13578426954578207921

`A043571(n+1)/2`
-/

namespace A043682.P13578426954578207921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043571 (n + 1) : ℚ) / 2

end

end A043682.P13578426954578207921

/-! ## A043682.P11380493649833074694

`∪[A043570(n+1), A043571(n+1)]`
-/

namespace A043682.P11380493649833074694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043682.P11380493649833074694

/-! ## A043682.P12816206781225835476

`eq[4, A001316(and(2*n, -n))]`
-/

namespace A043682.P12816206781225835476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Int.land (2 * n : ℤ) (-(n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043682.P12816206781225835476

/-! ## A043682.P3956920361151999505

`eq[4, A001316(xor(n, or(n, 2*n)))]`
-/

namespace A043682.P3956920361151999505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Nat.xor n (Nat.lor n (2 * n)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043682.P3956920361151999505

/-! ## A043682.P482079097353690408

`eq[3, a(n-1-and(n, 2*n))+1]/2` with `a(0)=-1`
-/

namespace A043682.P482079097353690408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A043682.P482079097353690408

/-! ## A043682.P428076975763008077

`eq[2, A069010(n)]`
-/

namespace A043682.P428076975763008077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043682.P428076975763008077

/-! ## A043682.P12233319768097480267

`eq[1, A037800(n)]`
-/

namespace A043682.P12233319768097480267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043682.P12233319768097480267

/-! ## A043682.P3111573665134769029

`eq[4, A277561(n)]`
-/

namespace A043682.P3111573665134769029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043682.P3111573665134769029

/-! ## A043682.P11666086812910141740

`eq[2, val(A278159(n), 2)]`
-/

namespace A043682.P11666086812910141740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278159 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043682.P11666086812910141740

/-! ## A043682.P18410697635039234102

`eq[2, n-A239904(n)]`
-/

namespace A043682.P18410697635039234102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A239904 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043682.P18410697635039234102

/-! ## A043682.P16511014840638764473

`eq[2, ceil(A005811(n)/2)]`
-/

namespace A043682.P16511014840638764473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005811 n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043682.P16511014840638764473

/-! ## A043682.P17974419695912151741

`eq[2, A001222(A246029(n))]`
-/

namespace A043682.P17974419695912151741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A246029 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043682.P17974419695912151741

/-! ## A043682.P5036858604650646062

`eq[2, A255124(A073334(n))]`
-/

namespace A043682.P5036858604650646062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255124 (A073334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043682.P5036858604650646062

/-! ## A043682.P5531628874993737963

`eq[A033264(n), A040001(n)]`
-/

namespace A043682.P5531628874993737963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043682.P5531628874993737963

/-! ## A043682.P9816287865558917667

`eq[A040021(n), A090079(n)]`
-/

namespace A043682.P9816287865558917667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040021 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043682.P9816287865558917667

/-! ## A043682.P5245134215697756327

`eq[A033264(n), A106826(n)]`
-/

namespace A043682.P5245134215697756327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043682.P5245134215697756327

/-! ## A043682.P17185558832580974109

`eq[A087116(n), A106826(n)]`
-/

namespace A043682.P17185558832580974109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043682.P17185558832580974109

/-! ## A043682.P13867183259198331184

`eq[A087116(n), A134451(n)]`
-/

namespace A043682.P13867183259198331184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043682.P13867183259198331184

/-! ## A043682.P13704492491143407126

`eq[A060632(n), A163000(n)]`
-/

namespace A043682.P13704492491143407126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043682.P13704492491143407126

/-! ## A043682.P13489296341459260727

`eq[A014710(n), A033264(n+1)]`
-/

namespace A043682.P13489296341459260727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043682.P13489296341459260727

/-!
# A043683: a(n) = (1/2)*(n-th number whose base-2 representation has exactly 6 runs).

The programs for A043683, the canonical program `A043683.P1797186298449808662` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043683 has offset 1).

The definition of A043683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043683.P1797186298449808662

`A043573(n+1)/2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A043683

/-- `A043573(n+1)/2` -/
def P1797186298449808662.Spec : Prop :=
  ∀ n, P1797186298449808662.a n = (A043683 (n + 1) : ℚ)

end A043683

/-! ## A043683.P17399636579780135644

`∪[A043572(n+1), A043573(n+1)]`
-/

namespace A043683.P17399636579780135644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043683.P17399636579780135644

namespace A043683

/-- `∪[A043572(n+1), A043573(n+1)]` -/
def P17399636579780135644.Spec : Prop :=
  ∀ n, (P17399636579780135644.a n : ℤ) = A043683 (n + 1)

end A043683

/-! ## A043683.P8876560563124755231

`eq[8, A001316(xor(n, or(n, 2*n)))]`
-/

namespace A043683.P8876560563124755231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Nat.xor n (Nat.lor n (2 * n)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043683.P8876560563124755231

namespace A043683

/-- `eq[8, A001316(xor(n, or(n, 2*n)))]` -/
def P8876560563124755231.Spec : Prop :=
  ∀ n, (P8876560563124755231.a n : ℤ) = A043683 (n + 1)

end A043683

/-! ## A043683.P13301945409799491166

`eq[4, A000005(A001316(and(2*n, -n)))]`
-/

namespace A043683.P13301945409799491166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001316 (Int.land (2 * n : ℤ) (-(n : ℤ))).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043683.P13301945409799491166

namespace A043683

/-- `eq[4, A000005(A001316(and(2*n, -n)))]` -/
def P13301945409799491166.Spec : Prop :=
  ∀ n, (P13301945409799491166.a n : ℤ) = A043683 (n + 1)

end A043683

/-! ## A043683.P16033597031146379125

`eq[3, A069010(n)]`
-/

namespace A043683.P16033597031146379125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043683.P16033597031146379125

namespace A043683

/-- `eq[3, A069010(n)]` -/
def P16033597031146379125.Spec : Prop :=
  ∀ n, (P16033597031146379125.a n : ℤ) = A043683 (n + 1)

end A043683

/-! ## A043683.P13064552493394386855

`eq[2, A037800(n)]`
-/

namespace A043683.P13064552493394386855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043683.P13064552493394386855

namespace A043683

/-- `eq[2, A037800(n)]` -/
def P13064552493394386855.Spec : Prop :=
  ∀ n, (P13064552493394386855.a n : ℤ) = A043683 (n + 1)

end A043683

/-! ## A043683.P4425120376514336620

`eq[8, A277561(n)]`
-/

namespace A043683.P4425120376514336620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043683.P4425120376514336620

namespace A043683

/-- `eq[8, A277561(n)]` -/
def P4425120376514336620.Spec : Prop :=
  ∀ n, (P4425120376514336620.a n : ℤ) = A043683 (n + 1)

end A043683

/-! ## A043683.P13651546450494958504

`eq[2, A239904(n-A239904(n))]`
-/

namespace A043683.P13651546450494958504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239904 ((n : ℤ) - A239904 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043683.P13651546450494958504

namespace A043683

/-- `eq[2, A239904(n-A239904(n))]` -/
def P13651546450494958504.Spec : Prop :=
  ∀ n, (P13651546450494958504.a n : ℤ) = A043683 (n + 1)

end A043683

/-! ## A043683.P11908036694606767365

`eq[A040421(n), A090079(n)]`
-/

namespace A043683.P11908036694606767365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040421 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043683.P11908036694606767365

namespace A043683

/-- `eq[A040421(n), A090079(n)]` -/
def P11908036694606767365.Spec : Prop :=
  ∀ n, (P11908036694606767365.a n : ℤ) = A043683 (n + 1)

end A043683

/-! ## A043683.P15144378008504743078

`eq[A033264(n), A105500(n)]`
-/

namespace A043683.P15144378008504743078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043683.P15144378008504743078

namespace A043683

/-- `eq[A033264(n), A105500(n)]` -/
def P15144378008504743078.Spec : Prop :=
  ∀ n, (P15144378008504743078.a n : ℤ) = A043683 (n + 1)

end A043683

/-! ## A043683.P8853395935244747493

`eq[A033264(n), A176059(n)]`
-/

namespace A043683.P8853395935244747493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043683.P8853395935244747493

namespace A043683

/-- `eq[A033264(n), A176059(n)]` -/
def P8853395935244747493.Spec : Prop :=
  ∀ n, (P8853395935244747493.a n : ℤ) = A043683 (n + 1)

end A043683

/-! ## A043683.P9065049190818070878

`eq[A087116(n), A176059(n)]`
-/

namespace A043683.P9065049190818070878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043683.P9065049190818070878

namespace A043683

/-- `eq[A087116(n), A176059(n)]` -/
def P9065049190818070878.Spec : Prop :=
  ∀ n, (P9065049190818070878.a n : ℤ) = A043683 (n + 1)

end A043683

/-! ## A043683.P260736988212726017

`eq[1, A001222(A246029(n))-2]`
-/

namespace A043683.P260736988212726017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A246029 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043683.P260736988212726017

namespace A043683

/-- `eq[1, A001222(A246029(n))-2]` -/
def P260736988212726017.Spec : Prop :=
  ∀ n, (P260736988212726017.a n : ℤ) = A043683 (n + 1)

end A043683

/-! ## A043683.P13131149604364902403

`∩[A043689(n+1), A004275(n)]/2`
-/

namespace A043683.P13131149604364902403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A043683.P13131149604364902403

namespace A043683

/-- `∩[A043689(n+1), A004275(n)]/2` -/
def P13131149604364902403.Spec : Prop :=
  ∀ n, P13131149604364902403.a n = (A043683 (n + 1) : ℚ)

end A043683

/-! ## A043683.P5055101234289629529

`eq[7, A088748(2*n)]`
-/

namespace A043683.P5055101234289629529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043683.P5055101234289629529

namespace A043683

/-- `eq[7, A088748(2*n)]` -/
def P5055101234289629529.Spec : Prop :=
  ∀ n, (P5055101234289629529.a n : ℤ) = A043683 (n + 1)

end A043683

/-! ## A043683.P18310742686017151372

`eq[7, A072219(2*n+1)]`
-/

namespace A043683.P18310742686017151372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043683.P18310742686017151372

namespace A043683

/-- `eq[7, A072219(2*n+1)]` -/
def P18310742686017151372.Spec : Prop :=
  ∀ n, (P18310742686017151372.a n : ℤ) = A043683 (n + 1)

end A043683

/-! ## A043683.P18205451313730531706

`eq[1, dr(A323504(2*n)²)]`
-/

namespace A043683.P18205451313730531706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A323504 (2 * n) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043683.P18205451313730531706

namespace A043683

/-- `eq[1, dr(A323504(2*n)²)]` -/
def P18205451313730531706.Spec : Prop :=
  ∀ n, (P18205451313730531706.a n : ℤ) = A043683 (n + 1)

end A043683

/-! ## A043683.P6393022541547821482

`eq[3, A001221(A278222(n))]`
-/

namespace A043683.P6393022541547821482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A278222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043683.P6393022541547821482

namespace A043683

/-- `eq[3, A001221(A278222(n))]` -/
def P6393022541547821482.Spec : Prop :=
  ∀ n, (P6393022541547821482.a n : ℤ) = A043683 (n + 1)

end A043683

/-! ## A043683.P6790872962017028433

`eq[3, A033264(2*n)]`
-/

namespace A043683.P6790872962017028433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043683.P6790872962017028433

namespace A043683

/-- `eq[3, A033264(2*n)]` -/
def P6790872962017028433.Spec : Prop :=
  ∀ n, (P6790872962017028433.a n : ℤ) = A043683 (n + 1)

end A043683

/-! ## A043683.P8741387075861186596

`eq[3, A087116(2*n)]`
-/

namespace A043683.P8741387075861186596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043683.P8741387075861186596

namespace A043683

/-- `eq[3, A087116(2*n)]` -/
def P8741387075861186596.Spec : Prop :=
  ∀ n, (P8741387075861186596.a n : ℤ) = A043683 (n + 1)

end A043683

/-!
# A043684: a(n) = (1/2)*(n-th number whose base-2 representation has exactly 8 runs).

The programs for A043684, the canonical program `A043684.P15500375666667642164` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043684 has offset 1).

The definition of A043684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043684.P15500375666667642164

`A043575(n+1)/2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043684

/-- `A043575(n+1)/2` -/
def P15500375666667642164.Spec : Prop :=
  ∀ n, P15500375666667642164.a n = (A043684 (n + 1) : ℚ)

end A043684

/-! ## A043684.P10108524672837097379

`∪[A043574(n+1), A043575(n+1)]`
-/

namespace A043684.P10108524672837097379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043684.P10108524672837097379

namespace A043684

/-- `∪[A043574(n+1), A043575(n+1)]` -/
def P10108524672837097379.Spec : Prop :=
  ∀ n, (P10108524672837097379.a n : ℤ) = A043684 (n + 1)

end A043684

/-! ## A043684.P5811293913819183118

`∩[A043735(n+1), A043740(n+1)]/2`
-/

namespace A043684.P5811293913819183118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043740 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A043684.P5811293913819183118

namespace A043684

/-- `∩[A043735(n+1), A043740(n+1)]/2` -/
def P5811293913819183118.Spec : Prop :=
  ∀ n, P5811293913819183118.a n = (A043684 (n + 1) : ℚ)

end A043684

/-! ## A043684.P12126641782846787656

`∩[A043731(n+1), A043735(n+1)]/2`
-/

namespace A043684.P12126641782846787656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043735 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A043684.P12126641782846787656

namespace A043684

/-- `∩[A043731(n+1), A043735(n+1)]/2` -/
def P12126641782846787656.Spec : Prop :=
  ∀ n, P12126641782846787656.a n = (A043684 (n + 1) : ℚ)

end A043684

/-! ## A043684.P17658880826439048799

`∩[A043731(n+1), A043740(n+1)]/2`
-/

namespace A043684.P17658880826439048799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043740 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A043684.P17658880826439048799

namespace A043684

/-- `∩[A043731(n+1), A043740(n+1)]/2` -/
def P17658880826439048799.Spec : Prop :=
  ∀ n, P17658880826439048799.a n = (A043684 (n + 1) : ℚ)

end A043684

/-! ## A043684.P11633413544165772163

`∩[A043724(n+1), A043731(n+1)]/2`
-/

namespace A043684.P11633413544165772163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A043684.P11633413544165772163

namespace A043684

/-- `∩[A043724(n+1), A043731(n+1)]/2` -/
def P11633413544165772163.Spec : Prop :=
  ∀ n, P11633413544165772163.a n = (A043684 (n + 1) : ℚ)

end A043684

/-! ## A043684.P15759323235689291606

`∩[A043724(n+1), A043735(n+1)]/2`
-/

namespace A043684.P15759323235689291606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043735 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A043684.P15759323235689291606

namespace A043684

/-- `∩[A043724(n+1), A043735(n+1)]/2` -/
def P15759323235689291606.Spec : Prop :=
  ∀ n, P15759323235689291606.a n = (A043684 (n + 1) : ℚ)

end A043684

/-! ## A043684.P16515043528178101453

`∩[A043724(n+1), A043740(n+1)]/2`
-/

namespace A043684.P16515043528178101453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043740 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A043684.P16515043528178101453

namespace A043684

/-- `∩[A043724(n+1), A043740(n+1)]/2` -/
def P16515043528178101453.Spec : Prop :=
  ∀ n, P16515043528178101453.a n = (A043684 (n + 1) : ℚ)

end A043684

/-! ## A043684.P6855916504492948601

`eq[4, A069010(n)]`
-/

namespace A043684.P6855916504492948601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043684.P6855916504492948601

namespace A043684

/-- `eq[4, A069010(n)]` -/
def P6855916504492948601.Spec : Prop :=
  ∀ n, (P6855916504492948601.a n : ℤ) = A043684 (n + 1)

end A043684

/-! ## A043684.P3238015838423682457

`∩[A043723(n+1), A043724(n+1)]/2`
-/

namespace A043684.P3238015838423682457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043724 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A043684.P3238015838423682457

namespace A043684

/-- `∩[A043723(n+1), A043724(n+1)]/2` -/
def P3238015838423682457.Spec : Prop :=
  ∀ n, P3238015838423682457.a n = (A043684 (n + 1) : ℚ)

end A043684

/-! ## A043684.P9450034364706165189

`∩[A043723(n+1), A043731(n+1)]/2`
-/

namespace A043684.P9450034364706165189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A043684.P9450034364706165189

namespace A043684

/-- `∩[A043723(n+1), A043731(n+1)]/2` -/
def P9450034364706165189.Spec : Prop :=
  ∀ n, P9450034364706165189.a n = (A043684 (n + 1) : ℚ)

end A043684

/-! ## A043684.P185849419663821062

`∩[A043723(n+1), A043740(n+1)]/2`
-/

namespace A043684.P185849419663821062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043740 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A043684.P185849419663821062

namespace A043684

/-- `∩[A043723(n+1), A043740(n+1)]/2` -/
def P185849419663821062.Spec : Prop :=
  ∀ n, P185849419663821062.a n = (A043684 (n + 1) : ℚ)

end A043684

/-! ## A043684.P9972226975997702977

`∩[A043690(n+1), A043723(n+1)]/2`
-/

namespace A043684.P9972226975997702977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A043684.P9972226975997702977

namespace A043684

/-- `∩[A043690(n+1), A043723(n+1)]/2` -/
def P9972226975997702977.Spec : Prop :=
  ∀ n, P9972226975997702977.a n = (A043684 (n + 1) : ℚ)

end A043684

/-! ## A043684.P1838807993603133921

`∩[A043690(n+1), A043724(n+1)]/2`
-/

namespace A043684.P1838807993603133921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043724 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A043684.P1838807993603133921

namespace A043684

/-- `∩[A043690(n+1), A043724(n+1)]/2` -/
def P1838807993603133921.Spec : Prop :=
  ∀ n, P1838807993603133921.a n = (A043684 (n + 1) : ℚ)

end A043684

/-! ## A043684.P4955669015432585854

`∩[A043690(n+1), A043731(n+1)]/2`
-/

namespace A043684.P4955669015432585854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A043684.P4955669015432585854

namespace A043684

/-- `∩[A043690(n+1), A043731(n+1)]/2` -/
def P4955669015432585854.Spec : Prop :=
  ∀ n, P4955669015432585854.a n = (A043684 (n + 1) : ℚ)

end A043684

/-!
# A043685: a(n) = (1/2)*(n-th number whose base-2 representation has exactly 10 runs).

The programs for A043685, the canonical program `A043685.P5704799223712318380` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043685 has offset 1).

The definition of A043685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043685.P5704799223712318380

`A043577(n+1)/2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043685

/-- `A043577(n+1)/2` -/
def P5704799223712318380.Spec : Prop :=
  ∀ n, P5704799223712318380.a n = (A043685 (n + 1) : ℚ)

end A043685

/-! ## A043685.P4453384682613582466

`∪[A043576(n+1), A043577(n+1)]`
-/

namespace A043685.P4453384682613582466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043685.P4453384682613582466

namespace A043685

/-- `∪[A043576(n+1), A043577(n+1)]` -/
def P4453384682613582466.Spec : Prop :=
  ∀ n, (P4453384682613582466.a n : ℤ) = A043685 (n + 1)

end A043685

/-! ## A043685.P9495797645781982802

`∩[A043748(n+1), A043755(n+1)]/2`
-/

namespace A043685.P9495797645781982802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043755 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A043685.P9495797645781982802

namespace A043685

/-- `∩[A043748(n+1), A043755(n+1)]/2` -/
def P9495797645781982802.Spec : Prop :=
  ∀ n, P9495797645781982802.a n = (A043685 (n + 1) : ℚ)

end A043685

/-! ## A043685.P8262083240432601614

`∩[A043742(n+1), A043748(n+1)]/2`
-/

namespace A043685.P8262083240432601614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043748 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A043685.P8262083240432601614

namespace A043685

/-- `∩[A043742(n+1), A043748(n+1)]/2` -/
def P8262083240432601614.Spec : Prop :=
  ∀ n, P8262083240432601614.a n = (A043685 (n + 1) : ℚ)

end A043685

/-! ## A043685.P4436149138623148610

`∩[A043742(n+1), A043755(n+1)]/2`
-/

namespace A043685.P4436149138623148610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043755 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A043685.P4436149138623148610

namespace A043685

/-- `∩[A043742(n+1), A043755(n+1)]/2` -/
def P4436149138623148610.Spec : Prop :=
  ∀ n, P4436149138623148610.a n = (A043685 (n + 1) : ℚ)

end A043685

/-! ## A043685.P4971232855015526693

`∩[A043691(n+1), A043742(n+1)]/2`
-/

namespace A043685.P4971232855015526693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043742 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A043685.P4971232855015526693

namespace A043685

/-- `∩[A043691(n+1), A043742(n+1)]/2` -/
def P4971232855015526693.Spec : Prop :=
  ∀ n, P4971232855015526693.a n = (A043685 (n + 1) : ℚ)

end A043685

/-! ## A043685.P12430641667412381825

`∩[A043691(n+1), A043748(n+1)]/2`
-/

namespace A043685.P12430641667412381825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043748 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A043685.P12430641667412381825

namespace A043685

/-- `∩[A043691(n+1), A043748(n+1)]/2` -/
def P12430641667412381825.Spec : Prop :=
  ∀ n, P12430641667412381825.a n = (A043685 (n + 1) : ℚ)

end A043685

/-! ## A043685.P18095800870399557297

`∩[A043691(n+1), A043755(n+1)]/2`
-/

namespace A043685.P18095800870399557297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043755 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A043685.P18095800870399557297

namespace A043685

/-- `∩[A043691(n+1), A043755(n+1)]/2` -/
def P18095800870399557297.Spec : Prop :=
  ∀ n, P18095800870399557297.a n = (A043685 (n + 1) : ℚ)

end A043685

/-! ## A043685.P11218035197485759848

`A001281(A043577(n+1))`
-/

namespace A043685.P11218035197485759848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A043577 (n + 1)).toNat

end

end A043685.P11218035197485759848

namespace A043685

/-- `A001281(A043577(n+1))` -/
def P11218035197485759848.Spec : Prop :=
  ∀ n, P11218035197485759848.a n = A043685 (n + 1)

end A043685

/-! ## A043685.P13248339114885817431

`A004524(A043577(n+1)+1)`
-/

namespace A043685.P13248339114885817431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A043577 (n + 1) + 1).toNat

end

end A043685.P13248339114885817431

namespace A043685

/-- `A004524(A043577(n+1)+1)` -/
def P13248339114885817431.Spec : Prop :=
  ∀ n, P13248339114885817431.a n = A043685 (n + 1)

end A043685

/-! ## A043685.P16217767233469517169

`A028242(A043577(n+1)+1)`
-/

namespace A043685.P16217767233469517169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A043577 (n + 1) + 1).toNat

end

end A043685.P16217767233469517169

namespace A043685

/-- `A028242(A043577(n+1)+1)` -/
def P16217767233469517169.Spec : Prop :=
  ∀ n, P16217767233469517169.a n = A043685 (n + 1)

end A043685

/-! ## A043685.P17745632286229115596

`A000463(A043577(n+1)-1)`
-/

namespace A043685.P17745632286229115596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A043577 (n + 1) - 1).toNat

end

end A043685.P17745632286229115596

namespace A043685

/-- `A000463(A043577(n+1)-1)` -/
def P17745632286229115596.Spec : Prop :=
  ∀ n, P17745632286229115596.a n = A043685 (n + 1)

end A043685

/-! ## A043685.P3705107963846086310

`A008619(A043577(n+1)-1)`
-/

namespace A043685.P3705107963846086310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A043577 (n + 1) - 1).toNat

end

end A043685.P3705107963846086310

namespace A043685

/-- `A008619(A043577(n+1)-1)` -/
def P3705107963846086310.Spec : Prop :=
  ∀ n, P3705107963846086310.a n = A043685 (n + 1)

end A043685

/-! ## A043685.P17230942753514420455

`A004525(A043577(xor(1, xor(1, n+1))))`
-/

namespace A043685.P17230942753514420455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A043577 (Nat.xor 1 (Nat.xor 1 (n + 1)))).toNat

end

end A043685.P17230942753514420455

namespace A043685

/-- `A004525(A043577(xor(1, xor(1, n+1))))` -/
def P17230942753514420455.Spec : Prop :=
  ∀ n, P17230942753514420455.a n = A043685 (n + 1)

end A043685

/-! ## A043685.P8010170281927434821

`A341911(A038461(n+1))/2`
-/

namespace A043685.P8010170281927434821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341911 (A038461 (n + 1)).toNat : ℚ) / 2

end

end A043685.P8010170281927434821

namespace A043685

/-- `A341911(A038461(n+1))/2` -/
def P8010170281927434821.Spec : Prop :=
  ∀ n, P8010170281927434821.a n = (A043685 (n + 1) : ℚ)

end A043685

/-! ## A043685.P1641574735114457129

`A002265(2*A043577(n+1))`
-/

namespace A043685.P1641574735114457129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A043577 (n + 1)).toNat

end

end A043685.P1641574735114457129

namespace A043685

/-- `A002265(2*A043577(n+1))` -/
def P1641574735114457129.Spec : Prop :=
  ∀ n, P1641574735114457129.a n = A043685 (n + 1)

end A043685

/-!
# A043686: a(n) = (1/2)*(n-th number whose base-2 representation has exactly 12 runs).

The programs for A043686, there is no canonical definition to state claims against.
-/

/-! ## A043686.P1109742129444463267

`A043579(n+1)/2`
-/

namespace A043686.P1109742129444463267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043579 (n + 1) : ℚ) / 2

end

end A043686.P1109742129444463267

/-! ## A043686.P8272598402410676257

`∪[A043578(n+1), A043579(n+1)]`
-/

namespace A043686.P8272598402410676257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043686.P8272598402410676257

/-! ## A043686.P12413234216125270412

`A273943(A043579(n+1))`
-/

namespace A043686.P12413234216125270412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A043579 (n + 1)).toNat

end

end A043686.P12413234216125270412

/-! ## A043686.P13255710241670168611

`A319702(A043579(n+1)-3)`
-/

namespace A043686.P13255710241670168611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A043579 (n + 1) - 3).toNat

end

end A043686.P13255710241670168611

/-! ## A043686.P5968684115209039356

`A014682(A043579(n+1)+2)-1`
-/

namespace A043686.P5968684115209039356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043579 (n + 1) + 2).toNat - 1

end

end A043686.P5968684115209039356

/-! ## A043686.P5823149871813657539

`A328399(A043579(n+1)-2)`
-/

namespace A043686.P5823149871813657539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A043579 (n + 1) - 2).toNat

end

end A043686.P5823149871813657539

/-! ## A043686.P11485009634492668359

`A302032(lcm(2, A043579(n+1)))`
-/

namespace A043686.P11485009634492668359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (Int.lcm 2 (A043579 (n + 1)))

end

end A043686.P11485009634492668359

/-! ## A043686.P13197139935624174488

`A302032(A043579(n+1)+2)-1`
-/

namespace A043686.P13197139935624174488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (A043579 (n + 1) + 2).toNat - 1

end

end A043686.P13197139935624174488

/-! ## A043686.P7891769533751368760

`A038572(A043579(n+1)+2)-1`
-/

namespace A043686.P7891769533751368760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A043579 (n + 1) + 2).toNat - 1

end

end A043686.P7891769533751368760

/-! ## A043686.P485871672332207598

`or(A000007(n), A038572(A043579(n+1)))`
-/

namespace A043686.P485871672332207598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A038572 (A043579 (n + 1)).toNat)

end

end A043686.P485871672332207598

/-! ## A043686.P10959608416680204556

`A038572(char[A038572(n)]*A043579(n+1))`
-/

namespace A043686.P10959608416680204556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A043579 (n + 1)).toNat

end

end A043686.P10959608416680204556

/-! ## A043686.P17012819770517591881

`A038572(A043579(n+1))+A000007(n+1)`
-/

namespace A043686.P17012819770517591881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A043579 (n + 1)).toNat + A000007 (n + 1)

end

end A043686.P17012819770517591881

/-! ## A043686.P4679640848758915189

`A038572(A043579(n+1))+A000035(2*n)`
-/

namespace A043686.P4679640848758915189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A043579 (n + 1)).toNat + A000035 (2 * n)

end

end A043686.P4679640848758915189

/-! ## A043686.P16706919189024007

`A038572(A043579(n+1)%A129485(n+1))`
-/

namespace A043686.P16706919189024007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.tmod (A043579 (n + 1)) (A129485 (n + 1))).toNat

end

end A043686.P16706919189024007

/-! ## A043686.P4894978531292988586

`A007318(C(2, n))*A038572(A043579(n+1))`
-/

namespace A043686.P4894978531292988586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A038572 (A043579 (n + 1)).toNat

end

end A043686.P4894978531292988586

/-! ## A043686.P6508182034731503178

`A038572(A043579(n+1)+char[A043579(n+1)])`
-/

namespace A043686.P6508182034731503178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043579 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A043579 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A043686.P6508182034731503178

/-! ## A043686.P12584152635094681757

`A038572(A043579(n+1))+A008683(4*(n+2))`
-/

namespace A043686.P12584152635094681757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A043579 (n + 1)).toNat + A008683 (4 * (n + 2))

end

end A043686.P12584152635094681757

/-! ## A043686.P16853744213536745710

`A000010(((-1)^n)²)*A038572(A043579(n+1))`
-/

namespace A043686.P16853744213536745710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((-1) ^ n) ^ 2).toNat * A038572 (A043579 (n + 1)).toNat

end

end A043686.P16853744213536745710

/-! ## A043686.P9776690820382054898

`A001222(A078496(n+4))*A038572(A043579(n+1))`
-/

namespace A043686.P9776690820382054898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A078496 (n + 4)).toNat * A038572 (A043579 (n + 1)).toNat

end

end A043686.P9776690820382054898

/-!
# A043687: a(n) = (A043570(n)-1)/2, where A043570(n) is the n-th number whose base-2 representation has exactly 3 runs.

The programs for A043687, the canonical program `A043687.P17373175966273517856` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043687 has offset 1).

The definition of A043687 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043570, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A043687.P17373175966273517856

`(A043570(n+1)-1)/2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043687

/-- `(A043570(n+1)-1)/2` -/
def P17373175966273517856.Spec : Prop :=
  ∀ n, P17373175966273517856.a n = (A043687 (n + 1) : ℚ)

end A043687

/-! ## A043687.P10376930342112009809

`A238246(n+1)-1`
-/

namespace A043687.P10376930342112009809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (n + 1) - 1

end

end A043687.P10376930342112009809

namespace A043687

/-- `A238246(n+1)-1` -/
def P10376930342112009809.Spec : Prop :=
  ∀ n, P10376930342112009809.a n = A043687 (n + 1)

end A043687

/-! ## A043687.P1856381158159537332

`A087118(n+2)`
-/

namespace A043687.P1856381158159537332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087118 (n + 2)

end

end A043687.P1856381158159537332

namespace A043687

/-- `A087118(n+2)` -/
def P1856381158159537332.Spec : Prop :=
  ∀ n, P1856381158159537332.a n = A043687 (n + 1)

end A043687

/-! ## A043687.P9853102903080516872

`floor(A043570(n+1)/2)`
-/

namespace A043687.P9853102903080516872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043570 (n + 1) : ℚ) / 2⌋

end

end A043687.P9853102903080516872

namespace A043687

/-- `floor(A043570(n+1)/2)` -/
def P9853102903080516872.Spec : Prop :=
  ∀ n, P9853102903080516872.a n = A043687 (n + 1)

end A043687

/-! ## A043687.P15672786031826697696

`∪[A043569(n+1), A043570(n+1)]`
-/

namespace A043687.P15672786031826697696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043687.P15672786031826697696

namespace A043687

/-- `∪[A043569(n+1), A043570(n+1)]` -/
def P15672786031826697696.Spec : Prop :=
  ∀ n, (P15672786031826697696.a n : ℤ) = A043687 (n + 1)

end A043687

/-! ## A043687.P8908206789511849477

`A043570(n+1)%A238246(n+1)`
-/

namespace A043687.P8908206789511849477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043570 (n + 1)) (A238246 (n + 1))

end

end A043687.P8908206789511849477

namespace A043687

/-- `A043570(n+1)%A238246(n+1)` -/
def P8908206789511849477.Spec : Prop :=
  ∀ n, P8908206789511849477.a n = A043687 (n + 1)

end A043687

/-! ## A043687.P7151017077729896555

`eq[A209639(n), A209639(A209639(n))]`
-/

namespace A043687.P7151017077729896555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209639 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209639 (A209639 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043687.P7151017077729896555

namespace A043687

/-- `eq[A209639(n), A209639(A209639(n))]` -/
def P7151017077729896555.Spec : Prop :=
  ∀ n, (P7151017077729896555.a n : ℤ) = A043687 (n + 1)

end A043687

/-! ## A043687.P1341766993750321374

`eq[1, A069010(n-A006257(n))]`
-/

namespace A043687.P1341766993750321374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 ((n : ℤ) - A006257 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043687.P1341766993750321374

namespace A043687

/-- `eq[1, A069010(n-A006257(n))]` -/
def P1341766993750321374.Spec : Prop :=
  ∀ n, (P1341766993750321374.a n : ℤ) = A043687 (n + 1)

end A043687

/-! ## A043687.P10799206002269984563

`eq[A087734(n), A135534(n+1)]`
-/

namespace A043687.P10799206002269984563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135534 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043687.P10799206002269984563

namespace A043687

/-- `eq[A087734(n), A135534(n+1)]` -/
def P10799206002269984563.Spec : Prop :=
  ∀ n, (P10799206002269984563.a n : ℤ) = A043687 (n + 1)

end A043687

/-! ## A043687.P4033490953565279256

`eq[A069010(n)², A040005(n+1)]`
-/

namespace A043687.P4033490953565279256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043687.P4033490953565279256

namespace A043687

/-- `eq[A069010(n)², A040005(n+1)]` -/
def P4033490953565279256.Spec : Prop :=
  ∀ n, (P4033490953565279256.a n : ℤ) = A043687 (n + 1)

end A043687

/-! ## A043687.P1336441926748750139

`eq[3, A072219(n+1)]`
-/

namespace A043687.P1336441926748750139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043687.P1336441926748750139

namespace A043687

/-- `eq[3, A072219(n+1)]` -/
def P1336441926748750139.Spec : Prop :=
  ∀ n, (P1336441926748750139.a n : ℤ) = A043687 (n + 1)

end A043687

/-! ## A043687.P9215455089731288300

`eq[2, A002376(A088748(n)²)]`
-/

namespace A043687.P9215455089731288300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A088748 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043687.P9215455089731288300

namespace A043687

/-- `eq[2, A002376(A088748(n)²)]` -/
def P9215455089731288300.Spec : Prop :=
  ∀ n, (P9215455089731288300.a n : ℤ) = A043687 (n + 1)

end A043687

/-! ## A043687.P2071122034246278301

`eq[2, A070939(A088748(n)-1)]`
-/

namespace A043687.P2071122034246278301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A088748 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043687.P2071122034246278301

namespace A043687

/-- `eq[2, A070939(A088748(n)-1)]` -/
def P2071122034246278301.Spec : Prop :=
  ∀ n, (P2071122034246278301.a n : ℤ) = A043687 (n + 1)

end A043687

/-! ## A043687.P7758763388748547602

`eq[A069010(n)+1, A141310(A141310(n))]`
-/

namespace A043687.P7758763388748547602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A141310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043687.P7758763388748547602

namespace A043687

/-- `eq[A069010(n)+1, A141310(A141310(n))]` -/
def P7758763388748547602.Spec : Prop :=
  ∀ n, (P7758763388748547602.a n : ℤ) = A043687 (n + 1)

end A043687

/-! ## A043687.P2064482101452581314

`eq[1, A033264(n)]`
-/

namespace A043687.P2064482101452581314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043687.P2064482101452581314

namespace A043687

/-- `eq[1, A033264(n)]` -/
def P2064482101452581314.Spec : Prop :=
  ∀ n, (P2064482101452581314.a n : ℤ) = A043687 (n + 1)

end A043687

/-! ## A043687.P7537002251394983207

`eq[3, or(1, A005811(n))]`
-/

namespace A043687.P7537002251394983207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005811 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043687.P7537002251394983207

namespace A043687

/-- `eq[3, or(1, A005811(n))]` -/
def P7537002251394983207.Spec : Prop :=
  ∀ n, (P7537002251394983207.a n : ℤ) = A043687 (n + 1)

end A043687

/-! ## A043687.P13395130248564291434

`eq[1, A087116(n+1)]+1`
-/

namespace A043687.P13395130248564291434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043687.P13395130248564291434

namespace A043687

/-- `eq[1, A087116(n+1)]+1` -/
def P13395130248564291434.Spec : Prop :=
  ∀ n, (P13395130248564291434.a n : ℤ) = A043687 (n + 1)

end A043687

/-! ## A043687.P8904732476251256128

`A023443(A238246(n+1))`
-/

namespace A043687.P8904732476251256128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A238246 (n + 1)).toNat

end

end A043687.P8904732476251256128

namespace A043687

/-- `A023443(A238246(n+1))` -/
def P8904732476251256128.Spec : Prop :=
  ∀ n, P8904732476251256128.a n = A043687 (n + 1)

end A043687

/-! ## A043687.P16797656996406827004

`eq[1, A011371(A005811(n))]`
-/

namespace A043687.P16797656996406827004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043687.P16797656996406827004

namespace A043687

/-- `eq[1, A011371(A005811(n))]` -/
def P16797656996406827004.Spec : Prop :=
  ∀ n, (P16797656996406827004.a n : ℤ) = A043687 (n + 1)

end A043687

/-! ## A043687.P6226483530343777409

`eq[1, A032741(A090079(n))]`
-/

namespace A043687.P6226483530343777409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A090079 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043687.P6226483530343777409

namespace A043687

/-- `eq[1, A032741(A090079(n))]` -/
def P6226483530343777409.Spec : Prop :=
  ∀ n, (P6226483530343777409.a n : ℤ) = A043687 (n + 1)

end A043687

/-!
# A043688: a(n) = (s(n)-1)/2, where s(n) is the n-th number whose base-2 representation has exactly 5 runs.

The programs for A043688, there is no canonical definition to state claims against.
-/

/-! ## A043688.P18135524352145230833

`A238247(n+1)-1`
-/

namespace A043688.P18135524352145230833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238247 (n + 1) - 1

end

end A043688.P18135524352145230833

/-! ## A043688.P17391327478581433839

`floor(A043572(n+1)/2)`
-/

namespace A043688.P17391327478581433839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043572 (n + 1) : ℚ) / 2⌋

end

end A043688.P17391327478581433839

/-! ## A043688.P2772169817154058136

`A043572(n+1)%A238247(n+1)`
-/

namespace A043688.P2772169817154058136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043572 (n + 1)) (A238247 (n + 1))

end

end A043688.P2772169817154058136

/-! ## A043688.P1759592756308921513

`∪[A043571(n+1), A043572(n+1)]`
-/

namespace A043688.P1759592756308921513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043688.P1759592756308921513

/-! ## A043688.P5688525700789318305

`eq[5, A072219(n+1)]`
-/

namespace A043688.P5688525700789318305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043688.P5688525700789318305

/-! ## A043688.P10854117361392128328

`eq[2, A033264(n)]`
-/

namespace A043688.P10854117361392128328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043688.P10854117361392128328

/-! ## A043688.P16957755415426547370

`eq[2, A087116(n)]`
-/

namespace A043688.P16957755415426547370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043688.P16957755415426547370

/-! ## A043688.P6584387110490428883

`eq[5, or(1, A005811(n))]`
-/

namespace A043688.P6584387110490428883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005811 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043688.P6584387110490428883

/-! ## A043688.P11369797496303705475

`eq[3-a(n-1), A037800(n)]` with `a(0)=1`
-/

namespace A043688.P11369797496303705475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 - f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043688.P11369797496303705475

/-! ## A043688.P8044101669785516625

`eq[2, A008667(A005811(n))]`
-/

namespace A043688.P8044101669785516625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043688.P8044101669785516625

/-! ## A043688.P8783444238888636507

`eq[2, A069010(A025480(n))]`
-/

namespace A043688.P8783444238888636507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043688.P8783444238888636507

/-! ## A043688.P3298384268480837438

`eq[A005811(n), A010710(n)]`
-/

namespace A043688.P3298384268480837438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043688.P3298384268480837438

/-! ## A043688.P8966681284348721369

`eq[A000034(n), A037800(n)]`
-/

namespace A043688.P8966681284348721369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043688.P8966681284348721369

/-! ## A043688.P10166113403967983046

`eq[A010693(n), A069010(n)]`
-/

namespace A043688.P10166113403967983046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043688.P10166113403967983046

/-! ## A043688.P5531935782293362943

`eq[A010717(n), A088748(n)]`
-/

namespace A043688.P5531935782293362943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010717 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043688.P5531935782293362943

/-! ## A043688.P4306751603542858964

`eq[A037800(n), A084642(n)]`
-/

namespace A043688.P4306751603542858964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043688.P4306751603542858964

/-! ## A043688.P17092603424611993252

`eq[A037800(n), A105500(n)]`
-/

namespace A043688.P17092603424611993252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043688.P17092603424611993252

/-! ## A043688.P10547097124850425961

`eq[A010732(n), A136004(n)]`
-/

namespace A043688.P10547097124850425961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010732 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136004 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043688.P10547097124850425961

/-! ## A043688.P11701540817819410681

`eq[A001316(n), A163000(n)]`
-/

namespace A043688.P11701540817819410681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043688.P11701540817819410681

/-! ## A043688.P15297513183669105425

`eq[A069010(n), A106826(n)]`
-/

namespace A043688.P15297513183669105425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043688.P15297513183669105425

/-!
# A043689: a(n) = (s(n)-1)/2, where s(n) is the n-th number whose base-2 representation has exactly 7 runs.

The programs for A043689, the canonical program `A043689.P9278617102155900918` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043689 has offset 1).

The definition of A043689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043689.P14235170605151147258

`A238248(n+1)-1`
-/

namespace A043689.P14235170605151147258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238248 (n + 1) - 1

end

end A043689.P14235170605151147258

namespace A043689

/-- `A238248(n+1)-1` -/
def P14235170605151147258.Spec : Prop :=
  ∀ n, P14235170605151147258.a n = A043689 (n + 1)

end A043689

/-! ## A043689.P9278617102155900918

`floor(A043574(n+1)/2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043689

/-- `floor(A043574(n+1)/2)` -/
def P9278617102155900918.Spec : Prop :=
  ∀ n, P9278617102155900918.a n = A043689 (n + 1)

theorem P9278617102155900918.correct : P9278617102155900918.Spec := by
  intro n
  simp only [A043689, Nat.add_sub_cancel]

end A043689

/-! ## A043689.P2913894393104126691

`A043574(n+1)%A238248(n+1)`
-/

namespace A043689.P2913894393104126691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043574 (n + 1)) (A238248 (n + 1))

end

end A043689.P2913894393104126691

namespace A043689

/-- `A043574(n+1)%A238248(n+1)` -/
def P2913894393104126691.Spec : Prop :=
  ∀ n, P2913894393104126691.a n = A043689 (n + 1)

end A043689

/-! ## A043689.P3906761902939733025

`∪[A043573(n+1), A043574(n+1)]`
-/

namespace A043689.P3906761902939733025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043689.P3906761902939733025

namespace A043689

/-- `∪[A043573(n+1), A043574(n+1)]` -/
def P3906761902939733025.Spec : Prop :=
  ∀ n, (P3906761902939733025.a n : ℤ) = A043689 (n + 1)

end A043689

/-! ## A043689.P16435776407910220178

`eq[7, A072219(n+1)]`
-/

namespace A043689.P16435776407910220178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043689.P16435776407910220178

namespace A043689

/-- `eq[7, A072219(n+1)]` -/
def P16435776407910220178.Spec : Prop :=
  ∀ n, (P16435776407910220178.a n : ℤ) = A043689 (n + 1)

end A043689

/-! ## A043689.P18014363450434072362

`eq[1, A007318(A088748(n))-2]`
-/

namespace A043689.P18014363450434072362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A088748 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043689.P18014363450434072362

namespace A043689

/-- `eq[1, A007318(A088748(n))-2]` -/
def P18014363450434072362.Spec : Prop :=
  ∀ n, (P18014363450434072362.a n : ℤ) = A043689 (n + 1)

end A043689

/-! ## A043689.P269537987724623502

`eq[3, A033264(n)]`
-/

namespace A043689.P269537987724623502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043689.P269537987724623502

namespace A043689

/-- `eq[3, A033264(n)]` -/
def P269537987724623502.Spec : Prop :=
  ∀ n, (P269537987724623502.a n : ℤ) = A043689 (n + 1)

end A043689

/-! ## A043689.P14816001966537393175

`eq[3, A087116(n)]`
-/

namespace A043689.P14816001966537393175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043689.P14816001966537393175

namespace A043689

/-- `eq[3, A087116(n)]` -/
def P14816001966537393175.Spec : Prop :=
  ∀ n, (P14816001966537393175.a n : ℤ) = A043689 (n + 1)

end A043689

/-! ## A043689.P16536130882889865580

`eq[xor(1, a(n-1)), A005811(n)]` with `a(0)=6`
-/

namespace A043689.P16536130882889865580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  Nat.xor 1 (f1 (n - 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043689.P16536130882889865580

namespace A043689

/-- `eq[xor(1, a(n-1)), A005811(n)]` -/
def P16536130882889865580.Spec : Prop :=
  ∀ n, (P16536130882889865580.a n : ℤ) = A043689 (n + 1)

end A043689

/-! ## A043689.P1625321930064057269

`eq[2, A050605(A005811(n))]`
-/

namespace A043689.P1625321930064057269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043689.P1625321930064057269

namespace A043689

/-- `eq[2, A050605(A005811(n))]` -/
def P1625321930064057269.Spec : Prop :=
  ∀ n, (P1625321930064057269.a n : ℤ) = A043689 (n + 1)

end A043689

/-! ## A043689.P17235891102373601949

`eq[2, A037800(A025480(n))]`
-/

namespace A043689.P17235891102373601949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043689.P17235891102373601949

namespace A043689

/-- `eq[2, A037800(A025480(n))]` -/
def P17235891102373601949.Spec : Prop :=
  ∀ n, (P17235891102373601949.a n : ℤ) = A043689 (n + 1)

end A043689

/-! ## A043689.P16478500816170741549

`eq[A010702(n), A069010(n)]`
-/

namespace A043689.P16478500816170741549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043689.P16478500816170741549

namespace A043689

/-- `eq[A010702(n), A069010(n)]` -/
def P16478500816170741549.Spec : Prop :=
  ∀ n, (P16478500816170741549.a n : ℤ) = A043689 (n + 1)

end A043689

/-! ## A043689.P6858592184038458263

`lt[1, A292380(A005811(n)+2)]`
-/

namespace A043689.P6858592184038458263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292380 (A005811 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043689.P6858592184038458263

namespace A043689

/-- `lt[1, A292380(A005811(n)+2)]` -/
def P6858592184038458263.Spec : Prop :=
  ∀ n, (P6858592184038458263.a n : ℤ) = A043689 (n + 1)

end A043689

/-! ## A043689.P4764734089067835978

`eq[A051881(n+1)+1, A037800(n)]`
-/

namespace A043689.P4764734089067835978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051881 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043689.P4764734089067835978

namespace A043689

/-- `eq[A051881(n+1)+1, A037800(n)]` -/
def P4764734089067835978.Spec : Prop :=
  ∀ n, (P4764734089067835978.a n : ℤ) = A043689 (n + 1)

end A043689

/-! ## A043689.P11806835385821010016

`eq[A020639(A020639(n+1)+1), A037800(n)]`
-/

namespace A043689.P11806835385821010016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043689.P11806835385821010016

namespace A043689

/-- `eq[A020639(A020639(n+1)+1), A037800(n)]` -/
def P11806835385821010016.Spec : Prop :=
  ∀ n, (P11806835385821010016.a n : ℤ) = A043689 (n + 1)

end A043689

/-! ## A043689.P16279824184846209813

`A023443(A238248(n+1))`
-/

namespace A043689.P16279824184846209813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A238248 (n + 1)).toNat

end

end A043689.P16279824184846209813

namespace A043689

/-- `A023443(A238248(n+1))` -/
def P16279824184846209813.Spec : Prop :=
  ∀ n, P16279824184846209813.a n = A043689 (n + 1)

end A043689

/-! ## A043689.P3137164056352973619

`eq[2, A178049(A136004(n))]`
-/

namespace A043689.P3137164056352973619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178049 ((A136004 n).toNat + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043689.P3137164056352973619

namespace A043689

/-- `eq[2, A178049(A136004(n))]` -/
def P3137164056352973619.Spec : Prop :=
  ∀ n, (P3137164056352973619.a n : ℤ) = A043689 (n + 1)

end A043689

/-!
# A043690: a(n) = (s(n)-1)/2, where s(n) is the n-th number whose base-2 representation has exactly 9 runs.

The programs for A043690, the canonical program `A043690.P9881906805821544190` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043690 has offset 1).

The definition of A043690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043690.P9881906805821544190

`floor(A043576(n+1)/2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A043690

/-- `floor(A043576(n+1)/2)` -/
def P9881906805821544190.Spec : Prop :=
  ∀ n, P9881906805821544190.a n = A043690 (n + 1)

theorem P9881906805821544190.correct : P9881906805821544190.Spec := by
  intro n
  simp only [A043690, Nat.add_sub_cancel]

end A043690

/-! ## A043690.P13438210687953919772

`∪[A043575(n+1), A043576(n+1)]`
-/

namespace A043690.P13438210687953919772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043690.P13438210687953919772

namespace A043690

/-- `∪[A043575(n+1), A043576(n+1)]` -/
def P13438210687953919772.Spec : Prop :=
  ∀ n, (P13438210687953919772.a n : ℤ) = A043690 (n + 1)

end A043690

/-! ## A043690.P183021401102816

`A043576(n+1)/2+A306861(gcd(n, n+1))/2`
-/

namespace A043690.P183021401102816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043576 (n + 1) : ℚ) / 2 + (A306861 (Nat.gcd n (n + 1)) : ℚ) / 2

end

end A043690.P183021401102816

namespace A043690

/-- `A043576(n+1)/2+A306861(gcd(n, n+1))/2` -/
def P183021401102816.Spec : Prop :=
  ∀ n, P183021401102816.a n = (A043690 (n + 1) : ℚ)

end A043690

/-! ## A043690.P4473510645274074180

`A004524(A043576(n+1))`
-/

namespace A043690.P4473510645274074180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A043576 (n + 1)).toNat

end

end A043690.P4473510645274074180

namespace A043690

/-- `A004524(A043576(n+1))` -/
def P4473510645274074180.Spec : Prop :=
  ∀ n, P4473510645274074180.a n = A043690 (n + 1)

end A043690

/-! ## A043690.P16958193976034825408

`A004525(A043576(n+1)-1)`
-/

namespace A043690.P16958193976034825408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A043576 (n + 1) - 1).toNat

end

end A043690.P16958193976034825408

namespace A043690

/-- `A004525(A043576(n+1)-1)` -/
def P16958193976034825408.Spec : Prop :=
  ∀ n, P16958193976034825408.a n = A043690 (n + 1)

end A043690

/-! ## A043690.P8302096099236433994

`A000463(A043576(n+1)-2)`
-/

namespace A043690.P8302096099236433994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A043576 (n + 1) - 2).toNat

end

end A043690.P8302096099236433994

namespace A043690

/-- `A000463(A043576(n+1)-2)` -/
def P8302096099236433994.Spec : Prop :=
  ∀ n, P8302096099236433994.a n = A043690 (n + 1)

end A043690

/-! ## A043690.P16365635691792858342

`A004526(or(1, A043576(n+1)))`
-/

namespace A043690.P16365635691792858342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lor 1 (A043576 (n + 1))).toNat

end

end A043690.P16365635691792858342

namespace A043690

/-- `A004526(or(1, A043576(n+1)))` -/
def P16365635691792858342.Spec : Prop :=
  ∀ n, P16365635691792858342.a n = A043690 (n + 1)

end A043690

/-! ## A043690.P7712031581216733402

`floor(A341911(A023691(n+1))/2)`
-/

namespace A043690.P7712031581216733402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A341911 (A023691 (n + 1)).toNat : ℚ) / 2⌋

end

end A043690.P7712031581216733402

namespace A043690

/-- `floor(A341911(A023691(n+1))/2)` -/
def P7712031581216733402.Spec : Prop :=
  ∀ n, P7712031581216733402.a n = A043690 (n + 1)

end A043690

/-!
# A043691: a(n) = (s(n)-1)/2, where s(n) is the n-th number whose base-2 representation has exactly 11 runs.

The programs for A043691, there is no canonical definition to state claims against.
-/

/-! ## A043691.P6125605078895510523

`floor(A043578(n+1)/2)`
-/

namespace A043691.P6125605078895510523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043578 (n + 1) : ℚ) / 2⌋

end

end A043691.P6125605078895510523

/-! ## A043691.P2294813530316129729

`∪[A043577(n+1), A043578(n+1)]`
-/

namespace A043691.P2294813530316129729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043691.P2294813530316129729

/-! ## A043691.P15448356144576000910

`A014682(A043578(n+1)-1)`
-/

namespace A043691.P15448356144576000910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043578 (n + 1) - 1).toNat

end

end A043691.P15448356144576000910

/-! ## A043691.P7507826285634885677

`A103391(A043578(n+1)-3)`
-/

namespace A043691.P7507826285634885677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A043578 (n + 1) - 3).toNat

end

end A043691.P7507826285634885677

/-! ## A043691.P6891512529941714575

`A249122(A043578(n+1))`
-/

namespace A043691.P6891512529941714575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A043578 (n + 1)).toNat

end

end A043691.P6891512529941714575

/-! ## A043691.P6107490968493229504

`A175126(A043578(n+1)-1)`
-/

namespace A043691.P6107490968493229504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A043578 (n + 1) - 1).toNat

end

end A043691.P6107490968493229504

/-! ## A043691.P2257135558870591657

`A004525(A043578(n+1)-1)`
-/

namespace A043691.P2257135558870591657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A043578 (n + 1) - 1).toNat

end

end A043691.P2257135558870591657

/-! ## A043691.P13326302043958728438

`A025480(A043578(n+1)-1)`
-/

namespace A043691.P13326302043958728438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A043578 (n + 1) - 1).toNat

end

end A043691.P13326302043958728438

/-! ## A043691.P13655149400668509259

`A026741(A043578(n+1)-1)`
-/

namespace A043691.P13655149400668509259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A043578 (n + 1) - 1).toNat

end

end A043691.P13655149400668509259

/-! ## A043691.P939600514837769064

`A000463(A043578(n+1)-2)`
-/

namespace A043691.P939600514837769064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A043578 (n + 1) - 2).toNat

end

end A043691.P939600514837769064

/-! ## A043691.P8413195342113200148

`A001057(A043578(n+1)-2)`
-/

namespace A043691.P8413195342113200148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A043578 (n + 1) - 2).toNat

end

end A043691.P8413195342113200148

/-! ## A043691.P10698709617226891923

`A003602(A043578(n+1)-2)`
-/

namespace A043691.P10698709617226891923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A043578 (n + 1) - 2).toNat

end

end A043691.P10698709617226891923

/-! ## A043691.P15693666696425394204

`A008619(A043578(n+1)-2)`
-/

namespace A043691.P15693666696425394204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A043578 (n + 1) - 2).toNat

end

end A043691.P15693666696425394204

/-! ## A043691.P11694976054663713917

`A028242(or(1, A043578(n+1)))`
-/

namespace A043691.P11694976054663713917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A043578 (n + 1))).toNat

end

end A043691.P11694976054663713917

/-! ## A043691.P1800980642904228623

`A004524(A043578(n+1)+2)-1`
-/

namespace A043691.P1800980642904228623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A043578 (n + 1) + 2).toNat - 1

end

end A043691.P1800980642904228623

/-! ## A043691.P13734870340234497827

`A028242(A043578(n+1)+1)-2`
-/

namespace A043691.P13734870340234497827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A043578 (n + 1) + 1).toNat - 2

end

end A043691.P13734870340234497827

/-! ## A043691.P17060304054350734847

`A043578(n+1)+A001057(A043578(n+1)+1)`
-/

namespace A043691.P17060304054350734847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043578 (n + 1) + A001057 (A043578 (n + 1) + 1).toNat

end

end A043691.P17060304054350734847

/-!
# A043692: Numbers whose base-3 representation has an even number of runs.

The programs for A043692, the canonical program `A043692.P17592614218210467069` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043692 has offset 1).

The definition of A043692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9840 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043692.P17592614218210467069

`eq[0, A043555(n)%2]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043692

/-- `eq[0, A043555(n)%2]` -/
def P17592614218210467069.Spec : Prop :=
  ∀ n, (P17592614218210467069.a n : ℤ) = A043692 (n + 1)

theorem P17592614218210467069.correct : P17592614218210467069.Spec := by
  intro n
  simp only [A043692, Nat.add_sub_cancel]

end A043692

/-! ## A043692.P904224420021499768

`eq[and(1, A043555(n)), A000038(n)]`
-/

namespace A043692.P904224420021499768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A043555 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043692.P904224420021499768

namespace A043692

/-- `eq[and(1, A043555(n)), A000038(n)]` -/
def P904224420021499768.Spec : Prop :=
  ∀ n, (P904224420021499768.a n : ℤ) = A043692 (n + 1)

end A043692

/-! ## A043692.P11313181869248399022

`eq[1, A057428(n)^A043555(n)]`
-/

namespace A043692.P11313181869248399022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A043555 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A043692.P11313181869248399022

namespace A043692

/-- `eq[1, A057428(n)^A043555(n)]` -/
def P11313181869248399022.Spec : Prop :=
  ∀ n, (P11313181869248399022.a n : ℤ) = A043692 (n + 1)

end A043692

/-! ## A043692.P16846743294485632292

`eq[char[A043706(n+1)], A000038(n)]`
-/

namespace A043692.P16846743294485632292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043706 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A043692.P16846743294485632292

namespace A043692

/-- `eq[char[A043706(n+1)], A000038(n)]` -/
def P16846743294485632292.Spec : Prop :=
  ∀ n, (P16846743294485632292.a n : ℤ) = A043692 (n + 1)

end A043692

/-! ## A043692.P16803799290344954405

`eq[0, and(A043555(n), A057427(n+1))]`
-/

namespace A043692.P16803799290344954405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043555 n) (A057427 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043692.P16803799290344954405

namespace A043692

/-- `eq[0, and(A043555(n), A057427(n+1))]` -/
def P16803799290344954405.Spec : Prop :=
  ∀ n, (P16803799290344954405.a n : ℤ) = A043692 (n + 1)

end A043692

/-! ## A043692.P1870175524322309071

`eq[A000035(n), A000035(A043555(n)+n)]`
-/

namespace A043692.P1870175524322309071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A043555 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043692.P1870175524322309071

namespace A043692

/-- `eq[A000035(n), A000035(A043555(n)+n)]` -/
def P1870175524322309071.Spec : Prop :=
  ∀ n, (P1870175524322309071.a n : ℤ) = A043692 (n + 1)

end A043692

/-! ## A043692.P9762819859877549338

`eq[and(1, A043555(n)), A000035(2*n)]`
-/

namespace A043692.P9762819859877549338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A043555 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043692.P9762819859877549338

namespace A043692

/-- `eq[and(1, A043555(n)), A000035(2*n)]` -/
def P9762819859877549338.Spec : Prop :=
  ∀ n, (P9762819859877549338.a n : ℤ) = A043692 (n + 1)

end A043692

/-!
# A043693: Numbers whose base-4 representation has an even number of runs.

The programs for A043693, there is no canonical definition to state claims against.
-/

/-! ## A043693.P6110175709974860460

`eq[0, A043556(n)%2]`
-/

namespace A043693.P6110175709974860460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043693.P6110175709974860460

/-! ## A043693.P15353963996500196893

`lt[and(1, A043556(n+1)), 1]+1`
-/

namespace A043693.P15353963996500196893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A043556 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A043693.P15353963996500196893

/-! ## A043693.P16320220848426047409

`eq[0, and(A016756(n), A043556(n))]`
-/

namespace A043693.P16320220848426047409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016756 n) (A043556 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043693.P16320220848426047409

/-! ## A043693.P12557805279635027791

`eq[gcd(2, A043556(n)), A020639(2*(n+1))]`
-/

namespace A043693.P12557805279635027791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A043556 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043693.P12557805279635027791

/-! ## A043693.P6804323590872151793

`eq[A160385(A064706(n))%2, A000007(n)]`
-/

namespace A043693.P6804323590872151793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160385 (A064706 n).toNat) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043693.P6804323590872151793

/-! ## A043693.P18277161996768643216

`eq[0, A043562(A007090(n))%2]`
-/

namespace A043693.P18277161996768643216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043562 (A007090 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043693.P18277161996768643216

/-!
# A043694: Numbers whose base-5 representation has an even number of runs.

The programs for A043694, there is no canonical definition to state claims against.
-/

/-! ## A043694.P7421832725559003712

`eq[0, A043557(n)%2]`
-/

namespace A043694.P7421832725559003712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043557 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043694.P7421832725559003712

/-! ## A043694.P10951250449183876657

`eq[1, gcd(2, A043562(A007091(n))+1)]`
-/

namespace A043694.P10951250449183876657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A043562 (A007091 n).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043694.P10951250449183876657

/-! ## A043694.P14970818827044254000

`eq[0, A043562(A014263(n+1))%2]`
-/

namespace A043694.P14970818827044254000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043562 (A014263 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043694.P14970818827044254000

/-! ## A043694.P7651610950231711722

`eq[0, A043562(A072960(n+1))%2]`
-/

namespace A043694.P7651610950231711722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043562 (A072960 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043694.P7651610950231711722

/-! ## A043694.P5840879412403913133

`eq[1, 5%A043562(A001744(n+1))]`
-/

namespace A043694.P5840879412403913133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A043562 (A001744 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043694.P5840879412403913133

/-!
# A043695: Numbers whose base-6 representation has an even number of runs.

The programs for A043695, there is no canonical definition to state claims against.
-/

/-! ## A043695.P9153757459063686217

`eq[0, A043558(n)%2]`
-/

namespace A043695.P9153757459063686217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043558 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043695.P9153757459063686217

/-! ## A043695.P17509529383169581024

`eq[2, gcd(A043558(n), A100484(n+1))]`
-/

namespace A043695.P17509529383169581024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A043558 n) (A100484 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043695.P17509529383169581024

/-! ## A043695.P4304289654397350904

`lt[A043562(A007092(n))%2, 1]`
-/

namespace A043695.P4304289654397350904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043562 (A007092 n).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043695.P4304289654397350904

/-! ## A043695.P16396636632083178140

`lt[A043562(A084984(n+1))%2, 1]`
-/

namespace A043695.P16396636632083178140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043562 (A084984 (n + 1)).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043695.P16396636632083178140

/-! ## A043695.P12419869900212564588

`eq[2, gcd(2, A043562(A276138(n+1)))]`
-/

namespace A043695.P12419869900212564588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A043562 (A276138 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043695.P12419869900212564588

/-! ## A043695.P5170787474492026451

`A043610(n+1)%A002189(n)`
-/

namespace A043695.P5170787474492026451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043610 (n + 1)) (A002189 n)

end

end A043695.P5170787474492026451

/-!
# A043696: Numbers whose base-7 representation has an even number of runs.

The programs for A043696, there is no canonical definition to state claims against.
-/

/-! ## A043696.P16992559057686588021

`eq[0, A043559(n)%2]`
-/

namespace A043696.P16992559057686588021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043559 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043696.P16992559057686588021

/-! ## A043696.P17150359428294553505

`lt[A043559(A028310(n))%2, 1]`
-/

namespace A043696.P17150359428294553505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043559 (A028310 n).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043696.P17150359428294553505

/-! ## A043696.P1140054407181029282

`eq[2, gcd(A040008(n), A043559(n))]`
-/

namespace A043696.P1140054407181029282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040008 n) (A043559 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043696.P1140054407181029282

/-! ## A043696.P4292765790757891399

`eq[1, A008683(A020483(n))^A043559(n)]`
-/

namespace A043696.P4292765790757891399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A020483 n).toNat : ℚ) ^ (A043559 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A043696.P4292765790757891399

/-! ## A043696.P5775368004547703067

`eq[2, gcd(2, A043562(A028374(n+1)))]`
-/

namespace A043696.P5775368004547703067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A043562 (A028374 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043696.P5775368004547703067

/-! ## A043696.P6650291686958706120

`A043617(n+1)%A002189(n)`
-/

namespace A043696.P6650291686958706120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043617 (n + 1)) (A002189 n)

end

end A043696.P6650291686958706120

/-! ## A043696.P17860181870039222273

`eq[2, A043559(n)*A178334(n)]`
-/

namespace A043696.P17860181870039222273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 n * A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043696.P17860181870039222273

/-!
# A043697: 

The programs for A043697, there is no canonical definition to state claims against.
-/

/-! ## A043697.P17747662137019247971

`eq[2, gcd(2, A043560(n))]`
-/

namespace A043697.P17747662137019247971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A043560 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043697.P17747662137019247971

/-! ## A043697.P16944437580742962274

`eq[A043560(n)%2, A000038(n)]`
-/

namespace A043697.P16944437580742962274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043560 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043697.P16944437580742962274

/-! ## A043697.P16385681382020543011

`eq[6, or(A040006(n), A043560(n))]`
-/

namespace A043697.P16385681382020543011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040006 n) (A043560 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043697.P16385681382020543011

/-! ## A043697.P13839230816081883112

`eq[1, dr(A037823(n+1)-A037806(n+1))%2]+1`
-/

namespace A043697.P13839230816081883112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A037823 (n + 1) - A037806 (n + 1)) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A043697.P13839230816081883112

/-! ## A043697.P2945016888028601418

`eq[1, (-1)^A043562(A007094(n))]`
-/

namespace A043697.P2945016888028601418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A043562 (A007094 n).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A043697.P2945016888028601418

/-! ## A043697.P13263538158170670998

`A043624(n+1)%A002189(n)`
-/

namespace A043697.P13263538158170670998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043624 (n + 1)) (A002189 n)

end

end A043697.P13263538158170670998

/-! ## A043697.P17741939794200409728

`eq[A043560(n), A178815(n+1)]`
-/

namespace A043697.P17741939794200409728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043560 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043697.P17741939794200409728

/-! ## A043697.P15979773227030544110

`lt[n, A265521(A265554(n))]`
-/

namespace A043697.P15979773227030544110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265521 (A265554 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043697.P15979773227030544110

/-!
# A043698: 

The programs for A043698, there is no canonical definition to state claims against.
-/

/-! ## A043698.P5063097437093096206

`eq[0, A043561(n)%2]`
-/

namespace A043698.P5063097437093096206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043561 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043698.P5063097437093096206

/-! ## A043698.P15101821860608704742

`lt[2, gcd(4, A043561(n+1))+1]+1`
-/

namespace A043698.P15101821860608704742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A043561 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A043698.P15101821860608704742

/-! ## A043698.P7299952674862351560

`eq[2, A020639(A043561(n)+2*n)]`
-/

namespace A043698.P7299952674862351560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A043561 n + (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043698.P7299952674862351560

/-! ## A043698.P17873772030538010637

`eq[2, A020639(A043561(n)+n+n)]`
-/

namespace A043698.P17873772030538010637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A043561 n + (n : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043698.P17873772030538010637

/-! ## A043698.P12300856129633322522

`eq[2, A089080(A043561(n)+2*n)]`
-/

namespace A043698.P12300856129633322522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (A043561 n + (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043698.P12300856129633322522

/-! ## A043698.P946007379785013513

`A043631(n+1)%A041192(n)`
-/

namespace A043698.P946007379785013513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043631 (n + 1)) (A041192 n)

end

end A043698.P946007379785013513

/-!
# A043699: a(n)= A000129(n)*A000129(2*n) where A000129(n) are the Pell numbers.

The programs for A043699, the canonical program `A043699.P18270398425961927853` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043699 has offset 0).

The definition of A043699 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n)*A000129(2*n)` (program `A043699.P18270398425961927853`, by `A043699.P18270398425961927853.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A043699.P3900285930770626119

`2*A052208(n)`
-/

namespace A043699.P3900285930770626119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052208 n

end

end A043699.P3900285930770626119

namespace A043699

/-- `2*A052208(n)` -/
def P3900285930770626119.Spec : Prop :=
  ∀ n, P3900285930770626119.a n = A043699 n

end A043699

/-! ## A043699.P18270398425961927853

`A000129(n)*A000129(2*n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043699

/-- `A000129(n)*A000129(2*n)` -/
def P18270398425961927853.Spec : Prop :=
  ∀ n, P18270398425961927853.a n = A043699 n

theorem P18270398425961927853.correct : P18270398425961927853.Spec := by
  intro n
  simp only [A043699]

end A043699

/-! ## A043699.P15540107869043272424

`lcm(2, round((sqrt(2)+1)^n))*A079291(n)`
-/

namespace A043699.P15540107869043272424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n)) : ℤ) * A079291 n

end

end A043699.P15540107869043272424

namespace A043699

/-- `lcm(2, round((sqrt(2)+1)^n))*A079291(n)` -/
def P15540107869043272424.Spec : Prop :=
  ∀ n, P15540107869043272424.a n = A043699 n

end A043699

/-! ## A043699.P1889447978651177826

`A000129(n)*A001542(n)`
-/

namespace A043699.P1889447978651177826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A001542 n

end

end A043699.P1889447978651177826

namespace A043699

/-- `A000129(n)*A001542(n)` -/
def P1889447978651177826.Spec : Prop :=
  ∀ n, P1889447978651177826.a n = A043699 n

end A043699

/-! ## A043699.P1373625487412867086

`A001109(n)*A052542(n)`
-/

namespace A043699.P1373625487412867086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n * A052542 n

end

end A043699.P1373625487412867086

namespace A043699

/-- `A001109(n)*A052542(n)` -/
def P1373625487412867086.Spec : Prop :=
  ∀ n, P1373625487412867086.a n = A043699 n

end A043699

/-! ## A043699.P2075007993094055553

`A002203(n)*A079291(n)`
-/

namespace A043699.P2075007993094055553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n * A079291 n

end

end A043699.P2075007993094055553

namespace A043699

/-- `A002203(n)*A079291(n)` -/
def P2075007993094055553.Spec : Prop :=
  ∀ n, P2075007993094055553.a n = A043699 n

end A043699

/-! ## A043699.P4709535363765038267

`A001333(n)*A114619(n)`
-/

namespace A043699.P4709535363765038267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A114619 n

end

end A043699.P4709535363765038267

namespace A043699

/-- `A001333(n)*A114619(n)` -/
def P4709535363765038267.Spec : Prop :=
  ∀ n, P4709535363765038267.a n = A043699 n

end A043699

/-! ## A043699.P7085253086035495928

`A001542(n)*A215928(n)`
-/

namespace A043699.P7085253086035495928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n * A215928 n

end

end A043699.P7085253086035495928

namespace A043699

/-- `A001542(n)*A215928(n)` -/
def P7085253086035495928.Spec : Prop :=
  ∀ n, P7085253086035495928.a n = A043699 n

end A043699

/-! ## A043699.P15799939857579510555

`A000129(n)²*A002203(n)`
-/

namespace A043699.P15799939857579510555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n ^ 2 * A002203 n

end

end A043699.P15799939857579510555

namespace A043699

/-- `A000129(n)²*A002203(n)` -/
def P15799939857579510555.Spec : Prop :=
  ∀ n, P15799939857579510555.a n = A043699 n

end A043699

/-! ## A043699.P5869447115344713152

`Δ[A001333(n)]*A001109(n)`
-/

namespace A043699.P5869447115344713152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001109 n

end

end A043699.P5869447115344713152

namespace A043699

/-- `Δ[A001333(n)]*A001109(n)` -/
def P5869447115344713152.Spec : Prop :=
  ∀ n, P5869447115344713152.a n = A043699 n

end A043699

