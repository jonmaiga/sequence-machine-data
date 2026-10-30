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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A186100: Expansion of 2 * a(q^2)^2 - a(q)^2 in powers of q where a() is a cubic AGM theta function.

The programs for A186100, there is no canonical definition to state claims against.
-/

/-! ## A186100.P15938075627893150081

`2*A008653(n)-A008653(2*n)`
-/

namespace A186100.P15938075627893150081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008653 n - A008653 (2 * n)

end

end A186100.P15938075627893150081

/-! ## A186100.P3089516378811518967

`2*A125510(n)-A004011(n)`
-/

namespace A186100.P3089516378811518967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125510 n - A004011 n

end

end A186100.P3089516378811518967

/-! ## A186100.P9437278370123773058

`2*A131946(n)-A125514(n)`
-/

namespace A186100.P9437278370123773058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131946 n - A125514 n

end

end A186100.P9437278370123773058

/-! ## A186100.P5654789925310764777

`2*A131946(n)-A131946(2*n)`
-/

namespace A186100.P5654789925310764777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131946 n - A131946 (2 * n)

end

end A186100.P5654789925310764777

/-! ## A186100.P16917924167368772835

`2*A282544(2*n)-A004011(n)`
-/

namespace A186100.P16917924167368772835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282544 (2 * n) - A004011 n

end

end A186100.P16917924167368772835

/-! ## A186100.P5458915404180926945

`2*A282544(2*n)-A000118(2*n)`
-/

namespace A186100.P5458915404180926945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282544 (2 * n) - A000118 (2 * n)

end

end A186100.P5458915404180926945

/-! ## A186100.P10352902908749049720

`A132954(2*n)*A252650(2*n)`
-/

namespace A186100.P10352902908749049720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 (2 * n) * A252650 (2 * n)

end

end A186100.P10352902908749049720

/-! ## A186100.P12660715190746354731

`2*A125514(n)-A125514(2*n)`
-/

namespace A186100.P12660715190746354731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125514 n - A125514 (2 * n)

end

end A186100.P12660715190746354731

/-! ## A186100.P10652229055601211278

`A281786(3*n)/2`
-/

namespace A186100.P10652229055601211278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281786 (3 * n) : ℚ) / 2

end

end A186100.P10652229055601211278

/-! ## A186100.P5020461731645470224

`2*A034896(2*n)-A034896(4*n)`
-/

namespace A186100.P5020461731645470224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034896 (2 * n) - A034896 (4 * n)

end

end A186100.P5020461731645470224

/-! ## A186100.P11376702380962346821

`A252650(6*n)`
-/

namespace A186100.P11376702380962346821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252650 (6 * n)

end

end A186100.P11376702380962346821

/-! ## A186100.P11777264712974090530

`A010684(n)*A230057(n)`
-/

namespace A186100.P11777264712974090530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A230057 n

end

end A186100.P11777264712974090530

/-! ## A186100.P13442747385355863641

`A230057(A109043(n))`
-/

namespace A186100.P13442747385355863641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230057 (A109043 n).toNat

end

end A186100.P13442747385355863641

/-! ## A186100.P10608011420101006013

`A230057(2*n)`
-/

namespace A186100.P10608011420101006013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230057 (2 * n)

end

end A186100.P10608011420101006013

/-! ## A186100.P10355202408274973307

`A005843(A008653(n))-A008653(A005843(n))`
-/

namespace A186100.P10355202408274973307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008653 n).toNat - A008653 (A005843 n).toNat

end

end A186100.P10355202408274973307

/-!
# A186101: a(n) = 2*n / 3 if n divisible by 3, a(n) = n otherwise.

The programs for A186101, the canonical program `A186101.P1125804744119636352` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186101 has offset 0).

The definition of A186101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186101.P1967560135806517629

`ogf((x+2x^2+2x^3+2x^4+x^5)/(1-2x^3+x^6))`
-/

namespace A186101.P1967560135806517629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 2, 2, 1] [1, 0, 0, -2, 0, 0, 1] n

end

end A186101.P1967560135806517629

namespace A186101

/-- `ogf((x+2x^2+2x^3+2x^4+x^5)/(1-2x^3+x^6))` -/
def P1967560135806517629.Spec : Prop :=
  ∀ n, P1967560135806517629.a n = A186101 n

end A186101

/-! ## A186101.P1125804744119636352

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=4, a(5)=5`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186101

/-- `2*a(n-3)-a(n-6)` -/
def P1125804744119636352.Spec : Prop :=
  ∀ n, P1125804744119636352.a n = A186101 n

theorem P1125804744119636352.correct : P1125804744119636352.Spec := by
  intro n
  simp only [A186101]

end A186101

/-! ## A186101.P7802959094271628657

`(lcm(3, n)/3+n)/2`
-/

namespace A186101.P7802959094271628657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 3 n : ℚ) / 3 + (n : ℚ)) / 2

end

end A186101.P7802959094271628657

namespace A186101

/-- `(lcm(3, n)/3+n)/2` -/
def P7802959094271628657.Spec : Prop :=
  ∀ n, P7802959094271628657.a n = (A186101 n : ℚ)

end A186101

/-! ## A186101.P11360901267076885151

`4*n/(gcd(3, n)+3)`
-/

namespace A186101.P11360901267076885151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℚ) / (Nat.gcd 3 n + 3 : ℚ))

end

end A186101.P11360901267076885151

namespace A186101

/-- `4*n/(gcd(3, n)+3)` -/
def P11360901267076885151.Spec : Prop :=
  ∀ n, P11360901267076885151.a n = (A186101 n : ℚ)

end A186101

/-! ## A186101.P2303847828445429605

`n*(n²%3+2)/3`
-/

namespace A186101.P2303847828445429605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((n ^ 2 % 3 + 2 : ℕ) : ℚ) / 3)

end

end A186101.P2303847828445429605

namespace A186101

/-- `n*(n²%3+2)/3` -/
def P2303847828445429605.Spec : Prop :=
  ∀ n, P2303847828445429605.a n = (A186101 n : ℚ)

end A186101

/-! ## A186101.P10778960460065971363

`2*n/(char[3*n]+2)`
-/

namespace A186101.P10778960460065971363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 2 : ℕ) : ℚ)

end

end A186101.P10778960460065971363

namespace A186101

/-- `2*n/(char[3*n]+2)` -/
def P10778960460065971363.Spec : Prop :=
  ∀ n, P10778960460065971363.a n = (A186101 n : ℚ)

end A186101

/-! ## A186101.P6303313559669596847

`2*n/dr(xor(10, dr(n^3)))`
-/

namespace A186101.P6303313559669596847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℚ) / (SequenceMachineLib.digitalRoot (Nat.xor 10 (SequenceMachineLib.digitalRoot (n ^ 3 : ℤ)) : ℤ) : ℚ))

end

end A186101.P6303313559669596847

namespace A186101

/-- `2*n/dr(xor(10, dr(n^3)))` -/
def P6303313559669596847.Spec : Prop :=
  ∀ n, P6303313559669596847.a n = (A186101 n : ℚ)

end A186101

/-! ## A186101.P14301833392915694495

`n/(n-3)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A186101.P14301833392915694495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2, 2] fun n a =>
  (n : ℚ) / ((n : ℤ) - 3 : ℚ) * a (n - 3)

end

end A186101.P14301833392915694495

namespace A186101

/-- `n/(n-3)*a(n-3)` -/
def P14301833392915694495.Spec : Prop :=
  ∀ n, P14301833392915694495.a n = (A186101 n : ℚ)

end A186101

/-! ## A186101.P17038497860392582797

`n+1-gcd(n+3, ceil((n+2)/3))`
-/

namespace A186101.P17038497860392582797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.gcd (n + 3 : ℤ) ⌈(n + 2 : ℚ) / 3⌉ : ℤ)

end

end A186101.P17038497860392582797

namespace A186101

/-- `n+1-gcd(n+3, ceil((n+2)/3))` -/
def P17038497860392582797.Spec : Prop :=
  ∀ n, P17038497860392582797.a n = A186101 n

end A186101

/-! ## A186101.P15036081264415791733

`abs(A255368(n))`
-/

namespace A186101.P15036081264415791733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A255368 n|

end

end A186101.P15036081264415791733

namespace A186101

/-- `abs(A255368(n))` -/
def P15036081264415791733.Spec : Prop :=
  ∀ n, P15036081264415791733.a n = A186101 n

end A186101

/-! ## A186101.P4848075330015048293

`2*n/A052901(n)`
-/

namespace A186101.P4848075330015048293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℚ) / (A052901 n : ℚ))

end

end A186101.P4848075330015048293

namespace A186101

/-- `2*n/A052901(n)` -/
def P4848075330015048293.Spec : Prop :=
  ∀ n, P4848075330015048293.a n = (A186101 n : ℚ)

end A186101

/-! ## A186101.P185142040513147801

`2*n/A082204(n)`
-/

namespace A186101.P185142040513147801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℚ) / (A082204 n : ℚ))

end

end A186101.P185142040513147801

namespace A186101

/-- `2*n/A082204(n)` -/
def P185142040513147801.Spec : Prop :=
  ∀ n, P185142040513147801.a n = (A186101 n : ℚ)

end A186101

/-! ## A186101.P14036764854678828680

`n/3*A164359(n)`
-/

namespace A186101.P14036764854678828680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A164359 n : ℚ)

end

end A186101.P14036764854678828680

namespace A186101

/-- `n/3*A164359(n)` -/
def P14036764854678828680.Spec : Prop :=
  ∀ n, P14036764854678828680.a n = (A186101 n : ℚ)

end A186101

/-! ## A186101.P6093208730564091958

`ceil((A260316(n)+n)/2)`
-/

namespace A186101.P6093208730564091958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A260316 n + (n : ℤ) : ℚ) / 2⌉

end

end A186101.P6093208730564091958

namespace A186101

/-- `ceil((A260316(n)+n)/2)` -/
def P6093208730564091958.Spec : Prop :=
  ∀ n, P6093208730564091958.a n = A186101 n

end A186101

/-! ## A186101.P10960103154744981492

`2*n/A239141(n+3)`
-/

namespace A186101.P10960103154744981492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℚ) / (A239141 (n + 3) : ℚ))

end

end A186101.P10960103154744981492

namespace A186101

/-- `2*n/A239141(n+3)` -/
def P10960103154744981492.Spec : Prop :=
  ∀ n, P10960103154744981492.a n = (A186101 n : ℚ)

end A186101

/-! ## A186101.P1288080286747402575

`A131294(n)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A186101.P1288080286747402575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A131294 n + a (n - 3)

end

end A186101.P1288080286747402575

namespace A186101

/-- `A131294(n)+a(n-3)` -/
def P1288080286747402575.Spec : Prop :=
  ∀ n, P1288080286747402575.a n = A186101 n

end A186101

/-! ## A186101.P8335911767379769280

`abs(2*n/round(sqrt(A040252(n)))-n)`
-/

namespace A186101.P8335911767379769280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℚ) / (SequenceMachineLib.roundAway (Real.sqrt (A040252 n : ℝ)) : ℚ) - (n : ℚ)|

end

end A186101.P8335911767379769280

namespace A186101

/-- `abs(2*n/round(sqrt(A040252(n)))-n)` -/
def P8335911767379769280.Spec : Prop :=
  ∀ n, P8335911767379769280.a n = (A186101 n : ℚ)

end A186101

/-! ## A186101.P8587713264651869704

`A014682(A051176(n)+n)`
-/

namespace A186101.P8587713264651869704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A051176 n + (n : ℤ)).toNat

end

end A186101.P8587713264651869704

namespace A186101

/-- `A014682(A051176(n)+n)` -/
def P8587713264651869704.Spec : Prop :=
  ∀ n, P8587713264651869704.a n = A186101 n

end A186101

/-! ## A186101.P17038733564219461103

`A087509(n)+A004396(n)`
-/

namespace A186101.P17038733564219461103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 n + A004396 n

end

end A186101.P17038733564219461103

namespace A186101

/-- `A087509(n)+A004396(n)` -/
def P17038733564219461103.Spec : Prop :=
  ∀ n, P17038733564219461103.a n = A186101 n

end A186101

/-! ## A186101.P11778737570038574451

`A087508(n)+A004523(n)`
-/

namespace A186101.P11778737570038574451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 n + A004523 n

end

end A186101.P11778737570038574451

namespace A186101

/-- `A087508(n)+A004523(n)` -/
def P11778737570038574451.Spec : Prop :=
  ∀ n, P11778737570038574451.a n = A186101 n

end A186101

/-!
# A186102: Smallest prime p such that p == n (mod prime(n)).

The programs for A186102, there is no canonical definition to state claims against.
-/

/-! ## A186102.P3175986949374207801

`A340753(∑[A028815(n)])`
-/

namespace A186102.P3175986949374207801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186102.P3175986949374207801

/-! ## A186102.P1016540085846552907

`A340753(A036439(n+1)+n)`
-/

namespace A186102.P1016540085846552907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (A036439 (n + 1) + (n : ℤ)).toNat

end

end A186102.P1016540085846552907

/-! ## A186102.P13596554910701668519

`A340753(A007504(n)+2+n)`
-/

namespace A186102.P13596554910701668519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (A007504 n + 2 + (n : ℤ)).toNat

end

end A186102.P13596554910701668519

/-! ## A186102.P7598979565647729791

`A340753(A175965(n+2)+n)`
-/

namespace A186102.P7598979565647729791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (A175965 (n + 2) + (n : ℤ)).toNat

end

end A186102.P7598979565647729791

/-! ## A186102.P17772452364563697084

`A340753(∑[record[A063655(n+1)]])`
-/

namespace A186102.P17772452364563697084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186102.P17772452364563697084

/-! ## A186102.P10874718782524884858

`A340753(∑[record[A111234(n+1)]])`
-/

namespace A186102.P10874718782524884858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111234 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186102.P10874718782524884858

/-! ## A186102.P3784266030780908285

`A340753(∑[A008578(n+1)+1])`
-/

namespace A186102.P3784266030780908285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186102.P3784266030780908285

/-! ## A186102.P7857312732369924199

`A340753(A014284(n+1)+1+n)`
-/

namespace A186102.P7857312732369924199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (A014284 (n + 1) + 1 + (n : ℤ)).toNat

end

end A186102.P7857312732369924199

/-!
# A186103: Numbers k such that k | sigma(k-1) + sigma(k+1).

The programs for A186103, there is no canonical definition to state claims against.
-/

/-! ## A186103.P13215911232478402124

`A335253(A008816(n))+1`
-/

namespace A186103.P13215911232478402124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335253 (A008816 n).toNat + 1

end

end A186103.P13215911232478402124

/-! ## A186103.P11637904882239332270

`A335253(A199343(n))+1`
-/

namespace A186103.P11637904882239332270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335253 (A199343 n).toNat + 1

end

end A186103.P11637904882239332270

/-! ## A186103.P1860013306212238020

`A335253(A001102(n+1))+1`
-/

namespace A186103.P1860013306212238020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335253 (A001102 (n + 1)).toNat + 1

end

end A186103.P1860013306212238020

/-! ## A186103.P5657169341271990745

`A335253(A032555(n+1))+1`
-/

namespace A186103.P5657169341271990745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335253 (A032555 (n + 1)).toNat + 1

end

end A186103.P5657169341271990745

/-! ## A186103.P5790194919196029685

`A335253(A032559(n+1))+1`
-/

namespace A186103.P5790194919196029685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335253 (A032559 (n + 1)).toNat + 1

end

end A186103.P5790194919196029685

/-!
# A186104: Primes of the form 3*6^k - 1.

The programs for A186104, there is no canonical definition to state claims against.
-/

/-! ## A186104.P7720602998836435877

`A198796(A186106(n+1))`
-/

namespace A186104.P7720602998836435877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198796 (A186106 (n + 1)).toNat

end

end A186104.P7720602998836435877

/-! ## A186104.P12800688376740677407

`∩[A005105(n+1), A198796(n)]`
-/

namespace A186104.P12800688376740677407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198796 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186104.P12800688376740677407

/-! ## A186104.P16831895681820198316

`∩[A186687(n+1), A198796(n)]`
-/

namespace A186104.P16831895681820198316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198796 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186104.P16831895681820198316

/-!
# A186105: Primes of the form 3*6^k+1.

The programs for A186105, there is no canonical definition to state claims against.
-/

/-! ## A186105.P7468506417852112896

`A199318(A186112(n+1))`
-/

namespace A186105.P7468506417852112896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199318 (A186112 (n + 1)).toNat

end

end A186105.P7468506417852112896

/-! ## A186105.P8213304930384601336

`∩[A185167(n+1), A199318(n)]`
-/

namespace A186105.P8213304930384601336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199318 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186105.P8213304930384601336

/-! ## A186105.P8886771931193944800

`∩[A005109(n+1), A185167(n+1)]`
-/

namespace A186105.P8886771931193944800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186105.P8886771931193944800

/-! ## A186105.P1350178586495934391

`∩[A185167(n+1), A198796(n)+2]`
-/

namespace A186105.P1350178586495934391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198796 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186105.P1350178586495934391

/-!
# A186107: Numerator of the frequency of the n-th dropping time in the Collatz iteration.

The programs for A186107, there is no canonical definition to state claims against.
-/

/-! ## A186107.P3225207273149776635

`lcm(A016116(n), A186009(n+1))/A016116(n)`
-/

namespace A186107.P3225207273149776635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A016116 n) (A186009 (n + 1)) : ℚ) / (A016116 n : ℚ)

end

end A186107.P3225207273149776635

/-! ## A186107.P15349214898667157685

`A186009(n+1)/gcd(A000079(n), A186009(n+1))`
-/

namespace A186107.P15349214898667157685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186009 (n + 1) : ℚ) / (Int.gcd (A000079 n) (A186009 (n + 1)) : ℚ)

end

end A186107.P15349214898667157685

/-! ## A186107.P9115832643918541146

`A000265(A186009(n+1)/A286520(n+2))`
-/

namespace A186107.P9115832643918541146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A186009 (n + 1) : ℚ) / (A286520 (n + 2) : ℚ))).toNat

end

end A186107.P9115832643918541146

/-! ## A186107.P7530798062333385409

`A000265(A186009(n+1))`
-/

namespace A186107.P7530798062333385409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A186009 (n + 1)).toNat

end

end A186107.P7530798062333385409

/-! ## A186107.P2644863777535270331

`A000265(A100982(floor(acot(n)+n)))`
-/

namespace A186107.P2644863777535270331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A100982 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat).toNat

end

end A186107.P2644863777535270331

/-!
# A186108: Denominator of the frequency of the n-th dropping time in the Collatz iteration.

The programs for A186108, there is no canonical definition to state claims against.
-/

/-! ## A186108.P15129423926979582932

`A366905(2^∑[char[xor(n, 2*n+1)+1]+1])`
-/

namespace A186108.P15129423926979582932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366905 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A186108.P15129423926979582932

/-! ## A186108.P2223300660135611503

`A366905(2^A026351(n))`
-/

namespace A186108.P2223300660135611503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366905 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A026351 n : ℤ))).toNat

end

end A186108.P2223300660135611503

/-! ## A186108.P14628130310066295464

`A085050(4^A286389(n))`
-/

namespace A186108.P14628130310066295464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085050 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A286389 n : ℤ))).toNat

end

end A186108.P14628130310066295464

/-! ## A186108.P17745256920972873257

`A209636(∏[gcd(8, A243493(n))])`
-/

namespace A186108.P17745256920972873257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A243493 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209636 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A186108.P17745256920972873257

/-! ## A186108.P15937944715165534509

`A366905(A016116(3*(n+1)))`
-/

namespace A186108.P15937944715165534509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366905 (A016116 (3 * (n + 1))).toNat

end

end A186108.P15937944715165534509

/-!
# A186109: Numerator of the cumulative frequency of the dropping time in the Collatz iteration.

The programs for A186109, there is no canonical definition to state claims against.
-/

/-! ## A186109.P12443407860444650419

`or(1, A004489(9^n))`
-/

namespace A186109.P12443407860444650419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004489 (9 ^ n))

end

end A186109.P12443407860444650419

/-!
# A186110: Denominator of the cumulative frequency of the dropping time in the Collatz iteration.

The programs for A186110, there is no canonical definition to state claims against.
-/

/-! ## A186110.P17059146313441823303

`A062383(A186109(n+1))`
-/

namespace A186110.P17059146313441823303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A186109 (n + 1)).toNat

end

end A186110.P17059146313441823303

/-! ## A186110.P1242590403362221140

`gcd(A011782(A089206(n+1)), A208561(n+2))`
-/

namespace A186110.P1242590403362221140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011782 (A089206 (n + 1)).toNat) (A208561 (n + 2))

end

end A186110.P1242590403362221140

/-! ## A186110.P11633768016022373431

`A053644(2*A186109(n+1))`
-/

namespace A186110.P11633768016022373431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * A186109 (n + 1)).toNat

end

end A186110.P11633768016022373431

/-! ## A186110.P10455789852038910624

`A072376(4*A186109(n+1))`
-/

namespace A186110.P10455789852038910624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 (4 * A186109 (n + 1)).toNat

end

end A186110.P10455789852038910624

/-!
# A186111: a(n) = -n if n odd, a(2n) = 3n if n odd, a(4n) = 2n.

The programs for A186111, the canonical program `A186111.P9163366177378737865` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186111 has offset 1).

The definition of A186111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186111.P9163366177378737865

`ogf((1-x-x^3+x^4)/(1+2x+3x^2+4x^3+3x^4+2x^5+x^6))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186111

/-- `ogf((1-x-x^3+x^4)/(1+2x+3x^2+4x^3+3x^4+2x^5+x^6))` -/
def P9163366177378737865.Spec : Prop :=
  ∀ n, P9163366177378737865.a n = A186111 (n + 1)

theorem P9163366177378737865.correct : P9163366177378737865.Spec := by
  intro n
  simp only [A186111, Nat.add_sub_cancel]

end A186111

/-! ## A186111.P6652423650982311354

`A186813(n+1)*(-1)^n`
-/

