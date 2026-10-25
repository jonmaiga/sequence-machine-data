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
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A063700: Numbers k such that sigma(k + d(k)) = sigma(k) + d(k), where sigma() = A000203(), d() = A000005().

The programs for A063700, there is no canonical definition to state claims against.
-/

/-! ## A063700.P2635117881368919196

`eq[A007318(A066882(n)), A085064(n+1)]`
-/

namespace A063700.P2635117881368919196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A066882 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085064 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063700.P2635117881368919196

/-! ## A063700.P5094067197818387770

`∩[A072282(n+1), A316857(n+1)]`
-/

namespace A063700.P5094067197818387770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063700.P5094067197818387770

/-! ## A063700.P6331444304300026559

`∩[A072282(n+1), A316903(n+1)]`
-/

namespace A063700.P6331444304300026559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063700.P6331444304300026559

/-! ## A063700.P3677975070516866642

`∩[A072282(n+1), A322903(n+1)]`
-/

namespace A063700.P3677975070516866642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063700.P3677975070516866642

/-! ## A063700.P16520278514684004921

`∩[A072282(n+1), A305103(n+1)]`
-/

namespace A063700.P16520278514684004921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063700.P16520278514684004921

/-!
# A063702: Composite numbers k such that phi(k + d(k)) = phi(k) + d(k), where phi() = A000010(), d() = A000005().

The programs for A063702, there is no canonical definition to state claims against.
-/

/-! ## A063702.P15612987846126325310

`∩[2*n, A063693(n+1)]`
-/

namespace A063702.P15612987846126325310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063702.P15612987846126325310

/-! ## A063702.P2627848534847503415

`filter[A063693(n+1), A005171(#)]`
-/

namespace A063702.P2627848534847503415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A063702.P2627848534847503415

/-! ## A063702.P6530338640402688368

`filter[A063693(n+1), A066247(#)]`
-/

namespace A063702.P6530338640402688368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A063702.P6530338640402688368

/-! ## A063702.P10905910131532631827

`filter[A063693(n+1), A202238(#)]`
-/

namespace A063702.P10905910131532631827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A063702.P10905910131532631827

/-! ## A063702.P15621090525639225917

`filter[A063693(n+1), A283265(#)]`
-/

namespace A063702.P15621090525639225917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A063702.P15621090525639225917

/-!
# A063703: Cyclotomic polynomials Phi_n at x=phi, floored down (where phi = tau = (sqrt(5)+1)/2).

The programs for A063703, there is no canonical definition to state claims against.
-/

/-! ## A063703.P5940654544366937273

`A063707(n)-A145568(A127524(n+1))`
-/

namespace A063703.P5940654544366937273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063707 n - A145568 (A127524 (n + 1)).toNat

end

end A063703.P5940654544366937273

/-! ## A063703.P5461934063441975934

`A063707(n)+A057428(A051258(n))`
-/

namespace A063703.P5461934063441975934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063707 n + A057428 (A051258 n).toNat

end

end A063703.P5461934063441975934

/-! ## A063703.P4411021632412303398

`A063707(n)-A334946(A064233(n+1))`
-/

namespace A063703.P4411021632412303398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063707 n - A334946 (A064233 (n + 1)).toNat

end

end A063703.P4411021632412303398

/-!
# A063704: Cyclotomic polynomials Phi_n at x=phi divided by sqrt(5) and floored down (where phi = tau = (sqrt(5)+1)/2).

The programs for A063704, there is no canonical definition to state claims against.
-/

/-! ## A063704.P1444330744875806399

`A063708(n)-1`
-/

namespace A063704.P1444330744875806399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063708 n - 1

end

end A063704.P1444330744875806399

/-! ## A063704.P13352388966280778611

`A339792(A283711(n+1))+A063708(n)`
-/

namespace A063704.P13352388966280778611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339792 (A283711 (n + 1)).toNat + A063708 n

end

end A063704.P13352388966280778611

/-! ## A063704.P4748133581306020062

`A213127(A038712(2*n+1))+A063708(n)`
-/

namespace A063704.P4748133581306020062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213127 (A038712 (2 * n + 1)).toNat + A063708 n

end

end A063704.P4748133581306020062

/-! ## A063704.P9681907480000498174

`A114592(A005384(n+1))+A063708(n)`
-/

namespace A063704.P9681907480000498174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A005384 (n + 1)).toNat + A063708 n

end

end A063704.P9681907480000498174

/-! ## A063704.P5086471953774022095

`A114592(A005382(n+1))+A063708(n)`
-/

namespace A063704.P5086471953774022095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A005382 (n + 1)).toNat + A063708 n

end

end A063704.P5086471953774022095

/-!
# A063706: Cyclotomic polynomials Phi_n at x=phi, divided by sqrt(5) and rounded to nearest integer (where phi = tau = (sqrt(5)+1)/2).

The programs for A063706, there is no canonical definition to state claims against.
-/

/-! ## A063706.P18255123346937352622

`A063708(n)-A087371(A088243(5*n+1))`
-/

namespace A063706.P18255123346937352622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063708 n - A087371 (A088243 (5 * n + 1)).toNat

end

end A063706.P18255123346937352622

/-!
# A063707: Cyclotomic polynomials Phi_n at x=phi, ceiled up (where phi = tau = (sqrt(5)+1)/2).

The programs for A063707, there is no canonical definition to state claims against.
-/

/-! ## A063707.P679785864433643806

`A162519(A280742(n+2))+A063703(n)`
-/

namespace A063707.P679785864433643806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162519 (A280742 (n + 2)).toNat + A063703 n

end

end A063707.P679785864433643806

/-! ## A063707.P4440319885513363277

`A162519(A311581(3*n+1))+A063703(n)`
-/

namespace A063707.P4440319885513363277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162519 (A311581 (3 * n + 1)).toNat + A063703 n

end

end A063707.P4440319885513363277

/-! ## A063707.P17939053927559190212

`A162519(eq[1, A359546(n+1)])+A063703(n)`
-/

namespace A063707.P17939053927559190212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A063703 n

end

end A063707.P17939053927559190212

/-! ## A063707.P10847737353912364055

`A162519(A001969(2*(n+1))+1)+A063703(n)`
-/

namespace A063707.P10847737353912364055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162519 (A001969 (2 * (n + 1)) + 1).toNat + A063703 n

end

end A063707.P10847737353912364055

/-! ## A063707.P7258980088636755392

`A162519(∑[n+1])+A063703(n)`
-/

namespace A063707.P7258980088636755392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162519 (∑ j ∈ Finset.range (n + 1), f1 j) + A063703 n

end

end A063707.P7258980088636755392

/-!
# A063708: Cyclotomic polynomials Phi_n at x=phi divided by sqrt(5) and ceiled up (where phi = tau = (sqrt(5)+1)/2).

The programs for A063708, there is no canonical definition to state claims against.
-/

/-! ## A063708.P16063397690828143521

`A063704(n)+1`
-/

namespace A063708.P16063397690828143521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063704 n + 1

end

end A063708.P16063397690828143521

/-! ## A063708.P3249552506481771566

`A199343(A063704(n))`
-/

namespace A063708.P3249552506481771566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A063704 n).toNat

end

end A063708.P3249552506481771566

/-! ## A063708.P2531732260956242749

`A028310(A063704(n)-A057428(n))`
-/

namespace A063708.P2531732260956242749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A063704 n - A057428 n).toNat

end

end A063708.P2531732260956242749

/-! ## A063708.P3558936159167104630

`A194964(A063707(n))`
-/

namespace A063708.P3558936159167104630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (A063707 n).toNat

end

end A063708.P3558936159167104630

/-! ## A063708.P4175861760868524667

`A008619(2*A063704(n))`
-/

namespace A063708.P4175861760868524667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A063704 n).toNat

end

end A063708.P4175861760868524667

/-!
# A063709: Remainder when n^n is divided by n!.

The programs for A063709, the canonical program `A063709.P9541028602343683894` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063709 has offset 0).

The definition of A063709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063709.P9541028602343683894

`(n^n)%n!`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063709

/-- `(n^n)%n!` -/
def P9541028602343683894.Spec : Prop :=
  ∀ n, (P9541028602343683894.a n : ℤ) = A063709 n

theorem P9541028602343683894.correct : P9541028602343683894.Spec := by
  intro n
  simp only [A063709]

end A063709

/-! ## A063709.P2898908070829546349

`A000312(n)%-n!`
-/

namespace A063709.P2898908070829546349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000312 n) (-(Nat.factorial n : ℤ))

end

end A063709.P2898908070829546349

namespace A063709

/-- `A000312(n)%-n!` -/
def P2898908070829546349.Spec : Prop :=
  ∀ n, P2898908070829546349.a n = A063709 n

end A063709

/-! ## A063709.P1834111320278343477

`(sqrt(n)^(2*n))%A000142(n)`
-/

namespace A063709.P1834111320278343477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) ^ (2 * n))) (A000142 n)

end

end A063709.P1834111320278343477

namespace A063709

/-- `(sqrt(n)^(2*n))%A000142(n)` -/
def P1834111320278343477.Spec : Prop :=
  ∀ n, P1834111320278343477.a n = A063709 n

end A063709

/-! ## A063709.P7156798281602530953

`(A028310(n)^n)%(∏[round(sqrt(n²+1))]%(3*27^n))`
-/

namespace A063709.P7156798281602530953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n ^ n) (Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (3 * 27 ^ n : ℤ))

end

end A063709.P7156798281602530953

namespace A063709

/-- `(A028310(n)^n)%(∏[round(sqrt(n²+1))]%(3*27^n))` -/
def P7156798281602530953.Spec : Prop :=
  ∀ n, P7156798281602530953.a n = A063709 n

end A063709

/-! ## A063709.P15720232937565530701

`A000312(n)%A133942(n)`
-/

namespace A063709.P15720232937565530701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000312 n) (A133942 n)

end

end A063709.P15720232937565530701

namespace A063709

/-- `A000312(n)%A133942(n)` -/
def P15720232937565530701.Spec : Prop :=
  ∀ n, P15720232937565530701.a n = A063709 n

end A063709

/-! ## A063709.P4066499063630885165

`A036679(n)%-A000142(n)`
-/

namespace A063709.P4066499063630885165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036679 n) (-A000142 n)

end

end A063709.P4066499063630885165

namespace A063709

/-- `A036679(n)%-A000142(n)` -/
def P4066499063630885165.Spec : Prop :=
  ∀ n, P4066499063630885165.a n = A063709 n

end A063709

/-! ## A063709.P15657770143294240545

`A309472(n)%-A000142(n)`
-/

namespace A063709.P15657770143294240545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309472 n) (-A000142 n)

end

end A063709.P15657770143294240545

namespace A063709

/-- `A309472(n)%-A000142(n)` -/
def P15657770143294240545.Spec : Prop :=
  ∀ n, P15657770143294240545.a n = A063709 n

end A063709

/-! ## A063709.P9630916036821043671

`A000312(n)-A000142(n)*A055775(n)`
-/

namespace A063709.P9630916036821043671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n - A000142 n * A055775 n

end

end A063709.P9630916036821043671

namespace A063709

/-- `A000312(n)-A000142(n)*A055775(n)` -/
def P9630916036821043671.Spec : Prop :=
  ∀ n, P9630916036821043671.a n = A063709 n

end A063709

/-!
# A063710: Numbers k such that phi(sigma(k)+k) = sigma(k-phi(k)), where phi is A000010 and sigma is A000203.

The programs for A063710, there is no canonical definition to state claims against.
-/

/-! ## A063710.P2109778342832140864

`A196330((n+2)*(n+3))`
-/

namespace A063710.P2109778342832140864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196330 ((n + 2) * (n + 3))

end

end A063710.P2109778342832140864

/-! ## A063710.P3969791953342957493

`∑[record[A195989(A008713(n))]]`
-/

namespace A063710.P3969791953342957493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195989 (A008713 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063710.P3969791953342957493

/-!
# A063711: Table of bits required for product of n- and k-bit nonnegative numbers read by antidiagonals.

The programs for A063711, the canonical program `A063711.P1024451208163588555` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063711 has offset 0).

The definition of A063711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063711.P8351184540442442542

`ceil(log2(2-A176224(n)))`
-/

namespace A063711.P8351184540442442542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (2 - A176224 n : ℝ)⌉

end

end A063711.P8351184540442442542

namespace A063711

/-- `ceil(log2(2-A176224(n)))` -/
def P8351184540442442542.Spec : Prop :=
  ∀ n, P8351184540442442542.a n = A063711 n

end A063711

/-! ## A063711.P1024451208163588555

`floor(A068606(n)/A077028(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A063711

/-- `floor(A068606(n)/A077028(n))` -/
def P1024451208163588555.Spec : Prop :=
  ∀ n, P1024451208163588555.a n = A063711 n

theorem P1024451208163588555.correct : P1024451208163588555.Spec := by
  intro n
  simp only [A063711]

end A063711

/-! ## A063711.P1895822741287570471

`floor(A068606(n)/(A004247(n)+1))`
-/

namespace A063711.P1895822741287570471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A068606 n : ℚ) / (A004247 n + 1 : ℚ)⌋

end

end A063711.P1895822741287570471

namespace A063711

/-- `floor(A068606(n)/(A004247(n)+1))` -/
def P1895822741287570471.Spec : Prop :=
  ∀ n, P1895822741287570471.a n = A063711 n

theorem P1895822741287570471.correct : P1895822741287570471.Spec := by
  intro n
  simp only [A063711, Nat.add_sub_cancel, A063711.P1895822741287570471.a, A063711.P1024451208163588555.a, A004247, A004247.P14233945955703425283.a, A068606, A068606.P5825538352083223845.a, A077028, A077028.P11682596430163569480.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A025581, A025581.P420762180635059694.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A063711

/-! ## A063711.P16663036762962145212

`A003056(n)-C(A003056(n), A007318(n))`
-/

namespace A063711.P16663036762962145212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - (Nat.choose (A003056 n).toNat (A007318 n).toNat : ℤ)

end

end A063711.P16663036762962145212

namespace A063711

/-- `A003056(n)-C(A003056(n), A007318(n))` -/
def P16663036762962145212.Spec : Prop :=
  ∀ n, P16663036762962145212.a n = A063711 n

end A063711

/-! ## A063711.P8449755278308952358

`floor(A123578(n)-A123578(n)/A007318(n))`
-/

namespace A063711.P8449755278308952358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A123578 n : ℚ) - (A123578 n : ℚ) / (A007318 n : ℚ)⌋

end

end A063711.P8449755278308952358

namespace A063711

/-- `floor(A123578(n)-A123578(n)/A007318(n))` -/
def P8449755278308952358.Spec : Prop :=
  ∀ n, P8449755278308952358.a n = A063711 n

end A063711

/-! ## A063711.P9194143179775669780

`floor(A014473(n)/A007318(n)*A123578(n))`
-/

namespace A063711.P9194143179775669780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014473 n : ℚ) / (A007318 n : ℚ) * (A123578 n : ℚ)⌋

end

end A063711.P9194143179775669780

namespace A063711

/-- `floor(A014473(n)/A007318(n)*A123578(n))` -/
def P9194143179775669780.Spec : Prop :=
  ∀ n, P9194143179775669780.a n = A063711 n

end A063711

/-! ## A063711.P14764393525428332182

`floor(A002024(n+1)/A007318(n)*A014473(n))`
-/

namespace A063711.P14764393525428332182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002024 (n + 1) : ℚ) / (A007318 n : ℚ) * (A014473 n : ℚ)⌋

end

end A063711.P14764393525428332182

namespace A063711

/-- `floor(A002024(n+1)/A007318(n)*A014473(n))` -/
def P14764393525428332182.Spec : Prop :=
  ∀ n, P14764393525428332182.a n = A063711 n

end A063711

/-! ## A063711.P4857796976404243501

`floor(acot(A077028(n))*A176282(n))`
-/

namespace A063711.P4857796976404243501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A077028 n : ℝ) * (A176282 n : ℝ)⌋

end

end A063711.P4857796976404243501

namespace A063711

/-- `floor(acot(A077028(n))*A176282(n))` -/
def P4857796976404243501.Spec : Prop :=
  ∀ n, P4857796976404243501.a n = A063711 n

end A063711

/-! ## A063711.P8561250847003667331

`log2(gcd(A117401(n), A137688(n)))`
-/

namespace A063711.P8561250847003667331
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A117401 n) (A137688 n) : ℝ)

end

end A063711.P8561250847003667331

namespace A063711

/-- `log2(gcd(A117401(n), A137688(n)))` -/
def P8561250847003667331.Spec : Prop :=
  ∀ n, P8561250847003667331.a n = (A063711 n : ℝ)

end A063711

/-! ## A063711.P14657375314746419482

`A007456(2-A176224(n))`
-/

namespace A063711.P14657375314746419482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (2 - A176224 n).toNat

end

end A063711.P14657375314746419482

namespace A063711

/-- `A007456(2-A176224(n))` -/
def P14657375314746419482.Spec : Prop :=
  ∀ n, P14657375314746419482.a n = A063711 n

end A063711

/-! ## A063711.P1390001130206597922

`A029837(2-A176224(n))`
-/

namespace A063711.P1390001130206597922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (2 - A176224 n).toNat

end

end A063711.P1390001130206597922

namespace A063711

/-- `A029837(2-A176224(n))` -/
def P1390001130206597922.Spec : Prop :=
  ∀ n, P1390001130206597922.a n = A063711 n

end A063711

/-!
# A063712: Table of bits required for product of n- and k-bit positive numbers read by antidiagonals.

The programs for A063712, the canonical program `A063712.P7045674916285883197` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063712 has offset 1).

The definition of A063712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063712.P15754555665505019615

`A154325(n)+∑[char[∑[n+1]]]`
-/

namespace A063712.P15754555665505019615
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A063712.P15754555665505019615

namespace A063712

/-- `A154325(n)+∑[char[∑[n+1]]]` -/
def P15754555665505019615.Spec : Prop :=
  ∀ n, P15754555665505019615.a n = A063712 (n + 1)

end A063712

/-! ## A063712.P4023109451320592208

`A123578(n)+1-char[∑[n+2]]`
-/

namespace A063712.P4023109451320592208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n + 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A063712.P4023109451320592208

namespace A063712

/-- `A123578(n)+1-char[∑[n+2]]` -/
def P4023109451320592208.Spec : Prop :=
  ∀ n, P4023109451320592208.a n = A063712 (n + 1)

end A063712

/-! ## A063712.P5745828081131471156

`comp[C(n, 2)]-n-A103452(n)²`
-/

namespace A063712.P5745828081131471156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - A103452 n ^ 2

end

end A063712.P5745828081131471156

namespace A063712

/-- `comp[C(n, 2)]-n-A103452(n)²` -/
def P5745828081131471156.Spec : Prop :=
  ∀ n, P5745828081131471156.a n = A063712 (n + 1)

end A063712

/-! ## A063712.P4194754247831351019

`A132071(n)-A014473(n)`
-/

namespace A063712.P4194754247831351019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132071 n - A014473 n

end

end A063712.P4194754247831351019

namespace A063712

/-- `A132071(n)-A014473(n)` -/
def P4194754247831351019.Spec : Prop :=
  ∀ n, P4194754247831351019.a n = A063712 (n + 1)

theorem P4194754247831351019.correct : P4194754247831351019.Spec := by
  intro n
  simp only [A063712, Nat.add_sub_cancel, A063712.P4194754247831351019.a, A063712.P7045674916285883197.a, A002024, A002024.P11700297927830783882.a, A014473, A014473.P9301799580602651200.a, A023532, A023532.P12646681522116481213.a, A132071, A132071.P11945813341508066537.a, A007318, A007318.P302227728145965961.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A063712

/-! ## A063712.P16219213873118806618

`A132071(n)+1-A007318(n)`
-/

namespace A063712.P16219213873118806618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132071 n + (1 - A007318 n)

end

end A063712.P16219213873118806618

namespace A063712

/-- `A132071(n)+1-A007318(n)` -/
def P16219213873118806618.Spec : Prop :=
  ∀ n, P16219213873118806618.a n = A063712 (n + 1)

theorem P16219213873118806618.correct : P16219213873118806618.Spec := by
  intro n
  simp only [A063712, Nat.add_sub_cancel, A063712.P16219213873118806618.a, A063712.P7045674916285883197.a, A002024, A002024.P11700297927830783882.a, A007318, A007318.P302227728145965961.a, A023532, A023532.P12646681522116481213.a, A132071, A132071.P11945813341508066537.a, A014473, A014473.P9301799580602651200.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A063712

/-! ## A063712.P16562238948686236831

`A003057(n+2)-A103451(n)`
-/

namespace A063712.P16562238948686236831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A103451 n

end

end A063712.P16562238948686236831

namespace A063712

/-- `A003057(n+2)-A103451(n)` -/
def P16562238948686236831.Spec : Prop :=
  ∀ n, P16562238948686236831.a n = A063712 (n + 1)

end A063712

/-! ## A063712.P5795505399192609037

`A003056(n)+2-A103451(n)`
-/

namespace A063712.P5795505399192609037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (2 - A103451 n)

end

end A063712.P5795505399192609037

namespace A063712

/-- `A003056(n)+2-A103451(n)` -/
def P5795505399192609037.Spec : Prop :=
  ∀ n, P5795505399192609037.a n = A063712 (n + 1)

end A063712

/-! ## A063712.P2731305670012999935

`ceil(A003056(n)+atan(A007318(n)))`
-/

namespace A063712.P2731305670012999935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003056 n : ℝ) + Real.arctan (A007318 n : ℝ)⌉

end

end A063712.P2731305670012999935

namespace A063712

/-- `ceil(A003056(n)+atan(A007318(n)))` -/
def P2731305670012999935.Spec : Prop :=
  ∀ n, P2731305670012999935.a n = A063712 (n + 1)

end A063712

/-! ## A063712.P16337829315047959700

`A003056(n)+2-A103452(n)²`
-/

namespace A063712.P16337829315047959700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (2 - A103452 n ^ 2)

end

end A063712.P16337829315047959700

namespace A063712

/-- `A003056(n)+2-A103452(n)²` -/
def P16337829315047959700.Spec : Prop :=
  ∀ n, P16337829315047959700.a n = A063712 (n + 1)

end A063712

/-! ## A063712.P13474840280220549386

`A002024(n+1)+1-A103451(n)`
-/

namespace A063712.P13474840280220549386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (1 - A103451 n)

end

end A063712.P13474840280220549386

namespace A063712

/-- `A002024(n+1)+1-A103451(n)` -/
def P13474840280220549386.Spec : Prop :=
  ∀ n, P13474840280220549386.a n = A063712 (n + 1)

end A063712

/-! ## A063712.P9863471462361129215

`A002024(n+1)+1-A103452(n)²`
-/

namespace A063712.P9863471462361129215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (1 - A103452 n ^ 2)

end

end A063712.P9863471462361129215

namespace A063712

/-- `A002024(n+1)+1-A103452(n)²` -/
def P9863471462361129215.Spec : Prop :=
  ∀ n, P9863471462361129215.a n = A063712 (n + 1)

end A063712

/-! ## A063712.P9786845952346524438

`A003057(n+2)-floor(1/A007318(n))`
-/

namespace A063712.P9786845952346524438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - ⌊1 / (A007318 n : ℚ)⌋

end

end A063712.P9786845952346524438

namespace A063712

/-- `A003057(n+2)-floor(1/A007318(n))` -/
def P9786845952346524438.Spec : Prop :=
  ∀ n, P9786845952346524438.a n = A063712 (n + 1)

end A063712

/-! ## A063712.P4043547730971854660

`A002024(n+1)+char[lt[0, A014473(n)]]`
-/

namespace A063712.P4043547730971854660
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A063712.P4043547730971854660

namespace A063712

/-- `A002024(n+1)+char[lt[0, A014473(n)]]` -/
def P4043547730971854660.Spec : Prop :=
  ∀ n, P4043547730971854660.a n = A063712 (n + 1)

end A063712

/-! ## A063712.P16370699755213069284

`A002024(n+1)+char[lt[1, A007318(n)]]`
-/

namespace A063712.P16370699755213069284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A063712.P16370699755213069284

namespace A063712

/-- `A002024(n+1)+char[lt[1, A007318(n)]]` -/
def P16370699755213069284.Spec : Prop :=
  ∀ n, P16370699755213069284.a n = A063712 (n + 1)

end A063712

/-! ## A063712.P16829156827660617858

`A003056(n)+char[lt[2, A002260(n+2)]]+1`
-/

namespace A063712.P16829156827660617858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A063712.P16829156827660617858

namespace A063712

/-- `A003056(n)+char[lt[2, A002260(n+2)]]+1` -/
def P16829156827660617858.Spec : Prop :=
  ∀ n, P16829156827660617858.a n = A063712 (n + 1)

end A063712

/-! ## A063712.P7357145796221893459

`A057427(A103822(n))+A002024(n+1)`
-/

namespace A063712.P7357145796221893459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A103822 n).toNat + A002024 (n + 1)

end

end A063712.P7357145796221893459

namespace A063712

/-- `A057427(A103822(n))+A002024(n+1)` -/
def P7357145796221893459.Spec : Prop :=
  ∀ n, P7357145796221893459.a n = A063712 (n + 1)

end A063712

/-! ## A063712.P9270754047224880642

`A204016(A106255(n+1))+A002024(n+1)`
-/

namespace A063712.P9270754047224880642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204016 (A106255 (n + 1)).toNat + A002024 (n + 1)

end

end A063712.P9270754047224880642

namespace A063712

/-- `A204016(A106255(n+1))+A002024(n+1)` -/
def P9270754047224880642.Spec : Prop :=
  ∀ n, P9270754047224880642.a n = A063712 (n + 1)

end A063712

/-! ## A063712.P7045674916285883197

`A023532(n-A023532(n))+A002024(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063712

/-- `A023532(n-A023532(n))+A002024(n+1)` -/
def P7045674916285883197.Spec : Prop :=
  ∀ n, P7045674916285883197.a n = A063712 (n + 1)

theorem P7045674916285883197.correct : P7045674916285883197.Spec := by
  intro n
  simp only [A063712, Nat.add_sub_cancel]

end A063712

/-! ## A063712.P8717807791770599972

`A002260(n+1)+A004736(n+1)-A103451(n)`
-/

namespace A063712.P8717807791770599972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A004736 (n + 1) - A103451 n)

end

end A063712.P8717807791770599972

namespace A063712

/-- `A002260(n+1)+A004736(n+1)-A103451(n)` -/
def P8717807791770599972.Spec : Prop :=
  ∀ n, P8717807791770599972.a n = A063712 (n + 1)

end A063712

/-! ## A063712.P4549121536879683506

`(A056942(n)+A003056(n+1))/A003056(n+1)`
-/

namespace A063712.P4549121536879683506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056942 n + A003056 (n + 1) : ℚ) / (A003056 (n + 1) : ℚ)

end

end A063712.P4549121536879683506

namespace A063712

/-- `(A056942(n)+A003056(n+1))/A003056(n+1)` -/
def P4549121536879683506.Spec : Prop :=
  ∀ n, P4549121536879683506.a n = (A063712 (n + 1) : ℚ)

end A063712

/-!
# A063713: Numbers n such that there exist primes p, q, r with n*2 = p - r = r + q (values of r are given in A063714).

The programs for A063713, there is no canonical definition to state claims against.
-/

/-! ## A063713.P10260509575200944318

`lt[0, A275768(2*n)]`
-/

namespace A063713.P10260509575200944318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A063713.P10260509575200944318

/-! ## A063713.P16866240655565315172

`lt[1-A275768(A004277(n)), 1]`
-/

namespace A063713.P16866240655565315172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A275768 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A063713.P16866240655565315172

/-! ## A063713.P14741281265248044001

`eq[1, gcd(A002385(n+1), A275768(2*n))]`
-/

namespace A063713.P14741281265248044001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002385 (n + 1)) (A275768 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063713.P14741281265248044001

/-! ## A063713.P12383610078935479454

`eq[A000007(A275768(2*n)), A000038(n)]`
-/

namespace A063713.P12383610078935479454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A275768 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063713.P12383610078935479454

/-! ## A063713.P17254161633980739810

`eq[A000007(A275768(2*n)), A000007(n+1)]`
-/

namespace A063713.P17254161633980739810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A275768 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063713.P17254161633980739810

/-! ## A063713.P1591997249789524304

`eq[A000038(A275768(2*n)), A000038(n+1)]`
-/

namespace A063713.P1591997249789524304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A275768 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063713.P1591997249789524304

/-! ## A063713.P13898436758503668358

`eq[A000038(2*n)², A000038(A275768(2*n))]`
-/

namespace A063713.P13898436758503668358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A275768 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063713.P13898436758503668358

/-! ## A063713.P15137476369129393127

`eq[2, A000122(A275768(2*n)²)]`
-/

namespace A063713.P15137476369129393127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A275768 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063713.P15137476369129393127

/-! ## A063713.P8306710983957918266

`comp[A284928(n+1)]`
-/

namespace A063713.P8306710983957918266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A063713.P8306710983957918266

/-!
# A063715: Number of solutions (r,u,s,t) in positive integers to the system of equations 1/r + 1/u = 1/n, 1/s + 1/t = 1/u.

The programs for A063715, there is no canonical definition to state claims against.
-/

/-! ## A063715.P14470293800638016327

`2*A063716(n+1)-A048691(n+1)`
-/

namespace A063715.P14470293800638016327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063716 (n + 1) - A048691 (n + 1)

end

end A063715.P14470293800638016327

/-! ## A063715.P11755395427014625243

`A005408(A063716(n+1)-A018892(n+1))`
-/

namespace A063715.P11755395427014625243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A063716 (n + 1) - A018892 (n + 1)).toNat

end

end A063715.P11755395427014625243

/-! ## A063715.P6907980631459796457

`A005843(A063716(n+1))-A048691(n+1)`
-/

namespace A063715.P6907980631459796457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A063716 (n + 1)).toNat - A048691 (n + 1)

end

end A063715.P6907980631459796457

/-! ## A063715.P2057141888996314617

`A004273(A063716(n+1)-A063647(n+1))`
-/

namespace A063715.P2057141888996314617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A063716 (n + 1) - A063647 (n + 1)).toNat

end

end A063715.P2057141888996314617

/-! ## A063715.P13620363826626684756

`A144396(A063716(n+1)-A018892(n+1))`
-/

namespace A063715.P13620363826626684756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A063716 (n + 1) - A018892 (n + 1)).toNat

end

end A063715.P13620363826626684756

/-! ## A063715.P15365347497762720416

`A005843(A063716(n+1))-A000005((n+1)²)`
-/

