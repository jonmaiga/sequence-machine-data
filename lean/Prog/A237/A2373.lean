import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
import Seq.B010.C000
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

/-! ## A237303.P13704247152922231528

`lcm(A033999(n), A237308(A167614(n+1)))`
-/

namespace A237303.P13704247152922231528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A237308 (A167614 (n + 1)).toNat)

end

end A237303.P13704247152922231528

/-! ## A237303.P17583405039333455428

`or(A000038(n), A237308(A167614(n+1)))`
-/

namespace A237303.P17583405039333455428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A237308 (A167614 (n + 1)).toNat)

end

end A237303.P17583405039333455428

/-! ## A237303.P9477119456497254933

`A237308(A167614(n+1))%A237305(n+1)`
-/

namespace A237303.P9477119456497254933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237308 (A167614 (n + 1)).toNat) (A237305 (n + 1))

end

end A237303.P9477119456497254933

/-! ## A237303.P4199053989402253246

`A237308(A167614(n+1))+A000038(3*n+1)`
-/

namespace A237303.P4199053989402253246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237308 (A167614 (n + 1)).toNat + A000038 (3 * n + 1)

end

end A237303.P4199053989402253246

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

/-! ## A237304.P4679822365424072819

`A237308(A166136(n+2)-2)`
-/

namespace A237304.P4679822365424072819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237308 (A166136 (n + 2) - 2).toNat

end

end A237304.P4679822365424072819

/-! ## A237304.P5278917868785608939

`A237308(A166136(n+1)+1+n)`
-/

namespace A237304.P5278917868785608939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237308 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A237304.P5278917868785608939

/-! ## A237304.P2617339661482109990

`A237308(A141214(n+1))`
-/

namespace A237304.P2617339661482109990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237308 (A141214 (n + 1)).toNat

end

end A237304.P2617339661482109990

/-! ## A237304.P15195262938254564950

`A237308(A374004(n+1))`
-/

namespace A237304.P15195262938254564950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237308 (A374004 (n + 1)).toNat

end

end A237304.P15195262938254564950

/-!
# A237305: Number of (n+1)X(5+1) 0..2 arrays with the upper median of every 2X2 subblock equal.

The programs for A237305, there is no canonical definition to state claims against.
-/

/-! ## A237305.P15748624482263241065

`A237308(A056000(n)+15)`
-/

namespace A237305.P15748624482263241065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237308 (A056000 n + 15).toNat

end

end A237305.P15748624482263241065

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

/-! ## A237306.P14248864651262246970

`A237308(eq[8, A185782(n+1)])`
-/

namespace A237306.P14248864651262246970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237306.P14248864651262246970

/-! ## A237306.P2196715131044076967

`A237308(Δ[Δ[A006504(n+1)]])`
-/

namespace A237306.P2196715131044076967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237308 (f1 (n + 1) - f1 n).toNat

end

end A237306.P2196715131044076967

/-! ## A237306.P6571436730402554239

`A237308(Δ[A026054(n+3)]+1)`
-/

namespace A237306.P6571436730402554239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237308 (f1 (n + 1) - f1 n + 1).toNat

end

end A237306.P6571436730402554239

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

/-! ## A237309.P13189962274322926344

`lcm(2, A237315(A000124(n)))`
-/

namespace A237309.P13189962274322926344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237315 (A000124 n).toNat)

end

end A237309.P13189962274322926344

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

/-! ## A237310.P1674308250142115172

`A237315(A134189(n+2))+A025469(n)`
-/

namespace A237310.P1674308250142115172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (A134189 (n + 2)).toNat + A025469 n

end

end A237310.P1674308250142115172

/-! ## A237310.P14778649991333158515

`A237315(A134189(n+2))/A014878(n)`
-/

namespace A237310.P14778649991333158515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237315 (A134189 (n + 2)).toNat : ℚ) / (A014878 n : ℚ)

end

end A237310.P14778649991333158515

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

/-! ## A237311.P9920576510444439326

`A237315(A167614(n+1))+A025437(n)`
-/

namespace A237311.P9920576510444439326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (A167614 (n + 1)).toNat + A025437 n

end

end A237311.P9920576510444439326

/-! ## A237311.P6304580234765448456

`A237315(A167614(n+1))+A064459(n)`
-/

namespace A237311.P6304580234765448456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (A167614 (n + 1)).toNat + A064459 n

end

end A237311.P6304580234765448456

/-! ## A237311.P3829462655943106099

`A237315(A167614(n+1))+A107846(n)`
-/

namespace A237311.P3829462655943106099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (A167614 (n + 1)).toNat + A107846 n

end

end A237311.P3829462655943106099

/-! ## A237311.P15608824012897515761

`A237315(A167614(n+1))*A287384(n)`
-/

namespace A237311.P15608824012897515761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (A167614 (n + 1)).toNat * A287384 n

end

end A237311.P15608824012897515761

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

/-! ## A237312.P649374033739118169

`A237315(A141214(n)+7)`
-/

namespace A237312.P649374033739118169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (A141214 n + 7).toNat

end

end A237312.P649374033739118169

/-! ## A237312.P7778377212337180506

`A237315(A052905(n)+9)`
-/

namespace A237312.P7778377212337180506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (A052905 n + 9).toNat

end

