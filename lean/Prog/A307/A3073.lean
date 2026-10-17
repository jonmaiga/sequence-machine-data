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
import Seq.B000.C016
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
import Seq.B000.C031
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
import Seq.B002.C005
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
import Seq.Opaque.C024

/-!
# A307300: Array read by antidiagonals: Sprague-Grundy values for the game NimHof with rules [1,0], [2,2], [0,1].

The programs for A307300, there is no canonical definition to state claims against.
-/

/-! ## A307300.P8479682713464230929

`xor(A003188(A004198(n)), A003986(n))`
-/

namespace A307300.P8479682713464230929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003188 (A004198 n).toNat) (A003986 n)

end

end A307300.P8479682713464230929

/-! ## A307300.P5583172075184482029

`xor(A003987(n), A004526(A004198(n)))`
-/

namespace A307300.P5583172075184482029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003987 n) (A004526 (A004198 n).toNat)

end

end A307300.P5583172075184482029

/-! ## A307300.P14607298842335586025

`xor(A002265(A221146(n)), A003987(n))`
-/

namespace A307300.P14607298842335586025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002265 (A221146 n).toNat) (A003987 n)

end

end A307300.P14607298842335586025

/-! ## A307300.P12800589847986667461

`xor(A003986(n), A268820(A286099(n)))`
-/

namespace A307300.P12800589847986667461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003986 n) (A268820 (A286099 n).toNat)

end

end A307300.P12800589847986667461

/-! ## A307300.P1724661690251951962

`xor(A280172(n+1)-1, A004526(A004198(n)))`
-/

namespace A307300.P1724661690251951962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A280172 (n + 1) - 1) (A004526 (A004198 n).toNat)

end

end A307300.P1724661690251951962

/-! ## A307300.P11674483161585438831

`xor(A280172(n+1)-1, A002265(A221146(n)))`
-/

namespace A307300.P11674483161585438831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A280172 (n + 1) - 1) (A002265 (A221146 n).toNat)

end

end A307300.P11674483161585438831

/-! ## A307300.P10232858696355392559

`A253315(A271710(n)+A004198(n))`
-/

namespace A307300.P10232858696355392559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 (A271710 n + A004198 n).toNat

end

end A307300.P10232858696355392559

/-! ## A307300.P15736645821762915140

`A253315(or(A004198(n), A271710(n)))`
-/

namespace A307300.P15736645821762915140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 (Int.lor (A004198 n) (A271710 n)).toNat

end

end A307300.P15736645821762915140

/-!
# A307301: Array read by antidiagonals: Sprague-Grundy values for the game NimHof with rules [1,0], [3,1], [0,1].

The programs for A307301, there is no canonical definition to state claims against.
-/

/-! ## A307301.P17152489991504342910

`A003987(n)*A098950(A321312(n))`
-/

namespace A307301.P17152489991504342910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n * A098950 (A321312 n).toNat

end

end A307301.P17152489991504342910

/-! ## A307301.P8064288901363400398

`A178780(A284949(n+1))+A003987(n)`
-/

namespace A307301.P8064288901363400398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 (A284949 (n + 1)).toNat + A003987 n

end

end A307301.P8064288901363400398

/-! ## A307301.P13256744202787725919

`A003987(n)*A108714(A346491(n+1))`
-/

namespace A307301.P13256744202787725919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n * A108714 (A346491 (n + 1)).toNat

end

end A307301.P13256744202787725919

/-! ## A307301.P10286249468472364128

`A003987(n)*A327482(A345112(2*n+5))`
-/

namespace A307301.P10286249468472364128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n * A327482 (A345112 (2 * n + 5)).toNat

end

end A307301.P10286249468472364128

/-! ## A307301.P1259763774083814568

`A003987(n)*A367931(A258220(n))`
-/

namespace A307301.P1259763774083814568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n * A367931 (A258220 n).toNat

end

end A307301.P1259763774083814568

/-!
# A307302: Array read by antidiagonals: Sprague-Grundy values for the game NimHof with rules [1,0], [3,3], [0,1].

The programs for A307302, there is no canonical definition to state claims against.
-/

/-! ## A307302.P4662998869996001278

`A307297(n)%A141214(A250470(n+1))`
-/

namespace A307302.P4662998869996001278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307297 n) (A141214 (A250470 (n + 1)).toNat)

end

end A307302.P4662998869996001278

/-! ## A307302.P13826271451031448549

`A307297(n)%A141214(A249151(n))`
-/

namespace A307302.P13826271451031448549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307297 n) (A141214 (A249151 n).toNat)

end

end A307302.P13826271451031448549

/-! ## A307302.P2717950048137198530

`A147308(A328362(3*n+2))*A307297(n)`
-/

namespace A307302.P2717950048137198530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147308 (A328362 (3 * n + 2)).toNat * A307297 n

end

end A307302.P2717950048137198530

/-! ## A307302.P8201721494151055744

`A307297(n%A010947(n))`
-/

namespace A307302.P8201721494151055744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307297 (Int.tmod (n : ℤ) (A010947 n)).toNat

end

end A307302.P8201721494151055744

/-!
# A307303: Triangle T(n, k) read as upwards antidiagonals of array A, where A(n, k) is the number of families (also called classes) of proper solutions of the Pell equation x^2 - D(n)*y^2 = -k, for k >= 1.

The programs for A307303, there is no canonical definition to state claims against.
-/

/-! ## A307303.P14557454962433483081

`A266227(n+5)*A324252(n+1)`
-/

namespace A307303.P14557454962433483081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (n + 5) * A324252 (n + 1)

end

end A307303.P14557454962433483081

/-! ## A307303.P17229867363490727886

`and(A136053(n+1), A324252(n+1))`
-/

namespace A307303.P17229867363490727886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A136053 (n + 1)) (A324252 (n + 1))

end

end A307303.P17229867363490727886

/-! ## A307303.P8278121786931692908

`Δ[A242031(n+4)]*A324252(n+1)`
-/

namespace A307303.P8278121786931692908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242031 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A324252 (n + 1)

end

end A307303.P8278121786931692908

/-! ## A307303.P15023731077659269443

`A324252(n+1)+char[A053171(n+1)]`
-/

namespace A307303.P15023731077659269443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053171 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324252 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A307303.P15023731077659269443

/-! ## A307303.P15982682296723641515

`A324252(n+1)+char[A325992(n+3)]`
-/

namespace A307303.P15982682296723641515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325992 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324252 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A307303.P15982682296723641515

/-! ## A307303.P4154564068934254437

`A324252(n+1)+char[A168668(n+4)]`
-/

namespace A307303.P4154564068934254437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168668 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324252 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A307303.P4154564068934254437

/-! ## A307303.P12485987133708728314

`A324252(n+1)^A112624(3*n+1)`
-/

namespace A307303.P12485987133708728314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324252 (n + 1) : ℚ) ^ (A112624 (3 * n + 1) : ℤ)

end

end A307303.P12485987133708728314

/-! ## A307303.P8893616762837265505

`A324252((n+1)%A005940(3*n+2))`
-/

namespace A307303.P8893616762837265505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324252 (Int.tmod (n + 1 : ℤ) (A005940 (3 * n + 2))).toNat

end

end A307303.P8893616762837265505

/-! ## A307303.P18130181515275178851

`A324252(n+1)+A010054(A048925(n))`
-/

namespace A307303.P18130181515275178851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324252 (n + 1) + A010054 (A048925 n).toNat

end

end A307303.P18130181515275178851

/-! ## A307303.P15164943733813142863

`A332286(A049502(n))+A324252(n+1)`
-/

namespace A307303.P15164943733813142863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332286 (A049502 n).toNat + A324252 (n + 1)

end

end A307303.P15164943733813142863

/-!
# A307304: Number of inequivalent ways of placing 2 nonattacking rooks on n X n board up to rotations and reflections of the board.

The programs for A307304, the canonical program `A307304.P16711502216985444807` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307304 has offset 1).

The definition of A307304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307304.P2975271976157973090

`∑[(ceil(n²/2)+1)*n/2]`
-/

namespace A307304.P2975271976157973090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(n ^ 2 : ℚ) / 2⌉ + 1 : ℚ) * ((n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307304.P2975271976157973090

namespace A307304

/-- `∑[(ceil(n²/2)+1)*n/2]` -/
def P2975271976157973090.Spec : Prop :=
  ∀ n, P2975271976157973090.a n = (A307304 (n + 1) : ℚ)

end A307304

/-! ## A307304.P3695644984795514372

`∑[n*(4-gcd(2, n)+n²)]/4`
-/

namespace A307304.P3695644984795514372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (4 - (Nat.gcd 2 n : ℤ) + (n ^ 2 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A307304.P3695644984795514372

namespace A307304

/-- `∑[n*(4-gcd(2, n)+n²)]/4` -/
def P3695644984795514372.Spec : Prop :=
  ∀ n, P3695644984795514372.a n = (A307304 (n + 1) : ℚ)

end A307304

/-! ## A307304.P1569739524066099314

`∑[n*∑[a(n-2)+4]]/4` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A307304.P1569739524066099314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2] fun n f2 =>
  f2 (n - 2) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4

end

end A307304.P1569739524066099314

namespace A307304

/-- `∑[n*∑[a(n-2)+4]]/4` -/
def P1569739524066099314.Spec : Prop :=
  ∀ n, P1569739524066099314.a n = (A307304 (n + 1) : ℚ)

end A307304

/-! ## A307304.P5190136286709484209

`∑[A020875(n)]/4`
-/

namespace A307304.P5190136286709484209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020875 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A307304.P5190136286709484209

namespace A307304

/-- `∑[A020875(n)]/4` -/
def P5190136286709484209.Spec : Prop :=
  ∀ n, P5190136286709484209.a n = (A307304 (n + 1) : ℚ)

end A307304

/-! ## A307304.P4183030759604721917

`∑[n*(A000982(n)+1)]/2`
-/

namespace A307304.P4183030759604721917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000982 n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A307304.P4183030759604721917

namespace A307304

/-- `∑[n*(A000982(n)+1)]/2` -/
def P4183030759604721917.Spec : Prop :=
  ∀ n, P4183030759604721917.a n = (A307304 (n + 1) : ℚ)

end A307304

/-! ## A307304.P2710478708150386014

`∑[n*(A000040(gcd(n+1, 2*n))+n²)]/4`
-/

namespace A307304.P2710478708150386014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000040 (Nat.gcd (n + 1) (2 * n)) + (n ^ 2 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A307304.P2710478708150386014

namespace A307304

/-- `∑[n*(A000040(gcd(n+1, 2*n))+n²)]/4` -/
def P2710478708150386014.Spec : Prop :=
  ∀ n, P2710478708150386014.a n = (A307304 (n + 1) : ℚ)

end A307304

/-! ## A307304.P16711502216985444807

`A109900(n)+A011863(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A307304

/-- `A109900(n)+A011863(n)` -/
def P16711502216985444807.Spec : Prop :=
  ∀ n, P16711502216985444807.a n = A307304 (n + 1)

theorem P16711502216985444807.correct : P16711502216985444807.Spec := by
  intro n
  simp only [A307304, Nat.add_sub_cancel]

end A307304

/-! ## A307304.P3833493316372369772

`A330520(n)+A001318(n)`
-/

namespace A307304.P3833493316372369772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330520 n + A001318 n

end

end A307304.P3833493316372369772

namespace A307304

/-- `A330520(n)+A001318(n)` -/
def P3833493316372369772.Spec : Prop :=
  ∀ n, P3833493316372369772.a n = A307304 (n + 1)

end A307304

/-! ## A307304.P15110841943546568822

`A002817(n)-A330520(n)`
-/

namespace A307304.P15110841943546568822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n - A330520 n

end

end A307304.P15110841943546568822

namespace A307304

/-- `A002817(n)-A330520(n)` -/
def P15110841943546568822.Spec : Prop :=
  ∀ n, P15110841943546568822.a n = A307304 (n + 1)

end A307304

/-! ## A307304.P13429904102031587854

`A238604(n)-A242601(n)`
-/

namespace A307304.P13429904102031587854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238604 n - A242601 n

end

end A307304.P13429904102031587854

namespace A307304

/-- `A238604(n)-A242601(n)` -/
def P13429904102031587854.Spec : Prop :=
  ∀ n, P13429904102031587854.a n = A307304 (n + 1)

end A307304

/-! ## A307304.P13852346783984156853

`∑[A246695(n)]-A246695(n)`
-/

namespace A307304.P13852346783984156853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A246695 n

end

end A307304.P13852346783984156853

namespace A307304

/-- `∑[A246695(n)]-A246695(n)` -/
def P13852346783984156853.Spec : Prop :=
  ∀ n, P13852346783984156853.a n = A307304 (n + 1)

end A307304

/-! ## A307304.P16894735190179687307

`A011863(n+1)-A034828(n)`
-/

namespace A307304.P16894735190179687307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 (n + 1) - A034828 n

end

end A307304.P16894735190179687307

namespace A307304

/-- `A011863(n+1)-A034828(n)` -/
def P16894735190179687307.Spec : Prop :=
  ∀ n, P16894735190179687307.a n = A307304 (n + 1)

end A307304

/-! ## A307304.P6735958880786635614

`(A002817(n)+A001318(n))/2`
-/

namespace A307304.P6735958880786635614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002817 n + A001318 n : ℚ) / 2

end

end A307304.P6735958880786635614

namespace A307304

/-- `(A002817(n)+A001318(n))/2` -/
def P6735958880786635614.Spec : Prop :=
  ∀ n, P6735958880786635614.a n = (A307304 (n + 1) : ℚ)

end A307304

/-! ## A307304.P1892891415543915087

`A001318(n)+∑[n*A002620(n)]`
-/

namespace A307304.P1892891415543915087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307304.P1892891415543915087

namespace A307304

/-- `A001318(n)+∑[n*A002620(n)]` -/
def P1892891415543915087.Spec : Prop :=
  ∀ n, P1892891415543915087.a n = A307304 (n + 1)

end A307304

/-! ## A307304.P5965835100814311515

`A014409(n+1)-A210433(n+1)`
-/

namespace A307304.P5965835100814311515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014409 (n + 1) - A210433 (n + 1)

end

end A307304.P5965835100814311515

namespace A307304

/-- `A014409(n+1)-A210433(n+1)` -/
def P5965835100814311515.Spec : Prop :=
  ∀ n, P5965835100814311515.a n = A307304 (n + 1)

end A307304

/-! ## A307304.P13544164255012970636

`A235355(n)+A002620(n)*A033638(n)`
-/

namespace A307304.P13544164255012970636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n + A002620 n * A033638 n

end

end A307304.P13544164255012970636

namespace A307304

/-- `A235355(n)+A002620(n)*A033638(n)` -/
def P13544164255012970636.Spec : Prop :=
  ∀ n, P13544164255012970636.a n = A307304 (n + 1)

end A307304

/-! ## A307304.P14202642461890044314

`A001318(n)+A002620(n+1)*A002620(n)`
-/

namespace A307304.P14202642461890044314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + A002620 (n + 1) * A002620 n

end

end A307304.P14202642461890044314

namespace A307304

/-- `A001318(n)+A002620(n+1)*A002620(n)` -/
def P14202642461890044314.Spec : Prop :=
  ∀ n, P14202642461890044314.a n = A307304 (n + 1)

end A307304

/-! ## A307304.P7157462068393398266

`A034828(n+1)+A011863(n)`
-/

namespace A307304.P7157462068393398266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (n + 1) + A011863 n

end

end A307304.P7157462068393398266

namespace A307304

/-- `A034828(n+1)+A011863(n)` -/
def P7157462068393398266.Spec : Prop :=
  ∀ n, P7157462068393398266.a n = A307304 (n + 1)

end A307304

/-! ## A307304.P4659118010818320256

`A034828(n+1)+A330520(n)-A034828(n)`
-/

namespace A307304.P4659118010818320256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (n + 1) + (A330520 n - A034828 n)

end

end A307304.P4659118010818320256

namespace A307304

/-- `A034828(n+1)+A330520(n)-A034828(n)` -/
def P4659118010818320256.Spec : Prop :=
  ∀ n, P4659118010818320256.a n = A307304 (n + 1)

end A307304

/-! ## A307304.P10858606260936142303

`A000217(A110654(n)²)+A000217(A110660(n))`
-/

namespace A307304.P10858606260936142303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A110654 n ^ 2).toNat + A000217 (A110660 n).toNat

end

end A307304.P10858606260936142303

namespace A307304

/-- `A000217(A110654(n)²)+A000217(A110660(n))` -/
def P10858606260936142303.Spec : Prop :=
  ∀ n, P10858606260936142303.a n = A307304 (n + 1)

end A307304

/-!
# A307305: Self-composition of the number of divisors function (A000005).

The programs for A307305, there is no canonical definition to state claims against.
-/

/-! ## A307305.P7851859348356551334

`A022290(A037130(n))+A000079(n)`
-/

namespace A307305.P7851859348356551334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A037130 n).toNat + A000079 n

end

end A307305.P7851859348356551334

/-! ## A307305.P10565859682413027386

`A168090(3*n)+A022290(A037130(n))`
-/

namespace A307305.P10565859682413027386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168090 (3 * n) + A022290 (A037130 n).toNat

end

end A307305.P10565859682413027386

/-!
# A307306: Self-composition of the sum of divisors function (A000203).

The programs for A307306, there is no canonical definition to state claims against.
-/

/-! ## A307306.P18059335854429362472

`or(A324892(A058891(n+1)+1)-1, A327067(2*n+1))`
-/

namespace A307306.P18059335854429362472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A324892 (A058891 (n + 1) + 1).toNat - 1) (A327067 (2 * n + 1))

end

end A307306.P18059335854429362472

/-!
# A307307: a(n) is the forgotten index of the Lucas cube Lambda(n).

The programs for A307307, there is no canonical definition to state claims against.
-/

/-! ## A307307.P232610214407910945

`A065361(10*A026306(n))`
-/

namespace A307307.P232610214407910945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (10 * A026306 n).toNat

end

end A307307.P232610214407910945

/-!
# A307308: Self-composition of the Euler totient function (A000010).

The programs for A307308, there is no canonical definition to state claims against.
-/

/-! ## A307308.P9794520632213483328

`A113961(A055775(n))+∑[A129984(n)]`
-/

namespace A307308.P9794520632213483328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113961 (A055775 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307308.P9794520632213483328

/-! ## A307308.P11510727734528048798

`A049611(n)+A034444(A103466(n+1))`
-/

namespace A307308.P11510727734528048798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n + A034444 (A103466 (n + 1)).toNat

end

end A307308.P11510727734528048798

/-! ## A307308.P8210864900716022920

`A262689(A053529(n))+A097067(n+1)`
-/

namespace A307308.P8210864900716022920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A053529 n).toNat + A097067 (n + 1)

end

end A307308.P8210864900716022920

/-!
# A307309: Self-composition of the Dedekind psi function (A001615).

The programs for A307309, there is no canonical definition to state claims against.
-/

/-! ## A307309.P11649036482963079605

`A186314(n+2)-A178105(A075251(n+3))`
-/

namespace A307309.P11649036482963079605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186314 (n + 2) - A178105 (A075251 (n + 3)).toNat

end

end A307309.P11649036482963079605

/-!
# A307310: Expansion of Product_{k>=1} (1 - x^k/(1 - x)^k).

The programs for A307310, there is no canonical definition to state claims against.
-/

/-! ## A307310.P3915199257083472907

`A052467(A135523(4^n+1)+n)-A000217(n)`
-/

namespace A307310.P3915199257083472907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052467 (A135523 (4 ^ n + 1) + (n : ℤ)).toNat - A000217 n

end

end A307310.P3915199257083472907

/-!
# A307312: Underline all even terms; concatenations of underlined terms and of non-underlined terms both equal the concatenation of the entire sequence. This is the lexicographically earliest such sequence without duplicate terms and with an even digit among the first two terms.

The programs for A307312, there is no canonical definition to state claims against.
-/

/-! ## A307312.P10126057460894318139

`A007931(∑{e}[A016326(n), #]+1)`
-/

namespace A307312.P10126057460894318139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1)

end

end A307312.P10126057460894318139

/-!
# A307313: a(n) is the denominator of n/2^(length of the binary representation of n).

The programs for A307313, the canonical program `A307313.P17841615215202485845` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307313 has offset 1).

The definition of A307313 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A307313.P17841615215202485845

`2^A070940(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A307313

/-- `2^A070940(n+1)` -/
def P17841615215202485845.Spec : Prop :=
  ∀ n, P17841615215202485845.a n = (A307313 (n + 1) : ℚ)

end A307313

/-! ## A307313.P744957589547683815

`2^(floor(log2(n+1))-val(n+1, 2)+1)`
-/

namespace A307313.P744957589547683815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.log 2 (n + 1) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ) + 1 : ℤ)

end

end A307313.P744957589547683815

namespace A307313

/-- `2^(floor(log2(n+1))-val(n+1, 2)+1)` -/
def P744957589547683815.Spec : Prop :=
  ∀ n, P744957589547683815.a n = (A307313 (n + 1) : ℚ)

end A307313

/-! ## A307313.P2717691956413873702

`gcd(n+2, a(n-1))*a(floor(n/2))` with `a(0)=2`
-/

namespace A307313.P2717691956413873702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd (n + 2) (a (n - 1)) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A307313.P2717691956413873702

namespace A307313

/-- `gcd(n+2, a(n-1))*a(floor(n/2))` -/
def P2717691956413873702.Spec : Prop :=
  ∀ n, (P2717691956413873702.a n : ℤ) = A307313 (n + 1)

end A307313

/-! ## A307313.P15421081371329115585

`a(n-1)/gcd(n+1, a(n-2))*gcd(n, a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A307313.P15421081371329115585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 2))) : ℚ) * (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (a (n - 2))) : ℚ)

