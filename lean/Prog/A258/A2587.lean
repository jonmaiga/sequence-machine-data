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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C023

/-!
# A258700: Maximal index of a torsion-free congruence subgroup of PSL(2,Z) of genus n.

The programs for A258700, there is no canonical definition to state claims against.
-/

/-! ## A258700.P6541326077899248633

`A022757(A206768(3*n+5)-A030051(n+2))`
-/

namespace A258700.P6541326077899248633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022757 (A206768 (3 * n + 5) - A030051 (n + 2)).toNat

end

end A258700.P6541326077899248633

/-!
# A258703: a(n) = floor(n/sqrt(2) - 1/2).

The programs for A258703, the canonical program `A258703.P9502853239000925438` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258703 has offset 1).

The definition of A258703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258703.P9502853239000925438

`floor(((n+1)*sqrt(2)-1)/2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A258703

/-- `floor(((n+1)*sqrt(2)-1)/2)` -/
def P9502853239000925438.Spec : Prop :=
  ∀ n, P9502853239000925438.a n = A258703 (n + 1)

theorem P9502853239000925438.correct : P9502853239000925438.Spec := by
  intro n
  simp only [A258703, Nat.add_sub_cancel]

end A258703

/-! ## A258703.P15425856152604165142

`floor((n+1)/sqrt(2)-1/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A258703.P15425856152604165142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.sqrt (2 : ℝ) - ((1 : ℚ) / 2 : ℝ)⌋

end

end A258703.P15425856152604165142

namespace A258703

/-- `floor((n+1)/sqrt(2)-1/2)` -/
def P15425856152604165142.Spec : Prop :=
  ∀ n, P15425856152604165142.a n = A258703 (n + 1)

end A258703

/-! ## A258703.P4079247371898449603

`∑[A104521(n)]-1`
-/

namespace A258703.P4079247371898449603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A258703.P4079247371898449603

namespace A258703

/-- `∑[A104521(n)]-1` -/
def P4079247371898449603.Spec : Prop :=
  ∀ n, P4079247371898449603.a n = A258703 (n + 1)

end A258703

/-! ## A258703.P614773873075892939

`n-∑[A324772(n)]`
-/

namespace A258703.P614773873075892939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258703.P614773873075892939

namespace A258703

/-- `n-∑[A324772(n)]` -/
def P614773873075892939.Spec : Prop :=
  ∀ n, P614773873075892939.a n = A258703 (n + 1)

end A258703

/-! ## A258703.P6289412918702652481

`A049473(n+1)-1`
-/

namespace A258703.P6289412918702652481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (n + 1) - 1

end

end A258703.P6289412918702652481

namespace A258703

/-- `A049473(n+1)-1` -/
def P6289412918702652481.Spec : Prop :=
  ∀ n, P6289412918702652481.a n = A258703 (n + 1)

end A258703

/-! ## A258703.P687705981796665586

`∑[char[A001953(n+1)]]`
-/

namespace A258703.P687705981796665586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258703.P687705981796665586

namespace A258703

/-- `∑[char[A001953(n+1)]]` -/
def P687705981796665586.Spec : Prop :=
  ∀ n, (P687705981796665586.a n : ℤ) = A258703 (n + 1)

end A258703

/-! ## A258703.P9408475607011539210

`∑[char[∑[A001030(n+1)]]]`
-/

namespace A258703.P9408475607011539210
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258703.P9408475607011539210

namespace A258703

/-- `∑[char[∑[A001030(n+1)]]]` -/
def P9408475607011539210.Spec : Prop :=
  ∀ n, (P9408475607011539210.a n : ℤ) = A258703 (n + 1)

end A258703

/-! ## A258703.P8645836261779838737

`A081477(n+1)-(n+2)`
-/

namespace A258703.P8645836261779838737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (n + 1) - (n + 2 : ℤ)

end

end A258703.P8645836261779838737

namespace A258703

/-- `A081477(n+1)-(n+2)` -/
def P8645836261779838737.Spec : Prop :=
  ∀ n, P8645836261779838737.a n = A258703 (n + 1)

end A258703

/-! ## A258703.P14635218304296035117

`∑[char[A184117(n+1)+1]]`
-/

namespace A258703.P14635218304296035117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184117 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258703.P14635218304296035117

namespace A258703

/-- `∑[char[A184117(n+1)+1]]` -/
def P14635218304296035117.Spec : Prop :=
  ∀ n, (P14635218304296035117.a n : ℤ) = A258703 (n + 1)

end A258703

/-! ## A258703.P17561304049973340582

`∑[char[A136119(n+2)-1]]`
-/

namespace A258703.P17561304049973340582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258703.P17561304049973340582

namespace A258703

/-- `∑[char[A136119(n+2)-1]]` -/
def P17561304049973340582.Spec : Prop :=
  ∀ n, (P17561304049973340582.a n : ℤ) = A258703 (n + 1)

end A258703

/-! ## A258703.P166796389097712744

`∑[char[∑[3-A279620(n+1)]]]`
-/

namespace A258703.P166796389097712744
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A279620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258703.P166796389097712744

namespace A258703

/-- `∑[char[∑[3-A279620(n+1)]]]` -/
def P166796389097712744.Spec : Prop :=
  ∀ n, (P166796389097712744.a n : ℤ) = A258703 (n + 1)

end A258703

/-! ## A258703.P3600225149108496667

`-floor((3-A087057(n+1))/2)`
-/

namespace A258703.P3600225149108496667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(3 - A087057 (n + 1) : ℚ) / 2⌋

end

end A258703.P3600225149108496667

namespace A258703

/-- `-floor((3-A087057(n+1))/2)` -/
def P3600225149108496667.Spec : Prop :=
  ∀ n, P3600225149108496667.a n = A258703 (n + 1)

end A258703

/-! ## A258703.P13451085163843475718

`A049473(n-A324772(n))`
-/

namespace A258703.P13451085163843475718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 ((n : ℤ) - A324772 n).toNat

end

end A258703.P13451085163843475718

namespace A258703

/-- `A049473(n-A324772(n))` -/
def P13451085163843475718.Spec : Prop :=
  ∀ n, P13451085163843475718.a n = A258703 (n + 1)

end A258703

/-! ## A258703.P6457006077543091491

`A081477(n+1)%A057544(n)`
-/

namespace A258703.P6457006077543091491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081477 (n + 1)) (A057544 n)

end

end A258703.P6457006077543091491

namespace A258703

/-- `A081477(n+1)%A057544(n)` -/
def P6457006077543091491.Spec : Prop :=
  ∀ n, P6457006077543091491.a n = A258703 (n + 1)

end A258703

/-! ## A258703.P1658986284563575348

`A003151(n+1)-A080755(n+1)`
-/

namespace A258703.P1658986284563575348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1) - A080755 (n + 1)

end

end A258703.P1658986284563575348

namespace A258703

/-- `A003151(n+1)-A080755(n+1)` -/
def P1658986284563575348.Spec : Prop :=
  ∀ n, P1658986284563575348.a n = A258703 (n + 1)

end A258703

/-! ## A258703.P9544726391159591692

`A286666(n+1)-A003152(n+1)`
-/

namespace A258703.P9544726391159591692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1) - A003152 (n + 1)

end

end A258703.P9544726391159591692

namespace A258703

/-- `A286666(n+1)-A003152(n+1)` -/
def P9544726391159591692.Spec : Prop :=
  ∀ n, P9544726391159591692.a n = A258703 (n + 1)

end A258703

/-! ## A258703.P12777695941120704598

`A184922(n+1)-A182769(n+1)`
-/

namespace A258703.P12777695941120704598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1) - A182769 (n + 1)

end

end A258703.P12777695941120704598

namespace A258703

/-- `A184922(n+1)-A182769(n+1)` -/
def P12777695941120704598.Spec : Prop :=
  ∀ n, P12777695941120704598.a n = A258703 (n + 1)

end A258703

/-! ## A258703.P9439713261016783459

`A140868(n+1)-A330173(n+1)`
-/

namespace A258703.P9439713261016783459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140868 (n + 1) - A330173 (n + 1)

end

end A258703.P9439713261016783459

namespace A258703

/-- `A140868(n+1)-A330173(n+1)` -/
def P9439713261016783459.Spec : Prop :=
  ∀ n, P9439713261016783459.a n = A258703 (n + 1)

end A258703

/-! ## A258703.P2689652324748670081

`Δ[∑[A049473(n)]-n]`
-/

namespace A258703.P2689652324748670081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258703.P2689652324748670081

namespace A258703

/-- `Δ[∑[A049473(n)]-n]` -/
def P2689652324748670081.Spec : Prop :=
  ∀ n, P2689652324748670081.a n = A258703 (n + 1)

end A258703

/-! ## A258703.P6369101723366565031

`A189573(n+2)-(n+3)`
-/

namespace A258703.P6369101723366565031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189573 (n + 2) - (n + 3 : ℤ)

end

end A258703.P6369101723366565031

namespace A258703

/-- `A189573(n+2)-(n+3)` -/
def P6369101723366565031.Spec : Prop :=
  ∀ n, P6369101723366565031.a n = A258703 (n + 1)

end A258703

/-!
# A258706: Absolute primes: every permutation of digits is a prime. Only the smallest representative of each permutation class is shown.

The programs for A258706, there is no canonical definition to state claims against.
-/

/-! ## A258706.P4701233699059251246

`A263499(comp[round(ϕ*a(n-1))])` with `a(0)=0, a(1)=13`
-/

namespace A258706.P4701233699059251246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 13] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263499 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A258706.P4701233699059251246

/-! ## A258706.P7686442419760892210

`A263499(∑[A242784(n)])`
-/

namespace A258706.P7686442419760892210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263499 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A258706.P7686442419760892210

/-! ## A258706.P17807753199355285597

`A263499(A051038(n+1))`
-/

namespace A258706.P17807753199355285597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263499 (A051038 (n + 1)).toNat

end

end A258706.P17807753199355285597

/-! ## A258706.P11995035005535065624

`A263499(A262988(A270083(n+1))+n)`
-/

namespace A258706.P11995035005535065624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263499 (A262988 (A270083 (n + 1)).toNat + (n : ℤ)).toNat

end

end A258706.P11995035005535065624

/-! ## A258706.P1894216606017384058

`A263499(A044824(n+1))`
-/

namespace A258706.P1894216606017384058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263499 (A044824 (n + 1)).toNat

end

end A258706.P1894216606017384058

/-!
# A258708: Triangle read by rows: T(i,j) = integer part of binomial(i+j, i-j)/(2*j+1) for i >= 1 and j = 0..i-1.

The programs for A258708, there is no canonical definition to state claims against.
-/

/-! ## A258708.P4196624109401646415

`A245558(A194012(2*n+1))`
-/

namespace A258708.P4196624109401646415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245558 (A194012 (2 * n + 1)).toNat

end

end A258708.P4196624109401646415

/-! ## A258708.P12135025395577577026

`A245558(A245300(n)+A002260(n+1))`
-/

namespace A258708.P12135025395577577026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245558 (A245300 n + A002260 (n + 1)).toNat

end

end A258708.P12135025395577577026

/-! ## A258708.P4539828407820234266

`A245558(A245300(n)+A002262(n)+1)`
-/

namespace A258708.P4539828407820234266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245558 (A245300 n + A002262 n + 1).toNat

end

end A258708.P4539828407820234266

/-! ## A258708.P7721294973050617801

`A287355(A085478(n))`
-/

namespace A258708.P7721294973050617801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287355 (A085478 n).toNat

end

end A258708.P7721294973050617801

/-! ## A258708.P8439357504759228305

`A287355(A103141(n))`
-/

namespace A258708.P8439357504759228305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287355 (A103141 n).toNat

end

end A258708.P8439357504759228305

/-!
# A258709: Triangle of generalized Catalan numbers read by rows.

The programs for A258709, there is no canonical definition to state claims against.
-/

/-! ## A258709.P13968186833237276374

`A064645(A245300(n))`
-/

namespace A258709.P13968186833237276374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (A245300 n).toNat

end

end A258709.P13968186833237276374

/-! ## A258709.P393514042907054074

`A064645((A214661(n+1)-1)/2)`
-/

namespace A258709.P393514042907054074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (SequenceMachineLib.roundAway ((A214661 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A258709.P393514042907054074

/-! ## A258709.P17846140609905848843

`A064645(A028242(A214661(n+1)))`
-/

namespace A258709.P17846140609905848843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (A028242 (A214661 (n + 1)).toNat).toNat

end

end A258709.P17846140609905848843

/-! ## A258709.P9947749626708944227

`A238884(A130321(n)+A025455(n))`
-/

namespace A258709.P9947749626708944227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238884 (A130321 n + A025455 n).toNat

end

end A258709.P9947749626708944227

/-! ## A258709.P8788427391808050572

`A034880(A106187(n))`
-/

namespace A258709.P8788427391808050572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034880 (A106187 n).toNat

end

end A258709.P8788427391808050572

/-!
# A258710: Motzkin numbers A001006 read mod 11.

The programs for A258710, the canonical program `A258710.P11088519439079196452` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258710 has offset 0).

The definition of A258710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258710.P11088519439079196452

`A001006(n)%11`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A258710

/-- `A001006(n)%11` -/
def P11088519439079196452.Spec : Prop :=
  ∀ n, P11088519439079196452.a n = A258710 n

theorem P11088519439079196452.correct : P11088519439079196452.Spec := by
  intro n
  simp only [A258710]

end A258710

/-! ## A258710.P14340338190918910558

`Δ[A097332(n)]%11`
-/

namespace A258710.P14340338190918910558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 11

end

end A258710.P14340338190918910558

namespace A258710

/-- `Δ[A097332(n)]%11` -/
def P14340338190918910558.Spec : Prop :=
  ∀ n, P14340338190918910558.a n = A258710 n

end A258710

/-! ## A258710.P11619701828654784840

`A086246(n+2)%11`
-/

namespace A258710.P11619701828654784840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086246 (n + 2)) 11

end

end A258710.P11619701828654784840

namespace A258710

/-- `A086246(n+2)%11` -/
def P11619701828654784840.Spec : Prop :=
  ∀ n, P11619701828654784840.a n = A258710 n

end A258710

/-! ## A258710.P18129960918916007762

`A168049(n+2)%11`
-/

namespace A258710.P18129960918916007762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168049 (n + 2)) 11

end

end A258710.P18129960918916007762

namespace A258710

/-- `A168049(n+2)%11` -/
def P18129960918916007762.Spec : Prop :=
  ∀ n, P18129960918916007762.a n = A258710 n

end A258710

/-! ## A258710.P9323416375766914150

`abs(A168051(n+2))%11`
-/

namespace A258710.P9323416375766914150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A168051 (n + 2)| 11

end

end A258710.P9323416375766914150

namespace A258710

/-- `abs(A168051(n+2))%11` -/
def P9323416375766914150.Spec : Prop :=
  ∀ n, P9323416375766914150.a n = A258710 n

end A258710

/-! ## A258710.P12270361228074770202

`∑[A002026(abs(1-n))]%11`
-/

namespace A258710.P12270361228074770202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 11

end

end A258710.P12270361228074770202

namespace A258710

/-- `∑[A002026(abs(1-n))]%11` -/
def P12270361228074770202.Spec : Prop :=
  ∀ n, P12270361228074770202.a n = A258710 n

end A258710

/-! ## A258710.P13205405455640229697

`abs(Δ[A174297(n+2)])%11`
-/

namespace A258710.P13205405455640229697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174297 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| 11

end

end A258710.P13205405455640229697

namespace A258710

/-- `abs(Δ[A174297(n+2)])%11` -/
def P13205405455640229697.Spec : Prop :=
  ∀ n, P13205405455640229697.a n = A258710 n

end A258710

/-! ## A258710.P6631190019869470913

`(A005717(n+1)/(n+1))%11`
-/

namespace A258710.P6631190019869470913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A005717 (n + 1) : ℚ) / (n + 1 : ℚ))) 11

end

end A258710.P6631190019869470913

namespace A258710

/-- `(A005717(n+1)/(n+1))%11` -/
def P6631190019869470913.Spec : Prop :=
  ∀ n, P6631190019869470913.a n = A258710 n

end A258710

/-! ## A258710.P15731280751859265079

`A064189(∑[n])%11`
-/

namespace A258710.P15731280751859265079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064189 (∑ j ∈ Finset.range (n + 1), f1 j)) 11

end

end A258710.P15731280751859265079

namespace A258710

/-- `A064189(∑[n])%11` -/
def P15731280751859265079.Spec : Prop :=
  ∀ n, P15731280751859265079.a n = A258710 n

end A258710

/-! ## A258710.P9859316515005457834

`A064645(∑[n])%11`
-/

namespace A258710.P9859316515005457834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064645 (∑ j ∈ Finset.range (n + 1), f1 j)) 11

end

end A258710.P9859316515005457834

namespace A258710

/-- `A064645(∑[n])%11` -/
def P9859316515005457834.Spec : Prop :=
  ∀ n, P9859316515005457834.a n = A258710 n

end A258710

/-! ## A258710.P4530455726242859518

`A026300(A000096(n))%11`
-/

namespace A258710.P4530455726242859518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026300 (A000096 n).toNat) 11

end

end A258710.P4530455726242859518

namespace A258710

/-- `A026300(A000096(n))%11` -/
def P4530455726242859518.Spec : Prop :=
  ∀ n, P4530455726242859518.a n = A258710 n

end A258710

/-! ## A258710.P2758181234238994681

`A258709(∑[n])%11`
-/

namespace A258710.P2758181234238994681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258709 (∑ j ∈ Finset.range (n + 1), f1 j)) 11

end

end A258710.P2758181234238994681

namespace A258710

/-- `A258709(∑[n])%11` -/
def P2758181234238994681.Spec : Prop :=
  ∀ n, P2758181234238994681.a n = A258710 n

end A258710

/-!
# A258711: Motzkin numbers A001006 read mod 7.

The programs for A258711, the canonical program `A258711.P7368065458491441993` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258711 has offset 0).

The definition of A258711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258711.P7368065458491441993

`A001006(n)%7`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A258711

/-- `A001006(n)%7` -/
def P7368065458491441993.Spec : Prop :=
  ∀ n, P7368065458491441993.a n = A258711 n

theorem P7368065458491441993.correct : P7368065458491441993.Spec := by
  intro n
  simp only [A258711]

end A258711

/-! ## A258711.P17191272313257105759

`Δ[A097332(n)]%7`
-/

namespace A258711.P17191272313257105759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 7

end

end A258711.P17191272313257105759

namespace A258711

