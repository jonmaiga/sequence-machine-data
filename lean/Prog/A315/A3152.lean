import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A315200: Coordination sequence Gal.6.462.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315200, there is no canonical definition to state claims against.
-/

/-! ## A315200.P734148929309539508

`A315131(n)+A152857(A315117(5^ceil(n/2)))`
-/

namespace A315200.P734148929309539508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315131 n + A152857 (A315117 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat).toNat

end

end A315200.P734148929309539508

/-!
# A315201: Coordination sequence Gal.5.271.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315201, there is no canonical definition to state claims against.
-/

/-! ## A315201.P16417294078462547623

`A008458(n)+A008579(n)-A310556(n)`
-/

namespace A315201.P16417294078462547623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008579 n - A310556 n)

end

end A315201.P16417294078462547623

/-! ## A315201.P4771391943413624536

`2*A315484(n)-A008458(n)`
-/

namespace A315201.P4771391943413624536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315484 n - A008458 n

end

end A315201.P4771391943413624536

/-! ## A315201.P9526257471820927955

`A103517(A315484(n)-A016777(n))`
-/

namespace A315201.P9526257471820927955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315484 n - A016777 n).toNat

end

end A315201.P9526257471820927955

/-! ## A315201.P8895065459576295472

`A103517(A315484(n)%A016777(n))`
-/

namespace A315201.P8895065459576295472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A315484 n) (A016777 n)).toNat

end

end A315201.P8895065459576295472

/-! ## A315201.P15640125947026357490

`2*A315484(n)-A008486(A005843(n))`
-/

namespace A315201.P15640125947026357490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315484 n - A008486 (A005843 n).toNat

end

end A315201.P15640125947026357490

/-! ## A315201.P6867783724444562197

`A008579(n)+A315484(n)-A313335(n)`
-/

namespace A315201.P6867783724444562197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + (A315484 n - A313335 n)

end

end A315201.P6867783724444562197

/-! ## A315201.P1806950196249995242

`A313335(n)+A315484(n)-A310556(n)`
-/

namespace A315201.P1806950196249995242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313335 n + (A315484 n - A310556 n)

end

end A315201.P1806950196249995242

/-! ## A315201.P153781500634377842

`A008458(n)-A005843(A008458(n)-A315484(n))`
-/

namespace A315201.P153781500634377842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315484 n).toNat

end

end A315201.P153781500634377842

/-! ## A315201.P7475325845547275869

`A005843(A315484(n))-A008458(n)`
-/

namespace A315201.P7475325845547275869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315484 n).toNat - A008458 n

end

end A315201.P7475325845547275869

/-! ## A315201.P8837584407343107094

`A005843(A315484(n))-A008486(A005843(n))`
-/

namespace A315201.P8837584407343107094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315484 n).toNat - A008486 (A005843 n).toNat

end

end A315201.P8837584407343107094

/-!
# A315202: Coordination sequence Gal.6.194.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315202, the canonical program `A315202.P8684854495543598751` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315202 has offset 0).

The definition of A315202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2427 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315202.P8684854495543598751

`2*A314707(n)-A008574(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315202

/-- `2*A314707(n)-A008574(n)` -/
def P8684854495543598751.Spec : Prop :=
  ∀ n, P8684854495543598751.a n = A315202 n

theorem P8684854495543598751.correct : P8684854495543598751.Spec := by
  intro n
  simp only [A315202]

end A315202

/-! ## A315202.P7504144132592154092

`A004275(A314707(n)-A004273(n))`
-/

namespace A315202.P7504144132592154092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314707 n - A004273 n).toNat

end

end A315202.P7504144132592154092

namespace A315202

/-- `A004275(A314707(n)-A004273(n))` -/
def P7504144132592154092.Spec : Prop :=
  ∀ n, P7504144132592154092.a n = A315202 n

end A315202

/-! ## A315202.P4335510773135685540

`A004273(A314707(n)-n)-A004273(n)`
-/

namespace A315202.P4335510773135685540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A314707 n - (n : ℤ)).toNat - A004273 n

end

end A315202.P4335510773135685540

namespace A315202

/-- `A004273(A314707(n)-n)-A004273(n)` -/
def P4335510773135685540.Spec : Prop :=
  ∀ n, P4335510773135685540.a n = A315202 n

end A315202

/-! ## A315202.P11900279866991091913

`A008574(n)+A005843(A314707(n)-A008574(n))`
-/

namespace A315202.P11900279866991091913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A314707 n - A008574 n).toNat

end

end A315202.P11900279866991091913

namespace A315202

/-- `A008574(n)+A005843(A314707(n)-A008574(n))` -/
def P11900279866991091913.Spec : Prop :=
  ∀ n, P11900279866991091913.a n = A315202 n

end A315202

/-! ## A315202.P18423483127408800276

`abs(A008592(n)-A310505(n))`
-/

namespace A315202.P18423483127408800276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310505 n|

end

end A315202.P18423483127408800276

namespace A315202

/-- `abs(A008592(n)-A310505(n))` -/
def P18423483127408800276.Spec : Prop :=
  ∀ n, P18423483127408800276.a n = A315202 n

end A315202

/-! ## A315202.P12266734483883285735

`2*A008706(n)-A310505(n)`
-/

namespace A315202.P12266734483883285735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310505 n

end

end A315202.P12266734483883285735

namespace A315202

/-- `2*A008706(n)-A310505(n)` -/
def P12266734483883285735.Spec : Prop :=
  ∀ n, P12266734483883285735.a n = A315202 n

end A315202

/-! ## A315202.P2300155464111619680

`A008458(n)+A008574(n)-A310505(n)`
-/

namespace A315202.P2300155464111619680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310505 n)

end

end A315202.P2300155464111619680

namespace A315202

/-- `A008458(n)+A008574(n)-A310505(n)` -/
def P2300155464111619680.Spec : Prop :=
  ∀ n, P2300155464111619680.a n = A315202 n

end A315202

/-! ## A315202.P5984942605932125922

`A005843(A314707(n))-A008574(n)`
-/

namespace A315202.P5984942605932125922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314707 n).toNat - A008574 n

end

end A315202.P5984942605932125922

namespace A315202

/-- `A005843(A314707(n))-A008574(n)` -/
def P5984942605932125922.Spec : Prop :=
  ∀ n, P5984942605932125922.a n = A315202 n

end A315202

/-! ## A315202.P3833702009848007358

`A004275(A314707(n))-A004275(2*n)`
-/

namespace A315202.P3833702009848007358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314707 n).toNat - A004275 (2 * n)

end

end A315202.P3833702009848007358

namespace A315202

/-- `A004275(A314707(n))-A004275(2*n)` -/
def P3833702009848007358.Spec : Prop :=
  ∀ n, P3833702009848007358.a n = A315202 n

end A315202

/-! ## A315202.P6665684467400372541

`A004442(A017281(n)-A310505(n))`
-/

namespace A315202.P6665684467400372541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A310505 n).toNat

end

end A315202.P6665684467400372541

namespace A315202

/-- `A004442(A017281(n)-A310505(n))` -/
def P6665684467400372541.Spec : Prop :=
  ∀ n, P6665684467400372541.a n = A315202 n

end A315202

/-! ## A315202.P7210446289381124059

`A005843(A008706(n))-A310505(n)`
-/

namespace A315202.P7210446289381124059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310505 n

end

end A315202.P7210446289381124059

namespace A315202

/-- `A005843(A008706(n))-A310505(n)` -/
def P7210446289381124059.Spec : Prop :=
  ∀ n, P7210446289381124059.a n = A315202 n

end A315202

/-! ## A315202.P4936323818197071467

`gcd(2, A002182(n+1))*A004525(A313718(n))`
-/

namespace A315202.P4936323818197071467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A002182 (n + 1)) : ℤ) * A004525 (A313718 n).toNat

end

end A315202.P4936323818197071467

namespace A315202

/-- `gcd(2, A002182(n+1))*A004525(A313718(n))` -/
def P4936323818197071467.Spec : Prop :=
  ∀ n, P4936323818197071467.a n = A315202 n

end A315202

/-!
# A315203: Coordination sequence Gal.6.321.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315203, the canonical program `A315203.P6226893025600850173` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315203 has offset 0).

The definition of A315203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315203.P6226893025600850173

`abs(A008592(n)-A310504(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315203

/-- `abs(A008592(n)-A310504(n))` -/
def P6226893025600850173.Spec : Prop :=
  ∀ n, P6226893025600850173.a n = A315203 n

theorem P6226893025600850173.correct : P6226893025600850173.Spec := by
  intro n
  simp only [A315203]

end A315203

/-! ## A315203.P16331449377738695085

`2*A008706(n)-A310504(n)`
-/

namespace A315203.P16331449377738695085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310504 n

end

end A315203.P16331449377738695085

namespace A315203

/-- `2*A008706(n)-A310504(n)` -/
def P16331449377738695085.Spec : Prop :=
  ∀ n, P16331449377738695085.a n = A315203 n

end A315203

/-! ## A315203.P6115386219344553021

`2*A314708(n)-A008574(n)`
-/

namespace A315203.P6115386219344553021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314708 n - A008574 n

end

end A315203.P6115386219344553021

namespace A315203

/-- `2*A314708(n)-A008574(n)` -/
def P6115386219344553021.Spec : Prop :=
  ∀ n, P6115386219344553021.a n = A315203 n

end A315203

/-! ## A315203.P250656681312950722

`A250120(n)+A244895(A026741(n))`
-/

namespace A315203.P250656681312950722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A244895 (A026741 n).toNat

end

end A315203.P250656681312950722

namespace A315203

/-- `A250120(n)+A244895(A026741(n))` -/
def P250656681312950722.Spec : Prop :=
  ∀ n, P250656681312950722.a n = A315203 n

end A315203

/-! ## A315203.P10754496645539481092

`A004275(A314708(n)-A004273(n))`
-/

namespace A315203.P10754496645539481092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314708 n - A004273 n).toNat

end

end A315203.P10754496645539481092

namespace A315203

/-- `A004275(A314708(n)-A004273(n))` -/
def P10754496645539481092.Spec : Prop :=
  ∀ n, P10754496645539481092.a n = A315203 n

end A315203

/-! ## A315203.P3201211616486834208

`A004277(A314708(n)-A004277(n))`
-/

namespace A315203.P3201211616486834208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A314708 n - A004277 n).toNat

end

end A315203.P3201211616486834208

namespace A315203

/-- `A004277(A314708(n)-A004277(n))` -/
def P3201211616486834208.Spec : Prop :=
  ∀ n, P3201211616486834208.a n = A315203 n

end A315203

/-! ## A315203.P16765692523875325658

`A008458(n)+A008574(n)-A310504(n)`
-/

namespace A315203.P16765692523875325658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310504 n)

end

end A315203.P16765692523875325658

namespace A315203

/-- `A008458(n)+A008574(n)-A310504(n)` -/
def P16765692523875325658.Spec : Prop :=
  ∀ n, P16765692523875325658.a n = A315203 n

end A315203

/-! ## A315203.P9837798079021179135

`A004273(A314708(n)-n)-A004273(n)`
-/

namespace A315203.P9837798079021179135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A314708 n - (n : ℤ)).toNat - A004273 n

end

end A315203.P9837798079021179135

namespace A315203

/-- `A004273(A314708(n)-n)-A004273(n)` -/
def P9837798079021179135.Spec : Prop :=
  ∀ n, P9837798079021179135.a n = A315203 n

end A315203

/-! ## A315203.P458964549693866527

`A008574(n)+A005843(A314708(n)-A008574(n))`
-/

namespace A315203.P458964549693866527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A314708 n - A008574 n).toNat

end

end A315203.P458964549693866527

namespace A315203

/-- `A008574(n)+A005843(A314708(n)-A008574(n))` -/
def P458964549693866527.Spec : Prop :=
  ∀ n, P458964549693866527.a n = A315203 n

end A315203

/-! ## A315203.P8964854777632518495

`A005843(A314708(n))-A008574(n)`
-/

namespace A315203.P8964854777632518495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314708 n).toNat - A008574 n

end

end A315203.P8964854777632518495

namespace A315203

/-- `A005843(A314708(n))-A008574(n)` -/
def P8964854777632518495.Spec : Prop :=
  ∀ n, P8964854777632518495.a n = A315203 n

end A315203

/-! ## A315203.P10296083488521024045

`A004275(A314708(n))-A004275(2*n)`
-/

namespace A315203.P10296083488521024045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314708 n).toNat - A004275 (2 * n)

end

end A315203.P10296083488521024045

namespace A315203

/-- `A004275(A314708(n))-A004275(2*n)` -/
def P10296083488521024045.Spec : Prop :=
  ∀ n, P10296083488521024045.a n = A315203 n

end A315203

/-! ## A315203.P2976322130248531714

`2*A315489(n)-A008458(n)`
-/

namespace A315203.P2976322130248531714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315489 n - A008458 n

end

end A315203.P2976322130248531714

namespace A315203

/-- `2*A315489(n)-A008458(n)` -/
def P2976322130248531714.Spec : Prop :=
  ∀ n, P2976322130248531714.a n = A315203 n

end A315203

/-! ## A315203.P10567774654536915769

`A005843(A008706(n))-A310504(n)`
-/

namespace A315203.P10567774654536915769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310504 n

end

end A315203.P10567774654536915769

namespace A315203

/-- `A005843(A008706(n))-A310504(n)` -/
def P10567774654536915769.Spec : Prop :=
  ∀ n, P10567774654536915769.a n = A315203 n

end A315203

/-! ## A315203.P4549955340144854559

`A081599(A008458(n)+n)-A081599(n)`
-/

namespace A315203.P4549955340144854559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081599 (A008458 n + (n : ℤ)).toNat - A081599 n

end

end A315203.P4549955340144854559

namespace A315203

/-- `A081599(A008458(n)+n)-A081599(n)` -/
def P4549955340144854559.Spec : Prop :=
  ∀ n, P4549955340144854559.a n = A315203 n

end A315203

/-!
# A315204: Coordination sequence Gal.4.77.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315204, the canonical program `A315204.P2648986548241018869` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315204 has offset 0).

The definition of A315204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2398 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315204.P13546369565483003204

`A315032(n)+A175629(n)`
-/

namespace A315204.P13546369565483003204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315032 n + A175629 n

end

end A315204.P13546369565483003204

namespace A315204

/-- `A315032(n)+A175629(n)` -/
def P13546369565483003204.Spec : Prop :=
  ∀ n, P13546369565483003204.a n = A315204 n

end A315204

/-! ## A315204.P2648986548241018869

`A313613(n)+A238469(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315204

/-- `A313613(n)+A238469(n)` -/
def P2648986548241018869.Spec : Prop :=
  ∀ n, P2648986548241018869.a n = A315204 n

theorem P2648986548241018869.correct : P2648986548241018869.Spec := by
  intro n
  simp only [A315204]

end A315204

/-! ## A315204.P9540934878653796517

`abs(A008592(n)-A310503(n))`
-/

namespace A315204.P9540934878653796517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310503 n|

end

end A315204.P9540934878653796517

namespace A315204

/-- `abs(A008592(n)-A310503(n))` -/
def P9540934878653796517.Spec : Prop :=
  ∀ n, P9540934878653796517.a n = A315204 n

end A315204

/-! ## A315204.P7996096133677098967

`A310411(n)+2*A238469(n)`
-/

namespace A315204.P7996096133677098967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310411 n + 2 * A238469 n

end

end A315204.P7996096133677098967

namespace A315204

/-- `A310411(n)+2*A238469(n)` -/
def P7996096133677098967.Spec : Prop :=
  ∀ n, P7996096133677098967.a n = A315204 n

end A315204

/-! ## A315204.P17405962269868248652

`A313613(n)+A238470(2*n)`
-/

namespace A315204.P17405962269868248652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313613 n + A238470 (2 * n)

end

end A315204.P17405962269868248652

namespace A315204

/-- `A313613(n)+A238470(2*n)` -/
def P17405962269868248652.Spec : Prop :=
  ∀ n, P17405962269868248652.a n = A315204 n

end A315204

/-! ## A315204.P2115190995630349126

`A310372(n)+2*A242062(n)`
-/

namespace A315204.P2115190995630349126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310372 n + 2 * A242062 n

end

end A315204.P2115190995630349126

namespace A315204

/-- `A310372(n)+2*A242062(n)` -/
def P2115190995630349126.Spec : Prop :=
  ∀ n, P2115190995630349126.a n = A315204 n

end A315204

/-! ## A315204.P4765764667062110272

`2*A008706(n)-A310503(n)`
-/

namespace A315204.P4765764667062110272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310503 n

end

end A315204.P4765764667062110272

namespace A315204

/-- `2*A008706(n)-A310503(n)` -/
def P4765764667062110272.Spec : Prop :=
  ∀ n, P4765764667062110272.a n = A315204 n

end A315204

/-! ## A315204.P13138991178564055374

`A242062(n)+A315701(n)-n`
-/

namespace A315204.P13138991178564055374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 n + (A315701 n - (n : ℤ))

end

end A315204.P13138991178564055374

namespace A315204

/-- `A242062(n)+A315701(n)-n` -/
def P13138991178564055374.Spec : Prop :=
  ∀ n, P13138991178564055374.a n = A315204 n

end A315204

/-! ## A315204.P4710679024800465137

`A008458(n)+A008574(n)-A310503(n)`
-/

namespace A315204.P4710679024800465137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310503 n)

end

end A315204.P4710679024800465137

namespace A315204

/-- `A008458(n)+A008574(n)-A310503(n)` -/
def P4710679024800465137.Spec : Prop :=
  ∀ n, P4710679024800465137.a n = A315204 n

end A315204

/-! ## A315204.P9370593068838429775

`A315273(n)-Δ[A011860(n)]`
-/

namespace A315204.P9370593068838429775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315273 n - (f1 (n + 1) - f1 n)

end

end A315204.P9370593068838429775

namespace A315204

/-- `A315273(n)-Δ[A011860(n)]` -/
def P9370593068838429775.Spec : Prop :=
  ∀ n, P9370593068838429775.a n = A315204 n

end A315204

/-! ## A315204.P11666856681238592944

`2*A315490(n)-A008458(n)`
-/

namespace A315204.P11666856681238592944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315490 n - A008458 n

end

end A315204.P11666856681238592944

namespace A315204

/-- `2*A315490(n)-A008458(n)` -/
def P11666856681238592944.Spec : Prop :=
  ∀ n, P11666856681238592944.a n = A315204 n

end A315204

/-! ## A315204.P9097250797414227154

`A005843(A008706(n))-A310503(n)`
-/

namespace A315204.P9097250797414227154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310503 n

end

end A315204.P9097250797414227154

namespace A315204

/-- `A005843(A008706(n))-A310503(n)` -/
def P9097250797414227154.Spec : Prop :=
  ∀ n, P9097250797414227154.a n = A315204 n

end A315204

/-! ## A315204.P6323008564075371950

`A315647(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315204.P6323008564075371950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315647 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315204.P6323008564075371950

namespace A315204

/-- `A315647(2*n)+A008458(n+1)-(12*n+6)` -/
def P6323008564075371950.Spec : Prop :=
  ∀ n, P6323008564075371950.a n = A315204 n

end A315204

/-!
# A315205: Coordination sequence Gal.6.467.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315205, there is no canonical definition to state claims against.
-/

/-! ## A315205.P5700357246486753538

`A316801(A333883(n))+A315203(n)`
-/

namespace A315205.P5700357246486753538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (A333883 n).toNat + A315203 n

end

end A315205.P5700357246486753538

/-! ## A315205.P4529002702524079100

`A315203(or(A120126(n), A331292(n+1)))`
-/

namespace A315205.P4529002702524079100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315203 (Int.lor (A120126 n) (A331292 (n + 1))).toNat

end

end A315205.P4529002702524079100

/-! ## A315205.P3511401313648653590

`A315203(record[n-A308235(n+1)])`
-/

namespace A315205.P3511401313648653590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A308235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A315205.P3511401313648653590

/-! ## A315205.P3574100459169748716

`record[A315203(n)/(A308235(n+1)+1)]`
-/

namespace A315205.P3574100459169748716
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315203 n : ℚ) / (A308235 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315205.P3574100459169748716

/-! ## A315205.P1505309523043014256

`A004277(A050731(n)+A004396(n))`
-/

namespace A315205.P1505309523043014256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A050731 n + A004396 n).toNat

end

end A315205.P1505309523043014256

/-!
# A315206: Coordination sequence Gal.6.439.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315206, there is no canonical definition to state claims against.
-/

/-! ## A315206.P18046805049567092109

`(A004144(3*n+1)+2)%A072641(3*n+2)`
-/

namespace A315206.P18046805049567092109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004144 (3 * n + 1) + 2) (A072641 (3 * n + 2))

end

end A315206.P18046805049567092109

/-! ## A315206.P8599078460359881188

`A315196(A087051(n))+A251741(n)`
-/

namespace A315206.P8599078460359881188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315196 (A087051 n).toNat + A251741 n

end

end A315206.P8599078460359881188

/-! ## A315206.P16169768906642579428

`A315259(n)-A090172(A000108(n))`
-/

namespace A315206.P16169768906642579428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315259 n - A090172 (A000108 n).toNat

end

end A315206.P16169768906642579428

/-! ## A315206.P2922775992643246706

`A315259(n)-A189135(A275825(n))`
-/

namespace A315206.P2922775992643246706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315259 n - A189135 (A275825 n).toNat

end

end A315206.P2922775992643246706

/-! ## A315206.P835433447195309373

`A353419(A208103(n+1))+A310410(n)`
-/

namespace A315206.P835433447195309373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353419 (A208103 (n + 1)).toNat + A310410 n

end

end A315206.P835433447195309373

/-!
# A315207: Coordination sequence Gal.5.140.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315207, the canonical program `A315207.P1795837304625364716` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315207 has offset 0).

The definition of A315207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2403 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315207.P14397709479532843404

`abs(A008592(n)-A310502(n))`
-/

namespace A315207.P14397709479532843404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310502 n|

end

end A315207.P14397709479532843404

namespace A315207

/-- `abs(A008592(n)-A310502(n))` -/
def P14397709479532843404.Spec : Prop :=
  ∀ n, P14397709479532843404.a n = A315207 n

end A315207

/-! ## A315207.P6602904248323999800

`2*A008706(n)-A310502(n)`
-/

namespace A315207.P6602904248323999800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310502 n

end

end A315207.P6602904248323999800

namespace A315207

/-- `2*A008706(n)-A310502(n)` -/
def P6602904248323999800.Spec : Prop :=
  ∀ n, P6602904248323999800.a n = A315207 n

end A315207

/-! ## A315207.P1795837304625364716

`2*A314710(n)-A008574(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315207

/-- `2*A314710(n)-A008574(n)` -/
def P1795837304625364716.Spec : Prop :=
  ∀ n, P1795837304625364716.a n = A315207 n

theorem P1795837304625364716.correct : P1795837304625364716.Spec := by
  intro n
  simp only [A315207]

end A315207

/-! ## A315207.P13727245479573929593

`xor(1, A017281(n)-A310502(n))`
-/

namespace A315207.P13727245479573929593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A017281 n - A310502 n)

end

end A315207.P13727245479573929593

namespace A315207

/-- `xor(1, A017281(n)-A310502(n))` -/
def P13727245479573929593.Spec : Prop :=
  ∀ n, P13727245479573929593.a n = A315207 n

end A315207

/-! ## A315207.P3795797597586796703

`A314710(n)+A004396(A004396(n))`
-/

namespace A315207.P3795797597586796703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314710 n + A004396 (A004396 n).toNat

end

end A315207.P3795797597586796703

namespace A315207

/-- `A314710(n)+A004396(A004396(n))` -/
def P3795797597586796703.Spec : Prop :=
  ∀ n, P3795797597586796703.a n = A315207 n

end A315207

/-! ## A315207.P15268933997592566664

`A004275(A314710(n)-A004273(n))`
-/

namespace A315207.P15268933997592566664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314710 n - A004273 n).toNat

end

end A315207.P15268933997592566664

namespace A315207

/-- `A004275(A314710(n)-A004273(n))` -/
def P15268933997592566664.Spec : Prop :=
  ∀ n, P15268933997592566664.a n = A315207 n

end A315207

/-! ## A315207.P13826124903877662734

`A008574(n)+2*A004396(A004396(n))`
-/

namespace A315207.P13826124903877662734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + 2 * A004396 (A004396 n).toNat

end

end A315207.P13826124903877662734

namespace A315207

/-- `A008574(n)+2*A004396(A004396(n))` -/
def P13826124903877662734.Spec : Prop :=
  ∀ n, P13826124903877662734.a n = A315207 n

end A315207

/-! ## A315207.P9071093697538020868

`A008458(n)+A008574(n)-A310502(n)`
-/

namespace A315207.P9071093697538020868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310502 n)

end

end A315207.P9071093697538020868

namespace A315207

/-- `A008458(n)+A008574(n)-A310502(n)` -/
def P9071093697538020868.Spec : Prop :=
  ∀ n, P9071093697538020868.a n = A315207 n

end A315207

/-! ## A315207.P4175154057316523178

`A004273(A314710(n)-n)-A004273(n)`
-/

namespace A315207.P4175154057316523178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A314710 n - (n : ℤ)).toNat - A004273 n

end

end A315207.P4175154057316523178

namespace A315207

/-- `A004273(A314710(n)-n)-A004273(n)` -/
def P4175154057316523178.Spec : Prop :=
  ∀ n, P4175154057316523178.a n = A315207 n

end A315207

/-! ## A315207.P8032940622508451260

`A008574(n)+A005843(A314710(n)-A008574(n))`
-/

namespace A315207.P8032940622508451260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A314710 n - A008574 n).toNat

end

end A315207.P8032940622508451260

namespace A315207

/-- `A008574(n)+A005843(A314710(n)-A008574(n))` -/
def P8032940622508451260.Spec : Prop :=
  ∀ n, P8032940622508451260.a n = A315207 n

end A315207

/-! ## A315207.P9816544623504978462

`A005843(A314710(n))-A008574(n)`
-/

namespace A315207.P9816544623504978462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314710 n).toNat - A008574 n

end

end A315207.P9816544623504978462

namespace A315207

/-- `A005843(A314710(n))-A008574(n)` -/
def P9816544623504978462.Spec : Prop :=
  ∀ n, P9816544623504978462.a n = A315207 n

end A315207

/-! ## A315207.P9995722419093195967

`A004275(A314710(n))-A004275(2*n)`
-/

namespace A315207.P9995722419093195967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314710 n).toNat - A004275 (2 * n)

end

end A315207.P9995722419093195967

namespace A315207

/-- `A004275(A314710(n))-A004275(2*n)` -/
def P9995722419093195967.Spec : Prop :=
  ∀ n, P9995722419093195967.a n = A315207 n

end A315207

/-! ## A315207.P9157308883919990627

`A004442(A017281(n)-A310502(n))`
-/

namespace A315207.P9157308883919990627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A310502 n).toNat

end

end A315207.P9157308883919990627

namespace A315207

/-- `A004442(A017281(n)-A310502(n))` -/
def P9157308883919990627.Spec : Prop :=
  ∀ n, P9157308883919990627.a n = A315207 n

end A315207

/-! ## A315207.P14376982629276135425

`A005843(A008706(n))-A310502(n)`
-/

namespace A315207.P14376982629276135425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310502 n

end

end A315207.P14376982629276135425

namespace A315207

/-- `A005843(A008706(n))-A310502(n)` -/
def P14376982629276135425.Spec : Prop :=
  ∀ n, P14376982629276135425.a n = A315207 n

end A315207

/-! ## A315207.P9153636459905793826

`A004396(n)+A004396(A315427(n)+n)`
-/

namespace A315207.P9153636459905793826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A315427 n + (n : ℤ)).toNat

end

end A315207.P9153636459905793826

namespace A315207

/-- `A004396(n)+A004396(A315427(n)+n)` -/
def P9153636459905793826.Spec : Prop :=
  ∀ n, P9153636459905793826.a n = A315207 n

end A315207

/-! ## A315207.P10039821588245049313

`2*A312893(2*n)-A008458(2*n)`
-/

namespace A315207.P10039821588245049313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312893 (2 * n) - A008458 (2 * n)

end

end A315207.P10039821588245049313

namespace A315207

/-- `2*A312893(2*n)-A008458(2*n)` -/
def P10039821588245049313.Spec : Prop :=
  ∀ n, P10039821588245049313.a n = A315207 n

end A315207

/-! ## A315207.P6337081914331616409

`A310369(2*n)-4*n`
-/

namespace A315207.P6337081914331616409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310369 (2 * n) - (4 * n : ℤ)

end

end A315207.P6337081914331616409

namespace A315207

/-- `A310369(2*n)-4*n` -/
def P6337081914331616409.Spec : Prop :=
  ∀ n, P6337081914331616409.a n = A315207 n

end A315207

/-! ## A315207.P15405796466899849355

`2*A008574(2*n)-A315343(2*n)`
-/

namespace A315207.P15405796466899849355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315343 (2 * n)

end

end A315207.P15405796466899849355

namespace A315207

/-- `2*A008574(2*n)-A315343(2*n)` -/
def P15405796466899849355.Spec : Prop :=
  ∀ n, P15405796466899849355.a n = A315207 n

end A315207

/-! ## A315207.P16465974720083127487

`A004396(A313683(2*n))-A004396(2*n)`
-/

namespace A315207.P16465974720083127487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313683 (2 * n)).toNat - A004396 (2 * n)

end

end A315207.P16465974720083127487

namespace A315207

/-- `A004396(A313683(2*n))-A004396(2*n)` -/
def P16465974720083127487.Spec : Prop :=
  ∀ n, P16465974720083127487.a n = A315207 n

end A315207

/-!
# A315208: Coordination sequence Gal.6.348.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315208, the canonical program `A315208.P4336967152151066155` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315208 has offset 0).

The definition of A315208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315208.P4336967152151066155

`abs(A008592(n)-A310501(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315208

/-- `abs(A008592(n)-A310501(n))` -/
def P4336967152151066155.Spec : Prop :=
  ∀ n, P4336967152151066155.a n = A315208 n

theorem P4336967152151066155.correct : P4336967152151066155.Spec := by
  intro n
  simp only [A315208]

end A315208

/-! ## A315208.P1628307596385313633

`2*A008706(n)-A310501(n)`
-/

namespace A315208.P1628307596385313633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310501 n

end

end A315208.P1628307596385313633

namespace A315208

/-- `2*A008706(n)-A310501(n)` -/
def P1628307596385313633.Spec : Prop :=
  ∀ n, P1628307596385313633.a n = A315208 n

end A315208

/-! ## A315208.P16683358105593020936

`A184418(A008574(n))-A310501(n)`
-/

namespace A315208.P16683358105593020936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A310501 n

end

end A315208.P16683358105593020936

namespace A315208

/-- `A184418(A008574(n))-A310501(n)` -/
def P16683358105593020936.Spec : Prop :=
  ∀ n, P16683358105593020936.a n = A315208 n

end A315208

/-! ## A315208.P9693246388482445995

`A008458(n)+A008574(n)-A310501(n)`
-/

namespace A315208.P9693246388482445995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310501 n)

end

end A315208.P9693246388482445995

namespace A315208

/-- `A008458(n)+A008574(n)-A310501(n)` -/
def P9693246388482445995.Spec : Prop :=
  ∀ n, P9693246388482445995.a n = A315208 n

end A315208

/-! ## A315208.P6521542031947791140

`∑{d}[A008592(n)-A310501(n), A000010(#)]`
-/

namespace A315208.P6521542031947791140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A310501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315208.P6521542031947791140

namespace A315208

/-- `∑{d}[A008592(n)-A310501(n), A000010(#)]` -/
def P6521542031947791140.Spec : Prop :=
  ∀ n, P6521542031947791140.a n = A315208 n

end A315208

/-! ## A315208.P16752311257210004111

`A315261(n)-Δ[A011864(n)]`
-/

namespace A315208.P16752311257210004111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315261 n - (f1 (n + 1) - f1 n)

end

end A315208.P16752311257210004111

namespace A315208

/-- `A315261(n)-Δ[A011864(n)]` -/
def P16752311257210004111.Spec : Prop :=
  ∀ n, P16752311257210004111.a n = A315208 n

theorem P16752311257210004111.correct : P16752311257210004111.Spec := by
  intro n
  simp only [A315208, Nat.add_sub_cancel, A315208.P16752311257210004111.f1, A315208.P16752311257210004111.a, A315208.P4336967152151066155.a, A008592, A008592.P4981059802862696142.a, A011864, A011864.P3547417513882699266.a, A310501, A310501.P8756319467982132797.a, A315261, A315261.P9856986548447563779.f1, A315261.P9856986548447563779.a, A008574, A008574.P1300280032690682112.a, A313045, A313045.P11830860627486211470.f1, A313045.P11830860627486211470.a, A008458, A008458.P10936398443463225625.a, A047486, A047486.P6506762595393263252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315208

/-! ## A315208.P5059305841609643073

`A315312(n)-Δ[2*A011864(n)]`
-/

namespace A315208.P5059305841609643073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315312 n - (f1 (n + 1) - f1 n)

end

end A315208.P5059305841609643073

namespace A315208

/-- `A315312(n)-Δ[2*A011864(n)]` -/
def P5059305841609643073.Spec : Prop :=
  ∀ n, P5059305841609643073.a n = A315208 n

theorem P5059305841609643073.correct : P5059305841609643073.Spec := by
  intro n
  simp only [A315208, Nat.add_sub_cancel, A315208.P5059305841609643073.f1, A315208.P5059305841609643073.a, A315208.P4336967152151066155.a, A008592, A008592.P4981059802862696142.a, A011864, A011864.P3547417513882699266.a, A310501, A310501.P8756319467982132797.a, A315312, A315312.P652016832202607211.f1, A315312.P652016832202607211.a, A008574, A008574.P1300280032690682112.a, A313045, A313045.P11830860627486211470.f1, A313045.P11830860627486211470.a, A315261, A315261.P9856986548447563779.f1, A315261.P9856986548447563779.a, A008458, A008458.P10936398443463225625.a, A047486, A047486.P6506762595393263252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315208

/-! ## A315208.P12002235253968780072

`2*A315491(n)-A008458(n)`
-/

namespace A315208.P12002235253968780072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315491 n - A008458 n

end

end A315208.P12002235253968780072

namespace A315208

/-- `2*A315491(n)-A008458(n)` -/
def P12002235253968780072.Spec : Prop :=
  ∀ n, P12002235253968780072.a n = A315208 n

end A315208

/-! ## A315208.P14418884170898809904

`A103517(A315491(n)-A016777(n))`
-/

namespace A315208.P14418884170898809904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315491 n - A016777 n).toNat

end

end A315208.P14418884170898809904

namespace A315208

/-- `A103517(A315491(n)-A016777(n))` -/
def P14418884170898809904.Spec : Prop :=
  ∀ n, P14418884170898809904.a n = A315208 n

end A315208

/-! ## A315208.P9819497191615041085

`A008458(n)-A005843(A008458(n)-A315491(n))`
-/

namespace A315208.P9819497191615041085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315491 n).toNat

end

end A315208.P9819497191615041085

namespace A315208

/-- `A008458(n)-A005843(A008458(n)-A315491(n))` -/
def P9819497191615041085.Spec : Prop :=
  ∀ n, P9819497191615041085.a n = A315208 n

end A315208

/-! ## A315208.P15452929594324456946

`A004442(A017281(n)-A310501(n))`
-/

namespace A315208.P15452929594324456946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A310501 n).toNat

end

end A315208.P15452929594324456946

namespace A315208

/-- `A004442(A017281(n)-A310501(n))` -/
def P15452929594324456946.Spec : Prop :=
  ∀ n, P15452929594324456946.a n = A315208 n

end A315208

/-! ## A315208.P17058340305540607849

`A005843(A008706(n))-A310501(n)`
-/

namespace A315208.P17058340305540607849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310501 n

end

end A315208.P17058340305540607849

namespace A315208

/-- `A005843(A008706(n))-A310501(n)` -/
def P17058340305540607849.Spec : Prop :=
  ∀ n, P17058340305540607849.a n = A315208 n

end A315208

/-! ## A315208.P4909723694398787257

`A005843(A315491(n))-A008458(n)`
-/

namespace A315208.P4909723694398787257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315491 n).toNat - A008458 n

end

end A315208.P4909723694398787257

namespace A315208

/-- `A005843(A315491(n))-A008458(n)` -/
def P4909723694398787257.Spec : Prop :=
  ∀ n, P4909723694398787257.a n = A315208 n

end A315208

/-! ## A315208.P14086628008867694047

`A315650(2*n)-6*n`
-/

namespace A315208.P14086628008867694047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315650 (2 * n) - (6 * n : ℤ)

end

end A315208.P14086628008867694047

namespace A315208

/-- `A315650(2*n)-6*n` -/
def P14086628008867694047.Spec : Prop :=
  ∀ n, P14086628008867694047.a n = A315208 n

end A315208

/-!
# A315209: Coordination sequence Gal.6.440.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315209, there is no canonical definition to state claims against.
-/

