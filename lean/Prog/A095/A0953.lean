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
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A095300: Numbers k such that A094758(k) < k.

The programs for A095300, there is no canonical definition to state claims against.
-/

/-! ## A095300.P15519809830824393703

`lt[A094758(round(sqrt(n²+1))), n]`
-/

namespace A095300.P15519809830824393703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094758 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095300.P15519809830824393703

/-! ## A095300.P8801019199160163896

`lt[A094758(n+1), n+1]+1`
-/

namespace A095300.P8801019199160163896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094758 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A095300.P8801019199160163896

/-! ## A095300.P7046127880817906933

`lt[A056594(n), A096158(A075861(n+6))]`
-/

namespace A095300.P7046127880817906933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096158 (A075861 (n + 6)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095300.P7046127880817906933

/-! ## A095300.P996934290908601186

`lt[A193067(n+1), A189684(n+1)+1]+1`
-/

namespace A095300.P996934290908601186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189684 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A095300.P996934290908601186

/-! ## A095300.P15532934645578874020

`lt[A007431(n), A003056(A117707(n))]`
-/

namespace A095300.P15532934645578874020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A117707 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095300.P15532934645578874020

/-!
# A095301: Numbers n such that there is some k < n with n*sigma(k) = k*sigma(n).

The programs for A095301, there is no canonical definition to state claims against.
-/

/-! ## A095301.P1099084550175548120

`record[A050973(A305801(n+1))]`
-/

namespace A095301.P1099084550175548120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050973 (A305801 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095301.P1099084550175548120

/-! ## A095301.P18035751090233005092

`record[A050973((n+1)/A020639(n+1))]`
-/

namespace A095301.P18035751090233005092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050973 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095301.P18035751090233005092

/-! ## A095301.P2791871689538201856

`record[A050973(n+1)%A050973(n+2)]`
-/

namespace A095301.P2791871689538201856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050973 (n + 1)) (A050973 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095301.P2791871689538201856

/-! ## A095301.P7322233663395971634

`record[A050973(A077610(n+1))]`
-/

namespace A095301.P7322233663395971634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050973 (A077610 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095301.P7322233663395971634

/-! ## A095301.P11142279181793856561

`record[A050973(A003963(n+1))]`
-/

namespace A095301.P11142279181793856561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050973 (A003963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095301.P11142279181793856561

/-!
# A095302: Smallest prime of the form k^n+2 with k>1.

The programs for A095302, there is no canonical definition to state claims against.
-/

/-! ## A095302.P17226356667442501107

`p?[A067500(n+1)+2]`
-/

namespace A095302.P17226356667442501107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067500 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095302.P17226356667442501107

/-!
# A095303: Smallest number k such that k^n - 2 is prime.

The programs for A095303, there is no canonical definition to state claims against.
-/

/-! ## A095303.P12428480112226160035

`A245516(n+1)-char[n^8]`
-/

namespace A095303.P12428480112226160035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245516 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A095303.P12428480112226160035

/-! ## A095303.P12212431190277700397

`xor(char[A001017(n)], A245516(n+1))`
-/

namespace A095303.P12212431190277700397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A245516 (n + 1))

end

end A095303.P12212431190277700397

/-! ## A095303.P7909744892273441127

`xor(char[A005951(n)], A245516(n+1))`
-/

namespace A095303.P7909744892273441127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005951 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A245516 (n + 1))

end

end A095303.P7909744892273441127

/-! ## A095303.P12255189987799480822

`xor(char[A005952(n)], A245516(n+1))`
-/

namespace A095303.P12255189987799480822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005952 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A245516 (n + 1))

end

end A095303.P12255189987799480822

/-! ## A095303.P9216346999384969228

`xor(char[A008454(n)], A245516(n+1))`
-/

namespace A095303.P9216346999384969228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A245516 (n + 1))

end

end A095303.P9216346999384969228

/-! ## A095303.P12998433522776269124

`xor(char[A120086(n)], A245516(n+1))`
-/

namespace A095303.P12998433522776269124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120086 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A245516 (n + 1))

end

end A095303.P12998433522776269124

/-! ## A095303.P15985787550696640642

`xor(A019590(n+1), A245516(n+1))`
-/

namespace A095303.P15985787550696640642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019590 (n + 1)) (A245516 (n + 1))

end

end A095303.P15985787550696640642

/-! ## A095303.P3283819788287142072

`xor(A000045(C(2, 2*n)), A245516(n+1))`
-/

namespace A095303.P3283819788287142072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000045 (Nat.choose 2 (2 * n))) (A245516 (n + 1))

end

end A095303.P3283819788287142072

/-! ## A095303.P16450243514102719474

`xor(A008683(A253909(n)), A245516(n+1))`
-/

namespace A095303.P16450243514102719474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008683 (A253909 n).toNat) (A245516 (n + 1))

end

end A095303.P16450243514102719474

/-!
# A095304: Smallest prime of the form k^n-2.

The programs for A095304, there is no canonical definition to state claims against.
-/

/-! ## A095304.P7359194562542476518

`A095303(n+1)^(n+1)-2`
-/

namespace A095304.P7359194562542476518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095303 (n + 1) ^ (n + 1) - 2

end

end A095304.P7359194562542476518

/-! ## A095304.P13651362258242964444

`A014232(a(floor(n/3))+n%3)` with `a(0)=2, a(1)=2`
-/

namespace A095304.P13651362258242964444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A014232 (a ⌊(n : ℚ) / 3⌋.toNat + ((n % 3 : ℕ) : ℤ)).toNat

end

end A095304.P13651362258242964444

/-!
# A095305: Numbers k such that A094020(k) < k.

The programs for A095305, there is no canonical definition to state claims against.
-/

/-! ## A095305.P6121949194046505772

`lt[A094020(A028310(n)), n]`
-/

namespace A095305.P6121949194046505772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094020 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095305.P6121949194046505772

/-! ## A095305.P4711385304110289525

`eq[gcd(2, n), A010466(A323436(n))]`
-/