namespace A186111.P6652423650982311354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186813 (n + 1) * (-1) ^ n

end

end A186111.P6652423650982311354

namespace A186111

/-- `A186813(n+1)*(-1)^n` -/
def P6652423650982311354.Spec : Prop :=
  ∀ n, P6652423650982311354.a n = A186111 (n + 1)

end A186111

/-! ## A186111.P839597245342049787

`A033999(n)*A186813(n+1)`
-/

namespace A186111.P839597245342049787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A186813 (n + 1)

end

end A186111.P839597245342049787

namespace A186111

/-- `A033999(n)*A186813(n+1)` -/
def P839597245342049787.Spec : Prop :=
  ∀ n, P839597245342049787.a n = A186111 (n + 1)

end A186111

/-! ## A186111.P5063954814027611191

`A062157(n+1)*A186813(n+1)`
-/

namespace A186111.P5063954814027611191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A186813 (n + 1)

end

end A186111.P5063954814027611191

namespace A186111

/-- `A062157(n+1)*A186813(n+1)` -/
def P5063954814027611191.Spec : Prop :=
  ∀ n, P5063954814027611191.a n = A186111 (n + 1)

end A186111

/-! ## A186111.P9803361331550139551

`A185152(n+1)/A133691(n+1)`
-/

namespace A186111.P9803361331550139551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185152 (n + 1) : ℚ) / (A133691 (n + 1) : ℚ)

end

end A186111.P9803361331550139551

namespace A186111

/-- `A185152(n+1)/A133691(n+1)` -/
def P9803361331550139551.Spec : Prop :=
  ∀ n, P9803361331550139551.a n = (A186111 (n + 1) : ℚ)

end A186111

/-! ## A186111.P821024147523811219

`(3-2*A000034(n))*A186813(n+1)`
-/

namespace A186111.P821024147523811219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - 2 * A000034 n) * A186813 (n + 1)

end

end A186111.P821024147523811219

namespace A186111

/-- `(3-2*A000034(n))*A186813(n+1)` -/
def P821024147523811219.Spec : Prop :=
  ∀ n, P821024147523811219.a n = A186111 (n + 1)

end A186111

/-! ## A186111.P11755221126520844191

`∑{d}[n+1, A002129(#)*A092673((n+1)/#)]`
-/

namespace A186111.P11755221126520844191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002129 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A186111.P11755221126520844191

namespace A186111

/-- `∑{d}[n+1, A002129(#)*A092673((n+1)/#)]` -/
def P11755221126520844191.Spec : Prop :=
  ∀ n, P11755221126520844191.a n = A186111 (n + 1)

end A186111

/-! ## A186111.P3828330103084878314

`∑{d}[n+1, A067856(#)*A121455((n+1)/#)]`
-/

namespace A186111.P3828330103084878314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067856 d * A121455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A186111.P3828330103084878314

namespace A186111

/-- `∑{d}[n+1, A067856(#)*A121455((n+1)/#)]` -/
def P3828330103084878314.Spec : Prop :=
  ∀ n, P3828330103084878314.a n = A186111 (n + 1)

end A186111

/-! ## A186111.P4435398048456566513

`∑{d}[n+1, A008683(#)*A186690((n+1)/#)]`
-/

namespace A186111.P4435398048456566513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A186690 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A186111.P4435398048456566513

namespace A186111

/-- `∑{d}[n+1, A008683(#)*A186690((n+1)/#)]` -/
def P4435398048456566513.Spec : Prop :=
  ∀ n, P4435398048456566513.a n = A186111 (n + 1)

end A186111

/-! ## A186111.P4287363270524407321

`∑{d}[n+1, A117997(#)*A121456((n+1)/#)]`
-/

namespace A186111.P4287363270524407321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117997 d * A121456 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A186111.P4287363270524407321

namespace A186111

/-- `∑{d}[n+1, A117997(#)*A121456((n+1)/#)]` -/
def P4287363270524407321.Spec : Prop :=
  ∀ n, P4287363270524407321.a n = A186111 (n + 1)

end A186111

/-! ## A186111.P14565249629791454497

`∑{d}[n+1, A118827(#)*A319997((n+1)/#)]`
-/

namespace A186111.P14565249629791454497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A118827 d * A319997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A186111.P14565249629791454497

namespace A186111

/-- `∑{d}[n+1, A118827(#)*A319997((n+1)/#)]` -/
def P14565249629791454497.Spec : Prop :=
  ∀ n, P14565249629791454497.a n = A186111 (n + 1)

end A186111

/-! ## A186111.P652168168706417680

`∑{d}[n+1, A109506(#)*A361984((n+1)/#)]`
-/

namespace A186111.P652168168706417680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109506 d * A361984 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A186111.P652168168706417680

namespace A186111

/-- `∑{d}[n+1, A109506(#)*A361984((n+1)/#)]` -/
def P652168168706417680.Spec : Prop :=
  ∀ n, P652168168706417680.a n = A186111 (n + 1)

end A186111

/-! ## A186111.P18357979904748950808

`∑{d}[n+1, A326125(#)*A359485((n+1)/#)]`
-/

namespace A186111.P18357979904748950808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326125 d * A359485 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A186111.P18357979904748950808

namespace A186111

/-- `∑{d}[n+1, A326125(#)*A359485((n+1)/#)]` -/
def P18357979904748950808.Spec : Prop :=
  ∀ n, P18357979904748950808.a n = A186111 (n + 1)

end A186111

/-! ## A186111.P899590705064811755

`∑{d}[n+1, A059841(#-1)*A325596((n+1)/#)]`
-/

namespace A186111.P899590705064811755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A325596 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A186111.P899590705064811755

namespace A186111

/-- `∑{d}[n+1, A059841(#-1)*A325596((n+1)/#)]` -/
def P899590705064811755.Spec : Prop :=
  ∀ n, P899590705064811755.a n = A186111 (n + 1)

end A186111

/-! ## A186111.P15250909419142903036

`(A186813(n)+Δ[A186813(n)])/A033999(n)`
-/

namespace A186111.P15250909419142903036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186813 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186813 n + (f1 (n + 1) - f1 n) : ℚ) / (A033999 n : ℚ)

end

end A186111.P15250909419142903036

namespace A186111

/-- `(A186813(n)+Δ[A186813(n)])/A033999(n)` -/
def P15250909419142903036.Spec : Prop :=
  ∀ n, P15250909419142903036.a n = (A186111 (n + 1) : ℚ)

end A186111

/-! ## A186111.P16210074353666513766

`2*A022998(A026741(n+1))-A195140(n+1)`
-/

namespace A186111.P16210074353666513766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022998 (A026741 (n + 1)).toNat - A195140 (n + 1)

end

end A186111.P16210074353666513766

namespace A186111

/-- `2*A022998(A026741(n+1))-A195140(n+1)` -/
def P16210074353666513766.Spec : Prop :=
  ∀ n, P16210074353666513766.a n = A186111 (n + 1)

end A186111

/-! ## A186111.P7241128920864940635

`A193356(n+1)+A193356(n+1)-A186813(n+1)`
-/

namespace A186111.P7241128920864940635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (n + 1) + (A193356 (n + 1) - A186813 (n + 1))

end

end A186111.P7241128920864940635

namespace A186111

/-- `A193356(n+1)+A193356(n+1)-A186813(n+1)` -/
def P7241128920864940635.Spec : Prop :=
  ∀ n, P7241128920864940635.a n = A186111 (n + 1)

end A186111

/-! ## A186111.P880637498534536520

`Δ[A001057(n)-A001057(A004526(n))]`
-/

namespace A186111.P880637498534536520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n - A001057 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186111.P880637498534536520

namespace A186111

/-- `Δ[A001057(n)-A001057(A004526(n))]` -/
def P880637498534536520.Spec : Prop :=
  ∀ n, P880637498534536520.a n = A186111 (n + 1)

end A186111

/-! ## A186111.P15060081574873330096

`A038608(A142150(n+1))-A038608(n+1)`
-/

namespace A186111.P15060081574873330096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A142150 (n + 1)).toNat - A038608 (n + 1)

end

end A186111.P15060081574873330096

namespace A186111

/-- `A038608(A142150(n+1))-A038608(n+1)` -/
def P15060081574873330096.Spec : Prop :=
  ∀ n, P15060081574873330096.a n = A186111 (n + 1)

end A186111

/-! ## A186111.P12385708183725583864

`A056594(2*n)*A186813(n+1)`
-/

namespace A186111.P12385708183725583864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A186813 (n + 1)

end

end A186111.P12385708183725583864

namespace A186111

/-- `A056594(2*n)*A186813(n+1)` -/
def P12385708183725583864.Spec : Prop :=
  ∀ n, P12385708183725583864.a n = A186111 (n + 1)

end A186111

/-!
# A186113: a(n) = 13*n + 6.

The programs for A186113, the canonical program `A186113.P14940446922453070616` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186113 has offset 0).

The definition of A186113 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*n+6` (program `A186113.P14940446922453070616`, by `A186113.P14940446922453070616.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186113.P14940446922453070616

`13*n+6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186113

/-- `13*n+6` -/
def P14940446922453070616.Spec : Prop :=
  ∀ n, (P14940446922453070616.a n : ℤ) = A186113 n

theorem P14940446922453070616.correct : P14940446922453070616.Spec := by
  intro n
  simp only [A186113]

end A186113

/-!
# A186114: Triangle of regions and partitions of integers (see Comments lines for definition).

The programs for A186114, there is no canonical definition to state claims against.
-/

/-! ## A186114.P2210871366155926720

`A193870(∑[char[∑[n]]]²-n)`
-/

namespace A186114.P2210871366155926720
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A186114.P2210871366155926720

/-! ## A186114.P16424589885933722557

`A020985(n)²*A193870(A038722(n+1))`
-/

namespace A186114.P16424589885933722557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A193870 (A038722 (n + 1)).toNat

end

end A186114.P16424589885933722557

/-! ## A186114.P2404552213897936143

`A193870(A038722(n+1))%A002997(n+1)`
-/

namespace A186114.P2404552213897936143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193870 (A038722 (n + 1)).toNat) (A002997 (n + 1))

end

end A186114.P2404552213897936143

/-! ## A186114.P8973264976733838121

`A126067(A071178(n+1))*A193870(A038722(n+1))`
-/

namespace A186114.P8973264976733838121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126067 (A071178 (n + 1)).toNat * A193870 (A038722 (n + 1)).toNat

end

end A186114.P8973264976733838121

/-! ## A186114.P14361908395211253621

`A193870(A038722(n+1))+A112607(3*n+2)`
-/

namespace A186114.P14361908395211253621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (A038722 (n + 1)).toNat + A112607 (3 * n + 2)

end

end A186114.P14361908395211253621

/-!
# A186116: Number of nonisomorphic rings with n elements minus number of groups of order n.

The programs for A186116, there is no canonical definition to state claims against.
-/

/-! ## A186116.P10767145421924033007

`A027623(n+1)-A000001(n+1)`
-/

namespace A186116.P10767145421924033007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027623 (n + 1) - A000001 (n + 1)

end

end A186116.P10767145421924033007

/-! ## A186116.P6735928962479806552

`A037234(n+1)-A000001(n+1)`
-/

namespace A186116.P6735928962479806552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 (n + 1) - A000001 (n + 1)

end

end A186116.P6735928962479806552

/-! ## A186116.P11037248764014196882

`A027623(n+1)-A201733(n+1)`
-/

namespace A186116.P11037248764014196882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027623 (n + 1) - A201733 (n + 1)

end

end A186116.P11037248764014196882

/-! ## A186116.P5081423457636277984

`A037234(n+1)-A201733(n+1)`
-/

namespace A186116.P5081423457636277984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 (n + 1) - A201733 (n + 1)

end

end A186116.P5081423457636277984

/-! ## A186116.P9700960187557453710

`A027623(n+1)-(A060689(n+1)+A000688(n+1))`
-/

namespace A186116.P9700960187557453710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027623 (n + 1) - (A060689 (n + 1) + A000688 (n + 1))

end

end A186116.P9700960187557453710

/-!
# A186117: Number of nonisomorphic semigroups of order n minus number of groups of order n.

The programs for A186117, there is no canonical definition to state claims against.
-/

/-! ## A186117.P17086449623053539956

`A027851(n+1)-A000001(n+1)`
-/

namespace A186117.P17086449623053539956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027851 (n + 1) - A000001 (n + 1)

end

end A186117.P17086449623053539956

/-! ## A186117.P16012247527430169777

`Δ[A118581(n)-∑[A000001(n)]]`
-/

namespace A186117.P16012247527430169777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118581 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186117.P16012247527430169777

/-! ## A186117.P4388026648281277152

`Δ[A118581(n)]-A000001(n+1)`
-/

namespace A186117.P4388026648281277152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000001 (n + 1)

end

end A186117.P4388026648281277152

/-! ## A186117.P10436801741052027097

`Δ[A118581(n)]-A066083(n+1)`
-/

namespace A186117.P10436801741052027097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A066083 (n + 1)

end

end A186117.P10436801741052027097

/-! ## A186117.P14094589066396305140

`Δ[A118581(n)]-A128644(n+1)`
-/

namespace A186117.P14094589066396305140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A128644 (n + 1)

end

end A186117.P14094589066396305140

/-!
# A186119: Number of (n+1)X(n+1) binary arrays with every 2X2 subblock diagonal sum less antidiagonal sum equal to some horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186119, there is no canonical definition to state claims against.
-/

/-! ## A186119.P16665298343192910842

`A186128(∑[4*n]+1)`
-/

namespace A186119.P16665298343192910842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186119.P16665298343192910842

/-! ## A186119.P6103837979952615407

`lcm(2, A186128(A001844(n)))`
-/

namespace A186119.P6103837979952615407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186128 (A001844 n).toNat)

end

end A186119.P6103837979952615407

/-! ## A186119.P1065690238400877780

`record[A186128(A330613(n+1))]`
-/

namespace A186119.P1065690238400877780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186119.P1065690238400877780

/-! ## A186119.P3917636631914182041

`record[A003982(n)*A186128(n+1)]`
-/

namespace A186119.P3917636631914182041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A186128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186119.P3917636631914182041

/-! ## A186119.P5315173080817471765

`record[A005369(n)*A186128(2*n+1)]`
-/

namespace A186119.P5315173080817471765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n * A186128 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186119.P5315173080817471765

/-!
# A186120: Number of (n+1) X 2 binary arrays with every 2 X 2 subblock diagonal sum less antidiagonal sum equal to some horizontal or vertical neighbor 2 X 2 subblock diagonal sum less antidiagonal sum.

The programs for A186120, the canonical program `A186120.P2526366721911689452` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186120 has offset 1).

The definition of A186120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186120.P9030137774781034287

`ogf((14x-24x^2-4x^3+8x^4-16x^5)/(1-3x+6x^3-6x^4+4x^5))`
-/

namespace A186120.P9030137774781034287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 14, -24, -4, 8, -16] [1, -3, 0, 6, -6, 4] n

end

end A186120.P9030137774781034287

namespace A186120

/-- `ogf((14x-24x^2-4x^3+8x^4-16x^5)/(1-3x+6x^3-6x^4+4x^5))` -/
def P9030137774781034287.Spec : Prop :=
  ∀ n, P9030137774781034287.a n = A186120 (n + 1)

end A186120

/-! ## A186120.P2526366721911689452

`3*a(n-1)-6*a(n-3)+6*a(n-4)-4*a(n-5)` with `a(0)=0, a(1)=14, a(2)=18, a(3)=50, a(4)=74, a(5)=182`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186120

/-- `3*a(n-1)-6*a(n-3)+6*a(n-4)-4*a(n-5)` -/
def P2526366721911689452.Spec : Prop :=
  ∀ n, P2526366721911689452.a n = A186120 (n + 1)

theorem P2526366721911689452.correct : P2526366721911689452.Spec := by
  intro n
  simp only [A186120, Nat.add_sub_cancel]

end A186120

/-! ## A186120.P17516697955421478524

`A186128(∑[n]+1)`
-/

namespace A186120.P17516697955421478524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186120.P17516697955421478524

namespace A186120

/-- `A186128(∑[n]+1)` -/
def P17516697955421478524.Spec : Prop :=
  ∀ n, P17516697955421478524.a n = A186120 (n + 1)

end A186120

/-! ## A186120.P999250077699290236

`lcm(2, A186128(A000124(n)))`
-/

namespace A186120.P999250077699290236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186128 (A000124 n).toNat)

end

end A186120.P999250077699290236

namespace A186120

/-- `lcm(2, A186128(A000124(n)))` -/
def P999250077699290236.Spec : Prop :=
  ∀ n, (P999250077699290236.a n : ℤ) = A186120 (n + 1)

end A186120

/-! ## A186120.P901390010902163996

`record[A186128(A246276(n+1))]`
-/

namespace A186120.P901390010902163996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186120.P901390010902163996

namespace A186120

/-- `record[A186128(A246276(n+1))]` -/
def P901390010902163996.Spec : Prop :=
  ∀ n, P901390010902163996.a n = A186120 (n + 1)

end A186120

/-!
# A186121: Number of (n+1) X 3 binary arrays with every 2 X 2 subblock diagonal sum less antidiagonal sum equal to some horizontal or vertical neighbor 2 X 2 subblock diagonal sum less antidiagonal sum.

The programs for A186121, there is no canonical definition to state claims against.
-/

/-! ## A186121.P9856036355397183458

`A186128(∑[n+1]+2)`
-/

namespace A186121.P9856036355397183458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186121.P9856036355397183458

/-! ## A186121.P12053930619113002959

`record[A010054(n)*A186128(n+2)]`
-/

namespace A186121.P12053930619113002959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186128 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186121.P12053930619113002959

/-! ## A186121.P9227603740843361085

`record[gcd(A002262(n), A186128(n+2))]`
-/

namespace A186121.P9227603740843361085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A186128 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186121.P9227603740843361085

/-! ## A186121.P13191914985385656377

`record[A005369(2*n)*A186128(n+2)]`
-/

namespace A186121.P13191914985385656377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (2 * n) * A186128 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186121.P13191914985385656377

/-! ## A186121.P14393568042518994930

`record[A186128(abs(A201163(n)))]`
-/

namespace A186121.P14393568042518994930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186121.P14393568042518994930

/-!
# A186122: Number of (n+1)X4 binary arrays with every 2X2 subblock diagonal sum less antidiagonal sum equal to some horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186122, there is no canonical definition to state claims against.
-/

/-! ## A186122.P3245220065361782397

`A186128(∑[n+2]+4)`
-/

namespace A186122.P3245220065361782397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186122.P3245220065361782397

/-! ## A186122.P11658402864920263841

`lcm(2, A186128(A167614(n+1)))`
-/

namespace A186122.P11658402864920263841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186128 (A167614 (n + 1)).toNat)

end

end A186122.P11658402864920263841

/-! ## A186122.P3426316923155444412

`or(2, A186128(A046691(n)+7))`
-/

namespace A186122.P3426316923155444412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A186128 (A046691 n + 7).toNat)

end

end A186122.P3426316923155444412

/-! ## A186122.P573942705438908944

`record[A155031(n+1)*A186128(n+4)]`
-/

namespace A186122.P573942705438908944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155031 (n + 1) * A186128 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186122.P573942705438908944

/-! ## A186122.P2069210555501076866

`record[A005369(2*(n+1))*A186128(n+4)]`
-/

namespace A186122.P2069210555501076866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (2 * (n + 1)) * A186128 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186122.P2069210555501076866

/-!
# A186123: Number of (n+1)X5 binary arrays with every 2X2 subblock diagonal sum less antidiagonal sum equal to some horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186123, there is no canonical definition to state claims against.
-/

/-! ## A186123.P17668934569495225767

`A186128(∑[n+3]+7)`
-/

namespace A186123.P17668934569495225767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186123.P17668934569495225767

/-! ## A186123.P2002090632368570548

`lcm(2, A186128(A046691(n+1)+8))`
-/

namespace A186123.P2002090632368570548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186128 (A046691 (n + 1) + 8).toNat)

end

end A186123.P2002090632368570548

/-! ## A186123.P18223253487771477031

`A007318(C(3, n))*A186128(A046691(n+1)+8)`
-/

namespace A186123.P18223253487771477031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A186128 (A046691 (n + 1) + 8).toNat

end

end A186123.P18223253487771477031

/-! ## A186123.P13148656986211930140

`A186128(A046691(n+1)+8)+A000045(C(n, 64))`
-/

namespace A186123.P13148656986211930140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (A046691 (n + 1) + 8).toNat + A000045 (Nat.choose n 64)

end

end A186123.P13148656986211930140

/-! ## A186123.P16501054085789646160

`A007318(val(n+2, 5))*A186128(A046691(n+1)+8)`
-/

namespace A186123.P16501054085789646160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 2) 5) * A186128 (A046691 (n + 1) + 8).toNat

end

end A186123.P16501054085789646160

/-!
# A186124: Number of (n+1)X6 binary arrays with every 2X2 subblock diagonal sum less antidiagonal sum equal to some horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186124, there is no canonical definition to state claims against.
-/

/-! ## A186124.P14975216958815560833

`A186128(A374005(n+1))`
-/

namespace A186124.P14975216958815560833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (A374005 (n + 1)).toNat

end

end A186124.P14975216958815560833

/-! ## A186124.P8414067318717296619

`A186128(A167499(n+3))`
-/

namespace A186124.P8414067318717296619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (A167499 (n + 3)).toNat

end

end A186124.P8414067318717296619

/-! ## A186124.P11020354714965152966

`A186128(A155212(n)+13)`
-/

namespace A186124.P11020354714965152966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (A155212 n + 13).toNat

end

end A186124.P11020354714965152966

/-! ## A186124.P8668039662667105916

`A186128(A056000(n)+15)`
-/

namespace A186124.P8668039662667105916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (A056000 n + 15).toNat

end

end A186124.P8668039662667105916

/-! ## A186124.P15903746718561860292

`A186128(eq[7, A066657(n)])`
-/

namespace A186124.P15903746718561860292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186124.P15903746718561860292

/-!
# A186125: Number of (n+1)X7 binary arrays with every 2X2 subblock diagonal sum less antidiagonal sum equal to some horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186125, there is no canonical definition to state claims against.
-/

/-! ## A186125.P8677211949260992091

`A186128(A374007(n+1))`
-/

namespace A186125.P8677211949260992091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (A374007 (n + 1)).toNat

end

end A186125.P8677211949260992091

/-! ## A186125.P15250933302920429023

`A186128(A056115(n)+21)`
-/

namespace A186125.P15250933302920429023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (A056115 n + 21).toNat

end

end A186125.P15250933302920429023

/-! ## A186125.P9912209810480509930

`A186128(A167499(n+4)+1)`
-/

namespace A186125.P9912209810480509930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (A167499 (n + 4) + 1).toNat

end

end A186125.P9912209810480509930

/-! ## A186125.P5678275752590814432

`A186128(A167614(n+4)+3)`
-/

namespace A186125.P5678275752590814432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (A167614 (n + 4) + 3).toNat

end

end A186125.P5678275752590814432

/-! ## A186125.P4883777456868603564

`A186128(A000124(n+5)+5)`
-/

namespace A186125.P4883777456868603564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (A000124 (n + 5) + 5).toNat

end

end A186125.P4883777456868603564

/-!
# A186126: Number of (n+1)X8 binary arrays with every 2X2 subblock diagonal sum less antidiagonal sum equal to some horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186126, there is no canonical definition to state claims against.
-/

/-! ## A186126.P10986051505482278988

`A186128(A374008(n+1))`
-/

namespace A186126.P10986051505482278988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (A374008 (n + 1)).toNat

end

end A186126.P10986051505482278988

/-! ## A186126.P15181223965115029913

`A186128(A056119(n)+28)`
-/

namespace A186126.P15181223965115029913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (A056119 n + 28).toNat

end

end A186126.P15181223965115029913

/-! ## A186126.P10232427801224791865

`A186128(eq[11, A066657(n)])`
-/

namespace A186126.P10232427801224791865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186126.P10232427801224791865

/-! ## A186126.P4962090651386495885

`A186128(A167499(n+5)+2)`
-/

namespace A186126.P4962090651386495885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (A167499 (n + 5) + 2).toNat

end

end A186126.P4962090651386495885

/-! ## A186126.P2118612820738765751

`A186128(A167614(n+5)+4)`
-/

namespace A186126.P2118612820738765751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (A167614 (n + 5) + 4).toNat

end

end A186126.P2118612820738765751

/-!
# A186127: Number of (n+1)X9 binary arrays with every 2X2 subblock diagonal sum less antidiagonal sum equal to some horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186127, there is no canonical definition to state claims against.
-/

/-! ## A186127.P10108042628681076060

`A186128(A374009(n+1))`
-/

namespace A186127.P10108042628681076060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (A374009 (n + 1)).toNat

end

end A186127.P10108042628681076060

/-! ## A186127.P7438523003555502988

`A186128(eq[13, A066657(n)])`
-/

namespace A186127.P7438523003555502988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186127.P7438523003555502988

/-! ## A186127.P13084628181050271910

`A186128(A134869(n+7)+7)`
-/

namespace A186127.P13084628181050271910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (A134869 (n + 7) + 7).toNat

end

end A186127.P13084628181050271910

/-! ## A186127.P840292393979487840

`A186128(A000217(n+7)+8)`
-/

namespace A186127.P840292393979487840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (A000217 (n + 7) + 8).toNat

end

end A186127.P840292393979487840

/-! ## A186127.P10932044366993522284

`A186128(eq[9, A131818(n+1)])`
-/

namespace A186127.P10932044366993522284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186127.P10932044366993522284

/-!
# A186129: Numbers that can be partitioned into four parts s, t, u, v such that s+k = t-k = u*k = v/k for some k > 1.

The programs for A186129, the canonical program `A186129.P8547217690229078494` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186129 has offset 1).

The definition of A186129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186129.P8547217690229078494

`lt[5, A293235(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A186129

/-- `lt[5, A293235(n+1)]+1` -/
def P8547217690229078494.Spec : Prop :=
  ∀ n, (P8547217690229078494.a n : ℤ) = A186129 (n + 1)

theorem P8547217690229078494.correct : P8547217690229078494.Spec := by
  intro n
  simp only [A186129, Nat.add_sub_cancel]

end A186129

/-! ## A186129.P1224060925406052255

`lt[5, A293235(A028310(n))]`
-/

namespace A186129.P1224060925406052255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293235 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186129.P1224060925406052255

namespace A186129

/-- `lt[5, A293235(A028310(n))]` -/
def P1224060925406052255.Spec : Prop :=
  ∀ n, (P1224060925406052255.a n : ℤ) = A186129 (n + 1)

end A186129

/-! ## A186129.P18376885266507541325

`A020725(lt[5, A293235(n+1)])`
-/

namespace A186129.P18376885266507541325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A186129.P18376885266507541325

namespace A186129

/-- `A020725(lt[5, A293235(n+1)])` -/
def P18376885266507541325.Spec : Prop :=
  ∀ n, P18376885266507541325.a n = A186129 (n + 1)

end A186129

/-! ## A186129.P10840119359221550346

`lt[A107453(n+4), A293234(A028310(n))]`
-/

namespace A186129.P10840119359221550346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107453 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293234 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A186129.P10840119359221550346

namespace A186129

/-- `lt[A107453(n+4), A293234(A028310(n))]` -/
def P10840119359221550346.Spec : Prop :=
  ∀ n, (P10840119359221550346.a n : ℤ) = A186129 (n + 1)

end A186129

/-! ## A186129.P7364098686866053852

`lt[3, A293234(A008574(n))]`
-/

namespace A186129.P7364098686866053852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293234 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186129.P7364098686866053852

namespace A186129

/-- `lt[3, A293234(A008574(n))]` -/
def P7364098686866053852.Spec : Prop :=
  ∀ n, (P7364098686866053852.a n : ℤ) = A186129 (n + 1)

end A186129

/-! ## A186129.P12063167146667792699

`eq[1, A022156(A117621(n+1))]`
-/

namespace A186129.P12063167146667792699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022156 (A117621 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186129.P12063167146667792699

namespace A186129

/-- `eq[1, A022156(A117621(n+1))]` -/
def P12063167146667792699.Spec : Prop :=
  ∀ n, (P12063167146667792699.a n : ℤ) = A186129 (n + 1)

end A186129

/-!
# A186130: Positions of the odd partitions of (2k+1) in reverse lexicographic order converge to this limiting sequence.

The programs for A186130, there is no canonical definition to state claims against.
-/

/-! ## A186130.P8960486466080880937

`A186203(n)+a(n-1)` with `a(0)=1`
-/

namespace A186130.P8960486466080880937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186203 n + a (n - 1)

end

end A186130.P8960486466080880937

/-! ## A186130.P6616161552072798418

`∑[A186203(floor(sqrt(n²+1)))]-2`
-/

namespace A186130.P6616161552072798418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186203 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A186130.P6616161552072798418

/-! ## A186130.P6263099611221714844

`∑[A186203(n+1)]+1-A186203(n+1)`
-/

namespace A186130.P6263099611221714844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A186203 (n + 1)

end

end A186130.P6263099611221714844

/-! ## A186130.P11444248519590293926

`∑[A186203(A028310(n))%A014206(n)]`
-/

namespace A186130.P11444248519590293926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186203 (A028310 n).toNat) (A014206 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186130.P11444248519590293926

/-!
# A186131: Positions of the odd partitions of (2k) in reverse lexicographic order converge to this limiting sequence.

The programs for A186131, there is no canonical definition to state claims against.
-/

/-! ## A186131.P14220725268955465157

`A186204(n)+a(n-1)` with `a(0)=2`
-/

namespace A186131.P14220725268955465157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A186204 n + a (n - 1)

end

end A186131.P14220725268955465157

/-! ## A186131.P8265769157789590600

`∑[A186204(abs(1-n)+1)]`
-/

namespace A186131.P8265769157789590600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186204 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186131.P8265769157789590600

/-! ## A186131.P11501578236407637535

`∑[A186204(A028310(n))]-1`
-/

namespace A186131.P11501578236407637535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186204 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A186131.P11501578236407637535

/-! ## A186131.P544025639192388616

`∑[A186204(n+1)]+2-A186204(n+1)`
-/

namespace A186131.P544025639192388616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A186204 (n + 1))

end

end A186131.P544025639192388616

/-! ## A186131.P8466410108196825170

`∑[A186204(A000038(n)+n)]%A016742(n+1)`
-/

namespace A186131.P8466410108196825170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186204 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A016742 (n + 1))

end

end A186131.P8466410108196825170

/-!
# A186132: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock trace equal to any horizontal or vertical neighbor 2X2 subblock trace.

The programs for A186132, there is no canonical definition to state claims against.
-/

/-! ## A186132.P11536479177549530438

`A186141(∑[4*n]+1)`
-/

namespace A186132.P11536479177549530438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186141 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186132.P11536479177549530438

/-!
# A186133: Number of (n+1) X 2 0..2 arrays with no 2 X 2 subblock trace equal to any horizontal or vertical neighbor 2 X 2 subblock trace.

The programs for A186133, the canonical program `A186133.P17913723453934504524` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186133 has offset 1).

