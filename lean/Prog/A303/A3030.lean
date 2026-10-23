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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

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

The programs for A303005, the canonical program `A303005.P5624457441058513140` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303005 has offset 1).

The definition of A303005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303005.P5624457441058513140

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=3, a(1)=5, a(2)=11`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303005

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P5624457441058513140.Spec : Prop :=
  ∀ n, (P5624457441058513140.a n : ℤ) = A303005 (n + 1)

theorem P5624457441058513140.correct : P5624457441058513140.Spec := by
  intro n
  simp only [A303005, Nat.add_sub_cancel]

end A303005

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

/-! ## A303005.P9832310748736909132

`A000213(n+1)+A001644(n+1)+A000213(n)`
-/

namespace A303005.P9832310748736909132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1) + (A001644 (n + 1) + A000213 n)

end

end A303005.P9832310748736909132

namespace A303005

/-- `A000213(n+1)+A001644(n+1)+A000213(n)` -/
def P9832310748736909132.Spec : Prop :=
  ∀ n, P9832310748736909132.a n = A303005 (n + 1)

end A303005

/-! ## A303005.P5547415822087124914

`A001644(n+1)+A141036(n+1)+A081172(n)`
-/

namespace A303005.P5547415822087124914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) + (A141036 (n + 1) + A081172 n)

end

end A303005.P5547415822087124914

namespace A303005

/-- `A001644(n+1)+A141036(n+1)+A081172(n)` -/
def P5547415822087124914.Spec : Prop :=
  ∀ n, P5547415822087124914.a n = A303005 (n + 1)

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

/-! ## A303011.P7840310520760877962

`lcm(2, A303016(Δ[A008778(n)]))`
-/

namespace A303011.P7840310520760877962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A303016 (f1 (n + 1) - f1 n).toNat)

end

end A303011.P7840310520760877962

/-! ## A303011.P7325350279416237243

`lcm(4, A303016(A034856(n+2)))`
-/

namespace A303011.P7325350279416237243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A303016 (A034856 (n + 2)).toNat)

end

end A303011.P7325350279416237243

/-! ## A303011.P7377470228158851193

`A303016(A034856(n+2))%A092759(n+1)`
-/

namespace A303011.P7377470228158851193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303016 (A034856 (n + 2)).toNat) (A092759 (n + 1))

end

end A303011.P7377470228158851193

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

/-! ## A303012.P2283420108610239920

`A303016(A141214(n+1))+char[15]`
-/

namespace A303012.P2283420108610239920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A141214 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303012.P2283420108610239920

/-! ## A303012.P5362758126350355433

`A303016(Δ[A034857(n+1)])+char[18]`
-/

namespace A303012.P5362758126350355433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303012.P5362758126350355433

/-! ## A303012.P1132935312580706075

`A303016(A055998(n+2))+A185284(n)`
-/

namespace A303012.P1132935312580706075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A055998 (n + 2)).toNat + A185284 n

end

end A303012.P1132935312580706075

/-! ## A303012.P17061022608470598943

`or(A051516(n+1), A303016(A055998(n+2)))`
-/

namespace A303012.P17061022608470598943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051516 (n + 1)) (A303016 (A055998 (n + 2)).toNat)

end

end A303012.P17061022608470598943

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

/-! ## A303013.P3940241721173143452

`A303016(Δ[A264443(n)])%A117422(3*n+2)`
-/

namespace A303013.P3940241721173143452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303016 (f1 (n + 1) - f1 n).toNat) (A117422 (3 * n + 2))

end

end A303013.P3940241721173143452

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

/-! ## A303014.P14603464934285478902

`A303016(A056119(n)+16)`
-/

namespace A303014.P14603464934285478902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A056119 n + 16).toNat

end

end A303014.P14603464934285478902

/-! ## A303014.P12789533262688387285

`A303016(eq[3, A219347(n)])`
-/

namespace A303014.P12789533262688387285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303014.P12789533262688387285

/-! ## A303014.P8536037514699469025

`A303016(eq[5, A193592(n)])`
-/

namespace A303014.P8536037514699469025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303014.P8536037514699469025

/-! ## A303014.P11223824736035667634

`A303016(eq[8, A258709(n)])`
-/

namespace A303014.P11223824736035667634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303014.P11223824736035667634

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

/-! ## A303015.P16389493516257904442

`A303016(A056121(n)+22)`
-/

namespace A303015.P16389493516257904442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A056121 n + 22).toNat

end

end A303015.P16389493516257904442

/-! ## A303015.P13842686263876320125

`A303016(eq[4, A219347(n)])`
-/

namespace A303015.P13842686263876320125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303015.P13842686263876320125

/-! ## A303015.P2643860237113529182

`A303016(eq[6, A193592(n)])`
-/

namespace A303015.P2643860237113529182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303015.P2643860237113529182

/-! ## A303015.P16259970092448692674

`A303016(∑[A020719(n)]+15)`
-/

namespace A303015.P16259970092448692674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (∑ j ∈ Finset.range (n + 1), f1 j + 15).toNat

end

end A303015.P16259970092448692674

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

/-! ## A303016.P17900865570753847415

`A302820(n+1)-A151755(A183562(n+5))`
-/

namespace A303016.P17900865570753847415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (n + 1) - A151755 (A183562 (n + 5)).toNat

end

end A303016.P17900865570753847415

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

/-! ## A303017.P10481980798163701400

`and(-1, A303016(A167614(n+1)))`
-/

namespace A303017.P10481980798163701400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A303016 (A167614 (n + 1)).toNat)

end

end A303017.P10481980798163701400

/-! ## A303017.P5206204389670577441

`A303016(A167614(n+1))+A025469(n)`
-/

namespace A303017.P5206204389670577441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A167614 (n + 1)).toNat + A025469 n

end

end A303017.P5206204389670577441

/-! ## A303017.P2101212017337712488

`A303016(A167614(n+1))+A185284(n)`
-/

namespace A303017.P2101212017337712488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A167614 (n + 1)).toNat + A185284 n

end

end A303017.P2101212017337712488

/-! ## A303017.P5201600488652139717

`A287091(n)*A303016(A167614(n+1))`
-/

namespace A303017.P5201600488652139717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287091 n * A303016 (A167614 (n + 1)).toNat

end

end A303017.P5201600488652139717

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

/-! ## A303018.P3659152377021578791

`A303016(A055999(n)+10)+char[18]`
-/

namespace A303018.P3659152377021578791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303018.P3659152377021578791

/-! ## A303018.P14338665004255796383

`A007318(C(2, n))*A303016(A055999(n)+10)`
-/

namespace A303018.P14338665004255796383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A303016 (A055999 n + 10).toNat

end

end A303018.P14338665004255796383

/-! ## A303018.P9157099854166743647

`A000041(floor(n/8))*A303016(A055999(n)+10)`
-/

namespace A303018.P9157099854166743647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊(n : ℚ) / 8⌋.toNat * A303016 (A055999 n + 10).toNat

end

end A303018.P9157099854166743647

/-! ## A303018.P10081693293210878898

`A000108(C(2, n+2))*A303016(A055999(n)+10)`
-/

namespace A303018.P10081693293210878898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A303016 (A055999 n + 10).toNat

end

end A303018.P10081693293210878898

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

/-! ## A303019.P7103412370834641381

`A303016(A155212(n)+13)`
-/

namespace A303019.P7103412370834641381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A155212 n + 13).toNat

end

end A303019.P7103412370834641381

/-! ## A303019.P17038611419333229257

`A303016(A056000(n)+15)`
-/

namespace A303019.P17038611419333229257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A056000 n + 15).toNat

end

end A303019.P17038611419333229257

/-! ## A303019.P5654672427898596933

`A303016(eq[7, A066657(n)])`
-/

namespace A303019.P5654672427898596933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303019.P5654672427898596933

/-! ## A303019.P9652512437314844377

`A303016(A166136(n+3)-1)`
-/

namespace A303019.P9652512437314844377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A166136 (n + 3) - 1).toNat

end

end A303019.P9652512437314844377

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

/-! ## A303020.P1807458788821824298

`A303016(A056115(n)+21)`
-/

namespace A303020.P1807458788821824298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A056115 n + 21).toNat

end

end A303020.P1807458788821824298

/-! ## A303020.P14122471280464004703

`A303016(A167499(n+4)+1)`
-/

namespace A303020.P14122471280464004703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A167499 (n + 4) + 1).toNat

end

end A303020.P14122471280464004703

/-! ## A303020.P16152398546600167147

`A303016(A167487(n+4)-1)`
-/

namespace A303020.P16152398546600167147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A167487 (n + 4) - 1).toNat

end

end A303020.P16152398546600167147

/-! ## A303020.P16236269309846859635

`A303016(A133263(n+5)+4)`
-/

namespace A303020.P16236269309846859635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A133263 (n + 5) + 4).toNat

end

end A303020.P16236269309846859635

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

/-! ## A303021.P11133896914019214495

`A303016(eq[11, A066657(n)])`
-/

namespace A303021.P11133896914019214495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303021.P11133896914019214495

/-! ## A303021.P13505662736675251484

`A303016(A167499(n+5)+2)`
-/

namespace A303021.P13505662736675251484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A167499 (n + 5) + 2).toNat

end

end A303021.P13505662736675251484

/-! ## A303021.P13728629340178013424

`A303016(A000217(n+6)+7)`
-/

namespace A303021.P13728629340178013424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A000217 (n + 6) + 7).toNat

end

end A303021.P13728629340178013424

/-! ## A303021.P14706909593836547313

`A303016(A034856(n+5)+9)`
-/

namespace A303021.P14706909593836547313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (A034856 (n + 5) + 9).toNat

end

end A303021.P14706909593836547313

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

/-! ## A303022.P16409306160380629905

`A100196(or(A254314(n), A309482(n)))`
-/

namespace A303022.P16409306160380629905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.lor (A254314 n) (A309482 n)).toNat

end

end A303022.P16409306160380629905

/-! ## A303022.P5304403663452599069

`A100196(xor(A254314(n), A309482(n)))`
-/

namespace A303022.P5304403663452599069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.xor (A254314 n) (A309482 n)).toNat

end

end A303022.P5304403663452599069

/-! ## A303022.P14120288316052652615

`A100196(or(A100196(n²), A254314(n)))`
-/

namespace A303022.P14120288316052652615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.lor (A100196 (n ^ 2)) (A254314 n)).toNat

end

end A303022.P14120288316052652615

/-! ## A303022.P10478196168112815988

`A100196(or(A076921(n+1), A254314(n)))`
-/

namespace A303022.P10478196168112815988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.lor (A076921 (n + 1)) (A254314 n)).toNat

end

end A303022.P10478196168112815988

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

/-! ## A303023.P18147135201240607023

`A001462(A133564(n+1)+A083309(n+1))`
-/

namespace A303023.P18147135201240607023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A133564 (n + 1) + A083309 (n + 1)).toNat

end

end A303023.P18147135201240607023

/-! ## A303023.P4137680442246206897

`A001462(A083309(n+1)+A013595(3*n+4))`
-/

namespace A303023.P4137680442246206897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A083309 (n + 1) + A013595 (3 * n + 4)).toNat

end

end A303023.P4137680442246206897

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

/-! ## A303023.P2971047326332758536

`A257639(A171711(n+1))`
-/

namespace A303023.P2971047326332758536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A171711 (n + 1)).toNat

end

end A303023.P2971047326332758536

/-!
# A303026: Matula-Goebel numbers of series-reduced anti-binary (no unary or binary branchings) rooted trees.

The programs for A303026, there is no canonical definition to state claims against.
-/

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

/-! ## A303026.P12930006296712660716

`A008574(A018547(n+1)%A018538(n+1))`
-/

namespace A303026.P12930006296712660716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (Int.tmod (A018547 (n + 1)) (A018538 (n + 1))).toNat

end

end A303026.P12930006296712660716

/-! ## A303026.P17463085190727817869

`A061392((A018170(n)+4*n)²)`
-/

namespace A303026.P17463085190727817869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 ((A018170 n + (4 * n : ℤ)) ^ 2).toNat

end

end A303026.P17463085190727817869

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

/-! ## A303031.P3063525118652536024

`A225645(A360592(n))`
-/

namespace A303031.P3063525118652536024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225645 (A360592 n).toNat

end

end A303031.P3063525118652536024

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

/-! ## A303032.P16183386801902274746

`A111857(∑[A003422(n+1)]+2)`
-/

namespace A303032.P16183386801902274746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111857 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A303032.P16183386801902274746

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

/-! ## A303034.P9865621786510830150

`A303040(n²+(n+1)²)/2^∑{digits}[n, #%C(n, #)]`
-/

namespace A303034.P9865621786510830150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303040 (n ^ 2 + (n + 1) ^ 2) : ℚ) / (2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum : ℚ)