/-- `Δ[A097332(n)]%7` -/
def P17191272313257105759.Spec : Prop :=
  ∀ n, P17191272313257105759.a n = A258711 n

end A258711

/-! ## A258711.P7243384773639081329

`A086246(n+2)%7`
-/

namespace A258711.P7243384773639081329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086246 (n + 2)) 7

end

end A258711.P7243384773639081329

namespace A258711

/-- `A086246(n+2)%7` -/
def P7243384773639081329.Spec : Prop :=
  ∀ n, P7243384773639081329.a n = A258711 n

end A258711

/-! ## A258711.P11755346999858380640

`A168049(n+2)%7`
-/

namespace A258711.P11755346999858380640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168049 (n + 2)) 7

end

end A258711.P11755346999858380640

namespace A258711

/-- `A168049(n+2)%7` -/
def P11755346999858380640.Spec : Prop :=
  ∀ n, P11755346999858380640.a n = A258711 n

end A258711

/-! ## A258711.P14099530487439679496

`abs(A166587(n+1)%7)`
-/

namespace A258711.P14099530487439679496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A166587 (n + 1)) 7|

end

end A258711.P14099530487439679496

namespace A258711

/-- `abs(A166587(n+1)%7)` -/
def P14099530487439679496.Spec : Prop :=
  ∀ n, P14099530487439679496.a n = A258711 n

end A258711

/-! ## A258711.P9958724123972632047

`∏[abs(ratio[A166587(n)])]%7`
-/

namespace A258711.P9958724123972632047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℚ) / (f2 n : ℚ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)) 7

end

end A258711.P9958724123972632047

namespace A258711

/-- `∏[abs(ratio[A166587(n)])]%7` -/
def P9958724123972632047.Spec : Prop :=
  ∀ n, P9958724123972632047.a n = A258711 n

end A258711

/-! ## A258711.P8517381295441191267

`(∑[A105695(n+1)]+1)%7`
-/

namespace A258711.P8517381295441191267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) 7

end

end A258711.P8517381295441191267

namespace A258711

/-- `(∑[A105695(n+1)]+1)%7` -/
def P8517381295441191267.Spec : Prop :=
  ∀ n, P8517381295441191267.a n = A258711 n

end A258711

/-! ## A258711.P3413882368254193182

`(A002026(n-1)+a(n-1))%7` with `a(0)=1`
-/

namespace A258711.P3413882368254193182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A002026 (n - 1) + a (n - 1)) 7

end

end A258711.P3413882368254193182

namespace A258711

/-- `(A002026(n-1)+a(n-1))%7` -/
def P3413882368254193182.Spec : Prop :=
  ∀ n, P3413882368254193182.a n = A258711 n

end A258711

/-! ## A258711.P16572364017241944186

`(A005554(n+1)-a(n-1))%7` with `a(0)=1`
-/

namespace A258711.P16572364017241944186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A005554 (n + 1) - a (n - 1)) 7

end

end A258711.P16572364017241944186

namespace A258711

/-- `(A005554(n+1)-a(n-1))%7` -/
def P16572364017241944186.Spec : Prop :=
  ∀ n, P16572364017241944186.a n = A258711 n

end A258711

/-! ## A258711.P3168315836190681602

`(A005043(n+1)+A005043(n))%7`
-/

namespace A258711.P3168315836190681602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005043 (n + 1) + A005043 n) 7

end

end A258711.P3168315836190681602

namespace A258711

/-- `(A005043(n+1)+A005043(n))%7` -/
def P3168315836190681602.Spec : Prop :=
  ∀ n, P3168315836190681602.a n = A258711 n

end A258711

/-! ## A258711.P11132557204069579091

`A064189(∑[n])%7`
-/

namespace A258711.P11132557204069579091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064189 (∑ j ∈ Finset.range (n + 1), f1 j)) 7

end

end A258711.P11132557204069579091

namespace A258711

/-- `A064189(∑[n])%7` -/
def P11132557204069579091.Spec : Prop :=
  ∀ n, P11132557204069579091.a n = A258711 n

end A258711

/-! ## A258711.P3604679025230020777

`A064645(∑[n])%7`
-/

namespace A258711.P3604679025230020777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064645 (∑ j ∈ Finset.range (n + 1), f1 j)) 7

end

end A258711.P3604679025230020777

namespace A258711

/-- `A064645(∑[n])%7` -/
def P3604679025230020777.Spec : Prop :=
  ∀ n, P3604679025230020777.a n = A258711 n

end A258711

/-! ## A258711.P10398038378706540447

`A026300(A000096(n))%7`
-/

namespace A258711.P10398038378706540447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026300 (A000096 n).toNat) 7

end

end A258711.P10398038378706540447

namespace A258711

/-- `A026300(A000096(n))%7` -/
def P10398038378706540447.Spec : Prop :=
  ∀ n, P10398038378706540447.a n = A258711 n

end A258711

/-! ## A258711.P12190790497222140744

`sqrt(A133053(n))%7`
-/

namespace A258711.P12190790497222140744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A133053 n : ℝ))) 7

end

end A258711.P12190790497222140744

namespace A258711

/-- `sqrt(A133053(n))%7` -/
def P12190790497222140744.Spec : Prop :=
  ∀ n, P12190790497222140744.a n = A258711 n

end A258711

/-! ## A258711.P14313026728922267724

`A258709(∑[n])%7`
-/

namespace A258711.P14313026728922267724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258709 (∑ j ∈ Finset.range (n + 1), f1 j)) 7

end

end A258711.P14313026728922267724

namespace A258711

/-- `A258709(∑[n])%7` -/
def P14313026728922267724.Spec : Prop :=
  ∀ n, P14313026728922267724.a n = A258711 n

end A258711

/-!
# A258712: Motzkin numbers A001006 read mod 5.

The programs for A258712, the canonical program `A258712.P11139065725341983905` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258712 has offset 0).

The definition of A258712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258712.P11139065725341983905

`A001006(n)%5`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A258712

/-- `A001006(n)%5` -/
def P11139065725341983905.Spec : Prop :=
  ∀ n, P11139065725341983905.a n = A258712 n

theorem P11139065725341983905.correct : P11139065725341983905.Spec := by
  intro n
  simp only [A258712]

end A258712

/-! ## A258712.P14077206799036326534

`Δ[A097332(n)]%5`
-/

namespace A258712.P14077206799036326534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 5

end

end A258712.P14077206799036326534

namespace A258712

/-- `Δ[A097332(n)]%5` -/
def P14077206799036326534.Spec : Prop :=
  ∀ n, P14077206799036326534.a n = A258712 n

end A258712

/-! ## A258712.P15970729658218162759

`A086246(n+2)%5`
-/

namespace A258712.P15970729658218162759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086246 (n + 2)) 5

end

end A258712.P15970729658218162759

namespace A258712

/-- `A086246(n+2)%5` -/
def P15970729658218162759.Spec : Prop :=
  ∀ n, P15970729658218162759.a n = A258712 n

end A258712

/-! ## A258712.P5331517480134143136

`A168049(n+2)%5`
-/

namespace A258712.P5331517480134143136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168049 (n + 2)) 5

end

end A258712.P5331517480134143136

namespace A258712

/-- `A168049(n+2)%5` -/
def P5331517480134143136.Spec : Prop :=
  ∀ n, P5331517480134143136.a n = A258712 n

end A258712

/-! ## A258712.P12914701040419996980

`abs(A166587(n+1)%5)`
-/

namespace A258712.P12914701040419996980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A166587 (n + 1)) 5|

end

end A258712.P12914701040419996980

namespace A258712

/-- `abs(A166587(n+1)%5)` -/
def P12914701040419996980.Spec : Prop :=
  ∀ n, P12914701040419996980.a n = A258712 n

end A258712

/-! ## A258712.P1913001785285290319

`A091869(A000124(n))%5`
-/

namespace A258712.P1913001785285290319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091869 (A000124 n).toNat) 5

end

end A258712.P1913001785285290319

namespace A258712

/-- `A091869(A000124(n))%5` -/
def P1913001785285290319.Spec : Prop :=
  ∀ n, P1913001785285290319.a n = A258712 n

end A258712

/-! ## A258712.P14652736027460257319

`A064645(∑[n])%5`
-/

namespace A258712.P14652736027460257319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064645 (∑ j ∈ Finset.range (n + 1), f1 j)) 5

end

end A258712.P14652736027460257319

namespace A258712

/-- `A064645(∑[n])%5` -/
def P14652736027460257319.Spec : Prop :=
  ∀ n, P14652736027460257319.a n = A258712 n

end A258712

/-! ## A258712.P122411630703648016

`A091149(n)%5`
-/

namespace A258712.P122411630703648016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091149 n) 5

end

end A258712.P122411630703648016

namespace A258712

/-- `A091149(n)%5` -/
def P122411630703648016.Spec : Prop :=
  ∀ n, P122411630703648016.a n = A258712 n

end A258712

/-! ## A258712.P1849918768634521386

`A014435(n+1)%5`
-/

namespace A258712.P1849918768634521386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014435 (n + 1)) 5

end

end A258712.P1849918768634521386

namespace A258712

/-- `A014435(n+1)%5` -/
def P1849918768634521386.Spec : Prop :=
  ∀ n, P1849918768634521386.a n = A258712 n

end A258712

/-! ## A258712.P8648025400715765679

`A025230(n+2)%5`
-/

namespace A258712.P8648025400715765679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025230 (n + 2)) 5

end

end A258712.P8648025400715765679

namespace A258712

/-- `A025230(n+2)%5` -/
def P8648025400715765679.Spec : Prop :=
  ∀ n, P8648025400715765679.a n = A258712 n

end A258712

/-! ## A258712.P13733497918923737083

`A218186(n+2)%5`
-/

namespace A258712.P13733497918923737083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218186 (n + 2)) 5

end

end A258712.P13733497918923737083

namespace A258712

/-- `A218186(n+2)%5` -/
def P13733497918923737083.Spec : Prop :=
  ∀ n, P13733497918923737083.a n = A258712 n

end A258712

/-! ## A258712.P5063239862273194822

`A258709(A000217(n))%5`
-/

namespace A258712.P5063239862273194822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258709 (A000217 n).toNat) 5

end

end A258712.P5063239862273194822

namespace A258712

/-- `A258709(A000217(n))%5` -/
def P5063239862273194822.Spec : Prop :=
  ∀ n, P5063239862273194822.a n = A258712 n

end A258712

/-!
# A258713: A001172(n)/2: Least k such that 2k is a sum of two odd primes in exactly n ways.

The programs for A258713, there is no canonical definition to state claims against.
-/

/-! ## A258713.P17738324469047984841

`A001172(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A258713.P17738324469047984841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001172 n : ℚ) / 2

end

end A258713.P17738324469047984841

/-! ## A258713.P2814207594242119585

`A136244(n)-A154955(n+1)`
-/

namespace A258713.P2814207594242119585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136244 n - A154955 (n + 1)

end

end A258713.P2814207594242119585

/-! ## A258713.P8797762574314961110

`xor(A019590(n+1), A136244(n))`
-/

namespace A258713.P8797762574314961110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019590 (n + 1)) (A136244 n)

end

end A258713.P8797762574314961110

/-! ## A258713.P9281811391160866352

`xor(A130706(n), A352296(n))/2`
-/

namespace A258713.P9281811391160866352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A130706 n) (A352296 n) : ℚ) / 2

end

end A258713.P9281811391160866352

/-! ## A258713.P4379711890509304149

`A136244(n)-A154271(A136244(n)+n)`
-/

namespace A258713.P4379711890509304149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136244 n - A154271 (A136244 n + (n : ℤ)).toNat

end

end A258713.P4379711890509304149

/-! ## A258713.P11073545378942434360

`A014682(A001172(n))`
-/

namespace A258713.P11073545378942434360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A001172 n).toNat

end

end A258713.P11073545378942434360

/-! ## A258713.P6099985254626574519

`A154955(A154955(n+1)+A136244(n))+A136244(n)`
-/

namespace A258713.P6099985254626574519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A154955 (n + 1) + A136244 n).toNat + A136244 n

end

end A258713.P6099985254626574519

/-! ## A258713.P15822097911161724672

`A136244(n)-A154271(A133263(n))`
-/

namespace A258713.P15822097911161724672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136244 n - A154271 (A133263 n).toNat

end

end A258713.P15822097911161724672

/-! ## A258713.P597734111566022646

`∑{d}[A001172(n), A348045(#)]`
-/

namespace A258713.P597734111566022646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A348045 d

end

end A258713.P597734111566022646

/-! ## A258713.P11338962194831141591

`A026741(lcm(2, A001172(n)))`
-/

namespace A258713.P11338962194831141591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.lcm 2 (A001172 n))

end

end A258713.P11338962194831141591

/-! ## A258713.P11077214001134038899

`A001281(A001172(n)+2)-1`
-/

namespace A258713.P11077214001134038899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A001172 n + 2).toNat - 1

end

end A258713.P11077214001134038899

/-! ## A258713.P17541963689078398503

`A004525(A001172(n)+2)-1`
-/

namespace A258713.P17541963689078398503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A001172 n + 2).toNat - 1

end

end A258713.P17541963689078398503

/-! ## A258713.P14404880664240623482

`A026741(A001172(n)+2)-1`
-/

namespace A258713.P14404880664240623482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A001172 n + 2).toNat - 1

end

end A258713.P14404880664240623482

/-! ## A258713.P4154871193862396493

`A001281(2*A001172(n)-A001172(n))`
-/

namespace A258713.P4154871193862396493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A001172 n - A001172 n).toNat

end

end A258713.P4154871193862396493

/-! ## A258713.P341003365887683093

`A004525(2*A001172(n)-A001172(n))`
-/

namespace A258713.P341003365887683093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A001172 n - A001172 n).toNat

end

end A258713.P341003365887683093

/-! ## A258713.P17021703597574342059

`A026741(2*A001172(n)-A001172(n))`
-/

namespace A258713.P17021703597574342059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A001172 n - A001172 n).toNat

end

end A258713.P17021703597574342059

/-!
# A258717: If n even then 2*n^2-4*n else 2*n^2-4*n-3.

The programs for A258717, the canonical program `A258717.P16291948896691762798` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258717 has offset 2).

The definition of A258717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258717.P16291948896691762798

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=3, a(2)=16, a(3)=27`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A258717

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P16291948896691762798.Spec : Prop :=
  ∀ n, P16291948896691762798.a n = A258717 (n + 2)

theorem P16291948896691762798.correct : P16291948896691762798.Spec := by
  intro n
  simp only [A258717, Nat.add_sub_cancel]

end A258717

/-! ## A258717.P6196055004931281708

`∑[a(n-2)+8]` with `a(0)=0, a(1)=3, a(2)=13`
-/

namespace A258717.P6196055004931281708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 13] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258717.P6196055004931281708

namespace A258717

/-- `∑[a(n-2)+8]` -/
def P6196055004931281708.Spec : Prop :=
  ∀ n, (P6196055004931281708.a n : ℤ) = A258717 (n + 2)

end A258717

/-! ## A258717.P4727933655604646514

`a(n-2)+8*n` with `a(0)=0, a(1)=3`
-/

namespace A258717.P4727933655604646514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 2) + 8 * n

end

end A258717.P4727933655604646514

namespace A258717

/-- `a(n-2)+8*n` -/
def P4727933655604646514.Spec : Prop :=
  ∀ n, (P4727933655604646514.a n : ℤ) = A258717 (n + 2)

end A258717

/-! ## A258717.P15402359245180179364

`∑[∑[8-a(n-1)]]` with `a(0)=0, a(1)=3, a(2)=10`
-/

namespace A258717.P15402359245180179364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 10] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258717.P15402359245180179364

namespace A258717

/-- `∑[∑[8-a(n-1)]]` -/
def P15402359245180179364.Spec : Prop :=
  ∀ n, P15402359245180179364.a n = A258717 (n + 2)

end A258717

/-! ## A258717.P3097738406745516872

`9*n-(n-a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A258717.P3097738406745516872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  (9 * n : ℤ) - ((n : ℤ) - a (n - 2))

end

end A258717.P3097738406745516872

namespace A258717

/-- `9*n-(n-a(n-2))` -/
def P3097738406745516872.Spec : Prop :=
  ∀ n, P3097738406745516872.a n = A258717 (n + 2)

end A258717

/-! ## A258717.P13330869766053744284

`(n+1+n)²-(a(n-1)+6)` with `a(0)=0`
-/

namespace A258717.P13330869766053744284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1 + n) ^ 2 : ℤ) - (a (n - 1) + 6)

end

end A258717.P13330869766053744284

namespace A258717

/-- `(n+1+n)²-(a(n-1)+6)` -/
def P13330869766053744284.Spec : Prop :=
  ∀ n, P13330869766053744284.a n = A258717 (n + 2)

end A258717

/-! ## A258717.P10172741325441161208

`A047393(n+1)+2*n²`
-/

namespace A258717.P10172741325441161208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047393 (n + 1) + (2 * n ^ 2 : ℤ)

end

end A258717.P10172741325441161208

namespace A258717

/-- `A047393(n+1)+2*n²` -/
def P10172741325441161208.Spec : Prop :=
  ∀ n, P10172741325441161208.a n = A258717 (n + 2)

end A258717

/-! ## A258717.P16841715064902855072

`A255876(n+1)-2*(n+2)`
-/

namespace A258717.P16841715064902855072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255876 (n + 1) - (2 * (n + 2) : ℤ)

end

end A258717.P16841715064902855072

namespace A258717

/-- `A255876(n+1)-2*(n+2)` -/
def P16841715064902855072.Spec : Prop :=
  ∀ n, P16841715064902855072.a n = A258717 (n + 2)

end A258717

/-! ## A258717.P5699544940130487667

`C(2*n, 2)-1+A228137(n+1)-n`
-/

namespace A258717.P5699544940130487667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 : ℤ) - 1 + (A228137 (n + 1) - (n : ℤ))

end

end A258717.P5699544940130487667

namespace A258717

/-- `C(2*n, 2)-1+A228137(n+1)-n` -/
def P5699544940130487667.Spec : Prop :=
  ∀ n, P5699544940130487667.a n = A258717 (n + 2)

end A258717

/-! ## A258717.P5582192818022394981

`A214345(n)+A028875(n)`
-/

namespace A258717.P5582192818022394981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214345 n + A028875 n

end

end A258717.P5582192818022394981

namespace A258717

/-- `A214345(n)+A028875(n)` -/
def P5582192818022394981.Spec : Prop :=
  ∀ n, P5582192818022394981.a n = A258717 (n + 2)

end A258717

/-! ## A258717.P15722978299019093398

