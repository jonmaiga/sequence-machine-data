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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
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
# A145004: Values of n at which the number of roots of the function x+n*cos(x) increases.

The programs for A145004, there is no canonical definition to state claims against.
-/

/-! ## A145004.P949500448771562058

`ceil(π*n-char[1])`
-/

namespace A145004.P949500448771562058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * (n : ℝ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A145004.P949500448771562058

/-! ## A145004.P14974245215355029682

`floor(π*n)+floor(atan(n))`
-/

namespace A145004.P14974245215355029682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n : ℝ)⌋ + ⌊Real.arctan (n : ℝ)⌋

end

end A145004.P14974245215355029682

/-! ## A145004.P16889141721532929701

`round(ceil(π*n)*tanh(n))`
-/

namespace A145004.P16889141721532929701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌈Real.pi * (n : ℝ)⌉ : ℝ) * Real.tanh (n : ℝ))

end

end A145004.P16889141721532929701

/-! ## A145004.P16078868502598702165

`ceil((n-1)*exp(cot(7)))+3`
-/

namespace A145004.P16078868502598702165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℝ) * Real.exp (Real.cot (7 : ℝ))⌉ + 3

end

end A145004.P16078868502598702165

/-! ## A145004.P11655495506271204933

`ceil(2*n*acos(0))-char[1]`
-/

namespace A145004.P11655495506271204933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((n : ℝ) * Real.arccos (0 : ℝ))⌉ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A145004.P11655495506271204933

/-!
# A145005: Values of k at which the number of roots of the function x + k*sin(x) increases.

The programs for A145005, there is no canonical definition to state claims against.
-/

/-! ## A145005.P10090828629617188646

`A057358(A017485(n))+1`
-/

namespace A145005.P10090828629617188646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 (A017485 n).toNat + 1

end

end A145005.P10090828629617188646

/-! ## A145005.P13598754760790154959

`A257984(A122080(n+1))`
-/

namespace A145005.P13598754760790154959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 (A122080 (n + 1)).toNat

end

end A145005.P13598754760790154959

/-! ## A145005.P542650006556187569

`A277136(A047573(n+2))`
-/

namespace A145005.P542650006556187569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277136 (A047573 (n + 2)).toNat

end

end A145005.P542650006556187569

/-! ## A145005.P5518615289415686018

`A262681(n)+A246394(n)`
-/

namespace A145005.P5518615289415686018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 n + A246394 n

end

end A145005.P5518615289415686018

/-! ## A145005.P14570401496110120646

`A304042(n)+A246394(n)`
-/

namespace A145005.P14570401496110120646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 n + A246394 n

end

end A145005.P14570401496110120646

/-! ## A145005.P4942143429961492487

`A361338(n)+A246394(n)`
-/

namespace A145005.P4942143429961492487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361338 n + A246394 n

end

end A145005.P4942143429961492487

/-! ## A145005.P9799123436584582750

`A246394(n)+A133707(n+1)`
-/

namespace A145005.P9799123436584582750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246394 n + A133707 (n + 1)

end

end A145005.P9799123436584582750

/-! ## A145005.P9643816046442605121

`A246394(n)+A239700(n+1)`
-/

namespace A145005.P9643816046442605121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246394 n + A239700 (n + 1)

end

end A145005.P9643816046442605121

/-!
# A145006: Triangle read by rows, generator for the partition numbers, A000041.

The programs for A145006, there is no canonical definition to state claims against.
-/

/-! ## A145006.P17733046347419948428

`A257628(C(comp[∑[n]]-n, 2)-(n+1))^n^(char[n²]/2)`
-/

namespace A145006.P17733046347419948428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A257628 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) : ℝ) ^ ((n : ℝ) ^ (((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℚ) / 2 : ℝ))

end

end A145006.P17733046347419948428

/-! ## A145006.P422987594885445834

`A257628(gcd(C(3, n), A025581(n)))`
-/

namespace A145006.P422987594885445834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 (Int.gcd (Nat.choose 3 n : ℤ) (A025581 n))

end

end A145006.P422987594885445834

/-! ## A145006.P17230218118893776744

`A257628(A025581(floor(acot(n)+n)))`
-/

namespace A145006.P17230218118893776744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 (A025581 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat).toNat

end

end A145006.P17230218118893776744

/-! ## A145006.P18090084785657097289

`A257628(A004736(n+1)-floor(atan(n)))`
-/

namespace A145006.P18090084785657097289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 (A004736 (n + 1) - ⌊Real.arctan (n : ℝ)⌋).toNat

end

end A145006.P18090084785657097289

/-! ## A145006.P17853692347537608158

`A257628(A004736(n+1)-ceil(n/(n+1)))`
-/

namespace A145006.P17853692347537608158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 (A004736 (n + 1) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉).toNat

end

end A145006.P17853692347537608158

/-! ## A145006.P13134629808622359640

`A257628(A025581(A000007(n)+n))`
-/

namespace A145006.P13134629808622359640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 (A025581 (A000007 n + (n : ℤ)).toNat).toNat

end

end A145006.P13134629808622359640

/-! ## A145006.P8178852610443367243

`A257628(A025581(n)+A000038(n))`
-/

namespace A145006.P8178852610443367243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 (A025581 n + A000038 n).toNat

end

end A145006.P8178852610443367243

/-! ## A145006.P8174350406477861089

`A257628(or(A000007(n), A025581(n)))`
-/

namespace A145006.P8174350406477861089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 (Int.lor (A000007 n) (A025581 n)).toNat

end

end A145006.P8174350406477861089

/-! ## A145006.P7103828107147237362

`A257628(xor(A000007(n), A025581(n)))`
-/

namespace A145006.P7103828107147237362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 (Int.xor (A000007 n) (A025581 n)).toNat

end

end A145006.P7103828107147237362

/-!
# A145007: Eigentriangle of the partition numbers.

The programs for A145007, there is no canonical definition to state claims against.
-/

/-! ## A145007.P12521726513267440787

`A014149(A007678(n+1)*A190164(n))*A140207(n)`
-/

namespace A145007.P12521726513267440787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014149 (A007678 (n + 1) * A190164 n).toNat * A140207 n

end

end A145007.P12521726513267440787

/-! ## A145007.P7590280222674883261

`A010815(A005900(n)*A180760(n+3))*A140207(n)`
-/

namespace A145007.P7590280222674883261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A005900 n * A180760 (n + 3)).toNat * A140207 n

end

end A145007.P7590280222674883261

/-! ## A145007.P4132182139998003113

`C(A144328(n+1), A219206(n+2)!)`
-/

namespace A145007.P4132182139998003113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A144328 (n + 1)).toNat (Nat.factorial (A219206 (n + 2)).toNat)

end

end A145007.P4132182139998003113

/-! ## A145007.P17402801382058105132

`A000045(A153869(n+1)+A028240(n))`
-/

namespace A145007.P17402801382058105132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A153869 (n + 1) + A028240 n).toNat

end

end A145007.P17402801382058105132

/-! ## A145007.P17922736436461515410

`A378087(A153670(n+1)+A023360(n))`
-/

namespace A145007.P17922736436461515410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378087 (A153670 (n + 1) + A023360 n).toNat

end

end A145007.P17922736436461515410

/-!
# A145008: Reduced numerators of the convergents to 2 = sqrt(4) using the recursion x -> (4/x + x)/2.

The programs for A145008, there is no canonical definition to state claims against.
-/

/-! ## A145008.P6184754985399597087

`ceil(9^2^n/2)`
-/

namespace A145008.P6184754985399597087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(9 ^ 2 ^ n : ℚ) / 2⌉

end

end A145008.P6184754985399597087

/-! ## A145008.P4399345673728003377

`4*C(a(n-1), 2)+1` with `a(0)=5`
-/

namespace A145008.P4399345673728003377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  4 * Nat.choose (a (n - 1)) 2 + 1

end

end A145008.P4399345673728003377

/-! ## A145008.P211069650624478181

`(9^∏{digits}[n, 2^#]+1)/2`
-/

namespace A145008.P211069650624478181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod + 1 : ℚ) / 2

end

end A145008.P211069650624478181

/-!
# A145009: Array read by antidiagonals: array of odd integers found in |A144912| with axes b = {4, 6, 8, ...} and n = {b^2, b^4, b^6, ...}.

The programs for A145009, there is no canonical definition to state claims against.
-/

/-! ## A145009.P7156947613267640402

`2*A159919(n+1)-1`
-/

namespace A145009.P7156947613267640402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159919 (n + 1) - 1

end

end A145009.P7156947613267640402

/-! ## A145009.P9574633012535721760

`2*A309557(comp[∑[n-1]])-3`
-/

namespace A145009.P9574633012535721760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309557 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 3

end

end A145009.P9574633012535721760

/-! ## A145009.P3914585735139815046

`A204250(Δ[n²]+(n-comp[∑[n]])²)+1`
-/

namespace A145009.P3914585735139815046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204250 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)) ^ 2).toNat + 1

end

end A145009.P3914585735139815046

/-! ## A145009.P10975104289169565026

`A004273(A159919(n+1))`
-/

namespace A145009.P10975104289169565026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A159919 (n + 1)).toNat

end

end A145009.P10975104289169565026

/-! ## A145009.P10850439649885035453

`A116528(A084468(n+1))`
-/

namespace A145009.P10850439649885035453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116528 (A084468 (n + 1)).toNat

end

end A145009.P10850439649885035453

/-! ## A145009.P15326320779001399477

`A001650(A159919(n+1)²)`
-/

namespace A145009.P15326320779001399477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A159919 (n + 1) ^ 2).toNat

end

end A145009.P15326320779001399477

/-! ## A145009.P6748143950720622318

`A055086(A159919(n+1)²)`
-/

namespace A145009.P6748143950720622318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A159919 (n + 1) ^ 2).toNat

end

end A145009.P6748143950720622318

/-! ## A145009.P12381799512492698306

`A060018(A159919(n+1)²)`
-/

namespace A145009.P12381799512492698306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (A159919 (n + 1) ^ 2).toNat

end

end A145009.P12381799512492698306

/-! ## A145009.P16354133453836862349

`A004274(A159919(n+1)+1)`
-/

namespace A145009.P16354133453836862349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A159919 (n + 1) + 1).toNat

end

end A145009.P16354133453836862349

/-! ## A145009.P9331335219927527523

`A004280(A159919(n+1)+1)`
-/

namespace A145009.P9331335219927527523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A159919 (n + 1) + 1).toNat

end

end A145009.P9331335219927527523

/-!
# A145010: a(n) = area of Pythagorean triangle with hypotenuse p, where p = A002144(n) = n-th prime == 1 (mod 4).

The programs for A145010, there is no canonical definition to state claims against.
-/

/-! ## A145010.P2779096742688290234

`A002365(n+1)*A002366(n+1)/2`
-/

namespace A145010.P2779096742688290234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002365 (n + 1) * A002366 (n + 1) : ℚ) / 2

end

end A145010.P2779096742688290234

/-! ## A145010.P7726060790648039464

`A070079(n+1)*A145019(n+1)`
-/

namespace A145010.P7726060790648039464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070079 (n + 1) * A145019 (n + 1)

end

end A145010.P7726060790648039464

/-! ## A145010.P4714613076147771893

`A070079(n+1)/2*A145046(n)`
-/

namespace A145010.P4714613076147771893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070079 (n + 1) : ℚ) / 2 * (A145046 n : ℚ)

end

end A145010.P4714613076147771893

/-! ## A145010.P16225005365443085921

`2*A070079(n+1)*A070151(n+1)`
-/

namespace A145010.P16225005365443085921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A070079 (n + 1) * A070151 (n + 1))

end

end A145010.P16225005365443085921

/-! ## A145010.P10651128987623505088

`lcm(A070079(n+1), A145019(A000027(n+1)))`
-/

namespace A145010.P10651128987623505088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A070079 (n + 1)) (A145019 (A000027 (n + 1)).toNat)

end

end A145010.P10651128987623505088

/-! ## A145010.P14975162016543202609

`A002330(n+2)*A070079(n+1)*A002331(n+2)`
-/

namespace A145010.P14975162016543202609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (n + 2) * A070079 (n + 1) * A002331 (n + 2)

end

end A145010.P14975162016543202609

/-! ## A145010.P5471422775371721741

`A005843(A070151(n+1))*A070079(n+1)`
-/

namespace A145010.P5471422775371721741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A070151 (n + 1)).toNat * A070079 (n + 1)

end

end A145010.P5471422775371721741

/-! ## A145010.P17829782611120020575

`A054435(A002144(n+1))`
-/

namespace A145010.P17829782611120020575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054435 (A002144 (n + 1)).toNat

end

end A145010.P17829782611120020575

/-! ## A145010.P16747971024156561315

`A054435(A002313(n+2))`
-/

namespace A145010.P16747971024156561315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054435 (A002313 (n + 2)).toNat

end

end A145010.P16747971024156561315

/-! ## A145010.P17207764743689572162

`A054435(A280084(n+2))`
-/

namespace A145010.P17207764743689572162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054435 (A280084 (n + 2)).toNat

end

end A145010.P17207764743689572162

/-!
# A145011: First differences of A007775.

The programs for A145011, the canonical program `A145011.P14480014548098344672` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145011 has offset 1).

The definition of A145011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145011.P14480014548098344672

`record[lcm(60, n+7)/60]-A007775(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A145011

/-- `record[lcm(60, n+7)/60]-A007775(n+1)` -/
def P14480014548098344672.Spec : Prop :=
  ∀ n, P14480014548098344672.a n = (A145011 (n + 1) : ℚ)

end A145011

/-!
# A145012: Half the number of n X n nonnegative integer arrays with every 2 X 2 subblock summing to 2.

The programs for A145012, there is no canonical definition to state claims against.
-/

/-! ## A145012.P5702273409560981866

`A235281(n+1)/4`
-/

namespace A145012.P5702273409560981866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235281 (n + 1) : ℚ) / 4

end

end A145012.P5702273409560981866

/-! ## A145012.P6234022133510827214

`A235289(∑[4*n]+1)/4`
-/

namespace A145012.P6234022133510827214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235289 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 4

end

end A145012.P6234022133510827214

/-! ## A145012.P10554987812902679926

`lcm(2, A235289(A001844(n)))/4`
-/

namespace A145012.P10554987812902679926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A235289 (A001844 n).toNat) : ℚ) / 4

end

end A145012.P10554987812902679926

/-! ## A145012.P10873197905824813539

`record[A235289(A003602((n+1)²))/4]`
-/

namespace A145012.P10873197905824813539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235289 (A003602 ((n + 1) ^ 2)).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145012.P10873197905824813539

/-! ## A145012.P8786409489617456283

`record[gcd(A049581(n), A235289(n+1))]/4`
-/

namespace A145012.P8786409489617456283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A235289 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4

end

end A145012.P8786409489617456283

/-!
# A145013: One quarter of the number of n X n nonnegative integer arrays with every 2 X 2 subblock summing to 3.

The programs for A145013, there is no canonical definition to state claims against.
-/

/-! ## A145013.P9590984940781156910

`A235270(n+1)/8`
-/

namespace A145013.P9590984940781156910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235270 (n + 1) : ℚ) / 8

end

end A145013.P9590984940781156910

/-! ## A145013.P11036275034849531704

`A235280(∑[4*n]+1)/8`
-/

namespace A145013.P11036275034849531704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235280 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 8

end

end A145013.P11036275034849531704

/-! ## A145013.P12503190434403576540

`lcm(2, A235280(A001844(n)))/8`
-/

namespace A145013.P12503190434403576540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A235280 (A001844 n).toNat) : ℚ) / 8

end

end A145013.P12503190434403576540

/-! ## A145013.P15552568617863168999

`lcm(4, A235280(∑[A008574(n)]))/8`
-/

namespace A145013.P15552568617863168999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A235280 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) : ℚ) / 8

end

end A145013.P15552568617863168999

/-! ## A145013.P17684014152315102515

`record[A235280(A001844(∑{digits}[n, #]))]/8`
-/

namespace A145013.P17684014152315102515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (A001844 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 8

end

end A145013.P17684014152315102515

/-!
# A145014: Number of n X n nonnegative integer arrays with every 2 X 2 subblock summing to 4.

The programs for A145014, there is no canonical definition to state claims against.
-/

/-! ## A145014.P6906594480328050495

`A235302(n+1)/2`
-/

namespace A145014.P6906594480328050495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235302 (n + 1) : ℚ) / 2

end

end A145014.P6906594480328050495

/-! ## A145014.P4917490384723401298

`A235310(∑[4*n]+1)/2`
-/

namespace A145014.P4917490384723401298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235310 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2

end

end A145014.P4917490384723401298

/-! ## A145014.P765566386611863130

`record[A235302(A141256(n))/2]`
-/

namespace A145014.P765566386611863130
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235302 (A141256 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145014.P765566386611863130

/-! ## A145014.P12876235267259442492

`record[A235302(A193592(n))/2]`
-/

namespace A145014.P12876235267259442492
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235302 (A193592 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145014.P12876235267259442492

/-! ## A145014.P18064245129648338060

`lcm(2, A235310(A001844(n)))/2`
-/

namespace A145014.P18064245129648338060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A235310 (A001844 n).toNat) : ℚ) / 2

end

end A145014.P18064245129648338060

/-!
# A145015: Run lengths in A037861 having the same sign.

The programs for A145015, there is no canonical definition to state claims against.
-/

/-! ## A145015.P13224361816411278524

`A325765(A063755(n+1)+A010018(n))`
-/

namespace A145015.P13224361816411278524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 (A063755 (n + 1) + A010018 n).toNat

end

end A145015.P13224361816411278524

/-! ## A145015.P14558204972176825511

`A004611(n+1)%A145339(A003627(n+1))`
-/

namespace A145015.P14558204972176825511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004611 (n + 1)) (A145339 (A003627 (n + 1)).toNat)

end

end A145015.P14558204972176825511

/-! ## A145015.P17005852526985822786

`A005808(A069776(n+1))%8`
-/

namespace A145015.P17005852526985822786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005808 (A069776 (n + 1)).toNat) 8

end

end A145015.P17005852526985822786

/-! ## A145015.P8582176986837875491

`A147242(A099049(n+1))%8`
-/

namespace A145015.P8582176986837875491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147242 (A099049 (n + 1)).toNat) 8

end

end A145015.P8582176986837875491

/-! ## A145015.P4383556674532047456

`or(1, A344088(A056493(n+1)))`
-/

namespace A145015.P4383556674532047456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A344088 (A056493 (n + 1)).toNat)

end

end A145015.P4383556674532047456

/-!
# A145016: Primes p of the form 4k+1 for which p - floor(sqrt(p))^2 is a square.

The programs for A145016, the canonical program `A145016.P7226238084777437609` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145016 has offset 1).

The definition of A145016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145016.P7226238084777437609

`p?[A263651(n+2)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A145016

/-- `p?[A263651(n+2)]` -/
def P7226238084777437609.Spec : Prop :=
  ∀ n, P7226238084777437609.a n = A145016 (n + 1)

theorem P7226238084777437609.correct : P7226238084777437609.Spec := by
  intro n
  simp only [A145016, Nat.add_sub_cancel]

end A145016

/-! ## A145016.P7817793975930391466

`∩[A002144(n+1), A263651(n+1)]`
-/

namespace A145016.P7817793975930391466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145016.P7817793975930391466

namespace A145016

/-- `∩[A002144(n+1), A263651(n+1)]` -/
def P7817793975930391466.Spec : Prop :=
  ∀ n, (P7817793975930391466.a n : ℤ) = A145016 (n + 1)

end A145016

/-! ## A145016.P971747375496379848

`∩[A263651(n+1), A280084(n+1)]`
-/

namespace A145016.P971747375496379848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145016.P971747375496379848

namespace A145016

/-- `∩[A263651(n+1), A280084(n+1)]` -/
def P971747375496379848.Spec : Prop :=
  ∀ n, (P971747375496379848.a n : ℤ) = A145016 (n + 1)

end A145016

/-! ## A145016.P1030913814085725243

`∩[A049092(n+1), A263651(n+1)]`
-/

namespace A145016.P1030913814085725243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145016.P1030913814085725243

namespace A145016

/-- `∩[A049092(n+1), A263651(n+1)]` -/
def P1030913814085725243.Spec : Prop :=
  ∀ n, (P1030913814085725243.a n : ℤ) = A145016 (n + 1)

end A145016

/-! ## A145016.P6642117290220488555

`∩[A045403(n+1), A263651(n+1)]`
-/

namespace A145016.P6642117290220488555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145016.P6642117290220488555

namespace A145016

/-- `∩[A045403(n+1), A263651(n+1)]` -/
def P6642117290220488555.Spec : Prop :=
  ∀ n, (P6642117290220488555.a n : ℤ) = A145016 (n + 1)

end A145016

/-! ## A145016.P13330670312883234822

`∩[A045442(n+1), A263651(n+1)]`
-/

namespace A145016.P13330670312883234822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145016.P13330670312883234822

namespace A145016

/-- `∩[A045442(n+1), A263651(n+1)]` -/
def P13330670312883234822.Spec : Prop :=
  ∀ n, (P13330670312883234822.a n : ℤ) = A145016 (n + 1)

end A145016

/-! ## A145016.P109905484006136150

`∩[A006005(n+1), A263651(n+1)]`
-/

namespace A145016.P109905484006136150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145016.P109905484006136150

namespace A145016

/-- `∩[A006005(n+1), A263651(n+1)]` -/
def P109905484006136150.Spec : Prop :=
  ∀ n, (P109905484006136150.a n : ℤ) = A145016 (n + 1)

end A145016

/-! ## A145016.P6178929008697822907

`∩[A065091(n+1), A263651(n+1)]`
-/

namespace A145016.P6178929008697822907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145016.P6178929008697822907

namespace A145016

/-- `∩[A065091(n+1), A263651(n+1)]` -/
def P6178929008697822907.Spec : Prop :=
  ∀ n, (P6178929008697822907.a n : ℤ) = A145016 (n + 1)

end A145016

/-! ## A145016.P13494089000704745354

`∩[A065396(n+1), A263651(n+1)]`
-/

namespace A145016.P13494089000704745354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145016.P13494089000704745354

namespace A145016

/-- `∩[A065396(n+1), A263651(n+1)]` -/
def P13494089000704745354.Spec : Prop :=
  ∀ n, (P13494089000704745354.a n : ℤ) = A145016 (n + 1)

end A145016

/-! ## A145016.P8293237160893131038

`∩[A083249(n+1), A263651(n+1)]`
-/

namespace A145016.P8293237160893131038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145016.P8293237160893131038

namespace A145016

/-- `∩[A083249(n+1), A263651(n+1)]` -/
def P8293237160893131038.Spec : Prop :=
  ∀ n, (P8293237160893131038.a n : ℤ) = A145016 (n + 1)

end A145016

/-! ## A145016.P601626688086948160

`∩[A140475(n+1), A263651(n+1)]`
-/

namespace A145016.P601626688086948160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145016.P601626688086948160

namespace A145016

/-- `∩[A140475(n+1), A263651(n+1)]` -/
def P601626688086948160.Spec : Prop :=
  ∀ n, (P601626688086948160.a n : ℤ) = A145016 (n + 1)

end A145016

/-! ## A145016.P15206371369223936797

`∩[A171577(n+1), A263651(n+1)]`
-/

namespace A145016.P15206371369223936797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145016.P15206371369223936797

namespace A145016

/-- `∩[A171577(n+1), A263651(n+1)]` -/
def P15206371369223936797.Spec : Prop :=
  ∀ n, (P15206371369223936797.a n : ℤ) = A145016 (n + 1)

end A145016

/-! ## A145016.P9501317039891608880

`A000040(eq[0, A053186(A056892(n+2))]+2)`
-/

namespace A145016.P9501317039891608880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A056892 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A145016.P9501317039891608880

namespace A145016

/-- `A000040(eq[0, A053186(A056892(n+2))]+2)` -/
def P9501317039891608880.Spec : Prop :=
  ∀ n, P9501317039891608880.a n = A145016 (n + 1)

end A145016

/-! ## A145016.P4491208448217286921

`∩[A161346(n+1), A263651(n+1)]`
-/

namespace A145016.P4491208448217286921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145016.P4491208448217286921

namespace A145016

/-- `∩[A161346(n+1), A263651(n+1)]` -/
def P4491208448217286921.Spec : Prop :=
  ∀ n, (P4491208448217286921.a n : ℤ) = A145016 (n + 1)

end A145016

/-! ## A145016.P11410514671948189131

`∩[A193339(n+1), A263651(n+1)]`
-/

namespace A145016.P11410514671948189131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145016.P11410514671948189131

namespace A145016

/-- `∩[A193339(n+1), A263651(n+1)]` -/
def P11410514671948189131.Spec : Prop :=
  ∀ n, (P11410514671948189131.a n : ℤ) = A145016 (n + 1)

end A145016

/-! ## A145016.P572453026443833521

`∩[A210494(n+1), A263651(n+1)]`
-/

namespace A145016.P572453026443833521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145016.P572453026443833521

namespace A145016

/-- `∩[A210494(n+1), A263651(n+1)]` -/
def P572453026443833521.Spec : Prop :=
  ∀ n, (P572453026443833521.a n : ℤ) = A145016 (n + 1)

end A145016

/-! ## A145016.P15945531962893657013

`∩[A227231(n+1), A263651(n+1)]`
-/

namespace A145016.P15945531962893657013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145016.P15945531962893657013

namespace A145016

/-- `∩[A227231(n+1), A263651(n+1)]` -/
def P15945531962893657013.Spec : Prop :=
  ∀ n, (P15945531962893657013.a n : ℤ) = A145016 (n + 1)

end A145016

/-! ## A145016.P14728094705884743004

`∩[A050150(n+1), A263651(n+1)]`
-/

namespace A145016.P14728094705884743004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145016.P14728094705884743004

namespace A145016

/-- `∩[A050150(n+1), A263651(n+1)]` -/
def P14728094705884743004.Spec : Prop :=
  ∀ n, (P14728094705884743004.a n : ℤ) = A145016 (n + 1)

end A145016

/-! ## A145016.P3684198255468939433

`∩[A062090(n+1), A263651(n+1)]`
-/

namespace A145016.P3684198255468939433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145016.P3684198255468939433

namespace A145016

/-- `∩[A062090(n+1), A263651(n+1)]` -/
def P3684198255468939433.Spec : Prop :=
  ∀ n, (P3684198255468939433.a n : ℤ) = A145016 (n + 1)

end A145016

/-! ## A145016.P10107608807090612532

`∩[A081735(n+1), A263651(n+1)]`
-/

namespace A145016.P10107608807090612532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145016.P10107608807090612532

namespace A145016

/-- `∩[A081735(n+1), A263651(n+1)]` -/
def P10107608807090612532.Spec : Prop :=
  ∀ n, (P10107608807090612532.a n : ℤ) = A145016 (n + 1)

end A145016

/-!
# A145017: Squarefree positive integers k for which k-(floor(sqrt(k)))^2 is a perfect square.

The programs for A145017, the canonical program `A145017.P13290880054075597946` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145017 has offset 1).

The definition of A145017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 523 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145017.P11031091905438428276

`record[A007913(n+1)/A245474(n+1)]`
-/

namespace A145017.P11031091905438428276
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A245474 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145017.P11031091905438428276

namespace A145017

/-- `record[A007913(n+1)/A245474(n+1)]` -/
def P11031091905438428276.Spec : Prop :=
  ∀ n, P11031091905438428276.a n = (A145017 (n + 1) : ℚ)

end A145017

/-! ## A145017.P2662447713284491152

`record[root(A007947(n+1), A245474(n+1))]`
-/

namespace A145017.P2662447713284491152
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℝ) ^ (1 / (A245474 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145017.P2662447713284491152

namespace A145017

/-- `record[root(A007947(n+1), A245474(n+1))]` -/
def P2662447713284491152.Spec : Prop :=
  ∀ n, P2662447713284491152.a n = (A145017 (n + 1) : ℝ)

end A145017

/-! ## A145017.P11411036959506476041

`record[root(A056554(n+1), A245474(n+1))]`
-/

namespace A145017.P11411036959506476041
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056554 (n + 1) : ℝ) ^ (1 / (A245474 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145017.P11411036959506476041

namespace A145017

/-- `record[root(A056554(n+1), A245474(n+1))]` -/
def P11411036959506476041.Spec : Prop :=
  ∀ n, P11411036959506476041.a n = (A145017 (n + 1) : ℝ)

end A145017

/-! ## A145017.P13916521206502718389

`record[root(A071975(n+1), A245474(n+1))]`
-/

namespace A145017.P13916521206502718389
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A071975 (n + 1) : ℝ) ^ (1 / (A245474 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145017.P13916521206502718389

namespace A145017

/-- `record[root(A071975(n+1), A245474(n+1))]` -/
def P13916521206502718389.Spec : Prop :=
  ∀ n, P13916521206502718389.a n = (A145017 (n + 1) : ℝ)

end A145017

/-! ## A145017.P7374807132295856326

`eq[A245474(n), A323239(A026741(n))]`
-/

namespace A145017.P7374807132295856326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245474 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A026741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145017.P7374807132295856326

namespace A145017

/-- `eq[A245474(n), A323239(A026741(n))]` -/
def P7374807132295856326.Spec : Prop :=
  ∀ n, (P7374807132295856326.a n : ℤ) = A145017 (n + 1)

end A145017

/-! ## A145017.P13290880054075597946

`record[A007913(n+1)/A007913(A071797(n+1))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A145017

/-- `record[A007913(n+1)/A007913(A071797(n+1))]` -/
def P13290880054075597946.Spec : Prop :=
  ∀ n, P13290880054075597946.a n = (A145017 (n + 1) : ℚ)

end A145017

/-! ## A145017.P8826146482182775221

`record[A007947(n+1)/A071975(A071797(n+1))]`
-/

namespace A145017.P8826146482182775221
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A071975 (A071797 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145017.P8826146482182775221

namespace A145017

/-- `record[A007947(n+1)/A071975(A071797(n+1))]` -/
def P8826146482182775221.Spec : Prop :=
  ∀ n, P8826146482182775221.a n = (A145017 (n + 1) : ℚ)

end A145017

/-! ## A145017.P4046070311281940396

`record[A071975(n+1)/A071975(A071797(n+1))]`
-/

namespace A145017.P4046070311281940396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071975 (n + 1) : ℚ) / (A071975 (A071797 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145017.P4046070311281940396

namespace A145017

/-- `record[A071975(n+1)/A071975(A071797(n+1))]` -/
def P4046070311281940396.Spec : Prop :=
  ∀ n, P4046070311281940396.a n = (A145017 (n + 1) : ℚ)

end A145017

/-!
# A145018: a(n) = (n^2 - n + 8)/2.

The programs for A145018, the canonical program `A145018.P7943709918651486940` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145018 has offset 1).

The definition of A145018 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)²-(n+1)+8)/2` (program `A145018.P11092348663546029172`, by `A145018.P11092348663546029172.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145018.P10850230809932510048