end

end A303034.P9865621786510830150

/-! ## A303034.P7329964134058230896

`and(-1, A303040(A001844(n)))`
-/

namespace A303034.P7329964134058230896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A303040 (A001844 n).toNat)

end

end A303034.P7329964134058230896

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

/-! ## A303035.P852884537616179698

`or(2, A303040(Δ[A008778(n)]))`
-/

namespace A303035.P852884537616179698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A303040 (f1 (n + 1) - f1 n).toNat)

end

end A303035.P852884537616179698

/-! ## A303035.P17211792905692193859

`or(2, A303040(A034856(n+2)))`
-/

namespace A303035.P17211792905692193859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A303040 (A034856 (n + 2)).toNat)

end

end A303035.P17211792905692193859

/-! ## A303035.P11169199947710008199

`A303040(Δ[A008778(n)])+A008683(4*(n+1))`
-/

namespace A303035.P11169199947710008199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (f1 (n + 1) - f1 n).toNat + A008683 (4 * (n + 1))

end

end A303035.P11169199947710008199

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

/-! ## A303036.P4749578296633483991

`A303040(A027379(n+2))+char[17]`
-/

namespace A303036.P4749578296633483991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (A027379 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303036.P4749578296633483991

/-! ## A303036.P4854436614425132217

`lcm(A136755(n), A303040(A055998(n+2)))`
-/

namespace A303036.P4854436614425132217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A136755 n) (A303040 (A055998 (n + 2)).toNat)