/-! ## A315209.P4869792339968633023

`or(A122856(A076907(n)-n%3)+1, 5*n)-1`
-/

namespace A315209.P4869792339968633023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122856 (A076907 n - ((n % 3 : ℕ) : ℤ)).toNat + 1) (5 * n : ℤ) - 1

end

end A315209.P4869792339968633023

/-! ## A315209.P1496933358685377825

`A315208(n)+A106747(A324096(n+1))`
-/

namespace A315209.P1496933358685377825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315208 n + A106747 (A324096 (n + 1)).toNat

end

end A315209.P1496933358685377825

/-! ## A315209.P12798305185901079679

`A373810(A110226(n))+A227189(A047599(2*(n+1)))`
-/

namespace A315209.P12798305185901079679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373810 (A110226 n).toNat + A227189 (A047599 (2 * (n + 1))).toNat

end

end A315209.P12798305185901079679

/-! ## A315209.P9218645911768189988

`A227189(A047599(2*n+2))+A314014(n)-A130543(n²²)`
-/

namespace A315209.P9218645911768189988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227189 (A047599 (2 * n + 2)).toNat + (A314014 n - A130543 ((n ^ 2) ^ 2))

end

end A315209.P9218645911768189988

/-! ## A315209.P9251753684137978144

`A047996(3*n+1)+A001221(A008776(n))*A020959(n+1)-1`
-/

namespace A315209.P9251753684137978144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (3 * n + 1) + (A001221 (A008776 n).toNat * A020959 (n + 1) - 1)

end

end A315209.P9251753684137978144

/-!
# A315210: Coordination sequence Gal.6.327.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315210, the canonical program `A315210.P3543645166176358380` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315210 has offset 0).

The definition of A315210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315210.P3543645166176358380

`abs(A008592(n)-A310499(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A315210

/-- `abs(A008592(n)-A310499(n))` -/
def P3543645166176358380.Spec : Prop :=
  ∀ n, P3543645166176358380.a n = A315210 n

theorem P3543645166176358380.correct : P3543645166176358380.Spec := by
  intro n
  simp only [A315210]

end A315210

/-! ## A315210.P3811319864023601036

`2*A008706(n)-A310499(n)`
-/

namespace A315210.P3811319864023601036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310499 n

end

end A315210.P3811319864023601036

namespace A315210

/-- `2*A008706(n)-A310499(n)` -/
def P3811319864023601036.Spec : Prop :=
  ∀ n, P3811319864023601036.a n = A315210 n

end A315210

/-! ## A315210.P9226939678192775347

`A184418(A008574(n))-A310499(n)`
-/

namespace A315210.P9226939678192775347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A310499 n

end

end A315210.P9226939678192775347

namespace A315210

/-- `A184418(A008574(n))-A310499(n)` -/
def P9226939678192775347.Spec : Prop :=
  ∀ n, P9226939678192775347.a n = A315210 n

end A315210

/-! ## A315210.P15620477299883215372

`A008458(n)+A008574(n)-A310499(n)`
-/

namespace A315210.P15620477299883215372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310499 n)

end

end A315210.P15620477299883215372

namespace A315210

/-- `A008458(n)+A008574(n)-A310499(n)` -/
def P15620477299883215372.Spec : Prop :=
  ∀ n, P15620477299883215372.a n = A315210 n

end A315210

/-! ## A315210.P397935396605550208

`A315264(n)-Δ[A011864(n)]`
-/

namespace A315210.P397935396605550208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315264 n - (f1 (n + 1) - f1 n)

end

end A315210.P397935396605550208

namespace A315210

/-- `A315264(n)-Δ[A011864(n)]` -/
def P397935396605550208.Spec : Prop :=
  ∀ n, P397935396605550208.a n = A315210 n

end A315210

/-! ## A315210.P1596176551835107323

`2*A313779(n)-A310523(n)`
-/

namespace A315210.P1596176551835107323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313779 n - A310523 n

end

end A315210.P1596176551835107323

namespace A315210

/-- `2*A313779(n)-A310523(n)` -/
def P1596176551835107323.Spec : Prop :=
  ∀ n, P1596176551835107323.a n = A315210 n

end A315210

/-! ## A315210.P16328415203510901319

`A005843(A008706(n))-A310499(n)`
-/

namespace A315210.P16328415203510901319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310499 n

end

end A315210.P16328415203510901319

namespace A315210

/-- `A005843(A008706(n))-A310499(n)` -/
def P16328415203510901319.Spec : Prop :=
  ∀ n, P16328415203510901319.a n = A315210 n

end A315210

/-! ## A315210.P18185613287162332855

`A005843(A313779(n))-A310523(n)`
-/

namespace A315210.P18185613287162332855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313779 n).toNat - A310523 n

end

end A315210.P18185613287162332855

namespace A315210

/-- `A005843(A313779(n))-A310523(n)` -/
def P18185613287162332855.Spec : Prop :=
  ∀ n, P18185613287162332855.a n = A315210 n

end A315210

/-! ## A315210.P886031554700418693

`A065502(A008458(n))-A310499(n)`
-/

namespace A315210.P886031554700418693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A310499 n

end

end A315210.P886031554700418693

namespace A315210

/-- `A065502(A008458(n))-A310499(n)` -/
def P886031554700418693.Spec : Prop :=
  ∀ n, P886031554700418693.a n = A315210 n

end A315210

/-! ## A315210.P739927917045314846

`A233583(A017281(n))-A310499(n)`
-/

namespace A315210.P739927917045314846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A310499 n

end

end A315210.P739927917045314846

namespace A315210

/-- `A233583(A017281(n))-A310499(n)` -/
def P739927917045314846.Spec : Prop :=
  ∀ n, P739927917045314846.a n = A315210 n

end A315210

/-!
# A315211: Coordination sequence Gal.3.20.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315211, the canonical program `A315211.P15554761548278113206` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315211 has offset 0).

The definition of A315211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2358 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315211.P1120334784195074591

`round(cos(∑[atan(∑[n])]))+5*n`
-/

namespace A315211.P1120334784195074591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (∑ j ∈ Finset.range (n + 1), f1 j)) + (5 * n : ℤ)

end

end A315211.P1120334784195074591

namespace A315211

/-- `round(cos(∑[atan(∑[n])]))+5*n` -/
def P1120334784195074591.Spec : Prop :=
  ∀ n, P1120334784195074591.a n = A315211 n

end A315211

/-! ## A315211.P15554761548278113206

`∑[10-a(n-2)]` with `a(0)=1, a(1)=5, a(2)=4, a(3)=4`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A315211

/-- `∑[10-a(n-2)]` -/
def P15554761548278113206.Spec : Prop :=
  ∀ n, P15554761548278113206.a n = A315211 n

theorem P15554761548278113206.correct : P15554761548278113206.Spec := by
  intro n
  simp only [A315211]

end A315211

/-! ## A315211.P4651639888168009750

`sin(n*asin(1))^n+5*n`
-/

namespace A315211.P4651639888168009750
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin ((n : ℝ) * Real.arcsin (1 : ℝ)) ^ n + (5 * n : ℝ)

end

end A315211.P4651639888168009750

namespace A315211

/-- `sin(n*asin(1))^n+5*n` -/
def P4651639888168009750.Spec : Prop :=
  ∀ n, P4651639888168009750.a n = (A315211 n : ℝ)

end A315211

/-! ## A315211.P8822911622185383459

`a(n-1)-and(2, n)+6` with `a(0)=1, a(1)=6`
-/

namespace A315211.P8822911622185383459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) - (Nat.land 2 n : ℤ) + 6

end

end A315211.P8822911622185383459

namespace A315211

/-- `a(n-1)-and(2, n)+6` -/
def P8822911622185383459.Spec : Prop :=
  ∀ n, P8822911622185383459.a n = A315211 n

end A315211

/-! ## A315211.P7925721522266908279

`A117569(n)+5*n`
-/

namespace A315211.P7925721522266908279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 n + (5 * n : ℤ)

end

end A315211.P7925721522266908279

namespace A315211

/-- `A117569(n)+5*n` -/
def P7925721522266908279.Spec : Prop :=
  ∀ n, P7925721522266908279.a n = A315211 n

end A315211

/-! ## A315211.P8678996555332628785

`A008458(n)-∑[and(2, n)]`
-/

namespace A315211.P8678996555332628785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A315211.P8678996555332628785

namespace A315211

/-- `A008458(n)-∑[and(2, n)]` -/
def P8678996555332628785.Spec : Prop :=
  ∀ n, P8678996555332628785.a n = A315211 n

end A315211

/-! ## A315211.P12302971331129643105

`∑[C(4, A007318(a(n-2)))]` with `a(0)=1, a(1)=5`
-/

namespace A315211.P12302971331129643105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  Nat.choose 4 (A007318 (f1 (n - 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315211.P12302971331129643105

namespace A315211

/-- `∑[C(4, A007318(a(n-2)))]` -/
def P12302971331129643105.Spec : Prop :=
  ∀ n, (P12302971331129643105.a n : ℤ) = A315211 n

end A315211

/-! ## A315211.P10473295264435446651

`∑[A282270(a(n-2))]+n` with `a(0)=1, a(1)=4`
-/

namespace A315211.P10473295264435446651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  A282270 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A315211.P10473295264435446651

namespace A315211

/-- `∑[A282270(a(n-2))]+n` -/
def P10473295264435446651.Spec : Prop :=
  ∀ n, P10473295264435446651.a n = A315211 n

end A315211

/-! ## A315211.P13865106131857920802

`A004277(comp[or(1, 3*n+1)]+n)`
-/

namespace A315211.P13865106131857920802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A315211.P13865106131857920802

namespace A315211

/-- `A004277(comp[or(1, 3*n+1)]+n)` -/
def P13865106131857920802.Spec : Prop :=
  ∀ n, P13865106131857920802.a n = A315211 n

end A315211

/-! ## A315211.P3797572253745865251

`A298784(A047229(n+1))`
-/

namespace A315211.P3797572253745865251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 (A047229 (n + 1)).toNat

end

end A315211.P3797572253745865251

namespace A315211

/-- `A298784(A047229(n+1))` -/
def P3797572253745865251.Spec : Prop :=
  ∀ n, P3797572253745865251.a n = A315211 n

end A315211

/-! ## A315211.P13497127953517229274

`A101455(n)+A008706(n)`
-/

namespace A315211.P13497127953517229274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 n + A008706 n

end

end A315211.P13497127953517229274

namespace A315211

/-- `A101455(n)+A008706(n)` -/
def P13497127953517229274.Spec : Prop :=
  ∀ n, P13497127953517229274.a n = A315211 n

end A315211

/-! ## A315211.P9544804824132470453

`A301291(n)+A004525(n)`
-/

namespace A315211.P9544804824132470453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A004525 n

end

end A315211.P9544804824132470453

namespace A315211

/-- `A301291(n)+A004525(n)` -/
def P9544804824132470453.Spec : Prop :=
  ∀ n, P9544804824132470453.a n = A315211 n

end A315211

/-! ## A315211.P3083501538992079480

`A315972(n)+A077814(n)`
-/

namespace A315211.P3083501538992079480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315972 n + A077814 n

end

end A315211.P3083501538992079480

namespace A315211

/-- `A315972(n)+A077814(n)` -/
def P3083501538992079480.Spec : Prop :=
  ∀ n, P3083501538992079480.a n = A315211 n

end A315211

/-! ## A315211.P3762763321907283713

`A008458(n)-A201629(n)`
-/

namespace A315211.P3762763321907283713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A201629 n

end

end A315211.P3762763321907283713

namespace A315211

/-- `A008458(n)-A201629(n)` -/
def P3762763321907283713.Spec : Prop :=
  ∀ n, P3762763321907283713.a n = A315211 n

end A315211

/-! ## A315211.P14744482597540024295

`A004277(A047229(n+1)+n)`
-/

namespace A315211.P14744482597540024295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A047229 (n + 1) + (n : ℤ)).toNat

end

end A315211.P14744482597540024295

namespace A315211

/-- `A004277(A047229(n+1)+n)` -/
def P14744482597540024295.Spec : Prop :=
  ∀ n, P14744482597540024295.a n = A315211 n

end A315211

/-! ## A315211.P11300567911223500239

`A047599(n+1)+A008486(n)`
-/

namespace A315211.P11300567911223500239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047599 (n + 1) + A008486 n

end

end A315211.P11300567911223500239

namespace A315211

/-- `A047599(n+1)+A008486(n)` -/
def P11300567911223500239.Spec : Prop :=
  ∀ n, P11300567911223500239.a n = A315211 n

end A315211

/-! ## A315211.P12855725075771718700

`A157932(n+1)+A004277(n)`
-/

namespace A315211.P12855725075771718700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157932 (n + 1) + A004277 n

end

end A315211.P12855725075771718700

namespace A315211

/-- `A157932(n+1)+A004277(n)` -/
def P12855725075771718700.Spec : Prop :=
  ∀ n, P12855725075771718700.a n = A315211 n

end A315211

/-! ## A315211.P10302335334788060329

`A047538(A008486(n)+1)-n`
-/

namespace A315211.P10302335334788060329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047538 (A008486 n + 1).toNat - (n : ℤ)

end

end A315211.P10302335334788060329

namespace A315211

/-- `A047538(A008486(n)+1)-n` -/
def P10302335334788060329.Spec : Prop :=
  ∀ n, P10302335334788060329.a n = A315211 n

end A315211

/-! ## A315211.P2215145213740135148

`A008706(n)-A056594(n+1)`
-/

namespace A315211.P2215145213740135148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A056594 (n + 1)

end

end A315211.P2215145213740135148

namespace A315211

/-- `A008706(n)-A056594(n+1)` -/
def P2215145213740135148.Spec : Prop :=
  ∀ n, P2215145213740135148.a n = A315211 n

end A315211

/-! ## A315211.P252182408494681916

`A063097(n+1)-A093148(n)`
-/

namespace A315211.P252182408494681916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063097 (n + 1) - A093148 n

end

end A315211.P252182408494681916

namespace A315211

/-- `A063097(n+1)-A093148(n)` -/
def P252182408494681916.Spec : Prop :=
  ∀ n, P252182408494681916.a n = A315211 n

end A315211

/-!
# A315212: Coordination sequence Gal.6.351.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315212, the canonical program `A315212.P16544204040533700131` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315212 has offset 0).

The definition of A315212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315212.P16544204040533700131

`abs(10*n-A310496(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A315212

/-- `abs(10*n-A310496(n))` -/
def P16544204040533700131.Spec : Prop :=
  ∀ n, P16544204040533700131.a n = A315212 n

theorem P16544204040533700131.correct : P16544204040533700131.Spec := by
  intro n
  simp only [A315212]

end A315212

/-! ## A315212.P3975292715907907005

`2*A008706(n)-A310496(n)`
-/

namespace A315212.P3975292715907907005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310496 n

end

end A315212.P3975292715907907005

namespace A315212

/-- `2*A008706(n)-A310496(n)` -/
def P3975292715907907005.Spec : Prop :=
  ∀ n, P3975292715907907005.a n = A315212 n

end A315212

/-! ## A315212.P3120233297000861195

`2*A314720(n)-A008574(n)`
-/

namespace A315212.P3120233297000861195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314720 n - A008574 n

end

end A315212.P3120233297000861195

namespace A315212

/-- `2*A314720(n)-A008574(n)` -/
def P3120233297000861195.Spec : Prop :=
  ∀ n, P3120233297000861195.a n = A315212 n

end A315212

/-! ## A315212.P14072031537195049974

`A103517(A314720(n)-(2*n+1))`
-/

namespace A315212.P14072031537195049974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A314720 n - (2 * n + 1 : ℤ)).toNat

end

end A315212.P14072031537195049974

namespace A315212

/-- `A103517(A314720(n)-(2*n+1))` -/
def P14072031537195049974.Spec : Prop :=
  ∀ n, P14072031537195049974.a n = A315212 n

end A315212

/-! ## A315212.P5778389412334985205

`A004275(A314720(n)-A004273(n))`
-/

namespace A315212.P5778389412334985205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314720 n - A004273 n).toNat

end

end A315212.P5778389412334985205

namespace A315212

/-- `A004275(A314720(n)-A004273(n))` -/
def P5778389412334985205.Spec : Prop :=
  ∀ n, P5778389412334985205.a n = A315212 n

end A315212

/-! ## A315212.P8993198202988060060

`A004277(A314720(n)-A004277(n))`
-/

namespace A315212.P8993198202988060060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A314720 n - A004277 n).toNat

end

end A315212.P8993198202988060060

namespace A315212

/-- `A004277(A314720(n)-A004277(n))` -/
def P8993198202988060060.Spec : Prop :=
  ∀ n, P8993198202988060060.a n = A315212 n

end A315212

/-! ## A315212.P12364626586227217410

`A008458(n)+A008574(n)-A310496(n)`
-/

namespace A315212.P12364626586227217410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310496 n)

end

end A315212.P12364626586227217410

namespace A315212

/-- `A008458(n)+A008574(n)-A310496(n)` -/
def P12364626586227217410.Spec : Prop :=
  ∀ n, P12364626586227217410.a n = A315212 n

end A315212

/-! ## A315212.P1031064630606730385

`A004273(A314720(n)-n)-A004273(n)`
-/

namespace A315212.P1031064630606730385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A314720 n - (n : ℤ)).toNat - A004273 n

end

end A315212.P1031064630606730385

namespace A315212

/-- `A004273(A314720(n)-n)-A004273(n)` -/
def P1031064630606730385.Spec : Prop :=
  ∀ n, P1031064630606730385.a n = A315212 n

end A315212

/-! ## A315212.P17584725331314079406

`A008574(n)+A005843(A314720(n)-A008574(n))`
-/

namespace A315212.P17584725331314079406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A314720 n - A008574 n).toNat

end

end A315212.P17584725331314079406

namespace A315212

/-- `A008574(n)+A005843(A314720(n)-A008574(n))` -/
def P17584725331314079406.Spec : Prop :=
  ∀ n, P17584725331314079406.a n = A315212 n

end A315212

/-! ## A315212.P18250763666728551605

`A314038(n)-A011582(A011582(n)+n)`
-/

namespace A315212.P18250763666728551605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314038 n - A011582 (A011582 n + (n : ℤ)).toNat

end

end A315212.P18250763666728551605

namespace A315212

/-- `A314038(n)-A011582(A011582(n)+n)` -/
def P18250763666728551605.Spec : Prop :=
  ∀ n, P18250763666728551605.a n = A315212 n

end A315212

/-! ## A315212.P4387381573226140863

`A005843(A314720(n))-A008574(n)`
-/

namespace A315212.P4387381573226140863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314720 n).toNat - A008574 n

end

end A315212.P4387381573226140863

namespace A315212

/-- `A005843(A314720(n))-A008574(n)` -/
def P4387381573226140863.Spec : Prop :=
  ∀ n, P4387381573226140863.a n = A315212 n

end A315212

/-! ## A315212.P13870659637337733579

`A004275(A314720(n))-A004275(2*n)`
-/

namespace A315212.P13870659637337733579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314720 n).toNat - A004275 (2 * n)

end

end A315212.P13870659637337733579

namespace A315212

/-- `A004275(A314720(n))-A004275(2*n)` -/
def P13870659637337733579.Spec : Prop :=
  ∀ n, P13870659637337733579.a n = A315212 n

end A315212

/-! ## A315212.P3327829619801107544

`A005843(A008706(n))-A310496(n)`
-/

namespace A315212.P3327829619801107544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310496 n

end

end A315212.P3327829619801107544

namespace A315212

/-- `A005843(A008706(n))-A310496(n)` -/
def P3327829619801107544.Spec : Prop :=
  ∀ n, P3327829619801107544.a n = A315212 n

end A315212

/-!
# A315213: Coordination sequence Gal.6.453.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315213, the canonical program `A315213.P4408684047996262783` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315213 has offset 0).

The definition of A315213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315213.P14505008474083494675

`A187181(A315828(n))+4*n`
-/

namespace A315213.P14505008474083494675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187181 (A315828 n).toNat + (4 * n : ℤ)

end

end A315213.P14505008474083494675

namespace A315213

/-- `A187181(A315828(n))+4*n` -/
def P14505008474083494675.Spec : Prop :=
  ∀ n, P14505008474083494675.a n = A315213 n

end A315213

/-! ## A315213.P4408684047996262783

`A008574(n)+A250120(n)-A310252(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315213

/-- `A008574(n)+A250120(n)-A310252(n)` -/
def P4408684047996262783.Spec : Prop :=
  ∀ n, P4408684047996262783.a n = A315213 n

theorem P4408684047996262783.correct : P4408684047996262783.Spec := by
  intro n
  simp only [A315213]

end A315213

/-! ## A315213.P4788593302463247977

`A315373(n)-A244895(n-A244895(n))`
-/

namespace A315213.P4788593302463247977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315373 n - A244895 ((n : ℤ) - A244895 n).toNat

end

end A315213.P4788593302463247977

namespace A315213

/-- `A315373(n)-A244895(n-A244895(n))` -/
def P4788593302463247977.Spec : Prop :=
  ∀ n, P4788593302463247977.a n = A315213 n

end A315213

/-! ## A315213.P9551463012482575207

`2*n+A004396(A315959(n))`
-/

namespace A315213.P9551463012482575207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A315959 n).toNat

end

end A315213.P9551463012482575207

namespace A315213

/-- `2*n+A004396(A315959(n))` -/
def P9551463012482575207.Spec : Prop :=
  ∀ n, P9551463012482575207.a n = A315213 n

end A315213

/-! ## A315213.P11898674640362233112

`A004523(A315959(n))+A004277(n)`
-/

namespace A315213.P11898674640362233112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A315959 n).toNat + A004277 n

end

end A315213.P11898674640362233112

namespace A315213

/-- `A004523(A315959(n))+A004277(n)` -/
def P11898674640362233112.Spec : Prop :=
  ∀ n, P11898674640362233112.a n = A315213 n

end A315213

/-! ## A315213.P18090375552858300719

`A008585(n)+A004396(A315959(n))-n`
-/

namespace A315213.P18090375552858300719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + (A004396 (A315959 n).toNat - (n : ℤ))

end

end A315213.P18090375552858300719

namespace A315213

/-- `A008585(n)+A004396(A315959(n))-n` -/
def P18090375552858300719.Spec : Prop :=
  ∀ n, P18090375552858300719.a n = A315213 n

end A315213

/-! ## A315213.P3815111615309720830

`A008486(n)+A004523(A315959(n))-n`
-/

namespace A315213.P3815111615309720830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A004523 (A315959 n).toNat - (n : ℤ))

end

end A315213.P3815111615309720830

namespace A315213

/-- `A008486(n)+A004523(A315959(n))-n` -/
def P3815111615309720830.Spec : Prop :=
  ∀ n, P3815111615309720830.a n = A315213 n

end A315213

/-! ## A315213.P3246244564770824963

`A020639(A002202(n+1))*A004525(A315373(n))`
-/

namespace A315213.P3246244564770824963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002202 (n + 1)).toNat * A004525 (A315373 n).toNat

end

end A315213.P3246244564770824963

namespace A315213

/-- `A020639(A002202(n+1))*A004525(A315373(n))` -/
def P3246244564770824963.Spec : Prop :=
  ∀ n, P3246244564770824963.a n = A315213 n

end A315213

/-! ## A315213.P8163533046814861534

`A004396(A315959(n)+A008486(n))`
-/

namespace A315213.P8163533046814861534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315959 n + A008486 n).toNat

end

end A315213.P8163533046814861534

namespace A315213

/-- `A004396(A315959(n)+A008486(n))` -/
def P8163533046814861534.Spec : Prop :=
  ∀ n, P8163533046814861534.a n = A315213 n

end A315213

/-! ## A315213.P5254126164858189853

`A004396(A315959(n)+A008585(n))`
-/

namespace A315213.P5254126164858189853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315959 n + A008585 n).toNat

end

end A315213.P5254126164858189853

namespace A315213

/-- `A004396(A315959(n)+A008585(n))` -/
def P5254126164858189853.Spec : Prop :=
  ∀ n, P5254126164858189853.a n = A315213 n

end A315213

/-! ## A315213.P9985345229186721550

`A004523(A315959(n)+A008486(n))`
-/

namespace A315213.P9985345229186721550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A315959 n + A008486 n).toNat

end

end A315213.P9985345229186721550

namespace A315213

/-- `A004523(A315959(n)+A008486(n))` -/
def P9985345229186721550.Spec : Prop :=
  ∀ n, P9985345229186721550.a n = A315213 n

end A315213

/-! ## A315213.P2793450311859907747

`A006369(A315959(n)+A008585(n))`
-/

namespace A315213.P2793450311859907747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A315959 n + A008585 n).toNat

end

end A315213.P2793450311859907747

namespace A315213

/-- `A006369(A315959(n)+A008585(n))` -/
def P2793450311859907747.Spec : Prop :=
  ∀ n, P2793450311859907747.a n = A315213 n

end A315213

/-! ## A315213.P18232270724709825901

`A002264(2*(A315959(n)+A008486(n)))`
-/

namespace A315213.P18232270724709825901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * (A315959 n + A008486 n)).toNat

end

end A315213.P18232270724709825901

namespace A315213

/-- `A002264(2*(A315959(n)+A008486(n)))` -/
def P18232270724709825901.Spec : Prop :=
  ∀ n, P18232270724709825901.a n = A315213 n

end A315213

/-!
# A315214: Coordination sequence Gal.5.142.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315214, the canonical program `A315214.P13359799671460808905` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315214 has offset 0).

The definition of A315214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315214.P13359799671460808905

`abs(A008592(n)-A310493(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315214

/-- `abs(A008592(n)-A310493(n))` -/
def P13359799671460808905.Spec : Prop :=
  ∀ n, P13359799671460808905.a n = A315214 n

theorem P13359799671460808905.correct : P13359799671460808905.Spec := by
  intro n
  simp only [A315214]

end A315214

/-! ## A315214.P7676285638951774595

`2*A008706(n)-A310493(n)`
-/

namespace A315214.P7676285638951774595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310493 n

end

end A315214.P7676285638951774595

namespace A315214

/-- `2*A008706(n)-A310493(n)` -/
def P7676285638951774595.Spec : Prop :=
  ∀ n, P7676285638951774595.a n = A315214 n

end A315214

/-! ## A315214.P827883123125587493

`A314736(n)+A004396(A004396(n))`
-/

namespace A315214.P827883123125587493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 n + A004396 (A004396 n).toNat

end

end A315214.P827883123125587493

namespace A315214

/-- `A314736(n)+A004396(A004396(n))` -/
def P827883123125587493.Spec : Prop :=
  ∀ n, P827883123125587493.a n = A315214 n

end A315214

/-! ## A315214.P608751101209722074

`A314428(n)+A004396(A006369(n))`
-/

namespace A315214.P608751101209722074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314428 n + A004396 (A006369 n).toNat

end

end A315214.P608751101209722074

namespace A315214

/-- `A314428(n)+A004396(A006369(n))` -/
def P608751101209722074.Spec : Prop :=
  ∀ n, P608751101209722074.a n = A315214 n

theorem P608751101209722074.correct : P608751101209722074.Spec := by
  intro n
  simp only [A315214, Nat.add_sub_cancel, A315214.P608751101209722074.a, A315214.P13359799671460808905.a, A004396, A004396.P17032557045289780609.a, A006369, A006369.P842576174392056214.a, A008592, A008592.P4981059802862696142.a, A310493, A310493.P491155023743620947.a, A314428, A314428.P9611413599869563837.a, A008574, A008574.P1300280032690682112.a, A313026, A313026.P11714630493594694704.f1, A313026.P11714630493594694704.a, A011862, A011862.P9485299441699197278.a, A312893, A312893.P922128372979076951.a, A298786, A298786.P14431482331037710348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315214

/-! ## A315214.P15484176985976049018

`A311993(n)+A064429(A004396(n))`
-/

namespace A315214.P15484176985976049018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311993 n + A064429 (A004396 n).toNat

end

end A315214.P15484176985976049018

namespace A315214

/-- `A311993(n)+A064429(A004396(n))` -/
def P15484176985976049018.Spec : Prop :=
  ∀ n, P15484176985976049018.a n = A315214 n

end A315214

/-! ## A315214.P10841504428202223829

`A311344(n)+2*A004396(A004396(n))`
-/

namespace A315214.P10841504428202223829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311344 n + 2 * A004396 (A004396 n).toNat

end

end A315214.P10841504428202223829

namespace A315214

/-- `A311344(n)+2*A004396(A004396(n))` -/
def P10841504428202223829.Spec : Prop :=
  ∀ n, P10841504428202223829.a n = A315214 n

end A315214

/-! ## A315214.P9153260522070590073

`A008458(n)+A008574(n)-A310493(n)`
-/

namespace A315214.P9153260522070590073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310493 n)

end

end A315214.P9153260522070590073

namespace A315214

/-- `A008458(n)+A008574(n)-A310493(n)` -/
def P9153260522070590073.Spec : Prop :=
  ∀ n, P9153260522070590073.a n = A315214 n

end A315214

/-! ## A315214.P13385896998599522803

`A315427(n)-A004396(n-A004396(n))`
-/

namespace A315214.P13385896998599522803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315427 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A315214.P13385896998599522803

namespace A315214

/-- `A315427(n)-A004396(n-A004396(n))` -/
def P13385896998599522803.Spec : Prop :=
  ∀ n, P13385896998599522803.a n = A315214 n

end A315214

/-! ## A315214.P10320722895687942314

`2*A315495(n)-A008458(n)`
-/

namespace A315214.P10320722895687942314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315495 n - A008458 n

end

end A315214.P10320722895687942314

namespace A315214

/-- `2*A315495(n)-A008458(n)` -/
def P10320722895687942314.Spec : Prop :=
  ∀ n, P10320722895687942314.a n = A315214 n

end A315214

/-! ## A315214.P2232407728817333870

`A008458(n)-A005843(A008458(n)-A315495(n))`
-/

namespace A315214.P2232407728817333870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315495 n).toNat

end

end A315214.P2232407728817333870

namespace A315214

/-- `A008458(n)-A005843(A008458(n)-A315495(n))` -/
def P2232407728817333870.Spec : Prop :=
  ∀ n, P2232407728817333870.a n = A315214 n

end A315214

/-! ## A315214.P8808013617742062783

`A005843(A008706(n))-A310493(n)`
-/

namespace A315214.P8808013617742062783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310493 n

end

end A315214.P8808013617742062783

namespace A315214

/-- `A005843(A008706(n))-A310493(n)` -/
def P8808013617742062783.Spec : Prop :=
  ∀ n, P8808013617742062783.a n = A315214 n

end A315214

/-! ## A315214.P6998962334878429299

`A005843(A315495(n))-A008458(n)`
-/

namespace A315214.P6998962334878429299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315495 n).toNat - A008458 n

end

end A315214.P6998962334878429299

namespace A315214

/-- `A005843(A315495(n))-A008458(n)` -/
def P6998962334878429299.Spec : Prop :=
  ∀ n, P6998962334878429299.a n = A315214 n

end A315214

/-! ## A315214.P372034869105497893

`A315731(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315214.P372034869105497893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315731 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315214.P372034869105497893

namespace A315214

/-- `A315731(2*n)+A008458(n+1)-(12*n+6)` -/
def P372034869105497893.Spec : Prop :=
  ∀ n, P372034869105497893.a n = A315214 n

end A315214

/-!
# A315215: Coordination sequence Gal.6.352.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315215, the canonical program `A315215.P4888791960146051438` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315215 has offset 0).

The definition of A315215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2313 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315215.P7243333244127142419

`abs(A008592(n)-A310492(n))`
-/

namespace A315215.P7243333244127142419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310492 n|

end

end A315215.P7243333244127142419

namespace A315215

/-- `abs(A008592(n)-A310492(n))` -/
def P7243333244127142419.Spec : Prop :=
  ∀ n, P7243333244127142419.a n = A315215 n

end A315215

/-! ## A315215.P7889322818794531301

`2*A008706(n)-A310492(n)`
-/

namespace A315215.P7889322818794531301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310492 n

end

end A315215.P7889322818794531301

namespace A315215

/-- `2*A008706(n)-A310492(n)` -/
def P7889322818794531301.Spec : Prop :=
  ∀ n, P7889322818794531301.a n = A315215 n

end A315215

/-! ## A315215.P16731919116116229312

`2*A314725(n)-A008574(n)`
-/

namespace A315215.P16731919116116229312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314725 n - A008574 n

end

end A315215.P16731919116116229312

namespace A315215

/-- `2*A314725(n)-A008574(n)` -/
def P16731919116116229312.Spec : Prop :=
  ∀ n, P16731919116116229312.a n = A315215 n

end A315215

/-! ## A315215.P2921201416712275875

`xor(1, A017281(n)-A310492(n))`
-/

namespace A315215.P2921201416712275875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A017281 n - A310492 n)

end

end A315215.P2921201416712275875

namespace A315215

/-- `xor(1, A017281(n)-A310492(n))` -/
def P2921201416712275875.Spec : Prop :=
  ∀ n, P2921201416712275875.a n = A315215 n

end A315215

/-! ## A315215.P10636074770364387574

`A103517(A314725(n)-(2*n+1))`
-/

namespace A315215.P10636074770364387574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A314725 n - (2 * n + 1 : ℤ)).toNat

end

end A315215.P10636074770364387574

namespace A315215

/-- `A103517(A314725(n)-(2*n+1))` -/
def P10636074770364387574.Spec : Prop :=
  ∀ n, P10636074770364387574.a n = A315215 n

end A315215

/-! ## A315215.P6912978702346793998

`A004275(A314725(n)-A004273(n))`
-/

namespace A315215.P6912978702346793998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314725 n - A004273 n).toNat

end

end A315215.P6912978702346793998

namespace A315215

/-- `A004275(A314725(n)-A004273(n))` -/
def P6912978702346793998.Spec : Prop :=
  ∀ n, P6912978702346793998.a n = A315215 n

end A315215

/-! ## A315215.P17706277746871248589

`A004277(A314725(n)-A004277(n))`
-/

namespace A315215.P17706277746871248589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A314725 n - A004277 n).toNat

end

end A315215.P17706277746871248589

namespace A315215

/-- `A004277(A314725(n)-A004277(n))` -/
def P17706277746871248589.Spec : Prop :=
  ∀ n, P17706277746871248589.a n = A315215 n

end A315215

/-! ## A315215.P2404559486800176739

`A008574(n)+2*A004525(A151988(n))`
-/

namespace A315215.P2404559486800176739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + 2 * A004525 (A151988 n).toNat

end

end A315215.P2404559486800176739

namespace A315215

/-- `A008574(n)+2*A004525(A151988(n))` -/
def P2404559486800176739.Spec : Prop :=
  ∀ n, P2404559486800176739.a n = A315215 n

end A315215

/-! ## A315215.P4888791960146051438

`A313154(n)+A253262(A253262(n)+n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315215

/-- `A313154(n)+A253262(A253262(n)+n)` -/
def P4888791960146051438.Spec : Prop :=
  ∀ n, P4888791960146051438.a n = A315215 n

theorem P4888791960146051438.correct : P4888791960146051438.Spec := by
  intro n
  simp only [A315215]

end A315215

/-! ## A315215.P16282240957994201768

`A008458(n)+A008574(n)-A310492(n)`
-/

namespace A315215.P16282240957994201768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310492 n)

end

end A315215.P16282240957994201768

namespace A315215

/-- `A008458(n)+A008574(n)-A310492(n)` -/
def P16282240957994201768.Spec : Prop :=
  ∀ n, P16282240957994201768.a n = A315215 n

end A315215

/-! ## A315215.P10925079820122911919

`A004273(A314725(n)-n)-A004273(n)`
-/

namespace A315215.P10925079820122911919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A314725 n - (n : ℤ)).toNat - A004273 n

end

end A315215.P10925079820122911919

namespace A315215

/-- `A004273(A314725(n)-n)-A004273(n)` -/
def P10925079820122911919.Spec : Prop :=
  ∀ n, P10925079820122911919.a n = A315215 n

end A315215

/-! ## A315215.P12575649847564692326

`A008574(n)+A005843(A314725(n)-A008574(n))`
-/

namespace A315215.P12575649847564692326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A314725 n - A008574 n).toNat

end

end A315215.P12575649847564692326

namespace A315215

/-- `A008574(n)+A005843(A314725(n)-A008574(n))` -/
def P12575649847564692326.Spec : Prop :=
  ∀ n, P12575649847564692326.a n = A315215 n

end A315215

/-! ## A315215.P1360076190282420348

`2*A315496(n)-A008458(n)`
-/

namespace A315215.P1360076190282420348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315496 n - A008458 n

end

end A315215.P1360076190282420348

namespace A315215

/-- `2*A315496(n)-A008458(n)` -/
def P1360076190282420348.Spec : Prop :=
  ∀ n, P1360076190282420348.a n = A315215 n

end A315215

/-! ## A315215.P13916636604057127112

`A008458(n)-A005843(A008458(n)-A315496(n))`
-/

namespace A315215.P13916636604057127112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315496 n).toNat

end