The definition of A186133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186133.P17913723453934504524

`ogf((81+315x+270x^2)/(1-3x-24x^2-24x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186133

/-- `ogf((81+315x+270x^2)/(1-3x-24x^2-24x^3))` -/
def P17913723453934504524.Spec : Prop :=
  ∀ n, P17913723453934504524.a n = A186133 (n + 1)

theorem P17913723453934504524.correct : P17913723453934504524.Spec := by
  intro n
  simp only [A186133, Nat.add_sub_cancel]

end A186133

/-! ## A186133.P1463497911651250424

`A186141(∑[n]+1)`
-/

namespace A186133.P1463497911651250424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186141 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186133.P1463497911651250424

namespace A186133

/-- `A186141(∑[n]+1)` -/
def P1463497911651250424.Spec : Prop :=
  ∀ n, P1463497911651250424.a n = A186133 (n + 1)

end A186133

/-! ## A186133.P18353668981695201931

`record[root(A186141(n+1), A008288(n))]`
-/

namespace A186133.P18353668981695201931
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186141 (n + 1) : ℝ) ^ (1 / (A008288 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186133.P18353668981695201931

namespace A186133

/-- `record[root(A186141(n+1), A008288(n))]` -/
def P18353668981695201931.Spec : Prop :=
  ∀ n, P18353668981695201931.a n = (A186133 (n + 1) : ℝ)

end A186133

/-! ## A186133.P826038909380632084

`record[root(A186141(n+1), A013609(n))]`
-/

namespace A186133.P826038909380632084
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186141 (n + 1) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186133.P826038909380632084

namespace A186133

/-- `record[root(A186141(n+1), A013609(n))]` -/
def P826038909380632084.Spec : Prop :=
  ∀ n, P826038909380632084.a n = (A186133 (n + 1) : ℝ)

end A186133

/-! ## A186133.P4213465542489747466

`record[root(A186141(n+1), A013612(n))]`
-/

namespace A186133.P4213465542489747466
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186141 (n + 1) : ℝ) ^ (1 / (A013612 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186133.P4213465542489747466

namespace A186133

/-- `record[root(A186141(n+1), A013612(n))]` -/
def P4213465542489747466.Spec : Prop :=
  ∀ n, P4213465542489747466.a n = (A186133 (n + 1) : ℝ)

end A186133

/-!
# A186134: Number of (n+1)X3 0..2 arrays with no 2X2 subblock trace equal to any horizontal or vertical neighbor 2X2 subblock trace.

The programs for A186134, there is no canonical definition to state claims against.
-/

/-! ## A186134.P3306691392372462697

`A186141(∑[n+1]+2)`
-/

namespace A186134.P3306691392372462697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186141 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186134.P3306691392372462697

/-! ## A186134.P17464519698922044019

`record[root(A186141(n+2), A013609(n))]`
-/

namespace A186134.P17464519698922044019
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186141 (n + 2) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186134.P17464519698922044019

/-! ## A186134.P1176117123333507283

`record[root(A186141(n+2), A013612(n))]`
-/

namespace A186134.P1176117123333507283
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186141 (n + 2) : ℝ) ^ (1 / (A013612 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186134.P1176117123333507283

/-! ## A186134.P7853172621889922161

`record[gcd(A002262(n), A186141(n+2))]`
-/

namespace A186134.P7853172621889922161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A186141 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186134.P7853172621889922161

/-! ## A186134.P3597365358101192989

`record[A186141(A133263(∑{e}[n+1, #]+1))]`
-/

namespace A186134.P3597365358101192989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186141 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186134.P3597365358101192989

/-!
# A186135: Number of (n+1)X4 0..2 arrays with no 2X2 subblock trace equal to any horizontal or vertical neighbor 2X2 subblock trace.

The programs for A186135, there is no canonical definition to state claims against.
-/

/-! ## A186135.P6111354351655484820

`A186141(∑[n+2]+4)`
-/

namespace A186135.P6111354351655484820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186141 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186135.P6111354351655484820

/-! ## A186135.P17308899328091290405

`lcm(2, A186141(A167614(n+1)))`
-/

namespace A186135.P17308899328091290405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186141 (A167614 (n + 1)).toNat)

end

end A186135.P17308899328091290405

/-! ## A186135.P12583524164423679119

`A186141(A167614(n+1))+A025443(n)`
-/

namespace A186135.P12583524164423679119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186141 (A167614 (n + 1)).toNat + A025443 n

end

end A186135.P12583524164423679119

/-! ## A186135.P6369535607058773355

`A186141(A167614(n+1))+A025469(n)`
-/

namespace A186135.P6369535607058773355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186141 (A167614 (n + 1)).toNat + A025469 n

end

end A186135.P6369535607058773355

/-! ## A186135.P3713236089177463042

`dr(A106400(n))*A186141(A167614(n+1))`
-/

namespace A186135.P3713236089177463042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A106400 n) : ℤ) * A186141 (A167614 (n + 1)).toNat

end

end A186135.P3713236089177463042

/-!
# A186136: Number of (n+1)X5 0..2 arrays with no 2X2 subblock trace equal to any horizontal or vertical neighbor 2X2 subblock trace.

The programs for A186136, there is no canonical definition to state claims against.
-/

/-! ## A186136.P3767110222846627940

`A186141(∑[n+3]+7)`
-/

namespace A186136.P3767110222846627940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186141 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186136.P3767110222846627940

/-!
# A186137: Number of (n+1) X 6 0..2 arrays with no 2 X 2 subblock trace equal to any horizontal or vertical neighbor 2 X 2 subblock trace.

The programs for A186137, there is no canonical definition to state claims against.
-/

/-! ## A186137.P3364332756820638453

`A186141(Δ[A264443(n)])`
-/

namespace A186137.P3364332756820638453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186141 (f1 (n + 1) - f1 n).toNat

end

end A186137.P3364332756820638453

/-! ## A186137.P239611584331386345

`A186141(A374005(n+1))`
-/

namespace A186137.P239611584331386345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186141 (A374005 (n + 1)).toNat

end

end A186137.P239611584331386345

/-! ## A186137.P11045706875654810088

`A186141(eq[4, A193592(n)])`
-/

namespace A186137.P11045706875654810088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186141 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186137.P11045706875654810088

/-! ## A186137.P6811253986240020390

`A186141(A264443(n+1)-A264443(n))`
-/

namespace A186137.P6811253986240020390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186141 (A264443 (n + 1) - A264443 n).toNat

end

end A186137.P6811253986240020390

/-!
# A186138: Number of (n+1)X7 0..2 arrays with no 2X2 subblock trace equal to any horizontal or vertical neighbor 2X2 subblock trace.

The programs for A186138, there is no canonical definition to state claims against.
-/

/-! ## A186138.P17513719396770909756

`A186141(A374007(n+1))`
-/

namespace A186138.P17513719396770909756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186141 (A374007 (n + 1)).toNat

end

end A186138.P17513719396770909756

/-! ## A186138.P801958193929562306

`A186141(eq[3, A219347(n)])`
-/

namespace A186138.P801958193929562306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186141 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186138.P801958193929562306

/-! ## A186138.P12625006944076483453

`A186141(eq[5, A193592(n)])`
-/

namespace A186138.P12625006944076483453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186141 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186138.P12625006944076483453

/-! ## A186138.P11732091666524373950

`A186141(A055999(n+3)+1)`
-/

namespace A186138.P11732091666524373950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186141 (A055999 (n + 3) + 1).toNat

end

end A186138.P11732091666524373950

/-! ## A186138.P4657743606247717840

`A186141(Δ[Δ[A006504(n+1)]])`
-/

namespace A186138.P4657743606247717840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186141 (f1 (n + 1) - f1 n).toNat

end

end A186138.P4657743606247717840

/-!
# A186139: Number of (n+1) X 8 0..2 arrays with no 2 X 2 subblock trace equal to any horizontal or vertical neighbor 2 X 2 subblock trace.

The programs for A186139, there is no canonical definition to state claims against.
-/

/-! ## A186139.P5360613466220962826

`A186141(eq[4, A219347(n)])`
-/

namespace A186139.P5360613466220962826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186141 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186139.P5360613466220962826

/-!
# A186140: Number of (n+1)X9 0..2 arrays with no 2X2 subblock trace equal to any horizontal or vertical neighbor 2X2 subblock trace.

The programs for A186140, there is no canonical definition to state claims against.
-/

/-! ## A186140.P17057810599484465058

`A186141(eq[5, A219347(n)])`
-/

namespace A186140.P17057810599484465058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186141 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186140.P17057810599484465058

/-!
# A186143: a(n) is the smallest suffix such that the numbers with k digits "3" prepended are primes for k = 1, 2, ..., n.

The programs for A186143, there is no canonical definition to state claims against.
-/

/-! ## A186143.P8763944761096034708

`A350214(n+1)^∑[∑{digits}[n, val(#+1, 7)]]`
-/

namespace A186143.P8763944761096034708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 1) 7).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350214 (n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186143.P8763944761096034708

/-! ## A186143.P17751425862152327049

`A350214(A005709(n)+6)`
-/

namespace A186143.P17751425862152327049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350214 (A005709 n + 6).toNat

end

end A186143.P17751425862152327049

/-! ## A186143.P9371076001522191521

`A350214(A174738(n)+7)`
-/

namespace A186143.P9371076001522191521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350214 (A174738 n + 7).toNat

end

end A186143.P9371076001522191521

/-! ## A186143.P3971982946176681993

`A350214(n+1)^A102679(n)`
-/

namespace A186143.P3971982946176681993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350214 (n + 1) : ℚ) ^ (A102679 n : ℤ)

end

end A186143.P3971982946176681993

/-! ## A186143.P17224965329178738270

`A350214(n+1)^A123577(n)`
-/

namespace A186143.P17224965329178738270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350214 (n + 1) : ℚ) ^ (A123577 n : ℤ)

end

end A186143.P17224965329178738270

/-!
# A186144: Number of elements in the symmetric group S_n whose distance from a fixed element is the group diameter under compositions of (1,2) and (1,2,...,n).

The programs for A186144, there is no canonical definition to state claims against.
-/

/-! ## A186144.P4816800394062158967

`a(n-2)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=3, a(4)=2, a(5)=1`
-/

namespace A186144.P4816800394062158967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 3, 2, 1] fun n a =>
  a (n - 2)

end

end A186144.P4816800394062158967

/-! ## A186144.P7342322246560894299

`or(1, n)%(abs(4-n)+3)`
-/

namespace A186144.P7342322246560894299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.lor 1 n : ℤ) (|4 - (n : ℤ)| + 3)

end

end A186144.P7342322246560894299

/-! ## A186144.P7057994313249340558

`T(n-1,k)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=3, a(4)=2, a(5)=1, a(6)=2, a(7)=1, a(8)=2, a(9)=1`
-/

namespace A186144.P7057994313249340558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 3, 2, 1, 2, 1, 2, 1] fun n a =>
  SequenceMachineLib.triUp a n

end

end A186144.P7057994313249340558

/-!
# A186145: Rank of n^2 when {i^2: i>=1} and {j^3: j>=1} are jointly ranked with i^2 before j^3 when i^2=j^3. Complement of A186146.

The programs for A186145, the canonical program `A186145.P3432135483742100102` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186145 has offset 1).

The definition of A186145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186145.P3432135483742100102