namespace A063715.P15365347497762720416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A063716 (n + 1)).toNat - A000005 ((n + 1) ^ 2)

end

end A063715.P15365347497762720416

/-! ## A063715.P6376619341110864549

`∑{d}[(n+1)², A048691(n+1+#)]`
-/

namespace A063715.P6376619341110864549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 (n + 1 + d)

end

end A063715.P6376619341110864549

/-! ## A063715.P9450397622447751630

`∑{d}[(n+1)², A004273(A018892(n+1+#))]`
-/

namespace A063715.P9450397622447751630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004273 (A018892 (n + 1 + d)).toNat

end

end A063715.P9450397622447751630

/-!
# A063716: Number of solutions (r,u,s,t), s>=t, in positive integers to the system of equations 1/r+1/u=1/n, 1/s+1/t=1/u.

The programs for A063716, there is no canonical definition to state claims against.
-/

/-! ## A063716.P1979520704355205436

`(A048691(n+1)+A063715(n+1))/2`
-/

namespace A063716.P1979520704355205436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048691 (n + 1) + A063715 (n + 1) : ℚ) / 2

end

end A063716.P1979520704355205436

/-! ## A063716.P15548501854596962114

`floor(A018892(n+1)+A063715(n+1)/2)`
-/

namespace A063716.P15548501854596962114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018892 (n + 1) : ℚ) + (A063715 (n + 1) : ℚ) / 2⌋

end

end A063716.P15548501854596962114

/-! ## A063716.P8896716881866089997

`A018892(n+1)+A004526(A063715(n+1))`
-/

namespace A063716.P8896716881866089997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1) + A004526 (A063715 (n + 1)).toNat

end

end A063716.P8896716881866089997

/-! ## A063716.P7053367933281106178

`A001281(A063715(n+1)+A048691(n+1))`
-/

namespace A063716.P7053367933281106178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A063715 (n + 1) + A048691 (n + 1)).toNat

end

end A063716.P7053367933281106178

/-! ## A063716.P13823864554659919098

`A004525(A063715(n+1)+A048691(n+1))`
-/

namespace A063716.P13823864554659919098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A063715 (n + 1) + A048691 (n + 1)).toNat

end

end A063716.P13823864554659919098

/-! ## A063716.P12005310970281113440

`A004526(A063715(n+1)+A048691(n+1))`
-/

namespace A063716.P12005310970281113440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A063715 (n + 1) + A048691 (n + 1)).toNat

end

end A063716.P12005310970281113440

/-! ## A063716.P7800761363369807608

`A063647(n+1)+A000463(A063715(n+1))`
-/

namespace A063716.P7800761363369807608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1) + A000463 (A063715 (n + 1)).toNat

end

end A063716.P7800761363369807608

/-! ## A063716.P6006202460798023192

`A029578(A063715(n+1)+A048691(n+1))`
-/

namespace A063716.P6006202460798023192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A063715 (n + 1) + A048691 (n + 1)).toNat

end

end A063716.P6006202460798023192

/-! ## A063716.P2977749780541110315

`∑{d}[(n+1)², A018892(n+1+#)]`
-/

namespace A063716.P2977749780541110315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018892 (n + 1 + d)

end

end A063716.P2977749780541110315

/-!
# A063717: a(n) is the greatest divisor of n^2 that is less than n.

The programs for A063717, there is no canonical definition to state claims against.
-/

/-! ## A063717.P4421024415605197658

`(n+2)²/A063718(n+2)`
-/

namespace A063717.P4421024415605197658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℚ) / (A063718 (n + 2) : ℚ)

end

end A063717.P4421024415605197658

/-! ## A063717.P15388472715274694098

`A063649(n+2)-(n+2)`
-/

namespace A063717.P15388472715274694098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063649 (n + 2) - (n + 2 : ℤ)

end

end A063717.P15388472715274694098

/-! ## A063717.P3748030635867764161

`A063649(n+2)%A020725(n+1)`
-/

namespace A063717.P3748030635867764161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063649 (n + 2)) (A020725 (n + 1))

end

end A063717.P3748030635867764161

/-! ## A063717.P4688311069175216517

`A219093(n+2)²*A219094(n+2)`
-/

namespace A063717.P4688311069175216517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219093 (n + 2) ^ 2 * A219094 (n + 2)

end

end A063717.P4688311069175216517

/-! ## A063717.P10540849178823544886

`((n+2)/A218993(n+2))²/A219094(n+2)`
-/

namespace A063717.P10540849178823544886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℚ) / (A218993 (n + 2) : ℚ)) ^ 2 / (A219094 (n + 2) : ℚ)

end

end A063717.P10540849178823544886

/-! ## A063717.P4188166856914610973

`A000290((n+2)/A218993(n+2))/A219094(n+2)`
-/

namespace A063717.P4188166856914610973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A218993 (n + 2) : ℚ))).toNat : ℚ) / (A219094 (n + 2) : ℚ)

end

end A063717.P4188166856914610973

/-! ## A063717.P23615584952049177

`2-A063428(n+2)+n`
-/

namespace A063717.P23615584952049177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A063428 (n + 2) + (n : ℤ)

end

end A063717.P23615584952049177

/-! ## A063717.P9809292593309975756

`(n+2)²/(A063427(n+2)+n+2)`
-/

namespace A063717.P9809292593309975756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℚ) / (A063427 (n + 2) + (n + 2 : ℤ) : ℚ)

end

end A063717.P9809292593309975756

/-! ## A063717.P6645488257512079940

`(A063649(n+2)+A063427(n+2))%A063718(n+2)`
-/

namespace A063717.P6645488257512079940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063649 (n + 2) + A063427 (n + 2)) (A063718 (n + 2))

end

end A063717.P6645488257512079940

/-! ## A063717.P7331406202379448822

`A226314(A063649(n+2)+∑[n+1])`
-/

namespace A063717.P7331406202379448822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226314 (A063649 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A063717.P7331406202379448822

/-! ## A063717.P11614382669253722934

`A060775(A140651(n+2))`
-/

namespace A063717.P11614382669253722934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (A140651 (n + 2)).toNat

end

end A063717.P11614382669253722934

/-! ## A063717.P15600605464670983714

`A060775(A170826(n+2))`
-/

namespace A063717.P15600605464670983714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (A170826 (n + 2)).toNat

end

end A063717.P15600605464670983714

/-!
# A063718: a(n) is the smallest divisor of n^2 that is greater than n.

The programs for A063718, there is no canonical definition to state claims against.
-/

/-! ## A063718.P750517659771165983

`(n+2)²/A063717(n+2)`
-/

namespace A063718.P750517659771165983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℚ) / (A063717 (n + 2) : ℚ)

end

end A063718.P750517659771165983

/-! ## A063718.P14047270172506103441

`(n+2)²/(A063649(n+2)-(n+2))`
-/

namespace A063718.P14047270172506103441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℚ) / (A063649 (n + 2) - (n + 2 : ℤ) : ℚ)

end

end A063718.P14047270172506103441

/-! ## A063718.P11420020531425045250

`A218993(n+2)²*A219094(n+2)`
-/

namespace A063718.P11420020531425045250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218993 (n + 2) ^ 2 * A219094 (n + 2)

end

end A063718.P11420020531425045250

/-! ## A063718.P10774595181723453203

`A000290(A218993(n+2))*A219094(A020725(n+1))`
-/

namespace A063718.P10774595181723453203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A218993 (n + 2)).toNat * A219094 (A020725 (n + 1)).toNat

end

end A063718.P10774595181723453203

/-! ## A063718.P12364531836161767127

`A218993(A020725(n+1))*A218993(n+2)*A219094(n+2)`
-/

namespace A063718.P12364531836161767127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218993 (A020725 (n + 1)).toNat * A218993 (n + 2) * A219094 (n + 2)

end

end A063718.P12364531836161767127

/-! ## A063718.P3257918761739510962

`A063648(n+2)-(n+2)`
-/

namespace A063718.P3257918761739510962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063648 (n + 2) - (n + 2 : ℤ)

end

end A063718.P3257918761739510962

/-! ## A063718.P16047045702971540010

`(n+2)²/(n+2-A063428(n+2))`
-/

namespace A063718.P16047045702971540010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℚ) / ((n + 2 : ℤ) - A063428 (n + 2) : ℚ)

end

end A063718.P16047045702971540010

/-! ## A063718.P8274721650201685315

`n+2+A063427(n+2)`
-/

namespace A063718.P8274721650201685315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + A063427 (n + 2)

end

end A063718.P8274721650201685315

/-! ## A063718.P1250060463820642649

`A140271((n+2)²)`
-/

namespace A063718.P1250060463820642649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 ((n + 2) ^ 2)

end

end A063718.P1250060463820642649

/-! ## A063718.P16046505934330505036

`A216841((n+2)²)-(n+2)²`
-/

namespace A063718.P16046505934330505036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216841 ((n + 2) ^ 2) - ((n + 2) ^ 2 : ℤ)

end

end A063718.P16046505934330505036

/-!
# A063720: Number of segments lit in a 7-segment display (as on a calculator) to represent the number n, variant 0: '6', '7' and '9' use 5, 3 and 5 segments, respectively.

The programs for A063720, there is no canonical definition to state claims against.
-/

/-! ## A063720.P9274545806517555726

`A277116(n)-A316867(n)`
-/

namespace A063720.P9274545806517555726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n - A316867 n

end

end A063720.P9274545806517555726

/-! ## A063720.P11924639454718957017

`A006942(n)-A102681(A222250(n))`
-/

namespace A063720.P11924639454718957017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n - A102681 (A222250 n).toNat

end

end A063720.P11924639454718957017

/-! ## A063720.P10593716792355554405

`A010371(n)-A102679(A222250(n))`
-/

namespace A063720.P10593716792355554405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - A102679 (A222250 n).toNat

end

end A063720.P10593716792355554405

/-! ## A063720.P10991475635139648590

`A277116(A222251(n))-A102683(n)`
-/

namespace A063720.P10991475635139648590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 (A222251 n).toNat - A102683 n

end

end A063720.P10991475635139648590

/-! ## A063720.P3692547767916879645

`A277116(n)-A316868(A048379(n))`
-/

namespace A063720.P3692547767916879645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n - A316868 (A048379 n).toNat

end

end A063720.P3692547767916879645

/-! ## A063720.P13379536834964205062

`A277116(n)-A316864(A061601(n))`
-/

namespace A063720.P13379536834964205062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n - A316864 (A061601 n).toNat

end

end A063720.P13379536834964205062

/-! ## A063720.P12263056418111987547

`A277116(n)-A316868(A222249(n))`
-/

namespace A063720.P12263056418111987547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n - A316868 (A222249 n).toNat

end

end A063720.P12263056418111987547

/-! ## A063720.P13638648475572586859

`A277116(n)-A316866(A235049(n))`
-/

namespace A063720.P13638648475572586859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n - A316866 (A235049 n).toNat

end

end A063720.P13638648475572586859

/-! ## A063720.P8873137834646177393

`A277116(n)-A316868(A306436(n))`
-/

namespace A063720.P8873137834646177393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n - A316868 (A306436 n).toNat

end

end A063720.P8873137834646177393

/-! ## A063720.P18116583184287147064

`A102679(n)+A277116(n)-A102677(n)`
-/

namespace A063720.P18116583184287147064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n + (A277116 n - A102677 n)

end

end A063720.P18116583184287147064

/-! ## A063720.P6919799742726063894

`A006942(n)-(A316867(A222251(n))+A316867(n))`
-/

namespace A063720.P6919799742726063894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n - (A316867 (A222251 n).toNat + A316867 n)

end

end A063720.P6919799742726063894

/-! ## A063720.P10070553934400738883

`A277116(n)-A100910(A017341(n))`
-/

namespace A063720.P10070553934400738883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n - A100910 (A017341 n).toNat

end

end A063720.P10070553934400738883

/-!
# A063721: Number of proper divisors of n is a square and sets a new record for such squares.

The programs for A063721, there is no canonical definition to state claims against.
-/

/-! ## A063721.P119741154463037216

`(∏{p}[n+1, #-1]*A248888(A036720(n)))²*A082329(n+1)`
-/

namespace A063721.P119741154463037216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A248888 (A036720 n).toNat) ^ 2 * A082329 (n + 1)

end

end A063721.P119741154463037216

/-! ## A063721.P14079853963351757793

`(∏{p}[n+1, #-1]*A248888(A036720(n)))²*A082330(n+1)`
-/

namespace A063721.P14079853963351757793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A248888 (A036720 n).toNat) ^ 2 * A082330 (n + 1)

end

end A063721.P14079853963351757793

/-!
# A063724: Consider problem of placing N queens on an n X n board so that each queen attacks precisely 4 others. Sequence gives maximal number of queens.

The programs for A063724, the canonical program `A063724.P41683358143530848` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063724 has offset 1).

The definition of A063724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063724.P41683358143530848

`2*a(n-1)-a(n-2)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=8, a(4)=11, a(5)=15, a(6)=18`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063724

/-- `2*a(n-1)-a(n-2)` -/
def P41683358143530848.Spec : Prop :=
  ∀ n, P41683358143530848.a n = A063724 (n + 1)

theorem P41683358143530848.correct : P41683358143530848.Spec := by
  intro n
  simp only [A063724, Nat.add_sub_cancel]

end A063724

/-!
# A063725: Number of ordered pairs (x,y) of positive integers such that x^2 + y^2 = n.

The programs for A063725, the canonical program `A063725.P12741089044414848106` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063725 has offset 0).

The definition of A063725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063725.P16120519344882003695

`A000925(n)-A000122(n)`
-/

namespace A063725.P16120519344882003695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n - A000122 n

end

end A063725.P16120519344882003695

namespace A063725

/-- `A000925(n)-A000122(n)` -/
def P16120519344882003695.Spec : Prop :=
  ∀ n, P16120519344882003695.a n = A063725 n

end A063725

/-! ## A063725.P9656711802735033065

`(A004018(n)-2*A000122(n)+A000007(n))/4`
-/

namespace A063725.P9656711802735033065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n - 2 * A000122 n + A000007 n : ℚ) / 4

end

end A063725.P9656711802735033065

namespace A063725

/-- `(A004018(n)-2*A000122(n)+A000007(n))/4` -/
def P9656711802735033065.Spec : Prop :=
  ∀ n, P9656711802735033065.a n = (A063725 n : ℚ)

end A063725

/-! ## A063725.P12741089044414848106

`Δ[A237526(abs(1-n))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A063725

/-- `Δ[A237526(abs(1-n))]` -/
def P12741089044414848106.Spec : Prop :=
  ∀ n, P12741089044414848106.a n = A063725 n

theorem P12741089044414848106.correct : P12741089044414848106.Spec := by
  intro n
  simp only [A063725]

end A063725

/-! ## A063725.P12126803114850849882

`A025441(n)+A025426(n)`
-/

namespace A063725.P12126803114850849882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n + A025426 n

end

end A063725.P12126803114850849882

namespace A063725

/-- `A025441(n)+A025426(n)` -/
def P12126803114850849882.Spec : Prop :=
  ∀ n, P12126803114850849882.a n = A063725 n

end A063725

/-! ## A063725.P10154394525712973128

`A000925(n)-abs(A002448(n))`
-/

namespace A063725.P10154394525712973128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n - |A002448 n|

end

end A063725.P10154394525712973128

namespace A063725

/-- `A000925(n)-abs(A002448(n))` -/
def P10154394525712973128.Spec : Prop :=
  ∀ n, P10154394525712973128.a n = A063725 n

end A063725

/-! ## A063725.P14950248111976709920

`A000925(n)-A008451(n)%4`
-/

namespace A063725.P14950248111976709920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n - Int.tmod (A008451 n) 4

end

end A063725.P14950248111976709920

namespace A063725

/-- `A000925(n)-A008451(n)%4` -/
def P14950248111976709920.Spec : Prop :=
  ∀ n, P14950248111976709920.a n = A063725 n

end A063725

/-! ## A063725.P10918364834207764478

`A025441(n)+A000161(n)-char[n²]`
-/

namespace A063725.P10918364834207764478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n + (A000161 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A063725.P10918364834207764478

namespace A063725

/-- `A025441(n)+A000161(n)-char[n²]` -/
def P10918364834207764478.Spec : Prop :=
  ∀ n, P10918364834207764478.a n = A063725 n

end A063725

/-! ## A063725.P13510317154543157399

`A026741(A004018(n))-A000925(n)`
-/

namespace A063725.P13510317154543157399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A004018 n).toNat - A000925 n

end

end A063725.P13510317154543157399

namespace A063725

/-- `A026741(A004018(n))-A000925(n)` -/
def P13510317154543157399.Spec : Prop :=
  ∀ n, P13510317154543157399.a n = A063725 n

end A063725

/-! ## A063725.P17352209150873999712

`A000161(n)+A025435(n)-A000122(n)`
-/

namespace A063725.P17352209150873999712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n + (A025435 n - A000122 n)

end

end A063725.P17352209150873999712

namespace A063725

/-- `A000161(n)+A025435(n)-A000122(n)` -/
def P17352209150873999712.Spec : Prop :=
  ∀ n, P17352209150873999712.a n = A063725 n

end A063725

/-! ## A063725.P18052916833512563665

`A000161(n)+A025441(n)-A010052(n)`
-/

namespace A063725.P18052916833512563665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n + (A025441 n - A010052 n)

end

end A063725.P18052916833512563665

namespace A063725

/-- `A000161(n)+A025441(n)-A010052(n)` -/
def P18052916833512563665.Spec : Prop :=
  ∀ n, P18052916833512563665.a n = A063725 n

end A063725

/-! ## A063725.P7784916320444389567

`A025441(n)+A025435(2*n)`
-/

namespace A063725.P7784916320444389567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n + A025435 (2 * n)

end

end A063725.P7784916320444389567

namespace A063725

/-- `A025441(n)+A025435(2*n)` -/
def P7784916320444389567.Spec : Prop :=
  ∀ n, P7784916320444389567.a n = A063725 n

end A063725

/-! ## A063725.P4278136098860722840

`A281154(4*n)`
-/

namespace A063725.P4278136098860722840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281154 (4 * n)

end

end A063725.P4278136098860722840

namespace A063725

/-- `A281154(4*n)` -/
def P4278136098860722840.Spec : Prop :=
  ∀ n, P4278136098860722840.a n = A063725 n

end A063725

/-! ## A063725.P2068607157367535915

`A337165(A133263(n))`
-/

namespace A063725.P2068607157367535915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A133263 n).toNat

end

end A063725.P2068607157367535915

namespace A063725

/-- `A337165(A133263(n))` -/
def P2068607157367535915.Spec : Prop :=
  ∀ n, P2068607157367535915.a n = A063725 n

end A063725

/-! ## A063725.P12707692227427571832

`A337165(A238531(n+1))`
-/

namespace A063725.P12707692227427571832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A238531 (n + 1)).toNat

end

end A063725.P12707692227427571832

namespace A063725

/-- `A337165(A238531(n+1))` -/
def P12707692227427571832.Spec : Prop :=
  ∀ n, P12707692227427571832.a n = A063725 n

end A063725

/-! ## A063725.P11725968629071720247

`A337165(A152950(n+1)-A057427(n))`
-/

namespace A063725.P11725968629071720247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A152950 (n + 1) - A057427 n).toNat

end

end A063725.P11725968629071720247

namespace A063725

/-- `A337165(A152950(n+1)-A057427(n))` -/
def P11725968629071720247.Spec : Prop :=
  ∀ n, P11725968629071720247.a n = A063725 n

end A063725

/-! ## A063725.P16072264423387533885

`A003002(A084888(4*n))`
-/

namespace A063725.P16072264423387533885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A084888 (4 * n)).toNat

end

end A063725.P16072264423387533885

namespace A063725

/-- `A003002(A084888(4*n))` -/
def P16072264423387533885.Spec : Prop :=
  ∀ n, P16072264423387533885.a n = A063725 n

end A063725

/-!
# A063726: a(n) = gcd(1 + Fibonacci(n+1), 1 + Fibonacci(n)).

The programs for A063726, the canonical program `A063726.P9833521846343974685` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063726 has offset 0).

The definition of A063726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063726.P9833521846343974685

`gcd(A001611(n), A212804(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063726

/-- `gcd(A001611(n), A212804(n))` -/
def P9833521846343974685.Spec : Prop :=
  ∀ n, (P9833521846343974685.a n : ℤ) = A063726 n

theorem P9833521846343974685.correct : P9833521846343974685.Spec := by
  intro n
  simp only [A063726]

end A063726

/-! ## A063726.P12478327674088526211

`gcd(A000045(n)+1, Δ[A000045(n)])`
-/

namespace A063726.P12478327674088526211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 n + 1) (f1 (n + 1) - f1 n)

end

end A063726.P12478327674088526211

namespace A063726

/-- `gcd(A000045(n)+1, Δ[A000045(n)])` -/
def P12478327674088526211.Spec : Prop :=
  ∀ n, (P12478327674088526211.a n : ℤ) = A063726 n

end A063726

/-! ## A063726.P13330054314067857289

`gcd(2-A157726(n), Δ[A157726(n)])`
-/

namespace A063726.P13330054314067857289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A157726 n) (f1 (n + 1) - f1 n)

end

end A063726.P13330054314067857289

namespace A063726

/-- `gcd(2-A157726(n), Δ[A157726(n)])` -/
def P13330054314067857289.Spec : Prop :=
  ∀ n, (P13330054314067857289.a n : ℤ) = A063726 n

end A063726

/-! ## A063726.P11359774436947607012

`gcd(Δ[A000045(n)], A001612(n))`
-/

namespace A063726.P11359774436947607012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A001612 n)

end

end A063726.P11359774436947607012

namespace A063726

/-- `gcd(Δ[A000045(n)], A001612(n))` -/
def P11359774436947607012.Spec : Prop :=
  ∀ n, (P11359774436947607012.a n : ℤ) = A063726 n

end A063726

/-! ## A063726.P17201342978380515148

`gcd(Δ[A001611(n)], A098600(n))`
-/

namespace A063726.P17201342978380515148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A098600 n)

end

end A063726.P17201342978380515148

namespace A063726

/-- `gcd(Δ[A001611(n)], A098600(n))` -/
def P17201342978380515148.Spec : Prop :=
  ∀ n, (P17201342978380515148.a n : ℤ) = A063726 n

end A063726

/-! ## A063726.P4107130457248018806

`gcd(A187890(n+2)+1, A181716(n+1))`
-/

namespace A063726.P4107130457248018806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A187890 (n + 2) + 1) (A181716 (n + 1))

end

end A063726.P4107130457248018806

namespace A063726

/-- `gcd(A187890(n+2)+1, A181716(n+1))` -/
def P4107130457248018806.Spec : Prop :=
  ∀ n, (P4107130457248018806.a n : ℤ) = A063726 n

end A063726

/-! ## A063726.P5637661544773043068

`gcd(A097132(n), A186025(n))`
-/

namespace A063726.P5637661544773043068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097132 n) (A186025 n)

end

end A063726.P5637661544773043068

namespace A063726

/-- `gcd(A097132(n), A186025(n))` -/
def P5637661544773043068.Spec : Prop :=
  ∀ n, (P5637661544773043068.a n : ℤ) = A063726 n

end A063726

/-! ## A063726.P9789180700179393768

`gcd(A119282(n+1)+2, A119282(2*n))`
-/

namespace A063726.P9789180700179393768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119282 (n + 1) + 2) (A119282 (2 * n))

end

end A063726.P9789180700179393768

namespace A063726

/-- `gcd(A119282(n+1)+2, A119282(2*n))` -/
def P9789180700179393768.Spec : Prop :=
  ∀ n, (P9789180700179393768.a n : ℤ) = A063726 n

end A063726

/-! ## A063726.P4614768863485625149

`gcd(A000045(n)²+A000045(n+1), A000045(n)+A000045(n)²)`
-/

namespace A063726.P4614768863485625149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 n ^ 2 + A000045 (n + 1)) (A000045 n + A000045 n ^ 2)

end

end A063726.P4614768863485625149

namespace A063726

/-- `gcd(A000045(n)²+A000045(n+1), A000045(n)+A000045(n)²)` -/
def P4614768863485625149.Spec : Prop :=
  ∀ n, (P4614768863485625149.a n : ℤ) = A063726 n

end A063726

/-! ## A063726.P5910622109438017926

`gcd(A098600(n), A346513(n))`
-/

namespace A063726.P5910622109438017926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098600 n) (A346513 n)

end

end A063726.P5910622109438017926

namespace A063726

/-- `gcd(A098600(n), A346513(n))` -/
def P5910622109438017926.Spec : Prop :=
  ∀ n, (P5910622109438017926.a n : ℤ) = A063726 n

end A063726

/-!
# A063727: a(n) = 2*a(n-1) + 4*a(n-2), a(0)=1, a(1)=2.

The programs for A063727, the canonical program `A063727.P4628812826446673500` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063727 has offset 0).

The definition of A063727 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+4*a(n-2)` (program `A063727.P4628812826446673500`, by `A063727.P4628812826446673500.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063727.P4628812826446673500

`2*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063727

/-- `2*a(n-1)+4*a(n-2)` -/
def P4628812826446673500.Spec : Prop :=
  ∀ n, (P4628812826446673500.a n : ℤ) = A063727 n

theorem P4628812826446673500.correct : P4628812826446673500.Spec := by
  intro n
  simp only [A063727]

end A063727

/-! ## A063727.P14652954543031564163

`ogf(1/(1-2x-4x^2))`
-/

namespace A063727.P14652954543031564163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -4] n

end

end A063727.P14652954543031564163

namespace A063727

/-- `ogf(1/(1-2x-4x^2))` -/
def P14652954543031564163.Spec : Prop :=
  ∀ n, P14652954543031564163.a n = A063727 n

end A063727

/-! ## A063727.P3125116649313692884

`8*(a(n-2)+a(n-3))` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A063727.P3125116649313692884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  8 * (a (n - 2) + a (n - 3))

end

end A063727.P3125116649313692884

namespace A063727

/-- `8*(a(n-2)+a(n-3))` -/
def P3125116649313692884.Spec : Prop :=
  ∀ n, (P3125116649313692884.a n : ℤ) = A063727 n

end A063727

/-! ## A063727.P14760798597773650102

`abs(Δ[8*(a(n-2)-a(n-3))])` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A063727.P14760798597773650102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  8 * (f1 (n - 2) - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A063727.P14760798597773650102

namespace A063727

/-- `abs(Δ[8*(a(n-2)-a(n-3))])` -/
def P14760798597773650102.Spec : Prop :=
  ∀ n, P14760798597773650102.a n = A063727 n

end A063727

/-! ## A063727.P7707235617658754432

`(-2)^n*∑[a(n-2)-a(n-1)]` with `a(0)=1, a(1)=-2`
-/

namespace A063727.P7707235617658754432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063727.P7707235617658754432

namespace A063727

/-- `(-2)^n*∑[a(n-2)-a(n-1)]` -/
def P7707235617658754432.Spec : Prop :=
  ∀ n, P7707235617658754432.a n = A063727 n

end A063727

/-! ## A063727.P15663381888927321925

`2*(3*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A063727.P15663381888927321925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (3 * a (n - 2) - (a (n - 2) - a (n - 1)))

end

end A063727.P15663381888927321925

namespace A063727

/-- `2*(3*a(n-2)-(a(n-2)-a(n-1)))` -/
def P15663381888927321925.Spec : Prop :=
  ∀ n, P15663381888927321925.a n = A063727 n

end A063727

/-! ## A063727.P17398170693499814375

`∑[A084057(n)]`
-/

namespace A063727.P17398170693499814375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063727.P17398170693499814375

namespace A063727

/-- `∑[A084057(n)]` -/
def P17398170693499814375.Spec : Prop :=
  ∀ n, P17398170693499814375.a n = A063727 n

end A063727

/-! ## A063727.P16343658349748412906

`A085449(n+1)`
-/

namespace A063727.P16343658349748412906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 (n + 1)

end

end A063727.P16343658349748412906

namespace A063727

/-- `A085449(n+1)` -/
def P16343658349748412906.Spec : Prop :=
  ∀ n, P16343658349748412906.a n = A063727 n

end A063727

/-! ## A063727.P12409400435107844424

`abs(Δ[A087205(n)])`
-/

namespace A063727.P12409400435107844424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A063727.P12409400435107844424

namespace A063727

/-- `abs(Δ[A087205(n)])` -/
def P12409400435107844424.Spec : Prop :=
  ∀ n, P12409400435107844424.a n = A063727 n

end A063727

/-! ## A063727.P12155531418886976337

`A171648(Δ[n²])`
-/

namespace A063727.P12155531418886976337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171648 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A063727.P12155531418886976337

namespace A063727

/-- `A171648(Δ[n²])` -/
def P12155531418886976337.Spec : Prop :=
  ∀ n, P12155531418886976337.a n = A063727 n

end A063727

/-! ## A063727.P12205963088398796079

`Δ[A014335(n+1)]`
-/

namespace A063727.P12205963088398796079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063727.P12205963088398796079

namespace A063727

/-- `Δ[A014335(n+1)]` -/
def P12205963088398796079.Spec : Prop :=
  ∀ n, P12205963088398796079.a n = A063727 n

end A063727

/-! ## A063727.P10612648712018773479

`∑[A203579(n)-1]`
-/

namespace A063727.P10612648712018773479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203579 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063727.P10612648712018773479

namespace A063727

/-- `∑[A203579(n)-1]` -/
def P10612648712018773479.Spec : Prop :=
  ∀ n, P10612648712018773479.a n = A063727 n

end A063727

/-! ## A063727.P2978621012767420504

`∑[A087131(n)/2]`
-/

namespace A063727.P2978621012767420504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087131 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063727.P2978621012767420504

namespace A063727

/-- `∑[A087131(n)/2]` -/
def P2978621012767420504.Spec : Prop :=
  ∀ n, P2978621012767420504.a n = (A063727 n : ℚ)

end A063727

/-! ## A063727.P9038206207684693515

`record[A085449(abs(1-n))]`
-/

namespace A063727.P9038206207684693515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063727.P9038206207684693515

namespace A063727

/-- `record[A085449(abs(1-n))]` -/
def P9038206207684693515.Spec : Prop :=
  ∀ n, P9038206207684693515.a n = A063727 n

end A063727

/-! ## A063727.P9122208159610002033

`2^n*A000045(n+1)`
-/

namespace A063727.P9122208159610002033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000045 (n + 1)

end

end A063727.P9122208159610002033

namespace A063727

/-- `2^n*A000045(n+1)` -/
def P9122208159610002033.Spec : Prop :=
  ∀ n, P9122208159610002033.a n = A063727 n

end A063727

/-! ## A063727.P9710103602909148515

`2^n*A212804(n+2)`
-/

namespace A063727.P9710103602909148515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A212804 (n + 2)

end

end A063727.P9710103602909148515

namespace A063727

/-- `2^n*A212804(n+2)` -/
def P9710103602909148515.Spec : Prop :=
  ∀ n, P9710103602909148515.a n = A063727 n

end A063727

/-! ## A063727.P9234504519737991295

`2^n*A324969(n+2)`
-/

namespace A063727.P9234504519737991295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A324969 (n + 2)

end

end A063727.P9234504519737991295

namespace A063727

/-- `2^n*A324969(n+2)` -/
def P9234504519737991295.Spec : Prop :=
  ∀ n, P9234504519737991295.a n = A063727 n

end A063727

/-! ## A063727.P14885473209084399595

`A063782(n)-a(n-1)` with `a(0)=1`
-/

namespace A063727.P14885473209084399595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A063782 n - a (n - 1)

end

end A063727.P14885473209084399595

namespace A063727

/-- `A063782(n)-a(n-1)` -/
def P14885473209084399595.Spec : Prop :=
  ∀ n, P14885473209084399595.a n = A063727 n

end A063727

/-! ## A063727.P8135156548367587412

`∑[2^(n-1)*A000032(n)]`
-/

namespace A063727.P8135156548367587412
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000032 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063727.P8135156548367587412

namespace A063727

/-- `∑[2^(n-1)*A000032(n)]` -/
def P8135156548367587412.Spec : Prop :=
  ∀ n, P8135156548367587412.a n = (A063727 n : ℚ)

end A063727

/-!
# A063728: a(n) = shift(a(n-1); a(n-3)), a(0)=2, a(1)=3.

The programs for A063728, there is no canonical definition to state claims against.
-/

/-! ## A063728.P3513952254958120355

`2^a(n-3)*a(n-1)` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A063728.P3513952254958120355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6] fun n a =>
  2 ^ a (n - 3) * a (n - 1)

