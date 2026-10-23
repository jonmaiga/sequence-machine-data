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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
import Seq.Opaque.C025

/-!
# A390700: a(n) = Sum_{k=0..n} (k+1) * 2^k * binomial(2*k,2*(n-k)).

The programs for A390700, there is no canonical definition to state claims against.
-/

/-! ## A390700.P15732739393641742684

`A017666(∏[Δ[A006130(n)]+1])`
-/

namespace A390700.P15732739393641742684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A390700.P15732739393641742684

/-!
# A390702: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n-3*k+1,n-3*k).

The programs for A390702, there is no canonical definition to state claims against.
-/

/-! ## A390702.P3573151036809230216

`A105872(n+1)-A371758(n+1)`
-/

namespace A390702.P3573151036809230216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105872 (n + 1) - A371758 (n + 1)

end

end A390702.P3573151036809230216

/-! ## A390702.P9514461958173910655

`A105872(n+1)-(A371871(n+1)+A105872(n))`
-/

namespace A390702.P9514461958173910655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105872 (n + 1) - (A371871 (n + 1) + A105872 n)

end

end A390702.P9514461958173910655

/-! ## A390702.P1490549268743970595

`A118923(A132209(n+1))`
-/

namespace A390702.P1490549268743970595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A132209 (n + 1)).toNat

end

end A390702.P1490549268743970595

/-! ## A390702.P16641355712594587427

`A118923(A142463(n+1))`
-/

namespace A390702.P16641355712594587427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A142463 (n + 1)).toNat

end

end A390702.P16641355712594587427

/-!
# A390703: a(n) = Sum_{k=0..floor(n/3)} binomial(3*n-3*k+1,n-3*k).

The programs for A390703, there is no canonical definition to state claims against.
-/

/-! ## A390703.P12535263514966758197

`A118923(A081270(n))`
-/

namespace A390703.P12535263514966758197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A081270 n).toNat

end

end A390703.P12535263514966758197

/-!
# A390704: a(n) = Sum_{k=0..floor(n/3)} binomial(4*n-3*k+1,n-3*k).

The programs for A390704, there is no canonical definition to state claims against.
-/

/-! ## A390704.P6939525136805000669

`A390706(n+1)-A390708(n+1)`
-/

namespace A390704.P6939525136805000669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390706 (n + 1) - A390708 (n + 1)

end

end A390704.P6939525136805000669

/-! ## A390704.P3966210560551822910

`A118923(A139272(n+1))`
-/

namespace A390704.P3966210560551822910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A139272 (n + 1)).toNat

end

end A390704.P3966210560551822910

/-!
# A390705: a(n) = Sum_{k=0..floor(n/3)} binomial(3*n-3*k-2,n-3*k).

The programs for A390705, there is no canonical definition to state claims against.
-/

/-! ## A390705.P8647917582083926388

`A118923(A022266(n))`
-/

namespace A390705.P8647917582083926388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A022266 n).toNat

end

end A390705.P8647917582083926388

/-! ## A390705.P359213492126931266

`A332338(n)*A352274(A000108(n))`
-/

namespace A390705.P359213492126931266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332338 n * A352274 (A000108 n).toNat

end

end A390705.P359213492126931266

/-!
# A390706: a(n) = Sum_{k=0..floor(n/3)} binomial(4*n-3*k-2,n-3*k).

The programs for A390706, there is no canonical definition to state claims against.
-/

/-! ## A390706.P9907121155819091014

`A118923(A139274(n))`
-/

namespace A390706.P9907121155819091014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A139274 n).toNat

end

end A390706.P9907121155819091014

/-!
# A390707: a(n) = Sum_{k=0..floor(n/3)} binomial(3*n-3*k-3,n-3*k).

The programs for A390707, there is no canonical definition to state claims against.
-/

/-! ## A390707.P11873059536128172532

`A118923(A117625(n))`
-/

namespace A390707.P11873059536128172532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A117625 n).toNat

end

end A390707.P11873059536128172532

/-!
# A390708: a(n) = Sum_{k=0..floor(n/3)} binomial(4*n-3*k-3,n-3*k).

The programs for A390708, there is no canonical definition to state claims against.
-/

/-! ## A390708.P3882551740046288055

`A118923(A383464(n))`
-/

namespace A390708.P3882551740046288055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A383464 n).toNat

end

end A390708.P3882551740046288055

/-!
# A390709: a(n) = Sum_{k=0..n} (2*k+1) * binomial(4*n-2*k+1,n-k)/(4*n-2*k+1).

The programs for A390709, there is no canonical definition to state claims against.
-/

/-! ## A390709.P13966960700376024730

`A060426(∑[∑[n+3]])`
-/

namespace A390709.P13966960700376024730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060426 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A390709.P13966960700376024730

/-!
# A390710: a(n) = Sum_{k=0..n} (5*k+1) * binomial(4*n+k+1,n-k)/(4*n+k+1).

The programs for A390710, there is no canonical definition to state claims against.
-/

/-! ## A390710.P15591826662506861673

`A194990(A114496(n)+A000330(n))`
-/

namespace A390710.P15591826662506861673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (A114496 n + A000330 n).toNat

end

end A390710.P15591826662506861673

/-!
# A390711: a(n) = Sum_{k=0..n} (2*k+1) * binomial(5*n-3*k+1,n-k)/(5*n-3*k+1).

The programs for A390711, there is no canonical definition to state claims against.
-/

/-! ## A390711.P8243166823467469867

`A355616(A005506(n))`
-/

namespace A390711.P8243166823467469867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355616 (A005506 n).toNat

end

end A390711.P8243166823467469867

/-!
# A390712: a(n) = Sum_{k=0..n} (3*k+1) * binomial(5*n-2*k+1,n-k)/(5*n-2*k+1).

The programs for A390712, there is no canonical definition to state claims against.
-/

/-! ## A390712.P4865034555052132717

`A112587(2^n)²-n²-n`
-/

namespace A390712.P4865034555052132717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112587 (2 ^ n) ^ 2 - (n ^ 2 : ℤ) - (n : ℤ)

end

end A390712.P4865034555052132717

/-!
# A390713: a(0) = 1; a(n) = Sum_{k=0..n} k * binomial(4*n-2*k,n-k)/(2*n-k).

The programs for A390713, there is no canonical definition to state claims against.
-/

/-! ## A390713.P10913701675732707542

`A187180(A088088(n)+A063834(n))`
-/

namespace A390713.P10913701675732707542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187180 (A088088 n + A063834 n).toNat

end

end A390713.P10913701675732707542

/-!
# A390714: a(0) = 1; a(n) = 5 * Sum_{k=0..n} k * binomial(4*n+k,n-k)/(4*n+k).

The programs for A390714, there is no canonical definition to state claims against.
-/

/-! ## A390714.P6076402072916736280

`A133830(A038192(n))`
-/

namespace A390714.P6076402072916736280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133830 (A038192 n).toNat

end

end A390714.P6076402072916736280

/-!
# A390715: a(0) = 1; a(n) = 2 * Sum_{k=0..n} k * binomial(5*n-3*k,n-k)/(5*n-3*k).

The programs for A390715, there is no canonical definition to state claims against.
-/

/-! ## A390715.P16218100744142124211

`A008619(A192942(n)/2)`
-/

namespace A390715.P16218100744142124211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A192942 n : ℚ) / 2)).toNat

end

end A390715.P16218100744142124211

/-!
# A390716: a(0) = 1; a(n) = 3 * Sum_{k=0..n} k * binomial(5*n-2*k,n-k)/(5*n-2*k).

The programs for A390716, there is no canonical definition to state claims against.
-/

/-! ## A390716.P11592397044398661549

`or(A046736(2*(n+1)), A194700(A337302(n)))`
-/

namespace A390716.P11592397044398661549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046736 (2 * (n + 1))) (A194700 (A337302 n).toNat)

end

end A390716.P11592397044398661549

/-!
# A390717: Indices in Recamán's sequence A005132 which are the result of a record number of addition steps.

The programs for A390717, there is no canonical definition to state claims against.
-/

/-! ## A390717.P4464924040504301504

`A331670(n+1)+n`
-/

namespace A390717.P4464924040504301504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331670 (n + 1) + (n : ℤ)

end

end A390717.P4464924040504301504

/-!
# A390718: Numbers k whose sum of prime factors (with multiplicity) is a power of 2.

The programs for A390718, the canonical program `A390718.P13136824727992401142` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390718 has offset 1).

The definition of A390718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390718.P13136824727992401142

