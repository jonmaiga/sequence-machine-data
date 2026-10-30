import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B007.C001
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A310007: Coordination sequence Gal.4.31.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310007, there is no canonical definition to state claims against.
-/

/-! ## A310007.P13342534300810022982

`A250122(n)+A310040(n)-A310025(n)`
-/

namespace A310007.P13342534300810022982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 n + (A310040 n - A310025 n)

end

end A310007.P13342534300810022982

/-! ## A310007.P14631945744955861656

`A314390(n)+A250122(n)-A314377(n)`
-/

namespace A310007.P14631945744955861656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314390 n + A250122 n - A314377 n

end

end A310007.P14631945744955861656

/-!
# A310020: Coordination sequence Gal.5.32.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310020, there is no canonical definition to state claims against.
-/

/-! ## A310020.P3400440510151937561

`∑[A001222(A143096(n+5)+A125676(2*(n+2)))]`
-/

namespace A310020.P3400440510151937561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A143096 (n + 5) + A125676 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310020.P3400440510151937561

/-!
# A310021: Coordination sequence Gal.5.41.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310021, there is no canonical definition to state claims against.
-/

/-! ## A310021.P3102227700294125632

`A310022(n)-A086080(A099099(n))`
-/

namespace A310021.P3102227700294125632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310022 n - A086080 (A099099 n).toNat

end

end A310021.P3102227700294125632

/-! ## A310021.P15504347893997704750

`A310022(A014701(2^n))`
-/

namespace A310021.P15504347893997704750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310022 (A014701 (2 ^ n)).toNat

end

end A310021.P15504347893997704750

/-! ## A310021.P5000927189863716355

`A310022(n)%Δ[A025494(n+1)]`
-/

namespace A310021.P5000927189863716355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310022 n) (f1 (n + 1) - f1 n)

end

end A310021.P5000927189863716355

/-! ## A310021.P9595178256654617107

`A010060(A011782(n))*A310022(n)`
-/

namespace A310021.P9595178256654617107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A011782 n).toNat * A310022 n

end

end A310021.P9595178256654617107

/-! ## A310021.P17148979932600997690

`A310022(n)^A001221(A056451(n))`
-/

namespace A310021.P17148979932600997690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310022 n : ℚ) ^ (A001221 (A056451 n).toNat : ℤ)

end

end A310021.P17148979932600997690

/-!
# A310023: Coordination sequence Gal.6.94.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310023, there is no canonical definition to state claims against.
-/

/-! ## A310023.P3458905575613218068

`A310024(A014701(2^n))`
-/

namespace A310023.P3458905575613218068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310024 (A014701 (2 ^ n)).toNat

end

end A310023.P3458905575613218068

/-! ## A310023.P17218686829835795330

`A310024(A187829(n+1)-1)`
-/

namespace A310023.P17218686829835795330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310024 (A187829 (n + 1) - 1).toNat

end

end A310023.P17218686829835795330

/-! ## A310023.P17702639542771532817

`A310024(n)%A076190(n+1)`
-/

namespace A310023.P17702639542771532817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310024 n) (A076190 (n + 1))

end

end A310023.P17702639542771532817

/-! ## A310023.P1157596895830760836

`A310024(n)+A194186(6^∑{e}[n+1, #])`
-/

namespace A310023.P1157596895830760836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310024 n + A194186 (6 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A310023.P1157596895830760836

/-! ## A310023.P1849863519385615778

`ceil(sin(A317785(2*(n+1)))²)*A310024(n)`
-/

namespace A310023.P1849863519385615778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (A317785 (2 * (n + 1)) : ℝ) ^ 2⌉ * A310024 n

end

end A310023.P1849863519385615778

/-!
# A310025: Coordination sequence Gal.4.31.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310025, there is no canonical definition to state claims against.
-/

/-! ## A310025.P10533371284192805532

`A250122(n)+A310040(n)-A310007(n)`
-/

namespace A310025.P10533371284192805532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 n + (A310040 n - A310007 n)

end

end A310025.P10533371284192805532

/-! ## A310025.P7328238144252610624

`A314377(n)+A310040(n)-A314390(n)`
-/

namespace A310025.P7328238144252610624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314377 n + A310040 n - A314390 n

end

end A310025.P7328238144252610624

/-!
# A310027: Coordination sequence Gal.5.41.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310027, there is no canonical definition to state claims against.
-/

/-! ## A310027.P16421663129017211163

`A310028(n)-A293896(A146801(n+1))`
-/

namespace A310027.P16421663129017211163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310028 n - A293896 (A146801 (n + 1)).toNat

end

end A310027.P16421663129017211163

/-! ## A310027.P14012817160018360887

`A310028(n)-A055641(A002531(n))`
-/

namespace A310027.P14012817160018360887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310028 n - A055641 (A002531 n).toNat

end

end A310027.P14012817160018360887

/-! ## A310027.P11863307416276643171

`A310028(n)-A185284(A228361(n))`
-/

namespace A310027.P11863307416276643171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310028 n - A185284 (A228361 n).toNat

end

end A310027.P11863307416276643171

/-! ## A310027.P8366312038080964719

`A310028(n)-A185284(A045572(n+1))`
-/

namespace A310027.P8366312038080964719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310028 n - A185284 (A045572 (n + 1)).toNat

end

end A310027.P8366312038080964719

/-! ## A310027.P625232711551739379

`A310028(n)-A325719(A043320(n+1))`
-/

namespace A310027.P625232711551739379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310028 n - A325719 (A043320 (n + 1)).toNat

end

end A310027.P625232711551739379

/-!
# A310028: Coordination sequence Gal.5.40.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310028, there is no canonical definition to state claims against.
-/

/-! ## A310028.P12389599715540818064

`A310027(n)+A293896(A146801(n+1))`
-/

namespace A310028.P12389599715540818064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310027 n + A293896 (A146801 (n + 1)).toNat

end

end A310028.P12389599715540818064

/-! ## A310028.P15761134612463074407

`A310027(n)+A055641(A002531(n))`
-/

namespace A310028.P15761134612463074407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310027 n + A055641 (A002531 n).toNat

end

end A310028.P15761134612463074407

/-! ## A310028.P9181845241523908673

`A310027(n)+A185284(A228361(n))`
-/

namespace A310028.P9181845241523908673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310027 n + A185284 (A228361 n).toNat

end

end A310028.P9181845241523908673

/-!
# A310029: Coordination sequence Gal.6.94.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310029, there is no canonical definition to state claims against.
-/

/-! ## A310029.P6093484155176521684

`A310030(n)-A005843(A172543(n+1))`
-/

namespace A310029.P6093484155176521684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310030 n - A005843 (A172543 (n + 1)).toNat

end

end A310029.P6093484155176521684

/-! ## A310029.P6117751668258142152

`(A310030(n)-A123644(A172543(n+1)))%A052486(n+1)`
-/

namespace A310029.P6117751668258142152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310030 n - A123644 (A172543 (n + 1)).toNat) (A052486 (n + 1))