end A315215.P13916636604057127112

namespace A315215

/-- `A008458(n)-A005843(A008458(n)-A315496(n))` -/
def P13916636604057127112.Spec : Prop :=
  ∀ n, P13916636604057127112.a n = A315215 n

end A315215

/-! ## A315215.P13519244505281375016

`A005843(A314725(n))-A008574(n)`
-/

namespace A315215.P13519244505281375016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314725 n).toNat - A008574 n

end

end A315215.P13519244505281375016

namespace A315215

/-- `A005843(A314725(n))-A008574(n)` -/
def P13519244505281375016.Spec : Prop :=
  ∀ n, P13519244505281375016.a n = A315215 n

end A315215

/-! ## A315215.P15479658950093510756

`A004275(A314725(n))-A004275(2*n)`
-/

namespace A315215.P15479658950093510756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314725 n).toNat - A004275 (2 * n)

end

end A315215.P15479658950093510756

namespace A315215

/-- `A004275(A314725(n))-A004275(2*n)` -/
def P15479658950093510756.Spec : Prop :=
  ∀ n, P15479658950093510756.a n = A315215 n

end A315215

/-! ## A315215.P9246946000267255228

`A017281(n)-A004442(A310492(n))`
-/

namespace A315215.P9246946000267255228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A310492 n).toNat

end

end A315215.P9246946000267255228

namespace A315215

/-- `A017281(n)-A004442(A310492(n))` -/
def P9246946000267255228.Spec : Prop :=
  ∀ n, P9246946000267255228.a n = A315215 n

end A315215

/-! ## A315215.P6901465248229561018

`A005843(A008706(n))-A310492(n)`
-/

namespace A315215.P6901465248229561018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310492 n

end

end A315215.P6901465248229561018

namespace A315215

/-- `A005843(A008706(n))-A310492(n)` -/
def P6901465248229561018.Spec : Prop :=
  ∀ n, P6901465248229561018.a n = A315215 n

end A315215

/-! ## A315215.P14846008895904101477

`A005843(A315496(n))-A008458(n)`
-/

namespace A315215.P14846008895904101477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315496 n).toNat - A008458 n

end

end A315215.P14846008895904101477

namespace A315215

/-- `A005843(A315496(n))-A008458(n)` -/
def P14846008895904101477.Spec : Prop :=
  ∀ n, P14846008895904101477.a n = A315215 n

end A315215

/-!
# A315216: Coordination sequence Gal.6.353.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315216, the canonical program `A315216.P6702835054405367658` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315216 has offset 0).

The definition of A315216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315216.P15911522311549809890

`abs(A008592(n)-A310491(n))`
-/

namespace A315216.P15911522311549809890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310491 n|

end

end A315216.P15911522311549809890

namespace A315216

/-- `abs(A008592(n)-A310491(n))` -/
def P15911522311549809890.Spec : Prop :=
  ∀ n, P15911522311549809890.a n = A315216 n

end A315216

/-! ## A315216.P1132360191717044667

`2*A008706(n)-A310491(n)`
-/

namespace A315216.P1132360191717044667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310491 n

end

end A315216.P1132360191717044667

namespace A315216

/-- `2*A008706(n)-A310491(n)` -/
def P1132360191717044667.Spec : Prop :=
  ∀ n, P1132360191717044667.a n = A315216 n

end A315216

/-! ## A315216.P15835981887607451156

`xor(1, A017281(n)-A310491(n))`
-/

namespace A315216.P15835981887607451156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A017281 n - A310491 n)

end

end A315216.P15835981887607451156

namespace A315216

/-- `xor(1, A017281(n)-A310491(n))` -/
def P15835981887607451156.Spec : Prop :=
  ∀ n, P15835981887607451156.a n = A315216 n

end A315216

/-! ## A315216.P16875017964783117895

`A008458(n)+A008574(n)-A310491(n)`
-/

namespace A315216.P16875017964783117895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310491 n)

end

end A315216.P16875017964783117895

namespace A315216

/-- `A008458(n)+A008574(n)-A310491(n)` -/
def P16875017964783117895.Spec : Prop :=
  ∀ n, P16875017964783117895.a n = A315216 n

end A315216

/-! ## A315216.P6702835054405367658

`2*A315498(n)-A008458(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A315216

/-- `2*A315498(n)-A008458(n)` -/
def P6702835054405367658.Spec : Prop :=
  ∀ n, P6702835054405367658.a n = A315216 n

theorem P6702835054405367658.correct : P6702835054405367658.Spec := by
  intro n
  simp only [A315216]

end A315216

/-! ## A315216.P1104164986692552051

`A008458(n)-A005843(A008458(n)-A315498(n))`
-/

namespace A315216.P1104164986692552051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315498 n).toNat

end

end A315216.P1104164986692552051

namespace A315216

/-- `A008458(n)-A005843(A008458(n)-A315498(n))` -/
def P1104164986692552051.Spec : Prop :=
  ∀ n, P1104164986692552051.a n = A315216 n

end A315216

/-! ## A315216.P229916745362365222

`A017281(n)-A004442(A310491(n))`
-/

namespace A315216.P229916745362365222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A310491 n).toNat

end

end A315216.P229916745362365222

namespace A315216

/-- `A017281(n)-A004442(A310491(n))` -/
def P229916745362365222.Spec : Prop :=
  ∀ n, P229916745362365222.a n = A315216 n

end A315216

/-! ## A315216.P12221826354822471419

`A005843(A008706(n))-A310491(n)`
-/

namespace A315216.P12221826354822471419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310491 n

end

end A315216.P12221826354822471419

namespace A315216

/-- `A005843(A008706(n))-A310491(n)` -/
def P12221826354822471419.Spec : Prop :=
  ∀ n, P12221826354822471419.a n = A315216 n

end A315216

/-! ## A315216.P7316716000880894227

`A005843(A315498(n))-A008458(n)`
-/

namespace A315216.P7316716000880894227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315498 n).toNat - A008458 n

end

end A315216.P7316716000880894227

namespace A315216

/-- `A005843(A315498(n))-A008458(n)` -/
def P7316716000880894227.Spec : Prop :=
  ∀ n, P7316716000880894227.a n = A315216 n

end A315216

/-! ## A315216.P16644198834034547927

`abs(1-(A004442(10*n)-A310491(n)))`
-/

namespace A315216.P16644198834034547927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A004442 (10 * n) - A310491 n)|

end

end A315216.P16644198834034547927

namespace A315216

/-- `abs(1-(A004442(10*n)-A310491(n)))` -/
def P16644198834034547927.Spec : Prop :=
  ∀ n, P16644198834034547927.a n = A315216 n

end A315216

/-! ## A315216.P12867228899221989443

`A004442(A004442(10*n)-A310491(n))`
-/

namespace A315216.P12867228899221989443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A004442 (10 * n) - A310491 n).toNat

end

end A315216.P12867228899221989443

namespace A315216

/-- `A004442(A004442(10*n)-A310491(n))` -/
def P12867228899221989443.Spec : Prop :=
  ∀ n, P12867228899221989443.a n = A315216 n

end A315216

/-!
# A315217: Coordination sequence Gal.6.75.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315217, there is no canonical definition to state claims against.
-/

/-! ## A315217.P17571131983337250456

`A315213(n)+A086597(A003418(n))`
-/

namespace A315217.P17571131983337250456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315213 n + A086597 (A003418 n).toNat

end

end A315217.P17571131983337250456

/-! ## A315217.P6238888249268499318

`xor(A191347(A059179(n+1)), A315426(n))`
-/

namespace A315217.P6238888249268499318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A191347 (A059179 (n + 1)).toNat) (A315426 n)

end

end A315217.P6238888249268499318

/-! ## A315217.P13828465209497155043

`A357630(A216644(2*n+1))+A315213(n)`
-/

namespace A315217.P13828465209497155043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357630 (A216644 (2 * n + 1)).toNat + A315213 n

end

end A315217.P13828465209497155043

/-!
# A315219: Coordination sequence Gal.6.598.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315219, there is no canonical definition to state claims against.
-/

/-! ## A315219.P17430761438035771315

`A315220(n)-A014083(A173271(n))`
-/

namespace A315219.P17430761438035771315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315220 n - A014083 (A173271 n).toNat

end

end A315219.P17430761438035771315

/-! ## A315219.P13908340841489749979

`A315220(A062399(n))`
-/

namespace A315219.P13908340841489749979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315220 (A062399 n).toNat

end

end A315219.P13908340841489749979

/-! ## A315219.P2878482231023890005

`A315220(A120126(n))`
-/

namespace A315219.P2878482231023890005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315220 (A120126 n).toNat

end

end A315219.P2878482231023890005

/-! ## A315219.P7155651498389027553

`A315220(A351870(n))`
-/

namespace A315219.P7155651498389027553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315220 (A351870 n).toNat

end

end A315219.P7155651498389027553

/-! ## A315219.P10771521998985525514

`A315220(n)+A000007(A056355(n))`
-/

namespace A315219.P10771521998985525514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315220 n + A000007 (A056355 n).toNat

end

end A315219.P10771521998985525514

/-!
# A315220: Coordination sequence Gal.6.599.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315220, there is no canonical definition to state claims against.
-/

/-! ## A315220.P2006584315483804392

`2*A314920(n)-A008579(n)`
-/

namespace A315220.P2006584315483804392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314920 n - A008579 n

end

end A315220.P2006584315483804392

/-! ## A315220.P13243463987681892302

`2*A314920(n)-A250122(A005843(n))`
-/

namespace A315220.P13243463987681892302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314920 n - A250122 (A005843 n).toNat

end

end A315220.P13243463987681892302

/-! ## A315220.P534275154632319793

`A005843(A314920(n))-A008579(n)`
-/

namespace A315220.P534275154632319793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314920 n).toNat - A008579 n

end

end A315220.P534275154632319793

/-! ## A315220.P3544011682473741639

`A005843(A314920(n))-A250122(A005843(n))`
-/

namespace A315220.P3544011682473741639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314920 n).toNat - A250122 (A005843 n).toNat

end

end A315220.P3544011682473741639

/-! ## A315220.P13953016734296342430

`A315219(n)+A014083(A173271(n))`
-/

namespace A315220.P13953016734296342430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315219 n + A014083 (A173271 n).toNat

end

end A315220.P13953016734296342430

/-!
# A315221: Coordination sequence Gal.5.283.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315221, there is no canonical definition to state claims against.
-/

/-! ## A315221.P12214268655403825869

`A315222(n)+A016354(A314174(n))`
-/

namespace A315221.P12214268655403825869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315222 n + A016354 (A314174 n).toNat

end

end A315221.P12214268655403825869

/-! ## A315221.P10053197801327735783

`A315222(n)-A324416(A110731(n+1))`
-/

namespace A315221.P10053197801327735783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315222 n - A324416 (A110731 (n + 1)).toNat

end

end A315221.P10053197801327735783

/-! ## A315221.P609455862293424504

`A315222(n*A110731(n+1))/A110731(n+1)`
-/

namespace A315221.P609455862293424504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315222 ((n : ℤ) * A110731 (n + 1)).toNat : ℚ) / (A110731 (n + 1) : ℚ)

end

end A315221.P609455862293424504

/-! ## A315221.P9694895511271195022

`A315222(A348810(n)+n)`
-/

namespace A315221.P9694895511271195022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315222 (A348810 n + (n : ℤ)).toNat

end

end A315221.P9694895511271195022

/-!
# A315222: Coordination sequence Gal.5.284.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315222, there is no canonical definition to state claims against.
-/

/-! ## A315222.P1733903407702613081

`A324416(A005940(n+1))+A315221(n)`
-/

namespace A315222.P1733903407702613081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324416 (A005940 (n + 1)).toNat + A315221 n

end

end A315222.P1733903407702613081

/-! ## A315222.P8539534926287359541

`A324416(A110731(n+1))+A315221(n)`
-/

namespace A315222.P8539534926287359541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324416 (A110731 (n + 1)).toNat + A315221 n

end

end A315222.P8539534926287359541

/-!
# A315225: Coordination sequence Gal.6.211.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315225, there is no canonical definition to state claims against.
-/

/-! ## A315225.P12930770118055275897

`∑[A299918(record[A056940(n)])]`
-/

namespace A315225.P12930770118055275897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299918 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315225.P12930770118055275897

/-! ## A315225.P822084437352916515

`A315224(n)+A185284(A311750(n))`
-/

namespace A315225.P822084437352916515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315224 n + A185284 (A311750 n).toNat

end

end A315225.P822084437352916515

/-! ## A315225.P1991755028614014463

`A315224(n)+A185284(A314415(n))`
-/

namespace A315225.P1991755028614014463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315224 n + A185284 (A314415 n).toNat

end

end A315225.P1991755028614014463

/-! ## A315225.P5579176891657645793

`A315224(n)+A185284(A314475(n))`
-/

namespace A315225.P5579176891657645793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315224 n + A185284 (A314475 n).toNat

end

end A315225.P5579176891657645793

/-! ## A315225.P9382136849951187467

`A315224(n)+A185284(A314489(n))`
-/

namespace A315225.P9382136849951187467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315224 n + A185284 (A314489 n).toNat

end

end A315225.P9382136849951187467

/-!
# A315227: Coordination sequence Gal.5.169.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315227, there is no canonical definition to state claims against.
-/

/-! ## A315227.P4552832244837693351

`A004277(A008458(n)-A310198(n))`
-/

namespace A315227.P4552832244837693351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008458 n - A310198 n).toNat

end

end A315227.P4552832244837693351

/-! ## A315227.P8351917956242772906

`A008486(A008574(n))-2*A310198(n)`
-/

namespace A315227.P8351917956242772906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A008574 n).toNat - 2 * A310198 n

end

end A315227.P8351917956242772906

/-! ## A315227.P9772371743463728192

`A008574(n)+A022144(n)%A310198(n)`
-/

namespace A315227.P9772371743463728192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + Int.tmod (A022144 n) (A310198 n)

end

end A315227.P9772371743463728192

/-! ## A315227.P2221205388508275867

`A008486(A008574(n))-A005843(A310198(n))`
-/

namespace A315227.P2221205388508275867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A008574 n).toNat - A005843 (A310198 n).toNat

end

end A315227.P2221205388508275867

/-! ## A315227.P5307769433085959875

`A008574(n)+A005843(A008574(n)-A310198(n))`
-/

namespace A315227.P5307769433085959875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A008574 n - A310198 n).toNat

end

end A315227.P5307769433085959875

/-! ## A315227.P17756094315170946366

`A065033(4*(A008458(n)-A310198(n)))`
-/

namespace A315227.P17756094315170946366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (4 * (A008458 n - A310198 n)).toNat

end

end A315227.P17756094315170946366

/-! ## A315227.P6888407574915445408

`A072154(A008706(n))-2*A310198(n)`
-/

namespace A315227.P6888407574915445408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (A008706 n).toNat - 2 * A310198 n

end

end A315227.P6888407574915445408

/-! ## A315227.P10466045928118108700

`A072154(A008706(n))-A005843(A310198(n))`
-/

namespace A315227.P10466045928118108700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (A008706 n).toNat - A005843 (A310198 n).toNat

end

end A315227.P10466045928118108700

/-!
# A315228: Coordination sequence Gal.6.296.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315228, there is no canonical definition to state claims against.
-/

/-! ## A315228.P3870295151731060139

`A315229(n)+A315236(n)-A315237(n)`
-/

namespace A315228.P3870295151731060139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315229 n + (A315236 n - A315237 n)

end

end A315228.P3870295151731060139

/-! ## A315228.P10604975488257551389

`A159634(6*n+1)-(2*n)%A108777(n+1)`
-/

namespace A315228.P10604975488257551389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159634 (6 * n + 1) - Int.tmod (2 * n : ℤ) (A108777 (n + 1))

end

end A315228.P10604975488257551389

/-! ## A315228.P12855784276250857289

`or(A008574(n), A100661(A151282(n)))`
-/

namespace A315228.P12855784276250857289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A100661 (A151282 n).toNat)

end

end A315228.P12855784276250857289

/-! ## A315228.P10222965946648574642

`or(A100661(A151282(n)), A295774(n))`
-/

namespace A315228.P10222965946648574642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100661 (A151282 n).toNat) (A295774 n)

end

end A315228.P10222965946648574642

/-! ## A315228.P5969477099242675330

`or(A100661(A151282(n)), A312248(n))`
-/

namespace A315228.P5969477099242675330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100661 (A151282 n).toNat) (A312248 n)

end

end A315228.P5969477099242675330

/-!
# A315229: Coordination sequence Gal.6.282.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315229, there is no canonical definition to state claims against.
-/

/-! ## A315229.P3871168395077470504

`A315228(n)+A315237(n)-A315236(n)`
-/

namespace A315229.P3871168395077470504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315228 n + (A315237 n - A315236 n)

end

end A315229.P3871168395077470504

/-! ## A315229.P14881819949012652057

`or(A000005(A114198(n)), A312403(n))`
-/

namespace A315229.P14881819949012652057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A114198 n).toNat) (A312403 n)

end

end A315229.P14881819949012652057

/-! ## A315229.P13563830702308934196

`or(A000005(A114198(n)), A312499(n))`
-/

namespace A315229.P13563830702308934196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A114198 n).toNat) (A312499 n)

end

end A315229.P13563830702308934196

/-! ## A315229.P13246737439434359309

`or(A000005(A114198(n)), A312500(n))`
-/

namespace A315229.P13246737439434359309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A114198 n).toNat) (A312500 n)

end

end A315229.P13246737439434359309

/-! ## A315229.P13465682483980054997

`or(A000005(A150641(n)), A312499(n))`
-/

namespace A315229.P13465682483980054997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A150641 n).toNat) (A312499 n)

end

end A315229.P13465682483980054997

/-!
# A315231: Coordination sequence Gal.6.175.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315231, there is no canonical definition to state claims against.
-/

/-! ## A315231.P3548195382176355024

`or(A000005(A007483(n)), A312496(n))`
-/

namespace A315231.P3548195382176355024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A007483 n).toNat) (A312496 n)

end

end A315231.P3548195382176355024

/-! ## A315231.P9868181595884073257

`or(A013632(A014211(n)), A311340(n))`
-/

namespace A315231.P9868181595884073257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A013632 (A014211 n).toNat) (A311340 n)

end

end A315231.P9868181595884073257

/-! ## A315231.P4388195536452856671

`or(A013632(A014211(n)), A312496(n))`
-/

namespace A315231.P4388195536452856671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A013632 (A014211 n).toNat) (A312496 n)

end

end A315231.P4388195536452856671

/-! ## A315231.P2315427938889673904

`or(A013632(A104081(n)), A311340(n))`
-/

namespace A315231.P2315427938889673904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A013632 (A104081 n).toNat) (A311340 n)

end

end A315231.P2315427938889673904

/-! ## A315231.P15369705031140818673

`or(A013632(A104081(n)), A312496(n))`
-/

namespace A315231.P15369705031140818673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A013632 (A104081 n).toNat) (A312496 n)

end

end A315231.P15369705031140818673

/-!
# A315232: Coordination sequence Gal.6.595.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315232, there is no canonical definition to state claims against.
-/

/-! ## A315232.P6118980079924268860

`2*A314937(n)-A008579(n)`
-/

namespace A315232.P6118980079924268860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314937 n - A008579 n

end

end A315232.P6118980079924268860

/-! ## A315232.P12359802551532144484

`A005843(A314937(n))-A008579(n)`
-/

namespace A315232.P12359802551532144484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314937 n).toNat - A008579 n

end

end A315232.P12359802551532144484

/-! ## A315232.P9620509101891456731

`A305079(A237965(n+1))+A259934(n)`
-/

namespace A315232.P9620509101891456731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A237965 (n + 1)).toNat + A259934 n

end

end A315232.P9620509101891456731

/-! ## A315232.P2740679214515561118

`∑[A000005(A033971(n+1)+1)]-1`
-/

namespace A315232.P2740679214515561118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A033971 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A315232.P2740679214515561118

/-! ## A315232.P5480972449701155409

`A023161(A079940(n+1))+A008586(n)`
-/

namespace A315232.P5480972449701155409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023161 (A079940 (n + 1)).toNat + A008586 n

end

end A315232.P5480972449701155409

/-!
# A315233: Coordination sequence Gal.5.259.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315233, there is no canonical definition to state claims against.
-/

/-! ## A315233.P11617268109343749071

`eq[(n+1)/∏{p}[n+1, #]*∏{e}[n+1, #], A322454(n+1)]+1`
-/

namespace A315233.P11617268109343749071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p : ℕ) : ℚ)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f4 j : ℚ)) n + 1

end

end A315233.P11617268109343749071

/-! ## A315233.P16558256926390127864

`A352745(record[2*A352374(n+1)])`
-/

namespace A315233.P16558256926390127864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A352374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352745 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A315233.P16558256926390127864

/-! ## A315233.P9510909395865060759

`eq[A001037(n)%9, A179677(n+1)]`
-/

namespace A315233.P9510909395865060759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001037 n) 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179677 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A315233.P9510909395865060759

/-! ## A315233.P8349073492812775703

`A039956(n+1)-A039970(A039948(3*n+1))`
-/

namespace A315233.P8349073492812775703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1) - A039970 (A039948 (3 * n + 1)).toNat

end

end A315233.P8349073492812775703

/-! ## A315233.P3191478809323353222

`A039956(n+1)-A039974(A365311(3*n+1))`
-/

namespace A315233.P3191478809323353222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1) - A039974 (A365311 (3 * n + 1)).toNat

end

end A315233.P3191478809323353222

/-!
# A315234: Coordination sequence Gal.6.336.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315234, there is no canonical definition to state claims against.
-/

/-! ## A315234.P12796595200800277236

`or(and(5*n, -2), A007947(4^n))`
-/

namespace A315234.P12796595200800277236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land (5 * n : ℤ) (-2)) (A007947 (4 ^ n))

end

end A315234.P12796595200800277236

/-! ## A315234.P14396001449835725348

`record[gcd(A341979(n), A353832(2*(n+2)))]`
-/

namespace A315234.P14396001449835725348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A341979 (n + 59)) (A353832 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315234.P14396001449835725348

/-! ## A315234.P5795407517900144857

`or(A060594(A000244(n)), A310412(n))`
-/

namespace A315234.P5795407517900144857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060594 (A000244 n).toNat) (A310412 n)

end

end A315234.P5795407517900144857

/-! ## A315234.P5666664899328928082

`or(A060594(A000244(n)), A310413(n))`
-/

namespace A315234.P5666664899328928082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060594 (A000244 n).toNat) (A310413 n)

end

end A315234.P5666664899328928082

/-! ## A315234.P4528945328034250659

`or(A060594(A000244(n)), A310418(n))`
-/

namespace A315234.P4528945328034250659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060594 (A000244 n).toNat) (A310418 n)

end

end A315234.P4528945328034250659

/-!
# A315235: Coordination sequence Gal.6.335.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315235, there is no canonical definition to state claims against.
-/

/-! ## A315235.P17951479449548229461

`or(A085099(A152574(n+1)), A315206(n))`
-/

namespace A315235.P17951479449548229461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A085099 (A152574 (n + 1)).toNat) (A315206 n)

end

end A315235.P17951479449548229461

/-!
# A315236: Coordination sequence Gal.6.604.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315236, there is no canonical definition to state claims against.
-/

/-! ## A315236.P6870931637090533222

`A315228(n)+A315237(n)-A315229(n)`
-/

namespace A315236.P6870931637090533222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315228 n + (A315237 n - A315229 n)

end

end A315236.P6870931637090533222

/-!
# A315237: Coordination sequence Gal.4.128.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315237, the canonical program `A315237.P212944009581056157` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315237 has offset 0).

The definition of A315237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315237.P212944009581056157

