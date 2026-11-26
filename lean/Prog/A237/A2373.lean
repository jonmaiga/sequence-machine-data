import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
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
# A237300: Number of (n+1)X(n+1) 0..2 arrays with the upper median of every 2X2 subblock equal.

The programs for A237300, there is no canonical definition to state claims against.
-/

/-! ## A237300.P6803208261556547753

`A237308(∑[4*n]+1)`
-/

namespace A237300.P6803208261556547753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237308 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237300.P6803208261556547753

/-!
# A237301: Number of (n+1)X(1+1) 0..2 arrays with the upper median of every 2X2 subblock equal.

The programs for A237301, there is no canonical definition to state claims against.
-/

/-! ## A237301.P16483650603417519690

`A237308(∑[n]+1)`
-/

namespace A237301.P16483650603417519690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237308 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237301.P16483650603417519690

/-! ## A237301.P3852481687811020984

`record[A237308(n+1)/A156764(n)]`
-/

namespace A237301.P3852481687811020984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237308 (n + 1) : ℚ) / (A156764 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237301.P3852481687811020984

/-! ## A237301.P1787328813319760476

`record[root(A237308(n+1), A046802(n))]`
-/

namespace A237301.P1787328813319760476
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237308 (n + 1) : ℝ) ^ (1 / (A046802 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237301.P1787328813319760476

/-! ## A237301.P142486494636596022

`record[root(A237308(n+1), A193605(n))]`
-/

namespace A237301.P142486494636596022
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237308 (n + 1) : ℝ) ^ (1 / (A193605 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237301.P142486494636596022

/-! ## A237301.P10251847366465545129

`record[gcd(A002262(n), A237308(n+1))]`
-/

namespace A237301.P10251847366465545129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237308 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237301.P10251847366465545129

/-!
# A237302: Number of (n+1)X(2+1) 0..2 arrays with the upper median of every 2X2 subblock equal.

The programs for A237302, there is no canonical definition to state claims against.
-/

/-! ## A237302.P17477732411916307713

`A237308(∑[n+1]+2)`
-/

namespace A237302.P17477732411916307713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237308 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237302.P17477732411916307713

/-! ## A237302.P17406109464732243456

`record[root(A237308(n+2), A193605(n))]`
-/

namespace A237302.P17406109464732243456
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237308 (n + 2) : ℝ) ^ (1 / (A193605 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237302.P17406109464732243456

/-! ## A237302.P17431293450168814887

`record[gcd(A002262(n), A237308(n+2))]`
-/

namespace A237302.P17431293450168814887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237308 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237302.P17431293450168814887

/-! ## A237302.P9570924471404598206

`record[A237308(abs(A201163(n)))]`
-/

namespace A237302.P9570924471404598206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237308 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237302.P9570924471404598206

/-! ## A237302.P1178529641897790974

`record[A237308(Δ[A003453(n+5)])]`
-/

namespace A237302.P1178529641897790974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237308 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237302.P1178529641897790974

/-!
# A237303: Number of (n+1) X (3+1) 0..2 arrays with the upper median of every 2 X 2 subblock equal.

The programs for A237303, there is no canonical definition to state claims against.
-/

/-! ## A237303.P12114414362838990034

`A237308(∑[n+2]+4)`
-/

namespace A237303.P12114414362838990034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237308 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237303.P12114414362838990034

/-!
# A237304: Number of (n+1)X(4+1) 0..2 arrays with the upper median of every 2X2 subblock equal.

The programs for A237304, there is no canonical definition to state claims against.
-/

/-! ## A237304.P1274121075631992373

`A237308(A167614(n+2)+1)`
-/

namespace A237304.P1274121075631992373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237308 (A167614 (n + 2) + 1).toNat

end

end A237304.P1274121075631992373

/-! ## A237304.P2617339661482109990

`A237308(A141214(n+1))`
-/

namespace A237304.P2617339661482109990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237308 (A141214 (n + 1)).toNat

end

end A237304.P2617339661482109990

/-!
# A237305: Number of (n+1)X(5+1) 0..2 arrays with the upper median of every 2X2 subblock equal.

The programs for A237305, there is no canonical definition to state claims against.
-/

/-! ## A237305.P1050141899740754906

`A237308(A167499(n+3))`
-/

namespace A237305.P1050141899740754906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237308 (A167499 (n + 3)).toNat

end

end A237305.P1050141899740754906

/-! ## A237305.P5603322432364344585

`A237308(A374005(n+1))`
-/

namespace A237305.P5603322432364344585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237308 (A374005 (n + 1)).toNat

end

end A237305.P5603322432364344585

/-!
# A237306: Number of (n+1)X(6+1) 0..2 arrays with the upper median of every 2X2 subblock equal.

The programs for A237306, there is no canonical definition to state claims against.
-/

/-! ## A237306.P16333977955999756643

`A237308(A374007(n+1))`
-/

namespace A237306.P16333977955999756643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237308 (A374007 (n + 1)).toNat

end

end A237306.P16333977955999756643

/-!
# A237309: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237309, there is no canonical definition to state claims against.
-/

/-! ## A237309.P3284349125233142987

`A237315(∑[n]+1)`
-/

namespace A237309.P3284349125233142987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237309.P3284349125233142987

/-! ## A237309.P4243511943096736780

`record[A010054(n)*A237315(n+1)]`
-/

namespace A237309.P4243511943096736780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237309.P4243511943096736780

/-! ## A237309.P17846404333882525127

`record[A103451(n)*A237315(n+1)]`
-/

namespace A237309.P17846404333882525127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A237315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237309.P17846404333882525127

/-! ## A237309.P14137249116535978871

`record[A237315(n+1)/A156581(n)]`
-/

namespace A237309.P14137249116535978871
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237315 (n + 1) : ℚ) / (A156581 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237309.P14137249116535978871

/-!
# A237310: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237310, there is no canonical definition to state claims against.
-/

/-! ## A237310.P15220417850280107644

`A237315(∑[n+1]+2)`
-/

namespace A237310.P15220417850280107644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237310.P15220417850280107644

/-! ## A237310.P17340025676594171126

`record[A010054(n)*A237315(n+2)]`
-/

namespace A237310.P17340025676594171126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237315 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237310.P17340025676594171126

/-! ## A237310.P11747880040759037285

`record[A237315(Δ[A003453(n+5)])]`
-/

namespace A237310.P11747880040759037285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237310.P11747880040759037285

/-!
# A237311: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237311, there is no canonical definition to state claims against.
-/

/-! ## A237311.P7997823543574023466

`A237315(∑[n+2]+4)`
-/

namespace A237311.P7997823543574023466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237311.P7997823543574023466

/-!
# A237312: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237312, there is no canonical definition to state claims against.
-/

/-! ## A237312.P2002079041120753029

`A237315(A374004(n+1))`
-/

namespace A237312.P2002079041120753029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (A374004 (n + 1)).toNat

end

end A237312.P2002079041120753029

/-! ## A237312.P15480000114495085915

`A237315(A141214(n+1))`
-/

namespace A237312.P15480000114495085915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (A141214 (n + 1)).toNat

end

end A237312.P15480000114495085915

/-!
# A237313: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237313, there is no canonical definition to state claims against.
-/

/-! ## A237313.P15585390717487992152

`A237315(A374005(n+1))`
-/

namespace A237313.P15585390717487992152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (A374005 (n + 1)).toNat

end

end A237313.P15585390717487992152

/-!
# A237314: Number of (n+1)X(6+1) 0..3 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237314, there is no canonical definition to state claims against.
-/

/-! ## A237314.P11682577179216055998

`A237315(A374007(n+1))`
-/

namespace A237314.P11682577179216055998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (A374007 (n + 1)).toNat

end

end A237314.P11682577179216055998

/-! ## A237314.P16959783564208504878

`A237315(∑[n+6]+10)`
-/

namespace A237314.P16959783564208504878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A237314.P16959783564208504878

/-!
# A237316: Number of (n+1)X(n+1) 0..2 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237316, there is no canonical definition to state claims against.
-/

/-! ## A237316.P12275814227805749847

`A237324(∑[4*n]+1)`
-/

namespace A237316.P12275814227805749847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237316.P12275814227805749847

/-! ## A237316.P12506241834436958902

`record[A237324(Δ[A235355(n)])]`
-/

namespace A237316.P12506241834436958902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237316.P12506241834436958902

/-! ## A237316.P15934639230804612369

`record[A237324(A001844(val(n+1, 2)))]`
-/

namespace A237316.P15934639230804612369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (A001844 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237316.P15934639230804612369

/-! ## A237316.P2688079989840605067

`record[gcd(A037012(n), A237324(n+1))]`
-/

namespace A237316.P2688079989840605067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A237324 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237316.P2688079989840605067

/-!
# A237317: Number of (n+1) X (1+1) 0..2 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237317, there is no canonical definition to state claims against.
-/

/-! ## A237317.P7324808598204026787

`A237324(∑[n]+1)`
-/

namespace A237317.P7324808598204026787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237317.P7324808598204026787

/-! ## A237317.P9179117632837673640

`record[gcd(A002262(n), A237324(n+1))]`
-/

namespace A237317.P9179117632837673640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237324 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237317.P9179117632837673640

/-! ## A237317.P13195911876046621988

`record[char[A161680(n)]*A237324(n+1)]`
-/

namespace A237317.P13195911876046621988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A237324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237317.P13195911876046621988

/-! ## A237317.P4200795816164015852

`record[A237324(n+1)/A163269(n+1)]`
-/

namespace A237317.P4200795816164015852
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237324 (n + 1) : ℚ) / (A163269 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237317.P4200795816164015852

/-!
# A237318: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237318, there is no canonical definition to state claims against.
-/

/-! ## A237318.P16317840125361061370

`A237324(∑[n+1]+2)`
-/

namespace A237318.P16317840125361061370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237318.P16317840125361061370

/-! ## A237318.P7628668752493495349

`record[gcd(A002262(n), A237324(n+2))]`
-/

namespace A237318.P7628668752493495349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237324 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237318.P7628668752493495349

/-! ## A237318.P276586864913880854

`record[char[A161680(n)]*A237324(n+2)]`
-/

namespace A237318.P276586864913880854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A237324 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237318.P276586864913880854

/-! ## A237318.P18125272362647313506

`record[A237324(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A237318.P18125272362647313506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237318.P18125272362647313506

/-! ## A237318.P8001153374792806189

`record[A237324(abs(A201163(n)))]`
-/

namespace A237318.P8001153374792806189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237318.P8001153374792806189

/-!
# A237319: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237319, there is no canonical definition to state claims against.
-/

/-! ## A237319.P15021867127489241413

`A237324(∑[n+2]+4)`
-/

namespace A237319.P15021867127489241413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237319.P15021867127489241413

/-! ## A237319.P1379747581981009049

`record[A237324(A198464(n+1))]`
-/

namespace A237319.P1379747581981009049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237319.P1379747581981009049

/-!
# A237320: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237320, there is no canonical definition to state claims against.
-/

/-! ## A237320.P16530778653564994499

`A237324(A374004(n+1))`
-/

namespace A237320.P16530778653564994499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (A374004 (n + 1)).toNat

end

end A237320.P16530778653564994499

/-! ## A237320.P1680111951132838050

`A237324(A141214(n+1))`
-/

namespace A237320.P1680111951132838050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (A141214 (n + 1)).toNat

end

end A237320.P1680111951132838050

/-!
# A237321: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237321, there is no canonical definition to state claims against.
-/

/-! ## A237321.P5005115015276680079

`A237324(A374005(n+1))`
-/

namespace A237321.P5005115015276680079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (A374005 (n + 1)).toNat

end

end A237321.P5005115015276680079

/-! ## A237321.P17031820284851944377

`A237324(Δ[A264443(n)])`
-/

namespace A237321.P17031820284851944377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (f1 (n + 1) - f1 n).toNat

end

end A237321.P17031820284851944377

/-!
# A237322: Number of (n+1) X (6+1) 0..2 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237322, there is no canonical definition to state claims against.
-/

/-! ## A237322.P10952455826805567146

`A237324(A374007(n+1))`
-/

namespace A237322.P10952455826805567146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (A374007 (n + 1)).toNat

end

end A237322.P10952455826805567146

/-!
# A237323: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237323, there is no canonical definition to state claims against.
-/

/-! ## A237323.P8077860666543667748

`A237324(A374008(n+1))`
-/

namespace A237323.P8077860666543667748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (A374008 (n + 1)).toNat

end

end A237323.P8077860666543667748

/-!
# A237325: Number of (n+1)X(1+1) 0..2 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237325, there is no canonical definition to state claims against.
-/

/-! ## A237325.P7774552793821823545

`A237332(∑[n]+1)`
-/

namespace A237325.P7774552793821823545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237325.P7774552793821823545

/-! ## A237325.P7418159686524651086

`record[A237332(A246276(n+1))]`
-/

namespace A237325.P7418159686524651086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237325.P7418159686524651086

/-! ## A237325.P4925893610451992385

`record[A237332(A286235(n+1))]`
-/

namespace A237325.P4925893610451992385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237325.P4925893610451992385

/-! ## A237325.P8831809672152425260

`record[A010054(n)*A237332(n+1)]`
-/

namespace A237325.P8831809672152425260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237325.P8831809672152425260

/-! ## A237325.P14433278272011920922

`record[A103451(n)*A237332(n+1)]`
-/

namespace A237325.P14433278272011920922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A237332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237325.P14433278272011920922

/-!
# A237326: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237326, there is no canonical definition to state claims against.
-/

/-! ## A237326.P13992531506165239354

`A237332(∑[n+1]+2)`
-/

namespace A237326.P13992531506165239354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237326.P13992531506165239354

/-! ## A237326.P17326578115928237432

`record[A237332(A286235(n+1)+1)]`
-/

namespace A237326.P17326578115928237432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237326.P17326578115928237432

/-! ## A237326.P12568898116525033837

`record[A010054(n)*A237332(n+2)]`
-/

namespace A237326.P12568898116525033837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237332 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237326.P12568898116525033837

/-! ## A237326.P5022649028350515317

`record[A237332(n+3)^A112334(n)]`
-/

namespace A237326.P5022649028350515317
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237332 (n + 3) : ℚ) ^ (A112334 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237326.P5022649028350515317

/-! ## A237326.P208266682770010841

`record[A237332(Δ[A003453(n+5)])]`
-/

namespace A237326.P208266682770010841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237326.P208266682770010841

/-!
# A237327: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237327, there is no canonical definition to state claims against.
-/

/-! ## A237327.P16464116875797607559

`A237332(∑[n+2]+4)`
-/

namespace A237327.P16464116875797607559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237327.P16464116875797607559

/-! ## A237327.P6313219613580971444

`record[A237332(n+4)/A013610(n+1)]`
-/

namespace A237327.P6313219613580971444
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237332 (n + 4) : ℚ) / (A013610 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237327.P6313219613580971444

/-!
# A237328: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237328, there is no canonical definition to state claims against.
-/

/-! ## A237328.P13630792761797712999

`A237332(∑[n+3]+7)`
-/

namespace A237328.P13630792761797712999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A237328.P13630792761797712999

/-!
# A237329: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237329, there is no canonical definition to state claims against.
-/

/-! ## A237329.P18362971506992884438

`A237332(A374005(n+1))`
-/

namespace A237329.P18362971506992884438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (A374005 (n + 1)).toNat

end

end A237329.P18362971506992884438

/-!
# A237330: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237330, there is no canonical definition to state claims against.
-/

/-! ## A237330.P1492747501797649669

`A237332(A374007(n+1))`
-/

namespace A237330.P1492747501797649669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (A374007 (n + 1)).toNat

end

end A237330.P1492747501797649669

/-!
# A237331: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237331, there is no canonical definition to state claims against.
-/

/-! ## A237331.P7092341788298456608

`A237332(A374008(n+1))`
-/

namespace A237331.P7092341788298456608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (A374008 (n + 1)).toNat

end

end A237331.P7092341788298456608

/-!
# A237333: Number of (n+1) X (1+1) 0..3 arrays with the maximum minus the minimum of every 2 X 2 subblock equal.

The programs for A237333, there is no canonical definition to state claims against.
-/

/-! ## A237333.P1563702439561311084

`A237340(∑[n]+1)`
-/

namespace A237333.P1563702439561311084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237340 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237333.P1563702439561311084

/-! ## A237333.P6264965426492204886

`record[A237340(n+1)/A022167(n)]`
-/

namespace A237333.P6264965426492204886
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237340 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237333.P6264965426492204886

/-! ## A237333.P5149464846471195698

`record[root(A237340(n+1), A008459(n))]`
-/

namespace A237333.P5149464846471195698
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237340 (n + 1) : ℝ) ^ (1 / (A008459 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237333.P5149464846471195698

/-! ## A237333.P3003809231576662093

`record[gcd(A213191(n), A237340(n+1))]`
-/

namespace A237333.P3003809231576662093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213191 n) (A237340 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237333.P3003809231576662093

/-!
# A237334: Number of (n+1)X(2+1) 0..3 arrays with the maximum minus the minimum of every 2X2 subblock equal.

The programs for A237334, there is no canonical definition to state claims against.
-/

/-! ## A237334.P6316637879892483754

`A237340(∑[n+1]+2)`
-/

namespace A237334.P6316637879892483754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237340 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237334.P6316637879892483754

/-! ## A237334.P9899355570429702112

`record[gcd(A213191(n), A237340(n+2))]`
-/

namespace A237334.P9899355570429702112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213191 n) (A237340 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237334.P9899355570429702112

/-! ## A237334.P1790487001171484355

`record[gcd(A085838(n+1), A237340(n+3))]`
-/

namespace A237334.P1790487001171484355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085838 (n + 1)) (A237340 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237334.P1790487001171484355

/-! ## A237334.P10039935656778707943

`record[A237340(Δ[A003453(n+5)])]`
-/

namespace A237334.P10039935656778707943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237340 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237334.P10039935656778707943

/-!
# A237335: Number of (n+1)X(3+1) 0..3 arrays with the maximum minus the minimum of every 2X2 subblock equal.

The programs for A237335, there is no canonical definition to state claims against.
-/

/-! ## A237335.P12307116814354046965

`A237340(∑[n+2]+4)`
-/

namespace A237335.P12307116814354046965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237340 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237335.P12307116814354046965

/-!
# A237336: Number of (n+1)X(4+1) 0..3 arrays with the maximum minus the minimum of every 2X2 subblock equal.

The programs for A237336, there is no canonical definition to state claims against.
-/

/-! ## A237336.P9041681321302645429

`A237340(A141214(n)+7)`
-/

namespace A237336.P9041681321302645429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237340 (A141214 n + 7).toNat

end

end A237336.P9041681321302645429

/-! ## A237336.P10785218544647061391

`A237340(A141214(n+1))`
-/

namespace A237336.P10785218544647061391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237340 (A141214 (n + 1)).toNat

end

end A237336.P10785218544647061391

/-!
# A237341: For k in {2,3,...,9} define a sequence as follows: a(0)=0; for n>=0, a(n+1)=a(n)+1, unless a(n) ends in k, in which case a(n+1) is obtained by replacing the last digit of a(n) with the digit(s) of k^2. This is k(4).

The programs for A237341, there is no canonical definition to state claims against.
-/

/-! ## A237341.P11467561080497104076

`lt[A222211(n+4), 9]`
-/

namespace A237341.P11467561080497104076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A237341.P11467561080497104076

/-!
# A237342: For k in {2,3,...,9} define a sequence as follows: a(0)=0; for n>=0, a(n+1)=a(n)+1, unless a(n) ends in k, in which case a(n+1) is obtained by replacing the last digit of a(n) with the digit(s) of k^2. This is k(5).

The programs for A237342, the canonical program `A237342.P769436202112180081` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237342 has offset 0).

The definition of A237342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237342.P769436202112180081

`ogf((x-9x^2-9x^3-9x^4-9x^5+10x^6)/(1-11x+10x^2))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A237342

/-- `ogf((x-9x^2-9x^3-9x^4-9x^5+10x^6)/(1-11x+10x^2))` -/
def P769436202112180081.Spec : Prop :=
  ∀ n, P769436202112180081.a n = A237342 n

theorem P769436202112180081.correct : P769436202112180081.Spec := by
  intro n
  simp only [A237342]

end A237342

/-! ## A237342.P3554841670448273329

`A000720(A139514(n))+(n-1)*A273866(A102726(n))`
-/

namespace A237342.P3554841670448273329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A139514 n).toNat + ((n : ℤ) - 1) * A273866 (A102726 n).toNat

end

end A237342.P3554841670448273329

namespace A237342

/-- `A000720(A139514(n))+(n-1)*A273866(A102726(n))` -/
def P3554841670448273329.Spec : Prop :=
  ∀ n, P3554841670448273329.a n = A237342 n

end A237342

/-!
# A237343: For k in {2,3,...,9} define a sequence as follows: a(0)=0; for n>=0, a(n+1)=a(n)+1, unless a(n) ends in k, in which case a(n+1) is obtained by replacing the last digit of a(n) with the digit(s) of k^2. This is k(6).

The programs for A237343, the canonical program `A237343.P7221224371138364773` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237343 has offset 0).

The definition of A237343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237343.P7221224371138364773

`ogf((x-9x^2-9x^3-9x^4-9x^5-9x^6+20x^7)/(1-11x+10x^2))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A237343

/-- `ogf((x-9x^2-9x^3-9x^4-9x^5-9x^6+20x^7)/(1-11x+10x^2))` -/
def P7221224371138364773.Spec : Prop :=
  ∀ n, P7221224371138364773.a n = A237343 n

theorem P7221224371138364773.correct : P7221224371138364773.Spec := by
  intro n
  simp only [A237343]

end A237343

/-! ## A237343.P18016399934731352987

`record[Δ[A213925(A008279(n))]]`
-/

namespace A237343.P18016399934731352987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213925 (A008279 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237343.P18016399934731352987

namespace A237343

/-- `record[Δ[A213925(A008279(n))]]` -/
def P18016399934731352987.Spec : Prop :=
  ∀ n, P18016399934731352987.a n = A237343 n

end A237343

/-! ## A237343.P2445973735802494286

`∑[A261767(A343315(n))]-1`
-/

namespace A237343.P2445973735802494286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261767 (A343315 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A237343.P2445973735802494286

namespace A237343

/-- `∑[A261767(A343315(n))]-1` -/
def P2445973735802494286.Spec : Prop :=
  ∀ n, P2445973735802494286.a n = A237343 n

end A237343

/-! ## A237343.P15677562839712103307

`record[A002244(A089759(n))*A082375(n)]`
-/

namespace A237343.P15677562839712103307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002244 (A089759 n).toNat * A082375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237343.P15677562839712103307

namespace A237343

/-- `record[A002244(A089759(n))*A082375(n)]` -/
def P15677562839712103307.Spec : Prop :=
  ∀ n, P15677562839712103307.a n = A237343 n

end A237343

/-!
# A237344: For k in {2,3,...,9} define a sequence as follows: a(0)=0; for n>=0, a(n+1)=a(n)+1, unless a(n) ends in k, in which case a(n+1) is obtained by replacing the last digit of a(n) with the digit(s) of k^2. This is k(7).

The programs for A237344, there is no canonical definition to state claims against.
-/

/-! ## A237344.P16749086842728440946

`A130696(A024653(n+1))`
-/

namespace A237344.P16749086842728440946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (A024653 (n + 1)).toNat

end

end A237344.P16749086842728440946

/-! ## A237344.P13785229336414969472

`A057918(A024653(n+1)²)`
-/

namespace A237344.P13785229336414969472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A024653 (n + 1) ^ 2).toNat

end

end A237344.P13785229336414969472

/-! ## A237344.P12795315902776977953

`A088226(A024653(n+1)²)`
-/

namespace A237344.P12795315902776977953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A024653 (n + 1) ^ 2).toNat

end

end A237344.P12795315902776977953

/-! ## A237344.P18365577626283401395

`A214526(A024653(n+1)²)`
-/

namespace A237344.P18365577626283401395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A024653 (n + 1) ^ 2).toNat

end

end A237344.P18365577626283401395

/-! ## A237344.P9862892264434726978

`A333358(A004859(n+2))`
-/

namespace A237344.P9862892264434726978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333358 (A004859 (n + 2)).toNat

end

end A237344.P9862892264434726978

/-!
# A237345: For k in {2,3,...,9} define a sequence as follows: a(0)=0; for n>=0, a(n+1)=a(n)+1, unless a(n) ends in k, in which case a(n+1) is obtained by replacing the last digit of a(n) with the digit(s) of k^2. This is k(8).

The programs for A237345, the canonical program `A237345.P17554437484275979035` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237345 has offset 0).

The definition of A237345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237345.P17554437484275979035

`ogf((x+2x^2+3x^3+4x^4+5x^5-5x^6-15x^7-25x^8+20x^9+10x^10+10x^11+10x^12+10x^13)/(1-11x^5+10x^10))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A237345

/-- `ogf((x+2x^2+3x^3+4x^4+5x^5-5x^6-15x^7-25x^8+20x^9+10x^10+10x^11+10x^12+10x^13)/(1-11x^5+10x^10))` -/
def P17554437484275979035.Spec : Prop :=
  ∀ n, P17554437484275979035.a n = A237345 n

theorem P17554437484275979035.correct : P17554437484275979035.Spec := by
  intro n
  simp only [A237345]

end A237345

/-! ## A237345.P4535118059138567313

`A004859(A077168(n))`
-/

namespace A237345.P4535118059138567313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (A077168 n).toNat

end

end A237345.P4535118059138567313

namespace A237345

/-- `A004859(A077168(n))` -/
def P4535118059138567313.Spec : Prop :=
  ∀ n, P4535118059138567313.a n = A237345 n

end A237345

/-! ## A237345.P12227062006193664643

`∩[A024654(n), A087087(n)]`
-/

namespace A237345.P12227062006193664643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024654 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087087 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237345.P12227062006193664643

namespace A237345

/-- `∩[A024654(n), A087087(n)]` -/
def P12227062006193664643.Spec : Prop :=
  ∀ n, (P12227062006193664643.a n : ℤ) = A237345 n

end A237345

/-! ## A237345.P11060495530848267114

`∩[A004849(n+1), A024654(n)]`
-/

namespace A237345.P11060495530848267114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024654 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237345.P11060495530848267114

namespace A237345

/-- `∩[A004849(n+1), A024654(n)]` -/
def P11060495530848267114.Spec : Prop :=
  ∀ n, (P11060495530848267114.a n : ℤ) = A237345 n

end A237345

/-! ## A237345.P5873963657774232923

`∩[A004850(n+1), A024654(n)]`
-/

namespace A237345.P5873963657774232923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024654 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237345.P5873963657774232923

namespace A237345

/-- `∩[A004850(n+1), A024654(n)]` -/
def P5873963657774232923.Spec : Prop :=
  ∀ n, (P5873963657774232923.a n : ℤ) = A237345 n

end A237345

/-!
# A237346: For k in {2,3,...,9} define a sequence as follows: a(0)=0; for n>=0, a(n+1)=a(n)+1, unless a(n) ends in k, in which case a(n+1) is obtained by replacing the last digit of a(n) with the digit(s) of k^2. This is k(9).

The programs for A237346, there is no canonical definition to state claims against.
-/

/-! ## A237346.P13560181485345898558

`A032762(A061479(n))`
-/

namespace A237346.P13560181485345898558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032762 (A061479 n).toNat

end

end A237346.P13560181485345898558

/-! ## A237346.P4223305393847693141

`∑[A246277(A000045(n+2))^A055641(n)]`
-/

namespace A237346.P4223305393847693141
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246277 (A000045 (n + 2)).toNat : ℚ) ^ (A055641 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237346.P4223305393847693141

/-! ## A237346.P5024435001308972656

`∩[A024663(n), A130575(n)]`
-/

namespace A237346.P5024435001308972656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024663 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130575 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237346.P5024435001308972656

/-! ## A237346.P13092904170793967863

`A024656(n)%A203565(A302623(2*n+3))`
-/

namespace A237346.P13092904170793967863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024656 n) (A203565 (A302623 (2 * n + 3)).toNat)

end

end A237346.P13092904170793967863

/-! ## A237346.P8489448974740387403

`A004086(lt[A069958(n+2), A089854(n+3)])`
-/

namespace A237346.P8489448974740387403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069958 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A237346.P8489448974740387403

/-!
# A237347: First differences of A078633.

The programs for A237347, the canonical program `A237347.P14494356803282129209` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237347 has offset 1).

The definition of A237347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237347.P4103091273954386809

`A240025(n+1)+2`
-/

namespace A237347.P4103091273954386809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240025 (n + 1) + 2

end

end A237347.P4103091273954386809

namespace A237347

/-- `A240025(n+1)+2` -/
def P4103091273954386809.Spec : Prop :=
  ∀ n, P4103091273954386809.a n = A237347 (n + 1)

end A237347

/-! ## A237347.P14494356803282129209

`A078633(n+2)-A078633(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A237347

/-- `A078633(n+2)-A078633(n+1)` -/
def P14494356803282129209.Spec : Prop :=
  ∀ n, P14494356803282129209.a n = A237347 (n + 1)

theorem P14494356803282129209.correct : P14494356803282129209.Spec := by
  intro n
  simp only [A237347, Nat.add_sub_cancel]

end A237347

/-! ## A237347.P18042692710365769387

`abs(A167752(n+1))+2`
-/

namespace A237347.P18042692710365769387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167752 (n + 1)| + 2

end

end A237347.P18042692710365769387

namespace A237347

/-- `abs(A167752(n+1))+2` -/
def P18042692710365769387.Spec : Prop :=
  ∀ n, P18042692710365769387.a n = A237347 (n + 1)

end A237347

/-! ## A237347.P6154505743170527560

`a(round(n-sqrt(n)))` with `a(0)=3, a(1)=3, a(2)=2`
-/

namespace A237347.P6154505743170527560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 2] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (n : ℝ))).toNat

end

end A237347.P6154505743170527560

namespace A237347

/-- `a(round(n-sqrt(n)))` -/
def P6154505743170527560.Spec : Prop :=
  ∀ n, (P6154505743170527560.a n : ℤ) = A237347 (n + 1)

end A237347

/-! ## A237347.P2921622792002300715

`Δ[floor(1/Δ[sqrt(n)])]+2`
-/

namespace A237347.P2921622792002300715
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (f2 (n + 1) - f2 n)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A237347.P2921622792002300715

namespace A237347

/-- `Δ[floor(1/Δ[sqrt(n)])]+2` -/
def P2921622792002300715.Spec : Prop :=
  ∀ n, P2921622792002300715.a n = A237347 (n + 1)

end A237347

/-! ## A237347.P15395138019757040365

`or(2, Δ[floor(sqrt(4*n+1))])`
-/

namespace A237347.P15395138019757040365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A237347.P15395138019757040365

namespace A237347

/-- `or(2, Δ[floor(sqrt(4*n+1))])` -/
def P15395138019757040365.Spec : Prop :=
  ∀ n, P15395138019757040365.a n = A237347 (n + 1)

end A237347

/-! ## A237347.P13006829529595789570

`xor(2, Δ[floor(sqrt(4*n+1))])`
-/

namespace A237347.P13006829529595789570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A237347.P13006829529595789570

namespace A237347

/-- `xor(2, Δ[floor(sqrt(4*n+1))])` -/
def P13006829529595789570.Spec : Prop :=
  ∀ n, P13006829529595789570.a n = A237347 (n + 1)

end A237347

/-! ## A237347.P3886228578920124949

`char[a(n-2)+n+1]+2` with `a(0)=0, a(1)=1`
-/

namespace A237347.P3886228578920124949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 2

end

end A237347.P3886228578920124949

namespace A237347

/-- `char[a(n-2)+n+1]+2` -/
def P3886228578920124949.Spec : Prop :=
  ∀ n, (P3886228578920124949.a n : ℤ) = A237347 (n + 1)

end A237347

/-! ## A237347.P11638892170714591569

`12/A275161(n+1)`
-/

namespace A237347.P11638892170714591569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  12 / (A275161 (n + 1) : ℚ)

end

end A237347.P11638892170714591569

namespace A237347

/-- `12/A275161(n+1)` -/
def P11638892170714591569.Spec : Prop :=
  ∀ n, P11638892170714591569.a n = (A237347 (n + 1) : ℚ)

end A237347

/-! ## A237347.P2823670713794458494

`(A265411(n+2)+3)/2`
-/

namespace A237347.P2823670713794458494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265411 (n + 2) + 3 : ℚ) / 2

end

end A237347.P2823670713794458494

namespace A237347

/-- `(A265411(n+2)+3)/2` -/
def P2823670713794458494.Spec : Prop :=
  ∀ n, P2823670713794458494.a n = (A237347 (n + 1) : ℚ)

end A237347

/-! ## A237347.P17822961896007373909

`A000040(Δ[ceil((sqrt(n+1)+1)²)])`
-/

namespace A237347.P17822961896007373909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (n + 1 : ℝ) + 1) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A237347.P17822961896007373909

namespace A237347

/-- `A000040(Δ[ceil((sqrt(n+1)+1)²)])` -/
def P17822961896007373909.Spec : Prop :=
  ∀ n, P17822961896007373909.a n = A237347 (n + 1)

end A237347

/-! ## A237347.P6740168343022763355

`A094284(A084346(n+1))`
-/

namespace A237347.P6740168343022763355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094284 (A084346 (n + 1)).toNat

end

end A237347.P6740168343022763355

namespace A237347

/-- `A094284(A084346(n+1))` -/
def P6740168343022763355.Spec : Prop :=
  ∀ n, P6740168343022763355.a n = A237347 (n + 1)

end A237347

/-! ## A237347.P15319268328101729924

`A000267(ceil(ratio[A000267(n)]))`
-/

namespace A237347.P15319268328101729924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A237347.P15319268328101729924

namespace A237347

/-- `A000267(ceil(ratio[A000267(n)]))` -/
def P15319268328101729924.Spec : Prop :=
  ∀ n, P15319268328101729924.a n = A237347 (n + 1)

end A237347

/-! ## A237347.P9908485446155514258

`A001612(1-Δ[A000267(n)])`
-/

namespace A237347.P9908485446155514258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A237347.P9908485446155514258

namespace A237347

/-- `A001612(1-Δ[A000267(n)])` -/
def P9908485446155514258.Spec : Prop :=
  ∀ n, P9908485446155514258.a n = A237347 (n + 1)

end A237347

/-! ## A237347.P16215013781238984065

`A004444(1-Δ[A000267(n)])`
-/

namespace A237347.P16215013781238984065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004444 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A237347.P16215013781238984065

namespace A237347

/-- `A004444(1-Δ[A000267(n)])` -/
def P16215013781238984065.Spec : Prop :=
  ∀ n, P16215013781238984065.a n = A237347 (n + 1)

end A237347

/-! ## A237347.P15161464403244128560

`A000032(Δ[2*A000267(n)])`
-/

namespace A237347.P15161464403244128560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat

end

end A237347.P15161464403244128560

namespace A237347

/-- `A000032(Δ[2*A000267(n)])` -/
def P15161464403244128560.Spec : Prop :=
  ∀ n, P15161464403244128560.a n = A237347 (n + 1)

end A237347

/-! ## A237347.P17596969210565243333

`A000703(Δ[A000267(n)])/2`
-/

namespace A237347.P17596969210565243333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000703 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A237347.P17596969210565243333

namespace A237347

/-- `A000703(Δ[A000267(n)])/2` -/
def P17596969210565243333.Spec : Prop :=
  ∀ n, P17596969210565243333.a n = (A237347 (n + 1) : ℚ)

end A237347

/-! ## A237347.P242131274545760261

`A053669(A151800(A056737(n+1)))`
-/

namespace A237347.P242131274545760261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A151800 (A056737 (n + 1)).toNat).toNat

end

end A237347.P242131274545760261

namespace A237347

/-- `A053669(A151800(A056737(n+1)))` -/
def P242131274545760261.Spec : Prop :=
  ∀ n, P242131274545760261.a n = A237347 (n + 1)

end A237347

/-! ## A237347.P10265720539402027190

`A000051(A000267(n+1)-A000267(n))`
-/

namespace A237347.P10265720539402027190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A000267 (n + 1) - A000267 n).toNat

end

end A237347.P10265720539402027190

namespace A237347

/-- `A000051(A000267(n+1)-A000267(n))` -/
def P10265720539402027190.Spec : Prop :=
  ∀ n, P10265720539402027190.a n = A237347 (n + 1)

end A237347

/-! ## A237347.P14596578749912118610

`A132169(A000267(n+1)-A000267(n))`
-/

namespace A237347.P14596578749912118610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132169 (A000267 (n + 1) - A000267 n).toNat

end

end A237347.P14596578749912118610

namespace A237347

/-- `A132169(A000267(n+1)-A000267(n))` -/
def P14596578749912118610.Spec : Prop :=
  ∀ n, P14596578749912118610.a n = A237347 (n + 1)

end A237347

/-!
# A237348: Number of ordered ways to write n = k + m with k > 0 and m > 0 such that prime(k) + 4 and prime(prime(m)) + 4 are both prime.

The programs for A237348, there is no canonical definition to state claims against.
-/

/-! ## A237348.P4368581511582160133

`val(Δ[A155519(n+1)], A155487(2*n+5))`
-/

namespace A237348.P4368581511582160133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat (A155487 (2 * n + 5)).toNat

end

end A237348.P4368581511582160133

/-! ## A237348.P4641723752230634300

`A080356(A138675(n+2)%A247579(n+2))`
-/

namespace A237348.P4641723752230634300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080356 (Int.tmod (A138675 (n + 2)) (A247579 (n + 2))).toNat

end

end A237348.P4641723752230634300

/-! ## A237348.P874616936351364739

`A193238(∑[n]*A240064(n))`
-/

namespace A237348.P874616936351364739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A240064 n).toNat

end

end A237348.P874616936351364739

/-! ## A237348.P4642434170604572539

`A000196(A256388(3*n+2)%A317588(n+1))`
-/

namespace A237348.P4642434170604572539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A256388 (3 * n + 2)) (A317588 (n + 1))).toNat

end

end A237348.P4642434170604572539

/-! ## A237348.P2365676406980307732

`A209287(A114340(n+2))`
-/

namespace A237348.P2365676406980307732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209287 (A114340 (n + 2)).toNat

end

end A237348.P2365676406980307732

/-!
# A237349: a(n) = Sum_{i=1..n} ( Product_{k|i} d(k) ), where d(n) = A000005(n).

The programs for A237349, the canonical program `A237349.P11959194443899847122` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237349 has offset 1).

The definition of A237349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237349.P11959194443899847122

`∑[A211776(1+n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A237349

/-- `∑[A211776(1+n)]` -/
def P11959194443899847122.Spec : Prop :=
  ∀ n, P11959194443899847122.a n = A237349 (n + 1)

theorem P11959194443899847122.correct : P11959194443899847122.Spec := by
  intro n
  simp only [A237349, Nat.add_sub_cancel]

end A237349

/-! ## A237349.P16127181846294293691

`∑[∏{d}[1+n, A000005(#)]]`
-/

namespace A237349.P16127181846294293691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A000005 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237349.P16127181846294293691

namespace A237349

/-- `∑[∏{d}[1+n, A000005(#)]]` -/
def P16127181846294293691.Spec : Prop :=
  ∀ n, P16127181846294293691.a n = A237349 (n + 1)

end A237349

/-! ## A237349.P12320167436485860132

`∑[∏{d}[n+1, A032741(#)+1]]`
-/

namespace A237349.P12320167436485860132
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (A032741 d + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237349.P12320167436485860132

namespace A237349

/-- `∑[∏{d}[n+1, A032741(#)+1]]` -/
def P12320167436485860132.Spec : Prop :=
  ∀ n, P12320167436485860132.a n = A237349 (n + 1)

end A237349

/-! ## A237349.P6450836364884131313

`∑[∏{d}[1+n, A038040(#)/#]]`
-/

namespace A237349.P6450836364884131313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (A038040 d : ℚ) / (d : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237349.P6450836364884131313

namespace A237349

/-- `∑[∏{d}[1+n, A038040(#)/#]]` -/
def P6450836364884131313.Spec : Prop :=
  ∀ n, P6450836364884131313.a n = (A237349 (n + 1) : ℚ)

end A237349

/-! ## A237349.P8530300944843044529

`A211776(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A237349.P8530300944843044529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A211776 (n + 1) + a (n - 1)

end

end A237349.P8530300944843044529

namespace A237349

/-- `A211776(n+1)+a(n-1)` -/
def P8530300944843044529.Spec : Prop :=
  ∀ n, P8530300944843044529.a n = A237349 (n + 1)

end A237349

/-! ## A237349.P8241406674411262454

`∏{d}[n+1, A000005(#)]+a(A023443(n))` with `a(0)=1`
-/

namespace A237349.P8241406674411262454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ d ∈ Nat.divisors (f1 n), A000005 d + a (A023443 n).toNat

end

end A237349.P8241406674411262454

namespace A237349

/-- `∏{d}[n+1, A000005(#)]+a(A023443(n))` -/
def P8241406674411262454.Spec : Prop :=
  ∀ n, P8241406674411262454.a n = A237349 (n + 1)

end A237349

/-! ## A237349.P7189288562306266736

`∑[A306705(n+1)/A007955(n+1)]`
-/

namespace A237349.P7189288562306266736
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306705 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237349.P7189288562306266736

namespace A237349

/-- `∑[A306705(n+1)/A007955(n+1)]` -/
def P7189288562306266736.Spec : Prop :=
  ∀ n, P7189288562306266736.a n = (A237349 (n + 1) : ℚ)

end A237349

/-! ## A237349.P5068481136973171191

`∑[A324987(n+1)/A206032(n+1)]`
-/

namespace A237349.P5068481136973171191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324987 (n + 1) : ℚ) / (A206032 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237349.P5068481136973171191

namespace A237349

/-- `∑[A324987(n+1)/A206032(n+1)]` -/
def P5068481136973171191.Spec : Prop :=
  ∀ n, P5068481136973171191.a n = (A237349 (n + 1) : ℚ)

end A237349

/-!
# A237350: a(n) = the smallest number k such that Sum_{d|k} 1/tau(d) >= n.

The programs for A237350, there is no canonical definition to state claims against.
-/

/-! ## A237350.P4407738903043179695

`filter[A265393(n+1), A254651(#)]`
-/

namespace A237350.P4407738903043179695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A237350.P4407738903043179695

/-!
# A237351: Positive integers k such that x^2 - 5xy + y^2 + k = 0 has integer solutions.

The programs for A237351, there is no canonical definition to state claims against.
-/

/-! ## A237351.P4295984362925340129

`∩[A035260(n+1), A189716(n+1)]`
-/

namespace A237351.P4295984362925340129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237351.P4295984362925340129

/-! ## A237351.P7869644654235959905

`∩[A035260(n+1), comp[A243172(n+1)]]`
-/

namespace A237351.P7869644654235959905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035260 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243172 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A237351.P7869644654235959905

/-! ## A237351.P13179796159782829304

`A135997(∩[2*n+3+n, A243172(n+1)])`
-/

namespace A237351.P13179796159782829304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243172 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A237351.P13179796159782829304

/-! ## A237351.P16417462660804086229

`A230044(lt[A321917(3*n+4), A321932(n+1)])`
-/

namespace A237351.P16417462660804086229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321917 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230044 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A237351.P16417462660804086229

/-!
# A237352: a(1)=1; for n>1, a(n) is the smallest positive integer for which sigma(a(n)) is a proper multiple of sigma(a(n-1)).

The programs for A237352, there is no canonical definition to state claims against.
-/

/-! ## A237352.P4719784258913226540

`∩[A090552(n+1), A280013(n+1)]`
-/

namespace A237352.P4719784258913226540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237352.P4719784258913226540

/-! ## A237352.P16092926533216944798

`∩[A090552(n+1), A285614(n+1)]`
-/

namespace A237352.P16092926533216944798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237352.P16092926533216944798

/-! ## A237352.P13200546829261671448

`A287896(A001558(n))+A057094(n)`
-/

namespace A237352.P13200546829261671448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (A001558 n).toNat + A057094 n

end

end A237352.P13200546829261671448

/-! ## A237352.P1890501292129597773

`A008615(A242958(n+1)-A017005(n))`
-/

namespace A237352.P1890501292129597773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A242958 (n + 1) - A017005 n).toNat

end

end A237352.P1890501292129597773

/-!
# A237353: For n=g+h, a(n) is the minimum value of omega(g)+omega(h).

The programs for A237353, the canonical program `A237353.P6068301606430795874` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237353 has offset 2).

The definition of A237353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237353.P1319261768654562658

`A130130(A066882(n+1))`
-/

namespace A237353.P1319261768654562658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A066882 (n + 1)).toNat

end

end A237353.P1319261768654562658

namespace A237353

/-- `A130130(A066882(n+1))` -/
def P1319261768654562658.Spec : Prop :=
  ∀ n, P1319261768654562658.a n = A237353 (n + 2)

end A237353

/-! ## A237353.P4357610892980300408

`ceil(A001221(n+1)^2^-n)`
-/

namespace A237353.P4357610892980300408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001221 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (-(n : ℤ) : ℤ) : ℝ)⌉

end

end A237353.P4357610892980300408

namespace A237353

/-- `ceil(A001221(n+1)^2^-n)` -/
def P4357610892980300408.Spec : Prop :=
  ∀ n, P4357610892980300408.a n = A237353 (n + 2)

end A237353

/-! ## A237353.P2354470069873063450

`ceil(sqrt(A001221(gcd(n+1, (n+1)*2^n))))`
-/

namespace A237353.P2354470069873063450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001221 (Nat.gcd (n + 1) ((n + 1) * 2 ^ n)) : ℝ)⌉

end

end A237353.P2354470069873063450

namespace A237353

/-- `ceil(sqrt(A001221(gcd(n+1, (n+1)*2^n))))` -/
def P2354470069873063450.Spec : Prop :=
  ∀ n, P2354470069873063450.a n = A237353 (n + 2)

end A237353

/-! ## A237353.P8420342195107298931

`floor(sqrt(A001222(∏{p}[1+n, #²])))`
-/

namespace A237353.P8420342195107298931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2))