end

end A307313.P15421081371329115585

namespace A307313

/-- `a(n-1)/gcd(n+1, a(n-2))*gcd(n, a(n-2))` -/
def P15421081371329115585.Spec : Prop :=
  ∀ n, P15421081371329115585.a n = (A307313 (n + 1) : ℚ)

end A307313

/-! ## A307313.P13874032656474081982

`2*A082908(n)`
-/

namespace A307313.P13874032656474081982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082908 n

end

end A307313.P13874032656474081982

namespace A307313

/-- `2*A082908(n)` -/
def P13874032656474081982.Spec : Prop :=
  ∀ n, P13874032656474081982.a n = A307313 (n + 1)

end A307313

/-! ## A307313.P14704567352952658372

`2^(A119387(n)+1)`
-/

namespace A307313.P14704567352952658372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A119387 n + 1 : ℤ)

end

end A307313.P14704567352952658372

namespace A307313

/-- `2^(A119387(n)+1)` -/
def P14704567352952658372.Spec : Prop :=
  ∀ n, P14704567352952658372.a n = (A307313 (n + 1) : ℚ)

end A307313

/-! ## A307313.P14236578287024871493

`2^A070939(floor(n/and(n+1, -(n+1))))`
-/

namespace A307313.P14236578287024871493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A070939 ⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋.toNat : ℤ)

end

end A307313.P14236578287024871493

namespace A307313

/-- `2^A070939(floor(n/and(n+1, -(n+1))))` -/
def P14236578287024871493.Spec : Prop :=
  ∀ n, P14236578287024871493.a n = (A307313 (n + 1) : ℚ)

end A307313

/-! ## A307313.P633196346002198374

`2^A070939((n+1)/and(n+1, -(n+1)))`
-/

namespace A307313.P633196346002198374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A070939 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat : ℤ)

end

end A307313.P633196346002198374

namespace A307313

/-- `2^A070939((n+1)/and(n+1, -(n+1)))` -/
def P633196346002198374.Spec : Prop :=
  ∀ n, P633196346002198374.a n = (A307313 (n + 1) : ℚ)

end A307313

/-! ## A307313.P14874712172221049822

`A004277(A082908(n))`
-/

namespace A307313.P14874712172221049822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A082908 n).toNat

end

end A307313.P14874712172221049822

namespace A307313

/-- `A004277(A082908(n))` -/
def P14874712172221049822.Spec : Prop :=
  ∀ n, P14874712172221049822.a n = A307313 (n + 1)

end A307313

/-! ## A307313.P2044666288474537821

`A117973(A086099(n))`
-/

namespace A307313.P2044666288474537821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117973 (A086099 n).toNat

end

end A307313.P2044666288474537821

namespace A307313

/-- `A117973(A086099(n))` -/
def P2044666288474537821.Spec : Prop :=
  ∀ n, P2044666288474537821.a n = A307313 (n + 1)

end A307313

/-! ## A307313.P15479321077923580747

`A062383(A000265(n+1))`
-/

namespace A307313.P15479321077923580747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A000265 (n + 1)).toNat

end

end A307313.P15479321077923580747

namespace A307313

/-- `A062383(A000265(n+1))` -/
def P15479321077923580747.Spec : Prop :=
  ∀ n, P15479321077923580747.a n = A307313 (n + 1)

end A307313

/-! ## A307313.P9995813159575304795

`A000079(A070940(n+1))`
-/

namespace A307313.P9995813159575304795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A070940 (n + 1)).toNat

end

end A307313.P9995813159575304795

namespace A307313

/-- `A000079(A070940(n+1))` -/
def P9995813159575304795.Spec : Prop :=
  ∀ n, P9995813159575304795.a n = A307313 (n + 1)

end A307313

/-! ## A307313.P8737220830307966965

`A000079(A119387(n)+1)`
-/

namespace A307313.P8737220830307966965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A119387 n + 1).toNat

end

end A307313.P8737220830307966965

namespace A307313

/-- `A000079(A119387(n)+1)` -/
def P8737220830307966965.Spec : Prop :=
  ∀ n, P8737220830307966965.a n = A307313 (n + 1)

end A307313

/-! ## A307313.P17070252599997782181

`A062383(A322250(n+1))`
-/

namespace A307313.P17070252599997782181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A322250 (n + 1)).toNat

end

end A307313.P17070252599997782181

namespace A307313

/-- `A062383(A322250(n+1))` -/
def P17070252599997782181.Spec : Prop :=
  ∀ n, P17070252599997782181.a n = A307313 (n + 1)

end A307313

/-! ## A307313.P3309365962314034746

`A062383(A325401(n+1))`
-/

namespace A307313.P3309365962314034746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A325401 (n + 1)).toNat

end

end A307313.P3309365962314034746

namespace A307313

/-- `A062383(A325401(n+1))` -/
def P3309365962314034746.Spec : Prop :=
  ∀ n, P3309365962314034746.a n = A307313 (n + 1)

end A307313

/-! ## A307313.P7204243032713011510

`A011782(A119387(n)+2)`
-/

namespace A307313.P7204243032713011510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A119387 n + 2).toNat

end

end A307313.P7204243032713011510

namespace A307313

/-- `A011782(A119387(n)+2)` -/
def P7204243032713011510.Spec : Prop :=
  ∀ n, P7204243032713011510.a n = A307313 (n + 1)

end A307313

/-! ## A307313.P13081920027634525951

`2*A062383(A025480(n))`
-/

namespace A307313.P13081920027634525951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062383 (A025480 n).toNat

end

end A307313.P13081920027634525951

namespace A307313

/-- `2*A062383(A025480(n))` -/
def P13081920027634525951.Spec : Prop :=
  ∀ n, P13081920027634525951.a n = A307313 (n + 1)

end A307313

/-! ## A307313.P17914955766804940865

`A011782(A070940(n+1)+1)`
-/

namespace A307313.P17914955766804940865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A070940 (n + 1) + 1).toNat

end

end A307313.P17914955766804940865

namespace A307313

/-- `A011782(A070940(n+1)+1)` -/
def P17914955766804940865.Spec : Prop :=
  ∀ n, P17914955766804940865.a n = A307313 (n + 1)

end A307313

/-! ## A307313.P7884273172330168038

`A016116(2*A070940(n+1))`
-/

namespace A307313.P7884273172330168038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A070940 (n + 1)).toNat

end

end A307313.P7884273172330168038

namespace A307313

/-- `A016116(2*A070940(n+1))` -/
def P7884273172330168038.Spec : Prop :=
  ∀ n, P7884273172330168038.a n = A307313 (n + 1)

end A307313

/-! ## A307313.P9132855409394973901

`2*A062383(A030109(n+1))`
-/

namespace A307313.P9132855409394973901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062383 (A030109 (n + 1)).toNat

end

end A307313.P9132855409394973901

namespace A307313

/-- `2*A062383(A030109(n+1))` -/
def P9132855409394973901.Spec : Prop :=
  ∀ n, P9132855409394973901.a n = A307313 (n + 1)

end A307313

/-!
# A307314: Number of divisors d of 2n such that adding d to 2n in binary requires no carries.

The programs for A307314, the canonical program `A307314.P7749159603707739801` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307314 has offset 1).

The definition of A307314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307314.P7749159603707739801

`∑{d}[n+1, A000007(and(#, 2*(n+1)))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A307314

/-- `∑{d}[n+1, A000007(and(#, 2*(n+1)))]` -/
def P7749159603707739801.Spec : Prop :=
  ∀ n, P7749159603707739801.a n = A307314 (n + 1)

theorem P7749159603707739801.correct : P7749159603707739801.Spec := by
  intro n
  simp only [A307314, Nat.add_sub_cancel]

end A307314

/-! ## A307314.P5717704877143980631

`∑{d}[n+1, A036987(and(#, 2*(n+1)))]`
-/

namespace A307314.P5717704877143980631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (Nat.land d (2 * (n + 1)))

end

end A307314.P5717704877143980631

namespace A307314

/-- `∑{d}[n+1, A036987(and(#, 2*(n+1)))]` -/
def P5717704877143980631.Spec : Prop :=
  ∀ n, P5717704877143980631.a n = A307314 (n + 1)

end A307314

/-! ## A307314.P17360387762928181879

`∑{d}[n+1, A208274(and(#, A005843(n+1)))]`
-/

namespace A307314.P17360387762928181879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A208274 (Int.land (d : ℤ) (A005843 (n + 1))).toNat

end

end A307314.P17360387762928181879

namespace A307314

/-- `∑{d}[n+1, A208274(and(#, A005843(n+1)))]` -/
def P17360387762928181879.Spec : Prop :=
  ∀ n, P17360387762928181879.a n = A307314 (n + 1)

end A307314

/-! ## A307314.P17427062346916127457

`∑{d}[n+1, A270010(and(#, 2*(n+1)))]`
-/

namespace A307314.P17427062346916127457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A270010 (Nat.land d (2 * (n + 1)))

end

end A307314.P17427062346916127457

namespace A307314

/-- `∑{d}[n+1, A270010(and(#, 2*(n+1)))]` -/
def P17427062346916127457.Spec : Prop :=
  ∀ n, P17427062346916127457.a n = A307314 (n + 1)

end A307314

/-! ## A307314.P17461744997200801839

`∑{d}[n+1, A090192(and(#, 2*(n+1)))]`
-/

namespace A307314.P17461744997200801839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A090192 (Nat.land d (2 * (n + 1)))

end

end A307314.P17461744997200801839

namespace A307314

/-- `∑{d}[n+1, A090192(and(#, 2*(n+1)))]` -/
def P17461744997200801839.Spec : Prop :=
  ∀ n, P17461744997200801839.a n = A307314 (n + 1)

end A307314

/-!
# A307315: Primes p such that p + A007953(p) is the square of a prime.

The programs for A307315, there is no canonical definition to state claims against.
-/

/-! ## A307315.P18229243880456954068

`record[A242368(n+1)%A000203(A228195(n+1))]`
-/

namespace A307315.P18229243880456954068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242368 (n + 1)) (A000203 (A228195 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307315.P18229243880456954068

/-! ## A307315.P4323482754675543061

`A242368(A194061(n+1)%A046036(n+1))`
-/

namespace A307315.P4323482754675543061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242368 (Int.tmod (A194061 (n + 1)) (A046036 (n + 1))).toNat

end

end A307315.P4323482754675543061

/-!
# A307316: Number of unlabeled leafless loopless multigraphs with n edges.

The programs for A307316, there is no canonical definition to state claims against.
-/

/-! ## A307316.P180311187092910046

`A369286(n*(n+2))`
-/

namespace A307316.P180311187092910046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369286 (n * (n + 2))

end

end A307316.P180311187092910046

/-! ## A307316.P14192716008925288454

`A369927(n*(n+2))`
-/

namespace A307316.P14192716008925288454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369927 (n * (n + 2))

end

end A307316.P14192716008925288454

/-! ## A307316.P8223066163748603551

`A226919(n)`
-/

namespace A307316.P8223066163748603551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226919 n

end

end A307316.P8223066163748603551

/-!
# A307318: a(n) = Sum_{i=0..n} Sum_{j=0..n} Sum_{k=0..n} (-1)^(i+j+k) * (i+j+k)!/(i!*j!*k!).

The programs for A307318, there is no canonical definition to state claims against.
-/

/-! ## A307318.P16180185559935896837

`A308322(∑[n+3]+n+3)`
-/

namespace A307318.P16180185559935896837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308322 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A307318.P16180185559935896837

/-!
# A307319: Minimum number of concatenated palindromes needed to express first n terms of the Thue-Morse sequence (A010060).

The programs for A307319, there is no canonical definition to state claims against.
-/

/-! ## A307319.P9850748042409808636

`A001221(A211066(n+1)*A213275(n))`
-/

namespace A307319.P9850748042409808636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A211066 (n + 1) * A213275 n).toNat

end

end A307319.P9850748042409808636

/-! ## A307319.P13383268931253315649

`A001221(A211066(n+1)*A225816(n))`
-/

namespace A307319.P13383268931253315649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A211066 (n + 1) * A225816 n).toNat

end

end A307319.P13383268931253315649

/-! ## A307319.P704742698347585355

`A001221(A211066(n+1)*A227655(n))`
-/

namespace A307319.P704742698347585355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A211066 (n + 1) * A227655 n).toNat

end

end A307319.P704742698347585355

/-! ## A307319.P9527244665665561872

`A001221(lcm(A211066(n+1), A213275(n)))`
-/

namespace A307319.P9527244665665561872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A211066 (n + 1)) (A213275 n))