`4+C(n+1, 2)`
-/

namespace A145018.P10850230809932510048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 + Nat.choose (n + 1) 2

end

end A145018.P10850230809932510048

namespace A145018

/-- `4+C(n+1, 2)` -/
def P10850230809932510048.Spec : Prop :=
  ∀ n, (P10850230809932510048.a n : ℤ) = A145018 (n + 1)

end A145018

/-! ## A145018.P7943709918651486940

`a(n-1)+n` with `a(0)=4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145018

/-- `a(n-1)+n` -/
def P7943709918651486940.Spec : Prop :=
  ∀ n, (P7943709918651486940.a n : ℤ) = A145018 (n + 1)

theorem P7943709918651486940.correct : P7943709918651486940.Spec := by
  intro n
  simp only [A145018, Nat.add_sub_cancel]

end A145018

/-! ## A145018.P11092348663546029172

`((n+1)²-(n+1)+8)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145018.P11092348663546029172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 8 : ℚ) / 2

end

end A145018.P11092348663546029172

namespace A145018

/-- `((n+1)²-(n+1)+8)/2` -/
def P11092348663546029172.Spec : Prop :=
  ∀ n, P11092348663546029172.a n = (A145018 (n + 1) : ℚ)

theorem P11092348663546029172.correct : P11092348663546029172.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A145018, Nat.add_sub_cancel, A145018.P11092348663546029172.a, A145018.P7943709918651486940.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A145018, Nat.add_sub_cancel, A145018.P11092348663546029172.a, A145018.P7943709918651486940.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A145018

/-! ## A145018.P2018587747651223854

`4+A000217(n)`
-/

namespace A145018.P2018587747651223854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + A000217 n

end

end A145018.P2018587747651223854

namespace A145018

/-- `4+A000217(n)` -/
def P2018587747651223854.Spec : Prop :=
  ∀ n, P2018587747651223854.a n = A145018 (n + 1)

end A145018

/-! ## A145018.P5531439576551137073

`3-xor(-1, ∑[n])`
-/

namespace A145018.P5531439576551137073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A145018.P5531439576551137073

namespace A145018

/-- `3-xor(-1, ∑[n])` -/
def P5531439576551137073.Spec : Prop :=
  ∀ n, P5531439576551137073.a n = A145018 (n + 1)

end A145018

/-! ## A145018.P18313625373051676416

`∑[n]+acos(cos(2))²`
-/

namespace A145018.P18313625373051676416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.arccos (Real.cos (2 : ℝ)) ^ 2

end

end A145018.P18313625373051676416

namespace A145018

/-- `∑[n]+acos(cos(2))²` -/
def P18313625373051676416.Spec : Prop :=
  ∀ n, P18313625373051676416.a n = (A145018 (n + 1) : ℝ)

end A145018

/-! ## A145018.P15100053119636950546

`-xor(∑[n]+3, -1)`
-/

namespace A145018.P15100053119636950546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℤ) (-1)

end

end A145018.P15100053119636950546

namespace A145018

/-- `-xor(∑[n]+3, -1)` -/
def P15100053119636950546.Spec : Prop :=
  ∀ n, P15100053119636950546.a n = A145018 (n + 1)

end A145018

/-! ## A145018.P14004651443379661834

`∑[n]+3/sinh(log(2))`
-/

namespace A145018.P14004651443379661834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + 3 / Real.sinh (Real.log (2 : ℝ))

end

end A145018.P14004651443379661834

namespace A145018

/-- `∑[n]+3/sinh(log(2))` -/
def P14004651443379661834.Spec : Prop :=
  ∀ n, P14004651443379661834.a n = (A145018 (n + 1) : ℝ)

end A145018

/-! ## A145018.P8656520194116975325

`∑[n]+3*sinh(log(3))`
-/

namespace A145018.P8656520194116975325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + 3 * Real.sinh (Real.log (3 : ℝ))

end

end A145018.P8656520194116975325

namespace A145018

/-- `∑[n]+3*sinh(log(3))` -/
def P8656520194116975325.Spec : Prop :=
  ∀ n, P8656520194116975325.a n = (A145018 (n + 1) : ℝ)

end A145018

/-! ## A145018.P6367189906210979829

`ceil(1/acot(∑[n]+3))`
-/

namespace A145018.P6367189906210979829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℝ)⌉

end

end A145018.P6367189906210979829

namespace A145018

/-- `ceil(1/acot(∑[n]+3))` -/
def P6367189906210979829.Spec : Prop :=
  ∀ n, P6367189906210979829.a n = A145018 (n + 1)

end A145018

/-! ## A145018.P11625625633206917950

`∑[round(1/acot(n))]+3`
-/

namespace A145018.P11625625633206917950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A145018.P11625625633206917950

namespace A145018

/-- `∑[round(1/acot(n))]+3` -/
def P11625625633206917950.Spec : Prop :=
  ∀ n, P11625625633206917950.a n = A145018 (n + 1)

end A145018

/-! ## A145018.P17524199539028542416

`acos(cos(1))+∑[n]+3`
-/

namespace A145018.P17524199539028542416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arccos (Real.cos (1 : ℝ)) + ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℝ)

end

end A145018.P17524199539028542416

namespace A145018

/-- `acos(cos(1))+∑[n]+3` -/
def P17524199539028542416.Spec : Prop :=
  ∀ n, P17524199539028542416.a n = (A145018 (n + 1) : ℝ)

end A145018

/-! ## A145018.P1334694583143126610

`asin(sin(1))+∑[n]+3`
-/

namespace A145018.P1334694583143126610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arcsin (Real.sin (1 : ℝ)) + ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℝ)

end

end A145018.P1334694583143126610

namespace A145018

/-- `asin(sin(1))+∑[n]+3` -/
def P1334694583143126610.Spec : Prop :=
  ∀ n, P1334694583143126610.a n = (A145018 (n + 1) : ℝ)

end A145018

/-! ## A145018.P16743271578358648720

`atan(tan(1))+∑[n]+3`
-/

namespace A145018.P16743271578358648720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (Real.tan (1 : ℝ)) + ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℝ)

end

end A145018.P16743271578358648720

namespace A145018

/-- `atan(tan(1))+∑[n]+3` -/
def P16743271578358648720.Spec : Prop :=
  ∀ n, P16743271578358648720.a n = (A145018 (n + 1) : ℝ)

end A145018

/-! ## A145018.P14120140271189088060

`tan(acot(1))+∑[n]+3`
-/

namespace A145018.P14120140271189088060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.acot (1 : ℝ)) + ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℝ)

end

end A145018.P14120140271189088060

namespace A145018

/-- `tan(acot(1))+∑[n]+3` -/
def P14120140271189088060.Spec : Prop :=
  ∀ n, P14120140271189088060.a n = (A145018 (n + 1) : ℝ)

end A145018

/-! ## A145018.P11709122304264844619

`cot(atan(1))+∑[n]+3`
-/

namespace A145018.P11709122304264844619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (Real.arctan (1 : ℝ)) + ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℝ)

end

end A145018.P11709122304264844619

namespace A145018

/-- `cot(atan(1))+∑[n]+3` -/
def P11709122304264844619.Spec : Prop :=
  ∀ n, P11709122304264844619.a n = (A145018 (n + 1) : ℝ)

end A145018

/-! ## A145018.P157414983917745597

`acot(cot(1))+∑[n]+3`
-/

namespace A145018.P157414983917745597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Real.cot (1 : ℝ)) + ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℝ)

end

end A145018.P157414983917745597

namespace A145018

/-- `acot(cot(1))+∑[n]+3` -/
def P157414983917745597.Spec : Prop :=
  ∀ n, P157414983917745597.a n = (A145018 (n + 1) : ℝ)

end A145018

/-! ## A145018.P6677629176983632801

`∑[floor(acot(n)+n)]+3`
-/

namespace A145018.P6677629176983632801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A145018.P6677629176983632801

namespace A145018

/-- `∑[floor(acot(n)+n)]+3` -/
def P6677629176983632801.Spec : Prop :=
  ∀ n, P6677629176983632801.a n = A145018 (n + 1)

end A145018

/-! ## A145018.P8692967231818213904

`∑[n^floor(atan(n))]+3`
-/

namespace A145018.P8692967231818213904
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A145018.P8692967231818213904

namespace A145018

/-- `∑[n^floor(atan(n))]+3` -/
def P8692967231818213904.Spec : Prop :=
  ∀ n, P8692967231818213904.a n = (A145018 (n + 1) : ℚ)

end A145018

/-! ## A145018.P3960472618595751690

`∑[round(acot(n)^3+n)]`
-/

namespace A145018.P3960472618595751690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) ^ 3 + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145018.P3960472618595751690

namespace A145018

/-- `∑[round(acot(n)^3+n)]` -/
def P3960472618595751690.Spec : Prop :=
  ∀ n, P3960472618595751690.a n = A145018 (n + 1)

end A145018

/-!
# A145019: A002330(n)*A002331(n).

The programs for A145019, there is no canonical definition to state claims against.
-/

/-! ## A145019.P7860582109449178789

`A002330(n+1)*A002331(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145019.P7860582109449178789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (n + 1) * A002331 (n + 1)

end

end A145019.P7860582109449178789

/-! ## A145019.P13647703407716946521

`lcm(A002330(C(n+1, n)), A002331(n+1))`
-/

namespace A145019.P13647703407716946521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002330 (Nat.choose (n + 1) n)) (A002331 (n + 1))

end

end A145019.P13647703407716946521

/-! ## A145019.P9893442838310456719

`ceil(A037214(p?[A004773(n)])/2)`
-/

namespace A145019.P9893442838310456719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037214 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2⌉

end

end A145019.P9893442838310456719

/-! ## A145019.P13322417186241193659

`ceil(A037214(p?[A001481(n+1)])/2)`
-/

namespace A145019.P13322417186241193659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037214 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2⌉

end

end A145019.P13322417186241193659

/-! ## A145019.P16021288469765725402

`ceil(A037214(p?[A008574(n)+1])/2)`
-/

namespace A145019.P16021288469765725402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037214 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2⌉

end

end A145019.P16021288469765725402

/-! ## A145019.P1770681581592764937

`round(A037214(p?[A004773(n+1)])/2)`
-/

namespace A145019.P1770681581592764937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A037214 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2)

end

end A145019.P1770681581592764937

/-! ## A145019.P4134922571470614603

`A032742(A037214(p?[or(2, 3*n)-1]))`
-/

namespace A145019.P4134922571470614603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (3 * n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A037214 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A145019.P4134922571470614603

/-! ## A145019.P7240345771299630170

`A026741(A037214(p?[n*gcd(2, n)+1]))`
-/

namespace A145019.P7240345771299630170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A037214 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A145019.P7240345771299630170

/-! ## A145019.P2952685670820416424

`A032742(A037214(p?[n-or(1, 3-n)]))`
-/

namespace A145019.P2952685670820416424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor 1 (3 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A037214 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A145019.P2952685670820416424

/-! ## A145019.P735724219025139433

`2*A070151(n*a(A130507(n²)))` with `a(0)=1`
-/

namespace A145019.P735724219025139433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A070151 ((n : ℤ) * a (A130507 (n ^ 2)).toNat).toNat

end

end A145019.P735724219025139433

/-!
# A145020: a(n) = ((7 + sqrt(7))^n - (7 - sqrt(7))^n)^2/28.

The programs for A145020, the canonical program `A145020.P2661957400265538073` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145020 has offset 1).

The definition of A145020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145020.P2661957400265538073

`((7+sqrt(7))^(n+1)-(7-sqrt(7))^(n+1))²/28`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145020

/-- `((7+sqrt(7))^(n+1)-(7-sqrt(7))^(n+1))²/28` -/
def P2661957400265538073.Spec : Prop :=
  ∀ n, P2661957400265538073.a n = (A145020 (n + 1) : ℝ)

end A145020

/-! ## A145020.P10481454345693702021

`A154248(n+1)²`
-/

namespace A145020.P10481454345693702021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154248 (n + 1) ^ 2

end

end A145020.P10481454345693702021

namespace A145020

/-- `A154248(n+1)²` -/
def P10481454345693702021.Spec : Prop :=
  ∀ n, P10481454345693702021.a n = A145020 (n + 1)

end A145020

/-! ## A145020.P11158157169001083764

`A154248(n+1)^A000005(A014442(n+1))`
-/

namespace A145020.P11158157169001083764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154248 (n + 1) : ℚ) ^ (A000005 (A014442 (n + 1)).toNat : ℤ)

end

end A145020.P11158157169001083764

namespace A145020

/-- `A154248(n+1)^A000005(A014442(n+1))` -/
def P11158157169001083764.Spec : Prop :=
  ∀ n, P11158157169001083764.a n = (A145020 (n + 1) : ℚ)

end A145020

/-! ## A145020.P4642456366677003602

`A154248(n+1)^A020639(A118239(n+1))`
-/

namespace A145020.P4642456366677003602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154248 (n + 1) : ℚ) ^ (A020639 (A118239 (n + 1)).toNat : ℤ)

end

end A145020.P4642456366677003602

namespace A145020

/-- `A154248(n+1)^A020639(A118239(n+1))` -/
def P4642456366677003602.Spec : Prop :=
  ∀ n, P4642456366677003602.a n = (A145020 (n + 1) : ℚ)

end A145020

/-! ## A145020.P241277472051512700

`A154248(n+1)^A020639(A157502(n+1))`
-/

namespace A145020.P241277472051512700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154248 (n + 1) : ℚ) ^ (A020639 (A157502 (n + 1)).toNat : ℤ)

end

end A145020.P241277472051512700

namespace A145020

/-- `A154248(n+1)^A020639(A157502(n+1))` -/
def P241277472051512700.Spec : Prop :=
  ∀ n, P241277472051512700.a n = (A145020 (n + 1) : ℚ)

end A145020

/-!
# A145022: Primes p of the form 4k+1 for which s=2 is the least positive integer such that sp-(floor(sqrt(sp)))^2 is a square.

The programs for A145022, there is no canonical definition to state claims against.
-/

/-! ## A145022.P5198421523807816939

`p?[eq[2, A245474(n)]]`
-/

namespace A145022.P5198421523807816939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245474 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A145022.P5198421523807816939

/-! ## A145022.P3620642279210737868

`p?[A055672(n)-A055672(A245474(n))]`
-/

namespace A145022.P3620642279210737868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n - A055672 (A245474 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145022.P3620642279210737868

/-! ## A145022.P9831810867956310549

`p?[A001481(A245474(n))*A143574(n)]`
-/

namespace A145022.P9831810867956310549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (A245474 n).toNat * A143574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145022.P9831810867956310549

/-! ## A145022.P16984322428775610871

`A002144(eq[2, A245474(A002313(n+1))])`
-/

namespace A145022.P16984322428775610871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245474 (A002313 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145022.P16984322428775610871

/-! ## A145022.P15732015654601000953

`eq[A053204(n), A245474(n)]`
-/

namespace A145022.P15732015654601000953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245474 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145022.P15732015654601000953

/-!
# A145023: Primes p of the form 4k+1 for which s=5 is the least positive integer such that s*p - floor(sqrt(s*p))^2 is a perfect square.

The programs for A145023, there is no canonical definition to state claims against.
-/

/-! ## A145023.P11581085682655752728

`A002144(eq[5, A245474(A002313(n+1))])`
-/

namespace A145023.P11581085682655752728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245474 (A002313 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145023.P11581085682655752728

/-! ## A145023.P3792490178214877704

`A245440(∑[A081572(A300831(n+1))])`
-/

namespace A145023.P3792490178214877704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081572 (A300831 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245440 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A145023.P3792490178214877704

/-! ## A145023.P8889668488494510728

`p?[A219727(A072504(n+1))*A245440(n+1)]`
-/

namespace A145023.P8889668488494510728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219727 (A072504 (n + 1)).toNat * A245440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145023.P8889668488494510728

/-! ## A145023.P8128641949870665236

`p?[A081572(A300831(n+1))*A245440(n+1)]`
-/

namespace A145023.P8128641949870665236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081572 (A300831 (n + 1)).toNat * A245440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145023.P8128641949870665236

/-! ## A145023.P16830462884705821588

`A352257(A245440(n+1))`
-/

namespace A145023.P16830462884705821588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352257 (A245440 (n + 1)).toNat

end

end A145023.P16830462884705821588

/-!
# A145024: Number of primes between successive balanced primes (A006562).

The programs for A145024, the canonical program `A145024.P9653194186752503351` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145024 has offset 1).

The definition of A145024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145024.P18270461566102368558

`A333216(ceil(acot(n))²+n)`
-/

namespace A145024.P18270461566102368558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333216 (⌈SequenceMachineLib.acot (n : ℝ)⌉ ^ 2 + (n : ℤ)).toNat

end

end A145024.P18270461566102368558

namespace A145024

/-- `A333216(ceil(acot(n))²+n)` -/
def P18270461566102368558.Spec : Prop :=
  ∀ n, P18270461566102368558.a n = A145024 (n + 1)

end A145024

/-! ## A145024.P16005000528193472311

`floor(A333216(n+1)+acot(n))`
-/

namespace A145024.P16005000528193472311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333216 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A145024.P16005000528193472311

namespace A145024

/-- `floor(A333216(n+1)+acot(n))` -/
def P16005000528193472311.Spec : Prop :=
  ∀ n, P16005000528193472311.a n = A145024 (n + 1)

end A145024

/-! ## A145024.P9653194186752503351

`Δ[record[gcd(n+3, A036263(n+1))]]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A145024

/-- `Δ[record[gcd(n+3, A036263(n+1))]]` -/
def P9653194186752503351.Spec : Prop :=
  ∀ n, P9653194186752503351.a n = A145024 (n + 1)

theorem P9653194186752503351.correct : P9653194186752503351.Spec := by
  intro n
  simp only [A145024, Nat.add_sub_cancel]

end A145024

/-! ## A145024.P12797841196255337930

`A333216(n+1)+A000007(n)`
-/

namespace A145024.P12797841196255337930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333216 (n + 1) + A000007 n

end

end A145024.P12797841196255337930

namespace A145024

/-- `A333216(n+1)+A000007(n)` -/
def P12797841196255337930.Spec : Prop :=
  ∀ n, P12797841196255337930.a n = A145024 (n + 1)

end A145024

/-!
# A145025: Numbers which are the average of two consecutive odd primes (A024675) together with primes which are the average of the previous prime and the following prime (A006562).

The programs for A145025, there is no canonical definition to state claims against.
-/

/-! ## A145025.P12666443754133492193

`∪[A006562(n+1), A024675(n+1)]`
-/

namespace A145025.P12666443754133492193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A145025.P12666443754133492193

/-! ## A145025.P5200649414760272528

`lt[1, A346399(n+1)]+1`
-/

namespace A145025.P5200649414760272528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A145025.P5200649414760272528

/-! ## A145025.P14400324256073395054

`eq[n, A051698(n)+A013632(n)]`
-/

namespace A145025.P14400324256073395054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n + A013632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145025.P14400324256073395054

/-! ## A145025.P14385888032747968869

`record[gcd(A020705(n), A033597(n+4))]`
-/

namespace A145025.P14385888032747968869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020705 n) (A033597 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145025.P14385888032747968869

/-! ## A145025.P8070616235890588380

`record[gcd(n, A151800(n)+A051698(n))]`
-/

namespace A145025.P8070616235890588380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A151800 n + A051698 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145025.P8070616235890588380

/-! ## A145025.P8464794030707286567

`eq[A151800(n)+A051698(n), A005843(n)]`
-/

namespace A145025.P8464794030707286567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n + A051698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145025.P8464794030707286567

/-! ## A145025.P595117187040402170

`eq[n, A065033(A151800(n)+A051698(n))]`
-/

namespace A145025.P595117187040402170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A151800 n + A051698 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145025.P595117187040402170

/-! ## A145025.P10098850345770080749

`lt[A051698(n)*A159477(n+1), n²]`
-/

namespace A145025.P10098850345770080749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n * A159477 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A145025.P10098850345770080749

/-! ## A145025.P2122333651003171620

`eq[A033558(A233583(n+1)), A051698(n)]`
-/

namespace A145025.P2122333651003171620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033558 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145025.P2122333651003171620

/-!
# A145026: Fibonacci numbers in A145025.

The programs for A145026, there is no canonical definition to state claims against.
-/

/-! ## A145026.P6961176591003182859

`A299966(A249350(n+1))`
-/

namespace A145026.P6961176591003182859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299966 (A249350 (n + 1)).toNat

end

end A145026.P6961176591003182859

/-! ## A145026.P1094295143592166602

`A086593(2^A055938(n+1))`
-/

namespace A145026.P1094295143592166602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086593 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A055938 (n + 1) : ℤ))).toNat

end

end A145026.P1094295143592166602

/-!
# A145027: a(n) = a(n-1) + a(n-2) + a(n-3) with a(1) = 2, a(2) = 3, a(3) = 4.

The programs for A145027, the canonical program `A145027.P14368156603503912894` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145027 has offset 1).

The definition of A145027 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A145027.P14368156603503912894`, by `A145027.P14368156603503912894.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145027.P14368156603503912894

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=2, a(1)=3, a(2)=4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145027

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P14368156603503912894.Spec : Prop :=
  ∀ n, (P14368156603503912894.a n : ℤ) = A145027 (n + 1)

theorem P14368156603503912894.correct : P14368156603503912894.Spec := by
  intro n
  simp only [A145027, Nat.add_sub_cancel]

end A145027

/-! ## A145027.P3036547925689139002

`ogf((-2-x+x^2)/(-1+x+x^2+x^3))`
-/

namespace A145027.P3036547925689139002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, -1] [1, -1, -1, -1] n

end

end A145027.P3036547925689139002

namespace A145027

/-- `ogf((-2-x+x^2)/(-1+x+x^2+x^3))` -/
def P3036547925689139002.Spec : Prop :=
  ∀ n, P3036547925689139002.a n = A145027 (n + 1)

end A145027

/-! ## A145027.P7991881073312846898

`∑[2*a(n-1)-a(n-4)]-1` with `a(0)=3, a(1)=1, a(2)=1, a(3)=5`
-/

namespace A145027.P7991881073312846898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 1, 5] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A145027.P7991881073312846898

namespace A145027

/-- `∑[2*a(n-1)-a(n-4)]-1` -/
def P7991881073312846898.Spec : Prop :=
  ∀ n, P7991881073312846898.a n = A145027 (n + 1)

end A145027

/-! ## A145027.P15977109352689577419

`∑[A141523(n)]-1`
-/

namespace A145027.P15977109352689577419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A145027.P15977109352689577419

namespace A145027

/-- `∑[A141523(n)]-1` -/
def P15977109352689577419.Spec : Prop :=
  ∀ n, P15977109352689577419.a n = A145027 (n + 1)

end A145027

/-! ## A145027.P612724374332066125

`2*A196787(n+1)+n`
-/

namespace A145027.P612724374332066125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A196787 (n + 1) + (n : ℤ)

end

end A145027.P612724374332066125

namespace A145027

/-- `2*A196787(n+1)+n` -/
def P612724374332066125.Spec : Prop :=
  ∀ n, P612724374332066125.a n = A145027 (n + 1)

end A145027

/-! ## A145027.P9517647155540731508

`A047081(n)+A000213(n)`
-/

namespace A145027.P9517647155540731508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047081 n + A000213 n

end

end A145027.P9517647155540731508

namespace A145027

/-- `A047081(n)+A000213(n)` -/
def P9517647155540731508.Spec : Prop :=
  ∀ n, P9517647155540731508.a n = A145027 (n + 1)

end A145027

/-! ## A145027.P2291915943695249083

`A000213(n)+abs(A078042(n))`
-/

namespace A145027.P2291915943695249083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + |A078042 n|

end

end A145027.P2291915943695249083

namespace A145027

/-- `A000213(n)+abs(A078042(n))` -/
def P2291915943695249083.Spec : Prop :=
  ∀ n, P2291915943695249083.a n = A145027 (n + 1)

end A145027

/-! ## A145027.P11982225031613126294

`∑[A214899(n)]-A000073(n)`
-/

namespace A145027.P11982225031613126294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000073 n

end

end A145027.P11982225031613126294

namespace A145027

/-- `∑[A214899(n)]-A000073(n)` -/
def P11982225031613126294.Spec : Prop :=
  ∀ n, P11982225031613126294.a n = A145027 (n + 1)

end A145027

/-! ## A145027.P14393223501121229032

`A020992(n+1)+A020992(n)`
-/

namespace A145027.P14393223501121229032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 (n + 1) + A020992 n

end

end A145027.P14393223501121229032

namespace A145027

/-- `A020992(n+1)+A020992(n)` -/
def P14393223501121229032.Spec : Prop :=
  ∀ n, P14393223501121229032.a n = A145027 (n + 1)

end A145027

/-! ## A145027.P5971454204212579308

