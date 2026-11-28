import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B009.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A303003: Total domination number of the n X n queen graph.

The programs for A303003, there is no canonical definition to state claims against.
-/

/-! ## A303003.P18116292067036281684

`ceil((2-floor(sqrt(sqrt(n)))+n)/ϕ)`
-/

namespace A303003.P18116292067036281684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 - ⌊Real.sqrt (Real.sqrt (n : ℝ))⌋ + (n : ℤ) : ℝ) / Real.goldenRatio⌉

end

end A303003.P18116292067036281684

/-! ## A303003.P13748800299216002457

`round(A004014(n+3)/5)`
-/

namespace A303003.P13748800299216002457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004014 (n + 3) : ℚ) / 5)

end

end A303003.P13748800299216002457

/-! ## A303003.P17381233998580845929

`∑[char[A214697(n)+1]]+2`
-/

namespace A303003.P17381233998580845929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214697 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A303003.P17381233998580845929

/-! ## A303003.P7629433430347349531

`∑[A244220(record[xor(2, n)])]+1`
-/

namespace A303003.P7629433430347349531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244220 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A303003.P7629433430347349531

/-! ## A303003.P13065937726955222101

`floor(sqrt(A001694(n+2)-n))`
-/

namespace A303003.P13065937726955222101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001694 (n + 2) - (n : ℤ))

end

end A303003.P13065937726955222101

/-!
# A303004: Expansion of e.g.f. exp(Sum_{k>=1} M(k)*x^k/k!), where M() is the exponential of Mangoldt function (A014963).

The programs for A303004, there is no canonical definition to state claims against.
-/

/-! ## A303004.P15374278948632286567

`or(A000194(n), A026741(A147909(n+1)))`
-/

namespace A303004.P15374278948632286567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000194 n) (A026741 (A147909 (n + 1)).toNat)

end

end A303004.P15374278948632286567

/-! ## A303004.P9038591880082284498

`or(A004526(A147909(n+1)), A054725(n+1))`
-/

namespace A303004.P9038591880082284498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004526 (A147909 (n + 1)).toNat) (A054725 (n + 1))

end

end A303004.P9038591880082284498

/-! ## A303004.P8081853988105670968

`A004525(or(A063095(n+1), A147894(n+1)))`
-/

namespace A303004.P8081853988105670968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lor (A063095 (n + 1)) (A147894 (n + 1))).toNat

end

end A303004.P8081853988105670968

/-!
# A303005: Number of dominating sets in the n-pan graph.

The programs for A303005, the canonical program `A303005.P5624457441058513140` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303005 has offset 1).

The definition of A303005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303005.P7423062495000175824

`ogf((3+2x+3x^2)/(1-x-x^2-x^3))`
-/

namespace A303005.P7423062495000175824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, 3] [1, -1, -1, -1] n

end

end A303005.P7423062495000175824

namespace A303005

/-- `ogf((3+2x+3x^2)/(1-x-x^2-x^3))` -/
def P7423062495000175824.Spec : Prop :=
  ∀ n, P7423062495000175824.a n = A303005 (n + 1)

end A303005