namespace A095305.P4711385304110289525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010466 ((A323436 n).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095305.P4711385304110289525

/-! ## A095305.P7151205946950974369

`∩[A123666(n+1), A377431(n+1)]`
-/

namespace A095305.P7151205946950974369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095305.P7151205946950974369

/-! ## A095305.P17383178457133689206

`eq[A020639(n+2), A010466(A323436(n))]`
-/

namespace A095305.P17383178457133689206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010466 ((A323436 n).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095305.P17383178457133689206

/-! ## A095305.P12801728733851020420

`A123666(A000005(2^n)+1)`
-/

namespace A095305.P12801728733851020420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123666 (A000005 (2 ^ n) + 1).toNat

end

end A095305.P12801728733851020420

/-!
# A095306: Numbers k such that R(d) * 2^k + 1 is prime, where R() = A002275 and d is the number of decimal digits of 2^k.

The programs for A095306, there is no canonical definition to state claims against.
-/

/-! ## A095306.P2948854119513407093

`A093875(A054886(∑[n]))`
-/

namespace A095306.P2948854119513407093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (A054886 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A095306.P2948854119513407093

/-! ## A095306.P16957547531453170847

`∑[A002260(A279358(n))]`
-/

namespace A095306.P16957547531453170847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A279358 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095306.P16957547531453170847

/-!
# A095307: Number of walks of length n between two nodes at distance 2 in the cycle graph C_7.

The programs for A095307, the canonical program `A095307.P9202251601373775939` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095307 has offset 2).

The definition of A095307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095307.P9202251601373775939

`a(n-1)+4*a(n-2)-3*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095307

/-- `a(n-1)+4*a(n-2)-3*a(n-3)-2*a(n-4)` -/
def P9202251601373775939.Spec : Prop :=
  ∀ n, P9202251601373775939.a n = A095307 (n + 2)

theorem P9202251601373775939.correct : P9202251601373775939.Spec := by
  intro n
  simp only [A095307, Nat.add_sub_cancel]

end A095307

/-! ## A095307.P12888338444504154090

`ogf((1-x)/(1-x-4x^2+3x^3+2x^4))`
-/

namespace A095307.P12888338444504154090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -1, -4, 3, 2] n

end

end A095307.P12888338444504154090

namespace A095307

/-- `ogf((1-x)/(1-x-4x^2+3x^3+2x^4))` -/
def P12888338444504154090.Spec : Prop :=
  ∀ n, P12888338444504154090.a n = A095307 (n + 2)

end A095307

/-! ## A095307.P13319797993718810969

`A078038(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A095307.P13319797993718810969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078038 n + 2 * a (n - 1)

end

end A095307.P13319797993718810969

namespace A095307

/-- `A078038(n)+2*a(n-1)` -/
def P13319797993718810969.Spec : Prop :=
  ∀ n, P13319797993718810969.a n = A095307 (n + 2)

end A095307

/-! ## A095307.P16432577239419579975

`2*a(n-1)+∑[A028495(n)]*A033999(n)` with `a(0)=1`
-/

namespace A095307.P16432577239419579975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A095307.P16432577239419579975

namespace A095307

/-- `2*a(n-1)+∑[A028495(n)]*A033999(n)` -/
def P16432577239419579975.Spec : Prop :=
  ∀ n, P16432577239419579975.a n = A095307 (n + 2)

end A095307

/-!
# A095308: Number of walks of length n between two nodes at distance 3 in the cycle graph C_7.

The programs for A095308, the canonical program `A095308.P14153659929657982445` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095308 has offset 3).

The definition of A095308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095308.P14153659929657982445

`a(n-1)+4*a(n-2)-3*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095308

/-- `a(n-1)+4*a(n-2)-3*a(n-3)-2*a(n-4)` -/
def P14153659929657982445.Spec : Prop :=
  ∀ n, P14153659929657982445.a n = A095308 (n + 3)

theorem P14153659929657982445.correct : P14153659929657982445.Spec := by
  intro n
  simp only [A095308, Nat.add_sub_cancel]

end A095308

/-! ## A095308.P11892142492429091797

`ogf(1/(1-x-4x^2+3x^3+2x^4))`
-/

namespace A095308.P11892142492429091797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -4, 3, 2] n

end

end A095308.P11892142492429091797

namespace A095308

/-- `ogf(1/(1-x-4x^2+3x^3+2x^4))` -/
def P11892142492429091797.Spec : Prop :=
  ∀ n, P11892142492429091797.a n = A095308 (n + 3)

end A095308

/-! ## A095308.P7262793714056360920

`∑[A095307(n+2)]`
-/

namespace A095308.P7262793714056360920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095307 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095308.P7262793714056360920

namespace A095308

/-- `∑[A095307(n+2)]` -/
def P7262793714056360920.Spec : Prop :=
  ∀ n, P7262793714056360920.a n = A095308 (n + 3)

end A095308

/-! ## A095308.P15778002514597049811

`∑[a(n-1)+A078038(n)+a(n-1)]` with `a(0)=1`
-/

namespace A095308.P15778002514597049811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (A078038 n + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095308.P15778002514597049811

namespace A095308

/-- `∑[a(n-1)+A078038(n)+a(n-1)]` -/
def P15778002514597049811.Spec : Prop :=
  ∀ n, P15778002514597049811.a n = A095308 (n + 3)

end A095308

/-! ## A095308.P6052528220976586932

`2*a(n-1)+∑[A052547(n)]*A033999(n)` with `a(0)=1`
-/

namespace A095308.P6052528220976586932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A095308.P6052528220976586932

namespace A095308

/-- `2*a(n-1)+∑[A052547(n)]*A033999(n)` -/
def P6052528220976586932.Spec : Prop :=
  ∀ n, P6052528220976586932.a n = A095308 (n + 3)

end A095308

/-! ## A095308.P4893236240440266425

`A095307(n+4)-A094052(n+3)`
-/

namespace A095308.P4893236240440266425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095307 (n + 4) - A094052 (n + 3)

end

end A095308.P4893236240440266425

namespace A095308

/-- `A095307(n+4)-A094052(n+3)` -/
def P4893236240440266425.Spec : Prop :=
  ∀ n, P4893236240440266425.a n = A095308 (n + 3)

end A095308

/-!
# A095309: Numbers such that both their binary and Zeckendorf representations are palindromic.

The programs for A095309, there is no canonical definition to state claims against.
-/

/-! ## A095309.P3684799538053934469

`record[gcd(3*n, A349239(n))*A178225(n)]`
-/

namespace A095309.P3684799538053934469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (3 * n : ℤ) (A349239 n) : ℤ) * A178225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095309.P3684799538053934469

/-!
# A095310: a(n+3) = 2*a(n+2) + 3*(n+1) - a(n).

The programs for A095310, the canonical program `A095310.P9758420245812040289` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095310 has offset 1).

The definition of A095310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095310.P5249881107789928398

`ogf((1+3x-x^2)/(1-2x-3x^2+x^3))`
-/

namespace A095310.P5249881107789928398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1] [1, -2, -3, 1] n

end

end A095310.P5249881107789928398

namespace A095310

/-- `ogf((1+3x-x^2)/(1-2x-3x^2+x^3))` -/
def P5249881107789928398.Spec : Prop :=
  ∀ n, P5249881107789928398.a n = A095310 (n + 1)

end A095310

/-! ## A095310.P9758420245812040289

`A122299(n+3)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A095310

/-- `A122299(n+3)` -/
def P9758420245812040289.Spec : Prop :=
  ∀ n, P9758420245812040289.a n = A095310 (n + 1)

theorem P9758420245812040289.correct : P9758420245812040289.Spec := by
  intro n
  simp only [A095310, Nat.add_sub_cancel]

end A095310

/-! ## A095310.P15394788496285036837

`record[A122299(A262672(n))]`
-/

namespace A095310.P15394788496285036837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122299 (A262672 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095310.P15394788496285036837

namespace A095310

/-- `record[A122299(A262672(n))]` -/
def P15394788496285036837.Spec : Prop :=
  ∀ n, P15394788496285036837.a n = A095310 (n + 1)

end A095310

/-! ## A095310.P5495722771559233125

`record[A122299(A038569(A016777(n)))]`
-/

namespace A095310.P5495722771559233125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122299 (A038569 (A016777 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095310.P5495722771559233125

namespace A095310

/-- `record[A122299(A038569(A016777(n)))]` -/
def P5495722771559233125.Spec : Prop :=
  ∀ n, P5495722771559233125.a n = A095310 (n + 1)

end A095310

/-! ## A095310.P17943132993798139572

`record[A122299(A052938(A004442(n)))]`
-/

namespace A095310.P17943132993798139572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122299 (A052938 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095310.P17943132993798139572

namespace A095310

/-- `record[A122299(A052938(A004442(n)))]` -/
def P17943132993798139572.Spec : Prop :=
  ∀ n, P17943132993798139572.a n = A095310 (n + 1)

end A095310

/-! ## A095310.P10489833240871337581

`A095127(n+1)+A095127(n+1)-A095125(n+1)`
-/

namespace A095310.P10489833240871337581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095127 (n + 1) + (A095127 (n + 1) - A095125 (n + 1))

end

end A095310.P10489833240871337581

namespace A095310

/-- `A095127(n+1)+A095127(n+1)-A095125(n+1)` -/
def P10489833240871337581.Spec : Prop :=
  ∀ n, P10489833240871337581.a n = A095310 (n + 1)

end A095310

/-! ## A095310.P5233839988941274937

`Δ[ogf(1/(1-2x-3x^2+x^3))]`
-/

namespace A095310.P5233839988941274937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095310.P5233839988941274937

namespace A095310

/-- `Δ[ogf(1/(1-2x-3x^2+x^3))]` -/
def P5233839988941274937.Spec : Prop :=
  ∀ n, P5233839988941274937.a n = A095310 (n + 1)

end A095310

/-! ## A095310.P9694943548646330344

`2*A095127(n+1)-A095125(n+1)`
-/

namespace A095310.P9694943548646330344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095127 (n + 1) - A095125 (n + 1)

end

end A095310.P9694943548646330344

namespace A095310

/-- `2*A095127(n+1)-A095125(n+1)` -/
def P9694943548646330344.Spec : Prop :=
  ∀ n, P9694943548646330344.a n = A095310 (n + 1)

end A095310

/-! ## A095310.P17274065494578794361

`Δ[Δ[A095127(n+1)/3]]`
-/

namespace A095310.P17274065494578794361
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095127 (n + 1) : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095310.P17274065494578794361

namespace A095310

/-- `Δ[Δ[A095127(n+1)/3]]` -/
def P17274065494578794361.Spec : Prop :=
  ∀ n, P17274065494578794361.a n = (A095310 (n + 1) : ℚ)

end A095310

/-!
# A095311: 47-gonal numbers.

The programs for A095311, the canonical program `A095311.P7153837192117820065` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095311 has offset 1).

The definition of A095311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095311.P7153837192117820065

`(n+1)*(45*(n+1)-43)/2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095311

/-- `(n+1)*(45*(n+1)-43)/2` -/
def P7153837192117820065.Spec : Prop :=
  ∀ n, P7153837192117820065.a n = (A095311 (n + 1) : ℚ)

end A095311

/-! ## A095311.P3272861621418768012

`∑[a(n-1)+45]` with `a(0)=1`
-/

namespace A095311.P3272861621418768012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 45

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095311.P3272861621418768012

namespace A095311

/-- `∑[a(n-1)+45]` -/
def P3272861621418768012.Spec : Prop :=
  ∀ n, (P3272861621418768012.a n : ℤ) = A095311 (n + 1)

end A095311

/-! ## A095311.P5749896953751297993

`abs(∑[xor(45*n, -1)])`
-/

namespace A095311.P5749896953751297993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (45 * n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A095311.P5749896953751297993

namespace A095311

/-- `abs(∑[xor(45*n, -1)])` -/
def P5749896953751297993.Spec : Prop :=
  ∀ n, P5749896953751297993.a n = A095311 (n + 1)

end A095311

/-! ## A095311.P14433133767190037409

`-∑[xor(45*n, -1)]`
-/

namespace A095311.P14433133767190037409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (45 * n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095311.P14433133767190037409

namespace A095311

/-- `-∑[xor(45*n, -1)]` -/
def P14433133767190037409.Spec : Prop :=
  ∀ n, P14433133767190037409.a n = A095311 (n + 1)

end A095311

/-! ## A095311.P9231509784980253724

`45*n+a(n-1)+1` with `a(0)=1`
-/

namespace A095311.P9231509784980253724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  45 * n + (a (n - 1) + 1)

end

end A095311.P9231509784980253724

namespace A095311

/-- `45*n+a(n-1)+1` -/
def P9231509784980253724.Spec : Prop :=
  ∀ n, (P9231509784980253724.a n : ℤ) = A095311 (n + 1)

end A095311

/-! ## A095311.P597279491210454665

`A129428(n)-n²`
-/

namespace A095311.P597279491210454665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129428 n - (n ^ 2 : ℤ)

end

end A095311.P597279491210454665

namespace A095311

/-- `A129428(n)-n²` -/
def P597279491210454665.Spec : Prop :=
  ∀ n, P597279491210454665.a n = A095311 (n + 1)

end A095311

/-! ## A095311.P3126375677055891783

`3*A194715(n)+n+1`
-/

namespace A095311.P3126375677055891783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A194715 n + (n + 1 : ℤ)

end

end A095311.P3126375677055891783

namespace A095311

/-- `3*A194715(n)+n+1` -/
def P3126375677055891783.Spec : Prop :=
  ∀ n, P3126375677055891783.a n = A095311 (n + 1)

end A095311

/-! ## A095311.P5341640192201739171

`45*A000217(n)+1+n`
-/

namespace A095311.P5341640192201739171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  45 * A000217 n + 1 + (n : ℤ)

end

end A095311.P5341640192201739171

namespace A095311

/-- `45*A000217(n)+1+n` -/
def P5341640192201739171.Spec : Prop :=
  ∀ n, P5341640192201739171.a n = A095311 (n + 1)

end A095311

/-! ## A095311.P6343996005404309966

`A098924(n+1)+n²+n`
-/

namespace A095311.P6343996005404309966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098924 (n + 1) + (n ^ 2 + n : ℤ)

end

end A095311.P6343996005404309966

namespace A095311

/-- `A098924(n+1)+n²+n` -/
def P6343996005404309966.Spec : Prop :=
  ∀ n, P6343996005404309966.a n = A095311 (n + 1)

end A095311

/-! ## A095311.P94948168213070083

`3*A069128(n+1)+n-2`
-/

namespace A095311.P94948168213070083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A069128 (n + 1) + ((n : ℤ) - 2)

end

end A095311.P94948168213070083

namespace A095311

/-- `3*A069128(n+1)+n-2` -/
def P94948168213070083.Spec : Prop :=
  ∀ n, P94948168213070083.a n = A095311 (n + 1)

end A095311

/-! ## A095311.P8844167545038424710

`A195318(n+1)+A000096(n)`
-/

namespace A095311.P8844167545038424710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195318 (n + 1) + A000096 n

end

end A095311.P8844167545038424710

namespace A095311

/-- `A195318(n+1)+A000096(n)` -/
def P8844167545038424710.Spec : Prop :=
  ∀ n, P8844167545038424710.a n = A095311 (n + 1)

end A095311

/-! ## A095311.P3461783765038515625

`A061792(n)-(A027690(n)+n²)`
-/

namespace A095311.P3461783765038515625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061792 n - (A027690 n + (n ^ 2 : ℤ))

end

end A095311.P3461783765038515625

namespace A095311

/-- `A061792(n)-(A027690(n)+n²)` -/
def P3461783765038515625.Spec : Prop :=
  ∀ n, P3461783765038515625.a n = A095311 (n + 1)

end A095311

/-! ## A095311.P14525248169859084248

`A016922(n)-(A255186(n)+n²)`
-/

namespace A095311.P14525248169859084248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 n - (A255186 n + (n ^ 2 : ℤ))

end

end A095311.P14525248169859084248

namespace A095311

/-- `A016922(n)-(A255186(n)+n²)` -/
def P14525248169859084248.Spec : Prop :=
  ∀ n, P14525248169859084248.a n = A095311 (n + 1)

end A095311

/-! ## A095311.P3278295515177773537

`A164136(n)+A262221(n)-n²`
-/

namespace A095311.P3278295515177773537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164136 n + (A262221 n - (n ^ 2 : ℤ))

end

end A095311.P3278295515177773537

namespace A095311

/-- `A164136(n)+A262221(n)-n²` -/
def P3278295515177773537.Spec : Prop :=
  ∀ n, P3278295515177773537.a n = A095311 (n + 1)

end A095311

/-! ## A095311.P14882356613124684141

`A302576(n+1)+A178572(n+1)`
-/

namespace A095311.P14882356613124684141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302576 (n + 1) + A178572 (n + 1)

end

end A095311.P14882356613124684141

namespace A095311

/-- `A302576(n+1)+A178572(n+1)` -/
def P14882356613124684141.Spec : Prop :=
  ∀ n, P14882356613124684141.a n = A095311 (n + 1)

end A095311

/-! ## A095311.P14050702188377990926

`A069178(n+1)+A173307(n)-n²`
-/

namespace A095311.P14050702188377990926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069178 (n + 1) + (A173307 n - (n ^ 2 : ℤ))

end

end A095311.P14050702188377990926

namespace A095311

/-- `A069178(n+1)+A173307(n)-n²` -/
def P14050702188377990926.Spec : Prop :=
  ∀ n, P14050702188377990926.a n = A095311 (n + 1)

end A095311

/-! ## A095311.P16773825662502220029

`A001545(n)-(A290768(n+1)+n²)`
-/

namespace A095311.P16773825662502220029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001545 n - (A290768 (n + 1) + (n ^ 2 : ℤ))

end

end A095311.P16773825662502220029

namespace A095311

/-- `A001545(n)-(A290768(n+1)+n²)` -/
def P16773825662502220029.Spec : Prop :=
  ∀ n, P16773825662502220029.a n = A095311 (n + 1)

end A095311

/-! ## A095311.P6423401212638688403

`A177059(n)-(A124011(n+1)+n²)`
-/

namespace A095311.P6423401212638688403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177059 n - (A124011 (n + 1) + (n ^ 2 : ℤ))

end

end A095311.P6423401212638688403

namespace A095311

/-- `A177059(n)-(A124011(n+1)+n²)` -/
def P6423401212638688403.Spec : Prop :=
  ∀ n, P6423401212638688403.a n = A095311 (n + 1)

end A095311

/-! ## A095311.P4811098882077412474

`A164136(n)+A164136(n)+A000217(n+1)`
-/

namespace A095311.P4811098882077412474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164136 n + (A164136 n + A000217 (n + 1))

end

end A095311.P4811098882077412474

namespace A095311

/-- `A164136(n)+A164136(n)+A000217(n+1)` -/
def P4811098882077412474.Spec : Prop :=
  ∀ n, P4811098882077412474.a n = A095311 (n + 1)

end A095311

/-!
# A095312: Primes in whose binary expansion the number of 1-bits is > 6 + number of 0-bits.

The programs for A095312, there is no canonical definition to state claims against.
-/

/-! ## A095312.P9859758104474358993

`p?[A004526(A031469(n+1))]`
-/

namespace A095312.P9859758104474358993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A031469 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095312.P9859758104474358993

/-! ## A095312.P8706308631228337288

`p?[A008619(A031468(n+1))]`
-/

namespace A095312.P8706308631228337288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A031468 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095312.P8706308631228337288

/-! ## A095312.P7424579053318970623

`p?[A004526(A031468(n+1))-A260196(n)]`
-/

namespace A095312.P7424579053318970623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A031468 (n + 1)).toNat - A260196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095312.P7424579053318970623

/-! ## A095312.P11671430412402644225

`p?[A004526(A031468(n+1))+A033999(n)²]`
-/

namespace A095312.P11671430412402644225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A031468 (n + 1)).toNat + A033999 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095312.P11671430412402644225

/-! ## A095312.P1250382006412690978

`p?[A004526(A031468(n+1))+A284631(n+1)%2]`
-/

namespace A095312.P1250382006412690978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A031468 (n + 1)).toNat + Int.tmod (A284631 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095312.P1250382006412690978

/-!
# A095313: Primes in whose binary expansion the number of 1-bits is <= 6 + number of 0-bits.

The programs for A095313, there is no canonical definition to state claims against.
-/

/-! ## A095313.P6332557288344790250

`eq[A032741(n), A094798(A255231(n+1))]`
-/

namespace A095313.P6332557288344790250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094798 (A255231 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095313.P6332557288344790250

/-! ## A095313.P15862369574000654918

`lt[A061034(n+1), A007095(A055671(n))]`
-/

namespace A095313.P15862369574000654918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A055671 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095313.P15862369574000654918

/-! ## A095313.P5639123460477114817

`lt[A065164(n+1), A004011(A055671(n))]`
-/

namespace A095313.P5639123460477114817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004011 (A055671 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095313.P5639123460477114817

/-! ## A095313.P12172798605733500109

`lt[A005206(n+1), A253565(A055671(n))]`
-/

namespace A095313.P12172798605733500109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 (A055671 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095313.P12172798605733500109

/-! ## A095313.P3432474004319478748

`lt[A057163(n+2), A004011(A055671(n))]`
-/

namespace A095313.P3432474004319478748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004011 (A055671 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095313.P3432474004319478748

/-! ## A095313.P1654780874382951592

`lt[A000010(2*(n+1)), A253565(A055671(n))]`
-/

namespace A095313.P1654780874382951592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 (A055671 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095313.P1654780874382951592

/-! ## A095313.P17031261776560650475

`lt[A014963(2*n+3), A253565(A055671(n))]`
-/

namespace A095313.P17031261776560650475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 (A055671 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095313.P17031261776560650475

/-! ## A095313.P4714772224532014740

`A000040(A123068(n+2))`
-/

namespace A095313.P4714772224532014740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A123068 (n + 2)).toNat

end

end A095313.P4714772224532014740

/-! ## A095313.P16378377078541329746

`eq[A003415(n), A260738(A246456(3*n+4))]`
-/

namespace A095313.P16378377078541329746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (A246456 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095313.P16378377078541329746

/-!
# A095314: Primes in whose binary expansion the number of 1 bits is > 2 + number of 0 bits.

The programs for A095314, the canonical program `A095314.P9563485731236940498` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095314 has offset 1).

The definition of A095314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095314.P9563485731236940498

`p?[A072600(n+2)+1]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A095314

/-- `p?[A072600(n+2)+1]` -/
def P9563485731236940498.Spec : Prop :=
  ∀ n, P9563485731236940498.a n = A095314 (n + 1)

theorem P9563485731236940498.correct : P9563485731236940498.Spec := by
  intro n
  simp only [A095314, Nat.add_sub_cancel]

end A095314

/-! ## A095314.P1564979304618348859

`record[A020639(A072600(n+4)+1)]`
-/

namespace A095314.P1564979304618348859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A072600 (n + 4) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095314.P1564979304618348859

namespace A095314

/-- `record[A020639(A072600(n+4)+1)]` -/
def P1564979304618348859.Spec : Prop :=
  ∀ n, P1564979304618348859.a n = A095314 (n + 1)

end A095314

/-! ## A095314.P13658127292898652304

`∩[A065091(n+1), A072600(n+1)+1]`
-/

namespace A095314.P13658127292898652304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095314.P13658127292898652304

namespace A095314

/-- `∩[A065091(n+1), A072600(n+1)+1]` -/
def P13658127292898652304.Spec : Prop :=
  ∀ n, (P13658127292898652304.a n : ℤ) = A095314 (n + 1)

end A095314

/-! ## A095314.P2663323971502138788

`∩[A000040(n+2), A072600(n+2)+1]`
-/

namespace A095314.P2663323971502138788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095314.P2663323971502138788

namespace A095314

/-- `∩[A000040(n+2), A072600(n+2)+1]` -/
def P2663323971502138788.Spec : Prop :=
  ∀ n, (P2663323971502138788.a n : ℤ) = A095314 (n + 1)

end A095314

/-! ## A095314.P9235809969491725992

`∩[A072600(n+2)+1, A095074(n+2)]`
-/

namespace A095314.P9235809969491725992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095074 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095314.P9235809969491725992

namespace A095314

/-- `∩[A072600(n+2)+1, A095074(n+2)]` -/
def P9235809969491725992.Spec : Prop :=
  ∀ n, (P9235809969491725992.a n : ℤ) = A095314 (n + 1)

end A095314

/-! ## A095314.P3627945744760619839

`p?[lt[2, A145037(n)]]`
-/

namespace A095314.P3627945744760619839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095314.P3627945744760619839

namespace A095314

/-- `p?[lt[2, A145037(n)]]` -/
def P3627945744760619839.Spec : Prop :=
  ∀ n, (P3627945744760619839.a n : ℤ) = A095314 (n + 1)

end A095314

/-! ## A095314.P16399748416001056809

`p?[A049283(A072600(n+1))]`
-/

namespace A095314.P16399748416001056809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A072600 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095314.P16399748416001056809

namespace A095314

/-- `p?[A049283(A072600(n+1))]` -/
def P16399748416001056809.Spec : Prop :=
  ∀ n, P16399748416001056809.a n = A095314 (n + 1)

end A095314

/-! ## A095314.P7843914464442814081

`p?[A004442(A072600(n+3))]`
-/

namespace A095314.P7843914464442814081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A072600 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095314.P7843914464442814081

namespace A095314

/-- `p?[A004442(A072600(n+3))]` -/
def P7843914464442814081.Spec : Prop :=
  ∀ n, P7843914464442814081.a n = A095314 (n + 1)

end A095314

/-! ## A095314.P16244127403159965284

`record[A014963(A072600(n+4)+1)]`
-/

namespace A095314.P16244127403159965284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A072600 (n + 4) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095314.P16244127403159965284

namespace A095314

/-- `record[A014963(A072600(n+4)+1)]` -/
def P16244127403159965284.Spec : Prop :=
  ∀ n, P16244127403159965284.a n = A095314 (n + 1)

end A095314

/-! ## A095314.P12087662656841490012

`p?[A082284(n)*A265917(n+1)]`
-/

namespace A095314.P12087662656841490012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 n * A265917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095314.P12087662656841490012

namespace A095314

/-- `p?[A082284(n)*A265917(n+1)]` -/
def P12087662656841490012.Spec : Prop :=
  ∀ n, P12087662656841490012.a n = A095314 (n + 1)

end A095314

/-! ## A095314.P14853654652871152861

`p?[lt[A023416(n)+2, A000120(n)]]`
-/

namespace A095314.P14853654652871152861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095314.P14853654652871152861

namespace A095314

/-- `p?[lt[A023416(n)+2, A000120(n)]]` -/
def P14853654652871152861.Spec : Prop :=
  ∀ n, (P14853654652871152861.a n : ℤ) = A095314 (n + 1)

end A095314

/-! ## A095314.P13210686639577423364

`p?[lt[A080791(n)+2, A000120(n)]]`
-/

namespace A095314.P13210686639577423364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095314.P13210686639577423364

namespace A095314

/-- `p?[lt[A080791(n)+2, A000120(n)]]` -/
def P13210686639577423364.Spec : Prop :=
  ∀ n, (P13210686639577423364.a n : ℤ) = A095314 (n + 1)

end A095314

/-! ## A095314.P1810410306488393656

`p?[lt[A004767(2*n), A213178(2*n)]]`
-/

namespace A095314.P1810410306488393656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213178 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095314.P1810410306488393656

namespace A095314

/-- `p?[lt[A004767(2*n), A213178(2*n)]]` -/
def P1810410306488393656.Spec : Prop :=
  ∀ n, (P1810410306488393656.a n : ℤ) = A095314 (n + 1)

end A095314

/-! ## A095314.P8589132247737432594

`p?[lt[A160380(2*n), A160383(2*n)]]`
-/

namespace A095314.P8589132247737432594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095314.P8589132247737432594

namespace A095314

/-- `p?[lt[A160380(2*n), A160383(2*n)]]` -/
def P8589132247737432594.Spec : Prop :=
  ∀ n, (P8589132247737432594.a n : ℤ) = A095314 (n + 1)

end A095314

/-! ## A095314.P10837654625022242318

`p?[A079097(A072600(n+2))]`
-/

namespace A095314.P10837654625022242318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (A072600 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095314.P10837654625022242318

namespace A095314

/-- `p?[A079097(A072600(n+2))]` -/
def P10837654625022242318.Spec : Prop :=
  ∀ n, P10837654625022242318.a n = A095314 (n + 1)

end A095314

/-!
# A095315: Primes in whose binary expansion the number of 1 bits is <= 2 + number of 0 bits.

The programs for A095315, the canonical program `A095315.P11245035000692481419` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095315 has offset 1).

The definition of A095315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1012 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095315.P11245035000692481419

`p?[lt[A145037(n), 3]]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A095315

/-- `p?[lt[A145037(n), 3]]` -/
def P11245035000692481419.Spec : Prop :=
  ∀ n, (P11245035000692481419.a n : ℤ) = A095315 (n + 1)

theorem P11245035000692481419.correct : P11245035000692481419.Spec := by
  intro n
  simp only [A095315, Nat.add_sub_cancel]

end A095315

/-! ## A095315.P12732504006911894311

`record[p?[n%A088580(A080100(n))²]]`
-/

namespace A095315.P12732504006911894311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A088580 (A080100 n).toNat ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095315.P12732504006911894311

namespace A095315

/-- `record[p?[n%A088580(A080100(n))²]]` -/
def P12732504006911894311.Spec : Prop :=
  ∀ n, P12732504006911894311.a n = A095315 (n + 1)

end A095315

/-! ## A095315.P16313680285437295674

`p?[lt[A001316(n), 2*A002024(n+1)]]`
-/

namespace A095315.P16313680285437295674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002024 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095315.P16313680285437295674

namespace A095315

/-- `p?[lt[A001316(n), 2*A002024(n+1)]]` -/
def P16313680285437295674.Spec : Prop :=
  ∀ n, (P16313680285437295674.a n : ℤ) = A095315 (n + 1)

end A095315

/-! ## A095315.P16648031414907061643

`p?[lt[A213178(2*n), A004767(2*n)]]`
-/

namespace A095315.P16648031414907061643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213178 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095315.P16648031414907061643

namespace A095315

/-- `p?[lt[A213178(2*n), A004767(2*n)]]` -/
def P16648031414907061643.Spec : Prop :=
  ∀ n, (P16648031414907061643.a n : ℤ) = A095315 (n + 1)

end A095315

/-! ## A095315.P17855956346311296628

`p?[A174571(A072602(n+1))]`
-/

namespace A095315.P17855956346311296628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A072602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095315.P17855956346311296628

namespace A095315

/-- `p?[A174571(A072602(n+1))]` -/
def P17855956346311296628.Spec : Prop :=
  ∀ n, P17855956346311296628.a n = A095315 (n + 1)

end A095315

/-! ## A095315.P407610078488584308

`record[A020639(A174571(A072602(n+3)))]`
-/

namespace A095315.P407610078488584308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A174571 (A072602 (n + 3)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095315.P407610078488584308

namespace A095315

/-- `record[A020639(A174571(A072602(n+3)))]` -/
def P407610078488584308.Spec : Prop :=
  ∀ n, P407610078488584308.a n = A095315 (n + 1)

end A095315

/-! ## A095315.P5795851161008905656

`p?[record[A008624(A346300(n+1))]]`
-/

namespace A095315.P5795851161008905656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A346300 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095315.P5795851161008905656

namespace A095315

/-- `p?[record[A008624(A346300(n+1))]]` -/
def P5795851161008905656.Spec : Prop :=
  ∀ n, P5795851161008905656.a n = A095315 (n + 1)

end A095315

/-!
# A095316: Primes in whose binary expansion the number of 1-bits is > number of 0-bits minus 2.

The programs for A095316, there is no canonical definition to state claims against.
-/

/-! ## A095316.P15088380863643929907

`∪[A095072(n+1), A095074(n+1)]`
-/

namespace A095316.P15088380863643929907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095316.P15088380863643929907

/-! ## A095316.P7311994665750006699

`A000040(lt[A017879(n), A324343(2*n)])`
-/

namespace A095316.P7311994665750006699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324343 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A095316.P7311994665750006699

/-! ## A095316.P1663012174380871635

`record[A000040(n+1)%A306602(n+1)]`
-/

namespace A095316.P1663012174380871635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A306602 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095316.P1663012174380871635

/-! ## A095316.P13412653536254787365

`A050260(A166718(n+1)%A272240(n+1))`
-/

namespace A095316.P13412653536254787365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050260 (Int.tmod (A166718 (n + 1)) (A272240 (n + 1))).toNat

end

end A095316.P13412653536254787365

/-!
# A095317: Primes in whose binary expansion the number of 1 bits is <= number of 0 bits minus 2.

The programs for A095317, the canonical program `A095317.P12578229701509974055` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095317 has offset 1).

The definition of A095317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095317.P409472312938690776

`p?[lt[A286477(n+1), A037861(n)]]`
-/

namespace A095317.P409472312938690776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286477 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095317.P409472312938690776

namespace A095317

/-- `p?[lt[A286477(n+1), A037861(n)]]` -/
def P409472312938690776.Spec : Prop :=
  ∀ n, (P409472312938690776.a n : ℤ) = A095317 (n + 1)

end A095317

/-! ## A095317.P8644129737947119182

`p?[lt[A102376(n), A260429(n+1)]]`
-/

namespace A095317.P8644129737947119182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095317.P8644129737947119182

namespace A095317

/-- `p?[lt[A102376(n), A260429(n+1)]]` -/
def P8644129737947119182.Spec : Prop :=
  ∀ n, (P8644129737947119182.a n : ℤ) = A095317 (n + 1)

end A095317

/-! ## A095317.P12578229701509974055

`p?[A071045(A072603(n+1))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A095317

/-- `p?[A071045(A072603(n+1))]` -/
def P12578229701509974055.Spec : Prop :=
  ∀ n, P12578229701509974055.a n = A095317 (n + 1)

theorem P12578229701509974055.correct : P12578229701509974055.Spec := by
  intro n
  simp only [A095317, Nat.add_sub_cancel]

end A095317

/-! ## A095317.P17413739936789729791

`p?[A142150(A072603(n+1)-1)]`
-/

namespace A095317.P17413739936789729791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A072603 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095317.P17413739936789729791

namespace A095317

/-- `p?[A142150(A072603(n+1)-1)]` -/
def P17413739936789729791.Spec : Prop :=
  ∀ n, P17413739936789729791.a n = A095317 (n + 1)

end A095317

/-! ## A095317.P15788771724936722823

`p?[A142150(xor(1, A072603(n+1)))]`
-/

namespace A095317.P15788771724936722823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (Int.xor 1 (A072603 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095317.P15788771724936722823

namespace A095317

/-- `p?[A142150(xor(1, A072603(n+1)))]` -/
def P15788771724936722823.Spec : Prop :=
  ∀ n, P15788771724936722823.a n = A095317 (n + 1)

end A095317

/-!
# A095318: Primes in whose binary expansion the number of 1 bits is > 3 + number of 0 bits.

The programs for A095318, the canonical program `A095318.P6732422494791297664` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095318 has offset 1).

The definition of A095318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1410 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095318.P6732422494791297664

`p?[lt[0, a(floor(n/2))-(-1)^n]]` with `a(0)=-3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095318

/-- `p?[lt[0, a(floor(n/2))-(-1)^n]]` -/
def P6732422494791297664.Spec : Prop :=
  ∀ n, (P6732422494791297664.a n : ℤ) = A095318 (n + 1)

theorem P6732422494791297664.correct : P6732422494791297664.Spec := by
  intro n
  simp only [A095318, Nat.add_sub_cancel]

end A095318

/-! ## A095318.P5040316198143590032

`p?[A346299(n+1)+2]`
-/

namespace A095318.P5040316198143590032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346299 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095318.P5040316198143590032

namespace A095318

/-- `p?[A346299(n+1)+2]` -/
def P5040316198143590032.Spec : Prop :=
  ∀ n, P5040316198143590032.a n = A095318 (n + 1)

end A095318

/-! ## A095318.P8264913233029099327

`p?[lt[3, A145037(n)]]`
-/

namespace A095318.P8264913233029099327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095318.P8264913233029099327

namespace A095318

/-- `p?[lt[3, A145037(n)]]` -/
def P8264913233029099327.Spec : Prop :=
  ∀ n, (P8264913233029099327.a n : ℤ) = A095318 (n + 1)

end A095318

/-! ## A095318.P14201526291193476841

`p?[lt[4*n, 4^A000120(n)]+1]`
-/

namespace A095318.P14201526291193476841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A000120 n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095318.P14201526291193476841

namespace A095318

/-- `p?[lt[4*n, 4^A000120(n)]+1]` -/
def P14201526291193476841.Spec : Prop :=
  ∀ n, (P14201526291193476841.a n : ℤ) = A095318 (n + 1)

end A095318

/-! ## A095318.P13005176811348734938

`p?[lt[A160380(n)+1, A160383(n)]]`
-/

namespace A095318.P13005176811348734938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095318.P13005176811348734938

namespace A095318

/-- `p?[lt[A160380(n)+1, A160383(n)]]` -/
def P13005176811348734938.Spec : Prop :=
  ∀ n, (P13005176811348734938.a n : ℤ) = A095318 (n + 1)

end A095318

/-! ## A095318.P4780433578600883786

`p?[A110514(A072600(n+1))]`
-/

namespace A095318.P4780433578600883786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A072600 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095318.P4780433578600883786

namespace A095318

/-- `p?[A110514(A072600(n+1))]` -/
def P4780433578600883786.Spec : Prop :=
  ∀ n, P4780433578600883786.a n = A095318 (n + 1)

end A095318

/-!
# A095319: Primes in whose binary expansion the number of 1 bits is <= 3 + number of 0 bits.

The programs for A095319, the canonical program `A095319.P7579409491582349673` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095319 has offset 1).

The definition of A095319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095319.P10249418310252273262

`p?[A302043(A072602(n+1)+2)]`
-/

namespace A095319.P10249418310252273262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (A072602 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095319.P10249418310252273262

namespace A095319

/-- `p?[A302043(A072602(n+1)+2)]` -/
def P10249418310252273262.Spec : Prop :=
  ∀ n, P10249418310252273262.a n = A095319 (n + 1)

end A095319

/-! ## A095319.P7579409491582349673

`p?[A029578(A072602(n+1)+2)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A095319

/-- `p?[A029578(A072602(n+1)+2)]` -/
def P7579409491582349673.Spec : Prop :=
  ∀ n, P7579409491582349673.a n = A095319 (n + 1)

theorem P7579409491582349673.correct : P7579409491582349673.Spec := by
  intro n
  simp only [A095319, Nat.add_sub_cancel]

end A095319

/-! ## A095319.P10509251234888776563

`lt[A072601(A102376(n)), A055671(n)]`
-/

namespace A095319.P10509251234888776563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072601 (A102376 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095319.P10509251234888776563

namespace A095319

/-- `lt[A072601(A102376(n)), A055671(n)]` -/
def P10509251234888776563.Spec : Prop :=
  ∀ n, (P10509251234888776563.a n : ℤ) = A095319 (n + 1)

end A095319

/-! ## A095319.P16603167892635400409

`eq[A003415(n), A124944(A000010(n+1))]`
-/

namespace A095319.P16603167892635400409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124944 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095319.P16603167892635400409

namespace A095319

/-- `eq[A003415(n), A124944(A000010(n+1))]` -/
def P16603167892635400409.Spec : Prop :=
  ∀ n, (P16603167892635400409.a n : ℤ) = A095319 (n + 1)

end A095319

/-! ## A095319.P13324506349659666771

`record[p?[A333221(n+1)]]`
-/

namespace A095319.P13324506349659666771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333221 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095319.P13324506349659666771

namespace A095319

/-- `record[p?[A333221(n+1)]]` -/
def P13324506349659666771.Spec : Prop :=
  ∀ n, P13324506349659666771.a n = A095319 (n + 1)

end A095319

/-!
# A095320: Primes in whose binary expansion the number of 1-bits is > number of 0-bits minus 3.

The programs for A095320, there is no canonical definition to state claims against.
-/

/-! ## A095320.P3073328516575858363

`lt[A004273(A234742(n)), A055671(n)]`
-/

namespace A095320.P3073328516575858363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A234742 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095320.P3073328516575858363

/-! ## A095320.P13524953989349500728

`lt[A004273(A236379(n)), A055671(n)]`
-/

namespace A095320.P13524953989349500728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A236379 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095320.P13524953989349500728

/-! ## A095320.P14039673423447599250

`lt[A004273(A236852(n)), A055671(n)]`
-/

namespace A095320.P14039673423447599250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A236852 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095320.P14039673423447599250

/-! ## A095320.P7135892317610816633

`eq[A008683(A106529(n+1)), A086134(n)]`
-/

namespace A095320.P7135892317610816633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A106529 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095320.P7135892317610816633

/-! ## A095320.P2096029194968878364

`eq[A053989(n+1), A355825(A239830(n))]`
-/

namespace A095320.P2096029194968878364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355825 (A239830 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095320.P2096029194968878364

/-! ## A095320.P527954824686655608

`lt[A003188(A062584(n)), A060679(n+1)]`
-/

namespace A095320.P527954824686655608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A062584 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095320.P527954824686655608

/-! ## A095320.P11003761093981085200

`record[A076690(n+2)%A266196(2*n+5)]`
-/

namespace A095320.P11003761093981085200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076690 (n + 2)) (A266196 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095320.P11003761093981085200

/-! ## A095320.P5875831448045030525

`record[A000040(n+1)%A127819(3*(n+1))]`
-/

namespace A095320.P5875831448045030525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A127819 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095320.P5875831448045030525

/-! ## A095320.P6349860404728427009

`A000040(A120951(n+1))%A114839(2*n+1)`
-/

namespace A095320.P6349860404728427009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A120951 (n + 1)).toNat) (A114839 (2 * n + 1))

end

end A095320.P6349860404728427009

/-! ## A095320.P28351326889060952

`A000040(A120951(n+1))%A000118(A367584(n+1))`
-/

namespace A095320.P28351326889060952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A120951 (n + 1)).toNat) (A000118 (A367584 (n + 1)).toNat)

end

end A095320.P28351326889060952

/-!
# A095321: Primes in whose binary expansion the number of 1-bits is <= number of 0-bits minus 3.

The programs for A095321, there is no canonical definition to state claims against.
-/

/-! ## A095321.P15914049622535815836

`p?[A008624(A031465(n+1))]`
-/

namespace A095321.P15914049622535815836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A031465 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095321.P15914049622535815836

/-!
# A095322: Primes in whose binary expansion the number of 1 bits is > 4 + number of 0 bits.

The programs for A095322, the canonical program `A095322.P13433444378243822473` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095322 has offset 1).

The definition of A095322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095322.P13433444378243822473

`p?[lt[4, A145037(n)]]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A095322

/-- `p?[lt[4, A145037(n)]]` -/
def P13433444378243822473.Spec : Prop :=
  ∀ n, (P13433444378243822473.a n : ℤ) = A095322 (n + 1)

theorem P13433444378243822473.correct : P13433444378243822473.Spec := by
  intro n
  simp only [A095322, Nat.add_sub_cancel]

end A095322

/-! ## A095322.P14783263960678447895

`∩[A067400(n+1), A317851(n+1)]`
-/

namespace A095322.P14783263960678447895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095322.P14783263960678447895

namespace A095322

/-- `∩[A067400(n+1), A317851(n+1)]` -/
def P14783263960678447895.Spec : Prop :=
  ∀ n, (P14783263960678447895.a n : ℤ) = A095322 (n + 1)

end A095322

/-! ## A095322.P1247242109516329551

`∩[A067400(n+1), A193761(n+1)]`
-/

namespace A095322.P1247242109516329551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095322.P1247242109516329551

namespace A095322

/-- `∩[A067400(n+1), A193761(n+1)]` -/
def P1247242109516329551.Spec : Prop :=
  ∀ n, (P1247242109516329551.a n : ℤ) = A095322 (n + 1)

end A095322

/-!
# A095323: Primes in whose binary expansion the number of 1 bits is <= 4 + number of 0 bits.

The programs for A095323, there is no canonical definition to state claims against.
-/

/-! ## A095323.P17791185909790388442

`eq[A003415(n), A374325(A006512(n+1))]`
-/

namespace A095323.P17791185909790388442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374325 (A006512 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095323.P17791185909790388442

/-! ## A095323.P7077239240182688807

`eq[A115118(n)²², A053981(n+1)]`
-/

namespace A095323.P7077239240182688807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A115118 n ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053981 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095323.P7077239240182688807

/-! ## A095323.P4232619151301790197

`eq[A115118(n)²², A318671(n+1)]`
-/

namespace A095323.P4232619151301790197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A115118 n ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095323.P4232619151301790197

/-! ## A095323.P11954742937174074334

`A000040(lt[A172184(n+1), A098734(n+1)])`
-/

namespace A095323.P11954742937174074334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A095323.P11954742937174074334

/-! ## A095323.P5600289532306400847

`A000040(lt[A295554(2*(n+2)), A239931(n+1)])`
-/

namespace A095323.P5600289532306400847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295554 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A095323.P5600289532306400847

/-!
# A095324: Number of A095322-primes in range ]2^n,2^(n+1)].

The programs for A095324, there is no canonical definition to state claims against.
-/

/-! ## A095324.P14773290532954098086

`A036378(n+1)-A095325(n+1)`
-/

namespace A095324.P14773290532954098086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095325 (n + 1)

end

end A095324.P14773290532954098086

/-! ## A095324.P4147624495441358877

`A162145(n+2)%A095325(n+1)`
-/

namespace A095324.P4147624495441358877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162145 (n + 2)) (A095325 (n + 1))

end

end A095324.P4147624495441358877

/-! ## A095324.P8108846695713308959

`Δ[A185192(n+1)]%A095325(n+1)`
-/

namespace A095324.P8108846695713308959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A095325 (n + 1))

end

end A095324.P8108846695713308959

/-! ## A095324.P1121449765334591677

`Δ[A060967(2*(n+1))]-A095325(n+1)`
-/

namespace A095324.P1121449765334591677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095325 (n + 1)

end

end A095324.P1121449765334591677

/-! ## A095324.P10405941659664694609

`A036378(A031285(n))%A095325(n+1)`
-/

namespace A095324.P10405941659664694609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036378 (A031285 n).toNat) (A095325 (n + 1))

end

end A095324.P10405941659664694609

/-!
# A095325: Number of A095323-primes in range ]2^n,2^(n+1)].

The programs for A095325, there is no canonical definition to state claims against.
-/

/-! ## A095325.P5987613926154656567

`A036378(n+1)-A095324(n+1)`
-/

namespace A095325.P5987613926154656567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095324 (n + 1)

end

end A095325.P5987613926154656567

/-! ## A095325.P16003739114826471156

`Δ[A007053(n+1)]-A095324(n+1)`
-/

namespace A095325.P16003739114826471156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095324 (n + 1)

end

end A095325.P16003739114826471156

/-! ## A095325.P10243666993806781894

`Δ[A060967(2*(n+1))]-A095324(n+1)`
-/

namespace A095325.P10243666993806781894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095324 (n + 1)

end

end A095325.P10243666993806781894

/-! ## A095325.P7758450243519658148

`A162145(A065475(n+1))-A095324(n+1)`
-/

namespace A095325.P7758450243519658148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095324 (n + 1)

end

end A095325.P7758450243519658148

/-! ## A095325.P3868061835325893924

`A095019(n+1)+A095054(n+1)-A095324(n+1)`
-/

namespace A095325.P3868061835325893924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095019 (n + 1) + (A095054 (n + 1) - A095324 (n + 1))

end

end A095325.P3868061835325893924

/-!
# A095326: Number of A095316-primes in range [2^n,2^(n+1)].

The programs for A095326, there is no canonical definition to state claims against.
-/

/-! ## A095326.P6296372975150259948

`A036378(n+1)-A095327(n+1)`
-/

namespace A095326.P6296372975150259948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095327 (n + 1)

end

end A095326.P6296372975150259948

/-! ## A095326.P9504702592520526991

`Δ[A007053(n+1)]-A095327(n+1)`
-/

namespace A095326.P9504702592520526991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095327 (n + 1)

end

end A095326.P9504702592520526991

/-! ## A095326.P996231519285384457

`Δ[A126279(A000124(n))]-A095327(n+1)`
-/

namespace A095326.P996231519285384457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095327 (n + 1)

end

end A095326.P996231519285384457

/-! ## A095326.P3456459623457788556

`A162145(A065475(n+1))-A095327(n+1)`
-/

namespace A095326.P3456459623457788556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095327 (n + 1)

end

end A095326.P3456459623457788556

/-! ## A095326.P16476827578063201632

`A095019(n+1)+A095054(n+1)-A095327(n+1)`
-/

namespace A095326.P16476827578063201632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095019 (n + 1) + (A095054 (n + 1) - A095327 (n + 1))

end

end A095326.P16476827578063201632

/-!
# A095327: Number of A095317-primes in range ]2^n,2^(n+1)].

The programs for A095327, there is no canonical definition to state claims against.
-/

/-! ## A095327.P10520277870751828426

`A036378(n+1)-A095326(n+1)`
-/

namespace A095327.P10520277870751828426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095326 (n + 1)

end

end A095327.P10520277870751828426

/-! ## A095327.P16097179846804053921

`A162145(n+2)%A095326(n+1)`
-/

namespace A095327.P16097179846804053921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162145 (n + 2)) (A095326 (n + 1))

end

end A095327.P16097179846804053921

/-! ## A095327.P3594770500564786935

`A036378(A031285(n))%A095326(n+1)`
-/

namespace A095327.P3594770500564786935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036378 (A031285 n).toNat) (A095326 (n + 1))

end

end A095327.P3594770500564786935

/-! ## A095327.P8429525446592662186

`A162145(A065475(n+1))-A095326(n+1)`
-/

namespace A095327.P8429525446592662186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095326 (n + 1)

end

end A095327.P8429525446592662186

/-! ## A095327.P3218435241995067247

`A036378(A000027(n+1))%A095326(n+1)`
-/

namespace A095327.P3218435241995067247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036378 (A000027 (n + 1)).toNat) (A095326 (n + 1))

end

end A095327.P3218435241995067247

/-!
# A095328: Number of A095318-primes in range ]2^n,2^(n+1)].

The programs for A095328, there is no canonical definition to state claims against.
-/

/-! ## A095328.P7572083101001945566

`A036378(n+1)-A095329(n+1)`
-/

namespace A095328.P7572083101001945566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095329 (n + 1)

end

end A095328.P7572083101001945566

/-! ## A095328.P7921564428811181704

`A162145(n+2)%A095329(n+1)`
-/

namespace A095328.P7921564428811181704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162145 (n + 2)) (A095329 (n + 1))

end

end A095328.P7921564428811181704

/-! ## A095328.P7776636356798512585

`Δ[A007053(n+1)]-A095329(n+1)`
-/

namespace A095328.P7776636356798512585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095329 (n + 1)

end

end A095328.P7776636356798512585

/-! ## A095328.P12666757041737777115

`A036378(A031285(n))%A095329(n+1)`
-/

namespace A095328.P12666757041737777115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036378 (A031285 n).toNat) (A095329 (n + 1))

end

end A095328.P12666757041737777115

/-! ## A095328.P13162723982358636701

`A162145(A065475(n+1))-A095329(n+1)`
-/

namespace A095328.P13162723982358636701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095329 (n + 1)

end

end A095328.P13162723982358636701

/-!
# A095329: Number of A095319-primes in range ]2^n,2^(n+1)].

The programs for A095329, there is no canonical definition to state claims against.
-/

/-! ## A095329.P10398701278383599204

`A036378(n+1)-A095328(n+1)`
-/

namespace A095329.P10398701278383599204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095328 (n + 1)

end

end A095329.P10398701278383599204

/-! ## A095329.P14312174670820622537

`Δ[A007053(n+1)]-A095328(n+1)`
-/

namespace A095329.P14312174670820622537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095328 (n + 1)

end

end A095329.P14312174670820622537

/-! ## A095329.P7390539343840039458

`Δ[A126279(A000124(n))]-A095328(n+1)`
-/

namespace A095329.P7390539343840039458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095328 (n + 1)

end

end A095329.P7390539343840039458

/-! ## A095329.P15509850005189496483

`A162145(A065475(n+1))-A095328(n+1)`
-/

namespace A095329.P15509850005189496483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095328 (n + 1)

end

end A095329.P15509850005189496483

/-! ## A095329.P1046513968605149587

`A095020(n+1)+A095055(n+1)-A095328(n+1)`
-/

namespace A095329.P1046513968605149587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095020 (n + 1) + (A095055 (n + 1) - A095328 (n + 1))

end

end A095329.P1046513968605149587

/-!
# A095330: Number of A095320-primes in range ]2^n,2^(n+1)].

The programs for A095330, there is no canonical definition to state claims against.
-/

/-! ## A095330.P4083270856592304504

`A036378(n+1)-A095331(n+1)`
-/

namespace A095330.P4083270856592304504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095331 (n + 1)

end

end A095330.P4083270856592304504

/-! ## A095330.P8513700723378089329

`Δ[A007053(n+1)]-A095331(n+1)`
-/

namespace A095330.P8513700723378089329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095331 (n + 1)

end

end A095330.P8513700723378089329

/-! ## A095330.P10916912851603496371

`Δ[A060967(2*(n+1))]-A095331(n+1)`
-/

namespace A095330.P10916912851603496371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095331 (n + 1)

end

end A095330.P10916912851603496371

/-! ## A095330.P3352736605553359907

`A095292(n+1)+A095293(n+1)-A095331(n+1)`
-/

namespace A095330.P3352736605553359907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095292 (n + 1) + (A095293 (n + 1) - A095331 (n + 1))

end

end A095330.P3352736605553359907

/-! ## A095330.P17334692846807060804

`A095294(n+1)+A095295(n+1)-A095331(n+1)`
-/

namespace A095330.P17334692846807060804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095294 (n + 1) + (A095295 (n + 1) - A095331 (n + 1))

end

end A095330.P17334692846807060804

/-!
# A095331: Number of A095321-primes in range ]2^n,2^(n+1)].

The programs for A095331, there is no canonical definition to state claims against.
-/

/-! ## A095331.P12584309939862582761

`A036378(n+1)-A095330(n+1)`
-/

namespace A095331.P12584309939862582761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095330 (n + 1)

end

end A095331.P12584309939862582761

/-! ## A095331.P9808269134397822255

`A162145(n+2)%A095330(n+1)`
-/

namespace A095331.P9808269134397822255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162145 (n + 2)) (A095330 (n + 1))

end

end A095331.P9808269134397822255

/-! ## A095331.P5660944095390267644

`Δ[A007053(n+1)]-A095330(n+1)`
-/

namespace A095331.P5660944095390267644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095330 (n + 1)

end

end A095331.P5660944095390267644

/-! ## A095331.P4550208308042800342

`Δ[A060967(2*(n+1))]-A095330(n+1)`
-/

namespace A095331.P4550208308042800342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095330 (n + 1)

end

end A095331.P4550208308042800342

/-! ## A095331.P11557298648860988331

`A036378(A031285(n))%A095330(n+1)`
-/

namespace A095331.P11557298648860988331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036378 (A031285 n).toNat) (A095330 (n + 1))

end

end A095331.P11557298648860988331

/-!
# A095332: Number of A095312-primes in range ]2^n,2^(n+1)].

The programs for A095332, there is no canonical definition to state claims against.
-/

/-! ## A095332.P1347959663403811988

`A036378(n+1)-A095333(n+1)`
-/

namespace A095332.P1347959663403811988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095333 (n + 1)

end

end A095332.P1347959663403811988

/-! ## A095332.P17349467898838977574

`Δ[A007053(n+1)]-A095333(n+1)`
-/

namespace A095332.P17349467898838977574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095333 (n + 1)

end

end A095332.P17349467898838977574

/-! ## A095332.P9707764682080094027

`Δ[A060967(2*(n+1))]-A095333(n+1)`
-/

namespace A095332.P9707764682080094027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095333 (n + 1)

end

end A095332.P9707764682080094027

/-! ## A095332.P14619882466694236782

`A036378(A031285(n))%A095333(n+1)`
-/

namespace A095332.P14619882466694236782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036378 (A031285 n).toNat) (A095333 (n + 1))

end

end A095332.P14619882466694236782

/-! ## A095332.P302888742452349184

`A036378(A000027(n+1))%A095333(n+1)`
-/

namespace A095332.P302888742452349184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036378 (A000027 (n + 1)).toNat) (A095333 (n + 1))

end

end A095332.P302888742452349184

/-!
# A095333: Number of A095313-primes in range [2^n,2^(n+1)].

The programs for A095333, there is no canonical definition to state claims against.
-/

/-! ## A095333.P3545296646786033507

`A036378(n+1)-A095332(n+1)`
-/

namespace A095333.P3545296646786033507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095332 (n + 1)

end

end A095333.P3545296646786033507

/-! ## A095333.P656003727721765587

`Δ[A007053(n+1)]-A095332(n+1)`
-/

namespace A095333.P656003727721765587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095332 (n + 1)

end

end A095333.P656003727721765587

/-! ## A095333.P2585326212066011660

`A095060(n+1)+A095061(n+1)-A095332(n+1)`
-/

namespace A095333.P2585326212066011660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095060 (n + 1) + (A095061 (n + 1) - A095332 (n + 1))

end

end A095333.P2585326212066011660

/-! ## A095333.P6332183971607365092

`A095292(n+1)+A095293(n+1)-A095332(n+1)`
-/

namespace A095333.P6332183971607365092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095292 (n + 1) + (A095293 (n + 1) - A095332 (n + 1))

end

end A095333.P6332183971607365092

/-! ## A095333.P420182461830187844

`A095294(n+1)+A095295(n+1)-A095332(n+1)`
-/

namespace A095333.P420182461830187844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095294 (n + 1) + (A095295 (n + 1) - A095332 (n + 1))

end

end A095333.P420182461830187844

/-!
# A095334: Number of A095314-primes in range ]2^n,2^(n+1)].

The programs for A095334, there is no canonical definition to state claims against.
-/

/-! ## A095334.P7164192193173058720

`A036378(n+1)-A095335(n+1)`
-/

namespace A095334.P7164192193173058720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095335 (n + 1)

end

end A095334.P7164192193173058720

/-! ## A095334.P16724977877254138164

`Δ[A007053(n+1)]-A095335(n+1)`
-/

namespace A095334.P16724977877254138164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095335 (n + 1)

end

end A095334.P16724977877254138164

/-! ## A095334.P15986038292133051960

`A162145(A065475(n+1))-A095335(n+1)`
-/

namespace A095334.P15986038292133051960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095335 (n + 1)

end

end A095334.P15986038292133051960

/-! ## A095334.P8352026977807380042

`A095292(n+1)+A095293(n+1)-A095335(n+1)`
-/

namespace A095334.P8352026977807380042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095292 (n + 1) + (A095293 (n + 1) - A095335 (n + 1))

end

end A095334.P8352026977807380042

/-! ## A095334.P17542145652700686897

`A095296(n+1)+A095297(n+1)-A095335(n+1)`
-/

namespace A095334.P17542145652700686897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095296 (n + 1) + (A095297 (n + 1) - A095335 (n + 1))

end

end A095334.P17542145652700686897

/-!
# A095335: Number of A095315-primes in range ]2^n,2^(n+1)].

The programs for A095335, there is no canonical definition to state claims against.
-/

/-! ## A095335.P7588855225759191348

`A036378(n+1)-A095334(n+1)`
-/

namespace A095335.P7588855225759191348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095334 (n + 1)

end

end A095335.P7588855225759191348

/-! ## A095335.P12748951870570166372

`Δ[A007053(n+1)]-A095334(n+1)`
-/

namespace A095335.P12748951870570166372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095334 (n + 1)

end

end A095335.P12748951870570166372

/-! ## A095335.P735293724447486021

`A162145(A065475(n+1))-A095334(n+1)`
-/

namespace A095335.P735293724447486021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095334 (n + 1)

end

end A095335.P735293724447486021

/-! ## A095335.P8384990991758512756

`A095060(n+1)+A095061(n+1)-A095334(n+1)`
-/

namespace A095335.P8384990991758512756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095060 (n + 1) + (A095061 (n + 1) - A095334 (n + 1))

end

end A095335.P8384990991758512756

/-! ## A095335.P6453832403217214296

`A095292(n+1)+A095293(n+1)-A095334(n+1)`
-/

namespace A095335.P6453832403217214296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095292 (n + 1) + (A095293 (n + 1) - A095334 (n + 1))

end

end A095335.P6453832403217214296

/-!
# A095337: Total number of leaves and degree-1 roots in the rooted trees of order n.

The programs for A095337, there is no canonical definition to state claims against.
-/

/-! ## A095337.P3718159803564019640

`(A003227(n+1)+A000081(n))%(3^n)`
-/

namespace A095337.P3718159803564019640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003227 (n + 1) + A000081 n) (3 ^ n : ℤ)

end

end A095337.P3718159803564019640

/-! ## A095337.P14092568261989528820

`(A003227(n+1)+A000081(n))*char[A007318(n)]`
-/

namespace A095337.P14092568261989528820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003227 (n + 1) + A000081 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095337.P14092568261989528820

/-! ## A095337.P7675287675110672582

`(A003227(n+1)+A000081(n))*and(1, A000040(n+1))`
-/

namespace A095337.P7675287675110672582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003227 (n + 1) + A000081 n) * Int.land 1 (A000040 (n + 1))

end

end A095337.P7675287675110672582

/-! ## A095337.P6258710097451852562

`A003227(n+1)+A000081(n)-A000045(C(2, n+2))`
-/

namespace A095337.P6258710097451852562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003227 (n + 1) + A000081 n - A000045 (Nat.choose 2 (n + 2))

end

end A095337.P6258710097451852562

/-! ## A095337.P1429383899412482795

`A000081(n)+A003227(n+1)%A003227(n+2)`
-/

namespace A095337.P1429383899412482795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n + Int.tmod (A003227 (n + 1)) (A003227 (n + 2))

end

end A095337.P1429383899412482795

/-!
# A095338: Total number of leaves in the labeled graphs of order n.

The programs for A095338, the canonical program `A095338.P2173923558396548921` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095338 has offset 1).

The definition of A095338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095338.P2173923558396548921

`(n+1)*n*2^C(n, 2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095338

/-- `(n+1)*n*2^C(n, 2)` -/
def P2173923558396548921.Spec : Prop :=
  ∀ n, (P2173923558396548921.a n : ℤ) = A095338 (n + 1)

theorem P2173923558396548921.correct : P2173923558396548921.Spec := by
  intro n
  simp only [A095338, Nat.add_sub_cancel]

end A095338

/-! ## A095338.P9339878594871831183

`2^C(n, 2)*∑[2*n]`
-/

namespace A095338.P9339878594871831183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.choose n 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095338.P9339878594871831183

namespace A095338

/-- `2^C(n, 2)*∑[2*n]` -/
def P9339878594871831183.Spec : Prop :=
  ∀ n, (P9339878594871831183.a n : ℤ) = A095338 (n + 1)

end A095338

/-! ## A095338.P7608976101982966624

`2^∑[abs(1-n)]*∑[n]`
-/

namespace A095338.P7608976101982966624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A095338.P7608976101982966624

namespace A095338

/-- `2^∑[abs(1-n)]*∑[n]` -/
def P7608976101982966624.Spec : Prop :=
  ∀ n, P7608976101982966624.a n = (A095338 (n + 1) : ℚ)

end A095338

/-! ## A095338.P14422740172734315709

`ceil(2^∑[n-1]*A046092(n))`
-/

namespace A095338.P14422740172734315709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) * (A046092 n : ℚ)⌉

end

end A095338.P14422740172734315709

namespace A095338

/-- `ceil(2^∑[n-1]*A046092(n))` -/
def P14422740172734315709.Spec : Prop :=
  ∀ n, P14422740172734315709.a n = A095338 (n + 1)

end A095338

/-! ## A095338.P2607217234016340292

`A002061(n+1)*A006125(n)-A006125(n)`
-/

namespace A095338.P2607217234016340292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1) * A006125 n - A006125 n

end

end A095338.P2607217234016340292

namespace A095338

/-- `A002061(n+1)*A006125(n)-A006125(n)` -/
def P2607217234016340292.Spec : Prop :=
  ∀ n, P2607217234016340292.a n = A095338 (n + 1)

theorem P2607217234016340292.correct : P2607217234016340292.Spec := by
  intro n
  simp only [A095338, Nat.add_sub_cancel, A095338.P2607217234016340292.a, A095338.P2173923558396548921.a, A002061, A002061.P13016590216674735232.a, A006125, A006125.P14908781185794122098.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A095338

/-!
# A095340: Total number of nodes in all labeled graphs on n nodes.

The programs for A095340, the canonical program `A095340.P5138217201674023335` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095340 has offset 1).

The definition of A095340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095340.P5138217201674023335

`(n+1)*2^((n+1)*n/2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095340

/-- `(n+1)*2^((n+1)*n/2)` -/
def P5138217201674023335.Spec : Prop :=
  ∀ n, P5138217201674023335.a n = (A095340 (n + 1) : ℝ)

end A095340

/-! ## A095340.P7065734368789824584

`(32*a(n-1)*a(n-3)-48*a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=4, a(2)=24, a(3)=256`
-/

namespace A095340.P7065734368789824584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4, 24, 256] fun n a =>
  (32 * a (n - 1) * a (n - 3) - 48 * a (n - 2) ^ 2) / a (n - 4)

end

end A095340.P7065734368789824584

namespace A095340

/-- `(32*a(n-1)*a(n-3)-48*a(n-2)²)/a(n-4)` -/
def P7065734368789824584.Spec : Prop :=
  ∀ n, P7065734368789824584.a n = (A095340 (n + 1) : ℚ)

end A095340

/-! ## A095340.P17578959806916634728

`floor((n+1)/acot(2^∑[n]))`
-/

namespace A095340.P17578959806916634728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)⌋

end

end A095340.P17578959806916634728

namespace A095340

/-- `floor((n+1)/acot(2^∑[n]))` -/
def P17578959806916634728.Spec : Prop :=
  ∀ n, P17578959806916634728.a n = A095340 (n + 1)

end A095340

/-! ## A095340.P12911486568092087656

`round((n+1)/acot(2^∑[n]))`
-/

namespace A095340.P12911486568092087656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / SequenceMachineLib.acot (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ))

end

end A095340.P12911486568092087656

namespace A095340

/-- `round((n+1)/acot(2^∑[n]))` -/
def P12911486568092087656.Spec : Prop :=
  ∀ n, P12911486568092087656.a n = A095340 (n + 1)

end A095340

/-! ## A095340.P13049106944799796354

`2^∑[n]/tan(acot(n+1))`
-/

namespace A095340.P13049106944799796354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) / Real.tan (SequenceMachineLib.acot (n + 1 : ℝ))

end

end A095340.P13049106944799796354

namespace A095340

/-- `2^∑[n]/tan(acot(n+1))` -/
def P13049106944799796354.Spec : Prop :=
  ∀ n, P13049106944799796354.a n = (A095340 (n + 1) : ℝ)

end A095340

/-!
# A095341: Total number of nodes in all planted trees on n nodes.

The programs for A095341, there is no canonical definition to state claims against.
-/

/-! ## A095341.P17495354506124075843

`(n+1)*A000081(n)`
-/

namespace A095341.P17495354506124075843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000081 n

end

end A095341.P17495354506124075843

/-! ## A095341.P281709310132891836

`(n+1)*∑[A174145(abs(1-n))]`
-/

namespace A095341.P281709310132891836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095341.P281709310132891836

/-! ## A095341.P14811032729503998052

`(n+1)*(∑[A174145(n-(1-floor(acot(n))))]-1)`
-/

namespace A095341.P14811032729503998052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 ((n : ℤ) - (1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A095341.P14811032729503998052

/-! ## A095341.P7908607606343781223

`(n+1)*(∑[A174145(round(sqrt(n²+1))-1)]-1)`
-/

namespace A095341.P7908607606343781223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A095341.P7908607606343781223

/-! ## A095341.P18067865766576351453

`A000081(n)*A008619(2*n)`
-/

namespace A095341.P18067865766576351453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n * A008619 (2 * n)

end

end A095341.P18067865766576351453

/-! ## A095341.P17551123055427045907

`A000081(n)*A028242(2*n)`
-/

namespace A095341.P17551123055427045907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n * A028242 (2 * n)

end

end A095341.P17551123055427045907

/-! ## A095341.P13538134528256715785

`A000081(n)*A052938(2*n)`
-/

namespace A095341.P13538134528256715785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n * A052938 (2 * n)

end

end A095341.P13538134528256715785

/-! ## A095341.P5635563082212450261

`A000081(n)*A328399(2*n)`
-/

namespace A095341.P5635563082212450261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n * A328399 (2 * n)

end

end A095341.P5635563082212450261

/-! ## A095341.P5810485843134981168

`(n+1)*(A222380(n)+A222379(n))`
-/

namespace A095341.P5810485843134981168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A222380 n + A222379 n)

end

end A095341.P5810485843134981168

/-! ## A095341.P16146810511509296763

`A000081(n)*A050292(2*eq[1, and(1-2*n, 2*n)%3]/4)`
-/

namespace A095341.P16146810511509296763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (1 - (2 * n : ℤ)) (2 * n : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n * A050292 (SequenceMachineLib.roundAway ((2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 4)).toNat

end

end A095341.P16146810511509296763

/-! ## A095341.P2987658007462323434

`A000081(n)*A001057(A005408(n))`
-/

namespace A095341.P2987658007462323434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n * A001057 (A005408 n).toNat

end

end A095341.P2987658007462323434

/-! ## A095341.P1592635897979394569

`A000081(n)*A050292(comp[n*A316826(n)])`
-/

namespace A095341.P1592635897979394569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316826 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n * A050292 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A095341.P1592635897979394569

/-! ## A095341.P527381197666295199

`(n+1)*(A213674(n)-A213683(n))`
-/

namespace A095341.P527381197666295199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A213674 n - A213683 n)

end

end A095341.P527381197666295199

/-! ## A095341.P13870015108449279331

`(n+1)*A106234(∑[n]+2)`
-/

namespace A095341.P13870015108449279331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A106234 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A095341.P13870015108449279331

/-! ## A095341.P239635746647225219

`record[round(sqrt(2*n))*A106234(n+1)]`
-/

namespace A095341.P239635746647225219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * A106234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095341.P239635746647225219

/-! ## A095341.P13052507329865550120

`A000081(n)*A143182(∑[n])`
-/

namespace A095341.P13052507329865550120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n * A143182 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095341.P13052507329865550120

/-! ## A095341.P1931380509623144384

`A000081(n)*A004736(A000124(n))`
-/

namespace A095341.P1931380509623144384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n * A004736 (A000124 n).toNat

end

end A095341.P1931380509623144384

/-! ## A095341.P16742288119766842242

`(n+1)*A318753(A001105(n))`
-/

namespace A095341.P16742288119766842242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A318753 (A001105 n).toNat

end

end A095341.P16742288119766842242

/-! ## A095341.P1256387941796576242

`(n+1)*A318753(A046092(n))`
-/

namespace A095341.P1256387941796576242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A318753 (A046092 n).toNat

end

end A095341.P1256387941796576242

/-! ## A095341.P14393025943967706569

`A028310(n+1)*A318757(A001105(n))`
-/

namespace A095341.P14393025943967706569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1) * A318757 (A001105 n).toNat

end

end A095341.P14393025943967706569

/-!
# A095342: Number of elements in n-th string generated by a Kolakoski(5,1) rule starting with a(1)=1.

The programs for A095342, the canonical program `A095342.P14593075605232956121` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095342 has offset 1).

The definition of A095342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095342.P14593075605232956121

`a(n-1)+2*a(n-2)-2*(-1)^(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095342

/-- `a(n-1)+2*a(n-2)-2*(-1)^(n+1)` -/
def P14593075605232956121.Spec : Prop :=
  ∀ n, P14593075605232956121.a n = A095342 (n + 1)

theorem P14593075605232956121.correct : P14593075605232956121.Spec := by
  intro n
  simp only [A095342, Nat.add_sub_cancel]

end A095342

/-! ## A095342.P11923275502469967157

`(2^(n+3)+(-1)^(n+1)*(5-6*(n+1)))/9`
-/

namespace A095342.P11923275502469967157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 3) : ℤ) + (-1) ^ (n + 1) * (5 - (6 * (n + 1) : ℤ)) : ℚ) / 9

end

end A095342.P11923275502469967157

namespace A095342

/-- `(2^(n+3)+(-1)^(n+1)*(5-6*(n+1)))/9` -/
def P11923275502469967157.Spec : Prop :=
  ∀ n, P11923275502469967157.a n = (A095342 (n + 1) : ℚ)

theorem P11923275502469967157.correct : P11923275502469967157.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A095342, Nat.add_sub_cancel, A095342.P11923275502469967157.a, A095342.P14593075605232956121.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A095342, Nat.add_sub_cancel, A095342.P11923275502469967157.a, A095342.P14593075605232956121.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A095342

/-! ## A095342.P1163431358725940704

`ogf((1+x+2x^2)/(1-3x^2-2x^3))`
-/

namespace A095342.P1163431358725940704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, 0, -3, -2] n

end

end A095342.P1163431358725940704

namespace A095342

/-- `ogf((1+x+2x^2)/(1-3x^2-2x^3))` -/
def P1163431358725940704.Spec : Prop :=
  ∀ n, P1163431358725940704.a n = A095342 (n + 1)

end A095342

/-! ## A095342.P13892593061183323656

`2*a(n-3)+3*a(n-2)` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A095342.P13892593061183323656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  2 * a (n - 3) + 3 * a (n - 2)

end

end A095342.P13892593061183323656

namespace A095342

/-- `2*a(n-3)+3*a(n-2)` -/
def P13892593061183323656.Spec : Prop :=
  ∀ n, (P13892593061183323656.a n : ℤ) = A095342 (n + 1)

end A095342

/-! ## A095342.P3636249853918203294

`abs(1-2*A077898(n))`
-/

namespace A095342.P3636249853918203294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A077898 n|

end

end A095342.P3636249853918203294

namespace A095342

/-- `abs(1-2*A077898(n))` -/
def P3636249853918203294.Spec : Prop :=
  ∀ n, P3636249853918203294.a n = A095342 (n + 1)

end A095342

/-! ## A095342.P10257285380840145003

`A097073(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A095342.P10257285380840145003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A097073 n + a (n - 2)

end

end A095342.P10257285380840145003

namespace A095342

/-- `A097073(n)+a(n-2)` -/
def P10257285380840145003.Spec : Prop :=
  ∀ n, P10257285380840145003.a n = A095342 (n + 1)

end A095342

/-! ## A095342.P12638165184607909509

`A103196(n)+A038608(n)`
-/

namespace A095342.P12638165184607909509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103196 n + A038608 n

end

end A095342.P12638165184607909509

namespace A095342

/-- `A103196(n)+A038608(n)` -/
def P12638165184607909509.Spec : Prop :=
  ∀ n, P12638165184607909509.a n = A095342 (n + 1)

end A095342

/-! ## A095342.P15752726215802071667

`A103196(n)-A181983(n)`
-/

namespace A095342.P15752726215802071667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103196 n - A181983 n

end

end A095342.P15752726215802071667

namespace A095342

/-- `A103196(n)-A181983(n)` -/
def P15752726215802071667.Spec : Prop :=
  ∀ n, P15752726215802071667.a n = A095342 (n + 1)

end A095342

/-! ## A095342.P9286496221649634993

`A113954(n+1)+A053088(n)`
-/

namespace A095342.P9286496221649634993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113954 (n + 1) + A053088 n

end

end A095342.P9286496221649634993

namespace A095342

/-- `A113954(n+1)+A053088(n)` -/
def P9286496221649634993.Spec : Prop :=
  ∀ n, P9286496221649634993.a n = A095342 (n + 1)

end A095342

/-! ## A095342.P13243726292002894

`2*A053088(n)-A033999(n)`
-/

namespace A095342.P13243726292002894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053088 n - A033999 n

end

end A095342.P13243726292002894

namespace A095342

/-- `2*A053088(n)-A033999(n)` -/
def P13243726292002894.Spec : Prop :=
  ∀ n, P13243726292002894.a n = A095342 (n + 1)

end A095342

/-! ## A095342.P12140150355496196037

`A181983(n+1)+A053088(n+1)`
-/

namespace A095342.P12140150355496196037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (n + 1) + A053088 (n + 1)

end

end A095342.P12140150355496196037

namespace A095342

/-- `A181983(n+1)+A053088(n+1)` -/
def P12140150355496196037.Spec : Prop :=
  ∀ n, P12140150355496196037.a n = A095342 (n + 1)

end A095342

/-! ## A095342.P11623736301424667414

`abs(A140962(n+1)-Δ[A140962(n+1)])`
-/

namespace A095342.P11623736301424667414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140962 (n + 1) - (f1 (n + 1) - f1 n)|

end

end A095342.P11623736301424667414

namespace A095342

/-- `abs(A140962(n+1)-Δ[A140962(n+1)])` -/
def P11623736301424667414.Spec : Prop :=
  ∀ n, P11623736301424667414.a n = A095342 (n + 1)

end A095342

/-! ## A095342.P5038320891787320634

`A053088(n)+A062510(n)-A172285(n)`
-/

namespace A095342.P5038320891787320634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 n + (A062510 n - A172285 n)

end

end A095342.P5038320891787320634

namespace A095342

/-- `A053088(n)+A062510(n)-A172285(n)` -/
def P5038320891787320634.Spec : Prop :=
  ∀ n, P5038320891787320634.a n = A095342 (n + 1)

end A095342

/-! ## A095342.P7695721686077563933

`(A122803(n)-A140962(n))*A033999(n)`
-/

namespace A095342.P7695721686077563933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122803 n - A140962 n) * A033999 n

end

end A095342.P7695721686077563933

namespace A095342

/-- `(A122803(n)-A140962(n))*A033999(n)` -/
def P7695721686077563933.Spec : Prop :=
  ∀ n, P7695721686077563933.a n = A095342 (n + 1)

end A095342

/-! ## A095342.P14579347013300390924

`A053088(n+1)+A130472(n)-A130472(n+1)`
-/

namespace A095342.P14579347013300390924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 (n + 1) + (A130472 n - A130472 (n + 1))

end

end A095342.P14579347013300390924

namespace A095342

/-- `A053088(n+1)+A130472(n)-A130472(n+1)` -/
def P14579347013300390924.Spec : Prop :=
  ∀ n, P14579347013300390924.a n = A095342 (n + 1)

end A095342

/-! ## A095342.P9386662268479707712

`A078008(n+1)-(A232603(n+1)+A232603(n))`
-/

namespace A095342.P9386662268479707712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (n + 1) - (A232603 (n + 1) + A232603 n)

end

end A095342.P9386662268479707712

namespace A095342

/-- `A078008(n+1)-(A232603(n+1)+A232603(n))` -/
def P9386662268479707712.Spec : Prop :=
  ∀ n, P9386662268479707712.a n = A095342 (n + 1)

end A095342

/-! ## A095342.P7015818242751338643

`abs(∑[2-2*a(n-1)]-1)` with `a(0)=2`
-/

namespace A095342.P7015818242751338643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A095342.P7015818242751338643

namespace A095342

/-- `abs(∑[2-2*a(n-1)]-1)` -/
def P7015818242751338643.Spec : Prop :=
  ∀ n, P7015818242751338643.a n = A095342 (n + 1)

end A095342

/-! ## A095342.P8665821992126483874

`Δ[A103196(n)]`
-/

namespace A095342.P8665821992126483874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095342.P8665821992126483874

namespace A095342

/-- `Δ[A103196(n)]` -/
def P8665821992126483874.Spec : Prop :=
  ∀ n, P8665821992126483874.a n = A095342 (n + 1)

end A095342

/-! ## A095342.P4492847200301871084

`Δ[record[A113954(n)]]`
-/

namespace A095342.P4492847200301871084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113954 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095342.P4492847200301871084

namespace A095342

/-- `Δ[record[A113954(n)]]` -/
def P4492847200301871084.Spec : Prop :=
  ∀ n, P4492847200301871084.a n = A095342 (n + 1)

end A095342

/-! ## A095342.P2861710607000881346

`Δ[A133993(n+1)]`
-/

namespace A095342.P2861710607000881346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095342.P2861710607000881346

namespace A095342

/-- `Δ[A133993(n+1)]` -/
def P2861710607000881346.Spec : Prop :=
  ∀ n, P2861710607000881346.a n = A095342 (n + 1)

end A095342

/-!
# A095343: Length of n-th string generated by a Kolakoski(7,1) rule starting with a(1)=1.

The programs for A095343, the canonical program `A095343.P12828676166643151138` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095343 has offset 1).

The definition of A095343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095343.P12828676166643151138

`a(n-1)+3*a(n-2)-3*(-1)^(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095343

/-- `a(n-1)+3*a(n-2)-3*(-1)^(n+1)` -/
def P12828676166643151138.Spec : Prop :=
  ∀ n, P12828676166643151138.a n = A095343 (n + 1)

theorem P12828676166643151138.correct : P12828676166643151138.Spec := by
  intro n
  simp only [A095343, Nat.add_sub_cancel]

end A095343

/-! ## A095343.P10357973972830853463

`ogf((1+x+3x^2)/(1-4x^2-3x^3))`
-/

namespace A095343.P10357973972830853463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3] [1, 0, -4, -3] n

end

end A095343.P10357973972830853463

namespace A095343

/-- `ogf((1+x+3x^2)/(1-4x^2-3x^3))` -/
def P10357973972830853463.Spec : Prop :=
  ∀ n, P10357973972830853463.a n = A095343 (n + 1)

end A095343

/-! ## A095343.P8655373533081185955

`a(n-1)+3*(a(n-2)+(-1)^n)` with `a(0)=1, a(1)=1`
-/

namespace A095343.P8655373533081185955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 3 * (a (n - 2) + (-1) ^ n)

end

end A095343.P8655373533081185955

namespace A095343

/-- `a(n-1)+3*(a(n-2)+(-1)^n)` -/
def P8655373533081185955.Spec : Prop :=
  ∀ n, P8655373533081185955.a n = A095343 (n + 1)

theorem P8655373533081185955.correct : P8655373533081185955.Spec := by
  intro n
  simp only [A095343, Nat.add_sub_cancel, A095343.P8655373533081185955.a, A095343.P12828676166643151138.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095343

/-! ## A095343.P9001487544535930376

`a(n-1)+3*(ratio[-a(n-2)]+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A095343.P9001487544535930376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  -f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 3 * ((f1 (n + 1) : ℚ) / (f1 n : ℚ) + a (n - 2))

end

end A095343.P9001487544535930376

namespace A095343

/-- `a(n-1)+3*(ratio[-a(n-2)]+a(n-2))` -/
def P9001487544535930376.Spec : Prop :=
  ∀ n, P9001487544535930376.a n = (A095343 (n + 1) : ℚ)

end A095343

/-! ## A095343.P11345121213388118882

`A228661(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A095343.P11345121213388118882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A228661 (n + 1) - a (n - 1)

end

end A095343.P11345121213388118882

namespace A095343

/-- `A228661(n+1)-a(n-1)` -/
def P11345121213388118882.Spec : Prop :=
  ∀ n, P11345121213388118882.a n = A095343 (n + 1)

end A095343

/-! ## A095343.P13466485843118413655

`2*A006130(n)-a(n-1)` with `a(0)=1`
-/

namespace A095343.P13466485843118413655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A006130 n - a (n - 1)

end

end A095343.P13466485843118413655

namespace A095343

/-- `2*A006130(n)-a(n-1)` -/
def P13466485843118413655.Spec : Prop :=
  ∀ n, P13466485843118413655.a n = A095343 (n + 1)

end A095343

/-! ## A095343.P4606691539346521982

`∑[2*A052533(n)]-a(n-1)` with `a(0)=1`
-/

namespace A095343.P4606691539346521982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052533 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A095343.P4606691539346521982

namespace A095343

/-- `∑[2*A052533(n)]-a(n-1)` -/
def P4606691539346521982.Spec : Prop :=
  ∀ n, P4606691539346521982.a n = A095343 (n + 1)

end A095343

/-! ## A095343.P1712482173199938440

`A006130(n+2)-A006138(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A095343.P1712482173199938440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006130 (n + 2) - A006138 (n + 1) - a (n - 1)

end

end A095343.P1712482173199938440

namespace A095343

/-- `A006130(n+2)-A006138(n+1)-a(n-1)` -/
def P1712482173199938440.Spec : Prop :=
  ∀ n, P1712482173199938440.a n = A095343 (n + 1)

end A095343

/-!
# A095344: Length of n-th string generated by a Kolakoski(9,1) rule starting with a(1)=1.

The programs for A095344, the canonical program `A095344.P11968982634724386591` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095344 has offset 1).

The definition of A095344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095344.P11968982634724386591

`5*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095344

/-- `5*a(n-2)+4*a(n-3)` -/
def P11968982634724386591.Spec : Prop :=
  ∀ n, (P11968982634724386591.a n : ℤ) = A095344 (n + 1)

theorem P11968982634724386591.correct : P11968982634724386591.Spec := by
  intro n
  simp only [A095344, Nat.add_sub_cancel]

end A095344

/-! ## A095344.P703707815322876529

`ogf((1+x+4x^2)/(1-5x^2-4x^3))`
-/

namespace A095344.P703707815322876529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 4] [1, 0, -5, -4] n

end

end A095344.P703707815322876529

namespace A095344

/-- `ogf((1+x+4x^2)/(1-5x^2-4x^3))` -/
def P703707815322876529.Spec : Prop :=
  ∀ n, P703707815322876529.a n = A095344 (n + 1)

end A095344

/-! ## A095344.P9026111359280766715

`A102446(n)-a(n-1)` with `a(0)=1`
-/

namespace A095344.P9026111359280766715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A102446 n - a (n - 1)

end

end A095344.P9026111359280766715

namespace A095344

/-- `A102446(n)-a(n-1)` -/
def P9026111359280766715.Spec : Prop :=
  ∀ n, P9026111359280766715.a n = A095344 (n + 1)

end A095344

/-! ## A095344.P3255700894758813125

`2*A006131(n)-a(n-1)` with `a(0)=1`
-/

namespace A095344.P3255700894758813125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A006131 n - a (n - 1)

end

end A095344.P3255700894758813125

namespace A095344

/-- `2*A006131(n)-a(n-1)` -/
def P3255700894758813125.Spec : Prop :=
  ∀ n, P3255700894758813125.a n = A095344 (n + 1)

end A095344

/-! ## A095344.P3972380992321511728

`∑[2*A052923(n)]-a(n-1)` with `a(0)=1`
-/

namespace A095344.P3972380992321511728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052923 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A095344.P3972380992321511728

namespace A095344

/-- `∑[2*A052923(n)]-a(n-1)` -/
def P3972380992321511728.Spec : Prop :=
  ∀ n, P3972380992321511728.a n = A095344 (n + 1)

end A095344

/-! ## A095344.P2088858290243944595

`A176738(n)+xor(1, A176738(n))`
-/

namespace A095344.P2088858290243944595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176738 n + Int.xor 1 (A176738 n)

end

end A095344.P2088858290243944595

namespace A095344

/-- `A176738(n)+xor(1, A176738(n))` -/
def P2088858290243944595.Spec : Prop :=
  ∀ n, P2088858290243944595.a n = A095344 (n + 1)

end A095344

/-!
# A095345: a(n) is the length of the n-th run in A095346.

The programs for A095345, the canonical program `A095345.P17455423609397731554` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095345 has offset 1).

The definition of A095345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095345.P16546431749151708745

`2*Δ[floor(floor(n/2)/ϕ)]+1`
-/

namespace A095345.P16546431749151708745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / 2⌋ : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) + 1

end

end A095345.P16546431749151708745

namespace A095345

/-- `2*Δ[floor(floor(n/2)/ϕ)]+1` -/
def P16546431749151708745.Spec : Prop :=
  ∀ n, P16546431749151708745.a n = A095345 (n + 1)

end A095345

/-! ## A095345.P17455423609397731554

`gcd(3, A108103(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A095345

/-- `gcd(3, A108103(n+1))` -/
def P17455423609397731554.Spec : Prop :=
  ∀ n, (P17455423609397731554.a n : ℤ) = A095345 (n + 1)

theorem P17455423609397731554.correct : P17455423609397731554.Spec := by
  intro n
  simp only [A095345, Nat.add_sub_cancel]

end A095345

/-! ## A095345.P5510849737611496915

`A095346(n)^a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A095345.P5510849737611496915
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A095346 n : ℝ) ^ (a (n - 1))