`A139598(n)-A010676(n)`
-/

namespace A258717.P15722978299019093398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139598 n - A010676 n

end

end A258717.P15722978299019093398

namespace A258717

/-- `A139598(n)-A010676(n)` -/
def P15722978299019093398.Spec : Prop :=
  ∀ n, P15722978299019093398.a n = A258717 (n + 2)

end A258717

/-! ## A258717.P597662757058544622

`A195605(n)-A010694(n)`
-/

namespace A258717.P597662757058544622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195605 n - A010694 n

end

end A258717.P597662757058544622

namespace A258717

/-- `A195605(n)-A010694(n)` -/
def P597662757058544622.Spec : Prop :=
  ∀ n, P597662757058544622.a n = A258717 (n + 2)

end A258717

/-! ## A258717.P1308875004612559770

`A056220(n)+A047468(n+1)`
-/

namespace A258717.P1308875004612559770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n + A047468 (n + 1)

end

end A258717.P1308875004612559770

namespace A258717

/-- `A056220(n)+A047468(n+1)` -/
def P1308875004612559770.Spec : Prop :=
  ∀ n, P1308875004612559770.a n = A258717 (n + 2)

end A258717

/-! ## A258717.P17149587282772594116

`A077221(n)+A047467(n+1)`
-/

namespace A258717.P17149587282772594116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 n + A047467 (n + 1)

end

end A258717.P17149587282772594116

namespace A258717

/-- `A077221(n)+A047467(n+1)` -/
def P17149587282772594116.Spec : Prop :=
  ∀ n, P17149587282772594116.a n = A258717 (n + 2)

end A258717

/-! ## A258717.P4937363071362256234

`A139592(n)+A047225(n+1)`
-/

namespace A258717.P4937363071362256234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139592 n + A047225 (n + 1)

end

end A258717.P4937363071362256234

namespace A258717

/-- `A139592(n)+A047225(n+1)` -/
def P4937363071362256234.Spec : Prop :=
  ∀ n, P4937363071362256234.a n = A258717 (n + 2)

end A258717

/-! ## A258717.P14532755397856902343

`A139591(n)+A047352(n+1)`
-/

namespace A258717.P14532755397856902343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139591 n + A047352 (n + 1)

end

end A258717.P14532755397856902343

namespace A258717

/-- `A139591(n)+A047352(n+1)` -/
def P14532755397856902343.Spec : Prop :=
  ∀ n, P14532755397856902343.a n = A258717 (n + 2)

end A258717

/-! ## A258717.P645353984797153163

`A168300(n+1)+A100040(n)`
-/

namespace A258717.P645353984797153163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168300 (n + 1) + A100040 n

end

end A258717.P645353984797153163

namespace A258717

/-- `A168300(n+1)+A100040(n)` -/
def P645353984797153163.Spec : Prop :=
  ∀ n, P645353984797153163.a n = A258717 (n + 2)

end A258717

/-! ## A258717.P15326313065564382444

`A397976(n)+A047274(n+1)`
-/

namespace A258717.P15326313065564382444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397976 n + A047274 (n + 1)

end

end A258717.P15326313065564382444

namespace A258717

/-- `A397976(n)+A047274(n+1)` -/
def P15326313065564382444.Spec : Prop :=
  ∀ n, P15326313065564382444.a n = A258717 (n + 2)

end A258717

/-! ## A258717.P5371118279606067172

`A054000(n+1)-A010674(n)`
-/

namespace A258717.P5371118279606067172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054000 (n + 1) - A010674 n

end

end A258717.P5371118279606067172

namespace A258717

/-- `A054000(n+1)-A010674(n)` -/
def P5371118279606067172.Spec : Prop :=
  ∀ n, P5371118279606067172.a n = A258717 (n + 2)

end A258717

/-! ## A258717.P2623587538788394383

`A090288(n)-A168205(n+1)`
-/

namespace A258717.P2623587538788394383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 n - A168205 (n + 1)

end

end A258717.P2623587538788394383

namespace A258717

/-- `A090288(n)-A168205(n+1)` -/
def P2623587538788394383.Spec : Prop :=
  ∀ n, P2623587538788394383.a n = A258717 (n + 2)

end A258717

/-!
# A258719: Number of self-dual noncommutative groupoids with n elements.

The programs for A258719, there is no canonical definition to state claims against.
-/

/-! ## A258719.P3619169443058564690

`A029850(n+1)-A001425(n+1)`
-/

namespace A258719.P3619169443058564690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029850 (n + 1) - A001425 (n + 1)

end

end A258719.P3619169443058564690

/-!
# A258720: Number of non-self-dual groupoids which are equal to their duals.

The programs for A258720, there is no canonical definition to state claims against.
-/

/-! ## A258720.P6461685987803432396

`(A001329(n+1)-A029850(n+1))/2`
-/

namespace A258720.P6461685987803432396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001329 (n + 1) - A029850 (n + 1) : ℚ) / 2

end

end A258720.P6461685987803432396

/-! ## A258720.P4310668997504870069

`A001329(n+1)-A001424(n+1)`
-/

namespace A258720.P4310668997504870069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001329 (n + 1) - A001424 (n + 1)

end

end A258720.P4310668997504870069

/-!
# A258721: a(n) = 24*n^2 + 52*n + 29.

The programs for A258721, the canonical program `A258721.P9918933584044179914` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258721 has offset 0).

The definition of A258721 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*n²+52*n+29` (program `A258721.P9918933584044179914`, by `A258721.P9918933584044179914.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258721.P9918933584044179914

`24*n²+52*n+29`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A258721

/-- `24*n²+52*n+29` -/
def P9918933584044179914.Spec : Prop :=
  ∀ n, (P9918933584044179914.a n : ℤ) = A258721 n

theorem P9918933584044179914.correct : P9918933584044179914.Spec := by
  intro n
  simp only [A258721]

end A258721

/-! ## A258721.P4633396418116921560

`or(1, 4*∑[12*n+7])`
-/

namespace A258721.P4633396418116921560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A258721.P4633396418116921560

namespace A258721

/-- `or(1, 4*∑[12*n+7])` -/
def P4633396418116921560.Spec : Prop :=
  ∀ n, (P4633396418116921560.a n : ℤ) = A258721 n

end A258721

/-! ## A258721.P8958865415067068227

`Δ[(n+1)*C(4*n+2, 2)]`
-/

namespace A258721.P8958865415067068227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (4 * n + 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A258721.P8958865415067068227

namespace A258721

/-- `Δ[(n+1)*C(4*n+2, 2)]` -/
def P8958865415067068227.Spec : Prop :=
  ∀ n, P8958865415067068227.a n = A258721 n

end A258721

/-! ## A258721.P3628959825792029223

`Δ[A079588(n)]`
-/

namespace A258721.P3628959825792029223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258721.P3628959825792029223

namespace A258721

/-- `Δ[A079588(n)]` -/
def P3628959825792029223.Spec : Prop :=
  ∀ n, P3628959825792029223.a n = A258721 n

end A258721

/-! ## A258721.P2262661320758813594

`Δ[(4*n+1)*A000217(2*n+1)]`
-/

namespace A258721.P2262661320758813594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A000217 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258721.P2262661320758813594

namespace A258721

/-- `Δ[(4*n+1)*A000217(2*n+1)]` -/
def P2262661320758813594.Spec : Prop :=
  ∀ n, P2262661320758813594.a n = A258721 n

end A258721

/-! ## A258721.P16807463329469912314

`Δ[A192796(n+1)+n]`
-/

namespace A258721.P16807463329469912314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192796 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258721.P16807463329469912314

namespace A258721

/-- `Δ[A192796(n+1)+n]` -/
def P16807463329469912314.Spec : Prop :=
  ∀ n, P16807463329469912314.a n = A258721 n

end A258721

/-! ## A258721.P12050556145958376559

`Δ[(n+1)*A014634(n)]`
-/

namespace A258721.P12050556145958376559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258721.P12050556145958376559

namespace A258721

/-- `Δ[(n+1)*A014634(n)]` -/
def P12050556145958376559.Spec : Prop :=
  ∀ n, P12050556145958376559.a n = A258721 n

end A258721

/-! ## A258721.P18060071241356421584

`Δ[∑[A016813(n)]*A016813(n)]`
-/

namespace A258721.P18060071241356421584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258721.P18060071241356421584

namespace A258721

/-- `Δ[∑[A016813(n)]*A016813(n)]` -/
def P18060071241356421584.Spec : Prop :=
  ∀ n, P18060071241356421584.a n = A258721 n

end A258721

/-! ## A258721.P13915260180523803629

`Δ[n*A185438(n+1)]`
-/

namespace A258721.P13915260180523803629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A185438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258721.P13915260180523803629

namespace A258721

/-- `Δ[n*A185438(n+1)]` -/
def P13915260180523803629.Spec : Prop :=
  ∀ n, P13915260180523803629.a n = A258721 n

end A258721

/-! ## A258721.P17702347053315622271

`Δ[∑[A005408(2*n)]*A005408(2*n)]`
-/

namespace A258721.P17702347053315622271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A005408 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258721.P17702347053315622271

namespace A258721

/-- `Δ[∑[A005408(2*n)]*A005408(2*n)]` -/
def P17702347053315622271.Spec : Prop :=
  ∀ n, P17702347053315622271.a n = A258721 n

end A258721

/-! ## A258721.P3787411790202060413

`∑[A063130(2*n+1)+A063130(n+2)]`
-/

namespace A258721.P3787411790202060413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063130 (2 * n + 1) + A063130 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258721.P3787411790202060413

namespace A258721

/-- `∑[A063130(2*n+1)+A063130(n+2)]` -/
def P3787411790202060413.Spec : Prop :=
  ∀ n, P3787411790202060413.a n = A258721 n

end A258721

/-! ## A258721.P8502598539345699010

`Δ[A002414(Δ[n²])]`
-/

namespace A258721.P8502598539345699010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258721.P8502598539345699010

namespace A258721

/-- `Δ[A002414(Δ[n²])]` -/
def P8502598539345699010.Spec : Prop :=
  ∀ n, P8502598539345699010.a n = A258721 n

end A258721

/-! ## A258721.P3781332030057293296

`A136392(2*n+3)`
-/

namespace A258721.P3781332030057293296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136392 (2 * n + 3)

end

end A258721.P3781332030057293296

namespace A258721

/-- `A136392(2*n+3)` -/
def P3781332030057293296.Spec : Prop :=
  ∀ n, P3781332030057293296.a n = A258721 n

end A258721

/-! ## A258721.P15908467188267165345

`Δ[A213820(2*n+1)/2]`
-/

namespace A258721.P15908467188267165345
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213820 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258721.P15908467188267165345

namespace A258721

/-- `Δ[A213820(2*n+1)/2]` -/
def P15908467188267165345.Spec : Prop :=
  ∀ n, P15908467188267165345.a n = (A258721 n : ℚ)

end A258721

/-! ## A258721.P18149089736957939333

`Δ[n*A193867(2*(n+1))]`
-/

namespace A258721.P18149089736957939333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A193867 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258721.P18149089736957939333

namespace A258721

/-- `Δ[n*A193867(2*(n+1))]` -/
def P18149089736957939333.Spec : Prop :=
  ∀ n, P18149089736957939333.a n = A258721 n

end A258721

/-! ## A258721.P14959089957321675765

`Δ[(4*n+1)*A128918(2*n+1)]`
-/

namespace A258721.P14959089957321675765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A128918 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258721.P14959089957321675765

namespace A258721

/-- `Δ[(4*n+1)*A128918(2*n+1)]` -/
def P14959089957321675765.Spec : Prop :=
  ∀ n, P14959089957321675765.a n = A258721 n

end A258721

/-! ## A258721.P6953259929297675607

`Δ[A352115(2*n)+A100157(n+1)]`
-/

namespace A258721.P6953259929297675607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352115 (2 * n) + A100157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258721.P6953259929297675607

namespace A258721

/-- `Δ[A352115(2*n)+A100157(n+1)]` -/
def P6953259929297675607.Spec : Prop :=
  ∀ n, P6953259929297675607.a n = A258721 n

end A258721

/-! ## A258721.P15357873797536158043

`Δ[∑[A103832(2*n)]*A103832(2*n)]`
-/

namespace A258721.P15357873797536158043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103832 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A103832 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258721.P15357873797536158043

namespace A258721

/-- `Δ[∑[A103832(2*n)]*A103832(2*n)]` -/
def P15357873797536158043.Spec : Prop :=
  ∀ n, P15357873797536158043.a n = A258721 n

end A258721

/-! ## A258721.P8942048578799517446

`Δ[∑[A157142(2*n)]*A157142(2*n)]`
-/

namespace A258721.P8942048578799517446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A157142 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258721.P8942048578799517446

namespace A258721

/-- `Δ[∑[A157142(2*n)]*A157142(2*n)]` -/
def P8942048578799517446.Spec : Prop :=
  ∀ n, P8942048578799517446.a n = A258721 n

end A258721

/-! ## A258721.P10415415982870197695

`Δ[∑[A267872(2*n)]*A267872(2*n)]`
-/

namespace A258721.P10415415982870197695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A267872 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258721.P10415415982870197695

namespace A258721

/-- `Δ[∑[A267872(2*n)]*A267872(2*n)]` -/
def P10415415982870197695.Spec : Prop :=
  ∀ n, P10415415982870197695.a n = A258721 n

end A258721

/-!
# A258725: Number of length n+3 0..3 arrays with at most one downstep in every 3 consecutive neighbor pairs.

The programs for A258725, there is no canonical definition to state claims against.
-/

/-! ## A258725.P13732897979527357044

`A258730(∑[n+3]+1)`
-/

namespace A258725.P13732897979527357044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258725.P13732897979527357044

/-! ## A258725.P121849068352741333

`lcm(A258730(A055999(n)+4), A269529(n))`
-/

namespace A258725.P121849068352741333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A258730 (A055999 n + 4).toNat) (A269529 n)

end

end A258725.P121849068352741333

/-! ## A258725.P15135802829717618597

`A258730(A055999(n)+4)+A000007(n+1)`
-/

namespace A258725.P15135802829717618597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A055999 n + 4).toNat + A000007 (n + 1)

end

end A258725.P15135802829717618597

/-! ## A258725.P8763287584721893852

`A000034(4*n)*A258730(A055999(n)+4)`
-/

namespace A258725.P8763287584721893852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (4 * n) * A258730 (A055999 n + 4).toNat

end

end A258725.P8763287584721893852

/-! ## A258725.P7830640287392271030

`A258730(A055999(n)+4)+A005171(A000040(n+1))`
-/

namespace A258725.P7830640287392271030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A055999 n + 4).toNat + A005171 (A000040 (n + 1)).toNat

end

end A258725.P7830640287392271030

/-! ## A258725.P375744010801849639

`A001221(A192611(n+1))*A258730(A055999(n)+4)`
-/

namespace A258725.P375744010801849639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A192611 (n + 1)).toNat * A258730 (A055999 n + 4).toNat

end

end A258725.P375744010801849639

/-! ## A258725.P3132564708811068663

`A005171(A006416(n+2))*A258730(A055999(n)+4)`
-/

namespace A258725.P3132564708811068663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A006416 (n + 2)).toNat * A258730 (A055999 n + 4).toNat

end

end A258725.P3132564708811068663

/-!
# A258726: Number of length n+4 0..3 arrays with at most one downstep in every 4 consecutive neighbor pairs.

The programs for A258726, there is no canonical definition to state claims against.
-/

/-! ## A258726.P5585018707869941463

`A258730(∑[n+3]+n+4)`
-/

namespace A258726.P5585018707869941463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (∑ j ∈ Finset.range (n + 1), f1 j + n + 4)

end

end A258726.P5585018707869941463

/-! ## A258726.P7866370272080833198

`A258730(A055998(n+2))%A027650(n+4)`
-/

namespace A258726.P7866370272080833198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258730 (A055998 (n + 2)).toNat) (A027650 (n + 4))

end

end A258726.P7866370272080833198

/-! ## A258726.P17342439658261726807

`A258730(A055998(n+2))+n%A065357(n)`
-/

namespace A258726.P17342439658261726807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A055998 (n + 2)).toNat + Int.tmod (n : ℤ) (A065357 n)

end

end A258726.P17342439658261726807

/-! ## A258726.P1686346970287206977

`A258730(A055998(n+2))+A010054(3*n+2)`
-/

namespace A258726.P1686346970287206977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A055998 (n + 2)).toNat + A010054 (3 * n + 2)

end

end A258726.P1686346970287206977

/-! ## A258726.P16735101533293676078

`A258730(A055998(n+2))-A295662(A245474(n))`
-/

namespace A258726.P16735101533293676078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A055998 (n + 2)).toNat - A295662 (A245474 n).toNat

end

end A258726.P16735101533293676078

/-!
# A258727: Number of length n+5 0..3 arrays with at most one downstep in every 5 consecutive neighbor pairs.

The programs for A258727, there is no canonical definition to state claims against.
-/

/-! ## A258727.P10154145198596103060

`A258730(A046691(n+3))`
-/

namespace A258727.P10154145198596103060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A046691 (n + 3)).toNat

end

end A258727.P10154145198596103060

/-! ## A258727.P7894228023261856194

`A258730(Δ[A023545(n+1)])`
-/

namespace A258727.P7894228023261856194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (f1 (n + 1) - f1 n).toNat

end

end A258727.P7894228023261856194

/-! ## A258727.P10748001446142439390

`A258730(∑[A020710(n)]+6)`
-/

namespace A258727.P10748001446142439390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A258727.P10748001446142439390

/-! ## A258727.P10549315116632792427

`A258730(A000217(n+7)-A005408(n+8))`
-/

namespace A258727.P10549315116632792427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A000217 (n + 7) - A005408 (n + 8)).toNat

end

end A258727.P10549315116632792427

/-! ## A258727.P11484215113656033004

`A258730(A000124(n+8)-A016789(n+8))`
-/

namespace A258727.P11484215113656033004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A000124 (n + 8) - A016789 (n + 8)).toNat

end

end A258727.P11484215113656033004

/-!
# A258728: Number of length n+6 0..3 arrays with at most one downstep in every 6 consecutive neighbor pairs.

The programs for A258728, there is no canonical definition to state claims against.
-/

/-! ## A258728.P12456570673449131270

`A258730(A052905(n+3))`
-/

namespace A258728.P12456570673449131270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A052905 (n + 3)).toNat

end

end A258728.P12456570673449131270

/-! ## A258728.P12760007022052270079

`A258730(A056119(n)+16)`
-/

namespace A258728.P12760007022052270079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A056119 n + 16).toNat

end