end

end A303036.P4854436614425132217

/-! ## A303036.P5411843120101433014

`A303040(A055998(n+2))%A122239(n+1)`
-/

namespace A303036.P5411843120101433014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303040 (A055998 (n + 2)).toNat) (A122239 (n + 1))

end

end A303036.P5411843120101433014

/-! ## A303036.P2554948336761680810

`A303040(A027379(n+2))%A000108(n+4)`
-/

namespace A303036.P2554948336761680810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303040 (A027379 (n + 2)).toNat) (A000108 (n + 4))

end

end A303036.P2554948336761680810

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

/-! ## A303038.P3526998108485661979

`A303040(A302537(n)+15)`
-/

namespace A303038.P3526998108485661979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (A302537 n + 15).toNat

end

end A303038.P3526998108485661979

/-! ## A303038.P17745550438499966477

`A303040(A056119(n)+16)`
-/

namespace A303038.P17745550438499966477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (A056119 n + 16).toNat

end

end A303038.P17745550438499966477

/-! ## A303038.P1608617717508738043

`A303040(eq[3, A219347(n)])`
-/

namespace A303038.P1608617717508738043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303038.P1608617717508738043

/-! ## A303038.P14316507838521884865

`A303040(eq[5, A193592(n)])`
-/

namespace A303038.P14316507838521884865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303038.P14316507838521884865

/-!
# A303039: Number of n X 7 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303039, there is no canonical definition to state claims against.
-/

/-! ## A303039.P17808610279819254386

`A303040(A056121(n)+22)`
-/

namespace A303039.P17808610279819254386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (A056121 n + 22).toNat

end

end A303039.P17808610279819254386

/-! ## A303039.P1438944964210464931

`A303040(eq[4, A219347(n)])`
-/

namespace A303039.P1438944964210464931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303039.P1438944964210464931

/-! ## A303039.P619257484365553772

`A303040(eq[6, A193592(n)])`
-/

namespace A303039.P619257484365553772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303039.P619257484365553772

/-! ## A303039.P12853219794740254243

`A303040(Δ[A023551(n+2)])`
-/

namespace A303039.P12853219794740254243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (f1 (n + 1) - f1 n).toNat

end

end A303039.P12853219794740254243

/-! ## A303039.P700261037540501742

`A303040(A155212(n+3)+2)`
-/

namespace A303039.P700261037540501742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (A155212 (n + 3) + 2).toNat

end

end A303039.P700261037540501742

/-!
# A303040: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303040, there is no canonical definition to state claims against.
-/

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

/-! ## A303040.P16380089558959290786

`A302309(n+1)+A173920(A173917(n))`
-/

namespace A303040.P16380089558959290786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (n + 1) + A173920 (A173917 n).toNat

end

end A303040.P16380089558959290786

/-! ## A303040.P3757836214663155834

`A302309(n+1)+A185254(A133084(n+1))`
-/

namespace A303040.P3757836214663155834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (n + 1) + A185254 (A133084 (n + 1)).toNat

end

end A303040.P3757836214663155834

/-! ## A303040.P7870158656280438134

`A337546(A232459(n+1))+A302309(n+1)`
-/

namespace A303040.P7870158656280438134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337546 (A232459 (n + 1)).toNat + A302309 (n + 1)

end

end A303040.P7870158656280438134

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

/-! ## A303041.P13259447326956297288

`lcm(2, A303040(A167614(n+1)))`
-/

namespace A303041.P13259447326956297288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A303040 (A167614 (n + 1)).toNat)

end

end A303041.P13259447326956297288

/-! ## A303041.P8622873924782165711

`A303040(A167614(n+1))+A011736(n)`
-/

namespace A303041.P8622873924782165711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (A167614 (n + 1)).toNat + A011736 n

end

end A303041.P8622873924782165711

/-! ## A303041.P5086913863209281342

`A303040(A167614(n+1))+A025443(n)`
-/

namespace A303041.P5086913863209281342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (A167614 (n + 1)).toNat + A025443 n

end

end A303041.P5086913863209281342

/-! ## A303041.P7368128959495524676

`A303040(A167614(n+1))+A185255(n)`
-/

namespace A303041.P7368128959495524676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (A167614 (n + 1)).toNat + A185255 n

end

end A303041.P7368128959495524676

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

/-! ## A303042.P18156175116740415178

`or(char[2], A303040(A052905(n)+9))`
-/

namespace A303042.P18156175116740415178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A303040 (A052905 n + 9).toNat)

end

end A303042.P18156175116740415178