end

end A307319.P9527244665665561872

/-! ## A307319.P9078265299513726263

`A001221(A101828(n+1)+A092582(n+1))`
-/

namespace A307319.P9078265299513726263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A101828 (n + 1) + A092582 (n + 1)).toNat

end

end A307319.P9078265299513726263

/-!
# A307320: a(n) is the base-2 logarithm of the denominator of sigma_{-1}(P(n)), where P(n) = 2^(n-1)*M(n), where M(n) = 2^n - 1 is the n-th Mersenne number.

The programs for A307320, there is no canonical definition to state claims against.
-/

/-! ## A307320.P8897037702161956808

`n-log2(gcd(2^n, A075708(n+1)))`
-/

namespace A307320.P8897037702161956808
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 (Int.gcd (2 ^ n : ℤ) (A075708 (n + 1)) : ℝ)

end

end A307320.P8897037702161956808

/-!
# A307321: Expansion of Product_{j>=1} 1/(1 - (-1 + Product_{k>=1} 1/(1 - x^k)^k)^j)^j.

The programs for A307321, there is no canonical definition to state claims against.
-/

/-! ## A307321.P6261250506453065658

`A150874(A001096(n))-n`
-/

namespace A307321.P6261250506453065658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150874 (A001096 n).toNat - (n : ℤ)

end

end A307321.P6261250506453065658

/-! ## A307321.P8099803434627273082

`A154440(A150874(n))-n`
-/

namespace A307321.P8099803434627273082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154440 (A150874 n).toNat - (n : ℤ)

end

end A307321.P8099803434627273082

/-!
# A307322: Irregular triangle where row n is a list of indices in A002110 with multiplicity whose product is A004394(n).

The programs for A307322, there is no canonical definition to state claims against.
-/

/-! ## A307322.P3150192596148961164

`A306737(n+1)-A185284(A211990(n+1))`
-/

namespace A307322.P3150192596148961164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306737 (n + 1) - A185284 (A211990 (n + 1)).toNat

end

end A307322.P3150192596148961164

/-!
# A307323: Expansion of Product_{j>=1} (1 + (-1 + Product_{k>=1} (1 + x^k)^k)^j)^j.

The programs for A307323, there is no canonical definition to state claims against.
-/

/-! ## A307323.P11956515450545189969

`A081753(A272417(n))`
-/

namespace A307323.P11956515450545189969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A272417 n).toNat

end

end A307323.P11956515450545189969

/-! ## A307323.P855148508195559439

`Δ[A245573(Δ[A122449(n)])]`
-/

namespace A307323.P855148508195559439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122449 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245573 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307323.P855148508195559439

/-!
# A307324: a(n) = Sum_{i=0..n} Sum_{j=0..n} Sum_{k=0..n} Sum_{l=0..n} (-1)^(i+j+k+l) * (i+j+k+l)!/(i!*j!*k!*l!).

The programs for A307324, there is no canonical definition to state claims against.
-/

/-! ## A307324.P1458609932411628613

`A308322(A056115(n)+10)`
-/

namespace A307324.P1458609932411628613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308322 (A056115 n + 10).toNat

end

end A307324.P1458609932411628613

/-! ## A307324.P1802613418381919693

`A308322(eq[4, A025581(n)])`
-/

namespace A307324.P1802613418381919693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307324.P1802613418381919693

/-! ## A307324.P2446206787506749100

`A308322(eq[9, A099375(n)])`
-/

namespace A307324.P2446206787506749100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307324.P2446206787506749100

/-! ## A307324.P10561757839909680844

`A308322(A246172(n+1)+9)`
-/

namespace A307324.P10561757839909680844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308322 (A246172 (n + 1) + 9).toNat

end

end A307324.P10561757839909680844

/-! ## A307324.P8858740872564335194

`A308322(eq[5, A004736(n+1)])`
-/

namespace A307324.P8858740872564335194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307324.P8858740872564335194

/-!
# A307325: a(n) is the smallest number k for which prime(k+1) - prime(k) is greater than n.

The programs for A307325, there is no canonical definition to state claims against.
-/

/-! ## A307325.P5104330009694642165

`A144309(ceil(n/2)+1)`
-/

namespace A307325.P5104330009694642165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144309 (⌈(n : ℚ) / 2⌉ + 1).toNat

end

end A307325.P5104330009694642165

/-! ## A307325.P7737126135633542817

`A000720(A030296(n+1))`
-/

namespace A307325.P7737126135633542817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A030296 (n + 1)).toNat

end

end A307325.P7737126135633542817

/-! ## A307325.P12986279686042701087

`A000720(A104138(n+1))`
-/

namespace A307325.P12986279686042701087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A104138 (n + 1)).toNat

end

end A307325.P12986279686042701087

/-! ## A307325.P15129687949617449009

`A061395(p?[A104138(n+1)])`
-/

namespace A307325.P15129687949617449009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A307325.P15129687949617449009

/-! ## A307325.P16061214006760549494

`A066328(p?[A104138(n+1)])`
-/

namespace A307325.P16061214006760549494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A307325.P16061214006760549494

/-! ## A307325.P11881936471830962155

`A061395(A030296(n+1)-1)`
-/

namespace A307325.P11881936471830962155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A030296 (n + 1) - 1).toNat

end

end A307325.P11881936471830962155

/-! ## A307325.P5921689603915414367

`A326846(or(1, A104138(n+1)))`
-/

namespace A307325.P5921689603915414367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (Int.lor 1 (A104138 (n + 1))).toNat

end

end A307325.P5921689603915414367

/-! ## A307325.P13520868967944749858

`A000720(A100964(ceil(n/2)+1))`
-/

namespace A307325.P13520868967944749858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A100964 (⌈(n : ℚ) / 2⌉ + 1).toNat).toNat

end

end A307325.P13520868967944749858

/-!
# A307326: Rightmost terms of A307226.

The programs for A307326, there is no canonical definition to state claims against.
-/

/-! ## A307326.P3519897585943541863

`A257998(∑[∏[n!]])`
-/

namespace A307326.P3519897585943541863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257998 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307326.P3519897585943541863

/-!
# A307327: Number of superabundant m in the interval p_k# <= m < p_(k+1)#, where p_i# = A002110(i).

The programs for A307327, there is no canonical definition to state claims against.
-/

/-! ## A307327.P17813535187689393611

`A002330(n+1)+(A226722(A053683(n+4))+1)%3`
-/

namespace A307327.P17813535187689393611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (n + 1) + Int.tmod (A226722 (A053683 (n + 4)).toNat + 1) 3

end

end A307327.P17813535187689393611

/-!
# A307328: Indices of prime Ulam numbers: numbers k such that A002858(k) is prime.

The programs for A307328, there is no canonical definition to state claims against.
-/

/-! ## A307328.P9175926339888429179

`eq[2, A078664(n+1)]+1`
-/

namespace A307328.P9175926339888429179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078664 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A307328.P9175926339888429179

/-! ## A307328.P10422799957699936776

`record[A005843(n+1)/A078664(n+1)]`
-/

namespace A307328.P10422799957699936776
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A078664 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307328.P10422799957699936776

/-! ## A307328.P17898177168197236594

`eq[2, A000005(A002858(n+1))]+1`
-/

namespace A307328.P17898177168197236594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002858 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A307328.P17898177168197236594

/-! ## A307328.P6884328667516964072

`eq[1, A003415(A002858(n+2))]+2`
-/

namespace A307328.P6884328667516964072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A002858 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A307328.P6884328667516964072

/-! ## A307328.P7154259605655779740

`lt[n, A014963(Δ[A078663(n+1)])]+2`
-/

namespace A307328.P7154259605655779740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A307328.P7154259605655779740

/-!
# A307329: Indices of twin Ulam primes: numbers k such that both u(k) and u(k+1) are primes, where u(k) = A002858(k) are the Ulam numbers.

The programs for A307329, there is no canonical definition to state claims against.
-/

/-! ## A307329.P13165195627241659904

`∩[A307328(n+1)-1, A307328(n+1)]`
-/

namespace A307329.P13165195627241659904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307328 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307329.P13165195627241659904

/-!
# A307330: Indices of Ulam prime triples, where u(k), u(k+1) and u(k+2) are all primes, and u(k) = A002858(k) are the Ulam numbers.

The programs for A307330, there is no canonical definition to state claims against.
-/

/-! ## A307330.P11344698054887313338

`∩[A307329(n+1)-1, A307329(n+1)]`
-/

namespace A307330.P11344698054887313338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307329 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307330.P11344698054887313338

/-!
# A307332: A fractal ternary sequence: For all n >= 1, underline the term with index n + a(n) + 1; then the two subsequences of underlined terms and of non-underlined terms are both equal to the sequence itself.

The programs for A307332, there is no canonical definition to state claims against.
-/

/-! ## A307332.P6977740510473220211

`A323989(A123131(n+2)%A053325(n+1))`
-/

namespace A307332.P6977740510473220211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323989 (Int.tmod (A123131 (n + 2)) (A053325 (n + 1))).toNat

end

end A307332.P6977740510473220211

/-! ## A307332.P14829990752682609225

`A323989(A340267(n+2)%A053325(n+1))`
-/

namespace A307332.P14829990752682609225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323989 (Int.tmod (A340267 (n + 2)) (A053325 (n + 1))).toNat

end

end A307332.P14829990752682609225

/-! ## A307332.P3904806796974411027

`∑[A031285(A097860(n))]%3`
-/

namespace A307332.P3904806796974411027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A097860 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A307332.P3904806796974411027

/-! ## A307332.P7254020772124667872

`A287447(A005408(n)+∑[2*A347428(n)])`
-/

namespace A307332.P7254020772124667872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A347428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (A005408 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307332.P7254020772124667872

/-! ## A307332.P17041026883374179718

`A235034(A242944(n+1))%3`
-/

namespace A307332.P17041026883374179718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235034 (A242944 (n + 1)).toNat) 3

end

end A307332.P17041026883374179718

/-!
# A307334: Number of 3-colorings of an n-dimensional hypercube.

The programs for A307334, there is no canonical definition to state claims against.
-/

/-! ## A307334.P7439000627835448046

`A342128(∑[n+3]+n+3)`
-/

namespace A307334.P7439000627835448046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342128 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A307334.P7439000627835448046

/-!
# A307341: Products of four primes, not all distinct.

The programs for A307341, the canonical program `A307341.P13279017432395934177` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307341 has offset 1).

The definition of A307341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6535 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307341.P13279017432395934177

