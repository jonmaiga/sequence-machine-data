import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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

/-!
# A343301: Numbers k such that 6*k+1 through 6*k+5 are all deficient (in A005100).

The programs for A343301, there is no canonical definition to state claims against.
-/

/-! ## A343301.P4578552214284786824

`floor(A343302(n+1)/6)`
-/

namespace A343301.P4578552214284786824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A343302 (n + 1) : ℚ) / 6⌋

end

end A343301.P4578552214284786824

/-! ## A343301.P6841030501068475473

`A028242(ceil(A343302(n+1)/3))`
-/

namespace A343301.P6841030501068475473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 ⌈(A343302 (n + 1) : ℚ) / 3⌉.toNat

end

end A343301.P6841030501068475473

/-! ## A343301.P10214140763945435281

`A008612(A343302(n+1))`
-/

namespace A343301.P10214140763945435281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A343302 (n + 1)).toNat

end

end A343301.P10214140763945435281

/-! ## A343301.P8295233875106689125

`A103221(A343302(n+1))%A008514(n)`
-/

namespace A343301.P8295233875106689125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103221 (A343302 (n + 1)).toNat) (A008514 n)

end

end A343301.P8295233875106689125

/-! ## A343301.P2247563551225739066

`A103221(A343302(n+1)%A017498(n))`
-/

namespace A343301.P2247563551225739066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.tmod (A343302 (n + 1)) (A017498 n)).toNat

end

end A343301.P2247563551225739066

/-!
# A343302: Numbers k such that k through k+4 are all deficient (in A005100).

The programs for A343302, there is no canonical definition to state claims against.
-/

/-! ## A343302.P9126184729412629115

`A016921(A343301(n+1))`
-/

namespace A343302.P9126184729412629115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A343301 (n + 1)).toNat

end

end A343302.P9126184729412629115

/-! ## A343302.P13157385708026275476

`A016777(2*A343301(n+1))`
-/

namespace A343302.P13157385708026275476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * A343301 (n + 1)).toNat

end

end A343302.P13157385708026275476

/-! ## A343302.P10205333243276375903

`A231625(eq[0, A231625(n+1)%2])`
-/

namespace A343302.P10205333243276375903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231625 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231625 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343302.P10205333243276375903

/-! ## A343302.P9260853945701579923

`A231625(eq[1, A231625(n+2)-A231625(n+1)]+1)`
-/

namespace A343302.P9260853945701579923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231625 (n + 2) - A231625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231625 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A343302.P9260853945701579923

/-! ## A343302.P10688280203885807327

`A005408(3*A343301(n+1))`
-/

namespace A343302.P10688280203885807327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (3 * A343301 (n + 1)).toNat

end

end A343302.P10688280203885807327

/-! ## A343302.P8831959316875704999

`A231624(eq[0, A231624(n+1)%2])`
-/

namespace A343302.P8831959316875704999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231624 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231624 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343302.P8831959316875704999

/-! ## A343302.P7399807842447851622

`∩[A231626(n+1), A317047(n+1)]`
-/

namespace A343302.P7399807842447851622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343302.P7399807842447851622

/-! ## A343302.P9630032140446372856

`∩[A026488(n+1), A231626(n+1)]`
-/

namespace A343302.P9630032140446372856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343302.P9630032140446372856

/-! ## A343302.P2470023177526434528

`∩[A231626(n+1), A279831(n+1)]`
-/

namespace A343302.P2470023177526434528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343302.P2470023177526434528

/-!
# A343303: Numbers in A231626 but not in A343302; first of 5 consecutive deficient numbers in arithmetic progression with common difference > 1.

The programs for A343303, the canonical program `A343303.P7519863497709517625` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343303 has offset 1).

The definition of A343303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 611 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343303.P4798467079983986898

`A231089(n+1)-A000188(A031215(n+1))`
-/

namespace A343303.P4798467079983986898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231089 (n + 1) - A000188 (A031215 (n + 1)).toNat

end

end A343303.P4798467079983986898

namespace A343303

/-- `A231089(n+1)-A000188(A031215(n+1))` -/
def P4798467079983986898.Spec : Prop :=
  ∀ n, P4798467079983986898.a n = A343303 (n + 1)

end A343303

/-! ## A343303.P7519863497709517625

`A231089(n+1)+A033999(p?[A016777(n)])`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A343303

/-- `A231089(n+1)+A033999(p?[A016777(n)])` -/
def P7519863497709517625.Spec : Prop :=
  ∀ n, P7519863497709517625.a n = A343303 (n + 1)

theorem P7519863497709517625.correct : P7519863497709517625.Spec := by
  intro n
  simp only [A343303, Nat.add_sub_cancel]

end A343303

/-! ## A343303.P14953050694194732952

`A231089(n+1)-A001222(A106535(3*n+4))`
-/

namespace A343303.P14953050694194732952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231089 (n + 1) - A001222 (A106535 (3 * n + 4)).toNat

end

end A343303.P14953050694194732952

namespace A343303

/-- `A231089(n+1)-A001222(A106535(3*n+4))` -/
def P14953050694194732952.Spec : Prop :=
  ∀ n, P14953050694194732952.a n = A343303 (n + 1)

end A343303

/-! ## A343303.P1926062477561611399

`A231089(n+1)-A000032(n+1)/A000204(n+1)`
-/

namespace A343303.P1926062477561611399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231089 (n + 1) : ℚ) - (A000032 (n + 1) : ℚ) / (A000204 (n + 1) : ℚ)

end

end A343303.P1926062477561611399

namespace A343303

/-- `A231089(n+1)-A000032(n+1)/A000204(n+1)` -/
def P1926062477561611399.Spec : Prop :=
  ∀ n, P1926062477561611399.a n = (A343303 (n + 1) : ℚ)

end A343303

/-! ## A343303.P8630162309468817846

`∩[A228961(n+1), A231088(n+1)]-1`
-/

namespace A343303.P8630162309468817846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231088 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A343303.P8630162309468817846

namespace A343303

/-- `∩[A228961(n+1), A231088(n+1)]-1` -/
def P8630162309468817846.Spec : Prop :=
  ∀ n, P8630162309468817846.a n = A343303 (n + 1)

end A343303

/-! ## A343303.P1471086226791746922

`A231089(n+1)+A008683(A006562(n+1))`
-/

namespace A343303.P1471086226791746922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231089 (n + 1) + A008683 (A006562 (n + 1)).toNat

end

end A343303.P1471086226791746922

namespace A343303

/-- `A231089(n+1)+A008683(A006562(n+1))` -/
def P1471086226791746922.Spec : Prop :=
  ∀ n, P1471086226791746922.a n = A343303 (n + 1)

end A343303

/-! ## A343303.P13670770864538643632

`A231089(n+1)+A008683(A001359(3*n+2))`
-/

namespace A343303.P13670770864538643632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231089 (n + 1) + A008683 (A001359 (3 * n + 2)).toNat

end

end A343303.P13670770864538643632

namespace A343303

/-- `A231089(n+1)+A008683(A001359(3*n+2))` -/
def P13670770864538643632.Spec : Prop :=
  ∀ n, P13670770864538643632.a n = A343303 (n + 1)

end A343303

/-! ## A343303.P9146340623788027255

`A231089(n+1)+A008683(A061351(n))`
-/

namespace A343303.P9146340623788027255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231089 (n + 1) + A008683 (A061351 n).toNat

end

end A343303.P9146340623788027255

namespace A343303

/-- `A231089(n+1)+A008683(A061351(n))` -/
def P9146340623788027255.Spec : Prop :=
  ∀ n, P9146340623788027255.a n = A343303 (n + 1)

end A343303

/-! ## A343303.P8980224828259300963

`A231122(A139608(2*n))+A231089(n+1)`
-/

namespace A343303.P8980224828259300963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231122 (A139608 (2 * n)).toNat + A231089 (n + 1)

end

end A343303.P8980224828259300963

namespace A343303

/-- `A231122(A139608(2*n))+A231089(n+1)` -/
def P8980224828259300963.Spec : Prop :=
  ∀ n, P8980224828259300963.a n = A343303 (n + 1)

end A343303

/-! ## A343303.P950514657294275276

`∩[A228961(n+1), A231086(n+1)]-1`
-/

namespace A343303.P950514657294275276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231086 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A343303.P950514657294275276

namespace A343303

/-- `∩[A228961(n+1), A231086(n+1)]-1` -/
def P950514657294275276.Spec : Prop :=
  ∀ n, P950514657294275276.a n = A343303 (n + 1)

end A343303

/-!
# A343304: a(0) = a(1) = a(2) = 1; a(n) = a(n-3) + Sum_{k=0..n-4} a(k) * a(n-k-4).

The programs for A343304, there is no canonical definition to state claims against.
-/

/-! ## A343304.P13249326530773125913

`A335523(A206742(n)+1)`
-/

namespace A343304.P13249326530773125913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335523 (A206742 n + 1).toNat

end

end A343304.P13249326530773125913

/-! ## A343304.P1256894123476984498

`A000194(floor(sqrt(A300514(n))))`
-/

namespace A343304.P1256894123476984498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.sqrt (A300514 n)).toNat

end

end A343304.P1256894123476984498

/-! ## A343304.P12971011786674445266

`A000196(A005043(n)+A000048(n))`
-/

namespace A343304.P12971011786674445266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A005043 n + A000048 n).toNat

end

end A343304.P12971011786674445266

/-! ## A343304.P5251963656656415184

`A000196(A103221(n)+A007971(n))`
-/

namespace A343304.P5251963656656415184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A103221 n + A007971 n).toNat

end

end A343304.P5251963656656415184

/-! ## A343304.P1624442860001818455

`A083375(A099965(n))`
-/

namespace A343304.P1624442860001818455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A099965 n).toNat

end

end A343304.P1624442860001818455

/-!
# A343305: a(0) = ... = a(3) = 1; a(n) = a(n-4) + Sum_{k=0..n-5} a(k) * a(n-k-5).

The programs for A343305, there is no canonical definition to state claims against.
-/

/-! ## A343305.P9353725215048264006

`A057354(A079972(n))+A001511(A278822(n))`
-/

namespace A343305.P9353725215048264006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A079972 n).toNat + A001511 (A278822 n).toNat

end

end A343305.P9353725215048264006

/-! ## A343305.P662002481671171592

`(A057354(A079972(n))+1)^A089741(A003817(n))`
-/

namespace A343305.P662002481671171592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057354 (A079972 n).toNat + 1 : ℚ) ^ (A089741 (A003817 n).toNat : ℤ)

end

end A343305.P662002481671171592

/-! ## A343305.P5393818094797807686

`A346076(n)-A185284(2*n+9)`
-/

namespace A343305.P5393818094797807686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346076 n - A185284 (2 * n + 9)

end

end A343305.P5393818094797807686

/-! ## A343305.P11003780508812359712

`A143283(n)+A139039(A325683(n))`
-/

namespace A343305.P11003780508812359712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143283 n + A139039 (A325683 n).toNat

end

end A343305.P11003780508812359712

/-! ## A343305.P16852824797855417205

`A346076(n)-A137579(A190783(n))`
-/

namespace A343305.P16852824797855417205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346076 n - A137579 (A190783 n).toNat

end

end A343305.P16852824797855417205

/-!
# A343306: Numbers k such that there is only 1 abundant number (A005101) among 6*k+1 through 6*k+5.

The programs for A343306, the canonical program `A343306.P10768569373894334497` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343306 has offset 1).

The definition of A343306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 776 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343306.P10768569373894334497

`eq[2, Δ[A091194(A008458(n))]]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A343306

/-- `eq[2, Δ[A091194(A008458(n))]]` -/
def P10768569373894334497.Spec : Prop :=
  ∀ n, (P10768569373894334497.a n : ℤ) = A343306 (n + 1)

theorem P10768569373894334497.correct : P10768569373894334497.Spec := by
  intro n
  simp only [A343306, Nat.add_sub_cancel]

end A343306

/-!
# A343307: a(n) is the number of self-avoiding paths connecting consecutive corners of an n X n triangular grid.

The programs for A343307, there is no canonical definition to state claims against.
-/

/-! ## A343307.P5634130101490855900

`∑[A005451(∑[A000680(n)])]`
-/

namespace A343307.P5634130101490855900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000680 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343307.P5634130101490855900

/-!
# A343309: Number of partitions of n into 3 distinct parts x,y,z such that (x+y+z) | x*y*z.

The programs for A343309, there is no canonical definition to state claims against.
-/

/-! ## A343309.P2793358581733811040

`A122923(and(A003105(2*n+3), A115400(n)))`
-/

namespace A343309.P2793358581733811040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122923 (Int.land (A003105 (2 * n + 3)) (A115400 n)).toNat

end

end A343309.P2793358581733811040

/-! ## A343309.P10004669411562217071

`A001222(∏{e}[A070251(n+1), #])`
-/

namespace A343309.P10004669411562217071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A343309.P10004669411562217071

/-! ## A343309.P9262393045482577457

`A287769(n+1)*A352513(A057568(n+1))`
-/

namespace A343309.P9262393045482577457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287769 (n + 1) * A352513 (A057568 (n + 1)).toNat

end

end A343309.P9262393045482577457

/-! ## A343309.P16211756816079913732

`A124763(A032153(n))*A229964(n+1)`
-/

namespace A343309.P16211756816079913732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (A032153 n).toNat * A229964 (n + 1)

end

end A343309.P16211756816079913732

/-!
# A343310: a(n) is the number of bilaterally symmetrical self-avoiding paths connecting consecutive corners of an n X n triangular grid.

The programs for A343310, there is no canonical definition to state claims against.
-/

/-! ## A343310.P6771888092153855746

`A125229(n!*∑[1/n!]+2)`
-/

namespace A343310.P6771888092153855746
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125229 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 2)).toNat