/-! ## A303042.P10284340545613346523

`A303040(Δ[A005586(n)]+5)+char[23]`
-/

namespace A303042.P10284340545613346523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (f1 (n + 1) - f1 n + 5).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303042.P10284340545613346523

/-! ## A303042.P13428679759558991243

`A303040(A000096(n+2)+5)%A000108(n+6)`
-/

namespace A303042.P13428679759558991243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303040 (A000096 (n + 2) + 5).toNat) (A000108 (n + 6))

end

end A303042.P13428679759558991243

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

/-! ## A303043.P2184697854686486851

`or(A010058(n), A303040(A167499(n+3)))`
-/

namespace A303043.P2184697854686486851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010058 n) (A303040 (A167499 (n + 3)).toNat)

end

end A303043.P2184697854686486851

/-! ## A303043.P16268782405242849375

`or(A303040(A000217(n+4)+5), A325954(n))`
-/

namespace A303043.P16268782405242849375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A303040 (A000217 (n + 4) + 5).toNat) (A325954 n)

end

end A303043.P16268782405242849375

/-! ## A303043.P16153904214963013040

`A303040(A000217(n+4)+5)+A000038(3*n+2)`
-/

namespace A303043.P16153904214963013040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (A000217 (n + 4) + 5).toNat + A000038 (3 * n + 2)

end

end A303043.P16153904214963013040

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

/-! ## A303044.P9147497041944088967

`A303040(A000217(n+5)+6)+char[19]`
-/

namespace A303044.P9147497041944088967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (A000217 (n + 5) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303044.P9147497041944088967

/-! ## A303044.P16260656121161418624

`A303040(A000096(n+4)+7)+(2*n)%2`
-/

namespace A303044.P16260656121161418624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (A000096 (n + 4) + 7).toNat + ((2 * n % 2 : ℕ) : ℤ)

end

end A303044.P16260656121161418624

/-! ## A303044.P17679639854662639590

`A000041(C(2, n+2))*A303040(A000217(n+5)+6)`
-/

namespace A303044.P17679639854662639590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A303040 (A000217 (n + 5) + 6).toNat

end

end A303044.P17679639854662639590

/-! ## A303044.P18111443088852272132

`A000108(C(2, n+2))*A303040(A000217(n+5)+6)`
-/

namespace A303044.P18111443088852272132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A303040 (A000217 (n + 5) + 6).toNat

end

end A303044.P18111443088852272132

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

The programs for A303051, there is no canonical definition to state claims against.
-/

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

/-! ## A303051.P744195638334500043

`(A098235(n+1)-A071068(n+1))*A008966(n+1)`
-/

namespace A303051.P744195638334500043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A098235 (n + 1) - A071068 (n + 1)) * A008966 (n + 1)

end

end A303051.P744195638334500043

/-! ## A303051.P17877068886503836303

`A098236(A385212(n+1))`
-/

namespace A303051.P17877068886503836303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (A385212 (n + 1)).toNat

end

end A303051.P17877068886503836303

/-! ## A303051.P16722226105216268590

`A098236(n*A008683(n+1)²+1)`
-/

namespace A303051.P16722226105216268590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 ((n : ℤ) * A008683 (n + 1) ^ 2 + 1).toNat

end

end A303051.P16722226105216268590

/-! ## A303051.P8306374586748661122

`A098236((n+1)^abs(A008683(n+1)))`
-/

namespace A303051.P8306374586748661122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (|A008683 (n + 1)| : ℤ))).toNat

end

end A303051.P8306374586748661122

/-! ## A303051.P7886865568215382648

`A098236((n+1)^A008683(n+1)²)`
-/

namespace A303051.P7886865568215382648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A008683 (n + 1) ^ 2 : ℤ))).toNat

end

end A303051.P7886865568215382648

/-! ## A303051.P14049121945275979825

`A098236(C(n+1, abs(A008683(n+1))))`
-/

namespace A303051.P14049121945275979825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (Nat.choose (n + 1) |A008683 (n + 1)|.toNat)

end

end A303051.P14049121945275979825

/-! ## A303051.P12851630890410215245

`A098236(n*and(1, A008683(n+1))+1)`
-/

namespace A303051.P12851630890410215245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 ((n : ℤ) * Int.land 1 (A008683 (n + 1)) + 1).toNat

end

end A303051.P12851630890410215245

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

/-! ## A303051.P16104359589185185375

`A008966(n+1)*A098236(n+1)`
-/

namespace A303051.P16104359589185185375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A098236 (n + 1)

end

end A303051.P16104359589185185375

/-! ## A303051.P3305085314165001981

`lcm(A008683(n+1), A098236(n+1))`
-/

namespace A303051.P3305085314165001981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (n + 1)) (A098236 (n + 1))

end

end A303051.P3305085314165001981

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

/-!
# A303052: Total area of all squares with squarefree side length |s - t|, such that n = s + t, and s < t, where s and t are positive integers.

The programs for A303052, the canonical program `A303052.P4381286405031386687` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303052 has offset 1).

The definition of A303052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303052.P4381286405031386687

`a(n-2)+((n-1)*A008683(n-1))²` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A303052

/-- `a(n-2)+((n-1)*A008683(n-1))²` -/
def P4381286405031386687.Spec : Prop :=
  ∀ n, P4381286405031386687.a n = A303052 (n + 1)

theorem P4381286405031386687.correct : P4381286405031386687.Spec := by
  intro n
  simp only [A303052, Nat.add_sub_cancel]

end A303052

/-!
# A303054: Number of minimum total dominating sets in the n-ladder graph.

The programs for A303054, the canonical program `A303054.P5112954172130356619` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303054 has offset 1).

The definition of A303054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303054.P5112954172130356619