end

end A095345.P5510849737611496915

namespace A095345

/-- `A095346(n)^a(n-1)` -/
def P5510849737611496915.Spec : Prop :=
  ∀ n, P5510849737611496915.a n = (A095345 (n + 1) : ℝ)

end A095345

/-!
# A095346: a(n) is the length of the n-th run of A095345.

The programs for A095346, the canonical program `A095346.P4704353315641718583` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095346 has offset 1).

The definition of A095346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095346.P3885366920480943503

`gcd(3, Δ[A188016(n+1)])`
-/

namespace A095346.P3885366920480943503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (f1 (n + 1) - f1 n)

end

end A095346.P3885366920480943503

namespace A095346

/-- `gcd(3, Δ[A188016(n+1)])` -/
def P3885366920480943503.Spec : Prop :=
  ∀ n, (P3885366920480943503.a n : ℤ) = A095346 (n + 1)

end A095346

/-! ## A095346.P4704353315641718583

`or(1, Δ[A188435(n+1)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A095346

/-- `or(1, Δ[A188435(n+1)])` -/
def P4704353315641718583.Spec : Prop :=
  ∀ n, P4704353315641718583.a n = A095346 (n + 1)

theorem P4704353315641718583.correct : P4704353315641718583.Spec := by
  intro n
  simp only [A095346, Nat.add_sub_cancel]

end A095346

/-! ## A095346.P2532150766098377899

`A000217(Δ[A188435(n+1)])`
-/

namespace A095346.P2532150766098377899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (n + 1) - f1 n).toNat

end

end A095346.P2532150766098377899

namespace A095346

/-- `A000217(Δ[A188435(n+1)])` -/
def P2532150766098377899.Spec : Prop :=
  ∀ n, P2532150766098377899.a n = A095346 (n + 1)

end A095346

/-! ## A095346.P9777563078260403845

`A074679(Δ[A188435(n+1)])`
-/

namespace A095346.P9777563078260403845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (f1 (n + 1) - f1 n).toNat

end

end A095346.P9777563078260403845

namespace A095346

/-- `A074679(Δ[A188435(n+1)])` -/
def P9777563078260403845.Spec : Prop :=
  ∀ n, P9777563078260403845.a n = A095346 (n + 1)

end A095346

/-! ## A095346.P8524276130421308723

`A188435(Δ[A188435(n+1)])`
-/

namespace A095346.P8524276130421308723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (f1 (n + 1) - f1 n).toNat

end

end A095346.P8524276130421308723

namespace A095346

/-- `A188435(Δ[A188435(n+1)])` -/
def P8524276130421308723.Spec : Prop :=
  ∀ n, P8524276130421308723.a n = A095346 (n + 1)

end A095346

/-! ## A095346.P12439987606557452783

`A005098(A188435(n+2)-A188435(n+1))`
-/

namespace A095346.P12439987606557452783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (A188435 (n + 2) - A188435 (n + 1)).toNat

end

end A095346.P12439987606557452783

namespace A095346

/-- `A005098(A188435(n+2)-A188435(n+1))` -/
def P12439987606557452783.Spec : Prop :=
  ∀ n, P12439987606557452783.a n = A095346 (n + 1)

end A095346

/-! ## A095346.P13924640982183053358

`A057660(A188435(n+2)-A188435(n+1))`
-/

namespace A095346.P13924640982183053358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057660 (A188435 (n + 2) - A188435 (n + 1)).toNat

end

end A095346.P13924640982183053358

namespace A095346

/-- `A057660(A188435(n+2)-A188435(n+1))` -/
def P13924640982183053358.Spec : Prop :=
  ∀ n, P13924640982183053358.a n = A095346 (n + 1)

end A095346

/-! ## A095346.P3372667076991800009

`A095345(A061767(2*n+1)-n)`
-/

namespace A095346.P3372667076991800009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095345 (A061767 (2 * n + 1) - (n : ℤ)).toNat

end

end A095346.P3372667076991800009

namespace A095346

/-- `A095345(A061767(2*n+1)-n)` -/
def P3372667076991800009.Spec : Prop :=
  ∀ n, P3372667076991800009.a n = A095346 (n + 1)

end A095346

/-! ## A095346.P10066871470202575050

`A095345(A113484(2*n+1)-n)`
-/

namespace A095346.P10066871470202575050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095345 (A113484 (2 * n + 1) - (n : ℤ)).toNat

end

end A095346.P10066871470202575050

namespace A095346

/-- `A095345(A113484(2*n+1)-n)` -/
def P10066871470202575050.Spec : Prop :=
  ∀ n, P10066871470202575050.a n = A095346 (n + 1)

end A095346

/-! ## A095346.P8733883945932867676

`A095345(a(n-1)+n+1)` with `a(0)=3`
-/

namespace A095346.P8733883945932867676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A095345 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A095346.P8733883945932867676

namespace A095346

/-- `A095345(a(n-1)+n+1)` -/
def P8733883945932867676.Spec : Prop :=
  ∀ n, P8733883945932867676.a n = A095346 (n + 1)

end A095346

/-!
# A095347: n sets a new record for number of iterations of A034690 (sum of digits of the divisors of n) needed to reach 15 (see A086793).

The programs for A095347, there is no canonical definition to state claims against.
-/

/-! ## A095347.P14796634024455333187

`A094501(A118358(n+1))`
-/

namespace A095347.P14796634024455333187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094501 (A118358 (n + 1)).toNat

end

end A095347.P14796634024455333187

/-! ## A095347.P15669683374731416098

`A260060(and(-1, A118358(n+1)))`
-/

namespace A095347.P15669683374731416098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260060 (Int.land (-1) (A118358 (n + 1))).toNat

end

end A095347.P15669683374731416098

/-! ## A095347.P18001372095830869345

`A260060(A118358(n+1)*A271950(n))`
-/

namespace A095347.P18001372095830869345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260060 (A118358 (n + 1) * A271950 n).toNat

end

end A095347.P18001372095830869345

/-! ## A095347.P5624748706604113511

`A260060(A118358(n+1)%A041968(n))`
-/

namespace A095347.P5624748706604113511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260060 (Int.tmod (A118358 (n + 1)) (A041968 n)).toNat

end

end A095347.P5624748706604113511

/-! ## A095347.P5243811079344020318

`lcm(A007318(n), A260060(A118358(n+1)))`
-/

namespace A095347.P5243811079344020318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A260060 (A118358 (n + 1)).toNat)

end

end A095347.P5243811079344020318

/-!
# A095348: Number of distinct automorphism group orders for the simple graphs on n nodes.

The programs for A095348, there is no canonical definition to state claims against.
-/

/-! ## A095348.P12560094958473304332

`A353838(A330950(n+1)+A139714(n))`
-/

namespace A095348.P12560094958473304332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353838 (A330950 (n + 1) + A139714 n).toNat

end

end A095348.P12560094958473304332

/-!
# A095349: Total number of edges in all trees on n nodes.

The programs for A095349, there is no canonical definition to state claims against.
-/

/-! ## A095349.P1297653666580511429

`n*A000055(n+1)`
-/

namespace A095349.P1297653666580511429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000055 (n + 1)

end

end A095349.P1297653666580511429

/-! ## A095349.P11037871103861330248

`n*(A144520(n+1)+1)`
-/

namespace A095349.P11037871103861330248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A144520 (n + 1) + 1)

end

end A095349.P11037871103861330248

/-! ## A095349.P4093267532599220431

`n/(n+1)*A055543(n+1)`
-/

namespace A095349.P4093267532599220431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * (A055543 (n + 1) : ℚ)

end

end A095349.P4093267532599220431

/-! ## A095349.P12100073409641521291

`A055543(n+1)-A000055(n+1)`
-/

namespace A095349.P12100073409641521291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055543 (n + 1) - A000055 (n + 1)

end

end A095349.P12100073409641521291

/-! ## A095349.P7749893384942120010

`n*A095133(∑[n]+1)`
-/

namespace A095349.P7749893384942120010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A095133 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A095349.P7749893384942120010

/-! ## A095349.P2628568609537267321

`n*A105820(∑[n]+1)`
-/

namespace A095349.P2628568609537267321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A105820 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A095349.P2628568609537267321

/-! ## A095349.P14290748256840515910

`n*A106237(∑[n]+1)`
-/

namespace A095349.P14290748256840515910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A106237 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A095349.P14290748256840515910

/-! ## A095349.P17063192724446437183

`n*A136605(∑[n+1])`
-/

namespace A095349.P17063192724446437183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A136605 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095349.P17063192724446437183

/-! ## A095349.P4115724929193911950

`n*A105821(A133263(n+1))`
-/

namespace A095349.P4115724929193911950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A105821 (A133263 (n + 1)).toNat

end

end A095349.P4115724929193911950

/-! ## A095349.P3602126762814245224

`n*sqrt(A001256(n+1))`
-/

namespace A095349.P3602126762814245224
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A001256 (n + 1) : ℝ)

end

end A095349.P3602126762814245224

/-! ## A095349.P10817731683056631532

`n*A381467(A001840(n+1))`
-/

namespace A095349.P10817731683056631532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A381467 (A001840 (n + 1)).toNat

end

end A095349.P10817731683056631532

/-!
# A095350: Total number of edges in all rooted trees on n nodes.

The programs for A095350, there is no canonical definition to state claims against.
-/

/-! ## A095350.P14981672027262982544

`n*A000081(n+1)`
-/

namespace A095350.P14981672027262982544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000081 (n + 1)

end

end A095350.P14981672027262982544

/-! ## A095350.P2363102678429899765

`n*∑[A174145(n)]`
-/

namespace A095350.P2363102678429899765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095350.P2363102678429899765

/-! ## A095350.P5007350021039338096

`n*A038001(Δ[n²])`
-/

namespace A095350.P5007350021039338096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A038001 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A095350.P5007350021039338096

/-! ## A095350.P5796082294998011391

`n/(n+1)*A055544(n+1)`
-/

namespace A095350.P5796082294998011391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * (A055544 (n + 1) : ℚ)

end

end A095350.P5796082294998011391

/-! ## A095350.P286350750189100604

`n*A123467(A028310(n))`
-/

namespace A095350.P286350750189100604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A123467 (A028310 n).toNat

end

end A095350.P286350750189100604

/-! ## A095350.P1770892690527444395

`n*record[A000081(A081594(n))]`
-/

namespace A095350.P1770892690527444395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A081594 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095350.P1770892690527444395

/-! ## A095350.P9660817730522571315

`n*record[A000081(A264749(n))]`
-/

namespace A095350.P9660817730522571315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A264749 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095350.P9660817730522571315

/-! ## A095350.P12916665137146440946

`A055544(n+1)-A000081(n+1)`
-/

namespace A095350.P12916665137146440946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055544 (n + 1) - A000081 (n + 1)

end

end A095350.P12916665137146440946

/-! ## A095350.P15125852431612413901

`n*A123467(A101279(2*n+1))`
-/

namespace A095350.P15125852431612413901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A123467 (A101279 (2 * n + 1)).toNat

end

end A095350.P15125852431612413901

/-! ## A095350.P642878668055243844

`A095341(n+2)-A000081(n+1)-A000081(n+1)`
-/

namespace A095350.P642878668055243844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095341 (n + 2) - A000081 (n + 1) - A000081 (n + 1)

end

end A095350.P642878668055243844

/-! ## A095350.P4100998964930144980

`n*record[A106235(n+1)]`
-/

namespace A095350.P4100998964930144980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095350.P4100998964930144980

/-! ## A095350.P878192460807151397

`n*A033185(A000124(n))`
-/

namespace A095350.P878192460807151397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033185 (A000124 n).toNat

end

end A095350.P878192460807151397

/-! ## A095350.P6925485017865967039

`n*record[A106234(n+2)]`
-/

namespace A095350.P6925485017865967039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095350.P6925485017865967039

/-! ## A095350.P15428988612845681367

`n*A106234(A133263(n+1))`
-/

namespace A095350.P15428988612845681367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A106234 (A133263 (n + 1)).toNat

end

end A095350.P15428988612845681367

/-! ## A095350.P8493680505381424246

`n*record[A000081(A028897(n))]`
-/

namespace A095350.P8493680505381424246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A028897 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095350.P8493680505381424246

/-! ## A095350.P12858438071868305356

`n*sqrt(A001257(n))`
-/

namespace A095350.P12858438071868305356
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A001257 n : ℝ)

end

end A095350.P12858438071868305356

/-! ## A095350.P12143145877329785710

`n*A318753(A001105(n+1))`
-/

namespace A095350.P12143145877329785710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A318753 (A001105 (n + 1)).toNat

end

end A095350.P12143145877329785710

/-!
# A095351: Total number of edges in all labeled graphs on n nodes.

The programs for A095351, the canonical program `A095351.P9295800448453419278` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095351 has offset 1).

The definition of A095351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095351.P9295800448453419278

`(n+1)*n/4*2^((n+1)*n/2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095351

/-- `(n+1)*n/4*2^((n+1)*n/2)` -/
def P9295800448453419278.Spec : Prop :=
  ∀ n, P9295800448453419278.a n = (A095351 (n + 1) : ℝ)

end A095351

/-! ## A095351.P4271003581019661068

`A001787(∑[n])`
-/

namespace A095351.P4271003581019661068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095351.P4271003581019661068

namespace A095351

/-- `A001787(∑[n])` -/
def P4271003581019661068.Spec : Prop :=
  ∀ n, P4271003581019661068.a n = A095351 (n + 1)

end A095351

/-! ## A095351.P13911243291248578926

`abs(A118442(∑[n]))`
-/

namespace A095351.P13911243291248578926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118442 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A095351.P13911243291248578926

namespace A095351

/-- `abs(A118442(∑[n]))` -/
def P13911243291248578926.Spec : Prop :=
  ∀ n, P13911243291248578926.a n = A095351 (n + 1)

end A095351

/-! ## A095351.P1679302122986009003

`A097067(∑[n]+1)`
-/

namespace A095351.P1679302122986009003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A095351.P1679302122986009003

namespace A095351

/-- `A097067(∑[n]+1)` -/
def P1679302122986009003.Spec : Prop :=
  ∀ n, P1679302122986009003.a n = A095351 (n + 1)

end A095351

/-! ## A095351.P15128359113725042085

`A139756(∑[n]+1)`
-/

namespace A095351.P15128359113725042085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A095351.P15128359113725042085

namespace A095351

/-- `A139756(∑[n]+1)` -/
def P15128359113725042085.Spec : Prop :=
  ∀ n, P15128359113725042085.a n = A095351 (n + 1)

end A095351

/-!
# A095352: Number of (not necessarily connected) edge-transitive simple graphs on n vertices.

The programs for A095352, there is no canonical definition to state claims against.
-/

/-! ## A095352.P11597372112611787549

`A338265(A023598(n+1))`
-/

namespace A095352.P11597372112611787549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338265 (A023598 (n + 1)).toNat

end

end A095352.P11597372112611787549

/-! ## A095352.P1364420682361127423

`A131818(A102363(n))+A003192(n+1)`
-/

namespace A095352.P1364420682361127423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A102363 n).toNat + A003192 (n + 1)