`record[A105570(A014613(n+1))]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A307341

/-- `record[A105570(A014613(n+1))]` -/
def P13279017432395934177.Spec : Prop :=
  ∀ n, P13279017432395934177.a n = A307341 (n + 1)

theorem P13279017432395934177.correct : P13279017432395934177.Spec := by
  intro n
  simp only [A307341, Nat.add_sub_cancel]

end A307341

/-! ## A307341.P400740731580175204

`filter[A014613(n+1), A087049(#)]`
-/

namespace A307341.P400740731580175204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A307341.P400740731580175204

namespace A307341

/-- `filter[A014613(n+1), A087049(#)]` -/
def P400740731580175204.Spec : Prop :=
  ∀ n, P400740731580175204.a n = A307341 (n + 1)

end A307341

/-! ## A307341.P11191701817023439737

`eq[A008683(n+2), A307649(A001222(n+2))]+2`
-/

namespace A307341.P11191701817023439737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307649 (A001222 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A307341.P11191701817023439737

namespace A307341

/-- `eq[A008683(n+2), A307649(A001222(n+2))]+2` -/
def P11191701817023439737.Spec : Prop :=
  ∀ n, (P11191701817023439737.a n : ℤ) = A307341 (n + 1)

end A307341

/-! ## A307341.P12396562996629830999

`filter[A062171(n+1), A101637(#)]`
-/

namespace A307341.P12396562996629830999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A307341.P12396562996629830999

namespace A307341

/-- `filter[A062171(n+1), A101637(#)]` -/
def P12396562996629830999.Spec : Prop :=
  ∀ n, P12396562996629830999.a n = A307341 (n + 1)

end A307341

/-! ## A307341.P14893947836590136172

`∩[A014613(n+1), A062171(n+1)]`
-/

namespace A307341.P14893947836590136172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307341.P14893947836590136172

namespace A307341

/-- `∩[A014613(n+1), A062171(n+1)]` -/
def P14893947836590136172.Spec : Prop :=
  ∀ n, (P14893947836590136172.a n : ℤ) = A307341 (n + 1)

end A307341

/-! ## A307341.P863064393179337334

`filter[A375142(n+1), A101637(#)]`
-/

namespace A307341.P863064393179337334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A307341.P863064393179337334

namespace A307341

/-- `filter[A375142(n+1), A101637(#)]` -/
def P863064393179337334.Spec : Prop :=
  ∀ n, P863064393179337334.a n = A307341 (n + 1)

end A307341

/-! ## A307341.P15559554618164652480

`∩[A014613(n+1), A375142(n+1)]`
-/

namespace A307341.P15559554618164652480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307341.P15559554618164652480

namespace A307341

/-- `∩[A014613(n+1), A375142(n+1)]` -/
def P15559554618164652480.Spec : Prop :=
  ∀ n, (P15559554618164652480.a n : ℤ) = A307341 (n + 1)

end A307341

/-! ## A307341.P9931773219334674019

`filter[A049199(n+1), A101637(#)]`
-/

namespace A307341.P9931773219334674019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A307341.P9931773219334674019

namespace A307341

/-- `filter[A049199(n+1), A101637(#)]` -/
def P9931773219334674019.Spec : Prop :=
  ∀ n, P9931773219334674019.a n = A307341 (n + 1)

end A307341

/-! ## A307341.P8852623833587458122

`∩[A014613(n+1), A049199(n+1)]`
-/

namespace A307341.P8852623833587458122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307341.P8852623833587458122

namespace A307341

/-- `∩[A014613(n+1), A049199(n+1)]` -/
def P8852623833587458122.Spec : Prop :=
  ∀ n, (P8852623833587458122.a n : ℤ) = A307341 (n + 1)

end A307341

/-! ## A307341.P11631853213773585793

`filter[A080756(n+1), A101637(#)]`
-/

namespace A307341.P11631853213773585793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A307341.P11631853213773585793

namespace A307341

/-- `filter[A080756(n+1), A101637(#)]` -/
def P11631853213773585793.Spec : Prop :=
  ∀ n, P11631853213773585793.a n = A307341 (n + 1)

end A307341

/-! ## A307341.P8816270722039690173

`filter[A013929(n+2), A101637(#)]`
-/

namespace A307341.P8816270722039690173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A307341.P8816270722039690173

namespace A307341

/-- `filter[A013929(n+2), A101637(#)]` -/
def P8816270722039690173.Spec : Prop :=
  ∀ n, P8816270722039690173.a n = A307341 (n + 1)

end A307341

/-! ## A307341.P18060859202946270290

`∩[A014613(n+1), A080756(n+1)]`
-/

namespace A307341.P18060859202946270290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307341.P18060859202946270290

namespace A307341

/-- `∩[A014613(n+1), A080756(n+1)]` -/
def P18060859202946270290.Spec : Prop :=
  ∀ n, (P18060859202946270290.a n : ℤ) = A307341 (n + 1)

end A307341

/-! ## A307341.P608900545825615527

`∩[A014613(n+1), A013929(n+5)]`
-/

namespace A307341.P608900545825615527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307341.P608900545825615527

namespace A307341

/-- `∩[A014613(n+1), A013929(n+5)]` -/
def P608900545825615527.Spec : Prop :=
  ∀ n, (P608900545825615527.a n : ℤ) = A307341 (n + 1)

end A307341

/-! ## A307341.P4432129123718363289

`filter[A162966(n+1), A101637(#)]`
-/

namespace A307341.P4432129123718363289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A307341.P4432129123718363289

namespace A307341

/-- `filter[A162966(n+1), A101637(#)]` -/
def P4432129123718363289.Spec : Prop :=
  ∀ n, P4432129123718363289.a n = A307341 (n + 1)

end A307341

/-! ## A307341.P5826008938441803748

`∩[A014613(n+1), A162966(n+1)]`
-/

namespace A307341.P5826008938441803748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307341.P5826008938441803748

namespace A307341

/-- `∩[A014613(n+1), A162966(n+1)]` -/
def P5826008938441803748.Spec : Prop :=
  ∀ n, (P5826008938441803748.a n : ℤ) = A307341 (n + 1)

end A307341

/-! ## A307341.P17683866162618452950

`filter[A244723(n+1), A101637(#)]`
-/

namespace A307341.P17683866162618452950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A307341.P17683866162618452950

namespace A307341

/-- `filter[A244723(n+1), A101637(#)]` -/
def P17683866162618452950.Spec : Prop :=
  ∀ n, P17683866162618452950.a n = A307341 (n + 1)

end A307341

/-! ## A307341.P13391098038854351549

`∩[A014613(n+1), A244723(n+1)]`
-/

namespace A307341.P13391098038854351549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307341.P13391098038854351549

namespace A307341

/-- `∩[A014613(n+1), A244723(n+1)]` -/
def P13391098038854351549.Spec : Prop :=
  ∀ n, (P13391098038854351549.a n : ℤ) = A307341 (n + 1)

end A307341

/-! ## A307341.P81234164509578942

`filter[A255199(n+1), A101637(#)]`
-/

namespace A307341.P81234164509578942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A307341.P81234164509578942

namespace A307341

/-- `filter[A255199(n+1), A101637(#)]` -/
def P81234164509578942.Spec : Prop :=
  ∀ n, P81234164509578942.a n = A307341 (n + 1)

end A307341

/-! ## A307341.P1662098589725584614

`∩[A014613(n+1), A255199(n+1)]`
-/

namespace A307341.P1662098589725584614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307341.P1662098589725584614

namespace A307341

/-- `∩[A014613(n+1), A255199(n+1)]` -/
def P1662098589725584614.Spec : Prop :=
  ∀ n, (P1662098589725584614.a n : ℤ) = A307341 (n + 1)

end A307341

/-! ## A307341.P4110217129984264889

`eq[A055615(n+2), A307649(A001222(n+2))]+2`
-/

namespace A307341.P4110217129984264889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307649 (A001222 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A307341.P4110217129984264889

namespace A307341

/-- `eq[A055615(n+2), A307649(A001222(n+2))]+2` -/
def P4110217129984264889.Spec : Prop :=
  ∀ n, (P4110217129984264889.a n : ℤ) = A307341 (n + 1)

end A307341

/-!
# A307342: Products of four primes, except fourth powers of primes.

The programs for A307342, the canonical program `A307342.P15063499458322460120` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307342 has offset 1).

The definition of A307342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307342.P15063499458322460120

`eq[4, A318473(n+1)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A307342

/-- `eq[4, A318473(n+1)]+1` -/
def P15063499458322460120.Spec : Prop :=
  ∀ n, (P15063499458322460120.a n : ℤ) = A307342 (n + 1)

theorem P15063499458322460120.correct : P15063499458322460120.Spec := by
  intro n
  simp only [A307342, Nat.add_sub_cancel]

end A307342

/-! ## A307342.P2812911725150689412

`filter[A289554(n+1), A101637(#)]`
-/

namespace A307342.P2812911725150689412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A307342.P2812911725150689412

namespace A307342

/-- `filter[A289554(n+1), A101637(#)]` -/
def P2812911725150689412.Spec : Prop :=
  ∀ n, P2812911725150689412.a n = A307342 (n + 1)

end A307342

/-! ## A307342.P360430162395450533

`∩[A014613(n+1), A289554(n+1)]`
-/

namespace A307342.P360430162395450533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307342.P360430162395450533

namespace A307342

/-- `∩[A014613(n+1), A289554(n+1)]` -/
def P360430162395450533.Spec : Prop :=
  ∀ n, (P360430162395450533.a n : ℤ) = A307342 (n + 1)

end A307342

/-! ## A307342.P8426728519061428148

`filter[A320912(n+1), A101637(#)]`
-/

namespace A307342.P8426728519061428148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A307342.P8426728519061428148

namespace A307342

/-- `filter[A320912(n+1), A101637(#)]` -/
def P8426728519061428148.Spec : Prop :=
  ∀ n, P8426728519061428148.a n = A307342 (n + 1)

end A307342

/-! ## A307342.P5405449081845083558

`∩[A014613(n+1), A320912(n+1)]`
-/

namespace A307342.P5405449081845083558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307342.P5405449081845083558

namespace A307342

/-- `∩[A014613(n+1), A320912(n+1)]` -/
def P5405449081845083558.Spec : Prop :=
  ∀ n, (P5405449081845083558.a n : ℤ) = A307342 (n + 1)

end A307342

/-! ## A307342.P15509712812957696729

`∩[A320912(n+1), A323350(n+1)]`
-/

namespace A307342.P15509712812957696729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307342.P15509712812957696729

namespace A307342

/-- `∩[A320912(n+1), A323350(n+1)]` -/
def P15509712812957696729.Spec : Prop :=
  ∀ n, (P15509712812957696729.a n : ℤ) = A307342 (n + 1)

end A307342

/-! ## A307342.P990822047420372197

`filter[A122181(n+1), A101637(#)]`
-/

namespace A307342.P990822047420372197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A307342.P990822047420372197

namespace A307342

/-- `filter[A122181(n+1), A101637(#)]` -/
def P990822047420372197.Spec : Prop :=
  ∀ n, P990822047420372197.a n = A307342 (n + 1)

end A307342

/-! ## A307342.P9439126705691689224

`∩[A014613(n+1), A122181(n+1)]`
-/

namespace A307342.P9439126705691689224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307342.P9439126705691689224

namespace A307342

/-- `∩[A014613(n+1), A122181(n+1)]` -/
def P9439126705691689224.Spec : Prop :=
  ∀ n, (P9439126705691689224.a n : ℤ) = A307342 (n + 1)

end A307342

/-! ## A307342.P10332608465362786104

`filter[A376384(n+1), A101637(#)]`
-/

namespace A307342.P10332608465362786104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A307342.P10332608465362786104

namespace A307342

/-- `filter[A376384(n+1), A101637(#)]` -/
def P10332608465362786104.Spec : Prop :=
  ∀ n, P10332608465362786104.a n = A307342 (n + 1)

end A307342

/-! ## A307342.P3119442437123001585

`∩[A014613(n+1), A376384(n+1)]`
-/

namespace A307342.P3119442437123001585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307342.P3119442437123001585

namespace A307342

/-- `∩[A014613(n+1), A376384(n+1)]` -/
def P3119442437123001585.Spec : Prop :=
  ∀ n, (P3119442437123001585.a n : ℤ) = A307342 (n + 1)

end A307342

/-! ## A307342.P5603759410115165881

`∩[A014613(n+1), A319237(n+1)]`
-/

namespace A307342.P5603759410115165881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307342.P5603759410115165881

namespace A307342

/-- `∩[A014613(n+1), A319237(n+1)]` -/
def P5603759410115165881.Spec : Prop :=
  ∀ n, (P5603759410115165881.a n : ℤ) = A307342 (n + 1)

end A307342

/-! ## A307342.P1231331972631349229

`filter[A088383(n+1), A101637(#)]`
-/

namespace A307342.P1231331972631349229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A307342.P1231331972631349229

namespace A307342

/-- `filter[A088383(n+1), A101637(#)]` -/
def P1231331972631349229.Spec : Prop :=
  ∀ n, P1231331972631349229.a n = A307342 (n + 1)

end A307342

/-! ## A307342.P17548775336388497433

`∩[A014613(n+1), A088383(n+1)]`
-/

namespace A307342.P17548775336388497433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307342.P17548775336388497433

namespace A307342

/-- `∩[A014613(n+1), A088383(n+1)]` -/
def P17548775336388497433.Spec : Prop :=
  ∀ n, (P17548775336388497433.a n : ℤ) = A307342 (n + 1)

end A307342

/-! ## A307342.P13000287167418926333

`filter[A268376(n+1), A101637(#)]`
-/

namespace A307342.P13000287167418926333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A307342.P13000287167418926333

namespace A307342

/-- `filter[A268376(n+1), A101637(#)]` -/
def P13000287167418926333.Spec : Prop :=
  ∀ n, P13000287167418926333.a n = A307342 (n + 1)

end A307342

/-! ## A307342.P17149648028220286506

`∩[A014613(n+1), A268376(n+1)]`
-/

namespace A307342.P17149648028220286506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307342.P17149648028220286506

namespace A307342

/-- `∩[A014613(n+1), A268376(n+1)]` -/
def P17149648028220286506.Spec : Prop :=
  ∀ n, (P17149648028220286506.a n : ℤ) = A307342 (n + 1)

end A307342

/-! ## A307342.P13983659980968540457

`∩[A166718(n+1), A289554(n+1)]`
-/

namespace A307342.P13983659980968540457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307342.P13983659980968540457

namespace A307342

/-- `∩[A166718(n+1), A289554(n+1)]` -/
def P13983659980968540457.Spec : Prop :=
  ∀ n, (P13983659980968540457.a n : ℤ) = A307342 (n + 1)

end A307342

/-! ## A307342.P5982816618388216307

`filter[A158871(n+2), A101637(#)]`
-/

namespace A307342.P5982816618388216307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158871 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A307342.P5982816618388216307

namespace A307342

/-- `filter[A158871(n+2), A101637(#)]` -/
def P5982816618388216307.Spec : Prop :=
  ∀ n, P5982816618388216307.a n = A307342 (n + 1)

end A307342

/-! ## A307342.P10159084100457316514

`∩[A014613(n+1), A158871(n+1)]`
-/

namespace A307342.P10159084100457316514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307342.P10159084100457316514

namespace A307342

/-- `∩[A014613(n+1), A158871(n+1)]` -/
def P10159084100457316514.Spec : Prop :=
  ∀ n, (P10159084100457316514.a n : ℤ) = A307342 (n + 1)

end A307342

/-! ## A307342.P1945035687619912145

`∩[A014613(n+1), A024619(n+1)]`
-/

namespace A307342.P1945035687619912145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307342.P1945035687619912145

namespace A307342

/-- `∩[A014613(n+1), A024619(n+1)]` -/
def P1945035687619912145.Spec : Prop :=
  ∀ n, (P1945035687619912145.a n : ℤ) = A307342 (n + 1)

end A307342

/-! ## A307342.P3730762274719507372

`∩[A014613(n+1), A361102(n+1)]`
-/

namespace A307342.P3730762274719507372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307342.P3730762274719507372

namespace A307342

/-- `∩[A014613(n+1), A361102(n+1)]` -/
def P3730762274719507372.Spec : Prop :=
  ∀ n, (P3730762274719507372.a n : ℤ) = A307342 (n + 1)

end A307342

/-!
# A307343: Number of partitions of n into 3 mutually distinct, mutually nonadjacent prime parts.

The programs for A307343, there is no canonical definition to state claims against.
-/

/-! ## A307343.P9363793749432232530

`A105517(A122289(3*n+4)+A117532(n+1))`
-/

namespace A307343.P9363793749432232530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105517 (A122289 (3 * n + 4) + A117532 (n + 1)).toNat

end

end A307343.P9363793749432232530

/-! ## A307343.P11361436828250765914

`A008647(A291149(n+2))%A104508(n)`
-/

namespace A307343.P11361436828250765914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008647 (A291149 (n + 2)).toNat) (A104508 n)

end

end A307343.P11361436828250765914

/-! ## A307343.P5570111095451203322

`A008647(A064866(n+1))%A146906(n+1)`
-/

namespace A307343.P5570111095451203322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008647 (A064866 (n + 1)).toNat) (A146906 (n + 1))

end

end A307343.P5570111095451203322

/-!
# A307345: Numbers k such that every prime p <= sqrt(k) divides k*(k-1).

The programs for A307345, there is no canonical definition to state claims against.
-/

/-! ## A307345.P4810131595141813299

`eq[A010054(A236939(n)), A333807(n+1)]`
-/

namespace A307345.P4810131595141813299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A236939 (n + 10)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307345.P4810131595141813299

/-! ## A307345.P10295654604784257573

`eq[A003319(A035468(n+1)), A333805(n+1)]`
-/

namespace A307345.P10295654604784257573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003319 (A035468 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307345.P10295654604784257573

/-! ## A307345.P15349700146021608331

`lt[A002372(A096376(n)), A335236(n+1)]`
-/

namespace A307345.P15349700146021608331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (A096376 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335236 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307345.P15349700146021608331

/-! ## A307345.P13481654757753779750

`lt[A180000(n), A005117(A303046(n+1))]`
-/

namespace A307345.P13481654757753779750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A303046 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307345.P13481654757753779750

/-! ## A307345.P11396957507131696900

`∑[A040001(∑[A061882(n)])]`
-/

namespace A307345.P11396957507131696900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061882 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307345.P11396957507131696900

/-!
# A307346: Number of uniquely sorted permutations of [2n+1] that avoid the patterns 231 and 4123.

The programs for A307346, there is no canonical definition to state claims against.
-/

/-! ## A307346.P11851638320017817795

`A065033(A150135(n)-A234016(n))`
-/

namespace A307346.P11851638320017817795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150135 n - A234016 n).toNat

end

end A307346.P11851638320017817795

/-! ## A307346.P13576911567102056179

`A220658(A150877(n))`
-/

namespace A307346.P13576911567102056179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A150877 n).toNat

end

end A307346.P13576911567102056179

/-! ## A307346.P8365673221951263603

`A220658(A150878(n))`
-/

namespace A307346.P8365673221951263603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A150878 n).toNat

end

end A307346.P8365673221951263603

/-!
# A307349: a(n) = Sum_{i=1..n} Sum_{j=1..n} (-1)^(i+j) * (i+j)!/(2!*i!*j!).

The programs for A307349, the canonical program `A307349.P9464959732630918459` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307349 has offset 0).

The definition of A307349 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120305, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A307349.P9464959732630918459

`(A120305(n)-(-1)^n)/2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A307349

/-- `(A120305(n)-(-1)^n)/2` -/
def P9464959732630918459.Spec : Prop :=
  ∀ n, P9464959732630918459.a n = (A307349 n : ℚ)

end A307349

/-! ## A307349.P2077232667383508425

`ceil(A188289(n)/3)`
-/

namespace A307349.P2077232667383508425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A188289 n : ℚ) / 3⌉

end

end A307349.P2077232667383508425

namespace A307349

/-- `ceil(A188289(n)/3)` -/
def P2077232667383508425.Spec : Prop :=
  ∀ n, P2077232667383508425.a n = A307349 n

end A307349

/-! ## A307349.P2775344939465732765

`(A188289(n)+A000035(n))/3`
-/

namespace A307349.P2775344939465732765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188289 n + A000035 n : ℚ) / 3

end

end A307349.P2775344939465732765

namespace A307349

/-- `(A188289(n)+A000035(n))/3` -/
def P2775344939465732765.Spec : Prop :=
  ∀ n, P2775344939465732765.a n = (A307349 n : ℚ)

end A307349

/-! ## A307349.P5497476378398732232

`A000035(n+1)+A188289(n)-A120305(n)`
-/

namespace A307349.P5497476378398732232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (A188289 n - A120305 n)

end

end A307349.P5497476378398732232

namespace A307349

/-- `A000035(n+1)+A188289(n)-A120305(n)` -/
def P5497476378398732232.Spec : Prop :=
  ∀ n, P5497476378398732232.a n = A307349 n

end A307349

/-! ## A307349.P8780021487033677318

`A001700(n)-∑[abs(A092785(n))]`
-/

namespace A307349.P8780021487033677318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092785 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307349.P8780021487033677318

namespace A307349

/-- `A001700(n)-∑[abs(A092785(n))]` -/
def P8780021487033677318.Spec : Prop :=
  ∀ n, P8780021487033677318.a n = A307349 n

end A307349

/-!
# A307351: a(n) = Sum_{i=1..n} Sum_{j=1..n} Sum_{k=1..n} Sum_{l=1..n} (-1)^(i+j+k+l) * (i+j+k+l)!/(4!*i!*j!*k!).

The programs for A307351, there is no canonical definition to state claims against.
-/

/-! ## A307351.P4507495468322061873

`record[A308356(A052905(n))]`
-/

namespace A307351.P4507495468322061873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308356 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307351.P4507495468322061873

/-! ## A307351.P15184770159221960207

`A308356(A052905(n+2))`
-/

namespace A307351.P15184770159221960207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308356 (A052905 (n + 2)).toNat

end

end A307351.P15184770159221960207

/-! ## A307351.P11977109458456044931

`A308356(eq[4, A025581(n)])`
-/

namespace A307351.P11977109458456044931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307351.P11977109458456044931

/-! ## A307351.P7216647946780675469

`A308356(eq[5, A193739(n)])`
-/

namespace A307351.P7216647946780675469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307351.P7216647946780675469

/-! ## A307351.P5117029962515900805

`record[A308356(A055999(n)+1)]`
-/

namespace A307351.P5117029962515900805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308356 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307351.P5117029962515900805

/-!
# A307352: a(n) = Sum_{0<=i<=j<=k<=n} (i+j+k)!/(i!*j!*k!).

The programs for A307352, there is no canonical definition to state claims against.
-/

/-! ## A307352.P14685364474714030463

`A307353(n)+∑[A001700(n)]`
-/

namespace A307352.P14685364474714030463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307353 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307352.P14685364474714030463

/-! ## A307352.P13427060610733674195

`A307353(n)+A079309(n+1)`
-/

namespace A307352.P13427060610733674195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307353 n + A079309 (n + 1)

end

end A307352.P13427060610733674195

/-! ## A307352.P12833843899723452865

`A307353(n)+∑[record[A057977(n)]]`
-/

namespace A307352.P12833843899723452865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307353 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307352.P12833843899723452865

/-! ## A307352.P7575479228720314353

`A307353(n)+A174783(2*(n+1))`
-/

namespace A307352.P7575479228720314353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307353 n + A174783 (2 * (n + 1))

end

end A307352.P7575479228720314353

/-! ## A307352.P6635554685247051861

`A307353(n)+A066796(n+1)/2`
-/

namespace A307352.P6635554685247051861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307353 n : ℚ) + (A066796 (n + 1) : ℚ) / 2

end

end A307352.P6635554685247051861

/-! ## A307352.P12186970951674631621

`A120279(n+1)+A307353(n)-A048775(n+1)`
-/

namespace A307352.P12186970951674631621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120279 (n + 1) + (A307353 n - A048775 (n + 1))

end

end A307352.P12186970951674631621

/-!
# A307353: a(n) = Sum_{1<=i<=j<=k<=n} (i+j+k)!/(i!*j!*k!).

The programs for A307353, there is no canonical definition to state claims against.
-/

/-! ## A307353.P8108847947079493671

`A307352(n)-∑[A001700(n)]`
-/

namespace A307353.P8108847947079493671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307352 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307353.P8108847947079493671

/-! ## A307353.P1189009470035687904

`A307352(n)-A079309(n+1)`
-/

namespace A307353.P1189009470035687904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307352 n - A079309 (n + 1)

end

end A307353.P1189009470035687904

/-! ## A307353.P4329356008467758258

`A307352(n)-∑[record[A057977(n)]]`
-/

namespace A307353.P4329356008467758258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307352 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307353.P4329356008467758258

/-! ## A307353.P16785765409634711825

`A307352(n)-∑[A001405(2*n+1)]`
-/

namespace A307353.P16785765409634711825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307352 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307353.P16785765409634711825

/-! ## A307353.P4114355559822491580

`A307352(n)-∑[A057977(2*n+1)]`
-/

namespace A307353.P4114355559822491580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307352 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307353.P4114355559822491580

/-!
# A307354: a(n) = Sum_{0<=i<=j<=n} (-1)^(i+j) * (i+j)!/(i!*j!).

The programs for A307354, the canonical program `A307354.P6583539778900423417` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307354 has offset 0).

The definition of A307354 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, A120305, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A307354.P6583539778900423417

`(A006134(n)+A120305(n))/2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A307354

/-- `(A006134(n)+A120305(n))/2` -/
def P6583539778900423417.Spec : Prop :=
  ∀ n, P6583539778900423417.a n = (A307354 n : ℚ)

end A307354

/-! ## A307354.P5114025779158074044

`∑[A026641(n)]`
-/

namespace A307354.P5114025779158074044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307354.P5114025779158074044

namespace A307354

/-- `∑[A026641(n)]` -/
def P5114025779158074044.Spec : Prop :=
  ∀ n, P5114025779158074044.a n = A307354 n

end A307354

/-! ## A307354.P15491952847836489340

`∑[A109078(2*n)]`
-/

namespace A307354.P15491952847836489340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109078 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307354.P15491952847836489340

namespace A307354

/-- `∑[A109078(2*n)]` -/
def P15491952847836489340.Spec : Prop :=
  ∀ n, P15491952847836489340.a n = A307354 n

end A307354

/-! ## A307354.P8139285752371527196

`∑[A191526(2*n)]`
-/

namespace A307354.P8139285752371527196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307354.P8139285752371527196

namespace A307354

/-- `∑[A191526(2*n)]` -/
def P8139285752371527196.Spec : Prop :=
  ∀ n, P8139285752371527196.a n = A307354 n

end A307354

/-! ## A307354.P4325901383862742432

`a(n-1)+A026638(n)/2` with `a(0)=1`
-/

namespace A307354.P4325901383862742432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A026638 n : ℚ) / 2