end

end A063728.P3513952254958120355

/-! ## A063728.P16359312156386653508

`A227553(a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A063728.P16359312156386653508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A227553 (a (n - 1)).toNat

end

end A063728.P16359312156386653508

/-!
# A063729: Numbers k such that sigma(k)+1 is a square and sets a new record for such squares.

The programs for A063729, there is no canonical definition to state claims against.
-/

/-! ## A063729.P1271617069548446928

`∩[A063531(n+1), A316114(n+1)]`
-/

namespace A063729.P1271617069548446928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063729.P1271617069548446928

/-!
# A063730: Number of solutions to w^2 + x^2 + y^2 + z^2 = n in positive integers.

The programs for A063730, there is no canonical definition to state claims against.
-/

/-! ## A063730.P5674131103715974873

`(A000118(n)-4*A005875(n)+6*A004018(n)-4*A000122(n)+A000007(n))/16`
-/

namespace A063730.P5674131103715974873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000118 n - 4 * A005875 n + 6 * A004018 n - 4 * A000122 n + A000007 n : ℚ) / 16

end

end A063730.P5674131103715974873

/-! ## A063730.P6877500123020602140

`A337165(A238531(n)+2+n)`
-/

namespace A063730.P6877500123020602140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A238531 n + 2 + (n : ℤ)).toNat

end

end A063730.P6877500123020602140

/-! ## A063730.P12888840905524799051

`A337165(A113311(n)+A000217(n))`
-/

namespace A063730.P12888840905524799051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A113311 n + A000217 n).toNat

end

end A063730.P12888840905524799051

/-! ## A063730.P14558256885308957318

`A337165(A133263(n)+A130130(n))`
-/

namespace A063730.P14558256885308957318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A133263 n + A130130 n).toNat

end

end A063730.P14558256885308957318

/-! ## A063730.P6549699287765274709

`A337165(A145018(n+1))%A187219(n+1)`
-/

namespace A063730.P6549699287765274709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337165 (A145018 (n + 1)).toNat) (A187219 (n + 1))

end

end A063730.P6549699287765274709

/-! ## A063730.P5125701109717529716

`A337165(A145018(n+1)%A225367(n+1))`
-/

namespace A063730.P5125701109717529716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (Int.tmod (A145018 (n + 1)) (A225367 (n + 1))).toNat

end

end A063730.P5125701109717529716

/-! ## A063730.P11945570681271115449

`A347711(n)-A347710(n)`
-/

namespace A063730.P11945570681271115449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347711 n - A347710 n

end

end A063730.P11945570681271115449

/-!
# A063732: Numbers whose Lucas representation excludes L_0 = 2.

The programs for A063732, the canonical program `A063732.P8899392036906600095` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063732 has offset 1).

The definition of A063732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063732.P8899392036906600095

`floor((3-ϕ)*(n+1))-1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063732

/-- `floor((3-ϕ)*(n+1))-1` -/
def P8899392036906600095.Spec : Prop :=
  ∀ n, P8899392036906600095.a n = A063732 (n + 1)

theorem P8899392036906600095.correct : P8899392036906600095.Spec := by
  intro n
  simp only [A063732, Nat.add_sub_cancel]

end A063732

/-! ## A063732.P8811431349561355878

`ceil(xor(n, -1)/ϕ+2*n)`
-/

namespace A063732.P8811431349561355878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-1) : ℝ) / Real.goldenRatio + (2 * n : ℝ)⌉

end

end A063732.P8811431349561355878

namespace A063732

/-- `ceil(xor(n, -1)/ϕ+2*n)` -/
def P8811431349561355878.Spec : Prop :=
  ∀ n, P8811431349561355878.a n = A063732 (n + 1)

end A063732

/-! ## A063732.P7545824694226309193

`ceil(2*n-C(n+1, n)/ϕ)`
-/

namespace A063732.P7545824694226309193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) - (Nat.choose (n + 1) n : ℝ) / Real.goldenRatio⌉

end

end A063732.P7545824694226309193

namespace A063732

/-- `ceil(2*n-C(n+1, n)/ϕ)` -/
def P7545824694226309193.Spec : Prop :=
  ∀ n, P7545824694226309193.a n = A063732 (n + 1)

end A063732

/-! ## A063732.P16615744322240206174

`∑[ceil(n*ϕ²)%(comp[floor(ϕ*n)]-3)]`
-/

namespace A063732.P16615744322240206174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉ ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063732.P16615744322240206174

namespace A063732

/-- `∑[ceil(n*ϕ²)%(comp[floor(ϕ*n)]-3)]` -/
def P16615744322240206174.Spec : Prop :=
  ∀ n, P16615744322240206174.a n = A063732 (n + 1)

end A063732

/-! ## A063732.P7652869881141800613

`ceil(and(2*n+1, 2*n)-(n+1)/ϕ)`
-/

namespace A063732.P7652869881141800613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land (2 * n + 1) (2 * n) : ℝ) - (n + 1 : ℝ) / Real.goldenRatio⌉

end

end A063732.P7652869881141800613

namespace A063732

/-- `ceil(and(2*n+1, 2*n)-(n+1)/ϕ)` -/
def P7652869881141800613.Spec : Prop :=
  ∀ n, P7652869881141800613.a n = A063732 (n + 1)

end A063732

/-! ## A063732.P16512360023214660250

`comp[A054770(n+1)]`
-/

namespace A063732.P16512360023214660250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A063732.P16512360023214660250

namespace A063732

/-- `comp[A054770(n+1)]` -/
def P16512360023214660250.Spec : Prop :=
  ∀ n, (P16512360023214660250.a n : ℤ) = A063732 (n + 1)

end A063732

/-! ## A063732.P688049640384427709

`A016777(n)%A000201(n+1)`
-/

namespace A063732.P688049640384427709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016777 n) (A000201 (n + 1))

end

end A063732.P688049640384427709

namespace A063732

/-- `A016777(n)%A000201(n+1)` -/
def P688049640384427709.Spec : Prop :=
  ∀ n, P688049640384427709.a n = A063732 (n + 1)

end A063732

/-! ## A063732.P11119693514068512910

`A016825(n)%A001950(n+1)`
-/

namespace A063732.P11119693514068512910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016825 n) (A001950 (n + 1))

end

end A063732.P11119693514068512910

namespace A063732

/-- `A016825(n)%A001950(n+1)` -/
def P11119693514068512910.Spec : Prop :=
  ∀ n, P11119693514068512910.a n = A063732 (n + 1)

end A063732

/-! ## A063732.P9064840418877053537

`A016885(n)%A003231(n+1)`
-/

namespace A063732.P9064840418877053537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016885 n) (A003231 (n + 1))

end

end A063732.P9064840418877053537

namespace A063732

/-- `A016885(n)%A003231(n+1)` -/
def P9064840418877053537.Spec : Prop :=
  ∀ n, P9064840418877053537.a n = A063732 (n + 1)

end A063732

/-! ## A063732.P6475878727596417424

`A016813(n)%A003622(n+1)`
-/

namespace A063732.P6475878727596417424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016813 n) (A003622 (n + 1))

end

end A063732.P6475878727596417424

namespace A063732

/-- `A016813(n)%A003622(n+1)` -/
def P6475878727596417424.Spec : Prop :=
  ∀ n, P6475878727596417424.a n = A063732 (n + 1)

end A063732

/-! ## A063732.P13344307411795696841

`A016873(n)%A054770(n+1)`
-/

namespace A063732.P13344307411795696841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016873 n) (A054770 (n + 1))

end

end A063732.P13344307411795696841

namespace A063732

/-- `A016873(n)%A054770(n+1)` -/
def P13344307411795696841.Spec : Prop :=
  ∀ n, P13344307411795696841.a n = A063732 (n + 1)

end A063732

/-! ## A063732.P7175208712133461856

`A016933(n)%A287726(n+1)`
-/

namespace A063732.P7175208712133461856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016933 n) (A287726 (n + 1))

end

end A063732.P7175208712133461856

namespace A063732

/-- `A016933(n)%A287726(n+1)` -/
def P7175208712133461856.Spec : Prop :=
  ∀ n, P7175208712133461856.a n = A063732 (n + 1)

end A063732

/-! ## A063732.P14989052007081282934

`A034856(n+1)%A054066(n+1)`
-/

namespace A063732.P14989052007081282934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034856 (n + 1)) (A054066 (n + 1))

end

end A063732.P14989052007081282934

namespace A063732

/-- `A034856(n+1)%A054066(n+1)` -/
def P14989052007081282934.Spec : Prop :=
  ∀ n, P14989052007081282934.a n = A063732 (n + 1)

end A063732

/-! ## A063732.P11158903209584758577

`A131098(n+1)%A057843(n+1)`
-/

namespace A063732.P11158903209584758577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131098 (n + 1)) (A057843 (n + 1))

end

end A063732.P11158903209584758577

namespace A063732

/-- `A131098(n+1)%A057843(n+1)` -/
def P11158903209584758577.Spec : Prop :=
  ∀ n, P11158903209584758577.a n = A063732 (n + 1)

end A063732

/-! ## A063732.P5559744071267665637

`A003231(n+1)%A284625(n+1)`
-/

namespace A063732.P5559744071267665637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003231 (n + 1)) (A284625 (n + 1))

end

end A063732.P5559744071267665637

namespace A063732

/-- `A003231(n+1)%A284625(n+1)` -/
def P5559744071267665637.Spec : Prop :=
  ∀ n, P5559744071267665637.a n = A063732 (n + 1)

end A063732

/-! ## A063732.P2506216852734748036

`A287726(n+1)%A000201(n+1)`
-/

namespace A063732.P2506216852734748036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287726 (n + 1)) (A000201 (n + 1))

end

end A063732.P2506216852734748036

namespace A063732

/-- `A287726(n+1)%A000201(n+1)` -/
def P2506216852734748036.Spec : Prop :=
  ∀ n, P2506216852734748036.a n = A063732 (n + 1)

end A063732

/-! ## A063732.P18140004802073038800

`A372302(n+1)%A000201(n+1)`
-/

namespace A063732.P18140004802073038800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372302 (n + 1)) (A000201 (n + 1))

end

end A063732.P18140004802073038800

namespace A063732

/-- `A372302(n+1)%A000201(n+1)` -/
def P18140004802073038800.Spec : Prop :=
  ∀ n, P18140004802073038800.a n = A063732 (n + 1)

end A063732

/-! ## A063732.P11037003547844818459

`A134859(n+1)%A287665(n+1)`
-/

namespace A063732.P11037003547844818459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134859 (n + 1)) (A287665 (n + 1))

end

end A063732.P11037003547844818459

namespace A063732

/-- `A134859(n+1)%A287665(n+1)` -/
def P11037003547844818459.Spec : Prop :=
  ∀ n, P11037003547844818459.a n = A063732 (n + 1)

end A063732

/-! ## A063732.P11161316170891070651

`eq[0, Δ[floor((n+1)/(ϕ+2))]]`
-/

namespace A063732.P11161316170891070651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.goldenRatio + 2)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063732.P11161316170891070651

namespace A063732

/-- `eq[0, Δ[floor((n+1)/(ϕ+2))]]` -/
def P11161316170891070651.Spec : Prop :=
  ∀ n, (P11161316170891070651.a n : ℤ) = A063732 (n + 1)

end A063732

/-!
# A063733: A variant of Recamán's sequence: a(0)=1, a(n) = a(n-1)-(n-1) if positive and new, else a(n) = a(n-1)+(n-1).

The programs for A063733, there is no canonical definition to state claims against.
-/

/-! ## A063733.P13139338379718081356

`A334951(n)+1+n`
-/

namespace A063733.P13139338379718081356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 n + 1 + (n : ℤ)

end

end A063733.P13139338379718081356

/-! ## A063733.P10949053452634754861

`A005132(floor(n²/(n+1)))+1`
-/

namespace A063733.P10949053452634754861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat + 1

end

end A063733.P10949053452634754861

/-! ## A063733.P10705148380389971498

`A160356(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A063733.P10705148380389971498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A160356 (n - 1) + a (n - 1)

end

end A063733.P10705148380389971498

/-! ## A063733.P15320464151286815409

`A209386(floor(acot(n)+n)-1)/2+1`
-/

namespace A063733.P15320464151286815409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209386 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ - 1).toNat : ℚ) / 2 + 1

end

end A063733.P15320464151286815409

/-! ## A063733.P14966111745271247870

`1-(A001489(n)-A334951(n))`
-/

namespace A063733.P14966111745271247870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A001489 n - A334951 n)

end

end A063733.P14966111745271247870

/-! ## A063733.P533618543562695163

`A005408(n)-(n-A334951(n))`
-/

namespace A063733.P533618543562695163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((n : ℤ) - A334951 n)

end

end A063733.P533618543562695163

/-! ## A063733.P12224713616131205413

`A057427(n)+A005132(abs(1-n))`
-/

namespace A063733.P12224713616131205413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A005132 |1 - (n : ℤ)|.toNat

end

end A063733.P12224713616131205413

/-! ## A063733.P3223526439657890368

`2*n-(A023443(n)-A334951(n))`
-/

namespace A063733.P3223526439657890368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (A023443 n - A334951 n)

end

end A063733.P3223526439657890368

/-! ## A063733.P14750492576886921322

`A066202(∑[abs(1-n)])`
-/

namespace A063733.P14750492576886921322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066202 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A063733.P14750492576886921322

/-! ## A063733.P11378582470117339483

`A066201(∑[n]+n)`
-/

namespace A063733.P11378582470117339483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066201 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A063733.P11378582470117339483

/-! ## A063733.P1640113163355818276

`or(A000007(n), A066201(A000096(n)))`
-/

namespace A063733.P1640113163355818276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A066201 (A000096 n).toNat)

end

end A063733.P1640113163355818276

/-! ## A063733.P15051396348545566632

`char[A061579(n)]*A066201(A000096(n))`
-/

namespace A063733.P15051396348545566632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A066201 (A000096 n).toNat

end

end A063733.P15051396348545566632

/-! ## A063733.P6026051278574523126

`A066201(A000096(n))%A058763(n+1)`
-/

namespace A063733.P6026051278574523126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066201 (A000096 n).toNat) (A058763 (n + 1))

end

end A063733.P6026051278574523126

/-!
# A063734: Square abundant numbers.

The programs for A063734, there is no canonical definition to state claims against.
-/

/-! ## A063734.P8305462952439475986

`∩[A156903(n+1), n²]`
-/

namespace A063734.P8305462952439475986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156903 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A063734.P8305462952439475986

/-! ## A063734.P10353736117559080729

`∩[A376119(n+1), n²]`
-/

namespace A063734.P10353736117559080729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376119 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A063734.P10353736117559080729

/-! ## A063734.P4859827264882060403

`∩[A062312(n+1), A156903(n+1)]`
-/

namespace A063734.P4859827264882060403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063734.P4859827264882060403

/-! ## A063734.P15470586210302130481

`∩[A363169(n+1), n²]`
-/

namespace A063734.P15470586210302130481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A063734.P15470586210302130481

/-! ## A063734.P12797740994527761806

`∩[A000290(n), A156903(n+1)]`
-/

namespace A063734.P12797740994527761806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063734.P12797740994527761806

/-! ## A063734.P3639426269988009823

`∩[A000290(n), A363169(n+1)]`
-/

namespace A063734.P3639426269988009823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063734.P3639426269988009823

/-! ## A063734.P3909624018915478278

`∩[A000290(n), A376119(n+1)]`
-/

namespace A063734.P3909624018915478278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063734.P3909624018915478278

/-! ## A063734.P17480747532628032106

`∩[A188915(n), A363169(n+1)]`
-/

namespace A063734.P17480747532628032106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063734.P17480747532628032106

/-! ## A063734.P4791100711256606607

`∩[A188915(n), A376119(n+1)]`
-/

namespace A063734.P4791100711256606607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063734.P4791100711256606607

/-! ## A063734.P5674686712336459604

`∩[A266918(n+1), A156903(n+1)]`
-/

namespace A063734.P5674686712336459604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063734.P5674686712336459604

/-! ## A063734.P9756696295881189205

`∩[A034793(n+1), A156903(n+1)]`
-/

namespace A063734.P9756696295881189205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063734.P9756696295881189205

/-! ## A063734.P8274905670126805689

`∩[A034793(n+1), A363169(n+1)]`
-/

namespace A063734.P8274905670126805689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063734.P8274905670126805689

/-! ## A063734.P783906271729861877

`∩[A272266(n+1), A156903(n+1)]`
-/

namespace A063734.P783906271729861877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063734.P783906271729861877

/-! ## A063734.P3921358331183075517

`∩[A135276(n), A376119(n+1)]`
-/

namespace A063734.P3921358331183075517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063734.P3921358331183075517

/-! ## A063734.P2940973960738721564

`∩[A349869(n+1), A181385(n)]`
-/

namespace A063734.P2940973960738721564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063734.P2940973960738721564

/-! ## A063734.P17879972570523081470

`∩[A181385(n), A363169(n+1)]`
-/

namespace A063734.P17879972570523081470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063734.P17879972570523081470

/-! ## A063734.P17970933746837705898

`∩[A181385(n), A376119(n+1)]`
-/

namespace A063734.P17970933746837705898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063734.P17970933746837705898

/-! ## A063734.P5107304340264227555

`∩[A087811(n+1), A376119(n+1)]`
-/

namespace A063734.P5107304340264227555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063734.P5107304340264227555

/-! ## A063734.P10859805418181676137

`∩[A146994(n+1), A376119(n+1)]`
-/

namespace A063734.P10859805418181676137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063734.P10859805418181676137

/-!
# A063735: Square deficient numbers.

The programs for A063735, the canonical program `A063735.P13700721079844602380` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063735 has offset 1).

The definition of A063735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063735.P13700721079844602380

`∩[A204826(n+1), n²]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063735

/-- `∩[A204826(n+1), n²]` -/
def P13700721079844602380.Spec : Prop :=
  ∀ n, (P13700721079844602380.a n : ℤ) = A063735 (n + 1)

theorem P13700721079844602380.correct : P13700721079844602380.Spec := by
  intro n
  simp only [A063735, Nat.add_sub_cancel]

end A063735

/-! ## A063735.P13785539001481881406

`∩[A387420(n+1), n²]`
-/

namespace A063735.P13785539001481881406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A063735.P13785539001481881406

namespace A063735

/-- `∩[A387420(n+1), n²]` -/
def P13785539001481881406.Spec : Prop :=
  ∀ n, (P13785539001481881406.a n : ℤ) = A063735 (n + 1)

end A063735

/-! ## A063735.P8988872804234179669

`∩[A000290(n), A204826(n+1)]`
-/

namespace A063735.P8988872804234179669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063735.P8988872804234179669

namespace A063735

/-- `∩[A000290(n), A204826(n+1)]` -/
def P8988872804234179669.Spec : Prop :=
  ∀ n, (P8988872804234179669.a n : ℤ) = A063735 (n + 1)

end A063735

/-! ## A063735.P410601056060539953

`∩[A000290(n), A387420(n+1)]`
-/

namespace A063735.P410601056060539953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063735.P410601056060539953

namespace A063735

/-- `∩[A000290(n), A387420(n+1)]` -/
def P410601056060539953.Spec : Prop :=
  ∀ n, (P410601056060539953.a n : ℤ) = A063735 (n + 1)

end A063735

/-! ## A063735.P4598117312859357358

`∩[A034793(n+1), A387420(n+1)]`
-/

namespace A063735.P4598117312859357358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063735.P4598117312859357358

namespace A063735

/-- `∩[A034793(n+1), A387420(n+1)]` -/
def P4598117312859357358.Spec : Prop :=
  ∀ n, (P4598117312859357358.a n : ℤ) = A063735 (n + 1)

end A063735

/-! ## A063735.P14994732678173399043

`∩[A087811(n+1), A387420(n+1)]`
-/

namespace A063735.P14994732678173399043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063735.P14994732678173399043

namespace A063735

/-- `∩[A087811(n+1), A387420(n+1)]` -/
def P14994732678173399043.Spec : Prop :=
  ∀ n, (P14994732678173399043.a n : ℤ) = A063735 (n + 1)

end A063735

/-! ## A063735.P758068505475251156

`∩[A182531(n+1), A387420(n+1)]`
-/

namespace A063735.P758068505475251156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063735.P758068505475251156

namespace A063735

/-- `∩[A182531(n+1), A387420(n+1)]` -/
def P758068505475251156.Spec : Prop :=
  ∀ n, (P758068505475251156.a n : ℤ) = A063735 (n + 1)

end A063735

/-! ## A063735.P9527117624570286450

`∩[A005214(n+1), A204826(n+1)]`
-/

namespace A063735.P9527117624570286450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063735.P9527117624570286450

namespace A063735

/-- `∩[A005214(n+1), A204826(n+1)]` -/
def P9527117624570286450.Spec : Prop :=
  ∀ n, (P9527117624570286450.a n : ℤ) = A063735 (n + 1)

end A063735

/-! ## A063735.P13318698270588693676

`∩[A177887(n+1), A204826(n+1)]`
-/

namespace A063735.P13318698270588693676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063735.P13318698270588693676

namespace A063735

/-- `∩[A177887(n+1), A204826(n+1)]` -/
def P13318698270588693676.Spec : Prop :=
  ∀ n, (P13318698270588693676.a n : ℤ) = A063735 (n + 1)

end A063735

/-! ## A063735.P8785632471406805819

`∩[A171920(n+1), A204826(n+1)]`
-/

namespace A063735.P8785632471406805819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063735.P8785632471406805819

namespace A063735

/-- `∩[A171920(n+1), A204826(n+1)]` -/
def P8785632471406805819.Spec : Prop :=
  ∀ n, (P8785632471406805819.a n : ℤ) = A063735 (n + 1)

end A063735

/-! ## A063735.P1166017770243229468

`∩[A171920(n+1), A387420(n+1)]`
-/

namespace A063735.P1166017770243229468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063735.P1166017770243229468

namespace A063735

/-- `∩[A171920(n+1), A387420(n+1)]` -/
def P1166017770243229468.Spec : Prop :=
  ∀ n, (P1166017770243229468.a n : ℤ) = A063735 (n + 1)

end A063735

/-! ## A063735.P13967152369238397352

`∩[A155570(n+1), A204826(n+1)]`
-/

namespace A063735.P13967152369238397352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063735.P13967152369238397352

namespace A063735

/-- `∩[A155570(n+1), A204826(n+1)]` -/
def P13967152369238397352.Spec : Prop :=
  ∀ n, (P13967152369238397352.a n : ℤ) = A063735 (n + 1)

end A063735

/-! ## A063735.P12216642127778291442

`∩[A155566(n+1), A204826(n+1)]`
-/

namespace A063735.P12216642127778291442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063735.P12216642127778291442

namespace A063735

/-- `∩[A155566(n+1), A204826(n+1)]` -/
def P12216642127778291442.Spec : Prop :=
  ∀ n, (P12216642127778291442.a n : ℤ) = A063735 (n + 1)

end A063735

/-! ## A063735.P9692447508549944041

`∩[A155567(n+1), A204826(n+1)]`
-/

namespace A063735.P9692447508549944041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063735.P9692447508549944041

namespace A063735

/-- `∩[A155567(n+1), A204826(n+1)]` -/
def P9692447508549944041.Spec : Prop :=
  ∀ n, (P9692447508549944041.a n : ℤ) = A063735 (n + 1)

end A063735

/-! ## A063735.P12140484192830728086

`∩[A155563(n+1), A204826(n+1)]`
-/

namespace A063735.P12140484192830728086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063735.P12140484192830728086

namespace A063735

/-- `∩[A155563(n+1), A204826(n+1)]` -/
def P12140484192830728086.Spec : Prop :=
  ∀ n, (P12140484192830728086.a n : ℤ) = A063735 (n + 1)

end A063735

/-! ## A063735.P12279277595154064145

`∩[A155569(n+1), A204826(n+1)]`
-/

namespace A063735.P12279277595154064145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063735.P12279277595154064145

namespace A063735

/-- `∩[A155569(n+1), A204826(n+1)]` -/
def P12279277595154064145.Spec : Prop :=
  ∀ n, (P12279277595154064145.a n : ℤ) = A063735 (n + 1)

end A063735

/-! ## A063735.P2950838585491640342

`∩[A155565(n+1), A204826(n+1)]`
-/

namespace A063735.P2950838585491640342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063735.P2950838585491640342

namespace A063735

/-- `∩[A155565(n+1), A204826(n+1)]` -/
def P2950838585491640342.Spec : Prop :=
  ∀ n, (P2950838585491640342.a n : ℤ) = A063735 (n + 1)

end A063735

/-! ## A063735.P17369063512960400460

`∩[A334832(n+1), A204826(n+1)]`
-/

namespace A063735.P17369063512960400460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063735.P17369063512960400460

namespace A063735

/-- `∩[A334832(n+1), A204826(n+1)]` -/
def P17369063512960400460.Spec : Prop :=
  ∀ n, (P17369063512960400460.a n : ℤ) = A063735 (n + 1)

end A063735

/-! ## A063735.P9847681393518691194

`∩[A334832(n+1), A387420(n+1)]`
-/

namespace A063735.P9847681393518691194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063735.P9847681393518691194

namespace A063735

/-- `∩[A334832(n+1), A387420(n+1)]` -/
def P9847681393518691194.Spec : Prop :=
  ∀ n, (P9847681393518691194.a n : ℤ) = A063735 (n + 1)

end A063735

/-! ## A063735.P6410767342710905489

`∩[A066213(n+1), A204826(n+1)]`
-/

namespace A063735.P6410767342710905489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063735.P6410767342710905489

namespace A063735

/-- `∩[A066213(n+1), A204826(n+1)]` -/
def P6410767342710905489.Spec : Prop :=
  ∀ n, (P6410767342710905489.a n : ℤ) = A063735 (n + 1)

end A063735

/-!
# A063736: To get a(n), the pattern of the possible squarefree triple (4n+1, 4n+2, 4n+3) is coded as follows: compute A008966(x) getting one of {000, 001, 010, 011, 100, 101, 110, 111} and convert from binary.

The programs for A063736, the canonical program `A063736.P12274259142301944562` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063736 has offset 0).

The definition of A063736 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063736.P12274259142301944562

`4*A008966(4*n+1)+2*A008966(4*n+2)+A008966(4*n+3)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063736

/-- `4*A008966(4*n+1)+2*A008966(4*n+2)+A008966(4*n+3)` -/
def P12274259142301944562.Spec : Prop :=
  ∀ n, P12274259142301944562.a n = A063736 n

theorem P12274259142301944562.correct : P12274259142301944562.Spec := by
  intro n
  simp only [A063736]

end A063736

/-!
# A063737: Numbers n such that sum of digits of n is equal to the sum of the prime factors of n, counted with multiplicity.

The programs for A063737, there is no canonical definition to state claims against.
-/

/-! ## A063737.P4454830402169587498

`eq[A001414(A233583(n+1)), A007953(n)]`
-/

namespace A063737.P4454830402169587498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063737.P4454830402169587498

/-!
# A063739: Squarefree numbers k such that phi(k) = phi(k+1).

The programs for A063739, there is no canonical definition to state claims against.
-/

/-! ## A063739.P14589924191036541107

`filter[A001274(n+1), A008966(#)]`
-/

namespace A063739.P14589924191036541107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A063739.P14589924191036541107

/-! ## A063739.P4660800673025708518

`filter[A001274(n+1), A323154(#)]`
-/

namespace A063739.P4660800673025708518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A063739.P4660800673025708518

/-! ## A063739.P16593785720655228933

`filter[A001274(n+1), A353559(#)]`
-/

namespace A063739.P16593785720655228933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A063739.P16593785720655228933

/-! ## A063739.P18028042192506772423

`∩[A001274(n+1), A005117(n+1)]`
-/

namespace A063739.P18028042192506772423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063739.P18028042192506772423

/-! ## A063739.P4944875363552473471

`∩[A001274(n+1), A072774(n+1)]`
-/

namespace A063739.P4944875363552473471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063739.P4944875363552473471

/-!
# A063740: Number of integers k such that cototient(k) = n.

The programs for A063740, there is no canonical definition to state claims against.
-/

/-! ## A063740.P18073071247526282189

`A342788(A205128(n+2))`
-/

namespace A063740.P18073071247526282189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342788 (A205128 (n + 2)).toNat

end

end A063740.P18073071247526282189

/-! ## A063740.P15371778046357415254

`A234026(A279875(n))%4`
-/

namespace A063740.P15371778046357415254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234026 (A279875 n).toNat) 4

end

end A063740.P15371778046357415254

/-! ## A063740.P17236669508296883689

`A196564(A271307(n)+A035084(n))`
-/

namespace A063740.P17236669508296883689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A271307 n + A035084 n).toNat