`eq[1, A000120(A001414(n+1))]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A390718

/-- `eq[1, A000120(A001414(n+1))]+1` -/
def P13136824727992401142.Spec : Prop :=
  ∀ n, (P13136824727992401142.a n : ℤ) = A390718 (n + 1)

theorem P13136824727992401142.correct : P13136824727992401142.Spec := by
  intro n
  simp only [A390718, Nat.add_sub_cancel]

end A390718

/-!
# A390719: a(n) = Sum_{k=0..n} (k+2) * binomial(3*n-2*k+2,n-k)/(3*n-2*k+2).

The programs for A390719, there is no canonical definition to state claims against.
-/

/-! ## A390719.P6984698911100999609

`A098746(n+1)+A006013(n)-A098746(n)`
-/

namespace A390719.P6984698911100999609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098746 (n + 1) + (A006013 n - A098746 n)

end

end A390719.P6984698911100999609

/-! ## A390719.P18424550711194331466

`A098746(n+2)-A001764(n+1)`
-/

namespace A390719.P18424550711194331466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098746 (n + 2) - A001764 (n + 1)

end

end A390719.P18424550711194331466

/-!
# A390720: a(n) = Sum_{k=0..n} (k+2) * binomial(4*n-3*k+2,n-k)/(4*n-3*k+2).

The programs for A390720, there is no canonical definition to state claims against.
-/

/-! ## A390720.P1659126813185611951

`A130458(n+2)-A002293(n+1)`
-/

namespace A390720.P1659126813185611951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130458 (n + 2) - A002293 (n + 1)

end

end A390720.P1659126813185611951

/-!
# A390721: a(n) = Sum_{k=0..n} (k+2) * binomial(5*n-4*k+2,n-k)/(5*n-4*k+2).

The programs for A390721, there is no canonical definition to state claims against.
-/

/-! ## A390721.P1229701289305191184

`A023816(A000984(n)²)`
-/

namespace A390721.P1229701289305191184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 (A000984 n ^ 2).toNat

end

end A390721.P1229701289305191184

/-!
# A390723: Triangle read by rows: T(n, k) = (-1)^(n-k)*Stirling1(n, k)*CatalanNumber(k).

The programs for A390723, there is no canonical definition to state claims against.
-/

/-! ## A390723.P15409939314665634215

`A355260(A055647(n))`
-/

namespace A390723.P15409939314665634215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355260 (A055647 n).toNat

end

end A390723.P15409939314665634215

/-! ## A390723.P9203109898928204038

`A355260(n)%A303264(n+1)`
-/

namespace A390723.P9203109898928204038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355260 n) (A303264 (n + 1))

end

end A390723.P9203109898928204038

/-! ## A390723.P9799921633549408426

`A355260(n)+A304330(A100861(n))`
-/

namespace A390723.P9799921633549408426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355260 n + A304330 (A100861 n).toNat

end

end A390723.P9799921633549408426

/-! ## A390723.P6194045703096892865

`A355260(A055648(n))`
-/

namespace A390723.P6194045703096892865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355260 (A055648 n).toNat

end

end A390723.P6194045703096892865

/-! ## A390723.P9421684778194949213

`A355260(A004863(n+1))`
-/

namespace A390723.P9421684778194949213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355260 (A004863 (n + 1)).toNat

end

end A390723.P9421684778194949213

/-!
# A390724: Triangle read by rows: T(n, k) = Stirling2(n, k)*CatalanNumber(k).

The programs for A390724, there is no canonical definition to state claims against.
-/

/-! ## A390724.P10032212923704831388

`A000108(A002262(n))*A048993(n)`
-/

namespace A390724.P10032212923704831388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A048993 n

end

end A390724.P10032212923704831388

/-! ## A390724.P6872343932322171646

`A000108(A144328(n+1))*A048993(n)`
-/

namespace A390724.P6872343932322171646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A144328 (n + 1)).toNat * A048993 n

end

end A390724.P6872343932322171646

/-! ## A390724.P13923969215922453583

`A000108(A002260(n+1)-1)*A048993(n)`
-/

namespace A390724.P13923969215922453583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002260 (n + 1) - 1).toNat * A048993 n

end

end A390724.P13923969215922453583

/-! ## A390724.P5352359807345573880

`A131689(n)-A086015(A344071(n))`
-/

namespace A390724.P5352359807345573880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n - A086015 (A344071 n).toNat

end

end A390724.P5352359807345573880

/-! ## A390724.P16633188969484533074

`A131689(n)-A004198(A000225(n+1))`
-/

namespace A390724.P16633188969484533074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n - A004198 (A000225 (n + 1)).toNat

end

end A390724.P16633188969484533074

/-!
# A390725: Triangle read by rows: T(n, k) = Lah(n, k)*CatalanNumber(k), and Lah = A271703.

The programs for A390725, the canonical program `A390725.P2084391966824759075` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390725 has offset 0).

The definition of A390725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390725.P2084391966824759075

`A000108(A002262(n))*A271703(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A390725

/-- `A000108(A002262(n))*A271703(n)` -/
def P2084391966824759075.Spec : Prop :=
  ∀ n, P2084391966824759075.a n = A390725 n

theorem P2084391966824759075.correct : P2084391966824759075.Spec := by
  intro n
  simp only [A390725]

end A390725

/-!
# A390726: a(n) = (-1)^n*Stirling1(2*n, n)*(2*n)!/(n+1)!.

The programs for A390726, there is no canonical definition to state claims against.
-/

/-! ## A390726.P4831482524478559460

`n!*A390276(n)`
-/

namespace A390726.P4831482524478559460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A390276 n

end

end A390726.P4831482524478559460

/-! ## A390726.P10276235512439929206

`A187646(n)*A001761(n)`
-/

namespace A390726.P10276235512439929206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187646 n * A001761 n

end

end A390726.P10276235512439929206

/-! ## A390726.P10301691658767729398

`A000142(n)*A390276(n)`
-/

namespace A390726.P10301691658767729398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A390276 n

end

end A390726.P10301691658767729398

/-!
# A390727: a(n) = Stirling2(2*n, n)*(2*n)!/(n+1)!.

The programs for A390727, there is no canonical definition to state claims against.
-/

/-! ## A390727.P12780344943874454581

`n!*A390277(n)`
-/

namespace A390727.P12780344943874454581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A390277 n

end

end A390727.P12780344943874454581

/-! ## A390727.P3296689551522490190

`A007820(n)*A001761(n)`
-/

namespace A390727.P3296689551522490190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007820 n * A001761 n

end

end A390727.P3296689551522490190

/-! ## A390727.P14401789218486832618

`A288312(n)/(n+1)`
-/

namespace A390727.P14401789218486832618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288312 n : ℚ) / (n + 1 : ℚ)

end

end A390727.P14401789218486832618

/-! ## A390727.P2678831961766058945

`A000142(n)*A390277(n)`
-/

namespace A390727.P2678831961766058945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A390277 n

end

end A390727.P2678831961766058945

/-!
# A390732: a(n) = Sum_{k=0..n} (k+1) * 2^(n-k) * binomial(2*k,2*(n-k)).

The programs for A390732, there is no canonical definition to state claims against.
-/

/-! ## A390732.P18035397611322489199

`A245336(2*a(n-1)²)` with `a(0)=1`
-/

namespace A390732.P18035397611322489199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A245336 (2 * a (n - 1) ^ 2).toNat

end

end A390732.P18035397611322489199

/-!
# A390740: a(n) = Sum_{k=0..n} (-1)^k * (2*k+1) * binomial(4*n-2*k+1,n-k)/(4*n-2*k+1).

The programs for A390740, there is no canonical definition to state claims against.
-/

/-! ## A390740.P16865661504437072899

`abs(A156065(2*n))`
-/

namespace A390740.P16865661504437072899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156065 (2 * n)|

end

end A390740.P16865661504437072899

/-! ## A390740.P15614962968855892465

`gcd(A014376(n), A156065(2*n))`
-/

namespace A390740.P15614962968855892465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014376 n) (A156065 (2 * n))

end

end A390740.P15614962968855892465

/-!
# A390741: a(n) = Sum_{k=0..n} (-1)^k * (k+1) * binomial(5*n-4*k+1,n-k)/(5*n-4*k+1).

The programs for A390741, there is no canonical definition to state claims against.
-/

/-! ## A390741.P6894799621892797824

`A071681(A001813(n))+A000931(n)`
-/

namespace A390741.P6894799621892797824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071681 (A001813 n).toNat + A000931 n

end

end A390741.P6894799621892797824

/-!
# A390742: a(n) = Sum_{k=0..n} (-1)^k * (2*k+1) * binomial(5*n-3*k+1,n-k)/(5*n-3*k+1).

The programs for A390742, there is no canonical definition to state claims against.
-/

/-! ## A390742.P10946436311741954596

`A367214(A000740(n+2)+n)`
-/

namespace A390742.P10946436311741954596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367214 (A000740 (n + 2) + (n : ℤ)).toNat

end

end A390742.P10946436311741954596

/-!
# A390743: a(n) = Sum_{k=0..n} (-1)^k * (3*k+1) * binomial(5*n-2*k+1,n-k)/(5*n-2*k+1).

The programs for A390743, there is no canonical definition to state claims against.
-/

/-! ## A390743.P18088673739342092094

`A137363(A251685(n))`
-/

namespace A390743.P18088673739342092094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137363 (A251685 n).toNat

end

end A390743.P18088673739342092094

/-!
# A390745: Numbers k such that there exists a unique integer composition whose first sums are the k-th composition in standard order.

The programs for A390745, there is no canonical definition to state claims against.
-/

/-! ## A390745.P18346925996751126720

`∩[A123466(n+1), A390676(n+1)]`
-/

namespace A390745.P18346925996751126720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390745.P18346925996751126720

/-! ## A390745.P12263479439724660722

`eq[1, A391642(n+1)]+1`
-/

namespace A390745.P12263479439724660722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391642 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390745.P12263479439724660722

/-! ## A390745.P2685384072831172842

`eq[3, A391621(n+1)]+1`
-/

namespace A390745.P2685384072831172842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390745.P2685384072831172842

/-! ## A390745.P2887460938816156629

`eq[1, A391642(A028310(n))]`
-/

namespace A390745.P2887460938816156629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391642 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A390745.P2887460938816156629

/-! ## A390745.P14597190064626946229

`eq[A031280(n+1), A333767(n)]`
-/

namespace A390745.P14597190064626946229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390745.P14597190064626946229

/-!
# A390746: Number of strict integer partitions of n > 0 such that the least part plus the greatest part is odd.

The programs for A390746, there is no canonical definition to state claims against.
-/

/-! ## A390746.P9375780616807833369

`A000009(n+1)-A391227(n+1)`
-/

namespace A390746.P9375780616807833369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A391227 (n + 1)

end

end A390746.P9375780616807833369

/-! ## A390746.P17935841636234054184

`A026832(n+1)+A026833(n+1)-A391227(n+1)`
-/

namespace A390746.P17935841636234054184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026832 (n + 1) + (A026833 (n + 1) - A391227 (n + 1))

end

end A390746.P17935841636234054184

/-! ## A390746.P7835657903314524768

`A067659(n+1)+A067661(n+1)-A391227(n+1)`
-/

namespace A390746.P7835657903314524768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 (n + 1) + (A067661 (n + 1) - A391227 (n + 1))

end

end A390746.P7835657903314524768

/-! ## A390746.P310953468019198962

`A391231(n+1)-A391233(n+1)`
-/

namespace A390746.P310953468019198962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391231 (n + 1) - A391233 (n + 1)

end

end A390746.P310953468019198962

/-! ## A390746.P7519851038392177298

`A391228(n+1)+A391231(n+1)-A391227(n+1)`
-/

namespace A390746.P7519851038392177298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391228 (n + 1) + (A391231 (n + 1) - A391227 (n + 1))

end

end A390746.P7519851038392177298

/-!
# A390748: Zumkeller numbers that are not oblong numbers.