end A237312.P7778377212337180506

/-! ## A237312.P12062775987220993709

`A237315(A055999(n)+10)`
-/

namespace A237312.P12062775987220993709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (A055999 n + 10).toNat

end

end A237312.P12062775987220993709

/-! ## A237312.P2957112131820787239

`A237315(A167614(n+2)+1)`
-/

namespace A237312.P2957112131820787239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (A167614 (n + 2) + 1).toNat

end

end A237312.P2957112131820787239

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

/-! ## A237313.P11681130507759750149

`A237315(A155212(n)+13)`
-/

namespace A237313.P11681130507759750149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (A155212 n + 13).toNat

end

end A237313.P11681130507759750149

/-! ## A237313.P16496659609393143321

`A237315(A056000(n)+15)`
-/

namespace A237313.P16496659609393143321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (A056000 n + 15).toNat

end

end A237313.P16496659609393143321

/-! ## A237313.P15062018283226724502

`A237315(eq[7, A066657(n)])`
-/

namespace A237313.P15062018283226724502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237313.P15062018283226724502

/-! ## A237313.P16539157375693059846

`A237315(A052905(n+1)+10)`
-/

namespace A237313.P16539157375693059846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (A052905 (n + 1) + 10).toNat

end

end A237313.P16539157375693059846

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

/-! ## A237314.P12765851705304021057

`A237315(eq[7, A131818(n+1)])`
-/

namespace A237314.P12765851705304021057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237314.P12765851705304021057

/-! ## A237314.P11466122759174389377

`A237315(A052905(n+3))`
-/

namespace A237314.P11466122759174389377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237315 (A052905 (n + 3)).toNat

end

end A237314.P11466122759174389377

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

/-! ## A237317.P21494105113916018

`lcm(A016116(n), A237324(A000124(n)))`
-/

namespace A237317.P21494105113916018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016116 n) (A237324 (A000124 n).toNat)

end

end A237317.P21494105113916018

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

/-! ## A237319.P16350016922439647484

`lcm(2, A237324(A167614(n+1)))`
-/

namespace A237319.P16350016922439647484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237324 (A167614 (n + 1)).toNat)

end

end A237319.P16350016922439647484

/-! ## A237319.P5827236839982457449

`A237324(A167614(n+1))+A034563(n+1)`
-/

namespace A237319.P5827236839982457449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (A167614 (n + 1)).toNat + A034563 (n + 1)

end

end A237319.P5827236839982457449

/-! ## A237319.P9462651527361218458

`A237324(A167614(n+1))%A237320(n+1)`
-/

namespace A237319.P9462651527361218458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237324 (A167614 (n + 1)).toNat) (A237320 (n + 1))

end

end A237319.P9462651527361218458

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

/-! ## A237320.P3900091471499208759

`A237324(A052905(n)+9)`
-/

namespace A237320.P3900091471499208759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (A052905 n + 9).toNat

end

end A237320.P3900091471499208759

/-! ## A237320.P11373622162499779615

`A237324(A167614(n+2)+1)`
-/

namespace A237320.P11373622162499779615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (A167614 (n + 2) + 1).toNat

end

end A237320.P11373622162499779615

/-! ## A237320.P5751903240571728385

`A237324(Δ[A264443(n)-n²])`
-/

namespace A237320.P5751903240571728385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (f1 (n + 1) - f1 n).toNat

end

end A237320.P5751903240571728385

/-! ## A237320.P9922690891615424857

`A237324(Δ[A023545(n+1)-n²])`
-/

namespace A237320.P9922690891615424857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (f1 (n + 1) - f1 n).toNat

end

end A237320.P9922690891615424857

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

/-! ## A237321.P10135006852233616393

`A237324(A155212(n)+13)`
-/

namespace A237321.P10135006852233616393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (A155212 n + 13).toNat

end

end A237321.P10135006852233616393

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

/-! ## A237321.P852941509188547671

`A237324(eq[4, A193592(n)])`
-/

namespace A237321.P852941509188547671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237321.P852941509188547671

/-! ## A237321.P12812273661761315250

`A237324(Δ[A023545(n+1)])`
-/

namespace A237321.P12812273661761315250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (f1 (n + 1) - f1 n).toNat

end

end A237321.P12812273661761315250

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

/-! ## A237322.P17163067183370007822

`A237324(eq[3, A219347(n)])`
-/

namespace A237322.P17163067183370007822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237322.P17163067183370007822

/-! ## A237322.P2878497571031352168

`A237324(eq[5, A193592(n)])`
-/

namespace A237322.P2878497571031352168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237322.P2878497571031352168

/-! ## A237322.P2414345704112459904

`A237324(eq[6, A200370(n+1)])`
-/

namespace A237322.P2414345704112459904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237322.P2414345704112459904

/-! ## A237322.P15205996791148818804

`A237324(eq[8, A185782(n+1)])`
-/

namespace A237322.P15205996791148818804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237322.P15205996791148818804

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

/-! ## A237323.P3094920764077466301

`A237324(A034856(n+5)+9)`
-/

namespace A237323.P3094920764077466301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (A034856 (n + 5) + 9).toNat

end

end A237323.P3094920764077466301

/-! ## A237323.P2379184069124390747

`A237324(eq[8, A131818(n+1)])`
-/