end

end A237353.P8420342195107298931

namespace A237353

/-- `floor(sqrt(A001222(∏{p}[1+n, #²])))` -/
def P8420342195107298931.Spec : Prop :=
  ∀ n, P8420342195107298931.a n = A237353 (n + 2)

end A237353

/-! ## A237353.P7415999554183705756

`A001221(A066048(n+1))`
-/

namespace A237353.P7415999554183705756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A066048 (n + 1)).toNat

end

end A237353.P7415999554183705756

namespace A237353

/-- `A001221(A066048(n+1))` -/
def P7415999554183705756.Spec : Prop :=
  ∀ n, P7415999554183705756.a n = A237353 (n + 2)

end A237353

/-! ## A237353.P4099564203107656928

`A061394(A005361(A007947(n+1)²))`
-/

namespace A237353.P4099564203107656928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061394 (A005361 (A007947 (n + 1) ^ 2).toNat).toNat

end

end A237353.P4099564203107656928

namespace A237353

/-- `A061394(A005361(A007947(n+1)²))` -/
def P4099564203107656928.Spec : Prop :=
  ∀ n, P4099564203107656928.a n = A237353 (n + 2)

end A237353

/-! ## A237353.P7135684920902981956

`A239716(n+1)%A287841(n+1)`
-/