The programs for A390748, there is no canonical definition to state claims against.
-/

/-! ## A390748.P17345170767255042671

`∩[A049068(n+1), A083207(n+1)]`
-/

namespace A390748.P17345170767255042671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390748.P17345170767255042671

/-! ## A390748.P17927437521471641254

`∩[A078358(n+1), A083207(n+1)]`
-/

namespace A390748.P17927437521471641254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390748.P17927437521471641254

/-! ## A390748.P3961855498435066999

`filter[A083207(n+1), A267683(#)]`
-/

namespace A390748.P3961855498435066999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267683 (f1 j).toNat = 1) n)

end

end A390748.P3961855498435066999

/-! ## A390748.P1826129483942501240

`filter[A083207(n+1), A267810(#)]`
-/

namespace A390748.P1826129483942501240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267810 (f1 j).toNat = 1) n)

end

end A390748.P1826129483942501240

/-! ## A390748.P8544193828933972043

`filter[A083207(n+1), A267813(#)]`
-/

namespace A390748.P8544193828933972043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267813 (f1 j).toNat = 1) n)

end

end A390748.P8544193828933972043

/-!
# A390752: The Euler totient of the smallest number whose square is divisible by n.

The programs for A390752, the canonical program `A390752.P14431979490250258811` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390752 has offset 1).

The definition of A390752 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A019554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390752.P14431979490250258811

`A000010(A019554(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A390752

/-- `A000010(A019554(n+1))` -/
def P14431979490250258811.Spec : Prop :=
  ∀ n, P14431979490250258811.a n = A390752 (n + 1)

theorem P14431979490250258811.correct : P14431979490250258811.Spec := by
  intro n
  simp only [A390752, Nat.add_sub_cancel]

end A390752

/-! ## A390752.P10968645331509799660

`A346612(A350390(n+1))`
-/

namespace A390752.P10968645331509799660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346612 (A350390 (n + 1)).toNat

end

end A390752.P10968645331509799660

namespace A390752

/-- `A346612(A350390(n+1))` -/
def P10968645331509799660.Spec : Prop :=
  ∀ n, P10968645331509799660.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P1948023199999938763

`A173557(n+1)*A295657(n+1)`
-/

namespace A390752.P1948023199999938763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A295657 (n + 1)

end

end A390752.P1948023199999938763

namespace A390752

/-- `A173557(n+1)*A295657(n+1)` -/
def P1948023199999938763.Spec : Prop :=
  ∀ n, P1948023199999938763.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P18397225705453086086

`A000010((n+1)/A000188(n+1))`
-/

namespace A390752.P18397225705453086086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ))).toNat

end

end A390752.P18397225705453086086

namespace A390752

/-- `A000010((n+1)/A000188(n+1))` -/
def P18397225705453086086.Spec : Prop :=
  ∀ n, P18397225705453086086.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P15713439312599655788

`A152958(n+1)/A069290(n+1)`
-/

namespace A390752.P15713439312599655788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152958 (n + 1) : ℚ) / (A069290 (n + 1) : ℚ)

end

end A390752.P15713439312599655788

namespace A390752

/-- `A152958(n+1)/A069290(n+1)` -/
def P15713439312599655788.Spec : Prop :=
  ∀ n, P15713439312599655788.a n = (A390752 (n + 1) : ℚ)

end A390752

/-! ## A390752.P10961377475204766840

`A327171(n+1)/A019554(n+1)`
-/

namespace A390752.P10961377475204766840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327171 (n + 1) : ℚ) / (A019554 (n + 1) : ℚ)

end

end A390752.P10961377475204766840

namespace A390752

/-- `A327171(n+1)/A019554(n+1)` -/
def P10961377475204766840.Spec : Prop :=
  ∀ n, P10961377475204766840.a n = (A390752 (n + 1) : ℚ)

end A390752

/-! ## A390752.P14601572905616507214

`A002618(n+1)/A355264(n+1)`
-/

namespace A390752.P14601572905616507214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A355264 (n + 1) : ℚ)

end

end A390752.P14601572905616507214

namespace A390752

/-- `A002618(n+1)/A355264(n+1)` -/
def P14601572905616507214.Spec : Prop :=
  ∀ n, P14601572905616507214.a n = (A390752 (n + 1) : ℚ)

end A390752

/-! ## A390752.P8707854662477096254

`A299822(n+1)/A355261(n+1)`
-/

namespace A390752.P8707854662477096254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299822 (n + 1) : ℚ) / (A355261 (n + 1) : ℚ)

end

end A390752.P8707854662477096254

namespace A390752

/-- `A299822(n+1)/A355261(n+1)` -/
def P8707854662477096254.Spec : Prop :=
  ∀ n, P8707854662477096254.a n = (A390752 (n + 1) : ℚ)

end A390752

/-! ## A390752.P3330812121371877146

`A152958(n+1)/A000203(A000188(n+1))`
-/

namespace A390752.P3330812121371877146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152958 (n + 1) : ℚ) / (A000203 (A000188 (n + 1)).toNat : ℚ)

end

end A390752.P3330812121371877146

namespace A390752

/-- `A152958(n+1)/A000203(A000188(n+1))` -/
def P3330812121371877146.Spec : Prop :=
  ∀ n, P3330812121371877146.a n = (A390752 (n + 1) : ℚ)

end A390752

/-! ## A390752.P7165815824976296896

`A000010(A064549(n+1)/A355261(n+1))`
-/

namespace A390752.P7165815824976296896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (A355261 (n + 1) : ℚ))).toNat

end

end A390752.P7165815824976296896

namespace A390752

/-- `A000010(A064549(n+1)/A355261(n+1))` -/
def P7165815824976296896.Spec : Prop :=
  ∀ n, P7165815824976296896.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P6319856682082983500

`A390753(A355264(n+1))`
-/

namespace A390752.P6319856682082983500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390753 (A355264 (n + 1)).toNat

end

end A390752.P6319856682082983500

namespace A390752

/-- `A390753(A355264(n+1))` -/
def P6319856682082983500.Spec : Prop :=
  ∀ n, P6319856682082983500.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P4736175105154011381

`A390753((n+1)*A000188(n+1))`
-/

namespace A390752.P4736175105154011381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390753 ((n + 1 : ℤ) * A000188 (n + 1)).toNat

end

end A390752.P4736175105154011381

namespace A390752

/-- `A390753((n+1)*A000188(n+1))` -/
def P4736175105154011381.Spec : Prop :=
  ∀ n, P4736175105154011381.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P7905912685883522925

`A000010(A019555((n+1)*A000188(n+1)))`
-/

namespace A390752.P7905912685883522925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A019555 ((n + 1 : ℤ) * A000188 (n + 1)).toNat).toNat

end

end A390752.P7905912685883522925

namespace A390752

/-- `A000010(A019555((n+1)*A000188(n+1)))` -/
def P7905912685883522925.Spec : Prop :=
  ∀ n, P7905912685883522925.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P9374471059837298875

`A095026(A000217((n+1)/A000188(n+1)))`
-/

namespace A390752.P9374471059837298875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095026 (A000217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ))).toNat).toNat

end

end A390752.P9374471059837298875

namespace A390752

/-- `A095026(A000217((n+1)/A000188(n+1)))` -/
def P9374471059837298875.Spec : Prop :=
  ∀ n, P9374471059837298875.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P1353921421825022314

`A000010(A327172(A327171(n+1)))`
-/

namespace A390752.P1353921421825022314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A327172 (A327171 (n + 1)).toNat).toNat

end

end A390752.P1353921421825022314

namespace A390752

/-- `A000010(A327172(A327171(n+1)))` -/
def P1353921421825022314.Spec : Prop :=
  ∀ n, P1353921421825022314.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P18194718301938196024

`A000010(A327172(A000010(A053143(n+1))))`
-/

namespace A390752.P18194718301938196024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A327172 (A000010 (A053143 (n + 1)).toNat).toNat).toNat

end

end A390752.P18194718301938196024

namespace A390752

/-- `A000010(A327172(A000010(A053143(n+1))))` -/
def P18194718301938196024.Spec : Prop :=
  ∀ n, P18194718301938196024.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P482614003456263000

`A127478(A000217(n+1))/A000188(n+1)`
-/

namespace A390752.P482614003456263000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127478 (A000217 (n + 1)).toNat : ℚ) / (A000188 (n + 1) : ℚ)

end

end A390752.P482614003456263000

namespace A390752

/-- `A127478(A000217(n+1))/A000188(n+1)` -/
def P482614003456263000.Spec : Prop :=
  ∀ n, P482614003456263000.a n = (A390752 (n + 1) : ℚ)

end A390752

/-! ## A390752.P6975882519242671079

`A000188(A127473((n+1)/A000188(n+1)))`
-/

namespace A390752.P6975882519242671079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A127473 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ))).toNat).toNat

end

end A390752.P6975882519242671079

namespace A390752

/-- `A000188(A127473((n+1)/A000188(n+1)))` -/
def P6975882519242671079.Spec : Prop :=
  ∀ n, P6975882519242671079.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P4598234071946378768

`A057828(A053143(n+1))`
-/

namespace A390752.P4598234071946378768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057828 (A053143 (n + 1)).toNat

end

end A390752.P4598234071946378768

namespace A390752

/-- `A057828(A053143(n+1))` -/
def P4598234071946378768.Spec : Prop :=
  ∀ n, P4598234071946378768.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P16706373680722785197

`A000010(A053166((n+1)²))`
-/

namespace A390752.P16706373680722785197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A053166 ((n + 1) ^ 2)).toNat

end

end A390752.P16706373680722785197

namespace A390752

/-- `A000010(A053166((n+1)²))` -/
def P16706373680722785197.Spec : Prop :=
  ∀ n, P16706373680722785197.a n = A390752 (n + 1)

end A390752

/-!
# A390753: The Euler totient of the smallest number whose cube is divisible by n.

The programs for A390753, the canonical program `A390753.P10861819180200692561` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390753 has offset 1).

The definition of A390753 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A019555, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390753.P10861819180200692561

`A000010(A019555(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A390753

/-- `A000010(A019555(n+1))` -/
def P10861819180200692561.Spec : Prop :=
  ∀ n, P10861819180200692561.a n = A390753 (n + 1)

theorem P10861819180200692561.correct : P10861819180200692561.Spec := by
  intro n
  simp only [A390753, Nat.add_sub_cancel]

end A390753

/-! ## A390753.P7078529299013439635

`A000010(A254733(n+1)-(n+1))`
-/

namespace A390753.P7078529299013439635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A254733 (n + 1) - (n + 1 : ℤ)).toNat

end

end A390753.P7078529299013439635

namespace A390753

/-- `A000010(A254733(n+1)-(n+1))` -/
def P7078529299013439635.Spec : Prop :=
  ∀ n, P7078529299013439635.a n = A390753 (n + 1)

end A390753

/-! ## A390753.P1624909349445366706

`A000010((n+1)/A000189(n+1))`
-/

namespace A390753.P1624909349445366706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000189 (n + 1) : ℚ))).toNat