end

end A307354.P4325901383862742432

namespace A307354

/-- `a(n-1)+A026638(n)/2` -/
def P4325901383862742432.Spec : Prop :=
  ∀ n, P4325901383862742432.a n = (A307354 n : ℚ)

end A307354

/-! ## A307354.P17786421447875387937

`A306409(n)+A120305(n)`
-/

namespace A307354.P17786421447875387937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306409 n + A120305 n

end

end A307354.P17786421447875387937

namespace A307354

/-- `A306409(n)+A120305(n)` -/
def P17786421447875387937.Spec : Prop :=
  ∀ n, P17786421447875387937.a n = A307354 n

end A307354

/-! ## A307354.P12787523187933099387

`A006134(n)-A306409(n)`
-/

namespace A307354.P12787523187933099387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n - A306409 n

end

end A307354.P12787523187933099387

namespace A307354

/-- `A006134(n)-A306409(n)` -/
def P12787523187933099387.Spec : Prop :=
  ∀ n, P12787523187933099387.a n = A307354 n

end A307354

/-! ## A307354.P15023563811339767386

`∑[A014300(n+1)-A014301(n+1)]`
-/

namespace A307354.P15023563811339767386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014300 (n + 1) - A014301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307354.P15023563811339767386

namespace A307354

/-- `∑[A014300(n+1)-A014301(n+1)]` -/
def P15023563811339767386.Spec : Prop :=
  ∀ n, P15023563811339767386.a n = A307354 n

end A307354

/-! ## A307354.P5770419717492292469

`∑[A191526(Δ[n²])-A014301(n+1)]`
-/

namespace A307354.P5770419717492292469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - A014301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307354.P5770419717492292469

namespace A307354

/-- `∑[A191526(Δ[n²])-A014301(n+1)]` -/
def P5770419717492292469.Spec : Prop :=
  ∀ n, P5770419717492292469.a n = A307354 n

end A307354

/-! ## A307354.P10812995443668086912

`A014300(n+1)+∑[A000984(n)-A014300(n+1)]`
-/

namespace A307354.P10812995443668086912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A014300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014300 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307354.P10812995443668086912

namespace A307354

/-- `A014300(n+1)+∑[A000984(n)-A014300(n+1)]` -/
def P10812995443668086912.Spec : Prop :=
  ∀ n, P10812995443668086912.a n = A307354 n

end A307354

/-! ## A307354.P8852474836639510275

`A006134(n+1)-(A120305(n+1)+A079309(n+1))`
-/

namespace A307354.P8852474836639510275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 (n + 1) - (A120305 (n + 1) + A079309 (n + 1))

end

end A307354.P8852474836639510275

namespace A307354

/-- `A006134(n+1)-(A120305(n+1)+A079309(n+1))` -/
def P8852474836639510275.Spec : Prop :=
  ∀ n, P8852474836639510275.a n = A307354 n

end A307354

/-! ## A307354.P254692631203902105

`A306409(n+1)+A306409(n+1)-A079309(n+1)`
-/

namespace A307354.P254692631203902105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306409 (n + 1) + (A306409 (n + 1) - A079309 (n + 1))

end

end A307354.P254692631203902105

namespace A307354

/-- `A306409(n+1)+A306409(n+1)-A079309(n+1)` -/
def P254692631203902105.Spec : Prop :=
  ∀ n, P254692631203902105.a n = A307354 n

end A307354

/-! ## A307354.P8196168828079863247

`∑[A109244(∑[n])]`
-/

namespace A307354.P8196168828079863247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307354.P8196168828079863247

namespace A307354

/-- `∑[A109244(∑[n])]` -/
def P8196168828079863247.Spec : Prop :=
  ∀ n, P8196168828079863247.a n = A307354 n

end A307354

/-! ## A307354.P13378240519956539353

`∑[A158815(∑[n])]`
-/

namespace A307354.P13378240519956539353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158815 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307354.P13378240519956539353

namespace A307354

/-- `∑[A158815(∑[n])]` -/
def P13378240519956539353.Spec : Prop :=
  ∀ n, P13378240519956539353.a n = A307354 n

end A307354

/-! ## A307354.P14197176712264238422

`∑[A171650(∑[n])]`
-/

namespace A307354.P14197176712264238422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171650 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307354.P14197176712264238422

namespace A307354

/-- `∑[A171650(∑[n])]` -/
def P14197176712264238422.Spec : Prop :=
  ∀ n, P14197176712264238422.a n = A307354 n

end A307354

/-! ## A307354.P2291371783868476009

`∑[A201635(A034856(n+1))]`
-/

namespace A307354.P2291371783868476009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307354.P2291371783868476009

namespace A307354

/-- `∑[A201635(A034856(n+1))]` -/
def P2291371783868476009.Spec : Prop :=
  ∀ n, P2291371783868476009.a n = A307354 n

end A307354

/-! ## A307354.P7939394867189401771

`∑[A201635(A101881(2*n))]`
-/

namespace A307354.P7939394867189401771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A101881 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307354.P7939394867189401771

namespace A307354

/-- `∑[A201635(A101881(2*n))]` -/
def P7939394867189401771.Spec : Prop :=
  ∀ n, P7939394867189401771.a n = A307354 n

end A307354

/-! ## A307354.P10703734909612252099

`∑[A201635(A005408(n)+∑[n])]`
-/

namespace A307354.P10703734909612252099
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A005408 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307354.P10703734909612252099

namespace A307354

/-- `∑[A201635(A005408(n)+∑[n])]` -/
def P10703734909612252099.Spec : Prop :=
  ∀ n, P10703734909612252099.a n = A307354 n

end A307354

/-! ## A307354.P9514448140611977989

`∑[A201635(A165157(2*n+1))]`
-/

namespace A307354.P9514448140611977989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A165157 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307354.P9514448140611977989

namespace A307354

/-- `∑[A201635(A165157(2*n+1))]` -/
def P9514448140611977989.Spec : Prop :=
  ∀ n, P9514448140611977989.a n = A307354 n

end A307354

/-!
# A307355: E.g.f. A(x) satisfies: d/dx A(x) = 1 + A(x/(1 + x)).

The programs for A307355, there is no canonical definition to state claims against.
-/

/-! ## A307355.P13192486549979455276

`A287713(n)-A029768(A057771(n))`
-/

namespace A307355.P13192486549979455276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287713 n - A029768 (A057771 n).toNat

end

end A307355.P13192486549979455276

/-! ## A307355.P13922903299539448407

`A277866(n)-A273163(A243921(n))`
-/

namespace A307355.P13922903299539448407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277866 n - A273163 (A243921 n).toNat

end

end A307355.P13922903299539448407

/-!
# A307356: a(n) is the numbers of 2's in row n of triangle A307239.

The programs for A307356, there is no canonical definition to state claims against.
-/

/-! ## A307356.P3515566829093248934

`A064989(A220030(n+1))%A000265(n+1)`
-/

namespace A307356.P3515566829093248934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064989 (A220030 (n + 1)).toNat) (A000265 (n + 1))

end

end A307356.P3515566829093248934

/-!
# A307359: Class number a(n) of indefinite binary quadratic forms with discriminant 4*A000037(n) for n >= 1.

The programs for A307359, there is no canonical definition to state claims against.
-/

/-! ## A307359.P13612035019234042842

`A279060(A107466(n+1)+A014963(A004277(n)))`
-/

namespace A307359.P13612035019234042842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A107466 (n + 1) + A014963 (A004277 n).toNat).toNat

end

end A307359.P13612035019234042842

/-! ## A307359.P13452249235227733757

`gcd(n^(n%2)+1, A049419(A051487(2*n+1)))`
-/

namespace A307359.P13452249235227733757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ (n % 2) + 1 : ℤ) (A049419 (A051487 (2 * n + 1)).toNat)

end

end A307359.P13452249235227733757

/-! ## A307359.P3479616079789025537

`A001176(A347295(n+1)+A003557(n+1))`
-/

namespace A307359.P3479616079789025537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (A347295 (n + 1) + A003557 (n + 1)).toNat

end

end A307359.P3479616079789025537

/-!
# A307360: A sequence in which every divisor other than 1 is used at most three times.

The programs for A307360, the canonical program `A307360.P8284333854152591718` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307360 has offset 1).

The definition of A307360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307360.P8284333854152591718