end

end A063740.P17236669508296883689

/-! ## A063740.P9983364354207983705

`A196564(A007947(3*n+1)*A131101(3*n+1))`
-/

namespace A063740.P9983364354207983705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A007947 (3 * n + 1) * A131101 (3 * n + 1)).toNat

end

end A063740.P9983364354207983705

/-! ## A063740.P11136065629112646953

`A007877(n)+A007877(A057837(n))`
-/

namespace A063740.P11136065629112646953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 n + A007877 (A057837 n).toNat

end

end A063740.P11136065629112646953

/-!
# A063742: Cototients: numbers k such that x - phi(x) = k has at least one solution.

The programs for A063742, there is no canonical definition to state claims against.
-/

/-! ## A063742.P1163858307354913509

`comp[A005278(n+1)]`
-/

namespace A063742.P1163858307354913509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A063742.P1163858307354913509

/-! ## A063742.P2232488879479716417

`comp[2*A126887(n+1)]`
-/

namespace A063742.P2232488879479716417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A063742.P2232488879479716417

/-! ## A063742.P9340468864387164095

`A083235(n)+a(n-1)` with `a(0)=0`
-/

namespace A063742.P9340468864387164095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A083235 n + a (n - 1)

end

end A063742.P9340468864387164095

/-! ## A063742.P7041909836691024463

`∪[A058817(n+1), Δ[n²]]`
-/

namespace A063742.P7041909836691024463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058817 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063742.P7041909836691024463

/-! ## A063742.P13190338719792151475

`∪[A004273(n), A058817(n+1)]`
-/

namespace A063742.P13190338719792151475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063742.P13190338719792151475

/-! ## A063742.P6249770583457898493

`∪[A004274(n), A058817(n+1)]`
-/

namespace A063742.P6249770583457898493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063742.P6249770583457898493

/-! ## A063742.P3022223017972540016

`∪[A004276(n), A058817(n+1)]`
-/

namespace A063742.P3022223017972540016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063742.P3022223017972540016

/-! ## A063742.P13059780310774116730

`∪[A004281(n), A058817(n+1)]`
-/

namespace A063742.P13059780310774116730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063742.P13059780310774116730

/-! ## A063742.P12076827952060297584

`∪[A004280(n+1), A058817(n+1)]`
-/

namespace A063742.P12076827952060297584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063742.P12076827952060297584

/-! ## A063742.P7724378327323829559

`∑[A083235(n+1)]-A083235(n+1)`
-/

namespace A063742.P7724378327323829559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A083235 (n + 1)

end

end A063742.P7724378327323829559

/-!
# A063743: Numbers n such that n and Omega(n) are relatively prime, where Omega(n) is the number of prime divisors of n (with repetition).

The programs for A063743, the canonical program `A063743.P16037835070093761383` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063743 has offset 1).

The definition of A063743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063743.P8616318575607472983

`eq[1, gcd(n+1, A001222(n+1))]+1`
-/

namespace A063743.P8616318575607472983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001222 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063743.P8616318575607472983

namespace A063743

/-- `eq[1, gcd(n+1, A001222(n+1))]+1` -/
def P8616318575607472983.Spec : Prop :=
  ∀ n, (P8616318575607472983.a n : ℤ) = A063743 (n + 1)

end A063743

/-! ## A063743.P16037835070093761383

`eq[1, gcd(n, ∑{e}[n, #])]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063743

/-- `eq[1, gcd(n, ∑{e}[n, #])]` -/
def P16037835070093761383.Spec : Prop :=
  ∀ n, (P16037835070093761383.a n : ℤ) = A063743 (n + 1)

theorem P16037835070093761383.correct : P16037835070093761383.Spec := by
  intro n
  simp only [A063743, Nat.add_sub_cancel]

end A063743

/-! ## A063743.P15343695180985992196

`lt[gcd(∑{e}[n+1, #], A008619(2*n)), 2]+1`
-/

namespace A063743.P15343695180985992196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) (A008619 (2 * n))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A063743.P15343695180985992196

namespace A063743

/-- `lt[gcd(∑{e}[n+1, #], A008619(2*n)), 2]+1` -/
def P15343695180985992196.Spec : Prop :=
  ∀ n, (P15343695180985992196.a n : ℤ) = A063743 (n + 1)

end A063743

/-! ## A063743.P14174171321957148094

`record[∏{e}[A165826(n+1), lcm(#, n+1)/#]]`
-/

namespace A063743.P14174171321957148094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.lcm (Nat.factorization (f2 n).natAbs p) (n + 1) : ℚ) / (Nat.factorization (f2 n).natAbs p : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063743.P14174171321957148094

namespace A063743

/-- `record[∏{e}[A165826(n+1), lcm(#, n+1)/#]]` -/
def P14174171321957148094.Spec : Prop :=
  ∀ n, P14174171321957148094.a n = (A063743 (n + 1) : ℚ)

end A063743

/-! ## A063743.P8553158375429093573

`lt[14%gcd(∑{e}[n+1, #]^n, ∏{d}[n+1, #]), 1]+1`
-/

namespace A063743.P8553158375429093573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 % Nat.gcd ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) ^ n) (∏ d ∈ Nat.divisors (f3 n), d)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n + 1

end

end A063743.P8553158375429093573

namespace A063743

/-- `lt[14%gcd(∑{e}[n+1, #]^n, ∏{d}[n+1, #]), 1]+1` -/
def P8553158375429093573.Spec : Prop :=
  ∀ n, (P8553158375429093573.a n : ℤ) = A063743 (n + 1)

end A063743

/-!
# A063744: a(n) = sigma(a(n-1)) * number of divisors of a(n-1), a(1)=2.

The programs for A063744, there is no canonical definition to state claims against.
-/

/-! ## A063744.P9198856099753321076

`A000005(a(n-1))*A000203(a(n-1))` with `a(0)=2`
-/

namespace A063744.P9198856099753321076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000005 (a (n - 1)).toNat * A000203 (a (n - 1)).toNat

end

end A063744.P9198856099753321076

/-!
# A063745: Even numbers with an even number of prime factors (counted with multiplicity).

The programs for A063745, the canonical program `A063745.P6674532134331063017` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063745 has offset 1).

The definition of A063745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063745.P6674532134331063017

`2*A026424(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A063745

/-- `2*A026424(n+1)` -/
def P6674532134331063017.Spec : Prop :=
  ∀ n, P6674532134331063017.a n = A063745 (n + 1)

theorem P6674532134331063017.correct : P6674532134331063017.Spec := by
  intro n
  simp only [A063745, Nat.add_sub_cancel]

end A063745

/-! ## A063745.P15802697447372165626

`eq[1, A353555(n+1)]+1`
-/

namespace A063745.P15802697447372165626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353555 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063745.P15802697447372165626

namespace A063745

/-- `eq[1, A353555(n+1)]+1` -/
def P15802697447372165626.Spec : Prop :=
  ∀ n, (P15802697447372165626.a n : ℤ) = A063745 (n + 1)

end A063745

/-! ## A063745.P2287859986225722744

`2*(comp[A028260(n+1)-1]+1)`
-/

namespace A063745.P2287859986225722744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A063745.P2287859986225722744

namespace A063745

/-- `2*(comp[A028260(n+1)-1]+1)` -/
def P2287859986225722744.Spec : Prop :=
  ∀ n, (P2287859986225722744.a n : ℤ) = A063745 (n + 1)

end A063745

/-! ## A063745.P14185592207520146597

`2*(lt[A344617(2*(n+1)), 1]+1)`
-/

namespace A063745.P14185592207520146597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344617 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A063745.P14185592207520146597

namespace A063745

/-- `2*(lt[A344617(2*(n+1)), 1]+1)` -/
def P14185592207520146597.Spec : Prop :=
  ∀ n, (P14185592207520146597.a n : ℤ) = A063745 (n + 1)

end A063745

/-! ## A063745.P1593502463406340915

`2*(eq[1, gcd(2, A001222(n+1))]+1)`
-/

namespace A063745.P1593502463406340915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A001222 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A063745.P1593502463406340915

namespace A063745

/-- `2*(eq[1, gcd(2, A001222(n+1))]+1)` -/
def P1593502463406340915.Spec : Prop :=
  ∀ n, (P1593502463406340915.a n : ℤ) = A063745 (n + 1)

end A063745

/-! ## A063745.P5800367009001403042

`2*eq[1, gcd(2*a(n-1), A001222(n))]` with `a(0)=0`
-/

namespace A063745.P5800367009001403042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.gcd (2 * f2 (n - 1) : ℤ) (A001222 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063745.P5800367009001403042

namespace A063745

/-- `2*eq[1, gcd(2*a(n-1), A001222(n))]` -/
def P5800367009001403042.Spec : Prop :=
  ∀ n, (P5800367009001403042.a n : ℤ) = A063745 (n + 1)

end A063745

/-! ## A063745.P3991841597936396481

`2*∪[A000040(n+1), A046339(n+1)]`
-/

namespace A063745.P3991841597936396481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063745.P3991841597936396481

namespace A063745

/-- `2*∪[A000040(n+1), A046339(n+1)]` -/
def P3991841597936396481.Spec : Prop :=
  ∀ n, (P3991841597936396481.a n : ℤ) = A063745 (n + 1)

end A063745

/-! ## A063745.P3920077582558468589

`2*∪[A030059(n+1), A046339(n+1)]`
-/

namespace A063745.P3920077582558468589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063745.P3920077582558468589

namespace A063745

/-- `2*∪[A030059(n+1), A046339(n+1)]` -/
def P3920077582558468589.Spec : Prop :=
  ∀ n, (P3920077582558468589.a n : ℤ) = A063745 (n + 1)

end A063745

/-! ## A063745.P3857718187721678926

`2*∪[A046339(n+1), A182358(n+1)]`
-/

namespace A063745.P3857718187721678926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063745.P3857718187721678926

namespace A063745

/-- `2*∪[A046339(n+1), A182358(n+1)]` -/
def P3857718187721678926.Spec : Prop :=
  ∀ n, (P3857718187721678926.a n : ℤ) = A063745 (n + 1)

end A063745

/-! ## A063745.P3429632405483652285

`2*∪[A046339(n+1), A246551(n+1)]`
-/

namespace A063745.P3429632405483652285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063745.P3429632405483652285

namespace A063745

/-- `2*∪[A046339(n+1), A246551(n+1)]` -/
def P3429632405483652285.Spec : Prop :=
  ∀ n, (P3429632405483652285.a n : ℤ) = A063745 (n + 1)

end A063745

/-! ## A063745.P9567377038866172525

`A026424(n+1)+lcm(A008836(n+1), A026424(n+1))`
-/

namespace A063745.P9567377038866172525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1) + (Int.lcm (A008836 (n + 1)) (A026424 (n + 1)) : ℤ)

end

end A063745.P9567377038866172525

namespace A063745

/-- `A026424(n+1)+lcm(A008836(n+1), A026424(n+1))` -/
def P9567377038866172525.Spec : Prop :=
  ∀ n, P9567377038866172525.a n = A063745 (n + 1)

end A063745

/-! ## A063745.P17604542629014742426

`2*A026422(n+2)`
-/

namespace A063745.P17604542629014742426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026422 (n + 2)

end

end A063745.P17604542629014742426

namespace A063745

/-- `2*A026422(n+2)` -/
def P17604542629014742426.Spec : Prop :=
  ∀ n, P17604542629014742426.a n = A063745 (n + 1)

end A063745

/-! ## A063745.P2771256933110450046

`A026424(n+1)+A026422(n+2)`
-/

namespace A063745.P2771256933110450046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1) + A026422 (n + 2)

end

end A063745.P2771256933110450046

namespace A063745

/-- `A026424(n+1)+A026422(n+2)` -/
def P2771256933110450046.Spec : Prop :=
  ∀ n, P2771256933110450046.a n = A063745 (n + 1)

end A063745

/-! ## A063745.P5749890144729597093

`filter[A348005(n+1), A065043(#)]`
-/

namespace A063745.P5749890144729597093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A063745.P5749890144729597093

namespace A063745

/-- `filter[A348005(n+1), A065043(#)]` -/
def P5749890144729597093.Spec : Prop :=
  ∀ n, P5749890144729597093.a n = A063745 (n + 1)

end A063745

/-! ## A063745.P10526226375937192849

`filter[A348005(n+1), A353555(#)]`
-/

namespace A063745.P10526226375937192849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353555 (f1 j).toNat = 1) n)

end

end A063745.P10526226375937192849

namespace A063745

/-- `filter[A348005(n+1), A353555(#)]` -/
def P10526226375937192849.Spec : Prop :=
  ∀ n, P10526226375937192849.a n = A063745 (n + 1)

end A063745

/-! ## A063745.P4866115745392334778

`∩[2*n, A028260(n+1)]`
-/

namespace A063745.P4866115745392334778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063745.P4866115745392334778

namespace A063745

/-- `∩[2*n, A028260(n+1)]` -/
def P4866115745392334778.Spec : Prop :=
  ∀ n, (P4866115745392334778.a n : ℤ) = A063745 (n + 1)

end A063745

/-! ## A063745.P14966674105524109946

`filter[A028260(n+1), A353555(#)]`
-/

namespace A063745.P14966674105524109946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353555 (f1 j).toNat = 1) n)

end

end A063745.P14966674105524109946

namespace A063745

/-- `filter[A028260(n+1), A353555(#)]` -/
def P14966674105524109946.Spec : Prop :=
  ∀ n, P14966674105524109946.a n = A063745 (n + 1)

end A063745

/-! ## A063745.P6839588561394230422

`∩[A028260(n+1), A348005(n+1)]`
-/

namespace A063745.P6839588561394230422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063745.P6839588561394230422

namespace A063745

/-- `∩[A028260(n+1), A348005(n+1)]` -/
def P6839588561394230422.Spec : Prop :=
  ∀ n, (P6839588561394230422.a n : ℤ) = A063745 (n + 1)

end A063745

/-! ## A063745.P4365510941328879794

`2*(lt[∑{e}[2*(n+1), #]%2, 1]+1)`
-/

namespace A063745.P4365510941328879794
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1)

end

end A063745.P4365510941328879794

namespace A063745

/-- `2*(lt[∑{e}[2*(n+1), #]%2, 1]+1)` -/
def P4365510941328879794.Spec : Prop :=
  ∀ n, (P4365510941328879794.a n : ℤ) = A063745 (n + 1)

end A063745

/-!
# A063746: Triangle read by rows giving number of partitions of k (k=0 .. n^2) with Ferrers plot fitting in an n X n box.

The programs for A063746, there is no canonical definition to state claims against.
-/

/-! ## A063746.P4070660918713180673

`A096997(A052371(n))-A052371(n)`
-/

namespace A063746.P4070660918713180673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096997 (A052371 n).toNat - A052371 n

end

end A063746.P4070660918713180673

/-! ## A063746.P4548550796422723168

`A110591(A320470(A052371(n))²)`
-/

namespace A063746.P4548550796422723168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A320470 (A052371 n).toNat ^ 2).toNat

end

end A063746.P4548550796422723168

/-! ## A063746.P3206321103580683689

`A122027(A052371(n))`
-/

namespace A063746.P3206321103580683689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122027 (A052371 n).toNat

end

end A063746.P3206321103580683689

/-! ## A063746.P6883446800716270286

`A097430(5*A052371(n))`
-/

namespace A063746.P6883446800716270286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097430 (5 * A052371 n).toNat

end

end A063746.P6883446800716270286

/-!
# A063747: Sign of n-th coefficient of power series for 1/Gamma(1-x) where Gamma is the Gamma function.

The programs for A063747, there is no canonical definition to state claims against.
-/

/-! ## A063747.P16827991172313696773

`A033999(floor(A052905(n)/A225554(n+3)))`
-/

namespace A063747.P16827991172313696773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ⌊(A052905 n : ℚ) / (A225554 (n + 3) : ℚ)⌋.toNat

end

end A063747.P16827991172313696773

/-!
# A063749: a(n) = floor(d(n)*(n+1)/2) - sigma(n), where d = A000005, sigma = A000203.

The programs for A063749, the canonical program `A063749.P7178083772229867068` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063749 has offset 1).

The definition of A063749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063749.P7178083772229867068

`floor(∑{d}[n+1, (n+2)/2-#])`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063749

/-- `floor(∑{d}[n+1, (n+2)/2-#])` -/
def P7178083772229867068.Spec : Prop :=
  ∀ n, P7178083772229867068.a n = A063749 (n + 1)

theorem P7178083772229867068.correct : P7178083772229867068.Spec := by
  intro n
  simp only [A063749, Nat.add_sub_cancel]

end A063749

/-! ## A063749.P4196561637325653298

`A004526(∑{d}[n+1, n+1-(n%#+#)])`
-/

namespace A063749.P4196561637325653298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℤ) - ((n % d + d : ℕ) : ℤ))).toNat

end

end A063749.P4196561637325653298

namespace A063749

/-- `A004526(∑{d}[n+1, n+1-(n%#+#)])` -/
def P4196561637325653298.Spec : Prop :=
  ∀ n, P4196561637325653298.a n = A063749 (n + 1)

end A063749

/-! ## A063749.P17442370418572404007

`A004526(A374969(n+1))`
-/

namespace A063749.P17442370418572404007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A374969 (n + 1)).toNat

end

end A063749.P17442370418572404007

namespace A063749

/-- `A004526(A374969(n+1))` -/
def P17442370418572404007.Spec : Prop :=
  ∀ n, P17442370418572404007.a n = A063749 (n + 1)

end A063749

/-! ## A063749.P1383938789553290268

`A004526(A081307(n+1)-A000203(n+1))`
-/

namespace A063749.P1383938789553290268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A081307 (n + 1) - A000203 (n + 1)).toNat

end

end A063749.P1383938789553290268

namespace A063749

/-- `A004526(A081307(n+1)-A000203(n+1))` -/
def P1383938789553290268.Spec : Prop :=
  ∀ n, P1383938789553290268.a n = A063749 (n + 1)

end A063749

/-! ## A063749.P17158986042327579328

`A004526(A094471(n+1)-A065608(n+1))`
-/

namespace A063749.P17158986042327579328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A094471 (n + 1) - A065608 (n + 1)).toNat

end

end A063749.P17158986042327579328

namespace A063749

/-- `A004526(A094471(n+1)-A065608(n+1))` -/
def P17158986042327579328.Spec : Prop :=
  ∀ n, P17158986042327579328.a n = A063749 (n + 1)

end A063749

/-! ## A063749.P18123049937428381992

`A004526(A038040(n+1)-A129235(n+1))`
-/

namespace A063749.P18123049937428381992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A038040 (n + 1) - A129235 (n + 1)).toNat

end

end A063749.P18123049937428381992

namespace A063749

/-- `A004526(A038040(n+1)-A129235(n+1))` -/
def P18123049937428381992.Spec : Prop :=
  ∀ n, P18123049937428381992.a n = A063749 (n + 1)

end A063749

/-!
# A063750: Number of divisors (A000005) of the Wonderful Demlo numbers A002477.

The programs for A063750, there is no canonical definition to state claims against.
-/

/-! ## A063750.P5530117824006130397

`A006046(A070529(n+1)%A181896(n+4))`
-/

namespace A063750.P5530117824006130397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (Int.tmod (A070529 (n + 1)) (A181896 (n + 4))).toNat

end

end A063750.P5530117824006130397

/-! ## A063750.P3307670458215152059

`A064988(∏{e}[A239842(n+1), #*A070529(n+1)])`
-/

namespace A063750.P3307670458215152059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A070529 (n + 1)).toNat

end

end A063750.P3307670458215152059

/-! ## A063750.P7400519301920032998

`A064988(A070529(n+1)/∏{e}[A239842(n+1), #])`
-/

namespace A063750.P7400519301920032998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (SequenceMachineLib.roundAway ((A070529 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ))).toNat

end

end A063750.P7400519301920032998

/-! ## A063750.P10101235195649397972

`A003961(A070529(n+1))%A104264(n+1)`
-/

namespace A063750.P10101235195649397972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (A070529 (n + 1)).toNat) (A104264 (n + 1))

end

end A063750.P10101235195649397972

/-! ## A063750.P13322841606026416954

`A332818(A070529(n+1))%A000959(A004822(n+1))`
-/

namespace A063750.P13322841606026416954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332818 (A070529 (n + 1)).toNat) (A000959 (A004822 (n + 1)).toNat)

end

end A063750.P13322841606026416954

/-!
# A063751: a(n) = phi(A002477(n)).

The programs for A063751, there is no canonical definition to state claims against.
-/

/-! ## A063751.P9762950543336601951

`∑[10^n]*∏{p}[∑[10^n], #-1]`
-/

namespace A063751.P9762950543336601951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))

end

end A063751.P9762950543336601951

/-! ## A063751.P355250835831458103

`∏{p}[∑[A011557(n)], A345988(#)]`
-/

namespace A063751.P355250835831458103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A345988 p

end

end A063751.P355250835831458103

/-!
# A063752: Numbers k such that cototient(k) is a square.

The programs for A063752, the canonical program `A063752.P3558507756577169673` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063752 has offset 1).

The definition of A063752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5581 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063752.P3558507756577169673

`eq[1, A325321(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A063752

/-- `eq[1, A325321(n+1)]+1` -/
def P3558507756577169673.Spec : Prop :=
  ∀ n, (P3558507756577169673.a n : ℤ) = A063752 (n + 1)

theorem P3558507756577169673.correct : P3558507756577169673.Spec := by
  intro n
  simp only [A063752, Nat.add_sub_cancel]

end A063752

/-! ## A063752.P12347486772137483372

`record[(n+1)/A249307(n+1-A000010(n+1))]`
-/

namespace A063752.P12347486772137483372
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A249307 ((n + 1 : ℤ) - A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063752.P12347486772137483372

namespace A063752

/-- `record[(n+1)/A249307(n+1-A000010(n+1))]` -/
def P12347486772137483372.Spec : Prop :=
  ∀ n, P12347486772137483372.a n = (A063752 (n + 1) : ℚ)

end A063752

/-! ## A063752.P16637360801032430590

`record[(n+1)*A010052(n+1-A000010(n+1))]`
-/

namespace A063752.P16637360801032430590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010052 ((n + 1 : ℤ) - A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063752.P16637360801032430590

namespace A063752

/-- `record[(n+1)*A010052(n+1-A000010(n+1))]` -/
def P16637360801032430590.Spec : Prop :=
  ∀ n, P16637360801032430590.a n = A063752 (n + 1)

end A063752

/-! ## A063752.P1152030000563149496

`filter[A000401(n+2), A325321(#)]`
-/

namespace A063752.P1152030000563149496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325321 (f1 j).toNat = 1) n)

end

end A063752.P1152030000563149496

namespace A063752

/-- `filter[A000401(n+2), A325321(#)]` -/
def P1152030000563149496.Spec : Prop :=
  ∀ n, P1152030000563149496.a n = A063752 (n + 1)

end A063752

/-! ## A063752.P11464178497965789848

`filter[A164514(n+1), A325321(#)]`
-/

namespace A063752.P11464178497965789848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325321 (f1 j).toNat = 1) n)

end

end A063752.P11464178497965789848

namespace A063752

/-- `filter[A164514(n+1), A325321(#)]` -/
def P11464178497965789848.Spec : Prop :=
  ∀ n, P11464178497965789848.a n = A063752 (n + 1)

end A063752

/-! ## A063752.P7889927740684544126

`filter[A072099(n+1), A325321(#)]`
-/

namespace A063752.P7889927740684544126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325321 (f1 j).toNat = 1) n)

end

end A063752.P7889927740684544126

namespace A063752

/-- `filter[A072099(n+1), A325321(#)]` -/
def P7889927740684544126.Spec : Prop :=
  ∀ n, P7889927740684544126.a n = A063752 (n + 1)

end A063752

/-! ## A063752.P10106238014410949294

`filter[A213367(n+1), A325321(#)]`
-/

namespace A063752.P10106238014410949294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325321 (f1 j).toNat = 1) n)

end

end A063752.P10106238014410949294

namespace A063752

/-- `filter[A213367(n+1), A325321(#)]` -/
def P10106238014410949294.Spec : Prop :=
  ∀ n, P10106238014410949294.a n = A063752 (n + 1)

end A063752

/-! ## A063752.P12726064083273303295

`filter[n+1, A325321(#)]`
-/

namespace A063752.P12726064083273303295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325321 (f1 j) = 1) n)

end

end A063752.P12726064083273303295

namespace A063752

/-- `filter[n+1, A325321(#)]` -/
def P12726064083273303295.Spec : Prop :=
  ∀ n, (P12726064083273303295.a n : ℤ) = A063752 (n + 1)

end A063752

/-! ## A063752.P5279974728065431553

`eq[1, A010052(A051953(n+1))]+1`
-/

namespace A063752.P5279974728065431553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A051953 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063752.P5279974728065431553

namespace A063752

/-- `eq[1, A010052(A051953(n+1))]+1` -/
def P5279974728065431553.Spec : Prop :=
  ∀ n, (P5279974728065431553.a n : ℤ) = A063752 (n + 1)

end A063752

/-! ## A063752.P890672878700109394

`record[A133310(n)*A325321(A133310(n))]`
-/

namespace A063752.P890672878700109394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n * A325321 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063752.P890672878700109394

namespace A063752

/-- `record[A133310(n)*A325321(A133310(n))]` -/
def P890672878700109394.Spec : Prop :=
  ∀ n, P890672878700109394.a n = A063752 (n + 1)

end A063752

/-!
# A063754: Dirichlet convolution of totient and cototient.

The programs for A063754, the canonical program `A063754.P8530571032129736586` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063754 has offset 1).

The definition of A063754 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, A029935, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063754.P8530571032129736586

`A018804(n+1)-A029935(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A063754

/-- `A018804(n+1)-A029935(n+1)` -/
def P8530571032129736586.Spec : Prop :=
  ∀ n, P8530571032129736586.a n = A063754 (n + 1)

theorem P8530571032129736586.correct : P8530571032129736586.Spec := by
  intro n
  simp only [A063754, Nat.add_sub_cancel]

end A063754

/-! ## A063754.P3028324457854291923

`∑{d}[n+1, #*A062790((n+1)/#)]`
-/

namespace A063754.P3028324457854291923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A062790 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063754.P3028324457854291923

namespace A063754

/-- `∑{d}[n+1, #*A062790((n+1)/#)]` -/
def P3028324457854291923.Spec : Prop :=
  ∀ n, P3028324457854291923.a n = A063754 (n + 1)

end A063754

/-! ## A063754.P12838861365992947073

`∑{d}[n+1, A001065(#)*A007431((n+1)/#)]`
-/

namespace A063754.P12838861365992947073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A007431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063754.P12838861365992947073

namespace A063754

/-- `∑{d}[n+1, A001065(#)*A007431((n+1)/#)]` -/
def P12838861365992947073.Spec : Prop :=
  ∀ n, P12838861365992947073.a n = A063754 (n + 1)

end A063754

/-! ## A063754.P10104075740478133919

`∑{d}[n+1, A000010(#)*A051953((n+1)/#)]`
-/

namespace A063754.P10104075740478133919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A051953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063754.P10104075740478133919

namespace A063754

/-- `∑{d}[n+1, A000010(#)*A051953((n+1)/#)]` -/
def P10104075740478133919.Spec : Prop :=
  ∀ n, P10104075740478133919.a n = A063754 (n + 1)

end A063754

/-! ## A063754.P11171844559876608116

`∑{d}[n+1, A018804(#)*A157658((n+1)/#)]`
-/

namespace A063754.P11171844559876608116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063754.P11171844559876608116

namespace A063754

/-- `∑{d}[n+1, A018804(#)*A157658((n+1)/#)]` -/
def P11171844559876608116.Spec : Prop :=
  ∀ n, P11171844559876608116.a n = A063754 (n + 1)

end A063754

/-! ## A063754.P6496818762933439424

`∑{d}[n+1, A007432(#)*A211779((n+1)/#)]`
-/

namespace A063754.P6496818762933439424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A211779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063754.P6496818762933439424

namespace A063754

/-- `∑{d}[n+1, A007432(#)*A211779((n+1)/#)]` -/
def P6496818762933439424.Spec : Prop :=
  ∀ n, P6496818762933439424.a n = A063754 (n + 1)

end A063754

/-! ## A063754.P15256877085323672360

`∑{d}[n+1, A007427(#)*A245211((n+1)/#)]`
-/

namespace A063754.P15256877085323672360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A245211 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063754.P15256877085323672360

namespace A063754

/-- `∑{d}[n+1, A007427(#)*A245211((n+1)/#)]` -/
def P15256877085323672360.Spec : Prop :=
  ∀ n, P15256877085323672360.a n = A063754 (n + 1)

end A063754

/-! ## A063754.P6548908225804985005

`∑{d}[n+1, A300719(#)*A349131((n+1)/#)]`
-/

namespace A063754.P6548908225804985005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300719 d * A349131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063754.P6548908225804985005

namespace A063754

/-- `∑{d}[n+1, A300719(#)*A349131((n+1)/#)]` -/
def P6548908225804985005.Spec : Prop :=
  ∀ n, P6548908225804985005.a n = A063754 (n + 1)

end A063754

/-! ## A063754.P970963172318967502

`∑{d}[n+1, A029935(#)*A057427((n+1)/#-1)]`
-/

namespace A063754.P970963172318967502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A057427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A063754.P970963172318967502

namespace A063754

/-- `∑{d}[n+1, A029935(#)*A057427((n+1)/#-1)]` -/
def P970963172318967502.Spec : Prop :=
  ∀ n, P970963172318967502.a n = A063754 (n + 1)

end A063754

/-!
# A063755: Squares k which are divisible by phi(k).

The programs for A063755, there is no canonical definition to state claims against.
-/

/-! ## A063755.P1414922458669401631

`A007694(n+1)²`
-/

namespace A063755.P1414922458669401631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1) ^ 2

end

end A063755.P1414922458669401631

/-! ## A063755.P6002768190181162354

`record[A007694(A344180(n))²]`
-/

namespace A063755.P6002768190181162354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (A344180 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063755.P6002768190181162354

/-! ## A063755.P11263671024514559712

`(A187778(n+1)/A122553(n))²`
-/

namespace A063755.P11263671024514559712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A187778 (n + 1) : ℚ) / (A122553 n : ℚ)) ^ 2

end

end A063755.P11263671024514559712

/-! ## A063755.P88498130359069867

`A007694(n+1)^A020639(2*(n+1))`
-/