end

end A390753.P1624909349445366706

namespace A390753

/-- `A000010((n+1)/A000189(n+1))` -/
def P1624909349445366706.Spec : Prop :=
  ∀ n, P1624909349445366706.a n = A390753 (n + 1)

end A390753

/-! ## A390753.P837858288058759199

`A390754(n+1)/(A019555(n+1)*A019555(n+1))`
-/

namespace A390753.P837858288058759199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390754 (n + 1) : ℚ) / (A019555 (n + 1) * A019555 (n + 1) : ℚ)

end

end A390753.P837858288058759199

namespace A390753

/-- `A390754(n+1)/(A019555(n+1)*A019555(n+1))` -/
def P837858288058759199.Spec : Prop :=
  ∀ n, P837858288058759199.a n = (A390753 (n + 1) : ℚ)

end A390753

/-! ## A390753.P16310888328746031664

`A390752(A019555((n+1)²))`
-/

namespace A390753.P16310888328746031664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390752 (A019555 ((n + 1) ^ 2)).toNat

end

end A390753.P16310888328746031664

namespace A390753

/-- `A390752(A019555((n+1)²))` -/
def P16310888328746031664.Spec : Prop :=
  ∀ n, P16310888328746031664.a n = A390753 (n + 1)

end A390753

/-! ## A390753.P18274081253594788792

`A390752(A390754(n+1)/A390752(n+1))`
-/

namespace A390753.P18274081253594788792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390752 (SequenceMachineLib.roundAway ((A390754 (n + 1) : ℚ) / (A390752 (n + 1) : ℚ))).toNat

end

end A390753.P18274081253594788792

namespace A390753

/-- `A390752(A390754(n+1)/A390752(n+1))` -/
def P18274081253594788792.Spec : Prop :=
  ∀ n, P18274081253594788792.a n = A390753 (n + 1)

end A390753

/-!
# A390754: The Euler totient of the smallest cube divisible by n.

The programs for A390754, the canonical program `A390754.P7808372230478735667` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390754 has offset 1).

The definition of A390754 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390754.P7808372230478735667

`A000010(A053149(n+1))`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A390754

/-- `A000010(A053149(n+1))` -/
def P7808372230478735667.Spec : Prop :=
  ∀ n, P7808372230478735667.a n = A390754 (n + 1)

theorem P7808372230478735667.correct : P7808372230478735667.Spec := by
  intro n
  simp only [A390754, Nat.add_sub_cancel]

end A390754

/-! ## A390754.P5128108036385649680

`A053191(A019555(n+1))`
-/

namespace A390754.P5128108036385649680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053191 (A019555 (n + 1)).toNat

end

end A390754.P5128108036385649680

namespace A390754

/-- `A053191(A019555(n+1))` -/
def P5128108036385649680.Spec : Prop :=
  ∀ n, P5128108036385649680.a n = A390754 (n + 1)

end A390754

/-! ## A390754.P11495696549845068592

`A000010(n+1)*A048798(n+1)`
-/

namespace A390754.P11495696549845068592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A048798 (n + 1)

end

end A390754.P11495696549845068592

namespace A390754

/-- `A000010(n+1)*A048798(n+1)` -/
def P11495696549845068592.Spec : Prop :=
  ∀ n, P11495696549845068592.a n = A390754 (n + 1)

end A390754

/-! ## A390754.P8869543461658509892

`A019555(n+1)*A019555(n+1)*A390753(n+1)`
-/

namespace A390754.P8869543461658509892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 1) * A019555 (n + 1) * A390753 (n + 1)

end

end A390754.P8869543461658509892

namespace A390754

/-- `A019555(n+1)*A019555(n+1)*A390753(n+1)` -/
def P8869543461658509892.Spec : Prop :=
  ∀ n, P8869543461658509892.a n = A390754 (n + 1)

end A390754

/-! ## A390754.P15391026293941876893

`A053149(n+1)/A356193(n+1)*A390756(n+1)`
-/

namespace A390754.P15391026293941876893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053149 (n + 1) : ℚ) / (A356193 (n + 1) : ℚ) * (A390756 (n + 1) : ℚ)

end

end A390754.P15391026293941876893

namespace A390754

/-- `A053149(n+1)/A356193(n+1)*A390756(n+1)` -/
def P15391026293941876893.Spec : Prop :=
  ∀ n, P15391026293941876893.a n = (A390754 (n + 1) : ℚ)

end A390754

/-!
# A390755: The Euler totient of the smallest powerful number divisible by n.

The programs for A390755, the canonical program `A390755.P10814338958508066738` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390755 has offset 1).

The definition of A390755 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A197863, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390755.P10814338958508066738

`A000010(A197863(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A390755

/-- `A000010(A197863(n+1))` -/
def P10814338958508066738.Spec : Prop :=
  ∀ n, P10814338958508066738.a n = A390755 (n + 1)

theorem P10814338958508066738.correct : P10814338958508066738.Spec := by
  intro n
  simp only [A390755, Nat.add_sub_cancel]

end A390755

/-! ## A390755.P5626501669102763946

`A000010(n+1)*A055231(n+1)`
-/

namespace A390755.P5626501669102763946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A055231 (n + 1)

end

end A390755.P5626501669102763946

namespace A390755

/-- `A000010(n+1)*A055231(n+1)` -/
def P5626501669102763946.Spec : Prop :=
  ∀ n, P5626501669102763946.a n = A390755 (n + 1)

end A390755

/-! ## A390755.P9833950938372830663

`A254503(n+1)*A380161(n+1)`
-/

namespace A390755.P9833950938372830663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254503 (n + 1) * A380161 (n + 1)

end

end A390755.P9833950938372830663

namespace A390755

/-- `A254503(n+1)*A380161(n+1)` -/
def P9833950938372830663.Spec : Prop :=
  ∀ n, P9833950938372830663.a n = A390755 (n + 1)

end A390755

/-! ## A390755.P1132713508199146385

`A002618(n+1)/A057521(n+1)`
-/

namespace A390755.P1132713508199146385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A057521 (n + 1) : ℚ)

end

end A390755.P1132713508199146385

namespace A390755

/-- `A002618(n+1)/A057521(n+1)` -/
def P1132713508199146385.Spec : Prop :=
  ∀ n, P1132713508199146385.a n = (A390755 (n + 1) : ℚ)

end A390755

/-! ## A390755.P1515813797770788335

`A299822(n+1)/A071773(n+1)`
-/

namespace A390755.P1515813797770788335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299822 (n + 1) : ℚ) / (A071773 (n + 1) : ℚ)

end

end A390755.P1515813797770788335

namespace A390755

/-- `A299822(n+1)/A071773(n+1)` -/
def P1515813797770788335.Spec : Prop :=
  ∀ n, P1515813797770788335.a n = (A390755 (n + 1) : ℚ)

end A390755

/-! ## A390755.P13372561387393876824

`A327171(n+1)/A055229(n+1)`
-/

namespace A390755.P13372561387393876824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327171 (n + 1) : ℚ) / (A055229 (n + 1) : ℚ)

end

end A390755.P13372561387393876824

namespace A390755

/-- `A327171(n+1)/A055229(n+1)` -/
def P13372561387393876824.Spec : Prop :=
  ∀ n, P13372561387393876824.a n = (A390755 (n + 1) : ℚ)

end A390755

/-! ## A390755.P12021858414120418058

`gcd(A327171(n+1), A390756(n+1))`
-/

namespace A390755.P12021858414120418058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A327171 (n + 1)) (A390756 (n + 1))

end

end A390755.P12021858414120418058

namespace A390755

/-- `gcd(A327171(n+1), A390756(n+1))` -/
def P12021858414120418058.Spec : Prop :=
  ∀ n, (P12021858414120418058.a n : ℤ) = A390755 (n + 1)

end A390755

/-! ## A390755.P12963107830507983464

`A197863(n+1)/A356193(n+1)*A390756(n+1)`
-/

namespace A390755.P12963107830507983464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197863 (n + 1) : ℚ) / (A356193 (n + 1) : ℚ) * (A390756 (n + 1) : ℚ)

end

end A390755.P12963107830507983464

namespace A390755

/-- `A197863(n+1)/A356193(n+1)*A390756(n+1)` -/
def P12963107830507983464.Spec : Prop :=
  ∀ n, P12963107830507983464.a n = (A390755 (n + 1) : ℚ)

end A390755

/-! ## A390755.P3281893231520937755

`A390756((n+1)²)/(n+1)`
-/

namespace A390755.P3281893231520937755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390756 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A390755.P3281893231520937755

namespace A390755

/-- `A390756((n+1)²)/(n+1)` -/
def P3281893231520937755.Spec : Prop :=
  ∀ n, P3281893231520937755.a n = (A390755 (n + 1) : ℚ)

end A390755

/-! ## A390755.P8819427166144113088

`A076685((n+1)*A055231(n+1))`
-/

namespace A390755.P8819427166144113088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076685 ((n + 1 : ℤ) * A055231 (n + 1)).toNat

end

end A390755.P8819427166144113088

namespace A390755

/-- `A076685((n+1)*A055231(n+1))` -/
def P8819427166144113088.Spec : Prop :=
  ∀ n, P8819427166144113088.a n = A390755 (n + 1)

end A390755

/-! ## A390755.P17503015968914352750

`A254503((n+1)*A055231(n+1))`
-/

namespace A390755.P17503015968914352750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254503 ((n + 1 : ℤ) * A055231 (n + 1)).toNat

end

end A390755.P17503015968914352750

namespace A390755

/-- `A254503((n+1)*A055231(n+1))` -/
def P17503015968914352750.Spec : Prop :=
  ∀ n, P17503015968914352750.a n = A390755 (n + 1)

end A390755

/-! ## A390755.P15487599726727861404

`A380160((n+1)*A055231(n+1))`
-/

namespace A390755.P15487599726727861404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380160 ((n + 1 : ℤ) * A055231 (n + 1)).toNat

end

end A390755.P15487599726727861404

namespace A390755

/-- `A380160((n+1)*A055231(n+1))` -/
def P15487599726727861404.Spec : Prop :=
  ∀ n, P15487599726727861404.a n = A390755 (n + 1)

end A390755

/-!
# A390756: The Euler totient of the smallest cubefull number divisible by n.

The programs for A390756, the canonical program `A390756.P11425298169468382512` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390756 has offset 1).

The definition of A390756 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A356193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390756.P11425298169468382512

`A000010(A356193(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A390756

/-- `A000010(A356193(n+1))` -/
def P11425298169468382512.Spec : Prop :=
  ∀ n, P11425298169468382512.a n = A390756 (n + 1)

theorem P11425298169468382512.correct : P11425298169468382512.Spec := by
  intro n
  simp only [A390756, Nat.add_sub_cancel]

end A390756

/-! ## A390756.P17287549449389241774

`A000010(n+1)*A360541(n+1)`
-/

namespace A390756.P17287549449389241774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A360541 (n + 1)

end

end A390756.P17287549449389241774

namespace A390756

/-- `A000010(n+1)*A360541(n+1)` -/
def P17287549449389241774.Spec : Prop :=
  ∀ n, P17287549449389241774.a n = A390756 (n + 1)

end A390756

/-! ## A390756.P11159990893251856348

`A000010(lcm(n+1, ∏{p}[n+1, #^3]))`
-/

namespace A390756.P11159990893251856348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p ^ 3))