`∪[A089581(n+1), A166684(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A307360

/-- `∪[A089581(n+1), A166684(n+1)]` -/
def P8284333854152591718.Spec : Prop :=
  ∀ n, (P8284333854152591718.a n : ℤ) = A307360 (n + 1)

theorem P8284333854152591718.correct : P8284333854152591718.Spec := by
  intro n
  simp only [A307360, Nat.add_sub_cancel]

end A307360

/-! ## A307360.P12198583347042207100

`eq[1, A008620(A279119(n+1))]+1`
-/

namespace A307360.P12198583347042207100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A279119 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A307360.P12198583347042207100

namespace A307360

/-- `eq[1, A008620(A279119(n+1))]+1` -/
def P12198583347042207100.Spec : Prop :=
  ∀ n, (P12198583347042207100.a n : ℤ) = A307360 (n + 1)

end A307360

/-! ## A307360.P10227540592593222414

`eq[4, 4*a(A008620(A279119(n))-1)]` with `a(0)=1`
-/

namespace A307360.P10227540592593222414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  4 * f2 (A008620 (A279119 n).toNat - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307360.P10227540592593222414

namespace A307360

/-- `eq[4, 4*a(A008620(A279119(n))-1)]` -/
def P10227540592593222414.Spec : Prop :=
  ∀ n, (P10227540592593222414.a n : ℤ) = A307360 (n + 1)

end A307360

/-! ## A307360.P1005449995587673940

`record[A000027(n+1)/A008620(A279119(n+1))]`
-/

namespace A307360.P1005449995587673940
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A008620 (A279119 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307360.P1005449995587673940

namespace A307360

/-- `record[A000027(n+1)/A008620(A279119(n+1))]` -/
def P1005449995587673940.Spec : Prop :=
  ∀ n, P1005449995587673940.a n = (A307360 (n + 1) : ℚ)

end A307360

/-! ## A307360.P5907392711665378502

`eq[A014190(A279119(n+1)+1), A279119(n+1)]+1`
-/

namespace A307360.P5907392711665378502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (A279119 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A307360.P5907392711665378502

namespace A307360

/-- `eq[A014190(A279119(n+1)+1), A279119(n+1)]+1` -/
def P5907392711665378502.Spec : Prop :=
  ∀ n, (P5907392711665378502.a n : ℤ) = A307360 (n + 1)

end A307360

/-! ## A307360.P3539116559327749661

`record[A032742(n+1)%A189952(A014673(n+1))]`
-/

namespace A307360.P3539116559327749661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032742 (n + 1)) (A189952 (A014673 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307360.P3539116559327749661

namespace A307360

/-- `record[A032742(n+1)%A189952(A014673(n+1))]` -/
def P3539116559327749661.Spec : Prop :=
  ∀ n, P3539116559327749661.a n = A307360 (n + 1)

end A307360

/-! ## A307360.P11570506156836715829

`lt[A004273(A002620(n)), A020639(n+1)^4]+1`
-/

namespace A307360.P11570506156836715829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A002620 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A307360.P11570506156836715829

namespace A307360

/-- `lt[A004273(A002620(n)), A020639(n+1)^4]+1` -/
def P11570506156836715829.Spec : Prop :=
  ∀ n, (P11570506156836715829.a n : ℤ) = A307360 (n + 1)

end A307360

/-!
# A307361: Expansion of e.g.f. (sinh(x) + 5*cosh(x) - 5)/(3 - 2*cosh(x)).

The programs for A307361, there is no canonical definition to state claims against.
-/

/-! ## A307361.P4626124726167467883

`(A176742(n)²+1)*A050946(n)`
-/

namespace A307361.P4626124726167467883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176742 n ^ 2 + 1) * A050946 n

end

end A307361.P4626124726167467883

/-! ## A307361.P12342043125216746937

`A050946(n)*A052905(∑[(-1)^n])`
-/

namespace A307361.P12342043125216746937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050946 n * A052905 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307361.P12342043125216746937

/-! ## A307361.P3154528047542051849

`((A033999(n)+1)²+1)*A050946(n)`
-/

namespace A307361.P3154528047542051849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A033999 n + 1) ^ 2 + 1) * A050946 n

end

end A307361.P3154528047542051849

/-! ## A307361.P3974272507577101030

`A050946(n)*A052938(Δ[A168397(n+1)])`
-/

namespace A307361.P3974272507577101030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050946 n * A052938 (f1 (n + 1) - f1 n).toNat

end

end A307361.P3974272507577101030

/-! ## A307361.P8239381814433984135

`A050946(n)*A071655(A104629((-1)^n+1))`
-/

namespace A307361.P8239381814433984135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050946 n * A071655 (A104629 ((-1) ^ n + 1).toNat).toNat

end

end A307361.P8239381814433984135

/-!
# A307362: Expansion of e.g.f. Sum_{j>=0} (exp(x) - 1)^j / Product_{k=1..j} (1 - k*(exp(x) - 1)).

The programs for A307362, there is no canonical definition to state claims against.
-/

/-! ## A307362.P8208422904100358303

`A092432(a(n-1)+2)` with `a(0)=1, a(1)=1`
-/

namespace A307362.P8208422904100358303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A092432 (a (n - 1) + 2).toNat

end

end A307362.P8208422904100358303

/-!
# A307363: Expansion of e.g.f. Sum_{j>=0} log(1 + x)^j / Product_{k=1..j} (1 - k*log(1 + x)).

The programs for A307363, there is no canonical definition to state claims against.
-/

/-! ## A307363.P2603678146678692782

`A360189(∏[(n+1)!])`
-/

namespace A307363.P2603678146678692782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360189 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A307363.P2603678146678692782

/-!
# A307364: Expansion of 1/(1 - Sum_{k>=1} prime(k)#*x^k), where prime(k)# is the product of first k primes (A002110).

The programs for A307364, there is no canonical definition to state claims against.
-/

/-! ## A307364.P17692527290509521065

`A122927(a(n-1))+1` with `a(0)=1, a(1)=2`
-/

namespace A307364.P17692527290509521065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A122927 (a (n - 1)).toNat + 1

end

end A307364.P17692527290509521065

/-!
# A307367: Number of palindromic triangular numbers with exactly n digits.

The programs for A307367, there is no canonical definition to state claims against.
-/

/-! ## A307367.P11778654214264126557

`floor(A054263(n+1)+acot(n))`
-/

namespace A307367.P11778654214264126557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054263 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A307367.P11778654214264126557

/-! ## A307367.P16457756722993990026

`A054263(n+1)+A000007(n)`
-/

namespace A307367.P16457756722993990026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054263 (n + 1) + A000007 n

end

end A307367.P16457756722993990026

/-! ## A307367.P3749561553177922735

`A112316(n)+A054263(n+1)`
-/

namespace A307367.P3749561553177922735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 n + A054263 (n + 1)

end

end A307367.P3749561553177922735

/-! ## A307367.P9959897814571060121

`A151878(n)+A054263(n+1)`
-/

namespace A307367.P9959897814571060121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + A054263 (n + 1)

end

end A307367.P9959897814571060121

/-! ## A307367.P8890390531113677175

`A151909(n)+A054263(n+1)`
-/

namespace A307367.P8890390531113677175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n + A054263 (n + 1)

end

end A307367.P8890390531113677175

/-! ## A307367.P7102331203143007754

`A151933(n)+A054263(n+1)`
-/

namespace A307367.P7102331203143007754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + A054263 (n + 1)

end

end A307367.P7102331203143007754

/-! ## A307367.P18093028326823351073

`A151934(n)+A054263(n+1)`
-/

namespace A307367.P18093028326823351073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 n + A054263 (n + 1)

end

end A307367.P18093028326823351073

/-! ## A307367.P14635181235103772708

`A151935(n)+A054263(n+1)`
-/

namespace A307367.P14635181235103772708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151935 n + A054263 (n + 1)

end

end A307367.P14635181235103772708

/-!
# A307368: a(n) is the minimal positive integer such that 2*a(n)*prime(n)-1 equals another prime.

The programs for A307368, there is no canonical definition to state claims against.
-/

/-! ## A307368.P5622630293957662370

`ceil(A216568(n+1)/2)`
-/

namespace A307368.P5622630293957662370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A216568 (n + 1) : ℚ) / 2⌉

end

end A307368.P5622630293957662370

/-! ## A307368.P6713242483645347445

`A216568(n*floor(atan(abs(1-n)+1))+1)/2`
-/

namespace A307368.P6713242483645347445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216568 ((n : ℤ) * ⌊Real.arctan (|1 - (n : ℤ)| + 1 : ℝ)⌋ + 1).toNat : ℚ) / 2

end

end A307368.P6713242483645347445

/-! ## A307368.P9116742957337303302

`A004525(A216568(n+1))`
-/

namespace A307368.P9116742957337303302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A216568 (n + 1)).toNat

end

end A307368.P9116742957337303302

/-! ## A307368.P13716145892289985425

`A103961(p?[xor(1, n)])`
-/

namespace A307368.P13716145892289985425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A307368.P13716145892289985425

/-! ## A307368.P16168139959923382499

`A103961(p?[comp[n²]])`
-/

namespace A307368.P16168139959923382499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A307368.P16168139959923382499

/-! ## A307368.P14946130895247329941

`A103961(Δ[A007504(n)])`
-/

namespace A307368.P14946130895247329941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (f1 (n + 1) - f1 n).toNat

end

end A307368.P14946130895247329941

/-! ## A307368.P9155473444974914900

`A103961(A000040(n+1))`
-/

namespace A307368.P9155473444974914900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (A000040 (n + 1)).toNat

end

end A307368.P9155473444974914900

/-! ## A307368.P18200019432592281319

`A103961(A161847(n+1))`
-/

namespace A307368.P18200019432592281319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (A161847 (n + 1)).toNat

end

end A307368.P18200019432592281319

/-! ## A307368.P12936095353438880621

`A103961(A008578(n+2))`
-/

namespace A307368.P12936095353438880621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (A008578 (n + 2)).toNat

end

end A307368.P12936095353438880621

/-! ## A307368.P14956375964847338077

`A103961(A175787(n+2))`
-/

namespace A307368.P14956375964847338077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (A175787 (n + 2)).toNat

end

end A307368.P14956375964847338077

/-! ## A307368.P6071017194890878483

`A103961(A182986(n+2))`
-/

namespace A307368.P6071017194890878483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (A182986 (n + 2)).toNat

end

end A307368.P6071017194890878483

/-! ## A307368.P4697667442741479774

`A103961(sqrt(A001248(n+1)))`
-/

namespace A307368.P4697667442741479774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A307368.P4697667442741479774

/-! ## A307368.P6229114925823408357

`A103961(record[A006530(n+2)])`
-/

namespace A307368.P6229114925823408357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307368.P6229114925823408357

/-! ## A307368.P3711126008158880225

`A103961(record[A014963(n+2)])`
-/

namespace A307368.P3711126008158880225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307368.P3711126008158880225

/-! ## A307368.P10279551452236897168

`A103961(record[A020639(n+2)])`
-/

namespace A307368.P10279551452236897168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307368.P10279551452236897168

/-! ## A307368.P2211515299571264669

`A103961(A006093(n+1)+1)`
-/

namespace A307368.P2211515299571264669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (A006093 (n + 1) + 1).toNat

end

end A307368.P2211515299571264669

/-! ## A307368.P3204797211027449

`A103961(eq[1, A001065(n+1)]+1)`
-/

namespace A307368.P3204797211027449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A307368.P3204797211027449

/-! ## A307368.P17494182300080273027

`A103961(eq[n, A000010(n+1)]+1)`
-/

namespace A307368.P17494182300080273027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A307368.P17494182300080273027

/-! ## A307368.P17064318939239243279

`A103961(A007504(n+1)-A007504(n))`
-/

namespace A307368.P17064318939239243279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (A007504 (n + 1) - A007504 n).toNat

end

end A307368.P17064318939239243279

/-! ## A307368.P9730722023549907092

`A053989(A073582(n+1))`
-/

namespace A307368.P9730722023549907092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A073582 (n + 1)).toNat

end

end A307368.P9730722023549907092

/-!
# A307372: One half of the row length of A324251: one half of the length of the reduced principal cycle for discriminant 4*D(n), with D(n) = A000037(n).

The programs for A307372, there is no canonical definition to state claims against.
-/

/-! ## A307372.P1289602509548324026

`lcm(2, A013943(n+1))/2`
-/

namespace A307372.P1289602509548324026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A013943 (n + 1)) : ℚ) / 2

end

end A307372.P1289602509548324026

/-! ## A307372.P16346448415398886288

`A026741(A013943(n+1))`
-/

namespace A307372.P16346448415398886288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A013943 (n + 1)).toNat

end

end A307372.P16346448415398886288

/-! ## A307372.P7344199130552031665

`A026741(A003285(comp[n²]))`
-/

namespace A307372.P7344199130552031665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003285 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A307372.P7344199130552031665

/-! ## A307372.P17234413815319006624

`A026741(A097853(comp[n²]))`
-/

namespace A307372.P17234413815319006624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A097853 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A307372.P17234413815319006624

/-! ## A307372.P14380561854869220053

`A030065(2*A013943(n+1))`
-/

namespace A307372.P14380561854869220053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (2 * A013943 (n + 1)).toNat

end

end A307372.P14380561854869220053

/-! ## A307372.P11510857447140869949

`A060819(2*A013943(n+1))`
-/

namespace A307372.P11510857447140869949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * A013943 (n + 1)).toNat

end

end A307372.P11510857447140869949

/-! ## A307372.P4722400105983547187

`A106609(4*A013943(n+1))`
-/

namespace A307372.P4722400105983547187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (4 * A013943 (n + 1)).toNat

end

end A307372.P4722400105983547187

/-! ## A307372.P2618332887962190516

`A106611(5*A013943(n+1))`
-/

namespace A307372.P2618332887962190516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (5 * A013943 (n + 1)).toNat

end

end A307372.P2618332887962190516

/-! ## A307372.P16153012859139928225

`A051724(6*A013943(n+1))`
-/

namespace A307372.P16153012859139928225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (6 * A013943 (n + 1)).toNat

end

end A307372.P16153012859139928225

/-! ## A307372.P2521187979961380500

`A083345(2^A013943(n+1))`
-/

namespace A307372.P2521187979961380500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A013943 (n + 1) : ℤ))).toNat

end

end A307372.P2521187979961380500

/-!
# A307373: Heinz numbers of integer partitions with at least three parts, the third of which is 2.

The programs for A307373, there is no canonical definition to state claims against.
-/

/-! ## A307373.P6454305107385869014

`3*A325164(n+1)`
-/

namespace A307373.P6454305107385869014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A325164 (n + 1)

end

end A307373.P6454305107385869014

/-! ## A307373.P3982082759673442902

`3*(eq[2, A257990(n+1)]+1)`
-/

namespace A307373.P3982082759673442902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A307373.P3982082759673442902

/-! ## A307373.P17640884095211584103

`A008486(A325164(n+1))`
-/

namespace A307373.P17640884095211584103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A325164 (n + 1)).toNat

end

end A307373.P17640884095211584103

/-! ## A307373.P5143590038180980031

`record[3*A325164(A100727(n))]`
-/

namespace A307373.P5143590038180980031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A325164 (A100727 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307373.P5143590038180980031

/-! ## A307373.P12718519098700728904

`3*eq[2, A257990(A004277(n))]`
-/

namespace A307373.P12718519098700728904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307373.P12718519098700728904

/-! ## A307373.P6035742101539506147

`A016777(A325164(n+1)-1)+2`
-/

namespace A307373.P6035742101539506147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A325164 (n + 1) - 1).toNat + 2

end

end A307373.P6035742101539506147

/-! ## A307373.P16654141696749740145

`A008486(eq[2, A257990(n+1)]+1)`
-/

namespace A307373.P16654141696749740145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A307373.P16654141696749740145

/-! ## A307373.P16576455298543658072

`A008585(A325164(n+1)/gcd(n, n+1))`
-/

namespace A307373.P16576455298543658072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (SequenceMachineLib.roundAway ((A325164 (n + 1) : ℚ) / (Nat.gcd n (n + 1) : ℚ))).toNat

end

end A307373.P16576455298543658072

/-! ## A307373.P13287404772033217800

`A299417(A325164(n+1)+A325164(n+1)-1)`
-/

namespace A307373.P13287404772033217800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299417 (A325164 (n + 1) + (A325164 (n + 1) - 1)).toNat

end

end A307373.P13287404772033217800

/-! ## A307373.P17160265032123482153

`A325164(n+1)+A325164(A120951(n+1))+A325164(n+1)`
-/

namespace A307373.P17160265032123482153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325164 (n + 1) + (A325164 (A120951 (n + 1)).toNat + A325164 (n + 1))

end

end A307373.P17160265032123482153

/-!
# A307375: Expansion of Sum_{j>=0} j!*x^j / Product_{k=1..j} (1 - k^2*x).

The programs for A307375, there is no canonical definition to state claims against.
-/

/-! ## A307375.P12828927845174371511

`A290383(2*n)`
-/

namespace A307375.P12828927845174371511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290383 (2 * n)

end

end A307375.P12828927845174371511

/-! ## A307375.P15247328684922682882

`or(1, A290383(A004277(n)))`
-/

namespace A307375.P15247328684922682882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290383 (A004277 n).toNat)

end

end A307375.P15247328684922682882

/-! ## A307375.P17881991781478703653

`or(1, A290383(A005843(n)))`
-/

namespace A307375.P17881991781478703653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290383 (A005843 n).toNat)

end

end A307375.P17881991781478703653

/-! ## A307375.P1329899790960034596

`gcd(A000038(n), A290383(A005843(n)))`
-/

namespace A307375.P1329899790960034596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A290383 (A005843 n).toNat)

end

end A307375.P1329899790960034596

/-! ## A307375.P15139421040050786895

`A290383(A005843(n))/A000108(gcd(n, n+1))`
-/

namespace A307375.P15139421040050786895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290383 (A005843 n).toNat : ℚ) / (A000108 (Nat.gcd n (n + 1)) : ℚ)

end

end A307375.P15139421040050786895

/-!
# A307376: a(n) = 1/n! * Sum_{k=0..n} (2*n+k)!/((n-k)!*k!*2^k).

The programs for A307376, there is no canonical definition to state claims against.
-/

/-! ## A307376.P16147094446455556825

`abs(A144505(A001844(n)))`
-/

namespace A307376.P16147094446455556825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A144505 (A001844 n).toNat|

end

end A307376.P16147094446455556825

/-! ## A307376.P13107953689098930321

`abs(A144505(∑[A008574(n)]))`
-/

namespace A307376.P13107953689098930321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A144505 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A307376.P13107953689098930321

/-! ## A307376.P12444914992675653311

`abs(A144505(Δ[A005900(n)]))`
-/

namespace A307376.P12444914992675653311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A144505 (f1 (n + 1) - f1 n).toNat|

end

end A307376.P12444914992675653311

/-! ## A307376.P1152335935641723035

`record[abs(A144505(A178218(n+1)))]`
-/

namespace A307376.P1152335935641723035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A144505 (A178218 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307376.P1152335935641723035

/-! ## A307376.P14765929173481543792

`abs(A144505(A000217(2*n+1)-n))`
-/

namespace A307376.P14765929173481543792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A144505 (A000217 (2 * n + 1) - (n : ℤ)).toNat|

end

end A307376.P14765929173481543792

/-!
# A307377: Array A(n, k) read by upwards antidiagonals giving the number of representative parallel primitive binary quadratic forms for discriminant Disc(n) = 4*D(n), with D(n) = A000037(n), and for representable integer |k| >= 1.

The programs for A307377, there is no canonical definition to state claims against.
-/

/-! ## A307377.P845573820055836356

`and(A215401(A050029(n+1)), A299038(n))`
-/

namespace A307377.P845573820055836356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A215401 (A050029 (n + 1)).toNat) (A299038 n)

end

end A307377.P845573820055836356

/-! ## A307377.P5630288533944901222

`and(A215401(A050029(n+1)), A215401(n+1))`
-/

namespace A307377.P5630288533944901222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A215401 (A050029 (n + 1)).toNat) (A215401 (n + 1))

end

end A307377.P5630288533944901222

/-! ## A307377.P17508317730894844640

`and(A092081(A069777(n)), A334546(n))`
-/

namespace A307377.P17508317730894844640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092081 (A069777 n).toNat) (A334546 n)

end

end A307377.P17508317730894844640

/-! ## A307377.P1885587988027431388

`and(A212218(A142589(n)), A290353(n))`
-/

namespace A307377.P1885587988027431388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A212218 (A142589 n).toNat) (A290353 n)

end

end A307377.P1885587988027431388

/-! ## A307377.P9496714511600394093

`and(A212218(A142589(n)), A334546(n))`
-/

namespace A307377.P9496714511600394093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A212218 (A142589 n).toNat) (A334546 n)

end

end A307377.P9496714511600394093

/-!
# A307380: Number of quintic primitive Dirichlet characters modulo n.

The programs for A307380, there is no canonical definition to state claims against.
-/

/-! ## A307380.P2531126246575662282

`∑{d}[n+1, A008683(#)*A319099((n+1)/#)]`
-/

namespace A307380.P2531126246575662282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A319099 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307380.P2531126246575662282

/-! ## A307380.P16497457456748790860

`and(A022274(A338506(n+1)), A319099(n+1))`
-/

namespace A307380.P16497457456748790860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022274 (A338506 (n + 1)).toNat) (A319099 (n + 1))

end

end A307380.P16497457456748790860

/-! ## A307380.P17297154237612106252

`and(A087687(A087784(n+1)), A319099(n+1))`
-/

namespace A307380.P17297154237612106252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087687 (A087784 (n + 1)).toNat) (A319099 (n + 1))