namespace A063755.P88498130359069867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007694 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A063755.P88498130359069867

/-! ## A063755.P18434626470511592253

`(A007694(n+1)%A007694(n+2))^2`
-/

namespace A063755.P18434626470511592253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007694 (n + 1)) (A007694 (n + 2)) ^ 2

end

end A063755.P18434626470511592253

/-! ## A063755.P9000039654597751207

`A007694(n+1)^(A007694(n+2)/A003586(n+1))`
-/

namespace A063755.P9000039654597751207
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007694 (n + 1) : ℝ) ^ ((A007694 (n + 2) : ℚ) / (A003586 (n + 1) : ℚ) : ℝ)

end

end A063755.P9000039654597751207

/-! ## A063755.P11385860127447418495

`A007694(A008619(2*n+1))*A007694(n+1)`
-/

namespace A063755.P11385860127447418495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (A008619 (2 * n + 1)).toNat * A007694 (n + 1)

end

end A063755.P11385860127447418495

/-! ## A063755.P15263482861455904140

`∩[A007694(n+1), A025620(n+1)]`
-/

namespace A063755.P15263482861455904140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063755.P15263482861455904140

/-! ## A063755.P14661949593998767546

`∩[A025620(n+1), A283808(n+1)]`
-/

namespace A063755.P14661949593998767546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063755.P14661949593998767546

/-! ## A063755.P18061688259032567595

`(A000423(n+2)/3)²`
-/

namespace A063755.P18061688259032567595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000423 (n + 2) : ℚ) / 3) ^ 2

end

end A063755.P18061688259032567595

/-! ## A063755.P13642022952744941329

`∩[A007694(n+1), A352618(n+1)]`
-/

namespace A063755.P13642022952744941329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063755.P13642022952744941329

/-! ## A063755.P15825766954410924150

`∩[A283808(n+1), A352618(n+1)]`
-/

namespace A063755.P15825766954410924150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063755.P15825766954410924150

/-! ## A063755.P17700009836088800871

`∩[A003586(n+1), A373559(n+1)]`
-/

namespace A063755.P17700009836088800871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063755.P17700009836088800871

/-! ## A063755.P10089470070513373573

`∩[A007694(n+1), A373559(n+1)]`
-/

namespace A063755.P10089470070513373573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063755.P10089470070513373573

/-! ## A063755.P10174253285531781218

`∩[A025611(n+1), A373559(n+1)]`
-/

namespace A063755.P10174253285531781218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063755.P10174253285531781218

/-! ## A063755.P10189310500451897665

`∩[A025613(n+1), A373559(n+1)]`
-/

namespace A063755.P10189310500451897665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063755.P10189310500451897665

/-! ## A063755.P7489785859157084695

`∩[A025620(n+1), A373559(n+1)]`
-/

namespace A063755.P7489785859157084695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063755.P7489785859157084695

/-! ## A063755.P3305715067067956599

`∩[A036667(n+1), A373559(n+1)]`
-/

namespace A063755.P3305715067067956599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063755.P3305715067067956599

/-! ## A063755.P6139656992165297112

`∩[A257997(n+1), A373559(n+1)]`
-/

namespace A063755.P6139656992165297112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063755.P6139656992165297112

/-! ## A063755.P123912512387288636

`∩[A258023(n+1), A373559(n+1)]`
-/

namespace A063755.P123912512387288636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063755.P123912512387288636

/-!
# A063756: Number of groups of order <= n.

The programs for A063756, there is no canonical definition to state claims against.
-/

/-! ## A063756.P15921101677254086059

`∑[A000001(n+1)]`
-/

namespace A063756.P15921101677254086059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063756.P15921101677254086059

/-! ## A063756.P2662564505263147703

`∑[sqrt(A297420(n+1))]`
-/

namespace A063756.P2662564505263147703
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297420 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063756.P2662564505263147703

/-! ## A063756.P8175715095789222364

`∑[A060689(n+1)+A000688(n+1)]`
-/

namespace A063756.P8175715095789222364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n + 1) + A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063756.P8175715095789222364

/-! ## A063756.P1330970466959172764

`A063966(n+1)+∑[A060689(n+1)]`
-/

namespace A063756.P1330970466959172764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063966 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063756.P1330970466959172764

/-! ## A063756.P12600450135947012004

`∑[A060689(n+1)+∏{e}[n+1, A000041(#)]]`
-/

namespace A063756.P12600450135947012004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n + 1) + ∏ p ∈ Nat.primeFactors (f2 n), A000041 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063756.P12600450135947012004

/-! ## A063756.P3419320625744868667

`∑[A060689(n+1)+∏{e}[n+1, A242699(#)]]`
-/

namespace A063756.P3419320625744868667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n + 1) + ∏ p ∈ Nat.primeFactors (f2 n), A242699 (Nat.factorization (f2 n) p + 64)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063756.P3419320625744868667

/-! ## A063756.P2096424909040629670

`∑[A060689(n+1)+∏{e}[n+1, A332746(#)]]`
-/

namespace A063756.P2096424909040629670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n + 1) + ∏ p ∈ Nat.primeFactors (f2 n), A332746 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063756.P2096424909040629670

/-! ## A063756.P2162085468544371529

`∑[A060689(n+1)+A066060(n+1)-A088806(n+1)]`
-/

namespace A063756.P2162085468544371529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n + 1) + (A066060 (n + 1) - A088806 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063756.P2162085468544371529

/-! ## A063756.P18238764244351475549

`∑[A238877(2*n+1)+A060689(n+1)]`
-/

namespace A063756.P18238764244351475549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (2 * n + 1) + A060689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063756.P18238764244351475549

/-! ## A063756.P15236994732360357556

`∑[A238877(2*n+1)+A238877(2*(n+1))]`
-/

namespace A063756.P15236994732360357556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (2 * n + 1) + A238877 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063756.P15236994732360357556

/-!
# A063757: Expansion of g.f. (1+3*x+2*x^2)/((1-x)*(1-2*x^2)).

The programs for A063757, the canonical program `A063757.P10025757676693359246` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063757 has offset 0).

The definition of A063757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+2x^2)/(1-x-2x^2+2x^3))` (program `A063757.P10025757676693359246`, by `A063757.P10025757676693359246.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063757.P10025757676693359246

`ogf((1+3x+2x^2)/(1-x-2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063757

/-- `ogf((1+3x+2x^2)/(1-x-2x^2+2x^3))` -/
def P10025757676693359246.Spec : Prop :=
  ∀ n, P10025757676693359246.a n = A063757 n

theorem P10025757676693359246.correct : P10025757676693359246.Spec := by
  intro n
  simp only [A063757]

end A063757

/-! ## A063757.P5975986257136176136

`A070875(n+1)-6`
-/

namespace A063757.P5975986257136176136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 (n + 1) - 6

end

end A063757.P5975986257136176136

namespace A063757

/-- `A070875(n+1)-6` -/
def P5975986257136176136.Spec : Prop :=
  ∀ n, P5975986257136176136.a n = A063757 n

end A063757

/-! ## A063757.P5554852189513029001

`a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=4, a(2)=8`
-/

namespace A063757.P5554852189513029001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 8] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3)

end

end A063757.P5554852189513029001

namespace A063757

/-- `a(n-1)+2*a(n-2)-2*a(n-3)` -/
def P5554852189513029001.Spec : Prop :=
  ∀ n, P5554852189513029001.a n = A063757 n

end A063757

/-! ## A063757.P13617316030162952181

`2*(a(n-2)+3)` with `a(0)=1, a(1)=4`
-/

namespace A063757.P13617316030162952181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * (a (n - 2) + 3)

end

end A063757.P13617316030162952181

namespace A063757

/-- `2*(a(n-2)+3)` -/
def P13617316030162952181.Spec : Prop :=
  ∀ n, (P13617316030162952181.a n : ℤ) = A063757 n

end A063757

/-! ## A063757.P1314985872158929970

`∑[2*a(n-2)]` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A063757.P1314985872158929970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063757.P1314985872158929970

namespace A063757

/-- `∑[2*a(n-2)]` -/
def P1314985872158929970.Spec : Prop :=
  ∀ n, (P1314985872158929970.a n : ℤ) = A063757 n

end A063757

/-! ## A063757.P10335389822511070015

`lcm(2, a(n-2)+3)` with `a(0)=1, a(1)=4, a(2)=8`
-/

namespace A063757.P10335389822511070015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 8] fun n a =>
  Nat.lcm 2 (a (n - 2) + 3)

end

end A063757.P10335389822511070015

namespace A063757

/-- `lcm(2, a(n-2)+3)` -/
def P10335389822511070015.Spec : Prop :=
  ∀ n, (P10335389822511070015.a n : ℤ) = A063757 n

end A063757

/-! ## A063757.P7768785632444334761

`8-2*(1-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A063757.P7768785632444334761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  8 - 2 * (1 - a (n - 2))

end

end A063757.P7768785632444334761

namespace A063757

/-- `8-2*(1-a(n-2))` -/
def P7768785632444334761.Spec : Prop :=
  ∀ n, P7768785632444334761.a n = A063757 n

end A063757

/-! ## A063757.P3586285878053022904

`a(n-2)+a(n-2)+6` with `a(0)=1, a(1)=4`
-/

namespace A063757.P3586285878053022904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (a (n - 2) + 6)

end

end A063757.P3586285878053022904

namespace A063757

/-- `a(n-2)+a(n-2)+6` -/
def P3586285878053022904.Spec : Prop :=
  ∀ n, (P3586285878053022904.a n : ℤ) = A063757 n

end A063757

/-! ## A063757.P3354389095174111710

`n-∑[a(n-2)-(1-a(n-2))]` with `a(0)=-1, a(1)=-2`
-/

namespace A063757.P3354389095174111710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -2] fun n f1 =>
  f1 (n - 2) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063757.P3354389095174111710

namespace A063757

/-- `n-∑[a(n-2)-(1-a(n-2))]` -/
def P3354389095174111710.Spec : Prop :=
  ∀ n, P3354389095174111710.a n = A063757 n

end A063757

/-! ## A063757.P2984369262408224236

`∑[A063759(n)]`
-/

namespace A063757.P2984369262408224236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063757.P2984369262408224236

namespace A063757

/-- `∑[A063759(n)]` -/
def P2984369262408224236.Spec : Prop :=
  ∀ n, P2984369262408224236.a n = A063757 n

end A063757

/-! ## A063757.P15575638106736278443

`A133257(n)-3`
-/

namespace A063757.P15575638106736278443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133257 n - 3

end

end A063757.P15575638106736278443

namespace A063757

/-- `A133257(n)-3` -/
def P15575638106736278443.Spec : Prop :=
  ∀ n, P15575638106736278443.a n = A063757 n

end A063757

/-! ## A063757.P14883889202242908594

`∑[A343177(n)-3]`
-/

namespace A063757.P14883889202242908594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343177 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063757.P14883889202242908594

namespace A063757

/-- `∑[A343177(n)-3]` -/
def P14883889202242908594.Spec : Prop :=
  ∀ n, P14883889202242908594.a n = A063757 n

end A063757

/-! ## A063757.P4994353990307455170

`∑[A052955(n)]+n`
-/

namespace A063757.P4994353990307455170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A063757.P4994353990307455170

namespace A063757

/-- `∑[A052955(n)]+n` -/
def P4994353990307455170.Spec : Prop :=
  ∀ n, P4994353990307455170.a n = A063757 n

end A063757

/-! ## A063757.P6524273305085864751

`A010737(n+1)-5`
-/

namespace A063757.P6524273305085864751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010737 (n + 1) - 5

end

end A063757.P6524273305085864751

namespace A063757

/-- `A010737(n+1)-5` -/
def P6524273305085864751.Spec : Prop :=
  ∀ n, P6524273305085864751.a n = A063757 n

end A063757

/-! ## A063757.P6051658305838507385

`∑[A164090(n+1)]-1`
-/

namespace A063757.P6051658305838507385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A063757.P6051658305838507385

namespace A063757

/-- `∑[A164090(n+1)]-1` -/
def P6051658305838507385.Spec : Prop :=
  ∀ n, P6051658305838507385.a n = A063757 n

end A063757

/-! ## A063757.P1934068145527027574

`∑[A029744(n+2)]-1`
-/

namespace A063757.P1934068145527027574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A063757.P1934068145527027574

namespace A063757

/-- `∑[A029744(n+2)]-1` -/
def P1934068145527027574.Spec : Prop :=
  ∀ n, P1934068145527027574.a n = A063757 n

end A063757

/-! ## A063757.P3685208183662532910

`∑[∑[abs(A117575(n))]]+n`
-/

namespace A063757.P3685208183662532910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117575 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A063757.P3685208183662532910

namespace A063757

/-- `∑[∑[abs(A117575(n))]]+n` -/
def P3685208183662532910.Spec : Prop :=
  ∀ n, P3685208183662532910.a n = A063757 n

end A063757

/-! ## A063757.P12500212274349992808

`A200678(2*n+3)-2`
-/

namespace A063757.P12500212274349992808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200678 (2 * n + 3) - 2

end

end A063757.P12500212274349992808

namespace A063757

/-- `A200678(2*n+3)-2` -/
def P12500212274349992808.Spec : Prop :=
  ∀ n, P12500212274349992808.a n = A063757 n

end A063757

/-! ## A063757.P2143524105611798516

`A163978(n)+a(n-1)` with `a(0)=1`
-/

namespace A063757.P2143524105611798516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163978 n + a (n - 1)

end

end A063757.P2143524105611798516

namespace A063757

/-- `A163978(n)+a(n-1)` -/
def P2143524105611798516.Spec : Prop :=
  ∀ n, P2143524105611798516.a n = A063757 n

end A063757

/-! ## A063757.P12637400259552620914

`A131572(n)+A061776(n)`
-/

namespace A063757.P12637400259552620914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 n + A061776 n

end

end A063757.P12637400259552620914

namespace A063757

/-- `A131572(n)+A061776(n)` -/
def P12637400259552620914.Spec : Prop :=
  ∀ n, P12637400259552620914.a n = A063757 n

end A063757

/-!
# A063758: a(0)=1, a(n) = 2*Fibonacci(n+4) - 6.

The programs for A063758, the canonical program `A063758.P6067888829019265093` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063758 has offset 0).

The definition of A063758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063758.P12177100464744199742

`ogf((1+2x+2x^2+x^3)/(1-2x+x^3))`
-/

namespace A063758.P12177100464744199742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 1] [1, -2, 0, 1] n

end

end A063758.P12177100464744199742

namespace A063758

/-- `ogf((1+2x+2x^2+x^3)/(1-2x+x^3))` -/
def P12177100464744199742.Spec : Prop :=
  ∀ n, P12177100464744199742.a n = A063758 n

end A063758

/-! ## A063758.P14680998503885810056

`ceil(ϕ*(a(n-1)+2))` with `a(0)=1, a(1)=4`
-/

namespace A063758.P14680998503885810056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) + 2 : ℝ)⌉

end

end A063758.P14680998503885810056

namespace A063758

/-- `ceil(ϕ*(a(n-1)+2))` -/
def P14680998503885810056.Spec : Prop :=
  ∀ n, P14680998503885810056.a n = A063758 n

end A063758

/-! ## A063758.P12586989481057136725

`floor(ϕ*a(n-1))+4` with `a(0)=1, a(1)=4`
-/

namespace A063758.P12586989481057136725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋ + 4

end

end A063758.P12586989481057136725

namespace A063758

/-- `floor(ϕ*a(n-1))+4` -/
def P12586989481057136725.Spec : Prop :=
  ∀ n, P12586989481057136725.a n = A063758 n

end A063758

/-! ## A063758.P16571875042796358270

`round(ϕ*a(n-1))+4` with `a(0)=1, a(1)=4`
-/

namespace A063758.P16571875042796358270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) + 4

end

end A063758.P16571875042796358270

namespace A063758

/-- `round(ϕ*a(n-1))+4` -/
def P16571875042796358270.Spec : Prop :=
  ∀ n, P16571875042796358270.a n = A063758 n

end A063758

/-! ## A063758.P15495577366069468490

`∑[round(ϕ*a(n-1))]` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A063758.P15495577366069468490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063758.P15495577366069468490

namespace A063758

/-- `∑[round(ϕ*a(n-1))]` -/
def P15495577366069468490.Spec : Prop :=
  ∀ n, P15495577366069468490.a n = A063758 n

end A063758

/-! ## A063758.P6067888829019265093

`a(n-1)+a(n-2)+6` with `a(0)=1, a(1)=4, a(2)=10`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063758

/-- `a(n-1)+a(n-2)+6` -/
def P6067888829019265093.Spec : Prop :=
  ∀ n, (P6067888829019265093.a n : ℤ) = A063758 n

theorem P6067888829019265093.correct : P6067888829019265093.Spec := by
  intro n
  simp only [A063758]

end A063758

/-! ## A063758.P15670760434578696596

`∑[A054886(n)]`
-/

namespace A063758.P15670760434578696596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063758.P15670760434578696596

namespace A063758

/-- `∑[A054886(n)]` -/
def P15670760434578696596.Spec : Prop :=
  ∀ n, P15670760434578696596.a n = A063758 n

end A063758

/-! ## A063758.P5097900656212335744

`A163714(n+2)-6`
-/

namespace A063758.P5097900656212335744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163714 (n + 2) - 6

end

end A063758.P5097900656212335744

namespace A063758

/-- `A163714(n+2)-6` -/
def P5097900656212335744.Spec : Prop :=
  ∀ n, P5097900656212335744.a n = A063758 n

end A063758

/-! ## A063758.P6972671685176153695

`∑[A256007(3*n)]+1`
-/

namespace A063758.P6972671685176153695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256007 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A063758.P6972671685176153695

namespace A063758

/-- `∑[A256007(3*n)]+1` -/
def P6972671685176153695.Spec : Prop :=
  ∀ n, P6972671685176153695.a n = A063758 n

end A063758

/-! ## A063758.P12482900865347669920

`∑[A330010(n+1)/3]`
-/

namespace A063758.P12482900865347669920
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330010 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063758.P12482900865347669920

namespace A063758

/-- `∑[A330010(n+1)/3]` -/
def P12482900865347669920.Spec : Prop :=
  ∀ n, P12482900865347669920.a n = (A063758 n : ℚ)

end A063758

/-! ## A063758.P2891608012085908044

`floor(2*ϕ*(A000045(n+3)-ϕ))`
-/

namespace A063758.P2891608012085908044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.goldenRatio * ((A000045 (n + 3) : ℝ) - Real.goldenRatio))⌋

end

end A063758.P2891608012085908044

namespace A063758

/-- `floor(2*ϕ*(A000045(n+3)-ϕ))` -/
def P2891608012085908044.Spec : Prop :=
  ∀ n, P2891608012085908044.a n = A063758 n

end A063758

/-! ## A063758.P15634605520786615920

`a(n-1)+2*A000045(n+2)` with `a(0)=1, a(1)=4`
-/

namespace A063758.P15634605520786615920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + 2 * A000045 (n + 2)

end

end A063758.P15634605520786615920

namespace A063758

/-- `a(n-1)+2*A000045(n+2)` -/
def P15634605520786615920.Spec : Prop :=
  ∀ n, P15634605520786615920.a n = A063758 n

end A063758

/-! ## A063758.P14593216340768654212

`∑[A256007(A008486(n))]`
-/

namespace A063758.P14593216340768654212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256007 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063758.P14593216340768654212

namespace A063758

/-- `∑[A256007(A008486(n))]` -/
def P14593216340768654212.Spec : Prop :=
  ∀ n, P14593216340768654212.a n = A063758 n

end A063758

/-! ## A063758.P3112980034570642887

`A192960(n)+A004273(n)`
-/

namespace A063758.P3112980034570642887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192960 n + A004273 n

end

end A063758.P3112980034570642887

namespace A063758

/-- `A192960(n)+A004273(n)` -/
def P3112980034570642887.Spec : Prop :=
  ∀ n, P3112980034570642887.a n = A063758 n

end A063758

/-! ## A063758.P15837433673243931413

`A192748(n+1)+A008486(n)`
-/

namespace A063758.P15837433673243931413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192748 (n + 1) + A008486 n

end

end A063758.P15837433673243931413

namespace A063758

/-- `A192748(n+1)+A008486(n)` -/
def P15837433673243931413.Spec : Prop :=
  ∀ n, P15837433673243931413.a n = A063758 n

end A063758

/-! ## A063758.P8939629199750307855

`A166863(n+1)+A057428(n)`
-/

namespace A063758.P8939629199750307855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166863 (n + 1) + A057428 n

end

end A063758.P8939629199750307855

namespace A063758

/-- `A166863(n+1)+A057428(n)` -/
def P8939629199750307855.Spec : Prop :=
  ∀ n, P8939629199750307855.a n = A063758 n

end A063758

/-! ## A063758.P3120620290463470247

`A166863(n+1)-A057427(n)`
-/

namespace A063758.P3120620290463470247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166863 (n + 1) - A057427 n

end

end A063758.P3120620290463470247

namespace A063758

/-- `A166863(n+1)-A057427(n)` -/
def P3120620290463470247.Spec : Prop :=
  ∀ n, P3120620290463470247.a n = A063758 n

end A063758

/-! ## A063758.P5316305326476222861

`A004277(n)+2*A001924(n)`
-/

namespace A063758.P5316305326476222861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + 2 * A001924 n

end

end A063758.P5316305326476222861

namespace A063758

/-- `A004277(n)+2*A001924(n)` -/
def P5316305326476222861.Spec : Prop :=
  ∀ n, P5316305326476222861.a n = A063758 n

end A063758

/-! ## A063758.P10761892448713439061

`A004277(n)+∑[A019274(n+2)]`
-/

namespace A063758.P10761892448713439061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063758.P10761892448713439061

namespace A063758

/-- `A004277(n)+∑[A019274(n+2)]` -/
def P10761892448713439061.Spec : Prop :=
  ∀ n, P10761892448713439061.a n = A063758 n

end A063758

/-! ## A063758.P17311286694749292530

`record[A124625(n)]+2*A001924(n)`
-/

namespace A063758.P17311286694749292530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * A001924 n

end

end A063758.P17311286694749292530

namespace A063758

/-- `record[A124625(n)]+2*A001924(n)` -/
def P17311286694749292530.Spec : Prop :=
  ∀ n, P17311286694749292530.a n = A063758 n

end A063758

/-!
# A063759: Spherical growth series for modular group.

The programs for A063759, the canonical program `A063759.P13169766541335737416` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063759 has offset 0).

The definition of A063759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063759.P13169766541335737416

`2*a(n-2)` with `a(0)=1, a(1)=3, a(2)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063759

/-- `2*a(n-2)` -/
def P13169766541335737416.Spec : Prop :=
  ∀ n, (P13169766541335737416.a n : ℤ) = A063759 n

theorem P13169766541335737416.correct : P13169766541335737416.Spec := by
  intro n
  simp only [A063759]

end A063759

/-! ## A063759.P7881498978144691858

`ogf((1+3x+2x^2)/(1-2x^2))`
-/

namespace A063759.P7881498978144691858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, 0, -2] n

end

end A063759.P7881498978144691858

namespace A063759

/-- `ogf((1+3x+2x^2)/(1-2x^2))` -/
def P7881498978144691858.Spec : Prop :=
  ∀ n, P7881498978144691858.a n = A063759 n

end A063759

/-! ## A063759.P4600108389816633557

`a(n-2)+a(n-2)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A063759.P4600108389816633557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  a (n - 2) + a (n - 2)

end

end A063759.P4600108389816633557

namespace A063759

/-- `a(n-2)+a(n-2)` -/
def P4600108389816633557.Spec : Prop :=
  ∀ n, (P4600108389816633557.a n : ℤ) = A063759 n

theorem P4600108389816633557.correct : P4600108389816633557.Spec := by
  intro n
  simp only [A063759, Nat.add_sub_cancel, A063759.P4600108389816633557.a, A063759.P13169766541335737416.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A063759

/-! ## A063759.P8047760866603693971

`a(n-2)/(1-1/2)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A063759.P8047760866603693971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  a (n - 2) / (1 - (1 : ℚ) / 2)

end

end A063759.P8047760866603693971

namespace A063759

/-- `a(n-2)/(1-1/2)` -/
def P8047760866603693971.Spec : Prop :=
  ∀ n, P8047760866603693971.a n = (A063759 n : ℚ)

end A063759

/-! ## A063759.P10271175628026161122

`1-floor(1-a(n-2)-a(n-2))` with `a(0)=1, a(1)=3, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A063759.P10271175628026161122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  1 - (1 - a (n - 2) - a (n - 2))

end

end A063759.P10271175628026161122

namespace A063759

/-- `1-floor(1-a(n-2)-a(n-2))` -/
def P10271175628026161122.Spec : Prop :=
  ∀ n, P10271175628026161122.a n = A063759 n

end A063759

/-! ## A063759.P17175223951352843140

`a(n-2)-(a(n-1)%2-a(n-2))` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A063759.P17175223951352843140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  a (n - 2) - (Int.tmod (a (n - 1)) 2 - a (n - 2))

end

end A063759.P17175223951352843140

namespace A063759

/-- `a(n-2)-(a(n-1)%2-a(n-2))` -/
def P17175223951352843140.Spec : Prop :=
  ∀ n, P17175223951352843140.a n = A063759 n

end A063759

/-! ## A063759.P11693345150827973720

`A343177(n)-3`
-/

namespace A063759.P11693345150827973720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343177 n - 3

end

end A063759.P11693345150827973720

namespace A063759

/-- `A343177(n)-3` -/
def P11693345150827973720.Spec : Prop :=
  ∀ n, P11693345150827973720.a n = A063759 n

end A063759

/-! ## A063759.P5402255914379811730

`abs(Δ[Δ[A131575(n)]])`
-/

namespace A063759.P5402255914379811730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A063759.P5402255914379811730

namespace A063759

/-- `abs(Δ[Δ[A131575(n)]])` -/
def P5402255914379811730.Spec : Prop :=
  ∀ n, P5402255914379811730.a n = A063759 n

end A063759

/-! ## A063759.P4676657089870489793

`A029744(ceil(sqrt(∑[2*n]))+1)`
-/

namespace A063759.P4676657089870489793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 1).toNat

end

end A063759.P4676657089870489793

namespace A063759

/-- `A029744(ceil(sqrt(∑[2*n]))+1)` -/
def P4676657089870489793.Spec : Prop :=
  ∀ n, P4676657089870489793.a n = A063759 n

end A063759

/-! ## A063759.P771736456793252234