end A258728.P12760007022052270079

/-! ## A258728.P14951235195535958802

`A258730(A056115(n+1)+10)`
-/

namespace A258728.P14951235195535958802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A056115 (n + 1) + 10).toNat

end

end A258728.P14951235195535958802

/-! ## A258728.P6425627347938957021

`A258730(Δ[Δ[A006504(n+1)]])`
-/

namespace A258728.P6425627347938957021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (f1 (n + 1) - f1 n).toNat

end

end A258728.P6425627347938957021

/-! ## A258728.P14681349114107881247

`A258730(Δ[A023545(n+2)]-1)`
-/

namespace A258728.P14681349114107881247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (f1 (n + 1) - f1 n - 1).toNat

end

end A258728.P14681349114107881247

/-! ## A258728.P7102301051305144262

`A258730(A000217(n+8)-A004277(n+10))`
-/

namespace A258728.P7102301051305144262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A000217 (n + 8) - A004277 (n + 10)).toNat

end

end A258728.P7102301051305144262

/-! ## A258728.P9720506967340762295

`A258730(A000124(n+8)-A060747(n+11))`
-/

namespace A258728.P9720506967340762295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A000124 (n + 8) - A060747 (n + 11)).toNat

end

end A258728.P9720506967340762295

/-!
# A258729: Number of length n+7 0..3 arrays with at most one downstep in every 7 consecutive neighbor pairs.

The programs for A258729, there is no canonical definition to state claims against.
-/

/-! ## A258729.P3516631785450044230

`A258730(A055999(n+4))`
-/

namespace A258729.P3516631785450044230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A055999 (n + 4)).toNat

end

end A258729.P3516631785450044230

/-! ## A258729.P11560607970635031840

`A258730(A000096(n+6)-5)`
-/

namespace A258729.P11560607970635031840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A000096 (n + 6) - 5).toNat

end

end A258729.P11560607970635031840

/-! ## A258729.P4379516727096786570

`A258730(A000217(n+7)-6)`
-/

namespace A258729.P4379516727096786570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A000217 (n + 7) - 6).toNat

end

end A258729.P4379516727096786570

/-! ## A258729.P7849393327796518664

`A258730(A000124(n+7)-7)`
-/

namespace A258729.P7849393327796518664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A000124 (n + 7) - 7).toNat

end

end A258729.P7849393327796518664

/-! ## A258729.P9560518485312029831

`A258730(A161680(n+7)+n+1)`
-/

namespace A258729.P9560518485312029831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A161680 (n + 7) + (n + 1 : ℤ)).toNat

end

end A258729.P9560518485312029831

/-! ## A258729.P13466246629140881310

`A258730(2*n+A167499(n+4)+2)`
-/

namespace A258729.P13466246629140881310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 ((2 * n : ℤ) + (A167499 (n + 4) + 2)).toNat

end

end A258729.P13466246629140881310

/-! ## A258729.P15102866563477278040

`A258730(Δ[n²]+A152947(n+7)+5)`
-/

namespace A258729.P15102866563477278040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A152947 (n + 7) + 5)).toNat

end

end A258729.P15102866563477278040

/-!
# A258731: Number of length n+1 0..3 arrays with at most one downstep in every n consecutive neighbor pairs.

The programs for A258731, the canonical program `A258731.P8474192831176115530` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258731 has offset 1).

The definition of A258731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258731.P8474192831176115530

`A001919(n+3)+C(n+5, n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A258731

/-- `A001919(n+3)+C(n+5, n+2)` -/
def P8474192831176115530.Spec : Prop :=
  ∀ n, P8474192831176115530.a n = A258731 (n + 1)

theorem P8474192831176115530.correct : P8474192831176115530.Spec := by
  intro n
  simp only [A258731, Nat.add_sub_cancel]

end A258731

/-! ## A258731.P18413209895544322747

`A001919(n+3)+Δ[A063258(n)]`
-/

namespace A258731.P18413209895544322747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001919 (n + 3) + (f1 (n + 1) - f1 n)

end

end A258731.P18413209895544322747

namespace A258731

/-- `A001919(n+3)+Δ[A063258(n)]` -/
def P18413209895544322747.Spec : Prop :=
  ∀ n, P18413209895544322747.a n = A258731 (n + 1)

end A258731

/-! ## A258731.P462237810027651823

`A001919(n+3)+Δ[A005718(n)]+1`
-/

namespace A258731.P462237810027651823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001919 (n + 3) + (f1 (n + 1) - f1 n + 1)

end

end A258731.P462237810027651823

namespace A258731

/-- `A001919(n+3)+Δ[A005718(n)]+1` -/
def P462237810027651823.Spec : Prop :=
  ∀ n, P462237810027651823.a n = A258731 (n + 1)

end A258731

/-! ## A258731.P13148563638914913834

`A001919(n+3)+Δ[A166805(n+1)]`
-/

namespace A258731.P13148563638914913834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001919 (n + 3) + (f1 (n + 1) - f1 n)

end

end A258731.P13148563638914913834

namespace A258731

/-- `A001919(n+3)+Δ[A166805(n+1)]` -/
def P13148563638914913834.Spec : Prop :=
  ∀ n, P13148563638914913834.a n = A258731 (n + 1)

end A258731

/-! ## A258731.P15049255147554156241

`Δ[A063258(n)+A064058(n)-A034263(n)]`
-/

namespace A258731.P15049255147554156241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n + (A064058 n - A034263 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258731.P15049255147554156241

namespace A258731

/-- `Δ[A063258(n)+A064058(n)-A034263(n)]` -/
def P15049255147554156241.Spec : Prop :=
  ∀ n, P15049255147554156241.a n = A258731 (n + 1)

end A258731

/-! ## A258731.P13373270091683538154

`A005714(n+3)+A062990(n)+Δ[A063258(n)]`
-/

namespace A258731.P13373270091683538154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005714 (n + 3) + (A062990 n + (f1 (n + 1) - f1 n))

end

end A258731.P13373270091683538154

namespace A258731

/-- `A005714(n+3)+A062990(n)+Δ[A063258(n)]` -/
def P13373270091683538154.Spec : Prop :=
  ∀ n, P13373270091683538154.a n = A258731 (n + 1)

end A258731

/-! ## A258731.P17289112316990376604

`A001919(n+3)+A000292(n+3)`
-/

namespace A258731.P17289112316990376604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001919 (n + 3) + A000292 (n + 3)

end

end A258731.P17289112316990376604

namespace A258731

/-- `A001919(n+3)+A000292(n+3)` -/
def P17289112316990376604.Spec : Prop :=
  ∀ n, P17289112316990376604.a n = A258731 (n + 1)

end A258731

/-! ## A258731.P18096608380854758405

`A258730(∑[n]+1)`
-/

namespace A258731.P18096608380854758405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258731.P18096608380854758405

namespace A258731

/-- `A258730(∑[n]+1)` -/
def P18096608380854758405.Spec : Prop :=
  ∀ n, P18096608380854758405.a n = A258731 (n + 1)

end A258731

/-! ## A258731.P8015025668001927817

`record[gcd(A002262(n), A258730(n+1))]`
-/

namespace A258731.P8015025668001927817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A258730 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258731.P8015025668001927817

namespace A258731

/-- `record[gcd(A002262(n), A258730(n+1))]` -/
def P8015025668001927817.Spec : Prop :=
  ∀ n, (P8015025668001927817.a n : ℤ) = A258731 (n + 1)

end A258731

/-! ## A258731.P9704590504635424470

`lcm((-1)^floor(n/2), A258730(A000124(n)))`
-/

namespace A258731.P9704590504635424470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (A258730 (A000124 n).toNat)

end

end A258731.P9704590504635424470

namespace A258731

/-- `lcm((-1)^floor(n/2), A258730(A000124(n)))` -/
def P9704590504635424470.Spec : Prop :=
  ∀ n, (P9704590504635424470.a n : ℤ) = A258731 (n + 1)

end A258731

/-! ## A258731.P7851924490681635981

`A258730(A000124(n))%A017056(n)`
-/

namespace A258731.P7851924490681635981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258730 (A000124 n).toNat) (A017056 n)

end

end A258731.P7851924490681635981

namespace A258731

/-- `A258730(A000124(n))%A017056(n)` -/
def P7851924490681635981.Spec : Prop :=
  ∀ n, P7851924490681635981.a n = A258731 (n + 1)

end A258731

/-! ## A258731.P15515040095242550325

`A258730(A000124(n))+A000007(n+1)`
-/

namespace A258731.P15515040095242550325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A000124 n).toNat + A000007 (n + 1)

end

end A258731.P15515040095242550325

namespace A258731

/-- `A258730(A000124(n))+A000007(n+1)` -/
def P15515040095242550325.Spec : Prop :=
  ∀ n, P15515040095242550325.a n = A258731 (n + 1)

end A258731

/-!
# A258732: Number of length n+2 0..3 arrays with at most one downstep in every n consecutive neighbor pairs.

The programs for A258732, there is no canonical definition to state claims against.
-/

/-! ## A258732.P6361460864311901370

`A258730(∑[n+1]+2)`
-/

namespace A258732.P6361460864311901370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A258732.P6361460864311901370

/-! ## A258732.P9482655049373576116

`lcm(A033999(n), A258730(A133263(n+1)))`
-/

namespace A258732.P9482655049373576116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A258730 (A133263 (n + 1)).toNat)

end

end A258732.P9482655049373576116

/-! ## A258732.P14488226577870618511

`A258730(A133263(n+1))%A258727(n+1)`
-/

namespace A258732.P14488226577870618511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258730 (A133263 (n + 1)).toNat) (A258727 (n + 1))

end

end A258732.P14488226577870618511

/-! ## A258732.P7794445752234501786

`A258730(A000096(n)+3)%A258725(n+1)`
-/

namespace A258732.P7794445752234501786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258730 (A000096 n + 3).toNat) (A258725 (n + 1))

end

end A258732.P7794445752234501786

/-! ## A258732.P6935892522549825051

`A010166(2*n+1)*A258730(A133263(n+1))`
-/

namespace A258732.P6935892522549825051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010166 (2 * n + 1) * A258730 (A133263 (n + 1)).toNat

end

end A258732.P6935892522549825051

/-! ## A258732.P10134196366229078730

`A014963(A000217(n+6))*A258730(A133263(n+1))`
-/

namespace A258732.P10134196366229078730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 6)).toNat * A258730 (A133263 (n + 1)).toNat

end

end A258732.P10134196366229078730

/-!
# A258733: Number of length n+3 0..3 arrays with at most one downstep in every n consecutive neighbor pairs.

The programs for A258733, there is no canonical definition to state claims against.
-/

/-! ## A258733.P6672184158107132894

`A258730(∑[n+2]+4)`
-/

namespace A258733.P6672184158107132894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A258733.P6672184158107132894

/-! ## A258733.P8085675979818233170

`lcm(gcd(2, n+1), A258730(A167614(n+1)))`
-/

namespace A258733.P8085675979818233170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd 2 (n + 1) : ℤ) (A258730 (A167614 (n + 1)).toNat)

end

end A258733.P8085675979818233170

/-! ## A258733.P7277998544579271557

`A258730(A167614(n+1))%A017512(n)`
-/

namespace A258733.P7277998544579271557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258730 (A167614 (n + 1)).toNat) (A017512 n)

end

end A258733.P7277998544579271557

/-! ## A258733.P1109934350337247909

`lcm(A000034(n), A258730(A167614(n+1)))`
-/

namespace A258733.P1109934350337247909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A258730 (A167614 (n + 1)).toNat)

end

end A258733.P1109934350337247909

/-! ## A258733.P9470571000688611202

`A258730(A167614(n+1))-A157928(n+2)+1`
-/

namespace A258733.P9470571000688611202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A167614 (n + 1)).toNat - A157928 (n + 2) + 1

end

end A258733.P9470571000688611202

/-! ## A258733.P10947045180277162545

`A353479(2*(n+1))+A258730(A167614(n+1))`
-/

namespace A258733.P10947045180277162545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353479 (2 * (n + 1)) + A258730 (A167614 (n + 1)).toNat

end

end A258733.P10947045180277162545

/-! ## A258733.P8744623852412080464

`A258730(A167614(n+1))+val(A001105(n)+1, 2)`
-/

namespace A258733.P8744623852412080464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A167614 (n + 1)).toNat + (SequenceMachineLib.valuation (A001105 n + 1).toNat 2 : ℤ)

end

end A258733.P8744623852412080464

/-! ## A258733.P1202229059973465869

`A258730(A167614(n+1))+3*char[1]*A059169(n+1)`
-/

namespace A258733.P1202229059973465869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A167614 (n + 1)).toNat + ((3 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) * A059169 (n + 1)

end

end A258733.P1202229059973465869

/-! ## A258733.P13339526263699473427

`A258730(A167614(n+1))-A032933(ceil(1/(n+1))+1)+2`
-/

namespace A258733.P13339526263699473427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A167614 (n + 1)).toNat - A032933 (⌈1 / (n + 1 : ℚ)⌉ + 1).toNat + 2

end

end A258733.P13339526263699473427

/-! ## A258733.P17103143806743687793

`A001222(A173230(n+1))*A258730(A167614(n+1))`
-/

namespace A258733.P17103143806743687793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A173230 (n + 1)).toNat * A258730 (A167614 (n + 1)).toNat

end

end A258733.P17103143806743687793

/-!
# A258734: Number of length n+4 0..3 arrays with at most one downstep in every n consecutive neighbor pairs.

The programs for A258734, there is no canonical definition to state claims against.
-/

/-! ## A258734.P12933791640929437545

`A258730(A052905(n)+9)`
-/

namespace A258734.P12933791640929437545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A052905 n + 9).toNat

end

end A258734.P12933791640929437545

/-! ## A258734.P15705012238564353649

`A258730(A055999(n)+10)`
-/

namespace A258734.P15705012238564353649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A055999 n + 10).toNat

end

end A258734.P15705012238564353649

/-! ## A258734.P17185023648900018339

`A258730(A167614(n+2)+1)`
-/

namespace A258734.P17185023648900018339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A167614 (n + 2) + 1).toNat

end

end A258734.P17185023648900018339

/-! ## A258734.P6673302113004621956

`A258730(A166136(n+2)-2)`
-/

namespace A258734.P6673302113004621956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A166136 (n + 2) - 2).toNat

end

end A258734.P6673302113004621956

/-! ## A258734.P12985117574021209665

`A258730(A166136(n+1)+1+n)`
-/

namespace A258734.P12985117574021209665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A258734.P12985117574021209665

/-! ## A258734.P10931211637038405146

`A258730(Δ[A023545(n+1)-n²])`
-/

namespace A258734.P10931211637038405146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (f1 (n + 1) - f1 n).toNat

end

end A258734.P10931211637038405146

/-! ## A258734.P3820940999540688487

`A258730(A034856(n+1)+A020723(n))`
-/

namespace A258734.P3820940999540688487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A034856 (n + 1) + A020723 n).toNat

end

end A258734.P3820940999540688487

/-!
# A258735: Number of length n+5 0..3 arrays with at most one downstep in every n consecutive neighbor pairs.

The programs for A258735, there is no canonical definition to state claims against.
-/

/-! ## A258735.P449002216707814534

`A258730(A167499(n+3))`
-/

namespace A258735.P449002216707814534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A167499 (n + 3)).toNat

end

end A258735.P449002216707814534

/-! ## A258735.P10612215523458089957

`A258730(A056000(n)+15)`
-/

namespace A258735.P10612215523458089957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A056000 n + 15).toNat

end

end A258735.P10612215523458089957

/-! ## A258735.P9984083921631198211

`A258730(A000124(n+4)+4)`
-/

namespace A258735.P9984083921631198211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A000124 (n + 4) + 4).toNat

end

end A258735.P9984083921631198211

/-! ## A258735.P18163469394709581269

`A258730(A000217(n+4)+5)`
-/

namespace A258735.P18163469394709581269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A000217 (n + 4) + 5).toNat

end

end A258735.P18163469394709581269

/-! ## A258735.P18444861579248260992

`A258730(A034856(n+3)+7)`
-/

namespace A258735.P18444861579248260992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A034856 (n + 3) + 7).toNat

end

end A258735.P18444861579248260992

/-! ## A258735.P13208162994890969908

`A258730(A055998(n+2)+8)`
-/

namespace A258735.P13208162994890969908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A055998 (n + 2) + 8).toNat

end

end A258735.P13208162994890969908

/-! ## A258735.P15266468421532373541

`A258730(A052905(n+1)+10)`
-/

namespace A258735.P15266468421532373541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A052905 (n + 1) + 10).toNat

end

end A258735.P15266468421532373541

/-! ## A258735.P18206645332085164273

`A258730(A167614(n+1)+2*n+9)`
-/

namespace A258735.P18206645332085164273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A167614 (n + 1) + (2 * n + 9 : ℤ)).toNat

end

end A258735.P18206645332085164273

/-!
# A258736: Number of length n+6 0..3 arrays with at most one downstep in every n consecutive neighbor pairs.

The programs for A258736, there is no canonical definition to state claims against.
-/

/-! ## A258736.P4439720597647350419

`A258730(A167499(n+4)+1)`
-/

namespace A258736.P4439720597647350419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A167499 (n + 4) + 1).toNat

end

end A258736.P4439720597647350419

/-! ## A258736.P16155799514146025306

`A258730(A000217(n+5)+6)`
-/

namespace A258736.P16155799514146025306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A000217 (n + 5) + 6).toNat

end

end A258736.P16155799514146025306

/-! ## A258736.P7169426474684618916

`A258730(A000096(n+6)-A004277(n+3))`
-/

namespace A258736.P7169426474684618916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A000096 (n + 6) - A004277 (n + 3)).toNat

end

end A258736.P7169426474684618916

/-! ## A258736.P15627289183876782561

`A258730(A004277(n+8)+A000096(n+2))`
-/

namespace A258736.P15627289183876782561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A004277 (n + 8) + A000096 (n + 2)).toNat

end

end A258736.P15627289183876782561

/-! ## A258736.P5866916555657545428

`A258730(A000096(n+6)-A005843(n+3))`
-/

namespace A258736.P5866916555657545428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A000096 (n + 6) - A005843 (n + 3)).toNat

end

end A258736.P5866916555657545428

/-! ## A258736.P8875259588861487347

`A258730(A005843(n+8)+A000096(n+2))`
-/

namespace A258736.P8875259588861487347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A005843 (n + 8) + A000096 (n + 2)).toNat

end

end A258736.P8875259588861487347

/-!
# A258737: Number of length n+7 0..3 arrays with at most one downstep in every n consecutive neighbor pairs.

The programs for A258737, there is no canonical definition to state claims against.
-/

/-! ## A258737.P14797840926643297971

`A258730(A000217(n+6)+7)`
-/

namespace A258737.P14797840926643297971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A000217 (n + 6) + 7).toNat

end

end A258737.P14797840926643297971

/-! ## A258737.P11124063467076010865

`A258730(A161680(n+7)+7)`
-/

namespace A258737.P11124063467076010865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A161680 (n + 7) + 7).toNat

end

end A258737.P11124063467076010865

/-! ## A258737.P4340237999332028851

`A258730(A000124(n+7)-(n+1))`
-/

namespace A258737.P4340237999332028851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A258737.P4340237999332028851

/-! ## A258737.P3304055989212473379

`A258730(A167499(A020710(n))+2)`
-/

namespace A258737.P3304055989212473379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A167499 (A020710 n).toNat + 2).toNat

end

end A258737.P3304055989212473379

/-! ## A258737.P17099857513510420387

`A258730(A016789(n+7)+A000096(n+2))`
-/

namespace A258737.P17099857513510420387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A016789 (n + 7) + A000096 (n + 2)).toNat

end

end A258737.P17099857513510420387

/-! ## A258737.P325127610147914394

`A258730(A000096(n+7)-A005408(n+3))`
-/

namespace A258737.P325127610147914394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A000096 (n + 7) - A005408 (n + 3)).toNat

end

end A258737.P325127610147914394

/-! ## A258737.P12538492625890061200

`A258730(A005408(n+9)+A000096(n+3))`
-/

namespace A258737.P12538492625890061200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258730 (A005408 (n + 9) + A000096 (n + 3)).toNat

end

end A258737.P12538492625890061200

/-!
# A258738: Numbers m such that the concatenation of k and the k-th divisor of m is equal to m for some k.

The programs for A258738, there is no canonical definition to state claims against.
-/

/-! ## A258738.P14272188196538531687

`A234314(A253317(n+2))`
-/

namespace A258738.P14272188196538531687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234314 (A253317 (n + 2)).toNat

end

end A258738.P14272188196538531687

/-!
# A258740: Lucas numbers whose sum of decimal digits is greater than its index.

The programs for A258740, there is no canonical definition to state claims against.
-/

/-! ## A258740.P4882787304995191340

`A000032(A258938(n+1))`
-/

namespace A258740.P4882787304995191340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A258938 (n + 1)).toNat

end

end A258740.P4882787304995191340

/-! ## A258740.P2177300639755256307

`A000204(A258938(n+1)%xor(n, 2^(n+2)))`
-/

namespace A258740.P2177300639755256307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (Int.tmod (A258938 (n + 1)) (Nat.xor n (2 ^ (n + 2)) : ℤ)).toNat

end

end A258740.P2177300639755256307

/-! ## A258740.P1442726754920028977

`A000204(A258938(n+1)%A017509(n))`
-/

namespace A258740.P1442726754920028977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (Int.tmod (A258938 (n + 1)) (A017509 n)).toNat

end

end A258740.P1442726754920028977

/-! ## A258740.P16284475602770932985

`A000204(A258938(n+1))%A258951(n+1)`
-/

namespace A258740.P16284475602770932985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000204 (A258938 (n + 1)).toNat) (A258951 (n + 1))

end

end A258740.P16284475602770932985

/-! ## A258740.P164628784339234499

`A000204(A258938(n+1))*A329379(A176983(n+5))`
-/

namespace A258740.P164628784339234499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (A258938 (n + 1)).toNat * A329379 (A176983 (n + 5)).toNat

end

end A258740.P164628784339234499

/-!
# A258741: Expansion of f(x^3, x^5) / f(x, x^3) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A258741, there is no canonical definition to state claims against.
-/

/-! ## A258741.P1001111312466806213

`(-1)^n*A036016(n)`
-/

namespace A258741.P1001111312466806213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A036016 n

end

end A258741.P1001111312466806213

/-! ## A258741.P9905091965486805980

`A029838(2*n)`
-/

namespace A258741.P9905091965486805980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029838 (2 * n)

end

end A258741.P9905091965486805980

/-! ## A258741.P1096042825655977120

`A082303(2*n)`
-/

namespace A258741.P1096042825655977120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082303 (2 * n)

end

end A258741.P1096042825655977120

/-! ## A258741.P14996628755255410694

`A057077(2*n)*A316384(2*n)`
-/

namespace A258741.P14996628755255410694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A316384 (2 * n)

end

end A258741.P14996628755255410694

/-! ## A258741.P4904141449280744100

`A087960(2*n)*A316384(2*n)`
-/

namespace A258741.P4904141449280744100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A316384 (2 * n)

end

end A258741.P4904141449280744100

/-! ## A258741.P3368655940349578837

`A283000(4*n)`
-/

namespace A258741.P3368655940349578837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283000 (4 * n)

end

end A258741.P3368655940349578837

/-! ## A258741.P3039528297305477415

`A093085(8*n)`
-/

namespace A258741.P3039528297305477415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093085 (8 * n)

end

end A258741.P3039528297305477415

/-! ## A258741.P2517475472003781953

`A112171(8*n)`
-/

namespace A258741.P2517475472003781953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112171 (8 * n)

end

end A258741.P2517475472003781953

/-! ## A258741.P6994439637802425418

`A112172(8*n)`
-/

namespace A258741.P6994439637802425418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112172 (8 * n)

end

end A258741.P6994439637802425418

/-! ## A258741.P18432374033436144853

`A208589(8*n)`
-/

namespace A258741.P18432374033436144853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208589 (8 * n)

end

end A258741.P18432374033436144853

/-! ## A258741.P4635392811386482588

`A134178(A017077(n))`
-/

namespace A258741.P4635392811386482588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134178 (A017077 n).toNat

end

end A258741.P4635392811386482588

/-! ## A258741.P13427641979005049160

`A134178(A016813(2*n))`
-/

namespace A258741.P13427641979005049160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134178 (A016813 (2 * n)).toNat

end

end A258741.P13427641979005049160

/-! ## A258741.P2910181829637938840

`A279255(eq[2, A007814(n+1)]-2)`
-/

namespace A258741.P2910181829637938840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2)

end

end A258741.P2910181829637938840

/-! ## A258741.P5281871567385771077

`A283023(12*n)`
-/

namespace A258741.P5281871567385771077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283023 (12 * n)

end

end A258741.P5281871567385771077

/-! ## A258741.P4772504652462503772

`A134178(A008606(n))`
-/

namespace A258741.P4772504652462503772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134178 (A008606 n).toNat

end

end A258741.P4772504652462503772

/-!
# A258743: Fixed points in A055266.

The programs for A258743, there is no canonical definition to state claims against.
-/

/-! ## A258743.P902291593026177874

`eq[n, A249920(abs(1-n)+1)]`
-/

namespace A258743.P902291593026177874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249920 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258743.P902291593026177874

/-! ## A258743.P7165398671524149057

`record[gcd(n+1, A055266(n+1))]`
-/

namespace A258743.P7165398671524149057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A055266 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258743.P7165398671524149057

/-! ## A258743.P3596927506459655944

`record[gcd(n+2, A249920(n+2))]`
-/

namespace A258743.P3596927506459655944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A249920 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258743.P3596927506459655944

/-! ## A258743.P607011571486165382

`eq[n, A055266(round(sqrt(n²+1)))]`
-/

namespace A258743.P607011571486165382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055266 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258743.P607011571486165382

/-! ## A258743.P4986340162446889673

`eq[n+1, A249920(n+1)]+1`
-/

namespace A258743.P4986340162446889673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249920 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258743.P4986340162446889673

/-! ## A258743.P18031118197755389234

`eq[abs(1-n)+1, A253074(n+1)]`
-/

namespace A258743.P18031118197755389234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258743.P18031118197755389234

/-! ## A258743.P8346966583122057221

`eq[n, A028310(A253074(n+1))]`
-/

namespace A258743.P8346966583122057221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A253074 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258743.P8346966583122057221

/-!
# A258744: Fixed points in A258742.

The programs for A258744, there is no canonical definition to state claims against.
-/

/-! ## A258744.P15438956372805725659

`eq[n, A258742(abs(1-n)+1)]`
-/

namespace A258744.P15438956372805725659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258742 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258744.P15438956372805725659

/-! ## A258744.P1687828715634816323

`eq[n+1, A258742(n+1)]+1`
-/

namespace A258744.P1687828715634816323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258744.P1687828715634816323

/-! ## A258744.P3213750776110683514

`eq[n², A258742(A028310(n))²]`
-/

namespace A258744.P3213750776110683514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258742 (A028310 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258744.P3213750776110683514

/-!
# A258745: Order of general affine group AGL(n,2) (=A028365(n)) divided by (n+1).

The programs for A258745, the canonical program `A258745.P174900374007038232` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258745 has offset 0).

The definition of A258745 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258745.P174900374007038232

`A028365(n)/(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A258745

/-- `A028365(n)/(n+1)` -/
def P174900374007038232.Spec : Prop :=
  ∀ n, P174900374007038232.a n = (A258745 n : ℚ)

end A258745

/-! ## A258745.P2623124499951554264

`2^n*A002884(n)/(n+1)`
-/

namespace A258745.P2623124499951554264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) * A002884 n : ℚ) / (n + 1 : ℚ)