`2*A314776(n)-A008574(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315237

/-- `2*A314776(n)-A008574(n)` -/
def P212944009581056157.Spec : Prop :=
  ∀ n, P212944009581056157.a n = A315237 n

theorem P212944009581056157.correct : P212944009581056157.Spec := by
  intro n
  simp only [A315237]

end A315237

/-! ## A315237.P8561438410564551808

`A314776(n)+A022998(A004525(n))`
-/

namespace A315237.P8561438410564551808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314776 n + A022998 (A004525 n).toNat

end

end A315237.P8561438410564551808

namespace A315237

/-- `A314776(n)+A022998(A004525(n))` -/
def P8561438410564551808.Spec : Prop :=
  ∀ n, P8561438410564551808.a n = A315237 n

end A315237

/-! ## A315237.P4396523091457633227

`A314776(n)+A004396(A028390(n))`
-/

namespace A315237.P4396523091457633227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314776 n + A004396 (A028390 n).toNat

end

end A315237.P4396523091457633227

namespace A315237

/-- `A314776(n)+A004396(A028390(n))` -/
def P4396523091457633227.Spec : Prop :=
  ∀ n, P4396523091457633227.a n = A315237 n

end A315237

/-! ## A315237.P2343988674196400967

`A004275(A314776(n)-A004273(n))`
-/

namespace A315237.P2343988674196400967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314776 n - A004273 n).toNat

end

end A315237.P2343988674196400967

namespace A315237

/-- `A004275(A314776(n)-A004273(n))` -/
def P2343988674196400967.Spec : Prop :=
  ∀ n, P2343988674196400967.a n = A315237 n

end A315237

/-! ## A315237.P6917634806319134205

`A008574(n)+2*A022998(A004525(n))`
-/

namespace A315237.P6917634806319134205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + 2 * A022998 (A004525 n).toNat

end

end A315237.P6917634806319134205

namespace A315237

/-- `A008574(n)+2*A022998(A004525(n))` -/
def P6917634806319134205.Spec : Prop :=
  ∀ n, P6917634806319134205.a n = A315237 n

end A315237

/-! ## A315237.P16483521058332755167

`A008574(n)+2*A004396(A028390(n))`
-/

namespace A315237.P16483521058332755167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + 2 * A004396 (A028390 n).toNat

end

end A315237.P16483521058332755167

namespace A315237

/-- `A008574(n)+2*A004396(A028390(n))` -/
def P16483521058332755167.Spec : Prop :=
  ∀ n, P16483521058332755167.a n = A315237 n

end A315237

/-! ## A315237.P10624906144252463315

`A004273(A314776(n)-n)-A004273(n)`
-/

namespace A315237.P10624906144252463315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A314776 n - (n : ℤ)).toNat - A004273 n

end

end A315237.P10624906144252463315

namespace A315237

/-- `A004273(A314776(n)-n)-A004273(n)` -/
def P10624906144252463315.Spec : Prop :=
  ∀ n, P10624906144252463315.a n = A315237 n

end A315237

/-! ## A315237.P14384208819012312197

`A008574(n)+A005843(A314776(n)-A008574(n))`
-/

namespace A315237.P14384208819012312197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A314776 n - A008574 n).toNat

end

end A315237.P14384208819012312197

namespace A315237

/-- `A008574(n)+A005843(A314776(n)-A008574(n))` -/
def P14384208819012312197.Spec : Prop :=
  ∀ n, P14384208819012312197.a n = A315237 n

end A315237

/-! ## A315237.P2017396969376636281

`A008458(n)+A008579(n)-A310546(n)`
-/

namespace A315237.P2017396969376636281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008579 n - A310546 n)

end

end A315237.P2017396969376636281

namespace A315237

/-- `A008458(n)+A008579(n)-A310546(n)` -/
def P2017396969376636281.Spec : Prop :=
  ∀ n, P2017396969376636281.a n = A315237 n

end A315237

/-! ## A315237.P16379509877495692496

`2*A315505(n)-A008458(n)`
-/

namespace A315237.P16379509877495692496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315505 n - A008458 n

end

end A315237.P16379509877495692496

namespace A315237

/-- `2*A315505(n)-A008458(n)` -/
def P16379509877495692496.Spec : Prop :=
  ∀ n, P16379509877495692496.a n = A315237 n

end A315237

/-! ## A315237.P18398552034244859087

`A008458(n)-A005843(A008458(n)-A315505(n))`
-/

namespace A315237.P18398552034244859087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315505 n).toNat

end

end A315237.P18398552034244859087

namespace A315237

/-- `A008458(n)-A005843(A008458(n)-A315505(n))` -/
def P18398552034244859087.Spec : Prop :=
  ∀ n, P18398552034244859087.a n = A315237 n

end A315237

/-! ## A315237.P3723283379937011953

`A005843(A314776(n))-A008574(n)`
-/

namespace A315237.P3723283379937011953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314776 n).toNat - A008574 n

end

end A315237.P3723283379937011953

namespace A315237

/-- `A005843(A314776(n))-A008574(n)` -/
def P3723283379937011953.Spec : Prop :=
  ∀ n, P3723283379937011953.a n = A315237 n

end A315237

/-! ## A315237.P16442211540089332085

`A004275(A314776(n))-A004275(2*n)`
-/

namespace A315237.P16442211540089332085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314776 n).toNat - A004275 (2 * n)

end

end A315237.P16442211540089332085

namespace A315237

/-- `A004275(A314776(n))-A004275(2*n)` -/
def P16442211540089332085.Spec : Prop :=
  ∀ n, P16442211540089332085.a n = A315237 n

end A315237

/-! ## A315237.P6821827631785242286

`A005843(A315505(n))-A008458(n)`
-/

namespace A315237.P6821827631785242286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315505 n).toNat - A008458 n

end

end A315237.P6821827631785242286

namespace A315237

/-- `A005843(A315505(n))-A008458(n)` -/
def P6821827631785242286.Spec : Prop :=
  ∀ n, P6821827631785242286.a n = A315237 n

end A315237

/-! ## A315237.P2203110151477190340

`A004275(A315505(n))-A004275(3*n)`
-/

namespace A315237.P2203110151477190340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A315505 n).toNat - A004275 (3 * n)

end

end A315237.P2203110151477190340

namespace A315237

/-- `A004275(A315505(n))-A004275(3*n)` -/
def P2203110151477190340.Spec : Prop :=
  ∀ n, P2203110151477190340.a n = A315237 n

end A315237

/-!
# A315239: Coordination sequence Gal.5.326.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315239, there is no canonical definition to state claims against.
-/

/-! ## A315239.P383396527631888384

`A038590(n)-A056239(A000108(n+1))`
-/

namespace A315239.P383396527631888384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038590 n - A056239 (A000108 (n + 1)).toNat

end

end A315239.P383396527631888384

/-!
# A315240: Coordination sequence Gal.6.35.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315240, there is no canonical definition to state claims against.
-/

/-! ## A315240.P8854075274332136738

`A329903(A005388(n))+A139322(n)`
-/

namespace A315240.P8854075274332136738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329903 (A005388 n).toNat + A139322 n

end

end A315240.P8854075274332136738

/-! ## A315240.P16631825782878361430

`A315437(n)-A120936(A192738(n))`
-/

namespace A315240.P16631825782878361430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315437 n - A120936 (A192738 n).toNat

end

end A315240.P16631825782878361430

/-! ## A315240.P4983293770753319804

`A326441(n)+A313461(n)+A083925(A297880(n))`
-/

namespace A315240.P4983293770753319804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326441 n + (A313461 n + A083925 (A297880 n).toNat)

end

end A315240.P4983293770753319804

/-! ## A315240.P15423834859632922881

`A326441(n)+A313461(n)+A047999(A045789(n+1))`
-/

namespace A315240.P15423834859632922881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326441 n + (A313461 n + A047999 (A045789 (n + 1)).toNat)

end

end A315240.P15423834859632922881

/-! ## A315240.P11743354991691428467

`A326441(n)+A100226(A000217(n+2))*A313461(n)`
-/

namespace A315240.P11743354991691428467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326441 n + A100226 (A000217 (n + 2)).toNat * A313461 n

end

end A315240.P11743354991691428467

/-!
# A315241: Coordination sequence Gal.6.548.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315241, there is no canonical definition to state claims against.
-/

/-! ## A315241.P11532444937123136266

`A314841(n)-A056594(A190861(n))`
-/

namespace A315241.P11532444937123136266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n - A056594 (A190861 n).toNat

end

end A315241.P11532444937123136266

/-! ## A315241.P15301524818192686927

`A314841(n)+A056594(A190861(n)+2)`
-/

namespace A315241.P15301524818192686927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + A056594 (A190861 n + 2).toNat

end

end A315241.P15301524818192686927

/-!
# A315242: Coordination sequence Gal.6.36.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315242, the canonical program `A315242.P2454074657046270504` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315242 has offset 0).

The definition of A315242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315242.P2454074657046270504

`A314851(n)+A046978(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315242

/-- `A314851(n)+A046978(n)` -/
def P2454074657046270504.Spec : Prop :=
  ∀ n, P2454074657046270504.a n = A315242 n

theorem P2454074657046270504.correct : P2454074657046270504.Spec := by
  intro n
  simp only [A315242]

end A315242

/-! ## A315242.P17170736559949571207

`A046978(n)+A314896(n)+n-A255347(n)`
-/

namespace A315242.P17170736559949571207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + (A314896 n + ((n : ℤ) - A255347 n))

end

end A315242.P17170736559949571207

namespace A315242

/-- `A046978(n)+A314896(n)+n-A255347(n)` -/
def P17170736559949571207.Spec : Prop :=
  ∀ n, P17170736559949571207.a n = A315242 n

theorem P17170736559949571207.correct : P17170736559949571207.Spec := by
  intro n
  simp only [A315242, Nat.add_sub_cancel, A315242.P17170736559949571207.a, A315242.P2454074657046270504.a, A046978, A046978.P71107966793699888.a, A255347, A255347.P15894743462553089016.f1, A255347.P15894743462553089016.a, A314851, A314851.P12082733388595412.a, A314896, A314896.P16109661729483114242.a, A004525, A004525.P4158271949796742323.a, A127365, A127365.P16635661420336530327.a, A311843, A311843.P4745182286114243014.f1, A311843.P4745182286114243014.a, A008574, A008574.P1300280032690682112.a, A011861, A011861.P4500963193198654930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A315242

/-! ## A315242.P2922866384330654857

`A046978(n)+A004525(n)+A313875(n)-A255347(n)`
-/

namespace A315242.P2922866384330654857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + (A004525 n + (A313875 n - A255347 n))

end

end A315242.P2922866384330654857

namespace A315242

/-- `A046978(n)+A004525(n)+A313875(n)-A255347(n)` -/
def P2922866384330654857.Spec : Prop :=
  ∀ n, P2922866384330654857.a n = A315242 n

theorem P2922866384330654857.correct : P2922866384330654857.Spec := by
  intro n
  simp only [A315242, Nat.add_sub_cancel, A315242.P2922866384330654857.a, A315242.P2454074657046270504.a, A004525, A004525.P4158271949796742323.a, A046978, A046978.P71107966793699888.a, A255347, A255347.P15894743462553089016.f1, A255347.P15894743462553089016.a, A313875, A313875.P9058260822961243366.a, A314851, A314851.P12082733388595412.a, A127365, A127365.P16635661420336530327.a, A311843, A311843.P4745182286114243014.f1, A311843.P4745182286114243014.a, A314896, A314896.P16109661729483114242.a, A008574, A008574.P1300280032690682112.a, A011861, A011861.P4500963193198654930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A315242

/-! ## A315242.P3638097130049605362

`A046978(n)+A315543(n)-A255347(n)`
-/

namespace A315242.P3638097130049605362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + (A315543 n - A255347 n)

end

end A315242.P3638097130049605362

namespace A315242

/-- `A046978(n)+A315543(n)-A255347(n)` -/
def P3638097130049605362.Spec : Prop :=
  ∀ n, P3638097130049605362.a n = A315242 n

theorem P3638097130049605362.correct : P3638097130049605362.Spec := by
  intro n
  simp only [A315242, Nat.add_sub_cancel, A315242.P3638097130049605362.a, A315242.P2454074657046270504.a, A046978, A046978.P71107966793699888.a, A255347, A255347.P15894743462553089016.f1, A255347.P15894743462553089016.a, A314851, A314851.P12082733388595412.a, A315543, A315543.P9834102323510964404.a, A127365, A127365.P16635661420336530327.a, A314896, A314896.P16109661729483114242.a, A004525, A004525.P4158271949796742323.a, A311843, A311843.P4745182286114243014.f1, A311843.P4745182286114243014.a, A008574, A008574.P1300280032690682112.a, A011861, A011861.P4500963193198654930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A315242

/-! ## A315242.P6651896579657473147

`A046978(n)-A001489(A315543(n)-A255347(n))`
-/

namespace A315242.P6651896579657473147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n - A001489 (A315543 n - A255347 n).toNat

end

end A315242.P6651896579657473147

namespace A315242

/-- `A046978(n)-A001489(A315543(n)-A255347(n))` -/
def P6651896579657473147.Spec : Prop :=
  ∀ n, P6651896579657473147.a n = A315242 n

end A315242

/-!
# A315243: Coordination sequence Gal.6.484.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315243, there is no canonical definition to state claims against.
-/

/-! ## A315243.P12201052274694985261

`A315248(n)+A121373(A001732(n))`
-/

namespace A315243.P12201052274694985261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315248 n + A121373 (A001732 n).toNat

end

end A315243.P12201052274694985261

/-! ## A315243.P11921190355445143176

`A315265(n)-A073267(A061138(n))`
-/

namespace A315243.P11921190355445143176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315265 n - A073267 (A061138 n).toNat

end

end A315243.P11921190355445143176

/-! ## A315243.P11839905350392457679

`A315523(n)-A001222(A256205(n))`
-/

namespace A315243.P11839905350392457679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315523 n - A001222 (A256205 n).toNat

end

end A315243.P11839905350392457679

/-! ## A315243.P3351896623820361831

`A315265(n)-A341620(A150502(n))`
-/

namespace A315243.P3351896623820361831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315265 n - A341620 (A150502 n).toNat

end

end A315243.P3351896623820361831

/-! ## A315243.P14043219062448014964

`A312893(n)+A037902(A068560(3*n+4))`
-/

namespace A315243.P14043219062448014964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312893 n + A037902 (A068560 (3 * n + 4)).toNat

end

end A315243.P14043219062448014964

/-!
# A315244: Coordination sequence Gal.6.156.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315244, the canonical program `A315244.P6173037825378904960` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315244 has offset 0).

The definition of A315244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315244.P2665475270079338334

`A313702(n)+A134667(n)`
-/

namespace A315244.P2665475270079338334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313702 n + A134667 n

end

end A315244.P2665475270079338334

namespace A315244

/-- `A313702(n)+A134667(n)` -/
def P2665475270079338334.Spec : Prop :=
  ∀ n, P2665475270079338334.a n = A315244 n

end A315244

/-! ## A315244.P17489502608620813812

`A314836(n)+n-∑[A131735(n)]`
-/

namespace A315244.P17489502608620813812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314836 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315244.P17489502608620813812

namespace A315244

/-- `A314836(n)+n-∑[A131735(n)]` -/
def P17489502608620813812.Spec : Prop :=
  ∀ n, P17489502608620813812.a n = A315244 n

end A315244

/-! ## A315244.P6173037825378904960

`A314830(n)+A004396(A004525(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315244

/-- `A314830(n)+A004396(A004525(n))` -/
def P6173037825378904960.Spec : Prop :=
  ∀ n, P6173037825378904960.a n = A315244 n

theorem P6173037825378904960.correct : P6173037825378904960.Spec := by
  intro n
  simp only [A315244]

end A315244

/-! ## A315244.P14096166576163595655

`A314836(n)+A004525(A004396(n))`
-/

namespace A315244.P14096166576163595655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314836 n + A004525 (A004396 n).toNat

end

end A315244.P14096166576163595655

namespace A315244

/-- `A314836(n)+A004525(A004396(n))` -/
def P14096166576163595655.Spec : Prop :=
  ∀ n, P14096166576163595655.a n = A315244 n

end A315244

/-! ## A315244.P17457567500744791726

`A314899(n)+A134667(A004525(n))`
-/

namespace A315244.P17457567500744791726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n + A134667 (A004525 n).toNat

end

end A315244.P17457567500744791726

namespace A315244

/-- `A314899(n)+A134667(A004525(n))` -/
def P17457567500744791726.Spec : Prop :=
  ∀ n, P17457567500744791726.a n = A315244 n

end A315244

/-! ## A315244.P15438556620912889811

`A301672(n)+2*A004396(A004525(n))`
-/

namespace A315244.P15438556620912889811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + 2 * A004396 (A004525 n).toNat

end

end A315244.P15438556620912889811

namespace A315244

/-- `A301672(n)+2*A004396(A004525(n))` -/
def P15438556620912889811.Spec : Prop :=
  ∀ n, P15438556620912889811.a n = A315244 n

theorem P15438556620912889811.correct : P15438556620912889811.Spec := by
  intro n
  simp only [A315244, Nat.add_sub_cancel, A315244.P15438556620912889811.a, A315244.P6173037825378904960.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A301672, A301672.P11730082666054359426.f1, A301672.P11730082666054359426.a, A314830, A314830.P17814670870789309722.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315244

/-! ## A315244.P14562596353704393589

`abs(A008592(n)-A310472(n))`
-/

namespace A315244.P14562596353704393589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310472 n|

end

end A315244.P14562596353704393589

namespace A315244

/-- `abs(A008592(n)-A310472(n))` -/
def P14562596353704393589.Spec : Prop :=
  ∀ n, P14562596353704393589.a n = A315244 n

end A315244

/-! ## A315244.P14652592941465645132

`2*A008706(n)-A310472(n)`
-/

namespace A315244.P14652592941465645132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310472 n

end

end A315244.P14652592941465645132

namespace A315244

/-- `2*A008706(n)-A310472(n)` -/
def P14652592941465645132.Spec : Prop :=
  ∀ n, P14652592941465645132.a n = A315244 n

end A315244

/-! ## A315244.P10117263665965612340

`A008458(n)+A008574(n)-A310472(n)`
-/

namespace A315244.P10117263665965612340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310472 n)

end

end A315244.P10117263665965612340

namespace A315244

/-- `A008458(n)+A008574(n)-A310472(n)` -/
def P10117263665965612340.Spec : Prop :=
  ∀ n, P10117263665965612340.a n = A315244 n

end A315244

/-! ## A315244.P17658033732488143695

`∑{d}[A008592(n)-A310472(n), A000010(#)]`
-/

namespace A315244.P17658033732488143695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A310472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315244.P17658033732488143695

namespace A315244

/-- `∑{d}[A008592(n)-A310472(n), A000010(#)]` -/
def P17658033732488143695.Spec : Prop :=
  ∀ n, P17658033732488143695.a n = A315244 n

end A315244

/-! ## A315244.P12231656547077241915

`A315522(n)-∑[A131735(n)]`
-/

namespace A315244.P12231656547077241915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315522 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315244.P12231656547077241915

namespace A315244

/-- `A315522(n)-∑[A131735(n)]` -/
def P12231656547077241915.Spec : Prop :=
  ∀ n, P12231656547077241915.a n = A315244 n

end A315244

/-! ## A315244.P14989678717226675647

`A004525(A004396(n))+A315522(n)-n`
-/

namespace A315244.P14989678717226675647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A315522 n - (n : ℤ))

end

end A315244.P14989678717226675647

namespace A315244

/-- `A004525(A004396(n))+A315522(n)-n` -/
def P14989678717226675647.Spec : Prop :=
  ∀ n, P14989678717226675647.a n = A315244 n

end A315244

/-! ## A315244.P4115247330111211581

`A005843(A008706(n))-A310472(n)`
-/

namespace A315244.P4115247330111211581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310472 n

end

end A315244.P4115247330111211581

namespace A315244

/-- `A005843(A008706(n))-A310472(n)` -/
def P4115247330111211581.Spec : Prop :=
  ∀ n, P4115247330111211581.a n = A315244 n

end A315244

/-!
# A315245: Coordination sequence Gal.6.250.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315245, the canonical program `A315245.P5574364421952085527` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315245 has offset 0).

The definition of A315245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2382 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315245.P5574364421952085527

`2*A313696(n)-A310442(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A315245

/-- `2*A313696(n)-A310442(n)` -/
def P5574364421952085527.Spec : Prop :=
  ∀ n, P5574364421952085527.a n = A315245 n

theorem P5574364421952085527.correct : P5574364421952085527.Spec := by
  intro n
  simp only [A315245]

end A315245

/-! ## A315245.P9094819678584077447

`(A315305(n)+A315188(n))/2`
-/

namespace A315245.P9094819678584077447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315305 n + A315188 n : ℚ) / 2

end

end A315245.P9094819678584077447

namespace A315245

/-- `(A315305(n)+A315188(n))/2` -/
def P9094819678584077447.Spec : Prop :=
  ∀ n, P9094819678584077447.a n = (A315245 n : ℚ)

end A315245

/-! ## A315245.P4747283013599097204

`A315183(n)+A004525(A315261(n)-A315183(n))`
-/

namespace A315245.P4747283013599097204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315183 n + A004525 (A315261 n - A315183 n).toNat

end

end A315245.P4747283013599097204

namespace A315245

/-- `A315183(n)+A004525(A315261(n)-A315183(n))` -/
def P4747283013599097204.Spec : Prop :=
  ∀ n, P4747283013599097204.a n = A315245 n

end A315245

/-! ## A315245.P13647266905855083618

`abs(A008592(n)-A310471(n))`
-/

namespace A315245.P13647266905855083618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310471 n|

end

end A315245.P13647266905855083618

namespace A315245

/-- `abs(A008592(n)-A310471(n))` -/
def P13647266905855083618.Spec : Prop :=
  ∀ n, P13647266905855083618.a n = A315245 n

end A315245

/-! ## A315245.P7674547399405294225

`2*A008706(n)-A310471(n)`
-/

namespace A315245.P7674547399405294225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310471 n

end

end A315245.P7674547399405294225

namespace A315245

/-- `2*A008706(n)-A310471(n)` -/
def P7674547399405294225.Spec : Prop :=
  ∀ n, P7674547399405294225.a n = A315245 n

end A315245

/-! ## A315245.P17903260463004107270

`A008458(n)+A008574(n)-A310471(n)`
-/

namespace A315245.P17903260463004107270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310471 n)

end

end A315245.P17903260463004107270

namespace A315245

/-- `A008458(n)+A008574(n)-A310471(n)` -/
def P17903260463004107270.Spec : Prop :=
  ∀ n, P17903260463004107270.a n = A315245 n

end A315245

/-! ## A315245.P15465494854491673284

`∑{d}[A008592(n)-A310471(n), A000010(#)]`
-/

namespace A315245.P15465494854491673284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A310471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315245.P15465494854491673284

namespace A315245

/-- `∑{d}[A008592(n)-A310471(n), A000010(#)]` -/
def P15465494854491673284.Spec : Prop :=
  ∀ n, P15465494854491673284.a n = A315245 n

end A315245

/-! ## A315245.P14575695636876994933

`A315183(n)+A004525(A315316(n)-A315183(n))`
-/

namespace A315245.P14575695636876994933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315183 n + A004525 (A315316 n - A315183 n).toNat

end

end A315245.P14575695636876994933

namespace A315245

/-- `A315183(n)+A004525(A315316(n)-A315183(n))` -/
def P14575695636876994933.Spec : Prop :=
  ∀ n, P14575695636876994933.a n = A315245 n

end A315245

/-! ## A315245.P16180545477786662598

`2*A315470(n)-A315699(n)`
-/

namespace A315245.P16180545477786662598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315470 n - A315699 n

end

end A315245.P16180545477786662598

namespace A315245

/-- `2*A315470(n)-A315699(n)` -/
def P16180545477786662598.Spec : Prop :=
  ∀ n, P16180545477786662598.a n = A315245 n

end A315245

/-! ## A315245.P8277845965301670856

`A315699(n)-A005843(A315699(n)-A315470(n))`
-/

namespace A315245.P8277845965301670856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315699 n - A005843 (A315699 n - A315470 n).toNat

end

end A315245.P8277845965301670856

namespace A315245

/-- `A315699(n)-A005843(A315699(n)-A315470(n))` -/
def P8277845965301670856.Spec : Prop :=
  ∀ n, P8277845965301670856.a n = A315245 n

end A315245

/-! ## A315245.P5397072434668540899

`A180004(A315183(n))`
-/

namespace A315245.P5397072434668540899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A315183 n).toNat

end

end A315245.P5397072434668540899

namespace A315245

/-- `A180004(A315183(n))` -/
def P5397072434668540899.Spec : Prop :=
  ∀ n, P5397072434668540899.a n = A315245 n

end A315245

/-! ## A315245.P14859125903847883825

`A005843(A313696(n))-A310442(n)`
-/

namespace A315245.P14859125903847883825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313696 n).toNat - A310442 n

end

end A315245.P14859125903847883825

namespace A315245

/-- `A005843(A313696(n))-A310442(n)` -/
def P14859125903847883825.Spec : Prop :=
  ∀ n, P14859125903847883825.a n = A315245 n

end A315245

/-! ## A315245.P11794593436361006220

`A005843(A008706(n))-A310471(n)`
-/

namespace A315245.P11794593436361006220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310471 n

end

end A315245.P11794593436361006220

namespace A315245

/-- `A005843(A008706(n))-A310471(n)` -/
def P11794593436361006220.Spec : Prop :=
  ∀ n, P11794593436361006220.a n = A315245 n

end A315245

/-! ## A315245.P17984980758229741171

`A005843(A315470(n))-A315699(n)`
-/

namespace A315245.P17984980758229741171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315470 n).toNat - A315699 n

end

end A315245.P17984980758229741171

namespace A315245

/-- `A005843(A315470(n))-A315699(n)` -/
def P17984980758229741171.Spec : Prop :=
  ∀ n, P17984980758229741171.a n = A315245 n

end A315245

/-! ## A315245.P9204302589100110197

`A065502(A008458(n))-A310471(n)`
-/

namespace A315245.P9204302589100110197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A310471 n

end

end A315245.P9204302589100110197

namespace A315245

/-- `A065502(A008458(n))-A310471(n)` -/
def P9204302589100110197.Spec : Prop :=
  ∀ n, P9204302589100110197.a n = A315245 n

end A315245

/-! ## A315245.P7965758600580570805

`A315633(2*n)/A135042(2*n+1)*A135042(n+1)`
-/

namespace A315245.P7965758600580570805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315633 (2 * n) : ℚ) / (A135042 (2 * n + 1) : ℚ) * (A135042 (n + 1) : ℚ)

end

end A315245.P7965758600580570805

namespace A315245

/-- `A315633(2*n)/A135042(2*n+1)*A135042(n+1)` -/
def P7965758600580570805.Spec : Prop :=
  ∀ n, P7965758600580570805.a n = (A315245 n : ℚ)

end A315245

/-! ## A315245.P7003517207007796734

`A004525(A315633(2*n))`
-/

namespace A315245.P7003517207007796734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315633 (2 * n)).toNat

end

end A315245.P7003517207007796734

namespace A315245

/-- `A004525(A315633(2*n))` -/
def P7003517207007796734.Spec : Prop :=
  ∀ n, P7003517207007796734.a n = A315245 n

end A315245

/-! ## A315245.P9816951649594794438

`A004526(A315633(2*n)+1)`
-/

namespace A315245.P9816951649594794438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315633 (2 * n) + 1).toNat

end

end A315245.P9816951649594794438

namespace A315245

/-- `A004526(A315633(2*n)+1)` -/
def P9816951649594794438.Spec : Prop :=
  ∀ n, P9816951649594794438.a n = A315245 n

end A315245

/-! ## A315245.P12311932712808189490

`A004525(A315261(n)+A315183(n))`
-/

namespace A315245.P12311932712808189490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315261 n + A315183 n).toNat

end

end A315245.P12311932712808189490

namespace A315245

/-- `A004525(A315261(n)+A315183(n))` -/
def P12311932712808189490.Spec : Prop :=
  ∀ n, P12311932712808189490.a n = A315245 n

end A315245

/-! ## A315245.P6168776460791265970

`A315686(2*n)-6*n`
-/

namespace A315245.P6168776460791265970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315686 (2 * n) - (6 * n : ℤ)

end

end A315245.P6168776460791265970

namespace A315245

/-- `A315686(2*n)-6*n` -/
def P6168776460791265970.Spec : Prop :=
  ∀ n, P6168776460791265970.a n = A315245 n

end A315245

/-!
# A315246: Coordination sequence Gal.6.203.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315246, the canonical program `A315246.P15325396058034907963` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315246 has offset 0).

The definition of A315246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315246.P15325396058034907963

`A315067(n)+A128834(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315246

/-- `A315067(n)+A128834(n)` -/
def P15325396058034907963.Spec : Prop :=
  ∀ n, P15325396058034907963.a n = A315246 n

theorem P15325396058034907963.correct : P15325396058034907963.Spec := by
  intro n
  simp only [A315246]

end A315246

/-! ## A315246.P9329857050231951412

`abs(A008592(n)-A310470(n))`
-/

namespace A315246.P9329857050231951412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310470 n|

end

end A315246.P9329857050231951412

namespace A315246

/-- `abs(A008592(n)-A310470(n))` -/
def P9329857050231951412.Spec : Prop :=
  ∀ n, P9329857050231951412.a n = A315246 n

end A315246

/-! ## A315246.P17108457133852805775

`floor(A010015(n)/A310470(n))`
-/

namespace A315246.P17108457133852805775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A310470 n : ℚ)⌋

end

end A315246.P17108457133852805775

namespace A315246

/-- `floor(A010015(n)/A310470(n))` -/
def P17108457133852805775.Spec : Prop :=
  ∀ n, P17108457133852805775.a n = A315246 n

end A315246

/-! ## A315246.P2991916730382236434

`A315196(n)+Δ[A011865(n)]`
-/

namespace A315246.P2991916730382236434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315196 n + (f1 (n + 1) - f1 n)

end

end A315246.P2991916730382236434

namespace A315246

/-- `A315196(n)+Δ[A011865(n)]` -/
def P2991916730382236434.Spec : Prop :=
  ∀ n, P2991916730382236434.a n = A315246 n

end A315246

/-! ## A315246.P10325123724066328559

`A315067(n)-A010892(n+2)`
-/

namespace A315246.P10325123724066328559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315067 n - A010892 (n + 2)

end

end A315246.P10325123724066328559

namespace A315246

/-- `A315067(n)-A010892(n+2)` -/
def P10325123724066328559.Spec : Prop :=
  ∀ n, P10325123724066328559.a n = A315246 n

end A315246

/-! ## A315246.P18033275415277968

`2*A008706(n)-A310470(n)`
-/

namespace A315246.P18033275415277968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310470 n

end

end A315246.P18033275415277968

namespace A315246

/-- `2*A008706(n)-A310470(n)` -/
def P18033275415277968.Spec : Prop :=
  ∀ n, P18033275415277968.a n = A315246 n

end A315246

/-! ## A315246.P4781313821833371394

`A314841(n)+A004396(A004525(n))`
-/

namespace A315246.P4781313821833371394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + A004396 (A004525 n).toNat

end

end A315246.P4781313821833371394

namespace A315246

/-- `A314841(n)+A004396(A004525(n))` -/
def P4781313821833371394.Spec : Prop :=
  ∀ n, P4781313821833371394.a n = A315246 n

theorem P4781313821833371394.correct : P4781313821833371394.Spec := by
  intro n
  simp only [A315246, Nat.add_sub_cancel, A315246.P4781313821833371394.a, A315246.P15325396058034907963.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A128834, A128834.P16779687439637953687.a, A314841, A314841.P5099753023197914535.a, A315067, A315067.P1327162686597900604.a, A010892, A010892.P14408744864468695543.a, A312526, A312526.P17098405118883711689.f1, A312526.P17098405118883711689.a, A312620, A312620.P764241885793850481.a, A011865, A011865.P18048699183673763300.a, A312065, A312065.P12266081500591104946.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P16955071387491425171.f1, A047513.P16955071387491425171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315246

/-! ## A315246.P14441329489103053818

`A314847(n)+A004525(A004396(n))`
-/

namespace A315246.P14441329489103053818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314847 n + A004525 (A004396 n).toNat

end

end A315246.P14441329489103053818

namespace A315246

/-- `A314847(n)+A004525(A004396(n))` -/
def P14441329489103053818.Spec : Prop :=
  ∀ n, P14441329489103053818.a n = A315246 n

end A315246

/-! ## A315246.P6541904624188626901

`A008458(n)+A008574(n)-A310470(n)`
-/

namespace A315246.P6541904624188626901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310470 n)

end

end A315246.P6541904624188626901

namespace A315246

/-- `A008458(n)+A008574(n)-A310470(n)` -/
def P6541904624188626901.Spec : Prop :=
  ∀ n, P6541904624188626901.a n = A315246 n

end A315246

/-! ## A315246.P16356904159015010702

`A004525(A004396(n))+A315322(n)-A004396(n)`
-/

namespace A315246.P16356904159015010702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A315322 n - A004396 n)

end

end A315246.P16356904159015010702

namespace A315246

/-- `A004525(A004396(n))+A315322(n)-A004396(n)` -/
def P16356904159015010702.Spec : Prop :=
  ∀ n, P16356904159015010702.a n = A315246 n

end A315246

/-! ## A315246.P13525360367641867727

`A315512(n)-∑[A021913(n)]`
-/

namespace A315246.P13525360367641867727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315512 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315246.P13525360367641867727

namespace A315246

/-- `A315512(n)-∑[A021913(n)]` -/
def P13525360367641867727.Spec : Prop :=
  ∀ n, P13525360367641867727.a n = A315246 n

theorem P13525360367641867727.correct : P13525360367641867727.Spec := by
  intro n
  simp only [A315246, Nat.add_sub_cancel, A315246.P13525360367641867727.f1, A315246.P13525360367641867727.a, A315246.P15325396058034907963.a, A021913, A021913.P3902253882929539198.a, A128834, A128834.P16779687439637953687.a, A315067, A315067.P1327162686597900604.a, A315512, A315512.P16857491610922492177.f1, A315512.P16857491610922492177.a, A004525, A004525.P4158271949796742323.a, A010892, A010892.P14408744864468695543.a, A312526, A312526.P17098405118883711689.f1, A312526.P17098405118883711689.a, A011865, A011865.P18048699183673763300.a, A312065, A312065.P12266081500591104946.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P16955071387491425171.f1, A047513.P16955071387491425171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315246

/-! ## A315246.P10471841968489926828

`A315512(n)-Δ[A011848(n)]`
-/

namespace A315246.P10471841968489926828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315512 n - (f1 (n + 1) - f1 n)

end

end A315246.P10471841968489926828

namespace A315246

/-- `A315512(n)-Δ[A011848(n)]` -/
def P10471841968489926828.Spec : Prop :=
  ∀ n, P10471841968489926828.a n = A315246 n

end A315246

/-! ## A315246.P3039071518768796670

`A004525(n)+A315512(n)-n`
-/

namespace A315246.P3039071518768796670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315512 n - (n : ℤ))

end

end A315246.P3039071518768796670

namespace A315246

/-- `A004525(n)+A315512(n)-n` -/
def P3039071518768796670.Spec : Prop :=
  ∀ n, P3039071518768796670.a n = A315246 n

end A315246

/-! ## A315246.P11549186167314411626

`A074067(A310470(n))`
-/

namespace A315246.P11549186167314411626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A310470 n).toNat

end

end A315246.P11549186167314411626

namespace A315246

/-- `A074067(A310470(n))` -/
def P11549186167314411626.Spec : Prop :=
  ∀ n, P11549186167314411626.a n = A315246 n

end A315246

/-! ## A315246.P17105478800946834134

`A005843(A008706(n))-A310470(n)`
-/

namespace A315246.P17105478800946834134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310470 n

end

end A315246.P17105478800946834134

namespace A315246

/-- `A005843(A008706(n))-A310470(n)` -/
def P17105478800946834134.Spec : Prop :=
  ∀ n, P17105478800946834134.a n = A315246 n

end A315246

/-! ## A315246.P6607192836277001355

`A004396(A315512(n)+A004525(n))+n`
-/

namespace A315246.P6607192836277001355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315512 n + A004525 n).toNat + (n : ℤ)

end

end A315246.P6607192836277001355

namespace A315246

/-- `A004396(A315512(n)+A004525(n))+n` -/
def P6607192836277001355.Spec : Prop :=
  ∀ n, P6607192836277001355.a n = A315246 n

end A315246

/-!
# A315247: Coordination sequence Gal.5.87.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315247, the canonical program `A315247.P17209575023830611151` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315247 has offset 0).

The definition of A315247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315247.P17209575023830611151

`abs(A008592(n)-A310469(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315247

/-- `abs(A008592(n)-A310469(n))` -/
def P17209575023830611151.Spec : Prop :=
  ∀ n, P17209575023830611151.a n = A315247 n

theorem P17209575023830611151.correct : P17209575023830611151.Spec := by
  intro n
  simp only [A315247]

end A315247

/-! ## A315247.P2209162876111633403

`floor(A010015(n)/A310469(n))`
-/

namespace A315247.P2209162876111633403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A310469 n : ℚ)⌋

end

end A315247.P2209162876111633403

namespace A315247

/-- `floor(A010015(n)/A310469(n))` -/
def P2209162876111633403.Spec : Prop :=
  ∀ n, P2209162876111633403.a n = A315247 n

end A315247

/-! ## A315247.P6537313393579714569

`A008706(n)-A105385(n+1)`
-/

namespace A315247.P6537313393579714569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A105385 (n + 1)

end

end A315247.P6537313393579714569

namespace A315247

/-- `A008706(n)-A105385(n+1)` -/
def P6537313393579714569.Spec : Prop :=
  ∀ n, P6537313393579714569.a n = A315247 n

end A315247

/-! ## A315247.P256113659571882570

`A008706(n)-A092202(n+2)`
-/

namespace A315247.P256113659571882570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A092202 (n + 2)

end

end A315247.P256113659571882570

namespace A315247

/-- `A008706(n)-A092202(n+2)` -/
def P256113659571882570.Spec : Prop :=
  ∀ n, P256113659571882570.a n = A315247 n

end A315247

/-! ## A315247.P9966867304252026960

`A047207(A072154(n))+2*n+1`
-/

namespace A315247.P9966867304252026960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047207 (A072154 n).toNat + (2 * n + 1 : ℤ)

end

end A315247.P9966867304252026960

namespace A315247

/-- `A047207(A072154(n))+2*n+1` -/
def P9966867304252026960.Spec : Prop :=
  ∀ n, P9966867304252026960.a n = A315247 n

end A315247

/-! ## A315247.P11043974664546166157

`A105384(2*(n+2))+A008706(n)`
-/

namespace A315247.P11043974664546166157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105384 (2 * (n + 2)) + A008706 n

end

end A315247.P11043974664546166157

namespace A315247

/-- `A105384(2*(n+2))+A008706(n)` -/
def P11043974664546166157.Spec : Prop :=
  ∀ n, P11043974664546166157.a n = A315247 n

end A315247

/-! ## A315247.P10357832458753807554

`A047448(n+1)+A072154(n)+n`
-/

namespace A315247.P10357832458753807554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047448 (n + 1) + (A072154 n + (n : ℤ))

end

end A315247.P10357832458753807554

namespace A315247

/-- `A047448(n+1)+A072154(n)+n` -/
def P10357832458753807554.Spec : Prop :=
  ∀ n, P10357832458753807554.a n = A315247 n

end A315247

/-! ## A315247.P7366479779419968277

`2*n+A250120(n)-A265227(n+1)`
-/

namespace A315247.P7366479779419968277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A250120 n - A265227 (n + 1))

end

end A315247.P7366479779419968277

namespace A315247

/-- `2*n+A250120(n)-A265227(n+1)` -/
def P7366479779419968277.Spec : Prop :=
  ∀ n, P7366479779419968277.a n = A315247 n

end A315247

/-! ## A315247.P15396308239292088139

`A014019(A004275(n))+A008587(n)`
-/

namespace A315247.P15396308239292088139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (A004275 n).toNat + A008587 n

end

end A315247.P15396308239292088139

namespace A315247

/-- `A014019(A004275(n))+A008587(n)` -/
def P15396308239292088139.Spec : Prop :=
  ∀ n, P15396308239292088139.a n = A315247 n

end A315247

/-! ## A315247.P3772246775425220511

`A008458(n)+A008574(n)-A310469(n)`
-/

namespace A315247.P3772246775425220511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310469 n)

end

end A315247.P3772246775425220511

namespace A315247

/-- `A008458(n)+A008574(n)-A310469(n)` -/
def P3772246775425220511.Spec : Prop :=
  ∀ n, P3772246775425220511.a n = A315247 n

end A315247

/-! ## A315247.P17628883761322070155

`A315707(n)-A004396(A265188(n+1)-n)`
-/

namespace A315247.P17628883761322070155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 n - A004396 (A265188 (n + 1) - (n : ℤ)).toNat

end

end A315247.P17628883761322070155

namespace A315247

/-- `A315707(n)-A004396(A265188(n+1)-n)` -/
def P17628883761322070155.Spec : Prop :=
  ∀ n, P17628883761322070155.a n = A315247 n

end A315247

/-! ## A315247.P13166133510020803624

`A315707(n)-A274616(A265188(n+1)-n)`
-/

namespace A315247.P13166133510020803624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 n - A274616 (A265188 (n + 1) - (n : ℤ)).toNat

end

end A315247.P13166133510020803624

namespace A315247

/-- `A315707(n)-A274616(A265188(n+1)-n)` -/
def P13166133510020803624.Spec : Prop :=
  ∀ n, P13166133510020803624.a n = A315247 n

end A315247

/-! ## A315247.P4477807717341777552

`A008576(A047363(n+1)+n)-A047363(n+1)`
-/

namespace A315247.P4477807717341777552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (A047363 (n + 1) + (n : ℤ)).toNat - A047363 (n + 1)

end

end A315247.P4477807717341777552

namespace A315247

/-- `A008576(A047363(n+1)+n)-A047363(n+1)` -/
def P4477807717341777552.Spec : Prop :=
  ∀ n, P4477807717341777552.a n = A315247 n

end A315247

/-! ## A315247.P16501396828365804567

`A315477(n)-Δ[A011858(n)]`
-/

namespace A315247.P16501396828365804567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315477 n - (f1 (n + 1) - f1 n)

end

end A315247.P16501396828365804567

namespace A315247

/-- `A315477(n)-Δ[A011858(n)]` -/
def P16501396828365804567.Spec : Prop :=
  ∀ n, P16501396828365804567.a n = A315247 n

end A315247

/-! ## A315247.P1607498809982955923

`A074067(A310469(n))`
-/

namespace A315247.P1607498809982955923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A310469 n).toNat

end

end A315247.P1607498809982955923

namespace A315247

/-- `A074067(A310469(n))` -/
def P1607498809982955923.Spec : Prop :=
  ∀ n, P1607498809982955923.a n = A315247 n

end A315247

/-! ## A315247.P17547169852489865918

`A072154(3*n)-A265188(n+1)`
-/

namespace A315247.P17547169852489865918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (3 * n) - A265188 (n + 1)

end

end A315247.P17547169852489865918

namespace A315247

/-- `A072154(3*n)-A265188(n+1)` -/
def P17547169852489865918.Spec : Prop :=
  ∀ n, P17547169852489865918.a n = A315247 n

end A315247

/-! ## A315247.P2983313330875754199

`A010891(A017017(n))+A008706(n)`
-/

namespace A315247.P2983313330875754199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010891 (A017017 n).toNat + A008706 n

end

end A315247.P2983313330875754199

namespace A315247

/-- `A010891(A017017(n))+A008706(n)` -/
def P2983313330875754199.Spec : Prop :=
  ∀ n, P2983313330875754199.a n = A315247 n

end A315247

/-! ## A315247.P7593982720332329797

`A312892(2*n)-(A047263(2*n+1)+n)`
-/

namespace A315247.P7593982720332329797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312892 (2 * n) - (A047263 (2 * n + 1) + (n : ℤ))

end

end A315247.P7593982720332329797

namespace A315247

/-- `A312892(2*n)-(A047263(2*n+1)+n)` -/
def P7593982720332329797.Spec : Prop :=
  ∀ n, P7593982720332329797.a n = A315247 n

end A315247

/-! ## A315247.P18409065578590180889

`A008706(n)-A010891(A017101(n))`
-/

namespace A315247.P18409065578590180889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A010891 (A017101 n).toNat

end

end A315247.P18409065578590180889

namespace A315247

/-- `A008706(n)-A010891(A017101(n))` -/
def P18409065578590180889.Spec : Prop :=
  ∀ n, P18409065578590180889.a n = A315247 n

end A315247

/-! ## A315247.P1178870846462094899

`A314093(2*n)-A008587(n)`
-/

namespace A315247.P1178870846462094899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314093 (2 * n) - A008587 n

end

end A315247.P1178870846462094899

namespace A315247

/-- `A314093(2*n)-A008587(n)` -/
def P1178870846462094899.Spec : Prop :=
  ∀ n, P1178870846462094899.a n = A315247 n

end A315247

/-!
# A315248: Coordination sequence Gal.4.123.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315248, there is no canonical definition to state claims against.
-/

/-! ## A315248.P7764391102419306691

`A315103(n)+A244895(n)`
-/

namespace A315248.P7764391102419306691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315103 n + A244895 n

end

end A315248.P7764391102419306691

/-! ## A315248.P9584190667953321994

`A330025(2*n)+A315103(n)`
-/

namespace A315248.P9584190667953321994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (2 * n) + A315103 n

end

end A315248.P9584190667953321994

/-! ## A315248.P2923770254192532945

`A330025(A005843(n))+A000027(A315103(n))`
-/

namespace A315248.P2923770254192532945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A005843 n).toNat + A000027 (A315103 n).toNat

end

end A315248.P2923770254192532945

/-! ## A315248.P17129668480937331312

`A330025(A005843(n))+A315103(n)%A133537(n+2)`
-/

namespace A315248.P17129668480937331312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A005843 n).toNat + Int.tmod (A315103 n) (A133537 (n + 2))

end

end A315248.P17129668480937331312

/-! ## A315248.P3381979262778012751

`A330025(A005843(n))+A315103(n)%A002755(n)`
-/

namespace A315248.P3381979262778012751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A005843 n).toNat + Int.tmod (A315103 n) (A002755 n)

end

end A315248.P3381979262778012751

/-!
# A315249: Coordination sequence Gal.5.332.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315249, there is no canonical definition to state claims against.
-/

/-! ## A315249.P4455149776867293237

`A313548(A032559(n+1))-4`
-/

namespace A315249.P4455149776867293237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313548 (A032559 (n + 1)).toNat - 4

end

end A315249.P4455149776867293237

/-! ## A315249.P2759684819641494965

`A314736(n)+A001221(A206839(n))`
-/

namespace A315249.P2759684819641494965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 n + A001221 (A206839 n).toNat

end

end A315249.P2759684819641494965

/-! ## A315249.P12763040481912851957

`A032741(A222511(n+1))+A008574(n)`
-/

namespace A315249.P12763040481912851957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A222511 (n + 1)).toNat + A008574 n

end

end A315249.P12763040481912851957

/-! ## A315249.P2894342004040337257

`A001221(A206839(n))+A004525(A315267(n))+2*n`
-/

namespace A315249.P2894342004040337257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A206839 n).toNat + (A004525 (A315267 n).toNat + (2 * n : ℤ))

end

end A315249.P2894342004040337257

/-!
# A315250: Coordination sequence Gal.6.523.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315250, there is no canonical definition to state claims against.
-/

/-! ## A315250.P16155037158806201385

`A315265(n)-A317552(A155212(n))`
-/

namespace A315250.P16155037158806201385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315265 n - A317552 (A155212 n).toNat

end

end A315250.P16155037158806201385

/-! ## A315250.P16823904451041104990

`A315252(n)-A049320(A000110(n))`
-/

namespace A315250.P16823904451041104990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315252 n - A049320 (A000110 n).toNat

end

end A315250.P16823904451041104990

/-!
# A315251: Coordination sequence Gal.6.28.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315251, there is no canonical definition to state claims against.
-/

/-! ## A315251.P120773278764416486

`A059655(n+1)+A010060(A235248(n+1))`
-/

namespace A315251.P120773278764416486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059655 (n + 1) + A010060 (A235248 (n + 1)).toNat

end

end A315251.P120773278764416486

/-!
# A315252: Coordination sequence Gal.6.522.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315252, there is no canonical definition to state claims against.
-/

/-! ## A315252.P5877794444819508569

`A315261(n)-A302242(A005388(n))`
-/

namespace A315252.P5877794444819508569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315261 n - A302242 (A005388 n).toNat

end

end A315252.P5877794444819508569

/-! ## A315252.P10061577204106388241

`A084806(n+1)+A001222(A290356(n))`
-/

namespace A315252.P10061577204106388241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084806 (n + 1) + A001222 (A290356 n).toNat

end

end A315252.P10061577204106388241

/-! ## A315252.P4036302095442788632

`A315208(n)+A016378(A066401(n+1))`
-/

namespace A315252.P4036302095442788632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315208 n + A016378 (A066401 (n + 1)).toNat

end

end A315252.P4036302095442788632

/-! ## A315252.P13067316890668248471

`A156251(A225493(n+1)+1)+A005187(n)`
-/

namespace A315252.P13067316890668248471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A225493 (n + 1) + 1).toNat + A005187 n

end

end A315252.P13067316890668248471

/-! ## A315252.P10005931105146660420

`A190750(n+1)-A053383(A094790(n+1))`
-/

namespace A315252.P10005931105146660420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190750 (n + 1) - A053383 (A094790 (n + 1)).toNat

end

end A315252.P10005931105146660420

/-!
# A315253: Coordination sequence Gal.6.132.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315253, the canonical program `A315253.P3103999631941486934` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315253 has offset 0).

The definition of A315253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2453 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315253.P3103999631941486934

