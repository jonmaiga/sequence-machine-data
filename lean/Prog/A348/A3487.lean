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
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A348702: Square array T(n, k) (n>=1, k>=1) read by antidiagonals upwards. T(n, k) is the number of partitions of the set [n] into lists of k noncrossing sets.

The programs for A348702, there is no canonical definition to state claims against.
-/

/-! ## A348702.P1766319624568051671

`A002262(n)+A338796(A086645(n))+1`
-/

namespace A348702.P1766319624568051671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A338796 (A086645 n).toNat + 1)

end

end A348702.P1766319624568051671

/-! ## A348702.P14969211998393217256

`A338796(A086645(n))+A002260(n+1)`
-/

namespace A348702.P14969211998393217256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338796 (A086645 n).toNat + A002260 (n + 1)

end

end A348702.P14969211998393217256

/-! ## A348702.P8286821113597221259

`A048266(A002260(n+1)*A307133(n))`
-/

namespace A348702.P8286821113597221259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A002260 (n + 1) * A307133 n).toNat

end

end A348702.P8286821113597221259

/-! ## A348702.P7736853411752619916

`A025668(n+1)+A338796(A086645(n))+1`
-/

namespace A348702.P7736853411752619916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1) + (A338796 (A086645 n).toNat + 1)

end

end A348702.P7736853411752619916

/-! ## A348702.P9293332276800417929

`A051129(n+1)-A335453(A335448(n+1))`
-/

namespace A348702.P9293332276800417929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 1) - A335453 (A335448 (n + 1)).toNat

end

end A348702.P9293332276800417929

/-!
# A348703: a(n) = Sum_{x_1+x_2+ ... +x_n=n, 0 <= x_1, x_2, ... , x_n <= n} ((n-1)*n)!/((n-x_1)! * (n-x_2)! * ... * (n-x_n)!).

The programs for A348703, there is no canonical definition to state claims against.
-/

/-! ## A348703.P909997177198750393

`A234574(∑[n²])`
-/

namespace A348703.P909997177198750393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234574 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A348703.P909997177198750393

/-!
# A348705: a(n) is the total length of all line segments in the symmetric representation of sigma(n).

The programs for A348705, there is no canonical definition to state claims against.
-/

/-! ## A348705.P4269794035752199219

`2*A348854(n+1)`
-/

namespace A348705.P4269794035752199219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348854 (n + 1)

end

end A348705.P4269794035752199219

/-! ## A348705.P6695578424108937554

`A008586(n+1)-A279228(n+1)`
-/

namespace A348705.P6695578424108937554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 1) - A279228 (n + 1)

end

end A348705.P6695578424108937554

/-! ## A348705.P9701012282740760934

`2*(A244361(n+1)+n+1)`
-/

namespace A348705.P9701012282740760934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A244361 (n + 1) + (n + 1 : ℤ))

end

end A348705.P9701012282740760934

/-! ## A348705.P9501068236047552045

`A244363(n+1)+2*(n+1)`
-/

namespace A348705.P9501068236047552045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244363 (n + 1) + (2 * (n + 1) : ℤ)

end

end A348705.P9501068236047552045

/-! ## A348705.P13797838902398678243

`6*A348854(Δ[n²]-n)/3`
-/

namespace A348705.P13797838902398678243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((A348854 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 3)

end

end A348705.P13797838902398678243

/-!
# A348706: Delete all 0's from ternary expansion of n.

The programs for A348706, there is no canonical definition to state claims against.
-/

/-! ## A348706.P2088404682396732528

`A028898(A140316(n+1))`
-/

namespace A348706.P2088404682396732528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A140316 (n + 1)).toNat

end

end A348706.P2088404682396732528

/-! ## A348706.P2626415646505431843

`A038502(n+1)%A109044(A306544(n+1))`
-/

namespace A348706.P2626415646505431843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038502 (n + 1)) (A109044 (A306544 (n + 1)).toNat)

end

end A348706.P2626415646505431843

/-! ## A348706.P9379623215763717579

`A048787(A048787(n+1)^A212363(n))`
-/

namespace A348706.P9379623215763717579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048787 (SequenceMachineLib.roundAway ((A048787 (n + 1) : ℚ) ^ (A212363 n : ℤ))).toNat

end

end A348706.P9379623215763717579

/-! ## A348706.P1998643317443517986

`A048787(A048787(n+1)^A274835(n))`
-/

namespace A348706.P1998643317443517986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048787 (SequenceMachineLib.roundAway ((A048787 (n + 1) : ℚ) ^ (A274835 n : ℤ))).toNat

end

end A348706.P1998643317443517986

/-!
# A348708: Number of squarefree integers with an odd number of prime factors <= 10^n.

The programs for A348708, there is no canonical definition to state claims against.
-/

/-! ## A348708.P13326985780188975699

`(A071172(n)-A084237(n))/2`
-/

namespace A348708.P13326985780188975699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071172 n - A084237 n : ℚ) / 2

end

end A348708.P13326985780188975699

/-! ## A348708.P761997647484659043

`A071172(n)-A348709(n)`
-/

namespace A348708.P761997647484659043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071172 n - A348709 n

end

end A348708.P761997647484659043

/-! ## A348708.P3000713129397306609

`A348709(n)-A084237(n)`
-/

namespace A348708.P3000713129397306609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348709 n - A084237 n

end

end A348708.P3000713129397306609

/-! ## A348708.P18361988460885784630

`A053462(n)+abs(A240330(n))-A348709(n)`
-/

namespace A348708.P18361988460885784630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053462 n + (|A240330 n| - A348709 n)

end

end A348708.P18361988460885784630

/-! ## A348708.P17424380832232984756

`A000007(A004526(n))+A053462(n)-A348709(n)`
-/

namespace A348708.P17424380832232984756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A004526 n).toNat + (A053462 n - A348709 n)

end

end A348708.P17424380832232984756

/-!
# A348709: Number of squarefree integers with an even number of prime factors <= 10^n.

The programs for A348709, there is no canonical definition to state claims against.
-/

/-! ## A348709.P17806751587913117080

`(A071172(n)+A084237(n))/2`
-/

namespace A348709.P17806751587913117080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071172 n + A084237 n : ℚ) / 2

end

end A348709.P17806751587913117080

/-! ## A348709.P8333463623413637668

`A348708(n)+A084237(n)`
-/

namespace A348709.P8333463623413637668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348708 n + A084237 n

end

end A348709.P8333463623413637668

/-! ## A348709.P12258416017626268925

`A071172(n)-A348708(n)`
-/

namespace A348709.P12258416017626268925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071172 n - A348708 n

end

end A348709.P12258416017626268925

/-! ## A348709.P967358580405903686

`A053462(n)+abs(A240330(n))-A348708(n)`
-/

namespace A348709.P967358580405903686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053462 n + (|A240330 n| - A348708 n)

end

end A348709.P967358580405903686

/-! ## A348709.P3621465711335304031

`A000007(A004526(n))+A053462(n)-A348708(n)`
-/

namespace A348709.P3621465711335304031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A004526 n).toNat + (A053462 n - A348708 n)

end

end A348709.P3621465711335304031

/-!
# A348710: In the binary expansion of n, decrease the length of each run of 1-bits by one.

The programs for A348710, the canonical program `A348710.P12126877974975923435` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348710 has offset 0).

The definition of A348710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348710.P12126877974975923435

`A156552(gcd(A005940(n+1), A344028(n)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A348710

/-- `A156552(gcd(A005940(n+1), A344028(n)))` -/
def P12126877974975923435.Spec : Prop :=
  ∀ n, P12126877974975923435.a n = A348710 n

theorem P12126877974975923435.correct : P12126877974975923435.Spec := by
  intro n
  simp only [A348710]

end A348710

/-! ## A348710.P4165459572158520016

`A156552(A005940(n+1)/∏{p}[A005940(n+1), #])`
-/

namespace A348710.P4165459572158520016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (SequenceMachineLib.roundAway ((A005940 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ))).toNat

end

end A348710.P4165459572158520016

namespace A348710

/-- `A156552(A005940(n+1)/∏{p}[A005940(n+1), #])` -/
def P4165459572158520016.Spec : Prop :=
  ∀ n, P4165459572158520016.a n = A348710 n

end A348710

/-! ## A348710.P798478835633952532

`A156552(A003557(A005940(n+1)))`
-/

namespace A348710.P798478835633952532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A003557 (A005940 (n + 1)).toNat).toNat

end

end A348710.P798478835633952532

namespace A348710

/-- `A156552(A003557(A005940(n+1)))` -/
def P798478835633952532.Spec : Prop :=
  ∀ n, P798478835633952532.a n = A348710 n

end A348710

/-! ## A348710.P5575037345141168931

`A332816(A332815(n)/∏{p}[A332815(n), #])`
-/

namespace A348710.P5575037345141168931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332816 (SequenceMachineLib.roundAway ((A332815 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ))).toNat

end

end A348710.P5575037345141168931

namespace A348710

/-- `A332816(A332815(n)/∏{p}[A332815(n), #])` -/
def P5575037345141168931.Spec : Prop :=
  ∀ n, P5575037345141168931.a n = A348710 n

end A348710

/-! ## A348710.P10233474322647517764

`A292373(A129603(n))`
-/

namespace A348710.P10233474322647517764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A129603 n).toNat

end

end A348710.P10233474322647517764

namespace A348710

/-- `A292373(A129603(n))` -/
def P10233474322647517764.Spec : Prop :=
  ∀ n, P10233474322647517764.a n = A348710 n

end A348710

/-!
# A348711: Integers sorted by decreasing value of sigma(x)/x^2, where sigma is the sum of divisors.

The programs for A348711, there is no canonical definition to state claims against.
-/

/-! ## A348711.P1264536376750067409

`A178798(A240494(n))+A080997(n+1)`
-/

namespace A348711.P1264536376750067409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A240494 n).toNat + A080997 (n + 1)

end

end A348711.P1264536376750067409

/-! ## A348711.P2083092723108577806

`A080997(lt[A265071(n), A322078(3*(n+1))])`
-/

namespace A348711.P2083092723108577806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265071 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322078 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080997 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348711.P2083092723108577806

/-! ## A348711.P15425447406610038977

`A080997(lt[A246368(3*n+5), A162617(n)])`
-/

namespace A348711.P15425447406610038977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246368 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080997 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348711.P15425447406610038977

/-! ## A348711.P14744962994273789332

`A080997(lt[A246368(3*n+5), A162631(n)])`
-/

namespace A348711.P14744962994273789332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246368 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080997 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348711.P14744962994273789332

/-! ## A348711.P6989406351766136168

`A080997(lt[A246368(3*n+5), A007088(3*n)])`
-/

namespace A348711.P6989406351766136168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246368 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080997 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348711.P6989406351766136168

/-!
# A348713: Numbers whose divisors can be partitioned into two disjoint sets with equal arithmetic mean.

The programs for A348713, there is no canonical definition to state claims against.
-/

/-! ## A348713.P3848658692492759040

`A088723(lt[A088665(n+1), A088708(3*(n+1))])`
-/

namespace A348713.P3848658692492759040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088708 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088723 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348713.P3848658692492759040

/-! ## A348713.P770121021634888167

`filter[A066385(n+3), A179527(#)]`
-/

namespace A348713.P770121021634888167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066385 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A348713.P770121021634888167

/-! ## A348713.P16592946742163616972

`filter[A066385(n+3), A378540(#)]`
-/

namespace A348713.P16592946742163616972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066385 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378540 (f1 j).toNat = 1) n)

end

end A348713.P16592946742163616972

/-! ## A348713.P15651215581207232282

`filter[A028785(2*(n+1)), A179527(#)]`
-/

namespace A348713.P15651215581207232282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028785 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A348713.P15651215581207232282

/-!
# A348714: Numbers whose divisors can be partitioned into two disjoint sets with equal arithmetic mean in a record number of ways.

The programs for A348714, there is no canonical definition to state claims against.
-/

/-! ## A348714.P797132387597339769

`record[gcd(A275744(n+1), A275789(3*n+1))]`
-/

namespace A348714.P797132387597339769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A275744 (n + 1)) (A275789 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348714.P797132387597339769

/-! ## A348714.P2719426664931372920

`A329617(A213840(n+1)*A302796(2*n+1))`
-/

namespace A348714.P2719426664931372920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329617 (A213840 (n + 1) * A302796 (2 * n + 1)).toNat

end

end A348714.P2719426664931372920

/-!
# A348715: Numbers whose divisors can be partitioned into two disjoint sets without singletons whose harmonic means are both integers.

The programs for A348715, there is no canonical definition to state claims against.
-/

/-! ## A348715.P2348235803626119788

`∩[A175226(n+1), A362801(n+1)]`
-/

namespace A348715.P2348235803626119788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348715.P2348235803626119788

/-!
# A348716: Numbers whose divisors can be partitioned into two disjoint sets without singletons whose harmonic means are both integers in a record number of ways.

The programs for A348716, there is no canonical definition to state claims against.
-/

/-! ## A348716.P9080411077558535637

`record[A317312(A076269(2*n))]`
-/

namespace A348716.P9080411077558535637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317312 (A076269 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348716.P9080411077558535637

/-! ## A348716.P870260520795632179

`A175184(A175183(2*n+1)+A164998(n+1))`
-/

namespace A348716.P870260520795632179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175184 (A175183 (2 * n + 1) + A164998 (n + 1)).toNat

end

end A348716.P870260520795632179

/-!
# A348717: a(n) is the least k such that A003961^i(k) = n for some i >= 0 (where A003961^i denotes the i-th iterate of A003961).

The programs for A348717, the canonical program `A348717.P703712104273003584` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348717 has offset 1).

The definition of A348717 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A243074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348717.P17684490577075165642

`A005940(1+A322993(n+1))`
-/

namespace A348717.P17684490577075165642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + A322993 (n + 1)).toNat

end

end A348717.P17684490577075165642

namespace A348717

/-- `A005940(1+A322993(n+1))` -/
def P17684490577075165642.Spec : Prop :=
  ∀ n, P17684490577075165642.a n = A348717 (n + 1)

end A348717

/-! ## A348717.P703712104273003584

`A122111(A243074(A122111(n+1)))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A348717

/-- `A122111(A243074(A122111(n+1)))` -/
def P703712104273003584.Spec : Prop :=
  ∀ n, P703712104273003584.a n = A348717 (n + 1)

theorem P703712104273003584.correct : P703712104273003584.Spec := by
  intro n
  simp only [A348717, Nat.add_sub_cancel]

end A348717

/-! ## A348717.P5146703350987386971

`∑{d}[n+1, A354185(#)]`
-/

namespace A348717.P5146703350987386971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A354185 d

end

end A348717.P5146703350987386971

namespace A348717

/-- `∑{d}[n+1, A354185(#)]` -/
def P5146703350987386971.Spec : Prop :=
  ∀ n, P5146703350987386971.a n = A348717 (n + 1)

end A348717

/-! ## A348717.P2124100597660762837

`floor(2/acot(A246277(n+1)))`
-/

namespace A348717.P2124100597660762837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (A246277 (n + 1) : ℝ)⌋

end

end A348717.P2124100597660762837

namespace A348717

/-- `floor(2/acot(A246277(n+1)))` -/
def P2124100597660762837.Spec : Prop :=
  ∀ n, P2124100597660762837.a n = A348717 (n + 1)

end A348717

/-! ## A348717.P1441418747886070623

`A004277(A246277(n+1))`
-/

namespace A348717.P1441418747886070623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A246277 (n + 1)).toNat

end

end A348717.P1441418747886070623

namespace A348717

/-- `A004277(A246277(n+1))` -/
def P1441418747886070623.Spec : Prop :=
  ∀ n, P1441418747886070623.a n = A348717 (n + 1)

end A348717

/-! ## A348717.P13184117897327876450

`A004275(A305897(n+1))`
-/

namespace A348717.P13184117897327876450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A305897 (n + 1)).toNat

end

end A348717.P13184117897327876450

namespace A348717

/-- `A004275(A305897(n+1))` -/
def P13184117897327876450.Spec : Prop :=
  ∀ n, P13184117897327876450.a n = A348717 (n + 1)

end A348717

/-! ## A348717.P16413619617176806165

`A004275(A246277(n+1)+1)`
-/

namespace A348717.P16413619617176806165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A246277 (n + 1) + 1).toNat

end

end A348717.P16413619617176806165

namespace A348717

/-- `A004275(A246277(n+1)+1)` -/
def P16413619617176806165.Spec : Prop :=
  ∀ n, P16413619617176806165.a n = A348717 (n + 1)

end A348717

/-! ## A348717.P12068319474941624273

`A004277(A305897(n+1)-1)`
-/

namespace A348717.P12068319474941624273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A305897 (n + 1) - 1).toNat

end

end A348717.P12068319474941624273

namespace A348717

/-- `A004277(A305897(n+1)-1)` -/
def P12068319474941624273.Spec : Prop :=
  ∀ n, P12068319474941624273.a n = A348717 (n + 1)

end A348717

/-! ## A348717.P15911297861920524162

`A028310(2*A246277(n+1))`
-/

namespace A348717.P15911297861920524162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * A246277 (n + 1)).toNat

end

end A348717.P15911297861920524162

namespace A348717

/-- `A028310(2*A246277(n+1))` -/
def P15911297861920524162.Spec : Prop :=
  ∀ n, P15911297861920524162.a n = A348717 (n + 1)

end A348717

/-! ## A348717.P7527737130170189719

`A004280(A246277(n+1)+2)-1`
-/

namespace A348717.P7527737130170189719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A246277 (n + 1) + 2).toNat - 1

end

end A348717.P7527737130170189719

namespace A348717

/-- `A004280(A246277(n+1)+2)-1` -/
def P7527737130170189719.Spec : Prop :=
  ∀ n, P7527737130170189719.a n = A348717 (n + 1)

end A348717

/-! ## A348717.P13937257882819336199

`A028310(2*(A305897(n+1)-1))`
-/

namespace A348717.P13937257882819336199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * (A305897 (n + 1) - 1)).toNat

end

end A348717.P13937257882819336199

namespace A348717

/-- `A028310(2*(A305897(n+1)-1))` -/
def P13937257882819336199.Spec : Prop :=
  ∀ n, P13937257882819336199.a n = A348717 (n + 1)

end A348717

/-! ## A348717.P8570368239715248051

`A354187(n+1)-A354186(n+1)`
-/

namespace A348717.P8570368239715248051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354187 (n + 1) - A354186 (n + 1)

end

end A348717.P8570368239715248051

namespace A348717

/-- `A354187(n+1)-A354186(n+1)` -/
def P8570368239715248051.Spec : Prop :=
  ∀ n, P8570368239715248051.a n = A348717 (n + 1)

end A348717

/-! ## A348717.P2718318363040065923

`A000007(n)+2*A246277(n+1)`
-/

namespace A348717.P2718318363040065923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A246277 (n + 1)

end

end A348717.P2718318363040065923

namespace A348717

/-- `A000007(n)+2*A246277(n+1)` -/
def P2718318363040065923.Spec : Prop :=
  ∀ n, P2718318363040065923.a n = A348717 (n + 1)

end A348717

/-! ## A348717.P3406348670575921522