`A029744(n)+a(n-2)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A063759.P771736456793252234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  A029744 n + a (n - 2)

end

end A063759.P771736456793252234

namespace A063759

/-- `A029744(n)+a(n-2)` -/
def P771736456793252234.Spec : Prop :=
  ∀ n, P771736456793252234.a n = A063759 n

end A063759

/-! ## A063759.P7556700856177121650

`A158780(n+1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A063759.P7556700856177121650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A158780 (n + 1) + a (n - 1)

end

end A063759.P7556700856177121650

namespace A063759

/-- `A158780(n+1)+a(n-1)` -/
def P7556700856177121650.Spec : Prop :=
  ∀ n, P7556700856177121650.a n = A063759 n

end A063759

/-! ## A063759.P17289545113865088590

`A016116(n-1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A063759.P17289545113865088590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A016116 (n - 1) + a (n - 1)

end

end A063759.P17289545113865088590

namespace A063759

/-- `A016116(n-1)+a(n-1)` -/
def P17289545113865088590.Spec : Prop :=
  ∀ n, P17289545113865088590.a n = A063759 n

end A063759

/-! ## A063759.P13835937893358941181

`A131572(n-1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A063759.P13835937893358941181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A131572 (n - 1) + a (n - 1)

end

end A063759.P13835937893358941181

namespace A063759

/-- `A131572(n-1)+a(n-1)` -/
def P13835937893358941181.Spec : Prop :=
  ∀ n, P13835937893358941181.a n = A063759 n

end A063759

/-! ## A063759.P14225122319982909384

`A060546(n-2)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A063759.P14225122319982909384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A060546 (n - 2) + a (n - 1)

end

end A063759.P14225122319982909384

namespace A063759

/-- `A060546(n-2)+a(n-1)` -/
def P14225122319982909384.Spec : Prop :=
  ∀ n, P14225122319982909384.a n = A063759 n

end A063759

/-! ## A063759.P4938453178075336641

`A029747(∑[A000034(n)])`
-/

namespace A063759.P4938453178075336641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A063759.P4938453178075336641

namespace A063759

/-- `A029747(∑[A000034(n)])` -/
def P4938453178075336641.Spec : Prop :=
  ∀ n, P4938453178075336641.a n = A063759 n

end A063759

/-! ## A063759.P3507769968973134888

`record[A029744(A052938(n))]`
-/

namespace A063759.P3507769968973134888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063759.P3507769968973134888

namespace A063759

/-- `record[A029744(A052938(n))]` -/
def P3507769968973134888.Spec : Prop :=
  ∀ n, P3507769968973134888.a n = A063759 n

end A063759

/-! ## A063759.P15909491601069854895

`A029747(A032766(n+1))`
-/

namespace A063759.P15909491601069854895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A032766 (n + 1)).toNat

end

end A063759.P15909491601069854895

namespace A063759

/-- `A029747(A032766(n+1))` -/
def P15909491601069854895.Spec : Prop :=
  ∀ n, P15909491601069854895.a n = A063759 n

end A063759

/-! ## A063759.P2532236210542033334

`A029750(A092535(n+1))`
-/

namespace A063759.P2532236210542033334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (A092535 (n + 1)).toNat

end

end A063759.P2532236210542033334

namespace A063759

/-- `A029750(A092535(n+1))` -/
def P2532236210542033334.Spec : Prop :=
  ∀ n, P2532236210542033334.a n = A063759 n

end A063759

/-! ## A063759.P15073054640494160954

`A029750(A058992(n+2))`
-/

namespace A063759.P15073054640494160954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (A058992 (n + 2)).toNat

end

end A063759.P15073054640494160954

namespace A063759

/-- `A029750(A058992(n+2))` -/
def P15073054640494160954.Spec : Prop :=
  ∀ n, P15073054640494160954.a n = A063759 n

end A063759

/-! ## A063759.P9107229640971998081

`A057427(n)+A052955(n)`
-/

namespace A063759.P9107229640971998081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A052955 n

end

end A063759.P9107229640971998081

namespace A063759

/-- `A057427(n)+A052955(n)` -/
def P9107229640971998081.Spec : Prop :=
  ∀ n, P9107229640971998081.a n = A063759 n

end A063759

/-!
# A063760: Numbers whose sum of non-unitary divisors is a prime and sets a new record for such primes.

The programs for A063760, there is no canonical definition to state claims against.
-/

/-! ## A063760.P10504070913557376072

`record[A343066(record[A027935(n)])]`
-/

namespace A063760.P10504070913557376072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343066 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063760.P10504070913557376072

/-! ## A063760.P5371528664125727865

`record[A282426(A317125(3*n+2))²]`
-/

namespace A063760.P5371528664125727865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282426 (A317125 (3 * n + 2)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063760.P5371528664125727865

/-!
# A063761: Arrange 1-digit numbers in alphabetical order in Italian, then the 2-digit numbers, then the 3-digit numbers, etc.

The programs for A063761, there is no canonical definition to state claims against.
-/

/-! ## A063761.P11704823258414511853

`A097897(lt[A000700(n), A097915(n+1)])`
-/

namespace A063761.P11704823258414511853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097897 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A063761.P11704823258414511853

/-! ## A063761.P10594490971055750507

`A097897(lt[A097913(n+2), A097915(n+1)])`
-/

namespace A063761.P10594490971055750507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097913 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097897 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A063761.P10594490971055750507

/-! ## A063761.P9338480186588119146

`A097897(A033621(n+1))`
-/

namespace A063761.P9338480186588119146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097897 (A033621 (n + 1)).toNat

end

end A063761.P9338480186588119146

/-! ## A063761.P9238177259956080411

`A097897(A249157(n+2))`
-/

namespace A063761.P9238177259956080411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097897 (A249157 (n + 2)).toNat

end

end A063761.P9238177259956080411

/-! ## A063761.P8609910237909645599

`A097897(A029731(n+1)+1)`
-/

namespace A063761.P8609910237909645599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097897 (A029731 (n + 1) + 1).toNat

end

end A063761.P8609910237909645599

/-!
# A063762: Sqrt(n)-rough nonprimes: largest prime factor of n (A006530) >= sqrt(n).

The programs for A063762, the canonical program `A063762.P4601509501810094646` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063762 has offset 1).

The definition of A063762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063762.P5420682346854237774

`eq[2, A179953(n+1)]+1`
-/

namespace A063762.P5420682346854237774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063762.P5420682346854237774

namespace A063762

/-- `eq[2, A179953(n+1)]+1` -/
def P5420682346854237774.Spec : Prop :=
  ∀ n, (P5420682346854237774.a n : ℤ) = A063762 (n + 1)

end A063762

/-! ## A063762.P4601509501810094646

`∪[A063763(n+1), A033476(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A063762

/-- `∪[A063763(n+1), A033476(n)]` -/
def P4601509501810094646.Spec : Prop :=
  ∀ n, (P4601509501810094646.a n : ℤ) = A063762 (n + 1)

theorem P4601509501810094646.correct : P4601509501810094646.Spec := by
  intro n
  simp only [A063762, Nat.add_sub_cancel]

end A063762

/-! ## A063762.P13542182003812765676

`∪[A001248(n+1), A063763(n+1)]`
-/

namespace A063762.P13542182003812765676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063762.P13542182003812765676

namespace A063762

/-- `∪[A001248(n+1), A063763(n+1)]` -/
def P13542182003812765676.Spec : Prop :=
  ∀ n, (P13542182003812765676.a n : ℤ) = A063762 (n + 1)

end A063762

/-! ## A063762.P9533770430565223795

`∪[A001358(n+1), A063763(n+1)]`
-/

namespace A063762.P9533770430565223795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063762.P9533770430565223795

namespace A063762

/-- `∪[A001358(n+1), A063763(n+1)]` -/
def P9533770430565223795.Spec : Prop :=
  ∀ n, (P9533770430565223795.a n : ℤ) = A063762 (n + 1)

end A063762

/-! ## A063762.P9630463384987734209

`∪[A063763(n+1), A087718(n+1)]`
-/

namespace A063762.P9630463384987734209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063762.P9630463384987734209

namespace A063762

/-- `∪[A063763(n+1), A087718(n+1)]` -/
def P9630463384987734209.Spec : Prop :=
  ∀ n, (P9630463384987734209.a n : ℤ) = A063762 (n + 1)

end A063762

/-! ## A063762.P9886481625803734282

`∪[A000040(n+1)², A063763(n+1)]`
-/

namespace A063762.P9886481625803734282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063762.P9886481625803734282

namespace A063762

/-- `∪[A000040(n+1)², A063763(n+1)]` -/
def P9886481625803734282.Spec : Prop :=
  ∀ n, (P9886481625803734282.a n : ℤ) = A063762 (n + 1)

end A063762

/-! ## A063762.P16872752955971943111

`∩[A132858(n+1), A356438(n+1)]`
-/

namespace A063762.P16872752955971943111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063762.P16872752955971943111

namespace A063762

/-- `∩[A132858(n+1), A356438(n+1)]` -/
def P16872752955971943111.Spec : Prop :=
  ∀ n, (P16872752955971943111.a n : ℤ) = A063762 (n + 1)

end A063762

/-! ## A063762.P16995245381406705428

`filter[A063538(n+1), A005171(#)]`
-/

namespace A063762.P16995245381406705428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A063762.P16995245381406705428

namespace A063762

/-- `filter[A063538(n+1), A005171(#)]` -/
def P16995245381406705428.Spec : Prop :=
  ∀ n, P16995245381406705428.a n = A063762 (n + 1)

end A063762

/-! ## A063762.P16019309043716657381

`filter[A063538(n+1), A066247(#)]`
-/

namespace A063762.P16019309043716657381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A063762.P16019309043716657381

namespace A063762

/-- `filter[A063538(n+1), A066247(#)]` -/
def P16019309043716657381.Spec : Prop :=
  ∀ n, P16019309043716657381.a n = A063762 (n + 1)

end A063762

/-! ## A063762.P5212703680669379213

`filter[A063538(n+1), A174898(#)]`
-/

namespace A063762.P5212703680669379213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A063762.P5212703680669379213

namespace A063762

/-- `filter[A063538(n+1), A174898(#)]` -/
def P5212703680669379213.Spec : Prop :=
  ∀ n, P5212703680669379213.a n = A063762 (n + 1)

end A063762

/-! ## A063762.P15969339522049171484

`∩[A002808(n+1), A063538(n+1)]`
-/

namespace A063762.P15969339522049171484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063762.P15969339522049171484

namespace A063762

/-- `∩[A002808(n+1), A063538(n+1)]` -/
def P15969339522049171484.Spec : Prop :=
  ∀ n, (P15969339522049171484.a n : ℤ) = A063762 (n + 1)

end A063762

/-! ## A063762.P10217368797008201858

`∩[A018252(n+1), A063538(n+1)]`
-/

namespace A063762.P10217368797008201858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063762.P10217368797008201858

namespace A063762

/-- `∩[A018252(n+1), A063538(n+1)]` -/
def P10217368797008201858.Spec : Prop :=
  ∀ n, (P10217368797008201858.a n : ℤ) = A063762 (n + 1)

end A063762

/-! ## A063762.P10065777078837976479

`∩[A063538(n+1), A132858(n+1)]`
-/

namespace A063762.P10065777078837976479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063762.P10065777078837976479

namespace A063762

/-- `∩[A063538(n+1), A132858(n+1)]` -/
def P10065777078837976479.Spec : Prop :=
  ∀ n, (P10065777078837976479.a n : ℤ) = A063762 (n + 1)

end A063762

/-! ## A063762.P10954762495847547492

`∩[A063538(n+1), A141468(n+1)]`
-/

namespace A063762.P10954762495847547492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063762.P10954762495847547492

namespace A063762

/-- `∩[A063538(n+1), A141468(n+1)]` -/
def P10954762495847547492.Spec : Prop :=
  ∀ n, (P10954762495847547492.a n : ℤ) = A063762 (n + 1)

end A063762

/-! ## A063762.P13368927144187839400

`record[A002808(n+1)/A001222(A305747(n+1))]`
-/

namespace A063762.P13368927144187839400
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A001222 (A305747 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063762.P13368927144187839400

namespace A063762

/-- `record[A002808(n+1)/A001222(A305747(n+1))]` -/
def P13368927144187839400.Spec : Prop :=
  ∀ n, P13368927144187839400.a n = (A063762 (n + 1) : ℚ)

end A063762

/-! ## A063762.P362104164774916447

`filter[A002808(n+1), A341591(#)]`
-/

namespace A063762.P362104164774916447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341591 (f1 j).toNat = 1) n)

end

end A063762.P362104164774916447

namespace A063762

/-- `filter[A002808(n+1), A341591(#)]` -/
def P362104164774916447.Spec : Prop :=
  ∀ n, P362104164774916447.a n = A063762 (n + 1)

end A063762

/-! ## A063762.P7794055567536194873

`filter[A005451(n+1), A341591(#)]`
-/

namespace A063762.P7794055567536194873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341591 (f1 j).toNat = 1) n)

end

end A063762.P7794055567536194873

namespace A063762

/-- `filter[A005451(n+1), A341591(#)]` -/
def P7794055567536194873.Spec : Prop :=
  ∀ n, P7794055567536194873.a n = A063762 (n + 1)

end A063762

/-! ## A063762.P14975791289920675334

`filter[A018252(n+1), A341591(#)]`
-/

namespace A063762.P14975791289920675334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341591 (f1 j).toNat = 1) n)

end

end A063762.P14975791289920675334

namespace A063762

/-- `filter[A018252(n+1), A341591(#)]` -/
def P14975791289920675334.Spec : Prop :=
  ∀ n, P14975791289920675334.a n = A063762 (n + 1)

end A063762

/-! ## A063762.P7671050169835878490

`filter[A132858(n+1), A341591(#)]`
-/

namespace A063762.P7671050169835878490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341591 (f1 j).toNat = 1) n)

end

end A063762.P7671050169835878490

namespace A063762

/-- `filter[A132858(n+1), A341591(#)]` -/
def P7671050169835878490.Spec : Prop :=
  ∀ n, P7671050169835878490.a n = A063762 (n + 1)

end A063762

/-! ## A063762.P17838771298317079163

`filter[A141468(n+2), A341591(#)]`
-/

namespace A063762.P17838771298317079163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341591 (f1 j).toNat = 1) n)

end

end A063762.P17838771298317079163

namespace A063762

/-- `filter[A141468(n+2), A341591(#)]` -/
def P17838771298317079163.Spec : Prop :=
  ∀ n, P17838771298317079163.a n = A063762 (n + 1)

end A063762

/-!
# A063763: Composite integers k such that largest prime factor of k > sqrt(k).

The programs for A063763, the canonical program `A063763.P4469231396961410402` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063763 has offset 1).

The definition of A063763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063763.P4469231396961410402

`record[A002808(n+2)%A006530(A002808(n+2))²]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A063763

/-- `record[A002808(n+2)%A006530(A002808(n+2))²]` -/
def P4469231396961410402.Spec : Prop :=
  ∀ n, P4469231396961410402.a n = A063763 (n + 1)

theorem P4469231396961410402.correct : P4469231396961410402.Spec := by
  intro n
  simp only [A063763, Nat.add_sub_cancel]

end A063763

/-! ## A063763.P586452407257574327

`filter[A063762(n+1), A049240(#)]`
-/

namespace A063763.P586452407257574327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A063763.P586452407257574327

namespace A063763

/-- `filter[A063762(n+1), A049240(#)]` -/
def P586452407257574327.Spec : Prop :=
  ∀ n, P586452407257574327.a n = A063763 (n + 1)

end A063763

/-! ## A063763.P3676120105279650248

`filter[A064052(n+1), A005171(#)]`
-/

namespace A063763.P3676120105279650248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A063763.P3676120105279650248

namespace A063763

/-- `filter[A064052(n+1), A005171(#)]` -/
def P3676120105279650248.Spec : Prop :=
  ∀ n, P3676120105279650248.a n = A063763 (n + 1)

end A063763

/-! ## A063763.P16663902368914414494

`filter[A064052(n+1), A066247(#)]`
-/

namespace A063763.P16663902368914414494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A063763.P16663902368914414494

namespace A063763

/-- `filter[A064052(n+1), A066247(#)]` -/
def P16663902368914414494.Spec : Prop :=
  ∀ n, P16663902368914414494.a n = A063763 (n + 1)

end A063763

/-! ## A063763.P12681405951501955037

`filter[A064052(n+1), A174898(#)]`
-/

namespace A063763.P12681405951501955037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A063763.P12681405951501955037

namespace A063763

/-- `filter[A064052(n+1), A174898(#)]` -/
def P12681405951501955037.Spec : Prop :=
  ∀ n, P12681405951501955037.a n = A063763 (n + 1)

end A063763

/-! ## A063763.P17136910778405910086

`filter[A064052(n+1), A202238(#)]`
-/

namespace A063763.P17136910778405910086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A063763.P17136910778405910086

namespace A063763

/-- `filter[A064052(n+1), A202238(#)]` -/
def P17136910778405910086.Spec : Prop :=
  ∀ n, P17136910778405910086.a n = A063763 (n + 1)

end A063763

/-! ## A063763.P16816582113978076024

`∩[A002808(n+1), A064052(n+1)]`
-/

namespace A063763.P16816582113978076024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063763.P16816582113978076024

namespace A063763

/-- `∩[A002808(n+1), A064052(n+1)]` -/
def P16816582113978076024.Spec : Prop :=
  ∀ n, (P16816582113978076024.a n : ℤ) = A063763 (n + 1)

end A063763

/-! ## A063763.P9956148472229092356

`∩[A018252(n+1), A064052(n+1)]`
-/

namespace A063763.P9956148472229092356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063763.P9956148472229092356

namespace A063763

/-- `∩[A018252(n+1), A064052(n+1)]` -/
def P9956148472229092356.Spec : Prop :=
  ∀ n, (P9956148472229092356.a n : ℤ) = A063763 (n + 1)

end A063763

/-! ## A063763.P12545578868808586580

`∩[A063762(n+1), A064052(n+1)]`
-/

namespace A063763.P12545578868808586580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063763.P12545578868808586580

namespace A063763

/-- `∩[A063762(n+1), A064052(n+1)]` -/
def P12545578868808586580.Spec : Prop :=
  ∀ n, (P12545578868808586580.a n : ℤ) = A063763 (n + 1)

end A063763

/-! ## A063763.P16116900353597771524

`∩[A027855(n+1), A069116(n+1)]`
-/

namespace A063763.P16116900353597771524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063763.P16116900353597771524

namespace A063763

/-- `∩[A027855(n+1), A069116(n+1)]` -/
def P16116900353597771524.Spec : Prop :=
  ∀ n, (P16116900353597771524.a n : ℤ) = A063763 (n + 1)

end A063763

/-! ## A063763.P10401156885711787290

`∩[A063762(n+1), A069116(n+1)]`
-/

namespace A063763.P10401156885711787290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063763.P10401156885711787290

namespace A063763

/-- `∩[A063762(n+1), A069116(n+1)]` -/
def P10401156885711787290.Spec : Prop :=
  ∀ n, (P10401156885711787290.a n : ℤ) = A063763 (n + 1)

end A063763

/-! ## A063763.P15135584282705774359

`∩[A027855(n+1), A080363(n+1)]`
-/

namespace A063763.P15135584282705774359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063763.P15135584282705774359

namespace A063763

/-- `∩[A027855(n+1), A080363(n+1)]` -/
def P15135584282705774359.Spec : Prop :=
  ∀ n, (P15135584282705774359.a n : ℤ) = A063763 (n + 1)

end A063763

/-! ## A063763.P16677297750224294829

`∩[A064052(n+1), A080363(n+1)]`
-/

namespace A063763.P16677297750224294829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063763.P16677297750224294829

namespace A063763

/-- `∩[A064052(n+1), A080363(n+1)]` -/
def P16677297750224294829.Spec : Prop :=
  ∀ n, (P16677297750224294829.a n : ℤ) = A063763 (n + 1)

end A063763

/-! ## A063763.P13941850743649121497

`∩[A063538(n+1), A106543(n+1)]`
-/

namespace A063763.P13941850743649121497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063763.P13941850743649121497

namespace A063763

/-- `∩[A063538(n+1), A106543(n+1)]` -/
def P13941850743649121497.Spec : Prop :=
  ∀ n, (P13941850743649121497.a n : ℤ) = A063763 (n + 1)

end A063763

/-! ## A063763.P14273063360218925387

`∩[A024619(n+1), A063538(n+1)]`
-/

namespace A063763.P14273063360218925387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063763.P14273063360218925387

namespace A063763

/-- `∩[A024619(n+1), A063538(n+1)]` -/
def P14273063360218925387.Spec : Prop :=
  ∀ n, (P14273063360218925387.a n : ℤ) = A063763 (n + 1)

end A063763

/-! ## A063763.P12825809064132065622

`∩[A024619(n+1), A063762(n+1)]`
-/

namespace A063763.P12825809064132065622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063763.P12825809064132065622

namespace A063763

/-- `∩[A024619(n+1), A063762(n+1)]` -/
def P12825809064132065622.Spec : Prop :=
  ∀ n, (P12825809064132065622.a n : ℤ) = A063763 (n + 1)

end A063763

/-! ## A063763.P7934195590068290809

`∩[A024619(n+1), A064052(n+1)]`
-/

namespace A063763.P7934195590068290809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063763.P7934195590068290809

namespace A063763

/-- `∩[A024619(n+1), A064052(n+1)]` -/
def P7934195590068290809.Spec : Prop :=
  ∀ n, (P7934195590068290809.a n : ℤ) = A063763 (n + 1)

end A063763

/-! ## A063763.P12129309455553571148

`record[A024619(n+1)%A074593(n+1)²]`
-/

namespace A063763.P12129309455553571148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024619 (n + 1)) (A074593 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063763.P12129309455553571148

namespace A063763

/-- `record[A024619(n+1)%A074593(n+1)²]` -/
def P12129309455553571148.Spec : Prop :=
  ∀ n, P12129309455553571148.a n = A063763 (n + 1)

end A063763

/-! ## A063763.P2284142707031783795

`∩[A063538(n+1), A361102(n+1)]`
-/

namespace A063763.P2284142707031783795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063763.P2284142707031783795

namespace A063763

/-- `∩[A063538(n+1), A361102(n+1)]` -/
def P2284142707031783795.Spec : Prop :=
  ∀ n, (P2284142707031783795.a n : ℤ) = A063763 (n + 1)

end A063763

/-! ## A063763.P2526234802951459295

`∩[A063762(n+1), A361102(n+1)]`
-/

namespace A063763.P2526234802951459295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063763.P2526234802951459295

namespace A063763

/-- `∩[A063762(n+1), A361102(n+1)]` -/
def P2526234802951459295.Spec : Prop :=
  ∀ n, (P2526234802951459295.a n : ℤ) = A063763 (n + 1)

end A063763

/-!
# A063764: Nonprimes k such that largest prime factor of k > k^(2/3).

The programs for A063764, there is no canonical definition to state claims against.
-/

/-! ## A063764.P16983142794293225451

`filter[A395643(n+1), A005171(#)]`
-/

namespace A063764.P16983142794293225451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A063764.P16983142794293225451

/-! ## A063764.P8593231494125876541

`filter[A395643(n+1), A066247(#)]`
-/

namespace A063764.P8593231494125876541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A063764.P8593231494125876541

/-! ## A063764.P13110155613374313680

`filter[A395643(n+1), A202238(#)]`
-/

namespace A063764.P13110155613374313680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A063764.P13110155613374313680

/-! ## A063764.P7222999787024925983

`filter[A395643(n+1), A174898(#)]`
-/

namespace A063764.P7222999787024925983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A063764.P7222999787024925983

/-! ## A063764.P10485172733724898469

`∩[A002808(n+1), A395643(n+1)]`
-/

namespace A063764.P10485172733724898469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063764.P10485172733724898469

/-! ## A063764.P5027464496871907965

`∩[A018252(n+1), A395643(n+1)]`
-/

namespace A063764.P5027464496871907965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063764.P5027464496871907965

/-! ## A063764.P17854322495077750452

`∩[A063763(n+1), A395643(n+1)]`
-/

namespace A063764.P17854322495077750452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063764.P17854322495077750452

/-! ## A063764.P5035885025486170144

`∩[A063762(n+1), A395643(n+1)]`
-/

namespace A063764.P5035885025486170144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063764.P5035885025486170144

/-! ## A063764.P14534926932088171808

`∩[A069116(n+1), A395643(n+1)]`
-/

namespace A063764.P14534926932088171808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063764.P14534926932088171808

/-! ## A063764.P17724562603389035061

`∩[A085232(n+1), A395643(n+1)]`
-/

namespace A063764.P17724562603389035061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063764.P17724562603389035061

/-! ## A063764.P7188817925656015666

`∩[A069900(n+1), A395643(n+1)]`
-/

namespace A063764.P7188817925656015666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063764.P7188817925656015666

/-! ## A063764.P16680052901201997072

`∩[A073492(n+1), A395643(n+1)]`
-/

namespace A063764.P16680052901201997072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063764.P16680052901201997072

/-! ## A063764.P12793762450030394800

`∩[A024619(n+1), A395643(n+1)]`
-/

namespace A063764.P12793762450030394800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063764.P12793762450030394800

/-! ## A063764.P5742183615258147525

`∩[A062973(n+1), A395643(n+1)]`
-/

namespace A063764.P5742183615258147525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063764.P5742183615258147525

/-! ## A063764.P3844825508044993069

`∩[A056653(n+1), A395643(n+1)]`
-/

namespace A063764.P3844825508044993069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063764.P3844825508044993069

/-! ## A063764.P17903470207035464022

`filter[A395643(n+1), A143731(#)]`
-/

namespace A063764.P17903470207035464022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A063764.P17903470207035464022

/-! ## A063764.P14532423697254381359

`filter[A395643(n+1), A395053(#)]`
-/

namespace A063764.P14532423697254381359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395053 (f1 j).toNat = 1) n)

end

end A063764.P14532423697254381359

/-! ## A063764.P12048041389061574334

`lt[A342768(n+1), A323136(n+1)]+1`
-/

namespace A063764.P12048041389061574334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323136 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A063764.P12048041389061574334

/-! ## A063764.P6932311927547161641

`A020725(lt[A342768(n+1), A323136(n+1)])`
-/

namespace A063764.P6932311927547161641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A063764.P6932311927547161641

/-!
# A063765: Least integer m whose largest prime factor > m^(n/(n+1)).

The programs for A063765, the canonical program `A063765.P12169801839756139973` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063765 has offset 1).

The definition of A063765 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014210, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063765.P12169801839756139973

`2*A014210(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A063765

/-- `2*A014210(n+1)` -/
def P12169801839756139973.Spec : Prop :=
  ∀ n, P12169801839756139973.a n = A063765 (n + 1)

theorem P12169801839756139973.correct : P12169801839756139973.Spec := by
  intro n
  simp only [A063765, Nat.add_sub_cancel]

end A063765

/-! ## A063765.P15176980885666264543

`2*A203074(n+2)`
-/

namespace A063765.P15176980885666264543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A203074 (n + 2)

end

end A063765.P15176980885666264543

namespace A063765

/-- `2*A203074(n+2)` -/
def P15176980885666264543.Spec : Prop :=
  ∀ n, P15176980885666264543.a n = A063765 (n + 1)

end A063765

/-! ## A063765.P1313804939407362648

`2*or(1, A104080(n+1))`
-/

namespace A063765.P1313804939407362648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (A104080 (n + 1))

end

end A063765.P1313804939407362648

namespace A063765

/-- `2*or(1, A104080(n+1))` -/
def P1313804939407362648.Spec : Prop :=
  ∀ n, P1313804939407362648.a n = A063765 (n + 1)

end A063765

/-! ## A063765.P4264439349934457798

`lcm(2, A014210(C(n+1, n)))`
-/

namespace A063765.P4264439349934457798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A014210 (Nat.choose (n + 1) n))

end

end A063765.P4264439349934457798

namespace A063765

/-- `lcm(2, A014210(C(n+1, n)))` -/
def P4264439349934457798.Spec : Prop :=
  ∀ n, (P4264439349934457798.a n : ℤ) = A063765 (n + 1)

end A063765

/-! ## A063765.P4952700783635844348

`record[2*A014210(A008611(n))]`
-/

namespace A063765.P4952700783635844348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014210 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063765.P4952700783635844348

namespace A063765

/-- `record[2*A014210(A008611(n))]` -/
def P4952700783635844348.Spec : Prop :=
  ∀ n, P4952700783635844348.a n = A063765 (n + 1)

end A063765

/-! ## A063765.P9322703511071848418

`record[2*A014210(A057979(n))]`
-/

namespace A063765.P9322703511071848418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014210 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063765.P9322703511071848418

namespace A063765

/-- `record[2*A014210(A057979(n))]` -/
def P9322703511071848418.Spec : Prop :=
  ∀ n, P9322703511071848418.a n = A063765 (n + 1)

end A063765

/-! ## A063765.P9947883351737517690

`record[2*A014210(A305298(n))]`
-/

namespace A063765.P9947883351737517690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014210 (A305298 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063765.P9947883351737517690

namespace A063765

/-- `record[2*A014210(A305298(n))]` -/
def P9947883351737517690.Spec : Prop :=
  ∀ n, P9947883351737517690.a n = A063765 (n + 1)

end A063765

/-! ## A063765.P8589377059805776969

`A203074(n+2)+A014210(n+1)`
-/

namespace A063765.P8589377059805776969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203074 (n + 2) + A014210 (n + 1)

end

end A063765.P8589377059805776969

namespace A063765

/-- `A203074(n+2)+A014210(n+1)` -/
def P8589377059805776969.Spec : Prop :=
  ∀ n, P8589377059805776969.a n = A063765 (n + 1)

end A063765

/-! ## A063765.P9169390758956855449

`Δ[2*∑[A014210(n)]]`
-/

namespace A063765.P9169390758956855449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063765.P9169390758956855449

namespace A063765

/-- `Δ[2*∑[A014210(n)]]` -/
def P9169390758956855449.Spec : Prop :=
  ∀ n, P9169390758956855449.a n = A063765 (n + 1)

end A063765

/-! ## A063765.P9706889854913710119

`A014210(n+1)+A014211(n+1)-A037128(n+1)`
-/

namespace A063765.P9706889854913710119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (n + 1) + (A014211 (n + 1) - A037128 (n + 1))

end

end A063765.P9706889854913710119

namespace A063765

/-- `A014210(n+1)+A014211(n+1)-A037128(n+1)` -/
def P9706889854913710119.Spec : Prop :=
  ∀ n, P9706889854913710119.a n = A063765 (n + 1)

theorem P9706889854913710119.correct : P9706889854913710119.Spec := by
  intro n
  simp only [A063765, Nat.add_sub_cancel, A063765.P9706889854913710119.a, A063765.P12169801839756139973.a, A014210, A014210.P8900791388522812635.a, A014211, A014211.P17006346503809986776.a, A037128, A037128.P2879077099965106880.a, A000038, A000038.P13734959004655594922.a, A008611, A008611.P13529448793166959438.a, A013597, A013597.P2064454081418839404.a, A104081, A104081.P13360857715571968060.a, A000007, A000007.P6599383543502402472.a, A000244, A000244.P17162167222172810417.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A013632, A013632.P6559946879985956067.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063765

/-! ## A063765.P594154009044149943

`2*A246956(n+1)/A000079(n)`
-/

namespace A063765.P594154009044149943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A246956 (n + 1) : ℚ) / (A000079 n : ℚ))

end

end A063765.P594154009044149943

namespace A063765

/-- `2*A246956(n+1)/A000079(n)` -/
def P594154009044149943.Spec : Prop :=
  ∀ n, P594154009044149943.a n = (A063765 (n + 1) : ℚ)

end A063765

/-!
# A063766: a(n) is the smallest prime >= 6^n.

The programs for A063766, the canonical program `A063766.P12128886107065429887` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063766 has offset 0).

The definition of A063766 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063766.P12128886107065429887

`A007918(A000400(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A063766

/-- `A007918(A000400(n))` -/
def P12128886107065429887.Spec : Prop :=
  ∀ n, P12128886107065429887.a n = A063766 n

theorem P12128886107065429887.correct : P12128886107065429887.Spec := by
  intro n
  simp only [A063766]

end A063766

/-! ## A063766.P3501468288150119644

`A013600(n)+6^n`
-/

namespace A063766.P3501468288150119644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013600 n + (6 ^ n : ℤ)

end

end A063766.P3501468288150119644

namespace A063766

/-- `A013600(n)+6^n` -/
def P3501468288150119644.Spec : Prop :=
  ∀ n, P3501468288150119644.a n = A063766 n

theorem P3501468288150119644.correct : P3501468288150119644.Spec := by
  intro n
  simp only [A063766, Nat.add_sub_cancel, A063766.P3501468288150119644.a, A063766.P12128886107065429887.a, A000400, A000400.P10889281521385558416.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A013600, A013600.P6360817973615106358.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063766

/-! ## A063766.P17303676266030502622

`A017922(2*n)+A013600(n)`
-/

namespace A063766.P17303676266030502622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017922 (2 * n) + A013600 n

end

end A063766.P17303676266030502622

namespace A063766

/-- `A017922(2*n)+A013600(n)` -/
def P17303676266030502622.Spec : Prop :=
  ∀ n, P17303676266030502622.a n = A063766 n

end A063766

/-! ## A063766.P11103221974893411056

`abs(A013600(n)+A062394(n)-1)`
-/

namespace A063766.P11103221974893411056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013600 n + (A062394 n - 1)|

end

end A063766.P11103221974893411056

namespace A063766

/-- `abs(A013600(n)+A062394(n)-1)` -/
def P11103221974893411056.Spec : Prop :=
  ∀ n, P11103221974893411056.a n = A063766 n

end A063766

/-! ## A063766.P14921615028239076372

`or(A013600(n)+A000400(n), char[1])`
-/

namespace A063766.P14921615028239076372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A013600 n + A000400 n) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A063766.P14921615028239076372

namespace A063766

/-- `or(A013600(n)+A000400(n), char[1])` -/
def P14921615028239076372.Spec : Prop :=
  ∀ n, P14921615028239076372.a n = A063766 n

end A063766

/-! ## A063766.P9070321132049599877

`A166023(2*n+1)+A013600(n)`
-/

namespace A063766.P9070321132049599877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166023 (2 * n + 1) + A013600 n

end

end A063766.P9070321132049599877

namespace A063766

/-- `A166023(2*n+1)+A013600(n)` -/
def P9070321132049599877.Spec : Prop :=
  ∀ n, P9070321132049599877.a n = A063766 n

end A063766

/-! ## A063766.P17295332382866434886

`A017991(A008486(n))+A013600(n)`
-/

namespace A063766.P17295332382866434886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017991 (A008486 n).toNat + A013600 n

end

end A063766.P17295332382866434886

namespace A063766

/-- `A017991(A008486(n))+A013600(n)` -/
def P17295332382866434886.Spec : Prop :=
  ∀ n, P17295332382866434886.a n = A063766 n

end A063766

/-! ## A063766.P10563472680540993444

`A017991(A008585(n))+A013600(n)`
-/

namespace A063766.P10563472680540993444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017991 (A008585 n).toNat + A013600 n

end

end A063766.P10563472680540993444

namespace A063766

/-- `A017991(A008585(n))+A013600(n)` -/
def P10563472680540993444.Spec : Prop :=
  ∀ n, P10563472680540993444.a n = A063766 n

end A063766

/-! ## A063766.P16537180753221883927

`A062394(n)+A004442(A013600(n))`
-/

namespace A063766.P16537180753221883927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062394 n + A004442 (A013600 n).toNat

end

end A063766.P16537180753221883927

namespace A063766

/-- `A062394(n)+A004442(A013600(n))` -/
def P16537180753221883927.Spec : Prop :=
  ∀ n, P16537180753221883927.a n = A063766 n

end A063766

/-! ## A063766.P1478284318251189339

`A166027(2*(n+1))+A013600(n)`
-/

namespace A063766.P1478284318251189339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166027 (2 * (n + 1)) + A013600 n

end

end A063766.P1478284318251189339

namespace A063766

/-- `A166027(2*(n+1))+A013600(n)` -/
def P1478284318251189339.Spec : Prop :=
  ∀ n, P1478284318251189339.a n = A063766 n

end A063766

/-!
# A063767: Smallest prime > 7^n.

The programs for A063767, there is no canonical definition to state claims against.
-/

/-! ## A063767.P9511827259120333965

`A013601(n)+A000420(n)`
-/

namespace A063767.P9511827259120333965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013601 n + A000420 n

end

end A063767.P9511827259120333965

/-! ## A063767.P13834458754121692797

`A013601(n)+A034491(n)-1`
-/

namespace A063767.P13834458754121692797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013601 n + (A034491 n - 1)

end

end A063767.P13834458754121692797

/-! ## A063767.P8225465821615469003

`A017925(2*n)+A013601(n)`
-/

namespace A063767.P8225465821615469003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017925 (2 * n) + A013601 n

end

end A063767.P8225465821615469003

/-! ## A063767.P16588285420743294196

`A013601(n)+A226199(n)-n`
-/

namespace A063767.P16588285420743294196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013601 n + (A226199 n - (n : ℤ))

end

end A063767.P16588285420743294196

/-! ## A063767.P8085227605445456359

`A104084(n)+and(A005009(n), A266258(n))²`
-/

namespace A063767.P8085227605445456359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104084 n + Int.land (A005009 n) (A266258 n) ^ 2

end

end A063767.P8085227605445456359

/-!
# A063768: Smallest prime >= 8^n.

The programs for A063768, the canonical program `A063768.P1427965183729236015` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063768 has offset 0).

The definition of A063768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063768.P1427965183729236015

`A014210(3*n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A063768

/-- `A014210(3*n)` -/
def P1427965183729236015.Spec : Prop :=
  ∀ n, P1427965183729236015.a n = A063768 n

theorem P1427965183729236015.correct : P1427965183729236015.Spec := by
  intro n
  simp only [A063768]

end A063768

/-! ## A063768.P14591785873409454007

`A104080(3*n)`
-/

namespace A063768.P14591785873409454007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104080 (3 * n)

end

end A063768.P14591785873409454007

namespace A063768

/-- `A104080(3*n)` -/
def P14591785873409454007.Spec : Prop :=
  ∀ n, P14591785873409454007.a n = A063768 n

end A063768

/-! ## A063768.P10130488326625937965

`A203074(3*n+1)`
-/

namespace A063768.P10130488326625937965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203074 (3 * n + 1)

end

end A063768.P10130488326625937965

namespace A063768

/-- `A203074(3*n+1)` -/
def P10130488326625937965.Spec : Prop :=
  ∀ n, P10130488326625937965.a n = A063768 n

end A063768

/-! ## A063768.P2889423486851659961

`A127795(n)+8^n`
-/

namespace A063768.P2889423486851659961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127795 n + (8 ^ n : ℤ)

end

end A063768.P2889423486851659961

namespace A063768

/-- `A127795(n)+8^n` -/
def P2889423486851659961.Spec : Prop :=
  ∀ n, P2889423486851659961.a n = A063768 n

end A063768

/-! ## A063768.P536183989316225776

`A340959(A145910(n))`
-/

namespace A063768.P536183989316225776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340959 (A145910 n).toNat

end

end A063768.P536183989316225776

namespace A063768

/-- `A340959(A145910(n))` -/
def P536183989316225776.Spec : Prop :=
  ∀ n, P536183989316225776.a n = A063768 n

end A063768

/-!
# A063771: Numbers n such that n^sin(n) > m^sin(m) for all m < n and n^sin(n) is rounded to nearest integer.

The programs for A063771, there is no canonical definition to state claims against.
-/

/-! ## A063771.P957162737049178852

`lt[A255577(A134891(n+1)), A134893(n+1)]`
-/

namespace A063771.P957162737049178852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255577 (A134891 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063771.P957162737049178852

/-! ## A063771.P569255612238632844

`∑[dr(A000330(A055786(n)))]`
-/

namespace A063771.P569255612238632844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000330 (A055786 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063771.P569255612238632844

/-! ## A063771.P16264689665120569728

`lt[A325792(n+1), A325694(n+4)^sin(n)]`
-/

namespace A063771.P16264689665120569728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325792 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A325694 (n + 4) : ℝ) ^ (Real.sin (n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A063771.P16264689665120569728

/-! ## A063771.P16695919493034935992

`lt[A134886(A134890(n+1)), A134893(n+1)]`
-/

namespace A063771.P16695919493034935992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (A134890 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063771.P16695919493034935992

/-!
# A063772: a(k^2 + i) = k + a(i) for k >= 0 and 0 <= i <= k * 2; a(0) = 0.

The programs for A063772, the canonical program `A063772.P2763481462800070379` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063772 has offset 0).

The definition of A063772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063772.P2763481462800070379

`floor(sqrt(n))+a(n-floor(sqrt(n))²)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063772

/-- `floor(sqrt(n))+a(n-floor(sqrt(n))²)` -/
def P2763481462800070379.Spec : Prop :=
  ∀ n, (P2763481462800070379.a n : ℤ) = A063772 n

theorem P2763481462800070379.correct : P2763481462800070379.Spec := by
  intro n
  simp only [A063772]

end A063772

/-! ## A063772.P12645834894107849994

`a(A053186(n))+sqrt(A048760(n))` with `a(0)=0`
-/

namespace A063772.P12645834894107849994
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  a (A053186 n).toNat + Real.sqrt (A048760 n : ℝ)

end

end A063772.P12645834894107849994

namespace A063772

/-- `a(A053186(n))+sqrt(A048760(n))` -/
def P12645834894107849994.Spec : Prop :=
  ∀ n, P12645834894107849994.a n = (A063772 n : ℝ)

end A063772

/-! ## A063772.P9489402169240319008

`a(A053186(n))+A078358(n+1)-(n+1)` with `a(0)=0`
-/

namespace A063772.P9489402169240319008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A053186 n).toNat + (A078358 (n + 1) - (n + 1 : ℤ))