end

end A310029.P6117751668258142152

/-! ## A310029.P11485265164255980904

`A310030(A089840(∑[n]))`
-/

namespace A310029.P11485265164255980904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310030 (A089840 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A310029.P11485265164255980904

/-! ## A310029.P9961116527315882802

`A310030(A122201(∑[n]))`
-/

namespace A310029.P9961116527315882802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310030 (A122201 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A310029.P9961116527315882802

/-! ## A310029.P15296920727366041129

`A310030(A122284(∑[n]))`
-/

namespace A310029.P15296920727366041129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310030 (A122284 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A310029.P15296920727366041129

/-!
# A310030: Coordination sequence Gal.6.92.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310030, there is no canonical definition to state claims against.
-/

/-! ## A310030.P4385534991126132800

`A310029(n)+A123644(A172543(n+1))`
-/

namespace A310030.P4385534991126132800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310029 n + A123644 (A172543 (n + 1)).toNat

end

end A310030.P4385534991126132800

/-!
# A310032: Coordination sequence Gal.4.28.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310032, there is no canonical definition to state claims against.
-/

/-! ## A310032.P4079462193706397625

`A310033(n)-A185284(A310004(n))`
-/

namespace A310032.P4079462193706397625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310033 n - A185284 (A310004 n).toNat

end

end A310032.P4079462193706397625

/-! ## A310032.P1729525883032150927

`A310033(n)-A185284(A310009(n))`
-/

namespace A310032.P1729525883032150927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310033 n - A185284 (A310009 n).toNat

end

end A310032.P1729525883032150927

/-! ## A310032.P9400470570160401233

`A310033(n)%Δ[A119151(2*n+1)]`
-/

namespace A310032.P9400470570160401233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119151 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310033 n) (f1 (n + 1) - f1 n)

end

end A310032.P9400470570160401233

/-! ## A310032.P10831701469103982267

`A310033(n)+A000007(A001333(n))`
-/

namespace A310032.P10831701469103982267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310033 n + A000007 (A001333 n).toNat

end

end A310032.P10831701469103982267

/-! ## A310032.P2462754052970131411

`A310033(n)+A015868(A005316(n))`
-/

namespace A310032.P2462754052970131411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310033 n + A015868 (A005316 n).toNat

end

end A310032.P2462754052970131411

/-!
# A310033: Coordination sequence Gal.4.29.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310033, there is no canonical definition to state claims against.
-/

/-! ## A310033.P9350945960356295739

`record[A318726(n+1)%A308415(n+1)]`
-/

namespace A310033.P9350945960356295739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318726 (n + 1)) (A308415 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310033.P9350945960356295739

/-! ## A310033.P2515619181026843166

`A310032(n)+A185284(A310004(n))`
-/

namespace A310033.P2515619181026843166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310032 n + A185284 (A310004 n).toNat

end

end A310033.P2515619181026843166

/-! ## A310033.P4573558412222590169

`A310032(n)+A185284(A310009(n))`
-/

namespace A310033.P4573558412222590169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310032 n + A185284 (A310009 n).toNat

end

end A310033.P4573558412222590169

/-! ## A310033.P7138966421978363820

`A310032(n)+A185284(A310011(n))`
-/

namespace A310033.P7138966421978363820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310032 n + A185284 (A310011 n).toNat

end

end A310033.P7138966421978363820

/-!
# A310035: Coordination sequence Gal.5.37.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310035, there is no canonical definition to state claims against.
-/

/-! ## A310035.P12362244293085524814

`A036445(2*A310036(n))`
-/

namespace A310035.P12362244293085524814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036445 (2 * A310036 n).toNat

end

end A310035.P12362244293085524814

/-! ## A310035.P4540222563283853824

`record[A310036(A166238(n+1))]`
-/

namespace A310035.P4540222563283853824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310036 (A166238 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310035.P4540222563283853824

/-! ## A310035.P10804772919343635637

`A310036(n)%A107633(n+5)`
-/

namespace A310035.P10804772919343635637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310036 n) (A107633 (n + 5))

end

end A310035.P10804772919343635637

/-!
# A310036: Coordination sequence Gal.5.38.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310036, there is no canonical definition to state claims against.
-/

/-! ## A310036.P12358564496139288920

`or(A310035(n), A347709(A198514(n+1)))`
-/

namespace A310036.P12358564496139288920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A310035 n) (A347709 (A198514 (n + 1)).toNat)

end

end A310036.P12358564496139288920

/-! ## A310036.P15749660715140094383

`A347709(A198514(n+1)-A347709(n+1))+A310035(n)`
-/

namespace A310036.P15749660715140094383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347709 (A198514 (n + 1) - A347709 (n + 1)).toNat + A310035 n

end

end A310036.P15749660715140094383

/-!
# A310039: Coordination sequence Gal.3.7.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310039, the canonical program `A310039.P6405278674926617482` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310039 has offset 0).

The definition of A310039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310039.P6405278674926617482

`ogf((1+x^2+3x^3-3x^4+6x^5-4x^6+4x^7+x^8+x^9-x^10+6x^11-7x^12+6x^13-2x^14)/(1-3x+5x^2-6x^3+5x^4-3x^5+2x^6-3x^7+5x^8-6x^9+5x^10-3x^11+x^12))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A310039

/-- `ogf((1+x^2+3x^3-3x^4+6x^5-4x^6+4x^7+x^8+x^9-x^10+6x^11-7x^12+6x^13-2x^14)/(1-3x+5x^2-6x^3+5x^4-3x^5+2x^6-3x^7+5x^8-6x^9+5x^10-3x^11+x^12))` -/
def P6405278674926617482.Spec : Prop :=
  ∀ n, P6405278674926617482.a n = A310039 n

theorem P6405278674926617482.correct : P6405278674926617482.Spec := by
  intro n
  simp only [A310039]

end A310039

/-! ## A310039.P8507672362895044268

`A072154(lt[A032742(n+1)², A216719(3*n+4)])`
-/

namespace A310039.P8507672362895044268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216719 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A310039.P8507672362895044268

namespace A310039

/-- `A072154(lt[A032742(n+1)², A216719(3*n+4)])` -/
def P8507672362895044268.Spec : Prop :=
  ∀ n, P8507672362895044268.a n = A310039 n

end A310039

/-! ## A310039.P16054739382437171729

`A072154(lt[A216719(n+3), A216719(3*n+4)²])`
-/

namespace A310039.P16054739382437171729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216719 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216719 (3 * n + 4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A310039.P16054739382437171729

namespace A310039

/-- `A072154(lt[A216719(n+3), A216719(3*n+4)²])` -/
def P16054739382437171729.Spec : Prop :=
  ∀ n, P16054739382437171729.a n = A310039 n

end A310039

/-! ## A310039.P13118862098438301005

`A072154(lt[n², A216719(3*n+4)])`
-/

namespace A310039.P13118862098438301005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216719 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A310039.P13118862098438301005

namespace A310039

/-- `A072154(lt[n², A216719(3*n+4)])` -/
def P13118862098438301005.Spec : Prop :=
  ∀ n, P13118862098438301005.a n = A310039 n

end A310039

/-! ## A310039.P1169857291979190169

`A109324(n+1)+A102679(A083575(n))`
-/

namespace A310039.P1169857291979190169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109324 (n + 1) + A102679 (A083575 n).toNat

end

end A310039.P1169857291979190169

namespace A310039

/-- `A109324(n+1)+A102679(A083575(n))` -/
def P1169857291979190169.Spec : Prop :=
  ∀ n, P1169857291979190169.a n = A310039 n

end A310039

/-!
# A310040: Coordination sequence Gal.6.109.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310040, there is no canonical definition to state claims against.
-/

/-! ## A310040.P8154948806149987758

`A310007(n)+A310025(n)-A250122(n)`
-/

namespace A310040.P8154948806149987758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310007 n + (A310025 n - A250122 n)

end

end A310040.P8154948806149987758

/-! ## A310040.P5874835866586556350

`A314390(n)+A310025(n)-A314377(n)`
-/

namespace A310040.P5874835866586556350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314390 n + A310025 n - A314377 n

end

end A310040.P5874835866586556350

/-!
# A310042: Coordination sequence Gal.6.94.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310042, there is no canonical definition to state claims against.
-/

/-! ## A310042.P9032832578891287881

`A310043(A163352(∑[n]))`
-/

namespace A310042.P9032832578891287881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310043 (A163352 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A310042.P9032832578891287881

/-! ## A310042.P4054554414623701861

`A310043(A307297(∑[n]))`
-/

namespace A310042.P4054554414623701861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310043 (A307297 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A310042.P4054554414623701861

/-! ## A310042.P7655907234217918724

`∏{e}[A000244(n), A310043(#)]`
-/

namespace A310042.P7655907234217918724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A310043 (Nat.factorization (f1 n).natAbs p)

end

end A310042.P7655907234217918724

/-! ## A310042.P6765222039911208505

`A310043(n*Δ[A077168(n)])`
-/

namespace A310042.P6765222039911208505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310043 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A310042.P6765222039911208505

/-! ## A310042.P2256679097142955524

`A310043(A077168(n+1)-2)`
-/

namespace A310042.P2256679097142955524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310043 (A077168 (n + 1) - 2).toNat

end

end A310042.P2256679097142955524

/-!
# A310045: Coordination sequence Gal.5.37.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310045, there is no canonical definition to state claims against.
-/

/-! ## A310045.P17648589737079589453

`A310046(n^gcd(11, n))`
-/

namespace A310045.P17648589737079589453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310046 (n ^ Nat.gcd 11 n)

end

end A310045.P17648589737079589453

/-! ## A310045.P3477828369952446442

`A310046(A062399(n))`
-/

namespace A310045.P3477828369952446442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310046 (A062399 n).toNat

end

end A310045.P3477828369952446442

/-! ## A310045.P16505198592347992046

`A310046(A120126(n))`
-/

namespace A310045.P16505198592347992046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310046 (A120126 n).toNat

end

end A310045.P16505198592347992046

/-! ## A310045.P7410610129858907898

`A310046(A351870(n))`
-/

namespace A310045.P7410610129858907898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310046 (A351870 n).toNat

end

end A310045.P7410610129858907898

/-! ## A310045.P18299874314841674587

`A310046(n)+A121373(A158713(3*n+2))`
-/

namespace A310045.P18299874314841674587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310046 n + A121373 (A158713 (3 * n + 2)).toNat

end

end A310045.P18299874314841674587

/-!
# A310048: Coordination sequence Gal.6.95.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310048, there is no canonical definition to state claims against.
-/

/-! ## A310048.P16854159045099300412

`A310047(n)+A083895(A007051(n))`
-/

namespace A310048.P16854159045099300412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310047 n + A083895 (A007051 n).toNat

end

end A310048.P16854159045099300412

/-!
# A310050: Coordination sequence Gal.4.36.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310050, there is no canonical definition to state claims against.
-/

/-! ## A310050.P11635004159814255954

`A005574(n+2)-A333755(A136501(3*(n+1)))`
-/

namespace A310050.P11635004159814255954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 2) - A333755 (A136501 (3 * (n + 1))).toNat

end

end A310050.P11635004159814255954

/-!
# A310053: Coordination sequence Gal.6.97.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310053, there is no canonical definition to state claims against.
-/

/-! ## A310053.P2544856327984695094

`A302242(A303287(n))+A005117(2*n+1)`
-/

namespace A310053.P2544856327984695094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A303287 n).toNat + A005117 (2 * n + 1)

end

end A310053.P2544856327984695094

/-! ## A310053.P6247210323363042746

`A072774(3*n+1)-A010060(A128335(n+1))`
-/

namespace A310053.P6247210323363042746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (3 * n + 1) - A010060 (A128335 (n + 1)).toNat

end

end A310053.P6247210323363042746

/-!
# A310054: Coordination sequence Gal.6.86.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310054, there is no canonical definition to state claims against.
-/

/-! ## A310054.P9285987253399200069

`∑[A001222(A195933(∑[n+1]))]`
-/

namespace A310054.P9285987253399200069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A195933 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310054.P9285987253399200069

/-! ## A310054.P10125826746829752689

`A005041(n)+record[A279228(n+1)]`
-/

namespace A310054.P10125826746829752689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310054.P10125826746829752689

/-! ## A310054.P2046629470395008590

`A024417(n+1)+record[A279228(n+1)]`
-/

namespace A310054.P2046629470395008590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310054.P2046629470395008590

/-! ## A310054.P3610718785568415747

`A067085(n+1)+record[A279228(n+1)]`
-/

namespace A310054.P3610718785568415747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310054.P3610718785568415747

/-! ## A310054.P4147954077339144732

`A090501(n+1)+record[A279228(n+1)]`
-/

namespace A310054.P4147954077339144732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090501 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310054.P4147954077339144732

/-!
# A310055: Coordination sequence Gal.6.84.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310055, there is no canonical definition to state claims against.
-/

/-! ## A310055.P12309655191406395225

`A247157(n+1)-A360501(A053266(n))`
-/

namespace A310055.P12309655191406395225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247157 (n + 1) - A360501 (A053266 n).toNat

end

end A310055.P12309655191406395225

/-! ## A310055.P281385506329955955

`A310063(A351870(n))-floor(n/4)`
-/

namespace A310055.P281385506329955955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310063 (A351870 n).toNat - ⌊(n : ℚ) / 4⌋

end

end A310055.P281385506329955955

/-! ## A310055.P329983503172187879

`A065027(n)+A001222(A309565(n))`
-/

namespace A310055.P329983503172187879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065027 n + A001222 (A309565 n).toNat

end

end A310055.P329983503172187879

/-! ## A310055.P11647063324726954250

`A156261(A017005(n)-A065775(n))`
-/

namespace A310055.P11647063324726954250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156261 (A017005 n - A065775 n).toNat

end

end A310055.P11647063324726954250

/-! ## A310055.P12775025538848526457

`A033040(n+1)+A029837(A307128(n))`
-/

namespace A310055.P12775025538848526457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033040 (n + 1) + A029837 (A307128 n).toNat

end

end A310055.P12775025538848526457

/-!
# A310057: Coordination sequence Gal.6.50.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310057, there is no canonical definition to state claims against.
-/

/-! ## A310057.P18233408400917725524

`A092535(lt[A356944(3*n+2)%2, 1])`
-/

namespace A310057.P18233408400917725524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356944 (3 * n + 2)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A310057.P18233408400917725524

/-! ## A310057.P16165076685177138737

`eq[A000035(A098573(n+1)), A057979(n)]`
-/

namespace A310057.P16165076685177138737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A098573 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310057.P16165076685177138737

/-! ## A310057.P18291040929266386113

`A265283(∑[A094235(n²)])`
-/

namespace A310057.P18291040929266386113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094235 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265283 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A310057.P18291040929266386113

/-! ## A310057.P4969931056498040561

`A089422(A164713(n+1)+A004396(n))`
-/

namespace A310057.P4969931056498040561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089422 (A164713 (n + 1) + A004396 n).toNat

end

end A310057.P4969931056498040561

/-! ## A310057.P15705609211709510635

`A089422(A194640(n)+A164713(n+1))`
-/

namespace A310057.P15705609211709510635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089422 (A194640 n + A164713 (n + 1)).toNat

end

end A310057.P15705609211709510635

/-!
# A310059: Coordination sequence Gal.6.2.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310059, there is no canonical definition to state claims against.
-/

/-! ## A310059.P7875810897885946297

`round(log2(∑[A080638(n+1)]))`
-/

namespace A310059.P7875810897885946297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A310059.P7875810897885946297

/-! ## A310059.P11105783905008724903

`A005206(eq[n, A088520(n+1)])`
-/

namespace A310059.P11105783905008724903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A310059.P11105783905008724903

/-! ## A310059.P9441513804634717987

`A246435(∑[A001970(n)])+2*n`
-/

namespace A310059.P9441513804634717987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246435 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (2 * n : ℤ)

end

end A310059.P9441513804634717987

/-! ## A310059.P270738503669992057

`A008574(n)-ceil(log(A101902(n+1)))`
-/

namespace A310059.P270738503669992057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - ⌈Real.log (A101902 (n + 1) : ℝ)⌉

end

end A310059.P270738503669992057

/-! ## A310059.P10338319948165492284

`A092982(A315430(n)+floor(2*n/5))`
-/

namespace A310059.P10338319948165492284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092982 (A315430 n + ⌊2 * ((n : ℚ) / 5)⌋).toNat

end

end A310059.P10338319948165492284

/-!
# A310060: Coordination sequence Gal.3.5.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310060, there is no canonical definition to state claims against.
-/

/-! ## A310060.P14254477142368641549

`∑[∑[A064577(A237434(2*(n+1))+n)]%5]`
-/

namespace A310060.P14254477142368641549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064577 (A237434 (2 * (n + 1)) + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310060.P14254477142368641549

/-! ## A310060.P1345167474224572849

`A121373(A082794(n+1)*A258993(n+1))+A312926(n)-n`
-/

namespace A310060.P1345167474224572849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A082794 (n + 1) * A258993 (n + 1)).toNat + (A312926 n - (n : ℤ))

end

end A310060.P1345167474224572849

/-! ## A310060.P12317186814879452588

`∑[A082116(∏[A324468(n+1)])]`
-/

namespace A310060.P12317186814879452588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324468 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310060.P12317186814879452588

/-!
# A310061: Coordination sequence Gal.6.99.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310061, there is no canonical definition to state claims against.
-/

/-! ## A310061.P3326313765501015546

`A310062(n)-A003982(A329047(n+1))`
-/

namespace A310061.P3326313765501015546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310062 n - A003982 (A329047 (n + 1)).toNat

end

end A310061.P3326313765501015546

/-! ## A310061.P10413789611227500990

`A310062(n)-A023533(A096231(2*(n+2)))`
-/

namespace A310061.P10413789611227500990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310062 n - A023533 (A096231 (2 * (n + 2))).toNat

end

end A310061.P10413789611227500990

/-! ## A310061.P17080041926068938846

`∑[A001221(A062116(n)*A246775(n+1))]-A003982((n+4)²)`
-/

namespace A310061.P17080041926068938846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A062116 n * A246775 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003982 ((n + 4) ^ 2)

end

end A310061.P17080041926068938846

/-! ## A310061.P10866488456143789427

`∑[a(A287401(A148043(n)))+1]` with `a(0)=1`
-/

namespace A310061.P10866488456143789427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A287401 (A148043 n).toNat).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310061.P10866488456143789427