`A214825(n)+A001590(n+1)`
-/

namespace A145027.P5971454204212579308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n + A001590 (n + 1)

end

end A145027.P5971454204212579308

namespace A145027

/-- `A214825(n)+A001590(n+1)` -/
def P5971454204212579308.Spec : Prop :=
  ∀ n, P5971454204212579308.a n = A145027 (n + 1)

end A145027

/-! ## A145027.P15833682742682871875

`A275778(n)+A000213(n+1)`
-/

namespace A145027.P15833682742682871875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275778 n + A000213 (n + 1)

end

end A145027.P15833682742682871875

namespace A145027

/-- `A275778(n)+A000213(n+1)` -/
def P15833682742682871875.Spec : Prop :=
  ∀ n, P15833682742682871875.a n = A145027 (n + 1)

end A145027

/-! ## A145027.P3104089700313293397

`A276658(n)+A141036(n+1)`
-/

namespace A145027.P3104089700313293397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 n + A141036 (n + 1)

end

end A145027.P3104089700313293397

namespace A145027

/-- `A276658(n)+A141036(n+1)` -/
def P3104089700313293397.Spec : Prop :=
  ∀ n, P3104089700313293397.a n = A145027 (n + 1)

end A145027

/-! ## A145027.P13605818171721522817

`A214727(n)+A000073(n+2)`
-/

namespace A145027.P13605818171721522817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n + A000073 (n + 2)

end

end A145027.P13605818171721522817

namespace A145027

/-- `A214727(n)+A000073(n+2)` -/
def P13605818171721522817.Spec : Prop :=
  ∀ n, P13605818171721522817.a n = A145027 (n + 1)

end A145027

/-! ## A145027.P18209317166599570317

`A141036(n)+A081172(n+2)`
-/

namespace A145027.P18209317166599570317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 n + A081172 (n + 2)

end

end A145027.P18209317166599570317

namespace A145027

/-- `A141036(n)+A081172(n+2)` -/
def P18209317166599570317.Spec : Prop :=
  ∀ n, P18209317166599570317.a n = A145027 (n + 1)

end A145027

/-! ## A145027.P2919913302872387720

`A001590(n+3)+A000213(n)`
-/

namespace A145027.P2919913302872387720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 3) + A000213 n

end

end A145027.P2919913302872387720

namespace A145027

/-- `A001590(n+3)+A000213(n)` -/
def P2919913302872387720.Spec : Prop :=
  ∀ n, P2919913302872387720.a n = A145027 (n + 1)

end A145027

/-! ## A145027.P2006112654470961595

`A081172(n)+A000073(n+3)`
-/

namespace A145027.P2006112654470961595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n + A000073 (n + 3)

end

end A145027.P2006112654470961595

namespace A145027

/-- `A081172(n)+A000073(n+3)` -/
def P2006112654470961595.Spec : Prop :=
  ∀ n, P2006112654470961595.a n = A145027 (n + 1)

end A145027

/-! ## A145027.P5833814246306681471

`2*A214727(n)-A001590(n)`
-/

namespace A145027.P5833814246306681471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214727 n - A001590 n

end

end A145027.P5833814246306681471

namespace A145027

/-- `2*A214727(n)-A001590(n)` -/
def P5833814246306681471.Spec : Prop :=
  ∀ n, P5833814246306681471.a n = A145027 (n + 1)

end A145027

/-! ## A145027.P16477146809922651902

`A214727(n)+∑[A001590(n+1)]`
-/

namespace A145027.P16477146809922651902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145027.P16477146809922651902

namespace A145027

/-- `A214727(n)+∑[A001590(n+1)]` -/
def P16477146809922651902.Spec : Prop :=
  ∀ n, P16477146809922651902.a n = A145027 (n + 1)

end A145027

/-! ## A145027.P9731390335178306508

`A214899(n)+Δ[A000213(n+1)]`
-/

namespace A145027.P9731390335178306508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n + (f1 (n + 1) - f1 n)

end

end A145027.P9731390335178306508

namespace A145027

/-- `A214899(n)+Δ[A000213(n+1)]` -/
def P9731390335178306508.Spec : Prop :=
  ∀ n, P9731390335178306508.a n = A145027 (n + 1)

end A145027

/-! ## A145027.P8569332223768741442

`∑[A141036(n)]+A192804(n)-1`
-/

namespace A145027.P8569332223768741442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A192804 n - 1)

end

end A145027.P8569332223768741442

namespace A145027

/-- `∑[A141036(n)]+A192804(n)-1` -/
def P8569332223768741442.Spec : Prop :=
  ∀ n, P8569332223768741442.a n = A145027 (n + 1)

end A145027

/-!
# A145028: a(n) = a(n-1) + a(n-2) + a(n-3) + a(n-4).

The programs for A145028, the canonical program `A145028.P8288650275237202974` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145028 has offset 1).

The definition of A145028 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)` (program `A145028.P8288650275237202974`, by `A145028.P8288650275237202974.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145028.P8288650275237202974

`a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145028

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)` -/
def P8288650275237202974.Spec : Prop :=
  ∀ n, (P8288650275237202974.a n : ℤ) = A145028 (n + 1)

theorem P8288650275237202974.correct : P8288650275237202974.Spec := by
  intro n
  simp only [A145028, Nat.add_sub_cancel]

end A145028

/-! ## A145028.P9986230095175044962

`ogf((-1-x+2x^3)/(-1+x+x^2+x^3+x^4))`
-/

namespace A145028.P9986230095175044962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, -2] [1, -1, -1, -1, -1] n

end

end A145028.P9986230095175044962

namespace A145028

/-- `ogf((-1-x+2x^3)/(-1+x+x^2+x^3+x^4))` -/
def P9986230095175044962.Spec : Prop :=
  ∀ n, P9986230095175044962.a n = A145028 (n + 1)

end A145028

/-! ## A145028.P4747169247588022520

`2*a(n-1)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=10`
-/

namespace A145028.P4747169247588022520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 10] fun n a =>
  2 * a (n - 1) - a (n - 5)

end

end A145028.P4747169247588022520

namespace A145028

/-- `2*a(n-1)-a(n-5)` -/
def P4747169247588022520.Spec : Prop :=
  ∀ n, P4747169247588022520.a n = A145028 (n + 1)

end A145028

/-! ## A145028.P16881522650465005363

`a(n-1)+a(n-1)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=10`
-/

namespace A145028.P16881522650465005363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 10] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 5))

end

end A145028.P16881522650465005363

namespace A145028

/-- `a(n-1)+a(n-1)-a(n-5)` -/
def P16881522650465005363.Spec : Prop :=
  ∀ n, P16881522650465005363.a n = A145028 (n + 1)

end A145028

/-! ## A145028.P13358379490215649714

`A000288(n)+∑[A251655(n)]`
-/

namespace A145028.P13358379490215649714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145028.P13358379490215649714

namespace A145028

/-- `A000288(n)+∑[A251655(n)]` -/
def P13358379490215649714.Spec : Prop :=
  ∀ n, P13358379490215649714.a n = A145028 (n + 1)

end A145028

/-! ## A145028.P7848684747347091717

`A251705(n)+record[A001631(n)]`
-/

namespace A145028.P7848684747347091717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251705 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145028.P7848684747347091717

namespace A145028

/-- `A251705(n)+record[A001631(n)]` -/
def P7848684747347091717.Spec : Prop :=
  ∀ n, P7848684747347091717.a n = A145028 (n + 1)

end A145028

/-! ## A145028.P12536106434009819918

`A001630(n+1)+A000288(n)`
-/

namespace A145028.P12536106434009819918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 (n + 1) + A000288 n

end

end A145028.P12536106434009819918

namespace A145028

/-- `A001630(n+1)+A000288(n)` -/
def P12536106434009819918.Spec : Prop :=
  ∀ n, P12536106434009819918.a n = A145028 (n + 1)

end A145028

/-! ## A145028.P18281013693672518413

`A251654(n)+A000078(n+3)`
-/

namespace A145028.P18281013693672518413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251654 n + A000078 (n + 3)

end

end A145028.P18281013693672518413

namespace A145028

/-- `A251654(n)+A000078(n+3)` -/
def P18281013693672518413.Spec : Prop :=
  ∀ n, P18281013693672518413.a n = A145028 (n + 1)

end A145028

/-! ## A145028.P10884128042012443555

`A251705(n)+A001631(n+3)`
-/

namespace A145028.P10884128042012443555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251705 n + A001631 (n + 3)

end

end A145028.P10884128042012443555

namespace A145028

/-- `A251705(n)+A001631(n+3)` -/
def P10884128042012443555.Spec : Prop :=
  ∀ n, P10884128042012443555.a n = A145028 (n + 1)

end A145028

/-! ## A145028.P11663370655263469290

`A001630(n+1)+A251705(n)+A000078(n)`
-/

namespace A145028.P11663370655263469290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 (n + 1) + (A251705 n + A000078 n)

end

end A145028.P11663370655263469290

namespace A145028

/-- `A001630(n+1)+A251705(n)+A000078(n)` -/
def P11663370655263469290.Spec : Prop :=
  ∀ n, P11663370655263469290.a n = A145028 (n + 1)

end A145028

/-! ## A145028.P10617512653305037882

`A000288(n+1)+A251654(n)+A001631(n)`
-/

namespace A145028.P10617512653305037882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 (n + 1) + (A251654 n + A001631 n)

end

end A145028.P10617512653305037882

namespace A145028

/-- `A000288(n+1)+A251654(n)+A001631(n)` -/
def P10617512653305037882.Spec : Prop :=
  ∀ n, P10617512653305037882.a n = A145028 (n + 1)

end A145028

/-! ## A145028.P4433417543089516128

`A001630(n+1)+A251704(n)+A001631(n)`
-/

namespace A145028.P4433417543089516128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 (n + 1) + (A251704 n + A001631 n)

end

end A145028.P4433417543089516128

namespace A145028

/-- `A001630(n+1)+A251704(n)+A001631(n)` -/
def P4433417543089516128.Spec : Prop :=
  ∀ n, P4433417543089516128.a n = A145028 (n + 1)

end A145028

/-! ## A145028.P9582416732848315675

`A251655(n+1)+A251655(n)+A001631(n)`
-/

namespace A145028.P9582416732848315675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 (n + 1) + (A251655 n + A001631 n)

end

end A145028.P9582416732848315675

namespace A145028

/-- `A251655(n+1)+A251655(n)+A001631(n)` -/
def P9582416732848315675.Spec : Prop :=
  ∀ n, P9582416732848315675.a n = A145028 (n + 1)

end A145028

/-! ## A145028.P14198210996118392491

`A251704(n+1)+A251655(n)+A251654(n)`
-/

namespace A145028.P14198210996118392491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 (n + 1) + (A251655 n + A251654 n)

end

end A145028.P14198210996118392491

namespace A145028

/-- `A251704(n+1)+A251655(n)+A251654(n)` -/
def P14198210996118392491.Spec : Prop :=
  ∀ n, P14198210996118392491.a n = A145028 (n + 1)

end A145028

/-! ## A145028.P13046673897591549050

`A000078(n+1)+A251703(n)+A001630(n+1)`
-/

namespace A145028.P13046673897591549050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 1) + (A251703 n + A001630 (n + 1))

end

end A145028.P13046673897591549050

namespace A145028

/-- `A000078(n+1)+A251703(n)+A001630(n+1)` -/
def P13046673897591549050.Spec : Prop :=
  ∀ n, P13046673897591549050.a n = A145028 (n + 1)

end A145028

/-! ## A145028.P1464498630104846011

`A001630(n+1)+A251656(n)+A001631(n+1)`
-/

namespace A145028.P1464498630104846011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 (n + 1) + (A251656 n + A001631 (n + 1))

end

end A145028.P1464498630104846011

namespace A145028

/-- `A001630(n+1)+A251656(n)+A001631(n+1)` -/
def P1464498630104846011.Spec : Prop :=
  ∀ n, P1464498630104846011.a n = A145028 (n + 1)

end A145028

/-! ## A145028.P6538631150264162216

`Δ[A001630(n)+record[A001631(n)]]`
-/

namespace A145028.P6538631150264162216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 n + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145028.P6538631150264162216

namespace A145028

/-- `Δ[A001630(n)+record[A001631(n)]]` -/
def P6538631150264162216.Spec : Prop :=
  ∀ n, P6538631150264162216.a n = A145028 (n + 1)

end A145028

/-! ## A145028.P1114350988087722095

`(A251655(n)+A100532(n+1))/2`
-/

namespace A145028.P1114350988087722095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251655 n + A100532 (n + 1) : ℚ) / 2

end

end A145028.P1114350988087722095

namespace A145028

/-- `(A251655(n)+A100532(n+1))/2` -/
def P1114350988087722095.Spec : Prop :=
  ∀ n, P1114350988087722095.a n = (A145028 (n + 1) : ℚ)

end A145028

/-! ## A145028.P16335207951422773325

`A100532(n+1)-(A251704(n+1)+A251654(n))`
-/

namespace A145028.P16335207951422773325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100532 (n + 1) - (A251704 (n + 1) + A251654 n)

end

end A145028.P16335207951422773325

namespace A145028

/-- `A100532(n+1)-(A251704(n+1)+A251654(n))` -/
def P16335207951422773325.Spec : Prop :=
  ∀ n, P16335207951422773325.a n = A145028 (n + 1)

end A145028

/-! ## A145028.P10451522364506898302

`Δ[A089074(n)-(A000288(n)+A000078(n))]`
-/

namespace A145028.P10451522364506898302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089074 n - (A000288 n + A000078 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145028.P10451522364506898302

namespace A145028

/-- `Δ[A089074(n)-(A000288(n)+A000078(n))]` -/
def P10451522364506898302.Spec : Prop :=
  ∀ n, P10451522364506898302.a n = A145028 (n + 1)

end A145028

/-!
# A145029: Pentanacci numbers: a(n)=a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5), {1,2,3,4,5...}.

The programs for A145029, the canonical program `A145029.P3959200243693724933` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145029 has offset 1).

The definition of A145029 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` (program `A145029.P3959200243693724933`, by `A145029.P3959200243693724933.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145029.P3959200243693724933

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145029

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P3959200243693724933.Spec : Prop :=
  ∀ n, (P3959200243693724933.a n : ℤ) = A145029 (n + 1)

theorem P3959200243693724933.correct : P3959200243693724933.Spec := by
  intro n
  simp only [A145029, Nat.add_sub_cancel]

end A145029

/-! ## A145029.P11457670060549368821

`A135056(n)+A000322(n)`
-/

namespace A145029.P11457670060549368821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135056 n + A000322 n

end

end A145029.P11457670060549368821

namespace A145029

/-- `A135056(n)+A000322(n)` -/
def P11457670060549368821.Spec : Prop :=
  ∀ n, P11457670060549368821.a n = A145029 (n + 1)

end A145029

/-! ## A145029.P794467821253720540

`A135055(n)+3*A000322(n)`
-/

namespace A145029.P794467821253720540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135055 n + 3 * A000322 n

end

end A145029.P794467821253720540

namespace A145029

/-- `A135055(n)+3*A000322(n)` -/
def P794467821253720540.Spec : Prop :=
  ∀ n, P794467821253720540.a n = A145029 (n + 1)

end A145029

/-! ## A145029.P3489916637899270550

`A135055(n+6)-A023424(n)`
-/

namespace A145029.P3489916637899270550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135055 (n + 6) - A023424 n

end

end A145029.P3489916637899270550

namespace A145029

/-- `A135055(n+6)-A023424(n)` -/
def P3489916637899270550.Spec : Prop :=
  ∀ n, P3489916637899270550.a n = A145029 (n + 1)

end A145029

/-! ## A145029.P5489815557745103881

`A135493(n+1)+A135056(n)-A023424(n)`
-/

namespace A145029.P5489815557745103881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135493 (n + 1) + (A135056 n - A023424 n)

end

end A145029.P5489815557745103881

namespace A145029

/-- `A135493(n+1)+A135056(n)-A023424(n)` -/
def P5489815557745103881.Spec : Prop :=
  ∀ n, P5489815557745103881.a n = A145029 (n + 1)

end A145029

/-!
# A145030: Hexanacci numbers: a(n)=a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6), {0,1,2,3,4,5...}.

The programs for A145030, the canonical program `A145030.P8528091955268604378` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145030 has offset 1).

The definition of A145030 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)` (program `A145030.P8528091955268604378`, by `A145030.P8528091955268604378.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145030.P8528091955268604378

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145030

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)` -/
def P8528091955268604378.Spec : Prop :=
  ∀ n, (P8528091955268604378.a n : ℤ) = A145030 (n + 1)

theorem P8528091955268604378.correct : P8528091955268604378.Spec := by
  intro n
  simp only [A145030, Nat.add_sub_cancel]

end A145030

/-! ## A145030.P14667918649811670614

`A316945(A028495(n))+n`
-/

namespace A145030.P14667918649811670614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316945 (A028495 n).toNat + (n : ℤ)

end

end A145030.P14667918649811670614

namespace A145030

/-- `A316945(A028495(n))+n` -/
def P14667918649811670614.Spec : Prop :=
  ∀ n, P14667918649811670614.a n = A145030 (n + 1)

end A145030

/-! ## A145030.P16937499354971167199

`lt[A334593(A334573(2*(n+1))), 9]`
-/

namespace A145030.P16937499354971167199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334593 (A334573 (2 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A145030.P16937499354971167199

namespace A145030

/-- `lt[A334593(A334573(2*(n+1))), 9]` -/
def P16937499354971167199.Spec : Prop :=
  ∀ n, (P16937499354971167199.a n : ℤ) = A145030 (n + 1)

end A145030

/-! ## A145030.P814901866783113169

`lt[A032759((2-n)²+1), A239050(n+1)]`
-/

namespace A145030.P814901866783113169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032759 ((2 - (n : ℤ)) ^ 2 + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A145030.P814901866783113169

namespace A145030

/-- `lt[A032759((2-n)²+1), A239050(n+1)]` -/
def P814901866783113169.Spec : Prop :=
  ∀ n, (P814901866783113169.a n : ℤ) = A145030 (n + 1)

end A145030

/-! ## A145030.P3176826895366707857

`A000196(A222229(n)*A327647(n))`
-/

namespace A145030.P3176826895366707857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A222229 n * A327647 n).toNat

end

end A145030.P3176826895366707857

namespace A145030

/-- `A000196(A222229(n)*A327647(n))` -/
def P3176826895366707857.Spec : Prop :=
  ∀ n, P3176826895366707857.a n = A145030 (n + 1)

end A145030

/-!
# A145031: Smallest odd n-almost prime m such that m-2 and m+2 are both prime (cousin primes).

The programs for A145031, there is no canonical definition to state claims against.
-/

/-! ## A145031.P8181920552758123327

`∩[A087679(n+1), A133813(n+1)]`
-/

namespace A145031.P8181920552758123327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145031.P8181920552758123327

/-! ## A145031.P3826839897488089907

`A322865(A064989(n+1)*A128356(n+1))`
-/

namespace A145031.P3826839897488089907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322865 (A064989 (n + 1) * A128356 (n + 1)).toNat

end

end A145031.P3826839897488089907

/-!
# A145032: If t(n) is the maximal triangular number not exceeding n, then a(n) is the n-th prime for which a(n)-t(a(n)) is a triangular number.

The programs for A145032, there is no canonical definition to state claims against.
-/

/-! ## A145032.P310735992660958335

`p?[eq[3, A227727(n)]]`
-/

namespace A145032.P310735992660958335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227727 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A145032.P310735992660958335

/-! ## A145032.P9566186536358887930

`p?[lt[A057945(n), 3]]`
-/

namespace A145032.P9566186536358887930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A145032.P9566186536358887930

/-! ## A145032.P776756187356276026

`p?[n*A220280(n+1)]`
-/

namespace A145032.P776756187356276026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A220280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145032.P776756187356276026

/-! ## A145032.P16474447571426868353

`eq[A227727(n), A323774(n)]`
-/

namespace A145032.P16474447571426868353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227727 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323774 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145032.P16474447571426868353

/-! ## A145032.P9987703911631654110

`p?[lt[A002262(A002262(n)), 1]]`
-/

namespace A145032.P9987703911631654110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A002262 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A145032.P9987703911631654110

/-! ## A145032.P16763728621966978549

`eq[A003415(n), A220280(n+1)]`
-/

namespace A145032.P16763728621966978549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220280 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145032.P16763728621966978549

/-! ## A145032.P17288893145867891642

`eq[A018783(n), A220280(n+1)]`
-/

namespace A145032.P17288893145867891642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220280 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145032.P17288893145867891642

/-! ## A145032.P16457842642094834518

`eq[A175126(n), A220280(n+1)]`
-/

namespace A145032.P16457842642094834518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220280 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145032.P16457842642094834518

/-! ## A145032.P12933266746788343847

`eq[A220280(n+1), A302055(n)]`
-/

namespace A145032.P12933266746788343847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145032.P12933266746788343847

/-! ## A145032.P7646999593644668290

`eq[A220280(n+1), A369971(n)]`
-/

namespace A145032.P7646999593644668290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145032.P7646999593644668290

/-!
# A145033: T(n,k) is the number of amenable quasi-idempotent order-decreasing partial one-one transformations (of an n-chain) of height k (height(alpha) = |Im(alpha)|).

The programs for A145033, there is no canonical definition to state claims against.
-/

/-! ## A145033.P14660227457426658393

`floor(sqrt(A034261(n+1)²+1))`
-/

namespace A145033.P14660227457426658393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A034261 (n + 1) ^ 2 + 1)

end

end A145033.P14660227457426658393

/-! ## A145033.P5649358918780747416

`A034261(char[∑[n-1]]+1+n)`
-/

namespace A145033.P5649358918780747416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 + n)

end

end A145033.P5649358918780747416

/-! ## A145033.P3605636049853287398

`A028310(A034261(n+1))`
-/

namespace A145033.P3605636049853287398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A034261 (n + 1)).toNat

end

end A145033.P3605636049853287398

/-! ## A145033.P11984535439857923247

`A128710(n)-A074909(n)`
-/

namespace A145033.P11984535439857923247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n - A074909 n

end

end A145033.P11984535439857923247

/-! ## A145033.P2575689300891020601

`A065033(2*A034261(n+1))`
-/

namespace A145033.P2575689300891020601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A034261 (n + 1)).toNat

end

end A145033.P2575689300891020601

/-! ## A145033.P9929282906949681459

`A123108(2*A034261(n+1))`
-/

namespace A145033.P9929282906949681459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * A034261 (n + 1)).toNat

end

end A145033.P9929282906949681459

/-! ## A145033.P5575084094131325782

`A214292(n)+A128133(n+1)`
-/

namespace A145033.P5575084094131325782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214292 n + A128133 (n + 1)

end

end A145033.P5575084094131325782

/-! ## A145033.P533145613780144376

`A124727(n+1)-A051601(n)`
-/

namespace A145033.P533145613780144376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124727 (n + 1) - A051601 n

end

end A145033.P533145613780144376

/-! ## A145033.P6814027248533029576

`∏{d}[A034261(n+1), A014963(#)]`
-/

namespace A145033.P6814027248533029576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A145033.P6814027248533029576

/-! ## A145033.P14233691729455131918

`A034261(n+1)+Δ[A003056(n)]`
-/

namespace A145033.P14233691729455131918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (n + 1) + (f1 (n + 1) - f1 n)

end

end A145033.P14233691729455131918

/-!
# A145034: T(n,k) is the number of order-decreasing and order-preserving partial transformations (of an n-chain) of width (width(alpha) = |Dom(alpha)|) and waist (waist(alpha) = max(Im(alpha))) both equal to k.

The programs for A145034, there is no canonical definition to state claims against.
-/

/-! ## A145034.P10304072503430012266

`A292630(n)-A060576(A156953(n)²)`
-/

namespace A145034.P10304072503430012266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292630 n - A060576 (A156953 n ^ 2).toNat

end

end A145034.P10304072503430012266

/-! ## A145034.P549098816503281538

`A292975(n)+A018843(A107616(n+1))`
-/

namespace A145034.P549098816503281538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 n + A018843 (A107616 (n + 1)).toNat

end

end A145034.P549098816503281538

/-! ## A145034.P14091406341487211261

`A335460(A030068(n+1))+A292975(n)`
-/

namespace A145034.P14091406341487211261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335460 (A030068 (n + 1)).toNat + A292975 n

end

end A145034.P14091406341487211261

/-! ## A145034.P16358411558560129152

`A073133(n+1)-A128174(A037124(2*n+5))`
-/

namespace A145034.P16358411558560129152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073133 (n + 1) - A128174 (A037124 (2 * n + 5)).toNat

end

end A145034.P16358411558560129152

/-! ## A145034.P13218958272342732074

`A286933(A077168(n)+A003056(n))`
-/

namespace A145034.P13218958272342732074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286933 (A077168 n + A003056 n).toNat

end

end A145034.P13218958272342732074

/-!
# A145036: T(n,k) is the number of idempotent order-decreasing and order-preserving partial transformations (of an n-chain) of waist k (waist(alpha) = max(Im(alpha))).

The programs for A145036, there is no canonical definition to state claims against.
-/

/-! ## A145036.P560748913832419821

`A057728(n+1)*A124302(A002262(n))`
-/

namespace A145036.P560748913832419821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) * A124302 (A002262 n).toNat

end

end A145036.P560748913832419821

/-! ## A145036.P16119025561640271841

`Δ[A023758(n+1)]*A124302(A002262(n))`
-/

namespace A145036.P16119025561640271841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A124302 (A002262 n).toNat

end

end A145036.P16119025561640271841

/-! ## A145036.P9756903632991234772

`A057728(n+1)*A124302(A144328(n+1))`
-/

namespace A145036.P9756903632991234772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) * A124302 (A144328 (n + 1)).toNat

end

end A145036.P9756903632991234772

/-! ## A145036.P8421595337824531755

`2^(A193592(n)-1)*A124302(A002262(n))`
-/

namespace A145036.P8421595337824531755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A193592 n - 1 : ℤ) * (A124302 (A002262 n).toNat : ℚ)

end

end A145036.P8421595337824531755

/-! ## A145036.P10104815859955830780

`Δ[A023758(n+1)]*A124302(A144328(n+1))`
-/

namespace A145036.P10104815859955830780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A124302 (A144328 (n + 1)).toNat

end

end A145036.P10104815859955830780

/-! ## A145036.P4389818875626161811

`A059268(A056943(n))*A124302(A002262(n))`
-/

namespace A145036.P4389818875626161811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A056943 n).toNat * A124302 (A002262 n).toNat

end

end A145036.P4389818875626161811

/-! ## A145036.P16612051970886056326

`A140472(gcd(A036561(n), A155118(n)))`
-/

namespace A145036.P16612051970886056326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (Int.gcd (A036561 n) (A155118 n))

end

end A145036.P16612051970886056326

/-!
# A145037: Number of 1's minus number of 0's in the binary representation of n.

The programs for A145037, the canonical program `A145037.P925688750715602079` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145037 has offset 0).

The definition of A145037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145037.P925688750715602079