`a(A001285(n+1))*A246277(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A348717.P3406348670575921522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A001285 (n + 1)).toNat * A246277 (n + 1)

end

end A348717.P3406348670575921522

namespace A348717

/-- `a(A001285(n+1))*A246277(n+1)` -/
def P3406348670575921522.Spec : Prop :=
  ∀ n, P3406348670575921522.a n = A348717 (n + 1)

end A348717

/-! ## A348717.P7130768357644064590

`A246277(n+1)+A246277(A028310(n)+1)`
-/

namespace A348717.P7130768357644064590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1) + A246277 (A028310 n + 1).toNat

end

end A348717.P7130768357644064590

namespace A348717

/-- `A246277(n+1)+A246277(A028310(n)+1)` -/
def P7130768357644064590.Spec : Prop :=
  ∀ n, P7130768357644064590.a n = A348717 (n + 1)

end A348717

/-! ## A348717.P14915476053275683628

`A174296(a(A230595(n)))*A246277(n+1)` with `a(0)=1`
-/

namespace A348717.P14915476053275683628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A174296 (a (A230595 n).toNat).toNat * A246277 (n + 1)

end

end A348717.P14915476053275683628

namespace A348717

/-- `A174296(a(A230595(n)))*A246277(n+1)` -/
def P14915476053275683628.Spec : Prop :=
  ∀ n, P14915476053275683628.a n = A348717 (n + 1)

end A348717

/-! ## A348717.P626724515133470783

`A174296(a(A246277(n)))*A246277(n+1)` with `a(0)=1`
-/

namespace A348717.P626724515133470783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A174296 (a (A246277 n).toNat).toNat * A246277 (n + 1)

end

end A348717.P626724515133470783

namespace A348717

/-- `A174296(a(A246277(n)))*A246277(n+1)` -/
def P626724515133470783.Spec : Prop :=
  ∀ n, P626724515133470783.a n = A348717 (n + 1)

end A348717

/-! ## A348717.P2016813905746133909

`A028310(A305897(n+1)+A305897(n+1)-2)`
-/

namespace A348717.P2016813905746133909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A305897 (n + 1) + (A305897 (n + 1) - 2)).toNat

end

end A348717.P2016813905746133909

namespace A348717

/-- `A028310(A305897(n+1)+A305897(n+1)-2)` -/
def P2016813905746133909.Spec : Prop :=
  ∀ n, P2016813905746133909.a n = A348717 (n + 1)

end A348717

/-! ## A348717.P17233253308475678315

`2*A305897(n+1)-A305897(A020639(n+1))`
-/

namespace A348717.P17233253308475678315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305897 (n + 1) - A305897 (A020639 (n + 1)).toNat

end

end A348717.P17233253308475678315

namespace A348717

/-- `2*A305897(n+1)-A305897(A020639(n+1))` -/
def P17233253308475678315.Spec : Prop :=
  ∀ n, P17233253308475678315.a n = A348717 (n + 1)

end A348717

/-! ## A348717.P4844990918537303109

`A246277(n+1)+A065033(2*A246277(n+1))`
-/

namespace A348717.P4844990918537303109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1) + A065033 (2 * A246277 (n + 1)).toNat

end

end A348717.P4844990918537303109

namespace A348717

/-- `A246277(n+1)+A065033(2*A246277(n+1))` -/
def P4844990918537303109.Spec : Prop :=
  ∀ n, P4844990918537303109.a n = A348717 (n + 1)

end A348717

/-!
# A348718: Numbers whose divisors can be partitioned into two disjoint sets without singletons whose arithmetic means are both integers.

The programs for A348718, the canonical program `A348718.P13129507020992002109` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348718 has offset 1).

The definition of A348718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348718.P7923026551600007062

`lt[A317934(2*(n+1)), A160135(n+1)]+1`
-/

namespace A348718.P7923026551600007062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317934 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160135 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A348718.P7923026551600007062

namespace A348718

/-- `lt[A317934(2*(n+1)), A160135(n+1)]+1` -/
def P7923026551600007062.Spec : Prop :=
  ∀ n, (P7923026551600007062.a n : ℤ) = A348718 (n + 1)

end A348718

/-! ## A348718.P13129507020992002109

`lt[A000122(2*n), A291379(A032741(n))]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A348718

/-- `lt[A000122(2*n), A291379(A032741(n))]` -/
def P13129507020992002109.Spec : Prop :=
  ∀ n, (P13129507020992002109.a n : ℤ) = A348718 (n + 1)

theorem P13129507020992002109.correct : P13129507020992002109.Spec := by
  intro n
  simp only [A348718, Nat.add_sub_cancel]

end A348718

/-! ## A348718.P8417925721644287806

`lt[7, A322400(A373982(n))]`
-/

namespace A348718.P8417925721644287806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322400 (A373982 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348718.P8417925721644287806

namespace A348718

/-- `lt[7, A322400(A373982(n))]` -/
def P8417925721644287806.Spec : Prop :=
  ∀ n, (P8417925721644287806.a n : ℤ) = A348718 (n + 1)

end A348718

/-! ## A348718.P8395260366689685299

`lt[A299274(A014963(n+1)), n+1]+1`
-/

namespace A348718.P8395260366689685299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299274 (A014963 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A348718.P8395260366689685299

namespace A348718

/-- `lt[A299274(A014963(n+1)), n+1]+1` -/
def P8395260366689685299.Spec : Prop :=
  ∀ n, (P8395260366689685299.a n : ℤ) = A348718 (n + 1)

end A348718

/-! ## A348718.P3563756499630762585

`lt[A133907(A246037(n)), A074206(n)]`
-/

namespace A348718.P3563756499630762585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133907 (A246037 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348718.P3563756499630762585

namespace A348718

/-- `lt[A133907(A246037(n)), A074206(n)]` -/
def P3563756499630762585.Spec : Prop :=
  ∀ n, (P3563756499630762585.a n : ℤ) = A348718 (n + 1)

end A348718

/-! ## A348718.P4463856680010134671

`lt[A133907(A246037(n)), A104725(n)]`
-/

namespace A348718.P4463856680010134671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133907 (A246037 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348718.P4463856680010134671

namespace A348718

/-- `lt[A133907(A246037(n)), A104725(n)]` -/
def P4463856680010134671.Spec : Prop :=
  ∀ n, (P4463856680010134671.a n : ℤ) = A348718 (n + 1)

end A348718

/-! ## A348718.P8208141752148280091

`lt[A133907(A246037(n)), A143862(n)]`
-/

namespace A348718.P8208141752148280091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133907 (A246037 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348718.P8208141752148280091

namespace A348718

/-- `lt[A133907(A246037(n)), A143862(n)]` -/
def P8208141752148280091.Spec : Prop :=
  ∀ n, (P8208141752148280091.a n : ℤ) = A348718 (n + 1)

end A348718

/-! ## A348718.P18051197548697651282

`lt[A000120(A133832(2*n+3)), A143862(n)]`
-/

namespace A348718.P18051197548697651282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A133832 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348718.P18051197548697651282

namespace A348718

/-- `lt[A000120(A133832(2*n+3)), A143862(n)]` -/
def P18051197548697651282.Spec : Prop :=
  ∀ n, (P18051197548697651282.a n : ℤ) = A348718 (n + 1)

end A348718

/-! ## A348718.P10029959895080512250

`lt[2, A328396(A143862(n))]`
-/

namespace A348718.P10029959895080512250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328396 (A143862 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348718.P10029959895080512250

namespace A348718

/-- `lt[2, A328396(A143862(n))]` -/
def P10029959895080512250.Spec : Prop :=
  ∀ n, (P10029959895080512250.a n : ℤ) = A348718 (n + 1)

end A348718

/-! ## A348718.P6601870128576322169

`lt[A303579(A028326(n)), A032741(n)]`
-/

namespace A348718.P6601870128576322169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303579 (A028326 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348718.P6601870128576322169

namespace A348718

/-- `lt[A303579(A028326(n)), A032741(n)]` -/
def P6601870128576322169.Spec : Prop :=
  ∀ n, (P6601870128576322169.a n : ℤ) = A348718 (n + 1)

end A348718

/-!
# A348719: Numbers k delivering the records in the number of partitions of divisors of k into two sets of size > 1 with an integer arithmetic mean in each set.

The programs for A348719, there is no canonical definition to state claims against.
-/

/-! ## A348719.P9459505608176629016

`lt[A180101(A299997(n+1)), A028360(n)]`
-/

namespace A348719.P9459505608176629016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A299997 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028360 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348719.P9459505608176629016

/-! ## A348719.P594873698643127672

`lt[A345913(A345965(n+1)), A345949(n+1)]+1`
-/

namespace A348719.P594873698643127672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (A345965 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345949 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A348719.P594873698643127672

/-! ## A348719.P6182724469817209055

`A373676(lt[A219607(n), A001285(n)])`
-/

namespace A348719.P6182724469817209055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219607 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373676 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348719.P6182724469817209055

/-! ## A348719.P14708838588831851967

`A166744(n+1)-A153881(A226035(n+1))`
-/

namespace A348719.P14708838588831851967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166744 (n + 1) - A153881 (A226035 (n + 1)).toNat

end

end A348719.P14708838588831851967

/-! ## A348719.P11610528662298787436

`A166744(n+1)-A166698(A166752(2*n))`
-/

namespace A348719.P11610528662298787436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166744 (n + 1) - A166698 (A166752 (2 * n)).toNat

end

end A348719.P11610528662298787436

/-!
# A348730: Largest remainder of an n-digit number when divided by its sum of digits.

The programs for A348730, there is no canonical definition to state claims against.
-/

/-! ## A348730.P14444831869726440315

`A348894(n+1)%∑{digits}[A348894(n+1), #]`
-/

namespace A348730.P14444831869726440315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348894 (n + 1)) ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A348730.P14444831869726440315

/-! ## A348730.P1389572941709039

`A348895(n+1)%∑{digits}[A348895(n+1), #]`
-/

namespace A348730.P1389572941709039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348895 (n + 1)) ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A348730.P1389572941709039

/-!
# A348732: a(n) = A003959(n) - A034448(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and A034448 (usigma) is multiplicative with a(p^e) = (p^e)+1.

The programs for A348732, the canonical program `A348732.P348791247222302933` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348732 has offset 1).

The definition of A348732 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348732.P3643346119322021991

`A048146(n+1)+A348029(n+1)`
-/

namespace A348732.P3643346119322021991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1) + A348029 (n + 1)

end

end A348732.P3643346119322021991

namespace A348732

/-- `A048146(n+1)+A348029(n+1)` -/
def P3643346119322021991.Spec : Prop :=
  ∀ n, P3643346119322021991.a n = A348732 (n + 1)

theorem P3643346119322021991.correct : P3643346119322021991.Spec := by
  intro n
  simp only [A348732, Nat.add_sub_cancel, A348732.P3643346119322021991.a, A348732.P348791247222302933.a, A003959, A003959.P10480308691352807012.f1, A003959.P10480308691352807012.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A348029, A348029.P15301953817482989203.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003968, A003968.P10961526323602588276.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A001615, A001615.P12078511981713404634.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A014963, A014963.P5975177236000282614.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348732

/-! ## A348732.P348791247222302933

`A003959(n+1)-A034448(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A348732

/-- `A003959(n+1)-A034448(n+1)` -/
def P348791247222302933.Spec : Prop :=
  ∀ n, P348791247222302933.a n = A348732 (n + 1)

theorem P348791247222302933.correct : P348791247222302933.Spec := by
  intro n
  simp only [A348732, Nat.add_sub_cancel]

end A348732

/-! ## A348732.P6351027104610279338

`A348507(n+1)-A034460(n+1)`
-/

namespace A348732.P6351027104610279338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (n + 1) - A034460 (n + 1)

end

end A348732.P6351027104610279338

namespace A348732

/-- `A348507(n+1)-A034460(n+1)` -/
def P6351027104610279338.Spec : Prop :=
  ∀ n, P6351027104610279338.a n = A348732 (n + 1)

theorem P6351027104610279338.correct : P6351027104610279338.Spec := by
  intro n
  simp only [A348732, Nat.add_sub_cancel, A348732.P6351027104610279338.a, A348732.P348791247222302933.a, A003959, A003959.P10480308691352807012.f1, A003959.P10480308691352807012.a, A034448, A034448.P17017727775393200719.a, A034460, A034460.P1958235575820581513.a, A348507, A348507.P8468116905144779811.a, A003968, A003968.P10961526323602588276.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A001615, A001615.P12078511981713404634.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, A379812, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A014963, A014963.P5975177236000282614.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348732

/-! ## A348732.P8960908313295686408

`A348508(n+1)-A129468(n+1)`
-/

namespace A348732.P8960908313295686408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348508 (n + 1) - A129468 (n + 1)

end

end A348732.P8960908313295686408

namespace A348732

/-- `A348508(n+1)-A129468(n+1)` -/
def P8960908313295686408.Spec : Prop :=
  ∀ n, P8960908313295686408.a n = A348732 (n + 1)

theorem P8960908313295686408.correct : P8960908313295686408.Spec := by
  intro n
  simp only [A348732, Nat.add_sub_cancel, A348732.P8960908313295686408.a, A348732.P348791247222302933.a, A003959, A003959.P10480308691352807012.f1, A003959.P10480308691352807012.a, A034448, A034448.P17017727775393200719.a, A129468, A129468.P11362039589036067826.a, A348508, A348508.P7080885370460745572.a, A003968, A003968.P10961526323602588276.a, A034460, A034460.P1958235575820581513.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A001615, A001615.P12078511981713404634.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, A379812, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A014963, A014963.P5975177236000282614.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348732

/-! ## A348732.P8119921130263267212

`A003959(n+1)-(A345451(n+1)+1)`
-/

namespace A348732.P8119921130263267212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - (A345451 (n + 1) + 1)

end

end A348732.P8119921130263267212

namespace A348732

/-- `A003959(n+1)-(A345451(n+1)+1)` -/
def P8119921130263267212.Spec : Prop :=
  ∀ n, P8119921130263267212.a n = A348732 (n + 1)

theorem P8119921130263267212.correct : P8119921130263267212.Spec := by
  intro n
  simp only [A348732, Nat.add_sub_cancel, A348732.P8119921130263267212.a, A348732.P348791247222302933.a, A003959, A003959.P10480308691352807012.f1, A003959.P10480308691352807012.a, A034448, A034448.P17017727775393200719.a, A345451, A345451.P7254326500789221208.a, A003968, A003968.P10961526323602588276.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A001615, A001615.P12078511981713404634.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, A379812, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A014963, A014963.P5975177236000282614.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348732

/-! ## A348732.P15665799142339686317

`2*(A348945(n+1)+A048146(n+1))`
-/

namespace A348732.P15665799142339686317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A348945 (n + 1) + A048146 (n + 1))

end

end A348732.P15665799142339686317

namespace A348732

/-- `2*(A348945(n+1)+A048146(n+1))` -/
def P15665799142339686317.Spec : Prop :=
  ∀ n, P15665799142339686317.a n = A348732 (n + 1)

end A348732

/-! ## A348732.P9448686923886964519

`2*(A003959(n+1)-A348944(n+1))`
-/

namespace A348732.P9448686923886964519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003959 (n + 1) - A348944 (n + 1))

end

end A348732.P9448686923886964519

namespace A348732

/-- `2*(A003959(n+1)-A348944(n+1))` -/
def P9448686923886964519.Spec : Prop :=
  ∀ n, P9448686923886964519.a n = A348732 (n + 1)

end A348732

/-! ## A348732.P9823810533666673191

`2*(A348944(n+1)-A034448(n+1))`
-/

namespace A348732.P9823810533666673191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A348944 (n + 1) - A034448 (n + 1))

end

end A348732.P9823810533666673191

namespace A348732

/-- `2*(A348944(n+1)-A034448(n+1))` -/
def P9823810533666673191.Spec : Prop :=
  ∀ n, P9823810533666673191.a n = A348732 (n + 1)

end A348732

/-! ## A348732.P11293414044216441582

`2*(A348029(n+1)-A348945(n+1))`
-/

namespace A348732.P11293414044216441582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A348029 (n + 1) - A348945 (n + 1))

end

end A348732.P11293414044216441582

namespace A348732

/-- `2*(A348029(n+1)-A348945(n+1))` -/
def P11293414044216441582.Spec : Prop :=
  ∀ n, P11293414044216441582.a n = A348732 (n + 1)

end A348732

/-! ## A348732.P13497775547455584392

`A003959(n+1)+A048146(n+1)-A000203(n+1)`
-/

namespace A348732.P13497775547455584392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) + (A048146 (n + 1) - A000203 (n + 1))

end

end A348732.P13497775547455584392

namespace A348732

/-- `A003959(n+1)+A048146(n+1)-A000203(n+1)` -/
def P13497775547455584392.Spec : Prop :=
  ∀ n, P13497775547455584392.a n = A348732 (n + 1)

theorem P13497775547455584392.correct : P13497775547455584392.Spec := by
  intro n
  simp only [A348732, Nat.add_sub_cancel, A348732.P13497775547455584392.a, A348732.P348791247222302933.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003959, A003959.P10480308691352807012.f1, A003959.P10480308691352807012.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A003968, A003968.P10961526323602588276.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A001615, A001615.P12078511981713404634.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A014963, A014963.P5975177236000282614.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348732

/-! ## A348732.P5709253054002864309

`A000203(n+1)+A348029(n+1)-A034448(n+1)`
-/

namespace A348732.P5709253054002864309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A348029 (n + 1) - A034448 (n + 1))

end

end A348732.P5709253054002864309

namespace A348732

/-- `A000203(n+1)+A348029(n+1)-A034448(n+1)` -/
def P5709253054002864309.Spec : Prop :=
  ∀ n, P5709253054002864309.a n = A348732 (n + 1)

theorem P5709253054002864309.correct : P5709253054002864309.Spec := by
  intro n
  simp only [A348732, Nat.add_sub_cancel, A348732.P5709253054002864309.a, A348732.P348791247222302933.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003959, A003959.P10480308691352807012.f1, A003959.P10480308691352807012.a, A034448, A034448.P17017727775393200719.a, A348029, A348029.P15301953817482989203.a, A003968, A003968.P10961526323602588276.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A001615, A001615.P12078511981713404634.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A014963, A014963.P5975177236000282614.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348732

/-! ## A348732.P11458296299573833139

`A003959(n+1)-A348733(n+1)*A348735(n+1)`
-/

namespace A348732.P11458296299573833139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - A348733 (n + 1) * A348735 (n + 1)

end

end A348732.P11458296299573833139

namespace A348732

/-- `A003959(n+1)-A348733(n+1)*A348735(n+1)` -/
def P11458296299573833139.Spec : Prop :=
  ∀ n, P11458296299573833139.a n = A348732 (n + 1)

end A348732

/-! ## A348732.P12034383112630592692

`A348733(n+1)*A348734(n+1)-A034448(n+1)`
-/

namespace A348732.P12034383112630592692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348733 (n + 1) * A348734 (n + 1) - A034448 (n + 1)

end

end A348732.P12034383112630592692

namespace A348732

/-- `A348733(n+1)*A348734(n+1)-A034448(n+1)` -/
def P12034383112630592692.Spec : Prop :=
  ∀ n, P12034383112630592692.a n = A348732 (n + 1)

end A348732

/-! ## A348732.P1183132848964706259

`(A348734(n+1)-A348735(n+1))*A348733(n+1)`
-/

namespace A348732.P1183132848964706259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348734 (n + 1) - A348735 (n + 1)) * A348733 (n + 1)

end

end A348732.P1183132848964706259

namespace A348732

/-- `(A348734(n+1)-A348735(n+1))*A348733(n+1)` -/
def P1183132848964706259.Spec : Prop :=
  ∀ n, P1183132848964706259.a n = A348732 (n + 1)

end A348732

/-!
# A348733: a(n) = gcd(A003959(n), A034448(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and A034448 (usigma) is multiplicative with a(p^e) = (p^e)+1.

The programs for A348733, the canonical program `A348733.P387886665287851790` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348733 has offset 1).

The definition of A348733 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348733.P2541153226506879543

`A003959(n+1)/A348734(n+1)`
-/

namespace A348733.P2541153226506879543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A348734 (n + 1) : ℚ)

end

end A348733.P2541153226506879543

namespace A348733

/-- `A003959(n+1)/A348734(n+1)` -/
def P2541153226506879543.Spec : Prop :=
  ∀ n, P2541153226506879543.a n = (A348733 (n + 1) : ℚ)

end A348733

/-! ## A348733.P5130037608943782432

`A034448(n+1)/A348735(n+1)`
-/

namespace A348733.P5130037608943782432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A348735 (n + 1) : ℚ)

end

end A348733.P5130037608943782432

namespace A348733

/-- `A034448(n+1)/A348735(n+1)` -/
def P5130037608943782432.Spec : Prop :=
  ∀ n, P5130037608943782432.a n = (A348733 (n + 1) : ℚ)

end A348733

/-! ## A348733.P387886665287851790

`gcd(A003959(n+1), A034448(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A348733

/-- `gcd(A003959(n+1), A034448(n+1))` -/
def P387886665287851790.Spec : Prop :=
  ∀ n, (P387886665287851790.a n : ℤ) = A348733 (n + 1)

theorem P387886665287851790.correct : P387886665287851790.Spec := by
  intro n
  simp only [A348733, Nat.add_sub_cancel]

end A348733

/-! ## A348733.P3039505403030522355

`(A345451(n+1)+1)/A348735(n+1)`
-/

namespace A348733.P3039505403030522355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345451 (n + 1) + 1 : ℚ) / (A348735 (n + 1) : ℚ)

end

end A348733.P3039505403030522355

namespace A348733

/-- `(A345451(n+1)+1)/A348735(n+1)` -/
def P3039505403030522355.Spec : Prop :=
  ∀ n, P3039505403030522355.a n = (A348733 (n + 1) : ℚ)

end A348733

/-! ## A348733.P5363432683984272559

`(A034460(n+1)+1+n)/A348735(n+1)`
-/

namespace A348733.P5363432683984272559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034460 (n + 1) + 1 + (n : ℤ) : ℚ) / (A348735 (n + 1) : ℚ)

end

end A348733.P5363432683984272559

namespace A348733

/-- `(A034460(n+1)+1+n)/A348735(n+1)` -/
def P5363432683984272559.Spec : Prop :=
  ∀ n, P5363432683984272559.a n = (A348733 (n + 1) : ℚ)

end A348733

/-! ## A348733.P15091638190346457334

`gcd(A034448(A000027(n+1)), A166642(n+1))`
-/

namespace A348733.P15091638190346457334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034448 (A000027 (n + 1)).toNat) (A166642 (n + 1))

end

end A348733.P15091638190346457334

namespace A348733

/-- `gcd(A034448(A000027(n+1)), A166642(n+1))` -/
def P15091638190346457334.Spec : Prop :=
  ∀ n, (P15091638190346457334.a n : ℤ) = A348733 (n + 1)

end A348733

/-! ## A348733.P9595625288930514798

`gcd(A003959(A000027(n+1)), A348732(n+1))`
-/

namespace A348733.P9595625288930514798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003959 (A000027 (n + 1)).toNat) (A348732 (n + 1))

end

end A348733.P9595625288930514798

namespace A348733

/-- `gcd(A003959(A000027(n+1)), A348732(n+1))` -/
def P9595625288930514798.Spec : Prop :=
  ∀ n, (P9595625288930514798.a n : ℤ) = A348733 (n + 1)

end A348733

/-! ## A348733.P5622317423263721695

`(A348732(n+1)+A034448(n+1))/A348734(n+1)`
-/

namespace A348733.P5622317423263721695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348732 (n + 1) + A034448 (n + 1) : ℚ) / (A348734 (n + 1) : ℚ)

end

end A348733.P5622317423263721695

namespace A348733

/-- `(A348732(n+1)+A034448(n+1))/A348734(n+1)` -/
def P5622317423263721695.Spec : Prop :=
  ∀ n, P5622317423263721695.a n = (A348733 (n + 1) : ℚ)

end A348733

/-! ## A348733.P8823453130627138070

`(A000203(n+1)-A048146(n+1))/A348735(n+1)`
-/

namespace A348733.P8823453130627138070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A048146 (n + 1) : ℚ) / (A348735 (n + 1) : ℚ)

end

end A348733.P8823453130627138070

namespace A348733

/-- `(A000203(n+1)-A048146(n+1))/A348735(n+1)` -/
def P8823453130627138070.Spec : Prop :=
  ∀ n, P8823453130627138070.a n = (A348733 (n + 1) : ℚ)

end A348733

/-! ## A348733.P3107447574332535344

`A167344(n+1)/(A003958(n+1)*A348734(n+1))`
-/

namespace A348733.P3107447574332535344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167344 (n + 1) : ℚ) / (A003958 (n + 1) * A348734 (n + 1) : ℚ)