`A347633(n+1)²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A303054

/-- `A347633(n+1)²` -/
def P5112954172130356619.Spec : Prop :=
  ∀ n, P5112954172130356619.a n = A303054 (n + 1)

theorem P5112954172130356619.correct : P5112954172130356619.Spec := by
  intro n
  simp only [A303054, Nat.add_sub_cancel]

end A303054

/-! ## A303054.P9743157516527664087

`A347633(n+1)^(2%A000217(n+10))`
-/

namespace A303054.P9743157516527664087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347633 (n + 1) : ℚ) ^ (Int.tmod 2 (A000217 (n + 10)) : ℤ)

end

end A303054.P9743157516527664087

namespace A303054

/-- `A347633(n+1)^(2%A000217(n+10))` -/
def P9743157516527664087.Spec : Prop :=
  ∀ n, P9743157516527664087.a n = (A303054 (n + 1) : ℚ)

end A303054

/-! ## A303054.P6405558146685922740

`A347633(n+1)^A020639(2*comp[3*n])`
-/

namespace A303054.P6405558146685922740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347633 (n + 1) : ℚ) ^ (A020639 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)

end

end A303054.P6405558146685922740

namespace A303054

/-- `A347633(n+1)^A020639(2*comp[3*n])` -/
def P6405558146685922740.Spec : Prop :=
  ∀ n, P6405558146685922740.a n = (A303054 (n + 1) : ℚ)

end A303054

/-! ## A303054.P4979708687323401734

`A347633(n+1)^A014963(A001316(n))`
-/

namespace A303054.P4979708687323401734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347633 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A303054.P4979708687323401734

namespace A303054

/-- `A347633(n+1)^A014963(A001316(n))` -/
def P4979708687323401734.Spec : Prop :=
  ∀ n, P4979708687323401734.a n = (A303054 (n + 1) : ℚ)

end A303054

/-! ## A303054.P3234441798794547510

`A347633(n+1)^A007947(A062383(n))`
-/

namespace A303054.P3234441798794547510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347633 (n + 1) : ℚ) ^ (A007947 (A062383 n).toNat : ℤ)

end

end A303054.P3234441798794547510

namespace A303054

/-- `A347633(n+1)^A007947(A062383(n))` -/
def P3234441798794547510.Spec : Prop :=
  ∀ n, P3234441798794547510.a n = (A303054 (n + 1) : ℚ)

end A303054

/-! ## A303054.P17545966667447318741

`A347633(n+1)^A000005(A328579(n))`
-/

namespace A303054.P17545966667447318741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347633 (n + 1) : ℚ) ^ (A000005 (A328579 n).toNat : ℤ)

end

end A303054.P17545966667447318741

namespace A303054

/-- `A347633(n+1)^A000005(A328579(n))` -/
def P17545966667447318741.Spec : Prop :=
  ∀ n, P17545966667447318741.a n = (A303054 (n + 1) : ℚ)

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

/-! ## A303054.P13611306370032055935

`A347633(n+1)^A000040(A038500(n+1))`
-/

namespace A303054.P13611306370032055935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347633 (n + 1) : ℚ) ^ (A000040 (A038500 (n + 1)).toNat : ℤ)

end

end A303054.P13611306370032055935

namespace A303054

/-- `A347633(n+1)^A000040(A038500(n+1))` -/
def P13611306370032055935.Spec : Prop :=
  ∀ n, P13611306370032055935.a n = (A303054 (n + 1) : ℚ)

end A303054

/-! ## A303054.P11280781592470619625

`A347633(n+1)^A000005(A002476(n+1))`
-/

namespace A303054.P11280781592470619625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347633 (n + 1) : ℚ) ^ (A000005 (A002476 (n + 1)).toNat : ℤ)

end

end A303054.P11280781592470619625

namespace A303054

/-- `A347633(n+1)^A000005(A002476(n+1))` -/
def P11280781592470619625.Spec : Prop :=
  ∀ n, P11280781592470619625.a n = (A303054 (n + 1) : ℚ)

end A303054

/-! ## A303054.P16696221077960787423

`A347633(n+1)^A099837(A166466(n+1))`
-/

namespace A303054.P16696221077960787423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347633 (n + 1) : ℚ) ^ (A099837 (A166466 (n + 1)).toNat : ℤ)

end

end A303054.P16696221077960787423

namespace A303054

/-- `A347633(n+1)^A099837(A166466(n+1))` -/
def P16696221077960787423.Spec : Prop :=
  ∀ n, P16696221077960787423.a n = (A303054 (n + 1) : ℚ)

end A303054

/-! ## A303054.P1948544503780540519

`A347633(n+1)^A099837(A130508(3*n+5))`
-/

namespace A303054.P1948544503780540519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347633 (n + 1) : ℚ) ^ (A099837 (A130508 (3 * n + 5)).toNat : ℤ)

end

end A303054.P1948544503780540519

namespace A303054

/-- `A347633(n+1)^A099837(A130508(3*n+5))` -/
def P1948544503780540519.Spec : Prop :=
  ∀ n, P1948544503780540519.a n = (A303054 (n + 1) : ℚ)

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

/-! ## A303054.P15069844090901538810

`A347633(n+1)^A053669(A347633(2*n+3))`
-/

namespace A303054.P15069844090901538810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347633 (n + 1) : ℚ) ^ (A053669 (A347633 (2 * n + 3)).toNat : ℤ)

end

end A303054.P15069844090901538810

namespace A303054

/-- `A347633(n+1)^A053669(A347633(2*n+3))` -/
def P15069844090901538810.Spec : Prop :=
  ∀ n, P15069844090901538810.a n = (A303054 (n + 1) : ℚ)

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

/-! ## A303058.P10633082325098261583

`A187188(A095148(n+1)+3)`
-/

namespace A303058.P10633082325098261583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A095148 (n + 1) + 3).toNat

end

end A303058.P10633082325098261583

/-! ## A303058.P4552471201825065294

`round(A065306(A279571(n))/(n+1))`
-/

namespace A303058.P4552471201825065294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A065306 (A279571 n).toNat : ℚ) / (n + 1 : ℚ))

end

end A303058.P4552471201825065294

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

/-! ## A303059.P8600125878037093040

`A054404(A238938(n+1)+A209755(n+2))`
-/

namespace A303059.P8600125878037093040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A238938 (n + 1) + A209755 (n + 2)).toNat

end

end A303059.P8600125878037093040

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

/-! ## A303071.P2702243611338068543

`A123108(A007582(n)+A001003(n))`
-/

namespace A303071.P2702243611338068543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A007582 n + A001003 n).toNat

end

end A303071.P2702243611338068543

/-!
# A303072: Number of minimal total dominating sets in the n-ladder graph.

The programs for A303072, the canonical program `A303072.P14683285584780554309` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303072 has offset 1).

The definition of A303072 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303072.P14683285584780554309

`A253412(n+1)²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A303072