`A301298(n)+A046978(A004396(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A315253

/-- `A301298(n)+A046978(A004396(n))` -/
def P3103999631941486934.Spec : Prop :=
  ∀ n, P3103999631941486934.a n = A315253 n

theorem P3103999631941486934.correct : P3103999631941486934.Spec := by
  intro n
  simp only [A315253]

end A315253

/-! ## A315253.P7122914525779626759

`A315465(n)-∑[A022003(n)]`
-/

namespace A315253.P7122914525779626759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315465 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315253.P7122914525779626759

namespace A315253

/-- `A315465(n)-∑[A022003(n)]` -/
def P7122914525779626759.Spec : Prop :=
  ∀ n, P7122914525779626759.a n = A315253 n

end A315253

/-! ## A315253.P2089930464404987640

`A315465(n)-A002264(n+1)`
-/

namespace A315253.P2089930464404987640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315465 n - A002264 (n + 1)

end

end A315253.P2089930464404987640

namespace A315253

/-- `A315465(n)-A002264(n+1)` -/
def P2089930464404987640.Spec : Prop :=
  ∀ n, P2089930464404987640.a n = A315253 n

end A315253

/-! ## A315253.P7592285380181372881

`A315465(n)-A008615(2*n+1)`
-/

namespace A315253.P7592285380181372881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315465 n - A008615 (2 * n + 1)

end

end A315253.P7592285380181372881

namespace A315253

/-- `A315465(n)-A008615(2*n+1)` -/
def P7592285380181372881.Spec : Prop :=
  ∀ n, P7592285380181372881.a n = A315253 n

end A315253

/-! ## A315253.P10165557575891283717

`A315465(n)-A042965(n+1)+n`
-/

namespace A315253.P10165557575891283717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315465 n - A042965 (n + 1) + (n : ℤ)

end

end A315253.P10165557575891283717

namespace A315253

/-- `A315465(n)-A042965(n+1)+n` -/
def P10165557575891283717.Spec : Prop :=
  ∀ n, P10165557575891283717.a n = A315253 n

end A315253

/-! ## A315253.P10109249616129959022

`A008576(n)+A315465(n)-A008486(n)`
-/

namespace A315253.P10109249616129959022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315465 n - A008486 n)

end

end A315253.P10109249616129959022

namespace A315253

/-- `A008576(n)+A315465(n)-A008486(n)` -/
def P10109249616129959022.Spec : Prop :=
  ∀ n, P10109249616129959022.a n = A315253 n

end A315253

/-! ## A315253.P8705831112830784266

`A315515(n)-∑[A021913(n)]`
-/

namespace A315253.P8705831112830784266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315515 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315253.P8705831112830784266

namespace A315253

/-- `A315515(n)-∑[A021913(n)]` -/
def P8705831112830784266.Spec : Prop :=
  ∀ n, P8705831112830784266.a n = A315253 n

theorem P8705831112830784266.correct : P8705831112830784266.Spec := by
  intro n
  simp only [A315253, Nat.add_sub_cancel, A315253.P8705831112830784266.f1, A315253.P8705831112830784266.a, A315253.P3103999631941486934.a, A004396, A004396.P17032557045289780609.a, A021913, A021913.P3902253882929539198.a, A046978, A046978.P71107966793699888.a, A301298, A301298.P17841740048100400826.a, A315515, A315515.P6282386179263163100.f1, A315515.P6282386179263163100.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315253

/-! ## A315253.P18232702965238681985

`A315515(n)-Δ[A011848(n)]`
-/

namespace A315253.P18232702965238681985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315515 n - (f1 (n + 1) - f1 n)

end

end A315253.P18232702965238681985

namespace A315253

/-- `A315515(n)-Δ[A011848(n)]` -/
def P18232702965238681985.Spec : Prop :=
  ∀ n, P18232702965238681985.a n = A315253 n

end A315253

/-! ## A315253.P12073277639626904183

`A315515(n)-A004524(n+1)`
-/

namespace A315253.P12073277639626904183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315515 n - A004524 (n + 1)

end

end A315253.P12073277639626904183

namespace A315253

/-- `A315515(n)-A004524(n+1)` -/
def P12073277639626904183.Spec : Prop :=
  ∀ n, P12073277639626904183.a n = A315253 n

end A315253

/-! ## A315253.P15404642456362694404

`A004525(n)+A315515(n)-n`
-/

namespace A315253.P15404642456362694404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315515 n - (n : ℤ))

end

end A315253.P15404642456362694404

namespace A315253

/-- `A004525(n)+A315515(n)-n` -/
def P15404642456362694404.Spec : Prop :=
  ∀ n, P15404642456362694404.a n = A315253 n

end A315253

/-! ## A315253.P1912357228371603342

`abs(A008592(n)-A310466(n))`
-/

namespace A315253.P1912357228371603342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310466 n|

end

end A315253.P1912357228371603342

namespace A315253

/-- `abs(A008592(n)-A310466(n))` -/
def P1912357228371603342.Spec : Prop :=
  ∀ n, P1912357228371603342.a n = A315253 n

end A315253

/-! ## A315253.P1755166373883781826

`2*A008706(n)-A310466(n)`
-/

namespace A315253.P1755166373883781826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310466 n

end

end A315253.P1755166373883781826

namespace A315253

/-- `2*A008706(n)-A310466(n)` -/
def P1755166373883781826.Spec : Prop :=
  ∀ n, P1755166373883781826.a n = A315253 n

end A315253

/-! ## A315253.P9276122047882326431

`A008458(n)+A008574(n)-A310466(n)`
-/

namespace A315253.P9276122047882326431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310466 n)

end

end A315253.P9276122047882326431

namespace A315253

/-- `A008458(n)+A008574(n)-A310466(n)` -/
def P9276122047882326431.Spec : Prop :=
  ∀ n, P9276122047882326431.a n = A315253 n

end A315253

/-! ## A315253.P6215120807749370917

`A005843(A008706(n))-A310466(n)`
-/

namespace A315253.P6215120807749370917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310466 n

end

end A315253.P6215120807749370917

namespace A315253

/-- `A005843(A008706(n))-A310466(n)` -/
def P6215120807749370917.Spec : Prop :=
  ∀ n, P6215120807749370917.a n = A315253 n

end A315253

/-! ## A315253.P640604883288276602

`A004396(A315459(n)+A004396(n))+n`
-/

namespace A315253.P640604883288276602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315459 n + A004396 n).toNat + (n : ℤ)

end

end A315253.P640604883288276602

namespace A315253

/-- `A004396(A315459(n)+A004396(n))+n` -/
def P640604883288276602.Spec : Prop :=
  ∀ n, P640604883288276602.a n = A315253 n

end A315253

/-! ## A315253.P1068641276825100788

`A004396(n)+A004396(A315741(n)+A004525(n))`
-/

namespace A315253.P1068641276825100788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A315741 n + A004525 n).toNat

end

end A315253.P1068641276825100788

namespace A315253

/-- `A004396(n)+A004396(A315741(n)+A004525(n))` -/
def P1068641276825100788.Spec : Prop :=
  ∀ n, P1068641276825100788.a n = A315253 n

end A315253

/-!
# A315254: Coordination sequence Gal.6.232.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315254, the canonical program `A315254.P4856332562113004887` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315254 has offset 0).

The definition of A315254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315254.P4856332562113004887

`abs(A008592(n)-A310465(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315254

/-- `abs(A008592(n)-A310465(n))` -/
def P4856332562113004887.Spec : Prop :=
  ∀ n, P4856332562113004887.a n = A315254 n

theorem P4856332562113004887.correct : P4856332562113004887.Spec := by
  intro n
  simp only [A315254]

end A315254

/-! ## A315254.P8339287121914302023

`2*A008706(n)-A310465(n)`
-/

namespace A315254.P8339287121914302023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310465 n

end

end A315254.P8339287121914302023

namespace A315254

/-- `2*A008706(n)-A310465(n)` -/
def P8339287121914302023.Spec : Prop :=
  ∀ n, P8339287121914302023.a n = A315254 n

end A315254

/-! ## A315254.P6102624992308709217

`A135042(2*n+1)-A310465(n)`
-/

namespace A315254.P6102624992308709217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A310465 n

end

end A315254.P6102624992308709217

namespace A315254

/-- `A135042(2*n+1)-A310465(n)` -/
def P6102624992308709217.Spec : Prop :=
  ∀ n, P6102624992308709217.a n = A315254 n

end A315254

/-! ## A315254.P5358248958345468545

`A184418(A008574(n))-A310465(n)`
-/

namespace A315254.P5358248958345468545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A310465 n

end

end A315254.P5358248958345468545

namespace A315254

/-- `A184418(A008574(n))-A310465(n)` -/
def P5358248958345468545.Spec : Prop :=
  ∀ n, P5358248958345468545.a n = A315254 n

end A315254

/-! ## A315254.P3229006474625786163

`A008458(n)+A008574(n)-A310465(n)`
-/

namespace A315254.P3229006474625786163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310465 n)

end

end A315254.P3229006474625786163

namespace A315254

/-- `A008458(n)+A008574(n)-A310465(n)` -/
def P3229006474625786163.Spec : Prop :=
  ∀ n, P3229006474625786163.a n = A315254 n

end A315254

/-! ## A315254.P2323674576448991836

`A008574(n)+A008588(n)%A310465(n)`
-/

namespace A315254.P2323674576448991836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + Int.tmod (A008588 n) (A310465 n)

end

end A315254.P2323674576448991836

namespace A315254

/-- `A008574(n)+A008588(n)%A310465(n)` -/
def P2323674576448991836.Spec : Prop :=
  ∀ n, P2323674576448991836.a n = A315254 n

end A315254

/-! ## A315254.P862287519798008496

`A008574(n)+A315759(n)-A310456(n)`
-/

namespace A315254.P862287519798008496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A315759 n - A310456 n)

end

end A315254.P862287519798008496

namespace A315254

/-- `A008574(n)+A315759(n)-A310456(n)` -/
def P862287519798008496.Spec : Prop :=
  ∀ n, P862287519798008496.a n = A315254 n

end A315254

/-! ## A315254.P9338386788246255787

`A005843(A008706(n))-A310465(n)`
-/

namespace A315254.P9338386788246255787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310465 n

end

end A315254.P9338386788246255787

namespace A315254

/-- `A005843(A008706(n))-A310465(n)` -/
def P9338386788246255787.Spec : Prop :=
  ∀ n, P9338386788246255787.a n = A315254 n

end A315254

/-! ## A315254.P9901680091198746523

`A065502(A008458(n))-A310465(n)`
-/

namespace A315254.P9901680091198746523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A310465 n

end

end A315254.P9901680091198746523

namespace A315254

/-- `A065502(A008458(n))-A310465(n)` -/
def P9901680091198746523.Spec : Prop :=
  ∀ n, P9901680091198746523.a n = A315254 n

end A315254

/-! ## A315254.P4266067396240489707

`A233583(A017281(n))-A310465(n)`
-/

namespace A315254.P4266067396240489707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A310465 n

end

end A315254.P4266067396240489707

namespace A315254

/-- `A233583(A017281(n))-A310465(n)` -/
def P4266067396240489707.Spec : Prop :=
  ∀ n, P4266067396240489707.a n = A315254 n

end A315254

/-!
# A315255: Coordination sequence Gal.5.67.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315255, the canonical program `A315255.P10615745907849045230` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315255 has offset 0).

The definition of A315255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315255.P10615745907849045230

`A330025(n)+A314898(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315255

/-- `A330025(n)+A314898(n)` -/
def P10615745907849045230.Spec : Prop :=
  ∀ n, P10615745907849045230.a n = A315255 n

theorem P10615745907849045230.correct : P10615745907849045230.Spec := by
  intro n
  simp only [A315255]

end A315255

/-! ## A315255.P1085453979119295043

`A315445(n)+A014019(n+3)`
-/

namespace A315255.P1085453979119295043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315445 n + A014019 (n + 3)

end

end A315255.P1085453979119295043

namespace A315255

/-- `A315445(n)+A014019(n+3)` -/
def P1085453979119295043.Spec : Prop :=
  ∀ n, P1085453979119295043.a n = A315255 n

end A315255

/-! ## A315255.P16472546279357521178

`A312162(n)+2*A330025(n)`
-/

namespace A315255.P16472546279357521178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312162 n + 2 * A330025 n

end

end A315255.P16472546279357521178

namespace A315255

/-- `A312162(n)+2*A330025(n)` -/
def P16472546279357521178.Spec : Prop :=
  ∀ n, P16472546279357521178.a n = A315255 n

end A315255

/-! ## A315255.P4170870562010078995

`A330025(A330025(n)+n)+A314943(n)`
-/

namespace A315255.P4170870562010078995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A314943 n

end

end A315255.P4170870562010078995

namespace A315255

/-- `A330025(A330025(n)+n)+A314943(n)` -/
def P4170870562010078995.Spec : Prop :=
  ∀ n, P4170870562010078995.a n = A315255 n

end A315255

/-! ## A315255.P11428191632975728413

`abs(A008592(n)-A310464(n))`
-/

namespace A315255.P11428191632975728413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310464 n|

end

end A315255.P11428191632975728413

namespace A315255

/-- `abs(A008592(n)-A310464(n))` -/
def P11428191632975728413.Spec : Prop :=
  ∀ n, P11428191632975728413.a n = A315255 n

end A315255

/-! ## A315255.P11321020338984370454

`2*A008706(n)-A310464(n)`
-/

namespace A315255.P11321020338984370454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310464 n

end

end A315255.P11321020338984370454

namespace A315255

/-- `2*A008706(n)-A310464(n)` -/
def P11321020338984370454.Spec : Prop :=
  ∀ n, P11321020338984370454.a n = A315255 n

end A315255

/-! ## A315255.P9323160775530816123

`A008458(n)+A008574(n)-A310464(n)`
-/

namespace A315255.P9323160775530816123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310464 n)

end

end A315255.P9323160775530816123

namespace A315255

/-- `A008458(n)+A008574(n)-A310464(n)` -/
def P9323160775530816123.Spec : Prop :=
  ∀ n, P9323160775530816123.a n = A315255 n

end A315255

/-! ## A315255.P12266362161463318289

`A315481(n)-Δ[A011858(n)]`
-/

namespace A315255.P12266362161463318289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315481 n - (f1 (n + 1) - f1 n)

end

end A315255.P12266362161463318289

namespace A315255

/-- `A315481(n)-Δ[A011858(n)]` -/
def P12266362161463318289.Spec : Prop :=
  ∀ n, P12266362161463318289.a n = A315255 n

end A315255

/-! ## A315255.P2561345524786298984

`A315481(n)-A134119(2*n)`
-/

namespace A315255.P2561345524786298984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315481 n - A134119 (2 * n)

end

end A315255.P2561345524786298984

namespace A315255

/-- `A315481(n)-A134119(2*n)` -/
def P2561345524786298984.Spec : Prop :=
  ∀ n, P2561345524786298984.a n = A315255 n

end A315255

/-! ## A315255.P8936247398670164528

`A064429(A315402(n)+A000007(n))`
-/

namespace A315255.P8936247398670164528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A315402 n + A000007 n).toNat

end

end A315255.P8936247398670164528

namespace A315255

/-- `A064429(A315402(n)+A000007(n))` -/
def P8936247398670164528.Spec : Prop :=
  ∀ n, P8936247398670164528.a n = A315255 n

end A315255

/-! ## A315255.P1164282383284157142

`A005843(A008706(n))-A310464(n)`
-/

namespace A315255.P1164282383284157142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310464 n

end

end A315255.P1164282383284157142

namespace A315255

/-- `A005843(A008706(n))-A310464(n)` -/
def P1164282383284157142.Spec : Prop :=
  ∀ n, P1164282383284157142.a n = A315255 n

end A315255

/-!
# A315256: Coordination sequence Gal.5.111.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315256, the canonical program `A315256.P12326446692328451720` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315256 has offset 0).

The definition of A315256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315256.P14656678764997808543

`A314671(n)+A004396(n)`
-/

namespace A315256.P14656678764997808543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314671 n + A004396 n

end

end A315256.P14656678764997808543

namespace A315256

/-- `A314671(n)+A004396(n)` -/
def P14656678764997808543.Spec : Prop :=
  ∀ n, P14656678764997808543.a n = A315256 n

end A315256

/-! ## A315256.P742241088370743516

`A314671(n)+A002264(2*n+1)`
-/

namespace A315256.P742241088370743516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314671 n + A002264 (2 * n + 1)

end

end A315256.P742241088370743516

namespace A315256

/-- `A314671(n)+A002264(2*n+1)` -/
def P742241088370743516.Spec : Prop :=
  ∀ n, P742241088370743516.a n = A315256 n

end A315256

/-! ## A315256.P12326446692328451720

`A314828(n)+A004396(A004396(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315256

/-- `A314828(n)+A004396(A004396(n))` -/
def P12326446692328451720.Spec : Prop :=
  ∀ n, P12326446692328451720.a n = A315256 n

theorem P12326446692328451720.correct : P12326446692328451720.Spec := by
  intro n
  simp only [A315256]

end A315256

/-! ## A315256.P9859720708913878843

`A314671(n)+A004525(A004773(n))`
-/

namespace A315256.P9859720708913878843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314671 n + A004525 (A004773 n).toNat

end

end A315256.P9859720708913878843

namespace A315256

/-- `A314671(n)+A004525(A004773(n))` -/
def P9859720708913878843.Spec : Prop :=
  ∀ n, P9859720708913878843.a n = A315256 n

end A315256

/-! ## A315256.P18177334604323789813

`abs(A008592(n)-A310462(n))`
-/

namespace A315256.P18177334604323789813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310462 n|

end

end A315256.P18177334604323789813

namespace A315256

/-- `abs(A008592(n)-A310462(n))` -/
def P18177334604323789813.Spec : Prop :=
  ∀ n, P18177334604323789813.a n = A315256 n

end A315256

/-! ## A315256.P14114672755631294676

`2*A008706(n)-A310462(n)`
-/

namespace A315256.P14114672755631294676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310462 n

end

end A315256.P14114672755631294676

namespace A315256

/-- `2*A008706(n)-A310462(n)` -/
def P14114672755631294676.Spec : Prop :=
  ∀ n, P14114672755631294676.a n = A315256 n

end A315256

/-! ## A315256.P4573900406605738724

`A008458(n)+A008574(n)-A310462(n)`
-/

namespace A315256.P4573900406605738724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310462 n)

end

end A315256.P4573900406605738724

namespace A315256

/-- `A008458(n)+A008574(n)-A310462(n)` -/
def P4573900406605738724.Spec : Prop :=
  ∀ n, P4573900406605738724.a n = A315256 n

end A315256

/-! ## A315256.P1092466038317715920

`A315463(n)-A004396(n-A004396(n))`
-/

namespace A315256.P1092466038317715920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315463 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A315256.P1092466038317715920

namespace A315256

/-- `A315463(n)-A004396(n-A004396(n))` -/
def P1092466038317715920.Spec : Prop :=
  ∀ n, P1092466038317715920.a n = A315256 n

theorem P1092466038317715920.correct : P1092466038317715920.Spec := by
  intro n
  simp only [A315256, Nat.add_sub_cancel, A315256.P1092466038317715920.a, A315256.P12326446692328451720.a, A004396, A004396.P17032557045289780609.a, A314828, A314828.P12558538320936083635.a, A315463, A315463.P16900864329988193490.a, A312932, A312932.P265636690513476108.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315256

/-! ## A315256.P15993527292052297898

`A315475(n)-A004396(A004396(n-A102283(n)))`
-/

namespace A315256.P15993527292052297898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n - A004396 (A004396 ((n : ℤ) - A102283 n).toNat).toNat

end

end A315256.P15993527292052297898

namespace A315256

/-- `A315475(n)-A004396(A004396(n-A102283(n)))` -/
def P15993527292052297898.Spec : Prop :=
  ∀ n, P15993527292052297898.a n = A315256 n

end A315256

/-! ## A315256.P16966190073756123877

`round(A004525(A314692(n))+8*n/3)`
-/

namespace A315256.P16966190073756123877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004525 (A314692 n).toNat : ℚ) + 8 * ((n : ℚ) / 3))

end

end A315256.P16966190073756123877

namespace A315256

/-- `round(A004525(A314692(n))+8*n/3)` -/
def P16966190073756123877.Spec : Prop :=
  ∀ n, P16966190073756123877.a n = A315256 n

end A315256

/-! ## A315256.P8860644867992270579

`A005843(A008706(n))-A310462(n)`
-/

namespace A315256.P8860644867992270579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310462 n

end

end A315256.P8860644867992270579

namespace A315256

/-- `A005843(A008706(n))-A310462(n)` -/
def P8860644867992270579.Spec : Prop :=
  ∀ n, P8860644867992270579.a n = A315256 n

end A315256

/-! ## A315256.P12689859334789677028

`A004396(n)+A004396(A315475(n)+n)`
-/

namespace A315256.P12689859334789677028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A315475 n + (n : ℤ)).toNat

end

end A315256.P12689859334789677028

namespace A315256

/-- `A004396(n)+A004396(A315475(n)+n)` -/
def P12689859334789677028.Spec : Prop :=
  ∀ n, P12689859334789677028.a n = A315256 n

end A315256

/-! ## A315256.P7941642367386737228

`A004396(n)+A004396(A315646(n)+n)`
-/

namespace A315256.P7941642367386737228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A315646 n + (n : ℤ)).toNat

end

end A315256.P7941642367386737228

namespace A315256

/-- `A004396(n)+A004396(A315646(n)+n)` -/
def P7941642367386737228.Spec : Prop :=
  ∀ n, P7941642367386737228.a n = A315256 n

end A315256

/-! ## A315256.P7765524657858299106

`A004396(n)+A004396(A315680(n)+n)`
-/

namespace A315256.P7765524657858299106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A315680 n + (n : ℤ)).toNat

end

end A315256.P7765524657858299106

namespace A315256

/-- `A004396(n)+A004396(A315680(n)+n)` -/
def P7765524657858299106.Spec : Prop :=
  ∀ n, P7765524657858299106.a n = A315256 n

end A315256

/-! ## A315256.P10264096534150559045

`A004396(A313538(2*n))-A004396(2*n)`
-/

namespace A315256.P10264096534150559045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313538 (2 * n)).toNat - A004396 (2 * n)

end

end A315256.P10264096534150559045

namespace A315256

/-- `A004396(A313538(2*n))-A004396(2*n)` -/
def P10264096534150559045.Spec : Prop :=
  ∀ n, P10264096534150559045.a n = A315256 n

end A315256

/-! ## A315256.P2598329577147852823

`A004396(n)+A004396(A315510(n)+n)`
-/

namespace A315256.P2598329577147852823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A315510 n + (n : ℤ)).toNat

end

end A315256.P2598329577147852823

namespace A315256

/-- `A004396(n)+A004396(A315510(n)+n)` -/
def P2598329577147852823.Spec : Prop :=
  ∀ n, P2598329577147852823.a n = A315256 n

end A315256

/-!
# A315257: Coordination sequence Gal.4.100.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315257, the canonical program `A315257.P3729255678130448727` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315257 has offset 0).

The definition of A315257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315257.P11716004248792551717

`A163817(n)+5*n`
-/

namespace A315257.P11716004248792551717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163817 n + (5 * n : ℤ)

end

end A315257.P11716004248792551717

namespace A315257

/-- `A163817(n)+5*n` -/
def P11716004248792551717.Spec : Prop :=
  ∀ n, P11716004248792551717.a n = A315257 n

end A315257

/-! ## A315257.P14092625859473374428

`A134667(n)+A008706(n)`
-/

namespace A315257.P14092625859473374428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n + A008706 n

end

end A315257.P14092625859473374428

namespace A315257

/-- `A134667(n)+A008706(n)` -/
def P14092625859473374428.Spec : Prop :=
  ∀ n, P14092625859473374428.a n = A315257 n

end A315257

/-! ## A315257.P3729255678130448727

`A314677(n)+A004396(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315257

/-- `A314677(n)+A004396(n)` -/
def P3729255678130448727.Spec : Prop :=
  ∀ n, P3729255678130448727.a n = A315257 n

theorem P3729255678130448727.correct : P3729255678130448727.Spec := by
  intro n
  simp only [A315257]

end A315257

/-! ## A315257.P1872385393588727708

`A315075(n)+A128834(n)`
-/

namespace A315257.P1872385393588727708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315075 n + A128834 n

end

end A315257.P1872385393588727708

namespace A315257

/-- `A315075(n)+A128834(n)` -/
def P1872385393588727708.Spec : Prop :=
  ∀ n, P1872385393588727708.a n = A315257 n

end A315257

/-! ## A315257.P14204396278192488310

`abs(A008587(n)-A163811(n))`
-/

namespace A315257.P14204396278192488310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008587 n - A163811 n|

end

end A315257.P14204396278192488310

namespace A315257

/-- `abs(A008587(n)-A163811(n))` -/
def P14204396278192488310.Spec : Prop :=
  ∀ n, P14204396278192488310.a n = A315257 n

end A315257

/-! ## A315257.P6212129255088829663

`2*A008706(n)-A310461(n)`
-/

namespace A315257.P6212129255088829663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310461 n

end

end A315257.P6212129255088829663

namespace A315257

/-- `2*A008706(n)-A310461(n)` -/
def P6212129255088829663.Spec : Prop :=
  ∀ n, P6212129255088829663.a n = A315257 n

end A315257

/-! ## A315257.P4614377275899500216

`A008574(n)+A134667(n)+n`
-/

namespace A315257.P4614377275899500216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A134667 n + (n : ℤ))

end

end A315257.P4614377275899500216

namespace A315257

/-- `A008574(n)+A134667(n)+n` -/
def P4614377275899500216.Spec : Prop :=
  ∀ n, P4614377275899500216.a n = A315257 n

end A315257

/-! ## A315257.P9495640574266968773

`A008458(n)+A134667(n)-n`
-/

namespace A315257.P9495640574266968773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A134667 n - (n : ℤ))

end

end A315257.P9495640574266968773

namespace A315257

/-- `A008458(n)+A134667(n)-n` -/
def P9495640574266968773.Spec : Prop :=
  ∀ n, P9495640574266968773.a n = A315257 n

end A315257

/-! ## A315257.P3503330879203789705

`A301298(n)+n-∑[A131735(n)]`
-/

namespace A315257.P3503330879203789705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315257.P3503330879203789705

namespace A315257

/-- `A301298(n)+n-∑[A131735(n)]` -/
def P3503330879203789705.Spec : Prop :=
  ∀ n, P3503330879203789705.a n = A315257 n

end A315257

/-! ## A315257.P9943063031784980933

`A315687(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315257.P9943063031784980933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315687 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315257.P9943063031784980933

namespace A315257

/-- `A315687(2*n)+A008458(n+1)-(12*n+6)` -/
def P9943063031784980933.Spec : Prop :=
  ∀ n, P9943063031784980933.a n = A315257 n

end A315257

/-! ## A315257.P8777950638862598986

`A301298(n)+A004525(A004396(n))`
-/

namespace A315257.P8777950638862598986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A004525 (A004396 n).toNat

end

end A315257.P8777950638862598986

namespace A315257

/-- `A301298(n)+A004525(A004396(n))` -/
def P8777950638862598986.Spec : Prop :=
  ∀ n, P8777950638862598986.a n = A315257 n

end A315257

/-! ## A315257.P14208704752619315125

`A128834(A128834(n)+n)+A008706(n)`
-/

namespace A315257.P14208704752619315125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A128834 n + (n : ℤ)).toNat + A008706 n

end

end A315257.P14208704752619315125

namespace A315257

/-- `A128834(A128834(n)+n)+A008706(n)` -/
def P14208704752619315125.Spec : Prop :=
  ∀ n, P14208704752619315125.a n = A315257 n

end A315257

/-! ## A315257.P5950949592480008245

`A314015(n)+A102283(n)`
-/

namespace A315257.P5950949592480008245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314015 n + A102283 n

end

end A315257.P5950949592480008245

namespace A315257

/-- `A314015(n)+A102283(n)` -/
def P5950949592480008245.Spec : Prop :=
  ∀ n, P5950949592480008245.a n = A315257 n

end A315257

/-! ## A315257.P1327696761810120908

`A314015(n)+A128834(2*n)`
-/

namespace A315257.P1327696761810120908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314015 n + A128834 (2 * n)

end

end A315257.P1327696761810120908

namespace A315257

/-- `A314015(n)+A128834(2*n)` -/
def P1327696761810120908.Spec : Prop :=
  ∀ n, P1327696761810120908.a n = A315257 n

end A315257

/-! ## A315257.P7626467538998266410

`round(A315471(n)-n/3)`
-/

namespace A315257.P7626467538998266410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A315471 n : ℚ) - (n : ℚ) / 3)

end

end A315257.P7626467538998266410

namespace A315257

/-- `round(A315471(n)-n/3)` -/
def P7626467538998266410.Spec : Prop :=
  ∀ n, P7626467538998266410.a n = A315257 n

end A315257

/-! ## A315257.P1480259540483461475

`A315471(n)-A002264(n+1)`
-/

namespace A315257.P1480259540483461475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315471 n - A002264 (n + 1)

end

end A315257.P1480259540483461475

namespace A315257

/-- `A315471(n)-A002264(n+1)` -/
def P1480259540483461475.Spec : Prop :=
  ∀ n, P1480259540483461475.a n = A315257 n

end A315257

/-! ## A315257.P4648893993089754786

`A004396(n)+A315471(n)-n`
-/

namespace A315257.P4648893993089754786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315471 n - (n : ℤ))

end

end A315257.P4648893993089754786

namespace A315257

/-- `A004396(n)+A315471(n)-n` -/
def P4648893993089754786.Spec : Prop :=
  ∀ n, P4648893993089754786.a n = A315257 n

theorem P4648893993089754786.correct : P4648893993089754786.Spec := by
  intro n
  simp only [A315257, Nat.add_sub_cancel, A315257.P4648893993089754786.a, A315257.P3729255678130448727.a, A004396, A004396.P17032557045289780609.a, A314677, A314677.P709044874121363319.a, A315471, A315471.P13880185677744590695.a, A008486, A008486.P11623131867527198563.a, A047424, A047424.P18276099413945376937.f1, A047424.P18276099413945376937.f2, A047424.P18276099413945376937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315257

/-! ## A315257.P14559821496651237853

`A008576(n)+A315471(n)-A008486(n)`
-/

namespace A315257.P14559821496651237853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315471 n - A008486 n)

end

end A315257.P14559821496651237853

namespace A315257

/-- `A008576(n)+A315471(n)-A008486(n)` -/
def P14559821496651237853.Spec : Prop :=
  ∀ n, P14559821496651237853.a n = A315257 n

end A315257

/-! ## A315257.P15325523471730235191

`A074067(A310461(n))`
-/

namespace A315257.P15325523471730235191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A310461 n).toNat

end

end A315257.P15325523471730235191

namespace A315257

/-- `A074067(A310461(n))` -/
def P15325523471730235191.Spec : Prop :=
  ∀ n, P15325523471730235191.a n = A315257 n

end A315257

/-! ## A315257.P1703040570164649344

`A312890(2*n)-A047222(2*n+1)`
-/

namespace A315257.P1703040570164649344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312890 (2 * n) - A047222 (2 * n + 1)

end

end A315257.P1703040570164649344

namespace A315257

/-- `A312890(2*n)-A047222(2*n+1)` -/
def P1703040570164649344.Spec : Prop :=
  ∀ n, P1703040570164649344.a n = A315257 n

end A315257

/-!
# A315258: Coordination sequence Gal.6.260.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315258, the canonical program `A315258.P8038339213485428245` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315258 has offset 0).

The definition of A315258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315258.P7539535052954396821

`A313824(n)+A101455(n)`
-/

namespace A315258.P7539535052954396821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313824 n + A101455 n

end

end A315258.P7539535052954396821

namespace A315258

/-- `A313824(n)+A101455(n)` -/
def P7539535052954396821.Spec : Prop :=
  ∀ n, P7539535052954396821.a n = A315258 n

end A315258

/-! ## A315258.P8038339213485428245

`abs(A008592(n)-A310459(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315258

/-- `abs(A008592(n)-A310459(n))` -/
def P8038339213485428245.Spec : Prop :=
  ∀ n, P8038339213485428245.a n = A315258 n

theorem P8038339213485428245.correct : P8038339213485428245.Spec := by
  intro n
  simp only [A315258]

end A315258

/-! ## A315258.P7374096600161226614

`A008458(n)+A008574(n)-A310459(n)`
-/

namespace A315258.P7374096600161226614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310459 n)

end

end A315258.P7374096600161226614

namespace A315258

/-- `A008458(n)+A008574(n)-A310459(n)` -/
def P7374096600161226614.Spec : Prop :=
  ∀ n, P7374096600161226614.a n = A315258 n

end A315258

/-! ## A315258.P13816698458328794394

`A315474(n)-A002264(n+1)`
-/

namespace A315258.P13816698458328794394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315474 n - A002264 (n + 1)

end

end A315258.P13816698458328794394

namespace A315258

/-- `A315474(n)-A002264(n+1)` -/
def P13816698458328794394.Spec : Prop :=
  ∀ n, P13816698458328794394.a n = A315258 n

end A315258

/-! ## A315258.P14989139864964655341

`A008576(n)+A315474(n)-A008486(n)`
-/

namespace A315258.P14989139864964655341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315474 n - A008486 n)

end

end A315258.P14989139864964655341

namespace A315258

/-- `A008576(n)+A315474(n)-A008486(n)` -/
def P14989139864964655341.Spec : Prop :=
  ∀ n, P14989139864964655341.a n = A315258 n

end A315258

/-! ## A315258.P8271877728519039132

`A315517(n)-∑[A021913(n)]`
-/

namespace A315258.P8271877728519039132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315517 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315258.P8271877728519039132

namespace A315258

/-- `A315517(n)-∑[A021913(n)]` -/
def P8271877728519039132.Spec : Prop :=
  ∀ n, P8271877728519039132.a n = A315258 n

end A315258

/-! ## A315258.P955223043716169871

`A315517(n)-Δ[A011848(n)]`
-/

namespace A315258.P955223043716169871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315517 n - (f1 (n + 1) - f1 n)

end

end A315258.P955223043716169871

namespace A315258

/-- `A315517(n)-Δ[A011848(n)]` -/
def P955223043716169871.Spec : Prop :=
  ∀ n, P955223043716169871.a n = A315258 n

end A315258

/-! ## A315258.P14188623536766429971

`A004525(n)+A315517(n)-n`
-/

namespace A315258.P14188623536766429971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315517 n - (n : ℤ))

end

end A315258.P14188623536766429971

namespace A315258

/-- `A004525(n)+A315517(n)-n` -/
def P14188623536766429971.Spec : Prop :=
  ∀ n, P14188623536766429971.a n = A315258 n

end A315258

/-! ## A315258.P16347986430673098792

`Δ[A054925(n)]+A315517(n)-n`
-/

namespace A315258.P16347986430673098792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315517 n - (n : ℤ))

end

end A315258.P16347986430673098792

namespace A315258

/-- `Δ[A054925(n)]+A315517(n)-n` -/
def P16347986430673098792.Spec : Prop :=
  ∀ n, P16347986430673098792.a n = A315258 n

end A315258

/-! ## A315258.P6713976158147078465

`A004396(n)+A004525(n)+A004396(A315741(n))`
-/

namespace A315258.P6713976158147078465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A004525 n + A004396 (A315741 n).toNat)

end

end A315258.P6713976158147078465

namespace A315258

/-- `A004396(n)+A004525(n)+A004396(A315741(n))` -/
def P6713976158147078465.Spec : Prop :=
  ∀ n, P6713976158147078465.a n = A315258 n

end A315258

/-! ## A315258.P1227060551823892526

`A004525(n)+A004396(A315741(n)+n)`
-/

namespace A315258.P1227060551823892526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + A004396 (A315741 n + (n : ℤ)).toNat

end

end A315258.P1227060551823892526

namespace A315258

/-- `A004525(n)+A004396(A315741(n)+n)` -/
def P1227060551823892526.Spec : Prop :=
  ∀ n, P1227060551823892526.a n = A315258 n

end A315258

/-! ## A315258.P17752049318958808361

`A314825(n)+A004525(n)`
-/

namespace A315258.P17752049318958808361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314825 n + A004525 n

end

end A315258.P17752049318958808361

namespace A315258

/-- `A314825(n)+A004525(n)` -/
def P17752049318958808361.Spec : Prop :=
  ∀ n, P17752049318958808361.a n = A315258 n

end A315258

/-! ## A315258.P17671676561326915214

`A314825(n)+Δ[A054925(n)]`
-/

namespace A315258.P17671676561326915214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314825 n + (f1 (n + 1) - f1 n)

end

end A315258.P17671676561326915214

namespace A315258

/-- `A314825(n)+Δ[A054925(n)]` -/
def P17671676561326915214.Spec : Prop :=
  ∀ n, P17671676561326915214.a n = A315258 n

end A315258

/-! ## A315258.P13929251153851280342

`A314825(n)+n-∑[A021913(n)]`
-/

namespace A315258.P13929251153851280342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314825 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315258.P13929251153851280342

namespace A315258

/-- `A314825(n)+n-∑[A021913(n)]` -/
def P13929251153851280342.Spec : Prop :=
  ∀ n, P13929251153851280342.a n = A315258 n

end A315258

/-! ## A315258.P12768928067373445427

`A314825(n)+n-Δ[A011848(n)]`
-/

namespace A315258.P12768928067373445427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314825 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A315258.P12768928067373445427

namespace A315258

/-- `A314825(n)+n-Δ[A011848(n)]` -/
def P12768928067373445427.Spec : Prop :=
  ∀ n, P12768928067373445427.a n = A315258 n

end A315258

/-!
# A315259: Coordination sequence Gal.4.54.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315259, the canonical program `A315259.P12271899657189483663` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315259 has offset 0).

The definition of A315259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2388 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315259.P12271899657189483663

`A314829(n)+A004525(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A315259

/-- `A314829(n)+A004525(n)` -/
def P12271899657189483663.Spec : Prop :=
  ∀ n, P12271899657189483663.a n = A315259 n

theorem P12271899657189483663.correct : P12271899657189483663.Spec := by
  intro n
  simp only [A315259]

end A315259

/-! ## A315259.P7250052866335280060

`A314829(n)+n-∑[A021913(n)]`
-/

namespace A315259.P7250052866335280060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315259.P7250052866335280060

namespace A315259

/-- `A314829(n)+n-∑[A021913(n)]` -/
def P7250052866335280060.Spec : Prop :=
  ∀ n, P7250052866335280060.a n = A315259 n

end A315259

/-! ## A315259.P6702567648986770574

`A314896(n)+A004525(A004525(n))`
-/

namespace A315259.P6702567648986770574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314896 n + A004525 (A004525 n).toNat

end

end A315259.P6702567648986770574

namespace A315259

/-- `A314896(n)+A004525(A004525(n))` -/
def P6702567648986770574.Spec : Prop :=
  ∀ n, P6702567648986770574.a n = A315259 n

end A315259

/-! ## A315259.P9029300621324788697

`A312140(n)+2*A004525(A004525(n))`
-/

namespace A315259.P9029300621324788697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + 2 * A004525 (A004525 n).toNat

end

end A315259.P9029300621324788697

namespace A315259

/-- `A312140(n)+2*A004525(A004525(n))` -/
def P9029300621324788697.Spec : Prop :=
  ∀ n, P9029300621324788697.a n = A315259 n

end A315259

/-! ## A315259.P4702944038262010349

`A314672(n)+A004525(A004525(n)+n)`
-/

namespace A315259.P4702944038262010349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314672 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A315259.P4702944038262010349

namespace A315259

/-- `A314672(n)+A004525(A004525(n)+n)` -/
def P4702944038262010349.Spec : Prop :=
  ∀ n, P4702944038262010349.a n = A315259 n

end A315259

/-! ## A315259.P811850167078777447

`A004525(n)+A311843(n)+A004525(A004525(n))`
-/

namespace A315259.P811850167078777447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A311843 n + A004525 (A004525 n).toNat)