`n+1+floor(((n+1)²-1/2)^(1/3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186145

/-- `n+1+floor(((n+1)²-1/2)^(1/3))` -/
def P3432135483742100102.Spec : Prop :=
  ∀ n, P3432135483742100102.a n = A186145 (n + 1)

theorem P3432135483742100102.correct : P3432135483742100102.Spec := by
  intro n
  simp only [A186145, Nat.add_sub_cancel]

end A186145

/-! ## A186145.P14137575447556635488

`comp[A000093(n)+n]`
-/

namespace A186145.P14137575447556635488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A186145.P14137575447556635488

namespace A186145

/-- `comp[A000093(n)+n]` -/
def P14137575447556635488.Spec : Prop :=
  ∀ n, (P14137575447556635488.a n : ℤ) = A186145 (n + 1)

end A186145

/-! ## A186145.P6805696938464167378

`∑[char[∑[A035936(n)]]+1]`
-/

namespace A186145.P6805696938464167378
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186145.P6805696938464167378

namespace A186145

/-- `∑[char[∑[A035936(n)]]+1]` -/
def P6805696938464167378.Spec : Prop :=
  ∀ n, (P6805696938464167378.a n : ℤ) = A186145 (n + 1)

end A186145

/-! ## A186145.P14983456251607760977

`row(C(A135673(n+1), 2))`
-/

namespace A186145.P14983456251607760977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (Nat.choose (A135673 (n + 1)).toNat 2)

end

end A186145.P14983456251607760977

namespace A186145

/-- `row(C(A135673(n+1), 2))` -/
def P14983456251607760977.Spec : Prop :=
  ∀ n, (P14983456251607760977.a n : ℤ) = A186145 (n + 1)

end A186145

/-! ## A186145.P4460233798399759249

`A023443(A135673(n+1))`
-/

namespace A186145.P4460233798399759249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A135673 (n + 1)).toNat

end

end A186145.P4460233798399759249

namespace A186145

/-- `A023443(A135673(n+1))` -/
def P4460233798399759249.Spec : Prop :=
  ∀ n, P4460233798399759249.a n = A186145 (n + 1)

end A186145

/-! ## A186145.P13998574808217216823

`A002260(C(A135673(n+1), 2))`
-/

namespace A186145.P13998574808217216823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Nat.choose (A135673 (n + 1)).toNat 2)

end

end A186145.P13998574808217216823

namespace A186145

/-- `A002260(C(A135673(n+1), 2))` -/
def P13998574808217216823.Spec : Prop :=
  ∀ n, P13998574808217216823.a n = A186145 (n + 1)

end A186145

/-! ## A186145.P2459970966508236875

`A000196(A028391(A135673(n+1)²))`
-/

namespace A186145.P2459970966508236875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A028391 (A135673 (n + 1) ^ 2).toNat).toNat

end

end A186145.P2459970966508236875

namespace A186145

/-- `A000196(A028391(A135673(n+1)²))` -/
def P2459970966508236875.Spec : Prop :=
  ∀ n, P2459970966508236875.a n = A186145 (n + 1)

end A186145

/-!
# A186146: Rank of n^3 when {i^2: i>=1} and {j^3: j>=1} are jointly ranked with i^2 before j^3 when i^2=j^3. Complement of A186145.

The programs for A186146, the canonical program `A186146.P14723215069406253391` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186146 has offset 1).

The definition of A186146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186146.P14723215069406253391

`n+1+floor((n+1)^(3/2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186146

/-- `n+1+floor((n+1)^(3/2))` -/
def P14723215069406253391.Spec : Prop :=
  ∀ n, P14723215069406253391.a n = A186146 (n + 1)

theorem P14723215069406253391.correct : P14723215069406253391.Spec := by
  intro n
  simp only [A186146, Nat.add_sub_cancel]

end A186146

/-! ## A186146.P10818592232888600585

`∑[A035936(n)+1]`
-/

namespace A186146.P10818592232888600585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186146.P10818592232888600585

namespace A186146

/-- `∑[A035936(n)+1]` -/
def P10818592232888600585.Spec : Prop :=
  ∀ n, P10818592232888600585.a n = A186146 (n + 1)

end A186146

/-! ## A186146.P6677201560165738082

`∑[Δ[A077121(n)]+1]`
-/

namespace A186146.P6677201560165738082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186146.P6677201560165738082

namespace A186146

/-- `∑[Δ[A077121(n)]+1]` -/
def P6677201560165738082.Spec : Prop :=
  ∀ n, P6677201560165738082.a n = A186146 (n + 1)

end A186146

/-! ## A186146.P17626853856572493811

`ceil(sqrt(A000578(n+1)+1)+n)`
-/

namespace A186146.P17626853856572493811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000578 (n + 1) + 1 : ℝ) + (n : ℝ)⌉

end

end A186146.P17626853856572493811

namespace A186146

/-- `ceil(sqrt(A000578(n+1)+1)+n)` -/
def P17626853856572493811.Spec : Prop :=
  ∀ n, P17626853856572493811.a n = A186146 (n + 1)

end A186146

/-! ## A186146.P5819141178479832594

`∑[1+Δ[A000093(n)]]`
-/

namespace A186146.P5819141178479832594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186146.P5819141178479832594

namespace A186146

/-- `∑[1+Δ[A000093(n)]]` -/
def P5819141178479832594.Spec : Prop :=
  ∀ n, P5819141178479832594.a n = A186146 (n + 1)

end A186146

/-! ## A186146.P453588597255248783

`A000027(floor(sqrt((n+1)^3))+n+1)`
-/

namespace A186146.P453588597255248783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.sqrt ((n + 1) ^ 3) + n + 1)

end

end A186146.P453588597255248783

namespace A186146

/-- `A000027(floor(sqrt((n+1)^3))+n+1)` -/
def P453588597255248783.Spec : Prop :=
  ∀ n, P453588597255248783.a n = A186146 (n + 1)

end A186146

/-! ## A186146.P5645867341029337495

`A135673(A000093(n+1))`
-/

namespace A186146.P5645867341029337495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135673 (A000093 (n + 1)).toNat

end

end A186146.P5645867341029337495

namespace A186146

/-- `A135673(A000093(n+1))` -/
def P5645867341029337495.Spec : Prop :=
  ∀ n, P5645867341029337495.a n = A186146 (n + 1)

end A186146

/-! ## A186146.P985756388769240597

`A077113(A077121(A000093(n+1)+n))`
-/

namespace A186146.P985756388769240597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077113 (A077121 (A000093 (n + 1) + (n : ℤ)).toNat).toNat

end

end A186146.P985756388769240597

namespace A186146

/-- `A077113(A077121(A000093(n+1)+n))` -/
def P985756388769240597.Spec : Prop :=
  ∀ n, P985756388769240597.a n = A186146 (n + 1)

end A186146

/-! ## A186146.P13813920955593587615

`A100196(A077121(A077121(n+1)+n))`
-/

namespace A186146.P13813920955593587615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A077121 (A077121 (n + 1) + (n : ℤ)).toNat).toNat

end

end A186146.P13813920955593587615

namespace A186146

/-- `A100196(A077121(A077121(n+1)+n))` -/
def P13813920955593587615.Spec : Prop :=
  ∀ n, P13813920955593587615.a n = A186146 (n + 1)

end A186146

/-! ## A186146.P7007179329291520321

`A054846(A000093(A000093(n+1)+n+1))`
-/

namespace A186146.P7007179329291520321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A000093 (A000093 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A186146.P7007179329291520321

namespace A186146

/-- `A054846(A000093(A000093(n+1)+n+1))` -/
def P7007179329291520321.Spec : Prop :=
  ∀ n, P7007179329291520321.a n = A186146 (n + 1)

end A186146

/-!
# A186147: Rank of n^3 when {i^2: i>=1} and {j^3: j>=1} are jointly ranked with i^2 after j^3 when i^2=j^3. Complement of A135674.

The programs for A186147, the canonical program `A186147.P11973281192241848614` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186147 has offset 1).

The definition of A186147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186147.P11973281192241848614

`n+1+floor(((n+1)^3-1/2)^(1/2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186147

/-- `n+1+floor(((n+1)^3-1/2)^(1/2))` -/
def P11973281192241848614.Spec : Prop :=
  ∀ n, P11973281192241848614.a n = A186147 (n + 1)

theorem P11973281192241848614.correct : P11973281192241848614.Spec := by
  intro n
  simp only [A186147, Nat.add_sub_cancel]

end A186147

/-! ## A186147.P9242603355601618945

`ceil(sqrt((n+1)*(A005563(n)+1))+n)`
-/

namespace A186147.P9242603355601618945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n + 1 : ℤ) * (A005563 n + 1) : ℝ) + (n : ℝ)⌉

end

end A186147.P9242603355601618945

namespace A186147

/-- `ceil(sqrt((n+1)*(A005563(n)+1))+n)` -/
def P9242603355601618945.Spec : Prop :=
  ∀ n, P9242603355601618945.a n = A186147 (n + 1)

end A186147

/-! ## A186147.P13566855531741077358

`∑[A057427(n)+ceil((n+1)^(3/2))-ceil(n^(3/2))]`
-/

namespace A186147.P13566855531741077358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (⌈(n + 1 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌉ - ⌈(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌉)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186147.P13566855531741077358

namespace A186147

/-- `∑[A057427(n)+ceil((n+1)^(3/2))-ceil(n^(3/2))]` -/
def P13566855531741077358.Spec : Prop :=
  ∀ n, P13566855531741077358.a n = A186147 (n + 1)

end A186147

/-! ## A186147.P17475480068842955335

`∑[A065475(A144968(n))]`
-/

namespace A186147.P17475480068842955335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A144968 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186147.P17475480068842955335

namespace A186147

/-- `∑[A065475(A144968(n))]` -/
def P17475480068842955335.Spec : Prop :=
  ∀ n, P17475480068842955335.a n = A186147 (n + 1)

end A186147

/-! ## A186147.P788804145215526772

`A004526(A186156(2*(n+1)))`
-/

namespace A186147.P788804145215526772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A186156 (2 * (n + 1))).toNat

end

end A186147.P788804145215526772

namespace A186147

/-- `A004526(A186156(2*(n+1)))` -/
def P788804145215526772.Spec : Prop :=
  ∀ n, P788804145215526772.a n = A186147 (n + 1)

end A186147

/-! ## A186147.P7204247887123330723

`A065033(A186156(2*(n+1))-1)`
-/

namespace A186147.P7204247887123330723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A186156 (2 * (n + 1)) - 1).toNat

end

end A186147.P7204247887123330723

namespace A186147

/-- `A065033(A186156(2*(n+1))-1)` -/
def P7204247887123330723.Spec : Prop :=
  ∀ n, P7204247887123330723.a n = A186147 (n + 1)

end A186147

/-! ## A186147.P13391720154239564514

`A110654(A186156(2*(n+1))-1)`
-/

namespace A186147.P13391720154239564514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A186156 (2 * (n + 1)) - 1).toNat

end

end A186147.P13391720154239564514

namespace A186147

/-- `A110654(A186156(2*(n+1))-1)` -/
def P13391720154239564514.Spec : Prop :=
  ∀ n, P13391720154239564514.a n = A186147 (n + 1)

end A186147

/-! ## A186147.P11255787040568291022

`A008619(A186156(2*(n+1))-2)`
-/

namespace A186147.P11255787040568291022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A186156 (2 * (n + 1)) - 2).toNat

end

end A186147.P11255787040568291022

namespace A186147

/-- `A008619(A186156(2*(n+1))-2)` -/
def P11255787040568291022.Spec : Prop :=
  ∀ n, P11255787040568291022.a n = A186147 (n + 1)

end A186147

/-!
# A186148: Rank of (1/4)n^3 when {(1/4)i^3: i>=1} and {j^2>: j>=1} are jointly ranked with (1/4)i^3 before j^2 when (1/4)i^3=j^2. Complement of A186149.

The programs for A186148, the canonical program `A186148.P7142651603913865670` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186148 has offset 1).

The definition of A186148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186148.P7142651603913865670

`n+1+floor((1/4*(n+1)^3-1/8)^(1/2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186148

/-- `n+1+floor((1/4*(n+1)^3-1/8)^(1/2))` -/
def P7142651603913865670.Spec : Prop :=
  ∀ n, P7142651603913865670.a n = A186148 (n + 1)

theorem P7142651603913865670.correct : P7142651603913865670.Spec := by
  intro n
  simp only [A186148, Nat.add_sub_cancel]

end A186148

/-! ## A186148.P2728409494127029641

`round((A186147(n+1)+n)/2)`
-/

namespace A186148.P2728409494127029641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A186147 (n + 1) + (n : ℤ) : ℚ) / 2)

end

end A186148.P2728409494127029641

namespace A186148

/-- `round((A186147(n+1)+n)/2)` -/
def P2728409494127029641.Spec : Prop :=
  ∀ n, P2728409494127029641.a n = A186148 (n + 1)

end A186148

/-! ## A186148.P4396460598919789673

`floor((∑[Δ[A185549(n)]+1]+n)/2)`
-/

namespace A186148.P4396460598919789673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) : ℤ) : ℚ) / 2⌋

end

end A186148.P4396460598919789673

namespace A186148

/-- `floor((∑[Δ[A185549(n)]+1]+n)/2)` -/
def P4396460598919789673.Spec : Prop :=
  ∀ n, P4396460598919789673.a n = A186148 (n + 1)

end A186148

/-! ## A186148.P10696012097401451049

`A065033(ceil(sqrt((n+1)^3)+n)+n)`
-/

namespace A186148.P10696012097401451049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (⌈Real.sqrt ((n + 1) ^ 3 : ℝ) + (n : ℝ)⌉ + (n : ℤ)).toNat

end

end A186148.P10696012097401451049

namespace A186148

/-- `A065033(ceil(sqrt((n+1)^3)+n)+n)` -/
def P10696012097401451049.Spec : Prop :=
  ∀ n, P10696012097401451049.a n = A186148 (n + 1)

end A186148

/-! ## A186148.P14031167560817411159

`∑[A001221(A056239(3*(n+1))!)]`
-/

namespace A186148.P14031167560817411159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A056239 (3 * (n + 1))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186148.P14031167560817411159

namespace A186148

/-- `∑[A001221(A056239(3*(n+1))!)]` -/
def P14031167560817411159.Spec : Prop :=
  ∀ n, P14031167560817411159.a n = A186148 (n + 1)

end A186148

/-!
# A186149: Rank of n^2 when {(1/4)i^3: i>=1} and {j^2>: j>=1} are jointly ranked with (1/4)i^3 before j^2 when (1/4)i^3=j^2. Complement of A186148.

The programs for A186149, the canonical program `A186149.P3422230325142283927` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186149 has offset 1).

The definition of A186149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186149.P3422230325142283927

`n+1+floor((4*(n+1)²+1/2)^(1/3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186149

/-- `n+1+floor((4*(n+1)²+1/2)^(1/3))` -/
def P3422230325142283927.Spec : Prop :=
  ∀ n, P3422230325142283927.a n = A186149 (n + 1)

theorem P3422230325142283927.correct : P3422230325142283927.Spec := by
  intro n
  simp only [A186149, Nat.add_sub_cancel]

end A186149

/-! ## A186149.P7933366816166903557

`floor(A317440(n+1)^(2/3)+n+1)`
-/

namespace A186149.P7933366816166903557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A317440 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ) + (n + 1 : ℝ)⌋

end

end A186149.P7933366816166903557

namespace A186149

/-- `floor(A317440(n+1)^(2/3)+n+1)` -/
def P7933366816166903557.Spec : Prop :=
  ∀ n, P7933366816166903557.a n = A186149 (n + 1)

end A186149

/-! ## A186149.P13315801374938461717

`∑[Δ[A100196(2*n)]+1]`
-/

namespace A186149.P13315801374938461717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186149.P13315801374938461717

namespace A186149

/-- `∑[Δ[A100196(2*n)]+1]` -/
def P13315801374938461717.Spec : Prop :=
  ∀ n, P13315801374938461717.a n = A186149 (n + 1)

end A186149

/-! ## A186149.P7298886361797094669

`-xor(A100196(2*(n+1))+n, -1)`
-/

namespace A186149.P7298886361797094669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A100196 (2 * (n + 1)) + (n : ℤ)) (-1)

end

end A186149.P7298886361797094669

namespace A186149

/-- `-xor(A100196(2*(n+1))+n, -1)` -/
def P7298886361797094669.Spec : Prop :=
  ∀ n, P7298886361797094669.a n = A186149 (n + 1)

end A186149

/-! ## A186149.P8398662768875669946

`∑[A000522(Δ[A077113(2*n)])]`
-/

namespace A186149.P8398662768875669946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077113 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186149.P8398662768875669946

namespace A186149

/-- `∑[A000522(Δ[A077113(2*n)])]` -/
def P8398662768875669946.Spec : Prop :=
  ∀ n, P8398662768875669946.a n = A186149 (n + 1)

end A186149

/-! ## A186149.P7048888941933246116

`∑[A000034(Δ[A100196(2*n)])]`
-/

namespace A186149.P7048888941933246116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186149.P7048888941933246116

namespace A186149

/-- `∑[A000034(Δ[A100196(2*n)])]` -/
def P7048888941933246116.Spec : Prop :=
  ∀ n, P7048888941933246116.a n = A186149 (n + 1)

end A186149

/-! ## A186149.P14465367881698358253

`∑[A000079(Δ[A100196(2*n)])]`
-/

namespace A186149.P14465367881698358253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186149.P14465367881698358253

namespace A186149

/-- `∑[A000079(Δ[A100196(2*n)])]` -/
def P14465367881698358253.Spec : Prop :=
  ∀ n, P14465367881698358253.a n = A186149 (n + 1)

end A186149

/-! ## A186149.P6338759383026761708

`∑[A000267(Δ[A100196(2*n)])]`
-/

namespace A186149.P6338759383026761708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186149.P6338759383026761708

namespace A186149

/-- `∑[A000267(Δ[A100196(2*n)])]` -/
def P6338759383026761708.Spec : Prop :=
  ∀ n, P6338759383026761708.a n = A186149 (n + 1)

end A186149

/-! ## A186149.P363719258385099998

`∑[A076875(Δ[A100196(2*n)])]`
-/

namespace A186149.P363719258385099998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076875 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186149.P363719258385099998

namespace A186149

/-- `∑[A076875(Δ[A100196(2*n)])]` -/
def P363719258385099998.Spec : Prop :=
  ∀ n, P363719258385099998.a n = A186149 (n + 1)

end A186149

/-! ## A186149.P17855466937433371577

`A028310(A100196(2*(n+1))+n+1)`
-/

namespace A186149.P17855466937433371577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A100196 (2 * (n + 1)) + (n + 1 : ℤ)).toNat

end

end A186149.P17855466937433371577

namespace A186149

/-- `A028310(A100196(2*(n+1))+n+1)` -/
def P17855466937433371577.Spec : Prop :=
  ∀ n, P17855466937433371577.a n = A186149 (n + 1)

end A186149

/-!
# A186150: Rank of (1/4)n^3 when {(1/4)i^3: i>=1} and {j^2>: j>=1} are jointly ranked with (1/4)i^3 after j^2 when (1/4)i^3=j^2. Complement of A186151.

The programs for A186150, the canonical program `A186150.P950085431451964586` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186150 has offset 1).

The definition of A186150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186150.P85594684240885830

`∑[Δ[floor(n/2*sqrt(n))]+1]`
-/

namespace A186150.P85594684240885830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2 : ℝ) * Real.sqrt (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186150.P85594684240885830

namespace A186150

/-- `∑[Δ[floor(n/2*sqrt(n))]+1]` -/
def P85594684240885830.Spec : Prop :=
  ∀ n, P85594684240885830.a n = A186150 (n + 1)

end A186150

/-! ## A186150.P18059404959143981211

`floor(cosh(log(sqrt((n+1)^3)+2)))+n`
-/

namespace A186150.P18059404959143981211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (Real.sqrt ((n + 1) ^ 3 : ℝ) + 2))⌋ + (n : ℤ)

end

end A186150.P18059404959143981211

namespace A186150

/-- `floor(cosh(log(sqrt((n+1)^3)+2)))+n` -/
def P18059404959143981211.Spec : Prop :=
  ∀ n, P18059404959143981211.a n = A186150 (n + 1)

end A186150

/-! ## A186150.P950085431451964586

`floor(∑[A035936(n)+2]/2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186150

/-- `floor(∑[A035936(n)+2]/2)` -/
def P950085431451964586.Spec : Prop :=
  ∀ n, P950085431451964586.a n = A186150 (n + 1)

theorem P950085431451964586.correct : P950085431451964586.Spec := by
  intro n
  simp only [A186150, Nat.add_sub_cancel]

end A186150

/-! ## A186150.P12224525718359246293

`ceil(A077121(n+1)/2)+n`
-/

namespace A186150.P12224525718359246293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077121 (n + 1) : ℚ) / 2⌉ + (n : ℤ)

end

end A186150.P12224525718359246293

namespace A186150

/-- `ceil(A077121(n+1)/2)+n` -/
def P12224525718359246293.Spec : Prop :=
  ∀ n, P12224525718359246293.a n = A186150 (n + 1)

end A186150

/-! ## A186150.P8312187329444618292

`ceil((A186146(n+1)+n)/2)`
-/

namespace A186150.P8312187329444618292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A186146 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A186150.P8312187329444618292

namespace A186150

/-- `ceil((A186146(n+1)+n)/2)` -/
def P8312187329444618292.Spec : Prop :=
  ∀ n, P8312187329444618292.a n = A186150 (n + 1)

end A186150

/-! ## A186150.P8644821284385330656

`floor(A000093(n+1)/2+1+n)`
-/

namespace A186150.P8644821284385330656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000093 (n + 1) : ℚ) / 2 + 1 + (n : ℚ)⌋

end

end A186150.P8644821284385330656

namespace A186150

/-- `floor(A000093(n+1)/2+1+n)` -/
def P8644821284385330656.Spec : Prop :=
  ∀ n, P8644821284385330656.a n = A186150 (n + 1)

end A186150

/-! ## A186150.P6297014177769097927

`A008619(floor(sqrt((n+1)^3)))+n`
-/

namespace A186150.P6297014177769097927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Nat.sqrt ((n + 1) ^ 3)) + (n : ℤ)

end

end A186150.P6297014177769097927

namespace A186150

/-- `A008619(floor(sqrt((n+1)^3)))+n` -/
def P6297014177769097927.Spec : Prop :=
  ∀ n, P6297014177769097927.a n = A186150 (n + 1)

end A186150

/-! ## A186150.P13003092297913271076

`A004526(floor(sqrt((n+1)^3)))+n+1`
-/

namespace A186150.P13003092297913271076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Nat.sqrt ((n + 1) ^ 3)) + (n + 1 : ℤ)

end

end A186150.P13003092297913271076

namespace A186150

/-- `A004526(floor(sqrt((n+1)^3)))+n+1` -/
def P13003092297913271076.Spec : Prop :=
  ∀ n, P13003092297913271076.a n = A186150 (n + 1)

end A186150

/-! ## A186150.P9517585286135691930

`A123108(floor(sqrt((n+1)^3)))+n+1`
-/

namespace A186150.P9517585286135691930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Nat.sqrt ((n + 1) ^ 3)) + (n + 1 : ℤ)

end

end A186150.P9517585286135691930

namespace A186150

/-- `A123108(floor(sqrt((n+1)^3)))+n+1` -/
def P9517585286135691930.Spec : Prop :=
  ∀ n, P9517585286135691930.a n = A186150 (n + 1)

end A186150

/-! ## A186150.P7514848287140583272

`A004526(A000093(n+1))+1+n`
-/

namespace A186150.P7514848287140583272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000093 (n + 1)).toNat + 1 + (n : ℤ)

end