namespace A237353.P7135684920902981956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239716 (n + 1)) (A287841 (n + 1))

end

end A237353.P7135684920902981956

namespace A237353

/-- `A239716(n+1)%A287841(n+1)` -/
def P7135684920902981956.Spec : Prop :=
  ∀ n, P7135684920902981956.a n = A237353 (n + 2)

end A237353

/-! ## A237353.P1671000975253978354

`A077498(n+1)%A287841(n+1)`
-/

namespace A237353.P1671000975253978354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077498 (n + 1)) (A287841 (n + 1))

end

end A237353.P1671000975253978354

namespace A237353

/-- `A077498(n+1)%A287841(n+1)` -/
def P1671000975253978354.Spec : Prop :=
  ∀ n, P1671000975253978354.a n = A237353 (n + 2)

end A237353

/-! ## A237353.P6068301606430795874

`A164560(n+1)%A287841(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A237353

/-- `A164560(n+1)%A287841(n+1)` -/
def P6068301606430795874.Spec : Prop :=
  ∀ n, P6068301606430795874.a n = A237353 (n + 2)

theorem P6068301606430795874.correct : P6068301606430795874.Spec := by
  intro n
  simp only [A237353, Nat.add_sub_cancel]

end A237353

/-! ## A237353.P546969778642920410

`ceil(sqrt(A355523((n+1)*∏{p}[n+1, #])))`
-/

namespace A237353.P546969778642920410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A355523 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p)) : ℝ)⌉

end

end A237353.P546969778642920410

namespace A237353

/-- `ceil(sqrt(A355523((n+1)*∏{p}[n+1, #])))` -/
def P546969778642920410.Spec : Prop :=
  ∀ n, P546969778642920410.a n = A237353 (n + 2)

end A237353

/-! ## A237353.P84140054643259280

`gcd(A273711(n+1), A319880(n))`
-/

namespace A237353.P84140054643259280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A273711 (n + 1)) (A319880 n)