`a(floor(n/2))-(-1)^n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145037

/-- `a(floor(n/2))-(-1)^n` -/
def P925688750715602079.Spec : Prop :=
  ∀ n, P925688750715602079.a n = A145037 n

theorem P925688750715602079.correct : P925688750715602079.Spec := by
  intro n
  simp only [A145037]

end A145037

/-! ## A145037.P3366069002895243503

`a(floor(n/2))-xor(1, n)+n` with `a(0)=0`
-/

namespace A145037.P3366069002895243503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat - (Nat.xor 1 n : ℤ) + (n : ℤ)

end

end A145037.P3366069002895243503

namespace A145037

/-- `a(floor(n/2))-xor(1, n)+n` -/
def P3366069002895243503.Spec : Prop :=
  ∀ n, P3366069002895243503.a n = A145037 n

end A145037

/-! ## A145037.P12652862422953728341

`∑[a(floor(n/2))-a(n-1)]` with `a(0)=0, a(1)=1, a(2)=-1`
-/

namespace A145037.P12652862422953728341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145037.P12652862422953728341

namespace A145037

/-- `∑[a(floor(n/2))-a(n-1)]` -/
def P12652862422953728341.Spec : Prop :=
  ∀ n, P12652862422953728341.a n = A145037 n

end A145037

/-! ## A145037.P2453546284474123862

`∑[A269735(n)]`
-/

namespace A145037.P2453546284474123862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145037.P2453546284474123862

namespace A145037

/-- `∑[A269735(n)]` -/
def P2453546284474123862.Spec : Prop :=
  ∀ n, P2453546284474123862.a n = A145037 n

end A145037

/-! ## A145037.P7871180522318146654

`floor(acot(n)-A037861(n))`
-/

namespace A145037.P7871180522318146654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A037861 n : ℝ)⌋

end

end A145037.P7871180522318146654

namespace A145037

/-- `floor(acot(n)-A037861(n))` -/
def P7871180522318146654.Spec : Prop :=
  ∀ n, P7871180522318146654.a n = A145037 n

end A145037

/-! ## A145037.P7556010740077430239

`A124754(xor(n, floor(n/2)))`
-/

namespace A145037.P7556010740077430239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A145037.P7556010740077430239

namespace A145037

/-- `A124754(xor(n, floor(n/2)))` -/
def P7556010740077430239.Spec : Prop :=
  ∀ n, P7556010740077430239.a n = A145037 n

end A145037

/-! ## A145037.P6504459522351364694

`∑[1-val(abs(1-n)+1, 2)]-A080791(n)`
-/

namespace A145037.P6504459522351364694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A080791 n

end

end A145037.P6504459522351364694

namespace A145037

/-- `∑[1-val(abs(1-n)+1, 2)]-A080791(n)` -/
def P6504459522351364694.Spec : Prop :=
  ∀ n, P6504459522351364694.a n = A145037 n

end A145037

/-! ## A145037.P15276093543497300279

`A124754(A003188(n))`
-/

namespace A145037.P15276093543497300279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A003188 n).toNat

end

end A145037.P15276093543497300279

namespace A145037

/-- `A124754(A003188(n))` -/
def P15276093543497300279.Spec : Prop :=
  ∀ n, P15276093543497300279.a n = A145037 n

end A145037

/-! ## A145037.P14149627708809053382

`A343938(A333219(n+1))`
-/

namespace A145037.P14149627708809053382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343938 (A333219 (n + 1)).toNat

end

end A145037.P14149627708809053382

namespace A145037

/-- `A343938(A333219(n+1))` -/
def P14149627708809053382.Spec : Prop :=
  ∀ n, P14149627708809053382.a n = A145037 n

end A145037

/-! ## A145037.P2938038583210445365

`A000007(n)-A037861(n)`
-/

namespace A145037.P2938038583210445365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A037861 n

end

end A145037.P2938038583210445365

namespace A145037

/-- `A000007(n)-A037861(n)` -/
def P2938038583210445365.Spec : Prop :=
  ∀ n, P2938038583210445365.a n = A145037 n

end A145037

/-! ## A145037.P5748334222956162432

`A000120(n)-A080791(n)`
-/

namespace A145037.P5748334222956162432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A080791 n

end

end A145037.P5748334222956162432

namespace A145037

/-- `A000120(n)-A080791(n)` -/
def P5748334222956162432.Spec : Prop :=
  ∀ n, P5748334222956162432.a n = A145037 n

end A145037

/-! ## A145037.P13507623347924520750

`A037861(n)*A057428(n)`
-/

namespace A145037.P13507623347924520750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n * A057428 n

end

end A145037.P13507623347924520750

namespace A145037

/-- `A037861(n)*A057428(n)` -/
def P13507623347924520750.Spec : Prop :=
  ∀ n, P13507623347924520750.a n = A145037 n

end A145037

/-! ## A145037.P6721070625464133274

`A037861(n)*A080301(n)`
-/

namespace A145037.P6721070625464133274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n * A080301 n

end

end A145037.P6721070625464133274

namespace A145037

/-- `A037861(n)*A080301(n)` -/
def P6721070625464133274.Spec : Prop :=
  ∀ n, P6721070625464133274.a n = A145037 n

end A145037

/-! ## A145037.P17156721960431901450

`A000120(n)-log2(A080100(n))`
-/

namespace A145037.P17156721960431901450
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000120 n : ℝ) - Real.logb 2 (A080100 n : ℝ)

end

end A145037.P17156721960431901450

namespace A145037

/-- `A000120(n)-log2(A080100(n))` -/
def P17156721960431901450.Spec : Prop :=
  ∀ n, P17156721960431901450.a n = (A145037 n : ℝ)

end A145037

/-! ## A145037.P8923286252128045137

`log2(A001316(n))-A080791(n)`
-/

namespace A145037.P8923286252128045137
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) - (A080791 n : ℝ)

end

end A145037.P8923286252128045137

namespace A145037

/-- `log2(A001316(n))-A080791(n)` -/
def P8923286252128045137.Spec : Prop :=
  ∀ n, P8923286252128045137.a n = (A145037 n : ℝ)

end A145037

/-! ## A145037.P4022568367802278236

`A000120(n)-∑[A089263(n)]`
-/

namespace A145037.P4022568367802278236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145037.P4022568367802278236

namespace A145037

/-- `A000120(n)-∑[A089263(n)]` -/
def P4022568367802278236.Spec : Prop :=
  ∀ n, P4022568367802278236.a n = A145037 n

end A145037

/-! ## A145037.P14585334165313716502

`∑[A088705(n)-A089263(n)]`
-/

namespace A145037.P14585334165313716502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n - A089263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145037.P14585334165313716502

namespace A145037

/-- `∑[A088705(n)-A089263(n)]` -/
def P14585334165313716502.Spec : Prop :=
  ∀ n, P14585334165313716502.a n = A145037 n

end A145037

/-! ## A145037.P1165370851604217986

`A054977(n)-(A037861(n)+1)`
-/

namespace A145037.P1165370851604217986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - (A037861 n + 1)

end

end A145037.P1165370851604217986

namespace A145037

/-- `A054977(n)-(A037861(n)+1)` -/
def P1165370851604217986.Spec : Prop :=
  ∀ n, P1165370851604217986.a n = A145037 n

end A145037

/-! ## A145037.P11447492116011616729

`1-(A057427(n)+A037861(n))`
-/

namespace A145037.P11447492116011616729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A057427 n + A037861 n)

end

end A145037.P11447492116011616729

namespace A145037

/-- `1-(A057427(n)+A037861(n))` -/
def P11447492116011616729.Spec : Prop :=
  ∀ n, P11447492116011616729.a n = A145037 n

end A145037

/-! ## A145037.P3517430486504496120

`A092391(n)+1-A233272(n)`
-/

namespace A145037.P3517430486504496120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n + (1 - A233272 n)

end

end A145037.P3517430486504496120

namespace A145037

/-- `A092391(n)+1-A233272(n)` -/
def P3517430486504496120.Spec : Prop :=
  ∀ n, P3517430486504496120.a n = A145037 n

end A145037

/-!
# A145038: Numbers to which Mersenne primes 2^p-1 can be congruent mod k! (for k > 1).

The programs for A145038, there is no canonical definition to state claims against.
-/

/-! ## A145038.P13920900719815219340

`A241686(A239592(n))`
-/

namespace A145038.P13920900719815219340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241686 (A239592 n).toNat

end

end A145038.P13920900719815219340

/-! ## A145038.P4376988139580641711

`or(A137926(A150750(n)), A278818(n))`
-/

namespace A145038.P4376988139580641711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A137926 (A150750 n).toNat) (A278818 n)

end

end A145038.P4376988139580641711

/-!
# A145040: Primes p such that 2^p-1 is prime and congruent to 31 mod 5!.

The programs for A145040, there is no canonical definition to state claims against.
-/

/-! ## A145040.P1865472614109924722

`A112634(n+2)`
-/

namespace A145040.P1865472614109924722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112634 (n + 2)

end

end A145040.P1865472614109924722

/-! ## A145040.P13406673363592294420

`record[A112634(∑[2-and(3, n)])]`
-/

namespace A145040.P13406673363592294420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112634 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145040.P13406673363592294420

/-! ## A145040.P4675333684435483382

`record[A112634(∑[1-a(n-1)])]` with `a(0)=2`
-/

namespace A145040.P4675333684435483382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112634 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145040.P4675333684435483382

/-! ## A145040.P8188977100399646020

`A000043(A112649(n+2))`
-/

namespace A145040.P8188977100399646020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (A112649 (n + 2)).toNat

end

end A145040.P8188977100399646020

/-! ## A145040.P17774692973401260142

`A000043(eq[1, A080172(n+1)]+1)`
-/

namespace A145040.P17774692973401260142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A145040.P17774692973401260142

/-!
# A145041: Primes p (A000043) such that 2^p-1 is prime (A000668) and congruent to 31 mod 6!.

The programs for A145041, there is no canonical definition to state claims against.
-/

/-! ## A145041.P6537334527406177685

`A000043(lt[A126044(n+1), A126043(n+1)]+1)`
-/

namespace A145041.P6537334527406177685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A145041.P6537334527406177685

/-! ## A145041.P9269103376727729614

`p?[xor(2, A216519(n+1)+2)]`
-/

namespace A145041.P9269103376727729614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A216519 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145041.P9269103376727729614

/-! ## A145041.P646166784681195175

`A216519(lt[A046358(n+1), A127302(3*n)])`
-/

namespace A145041.P646166784681195175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127302 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216519 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A145041.P646166784681195175

/-! ## A145041.P2688117812756503405

`filter[A216519(n+1), A290098(#)]`
-/

namespace A145041.P2688117812756503405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A145041.P2688117812756503405

/-! ## A145041.P8282052290157819796

`filter[A216519(n+1), A353812(#)]`
-/

namespace A145041.P8282052290157819796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A145041.P8282052290157819796

/-!
# A145042: Primes p (A000043) such that 2^p-1 is prime (A000668) and congruent to 127 mod 6!.

The programs for A145042, there is no canonical definition to state claims against.
-/

/-! ## A145042.P709460615751257633

`A174265(eq[7, A126052(n+1)])`
-/

namespace A145042.P709460615751257633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145042.P709460615751257633

/-! ## A145042.P2472227728712191821

`A112633(lt[A329344(n+1), A329362(n)])`
-/

namespace A145042.P2472227728712191821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112633 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A145042.P2472227728712191821

/-! ## A145042.P4748760296009444723

`A112633(lt[A329348(n+1), A329362(n)])`
-/

namespace A145042.P4748760296009444723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112633 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A145042.P4748760296009444723

/-! ## A145042.P12308387945689355636

`∩[A112633(n+1), A216518(A161508(n+1))]`
-/

namespace A145042.P12308387945689355636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216518 (A161508 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145042.P12308387945689355636

/-! ## A145042.P11397177253092461458

`A112633(lt[A332278(3*n), A048793(2*n+1)])`
-/

namespace A145042.P11397177253092461458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332278 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112633 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A145042.P11397177253092461458

/-!
# A145043: Primes p for which s=2 is the least positive integer such that sp-t(sp) is a triangular number, where t(n) is the maximal triangular number not exceeding n.

The programs for A145043, there is no canonical definition to state claims against.
-/

/-! ## A145043.P1827601675166596614

`A000040(A351886(n+1)+A135382(3*(n+1)))`
-/

namespace A145043.P1827601675166596614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A351886 (n + 1) + A135382 (3 * (n + 1))).toNat

end

end A145043.P1827601675166596614

/-!
# A145044: Primes p (A000043) such that 2^p-1 is prime (A000668) and congruent to 271 mod 6!.

The programs for A145044, there is no canonical definition to state claims against.
-/

/-! ## A145044.P10407139143553425715

`A174265(eq[1, A126052(n+1)])`
-/

namespace A145044.P10407139143553425715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145044.P10407139143553425715

/-! ## A145044.P3496516104387588554

`∩[A216518(n+1), A112634(n+2)]`
-/

namespace A145044.P3496516104387588554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112634 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145044.P3496516104387588554

/-!
# A145045: Primes p (A000043) such that 2^p-1 is prime (A000668) and congruent to 607 mod 6!

The programs for A145045, there is no canonical definition to state claims against.
-/

/-! ## A145045.P6578171671971779737

`A112633(∑[A008846(n+1)%7])`
-/

namespace A145045.P6578171671971779737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008846 (n + 1)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112633 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A145045.P6578171671971779737

/-!
# A145046: a(n) = 2*A002330(n+1) * A002331(n+1).

The programs for A145046, there is no canonical definition to state claims against.
-/

/-! ## A145046.P16610129160844784078

`2*A002330(n+2)*A002331(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145046.P16610129160844784078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002330 (n + 2) * A002331 (n + 2)

end

end A145046.P16610129160844784078

/-! ## A145046.P1964787657066973037

`4*A070151(n+1)`
-/

namespace A145046.P1964787657066973037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A070151 (n + 1)

end

end A145046.P1964787657066973037

/-! ## A145046.P12850985187356901449

`A002144(n+1)-A079887(n+1)²`
-/

namespace A145046.P12850985187356901449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - A079887 (n + 1) ^ 2

end

end A145046.P12850985187356901449

/-! ## A145046.P14457943412419633167

`A079886(n+1)²-A002144(n+1)`
-/

namespace A145046.P14457943412419633167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079886 (n + 1) ^ 2 - A002144 (n + 1)

end

end A145046.P14457943412419633167

/-! ## A145046.P5098641976971982202

`A002365(n+1)+A002366(n+1)-A070079(n+1)`
-/

namespace A145046.P5098641976971982202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002365 (n + 1) + (A002366 (n + 1) - A070079 (n + 1))

end

end A145046.P5098641976971982202

/-! ## A145046.P2580825367108201442

`2*A145019(n+1)`
-/

namespace A145046.P2580825367108201442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145019 (n + 1)

end

end A145046.P2580825367108201442

/-! ## A145046.P7966591023158968277

`A070151(n+1)+A145019(n+1)+A070151(n+1)`
-/

namespace A145046.P7966591023158968277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070151 (n + 1) + (A145019 (n + 1) + A070151 (n + 1))

end

end A145046.P7966591023158968277

/-! ## A145046.P10687132118874707048

`(A079887(n+1)+A079886(n+1))*A002331(n+2)`
-/

namespace A145046.P10687132118874707048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079887 (n + 1) + A079886 (n + 1)) * A002331 (n + 2)

end

end A145046.P10687132118874707048

/-! ## A145046.P8129430003347477875

`A079886(n+1)*A079886(n+1)-A002313(n+2)`
-/

namespace A145046.P8129430003347477875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079886 (n + 1) * A079886 (n + 1) - A002313 (n + 2)

end

end A145046.P8129430003347477875

/-! ## A145046.P14668914842588778050

`A002313(n+2)-A079887(n+1)*A079887(n+1)`
-/

namespace A145046.P14668914842588778050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - A079887 (n + 1) * A079887 (n + 1)

end

end A145046.P14668914842588778050

/-! ## A145046.P2374161530001990506

`(A079886(n+1)-A079887(n+1))*A002330(n+2)`
-/

namespace A145046.P2374161530001990506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079886 (n + 1) - A079887 (n + 1)) * A002330 (n + 2)

end

end A145046.P2374161530001990506

/-! ## A145046.P16164250835813022351

`2/A070079(n+1)*A145010(n+1)`
-/

namespace A145046.P16164250835813022351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A070079 (n + 1) : ℚ) * (A145010 (n + 1) : ℚ)

end

end A145046.P16164250835813022351

/-! ## A145046.P11804534019783488414

`filter[A139794(n+1), A121262(#)]`
-/

namespace A145046.P11804534019783488414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A145046.P11804534019783488414

/-! ## A145046.P9121101737236568197

`A008574(A070151(n+1))`
-/

namespace A145046.P9121101737236568197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A070151 (n + 1)).toNat

end

end A145046.P9121101737236568197

/-! ## A145046.P12426675826818607987

`A004277(A145019(n+1))`
-/

namespace A145046.P12426675826818607987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A145019 (n + 1)).toNat

end

end A145046.P12426675826818607987

/-! ## A145046.P15770046149870349282

`filter[A139794(n+1), A011765(#)]`
-/

namespace A145046.P15770046149870349282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A145046.P15770046149870349282

/-! ## A145046.P18267826783338326856

`filter[A139794(n+1), A059841(#)]`
-/

namespace A145046.P18267826783338326856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A145046.P18267826783338326856

/-! ## A145046.P13021546535481292164

`filter[A139794(n+1), A108357(#)]`
-/

namespace A145046.P13021546535481292164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108357 (f1 j).toNat = 1) n)

end

end A145046.P13021546535481292164

/-! ## A145046.P15851889668928132063

`filter[A139794(n+1), A135528(#)]`
-/

namespace A145046.P15851889668928132063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A145046.P15851889668928132063

/-! ## A145046.P7490978443908654736

`filter[A139794(n+1), A266591(#)]`
-/

namespace A145046.P7490978443908654736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A145046.P7490978443908654736

/-!
# A145051: Numerator of the first convergent to sqrt(n) using the recursion x = (n/x + x)/2.

The programs for A145051, the canonical program `A145051.P11525397846358766616` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145051 has offset 1).

The definition of A145051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145051.P11525397846358766616

`(n+2)*(3-(-1)^n)/4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145051

/-- `(n+2)*(3-(-1)^n)/4` -/
def P11525397846358766616.Spec : Prop :=
  ∀ n, P11525397846358766616.a n = (A145051 (n + 1) : ℚ)

end A145051

/-! ## A145051.P16186216114060739507

`gcd(n+2, ∑[n+1])`
-/

namespace A145051.P16186216114060739507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145051.P16186216114060739507

namespace A145051

/-- `gcd(n+2, ∑[n+1])` -/
def P16186216114060739507.Spec : Prop :=
  ∀ n, (P16186216114060739507.a n : ℤ) = A145051 (n + 1)

end A145051

/-! ## A145051.P8606590206165837023

`abs((n+2)/or(n, -2))`
-/

namespace A145051.P8606590206165837023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ)|

end

end A145051.P8606590206165837023

namespace A145051

/-- `abs((n+2)/or(n, -2))` -/
def P8606590206165837023.Spec : Prop :=
  ∀ n, P8606590206165837023.a n = (A145051 (n + 1) : ℚ)

end A145051

/-! ## A145051.P102110944158756414

`-((n+2)/or(n, -2))`
-/

namespace A145051.P102110944158756414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((n + 2 : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ))

end

end A145051.P102110944158756414

namespace A145051

/-- `-((n+2)/or(n, -2))` -/
def P102110944158756414.Spec : Prop :=
  ∀ n, P102110944158756414.a n = (A145051 (n + 1) : ℚ)

end A145051

/-! ## A145051.P17170361573076922347

`∑[n+2]%(n+2)+1`
-/

namespace A145051.P17170361573076922347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2) + 1

end

end A145051.P17170361573076922347

namespace A145051

/-- `∑[n+2]%(n+2)+1` -/
def P17170361573076922347.Spec : Prop :=
  ∀ n, (P17170361573076922347.a n : ℤ) = A145051 (n + 1)

end A145051

/-! ## A145051.P14458839333892829000

`(and(1, n)+1)*(n+2)/2`
-/

namespace A145051.P14458839333892829000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1 : ℚ) * ((n + 2 : ℚ) / 2)

end

end A145051.P14458839333892829000

namespace A145051

/-- `(and(1, n)+1)*(n+2)/2` -/
def P14458839333892829000.Spec : Prop :=
  ∀ n, P14458839333892829000.a n = (A145051 (n + 1) : ℚ)

end A145051

/-! ## A145051.P2153995955483850491

`abs(∑[n+1]/a(n-1))` with `a(0)=1`
-/

namespace A145051.P2153995955483850491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / a (n - 1)|

end

end A145051.P2153995955483850491

namespace A145051

/-- `abs(∑[n+1]/a(n-1))` -/
def P2153995955483850491.Spec : Prop :=
  ∀ n, P2153995955483850491.a n = (A145051 (n + 1) : ℚ)

end A145051

/-! ## A145051.P10872082190818620083

`(n+2)²%record[or(2, n+1)]`
-/

namespace A145051.P10872082190818620083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 % f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145051.P10872082190818620083

namespace A145051

/-- `(n+2)²%record[or(2, n+1)]` -/
def P10872082190818620083.Spec : Prop :=
  ∀ n, (P10872082190818620083.a n : ℤ) = A145051 (n + 1)

end A145051

/-! ## A145051.P1030826727389404427

`floor(∑[n+1]/a(n-1))` with `a(0)=1`
-/

namespace A145051.P1030826727389404427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A145051.P1030826727389404427

namespace A145051

/-- `floor(∑[n+1]/a(n-1))` -/
def P1030826727389404427.Spec : Prop :=
  ∀ n, P1030826727389404427.a n = A145051 (n + 1)

end A145051

/-! ## A145051.P15578881449334328395

`ceil(∑[n+1]/a(n-1))` with `a(0)=1`
-/

namespace A145051.P15578881449334328395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (a (n - 1) : ℚ)⌉

end

end A145051.P15578881449334328395

namespace A145051

/-- `ceil(∑[n+1]/a(n-1))` -/
def P15578881449334328395.Spec : Prop :=
  ∀ n, P15578881449334328395.a n = A145051 (n + 1)

end A145051

/-! ## A145051.P8102287044479767592

`round(∑[n+1]/a(n-1))` with `a(0)=1`
-/

namespace A145051.P8102287044479767592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (a (n - 1) : ℚ))

end

end A145051.P8102287044479767592

namespace A145051

/-- `round(∑[n+1]/a(n-1))` -/
def P8102287044479767592.Spec : Prop :=
  ∀ n, P8102287044479767592.a n = A145051 (n + 1)

end A145051

/-! ## A145051.P9897658964892846846

`ogf((1+3x-x^3)/(1-2x^2+x^4))`
-/

namespace A145051.P9897658964892846846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 0, -1] [1, 0, -2, 0, 1] n

end

end A145051.P9897658964892846846

namespace A145051

/-- `ogf((1+3x-x^3)/(1-2x^2+x^4))` -/
def P9897658964892846846.Spec : Prop :=
  ∀ n, P9897658964892846846.a n = A145051 (n + 1)

end A145051

/-! ## A145051.P7636863354434051532

`(2/n+1)*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A145051.P7636863354434051532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 / (n : ℚ) + 1) * a (n - 2)

end

end A145051.P7636863354434051532

namespace A145051

/-- `(2/n+1)*a(n-2)` -/
def P7636863354434051532.Spec : Prop :=
  ∀ n, P7636863354434051532.a n = (A145051 (n + 1) : ℚ)

end A145051

/-! ## A145051.P3741210039011155083

`(n+2)*2^-and(1, n+1)`
-/

namespace A145051.P3741210039011155083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (2 : ℚ) ^ (-(Nat.land 1 (n + 1) : ℤ) : ℤ)

end

end A145051.P3741210039011155083

namespace A145051

/-- `(n+2)*2^-and(1, n+1)` -/
def P3741210039011155083.Spec : Prop :=
  ∀ n, P3741210039011155083.a n = (A145051 (n + 1) : ℚ)

end A145051

/-! ## A145051.P13089275633392718253

`floor((n+2)/(and(1, n+1)+1))`
-/

namespace A145051.P13089275633392718253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (Nat.land 1 (n + 1) + 1 : ℚ)⌋

end

end A145051.P13089275633392718253

namespace A145051

/-- `floor((n+2)/(and(1, n+1)+1))` -/
def P13089275633392718253.Spec : Prop :=
  ∀ n, P13089275633392718253.a n = A145051 (n + 1)

end A145051

/-! ## A145051.P1206266631604893479

`ceil((n+2)/(and(1, n+1)+1))`
-/

namespace A145051.P1206266631604893479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) / (Nat.land 1 (n + 1) + 1 : ℚ)⌉

end

end A145051.P1206266631604893479

namespace A145051

/-- `ceil((n+2)/(and(1, n+1)+1))` -/
def P1206266631604893479.Spec : Prop :=
  ∀ n, P1206266631604893479.a n = A145051 (n + 1)

end A145051

/-! ## A145051.P10049642241129044889

`round((n+2)/(and(1, n+1)+1))`
-/

namespace A145051.P10049642241129044889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / (Nat.land 1 (n + 1) + 1 : ℚ))

end

end A145051.P10049642241129044889

namespace A145051

/-- `round((n+2)/(and(1, n+1)+1))` -/
def P10049642241129044889.Spec : Prop :=
  ∀ n, P10049642241129044889.a n = A145051 (n + 1)

end A145051

/-! ## A145051.P5356697864714778593

`abs((n+2)/(or(1, n)-(n-1)))`
-/

namespace A145051.P5356697864714778593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℚ) / ((Nat.lor 1 n : ℤ) - ((n : ℤ) - 1) : ℚ)|

end

end A145051.P5356697864714778593

namespace A145051

/-- `abs((n+2)/(or(1, n)-(n-1)))` -/
def P5356697864714778593.Spec : Prop :=
  ∀ n, P5356697864714778593.a n = (A145051 (n + 1) : ℚ)

end A145051

/-! ## A145051.P14226382665895743545

`floor((n+2)/(or(1, n)-(n-1)))`
-/

namespace A145051.P14226382665895743545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / ((Nat.lor 1 n : ℤ) - ((n : ℤ) - 1) : ℚ)⌋

end

end A145051.P14226382665895743545

namespace A145051

/-- `floor((n+2)/(or(1, n)-(n-1)))` -/
def P14226382665895743545.Spec : Prop :=
  ∀ n, P14226382665895743545.a n = A145051 (n + 1)

end A145051

/-! ## A145051.P16645307993624404311

`ceil((n+2)/(or(1, n)-(n-1)))`
-/

namespace A145051.P16645307993624404311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) / ((Nat.lor 1 n : ℤ) - ((n : ℤ) - 1) : ℚ)⌉

end

end A145051.P16645307993624404311

namespace A145051

/-- `ceil((n+2)/(or(1, n)-(n-1)))` -/
def P16645307993624404311.Spec : Prop :=
  ∀ n, P16645307993624404311.a n = A145051 (n + 1)

end A145051

/-!
# A145052: One-third of the number of n X n nonnegative integer arrays with every 3 X 3 subblock summing to 1.

The programs for A145052, the canonical program `A145052.P7508577205988973082` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145052 has offset 3).

The definition of A145052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 624 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145052.P7508577205988973082

`3*(a(n-3)+2)` with `a(0)=3, a(1)=7, a(2)=11`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145052

/-- `3*(a(n-3)+2)` -/
def P7508577205988973082.Spec : Prop :=
  ∀ n, (P7508577205988973082.a n : ℤ) = A145052 (n + 3)

theorem P7508577205988973082.correct : P7508577205988973082.Spec := by
  intro n
  simp only [A145052, Nat.add_sub_cancel]

end A145052

/-! ## A145052.P12398248886560779759

`∑[3*a(n-3)]` with `a(0)=3, a(1)=4, a(2)=4, a(3)=4`
-/

namespace A145052.P12398248886560779759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 4, 4] fun n f1 =>
  3 * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145052.P12398248886560779759

namespace A145052

/-- `∑[3*a(n-3)]` -/
def P12398248886560779759.Spec : Prop :=
  ∀ n, (P12398248886560779759.a n : ℤ) = A145052 (n + 3)

end A145052

/-! ## A145052.P16165880451085293219

`4*∑[3^floor(n*γ²)]-1`
-/

namespace A145052.P16165880451085293219
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℝ) * Real.eulerMascheroniConstant ^ 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A145052.P16165880451085293219

namespace A145052

/-- `4*∑[3^floor(n*γ²)]-1` -/
def P16165880451085293219.Spec : Prop :=
  ∀ n, P16165880451085293219.a n = (A145052 (n + 3) : ℚ)