end A186150.P7514848287140583272

namespace A186150

/-- `A004526(A000093(n+1))+1+n` -/
def P7514848287140583272.Spec : Prop :=
  ∀ n, P7514848287140583272.a n = A186150 (n + 1)

end A186150

/-! ## A186150.P6873034977543271095

`A110654(A000093(n+1)+1)+n`
-/

namespace A186150.P6873034977543271095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000093 (n + 1) + 1).toNat + (n : ℤ)

end

end A186150.P6873034977543271095

namespace A186150

/-- `A110654(A000093(n+1)+1)+n` -/
def P6873034977543271095.Spec : Prop :=
  ∀ n, P6873034977543271095.a n = A186150 (n + 1)

end A186150

/-! ## A186150.P8372478085455017730

`A065033(∑[Δ[floor(n^(3/2))]+1]+n)`
-/

namespace A186150.P8372478085455017730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A186150.P8372478085455017730

namespace A186150

/-- `A065033(∑[Δ[floor(n^(3/2))]+1]+n)` -/
def P8372478085455017730.Spec : Prop :=
  ∀ n, P8372478085455017730.a n = A186150 (n + 1)

end A186150

/-! ## A186150.P4697129524071577194

`A004526(∑[A035936(n)+2])`
-/

namespace A186150.P4697129524071577194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186150.P4697129524071577194

namespace A186150

/-- `A004526(∑[A035936(n)+2])` -/
def P4697129524071577194.Spec : Prop :=
  ∀ n, P4697129524071577194.a n = A186150 (n + 1)

end A186150

/-! ## A186150.P927924583427163505

`A008619(A000093(n+1)+2*n)`
-/

namespace A186150.P927924583427163505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000093 (n + 1) + (2 * n : ℤ)).toNat

end

end A186150.P927924583427163505

namespace A186150

/-- `A008619(A000093(n+1)+2*n)` -/
def P927924583427163505.Spec : Prop :=
  ∀ n, P927924583427163505.a n = A186150 (n + 1)

end A186150

/-! ## A186150.P5272609656425257472

`A110654(A005408(n)+∑[A035936(n)])`
-/

namespace A186150.P5272609656425257472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A005408 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186150.P5272609656425257472

namespace A186150

/-- `A110654(A005408(n)+∑[A035936(n)])` -/
def P5272609656425257472.Spec : Prop :=
  ∀ n, P5272609656425257472.a n = A186150 (n + 1)

end A186150

/-! ## A186150.P2996616771483730557

`A110654(A005408(n)+A000093(n+1))`
-/

namespace A186150.P2996616771483730557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A005408 n + A000093 (n + 1)).toNat

end

end A186150.P2996616771483730557

namespace A186150

/-- `A110654(A005408(n)+A000093(n+1))` -/
def P2996616771483730557.Spec : Prop :=
  ∀ n, P2996616771483730557.a n = A186150 (n + 1)

end A186150

/-! ## A186150.P6261301006054642517

`A002265(A135061(n+1))+1+n`
-/

namespace A186150.P6261301006054642517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A135061 (n + 1)).toNat + 1 + (n : ℤ)

end

end A186150.P6261301006054642517

namespace A186150

/-- `A002265(A135061(n+1))+1+n` -/
def P6261301006054642517.Spec : Prop :=
  ∀ n, P6261301006054642517.a n = A186150 (n + 1)

end A186150

/-!
# A186151: Rank of n^2 when {(1/4)i^3: i>=1} and {j^2>: j>=1} are jointly ranked with (1/4)i^3 after j^2 when (1/4)i^3=j^2. Complement of A186150.

The programs for A186151, the canonical program `A186151.P2997314054131285925` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186151 has offset 1).

The definition of A186151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186151.P2997314054131285925

`comp[floor(n*(sqrt(n)+2)/2)]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186151

/-- `comp[floor(n*(sqrt(n)+2)/2)]` -/
def P2997314054131285925.Spec : Prop :=
  ∀ n, (P2997314054131285925.a n : ℤ) = A186151 (n + 1)

theorem P2997314054131285925.correct : P2997314054131285925.Spec := by
  intro n
  simp only [A186151, Nat.add_sub_cancel]

end A186151

/-! ## A186151.P16176149540870683529

`∑[2-char[A185547(n+1)]]`
-/

namespace A186151.P16176149540870683529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185547 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186151.P16176149540870683529

namespace A186151

/-- `∑[2-char[A185547(n+1)]]` -/
def P16176149540870683529.Spec : Prop :=
  ∀ n, P16176149540870683529.a n = A186151 (n + 1)

end A186151

/-! ## A186151.P753379130152368028

`comp[A186150(n+1)-1]+1`
-/

namespace A186151.P753379130152368028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186150 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186151.P753379130152368028

namespace A186151

/-- `comp[A186150(n+1)-1]+1` -/
def P753379130152368028.Spec : Prop :=
  ∀ n, (P753379130152368028.a n : ℤ) = A186151 (n + 1)

end A186151

/-! ## A186151.P3391150577945664932

`comp[A185546(n+1)+n]+2`
-/

namespace A186151.P3391150577945664932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185546 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A186151.P3391150577945664932

namespace A186151

/-- `comp[A185546(n+1)+n]+2` -/
def P3391150577945664932.Spec : Prop :=
  ∀ n, (P3391150577945664932.a n : ℤ) = A186151 (n + 1)

end A186151

/-! ## A186151.P2222264432804030492

`∑[char[floor(A000093(n)/2)]+1]`
-/

namespace A186151.P2222264432804030492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000093 n : ℚ) / 2⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186151.P2222264432804030492

namespace A186151

/-- `∑[char[floor(A000093(n)/2)]+1]` -/
def P2222264432804030492.Spec : Prop :=
  ∀ n, (P2222264432804030492.a n : ℤ) = A186151 (n + 1)

end A186151

/-! ## A186151.P12365149371527135087

`A186145(2*(n+1))-(n+1)`
-/

namespace A186151.P12365149371527135087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186145 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A186151.P12365149371527135087

namespace A186151

/-- `A186145(2*(n+1))-(n+1)` -/
def P12365149371527135087.Spec : Prop :=
  ∀ n, P12365149371527135087.a n = A186151 (n + 1)

end A186151

/-! ## A186151.P9444955144478315920

`A135673(2*(n+1))-(n+2)`
-/

namespace A186151.P9444955144478315920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135673 (2 * (n + 1)) - (n + 2 : ℤ)

end

end A186151.P9444955144478315920

namespace A186151

/-- `A135673(2*(n+1))-(n+2)` -/
def P9444955144478315920.Spec : Prop :=
  ∀ n, P9444955144478315920.a n = A186151 (n + 1)

end A186151

/-! ## A186151.P14498514229577184084

`2*n+n+2-A135672(2*(n+1))`
-/

namespace A186151.P14498514229577184084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + (n + 2) : ℤ) - A135672 (2 * (n + 1))

end

end A186151.P14498514229577184084

namespace A186151

/-- `2*n+n+2-A135672(2*(n+1))` -/
def P14498514229577184084.Spec : Prop :=
  ∀ n, P14498514229577184084.a n = A186151 (n + 1)

end A186151

/-! ## A186151.P5538356115817454024

`A135673(A317440(n+1))-2-n`
-/

namespace A186151.P5538356115817454024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135673 (A317440 (n + 1)).toNat - 2 - (n : ℤ)

end

end A186151.P5538356115817454024

namespace A186151

/-- `A135673(A317440(n+1))-2-n` -/
def P5538356115817454024.Spec : Prop :=
  ∀ n, P5538356115817454024.a n = A186151 (n + 1)

end A186151

/-! ## A186151.P14624776255666693759

`A008585(n+1)-(A135672(2*(n+1))+1)`
-/

namespace A186151.P14624776255666693759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n + 1) - (A135672 (2 * (n + 1)) + 1)

end

end A186151.P14624776255666693759

namespace A186151

/-- `A008585(n+1)-(A135672(2*(n+1))+1)` -/
def P14624776255666693759.Spec : Prop :=
  ∀ n, P14624776255666693759.a n = A186151 (n + 1)

end A186151

/-! ## A186151.P8722863907000056639

`A001478(2*(n+1))+A135673(2*(n+1))+n`
-/

namespace A186151.P8722863907000056639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (2 * (n + 1)) + (A135673 (2 * (n + 1)) + (n : ℤ))

end

end A186151.P8722863907000056639

namespace A186151

/-- `A001478(2*(n+1))+A135673(2*(n+1))+n` -/
def P8722863907000056639.Spec : Prop :=
  ∀ n, P8722863907000056639.a n = A186151 (n + 1)

end A186151

/-! ## A186151.P11036995651258634763

`A000010(2*(n+1))-A079531(2*(n+1))+n`
-/

namespace A186151.P11036995651258634763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1)) - A079531 (2 * (n + 1)) + (n : ℤ)

end

end A186151.P11036995651258634763

namespace A186151

/-- `A000010(2*(n+1))-A079531(2*(n+1))+n` -/
def P11036995651258634763.Spec : Prop :=
  ∀ n, P11036995651258634763.a n = A186151 (n + 1)

end A186151

/-! ## A186151.P1232164003337272574

`A008585(n)+2-A135672(A103517(n))`
-/

namespace A186151.P1232164003337272574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + (2 - A135672 (A103517 n).toNat)

end

end A186151.P1232164003337272574

namespace A186151

/-- `A008585(n)+2-A135672(A103517(n))` -/
def P1232164003337272574.Spec : Prop :=
  ∀ n, P1232164003337272574.a n = A186151 (n + 1)

end A186151

/-! ## A186151.P2283335279827481788

`A121536(2*n+3)+n`
-/

namespace A186151.P2283335279827481788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121536 (2 * n + 3) + (n : ℤ)

end

end A186151.P2283335279827481788

namespace A186151

/-- `A121536(2*n+3)+n` -/
def P2283335279827481788.Spec : Prop :=
  ∀ n, P2283335279827481788.a n = A186151 (n + 1)

end A186151

/-! ## A186151.P17942354918241462039

`A003059(A134917(2*(n+1)))+n`
-/

namespace A186151.P17942354918241462039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A134917 (2 * (n + 1))).toNat + (n : ℤ)

end

end A186151.P17942354918241462039

namespace A186151

/-- `A003059(A134917(2*(n+1)))+n` -/
def P17942354918241462039.Spec : Prop :=
  ∀ n, P17942354918241462039.a n = A186151 (n + 1)

end A186151

/-!
# A186152: Rank of (1/8)n^3 when {(1/8)i^3: i>=1} and {j^2>: j>=1} are jointly ranked with (1/8)i^3 before j^2 when (1/8)i^3=j^2. Complement of A186153.

The programs for A186152, the canonical program `A186152.P407754518640860367` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186152 has offset 1).

The definition of A186152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186152.P407754518640860367

`n+1+floor((1/8*(n+1)^3-1/16)^(1/2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186152

/-- `n+1+floor((1/8*(n+1)^3-1/16)^(1/2))` -/
def P407754518640860367.Spec : Prop :=
  ∀ n, P407754518640860367.a n = A186152 (n + 1)

theorem P407754518640860367.correct : P407754518640860367.Spec := by
  intro n
  simp only [A186152, Nat.add_sub_cancel]

end A186152

/-! ## A186152.P5353718326049583536

`round((A186156(n+1)+n)/2)`
-/

namespace A186152.P5353718326049583536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A186156 (n + 1) + (n : ℤ) : ℚ) / 2)

end

end A186152.P5353718326049583536

namespace A186152

/-- `round((A186156(n+1)+n)/2)` -/
def P5353718326049583536.Spec : Prop :=
  ∀ n, P5353718326049583536.a n = A186152 (n + 1)

end A186152

/-! ## A186152.P1182389502217696922

`A065033(A186156(n+1)+n)`
-/

namespace A186152.P1182389502217696922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A186156 (n + 1) + (n : ℤ)).toNat

end

end A186152.P1182389502217696922

namespace A186152

/-- `A065033(A186156(n+1)+n)` -/
def P1182389502217696922.Spec : Prop :=
  ∀ n, P1182389502217696922.a n = A186152 (n + 1)

end A186152

/-! ## A186152.P13627265219290880586

`A110654(A186156(n+1)+n)`
-/

namespace A186152.P13627265219290880586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A186156 (n + 1) + (n : ℤ)).toNat

end

end A186152.P13627265219290880586

namespace A186152

/-- `A110654(A186156(n+1)+n)` -/
def P13627265219290880586.Spec : Prop :=
  ∀ n, P13627265219290880586.a n = A186152 (n + 1)

end A186152

/-! ## A186152.P11201045496683233947

`A004526(A186156(n+1)+1+n)`
-/

namespace A186152.P11201045496683233947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A186156 (n + 1) + 1 + (n : ℤ)).toNat

end

end A186152.P11201045496683233947

namespace A186152

/-- `A004526(A186156(n+1)+1+n)` -/
def P11201045496683233947.Spec : Prop :=
  ∀ n, P11201045496683233947.a n = A186152 (n + 1)

end A186152

/-! ## A186152.P13296333091544662152

`A008619(A186156(n+1)-1+n)`
-/

namespace A186152.P13296333091544662152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A186156 (n + 1) - 1 + (n : ℤ)).toNat

end

end A186152.P13296333091544662152

namespace A186152

/-- `A008619(A186156(n+1)-1+n)` -/
def P13296333091544662152.Spec : Prop :=
  ∀ n, P13296333091544662152.a n = A186152 (n + 1)

end A186152

/-!
# A186153: Rank of n^2 when {(1/8)i^3: i>=1} and {j^2>: j>=1} are jointly ranked with (1/8)i^3 before j^2 when (1/8)i^3=j^2. Complement of A186152.

The programs for A186153, the canonical program `A186153.P4714481738681227905` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186153 has offset 1).

The definition of A186153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186153.P4714481738681227905

`ceil(2*root((n+1)²+1, 3)+n)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186153

/-- `ceil(2*root((n+1)²+1, 3)+n)` -/
def P4714481738681227905.Spec : Prop :=
  ∀ n, P4714481738681227905.a n = A186153 (n + 1)

theorem P4714481738681227905.correct : P4714481738681227905.Spec := by
  intro n
  simp only [A186153, Nat.add_sub_cancel]

end A186153

/-! ## A186153.P6091530631144722919

`comp[A186152(n+1)-1]+1`
-/

namespace A186153.P6091530631144722919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186152 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186153.P6091530631144722919

namespace A186153

/-- `comp[A186152(n+1)-1]+1` -/
def P6091530631144722919.Spec : Prop :=
  ∀ n, (P6091530631144722919.a n : ℤ) = A186153 (n + 1)

end A186153

/-! ## A186153.P17537185210667770317

`ceil(root(A008527(n+1), 3))+n`
-/

namespace A186153.P17537185210667770317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008527 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉ + (n : ℤ)

end

end A186153.P17537185210667770317

namespace A186153

/-- `ceil(root(A008527(n+1), 3))+n` -/
def P17537185210667770317.Spec : Prop :=
  ∀ n, P17537185210667770317.a n = A186153 (n + 1)

end A186153

/-! ## A186153.P17871010578024594938

`Δ[A048766(n)]+ceil(2*(n+1)^(2/3)+n)`
-/

namespace A186153.P17871010578024594938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌈2 * (n + 1 : ℝ) ^ ((2 : ℚ) / 3 : ℝ) + (n : ℝ)⌉

end

end A186153.P17871010578024594938

namespace A186153

/-- `Δ[A048766(n)]+ceil(2*(n+1)^(2/3)+n)` -/
def P17871010578024594938.Spec : Prop :=
  ∀ n, P17871010578024594938.a n = A186153 (n + 1)

end A186153

/-! ## A186153.P7158847083537390078

`A186155(n+1)+Δ[A048766(n)]`
-/

namespace A186153.P7158847083537390078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186155 (n + 1) + (f1 (n + 1) - f1 n)

end

end A186153.P7158847083537390078

namespace A186153

/-- `A186155(n+1)+Δ[A048766(n)]` -/
def P7158847083537390078.Spec : Prop :=
  ∀ n, P7158847083537390078.a n = A186153 (n + 1)

end A186153

/-! ## A186153.P5627256919013609004

`A186155(n+1)+A010057(n+1)`
-/

namespace A186153.P5627256919013609004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186155 (n + 1) + A010057 (n + 1)

end

end A186153.P5627256919013609004

namespace A186153

/-- `A186155(n+1)+A010057(n+1)` -/
def P5627256919013609004.Spec : Prop :=
  ∀ n, P5627256919013609004.a n = A186153 (n + 1)

theorem P5627256919013609004.correct : P5627256919013609004.Spec := by
  intro n
  simp only [A186153, Nat.add_sub_cancel, A186153.P5627256919013609004.a, A186153.P4714481738681227905.a, A010057, A010057.P3441922768549040012.a, A186155, A186155.P11739038206239790895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A186153

/-! ## A186153.P6590642029945108836

`Δ[A134914(n+1)]+ceil(2*(n+1)^(2/3)+n)`
-/

namespace A186153.P6590642029945108836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌈2 * (n + 1 : ℝ) ^ ((2 : ℚ) / 3 : ℝ) + (n : ℝ)⌉

end

end A186153.P6590642029945108836

namespace A186153

/-- `Δ[A134914(n+1)]+ceil(2*(n+1)^(2/3)+n)` -/
def P6590642029945108836.Spec : Prop :=
  ∀ n, P6590642029945108836.a n = A186153 (n + 1)

end A186153

/-! ## A186153.P6398565395741562678

`A020725(comp[A186152(n+1)-1])`
-/

namespace A186153.P6398565395741562678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186152 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A186153.P6398565395741562678

namespace A186153

/-- `A020725(comp[A186152(n+1)-1])` -/
def P6398565395741562678.Spec : Prop :=
  ∀ n, P6398565395741562678.a n = A186153 (n + 1)

end A186153

/-! ## A186153.P9203962654728131966

`A186157(2*(n+1))-(n+1)`
-/

namespace A186153.P9203962654728131966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186157 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A186153.P9203962654728131966

namespace A186153

/-- `A186157(2*(n+1))-(n+1)` -/
def P9203962654728131966.Spec : Prop :=
  ∀ n, P9203962654728131966.a n = A186153 (n + 1)

end A186153

/-!
# A186154: Rank of (1/8)n^3 when {(1/8)i^3: i>=1} and {j^2>: j>=1} are jointly ranked with (1/8)i^3 after j^2 when (1/8)i^3=j^2. Complement of A186155.

The programs for A186154, the canonical program `A186154.P9435116740078178157` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186154 has offset 1).

The definition of A186154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186154.P9435116740078178157

`∑[Δ[floor((n/2)^(3/2))]+1]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186154

/-- `∑[Δ[floor((n/2)^(3/2))]+1]` -/
def P9435116740078178157.Spec : Prop :=
  ∀ n, P9435116740078178157.a n = A186154 (n + 1)

theorem P9435116740078178157.correct : P9435116740078178157.Spec := by
  intro n
  simp only [A186154, Nat.add_sub_cancel]

end A186154

/-! ## A186154.P5748441334520939373

`floor(sqrt(((n+1)/2)^3))-xor(n, -1)`
-/

namespace A186154.P5748441334520939373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((n + 1 : ℚ) / 2) ^ 3 : ℝ)⌋ - Int.xor (n : ℤ) (-1)

end

end A186154.P5748441334520939373

namespace A186154

/-- `floor(sqrt(((n+1)/2)^3))-xor(n, -1)` -/
def P5748441334520939373.Spec : Prop :=
  ∀ n, P5748441334520939373.a n = A186154 (n + 1)

end A186154

/-! ## A186154.P5533366511234012050

`floor(sqrt(A212747(n))/2+1+n)`
-/

namespace A186154.P5533366511234012050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A212747 n : ℝ) / 2 + 1 + (n : ℝ)⌋

end

end A186154.P5533366511234012050

namespace A186154

/-- `floor(sqrt(A212747(n))/2+1+n)` -/
def P5533366511234012050.Spec : Prop :=
  ∀ n, P5533366511234012050.a n = A186154 (n + 1)

end A186154

/-! ## A186154.P12323373692925101858

`A186152(n+1)+char[2*n²-1]`
-/

namespace A186154.P12323373692925101858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186152 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A186154.P12323373692925101858

namespace A186154

/-- `A186152(n+1)+char[2*n²-1]` -/
def P12323373692925101858.Spec : Prop :=
  ∀ n, P12323373692925101858.a n = A186154 (n + 1)

end A186154

/-! ## A186154.P17781313531844290627

`A028310(n+1)+floor(sqrt(((n+1)/2)^3))`
-/

namespace A186154.P17781313531844290627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1) + ⌊Real.sqrt (((n + 1 : ℚ) / 2) ^ 3 : ℝ)⌋

end

end A186154.P17781313531844290627

namespace A186154

/-- `A028310(n+1)+floor(sqrt(((n+1)/2)^3))` -/
def P17781313531844290627.Spec : Prop :=
  ∀ n, P17781313531844290627.a n = A186154 (n + 1)

end A186154

/-! ## A186154.P8783398771323184874

`floor(sqrt(((n+1)/2)^3))-A001478(n+1)`
-/

namespace A186154.P8783398771323184874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((n + 1 : ℚ) / 2) ^ 3 : ℝ)⌋ - A001478 (n + 1)

end

end A186154.P8783398771323184874

namespace A186154

/-- `floor(sqrt(((n+1)/2)^3))-A001478(n+1)` -/
def P8783398771323184874.Spec : Prop :=
  ∀ n, P8783398771323184874.a n = A186154 (n + 1)

end A186154

/-! ## A186154.P6241839562017102632

`char[A056220(n)]+ceil(((n+1)/A040000(n))^(3/2))+n`
-/

namespace A186154.P6241839562017102632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (⌈((n + 1 : ℚ) / (A040000 n : ℚ) : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌉ + (n : ℤ))

end

end A186154.P6241839562017102632

namespace A186154

/-- `char[A056220(n)]+ceil(((n+1)/A040000(n))^(3/2))+n` -/
def P6241839562017102632.Spec : Prop :=
  ∀ n, P6241839562017102632.a n = A186154 (n + 1)

end A186154

/-! ## A186154.P7077012793564193740

`A010052(2*(n+1))+A186152(n+1)`
-/

namespace A186154.P7077012793564193740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * (n + 1)) + A186152 (n + 1)