end

end A237353.P84140054643259280

namespace A237353

/-- `gcd(A273711(n+1), A319880(n))` -/
def P84140054643259280.Spec : Prop :=
  ∀ n, (P84140054643259280.a n : ℤ) = A237353 (n + 2)

end A237353

/-! ## A237353.P2932798809543494874

`A083800(n+1)%A287841(n+1)`
-/

namespace A237353.P2932798809543494874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A287841 (n + 1))

end

end A237353.P2932798809543494874

namespace A237353

/-- `A083800(n+1)%A287841(n+1)` -/
def P2932798809543494874.Spec : Prop :=
  ∀ n, P2932798809543494874.a n = A237353 (n + 2)

end A237353

/-! ## A237353.P5044591927495975758

`A070198(n)%A287841(n+1)`
-/

namespace A237353.P5044591927495975758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A287841 (n + 1))

end

end A237353.P5044591927495975758

namespace A237353

/-- `A070198(n)%A287841(n+1)` -/
def P5044591927495975758.Spec : Prop :=
  ∀ n, P5044591927495975758.a n = A237353 (n + 2)

end A237353

/-! ## A237353.P8528297464157232326

`A079782(n+1)%A287841(n+1)`
-/

namespace A237353.P8528297464157232326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A287841 (n + 1))