end

end A315259.P811850167078777447

namespace A315259

/-- `A004525(n)+A311843(n)+A004525(A004525(n))` -/
def P811850167078777447.Spec : Prop :=
  ∀ n, P811850167078777447.a n = A315259 n

end A315259

/-! ## A315259.P3225576987414941253

`A314026(n)-A075553(A075553(n)+n)`
-/

namespace A315259.P3225576987414941253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314026 n - A075553 (A075553 n + (n : ℤ)).toNat

end

end A315259.P3225576987414941253

namespace A315259

/-- `A314026(n)-A075553(A075553(n)+n)` -/
def P3225576987414941253.Spec : Prop :=
  ∀ n, P3225576987414941253.a n = A315259 n

end A315259

/-! ## A315259.P5260333294088879533

`A314969(n)+A046978(n)`
-/

namespace A315259.P5260333294088879533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314969 n + A046978 n

end

end A315259.P5260333294088879533

namespace A315259

/-- `A314969(n)+A046978(n)` -/
def P5260333294088879533.Spec : Prop :=
  ∀ n, P5260333294088879533.a n = A315259 n

end A315259

/-! ## A315259.P17057811214264333576

`A313635(n)+A188510(n)`
-/

namespace A315259.P17057811214264333576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313635 n + A188510 n

end

end A315259.P17057811214264333576

namespace A315259

/-- `A313635(n)+A188510(n)` -/
def P17057811214264333576.Spec : Prop :=
  ∀ n, P17057811214264333576.a n = A315259 n

end A315259

/-! ## A315259.P657340755488270903

`A313826(n)+A101455(n)`
-/

namespace A315259.P657340755488270903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313826 n + A101455 n

end

end A315259.P657340755488270903

namespace A315259

/-- `A313826(n)+A101455(n)` -/
def P657340755488270903.Spec : Prop :=
  ∀ n, P657340755488270903.a n = A315259 n

end A315259

/-! ## A315259.P534793765582860928

`A313826(n)+A046978(2*n)`
-/

namespace A315259.P534793765582860928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313826 n + A046978 (2 * n)

end

end A315259.P534793765582860928

namespace A315259

/-- `A313826(n)+A046978(2*n)` -/
def P534793765582860928.Spec : Prop :=
  ∀ n, P534793765582860928.a n = A315259 n

end A315259

/-! ## A315259.P6570123014472075429

`abs(A008592(n)-A310458(n))`
-/

namespace A315259.P6570123014472075429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310458 n|

end

end A315259.P6570123014472075429

namespace A315259

/-- `abs(A008592(n)-A310458(n))` -/
def P6570123014472075429.Spec : Prop :=
  ∀ n, P6570123014472075429.a n = A315259 n

end A315259

/-! ## A315259.P3964263268909514956

`floor(A010015(n)/A310458(n))`
-/

namespace A315259.P3964263268909514956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A310458 n : ℚ)⌋

end

end A315259.P3964263268909514956

namespace A315259

/-- `floor(A010015(n)/A310458(n))` -/
def P3964263268909514956.Spec : Prop :=
  ∀ n, P3964263268909514956.a n = A315259 n

end A315259

/-! ## A315259.P17117017864509235351

`A008458(n)+A008574(n)-A310458(n)`
-/

namespace A315259.P17117017864509235351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310458 n)

end

end A315259.P17117017864509235351

namespace A315259

/-- `A008458(n)+A008574(n)-A310458(n)` -/
def P17117017864509235351.Spec : Prop :=
  ∀ n, P17117017864509235351.a n = A315259 n

end A315259

/-! ## A315259.P11830774613506438802

`A315061(n)+A046978(A046978(n)+n)`
-/

namespace A315259.P11830774613506438802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n + A046978 (A046978 n + (n : ℤ)).toNat

end

end A315259.P11830774613506438802

namespace A315259

/-- `A315061(n)+A046978(A046978(n)+n)` -/
def P11830774613506438802.Spec : Prop :=
  ∀ n, P11830774613506438802.a n = A315259 n

end A315259

/-! ## A315259.P14256091478953781625

`A315469(n)-A004525(n-A004525(n))`
-/

namespace A315259.P14256091478953781625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315469 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A315259.P14256091478953781625

namespace A315259

/-- `A315469(n)-A004525(n-A004525(n))` -/
def P14256091478953781625.Spec : Prop :=
  ∀ n, P14256091478953781625.a n = A315259 n

end A315259

/-! ## A315259.P4888973176760833993

`A315520(n)-Δ[A011848(n)]`
-/

namespace A315259.P4888973176760833993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315520 n - (f1 (n + 1) - f1 n)

end

end A315259.P4888973176760833993

namespace A315259

/-- `A315520(n)-Δ[A011848(n)]` -/
def P4888973176760833993.Spec : Prop :=
  ∀ n, P4888973176760833993.a n = A315259 n

end A315259

/-! ## A315259.P18220203600473189961

`A004525(n)+A315520(n)-n`
-/

namespace A315259.P18220203600473189961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315520 n - (n : ℤ))

end

end A315259.P18220203600473189961

namespace A315259

/-- `A004525(n)+A315520(n)-n` -/
def P18220203600473189961.Spec : Prop :=
  ∀ n, P18220203600473189961.a n = A315259 n

end A315259

/-! ## A315259.P6488532603670264978

`A004525(A004525(n))+A315543(n)-n`
-/

namespace A315259.P6488532603670264978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A315543 n - (n : ℤ))

end

end A315259.P6488532603670264978

namespace A315259

/-- `A004525(A004525(n))+A315543(n)-n` -/
def P6488532603670264978.Spec : Prop :=
  ∀ n, P6488532603670264978.a n = A315259 n

end A315259

/-! ## A315259.P12132298168258686460

`A074067(A310458(n))`
-/

namespace A315259.P12132298168258686460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A310458 n).toNat

end

end A315259.P12132298168258686460

namespace A315259

/-- `A074067(A310458(n))` -/
def P12132298168258686460.Spec : Prop :=
  ∀ n, P12132298168258686460.a n = A315259 n

end A315259

/-!
# A315260: Coordination sequence Gal.6.340.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315260, the canonical program `A315260.P11757777825462435444` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315260 has offset 0).

The definition of A315260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315260.P11757777825462435444

`A314683(n)+A004396(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315260

/-- `A314683(n)+A004396(n)` -/
def P11757777825462435444.Spec : Prop :=
  ∀ n, P11757777825462435444.a n = A315260 n

theorem P11757777825462435444.correct : P11757777825462435444.Spec := by
  intro n
  simp only [A315260]

end A315260

/-! ## A315260.P10231005841561299750

`A314830(n)+A004525(n)`
-/

namespace A315260.P10231005841561299750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314830 n + A004525 n

end

end A315260.P10231005841561299750

namespace A315260

/-- `A314830(n)+A004525(n)` -/
def P10231005841561299750.Spec : Prop :=
  ∀ n, P10231005841561299750.a n = A315260 n

end A315260

/-! ## A315260.P12392880044674621790

`A313744(n)+A134667(n)`
-/

namespace A315260.P12392880044674621790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313744 n + A134667 n

end

end A315260.P12392880044674621790

namespace A315260

/-- `A313744(n)+A134667(n)` -/
def P12392880044674621790.Spec : Prop :=
  ∀ n, P12392880044674621790.a n = A315260 n

end A315260

/-! ## A315260.P6232273041541359021

`abs(A008592(n)-A310457(n))`
-/

namespace A315260.P6232273041541359021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310457 n|

end

end A315260.P6232273041541359021

namespace A315260

/-- `abs(A008592(n)-A310457(n))` -/
def P6232273041541359021.Spec : Prop :=
  ∀ n, P6232273041541359021.a n = A315260 n

end A315260

/-! ## A315260.P14199125978536759342

`floor(A010015(n)/A310457(n))`
-/

namespace A315260.P14199125978536759342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A310457 n : ℚ)⌋

end

end A315260.P14199125978536759342

namespace A315260

/-- `floor(A010015(n)/A310457(n))` -/
def P14199125978536759342.Spec : Prop :=
  ∀ n, P14199125978536759342.a n = A315260 n

end A315260

/-! ## A315260.P2458765314680946388

`A314830(n)+Δ[A054925(n)]`
-/

namespace A315260.P2458765314680946388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314830 n + (f1 (n + 1) - f1 n)

end

end A315260.P2458765314680946388

namespace A315260

/-- `A314830(n)+Δ[A054925(n)]` -/
def P2458765314680946388.Spec : Prop :=
  ∀ n, P2458765314680946388.a n = A315260 n

end A315260

/-! ## A315260.P7519768335334182127

`A301298(n)+A004396(A004525(n))`
-/

namespace A315260.P7519768335334182127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A004396 (A004525 n).toNat

end

end A315260.P7519768335334182127

namespace A315260

/-- `A301298(n)+A004396(A004525(n))` -/
def P7519768335334182127.Spec : Prop :=
  ∀ n, P7519768335334182127.a n = A315260 n

end A315260

/-! ## A315260.P16020170934692893378

`A314893(n)+A004525(A004396(n))`
-/

namespace A315260.P16020170934692893378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314893 n + A004525 (A004396 n).toNat

end

end A315260.P16020170934692893378

namespace A315260

/-- `A314893(n)+A004525(A004396(n))` -/
def P16020170934692893378.Spec : Prop :=
  ∀ n, P16020170934692893378.a n = A315260 n

end A315260

/-! ## A315260.P6595037664249441728

`A008458(n)+A008574(n)-A310457(n)`
-/

namespace A315260.P6595037664249441728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310457 n)

end

end A315260.P6595037664249441728

namespace A315260

/-- `A008458(n)+A008574(n)-A310457(n)` -/
def P6595037664249441728.Spec : Prop :=
  ∀ n, P6595037664249441728.a n = A315260 n

end A315260

/-! ## A315260.P7838500183332727440

`A008576(n)+A315476(n)-A008486(n)`
-/

namespace A315260.P7838500183332727440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315476 n - A008486 n)

end

end A315260.P7838500183332727440

namespace A315260

/-- `A008576(n)+A315476(n)-A008486(n)` -/
def P7838500183332727440.Spec : Prop :=
  ∀ n, P7838500183332727440.a n = A315260 n

end A315260

/-! ## A315260.P6113806620579361045

`A004396(n)+A008574(n)+A004396(A004525(n))`
-/

namespace A315260.P6113806620579361045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A008574 n + A004396 (A004525 n).toNat)

end

end A315260.P6113806620579361045

namespace A315260

/-- `A004396(n)+A008574(n)+A004396(A004525(n))` -/
def P6113806620579361045.Spec : Prop :=
  ∀ n, P6113806620579361045.a n = A315260 n

end A315260

/-! ## A315260.P8827556516325209099

`A004525(n)+A301672(n)+A004396(A004525(n))`
-/

namespace A315260.P8827556516325209099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A301672 n + A004396 (A004525 n).toNat)

end

end A315260.P8827556516325209099

namespace A315260

/-- `A004525(n)+A301672(n)+A004396(A004525(n))` -/
def P8827556516325209099.Spec : Prop :=
  ∀ n, P8827556516325209099.a n = A315260 n

end A315260

/-! ## A315260.P17142912600519712140

`A004525(A004396(n))+A315540(n)-n`
-/

namespace A315260.P17142912600519712140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A315540 n - (n : ℤ))

end

end A315260.P17142912600519712140

namespace A315260

/-- `A004525(A004396(n))+A315540(n)-n` -/
def P17142912600519712140.Spec : Prop :=
  ∀ n, P17142912600519712140.a n = A315260 n

end A315260

/-! ## A315260.P7569036224902695169

`A074067(A310457(n))`
-/

namespace A315260.P7569036224902695169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A310457 n).toNat

end

end A315260.P7569036224902695169

namespace A315260

/-- `A074067(A310457(n))` -/
def P7569036224902695169.Spec : Prop :=
  ∀ n, P7569036224902695169.a n = A315260 n

end A315260

/-! ## A315260.P2370785830634586204

`A004396(n)+A004396(A315246(n))+n`
-/

namespace A315260.P2370785830634586204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A004396 (A315246 n).toNat + (n : ℤ))

end

end A315260.P2370785830634586204

namespace A315260

/-- `A004396(n)+A004396(A315246(n))+n` -/
def P2370785830634586204.Spec : Prop :=
  ∀ n, P2370785830634586204.a n = A315260 n

end A315260

/-! ## A315260.P14046877279670645954

`A004396(n)+A004396(A301708(n)+n)`
-/

namespace A315260.P14046877279670645954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A301708 n + (n : ℤ)).toNat

end

end A315260.P14046877279670645954

namespace A315260

/-- `A004396(n)+A004396(A301708(n)+n)` -/
def P14046877279670645954.Spec : Prop :=
  ∀ n, P14046877279670645954.a n = A315260 n

end A315260

/-! ## A315260.P3832488913110713311

`A004396(n)+A004396(A315522(n)+n)`
-/

namespace A315260.P3832488913110713311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A315522 n + (n : ℤ)).toNat

end

end A315260.P3832488913110713311

namespace A315260

/-- `A004396(n)+A004396(A315522(n)+n)` -/
def P3832488913110713311.Spec : Prop :=
  ∀ n, P3832488913110713311.a n = A315260 n

end A315260

/-! ## A315260.P16079728947414479633

`lcm(A008592(n)-A310457(n), A014963(9*n+6))`
-/

namespace A315260.P16079728947414479633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008592 n - A310457 n) (A014963 (9 * n + 6))

end

end A315260.P16079728947414479633

namespace A315260

/-- `lcm(A008592(n)-A310457(n), A014963(9*n+6))` -/
def P16079728947414479633.Spec : Prop :=
  ∀ n, (P16079728947414479633.a n : ℤ) = A315260 n

end A315260

/-!
# A315261: Coordination sequence Gal.6.204.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315261, the canonical program `A315261.P9856986548447563779` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315261 has offset 0).

The definition of A315261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315261.P5466810443568958346

`abs(A008592(n)-A310456(n))`
-/

namespace A315261.P5466810443568958346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310456 n|

end

end A315261.P5466810443568958346

namespace A315261

/-- `abs(A008592(n)-A310456(n))` -/
def P5466810443568958346.Spec : Prop :=
  ∀ n, P5466810443568958346.a n = A315261 n

end A315261

/-! ## A315261.P9856986548447563779

`A315208(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315261

/-- `A315208(n)+Δ[A011864(n)]` -/
def P9856986548447563779.Spec : Prop :=
  ∀ n, P9856986548447563779.a n = A315261 n

theorem P9856986548447563779.correct : P9856986548447563779.Spec := by
  intro n
  simp only [A315261]

end A315261

/-! ## A315261.P14396010258242522127

`2*A008706(n)-A310456(n)`
-/

namespace A315261.P14396010258242522127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310456 n

end

end A315261.P14396010258242522127

namespace A315261

/-- `2*A008706(n)-A310456(n)` -/
def P14396010258242522127.Spec : Prop :=
  ∀ n, P14396010258242522127.a n = A315261 n

end A315261

/-! ## A315261.P12924657424375142117

`A000038(n)+A008592(n)-A310456(n)`
-/

namespace A315261.P12924657424375142117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A310456 n)

end

end A315261.P12924657424375142117

namespace A315261

/-- `A000038(n)+A008592(n)-A310456(n)` -/
def P12924657424375142117.Spec : Prop :=
  ∀ n, P12924657424375142117.a n = A315261 n

end A315261

/-! ## A315261.P11882925327659990026

`A008458(n)+A008574(n)-A310456(n)`
-/

namespace A315261.P11882925327659990026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310456 n)

end

end A315261.P11882925327659990026

namespace A315261

/-- `A008458(n)+A008574(n)-A310456(n)` -/
def P11882925327659990026.Spec : Prop :=
  ∀ n, P11882925327659990026.a n = A315261 n

end A315261

/-! ## A315261.P9712267692963745578

`A310456(n)+A005843(A008706(n)-A310456(n))`
-/

namespace A315261.P9712267692963745578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310456 n + A005843 (A008706 n - A310456 n).toNat

end

end A315261.P9712267692963745578

namespace A315261

/-- `A310456(n)+A005843(A008706(n)-A310456(n))` -/
def P9712267692963745578.Spec : Prop :=
  ∀ n, P9712267692963745578.a n = A315261 n

end A315261

/-! ## A315261.P3109410842126993749

`A315312(n)-Δ[A011864(n)]`
-/

namespace A315261.P3109410842126993749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315312 n - (f1 (n + 1) - f1 n)

end

end A315261.P3109410842126993749

namespace A315261

/-- `A315312(n)-Δ[A011864(n)]` -/
def P3109410842126993749.Spec : Prop :=
  ∀ n, P3109410842126993749.a n = A315261 n

theorem P3109410842126993749.correct : P3109410842126993749.Spec := by
  intro n
  simp only [A315261, Nat.add_sub_cancel, A315261.P3109410842126993749.f1, A315261.P3109410842126993749.a, A315261.P9856986548447563779.f1, A315261.P9856986548447563779.a, A011864, A011864.P3547417513882699266.a, A315208, A315208.P4336967152151066155.a, A315312, A315312.P652016832202607211.f1, A315312.P652016832202607211.a, A008592, A008592.P4981059802862696142.a, A310501, A310501.P8756319467982132797.a, A008574, A008574.P1300280032690682112.a, A313045, A313045.P11830860627486211470.f1, A313045.P11830860627486211470.a, A008458, A008458.P10936398443463225625.a, A047486, A047486.P6506762595393263252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315261

/-! ## A315261.P7650217997831693995

`A315470(n)-A004525(A315470(n)-A315245(n))`
-/

namespace A315261.P7650217997831693995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315470 n - A004525 (A315470 n - A315245 n).toNat

end

end A315261.P7650217997831693995

namespace A315261

/-- `A315470(n)-A004525(A315470(n)-A315245(n))` -/
def P7650217997831693995.Spec : Prop :=
  ∀ n, P7650217997831693995.a n = A315261 n

end A315261

/-! ## A315261.P6785833979714703695

`A005843(A008706(n))-A310456(n)`
-/

namespace A315261.P6785833979714703695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310456 n

end

end A315261.P6785833979714703695

namespace A315261

/-- `A005843(A008706(n))-A310456(n)` -/
def P6785833979714703695.Spec : Prop :=
  ∀ n, P6785833979714703695.a n = A315261 n

end A315261

/-! ## A315261.P1523485498884624947

`A093545(A008458(n))-A310456(n)`
-/

namespace A315261.P1523485498884624947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093545 (A008458 n).toNat - A310456 n

end

end A315261.P1523485498884624947

namespace A315261

/-- `A093545(A008458(n))-A310456(n)` -/
def P1523485498884624947.Spec : Prop :=
  ∀ n, P1523485498884624947.a n = A315261 n

end A315261

/-! ## A315261.P7121522083159672589

`A313498(2*n)-4*n`
-/

namespace A315261.P7121522083159672589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313498 (2 * n) - (4 * n : ℤ)

end

end A315261.P7121522083159672589

namespace A315261

/-- `A313498(2*n)-4*n` -/
def P7121522083159672589.Spec : Prop :=
  ∀ n, P7121522083159672589.a n = A315261 n

end A315261

/-! ## A315261.P16983600727158459563

`A038572(A315636(2*n))`
-/

namespace A315261.P16983600727158459563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A315636 (2 * n)).toNat

end

end A315261.P16983600727158459563

namespace A315261

/-- `A038572(A315636(2*n))` -/
def P16983600727158459563.Spec : Prop :=
  ∀ n, P16983600727158459563.a n = A315261 n

end A315261

/-! ## A315261.P13944260053152174868

`A315636(2*n)/(4*n+1-A004273(2*n))`
-/

namespace A315261.P13944260053152174868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315636 (2 * n) : ℚ) / ((4 * n + 1 : ℤ) - A004273 (2 * n) : ℚ)

end

end A315261.P13944260053152174868

namespace A315261

/-- `A315636(2*n)/(4*n+1-A004273(2*n))` -/
def P13944260053152174868.Spec : Prop :=
  ∀ n, P13944260053152174868.a n = (A315261 n : ℚ)

end A315261

/-! ## A315261.P1062826403509507639

`A315636(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A315261.P1062826403509507639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315636 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A315261.P1062826403509507639

namespace A315261

/-- `A315636(2*n)/(4*n+2-A004277(2*n))` -/
def P1062826403509507639.Spec : Prop :=
  ∀ n, P1062826403509507639.a n = (A315261 n : ℚ)

end A315261

/-! ## A315261.P15007274873887281644

`2*A008574(2*n)-A313918(2*n)`
-/

namespace A315261.P15007274873887281644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A313918 (2 * n)

end

end A315261.P15007274873887281644

namespace A315261

/-- `2*A008574(2*n)-A313918(2*n)` -/
def P15007274873887281644.Spec : Prop :=
  ∀ n, P15007274873887281644.a n = A315261 n

end A315261

/-! ## A315261.P11762598651978495836

`A004526(A315636(2*n)+1)`
-/

namespace A315261.P11762598651978495836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315636 (2 * n) + 1).toNat

end

end A315261.P11762598651978495836

namespace A315261

/-- `A004526(A315636(2*n)+1)` -/
def P11762598651978495836.Spec : Prop :=
  ∀ n, P11762598651978495836.a n = A315261 n

end A315261

/-! ## A315261.P6901858281858390329

`A008619(A315636(2*n)-1)`
-/

namespace A315261.P6901858281858390329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A315636 (2 * n) - 1).toNat

end

end A315261.P6901858281858390329

namespace A315261

/-- `A008619(A315636(2*n)-1)` -/
def P6901858281858390329.Spec : Prop :=
  ∀ n, P6901858281858390329.a n = A315261 n

end A315261

/-! ## A315261.P880558710438001127

`A008458(A008574(n))-A314849(A008574(n))`
-/

namespace A315261.P880558710438001127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008574 n).toNat - A314849 (A008574 n).toNat

end

end A315261.P880558710438001127

namespace A315261

/-- `A008458(A008574(n))-A314849(A008574(n))` -/
def P880558710438001127.Spec : Prop :=
  ∀ n, P880558710438001127.a n = A315261 n

end A315261

/-!
# A315262: Coordination sequence Gal.6.440.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315262, there is no canonical definition to state claims against.
-/

/-! ## A315262.P9802696860327924016

`A315265(n)-A045838(A003008(n+1))`
-/

namespace A315262.P9802696860327924016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315265 n - A045838 (A003008 (n + 1)).toNat

end

end A315262.P9802696860327924016

/-!
# A315263: Coordination sequence Gal.6.439.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315263, there is no canonical definition to state claims against.
-/

/-! ## A315263.P12596960162924513005

`A314509(n)+A001222(A151083(n))`
-/

namespace A315263.P12596960162924513005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314509 n + A001222 (A151083 n).toNat

end

end A315263.P12596960162924513005

/-! ## A315263.P8201093954626370108

`A072473(n+1)+A001222(A055099(n))`
-/

namespace A315263.P8201093954626370108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) + A001222 (A055099 n).toNat

end

end A315263.P8201093954626370108

/-!
# A315264: Coordination sequence Gal.6.328.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315264, the canonical program `A315264.P7587987662611308662` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315264 has offset 0).

The definition of A315264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315264.P7587987662611308662

`abs(10*n-A310455(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315264

/-- `abs(10*n-A310455(n))` -/
def P7587987662611308662.Spec : Prop :=
  ∀ n, P7587987662611308662.a n = A315264 n

theorem P7587987662611308662.correct : P7587987662611308662.Spec := by
  intro n
  simp only [A315264]

end A315264

/-! ## A315264.P5670985920060744558

`A315210(n)+Δ[A011864(n)]`
-/

namespace A315264.P5670985920060744558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315210 n + (f1 (n + 1) - f1 n)

end

end A315264.P5670985920060744558

namespace A315264

/-- `A315210(n)+Δ[A011864(n)]` -/
def P5670985920060744558.Spec : Prop :=
  ∀ n, P5670985920060744558.a n = A315264 n

end A315264

/-! ## A315264.P11307413990758485396

`2*A008706(n)-A310455(n)`
-/

namespace A315264.P11307413990758485396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310455 n

end

end A315264.P11307413990758485396

namespace A315264

/-- `2*A008706(n)-A310455(n)` -/
def P11307413990758485396.Spec : Prop :=
  ∀ n, P11307413990758485396.a n = A315264 n

end A315264

/-! ## A315264.P17998800420926452265

`A008458(n)+A008574(n)-A310455(n)`
-/

namespace A315264.P17998800420926452265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310455 n)

end

end A315264.P17998800420926452265

namespace A315264

/-- `A008458(n)+A008574(n)-A310455(n)` -/
def P17998800420926452265.Spec : Prop :=
  ∀ n, P17998800420926452265.a n = A315264 n

end A315264

/-! ## A315264.P15555815390999279856

`A310455(n)+A005843(A008706(n)-A310455(n))`
-/

namespace A315264.P15555815390999279856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310455 n + A005843 (A008706 n - A310455 n).toNat

end

end A315264.P15555815390999279856

namespace A315264

/-- `A310455(n)+A005843(A008706(n)-A310455(n))` -/
def P15555815390999279856.Spec : Prop :=
  ∀ n, P15555815390999279856.a n = A315264 n

end A315264

/-! ## A315264.P13257354765558172981

`(A315307(n)+A315212(n))/2`
-/

namespace A315264.P13257354765558172981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315307 n + A315212 n : ℚ) / 2

end

end A315264.P13257354765558172981

namespace A315264

/-- `(A315307(n)+A315212(n))/2` -/
def P13257354765558172981.Spec : Prop :=
  ∀ n, P13257354765558172981.a n = (A315264 n : ℚ)

end A315264

/-! ## A315264.P6016474169676049726

`A005843(A008706(n))-A310455(n)`
-/

namespace A315264.P6016474169676049726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310455 n

end

end A315264.P6016474169676049726

namespace A315264

/-- `A005843(A008706(n))-A310455(n)` -/
def P6016474169676049726.Spec : Prop :=
  ∀ n, P6016474169676049726.a n = A315264 n

end A315264

/-! ## A315264.P916167105316751977

`A065502(A008458(n))-A310455(n)`
-/

namespace A315264.P916167105316751977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A310455 n

end

end A315264.P916167105316751977

namespace A315264

/-- `A065502(A008458(n))-A310455(n)` -/
def P916167105316751977.Spec : Prop :=
  ∀ n, P916167105316751977.a n = A315264 n

end A315264

/-! ## A315264.P9626829295193435769

`A310374(2*n)-4*n`
-/

namespace A315264.P9626829295193435769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310374 (2 * n) - (4 * n : ℤ)

end

end A315264.P9626829295193435769

namespace A315264

/-- `A310374(2*n)-4*n` -/
def P9626829295193435769.Spec : Prop :=
  ∀ n, P9626829295193435769.a n = A315264 n

end A315264

/-! ## A315264.P1202844831165159224

`2*A008574(2*n)-A315334(2*n)`
-/

namespace A315264.P1202844831165159224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315334 (2 * n)

end

end A315264.P1202844831165159224

namespace A315264

/-- `2*A008574(2*n)-A315334(2*n)` -/
def P1202844831165159224.Spec : Prop :=
  ∀ n, P1202844831165159224.a n = A315264 n

end A315264

/-! ## A315264.P2304219076288662413

`A004525(A315307(n)+A315212(n))`
-/

namespace A315264.P2304219076288662413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315307 n + A315212 n).toNat

end

end A315264.P2304219076288662413

namespace A315264

/-- `A004525(A315307(n)+A315212(n))` -/
def P2304219076288662413.Spec : Prop :=
  ∀ n, P2304219076288662413.a n = A315264 n

end A315264

/-! ## A315264.P16853437573146973752

`A313908(A008574(n))-A008574(A008574(n))`
-/

namespace A315264.P16853437573146973752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313908 (A008574 n).toNat - A008574 (A008574 n).toNat

end

end A315264.P16853437573146973752

namespace A315264

/-- `A313908(A008574(n))-A008574(A008574(n))` -/
def P16853437573146973752.Spec : Prop :=
  ∀ n, P16853437573146973752.a n = A315264 n

end A315264

/-! ## A315264.P16883359950698306389

`round(A301718(A314720(n))/5)`
-/

namespace A315264.P16883359950698306389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A301718 (A314720 n).toNat : ℚ) / 5)

end

end A315264.P16883359950698306389

namespace A315264

/-- `round(A301718(A314720(n))/5)` -/
def P16883359950698306389.Spec : Prop :=
  ∀ n, P16883359950698306389.a n = A315264 n

end A315264

/-!
# A315265: Coordination sequence Gal.5.132.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315265, the canonical program `A315265.P13761514949050069837` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315265 has offset 0).

The definition of A315265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315265.P9625609757294250457

`A315690(2*n)+n-7*n`
-/

namespace A315265.P9625609757294250457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 (2 * n) + ((n : ℤ) - (7 * n : ℤ))

end

end A315265.P9625609757294250457

namespace A315265

/-- `A315690(2*n)+n-7*n` -/
def P9625609757294250457.Spec : Prop :=
  ∀ n, P9625609757294250457.a n = A315265 n

end A315265

/-! ## A315265.P17584012169819593482

`A314692(n)+A004396(n)`
-/

namespace A315265.P17584012169819593482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314692 n + A004396 n

end

end A315265.P17584012169819593482

namespace A315265

/-- `A314692(n)+A004396(n)` -/
def P17584012169819593482.Spec : Prop :=
  ∀ n, P17584012169819593482.a n = A315265 n

end A315265

/-! ## A315265.P12720002946458651258

`abs(A008592(n)-A310454(n))`
-/

namespace A315265.P12720002946458651258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310454 n|

end

end A315265.P12720002946458651258

namespace A315265

/-- `abs(A008592(n)-A310454(n))` -/
def P12720002946458651258.Spec : Prop :=
  ∀ n, P12720002946458651258.a n = A315265 n

end A315265

/-! ## A315265.P13761514949050069837