end

end A343310.P6771888092153855746

/-! ## A343310.P3167799443363888451

`ceil(sqrt(A324171(comp[2*n+3])))+n`
-/

namespace A343310.P3167799443363888451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A324171 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)⌉ + (n : ℤ)

end

end A343310.P3167799443363888451

/-!
# A343311: Numbers of the form x + y + z with distinct positive integers x,y,z such that (x+y+z) | x*y*z.

The programs for A343311, the canonical program `A343311.P12285777711636340916` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343311 has offset 1).

The definition of A343311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343311.P16323027507603426033

`lt[exp(1-and(2, n)), A082023(n)]`
-/

namespace A343311.P16323027507603426033
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (1 - (Nat.land 2 n : ℤ) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A343311.P16323027507603426033

namespace A343311

/-- `lt[exp(1-and(2, n)), A082023(n)]` -/
def P16323027507603426033.Spec : Prop :=
  ∀ n, (P16323027507603426033.a n : ℤ) = A343311 (n + 1)

end A343311

/-! ## A343311.P12285777711636340916

`lt[A324337(n), A082023(n)²]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A343311

/-- `lt[A324337(n), A082023(n)²]` -/
def P12285777711636340916.Spec : Prop :=
  ∀ n, (P12285777711636340916.a n : ℤ) = A343311 (n + 1)

theorem P12285777711636340916.correct : P12285777711636340916.Spec := by
  intro n
  simp only [A343311, Nat.add_sub_cancel]

end A343311

/-! ## A343311.P12656801351613899699

`lt[A328772(n), A082023(n)²]`
-/

namespace A343311.P12656801351613899699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343311.P12656801351613899699

namespace A343311

/-- `lt[A328772(n), A082023(n)²]` -/
def P12656801351613899699.Spec : Prop :=
  ∀ n, (P12656801351613899699.a n : ℤ) = A343311 (n + 1)

end A343311

/-! ## A343311.P882269841373323064

`A387319(n+1)+A063524(n)`
-/

namespace A343311.P882269841373323064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1) + A063524 n

end

end A343311.P882269841373323064

namespace A343311

/-- `A387319(n+1)+A063524(n)` -/
def P882269841373323064.Spec : Prop :=
  ∀ n, P882269841373323064.a n = A343311 (n + 1)

end A343311

/-! ## A343311.P2081930647283482310

`A387319(n+1)-A159075(n)`
-/

namespace A343311.P2081930647283482310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1) - A159075 n

end

end A343311.P2081930647283482310

namespace A343311

/-- `A387319(n+1)-A159075(n)` -/
def P2081930647283482310.Spec : Prop :=
  ∀ n, P2081930647283482310.a n = A343311 (n + 1)

end A343311

/-! ## A343311.P14165676269478281703

`lt[A002808(n+1), A082023(n)²²]`
-/

namespace A343311.P14165676269478281703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082023 n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343311.P14165676269478281703

namespace A343311

/-- `lt[A002808(n+1), A082023(n)²²]` -/
def P14165676269478281703.Spec : Prop :=
  ∀ n, (P14165676269478281703.a n : ℤ) = A343311 (n + 1)

end A343311

/-! ## A343311.P4966041512019685397

`lt[A000005(n+1)+1, A082023(n)²]`
-/

namespace A343311.P4966041512019685397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343311.P4966041512019685397

namespace A343311

/-- `lt[A000005(n+1)+1, A082023(n)²]` -/
def P4966041512019685397.Spec : Prop :=
  ∀ n, (P4966041512019685397.a n : ℤ) = A343311 (n + 1)

end A343311

/-! ## A343311.P6635665988039640013

`lt[A303756(n+1)+2, A082023(n)²]`
-/

namespace A343311.P6635665988039640013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343311.P6635665988039640013

namespace A343311

/-- `lt[A303756(n+1)+2, A082023(n)²]` -/
def P6635665988039640013.Spec : Prop :=
  ∀ n, (P6635665988039640013.a n : ℤ) = A343311 (n + 1)

end A343311

/-! ## A343311.P2415807048046260992

`lt[A303756(A303756(n+1)), A082023(n)]`
-/

namespace A343311.P2415807048046260992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (A303756 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343311.P2415807048046260992

namespace A343311

/-- `lt[A303756(A303756(n+1)), A082023(n)]` -/
def P2415807048046260992.Spec : Prop :=
  ∀ n, (P2415807048046260992.a n : ℤ) = A343311 (n + 1)

end A343311

/-! ## A343311.P15859558596815037900

`lt[A090822(A018252(n+2)), A082023(n)]`
-/

namespace A343311.P15859558596815037900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A018252 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343311.P15859558596815037900

namespace A343311

/-- `lt[A090822(A018252(n+2)), A082023(n)]` -/
def P15859558596815037900.Spec : Prop :=
  ∀ n, (P15859558596815037900.a n : ℤ) = A343311 (n + 1)

end A343311

/-! ## A343311.P1314194143051465613

`lt[A018252(A151800(n)), A082023(n)²²]`
-/

namespace A343311.P1314194143051465613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A151800 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082023 n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343311.P1314194143051465613

namespace A343311

/-- `lt[A018252(A151800(n)), A082023(n)²²]` -/
def P1314194143051465613.Spec : Prop :=
  ∀ n, (P1314194143051465613.a n : ℤ) = A343311 (n + 1)

end A343311

/-! ## A343311.P7000582503085218751

`lt[A082023(A000005(2*(n+1))), A082023(n)]`
-/

namespace A343311.P7000582503085218751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 (A000005 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343311.P7000582503085218751

namespace A343311

/-- `lt[A082023(A000005(2*(n+1))), A082023(n)]` -/
def P7000582503085218751.Spec : Prop :=
  ∀ n, (P7000582503085218751.a n : ℤ) = A343311 (n + 1)

end A343311

/-! ## A343311.P17795806710200634206

`lt[A072491(A351233(n)), A082023(n)]`
-/

namespace A343311.P17795806710200634206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A351233 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343311.P17795806710200634206

namespace A343311

/-- `lt[A072491(A351233(n)), A082023(n)]` -/
def P17795806710200634206.Spec : Prop :=
  ∀ n, (P17795806710200634206.a n : ℤ) = A343311 (n + 1)

end A343311

/-! ## A343311.P6184462680399049779

`lt[A072491(n+1), A082023(n)]`
-/

namespace A343311.P6184462680399049779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343311.P6184462680399049779

namespace A343311

/-- `lt[A072491(n+1), A082023(n)]` -/
def P6184462680399049779.Spec : Prop :=
  ∀ n, (P6184462680399049779.a n : ℤ) = A343311 (n + 1)

end A343311

/-! ## A343311.P1214413419514977063

`lt[6, A092976(n)]`
-/

namespace A343311.P1214413419514977063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A343311.P1214413419514977063

namespace A343311

/-- `lt[6, A092976(n)]` -/
def P1214413419514977063.Spec : Prop :=
  ∀ n, (P1214413419514977063.a n : ℤ) = A343311 (n + 1)

end A343311

/-! ## A343311.P17851957596933939747

`lt[5, A048671(n+1)]+1`
-/

namespace A343311.P17851957596933939747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A343311.P17851957596933939747

namespace A343311

/-- `lt[5, A048671(n+1)]+1` -/
def P17851957596933939747.Spec : Prop :=
  ∀ n, (P17851957596933939747.a n : ℤ) = A343311 (n + 1)

end A343311

/-! ## A343311.P14766645452811872394

`lt[5*A014963(n+1), n+1]+1`
-/

namespace A343311.P14766645452811872394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A014963 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A343311.P14766645452811872394

namespace A343311

/-- `lt[5*A014963(n+1), n+1]+1` -/
def P14766645452811872394.Spec : Prop :=
  ∀ n, (P14766645452811872394.a n : ℤ) = A343311 (n + 1)

end A343311

/-! ## A343311.P5950185010949972744

`lt[5, (n+2)/A014963(n+2)]+2`
-/

namespace A343311.P5950185010949972744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A014963 (n + 2) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 2

end

end A343311.P5950185010949972744

namespace A343311

/-- `lt[5, (n+2)/A014963(n+2)]+2` -/
def P5950185010949972744.Spec : Prop :=
  ∀ n, (P5950185010949972744.a n : ℤ) = A343311 (n + 1)

end A343311

/-! ## A343311.P7191904515406029968

`lt[A007920(n)+1, A082023(n)²]`
-/

namespace A343311.P7191904515406029968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343311.P7191904515406029968

namespace A343311

/-- `lt[A007920(n)+1, A082023(n)²]` -/
def P7191904515406029968.Spec : Prop :=
  ∀ n, (P7191904515406029968.a n : ℤ) = A343311 (n + 1)

end A343311

/-! ## A343311.P11450564648476564578

`lt[A014076(A014963(n+1)), n]+1`
-/

namespace A343311.P11450564648476564578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (A014963 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A343311.P11450564648476564578

namespace A343311

/-- `lt[A014076(A014963(n+1)), n]+1` -/
def P11450564648476564578.Spec : Prop :=
  ∀ n, (P11450564648476564578.a n : ℤ) = A343311 (n + 1)

end A343311

/-!
# A343315: a(n) is the number of nonnegative integers that can be represented in a 7-segment display by using only n segments (version A277116).

The programs for A343315, there is no canonical definition to state claims against.
-/

/-! ## A343315.P6962326796197080107

`A345020(n)-A205510(A132056(n+1))`
-/

namespace A343315.P6962326796197080107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345020 n - A205510 (A132056 (n + 1)).toNat

end

end A343315.P6962326796197080107

/-!
# A343317: a(n) is the least k >= 0 such that A343316(n, k) = n.

The programs for A343317, the canonical program `A343317.P8685563179642200841` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343317 has offset 0).

The definition of A343317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343317.P8685563179642200841

`A338246(A060374(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A343317

/-- `A338246(A060374(n))` -/
def P8685563179642200841.Spec : Prop :=
  ∀ n, P8685563179642200841.a n = A343317 n

theorem P8685563179642200841.correct : P8685563179642200841.Spec := by
  intro n
  simp only [A343317]

end A343317

/-! ## A343317.P4185240698922573777

`A338246(n)+A060373(n)`
-/

namespace A343317.P4185240698922573777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338246 n + A060373 n

end

end A343317.P4185240698922573777

namespace A343317

/-- `A338246(n)+A060373(n)` -/
def P4185240698922573777.Spec : Prop :=
  ∀ n, P4185240698922573777.a n = A343317 n

end A343317

/-! ## A343317.P983384279599011624

`A338246(2*A060372(n)-n)`
-/

namespace A343317.P983384279599011624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338246 (2 * A060372 n - (n : ℤ)).toNat

end

end A343317.P983384279599011624

namespace A343317

/-- `A338246(2*A060372(n)-n)` -/
def P983384279599011624.Spec : Prop :=
  ∀ n, P983384279599011624.a n = A343317 n

end A343317

/-! ## A343317.P2043510574878118413

`A060372(n)+A338246(n)-n`
-/

namespace A343317.P2043510574878118413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n + (A338246 n - (n : ℤ))

end

end A343317.P2043510574878118413

namespace A343317

/-- `A060372(n)+A338246(n)-n` -/
def P2043510574878118413.Spec : Prop :=
  ∀ n, P2043510574878118413.a n = A343317 n

end A343317

/-! ## A343317.P3353795755189324592

`A338247(n)+A060373(A338245(n))`
-/

namespace A343317.P3353795755189324592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338247 n + A060373 (A338245 n).toNat

end

end A343317.P3353795755189324592

namespace A343317

/-- `A338247(n)+A060373(A338245(n))` -/
def P3353795755189324592.Spec : Prop :=
  ∀ n, P3353795755189324592.a n = A343317 n

end A343317

/-! ## A343317.P11632897814077021942

`A060374(n)-A060373(A338247(n))`
-/

namespace A343317.P11632897814077021942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 n - A060373 (A338247 n).toNat

end

end A343317.P11632897814077021942

namespace A343317

/-- `A060374(n)-A060373(A338247(n))` -/
def P11632897814077021942.Spec : Prop :=
  ∀ n, P11632897814077021942.a n = A343317 n

end A343317

/-! ## A343317.P14659975243662562021

`A338246(A117967(n)-A060373(n))`
-/

namespace A343317.P14659975243662562021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338246 (A117967 n - A060373 n).toNat

end

end A343317.P14659975243662562021

namespace A343317

/-- `A338246(A117967(n)-A060373(n))` -/
def P14659975243662562021.Spec : Prop :=
  ∀ n, P14659975243662562021.a n = A343317 n

end A343317

/-! ## A343317.P10200974542463407397

`A338246(A060372(n)-(n-A060372(n)))`
-/

namespace A343317.P10200974542463407397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338246 (A060372 n - ((n : ℤ) - A060372 n)).toNat

end

end A343317.P10200974542463407397

namespace A343317

/-- `A338246(A060372(n)-(n-A060372(n)))` -/
def P10200974542463407397.Spec : Prop :=
  ∀ n, P10200974542463407397.a n = A343317 n

end A343317

/-!
# A343318: a(n) = (2^n + 1)^3.

The programs for A343318, the canonical program `A343318.P7705534516696697835` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343318 has offset 0).

The definition of A343318 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n+1)^3` (program `A343318.P7705534516696697835`, by `A343318.P7705534516696697835.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A343318.P7705534516696697835

`(2^n+1)^3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A343318

/-- `(2^n+1)^3` -/
def P7705534516696697835.Spec : Prop :=
  ∀ n, (P7705534516696697835.a n : ℤ) = A343318 n

theorem P7705534516696697835.correct : P7705534516696697835.Spec := by
  intro n
  simp only [A343318]

end A343318

/-! ## A343318.P6240986650643857212

`abs(xor(-1, 2^n)^3)`
-/

namespace A343318.P6240986650643857212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (2 ^ n : ℤ) ^ 3|

end

end A343318.P6240986650643857212

namespace A343318

/-- `abs(xor(-1, 2^n)^3)` -/
def P6240986650643857212.Spec : Prop :=
  ∀ n, P6240986650643857212.a n = A343318 n

end A343318

/-! ## A343318.P1219776413445353286

`abs(Δ[or(n, 2^n)]^3)`
-/

namespace A343318.P1219776413445353286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 3|

end

end A343318.P1219776413445353286

namespace A343318

/-- `abs(Δ[or(n, 2^n)]^3)` -/
def P1219776413445353286.Spec : Prop :=
  ∀ n, P1219776413445353286.a n = A343318 n

end A343318

/-! ## A343318.P4191860544874076308

`abs(Δ[xor(n, 2^n)]^3)`
-/

namespace A343318.P4191860544874076308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 3|

end

end A343318.P4191860544874076308

namespace A343318

/-- `abs(Δ[xor(n, 2^n)]^3)` -/
def P4191860544874076308.Spec : Prop :=
  ∀ n, P4191860544874076308.a n = A343318 n

end A343318

/-! ## A343318.P14643354219485786396

`floor(∑[2*a(n-1)]^3)` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A343318.P14643354219485786396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A343318.P14643354219485786396

namespace A343318

/-- `floor(∑[2*a(n-1)]^3)` -/
def P14643354219485786396.Spec : Prop :=
  ∀ n, (P14643354219485786396.a n : ℤ) = A343318 n

end A343318

/-! ## A343318.P13506298773772084310

`Δ[or(n, 2^n)]²*Δ[or(n, 2^n)]`
-/

namespace A343318.P13506298773772084310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 ^ n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A343318.P13506298773772084310

namespace A343318

/-- `Δ[or(n, 2^n)]²*Δ[or(n, 2^n)]` -/
def P13506298773772084310.Spec : Prop :=
  ∀ n, P13506298773772084310.a n = A343318 n

end A343318

/-! ## A343318.P17727341997383331403

`A099359(n)+2`
-/

namespace A343318.P17727341997383331403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099359 n + 2

end

end A343318.P17727341997383331403

namespace A343318

/-- `A099359(n)+2` -/
def P17727341997383331403.Spec : Prop :=
  ∀ n, P17727341997383331403.a n = A343318 n

end A343318

/-! ## A343318.P3545208012791008155

`abs((-A000051(n))^3)`
-/

namespace A343318.P3545208012791008155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-A000051 n) ^ 3|

end

end A343318.P3545208012791008155

namespace A343318

/-- `abs((-A000051(n))^3)` -/
def P3545208012791008155.Spec : Prop :=
  ∀ n, P3545208012791008155.a n = A343318 n

end A343318

/-! ## A343318.P10131602733056049742

`A000051(n)*A028400(n)`
-/

namespace A343318.P10131602733056049742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A028400 n

end

end A343318.P10131602733056049742

namespace A343318

/-- `A000051(n)*A028400(n)` -/
def P10131602733056049742.Spec : Prop :=
  ∀ n, P10131602733056049742.a n = A343318 n

end A343318

/-! ## A343318.P12744541460682992943

`A028400(n)*A094373(n+1)`
-/

namespace A343318.P12744541460682992943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028400 n * A094373 (n + 1)

end

end A343318.P12744541460682992943

namespace A343318

/-- `A028400(n)*A094373(n+1)` -/
def P12744541460682992943.Spec : Prop :=
  ∀ n, P12744541460682992943.a n = A343318 n

end A343318

/-! ## A343318.P13921570773041877273

`(A052548(n)-1)*A028400(n)`
-/

namespace A343318.P13921570773041877273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052548 n - 1) * A028400 n

end

end A343318.P13921570773041877273

namespace A343318

/-- `(A052548(n)-1)*A028400(n)` -/
def P13921570773041877273.Spec : Prop :=
  ∀ n, P13921570773041877273.a n = A343318 n

end A343318

/-! ## A343318.P16437576506824977291

`record[A052552(n)²*A052552(n)]`
-/

namespace A343318.P16437576506824977291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n ^ 2 * A052552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343318.P16437576506824977291

namespace A343318

/-- `record[A052552(n)²*A052552(n)]` -/
def P16437576506824977291.Spec : Prop :=
  ∀ n, P16437576506824977291.a n = A343318 n

end A343318

/-! ## A343318.P12560608126983246474

`record[A271709(n)²*A271709(n)]`
-/

namespace A343318.P12560608126983246474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n ^ 2 * A271709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343318.P12560608126983246474

namespace A343318

/-- `record[A271709(n)²*A271709(n)]` -/
def P12560608126983246474.Spec : Prop :=
  ∀ n, P12560608126983246474.a n = A343318 n

end A343318

/-! ## A343318.P16436969764709610323

`Δ[A005126(n)]²*Δ[A005126(n)]`
-/

namespace A343318.P16436969764709610323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A343318.P16436969764709610323

namespace A343318

/-- `Δ[A005126(n)]²*Δ[A005126(n)]` -/
def P16436969764709610323.Spec : Prop :=
  ∀ n, P16436969764709610323.a n = A343318 n

end A343318

/-! ## A343318.P13886128543202110539

`Δ[A006127(n)]²*Δ[A006127(n)]`
-/

namespace A343318.P13886128543202110539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A343318.P13886128543202110539

namespace A343318

/-- `Δ[A006127(n)]²*Δ[A006127(n)]` -/
def P13886128543202110539.Spec : Prop :=
  ∀ n, P13886128543202110539.a n = A343318 n

end A343318

/-! ## A343318.P16591497200831012637

`Δ[A052944(n)]²*Δ[A052944(n)]`
-/

namespace A343318.P16591497200831012637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052944 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A343318.P16591497200831012637

namespace A343318

/-- `Δ[A052944(n)]²*Δ[A052944(n)]` -/
def P16591497200831012637.Spec : Prop :=
  ∀ n, P16591497200831012637.a n = A343318 n

end A343318

/-! ## A343318.P44849144819945265

`A000051(n)*A183978(2*n+1)`
-/

namespace A343318.P44849144819945265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A183978 (2 * n + 1)

end

end A343318.P44849144819945265

namespace A343318

/-- `A000051(n)*A183978(2*n+1)` -/
def P44849144819945265.Spec : Prop :=
  ∀ n, P44849144819945265.a n = A343318 n

end A343318

/-! ## A343318.P14522567115465595766

`(A000079(n)+1)*(A000079(n)+1)²`
-/

namespace A343318.P14522567115465595766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n + 1) * (A000079 n + 1) ^ 2

end

end A343318.P14522567115465595766

namespace A343318

/-- `(A000079(n)+1)*(A000079(n)+1)²` -/
def P14522567115465595766.Spec : Prop :=
  ∀ n, P14522567115465595766.a n = A343318 n

end A343318

/-! ## A343318.P5361197875228871100

`(A000225(n)+2)*(A000225(n)+2)²`
-/

namespace A343318.P5361197875228871100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 n + 2) * (A000225 n + 2) ^ 2

end

end A343318.P5361197875228871100

namespace A343318

/-- `(A000225(n)+2)*(A000225(n)+2)²` -/
def P5361197875228871100.Spec : Prop :=
  ∀ n, P5361197875228871100.a n = A343318 n

end A343318

/-! ## A343318.P10598508418496953300

`A052552(2*n)²*A052552(2*n)`
-/

namespace A343318.P10598508418496953300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (2 * n) ^ 2 * A052552 (2 * n)

end

end A343318.P10598508418496953300

namespace A343318

/-- `A052552(2*n)²*A052552(2*n)` -/
def P10598508418496953300.Spec : Prop :=
  ∀ n, P10598508418496953300.a n = A343318 n

end A343318

/-!
# A343319: Number of ways to partition n labeled elements into sets of different sizes of at least 4.

The programs for A343319, there is no canonical definition to state claims against.
-/

/-! ## A343319.P14326837087379763583

`A057814(3^C(a(n-1), 68)+n)` with `a(0)=1`
-/

namespace A343319.P14326837087379763583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057814 (3 ^ Nat.choose (a (n - 1)).toNat 68 + n)

end

end A343319.P14326837087379763583

/-! ## A343319.P10147375622937439994

`A057837((a(n-1)+char[n²]+1)²)` with `a(0)=1, a(1)=0`
-/

namespace A343319.P10147375622937439994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A057837 ((a (n - 1) + (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)) ^ 2).toNat

end

end A343319.P10147375622937439994

/-! ## A343319.P18021312786325324055

`A285867(A014266(n))`
-/

namespace A343319.P18021312786325324055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285867 (A014266 n).toNat

end

end A343319.P18021312786325324055

/-! ## A343319.P534459344326344511

`A057837(A064770(n)²)`
-/

namespace A343319.P534459344326344511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057837 (A064770 n ^ 2).toNat

end

end A343319.P534459344326344511

/-! ## A343319.P16493818536665258903

`A057837(A064770(n)^2)`
-/

namespace A343319.P16493818536665258903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057837 (A064770 n ^ 2).toNat

end

end A343319.P16493818536665258903

/-!
# A343323: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^(k^3).

The programs for A343323, there is no canonical definition to state claims against.
-/

/-! ## A343323.P3064107412326194217

`A343283(n+1)-A334875(A220753(n))`
-/

namespace A343323.P3064107412326194217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343283 (n + 1) - A334875 (A220753 n).toNat

end

end A343323.P3064107412326194217

/-! ## A343323.P14345972041954349480

`A343283(n+1)-A334875(A175196(n+1))`
-/

namespace A343323.P14345972041954349480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343283 (n + 1) - A334875 (A175196 (n + 1)).toNat

end

end A343323.P14345972041954349480

/-!
# A343324: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^(k^4).

The programs for A343324, there is no canonical definition to state claims against.
-/

/-! ## A343324.P17154971830380015193

`A343284(n+1)-A281462(A000118(n))`
-/

namespace A343324.P17154971830380015193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343284 (n + 1) - A281462 (A000118 n).toNat

end

end A343324.P17154971830380015193

/-! ## A343324.P8516042546255718119

`A343284(n+1)-A221817(A198060(3*n))`
-/

namespace A343324.P8516042546255718119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343284 (n + 1) - A221817 (A198060 (3 * n)).toNat

end

end A343324.P8516042546255718119

/-!
# A343325: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^(k^5).

The programs for A343325, there is no canonical definition to state claims against.
-/

/-! ## A343325.P17595992832100263588

`A343285(n+1)-A257850(A074143(n+1))`
-/

namespace A343325.P17595992832100263588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343285 (n + 1) - A257850 (A074143 (n + 1)).toNat

end

end A343325.P17595992832100263588

/-!
# A343327: Start with a(1)=1; thereafter a(n+1) = Sum_{k=1..n such that d(a(k)) = d(a(n))} d(a(k)) where d = A000005.

The programs for A343327, there is no canonical definition to state claims against.
-/

/-! ## A343327.P11468814575315967602

`A000005(A006720(n)*A256555(n+1))`
-/

namespace A343327.P11468814575315967602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006720 n * A256555 (n + 1)).toNat

end

end A343327.P11468814575315967602

/-! ## A343327.P16647092183869799882

`A001222((A145394(n+1)*A194960(2*n+5))^A008615(n+4))`
-/

namespace A343327.P16647092183869799882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A145394 (n + 1) * A194960 (2 * n + 5) : ℚ) ^ (A008615 (n + 4) : ℤ))).toNat

end

end A343327.P16647092183869799882

/-!
# A343329: a(n) is the largest positive integer that is abundant and has the same prime signature as A025610(n) or 0 if no such number exists.

The programs for A343329, there is no canonical definition to state claims against.
-/

/-! ## A343329.P7893046526846463931

`and(A019193(n+3), A034856(A271896(n)))`
-/

namespace A343329.P7893046526846463931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A019193 (n + 3)) (A034856 (A271896 n).toNat)

end

end A343329.P7893046526846463931

/-! ## A343329.P17716694601644255662

`A171260(ceil(4^n/2))%(2^n)`
-/

namespace A343329.P17716694601644255662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171260 ⌈(4 ^ n : ℚ) / 2⌉.toNat) (2 ^ n : ℤ)

end

end A343329.P17716694601644255662

/-! ## A343329.P12955933616774181687

`A153250(A148647(n))`
-/

namespace A343329.P12955933616774181687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153250 (A148647 n).toNat

end

end A343329.P12955933616774181687

/-! ## A343329.P2507009110712482889

`A343757(A390656(n))`
-/

namespace A343329.P2507009110712482889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343757 (A390656 n).toNat

end

end A343329.P2507009110712482889

/-!
# A343331: Expansion of Product_{k>=1} (1 + x^k)^(10^(k-1)).

The programs for A343331, there is no canonical definition to state claims against.
-/

/-! ## A343331.P6541707821193749508

`5*A165741(a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A343331.P6541707821193749508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  5 * A165741 (a (n - 1) + 1).toNat

end

end A343331.P6541707821193749508

/-!
# A343332: a(1) = 0; thereafter a(n+1) = floor((a(n)+y)/2), where y is the number of numbers m < n such that a(m) = a(n).

The programs for A343332, there is no canonical definition to state claims against.
-/

/-! ## A343332.P13525634568730075020

`A343333(n+3)-1`
-/

namespace A343332.P13525634568730075020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343333 (n + 3) - 1

end

end A343332.P13525634568730075020

/-! ## A343332.P11735064782747821912

`A023443(A343333(n+3))`
-/

namespace A343332.P11735064782747821912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A343333 (n + 3)).toNat

end

end A343332.P11735064782747821912

/-! ## A343332.P14870526639055127187

`(A343333(n+3)+A000578(n))%(n+1)`
-/

namespace A343332.P14870526639055127187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343333 (n + 3) + A000578 n) (n + 1 : ℤ)