end A145052

/-! ## A145052.P4569970969275094683

`ogf((3+4x+4x^2-5x^3)/(1-x-3x^3+3x^4))`
-/

namespace A145052.P4569970969275094683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, 4, -5] [1, -1, 0, -3, 3] n

end

end A145052.P4569970969275094683

namespace A145052

/-- `ogf((3+4x+4x^2-5x^3)/(1-x-3x^3+3x^4))` -/
def P4569970969275094683.Spec : Prop :=
  ∀ n, P4569970969275094683.a n = A145052 (n + 3)

end A145052

/-! ## A145052.P11293077350023334495

`∑[A008486(a(n-3))]` with `a(0)=3, a(1)=4, a(2)=4, a(3)=4`
-/

namespace A145052.P11293077350023334495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 4, 4] fun n f1 =>
  A008486 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145052.P11293077350023334495

namespace A145052

/-- `∑[A008486(a(n-3))]` -/
def P11293077350023334495.Spec : Prop :=
  ∀ n, P11293077350023334495.a n = A145052 (n + 3)

end A145052

/-!
# A145057: First differences of A031443.

The programs for A145057, there is no canonical definition to state claims against.
-/

/-! ## A145057.P4190553310220647772

`∑[A145058(n+1)]`
-/

namespace A145057.P4190553310220647772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145057.P4190553310220647772

/-! ## A145057.P9863345076126523229

`A031443(n+2)-(A145058(n+2)+A031443(n+1))`
-/

namespace A145057.P9863345076126523229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 2) - (A145058 (n + 2) + A031443 (n + 1))

end

end A145057.P9863345076126523229

/-! ## A145057.P12808188551595032126

`Δ[eq[A000120(n), A080791(n)]]`
-/

namespace A145057.P12808188551595032126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A145057.P12808188551595032126

/-! ## A145057.P3274424687463461606

`Δ[eq[n, A080791(n)+A011371(n)]]`
-/

namespace A145057.P3274424687463461606
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + A011371 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A145057.P3274424687463461606

/-! ## A145057.P13307390120407910324

`Δ[eq[A000120(n)+1, A008687(n+1)]]`
-/

namespace A145057.P13307390120407910324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A145057.P13307390120407910324

/-! ## A145057.P7117208515912277976

`Δ[eq[A119476(n+1), A119477(n+1)]]`
-/

namespace A145057.P7117208515912277976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119476 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119477 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A145057.P7117208515912277976

/-! ## A145057.P9011859698493797389

`Δ[eq[A000120(n), A023416(2*n+1)]]`
-/

namespace A145057.P9011859698493797389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A145057.P9011859698493797389

/-!
# A145058: Second differences of A031443.

The programs for A145058, there is no canonical definition to state claims against.
-/

/-! ## A145058.P7473111112748960117

`Δ[A145057(A028310(n))%(n+1)²]`
-/

namespace A145058.P7473111112748960117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145057 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145058.P7473111112748960117

/-! ## A145058.P9164715005825609164

`A000038(n)+Δ[A145057(A028310(n))]`
-/

namespace A145058.P9164715005825609164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145057 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A145058.P9164715005825609164

/-! ## A145058.P13946389451520615355

`A145057(n+1)+A000038(n)-A145057(A028310(n))`
-/

namespace A145058.P13946389451520615355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145057 (n + 1) + (A000038 n - A145057 (A028310 n).toNat)

end

end A145058.P13946389451520615355

/-! ## A145058.P2542013989240874122

`A145057(n+1)-A057427(n)*A145057(A028310(n))`
-/

namespace A145058.P2542013989240874122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145057 (n + 1) - A057427 n * A145057 (A028310 n).toNat

end

end A145058.P2542013989240874122

/-! ## A145058.P10583079336386163298

`Δ[A158388(n)+A145057(A028310(n))]`
-/

namespace A145058.P10583079336386163298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A145057 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145058.P10583079336386163298

/-! ## A145058.P5746719823024427960

`Δ[A057427(n)*A145057(A028310(n))]`
-/

namespace A145058.P5746719823024427960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A145057 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145058.P5746719823024427960

/-! ## A145058.P7476888354433963531

`Δ[A145057(A233583(n+1))%A001844(n)]`
-/

namespace A145058.P7476888354433963531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145057 (A233583 (n + 1)).toNat) (A001844 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145058.P7476888354433963531

/-!
# A145059: Sum of successive values in A031443.

The programs for A145059, there is no canonical definition to state claims against.
-/

/-! ## A145059.P1587495704764870499

`abs(Δ[(-1)^n*A031443(n+1)])`
-/

namespace A145059.P1587495704764870499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A031443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A145059.P1587495704764870499

/-! ## A145059.P17748715471037396764

`A031443(n+1)+A031443(n+2)`
-/

namespace A145059.P17748715471037396764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1) + A031443 (n + 2)

end

end A145059.P17748715471037396764

/-! ## A145059.P12534100395516261355

`∑[A145057(n+2)+A145057(n+1)]+2`
-/

namespace A145059.P12534100395516261355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145057 (n + 2) + A145057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A145059.P12534100395516261355

/-! ## A145059.P12985660171072184300

`A066879(2*n+1)+Δ[A337238(n+1)/4]`
-/

namespace A145059.P12985660171072184300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337238 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066879 (2 * n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A145059.P12985660171072184300

/-! ## A145059.P2923709827444330588

`A066879(2*n+1)+Δ[A066879(Δ[n²])/2]`
-/

namespace A145059.P2923709827444330588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066879 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066879 (2 * n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A145059.P2923709827444330588

/-!
# A145060: Cumulative sums of A031443.

The programs for A145060, there is no canonical definition to state claims against.
-/

/-! ## A145060.P12246573756598220913

`∑[A031443(n+2)]+2`
-/

namespace A145060.P12246573756598220913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A145060.P12246573756598220913

/-! ## A145060.P320892461830994367

`∑[∑[A145057(n+2)]+2]+2`
-/

namespace A145060.P320892461830994367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145057 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A145060.P320892461830994367

/-! ## A145060.P6960049612813696938

`∑[A378000(∑[A182230(n)])]`
-/

namespace A145060.P6960049612813696938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182230 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378000 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145060.P6960049612813696938

/-! ## A145060.P11246397684698762677

`∑[A378000(∑[A307294(n+2)])]`
-/

namespace A145060.P11246397684698762677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307294 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378000 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145060.P11246397684698762677

/-!
# A145061: Number of pairs of odd numbers that separate two consecutive twin prime pairs.

The programs for A145061, the canonical program `A145061.P9301229147611085` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145061 has offset 1).

The definition of A145061 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A006512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A145061.P9301229147611085

`(A001359(n+2)-A006512(n+1))/2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A145061

/-- `(A001359(n+2)-A006512(n+1))/2` -/
def P9301229147611085.Spec : Prop :=
  ∀ n, P9301229147611085.a n = (A145061 (n + 1) : ℚ)

end A145061

/-! ## A145061.P5868413387620412881

`(A001359(n+2)-(A001359(n+1)+2))/2`
-/

namespace A145061.P5868413387620412881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 2) - (A001359 (n + 1) + 2) : ℚ) / 2

end

end A145061.P5868413387620412881

namespace A145061

/-- `(A001359(n+2)-(A001359(n+1)+2))/2` -/
def P5868413387620412881.Spec : Prop :=
  ∀ n, P5868413387620412881.a n = (A145061 (n + 1) : ℚ)

end A145061

/-! ## A145061.P10085933404643235929

`A167132(n+1)/2`
-/

namespace A145061.P10085933404643235929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167132 (n + 1) : ℚ) / 2

end

end A145061.P10085933404643235929

namespace A145061

/-- `A167132(n+1)/2` -/
def P10085933404643235929.Spec : Prop :=
  ∀ n, P10085933404643235929.a n = (A145061 (n + 1) : ℚ)

end A145061

/-! ## A145061.P5775176470825560270

`ceil(A204099(n+1)/2)`
-/

namespace A145061.P5775176470825560270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A204099 (n + 1) : ℚ) / 2⌉

end

end A145061.P5775176470825560270

namespace A145061

/-- `ceil(A204099(n+1)/2)` -/
def P5775176470825560270.Spec : Prop :=
  ∀ n, P5775176470825560270.a n = A145061 (n + 1)

end A145061

/-! ## A145061.P3665914800738933214

`Δ[A040040(n+1)]-1`
-/

namespace A145061.P3665914800738933214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A145061.P3665914800738933214

namespace A145061

/-- `Δ[A040040(n+1)]-1` -/
def P3665914800738933214.Spec : Prop :=
  ∀ n, P3665914800738933214.a n = A145061 (n + 1)

end A145061

/-! ## A145061.P11734853463985035659

`Δ[A243811(n+1)]-1`
-/

namespace A145061.P11734853463985035659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A145061.P11734853463985035659

namespace A145061

/-- `Δ[A243811(n+1)]-1` -/
def P11734853463985035659.Spec : Prop :=
  ∀ n, P11734853463985035659.a n = A145061 (n + 1)

end A145061

/-! ## A145061.P3234641110449789531

`Δ[A168497(n+2)]-1`
-/

namespace A145061.P3234641110449789531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A145061.P3234641110449789531

namespace A145061

/-- `Δ[A168497(n+2)]-1` -/
def P3234641110449789531.Spec : Prop :=
  ∀ n, P3234641110449789531.a n = A145061 (n + 1)

end A145061

/-! ## A145061.P10529587852413527983

`Δ[A163059(n+1)]-3`
-/

namespace A145061.P10529587852413527983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A145061.P10529587852413527983

namespace A145061

/-- `Δ[A163059(n+1)]-3` -/
def P10529587852413527983.Spec : Prop :=
  ∀ n, P10529587852413527983.a n = A145061 (n + 1)

end A145061

/-! ## A145061.P2821155306077526987

`A053319(n+1)/2-1`
-/

namespace A145061.P2821155306077526987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053319 (n + 1) : ℚ) / 2 - 1

end

end A145061.P2821155306077526987

namespace A145061

/-- `A053319(n+1)/2-1` -/
def P2821155306077526987.Spec : Prop :=
  ∀ n, P2821155306077526987.a n = (A145061 (n + 1) : ℚ)

end A145061

/-! ## A145061.P1797877416370684989

`Δ[record[A049563(n+2)]]-1`
-/

namespace A145061.P1797877416370684989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049563 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A145061.P1797877416370684989

namespace A145061

/-- `Δ[record[A049563(n+2)]]-1` -/
def P1797877416370684989.Spec : Prop :=
  ∀ n, P1797877416370684989.a n = A145061 (n + 1)

end A145061

/-!
# A145062: Generalized Bessel numbers.

The programs for A145062, there is no canonical definition to state claims against.
-/

/-! ## A145062.P2652950990293454100

`∑[A003056(A020010(n))]`
-/

namespace A145062.P2652950990293454100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A020010 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145062.P2652950990293454100

/-! ## A145062.P11364254851354029274

`ceil(A193098(n+1)/A014623(n))`
-/

namespace A145062.P11364254851354029274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A193098 (n + 1) : ℚ) / (A014623 n : ℚ)⌉

end

end A145062.P11364254851354029274

/-! ## A145062.P8387799748317019870

`A001462(A322197(n)-A000045(n))`
-/

namespace A145062.P8387799748317019870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A322197 n - A000045 n).toNat

end

end A145062.P8387799748317019870

/-! ## A145062.P5563318812588926555

`A300323(n)-A151755(A203847(n+1))`
-/

namespace A145062.P5563318812588926555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300323 n - A151755 (A203847 (n + 1)).toNat

end

end A145062.P5563318812588926555

/-! ## A145062.P2757089417784054029

`A243283(A115276(n)+n)-A049759(A270814(2*(n+1)))`
-/

namespace A145062.P2757089417784054029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A115276 n + (n : ℤ)).toNat - A049759 (A270814 (2 * (n + 1))).toNat

end

end A145062.P2757089417784054029

/-!
# A145063: Hankel transform of A145062.

The programs for A145063, the canonical program `A145063.P12247543923868809551` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145063 has offset 0).

The definition of A145063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145063.P13844805031056104850

`∑[(-1)^a(n-1)-a(n-2)]-a(n-2)` with `a(0)=1, a(1)=-1`
-/

namespace A145063.P13844805031056104850
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  (-1 : ℝ) ^ (f1 (n - 1)) - f1 (n - 2)

def a : ℕ → ℝ := SequenceMachineLib.rec [1, -1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A145063.P13844805031056104850

namespace A145063

/-- `∑[(-1)^a(n-1)-a(n-2)]-a(n-2)` -/
def P13844805031056104850.Spec : Prop :=
  ∀ n, P13844805031056104850.a n = (A145063 n : ℝ)

end A145063

/-! ## A145063.P2706580869484655526

`A000217(A158416(n))*A087960(n)`
-/

namespace A145063.P2706580869484655526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A158416 n).toNat * A087960 n

end

end A145063.P2706580869484655526

namespace A145063

/-- `A000217(A158416(n))*A087960(n)` -/
def P2706580869484655526.Spec : Prop :=
  ∀ n, P2706580869484655526.a n = A145063 n

end A145063

/-! ## A145063.P12247543923868809551

`Δ[A133872(n)-A083392(A110654(n))]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A145063

/-- `Δ[A133872(n)-A083392(A110654(n))]` -/
def P12247543923868809551.Spec : Prop :=
  ∀ n, P12247543923868809551.a n = A145063 n

theorem P12247543923868809551.correct : P12247543923868809551.Spec := by
  intro n
  simp only [A145063]

end A145063

/-! ## A145063.P4561116458729946767

`A056594(n+1)+A001972(n)*A056594(n)`
-/

namespace A145063.P4561116458729946767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1) + A001972 n * A056594 n

end

end A145063.P4561116458729946767

namespace A145063

/-- `A056594(n+1)+A001972(n)*A056594(n)` -/
def P4561116458729946767.Spec : Prop :=
  ∀ n, P4561116458729946767.a n = A145063 n

end A145063

/-! ## A145063.P15288672957677861912

`A204155(A101881(n))`
-/

namespace A145063.P15288672957677861912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204155 (A101881 n).toNat

end

end A145063.P15288672957677861912

namespace A145063

/-- `A204155(A101881(n))` -/
def P15288672957677861912.Spec : Prop :=
  ∀ n, P15288672957677861912.a n = A145063 n

end A145063

/-! ## A145063.P3669932330819395026

`A204155(A165157(n)+1)`
-/

namespace A145063.P3669932330819395026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204155 (A165157 n + 1).toNat

end

end A145063.P3669932330819395026

namespace A145063

/-- `A204155(A165157(n)+1)` -/
def P3669932330819395026.Spec : Prop :=
  ∀ n, P3669932330819395026.a n = A145063 n

end A145063

/-! ## A145063.P5997294271977353143

`A129818(Δ[A208971(n+1)])`
-/

namespace A145063.P5997294271977353143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129818 (f1 (n + 1) - f1 n).toNat

end

end A145063.P5997294271977353143

namespace A145063

/-- `A129818(Δ[A208971(n+1)])` -/
def P5997294271977353143.Spec : Prop :=
  ∀ n, P5997294271977353143.a n = A145063 n

end A145063

/-! ## A145063.P1621613503406505762

`A129818(A000124(A008619(n))-A000035(n))`
-/

namespace A145063.P1621613503406505762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129818 (A000124 (A008619 n).toNat - A000035 n).toNat

end

end A145063.P1621613503406505762

namespace A145063

/-- `A129818(A000124(A008619(n))-A000035(n))` -/
def P1621613503406505762.Spec : Prop :=
  ∀ n, P1621613503406505762.a n = A145063 n

end A145063

/-! ## A145063.P7611221654249540380

`A115139(A008619(n)²+2+n)`
-/

namespace A145063.P7611221654249540380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 (A008619 n ^ 2 + 2 + (n : ℤ)).toNat

end

end A145063.P7611221654249540380

namespace A145063

/-- `A115139(A008619(n)²+2+n)` -/
def P7611221654249540380.Spec : Prop :=
  ∀ n, P7611221654249540380.a n = A145063 n

end A145063

/-! ## A145063.P2511990360891736473

`A080417(A117142(n+2))`
-/

namespace A145063.P2511990360891736473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080417 (A117142 (n + 2)).toNat

end

end A145063.P2511990360891736473

namespace A145063

/-- `A080417(A117142(n+2))` -/
def P2511990360891736473.Spec : Prop :=
  ∀ n, P2511990360891736473.a n = A145063 n

end A145063

/-! ## A145063.P18054690499697557552

`A108299(A106833(n+1)+A000217(n))`
-/

namespace A145063.P18054690499697557552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 (A106833 (n + 1) + A000217 n).toNat

end

end A145063.P18054690499697557552

namespace A145063

/-- `A108299(A106833(n+1)+A000217(n))` -/
def P18054690499697557552.Spec : Prop :=
  ∀ n, P18054690499697557552.a n = A145063 n

end A145063

/-! ## A145063.P18430771294092414082

`A108299(A266440(n)+A144396(n+1))`
-/

namespace A145063.P18430771294092414082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 (A266440 n + A144396 (n + 1)).toNat

end

end A145063.P18430771294092414082

namespace A145063

/-- `A108299(A266440(n)+A144396(n+1))` -/
def P18430771294092414082.Spec : Prop :=
  ∀ n, P18430771294092414082.a n = A145063 n

end A145063

/-! ## A145063.P2007684694832356019

`A053119(A211377(∑[n+2]))`
-/

namespace A145063.P2007684694832356019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (A211377 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A145063.P2007684694832356019

namespace A145063

/-- `A053119(A211377(∑[n+2]))` -/
def P2007684694832356019.Spec : Prop :=
  ∀ n, P2007684694832356019.a n = A145063 n

end A145063

/-!
# A145064: Reduced numerators of the first convergent to the cube root of n using the recursion x = (2*x+n/x^2)/3.

The programs for A145064, the canonical program `A145064.P11699698611124088871` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145064 has offset 0).

The definition of A145064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145064.P11699698611124088871

`2*a(n-3)-a(n-6)` with `a(0)=2, a(1)=1, a(2)=4, a(3)=5, a(4)=2, a(5)=7`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145064

/-- `2*a(n-3)-a(n-6)` -/
def P11699698611124088871.Spec : Prop :=
  ∀ n, P11699698611124088871.a n = A145064 n

theorem P11699698611124088871.correct : P11699698611124088871.Spec := by
  intro n
  simp only [A145064]

end A145064

/-! ## A145064.P14835844855909209377

`lcm(3, n+2)/3`
-/

namespace A145064.P14835844855909209377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n + 2) : ℚ) / 3

end

end A145064.P14835844855909209377

namespace A145064

/-- `lcm(3, n+2)/3` -/
def P14835844855909209377.Spec : Prop :=
  ∀ n, P14835844855909209377.a n = (A145064 n : ℚ)

end A145064

/-! ## A145064.P593543822153572550

`gcd(n+2, ∑[∑[n]])`
-/

namespace A145064.P593543822153572550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145064.P593543822153572550

namespace A145064

/-- `gcd(n+2, ∑[∑[n]])` -/
def P593543822153572550.Spec : Prop :=
  ∀ n, (P593543822153572550.a n : ℤ) = A145064 n

end A145064

/-! ## A145064.P3354580638062422179

`(n+2)/gcd(3, 1-n)`
-/

namespace A145064.P3354580638062422179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Int.gcd 3 (1 - (n : ℤ)) : ℚ)

end

end A145064.P3354580638062422179

namespace A145064

/-- `(n+2)/gcd(3, 1-n)` -/
def P3354580638062422179.Spec : Prop :=
  ∀ n, P3354580638062422179.a n = (A145064 n : ℚ)

end A145064

/-! ## A145064.P16343058490736993219

`(n+2)/3^(∑[n]%3)`
-/

namespace A145064.P16343058490736993219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (3 ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % 3) : ℚ)

end

end A145064.P16343058490736993219

namespace A145064

/-- `(n+2)/3^(∑[n]%3)` -/
def P16343058490736993219.Spec : Prop :=
  ∀ n, P16343058490736993219.a n = (A145064 n : ℚ)

end A145064

/-! ## A145064.P13939136957454166684

`(n+2)/or(1, (n+1)%3)`
-/

namespace A145064.P13939136957454166684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Nat.lor 1 ((n + 1) % 3) : ℚ)

end

end A145064.P13939136957454166684

namespace A145064

/-- `(n+2)/or(1, (n+1)%3)` -/
def P13939136957454166684.Spec : Prop :=
  ∀ n, P13939136957454166684.a n = (A145064 n : ℚ)

end A145064

/-! ## A145064.P12928442374155684632

`(n+2)/sqrt(gcd(9, (n+2)²))`
-/

namespace A145064.P12928442374155684632
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) / Real.sqrt (Nat.gcd 9 ((n + 2) ^ 2) : ℝ)

end

end A145064.P12928442374155684632

namespace A145064

/-- `(n+2)/sqrt(gcd(9, (n+2)²))` -/
def P12928442374155684632.Spec : Prop :=
  ∀ n, P12928442374155684632.a n = (A145064 n : ℝ)

end A145064

/-! ## A145064.P9808994235548304654

`(n+2)/sqrt(dr((n+2)^6))`
-/

namespace A145064.P9808994235548304654
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) / Real.sqrt (SequenceMachineLib.digitalRoot ((n + 2) ^ 6 : ℤ) : ℝ)

end

end A145064.P9808994235548304654

namespace A145064

/-- `(n+2)/sqrt(dr((n+2)^6))` -/
def P9808994235548304654.Spec : Prop :=
  ∀ n, P9808994235548304654.a n = (A145064 n : ℝ)

end A145064

/-! ## A145064.P9414031989679556961

`∑[∑[n]+1]%(n+2)+1`
-/

namespace A145064.P9414031989679556961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2) + 1

end

end A145064.P9414031989679556961

namespace A145064

/-- `∑[∑[n]+1]%(n+2)+1` -/
def P9414031989679556961.Spec : Prop :=
  ∀ n, (P9414031989679556961.a n : ℤ) = A145064 n

end A145064

/-! ## A145064.P1686413073586737038

`(n+2)/floor(cosh((2*n)%3))`
-/

namespace A145064.P1686413073586737038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (⌊Real.cosh ((2 * n % 3 : ℕ) : ℝ)⌋ : ℚ)

end

end A145064.P1686413073586737038

namespace A145064

/-- `(n+2)/floor(cosh((2*n)%3))` -/
def P1686413073586737038.Spec : Prop :=
  ∀ n, P1686413073586737038.a n = (A145064 n : ℚ)

end A145064

/-! ## A145064.P2556044918439147045

`(n+2)/(2*n+1)²%6`
-/

namespace A145064.P2556044918439147045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (((2 * n + 1) ^ 2 % 6 : ℕ) : ℚ)

end

end A145064.P2556044918439147045

namespace A145064

/-- `(n+2)/(2*n+1)²%6` -/
def P2556044918439147045.Spec : Prop :=
  ∀ n, P2556044918439147045.a n = (A145064 n : ℚ)

end A145064

/-! ## A145064.P10037181821702274290

`(n+2)/dr(gcd(6, 2*n+1))`
-/

namespace A145064.P10037181821702274290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (SequenceMachineLib.digitalRoot (Nat.gcd 6 (2 * n + 1) : ℤ) : ℚ)

end

end A145064.P10037181821702274290

namespace A145064

/-- `(n+2)/dr(gcd(6, 2*n+1))` -/
def P10037181821702274290.Spec : Prop :=
  ∀ n, P10037181821702274290.a n = (A145064 n : ℚ)

end A145064

/-! ## A145064.P16445443366377871879

`(n+2)/and(3, (2*n+1)%6)`
-/

namespace A145064.P16445443366377871879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Nat.land 3 ((2 * n + 1) % 6) : ℚ)

end

end A145064.P16445443366377871879

namespace A145064

/-- `(n+2)/and(3, (2*n+1)%6)` -/
def P16445443366377871879.Spec : Prop :=
  ∀ n, P16445443366377871879.a n = (A145064 n : ℚ)

end A145064

/-! ## A145064.P11214618486626359481

`(n+2)/(n-1)*a(n-3)` with `a(0)=2, a(1)=1, a(2)=4`
-/

namespace A145064.P11214618486626359481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 4] fun n a =>
  (n + 2 : ℚ) / ((n : ℤ) - 1 : ℚ) * a (n - 3)

end

end A145064.P11214618486626359481

namespace A145064

/-- `(n+2)/(n-1)*a(n-3)` -/
def P11214618486626359481.Spec : Prop :=
  ∀ n, P11214618486626359481.a n = (A145064 n : ℚ)

end A145064

/-! ## A145064.P18427235612845476503

`(n+2)/∏{p}[n+2, gcd(#, (2*n+1)²)]`
-/

namespace A145064.P18427235612845476503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd p ((2 * n + 1) ^ 2) : ℕ) : ℚ)

end

end A145064.P18427235612845476503

namespace A145064

/-- `(n+2)/∏{p}[n+2, gcd(#, (2*n+1)²)]` -/
def P18427235612845476503.Spec : Prop :=
  ∀ n, P18427235612845476503.a n = (A145064 n : ℚ)

end A145064

/-! ## A145064.P5784856204883769153

`A194767(n)/(n+1)`
-/

namespace A145064.P5784856204883769153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194767 n : ℚ) / (n + 1 : ℚ)

end

end A145064.P5784856204883769153

namespace A145064

/-- `A194767(n)/(n+1)` -/
def P5784856204883769153.Spec : Prop :=
  ∀ n, P5784856204883769153.a n = (A145064 n : ℚ)

end A145064

/-! ## A145064.P11176460025542277307

`(n+2)/and(3, A020639(10*n+5))`
-/

namespace A145064.P11176460025542277307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Int.land 3 (A020639 (10 * n + 5)) : ℚ)

end

end A145064.P11176460025542277307

namespace A145064

/-- `(n+2)/and(3, A020639(10*n+5))` -/
def P11176460025542277307.Spec : Prop :=
  ∀ n, P11176460025542277307.a n = (A145064 n : ℚ)

end A145064

/-! ## A145064.P6189043251700007503

`(n+2)/3^val(A020639(2*n+1), 3)`
-/

namespace A145064.P6189043251700007503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (3 ^ SequenceMachineLib.valuation (A020639 (2 * n + 1)).toNat 3 : ℚ)

end

end A145064.P6189043251700007503

namespace A145064

/-- `(n+2)/3^val(A020639(2*n+1), 3)` -/
def P6189043251700007503.Spec : Prop :=
  ∀ n, P6189043251700007503.a n = (A145064 n : ℚ)

end A145064

/-! ## A145064.P12251864367623106911

`(n+2)/A006530(gcd((2*n+1)², C(n, 2)))`
-/

namespace A145064.P12251864367623106911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A006530 (Nat.gcd ((2 * n + 1) ^ 2) (Nat.choose n 2)) : ℚ)

end

end A145064.P12251864367623106911

namespace A145064

/-- `(n+2)/A006530(gcd((2*n+1)², C(n, 2)))` -/
def P12251864367623106911.Spec : Prop :=
  ∀ n, P12251864367623106911.a n = (A145064 n : ℚ)

end A145064

/-! ## A145064.P82734398591473826

`A068217(n+2)/2`
-/

namespace A145064.P82734398591473826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068217 (n + 2) : ℚ) / 2

end

end A145064.P82734398591473826

namespace A145064

/-- `A068217(n+2)/2` -/
def P82734398591473826.Spec : Prop :=
  ∀ n, P82734398591473826.a n = (A145064 n : ℚ)

end A145064

/-!
# A145065: 

The programs for A145065, there is no canonical definition to state claims against.
-/

/-! ## A145065.P17986235724084934954

`A179660(A008592(n+1))`
-/

namespace A145065.P17986235724084934954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179660 (A008592 (n + 1)).toNat