/-- `A253412(n+1)²` -/
def P14683285584780554309.Spec : Prop :=
  ∀ n, P14683285584780554309.a n = A303072 (n + 1)

theorem P14683285584780554309.correct : P14683285584780554309.Spec := by
  intro n
  simp only [A303072, Nat.add_sub_cancel]

end A303072

/-! ## A303072.P4507362248964882773

`A253412(n+1)^A020639(2*(n+1))`
-/

namespace A303072.P4507362248964882773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253412 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A303072.P4507362248964882773

namespace A303072

/-- `A253412(n+1)^A020639(2*(n+1))` -/
def P4507362248964882773.Spec : Prop :=
  ∀ n, P4507362248964882773.a n = (A303072 (n + 1) : ℚ)

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

/-! ## A303072.P17242531660806124752

`A253412(A028310(n+1))*A253412(n+1)`
-/

namespace A303072.P17242531660806124752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253412 (A028310 (n + 1)).toNat * A253412 (n + 1)

end

end A303072.P17242531660806124752

namespace A303072

/-- `A253412(A028310(n+1))*A253412(n+1)` -/
def P17242531660806124752.Spec : Prop :=
  ∀ n, P17242531660806124752.a n = A303072 (n + 1)

end A303072

/-! ## A303072.P8159002705903753850

`A253412(n+1)^A000005(A002144(n+1))`
-/

namespace A303072.P8159002705903753850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253412 (n + 1) : ℚ) ^ (A000005 (A002144 (n + 1)).toNat : ℤ)

end

end A303072.P8159002705903753850

namespace A303072

/-- `A253412(n+1)^A000005(A002144(n+1))` -/
def P8159002705903753850.Spec : Prop :=
  ∀ n, P8159002705903753850.a n = (A303072 (n + 1) : ℚ)

end A303072

/-! ## A303072.P3602328810471265303

`A253412(n+1)^A000005(A002476(n+1))`
-/

namespace A303072.P3602328810471265303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253412 (n + 1) : ℚ) ^ (A000005 (A002476 (n + 1)).toNat : ℤ)

end

end A303072.P3602328810471265303

namespace A303072

/-- `A253412(n+1)^A000005(A002476(n+1))` -/
def P3602328810471265303.Spec : Prop :=
  ∀ n, P3602328810471265303.a n = (A303072 (n + 1) : ℚ)

end A303072

/-! ## A303072.P15158987981365229672

`A253412(n+1)^A000005(A054820(n+1))`
-/

namespace A303072.P15158987981365229672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253412 (n + 1) : ℚ) ^ (A000005 (A054820 (n + 1)).toNat : ℤ)

end

end A303072.P15158987981365229672

namespace A303072

/-- `A253412(n+1)^A000005(A054820(n+1))` -/
def P15158987981365229672.Spec : Prop :=
  ∀ n, P15158987981365229672.a n = (A303072 (n + 1) : ℚ)

end A303072

/-! ## A303072.P2134899930042886655

`A253412(n+1)^A000005(record[A014963(n+2)])`
-/

namespace A303072.P2134899930042886655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253412 (n + 1) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A303072.P2134899930042886655

namespace A303072

/-- `A253412(n+1)^A000005(record[A014963(n+2)])` -/
def P2134899930042886655.Spec : Prop :=
  ∀ n, P2134899930042886655.a n = (A303072 (n + 1) : ℚ)

end A303072

/-! ## A303072.P13977074656265956225

`A253412(n+1)^A001222(2*A095102(n+1))`
-/

namespace A303072.P13977074656265956225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253412 (n + 1) : ℚ) ^ (A001222 (2 * A095102 (n + 1)).toNat : ℤ)

end

end A303072.P13977074656265956225

namespace A303072

/-- `A253412(n+1)^A001222(2*A095102(n+1))` -/
def P13977074656265956225.Spec : Prop :=
  ∀ n, P13977074656265956225.a n = (A303072 (n + 1) : ℚ)

end A303072

/-! ## A303072.P1752096306266186029

`A253412(n+1)^A302402(A334184(n+1))`
-/

namespace A303072.P1752096306266186029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253412 (n + 1) : ℚ) ^ (A302402 (A334184 (n + 1)).toNat : ℤ)

end

end A303072.P1752096306266186029

namespace A303072

/-- `A253412(n+1)^A302402(A334184(n+1))` -/
def P1752096306266186029.Spec : Prop :=
  ∀ n, P1752096306266186029.a n = (A303072 (n + 1) : ℚ)

end A303072

/-! ## A303072.P902013003711911525

`A253412(n+1)^A000040(A007318(∑[n]))`
-/

namespace A303072.P902013003711911525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253412 (n + 1) : ℚ) ^ (A000040 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ)

end

end A303072.P902013003711911525

namespace A303072

/-- `A253412(n+1)^A000040(A007318(∑[n]))` -/
def P902013003711911525.Spec : Prop :=
  ∀ n, P902013003711911525.a n = (A303072 (n + 1) : ℚ)

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
# A303076: Inverse permutation to A303075.

The programs for A303076, there is no canonical definition to state claims against.
-/

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

/-! ## A303077.P15121242747878409499

`A039634((n+1)^A324907(n+1))`
-/

namespace A303077.P15121242747878409499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A324907 (n + 1) : ℤ))).toNat

end

end A303077.P15121242747878409499

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

/-! ## A303077.P1695436487953790448

`A006530(A002618(n+1)*A116882(n+1))`
-/

namespace A303077.P1695436487953790448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002618 (n + 1) * A116882 (n + 1)).toNat

end

end A303077.P1695436487953790448

/-! ## A303077.P3103218526804282936

`A006530(A006530(n+1)²*A116882(n+1))`
-/

namespace A303077.P3103218526804282936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (n + 1) ^ 2 * A116882 (n + 1)).toNat

end

end A303077.P3103218526804282936

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

/-! ## A303078.P9288940231036144538

`A303084(A001844(n))+char[9]`
-/

namespace A303078.P9288940231036144538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303078.P9288940231036144538

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

/-! ## A303079.P17435248132150906875

`lcm(A303084(A034856(n+2)), A333159(n))`
-/

namespace A303079.P17435248132150906875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A303084 (A034856 (n + 2)).toNat) (A333159 n)

end

end A303079.P17435248132150906875

/-! ## A303079.P17060258537487700009