/-! ## A303005.P5624457441058513140

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=3, a(1)=5, a(2)=11`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A303005

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P5624457441058513140.Spec : Prop :=
  ∀ n, (P5624457441058513140.a n : ℤ) = A303005 (n + 1)

theorem P5624457441058513140.correct : P5624457441058513140.Spec := by
  intro n
  simp only [A303005, Nat.add_sub_cancel]

end A303005

/-! ## A303005.P16084427618435888341

`A214899(n)+A086192(n+1)`
-/

namespace A303005.P16084427618435888341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n + A086192 (n + 1)

end

end A303005.P16084427618435888341

namespace A303005

/-- `A214899(n)+A086192(n+1)` -/
def P16084427618435888341.Spec : Prop :=
  ∀ n, P16084427618435888341.a n = A303005 (n + 1)

end A303005

/-! ## A303005.P12298847141594239993

`A354784(n)+A000213(n+3)`
-/

namespace A303005.P12298847141594239993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 n + A000213 (n + 3)

end

end A303005.P12298847141594239993

namespace A303005

/-- `A354784(n)+A000213(n+3)` -/
def P12298847141594239993.Spec : Prop :=
  ∀ n, P12298847141594239993.a n = A303005 (n + 1)

end A303005

/-! ## A303005.P9503775995026175590

`A081172(n+4)+A000073(n)`
-/

namespace A303005.P9503775995026175590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (n + 4) + A000073 n

end

end A303005.P9503775995026175590

namespace A303005

/-- `A081172(n+4)+A000073(n)` -/
def P9503775995026175590.Spec : Prop :=
  ∀ n, P9503775995026175590.a n = A303005 (n + 1)

end A303005

/-! ## A303005.P17248433309682473317

`A214899(n+2)+Δ[A214727(n)]`
-/

namespace A303005.P17248433309682473317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 (n + 2) + (f1 (n + 1) - f1 n)

end

end A303005.P17248433309682473317

namespace A303005

/-- `A214899(n+2)+Δ[A214727(n)]` -/
def P17248433309682473317.Spec : Prop :=
  ∀ n, P17248433309682473317.a n = A303005 (n + 1)

end A303005

/-! ## A303005.P1997454596639899393

`A000213(n+3)+Δ[A000213(n)]`
-/

namespace A303005.P1997454596639899393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 3) + (f1 (n + 1) - f1 n)

end

end A303005.P1997454596639899393

namespace A303005

/-- `A000213(n+3)+Δ[A000213(n)]` -/
def P1997454596639899393.Spec : Prop :=
  ∀ n, P1997454596639899393.a n = A303005 (n + 1)

end A303005

/-! ## A303005.P7424871057893723742

`A135491(n+1)+A000213(n+1)`
-/

namespace A303005.P7424871057893723742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 (n + 1) + A000213 (n + 1)

end

end A303005.P7424871057893723742

namespace A303005

/-- `A135491(n+1)+A000213(n+1)` -/
def P7424871057893723742.Spec : Prop :=
  ∀ n, P7424871057893723742.a n = A303005 (n + 1)

end A303005

/-! ## A303005.P892149788050095966

`A274761(n+1)+A001590(n+1)`
-/

namespace A303005.P892149788050095966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274761 (n + 1) + A001590 (n + 1)

end

end A303005.P892149788050095966

namespace A303005

/-- `A274761(n+1)+A001590(n+1)` -/
def P892149788050095966.Spec : Prop :=
  ∀ n, P892149788050095966.a n = A303005 (n + 1)

end A303005

/-! ## A303005.P8654012088615367142

`A214727(n+1)+A020992(n+2)`
-/

namespace A303005.P8654012088615367142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 (n + 1) + A020992 (n + 2)

end

end A303005.P8654012088615367142

namespace A303005

/-- `A214727(n+1)+A020992(n+2)` -/
def P8654012088615367142.Spec : Prop :=
  ∀ n, P8654012088615367142.a n = A303005 (n + 1)

end A303005

/-! ## A303005.P8301823938132026822

`A214727(n+2)+A081172(n+1)`
-/

namespace A303005.P8301823938132026822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 (n + 2) + A081172 (n + 1)

end

end A303005.P8301823938132026822

namespace A303005

/-- `A214727(n+2)+A081172(n+1)` -/
def P8301823938132026822.Spec : Prop :=
  ∀ n, P8301823938132026822.a n = A303005 (n + 1)

end A303005

/-! ## A303005.P14008594038013291544

`A354784(n+2)+A001644(n+1)`
-/

namespace A303005.P14008594038013291544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 (n + 2) + A001644 (n + 1)

end

end A303005.P14008594038013291544

namespace A303005

/-- `A354784(n+2)+A001644(n+1)` -/
def P14008594038013291544.Spec : Prop :=
  ∀ n, P14008594038013291544.a n = A303005 (n + 1)

end A303005

/-! ## A303005.P5143952717294260091

`A275778(n+1)+A275778(n+2)`
-/

namespace A303005.P5143952717294260091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275778 (n + 1) + A275778 (n + 2)

end

end A303005.P5143952717294260091

namespace A303005

/-- `A275778(n+1)+A275778(n+2)` -/
def P5143952717294260091.Spec : Prop :=
  ∀ n, P5143952717294260091.a n = A303005 (n + 1)

end A303005

/-! ## A303005.P1346934081402241299

`A145027(n+2)+A001590(n+2)`
-/

namespace A303005.P1346934081402241299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145027 (n + 2) + A001590 (n + 2)

end

end A303005.P1346934081402241299

namespace A303005

/-- `A145027(n+2)+A001590(n+2)` -/
def P1346934081402241299.Spec : Prop :=
  ∀ n, P1346934081402241299.a n = A303005 (n + 1)

end A303005

/-! ## A303005.P12518299916746534967

`A100683(n+2)+A000073(n+3)`
-/

namespace A303005.P12518299916746534967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (n + 2) + A000073 (n + 3)

end

end A303005.P12518299916746534967

namespace A303005

/-- `A100683(n+2)+A000073(n+3)` -/
def P12518299916746534967.Spec : Prop :=
  ∀ n, P12518299916746534967.a n = A303005 (n + 1)

end A303005

/-! ## A303005.P4710395578144402331

`∑[A214899(n+1)]+A000073(n)+2`
-/

namespace A303005.P4710395578144402331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A000073 n + 2)

end

end A303005.P4710395578144402331

namespace A303005

/-- `∑[A214899(n+1)]+A000073(n)+2` -/
def P4710395578144402331.Spec : Prop :=
  ∀ n, P4710395578144402331.a n = A303005 (n + 1)

end A303005

/-! ## A303005.P12390104229152239305

`A202012(n+1)+A248098(n+2)+1`
-/

namespace A303005.P12390104229152239305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 (n + 1) + (A248098 (n + 2) + 1)

end

end A303005.P12390104229152239305

namespace A303005

/-- `A202012(n+1)+A248098(n+2)+1` -/
def P12390104229152239305.Spec : Prop :=
  ∀ n, P12390104229152239305.a n = A303005 (n + 1)

end A303005

/-! ## A303005.P17713703489952444417

`A001644(n+1)+2*A213816(2*n+1)`
-/

namespace A303005.P17713703489952444417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) + 2 * A213816 (2 * n + 1)

end

end A303005.P17713703489952444417

namespace A303005

/-- `A001644(n+1)+2*A213816(2*n+1)` -/
def P17713703489952444417.Spec : Prop :=
  ∀ n, P17713703489952444417.a n = A303005 (n + 1)

end A303005

/-! ## A303005.P15628698375238744848

`A001644(n)+A349700(n)+A075092(n)`
-/

namespace A303005.P15628698375238744848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n + (A349700 n + A075092 n)

end

end A303005.P15628698375238744848

namespace A303005

/-- `A001644(n)+A349700(n)+A075092(n)` -/
def P15628698375238744848.Spec : Prop :=
  ∀ n, P15628698375238744848.a n = A303005 (n + 1)

end A303005

/-! ## A303005.P17560504077475516772

`A274761(n+1)+A001644(n)-A214899(n)`
-/

namespace A303005.P17560504077475516772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274761 (n + 1) + (A001644 n - A214899 n)

end

end A303005.P17560504077475516772

namespace A303005

/-- `A274761(n+1)+A001644(n)-A214899(n)` -/
def P17560504077475516772.Spec : Prop :=
  ∀ n, P17560504077475516772.a n = A303005 (n + 1)

end A303005

/-!
# A303007: Expansion of (1-240*x)^(1/8).

The programs for A303007, there is no canonical definition to state claims against.
-/

/-! ## A303007.P2529864661784140502

`15^n*A301271(n)`
-/

namespace A303007.P2529864661784140502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (15 ^ n : ℤ) * A301271 n

end

end A303007.P2529864661784140502

/-! ## A303007.P15771556959907001713

`15*(16-18/n)*a(n-1)` with `a(0)=1`
-/

namespace A303007.P15771556959907001713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  15 * ((16 - 18 / (n : ℚ)) * a (n - 1))

end

end A303007.P15771556959907001713

/-! ## A303007.P4363378838295378090

`A301271(n)/15^A001489(n)`
-/

namespace A303007.P4363378838295378090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301271 n : ℚ) / (15 : ℚ) ^ (A001489 n : ℤ)

end

end A303007.P4363378838295378090

/-!
# A303009: Numbers n such that both A002450(n)=(2^(2n)-1)/3 and A007583(n)=2*A002450(n)+1 are Fermat pseudoprimes to base 2 (A001567).

The programs for A303009, there is no canonical definition to state claims against.
-/

/-! ## A303009.P8651424417311190627

`record[A055769(A219525(n+1)+14)]`
-/

namespace A303009.P8651424417311190627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055769 (A219525 (n + 1) + 14).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303009.P8651424417311190627

/-! ## A303009.P12517938851280876266

`A005384(lt[A000045(n+1), A057740(2*n+1)])`
-/

namespace A303009.P12517938851280876266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057740 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A303009.P12517938851280876266

/-! ## A303009.P9944537424191340973

`∩[A130176(n+1), A336373(n+1)]`
-/

namespace A303009.P9944537424191340973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303009.P9944537424191340973

/-!
# A303010: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303010, there is no canonical definition to state claims against.
-/

/-! ## A303010.P7640397786837189112

`A303016(∑[4*n]+1)`
-/

namespace A303010.P7640397786837189112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303010.P7640397786837189112

/-! ## A303010.P876574451002161070

`∑{digits}[n, A303016(A001844(#))]`
-/

namespace A303010.P876574451002161070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A303016 (A001844 x).toNat).sum

end

end A303010.P876574451002161070

/-! ## A303010.P18068581836251944639

`record[A303016(Δ[A235355(n)])]`
-/

namespace A303010.P18068581836251944639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303010.P18068581836251944639

/-! ## A303010.P17946944557150804647

`record[A303016(A272267(n+1))]`
-/

namespace A303010.P17946944557150804647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303010.P17946944557150804647

/-! ## A303010.P134904996079386837

`record[A303016(A330613(n+1))]`
-/

namespace A303010.P134904996079386837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303010.P134904996079386837

/-!
# A303011: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303011, there is no canonical definition to state claims against.
-/

/-! ## A303011.P2706595759874799790

`A303016(∑[n+3]+1)`
-/

namespace A303011.P2706595759874799790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303011.P2706595759874799790

/-! ## A303011.P6490609306785318008

`record[A303016(A198464(n+1))]`
-/

namespace A303011.P6490609306785318008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303011.P6490609306785318008

/-!
# A303012: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303012, there is no canonical definition to state claims against.
-/

/-! ## A303012.P17809705848889886055

`A303016(∑[n+4]+3)`
-/

namespace A303012.P17809705848889886055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A303012.P17809705848889886055

/-!
# A303013: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303013, there is no canonical definition to state claims against.
-/

/-! ## A303013.P13514969703178327412

`A303016(∑[n+5]+6)`
-/

namespace A303013.P13514969703178327412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A303013.P13514969703178327412

/-!
# A303014: Number of n X 6 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303014, there is no canonical definition to state claims against.
-/

/-! ## A303014.P5893056076645061261

`A303016(A052905(n+3))`
-/

namespace A303014.P5893056076645061261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A052905 (n + 3)).toNat

end

end A303014.P5893056076645061261

/-!
# A303015: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303015, there is no canonical definition to state claims against.
-/

/-! ## A303015.P12623821707344276853

`A303016(A055999(n+4))`
-/

namespace A303015.P12623821707344276853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A055999 (n + 4)).toNat

end

end A303015.P12623821707344276853

/-!
# A303016: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303016, there is no canonical definition to state claims against.
-/

/-! ## A303016.P8756164080655557280

`A302322(n+1)+A151755(A102365(n))`
-/

namespace A303016.P8756164080655557280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (n + 1) + A151755 (A102365 n).toNat

end

end A303016.P8756164080655557280

/-! ## A303016.P6866956694762435879

`xor(A151755(A174546(n)), A302820(n+1))`
-/

namespace A303016.P6866956694762435879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151755 (A174546 n).toNat) (A302820 (n + 1))

end

end A303016.P6866956694762435879

/-! ## A303016.P16755373393746382933

`xor(A151755(A176420(n)), A302322(n+1))`
-/

namespace A303016.P16755373393746382933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151755 (A176420 n).toNat) (A302322 (n + 1))

end

end A303016.P16755373393746382933

/-! ## A303016.P9724377583865946119

`A302322(n+1)+A081221(A208408(n+1))`
-/

namespace A303016.P9724377583865946119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (n + 1) + A081221 (A208408 (n + 1)).toNat

end

end A303016.P9724377583865946119

/-! ## A303016.P8930924212344536979

`A302322(n+1)+A151755(A284075(n+1))`
-/

namespace A303016.P8930924212344536979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (n + 1) + A151755 (A284075 (n + 1)).toNat

end

end A303016.P8930924212344536979

/-!
# A303017: Number of 3 X n 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303017, there is no canonical definition to state claims against.
-/

/-! ## A303017.P3779608200664307652

`A303016(∑[n+2]+4)`
-/

namespace A303017.P3779608200664307652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303017.P3779608200664307652

/-!
# A303018: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303018, there is no canonical definition to state claims against.
-/

/-! ## A303018.P13858920213471199351

`A303016(∑[n+3]+7)`
-/

namespace A303018.P13858920213471199351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A303018.P13858920213471199351

/-!
# A303019: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303019, there is no canonical definition to state claims against.
-/

/-! ## A303019.P43113477840782309

`A303016(A167499(n+3))`
-/

namespace A303019.P43113477840782309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A167499 (n + 3)).toNat

end

end A303019.P43113477840782309

/-!
# A303020: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303020, there is no canonical definition to state claims against.
-/

/-! ## A303020.P14210937779802548733

`A303016(A166136(n+4))`
-/

namespace A303020.P14210937779802548733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A166136 (n + 4)).toNat

end

end A303020.P14210937779802548733

/-!
# A303021: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303021, there is no canonical definition to state claims against.
-/

/-! ## A303021.P11150257232931919557

`A303016(A302537(n)+27)`
-/

namespace A303021.P11150257232931919557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A302537 n + 27).toNat

end

end A303021.P11150257232931919557

/-!
# A303022: Number of free pure symmetric multifunctions (with empty expressions allowed) with one atom, n positions, and no unitary parts (subexpressions of the form x[y]).

The programs for A303022, there is no canonical definition to state claims against.
-/