namespace A237323.P2379184069124390747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237323.P2379184069124390747

/-! ## A237323.P15778861359368122779

`A237324(eq[4, A219347(n)])`
-/

namespace A237323.P15778861359368122779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237323.P15778861359368122779

/-! ## A237323.P16154329295657623687

`A237324(eq[6, A193592(n)])`
-/

namespace A237323.P16154329295657623687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237323.P16154329295657623687

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

/-! ## A237327.P8933363340268954639

`lcm(2, A237332(A167614(n+1)))`
-/

namespace A237327.P8933363340268954639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237332 (A167614 (n + 1)).toNat)

end

end A237327.P8933363340268954639

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

/-! ## A237327.P6908499355440763910

`A237332(A167614(n+1))+A184955(n)`
-/

namespace A237327.P6908499355440763910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (A167614 (n + 1)).toNat + A184955 n

end

end A237327.P6908499355440763910

/-! ## A237327.P9918190835028760996

`A237332(A167614(n+1))+A185284(n)`
-/

namespace A237327.P9918190835028760996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (A167614 (n + 1)).toNat + A185284 n

end

end A237327.P9918190835028760996

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

/-! ## A237329.P8901405941046127988

`A237332(A155212(n)+13)`
-/

namespace A237329.P8901405941046127988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (A155212 n + 13).toNat

end

end A237329.P8901405941046127988

/-! ## A237329.P3513719914440488160

`A237332(A056000(n)+15)`
-/

namespace A237329.P3513719914440488160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (A056000 n + 15).toNat

end

end A237329.P3513719914440488160

/-! ## A237329.P5445719149124664749

`A237332(eq[7, A066657(n)])`
-/

namespace A237329.P5445719149124664749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237329.P5445719149124664749

/-! ## A237329.P762591046776498013

`A237332(A167614(n+3)+2)`
-/

namespace A237329.P762591046776498013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (A167614 (n + 3) + 2).toNat

end

end A237329.P762591046776498013

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

/-! ## A237330.P8891872439563489520

`A237332(A166136(n+4))`
-/

namespace A237330.P8891872439563489520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (A166136 (n + 4)).toNat

end

end A237330.P8891872439563489520

/-! ## A237330.P11506801725276405395

`A237332(A056115(n)+21)`
-/

namespace A237330.P11506801725276405395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (A056115 n + 21).toNat

end

end A237330.P11506801725276405395

/-! ## A237330.P10920717211575652432

`A237332(A167614(n+4)+3)`
-/

namespace A237330.P10920717211575652432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (A167614 (n + 4) + 3).toNat

end

end A237330.P10920717211575652432

/-! ## A237330.P1847980816563850971

`A237332(A000124(n+5)+5)`
-/

namespace A237330.P1847980816563850971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (A000124 (n + 5) + 5).toNat

end

end A237330.P1847980816563850971

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

/-! ## A237331.P8010165924588475044

`A237332(A302537(n)+27)`
-/

namespace A237331.P8010165924588475044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (A302537 n + 27).toNat

end

end A237331.P8010165924588475044

/-! ## A237331.P9613247048821989835

`A237332(A056119(n)+28)`
-/

namespace A237331.P9613247048821989835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (A056119 n + 28).toNat

end

end A237331.P9613247048821989835

/-! ## A237331.P11066669015498635274

`A237332(eq[11, A066657(n)])`
-/

namespace A237331.P11066669015498635274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237331.P11066669015498635274

/-! ## A237331.P8628572178492946134

`A237332(A167614(n+5)+4)`
-/

namespace A237331.P8628572178492946134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237332 (A167614 (n + 5) + 4).toNat

end

end A237331.P8628572178492946134

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

/-! ## A237333.P14450263572909646525

`A237340(A000124(n))+A085974(n+1)`
-/

namespace A237333.P14450263572909646525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237340 (A000124 n).toNat + A085974 (n + 1)

end

end A237333.P14450263572909646525

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

/-! ## A237334.P5648189472442563627

`A297241(n+2)+A237340(A000096(n+1))`
-/

namespace A237334.P5648189472442563627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297241 (n + 2) + A237340 (A000096 (n + 1)).toNat

end

end A237334.P5648189472442563627

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

/-! ## A237335.P9852215307678795354

`lcm(2, A237340(A167614(n+1)))`
-/

namespace A237335.P9852215307678795354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237340 (A167614 (n + 1)).toNat)

end

end A237335.P9852215307678795354

/-! ## A237335.P9672326553134836414

`A237340(A167614(n+1))*A287384(n)`
-/

namespace A237335.P9672326553134836414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237340 (A167614 (n + 1)).toNat * A287384 n

end

end A237335.P9672326553134836414

/-! ## A237335.P10631005187638917429

`A237340(A167614(n+1))+A101637(n+1)`
-/

namespace A237335.P10631005187638917429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237340 (A167614 (n + 1)).toNat + A101637 (n + 1)

end

end A237335.P10631005187638917429

/-! ## A237335.P14019835531673923630

`A237340(A167614(n+1))%A237313(n+1)`
-/

namespace A237335.P14019835531673923630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237340 (A167614 (n + 1)).toNat) (A237313 (n + 1))

end

end A237335.P14019835531673923630

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

/-! ## A237336.P18318162316601076762