/-!
# A310062: Coordination sequence Gal.6.99.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310062, there is no canonical definition to state claims against.
-/

/-! ## A310062.P8064371924732760697

`∑[∑[A011649(A002865(n))]]`
-/

namespace A310062.P8064371924732760697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011649 (A002865 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310062.P8064371924732760697

/-! ## A310062.P11123263460532843817

`A310061(n)+A003982(A329047(n+1))`
-/

namespace A310062.P11123263460532843817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310061 n + A003982 (A329047 (n + 1)).toNat

end

end A310062.P11123263460532843817

/-! ## A310062.P3132551884967555241

`∑[A055642(A336092(n+1)²)]`
-/

namespace A310062.P3132551884967555241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A336092 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310062.P3132551884967555241

/-! ## A310062.P17785686479778892964

`∑[A001221(A062116(n)*A246775(n+1))]`
-/

namespace A310062.P17785686479778892964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A062116 n * A246775 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310062.P17785686479778892964

/-! ## A310062.P17806496738107136606

`A313923(A120126(n))-A004526(A311687(n))`
-/

namespace A310062.P17806496738107136606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313923 (A120126 n).toNat - A004526 (A311687 n).toNat

end

end A310062.P17806496738107136606

/-!
# A310063: Coordination sequence Gal.6.1.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310063, there is no canonical definition to state claims against.
-/

/-! ## A310063.P13808473172457244073

`A008574(n)-A001221(2^(n-1)*∑[n+2])`
-/

namespace A310063.P13808473172457244073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A001221 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))).toNat