/-! ## A303022.P8520499379358687409

`A100196(or(A254314(n), A309481(n)))`
-/

namespace A303022.P8520499379358687409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.lor (A254314 n) (A309481 n)).toNat

end

end A303022.P8520499379358687409

/-!
# A303023: Number of anti-binary (no binary branchings) unlabeled rooted trees with n nodes.

The programs for A303023, there is no canonical definition to state claims against.
-/

/-! ## A303023.P33082763107806365

`A001462(A083309(n+1)+A000700(n))`
-/

namespace A303023.P33082763107806365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A083309 (n + 1) + A000700 n).toNat

end

end A303023.P33082763107806365

/-! ## A303023.P6003574683599470727

`A401479(A190162(n))`
-/

namespace A303023.P6003574683599470727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401479 (A190162 n).toNat

end

end A303023.P6003574683599470727

/-! ## A303023.P5256335756152198811

`A257639(∑[A257561(n)])`
-/

namespace A303023.P5256335756152198811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303023.P5256335756152198811

/-! ## A303023.P14344538045400995822

`A003004(A036618(n))`
-/

namespace A303023.P14344538045400995822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003004 (A036618 n).toNat

end

end A303023.P14344538045400995822

/-! ## A303023.P10066499406570323378

`A092289(A036591(n))`
-/

namespace A303023.P10066499406570323378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092289 (A036591 n).toNat

end

end A303023.P10066499406570323378

/-!
# A303026: Matula-Goebel numbers of series-reduced anti-binary (no unary or binary branchings) rooted trees.

The programs for A303026, there is no canonical definition to state claims against.
-/

/-! ## A303026.P10546194278550822598

`∩[A291636(n+1), A303024(n+1)]`
-/

namespace A303026.P10546194278550822598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303026.P10546194278550822598

/-! ## A303026.P750536284668134671

`∩[A303024(n+1), A320269(n+1)]`
-/

namespace A303026.P750536284668134671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303026.P750536284668134671

/-! ## A303026.P3262198784426101983

`∩[A303024(n+1), A331683(n+1)]`
-/

namespace A303026.P3262198784426101983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303026.P3262198784426101983

/-! ## A303026.P9066800828857116854

`∩[A303024(n+1), A331965(n+1)]`
-/

namespace A303026.P9066800828857116854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303026.P9066800828857116854

/-!
# A303028: a(0) = 0, a(1) = a(2) = 1; for k >= 2, a(2*k-1) = k - 1 - a(k-1) - a(k), a(2*k) = a(2*k-1) - a(k).

The programs for A303028, there is no canonical definition to state claims against.
-/

/-! ## A303028.P5003513205784362865

`∑[A330328(abs(1-n))]`
-/

namespace A303028.P5003513205784362865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330328 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303028.P5003513205784362865

/-! ## A303028.P12096143979382089744

`A330328(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A303028.P12096143979382089744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A330328 (n - 1) + a (n - 1)

end

end A303028.P12096143979382089744

/-! ## A303028.P8165913714134414778

`∑[A330328(n)]-A330328(n)`
-/

namespace A303028.P8165913714134414778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A330328 n

end

end A303028.P8165913714134414778

/-! ## A303028.P2084569958337244218

`∑{d}[A131577(n), A330328(A001222(#))]`
-/

namespace A303028.P2084569958337244218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A330328 (A001222 d).toNat

end

end A303028.P2084569958337244218

/-!
# A303030: Number of unlabeled connected loopless multigraphs with n nodes of degree 3 or less and with single or double edges.

The programs for A303030, there is no canonical definition to state claims against.
-/

/-! ## A303030.P15700285549250939545

`A243391(A028310(n))-char[2]`
-/

namespace A303030.P15700285549250939545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243391 (A028310 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303030.P15700285549250939545

/-! ## A303030.P5330943035493616918

`A321994(n+1)+A161123(A078812(3*n))`
-/

namespace A303030.P5330943035493616918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321994 (n + 1) + A161123 (A078812 (3 * n)).toNat

end

end A303030.P5330943035493616918

/-!
# A303031: Number of unlabeled connected loopless multigraphs with n nodes of degree 5 or less and with single or double edges.

The programs for A303031, there is no canonical definition to state claims against.
-/

/-! ## A303031.P9296094817957213889

`A225645(A118929(n))`
-/

namespace A303031.P9296094817957213889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225645 (A118929 n).toNat

end

end A303031.P9296094817957213889

/-!
# A303032: Number of unlabeled connected graphs with n nodes of degree 5 or less.

The programs for A303032, there is no canonical definition to state claims against.
-/

/-! ## A303032.P11655259343266292523

`A194204(A001040(n)+2)`
-/

namespace A303032.P11655259343266292523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194204 (A001040 n + 2).toNat

end

end A303032.P11655259343266292523

/-! ## A303032.P13977914571477099225

`A111857(∑[∑[A000142(n)]]+4)`
-/

namespace A303032.P13977914571477099225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111857 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A303032.P13977914571477099225

/-! ## A303032.P7649856043064179458

`A008619(A001040(n))-A011730(A020029(n))`
-/

namespace A303032.P7649856043064179458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A001040 n).toNat - A011730 (A020029 n).toNat

end

end A303032.P7649856043064179458

/-!
# A303033: Number of unlabeled connected loopless multigraphs with n nodes of degree 5 or less and with single, double or triple edges.

The programs for A303033, there is no canonical definition to state claims against.
-/

/-! ## A303033.P6829042213861315203

`xor(1, A134119(A156181(n)))`
-/

namespace A303033.P6829042213861315203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A134119 (A156181 n).toNat)

end

end A303033.P6829042213861315203

/-! ## A303033.P7213473623919178650

`A194516(or(3, A355353(n)))`
-/

namespace A303033.P7213473623919178650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194516 (Int.lor 3 (A355353 n)).toNat

end

end A303033.P7213473623919178650

/-!
# A303034: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303034, there is no canonical definition to state claims against.
-/

/-! ## A303034.P13775303574903351854

`A303040(∑[4*n]+1)`
-/

namespace A303034.P13775303574903351854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303034.P13775303574903351854

/-! ## A303034.P18126127687405688961

`record[A303040(A330613(n+1))]`
-/

namespace A303034.P18126127687405688961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303034.P18126127687405688961

/-! ## A303034.P6671677248314760386

`record[A303040(or(1, A227041(n+1)))]`
-/

namespace A303034.P6671677248314760386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (Int.lor 1 (A227041 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303034.P6671677248314760386

/-!
# A303035: Number of nX3 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303035, there is no canonical definition to state claims against.
-/

/-! ## A303035.P11961492660182891663

`A303040(∑[n+3]+1)`
-/

namespace A303035.P11961492660182891663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303035.P11961492660182891663

/-! ## A303035.P5061144833283804549

`record[A303040(A198464(n+1))]`
-/

namespace A303035.P5061144833283804549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303035.P5061144833283804549

/-!
# A303036: Number of nX4 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303036, there is no canonical definition to state claims against.
-/

/-! ## A303036.P268115257690549373

`A303040(∑[n+4]+3)`
-/

namespace A303036.P268115257690549373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A303036.P268115257690549373

/-!
# A303037: Number of nX5 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303037, there is no canonical definition to state claims against.
-/

/-! ## A303037.P4381081141072954571

`A303040(∑[n+5]+6)`
-/

namespace A303037.P4381081141072954571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A303037.P4381081141072954571

/-!
# A303038: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303038, there is no canonical definition to state claims against.
-/

/-! ## A303038.P2703362558037923452

`A303040(A052905(n+3))`
-/

namespace A303038.P2703362558037923452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (A052905 (n + 3)).toNat

end

end A303038.P2703362558037923452

/-!
# A303039: Number of n X 7 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303039, there is no canonical definition to state claims against.
-/

/-! ## A303039.P13536623985308049321

`A303040(A055999(n+4))`
-/

namespace A303039.P13536623985308049321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (A055999 (n + 4)).toNat

end

end A303039.P13536623985308049321

/-!
# A303040: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303040, there is no canonical definition to state claims against.
-/

/-! ## A303040.P8859387076494635094

`A302309(n+1)+A186034(A022167(n))`
-/

namespace A303040.P8859387076494635094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (n + 1) + A186034 (A022167 n).toNat

end

end A303040.P8859387076494635094

/-! ## A303040.P8997285934312249989

`A302309(n+1)+A033264(A176791(n))`
-/

namespace A303040.P8997285934312249989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (n + 1) + A033264 (A176791 n).toNat

end

end A303040.P8997285934312249989

/-! ## A303040.P11771576080947119244

`A302309(n+1)+A037912(A174527(n))`
-/

namespace A303040.P11771576080947119244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (n + 1) + A037912 (A174527 n).toNat

end

end A303040.P11771576080947119244

/-! ## A303040.P9602584852382120367

`A302309(n+1)+A124763(A099594(n))`
-/

namespace A303040.P9602584852382120367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (n + 1) + A124763 (A099594 n).toNat

end

end A303040.P9602584852382120367

/-! ## A303040.P8225371475407517096

`A302309(n+1)+A037800(A296548(n))`
-/

namespace A303040.P8225371475407517096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (n + 1) + A037800 (A296548 n).toNat

end

end A303040.P8225371475407517096

/-!
# A303041: Number of 3Xn 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303041, there is no canonical definition to state claims against.
-/

/-! ## A303041.P10931812366097471207

`A303040(∑[n+2]+4)`
-/

namespace A303041.P10931812366097471207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303041.P10931812366097471207

/-!
# A303042: Number of 4 X n 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303042, there is no canonical definition to state claims against.
-/

/-! ## A303042.P14480521346128609528

`A303040(∑[n+3]+7)`
-/

namespace A303042.P14480521346128609528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A303042.P14480521346128609528

/-! ## A303042.P6132297342059171644

`record[A303040(A198464(n+1)+6)]`
-/

namespace A303042.P6132297342059171644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (A198464 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303042.P6132297342059171644

/-!
# A303043: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303043, there is no canonical definition to state claims against.
-/

/-! ## A303043.P7148741634142735997

`A303040(∑[n+4]+11)`
-/

namespace A303043.P7148741634142735997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A303043.P7148741634142735997

/-!
# A303044: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303044, there is no canonical definition to state claims against.
-/

/-! ## A303044.P10224091853389555935

`A303040(∑[n+5]+16)`
-/

namespace A303044.P10224091853389555935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A303044.P10224091853389555935

/-!
# A303045: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303045, there is no canonical definition to state claims against.
-/

/-! ## A303045.P18158551915813429545

`A303040(∑[n+6]+22)`
-/

namespace A303045.P18158551915813429545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A303045.P18158551915813429545

/-!
# A303047: Number of total dominating sets in the n-Fibonacci cube graph.

The programs for A303047, there is no canonical definition to state claims against.
-/

/-! ## A303047.P3920721302851474208

`A011772(A073178(n))`
-/

namespace A303047.P3920721302851474208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A073178 n).toNat

end

end A303047.P3920721302851474208

/-!
# A303051: Number of partitions of n into two distinct parts (p,q) such that p, q and p+q are all squarefree.

The programs for A303051, the canonical program `A303051.P9727300612205070567` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303051 has offset 1).

The definition of A303051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303051.P9727300612205070567

`∑{#}[floor(n/2)-1, A008683(n+1)²*A008683(#+1)²*A008683(n+1-(#+1))²]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A303051

/-- `∑{#}[floor(n/2)-1, A008683(n+1)²*A008683(#+1)²*A008683(n+1-(#+1))²]` -/
def P9727300612205070567.Spec : Prop :=
  ∀ n, P9727300612205070567.a n = A303051 (n + 1)

theorem P9727300612205070567.correct : P9727300612205070567.Spec := by
  intro n
  simp only [A303051, Nat.add_sub_cancel]

end A303051

/-! ## A303051.P3120266711852795302

`and(1, ∏{e}[n+1, #!])*floor(A098235(n+1)/2)`
-/

namespace A303051.P3120266711852795302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)) : ℤ) * ⌊(A098235 (n + 1) : ℚ) / 2⌋

end

end A303051.P3120266711852795302

namespace A303051

/-- `and(1, ∏{e}[n+1, #!])*floor(A098235(n+1)/2)` -/
def P3120266711852795302.Spec : Prop :=
  ∀ n, P3120266711852795302.a n = A303051 (n + 1)

end A303051

/-! ## A303051.P744195638334500043

`(A098235(n+1)-A071068(n+1))*A008966(n+1)`
-/

namespace A303051.P744195638334500043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A098235 (n + 1) - A071068 (n + 1)) * A008966 (n + 1)