end

end A095352.P1364420682361127423

/-! ## A095352.P504163187829391775

`A015135(A106288(n+1))+A003192(n+1)`
-/

namespace A095352.P504163187829391775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015135 (A106288 (n + 1)).toNat + A003192 (n + 1)

end

end A095352.P504163187829391775

/-! ## A095352.P112036031042095940

`A211100(A018818(n+1))+A003192(n+1)`
-/

namespace A095352.P112036031042095940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A018818 (n + 1)).toNat + A003192 (n + 1)

end

end A095352.P112036031042095940

/-!
# A095354: Number of primes p such that Fib(n+1) <= p < Fib(n+2), (where Fib = A000045).

The programs for A095354, there is no canonical definition to state claims against.
-/

/-! ## A095354.P7535158657510605009

`Δ[A052011(n+1)+∑[A076777(n)]]`
-/

namespace A095354.P7535158657510605009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076777 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052011 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095354.P7535158657510605009

/-! ## A095354.P12161700757571945140

`Δ[A054782(n+3)-A082602(n+2)]`
-/

namespace A095354.P12161700757571945140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 (n + 3) - A082602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095354.P12161700757571945140

/-! ## A095354.P17556799465391720480

`A076777(n+3)-Δ[A082602(n+2)]`
-/

namespace A095354.P17556799465391720480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076777 (n + 3) - (f1 (n + 1) - f1 n)