end

end A348733.P3107447574332535344

namespace A348733

/-- `A167344(n+1)/(A003958(n+1)*A348734(n+1))` -/
def P3107447574332535344.Spec : Prop :=
  ∀ n, P3107447574332535344.a n = (A348733 (n + 1) : ℚ)

end A348733

/-! ## A348733.P14476857957774640572

`A348503(n+1)*A348505(n+1)/A348735(n+1)`
-/

namespace A348733.P14476857957774640572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348503 (n + 1) * A348505 (n + 1) : ℚ) / (A348735 (n + 1) : ℚ)

end

end A348733.P14476857957774640572

namespace A348733

/-- `A348503(n+1)*A348505(n+1)/A348735(n+1)` -/
def P14476857957774640572.Spec : Prop :=
  ∀ n, P14476857957774640572.a n = (A348733 (n + 1) : ℚ)

end A348733

/-! ## A348733.P6346749646449470687

`abs(A048146(n+1)-A245092(2*n+1))/A348735(n+1)`
-/

namespace A348733.P6346749646449470687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A048146 (n + 1) - A245092 (2 * n + 1)| : ℚ) / (A348735 (n + 1) : ℚ)

end

end A348733.P6346749646449470687

namespace A348733

/-- `abs(A048146(n+1)-A245092(2*n+1))/A348735(n+1)` -/
def P6346749646449470687.Spec : Prop :=
  ∀ n, P6346749646449470687.a n = (A348733 (n + 1) : ℚ)

end A348733

/-! ## A348733.P16827203630004429512

`(A001065(n+1)+1+n-A048146(n+1))/A348735(n+1)`
-/

namespace A348733.P16827203630004429512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + 1 + (n : ℤ) - A048146 (n + 1) : ℚ) / (A348735 (n + 1) : ℚ)

end

end A348733.P16827203630004429512

namespace A348733

/-- `(A001065(n+1)+1+n-A048146(n+1))/A348735(n+1)` -/
def P16827203630004429512.Spec : Prop :=
  ∀ n, P16827203630004429512.a n = (A348733 (n + 1) : ℚ)

end A348733

/-! ## A348733.P13376216406177045751

`abs(A048146(n+1)-A064987(n+1)/(n+1))/A348735(n+1)`
-/

namespace A348733.P13376216406177045751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A048146 (n + 1) : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ)| / (A348735 (n + 1) : ℚ)

end

end A348733.P13376216406177045751

namespace A348733

/-- `abs(A048146(n+1)-A064987(n+1)/(n+1))/A348735(n+1)` -/
def P13376216406177045751.Spec : Prop :=
  ∀ n, P13376216406177045751.a n = (A348733 (n + 1) : ℚ)

end A348733

/-! ## A348733.P11822395149267426079

`(A051612(n+1)+A000010(n+1)-A048146(n+1))/A348735(n+1)`
-/

namespace A348733.P11822395149267426079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051612 (n + 1) + A000010 (n + 1) - A048146 (n + 1) : ℚ) / (A348735 (n + 1) : ℚ)

end

end A348733.P11822395149267426079

namespace A348733

/-- `(A051612(n+1)+A000010(n+1)-A048146(n+1))/A348735(n+1)` -/
def P11822395149267426079.Spec : Prop :=
  ∀ n, P11822395149267426079.a n = (A348733 (n + 1) : ℚ)

end A348733

/-!
# A348734: Numerator of Product((p+1)^e / ((p^e)+1)), when n = Product(p^e), with p primes, and e their exponents.

The programs for A348734, the canonical program `A348734.P10246028385959226632` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348734 has offset 1).

The definition of A348734 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348734.P10246028385959226632

`A003959(n+1)/gcd(A003959(n+1), A034448(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A348734

/-- `A003959(n+1)/gcd(A003959(n+1), A034448(n+1))` -/
def P10246028385959226632.Spec : Prop :=
  ∀ n, P10246028385959226632.a n = (A348734 (n + 1) : ℚ)

end A348734

/-! ## A348734.P11644484139759931967

`A003959(n+1)/A348733(n+1)`
-/

namespace A348734.P11644484139759931967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A348733 (n + 1) : ℚ)

end

end A348734.P11644484139759931967

namespace A348734

/-- `A003959(n+1)/A348733(n+1)` -/
def P11644484139759931967.Spec : Prop :=
  ∀ n, P11644484139759931967.a n = (A348734 (n + 1) : ℚ)

end A348734

/-! ## A348734.P7167082021873270394

`(A348507(n+1)+n+1)/A348733(n+1)`
-/

namespace A348734.P7167082021873270394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348507 (n + 1) + (n + 1 : ℤ) : ℚ) / (A348733 (n + 1) : ℚ)

end

end A348734.P7167082021873270394

namespace A348734

/-- `(A348507(n+1)+n+1)/A348733(n+1)` -/
def P7167082021873270394.Spec : Prop :=
  ∀ n, P7167082021873270394.a n = (A348734 (n + 1) : ℚ)

end A348734

/-! ## A348734.P16602931201782354127

`(A348732(n+1)+A034448(n+1))/A348733(n+1)`
-/

namespace A348734.P16602931201782354127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348732 (n + 1) + A034448 (n + 1) : ℚ) / (A348733 (n + 1) : ℚ)

end

end A348734.P16602931201782354127

namespace A348734

/-- `(A348732(n+1)+A034448(n+1))/A348733(n+1)` -/
def P16602931201782354127.Spec : Prop :=
  ∀ n, P16602931201782354127.a n = (A348734 (n + 1) : ℚ)

end A348734

/-! ## A348734.P15966810755726260214

`A348735(n+1)+A348732(n+1)/A348733(n+1)`
-/

namespace A348734.P15966810755726260214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348735 (n + 1) : ℚ) + (A348732 (n + 1) : ℚ) / (A348733 (n + 1) : ℚ)

end

end A348734.P15966810755726260214

namespace A348734

/-- `A348735(n+1)+A348732(n+1)/A348733(n+1)` -/
def P15966810755726260214.Spec : Prop :=
  ∀ n, P15966810755726260214.a n = (A348734 (n + 1) : ℚ)

end A348734

/-! ## A348734.P3975537886744387138

`A003959(n+1)/A034448(n+1)*A348735(n+1)`
-/

namespace A348734.P3975537886744387138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A034448 (n + 1) : ℚ) * (A348735 (n + 1) : ℚ)

end

end A348734.P3975537886744387138

namespace A348734

/-- `A003959(n+1)/A034448(n+1)*A348735(n+1)` -/
def P3975537886744387138.Spec : Prop :=
  ∀ n, P3975537886744387138.a n = (A348734 (n + 1) : ℚ)

end A348734

/-! ## A348734.P14677179032487946437

`A348047(n+1)*A348049(n+1)/A348733(n+1)`
-/

namespace A348734.P14677179032487946437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348047 (n + 1) * A348049 (n + 1) : ℚ) / (A348733 (n + 1) : ℚ)

end

end A348734.P14677179032487946437

namespace A348734

/-- `A348047(n+1)*A348049(n+1)/A348733(n+1)` -/
def P14677179032487946437.Spec : Prop :=
  ∀ n, P14677179032487946437.a n = (A348734 (n + 1) : ℚ)

end A348734

/-!
# A348735: Denominator of Product((p+1)^e / ((p^e)+1)), when n = Product(p^e), with p primes, and e their exponents.

The programs for A348735, the canonical program `A348735.P6706420976582116243` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348735 has offset 1).

The definition of A348735 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A348733, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348735.P6706420976582116243

`A034448(n+1)/A348733(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A348735

/-- `A034448(n+1)/A348733(n+1)` -/
def P6706420976582116243.Spec : Prop :=
  ∀ n, P6706420976582116243.a n = (A348735 (n + 1) : ℚ)

end A348735

/-! ## A348735.P13236952986402773597

`A034448(n+1)/gcd(A003959(n+1), A034448(n+1))`
-/

namespace A348735.P13236952986402773597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (Int.gcd (A003959 (n + 1)) (A034448 (n + 1)) : ℚ)

end

end A348735.P13236952986402773597

namespace A348735

/-- `A034448(n+1)/gcd(A003959(n+1), A034448(n+1))` -/
def P13236952986402773597.Spec : Prop :=
  ∀ n, P13236952986402773597.a n = (A348735 (n + 1) : ℚ)

end A348735

/-! ## A348735.P5022593611595856626

`A038502(A389074(n+1))`
-/

namespace A348735.P5022593611595856626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A389074 (n + 1)).toNat

end

end A348735.P5022593611595856626

namespace A348735

/-- `A038502(A389074(n+1))` -/
def P5022593611595856626.Spec : Prop :=
  ∀ n, P5022593611595856626.a n = A348735 (n + 1)

end A348735

/-! ## A348735.P17791718217129371884

`(A345451(n+1)+1)/A348733(n+1)`
-/

namespace A348735.P17791718217129371884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345451 (n + 1) + 1 : ℚ) / (A348733 (n + 1) : ℚ)

end

end A348735.P17791718217129371884

namespace A348735

/-- `(A345451(n+1)+1)/A348733(n+1)` -/
def P17791718217129371884.Spec : Prop :=
  ∀ n, P17791718217129371884.a n = (A348735 (n + 1) : ℚ)

end A348735

/-! ## A348735.P5126649252230746524

`(A034460(n+1)+1+n)/A348733(n+1)`
-/

namespace A348735.P5126649252230746524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034460 (n + 1) + 1 + (n : ℤ) : ℚ) / (A348733 (n + 1) : ℚ)

end

end A348735.P5126649252230746524

namespace A348735

/-- `(A034460(n+1)+1+n)/A348733(n+1)` -/
def P5126649252230746524.Spec : Prop :=
  ∀ n, P5126649252230746524.a n = (A348735 (n + 1) : ℚ)

end A348735

/-! ## A348735.P11640215077880792237

`(A000203(n+1)-A048146(n+1))/A348733(n+1)`
-/

namespace A348735.P11640215077880792237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A048146 (n + 1) : ℚ) / (A348733 (n + 1) : ℚ)

end

end A348735.P11640215077880792237

namespace A348735

/-- `(A000203(n+1)-A048146(n+1))/A348733(n+1)` -/
def P11640215077880792237.Spec : Prop :=
  ∀ n, P11640215077880792237.a n = (A348735 (n + 1) : ℚ)

end A348735

/-! ## A348735.P12436280939596201032

`(A003959(n+1)-A348732(n+1))/A348733(n+1)`
-/

namespace A348735.P12436280939596201032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) - A348732 (n + 1) : ℚ) / (A348733 (n + 1) : ℚ)

end

end A348735.P12436280939596201032

namespace A348735

/-- `(A003959(n+1)-A348732(n+1))/A348733(n+1)` -/
def P12436280939596201032.Spec : Prop :=
  ∀ n, P12436280939596201032.a n = (A348735 (n + 1) : ℚ)

end A348735

/-! ## A348735.P11791076866307266393

`A348734(n+1)-A348732(n+1)/A348733(n+1)`
-/

namespace A348735.P11791076866307266393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348734 (n + 1) : ℚ) - (A348732 (n + 1) : ℚ) / (A348733 (n + 1) : ℚ)

end

end A348735.P11791076866307266393

namespace A348735

/-- `A348734(n+1)-A348732(n+1)/A348733(n+1)` -/
def P11791076866307266393.Spec : Prop :=
  ∀ n, P11791076866307266393.a n = (A348735 (n + 1) : ℚ)

end A348735

/-! ## A348735.P12182653176824133604

`A034448(n+1)/A003959(n+1)*A348734(n+1)`
-/

namespace A348735.P12182653176824133604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A348734 (n + 1) : ℚ)

end

end A348735.P12182653176824133604

namespace A348735

/-- `A034448(n+1)/A003959(n+1)*A348734(n+1)` -/
def P12182653176824133604.Spec : Prop :=
  ∀ n, P12182653176824133604.a n = (A348735 (n + 1) : ℚ)

end A348735

/-! ## A348735.P3527179881662410807

`A348503(n+1)*A348505(n+1)/A348733(n+1)`
-/

namespace A348735.P3527179881662410807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348503 (n + 1) * A348505 (n + 1) : ℚ) / (A348733 (n + 1) : ℚ)

end

end A348735.P3527179881662410807

namespace A348735

/-- `A348503(n+1)*A348505(n+1)/A348733(n+1)` -/
def P3527179881662410807.Spec : Prop :=
  ∀ n, P3527179881662410807.a n = (A348735 (n + 1) : ℚ)

end A348735

/-! ## A348735.P11661360999099112562

`abs(A048146(n+1)-A245092(2*n+1))/A348733(n+1)`
-/

namespace A348735.P11661360999099112562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A048146 (n + 1) - A245092 (2 * n + 1)| : ℚ) / (A348733 (n + 1) : ℚ)

end

end A348735.P11661360999099112562

namespace A348735

/-- `abs(A048146(n+1)-A245092(2*n+1))/A348733(n+1)` -/
def P11661360999099112562.Spec : Prop :=
  ∀ n, P11661360999099112562.a n = (A348735 (n + 1) : ℚ)

end A348735

/-! ## A348735.P12944958353502161026

`(A001065(n+1)+1+n-A048146(n+1))/A348733(n+1)`
-/

namespace A348735.P12944958353502161026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + 1 + (n : ℤ) - A048146 (n + 1) : ℚ) / (A348733 (n + 1) : ℚ)

end

end A348735.P12944958353502161026

namespace A348735

/-- `(A001065(n+1)+1+n-A048146(n+1))/A348733(n+1)` -/
def P12944958353502161026.Spec : Prop :=
  ∀ n, P12944958353502161026.a n = (A348735 (n + 1) : ℚ)

end A348735

/-! ## A348735.P3812016291264525516

`abs(A048146(n+1)-A064987(n+1)/(n+1))/A348733(n+1)`
-/

namespace A348735.P3812016291264525516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A048146 (n + 1) : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ)| / (A348733 (n + 1) : ℚ)

end

end A348735.P3812016291264525516

namespace A348735

/-- `abs(A048146(n+1)-A064987(n+1)/(n+1))/A348733(n+1)` -/
def P3812016291264525516.Spec : Prop :=
  ∀ n, P3812016291264525516.a n = (A348735 (n + 1) : ℚ)

end A348735

/-! ## A348735.P708909895801663396

`(A051612(n+1)+A000010(n+1)-A048146(n+1))/A348733(n+1)`
-/

namespace A348735.P708909895801663396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051612 (n + 1) + A000010 (n + 1) - A048146 (n + 1) : ℚ) / (A348733 (n + 1) : ℚ)

end

end A348735.P708909895801663396

namespace A348735

/-- `(A051612(n+1)+A000010(n+1)-A048146(n+1))/A348733(n+1)` -/
def P708909895801663396.Spec : Prop :=
  ∀ n, P708909895801663396.a n = (A348735 (n + 1) : ℚ)

end A348735

/-! ## A348735.P5817720055143214658

`gcd(A343734(n+1), A360720(n+1))`
-/

namespace A348735.P5817720055143214658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A343734 (n + 1)) (A360720 (n + 1))

end

end A348735.P5817720055143214658

namespace A348735

/-- `gcd(A343734(n+1), A360720(n+1))` -/
def P5817720055143214658.Spec : Prop :=
  ∀ n, (P5817720055143214658.a n : ℤ) = A348735 (n + 1)

end A348735

/-!
# A348736: a(n) = n - A326042(n), where A326042(n) = A064989(sigma(A003961(n))).