end

end A237353.P8528297464157232326

namespace A237353

/-- `A079782(n+1)%A287841(n+1)` -/
def P8528297464157232326.Spec : Prop :=
  ∀ n, P8528297464157232326.a n = A237353 (n + 2)

end A237353

/-! ## A237353.P2767112200355339997

`A083685(n+1)%A287841(n+1)`
-/

namespace A237353.P2767112200355339997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A287841 (n + 1))

end

end A237353.P2767112200355339997

namespace A237353

/-- `A083685(n+1)%A287841(n+1)` -/
def P2767112200355339997.Spec : Prop :=
  ∀ n, P2767112200355339997.a n = A237353 (n + 2)

end A237353

/-! ## A237353.P9410040418689966623

`A121934(n+1)%A287841(n+1)`
-/

namespace A237353.P9410040418689966623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A287841 (n + 1))

end

end A237353.P9410040418689966623

namespace A237353

/-- `A121934(n+1)%A287841(n+1)` -/
def P9410040418689966623.Spec : Prop :=
  ∀ n, P9410040418689966623.a n = A237353 (n + 2)

end A237353

/-!
# A237354: a(n) is the maximum of omega(g)+omega(h) for all decompositions n=g+h with g>=h>=1.

The programs for A237354, there is no canonical definition to state claims against.
-/