end

end A258745.P2623124499951554264

namespace A258745

/-- `2^n*A002884(n)/(n+1)` -/
def P2623124499951554264.Spec : Prop :=
  ∀ n, P2623124499951554264.a n = (A258745 n : ℚ)

end A258745

/-! ## A258745.P17254056722239816066

`2^n*n!*A053601(n)/(n+1)`
-/

namespace A258745.P17254056722239816066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n * Nat.factorial n : ℤ) * A053601 n : ℚ) / (n + 1 : ℚ)

end

end A258745.P17254056722239816066

namespace A258745

/-- `2^n*n!*A053601(n)/(n+1)` -/
def P17254056722239816066.Spec : Prop :=
  ∀ n, P17254056722239816066.a n = (A258745 n : ℚ)

end A258745

/-! ## A258745.P2129583064789755143

`∏[(2^n+4^n)/2-and(-2, 2^n)]*A000079(n)/(n+1)`
-/

namespace A258745.P2129583064789755143
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 4 ^ n : ℚ) / 2 - (Int.land (-2) (2 ^ n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ) / (n + 1 : ℚ)

end

end A258745.P2129583064789755143

namespace A258745

/-- `∏[(2^n+4^n)/2-and(-2, 2^n)]*A000079(n)/(n+1)` -/
def P2129583064789755143.Spec : Prop :=
  ∀ n, P2129583064789755143.a n = (A258745 n : ℚ)

end A258745

/-! ## A258745.P17775707443761179

`ceil(A028365(n)/A031285(n))`
-/

namespace A258745.P17775707443761179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028365 n : ℚ) / (A031285 n : ℚ)⌉

end

end A258745.P17775707443761179

namespace A258745

/-- `ceil(A028365(n)/A031285(n))` -/
def P17775707443761179.Spec : Prop :=
  ∀ n, P17775707443761179.a n = A258745 n

end A258745

/-!
# A258746: Permutation of the positive integers: this permutation transforms the enumeration system of positive irreducible fractions A007305/A047679 (Stern-Brocot) into the enumeration system A162909/A162910 (Bird), and vice versa.

The programs for A258746, the canonical program `A258746.P7650068295521346496` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258746 has offset 1).

The definition of A258746 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258746.P7650068295521346496

`A054429(A165199(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A258746

/-- `A054429(A165199(n+1))` -/
def P7650068295521346496.Spec : Prop :=
  ∀ n, P7650068295521346496.a n = A258746 (n + 1)

theorem P7650068295521346496.correct : P7650068295521346496.Spec := by
  intro n
  simp only [A258746, Nat.add_sub_cancel]

end A258746

/-! ## A258746.P13221710868639041525

`A284120(A117120(n+1))`
-/

namespace A258746.P13221710868639041525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284120 (A117120 (n + 1)).toNat

end

end A258746.P13221710868639041525

namespace A258746

/-- `A284120(A117120(n+1))` -/
def P13221710868639041525.Spec : Prop :=
  ∀ n, P13221710868639041525.a n = A258746 (n + 1)

end A258746

/-! ## A258746.P2299638018967577583

`xor(n+1, A292600(A092323(n+1)))`
-/

namespace A258746.P2299638018967577583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A292600 (A092323 (n + 1)).toNat)

end

end A258746.P2299638018967577583

namespace A258746

/-- `xor(n+1, A292600(A092323(n+1)))` -/
def P2299638018967577583.Spec : Prop :=
  ∀ n, P2299638018967577583.a n = A258746 (n + 1)

end A258746

/-! ## A258746.P7539263778902189934

`A064707(A063946(A003188(A063946(A003188(n+1)))))`
-/

namespace A258746.P7539263778902189934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064707 (A063946 (A003188 (A063946 (A003188 (n + 1)).toNat).toNat).toNat).toNat

end

end A258746.P7539263778902189934

namespace A258746

/-- `A064707(A063946(A003188(A063946(A003188(n+1)))))` -/
def P7539263778902189934.Spec : Prop :=
  ∀ n, P7539263778902189934.a n = A258746 (n + 1)

end A258746

/-! ## A258746.P3452138278444376802

`A180200(A233280(n+1))`
-/

namespace A258746.P3452138278444376802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A233280 (n + 1)).toNat

end

end A258746.P3452138278444376802

namespace A258746

/-- `A180200(A233280(n+1))` -/
def P3452138278444376802.Spec : Prop :=
  ∀ n, P3452138278444376802.a n = A258746 (n + 1)

end A258746

/-! ## A258746.P9515737806032585366

`A180200(A063946(A003188(n+1)))`
-/

namespace A258746.P9515737806032585366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A063946 (A003188 (n + 1)).toNat).toNat

end

end A258746.P9515737806032585366

namespace A258746

/-- `A180200(A063946(A003188(n+1)))` -/
def P9515737806032585366.Spec : Prop :=
  ∀ n, P9515737806032585366.a n = A258746 (n + 1)

end A258746

/-! ## A258746.P16429603415185026920

`A233279(A180201(n+1))`
-/

namespace A258746.P16429603415185026920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A180201 (n + 1)).toNat

end

end A258746.P16429603415185026920

namespace A258746

/-- `A233279(A180201(n+1))` -/
def P16429603415185026920.Spec : Prop :=
  ∀ n, P16429603415185026920.a n = A258746 (n + 1)

end A258746

/-! ## A258746.P2202617489145559932

`A059893(A258996(A059893(n+1)))`
-/

namespace A258746.P2202617489145559932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A258996 (A059893 (n + 1)).toNat).toNat

end

end A258746.P2202617489145559932

namespace A258746

/-- `A059893(A258996(A059893(n+1)))` -/
def P2202617489145559932.Spec : Prop :=
  ∀ n, P2202617489145559932.a n = A258746 (n + 1)

end A258746

/-! ## A258746.P16744431510789086016

`A180200(A064706(A180200(n+1)))`
-/

namespace A258746.P16744431510789086016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A064706 (A180200 (n + 1)).toNat).toNat

end

end A258746.P16744431510789086016

namespace A258746

/-- `A180200(A064706(A180200(n+1)))` -/
def P16744431510789086016.Spec : Prop :=
  ∀ n, P16744431510789086016.a n = A258746 (n + 1)

end A258746

/-! ## A258746.P6786692750043317110

`A233279(A233279(A064706(n+1)))`
-/

namespace A258746.P6786692750043317110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A233279 (A064706 (n + 1)).toNat).toNat

end

end A258746.P6786692750043317110

namespace A258746

/-- `A233279(A233279(A064706(n+1)))` -/
def P6786692750043317110.Spec : Prop :=
  ∀ n, P6786692750043317110.a n = A258746 (n + 1)

end A258746

/-! ## A258746.P10393544936953933670

`A054429(A375184(A375183(n+1)))`
-/

namespace A258746.P10393544936953933670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A375184 (A375183 (n + 1)).toNat).toNat

end

end A258746.P10393544936953933670

namespace A258746

/-- `A054429(A375184(A375183(n+1)))` -/
def P10393544936953933670.Spec : Prop :=
  ∀ n, P10393544936953933670.a n = A258746 (n + 1)

end A258746

/-! ## A258746.P905786605777855816

`A375184(A117120(A375184(n+1)))`
-/

namespace A258746.P905786605777855816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375184 (A117120 (A375184 (n + 1)).toNat).toNat

end

end A258746.P905786605777855816

namespace A258746

/-- `A375184(A117120(A375184(n+1)))` -/
def P905786605777855816.Spec : Prop :=
  ∀ n, P905786605777855816.a n = A258746 (n + 1)

end A258746

/-! ## A258746.P8598162250551650586

`A006068(A092569(A003188(A092569(n+1))))`
-/

namespace A258746.P8598162250551650586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A092569 (A003188 (A092569 (n + 1)).toNat).toNat).toNat

end

end A258746.P8598162250551650586

namespace A258746

/-- `A006068(A092569(A003188(A092569(n+1))))` -/
def P8598162250551650586.Spec : Prop :=
  ∀ n, P8598162250551650586.a n = A258746 (n + 1)

end A258746

/-! ## A258746.P4739963332184325587

`A233279(A054429(A302846(A302843(n+1))))`
-/

namespace A258746.P4739963332184325587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A054429 (A302846 (A302843 (n + 1)).toNat).toNat).toNat

end

end A258746.P4739963332184325587

namespace A258746

/-- `A233279(A054429(A302846(A302843(n+1))))` -/
def P4739963332184325587.Spec : Prop :=
  ∀ n, P4739963332184325587.a n = A258746 (n + 1)

end A258746

/-! ## A258746.P3774201321912232566

`A234613(A234026(A234612(A234026(n+1))))`
-/

namespace A258746.P3774201321912232566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A234026 (A234612 (A234026 (n + 1)).toNat).toNat).toNat

end

end A258746.P3774201321912232566

namespace A258746

/-- `A234613(A234026(A234612(A234026(n+1))))` -/
def P3774201321912232566.Spec : Prop :=
  ∀ n, P3774201321912232566.a n = A258746 (n + 1)

end A258746

/-! ## A258746.P13465002271458797684

`A234025(A234612(A234025(A234613(n+1))))`
-/

namespace A258746.P13465002271458797684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234025 (A234612 (A234025 (A234613 (n + 1)).toNat).toNat).toNat

end

end A258746.P13465002271458797684

namespace A258746

/-- `A234025(A234612(A234025(A234613(n+1))))` -/
def P13465002271458797684.Spec : Prop :=
  ∀ n, P13465002271458797684.a n = A258746 (n + 1)

end A258746

/-! ## A258746.P363757387265418148

`A332769(A284120(A258996(A063946(n+1))))`
-/

namespace A258746.P363757387265418148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (A284120 (A258996 (A063946 (n + 1)).toNat).toNat).toNat

end

end A258746.P363757387265418148

namespace A258746

/-- `A332769(A284120(A258996(A063946(n+1))))` -/
def P363757387265418148.Spec : Prop :=
  ∀ n, P363757387265418148.a n = A258746 (n + 1)

end A258746

/-! ## A258746.P2420272272615811114

`A054429(A006068(A054429(A234612(A193231(n+1)))))`
-/

namespace A258746.P2420272272615811114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A006068 (A054429 (A234612 (A193231 (n + 1)).toNat).toNat).toNat).toNat

end

end A258746.P2420272272615811114

namespace A258746

/-- `A054429(A006068(A054429(A234612(A193231(n+1)))))` -/
def P2420272272615811114.Spec : Prop :=
  ∀ n, P2420272272615811114.a n = A258746 (n + 1)

end A258746

/-! ## A258746.P5965621169901922671

`A006068(A054429(A234612(A054429(A234027(n+1)))))`
-/

namespace A258746.P5965621169901922671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A054429 (A234612 (A054429 (A234027 (n + 1)).toNat).toNat).toNat).toNat

end

end A258746.P5965621169901922671

namespace A258746

/-- `A006068(A054429(A234612(A054429(A234027(n+1)))))` -/
def P5965621169901922671.Spec : Prop :=
  ∀ n, P5965621169901922671.a n = A258746 (n + 1)

end A258746

/-! ## A258746.P2159669198392990011

`A056539(A335858(A064706(A056539(A335858(n+1)))))`
-/

namespace A258746.P2159669198392990011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A335858 (A064706 (A056539 (A335858 (n + 1)).toNat).toNat).toNat).toNat

end

end A258746.P2159669198392990011

namespace A258746

/-- `A056539(A335858(A064706(A056539(A335858(n+1)))))` -/
def P2159669198392990011.Spec : Prop :=
  ∀ n, P2159669198392990011.a n = A258746 (n + 1)

end A258746

/-!
# A258747: Expansion of chi(-x) * f(x^3) * f(-x^6) in powers of x where chi(), f() are Ramanujan theta functions.

The programs for A258747, the canonical program `A258747.P12775887819017485008` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258747 has offset 0).

The definition of A258747 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129134, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258747.P12775887819017485008

`A129134(3*n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A258747

/-- `A129134(3*n+1)` -/
def P12775887819017485008.Spec : Prop :=
  ∀ n, P12775887819017485008.a n = A258747 n

theorem P12775887819017485008.correct : P12775887819017485008.Spec := by
  intro n
  simp only [A258747]

end A258747

/-! ## A258747.P13276224570344461168

`A057077(n)*A258764(2*n)`
-/

namespace A258747.P13276224570344461168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A258764 (2 * n)

end

end A258747.P13276224570344461168

namespace A258747

/-- `A057077(n)*A258764(2*n)` -/
def P13276224570344461168.Spec : Prop :=
  ∀ n, P13276224570344461168.a n = A258747 n

end A258747

/-! ## A258747.P5191603880881974667

`A002325(A016789(n)-1)*A057077(n+1)`
-/

namespace A258747.P5191603880881974667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (A016789 n - 1).toNat * A057077 (n + 1)

end

end A258747.P5191603880881974667

namespace A258747

/-- `A002325(A016789(n)-1)*A057077(n+1)` -/
def P5191603880881974667.Spec : Prop :=
  ∀ n, P5191603880881974667.a n = A258747 n

end A258747

/-! ## A258747.P16091450933251728130

`A133693(A062828(3*n+1))`
-/

namespace A258747.P16091450933251728130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133693 (A062828 (3 * n + 1)).toNat

end

end A258747.P16091450933251728130

namespace A258747

/-- `A133693(A062828(3*n+1))` -/
def P16091450933251728130.Spec : Prop :=
  ∀ n, P16091450933251728130.a n = A258747 n

end A258747

/-! ## A258747.P2808391090072340186

`or(A000007(n), A129134(A016777(n)))`
-/

namespace A258747.P2808391090072340186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A129134 (A016777 n).toNat)