The programs for A348736, the canonical program `A348736.P14809155913306220837` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348736 has offset 1).

The definition of A348736 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348736.P14809155913306220837

`n+1-A326042(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A348736

/-- `n+1-A326042(n+1)` -/
def P14809155913306220837.Spec : Prop :=
  ∀ n, P14809155913306220837.a n = A348736 (n + 1)

theorem P14809155913306220837.correct : P14809155913306220837.Spec := by
  intro n
  simp only [A348736, Nat.add_sub_cancel]

end A348736

/-! ## A348736.P741925009746563925

`n+1-A064989(A161942(A003961(n+1)))`
-/

namespace A348736.P741925009746563925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A064989 (A161942 (A003961 (n + 1)).toNat).toNat

end

end A348736.P741925009746563925

namespace A348736

/-- `n+1-A064989(A161942(A003961(n+1)))` -/
def P741925009746563925.Spec : Prop :=
  ∀ n, P741925009746563925.a n = A348736 (n + 1)

end A348736

/-! ## A348736.P3885593824715283198

`1-∑{d}[n+1, A349626(#)]+n`
-/

namespace A348736.P3885593824715283198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A349626 d + (n : ℤ)

end

end A348736.P3885593824715283198

namespace A348736

/-- `1-∑{d}[n+1, A349626(#)]+n` -/
def P3885593824715283198.Spec : Prop :=
  ∀ n, P3885593824715283198.a n = A348736 (n + 1)

end A348736

/-! ## A348736.P16009082726534815606

`-(A326042(n+1)+A001478(n+1))`
-/

namespace A348736.P16009082726534815606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A326042 (n + 1) + A001478 (n + 1))

end

end A348736.P16009082726534815606

namespace A348736

/-- `-(A326042(n+1)+A001478(n+1))` -/
def P16009082726534815606.Spec : Prop :=
  ∀ n, P16009082726534815606.a n = A348736 (n + 1)

theorem P16009082726534815606.correct : P16009082726534815606.Spec := by
  intro n
  simp only [A348736, Nat.add_sub_cancel, A348736.P16009082726534815606.a, A348736.P14809155913306220837.a, A001478, A001478.P11279598861711037921.a, A326042, A326042.P2058556130283876528.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A064989, A064989.P13349672914146769936.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A252749, A252749.P15054942815197957636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348736

/-! ## A348736.P2810910085355702472

`n+1-A348940(n+1)*A348942(n+1)`
-/

namespace A348736.P2810910085355702472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A348940 (n + 1) * A348942 (n + 1)

end

end A348736.P2810910085355702472

namespace A348736

/-- `n+1-A348940(n+1)*A348942(n+1)` -/
def P2810910085355702472.Spec : Prop :=
  ∀ n, P2810910085355702472.a n = A348736 (n + 1)

end A348736

/-! ## A348736.P3110235117034601882

`n+1-A353790(n+1)/A000010(A003973(n+1))`
-/

namespace A348736.P3110235117034601882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A353790 (n + 1) : ℚ) / (A000010 (A003973 (n + 1)).toNat : ℚ)

end

end A348736.P3110235117034601882

namespace A348736

/-- `n+1-A353790(n+1)/A000010(A003973(n+1))` -/
def P3110235117034601882.Spec : Prop :=
  ∀ n, P3110235117034601882.a n = (A348736 (n + 1) : ℚ)

end A348736

/-! ## A348736.P6816287264214187400

`1-A350073(A003961(n+1))+n`
-/

namespace A348736.P6816287264214187400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A350073 (A003961 (n + 1)).toNat + (n : ℤ)

end

end A348736.P6816287264214187400

namespace A348736

/-- `1-A350073(A003961(n+1))+n` -/
def P6816287264214187400.Spec : Prop :=
  ∀ n, P6816287264214187400.a n = A348736 (n + 1)

theorem P6816287264214187400.correct : P6816287264214187400.Spec := by
  intro n
  simp only [A348736, Nat.add_sub_cancel, A348736.P6816287264214187400.a, A348736.P14809155913306220837.a, A003961, A003961.P5996473960037614004.a, A326042, A326042.P2058556130283876528.a, A350073, A350073.P10296783642631124026.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064989, A064989.P13349672914146769936.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A252749, A252749.P15054942815197957636.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348736

/-! ## A348736.P4723821486234856072

`A024000(A326042(n+1))+n`
-/

namespace A348736.P4723821486234856072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A326042 (n + 1)).toNat + (n : ℤ)

end

end A348736.P4723821486234856072

namespace A348736

/-- `A024000(A326042(n+1))+n` -/
def P4723821486234856072.Spec : Prop :=
  ∀ n, P4723821486234856072.a n = A348736 (n + 1)

end A348736

/-! ## A348736.P13477624661388699757

`1-A064989(A003973(n+1))+n`
-/

namespace A348736.P13477624661388699757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A064989 (A003973 (n + 1)).toNat + (n : ℤ)

end

end A348736.P13477624661388699757

namespace A348736

/-- `1-A064989(A003973(n+1))+n` -/
def P13477624661388699757.Spec : Prop :=
  ∀ n, P13477624661388699757.a n = A348736 (n + 1)

theorem P13477624661388699757.correct : P13477624661388699757.Spec := by
  intro n
  simp only [A348736, Nat.add_sub_cancel, A348736.P13477624661388699757.a, A348736.P14809155913306220837.a, A003973, A003973.P4846480468008244812.a, A064989, A064989.P13349672914146769936.a, A326042, A326042.P2058556130283876528.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A070229, A070229.P5792893597916963980.a, A252749, A252749.P15054942815197957636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348736

/-! ## A348736.P1566362273931366349

`n+1-A064989(∑{d}[n+1, A003961(#)])`
-/

namespace A348736.P1566362273931366349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A064989 (∑ d ∈ Nat.divisors (f1 n), A003961 d).toNat

end

end A348736.P1566362273931366349

namespace A348736

/-- `n+1-A064989(∑{d}[n+1, A003961(#)])` -/
def P1566362273931366349.Spec : Prop :=
  ∀ n, P1566362273931366349.a n = A348736 (n + 1)

end A348736

/-!
# A348737: a(n) = 1 if A326042(k) < k, otherwise 0.

The programs for A348737, the canonical program `A348737.P4243854902440080733` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348737 has offset 1).

The definition of A348737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348737.P9121814513215687010

`ceil(sin(atan(A348736(n+1))))`
-/

namespace A348737.P9121814513215687010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (Real.arctan (A348736 (n + 1) : ℝ))⌉

end

end A348737.P9121814513215687010

namespace A348737

/-- `ceil(sin(atan(A348736(n+1))))` -/
def P9121814513215687010.Spec : Prop :=
  ∀ n, P9121814513215687010.a n = A348737 (n + 1)

end A348737

/-! ## A348737.P4243854902440080733

`round(n/(A326042(n+1)+n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A348737

/-- `round(n/(A326042(n+1)+n))` -/
def P4243854902440080733.Spec : Prop :=
  ∀ n, P4243854902440080733.a n = A348737 (n + 1)

theorem P4243854902440080733.correct : P4243854902440080733.Spec := by
  intro n
  simp only [A348737, Nat.add_sub_cancel]

end A348737

/-! ## A348737.P9448001430200499344

`ceil(A348736(n+1)/A033574(n))`
-/

namespace A348737.P9448001430200499344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348736 (n + 1) : ℚ) / (A033574 n : ℚ)⌉

end

end A348737.P9448001430200499344

namespace A348737

/-- `ceil(A348736(n+1)/A033574(n))` -/
def P9448001430200499344.Spec : Prop :=
  ∀ n, P9448001430200499344.a n = A348737 (n + 1)

end A348737

/-! ## A348737.P9932690984301137958

`ceil(A348736(n+1)/A055797(n))`
-/

namespace A348737.P9932690984301137958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348736 (n + 1) : ℚ) / (A055797 n : ℚ)⌉

end

end A348737.P9932690984301137958

namespace A348737

/-- `ceil(A348736(n+1)/A055797(n))` -/
def P9932690984301137958.Spec : Prop :=
  ∀ n, P9932690984301137958.a n = A348737 (n + 1)

end A348737

/-! ## A348737.P7790742614673978775

`ceil(A348736(n+1)/A058039(n))`
-/

namespace A348737.P7790742614673978775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348736 (n + 1) : ℚ) / (A058039 n : ℚ)⌉

end

end A348737.P7790742614673978775

namespace A348737

/-- `ceil(A348736(n+1)/A058039(n))` -/
def P7790742614673978775.Spec : Prop :=
  ∀ n, P7790742614673978775.a n = A348737 (n + 1)

end A348737

/-! ## A348737.P15412303779903427453

`ceil(A348736(n+1)/A003593(n+1))`
-/

namespace A348737.P15412303779903427453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348736 (n + 1) : ℚ) / (A003593 (n + 1) : ℚ)⌉

end

end A348737.P15412303779903427453

namespace A348737

/-- `ceil(A348736(n+1)/A003593(n+1))` -/
def P15412303779903427453.Spec : Prop :=
  ∀ n, P15412303779903427453.a n = A348737 (n + 1)

end A348737

/-! ## A348737.P14324067399032953760

`ceil(A348736(n+1)/A003973(n+1))`
-/

namespace A348737.P14324067399032953760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348736 (n + 1) : ℚ) / (A003973 (n + 1) : ℚ)⌉

end

end A348737.P14324067399032953760

namespace A348737

/-- `ceil(A348736(n+1)/A003973(n+1))` -/
def P14324067399032953760.Spec : Prop :=
  ∀ n, P14324067399032953760.a n = A348737 (n + 1)

end A348737

/-! ## A348737.P6908580102115646643

`ceil(A348736(n+1)/A060981(n+1))`
-/

namespace A348737.P6908580102115646643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348736 (n + 1) : ℚ) / (A060981 (n + 1) : ℚ)⌉

end

end A348737.P6908580102115646643

namespace A348737

/-- `ceil(A348736(n+1)/A060981(n+1))` -/
def P6908580102115646643.Spec : Prop :=
  ∀ n, P6908580102115646643.a n = A348737 (n + 1)

end A348737

/-! ## A348737.P8165861934199069963

`ceil(A348736(n+1)/A078307(n+1))`
-/

namespace A348737.P8165861934199069963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348736 (n + 1) : ℚ) / (A078307 (n + 1) : ℚ)⌉

end

end A348737.P8165861934199069963

namespace A348737

/-- `ceil(A348736(n+1)/A078307(n+1))` -/
def P8165861934199069963.Spec : Prop :=
  ∀ n, P8165861934199069963.a n = A348737 (n + 1)

end A348737

/-! ## A348737.P10359527163585895556

`ceil(A348736(n+1)/A115743(n+1))`
-/

namespace A348737.P10359527163585895556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348736 (n + 1) : ℚ) / (A115743 (n + 1) : ℚ)⌉

end

end A348737.P10359527163585895556

namespace A348737

/-- `ceil(A348736(n+1)/A115743(n+1))` -/
def P10359527163585895556.Spec : Prop :=
  ∀ n, P10359527163585895556.a n = A348737 (n + 1)

end A348737

/-! ## A348737.P881312538119230378

`char[lt[A348942(n+1), A348941(n+1)]]`
-/

namespace A348737.P881312538119230378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348942 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348941 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A348737.P881312538119230378

namespace A348737

/-- `char[lt[A348942(n+1), A348941(n+1)]]` -/
def P881312538119230378.Spec : Prop :=
  ∀ n, (P881312538119230378.a n : ℤ) = A348737 (n + 1)

end A348737

/-! ## A348737.P17884736031284522597

`ceil(A348736(n+1)/A326182(n+1))`
-/

namespace A348737.P17884736031284522597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348736 (n + 1) : ℚ) / (A326182 (n + 1) : ℚ)⌉

end

end A348737.P17884736031284522597

namespace A348737

/-- `ceil(A348736(n+1)/A326182(n+1))` -/
def P17884736031284522597.Spec : Prop :=
  ∀ n, P17884736031284522597.a n = A348737 (n + 1)

end A348737

/-! ## A348737.P18296837607678167857

`A353638(A003961(n+1))`
-/

namespace A348737.P18296837607678167857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353638 (A003961 (n + 1)).toNat

end

end A348737.P18296837607678167857

namespace A348737

/-- `A353638(A003961(n+1))` -/
def P18296837607678167857.Spec : Prop :=
  ∀ n, P18296837607678167857.a n = A348737 (n + 1)

end A348737

/-! ## A348737.P5767741766482450807

`A353638(A045965(n+1))`
-/

namespace A348737.P5767741766482450807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353638 (A045965 (n + 1)).toNat

end

end A348737.P5767741766482450807

namespace A348737

/-- `A353638(A045965(n+1))` -/
def P5767741766482450807.Spec : Prop :=
  ∀ n, P5767741766482450807.a n = A348737 (n + 1)

end A348737

/-! ## A348737.P5357636759839691849

`ceil(A348736(n+1)/A252423(n+1))`
-/

namespace A348737.P5357636759839691849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348736 (n + 1) : ℚ) / (A252423 (n + 1) : ℚ)⌉

end

end A348737.P5357636759839691849

namespace A348737

/-- `ceil(A348736(n+1)/A252423(n+1))` -/
def P5357636759839691849.Spec : Prop :=
  ∀ n, P5357636759839691849.a n = A348737 (n + 1)

end A348737

/-!
# A348738: Numbers k for which A326042(k) < k, where A326042(n) = A064989(sigma(A003961(n))).

The programs for A348738, the canonical program `A348738.P16981301963998914675` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348738 has offset 1).

The definition of A348738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348738.P16981301963998914675

`lt[0, A348736(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A348738

/-- `lt[0, A348736(n+1)]+1` -/
def P16981301963998914675.Spec : Prop :=
  ∀ n, (P16981301963998914675.a n : ℤ) = A348738 (n + 1)

theorem P16981301963998914675.correct : P16981301963998914675.Spec := by
  intro n
  simp only [A348738, Nat.add_sub_cancel]

end A348738

/-! ## A348738.P18209724243601673019

`lt[0, A348737(n+1)]+1`
-/

namespace A348738.P18209724243601673019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348737 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A348738.P18209724243601673019

namespace A348738

/-- `lt[0, A348737(n+1)]+1` -/
def P18209724243601673019.Spec : Prop :=
  ∀ n, (P18209724243601673019.a n : ℤ) = A348738 (n + 1)

end A348738

/-! ## A348738.P8077867397147412879

`lt[A326042(ceil(abs(γ-n))), n]`
-/

namespace A348738.P8077867397147412879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326042 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A348738.P8077867397147412879

namespace A348738

/-- `lt[A326042(ceil(abs(γ-n))), n]` -/
def P8077867397147412879.Spec : Prop :=
  ∀ n, (P8077867397147412879.a n : ℤ) = A348738 (n + 1)

end A348738

/-! ## A348738.P485352034811084426

`record[(n+2)*A348737(n+2)]`
-/

namespace A348738.P485352034811084426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A348737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348738.P485352034811084426

namespace A348738

/-- `record[(n+2)*A348737(n+2)]` -/
def P485352034811084426.Spec : Prop :=
  ∀ n, P485352034811084426.a n = A348738 (n + 1)

end A348738

/-! ## A348738.P8092596498417664456

`filter[A376573(n+1), A348737(#)]`
-/

namespace A348738.P8092596498417664456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348737 (f1 j).toNat = 1) n)

end

end A348738.P8092596498417664456

namespace A348738

/-- `filter[A376573(n+1), A348737(#)]` -/
def P8092596498417664456.Spec : Prop :=
  ∀ n, P8092596498417664456.a n = A348738 (n + 1)

end A348738

/-! ## A348738.P10209538661806351998

`lt[A348942(n+1), A348941(n+1)]+1`
-/

namespace A348738.P10209538661806351998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348941 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A348738.P10209538661806351998

namespace A348738

/-- `lt[A348942(n+1), A348941(n+1)]+1` -/
def P10209538661806351998.Spec : Prop :=
  ∀ n, (P10209538661806351998.a n : ℤ) = A348738 (n + 1)

end A348738

/-! ## A348738.P3697596821987223127

`eq[1, A348737(A000007(n)+n)]`
-/

namespace A348738.P3697596821987223127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348737 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348738.P3697596821987223127

namespace A348738

/-- `eq[1, A348737(A000007(n)+n)]` -/
def P3697596821987223127.Spec : Prop :=
  ∀ n, (P3697596821987223127.a n : ℤ) = A348738 (n + 1)

end A348738

/-!
# A348739: Numbers k for which A326042(k) > k.

The programs for A348739, there is no canonical definition to state claims against.
-/

/-! ## A348739.P6385524097776670052

`lt[A348736(n+2), 0]+2`
-/

namespace A348739.P6385524097776670052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348736 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A348739.P6385524097776670052

/-! ## A348739.P11439409077758337331

`lt[A348737(n+2), 1]+2`
-/

namespace A348739.P11439409077758337331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348737 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A348739.P11439409077758337331

/-! ## A348739.P18117052619616340741

`record[(n+4)%A326042(n+4)]`
-/

namespace A348739.P18117052619616340741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 4 : ℤ) (A326042 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348739.P18117052619616340741

/-! ## A348739.P3278263993840475304

`eq[0, A348737(A233583(n+1))]`
-/

namespace A348739.P3278263993840475304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348737 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348739.P3278263993840475304

/-! ## A348739.P9892675968829840243

`eq[A000007(n), A348737(n+1)]+1`
-/

namespace A348739.P9892675968829840243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348737 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A348739.P9892675968829840243

/-! ## A348739.P14379736904818400017

`eq[A000038(n), A348737(n+1)]+1`
-/

namespace A348739.P14379736904818400017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348737 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A348739.P14379736904818400017

/-! ## A348739.P12916296102276790797

`lt[A348941(n+1), A348942(n+1)]+1`
-/

namespace A348739.P12916296102276790797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348942 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A348739.P12916296102276790797

/-! ## A348739.P13720448086509272209

`A113484(eq[A000007(n), A348737(n+1)])`
-/

namespace A348739.P13720448086509272209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A348739.P13720448086509272209

/-! ## A348739.P14180886009369334506

`A113484(eq[A000038(n), A348737(n+1)])`
-/

namespace A348739.P14180886009369334506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A348739.P14180886009369334506

/-!
# A348741: 

The programs for A348741, there is no canonical definition to state claims against.
-/

/-! ## A348741.P10476772389012561290

`lt[A161942(n^(n%2)), n^(n%2)]`
-/

namespace A348741.P10476772389012561290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161942 (n ^ (n % 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A348741.P10476772389012561290

/-!
# A348742: Odd numbers k for which A161942(k) >= k, where A161942 is the odd part of sigma.

The programs for A348742, there is no canonical definition to state claims against.
-/

/-! ## A348742.P7235344925490072197

`∪[A016754(n), A175915(n+1)]`
-/

namespace A348742.P7235344925490072197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A348742.P7235344925490072197

/-! ## A348742.P11446159171025341756

`∪[A348743(n+1), A016754(n)]`
-/

namespace A348742.P11446159171025341756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A348742.P11446159171025341756

/-! ## A348742.P7412027983961565974

`∪[A016754(n), A387709(n+1)]`
-/

namespace A348742.P7412027983961565974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A348742.P7412027983961565974

/-! ## A348742.P13339453915375949386

`∩[A046871(n+1), A380376(n+1)]`
-/

namespace A348742.P13339453915375949386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348742.P13339453915375949386

/-! ## A348742.P17247889762395868162

`Δ[n²]²-A184955(A007318(n))`
-/

namespace A348742.P17247889762395868162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - A184955 (A007318 n).toNat

end

end A348742.P17247889762395868162

/-!
# A348744: Lexicographically earliest bijection from primes to odd primes where each prime of the form 4k+1 is mapped to the next larger prime that is of the same form.

The programs for A348744, there is no canonical definition to state claims against.
-/

/-! ## A348744.P16017364271815136262

`A348746(A000040(n+1))`
-/

namespace A348744.P16017364271815136262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348746 (A000040 (n + 1)).toNat

end

end A348744.P16017364271815136262

/-! ## A348744.P14089776344596389817

`p?[A348746(n+1)]`
-/

namespace A348744.P14089776344596389817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A348744.P14089776344596389817

/-! ## A348744.P15636814426871607259

`A348746(p?[comp[n²]])`
-/

namespace A348744.P15636814426871607259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A348744.P15636814426871607259

/-! ## A348744.P239527287639891407

`A348746(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A348744.P239527287639891407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348746 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A348744.P239527287639891407

/-! ## A348744.P2476700855067370862

`A348746(Δ[A007504(n)])`
-/

namespace A348744.P2476700855067370862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348746 (f1 (n + 1) - f1 n).toNat

end

end A348744.P2476700855067370862

/-! ## A348744.P5951291973077011207

`A348746(record[A051698(n)])`
-/

namespace A348744.P5951291973077011207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348746 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348744.P5951291973077011207

/-! ## A348744.P15806708776417262091

`A348746(A216884(n+1))`
-/

namespace A348744.P15806708776417262091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348746 (A216884 (n + 1)).toNat

end

end A348744.P15806708776417262091

/-! ## A348744.P820837885815470492

`A348746(A008578(n+2))`
-/

namespace A348744.P820837885815470492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348746 (A008578 (n + 2)).toNat

end

end A348744.P820837885815470492

/-! ## A348744.P5832709460721813385

`A348746(A182986(n+2))`
-/

namespace A348744.P5832709460721813385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348746 (A182986 (n + 2)).toNat

end

end A348744.P5832709460721813385

/-!
# A348745: Bijection from primes to {1} U primes, a left inverse of A348744.

The programs for A348745, there is no canonical definition to state claims against.
-/

/-! ## A348745.P6146869675421262376

`A348747(Δ[A007504(n)])`
-/

namespace A348745.P6146869675421262376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348747 (f1 (n + 1) - f1 n).toNat

end

end A348745.P6146869675421262376

/-! ## A348745.P18064719567689473574

`A348747(A000040(n+1))`
-/

namespace A348745.P18064719567689473574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348747 (A000040 (n + 1)).toNat

end

end A348745.P18064719567689473574

/-! ## A348745.P7513392826609099544

`A348747(A001749(n+1))`
-/

namespace A348745.P7513392826609099544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348747 (A001749 (n + 1)).toNat

end

end A348745.P7513392826609099544

/-! ## A348745.P1278152319788477829

`A348747(A006005(n+1))`
-/

namespace A348745.P1278152319788477829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348747 (A006005 (n + 1)).toNat

end

end A348745.P1278152319788477829

/-! ## A348745.P12148687995232454440

`A348747(A062876(n+1))`
-/

namespace A348745.P12148687995232454440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348747 (A062876 (n + 1)).toNat

end

end A348745.P12148687995232454440

/-! ## A348745.P4043041467511712411

`A348747(A072900(n+1))`
-/

namespace A348745.P4043041467511712411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348747 (A072900 (n + 1)).toNat

end

end A348745.P4043041467511712411

/-! ## A348745.P1726567685714810019

`A348747(A100484(n+1))`
-/

namespace A348745.P1726567685714810019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348747 (A100484 (n + 1)).toNat

end

end A348745.P1726567685714810019

/-! ## A348745.P13463286627411051203

`A348747(A216884(n+1))`
-/

namespace A348745.P13463286627411051203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348747 (A216884 (n + 1)).toNat

end

end A348745.P13463286627411051203

/-! ## A348745.P8766263130819115692

`A348747(A001747(n+2))`
-/

namespace A348745.P8766263130819115692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348747 (A001747 (n + 2)).toNat

end

end A348745.P8766263130819115692

/-!
# A348746: Fully multiplicative with a(2) = 3, a(3) = 5, a(A002144(n)) = A002144(1+n) and a(A002145(1+n)) = a(A002145(1+n)) for all n >= 1, where A002144 and A002145 give the primes of the form 4k+1 and 4k+3 respectively.

The programs for A348746, there is no canonical definition to state claims against.
-/

/-! ## A348746.P15183036845621363030

`∑{d}[n+1, A008683(#)*A354089((n+1)/#)]`
-/

namespace A348746.P15183036845621363030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A354089 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348746.P15183036845621363030

/-! ## A348746.P8015139316555922718

`A332818(A348747(A332818(n+1)))`
-/

namespace A348746.P8015139316555922718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332818 (A348747 (A332818 (n + 1)).toNat).toNat

end

end A348746.P8015139316555922718

/-! ## A348746.P6239654507586737898

`∏{e}[A181821(n+1), A348744(#)]`
-/

namespace A348746.P6239654507586737898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A348744 (Nat.factorization (f1 n).natAbs p)

end

end A348746.P6239654507586737898

/-! ## A348746.P10512651411443611809

`∏{e}[A304660(n+1), A348744(#)]`
-/

namespace A348746.P10512651411443611809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A348744 (Nat.factorization (f1 n).natAbs p)

end

end A348746.P10512651411443611809

/-! ## A348746.P14715146398616688883

`A332818(A072026(n+1)%A086962(3*n+4))`
-/

namespace A348746.P14715146398616688883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332818 (Int.tmod (A072026 (n + 1)) (A086962 (3 * n + 4))).toNat

end

end A348746.P14715146398616688883

/-!
# A348747: Fully multiplicative with a(2) = 1, a(3) = 2, a(5) = 3, a(A002144(1+n)) = A002144(n) and a(A002145(1+n)) = a(A002145(1+n)) for all n >= 1, where A002144 and A002145 give the primes of the form 4k+1 and 4k+3 respectively.

The programs for A348747, there is no canonical definition to state claims against.
-/

/-! ## A348747.P12193192828040436475

`A332819(A348746(A332819(n+1)))`
-/

namespace A348747.P12193192828040436475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332819 (A348746 (A332819 (n + 1)).toNat).toNat

end

end A348747.P12193192828040436475

/-! ## A348747.P6748410657747608251

`∏{e}[A181821(n+1), A348745(#)]`
-/

namespace A348747.P6748410657747608251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A348745 (Nat.factorization (f1 n).natAbs p)

end

end A348747.P6748410657747608251

/-! ## A348747.P12410198338979660520

`∏{e}[A304660(n+1), A348745(#)]`
-/

namespace A348747.P12410198338979660520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A348745 (Nat.factorization (f1 n).natAbs p)

end

end A348747.P12410198338979660520

/-! ## A348747.P11543080344946771124

`A072026(A332819(n+1))^Δ[A004870(n+2)]`
-/

namespace A348747.P11543080344946771124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004870 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072026 (A332819 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A348747.P11543080344946771124

/-! ## A348747.P11526963232761992526

`A183201(A113175(n+1))`
-/

namespace A348747.P11526963232761992526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183201 (A113175 (n + 1)).toNat

end

end A348747.P11526963232761992526

/-!
# A348748: Odd numbers k for which A064989(sigma(k)) < A064989(k), where A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

The programs for A348748, there is no canonical definition to state claims against.
-/

/-! ## A348748.P15857893538990477253

`lt[0, A353638(n+1)]+1`
-/

namespace A348748.P15857893538990477253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353638 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A348748.P15857893538990477253

/-! ## A348748.P5855387718371379063

`eq[1, A353638(n+2)]+2`
-/

namespace A348748.P5855387718371379063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353638 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A348748.P5855387718371379063

/-! ## A348748.P16126873182290109138

`filter[2*n+1, A353760(#)]`
-/

namespace A348748.P16126873182290109138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353760 (f1 j) = 1) n)

end

end A348748.P16126873182290109138

/-! ## A348748.P13088671582195742293

`lt[0, A353638(n^(n%2))]`
-/

namespace A348748.P13088671582195742293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353638 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348748.P13088671582195742293

/-! ## A348748.P13285215268642578355

`eq[1, A353760(n^and(1, n))]`
-/

namespace A348748.P13285215268642578355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353760 (n ^ Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348748.P13285215268642578355

/-! ## A348748.P3849065260019794697

`lt[A353757(n^and(1, n)), 0]`
-/

namespace A348748.P3849065260019794697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353757 (n ^ Nat.land 1 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A348748.P3849065260019794697

/-! ## A348748.P7629938605836644313

`comp[n-A353638(xor(1, n)+1)]`
-/

namespace A348748.P7629938605836644313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A353638 (Nat.xor 1 n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A348748.P7629938605836644313

/-! ## A348748.P8428692030266427816

`eq[1, A353760(n^(n²%2))]`
-/

namespace A348748.P8428692030266427816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353760 (n ^ (n ^ 2 % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348748.P8428692030266427816

/-! ## A348748.P1149814444229252630

`∩[2*n+1, A353758(n+1)]`
-/

namespace A348748.P1149814444229252630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348748.P1149814444229252630

/-!
# A348749: Odd numbers k for which A064989(sigma(k)) > A064989(k), where A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

The programs for A348749, the canonical program `A348749.P164932222149815558` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348749 has offset 1).

The definition of A348749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348749.P5443545021204276588

`filter[A013929(n+1), A353639(#)]`
-/

namespace A348749.P5443545021204276588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348749.P5443545021204276588

namespace A348749

/-- `filter[A013929(n+1), A353639(#)]` -/
def P5443545021204276588.Spec : Prop :=
  ∀ n, P5443545021204276588.a n = A348749 (n + 1)

end A348749

/-! ## A348749.P164932222149815558

`filter[A053850(n+1), A353639(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A348749

/-- `filter[A053850(n+1), A353639(#)]` -/
def P164932222149815558.Spec : Prop :=
  ∀ n, P164932222149815558.a n = A348749 (n + 1)

theorem P164932222149815558.correct : P164932222149815558.Spec := by
  intro n
  simp only [A348749, Nat.add_sub_cancel]

end A348749

/-! ## A348749.P8417982449339748303

`filter[A319927(n+1), A353639(#)]`
-/

namespace A348749.P8417982449339748303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348749.P8417982449339748303

namespace A348749

/-- `filter[A319927(n+1), A353639(#)]` -/
def P8417982449339748303.Spec : Prop :=
  ∀ n, P8417982449339748303.a n = A348749 (n + 1)

end A348749

/-! ## A348749.P14883689019351209434

`filter[A307579(n+1), A353639(#)]`
-/

namespace A348749.P14883689019351209434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348749.P14883689019351209434

namespace A348749

/-- `filter[A307579(n+1), A353639(#)]` -/
def P14883689019351209434.Spec : Prop :=
  ∀ n, P14883689019351209434.a n = A348749 (n + 1)

end A348749

/-! ## A348749.P8250961171437805854

`filter[A274720(n+1), A353639(#)]`
-/

namespace A348749.P8250961171437805854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348749.P8250961171437805854

namespace A348749

/-- `filter[A274720(n+1), A353639(#)]` -/
def P8250961171437805854.Spec : Prop :=
  ∀ n, P8250961171437805854.a n = A348749 (n + 1)

end A348749

/-! ## A348749.P7150325330770434466

`filter[A038838(n+1), A353639(#)]`
-/

namespace A348749.P7150325330770434466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348749.P7150325330770434466

namespace A348749

/-- `filter[A038838(n+1), A353639(#)]` -/
def P7150325330770434466.Spec : Prop :=
  ∀ n, P7150325330770434466.a n = A348749 (n + 1)

end A348749

/-! ## A348749.P824917558918748641

`filter[A139392(n+1), A353639(#)]`
-/

namespace A348749.P824917558918748641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348749.P824917558918748641

namespace A348749

/-- `filter[A139392(n+1), A353639(#)]` -/
def P824917558918748641.Spec : Prop :=
  ∀ n, P824917558918748641.a n = A348749 (n + 1)

end A348749

/-! ## A348749.P4218569691540076770

`eq[1, A353639(n+1)]+1`
-/

namespace A348749.P4218569691540076770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348749.P4218569691540076770

namespace A348749

/-- `eq[1, A353639(n+1)]+1` -/
def P4218569691540076770.Spec : Prop :=
  ∀ n, (P4218569691540076770.a n : ℤ) = A348749 (n + 1)

end A348749

/-! ## A348749.P4699504743390844587

`filter[A069168(n+1), A353639(#)]`
-/

namespace A348749.P4699504743390844587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348749.P4699504743390844587

namespace A348749

/-- `filter[A069168(n+1), A353639(#)]` -/
def P4699504743390844587.Spec : Prop :=
  ∀ n, P4699504743390844587.a n = A348749 (n + 1)

end A348749

/-! ## A348749.P308679171268908212

`filter[A046790(n+1), A353639(#)]`
-/

namespace A348749.P308679171268908212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348749.P308679171268908212

namespace A348749

/-- `filter[A046790(n+1), A353639(#)]` -/
def P308679171268908212.Spec : Prop :=
  ∀ n, P308679171268908212.a n = A348749 (n + 1)

end A348749

/-! ## A348749.P4204616020563649000

`filter[A072903(n+1), A353639(#)]`
-/

namespace A348749.P4204616020563649000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348749.P4204616020563649000

namespace A348749

/-- `filter[A072903(n+1), A353639(#)]` -/
def P4204616020563649000.Spec : Prop :=
  ∀ n, P4204616020563649000.a n = A348749 (n + 1)

end A348749

/-! ## A348749.P4994395151169139335

`filter[A014076(n+1), A353639(#)]`
-/

namespace A348749.P4994395151169139335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348749.P4994395151169139335

namespace A348749

/-- `filter[A014076(n+1), A353639(#)]` -/
def P4994395151169139335.Spec : Prop :=
  ∀ n, P4994395151169139335.a n = A348749 (n + 1)

end A348749

/-! ## A348749.P6481130804308770261

`filter[A071904(n+1), A353639(#)]`
-/

namespace A348749.P6481130804308770261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348749.P6481130804308770261

namespace A348749

/-- `filter[A071904(n+1), A353639(#)]` -/
def P6481130804308770261.Spec : Prop :=
  ∀ n, P6481130804308770261.a n = A348749 (n + 1)

end A348749

/-! ## A348749.P16262508138441986059

`filter[A039769(n+1), A353639(#)]`
-/

namespace A348749.P16262508138441986059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348749.P16262508138441986059

namespace A348749

/-- `filter[A039769(n+1), A353639(#)]` -/
def P16262508138441986059.Spec : Prop :=
  ∀ n, P16262508138441986059.a n = A348749 (n + 1)

end A348749

/-! ## A348749.P411252733171112710

`filter[A058957(n+1), A353639(#)]`
-/

namespace A348749.P411252733171112710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348749.P411252733171112710

namespace A348749

/-- `filter[A058957(n+1), A353639(#)]` -/
def P411252733171112710.Spec : Prop :=
  ∀ n, P411252733171112710.a n = A348749 (n + 1)

end A348749

/-! ## A348749.P2427074044056914426

`filter[A066423(n+2), A353639(#)]`
-/

namespace A348749.P2427074044056914426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348749.P2427074044056914426

namespace A348749

/-- `filter[A066423(n+2), A353639(#)]` -/
def P2427074044056914426.Spec : Prop :=
  ∀ n, P2427074044056914426.a n = A348749 (n + 1)

end A348749

/-! ## A348749.P10411528801723129060

`filter[A171845(n+2), A353639(#)]`
-/

namespace A348749.P10411528801723129060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171845 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348749.P10411528801723129060

namespace A348749

/-- `filter[A171845(n+2), A353639(#)]` -/
def P10411528801723129060.Spec : Prop :=
  ∀ n, P10411528801723129060.a n = A348749 (n + 1)

end A348749

/-! ## A348749.P12913507976179664185

`filter[A105441(n+1), A353639(#)]`
-/

namespace A348749.P12913507976179664185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348749.P12913507976179664185

namespace A348749

/-- `filter[A105441(n+1), A353639(#)]` -/
def P12913507976179664185.Spec : Prop :=
  ∀ n, P12913507976179664185.a n = A348749 (n + 1)

end A348749

/-! ## A348749.P11435514524666678804

`eq[1, A353639(A028310(n))]`
-/

namespace A348749.P11435514524666678804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353639 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348749.P11435514524666678804

namespace A348749

/-- `eq[1, A353639(A028310(n))]` -/
def P11435514524666678804.Spec : Prop :=
  ∀ n, (P11435514524666678804.a n : ℤ) = A348749 (n + 1)

end A348749

/-! ## A348749.P15930233402261662635

`A004442(eq[1, A353639(n+1)])`
-/

namespace A348749.P15930233402261662635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A348749.P15930233402261662635

namespace A348749

/-- `A004442(eq[1, A353639(n+1)])` -/
def P15930233402261662635.Spec : Prop :=
  ∀ n, P15930233402261662635.a n = A348749 (n + 1)

end A348749

/-!
# A348750: a(n) = A064989(A064989(sigma(A003961(A003961(n))))), where A003961 shifts the prime factorization of n one step towards larger primes, and A064989 shifts it back towards smaller primes.

The programs for A348750, the canonical program `A348750.P7590902845171157499` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348750 has offset 1).

The definition of A348750 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348750.P5077518045882908042

`A064989(A326042(A003961(n+1)))`
-/

namespace A348750.P5077518045882908042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A326042 (A003961 (n + 1)).toNat).toNat

end

end A348750.P5077518045882908042

namespace A348750

/-- `A064989(A326042(A003961(n+1)))` -/
def P5077518045882908042.Spec : Prop :=
  ∀ n, P5077518045882908042.a n = A348750 (n + 1)

end A348750

/-! ## A348750.P7590902845171157499

`A064989(A064989(A000203(A003961(A003961(n+1)))))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A348750

/-- `A064989(A064989(A000203(A003961(A003961(n+1)))))` -/
def P7590902845171157499.Spec : Prop :=
  ∀ n, P7590902845171157499.a n = A348750 (n + 1)

theorem P7590902845171157499.correct : P7590902845171157499.Spec := by
  intro n
  simp only [A348750, Nat.add_sub_cancel]

end A348750

/-! ## A348750.P8604973468112352622

`A064989(∑{d}[A003961(n+1), A349626(#)])`
-/

namespace A348750.P8604973468112352622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (∑ d ∈ Nat.divisors (f1 n).natAbs, A349626 d).toNat

end

end A348750.P8604973468112352622

namespace A348750

/-- `A064989(∑{d}[A003961(n+1), A349626(#)])` -/
def P8604973468112352622.Spec : Prop :=
  ∀ n, P8604973468112352622.a n = A348750 (n + 1)

end A348750

/-! ## A348750.P7407001869896846955

`A064989(A326042(A108228(n+1)+A048673(n+1)))`
-/

namespace A348750.P7407001869896846955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A326042 (A108228 (n + 1) + A048673 (n + 1)).toNat).toNat

end

end A348750.P7407001869896846955

namespace A348750

/-- `A064989(A326042(A108228(n+1)+A048673(n+1)))` -/
def P7407001869896846955.Spec : Prop :=
  ∀ n, P7407001869896846955.a n = A348750 (n + 1)

end A348750

/-! ## A348750.P2669207027215981596

`A064989(A003961(n+1)-A348736(A003961(n+1)))`
-/

namespace A348750.P2669207027215981596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A003961 (n + 1) - A348736 (A003961 (n + 1)).toNat).toNat

end

end A348750.P2669207027215981596

namespace A348750

/-- `A064989(A003961(n+1)-A348736(A003961(n+1)))` -/
def P2669207027215981596.Spec : Prop :=
  ∀ n, P2669207027215981596.a n = A348750 (n + 1)

end A348750

/-! ## A348750.P11316042512569133173

`A064989(A326042(A342671(n+1)*A349161(n+1)))`
-/

namespace A348750.P11316042512569133173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A326042 (A342671 (n + 1) * A349161 (n + 1)).toNat).toNat

end

end A348750.P11316042512569133173

namespace A348750

/-- `A064989(A326042(A342671(n+1)*A349161(n+1)))` -/
def P11316042512569133173.Spec : Prop :=
  ∀ n, P11316042512569133173.a n = A348750 (n + 1)

end A348750

/-!
# A348751: Numbers k for which A348750(k) < k.

The programs for A348751, there is no canonical definition to state claims against.
-/

/-! ## A348751.P10785075245659684279

`lt[A348750(round(acot(n)+n)), n]`
-/

namespace A348751.P10785075245659684279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348750 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A348751.P10785075245659684279

/-! ## A348751.P9184779801574119865

`lt[A348750(n+1), n+1]+1`
-/

namespace A348751.P9184779801574119865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348750 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A348751.P9184779801574119865

/-! ## A348751.P7385148693311788574

`lt[A348750(A233583(n+1)), n]`
-/

namespace A348751.P7385148693311788574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348750 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A348751.P7385148693311788574

/-! ## A348751.P17289292365266724258

`eq[char[A348752(n+1)], A000122(n)]`
-/

namespace A348751.P17289292365266724258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348752 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A348751.P17289292365266724258

/-! ## A348751.P134936451491588312

`eq[A000122(n), A294937(A011826(n+1))]`
-/

namespace A348751.P134936451491588312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (A011826 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348751.P134936451491588312

/-!
# A348752: Numbers k for which A348750(k) > k.

The programs for A348752, there is no canonical definition to state claims against.
-/

/-! ## A348752.P6744655593727144798

`lt[n+1, A348750(n+1)]+1`
-/

namespace A348752.P6744655593727144798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A348752.P6744655593727144798

/-! ## A348752.P1850579854872885006

`A065475(lt[n+1, A348750(n+1)])`
-/

namespace A348752.P1850579854872885006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A348752.P1850579854872885006

/-! ## A348752.P8237253865202079735

`lt[n+1, A348750(A233583(n+1))]`
-/

namespace A348752.P8237253865202079735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348750 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348752.P8237253865202079735

/-! ## A348752.P18439690142898413600

`A162643(lt[A237753(2*(n+2)), A246210(3*n)])`
-/

namespace A348752.P18439690142898413600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237753 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246210 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162643 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348752.P18439690142898413600

/-! ## A348752.P14087982831142482495

`A244506(n+2)%3+4*(n+1)`
-/

namespace A348752.P14087982831142482495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244506 (n + 2)) 3 + (4 * (n + 1) : ℤ)

end

end A348752.P14087982831142482495

/-!
# A348753: Numbers k congruent to 1 or 5 mod 6, for which A064989(A064989(sigma(k))) < A064989(A064989(k)), where A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

The programs for A348753, there is no canonical definition to state claims against.
-/

/-! ## A348753.P3163403442786171620

`filter[A348748(n+1), A011655(#)]`
-/

namespace A348753.P3163403442786171620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A348753.P3163403442786171620

/-! ## A348753.P5440639220325198677

`filter[A348748(n+1), A187074(#)]`
-/

namespace A348753.P5440639220325198677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A348753.P5440639220325198677

/-! ## A348753.P7853594874139884613

`filter[A348748(n+1), A267208(#)]`
-/

namespace A348753.P7853594874139884613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A348753.P7853594874139884613

/-! ## A348753.P7376207940929990693

`filter[A348748(n+1), A320106(#)]`
-/

namespace A348753.P7376207940929990693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A348753.P7376207940929990693

/-! ## A348753.P2060002563043159819

`filter[A348748(n+1), A354354(#)]`
-/

namespace A348753.P2060002563043159819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A348753.P2060002563043159819

/-! ## A348753.P3205060121036818510

`filter[A348748(n+1), A359374(#)]`
-/

namespace A348753.P3205060121036818510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A348753.P3205060121036818510

/-! ## A348753.P9447172133668673254

`filter[A348748(n+1), A373155(#)]`
-/

namespace A348753.P9447172133668673254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A348753.P9447172133668673254

/-! ## A348753.P17476887887647050443

`filter[A348748(n+1), A373156(#)]`
-/

namespace A348753.P17476887887647050443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A348753.P17476887887647050443

/-! ## A348753.P15209972625365513946

`filter[A348748(n+1), A374043(#)]`
-/

namespace A348753.P15209972625365513946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A348753.P15209972625365513946

/-!
# A348754: Numbers k congruent to 1 or 5 mod 6, for which A064989(A064989(sigma(k))) > A064989(A064989(k)), where A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

The programs for A348754, there is no canonical definition to state claims against.
-/

/-! ## A348754.P3040253278501834875

`∩[A192489(n+1), A349931(n+1)]`
-/

namespace A348754.P3040253278501834875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348754.P3040253278501834875

/-! ## A348754.P13208809298475295658

`∩[A332075(n+1), A349931(n+1)]`
-/

namespace A348754.P13208809298475295658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348754.P13208809298475295658

/-!
# A348755: Product_{n>=1} (1 + x^n)^a(n) = 1 + x + x^2 + 2 * Sum_{n>=3} a(n)*x^n.

The programs for A348755, there is no canonical definition to state claims against.
-/

/-! ## A348755.P4877480425397421043

`ceil(A299499(∑[n])/(n+2))`
-/

namespace A348755.P4877480425397421043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A299499 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 2 : ℚ)⌉

end

end A348755.P4877480425397421043

/-! ## A348755.P3592410402058104257

`A054404(A004148(n)+A000055(n))`
-/

namespace A348755.P3592410402058104257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A004148 n + A000055 n).toNat

end

end A348755.P3592410402058104257

/-! ## A348755.P7696557342311518125

`ceil(A134342(2*n+1)/96)`
-/

namespace A348755.P7696557342311518125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134342 (2 * n + 1) : ℚ) / 96⌉

end

end A348755.P7696557342311518125

/-! ## A348755.P9515938721236490009

`A257639(A005034(n))`
-/

namespace A348755.P9515938721236490009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A005034 n).toNat

end

end A348755.P9515938721236490009

/-! ## A348755.P11610746671637860416

`A263977(A068030(n))`
-/

namespace A348755.P11610746671637860416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263977 (A068030 n).toNat

end

end A348755.P11610746671637860416

/-!
# A348756: Product_{n>=1} (1 + a(n)*x^n) = 1 + x + x^2 + 2 * Sum_{n>=3} a(n)*x^n.

The programs for A348756, there is no canonical definition to state claims against.
-/

/-! ## A348756.P17550106889712117491

`A276581(A099947(n)-A174646(n+1))`
-/

namespace A348756.P17550106889712117491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A099947 n - A174646 (n + 1)).toNat

end

end A348756.P17550106889712117491

/-! ## A348756.P8895419942893944421

`A276581(xor(A099947(n), A174646(n+1)))`
-/

namespace A348756.P8895419942893944421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (Int.xor (A099947 n) (A174646 (n + 1))).toNat

end

end A348756.P8895419942893944421

/-! ## A348756.P11744698905468656384

`ceil(record[A157905(n)/10])`
-/

namespace A348756.P11744698905468656384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157905 n : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A348756.P11744698905468656384

/-! ## A348756.P11688726688259573700

`ceil(A157905(∑[n+2])/10)`
-/

namespace A348756.P11688726688259573700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157905 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 10⌉

end

end A348756.P11688726688259573700

/-! ## A348756.P2335888619656844962

`A114886(A006981(n))`
-/

namespace A348756.P2335888619656844962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114886 (A006981 n).toNat

end

end A348756.P2335888619656844962

/-!
# A348759: (43200/719)*{a(n)} are the times, measured in seconds from 00:00:00, at which the angle of the sector enclosing the three hands of an analog clock has a local minimum.

The programs for A348759, the canonical program `A348759.P8309725320515767476` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348759 has offset 1).

The definition of A348759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348759.P8309725320515767476

`round(n*719/11)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A348759

/-- `round(n*719/11)` -/
def P8309725320515767476.Spec : Prop :=
  ∀ n, P8309725320515767476.a n = A348759 (n + 1)

theorem P8309725320515767476.correct : P8309725320515767476.Spec := by
  intro n
  simp only [A348759, Nat.add_sub_cancel]

end A348759

/-! ## A348759.P4533493154471375547

`A288156(n)+65*n`
-/

namespace A348759.P4533493154471375547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 n + (65 * n : ℤ)

end

end A348759.P4533493154471375547

namespace A348759

/-- `A288156(n)+65*n` -/
def P4533493154471375547.Spec : Prop :=
  ∀ n, P4533493154471375547.a n = A348759 (n + 1)

end A348759

/-! ## A348759.P5149741387403801067

`63*n+A182761(n+1)-2`
-/

namespace A348759.P5149741387403801067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * n : ℤ) + (A182761 (n + 1) - 2)

end

end A348759.P5149741387403801067

namespace A348759

/-- `63*n+A182761(n+1)-2` -/
def P5149741387403801067.Spec : Prop :=
  ∀ n, P5149741387403801067.a n = A348759 (n + 1)

end A348759

/-! ## A348759.P15519162788159197142

`A008588(11*n)-floor((n+1)/ϕ)`
-/

namespace A348759.P15519162788159197142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (11 * n) - ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

end

end A348759.P15519162788159197142

namespace A348759

/-- `A008588(11*n)-floor((n+1)/ϕ)` -/
def P15519162788159197142.Spec : Prop :=
  ∀ n, P15519162788159197142.a n = A348759 (n + 1)

end A348759

/-! ## A348759.P7060934038352726939

`A152691(n)+A047367(n+1)`
-/

namespace A348759.P7060934038352726939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n + A047367 (n + 1)

end

end A348759.P7060934038352726939

namespace A348759

/-- `A152691(n)+A047367(n+1)` -/
def P7060934038352726939.Spec : Prop :=
  ∀ n, P7060934038352726939.a n = A348759 (n + 1)

end A348759

/-!
# A348760: For any nonnegative number n with binary expansion Sum_{k >= 0} b_k * 2^k, a(n) is the real part of f(n) = Sum_{k >= 0} ((-1)^Sum_{j = 0..k-1} b_j) * (1+i)^k (where i denotes the imaginary unit); sequence A348761 gives the imaginary part.

The programs for A348760, there is no canonical definition to state claims against.
-/

/-! ## A348760.P5647189345961958033

`A348761(2*n)-A348761(n)`
-/

namespace A348760.P5647189345961958033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348761 (2 * n) - A348761 n

end

end A348760.P5647189345961958033

/-! ## A348760.P6093969671555627868

`A348761(4*n)/2`
-/

namespace A348760.P6093969671555627868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348761 (4 * n) : ℚ) / 2

end

end A348760.P6093969671555627868

/-! ## A348760.P17756948046679065842

`floor(A348761(A008586(n))/2)`
-/

namespace A348760.P17756948046679065842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A348761 (A008586 n).toNat : ℚ) / 2⌋

end

end A348760.P17756948046679065842

/-! ## A348760.P2842054115953109791

`ceil(A348761(A008586(n))/(2-A000007(n)))`
-/

namespace A348760.P2842054115953109791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348761 (A008586 n).toNat : ℚ) / (2 - A000007 n : ℚ)⌉

end

end A348760.P2842054115953109791

/-! ## A348760.P1158140599173254439

`ceil(A348761(A008586(n))/(A157928(n+1)+1))`
-/

namespace A348760.P1158140599173254439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348761 (A008586 n).toNat : ℚ) / (A157928 (n + 1) + 1 : ℚ)⌉

end

end A348760.P1158140599173254439

/-! ## A348760.P6496515258829863455

`A133263(n+1)+A348761(A008586(n))/2-(∑[n+1]+2)`
-/

namespace A348760.P6496515258829863455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133263 (n + 1) : ℚ) + ((A348761 (A008586 n).toNat : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℚ))

end

end A348760.P6496515258829863455

/-!
# A348761: For any nonnegative number n with binary expansion Sum_{k >= 0} b_k * 2^k, a(n) is the imaginary part of f(n) = Sum_{k >= 0} ((-1)^Sum_{j = 0..k-1} b_j) * (1+i)^k (where i denotes the imaginary unit); sequence A348760 gives the real part.

The programs for A348761, there is no canonical definition to state claims against.
-/

/-! ## A348761.P5065274512284485801

`A348760(n)-A348760(2*n)`
-/

namespace A348761.P5065274512284485801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348760 n - A348760 (2 * n)

end

end A348761.P5065274512284485801

/-! ## A348761.P9840121924469594160

`A102565(n)+A059448(A055772(n+1))`
-/

namespace A348761.P9840121924469594160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102565 n + A059448 (A055772 (n + 1)).toNat

end

end A348761.P9840121924469594160

/-! ## A348761.P17513801307159101322

`A102565(A063865(n))+A102565(n)`
-/

namespace A348761.P17513801307159101322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102565 (A063865 n).toNat + A102565 n

end

end A348761.P17513801307159101322

/-!
# A348762: a(n) = A000265((n-8)*(n+8)).

The programs for A348762, the canonical program `A348762.P12887282092891507356` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348762 has offset 9).

The definition of A348762 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348762.P12887282092891507356

`A000265((n+1)*(n+17))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A348762

/-- `A000265((n+1)*(n+17))` -/
def P12887282092891507356.Spec : Prop :=
  ∀ n, P12887282092891507356.a n = A348762 (n + 9)

theorem P12887282092891507356.correct : P12887282092891507356.Spec := by
  intro n
  simp only [A348762, Nat.add_sub_cancel]

end A348762

/-! ## A348762.P863842700967146484

`A061049(n+9)`
-/

namespace A348762.P863842700967146484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061049 (n + 9)

end

end A348762.P863842700967146484

namespace A348762

/-- `A061049(n+9)` -/
def P863842700967146484.Spec : Prop :=
  ∀ n, P863842700967146484.a n = A348762 (n + 9)

end A348762

/-! ## A348762.P9300873641285401724

`A098849(n+1)/gcd(A000079(n+1), A098849(n+1))`
-/

namespace A348762.P9300873641285401724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098849 (n + 1) : ℚ) / (Int.gcd (A000079 (n + 1)) (A098849 (n + 1)) : ℚ)

end

end A348762.P9300873641285401724

namespace A348762

/-- `A098849(n+1)/gcd(A000079(n+1), A098849(n+1))` -/
def P9300873641285401724.Spec : Prop :=
  ∀ n, P9300873641285401724.a n = (A348762 (n + 9) : ℚ)

end A348762

/-! ## A348762.P8790009006663073902

`A172370(A046691(n+6)-2)`
-/

namespace A348762.P8790009006663073902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172370 (A046691 (n + 6) - 2).toNat

end

end A348762.P8790009006663073902

namespace A348762

/-- `A172370(A046691(n+6)-2)` -/
def P8790009006663073902.Spec : Prop :=
  ∀ n, P8790009006663073902.a n = A348762 (n + 9)

end A348762

/-! ## A348762.P3264868654444468790

`A172370(A000217(n+7)+n+2)`
-/

namespace A348762.P3264868654444468790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172370 (A000217 (n + 7) + (n + 2 : ℤ)).toNat

end

end A348762.P3264868654444468790

namespace A348762

/-- `A172370(A000217(n+7)+n+2)` -/
def P3264868654444468790.Spec : Prop :=
  ∀ n, P3264868654444468790.a n = A348762 (n + 9)

end A348762

/-! ## A348762.P7692769612946316281

`A061035(A155212(n+5)+1)`
-/

namespace A348762.P7692769612946316281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A155212 (n + 5) + 1).toNat