end

end A343332.P14870526639055127187

/-! ## A343332.P5481726170172905638

`A259361(A343333(n+3)²)`
-/

namespace A343332.P5481726170172905638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A343333 (n + 3) ^ 2).toNat

end

end A343332.P5481726170172905638

/-! ## A343332.P4039901063287713946

`A004197(2*A343333(n+3)²)`
-/

namespace A343332.P4039901063287713946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (2 * A343333 (n + 3) ^ 2).toNat

end

end A343332.P4039901063287713946

/-! ## A343332.P232079028070647413

`abs(A343333(n+3)+A008683(A002145(n+1)))`
-/

namespace A343332.P232079028070647413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A343333 (n + 3) + A008683 (A002145 (n + 1)).toNat|

end

end A343332.P232079028070647413

/-! ## A343332.P1267135612108844368

`A004902(A343333(n+3))%A319374(n+2)`
-/

namespace A343332.P1267135612108844368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004902 (A343333 (n + 3)).toNat) (A319374 (n + 2))

end

end A343332.P1267135612108844368

/-! ## A343332.P16929976743040220876

`A032551(A343333(n+3))%A096296(n+1)`
-/

namespace A343332.P16929976743040220876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032551 (A343333 (n + 3)).toNat) (A096296 (n + 1))