`A237340(A167614(n+2)+1)`
-/

namespace A237336.P18318162316601076762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237340 (A167614 (n + 2) + 1).toNat

end

end A237336.P18318162316601076762

/-! ## A237336.P14738610694629970621

`A237340(A027379(n+2))`
-/

namespace A237336.P14738610694629970621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237340 (A027379 (n + 2)).toNat

end

end A237336.P14738610694629970621

/-! ## A237336.P17229565165371665531

`A237340(A052905(n)+n+6)`
-/

namespace A237336.P17229565165371665531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237340 (A052905 n + (n + 6 : ℤ)).toNat

end

end A237336.P17229565165371665531

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
# A237343: For k in {2,3,...,9} define a sequence as follows: a(0)=0; for n>=0, a(n+1)=a(n)+1, unless a(n) ends in k, in which case a(n+1) is obtained by replacing the last digit of a(n) with the digit(s) of k^2. This is k(6).

The programs for A237343, there is no canonical definition to state claims against.
-/

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

The programs for A237345, there is no canonical definition to state claims against.
-/

/-! ## A237345.P4535118059138567313

`A004859(A077168(n))`
-/

namespace A237345.P4535118059138567313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (A077168 n).toNat

end

end A237345.P4535118059138567313

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

The programs for A237347, the canonical program `A237347.P11476891004590443588` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237347 has offset 1).

The definition of A237347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237347.P14520113210806995509

`Δ[ceil(2*sqrt(n+1))]+2`
-/

namespace A237347.P14520113210806995509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A237347.P14520113210806995509

namespace A237347

/-- `Δ[ceil(2*sqrt(n+1))]+2` -/
def P14520113210806995509.Spec : Prop :=
  ∀ n, P14520113210806995509.a n = A237347 (n + 1)

end A237347

/-! ## A237347.P15749997287535027442

`or(2, char[floor((n/2)²+n)])`
-/

namespace A237347.P15749997287535027442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2 + (n : ℚ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A237347.P15749997287535027442

namespace A237347

/-- `or(2, char[floor((n/2)²+n)])` -/
def P15749997287535027442.Spec : Prop :=
  ∀ n, (P15749997287535027442.a n : ℤ) = A237347 (n + 1)

end A237347

/-! ## A237347.P11476891004590443588

`xor(2, Δ[floor(sqrt(2*(2*n+1)))%(n+2)])`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A237347

/-- `xor(2, Δ[floor(sqrt(2*(2*n+1)))%(n+2)])` -/
def P11476891004590443588.Spec : Prop :=
  ∀ n, P11476891004590443588.a n = A237347 (n + 1)

theorem P11476891004590443588.correct : P11476891004590443588.Spec := by
  intro n
  simp only [A237347, Nat.add_sub_cancel]

end A237347

/-! ## A237347.P16516077014290010873

`xor(2, Δ[A000267(n)])`
-/

namespace A237347.P16516077014290010873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (f1 (n + 1) - f1 n)

end

end A237347.P16516077014290010873

namespace A237347

/-- `xor(2, Δ[A000267(n)])` -/
def P16516077014290010873.Spec : Prop :=
  ∀ n, P16516077014290010873.a n = A237347 (n + 1)

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

/-! ## A237347.P1849315635744101258

`xor(2, char[A024206(n+1)])`
-/

namespace A237347.P1849315635744101258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A237347.P1849315635744101258

namespace A237347

/-- `xor(2, char[A024206(n+1)])` -/
def P1849315635744101258.Spec : Prop :=
  ∀ n, (P1849315635744101258.a n : ℤ) = A237347 (n + 1)

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

/-! ## A237347.P3634167798232699295

`A000267(A000267(n+1)-A055086(n))`
-/

namespace A237347.P3634167798232699295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A000267 (n + 1) - A055086 n).toNat

end

end A237347.P3634167798232699295

namespace A237347

/-- `A000267(A000267(n+1)-A055086(n))` -/
def P3634167798232699295.Spec : Prop :=
  ∀ n, P3634167798232699295.a n = A237347 (n + 1)

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

/-! ## A237347.P8869390609444325105

`Δ[A078633(n+1)]`
-/

namespace A237347.P8869390609444325105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237347.P8869390609444325105

namespace A237347

/-- `Δ[A078633(n+1)]` -/
def P8869390609444325105.Spec : Prop :=
  ∀ n, P8869390609444325105.a n = A237347 (n + 1)

end A237347

/-! ## A237347.P14183937092631150272

`Δ[A055086(n)+Δ[n²]]`
-/

namespace A237347.P14183937092631150272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237347.P14183937092631150272

namespace A237347

/-- `Δ[A055086(n)+Δ[n²]]` -/
def P14183937092631150272.Spec : Prop :=
  ∀ n, P14183937092631150272.a n = A237347 (n + 1)

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

/-! ## A237348.P14342581282833861696

`A080356(((A000040(n+2)^6)%A000040(n+1))%A247579(n+2))`
-/

namespace A237348.P14342581282833861696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080356 (Int.tmod (Int.tmod (A000040 (n + 2) ^ 6) (A000040 (n + 1))) (A247579 (n + 2))).toNat

end

end A237348.P14342581282833861696

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