end

end A303051.P744195638334500043

namespace A303051

/-- `(A098235(n+1)-A071068(n+1))*A008966(n+1)` -/
def P744195638334500043.Spec : Prop :=
  ∀ n, P744195638334500043.a n = A303051 (n + 1)

end A303051

/-! ## A303051.P17877068886503836303

`A098236(A385212(n+1))`
-/

namespace A303051.P17877068886503836303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (A385212 (n + 1)).toNat

end

end A303051.P17877068886503836303

namespace A303051

/-- `A098236(A385212(n+1))` -/
def P17877068886503836303.Spec : Prop :=
  ∀ n, P17877068886503836303.a n = A303051 (n + 1)

end A303051

/-! ## A303051.P14605348204794258583

`round(acot(∏{e}[n+1, #]))*A098236(n+1)`
-/

namespace A303051.P14605348204794258583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)) * A098236 (n + 1)

end

end A303051.P14605348204794258583

namespace A303051

/-- `round(acot(∏{e}[n+1, #]))*A098236(n+1)` -/
def P14605348204794258583.Spec : Prop :=
  ∀ n, P14605348204794258583.a n = A303051 (n + 1)

end A303051

/-! ## A303051.P16104359589185185375

`A008966(n+1)*A098236(n+1)`
-/

namespace A303051.P16104359589185185375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A098236 (n + 1)

end

end A303051.P16104359589185185375

namespace A303051

/-- `A008966(n+1)*A098236(n+1)` -/
def P16104359589185185375.Spec : Prop :=
  ∀ n, P16104359589185185375.a n = A303051 (n + 1)

end A303051

/-! ## A303051.P3305085314165001981

`lcm(A008683(n+1), A098236(n+1))`
-/

namespace A303051.P3305085314165001981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (n + 1)) (A098236 (n + 1))

end

end A303051.P3305085314165001981

namespace A303051

/-- `lcm(A008683(n+1), A098236(n+1))` -/
def P3305085314165001981.Spec : Prop :=
  ∀ n, (P3305085314165001981.a n : ℤ) = A303051 (n + 1)

end A303051

/-! ## A303051.P15810294137450688206

`char[A005117(n+1)-1]*A098236(n+1)`
-/

namespace A303051.P15810294137450688206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A098236 (n + 1)

end

end A303051.P15810294137450688206

namespace A303051

/-- `char[A005117(n+1)-1]*A098236(n+1)` -/
def P15810294137450688206.Spec : Prop :=
  ∀ n, P15810294137450688206.a n = A303051 (n + 1)

end A303051

/-! ## A303051.P3730096681787181959

`(A358023(n+1)-A098236(n+1))*A098236(n+1)`
-/

namespace A303051.P3730096681787181959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A358023 (n + 1) - A098236 (n + 1)) * A098236 (n + 1)

end

end A303051.P3730096681787181959

namespace A303051

/-- `(A358023(n+1)-A098236(n+1))*A098236(n+1)` -/
def P3730096681787181959.Spec : Prop :=
  ∀ n, P3730096681787181959.a n = A303051 (n + 1)

end A303051

/-! ## A303051.P10568307190910036033

`(A347777(n+1)-A098235(n+1))*A098236(n+1)`
-/

namespace A303051.P10568307190910036033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A347777 (n + 1) - A098235 (n + 1)) * A098236 (n + 1)

end

end A303051.P10568307190910036033

namespace A303051

/-- `(A347777(n+1)-A098235(n+1))*A098236(n+1)` -/
def P10568307190910036033.Spec : Prop :=
  ∀ n, P10568307190910036033.a n = A303051 (n + 1)

end A303051

/-!
# A303052: Total area of all squares with squarefree side length |s - t|, such that n = s + t, and s < t, where s and t are positive integers.

The programs for A303052, the canonical program `A303052.P6246354888169107556` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303052 has offset 1).

The definition of A303052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303052.P6246354888169107556

`∑{#}[floor(n/2)-1, (n+1-2*(#+1))²*A008683(n+1-2*(#+1))²]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A303052

/-- `∑{#}[floor(n/2)-1, (n+1-2*(#+1))²*A008683(n+1-2*(#+1))²]` -/
def P6246354888169107556.Spec : Prop :=
  ∀ n, P6246354888169107556.a n = A303052 (n + 1)

theorem P6246354888169107556.correct : P6246354888169107556.Spec := by
  intro n
  simp only [A303052, Nat.add_sub_cancel]

end A303052

/-! ## A303052.P4381286405031386687

`a(n-2)+((n-1)*A008683(n-1))²` with `a(0)=0, a(1)=0`
-/

namespace A303052.P4381286405031386687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + (((n : ℤ) - 1) * A008683 (n - 1)) ^ 2

end

end A303052.P4381286405031386687

namespace A303052

/-- `a(n-2)+((n-1)*A008683(n-1))²` -/
def P4381286405031386687.Spec : Prop :=
  ∀ n, P4381286405031386687.a n = A303052 (n + 1)

end A303052

/-!
# A303054: Number of minimum total dominating sets in the n-ladder graph.

The programs for A303054, the canonical program `A303054.P17694616248667128477` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303054 has offset 1).

The definition of A303054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303054.P17694616248667128477

`A347633(1+n)²`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A303054

/-- `A347633(1+n)²` -/
def P17694616248667128477.Spec : Prop :=
  ∀ n, P17694616248667128477.a n = A303054 (n + 1)

theorem P17694616248667128477.correct : P17694616248667128477.Spec := by
  intro n
  simp only [A303054, Nat.add_sub_cancel]

end A303054

/-! ## A303054.P6266004668600108471

`A347633(n+1)^2`
-/

namespace A303054.P6266004668600108471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (n + 1) ^ 2

end

end A303054.P6266004668600108471

namespace A303054

/-- `A347633(n+1)^2` -/
def P6266004668600108471.Spec : Prop :=
  ∀ n, P6266004668600108471.a n = A303054 (n + 1)