end

end A343332.P16929976743040220876

/-!
# A343333: a(1) = 0; thereafter a(n+1) = ceiling((a(n)+y)/2), where y is the number of numbers m < n such that a(m) = a(n).

The programs for A343333, there is no canonical definition to state claims against.
-/

/-! ## A343333.P9437262749300749259

`A196563(xor(10, A060957(n)))`
-/

namespace A343333.P9437262749300749259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (Int.xor 10 (A060957 n)).toNat

end

end A343333.P9437262749300749259

/-! ## A343333.P6057625825967074136

`A001221(or(A214551(n), A285819(n)))`
-/

namespace A343333.P6057625825967074136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A214551 n) (A285819 n)).toNat

end

end A343333.P6057625825967074136

/-! ## A343333.P5861150007279181336

`A001221(A192812(n+1)+A192800(n+1))`
-/

namespace A343333.P5861150007279181336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A192812 (n + 1) + A192800 (n + 1)).toNat

end

end A343333.P5861150007279181336

/-! ## A343333.P3885953088922367712

`A087436(A285819(n))`
-/

namespace A343333.P3885953088922367712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A285819 n).toNat

end

end A343333.P3885953088922367712

/-! ## A343333.P1356975271157249731

`A087436(A287760(n))`
-/

namespace A343333.P1356975271157249731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A287760 n).toNat

end

end A343333.P1356975271157249731

/-!
# A343334: a(1) = 0; thereafter a(n+1) = abs(a(n)-y), where y is the number of numbers m < n such that a(m) = a(n).

The programs for A343334, there is no canonical definition to state claims against.
-/

/-! ## A343334.P2379823749162239903

`A194640(A000071(n+1))%A070939(n)`
-/

namespace A343334.P2379823749162239903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194640 (A000071 (n + 1)).toNat) (A070939 n)

end

end A343334.P2379823749162239903

/-! ## A343334.P8565381806794883028

`A007814(lcm(A002083(n+1), A094331(n+1)))`
-/

namespace A343334.P8565381806794883028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lcm (A002083 (n + 1)) (A094331 (n + 1)))

end

end A343334.P8565381806794883028

/-!
# A343335: a(n) is the smallest proper alternating multiple of n when n is not a multiple of 20, otherwise a(20*k) = 0 for k >= 1.

The programs for A343335, there is no canonical definition to state claims against.
-/

/-! ## A343335.P10356524080024165824

`(n+1)*A343336(n+1)`
-/

namespace A343335.P10356524080024165824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A343336 (n + 1)

end

end A343335.P10356524080024165824

/-! ## A343335.P5498898422096607874

`record[(n+1)*A056608(C(n+4, 4)+1)]`
-/

namespace A343335.P5498898422096607874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A056608 (Nat.choose (n + 4) 4 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343335.P5498898422096607874

/-! ## A343335.P16667418295645989972

`(A337547(A006926(n))+1)*(n+1)`
-/

namespace A343335.P16667418295645989972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A337547 (A006926 n).toNat + 1) * (n + 1 : ℤ)

end

end A343335.P16667418295645989972

/-! ## A343335.P1648841119265535863

`(n+1)*A227196(A088809(n+4))`
-/

namespace A343335.P1648841119265535863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A227196 (A088809 (n + 4)).toNat

end

end A343335.P1648841119265535863

/-! ## A343335.P5923472131490579680

`A077342(n+1)*A136687(A309863(n))`
-/

namespace A343335.P5923472131490579680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077342 (n + 1) * A136687 (A309863 n).toNat

end

end A343335.P5923472131490579680

/-!
# A343336: Factors of alternators which produce least alternating proper multiples.

The programs for A343336, there is no canonical definition to state claims against.
-/

/-! ## A343336.P5737226990665754750

`A343335(n+1)/(n+1)`
-/

namespace A343336.P5737226990665754750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343335 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A343336.P5737226990665754750

/-! ## A343336.P847173654371984706

`ceil(acot(A000027(n+1))*A343335(n+1))`
-/

namespace A343336.P847173654371984706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A000027 (n + 1) : ℝ) * (A343335 (n + 1) : ℝ)⌉

end

end A343336.P847173654371984706

/-! ## A343336.P2696530193854042760

`ceil(acot(A110303(n+1))*A343335(n+1))`
-/

namespace A343336.P2696530193854042760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A110303 (n + 1) : ℝ) * (A343335 (n + 1) : ℝ)⌉

end

end A343336.P2696530193854042760

/-!
# A343337: Numbers with no prime index divisible by all the other prime indices.

The programs for A343337, there is no canonical definition to state claims against.
-/

/-! ## A343337.P11237141163538964668

`∪[A343338(n+1), A343340(n+1)]`
-/

namespace A343337.P11237141163538964668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343337.P11237141163538964668

/-! ## A343337.P419466103019763188

`lt[A061395(n+1), A290103(n+1)]+1`
-/

namespace A343337.P419466103019763188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A343337.P419466103019763188

/-! ## A343337.P9639698121123324795

`lt[A065770(n+1), A290103(n+1)]+1`
-/

namespace A343337.P9639698121123324795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A343337.P9639698121123324795

/-! ## A343337.P5252685871555988292

`lt[A263297(n+1), A290103(n+1)]+1`
-/

namespace A343337.P5252685871555988292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A343337.P5252685871555988292

/-! ## A343337.P17100878892419327253

`lt[A297113(n+1), A290103(n+1)]+1`
-/

namespace A343337.P17100878892419327253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A343337.P17100878892419327253

/-! ## A343337.P17323391088738410487

`lt[A056239(A002034(n+1)), A290103(n+1)]+1`
-/

namespace A343337.P17323391088738410487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A002034 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A343337.P17323391088738410487

/-! ## A343337.P16435929281143488789

`lt[A056239(A006530(n+1)), A290103(n+1)]+1`
-/

namespace A343337.P16435929281143488789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A006530 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A343337.P16435929281143488789

/-! ## A343337.P9183787413209533330

`A343343(A180925(n+1))`
-/

namespace A343337.P9183787413209533330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343343 (A180925 (n + 1)).toNat

end

end A343337.P9183787413209533330

/-! ## A343337.P12668586753426501194

`A343343(∑[A178334(∑{d}[n+1, #])])`
-/

namespace A343337.P12668586753426501194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343343 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343337.P12668586753426501194

/-! ## A343337.P5984464603342400548

`A343343(∑[A182481(A020481(n+2))])`
-/

namespace A343337.P5984464603342400548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (A020481 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343343 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343337.P5984464603342400548

/-!
# A343338: Numbers with no prime index dividing or divisible by all the other prime indices.

The programs for A343338, there is no canonical definition to state claims against.
-/

/-! ## A343338.P1672817835319933560

`A342193(comp[30*n])`
-/

namespace A343338.P1672817835319933560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342193 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A343338.P1672817835319933560

/-! ## A343338.P4489656168010834370

`record[A342193(n+1)%A120130(A120132(n+1))]`
-/

namespace A343338.P4489656168010834370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342193 (n + 1)) (A120130 (A120132 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343338.P4489656168010834370

/-! ## A343338.P1602846746377805348

`record[A000265(A343337(n+1))]`
-/

namespace A343338.P1602846746377805348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A343337 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343338.P1602846746377805348

/-! ## A343338.P15047720233381780321

`filter[A343337(n+1), A000035(#)]`
-/

namespace A343338.P15047720233381780321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A343338.P15047720233381780321

/-! ## A343338.P10143646491900330177

`filter[A343337(n+1), A266789(#)]`
-/

namespace A343338.P10143646491900330177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266789 (f1 j).toNat = 1) n)

end

end A343338.P10143646491900330177

/-!
# A343340: Numbers with a prime index dividing all the other prime indices, but with no prime index divisible by all the other prime indices.

The programs for A343340, there is no canonical definition to state claims against.
-/

/-! ## A343340.P3339208924317980319

`2*∩[A343337(n+1), A371287(n+1)]`
-/

namespace A343340.P3339208924317980319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343340.P3339208924317980319

/-! ## A343340.P5362401103725152883

`2*∩[A267894(n+2), A343343(n+2)]`
-/

namespace A343340.P5362401103725152883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267894 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343343 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343340.P5362401103725152883

/-! ## A343340.P16320516698652840354

`A034444(A096697(n+1))*A318992(n+1)`
-/

namespace A343340.P16320516698652840354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A096697 (n + 1)).toNat * A318992 (n + 1)

end

end A343340.P16320516698652840354

/-! ## A343340.P7039415062848701975

`A304464(A001358(n+1))*A318992(n+1)`
-/

namespace A343340.P7039415062848701975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304464 (A001358 (n + 1)).toNat * A318992 (n + 1)

end

end A343340.P7039415062848701975

/-! ## A343340.P6947963133442972120

`A181819(A142271(n+1))*A318992(n+1)`
-/

namespace A343340.P6947963133442972120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A142271 (n + 1)).toNat * A318992 (n + 1)

end

end A343340.P6947963133442972120

/-!
# A343341: Number of integer partitions of n with no part divisible by all the others.

The programs for A343341, there is no canonical definition to state claims against.
-/

/-! ## A343341.P14259950326610199827

`A343345(C(2, n)+n)+A343342(n)`
-/

namespace A343341.P14259950326610199827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343345 (Nat.choose 2 n + n) + A343342 n

end

end A343341.P14259950326610199827

/-! ## A343341.P16021453476225679350

`A343345(round(acot(n)+n))+A343342(n)`
-/

namespace A343341.P16021453476225679350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343345 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A343342 n

end

end A343341.P16021453476225679350

/-! ## A343341.P13662105471658486426

`A343345(A028310(n))+A343342(n)`
-/

namespace A343341.P13662105471658486426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343345 (A028310 n).toNat + A343342 n

end

end A343341.P13662105471658486426

/-! ## A343341.P10987557804440329313

`A343346(n)-A343344(C(2, n)+n)`
-/

namespace A343341.P10987557804440329313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343346 n - A343344 (Nat.choose 2 n + n)

end

end A343341.P10987557804440329313

/-! ## A343341.P17057766828952560291

`A343346(n)-A343344(round(acot(n)+n))`
-/

namespace A343341.P17057766828952560291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343346 n - A343344 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A343341.P17057766828952560291

/-!
# A343342: Number of integer partitions of n with no part dividing or divisible by all the others.

The programs for A343342, there is no canonical definition to state claims against.
-/

/-! ## A343342.P8548385192790309988

`A338470(n)-A343344(round(acot(n)+n))`
-/

namespace A343342.P8548385192790309988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338470 n - A343344 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A343342.P8548385192790309988

/-! ## A343342.P4223371559978397014

`A338470(n)-A343344(round(sqrt(n²+1)))`
-/

namespace A343342.P4223371559978397014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338470 n - A343344 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A343342.P4223371559978397014

/-! ## A343342.P16647976246491255558

`abs(A343344(abs(1-n)+1)-A338470(n))`
-/

namespace A343342.P16647976246491255558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A343344 (|1 - (n : ℤ)| + 1).toNat - A338470 n)|

end

end A343342.P16647976246491255558

/-! ## A343342.P2285918487708717208

`C(2, n+2)-(A343344(n)-A338470(n))`
-/

namespace A343342.P2285918487708717208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) - (A343344 n - A338470 n)

end

end A343342.P2285918487708717208

/-! ## A343342.P12306208613850232306

`A000007(n)+A338470(n)-A343344(n)`
-/

namespace A343342.P12306208613850232306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A338470 n - A343344 n)

end

end A343342.P12306208613850232306

/-! ## A343342.P12480722877477528428

`A338470(n)-A343344(n)%A000009(n)`
-/

namespace A343342.P12480722877477528428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338470 n - Int.tmod (A343344 n) (A000009 n)

end

end A343342.P12480722877477528428

/-!
# A343343: Numbers with either no prime index dividing, or no prime index divisible by all the other prime indices.