end

end A095354.P17556799465391720480

/-! ## A095354.P14520075114334220377

`A076777(n+1)+A052011(n+2)-A052011(n+1)`
-/

namespace A095354.P14520075114334220377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076777 (n + 1) + (A052011 (n + 2) - A052011 (n + 1))

end

end A095354.P14520075114334220377

/-! ## A095354.P7743125010911244106

`Δ[A182564(n+2)]`
-/

namespace A095354.P7743125010911244106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182564 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095354.P7743125010911244106

/-!
# A095357: Ratio A095107(n)/A095008(n) rounded down.

The programs for A095357, there is no canonical definition to state claims against.
-/

/-! ## A095357.P6505666825741747481

`floor(A095107(n+1)/A095008(n+1))`
-/

namespace A095357.P6505666825741747481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095107 (n + 1) : ℚ) / (A095008 (n + 1) : ℚ)⌋

end

end A095357.P6505666825741747481

/-! ## A095357.P10514143657554607405

`floor(A095107(n+1)/(A095012(n+1)+A095010(n+1)))`
-/

namespace A095357.P10514143657554607405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095107 (n + 1) : ℚ) / (A095012 (n + 1) + A095010 (n + 1) : ℚ)⌋

end

end A095357.P10514143657554607405

/-! ## A095357.P14494816860116242036

`floor(A095107(n+1)/(A095093(n+1)+A095092(n+1)))`
-/

namespace A095357.P14494816860116242036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095107 (n + 1) : ℚ) / (A095093 (n + 1) + A095092 (n + 1) : ℚ)⌋

end

end A095357.P14494816860116242036

/-! ## A095357.P985568894671587980

`floor(A095107(n+1)/(A036378(n+1)-A095007(n+1)))`
-/

namespace A095357.P985568894671587980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095107 (n + 1) : ℚ) / (A036378 (n + 1) - A095007 (n + 1) : ℚ)⌋

end

end A095357.P985568894671587980

/-! ## A095357.P745971015354703829

`floor(A095107(n+1)/A087011(2^(n+1)))`
-/

namespace A095357.P745971015354703829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095107 (n + 1) : ℚ) / (A087011 (2 ^ (n + 1)) : ℚ)⌋

end

end A095357.P745971015354703829

/-!
# A095358: Ratio A095107(n)/A095008(n) rounded to nearest integer.

The programs for A095358, there is no canonical definition to state claims against.
-/

/-! ## A095358.P16317973158285468661

`round(A095107(n+1)/A095008(n+1))`
-/

namespace A095358.P16317973158285468661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A095107 (n + 1) : ℚ) / (A095008 (n + 1) : ℚ))

end

end A095358.P16317973158285468661

/-! ## A095358.P10879016817594289225

`round(A095107(n+1)/(A095012(n+1)+A095010(n+1)))`
-/

namespace A095358.P10879016817594289225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A095107 (n + 1) : ℚ) / (A095012 (n + 1) + A095010 (n + 1) : ℚ))