theorem P6266004668600108471.correct : P6266004668600108471.Spec := by
  intro n
  simp only [A303054, Nat.add_sub_cancel, A303054.P6266004668600108471.a, A303054.P17694616248667128477.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A303054

/-! ## A303054.P339714079195508820

`A347633(A000027(n+1))*A347633(n+1)`
-/

namespace A303054.P339714079195508820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (A000027 (n + 1)).toNat * A347633 (n + 1)

end

end A303054.P339714079195508820

namespace A303054

/-- `A347633(A000027(n+1))*A347633(n+1)` -/
def P339714079195508820.Spec : Prop :=
  ∀ n, P339714079195508820.a n = A303054 (n + 1)

end A303054

/-! ## A303054.P2781570223508798420

`A347633(A028310(n+1))*A347633(n+1)`
-/

namespace A303054.P2781570223508798420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (A028310 (n + 1)).toNat * A347633 (n + 1)

end

end A303054.P2781570223508798420

namespace A303054

/-- `A347633(A028310(n+1))*A347633(n+1)` -/
def P2781570223508798420.Spec : Prop :=
  ∀ n, P2781570223508798420.a n = A303054 (n + 1)

end A303054

/-! ## A303054.P14528935968548489590

`(A350816(n+1)/A000079(A008620(n)))²`
-/

namespace A303054.P14528935968548489590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A350816 (n + 1) : ℚ) / (A000079 (A008620 n).toNat : ℚ)) ^ 2

end

end A303054.P14528935968548489590

namespace A303054

/-- `(A350816(n+1)/A000079(A008620(n)))²` -/
def P14528935968548489590.Spec : Prop :=
  ∀ n, P14528935968548489590.a n = (A303054 (n + 1) : ℚ)

end A303054

/-! ## A303054.P13562141962719290742

`A000290(A347633(n+1))`
-/

namespace A303054.P13562141962719290742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A347633 (n + 1)).toNat

end

end A303054.P13562141962719290742

namespace A303054

/-- `A000290(A347633(n+1))` -/
def P13562141962719290742.Spec : Prop :=
  ∀ n, P13562141962719290742.a n = A303054 (n + 1)

end A303054

/-! ## A303054.P5713439323909261935

`A106195(eq[A025581(n), A180663(n)])²`
-/

namespace A303054.P5713439323909261935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A303054.P5713439323909261935

namespace A303054

/-- `A106195(eq[A025581(n), A180663(n)])²` -/
def P5713439323909261935.Spec : Prop :=
  ∀ n, P5713439323909261935.a n = A303054 (n + 1)

end A303054

/-! ## A303054.P5430636399700243454

`A106195(eq[A100100(n), A109267(n)])²`
-/

namespace A303054.P5430636399700243454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A303054.P5430636399700243454

namespace A303054

/-- `A106195(eq[A100100(n), A109267(n)])²` -/
def P5430636399700243454.Spec : Prop :=
  ∀ n, P5430636399700243454.a n = A303054 (n + 1)

end A303054

/-! ## A303054.P10447776164510214248

`A247023(eq[A100100(n), A109267(n)])²`
-/

namespace A303054.P10447776164510214248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247023 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A303054.P10447776164510214248

namespace A303054

/-- `A247023(eq[A100100(n), A109267(n)])²` -/
def P10447776164510214248.Spec : Prop :=
  ∀ n, P10447776164510214248.a n = A303054 (n + 1)

end A303054

/-! ## A303054.P3013039268739439723

`A212633(A002264(n)+A000124(n))²`
-/

namespace A303054.P3013039268739439723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (A002264 n + A000124 n).toNat ^ 2

end

end A303054.P3013039268739439723

namespace A303054

/-- `A212633(A002264(n)+A000124(n))²` -/
def P3013039268739439723.Spec : Prop :=
  ∀ n, P3013039268739439723.a n = A303054 (n + 1)

end A303054

/-! ## A303054.P9359299414156376024

`A212633(A008620(n)+A000217(n))²`
-/

namespace A303054.P9359299414156376024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (A008620 n + A000217 n).toNat ^ 2

end

end A303054.P9359299414156376024

namespace A303054

/-- `A212633(A008620(n)+A000217(n))²` -/
def P9359299414156376024.Spec : Prop :=
  ∀ n, P9359299414156376024.a n = A303054 (n + 1)

end A303054

/-!
# A303056: G.f. A(x) satisfies: 1 = Sum_{n>=0} ((1+x)^n - A(x))^n.

The programs for A303056, there is no canonical definition to state claims against.
-/

/-! ## A303056.P9705493850291883760

`A156684(A143415(n)+5)`
-/

namespace A303056.P9705493850291883760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156684 (A143415 n + 5).toNat

end

end A303056.P9705493850291883760

/-! ## A303056.P5868433996652111911

`n^n-A257808(A023882(n))`
-/

namespace A303056.P5868433996652111911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - A257808 (A023882 n).toNat

end

end A303056.P5868433996652111911

/-!
# A303057: G.f. A(x) satisfies: A(x) = Sum_{n>=0} ((1+x)^n - 1)^n / A(x)^n.

The programs for A303057, there is no canonical definition to state claims against.
-/

/-! ## A303057.P5251710876050503436

`A143827(A293160(∑[n]))`
-/

namespace A303057.P5251710876050503436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143827 (A293160 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A303057.P5251710876050503436

/-! ## A303057.P364690624625256411

`A004277(A307375(n))-A135921(n)`
-/

namespace A303057.P364690624625256411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A307375 n).toNat - A135921 n

end

end A303057.P364690624625256411

/-!
# A303058: G.f. A(x) satisfies: A(x) = Sum_{n>=0} (1+x)^(n^2) * x^n / A(x)^n.

The programs for A303058, there is no canonical definition to state claims against.
-/

/-! ## A303058.P8738288260598686517

`∑{#}[n, (-1)^(n-#)*C(n, #)*A301927(#)]`
-/

namespace A303058.P8738288260598686517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A301927 k : ℚ)

end

end A303058.P8738288260598686517

/-! ## A303058.P11847883404291123125

`A401864(A270789(n))`
-/

namespace A303058.P11847883404291123125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401864 (A270789 n).toNat

end

end A303058.P11847883404291123125

/-! ## A303058.P7949599948941283872

`A218654(A003319(n))+1`
-/

namespace A303058.P7949599948941283872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218654 (A003319 n).toNat + 1

end

end A303058.P7949599948941283872

/-! ## A303058.P9322057628072711685

`A111856(A109081(n+1))+1`
-/

namespace A303058.P9322057628072711685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111856 (A109081 (n + 1)).toNat + 1

end

end A303058.P9322057628072711685

/-!
# A303059: G.f. A(x) satisfies: x = Sum_{n>=1} (-1)^(n-1) * x^(2*n-1)*A(x) / (1 + x^(2*n-1)*A(x)).

The programs for A303059, there is no canonical definition to state claims against.
-/

/-! ## A303059.P4846310753720365857

`A371587(A267045(n))`
-/

namespace A303059.P4846310753720365857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371587 (A267045 n).toNat

end

end A303059.P4846310753720365857

/-! ## A303059.P17530377590452497044

`A054404(A243238(n+1)+A000079(n))`
-/

namespace A303059.P17530377590452497044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A243238 (n + 1) + A000079 n).toNat

end

end A303059.P17530377590452497044

/-! ## A303059.P15758076474522456091

`A100617(A149850(n))`
-/

namespace A303059.P15758076474522456091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A149850 n).toNat

end

end A303059.P15758076474522456091

/-! ## A303059.P14782633789337157881

`A226164(A148843(n))`
-/

namespace A303059.P14782633789337157881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226164 (A148843 n).toNat

end

end A303059.P14782633789337157881

/-! ## A303059.P16072569525489051113

`A227568(A149425(n))`
-/

namespace A303059.P16072569525489051113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A149425 n).toNat

end

end A303059.P16072569525489051113

/-!
# A303060: G.f. A(x) satisfies: [x^(n-1)] (1+x)^(n^2) / A(x)^n = 0 for n>1.

The programs for A303060, there is no canonical definition to state claims against.
-/

/-! ## A303060.P15771381367534029053

`A239312(A098481(n))+A067029(n+1)`
-/

namespace A303060.P15771381367534029053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239312 (A098481 n).toNat + A067029 (n + 1)

end

end A303060.P15771381367534029053

/-!
# A303061: G.f. A(x) satisfies: [x^(n-1)] (1+x)^(n*(n-1)) / A(x)^n = 0 for n>1.

The programs for A303061, there is no canonical definition to state claims against.
-/

/-! ## A303061.P16008810381046129910

`A303060(n)-a(n-1)` with `a(0)=1`
-/

namespace A303061.P16008810381046129910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A303060 n - a (n - 1)

end

end A303061.P16008810381046129910

/-! ## A303061.P9385683365100821276

`or(1, A008615(A052746(n)))`
-/

namespace A303061.P9385683365100821276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008615 (A052746 n).toNat)

end

end A303061.P9385683365100821276

/-!
# A303062: G.f. A(x) satisfies: [x^(n-1)] (1 + x*A(x)^(n-1))^n / A(x)^n = 0 for n>1.

The programs for A303062, there is no canonical definition to state claims against.
-/

/-! ## A303062.P7381644578575219636

`floor(sqrt(A014190((n+1)^(n-1)+1)))`
-/