end

end A063772.P9489402169240319008

namespace A063772

/-- `a(A053186(n))+A078358(n+1)-(n+1)` -/
def P9489402169240319008.Spec : Prop :=
  ∀ n, P9489402169240319008.a n = A063772 n

end A063772

/-! ## A063772.P5279298034750284593

`A175213(n)-A053610(A028310(n))`
-/

namespace A063772.P5279298034750284593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175213 n - A053610 (A028310 n).toNat

end

end A063772.P5279298034750284593

namespace A063772

/-- `A175213(n)-A053610(A028310(n))` -/
def P5279298034750284593.Spec : Prop :=
  ∀ n, P5279298034750284593.a n = A063772 n

end A063772

/-!
# A063773: Smallest number that is centered polygonal in exactly n ways.

The programs for A063773, there is no canonical definition to state claims against.
-/

/-! ## A063773.P18434643149642650236

`∑[A307730(A277834(n)+A167847(n+1))]`
-/

namespace A063773.P18434643149642650236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307730 (A277834 n + A167847 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063773.P18434643149642650236

/-! ## A063773.P6860431983420959341

`A324697(A020097(n))+A311635(n)+A311385(n)`
-/

namespace A063773.P6860431983420959341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324697 (A020097 n).toNat + (A311635 n + A311385 n)

end

end A063773.P6860431983420959341

/-!
# A063774: Numbers k such that the number of divisors of k^2 is a square.

The programs for A063774, there is no canonical definition to state claims against.
-/

/-! ## A063774.P66580157775755868

`sqrt(A175391(n+1))`
-/

namespace A063774.P66580157775755868
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A175391 (n + 1) : ℝ)

end

end A063774.P66580157775755868

/-! ## A063774.P6971277952203304266

`root(A175391(n+1), A034444(A034444(n+1)))`
-/

namespace A063774.P6971277952203304266
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A175391 (n + 1) : ℝ) ^ (1 / (A034444 (A034444 (n + 1)).toNat : ℝ))

end

end A063774.P6971277952203304266

/-! ## A063774.P10168117108597419184

`root(A175391(n+1), A100549(A100549(n+1)))`
-/

namespace A063774.P10168117108597419184
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A175391 (n + 1) : ℝ) ^ (1 / (A100549 (A100549 (n + 1)).toNat : ℝ))

end

end A063774.P10168117108597419184

/-! ## A063774.P7514197477377719015

`eq[1, A038387(A048691(n+1))]+1`
-/

namespace A063774.P7514197477377719015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (A048691 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063774.P7514197477377719015

/-! ## A063774.P9271740027374826765

`record[A000027(n+1)*A093709(A048691(n+1))]`
-/

namespace A063774.P9271740027374826765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A093709 (A048691 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063774.P9271740027374826765

/-! ## A063774.P11834772784598598424

`eq[2, A000122(A000005((n+1)²))]+1`
-/

namespace A063774.P11834772784598598424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000005 ((n + 1) ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063774.P11834772784598598424

/-! ## A063774.P496147433191001589

`record[(n+1)*A010052(A000005((n+1)*(n+1)))]`
-/

namespace A063774.P496147433191001589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010052 (A000005 ((n + 1) * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063774.P496147433191001589

/-!
# A063775: Number of 4th powers dividing n.

The programs for A063775, the canonical program `A063775.P4217061199488976379` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063775 has offset 1).

The definition of A063775 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A046951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063775.P4217061199488976379

`A046951(A000188(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A063775

/-- `A046951(A000188(n+1))` -/
def P4217061199488976379.Spec : Prop :=
  ∀ n, P4217061199488976379.a n = A063775 (n + 1)

theorem P4217061199488976379.correct : P4217061199488976379.Spec := by
  intro n
  simp only [A063775, Nat.add_sub_cancel]

end A063775

/-! ## A063775.P9525591821968508097

`∏{e}[n+1, floor(#/4)+1]`
-/

namespace A063775.P9525591821968508097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 4⌋ + 1)

end

end A063775.P9525591821968508097

namespace A063775

/-- `∏{e}[n+1, floor(#/4)+1]` -/
def P9525591821968508097.Spec : Prop :=
  ∀ n, P9525591821968508097.a n = A063775 (n + 1)

end A063775

/-! ## A063775.P554354494179555867

`∑{d}[n+1, A374016(#)]`
-/

namespace A063775.P554354494179555867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A374016 d

end

end A063775.P554354494179555867

namespace A063775

/-- `∑{d}[n+1, A374016(#)]` -/
def P554354494179555867.Spec : Prop :=
  ∀ n, P554354494179555867.a n = A063775 (n + 1)

end A063775

/-! ## A063775.P4542900397694352167

`A002377(A300909(n+1))`
-/

namespace A063775.P4542900397694352167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A300909 (n + 1)).toNat

end

end A063775.P4542900397694352167

namespace A063775

/-- `A002377(A300909(n+1))` -/
def P4542900397694352167.Spec : Prop :=
  ∀ n, P4542900397694352167.a n = A063775 (n + 1)

end A063775

/-! ## A063775.P15790703262062408174

`A046951(sqrt(A008833(n+1)))`
-/

namespace A063775.P15790703262062408174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

end

end A063775.P15790703262062408174

namespace A063775

/-- `A046951(sqrt(A008833(n+1)))` -/
def P15790703262062408174.Spec : Prop :=
  ∀ n, P15790703262062408174.a n = A063775 (n + 1)

end A063775

/-! ## A063775.P16050515189056756685

`A353376(sqrt(A008835(n+1)))`
-/

namespace A063775.P16050515189056756685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353376 (SequenceMachineLib.roundAway (Real.sqrt (A008835 (n + 1) : ℝ))).toNat

end

end A063775.P16050515189056756685

namespace A063775

/-- `A353376(sqrt(A008835(n+1)))` -/
def P16050515189056756685.Spec : Prop :=
  ∀ n, P16050515189056756685.a n = A063775 (n + 1)

end A063775

/-! ## A063775.P13063039551818774752

`A046951(A057918(n+1)+1)`
-/

namespace A063775.P13063039551818774752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A057918 (n + 1) + 1).toNat

end

end A063775.P13063039551818774752

namespace A063775

/-- `A046951(A057918(n+1)+1)` -/
def P13063039551818774752.Spec : Prop :=
  ∀ n, P13063039551818774752.a n = A063775 (n + 1)

theorem P13063039551818774752.correct : P13063039551818774752.Spec := by
  intro n
  simp only [A063775, Nat.add_sub_cancel, A063775.P13063039551818774752.a, A063775.P4217061199488976379.a, A000188, A000188.P7486858720566838181.a, A046951, A046951.P3618498099021746421.a, A057918, A057918.P8779601029509101892.a, A000005, A000005.P16091521709108585461.a, A008833, A008833.P18388074464065390543.a, A056595, A056595.P6705739557680561554.f1, A056595.P6705739557680561554.a, A007913, A007913.P11359412940648999332.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A049240, A049240.P14203187308614321582.a, A059479, A059479.P17464652159649958448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A063775

/-! ## A063775.P4880237234149709095

`A000005(sqrt(sqrt(A008835(n+1))))`
-/

namespace A063775.P4880237234149709095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A008835 (n + 1) : ℝ)))).toNat

end

end A063775.P4880237234149709095

namespace A063775

/-- `A000005(sqrt(sqrt(A008835(n+1))))` -/
def P4880237234149709095.Spec : Prop :=
  ∀ n, P4880237234149709095.a n = A063775 (n + 1)

end A063775

/-! ## A063775.P11067324959548802028

`∑{d}[n+1, A000005(#)*A219009((n+1)/#)]`
-/

namespace A063775.P11067324959548802028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A219009 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063775.P11067324959548802028

namespace A063775

/-- `∑{d}[n+1, A000005(#)*A219009((n+1)/#)]` -/
def P11067324959548802028.Spec : Prop :=
  ∀ n, P11067324959548802028.a n = A063775 (n + 1)

end A063775

/-! ## A063775.P804100585337470286

`∑{d}[n+1, A008836(#)*A365171((n+1)/#)]`
-/

namespace A063775.P804100585337470286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A365171 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063775.P804100585337470286

namespace A063775

/-- `∑{d}[n+1, A008836(#)*A365171((n+1)/#)]` -/
def P804100585337470286.Spec : Prop :=
  ∀ n, P804100585337470286.a n = A063775 (n + 1)

end A063775

/-! ## A063775.P2508288098898613250

`∑{d}[n+1, A322885(#)*A355684((n+1)/#)]`
-/

namespace A063775.P2508288098898613250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322885 d * A355684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063775.P2508288098898613250

namespace A063775

/-- `∑{d}[n+1, A322885(#)*A355684((n+1)/#)]` -/
def P2508288098898613250.Spec : Prop :=
  ∀ n, P2508288098898613250.a n = A063775 (n + 1)

end A063775

/-! ## A063775.P15925923105349333094

`A327160(A317933(n+1)%A000230(n))`
-/

namespace A063775.P15925923105349333094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327160 (Int.tmod (A317933 (n + 1)) (A000230 n)).toNat

end

end A063775.P15925923105349333094

namespace A063775

/-- `A327160(A317933(n+1)%A000230(n))` -/
def P15925923105349333094.Spec : Prop :=
  ∀ n, P15925923105349333094.a n = A063775 (n + 1)

end A063775

/-! ## A063775.P7005200986354348291

`A001221(ceil(((A008835(n+1)+1)²+2)/sqrt(2)))`
-/

namespace A063775.P7005200986354348291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ⌈((A008835 (n + 1) + 1) ^ 2 + 2 : ℝ) / Real.sqrt (2 : ℝ)⌉.toNat

end

end A063775.P7005200986354348291

namespace A063775

/-- `A001221(ceil(((A008835(n+1)+1)²+2)/sqrt(2)))` -/
def P7005200986354348291.Spec : Prop :=
  ∀ n, P7005200986354348291.a n = A063775 (n + 1)

end A063775

/-! ## A063775.P2814488819315430804

`A045778(A000040(n+1)*A053164(n+1))`
-/

namespace A063775.P2814488819315430804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A000040 (n + 1) * A053164 (n + 1)).toNat

end

end A063775.P2814488819315430804

namespace A063775

/-- `A045778(A000040(n+1)*A053164(n+1))` -/
def P2814488819315430804.Spec : Prop :=
  ∀ n, P2814488819315430804.a n = A063775 (n + 1)

end A063775

/-! ## A063775.P5031718588482586263

`A045778(A053140(n+1)*A053164(n+1))`
-/

namespace A063775.P5031718588482586263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A053140 (n + 1) * A053164 (n + 1)).toNat

end

end A063775.P5031718588482586263

namespace A063775

/-- `A045778(A053140(n+1)*A053164(n+1))` -/
def P5031718588482586263.Spec : Prop :=
  ∀ n, P5031718588482586263.a n = A063775 (n + 1)

end A063775

/-! ## A063775.P11729051710129905147

`A327160(A317933(n+1))%A227562(3*n+1)`
-/

namespace A063775.P11729051710129905147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327160 (A317933 (n + 1)).toNat) (A227562 (3 * n + 1 + 19))

end

end A063775.P11729051710129905147

namespace A063775

/-- `A327160(A317933(n+1))%A227562(3*n+1)` -/
def P11729051710129905147.Spec : Prop :=
  ∀ n, P11729051710129905147.a n = A063775 (n + 1)

end A063775

/-! ## A063775.P3290727034358628857

`2-A153172(A317934(n+1))`
-/

namespace A063775.P3290727034358628857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A153172 (A317934 (n + 1)).toNat

end

end A063775.P3290727034358628857

namespace A063775

/-- `2-A153172(A317934(n+1))` -/
def P3290727034358628857.Spec : Prop :=
  ∀ n, P3290727034358628857.a n = A063775 (n + 1)

end A063775

/-! ## A063775.P11956152739063775687

`A327160(A317933(n+1)²²)`
-/

namespace A063775.P11956152739063775687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327160 ((A317933 (n + 1) ^ 2) ^ 2).toNat

end

end A063775.P11956152739063775687

namespace A063775

/-- `A327160(A317933(n+1)²²)` -/
def P11956152739063775687.Spec : Prop :=
  ∀ n, P11956152739063775687.a n = A063775 (n + 1)

end A063775

/-! ## A063775.P13344367536991592877

`gcd(A032441(n), A061200(n+1))`
-/

namespace A063775.P13344367536991592877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032441 n) (A061200 (n + 1))

end

end A063775.P13344367536991592877

namespace A063775

/-- `gcd(A032441(n), A061200(n+1))` -/
def P13344367536991592877.Spec : Prop :=
  ∀ n, (P13344367536991592877.a n : ℤ) = A063775 (n + 1)

end A063775

/-!
# A063776: Number of subsets of {1,2,...,n} which sum to 0 modulo n.

The programs for A063776, the canonical program `A063776.P939957080839248717` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063776 has offset 1).

The definition of A063776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063776.P16529107764825265070

`A082550(n+1)+1`
-/

namespace A063776.P16529107764825265070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082550 (n + 1) + 1

end

end A063776.P16529107764825265070

namespace A063776

/-- `A082550(n+1)+1` -/
def P16529107764825265070.Spec : Prop :=
  ∀ n, P16529107764825265070.a n = A063776 (n + 1)

theorem P16529107764825265070.correct : P16529107764825265070.Spec := by
  intro n
  simp only [A063776, Nat.add_sub_cancel, A063776.P16529107764825265070.a, A063776.P939957080839248717.f1, A063776.P939957080839248717.a, A059841, A059841.P2666504972441551157.a, A064355, A064355.P15803301992756024606.a, A082550, A082550.P6841504247689330333.a, A011946, A011946.P13849652241662667985.f1, A011946.P13849652241662667985.a, A001511, A001511.P17146462531039486101.a, A296302, A296302.P8637239320253714587.f1, A296302.P8637239320253714587.a, A006519, A006519.P10435570611646570274.a, A034771, A034771.P14136708575511469544.f1, A034771.P14136708575511469544.a, A247343, A247343.P16054937885260863727.f1, A247343.P16054937885260863727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063776

/-! ## A063776.P6401923215412916611

`2*A000016(n+1)`
-/

namespace A063776.P6401923215412916611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000016 (n + 1)

end

end A063776.P6401923215412916611

namespace A063776

/-- `2*A000016(n+1)` -/
def P6401923215412916611.Spec : Prop :=
  ∀ n, P6401923215412916611.a n = A063776 (n + 1)

end A063776

/-! ## A063776.P17139330215910369702

`1/(n+1)*A053636(n+1)`
-/

namespace A063776.P17139330215910369702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A053636 (n + 1) : ℚ)

end

end A063776.P17139330215910369702

namespace A063776

/-- `1/(n+1)*A053636(n+1)` -/
def P17139330215910369702.Spec : Prop :=
  ∀ n, P17139330215910369702.a n = (A063776 (n + 1) : ℚ)

end A063776

/-! ## A063776.P6842357737806330048

`2*Δ[A133670(n)]`
-/

namespace A063776.P6842357737806330048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A063776.P6842357737806330048

namespace A063776

/-- `2*Δ[A133670(n)]` -/
def P6842357737806330048.Spec : Prop :=
  ∀ n, P6842357737806330048.a n = A063776 (n + 1)

end A063776

/-! ## A063776.P14657287138719751140

`A283843(n+1)-1`
-/

namespace A063776.P14657287138719751140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283843 (n + 1) - 1

end

end A063776.P14657287138719751140

namespace A063776

/-- `A283843(n+1)-1` -/
def P14657287138719751140.Spec : Prop :=
  ∀ n, P14657287138719751140.a n = A063776 (n + 1)

theorem P14657287138719751140.correct : P14657287138719751140.Spec := by
  intro n
  simp only [A063776, Nat.add_sub_cancel, A063776.P14657287138719751140.a, A063776.P939957080839248717.f1, A063776.P939957080839248717.a, A059841, A059841.P2666504972441551157.a, A064355, A064355.P15803301992756024606.a, A283843, A283843.P15067060620591103805.a, A011946, A011946.P13849652241662667985.f1, A011946.P13849652241662667985.a, A001511, A001511.P17146462531039486101.a, A296302, A296302.P8637239320253714587.f1, A296302.P8637239320253714587.a, A006519, A006519.P10435570611646570274.a, A034771, A034771.P14136708575511469544.f1, A034771.P14136708575511469544.a, A247343, A247343.P16054937885260863727.f1, A247343.P16054937885260863727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063776

/-! ## A063776.P334841895000542234

`2*(A096010(n+1)-1)`
-/

namespace A063776.P334841895000542234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A096010 (n + 1) - 1)

end

end A063776.P334841895000542234

namespace A063776

/-- `2*(A096010(n+1)-1)` -/
def P334841895000542234.Spec : Prop :=
  ∀ n, P334841895000542234.a n = A063776 (n + 1)

end A063776

/-! ## A063776.P79436069721953700

`2*(A000031(n+1)-A000013(n+1))`
-/

namespace A063776.P79436069721953700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000031 (n + 1) - A000013 (n + 1))

end

end A063776.P79436069721953700

namespace A063776

/-- `2*(A000031(n+1)-A000013(n+1))` -/
def P79436069721953700.Spec : Prop :=
  ∀ n, P79436069721953700.a n = A063776 (n + 1)

end A063776

/-! ## A063776.P17435411869601062530

`2*(A008965(n+1)-A056295(n+1))`
-/

namespace A063776.P17435411869601062530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008965 (n + 1) - A056295 (n + 1))

end

end A063776.P17435411869601062530

namespace A063776

/-- `2*(A008965(n+1)-A056295(n+1))` -/
def P17435411869601062530.Spec : Prop :=
  ∀ n, P17435411869601062530.a n = A063776 (n + 1)

end A063776

/-! ## A063776.P939957080839248717

`∑{d}[n+1, A059841(#-1)*A064355((n+1)/#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A063776

/-- `∑{d}[n+1, A059841(#-1)*A064355((n+1)/#)]` -/
def P939957080839248717.Spec : Prop :=
  ∀ n, P939957080839248717.a n = A063776 (n + 1)

theorem P939957080839248717.correct : P939957080839248717.Spec := by
  intro n
  simp only [A063776, Nat.add_sub_cancel]

end A063776

/-! ## A063776.P9536826262753386963

`A000016(n+1)+A133670(n+1)-A133670(n)`
-/

namespace A063776.P9536826262753386963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (n + 1) + (A133670 (n + 1) - A133670 n)

end

end A063776.P9536826262753386963

namespace A063776

/-- `A000016(n+1)+A133670(n+1)-A133670(n)` -/
def P9536826262753386963.Spec : Prop :=
  ∀ n, P9536826262753386963.a n = A063776 (n + 1)

end A063776

/-! ## A063776.P13384418158092863439

`A000016(n+1)+A053734(n+1)+A000048(n+1)`
-/

namespace A063776.P13384418158092863439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (n + 1) + (A053734 (n + 1) + A000048 (n + 1))

end

end A063776.P13384418158092863439

namespace A063776

/-- `A000016(n+1)+A053734(n+1)+A000048(n+1)` -/
def P13384418158092863439.Spec : Prop :=
  ∀ n, P13384418158092863439.a n = A063776 (n + 1)

end A063776

/-! ## A063776.P159997518721360834

`A000016(n+1)+A000031(n+1)-A000013(n+1)`
-/

namespace A063776.P159997518721360834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (n + 1) + (A000031 (n + 1) - A000013 (n + 1))

end

end A063776.P159997518721360834

namespace A063776

/-- `A000016(n+1)+A000031(n+1)-A000013(n+1)` -/
def P159997518721360834.Spec : Prop :=
  ∀ n, P159997518721360834.a n = A063776 (n + 1)

end A063776

/-! ## A063776.P17264472833371495081

`A008965(n+1)+A096010(n+1)-A000013(n+1)`
-/

namespace A063776.P17264472833371495081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 1) + (A096010 (n + 1) - A000013 (n + 1))

end

end A063776.P17264472833371495081

namespace A063776

/-- `A008965(n+1)+A096010(n+1)-A000013(n+1)` -/
def P17264472833371495081.Spec : Prop :=
  ∀ n, P17264472833371495081.a n = A063776 (n + 1)

end A063776

/-! ## A063776.P7403414579508542094

`Δ[A327475(n)]+1`
-/

namespace A063776.P7403414579508542094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A063776.P7403414579508542094

namespace A063776

/-- `Δ[A327475(n)]+1` -/
def P7403414579508542094.Spec : Prop :=
  ∀ n, P7403414579508542094.a n = A063776 (n + 1)

end A063776

/-! ## A063776.P7249142948249873250

`Δ[2*∑[A000016(n)]]`
-/

namespace A063776.P7249142948249873250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063776.P7249142948249873250

namespace A063776

/-- `Δ[2*∑[A000016(n)]]` -/
def P7249142948249873250.Spec : Prop :=
  ∀ n, P7249142948249873250.a n = A063776 (n + 1)

end A063776

/-! ## A063776.P9904175831794873890

`A161219(n+1)-(A000013(n+1)+A000013(n+1))`
-/

namespace A063776.P9904175831794873890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161219 (n + 1) - (A000013 (n + 1) + A000013 (n + 1))

end

end A063776.P9904175831794873890

namespace A063776

/-- `A161219(n+1)-(A000013(n+1)+A000013(n+1))` -/
def P9904175831794873890.Spec : Prop :=
  ∀ n, P9904175831794873890.a n = A063776 (n + 1)

end A063776

/-! ## A063776.P10299960359180026636

`A065795(n+1)+A327471(n)-A327477(n+1)`
-/

namespace A063776.P10299960359180026636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065795 (n + 1) + (A327471 n - A327477 (n + 1))

end

end A063776.P10299960359180026636

namespace A063776

/-- `A065795(n+1)+A327471(n)-A327477(n+1)` -/
def P10299960359180026636.Spec : Prop :=
  ∀ n, P10299960359180026636.a n = A063776 (n + 1)

end A063776

/-! ## A063776.P15284234984925049387

`A053636(n+1)/(n+1)`
-/

namespace A063776.P15284234984925049387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053636 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A063776.P15284234984925049387

namespace A063776

/-- `A053636(n+1)/(n+1)` -/
def P15284234984925049387.Spec : Prop :=
  ∀ n, P15284234984925049387.a n = (A063776 (n + 1) : ℚ)

end A063776

/-! ## A063776.P204602584060847302

`and(A143960(n+1), A283843(n+1))`
-/

namespace A063776.P204602584060847302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143960 (n + 1)) (A283843 (n + 1))

end

end A063776.P204602584060847302

namespace A063776

/-- `and(A143960(n+1), A283843(n+1))` -/
def P204602584060847302.Spec : Prop :=
  ∀ n, P204602584060847302.a n = A063776 (n + 1)

end A063776

/-! ## A063776.P12436745338162878635

`2*A053633(∑[n])`
-/

namespace A063776.P12436745338162878635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053633 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063776.P12436745338162878635

namespace A063776

/-- `2*A053633(∑[n])` -/
def P12436745338162878635.Spec : Prop :=
  ∀ n, P12436745338162878635.a n = A063776 (n + 1)

end A063776

/-!
# A063777: t(n^2) is a square and sets a new record for such squares, where t(n) = (sigma(n)-n)*omega(n); or t(n)= A001065(n)*A001221(n).