end

end A310063.P13808473172457244073

/-! ## A310063.P3826251747257413795

`A008574(n)-A125029(A033484(n))`
-/

namespace A310063.P3826251747257413795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A125029 (A033484 n).toNat

end

end A310063.P3826251747257413795

/-! ## A310063.P14665381427350457925

`A008574(n)-A206483(A298040(n))`
-/

namespace A310063.P14665381427350457925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A206483 (A298040 n).toNat

end

end A310063.P14665381427350457925

/-! ## A310063.P3137003588689797288

`A113127(n)-A102683(A090992(n+1))`
-/

namespace A310063.P3137003588689797288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n - A102683 (A090992 (n + 1)).toNat

end

end A310063.P3137003588689797288

/-! ## A310063.P6088108198861569157

`A168277(2*n+1)-A036459(A033484(n))`
-/

namespace A310063.P6088108198861569157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168277 (2 * n + 1) - A036459 (A033484 n).toNat

end

end A310063.P6088108198861569157

/-!
# A310064: Coordination sequence Gal.6.38.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310064, there is no canonical definition to state claims against.
-/

/-! ## A310064.P14603303890651828802

`A313112(n)-A001222(A336127(n+1))`
-/

namespace A310064.P14603303890651828802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313112 n - A001222 (A336127 (n + 1)).toNat