end

end A307380.P17297154237612106252

/-! ## A307380.P15953307253707109712

`A354058(∑[n+4]+11)`
-/

namespace A307380.P15953307253707109712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354058 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A307380.P15953307253707109712

/-! ## A307380.P14958271981327704560

`char[A030206(2*(n+1))]*A354058(A167499(n+3))`
-/

namespace A307380.P14958271981327704560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030206 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A354058 (A167499 (n + 3)).toNat

end

end A307380.P14958271981327704560

/-! ## A307380.P12151650524598247158

`char[A268192(2*n+3)]*A354058(A167499(n+3))`
-/

namespace A307380.P12151650524598247158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268192 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A354058 (A167499 (n + 3)).toNat

end

end A307380.P12151650524598247158

/-! ## A307380.P15763332758396040635

`and(A285052(A046523(n+1)), A319099(n+1))`
-/

namespace A307380.P15763332758396040635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285052 (A046523 (n + 1)).toNat) (A319099 (n + 1))

end

end A307380.P15763332758396040635

/-! ## A307380.P12637924312139619074

`and(A285052(n+1), A319099(n+1))`
-/

namespace A307380.P12637924312139619074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285052 (n + 1)) (A319099 (n + 1))

end

end A307380.P12637924312139619074

/-! ## A307380.P9222037586751068052

`and(A023904(n), A319099(n+1))`
-/

namespace A307380.P9222037586751068052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023904 n) (A319099 (n + 1))

end

end A307380.P9222037586751068052

/-! ## A307380.P9751120593684348815

`and(A033688(n), A319099(n+1))`
-/

namespace A307380.P9751120593684348815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033688 n) (A319099 (n + 1))

end

end A307380.P9751120593684348815

/-!
# A307381: Number of sextic primitive Dirichlet characters modulo n.

The programs for A307381, the canonical program `A307381.P12662117091474292687` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307381 has offset 1).

The definition of A307381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307381.P12662117091474292687

`∑{d}[n+1, A008683(#)*A319100((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A307381

/-- `∑{d}[n+1, A008683(#)*A319100((n+1)/#)]` -/
def P12662117091474292687.Spec : Prop :=
  ∀ n, P12662117091474292687.a n = A307381 (n + 1)

theorem P12662117091474292687.correct : P12662117091474292687.Spec := by
  intro n
  simp only [A307381, Nat.add_sub_cancel]

end A307381

/-! ## A307381.P762694534760462917

`A354058(A167499(n+4)+1)`
-/

namespace A307381.P762694534760462917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354058 (A167499 (n + 4) + 1).toNat

end

end A307381.P762694534760462917

namespace A307381

/-- `A354058(A167499(n+4)+1)` -/
def P762694534760462917.Spec : Prop :=
  ∀ n, P762694534760462917.a n = A307381 (n + 1)

end A307381

/-! ## A307381.P2265074605750433972

`A354058(A167614(n+4)+3)`
-/

namespace A307381.P2265074605750433972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354058 (A167614 (n + 4) + 3).toNat

end

end A307381.P2265074605750433972

namespace A307381

/-- `A354058(A167614(n+4)+3)` -/
def P2265074605750433972.Spec : Prop :=
  ∀ n, P2265074605750433972.a n = A307381 (n + 1)

end A307381

/-! ## A307381.P1279017038965422924

`A354058(A000217(n+5)+6)`
-/

namespace A307381.P1279017038965422924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354058 (A000217 (n + 5) + 6).toNat

end

end A307381.P1279017038965422924

namespace A307381

/-- `A354058(A000217(n+5)+6)` -/
def P1279017038965422924.Spec : Prop :=
  ∀ n, P1279017038965422924.a n = A307381 (n + 1)

end A307381

/-! ## A307381.P4650401728911289922

`A354058(eq[7, A131818(n+1)])`
-/

namespace A307381.P4650401728911289922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354058 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307381.P4650401728911289922

namespace A307381

/-- `A354058(eq[7, A131818(n+1)])` -/
def P4650401728911289922.Spec : Prop :=
  ∀ n, P4650401728911289922.a n = A307381 (n + 1)

end A307381

/-!
# A307382: Number of septic primitive Dirichlet characters modulo n.

The programs for A307382, there is no canonical definition to state claims against.
-/

/-! ## A307382.P1992668268210644402

`∑{d}[n+1, A008683(#)*A319101((n+1)/#)]`
-/

namespace A307382.P1992668268210644402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A319101 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307382.P1992668268210644402

/-! ## A307382.P10190283777893562377

`A354058(A056119(n)+28)`
-/

namespace A307382.P10190283777893562377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354058 (A056119 n + 28).toNat

end

end A307382.P10190283777893562377

/-! ## A307382.P11126916296677349255

`A354058(A166136(n+5)+1)`
-/

namespace A307382.P11126916296677349255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354058 (A166136 (n + 5) + 1).toNat

end

end A307382.P11126916296677349255

/-! ## A307382.P15293676407461271609

`A354058(A000096(n+5)+8)`
-/

namespace A307382.P15293676407461271609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354058 (A000096 (n + 5) + 8).toNat

end

end A307382.P15293676407461271609

/-! ## A307382.P2696696025826112122

`A354058(A000217(n+6)+7)`
-/

namespace A307382.P2696696025826112122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354058 (A000217 (n + 6) + 7).toNat

end

end A307382.P2696696025826112122

/-! ## A307382.P16764341731833386190

`and(A003945(A337228(n+1)), A319101(n+1))`
-/

namespace A307382.P16764341731833386190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003945 (A337228 (n + 1)).toNat) (A319101 (n + 1))

end

end A307382.P16764341731833386190

/-! ## A307382.P13238154986934707741

`and(A001106(A285052(n+1)), A319101(n+1))`
-/

namespace A307382.P13238154986934707741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001106 (A285052 (n + 1)).toNat) (A319101 (n + 1))

end

end A307382.P13238154986934707741

/-! ## A307382.P6648941701692385964

`A002088(and(A285052(n+1), A319101(n+1)))`
-/

namespace A307382.P6648941701692385964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (Int.land (A285052 (n + 1)) (A319101 (n + 1))).toNat

end

end A307382.P6648941701692385964

/-!
# A307386: Heinz numbers of integer partitions with Durfee square of length 3.

The programs for A307386, there is no canonical definition to state claims against.
-/

/-! ## A307386.P16297671660830647481

`A307515(n+1)+char[a(floor(n/4))+2+n]` with `a(0)=66`
-/

namespace A307386.P16297671660830647481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [66] fun n f1 =>
  f1 ⌊(n : ℚ) / 4⌋.toNat + 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307515 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A307386.P16297671660830647481

/-! ## A307386.P13699412772482341354

`A307515(char[A171175(n)]+n)`
-/

namespace A307386.P13699412772482341354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171175 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307515 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A307386.P13699412772482341354

/-! ## A307386.P16765578868731998734

`A307515(A323022(n+2)+n)`
-/

namespace A307386.P16765578868731998734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307515 (A323022 (n + 2) + (n : ℤ)).toNat

end

end A307386.P16765578868731998734

/-! ## A307386.P10784539219046214605

`filter[A307515(n+1), A043545(#)]`
-/

namespace A307386.P10784539219046214605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A307386.P10784539219046214605

/-! ## A307386.P11664754225739410475

`filter[A307515(n+1), A072165(#)]`
-/

namespace A307386.P11664754225739410475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072165 (f1 j).toNat = 1) n)

end

end A307386.P11664754225739410475

/-! ## A307386.P10646712263747108339

`filter[A307515(n+1), A095792(#)]`
-/

namespace A307386.P10646712263747108339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095792 (f1 j).toNat = 1) n)

end

end A307386.P10646712263747108339

/-! ## A307386.P12786250835316666232

`filter[A307515(n+1), A168182(#)]`
-/

namespace A307386.P12786250835316666232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A307386.P12786250835316666232

/-! ## A307386.P3296981703004201907

`filter[A307515(n+1), A168185(#)]`
-/

namespace A307386.P3296981703004201907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A307386.P3296981703004201907

/-! ## A307386.P6559775402585430864

`filter[A307515(n+1), A265186(#)]`
-/

namespace A307386.P6559775402585430864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A265186 (f1 j).toNat = 1) n)

end

end A307386.P6559775402585430864

/-! ## A307386.P9695746178703002692

`filter[A307515(n+1), A267442(#)]`
-/

namespace A307386.P9695746178703002692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A307386.P9695746178703002692

/-!
# A307388: Length of the period of decimal representation of Product_{k=1..n} A038111(k)/A038110(k).

The programs for A307388, there is no canonical definition to state claims against.
-/

/-! ## A307388.P5070590435043068798

`A006530(A000400(n))^A327141(n+1)`
-/

namespace A307388.P5070590435043068798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (A000400 n).toNat : ℚ) ^ (A327141 (n + 1) : ℤ)

end

end A307388.P5070590435043068798

/-! ## A307388.P1381506777688441104

`3^A130245(A302927(n))`
-/

namespace A307388.P1381506777688441104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A130245 (A302927 n).toNat : ℤ)

end

end A307388.P1381506777688441104

/-!
# A307389: a(n) is the number of elements in the species of orbit polytopes in dimension n.

The programs for A307389, there is no canonical definition to state claims against.
-/

/-! ## A307389.P6171196312989163597

`A033270(A261497(n)+2)`
-/

namespace A307389.P6171196312989163597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A261497 n + 2).toNat

end

end A307389.P6171196312989163597

/-! ## A307389.P10575045829849547021

`A033270(or(2, A261497(n)))`
-/

namespace A307389.P10575045829849547021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (Int.lor 2 (A261497 n)).toNat

end

end A307389.P10575045829849547021

/-! ## A307389.P6423575630068162160

`A234514(A005650(n))+n!`
-/

namespace A307389.P6423575630068162160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234514 (A005650 n).toNat + (Nat.factorial n : ℤ)

end

end A307389.P6423575630068162160

/-!
# A307390: Primes p such that 2*p-1 is not prime.

The programs for A307390, the canonical program `A307390.P18238865326360100197` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307390 has offset 1).

The definition of A307390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307390.P11892936238457079545

`A109274(n+1)+1`
-/

namespace A307390.P11892936238457079545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109274 (n + 1) + 1

end

end A307390.P11892936238457079545

namespace A307390

/-- `A109274(n+1)+1` -/
def P11892936238457079545.Spec : Prop :=
  ∀ n, P11892936238457079545.a n = A307390 (n + 1)

end A307390

/-! ## A307390.P18238865326360100197