namespace A303062.P7381644578575219636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A014190 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1)).toNat)

end

end A303062.P7381644578575219636

/-! ## A303062.P15658754729958147075

`round(sqrt(A014190((n+1)^(n-1))+1))`
-/

namespace A303062.P15658754729958147075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A014190 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat + 1 : ℝ))

end

end A303062.P15658754729958147075

/-!
# A303063: G.f. A(x) satisfies: [x^(n-1)] (1 + x*A(x)^n)^n / A(x)^n = 0 for n>1.

The programs for A303063, there is no canonical definition to state claims against.
-/

/-! ## A303063.P15615987893189502395

`A097337(A302698(2*n+1)+n^n+1)`
-/

namespace A303063.P15615987893189502395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A302698 (2 * n + 1) + (n ^ n : ℤ) + 1).toNat

end

end A303063.P15615987893189502395

/-! ## A303063.P4950242202638141724

`A178964(n)+A010848(A182957(n))`
-/

namespace A303063.P4950242202638141724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178964 n + A010848 (A182957 n).toNat

end

end A303063.P4950242202638141724

/-!
# A303064: O.g.f. A(x) satisfies: A(x) = 1 + Integral (x/A(x)^4)' / (x/A(x)^7)' dx.

The programs for A303064, there is no canonical definition to state claims against.
-/

/-! ## A303064.P17768929454865040589

`A161122(n)+A146402(A000111(n))`
-/

namespace A303064.P17768929454865040589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161122 n + A146402 (A000111 n).toNat

end

end A303064.P17768929454865040589

/-! ## A303064.P8627918874766873826

`A161122(n)+A146402(A011782(n))`
-/

namespace A303064.P8627918874766873826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161122 n + A146402 (A011782 n).toNat

end

end A303064.P8627918874766873826

/-!
# A303065: Number of numbers < n whose binary representation has the same difference between the numbers of 0's and 1's as n does.

The programs for A303065, there is no canonical definition to state claims against.
-/

/-! ## A303065.P10333496929681109475

`A003056(A025480(n))%A225985(A132922(n+1))`
-/

namespace A303065.P10333496929681109475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A025480 n).toNat) (A225985 (A132922 (n + 1)).toNat)

end

end A303065.P10333496929681109475

/-! ## A303065.P18345100827423680264

`A001222(gcd(A001700(n), A122228(n)))`
-/

namespace A303065.P18345100827423680264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A001700 n) (A122228 n))

end

end A303065.P18345100827423680264

/-! ## A303065.P5623481866324782422

`A218585(n+1)%A299767(A182885(n))`
-/

namespace A303065.P5623481866324782422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218585 (n + 1)) (A299767 (A182885 n).toNat)

end

end A303065.P5623481866324782422

/-! ## A303065.P3115048047474934334

`xor(A007814(A001405(n)), A288106(n+1))`
-/

namespace A303065.P3115048047474934334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007814 (A001405 n).toNat) (A288106 (n + 1))

end

end A303065.P3115048047474934334

/-! ## A303065.P11066816896112318266

`and(A094390(A011782(n)), A392369(n))`
-/

namespace A303065.P11066816896112318266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094390 (A011782 n).toNat) (A392369 n)

end

end A303065.P11066816896112318266

/-!
# A303066: Number of minimum and minimal total dominating sets in the n-Mycielski graph.

The programs for A303066, there is no canonical definition to state claims against.
-/

/-! ## A303066.P8018005466977477883

`floor(∏[A026622(n)]/2)`
-/

namespace A303066.P8018005466977477883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A303066.P8018005466977477883

/-!
# A303067: Number of total dominating sets in the n-Mycielski graph.

The programs for A303067, there is no canonical definition to state claims against.
-/

/-! ## A303067.P13303987453134405378

`A287432(n+1)-A130706(n)`
-/

namespace A303067.P13303987453134405378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287432 (n + 1) - A130706 n

end

end A303067.P13303987453134405378

/-!
# A303070: a(n) = [x^n] (1/(1 - x))*Product_{k>=1} 1/(1 - x^k)^n.

The programs for A303070, there is no canonical definition to state claims against.
-/

/-! ## A303070.P17027280484869168723

`A210764(C(n+n+1, 2)+n)`
-/

namespace A303070.P17027280484869168723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210764 (Nat.choose (n + n + 1) 2 + n)

end

end A303070.P17027280484869168723

/-! ## A303070.P3336448223696720098

`∑{#}[n, A144064(C(#+n+1, 2)+#)]`
-/

namespace A303070.P3336448223696720098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A144064 (Nat.choose (k + n + 1) 2 + k)

end

end A303070.P3336448223696720098

/-! ## A303070.P2364392689415057849

`A210764(∑[4*n])`
-/

namespace A303070.P2364392689415057849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210764 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303070.P2364392689415057849

/-! ## A303070.P8350169196820606360

`record[A210764(n*A008619(n))]`
-/

namespace A303070.P8350169196820606360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210764 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303070.P8350169196820606360

/-! ## A303070.P1444463453277143180

`record[A210764(n*A028242(n))]`
-/

namespace A303070.P1444463453277143180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210764 ((n : ℤ) * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303070.P1444463453277143180

/-! ## A303070.P11685676456823760965

`record[A210764(gcd(n, A114327(n)))]`
-/

namespace A303070.P11685676456823760965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210764 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303070.P11685676456823760965

/-! ## A303070.P17701089212386711369

`record[gcd(A210764(n), A288530(n))]`
-/

namespace A303070.P17701089212386711369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210764 n) (A288530 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303070.P17701089212386711369

/-!
# A303071: a(n) = [x^n] (1/(1 - x))*Product_{k>=1} (1 + x^k)^n.

The programs for A303071, there is no canonical definition to state claims against.
-/

/-! ## A303071.P317592738231432953

`∑{#}[n, A286335(C(#+n+1, 2)+#)]`
-/

namespace A303071.P317592738231432953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A286335 (Nat.choose (k + n + 1) 2 + k)

end

end A303071.P317592738231432953

/-! ## A303071.P306017757179991357

`A002265(A006318(n)+A001576(n))`
-/

namespace A303071.P306017757179991357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A006318 n + A001576 n).toNat

end

end A303071.P306017757179991357

/-! ## A303071.P9719149219549266327

`A004526(A007582(n)+A001003(n))`
-/

namespace A303071.P9719149219549266327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A007582 n + A001003 n).toNat

end

end A303071.P9719149219549266327

/-!
# A303072: Number of minimal total dominating sets in the n-ladder graph.

The programs for A303072, the canonical program `A303072.P14683285584780554309` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303072 has offset 1).

The definition of A303072 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303072.P14683285584780554309

`A253412(n+1)²`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A303072

/-- `A253412(n+1)²` -/
def P14683285584780554309.Spec : Prop :=
  ∀ n, P14683285584780554309.a n = A303072 (n + 1)

theorem P14683285584780554309.correct : P14683285584780554309.Spec := by
  intro n
  simp only [A303072, Nat.add_sub_cancel]

end A303072

/-! ## A303072.P15546516991658679568

`A253412(A008619(2*n))^2`
-/

namespace A303072.P15546516991658679568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253412 (A008619 (2 * n)).toNat ^ 2

end

end A303072.P15546516991658679568

namespace A303072

/-- `A253412(A008619(2*n))^2` -/
def P15546516991658679568.Spec : Prop :=
  ∀ n, P15546516991658679568.a n = A303072 (n + 1)

end A303072

/-! ## A303072.P17084224475930133006

`(A143438(n+4)-A143438(n))²`
-/

namespace A303072.P17084224475930133006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A143438 (n + 4) - A143438 n) ^ 2

end

end A303072.P17084224475930133006

namespace A303072

/-- `(A143438(n+4)-A143438(n))²` -/
def P17084224475930133006.Spec : Prop :=
  ∀ n, P17084224475930133006.a n = A303072 (n + 1)

end A303072

/-! ## A303072.P14264022552543576396

`A253412(1+n)*A253412(n+1)`
-/

namespace A303072.P14264022552543576396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253412 (1 + n) * A253412 (n + 1)

end

end A303072.P14264022552543576396

namespace A303072

/-- `A253412(1+n)*A253412(n+1)` -/
def P14264022552543576396.Spec : Prop :=
  ∀ n, P14264022552543576396.a n = A303072 (n + 1)

theorem P14264022552543576396.correct : P14264022552543576396.Spec := by
  intro n
  simp only [A303072, Nat.add_sub_cancel, A303072.P14264022552543576396.a, A303072.P14683285584780554309.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A303072

/-! ## A303072.P6716752659235629438

`(A143438(A028310(n))-record[A143438(n)])²`
-/

namespace A303072.P6716752659235629438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A143438 (A028310 n).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2

end

end A303072.P6716752659235629438

namespace A303072

/-- `(A143438(A028310(n))-record[A143438(n)])²` -/
def P6716752659235629438.Spec : Prop :=
  ∀ n, P6716752659235629438.a n = A303072 (n + 1)

end A303072

/-!
# A303073: L.g.f.: log(1 + Sum_{k>=1} prime(k)*x^k) = Sum_{n>=1} a(n)*x^n/n.

The programs for A303073, there is no canonical definition to state claims against.
-/

/-! ## A303073.P16608878378023153748

`∑{d}[n+1, #*A030010(#)]`
-/

namespace A303073.P16608878378023153748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A030010 d

end

end A303073.P16608878378023153748

/-!
# A303074: Expansion of Product_{n>=1} (1 + (9*x)^n)^(1/3).

The programs for A303074, there is no canonical definition to state claims against.
-/

/-! ## A303074.P10389435936497154184

`lcm(A125824(n), A371536(n+1))`
-/

namespace A303074.P10389435936497154184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A125824 n) (A371536 (n + 1))