end

end A348762.P7692769612946316281

namespace A348762

/-- `A061035(A155212(n+5)+1)` -/
def P7692769612946316281.Spec : Prop :=
  ∀ n, P7692769612946316281.a n = A348762 (n + 9)

end A348762

/-! ## A348762.P5380428455188589277

`A061035(A000124(n+9)-8)`
-/

namespace A348762.P5380428455188589277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A000124 (n + 9) - 8).toNat

end

end A348762.P5380428455188589277

namespace A348762

/-- `A061035(A000124(n+9)-8)` -/
def P5380428455188589277.Spec : Prop :=
  ∀ n, P5380428455188589277.a n = A348762 (n + 9)

end A348762

/-! ## A348762.P5676314877157488751

`A093803(∑[A016825(n+8)])`
-/

namespace A348762.P5676314877157488751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348762.P5676314877157488751

namespace A348762

/-- `A093803(∑[A016825(n+8)])` -/
def P5676314877157488751.Spec : Prop :=
  ∀ n, P5676314877157488751.a n = A348762 (n + 9)

end A348762

/-! ## A348762.P1015786297022182916

`A139391(∑[A016825(n+8)])`
-/

namespace A348762.P1015786297022182916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348762.P1015786297022182916

namespace A348762

/-- `A139391(∑[A016825(n+8)])` -/
def P1015786297022182916.Spec : Prop :=
  ∀ n, P1015786297022182916.a n = A348762 (n + 9)