end

end A186154.P7077012793564193740

namespace A186154

/-- `A010052(2*(n+1))+A186152(n+1)` -/
def P7077012793564193740.Spec : Prop :=
  ∀ n, P7077012793564193740.a n = A186154 (n + 1)

end A186154

/-! ## A186154.P14304754749237266395

`floor(A000093(2*(n+1))/8)+n+1`
-/

namespace A186154.P14304754749237266395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000093 (2 * (n + 1)) : ℚ) / 8⌋ + (n + 1 : ℤ)

end

end A186154.P14304754749237266395

namespace A186154

/-- `floor(A000093(2*(n+1))/8)+n+1` -/
def P14304754749237266395.Spec : Prop :=
  ∀ n, P14304754749237266395.a n = A186154 (n + 1)

end A186154

/-! ## A186154.P13295288774431860035

`A110654(A186156(n+1)+n)+char[A056220(n)]`
-/

namespace A186154.P13295288774431860035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A186156 (n + 1) + (n : ℤ)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A186154.P13295288774431860035

namespace A186154

/-- `A110654(A186156(n+1)+n)+char[A056220(n)]` -/
def P13295288774431860035.Spec : Prop :=
  ∀ n, P13295288774431860035.a n = A186154 (n + 1)

end A186154

/-!
# A186155: Rank of n^2 when {(1/8)i^3: i>=1} and {j^2>: j>=1} are jointly ranked with (1/8)i^3 after j^2 when (1/8)i^3=j^2. Complement of A186154.

The programs for A186155, the canonical program `A186155.P11739038206239790895` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186155 has offset 1).

The definition of A186155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186155.P10838062285700410581

`comp[floor(sqrt((n/2)^3))+n]`
-/

namespace A186155.P10838062285700410581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((n : ℚ) / 2) ^ 3 : ℝ)⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A186155.P10838062285700410581

namespace A186155

/-- `comp[floor(sqrt((n/2)^3))+n]` -/
def P10838062285700410581.Spec : Prop :=
  ∀ n, (P10838062285700410581.a n : ℤ) = A186155 (n + 1)

end A186155

/-! ## A186155.P1741037683608934486

`comp[A186154(n+1)-1]+1`
-/

namespace A186155.P1741037683608934486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186154 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186155.P1741037683608934486

namespace A186155

/-- `comp[A186154(n+1)-1]+1` -/
def P1741037683608934486.Spec : Prop :=
  ∀ n, (P1741037683608934486.a n : ℤ) = A186155 (n + 1)

end A186155

/-! ## A186155.P12762030028937586131

`floor(2*(n+1)^(2/3)+n+1)-Δ[A048766(n)]`
-/

namespace A186155.P12762030028937586131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (n + 1 : ℝ) ^ ((2 : ℚ) / 3 : ℝ) + (n + 1 : ℝ)⌋ - (f1 (n + 1) - f1 n)

end

end A186155.P12762030028937586131

namespace A186155

/-- `floor(2*(n+1)^(2/3)+n+1)-Δ[A048766(n)]` -/
def P12762030028937586131.Spec : Prop :=
  ∀ n, P12762030028937586131.a n = A186155 (n + 1)

end A186155

/-! ## A186155.P11739038206239790895

`A186153(n+1)-A010057(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186155

/-- `A186153(n+1)-A010057(n+1)` -/
def P11739038206239790895.Spec : Prop :=
  ∀ n, P11739038206239790895.a n = A186155 (n + 1)

theorem P11739038206239790895.correct : P11739038206239790895.Spec := by
  intro n
  simp only [A186155, Nat.add_sub_cancel]

end A186155

/-! ## A186155.P15282734595010957151

`A186153(n+1)-A004530(A056552(n+1))`
-/

namespace A186155.P15282734595010957151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186153 (n + 1) - A004530 (A056552 (n + 1)).toNat

end

end A186155.P15282734595010957151

namespace A186155

/-- `A186153(n+1)-A004530(A056552(n+1))` -/
def P15282734595010957151.Spec : Prop :=
  ∀ n, P15282734595010957151.a n = A186155 (n + 1)

end A186155

/-! ## A186155.P17826305032759083001

`A048766(n)+A186153(n+1)-A048766(n+1)`
-/

namespace A186155.P17826305032759083001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n + (A186153 (n + 1) - A048766 (n + 1))

end

end A186155.P17826305032759083001

namespace A186155

/-- `A048766(n)+A186153(n+1)-A048766(n+1)` -/
def P17826305032759083001.Spec : Prop :=
  ∀ n, P17826305032759083001.a n = A186155 (n + 1)

end A186155

/-! ## A186155.P11385545085017307386

`A186153(n+1)-Δ[A134914(n+1)]`
-/

namespace A186155.P11385545085017307386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186153 (n + 1) - (f1 (n + 1) - f1 n)

end

end A186155.P11385545085017307386

namespace A186155

/-- `A186153(n+1)-Δ[A134914(n+1)]` -/
def P11385545085017307386.Spec : Prop :=
  ∀ n, P11385545085017307386.a n = A186155 (n + 1)

end A186155

/-!
# A186156: Rank of n^3 when {i^3: i>=1} and {2j^2: j>=1} are jointly ranked with i^3 before 2j^2 when i^3=2j^2. Complement of A186157.

The programs for A186156, the canonical program `A186156.P9329074894696547478` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186156 has offset 1).

The definition of A186156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186156.P9329074894696547478

`n+1+floor((((n+1)^3-1/2)/2)^(1/2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186156

/-- `n+1+floor((((n+1)^3-1/2)/2)^(1/2))` -/
def P9329074894696547478.Spec : Prop :=
  ∀ n, P9329074894696547478.a n = A186156 (n + 1)

theorem P9329074894696547478.correct : P9329074894696547478.Spec := by
  intro n
  simp only [A186156, Nat.add_sub_cancel]

end A186156

/-! ## A186156.P908617470970269728

`ceil(sqrt(A184632(n+1))+n)`
-/

namespace A186156.P908617470970269728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A184632 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A186156.P908617470970269728

namespace A186156

/-- `ceil(sqrt(A184632(n+1))+n)` -/
def P908617470970269728.Spec : Prop :=
  ∀ n, P908617470970269728.a n = A186156 (n + 1)

end A186156

/-! ## A186156.P10073656072424913184

`ceil(sqrt(floor((A333381(3*n+1)+(n+1)^3)/2))+n)`
-/

namespace A186156.P10073656072424913184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (⌊(A333381 (3 * n + 1) + ((n + 1) ^ 3 : ℤ) : ℚ) / 2⌋ : ℝ) + (n : ℝ)⌉

end

end A186156.P10073656072424913184

namespace A186156

/-- `ceil(sqrt(floor((A333381(3*n+1)+(n+1)^3)/2))+n)` -/
def P10073656072424913184.Spec : Prop :=
  ∀ n, P10073656072424913184.a n = A186156 (n + 1)

end A186156

/-! ## A186156.P15297380231703484311

`A263846(A212766(n+1))`
-/

namespace A186156.P15297380231703484311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (A212766 (n + 1)).toNat

end

end A186156.P15297380231703484311

namespace A186156

/-- `A263846(A212766(n+1))` -/
def P15297380231703484311.Spec : Prop :=
  ∀ n, P15297380231703484311.a n = A186156 (n + 1)

end A186156

/-! ## A186156.P5453360731055872122

`∑[A001221(A151287(n))+1]`
-/

namespace A186156.P5453360731055872122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A151287 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186156.P5453360731055872122

namespace A186156

/-- `∑[A001221(A151287(n))+1]` -/
def P5453360731055872122.Spec : Prop :=
  ∀ n, P5453360731055872122.a n = A186156 (n + 1)

end A186156

/-!
# A186157: Rank of 2n^2 when {i^3: i>=1} and {2j^2: j>=1} are jointly ranked with i^3 before 2j^2 when i^3=2j^2. Complement of A186156.

The programs for A186157, the canonical program `A186157.P7077838692169489391` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186157 has offset 1).

The definition of A186157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186157.P7077838692169489391

`floor(root(2*(n+1)², 3)+n+1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186157

/-- `floor(root(2*(n+1)², 3)+n+1)` -/
def P7077838692169489391.Spec : Prop :=
  ∀ n, P7077838692169489391.a n = A186157 (n + 1)

theorem P7077838692169489391.correct : P7077838692169489391.Spec := by
  intro n
  simp only [A186157, Nat.add_sub_cancel]

end A186157

/-! ## A186157.P18390471692279832628

`comp[A186156(n+1)-1]+1`
-/

namespace A186157.P18390471692279832628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186156 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186157.P18390471692279832628

namespace A186157

/-- `comp[A186156(n+1)-1]+1` -/
def P18390471692279832628.Spec : Prop :=
  ∀ n, (P18390471692279832628.a n : ℤ) = A186157 (n + 1)

end A186157

/-! ## A186157.P5965212313988646832

`ceil(root(A005893(n+1), 3)+n)`
-/

namespace A186157.P5965212313988646832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005893 (n + 1) : ℝ) ^ (1 / (3 : ℝ)) + (n : ℝ)⌉

end

end A186157.P5965212313988646832

namespace A186157

/-- `ceil(root(A005893(n+1), 3)+n)` -/
def P5965212313988646832.Spec : Prop :=
  ∀ n, P5965212313988646832.a n = A186157 (n + 1)

end A186157

/-! ## A186157.P115778707568495504

`ceil((∑[Δ[A100196(4*n)]+1]+n)/2)`
-/

namespace A186157.P115778707568495504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (4 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) : ℤ) : ℚ) / 2⌉

end

end A186157.P115778707568495504

namespace A186157

/-- `ceil((∑[Δ[A100196(4*n)]+1]+n)/2)` -/
def P115778707568495504.Spec : Prop :=
  ∀ n, P115778707568495504.a n = A186157 (n + 1)

end A186157

/-! ## A186157.P12934013565629643335

`∑[Δ[A048766(2*n²)]+1]`
-/

namespace A186157.P12934013565629643335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (2 * n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186157.P12934013565629643335

namespace A186157

/-- `∑[Δ[A048766(2*n²)]+1]` -/
def P12934013565629643335.Spec : Prop :=
  ∀ n, P12934013565629643335.a n = A186157 (n + 1)

end A186157

/-! ## A186157.P16943069954234198727

`A048766(2*(n+1)²)+1+n`
-/

namespace A186157.P16943069954234198727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (2 * (n + 1) ^ 2) + 1 + (n : ℤ)

end

end A186157.P16943069954234198727

namespace A186157

/-- `A048766(2*(n+1)²)+1+n` -/
def P16943069954234198727.Spec : Prop :=
  ∀ n, P16943069954234198727.a n = A186157 (n + 1)

end A186157

/-! ## A186157.P4938377661731348534

`∑[A000079(Δ[A048766(2*n²)])]`
-/

namespace A186157.P4938377661731348534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (2 * n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186157.P4938377661731348534

namespace A186157

/-- `∑[A000079(Δ[A048766(2*n²)])]` -/
def P4938377661731348534.Spec : Prop :=
  ∀ n, P4938377661731348534.a n = A186157 (n + 1)

end A186157

/-!
# A186159: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the triangular numbers and octagonal numbers. Complement of A186274.

The programs for A186159, the canonical program `A186159.P16162331322285445235` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186159 has offset 1).

The definition of A186159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186159.P16162331322285445235

`comp[A186274(n+1)-1]+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186159

/-- `comp[A186274(n+1)-1]+1` -/
def P16162331322285445235.Spec : Prop :=
  ∀ n, (P16162331322285445235.a n : ℤ) = A186159 (n + 1)

theorem P16162331322285445235.correct : P16162331322285445235.Spec := by
  intro n
  simp only [A186159, Nat.add_sub_cancel]

end A186159

/-! ## A186159.P15200831666829782884

`A186275(n+1)-A010057(A010000(n))`
-/

namespace A186159.P15200831666829782884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186275 (n + 1) - A010057 (A010000 n).toNat

end

end A186159.P15200831666829782884

namespace A186159

/-- `A186275(n+1)-A010057(A010000(n))` -/
def P15200831666829782884.Spec : Prop :=
  ∀ n, P15200831666829782884.a n = A186159 (n + 1)

end A186159

/-! ## A186159.P11747517431126848980

`A002024(∑[A005408(n)-A051516(n+1)])`
-/

namespace A186159.P11747517431126848980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A051516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186159.P11747517431126848980

namespace A186159

/-- `A002024(∑[A005408(n)-A051516(n+1)])` -/
def P11747517431126848980.Spec : Prop :=
  ∀ n, P11747517431126848980.a n = A186159 (n + 1)

end A186159

/-! ## A186159.P18289894401559675508

`A204553(A008810(2*(n+2)))+n`
-/

namespace A186159.P18289894401559675508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (A008810 (2 * (n + 2))).toNat + (n : ℤ)

end

end A186159.P18289894401559675508

namespace A186159

/-- `A204553(A008810(2*(n+2)))+n` -/
def P18289894401559675508.Spec : Prop :=
  ∀ n, P18289894401559675508.a n = A186159 (n + 1)

end A186159

/-! ## A186159.P16945200484073097807

`A186275(n+1)-A003982(A235355(n))`
-/

namespace A186159.P16945200484073097807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186275 (n + 1) - A003982 (A235355 n).toNat

end

end A186159.P16945200484073097807

namespace A186159

/-- `A186275(n+1)-A003982(A235355(n))` -/
def P16945200484073097807.Spec : Prop :=
  ∀ n, P16945200484073097807.a n = A186159 (n + 1)

end A186159

/-! ## A186159.P7985421881080307938

`A003059(A184636(n+1)-A045546(n+1))`
-/

namespace A186159.P7985421881080307938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A184636 (n + 1) - A045546 (n + 1)).toNat

end

end A186159.P7985421881080307938

namespace A186159

/-- `A003059(A184636(n+1)-A045546(n+1))` -/
def P7985421881080307938.Spec : Prop :=
  ∀ n, P7985421881080307938.a n = A186159 (n + 1)

end A186159

/-! ## A186159.P3121500967743029304

`A002024(A192438(n+1)+A002378(n))`
-/

namespace A186159.P3121500967743029304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A192438 (n + 1) + A002378 n).toNat

end

end A186159.P3121500967743029304

namespace A186159

/-- `A002024(A192438(n+1)+A002378(n))` -/
def P3121500967743029304.Spec : Prop :=
  ∀ n, P3121500967743029304.a n = A186159 (n + 1)

end A186159

/-! ## A186159.P5703283733576049767

`A000196(A348090(n+2)+n)`
-/

namespace A186159.P5703283733576049767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A348090 (n + 2) + (n : ℤ)).toNat

end

end A186159.P5703283733576049767

namespace A186159

/-- `A000196(A348090(n+2)+n)` -/
def P5703283733576049767.Spec : Prop :=
  ∀ n, P5703283733576049767.a n = A186159 (n + 1)

end A186159

/-!
# A186160: 1/4 the number of n X n 0..3 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A186160, there is no canonical definition to state claims against.
-/

/-! ## A186160.P14897621520681309221

`A186168(∑[4*n]+1)`
-/

namespace A186160.P14897621520681309221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186168 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186160.P14897621520681309221

/-!
# A186161: 1/4 the number of n X 2 0..3 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A186161, the canonical program `A186161.P9868195665772666391` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186161 has offset 1).

The definition of A186161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186161.P9868195665772666391

`ogf((1+2x+2x^2-5x^3-12x^4)/(1-5x-11x^2-9x^3+9x^4+27x^5))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186161

/-- `ogf((1+2x+2x^2-5x^3-12x^4)/(1-5x-11x^2-9x^3+9x^4+27x^5))` -/
def P9868195665772666391.Spec : Prop :=
  ∀ n, P9868195665772666391.a n = A186161 (n + 1)

theorem P9868195665772666391.correct : P9868195665772666391.Spec := by
  intro n
  simp only [A186161, Nat.add_sub_cancel]

end A186161

/-! ## A186161.P4167709859641122128

`A186168(∑[n+1]+2)`
-/

namespace A186161.P4167709859641122128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186168 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186161.P4167709859641122128

namespace A186161

/-- `A186168(∑[n+1]+2)` -/
def P4167709859641122128.Spec : Prop :=
  ∀ n, P4167709859641122128.a n = A186161 (n + 1)

end A186161

/-! ## A186161.P511659753012249277

`record[root(A186168(n+2), A008277(n+1))]`
-/

namespace A186161.P511659753012249277
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186168 (n + 2) : ℝ) ^ (1 / (A008277 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186161.P511659753012249277

namespace A186161

/-- `record[root(A186168(n+2), A008277(n+1))]` -/
def P511659753012249277.Spec : Prop :=
  ∀ n, P511659753012249277.a n = (A186161 (n + 1) : ℝ)

end A186161

/-! ## A186161.P6296098829584293681

`record[root(A186168(n+2), A156953(n+1))]`
-/

namespace A186161.P6296098829584293681
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186168 (n + 2) : ℝ) ^ (1 / (A156953 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186161.P6296098829584293681

namespace A186161

/-- `record[root(A186168(n+2), A156953(n+1))]` -/
def P6296098829584293681.Spec : Prop :=
  ∀ n, P6296098829584293681.a n = (A186161 (n + 1) : ℝ)

end A186161

/-! ## A186161.P11095296144331276631

`record[root(A186168(n+2), A273891(n+1))]`
-/

namespace A186161.P11095296144331276631
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186168 (n + 2) : ℝ) ^ (1 / (A273891 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186161.P11095296144331276631

namespace A186161

/-- `record[root(A186168(n+2), A273891(n+1))]` -/
def P11095296144331276631.Spec : Prop :=
  ∀ n, P11095296144331276631.a n = (A186161 (n + 1) : ℝ)

end A186161

/-!
# A186162: 1/4 the number of nX3 0..3 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A186162, there is no canonical definition to state claims against.
-/

/-! ## A186162.P272662408414027886

`A186168(∑[n+2]+4)`
-/

namespace A186162.P272662408414027886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186168 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186162.P272662408414027886

/-! ## A186162.P9633120573133599730

`record[gcd(A186168(n+1), A303913(n))]`
-/

namespace A186162.P9633120573133599730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186168 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186162.P9633120573133599730

/-! ## A186162.P3749252614988509820

`A321537(n)+A186168(A167614(n+1))`
-/

namespace A186162.P3749252614988509820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 n + A186168 (A167614 (n + 1)).toNat

end

end A186162.P3749252614988509820

/-! ## A186162.P13029675074294000267

`gcd(A186168(A167614(n+1)), A320332(n))`
-/

namespace A186162.P13029675074294000267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186168 (A167614 (n + 1)).toNat) (A320332 n)

end

end A186162.P13029675074294000267

/-! ## A186162.P17851352459469324211

`lcm(A033999(n), A186168(A167614(n+1)))`
-/

namespace A186162.P17851352459469324211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A186168 (A167614 (n + 1)).toNat)

end

end A186162.P17851352459469324211

/-!
# A186163: 1/4 the number of nX4 0..3 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A186163, there is no canonical definition to state claims against.
-/

/-! ## A186163.P7188283870491845859

`A186168(∑[n+3]+7)`
-/

namespace A186163.P7188283870491845859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186168 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186163.P7188283870491845859

/-! ## A186163.P12471594334343796521

`A186168(A374004(n+1))+A000122(A155212(n))`
-/

namespace A186163.P12471594334343796521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186168 (A374004 (n + 1)).toNat + A000122 (A155212 n).toNat

end

end A186163.P12471594334343796521

/-! ## A186163.P11154222733040126856

`A186168(A374004(n+1))+A000122(A141196(n+1))`
-/

namespace A186163.P11154222733040126856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186168 (A374004 (n + 1)).toNat + A000122 (A141196 (n + 1)).toNat

end

end A186163.P11154222733040126856

/-! ## A186163.P1497087131116131069

`A186168(A374004(n+1))+A000122(A056000(3*n+1))`
-/

namespace A186163.P1497087131116131069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186168 (A374004 (n + 1)).toNat + A000122 (A056000 (3 * n + 1)).toNat

end

end A186163.P1497087131116131069

/-! ## A186163.P15512461312763354595

`A186168(A141214(n+1))%A186164(n+1)`
-/

namespace A186163.P15512461312763354595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186168 (A141214 (n + 1)).toNat) (A186164 (n + 1))

end

end A186163.P15512461312763354595

/-!
# A186164: 1/4 the number of nX5 0..3 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A186164, there is no canonical definition to state claims against.
-/

/-! ## A186164.P17820755477063822945

`A186168(A374005(n+1))`
-/

namespace A186164.P17820755477063822945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186168 (A374005 (n + 1)).toNat

end

end A186164.P17820755477063822945

/-! ## A186164.P7911116163275148882

`A186168(A155212(n)+13)`
-/

namespace A186164.P7911116163275148882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186168 (A155212 n + 13).toNat

end

end A186164.P7911116163275148882

/-! ## A186164.P15698729807829154107

`A186168(A056000(n)+15)`
-/

namespace A186164.P15698729807829154107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186168 (A056000 n + 15).toNat

end

end A186164.P15698729807829154107

/-! ## A186164.P5115071329945005098

`A186168(eq[7, A066657(n)])`
-/

namespace A186164.P5115071329945005098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186164.P5115071329945005098

/-! ## A186164.P12420068393956334509

`A186168(A000096(n+3)+6)`
-/

namespace A186164.P12420068393956334509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186168 (A000096 (n + 3) + 6).toNat

end

end A186164.P12420068393956334509

/-!
# A186165: 1/4 the number of nX6 0..3 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A186165, there is no canonical definition to state claims against.
-/

/-! ## A186165.P16080736888060735541

`A186168(A374007(n+1))`
-/

namespace A186165.P16080736888060735541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186168 (A374007 (n + 1)).toNat

end

end A186165.P16080736888060735541

/-! ## A186165.P8968960511117550259

`A186168(eq[7, A131818(n+1)])`
-/

namespace A186165.P8968960511117550259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186165.P8968960511117550259

/-! ## A186165.P12158208870663732474

`A186168(eq[5, A193592(n)])`
-/

namespace A186165.P12158208870663732474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186165.P12158208870663732474

/-!
# A186166: 1/4 the number of n X 7 0..3 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A186166, there is no canonical definition to state claims against.
-/

/-! ## A186166.P8319018502378067661

`A186168(A374008(n+1))`
-/

namespace A186166.P8319018502378067661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186168 (A374008 (n + 1)).toNat

end

end A186166.P8319018502378067661

/-!
# A186167: 1/4 the number of nX8 0..3 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A186167, there is no canonical definition to state claims against.
-/

/-! ## A186167.P4440114205281273068

`A186168(eq[7, A193592(n)])`
-/

namespace A186167.P4440114205281273068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186167.P4440114205281273068

/-!
# A186168: T(n,k)=1/4 the number of nXk 0..3 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A186168, there is no canonical definition to state claims against.
-/

/-! ## A186168.P283305656092866083

`A120653(n)*A304019(A032555(n+1))`
-/

namespace A186168.P283305656092866083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120653 n * A304019 (A032555 (n + 1)).toNat

end

end A186168.P283305656092866083

/-! ## A186168.P6013455116677214846

`lcm(A051903(A274870(n+6)), A156602(n))`
-/

namespace A186168.P6013455116677214846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051903 (A274870 (n + 6)).toNat) (A156602 n)

end

end A186168.P6013455116677214846

/-! ## A186168.P3251928953727497670

`A001221(A083780(n+1))*A304019(n+1)`
-/

namespace A186168.P3251928953727497670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A083780 (n + 1)).toNat * A304019 (n + 1)

end

end A186168.P3251928953727497670

/-! ## A186168.P13852361698379405803

`A001221(A083780(n+1))*A304697(n+1)`
-/

namespace A186168.P13852361698379405803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A083780 (n + 1)).toNat * A304697 (n + 1)

end

end A186168.P13852361698379405803

/-! ## A186168.P7359979252854044046

`A001221(A083780(n+1))*A305367(n+1)`
-/

namespace A186168.P7359979252854044046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A083780 (n + 1)).toNat * A305367 (n + 1)

end

end A186168.P7359979252854044046

/-!
# A186169: Consider two consecutive primes {p,q} such that {P=2p-q,Q=2q-p} are both prime. Sequence gives lesser primes p.

The programs for A186169, there is no canonical definition to state claims against.
-/

/-! ## A186169.P15262421986554384911

`∩[A087031(n+1), A173970(n+1)]`
-/

namespace A186169.P15262421986554384911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186169.P15262421986554384911

/-! ## A186169.P12673383786482161596

`filter[A173970(n+1), A087032(#)]`
-/

namespace A186169.P12673383786482161596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087032 (f1 j).toNat = 1) n)