`A303084(A034856(n+2))+A102683(2*n)`
-/

namespace A303079.P17060258537487700009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A034856 (n + 2)).toNat + A102683 (2 * n)

end

end A303079.P17060258537487700009

/-! ## A303079.P11413199270818504968

`A303084(A034856(n+2))%A195634(n+1)`
-/

namespace A303079.P11413199270818504968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303084 (A034856 (n + 2)).toNat) (A195634 (n + 1))

end

end A303079.P11413199270818504968

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

/-! ## A303080.P13890335694813960407

`A303084(A055998(n+2))`
-/

namespace A303080.P13890335694813960407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A055998 (n + 2)).toNat

end

end A303080.P13890335694813960407

/-! ## A303080.P5708940043899089116

`A303084(A155212(n)+5)`
-/

namespace A303080.P5708940043899089116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A155212 n + 5).toNat

end

end A303080.P5708940043899089116

/-! ## A303080.P6458782044318199622

`A303084(A056000(n)+7)`
-/

namespace A303080.P6458782044318199622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A056000 n + 7).toNat

end

end A303080.P6458782044318199622

/-! ## A303080.P3199621456964920294

`A303084(A052905(n+1)+2)`
-/

namespace A303080.P3199621456964920294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A052905 (n + 1) + 2).toNat

end

end A303080.P3199621456964920294

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

/-! ## A303081.P18244325618400072468

`A303084(A046691(n+3))`
-/

namespace A303081.P18244325618400072468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A046691 (n + 3)).toNat

end

end A303081.P18244325618400072468

/-! ## A303081.P17669865638611585

`A303084(eq[4, A193592(n)])`
-/

namespace A303081.P17669865638611585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303081.P17669865638611585

/-! ## A303081.P12380566911556642172

`A303084(Δ[A023545(n+1)])`
-/

namespace A303081.P12380566911556642172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (f1 (n + 1) - f1 n).toNat

end

end A303081.P12380566911556642172

/-! ## A303081.P17215987419892862965

`A303084(eq[5, A194921(n+1)])`
-/

namespace A303081.P17215987419892862965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303081.P17215987419892862965

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

/-! ## A303082.P16361088577297201086

`A303084(eq[5, A193592(n)])`
-/

namespace A303082.P16361088577297201086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303082.P16361088577297201086

/-! ## A303082.P16192931104536941349

`A303084(eq[16, A209439(n)])`
-/

namespace A303082.P16192931104536941349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303082.P16192931104536941349

/-! ## A303082.P5261324490649233913

`A303084(eq[6, A200370(n+1)])`
-/

namespace A303082.P5261324490649233913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303082.P5261324490649233913

/-! ## A303082.P14382790576404449322

`A303084(eq[16, A057728(n+1)])`
-/

namespace A303082.P14382790576404449322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303082.P14382790576404449322

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

/-! ## A303083.P4109979927201631258

`A303084(eq[6, A193592(n)])`
-/

namespace A303083.P4109979927201631258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303083.P4109979927201631258

/-! ## A303083.P13400878091852671352

`A303084(A167499(n+6)-11)`
-/

namespace A303083.P13400878091852671352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A167499 (n + 6) - 11).toNat

end

end A303083.P13400878091852671352

/-! ## A303083.P5068830054970935634

`A303084(eq[6, A025581(n)]+1)`
-/

namespace A303083.P5068830054970935634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A303083.P5068830054970935634

/-! ## A303083.P3045193803235694048

`A303084(eq[7, A200370(n+1)])`
-/

namespace A303083.P3045193803235694048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303083.P3045193803235694048

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

/-! ## A303085.P6095007358246332791

`A303084(A167614(n+1))%A029873(n)`
-/

namespace A303085.P6095007358246332791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303084 (A167614 (n + 1)).toNat) (A029873 n)

end

end A303085.P6095007358246332791

/-! ## A303085.P7376590339300788880

`lcm(A033999(n), A303084(A055998(n)+6))`
-/

namespace A303085.P7376590339300788880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A303084 (A055998 n + 6).toNat)

end

end A303085.P7376590339300788880

/-! ## A303085.P18294913322374251359

`A014598(n)*A303084(A167499(n)+n)`
-/

namespace A303085.P18294913322374251359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014598 n * A303084 (A167499 n + (n : ℤ)).toNat

end

end A303085.P18294913322374251359

/-! ## A303085.P15460942073368975623

`or(A024155(n+1), A303084(A167614(n+1)))`
-/

namespace A303085.P15460942073368975623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024155 (n + 1)) (A303084 (A167614 (n + 1)).toNat)

end

end A303085.P15460942073368975623

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

/-! ## A303086.P4182516868684513372

`A303084(A141214(n)+7)`
-/

namespace A303086.P4182516868684513372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A141214 n + 7).toNat

end

end A303086.P4182516868684513372

/-! ## A303086.P6326605635021698836

`A303084(A052905(n)+9)`
-/

namespace A303086.P6326605635021698836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A052905 n + 9).toNat

end

end A303086.P6326605635021698836

/-! ## A303086.P15487109086092955580

`A303084(A055999(n)+10)`
-/

namespace A303086.P15487109086092955580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A055999 n + 10).toNat

end

end A303086.P15487109086092955580

/-! ## A303086.P13619574777314849192

`A303084(A167614(n+2)+1)`
-/

namespace A303086.P13619574777314849192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A167614 (n + 2) + 1).toNat

end

end A303086.P13619574777314849192

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

/-! ## A303087.P9696109677002699928

`A303084(A056000(n)+15)`
-/

namespace A303087.P9696109677002699928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A056000 n + 15).toNat

end

end A303087.P9696109677002699928

/-! ## A303087.P17100195089108566459

`A303084(eq[7, A066657(n)])`
-/

namespace A303087.P17100195089108566459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303087.P17100195089108566459

/-! ## A303087.P9006610165994928913

`A303084(A051936(n+4)+14)`
-/

namespace A303087.P9006610165994928913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A051936 (n + 4) + 14).toNat

end

end A303087.P9006610165994928913

/-! ## A303087.P8598924469986740772

`A303084(eq[6, A131818(n+1)])`
-/

namespace A303087.P8598924469986740772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303087.P8598924469986740772

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

/-! ## A303088.P11002366075243501160

`A303084(eq[7, A131818(n+1)])`
-/