end A348762

/-!
# A348764: Number of unsensed 4-regular maps with 2*n edges on the projective plane.

The programs for A348764, there is no canonical definition to state claims against.
-/

/-! ## A348764.P12520334153926618899

`A181046(A150141(n+1))`
-/

namespace A348764.P12520334153926618899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181046 (A150141 (n + 1)).toNat

end

end A348764.P12520334153926618899

/-!
# A348767: Number of unsensed 3-regular maps with 3*n edges on the Klein bottle.

The programs for A348767, there is no canonical definition to state claims against.
-/

/-! ## A348767.P16280651740926403808

`A061228(∑[∑[A142981(n+1)]])`
-/

namespace A348767.P16280651740926403808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142981 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348767.P16280651740926403808

/-!
# A348769: Number of divisors of A031160(n).

The programs for A348769, there is no canonical definition to state claims against.
-/

/-! ## A348769.P17234101540394079003

`A000005(A031160(n+1))`
-/

namespace A348769.P17234101540394079003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A031160 (n + 1)).toNat

end

end A348769.P17234101540394079003

/-! ## A348769.P17037446480037025656

`2*A348772(n+1)`
-/

namespace A348769.P17037446480037025656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348772 (n + 1)

end

end A348769.P17037446480037025656

/-! ## A348769.P37500532212683106

`A004277(A348772(n+1))`
-/

namespace A348769.P37500532212683106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A348772 (n + 1)).toNat

end

end A348769.P37500532212683106

/-! ## A348769.P17931720410637556942

`A099777(A348771(n+1))`
-/

namespace A348769.P17931720410637556942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (A348771 (n + 1)).toNat

end

end A348769.P17931720410637556942

/-! ## A348769.P18253515641001063586

`A000005(A031158(n+1)+1)`
-/

namespace A348769.P18253515641001063586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A031158 (n + 1) + 1).toNat

end

end A348769.P18253515641001063586

/-! ## A348769.P16816248666011303904

`A000005(A031159(n+1)-1)`
-/

namespace A348769.P16816248666011303904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A031159 (n + 1) - 1).toNat

end

end A348769.P16816248666011303904

/-! ## A348769.P8534101146506736385

`A000005(2*A348771(n+1))`
-/

namespace A348769.P8534101146506736385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A348771 (n + 1)).toNat

end

end A348769.P8534101146506736385

/-! ## A348769.P9741083079565446667

`A000005(xor(1, A031159(n+1)))`
-/

namespace A348769.P9741083079565446667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.xor 1 (A031159 (n + 1))).toNat

end

end A348769.P9741083079565446667

/-! ## A348769.P2567320744763071006

`A000005(and(-2, A031159(n+1)))`
-/

namespace A348769.P2567320744763071006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.land (-2) (A031159 (n + 1))).toNat

end

end A348769.P2567320744763071006

/-! ## A348769.P14553531957324744971

`A000005(A057701(2*n+1)+1)`
-/

namespace A348769.P14553531957324744971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A057701 (2 * n + 1) + 1).toNat