`∪[A068497(n+1), A007528(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A307390

/-- `∪[A068497(n+1), A007528(n+1)]` -/
def P18238865326360100197.Spec : Prop :=
  ∀ n, (P18238865326360100197.a n : ℤ) = A307390 (n + 1)

theorem P18238865326360100197.correct : P18238865326360100197.Spec := by
  intro n
  simp only [A307390, Nat.add_sub_cancel]

end A307390

/-! ## A307390.P16354074425588247597

`A065091(eq[1, A181715(n+1)])`
-/

namespace A307390.P16354074425588247597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307390.P16354074425588247597

namespace A307390

/-- `A065091(eq[1, A181715(n+1)])` -/
def P16354074425588247597.Spec : Prop :=
  ∀ n, P16354074425588247597.a n = A307390 (n + 1)

end A307390

/-! ## A307390.P10755347857309540736

`A045344(lt[2, A216568(n+1)])`
-/

namespace A307390.P10755347857309540736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A307390.P10755347857309540736

namespace A307390

/-- `A045344(lt[2, A216568(n+1)])` -/
def P10755347857309540736.Spec : Prop :=
  ∀ n, P10755347857309540736.a n = A307390 (n + 1)

end A307390

/-! ## A307390.P15768545368309173368

`p?[A000040(n+1)*A181715(n+1)]`
-/

namespace A307390.P15768545368309173368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A181715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307390.P15768545368309173368

namespace A307390

/-- `p?[A000040(n+1)*A181715(n+1)]` -/
def P15768545368309173368.Spec : Prop :=
  ∀ n, P15768545368309173368.a n = A307390 (n + 1)

end A307390

/-! ## A307390.P7482327086944915187

`p?[A008578(n+2)*A181715(n+1)]`
-/

namespace A307390.P7482327086944915187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A181715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307390.P7482327086944915187

namespace A307390

/-- `p?[A008578(n+2)*A181715(n+1)]` -/
def P7482327086944915187.Spec : Prop :=
  ∀ n, P7482327086944915187.a n = A307390 (n + 1)

end A307390

/-! ## A307390.P1475190154379797307

`p?[A171435(2*n+1)-n]`
-/

namespace A307390.P1475190154379797307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307390.P1475190154379797307

namespace A307390

/-- `p?[A171435(2*n+1)-n]` -/
def P1475190154379797307.Spec : Prop :=
  ∀ n, P1475190154379797307.a n = A307390 (n + 1)

end A307390

/-! ## A307390.P16155961557530654266

`p?[gcd(n+2, A156707(n+1))]`
-/

namespace A307390.P16155961557530654266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A156707 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A307390.P16155961557530654266

namespace A307390

/-- `p?[gcd(n+2, A156707(n+1))]` -/
def P16155961557530654266.Spec : Prop :=
  ∀ n, (P16155961557530654266.a n : ℤ) = A307390 (n + 1)

end A307390

/-! ## A307390.P14889237258754630992

`lt[A101264(n), A010051(n+1)]+1`
-/

namespace A307390.P14889237258754630992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A307390.P14889237258754630992

namespace A307390

/-- `lt[A101264(n), A010051(n+1)]+1` -/
def P14889237258754630992.Spec : Prop :=
  ∀ n, (P14889237258754630992.a n : ℤ) = A307390 (n + 1)

end A307390

/-! ## A307390.P16658712599819954460

`record[A006530(A337610(n+2))]`
-/

namespace A307390.P16658712599819954460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A337610 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307390.P16658712599819954460

namespace A307390

/-- `record[A006530(A337610(n+2))]` -/
def P16658712599819954460.Spec : Prop :=
  ∀ n, P16658712599819954460.a n = A307390 (n + 1)

end A307390

/-! ## A307390.P2217242696057554708

`p?[record[A171435(A171435(n+1)+1)]]`
-/

namespace A307390.P2217242696057554708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A171435 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307390.P2217242696057554708

namespace A307390

/-- `p?[record[A171435(A171435(n+1)+1)]]` -/
def P2217242696057554708.Spec : Prop :=
  ∀ n, P2217242696057554708.a n = A307390 (n + 1)

end A307390

/-! ## A307390.P12152210779706437485

`p?[comp[lcm(n+1, A001222(2*n+1))]]`
-/

namespace A307390.P12152210779706437485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A001222 (2 * n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A307390.P12152210779706437485

namespace A307390

/-- `p?[comp[lcm(n+1, A001222(2*n+1))]]` -/
def P12152210779706437485.Spec : Prop :=
  ∀ n, (P12152210779706437485.a n : ℤ) = A307390 (n + 1)

end A307390

/-! ## A307390.P16038505836383113794

`record[A006530(A039689(n+1))]`
-/

namespace A307390.P16038505836383113794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A039689 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307390.P16038505836383113794

namespace A307390

/-- `record[A006530(A039689(n+1))]` -/
def P16038505836383113794.Spec : Prop :=
  ∀ n, P16038505836383113794.a n = A307390 (n + 1)

end A307390

/-! ## A307390.P641141344269131796

`eq[A107393(2*n+1), A107463(n+1)]+1`
-/

namespace A307390.P641141344269131796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A307390.P641141344269131796

namespace A307390

/-- `eq[A107393(2*n+1), A107463(n+1)]+1` -/
def P641141344269131796.Spec : Prop :=
  ∀ n, (P641141344269131796.a n : ℤ) = A307390 (n + 1)

end A307390

/-! ## A307390.P4233208747163741936

`lt[A107463(n+1), A001222(2*n+1)]+1`
-/

namespace A307390.P4233208747163741936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A307390.P4233208747163741936

namespace A307390

/-- `lt[A107463(n+1), A001222(2*n+1)]+1` -/
def P4233208747163741936.Spec : Prop :=
  ∀ n, (P4233208747163741936.a n : ℤ) = A307390 (n + 1)

end A307390

/-! ## A307390.P8311896509856262629

`record[A006530(A060658(n+2))]`
-/

namespace A307390.P8311896509856262629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A060658 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307390.P8311896509856262629

namespace A307390

/-- `record[A006530(A060658(n+2))]` -/
def P8311896509856262629.Spec : Prop :=
  ∀ n, P8311896509856262629.a n = A307390 (n + 1)

end A307390

/-! ## A307390.P15116758976881056971

`record[A006530(A307055(n+2))]`
-/

namespace A307390.P15116758976881056971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A307055 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307390.P15116758976881056971

namespace A307390

/-- `record[A006530(A307055(n+2))]` -/
def P15116758976881056971.Spec : Prop :=
  ∀ n, P15116758976881056971.a n = A307390 (n + 1)

end A307390

/-! ## A307390.P3489639250705153804

`lt[A175126(n+1), A001222(2*n+1)]+1`
-/

namespace A307390.P3489639250705153804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A307390.P3489639250705153804

namespace A307390

/-- `lt[A175126(n+1), A001222(2*n+1)]+1` -/
def P3489639250705153804.Spec : Prop :=
  ∀ n, (P3489639250705153804.a n : ℤ) = A307390 (n + 1)

end A307390

/-! ## A307390.P5203210190582577190

`record[A020639(A077654(n+1)+1)]`
-/

namespace A307390.P5203210190582577190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A077654 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307390.P5203210190582577190

namespace A307390

/-- `record[A020639(A077654(n+1)+1)]` -/
def P5203210190582577190.Spec : Prop :=
  ∀ n, P5203210190582577190.a n = A307390 (n + 1)

end A307390

/-!
# A307391: a(n) is the number of canonical polygons with 4n edges containing only right angles.

The programs for A307391, there is no canonical definition to state claims against.
-/

/-! ## A307391.P12845207469614866813

`2*A156228(n+1)`
-/

namespace A307391.P12845207469614866813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156228 (n + 1)

end

end A307391.P12845207469614866813

/-! ## A307391.P7051201301908150944

`A156228(n+1)+A156228(A077168(n))`
-/

namespace A307391.P7051201301908150944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156228 (n + 1) + A156228 (A077168 n).toNat

end

end A307391.P7051201301908150944

/-! ## A307391.P5011917951035594304

`A156228(n+1)+A156228(A348553(n))`
-/

namespace A307391.P5011917951035594304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156228 (n + 1) + A156228 (A348553 n).toNat

end

end A307391.P5011917951035594304

/-! ## A307391.P4379246782545616091

`A156228(A000027(n+1))+A156228(n+1)`
-/

namespace A307391.P4379246782545616091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156228 (A000027 (n + 1)).toNat + A156228 (n + 1)

end

end A307391.P4379246782545616091

/-! ## A307391.P5665567471391427935

`A156228(A008684(n+1))+A156228(n+1)`
-/

namespace A307391.P5665567471391427935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156228 (A008684 (n + 1)).toNat + A156228 (n + 1)

end

end A307391.P5665567471391427935

/-!
# A307394: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals, where column k is the expansion of g.f. ((1-x)^(k-4))/((1-x)^k+x^k).

The programs for A307394, there is no canonical definition to state claims against.
-/

/-! ## A307394.P15969106033717829817

`A160755(A268327(n+1)^A192062(n))`
-/

namespace A307394.P15969106033717829817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (SequenceMachineLib.roundAway ((A268327 (n + 1) : ℚ) ^ (A192062 n : ℤ))).toNat

end

end A307394.P15969106033717829817

/-! ## A307394.P4042403989989019595

`A160755(C(A268327(n+1), A192062(n)))`
-/

namespace A307394.P4042403989989019595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (Nat.choose (A268327 (n + 1)).toNat (A192062 n).toNat)

end

end A307394.P4042403989989019595

/-! ## A307394.P6183703380961726433

`A000217(A002262(n))+A057495(A210224(n+1))%19`
-/

namespace A307394.P6183703380961726433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002262 n).toNat + Int.tmod (A057495 (A210224 (n + 1)).toNat) 19

end

end A307394.P6183703380961726433

/-! ## A307394.P10227157791729140558

`A080818(n+1)^A174545(n)!`
-/

namespace A307394.P10227157791729140558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080818 (n + 1) ^ Nat.factorial (A174545 n).toNat

end

end A307394.P10227157791729140558

/-! ## A307394.P8979749062571477018

`A286159(n+1)^A000055(A250470(n+1))`
-/

namespace A307394.P8979749062571477018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286159 (n + 1) : ℚ) ^ (A000055 (A250470 (n + 1)).toNat : ℤ)

end

end A307394.P8979749062571477018

/-!
# A307395: Expansion of 1/((1 - x) * ((1 - x)^3 + x^3)).

The programs for A307395, the canonical program `A307395.P15571226911867291071` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307395 has offset 0).

The definition of A307395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307395.P15571226911867291071

`4*a(n-1)-6*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=4, a(2)=10`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A307395

/-- `4*a(n-1)-6*a(n-2)+3*a(n-3)` -/
def P15571226911867291071.Spec : Prop :=
  ∀ n, P15571226911867291071.a n = A307395 n

theorem P15571226911867291071.correct : P15571226911867291071.Spec := by
  intro n
  simp only [A307395]

end A307395

/-! ## A307395.P6725283127632771509

`1-A057681(n+3)`
-/

namespace A307395.P6725283127632771509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057681 (n + 3)

end

end A307395.P6725283127632771509

namespace A307395

/-- `1-A057681(n+3)` -/
def P6725283127632771509.Spec : Prop :=
  ∀ n, P6725283127632771509.a n = A307395 n

end A307395

/-! ## A307395.P1104627410631780604

`∑[3*(a(n-1)-a(n-2))]` with `a(0)=1, a(1)=3`
-/

namespace A307395.P1104627410631780604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307395.P1104627410631780604

namespace A307395

/-- `∑[3*(a(n-1)-a(n-2))]` -/
def P1104627410631780604.Spec : Prop :=
  ∀ n, P1104627410631780604.a n = A307395 n

end A307395

/-! ## A307395.P7424957899410428061

`3*(a(n-1)-a(n-2))+1` with `a(0)=1, a(1)=4`
-/

namespace A307395.P7424957899410428061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * (a (n - 1) - a (n - 2)) + 1

end

end A307395.P7424957899410428061

namespace A307395

/-- `3*(a(n-1)-a(n-2))+1` -/
def P7424957899410428061.Spec : Prop :=
  ∀ n, P7424957899410428061.a n = A307395 n

end A307395

/-! ## A307395.P14285059463173677811

`1-3*(a(n-2)-a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A307395.P14285059463173677811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  1 - 3 * (a (n - 2) - a (n - 1))

end

end A307395.P14285059463173677811

namespace A307395

/-- `1-3*(a(n-2)-a(n-1))` -/
def P14285059463173677811.Spec : Prop :=
  ∀ n, P14285059463173677811.a n = A307395 n

end A307395

/-! ## A307395.P1431613491540383864

`∑[A057083(n)]`
-/

namespace A307395.P1431613491540383864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307395.P1431613491540383864

namespace A307395

/-- `∑[A057083(n)]` -/
def P1431613491540383864.Spec : Prop :=
  ∀ n, P1431613491540383864.a n = A307395 n

end A307395

/-! ## A307395.P14937662496910041847

`∑[∑[∑[A057681(n)]]]`
-/

namespace A307395.P14937662496910041847
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307395.P14937662496910041847

namespace A307395

/-- `∑[∑[∑[A057681(n)]]]` -/
def P14937662496910041847.Spec : Prop :=
  ∀ n, P14937662496910041847.a n = A307395 n

end A307395

/-! ## A307395.P9380718205393201226

`∑[∑[A057682(n+1)]]`
-/

namespace A307395.P9380718205393201226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307395.P9380718205393201226

namespace A307395

/-- `∑[∑[A057682(n+1)]]` -/
def P9380718205393201226.Spec : Prop :=
  ∀ n, P9380718205393201226.a n = A307395 n

end A307395

/-! ## A307395.P393795815284235570

`1-Δ[A057682(n+3)]`
-/

namespace A307395.P393795815284235570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A307395.P393795815284235570

namespace A307395

/-- `1-Δ[A057682(n+3)]` -/
def P393795815284235570.Spec : Prop :=
  ∀ n, P393795815284235570.a n = A307395 n

end A307395

/-! ## A307395.P2653807414558254197

`∑[∑[∑[A103312(n+1)]]]`
-/

namespace A307395.P2653807414558254197
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307395.P2653807414558254197

namespace A307395

/-- `∑[∑[∑[A103312(n+1)]]]` -/
def P2653807414558254197.Spec : Prop :=
  ∀ n, P2653807414558254197.a n = A307395 n

end A307395

/-! ## A307395.P12489260500664148661

`1-Δ[Δ[A057083(n+1)]]`
-/

namespace A307395.P12489260500664148661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057083 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A307395.P12489260500664148661

namespace A307395

/-- `1-Δ[Δ[A057083(n+1)]]` -/
def P12489260500664148661.Spec : Prop :=
  ∀ n, P12489260500664148661.a n = A307395 n

end A307395

/-! ## A307395.P11699866228317783360

`a(n-1)+3*A057682(n)` with `a(0)=1`
-/

namespace A307395.P11699866228317783360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 * A057682 n

end

end A307395.P11699866228317783360

namespace A307395

/-- `a(n-1)+3*A057682(n)` -/
def P11699866228317783360.Spec : Prop :=
  ∀ n, P11699866228317783360.a n = A307395 n

end A307395

/-! ## A307395.P2478663970497405971

`A133331(2*n)+1`
-/

namespace A307395.P2478663970497405971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133331 (2 * n) + 1

end

end A307395.P2478663970497405971

namespace A307395

/-- `A133331(2*n)+1` -/
def P2478663970497405971.Spec : Prop :=
  ∀ n, P2478663970497405971.a n = A307395 n

end A307395

/-! ## A307395.P10292834233388359430

`(A279231(n+1)-(n+2))/3`
-/

namespace A307395.P10292834233388359430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279231 (n + 1) - (n + 2 : ℤ) : ℚ) / 3

end

end A307395.P10292834233388359430

namespace A307395

/-- `(A279231(n+1)-(n+2))/3` -/
def P10292834233388359430.Spec : Prop :=
  ∀ n, P10292834233388359430.a n = (A307395 n : ℚ)

end A307395

/-! ## A307395.P12097790879985596781

`∑[A131292(2*(n+1))]`
-/

namespace A307395.P12097790879985596781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131292 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307395.P12097790879985596781

namespace A307395

/-- `∑[A131292(2*(n+1))]` -/
def P12097790879985596781.Spec : Prop :=
  ∀ n, P12097790879985596781.a n = A307395 n

end A307395

/-! ## A307395.P7023095325185773608

`∑[∑[A236311(∑[n])]]`
-/

namespace A307395.P7023095325185773608
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236311 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307395.P7023095325185773608

namespace A307395

/-- `∑[∑[A236311(∑[n])]]` -/
def P7023095325185773608.Spec : Prop :=
  ∀ n, P7023095325185773608.a n = A307395 n

end A307395

/-! ## A307395.P1102953073509965335

`A307394(∑[n+3])`
-/

namespace A307395.P1102953073509965335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307394 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307395.P1102953073509965335

namespace A307395

/-- `A307394(∑[n+3])` -/
def P1102953073509965335.Spec : Prop :=
  ∀ n, P1102953073509965335.a n = A307395 n

end A307395

/-! ## A307395.P14291005145395968442

`∑[A306914(∑[n+3])]`
-/

namespace A307395.P14291005145395968442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306914 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307395.P14291005145395968442

namespace A307395

/-- `∑[A306914(∑[n+3])]` -/
def P14291005145395968442.Spec : Prop :=
  ∀ n, P14291005145395968442.a n = A307395 n

end A307395

/-!
# A307396: G.f. A(x) satisfies: A(x) = 1 + Sum_{k>=1} x^k*A(x)^k/(1 + x^k).

The programs for A307396, there is no canonical definition to state claims against.
-/

/-! ## A307396.P3024819526031271952

`A105427(A000085(n))-A092080(n+1)`
-/

namespace A307396.P3024819526031271952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105427 (A000085 n).toNat - A092080 (n + 1)

end

end A307396.P3024819526031271952

/-! ## A307396.P14366831147738011150

`A286549(A000108(∑[floor(n^(1/3))^3]))-A156906(A326130(n+1))`
-/

namespace A307396.P14366831147738011150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286549 (A000108 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat - A156906 (A326130 (n + 1)).toNat

end

end A307396.P14366831147738011150

/-!
# A307397: G.f. A(x) satisfies: A(x) = 1 + Sum_{k>=1} x^k*A(x)^k/(1 + x^k*A(x)^k).

The programs for A307397, there is no canonical definition to state claims against.
-/

/-! ## A307397.P11432258079539428710

`A190865(n)+A135661(A127632(n))`
-/

namespace A307397.P11432258079539428710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190865 n + A135661 (A127632 n).toNat

end

end A307397.P11432258079539428710

/-! ## A307397.P11128170215509959638

`A308884(n)+A257639(A000262(n))`
-/

namespace A307397.P11128170215509959638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308884 n + A257639 (A000262 n).toNat

end

end A307397.P11128170215509959638

/-! ## A307397.P11795445454119135459

`A172471(A110125(n))-A000078(n)`
-/

namespace A307397.P11795445454119135459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A110125 n).toNat - A000078 n

end

end A307397.P11795445454119135459

/-! ## A307397.P14848631677503206111

`A069288(A000142(n))*A114736(n)`
-/

namespace A307397.P14848631677503206111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (A000142 n).toNat * A114736 n

end

end A307397.P14848631677503206111

/-!
# A307398: G.f. A(x) satisfies: A(x) = 1 + Sum_{k>=1} k*x^k*A(x)^k/(1 - x^k).

The programs for A307398, there is no canonical definition to state claims against.
-/

/-! ## A307398.P5160704268353456989

`A087838(2*n^n)`
-/

namespace A307398.P5160704268353456989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087838 (2 * n ^ n)

end

end A307398.P5160704268353456989

/-! ## A307398.P3189646945217551724

`A149464(A001096(n))`
-/

namespace A307398.P3189646945217551724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149464 (A001096 n).toNat

end

end A307398.P3189646945217551724

/-!
# A307399: G.f. A(x) satisfies: A(x) = 1 + Sum_{k>=1} k*x^k*A(x)^k/(1 - x^k*A(x)^k).

The programs for A307399, there is no canonical definition to state claims against.
-/

/-! ## A307399.P9308796683768104761

`A189663(A150953(n))+A025908(5*n)`
-/

namespace A307399.P9308796683768104761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A150953 n).toNat + A025908 (5 * n)

end

end A307399.P9308796683768104761

/-! ## A307399.P9206994956391347248

`2*A344451(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A307399.P9206994956391347248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A344451 (a (n - 1)).toNat

end

end A307399.P9206994956391347248