end

end A390756.P11159990893251856348

namespace A390756

/-- `A000010(lcm(n+1, ∏{p}[n+1, #^3]))` -/
def P11159990893251856348.Spec : Prop :=
  ∀ n, P11159990893251856348.a n = A390756 (n + 1)

end A390756

/-! ## A390756.P1339439289704304987

`A000010(A064549(A355263(A064549(A064549(n+1)))))`
-/

namespace A390756.P1339439289704304987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A064549 (A355263 (A064549 (A064549 (n + 1)).toNat).toNat).toNat).toNat

end

end A390756.P1339439289704304987

namespace A390756

/-- `A000010(A064549(A355263(A064549(A064549(n+1)))))` -/
def P1339439289704304987.Spec : Prop :=
  ∀ n, P1339439289704304987.a n = A390756 (n + 1)

end A390756

/-! ## A390756.P16560139881443058526

`A390754(A187829(n+1))`
-/

namespace A390756.P16560139881443058526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390754 (A187829 (n + 1)).toNat

end

end A390756.P16560139881443058526

namespace A390756

/-- `A390754(A187829(n+1))` -/
def P16560139881443058526.Spec : Prop :=
  ∀ n, P16560139881443058526.a n = A390756 (n + 1)

end A390756

/-!
# A390757: Numbers k such that (23^k - 4^k)/19 is prime.

The programs for A390757, there is no canonical definition to state claims against.
-/

/-! ## A390757.P2745097537095541046

`A068845((2*n+1)*A001358(n+2))`
-/

namespace A390757.P2745097537095541046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068845 ((2 * n + 1 : ℤ) * A001358 (n + 2)).toNat

end

end A390757.P2745097537095541046

/-!
# A390758: Primes == 1 (mod 16), for which the octonic Gauss sum is greater than the quartic one.

The programs for A390758, there is no canonical definition to state claims against.
-/

/-! ## A390758.P8863259937828510235

`∩[A103146(n+1), A158057(n)]`
-/

namespace A390758.P8863259937828510235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390758.P8863259937828510235

/-!
# A390760: Odd composite numbers that are squarefree or prime powers.

The programs for A390760, there is no canonical definition to state claims against.
-/

/-! ## A390760.P8569759967511474340

`∩[2*n+1, A388427(n+1)]`
-/

namespace A390760.P8569759967511474340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390760.P8569759967511474340

/-! ## A390760.P2452322010832303699

`filter[A388427(n+1), A000035(#)]`
-/

namespace A390760.P2452322010832303699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A390760.P2452322010832303699

/-! ## A390760.P5685877380431411967

`filter[A388427(n+1), A260390(#)]`
-/

namespace A390760.P5685877380431411967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A390760.P5685877380431411967

/-! ## A390760.P15986977002851971211

`filter[A388427(n+1), A266070(#)]`
-/

namespace A390760.P15986977002851971211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A390760.P15986977002851971211

/-! ## A390760.P15642543762476602552

`filter[A388427(n+1), A266611(#)]`
-/

namespace A390760.P15642543762476602552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A390760.P15642543762476602552

/-! ## A390760.P1072749336831637292

`filter[A388427(n+1), A266719(#)]`
-/

namespace A390760.P1072749336831637292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A390760.P1072749336831637292

/-! ## A390760.P5742195339160620525

`filter[A388427(n+1), A296066(#)]`
-/

namespace A390760.P5742195339160620525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A390760.P5742195339160620525

/-! ## A390760.P3729147530386102148

`filter[A388427(n+2), A259044(#)]`
-/

namespace A390760.P3729147530386102148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A390760.P3729147530386102148

/-! ## A390760.P4381340145219877208

`filter[A388427(n+2), A266246(#)]`
-/

namespace A390760.P4381340145219877208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A390760.P4381340145219877208

/-! ## A390760.P6204175744404416025

`filter[A388427(n+3), A267256(#)]`
-/

namespace A390760.P6204175744404416025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A390760.P6204175744404416025

/-!
# A390762: Number of ways to write n as (p-1)^2 + (q-1)^2 + (r-1)^2/2 + (s-1)^2/4 with p <= q, where each of p,q,r,s is either 1 or an odd prime.

The programs for A390762, there is no canonical definition to state claims against.
-/

/-! ## A390762.P16220847929225192787

`A055642(A085207(2*n)^A023416(n))`
-/

namespace A390762.P16220847929225192787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((A085207 (2 * n) : ℚ) ^ (A023416 n : ℤ))).toNat

end

end A390762.P16220847929225192787

/-! ## A390762.P3948609943287610904

`A036225(A071563(n+1))`
-/

namespace A390762.P3948609943287610904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 (A071563 (n + 1)).toNat

end

end A390762.P3948609943287610904

/-! ## A390762.P5337982267422952430

`A026141(A059190(n+2))`
-/

namespace A390762.P5337982267422952430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026141 (A059190 (n + 2)).toNat

end

end A390762.P5337982267422952430

/-! ## A390762.P10739841285948089217

`A105551((2-C(2, n²))^(n-1)-A136480(n))`
-/

namespace A390762.P10739841285948089217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105551 (SequenceMachineLib.roundAway ((2 - (Nat.choose 2 (n ^ 2) : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A136480 n : ℚ))).toNat

end

end A390762.P10739841285948089217

/-! ## A390762.P14470207457387164699

`A279387(A101651(n)+A059048(n))`
-/

namespace A390762.P14470207457387164699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279387 (A101651 n + A059048 n).toNat

end

end A390762.P14470207457387164699

/-!
# A390764: Number of digits in base-6 representation of n.

The programs for A390764, the canonical program `A390764.P3120911945846591276` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390764 has offset 0).

The definition of A390764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390764.P15402339348237832577

`A055642(A007092(n))`
-/

namespace A390764.P15402339348237832577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007092 n).toNat

end

end A390764.P15402339348237832577

namespace A390764

/-- `A055642(A007092(n))` -/
def P15402339348237832577.Spec : Prop :=
  ∀ n, P15402339348237832577.a n = A390764 n

end A390764

/-! ## A390764.P1841173618671895983

`A055642(A084984(n+1))`
-/

namespace A390764.P1841173618671895983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A084984 (n + 1)).toNat

end

end A390764.P1841173618671895983

namespace A390764

/-- `A055642(A084984(n+1))` -/
def P1841173618671895983.Spec : Prop :=
  ∀ n, P1841173618671895983.a n = A390764 n

end A390764

/-! ## A390764.P3120911945846591276

`A055642(A202267(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A390764

/-- `A055642(A202267(n+1))` -/
def P3120911945846591276.Spec : Prop :=
  ∀ n, P3120911945846591276.a n = A390764 n

theorem P3120911945846591276.correct : P3120911945846591276.Spec := by
  intro n
  simp only [A390764]

end A390764

/-! ## A390764.P12981941118342799144

`A390767(A007092(n)+1)`
-/

namespace A390764.P12981941118342799144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390767 (A007092 n + 1).toNat

end

end A390764.P12981941118342799144

namespace A390764

/-- `A390767(A007092(n)+1)` -/
def P12981941118342799144.Spec : Prop :=
  ∀ n, P12981941118342799144.a n = A390764 n

end A390764

/-! ## A390764.P9309694087666109698

`A055642(A037468(n))`
-/

namespace A390764.P9309694087666109698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A037468 n).toNat

end

end A390764.P9309694087666109698

namespace A390764

/-- `A055642(A037468(n))` -/
def P9309694087666109698.Spec : Prop :=
  ∀ n, P9309694087666109698.a n = A390764 n

end A390764

/-! ## A390764.P9672544822362244634

`A000196(A108582((n+1)²))`
-/

namespace A390764.P9672544822362244634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A108582 ((n + 1) ^ 2)).toNat

end

end A390764.P9672544822362244634

namespace A390764

/-- `A000196(A108582((n+1)²))` -/
def P9672544822362244634.Spec : Prop :=
  ∀ n, P9672544822362244634.a n = A390764 n

end A390764

/-! ## A390764.P17290720125730272584

`A115338(A362692((n+1)²))`
-/

namespace A390764.P17290720125730272584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115338 (A362692 ((n + 1) ^ 2)).toNat

end

end A390764.P17290720125730272584

namespace A390764

/-- `A115338(A362692((n+1)²))` -/
def P17290720125730272584.Spec : Prop :=
  ∀ n, P17290720125730272584.a n = A390764 n

end A390764

/-! ## A390764.P1206911107782751785

`A110591(A101290(n))`
-/

namespace A390764.P1206911107782751785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A101290 n).toNat

end

end A390764.P1206911107782751785

namespace A390764

/-- `A110591(A101290(n))` -/
def P1206911107782751785.Spec : Prop :=
  ∀ n, P1206911107782751785.a n = A390764 n

end A390764

/-! ## A390764.P15174124522613027632

`A001069(A210509(n))`
-/

namespace A390764.P15174124522613027632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001069 (A210509 n).toNat

end

end A390764.P15174124522613027632

namespace A390764

/-- `A001069(A210509(n))` -/
def P15174124522613027632.Spec : Prop :=
  ∀ n, P15174124522613027632.a n = A390764 n

end A390764

/-! ## A390764.P3999179382907093632

`A043559(A171592(n))`
-/

namespace A390764.P3999179382907093632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 (A171592 n).toNat

end

end A390764.P3999179382907093632

namespace A390764

/-- `A043559(A171592(n))` -/
def P3999179382907093632.Spec : Prop :=
  ∀ n, P3999179382907093632.a n = A390764 n

end A390764

/-!
# A390765: Number of digits in base-7 representation of n.

The programs for A390765, there is no canonical definition to state claims against.
-/

/-! ## A390765.P2882205278536713732

`∑{digits}[A007093(n), A054123(#)]`
-/

namespace A390765.P2882205278536713732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A054123 x).sum

end

end A390765.P2882205278536713732

/-! ## A390765.P15023653847888865822

`A055642(A007093(n))`
-/

namespace A390765.P15023653847888865822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007093 n).toNat