The programs for A343343, there is no canonical definition to state claims against.
-/

/-! ## A343343.P701865956403266954

`comp[A318991(n+2)-1]+1`
-/

namespace A343343.P701865956403266954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A343343.P701865956403266954

/-! ## A343343.P10171337046761042089

`comp[A318991(n+1)]+floor(acot(n))`
-/

namespace A343343.P10171337046761042089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A343343.P10171337046761042089

/-! ## A343343.P18093418370305386680

`A318992((n-1)%a(n-1)+1)` with `a(0)=1`
-/

namespace A343343.P18093418370305386680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A318992 (Int.tmod ((n : ℤ) - 1) (a (n - 1)) + 1).toNat

end

end A343343.P18093418370305386680

/-! ## A343343.P1254534601383680574

`A318992(floor(C(n, a(n-1))/2+n))` with `a(0)=1`
-/

namespace A343343.P1254534601383680574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A318992 ⌊(Nat.choose n (a (n - 1)).toNat : ℚ) / 2 + (n : ℚ)⌋.toNat

end

end A343343.P1254534601383680574

/-! ## A343343.P4520887555051268289

`A318992(round(sqrt(n²+1)))%((8*n+4)²-9)`
-/

namespace A343343.P4520887555051268289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318992 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (((8 * n + 4) ^ 2 : ℤ) - 9)

end

end A343343.P4520887555051268289

/-! ## A343343.P3074357341100664466

`record[A260439(A318992(n+1))]`
-/

namespace A343343.P3074357341100664466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260439 (A318992 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343343.P3074357341100664466

/-! ## A343343.P15851516714174865521

`A028310(comp[A318991(n+1)])`
-/

namespace A343343.P15851516714174865521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A343343.P15851516714174865521

/-! ## A343343.P1378006967825535395

`∪[A318992(n+1), A005904(n)]`
-/

namespace A343343.P1378006967825535395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005904 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343343.P1378006967825535395

/-! ## A343343.P5104038306413042991

`∪[A318992(n+1), A006857(n)]`
-/

namespace A343343.P5104038306413042991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006857 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343343.P5104038306413042991

/-! ## A343343.P6241266811768024271

`∪[A318992(n+1), A006859(n)]`
-/

namespace A343343.P6241266811768024271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006859 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343343.P6241266811768024271

/-!
# A343344: Number of integer partitions of n that are either empty, or do not have smallest part dividing all the others, but do have greatest part divisible by all the others.

The programs for A343344, there is no canonical definition to state claims against.
-/

/-! ## A343344.P8461798633847157627

`A130689(n)%A130714(abs(1-n)+1)`
-/

namespace A343344.P8461798633847157627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130689 n) (A130714 (|1 - (n : ℤ)| + 1).toNat)

end

end A343344.P8461798633847157627

/-! ## A343344.P2654069078364419888

`A338470(n)-A343342(round(acot(n)+n))`
-/

namespace A343344.P2654069078364419888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338470 n - A343342 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A343344.P2654069078364419888

/-! ## A343344.P12908876709759350706

`A338470(n)-A343342(abs(1-n)+1)`
-/

namespace A343344.P12908876709759350706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338470 n - A343342 (|1 - (n : ℤ)| + 1).toNat

end

end A343344.P12908876709759350706

/-! ## A343344.P15085047983547282874

`A338470(n)-A343342(n)%A000041(n)`
-/

namespace A343344.P15085047983547282874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338470 n - Int.tmod (A343342 n) (A000041 n)

end

end A343344.P15085047983547282874

/-! ## A343344.P8478813017899218102

`A343346(n)-A343341(A028310(n))`
-/

namespace A343344.P8478813017899218102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343346 n - A343341 (A028310 n).toNat

end

end A343344.P8478813017899218102

/-!
# A343345: Number of integer partitions of n that are empty, or have smallest part dividing all the others, but do not have greatest part divisible by all the others.

The programs for A343345, there is no canonical definition to state claims against.
-/

/-! ## A343345.P12355950502266376746

`A343341(n)-A343342(round(acot(n)+n))`
-/

namespace A343345.P12355950502266376746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343341 n - A343342 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A343345.P12355950502266376746

/-! ## A343345.P9441822619290719972

`A343341(n)-A343342(abs(1-n)+1)`
-/

namespace A343345.P9441822619290719972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343341 n - A343342 (|1 - (n : ℤ)| + 1).toNat

end

end A343345.P9441822619290719972

/-! ## A343345.P6843914849832549228

`char[60*n]+A343341(n)-A343342(n)`
-/

namespace A343345.P6843914849832549228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A343341 n - A343342 n)

end

end A343345.P6843914849832549228

/-! ## A343345.P10501843396730952009

`A343346(n)-A338470(round(acot(n)+n))`
-/

namespace A343345.P10501843396730952009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343346 n - A338470 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A343345.P10501843396730952009

/-! ## A343345.P15876203352955351867

`A343346(n)-A338470(abs(1-n)+1)`
-/

namespace A343345.P15876203352955351867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343346 n - A338470 (|1 - (n : ℤ)| + 1).toNat

end

end A343345.P15876203352955351867

/-!
# A343346: Number of integer partitions of n that are empty, have smallest part not dividing all the others, or greatest part not divisible by all the others.

The programs for A343346, there is no canonical definition to state claims against.
-/

/-! ## A343346.P130410866232674694

`A343344(C(2, n)+n)+A343341(n)`
-/

namespace A343346.P130410866232674694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343344 (Nat.choose 2 n + n) + A343341 n

end

end A343346.P130410866232674694

/-! ## A343346.P14533724765314577944

`A343345(round(acot(n)+n))+A338470(n)`
-/

namespace A343346.P14533724765314577944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343345 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A338470 n

end

end A343346.P14533724765314577944

/-! ## A343346.P18248294073001953045

`A343344(round(acot(n)+n))+A343341(n)`
-/

namespace A343346.P18248294073001953045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343344 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A343341 n

end

end A343346.P18248294073001953045

/-! ## A343346.P6444511856121187466

`A343345(round(sqrt(n²+1)))+A338470(n)`
-/

namespace A343346.P6444511856121187466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343345 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A338470 n

end

end A343346.P6444511856121187466

/-! ## A343346.P9671937976032621948

`A343344(A028310(n))+A343341(n)`
-/

namespace A343346.P9671937976032621948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343344 (A028310 n).toNat + A343341 n

end

end A343346.P9671937976032621948

/-!
# A343347: Number of strict integer partitions of n with a part divisible by all the others.

The programs for A343347, there is no canonical definition to state claims against.
-/

/-! ## A343347.P1485800252697551793

`A339660(abs(1-n))+A339660(n)`
-/

namespace A343347.P1485800252697551793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339660 |1 - (n : ℤ)|.toNat + A339660 n

end

end A343347.P1485800252697551793

/-! ## A343347.P8865308554214177443

`A343378(n)+A343380(n)%(n+1)`
-/

namespace A343347.P8865308554214177443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343378 n + Int.tmod (A343380 n) (n + 1 : ℤ)

end

end A343347.P8865308554214177443

/-! ## A343347.P11122165455268964667

`A343380(round(acot(n)+n))+A343378(n)`
-/

namespace A343347.P11122165455268964667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A343378 n

end

end A343347.P11122165455268964667

/-! ## A343347.P15611566343731124589

`A343380(round(sqrt(n²+1)))+A343378(n)`
-/

namespace A343347.P15611566343731124589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A343378 n

end

end A343347.P15611566343731124589

/-! ## A343347.P11720057094543862408

`A343378(n)+A343380(A000007(n)+n)`
-/

namespace A343347.P11720057094543862408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343378 n + A343380 (A000007 n + (n : ℤ)).toNat

end

end A343347.P11720057094543862408

/-! ## A343347.P13054124237202843103

`A343378(n)-(A000007(n)-A343380(n))`
-/

namespace A343347.P13054124237202843103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343378 n - (A000007 n - A343380 n)

end

end A343347.P13054124237202843103

/-! ## A343347.P2734620018002680017

`A343380(n)+A343378(n)%A000070(n)`
-/

namespace A343347.P2734620018002680017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 n + Int.tmod (A343378 n) (A000070 n)

end

end A343347.P2734620018002680017

/-! ## A343347.P16328127349576180363

`A000009(n)-A343377(A028310(n))`
-/

namespace A343347.P16328127349576180363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A343377 (A028310 n).toNat

end

end A343347.P16328127349576180363

/-! ## A343347.P6076339808635945118

`A000007(n)+A000009(n)-A343377(n)`
-/

namespace A343347.P6076339808635945118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A000009 n - A343377 n)

end

end A343347.P6076339808635945118

/-! ## A343347.P11854023270303511587

`A343378(n)+A343382(n)-A343377(n)`
-/

namespace A343347.P11854023270303511587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343378 n + (A343382 n - A343377 n)

end

end A343347.P11854023270303511587

/-!
# A343348: Irregular triangle read by rows where T(n,k) is the number of strict integer partitions of n with least gap k.

The programs for A343348, there is no canonical definition to state claims against.
-/

/-! ## A343348.P12870776849362699585

`A005089(A212164(n+9)*A212168(n+8))`
-/

namespace A343348.P12870776849362699585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (A212164 (n + 9) * A212168 (n + 8)).toNat

end

end A343348.P12870776849362699585

/-! ## A343348.P8821765752732984974

`and(A038769(n+1), A105530(A018382(n+1)))`
-/

namespace A343348.P8821765752732984974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038769 (n + 1)) (A105530 (A018382 (n + 1)).toNat)

end

end A343348.P8821765752732984974

/-! ## A343348.P484702789670138134

`A039997(lcm(A268509(n+1), A306231(n+1)))`
-/

namespace A343348.P484702789670138134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (Int.lcm (A268509 (n + 1)) (A306231 (n + 1)))

end

end A343348.P484702789670138134

/-! ## A343348.P3784017319598531367

`A025815(A001222(∑[A018210(n)]))`
-/

namespace A343348.P3784017319598531367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025815 (A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A343348.P3784017319598531367

/-! ## A343348.P3149393761245287159

`A327127(and(A000009(n+1), A316076(n)))`
-/

namespace A343348.P3149393761245287159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327127 (Int.land (A000009 (n + 1)) (A316076 n)).toNat

end

end A343348.P3149393761245287159

/-!
# A343349: Expansion of Product_{k>=1} 1 / (1 - x^k)^(4^(k-1)).

The programs for A343349, there is no canonical definition to state claims against.
-/

/-! ## A343349.P13135054241135577907

`A066508(A150557(n))`
-/

namespace A343349.P13135054241135577907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (A150557 n).toNat

end

end A343349.P13135054241135577907

/-! ## A343349.P3353002831637989435

`A172308(A360784(n))`
-/

namespace A343349.P3353002831637989435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172308 (A360784 n).toNat

end

end A343349.P3353002831637989435

/-!
# A343350: Expansion of Product_{k>=1} 1 / (1 - x^k)^(5^(k-1)).

The programs for A343350, there is no canonical definition to state claims against.
-/

/-! ## A343350.P3219284390996674818

`ceil(A005187(∑[A052264(n)])/15)`
-/

namespace A343350.P3219284390996674818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005187 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 15⌉

end

end A343350.P3219284390996674818

/-! ## A343350.P6412352742961823251

`A337635(A005251(3*n+2)-1)`
-/

namespace A343350.P6412352742961823251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337635 (A005251 (3 * n + 2) - 1).toNat

end

end A343350.P6412352742961823251

/-!
# A343351: Expansion of Product_{k>=1} 1 / (1 - x^k)^(6^(k-1)).

The programs for A343351, there is no canonical definition to state claims against.
-/

/-! ## A343351.P7589140002616238958

`A204008(C(∑[∑[n]], n))`
-/

namespace A343351.P7589140002616238958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204008 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A343351.P7589140002616238958

/-!
# A343352: Expansion of Product_{k>=1} 1 / (1 - x^k)^(7^(k-1)).

The programs for A343352, there is no canonical definition to state claims against.
-/

/-! ## A343352.P5542932205983711037

`A020658(2*A343351(n))/2`
-/

namespace A343352.P5542932205983711037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020658 (2 * A343351 n).toNat : ℚ) / 2

end

end A343352.P5542932205983711037

/-! ## A343352.P14224841657942991930

`A020658(or(A005206(n), A343351(n)))`
-/

namespace A343352.P14224841657942991930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (Int.lor (A005206 n) (A343351 n)).toNat

end

end A343352.P14224841657942991930

/-!
# A343353: Expansion of Product_{k>=1} 1 / (1 - x^k)^(8^(k-1)).

The programs for A343353, there is no canonical definition to state claims against.
-/

/-! ## A343353.P8514646143525060446

`A269400(n+1)+A039220(A355357(2*n))`
-/

namespace A343353.P8514646143525060446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269400 (n + 1) + A039220 (A355357 (2 * n)).toNat

end

end A343353.P8514646143525060446

/-!
# A343354: Expansion of Product_{k>=1} 1 / (1 - x^k)^(9^(k-1)).

The programs for A343354, there is no canonical definition to state claims against.
-/

/-! ## A343354.P16569729983860288665

`A241183(∑[floor(10^n/2)]+(10^n+17)/9)`
-/

namespace A343354.P16569729983860288665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241183 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (10 ^ n + 17 : ℚ) / 9)).toNat

end

end A343354.P16569729983860288665

/-!
# A343355: Expansion of Product_{k>=1} 1 / (1 - x^k)^(10^(k-1)).

The programs for A343355, there is no canonical definition to state claims against.
-/

/-! ## A343355.P15381710548876984942

`floor(p?[A157733(n)]/2)`
-/