end

end A310064.P14603303890651828802

/-! ## A310064.P10157803893641623864

`A383236(A305168(n))`
-/

namespace A310064.P10157803893641623864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383236 (A305168 n).toNat

end

end A310064.P10157803893641623864

/-!
# A310065: Coordination sequence Gal.6.37.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310065, there is no canonical definition to state claims against.
-/

/-! ## A310065.P2822156616063285543

`A179874(n+1)-A296066(A042937(n))`
-/

namespace A310065.P2822156616063285543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179874 (n + 1) - A296066 (A042937 n).toNat

end

end A310065.P2822156616063285543

/-! ## A310065.P17879746817983106097

`A179874(n+1)-A285274(A234534(n+1))`
-/

namespace A310065.P17879746817983106097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179874 (n + 1) - A285274 (A234534 (n + 1)).toNat

end

end A310065.P17879746817983106097

/-! ## A310065.P3602818080891785220

`∑[A323014(∑[2*3^n])]`
-/

namespace A310065.P3602818080891785220
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310065.P3602818080891785220

/-! ## A310065.P607206367269557038

`A005311(n+3)-A005347(n)`
-/

namespace A310065.P607206367269557038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005311 (n + 3) - A005347 n

end

end A310065.P607206367269557038

/-! ## A310065.P4721881632063339005

`A269243(A080040(n))+A113127(n)`
-/

namespace A310065.P4721881632063339005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269243 (A080040 n).toNat + A113127 n

end

end A310065.P4721881632063339005

/-!
# A310067: Coordination sequence Gal.4.26.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310067, there is no canonical definition to state claims against.
-/

/-! ## A310067.P8067978778360267570

`∑[A271317(n+1)-floor((n²-n)/7)]`
-/