/-! ## A237354.P11466648545762461259

`ceil(n/A008624(A141213(n)))`
-/

namespace A237354.P11466648545762461259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A008624 (A141213 n).toNat : ℚ)⌉

end

end A237354.P11466648545762461259

/-! ## A237354.P13266171384789217743

`A004218(A052905(n)*A253720(n+1))`
-/

namespace A237354.P13266171384789217743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A052905 n * A253720 (n + 1)).toNat

end

end A237354.P13266171384789217743

/-! ## A237354.P16567799965618003000

`ceil(n/A038548(A135530(n+1)))`
-/

namespace A237354.P16567799965618003000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A038548 (A135530 (n + 1)).toNat : ℚ)⌉

end

end A237354.P16567799965618003000

/-! ## A237354.P12482347695824145964

`A003056(A297025(A024645(n)²))`
-/

namespace A237354.P12482347695824145964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A297025 (A024645 n ^ 2).toNat).toNat

end

end A237354.P12482347695824145964

/-! ## A237354.P8928527946721625974

`A077429((A001222(n+2)+1)*A347707(3*n+1))`
-/

namespace A237354.P8928527946721625974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077429 ((A001222 (n + 2) + 1) * A347707 (3 * n + 1)).toNat

end

end A237354.P8928527946721625974

/-!
# A237355: The number of tilings of the 3 X 4 X n room by 1 X 1 X 3 boxes.

The programs for A237355, there is no canonical definition to state claims against.
-/

/-! ## A237355.P3764316750270763581

`A144724(A214948(n+1))`
-/

namespace A237355.P3764316750270763581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144724 (A214948 (n + 1)).toNat

end

end A237355.P3764316750270763581

/-!
# A237357: The number of tilings of the 3 X 3 X (2n) room with 1 X 2 X 3 boxes.

The programs for A237357, the canonical program `A237357.P14132790121103328945` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237357 has offset 0).

The definition of A237357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237357.P14132790121103328945

`ogf((1-x)/(1-7x-22x^2-36x^3))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A237357

/-- `ogf((1-x)/(1-7x-22x^2-36x^3))` -/
def P14132790121103328945.Spec : Prop :=
  ∀ n, P14132790121103328945.a n = A237357 n

theorem P14132790121103328945.correct : P14132790121103328945.Spec := by
  intro n
  simp only [A237357]

end A237357

/-!
# A237358: The number of tilings of the 3 X 4 X n room with 1 X 2 X 3 boxes.

The programs for A237358, there is no canonical definition to state claims against.
-/

/-! ## A237358.P3557863351819418424

`A141204(A192814(n+1))`
-/

namespace A237358.P3557863351819418424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141204 (A192814 (n + 1)).toNat

end

end A237358.P3557863351819418424

/-!
# A237359: a(n) is the largest integer that makes A237354(a(n))=n.

The programs for A237359, there is no canonical definition to state claims against.
-/

/-! ## A237359.P10966565617827125575

`A097882(((n+1)²+n)*a(n-1))` with `a(0)=2`
-/

namespace A237359.P10966565617827125575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A097882 (((n + 1) ^ 2 + n : ℤ) * a (n - 1)).toNat

end

end A237359.P10966565617827125575

/-! ## A237359.P14659429113888160427

`A255203(A008999(n))`
-/

namespace A237359.P14659429113888160427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255203 (A008999 n).toNat

end

end A237359.P14659429113888160427

/-!
# A237360: Numbers n of the form p^2+p+1 (for prime p) such that n^2+n+1 is also prime.

The programs for A237360, there is no canonical definition to state claims against.
-/

/-! ## A237360.P3523637796026140298

`A237366(n+1)+A237366(n+1)²+1`
-/

namespace A237360.P3523637796026140298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237366 (n + 1) + (A237366 (n + 1) ^ 2 + 1)

end

end A237360.P3523637796026140298

/-! ## A237360.P16582882063593464123

`A001001(A237366(1+n))`
-/

namespace A237360.P16582882063593464123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001001 (A237366 (1 + n)).toNat

end

end A237360.P16582882063593464123

/-! ## A237360.P18182421144244047256

`A002061(A237366(1+n)+1)`
-/

namespace A237360.P18182421144244047256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A237366 (1 + n) + 1).toNat

end

end A237360.P18182421144244047256

/-! ## A237360.P14146727391338356682

`A034111(A237366(1+n)-3)`
-/

namespace A237360.P14146727391338356682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034111 (A237366 (1 + n) - 3).toNat

end

end A237360.P14146727391338356682

/-!
# A237361: Numbers n of the form n = Phi_5(p) (for prime p) such that Phi_5(n) is also prime.

The programs for A237361, there is no canonical definition to state claims against.
-/

/-! ## A237361.P11223959717270423897

`A038992(A237445(n+1))`
-/

namespace A237361.P11223959717270423897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038992 (A237445 (n + 1)).toNat

end

end A237361.P11223959717270423897

/-! ## A237361.P8022379346622176983

`A053699(or(1, A237445(n+1)))`
-/

namespace A237361.P8022379346622176983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (Int.lor 1 (A237445 (n + 1))).toNat

end

end A237361.P8022379346622176983

/-!
# A237362: Nonzero Hilbert function values for the invariant ring of 3 X 3 X 3 X 3 tensors.

The programs for A237362, there is no canonical definition to state claims against.
-/

/-! ## A237362.P5084880035102724082

`∑[(n+1)!]-∑{p}[(2*n)!, #]`
-/

namespace A237362.P5084880035102724082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A237362.P5084880035102724082

/-!
# A237363: Number of partitions of n for which 2*(number of distinct parts) <= (number of parts).

The programs for A237363, there is no canonical definition to state claims against.
-/

/-! ## A237363.P3582331498892217613

`A360254(n)+A239959(n)`
-/

namespace A237363.P3582331498892217613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360254 n + A239959 n

end

end A237363.P3582331498892217613

/-! ## A237363.P7496018234571558836

`A000041(n)-A237365(n)`
-/

namespace A237363.P7496018234571558836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A237365 n

end

end A237363.P7496018234571558836

/-! ## A237363.P7797150898026615208

`sqrt(A001255(n))-A237365(n)`
-/

namespace A237363.P7797150898026615208
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A237365 n : ℝ)

end

end A237363.P7797150898026615208

/-! ## A237363.P17543765327797393138

`∑[A002865(n)]-A237365(n)`
-/

namespace A237363.P17543765327797393138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A237365 n

end

end A237363.P17543765327797393138

/-! ## A237363.P11600325337943825906

`A000065(n)+1-A237365(n)`
-/

namespace A237363.P11600325337943825906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A237365 n)

end

end A237363.P11600325337943825906

/-! ## A237363.P5854169054137721359

`A035363(2*n)-A237365(n)`
-/

namespace A237363.P5854169054137721359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A237365 n

end

end A237363.P5854169054137721359