end

end A186169.P12673383786482161596

/-! ## A186169.P3385613658672793914

`∩[A151799(A071680(n+1)), A173970(n+1)]`
-/

namespace A186169.P3385613658672793914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A071680 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186169.P3385613658672793914

/-! ## A186169.P14169663414700290736

`∩[A125830(n+1), A151799(A071680(n+3))]`
-/

namespace A186169.P14169663414700290736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A071680 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186169.P14169663414700290736

/-!
# A186170: Number of prime factors times n minus sum of divisors.

The programs for A186170, the canonical program `A186170.P11353951173779098323` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186170 has offset 1).

The definition of A186170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186170.P11353951173779098323

`(n+1)*A001222(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186170

/-- `(n+1)*A001222(n+1)-A000203(n+1)` -/
def P11353951173779098323.Spec : Prop :=
  ∀ n, P11353951173779098323.a n = A186170 (n + 1)

theorem P11353951173779098323.correct : P11353951173779098323.Spec := by
  intro n
  simp only [A186170, Nat.add_sub_cancel]

end A186170

/-! ## A186170.P5580323434960977476

`∑{e}[n+1, (n+1)*#]-∑{d}[n+1, #]`
-/

namespace A186170.P5580323434960977476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), (n + 1) * Nat.factorization (f1 n) p : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A186170.P5580323434960977476

namespace A186170

/-- `∑{e}[n+1, (n+1)*#]-∑{d}[n+1, #]` -/
def P5580323434960977476.Spec : Prop :=
  ∀ n, P5580323434960977476.a n = A186170 (n + 1)

end A186170

/-! ## A186170.P262262611457874067

`∑{p}[n+1, (n+1)*val(n+1, #)]-∑{d}[n+1, #]`
-/

namespace A186170.P262262611457874067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), (n + 1) * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A186170.P262262611457874067

namespace A186170

/-- `∑{p}[n+1, (n+1)*val(n+1, #)]-∑{d}[n+1, #]` -/
def P262262611457874067.Spec : Prop :=
  ∀ n, P262262611457874067.a n = A186170 (n + 1)

end A186170

/-! ## A186170.P14701648926082857124

`A066959(n+1)-∑{d}[n+1, #]`
-/

namespace A186170.P14701648926082857124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066959 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A186170.P14701648926082857124

namespace A186170

/-- `A066959(n+1)-∑{d}[n+1, #]` -/
def P14701648926082857124.Spec : Prop :=
  ∀ n, P14701648926082857124.a n = A186170 (n + 1)

end A186170

/-! ## A186170.P17134294619878531000

`∑{d}[n+1, (n+1)*A069513(#)-#]`
-/

namespace A186170.P17134294619878531000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℤ) * A069513 d - (d : ℤ))

end

end A186170.P17134294619878531000

namespace A186170

/-- `∑{d}[n+1, (n+1)*A069513(#)-#]` -/
def P17134294619878531000.Spec : Prop :=
  ∀ n, P17134294619878531000.a n = A186170 (n + 1)

end A186170

/-! ## A186170.P1721520258467371037

`(n+1)*∑{e}[n+1, #]-A245092(Δ[n²])`
-/

namespace A186170.P1721520258467371037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℕ) : ℤ) - A245092 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A186170.P1721520258467371037

namespace A186170

/-- `(n+1)*∑{e}[n+1, #]-A245092(Δ[n²])` -/
def P1721520258467371037.Spec : Prop :=
  ∀ n, P1721520258467371037.a n = A186170 (n + 1)

end A186170

/-! ## A186170.P16671736032170985808

`A066959(n+1)-A000203(n+1)`
-/

namespace A186170.P16671736032170985808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066959 (n + 1) - A000203 (n + 1)

end

end A186170.P16671736032170985808

namespace A186170

/-- `A066959(n+1)-A000203(n+1)` -/
def P16671736032170985808.Spec : Prop :=
  ∀ n, P16671736032170985808.a n = A186170 (n + 1)

end A186170

/-! ## A186170.P2535557913333820830

`A387470(n+1)-A001065(n+1)`
-/

namespace A186170.P2535557913333820830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387470 (n + 1) - A001065 (n + 1)

end

end A186170.P2535557913333820830

namespace A186170

/-- `A387470(n+1)-A001065(n+1)` -/
def P2535557913333820830.Spec : Prop :=
  ∀ n, P2535557913333820830.a n = A186170 (n + 1)

theorem P2535557913333820830.correct : P2535557913333820830.Spec := by
  intro n
  simp only [A186170, Nat.add_sub_cancel, A186170.P2535557913333820830.a, A186170.P11353951173779098323.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A387470, A387470.P15457309630766544785.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A186170

/-! ## A186170.P4839117311887112774

`(n+1)*Δ[A022559(n)]-A000203(n+1)`
-/

namespace A186170.P4839117311887112774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) - A000203 (n + 1)

end

end A186170.P4839117311887112774

namespace A186170

/-- `(n+1)*Δ[A022559(n)]-A000203(n+1)` -/
def P4839117311887112774.Spec : Prop :=
  ∀ n, P4839117311887112774.a n = A186170 (n + 1)

end A186170

/-!
# A186171: Number of (n+2)X(n+2) 0..5 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A186171, there is no canonical definition to state claims against.
-/

/-! ## A186171.P1616134885625693031

`A186180((n+1)²+n²)`
-/

namespace A186171.P1616134885625693031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186180 ((n + 1) ^ 2 + n ^ 2)

end

end A186171.P1616134885625693031

/-!
# A186172: Number of (n+2)X3 0..5 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A186172, there is no canonical definition to state claims against.
-/

/-! ## A186172.P3914265169941869304

`A186180(∑[n]+1)`
-/

namespace A186172.P3914265169941869304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186180 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186172.P3914265169941869304

/-! ## A186172.P6063496408274095827

`record[A186180(n+1)/A079502(n)]`
-/

namespace A186172.P6063496408274095827
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186180 (n + 1) : ℚ) / (A079502 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186172.P6063496408274095827

/-! ## A186172.P5332759358299310553

`record[A186180(n+1)/A157638(n)]`
-/

namespace A186172.P5332759358299310553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186180 (n + 1) : ℚ) / (A157638 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186172.P5332759358299310553

/-! ## A186172.P4559490204451861365

`record[A186180(n+1)/A028246(n+1)]`
-/

namespace A186172.P4559490204451861365
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186180 (n + 1) : ℚ) / (A028246 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186172.P4559490204451861365

/-! ## A186172.P4393450252495331426

`A186180(A000124(n))%A186173(n+1)`
-/

namespace A186172.P4393450252495331426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186180 (A000124 n).toNat) (A186173 (n + 1))

end

end A186172.P4393450252495331426

/-!
# A186173: Number of (n+2)X4 0..5 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A186173, there is no canonical definition to state claims against.
-/

/-! ## A186173.P4999865678660276814

`A186180(∑[n+1]+2)`
-/

namespace A186173.P4999865678660276814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186180 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186173.P4999865678660276814

/-! ## A186173.P1193112817627953886

`record[A186180(Δ[A003453(n+5)])]`
-/

namespace A186173.P1193112817627953886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186180 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186173.P1193112817627953886

/-! ## A186173.P4456424605157948268

`A186180(A000096(n+1))+A000035(2*n)`
-/

namespace A186173.P4456424605157948268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186180 (A000096 (n + 1)).toNat + A000035 (2 * n)

end

end A186173.P4456424605157948268

/-!
# A186174: Number of (n+2)X5 0..5 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A186174, there is no canonical definition to state claims against.
-/

/-! ## A186174.P16116725267332774620

`A186180(A167614(n+1))`
-/

namespace A186174.P16116725267332774620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186180 (A167614 (n + 1)).toNat

end

end A186174.P16116725267332774620

/-! ## A186174.P17701580866041057234

`A186180(A034856(n+1)+5)`
-/

namespace A186174.P17701580866041057234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186180 (A034856 (n + 1) + 5).toNat

end

end A186174.P17701580866041057234

/-! ## A186174.P12825041668088560570

`A186180(∑[n+3]+1)`
-/

namespace A186174.P12825041668088560570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186180 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186174.P12825041668088560570

/-!
# A186175: Number of (n+2)X6 0..5 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A186175, there is no canonical definition to state claims against.
-/

/-! ## A186175.P4054349487749082259

`A186180(A141214(n)+7)`
-/

namespace A186175.P4054349487749082259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186180 (A141214 n + 7).toNat

end

end A186175.P4054349487749082259

/-! ## A186175.P8043219615961147950

`A186180(A141214(n+1))`
-/

namespace A186175.P8043219615961147950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186180 (A141214 (n + 1)).toNat

end

end A186175.P8043219615961147950

/-!
# A186181: Period 4 sequence [ 2, 2, 3, 2, ...] except a(0) = 1.

The programs for A186181, the canonical program `A186181.P2335809460177473806` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186181 has offset 0).

The definition of A186181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186181.P2335809460177473806

`ogf((1+2x+3x^2+2x^3+x^4)/(1-x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186181

/-- `ogf((1+2x+3x^2+2x^3+x^4)/(1-x^4))` -/
def P2335809460177473806.Spec : Prop :=
  ∀ n, P2335809460177473806.a n = A186181 n

theorem P2335809460177473806.correct : P2335809460177473806.Spec := by
  intro n
  simp only [A186181]

end A186181

/-!
# A186182: Expansion of 1/(1-x*A002294(x)).

The programs for A186182, there is no canonical definition to state claims against.
-/

/-! ## A186182.P3103398148910320483

`A286552(∑[ceil(9^(n-1))]-n)`
-/

namespace A186182.P3103398148910320483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(9 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286552 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A186182.P3103398148910320483

/-! ## A186182.P2007396792113089186

`A260121(A026788(n))`
-/

namespace A186182.P2007396792113089186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260121 (A026788 n).toNat

end

end A186182.P2007396792113089186

/-!
# A186183: Expansion of 1/(1-x*A002295(x)).

The programs for A186183, there is no canonical definition to state claims against.
-/

/-! ## A186183.P4481270348196218644

`A264749(A089471(n))`
-/

namespace A186183.P4481270348196218644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A089471 n).toNat

end

end A186183.P4481270348196218644

/-! ## A186183.P11542584499802663878

`A057362(A141763(n))+1`
-/

namespace A186183.P11542584499802663878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057362 (A141763 n).toNat + 1

end

end A186183.P11542584499802663878

/-!
# A186184: Expansion of 1/(1 - x*A002296(x)).

The programs for A186184, there is no canonical definition to state claims against.
-/

/-! ## A186184.P7026368197881341

`A143097(A326497(n²))`
-/

namespace A186184.P7026368197881341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143097 (A326497 (n ^ 2)).toNat

end

end A186184.P7026368197881341

/-! ## A186184.P13610279970841076670

`A008620(A336128(∑[n]))`
-/

namespace A186184.P13610279970841076670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A336128 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A186184.P13610279970841076670

/-!
# A186185: Expansion of 1/(1 - x*A001764(x/(1-x))/(1-x)).

The programs for A186185, there is no canonical definition to state claims against.
-/

/-! ## A186185.P5237465021137785490

`A366701(A366676(n)+A000142(n))`
-/

namespace A186185.P5237465021137785490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366701 (A366676 n + A000142 n).toNat

end

end A186185.P5237465021137785490

/-! ## A186185.P1248207688028033796

`A218980(A190139(n))`
-/

namespace A186185.P1248207688028033796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218980 (A190139 n).toNat

end

end A186185.P1248207688028033796

/-!
# A186186: Expansion of 1/(1-x/(1-x)*A(x/(1-x))) where A(x) is the g.f. of A002293.

The programs for A186186, there is no canonical definition to state claims against.
-/

/-! ## A186186.P5279951630852357165

`A229301(n*(a(n-1)+1))-1` with `a(0)=1`
-/

namespace A186186.P5279951630852357165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A229301 ((n : ℤ) * (a (n - 1) + 1)).toNat - 1

end

end A186186.P5279951630852357165

/-! ## A186186.P12074472743237434750

`A133797(A048398(n+1))`
-/

namespace A186186.P12074472743237434750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133797 (A048398 (n + 1)).toNat

end

end A186186.P12074472743237434750

/-!
# A186187: Period 8 sequence [ 2, 2, 1, 2, 4, 2, 1, 2, ...] except a(0) = 1.

The programs for A186187, the canonical program `A186187.P14336359365079986944` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186187 has offset 0).

The definition of A186187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186187.P14336359365079986944

`ogf((1+2x+x^2+2x^3+4x^4+2x^5+x^6+2x^7+x^8)/(1-x^8))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186187

/-- `ogf((1+2x+x^2+2x^3+4x^4+2x^5+x^6+2x^7+x^8)/(1-x^8))` -/
def P14336359365079986944.Spec : Prop :=
  ∀ n, P14336359365079986944.a n = A186187 n

theorem P14336359365079986944.correct : P14336359365079986944.Spec := by
  intro n
  simp only [A186187]

end A186187

/-!
# A186188: Least k such that A156077^(k)(n)=1 where a^(k)=a(a^(k-1)).

The programs for A186188, there is no canonical definition to state claims against.
-/

/-! ## A186188.P17294574730678231054

`floor(log2(or(2, comp[7*n])))`
-/

namespace A186188.P17294574730678231054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.lor 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A186188.P17294574730678231054

/-! ## A186188.P17416795043820016390

`ceil(round(log2(∑[n]+2))/2)`
-/

namespace A186188.P17416795043820016390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.roundAway (Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℝ)) : ℚ) / 2⌉

end

end A186188.P17416795043820016390

/-! ## A186188.P18072496857969251310

`ceil(log2(or(3, comp[7*n])))-1`
-/

namespace A186188.P18072496857969251310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.lor 3 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)⌉ - 1

end

end A186188.P18072496857969251310

/-! ## A186188.P5937108296004132917

`round(round(log2(C(n+1, 2)+2))/2)`
-/

namespace A186188.P5937108296004132917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (Real.logb 2 (Nat.choose (n + 1) 2 + 2 : ℝ)) : ℚ) / 2)

end

end A186188.P5937108296004132917

/-! ## A186188.P16259680651275927653

`floor(log2(comp[7*n]+2%gcd(7, n)))`
-/

namespace A186188.P16259680651275927653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 % Nat.gcd 7 n)

end

end A186188.P16259680651275927653

/-! ## A186188.P439269633965933229

`A081604(∑[floor(sqrt(n))])`
-/

namespace A186188.P439269633965933229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186188.P439269633965933229

/-! ## A186188.P3733845506408179040

`A000523(or(2, comp[7*n]))`
-/

namespace A186188.P3733845506408179040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (Nat.lor 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A186188.P3733845506408179040

/-! ## A186188.P4687002852988352780

`A034888(round(log2(∑[n]+2)))`
-/

namespace A186188.P4687002852988352780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (SequenceMachineLib.roundAway (Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℝ))).toNat

end

end A186188.P4687002852988352780

/-! ## A186188.P4331512569748975171

`comp[floor(sqrt(2*(n²+7)*A000045(2*n)))]-n`
-/

namespace A186188.P4331512569748975171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * ((n ^ 2 + 7 : ℤ) * A000045 (2 * n)))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A186188.P4331512569748975171

/-! ## A186188.P11107009237223841355

`A059939(A049626(n))`
-/

namespace A186188.P11107009237223841355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (A049626 n).toNat

end

end A186188.P11107009237223841355

/-!
# A186189: Least k such that A074286^(k)(n) = 1 where a^(k) = a(a^(k-1)).

The programs for A186189, there is no canonical definition to state claims against.
-/

/-! ## A186189.P16884991661970746214

`floor(log2(∑[atan(n+4)]+1))`
-/

namespace A186189.P16884991661970746214
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 4 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (∑ j ∈ Finset.range (n + 1), f1 j + 1)⌋

end

end A186189.P16884991661970746214

/-! ## A186189.P7288638939881805923

`ceil(abs(3/8-log2(n+1)))`
-/

namespace A186189.P7288638939881805923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|((3 : ℚ) / 8 : ℝ) - Real.logb 2 (n + 1 : ℝ)|⌉

end

end A186189.P7288638939881805923

/-! ## A186189.P5319676194687515009

`ceil(log2(∑[atan(n+4)]+1))-1`
-/

namespace A186189.P5319676194687515009
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 4 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (∑ j ∈ Finset.range (n + 1), f1 j + 1)⌉ - 1

end

end A186189.P5319676194687515009

/-! ## A186189.P14840081128262944543

`-ceil(-log2(∑[atan(n+4)]+1))`
-/

namespace A186189.P14840081128262944543
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 4 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈-Real.logb 2 (∑ j ∈ Finset.range (n + 1), f1 j + 1)⌉

end

end A186189.P14840081128262944543

/-! ## A186189.P11967410680297342132

`floor(log2(A107912(n+1)))`
-/

namespace A186189.P11967410680297342132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A107912 (n + 1)).toNat

end

end A186189.P11967410680297342132

/-! ## A186189.P7120719283402455725

`A110591(∑[comp[6*n]])`
-/

namespace A186189.P7120719283402455725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186189.P7120719283402455725

/-! ## A186189.P523376474277747804

`∑[val(p?[A261461(n)], 2)]`
-/

namespace A186189.P523376474277747804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186189.P523376474277747804

/-! ## A186189.P6232676149766711238

`floor(log2(sqrt(A008151(n+1))))`
-/

namespace A186189.P6232676149766711238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.sqrt (A008151 (n + 1) : ℝ))⌋

end

end A186189.P6232676149766711238

/-! ## A186189.P14929088105057919727

`floor(log2(sqrt(A008184(n+1))))`
-/

namespace A186189.P14929088105057919727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.sqrt (A008184 (n + 1) : ℝ))⌋

end

end A186189.P14929088105057919727

/-! ## A186189.P4632949919534439339

`floor(log2(sqrt(A019456(n+1))))`
-/

namespace A186189.P4632949919534439339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.sqrt (A019456 (n + 1) : ℝ))⌋

end

end A186189.P4632949919534439339

/-!
# A186190: First digit of tribonacci sequence A000213.

The programs for A186190, there is no canonical definition to state claims against.
-/

/-! ## A186190.P6532899485631411569

`A004086(A000213(n))%10`
-/

namespace A186190.P6532899485631411569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A000213 n).toNat) 10

end

end A186190.P6532899485631411569

/-! ## A186190.P18283035978368172934

`A000030(A000213(n))`
-/

namespace A186190.P18283035978368172934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000213 n).toNat

end

end A186190.P18283035978368172934

/-! ## A186190.P14020268022478819303

`A000030(Δ[record[A001590(n)]])`
-/

namespace A186190.P14020268022478819303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (f1 (n + 1) - f1 n).toNat

end

end A186190.P14020268022478819303

/-! ## A186190.P7267818896968693147

`A000030(Δ[A001590(n+2)])`
-/

namespace A186190.P7267818896968693147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (f1 (n + 1) - f1 n).toNat

end

end A186190.P7267818896968693147

/-! ## A186190.P18151405011243168469

`A000030(A000799(n+1)-1)`
-/

namespace A186190.P18151405011243168469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000799 (n + 1) - 1).toNat

end

end A186190.P18151405011243168469