namespace A310067.P8067978778360267570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271317 (n + 1) - ⌊((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310067.P8067978778360267570

/-! ## A310067.P2817980825896370841

`A310066(n)+A243223(A026150(n))`
-/

namespace A310067.P2817980825896370841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310066 n + A243223 (A026150 n).toNat

end

end A310067.P2817980825896370841

/-! ## A310067.P9353443858179550004

`A310706(n)-A324872(A161998(n+2))`
-/

namespace A310067.P9353443858179550004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310706 n - A324872 (A161998 (n + 2)).toNat

end

end A310067.P9353443858179550004

/-!
# A310068: Coordination sequence Gal.4.25.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310068, the canonical program `A310068.P203163168447749443` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310068 has offset 0).

The definition of A310068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310068.P15459662531172037939

`ogf((1+2x+3x^2+4x^3+5x^4+6x^5+5x^6+4x^7+3x^8+2x^9+x^10)/(1-x+x^4-2x^5+x^6-x^9+x^10))`
-/

namespace A310068.P15459662531172037939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1] [1, -1, 0, 0, 1, -2, 1, 0, 0, -1, 1] n

end

end A310068.P15459662531172037939

namespace A310068

/-- `ogf((1+2x+3x^2+4x^3+5x^4+6x^5+5x^6+4x^7+3x^8+2x^9+x^10)/(1-x+x^4-2x^5+x^6-x^9+x^10))` -/
def P15459662531172037939.Spec : Prop :=
  ∀ n, P15459662531172037939.a n = A310068 n

end A310068

/-! ## A310068.P203163168447749443

`A008706(n)-(A047299(n+1)+A046978(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A310068

/-- `A008706(n)-(A047299(n+1)+A046978(n))` -/
def P203163168447749443.Spec : Prop :=
  ∀ n, P203163168447749443.a n = A310068 n

theorem P203163168447749443.correct : P203163168447749443.Spec := by
  intro n
  simp only [A310068]

end A310068

/-! ## A310068.P14492703399861304695

`A250120(n)-(A047263(n+1)+A046978(n))`
-/

namespace A310068.P14492703399861304695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - (A047263 (n + 1) + A046978 n)

end

end A310068.P14492703399861304695

namespace A310068

/-- `A250120(n)-(A047263(n+1)+A046978(n))` -/
def P14492703399861304695.Spec : Prop :=
  ∀ n, P14492703399861304695.a n = A310068 n

end A310068

/-! ## A310068.P13988467040380406001

`A047263(n+1)+A072154(n)-A046978(n)`
-/

namespace A310068.P13988467040380406001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A072154 n - A046978 n)

end

end A310068.P13988467040380406001

namespace A310068

/-- `A047263(n+1)+A072154(n)-A046978(n)` -/
def P13988467040380406001.Spec : Prop :=
  ∀ n, P13988467040380406001.a n = A310068 n

end A310068

/-! ## A310068.P6479597483278305167

`A047263(A033627(n+2))-A046978(n)`
-/

namespace A310068.P6479597483278305167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A033627 (n + 2)).toNat - A046978 n

end

end A310068.P6479597483278305167

namespace A310068

/-- `A047263(A033627(n+2))-A046978(n)` -/
def P6479597483278305167.Spec : Prop :=
  ∀ n, P6479597483278305167.a n = A310068 n

end A310068

/-! ## A310068.P15190335882249924593

`A313152(n)-A047299(n+1)`
-/

namespace A310068.P15190335882249924593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313152 n - A047299 (n + 1)

end

end A310068.P15190335882249924593

namespace A310068

/-- `A313152(n)-A047299(n+1)` -/
def P15190335882249924593.Spec : Prop :=
  ∀ n, P15190335882249924593.a n = A310068 n

end A310068

/-! ## A310068.P4906105903268937965

`2*A312140(n)-A301712(n)`
-/

namespace A310068.P4906105903268937965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312140 n - A301712 n

end

end A310068.P4906105903268937965

namespace A310068

/-- `2*A312140(n)-A301712(n)` -/
def P4906105903268937965.Spec : Prop :=
  ∀ n, P4906105903268937965.a n = A310068 n

end A310068

/-! ## A310068.P17678018627457453553

`A301712(n)-A005843(A301712(n)-A312140(n))`
-/

namespace A310068.P17678018627457453553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301712 n - A005843 (A301712 n - A312140 n).toNat

end

end A310068.P17678018627457453553

namespace A310068

/-- `A301712(n)-A005843(A301712(n)-A312140(n))` -/
def P17678018627457453553.Spec : Prop :=
  ∀ n, P17678018627457453553.a n = A310068 n

end A310068

/-! ## A310068.P10660143008968743322

`A005843(A312140(n))-A301712(n)`
-/

namespace A310068.P10660143008968743322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312140 n).toNat - A301712 n

end

end A310068.P10660143008968743322

namespace A310068

/-- `A005843(A312140(n))-A301712(n)` -/
def P10660143008968743322.Spec : Prop :=
  ∀ n, P10660143008968743322.a n = A310068 n

end A310068

/-! ## A310068.P4153072537464516401

`A004396(A315477(n))-A046978(n)`
-/

namespace A310068.P4153072537464516401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315477 n).toNat - A046978 n

end

end A310068.P4153072537464516401

namespace A310068

/-- `A004396(A315477(n))-A046978(n)` -/
def P4153072537464516401.Spec : Prop :=
  ∀ n, P4153072537464516401.a n = A310068 n

end A310068

/-!
# A310069: Coordination sequence Gal.6.87.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310069, there is no canonical definition to state claims against.
-/

/-! ## A310069.P17396004036777319930

`∑[∑[A330025(A005962(n+1))]]`
-/

namespace A310069.P17396004036777319930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A005962 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310069.P17396004036777319930

/-! ## A310069.P3209708228623729657

`∑[A329326(∑[A091320(n+1)])]`
-/

namespace A310069.P3209708228623729657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091320 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329326 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310069.P3209708228623729657

/-! ## A310069.P1247126363015136588

`A310070(n)-A212619(n²+1)`
-/

namespace A310069.P1247126363015136588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310070 n - A212619 (n ^ 2 + 1)

end

end A310069.P1247126363015136588

/-! ## A310069.P7776229938649145696

`A310070(n)-A181837(A310070(2*n))`
-/

namespace A310069.P7776229938649145696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310070 n - A181837 (A310070 (2 * n)).toNat

end

end A310069.P7776229938649145696

/-! ## A310069.P12753694550214939774

`A310070(A087051(n))`
-/

namespace A310069.P12753694550214939774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310070 (A087051 n).toNat

end

end A310069.P12753694550214939774

/-!
# A310070: Coordination sequence Gal.6.81.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310070, there is no canonical definition to state claims against.
-/

/-! ## A310070.P11531360411664453147

`A310069(n)+A185284(A310097(n))`
-/

namespace A310070.P11531360411664453147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310069 n + A185284 (A310097 n).toNat

end

end A310070.P11531360411664453147

/-! ## A310070.P15611577003136425164

`A310069(n)+A185284(A310099(n))`
-/

namespace A310070.P15611577003136425164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310069 n + A185284 (A310099 n).toNat

end

end A310070.P15611577003136425164

/-! ## A310070.P12664464363460369516

`A310069(n)+A185284(A052928(3*n+2))`
-/

namespace A310070.P12664464363460369516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310069 n + A185284 (A052928 (3 * n + 2)).toNat

end

end A310070.P12664464363460369516

/-! ## A310070.P16715510002315110422

`∑[∑[A321758(A329740(n))]]`
-/

namespace A310070.P16715510002315110422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321758 (A329740 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310070.P16715510002315110422

/-! ## A310070.P11349085952447447930

`∑[∑[A010892(A229479(2*n+3))]]`
-/

namespace A310070.P11349085952447447930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A229479 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310070.P11349085952447447930

/-!
# A310072: Coordination sequence Gal.5.2.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310072, there is no canonical definition to state claims against.
-/

/-! ## A310072.P548982151971831286

`∑[∑[A011588(A007051(n))]]`
-/

namespace A310072.P548982151971831286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 (A007051 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310072.P548982151971831286

/-! ## A310072.P17981880749063856768

`∑[∑[A034947(A041823(n))]]`
-/

namespace A310072.P17981880749063856768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A041823 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310072.P17981880749063856768

/-! ## A310072.P10095193505982460432

`∑[∑[A034947(A049312(n))]]`
-/

namespace A310072.P10095193505982460432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A049312 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310072.P10095193505982460432

/-! ## A310072.P13467760155340039151

`∑[∑[A011582(A081405(n))]]`
-/

namespace A310072.P13467760155340039151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 (A081405 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310072.P13467760155340039151

/-! ## A310072.P5209394474927879211

`∑[∑[A020985(A080871(n))]]`
-/

namespace A310072.P5209394474927879211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A080871 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310072.P5209394474927879211

/-!
# A310073: Coordination sequence Gal.6.3.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310073, there is no canonical definition to state claims against.
-/

/-! ## A310073.P13949670194930614027

`or(A040001(A018027(n)), A113127(n))`
-/

namespace A310073.P13949670194930614027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040001 (A018027 n).toNat) (A113127 n)

end

end A310073.P13949670194930614027

/-! ## A310073.P3492815015635309192

`or(A006345(A078483(n)), A113127(n))`
-/

namespace A310073.P3492815015635309192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006345 (A078483 n).toNat) (A113127 n)

end

end A310073.P3492815015635309192

/-! ## A310073.P6868904797525186748

`or(A006345(A078483(n)), A130824(n))`
-/

namespace A310073.P6868904797525186748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006345 (A078483 n).toNat) (A130824 n)

end

end A310073.P6868904797525186748

/-! ## A310073.P13354097472345476848

`A113127(n)+A007423(A175202(n+1))`
-/

namespace A310073.P13354097472345476848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n + A007423 (A175202 (n + 1)).toNat

end

end A310073.P13354097472345476848

/-! ## A310073.P2186582521147600201

`A246142(A049101(n+2))+A130824(n)`
-/

namespace A310073.P2186582521147600201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246142 (A049101 (n + 2)).toNat + A130824 n

end

end A310073.P2186582521147600201

/-!
# A310074: Coordination sequence Gal.4.27.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310074, there is no canonical definition to state claims against.
-/

/-! ## A310074.P7875965027355050148

`A311585(n)-A109301(A111794(n+1))`
-/

namespace A310074.P7875965027355050148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311585 n - A109301 (A111794 (n + 1)).toNat

end

end A310074.P7875965027355050148

/-! ## A310074.P2090403609211871430

`∑[∑[A321763(A330107(n+1))]]`
-/

namespace A310074.P2090403609211871430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321763 (A330107 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310074.P2090403609211871430

/-! ## A310074.P456572417313568652

`∑[∑[A008683(A147218(n+2))]]`
-/

namespace A310074.P456572417313568652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A147218 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310074.P456572417313568652

/-! ## A310074.P15079393375070610961

`A375053(n)-A375032(A003418(n))`
-/

namespace A310074.P15079393375070610961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375053 n - A375032 (A003418 n).toNat

end

end A310074.P15079393375070610961

/-! ## A310074.P9677815412273464842

`or(A001221(A208220(n)), A113127(n))`
-/

namespace A310074.P9677815412273464842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A208220 n).toNat) (A113127 n)

end

end A310074.P9677815412273464842

/-!
# A310075: Coordination sequence Gal.6.4.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310075, there is no canonical definition to state claims against.
-/

/-! ## A310075.P13003886852855498857

`∑[A272020(∑[A064831(n)])]`
-/

namespace A310075.P13003886852855498857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272020 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310075.P13003886852855498857

/-! ## A310075.P8426933455229871573

`∑[A240975(3^n+(n+1)*Δ[n^3])]`
-/

namespace A310075.P8426933455229871573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240975 ((3 ^ n : ℤ) + (n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310075.P8426933455229871573

/-! ## A310075.P17525735466041041652

`∑[∑[A158854(A217526(n))]]`
-/

namespace A310075.P17525735466041041652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158854 (A217526 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310075.P17525735466041041652

/-! ## A310075.P7033003212549808274

`∑[A194917(record[A001612(n)])]`
-/

namespace A310075.P7033003212549808274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194917 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310075.P7033003212549808274

/-! ## A310075.P3690208954522921444

`∑[∑[A195840(A187120(n+3))]]`
-/

namespace A310075.P3690208954522921444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195840 (A187120 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310075.P3690208954522921444

/-!
# A310076: Coordination sequence Gal.5.1.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310076, there is no canonical definition to state claims against.
-/

/-! ## A310076.P3591865131200279049

`A033627(n+1)+A001222(A120834(n+1))`
-/

namespace A310076.P3591865131200279049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1) + A001222 (A120834 (n + 1)).toNat

end

end A310076.P3591865131200279049

/-! ## A310076.P17206197115479538275

`∑[∑[A011650(A000073(n))]]`
-/

namespace A310076.P17206197115479538275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011650 (A000073 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310076.P17206197115479538275

/-! ## A310076.P7220633827612971507

`∑[A085082(∑[A157003(n)])]`
-/

namespace A310076.P7220633827612971507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157003 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310076.P7220633827612971507

/-! ## A310076.P334369902359123699

`∑[A181796(∑[A157003(n)])]`
-/

namespace A310076.P334369902359123699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157003 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181796 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310076.P334369902359123699

/-! ## A310076.P10272968758041249877

`∑[∑[A099916(A357620(n))]]`
-/

namespace A310076.P10272968758041249877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099916 (A357620 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310076.P10272968758041249877

/-!
# A310077: Coordination sequence Gal.6.5.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310077, there is no canonical definition to state claims against.
-/

/-! ## A310077.P6170440153264468865

`A313152(n)-record[A001222(A090178(n+1)-1)]`
-/

namespace A310077.P6170440153264468865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A090178 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313152 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310077.P6170440153264468865

/-! ## A310077.P9474712470707911090

`A310078(n)-A185284(A310094(n))`
-/

namespace A310077.P9474712470707911090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310078 n - A185284 (A310094 n).toNat

end

end A310077.P9474712470707911090

/-! ## A310077.P3118528510180697823

`A056594(A210143(n+1))+A050607(3*n+2)`
-/

namespace A310077.P3118528510180697823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A210143 (n + 1)).toNat + A050607 (3 * n + 2)

end

end A310077.P3118528510180697823

/-! ## A310077.P11507367487155088372

`∑[∑[A016353(A002991(n))]]`
-/

namespace A310077.P11507367487155088372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016353 (A002991 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310077.P11507367487155088372

/-! ## A310077.P9542207818446496174

`∑[∑[A178948(A112837(n))]]`
-/

namespace A310077.P9542207818446496174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178948 (A112837 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310077.P9542207818446496174

/-!
# A310078: Coordination sequence Gal.6.39.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310078, there is no canonical definition to state claims against.
-/

/-! ## A310078.P8699919394192602268

`∑[∑[A014025(A061991(n))]]`
-/

namespace A310078.P8699919394192602268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014025 (A061991 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310078.P8699919394192602268

/-! ## A310078.P12863507063257578743

`∑[∑[A030203(A270806(n))]]`
-/

namespace A310078.P12863507063257578743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030203 (A270806 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310078.P12863507063257578743

/-! ## A310078.P45817308638163851

`∑[∑[A121373(A350827(n+1))]]`
-/

namespace A310078.P45817308638163851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A350827 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310078.P45817308638163851

/-! ## A310078.P14370991076192650768

`∑[∑[A121373(A180503(n+2))]]`
-/

namespace A310078.P14370991076192650768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A180503 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310078.P14370991076192650768

/-! ## A310078.P12012235259568088657

`∑[∑[A014879(A122025(n))]]`
-/

namespace A310078.P12012235259568088657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014879 (A122025 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310078.P12012235259568088657

/-!
# A310080: Coordination sequence Gal.6.83.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310080, there is no canonical definition to state claims against.
-/

/-! ## A310080.P2876597412841098354

`∑[∑[1-A056980(A056940(3*n+2))²]]`
-/

namespace A310080.P2876597412841098354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A056980 (A056940 (3 * n + 2)).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310080.P2876597412841098354

/-! ## A310080.P6704213700002819006

`∑[∑[A002487(A056398(n+1)+1)%7]%7]`
-/

namespace A310080.P6704213700002819006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002487 (A056398 (n + 1) + 1).toNat) 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310080.P6704213700002819006

/-! ## A310080.P16274189509464170935

`A331400(3*n+1)-round(sqrt(A133278(n+1)))`
-/

namespace A310080.P16274189509464170935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331400 (3 * n + 1) - SequenceMachineLib.roundAway (Real.sqrt (A133278 (n + 1) : ℝ))

end

end A310080.P16274189509464170935

/-! ## A310080.P6392315096612374455

`∑[A176353(8*n)]`
-/

namespace A310080.P6392315096612374455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176353 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310080.P6392315096612374455

/-! ## A310080.P8590656381572276106

`∑[∑[A356098(C(n, 4))]]`
-/

namespace A310080.P8590656381572276106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356098 (Nat.choose n 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310080.P8590656381572276106

/-!
# A310081: Coordination sequence Gal.6.82.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310081, there is no canonical definition to state claims against.
-/

/-! ## A310081.P13424806723493397220

`A333525(A025488(n))+A310168(n)`
-/

namespace A310081.P13424806723493397220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333525 (A025488 n).toNat + A310168 n

end

end A310081.P13424806723493397220

/-! ## A310081.P1904904786626863825

`∑[∑[A101675(A306558(n))]]`
-/

namespace A310081.P1904904786626863825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 (A306558 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310081.P1904904786626863825

/-! ## A310081.P14023202510885394101

`∑[∑[A321764(A296188(n+3))]]`
-/

namespace A310081.P14023202510885394101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321764 (A296188 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310081.P14023202510885394101

/-! ## A310081.P16304641515307865585

`record[A057956(n+1)-A201910(n+1)]`
-/

namespace A310081.P16304641515307865585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057956 (n + 1) - A201910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310081.P16304641515307865585

/-! ## A310081.P16625695304661157398

`∑[A242094(2*(n+1))-A030050(n+1)]`
-/

namespace A310081.P16625695304661157398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242094 (2 * (n + 1)) - A030050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310081.P16625695304661157398

/-!
# A310089: Coordination sequence Gal.6.42.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310089, the canonical program `A310089.P885802288201280131` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310089 has offset 0).

The definition of A310089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310089.P885802288201280131

`ogf((1+3x+6x^2+11x^3+13x^4+14x^5+13x^6+10x^7+7x^8+3x^9+x^10)/(1-2x^5+x^10))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A310089

/-- `ogf((1+3x+6x^2+11x^3+13x^4+14x^5+13x^6+10x^7+7x^8+3x^9+x^10)/(1-2x^5+x^10))` -/
def P885802288201280131.Spec : Prop :=
  ∀ n, P885802288201280131.a n = A310089 n

theorem P885802288201280131.correct : P885802288201280131.Spec := by
  intro n
  simp only [A310089]

end A310089

/-! ## A310089.P12680474428041552739

`A310155(2*n)/A040001(2*n)`
-/

namespace A310089.P12680474428041552739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310155 (2 * n) : ℚ) / (A040001 (2 * n) : ℚ)