The programs for A063777, there is no canonical definition to state claims against.
-/

/-! ## A063777.P14107777784389608927

`∑[A065519(A002866(n)+n^6)+1+n]`
-/

namespace A063777.P14107777784389608927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065519 (A002866 n + (n ^ 6 : ℤ)).toNat + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063777.P14107777784389608927

/-!
# A063778: a(n) = the least integer that is polygonal in exactly n ways.

The programs for A063778, there is no canonical definition to state claims against.
-/

/-! ## A063778.P14784961264166002131

`∩[A192488(n+1), A110654(A192520(n+1))]`
-/

namespace A063778.P14784961264166002131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A192520 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063778.P14784961264166002131

/-!
# A063781: a(n) is the number of pairs of integer quadruples (b_1, b_2, b_3, b_4) and (c_1, c_2, c_3, c_4) satisfying 1 <= b_1 < b_2 < b_3 < b_4 < n, 1 <= c_1 < c_2 < c_3 < c_4 < n, b_i != c_j for all i,j = 1,2,3,4 and Product_{i=1..4} sin(2*Pi*b_i/n) = Product_{i=1..4} sin(2*Pi*c_i/n).

The programs for A063781, there is no canonical definition to state claims against.
-/

/-! ## A063781.P6892185828157619042

`and(A000032(n), A046258(A229966(n+1)))`
-/

namespace A063781.P6892185828157619042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000032 n) (A046258 (A229966 (n + 1)).toNat)

end

end A063781.P6892185828157619042

/-!
# A063782: a(0) = 1, a(1) = 3; for n > 1, a(n) = 2*a(n-1) + 4*a(n-2).

The programs for A063782, the canonical program `A063782.P750457964841289750` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063782 has offset 0).

The definition of A063782 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+4*a(n-2)` (program `A063782.P750457964841289750`, by `A063782.P750457964841289750.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063782.P750457964841289750

`2*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063782

/-- `2*a(n-1)+4*a(n-2)` -/
def P750457964841289750.Spec : Prop :=
  ∀ n, (P750457964841289750.a n : ℤ) = A063782 n

theorem P750457964841289750.correct : P750457964841289750.Spec := by
  intro n
  simp only [A063782]

end A063782

/-! ## A063782.P13113381903878145824

`ogf((1+x)/(1-2x-4x^2))`
-/

namespace A063782.P13113381903878145824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, -4] n

end

end A063782.P13113381903878145824

namespace A063782

/-- `ogf((1+x)/(1-2x-4x^2))` -/
def P13113381903878145824.Spec : Prop :=
  ∀ n, P13113381903878145824.a n = A063782 n

end A063782

/-! ## A063782.P2303676156996200521

`8*(a(n-2)+a(n-3))` with `a(0)=1, a(1)=3, a(2)=10`
-/

namespace A063782.P2303676156996200521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 10] fun n a =>
  8 * (a (n - 2) + a (n - 3))

end

end A063782.P2303676156996200521

namespace A063782

/-- `8*(a(n-2)+a(n-3))` -/
def P2303676156996200521.Spec : Prop :=
  ∀ n, (P2303676156996200521.a n : ℤ) = A063782 n

end A063782

/-! ## A063782.P14714257938978731948

`2*(3*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=1, a(1)=3`
-/

namespace A063782.P14714257938978731948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (3 * a (n - 2) - (a (n - 2) - a (n - 1)))

end

end A063782.P14714257938978731948

namespace A063782

/-- `2*(3*a(n-2)-(a(n-2)-a(n-1)))` -/
def P14714257938978731948.Spec : Prop :=
  ∀ n, P14714257938978731948.a n = A063782 n

end A063782

/-! ## A063782.P434407454022134436

`2^(n-1)*A020695(n)`
-/

namespace A063782.P434407454022134436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A020695 n : ℚ)

end

end A063782.P434407454022134436

namespace A063782

/-- `2^(n-1)*A020695(n)` -/
def P434407454022134436.Spec : Prop :=
  ∀ n, P434407454022134436.a n = (A063782 n : ℚ)

end A063782

/-! ## A063782.P7906064094654062943

`2^(n-2)*A078642(n+1)`
-/

namespace A063782.P7906064094654062943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A078642 (n + 1) : ℚ)

end

end A063782.P7906064094654062943

namespace A063782

/-- `2^(n-2)*A078642(n+1)` -/
def P7906064094654062943.Spec : Prop :=
  ∀ n, P7906064094654062943.a n = (A063782 n : ℚ)

end A063782

/-! ## A063782.P3611394570361500399

`2^(n-1)*A000045(n+3)`
-/

namespace A063782.P3611394570361500399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000045 (n + 3) : ℚ)

end

end A063782.P3611394570361500399

namespace A063782

/-- `2^(n-1)*A000045(n+3)` -/
def P3611394570361500399.Spec : Prop :=
  ∀ n, P3611394570361500399.a n = (A063782 n : ℚ)

end A063782

/-! ## A063782.P11666061140675436224

`2^(n-2)*A068922(n+2)`
-/

namespace A063782.P11666061140675436224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A068922 (n + 2) : ℚ)

end

end A063782.P11666061140675436224

namespace A063782

/-- `2^(n-2)*A068922(n+2)` -/
def P11666061140675436224.Spec : Prop :=
  ∀ n, P11666061140675436224.a n = (A063782 n : ℚ)

end A063782

/-! ## A063782.P15714708432516368264

`2^(n-2)*A055389(n+3)`
-/

namespace A063782.P15714708432516368264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A055389 (n + 3) : ℚ)

end

end A063782.P15714708432516368264

namespace A063782

/-- `2^(n-2)*A055389(n+3)` -/
def P15714708432516368264.Spec : Prop :=
  ∀ n, P15714708432516368264.a n = (A063782 n : ℚ)

end A063782

/-! ## A063782.P10181298791240821386

`2^(n-2)*A128588(n+3)`
-/

namespace A063782.P10181298791240821386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A128588 (n + 3) : ℚ)

end

end A063782.P10181298791240821386

namespace A063782

/-- `2^(n-2)*A128588(n+3)` -/
def P10181298791240821386.Spec : Prop :=
  ∀ n, P10181298791240821386.a n = (A063782 n : ℚ)

end A063782

/-! ## A063782.P4009275410531506957

`A162770(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A063782.P4009275410531506957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162770 (n - 1) + a (n - 1)

end

end A063782.P4009275410531506957

namespace A063782

/-- `A162770(n-1)+a(n-1)` -/
def P4009275410531506957.Spec : Prop :=
  ∀ n, P4009275410531506957.a n = A063782 n

end A063782

/-! ## A063782.P3548698926211570074

`2^(n-1)*round(A054886(n+1)/2)`
-/

namespace A063782.P3548698926211570074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (SequenceMachineLib.roundAway ((A054886 (n + 1) : ℚ) / 2) : ℚ)

end

end A063782.P3548698926211570074

namespace A063782

/-- `2^(n-1)*round(A054886(n+1)/2)` -/
def P3548698926211570074.Spec : Prop :=
  ∀ n, P3548698926211570074.a n = (A063782 n : ℚ)

end A063782

/-! ## A063782.P1167850179790757557

`A085449(n)+A063727(n)`
-/

namespace A063782.P1167850179790757557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 n + A063727 n

end

end A063782.P1167850179790757557

namespace A063782

/-- `A085449(n)+A063727(n)` -/
def P1167850179790757557.Spec : Prop :=
  ∀ n, P1167850179790757557.a n = A063782 n

end A063782

/-! ## A063782.P3043451956349658472

`A103435(n)+A084057(n)`
-/

namespace A063782.P3043451956349658472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103435 n + A084057 n

end

end A063782.P3043451956349658472

namespace A063782

/-- `A103435(n)+A084057(n)` -/
def P3043451956349658472.Spec : Prop :=
  ∀ n, P3043451956349658472.a n = A063782 n

end A063782

/-! ## A063782.P10187175766952870870

`A319196(n)+A209084(n)`
-/

namespace A063782.P10187175766952870870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319196 n + A209084 n

end

end A063782.P10187175766952870870

namespace A063782

/-- `A319196(n)+A209084(n)` -/
def P10187175766952870870.Spec : Prop :=
  ∀ n, P10187175766952870870.a n = A063782 n

end A063782

/-! ## A063782.P4576315273798349338

`A087131(n)-A319196(n)`
-/

namespace A063782.P4576315273798349338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087131 n - A319196 n

end

end A063782.P4576315273798349338

namespace A063782

/-- `A087131(n)-A319196(n)` -/
def P4576315273798349338.Spec : Prop :=
  ∀ n, P4576315273798349338.a n = A063782 n

end A063782

/-! ## A063782.P13135313389129363737

`A063727(n)+Δ[A014335(n)]`
-/

namespace A063782.P13135313389129363737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n + (f1 (n + 1) - f1 n)

end

end A063782.P13135313389129363737

namespace A063782

/-- `A063727(n)+Δ[A014335(n)]` -/
def P13135313389129363737.Spec : Prop :=
  ∀ n, P13135313389129363737.a n = A063782 n

end A063782

/-! ## A063782.P15462401695389039017

`A084057(n)+Δ[A014334(n)]`
-/

namespace A063782.P15462401695389039017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n + (f1 (n + 1) - f1 n)

end

end A063782.P15462401695389039017

namespace A063782

/-- `A084057(n)+Δ[A014334(n)]` -/
def P15462401695389039017.Spec : Prop :=
  ∀ n, P15462401695389039017.a n = A063782 n

end A063782

/-! ## A063782.P116764431444147420

`A085449(n+1)+A085449(n)`
-/

namespace A063782.P116764431444147420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 (n + 1) + A085449 n

end

end A063782.P116764431444147420

namespace A063782

/-- `A085449(n+1)+A085449(n)` -/
def P116764431444147420.Spec : Prop :=
  ∀ n, P116764431444147420.a n = A063782 n

end A063782

/-! ## A063782.P12396088840021458359

`A006483(n)+A084057(n)-1`
-/

namespace A063782.P12396088840021458359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006483 n + (A084057 n - 1)

end

end A063782.P12396088840021458359

namespace A063782

/-- `A006483(n)+A084057(n)-1` -/
def P12396088840021458359.Spec : Prop :=
  ∀ n, P12396088840021458359.a n = A063782 n

end A063782

/-!
# A063783: Numbers k such that the sum of the cubes of divisors of k is a prime.

The programs for A063783, there is no canonical definition to state claims against.
-/

/-! ## A063783.P13967159497047336730

`A066100(n+1)²`
-/

namespace A063783.P13967159497047336730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066100 (n + 1) ^ 2

end

end A063783.P13967159497047336730

/-! ## A063783.P2057599958393139724

`A066100(A000027(n+1))*A066100(n+1)`
-/

namespace A063783.P2057599958393139724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066100 (A000027 (n + 1)).toNat * A066100 (n + 1)

end

end A063783.P2057599958393139724

/-! ## A063783.P10879403631274103981

`A066100(n+1)^A000005(A000040(n+1))`
-/

namespace A063783.P10879403631274103981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066100 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A063783.P10879403631274103981

/-! ## A063783.P12822198870047447102

`A066100(n+1)^A259445(xor(n, n+1)+1)`
-/

namespace A063783.P12822198870047447102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066100 (n + 1) : ℚ) ^ (A259445 (Nat.xor n (n + 1) + 1) : ℤ)

end

end A063783.P12822198870047447102

/-! ## A063783.P16652087544683163111

`A066100(A110654(2*(n+1)))*A066100(n+1)`
-/

namespace A063783.P16652087544683163111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066100 (A110654 (2 * (n + 1))).toNat * A066100 (n + 1)

end

end A063783.P16652087544683163111

/-! ## A063783.P6599362566827429003

`A066100(n+1)^A000002(A216345(2*(n+1)))`
-/

namespace A063783.P6599362566827429003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066100 (n + 1) : ℚ) ^ (A000002 (A216345 (2 * (n + 1))).toNat : ℤ)

end

end A063783.P6599362566827429003

/-! ## A063783.P15731963143673718374

`A066100(n+1)^A173786(and(n+1, A000079(n+1)))`
-/

namespace A063783.P15731963143673718374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066100 (n + 1) : ℚ) ^ (A173786 (Int.land (n + 1 : ℤ) (A000079 (n + 1))).toNat : ℤ)

end

end A063783.P15731963143673718374

/-! ## A063783.P9944892999582083875

`A066100(n+1)^A173786(and(n+1, A007283(n+1)))`
-/

namespace A063783.P9944892999582083875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066100 (n + 1) : ℚ) ^ (A173786 (Int.land (n + 1 : ℤ) (A007283 (n + 1))).toNat : ℤ)

end

end A063783.P9944892999582083875

/-! ## A063783.P12901607972313638569

`A066100(n+1)^A173786(and(n+1, A005010(n+1)))`
-/

namespace A063783.P12901607972313638569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066100 (n + 1) : ℚ) ^ (A173786 (Int.land (n + 1 : ℤ) (A005010 (n + 1))).toNat : ℤ)

end

end A063783.P12901607972313638569

/-! ## A063783.P12340858121989521140

`A066100(n+1)^A000005(A066100(2*n+5))`
-/

namespace A063783.P12340858121989521140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066100 (n + 1) : ℚ) ^ (A000005 (A066100 (2 * n + 5)).toNat : ℤ)

end

end A063783.P12340858121989521140

/-!
# A063784: Primes that are the sum of cubes of divisors of some integer.

The programs for A063784, there is no canonical definition to state claims against.
-/

/-! ## A063784.P13772994953599373269

`A060883(A066100(n+1))`
-/

namespace A063784.P13772994953599373269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060883 (A066100 (n + 1)).toNat

end

end A063784.P13772994953599373269

/-!
# A063785: Numbers k such that sigma(k) = 2k + omega(k), where omega(k) is the number of distinct prime divisors of k.

The programs for A063785, there is no canonical definition to state claims against.
-/

/-! ## A063785.P17344073628028190080

`filter[A071927(n+1), A047999(#)]`
-/

namespace A063785.P17344073628028190080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A047999 (f1 j).toNat = 1) n)

end

end A063785.P17344073628028190080

/-!
# A063786: G.f.: A(x) = (x-2*x^2-2*x^3-(1+x)*sqrt(1-4*x^2)+sqrt(1-4*x^6))/(2*x^2).

The programs for A063786, there is no canonical definition to state claims against.
-/

/-! ## A063786.P1630955762450521327

`A208355(n+1)-A154955(A100100(3*(n+1)))`
-/

namespace A063786.P1630955762450521327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (n + 1) - A154955 (A100100 (3 * (n + 1))).toNat

end

end A063786.P1630955762450521327

/-! ## A063786.P9071736100151719151

`A208355(n+1)-A010054(A327884(3*(n+1)))`
-/

namespace A063786.P9071736100151719151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (n + 1) - A010054 (A327884 (3 * (n + 1))).toNat

end

end A063786.P9071736100151719151

/-! ## A063786.P16415067884590084180

`A208355(n+1)-A112609(A231463(3*n+5))`
-/

namespace A063786.P16415067884590084180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (n + 1) - A112609 (A231463 (3 * n + 5)).toNat

end

end A063786.P16415067884590084180

/-! ## A063786.P12863197526340129891

`A156706(A158738(2*n+1))+A000108(A008619(n))`
-/

namespace A063786.P12863197526340129891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (A158738 (2 * n + 1)).toNat + A000108 (A008619 n).toNat

end

end A063786.P12863197526340129891

/-! ## A063786.P12562276477990267897

`A208355(n+1)-A254379(A081293(n+1))`
-/

namespace A063786.P12562276477990267897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (n + 1) - A254379 (A081293 (n + 1)).toNat

end

end A063786.P12562276477990267897

/-!
# A063787: a(2^k) = k + 1 and a(2^k + i) = 1 + a(i) for k >= 0 and 0 < i < 2^k.

The programs for A063787, the canonical program `A063787.P13236937262237871159` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063787 has offset 1).

The definition of A063787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063787.P13236937262237871159

`A000120(n)+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063787

/-- `A000120(n)+1` -/
def P13236937262237871159.Spec : Prop :=
  ∀ n, P13236937262237871159.a n = A063787 (n + 1)

theorem P13236937262237871159.correct : P13236937262237871159.Spec := by
  intro n
  simp only [A063787, Nat.add_sub_cancel]

end A063787

/-! ## A063787.P17552974805633077823

`a(and(n, n-1))+1` with `a(0)=1`
-/

namespace A063787.P17552974805633077823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

end

end A063787.P17552974805633077823

namespace A063787

/-- `a(and(n, n-1))+1` -/
def P17552974805633077823.Spec : Prop :=
  ∀ n, (P17552974805633077823.a n : ℤ) = A063787 (n + 1)

end A063787

/-! ## A063787.P15165513997692466498

`∑[1-∑{e}[and(n, -n), #]]`
-/

namespace A063787.P15165513997692466498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063787.P15165513997692466498

namespace A063787

/-- `∑[1-∑{e}[and(n, -n), #]]` -/
def P15165513997692466498.Spec : Prop :=
  ∀ n, P15165513997692466498.a n = A063787 (n + 1)

end A063787

/-! ## A063787.P13876076299446431536

`∑[1-∑{e}[or(n, -n), #]]`
-/

namespace A063787.P13876076299446431536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063787.P13876076299446431536

namespace A063787

/-- `∑[1-∑{e}[or(n, -n), #]]` -/
def P13876076299446431536.Spec : Prop :=
  ∀ n, P13876076299446431536.a n = A063787 (n + 1)

end A063787

/-! ## A063787.P12337886167714712837

`∑[∏{e}[and(n, -n), 1-#]]`
-/

namespace A063787.P12337886167714712837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (1 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063787.P12337886167714712837

namespace A063787

/-- `∑[∏{e}[and(n, -n), 1-#]]` -/
def P12337886167714712837.Spec : Prop :=
  ∀ n, P12337886167714712837.a n = A063787 (n + 1)

end A063787

/-! ## A063787.P3756930518774239886

`a(floor(n/2))+n%2` with `a(0)=1`
-/

namespace A063787.P3756930518774239886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + n % 2

end

end A063787.P3756930518774239886

namespace A063787

/-- `a(floor(n/2))+n%2` -/
def P3756930518774239886.Spec : Prop :=
  ∀ n, (P3756930518774239886.a n : ℤ) = A063787 (n + 1)

end A063787

/-! ## A063787.P6276090907080286168

`a(floor(n/2))+and(1, n)` with `a(0)=1`
-/

namespace A063787.P6276090907080286168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + Nat.land 1 n

end

end A063787.P6276090907080286168

namespace A063787

/-- `a(floor(n/2))+and(1, n)` -/
def P6276090907080286168.Spec : Prop :=
  ∀ n, (P6276090907080286168.a n : ℤ) = A063787 (n + 1)

end A063787

/-! ## A063787.P15866203585426305157

`a(n-1)+1-val(n, 2)` with `a(0)=1`
-/

namespace A063787.P15866203585426305157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 - (SequenceMachineLib.valuation n 2 : ℤ))

end

end A063787.P15866203585426305157

namespace A063787

/-- `a(n-1)+1-val(n, 2)` -/
def P15866203585426305157.Spec : Prop :=
  ∀ n, P15866203585426305157.a n = A063787 (n + 1)

end A063787

/-! ## A063787.P10540971636522189248

`1-(val(n, 2)-a(n-1))` with `a(0)=1`
-/

namespace A063787.P10540971636522189248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((SequenceMachineLib.valuation n 2 : ℤ) - a (n - 1))

end

end A063787.P10540971636522189248

namespace A063787

/-- `1-(val(n, 2)-a(n-1))` -/
def P10540971636522189248.Spec : Prop :=
  ∀ n, P10540971636522189248.a n = A063787 (n + 1)

end A063787

/-! ## A063787.P17190225753963493560

`1-floor(-a(and(n, n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A063787.P17190225753963493560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (-a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A063787.P17190225753963493560

namespace A063787

/-- `1-floor(-a(and(n, n-1)))` -/
def P17190225753963493560.Spec : Prop :=
  ∀ n, P17190225753963493560.a n = A063787 (n + 1)

end A063787

/-! ## A063787.P3463788026355469338

`1-ceil(-a(and(n, n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A063787.P3463788026355469338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (-a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A063787.P3463788026355469338

namespace A063787

/-- `1-ceil(-a(and(n, n-1)))` -/
def P3463788026355469338.Spec : Prop :=
  ∀ n, P3463788026355469338.a n = A063787 (n + 1)

end A063787

/-! ## A063787.P8108462239973162566

`∑{e}[2*a(and(n, n-1)), #]` with `a(0)=2`
-/

namespace A063787.P8108462239973162566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A063787.P8108462239973162566

namespace A063787

/-- `∑{e}[2*a(and(n, n-1)), #]` -/
def P8108462239973162566.Spec : Prop :=
  ∀ n, (P8108462239973162566.a n : ℤ) = A063787 (n + 1)

end A063787

/-! ## A063787.P12436728643135861152

`∏{e}[2*a(and(n, n-1)), #]` with `a(0)=2`
-/

namespace A063787.P12436728643135861152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A063787.P12436728643135861152

namespace A063787

/-- `∏{e}[2*a(and(n, n-1)), #]` -/
def P12436728643135861152.Spec : Prop :=
  ∀ n, (P12436728643135861152.a n : ℤ) = A063787 (n + 1)

end A063787

/-! ## A063787.P9855163000632841830

`∑[∑{e}[xor(n, -n), 2-#]]+1`
-/

namespace A063787.P9855163000632841830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A063787.P9855163000632841830

namespace A063787

/-- `∑[∑{e}[xor(n, -n), 2-#]]+1` -/
def P9855163000632841830.Spec : Prop :=
  ∀ n, P9855163000632841830.a n = A063787 (n + 1)

end A063787

/-! ## A063787.P8205756575325669162

`a(floor(n/2))+2-gcd(2, n)` with `a(0)=1`
-/

namespace A063787.P8205756575325669162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (2 - (Nat.gcd 2 n : ℤ))

end

end A063787.P8205756575325669162

namespace A063787

/-- `a(floor(n/2))+2-gcd(2, n)` -/
def P8205756575325669162.Spec : Prop :=
  ∀ n, P8205756575325669162.a n = A063787 (n + 1)

end A063787

/-! ## A063787.P13885328251588872130

`∑[1-val(abs(1-n)+1, 2)]+1`
-/

namespace A063787.P13885328251588872130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A063787.P13885328251588872130

namespace A063787

/-- `∑[1-val(abs(1-n)+1, 2)]+1` -/
def P13885328251588872130.Spec : Prop :=
  ∀ n, P13885328251588872130.a n = A063787 (n + 1)

end A063787

/-! ## A063787.P12865432818723274721

`∑[a(floor(n/2))-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A063787.P12865432818723274721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063787.P12865432818723274721

namespace A063787

/-- `∑[a(floor(n/2))-a(n-1)]` -/
def P12865432818723274721.Spec : Prop :=
  ∀ n, P12865432818723274721.a n = A063787 (n + 1)

end A063787

/-! ## A063787.P13852914001072807625

`a(floor(n/2))+(1-(-1)^n)/2` with `a(0)=1`
-/

namespace A063787.P13852914001072807625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n : ℚ) / 2

end

end A063787.P13852914001072807625

namespace A063787

/-- `a(floor(n/2))+(1-(-1)^n)/2` -/
def P13852914001072807625.Spec : Prop :=
  ∀ n, P13852914001072807625.a n = (A063787 (n + 1) : ℚ)

end A063787

/-! ## A063787.P1627741416201189539

`log2(A117973(n))`
-/

namespace A063787.P1627741416201189539
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A117973 n : ℝ)

end

end A063787.P1627741416201189539

namespace A063787

/-- `log2(A117973(n))` -/
def P1627741416201189539.Spec : Prop :=
  ∀ n, P1627741416201189539.a n = (A063787 (n + 1) : ℝ)

end A063787

/-! ## A063787.P12636439591678763288

`val(A256257(n), 2)`
-/

namespace A063787.P12636439591678763288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A256257 n).toNat 2

end

end A063787.P12636439591678763288

namespace A063787

/-- `val(A256257(n), 2)` -/
def P12636439591678763288.Spec : Prop :=
  ∀ n, (P12636439591678763288.a n : ℤ) = A063787 (n + 1)

end A063787

/-!
# A063791: Numbers k such that 2^(k+1) - k - 2 is prime.

The programs for A063791, there is no canonical definition to state claims against.
-/

/-! ## A063791.P3910813525995216202

`A099439(n+1)-1`
-/

namespace A063791.P3910813525995216202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099439 (n + 1) - 1

end

end A063791.P3910813525995216202

/-! ## A063791.P9660200535393947931

`record[A099439(A286602(n))-1]`
-/

namespace A063791.P9660200535393947931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099439 (A286602 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063791.P9660200535393947931

/-! ## A063791.P18031703781904579164

`or(1, A099439(A005496(n)))-2`
-/

namespace A063791.P18031703781904579164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A099439 (A005496 n).toNat) - 2

end

end A063791.P18031703781904579164

/-! ## A063791.P1443542211397847667

`or(1, A099439(A348553(n)))-2`
-/

namespace A063791.P1443542211397847667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A099439 (A348553 n).toNat) - 2

end

end A063791.P1443542211397847667

/-! ## A063791.P15973318497487860354

`A153881(n+2)+A099439(n+1)`
-/

namespace A063791.P15973318497487860354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A099439 (n + 1)

end

end A063791.P15973318497487860354

/-!
# A063792: Subtractive primes: p = x1x2x3..xk is a k-digit prime in base 10 such that abs(x1-x2-x3-...-xk) is also a prime.

The programs for A063792, there is no canonical definition to state claims against.
-/

/-! ## A063792.P7009872561175761057

`p?[(n+1)*A018783(A040997(n+1))]`
-/

namespace A063792.P7009872561175761057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A018783 (A040997 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063792.P7009872561175761057

/-! ## A063792.P2232217664782880082

`or(A035214(A008346(n)), A158281(n+1))`
-/

namespace A063792.P2232217664782880082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035214 (A008346 n).toNat) (A158281 (n + 1))

end

end A063792.P2232217664782880082

/-! ## A063792.P11328954087615432993

`or(A040001(A293842(n+1)), A158281(n+1))`
-/

namespace A063792.P11328954087615432993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040001 (A293842 (n + 1)).toNat) (A158281 (n + 1))

end

end A063792.P11328954087615432993

/-! ## A063792.P1947646331674163627

`or(A158281(n+1), A158288(A158250(2*n+1)))`
-/

namespace A063792.P1947646331674163627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A158281 (n + 1)) (A158288 (A158250 (2 * n + 1)).toNat)

end

end A063792.P1947646331674163627

/-! ## A063792.P13084165893407624303

`or(A102683(A075426(n)), A158281(n+1))`
-/

namespace A063792.P13084165893407624303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 (A075426 n).toNat) (A158281 (n + 1))

end

end A063792.P13084165893407624303

/-!
# A063793: a(n) = Min{ q prime | nextprime(q) - q - 1 = prime(n)}, or 0 if none exist.

The programs for A063793, there is no canonical definition to state claims against.
-/

/-! ## A063793.P10210280010488815632

`A000230(ceil(p?[2*n+1]/2))`
-/

namespace A063793.P10210280010488815632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌉.toNat

end

end A063793.P10210280010488815632

/-! ## A063793.P15419453312762706633

`A000230(A006254(n+1))`
-/

namespace A063793.P15419453312762706633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A006254 (n + 1)).toNat

end

end A063793.P15419453312762706633

/-! ## A063793.P3059294684762720971

`A000230(A111333(n+2))`
-/

namespace A063793.P3059294684762720971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A111333 (n + 2)).toNat

end

end A063793.P3059294684762720971

/-! ## A063793.P10957856353864883242

`A000230(A130291(n+2))`
-/

namespace A063793.P10957856353864883242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A130291 (n + 2)).toNat

end

end A063793.P10957856353864883242

/-! ## A063793.P9091832305424780352

`A000230(A005097(n+1)+1)`
-/

namespace A063793.P9091832305424780352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A005097 (n + 1) + 1).toNat

end

end A063793.P9091832305424780352

/-! ## A063793.P4162328261196633653

`A000230(A067076(n+1)+2)`
-/

namespace A063793.P4162328261196633653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A067076 (n + 1) + 2).toNat

end

end A063793.P4162328261196633653

/-! ## A063793.P16807096488674377848

`A000230(A098090(n+1)-1)`
-/

namespace A063793.P16807096488674377848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A098090 (n + 1) - 1).toNat

end

end A063793.P16807096488674377848

/-! ## A063793.P2423745719856644160

`A000230(A089253(n+1)-2)`
-/

namespace A063793.P2423745719856644160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A089253 (n + 1) - 2).toNat

end

end A063793.P2423745719856644160

/-! ## A063793.P12566932641443735334

`A000230(A008864(n+2)/2)`
-/

namespace A063793.P12566932641443735334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (SequenceMachineLib.roundAway ((A008864 (n + 2) : ℚ) / 2)).toNat

end

end A063793.P12566932641443735334

/-! ## A063793.P12735622268055824283

`A045881(A005097(n+1)+1)-1`
-/

namespace A063793.P12735622268055824283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045881 (A005097 (n + 1) + 1).toNat - 1

end

end A063793.P12735622268055824283

/-! ## A063793.P2789706162057299002

`A000230((A065091(n+1)+1)/2)`
-/

namespace A063793.P2789706162057299002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (SequenceMachineLib.roundAway ((A065091 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A063793.P2789706162057299002

/-! ## A063793.P10353435169268590496

`A000230(A008507(n+1)+n+2)`
-/

namespace A063793.P10353435169268590496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A008507 (n + 1) + (n + 2 : ℤ)).toNat

end

end A063793.P10353435169268590496

/-! ## A063793.P17939757910619958061

`A000230(A008619(p?[A004273(n)]))`
-/

namespace A063793.P17939757910619958061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A008619 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A063793.P17939757910619958061

/-! ## A063793.P11867398502669568523

`A000230(A008619(p?[A005408(n)]))`
-/

namespace A063793.P11867398502669568523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A008619 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A063793.P11867398502669568523

/-!
# A063797: Numbers n such that sigma(d(n^3))==d(sigma(n^2)), where d(n) is the number of divisors of n.

The programs for A063797, there is no canonical definition to state claims against.
-/

/-! ## A063797.P16012109090863019646

`(A003628(n+5)%A371104(3*n+1))²`
-/

namespace A063797.P16012109090863019646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003628 (n + 5)) (A371104 (3 * n + 1)) ^ 2

end

end A063797.P16012109090863019646