/-!
# A186191: First digit of tetranacci numbers A000288.

The programs for A186191, there is no canonical definition to state claims against.
-/

/-! ## A186191.P1225124954595092663

`A004086(A000288(n))%10`
-/

namespace A186191.P1225124954595092663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A000288 n).toNat) 10

end

end A186191.P1225124954595092663

/-! ## A186191.P15987737565030694395

`A004086(A251705(n)+A000078(n))%10`
-/

namespace A186191.P15987737565030694395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A251705 n + A000078 n).toNat) 10

end

end A186191.P15987737565030694395

/-! ## A186191.P4813814355968560280

`A004086(A251704(n)+A001631(n))%10`
-/

namespace A186191.P4813814355968560280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A251704 n + A001631 n).toNat) 10

end

end A186191.P4813814355968560280

/-! ## A186191.P4520043524108350205

`A004086(A251703(n)+∑[A001631(n)])%10`
-/

namespace A186191.P4520043524108350205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A251703 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat) 10

end

end A186191.P4520043524108350205

/-! ## A186191.P17676542620290189470

`A004086(A251704(n)+Δ[A000078(n)])%10`
-/

namespace A186191.P17676542620290189470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A251704 n + (f1 (n + 1) - f1 n)).toNat) 10

end

end A186191.P17676542620290189470

/-!
# A186192: First digit of pentanacci numbers A000322.

The programs for A186192, there is no canonical definition to state claims against.
-/

/-! ## A186192.P4480388939024284529

`A004086(A000322(n))%10`
-/

namespace A186192.P4480388939024284529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A000322 n).toNat) 10

end

end A186192.P4480388939024284529

/-! ## A186192.P4016786524481431759

`A004086(4*A001949(n)+1)%10`
-/

namespace A186192.P4016786524481431759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (4 * A001949 n + 1).toNat) 10

end

end A186192.P4016786524481431759

/-! ## A186192.P6514546419876272747

`A004086(A135493(n+1)-A023424(n))%10`
-/

namespace A186192.P6514546419876272747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A135493 (n + 1) - A023424 n).toNat) 10

end

end A186192.P6514546419876272747

/-! ## A186192.P11738996419026933053

`A004086(A145029(n+1)-A135056(n))%10`
-/

namespace A186192.P11738996419026933053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A145029 (n + 1) - A135056 n).toNat) 10

end

end A186192.P11738996419026933053

/-! ## A186192.P9821833437833141987

`A004086((A135056(n)-A135055(n))/2)%10`
-/

namespace A186192.P9821833437833141987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (SequenceMachineLib.roundAway ((A135056 n - A135055 n : ℚ) / 2)).toNat) 10

end

end A186192.P9821833437833141987

/-!
# A186193: Numbers k such that k!! is divisible by (k+1).

The programs for A186193, the canonical program `A186193.P2513860863626863232` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186193 has offset 1).

The definition of A186193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186193.P2513860863626863232

`2*(A153083(n+1)+5)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A186193

/-- `2*(A153083(n+1)+5)` -/
def P2513860863626863232.Spec : Prop :=
  ∀ n, P2513860863626863232.a n = A186193 (n + 1)

theorem P2513860863626863232.correct : P2513860863626863232.Spec := by
  intro n
  simp only [A186193, Nat.add_sub_cancel]

end A186193

/-! ## A186193.P17313556078651093162

`2*lt[4, A000005(6*n+3)]`
-/

namespace A186193.P17313556078651093162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (6 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186193.P17313556078651093162

namespace A186193

/-- `2*lt[4, A000005(6*n+3)]` -/
def P17313556078651093162.Spec : Prop :=
  ∀ n, (P17313556078651093162.a n : ℤ) = A186193 (n + 1)

end A186193

/-! ## A186193.P12518696971883899685

`2*lt[A006530(2*n+1)+1, n]`
-/

namespace A186193.P12518696971883899685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A186193.P12518696971883899685

namespace A186193

/-- `2*lt[A006530(2*n+1)+1, n]` -/
def P12518696971883899685.Spec : Prop :=
  ∀ n, (P12518696971883899685.a n : ℤ) = A186193 (n + 1)

end A186193

/-! ## A186193.P15401167164148434235

`2*lt[A020639(2*n+1)+1, n]`
-/

namespace A186193.P15401167164148434235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A186193.P15401167164148434235

namespace A186193

/-- `2*lt[A020639(2*n+1)+1, n]` -/
def P15401167164148434235.Spec : Prop :=
  ∀ n, (P15401167164148434235.a n : ℤ) = A186193 (n + 1)

end A186193

/-! ## A186193.P3928331727593063787

`2*lt[A000010(2*n+1), 2*(n-1)]`
-/

namespace A186193.P3928331727593063787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A186193.P3928331727593063787

namespace A186193

/-- `2*lt[A000010(2*n+1), 2*(n-1)]` -/
def P3928331727593063787.Spec : Prop :=
  ∀ n, (P3928331727593063787.a n : ℤ) = A186193 (n + 1)

end A186193

/-! ## A186193.P15328125117869518795

`A309355(n+1)+A164510(n+1)`
-/

namespace A186193.P15328125117869518795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309355 (n + 1) + A164510 (n + 1)

end

end A186193.P15328125117869518795

namespace A186193

/-- `A309355(n+1)+A164510(n+1)` -/
def P15328125117869518795.Spec : Prop :=
  ∀ n, P15328125117869518795.a n = A186193 (n + 1)

theorem P15328125117869518795.correct : P15328125117869518795.Spec := by
  intro n
  simp only [A186193, Nat.add_sub_cancel, A186193.P15328125117869518795.a, A186193.P2513860863626863232.a, A153083, A153083.P10624664622328952784.a, A164510, A164510.P7896605024817402798.a, A309355, A309355.P9345418795961828822.a, A071904, A071904.P6554188440157640390.a, A153045, A153045.P15986527208321006434.a, A396571, A396571.P6988239857056960462.a, A007921, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A104275, A104275.P760458328655210773.a, A014076, A014076.P11944548580381270581.f1, A014076.P11944548580381270581.f2, A014076.P11944548580381270581.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A186193

/-! ## A186193.P16684661482663360693

`A309355(2+n)`
-/

namespace A186193.P16684661482663360693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309355 (2 + n)

end

end A186193.P16684661482663360693

namespace A186193

/-- `A309355(2+n)` -/
def P16684661482663360693.Spec : Prop :=
  ∀ n, P16684661482663360693.a n = A186193 (n + 1)

end A186193

/-! ## A186193.P4418068327129043949

`A007921(n+2)+1`
-/

namespace A186193.P4418068327129043949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 2) + 1

end

end A186193.P4418068327129043949

namespace A186193

/-- `A007921(n+2)+1` -/
def P4418068327129043949.Spec : Prop :=
  ∀ n, P4418068327129043949.a n = A186193 (n + 1)

end A186193

/-! ## A186193.P17995150129558953174

`A071904(n+2)-1`
-/

namespace A186193.P17995150129558953174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 2) - 1

end

end A186193.P17995150129558953174

namespace A186193

/-- `A071904(n+2)-1` -/
def P17995150129558953174.Spec : Prop :=
  ∀ n, P17995150129558953174.a n = A186193 (n + 1)

end A186193

/-! ## A186193.P13245247793723200017

`A146538(n+2)+2`
-/

namespace A186193.P13245247793723200017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146538 (n + 2) + 2

end

end A186193.P13245247793723200017

namespace A186193

/-- `A146538(n+2)+2` -/
def P13245247793723200017.Spec : Prop :=
  ∀ n, P13245247793723200017.a n = A186193 (n + 1)

end A186193

/-! ## A186193.P10505122049831799338

`Δ[A262044(n+1)]-1`
-/

namespace A186193.P10505122049831799338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A186193.P10505122049831799338

namespace A186193

/-- `Δ[A262044(n+1)]-1` -/
def P10505122049831799338.Spec : Prop :=
  ∀ n, P10505122049831799338.a n = A186193 (n + 1)

end A186193

/-! ## A186193.P10687207284878914657

`A153238(n+2)+A053726(n+2)`
-/

namespace A186193.P10687207284878914657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 2) + A053726 (n + 2)

end

end A186193.P10687207284878914657

namespace A186193

/-- `A153238(n+2)+A053726(n+2)` -/
def P10687207284878914657.Spec : Prop :=
  ∀ n, P10687207284878914657.a n = A186193 (n + 1)

end A186193

/-! ## A186193.P14147691538535618525

`A014076(n+3)-1`
-/

namespace A186193.P14147691538535618525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 3) - 1

end

end A186193.P14147691538535618525

namespace A186193

/-- `A014076(n+3)-1` -/
def P14147691538535618525.Spec : Prop :=
  ∀ n, P14147691538535618525.a n = A186193 (n + 1)

end A186193

/-! ## A186193.P1400359570684250742

`2*A047845(n+3)`
-/

namespace A186193.P1400359570684250742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047845 (n + 3)

end

end A186193.P1400359570684250742

namespace A186193

/-- `2*A047845(n+3)` -/
def P1400359570684250742.Spec : Prop :=
  ∀ n, P1400359570684250742.a n = A186193 (n + 1)

end A186193

/-! ## A186193.P13933553492262606909

`sqrt(A062532(n+3))-1`
-/

namespace A186193.P13933553492262606909
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062532 (n + 3) : ℝ) - 1

end

end A186193.P13933553492262606909

namespace A186193

/-- `sqrt(A062532(n+3))-1` -/
def P13933553492262606909.Spec : Prop :=
  ∀ n, P13933553492262606909.a n = (A186193 (n + 1) : ℝ)

end A186193

/-! ## A186193.P3348429894194775714

`Δ[A163631(n+2)]-1`
-/

namespace A186193.P3348429894194775714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163631 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A186193.P3348429894194775714

namespace A186193

/-- `Δ[A163631(n+2)]-1` -/
def P3348429894194775714.Spec : Prop :=
  ∀ n, P3348429894194775714.a n = A186193 (n + 1)

end A186193

/-! ## A186193.P17235961121420766667

`A020744(A155723(n+2))`
-/

namespace A186193.P17235961121420766667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 (A155723 (n + 2)).toNat

end

end A186193.P17235961121420766667

namespace A186193

/-- `A020744(A155723(n+2))` -/
def P17235961121420766667.Spec : Prop :=
  ∀ n, P17235961121420766667.a n = A186193 (n + 1)

end A186193

/-! ## A186193.P9261046495036885990

`A020739(A153053(n+2))`
-/

namespace A186193.P9261046495036885990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (A153053 (n + 2)).toNat

end

end A186193.P9261046495036885990

namespace A186193

/-- `A020739(A153053(n+2))` -/
def P9261046495036885990.Spec : Prop :=
  ∀ n, P9261046495036885990.a n = A186193 (n + 1)

end A186193

/-! ## A186193.P18117441295102129879

`A005843(A153238(n+2))+2`
-/

namespace A186193.P18117441295102129879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A153238 (n + 2)).toNat + 2

end

end A186193.P18117441295102129879

namespace A186193

/-- `A005843(A153238(n+2))+2` -/
def P18117441295102129879.Spec : Prop :=
  ∀ n, P18117441295102129879.a n = A186193 (n + 1)

end A186193

/-! ## A186193.P13301704321291131900

`A103517(A153238(n+2))`
-/

namespace A186193.P13301704321291131900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A153238 (n + 2)).toNat

end

end A186193.P13301704321291131900

namespace A186193

/-- `A103517(A153238(n+2))` -/
def P13301704321291131900.Spec : Prop :=
  ∀ n, P13301704321291131900.a n = A186193 (n + 1)

end A186193

/-! ## A186193.P7137473564064998242

`lt[n+1, -∏{d}[n+1, #-2]]`
-/

namespace A186193.P7137473564064998242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ d ∈ Nat.divisors (f3 n), ((d : ℤ) - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186193.P7137473564064998242

namespace A186193

/-- `lt[n+1, -∏{d}[n+1, #-2]]` -/
def P7137473564064998242.Spec : Prop :=
  ∀ n, (P7137473564064998242.a n : ℤ) = A186193 (n + 1)

end A186193

/-!
# A186194: a(n) = A002275(n) * (A002275(n)+1).

The programs for A186194, the canonical program `A186194.P201725492431003808` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186194 has offset 0).

The definition of A186194 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002275(n)*(A002275(n)+1)` (program `A186194.P201725492431003808`, by `A186194.P201725492431003808.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186194.P201725492431003808

`A002275(n)*(A002275(n)+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186194

/-- `A002275(n)*(A002275(n)+1)` -/
def P201725492431003808.Spec : Prop :=
  ∀ n, P201725492431003808.a n = A186194 n

theorem P201725492431003808.correct : P201725492431003808.Spec := by
  intro n
  simp only [A186194]

end A186194

/-! ## A186194.P12023441658426762978

`2*C(ceil(10^n/9), 2)`
-/

namespace A186194.P12023441658426762978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose ⌈(10 ^ n : ℚ) / 9⌉.toNat 2

end

end A186194.P12023441658426762978

namespace A186194

/-- `2*C(ceil(10^n/9), 2)` -/
def P12023441658426762978.Spec : Prop :=
  ∀ n, (P12023441658426762978.a n : ℤ) = A186194 n

end A186194

/-! ## A186194.P18245836233585864765

`floor((∑[10*a(n-1)]/2)²)` with `a(0)=1, a(1)=2`
-/

namespace A186194.P18245836233585864765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2) ^ 2⌋

end

end A186194.P18245836233585864765

namespace A186194

/-- `floor((∑[10*a(n-1)]/2)²)` -/
def P18245836233585864765.Spec : Prop :=
  ∀ n, P18245836233585864765.a n = A186194 n

end A186194

/-! ## A186194.P11783018893684058278

`round((∑[10*a(n-1)]/2)²)` with `a(0)=1, a(1)=2`
-/

namespace A186194.P11783018893684058278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2) ^ 2)

end

end A186194.P11783018893684058278

namespace A186194

/-- `round((∑[10*a(n-1)]/2)²)` -/
def P11783018893684058278.Spec : Prop :=
  ∀ n, P11783018893684058278.a n = A186194 n

end A186194

/-! ## A186194.P6628208531965410047

`floor(10^n/9)*ceil(10^n/9)`
-/

namespace A186194.P6628208531965410047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 9⌋ * ⌈(10 ^ n : ℚ) / 9⌉

end

end A186194.P6628208531965410047

namespace A186194

/-- `floor(10^n/9)*ceil(10^n/9)` -/
def P6628208531965410047.Spec : Prop :=
  ∀ n, P6628208531965410047.a n = A186194 n

end A186194

/-! ## A186194.P2388928011433747848

`lcm(floor(10^n/9), ceil(10^n/9))`
-/

namespace A186194.P2388928011433747848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊(10 ^ n : ℚ) / 9⌋ ⌈(10 ^ n : ℚ) / 9⌉

end

end A186194.P2388928011433747848

namespace A186194

/-- `lcm(floor(10^n/9), ceil(10^n/9))` -/
def P2388928011433747848.Spec : Prop :=
  ∀ n, (P2388928011433747848.a n : ℤ) = A186194 n

end A186194

/-! ## A186194.P17078471976611255130

`round(∑[10^((n-1)%(n+2))])+floor(10^n/9)²`
-/

namespace A186194.P17078471976611255130
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j) + ⌊(10 ^ n : ℚ) / 9⌋ ^ 2

end

end A186194.P17078471976611255130

namespace A186194

/-- `round(∑[10^((n-1)%(n+2))])+floor(10^n/9)²` -/
def P17078471976611255130.Spec : Prop :=
  ∀ n, P17078471976611255130.a n = A186194 n

end A186194

/-! ## A186194.P7982224068386268850

`∑[and(-2, 10^n)/10]+∑[and(-2, 10^n)/10]²`
-/

namespace A186194.P7982224068386268850
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (10 ^ n : ℤ) : ℚ) / 10

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (10 ^ n : ℤ) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A186194.P7982224068386268850

namespace A186194

/-- `∑[and(-2, 10^n)/10]+∑[and(-2, 10^n)/10]²` -/
def P7982224068386268850.Spec : Prop :=
  ∀ n, P7982224068386268850.a n = (A186194 n : ℚ)

end A186194

/-! ## A186194.P7461517428962714435

`ceil(10^n/3)%∑[ceil(10^n/5)]+floor(10^n/9)²`
-/

namespace A186194.P7461517428962714435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 ^ n : ℚ) / 5⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(10 ^ n : ℚ) / 3⌉ (∑ j ∈ Finset.range (n + 1), f1 j) + ⌊(10 ^ n : ℚ) / 9⌋ ^ 2

end

end A186194.P7461517428962714435

namespace A186194

/-- `ceil(10^n/3)%∑[ceil(10^n/5)]+floor(10^n/9)²` -/
def P7461517428962714435.Spec : Prop :=
  ∀ n, P7461517428962714435.a n = A186194 n

end A186194

/-! ## A186194.P5364009114183015678

`floor((A002276(n)+1)²/4)`
-/

namespace A186194.P5364009114183015678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A002276 n + 1) ^ 2 : ℚ) / 4⌋

end

end A186194.P5364009114183015678

namespace A186194

/-- `floor((A002276(n)+1)²/4)` -/
def P5364009114183015678.Spec : Prop :=
  ∀ n, P5364009114183015678.a n = A186194 n

end A186194

/-!
# A186195: Expansion of (1+5x+sqrt(1+2x+9x^2))/(2(1+2x)).

The programs for A186195, the canonical program `A186195.P9821125937020258988` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186195 has offset 0).

The definition of A186195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186195.P9821125937020258988

`A125695(n-1)-2*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A186195

/-- `A125695(n-1)-2*a(n-1)` -/
def P9821125937020258988.Spec : Prop :=
  ∀ n, P9821125937020258988.a n = A186195 n

theorem P9821125937020258988.correct : P9821125937020258988.Spec := by
  intro n
  simp only [A186195]

end A186195

/-!
# A186196: a(n)=(-1)^n*(-2)^C(n,2)*A001045(n+1).

The programs for A186196, the canonical program `A186196.P14794759112543715371` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186196 has offset 0).

The definition of A186196 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*(-2)^C(n, 2)*A001045(n+1)` (program `A186196.P14794759112543715371`, by `A186196.P14794759112543715371.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186196.P14794759112543715371

`(-1)^n*(-2)^C(n, 2)*A001045(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186196

/-- `(-1)^n*(-2)^C(n, 2)*A001045(n+1)` -/
def P14794759112543715371.Spec : Prop :=
  ∀ n, P14794759112543715371.a n = A186196 n

theorem P14794759112543715371.correct : P14794759112543715371.Spec := by
  intro n
  simp only [A186196]

end A186196

/-! ## A186196.P16077994624283154699

`∑[(-2)^n]*∏[A123344(n)]`
-/

namespace A186196.P16077994624283154699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A186196.P16077994624283154699

namespace A186196

/-- `∑[(-2)^n]*∏[A123344(n)]` -/
def P16077994624283154699.Spec : Prop :=
  ∀ n, P16077994624283154699.a n = A186196 n

end A186196

/-! ## A186196.P6674626055845222008

`-A157785(A000124(n+1))`
-/

namespace A186196.P6674626055845222008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A157785 (A000124 (n + 1)).toNat

end

end A186196.P6674626055845222008

namespace A186196

/-- `-A157785(A000124(n+1))` -/
def P6674626055845222008.Spec : Prop :=
  ∀ n, P6674626055845222008.a n = A186196 n

end A186196

/-! ## A186196.P17729419929017498242

`∏[A123344(n)]*A077925(n)`
-/

namespace A186196.P17729419929017498242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A077925 n

end

end A186196.P17729419929017498242

namespace A186196

/-- `∏[A123344(n)]*A077925(n)` -/
def P17729419929017498242.Spec : Prop :=
  ∀ n, P17729419929017498242.a n = A186196 n

end A186196

/-! ## A186196.P6357190695368714615

`Δ[-∑[A157785(A000124(n))]]`
-/

namespace A186196.P6357190695368714615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157785 (A000124 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186196.P6357190695368714615

namespace A186196

/-- `Δ[-∑[A157785(A000124(n))]]` -/
def P6357190695368714615.Spec : Prop :=
  ∀ n, P6357190695368714615.a n = A186196 n

end A186196

/-!
# A186197: Number of (n+1)X2 0..3 arrays with no 2X2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186197, there is no canonical definition to state claims against.
-/

/-! ## A186197.P8650153664650025078

`A186200(∑[n]+1)`
-/

namespace A186197.P8650153664650025078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186200 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186197.P8650153664650025078

/-! ## A186197.P6936105074719673809

`lcm(2, A186200(A000124(n)))`
-/

namespace A186197.P6936105074719673809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186200 (A000124 n).toNat)

end

end A186197.P6936105074719673809

/-! ## A186197.P13301047440665424767

`record[A186200(A267104(n+1))]`
-/

namespace A186197.P13301047440665424767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186200 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186197.P13301047440665424767

/-! ## A186197.P3170367964118415972

`record[A010054(n)*A186200(n+1)]`
-/

namespace A186197.P3170367964118415972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186197.P3170367964118415972

/-!
# A186198: Number of (n+1)X3 0..3 arrays with no 2X2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186198, there is no canonical definition to state claims against.
-/

/-! ## A186198.P4838193012047793344

`A186200(∑[n+1]+2)`
-/

namespace A186198.P4838193012047793344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186200 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186198.P4838193012047793344

/-! ## A186198.P4311866506787256644

`record[A186200(A049777(n+1)+2)]`
-/

namespace A186198.P4311866506787256644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186200 (A049777 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186198.P4311866506787256644

/-! ## A186198.P18036430723770374249

`record[A010054(n)*A186200(n+2)]`
-/

namespace A186198.P18036430723770374249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186200 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186198.P18036430723770374249

/-!
# A186199: Number of (n+1)X4 0..3 arrays with no 2X2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A186199, there is no canonical definition to state claims against.
-/

/-! ## A186199.P11635790068287808006

`A186200(∑[n+2]+4)`
-/

namespace A186199.P11635790068287808006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186200 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186199.P11635790068287808006