end

end A310089.P12680474428041552739

namespace A310089

/-- `A310155(2*n)/A040001(2*n)` -/
def P12680474428041552739.Spec : Prop :=
  ∀ n, P12680474428041552739.a n = (A310089 n : ℚ)

end A310089

/-! ## A310089.P16533073760787101533

`A310155(2*n)/(4*n+1-A004273(2*n))`
-/

namespace A310089.P16533073760787101533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310155 (2 * n) : ℚ) / ((4 * n + 1 : ℤ) - A004273 (2 * n) : ℚ)

end

end A310089.P16533073760787101533

namespace A310089

/-- `A310155(2*n)/(4*n+1-A004273(2*n))` -/
def P16533073760787101533.Spec : Prop :=
  ∀ n, P16533073760787101533.a n = (A310089 n : ℚ)

end A310089

/-! ## A310089.P11812120254587191136

`A310155(2*n)/A061142(A020639(n+1))`
-/

namespace A310089.P11812120254587191136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310155 (2 * n) : ℚ) / (A061142 (A020639 (n + 1)).toNat : ℚ)

end

end A310089.P11812120254587191136

namespace A310089

/-- `A310155(2*n)/A061142(A020639(n+1))` -/
def P11812120254587191136.Spec : Prop :=
  ∀ n, P11812120254587191136.a n = (A310089 n : ℚ)