end

end A095358.P10879016817594289225

/-! ## A095358.P5153388056376270922

`round(A095107(n+1)/(A095093(n+1)+A095092(n+1)))`
-/

namespace A095358.P5153388056376270922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A095107 (n + 1) : ℚ) / (A095093 (n + 1) + A095092 (n + 1) : ℚ))

end

end A095358.P5153388056376270922

/-! ## A095358.P560786242659588587

`round(A095107(n+1)/(A036378(n+1)-A095007(n+1)))`
-/

namespace A095358.P560786242659588587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A095107 (n + 1) : ℚ) / (A036378 (n + 1) - A095007 (n + 1) : ℚ))

end

end A095358.P560786242659588587

/-! ## A095358.P2305005791800879034

`round(A095107(n+1)/A087011(2^(n+1)))`
-/

namespace A095358.P2305005791800879034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A095107 (n + 1) : ℚ) / (A087011 (2 ^ (n + 1)) : ℚ))

end

end A095358.P2305005791800879034

/-!
# A095359: Ratio A095109(n)/A095091(n) rounded down.

The programs for A095359, there is no canonical definition to state claims against.
-/

/-! ## A095359.P16925869483380739109

`A095360(n+1)-A283486(A283469(n+1))`
-/

namespace A095359.P16925869483380739109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095360 (n + 1) - A283486 (A283469 (n + 1)).toNat

end

end A095359.P16925869483380739109

/-! ## A095359.P16829455652017510327

`A095360(n+1)-A350251(A016116(n))`
-/

namespace A095359.P16829455652017510327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095360 (n + 1) - A350251 (A016116 n).toNat

end

end A095359.P16829455652017510327

/-! ## A095359.P17353036875738315598

`A095360(n+1)-A055641(A182863(n+1))`
-/

namespace A095359.P17353036875738315598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095360 (n + 1) - A055641 (A182863 (n + 1)).toNat

end

end A095359.P17353036875738315598

/-! ## A095359.P2005920184736030876

`A095360(n+1)+A062157(A045658(n))`
-/

namespace A095359.P2005920184736030876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095360 (n + 1) + A062157 (A045658 n).toNat

end

end A095359.P2005920184736030876

/-!
# A095360: Ratio A095109(n)/A095091(n) rounded to nearest integer.

The programs for A095360, there is no canonical definition to state claims against.
-/

/-! ## A095360.P16017855444675294703

`A283486(A283469(n+1))+A095359(n+1)`
-/

namespace A095360.P16017855444675294703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283486 (A283469 (n + 1)).toNat + A095359 (n + 1)

end

end A095360.P16017855444675294703

/-! ## A095360.P17926506588424071654

`A185119(A000079(n))+A095359(n+1)`
-/

namespace A095360.P17926506588424071654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185119 (A000079 n).toNat + A095359 (n + 1)

end

end A095360.P17926506588424071654

/-! ## A095360.P8631362621731273034

`A350251(A016116(n))+A095359(n+1)`
-/

namespace A095360.P8631362621731273034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350251 (A016116 n).toNat + A095359 (n + 1)

end

end A095360.P8631362621731273034

/-! ## A095360.P8719443237885624101

`A095359(n+1)+A091247(A384479(n+1))`
-/

namespace A095360.P8719443237885624101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095359 (n + 1) + A091247 (A384479 (n + 1)).toNat

end

end A095360.P8719443237885624101

/-! ## A095360.P1199860367400288281

`A095359(n+1)+A055641(A182863(n+1))`
-/

namespace A095360.P1199860367400288281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095359 (n + 1) + A055641 (A182863 (n + 1)).toNat

end

end A095360.P1199860367400288281

/-!
# A095361: Ratio A095110(n)/A000079(n-2) rounded down.

The programs for A095361, there is no canonical definition to state claims against.
-/

/-! ## A095361.P6748673256565836271

`floor(A095110(n+1)/ceil(2^(n-1)))`
-/

namespace A095361.P6748673256565836271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095110 (n + 1) : ℚ) / (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ)⌋

end

end A095361.P6748673256565836271

/-! ## A095361.P17890086864585249911

`A095362(n+1)-A327144(A095356(n+2))`
-/

namespace A095361.P17890086864585249911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095362 (n + 1) - A327144 (A095356 (n + 2)).toNat

end

end A095361.P17890086864585249911

/-! ## A095361.P16301980450633955662

`A095362(n+1)-A118135(A200748(n))`
-/

namespace A095361.P16301980450633955662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095362 (n + 1) - A118135 (A200748 n).toNat

end

end A095361.P16301980450633955662

/-! ## A095361.P1374473435778890718

`A095362(n+1)-A372573(A095328(2*n+5))`
-/

namespace A095361.P1374473435778890718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095362 (n + 1) - A372573 (A095328 (2 * n + 5)).toNat

end

end A095361.P1374473435778890718

/-!
# A095362: Ratio A095110(n)/A000079(n-2) rounded to nearest integer.

The programs for A095362, there is no canonical definition to state claims against.
-/

/-! ## A095362.P6688894797989227657

`round(A095110(n+1)/A011782(n))`
-/

namespace A095362.P6688894797989227657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A095110 (n + 1) : ℚ) / (A011782 n : ℚ))

end

end A095362.P6688894797989227657

/-! ## A095362.P16061348885899319414

`A327144(A095356(n+2))+A095361(n+1)`
-/

namespace A095362.P16061348885899319414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327144 (A095356 (n + 2)).toNat + A095361 (n + 1)

end

end A095362.P16061348885899319414

/-! ## A095362.P2329291490987716166

`A095361(n+1)+A003849((11*n)²)`
-/

namespace A095362.P2329291490987716166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095361 (n + 1) + A003849 ((11 * n) ^ 2)

end

end A095362.P2329291490987716166

/-! ## A095362.P17604271405559619330

`A118135(A200748(n))+A095361(n+1)`
-/

namespace A095362.P17604271405559619330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118135 (A200748 n).toNat + A095361 (n + 1)

end

end A095362.P17604271405559619330

/-! ## A095362.P7385602392728301405

`A095361(n+1)+A059841(A248920(2*n+3))`
-/

namespace A095362.P7385602392728301405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095361 (n + 1) + A059841 (A248920 (2 * n + 3)).toNat

end

end A095362.P7385602392728301405

/-!
# A095364: Number of walks of length n between two adjacent nodes in the cycle graph C_9.

The programs for A095364, the canonical program `A095364.P2151699229160337353` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095364 has offset 1).

The definition of A095364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095364.P2151699229160337353

`a(n-1)+5*a(n-2)-4*a(n-3)-5*a(n-4)+2*a(n-5)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0, a(4)=10`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095364

/-- `a(n-1)+5*a(n-2)-4*a(n-3)-5*a(n-4)+2*a(n-5)` -/
def P2151699229160337353.Spec : Prop :=
  ∀ n, P2151699229160337353.a n = A095364 (n + 1)

theorem P2151699229160337353.correct : P2151699229160337353.Spec := by
  intro n
  simp only [A095364, Nat.add_sub_cancel]

end A095364

/-! ## A095364.P10240853619114035400

`A094233(n+2)/2`
-/

namespace A095364.P10240853619114035400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094233 (n + 2) : ℚ) / 2

end

end A095364.P10240853619114035400

namespace A095364

/-- `A094233(n+2)/2` -/
def P10240853619114035400.Spec : Prop :=
  ∀ n, P10240853619114035400.a n = (A095364 (n + 1) : ℚ)

end A095364

/-! ## A095364.P17655478061046707180

`∑[A095367(n+2)-A001045(n)]`
-/

namespace A095364.P17655478061046707180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095367 (n + 2) - A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095364.P17655478061046707180

namespace A095364

/-- `∑[A095367(n+2)-A001045(n)]` -/
def P17655478061046707180.Spec : Prop :=
  ∀ n, P17655478061046707180.a n = A095364 (n + 1)

end A095364

/-! ## A095364.P2343722288010787561

`∑[A095367(n+2)-(A167030(n)+1)]`
-/

namespace A095364.P2343722288010787561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095367 (n + 2) - (A167030 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095364.P2343722288010787561

namespace A095364

/-- `∑[A095367(n+2)-(A167030(n)+1)]` -/
def P2343722288010787561.Spec : Prop :=
  ∀ n, P2343722288010787561.a n = A095364 (n + 1)

end A095364

/-! ## A095364.P13430898873254672823

`∑[A095367(n+2)]-A000975(n)`
-/

namespace A095364.P13430898873254672823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095367 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000975 n

end

end A095364.P13430898873254672823

namespace A095364

/-- `∑[A095367(n+2)]-A000975(n)` -/
def P13430898873254672823.Spec : Prop :=
  ∀ n, P13430898873254672823.a n = A095364 (n + 1)

end A095364

/-!
# A095365: Primes p such that f(q) < f(p) for all primes q < p, where f(p) = lcm(2-1, 3-1, 5-1, 7-1, 11-1, ..., p-1).

The programs for A095365, there is no canonical definition to state claims against.
-/

/-! ## A095365.P1348069570943172077

`record[A034694(A034699(A006093(n+1)))]`
-/

namespace A095365.P1348069570943172077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A034699 (A006093 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095365.P1348069570943172077

/-! ## A095365.P7850229873493866860

`record[A034694(A330691(A063994(n+1)))]`
-/

namespace A095365.P7850229873493866860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A330691 (A063994 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095365.P7850229873493866860

/-! ## A095365.P8018881529031889489

`p?[lt[A167286(n+2), 5]]`
-/

namespace A095365.P8018881529031889489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167286 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095365.P8018881529031889489

/-! ## A095365.P13719739174599696684

`p?[A130734(record[A025831(n)])]`
-/

namespace A095365.P13719739174599696684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025831 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095365.P13719739174599696684

/-! ## A095365.P4800708732869307772

`∩[A040049(n+1), A382393(n+1)]`
-/

namespace A095365.P4800708732869307772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095365.P4800708732869307772

/-!
# A095366: Least k > 1 such that k divides 1^n + 2^n +...+ (k-1)^n.

The programs for A095366, there is no canonical definition to state claims against.
-/

/-! ## A095366.P11222129173592393558

`A051697(A378640(n+1)+1)`
-/

namespace A095366.P11222129173592393558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (A378640 (n + 1) + 1).toNat

end

end A095366.P11222129173592393558

/-! ## A095366.P3415731071491881773

`A151800(A378640(n+1)-1)`
-/

namespace A095366.P3415731071491881773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A378640 (n + 1) - 1).toNat

end

end A095366.P3415731071491881773

/-! ## A095366.P17752346738933815260

`A000523(2^A378640(n+1))`
-/

namespace A095366.P17752346738933815260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A378640 (n + 1) : ℤ))).toNat

end

end A095366.P17752346738933815260

/-! ## A095366.P1249255990678477178

`A183063(2^A378640(n+1))`
-/

namespace A095366.P1249255990678477178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A378640 (n + 1) : ℤ))).toNat

end

end A095366.P1249255990678477178

/-! ## A095366.P8352375492544780858

`A320111(2^A378640(n+1))`
-/

namespace A095366.P8352375492544780858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A378640 (n + 1) : ℤ))).toNat

end

end A095366.P8352375492544780858

/-! ## A095366.P13298108187324832786

`A378640(n+1)+A010051(A086645(n))`
-/

namespace A095366.P13298108187324832786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378640 (n + 1) + A010051 (A086645 n).toNat

end

end A095366.P13298108187324832786

/-! ## A095366.P7896352332186645319

`A007947(A378640(n+1)^A071866(3*(n+1)))`
-/

namespace A095366.P7896352332186645319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A378640 (n + 1) : ℚ) ^ (A071866 (3 * (n + 1)) : ℤ))).toNat

end

end A095366.P7896352332186645319

/-! ## A095366.P1961942250007428733

`A020639(A378640(n+1)^A071866(3*(n+1)))`
-/

namespace A095366.P1961942250007428733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A378640 (n + 1) : ℚ) ^ (A071866 (3 * (n + 1)) : ℤ))).toNat

end

end A095366.P1961942250007428733

/-! ## A095366.P16141575414143380077

`A378640(n+1)%A372980(n)`
-/

namespace A095366.P16141575414143380077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378640 (n + 1)) (A372980 n)

end

end A095366.P16141575414143380077

/-! ## A095366.P14905887221138661191

`and(A061931(A378640(n+3)), A378640(n+1))`
-/

namespace A095366.P14905887221138661191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061931 (A378640 (n + 3)).toNat) (A378640 (n + 1))

end

end A095366.P14905887221138661191

/-!
# A095367: Number of walks of length n between two nodes at distance 2 in the cycle graph C_9.

The programs for A095367, the canonical program `A095367.P7394347153589784746` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095367 has offset 2).

The definition of A095367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095367.P7394347153589784746

`a(n-1)+5*a(n-2)-4*a(n-3)-5*a(n-4)+2*a(n-5)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=0, a(4)=15`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095367

/-- `a(n-1)+5*a(n-2)-4*a(n-3)-5*a(n-4)+2*a(n-5)` -/
def P7394347153589784746.Spec : Prop :=
  ∀ n, P7394347153589784746.a n = A095367 (n + 2)

theorem P7394347153589784746.correct : P7394347153589784746.Spec := by
  intro n
  simp only [A095367, Nat.add_sub_cancel]

end A095367

/-! ## A095367.P5311369471030161246

`A095364(n+3)-A005843(A095364(n+1))`
-/

namespace A095367.P5311369471030161246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095364 (n + 3) - A005843 (A095364 (n + 1)).toNat

end

end A095367.P5311369471030161246

namespace A095367

/-- `A095364(n+3)-A005843(A095364(n+1))` -/
def P5311369471030161246.Spec : Prop :=
  ∀ n, P5311369471030161246.a n = A095367 (n + 2)

end A095367

/-! ## A095367.P3767447174427487033

`C(A276621(A276601(n+1)), A180595(n))`
-/

namespace A095367.P3767447174427487033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A276621 (A276601 (n + 1)).toNat).toNat (A180595 n).toNat

end

end A095367.P3767447174427487033

namespace A095367

/-- `C(A276621(A276601(n+1)), A180595(n))` -/
def P3767447174427487033.Spec : Prop :=
  ∀ n, (P3767447174427487033.a n : ℤ) = A095367 (n + 2)

end A095367

/-! ## A095367.P13295266467681247837

`C(A065475(n+1), A058288(A274585(n+3)))`
-/

namespace A095367.P13295266467681247837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065475 (n + 1)).toNat (A058288 (A274585 (n + 3)).toNat).toNat

end

end A095367.P13295266467681247837

namespace A095367

/-- `C(A065475(n+1), A058288(A274585(n+3)))` -/
def P13295266467681247837.Spec : Prop :=
  ∀ n, (P13295266467681247837.a n : ℤ) = A095367 (n + 2)

end A095367

/-! ## A095367.P13560096412740931244

`C(A062399(A062399(n+2)), A133390(2*n+3))`
-/

namespace A095367.P13560096412740931244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A062399 (A062399 (n + 2)).toNat).toNat (A133390 (2 * n + 3)).toNat

end

end A095367.P13560096412740931244

namespace A095367

/-- `C(A062399(A062399(n+2)), A133390(2*n+3))` -/
def P13560096412740931244.Spec : Prop :=
  ∀ n, (P13560096412740931244.a n : ℤ) = A095367 (n + 2)

end A095367

/-!
# A095368: Number of walks of length n between two nodes at distance 3 in the cycle graph C_9.

The programs for A095368, the canonical program `A095368.P13388766058957050969` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095368 has offset 3).

The definition of A095368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095368.P13388766058957050969

`a(n-1)+5*a(n-2)-4*a(n-3)-5*a(n-4)+2*a(n-5)` with `a(0)=1, a(1)=0, a(2)=5, a(3)=1, a(4)=21`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095368

/-- `a(n-1)+5*a(n-2)-4*a(n-3)-5*a(n-4)+2*a(n-5)` -/
def P13388766058957050969.Spec : Prop :=
  ∀ n, P13388766058957050969.a n = A095368 (n + 3)

theorem P13388766058957050969.correct : P13388766058957050969.Spec := by
  intro n
  simp only [A095368, Nat.add_sub_cancel]

end A095368

/-! ## A095368.P13979596865950870434

`ogf((1-x)/(1-x-5x^2+4x^3+5x^4-2x^5))`
-/

namespace A095368.P13979596865950870434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -1, -5, 4, 5, -2] n

end

end A095368.P13979596865950870434

namespace A095368

/-- `ogf((1-x)/(1-x-5x^2+4x^3+5x^4-2x^5))` -/
def P13979596865950870434.Spec : Prop :=
  ∀ n, P13979596865950870434.a n = A095368 (n + 3)

end A095368

/-! ## A095368.P4884556281153079838

`A001045(n+2)-A095364(n+2)`
-/

namespace A095368.P4884556281153079838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 2) - A095364 (n + 2)

end

end A095368.P4884556281153079838

namespace A095368

/-- `A001045(n+2)-A095364(n+2)` -/
def P4884556281153079838.Spec : Prop :=
  ∀ n, P4884556281153079838.a n = A095368 (n + 3)

end A095368

/-! ## A095368.P5453793607083235859

`A095367(n+4)-A095364(n+3)`
-/

namespace A095368.P5453793607083235859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095367 (n + 4) - A095364 (n + 3)

end

end A095368.P5453793607083235859

namespace A095368

/-- `A095367(n+4)-A095364(n+3)` -/
def P5453793607083235859.Spec : Prop :=
  ∀ n, P5453793607083235859.a n = A095368 (n + 3)

end A095368

/-! ## A095368.P6156758493209117249

`Δ[A000975(n+1)]-A095364(n+2)`
-/

namespace A095368.P6156758493209117249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095364 (n + 2)

end

end A095368.P6156758493209117249

namespace A095368

/-- `Δ[A000975(n+1)]-A095364(n+2)` -/
def P6156758493209117249.Spec : Prop :=
  ∀ n, P6156758493209117249.a n = A095368 (n + 3)

end A095368

/-!
# A095369: Number of walks of length n between two nodes at distance 4 in the cycle graph C_9.

The programs for A095369, the canonical program `A095369.P1093168588318581182` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095369 has offset 4).

The definition of A095369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095369.P1093168588318581182

`a(n-1)+5*a(n-2)-4*a(n-3)-5*a(n-4)+2*a(n-5)` with `a(0)=1, a(1)=1, a(2)=6, a(3)=7, a(4)=28`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095369

/-- `a(n-1)+5*a(n-2)-4*a(n-3)-5*a(n-4)+2*a(n-5)` -/
def P1093168588318581182.Spec : Prop :=
  ∀ n, P1093168588318581182.a n = A095369 (n + 4)

theorem P1093168588318581182.correct : P1093168588318581182.Spec := by
  intro n
  simp only [A095369, Nat.add_sub_cancel]

end A095369

/-! ## A095369.P8145202728543163239

`∑[A095368(n+3)]`
-/

namespace A095369.P8145202728543163239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095368 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095369.P8145202728543163239

namespace A095369

/-- `∑[A095368(n+3)]` -/
def P8145202728543163239.Spec : Prop :=
  ∀ n, P8145202728543163239.a n = A095369 (n + 4)

end A095369

/-! ## A095369.P15698312634118584745

`∑[A001045(n+2)-A095364(n+2)]`
-/

namespace A095369.P15698312634118584745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 2) - A095364 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095369.P15698312634118584745

namespace A095369

/-- `∑[A001045(n+2)-A095364(n+2)]` -/
def P15698312634118584745.Spec : Prop :=
  ∀ n, P15698312634118584745.a n = A095369 (n + 4)

end A095369

/-! ## A095369.P10865649811386579774

`∑[A095367(n+4)-A095364(n+3)]`
-/

namespace A095369.P10865649811386579774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095367 (n + 4) - A095364 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095369.P10865649811386579774

namespace A095369

/-- `∑[A095367(n+4)-A095364(n+3)]` -/
def P10865649811386579774.Spec : Prop :=
  ∀ n, P10865649811386579774.a n = A095369 (n + 4)

end A095369

/-! ## A095369.P1070853209792046103

`A095368(n+3)+A095368(n+4)-A095367(n+3)`
-/

namespace A095369.P1070853209792046103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095368 (n + 3) + (A095368 (n + 4) - A095367 (n + 3))

end

end A095369.P1070853209792046103

namespace A095369

/-- `A095368(n+3)+A095368(n+4)-A095367(n+3)` -/
def P1070853209792046103.Spec : Prop :=
  ∀ n, P1070853209792046103.a n = A095369 (n + 4)

end A095369

/-! ## A095369.P17906437303296862839

`ogf(1/(1-x-5x^2+4x^3+5x^4-2x^5))`
-/

namespace A095369.P17906437303296862839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -5, 4, 5, -2] n

end

end A095369.P17906437303296862839

namespace A095369

/-- `ogf(1/(1-x-5x^2+4x^3+5x^4-2x^5))` -/
def P17906437303296862839.Spec : Prop :=
  ∀ n, P17906437303296862839.a n = A095369 (n + 4)

end A095369

/-! ## A095369.P4414676161057614165

`A095368(n+5)-A095367(n+4)`
-/

namespace A095369.P4414676161057614165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095368 (n + 5) - A095367 (n + 4)

end

end A095369.P4414676161057614165

namespace A095369

/-- `A095368(n+5)-A095367(n+4)` -/
def P4414676161057614165.Spec : Prop :=
  ∀ n, P4414676161057614165.a n = A095369 (n + 4)

end A095369

/-! ## A095369.P15742089555600018031

`∑[Δ[A000975(n+1)]-A095364(n+2)]`
-/

namespace A095369.P15742089555600018031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A095364 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095369.P15742089555600018031

namespace A095369

/-- `∑[Δ[A000975(n+1)]-A095364(n+2)]` -/
def P15742089555600018031.Spec : Prop :=
  ∀ n, P15742089555600018031.a n = A095369 (n + 4)

end A095369

/-!
# A095370: Number of distinct prime factors of the repunit (-1 + 10^n)/9.

The programs for A095370, there is no canonical definition to state claims against.
-/

/-! ## A095370.P5013769764123914121

`A102347(n+1)-A010892(n)²`
-/

namespace A095370.P5013769764123914121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (n + 1) - A010892 n ^ 2

end

end A095370.P5013769764123914121

/-! ## A095370.P605743123015375916

`A102347(n+1)-∑[A057078(n)]`
-/

namespace A095370.P605743123015375916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095370.P605743123015375916

/-! ## A095370.P8236303128661285410

`A102347(n+1)-char[A032766(n)]`
-/

namespace A095370.P8236303128661285410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095370.P8236303128661285410

/-! ## A095370.P9695587618523395382

`A102347(n+1)-A011655(n+1)`
-/

namespace A095370.P9695587618523395382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (n + 1) - A011655 (n + 1)

end

end A095370.P9695587618523395382