/-!
# A237349: a(n) = Sum_{i=1..n} ( Product_{k|i} d(k) ), where d(n) = A000005(n).

The programs for A237349, the canonical program `A237349.P13854550475832125326` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237349 has offset 1).

The definition of A237349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237349.P13854550475832125326

`∑[A211776(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A237349

/-- `∑[A211776(n+1)]` -/
def P13854550475832125326.Spec : Prop :=
  ∀ n, P13854550475832125326.a n = A237349 (n + 1)

theorem P13854550475832125326.correct : P13854550475832125326.Spec := by
  intro n
  simp only [A237349, Nat.add_sub_cancel]

end A237349

/-! ## A237349.P15989247714476243633

`∑[∏{d}[n+1, A000005(#)]]`
-/

namespace A237349.P15989247714476243633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A000005 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237349.P15989247714476243633

namespace A237349

/-- `∑[∏{d}[n+1, A000005(#)]]` -/
def P15989247714476243633.Spec : Prop :=
  ∀ n, P15989247714476243633.a n = A237349 (n + 1)

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

/-! ## A237351.P11325291238850276117

`A135997(∩[A008619(3*n)+1, A243172(n+1)])`
-/

namespace A237351.P11325291238850276117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (3 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243172 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A237351.P11325291238850276117

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

/-! ## A237353.P5145723907967474660

`A001221(A304233(n+1))`
-/

namespace A237353.P5145723907967474660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A304233 (n + 1)).toNat

end

end A237353.P5145723907967474660

namespace A237353

/-- `A001221(A304233(n+1))` -/
def P5145723907967474660.Spec : Prop :=
  ∀ n, P5145723907967474660.a n = A237353 (n + 2)

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

/-! ## A237353.P764886645678998518

`A168607(n)%A287841(n+1)`
-/

namespace A237353.P764886645678998518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168607 n) (A287841 (n + 1))

end

end A237353.P764886645678998518

namespace A237353

/-- `A168607(n)%A287841(n+1)` -/
def P764886645678998518.Spec : Prop :=
  ∀ n, P764886645678998518.a n = A237353 (n + 2)

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

The programs for A237357, there is no canonical definition to state claims against.
-/

/-! ## A237357.P14996428021848600793

`A302338(2*a(n-2)+3*a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A237357.P14996428021848600793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A302338 (2 * a (n - 2) + 3 * a (n - 1)).toNat

end

end A237357.P14996428021848600793

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

/-! ## A237360.P13327259143344666837

`A001001(A237366(n+1))`
-/

namespace A237360.P13327259143344666837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001001 (A237366 (n + 1)).toNat

end

end A237360.P13327259143344666837

/-! ## A237360.P812878878846303727

`A002061(A237366(n+1)+1)`
-/

namespace A237360.P812878878846303727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A237366 (n + 1) + 1).toNat

end

end A237360.P812878878846303727

/-! ## A237360.P518165057603122539

`A034111(A237366(n+1)-3)`
-/

namespace A237360.P518165057603122539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034111 (A237366 (n + 1) - 3).toNat

end

end A237360.P518165057603122539

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

/-! ## A237362.P7347537392822120519

`A350844(∑[A315125(n)])`
-/

namespace A237362.P7347537392822120519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350844 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A237362.P7347537392822120519

/-!
# A237363: Number of partitions of n for which 2*(number of distinct parts) <= (number of parts).

The programs for A237363, there is no canonical definition to state claims against.
-/

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

/-! ## A237363.P3582331498892217613

`A360254(n)+A239959(n)`
-/

namespace A237363.P3582331498892217613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360254 n + A239959 n

end

end A237363.P3582331498892217613

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

/-!
# A237366: Primes p such that f(f(p)) is prime where f(x) = x^2+x+1.

The programs for A237366, there is no canonical definition to state claims against.
-/

/-! ## A237366.P6382103940756778429

`floor(sqrt(A237360(n+1)))`
-/

namespace A237366.P6382103940756778429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A237360 (n + 1))

end

end A237366.P6382103940756778429

/-! ## A237366.P15363456700633313676

`A006530(ceil(sqrt(A237360(n+1)))-1)`
-/

namespace A237366.P15363456700633313676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (⌈Real.sqrt (A237360 (n + 1) : ℝ)⌉ - 1).toNat

end

end A237366.P15363456700633313676

/-! ## A237366.P2622256354278319724

`A020639(ceil(sqrt(A237360(n+1)))-1)`
-/

namespace A237366.P2622256354278319724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (⌈Real.sqrt (A237360 (n + 1) : ℝ)⌉ - 1).toNat

end

end A237366.P2622256354278319724

/-! ## A237366.P3576616322512746254

`A014963(ceil(sqrt(A237360(n+1)))-1)`
-/

namespace A237366.P3576616322512746254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (⌈Real.sqrt (A237360 (n + 1) : ℝ)⌉ - 1).toNat

end

end A237366.P3576616322512746254

/-! ## A237366.P16180155637212806597

`A014963(round(sqrt(A237360(n+1)-1)))`
-/

namespace A237366.P16180155637212806597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (Real.sqrt (A237360 (n + 1) - 1 : ℝ))).toNat

end

end A237366.P16180155637212806597

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

/-! ## A237368.P851270490026297933

`A237375(A000124(n))+char[15]`
-/

namespace A237368.P851270490026297933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237368.P851270490026297933

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

/-! ## A237370.P17471445637056974235

`lcm(2, A237375(A167614(n+1)))`
-/

namespace A237370.P17471445637056974235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237375 (A167614 (n + 1)).toNat)

end

end A237370.P17471445637056974235

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

/-! ## A237370.P2565105988341461696

`A014568(n)*A237375(A167614(n+1))`
-/

namespace A237370.P2565105988341461696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014568 n * A237375 (A167614 (n + 1)).toNat

end

end A237370.P2565105988341461696

/-! ## A237370.P16476056017463020286

`A237375(A167614(n+1))%A017336(n)`
-/

namespace A237370.P16476056017463020286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237375 (A167614 (n + 1)).toNat) (A017336 n)

end

end A237370.P16476056017463020286

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

/-! ## A237371.P13590887787749443951

`A237375(A141214(n)+7)`
-/

namespace A237371.P13590887787749443951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (A141214 n + 7).toNat

end

end A237371.P13590887787749443951

/-! ## A237371.P2175121526304540789

`A237375(A052905(n)+9)`
-/

namespace A237371.P2175121526304540789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (A052905 n + 9).toNat

end

end A237371.P2175121526304540789

/-! ## A237371.P16552843943913883900

`A237375(A055999(n)+10)`
-/

namespace A237371.P16552843943913883900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (A055999 n + 10).toNat

end

end A237371.P16552843943913883900

/-! ## A237371.P6931272120094799783

`A237375(eq[5, A066657(n)])`
-/

namespace A237371.P6931272120094799783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237371.P6931272120094799783

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

/-! ## A237372.P16608061872064117057

`A237375(A167499(3+n))`
-/

namespace A237372.P16608061872064117057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (A167499 (3 + n)).toNat

end

end A237372.P16608061872064117057

/-! ## A237372.P15839208395931732402

`A237375(A155212(n)+13)`
-/

namespace A237372.P15839208395931732402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (A155212 n + 13).toNat

end

end A237372.P15839208395931732402

/-! ## A237372.P13564915312856101909

`A237375(A056000(n)+15)`
-/

namespace A237372.P13564915312856101909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (A056000 n + 15).toNat

end

end A237372.P13564915312856101909

/-! ## A237372.P217122958442884448

`A237375(eq[7, A066657(n)])`
-/

namespace A237372.P217122958442884448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237372.P217122958442884448

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

/-! ## A237373.P4045271475790094572

`A237375(A166136(n+4))`
-/

namespace A237373.P4045271475790094572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (A166136 (n + 4)).toNat

end

end A237373.P4045271475790094572

/-! ## A237373.P2438434558420060386

`A237375(A167499(n+4)+1)`
-/

namespace A237373.P2438434558420060386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (A167499 (n + 4) + 1).toNat

end

end A237373.P2438434558420060386

/-! ## A237373.P14320440667345506696

`A237375(A000217(n+5)+6)`
-/

namespace A237373.P14320440667345506696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (A000217 (n + 5) + 6).toNat

end

end A237373.P14320440667345506696

/-! ## A237373.P17879089726871578461

`A237375(eq[7, A131818(n+1)])`
-/

namespace A237373.P17879089726871578461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237373.P17879089726871578461

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

/-! ## A237374.P5664006591489665674

`A237375(eq[11, A066657(n)])`
-/

namespace A237374.P5664006591489665674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237374.P5664006591489665674

/-! ## A237374.P8710094304206337818

`A237375(A141214(n+3)+10)`
-/

namespace A237374.P8710094304206337818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (A141214 (n + 3) + 10).toNat

end

end A237374.P8710094304206337818

/-! ## A237374.P7417437010410725626

`A237375(eq[8, A131818(n+1)])`
-/

namespace A237374.P7417437010410725626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237374.P7417437010410725626

/-! ## A237374.P17283295424124019717

`A237375(A167614(n+6)-(n+3))`
-/

namespace A237374.P17283295424124019717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237375 (A167614 (n + 6) - (n + 3 : ℤ)).toNat

end

end A237374.P17283295424124019717

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

/-! ## A237379.P218383362892451148

`lcm(2, A237384(A167614(n+1)))`
-/

namespace A237379.P218383362892451148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237384 (A167614 (n + 1)).toNat)

end

end A237379.P218383362892451148

/-! ## A237379.P4595626562868011332

`A069291(n+1)*A237384(A167614(n+1))`
-/

namespace A237379.P4595626562868011332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069291 (n + 1) * A237384 (A167614 (n + 1)).toNat

end

end A237379.P4595626562868011332

/-! ## A237379.P3078228326592340214

`A117358(n+1)*A237384(A167614(n+1))`
-/

namespace A237379.P3078228326592340214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (n + 1) * A237384 (A167614 (n + 1)).toNat

end

end A237379.P3078228326592340214

/-! ## A237379.P8591770205873996753

`A237384(A167614(n+1))%A237245(n+1)`
-/

namespace A237379.P8591770205873996753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237384 (A167614 (n + 1)).toNat) (A237245 (n + 1))

end

end A237379.P8591770205873996753

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

/-! ## A237380.P17055276551739785337

`A237384(A141214(n)+7)`
-/

namespace A237380.P17055276551739785337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (A141214 n + 7).toNat

end

end A237380.P17055276551739785337

/-! ## A237380.P789156927627301129

`A237384(A052905(n)+9)`
-/

namespace A237380.P789156927627301129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (A052905 n + 9).toNat

end

end A237380.P789156927627301129

/-! ## A237380.P5397452988107723795

`A237384(A055999(n)+10)`
-/

namespace A237380.P5397452988107723795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (A055999 n + 10).toNat

end

end A237380.P5397452988107723795

/-! ## A237380.P17281023144081091028

`A237384(A167614(n+2)+1)`
-/

namespace A237380.P17281023144081091028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (A167614 (n + 2) + 1).toNat

end

end A237380.P17281023144081091028

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

/-! ## A237381.P11354442976944905425

`A237384(A155212(n)+13)`
-/

namespace A237381.P11354442976944905425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (A155212 n + 13).toNat

end

end A237381.P11354442976944905425

/-! ## A237381.P9782411065085919888

`A237384(A056000(n)+15)`
-/

namespace A237381.P9782411065085919888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (A056000 n + 15).toNat

end

end A237381.P9782411065085919888

/-! ## A237381.P6262346635530073569

`A237384(eq[6, A131818(n+1)])`
-/

namespace A237381.P6262346635530073569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237381.P6262346635530073569

/-! ## A237381.P11934634338752456330

`A237384(A007318(∑[n])+A000096(n+3)+5)`
-/

namespace A237381.P11934634338752456330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) + (A000096 (n + 3) + 5)).toNat

end

end A237381.P11934634338752456330

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

/-! ## A237382.P6810972724819469128

`A237384(eq[7, A131818(n+1)])`
-/

namespace A237382.P6810972724819469128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237382.P6810972724819469128

/-! ## A237382.P5469297364475910451

`A237384(A052905(n+3))`
-/

namespace A237382.P5469297364475910451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (A052905 (n + 3)).toNat

end

end A237382.P5469297364475910451

/-! ## A237382.P1534761738546786740

`A237384(eq[3, A219347(n)])`
-/

namespace A237382.P1534761738546786740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237382.P1534761738546786740

/-! ## A237382.P15443589396027242429

`A237384(eq[5, A193592(n)])`
-/

namespace A237382.P15443589396027242429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237382.P15443589396027242429

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

/-! ## A237383.P13918780156189871815

`A237384(eq[8, A131818(n+1)])`
-/

namespace A237383.P13918780156189871815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237383.P13918780156189871815

/-! ## A237383.P14697991914410274339

`A237384(A055999(n+4))`
-/

namespace A237383.P14697991914410274339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (A055999 (n + 4)).toNat

end

end A237383.P14697991914410274339

/-! ## A237383.P10497976443386261009

`A237384(eq[4, A219347(n)])`
-/

namespace A237383.P10497976443386261009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237383.P10497976443386261009

/-! ## A237383.P14779460371358574349

`A237384(eq[6, A193592(n)])`
-/

namespace A237383.P14779460371358574349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237383.P14779460371358574349

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

/-! ## A237386.P5130398932371929735

`lcm(2, A237391(A000096(n)+3))`
-/

namespace A237386.P5130398932371929735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237391 (A000096 n + 3).toNat)

end

end A237386.P5130398932371929735

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

/-! ## A237387.P2374219103095838582

`lcm((-1)^n, A237391(A167614(n+1)))`
-/

namespace A237387.P2374219103095838582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A237391 (A167614 (n + 1)).toNat)

end

end A237387.P2374219103095838582

/-! ## A237387.P13396553476687283705

`A237391(A167614(n+1))+A025469(n)`
-/

namespace A237387.P13396553476687283705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (A167614 (n + 1)).toNat + A025469 n

end

end A237387.P13396553476687283705

/-! ## A237387.P3306658939562526789

`A068045(n)*A237391(A167614(n+1))`
-/

namespace A237387.P3306658939562526789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068045 n * A237391 (A167614 (n + 1)).toNat

end

end A237387.P3306658939562526789

/-! ## A237387.P8027769012806975697

`A079341(n)*A237391(A167614(n+1))`
-/

namespace A237387.P8027769012806975697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079341 n * A237391 (A167614 (n + 1)).toNat

end

end A237387.P8027769012806975697

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

/-! ## A237388.P13277531158740226033

`A237391(A141214(n)+7)`
-/

namespace A237388.P13277531158740226033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (A141214 n + 7).toNat

end

end A237388.P13277531158740226033

/-! ## A237388.P13767861973762893939

`A237391(A052905(n)+9)`
-/

namespace A237388.P13767861973762893939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (A052905 n + 9).toNat

end

end A237388.P13767861973762893939

/-! ## A237388.P14863376428046533541

`A237391(A055999(n)+10)`
-/

namespace A237388.P14863376428046533541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (A055999 n + 10).toNat

end

end A237388.P14863376428046533541

/-! ## A237388.P18261768438779783921

`A237391(eq[5, A066657(n)])`
-/

namespace A237388.P18261768438779783921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237388.P18261768438779783921

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

/-! ## A237389.P6729021018977175148

`A237391(A167499(n+3))`
-/

namespace A237389.P6729021018977175148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (A167499 (n + 3)).toNat

end

end A237389.P6729021018977175148

/-! ## A237389.P12471837030195846919

`A237391(A155212(n)+13)`
-/

namespace A237389.P12471837030195846919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (A155212 n + 13).toNat

end

end A237389.P12471837030195846919

/-! ## A237389.P2811597648789457562

`A237391(A056000(n)+15)`
-/

namespace A237389.P2811597648789457562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (A056000 n + 15).toNat

end

end A237389.P2811597648789457562

/-! ## A237389.P2051252581872756637

`A237391(eq[7, A066657(n)])`
-/

namespace A237389.P2051252581872756637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237389.P2051252581872756637

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

/-! ## A237392.P3617868942736426920

`A237398(A000124(n))+A034508(n+1)`
-/

namespace A237392.P3617868942736426920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (A000124 n).toNat + A034508 (n + 1)

end

end A237392.P3617868942736426920

/-! ## A237392.P13098751125244478734

`A237398(A000124(n))%A237372(n+1)`
-/

namespace A237392.P13098751125244478734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237398 (A000124 n).toNat) (A237372 (n + 1))

end

end A237392.P13098751125244478734

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

/-! ## A237393.P9069018146493537562

`lcm(2, A237398(A133263(n+1)))`
-/

namespace A237393.P9069018146493537562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237398 (A133263 (n + 1)).toNat)

end

end A237393.P9069018146493537562

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

/-! ## A237394.P13989392528893316176

`lcm(2, A237398(A167614(n+1)))`
-/

namespace A237394.P13989392528893316176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237398 (A167614 (n + 1)).toNat)

end

end A237394.P13989392528893316176

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

/-! ## A237394.P3219705095366955902

`A237398(A167614(n+1))+A137579(n)`
-/

namespace A237394.P3219705095366955902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (A167614 (n + 1)).toNat + A137579 n

end

end A237394.P3219705095366955902

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

/-! ## A237395.P2661378895887029020

`A237398(A167614(n+2)+1)`
-/

namespace A237395.P2661378895887029020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (A167614 (n + 2) + 1).toNat

end

end A237395.P2661378895887029020

/-! ## A237395.P15683843920992424942

`A237398(A166136(n+2)-2)`
-/

namespace A237395.P15683843920992424942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (A166136 (n + 2) - 2).toNat

end

end A237395.P15683843920992424942

/-! ## A237395.P18444391274752872272

`record[A237398(A198467(n+1)+4)]`
-/

namespace A237395.P18444391274752872272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (A198467 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237395.P18444391274752872272

/-! ## A237395.P7586471609352915743

`A237398(A166136(n+1)+1+n)`
-/

namespace A237395.P7586471609352915743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A237395.P7586471609352915743

/-!
# A237396: Number of (n+1) X (5+1) 0..3 arrays with the maximum plus the upper median minus the lower median of every 2 X 2 subblock equal.

The programs for A237396, there is no canonical definition to state claims against.
-/

/-! ## A237396.P11783259503393220257

`A237398(A155212(n)+13)`
-/

namespace A237396.P11783259503393220257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (A155212 n + 13).toNat

end

end A237396.P11783259503393220257

/-! ## A237396.P1043566307264081295

`A237398(A000124(n+5)-(n+1))`
-/

namespace A237396.P1043566307264081295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A237396.P1043566307264081295

/-! ## A237396.P13599570855181279974

`A237398(A374005(n+1))`
-/

namespace A237396.P13599570855181279974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (A374005 (n + 1)).toNat

end

end A237396.P13599570855181279974

/-! ## A237396.P16267298257396179537

`A237398(A056115(n)+11)`
-/

namespace A237396.P16267298257396179537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (A056115 n + 11).toNat

end

end A237396.P16267298257396179537

/-! ## A237396.P841271955803263297

`A237398(eq[4, A193592(n)])`
-/

namespace A237396.P841271955803263297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237396.P841271955803263297

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

/-! ## A237397.P3688730257956771109

`A237398(eq[5, A193592(n)])`
-/

namespace A237397.P3688730257956771109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237397.P3688730257956771109

/-! ## A237397.P9395132669219615165

`A237398(A000124(n+5)+n)`
-/

namespace A237397.P9395132669219615165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (A000124 (n + 5) + (n : ℤ)).toNat

end

end A237397.P9395132669219615165

/-! ## A237397.P1637613424320506823

`A237398(Δ[A023545(n+2)]-1)`
-/

namespace A237397.P1637613424320506823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237398 (f1 (n + 1) - f1 n - 1).toNat

end

end A237397.P1637613424320506823

/-!
# A237399: Number of (n+1) X (1+1) 0..3 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237399, there is no canonical definition to state claims against.
-/

/-! ## A237399.P794223423236820561

`A237403(∑[n]+1)`
-/

namespace A237399.P794223423236820561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237403 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237399.P794223423236820561

/-! ## A237399.P11825140180465563133

`lcm(2, A237403(A000124(n)))`
-/

namespace A237399.P11825140180465563133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237403 (A000124 n).toNat)

end

end A237399.P11825140180465563133

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

/-! ## A237399.P426294383795249743

`record[A237403(n+1)/A039758(n)]`
-/

namespace A237399.P426294383795249743
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237403 (n + 1) : ℚ) / (A039758 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237399.P426294383795249743