end A310089

/-! ## A310089.P7270311599753432452

`A004525(A310155(2*n))`
-/

namespace A310089.P7270311599753432452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310155 (2 * n)).toNat

end

end A310089.P7270311599753432452

namespace A310089

/-- `A004525(A310155(2*n))` -/
def P7270311599753432452.Spec : Prop :=
  ∀ n, P7270311599753432452.a n = A310089 n

end A310089

/-! ## A310089.P7351890094585658540

`A032742(A310155(n+n))`
-/

namespace A310089.P7351890094585658540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A310155 (n + n)).toNat

end

end A310089.P7351890094585658540

namespace A310089

/-- `A032742(A310155(n+n))` -/
def P7351890094585658540.Spec : Prop :=
  ∀ n, P7351890094585658540.a n = A310089 n

end A310089

/-! ## A310089.P13711841690175132850

`A004526(A310155(2*n)+1)`
-/

namespace A310089.P13711841690175132850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310155 (2 * n) + 1).toNat

end

end A310089.P13711841690175132850

namespace A310089

/-- `A004526(A310155(2*n)+1)` -/
def P13711841690175132850.Spec : Prop :=
  ∀ n, P13711841690175132850.a n = A310089 n

end A310089

/-! ## A310089.P3037091210322325176

`A004526(A310155(A004273(n)+1))`
-/

namespace A310089.P3037091210322325176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310155 (A004273 n + 1).toNat).toNat

end

end A310089.P3037091210322325176

namespace A310089

/-- `A004526(A310155(A004273(n)+1))` -/
def P3037091210322325176.Spec : Prop :=
  ∀ n, P3037091210322325176.a n = A310089 n

end A310089

/-!
# A310096: Coordination sequence Gal.4.15.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310096, the canonical program `A310096.P1184609081319931168` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310096 has offset 0).

The definition of A310096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310096.P1184609081319931168

`ogf((1+2x+4x^2+7x^3+8x^4+9x^5+9x^6+8x^7+6x^8+5x^9+2x^10+x^11)/(1-x+x^2-x^3+x^4-x^5-x^6+x^7-x^8+x^9-x^10+x^11))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A310096

/-- `ogf((1+2x+4x^2+7x^3+8x^4+9x^5+9x^6+8x^7+6x^8+5x^9+2x^10+x^11)/(1-x+x^2-x^3+x^4-x^5-x^6+x^7-x^8+x^9-x^10+x^11))` -/
def P1184609081319931168.Spec : Prop :=
  ∀ n, P1184609081319931168.a n = A310096 n

theorem P1184609081319931168.correct : P1184609081319931168.Spec := by
  intro n
  simp only [A310096]

end A310096

/-! ## A310096.P10207251406975347304

`A375398(2*n+1)+A139351(A014334(n))`
-/

namespace A310096.P10207251406975347304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375398 (2 * n + 1) + A139351 (A014334 n).toNat

end

end A310096.P10207251406975347304

namespace A310096

/-- `A375398(2*n+1)+A139351(A014334(n))` -/
def P10207251406975347304.Spec : Prop :=
  ∀ n, P10207251406975347304.a n = A310096 n

end A310096

/-!
# A310098: Coordination sequence Gal.6.49.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310098, there is no canonical definition to state claims against.
-/

/-! ## A310098.P11695166635221875559

`A002264(xor(A032559(n+1), A106856(n+1)))`
-/

namespace A310098.P11695166635221875559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.xor (A032559 (n + 1)) (A106856 (n + 1))).toNat

end

end A310098.P11695166635221875559

/-! ## A310098.P3899201951208282603

`A002264(xor(A082217(n+1), A106856(n+1)))`
-/

namespace A310098.P3899201951208282603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.xor (A082217 (n + 1)) (A106856 (n + 1))).toNat

end

end A310098.P3899201951208282603

/-! ## A310098.P7016146298915758817

`lt[A330411(n+1), A000217(A000005(n+1))]`
-/

namespace A310098.P7016146298915758817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A310098.P7016146298915758817

/-! ## A310098.P17528060366492895884

`A333489(2*n+3)-A000002(A125248(n+1))`
-/

namespace A310098.P17528060366492895884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (2 * n + 3) - A000002 (A125248 (n + 1)).toNat

end

end A310098.P17528060366492895884

/-! ## A310098.P14227346055924549225

`A008486(A047263(n+1))-A079635(A000110(n))`
-/

namespace A310098.P14227346055924549225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A047263 (n + 1)).toNat - A079635 (A000110 n).toNat

end

end A310098.P14227346055924549225