end

end A258747.P2808391090072340186

namespace A258747

/-- `or(A000007(n), A129134(A016777(n)))` -/
def P2808391090072340186.Spec : Prop :=
  ∀ n, P2808391090072340186.a n = A258747 n

end A258747

/-! ## A258747.P11413939202652688986

`A129134(A016777(n))^A000038(n)!`
-/

namespace A258747.P11413939202652688986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129134 (A016777 n).toNat ^ Nat.factorial (A000038 n).toNat

end

end A258747.P11413939202652688986

namespace A258747

/-- `A129134(A016777(n))^A000038(n)!` -/
def P11413939202652688986.Spec : Prop :=
  ∀ n, P11413939202652688986.a n = A258747 n

end A258747

/-! ## A258747.P10920451903960391410

`A129134(A016777(n))+A000007(n+1)`
-/

namespace A258747.P10920451903960391410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129134 (A016777 n).toNat + A000007 (n + 1)

end

end A258747.P10920451903960391410

namespace A258747

/-- `A129134(A016777(n))+A000007(n+1)` -/
def P10920451903960391410.Spec : Prop :=
  ∀ n, P10920451903960391410.a n = A258747 n

end A258747

/-! ## A258747.P17987363186617073720

`A129134(A016777(n))+A000038(n+1)`
-/

namespace A258747.P17987363186617073720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129134 (A016777 n).toNat + A000038 (n + 1)

end

end A258747.P17987363186617073720

namespace A258747

/-- `A129134(A016777(n))+A000038(n+1)` -/
def P17987363186617073720.Spec : Prop :=
  ∀ n, P17987363186617073720.a n = A258747 n

end A258747

/-! ## A258747.P9584230743954705798

`A002325(A016789(2*n))*A057077(n+1)`
-/

namespace A258747.P9584230743954705798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (A016789 (2 * n)).toNat * A057077 (n + 1)

end

end A258747.P9584230743954705798

namespace A258747

/-- `A002325(A016789(2*n))*A057077(n+1)` -/
def P9584230743954705798.Spec : Prop :=
  ∀ n, P9584230743954705798.a n = A258747 n

end A258747

/-! ## A258747.P8526378190041215174

`A001222(A007918(n))*A129134(A016777(n))`
-/

namespace A258747.P8526378190041215174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat * A129134 (A016777 n).toNat

end

end A258747.P8526378190041215174

namespace A258747

/-- `A001222(A007918(n))*A129134(A016777(n))` -/
def P8526378190041215174.Spec : Prop :=
  ∀ n, P8526378190041215174.a n = A258747 n

end A258747

/-! ## A258747.P7897371729292461973

`A129134(A016777(n))+A034505(A059654(n+1))`
-/

namespace A258747.P7897371729292461973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129134 (A016777 n).toNat + A034505 (A059654 (n + 1)).toNat

end

end A258747.P7897371729292461973

namespace A258747

/-- `A129134(A016777(n))+A034505(A059654(n+1))` -/
def P7897371729292461973.Spec : Prop :=
  ∀ n, P7897371729292461973.a n = A258747 n

end A258747

/-! ## A258747.P7743935664839116092

`A129134(A016777(n))/A001222(A049481(n+2))`
-/

namespace A258747.P7743935664839116092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129134 (A016777 n).toNat : ℚ) / (A001222 (A049481 (n + 2)).toNat : ℚ)

end

end A258747.P7743935664839116092

namespace A258747

/-- `A129134(A016777(n))/A001222(A049481(n+2))` -/
def P7743935664839116092.Spec : Prop :=
  ∀ n, P7743935664839116092.a n = (A258747 n : ℚ)

end A258747

/-!
# A258748: Numbers k such that sigma(k) divides Fibonacci(k).

The programs for A258748, there is no canonical definition to state claims against.
-/

/-! ## A258748.P17784117278700365031

`A299297(A076161(n+1))-1`
-/

namespace A258748.P17784117278700365031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299297 (A076161 (n + 1)).toNat - 1

end

end A258748.P17784117278700365031

/-!
# A258757: For 1 < k <= n, let m be the largest number such that k^1, k^2, ... k^m are palindromes in base n. a(n) gives the smallest k which has the largest value of m.

The programs for A258757, there is no canonical definition to state claims against.
-/

/-! ## A258757.P3562792917748766303

`A261969(8*(n+3)²)`
-/

namespace A258757.P3562792917748766303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (8 * (n + 3) ^ 2)

end

end A258757.P3562792917748766303

/-! ## A258757.P7169359937741908126

`A356838(8*(n+3)²)`
-/

namespace A258757.P7169359937741908126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356838 (8 * (n + 3) ^ 2)

end

end A258757.P7169359937741908126

/-! ## A258757.P8967329379449322954

`A356840(2*(2*(n+3))²)`
-/

namespace A258757.P8967329379449322954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356840 (2 * (2 * (n + 3)) ^ 2)

end

end A258757.P8967329379449322954

/-! ## A258757.P6979936828479083218

`p?[and(A131067(n), A306542(n+1))]`
-/

namespace A258757.P6979936828479083218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131067 n) (A306542 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258757.P6979936828479083218

/-! ## A258757.P15268102105613500127

`A356838(2*(n+3))%A356857(n+4)`
-/

namespace A258757.P15268102105613500127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356838 (2 * (n + 3))) (A356857 (n + 4))

end

end A258757.P15268102105613500127

/-!
# A258758: Triangle T(n,k) = C(n+k-1,k)*C(2*n-1,n-k).

The programs for A258758, the canonical program `A258758.P2809109636177300966` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258758 has offset 0).

The definition of A258758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258758.P16934511971630352071

`A100100(n)*A381883(n)`
-/

namespace A258758.P16934511971630352071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 n * A381883 n

end

end A258758.P16934511971630352071

namespace A258758

/-- `A100100(n)*A381883(n)` -/
def P16934511971630352071.Spec : Prop :=
  ∀ n, P16934511971630352071.a n = A258758 n

end A258758

/-! ## A258758.P10068145064615488434

`A007318(n)*A088218(A003056(n))`
-/

namespace A258758.P10068145064615488434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A088218 (A003056 n).toNat

end

end A258758.P10068145064615488434

namespace A258758

/-- `A007318(n)*A088218(A003056(n))` -/
def P10068145064615488434.Spec : Prop :=
  ∀ n, P10068145064615488434.a n = A258758 n

end A258758

/-! ## A258758.P2809109636177300966

`A007318(n)*A100100(A057944(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A258758

/-- `A007318(n)*A100100(A057944(n))` -/
def P2809109636177300966.Spec : Prop :=
  ∀ n, P2809109636177300966.a n = A258758 n

theorem P2809109636177300966.correct : P2809109636177300966.Spec := by
  intro n
  simp only [A258758]

end A258758

/-! ## A258758.P5315381307101659811

`(A285118(n)+A285116(n))*A088218(A003056(n))`
-/

namespace A258758.P5315381307101659811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A088218 (A003056 n).toNat

end

end A258758.P5315381307101659811

namespace A258758

/-- `(A285118(n)+A285116(n))*A088218(A003056(n))` -/
def P5315381307101659811.Spec : Prop :=
  ∀ n, P5315381307101659811.a n = A258758 n

end A258758

/-! ## A258758.P4445605585951432331

`(A097805(n+1)+A097805(n))*A088218(A003056(n))`
-/

namespace A258758.P4445605585951432331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097805 (n + 1) + A097805 n) * A088218 (A003056 n).toNat

end

end A258758.P4445605585951432331

namespace A258758

/-- `(A097805(n+1)+A097805(n))*A088218(A003056(n))` -/
def P4445605585951432331.Spec : Prop :=
  ∀ n, P4445605585951432331.a n = A258758 n

end A258758

/-! ## A258758.P8973626013406010995

`A088218(A003056(n))/A176346(n)*A176348(n)`
-/

namespace A258758.P8973626013406010995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088218 (A003056 n).toNat : ℚ) / (A176346 n : ℚ) * (A176348 n : ℚ)

end

end A258758.P8973626013406010995

namespace A258758

/-- `A088218(A003056(n))/A176346(n)*A176348(n)` -/
def P8973626013406010995.Spec : Prop :=
  ∀ n, P8973626013406010995.a n = (A258758 n : ℚ)

end A258758

/-! ## A258758.P3305739082912778443

`A069466(n)/A134058(n)`
-/

namespace A258758.P3305739082912778443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 n : ℚ) / (A134058 n : ℚ)

end

end A258758.P3305739082912778443

namespace A258758

/-- `A069466(n)/A134058(n)` -/
def P3305739082912778443.Spec : Prop :=
  ∀ n, P3305739082912778443.a n = (A258758 n : ℚ)

end A258758

/-! ## A258758.P7362809851981832198

`ceil(A069466(n)/A028326(n))`
-/

namespace A258758.P7362809851981832198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A069466 n : ℚ) / (A028326 n : ℚ)⌉

end

end A258758.P7362809851981832198

namespace A258758

/-- `ceil(A069466(n)/A028326(n))` -/
def P7362809851981832198.Spec : Prop :=
  ∀ n, P7362809851981832198.a n = A258758 n

end A258758

/-! ## A258758.P12671124876936087222

`A069466(n)/gcd(A028326(n), A067804(n))`
-/

namespace A258758.P12671124876936087222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 n : ℚ) / (Int.gcd (A028326 n) (A067804 n) : ℚ)

end

end A258758.P12671124876936087222

namespace A258758

/-- `A069466(n)/gcd(A028326(n), A067804(n))` -/
def P12671124876936087222.Spec : Prop :=
  ∀ n, P12671124876936087222.a n = (A258758 n : ℚ)

end A258758

/-! ## A258758.P5716161838317384233

`A071919(A292564(n))*A100100(n)`
-/

namespace A258758.P5716161838317384233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A292564 n).toNat * A100100 n

end

end A258758.P5716161838317384233

namespace A258758

/-- `A071919(A292564(n))*A100100(n)` -/
def P5716161838317384233.Spec : Prop :=
  ∀ n, P5716161838317384233.a n = A258758 n

end A258758

/-!
# A258764: Expansion of chi(-x^2) * psi(-x^3)^2 in powers of x where psi(), chi() are Ramanujan theta functions.

The programs for A258764, the canonical program `A258764.P1236951229725799684` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258764 has offset 0).

The definition of A258764 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129134, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258764.P1236951229725799684

`A129134(3*n+2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A258764

/-- `A129134(3*n+2)` -/
def P1236951229725799684.Spec : Prop :=
  ∀ n, P1236951229725799684.a n = A258764 n

theorem P1236951229725799684.correct : P1236951229725799684.Spec := by
  intro n
  simp only [A258764]

end A258764

/-! ## A258764.P16258577066466713466

`A002325(A016789(n))*A057077(n)`
-/

namespace A258764.P16258577066466713466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (A016789 n).toNat * A057077 n

end

end A258764.P16258577066466713466

namespace A258764

/-- `A002325(A016789(n))*A057077(n)` -/
def P16258577066466713466.Spec : Prop :=
  ∀ n, P16258577066466713466.a n = A258764 n

end A258764

/-! ## A258764.P13537684033867646713

`A129134(Δ[A005449(n)])%A004771(n)`
-/

namespace A258764.P13537684033867646713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129134 (f1 (n + 1) - f1 n).toNat) (A004771 n)

end

end A258764.P13537684033867646713

namespace A258764

/-- `A129134(Δ[A005449(n)])%A004771(n)` -/
def P13537684033867646713.Spec : Prop :=
  ∀ n, P13537684033867646713.a n = A258764 n

end A258764

/-! ## A258764.P3856351678024187127

`A129134(Δ[A005449(n)])+A000038(n+1)`
-/

namespace A258764.P3856351678024187127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129134 (f1 (n + 1) - f1 n).toNat + A000038 (n + 1)

end

end A258764.P3856351678024187127

namespace A258764

/-- `A129134(Δ[A005449(n)])+A000038(n+1)` -/
def P3856351678024187127.Spec : Prop :=
  ∀ n, P3856351678024187127.a n = A258764 n

end A258764

/-! ## A258764.P5720769075372387324

`A000034(2*n)*A129134(Δ[A005449(n)])`
-/

namespace A258764.P5720769075372387324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A129134 (f1 (n + 1) - f1 n).toNat

end

end A258764.P5720769075372387324

namespace A258764

/-- `A000034(2*n)*A129134(Δ[A005449(n)])` -/
def P5720769075372387324.Spec : Prop :=
  ∀ n, P5720769075372387324.a n = A258764 n

end A258764

/-! ## A258764.P3287249498480438810

`A129134(Δ[A005449(n)])/A066787(n+1+n)`
-/

namespace A258764.P3287249498480438810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129134 (f1 (n + 1) - f1 n).toNat : ℚ) / (A066787 (n + 1 + n) : ℚ)

end

end A258764.P3287249498480438810

namespace A258764

/-- `A129134(Δ[A005449(n)])/A066787(n+1+n)` -/
def P3287249498480438810.Spec : Prop :=
  ∀ n, P3287249498480438810.a n = (A258764 n : ℚ)

end A258764

/-!
# A258766: Fixed points in A256271.

The programs for A258766, there is no canonical definition to state claims against.
-/

/-! ## A258766.P15264788601282351788

`record[gcd(n+1, A256271(n+1))]`
-/

namespace A258766.P15264788601282351788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A256271 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258766.P15264788601282351788

/-! ## A258766.P9617556588916881962

`eq[n, A256271(round(sqrt(n²+1)))]`
-/

namespace A258766.P9617556588916881962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256271 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258766.P9617556588916881962

/-! ## A258766.P15588778691883757366

`eq[n+1, A256271(C(n+1, n))]+1`
-/