end

end A390765.P15023653847888865822

/-! ## A390765.P920257762248241006

`A055642(A037472(n))`
-/

namespace A390765.P920257762248241006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A037472 n).toNat

end

end A390765.P920257762248241006

/-! ## A390765.P15205599917479795459

`A111651(A111651(A131507(n²)))`
-/

namespace A390765.P15205599917479795459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A111651 (A131507 (n ^ 2)).toNat).toNat

end

end A390765.P15205599917479795459

/-! ## A390765.P4281153994625120452

`A178487(A250120(n)+A104616(n+5))`
-/

namespace A390765.P4281153994625120452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A250120 n + A104616 (n + 5)).toNat

end

end A390765.P4281153994625120452

/-! ## A390765.P7886668499592687636

`floor(log(A332061(n+2)))`
-/

namespace A390765.P7886668499592687636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A332061 (n + 2) : ℝ)⌋

end

end A390765.P7886668499592687636

/-! ## A390765.P9964023579972072847

`A043561(A171610(n))`
-/

namespace A390765.P9964023579972072847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A171610 n).toNat

end

end A390765.P9964023579972072847

/-! ## A390765.P1406279196492795496

`A055642(A173999(n))`
-/

namespace A390765.P1406279196492795496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A173999 n).toNat

end

end A390765.P1406279196492795496

/-!
# A390766: Number of digits in base-8 representation of n.

The programs for A390766, the canonical program `A390766.P3448197139807937500` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390766 has offset 0).

The definition of A390766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390766.P3448197139807937500

`ceil(ceil(abs(log2(n+γ)))/3)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A390766

/-- `ceil(ceil(abs(log2(n+γ)))/3)` -/
def P3448197139807937500.Spec : Prop :=
  ∀ n, P3448197139807937500.a n = A390766 n

theorem P3448197139807937500.correct : P3448197139807937500.Spec := by
  intro n
  simp only [A390766]

end A390766

/-! ## A390766.P8378706052089489481

`round((∑[char[and(n, 1-n)]]+1)/3)`
-/

namespace A390766.P8378706052089489481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - (n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 3)

end

end A390766.P8378706052089489481

namespace A390766

/-- `round((∑[char[and(n, 1-n)]]+1)/3)` -/
def P8378706052089489481.Spec : Prop :=
  ∀ n, P8378706052089489481.a n = A390766 n

end A390766

/-! ## A390766.P15869628522154204246

`round(log(sqrt(A280510(n+1))))`
-/

namespace A390766.P15869628522154204246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.sqrt (A280510 (n + 1) : ℝ)))

end

end A390766.P15869628522154204246

namespace A390766

/-- `round(log(sqrt(A280510(n+1))))` -/
def P15869628522154204246.Spec : Prop :=
  ∀ n, P15869628522154204246.a n = A390766 n

end A390766

/-! ## A390766.P4093815174142447947

`A157685(ceil(abs(log2(n+γ)))+2)`
-/

namespace A390766.P4093815174142447947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (⌈|Real.logb 2 ((n : ℝ) + Real.eulerMascheroniConstant)|⌉ + 2).toNat

end

end A390766.P4093815174142447947

namespace A390766

/-- `A157685(ceil(abs(log2(n+γ)))+2)` -/
def P4093815174142447947.Spec : Prop :=
  ∀ n, P4093815174142447947.a n = A390766 n

end A390766

/-! ## A390766.P4881626034111887241

`A055642(A007094(n))`
-/

namespace A390766.P4881626034111887241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007094 n).toNat

end

end A390766.P4881626034111887241

namespace A390766

/-- `A055642(A007094(n))` -/
def P4881626034111887241.Spec : Prop :=
  ∀ n, P4881626034111887241.a n = A390766 n

end A390766

/-! ## A390766.P9654517342755972828

`A055642(xor(A003159(n+1), A206437(n+1)))`
-/

namespace A390766.P9654517342755972828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.xor (A003159 (n + 1)) (A206437 (n + 1))).toNat

end

end A390766.P9654517342755972828

namespace A390766

/-- `A055642(xor(A003159(n+1), A206437(n+1)))` -/
def P9654517342755972828.Spec : Prop :=
  ∀ n, P9654517342755972828.a n = A390766 n

end A390766

/-! ## A390766.P3936296123331895111

`A124766(A001333(ceil(log2(n+1))))`
-/

namespace A390766.P3936296123331895111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A001333 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat).toNat

end

end A390766.P3936296123331895111

namespace A390766

/-- `A124766(A001333(ceil(log2(n+1))))` -/
def P3936296123331895111.Spec : Prop :=
  ∀ n, P3936296123331895111.a n = A390766 n

end A390766

/-!
# A390767: Number of digits in base-9 representation of n.

The programs for A390767, the canonical program `A390767.P7294743232023992105` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390767 has offset 0).

The definition of A390767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390767.P7294743232023992105

`A081604(floor(sqrt(n)))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A390767

/-- `A081604(floor(sqrt(n)))` -/
def P7294743232023992105.Spec : Prop :=
  ∀ n, P7294743232023992105.a n = A390767 n

theorem P7294743232023992105.correct : P7294743232023992105.Spec := by
  intro n
  simp only [A390767]

end A390767

/-! ## A390767.P8403530710407373601

`ceil(A081604(n)/2)`
-/

namespace A390767.P8403530710407373601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081604 n : ℚ) / 2⌉

end

end A390767.P8403530710407373601

namespace A390767

/-- `ceil(A081604(n)/2)` -/
def P8403530710407373601.Spec : Prop :=
  ∀ n, P8403530710407373601.a n = A390767 n

end A390767

/-! ## A390767.P1343251163590139246

`floor(∑[char[A048883(3*n+2)]]/2)+1`
-/

namespace A390767.P1343251163590139246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (3 * n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋ + 1

end

end A390767.P1343251163590139246

namespace A390767

/-- `floor(∑[char[A048883(3*n+2)]]/2)+1` -/
def P1343251163590139246.Spec : Prop :=
  ∀ n, P1343251163590139246.a n = A390767 n

end A390767

/-! ## A390767.P5207201431282168891

`∑{digits}[A007095(n), A242784(#)]`
-/

namespace A390767.P5207201431282168891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A242784 x).sum

end

end A390767.P5207201431282168891

namespace A390767

/-- `∑{digits}[A007095(n), A242784(#)]` -/
def P5207201431282168891.Spec : Prop :=
  ∀ n, P5207201431282168891.a n = A390767 n

end A390767

/-! ## A390767.P2777223973194812554

`A055642(A007095(n))`
-/

namespace A390767.P2777223973194812554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007095 n).toNat

end

end A390767.P2777223973194812554

namespace A390767

/-- `A055642(A007095(n))` -/
def P2777223973194812554.Spec : Prop :=
  ∀ n, P2777223973194812554.a n = A390767 n

end A390767

/-! ## A390767.P3012896319096939154

`A055642(record[A222210(n)])`
-/

namespace A390767.P3012896319096939154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A390767.P3012896319096939154

namespace A390767

/-- `A055642(record[A222210(n)])` -/
def P3012896319096939154.Spec : Prop :=
  ∀ n, P3012896319096939154.a n = A390767 n

end A390767

/-! ## A390767.P6852219895586032056

`ceil(A031346(n+1)/A010686(A351377(n+1)))+1`
-/

namespace A390767.P6852219895586032056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A031346 (n + 1) : ℚ) / (A010686 (A351377 (n + 1)).toNat : ℚ)⌉ + 1

end

end A390767.P6852219895586032056

namespace A390767

/-- `ceil(A031346(n+1)/A010686(A351377(n+1)))+1` -/
def P6852219895586032056.Spec : Prop :=
  ∀ n, P6852219895586032056.a n = A390767 n

end A390767

/-! ## A390767.P18325618534994230038

`ceil(∑[1/∑[A113724(n+1)]])`
-/

namespace A390767.P18325618534994230038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113724 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A390767.P18325618534994230038

namespace A390767

/-- `ceil(∑[1/∑[A113724(n+1)]])` -/
def P18325618534994230038.Spec : Prop :=
  ∀ n, P18325618534994230038.a n = A390767 n

end A390767

/-! ## A390767.P2899946408914269345

`A055642(A153249(n)+1)`
-/

namespace A390767.P2899946408914269345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A153249 n + 1).toNat

end

end A390767.P2899946408914269345

namespace A390767

/-- `A055642(A153249(n)+1)` -/
def P2899946408914269345.Spec : Prop :=
  ∀ n, P2899946408914269345.a n = A390767 n