`A315198(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315265

/-- `A315198(n)+Δ[A011862(n)]` -/
def P13761514949050069837.Spec : Prop :=
  ∀ n, P13761514949050069837.a n = A315265 n

theorem P13761514949050069837.correct : P13761514949050069837.Spec := by
  intro n
  simp only [A315265]

end A315265

/-! ## A315265.P2806196053735811249

`2*A008706(n)-A310454(n)`
-/

namespace A315265.P2806196053735811249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310454 n

end

end A315265.P2806196053735811249

namespace A315265

/-- `2*A008706(n)-A310454(n)` -/
def P2806196053735811249.Spec : Prop :=
  ∀ n, P2806196053735811249.a n = A315265 n

end A315265

/-! ## A315265.P8684394951487157029

`A314692(n)+A002264(2*n+1)`
-/

namespace A315265.P8684394951487157029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314692 n + A002264 (2 * n + 1)

end

end A315265.P8684394951487157029

namespace A315265

/-- `A314692(n)+A002264(2*n+1)` -/
def P8684394951487157029.Spec : Prop :=
  ∀ n, P8684394951487157029.a n = A315265 n

end A315265

/-! ## A315265.P11587968200703094526

`A314848(n)+A004396(A004396(n))`
-/

namespace A315265.P11587968200703094526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n + A004396 (A004396 n).toNat

end

end A315265.P11587968200703094526

namespace A315265

/-- `A314848(n)+A004396(A004396(n))` -/
def P11587968200703094526.Spec : Prop :=
  ∀ n, P11587968200703094526.a n = A315265 n

end A315265

/-! ## A315265.P12363761007410402675

`A314692(n)+A004525(A004773(n))`
-/

namespace A315265.P12363761007410402675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314692 n + A004525 (A004773 n).toNat

end

end A315265.P12363761007410402675

namespace A315265

/-- `A314692(n)+A004525(A004773(n))` -/
def P12363761007410402675.Spec : Prop :=
  ∀ n, P12363761007410402675.a n = A315265 n

end A315265

/-! ## A315265.P646154152106378059

`A008458(n)+A008574(n)-A310454(n)`
-/

namespace A315265.P646154152106378059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310454 n)

end

end A315265.P646154152106378059

namespace A315265

/-- `A008458(n)+A008574(n)-A310454(n)` -/
def P646154152106378059.Spec : Prop :=
  ∀ n, P646154152106378059.a n = A315265 n

end A315265

/-! ## A315265.P3652075192479259803

`A315475(n)-A004396(n-A004396(n))`
-/

namespace A315265.P3652075192479259803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A315265.P3652075192479259803

namespace A315265

/-- `A315475(n)-A004396(n-A004396(n))` -/
def P3652075192479259803.Spec : Prop :=
  ∀ n, P3652075192479259803.a n = A315265 n

end A315265

/-! ## A315265.P11441836366058441184

`A004396(n)+A315198(n)-A004396(A004396(n))`
-/

namespace A315265.P11441836366058441184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315198 n - A004396 (A004396 n).toNat)

end

end A315265.P11441836366058441184

namespace A315265

/-- `A004396(n)+A315198(n)-A004396(A004396(n))` -/
def P11441836366058441184.Spec : Prop :=
  ∀ n, P11441836366058441184.a n = A315265 n

end A315265

/-! ## A315265.P7046596086782429333

`A005843(A008706(n))-A310454(n)`
-/

namespace A315265.P7046596086782429333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310454 n

end

end A315265.P7046596086782429333

namespace A315265

/-- `A005843(A008706(n))-A310454(n)` -/
def P7046596086782429333.Spec : Prop :=
  ∀ n, P7046596086782429333.a n = A315265 n

end A315265

/-! ## A315265.P14068908032541853164

`A004396(n)+A004396(A315185(n)+A005843(n))`
-/

namespace A315265.P14068908032541853164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A315185 n + A005843 n).toNat

end

end A315265.P14068908032541853164

namespace A315265

/-- `A004396(n)+A004396(A315185(n)+A005843(n))` -/
def P14068908032541853164.Spec : Prop :=
  ∀ n, P14068908032541853164.a n = A315265 n

end A315265

/-! ## A315265.P16697542671805597038

`A004396(n)+A004396(A314736(n)+A004277(n))`
-/

namespace A315265.P16697542671805597038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A314736 n + A004277 n).toNat

end

end A315265.P16697542671805597038

namespace A315265

/-- `A004396(n)+A004396(A314736(n)+A004277(n))` -/
def P16697542671805597038.Spec : Prop :=
  ∀ n, P16697542671805597038.a n = A315265 n

end A315265

/-!
# A315266: Coordination sequence Gal.6.205.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315266, the canonical program `A315266.P7852260397978347680` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315266 has offset 0).

The definition of A315266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315266.P7852260397978347680

`A314841(n)+A004525(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A315266

/-- `A314841(n)+A004525(n)` -/
def P7852260397978347680.Spec : Prop :=
  ∀ n, P7852260397978347680.a n = A315266 n

theorem P7852260397978347680.correct : P7852260397978347680.Spec := by
  intro n
  simp only [A315266]

end A315266

/-! ## A315266.P2549761149247657606

`A313833(n)+A101455(n)`
-/

namespace A315266.P2549761149247657606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313833 n + A101455 n

end

end A315266.P2549761149247657606

namespace A315266

/-- `A313833(n)+A101455(n)` -/
def P2549761149247657606.Spec : Prop :=
  ∀ n, P2549761149247657606.a n = A315266 n

end A315266

/-! ## A315266.P8071433725955944633

`abs(A008592(n)-A310452(n))`
-/

namespace A315266.P8071433725955944633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310452 n|

end

end A315266.P8071433725955944633

namespace A315266

/-- `abs(A008592(n)-A310452(n))` -/
def P8071433725955944633.Spec : Prop :=
  ∀ n, P8071433725955944633.a n = A315266 n

end A315266

/-! ## A315266.P5160123206016745973

`A314841(n)+Δ[A054925(n)]`
-/

namespace A315266.P5160123206016745973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + (f1 (n + 1) - f1 n)

end

end A315266.P5160123206016745973

namespace A315266

/-- `A314841(n)+Δ[A054925(n)]` -/
def P5160123206016745973.Spec : Prop :=
  ∀ n, P5160123206016745973.a n = A315266 n

end A315266

/-! ## A315266.P5266907869214439670

`A314841(n)+n-∑[A021913(n)]`
-/

namespace A315266.P5266907869214439670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315266.P5266907869214439670

namespace A315266

/-- `A314841(n)+n-∑[A021913(n)]` -/
def P5266907869214439670.Spec : Prop :=
  ∀ n, P5266907869214439670.a n = A315266 n

end A315266

/-! ## A315266.P13895421405635145366

`A314841(n)+n-Δ[A011848(n)]`
-/

namespace A315266.P13895421405635145366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A315266.P13895421405635145366

namespace A315266

/-- `A314841(n)+n-Δ[A011848(n)]` -/
def P13895421405635145366.Spec : Prop :=
  ∀ n, P13895421405635145366.a n = A315266 n

end A315266

/-! ## A315266.P4097380269317505150

`A314899(n)+A004396(A004525(n))`
-/

namespace A315266.P4097380269317505150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n + A004396 (A004525 n).toNat

end

end A315266.P4097380269317505150

namespace A315266

/-- `A314899(n)+A004396(A004525(n))` -/
def P4097380269317505150.Spec : Prop :=
  ∀ n, P4097380269317505150.a n = A315266 n

theorem P4097380269317505150.correct : P4097380269317505150.Spec := by
  intro n
  simp only [A315266, Nat.add_sub_cancel, A315266.P4097380269317505150.a, A315266.P7852260397978347680.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A314841, A314841.P5099753023197914535.a, A314899, A314899.P7105760915525544627.a, A128834, A128834.P16779687439637953687.a, A312620, A312620.P764241885793850481.a, A010892, A010892.P14408744864468695543.a, A312526, A312526.P17098405118883711689.f1, A312526.P17098405118883711689.a, A011865, A011865.P18048699183673763300.a, A312065, A312065.P12266081500591104946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315266

/-! ## A315266.P7289805385004253409

`A314912(n)+A004525(A004396(n))`
-/

namespace A315266.P7289805385004253409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314912 n + A004525 (A004396 n).toNat

end

end A315266.P7289805385004253409

namespace A315266

/-- `A314912(n)+A004525(A004396(n))` -/
def P7289805385004253409.Spec : Prop :=
  ∀ n, P7289805385004253409.a n = A315266 n

theorem P7289805385004253409.correct : P7289805385004253409.Spec := by
  intro n
  simp only [A315266, Nat.add_sub_cancel, A315266.P7289805385004253409.a, A315266.P7852260397978347680.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A314841, A314841.P5099753023197914535.a, A314912, A314912.P18076292877621533634.a, A128834, A128834.P16779687439637953687.a, A312620, A312620.P764241885793850481.a, A010892, A010892.P14408744864468695543.a, A312526, A312526.P17098405118883711689.f1, A312526.P17098405118883711689.a, A011865, A011865.P18048699183673763300.a, A312065, A312065.P12266081500591104946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315266

/-! ## A315266.P5643256911394745830

`A008458(n)+A008574(n)-A310452(n)`
-/

namespace A315266.P5643256911394745830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310452 n)

end

end A315266.P5643256911394745830

namespace A315266

/-- `A008458(n)+A008574(n)-A310452(n)` -/
def P5643256911394745830.Spec : Prop :=
  ∀ n, P5643256911394745830.a n = A315266 n

end A315266

/-! ## A315266.P8954060582059080197

`A004525(A004396(n))+A311924(n)+A004525(n)`
-/

namespace A315266.P8954060582059080197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A311924 n + A004525 n)

end

end A315266.P8954060582059080197

namespace A315266

/-- `A004525(A004396(n))+A311924(n)+A004525(n)` -/
def P8954060582059080197.Spec : Prop :=
  ∀ n, P8954060582059080197.a n = A315266 n

end A315266

/-! ## A315266.P6357977500639013728

`A315527(n)-∑[A021913(n)]`
-/

namespace A315266.P6357977500639013728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315527 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315266.P6357977500639013728

namespace A315266

/-- `A315527(n)-∑[A021913(n)]` -/
def P6357977500639013728.Spec : Prop :=
  ∀ n, P6357977500639013728.a n = A315266 n

end A315266

/-! ## A315266.P3075509242978437993

`A315527(n)-Δ[A011848(n)]`
-/

namespace A315266.P3075509242978437993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315527 n - (f1 (n + 1) - f1 n)

end

end A315266.P3075509242978437993

namespace A315266

/-- `A315527(n)-Δ[A011848(n)]` -/
def P3075509242978437993.Spec : Prop :=
  ∀ n, P3075509242978437993.a n = A315266 n

end A315266

/-! ## A315266.P13218345297734196759

`A315527(n)-A004524(n+1)`
-/

namespace A315266.P13218345297734196759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315527 n - A004524 (n + 1)

end

end A315266.P13218345297734196759

namespace A315266

/-- `A315527(n)-A004524(n+1)` -/
def P13218345297734196759.Spec : Prop :=
  ∀ n, P13218345297734196759.a n = A315266 n

end A315266

/-! ## A315266.P13054870922601732002

`A004525(n)+A315527(n)-n`
-/

namespace A315266.P13054870922601732002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315527 n - (n : ℤ))

end

end A315266.P13054870922601732002

namespace A315266

/-- `A004525(n)+A315527(n)-n` -/
def P13054870922601732002.Spec : Prop :=
  ∀ n, P13054870922601732002.a n = A315266 n

theorem P13054870922601732002.correct : P13054870922601732002.Spec := by
  intro n
  simp only [A315266, Nat.add_sub_cancel, A315266.P13054870922601732002.a, A315266.P7852260397978347680.a, A004525, A004525.P4158271949796742323.a, A314841, A314841.P5099753023197914535.a, A315527, A315527.P15376779248736554616.a, A128834, A128834.P16779687439637953687.a, A312620, A312620.P764241885793850481.a, A004396, A004396.P17032557045289780609.a, A010892, A010892.P14408744864468695543.a, A312526, A312526.P17098405118883711689.f1, A312526.P17098405118883711689.a, A011865, A011865.P18048699183673763300.a, A312065, A312065.P12266081500591104946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315266

/-! ## A315266.P2532847264748379444

`A004525(n)+A004396(A315512(n))+n`
-/

namespace A315266.P2532847264748379444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A004396 (A315512 n).toNat + (n : ℤ))

end

end A315266.P2532847264748379444

namespace A315266

/-- `A004525(n)+A004396(A315512(n))+n` -/
def P2532847264748379444.Spec : Prop :=
  ∀ n, P2532847264748379444.a n = A315266 n

end A315266

/-! ## A315266.P17972140365872319540

`A004525(A312969(2*n))+A004396(n)`
-/

namespace A315266.P17972140365872319540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312969 (2 * n)).toNat + A004396 n

end

end A315266.P17972140365872319540

namespace A315266

/-- `A004525(A312969(2*n))+A004396(n)` -/
def P17972140365872319540.Spec : Prop :=
  ∀ n, P17972140365872319540.a n = A315266 n

end A315266

/-!
# A315267: Coordination sequence Gal.6.215.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315267, the canonical program `A315267.P18096296036471696412` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315267 has offset 0).

The definition of A315267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315267.P18096296036471696412

`A313799(n)+A134667(A006369(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A315267

/-- `A313799(n)+A134667(A006369(n))` -/
def P18096296036471696412.Spec : Prop :=
  ∀ n, P18096296036471696412.a n = A315267 n

theorem P18096296036471696412.correct : P18096296036471696412.Spec := by
  intro n
  simp only [A315267]

end A315267

/-! ## A315267.P13400382543979498023

`A313799(n)+A134667(A042965(n+1))`
-/

namespace A315267.P13400382543979498023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n + A134667 (A042965 (n + 1)).toNat

end

end A315267.P13400382543979498023

namespace A315267

/-- `A313799(n)+A134667(A042965(n+1))` -/
def P13400382543979498023.Spec : Prop :=
  ∀ n, P13400382543979498023.a n = A315267 n

end A315267

/-! ## A315267.P9380118388565077723

`A313799(n)+A134667(A004396(2*n))`
-/

namespace A315267.P9380118388565077723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n + A134667 (A004396 (2 * n)).toNat

end

end A315267.P9380118388565077723

namespace A315267

/-- `A313799(n)+A134667(A004396(2*n))` -/
def P9380118388565077723.Spec : Prop :=
  ∀ n, P9380118388565077723.a n = A315267 n

end A315267

/-! ## A315267.P1511662322442748782

`A313894(n)+A102283(A006369(n))`
-/

namespace A315267.P1511662322442748782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n + A102283 (A006369 n).toNat

end

end A315267.P1511662322442748782

namespace A315267

/-- `A313894(n)+A102283(A006369(n))` -/
def P1511662322442748782.Spec : Prop :=
  ∀ n, P1511662322442748782.a n = A315267 n

end A315267

/-! ## A315267.P17279289429954293392

`A313894(n)+A128834(A042965(n+1))`
-/

namespace A315267.P17279289429954293392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n + A128834 (A042965 (n + 1)).toNat

end

end A315267.P17279289429954293392

namespace A315267

/-- `A313894(n)+A128834(A042965(n+1))` -/
def P17279289429954293392.Spec : Prop :=
  ∀ n, P17279289429954293392.a n = A315267 n

end A315267

/-! ## A315267.P13617565039648945661

`A313894(n)+A128834(A004396(2*n))`
-/

namespace A315267.P13617565039648945661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n + A128834 (A004396 (2 * n)).toNat

end

end A315267.P13617565039648945661

namespace A315267

/-- `A313894(n)+A128834(A004396(2*n))` -/
def P13617565039648945661.Spec : Prop :=
  ∀ n, P13617565039648945661.a n = A315267 n

end A315267

/-! ## A315267.P4503109792400349810

`A313894(n)-A102283(2*A006369(n))`
-/

namespace A315267.P4503109792400349810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - A102283 (2 * A006369 n).toNat

end

end A315267.P4503109792400349810

namespace A315267

/-- `A313894(n)-A102283(2*A006369(n))` -/
def P4503109792400349810.Spec : Prop :=
  ∀ n, P4503109792400349810.a n = A315267 n

end A315267

/-! ## A315267.P2111378283727353755

`2*A315475(n)-A315680(n)`
-/

namespace A315267.P2111378283727353755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315475 n - A315680 n

end

end A315267.P2111378283727353755

namespace A315267

/-- `2*A315475(n)-A315680(n)` -/
def P2111378283727353755.Spec : Prop :=
  ∀ n, P2111378283727353755.a n = A315267 n

end A315267

/-! ## A315267.P8685554614302208554

`A315475(n)+A128834(A006369(2*n))`
-/

namespace A315267.P8685554614302208554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n + A128834 (A006369 (2 * n)).toNat

end

end A315267.P8685554614302208554

namespace A315267

/-- `A315475(n)+A128834(A006369(2*n))` -/
def P8685554614302208554.Spec : Prop :=
  ∀ n, P8685554614302208554.a n = A315267 n

end A315267

/-! ## A315267.P6952550112005720430

`A315475(n)-A102283(n-A004396(n))`
-/

namespace A315267.P6952550112005720430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n - A102283 ((n : ℤ) - A004396 n).toNat

end

end A315267.P6952550112005720430

namespace A315267

/-- `A315475(n)-A102283(n-A004396(n))` -/
def P6952550112005720430.Spec : Prop :=
  ∀ n, P6952550112005720430.a n = A315267 n

end A315267

/-! ## A315267.P2479744871963507043

`2*A313894(n)-A310538(n)`
-/

namespace A315267.P2479744871963507043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313894 n - A310538 n

end

end A315267.P2479744871963507043

namespace A315267

/-- `2*A313894(n)-A310538(n)` -/
def P2479744871963507043.Spec : Prop :=
  ∀ n, P2479744871963507043.a n = A315267 n

end A315267

/-! ## A315267.P8215395217704281839

`2*A313746(n)-A310454(n)`
-/

namespace A315267.P8215395217704281839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313746 n - A310454 n

end

end A315267.P8215395217704281839

namespace A315267

/-- `2*A313746(n)-A310454(n)` -/
def P8215395217704281839.Spec : Prop :=
  ∀ n, P8215395217704281839.a n = A315267 n

end A315267

/-! ## A315267.P17826426713027093080

`A310454(n)+A005843(A313746(n)-A310454(n))`
-/

namespace A315267.P17826426713027093080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310454 n + A005843 (A313746 n - A310454 n).toNat

end

end A315267.P17826426713027093080

namespace A315267

/-- `A310454(n)+A005843(A313746(n)-A310454(n))` -/
def P17826426713027093080.Spec : Prop :=
  ∀ n, P17826426713027093080.a n = A315267 n

end A315267

/-! ## A315267.P11229917641697294147

`2*A315265(n)-A315256(n)`
-/

namespace A315267.P11229917641697294147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315265 n - A315256 n

end

end A315267.P11229917641697294147

namespace A315267

/-- `2*A315265(n)-A315256(n)` -/
def P11229917641697294147.Spec : Prop :=
  ∀ n, P11229917641697294147.a n = A315267 n

end A315267

/-! ## A315267.P9737568106048855039

`A315265(n)+A311344(n)%A004277(n)`
-/

namespace A315267.P9737568106048855039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315265 n + Int.tmod (A311344 n) (A004277 n)

end

end A315267.P9737568106048855039

namespace A315267

/-- `A315265(n)+A311344(n)%A004277(n)` -/
def P9737568106048855039.Spec : Prop :=
  ∀ n, P9737568106048855039.a n = A315267 n

end A315267

/-! ## A315267.P11042584344949116141

`A315256(n)+A005843(A315265(n)-A315256(n))`
-/

namespace A315267.P11042584344949116141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315256 n + A005843 (A315265 n - A315256 n).toNat

end

end A315267.P11042584344949116141

namespace A315267

/-- `A315256(n)+A005843(A315265(n)-A315256(n))` -/
def P11042584344949116141.Spec : Prop :=
  ∀ n, P11042584344949116141.a n = A315267 n

end A315267

/-! ## A315267.P10235333357126796093

`A005843(A313746(n))-A310454(n)`
-/

namespace A315267.P10235333357126796093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313746 n).toNat - A310454 n

end

end A315267.P10235333357126796093

namespace A315267

/-- `A005843(A313746(n))-A310454(n)` -/
def P10235333357126796093.Spec : Prop :=
  ∀ n, P10235333357126796093.a n = A315267 n

end A315267

/-! ## A315267.P8375536841773295153

`A005843(A315265(n))-A315256(n)`
-/

namespace A315267.P8375536841773295153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315265 n).toNat - A315256 n

end

end A315267.P8375536841773295153

namespace A315267

/-- `A005843(A315265(n))-A315256(n)` -/
def P8375536841773295153.Spec : Prop :=
  ∀ n, P8375536841773295153.a n = A315267 n

end A315267

/-! ## A315267.P4446960668793794243

`A005843(A313894(n))-A310538(n)`
-/

namespace A315267.P4446960668793794243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313894 n).toNat - A310538 n

end

end A315267.P4446960668793794243

namespace A315267

/-- `A005843(A313894(n))-A310538(n)` -/
def P4446960668793794243.Spec : Prop :=
  ∀ n, P4446960668793794243.a n = A315267 n

end A315267

/-! ## A315267.P1007424257107281359

`A005843(A315475(n))-A315680(n)`
-/

namespace A315267.P1007424257107281359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315475 n).toNat - A315680 n

end

end A315267.P1007424257107281359

namespace A315267

/-- `A005843(A315475(n))-A315680(n)` -/
def P1007424257107281359.Spec : Prop :=
  ∀ n, P1007424257107281359.a n = A315267 n

end A315267

/-!
# A315270: Coordination sequence Gal.5.137.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315270, the canonical program `A315270.P17695513051592214442` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315270 has offset 0).

The definition of A315270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315270.P17695513051592214442

`A315203(n)+A002266(n+2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A315270

/-- `A315203(n)+A002266(n+2)` -/
def P17695513051592214442.Spec : Prop :=
  ∀ n, P17695513051592214442.a n = A315270 n

theorem P17695513051592214442.correct : P17695513051592214442.Spec := by
  intro n
  simp only [A315270]

end A315270

/-! ## A315270.P8676173444399344655

`A008706(n)+A253262(n)%2`
-/

namespace A315270.P8676173444399344655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + Int.tmod (A253262 n) 2

end

end A315270.P8676173444399344655

namespace A315270

/-- `A008706(n)+A253262(n)%2` -/
def P8676173444399344655.Spec : Prop :=
  ∀ n, P8676173444399344655.a n = A315270 n

end A315270

/-! ## A315270.P12671336750641044325

`A014019(3*(n+6))+A008706(n)`
-/

namespace A315270.P12671336750641044325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (3 * (n + 6)) + A008706 n

end

end A315270.P12671336750641044325

namespace A315270

/-- `A014019(3*(n+6))+A008706(n)` -/
def P12671336750641044325.Spec : Prop :=
  ∀ n, P12671336750641044325.a n = A315270 n

end A315270

/-! ## A315270.P15677598035070259721

`A128834(A265227(n+1))+A008458(n)-n`
-/

namespace A315270.P15677598035070259721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A265227 (n + 1)).toNat + (A008458 n - (n : ℤ))

end

end A315270.P15677598035070259721

namespace A315270

/-- `A128834(A265227(n+1))+A008458(n)-n` -/
def P15677598035070259721.Spec : Prop :=
  ∀ n, P15677598035070259721.a n = A315270 n

end A315270

/-! ## A315270.P9430499763653818153

`A330025(n)+A314961(n)`
-/

namespace A315270.P9430499763653818153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A314961 n

end

end A315270.P9430499763653818153

namespace A315270

/-- `A330025(n)+A314961(n)` -/
def P9430499763653818153.Spec : Prop :=
  ∀ n, P9430499763653818153.a n = A315270 n

end A315270

/-! ## A315270.P3687893243576995200

`abs(A008592(n)-A310446(n))`
-/

namespace A315270.P3687893243576995200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310446 n|

end

end A315270.P3687893243576995200

namespace A315270

/-- `abs(A008592(n)-A310446(n))` -/
def P3687893243576995200.Spec : Prop :=
  ∀ n, P3687893243576995200.a n = A315270 n

end A315270

/-! ## A315270.P10912238351875736715

`floor(A010015(n)/A310446(n))`
-/

namespace A315270.P10912238351875736715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A310446 n : ℚ)⌋

end

end A315270.P10912238351875736715

namespace A315270

/-- `floor(A010015(n)/A310446(n))` -/
def P10912238351875736715.Spec : Prop :=
  ∀ n, P10912238351875736715.a n = A315270 n

end A315270

/-! ## A315270.P7910091075533282570

`2*A008706(n)-A310446(n)`
-/

namespace A315270.P7910091075533282570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310446 n

end

end A315270.P7910091075533282570

namespace A315270

/-- `2*A008706(n)-A310446(n)` -/
def P7910091075533282570.Spec : Prop :=
  ∀ n, P7910091075533282570.a n = A315270 n

end A315270

/-! ## A315270.P11530594050398159624

`A184418(A008574(n))-A310446(n)`
-/

namespace A315270.P11530594050398159624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A310446 n

end

end A315270.P11530594050398159624

namespace A315270

/-- `A184418(A008574(n))-A310446(n)` -/
def P11530594050398159624.Spec : Prop :=
  ∀ n, P11530594050398159624.a n = A315270 n

end A315270

/-! ## A315270.P10106486907543608977

`A008458(n)+A008574(n)-A310446(n)`
-/

namespace A315270.P10106486907543608977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310446 n)

end

end A315270.P10106486907543608977

namespace A315270

/-- `A008458(n)+A008574(n)-A310446(n)` -/
def P10106486907543608977.Spec : Prop :=
  ∀ n, P10106486907543608977.a n = A315270 n

end A315270

/-! ## A315270.P6675780827568675771

`A312208(n)+2*A330025(n)`
-/

namespace A315270.P6675780827568675771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312208 n + 2 * A330025 n

end

end A315270.P6675780827568675771

namespace A315270

/-- `A312208(n)+2*A330025(n)` -/
def P6675780827568675771.Spec : Prop :=
  ∀ n, P6675780827568675771.a n = A315270 n

end A315270

/-! ## A315270.P10921491380335202943

`A330033(n)+A314093(n)`
-/

namespace A315270.P10921491380335202943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330033 n + A314093 n

end

end A315270.P10921491380335202943

namespace A315270

/-- `A330033(n)+A314093(n)` -/
def P10921491380335202943.Spec : Prop :=
  ∀ n, P10921491380335202943.a n = A315270 n

end A315270

/-! ## A315270.P10332058712458308084

`A074067(A310446(n))`
-/

namespace A315270.P10332058712458308084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A310446 n).toNat

end

end A315270.P10332058712458308084

namespace A315270

/-- `A074067(A310446(n))` -/
def P10332058712458308084.Spec : Prop :=
  ∀ n, P10332058712458308084.a n = A315270 n

end A315270

/-! ## A315270.P11050757262843602565

`A005843(A008706(n))-A310446(n)`
-/

namespace A315270.P11050757262843602565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310446 n

end

end A315270.P11050757262843602565

namespace A315270

/-- `A005843(A008706(n))-A310446(n)` -/
def P11050757262843602565.Spec : Prop :=
  ∀ n, P11050757262843602565.a n = A315270 n

end A315270

/-! ## A315270.P7893842216891159585

`A008706(n)-A014019(A017557(n)+n)`
-/

namespace A315270.P7893842216891159585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A014019 (A017557 n + (n : ℤ)).toNat

end

end A315270.P7893842216891159585

namespace A315270

/-- `A008706(n)-A014019(A017557(n)+n)` -/
def P7893842216891159585.Spec : Prop :=
  ∀ n, P7893842216891159585.a n = A315270 n

end A315270

/-!
# A315271: Coordination sequence Gal.6.345.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315271, the canonical program `A315271.P18267485139840011839` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315271 has offset 0).

The definition of A315271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315271.P18350559300235294146

`A314706(n)+A004396(n)`
-/

namespace A315271.P18350559300235294146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314706 n + A004396 n

end

end A315271.P18350559300235294146

namespace A315271

/-- `A314706(n)+A004396(n)` -/
def P18350559300235294146.Spec : Prop :=
  ∀ n, P18350559300235294146.a n = A315271 n

end A315271

/-! ## A315271.P3977678017544431190

`A313778(n)+A134667(n)`
-/

namespace A315271.P3977678017544431190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313778 n + A134667 n

end

end A315271.P3977678017544431190

namespace A315271

/-- `A313778(n)+A134667(n)` -/
def P3977678017544431190.Spec : Prop :=
  ∀ n, P3977678017544431190.a n = A315271 n

end A315271

/-! ## A315271.P15255566778960655111

`A314706(n)+A002264(2*n+1)`
-/

namespace A315271.P15255566778960655111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314706 n + A002264 (2 * n + 1)

end

end A315271.P15255566778960655111

namespace A315271

/-- `A314706(n)+A002264(2*n+1)` -/
def P15255566778960655111.Spec : Prop :=
  ∀ n, P15255566778960655111.a n = A315271 n

end A315271

/-! ## A315271.P18267485139840011839

`A313778(n)+A128834(A128834(n)+n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315271

/-- `A313778(n)+A128834(A128834(n)+n)` -/
def P18267485139840011839.Spec : Prop :=
  ∀ n, P18267485139840011839.a n = A315271 n

theorem P18267485139840011839.correct : P18267485139840011839.Spec := by
  intro n
  simp only [A315271]

end A315271

/-! ## A315271.P4053301296586954702

`A315413(n)-A128834(n-A128834(n))`
-/

namespace A315271.P4053301296586954702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315413 n - A128834 ((n : ℤ) - A128834 n).toNat

end

end A315271.P4053301296586954702

namespace A315271

/-- `A315413(n)-A128834(n-A128834(n))` -/
def P4053301296586954702.Spec : Prop :=
  ∀ n, P4053301296586954702.a n = A315271 n

end A315271

/-! ## A315271.P18008089805797510206

`A314031(n)+A102283(n)`
-/

namespace A315271.P18008089805797510206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314031 n + A102283 n

end

end A315271.P18008089805797510206

namespace A315271

/-- `A314031(n)+A102283(n)` -/
def P18008089805797510206.Spec : Prop :=
  ∀ n, P18008089805797510206.a n = A315271 n

end A315271

/-! ## A315271.P1347314477262239709

`abs(A008592(n)-A310444(n))`
-/

namespace A315271.P1347314477262239709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310444 n|

end

end A315271.P1347314477262239709

namespace A315271

/-- `abs(A008592(n)-A310444(n))` -/
def P1347314477262239709.Spec : Prop :=
  ∀ n, P1347314477262239709.a n = A315271 n

end A315271

/-! ## A315271.P9726956955579753891

`floor(A010015(n)/A310444(n))`
-/

namespace A315271.P9726956955579753891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A310444 n : ℚ)⌋

end

end A315271.P9726956955579753891

namespace A315271

/-- `floor(A010015(n)/A310444(n))` -/
def P9726956955579753891.Spec : Prop :=
  ∀ n, P9726956955579753891.a n = A315271 n

end A315271

/-! ## A315271.P8065765426943879277

`2*A008706(n)-A310444(n)`
-/

namespace A315271.P8065765426943879277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310444 n

end

end A315271.P8065765426943879277

namespace A315271

/-- `2*A008706(n)-A310444(n)` -/
def P8065765426943879277.Spec : Prop :=
  ∀ n, P8065765426943879277.a n = A315271 n

end A315271

/-! ## A315271.P6371911043124998981

`A008458(n)+A008574(n)-A310444(n)`
-/

namespace A315271.P6371911043124998981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310444 n)

end

end A315271.P6371911043124998981

namespace A315271

/-- `A008458(n)+A008574(n)-A310444(n)` -/
def P6371911043124998981.Spec : Prop :=
  ∀ n, P6371911043124998981.a n = A315271 n

end A315271

/-! ## A315271.P6291063022605247766

`A004396(n)+A315488(n)-n`
-/

namespace A315271.P6291063022605247766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315488 n - (n : ℤ))

end

end A315271.P6291063022605247766

namespace A315271

/-- `A004396(n)+A315488(n)-n` -/
def P6291063022605247766.Spec : Prop :=
  ∀ n, P6291063022605247766.a n = A315271 n

end A315271

/-! ## A315271.P6118826204243947531

`A008576(n)+A315488(n)-A008486(n)`
-/

namespace A315271.P6118826204243947531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315488 n - A008486 n)

end

end A315271.P6118826204243947531

namespace A315271

/-- `A008576(n)+A315488(n)-A008486(n)` -/
def P6118826204243947531.Spec : Prop :=
  ∀ n, P6118826204243947531.a n = A315271 n

end A315271

/-! ## A315271.P4942412241655323464

`A074067(A310444(n))`
-/

namespace A315271.P4942412241655323464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A310444 n).toNat

end

end A315271.P4942412241655323464

namespace A315271

/-- `A074067(A310444(n))` -/
def P4942412241655323464.Spec : Prop :=
  ∀ n, P4942412241655323464.a n = A315271 n

end A315271

/-! ## A315271.P11047620275124856546

`A004396(A315697(n))+2*A004396(n)`
-/

namespace A315271.P11047620275124856546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315697 n).toNat + 2 * A004396 n

end

end A315271.P11047620275124856546

namespace A315271

/-- `A004396(A315697(n))+2*A004396(n)` -/
def P11047620275124856546.Spec : Prop :=
  ∀ n, P11047620275124856546.a n = A315271 n

end A315271

/-! ## A315271.P450605994068887811

`A004396(A315488(n)+A004396(n))+n`
-/

namespace A315271.P450605994068887811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315488 n + A004396 n).toNat + (n : ℤ)

end

end A315271.P450605994068887811

namespace A315271

/-- `A004396(A315488(n)+A004396(n))+n` -/
def P450605994068887811.Spec : Prop :=
  ∀ n, P450605994068887811.a n = A315271 n

end A315271

/-! ## A315271.P6709134722103831268

`A004396(n)+A004396(A315697(n)+n)`
-/

namespace A315271.P6709134722103831268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A315697 n + (n : ℤ)).toNat

end

end A315271.P6709134722103831268

namespace A315271

/-- `A004396(n)+A004396(A315697(n)+n)` -/
def P6709134722103831268.Spec : Prop :=
  ∀ n, P6709134722103831268.a n = A315271 n

end A315271

/-! ## A315271.P2749972836037234131

`A004396(n)+A004396(A315768(n)+A004396(n))`
-/

namespace A315271.P2749972836037234131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A315768 n + A004396 n).toNat

end

end A315271.P2749972836037234131

namespace A315271

/-- `A004396(n)+A004396(A315768(n)+A004396(n))` -/
def P2749972836037234131.Spec : Prop :=
  ∀ n, P2749972836037234131.a n = A315271 n

end A315271

/-!
# A315272: Coordination sequence Gal.6.351.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315272, the canonical program `A315272.P8968323423275287486` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315272 has offset 0).

The definition of A315272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315272.P8968323423275287486

`abs(A008592(n)-A310442(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A315272

/-- `abs(A008592(n)-A310442(n))` -/
def P8968323423275287486.Spec : Prop :=
  ∀ n, P8968323423275287486.a n = A315272 n

theorem P8968323423275287486.correct : P8968323423275287486.Spec := by
  intro n
  simp only [A315272]

end A315272

/-! ## A315272.P11692365076086412752

`2*A008706(n)-A310442(n)`
-/

namespace A315272.P11692365076086412752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310442 n

end

end A315272.P11692365076086412752

namespace A315272

/-- `2*A008706(n)-A310442(n)` -/
def P11692365076086412752.Spec : Prop :=
  ∀ n, P11692365076086412752.a n = A315272 n

end A315272

/-! ## A315272.P8042085525224947067

`2*A314894(n)-A311932(n)`
-/

namespace A315272.P8042085525224947067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314894 n - A311932 n

end

end A315272.P8042085525224947067

namespace A315272

/-- `2*A314894(n)-A311932(n)` -/
def P8042085525224947067.Spec : Prop :=
  ∀ n, P8042085525224947067.a n = A315272 n

end A315272

/-! ## A315272.P1079899984397210331

`A184418(A008574(n))-A310442(n)`
-/

namespace A315272.P1079899984397210331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A310442 n

end

end A315272.P1079899984397210331

namespace A315272

/-- `A184418(A008574(n))-A310442(n)` -/
def P1079899984397210331.Spec : Prop :=
  ∀ n, P1079899984397210331.a n = A315272 n

end A315272

/-! ## A315272.P9477988682202481101

`A008458(n)+A008574(n)-A310442(n)`
-/

namespace A315272.P9477988682202481101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310442 n)

end

end A315272.P9477988682202481101

namespace A315272

/-- `A008458(n)+A008574(n)-A310442(n)` -/
def P9477988682202481101.Spec : Prop :=
  ∀ n, P9477988682202481101.a n = A315272 n

end A315272

/-! ## A315272.P11412645600704616295

`A310442(n)+A005843(A008706(n)-A310442(n))`
-/

namespace A315272.P11412645600704616295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310442 n + A005843 (A008706 n - A310442 n).toNat

end

end A315272.P11412645600704616295

namespace A315272

/-- `A310442(n)+A005843(A008706(n)-A310442(n))` -/
def P11412645600704616295.Spec : Prop :=
  ∀ n, P11412645600704616295.a n = A315272 n

end A315272

/-! ## A315272.P15455290272102165617

`A311932(n)+A005843(A314894(n)-A311932(n))`
-/

namespace A315272.P15455290272102165617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311932 n + A005843 (A314894 n - A311932 n).toNat

end

end A315272.P15455290272102165617

namespace A315272

/-- `A311932(n)+A005843(A314894(n)-A311932(n))` -/
def P15455290272102165617.Spec : Prop :=
  ∀ n, P15455290272102165617.a n = A315272 n

end A315272

/-! ## A315272.P7979975787272355103

`(A315326(n)+A315212(n))/2`
-/

namespace A315272.P7979975787272355103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315326 n + A315212 n : ℚ) / 2

end

end A315272.P7979975787272355103

namespace A315272

/-- `(A315326(n)+A315212(n))/2` -/
def P7979975787272355103.Spec : Prop :=
  ∀ n, P7979975787272355103.a n = (A315272 n : ℚ)

end A315272

/-! ## A315272.P18298146411556864996

`A005843(A314894(n))-A311932(n)`
-/

namespace A315272.P18298146411556864996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314894 n).toNat - A311932 n

end

end A315272.P18298146411556864996

namespace A315272

/-- `A005843(A314894(n))-A311932(n)` -/
def P18298146411556864996.Spec : Prop :=
  ∀ n, P18298146411556864996.a n = A315272 n

end A315272

/-! ## A315272.P4371094316837693448

`A005843(A008706(n))-A310442(n)`
-/

namespace A315272.P4371094316837693448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310442 n

end

end A315272.P4371094316837693448

namespace A315272

/-- `A005843(A008706(n))-A310442(n)` -/
def P4371094316837693448.Spec : Prop :=
  ∀ n, P4371094316837693448.a n = A315272 n

end A315272

/-! ## A315272.P6629035326082039845

`A065502(A008458(n))-A310442(n)`
-/

namespace A315272.P6629035326082039845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A310442 n

end

end A315272.P6629035326082039845

namespace A315272

/-- `A065502(A008458(n))-A310442(n)` -/
def P6629035326082039845.Spec : Prop :=
  ∀ n, P6629035326082039845.a n = A315272 n

end A315272

/-! ## A315272.P6353686339355124730

`A233583(A017281(n))-A310442(n)`
-/

namespace A315272.P6353686339355124730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A310442 n

end

end A315272.P6353686339355124730

namespace A315272

/-- `A233583(A017281(n))-A310442(n)` -/
def P6353686339355124730.Spec : Prop :=
  ∀ n, P6353686339355124730.a n = A315272 n

end A315272

/-!
# A315273: Coordination sequence Gal.4.73.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315273, the canonical program `A315273.P1536519079128265166` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315273 has offset 0).

The definition of A315273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315273.P1813651498532019336

`A242062(n)+A008706(n)`
-/

namespace A315273.P1813651498532019336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 n + A008706 n

end

end A315273.P1813651498532019336

namespace A315273

/-- `A242062(n)+A008706(n)` -/
def P1813651498532019336.Spec : Prop :=
  ∀ n, P1813651498532019336.a n = A315273 n

end A315273

/-! ## A315273.P16595930377219450933

`2*A008706(n)-A310441(n)`
-/

namespace A315273.P16595930377219450933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310441 n

end

end A315273.P16595930377219450933

namespace A315273

/-- `2*A008706(n)-A310441(n)` -/
def P16595930377219450933.Spec : Prop :=
  ∀ n, P16595930377219450933.a n = A315273 n

end A315273

/-! ## A315273.P1536519079128265166

`A008574(n)+A242062(n)+n`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A315273

/-- `A008574(n)+A242062(n)+n` -/
def P1536519079128265166.Spec : Prop :=
  ∀ n, P1536519079128265166.a n = A315273 n

theorem P1536519079128265166.correct : P1536519079128265166.Spec := by
  intro n
  simp only [A315273]

end A315273

/-! ## A315273.P9837429141360036717

`A008458(n)+A242062(n)-n`
-/

namespace A315273.P9837429141360036717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A242062 n - (n : ℤ))

end