namespace A343355.P15381710548876984942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A343355.P15381710548876984942

/-!
# A343356: Squares visited by a knight moving on a square-spiral with numbers equal to the ordered prime factors of the positive integers and where the knight moves to the smallest numbered unvisited square; the minimum distance from the origin is used if the square numbers are equal; the smallest ordered spiral number is used if the distances are equal.

The programs for A343356, there is no canonical definition to state claims against.
-/

/-! ## A343356.P6933174383414049569

`A027746(A343385(n+1))`
-/

namespace A343356.P6933174383414049569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (A343385 (n + 1)).toNat

end

end A343356.P6933174383414049569

/-! ## A343356.P8088473102612491815

`A227945(A241099(n+1))`
-/

namespace A343356.P8088473102612491815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227945 (A241099 (n + 1)).toNat

end

end A343356.P8088473102612491815

/-! ## A343356.P2869663400349191397

`A343378(A087890(n+3)+A001227(n+1))`
-/

namespace A343356.P2869663400349191397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343378 (A087890 (n + 3) + A001227 (n + 1)).toNat

end

end A343356.P2869663400349191397

/-! ## A343356.P12663732680115468070

`A261675(A003959(n+3)*A128651(n+2))`
-/

namespace A343356.P12663732680115468070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261675 (A003959 (n + 3) * A128651 (n + 2)).toNat

end

end A343356.P12663732680115468070

/-! ## A343356.P8233442765263836506

`gcd(n, A373125(2*n))+1`
-/

namespace A343356.P8233442765263836506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A373125 (2 * n)) + 1

end

end A343356.P8233442765263836506

/-!
# A343358: Number of connected graphs with n vertices which are realizable (in the sense of realizability of Gauss diagrams).

The programs for A343358, there is no canonical definition to state claims against.
-/

/-! ## A343358.P2189825985960671981

`A002864(n+3)-A172293(A318052(n+1))*A172444(n)`
-/

namespace A343358.P2189825985960671981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002864 (n + 3) - A172293 (A318052 (n + 1)).toNat * A172444 n

end

end A343358.P2189825985960671981

/-! ## A343358.P2983307429560224332

`A002864(A171644(n)+3)`
-/

namespace A343358.P2983307429560224332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002864 (A171644 n + 3).toNat

end

end A343358.P2983307429560224332

/-! ## A343358.P2240342659648575058

`A002864(A258785(n+3))`
-/

namespace A343358.P2240342659648575058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002864 (A258785 (n + 3)).toNat

end

end A343358.P2240342659648575058

/-! ## A343358.P17951341684225565255

`A002864(A010353(n+1)+2)`
-/

namespace A343358.P17951341684225565255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002864 (A010353 (n + 1) + 2).toNat

end

end A343358.P17951341684225565255

/-!
# A343360: Expansion of Product_{k>=1} (1 + x^k)^(3^(k-1)).

The programs for A343360, there is no canonical definition to state claims against.
-/

/-! ## A343360.P11509036695663593580

`A248231(A316795(2*(n+1))+A281116(n+1))`
-/

namespace A343360.P11509036695663593580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A316795 (2 * (n + 1)) + A281116 (n + 1)).toNat

end

end A343360.P11509036695663593580

/-! ## A343360.P13984992085561692029

`A248231(A316795(2*(n+1))+A291786(n+1))`
-/

namespace A343360.P13984992085561692029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A316795 (2 * (n + 1)) + A291786 (n + 1)).toNat

end

end A343360.P13984992085561692029

/-! ## A343360.P8377772679724268871

`A248231(A354353(n+1)+A316795(2*(n+1)))`
-/

namespace A343360.P8377772679724268871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A354353 (n + 1) + A316795 (2 * (n + 1))).toNat

end

end A343360.P8377772679724268871

/-!
# A343361: Expansion of Product_{k>=1} (1 + x^k)^(4^(k-1)).

The programs for A343361, there is no canonical definition to state claims against.
-/

/-! ## A343361.P5819983842877312793

`xor(2, A022290(∏[a(n-1)+2]))` with `a(0)=3, a(1)=1`
-/

namespace A343361.P5819983842877312793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A022290 (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A343361.P5819983842877312793

/-! ## A343361.P10383412082040717457

`A008616(n*A150066(n+1))`
-/

namespace A343361.P10383412082040717457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 ((n : ℤ) * A150066 (n + 1)).toNat

end

end A343361.P10383412082040717457

/-!
# A343362: Expansion of Product_{k>=1} (1 + x^k)^(5^(k-1)).

The programs for A343362, there is no canonical definition to state claims against.
-/

/-! ## A343362.P11244531593383478504

`A166229(n)-A056239(A088501(n))`
-/

namespace A343362.P11244531593383478504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166229 n - A056239 (A088501 n).toNat

end

end A343362.P11244531593383478504

/-!
# A343363: Expansion of Product_{k>=1} (1 + x^k)^(6^(k-1)).

The programs for A343363, there is no canonical definition to state claims against.
-/

/-! ## A343363.P6954685536288328441

`A065033(A027058(n+1)²+n)`
-/

namespace A343363.P6954685536288328441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A027058 (n + 1) ^ 2 + (n : ℤ)).toNat

end

end A343363.P6954685536288328441

/-! ## A343363.P8110831487726320417

`A028310(3*A006611(2*(n+1)))`
-/

namespace A343363.P8110831487726320417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (3 * A006611 (2 * (n + 1))).toNat

end

end A343363.P8110831487726320417

/-!
# A343364: Expansion of Product_{k>=1} (1 + x^k)^(7^(k-1)).

The programs for A343364, there is no canonical definition to state claims against.
-/

/-! ## A343364.P10349256344309218257

`A255350(10^n-n^3)`
-/

namespace A343364.P10349256344309218257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255350 (10 ^ n - n ^ 3)

end

end A343364.P10349256344309218257

/-!
# A343365: Expansion of Product_{k>=1} (1 + x^k)^(8^(k-1)).

The programs for A343365, there is no canonical definition to state claims against.
-/

/-! ## A343365.P10658772913349491831

`A376597(A270062(n))`
-/

namespace A343365.P10658772913349491831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376597 (A270062 n).toNat

end

end A343365.P10658772913349491831

/-!
# A343366: Expansion of Product_{k>=1} (1 + x^k)^(9^(k-1)).

The programs for A343366, there is no canonical definition to state claims against.
-/

/-! ## A343366.P15221947030101422339

`A116868(A347862(n+4))`
-/

namespace A343366.P15221947030101422339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116868 (A347862 (n + 4)).toNat

end

end A343366.P15221947030101422339

/-!
# A343369: Triangle read by rows: T(n,k) is the number of polygons formed by connecting the vertices of a regular 2n-gon such that the winding number around the center is k and with no side passing through the center.

The programs for A343369, there is no canonical definition to state claims against.
-/

/-! ## A343369.P18396536158776511788

`A138107(A281182(n)+A103339(n+1))`
-/

namespace A343369.P18396536158776511788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138107 (A281182 n + A103339 (n + 1)).toNat

end

end A343369.P18396536158776511788

/-! ## A343369.P5124688454971510130

`A056239(A057864(n+1))*A308451(A301299(n))`
-/

namespace A343369.P5124688454971510130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A057864 (n + 1)).toNat * A308451 (A301299 n).toNat

end

end A343369.P5124688454971510130

/-!
# A343371: a(n) = 1 + Sum_{d|n, d < n} a(d - 1).

The programs for A343371, there is no canonical definition to state claims against.
-/

/-! ## A343371.P226357043795985732

`A331991(n+1)+A167865(n)%(n+1)`
-/

namespace A343371.P226357043795985732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331991 (n + 1) + Int.tmod (A167865 n) (n + 1 : ℤ)

end

end A343371.P226357043795985732

/-! ## A343371.P9837219556650055996

`A331991(n+1)+A167865(A028310(n))`
-/

namespace A343371.P9837219556650055996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331991 (n + 1) + A167865 (A028310 n).toNat

end

end A343371.P9837219556650055996

/-! ## A343371.P9426482520310615044

`A331991(n+1)+A167865(A000007(n)+n)`
-/

namespace A343371.P9426482520310615044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331991 (n + 1) + A167865 (A000007 n + (n : ℤ)).toNat

end

end A343371.P9426482520310615044

/-! ## A343371.P18409388754595339678

`A331991(n+1)+A057427(n)*A167865(n)`
-/

namespace A343371.P18409388754595339678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331991 (n + 1) + A057427 n * A167865 n

end

end A343371.P18409388754595339678

/-! ## A343371.P10340239379921414797

`(A331991(n+1)+A167865(n))/A054977(n)`
-/

namespace A343371.P10340239379921414797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331991 (n + 1) + A167865 n : ℚ) / (A054977 n : ℚ)

end

end A343371.P10340239379921414797

/-! ## A343371.P1413497579663713827

`A331991(n+1)+A167865(A065033(2*n))`
-/

namespace A343371.P1413497579663713827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331991 (n + 1) + A167865 (A065033 (2 * n)).toNat

end

end A343371.P1413497579663713827

/-! ## A343371.P11851204828209218201

`A331991(n+1)+A167865(n)+n-A065033(A005843(n))`
-/

namespace A343371.P11851204828209218201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331991 (n + 1) + A167865 n + (n : ℤ) - A065033 (A005843 n).toNat

end

end A343371.P11851204828209218201

/-! ## A343371.P17938508579796209618

`(A331991(n+1)+A167865(n))/A014963(4*n+2)`
-/

namespace A343371.P17938508579796209618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331991 (n + 1) + A167865 n : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A343371.P17938508579796209618

/-!
# A343372: Number of sets in the geometry determined by the Hausdorff metric at each location between two sets defined by a complete bipartite graph K(3,n) (with n at least 4) missing three edges, where exactly two removed edges are incident to the same vertex in the 3-point set and exactly two removed edges are incident to the same vertex in the other set.

The programs for A343372, the canonical program `A343372.P14049919230445621183` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343372 has offset 4).

The definition of A343372 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343372.P14049919230445621183

`3*7^(n+2)-4*3^(n+2)+1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A343372

/-- `3*7^(n+2)-4*3^(n+2)+1` -/
def P14049919230445621183.Spec : Prop :=
  ∀ n, P14049919230445621183.a n = A343372 (n + 4)

theorem P14049919230445621183.correct : P14049919230445621183.Spec := by
  intro n
  simp only [A343372, Nat.add_sub_cancel]

end A343372

/-!
# A343373: Number of sets in the geometry determined by the Hausdorff metric at each location between two sets defined by a complete bipartite graph K(4,n) (with n at least 4) missing three edges, where exactly two removed edges are incident to the same vertex in the 4-point set and exactly two removed edges are incident to the same vertex in the other set.

The programs for A343373, the canonical program `A343373.P7890386846231955266` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343373 has offset 4).

The definition of A343373 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343373.P7890386846231955266

`21*15^(n+2)-36*7^(n+2)+17*3^(n+2)-2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A343373

/-- `21*15^(n+2)-36*7^(n+2)+17*3^(n+2)-2` -/
def P7890386846231955266.Spec : Prop :=
  ∀ n, P7890386846231955266.a n = A343373 (n + 4)

theorem P7890386846231955266.correct : P7890386846231955266.Spec := by
  intro n
  simp only [A343373, Nat.add_sub_cancel]

end A343373

/-!
# A343377: Number of strict integer partitions of n with no part divisible by all the others.

The programs for A343377, there is no canonical definition to state claims against.
-/

/-! ## A343377.P4737933342869051906

`A343382(n)-A343380(n)%(n+1)`
-/

namespace A343377.P4737933342869051906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343382 n - Int.tmod (A343380 n) (n + 1 : ℤ)

end

end A343377.P4737933342869051906

/-! ## A343377.P10235543341848077714

`A343381(round(acot(n)+n))+A343379(n)`
-/

namespace A343377.P10235543341848077714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343381 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A343379 n

end

end A343377.P10235543341848077714

/-! ## A343377.P3337621714957896180

`A343382(n)-A343380(round(acot(n)+n))`
-/

namespace A343377.P3337621714957896180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343382 n - A343380 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A343377.P3337621714957896180

/-! ## A343377.P8561583748802208321

`A343381(abs(1-n)+1)+A343379(n)`
-/

namespace A343377.P8561583748802208321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343381 (|1 - (n : ℤ)| + 1).toNat + A343379 n

end

end A343377.P8561583748802208321

/-! ## A343377.P14108998808881726741

`A343382(n)-A343380(round(sqrt(n²+1)))`
-/

namespace A343377.P14108998808881726741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343382 n - A343380 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A343377.P14108998808881726741

/-! ## A343377.P9922225752881387928

`A343378(n)+A343382(n)-A343347(n)`
-/

namespace A343377.P9922225752881387928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343378 n + (A343382 n - A343347 n)

end

end A343377.P9922225752881387928

/-! ## A343377.P4046961495255812188

`A008683((n+1)²)+A343382(n)-A343380(n)`
-/

namespace A343377.P4046961495255812188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (A343382 n - A343380 n)

end

end A343377.P4046961495255812188

/-! ## A343377.P17452870864893642140

`A343379(n)+A343381(n)-A008683((n+1)²)`
-/

namespace A343377.P17452870864893642140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343379 n + (A343381 n - A008683 ((n + 1) ^ 2))

end

end A343377.P17452870864893642140

/-! ## A343377.P14479767170727397372

`A000045(C(2, n+2))+A343382(n)-A343380(n)`
-/

namespace A343377.P14479767170727397372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n + 2)) + (A343382 n - A343380 n)

end

end A343377.P14479767170727397372

/-!
# A343378: Number of strict integer partitions of n that are empty or such that (1) the smallest part divides every other part and (2) the greatest part is divisible by every other part.