end

end A145065.P17986235724084934954

/-! ## A145065.P18196665563196552061

`A179660(A017365(n)+2)`
-/

namespace A145065.P18196665563196552061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179660 (A017365 n + 2).toNat

end

end A145065.P18196665563196552061

/-! ## A145065.P7273490916887906891

`A179660(A017509(n)-n)`
-/

namespace A145065.P7273490916887906891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179660 (A017509 n - (n : ℤ)).toNat

end

end A145065.P7273490916887906891

/-! ## A145065.P13002102067971094022

`A179660(Δ[A017365(∑[n])])`
-/

namespace A145065.P13002102067971094022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179660 (f1 (n + 1) - f1 n).toNat

end

end A145065.P13002102067971094022

/-! ## A145065.P620327223569655855

`A179660(Δ[5*A027689(n)])`
-/

namespace A145065.P620327223569655855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A027689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179660 (f1 (n + 1) - f1 n).toNat

end

end A145065.P620327223569655855

/-!
# A145066: Partial sums of A002522, starting at n=1.

The programs for A145066, the canonical program `A145066.P8211312693320076270` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145066 has offset 1).

The definition of A145066 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145066.P8211312693320076270

`a(n-1)+(n+1)²+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145066

/-- `a(n-1)+(n+1)²+1` -/
def P8211312693320076270.Spec : Prop :=
  ∀ n, (P8211312693320076270.a n : ℤ) = A145066 (n + 1)

theorem P8211312693320076270.correct : P8211312693320076270.Spec := by
  intro n
  simp only [A145066, Nat.add_sub_cancel]

end A145066

/-! ## A145066.P17671482122667284833

`(n+1)*(n+2)*(2*(n+1)+1)/6+n+1`
-/

namespace A145066.P17671482122667284833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (2 * (n + 1) + 1) : ℚ) / 6 + (n + 1 : ℚ)

end

end A145066.P17671482122667284833

namespace A145066

/-- `(n+1)*(n+2)*(2*(n+1)+1)/6+n+1` -/
def P17671482122667284833.Spec : Prop :=
  ∀ n, P17671482122667284833.a n = (A145066 (n + 1) : ℚ)

theorem P17671482122667284833.correct : P17671482122667284833.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A145066, Nat.add_sub_cancel, A145066.P17671482122667284833.a, A145066.P8211312693320076270.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A145066, Nat.add_sub_cancel, A145066.P17671482122667284833.a, A145066.P8211312693320076270.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A145066

/-! ## A145066.P16121837136702221003

`∑[∑[ogf((2-x+x^2)/(1-2x+x^2))]]`
-/

namespace A145066.P16121837136702221003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145066.P16121837136702221003

namespace A145066

/-- `∑[∑[ogf((2-x+x^2)/(1-2x+x^2))]]` -/
def P16121837136702221003.Spec : Prop :=
  ∀ n, P16121837136702221003.a n = A145066 (n + 1)

end A145066

/-! ## A145066.P17498773005929206519

`ogf((2-x+x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A145066.P17498773005929206519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 1] [1, -4, 6, -4, 1] n

end

end A145066.P17498773005929206519

namespace A145066

/-- `ogf((2-x+x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P17498773005929206519.Spec : Prop :=
  ∀ n, P17498773005929206519.a n = A145066 (n + 1)

end A145066

/-! ## A145066.P11741069726147338850

`abs(∑[∑[a(n-1)+2]])` with `a(0)=2, a(1)=3`
-/

namespace A145066.P11741069726147338850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145066.P11741069726147338850

namespace A145066

/-- `abs(∑[∑[a(n-1)+2]])` -/
def P11741069726147338850.Spec : Prop :=
  ∀ n, (P11741069726147338850.a n : ℤ) = A145066 (n + 1)

end A145066

/-! ## A145066.P9039607682379514595

`floor(∑[∑[a(n-1)+2]])` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A145066.P9039607682379514595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145066.P9039607682379514595

namespace A145066

/-- `floor(∑[∑[a(n-1)+2]])` -/
def P9039607682379514595.Spec : Prop :=
  ∀ n, (P9039607682379514595.a n : ℤ) = A145066 (n + 1)

end A145066

/-! ## A145066.P17457751107332088735

`ceil(∑[∑[a(n-1)+2]])` with `a(0)=2, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A145066.P17457751107332088735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145066.P17457751107332088735

namespace A145066

/-- `ceil(∑[∑[a(n-1)+2]])` -/
def P17457751107332088735.Spec : Prop :=
  ∀ n, (P17457751107332088735.a n : ℤ) = A145066 (n + 1)

end A145066

/-! ## A145066.P16382958283072842822

`round(∑[∑[a(n-1)+2]])` with `a(0)=2, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A145066.P16382958283072842822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145066.P16382958283072842822

namespace A145066

/-- `round(∑[∑[a(n-1)+2]])` -/
def P16382958283072842822.Spec : Prop :=
  ∀ n, (P16382958283072842822.a n : ℤ) = A145066 (n + 1)

end A145066

/-! ## A145066.P13517435911381112280

`-∑[n-lcm(n+1, n+2)]`
-/

namespace A145066.P13517435911381112280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.lcm (n + 1) (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145066.P13517435911381112280

namespace A145066

/-- `-∑[n-lcm(n+1, n+2)]` -/
def P13517435911381112280.Spec : Prop :=
  ∀ n, P13517435911381112280.a n = A145066 (n + 1)

end A145066

/-! ## A145066.P7858230212578739265

`∑[∑[a(n-1)+4]]/2` with `a(0)=4, a(1)=6`
-/

namespace A145066.P7858230212578739265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 6] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A145066.P7858230212578739265

namespace A145066

/-- `∑[∑[a(n-1)+4]]/2` -/
def P7858230212578739265.Spec : Prop :=
  ∀ n, P7858230212578739265.a n = (A145066 (n + 1) : ℚ)

end A145066

/-! ## A145066.P3547477428670446431

`∑[∑[4*n-a(n-1)]]` with `a(0)=2, a(1)=3`
-/

namespace A145066.P3547477428670446431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  (4 * n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145066.P3547477428670446431

namespace A145066

/-- `∑[∑[4*n-a(n-1)]]` -/
def P3547477428670446431.Spec : Prop :=
  ∀ n, P3547477428670446431.a n = A145066 (n + 1)

end A145066

/-! ## A145066.P14574686426472541705

`2*∑[(n+1)*cosh(log(n+1))]`
-/

namespace A145066.P14574686426472541705
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.cosh (Real.log (n + 1 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145066.P14574686426472541705

namespace A145066

/-- `2*∑[(n+1)*cosh(log(n+1))]` -/
def P14574686426472541705.Spec : Prop :=
  ∀ n, P14574686426472541705.a n = (A145066 (n + 1) : ℝ)

end A145066

/-! ## A145066.P7919171621203703462

`-∑[n-record[(n-1)*(n-2)]]`
-/

namespace A145066.P7919171621203703462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n : ℤ) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145066.P7919171621203703462

namespace A145066

/-- `-∑[n-record[(n-1)*(n-2)]]` -/
def P7919171621203703462.Spec : Prop :=
  ∀ n, P7919171621203703462.a n = A145066 (n + 1)

end A145066

/-! ## A145066.P7629222381901320792

`∑[∑[lcm(2, 2*n+1)]+2]/2`
-/

namespace A145066.P7629222381901320792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A145066.P7629222381901320792

namespace A145066

/-- `∑[∑[lcm(2, 2*n+1)]+2]/2` -/
def P7629222381901320792.Spec : Prop :=
  ∀ n, P7629222381901320792.a n = (A145066 (n + 1) : ℚ)

end A145066

/-! ## A145066.P9682154436969631301

`ceil(∑[(n+1)*(acot(n+1)+n+1)])`
-/

namespace A145066.P9682154436969631301
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (SequenceMachineLib.acot (n + 1 : ℝ) + (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A145066.P9682154436969631301

namespace A145066

/-- `ceil(∑[(n+1)*(acot(n+1)+n+1)])` -/
def P9682154436969631301.Spec : Prop :=
  ∀ n, P9682154436969631301.a n = A145066 (n + 1)

end A145066

/-! ## A145066.P5860874645673275093

`round(∑[(n+1)*(acot(n+1)+n+1)])`
-/

namespace A145066.P5860874645673275093
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (SequenceMachineLib.acot (n + 1 : ℝ) + (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145066.P5860874645673275093

namespace A145066

/-- `round(∑[(n+1)*(acot(n+1)+n+1)])` -/
def P5860874645673275093.Spec : Prop :=
  ∀ n, P5860874645673275093.a n = A145066 (n + 1)

end A145066

/-! ## A145066.P4322886878106956360

`gcd(n, n+1)*∑[∑[2*n+1]+1]`
-/

namespace A145066.P4322886878106956360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145066.P4322886878106956360

namespace A145066

/-- `gcd(n, n+1)*∑[∑[2*n+1]+1]` -/
def P4322886878106956360.Spec : Prop :=
  ∀ n, (P4322886878106956360.a n : ℤ) = A145066 (n + 1)

end A145066

/-! ## A145066.P247345842418669551

`∑[A005893(n+1)]/2`
-/

namespace A145066.P247345842418669551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A145066.P247345842418669551

namespace A145066

/-- `∑[A005893(n+1)]/2` -/
def P247345842418669551.Spec : Prop :=
  ∀ n, P247345842418669551.a n = (A145066 (n + 1) : ℚ)

end A145066

/-! ## A145066.P10817555655021899566

`A162263(n+1)%A224141(n+1)`
-/

namespace A145066.P10817555655021899566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162263 (n + 1)) (A224141 (n + 1))

end

end A145066.P10817555655021899566

namespace A145066

/-- `A162263(n+1)%A224141(n+1)` -/
def P10817555655021899566.Spec : Prop :=
  ∀ n, P10817555655021899566.a n = A145066 (n + 1)

end A145066

/-! ## A145066.P10393157751605022401

`∑[A002522(n+1)]`
-/

namespace A145066.P10393157751605022401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145066.P10393157751605022401

namespace A145066

/-- `∑[A002522(n+1)]` -/
def P10393157751605022401.Spec : Prop :=
  ∀ n, P10393157751605022401.a n = A145066 (n + 1)

end A145066

/-!
# A145067: Zero followed by partial sums of A008865.

The programs for A145067, the canonical program `A145067.P6854459650020157410` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145067 has offset 1).

The definition of A145067 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145067.P5760418589596212207

`a(n-1)+n²-2` with `a(0)=0`
-/

namespace A145067.P5760418589596212207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n ^ 2 : ℤ) - 2

end

end A145067.P5760418589596212207

namespace A145067

/-- `a(n-1)+n²-2` -/
def P5760418589596212207.Spec : Prop :=
  ∀ n, P5760418589596212207.a n = A145067 (n + 1)

end A145067

/-! ## A145067.P10533551058749208852

`n*(2*(n+1)²-(n+1)-12)/6`
-/

namespace A145067.P10533551058749208852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((2 * (n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) - 12) : ℚ) / 6

end

end A145067.P10533551058749208852

namespace A145067

/-- `n*(2*(n+1)²-(n+1)-12)/6` -/
def P10533551058749208852.Spec : Prop :=
  ∀ n, P10533551058749208852.a n = (A145067 (n + 1) : ℚ)

theorem P10533551058749208852.correct : P10533551058749208852.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A145067, Nat.add_sub_cancel, A145067.P10533551058749208852.a, A145067.P6854459650020157410.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A145067, Nat.add_sub_cancel, A145067.P10533551058749208852.a, A145067.P6854459650020157410.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A145067

/-! ## A145067.P6854459650020157410

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=8`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145067

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P6854459650020157410.Spec : Prop :=
  ∀ n, P6854459650020157410.a n = A145067 (n + 1)

theorem P6854459650020157410.correct : P6854459650020157410.Spec := by
  intro n
  simp only [A145067, Nat.add_sub_cancel]

end A145067

/-! ## A145067.P2301537058655419315

`∑[n²-ceil(atan(2*n))]`
-/

namespace A145067.P2301537058655419315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌈Real.arctan (2 * n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145067.P2301537058655419315

namespace A145067

/-- `∑[n²-ceil(atan(2*n))]` -/
def P2301537058655419315.Spec : Prop :=
  ∀ n, P2301537058655419315.a n = A145067 (n + 1)

end A145067

/-! ## A145067.P14516274733581047028

`∑[lcm(1-n², n-1)-1]`
-/

namespace A145067.P14516274733581047028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (1 - (n ^ 2 : ℤ)) ((n : ℤ) - 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145067.P14516274733581047028

namespace A145067

/-- `∑[lcm(1-n², n-1)-1]` -/
def P14516274733581047028.Spec : Prop :=
  ∀ n, P14516274733581047028.a n = A145067 (n + 1)

end A145067

/-! ## A145067.P11082339278821002152

`floor(n²-(2-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A145067.P11082339278821002152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 2 : ℤ) - (2 - a (n - 1))

end

end A145067.P11082339278821002152

namespace A145067

/-- `floor(n²-(2-a(n-1)))` -/
def P11082339278821002152.Spec : Prop :=
  ∀ n, P11082339278821002152.a n = A145067 (n + 1)

end A145067

/-! ## A145067.P11031497615462892689

`ceil(n²-(2-a(n-1)))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A145067.P11031497615462892689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 2 : ℤ) - (2 - a (n - 1))

end

end A145067.P11031497615462892689

namespace A145067

/-- `ceil(n²-(2-a(n-1)))` -/
def P11031497615462892689.Spec : Prop :=
  ∀ n, P11031497615462892689.a n = A145067 (n + 1)

end A145067

/-! ## A145067.P11276879468487950443

`round(n²-(2-a(n-1)))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A145067.P11276879468487950443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 2 : ℤ) - (2 - a (n - 1))

end

end A145067.P11276879468487950443

namespace A145067

/-- `round(n²-(2-a(n-1)))` -/
def P11276879468487950443.Spec : Prop :=
  ∀ n, P11276879468487950443.a n = A145067 (n + 1)

end A145067

/-! ## A145067.P948542339750759153

`∑[∑[a(n-1)+2]]` with `a(0)=0, a(1)=-1, a(2)=3`
-/

namespace A145067.P948542339750759153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 3] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145067.P948542339750759153

namespace A145067

/-- `∑[∑[a(n-1)+2]]` -/
def P948542339750759153.Spec : Prop :=
  ∀ n, P948542339750759153.a n = A145067 (n + 1)

end A145067

/-! ## A145067.P6565010208865715295

`floor(n*n+a(n-1)-2)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A145067.P6565010208865715295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n * n : ℤ) + (a (n - 1) - 2)

end

end A145067.P6565010208865715295

namespace A145067

/-- `floor(n*n+a(n-1)-2)` -/
def P6565010208865715295.Spec : Prop :=
  ∀ n, P6565010208865715295.a n = A145067 (n + 1)

end A145067

/-! ## A145067.P7544642484930939948

`n*((a(n-1)-2)/n+n)` with `a(0)=0`
-/

namespace A145067.P7544642484930939948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * ((a (n - 1) - 2) / (n : ℚ) + (n : ℚ))

end

end A145067.P7544642484930939948

namespace A145067

/-- `n*((a(n-1)-2)/n+n)` -/
def P7544642484930939948.Spec : Prop :=
  ∀ n, P7544642484930939948.a n = (A145067 (n + 1) : ℚ)

end A145067

/-! ## A145067.P7716515913249575368

`n*(n-(2-a(n-1))/n)` with `a(0)=0`
-/

namespace A145067.P7716515913249575368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * ((n : ℚ) - (2 - a (n - 1)) / (n : ℚ))

end

end A145067.P7716515913249575368

namespace A145067

/-- `n*(n-(2-a(n-1))/n)` -/
def P7716515913249575368.Spec : Prop :=
  ∀ n, P7716515913249575368.a n = (A145067 (n + 1) : ℚ)

end A145067

/-! ## A145067.P8868330962394687564

`∑[n²-floor(atan(3*n-1))-1]`
-/

namespace A145067.P8868330962394687564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌊Real.arctan ((3 * n : ℤ) - 1 : ℝ)⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145067.P8868330962394687564

namespace A145067

/-- `∑[n²-floor(atan(3*n-1))-1]` -/
def P8868330962394687564.Spec : Prop :=
  ∀ n, P8868330962394687564.a n = A145067 (n + 1)

end A145067

/-! ## A145067.P712115401570799135

`(∑[n²]-2*n)*gcd(n, n-1)`
-/

namespace A145067.P712115401570799135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n : ℤ)) * (Int.gcd (n : ℤ) ((n : ℤ) - 1) : ℤ)

end

end A145067.P712115401570799135

namespace A145067

/-- `(∑[n²]-2*n)*gcd(n, n-1)` -/
def P712115401570799135.Spec : Prop :=
  ∀ n, P712115401570799135.a n = A145067 (n + 1)

end A145067

/-! ## A145067.P4821753268271244205

`∑[2*n-(1-a(n-1))]` with `a(0)=0, a(1)=-1`
-/

namespace A145067.P4821753268271244205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f1 =>
  (2 * n : ℤ) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145067.P4821753268271244205

namespace A145067

/-- `∑[2*n-(1-a(n-1))]` -/
def P4821753268271244205.Spec : Prop :=
  ∀ n, P4821753268271244205.a n = A145067 (n + 1)

end A145067

/-! ## A145067.P2325345279576975673

`∑[n-∑[a(n-1)-2]]` with `a(0)=0, a(1)=2, a(2)=-2`
-/

namespace A145067.P2325345279576975673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, -2] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145067.P2325345279576975673

namespace A145067

/-- `∑[n-∑[a(n-1)-2]]` -/
def P2325345279576975673.Spec : Prop :=
  ∀ n, P2325345279576975673.a n = A145067 (n + 1)

end A145067

/-! ## A145067.P6139834512528458313

`Δ[(n+3)/2*C(n, 3)-C(n, 2)]`
-/

namespace A145067.P6139834512528458313
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 2 * (Nat.choose n 3 : ℚ) - (Nat.choose n 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145067.P6139834512528458313

namespace A145067

/-- `Δ[(n+3)/2*C(n, 3)-C(n, 2)]` -/
def P6139834512528458313.Spec : Prop :=
  ∀ n, P6139834512528458313.a n = (A145067 (n + 1) : ℚ)

end A145067

/-! ## A145067.P5435033483401011667

`floor(a(n-1)+lcm(n, n+1)-(n+2))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A145067.P5435033483401011667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (Nat.lcm n (n + 1) : ℤ) - (n + 2 : ℤ)

end

end A145067.P5435033483401011667

namespace A145067

/-- `floor(a(n-1)+lcm(n, n+1)-(n+2))` -/
def P5435033483401011667.Spec : Prop :=
  ∀ n, P5435033483401011667.a n = A145067 (n + 1)

end A145067

/-! ## A145067.P10994550894041968118

`∑[C(2, 2*n+1)+∑[2*n]-(n+2)]`
-/

namespace A145067.P10994550894041968118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (2 * n + 1) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n + 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145067.P10994550894041968118

namespace A145067

/-- `∑[C(2, 2*n+1)+∑[2*n]-(n+2)]` -/
def P10994550894041968118.Spec : Prop :=
  ∀ n, P10994550894041968118.a n = A145067 (n + 1)

end A145067

/-! ## A145067.P11505487006050695816

`2-A058372(n)`
-/

namespace A145067.P11505487006050695816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A058372 n

end

end A145067.P11505487006050695816

namespace A145067

/-- `2-A058372(n)` -/
def P11505487006050695816.Spec : Prop :=
  ∀ n, P11505487006050695816.a n = A145067 (n + 1)

end A145067

/-!
# A145068: Zero followed by partial sums of A059100, starting at n=1.

The programs for A145068, the canonical program `A145068.P573439538465589742` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145068 has offset 1).

The definition of A145068 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145068.P5422240958309591548

`a(n-1)+n²+2` with `a(0)=0`
-/

namespace A145068.P5422240958309591548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n ^ 2 + 2

end

end A145068.P5422240958309591548

namespace A145068

/-- `a(n-1)+n²+2` -/
def P5422240958309591548.Spec : Prop :=
  ∀ n, (P5422240958309591548.a n : ℤ) = A145068 (n + 1)

end A145068

/-! ## A145068.P9259630880304525902

`n*(2*(n+1)²-(n+1)+12)/6`
-/

namespace A145068.P9259630880304525902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((2 * (n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 12) : ℚ) / 6

end

end A145068.P9259630880304525902

namespace A145068

/-- `n*(2*(n+1)²-(n+1)+12)/6` -/
def P9259630880304525902.Spec : Prop :=
  ∀ n, P9259630880304525902.a n = (A145068 (n + 1) : ℚ)

theorem P9259630880304525902.correct : P9259630880304525902.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A145068, Nat.add_sub_cancel, A145068.P9259630880304525902.a, A145068.P573439538465589742.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A145068, Nat.add_sub_cancel, A145068.P9259630880304525902.a, A145068.P573439538465589742.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A145068

/-! ## A145068.P573439538465589742

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=9, a(3)=20`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145068

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P573439538465589742.Spec : Prop :=
  ∀ n, P573439538465589742.a n = A145068 (n + 1)

theorem P573439538465589742.correct : P573439538465589742.Spec := by
  intro n
  simp only [A145068, Nat.add_sub_cancel]

end A145068

/-! ## A145068.P8582692545517903737

`abs(2-∑[or(2, n²)])`
-/

namespace A145068.P8582692545517903737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A145068.P8582692545517903737

namespace A145068

/-- `abs(2-∑[or(2, n²)])` -/
def P8582692545517903737.Spec : Prop :=
  ∀ n, P8582692545517903737.a n = A145068 (n + 1)

end A145068

/-! ## A145068.P7914831877653708565

`abs(2-∑[xor(2, n²)])`
-/

namespace A145068.P7914831877653708565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A145068.P7914831877653708565

namespace A145068

/-- `abs(2-∑[xor(2, n²)])` -/
def P7914831877653708565.Spec : Prop :=
  ∀ n, P7914831877653708565.a n = A145068 (n + 1)

end A145068

/-! ## A145068.P4894094833125027912

`∑[2%(n+2)+n²]`
-/

namespace A145068.P4894094833125027912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 % (n + 2) + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145068.P4894094833125027912

namespace A145068

/-- `∑[2%(n+2)+n²]` -/
def P4894094833125027912.Spec : Prop :=
  ∀ n, (P4894094833125027912.a n : ℤ) = A145068 (n + 1)

end A145068

/-! ## A145068.P1197889559012052721

`∑[(n²+2)*ceil(abs(sin(n)))]`
-/

namespace A145068.P1197889559012052721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 2 : ℤ) * ⌈|Real.sin (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145068.P1197889559012052721

namespace A145068

/-- `∑[(n²+2)*ceil(abs(sin(n)))]` -/
def P1197889559012052721.Spec : Prop :=
  ∀ n, P1197889559012052721.a n = A145068 (n + 1)

end A145068

/-! ## A145068.P4830748507512676355

`∑[∑[a(n-1)+2]]` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A145068.P4830748507512676355
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145068.P4830748507512676355

namespace A145068

/-- `∑[∑[a(n-1)+2]]` -/
def P4830748507512676355.Spec : Prop :=
  ∀ n, (P4830748507512676355.a n : ℤ) = A145068 (n + 1)

end A145068

/-! ## A145068.P16882594668654532206

`floor(n*n+a(n-1)+2)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A145068.P16882594668654532206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * n + (a (n - 1) + 2)

end

end A145068.P16882594668654532206

namespace A145068

/-- `floor(n*n+a(n-1)+2)` -/
def P16882594668654532206.Spec : Prop :=
  ∀ n, (P16882594668654532206.a n : ℤ) = A145068 (n + 1)

end A145068

/-! ## A145068.P13817163364469798954

`∑[2*n-(1-a(n-1))]` with `a(0)=0, a(1)=3`
-/

namespace A145068.P13817163364469798954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  (2 * n : ℤ) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145068.P13817163364469798954

namespace A145068

/-- `∑[2*n-(1-a(n-1))]` -/
def P13817163364469798954.Spec : Prop :=
  ∀ n, P13817163364469798954.a n = A145068 (n + 1)

end A145068

/-! ## A145068.P1259044319068955032

`∑[n-(1-a(n-1)-n)]` with `a(0)=0, a(1)=3`
-/

namespace A145068.P1259044319068955032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  (n : ℤ) - (1 - f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145068.P1259044319068955032

namespace A145068

/-- `∑[n-(1-a(n-1)-n)]` -/
def P1259044319068955032.Spec : Prop :=
  ∀ n, P1259044319068955032.a n = A145068 (n + 1)

end A145068

/-! ## A145068.P809804795228402717

`n*((a(n-1)+2)/n+n)` with `a(0)=0`
-/

namespace A145068.P809804795228402717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * ((a (n - 1) + 2) / (n : ℚ) + (n : ℚ))

end

end A145068.P809804795228402717

namespace A145068

/-- `n*((a(n-1)+2)/n+n)` -/
def P809804795228402717.Spec : Prop :=
  ∀ n, P809804795228402717.a n = (A145068 (n + 1) : ℚ)

end A145068

/-! ## A145068.P17064560814306932320

`gcd(∑[n²]+2*n, C(2, n+3))`
-/

namespace A145068.P17064560814306932320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n) (Nat.choose 2 (n + 3))

end

end A145068.P17064560814306932320

namespace A145068

/-- `gcd(∑[n²]+2*n, C(2, n+3))` -/
def P17064560814306932320.Spec : Prop :=
  ∀ n, (P17064560814306932320.a n : ℤ) = A145068 (n + 1)

end A145068

/-! ## A145068.P3223686323673940203

`(∑[n²]+2*n)*gcd(n, n+1)`
-/

namespace A145068.P3223686323673940203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n) * Nat.gcd n (n + 1)

end

end A145068.P3223686323673940203

namespace A145068

/-- `(∑[n²]+2*n)*gcd(n, n+1)` -/
def P3223686323673940203.Spec : Prop :=
  ∀ n, (P3223686323673940203.a n : ℤ) = A145068 (n + 1)

end A145068

/-! ## A145068.P1581697996655054107

`∑[ogf((3x-x^3+2x^4)/(1-2x+2x^3-x^4))]`
-/

namespace A145068.P1581697996655054107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 0, -1, 2] [1, -2, 0, 2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145068.P1581697996655054107

namespace A145068

/-- `∑[ogf((3x-x^3+2x^4)/(1-2x+2x^3-x^4))]` -/
def P1581697996655054107.Spec : Prop :=
  ∀ n, P1581697996655054107.a n = A145068 (n + 1)

end A145068

/-! ## A145068.P9382212829807753849

`C(n+2, 3)+C(n+1, 3)+2*n`
-/

namespace A145068.P9382212829807753849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + Nat.choose (n + 1) 3 + 2 * n

end

end A145068.P9382212829807753849

namespace A145068

/-- `C(n+2, 3)+C(n+1, 3)+2*n` -/
def P9382212829807753849.Spec : Prop :=
  ∀ n, (P9382212829807753849.a n : ℤ) = A145068 (n + 1)

end A145068

/-! ## A145068.P15662222775027844797

`(∑[n²]+2*n)*and(1, 2*n+1)`
-/

namespace A145068.P15662222775027844797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n) * Nat.land 1 (2 * n + 1)

end

end A145068.P15662222775027844797

namespace A145068

/-- `(∑[n²]+2*n)*and(1, 2*n+1)` -/
def P15662222775027844797.Spec : Prop :=
  ∀ n, (P15662222775027844797.a n : ℤ) = A145068 (n + 1)

end A145068

/-! ## A145068.P14818750208302733006

`floor(a(n-1)+lcm(n, n-1)+n+2)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A145068.P14818750208302733006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.lcm (n : ℤ) ((n : ℤ) - 1) + (n + 2)

end

end A145068.P14818750208302733006

namespace A145068

/-- `floor(a(n-1)+lcm(n, n-1)+n+2)` -/
def P14818750208302733006.Spec : Prop :=
  ∀ n, (P14818750208302733006.a n : ℤ) = A145068 (n + 1)

end A145068

/-! ## A145068.P17028994385424623587

`∑[A010000(n)]-1`
-/

namespace A145068.P17028994385424623587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A145068.P17028994385424623587

namespace A145068

/-- `∑[A010000(n)]-1` -/
def P17028994385424623587.Spec : Prop :=
  ∀ n, P17028994385424623587.a n = A145068 (n + 1)

end A145068

/-! ## A145068.P4626829007828016615

`Δ[A006008(n)]-1`
-/

namespace A145068.P4626829007828016615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A145068.P4626829007828016615

namespace A145068

/-- `Δ[A006008(n)]-1` -/
def P4626829007828016615.Spec : Prop :=
  ∀ n, P4626829007828016615.a n = A145068 (n + 1)

end A145068

/-!
# A145069: a(n) = n*(n^2 + 3*n + 5)/3.

The programs for A145069, the canonical program `A145069.P205354830491156560` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145069 has offset 0).