end

end A348769.P14553531957324744971

/-!
# A348770: Sum of divisors of A031160(n).

The programs for A348770, there is no canonical definition to state claims against.
-/

/-! ## A348770.P3306269563725522526

`A000203(A031160(n+1))`
-/

namespace A348770.P3306269563725522526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A031160 (n + 1)).toNat

end

end A348770.P3306269563725522526

/-! ## A348770.P15315190601460603357

`∑{d}[1-A031159(n+1), #]`
-/

namespace A348770.P15315190601460603357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A031159 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A348770.P15315190601460603357

/-! ## A348770.P12089147252051997183

`∑{d}[2*A348771(n+1), #]`
-/

namespace A348770.P12089147252051997183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348771 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A348770.P12089147252051997183

/-! ## A348770.P1397489900567326538

`A000203(A031158(n+1)+1)`
-/

namespace A348770.P1397489900567326538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A031158 (n + 1) + 1).toNat

end

end A348770.P1397489900567326538

/-! ## A348770.P11092362622665556709

`A000203(A031159(n+1)-1)`
-/

namespace A348770.P11092362622665556709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A031159 (n + 1) - 1).toNat

end

end A348770.P11092362622665556709

/-! ## A348770.P18325634675433858113

`A000203(2*A348771(n+1))`
-/

namespace A348770.P18325634675433858113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * A348771 (n + 1)).toNat

end

end A348770.P18325634675433858113

/-! ## A348770.P16451509622913562030

`A000203(xor(1, A031159(n+1)))`
-/

namespace A348770.P16451509622913562030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.xor 1 (A031159 (n + 1))).toNat

end

end A348770.P16451509622913562030

/-! ## A348770.P11118723368932182361

`A000203(A057701(2*n+1)+1)`
-/

namespace A348770.P11118723368932182361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A057701 (2 * n + 1) + 1).toNat

end

end A348770.P11118723368932182361

/-! ## A348770.P6215607016884096213

`A062731(A348771(n+1))`
-/

namespace A348770.P6215607016884096213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (A348771 (n + 1)).toNat

end

end A348770.P6215607016884096213

/-! ## A348770.P1543222406029995112

`A088580(2*A348771(n+1))-1`
-/

namespace A348770.P1543222406029995112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (2 * A348771 (n + 1)).toNat - 1

end

end A348770.P1543222406029995112

/-!
# A348771: a(n) = A031160(n)/2.

The programs for A348771, there is no canonical definition to state claims against.
-/

/-! ## A348771.P3937131971509573101

`A031160(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348771.P3937131971509573101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031160 (n + 1) : ℚ) / 2

end

end A348771.P3937131971509573101

/-! ## A348771.P10696597667699582648

`floor(A031159(n+1)/2)`
-/

namespace A348771.P10696597667699582648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A031159 (n + 1) : ℚ) / 2⌋

end

end A348771.P10696597667699582648

/-! ## A348771.P8305442370157520109

`ceil(A031158(n+1)/2)`
-/

namespace A348771.P8305442370157520109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A031158 (n + 1) : ℚ) / 2⌉

end

end A348771.P8305442370157520109

/-! ## A348771.P13885564474405602690

`(A000959(A181557(n+1))+1)/2`
-/

namespace A348771.P13885564474405602690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000959 (A181557 (n + 1)).toNat + 1 : ℚ) / 2

end

end A348771.P13885564474405602690

/-! ## A348771.P4621616345108089107

`floor((A177704(n)+A031158(n+1))/2)`
-/

namespace A348771.P4621616345108089107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A177704 n + A031158 (n + 1) : ℚ) / 2⌋

end

end A348771.P4621616345108089107

/-! ## A348771.P12185001778291386877

`(A336158(A007814(∏{p}[n+1, #])+1)+A031158(n+1))/2`
-/

namespace A348771.P12185001778291386877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336158 (A007814 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1).toNat + A031158 (n + 1) : ℚ) / 2

end

end A348771.P12185001778291386877

/-! ## A348771.P5027696327693349399

`(A057701(Δ[n²])+1)/2`
-/

namespace A348771.P5027696327693349399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057701 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1 : ℚ) / 2

end

end A348771.P5027696327693349399

/-! ## A348771.P7322639958942048116

`A049781(A181557(n+1))`
-/

namespace A348771.P7322639958942048116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049781 (A181557 (n + 1)).toNat

end

end A348771.P7322639958942048116

/-! ## A348771.P1175341729623793074

`∩[A049781(n+1)-1, A049781(n+1)]`
-/

namespace A348771.P1175341729623793074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049781 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348771.P1175341729623793074

/-! ## A348771.P180852253016040322

`record[A049781(n+2)/Δ[A049781(n+2)]]`
-/

namespace A348771.P180852253016040322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049781 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049781 (n + 2) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348771.P180852253016040322

/-! ## A348771.P17904696592610685925

`A000463(A031158(n+1))`
-/

namespace A348771.P17904696592610685925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A031158 (n + 1)).toNat

end

end A348771.P17904696592610685925

/-! ## A348771.P1837173182314787980

`A001281(A031160(n+1))`
-/

namespace A348771.P1837173182314787980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A031160 (n + 1)).toNat

end

end A348771.P1837173182314787980

/-! ## A348771.P5036222854335777870

`A004524(A031159(n+1))`
-/

namespace A348771.P5036222854335777870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A031159 (n + 1)).toNat

end

end A348771.P5036222854335777870

/-! ## A348771.P16914130940557287257

`A000463(A057701(Δ[n²]))`
-/

namespace A348771.P16914130940557287257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A057701 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A348771.P16914130940557287257

/-! ## A348771.P7520438694949746207

`A160413(A031158(n+1)+1)`
-/

namespace A348771.P7520438694949746207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (A031158 (n + 1) + 1).toNat

end

end A348771.P7520438694949746207

/-! ## A348771.P9524701483516196300

`A008619(A031160(n+1)-1)`
-/

namespace A348771.P9524701483516196300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A031160 (n + 1) - 1).toNat

end

end A348771.P9524701483516196300

/-! ## A348771.P11128815990597381530

`A026741(A031159(n+1)-1)`
-/

namespace A348771.P11128815990597381530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A031159 (n + 1) - 1).toNat

end

end A348771.P11128815990597381530

/-! ## A348771.P4208791817894715223

`A000463(A031159(n+1)-2)`
-/

namespace A348771.P4208791817894715223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A031159 (n + 1) - 2).toNat

end

end A348771.P4208791817894715223

/-! ## A348771.P13050163417298413537

`A003602(A057701(2*(n+1)))-1`
-/

namespace A348771.P13050163417298413537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A057701 (2 * (n + 1))).toNat - 1

end

end A348771.P13050163417298413537

/-! ## A348771.P16769515188956154701

`A003602(A057701(A005408(n)))`
-/

namespace A348771.P16769515188956154701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A057701 (A005408 n).toNat).toNat

end

end A348771.P16769515188956154701

/-!
# A348772: a(n) = A348769(n)/2.

The programs for A348772, there is no canonical definition to state claims against.
-/

/-! ## A348772.P7240872506563971726

`A348769(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348772.P7240872506563971726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348769 (n + 1) : ℚ) / 2

end

end A348772.P7240872506563971726

/-! ## A348772.P5189674349373478702

`A001281(A348769(n+1))`
-/

namespace A348772.P5189674349373478702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A348769 (n + 1)).toNat

end

end A348772.P5189674349373478702

/-! ## A348772.P18111089572681950468

`A028242(A348769(n+1)+1)`
-/

namespace A348772.P18111089572681950468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A348769 (n + 1) + 1).toNat

end

end A348772.P18111089572681950468

/-! ## A348772.P10521013557974265708

`A152271(A348769(n+1)-1)`
-/

namespace A348772.P10521013557974265708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A348769 (n + 1) - 1).toNat

end

end A348772.P10521013557974265708

/-! ## A348772.P13792868191756851540

`∏{e}[A031158(n+1)+1, #+1]/2`
-/

namespace A348772.P13792868191756851540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031158 (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℚ) / 2

end

end A348772.P13792868191756851540

/-! ## A348772.P16692665262651922583

`A099777(A348771(n+1))/2`
-/

namespace A348772.P16692665262651922583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099777 (A348771 (n + 1)).toNat : ℚ) / 2

end

end A348772.P16692665262651922583

/-! ## A348772.P8843174395021806829

`A000005(A031160(n+1))/2`
-/

namespace A348772.P8843174395021806829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A031160 (n + 1)).toNat : ℚ) / 2

end

end A348772.P8843174395021806829

/-! ## A348772.P12477456344430722813

`A000005(A031158(n+1)+1)/2`
-/

namespace A348772.P12477456344430722813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A031158 (n + 1) + 1).toNat : ℚ) / 2

end

end A348772.P12477456344430722813

/-! ## A348772.P8899957513550452556

`A000005(A031159(n+1)-1)/2`
-/

namespace A348772.P8899957513550452556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A031159 (n + 1) - 1).toNat : ℚ) / 2

end

end A348772.P8899957513550452556

/-! ## A348772.P7667547387668606528

`A000005(2*A348771(n+1))/2`
-/

namespace A348772.P7667547387668606528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (2 * A348771 (n + 1)).toNat : ℚ) / 2

end

end A348772.P7667547387668606528

/-! ## A348772.P16000977027923023514

`A000005(xor(1, A031159(n+1)))/2`
-/

namespace A348772.P16000977027923023514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (Int.xor 1 (A031159 (n + 1))).toNat : ℚ) / 2

end

end A348772.P16000977027923023514

/-! ## A348772.P4950589061783275849

`A001817(A031160(n+1))`
-/

namespace A348772.P4950589061783275849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (A031160 (n + 1)).toNat

end

end A348772.P4950589061783275849

/-!
# A348773: First differences of A307632.

The programs for A348773, there is no canonical definition to state claims against.
-/

/-! ## A348773.P3760752926636353180

`Δ[A307632(n+1)]`
-/

namespace A348773.P3760752926636353180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348773.P3760752926636353180

/-! ## A348773.P70968840458794984

`Δ[A307630(A000040(n+1))]`
-/

namespace A348773.P70968840458794984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307630 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348773.P70968840458794984

/-! ## A348773.P4053788820455441950

`Δ[A307630(A008578(n+2))]`
-/

namespace A348773.P4053788820455441950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307630 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348773.P4053788820455441950

/-! ## A348773.P3706857192328473928

`Δ[A307630(A182986(n+2))]`
-/

namespace A348773.P3706857192328473928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307630 (A182986 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348773.P3706857192328473928

/-! ## A348773.P5417631573515631671

`Δ[A307630(sqrt(A001248(n+1)))]`
-/

namespace A348773.P5417631573515631671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307630 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348773.P5417631573515631671

/-! ## A348773.P5240575508188661285

`A307632(n+2)-A307632(n+1)`
-/

namespace A348773.P5240575508188661285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307632 (n + 2) - A307632 (n + 1)

end

end A348773.P5240575508188661285

/-! ## A348773.P12006044780783927494

`Δ[A348247(n+1)+A135528(n+1)]`
-/

namespace A348773.P12006044780783927494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348247 (n + 1) + A135528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348773.P12006044780783927494

/-!
# A348774: A348773(2*n+1).

The programs for A348774, the canonical program `A348774.P5425050507885369493` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348774 has offset 0).

The definition of A348774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348774.P2038407923270498627

`A348773(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348774.P2038407923270498627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348773 (2 * n + 1)

end

end A348774.P2038407923270498627

namespace A348774

/-- `A348773(2*n+1)` -/
def P2038407923270498627.Spec : Prop :=
  ∀ n, P2038407923270498627.a n = A348774 n

end A348774

/-! ## A348774.P5425050507885369493

`A006005(Δ[n²])+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A348774

/-- `A006005(Δ[n²])+1` -/
def P5425050507885369493.Spec : Prop :=
  ∀ n, P5425050507885369493.a n = A348774 n

theorem P5425050507885369493.correct : P5425050507885369493.Spec := by
  intro n
  simp only [A348774]

end A348774

/-! ## A348774.P2004569530350749024

`A318871(Δ[n²])+1`
-/

namespace A348774.P2004569530350749024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318871 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A348774.P2004569530350749024

namespace A348774

/-- `A318871(Δ[n²])+1` -/
def P2004569530350749024.Spec : Prop :=
  ∀ n, P2004569530350749024.a n = A348774 n

end A348774

/-! ## A348774.P15022370875439009403

`2*A111333(Δ[n²])`
-/

namespace A348774.P15022370875439009403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111333 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A348774.P15022370875439009403

namespace A348774

/-- `2*A111333(Δ[n²])` -/
def P15022370875439009403.Spec : Prop :=
  ∀ n, P15022370875439009403.a n = A348774 n

end A348774

/-! ## A348774.P2915639843086906814

`A075643(2*(n+1))+1`
-/

namespace A348774.P2915639843086906814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075643 (2 * (n + 1)) + 1

end

end A348774.P2915639843086906814

namespace A348774

/-- `A075643(2*(n+1))+1` -/
def P2915639843086906814.Spec : Prop :=
  ∀ n, P2915639843086906814.a n = A348774 n

end A348774

/-! ## A348774.P3119360077923822675

`A171525(2*(n+1))+1`
-/

namespace A348774.P3119360077923822675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171525 (2 * (n + 1)) + 1

end

end A348774.P3119360077923822675

namespace A348774

/-- `A171525(2*(n+1))+1` -/
def P3119360077923822675.Spec : Prop :=
  ∀ n, P3119360077923822675.a n = A348774 n

end A348774

/-! ## A348774.P3100322219832633312

`A093515(4*(n-1)+5)`
-/

namespace A348774.P3100322219832633312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (4 * ((n : ℤ) - 1) + 5).toNat

end

end A348774.P3100322219832633312

namespace A348774

/-- `A093515(4*(n-1)+5)` -/
def P3100322219832633312.Spec : Prop :=
  ∀ n, P3100322219832633312.a n = A348774 n

end A348774

/-! ## A348774.P1378282420278587205

`lcm(2, A055670(2*n+1))`
-/

namespace A348774.P1378282420278587205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A055670 (2 * n + 1))

end

end A348774.P1378282420278587205

namespace A348774

/-- `lcm(2, A055670(2*n+1))` -/
def P1378282420278587205.Spec : Prop :=
  ∀ n, (P1378282420278587205.a n : ℤ) = A348774 n

end A348774

/-! ## A348774.P3595837162693131388

`A101300(a(n-1))+1` with `a(0)=2`
-/

namespace A348774.P3595837162693131388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A101300 (a (n - 1)).toNat + 1

end

end A348774.P3595837162693131388

namespace A348774

/-- `A101300(a(n-1))+1` -/
def P3595837162693131388.Spec : Prop :=
  ∀ n, P3595837162693131388.a n = A348774 n

end A348774

/-! ## A348774.P1057071977375642366

`and(A000040(2*n+1)+1, -2)`
-/

namespace A348774.P1057071977375642366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (2 * n + 1) + 1) (-2)

end

end A348774.P1057071977375642366

namespace A348774

/-- `and(A000040(2*n+1)+1, -2)` -/
def P1057071977375642366.Spec : Prop :=
  ∀ n, P1057071977375642366.a n = A348774 n

end A348774

/-! ## A348774.P1628111188519719513

`floor(A000040(Δ[n²])+2*n/(n+1))`
-/

namespace A348774.P1628111188519719513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) + (2 * n : ℚ) / (n + 1 : ℚ)⌋

end

end A348774.P1628111188519719513

namespace A348774

/-- `floor(A000040(Δ[n²])+2*n/(n+1))` -/
def P1628111188519719513.Spec : Prop :=
  ∀ n, P1628111188519719513.a n = A348774 n

end A348774

/-! ## A348774.P6387481575797128971

`A000040(C(n, a(n-1))+2*n+1)+1` with `a(0)=2`
-/

namespace A348774.P6387481575797128971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (Nat.choose n (a (n - 1)).toNat + (2 * n + 1)) + 1

end

end A348774.P6387481575797128971

namespace A348774

/-- `A000040(C(n, a(n-1))+2*n+1)+1` -/
def P6387481575797128971.Spec : Prop :=
  ∀ n, P6387481575797128971.a n = A348774 n

end A348774

/-! ## A348774.P14659346049736289485

`A000040(gcd(2*n+1, (2*n+1)*a(n-1)))+1` with `a(0)=2`
-/

namespace A348774.P14659346049736289485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (Int.gcd (2 * n + 1 : ℤ) ((2 * n + 1 : ℤ) * a (n - 1))) + 1

end

end A348774.P14659346049736289485

namespace A348774

/-- `A000040(gcd(2*n+1, (2*n+1)*a(n-1)))+1` -/
def P14659346049736289485.Spec : Prop :=
  ∀ n, P14659346049736289485.a n = A348774 n

end A348774

/-! ## A348774.P8705713940980573646

`A111688(A008574(n))`
-/

namespace A348774.P8705713940980573646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111688 (A008574 n).toNat

end

end A348774.P8705713940980573646

namespace A348774

/-- `A111688(A008574(n))` -/
def P8705713940980573646.Spec : Prop :=
  ∀ n, P8705713940980573646.a n = A348774 n

end A348774

/-! ## A348774.P13529829098835115889

`A002131(A031368(n+1))`
-/

namespace A348774.P13529829098835115889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (A031368 (n + 1)).toNat

end

end A348774.P13529829098835115889

namespace A348774

/-- `A002131(A031368(n+1))` -/
def P13529829098835115889.Spec : Prop :=
  ∀ n, P13529829098835115889.a n = A348774 n

end A348774

/-! ## A348774.P6504747486853773692

`A008578(A103517(n))+1`
-/

namespace A348774.P6504747486853773692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A103517 n).toNat + 1

end

end A348774.P6504747486853773692

namespace A348774

/-- `A008578(A103517(n))+1` -/
def P6504747486853773692.Spec : Prop :=
  ∀ n, P6504747486853773692.a n = A348774 n

end A348774

/-! ## A348774.P9680589839579280128

`A014686(A004280(n+2))`
-/

namespace A348774.P9680589839579280128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014686 (A004280 (n + 2)).toNat

end

end A348774.P9680589839579280128

namespace A348774

/-- `A014686(A004280(n+2))` -/
def P9680589839579280128.Spec : Prop :=
  ∀ n, P9680589839579280128.a n = A348774 n

end A348774

/-! ## A348774.P2547513760728887456

`A028815(A103517(n)-1)`
-/

namespace A348774.P2547513760728887456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A103517 n - 1).toNat

end

end A348774.P2547513760728887456

namespace A348774

/-- `A028815(A103517(n)-1)` -/
def P2547513760728887456.Spec : Prop :=
  ∀ n, P2547513760728887456.a n = A348774 n

end A348774

/-! ## A348774.P4181698983975819948

`filter[A028815(n), A071986(#)]`
-/

namespace A348774.P4181698983975819948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071986 (f1 j).toNat = 1) n)

end

end A348774.P4181698983975819948

namespace A348774

/-- `filter[A028815(n), A071986(#)]` -/
def P4181698983975819948.Spec : Prop :=
  ∀ n, P4181698983975819948.a n = A348774 n

end A348774

/-! ## A348774.P7637942716872708212

`filter[A028815(n), A131378(#)]`
-/

namespace A348774.P7637942716872708212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131378 (f1 j).toNat = 1) n)

end

end A348774.P7637942716872708212

namespace A348774

/-- `filter[A028815(n), A131378(#)]` -/
def P7637942716872708212.Spec : Prop :=
  ∀ n, P7637942716872708212.a n = A348774 n

end A348774

/-!
# A348775: a(n) = A348773(2*n).

The programs for A348775, there is no canonical definition to state claims against.
-/

/-! ## A348775.P1532764797799832687