/-! ## A237363.P4297098243355285054

`A133041(n)-(A237365(n)+n)`
-/

namespace A237363.P4297098243355285054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A237365 n + (n : ℤ))

end

end A237363.P4297098243355285054

/-! ## A237363.P16830003835649637088

`A035444(A008586(n))-A237365(n)`
-/

namespace A237363.P16830003835649637088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008586 n).toNat - A237365 n

end

end A237363.P16830003835649637088

/-! ## A237363.P12509258380674031368

`A026794(A000124(n))-A237365(n)`
-/

namespace A237363.P12509258380674031368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A000124 n).toNat - A237365 n

end

end A237363.P12509258380674031368

/-!
# A237365: Number of partitions of n for which 2*(number of distinct parts) > (number of parts).

The programs for A237365, there is no canonical definition to state claims against.
-/

/-! ## A237365.P10289479664132284217

`A000041(n)-A237363(n)`
-/

namespace A237365.P10289479664132284217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A237363 n

end

end A237365.P10289479664132284217

/-! ## A237365.P8986637450595159361

`A361394(n)-A239959(n)`
-/

namespace A237365.P8986637450595159361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361394 n - A239959 n

end

end A237365.P8986637450595159361

/-! ## A237365.P14489551097620076954

`∑[A002865(n)]-A237363(n)`
-/

namespace A237365.P14489551097620076954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A237363 n

end

end A237365.P14489551097620076954

/-! ## A237365.P3827746707014617940

`A000065(n)+1-A237363(n)`
-/

namespace A237365.P3827746707014617940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A237363 n)

end

end A237365.P3827746707014617940

/-! ## A237365.P2185017849467414754

`A035363(2*n)-A237363(n)`
-/

namespace A237365.P2185017849467414754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A237363 n

end

end A237365.P2185017849467414754

/-! ## A237365.P14464619135337215225

`A035444(A008586(n))-A237363(n)`
-/

namespace A237365.P14464619135337215225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008586 n).toNat - A237363 n

end

end A237365.P14464619135337215225

/-! ## A237365.P13257893528595052680

`A054225(∑[n])-A237363(n)`
-/

namespace A237365.P13257893528595052680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j) - A237363 n

end

end A237365.P13257893528595052680

/-! ## A237365.P1852365511805617435

`A330146(n)+A329976(n)-A237363(n)`
-/

namespace A237365.P1852365511805617435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330146 n + A329976 n - A237363 n

end

end A237365.P1852365511805617435

/-! ## A237365.P15801349735434307578

`A330147(n)+A241274(n)-A237363(n)`
-/

namespace A237365.P15801349735434307578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330147 n + A241274 n - A237363 n

end

end A237365.P15801349735434307578

/-!
# A237366: Primes p such that f(f(p)) is prime where f(x) = x^2+x+1.

The programs for A237366, there is no canonical definition to state claims against.
-/

/-! ## A237366.P13768718859214019620

`floor(sqrt(A237360(1+n)))`
-/

namespace A237366.P13768718859214019620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A237360 (1 + n))

end

end A237366.P13768718859214019620

/-!
# A237368: Number of (n+1)X(1+1) 0..2 arrays with the maximum plus the upper median plus the lower median plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237368, there is no canonical definition to state claims against.
-/

/-! ## A237368.P16853853670341169650

`A237375(∑[n]+1)`
-/

namespace A237368.P16853853670341169650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237368.P16853853670341169650

/-! ## A237368.P9668126474952578558

`record[A237375(A246276(n+1))]`
-/

namespace A237368.P9668126474952578558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237368.P9668126474952578558

/-! ## A237368.P755353981780940739

`record[A237375(A267104(n+1))]`
-/

namespace A237368.P755353981780940739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237368.P755353981780940739

/-! ## A237368.P14842275978790409319

`record[A010054(n)*A237375(n+1)]`
-/

namespace A237368.P14842275978790409319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237368.P14842275978790409319

/-!
# A237369: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the upper median plus the lower median plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237369, there is no canonical definition to state claims against.
-/

/-! ## A237369.P12664823549909858611

`A237375(∑[n+1]+2)`
-/

namespace A237369.P12664823549909858611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237369.P12664823549909858611

/-! ## A237369.P9497628867990882367

`record[A010054(n)*A237375(n+2)]`
-/

namespace A237369.P9497628867990882367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237375 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237369.P9497628867990882367

/-! ## A237369.P5687232347990080054

`record[A237375(n+3)/A051380(n)]`
-/