The definition of A145069 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n²+3*n+5)/3` (program `A145069.P1436585643638792611`, by `A145069.P1436585643638792611.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145069.P1436585643638792611

`n*(n²+3*n+5)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145069.P1436585643638792611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n ^ 2 + 3 * n + 5) : ℚ) / 3

end

end A145069.P1436585643638792611

namespace A145069

/-- `n*(n²+3*n+5)/3` -/
def P1436585643638792611.Spec : Prop :=
  ∀ n, P1436585643638792611.a n = (A145069 n : ℚ)

theorem P1436585643638792611.correct : P1436585643638792611.Spec := by
  intro n
  induction n with
  | zero => simp [A145069, A145069.P1436585643638792611.a, A145069.P205354830491156560.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A145069, Nat.add_sub_cancel, A145069.P1436585643638792611.a, A145069.P205354830491156560.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A145069

/-! ## A145069.P205354830491156560

`a(n-1)+n²+n+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145069

/-- `a(n-1)+n²+n+1` -/
def P205354830491156560.Spec : Prop :=
  ∀ n, (P205354830491156560.a n : ℤ) = A145069 n

theorem P205354830491156560.correct : P205354830491156560.Spec := by
  intro n
  simp only [A145069]

end A145069

/-! ## A145069.P11429649797593440581

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=10, a(3)=23`
-/

namespace A145069.P11429649797593440581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 10, 23] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A145069.P11429649797593440581

namespace A145069

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11429649797593440581.Spec : Prop :=
  ∀ n, P11429649797593440581.a n = A145069 n

end A145069

/-! ## A145069.P9429865357963339164

`A007290(n+2)+n`
-/

namespace A145069.P9429865357963339164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 (n + 2) + (n : ℤ)

end

end A145069.P9429865357963339164

namespace A145069

/-- `A007290(n+2)+n` -/
def P9429865357963339164.Spec : Prop :=
  ∀ n, P9429865357963339164.a n = A145069 n

end A145069

/-! ## A145069.P11391027138618193509

`∑[∑[or(2*n, char[1])]]`
-/

namespace A145069.P11391027138618193509
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145069.P11391027138618193509

namespace A145069

/-- `∑[∑[or(2*n, char[1])]]` -/
def P11391027138618193509.Spec : Prop :=
  ∀ n, (P11391027138618193509.a n : ℤ) = A145069 n

end A145069

/-! ## A145069.P5885894281325685188

`∑[∑[xor(2*n, char[1])]]`
-/

namespace A145069.P5885894281325685188
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145069.P5885894281325685188

namespace A145069

/-- `∑[∑[xor(2*n, char[1])]]` -/
def P5885894281325685188.Spec : Prop :=
  ∀ n, (P5885894281325685188.a n : ℤ) = A145069 n

end A145069

/-! ## A145069.P12256602523337850214

`∑[ceil(n/acot(n+1))]`
-/

namespace A145069.P12256602523337850214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145069.P12256602523337850214

namespace A145069

/-- `∑[ceil(n/acot(n+1))]` -/
def P12256602523337850214.Spec : Prop :=
  ∀ n, P12256602523337850214.a n = A145069 n

end A145069

/-! ## A145069.P8746460332510784694

`xor(-1, ∑[n-(n+1)²])`
-/

namespace A145069.P8746460332510784694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145069.P8746460332510784694

namespace A145069

/-- `xor(-1, ∑[n-(n+1)²])` -/
def P8746460332510784694.Spec : Prop :=
  ∀ n, P8746460332510784694.a n = A145069 n

end A145069

/-! ## A145069.P7021961769777018726

`∑[ceil(n/sin(1/(n+1)))]`
-/

namespace A145069.P7021961769777018726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.sin (1 / (n + 1 : ℚ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145069.P7021961769777018726

namespace A145069

/-- `∑[ceil(n/sin(1/(n+1)))]` -/
def P7021961769777018726.Spec : Prop :=
  ∀ n, P7021961769777018726.a n = A145069 n

end A145069

/-! ## A145069.P10015098774185035345

`∑[ceil(n/atan(1/(n+1)))]`
-/

namespace A145069.P10015098774185035345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.arctan (1 / (n + 1 : ℚ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145069.P10015098774185035345

namespace A145069

/-- `∑[ceil(n/atan(1/(n+1)))]` -/
def P10015098774185035345.Spec : Prop :=
  ∀ n, P10015098774185035345.a n = A145069 n

end A145069

/-! ## A145069.P16405751984232669229

`∑[ceil(n/tanh(1/(n+1)))]`
-/

namespace A145069.P16405751984232669229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.tanh (1 / (n + 1 : ℚ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145069.P16405751984232669229

namespace A145069

/-- `∑[ceil(n/tanh(1/(n+1)))]` -/
def P16405751984232669229.Spec : Prop :=
  ∀ n, P16405751984232669229.a n = A145069 n

end A145069

/-! ## A145069.P7491384458897922701

`∑[∑[a(n-1)+2]]` with `a(0)=0, a(1)=3, a(2)=4`
-/

namespace A145069.P7491384458897922701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145069.P7491384458897922701

namespace A145069

/-- `∑[∑[a(n-1)+2]]` -/
def P7491384458897922701.Spec : Prop :=
  ∀ n, (P7491384458897922701.a n : ℤ) = A145069 n

end A145069

/-! ## A145069.P13069705561389842273

`n-∑[∑[a(n-1)-2]]` with `a(0)=0`
-/

namespace A145069.P13069705561389842273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145069.P13069705561389842273

namespace A145069

/-- `n-∑[∑[a(n-1)-2]]` -/
def P13069705561389842273.Spec : Prop :=
  ∀ n, P13069705561389842273.a n = A145069 n

end A145069

/-! ## A145069.P16557383703886809342

`∑[(n²+1+n)%(n+1)²]`
-/

namespace A145069.P16557383703886809342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 + n) % (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145069.P16557383703886809342

namespace A145069

/-- `∑[(n²+1+n)%(n+1)²]` -/
def P16557383703886809342.Spec : Prop :=
  ∀ n, (P16557383703886809342.a n : ℤ) = A145069 n

end A145069

/-! ## A145069.P14863827733935106577

`a(n-1)+n*(n+1)+1` with `a(0)=0`
-/

namespace A145069.P14863827733935106577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n * (n + 1) + 1)

end

end A145069.P14863827733935106577

namespace A145069

/-- `a(n-1)+n*(n+1)+1` -/
def P14863827733935106577.Spec : Prop :=
  ∀ n, (P14863827733935106577.a n : ℤ) = A145069 n

theorem P14863827733935106577.correct : P14863827733935106577.Spec := by
  intro n
  simp only [A145069, Nat.add_sub_cancel, A145069.P14863827733935106577.a, A145069.P205354830491156560.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A145069

/-! ## A145069.P16930012608134955523

`∑[(n+1)²-(C(2, n+2)+n)]`
-/

namespace A145069.P16930012608134955523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (Nat.choose 2 (n + 2) + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145069.P16930012608134955523

namespace A145069

/-- `∑[(n+1)²-(C(2, n+2)+n)]` -/
def P16930012608134955523.Spec : Prop :=
  ∀ n, P16930012608134955523.a n = A145069 n

end A145069

/-! ## A145069.P6013017203897217319

`floor(n-1+∑[lcm(n, n+1)]+ϕ)`
-/

namespace A145069.P6013017203897217319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.goldenRatio)⌋

end

end A145069.P6013017203897217319

namespace A145069

/-- `floor(n-1+∑[lcm(n, n+1)]+ϕ)` -/
def P6013017203897217319.Spec : Prop :=
  ∀ n, P6013017203897217319.a n = A145069 n

end A145069

/-! ## A145069.P12446676184387713732

`∑[floor(lcm(n+2, (n+1)²)/(n+3))]`
-/

namespace A145069.P12446676184387713732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (n + 2) ((n + 1) ^ 2) : ℚ) / (n + 3 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145069.P12446676184387713732

namespace A145069

/-- `∑[floor(lcm(n+2, (n+1)²)/(n+3))]` -/
def P12446676184387713732.Spec : Prop :=
  ∀ n, P12446676184387713732.a n = A145069 n

end A145069

/-! ## A145069.P4260327282172643411

`2*(a(n-1)-(a(n-2)/2-n))` with `a(0)=0, a(1)=3`
-/

namespace A145069.P4260327282172643411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  2 * (a (n - 1) - (a (n - 2) / 2 - (n : ℚ)))

end

end A145069.P4260327282172643411

namespace A145069

/-- `2*(a(n-1)-(a(n-2)/2-n))` -/
def P4260327282172643411.Spec : Prop :=
  ∀ n, P4260327282172643411.a n = (A145069 n : ℚ)

end A145069

/-! ## A145069.P16875310026139614516

`A167875(n)-1`
-/

namespace A145069.P16875310026139614516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 n - 1

end

end A145069.P16875310026139614516

namespace A145069

/-- `A167875(n)-1` -/
def P16875310026139614516.Spec : Prop :=
  ∀ n, P16875310026139614516.a n = A145069 n

end A145069

/-!
# A145070: Partial sums of A006127, starting at n=1.

The programs for A145070, the canonical program `A145070.P5793002769868572772` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145070 has offset 1).

The definition of A145070 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145070.P4970908593498177054

`a(n-1)+2^(n+1)+n+1` with `a(0)=3`
-/

namespace A145070.P4970908593498177054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 2 ^ (n + 1) + (n + 1)

end

end A145070.P4970908593498177054

namespace A145070

/-- `a(n-1)+2^(n+1)+n+1` -/
def P4970908593498177054.Spec : Prop :=
  ∀ n, (P4970908593498177054.a n : ℤ) = A145070 (n + 1)

end A145070

/-! ## A145070.P5793002769868572772

`5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` with `a(0)=3, a(1)=9, a(2)=20, a(3)=40`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145070

/-- `5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` -/
def P5793002769868572772.Spec : Prop :=
  ∀ n, P5793002769868572772.a n = A145070 (n + 1)

theorem P5793002769868572772.correct : P5793002769868572772.Spec := by
  intro n
  simp only [A145070, Nat.add_sub_cancel]

end A145070

/-! ## A145070.P16026036603789594141

`∑[∑[2^n+1]+1]`
-/

namespace A145070.P16026036603789594141
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145070.P16026036603789594141

namespace A145070

/-- `∑[∑[2^n+1]+1]` -/
def P16026036603789594141.Spec : Prop :=
  ∀ n, (P16026036603789594141.a n : ℤ) = A145070 (n + 1)

end A145070

/-! ## A145070.P13175691405644223284

`2^(n+2)+C(n+2, 2)-2`
-/

namespace A145070.P13175691405644223284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) + ((Nat.choose (n + 2) 2 : ℤ) - 2)

end

end A145070.P13175691405644223284

namespace A145070

/-- `2^(n+2)+C(n+2, 2)-2` -/
def P13175691405644223284.Spec : Prop :=
  ∀ n, P13175691405644223284.a n = A145070 (n + 1)

end A145070

/-! ## A145070.P11853306703772545858

`2*a(n-1)+3-C(n, 2)` with `a(0)=3`
-/

namespace A145070.P11853306703772545858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * a (n - 1) + (3 - (Nat.choose n 2 : ℤ))

end

end A145070.P11853306703772545858

namespace A145070

/-- `2*a(n-1)+3-C(n, 2)` -/
def P11853306703772545858.Spec : Prop :=
  ∀ n, P11853306703772545858.a n = A145070 (n + 1)

end A145070

/-! ## A145070.P12513428360463845755

`floor(∑[∑[2*a(n-1)-1]])` with `a(0)=3, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A145070.P12513428360463845755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  2 * f2 (n - 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145070.P12513428360463845755

namespace A145070

/-- `floor(∑[∑[2*a(n-1)-1]])` -/
def P12513428360463845755.Spec : Prop :=
  ∀ n, P12513428360463845755.a n = A145070 (n + 1)

end A145070

/-! ## A145070.P4193467196529875110

`∑[2*a(n-1)]+∑[n+1]` with `a(0)=2`
-/

namespace A145070.P4193467196529875110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A145070.P4193467196529875110

namespace A145070

/-- `∑[2*a(n-1)]+∑[n+1]` -/
def P4193467196529875110.Spec : Prop :=
  ∀ n, (P4193467196529875110.a n : ℤ) = A145070 (n + 1)

end A145070

/-! ## A145070.P10033752946368229303

`floor(∑[∑[a(n-1)+a(n-1)-1]])` with `a(0)=3, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A145070.P10033752946368229303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145070.P10033752946368229303

namespace A145070

/-- `floor(∑[∑[a(n-1)+a(n-1)-1]])` -/
def P10033752946368229303.Spec : Prop :=
  ∀ n, P10033752946368229303.a n = A145070 (n + 1)

end A145070

/-! ## A145070.P5511655561018952129

`floor(∑[∑[a(n-1)-(1-a(n-1))]])` with `a(0)=3, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A145070.P5511655561018952129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  f2 (n - 1) - (1 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145070.P5511655561018952129

namespace A145070

/-- `floor(∑[∑[a(n-1)-(1-a(n-1))]])` -/
def P5511655561018952129.Spec : Prop :=
  ∀ n, P5511655561018952129.a n = A145070 (n + 1)

end A145070

/-! ## A145070.P12736187844951995485

`∑[a(n-1)+a(n-1)-1]+∑[n]` with `a(0)=3`
-/

namespace A145070.P12736187844951995485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A145070.P12736187844951995485

namespace A145070

/-- `∑[a(n-1)+a(n-1)-1]+∑[n]` -/
def P12736187844951995485.Spec : Prop :=
  ∀ n, P12736187844951995485.a n = A145070 (n + 1)

end A145070

/-! ## A145070.P5923624652499392641

`A132925(n+2)-1`
-/

namespace A145070.P5923624652499392641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132925 (n + 2) - 1

end

end A145070.P5923624652499392641

namespace A145070

/-- `A132925(n+2)-1` -/
def P5923624652499392641.Spec : Prop :=
  ∀ n, P5923624652499392641.a n = A145070 (n + 1)

end A145070

/-! ## A145070.P16595713196082212734

`A145071(n+1)+∑[n]`
-/

namespace A145070.P16595713196082212734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145071 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A145070.P16595713196082212734

namespace A145070

/-- `A145071(n+1)+∑[n]` -/
def P16595713196082212734.Spec : Prop :=
  ∀ n, P16595713196082212734.a n = A145070 (n + 1)

end A145070

/-! ## A145070.P15881614744610562179

`∑[A198633(n)+n]+n`
-/

namespace A145070.P15881614744610562179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A145070.P15881614744610562179

namespace A145070

/-- `∑[A198633(n)+n]+n` -/
def P15881614744610562179.Spec : Prop :=
  ∀ n, P15881614744610562179.a n = A145070 (n + 1)

end A145070

/-! ## A145070.P11617790908928306863

`A116713(n+3)-(n+2)`
-/

namespace A145070.P11617790908928306863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116713 (n + 3) - (n + 2 : ℤ)

end

end A145070.P11617790908928306863

namespace A145070

/-- `A116713(n+3)-(n+2)` -/
def P11617790908928306863.Spec : Prop :=
  ∀ n, P11617790908928306863.a n = A145070 (n + 1)

end A145070

/-! ## A145070.P11545981565491419329

`A335439(n+3)-(n+3)`
-/

namespace A145070.P11545981565491419329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335439 (n + 3) - (n + 3 : ℤ)

end

end A145070.P11545981565491419329

namespace A145070

/-- `A335439(n+3)-(n+3)` -/
def P11545981565491419329.Spec : Prop :=
  ∀ n, P11545981565491419329.a n = A145070 (n + 1)

end A145070

/-! ## A145070.P7685373811635097273

`∑[∑[A000051(n)]]+1+n`
-/

namespace A145070.P7685373811635097273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A145070.P7685373811635097273

namespace A145070

/-- `∑[∑[A000051(n)]]+1+n` -/
def P7685373811635097273.Spec : Prop :=
  ∀ n, P7685373811635097273.a n = A145070 (n + 1)

end A145070

/-! ## A145070.P580920679151884078

`∑[A052944(n+1)]+n+1`
-/

namespace A145070.P580920679151884078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A145070.P580920679151884078

namespace A145070

/-- `∑[A052944(n+1)]+n+1` -/
def P580920679151884078.Spec : Prop :=
  ∀ n, P580920679151884078.a n = A145070 (n + 1)

end A145070

/-! ## A145070.P2118794214953200427

`A095121(n+1)+∑[n+1]`
-/

namespace A145070.P2118794214953200427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A145070.P2118794214953200427

namespace A145070

/-- `A095121(n+1)+∑[n+1]` -/
def P2118794214953200427.Spec : Prop :=
  ∀ n, P2118794214953200427.a n = A145070 (n + 1)

end A145070

/-! ## A145070.P15349216120730603268

`∑[A132736(n+1)]+n+1`
-/

namespace A145070.P15349216120730603268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A145070.P15349216120730603268

namespace A145070

/-- `∑[A132736(n+1)]+n+1` -/
def P15349216120730603268.Spec : Prop :=
  ∀ n, P15349216120730603268.a n = A145070 (n + 1)

end A145070

/-! ## A145070.P12526803544896367402

`A000918(n+2)+∑[n+1]`
-/

namespace A145070.P12526803544896367402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A145070.P12526803544896367402

namespace A145070

/-- `A000918(n+2)+∑[n+1]` -/
def P12526803544896367402.Spec : Prop :=
  ∀ n, P12526803544896367402.a n = A145070 (n + 1)

end A145070

/-!
# A145071: Partial sums of A000051, starting at n=1.

The programs for A145071, the canonical program `A145071.P13247220487925818536` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145071 has offset 1).

The definition of A145071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145071.P13247220487925818536

`2^(n+2)+n+1-2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145071

/-- `2^(n+2)+n+1-2` -/
def P13247220487925818536.Spec : Prop :=
  ∀ n, P13247220487925818536.a n = A145071 (n + 1)

theorem P13247220487925818536.correct : P13247220487925818536.Spec := by
  intro n
  simp only [A145071, Nat.add_sub_cancel]

end A145071

/-! ## A145071.P14441062051270193957

`∑[ogf((3-4x)/(1-3x+2x^2))]`
-/

namespace A145071.P14441062051270193957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145071.P14441062051270193957

namespace A145071

/-- `∑[ogf((3-4x)/(1-3x+2x^2))]` -/
def P14441062051270193957.Spec : Prop :=
  ∀ n, P14441062051270193957.a n = A145071 (n + 1)

end A145071

/-! ## A145071.P12519590037899713282

`ogf((3-4x)/(1-4x+5x^2-2x^3))`
-/

namespace A145071.P12519590037899713282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -4, 5, -2] n

end

end A145071.P12519590037899713282

namespace A145071

/-- `ogf((3-4x)/(1-4x+5x^2-2x^3))` -/
def P12519590037899713282.Spec : Prop :=
  ∀ n, P12519590037899713282.a n = A145071 (n + 1)

end A145071

/-! ## A145071.P1330990967822759803

`∑[2*a(n-1)-1]` with `a(0)=3`
-/

namespace A145071.P1330990967822759803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  2 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145071.P1330990967822759803

namespace A145071

/-- `∑[2*a(n-1)-1]` -/
def P1330990967822759803.Spec : Prop :=
  ∀ n, P1330990967822759803.a n = A145071 (n + 1)

end A145071

/-! ## A145071.P10649779313102964113

`2*(a(n-1)-(n-3)/2)` with `a(0)=3`
-/

namespace A145071.P10649779313102964113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  2 * (a (n - 1) - ((n : ℤ) - 3 : ℚ) / 2)

end

end A145071.P10649779313102964113

namespace A145071

/-- `2*(a(n-1)-(n-3)/2)` -/
def P10649779313102964113.Spec : Prop :=
  ∀ n, P10649779313102964113.a n = (A145071 (n + 1) : ℚ)

theorem P10649779313102964113.correct : P10649779313102964113.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A145071, Nat.add_sub_cancel, A145071.P10649779313102964113.a, A145071.P13247220487925818536.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A145071, Nat.add_sub_cancel, A145071.P10649779313102964113.a, A145071.P13247220487925818536.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A145071

/-! ## A145071.P2793016463257874733

`∑[A048578(n)]`
-/

namespace A145071.P2793016463257874733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145071.P2793016463257874733

namespace A145071

/-- `∑[A048578(n)]` -/
def P2793016463257874733.Spec : Prop :=
  ∀ n, P2793016463257874733.a n = A145071 (n + 1)

end A145071

/-! ## A145071.P17677772885862280740

`∑[∑[A171559(n)]]`
-/

namespace A145071.P17677772885862280740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171559 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145071.P17677772885862280740

namespace A145071

/-- `∑[∑[A171559(n)]]` -/
def P17677772885862280740.Spec : Prop :=
  ∀ n, P17677772885862280740.a n = A145071 (n + 1)

end A145071

/-! ## A145071.P4709620947046868948

`∑[A000051(n+1)]`
-/

namespace A145071.P4709620947046868948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145071.P4709620947046868948

namespace A145071

/-- `∑[A000051(n+1)]` -/
def P4709620947046868948.Spec : Prop :=
  ∀ n, P4709620947046868948.a n = A145071 (n + 1)

end A145071

/-! ## A145071.P3365619295418657702

`∑[A083318(n+1)]`
-/

namespace A145071.P3365619295418657702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145071.P3365619295418657702

namespace A145071

/-- `∑[A083318(n+1)]` -/
def P3365619295418657702.Spec : Prop :=
  ∀ n, P3365619295418657702.a n = A145071 (n + 1)

end A145071

/-! ## A145071.P3674882313686660887

`∑[A094373(n+2)]`
-/

namespace A145071.P3674882313686660887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145071.P3674882313686660887

namespace A145071

/-- `∑[A094373(n+2)]` -/
def P3674882313686660887.Spec : Prop :=
  ∀ n, P3674882313686660887.a n = A145071 (n + 1)

end A145071

/-! ## A145071.P6381251799654170905

`∑[A127904(n+2)]`
-/

namespace A145071.P6381251799654170905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145071.P6381251799654170905

namespace A145071

/-- `∑[A127904(n+2)]` -/
def P6381251799654170905.Spec : Prop :=
  ∀ n, P6381251799654170905.a n = A145071 (n + 1)

end A145071

/-! ## A145071.P9920179662013905556

`∑[A240277(n+3)]`
-/

namespace A145071.P9920179662013905556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240277 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145071.P9920179662013905556

namespace A145071

/-- `∑[A240277(n+3)]` -/
def P9920179662013905556.Spec : Prop :=
  ∀ n, P9920179662013905556.a n = A145071 (n + 1)

end A145071

/-! ## A145071.P7287921715777109198

`∑[A056008(2*n)]`
-/

namespace A145071.P7287921715777109198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056008 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145071.P7287921715777109198

namespace A145071

/-- `∑[A056008(2*n)]` -/
def P7287921715777109198.Spec : Prop :=
  ∀ n, P7287921715777109198.a n = A145071 (n + 1)

end A145071

/-! ## A145071.P10996125600776292702

`Δ[A048492(n)+n²]`
-/

namespace A145071.P10996125600776292702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048492 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145071.P10996125600776292702

namespace A145071

/-- `Δ[A048492(n)+n²]` -/
def P10996125600776292702.Spec : Prop :=
  ∀ n, P10996125600776292702.a n = A145071 (n + 1)

end A145071

/-! ## A145071.P15092357234707236229

`∑[A134351(n+1)]/2`
-/

namespace A145071.P15092357234707236229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134351 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A145071.P15092357234707236229

namespace A145071

/-- `∑[A134351(n+1)]/2` -/
def P15092357234707236229.Spec : Prop :=
  ∀ n, P15092357234707236229.a n = (A145071 (n + 1) : ℚ)

end A145071

/-! ## A145071.P10576316477347557139

`∑[A231643(n+1)]/5`
-/

namespace A145071.P10576316477347557139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231643 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5

end

end A145071.P10576316477347557139

namespace A145071

/-- `∑[A231643(n+1)]/5` -/
def P10576316477347557139.Spec : Prop :=
  ∀ n, P10576316477347557139.a n = (A145071 (n + 1) : ℚ)

end A145071

/-! ## A145071.P2255515725966271922

`∑[A069229(n+1)/(n+1)]`
-/

namespace A145071.P2255515725966271922
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069229 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145071.P2255515725966271922

namespace A145071

/-- `∑[A069229(n+1)/(n+1)]` -/
def P2255515725966271922.Spec : Prop :=
  ∀ n, P2255515725966271922.a n = (A145071 (n + 1) : ℚ)

end A145071

/-! ## A145071.P16740771403389198592

`∑[∑[a(n-1)²/a(n-2)]]` with `a(0)=3, a(1)=2, a(2)=4`
-/

namespace A145071.P16740771403389198592
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [3, 2, 4] fun n f2 =>
  f2 (n - 1) ^ 2 / f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145071.P16740771403389198592

namespace A145071

/-- `∑[∑[a(n-1)²/a(n-2)]]` -/
def P16740771403389198592.Spec : Prop :=
  ∀ n, P16740771403389198592.a n = (A145071 (n + 1) : ℚ)

end A145071

/-! ## A145071.P5674499634957878861

`∑[A161818(2*(n+1))]`
-/

namespace A145071.P5674499634957878861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161818 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145071.P5674499634957878861

namespace A145071

/-- `∑[A161818(2*(n+1))]` -/
def P5674499634957878861.Spec : Prop :=
  ∀ n, P5674499634957878861.a n = A145071 (n + 1)

end A145071

/-! ## A145071.P14378352176548961321

`∑[a(n-1)²-4^n]` with `a(0)=3`
-/

namespace A145071.P14378352176548961321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) ^ 2 - (4 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145071.P14378352176548961321

namespace A145071

/-- `∑[a(n-1)²-4^n]` -/
def P14378352176548961321.Spec : Prop :=
  ∀ n, P14378352176548961321.a n = A145071 (n + 1)

end A145071

/-!
# A145072: G.f. satisfies: A(x) = (1+y)*A(y^2) where y = x*A(x).

The programs for A145072, there is no canonical definition to state claims against.
-/

/-! ## A145072.P4162241435817169825

`A120750(A148362(n))`
-/

namespace A145072.P4162241435817169825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (A148362 n).toNat

end

end A145072.P4162241435817169825

/-! ## A145072.P10123075552321637742

`A008679(11*A148392(n))`
-/

namespace A145072.P10123075552321637742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (11 * A148392 n).toNat

end

end A145072.P10123075552321637742

/-! ## A145072.P8303570999900200378

`A008679(lcm(11, A148392(n)))`
-/

namespace A145072.P8303570999900200378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (Int.lcm 11 (A148392 n))

end

end A145072.P8303570999900200378

/-! ## A145072.P16318810963815829372

`A248227(floor(sqrt(A361280(n))))`
-/

namespace A145072.P16318810963815829372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (Int.sqrt (A361280 n)).toNat

end

end A145072.P16318810963815829372

/-!
# A145073: Coefficient of x^(3^n) in Q(x)^(n+1), where Q(x) = Sum_{k>=0} (x^(3^k) + x^(2*3^k)).

The programs for A145073, there is no canonical definition to state claims against.
-/

/-! ## A145073.P18106660138347217200

`or(n+1, A047590(A132070(n)))`
-/

namespace A145073.P18106660138347217200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A047590 (A132070 n).toNat)

end

end A145073.P18106660138347217200

/-! ## A145073.P209002307736100566

`A062298(A120911(n+1)+A093303(n))`
-/

namespace A145073.P209002307736100566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A120911 (n + 1) + A093303 n).toNat

end

end A145073.P209002307736100566

/-!
# A145074: Coefficient of x^(4^n) in Q(x)^(n+1) where Q(x) = Sum_{k>=0} (x^(4^k) + x^(2*4^k) + x^(3*4^k)).

The programs for A145074, there is no canonical definition to state claims against.
-/

/-! ## A145074.P6564368994611555114

`A057360(A201200(n)+4)`
-/

namespace A145074.P6564368994611555114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (A201200 n + 4).toNat

end

end A145074.P6564368994611555114

/-!
# A145075: Coefficient of x^(5^n) in Q(x)^(n+1), where Q(x) = Sum_{k>=0} (x^(5^k) + x^(2*5^k) + x^(3*5^k) + x^(4*5^k)).

The programs for A145075, there is no canonical definition to state claims against.
-/

/-! ## A145075.P2798514003480432864

`A189477(record[∑[A182492(n)]])`
-/

namespace A145075.P2798514003480432864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189477 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A145075.P2798514003480432864

/-!
# A145079: Length of cycle of trajectory of n described in A098282, or -1 if no cycle is ever reached.

The programs for A145079, there is no canonical definition to state claims against.
-/

/-! ## A145079.P18361477604845610681

`A013679(A145078(n+1))`
-/

namespace A145079.P18361477604845610681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013679 (A145078 (n + 1)).toNat

end

end A145079.P18361477604845610681

/-! ## A145079.P1246434668919849535

`A043277(A145078(n+1)²)`
-/

namespace A145079.P1246434668919849535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A145078 (n + 1) ^ 2).toNat

end

end A145079.P1246434668919849535

/-! ## A145079.P3480323744025820243

`A013690(A145078(n+1)-1)`
-/

namespace A145079.P3480323744025820243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013690 (A145078 (n + 1) - 1).toNat

end

end A145079.P3480323744025820243

/-! ## A145079.P12973937781539867702

`A144865(A145078(n+1)+2)`
-/

namespace A145079.P12973937781539867702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144865 (A145078 (n + 1) + 2).toNat

end

end A145079.P12973937781539867702

/-! ## A145079.P16695008611169480655

`A008952(A145078(n+1)+3)`
-/

namespace A145079.P16695008611169480655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 (A145078 (n + 1) + 3).toNat

end

end A145079.P16695008611169480655

/-! ## A145079.P14250394179410347050

`A124832(lcm(2, A145078(n+1)))`
-/

namespace A145079.P14250394179410347050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124832 (Int.lcm 2 (A145078 (n + 1)))

end

end A145079.P14250394179410347050

/-! ## A145079.P349354982160263896

`A004070(or(4, A145078(n+1)))`
-/

namespace A145079.P349354982160263896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (Int.lor 4 (A145078 (n + 1))).toNat

end

end A145079.P349354982160263896

/-! ## A145079.P2177093507735421533

`A010783(xor(3, A145078(n+1)))`
-/

namespace A145079.P2177093507735421533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (Int.xor 3 (A145078 (n + 1))).toNat

end

end A145079.P2177093507735421533

/-! ## A145079.P10641912451107787922

`A004070(xor(4, A145078(n+1)))`
-/

namespace A145079.P10641912451107787922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (Int.xor 4 (A145078 (n + 1))).toNat

end

end A145079.P10641912451107787922

/-! ## A145079.P11593885871570710285

`A007318(xor(4, A145078(n+1)))%5`
-/

namespace A145079.P11593885871570710285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (Int.xor 4 (A145078 (n + 1))).toNat) 5

end

end A145079.P11593885871570710285

/-!
# A145081: Row 1 of square table A145080; also equals row 1 of square table A145085.

The programs for A145081, there is no canonical definition to state claims against.
-/

/-! ## A145081.P7544113094891734551

`A145080(∑[n]+n)`
-/

namespace A145081.P7544113094891734551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145080 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A145081.P7544113094891734551

/-! ## A145081.P6317758566382485007

`or(1, A145080(A000096(n)))`
-/

namespace A145081.P6317758566382485007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A145080 (A000096 n).toNat)

end

end A145081.P6317758566382485007

/-! ## A145081.P927686111256921625

`A145085(∑[n+2]-1)`
-/

namespace A145081.P927686111256921625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145085 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A145081.P927686111256921625

/-! ## A145081.P11146985192407258549

`or(1, A145085(A034856(n+1)))`
-/

namespace A145081.P11146985192407258549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A145085 (A034856 (n + 1)).toNat)

end

end A145081.P11146985192407258549

/-! ## A145081.P2383477355942626053

`or(1, A145085(A055998(n)+1))`
-/

namespace A145081.P2383477355942626053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A145085 (A055998 n + 1).toNat)

end

end A145081.P2383477355942626053

/-!
# A145082: Row 2 of square table A145080.

The programs for A145082, there is no canonical definition to state claims against.
-/

/-! ## A145082.P16516836359240550560

`A145080(∑[n+2]-1)`
-/

namespace A145082.P16516836359240550560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145080 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A145082.P16516836359240550560

/-! ## A145082.P18019509426680681750

`record[A145080(A099375(n)+n)]`
-/

namespace A145082.P18019509426680681750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145080 (A099375 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145082.P18019509426680681750

/-! ## A145082.P10112789746878350415

`record[and(A145080(n), A185018(n))]`
-/

namespace A145082.P10112789746878350415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145080 n) (A185018 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145082.P10112789746878350415

/-! ## A145082.P2245322103129236018

`record[A145080(n+1)*A185018(n)]`
-/

namespace A145082.P2245322103129236018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145080 (n + 1) * A185018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145082.P2245322103129236018

/-! ## A145082.P18259516638782814203

`record[A145080(n)/A145080(n+2)]`
-/

namespace A145082.P18259516638782814203
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145080 n : ℚ) / (A145080 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145082.P18259516638782814203

/-!
# A145083: Row 3 of square table A145080.

The programs for A145083, there is no canonical definition to state claims against.
-/

/-! ## A145083.P13321735165081735446

`A145080(∑[n+3])`
-/

namespace A145083.P13321735165081735446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145080 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145083.P13321735165081735446

/-! ## A145083.P14631002942065028405

`or(1, A145080(A141214(n)))`
-/

namespace A145083.P14631002942065028405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A145080 (A141214 n).toNat)

end

end A145083.P14631002942065028405

/-! ## A145083.P16211044821584857259

`record[A145080(n)/A145080(n+3)]`
-/

namespace A145083.P16211044821584857259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145080 n : ℚ) / (A145080 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145083.P16211044821584857259

/-! ## A145083.P5302434143074544711

`A043568(n)*A145080(A141214(n))`
-/

namespace A145083.P5302434143074544711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n * A145080 (A141214 n).toNat

end

end A145083.P5302434143074544711

/-! ## A145083.P6403214196142847832

`A145080(A141214(n))%A156675(n)`
-/

namespace A145083.P6403214196142847832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145080 (A141214 n).toNat) (A156675 n)

end

end A145083.P6403214196142847832

/-!
# A145084: Row 4 of square table A145080.

The programs for A145084, there is no canonical definition to state claims against.
-/

/-! ## A145084.P15614777234006066895

`A145080(∑[n+4]+2)`
-/

namespace A145084.P15614777234006066895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145080 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A145084.P15614777234006066895

/-! ## A145084.P7819073785829348797

`record[and(A145080(n), A185018(n+2))]`
-/

namespace A145084.P7819073785829348797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145080 n) (A185018 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145084.P7819073785829348797

/-!
# A145086: Row 0 of square table A145085.

The programs for A145086, there is no canonical definition to state claims against.
-/

/-! ## A145086.P17553107231064819294

`A145085(∑[n]+n)`
-/

namespace A145086.P17553107231064819294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145085 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A145086.P17553107231064819294

/-! ## A145086.P3805000738743480702

`A145085(A000096(n))%A006120(n+2)`
-/

namespace A145086.P3805000738743480702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145085 (A000096 n).toNat) (A006120 (n + 2))

end

end A145086.P3805000738743480702

/-!
# A145087: Row 2 of square table A145085.

The programs for A145087, there is no canonical definition to state claims against.
-/

/-! ## A145087.P15934676878616317105

`A145085(∑[n+3])`
-/

namespace A145087.P15934676878616317105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145085 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145087.P15934676878616317105

/-! ## A145087.P3429805672675442167

`A185284(n)+A145085(A141214(n))`
-/

namespace A145087.P3429805672675442167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A145085 (A141214 n).toNat

end

end A145087.P3429805672675442167

/-! ## A145087.P11782340329227493384

`gcd(A000038(n), A145085(A141214(n)))`
-/

namespace A145087.P11782340329227493384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A145085 (A141214 n).toNat)

end

end A145087.P11782340329227493384

/-! ## A145087.P7744839925579783283

`lcm(A020985(n), A145085(A141214(n)))`
-/

namespace A145087.P7744839925579783283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A145085 (A141214 n).toNat)

end

end A145087.P7744839925579783283

/-! ## A145087.P697441885268363247

`C(A145085(A141214(n)), A178334(n))`
-/

namespace A145087.P697441885268363247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A145085 (A141214 n).toNat).toNat (A178334 n).toNat

end

end A145087.P697441885268363247

/-!
# A145088: Row 3 of square table A145085.

The programs for A145088, there is no canonical definition to state claims against.
-/

/-! ## A145088.P8114749531118573479

`A145085(∑[n+4]+2)`
-/

namespace A145088.P8114749531118573479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145085 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A145088.P8114749531118573479

/-! ## A145088.P18421409384314801548

`or(1, A145085(A046691(n+2)))`
-/

namespace A145088.P18421409384314801548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A145085 (A046691 (n + 2)).toNat)

end

end A145088.P18421409384314801548

/-! ## A145088.P4419925097555279898

`gcd(A018843(n), A145085(A046691(n+2)))`
-/

namespace A145088.P4419925097555279898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018843 n) (A145085 (A046691 (n + 2)).toNat)

end

end A145088.P4419925097555279898

/-! ## A145088.P16342901867346504375

`A145085(A046691(n+2))+A018843(n+1)`
-/

namespace A145088.P16342901867346504375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145085 (A046691 (n + 2)).toNat + A018843 (n + 1)

end

end A145088.P16342901867346504375

/-! ## A145088.P15165848393412095408

`A145085(A046691(n+2))+A090192(2*(n+1))`
-/

namespace A145088.P15165848393412095408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145085 (A046691 (n + 2)).toNat + A090192 (2 * (n + 1))

end

end A145088.P15165848393412095408

/-!
# A145089: Row 4 of square table A145085.

The programs for A145089, there is no canonical definition to state claims against.
-/

/-! ## A145089.P569564392146019873

`A145085(A052905(n+2))`
-/

namespace A145089.P569564392146019873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145085 (A052905 (n + 2)).toNat

end

end A145089.P569564392146019873

/-! ## A145089.P7456220334041643173

`A145085(A056115(n)+10)`
-/

namespace A145089.P7456220334041643173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145085 (A056115 n + 10).toNat

end

end A145089.P7456220334041643173

/-! ## A145089.P15674534615087235585

`A145085(eq[4, A025581(n)])`
-/

namespace A145089.P15674534615087235585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145089.P15674534615087235585

/-! ## A145089.P14833890279565217690

`A145085(eq[5, A193739(n)])`
-/

namespace A145089.P14833890279565217690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145089.P14833890279565217690

/-! ## A145089.P10932165421652233487

`A145085(eq[9, A099375(n)])`
-/

namespace A145089.P10932165421652233487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145089.P10932165421652233487

/-!
# A145090: G.f. satisfies: A(x) = A(y^2)/(1-y) where y = x*A(x).

The programs for A145090, there is no canonical definition to state claims against.
-/

/-! ## A145090.P13299445223666401987

`A008615(2*A192856(n))`
-/

namespace A145090.P13299445223666401987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A192856 n).toNat

end

end A145090.P13299445223666401987

/-! ## A145090.P18384626977092766592

`A289497(A137635(n))+floor(n/2)`
-/

namespace A145090.P18384626977092766592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (A137635 n).toNat + ⌊(n : ℚ) / 2⌋

end

end A145090.P18384626977092766592

/-! ## A145090.P14886986592968132070

`A326329(n)+A008615(A150743(n))`
-/

namespace A145090.P14886986592968132070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326329 n + A008615 (A150743 n).toNat

end

end A145090.P14886986592968132070

/-!
# A145091: a(n) = n if n is a term of A301776, otherwise a(n) = 0.

The programs for A145091, the canonical program `A145091.P4026160424652438554` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145091 has offset 1).

The definition of A145091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145091.P4026160424652438554

`char[floor(3^(n/3))]*∑{p}[n+1, C(#, n)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145091

/-- `char[floor(3^(n/3))]*∑{p}[n+1, C(#, n)]` -/
def P4026160424652438554.Spec : Prop :=
  ∀ n, (P4026160424652438554.a n : ℤ) = A145091 (n + 1)

theorem P4026160424652438554.correct : P4026160424652438554.Spec := by
  intro n
  simp only [A145091, Nat.add_sub_cancel]

end A145091

/-!
# A145094: Coefficients in expansion of Eisenstein series q*E'_4.

The programs for A145094, the canonical program `A145094.P15187296884426791891` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145094 has offset 1).

The definition of A145094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145094.P15795237466125670589

`(n+1)*A004009(n+1)`
-/

namespace A145094.P15795237466125670589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004009 (n + 1)

end

end A145094.P15795237466125670589

namespace A145094

/-- `(n+1)*A004009(n+1)` -/
def P15795237466125670589.Spec : Prop :=
  ∀ n, P15795237466125670589.a n = A145094 (n + 1)

end A145094

/-! ## A145094.P12746805442500597582

`(n+1)/∏[A004009(n)/A004009(n+1)]`
-/

namespace A145094.P12746805442500597582
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004009 n : ℚ) / (A004009 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A145094.P12746805442500597582

namespace A145094

/-- `(n+1)/∏[A004009(n)/A004009(n+1)]` -/
def P12746805442500597582.Spec : Prop :=
  ∀ n, P12746805442500597582.a n = (A145094 (n + 1) : ℚ)

end A145094

/-! ## A145094.P940796786775872492

`(n+1)*Δ[A046948(n)]`
-/

namespace A145094.P940796786775872492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A145094.P940796786775872492

namespace A145094

/-- `(n+1)*Δ[A046948(n)]` -/
def P940796786775872492.Spec : Prop :=
  ∀ n, P940796786775872492.a n = A145094 (n + 1)

end A145094

/-! ## A145094.P15187296884426791891

`5*6*8*A281372(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A145094

/-- `5*6*8*A281372(n+1)` -/
def P15187296884426791891.Spec : Prop :=
  ∀ n, P15187296884426791891.a n = A145094 (n + 1)

theorem P15187296884426791891.correct : P15187296884426791891.Spec := by
  intro n
  simp only [A145094, Nat.add_sub_cancel]

end A145094

/-! ## A145094.P13168160306847462422

`A004009(A008619(2*n))*A008619(2*n)`
-/

namespace A145094.P13168160306847462422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004009 (A008619 (2 * n)).toNat * A008619 (2 * n)

end

end A145094.P13168160306847462422

namespace A145094

/-- `A004009(A008619(2*n))*A008619(2*n)` -/
def P13168160306847462422.Spec : Prop :=
  ∀ n, P13168160306847462422.a n = A145094 (n + 1)

end A145094

/-! ## A145094.P4129656640505334172

`A004009(A008611(3*n))*A008611(3*n)`
-/

namespace A145094.P4129656640505334172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004009 (A008611 (3 * n)).toNat * A008611 (3 * n)

end

end A145094.P4129656640505334172

namespace A145094

/-- `A004009(A008611(3*n))*A008611(3*n)` -/
def P4129656640505334172.Spec : Prop :=
  ∀ n, P4129656640505334172.a n = A145094 (n + 1)

end A145094

/-! ## A145094.P9364546046477831635

`A004009(A008620(3*n))*A008620(3*n)`
-/

namespace A145094.P9364546046477831635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004009 (A008620 (3 * n)).toNat * A008620 (3 * n)

end

end A145094.P9364546046477831635

namespace A145094

/-- `A004009(A008620(3*n))*A008620(3*n)` -/
def P9364546046477831635.Spec : Prop :=
  ∀ n, P9364546046477831635.a n = A145094 (n + 1)

end A145094

/-! ## A145094.P16045642013866633782

`(n+1)*A072839(3*6*(n+1))`
-/

namespace A145094.P16045642013866633782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A072839 (3 * (6 * (n + 1)))

end

end A145094.P16045642013866633782

namespace A145094

/-- `(n+1)*A072839(3*6*(n+1))` -/
def P16045642013866633782.Spec : Prop :=
  ∀ n, P16045642013866633782.a n = A145094 (n + 1)

end A145094

/-!
# A145095: Coefficients in expansion of Eisenstein series -q*E'_6.

The programs for A145095, there is no canonical definition to state claims against.
-/

/-! ## A145095.P9254231339806963711

`abs((n+1)*A013973(n+1))`
-/

namespace A145095.P9254231339806963711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A013973 (n + 1)|

end

end A145095.P9254231339806963711

/-! ## A145095.P5043041653748161556

`(1-A000027(n+2))*A013973(n+1)`
-/

namespace A145095.P5043041653748161556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000027 (n + 2)) * A013973 (n + 1)

end

end A145095.P5043041653748161556

/-! ## A145095.P8072468105890868125

`-(A000027(n+1)*A013973(A000027(n+1)))`
-/

namespace A145095.P8072468105890868125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000027 (n + 1) * A013973 (A000027 (n + 1)).toNat)

end

end A145095.P8072468105890868125

/-! ## A145095.P15884495616032080084

`A013973(n+1)/A006352(n+1)*A076835(n+1)`
-/

namespace A145095.P15884495616032080084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013973 (n + 1) : ℚ) / (A006352 (n + 1) : ℚ) * (A076835 (n + 1) : ℚ)

end

end A145095.P15884495616032080084

/-! ## A145095.P18133190124246410351

`(n+1)*(A000122(A000040(n+1))-A013973(n+1))`
-/

namespace A145095.P18133190124246410351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000122 (A000040 (n + 1)).toNat - A013973 (n + 1))

end

end A145095.P18133190124246410351

/-! ## A145095.P9350974268592101799

`(n+1)*(A010816(A191065(n+1))-A013973(n+1))`
-/

namespace A145095.P9350974268592101799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A010816 (A191065 (n + 1)).toNat - A013973 (n + 1))

end

end A145095.P9350974268592101799

/-! ## A145095.P11787734689778218697

`(n-A001650((n+1)²))*A013973(n+1)`
-/

namespace A145095.P11787734689778218697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A001650 ((n + 1) ^ 2)) * A013973 (n + 1)

end

end A145095.P11787734689778218697

/-! ## A145095.P8817806134016445285

`(n+1)*(A299204(A299205(n+1))-A013973(n+1))`
-/

namespace A145095.P8817806134016445285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A299204 (A299205 (n + 1)).toNat - A013973 (n + 1))

end

end A145095.P8817806134016445285

/-!
# A145096: Primes of the form 4*k^2 - 38*k + 131.

The programs for A145096, the canonical program `A145096.P17770612496946774651` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145096 has offset 1).

The definition of A145096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145096.P17770612496946774651

`p?[A060566(2*n+30)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A145096

/-- `p?[A060566(2*n+30)]` -/
def P17770612496946774651.Spec : Prop :=
  ∀ n, P17770612496946774651.a n = A145096 (n + 1)

theorem P17770612496946774651.correct : P17770612496946774651.Spec := by
  intro n
  simp only [A145096, Nat.add_sub_cancel]

end A145096

/-! ## A145096.P14509163124946371684

`A279241(n+16)`
-/

namespace A145096.P14509163124946371684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279241 (n + 16)

end

end A145096.P14509163124946371684

namespace A145096

/-- `A279241(n+16)` -/
def P14509163124946371684.Spec : Prop :=
  ∀ n, P14509163124946371684.a n = A145096 (n + 1)

end A145096

/-! ## A145096.P6528527588837743002

`A060566(2*n+30)%A004607(n+1)`
-/

namespace A145096.P6528527588837743002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060566 (2 * n + 30)) (A004607 (n + 1))

end

end A145096.P6528527588837743002

namespace A145096

/-- `A060566(2*n+30)%A004607(n+1)` -/
def P6528527588837743002.Spec : Prop :=
  ∀ n, P6528527588837743002.a n = A145096 (n + 1)

end A145096

/-! ## A145096.P2824508454237923569

`A006530(A008706(n)*A060566(2*n+30))`
-/

namespace A145096.P2824508454237923569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008706 n * A060566 (2 * n + 30)).toNat

end

end A145096.P2824508454237923569

namespace A145096

/-- `A006530(A008706(n)*A060566(2*n+30))` -/
def P2824508454237923569.Spec : Prop :=
  ∀ n, P2824508454237923569.a n = A145096 (n + 1)

end A145096

/-!
# A145097: a(n) is the largest proper divisor of the Mersenne composite A065341(n).

The programs for A145097, there is no canonical definition to state claims against.
-/

/-! ## A145097.P7499984500895140678

`A065341(n+1)/A136030(n+1)`
-/

namespace A145097.P7499984500895140678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065341 (n + 1) : ℚ) / (A136030 (n + 1) : ℚ)