/-! ## A095370.P14476007895099561140

`A102347(n+1)-A008747(n)%2`
-/

namespace A095370.P14476007895099561140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (n + 1) - Int.tmod (A008747 n) 2

end

end A095370.P14476007895099561140

/-! ## A095370.P13677128265505852850

`A102347(n+1)-A002061(n)%3`
-/

namespace A095370.P13677128265505852850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (n + 1) - Int.tmod (A002061 n) 3

end

end A095370.P13677128265505852850

/-! ## A095370.P11360536688989217848

`A102347(n+1)+Δ[A002264(n)]-1`
-/

namespace A095370.P11360536688989217848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (n + 1) + (f1 (n + 1) - f1 n - 1)

end

end A095370.P11360536688989217848

/-! ## A095370.P12736311834923546265

`A102347(n+1)+Δ[A004773(n)]-2`
-/

namespace A095370.P12736311834923546265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (n + 1) + (f1 (n + 1) - f1 n - 2)

end

end A095370.P12736311834923546265

/-! ## A095370.P3677288035259168074

`A102347(n+1)-A059841(A004523(n))`
-/

namespace A095370.P3677288035259168074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (n + 1) - A059841 (A004523 n).toNat

end

end A095370.P3677288035259168074

/-! ## A095370.P14179436419988458545

`A102347(n+1)-A282343(Δ[A004773(n)])`
-/

namespace A095370.P14179436419988458545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (n + 1) - A282343 (f1 (n + 1) - f1 n).toNat

end

end A095370.P14179436419988458545

/-! ## A095370.P17652027887099389887

`A102347(n+1)-A301568(Δ[A002264(n)])`
-/

namespace A095370.P17652027887099389887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (n + 1) - A301568 (f1 (n + 1) - f1 n).toNat

end

end A095370.P17652027887099389887

/-! ## A095370.P16802368597105648840

`A102347(n+1)-A000035(A064989(n+1))`
-/

namespace A095370.P16802368597105648840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (n + 1) - A000035 (A064989 (n + 1)).toNat

end

end A095370.P16802368597105648840

/-!
# A095371: Number of distinct prime factors of record setting repunits (A328899).

The programs for A095371, there is no canonical definition to state claims against.
-/

/-! ## A095371.P17532181886439536897

`record[A095370(n+1)]`
-/

namespace A095371.P17532181886439536897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095371.P17532181886439536897

/-! ## A095371.P15481004925684909646

`record[A102347(2*(n+1))%(n+1)]`
-/

namespace A095371.P15481004925684909646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102347 (2 * (n + 1))) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095371.P15481004925684909646

/-! ## A095371.P17866781126516354014

`A095370(A328899(n+1))`
-/

namespace A095371.P17866781126516354014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095370 (A328899 (n + 1)).toNat

end

end A095371.P17866781126516354014

/-! ## A095371.P2453694870124603529

`record[A102347(n+1)-A014164(n)]`
-/

namespace A095371.P2453694870124603529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (n + 1) - A014164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095371.P2453694870124603529

/-! ## A095371.P1391685290741364191

`record[A102347(n+1)-A039966(n)]`
-/

namespace A095371.P1391685290741364191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (n + 1) - A039966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095371.P1391685290741364191

/-!
# A095372: 1+integers repeating "90" decimal digit pattern.

The programs for A095372, the canonical program `A095372.P8939100890189099505` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095372 has offset 0).

The definition of A095372 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095372.P2276812341486122322

`101*a(n-1)-100*a(n-2)` with `a(0)=1, a(1)=91`
-/

namespace A095372.P2276812341486122322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 91] fun n a =>
  101 * a (n - 1) - 100 * a (n - 2)

end

end A095372.P2276812341486122322

namespace A095372

/-- `101*a(n-1)-100*a(n-2)` -/
def P2276812341486122322.Spec : Prop :=
  ∀ n, P2276812341486122322.a n = A095372 n

end A095372

/-! ## A095372.P8939100890189099505

`(10^(2*n+1)+1)/11`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095372

/-- `(10^(2*n+1)+1)/11` -/
def P8939100890189099505.Spec : Prop :=
  ∀ n, P8939100890189099505.a n = (A095372 n : ℚ)

end A095372

/-! ## A095372.P11358165150312284000

`record[∑[(-10)^n]]`
-/

namespace A095372.P11358165150312284000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-10) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095372.P11358165150312284000

namespace A095372

/-- `record[∑[(-10)^n]]` -/
def P11358165150312284000.Spec : Prop :=
  ∀ n, P11358165150312284000.a n = A095372 n

end A095372

/-! ## A095372.P3795444040569421808

`10*10*a(n-1)-9` with `a(0)=1`
-/

namespace A095372.P3795444040569421808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * (10 * a (n - 1)) - 9

end

end A095372.P3795444040569421808

namespace A095372

/-- `10*10*a(n-1)-9` -/
def P3795444040569421808.Spec : Prop :=
  ∀ n, P3795444040569421808.a n = A095372 n

end A095372

/-! ## A095372.P11655143246494655591

`A014992(Δ[n²])`
-/

namespace A095372.P11655143246494655591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014992 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A095372.P11655143246494655591

namespace A095372

/-- `A014992(Δ[n²])` -/
def P11655143246494655591.Spec : Prop :=
  ∀ n, P11655143246494655591.a n = A095372 n

end A095372

/-! ## A095372.P9960951723609004523

`A015585(Δ[n²])`
-/

namespace A095372.P9960951723609004523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015585 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A095372.P9960951723609004523

namespace A095372

/-- `A015585(Δ[n²])` -/
def P9960951723609004523.Spec : Prop :=
  ∀ n, P9960951723609004523.a n = A095372 n

end A095372

/-! ## A095372.P11907599137388175727

`abs(A014992(2*n+1))`
-/

namespace A095372.P11907599137388175727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014992 (2 * n + 1)|

end

end A095372.P11907599137388175727

namespace A095372

/-- `abs(A014992(2*n+1))` -/
def P11907599137388175727.Spec : Prop :=
  ∀ n, P11907599137388175727.a n = A095372 n

end A095372

/-! ## A095372.P4597612032450351945

`A063945(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A095372.P4597612032450351945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A063945 (2 * n) + a (n - 1)

end

end A095372.P4597612032450351945

namespace A095372

/-- `A063945(2*n)+a(n-1)` -/
def P4597612032450351945.Spec : Prop :=
  ∀ n, P4597612032450351945.a n = A095372 n

end A095372

/-! ## A095372.P6182461247258153354

`∑[A063945(n+1)*A178501(n)]+1`
-/

namespace A095372.P6182461247258153354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063945 (n + 1) * A178501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095372.P6182461247258153354

namespace A095372

/-- `∑[A063945(n+1)*A178501(n)]+1` -/
def P6182461247258153354.Spec : Prop :=
  ∀ n, P6182461247258153354.a n = A095372 n

end A095372

/-! ## A095372.P7557844818443682983

`∑[A178501(n+1)²-A178501(2*n)]`
-/

namespace A095372.P7557844818443682983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (n + 1) ^ 2 - A178501 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095372.P7557844818443682983

namespace A095372

/-- `∑[A178501(n+1)²-A178501(2*n)]` -/
def P7557844818443682983.Spec : Prop :=
  ∀ n, P7557844818443682983.a n = A095372 n

end A095372

/-!
# A095373: Integers k such that A095372(k) = 1 + 90*(-1+100^k)/99 is prime.

The programs for A095373, there is no canonical definition to state claims against.
-/

/-! ## A095373.P16665035670539210348

`A054416(n+1)-char[2]`
-/

namespace A095373.P16665035670539210348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054416 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A095373.P16665035670539210348

/-! ## A095373.P5151810797760658330

`floor(A001562(n+1)/2)-char[2]`
-/

namespace A095373.P5151810797760658330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001562 (n + 1) : ℚ) / 2⌋ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A095373.P5151810797760658330

/-! ## A095373.P8819829462140804855

`xor(A054416(n+1), A083927(n))`
-/

namespace A095373.P8819829462140804855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054416 (n + 1)) (A083927 n)

end

end A095373.P8819829462140804855

/-! ## A095373.P16282952175821958376

`xor(A054416(n+1), A185012(n))`
-/

namespace A095373.P16282952175821958376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054416 (n + 1)) (A185012 n)

end

end A095373.P16282952175821958376

/-! ## A095373.P5446335697134309060

`A174257(A001562(n+1))-char[2]`
-/

namespace A095373.P5446335697134309060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174257 (A001562 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A095373.P5446335697134309060

/-!
# A095374: One less than the number of divisors of 2*n + 1.

The programs for A095374, the canonical program `A095374.P12292882618606204966` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095374 has offset 1).

The definition of A095374 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099774, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A095374.P14512694472831106177

`A000005(2*(n+1)+1)-1`
-/

namespace A095374.P14512694472831106177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1) + 1) - 1

end

end A095374.P14512694472831106177

namespace A095374

/-- `A000005(2*(n+1)+1)-1` -/
def P14512694472831106177.Spec : Prop :=
  ∀ n, P14512694472831106177.a n = A095374 (n + 1)

end A095374

/-! ## A095374.P12292882618606204966

`A099774(n+2)-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A095374

/-- `A099774(n+2)-1` -/
def P12292882618606204966.Spec : Prop :=
  ∀ n, P12292882618606204966.a n = A095374 (n + 1)

theorem P12292882618606204966.correct : P12292882618606204966.Spec := by
  intro n
  simp only [A095374, Nat.add_sub_cancel]

end A095374

/-! ## A095374.P18414800683271754968

`A023645(2*(n+1)+1)`
-/

namespace A095374.P18414800683271754968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (2 * (n + 1) + 1)

end

end A095374.P18414800683271754968

namespace A095374

/-- `A023645(2*(n+1)+1)` -/
def P18414800683271754968.Spec : Prop :=
  ∀ n, P18414800683271754968.a n = A095374 (n + 1)

end A095374

/-! ## A095374.P9146141879160945041

`A161116(n)+1`
-/

namespace A095374.P9146141879160945041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161116 n + 1

end

end A095374.P9146141879160945041

namespace A095374

/-- `A161116(n)+1` -/
def P9146141879160945041.Spec : Prop :=
  ∀ n, P9146141879160945041.a n = A095374 (n + 1)

end A095374

/-! ## A095374.P8465793644045855398

`A211261(2*n+3)`
-/

namespace A095374.P8465793644045855398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211261 (2 * n + 3)

end

end A095374.P8465793644045855398

namespace A095374

/-- `A211261(2*n+3)` -/
def P8465793644045855398.Spec : Prop :=
  ∀ n, P8465793644045855398.a n = A095374 (n + 1)

end A095374

/-! ## A095374.P16008518887524965560

`A211270(2*n+3)`
-/

namespace A095374.P16008518887524965560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211270 (2 * n + 3)

end

end A095374.P16008518887524965560

namespace A095374

/-- `A211270(2*n+3)` -/
def P16008518887524965560.Spec : Prop :=
  ∀ n, P16008518887524965560.a n = A095374 (n + 1)

end A095374

/-! ## A095374.P8382281870702755972

`A325937(2*n+3)`
-/

namespace A095374.P8382281870702755972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (2 * n + 3)

end

end A095374.P8382281870702755972

namespace A095374

/-- `A325937(2*n+3)` -/
def P8382281870702755972.Spec : Prop :=
  ∀ n, P8382281870702755972.a n = A095374 (n + 1)

end A095374

/-! ## A095374.P11650790035543400729

`A338117(2*n+3)`
-/

namespace A095374.P11650790035543400729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (2 * n + 3)

end

end A095374.P11650790035543400729

namespace A095374

/-- `A338117(2*n+3)` -/
def P11650790035543400729.Spec : Prop :=
  ∀ n, P11650790035543400729.a n = A095374 (n + 1)

end A095374

/-! ## A095374.P4566651910742642449

`A360118(2*n+3)`
-/

namespace A095374.P4566651910742642449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360118 (2 * n + 3)

end

end A095374.P4566651910742642449

namespace A095374

/-- `A360118(2*n+3)` -/
def P4566651910742642449.Spec : Prop :=
  ∀ n, P4566651910742642449.a n = A095374 (n + 1)

end A095374

/-! ## A095374.P11855383838344612653

`1-∑[A066518(n+1)]`
-/

namespace A095374.P11855383838344612653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095374.P11855383838344612653

namespace A095374

/-- `1-∑[A066518(n+1)]` -/
def P11855383838344612653.Spec : Prop :=
  ∀ n, P11855383838344612653.a n = A095374 (n + 1)

end A095374

/-! ## A095374.P11764150267702650495

`Δ[A263085(n+1)]-1`
-/

namespace A095374.P11764150267702650495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A095374.P11764150267702650495

namespace A095374

/-- `Δ[A263085(n+1)]-1` -/
def P11764150267702650495.Spec : Prop :=
  ∀ n, P11764150267702650495.a n = A095374 (n + 1)

end A095374

/-! ## A095374.P1718436485451989500

`A060764(2*n+3)-1`
-/

namespace A095374.P1718436485451989500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060764 (2 * n + 3) - 1

end

end A095374.P1718436485451989500

namespace A095374

/-- `A060764(2*n+3)-1` -/
def P1718436485451989500.Spec : Prop :=
  ∀ n, P1718436485451989500.a n = A095374 (n + 1)

end A095374

/-! ## A095374.P10655669180420821105

`A322019(2*n+3)-1`
-/

namespace A095374.P10655669180420821105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322019 (2 * n + 3) - 1

end

end A095374.P10655669180420821105

namespace A095374

/-- `A322019(2*n+3)-1` -/
def P10655669180420821105.Spec : Prop :=
  ∀ n, P10655669180420821105.a n = A095374 (n + 1)

end A095374

/-! ## A095374.P7567036004389059107

`abs(1-A000005(n+3+n))`
-/

namespace A095374.P7567036004389059107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000005 (n + 3 + n)|

end

end A095374.P7567036004389059107

namespace A095374

/-- `abs(1-A000005(n+3+n))` -/
def P7567036004389059107.Spec : Prop :=
  ∀ n, P7567036004389059107.a n = A095374 (n + 1)

end A095374

/-! ## A095374.P12779461579719081230

`∑[Δ[A000005(4*n+2)]/2]`
-/

namespace A095374.P12779461579719081230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095374.P12779461579719081230

namespace A095374

/-- `∑[Δ[A000005(4*n+2)]/2]` -/
def P12779461579719081230.Spec : Prop :=
  ∀ n, P12779461579719081230.a n = (A095374 (n + 1) : ℚ)

end A095374

/-! ## A095374.P16874678840690650052

`A000005(Δ[(n+1)²])+ϕ-ϕ²`
-/

namespace A095374.P16874678840690650052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ) + Real.goldenRatio - Real.goldenRatio ^ 2

end

end A095374.P16874678840690650052

namespace A095374

/-- `A000005(Δ[(n+1)²])+ϕ-ϕ²` -/
def P16874678840690650052.Spec : Prop :=
  ∀ n, P16874678840690650052.a n = (A095374 (n + 1) : ℝ)

end A095374

/-! ## A095374.P3024490941862018015

`Δ[A000005(n+1+n)]+a(n-1)` with `a(0)=1`
-/

namespace A095374.P3024490941862018015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A095374.P3024490941862018015

namespace A095374

/-- `Δ[A000005(n+1+n)]+a(n-1)` -/
def P3024490941862018015.Spec : Prop :=
  ∀ n, P3024490941862018015.a n = A095374 (n + 1)

end A095374

/-! ## A095374.P9547323675204557755

`A076984(A278223(n+2))`
-/

namespace A095374.P9547323675204557755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (A278223 (n + 2)).toNat

end

end A095374.P9547323675204557755

namespace A095374

/-- `A076984(A278223(n+2))` -/
def P9547323675204557755.Spec : Prop :=
  ∀ n, P9547323675204557755.a n = A095374 (n + 1)

end A095374

/-! ## A095374.P3043825018314284744

`A006586(n+2)-A077025(n+1)`
-/

namespace A095374.P3043825018314284744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006586 (n + 2) - A077025 (n + 1)

end

end A095374.P3043825018314284744

namespace A095374

/-- `A006586(n+2)-A077025(n+1)` -/
def P3043825018314284744.Spec : Prop :=
  ∀ n, P3043825018314284744.a n = A095374 (n + 1)

theorem P3043825018314284744.correct : P3043825018314284744.Spec := by
  intro n
  simp only [A095374, Nat.add_sub_cancel, A095374.P3043825018314284744.a, A095374.P12292882618606204966.a, A006586, A006586.P15091628275662653035.a, A077025, A077025.P7516905094900168968.a, A099774, A099774.P14550011835521758030.f2, A099774.P14550011835521758030.f1, A099774.P14550011835521758030.a, A077024, A077024.P14735793363298763956.a, A056548, A056548.P9433201203860911017.a, A347286, A347286.P5792309838125408870.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A350102, A350102.P3723337908943120869.f2, A350102.P3723337908943120869.f1, A350102.P3723337908943120869.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095374

/-! ## A095374.P7772340666338608013

`A007318(C(A000005(2*n+3), 2)+1)`
-/

namespace A095374.P7772340666338608013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (A000005 (2 * n + 3)).toNat 2 + 1)

end

end A095374.P7772340666338608013

namespace A095374

/-- `A007318(C(A000005(2*n+3), 2)+1)` -/
def P7772340666338608013.Spec : Prop :=
  ∀ n, P7772340666338608013.a n = A095374 (n + 1)

end A095374

/-!
# A095375: Total number of 1's in the binary expansions of the first n primes: summatory A014499.

The programs for A095375, the canonical program `A095375.P18308947654530524366` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095375 has offset 1).

The definition of A095375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095375.P18308947654530524366