The programs for A343378, there is no canonical definition to state claims against.
-/

/-! ## A343378.P6054324400420271321

`A343347(n)-A343380(n)%(n+1)`
-/

namespace A343378.P6054324400420271321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343347 n - Int.tmod (A343380 n) (n + 1 : ℤ)

end

end A343378.P6054324400420271321

/-! ## A343378.P7758351479415369901

`A343347(n)-A343380(round(acot(n)+n))`
-/

namespace A343378.P7758351479415369901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343347 n - A343380 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A343378.P7758351479415369901

/-! ## A343378.P10389218131659899270

`A343347(n)-A343380(round(sqrt(n²+1)))`
-/

namespace A343378.P10389218131659899270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343347 n - A343380 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A343378.P10389218131659899270

/-! ## A343378.P13703010550926362839

`A028310(A343347(n)-A343380(n))`
-/

namespace A343378.P13703010550926362839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A343347 n - A343380 n).toNat

end

end A343378.P13703010550926362839

/-! ## A343378.P7873438468274918094

`A008683((n+1)²)+A343347(n)-A343380(n)`
-/

namespace A343378.P7873438468274918094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (A343347 n - A343380 n)

end

end A343378.P7873438468274918094

/-! ## A343378.P10207680156355642808

`and(1, A006093(n+1))+A343347(n)-A343380(n)`
-/

namespace A343378.P10207680156355642808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006093 (n + 1)) + (A343347 n - A343380 n)

end

end A343378.P10207680156355642808

/-! ## A343378.P4747267014266223968

`A000045(C(2, n+2))+A343347(n)-A343380(n)`
-/

namespace A343378.P4747267014266223968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n + 2)) + (A343347 n - A343380 n)

end

end A343378.P4747267014266223968

/-! ## A343378.P12026680184522592432

`A000009(n)-A343382(abs(1-n)+1)`
-/

namespace A343378.P12026680184522592432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A343382 (|1 - (n : ℤ)| + 1).toNat

end

end A343378.P12026680184522592432

/-! ## A343378.P13379074512521287760

`A343347(n)+A343377(n)-A343382(n)`
-/

namespace A343378.P13379074512521287760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343347 n + (A343377 n - A343382 n)

end

end A343378.P13379074512521287760

/-! ## A343378.P11878379217834121930

`A014963(Δ[n²]²+1)*A343347(n)-A343380(n)`
-/

namespace A343378.P11878379217834121930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 + 1).toNat * A343347 n - A343380 n

end

end A343378.P11878379217834121930

/-!
# A343379: Number of strict integer partitions of n with no part dividing or divisible by all the other parts.

The programs for A343379, there is no canonical definition to state claims against.
-/

/-! ## A343379.P9667290408501345964

`A341450(n)-A343380(n)%(n+1)`
-/

namespace A343379.P9667290408501345964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341450 n - Int.tmod (A343380 n) (n + 1 : ℤ)

end

end A343379.P9667290408501345964

/-! ## A343379.P9435978908962521987

`A341450(n)-A343380(round(acot(n)+n))`
-/

namespace A343379.P9435978908962521987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341450 n - A343380 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A343379.P9435978908962521987

/-! ## A343379.P18131778734109068762

`A341450(n)-A343380(round(sqrt(n²+1)))`
-/

namespace A343379.P18131778734109068762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341450 n - A343380 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A343379.P18131778734109068762

/-! ## A343379.P949425093510454696

`A000007(n)+A341450(n)-A343380(n)`
-/

namespace A343379.P949425093510454696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A341450 n - A343380 n)

end

end A343379.P949425093510454696

/-! ## A343379.P13694411712230631671

`A341450(n)+A343378(n)-A343347(n)`
-/

namespace A343379.P13694411712230631671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341450 n + (A343378 n - A343347 n)

end

end A343379.P13694411712230631671

/-! ## A343379.P1784621157386825514

`A343377(n)-A343381(round(acot(n)+n))`
-/

namespace A343379.P1784621157386825514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343377 n - A343381 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A343379.P1784621157386825514

/-! ## A343379.P9187765332116637996

`A343377(n)-A343381(A028310(n))`
-/

namespace A343379.P9187765332116637996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343377 n - A343381 (A028310 n).toNat

end

end A343379.P9187765332116637996

/-! ## A343379.P13668495611009048975

`A343377(n)-A343381(A233583(n+1))`
-/

namespace A343379.P13668495611009048975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343377 n - A343381 (A233583 (n + 1)).toNat

end

end A343379.P13668495611009048975

/-! ## A343379.P3691116703129338733

`A000007(n)+A343377(n)-A343381(n)`
-/

namespace A343379.P3691116703129338733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A343377 n - A343381 n)

end

end A343379.P3691116703129338733

/-! ## A343379.P16998577136896994377

`A343377(n)-and(A000225(n), A343381(n))`
-/

namespace A343379.P16998577136896994377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343377 n - Int.land (A000225 n) (A343381 n)

end

end A343379.P16998577136896994377

/-!
# A343380: Number of strict integer partitions of n with no part dividing all the others but with a part divisible by all the others.

The programs for A343380, there is no canonical definition to state claims against.
-/

/-! ## A343380.P6009209065713240559

`A343347(n)-A343378(n)%(n+1)`
-/

namespace A343380.P6009209065713240559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343347 n - Int.tmod (A343378 n) (n + 1 : ℤ)

end

end A343380.P6009209065713240559

/-! ## A343380.P7165597982122139338

`A343347(C(a(n-1), n+2)+n)-A343378(n)` with `a(0)=1`
-/

namespace A343380.P7165597982122139338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A343347 (Nat.choose (a (n - 1)).toNat (n + 2) + n) - A343378 n

end

end A343380.P7165597982122139338

/-! ## A343380.P16913278807101376625

`A000007(n)+A343347(n)-A343378(n)`
-/

namespace A343380.P16913278807101376625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A343347 n - A343378 n)

end

end A343380.P16913278807101376625

/-! ## A343380.P57133723862243558

`A151878(n)+A343347(n)-A343378(n)`
-/

namespace A343380.P57133723862243558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + (A343347 n - A343378 n)

end

end A343380.P57133723862243558

/-! ## A343380.P6196934897426741207

`A343347(n)+A057428(n)*A343378(n)`
-/

namespace A343380.P6196934897426741207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343347 n + A057428 n * A343378 n

end

end A343380.P6196934897426741207

/-! ## A343380.P17057288587939143734

`A343347(n)-A211666(n+1)*A343378(n)`
-/

namespace A343380.P17057288587939143734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343347 n - A211666 (n + 1) * A343378 n

end

end A343380.P17057288587939143734

/-! ## A343380.P14715791549351216462

`A000045(C(2, n+2))-(A343378(n)-A343347(n))`
-/

namespace A343380.P14715791549351216462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n + 2)) - (A343378 n - A343347 n)

end

end A343380.P14715791549351216462

/-! ## A343380.P9364260849886643852

`A341450(n)-A343379(round(acot(n)+n))`
-/

namespace A343380.P9364260849886643852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341450 n - A343379 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A343380.P9364260849886643852

/-! ## A343380.P17494791998891494934

`A341450(n)-A343379(A028310(n))`
-/

namespace A343380.P17494791998891494934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341450 n - A343379 (A028310 n).toNat

end

end A343380.P17494791998891494934

/-!
# A343381: Number of strict integer partitions of n with a part dividing all the others but no part divisible by all the others.

The programs for A343381, there is no canonical definition to state claims against.
-/

/-! ## A343381.P13184359414801383340

`A343382(n)-A341450(round(acot(n)+n))`
-/

namespace A343381.P13184359414801383340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343382 n - A341450 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A343381.P13184359414801383340

/-! ## A343381.P15867610248069910012

`A343377(n)-A343379(round(acot(n)+n))`
-/

namespace A343381.P15867610248069910012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343377 n - A343379 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A343381.P15867610248069910012

/-! ## A343381.P10777009258225678542

`A343382(n)-A341450(round(sqrt(n²+1)))`
-/

namespace A343381.P10777009258225678542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343382 n - A341450 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A343381.P10777009258225678542

/-! ## A343381.P10648214918517225728

`A343377(n)-A343379(round(sqrt(n²+1)))`
-/

namespace A343381.P10648214918517225728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343377 n - A343379 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A343381.P10648214918517225728

/-! ## A343381.P2663040862043781363

`C(2, n+2)+A343382(n)-A341450(n)`
-/

namespace A343381.P2663040862043781363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + (A343382 n - A341450 n)

end

end A343381.P2663040862043781363

/-! ## A343381.P2707902647780284973

`A000007(n)+A343382(n)-A341450(n)`
-/

namespace A343381.P2707902647780284973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A343382 n - A341450 n)

end

end A343381.P2707902647780284973

/-! ## A343381.P16199044552175900539

`(A343382(n)-A341450(n))^(A000040(n+1)%2)`
-/

namespace A343381.P16199044552175900539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343382 n - A341450 n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A343381.P16199044552175900539

/-! ## A343381.P13489613819545299861

`A343382(n)-A341450(n)-A008683(2*(n+1)²)`
-/

namespace A343381.P13489613819545299861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343382 n - A341450 n - A008683 (2 * (n + 1) ^ 2)

end

end A343381.P13489613819545299861

/-! ## A343381.P11059381969066597796

`(A343382(n)-A341450(n))^A008683(2*A000040(n+1))`
-/

namespace A343381.P11059381969066597796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343382 n - A341450 n : ℚ) ^ (A008683 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A343381.P11059381969066597796

/-!
# A343382: Number of strict integer partitions of n with either (1) no part dividing all the others or (2) no part divisible by all the others.

The programs for A343382, there is no canonical definition to state claims against.
-/

/-! ## A343382.P17270404552685952036

`A343377(n)+A343380(n)%(n+1)`
-/

namespace A343382.P17270404552685952036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343377 n + Int.tmod (A343380 n) (n + 1 : ℤ)

end

end A343382.P17270404552685952036

/-! ## A343382.P17100215293029081797

`A000009(n)-A343378(n)%(n+1)`
-/

namespace A343382.P17100215293029081797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - Int.tmod (A343378 n) (n + 1 : ℤ)

end

end A343382.P17100215293029081797

/-! ## A343382.P14438753801344335789

`A343381(round(acot(n)+n))+A341450(n)`
-/

namespace A343382.P14438753801344335789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343381 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A341450 n

end

end A343382.P14438753801344335789

/-! ## A343382.P6252924103843603571

`A343380(round(acot(n)+n))+A343377(n)`
-/

namespace A343382.P6252924103843603571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A343377 n

end

end A343382.P6252924103843603571

/-! ## A343382.P6290840702595235830

`A343381(round(sqrt(n²+1)))+A341450(n)`
-/

namespace A343382.P6290840702595235830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343381 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A341450 n

end

end A343382.P6290840702595235830

/-! ## A343382.P7949589962703426665

`A343380(round(sqrt(n²+1)))+A343377(n)`
-/

namespace A343382.P7949589962703426665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A343377 n

end

end A343382.P7949589962703426665

/-! ## A343382.P8317774110430289855

`abs(A035457(A004277(n))-A343378(n))`
-/

namespace A343382.P8317774110430289855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A035457 (A004277 n).toNat - A343378 n|

end

end A343382.P8317774110430289855

/-! ## A343382.P16691991957808853691

`A343377(n)+A343380(A000007(n)+n)`
-/

namespace A343382.P16691991957808853691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343377 n + A343380 (A000007 n + (n : ℤ)).toNat

end

end A343382.P16691991957808853691

/-! ## A343382.P13457837866482353256

`A343377(n)-(A000007(n)-A343380(n))`
-/

namespace A343382.P13457837866482353256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343377 n - (A000007 n - A343380 n)

end

end A343382.P13457837866482353256

/-!
# A343384: Number of ways to write n as [a^3/3] + [b^3/4] + [c^3/5] + [d^6/6] with a,b,c,d positive integers, where [.] is the floor function.

The programs for A343384, there is no canonical definition to state claims against.
-/

/-! ## A343384.P15060322940725274618

`A107435(∑[A000204(n+1)-A222244(n)])`
-/

namespace A343384.P15060322940725274618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - A222244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343384.P15060322940725274618

/-! ## A343384.P10697348123817160464

`gcd(A007582(n), A115588(A334499(n+1)))`
-/

namespace A343384.P10697348123817160464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007582 n) (A115588 (A334499 (n + 1)).toNat)

end

end A343384.P10697348123817160464

/-! ## A343384.P6418948722271467145

`A001221(A289760(n+1)+A127976(n+1))`
-/

namespace A343384.P6418948722271467145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A289760 (n + 1) + A127976 (n + 1)).toNat

end

end A343384.P6418948722271467145

/-! ## A343384.P12925419637130965478

`gcd(A000010(A055496(n+1)), A003434(n+1))`
-/

namespace A343384.P12925419637130965478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A055496 (n + 1)).toNat) (A003434 (n + 1))

end

end A343384.P12925419637130965478

/-! ## A343384.P9796946939013338075

`A355851(n+1)+A023586(A285913(n))`
-/

namespace A343384.P9796946939013338075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355851 (n + 1) + A023586 (A285913 n).toNat

end

end A343384.P9796946939013338075

/-!
# A343386: Number of odd Motzkin n-paths, i.e., Motzkin n-paths with an odd number of up steps.

The programs for A343386, the canonical program `A343386.P6946411365016645358` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343386 has offset 0).

The definition of A343386 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107587, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343386.P6946411365016645358