namespace A258766.P15588778691883757366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256271 (Nat.choose (n + 1) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258766.P15588778691883757366

/-! ## A258766.P3057360286199519234

`eq[A000027(n+1), A256271(n+1)]+1`
-/

namespace A258766.P3057360286199519234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A258766.P3057360286199519234

/-! ## A258766.P6519291725004715060

`A256271(eq[n+1, A256271(n+1)]+1)`
-/

namespace A258766.P6519291725004715060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A258766.P6519291725004715060

/-!
# A258768: Fixed points in A258767.

The programs for A258768, there is no canonical definition to state claims against.
-/

/-! ## A258768.P7407503524471278598

`eq[n+1, A258767(n+1)]+1`
-/

namespace A258768.P7407503524471278598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258767 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258768.P7407503524471278598

/-! ## A258768.P846945061955694106

`eq[n+1, A258827(n+1)]+1`
-/

namespace A258768.P846945061955694106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258768.P846945061955694106

/-! ## A258768.P12643541597026222764

`eq[n, A258767(A028310(n))]`
-/

namespace A258768.P12643541597026222764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258767 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258768.P12643541597026222764

/-! ## A258768.P15252166471077654078

`eq[n, A258767(A000007(n)+n)]`
-/

namespace A258768.P15252166471077654078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258767 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258768.P15252166471077654078

/-! ## A258768.P13196760629149872463

`eq[n, A258767(A000038(n)+n)]`
-/

namespace A258768.P13196760629149872463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258767 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258768.P13196760629149872463

/-! ## A258768.P8488356101666393363

`eq[n, A258827(A000007(n)+n)]`
-/

namespace A258768.P8488356101666393363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258827 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258768.P8488356101666393363

/-! ## A258768.P9952919744484080710

`eq[n, A258767(xor(n, A000038(n)))]`
-/

namespace A258768.P9952919744484080710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258767 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258768.P9952919744484080710

/-! ## A258768.P15105444698438257197

`eq[n, A258827(A004273(n)+1-n)]`
-/

namespace A258768.P15105444698438257197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258827 (A004273 n + (1 - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258768.P15105444698438257197

/-!
# A258769: a(n) = Number of times the k-th term is equal to k in the modified Collatz trajectory of n, when counting the initial term n as the 1st term: n, A014682(n), A014682(A014682(n)), ...

The programs for A258769, there is no canonical definition to state claims against.
-/

/-! ## A258769.P3922472853197668975

`A258825(2*(n+1))`
-/

namespace A258769.P3922472853197668975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258825 (2 * (n + 1))

end

end A258769.P3922472853197668975

/-! ## A258769.P15741150208884582309

`A258825(n+2+n)%4`
-/

namespace A258769.P15741150208884582309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258825 (n + 2 + n)) 4

end

end A258769.P15741150208884582309

/-! ## A258769.P13636672377743531060

`dr(A258825(Δ[A002378(n)]))`
-/

namespace A258769.P13636672377743531060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A258825 (f1 (n + 1) - f1 n).toNat)

end

end A258769.P13636672377743531060

/-! ## A258769.P15951577200509550875

`dr(A258825(A005843(n+1)))`
-/

namespace A258769.P15951577200509550875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A258825 (A005843 (n + 1)).toNat)

end

end A258769.P15951577200509550875

/-! ## A258769.P11545422787394808475

`and(3, A258825(A316571(n+2)))`
-/

namespace A258769.P11545422787394808475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A258825 (A316571 (n + 2)).toNat)

end

end A258769.P11545422787394808475

/-! ## A258769.P10162536959515576171

`and(A004771(n), A258825(n+2+n))`
-/

namespace A258769.P10162536959515576171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004771 n) (A258825 (n + 2 + n))

end

end A258769.P10162536959515576171

/-! ## A258769.P16353863646315898437

`A258825(n+2+n)^A005408(n)`
-/

namespace A258769.P16353863646315898437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258825 (n + 2 + n) : ℚ) ^ (A005408 n : ℤ)

end

end A258769.P16353863646315898437

/-! ## A258769.P10473776203368270112

`A258825(n+2+n)^A008486(n)`
-/

namespace A258769.P10473776203368270112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258825 (n + 2 + n) : ℚ) ^ (A008486 n : ℤ)

end

end A258769.P10473776203368270112

/-! ## A258769.P1288941036483349981

`A258825(n+2+n)^A008592(n)`
-/

namespace A258769.P1288941036483349981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258825 (n + 2 + n) : ℚ) ^ (A008592 n : ℤ)

end

end A258769.P1288941036483349981

/-! ## A258769.P18405956129265818598

`A258825(n+2+n)^A008658(n)`
-/

namespace A258769.P18405956129265818598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258825 (n + 2 + n) : ℚ) ^ (A008658 n : ℤ)

end

end A258769.P18405956129265818598

/-! ## A258769.P15507689566129452591

`A258825(n+2+n)^A104326(n)`
-/

namespace A258769.P15507689566129452591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258825 (n + 2 + n) : ℚ) ^ (A104326 n : ℤ)

end

end A258769.P15507689566129452591

/-! ## A258769.P2786562786864131525

`A258825(n+2+n)^A215023(n)`
-/

namespace A258769.P2786562786864131525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258825 (n + 2 + n) : ℚ) ^ (A215023 n : ℤ)

end

end A258769.P2786562786864131525

/-! ## A258769.P1124495939102982512

`A258825(n+2+n)^A095096(n+1)`
-/

namespace A258769.P1124495939102982512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258825 (n + 2 + n) : ℚ) ^ (A095096 (n + 1) : ℤ)

end

end A258769.P1124495939102982512

/-! ## A258769.P1642705482402746908

`A258825(n+2+n)^A000124(n+3)`
-/

namespace A258769.P1642705482402746908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258825 (n + 2 + n) : ℚ) ^ (A000124 (n + 3) : ℤ)

end

end A258769.P1642705482402746908

/-!
# A258770: Expansion of f(-x^2)^4 * psi(-x^3) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A258770, there is no canonical definition to state claims against.
-/

/-! ## A258770.P13484252877754548383

`A258771(3*n+2)/16`
-/

namespace A258770.P13484252877754548383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258771 (3 * n + 2) : ℚ) / 16

end

end A258770.P13484252877754548383

/-!
# A258772: Number of fixed points in the Collatz (3x+1) trajectory of n.

The programs for A258772, there is no canonical definition to state claims against.
-/

/-! ## A258772.P9644269097557781518

`A258822(2*(n+1))`
-/

namespace A258772.P9644269097557781518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258822 (2 * (n + 1))

end

end A258772.P9644269097557781518

/-!
# A258774: a(n) = 1 + sigma(n) + sigma(n)^2.

The programs for A258774, the canonical program `A258774.P4371369452253390923` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258774 has offset 1).

The definition of A258774 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072861, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258774.P4371369452253390923

`1+A000203(n+1)+A072861(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A258774

/-- `1+A000203(n+1)+A072861(n+1)` -/
def P4371369452253390923.Spec : Prop :=
  ∀ n, P4371369452253390923.a n = A258774 (n + 1)

theorem P4371369452253390923.correct : P4371369452253390923.Spec := by
  intro n
  simp only [A258774, Nat.add_sub_cancel]

end A258774

/-! ## A258774.P15995738474938618110

`2*C(∑{d}[n+1, #]+1, 2)+1`
-/

namespace A258774.P15995738474938618110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (∑ d ∈ Nat.divisors (f1 n), d + 1) 2 + 1

end

end A258774.P15995738474938618110

namespace A258774

/-- `2*C(∑{d}[n+1, #]+1, 2)+1` -/
def P15995738474938618110.Spec : Prop :=
  ∀ n, (P15995738474938618110.a n : ℤ) = A258774 (n + 1)

end A258774

/-! ## A258774.P8945996611597405510

`ceil((2*∑{d}[n+1, #]+1)²/4)`
-/

namespace A258774.P8945996611597405510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((2 * (∑ d ∈ Nat.divisors (f1 n), d) + 1) ^ 2 : ℕ) : ℚ) / 4⌉

end

end A258774.P8945996611597405510

namespace A258774

/-- `ceil((2*∑{d}[n+1, #]+1)²/4)` -/
def P8945996611597405510.Spec : Prop :=
  ∀ n, P8945996611597405510.a n = A258774 (n + 1)

end A258774

/-! ## A258774.P3279902824146725691

`∑{d}[n+1, #]+∑{d}[n+1, #]²+1`
-/

namespace A258774.P3279902824146725691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d + ((∑ d ∈ Nat.divisors (f2 n), d) ^ 2 + 1)

end

end A258774.P3279902824146725691

namespace A258774

/-- `∑{d}[n+1, #]+∑{d}[n+1, #]²+1` -/
def P3279902824146725691.Spec : Prop :=
  ∀ n, (P3279902824146725691.a n : ℤ) = A258774 (n + 1)

end A258774

/-! ## A258774.P16975543998218636830

`2*A184387(n+1)+1`
-/

namespace A258774.P16975543998218636830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184387 (n + 1) + 1

end

end A258774.P16975543998218636830

namespace A258774

/-- `2*A184387(n+1)+1` -/
def P16975543998218636830.Spec : Prop :=
  ∀ n, P16975543998218636830.a n = A258774 (n + 1)

end A258774

/-! ## A258774.P8382532735867254473

`ceil((A000203(n+1)+1/2)²)`
-/

namespace A258774.P8382532735867254473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A000203 (n + 1) : ℚ) + (1 : ℚ) / 2) ^ 2⌉

end

end A258774.P8382532735867254473

namespace A258774

/-- `ceil((A000203(n+1)+1/2)²)` -/
def P8382532735867254473.Spec : Prop :=
  ∀ n, P8382532735867254473.a n = A258774 (n + 1)

end A258774

/-! ## A258774.P15265730270398897455

`A088580(n+1)+A072861(n+1)`
-/

namespace A258774.P15265730270398897455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + A072861 (n + 1)

end

end A258774.P15265730270398897455

namespace A258774

/-- `A088580(n+1)+A072861(n+1)` -/
def P15265730270398897455.Spec : Prop :=
  ∀ n, P15265730270398897455.a n = A258774 (n + 1)

end A258774

/-! ## A258774.P3774102597877849403

`A258974(n+1)+A000203(n+1)`
-/

namespace A258774.P3774102597877849403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258974 (n + 1) + A000203 (n + 1)

end

end A258774.P3774102597877849403

namespace A258774

/-- `A258974(n+1)+A000203(n+1)` -/
def P3774102597877849403.Spec : Prop :=
  ∀ n, P3774102597877849403.a n = A258774 (n + 1)

end A258774

/-! ## A258774.P3341170820140755684

`A259184(n+1)+A074400(n+1)`
-/

namespace A258774.P3341170820140755684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259184 (n + 1) + A074400 (n + 1)

end

end A258774.P3341170820140755684

namespace A258774

/-- `A259184(n+1)+A074400(n+1)` -/
def P3341170820140755684.Spec : Prop :=
  ∀ n, P3341170820140755684.a n = A258774 (n + 1)

end A258774

/-! ## A258774.P14606845465807703882

`A088580(n+1)+Δ[A330725(n)]²`
-/

namespace A258774.P14606845465807703882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + (f1 (n + 1) - f1 n) ^ 2

end

end A258774.P14606845465807703882

namespace A258774

/-- `A088580(n+1)+Δ[A330725(n)]²` -/
def P14606845465807703882.Spec : Prop :=
  ∀ n, P14606845465807703882.a n = A258774 (n + 1)

end A258774

/-! ## A258774.P16051198415215328094

`A088580(n+1)+A000203(n+1)²`
-/

namespace A258774.P16051198415215328094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + A000203 (n + 1) ^ 2

end

end A258774.P16051198415215328094

namespace A258774

/-- `A088580(n+1)+A000203(n+1)²` -/
def P16051198415215328094.Spec : Prop :=
  ∀ n, P16051198415215328094.a n = A258774 (n + 1)

end A258774

/-! ## A258774.P13548372802661573937

`A259184(n+1)+2*A000203(n+1)`
-/

namespace A258774.P13548372802661573937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259184 (n + 1) + 2 * A000203 (n + 1)

end

end A258774.P13548372802661573937

namespace A258774

/-- `A259184(n+1)+2*A000203(n+1)` -/
def P13548372802661573937.Spec : Prop :=
  ∀ n, P13548372802661573937.a n = A258774 (n + 1)

end A258774

/-! ## A258774.P16433841214955413210

`2*A258974(n+1)-A259184(n+1)`
-/

namespace A258774.P16433841214955413210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A258974 (n + 1) - A259184 (n + 1)

end

end A258774.P16433841214955413210

namespace A258774

/-- `2*A258974(n+1)-A259184(n+1)` -/
def P16433841214955413210.Spec : Prop :=
  ∀ n, P16433841214955413210.a n = A258774 (n + 1)

end A258774

/-! ## A258774.P14941249310351976415

`A072861(n+1)+A155085(n+1)-n`
-/

namespace A258774.P14941249310351976415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072861 (n + 1) + (A155085 (n + 1) - (n : ℤ))

end

end A258774.P14941249310351976415

namespace A258774

/-- `A072861(n+1)+A155085(n+1)-n` -/
def P14941249310351976415.Spec : Prop :=
  ∀ n, P14941249310351976415.a n = A258774 (n + 1)

end A258774

/-! ## A258774.P13372155529776777136

`A088580(n+1)+∑[A340793(n+1)]²`
-/

namespace A258774.P13372155529776777136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A258774.P13372155529776777136

namespace A258774

/-- `A088580(n+1)+∑[A340793(n+1)]²` -/
def P13372155529776777136.Spec : Prop :=
  ∀ n, P13372155529776777136.a n = A258774 (n + 1)

end A258774

/-! ## A258774.P6058901776996135326

`2*A000217(∑{d}[n+1, #])+1`
-/

namespace A258774.P6058901776996135326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (∑ d ∈ Nat.divisors (f1 n), d) + 1

end

end A258774.P6058901776996135326

namespace A258774

/-- `2*A000217(∑{d}[n+1, #])+1` -/
def P6058901776996135326.Spec : Prop :=
  ∀ n, P6058901776996135326.a n = A258774 (n + 1)

end A258774

/-! ## A258774.P6410893405547364186

`A002061(A088580(n+1))`
-/

namespace A258774.P6410893405547364186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A088580 (n + 1)).toNat

end

end A258774.P6410893405547364186

namespace A258774

/-- `A002061(A088580(n+1))` -/
def P6410893405547364186.Spec : Prop :=
  ∀ n, P6410893405547364186.a n = A258774 (n + 1)

end A258774

/-! ## A258774.P17337059839899221772

`A002061(A000203(n+1)+1)`
-/

namespace A258774.P17337059839899221772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A000203 (n + 1) + 1).toNat

end

end A258774.P17337059839899221772

namespace A258774

/-- `A002061(A000203(n+1)+1)` -/
def P17337059839899221772.Spec : Prop :=
  ∀ n, P17337059839899221772.a n = A258774 (n + 1)

end A258774

/-! ## A258774.P10379039514024959562

`A028387(A039653(n+1))+2`
-/

namespace A258774.P10379039514024959562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A039653 (n + 1)).toNat + 2

end

end A258774.P10379039514024959562

namespace A258774

/-- `A028387(A039653(n+1))+2` -/
def P10379039514024959562.Spec : Prop :=
  ∀ n, P10379039514024959562.a n = A258774 (n + 1)

end A258774

/-! ## A258774.P13136380293128719289

`A103505(A000203(n+1)+1)+1`
-/

namespace A258774.P13136380293128719289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 (A000203 (n + 1) + 1).toNat + 1

end

end A258774.P13136380293128719289

namespace A258774

/-- `A103505(A000203(n+1)+1)+1` -/
def P13136380293128719289.Spec : Prop :=
  ∀ n, P13136380293128719289.a n = A258774 (n + 1)

end A258774

/-!
# A258775: Numbers n such that 1 + sigma(n)+ sigma(n)^2 is prime.

The programs for A258775, the canonical program `A258775.P1042665196751657827` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258775 has offset 1).

The definition of A258775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 712 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258775.P1042665196751657827