namespace A237369.P5687232347990080054
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237375 (n + 3) : ℚ) / (A051380 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237369.P5687232347990080054

/-! ## A237369.P16814297443703322488

`record[root(A237375(n+2), A074909(n))]`
-/

namespace A237369.P16814297443703322488
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237375 (n + 2) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237369.P16814297443703322488

/-! ## A237369.P5920097562198826284

`record[root(A237375(n+3), A004736(n+1))]`
-/

namespace A237369.P5920097562198826284
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237375 (n + 3) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237369.P5920097562198826284

/-!
# A237370: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the upper median plus the lower median plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237370, there is no canonical definition to state claims against.
-/

/-! ## A237370.P13718052779161888352

`A237375(∑[n+2]+4)`
-/

namespace A237370.P13718052779161888352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237370.P13718052779161888352

/-! ## A237370.P4916717686506982721

`record[root(A237375(n+4), A143494(n+2))]`
-/

namespace A237370.P4916717686506982721
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237375 (n + 4) : ℝ) ^ (1 / (A143494 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237370.P4916717686506982721

/-!
# A237371: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the upper median plus the lower median plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237371, there is no canonical definition to state claims against.
-/

/-! ## A237371.P5474598408024337632

`A237375(A374004(n+1))`
-/

namespace A237371.P5474598408024337632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (A374004 (n + 1)).toNat

end

end A237371.P5474598408024337632

/-! ## A237371.P784692550443438384

`A237375(A141214(n+1))`
-/

namespace A237371.P784692550443438384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (A141214 (n + 1)).toNat

end

end A237371.P784692550443438384

/-!
# A237372: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the upper median plus the lower median plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237372, there is no canonical definition to state claims against.
-/

/-! ## A237372.P2601443838623108410

`A237375(A374005(n+1))`
-/

namespace A237372.P2601443838623108410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (A374005 (n + 1)).toNat

end

end A237372.P2601443838623108410

/-!
# A237373: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the upper median plus the lower median plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237373, there is no canonical definition to state claims against.
-/

/-! ## A237373.P4274897784424402707

`A237375(A374007(n+1))`
-/

namespace A237373.P4274897784424402707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (A374007 (n + 1)).toNat

end

end A237373.P4274897784424402707

/-!
# A237374: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the upper median plus the lower median plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237374, there is no canonical definition to state claims against.
-/

/-! ## A237374.P16030181393161729682

`A237375(A374008(n+1))`
-/

namespace A237374.P16030181393161729682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (A374008 (n + 1)).toNat

end

end A237374.P16030181393161729682

/-!
# A237376: Number of (n+1)X(n+1) 0..2 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237376, there is no canonical definition to state claims against.
-/

/-! ## A237376.P8026372477767682739

`A237384(∑[4*n]+1)`
-/

namespace A237376.P8026372477767682739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237376.P8026372477767682739

/-! ## A237376.P9923072170425460288

`record[A237384(Δ[A235355(n)])]`
-/

namespace A237376.P9923072170425460288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237376.P9923072170425460288

/-! ## A237376.P13006635254881255868

`record[A237384(A330613(n+1))]`
-/

namespace A237376.P13006635254881255868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237376.P13006635254881255868

/-! ## A237376.P13321982652848081520

`record[gcd(A114327(n), A237384(n+1))]`
-/

namespace A237376.P13321982652848081520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A237384 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237376.P13321982652848081520

/-!
# A237377: Number of (n+1) X (1+1) 0..2 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237377, there is no canonical definition to state claims against.
-/

/-! ## A237377.P13855604137900192017

`A237384(∑[n]+1)`
-/

namespace A237377.P13855604137900192017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237377.P13855604137900192017

/-! ## A237377.P10811374738276466197

`record[A010054(n)*A237384(n+1)]`
-/

namespace A237377.P10811374738276466197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237377.P10811374738276466197

/-! ## A237377.P8497859106025780182

`record[A237384(n+1)/A022166(n)]`
-/

namespace A237377.P8497859106025780182
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237384 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237377.P8497859106025780182

/-! ## A237377.P2452144082214860735

`record[A237384(n+1)/A056941(n)]`
-/

namespace A237377.P2452144082214860735
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237384 (n + 1) : ℚ) / (A056941 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237377.P2452144082214860735

/-! ## A237377.P12461190201239028034

`record[root(A237384(n+1), A007318(n))]`
-/

namespace A237377.P12461190201239028034
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237384 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237377.P12461190201239028034

/-!
# A237378: Number of (n+1) X (2+1) 0..2 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237378, there is no canonical definition to state claims against.
-/

/-! ## A237378.P6470834517348878099

`A237384(∑[n+1]+2)`
-/

namespace A237378.P6470834517348878099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237378.P6470834517348878099

/-! ## A237378.P15520779547643981290

`record[A010054(n)*A237384(n+2)]`
-/

namespace A237378.P15520779547643981290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237384 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237378.P15520779547643981290

/-! ## A237378.P7186418576340442841

`record[A237384(abs(A201163(n)))]`
-/

namespace A237378.P7186418576340442841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237378.P7186418576340442841

/-! ## A237378.P5926397659200308291

`record[A237384(Δ[A003453(n+5)])]`
-/

namespace A237378.P5926397659200308291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237378.P5926397659200308291

/-! ## A237378.P18420921753178757533

`record[gcd(A008290(n+1), A237384(n+2))]`
-/

namespace A237378.P18420921753178757533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 (n + 1)) (A237384 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237378.P18420921753178757533

/-!
# A237379: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237379, there is no canonical definition to state claims against.
-/

/-! ## A237379.P5756151201339552671

`A237384(∑[n+2]+4)`
-/

namespace A237379.P5756151201339552671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237379.P5756151201339552671

/-!
# A237380: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237380, there is no canonical definition to state claims against.
-/

/-! ## A237380.P16248252493729233805

`A237384(A374004(n+1))`
-/

namespace A237380.P16248252493729233805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (A374004 (n + 1)).toNat

end

end A237380.P16248252493729233805

/-! ## A237380.P2236187831271767503

`A237384(A141214(n+1))`
-/

namespace A237380.P2236187831271767503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (A141214 (n + 1)).toNat

end

end A237380.P2236187831271767503

/-!
# A237381: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237381, there is no canonical definition to state claims against.
-/

/-! ## A237381.P347353540503466029

`A237384(A374005(n+1))`
-/

namespace A237381.P347353540503466029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (A374005 (n + 1)).toNat

end

end A237381.P347353540503466029

/-!
# A237382: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237382, there is no canonical definition to state claims against.
-/

/-! ## A237382.P11537155078276669185

`A237384(A374007(n+1))`
-/

namespace A237382.P11537155078276669185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (A374007 (n + 1)).toNat

end

end A237382.P11537155078276669185

/-!
# A237383: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237383, there is no canonical definition to state claims against.
-/

/-! ## A237383.P8734967182671770101

`A237384(A374008(n+1))`
-/

namespace A237383.P8734967182671770101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (A374008 (n + 1)).toNat

end

end A237383.P8734967182671770101

/-!
# A237384: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237384, there is no canonical definition to state claims against.
-/

/-! ## A237384.P3417302581006144471

`and(-A248872(n+1), A237249(n+1))`
-/

namespace A237384.P3417302581006144471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A248872 (n + 1)) (A237249 (n + 1))

end

end A237384.P3417302581006144471

/-!
# A237385: Number of (n+1)X(1+1) 0..2 arrays colored with the maximum plus the upper median minus the minimum of every 2X2 subblock.

The programs for A237385, there is no canonical definition to state claims against.
-/

/-! ## A237385.P15749743081912045626

`A237391(∑[n]+1)`
-/

namespace A237385.P15749743081912045626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237385.P15749743081912045626

/-! ## A237385.P7376477597747215915

`record[A237391(A056534(n+1))]`
-/

namespace A237385.P7376477597747215915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237385.P7376477597747215915

/-! ## A237385.P9081930384869249332

`record[A237391(A114091(n+1))]`
-/

namespace A237385.P9081930384869249332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237385.P9081930384869249332

/-! ## A237385.P15840515650585938247

`record[A237391(A246276(n+1))]`
-/

namespace A237385.P15840515650585938247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237385.P15840515650585938247

/-! ## A237385.P13612773813705195018

`record[A237391(A286234(n+1))]`
-/

namespace A237385.P13612773813705195018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (A286234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237385.P13612773813705195018

/-!
# A237386: Number of (n+1)X(2+1) 0..2 arrays colored with the maximum plus the upper median minus the minimum of every 2X2 subblock.

The programs for A237386, there is no canonical definition to state claims against.
-/

/-! ## A237386.P8778970521726602815

`A237391(∑[n+1]+2)`
-/

namespace A237386.P8778970521726602815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237386.P8778970521726602815

/-! ## A237386.P16559327486583040200

`record[lcm(Δ[round(sqrt(2*n))%2], A237391(n+2))]`
-/

namespace A237386.P16559327486583040200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f2 (n + 1) - f2 n) (A237391 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237386.P16559327486583040200

/-! ## A237386.P4621170023121903425

`record[A237391(A114091(n+1)+1)]`
-/

namespace A237386.P4621170023121903425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237386.P4621170023121903425

/-! ## A237386.P10266962921858872511

`record[A010054(n)*A237391(n+2)]`
-/

namespace A237386.P10266962921858872511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237391 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237386.P10266962921858872511

/-!
# A237387: Number of (n+1)X(3+1) 0..2 arrays colored with the maximum plus the upper median minus the minimum of every 2X2 subblock.

The programs for A237387, there is no canonical definition to state claims against.
-/

/-! ## A237387.P2733410604466973859

`A237391(∑[n+2]+4)`
-/

namespace A237387.P2733410604466973859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237387.P2733410604466973859

/-!
# A237388: Number of (n+1) X (4+1) 0..2 arrays colored with the maximum plus the upper median minus the minimum of every 2 X 2 subblock.

The programs for A237388, there is no canonical definition to state claims against.
-/

/-! ## A237388.P12230365410385500064

`A237391(A374004(n+1))`
-/

namespace A237388.P12230365410385500064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (A374004 (n + 1)).toNat

end

end A237388.P12230365410385500064

/-! ## A237388.P9638224976318402664

`A237391(A141214(n+1))`
-/

namespace A237388.P9638224976318402664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (A141214 (n + 1)).toNat

end

end A237388.P9638224976318402664

/-!
# A237389: Number of (n+1)X(5+1) 0..2 arrays colored with the maximum plus the upper median minus the minimum of every 2X2 subblock.

The programs for A237389, there is no canonical definition to state claims against.
-/

/-! ## A237389.P4272740596311571894

`A237391(A374005(n+1))`
-/

namespace A237389.P4272740596311571894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (A374005 (n + 1)).toNat

end

end A237389.P4272740596311571894

/-!
# A237390: Number of (n+1)X(6+1) 0..2 arrays colored with the maximum plus the upper median minus the minimum of every 2X2 subblock.

The programs for A237390, there is no canonical definition to state claims against.
-/

/-! ## A237390.P15775581938734581928

`A237391(∑[n+5]+16)`
-/

namespace A237390.P15775581938734581928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A237390.P15775581938734581928

/-!
# A237392: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237392, there is no canonical definition to state claims against.
-/

/-! ## A237392.P7116994507692562168

`A237398(∑[n]+1)`
-/

namespace A237392.P7116994507692562168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237392.P7116994507692562168

/-! ## A237392.P17591941640152326564

`record[A237398(Δ[A053436(n+1)])]`
-/

namespace A237392.P17591941640152326564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237392.P17591941640152326564

/-! ## A237392.P2274465286650451758

`record[gcd(A002262(n), A237398(n+1))]`
-/

namespace A237392.P2274465286650451758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237398 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237392.P2274465286650451758

/-!
# A237393: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237393, there is no canonical definition to state claims against.
-/

/-! ## A237393.P10273538758901563134

`A237398(∑[n+1]+2)`
-/

namespace A237393.P10273538758901563134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237393.P10273538758901563134

/-! ## A237393.P364480052719217459

`record[A237398(A008795(n)+2)]`
-/

namespace A237393.P364480052719217459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237393.P364480052719217459

/-! ## A237393.P6796335339708360486

`record[gcd(A002262(n), A237398(n+2))]`
-/

namespace A237393.P6796335339708360486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237398 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237393.P6796335339708360486

/-! ## A237393.P162228028549108215

`record[A237398(Δ[A053436(n+1)]+1)]`
-/

namespace A237393.P162228028549108215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237393.P162228028549108215

/-!
# A237394: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237394, there is no canonical definition to state claims against.
-/

/-! ## A237394.P16800776957421851092

`A237398(∑[n+2]+4)`
-/

namespace A237394.P16800776957421851092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237394.P16800776957421851092

/-! ## A237394.P8289471982471180325

`record[A237398(A008795(n)+3)]`
-/

namespace A237394.P8289471982471180325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237394.P8289471982471180325

/-! ## A237394.P18154799080894253082

`record[A237398(A198467(n+1)+3)]`
-/

namespace A237394.P18154799080894253082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (A198467 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237394.P18154799080894253082

/-!
# A237395: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237395, there is no canonical definition to state claims against.
-/

/-! ## A237395.P10581241307525259592

`A237398(A052905(n)+9)`
-/

namespace A237395.P10581241307525259592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (A052905 n + 9).toNat

end

end A237395.P10581241307525259592

/-! ## A237395.P13644161163521223156

`A237398(A141214(n+1))`
-/

namespace A237395.P13644161163521223156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (A141214 (n + 1)).toNat

end

end A237395.P13644161163521223156

/-!
# A237396: Number of (n+1) X (5+1) 0..3 arrays with the maximum plus the upper median minus the lower median of every 2 X 2 subblock equal.

The programs for A237396, there is no canonical definition to state claims against.
-/

/-! ## A237396.P12248110962810850965

`A237398(A167499(n+3))`
-/

namespace A237396.P12248110962810850965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (A167499 (n + 3)).toNat

end

end A237396.P12248110962810850965

/-! ## A237396.P13599570855181279974

`A237398(A374005(n+1))`
-/

namespace A237396.P13599570855181279974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (A374005 (n + 1)).toNat

end

end A237396.P13599570855181279974

/-!
# A237397: Number of (n+1)X(6+1) 0..3 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237397, there is no canonical definition to state claims against.
-/

/-! ## A237397.P14521087039518381418

`A237398(A374007(n+1))`
-/

namespace A237397.P14521087039518381418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (A374007 (n + 1)).toNat

end

end A237397.P14521087039518381418

/-!
# A237399: Number of (n+1) X (1+1) 0..3 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237399, there is no canonical definition to state claims against.
-/

/-! ## A237399.P11570836768145992611

`A237403(1+∑[n])`
-/

namespace A237399.P11570836768145992611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237403 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A237399.P11570836768145992611

/-! ## A237399.P17405087072312616937

`record[A237403(A056534(n+1))]`
-/

namespace A237399.P17405087072312616937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237403 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237399.P17405087072312616937

/-! ## A237399.P3366952114512246510

`record[A237403(A256095(n)+1)]`
-/

namespace A237399.P3366952114512246510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237403 (A256095 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237399.P3366952114512246510

/-! ## A237399.P3292487431904118021

`record[A010054(n)*A237403(n+1)]`
-/

namespace A237399.P3292487431904118021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237399.P3292487431904118021