`A107587(n)-A100223(n+2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A343386

/-- `A107587(n)-A100223(n+2)` -/
def P6946411365016645358.Spec : Prop :=
  ∀ n, P6946411365016645358.a n = A343386 n

theorem P6946411365016645358.correct : P6946411365016645358.Spec := by
  intro n
  simp only [A343386]

end A343386

/-! ## A343386.P8819718402880558225

`A001006(n)-A107587(n)`
-/

namespace A343386.P8819718402880558225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A107587 n

end

end A343386.P8819718402880558225

namespace A343386

/-- `A001006(n)-A107587(n)` -/
def P8819718402880558225.Spec : Prop :=
  ∀ n, P8819718402880558225.a n = A343386 n

end A343386

/-! ## A343386.P1677137566816121616

`A107587(n)-A343773(n)`
-/

namespace A343386.P1677137566816121616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107587 n - A343773 n

end

end A343386.P1677137566816121616

namespace A343386

/-- `A107587(n)-A343773(n)` -/
def P1677137566816121616.Spec : Prop :=
  ∀ n, P1677137566816121616.a n = A343386 n

end A343386

/-! ## A343386.P13251371445712405809

`A107587(n)+Δ[A108623(n+1)]`
-/

namespace A343386.P13251371445712405809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107587 n + (f1 (n + 1) - f1 n)

end

end A343386.P13251371445712405809

namespace A343386

/-- `A107587(n)+Δ[A108623(n+1)]` -/
def P13251371445712405809.Spec : Prop :=
  ∀ n, P13251371445712405809.a n = A343386 n

end A343386

/-! ## A343386.P14402872267044195947

`A086246(n+2)-A107587(n)`
-/

namespace A343386.P14402872267044195947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 2) - A107587 n

end

end A343386.P14402872267044195947

namespace A343386

/-- `A086246(n+2)-A107587(n)` -/
def P14402872267044195947.Spec : Prop :=
  ∀ n, P14402872267044195947.a n = A343386 n

end A343386

/-! ## A343386.P16147245768938970739

`(A001006(n)-A343773(n))/2`
-/

namespace A343386.P16147245768938970739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001006 n - A343773 n : ℚ) / 2

end

end A343386.P16147245768938970739

namespace A343386

/-- `(A001006(n)-A343773(n))/2` -/
def P16147245768938970739.Spec : Prop :=
  ∀ n, P16147245768938970739.a n = (A343386 n : ℚ)

end A343386

/-!
# A343387: Number of ways to write n as x^2 + [y^2/2] + [z^4/8], where [.] is the floor function, x is a nonnegative integer, and y and z are positive integers.

The programs for A343387, there is no canonical definition to state claims against.
-/

/-! ## A343387.P2576547479394277568

`A102669(A014206(n)*A289553(n+1))`
-/

namespace A343387.P2576547479394277568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A014206 n * A289553 (n + 1)).toNat

end

end A343387.P2576547479394277568

/-! ## A343387.P14606387340713015252

`A001842(A002183(n+1))+A001826(A108282(n))`
-/

namespace A343387.P14606387340713015252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A002183 (n + 1)).toNat + A001826 (A108282 n).toNat

end

end A343387.P14606387340713015252

/-! ## A343387.P7848480503727881399

`A055640(A067329(n)+A067282(n+1))`
-/

namespace A343387.P7848480503727881399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A067329 n + A067282 (n + 1)).toNat

end

end A343387.P7848480503727881399

/-! ## A343387.P13923375802089313286

`A001221(∑[A335891(n+1)+A227232(n)])`
-/

namespace A343387.P13923375802089313286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335891 (n + 1) + A227232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343387.P13923375802089313286

/-! ## A343387.P13522765682218571489

`A001222(A006519(n+3)+A000631(n+3))`
-/

namespace A343387.P13522765682218571489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006519 (n + 3) + A000631 (n + 3)).toNat

end

end A343387.P13522765682218571489

/-!
# A343388: Squares visited by a knight moving on a square-spiral with numbers equal to the ordered divisors of the positive integers and where the knight moves to the smallest numbered unvisited square; the minimum distance from the origin is used if the square numbers are equal; the smallest ordered spiral number is used if the distances are equal.

The programs for A343388, there is no canonical definition to state claims against.
-/

/-! ## A343388.P17330746750794892318

`A027750(A343389(n+1))`
-/

namespace A343388.P17330746750794892318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A343389 (n + 1)).toNat

end

end A343388.P17330746750794892318

/-! ## A343388.P6705909308994509078

`A124010(A246926(n)+A100265(n))`
-/

namespace A343388.P6705909308994509078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A246926 n + A100265 n).toNat

end

end A343388.P6705909308994509078

/-! ## A343388.P6176891433780583744

`A035513(∏{e}[A137178(3*(n+1)), #])`
-/

namespace A343388.P6176891433780583744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137178 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A343388.P6176891433780583744

/-!
# A343391: Number of ways to write n as x^2 + [y^2/4] + [z^4/6] with x,y,z positive integers, where [.] is the floor function.

The programs for A343391, there is no canonical definition to state claims against.
-/

/-! ## A343391.P1344578589371635735

`A341969(A036014(n+1))+A237260(n+1)`
-/

namespace A343391.P1344578589371635735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341969 (A036014 (n + 1)).toNat + A237260 (n + 1)

end

end A343391.P1344578589371635735

/-! ## A343391.P7517963985940980716

`A001221(A060683(n+1)+A028377(n+2))`
-/

namespace A343391.P7517963985940980716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A060683 (n + 1) + A028377 (n + 2)).toNat

end

end A343391.P7517963985940980716

/-! ## A343391.P5330695002022340512

`A273568(A066182(n+1)%A000112(n+3))`
-/

namespace A343391.P5330695002022340512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273568 (Int.tmod (A066182 (n + 1)) (A000112 (n + 3))).toNat

end

end A343391.P5330695002022340512

/-! ## A343391.P5142931644303089862

`A270000(3*A032928(n+1)+2)-char[A047814(n)]`
-/

namespace A343391.P5142931644303089862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (3 * A032928 (n + 1) + 2).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A343391.P5142931644303089862

/-! ## A343391.P12457236568409174323

`A001221(A340601(2*n+3)+A279227(3*n+2))`
-/

namespace A343391.P12457236568409174323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A340601 (2 * n + 3) + A279227 (3 * n + 2)).toNat

end

end A343391.P12457236568409174323

/-!
# A343394: Sum of indices of n's distinct prime factors below n.

The programs for A343394, there is no canonical definition to state claims against.
-/

/-! ## A343394.P17063085811238275664

`A066328(∏{p}[n+1, ceil(n/#)])`
-/

namespace A343394.P17063085811238275664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (∏ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉).toNat

end

end A343394.P17063085811238275664

/-! ## A343394.P11489992992625749386

`∑{p}[n+1, A230980(#-C(#, n))]`
-/

namespace A343394.P11489992992625749386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A230980 (p - Nat.choose p n)

end

end A343394.P11489992992625749386

/-! ## A343394.P5923574192362411906

`A056239(∏{p}[∏{p}[n+1, #%n], #])`
-/

namespace A343394.P5923574192362411906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p % n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A343394.P5923574192362411906

/-! ## A343394.P8077349354337499135

`∑{p}[∏{p}[n+1, ceil(n/#)], A000720(#)]`
-/

namespace A343394.P8077349354337499135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ⌈(n : ℚ) / (p : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p

end

end A343394.P8077349354337499135

/-! ## A343394.P3491374242584076370

`∑{p}[∏{p}[n+1, ceil(n/#)], A003963(#)]`
-/

namespace A343394.P3491374242584076370
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ⌈(n : ℚ) / (p : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003963 p

end

end A343394.P3491374242584076370

/-! ## A343394.P9576817438579165708

`∑{p}[∏{p}[n+1, ceil(n/#)], A049084(#)]`
-/

namespace A343394.P9576817438579165708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ⌈(n : ℚ) / (p : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A049084 p

end

end A343394.P9576817438579165708

/-! ## A343394.P15268843395648481506

`∑{p}[∏{p}[n+1, ceil(n/#)], A056239(#)]`
-/

namespace A343394.P15268843395648481506
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ⌈(n : ℚ) / (p : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A056239 p

end

end A343394.P15268843395648481506

/-! ## A343394.P13855802847511364110

`A056239(∏{p}[∏{p}[n+1, ceil(n/#)], #])`
-/

namespace A343394.P13855802847511364110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ⌈(n : ℚ) / (p : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A343394.P13855802847511364110

/-! ## A343394.P9386071481704019274

`∑{p}[∏{p}[n+1, (n+1)/#], A026238(#)]`
-/

namespace A343394.P9386071481704019274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A026238 p

end

end A343394.P9386071481704019274

/-! ## A343394.P4791035607138911843

`A066328(A005451(n+1))`
-/

namespace A343394.P4791035607138911843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A005451 (n + 1)).toNat

end

end A343394.P4791035607138911843

/-!
# A343395: a(n) = Sum_{i=1..n} gcd(n^(n-i),n-i).

The programs for A343395, there is no canonical definition to state claims against.
-/

/-! ## A343395.P2432736000389104451

`A343114(n+1)-n`
-/

namespace A343395.P2432736000389104451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343114 (n + 1) - (n : ℤ)

end

end A343395.P2432736000389104451

/-! ## A343395.P9036876570395337161

`A389102(n+1)-(n+1)`
-/

namespace A343395.P9036876570395337161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389102 (n + 1) - (n + 1 : ℤ)

end

end A343395.P9036876570395337161

/-! ## A343395.P6327443249664326413

`abs(A343114(n+1)+A001489(n))`
-/

namespace A343395.P6327443249664326413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A343114 (n + 1) + A001489 n|

end

end A343395.P6327443249664326413

/-! ## A343395.P8383361300591482652

`A001478(n+1)+A343114(n+1)+1`
-/

namespace A343395.P8383361300591482652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A343114 (n + 1) + 1)

end

end A343395.P8383361300591482652

/-! ## A343395.P3467300358406050439

`A343114(n+1)+A001489(n+1)+1`
-/

namespace A343395.P3467300358406050439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343114 (n + 1) + A001489 (n + 1) + 1

end

end A343395.P3467300358406050439

/-! ## A343395.P11543388757931584998

`A000027(A343114(n+1)+A001489(n))`
-/

namespace A343395.P11543388757931584998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A343114 (n + 1) + A001489 n).toNat

end

end A343395.P11543388757931584998

/-! ## A343395.P1937572309915400834

`(A343114(n+1)+A001489(n))%A022372(n)`
-/

namespace A343395.P1937572309915400834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343114 (n + 1) + A001489 n) (A022372 n)

end

end A343395.P1937572309915400834

/-!
# A343396: Number of partitions of n into 3 parts [r,s,t] such that r <= s <= t where at least 1 part does not divide any larger part.

The programs for A343396, the canonical program `A343396.P11070715344476014144` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343396 has offset 1).

The definition of A343396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343396.P11070715344476014144

`∑[A008615(n)]-A049822(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A343396

/-- `∑[A008615(n)]-A049822(n+1)` -/
def P11070715344476014144.Spec : Prop :=
  ∀ n, P11070715344476014144.a n = A343396 (n + 1)

theorem P11070715344476014144.correct : P11070715344476014144.Spec := by
  intro n
  simp only [A343396, Nat.add_sub_cancel]

end A343396

/-! ## A343396.P2369438307051802712

`A069905(n+1)-A049822(n+1)`
-/

namespace A343396.P2369438307051802712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1) - A049822 (n + 1)

end

end A343396.P2369438307051802712

namespace A343396

/-- `A069905(n+1)-A049822(n+1)` -/
def P2369438307051802712.Spec : Prop :=
  ∀ n, P2369438307051802712.a n = A343396 (n + 1)

end A343396

/-! ## A343396.P15966969830600219897

`∑[A008615(n)]-∑{d}[n+1, A032741(#-1)]`
-/

namespace A343396.P15966969830600219897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ d ∈ Nat.divisors (f2 n), A032741 (d - 1)

end

end A343396.P15966969830600219897

namespace A343396

/-- `∑[A008615(n)]-∑{d}[n+1, A032741(#-1)]` -/
def P15966969830600219897.Spec : Prop :=
  ∀ n, P15966969830600219897.a n = A343396 (n + 1)

end A343396

/-! ## A343396.P10881994691914883344

`A156040(n)-(A049822(n+1)+A001399(n))`
-/

namespace A343396.P10881994691914883344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156040 n - (A049822 (n + 1) + A001399 n)

end

end A343396.P10881994691914883344

namespace A343396

/-- `A156040(n)-(A049822(n+1)+A001399(n))` -/
def P10881994691914883344.Spec : Prop :=
  ∀ n, P10881994691914883344.a n = A343396 (n + 1)

end A343396

/-! ## A343396.P15191055850634545177

`∑[A008615(n)]-(A086898(n+1)-A032741(n+1))`
-/

namespace A343396.P15191055850634545177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A086898 (n + 1) - A032741 (n + 1))

end

end A343396.P15191055850634545177

namespace A343396

/-- `∑[A008615(n)]-(A086898(n+1)-A032741(n+1))` -/
def P15191055850634545177.Spec : Prop :=
  ∀ n, P15191055850634545177.a n = A343396 (n + 1)

end A343396

/-!
# A343397: Number of ways to write n as 2^x + [y^2/3] + [z^2/4] with x,y,z positive integers, where [.] is the floor function.

The programs for A343397, there is no canonical definition to state claims against.
-/

/-! ## A343397.P9892272359919603649

`A014499(A118255(n+1))-A054576(n+1)`
-/

namespace A343397.P9892272359919603649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (A118255 (n + 1)).toNat - A054576 (n + 1)

end

end A343397.P9892272359919603649