`eq[1, A289356(A000203(n+1))]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A258775

/-- `eq[1, A289356(A000203(n+1))]+1` -/
def P1042665196751657827.Spec : Prop :=
  ∀ n, (P1042665196751657827.a n : ℤ) = A258775 (n + 1)

theorem P1042665196751657827.correct : P1042665196751657827.Spec := by
  intro n
  simp only [A258775, Nat.add_sub_cancel]

end A258775

/-! ## A258775.P13698183750832789425

`lt[1, A108154(A088580(n+1))]+1`
-/

namespace A258775.P13698183750832789425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (A088580 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A258775.P13698183750832789425

namespace A258775

/-- `lt[1, A108154(A088580(n+1))]+1` -/
def P13698183750832789425.Spec : Prop :=
  ∀ n, (P13698183750832789425.a n : ℤ) = A258775 (n + 1)

end A258775

/-! ## A258775.P13490323361382041093

`record[A000027(n+1)/A289356(A000203(n+1))]`
-/

namespace A258775.P13490323361382041093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A289356 (A000203 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258775.P13490323361382041093

namespace A258775

/-- `record[A000027(n+1)/A289356(A000203(n+1))]` -/
def P13490323361382041093.Spec : Prop :=
  ∀ n, P13490323361382041093.a n = (A258775 (n + 1) : ℚ)

end A258775

/-! ## A258775.P12652644114960585803

`lt[n+1, A016789(n)/A289356(A000203(n+1))]+1`
-/

namespace A258775.P12652644114960585803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016789 n : ℚ) / (A289356 (A000203 (n + 1)).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A258775.P12652644114960585803

namespace A258775

/-- `lt[n+1, A016789(n)/A289356(A000203(n+1))]+1` -/
def P12652644114960585803.Spec : Prop :=
  ∀ n, (P12652644114960585803.a n : ℤ) = A258775 (n + 1)

end A258775

/-! ## A258775.P6875736138568649457

`lt[n, (A285207(n+1)-1)/A289356(A000203(n+1))]+1`
-/

namespace A258775.P6875736138568649457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285207 (n + 1) - 1 : ℚ) / (A289356 (A000203 (n + 1)).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A258775.P6875736138568649457

namespace A258775

/-- `lt[n, (A285207(n+1)-1)/A289356(A000203(n+1))]+1` -/
def P6875736138568649457.Spec : Prop :=
  ∀ n, (P6875736138568649457.a n : ℤ) = A258775 (n + 1)

end A258775

/-! ## A258775.P12582405505127729523

`record[A008621(4*n)/A289356(A000203(n+1))]`
-/

namespace A258775.P12582405505127729523
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008621 (4 * n) : ℚ) / (A289356 (A000203 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258775.P12582405505127729523

namespace A258775

/-- `record[A008621(4*n)/A289356(A000203(n+1))]` -/
def P12582405505127729523.Spec : Prop :=
  ∀ n, P12582405505127729523.a n = (A258775 (n + 1) : ℚ)

end A258775

/-!
# A258776: Primes in A258774.

The programs for A258776, the canonical program `A258776.P5594703475324302981` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258776 has offset 1).

The definition of A258776 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258774, A258775, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258776.P5594703475324302981

`A258774(A258775(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A258776

/-- `A258774(A258775(n+1))` -/
def P5594703475324302981.Spec : Prop :=
  ∀ n, P5594703475324302981.a n = A258776 (n + 1)

theorem P5594703475324302981.correct : P5594703475324302981.Spec := by
  intro n
  simp only [A258776, Nat.add_sub_cancel]

end A258776

/-! ## A258776.P16944511975731054244

`A182047(∑{d}[A258775(n+1), #])`
-/

namespace A258776.P16944511975731054244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A258776.P16944511975731054244

namespace A258776

/-- `A182047(∑{d}[A258775(n+1), #])` -/
def P16944511975731054244.Spec : Prop :=
  ∀ n, P16944511975731054244.a n = A258776 (n + 1)

end A258776

/-! ## A258776.P2847843358908471468

`p?[A108154(A088580(n+1))]`
-/

namespace A258776.P2847843358908471468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (A088580 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258776.P2847843358908471468

namespace A258776

/-- `p?[A108154(A088580(n+1))]` -/
def P2847843358908471468.Spec : Prop :=
  ∀ n, P2847843358908471468.a n = A258776 (n + 1)

end A258776

/-! ## A258776.P17960423198954660728

`p?[A108154(A000203(n+1)+1)]`
-/

namespace A258776.P17960423198954660728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (A000203 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258776.P17960423198954660728

namespace A258776

/-- `p?[A108154(A000203(n+1)+1)]` -/
def P17960423198954660728.Spec : Prop :=
  ∀ n, P17960423198954660728.a n = A258776 (n + 1)

end A258776

/-! ## A258776.P15097109001676629259

`p?[A108154(sqrt(A072861(n+1))+1)]`
-/

namespace A258776.P15097109001676629259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258776.P15097109001676629259

namespace A258776

/-- `p?[A108154(sqrt(A072861(n+1))+1)]` -/
def P15097109001676629259.Spec : Prop :=
  ∀ n, P15097109001676629259.a n = A258776 (n + 1)

end A258776

/-! ## A258776.P7907334398946269845

`p?[A258774(n+1)]`
-/

namespace A258776.P7907334398946269845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258776.P7907334398946269845

namespace A258776

/-- `p?[A258774(n+1)]` -/
def P7907334398946269845.Spec : Prop :=
  ∀ n, P7907334398946269845.a n = A258776 (n + 1)

end A258776

/-!
# A258777: Number of points of projective spaces on finite fields.

The programs for A258777, there is no canonical definition to state claims against.
-/

/-! ## A258777.P15991125943910746744

`A211347(lt[A096441(n+1), 10*n])`
-/

namespace A258777.P15991125943910746744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096441 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211347 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A258777.P15991125943910746744

/-! ## A258777.P2353719087907096681

`A211347(n+1)+A025469(A256068(n+1))`
-/

namespace A258777.P2353719087907096681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211347 (n + 1) + A025469 (A256068 (n + 1)).toNat

end

end A258777.P2353719087907096681

/-!
# A258779: Expansion of (f(-x) * phi(x))^2 in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A258779, there is no canonical definition to state claims against.
-/

/-! ## A258779.P10379554229108433425

`A000727(2*n)`
-/

namespace A258779.P10379554229108433425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000727 (2 * n)

end

end A258779.P10379554229108433425

/-! ## A258779.P16998938342998748220

`A187076(2*n)`
-/

namespace A258779.P16998938342998748220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187076 (2 * n)

end

end A258779.P16998938342998748220

/-! ## A258779.P3897425565004596821

`A187149(4*n)`
-/

namespace A258779.P3897425565004596821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187149 (4 * n)

end

end A258779.P3897425565004596821

/-! ## A258779.P5274107117367825067

`A106508(4*n)`
-/

namespace A258779.P5274107117367825067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106508 (4 * n)

end

end A258779.P5274107117367825067

/-! ## A258779.P11729811769930820620

`A000727(n+n)%(n+52)`
-/

namespace A258779.P11729811769930820620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000727 (n + n)) (n + 52 : ℤ)

end

end A258779.P11729811769930820620

/-! ## A258779.P10615683710368694324

`A286354(A167614(2*n+1)+6*n+4)`
-/

namespace A258779.P10615683710368694324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A167614 (2 * n + 1) + (6 * n + 4 : ℤ)).toNat

end

end A258779.P10615683710368694324

/-! ## A258779.P8299843772452940916

`A286354(A004768(n)+A000217(2*n+1))`
-/

namespace A258779.P8299843772452940916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A004768 n + A000217 (2 * n + 1)).toNat

end

end A258779.P8299843772452940916

/-!
# A258781: a(n) is the greatest positive integer k such that lambda(k) <= n where lambda is the Carmichael lambda function (A002322).

The programs for A258781, there is no canonical definition to state claims against.
-/

/-! ## A258781.P12490827906215082585

`A304480(n+2)-1`
-/

namespace A258781.P12490827906215082585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304480 (n + 2) - 1

end

end A258781.P12490827906215082585

/-! ## A258781.P11295941324196089453

`∑[abs(Δ[A304480(n+1)])]`
-/

namespace A258781.P11295941324196089453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304480 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258781.P11295941324196089453

/-! ## A258781.P8783834011863073644

`xor(1, A304480(A000027(n+2)))`
-/

namespace A258781.P8783834011863073644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A304480 (A000027 (n + 2)).toNat)

end

end A258781.P8783834011863073644

/-! ## A258781.P16141707786150004386

`xor(1, A304480(A028310(n+2)))`
-/

namespace A258781.P16141707786150004386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A304480 (A028310 (n + 2)).toNat)

end

end A258781.P16141707786150004386

/-! ## A258781.P15101351786193959494

`xor(1, A304480(A004526(2*(n+2))))`
-/

namespace A258781.P15101351786193959494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A304480 (A004526 (2 * (n + 2))).toNat)

end

end A258781.P15101351786193959494

/-!
# A258782: Nearest integer to log_2(n!).

The programs for A258782, the canonical program `A258782.P6285775056582693187` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258782 has offset 0).

The definition of A258782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258782.P6285775056582693187

`round(log2(n!))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A258782

/-- `round(log2(n!))` -/
def P6285775056582693187.Spec : Prop :=
  ∀ n, P6285775056582693187.a n = A258782 n

theorem P6285775056582693187.correct : P6285775056582693187.Spec := by
  intro n
  simp only [A258782]

end A258782

/-! ## A258782.P9270624976504528346

`round(log(n!)/log(2))`
-/

namespace A258782.P9270624976504528346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Nat.factorial n : ℝ) / Real.log (2 : ℝ))

end

end A258782.P9270624976504528346

namespace A258782

/-- `round(log(n!)/log(2))` -/
def P9270624976504528346.Spec : Prop :=
  ∀ n, P9270624976504528346.a n = A258782 n

end A258782

/-! ## A258782.P1866112391113978655

`round(∑[log2(floor(acot(n)+n))])`
-/

namespace A258782.P1866112391113978655
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258782.P1866112391113978655

namespace A258782

/-- `round(∑[log2(floor(acot(n)+n))])` -/
def P1866112391113978655.Spec : Prop :=
  ∀ n, P1866112391113978655.a n = A258782 n

end A258782

/-! ## A258782.P3263594378384230025

`round(∑[log2(n^floor(atan(n)))])`
-/

namespace A258782.P3263594378384230025
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258782.P3263594378384230025

namespace A258782

/-- `round(∑[log2(n^floor(atan(n)))])` -/
def P3263594378384230025.Spec : Prop :=
  ∀ n, P3263594378384230025.a n = A258782 n

end A258782

/-! ## A258782.P8476261042141613039

`round(∑[log2(n+1)]-log2(n+1))`
-/

namespace A258782.P8476261042141613039
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j - Real.logb 2 (n + 1 : ℝ))

end

end A258782.P8476261042141613039

namespace A258782

/-- `round(∑[log2(n+1)]-log2(n+1))` -/
def P8476261042141613039.Spec : Prop :=
  ∀ n, P8476261042141613039.a n = A258782 n

end A258782

/-! ## A258782.P11467491768732933391

`round(∑[log2(A000038(n)+n)])-1`
-/

namespace A258782.P11467491768732933391
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000038 n + (n : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A258782.P11467491768732933391

namespace A258782

/-- `round(∑[log2(A000038(n)+n)])-1` -/
def P11467491768732933391.Spec : Prop :=
  ∀ n, P11467491768732933391.a n = A258782 n

end A258782

/-! ## A258782.P4056418411579519267

`floor(log2(sqrt(2)*n!))`
-/

namespace A258782.P4056418411579519267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.sqrt (2 : ℝ) * (Nat.factorial n : ℝ))⌋

end

end A258782.P4056418411579519267

namespace A258782

/-- `floor(log2(sqrt(2)*n!))` -/
def P4056418411579519267.Spec : Prop :=
  ∀ n, P4056418411579519267.a n = A258782 n

end A258782

/-! ## A258782.P12432761753818271396

`ceil(log2(n!/2*sqrt(2)))`
-/

namespace A258782.P12432761753818271396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (((Nat.factorial n : ℚ) / 2 : ℝ) * Real.sqrt (2 : ℝ))⌉

end

end A258782.P12432761753818271396

namespace A258782

/-- `ceil(log2(n!/2*sqrt(2)))` -/
def P12432761753818271396.Spec : Prop :=
  ∀ n, P12432761753818271396.a n = A258782 n

end A258782

/-! ## A258782.P17555251159317883338

`round(log2(A000142(n)))%A000142(n)`
-/

namespace A258782.P17555251159317883338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (A000142 n : ℝ))) (A000142 n)

end

end A258782.P17555251159317883338

namespace A258782

/-- `round(log2(A000142(n)))%A000142(n)` -/
def P17555251159317883338.Spec : Prop :=
  ∀ n, P17555251159317883338.a n = A258782 n

end A258782

/-!
# A258783: Numerators of a rational sequence related to the closed form evaluation of a Gaussian integer zeta sum.

The programs for A258783, there is no canonical definition to state claims against.
-/

/-! ## A258783.P16575360583287224906

`A023190(Δ[A039893(n+1)]!)`
-/

namespace A258783.P16575360583287224906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A258783.P16575360583287224906

/-! ## A258783.P14886737858405197831

`∏{p}[A357639(n)²², A357639(#)]`
-/

namespace A258783.P14886737858405197831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A357639 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A357639 p

end

end A258783.P14886737858405197831

/-! ## A258783.P13862437853874277046

`A294246(A017936(a(n-1)))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=2, a(5)=2`
-/

namespace A258783.P13862437853874277046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1, 2, 2] fun n a =>
  A294246 (A017936 (a (n - 1)).toNat).toNat

end

end A258783.P13862437853874277046

/-! ## A258783.P4778963241961446996

`A113165(A000079(a(n-1))+1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=2, a(5)=2, a(6)=4`
-/

namespace A258783.P4778963241961446996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1, 2, 2, 4] fun n a =>
  A113165 (A000079 (a (n - 1)).toNat + 1).toNat

end

end A258783.P4778963241961446996

/-!
# A258785: Numbers n whose digits match the almost-natural numbers from A007376(n) onwards.

The programs for A258785, there is no canonical definition to state claims against.
-/

/-! ## A258785.P6522815106083832886

`record[and(63, A320485(n+1))]`
-/

namespace A258785.P6522815106083832886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 63 (A320485 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258785.P6522815106083832886

/-! ## A258785.P5828809783600879036

`record[and(63, A321802(n+1))]`
-/

namespace A258785.P5828809783600879036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 63 (A321802 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258785.P5828809783600879036

/-! ## A258785.P724053198913564792

`(A282782(n+1)+1)%87`
-/

namespace A258785.P724053198913564792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282782 (n + 1) + 1) 87

end

end A258785.P724053198913564792

/-! ## A258785.P1396829989643869673

`or(n+1, record[A351870(n+1)]%65)`
-/

namespace A258785.P1396829989643869673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 65)

end

end A258785.P1396829989643869673

/-! ## A258785.P6178607363121538139

`A005496(A358021(n))`
-/

namespace A258785.P6178607363121538139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A358021 n).toNat

end

end A258785.P6178607363121538139

/-!
# A258788: a(n) = [x^n] Product_{k=1..n} 1/(x^k*(1-x^k)).

The programs for A258788, there is no canonical definition to state claims against.
-/

/-! ## A258788.P9348223269534669917

`A026820(A038722(C(∑[n+1], 2)-n+1))`
-/

namespace A258788.P9348223269534669917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A038722 ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n : ℤ) + 1).toNat).toNat

end

end A258788.P9348223269534669917

/-! ## A258788.P15543431849607910300

`A072233(∑[A267370(n)+n])`
-/

namespace A258788.P15543431849607910300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267370 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A258788.P15543431849607910300

/-! ## A258788.P6444575308982918337

`A020959(A213225(n))`
-/

namespace A258788.P6444575308982918337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020959 (A213225 n).toNat

end

end A258788.P6444575308982918337

/-!
# A258789: a(n) = [x^n] Product_{k=1..n} 1/(x^(2*k)*(1-x^k)).

The programs for A258789, there is no canonical definition to state claims against.
-/

/-! ## A258789.P8780010948834903725

`A097356(n*(n+2))`
-/

namespace A258789.P8780010948834903725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097356 (n * (n + 2))

end

end A258789.P8780010948834903725

/-! ## A258789.P11177616623080817403

`A316353(A082562(n+1))`
-/

namespace A258789.P11177616623080817403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (A082562 (n + 1)).toNat

end

end A258789.P11177616623080817403

/-! ## A258789.P1106575693371829003

`A316353((n+2)*A028310(n))`
-/

namespace A258789.P1106575693371829003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 ((n + 2 : ℤ) * A028310 n).toNat

end

end A258789.P1106575693371829003

/-! ## A258789.P9110410508145856412

`A316353(A233583(n+2)²-1)`
-/

namespace A258789.P9110410508145856412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (A233583 (n + 2) ^ 2 - 1).toNat

end

end A258789.P9110410508145856412

/-! ## A258789.P18375796488125786141

`A316353(2*A179865(n+1)+n)`
-/

namespace A258789.P18375796488125786141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (2 * A179865 (n + 1) + (n : ℤ)).toNat

end

end A258789.P18375796488125786141

/-! ## A258789.P759432392304603189

`A316353((n+2)*(A000007(n)+n))`
-/

namespace A258789.P759432392304603189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 ((n + 2 : ℤ) * (A000007 n + (n : ℤ))).toNat

end

end A258789.P759432392304603189

/-! ## A258789.P11052029822129589337

`A316353(A233583(2*n+1)+n²)`
-/

namespace A258789.P11052029822129589337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (A233583 (2 * n + 1) + (n ^ 2 : ℤ)).toNat

end

end A258789.P11052029822129589337

/-! ## A258789.P6183891725764668220

`A316353(A028310(n)+A253909(n)+n)`
-/

namespace A258789.P6183891725764668220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (A028310 n + (A253909 n + (n : ℤ))).toNat

end

end A258789.P6183891725764668220

/-! ## A258789.P17177287260791972451

`A316353(A179865(n+1)+A179865(n+1)+n)`
-/

namespace A258789.P17177287260791972451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316353 (A179865 (n + 1) + (A179865 (n + 1) + (n : ℤ))).toNat

end

end A258789.P17177287260791972451

/-!
# A258790: a(n) = [x^n] Product_{k=1..n} 1/(x^(3*k)*(1-x^k)).

The programs for A258790, there is no canonical definition to state claims against.
-/

/-! ## A258790.P14198538027832859113

`abs(A292047(∑[A033586(n)]))`
-/

namespace A258790.P14198538027832859113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292047 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A258790.P14198538027832859113

/-! ## A258790.P17875216947768973717

`abs(A292049(∑[A033586(n)]))`
-/

namespace A258790.P17875216947768973717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292049 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A258790.P17875216947768973717

/-!
# A258791: a(n) = [x^n] Product_{k=1..n} 1/(x^k*(1-x^k)^2).

The programs for A258791, there is no canonical definition to state claims against.
-/

/-! ## A258791.P11341600974556900863

`A276797(A163459(n)+1)`
-/

namespace A258791.P11341600974556900863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A163459 n + 1).toNat

end

end A258791.P11341600974556900863

/-!
# A258797: a(n) = [x^n] Product_{k=1..n} (1+x^k)^2 / x^k.

The programs for A258797, there is no canonical definition to state claims against.
-/

/-! ## A258797.P15426800276448494067

`A229707(∑[n+1]+C(∑[n], 2))`
-/

namespace A258797.P15426800276448494067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229707 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2)

end

end A258797.P15426800276448494067

/-! ## A258797.P9478004830202362506

`A229707(A004255(n+1))`
-/

namespace A258797.P9478004830202362506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229707 (A004255 (n + 1)).toNat

end

end A258797.P9478004830202362506

/-! ## A258797.P9580655049848413175

`A229707(A101357(n+1))`
-/

namespace A258797.P9580655049848413175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229707 (A101357 (n + 1)).toNat

end

end A258797.P9580655049848413175

/-! ## A258797.P16400738679527678307

`A229707(∑[A060354(n+1)])`
-/

namespace A258797.P16400738679527678307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229707 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A258797.P16400738679527678307

/-! ## A258797.P317734851139577660

`A229707(A002817(n)+1+n)`
-/

namespace A258797.P317734851139577660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229707 (A002817 n + 1 + (n : ℤ)).toNat

end

end A258797.P317734851139577660

/-!
# A258798: a(n) = [x^n] Product_{k=1..n} (1+x^k)^3 / x^k.

The programs for A258798, there is no canonical definition to state claims against.
-/

/-! ## A258798.P14679527155743045530

`A278395(n)+A240210(A009211(n))`
-/

namespace A258798.P14679527155743045530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278395 n + A240210 (A009211 n).toNat

end

end A258798.P14679527155743045530

/-!
# A258799: a(n) = [x^n] Product_{k=1..n} (1+x^k)^3 / x^(2*k).

The programs for A258799, there is no canonical definition to state claims against.
-/

/-! ## A258799.P16562878465204892267

`A055037(A300865(3*n+4)+1)`
-/

namespace A258799.P16562878465204892267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055037 (A300865 (3 * n + 4) + 1).toNat

end

end A258799.P16562878465204892267

/-! ## A258799.P1418258693033455680

`A329720(floor(Δ[e*n!])+1)+n!*∑[n/n!]-n`
-/

namespace A258799.P1418258693033455680
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329720 (⌊f1 (n + 1) - f1 n⌋ + 1).toNat : ℚ) + ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j) - (n : ℚ))

end

end A258799.P1418258693033455680