end

end A145097.P7499984500895140678

/-! ## A145097.P12840204441861172082

`record[A131952(n+1)]/A136030(n+1)`
-/

namespace A145097.P12840204441861172082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131952 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A136030 (n + 1) : ℚ)

end

end A145097.P12840204441861172082

/-! ## A145097.P14301601909710848366

`A065341(n+1)/A049479(A054723(n+1))`
-/

namespace A145097.P14301601909710848366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065341 (n + 1) : ℚ) / (A049479 (A054723 (n + 1)).toNat : ℚ)

end

end A145097.P14301601909710848366

/-! ## A145097.P2153079856510939960

`A000225(A054723(n+1))/A136030(n+1)`
-/

namespace A145097.P2153079856510939960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (A054723 (n + 1)).toNat : ℚ) / (A136030 (n + 1) : ℚ)

end

end A145097.P2153079856510939960

/-! ## A145097.P5349574569994612239

`A001348(A135980(n+1))/A136030(n+1)`
-/

namespace A145097.P5349574569994612239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001348 (A135980 (n + 1)).toNat : ℚ) / (A136030 (n + 1) : ℚ)

end

end A145097.P5349574569994612239

/-!
# A145099: a(n) = 1 if the largest proper divisor of Mersenne composite A145097(n) is prime and a(n) = 0 in opposite case.

The programs for A145099, the canonical program `A145099.P2105751496265712381` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145099 has offset 1).

The definition of A145099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145099.P2105751496265712381

`C(2, A135975(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A145099

/-- `C(2, A135975(n+1))` -/
def P2105751496265712381.Spec : Prop :=
  ∀ n, (P2105751496265712381.a n : ℤ) = A145099 (n + 1)

theorem P2105751496265712381.correct : P2105751496265712381.Spec := by
  intro n
  simp only [A145099, Nat.add_sub_cancel]

end A145099

/-! ## A145099.P2040555564562803291

`C(2, A046051(A054723(n+1)))`
-/

namespace A145099.P2040555564562803291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A046051 (A054723 (n + 1)).toNat).toNat

end

end A145099.P2040555564562803291

namespace A145099

/-- `C(2, A046051(A054723(n+1)))` -/
def P2040555564562803291.Spec : Prop :=
  ∀ n, (P2040555564562803291.a n : ℤ) = A145099 (n + 1)

end A145099

/-! ## A145099.P15628556162982503310

`val(2*A002146(n), A135975(n+1))`
-/

namespace A145099.P15628556162982503310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * A002146 n).toNat (A135975 (n + 1)).toNat

end

end A145099.P15628556162982503310

namespace A145099

/-- `val(2*A002146(n), A135975(n+1))` -/
def P15628556162982503310.Spec : Prop :=
  ∀ n, (P15628556162982503310.a n : ℤ) = A145099 (n + 1)

end A145099

/-! ## A145099.P10244725426935849381

`floor(A000123(n)^(2-A135975(n+1)))`
-/

namespace A145099.P10244725426935849381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000123 n : ℚ) ^ (2 - A135975 (n + 1) : ℤ)⌋

end

end A145099.P10244725426935849381

namespace A145099

/-- `floor(A000123(n)^(2-A135975(n+1)))` -/
def P10244725426935849381.Spec : Prop :=
  ∀ n, P10244725426935849381.a n = A145099 (n + 1)

end A145099

/-! ## A145099.P5338438166187434702

`val(A020639(2*(n+1)), A135975(n+1))`
-/

namespace A145099.P5338438166187434702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (2 * (n + 1))).toNat (A135975 (n + 1)).toNat

end

end A145099.P5338438166187434702

namespace A145099

/-- `val(A020639(2*(n+1)), A135975(n+1))` -/
def P5338438166187434702.Spec : Prop :=
  ∀ n, (P5338438166187434702.a n : ℤ) = A145099 (n + 1)

end A145099

/-! ## A145099.P6430905988341723285

`val(A000040(gcd(n, n+1)), A135975(n+1))`
-/

namespace A145099.P6430905988341723285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (Nat.gcd n (n + 1))).toNat (A135975 (n + 1)).toNat

end

end A145099.P6430905988341723285

namespace A145099

/-- `val(A000040(gcd(n, n+1)), A135975(n+1))` -/
def P6430905988341723285.Spec : Prop :=
  ∀ n, (P6430905988341723285.a n : ℤ) = A145099 (n + 1)

end A145099

/-! ## A145099.P13216843702078546514

`floor(A000010(n+1)^(2-A135975(n+1)))`
-/

namespace A145099.P13216843702078546514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (n + 1) : ℚ) ^ (2 - A135975 (n + 1) : ℤ)⌋

end

end A145099.P13216843702078546514

namespace A145099

/-- `floor(A000010(n+1)^(2-A135975(n+1)))` -/
def P13216843702078546514.Spec : Prop :=
  ∀ n, P13216843702078546514.a n = A145099 (n + 1)

end A145099

/-! ## A145099.P16847783562672643385

`floor(A000040(n+1)^(2-A135975(n+1)))`
-/

namespace A145099.P16847783562672643385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) ^ (2 - A135975 (n + 1) : ℤ)⌋

end

end A145099.P16847783562672643385

namespace A145099

/-- `floor(A000040(n+1)^(2-A135975(n+1)))` -/
def P16847783562672643385.Spec : Prop :=
  ∀ n, P16847783562672643385.a n = A145099 (n + 1)

end A145099

/-! ## A145099.P5301884399632803345

`round(A007318(val(n+1, 5))/A135975(n+1))`
-/

namespace A145099.P5301884399632803345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007318 (SequenceMachineLib.valuation (n + 1) 5) : ℚ) / (A135975 (n + 1) : ℚ))

end

end A145099.P5301884399632803345

namespace A145099

/-- `round(A007318(val(n+1, 5))/A135975(n+1))` -/
def P5301884399632803345.Spec : Prop :=
  ∀ n, P5301884399632803345.a n = A145099 (n + 1)

end A145099