end A390767

/-! ## A390767.P10839733601464852331

`A185119(A002620(3*(n+1)))+A185119(n)`
-/

namespace A390767.P10839733601464852331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185119 (A002620 (3 * (n + 1))).toNat + A185119 n

end

end A390767.P10839733601464852331

namespace A390767

/-- `A185119(A002620(3*(n+1)))+A185119(n)` -/
def P10839733601464852331.Spec : Prop :=
  ∀ n, P10839733601464852331.a n = A390767 n

end A390767

/-!
# A390768: Binary length of A139391(n) - binary length of n.

The programs for A390768, the canonical program `A390768.P10875789156720310825` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390768 has offset 1).

The definition of A390768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390768.P10875789156720310825

`A000523(A139391(n+1))-A000523(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A390768

/-- `A000523(A139391(n+1))-A000523(n+1)` -/
def P10875789156720310825.Spec : Prop :=
  ∀ n, P10875789156720310825.a n = A390768 (n + 1)

theorem P10875789156720310825.correct : P10875789156720310825.Spec := by
  intro n
  simp only [A390768, Nat.add_sub_cancel]

end A390768

/-!
# A390774: Numbers whose final digit is at most 3.

The programs for A390774, the canonical program `A390774.P16977446357652743833` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390774 has offset 0).

The definition of A390774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390774.P16977446357652743833

`6*floor(n/4)+n`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A390774

/-- `6*floor(n/4)+n` -/
def P16977446357652743833.Spec : Prop :=
  ∀ n, P16977446357652743833.a n = A390774 n

theorem P16977446357652743833.correct : P16977446357652743833.Spec := by
  intro n
  simp only [A390774]

end A390774

/-! ## A390774.P7440484098116599202

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A390774.P7440484098116599202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 7] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390774.P7440484098116599202

namespace A390774

/-- `∑[floor(a(n-4))]` -/
def P7440484098116599202.Spec : Prop :=
  ∀ n, (P7440484098116599202.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P5405746763020821597

`lt[n%10+n-1, n+3]`
-/

namespace A390774.P5405746763020821597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 10 : ℕ) : ℤ) + ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A390774.P5405746763020821597

namespace A390774

/-- `lt[n%10+n-1, n+3]` -/
def P5405746763020821597.Spec : Prop :=
  ∀ n, (P5405746763020821597.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P4360492750075839863

`∑[a(n-4)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=7`
-/

namespace A390774.P4360492750075839863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 7] fun n f1 =>
  f1 (n - 4) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390774.P4360492750075839863

namespace A390774

/-- `∑[a(n-4)^a(n-1)]` -/
def P4360492750075839863.Spec : Prop :=
  ∀ n, (P4360492750075839863.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P14103745303078583873

`∪[A017305(n), A391163(n)]`
-/

namespace A390774.P14103745303078583873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391163 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390774.P14103745303078583873

namespace A390774

/-- `∪[A017305(n), A391163(n)]` -/
def P14103745303078583873.Spec : Prop :=
  ∀ n, (P14103745303078583873.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P11396702433669885117

`∪[A235089(n+1), A391163(n)]`
-/

namespace A390774.P11396702433669885117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391163 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390774.P11396702433669885117

namespace A390774

/-- `∪[A235089(n+1), A391163(n)]` -/
def P11396702433669885117.Spec : Prop :=
  ∀ n, (P11396702433669885117.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P18425601798615318278

`∪[A277590(n+1), A391163(n)]`
-/

namespace A390774.P18425601798615318278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391163 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390774.P18425601798615318278

namespace A390774

/-- `∪[A277590(n+1), A391163(n)]` -/
def P18425601798615318278.Spec : Prop :=
  ∀ n, (P18425601798615318278.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P17700366970385045087

`A235499(A001068(n))`
-/

namespace A390774.P17700366970385045087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235499 (A001068 n).toNat

end

end A390774.P17700366970385045087

namespace A390774

/-- `A235499(A001068(n))` -/
def P17700366970385045087.Spec : Prop :=
  ∀ n, P17700366970385045087.a n = A390774 n

end A390774

/-! ## A390774.P12490070319274136532

`A293292(A047201(n+1))`
-/

namespace A390774.P12490070319274136532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (A047201 (n + 1)).toNat

end

end A390774.P12490070319274136532

namespace A390774

/-- `A293292(A047201(n+1))` -/
def P12490070319274136532.Spec : Prop :=
  ∀ n, P12490070319274136532.a n = A390774 n

end A390774

/-! ## A390774.P7242089754301175136

`∩[A293292(n+1), A235499(n)]`
-/

namespace A390774.P7242089754301175136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235499 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390774.P7242089754301175136

namespace A390774

/-- `∩[A293292(n+1), A235499(n)]` -/
def P7242089754301175136.Spec : Prop :=
  ∀ n, (P7242089754301175136.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P9402860703220261683

`A391164(A047246(n+1))`
-/

namespace A390774.P9402860703220261683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391164 (A047246 (n + 1)).toNat

end

end A390774.P9402860703220261683

namespace A390774

/-- `A391164(A047246(n+1))` -/
def P9402860703220261683.Spec : Prop :=
  ∀ n, P9402860703220261683.a n = A390774 n

end A390774

/-! ## A390774.P8873625678469196314

`∩[A235499(n), A391164(n)]`
-/

namespace A390774.P8873625678469196314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235499 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391164 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390774.P8873625678469196314

namespace A390774

/-- `∩[A235499(n), A391164(n)]` -/
def P8873625678469196314.Spec : Prop :=
  ∀ n, (P8873625678469196314.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P9987324568446573773

`A001068(A047476(n+1))`
-/

namespace A390774.P9987324568446573773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A047476 (n + 1)).toNat

end

end A390774.P9987324568446573773

namespace A390774

/-- `A001068(A047476(n+1))` -/
def P9987324568446573773.Spec : Prop :=
  ∀ n, P9987324568446573773.a n = A390774 n

end A390774

/-! ## A390774.P12179442191717720702

`∩[A235499(n), A272576(n)]`
-/

namespace A390774.P12179442191717720702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235499 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272576 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390774.P12179442191717720702

namespace A390774

/-- `∩[A235499(n), A272576(n)]` -/
def P12179442191717720702.Spec : Prop :=
  ∀ n, (P12179442191717720702.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P11043161161514315416

`A391164(A272576(2*n)-n)`
-/

namespace A390774.P11043161161514315416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391164 (A272576 (2 * n) - (n : ℤ)).toNat

end

end A390774.P11043161161514315416

namespace A390774

/-- `A391164(A272576(2*n)-n)` -/
def P11043161161514315416.Spec : Prop :=
  ∀ n, P11043161161514315416.a n = A390774 n

end A390774

/-! ## A390774.P7188765706474018906

`∩[A293292(n+1), A001068(n)]`
-/

namespace A390774.P7188765706474018906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390774.P7188765706474018906

namespace A390774

/-- `∩[A293292(n+1), A001068(n)]` -/
def P7188765706474018906.Spec : Prop :=
  ∀ n, (P7188765706474018906.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P7708219385689850370

`eq[A058207(n), A081594(n)]`
-/

namespace A390774.P7708219385689850370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390774.P7708219385689850370

namespace A390774

/-- `eq[A058207(n), A081594(n)]` -/
def P7708219385689850370.Spec : Prop :=
  ∀ n, (P7708219385689850370.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P1667867563869070681

`eq[A081597(n), A286717(n)]`
-/

namespace A390774.P1667867563869070681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390774.P1667867563869070681

namespace A390774

/-- `eq[A081597(n), A286717(n)]` -/
def P1667867563869070681.Spec : Prop :=
  ∀ n, (P1667867563869070681.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P2100719351694165277

`eq[A059811(n+1), A099443(n)]`
-/

namespace A390774.P2100719351694165277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390774.P2100719351694165277

namespace A390774

/-- `eq[A059811(n+1), A099443(n)]` -/
def P2100719351694165277.Spec : Prop :=
  ∀ n, (P2100719351694165277.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P13228464027597645573

`eq[A010889(n), A277543(n+1)]`
-/

namespace A390774.P13228464027597645573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390774.P13228464027597645573

namespace A390774

/-- `eq[A010889(n), A277543(n+1)]` -/
def P13228464027597645573.Spec : Prop :=
  ∀ n, (P13228464027597645573.a n : ℤ) = A390774 n

end A390774

/-!
# A390775: a(n) = Sum_{k=0..floor(n/3)} 2^k * 3^(n-3*k) * binomial(k,2*(n-3*k)).

The programs for A390775, the canonical program `A390775.P15664665695904206775` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390775 has offset 0).

The definition of A390775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390775.P15664665695904206775

`4*a(n-3)-4*a(n-6)+12*a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=0, a(5)=0, a(6)=4`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A390775

/-- `4*a(n-3)-4*a(n-6)+12*a(n-7)` -/
def P15664665695904206775.Spec : Prop :=
  ∀ n, P15664665695904206775.a n = A390775 n

theorem P15664665695904206775.correct : P15664665695904206775.Spec := by
  intro n
  simp only [A390775]

end A390775

/-!
# A390776: a(n) = (1/(2*n+1)) * Sum_{k=0..n} (2*k+1) * binomial(4*n+2,n-k).

The programs for A390776, there is no canonical definition to state claims against.
-/

/-! ## A390776.P11847401967090786304

`A369930(Δ[n²])`
-/

namespace A390776.P11847401967090786304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369930 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A390776.P11847401967090786304

/-! ## A390776.P177055597331484309

`A369592(3*n+n+1)`
-/

namespace A390776.P177055597331484309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369592 (3 * n + (n + 1))

end

end A390776.P177055597331484309

/-! ## A390776.P9960340358102788926

`A047100(A125201(n+1))`
-/

namespace A390776.P9960340358102788926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A125201 (n + 1)).toNat

end

end A390776.P9960340358102788926

/-!
# A390777: a(n) = (1/(5*n+2)) * Sum_{k=0..n} (5*k+2) * binomial(5*n+2,n-k).

The programs for A390777, there is no canonical definition to state claims against.
-/

/-! ## A390777.P18390443546124130581

`A050292(A390779(n)+A000332(n+2))`
-/

namespace A390777.P18390443546124130581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (A390779 n + A000332 (n + 2)).toNat

end

end A390777.P18390443546124130581

/-!
# A390778: a(n) = (1/(4*n+3)) * Sum_{k=0..n} (4*k+3) * binomial(4*n+3,n-k).

The programs for A390778, there is no canonical definition to state claims against.
-/

/-! ## A390778.P15298586989179807640

`A369592(4*n+2)`
-/

namespace A390778.P15298586989179807640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369592 (4 * n + 2)

end

end A390778.P15298586989179807640

/-! ## A390778.P9472219668882530347

`A047100(A139273(n+1))`
-/

namespace A390778.P9472219668882530347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A139273 (n + 1)).toNat

end

end A390778.P9472219668882530347

/-! ## A390778.P390874579285820005

`A047100(A001107(2*(n+1))/2)`
-/

namespace A390778.P390874579285820005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (SequenceMachineLib.roundAway ((A001107 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A390778.P390874579285820005

/-!
# A390780: a(n) = (1/(5*n+4)) * Sum_{k=0..n} (5*k+4) * binomial(5*n+4,n-k).

The programs for A390780, there is no canonical definition to state claims against.
-/

/-! ## A390780.P2418818961480582015

`A014200(A233668(n))`
-/

namespace A390780.P2418818961480582015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (A233668 n).toNat

end

end A390780.P2418818961480582015

/-!
# A390781: a(n) = Sum_{k=0..floor(n/3)} (k+1) * 2^k * 3^(n-3*k) * binomial(2*k,2*(n-3*k)).

The programs for A390781, there is no canonical definition to state claims against.
-/

/-! ## A390781.P9240255830841589615

`A055642(A000701(3*n+1))*A390619(n)`
-/

namespace A390781.P9240255830841589615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A000701 (3 * n + 1)).toNat * A390619 n

end

end A390781.P9240255830841589615

/-! ## A390781.P8725588820666720470

`A124768(A113118(n+1))*A390619(n)`
-/

namespace A390781.P8725588820666720470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A113118 (n + 1)).toNat * A390619 n

end

end A390781.P8725588820666720470

/-!
# A390782: Number of n X n grids with 4 non-attacking kings on each row.

The programs for A390782, there is no canonical definition to state claims against.
-/

/-! ## A390782.P9328136205468671130

`A245321(A069646(n))`
-/

namespace A390782.P9328136205468671130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245321 (A069646 n).toNat

end

end A390782.P9328136205468671130

/-! ## A390782.P4366910686441528871

`A210635(A106433(n))`
-/

namespace A390782.P4366910686441528871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210635 (A106433 n).toNat

end

end A390782.P4366910686441528871

/-! ## A390782.P159069210160491363

`A353885(A333627(a(n-1)+n))` with `a(0)=1`
-/

namespace A390782.P159069210160491363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A353885 (A333627 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A390782.P159069210160491363

/-! ## A390782.P5007660773467179835

`C(A242626(n+2), A079171(∏{p}[n+1, #]))`
-/

namespace A390782.P5007660773467179835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A242626 (n + 2)).toNat (A079171 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A390782.P5007660773467179835

/-! ## A390782.P6582470801430447128

`C(A000688(A220423(n+1)), ∏{p}[n+1, #²])`
-/

namespace A390782.P6582470801430447128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000688 (A220423 (n + 1)).toNat).toNat (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2)

end

end A390782.P6582470801430447128

/-!
# A390786: a(n) is the least k such that the number of integers between (1/5)*prime(k) and (1/5)*prime(k+1) is n.

The programs for A390786, there is no canonical definition to state claims against.
-/

/-! ## A390786.P6991024286645416365

`∩[A005669(n+1), A193767(n+1)]`
-/

namespace A390786.P6991024286645416365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390786.P6991024286645416365

/-!
# A390788: Numbers k such that 2*k - (greatest prime < 2*k) < (least prime > 2*k) - 2*k.

The programs for A390788, the canonical program `A390788.P17759256906105032846` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390788 has offset 1).

The definition of A390788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390788.P1462590835375076037

`lt[A051697(2*n+1)-n, n]`
-/

namespace A390788.P1462590835375076037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A390788.P1462590835375076037

namespace A390788

/-- `lt[A051697(2*n+1)-n, n]` -/
def P1462590835375076037.Spec : Prop :=
  ∀ n, (P1462590835375076037.a n : ℤ) = A390788 (n + 1)

end A390788

/-! ## A390788.P17759256906105032846

`lt[A210882(A210882(2*n+1)), A210882(2*n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A390788

/-- `lt[A210882(A210882(2*n+1)), A210882(2*n+1)]` -/
def P17759256906105032846.Spec : Prop :=
  ∀ n, (P17759256906105032846.a n : ℤ) = A390788 (n + 1)

theorem P17759256906105032846.correct : P17759256906105032846.Spec := by
  intro n
  simp only [A390788, Nat.add_sub_cancel]

end A390788

/-! ## A390788.P9608532120188269276

`A107324(A049591(n+1))`
-/

namespace A390788.P9608532120188269276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107324 (A049591 (n + 1)).toNat

end

end A390788.P9608532120188269276

namespace A390788

/-- `A107324(A049591(n+1))` -/
def P9608532120188269276.Spec : Prop :=
  ∀ n, P9608532120188269276.a n = A390788 (n + 1)

end A390788

/-! ## A390788.P5414175123604944896

`A107324(A176180(n+1))`
-/

namespace A390788.P5414175123604944896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107324 (A176180 (n + 1)).toNat

end

end A390788.P5414175123604944896

namespace A390788

/-- `A107324(A176180(n+1))` -/
def P5414175123604944896.Spec : Prop :=
  ∀ n, P5414175123604944896.a n = A390788 (n + 1)

end A390788

/-! ## A390788.P12118388487800542332

`A104280(A187829(n+1))`
-/

namespace A390788.P12118388487800542332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104280 (A187829 (n + 1)).toNat

end

end A390788.P12118388487800542332

namespace A390788

/-- `A104280(A187829(n+1))` -/
def P12118388487800542332.Spec : Prop :=
  ∀ n, P12118388487800542332.a n = A390788 (n + 1)

end A390788

/-!
# A390789: Numbers k such that 2*k - (greatest prime < 2*k) = (least prime > 2*k) - 2*k.

The programs for A390789, the canonical program `A390789.P3572526343516217248` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390789 has offset 1).

The definition of A390789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390789.P3572526343516217248

`A072568(n+1)/2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A390789

/-- `A072568(n+1)/2` -/
def P3572526343516217248.Spec : Prop :=
  ∀ n, P3572526343516217248.a n = (A390789 (n + 1) : ℚ)

end A390789

/-! ## A390789.P9085182983499710105

`eq[2*n, A210882(2*n+1)]`
-/

namespace A390789.P9085182983499710105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A390789.P9085182983499710105

namespace A390789

/-- `eq[2*n, A210882(2*n+1)]` -/
def P9085182983499710105.Spec : Prop :=
  ∀ n, (P9085182983499710105.a n : ℤ) = A390789 (n + 1)

end A390789

/-! ## A390789.P15454043241830626015

`A001281(A072568(n+1))`
-/

namespace A390789.P15454043241830626015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A072568 (n + 1)).toNat

end

end A390789.P15454043241830626015

namespace A390789

/-- `A001281(A072568(n+1))` -/
def P15454043241830626015.Spec : Prop :=
  ∀ n, P15454043241830626015.a n = A390789 (n + 1)

end A390789

/-! ## A390789.P1422596023943445301

`record[A032742(A024675(n+1))]`
-/

namespace A390789.P1422596023943445301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A024675 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390789.P1422596023943445301

namespace A390789

/-- `record[A032742(A024675(n+1))]` -/
def P1422596023943445301.Spec : Prop :=
  ∀ n, P1422596023943445301.a n = A390789 (n + 1)

end A390789

/-! ## A390789.P9256616773255337977

`A008619(A072568(n+1)-1)`
-/

namespace A390789.P9256616773255337977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A072568 (n + 1) - 1).toNat