end

end A303074.P10389435936497154184

/-!
# A303075: Lexicographically earliest sequence of distinct positive terms such that for any n > 0, the binary digits of a(n) appear in order but not necessarily as consecutive digits in the binary representation of the n-th prime number.

The programs for A303075, there is no canonical definition to state claims against.
-/

/-! ## A303075.P13306087872720528657

`fo[A303076(n+1)-1]+1`
-/

namespace A303075.P13306087872720528657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303076 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A303075.P13306087872720528657

/-!
# A303076: Inverse permutation to A303075.

The programs for A303076, there is no canonical definition to state claims against.
-/

/-! ## A303076.P3865164134397225767

`fo[A303075(n+1)-1]+1`
-/

namespace A303076.P3865164134397225767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303075 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A303076.P3865164134397225767

/-! ## A303076.P2430806189660291972

`xor(A110504(A278385(n+1)), A298847(n+1))`
-/

namespace A303076.P2430806189660291972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110504 (A278385 (n + 1)).toNat) (A298847 (n + 1))

end

end A303076.P2430806189660291972

/-!
# A303077: a(1) = 1, and for n > 1, a(n) is the greatest prime number whose binary digits appear in order but not necessarily as consecutive digits in the binary representation of n.

The programs for A303077, there is no canonical definition to state claims against.
-/

/-! ## A303077.P3235966482941119948

`A039634((n+1)^A290104(n+1))`
-/

namespace A303077.P3235966482941119948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A290104 (n + 1) : ℤ))).toNat

end

end A303077.P3235966482941119948

/-! ## A303077.P16087006925109319770

`A006530(lcm((n+1)*∏{p}[n+1, #], A116882(n+1)))`
-/

namespace A303077.P16087006925109319770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℤ) (A116882 (n + 1)))

end

end A303077.P16087006925109319770

/-! ## A303077.P17884510385087564960

`A285324(A037019(n+1))`
-/

namespace A303077.P17884510385087564960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285324 (A037019 (n + 1)).toNat

end

end A303077.P17884510385087564960

/-! ## A303077.P6706391321919699131

`A006530(A332030(n+1))`
-/

namespace A303077.P6706391321919699131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A332030 (n + 1)).toNat

end

end A303077.P6706391321919699131

/-! ## A303077.P14148065323848446963

`A325163(A278220(n+1))`
-/

namespace A303077.P14148065323848446963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325163 (A278220 (n + 1)).toNat

end

end A303077.P14148065323848446963

/-!
# A303078: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303078, there is no canonical definition to state claims against.
-/

/-! ## A303078.P5266359779904525837

`A303084(∑[4*n]+1)`
-/

namespace A303078.P5266359779904525837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303078.P5266359779904525837

/-! ## A303078.P14499688775365465602

`record[A303084(Δ[A235355(n)])]`
-/

namespace A303078.P14499688775365465602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303078.P14499688775365465602

/-! ## A303078.P6171664369863494482

`record[A303084(A330613(n+1))]`
-/

namespace A303078.P6171664369863494482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303078.P6171664369863494482

/-! ## A303078.P12909086655815023123

`record[A303084(A363267(n+1))]`
-/

namespace A303078.P12909086655815023123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A363267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303078.P12909086655815023123

/-!
# A303079: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303079, there is no canonical definition to state claims against.
-/

/-! ## A303079.P17016812295020460754

`A303084(∑[n+3]+1)`
-/

namespace A303079.P17016812295020460754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303079.P17016812295020460754

/-! ## A303079.P5595517186347332520

`record[A303084(A128373(n+2))]`
-/

namespace A303079.P5595517186347332520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A128373 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303079.P5595517186347332520

/-!
# A303080: Number of n X 4 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303080, there is no canonical definition to state claims against.
-/

/-! ## A303080.P4766609590831636130

`A303084(A141214(n+1))`
-/

namespace A303080.P4766609590831636130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A141214 (n + 1)).toNat

end

end A303080.P4766609590831636130

/-!
# A303081: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303081, there is no canonical definition to state claims against.
-/

/-! ## A303081.P10944927117063283983

`A303084(Δ[A264443(n)])`
-/

namespace A303081.P10944927117063283983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (f1 (n + 1) - f1 n).toNat

end

end A303081.P10944927117063283983

/-!
# A303082: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303082, there is no canonical definition to state claims against.
-/

/-! ## A303082.P10100690667379529240

`A303084(A052905(n+3))`
-/

namespace A303082.P10100690667379529240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A052905 (n + 3)).toNat

end

end A303082.P10100690667379529240

/-!
# A303083: Number of n X 7 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303083, there is no canonical definition to state claims against.
-/

/-! ## A303083.P1084614290315709239

`A303084(A055999(n+4))`
-/

namespace A303083.P1084614290315709239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A055999 (n + 4)).toNat

end

end A303083.P1084614290315709239

/-!
# A303084: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303084, there is no canonical definition to state claims against.
-/

/-! ## A303084.P13226588626612215889

`A302367(n+1)+A006927(A028326(n))`
-/

namespace A303084.P13226588626612215889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (n + 1) + A006927 (A028326 n).toNat

end

end A303084.P13226588626612215889

/-! ## A303084.P16433114093988387893

`A302367(n+1)+A014707(A022171(n))`
-/

namespace A303084.P16433114093988387893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (n + 1) + A014707 (A022171 n).toNat

end

end A303084.P16433114093988387893

/-! ## A303084.P5034212260739944931

`A302367(n+1)+A025465(A022345(n))`
-/

namespace A303084.P5034212260739944931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (n + 1) + A025465 (A022345 n).toNat

end

end A303084.P5034212260739944931

/-! ## A303084.P13849021906872821635

`A302367(n+1)+A025465(A023105(n))`
-/

namespace A303084.P13849021906872821635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (n + 1) + A025465 (A023105 n).toNat

end

end A303084.P13849021906872821635

/-! ## A303084.P16279841550340014868

`A302367(n+1)+A055641(A022112(n))`
-/

namespace A303084.P16279841550340014868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (n + 1) + A055641 (A022112 n).toNat

end

end A303084.P16279841550340014868

/-!
# A303085: Number of 3Xn 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303085, there is no canonical definition to state claims against.
-/

/-! ## A303085.P11735162468658893728

`A303084(∑[n+2]+4)`
-/

namespace A303085.P11735162468658893728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303085.P11735162468658893728

/-!
# A303086: Number of 4Xn 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303086, there is no canonical definition to state claims against.
-/

/-! ## A303086.P3187864749503775455

`A303084(C(n+5, 2)-n)`
-/

namespace A303086.P3187864749503775455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (Nat.choose (n + 5) 2 - n)

end

end A303086.P3187864749503775455

/-!
# A303087: Number of 5Xn 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303087, there is no canonical definition to state claims against.
-/

/-! ## A303087.P3215311038514801542

`A303084(A155212(n)+13)`
-/

namespace A303087.P3215311038514801542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A155212 n + 13).toNat

end

end A303087.P3215311038514801542

/-!
# A303088: Number of 6Xn 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303088, there is no canonical definition to state claims against.
-/

/-! ## A303088.P9063616571806074510

`A303084(A056115(n)+21)`
-/

namespace A303088.P9063616571806074510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A056115 n + 21).toNat

end

end A303088.P9063616571806074510

/-!
# A303089: Number of 7Xn 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303089, there is no canonical definition to state claims against.
-/

/-! ## A303089.P9369647744120056655

`A303084(A167487(n+5))`
-/

namespace A303089.P9369647744120056655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A167487 (n + 5)).toNat

end

end A303089.P9369647744120056655

/-!
# A303092: Balanced primes of order one ending in 1.

The programs for A303092, there is no canonical definition to state claims against.
-/

/-! ## A303092.P426433586072729859

`filter[A006562(n+1), #%10]`
-/

namespace A303092.P426433586072729859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 10 = 1) n)

end

end A303092.P426433586072729859

/-! ## A303092.P17532741948511095077

`∩[A006562(n+1), A216309(n+1)]`
-/

namespace A303092.P17532741948511095077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303092.P17532741948511095077

/-! ## A303092.P6254324280742419962

`∩[A216309(n+1), A225494(n+1)]`
-/

namespace A303092.P6254324280742419962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303092.P6254324280742419962

/-! ## A303092.P4096083080800045430

`∩[A075540(n+1), A216309(n+1)]`
-/

namespace A303092.P4096083080800045430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303092.P4096083080800045430

/-! ## A303092.P10392729273261333301

`∩[A216124(n+1), A216309(n+1)]`
-/

namespace A303092.P10392729273261333301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303092.P10392729273261333301

/-! ## A303092.P13175748817673683975

`p?[A093667(A049511(n+1)-1)]`
-/