`A348773(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348775.P1532764797799832687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348773 (2 * (n + 1))

end

end A348775.P1532764797799832687

/-! ## A348775.P4868344831954776282

`A307632(2*n+3)-A307632(2*(n+1))`
-/

namespace A348775.P4868344831954776282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307632 (2 * n + 3) - A307632 (2 * (n + 1))

end

end A348775.P4868344831954776282

/-! ## A348775.P4960860101010664670

`Δ[A307630(A031368(n+1))]-A348774(n)`
-/

namespace A348775.P4960860101010664670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307630 (A031368 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A348774 n

end

end A348775.P4960860101010664670

/-! ## A348775.P5514993300540716252

`Δ[A307630(A000040(2*n+1))]-A348774(n)`
-/

namespace A348775.P5514993300540716252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307630 (A000040 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A348774 n

end

end A348775.P5514993300540716252

/-! ## A348775.P18317679675164521459

`A000027(A348773(record[xor(1, n)]+1))`
-/

namespace A348775.P18317679675164521459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A348773 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A348775.P18317679675164521459

/-!
# A348776: The numbers >= 2 with 3 repeated.

The programs for A348776, the canonical program `A348776.P12852198876112794032` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348776 has offset 1).

The definition of A348776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348776.P12852198876112794032

`2*a(n-1)-a(n-2)` with `a(0)=2, a(1)=3, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A348776

/-- `2*a(n-1)-a(n-2)` -/
def P12852198876112794032.Spec : Prop :=
  ∀ n, P12852198876112794032.a n = A348776 (n + 1)

theorem P12852198876112794032.correct : P12852198876112794032.Spec := by
  intro n
  simp only [A348776, Nat.add_sub_cancel]

end A348776

/-!
# A348777: a(n) = term in A347113 that precedes the n-th prime. Set a(n) = -1 if prime(n) does not appear in A347113.

The programs for A348777, there is no canonical definition to state claims against.
-/

/-! ## A348777.P966389153270199154

`Δ[A007504(n)]*A348778(n+1)-1`
-/

namespace A348777.P966389153270199154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A348778 (n + 1) - 1

end

end A348777.P966389153270199154

/-! ## A348777.P14737419477684137423

`p?[A143051(n)]*A348778(n+1)-1`
-/

namespace A348777.P14737419477684137423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A348778 (n + 1) - 1

end

end A348777.P14737419477684137423

/-! ## A348777.P16883547014036860985

`A000040(n+1)*A348778(n+1)-1`
-/

namespace A348777.P16883547014036860985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A348778 (n + 1) - 1

end

end A348777.P16883547014036860985

/-! ## A348777.P7819485586948100483

`record[A014963(n+2)]*A348778(n+1)-1`
-/

namespace A348777.P7819485586948100483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A348778 (n + 1) - 1

end

end A348777.P7819485586948100483

/-! ## A348777.P1051588405156320074

`A347113(A347313(n+1)-1)`
-/

namespace A348777.P1051588405156320074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (A347313 (n + 1) - 1).toNat

end

end A348777.P1051588405156320074

/-!
# A348778: (A348777(n)+1)/prime(n).

The programs for A348778, there is no canonical definition to state claims against.
-/

/-! ## A348778.P6308447719473527

`(A348777(n+1)+1)/A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348778.P6308447719473527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348777 (n + 1) + 1 : ℚ) / (A000040 (n + 1) : ℚ)

end

end A348778.P6308447719473527

/-! ## A348778.P17581464986147907313

`ceil(A348777(n+1)/A000040(n+1))`
-/

namespace A348778.P17581464986147907313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348777 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌉

end

end A348778.P17581464986147907313

/-! ## A348778.P2985911431540249690

`ceil(A348777(n+1)/A008578(n+2))`
-/

namespace A348778.P2985911431540249690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348777 (n + 1) : ℚ) / (A008578 (n + 2) : ℚ)⌉

end

end A348778.P2985911431540249690

/-! ## A348778.P16026532658927083755

`round(A348777(n+1)/p?[A064413(n+1)])`
-/

namespace A348778.P16026532658927083755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A348777 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ))

end

end A348778.P16026532658927083755

/-! ## A348778.P6961342969440182336

`ceil(A348777(n+1)/A347113(A347313(n+1)))`
-/

namespace A348778.P6961342969440182336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348777 (n + 1) : ℚ) / (A347113 (A347313 (n + 1)).toNat : ℚ)⌉

end

end A348778.P6961342969440182336

/-!
# A348779: Primes in A347113 in order of appearance.

The programs for A348779, there is no canonical definition to state claims against.
-/

/-! ## A348779.P261685132973364968

`A349405(n+1)/A349406(n+1)`
-/

namespace A348779.P261685132973364968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349405 (n + 1) : ℚ) / (A349406 (n + 1) : ℚ)

end

end A348779.P261685132973364968

/-! ## A348779.P12598590228014060163

`p?[A347113(n+1)]`
-/

namespace A348779.P12598590228014060163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A348779.P12598590228014060163

/-! ## A348779.P14599107030325028712

`A347113(A348784(n+1))`
-/

namespace A348779.P14599107030325028712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (A348784 (n + 1)).toNat

end

end A348779.P14599107030325028712

/-! ## A348779.P15208547902492384766

`A000027(p?[A347113(-xor(n, -1))])`
-/

namespace A348779.P15208547902492384766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A348779.P15208547902492384766

/-! ## A348779.P7945912397800043292

`A347309(A348784(2*n+1-n))`
-/

namespace A348779.P7945912397800043292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347309 (A348784 (2 * n + 1 - n)).toNat

end

end A348779.P7945912397800043292

/-! ## A348779.P3241691448915491057

`A007913(A349405(n+1)*A349406(n+1))`
-/

namespace A348779.P3241691448915491057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A349405 (n + 1) * A349406 (n + 1)).toNat

end

end A348779.P3241691448915491057

/-!
# A348780: Partial sums of A347113.

The programs for A348780, there is no canonical definition to state claims against.
-/

/-! ## A348780.P16038074508763821167

`∑[A347113(n+1)]`
-/

namespace A348780.P16038074508763821167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348780.P16038074508763821167

/-! ## A348780.P12679209334431205061

`A347113(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A348780.P12679209334431205061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A347113 (n + 1) + a (A023443 n).toNat

end

end A348780.P12679209334431205061

/-! ## A348780.P3498901790579114533

`a(n-1)+1+A347113(n+1)+A057428(n)` with `a(0)=1`
-/

namespace A348780.P3498901790579114533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 + (A347113 (n + 1) + A057428 n)

end

end A348780.P3498901790579114533

/-! ## A348780.P9388846038163699470

`a(n-1)+1-(A054977(n)-A347113(n+1))` with `a(0)=1`
-/

namespace A348780.P9388846038163699470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - (A054977 n - A347113 (n + 1))

end

end A348780.P9388846038163699470

/-! ## A348780.P7204895957482670229

`a(n-1)+1-(A057427(n)-A347113(n+1))` with `a(0)=1`
-/

namespace A348780.P7204895957482670229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - (A057427 n - A347113 (n + 1))

end

end A348780.P7204895957482670229

/-! ## A348780.P5228352178894842757

`A000027(∑[A347113(-xor(n, -1))])`
-/

namespace A348780.P5228352178894842757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348780.P5228352178894842757

/-!
# A348781: Partial sums of A342585.

The programs for A348781, there is no canonical definition to state claims against.
-/

/-! ## A348781.P2623353371804930940

`∑[A342585(n+1)]`
-/

namespace A348781.P2623353371804930940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348781.P2623353371804930940

/-! ## A348781.P3765961125223950544

`A342585(n%(n+1)+1)+a(n-1)` with `a(0)=0`
-/

namespace A348781.P3765961125223950544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A342585 (n % (n + 1) + 1) + a (n - 1)

end

end A348781.P3765961125223950544

/-! ## A348781.P10190278413732250445

`A342585(n+1)+a(A028310(n)-1)` with `a(0)=0`
-/

namespace A348781.P10190278413732250445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A342585 (n + 1) + a (A028310 n - 1).toNat

end

end A348781.P10190278413732250445

/-! ## A348781.P7631865110707100346

`A342585(n+1)+a(A000027(n+1)-2)` with `a(0)=0`
-/

namespace A348781.P7631865110707100346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A342585 (n + 1) + a (A000027 (n + 1) - 2).toNat

end

end A348781.P7631865110707100346

/-! ## A348781.P12511933888052038705

`A342585(n+1)+a(A000007(n)-1+n)` with `a(0)=0`
-/

namespace A348781.P12511933888052038705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A342585 (n + 1) + a (A000007 n - 1 + (n : ℤ)).toNat

end

end A348781.P12511933888052038705

/-! ## A348781.P257182775886563930

`A342585(n+1)+a(A004277(n)-(n+1))` with `a(0)=0`
-/

namespace A348781.P257182775886563930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A342585 (n + 1) + a (A004277 n - (n + 1 : ℤ)).toNat

end

end A348781.P257182775886563930

/-! ## A348781.P9423977986044505561

`(A342585(n+1)+a(n-1))%A167499(n)` with `a(0)=0`
-/

namespace A348781.P9423977986044505561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A342585 (n + 1) + a (n - 1)) (A167499 n)

end

end A348781.P9423977986044505561

/-! ## A348781.P171604364065082575

`A342585(gcd(n, A008706(n))+1)+a(n-1)` with `a(0)=0`
-/

namespace A348781.P171604364065082575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A342585 (Int.gcd (n : ℤ) (A008706 n) + 1) + a (n - 1)

end

end A348781.P171604364065082575

/-! ## A348781.P890802604072501582

`A342585(n+1)+a(A008619(A004275(n))-1)` with `a(0)=0`
-/

namespace A348781.P890802604072501582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A342585 (n + 1) + a (A008619 (A004275 n).toNat - 1).toNat

end

end A348781.P890802604072501582

/-!
# A348782: Records in A342585.

The programs for A348782, there is no canonical definition to state claims against.
-/

/-! ## A348782.P10950643071741894750

`record[A342585(n+1)]`
-/

namespace A348782.P10950643071741894750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348782.P10950643071741894750

/-! ## A348782.P15642129063181595044

`A342585(A347305(n+1))`
-/

namespace A348782.P15642129063181595044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342585 (A347305 (n + 1)).toNat

end

end A348782.P15642129063181595044

/-! ## A348782.P4235828872112778804

`record[A348781(n+1)-A348781(A004277(n)-n)]`
-/

namespace A348782.P4235828872112778804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348781 (n + 1) - A348781 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348782.P4235828872112778804

/-! ## A348782.P6811635784419862385

`lt[A248156(n+4), A248175(A248164(n+1))]`
-/

namespace A348782.P6811635784419862385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248156 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248175 (A248164 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348782.P6811635784419862385

/-! ## A348782.P13931020423176069958

`lt[n, A107997(A051993(3*(n+1)))]`
-/

namespace A348782.P13931020423176069958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107997 (A051993 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348782.P13931020423176069958

/-!
# A348783: Let c(i) be the number of times the digit i appears in n, for 0 <= i <= 9; then a(n) is the concatenation of c(9) c(8) ... c(1) c(0), with leading 0's omitted.

The programs for A348783, the canonical program `A348783.P18337028565941183294` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348783 has offset 0).

The definition of A348783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348783.P18337028565941183294

`∑{digits}[n, 10^#]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A348783

/-- `∑{digits}[n, 10^#]` -/
def P18337028565941183294.Spec : Prop :=
  ∀ n, (P18337028565941183294.a n : ℤ) = A348783 n

theorem P18337028565941183294.correct : P18337028565941183294.Spec := by
  intro n
  simp only [A348783]

end A348783

/-! ## A348783.P18383502944754879884

`A054841(A359802(n))`
-/

namespace A348783.P18383502944754879884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A359802 n).toNat

end

end A348783.P18383502944754879884

namespace A348783

/-- `A054841(A359802(n))` -/
def P18383502944754879884.Spec : Prop :=
  ∀ n, P18383502944754879884.a n = A348783 n

end A348783

/-! ## A348783.P9515892416277932318

`A100909(A243836(n)+A061601(n))`
-/

namespace A348783.P9515892416277932318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100909 (A243836 n + A061601 n).toNat

end

end A348783.P9515892416277932318

namespace A348783

/-- `A100909(A243836(n)+A061601(n))` -/
def P9515892416277932318.Spec : Prop :=
  ∀ n, P9515892416277932318.a n = A348783 n

end A348783

/-! ## A348783.P2116663578844772584

`A100909(xor(A061601(n), A243836(n)))`
-/

namespace A348783.P2116663578844772584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100909 (Int.xor (A061601 n) (A243836 n)).toNat

end

end A348783.P2116663578844772584

namespace A348783

/-- `A100909(xor(A061601(n), A243836(n)))` -/
def P2116663578844772584.Spec : Prop :=
  ∀ n, P2116663578844772584.a n = A348783 n

end A348783

/-!
# A348784: Indices of primes in A347113.

The programs for A348784, there is no canonical definition to state claims against.
-/

/-! ## A348784.P1305920914919257762

`A347306(A348779(n+1))`
-/

namespace A348784.P1305920914919257762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (A348779 (n + 1)).toNat

end

end A348784.P1305920914919257762

/-! ## A348784.P5266726465307915420

`A347313(∏{d}[A348779(n+1), A026233(#)])`
-/

namespace A348784.P5266726465307915420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347313 (∏ d ∈ Nat.divisors (f1 n).natAbs, A026233 d).toNat

end

end A348784.P5266726465307915420

/-! ## A348784.P12046178015160687412

`A347306(A349405(n+1)/A349406(n+1))`
-/

namespace A348784.P12046178015160687412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (SequenceMachineLib.roundAway ((A349405 (n + 1) : ℚ) / (A349406 (n + 1) : ℚ))).toNat

end

end A348784.P12046178015160687412

/-! ## A348784.P11301593991595736845

`A347306(p?[A347113(n+1)])`
-/

namespace A348784.P11301593991595736845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A348784.P11301593991595736845

/-! ## A348784.P15022655868198310672

`A347306(A349405(n+1)-1)+1`
-/

namespace A348784.P15022655868198310672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (A349405 (n + 1) - 1).toNat + 1

end

end A348784.P15022655868198310672

/-! ## A348784.P13456838912057419503

`record[A347306(A014963(A347113(n+7)))]`
-/

namespace A348784.P13456838912057419503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (A014963 (A347113 (n + 7)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348784.P13456838912057419503

/-! ## A348784.P3861256332504905361

`eq[2, A000005(A347113(A233583(n+1)))]`
-/

namespace A348784.P3861256332504905361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A347113 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348784.P3861256332504905361

/-!
# A348785: Trajectory of 2 under repeated application of the map x -> A347113(x).

The programs for A348785, there is no canonical definition to state claims against.
-/

/-! ## A348785.P2174673694851068973

`A347113(a(n-1))` with `a(0)=2`
-/

namespace A348785.P2174673694851068973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A347113 (a (n - 1)).toNat

end

end A348785.P2174673694851068973

/-! ## A348785.P7208548919716255461

`A347113(A260196(3*(n+1))+a(A023443(n))+1)` with `a(0)=2`
-/

namespace A348785.P7208548919716255461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A347113 (A260196 (3 * (n + 1)) + a (A023443 n).toNat + 1).toNat

end

end A348785.P7208548919716255461

/-!
# A348786: Trajectory of 5 under repeated application of the map x -> A347113(x).

The programs for A348786, there is no canonical definition to state claims against.
-/

/-! ## A348786.P1700281363800956691

`A347113(a(n-1))` with `a(0)=5`
-/

namespace A348786.P1700281363800956691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A347113 (a (n - 1)).toNat

end

end A348786.P1700281363800956691

/-! ## A348786.P4670064471882260776

`A347113(A260196(3*(n+1))+a(A023443(n))+1)` with `a(0)=5`
-/

namespace A348786.P4670064471882260776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A347113 (A260196 (3 * (n + 1)) + a (A023443 n).toNat + 1).toNat

end

end A348786.P4670064471882260776

/-!
# A348787: Indices k such that (8/9)*k < A347113(k) < (5/4)*k.

The programs for A348787, there is no canonical definition to state claims against.
-/

/-! ## A348787.P5045212187134656705

`A347306(A348788(n+1))`
-/

namespace A348787.P5045212187134656705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (A348788 (n + 1)).toNat

end

end A348787.P5045212187134656705

/-!
# A348788: Values of A347113(k) for k in A348787.

The programs for A348788, there is no canonical definition to state claims against.
-/

/-! ## A348788.P13091973648535375049

`A347113(A348787(n+1))`
-/

namespace A348788.P13091973648535375049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (A348787 (n + 1)).toNat

end

end A348788.P13091973648535375049

/-!
# A348789: Number of ways to divide an n X n grid of squares into edge-connected polygons of equal area.

The programs for A348789, there is no canonical definition to state claims against.
-/

/-! ## A348789.P2860582248857082273

`A266189(A311633(n)^A004396(n))`
-/

namespace A348789.P2860582248857082273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266189 (SequenceMachineLib.roundAway ((A311633 n : ℚ) ^ (A004396 n : ℤ))).toNat

end

end A348789.P2860582248857082273

/-!
# A348790: a(n) is the smallest number that can be written as the sum of a prime number of consecutive primes in exactly n ways, or -1 if no such number exists.

The programs for A348790, there is no canonical definition to state claims against.
-/

/-! ## A348790.P1959103984808374106

`A033677(A348791(n))%A276024(3*n+2)`
-/

namespace A348790.P1959103984808374106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033677 (A348791 n).toNat) (A276024 (3 * n + 2))

end

end A348790.P1959103984808374106

/-!
# A348793: G.f. A(x) satisfies A(x) = (1 + x * A(x)^3) / (1 - 2 * x).

The programs for A348793, there is no canonical definition to state claims against.
-/

/-! ## A348793.P1658667349331536756

`A349609(A164039(n+1))`
-/

namespace A348793.P1658667349331536756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349609 (A164039 (n + 1)).toNat

end

end A348793.P1658667349331536756

/-!
# A348794: a(n) = number of 3-regular one-face rooted maps on orientable surfaces of genus n.

The programs for A348794, there is no canonical definition to state claims against.
-/

/-! ## A348794.P13434783628486940089

`A266240((n+2)²-2)`
-/

namespace A348794.P13434783628486940089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266240 ((n + 2) ^ 2 - 2)

end

end A348794.P13434783628486940089

/-! ## A348794.P5622016986916592294

`(2*n+1)*A202066(n+1)`
-/

namespace A348794.P5622016986916592294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A202066 (n + 1)

end

end A348794.P5622016986916592294

/-!
# A348799: Numbers that have the largest possible remainder when divided by their digit sum.

The programs for A348799, there is no canonical definition to state claims against.
-/

/-! ## A348799.P2255804801889019006

`record[and(79, A351464(n+1))]`
-/

namespace A348799.P2255804801889019006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 79 (A351464 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348799.P2255804801889019006

/-! ## A348799.P15159010774724760797

`record[A115026(n+1)]%97`
-/

namespace A348799.P15159010774724760797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 97

end

end A348799.P15159010774724760797

/-! ## A348799.P7591341082295425477

`record[A262522(a(floor(n/10)))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=3, a(5)=4, a(6)=5, a(7)=6, a(8)=7, a(9)=8, a(10)=9`
-/

namespace A348799.P7591341082295425477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9] fun n f1 =>
  A262522 (f1 ⌊(n : ℚ) / 10⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348799.P7591341082295425477

/-! ## A348799.P12723336894088405582

`A056961(A061805(n+1))`
-/

namespace A348799.P12723336894088405582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056961 (A061805 (n + 1)).toNat

end

end A348799.P12723336894088405582

/-! ## A348799.P1699295743779699993

`A138234(A121535(n+1))`
-/

namespace A348799.P1699295743779699993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138234 (A121535 (n + 1)).toNat

end

end A348799.P1699295743779699993