end

end A390789.P9256616773255337977

namespace A390789

/-- `A008619(A072568(n+1)-1)` -/
def P9256616773255337977.Spec : Prop :=
  ∀ n, P9256616773255337977.a n = A390789 (n + 1)

end A390789

/-!
# A390790: Numbers k such that 2*k - (greatest prime < 2*k) > (least prime > 2*k) - 2*k.

The programs for A390790, there is no canonical definition to state claims against.
-/

/-! ## A390790.P1203396259773195344

`A104279(n+1)-A335520(A145596(n+2))`
-/

namespace A390790.P1203396259773195344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104279 (n + 1) - A335520 (A145596 (n + 2)).toNat

end

end A390790.P1203396259773195344

/-! ## A390790.P16193640493152919490

`A104279(n+1)-A335520(A025162(3*n+5))`
-/

namespace A390790.P16193640493152919490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104279 (n + 1) - A335520 (A025162 (3 * n + 5)).toNat

end

end A390790.P16193640493152919490

/-!
# A390793: Number of ways to write n as x^4 + y^2 + 2*z^2 + (p-1)^2/2, where x,y,z are in the set {m >= 0: 2*m is practical}, and p is either 1 or an odd prime.

The programs for A390793, there is no canonical definition to state claims against.
-/

/-! ## A390793.P12662653969305908827

`A262857(n)+A121373(A163205(2*n+5))`
-/

namespace A390793.P12662653969305908827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262857 n + A121373 (A163205 (2 * n + 5)).toNat

end

end A390793.P12662653969305908827

/-! ## A390793.P10014664684950578527

`A376451(A324525(n+2))+A262857(n)`
-/

namespace A390793.P10014664684950578527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376451 (A324525 (n + 2)).toNat + A262857 n

end

end A390793.P10014664684950578527

/-!
# A390798: a(n) = Sum_{k=0..n} (3*k+2) * binomial(5*n-2*k+2,n-k)/(5*n-2*k+2).

The programs for A390798, there is no canonical definition to state claims against.
-/

/-! ## A390798.P11369802194696545382

`A054633(A005810(n)+A004526(n))`
-/

namespace A390798.P11369802194696545382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054633 (A005810 n + A004526 n).toNat

end

end A390798.P11369802194696545382