namespace A303092.P13175748817673683975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (A049511 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A303092.P13175748817673683975

/-!
# A303093: Balanced primes of order one ending in 3.

The programs for A303093, there is no canonical definition to state claims against.
-/

/-! ## A303093.P14856859480272107752

`∩[A006562(n+1), A030431(n+1)]`
-/

namespace A303093.P14856859480272107752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303093.P14856859480272107752

/-! ## A303093.P10494810301989422911

`∩[A030431(n+1), A225494(n+1)]`
-/

namespace A303093.P10494810301989422911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303093.P10494810301989422911

/-! ## A303093.P3139981382436143613

`∩[A030431(n+1), A075540(n+1)]`
-/

namespace A303093.P3139981382436143613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303093.P3139981382436143613

/-! ## A303093.P4979048523640249770

`∩[A004617(n+1), A006562(n+1)]`
-/

namespace A303093.P4979048523640249770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303093.P4979048523640249770

/-! ## A303093.P11610683041312304648

`∩[A006562(n+1), A017305(n)]`
-/

namespace A303093.P11610683041312304648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303093.P11610683041312304648

/-! ## A303093.P1005953261433116362

`∩[A030431(n+1), A145025(n+1)]`
-/

namespace A303093.P1005953261433116362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303093.P1005953261433116362

/-! ## A303093.P7616278943286961478

`∩[A030431(n+1), A213063(n+1)]`
-/

namespace A303093.P7616278943286961478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303093.P7616278943286961478

/-! ## A303093.P15616484615834869299

`∩[A006562(n+1), A277590(n+1)]`
-/

namespace A303093.P15616484615834869299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303093.P15616484615834869299

/-! ## A303093.P14187440492774733302

`filter[A006562(n+1), A185706(#)]`
-/

namespace A303093.P14187440492774733302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A303093.P14187440492774733302

/-! ## A303093.P2553794207651801104

`filter[A075540(n+1), A185706(#)]`
-/

namespace A303093.P2553794207651801104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A303093.P2553794207651801104

/-! ## A303093.P17442087753727069973

`filter[A093667(n+1), A185706(#)]`
-/

namespace A303093.P17442087753727069973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A303093.P17442087753727069973

/-! ## A303093.P7030278533594099186

`filter[A145025(n+1), A185706(#)]`
-/

namespace A303093.P7030278533594099186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A303093.P7030278533594099186

/-! ## A303093.P7250068274171659352

`filter[A213063(n+1), A185706(#)]`
-/

namespace A303093.P7250068274171659352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A303093.P7250068274171659352

/-! ## A303093.P8399670757384985224

`filter[A225494(n+1), A185706(#)]`
-/

namespace A303093.P8399670757384985224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A303093.P8399670757384985224

/-! ## A303093.P10103019116468879679

`filter[A062839(n+3), A185706(#)]`
-/

namespace A303093.P10103019116468879679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062839 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A303093.P10103019116468879679

/-! ## A303093.P2552289858917825167

`p?[A011558(A006562(n+1)+2)+A006562(n+1)]`
-/

namespace A303093.P2552289858917825167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A006562 (n + 1) + 2).toNat + A006562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A303093.P2552289858917825167

/-!
# A303094: Balanced primes of order one ending in 7.

The programs for A303094, there is no canonical definition to state claims against.
-/

/-! ## A303094.P102521809311710691

`∩[A006562(n+1), A030432(n+1)]`
-/

namespace A303094.P102521809311710691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303094.P102521809311710691

/-! ## A303094.P9048343793183888116

`∩[A030432(n+1), A225494(n+1)]`
-/

namespace A303094.P9048343793183888116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303094.P9048343793183888116

/-! ## A303094.P17242353083461653845

`∩[A030432(n+1), A075540(n+1)]`
-/

namespace A303094.P17242353083461653845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303094.P17242353083461653845

/-! ## A303094.P1934780767314956387

`∩[A006562(n+1), A045380(n+1)]`
-/

namespace A303094.P1934780767314956387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303094.P1934780767314956387

/-! ## A303094.P3767750350520641836

`∩[A045380(n+1), A075540(n+1)]`
-/

namespace A303094.P3767750350520641836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303094.P3767750350520641836

/-! ## A303094.P5647736924292434809

`∩[A045380(n+1), A225494(n+1)]`
-/

namespace A303094.P5647736924292434809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303094.P5647736924292434809

/-! ## A303094.P166917735714634781

`∩[A006562(n+1), A090652(n+1)]`
-/

namespace A303094.P166917735714634781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303094.P166917735714634781

/-! ## A303094.P2124367502921229596

`∩[A004616(n+1), A006562(n+1)]`
-/

namespace A303094.P2124367502921229596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303094.P2124367502921229596

/-! ## A303094.P8856885654184269054

`∩[A030432(n+1), A062839(n+1)]`
-/

namespace A303094.P8856885654184269054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303094.P8856885654184269054

/-! ## A303094.P10280144177158805395

`∩[A045380(n+1), A062839(n+1)]`
-/

namespace A303094.P10280144177158805395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303094.P10280144177158805395

/-! ## A303094.P1261112127722735477

`∩[A006562(n+1), A017353(n)]`
-/

namespace A303094.P1261112127722735477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303094.P1261112127722735477

/-! ## A303094.P3309160381708408520

`∩[A006562(n+1), A160912(n+1)]`
-/

namespace A303094.P3309160381708408520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303094.P3309160381708408520

/-! ## A303094.P12656457301825880764

`∩[A030432(n+1), A145025(n+1)]`
-/

namespace A303094.P12656457301825880764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303094.P12656457301825880764

/-! ## A303094.P14325439021904019185

`∩[A045380(n+1), A145025(n+1)]`
-/

namespace A303094.P14325439021904019185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303094.P14325439021904019185

/-! ## A303094.P4145716309375057843

`∩[A030432(n+1), A213063(n+1)]`
-/

namespace A303094.P4145716309375057843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303094.P4145716309375057843

/-! ## A303094.P3069138022973047186

`∩[A045380(n+1), A213063(n+1)]`
-/

namespace A303094.P3069138022973047186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303094.P3069138022973047186

/-! ## A303094.P7622884410939425649

`∩[A006562(n+1), A277594(n+1)]`
-/

namespace A303094.P7622884410939425649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303094.P7622884410939425649

/-! ## A303094.P17949526241706254741

`filter[A006562(n+1), A185708(#)]`
-/

namespace A303094.P17949526241706254741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A303094.P17949526241706254741

/-! ## A303094.P4027098044941733903

`filter[A062839(n+1), A185708(#)]`
-/

namespace A303094.P4027098044941733903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A303094.P4027098044941733903

/-! ## A303094.P12767506873968939706

`filter[A075540(n+1), A185708(#)]`
-/

namespace A303094.P12767506873968939706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A303094.P12767506873968939706

/-!
# A303095: Balanced primes of order one ending in 9.

The programs for A303095, there is no canonical definition to state claims against.
-/

/-! ## A303095.P8730354616833782871

`∩[A006562(n+1), A216312(n+1)]`
-/

namespace A303095.P8730354616833782871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303095.P8730354616833782871

/-! ## A303095.P15640152512830896677

`∩[A216312(n+1), A225494(n+1)]`
-/

namespace A303095.P15640152512830896677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303095.P15640152512830896677

/-! ## A303095.P16845869680522795482

`∩[A000040(A066875(n+1)), A216312(n+1)]`
-/

namespace A303095.P16845869680522795482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A066875 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303095.P16845869680522795482

/-! ## A303095.P13695858446072326868

`∩[A093667(A064113(n+1)), A216312(n+1)]`
-/

namespace A303095.P13695858446072326868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (A064113 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303095.P13695858446072326868

/-! ## A303095.P10076448086598566264

`∩[A000040(A064113(n+1)+1), A216312(n+1)]`
-/

namespace A303095.P10076448086598566264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064113 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303095.P10076448086598566264

/-!
# A303096: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303096, there is no canonical definition to state claims against.
-/

/-! ## A303096.P11486813527070775552

`A303102(∑[4*n]+1)`
-/

namespace A303096.P11486813527070775552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303096.P11486813527070775552

/-!
# A303097: Number of n X 3 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303097, there is no canonical definition to state claims against.
-/

/-! ## A303097.P16648450442504601782

`A303102(∑[n+3]+1)`
-/

namespace A303097.P16648450442504601782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303097.P16648450442504601782

/-! ## A303097.P11408549375237256805

`record[A303102(A198464(n+1))]`
-/

namespace A303097.P11408549375237256805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303097.P11408549375237256805

/-! ## A303097.P17900844212207977568

`record[gcd(A055138(n), A303102(n+1))]`
-/

namespace A303097.P17900844212207977568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055138 n) (A303102 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303097.P17900844212207977568

/-!
# A303098: Number of n X 4 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303098, there is no canonical definition to state claims against.
-/

/-! ## A303098.P8171676489265719859

`A303102(A141214(n+1))`
-/

namespace A303098.P8171676489265719859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A141214 (n + 1)).toNat

end

end A303098.P8171676489265719859

/-!
# A303099: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303099, there is no canonical definition to state claims against.
-/

/-! ## A303099.P2671858102338632687

`A303102(Δ[A264443(n)])`
-/

namespace A303099.P2671858102338632687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (f1 (n + 1) - f1 n).toNat

end

end A303099.P2671858102338632687