end A315273.P9837429141360036717

namespace A315273

/-- `A008458(n)+A242062(n)-n` -/
def P9837429141360036717.Spec : Prop :=
  ∀ n, P9837429141360036717.a n = A315273 n

end A315273

/-! ## A315273.P5362838493164884561

`A242062(n)+A001068(A008574(n))`
-/

namespace A315273.P5362838493164884561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 n + A001068 (A008574 n).toNat

end

end A315273.P5362838493164884561

namespace A315273

/-- `A242062(n)+A001068(A008574(n))` -/
def P5362838493164884561.Spec : Prop :=
  ∀ n, P5362838493164884561.a n = A315273 n

end A315273

/-! ## A315273.P3469703124067653997

`A310503(A008574(n))/2-A310503(n)`
-/

namespace A315273.P3469703124067653997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310503 (A008574 n).toNat : ℚ) / 2 - (A310503 n : ℚ)

end

end A315273.P3469703124067653997

namespace A315273

/-- `A310503(A008574(n))/2-A310503(n)` -/
def P3469703124067653997.Spec : Prop :=
  ∀ n, P3469703124067653997.a n = (A315273 n : ℚ)

end A315273

/-! ## A315273.P4277940892868906869

`A008458(n)+A008574(n)-A310441(n)`
-/

namespace A315273.P4277940892868906869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310441 n)

end

end A315273.P4277940892868906869

namespace A315273

/-- `A008458(n)+A008574(n)-A310441(n)` -/
def P4277940892868906869.Spec : Prop :=
  ∀ n, P4277940892868906869.a n = A315273 n

end A315273

/-! ## A315273.P13588786229519022790

`A315423(n)-A238470(n)`
-/

namespace A315273.P13588786229519022790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315423 n - A238470 n

end

end A315273.P13588786229519022790

namespace A315273

/-- `A315423(n)-A238470(n)` -/
def P13588786229519022790.Spec : Prop :=
  ∀ n, P13588786229519022790.a n = A315273 n

end A315273

/-! ## A315273.P8124115858156843764

`A313780(n)+A238469(n)`
-/

namespace A315273.P8124115858156843764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313780 n + A238469 n

end

end A315273.P8124115858156843764

namespace A315273

/-- `A313780(n)+A238469(n)` -/
def P8124115858156843764.Spec : Prop :=
  ∀ n, P8124115858156843764.a n = A315273 n

end A315273

/-! ## A315273.P2780450231274200375

`A313780(n)+A238470(2*n)`
-/

namespace A315273.P2780450231274200375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313780 n + A238470 (2 * n)

end

end A315273.P2780450231274200375

namespace A315273

/-- `A313780(n)+A238470(2*n)` -/
def P2780450231274200375.Spec : Prop :=
  ∀ n, P2780450231274200375.a n = A315273 n

end A315273

/-! ## A315273.P2943383138512732182

`A315309(n)+A238469(2*n)`
-/

namespace A315273.P2943383138512732182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315309 n + A238469 (2 * n)

end

end A315273.P2943383138512732182

namespace A315273

/-- `A315309(n)+A238469(2*n)` -/
def P2943383138512732182.Spec : Prop :=
  ∀ n, P2943383138512732182.a n = A315273 n

end A315273

/-! ## A315273.P12048456701662008473

`A315309(n)+A238468(A238468(n)+n)`
-/

namespace A315273.P12048456701662008473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315309 n + A238468 (A238468 n + (n : ℤ)).toNat

end

end A315273.P12048456701662008473

namespace A315273

/-- `A315309(n)+A238468(A238468(n)+n)` -/
def P12048456701662008473.Spec : Prop :=
  ∀ n, P12048456701662008473.a n = A315273 n

end A315273

/-! ## A315273.P1773283798145642084

`A313487(2*n)-4*n`
-/

namespace A315273.P1773283798145642084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313487 (2 * n) - (4 * n : ℤ)

end

end A315273.P1773283798145642084

namespace A315273

/-- `A313487(2*n)-4*n` -/
def P1773283798145642084.Spec : Prop :=
  ∀ n, P1773283798145642084.a n = A315273 n

end A315273

/-! ## A315273.P124829882081064453

`2*A008574(2*n)-A313923(2*n)`
-/

namespace A315273.P124829882081064453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A313923 (2 * n)

end

end A315273.P124829882081064453

namespace A315273

/-- `2*A008574(2*n)-A313923(2*n)` -/
def P124829882081064453.Spec : Prop :=
  ∀ n, P124829882081064453.a n = A315273 n

end A315273

/-! ## A315273.P3935740234939734100

`A004525(A315634(2*n))`
-/

namespace A315273.P3935740234939734100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315634 (2 * n)).toNat

end

end A315273.P3935740234939734100

namespace A315273

/-- `A004525(A315634(2*n))` -/
def P3935740234939734100.Spec : Prop :=
  ∀ n, P3935740234939734100.a n = A315273 n

end A315273

/-! ## A315273.P12403972919348640116

`A242062(A167632(n+1))`
-/

namespace A315273.P12403972919348640116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A167632 (n + 1)).toNat

end

end A315273.P12403972919348640116

namespace A315273

/-- `A242062(A167632(n+1))` -/
def P12403972919348640116.Spec : Prop :=
  ∀ n, P12403972919348640116.a n = A315273 n

end A315273

/-! ## A315273.P13634895540415925465

`A242062(A008458(6*n))`
-/

namespace A315273.P13634895540415925465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A008458 (6 * n)).toNat

end

end A315273.P13634895540415925465

namespace A315273

/-- `A242062(A008458(6*n))` -/
def P13634895540415925465.Spec : Prop :=
  ∀ n, P13634895540415925465.a n = A315273 n

end A315273

/-! ## A315273.P11195685610018332824

`A242062(A008574(9*n))`
-/

namespace A315273.P11195685610018332824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A008574 (9 * n)).toNat

end

end A315273.P11195685610018332824

namespace A315273

/-- `A242062(A008574(9*n))` -/
def P11195685610018332824.Spec : Prop :=
  ∀ n, P11195685610018332824.a n = A315273 n

end A315273

/-!
# A315274: Coordination sequence Gal.6.354.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315274, the canonical program `A315274.P10788429054278481974` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315274 has offset 0).

The definition of A315274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2313 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315274.P10788429054278481974

`A301291(n)+A004396(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A315274

/-- `A301291(n)+A004396(n)` -/
def P10788429054278481974.Spec : Prop :=
  ∀ n, P10788429054278481974.a n = A315274 n

theorem P10788429054278481974.correct : P10788429054278481974.Spec := by
  intro n
  simp only [A315274]

end A315274

/-! ## A315274.P9694940778603356247

`A301298(n)+A004525(n)`
-/

namespace A315274.P9694940778603356247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A004525 n

end

end A315274.P9694940778603356247

namespace A315274

/-- `A301298(n)+A004525(n)` -/
def P9694940778603356247.Spec : Prop :=
  ∀ n, P9694940778603356247.a n = A315274 n

end A315274

/-! ## A315274.P4087865104167402123

`A313862(n)+A101455(n)`
-/

namespace A315274.P4087865104167402123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313862 n + A101455 n

end

end A315274.P4087865104167402123

namespace A315274

/-- `A313862(n)+A101455(n)` -/
def P4087865104167402123.Spec : Prop :=
  ∀ n, P4087865104167402123.a n = A315274 n

end A315274

/-! ## A315274.P14011159036171774142

`A313791(n)+A134667(n)`
-/

namespace A315274.P14011159036171774142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313791 n + A134667 n

end

end A315274.P14011159036171774142

namespace A315274

/-- `A313791(n)+A134667(n)` -/
def P14011159036171774142.Spec : Prop :=
  ∀ n, P14011159036171774142.a n = A315274 n

end A315274

/-! ## A315274.P9045965456189000772

`abs(A008592(n)-A310440(n))`
-/

namespace A315274.P9045965456189000772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310440 n|

end

end A315274.P9045965456189000772

namespace A315274

/-- `abs(A008592(n)-A310440(n))` -/
def P9045965456189000772.Spec : Prop :=
  ∀ n, P9045965456189000772.a n = A315274 n

end A315274

/-! ## A315274.P7722390497309188222

`A301298(n)+Δ[A054925(n)]`
-/

namespace A315274.P7722390497309188222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + (f1 (n + 1) - f1 n)

end

end A315274.P7722390497309188222

namespace A315274

/-- `A301298(n)+Δ[A054925(n)]` -/
def P7722390497309188222.Spec : Prop :=
  ∀ n, P7722390497309188222.a n = A315274 n

end A315274

/-! ## A315274.P6164356923661545463

`A301672(n)+2*A004525(n)`
-/

namespace A315274.P6164356923661545463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + 2 * A004525 n

end

end A315274.P6164356923661545463

namespace A315274

/-- `A301672(n)+2*A004525(n)` -/
def P6164356923661545463.Spec : Prop :=
  ∀ n, P6164356923661545463.a n = A315274 n

end A315274

/-! ## A315274.P17016015597575972590

`2*A008706(n)-A310440(n)`
-/

namespace A315274.P17016015597575972590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310440 n

end

end A315274.P17016015597575972590

namespace A315274

/-- `2*A008706(n)-A310440(n)` -/
def P17016015597575972590.Spec : Prop :=
  ∀ n, P17016015597575972590.a n = A315274 n

end A315274

/-! ## A315274.P2799504047882839027

`2*A301298(n)-A301672(n)`
-/

namespace A315274.P2799504047882839027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301298 n - A301672 n

end

end A315274.P2799504047882839027

namespace A315274

/-- `2*A301298(n)-A301672(n)` -/
def P2799504047882839027.Spec : Prop :=
  ∀ n, P2799504047882839027.a n = A315274 n

end A315274

/-! ## A315274.P8822872316600048837

`A301291(n)+A002264(2*n+1)`
-/

namespace A315274.P8822872316600048837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A002264 (2 * n + 1)

end

end A315274.P8822872316600048837

namespace A315274

/-- `A301291(n)+A002264(2*n+1)` -/
def P8822872316600048837.Spec : Prop :=
  ∀ n, P8822872316600048837.a n = A315274 n

theorem P8822872316600048837.correct : P8822872316600048837.Spec := by
  intro n
  simp only [A315274, Nat.add_sub_cancel, A315274.P8822872316600048837.a, A315274.P10788429054278481974.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A301291, A301291.P14013868135471218190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315274

/-! ## A315274.P16508902858898772135

`A298786(2*n)-A047273(n+1)`
-/

namespace A315274.P16508902858898772135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 (2 * n) - A047273 (n + 1)

end

end A315274.P16508902858898772135

namespace A315274

/-- `A298786(2*n)-A047273(n+1)` -/
def P16508902858898772135.Spec : Prop :=
  ∀ n, P16508902858898772135.a n = A315274 n

end A315274

/-! ## A315274.P7211306058446296121

`A047229(n+1)+A008576(n)+n`
-/

namespace A315274.P7211306058446296121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1) + (A008576 n + (n : ℤ))

end

end A315274.P7211306058446296121

namespace A315274

/-- `A047229(n+1)+A008576(n)+n` -/
def P7211306058446296121.Spec : Prop :=
  ∀ n, P7211306058446296121.a n = A315274 n

end A315274

/-! ## A315274.P14771976709960773852

`A004525(n)+(abs(Δ[A032765(n)]-10*n)+1)/2`
-/

namespace A315274.P14771976709960773852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 n : ℚ) + (|f1 (n + 1) - f1 n - (10 * n : ℤ)| + 1 : ℚ) / 2

end

end A315274.P14771976709960773852

namespace A315274

/-- `A004525(n)+(abs(Δ[A032765(n)]-10*n)+1)/2` -/
def P14771976709960773852.Spec : Prop :=
  ∀ n, P14771976709960773852.a n = (A315274 n : ℚ)

end A315274

/-! ## A315274.P17275231540961974791

`A004396(n)+A008574(n)+A004525(n)`
-/

namespace A315274.P17275231540961974791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A008574 n + A004525 n)

end

end A315274.P17275231540961974791

namespace A315274

/-- `A004396(n)+A008574(n)+A004525(n)` -/
def P17275231540961974791.Spec : Prop :=
  ∀ n, P17275231540961974791.a n = A315274 n

end A315274

/-! ## A315274.P10241458651636749125

`A004525(n)+A008576(n)+A005843(n)`
-/

namespace A315274.P10241458651636749125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A008576 n + A005843 n)

end

end A315274.P10241458651636749125

namespace A315274

/-- `A004525(n)+A008576(n)+A005843(n)` -/
def P10241458651636749125.Spec : Prop :=
  ∀ n, P10241458651636749125.a n = A315274 n

end A315274

/-! ## A315274.P3683626123150808950

`A313791(n)+A128834(A128834(n)+n)`
-/

namespace A315274.P3683626123150808950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313791 n + A128834 (A128834 n + (n : ℤ)).toNat

end

end A315274.P3683626123150808950

namespace A315274

/-- `A313791(n)+A128834(A128834(n)+n)` -/
def P3683626123150808950.Spec : Prop :=
  ∀ n, P3683626123150808950.a n = A315274 n

end A315274

/-! ## A315274.P5220311084940335390

`A008458(n)+A008574(n)-A310440(n)`
-/

namespace A315274.P5220311084940335390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310440 n)

end

end A315274.P5220311084940335390

namespace A315274

/-- `A008458(n)+A008574(n)-A310440(n)` -/
def P5220311084940335390.Spec : Prop :=
  ∀ n, P5220311084940335390.a n = A315274 n

end A315274

/-! ## A315274.P3067195163902948685

`A219529(n)+A301291(n)-A298024(n)`
-/

namespace A315274.P3067195163902948685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + (A301291 n - A298024 n)

end

end A315274.P3067195163902948685

namespace A315274

/-- `A219529(n)+A301291(n)-A298024(n)` -/
def P3067195163902948685.Spec : Prop :=
  ∀ n, P3067195163902948685.a n = A315274 n

end A315274

/-! ## A315274.P18020205323861655687

`A301291(n)+A301694(n)-A301298(n)`
-/

namespace A315274.P18020205323861655687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + (A301694 n - A301298 n)

end

end A315274.P18020205323861655687

namespace A315274

/-- `A301291(n)+A301694(n)-A301298(n)` -/
def P18020205323861655687.Spec : Prop :=
  ∀ n, P18020205323861655687.a n = A315274 n

end A315274

/-! ## A315274.P4649260054928758942

`A315417(n)-A128834(n-A128834(n))`
-/

namespace A315274.P4649260054928758942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315417 n - A128834 ((n : ℤ) - A128834 n).toNat

end

end A315274.P4649260054928758942

namespace A315274

/-- `A315417(n)-A128834(n-A128834(n))` -/
def P4649260054928758942.Spec : Prop :=
  ∀ n, P4649260054928758942.a n = A315274 n

end A315274

/-!
# A315275: Coordination sequence Gal.6.329.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315275, the canonical program `A315275.P16320743547030048239` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315275 has offset 0).

The definition of A315275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2312 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315275.P14568800672478091482

`A330033(n)+A314100(n)`
-/

namespace A315275.P14568800672478091482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330033 n + A314100 n

end

end A315275.P14568800672478091482

namespace A315275

/-- `A330033(n)+A314100(n)` -/
def P14568800672478091482.Spec : Prop :=
  ∀ n, P14568800672478091482.a n = A315275 n

end A315275

/-! ## A315275.P16320743547030048239

`A330025(n)+A314972(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A315275

/-- `A330025(n)+A314972(n)` -/
def P16320743547030048239.Spec : Prop :=
  ∀ n, P16320743547030048239.a n = A315275 n

theorem P16320743547030048239.correct : P16320743547030048239.Spec := by
  intro n
  simp only [A315275]

end A315275

/-! ## A315275.P9745234342552730601

`abs(A008592(n)-A310439(n))`
-/

namespace A315275.P9745234342552730601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310439 n|

end

end A315275.P9745234342552730601

namespace A315275

/-- `abs(A008592(n)-A310439(n))` -/
def P9745234342552730601.Spec : Prop :=
  ∀ n, P9745234342552730601.a n = A315275 n

end A315275

/-! ## A315275.P6291676328193909938

`2*A008706(n)-A310439(n)`
-/

namespace A315275.P6291676328193909938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310439 n

end

end A315275.P6291676328193909938

namespace A315275

/-- `2*A008706(n)-A310439(n)` -/
def P6291676328193909938.Spec : Prop :=
  ∀ n, P6291676328193909938.a n = A315275 n

end A315275

/-! ## A315275.P4932147275919329310

`A313284(n)+A253262(A253262(n)+n)`
-/

namespace A315275.P4932147275919329310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313284 n + A253262 (A253262 n + (n : ℤ)).toNat

end

end A315275.P4932147275919329310

namespace A315275

/-- `A313284(n)+A253262(A253262(n)+n)` -/
def P4932147275919329310.Spec : Prop :=
  ∀ n, P4932147275919329310.a n = A315275 n

end A315275

/-! ## A315275.P11295692853249275423

`A008458(n)+A008574(n)-A310439(n)`
-/

namespace A315275.P11295692853249275423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310439 n)

end

end A315275.P11295692853249275423

namespace A315275

/-- `A008458(n)+A008574(n)-A310439(n)` -/
def P11295692853249275423.Spec : Prop :=
  ∀ n, P11295692853249275423.a n = A315275 n

end A315275

/-! ## A315275.P7772711701480864180

`A315481(n)-A330025(n-A330025(n))`
-/

namespace A315275.P7772711701480864180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315481 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A315275.P7772711701480864180

namespace A315275

/-- `A315481(n)-A330025(n-A330025(n))` -/
def P7772711701480864180.Spec : Prop :=
  ∀ n, P7772711701480864180.a n = A315275 n

end A315275

/-! ## A315275.P14613272516102796841

`A005843(A008706(n))-A310439(n)`
-/

namespace A315275.P14613272516102796841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310439 n

end

end A315275.P14613272516102796841

namespace A315275

/-- `A005843(A008706(n))-A310439(n)` -/
def P14613272516102796841.Spec : Prop :=
  ∀ n, P14613272516102796841.a n = A315275 n

end A315275

/-! ## A315275.P1774281342177049332

`A008458(A314111(2*n))-A314161(A314111(2*n))`
-/

namespace A315275.P1774281342177049332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A314111 (2 * n)).toNat - A314161 (A314111 (2 * n)).toNat

end

end A315275.P1774281342177049332

namespace A315275

/-- `A008458(A314111(2*n))-A314161(A314111(2*n))` -/
def P1774281342177049332.Spec : Prop :=
  ∀ n, P1774281342177049332.a n = A315275 n

end A315275

/-!
# A315276: Coordination sequence Gal.5.274.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315276, there is no canonical definition to state claims against.
-/

/-! ## A315276.P10694313780690093666

`A109072(A317028(n))+A008706(n)`
-/

namespace A315276.P10694313780690093666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109072 (A317028 n).toNat + A008706 n

end

end A315276.P10694313780690093666

/-! ## A315276.P2399280965730203471

`A314758(n)+A083895(A241204(n))`
-/

namespace A315276.P2399280965730203471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314758 n + A083895 (A241204 n).toNat

end

end A315276.P2399280965730203471

/-! ## A315276.P17384298445570563573

`A313152(n)+A287385(A006645(n+2))`
-/

namespace A315276.P17384298445570563573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313152 n + A287385 (A006645 (n + 2)).toNat

end

end A315276.P17384298445570563573

/-!
# A315277: Coordination sequence Gal.6.330.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315277, the canonical program `A315277.P16077913648521142554` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315277 has offset 0).

The definition of A315277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315277.P17136812272619145998

`abs(A008592(n)-A310438(n))`
-/

namespace A315277.P17136812272619145998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310438 n|

end

end A315277.P17136812272619145998

namespace A315277

/-- `abs(A008592(n)-A310438(n))` -/
def P17136812272619145998.Spec : Prop :=
  ∀ n, P17136812272619145998.a n = A315277 n

end A315277

/-! ## A315277.P14196008159210706413

`2*A008706(n)-A310438(n)`
-/

namespace A315277.P14196008159210706413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310438 n

end

end A315277.P14196008159210706413

namespace A315277

/-- `2*A008706(n)-A310438(n)` -/
def P14196008159210706413.Spec : Prop :=
  ∀ n, P14196008159210706413.a n = A315277 n

end A315277

/-! ## A315277.P17794707164347687633

`A135042(2*n+1)-A310438(n)`
-/

namespace A315277.P17794707164347687633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A310438 n

end

end A315277.P17794707164347687633

namespace A315277

/-- `A135042(2*n+1)-A310438(n)` -/
def P17794707164347687633.Spec : Prop :=
  ∀ n, P17794707164347687633.a n = A315277 n

end A315277

/-! ## A315277.P9132931257921608009

`A000038(n)+A008592(n)-A310438(n)`
-/

namespace A315277.P9132931257921608009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A310438 n)

end

end A315277.P9132931257921608009

namespace A315277

/-- `A000038(n)+A008592(n)-A310438(n)` -/
def P9132931257921608009.Spec : Prop :=
  ∀ n, P9132931257921608009.a n = A315277 n

end A315277

/-! ## A315277.P12788731922332449899

`A008458(n)+A008574(n)-A310438(n)`
-/

namespace A315277.P12788731922332449899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310438 n)

end

end A315277.P12788731922332449899

namespace A315277

/-- `A008458(n)+A008574(n)-A310438(n)` -/
def P12788731922332449899.Spec : Prop :=
  ∀ n, P12788731922332449899.a n = A315277 n

end A315277

/-! ## A315277.P16077913648521142554

`A315340(n)-A004525(A315340(n)-A315264(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A315277

/-- `A315340(n)-A004525(A315340(n)-A315264(n))` -/
def P16077913648521142554.Spec : Prop :=
  ∀ n, P16077913648521142554.a n = A315277 n

theorem P16077913648521142554.correct : P16077913648521142554.Spec := by
  intro n
  simp only [A315277]

end A315277

/-! ## A315277.P8735250833121442555

`A005843(A008706(n))-A310438(n)`
-/

namespace A315277.P8735250833121442555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310438 n

end

end A315277.P8735250833121442555

namespace A315277

/-- `A005843(A008706(n))-A310438(n)` -/
def P8735250833121442555.Spec : Prop :=
  ∀ n, P8735250833121442555.a n = A315277 n

end A315277

/-! ## A315277.P14456268874877758726

`A065502(A008458(n))-A310438(n)`
-/

namespace A315277.P14456268874877758726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A310438 n

end

end A315277.P14456268874877758726

namespace A315277

/-- `A065502(A008458(n))-A310438(n)` -/
def P14456268874877758726.Spec : Prop :=
  ∀ n, P14456268874877758726.a n = A315277 n

end A315277

/-! ## A315277.P12150991194112540179

`A271324(A022144(n))-A310438(n)`
-/

namespace A315277.P12150991194112540179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271324 (A022144 n).toNat - A310438 n

end

end A315277.P12150991194112540179

namespace A315277

/-- `A271324(A022144(n))-A310438(n)` -/
def P12150991194112540179.Spec : Prop :=
  ∀ n, P12150991194112540179.a n = A315277 n

end A315277

/-! ## A315277.P11460330882169641565

`A004525(A315340(n)+A315264(n))`
-/

namespace A315277.P11460330882169641565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315340 n + A315264 n).toNat

end

end A315277.P11460330882169641565

namespace A315277

/-- `A004525(A315340(n)+A315264(n))` -/
def P11460330882169641565.Spec : Prop :=
  ∀ n, P11460330882169641565.a n = A315277 n

end A315277

/-!
# A315279: Coordination sequence Gal.5.331.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315279, there is no canonical definition to state claims against.
-/

/-! ## A315279.P9450064646052808612

`A313757(n)+A181674(A023490(n))`
-/

namespace A315279.P9450064646052808612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313757 n + A181674 (A023490 n).toNat

end

end A315279.P9450064646052808612

/-! ## A315279.P14683126510142223717

`A313631(n)+A073779(A048506(n))`
-/

namespace A315279.P14683126510142223717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313631 n + A073779 (A048506 n).toNat

end

end A315279.P14683126510142223717

/-! ## A315279.P336690205121036040

`A092054(3*n+1)-A007814(A244427(n+1))`
-/

namespace A315279.P336690205121036040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092054 (3 * n + 1) - A007814 (A244427 (n + 1)).toNat

end

end A315279.P336690205121036040

/-!
# A315281: Coordination sequence Gal.6.425.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315281, there is no canonical definition to state claims against.
-/

/-! ## A315281.P17286740012470358953

`A315282(n)-A352661(A091203(n+4))`
-/

namespace A315281.P17286740012470358953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315282 n - A352661 (A091203 (n + 4)).toNat

end

end A315281.P17286740012470358953

/-! ## A315281.P7950516527530275569

`xor(A185284(A000217(n)), A315282(n))`
-/

namespace A315281.P7950516527530275569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A000217 n).toNat) (A315282 n)

end

end A315281.P7950516527530275569

/-! ## A315281.P8262216374746549323

`xor(A185284(A311892(n)), A315282(n))`
-/

namespace A315281.P8262216374746549323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A311892 n).toNat) (A315282 n)

end

end A315281.P8262216374746549323

/-!
# A315282: Coordination sequence Gal.6.409.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315282, there is no canonical definition to state claims against.
-/

/-! ## A315282.P14504308193319346090

`xor(A185284(A000217(n)), A315281(n))`
-/

namespace A315282.P14504308193319346090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A000217 n).toNat) (A315281 n)

end

end A315282.P14504308193319346090

/-! ## A315282.P13329245627152298464

`xor(A185284(A311892(n)), A315281(n))`
-/

namespace A315282.P13329245627152298464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A311892 n).toNat) (A315281 n)

end

end A315282.P13329245627152298464

/-!
# A315283: Coordination sequence Gal.6.408.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315283, there is no canonical definition to state claims against.
-/

/-! ## A315283.P17210807712322050816

`or(A001222(A289780(n)), A310371(n))`
-/

namespace A315283.P17210807712322050816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A289780 n).toNat) (A310371 n)

end

end A315283.P17210807712322050816

/-! ## A315283.P10315125735699216777

`or(A001222(A289780(n)), A312506(n))`
-/

namespace A315283.P10315125735699216777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A289780 n).toNat) (A312506 n)

end

end A315283.P10315125735699216777

/-! ## A315283.P1011429375317729119

`or(A043556(A001550(n)), A311602(n))`
-/

namespace A315283.P1011429375317729119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043556 (A001550 n).toNat) (A311602 n)

end

end A315283.P1011429375317729119

/-! ## A315283.P5189943176597432557

`or(A043556(A001550(n)), A315175(n))`
-/

namespace A315283.P5189943176597432557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043556 (A001550 n).toNat) (A315175 n)

end

end A315283.P5189943176597432557

/-! ## A315283.P12715713990854940064

`or(A240883(A028336(n+1)), A310371(n))`
-/

namespace A315283.P12715713990854940064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A240883 (A028336 (n + 1)).toNat) (A310371 n)

end

end A315283.P12715713990854940064

/-!
# A315284: Coordination sequence Gal.6.364.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315284, there is no canonical definition to state claims against.
-/

/-! ## A315284.P3713481559978909368

`A310521(n)+A315475(n)-A310561(n)`
-/

namespace A315284.P3713481559978909368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310521 n + (A315475 n - A310561 n)

end

end A315284.P3713481559978909368

/-! ## A315284.P3851602968397104743

`A315277(n)+A055641(A286783(n))`
-/

namespace A315284.P3851602968397104743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315277 n + A055641 (A286783 n).toNat

end

end A315284.P3851602968397104743

/-! ## A315284.P7067453750675177243

`A301724(n)-A288622(A000108(n))`
-/

namespace A315284.P7067453750675177243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 n - A288622 (A000108 n).toNat

end

end A315284.P7067453750675177243

/-! ## A315284.P3699764717807267506

`A301724(n)-A288426(A191652(n))`
-/

namespace A315284.P3699764717807267506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 n - A288426 (A191652 n).toNat

end

end A315284.P3699764717807267506

/-! ## A315284.P6990238331997354700

`A160755(A315500(n))`
-/

namespace A315284.P6990238331997354700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A315500 n).toNat

end

end A315284.P6990238331997354700

/-!
# A315286: Coordination sequence Gal.5.277.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315286, there is no canonical definition to state claims against.
-/

/-! ## A315286.P14532069988270434952

`A286656(A003000(n))+A047395(2*n+1)`
-/

namespace A315286.P14532069988270434952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286656 (A003000 n).toNat + A047395 (2 * n + 1)

end

end A315286.P14532069988270434952

/-!
# A315288: Coordination sequence Gal.6.669.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315288, there is no canonical definition to state claims against.
-/

/-! ## A315288.P16552007038150593095

`A315549(n)-A162642(A091217(n))`
-/

namespace A315288.P16552007038150593095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315549 n - A162642 (A091217 n).toNat

end

end A315288.P16552007038150593095

/-! ## A315288.P13089149365010113028

`Δ[A325444(n+1)]+A215887(A318115(n))+5*n`
-/

namespace A315288.P13089149365010113028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A215887 (A318115 n).toNat + (5 * n : ℤ))

end

end A315288.P13089149365010113028

/-! ## A315288.P7610020203530320093

`A118458(n)+A314958(n)+A118458(A304974(n))`
-/

namespace A315288.P7610020203530320093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118458 n + (A314958 n + A118458 (A304974 n).toNat)

end

end A315288.P7610020203530320093

/-!
# A315289: Coordination sequence Gal.6.524.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315289, there is no canonical definition to state claims against.
-/

/-! ## A315289.P8850080033242015602

`A315290(n)-A308427(A032011(n))`
-/

namespace A315289.P8850080033242015602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315290 n - A308427 (A032011 n).toNat

end

end A315289.P8850080033242015602

/-!
# A315290: Coordination sequence Gal.6.525.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315290, there is no canonical definition to state claims against.
-/

/-! ## A315290.P17335757490448522488

`A315289(n)+A308427(A032011(n))`
-/

namespace A315290.P17335757490448522488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315289 n + A308427 (A032011 n).toNat

end

end A315290.P17335757490448522488

/-! ## A315290.P8240948423229983074

`A139322(n)+A133144(A133150(n+3))`
-/

namespace A315290.P8240948423229983074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139322 n + A133144 (A133150 (n + 3)).toNat

end

end A315290.P8240948423229983074

/-! ## A315290.P13366350216548074000

`record[A007920(A354164(n+1))*A100428(n+1)]`
-/

namespace A315290.P13366350216548074000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A354164 (n + 1)).toNat * A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315290.P13366350216548074000

/-! ## A315290.P1825776388482933735

`A029935(3*n+2)-A000005(A285201(n+1))`
-/

namespace A315290.P1825776388482933735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029935 (3 * n + 2) - A000005 (A285201 (n + 1)).toNat

end

end A315290.P1825776388482933735

/-!
# A315291: Coordination sequence Gal.6.427.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315291, there is no canonical definition to state claims against.
-/

/-! ## A315291.P5441395024439421396

`A057567(n+1)+A001414(A000302(n))`
-/

namespace A315291.P5441395024439421396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (n + 1) + A001414 (A000302 n).toNat

end

end A315291.P5441395024439421396

/-! ## A315291.P13857088131920909657

`A332993(n+1)+A293771(A334099(n))`
-/

namespace A315291.P13857088131920909657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332993 (n + 1) + A293771 (A334099 n).toNat

end

end A315291.P13857088131920909657

/-! ## A315291.P2503291460506302868

`A057567(n+1)+A001414(A000079(2*n))`
-/

namespace A315291.P2503291460506302868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (n + 1) + A001414 (A000079 (2 * n)).toNat

end

end A315291.P2503291460506302868

/-! ## A315291.P7627119871257970467

`A047571(3*n+1)+A000005(A032011(n+1))`
-/

namespace A315291.P7627119871257970467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047571 (3 * n + 1) + A000005 (A032011 (n + 1)).toNat

end

end A315291.P7627119871257970467

/-!
# A315292: Coordination sequence Gal.6.410.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315292, there is no canonical definition to state claims against.
-/

/-! ## A315292.P14822447676395421841

`Δ[A000267(A189979(n+1)²)]`
-/

namespace A315292.P14822447676395421841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A189979 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A315292.P14822447676395421841

/-! ## A315292.P17935532337630499453

`Δ[A055086(A189979(n+1)²)]`
-/

namespace A315292.P17935532337630499453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A189979 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A315292.P17935532337630499453

/-! ## A315292.P13531362173340747529

`A315033(n)+A244895(A099463(n))`
-/

namespace A315292.P13531362173340747529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315033 n + A244895 (A099463 n).toNat

end

end A315292.P13531362173340747529

/-! ## A315292.P15081900913003259290

`A016873(n)-A330348(A002961(n+1))`
-/

namespace A315292.P15081900913003259290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n - A330348 (A002961 (n + 1)).toNat

end

end A315292.P15081900913003259290

/-! ## A315292.P1114708362589797816

`∑[A000005(A297736(n+1))]+2*A292257(n+1)`
-/

namespace A315292.P1114708362589797816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A297736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A292257 (n + 1)

end

end A315292.P1114708362589797816

/-!
# A315295: Coordination sequence Gal.6.428.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315295, there is no canonical definition to state claims against.
-/

/-! ## A315295.P12618191979101254567

`A072670(A027893(n+1))+A016813(n)`
-/

namespace A315295.P12618191979101254567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (A027893 (n + 1)).toNat + A016813 n

end

end A315295.P12618191979101254567

/-! ## A315295.P12810598839482121057

`A250120(n)-A157658(A193228(n+1))`
-/

namespace A315295.P12810598839482121057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A157658 (A193228 (n + 1)).toNat

end

end A315295.P12810598839482121057

/-! ## A315295.P13209212769137076314

`A311926(n)+A001221(A061777(3*n))`
-/

namespace A315295.P13209212769137076314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311926 n + A001221 (A061777 (3 * n)).toNat

end

end A315295.P13209212769137076314

/-! ## A315295.P14317906320262354160

`A250120(n)+A049347(A006504(2*(n+1)))`
-/

namespace A315295.P14317906320262354160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A049347 (A006504 (2 * (n + 1))).toNat

end

end A315295.P14317906320262354160

/-! ## A315295.P16526315244924543311

`A244895(A004110(n))+A047486(3*n+1)`
-/

namespace A315295.P16526315244924543311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A004110 n).toNat + A047486 (3 * n + 1)

end

end A315295.P16526315244924543311

/-!
# A315296: Coordination sequence Gal.6.463.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315296, there is no canonical definition to state claims against.
-/

/-! ## A315296.P4847347902578163638

`A352513(A024490(n+2))+A250120(n)`
-/

namespace A315296.P4847347902578163638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A024490 (n + 2)).toNat + A250120 n

end

end A315296.P4847347902578163638

/-! ## A315296.P8690417948921950913

`A352513(A024490(n+2))+A047363(2*n+1)+A004277(n)`
-/

namespace A315296.P8690417948921950913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A024490 (n + 2)).toNat + (A047363 (2 * n + 1) + A004277 n)

end

end A315296.P8690417948921950913

/-! ## A315296.P4517228418759063332

`A352513(A024490(n+2))+A022144(n)-A047486(2*n+1)`
-/

namespace A315296.P4517228418759063332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A024490 (n + 2)).toNat + (A022144 n - A047486 (2 * n + 1))

end

end A315296.P4517228418759063332

/-! ## A315296.P7254384380300193062

`A352513(A024490(n+2))+A022144(n)+1-A047412(2*(n+1))`
-/

namespace A315296.P7254384380300193062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A024490 (n + 2)).toNat + (A022144 n + 1 - A047412 (2 * (n + 1)))

end

end A315296.P7254384380300193062

/-! ## A315296.P4841239588914992514

`A352513(A024490(n+2))+A008574(2*n)-A047486(2*n+1)`
-/

namespace A315296.P4841239588914992514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A024490 (n + 2)).toNat + (A008574 (2 * n) - A047486 (2 * n + 1))

end

end A315296.P4841239588914992514

/-!
# A315297: Coordination sequence Gal.6.578.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315297, there is no canonical definition to state claims against.
-/

/-! ## A315297.P8611653092753042530

`A047263(A004525(n+1))+A314841(n)-A056594(A190861(n))`
-/

namespace A315297.P8611653092753042530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A004525 (n + 1)).toNat + (A314841 n - A056594 (A190861 n).toNat)

end

end A315297.P8611653092753042530

/-!
# A315298: Coordination sequence Gal.6.411.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315298, there is no canonical definition to state claims against.
-/

/-! ## A315298.P812592827001498993

`A315355(n)-A325178(A002573(n+2))`
-/

namespace A315298.P812592827001498993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315355 n - A325178 (A002573 (n + 2)).toNat

end

end A315298.P812592827001498993

/-! ## A315298.P7949654240022216483

`A262900(A022144(2*n))+A262900(n!)+A250120(n)`
-/

namespace A315298.P7949654240022216483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262900 (A022144 (2 * n)).toNat + (A262900 (Nat.factorial n) + A250120 n)

end

end A315298.P7949654240022216483