namespace A303088.P11002366075243501160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303088.P11002366075243501160

/-! ## A303088.P8146854306236156036

`A303084(Δ[A023545(n+1)]+10)`
-/

namespace A303088.P8146854306236156036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (f1 (n + 1) - f1 n + 10).toNat

end

end A303088.P8146854306236156036

/-! ## A303088.P10732676979970459124

`A303084(eq[6, A193592(n)]-comp[2*n])`
-/

namespace A303088.P10732676979970459124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

end

end A303088.P10732676979970459124

/-! ## A303088.P14520639698394149164

`A303084(A317933(n+1)+A166136(n+4)-1)`
-/

namespace A303088.P14520639698394149164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A317933 (n + 1) + (A166136 (n + 4) - 1)).toNat

end

end A303088.P14520639698394149164

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

/-! ## A303089.P15254318478465752450

`A303084(A056119(n)+28)`
-/

namespace A303089.P15254318478465752450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A056119 n + 28).toNat

end

end A303089.P15254318478465752450

/-! ## A303089.P17579737907345059323

`A303084(eq[11, A066657(n)])`
-/

namespace A303089.P17579737907345059323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303089.P17579737907345059323

/-! ## A303089.P12249184132656850439

`A303084(A046691(n+4)+11)`
-/

namespace A303089.P12249184132656850439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (A046691 (n + 4) + 11).toNat

end

end A303089.P12249184132656850439

/-! ## A303089.P10337553496925030687

`A303084(eq[8, A131818(n+1)])`
-/

namespace A303089.P10337553496925030687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303089.P10337553496925030687

/-!
# A303092: Balanced primes of order one ending in 1.

The programs for A303092, the canonical program `A303092.P4096083080800045430` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303092 has offset 1).

The definition of A303092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

namespace A303092

/-- `∩[A006562(n+1), A216309(n+1)]` -/
def P17532741948511095077.Spec : Prop :=
  ∀ n, (P17532741948511095077.a n : ℤ) = A303092 (n + 1)

end A303092

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

namespace A303092

/-- `∩[A216309(n+1), A225494(n+1)]` -/
def P6254324280742419962.Spec : Prop :=
  ∀ n, (P6254324280742419962.a n : ℤ) = A303092 (n + 1)

end A303092

/-! ## A303092.P4096083080800045430

`∩[A075540(n+1), A216309(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A303092

/-- `∩[A075540(n+1), A216309(n+1)]` -/
def P4096083080800045430.Spec : Prop :=
  ∀ n, (P4096083080800045430.a n : ℤ) = A303092 (n + 1)

theorem P4096083080800045430.correct : P4096083080800045430.Spec := by
  intro n
  simp only [A303092, Nat.add_sub_cancel]

end A303092

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

namespace A303092

/-- `∩[A216124(n+1), A216309(n+1)]` -/
def P10392729273261333301.Spec : Prop :=
  ∀ n, (P10392729273261333301.a n : ℤ) = A303092 (n + 1)

end A303092

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

namespace A303092

/-- `p?[A093667(A049511(n+1)-1)]` -/
def P13175748817673683975.Spec : Prop :=
  ∀ n, P13175748817673683975.a n = A303092 (n + 1)

end A303092

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

/-! ## A303094.P16074618615322415698

`filter[A225494(n+1), A185708(#)]`
-/

namespace A303094.P16074618615322415698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A303094.P16074618615322415698

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

/-! ## A303096.P15708644930392244165

`A303102(A001844(n))+A277159(n)`
-/

namespace A303096.P15708644930392244165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A001844 n).toNat + A277159 n

end

end A303096.P15708644930392244165

/-! ## A303096.P1391347654296035827

`A040790(n)*A303102(A001844(n))`
-/

namespace A303096.P1391347654296035827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 n * A303102 (A001844 n).toNat

end

end A303096.P1391347654296035827

/-! ## A303096.P15623124868409636257

`A057427(n)*A303102(A001844(n))`
-/

namespace A303096.P15623124868409636257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A303102 (A001844 n).toNat

end

end A303096.P15623124868409636257

/-! ## A303096.P6492439080561913896

`or(A053602(n), A303102(A001844(n)))`
-/

namespace A303096.P6492439080561913896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053602 n) (A303102 (A001844 n).toNat)

end

end A303096.P6492439080561913896

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

/-! ## A303097.P6791141278130124504

`A303102(A034856(n+2))+A025469(n)`
-/

namespace A303097.P6791141278130124504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A034856 (n + 2)).toNat + A025469 n

end

end A303097.P6791141278130124504

/-! ## A303097.P6179238683407780580

`A303102(A034856(n+2))+A185255(n)`
-/

namespace A303097.P6179238683407780580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A034856 (n + 2)).toNat + A185255 n

end

end A303097.P6179238683407780580

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

/-! ## A303098.P3468350670656415711

`A303102(A055998(n+2))`
-/

namespace A303098.P3468350670656415711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A055998 (n + 2)).toNat

end

end A303098.P3468350670656415711

/-! ## A303098.P309197540944315193

`A303102(A155212(n)+5)`
-/

namespace A303098.P309197540944315193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A155212 n + 5).toNat

end

end A303098.P309197540944315193

/-! ## A303098.P1104334124267686578

`A303102(A056000(n)+7)`
-/

namespace A303098.P1104334124267686578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A056000 n + 7).toNat

end

end A303098.P1104334124267686578

/-! ## A303098.P6850255746008086170

`A303102(eq[3, A193592(n)])`
-/

namespace A303098.P6850255746008086170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303098.P6850255746008086170

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

/-! ## A303099.P4298914485289821397

`A303102(eq[2, A092921(n)])`
-/

namespace A303099.P4298914485289821397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303099.P4298914485289821397

/-! ## A303099.P4936100866871963126

`A303102(eq[4, A193592(n)])`
-/

namespace A303099.P4936100866871963126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303099.P4936100866871963126

/-! ## A303099.P16918986797426942130

`A303102(Δ[A023545(n+1)])`
-/

namespace A303099.P16918986797426942130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (f1 (n + 1) - f1 n).toNat

end

end A303099.P16918986797426942130

/-! ## A303099.P7237001254094509292

`A303102(eq[5, A200370(n+1)])`
-/

namespace A303099.P7237001254094509292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303099.P7237001254094509292