`∑[A014499(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A095375

/-- `∑[A014499(n+1)]` -/
def P18308947654530524366.Spec : Prop :=
  ∀ n, P18308947654530524366.a n = A095375 (n + 1)

theorem P18308947654530524366.correct : P18308947654530524366.Spec := by
  intro n
  simp only [A095375, Nat.add_sub_cancel]

end A095375

/-! ## A095375.P1780705488070205422

`A328659(n+1)-A345867(n+1)`
-/

namespace A095375.P1780705488070205422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328659 (n + 1) - A345867 (n + 1)

end

end A095375.P1780705488070205422

namespace A095375

/-- `A328659(n+1)-A345867(n+1)` -/
def P1780705488070205422.Spec : Prop :=
  ∀ n, P1780705488070205422.a n = A095375 (n + 1)

theorem P1780705488070205422.correct : P1780705488070205422.Spec := by
  intro n
  simp only [A095375, Nat.add_sub_cancel, A095375.P1780705488070205422.a, A095375.P18308947654530524366.f1, A095375.P18308947654530524366.a, A014499, A014499.P9770580101482900462.a, A328659, A328659.P9026826888422614636.a, A345867, A345867.P3810117440269639629.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A035100, A035100.P16711503485959756516.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095375

/-! ## A095375.P10387101196446022189

`∑[A035100(n+1)-A035103(n+1)]`
-/

namespace A095375.P10387101196446022189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (n + 1) - A035103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095375.P10387101196446022189

namespace A095375

/-- `∑[A035100(n+1)-A035103(n+1)]` -/
def P10387101196446022189.Spec : Prop :=
  ∀ n, P10387101196446022189.a n = A095375 (n + 1)

theorem P10387101196446022189.correct : P10387101196446022189.Spec := by
  intro n
  simp only [A095375, Nat.add_sub_cancel, A095375.P10387101196446022189.f1, A095375.P10387101196446022189.a, A095375.P18308947654530524366.f1, A095375.P18308947654530524366.a, A014499, A014499.P9770580101482900462.a, A035100, A035100.P16711503485959756516.a, A035103, A035103.P1324719609663575418.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095375

/-! ## A095375.P10658753608449892093

`∑[A000040(n+1)-A080085(n+1)]`
-/

namespace A095375.P10658753608449892093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A080085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095375.P10658753608449892093

namespace A095375

/-- `∑[A000040(n+1)-A080085(n+1)]` -/
def P10658753608449892093.Spec : Prop :=
  ∀ n, P10658753608449892093.a n = A095375 (n + 1)

theorem P10658753608449892093.correct : P10658753608449892093.Spec := by
  intro n
  simp only [A095375, Nat.add_sub_cancel, A095375.P10658753608449892093.f1, A095375.P10658753608449892093.a, A095375.P18308947654530524366.f1, A095375.P18308947654530524366.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014499, A014499.P9770580101482900462.a, A080085, A080085.P4216384539738297619.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095375

/-! ## A095375.P4623274924971176865

`a(n-1)+A328659(n+1)-(A328659(n)+A035103(n+1))` with `a(0)=1`
-/

namespace A095375.P4623274924971176865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A328659 (n + 1) - (A328659 n + A035103 (n + 1)))

end

end A095375.P4623274924971176865

namespace A095375

/-- `a(n-1)+A328659(n+1)-(A328659(n)+A035103(n+1))` -/
def P4623274924971176865.Spec : Prop :=
  ∀ n, P4623274924971176865.a n = A095375 (n + 1)

end A095375

/-! ## A095375.P17826624967499306393

`∑[A035531(A000040(n+1))]`
-/

namespace A095375.P17826624967499306393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035531 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095375.P17826624967499306393

namespace A095375

/-- `∑[A035531(A000040(n+1))]` -/
def P17826624967499306393.Spec : Prop :=
  ∀ n, P17826624967499306393.a n = A095375 (n + 1)

end A095375

/-! ## A095375.P17249867788016465141

`∑[A000120(A057023(n+1))]+n`
-/

namespace A095375.P17249867788016465141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A057023 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A095375.P17249867788016465141

namespace A095375

/-- `∑[A000120(A057023(n+1))]+n` -/
def P17249867788016465141.Spec : Prop :=
  ∀ n, P17249867788016465141.a n = A095375 (n + 1)

end A095375

/-! ## A095375.P8185629525017777789

`∑[A000120(A130290(n+1))]+n`
-/

namespace A095375.P8185629525017777789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A130290 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A095375.P8185629525017777789

namespace A095375

/-- `∑[A000120(A130290(n+1))]+n` -/
def P8185629525017777789.Spec : Prop :=
  ∀ n, P8185629525017777789.a n = A095375 (n + 1)

end A095375

/-! ## A095375.P11696402161762889776

`∑[A081743(A006093(n+1))]`
-/

namespace A095375.P11696402161762889776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081743 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095375.P11696402161762889776

namespace A095375

/-- `∑[A081743(A006093(n+1))]` -/
def P11696402161762889776.Spec : Prop :=
  ∀ n, P11696402161762889776.a n = A095375 (n + 1)

end A095375

/-! ## A095375.P7772003239484004766

`∑[A000120(A008578(n+2))]`
-/

namespace A095375.P7772003239484004766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095375.P7772003239484004766

namespace A095375

/-- `∑[A000120(A008578(n+2))]` -/
def P7772003239484004766.Spec : Prop :=
  ∀ n, P7772003239484004766.a n = A095375 (n + 1)

end A095375

/-! ## A095375.P4493147133251916896

`∑[A000120(record[A006530(n+2)])]`
-/

namespace A095375.P4493147133251916896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095375.P4493147133251916896

namespace A095375

/-- `∑[A000120(record[A006530(n+2)])]` -/
def P4493147133251916896.Spec : Prop :=
  ∀ n, P4493147133251916896.a n = A095375 (n + 1)

end A095375

/-! ## A095375.P16613506411547951218

`∑[A000120(record[A014963(n+2)])]`
-/

namespace A095375.P16613506411547951218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095375.P16613506411547951218

namespace A095375

/-- `∑[A000120(record[A014963(n+2)])]` -/
def P16613506411547951218.Spec : Prop :=
  ∀ n, P16613506411547951218.a n = A095375 (n + 1)

end A095375

/-! ## A095375.P2604980079727111518

`∑[A000120(p?[A064216(n+1)])]`
-/

namespace A095375.P2604980079727111518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095375.P2604980079727111518

namespace A095375

/-- `∑[A000120(p?[A064216(n+1)])]` -/
def P2604980079727111518.Spec : Prop :=
  ∀ n, P2604980079727111518.a n = A095375 (n + 1)

end A095375

/-! ## A095375.P6506136936804258341

`∑[A000120(A040976(n+1)+2)]`
-/

namespace A095375.P6506136936804258341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A040976 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095375.P6506136936804258341

namespace A095375

/-- `∑[A000120(A040976(n+1)+2)]` -/
def P6506136936804258341.Spec : Prop :=
  ∀ n, P6506136936804258341.a n = A095375 (n + 1)

theorem P6506136936804258341.correct : P6506136936804258341.Spec := by
  intro n
  simp only [A095375, Nat.add_sub_cancel, A095375.P6506136936804258341.f1, A095375.P6506136936804258341.a, A095375.P18308947654530524366.f1, A095375.P18308947654530524366.a, A000120, A000120.P2816527436160941581.a, A014499, A014499.P9770580101482900462.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095375

/-! ## A095375.P4093580102356661259

`∑[A000120(A100484(n+1)/2)]`
-/

namespace A095375.P4093580102356661259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095375.P4093580102356661259

namespace A095375

/-- `∑[A000120(A100484(n+1)/2)]` -/
def P4093580102356661259.Spec : Prop :=
  ∀ n, P4093580102356661259.a n = A095375 (n + 1)

end A095375

/-! ## A095375.P17277068239363749925

`∑[A000120(A001747(n+2)/2)]`
-/

namespace A095375.P17277068239363749925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095375.P17277068239363749925

namespace A095375

/-- `∑[A000120(A001747(n+2)/2)]` -/
def P17277068239363749925.Spec : Prop :=
  ∀ n, P17277068239363749925.a n = A095375 (n + 1)

end A095375

/-! ## A095375.P2021081379612881951

`∑[A000120(record[A000010(n+1)+1])]`
-/

namespace A095375.P2021081379612881951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095375.P2021081379612881951

namespace A095375

/-- `∑[A000120(record[A000010(n+1)+1])]` -/
def P2021081379612881951.Spec : Prop :=
  ∀ n, P2021081379612881951.a n = A095375 (n + 1)

end A095375

/-! ## A095375.P11527057210749179048

`∑[A000120(eq[1, A054024(n+1)]+1)]`
-/

namespace A095375.P11527057210749179048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095375.P11527057210749179048

namespace A095375

/-- `∑[A000120(eq[1, A054024(n+1)]+1)]` -/
def P11527057210749179048.Spec : Prop :=
  ∀ n, P11527057210749179048.a n = A095375 (n + 1)

end A095375

/-! ## A095375.P17014308198676201889

`∑[A000120(A294994(A303595(n+1)))]`
-/

namespace A095375.P17014308198676201889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A294994 (A303595 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095375.P17014308198676201889

namespace A095375

/-- `∑[A000120(A294994(A303595(n+1)))]` -/
def P17014308198676201889.Spec : Prop :=
  ∀ n, P17014308198676201889.a n = A095375 (n + 1)

end A095375

/-! ## A095375.P10059961062762726639

`∑[A000120(A088146(n+1))]`
-/

namespace A095375.P10059961062762726639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A088146 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095375.P10059961062762726639

namespace A095375

/-- `∑[A000120(A088146(n+1))]` -/
def P10059961062762726639.Spec : Prop :=
  ∀ n, P10059961062762726639.a n = A095375 (n + 1)

end A095375

/-!
# A095377: Values of k such that the total number of 1's in the binary expansions of the first k primes is a multiple of k.

The programs for A095377, there is no canonical definition to state claims against.
-/

/-! ## A095377.P2538710188378888916

`A268236(A008151(n))`
-/

namespace A095377.P2538710188378888916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268236 (A008151 n).toNat

end

end A095377.P2538710188378888916

/-! ## A095377.P8816517227756408043

`A268236(A305157(n)%A331755(n+1))`
-/

namespace A095377.P8816517227756408043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268236 (Int.tmod (A305157 n) (A331755 (n + 1))).toNat

end

end A095377.P8816517227756408043

/-!
# A095379: Primes of the form 1 + A094125(k) = 1 + 3*2^k + 2*3^k.

The programs for A095379, there is no canonical definition to state claims against.
-/

/-! ## A095379.P2956666737411564907

`1+A094125(A095378(n+1))`
-/

namespace A095379.P2956666737411564907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A094125 (A095378 (n + 1)).toNat

end

end A095379.P2956666737411564907

/-! ## A095379.P15369026877996463918

`p?[6*(2^n+3^n)+1]`
-/

namespace A095379.P15369026877996463918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (2 ^ n + 3 ^ n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095379.P15369026877996463918

/-! ## A095379.P845581761651839374

`p?[A094125(n)+1]/gcd(n, n+1)`
-/

namespace A095379.P845581761651839374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094125 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A095379.P845581761651839374

/-! ## A095379.P17306839387451620475

`A000027(p?[A094125(n)+1])`
-/

namespace A095379.P17306839387451620475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094125 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095379.P17306839387451620475

/-!
# A095380: Number of integers not exceeding 2^n that are impossible as sum-of-divisors of other numbers.

The programs for A095380, there is no canonical definition to state claims against.
-/

/-! ## A095380.P265440717456129633

`A202276(2^(n+1))`
-/

namespace A095380.P265440717456129633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202276 (2 ^ (n + 1))

end

end A095380.P265440717456129633

/-! ## A095380.P5004869053119682144

`and(-1, A202276(A034008(n+3)))`
-/

namespace A095380.P5004869053119682144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A202276 (A034008 (n + 3)).toNat)

end

end A095380.P5004869053119682144

/-! ## A095380.P10007996857155343347

`A202276(A046055(n+1))+A000007(n)`
-/

namespace A095380.P10007996857155343347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202276 (A046055 (n + 1)).toNat + A000007 n

end

end A095380.P10007996857155343347

/-! ## A095380.P14118851451474935833

`A202276(A151821(n+1))+A000007(n)`
-/

namespace A095380.P14118851451474935833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202276 (A151821 (n + 1)).toNat + A000007 n

end

end A095380.P14118851451474935833

/-! ## A095380.P16375008365914294728

`A202276(A011782(n+2))+A185228(n)`
-/

namespace A095380.P16375008365914294728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202276 (A011782 (n + 2)).toNat + A185228 n

end

end A095380.P16375008365914294728

/-!
# A095381: Initial values for 3x+1 trajectories in which the largest term arising in the iteration is a power of 2.

The programs for A095381, there is no canonical definition to state claims against.
-/

/-! ## A095381.P8778694426892183764

`lt[A087976(n+1), 2]+1`
-/

namespace A095381.P8778694426892183764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087976 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A095381.P8778694426892183764

/-! ## A095381.P4499366765998662715

`record[(n+1)*A209229(A025586(n+1))]`
-/

namespace A095381.P4499366765998662715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A209229 (A025586 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095381.P4499366765998662715

/-! ## A095381.P9365622413750742281

`eq[1, A033879(A025586(n+1))]+1`
-/

namespace A095381.P9365622413750742281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A025586 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095381.P9365622413750742281

/-! ## A095381.P15407092237549308387

`lt[A002487(A056959(n+1)), 2]+1`
-/

namespace A095381.P15407092237549308387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A056959 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A095381.P15407092237549308387

/-! ## A095381.P650012791580335204

`eq[1, A000120(A151798(n)*A347264(n+1))]+1`
-/

namespace A095381.P650012791580335204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A151798 n * A347264 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095381.P650012791580335204

/-!
# A095382: Exponents of power of 2 of the largest terms arising in the 3x+1 iterations started with terms of A095381.

The programs for A095382, there is no canonical definition to state claims against.
-/

/-! ## A095382.P10164788190817817972

`A135282(A095381(n+1))`
-/

namespace A095382.P10164788190817817972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135282 (A095381 (n + 1)).toNat

end

end A095382.P10164788190817817972

/-! ## A095382.P3614861363072462102

`A222641(A095381(n+1)-char[5])`
-/

namespace A095382.P3614861363072462102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222641 (A095381 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A095382.P3614861363072462102

/-! ## A095382.P8007924417319770809

`A222641(or(char[2], A095381(n+1)))`
-/

namespace A095382.P8007924417319770809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222641 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A095381 (n + 1))).toNat

end

end A095382.P8007924417319770809

/-! ## A095382.P5384494662984029534

`A222641(A095381(n+1))%A008884(n)`
-/

namespace A095382.P5384494662984029534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222641 (A095381 (n + 1)).toNat) (A008884 n)

end

end A095382.P5384494662984029534

/-! ## A095382.P1640798260661010626

`∑{d}[A222641(A095381(n+1)), A000010(#)]`
-/

namespace A095382.P1640798260661010626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222641 (A095381 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A095382.P1640798260661010626

/-!
# A095383: Number of different initial values for 3x+1 trajectories started with initial values not exceeding 2^n and in which the peak values are larger than 2^n.

The programs for A095383, there is no canonical definition to state claims against.
-/

/-! ## A095383.P1034478377744087371

`∑[2^n-Δ[A095384(n)]]`
-/

namespace A095383.P1034478377744087371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095384 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095383.P1034478377744087371

/-! ## A095383.P3365665721624669523

`2^(n+1)-A095384(n+1)`
-/

namespace A095383.P3365665721624669523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A095384 (n + 1)

end

end A095383.P3365665721624669523

/-!
# A095384: Number of different initial values for 3x+1 trajectories started with initial values not exceeding 2^n and in which the peak values are also not larger than 2^n.

The programs for A095384, there is no canonical definition to state claims against.
-/

/-! ## A095384.P16519614411047290689

`2^n-A095383(A028310(n))`
-/

namespace A095384.P16519614411047290689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A095383 (A028310 n).toNat

end

end A095384.P16519614411047290689

/-! ## A095384.P15095766558568059502

`A000079(n)-A095383(A123108(2*n))`
-/

namespace A095384.P15095766558568059502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A095383 (A123108 (2 * n)).toNat

end

end A095384.P15095766558568059502

/-!
# A095385: Numbers k with property that k is a peak value in 3x+1 trajectory such that both k+1 and k-1 are prime numbers.

The programs for A095385, there is no canonical definition to state claims against.
-/

/-! ## A095385.P5080644039054945314

`∩[A014574(n+1), A033496(n+1)]`
-/

namespace A095385.P5080644039054945314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095385.P5080644039054945314

/-! ## A095385.P10673581860114736548

`∩[A033496(n+1), A056853(n+1)]`
-/

namespace A095385.P10673581860114736548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095385.P10673581860114736548

/-! ## A095385.P13465663638793477991

`∩[A014574(n+1), A222562(n+1)]`
-/

namespace A095385.P13465663638793477991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095385.P13465663638793477991

/-! ## A095385.P17539349060281863416

`∩[A033496(n+1), A242040(n+1)]`
-/

namespace A095385.P17539349060281863416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095385.P17539349060281863416

/-! ## A095385.P5172025809865712703

`∩[A056853(n+1), A222562(n+1)]`
-/

namespace A095385.P5172025809865712703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095385.P5172025809865712703

/-!
# A095386: Largest prime factor of peak values of 3x+1 trajectory started at n.

The programs for A095386, there is no canonical definition to state claims against.
-/

/-! ## A095386.P10884611587089232218

`A006530(A025586(n+2))`
-/

namespace A095386.P10884611587089232218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A025586 (n + 2)).toNat

end

end A095386.P10884611587089232218

/-! ## A095386.P9164908223118800953

`A006530(A056959(n+2))`
-/

namespace A095386.P9164908223118800953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A056959 (n + 2)).toNat

end

end A095386.P9164908223118800953

/-! ## A095386.P4252654572653130361

`A006530(A270570(Δ[A014209(n)]))`
-/

namespace A095386.P4252654572653130361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A270570 (f1 (n + 1) - f1 n).toNat).toNat

end

end A095386.P4252654572653130361

/-! ## A095386.P14328760175643152607

`A006530(A270570(Δ[A028387(n)]))`
-/

namespace A095386.P14328760175643152607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A270570 (f1 (n + 1) - f1 n).toNat).toNat

end

end A095386.P14328760175643152607

/-! ## A095386.P16963015976610615107

`A006530(A270570(Δ[A028552(n)]))`
-/

namespace A095386.P16963015976610615107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A270570 (f1 (n + 1) - f1 n).toNat).toNat

end

end A095386.P16963015976610615107

/-! ## A095386.P17413929077344401179

`A006530(A087251(A328314(n+2)))`
-/

namespace A095386.P17413929077344401179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087251 (A328314 (n + 2)).toNat).toNat

end

end A095386.P17413929077344401179

/-! ## A095386.P15827720254742207139

`A006530(A270570(2*(n+1))+Δ[A270570(2*(n+1))])`
-/

namespace A095386.P15827720254742207139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270570 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A270570 (2 * (n + 1)) + (f1 (n + 1) - f1 n)).toNat

end

end A095386.P15827720254742207139

/-! ## A095386.P1228163260251530008

`A006530(A220237(A186701(n+2)))`
-/

namespace A095386.P1228163260251530008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A220237 (A186701 (n + 2)).toNat).toNat

end

end A095386.P1228163260251530008

/-!
# A095387: Initial values for 3x+1 trajectories of which the largest term is 9232.

The programs for A095387, there is no canonical definition to state claims against.
-/

/-! ## A095387.P17400777261522610396

`eq[13, A328314(n+1)]+1`
-/

namespace A095387.P17400777261522610396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328314 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095387.P17400777261522610396

/-! ## A095387.P7009650709128173073

`eq[13, A328314(A028310(n))]`
-/

namespace A095387.P7009650709128173073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328314 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095387.P7009650709128173073

/-! ## A095387.P10983909263910508294

`A020725(eq[13, A328314(n+1)])`
-/

namespace A095387.P10983909263910508294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095387.P10983909263910508294

/-! ## A095387.P17101430751822970063

`A153152(eq[13, A328314(n+1)])`
-/

namespace A095387.P17101430751822970063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095387.P17101430751822970063

/-! ## A095387.P1019699389639672161

`eq[13, A328314(A233583(n+1))]`
-/

namespace A095387.P1019699389639672161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328314 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095387.P1019699389639672161

/-!
# A095388: Smallest multiple of 2^n whose Collatz (3x+1) trajectory includes at least one larger number.

The programs for A095388, there is no canonical definition to state claims against.
-/

/-! ## A095388.P4143893782186807444

`A168677(A168682(n))*A168680(n+2)`
-/

namespace A095388.P4143893782186807444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168677 (A168682 n).toNat * A168680 (n + 2)

end

end A095388.P4143893782186807444

/-! ## A095388.P13595210358829091907

`A168677(A168682(n))*A168728(n+2)`
-/

namespace A095388.P13595210358829091907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168677 (A168682 n).toNat * A168728 (n + 2)

end

end A095388.P13595210358829091907

/-! ## A095388.P8907704924434124761

`A168677(A168730(n))*A168680(n+2)`
-/

namespace A095388.P8907704924434124761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168677 (A168730 n).toNat * A168680 (n + 2)

end

end A095388.P8907704924434124761

/-!
# A095391: a(n) is the least x such that A094892(x)=n.

The programs for A095391, there is no canonical definition to state claims against.
-/

/-! ## A095391.P11540412358199298681

`A319039(n+15)`
-/

namespace A095391.P11540412358199298681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319039 (n + 15)

end

end A095391.P11540412358199298681

/-!
# A095392: Numbers n such that more than half of the reduced-residue system modulo 210 consists of primes in the following sense: in {210n + R} more than 24 = phi(210)/2 primes occur, i.e., 25-33, 35, 46.

The programs for A095392, there is no canonical definition to state claims against.
-/

/-! ## A095392.P6738738110519508107

`eq[5, A000196(A094892(n))]`
-/

namespace A095392.P6738738110519508107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A094892 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095392.P6738738110519508107

/-! ## A095392.P12050939103764013221

`eq[1, A064459(A140888(n+1))]`
-/

namespace A095392.P12050939103764013221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 (A140888 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095392.P12050939103764013221

/-!
# A095393: Terms n are such that exactly half[=24] of the {210n+r} set is prime. Here r runs through the reduced residue system mod 210 (RRS[210]).

The programs for A095393, there is no canonical definition to state claims against.
-/

/-! ## A095393.P16046302636569673589

`eq[24, A094892(n)]`
-/

namespace A095393.P16046302636569673589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095393.P16046302636569673589

/-!
# A095394: a(n) = Floor[n^((n)/(n+1))], integer part of n^x where x = n/(n+1) < 1.

The programs for A095394, the canonical program `A095394.P13955773227784116464` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095394 has offset 1).

The definition of A095394 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)^((n+1)/(n+2)))` (program `A095394.P13955773227784116464`, by `A095394.P13955773227784116464.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095394.P13955773227784116464

`floor((n+1)^((n+1)/(n+2)))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095394

/-- `floor((n+1)^((n+1)/(n+2)))` -/
def P13955773227784116464.Spec : Prop :=
  ∀ n, P13955773227784116464.a n = A095394 (n + 1)

theorem P13955773227784116464.correct : P13955773227784116464.Spec := by
  intro n
  simp only [A095394, Nat.add_sub_cancel]

end A095394

/-! ## A095394.P2142467938050107238

`floor((n+1)^ratio[n+1])-A095395(n+1)`
-/

namespace A095394.P2142467938050107238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)⌋ - A095395 (n + 1)

end

end A095394.P2142467938050107238

namespace A095394

/-- `floor((n+1)^ratio[n+1])-A095395(n+1)` -/
def P2142467938050107238.Spec : Prop :=
  ∀ n, P2142467938050107238.a n = A095394 (n + 1)

theorem P2142467938050107238.correct : P2142467938050107238.Spec := by
  intro n
  simp only [A095394, Nat.add_sub_cancel, A095394.P2142467938050107238.f1, A095394.P2142467938050107238.a, A095394.P13955773227784116464.a, A095395, A095395.P17751942109539140742.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095394

/-! ## A095394.P12728318368948171390

`A000463(2*n+5)-A111972(A130809(n+3))`
-/

namespace A095394.P12728318368948171390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * n + 5) - A111972 (A130809 (n + 3)).toNat

end

end A095394.P12728318368948171390

namespace A095394

/-- `A000463(2*n+5)-A111972(A130809(n+3))` -/
def P12728318368948171390.Spec : Prop :=
  ∀ n, P12728318368948171390.a n = A095394 (n + 1)

end A095394

/-!
# A095395: a(n) = floor(n^((n+1)/(n))) - floor(n^((n)/(n+1))).

The programs for A095395, the canonical program `A095395.P17751942109539140742` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095395 has offset 1).

The definition of A095395 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)^((n+2)/(n+1)))-floor((n+1)^((n+1)/(n+2)))` (program `A095395.P17751942109539140742`, by `A095395.P17751942109539140742.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095395.P17751942109539140742

`floor((n+1)^((n+2)/(n+1)))-floor((n+1)^((n+1)/(n+2)))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095395

/-- `floor((n+1)^((n+2)/(n+1)))-floor((n+1)^((n+1)/(n+2)))` -/
def P17751942109539140742.Spec : Prop :=
  ∀ n, P17751942109539140742.a n = A095395 (n + 1)

theorem P17751942109539140742.correct : P17751942109539140742.Spec := by
  intro n
  simp only [A095395, Nat.add_sub_cancel]

end A095395

/-! ## A095395.P3761711805279599969

`abs(A269020(n+1)-A057427(n)-floor(root(n+1, ratio[n+1])))`
-/

namespace A095395.P3761711805279599969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A269020 (n + 1) - A057427 n - ⌊(n + 1 : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))⌋|

end

end A095395.P3761711805279599969

namespace A095395

/-- `abs(A269020(n+1)-A057427(n)-floor(root(n+1, ratio[n+1])))` -/
def P3761711805279599969.Spec : Prop :=
  ∀ n, P3761711805279599969.a n = A095395 (n + 1)

end A095395

/-! ## A095395.P8363378292758741971

`abs(A264978(A264978(floor((n+1)*root(n+1, n+1))))-floor(root(n+1, ratio[n+1])))`
-/

namespace A095395.P8363378292758741971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A264978 (A264978 ⌊(n + 1 : ℝ) * (n + 1 : ℝ) ^ (1 / (n + 1 : ℝ))⌋.toNat).toNat - ⌊(n + 1 : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))⌋|

end

end A095395.P8363378292758741971

namespace A095395

/-- `abs(A264978(A264978(floor((n+1)*root(n+1, n+1))))-floor(root(n+1, ratio[n+1])))` -/
def P8363378292758741971.Spec : Prop :=
  ∀ n, P8363378292758741971.a n = A095395 (n + 1)

end A095395

/-!
# A095399: Modified juggler modified further: a[n]=(1-Mod[n,2])*Floor[n^(3/4)]+Mod[n,2]*Floor[n^(4/3)]; original exponents {1/2,3/2} are replaced with {3/4,4/3}.

The programs for A095399, the canonical program `A095399.P13787110321758167513` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095399 has offset 1).

The definition of A095399 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1-(n+1)%2)*floor((n+1)^(3/4))+(n+1)%2*floor((n+1)^(4/3))` (program `A095399.P13787110321758167513`, by `A095399.P13787110321758167513.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095399.P13787110321758167513

`(1-(n+1)%2)*floor((n+1)^(3/4))+(n+1)%2*floor((n+1)^(4/3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095399

/-- `(1-(n+1)%2)*floor((n+1)^(3/4))+(n+1)%2*floor((n+1)^(4/3))` -/
def P13787110321758167513.Spec : Prop :=
  ∀ n, P13787110321758167513.a n = A095399 (n + 1)

theorem P13787110321758167513.correct : P13787110321758167513.Spec := by
  intro n
  simp only [A095399, Nat.add_sub_cancel]

end A095399

