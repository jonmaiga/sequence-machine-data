import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C001
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
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
# A077203: a(1) = 2. Then the smallest n-digit prime starting with the last digit of the previous term.

The programs for A077203, there is no canonical definition to state claims against.
-/

/-! ## A077203.P11059703223386305928

`A151800(lcm(∑{digits}[n, 10^#], A326892(n+1)))`
-/

namespace A077203.P11059703223386305928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.lcm ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum : ℕ) : ℤ) (A326892 (n + 1)))

end

end A077203.P11059703223386305928

/-!
# A077204: a(1) = 1 . Then smallest n-digit square (MSD) starting with the LSD of the previous term and not a multiple of 100.

The programs for A077204, there is no canonical definition to state claims against.
-/

/-! ## A077204.P13537923545459323155

`A077205(n+1)²`
-/

namespace A077204.P13537923545459323155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077205 (n + 1) ^ 2

end

end A077204.P13537923545459323155

/-! ## A077204.P16260779206354521703

`A077205(n+1)^A000005(A077171(n))`
-/

namespace A077204.P16260779206354521703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077205 (n + 1) : ℚ) ^ (A000005 (A077171 n).toNat : ℤ)

end

end A077204.P16260779206354521703

/-! ## A077204.P5423090413211558967

`A077205(n+1)^A000005(A051701(n+1))`
-/

namespace A077204.P5423090413211558967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077205 (n + 1) : ℚ) ^ (A000005 (A051701 (n + 1)).toNat : ℤ)

end

end A077204.P5423090413211558967

/-! ## A077204.P3101164624462339158

`A077205(n+1)^A020639(A077198(n+1))`
-/

namespace A077204.P3101164624462339158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077205 (n + 1) : ℚ) ^ (A020639 (A077198 (n + 1)).toNat : ℤ)

end

end A077204.P3101164624462339158

/-! ## A077204.P11533427698773310774

`A077205(n+1)^A020639(A077160(2*n+3))`
-/

namespace A077204.P11533427698773310774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077205 (n + 1) : ℚ) ^ (A020639 (A077160 (2 * n + 3)).toNat : ℤ)

end

end A077204.P11533427698773310774

/-!
# A077205: a(n) = sqrt(A077204(n)).

The programs for A077205, there is no canonical definition to state claims against.
-/

/-! ## A077205.P14159223384456975353

`sqrt(A077204(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077205.P14159223384456975353
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A077204 (n + 1) : ℝ)

end

end A077205.P14159223384456975353

/-! ## A077205.P10300523264588847571

`root(A077204(n+1), A000038(n)+2)`
-/

namespace A077205.P10300523264588847571
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077204 (n + 1) : ℝ) ^ (1 / (A000038 n + 2 : ℝ))

end

end A077205.P10300523264588847571

/-! ## A077205.P7504955216990615367

`root(A077204(n+1), A020639(2*(n+1)))`
-/

namespace A077205.P7504955216990615367
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077204 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A077205.P7504955216990615367

/-!
# A077206: a(1) = 1 and then smallest n-digit triangular number starting with the least significant digit of the previous term and not a multiple of 10.

The programs for A077206, there is no canonical definition to state claims against.
-/

/-! ## A077206.P14843111020078684510

`C(A077207(n+1)+1, 2)`
-/

namespace A077206.P14843111020078684510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077207 (n + 1) + 1).toNat 2

end

end A077206.P14843111020078684510

/-! ## A077206.P9101946939902342321

`A000217(A077207(n+1))`
-/

namespace A077206.P9101946939902342321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A077207 (n + 1)).toNat

end

end A077206.P9101946939902342321

/-! ## A077206.P18314880332267297202

`A161680(A077207(n+1)+1)`
-/

namespace A077206.P18314880332267297202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A077207 (n + 1) + 1).toNat

end

end A077206.P18314880332267297202

/-! ## A077206.P2188802376967828552

`A286388(2*A077207(n+1))`
-/

namespace A077206.P2188802376967828552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286388 (2 * A077207 (n + 1)).toNat

end

end A077206.P2188802376967828552

/-!
# A077207: Triangular number index of A077206(n).

The programs for A077207, there is no canonical definition to state claims against.
-/

/-! ## A077207.P14544878528871299639

`floor(sqrt(2*A077206(n+1)))`
-/

namespace A077207.P14544878528871299639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A077206 (n + 1))

end

end A077207.P14544878528871299639

/-!
# A077209: a(1) = 2, then the smallest squarefree number greater than the previous term that begins with the end of the previous term.

The programs for A077209, there is no canonical definition to state claims against.
-/

/-! ## A077209.P2143810392394525347

`A098752(n+3)-A098750(A098786(n))`
-/

namespace A077209.P2143810392394525347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098752 (n + 3) - A098750 (A098786 n).toNat

end

end A077209.P2143810392394525347

/-!
# A077210: a(1) = 2, a(n+1) is the smallest squarefree number greater than n*a(n).

The programs for A077210, there is no canonical definition to state claims against.
-/

/-! ## A077210.P11707443831720105360

`n*a(n-1)+A044941(A020100(n))+1` with `a(0)=2`
-/

namespace A077210.P11707443831720105360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℤ) * a (n - 1) + (A044941 (A020100 n).toNat + 1)

end

end A077210.P11707443831720105360

/-! ## A077210.P8678531922128841445

`A002865(A309861(n))+n!+n!*∑[1/n!]`
-/

namespace A077210.P8678531922128841445
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002865 (A309861 n).toNat : ℚ) + ((Nat.factorial n : ℚ) + (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A077210.P8678531922128841445

/-! ## A077210.P316496424242364861

`val(A001935(n), A046097(n+1))+n*a(n-1)+1` with `a(0)=2`
-/

namespace A077210.P316496424242364861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.valuation (A001935 n).toNat (A046097 (n + 1)).toNat + (n * a (n - 1) + 1)

end

end A077210.P316496424242364861

/-! ## A077210.P5203261599414362709

`A038159(n)+A002865(A309861(n))`
-/

namespace A077210.P5203261599414362709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038159 n + A002865 (A309861 n).toNat

end

end A077210.P5203261599414362709

/-! ## A077210.P16440808074818718321

`A154439(A309861(n))+A033540(n+1)`
-/

namespace A077210.P16440808074818718321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 (A309861 n).toNat + A033540 (n + 1)

end

end A077210.P16440808074818718321

/-!
# A077211: a(1) = 1; a(n+1) is the smallest square greater than n*a(n).

The programs for A077211, there is no canonical definition to state claims against.
-/

/-! ## A077211.P12610932856161472676

`(floor(sqrt(n*a(n-1)))+1)²` with `a(0)=1`
-/

namespace A077211.P12610932856161472676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.sqrt (n * a (n - 1)) + 1) ^ 2

end

end A077211.P12610932856161472676

/-! ## A077211.P12025292793769721824

`ceil(sqrt(n*a(n-1)+1))²` with `a(0)=1`
-/

namespace A077211.P12025292793769721824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.sqrt ((n : ℤ) * a (n - 1) + 1 : ℝ)⌉ ^ 2

end

end A077211.P12025292793769721824

/-! ## A077211.P3453968752139966377

`A077212(n+1)²`
-/

namespace A077211.P3453968752139966377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077212 (n + 1) ^ 2

end

end A077211.P3453968752139966377

/-! ## A077211.P8172446917360568376

`A077212(A005408(n)-n)^2`
-/

namespace A077211.P8172446917360568376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077212 (A005408 n - (n : ℤ)).toNat ^ 2

end

end A077211.P8172446917360568376

/-! ## A077211.P11504511149663919129

`A077212(n+1)^A020639(2*(n+1))`
-/

namespace A077211.P11504511149663919129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077212 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A077211.P11504511149663919129

/-!
# A077212: a(n) = A077211(n)^(1/2).

The programs for A077212, the canonical program `A077212.P16698404188077678563` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077212 has offset 1).

The definition of A077212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077212.P434330636642289018

`A077211(n+1)^(1/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077212.P434330636642289018
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077211 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A077212.P434330636642289018

namespace A077212

/-- `A077211(n+1)^(1/2)` -/
def P434330636642289018.Spec : Prop :=
  ∀ n, P434330636642289018.a n = (A077212 (n + 1) : ℝ)

end A077212

/-! ## A077212.P16698404188077678563

`floor(sqrt(n)*a(n-1))+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077212

/-- `floor(sqrt(n)*a(n-1))+1` -/
def P16698404188077678563.Spec : Prop :=
  ∀ n, P16698404188077678563.a n = A077212 (n + 1)

theorem P16698404188077678563.correct : P16698404188077678563.Spec := by
  intro n
  simp only [A077212, Nat.add_sub_cancel]

end A077212

/-! ## A077212.P2251833989514203378

`1-ceil(-(sqrt(n)*a(n-1)))` with `a(0)=1`
-/

namespace A077212.P2251833989514203378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ⌈-(Real.sqrt (n : ℝ) * (a (n - 1) : ℝ))⌉

end

end A077212.P2251833989514203378

namespace A077212

/-- `1-ceil(-(sqrt(n)*a(n-1)))` -/
def P2251833989514203378.Spec : Prop :=
  ∀ n, P2251833989514203378.a n = A077212 (n + 1)

end A077212

/-! ## A077212.P17422016254299260856

`floor(a(n-1)/sqrt(1/n))+1` with `a(0)=1`
-/

namespace A077212.P17422016254299260856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) / Real.sqrt (1 / (n : ℚ) : ℝ)⌋ + 1

end

end A077212.P17422016254299260856

namespace A077212

/-- `floor(a(n-1)/sqrt(1/n))+1` -/
def P17422016254299260856.Spec : Prop :=
  ∀ n, P17422016254299260856.a n = A077212 (n + 1)

end A077212

/-! ## A077212.P14950482560072125007

`ϕ²-(ϕ-floor(sqrt(n)*a(n-1)))` with `a(0)=1`
-/

namespace A077212.P14950482560072125007
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.goldenRatio ^ 2 - (Real.goldenRatio - (⌊Real.sqrt (n : ℝ) * a (n - 1)⌋ : ℝ))

end

end A077212.P14950482560072125007

namespace A077212

/-- `ϕ²-(ϕ-floor(sqrt(n)*a(n-1)))` -/
def P14950482560072125007.Spec : Prop :=
  ∀ n, P14950482560072125007.a n = (A077212 (n + 1) : ℝ)

end A077212

/-! ## A077212.P15535123099867893723

`ceil(sqrt(n*a(n-1)²+1))` with `a(0)=1`
-/

namespace A077212.P15535123099867893723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.sqrt ((n : ℤ) * a (n - 1) ^ 2 + 1 : ℝ)⌉

end

end A077212.P15535123099867893723

namespace A077212

/-- `ceil(sqrt(n*a(n-1)²+1))` -/
def P15535123099867893723.Spec : Prop :=
  ∀ n, P15535123099867893723.a n = A077212 (n + 1)

end A077212

/-! ## A077212.P8445697662422703106

`sqrt(A077211(n+1))`
-/

namespace A077212.P8445697662422703106
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A077211 (n + 1) : ℝ)

end

end A077212.P8445697662422703106

namespace A077212

/-- `sqrt(A077211(n+1))` -/
def P8445697662422703106.Spec : Prop :=
  ∀ n, P8445697662422703106.a n = (A077212 (n + 1) : ℝ)

end A077212

/-!
# A077213: a(1) = 2, a(n+1) is the smallest prime greater than n*a(n).

The programs for A077213, there is no canonical definition to state claims against.
-/

/-! ## A077213.P17866478922261586974

`A151800(n*a(n-1))` with `a(0)=2`
-/

namespace A077213.P17866478922261586974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 ((n : ℤ) * a (n - 1)).toNat

end

end A077213.P17866478922261586974

/-! ## A077213.P12069236557705975548

`A151800(lcm(n, a(n-1)))` with `a(0)=2`
-/

namespace A077213.P12069236557705975548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (Int.lcm (n : ℤ) (a (n - 1)))

end

end A077213.P12069236557705975548

/-! ## A077213.P8433095604835073640

`A151800(a(n-1)/tan(acot(n)))` with `a(0)=2`
-/

namespace A077213.P8433095604835073640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.tan (SequenceMachineLib.acot (n : ℝ)))).toNat

end

end A077213.P8433095604835073640

/-! ## A077213.P14388111128901023565

`A151800(a(n-1)/cot(atan(n)))` with `a(0)=2`
-/

namespace A077213.P14388111128901023565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.cot (Real.arctan (n : ℝ)))).toNat

end

end A077213.P14388111128901023565

/-!
# A077214: a(1) = 1. a(n+1) is the smallest number which is greater than a(n), coprime to it and has a different prime signature.

The programs for A077214, there is no canonical definition to state claims against.
-/

/-! ## A077214.P16237510150087806917

`lt[A000040(n+1), A076446(A010785(n+3))]`
-/

namespace A077214.P16237510150087806917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076446 (A010785 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A077214.P16237510150087806917

/-! ## A077214.P8404589020243359874

`lt[A004614(n+1), A076446(A010785(n+3))]`
-/

namespace A077214.P8404589020243359874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076446 (A010785 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A077214.P8404589020243359874

/-! ## A077214.P15810591610128826501

`lt[A081339(n+1), A076446(A010785(n+3))]`
-/

namespace A077214.P15810591610128826501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076446 (A010785 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A077214.P15810591610128826501

/-!
# A077217: Prime(k) such that the prime power with largest exponent that divides the product P(k) of composite numbers between prime(k) and prime(k+1) is an odd number, i.e., if p^r and 2^s divide P(k) then r >= s, p is an odd prime.

The programs for A077217, there is no canonical definition to state claims against.
-/

/-! ## A077217.P4420361041466454188

`record[p?[A344005(A353762(n+1))]]`
-/

namespace A077217.P4420361041466454188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (A353762 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077217.P4420361041466454188

/-! ## A077217.P2772354331701277878

`p?[A030173(A343122(n+2)+n)]`
-/

namespace A077217.P2772354331701277878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030173 (A343122 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077217.P2772354331701277878

/-! ## A077217.P3973785477194349125

`p?[A087572(n+2)-A034693(n+1)]`
-/

namespace A077217.P3973785477194349125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087572 (n + 2) - A034693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077217.P3973785477194349125

/-!
# A077218: Sum of numbers of prime factors (counted with multiplicities) of numbers between n-th and (n+1)-st prime.

The programs for A077218, the canonical program `A077218.P785408297749336745` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077218 has offset 1).

The definition of A077218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9591 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077218.P15420550639876559767

`Δ[A080084(n+1)]-1`
-/

namespace A077218.P15420550639876559767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A077218.P15420550639876559767

namespace A077218

/-- `Δ[A080084(n+1)]-1` -/
def P15420550639876559767.Spec : Prop :=
  ∀ n, P15420550639876559767.a n = A077218 (n + 1)

end A077218

/-! ## A077218.P536175828272294699

`A080084(n+2)-(A080084(n+1)+1)`
-/

namespace A077218.P536175828272294699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080084 (n + 2) - (A080084 (n + 1) + 1)

end

end A077218.P536175828272294699

namespace A077218

/-- `A080084(n+2)-(A080084(n+1)+1)` -/
def P536175828272294699.Spec : Prop :=
  ∀ n, P536175828272294699.a n = A077218 (n + 1)

end A077218

/-! ## A077218.P14305537452823580172

`A004524(A004273(Δ[A080084(n+1)]))`
-/

namespace A077218.P14305537452823580172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A004273 (f1 (n + 1) - f1 n).toNat).toNat

end

end A077218.P14305537452823580172

namespace A077218

/-- `A004524(A004273(Δ[A080084(n+1)]))` -/
def P14305537452823580172.Spec : Prop :=
  ∀ n, P14305537452823580172.a n = A077218 (n + 1)

end A077218

/-! ## A077218.P10419011037662653938

`A318995(A001749(Δ[A080084(n+1)]))`
-/

namespace A077218.P10419011037662653938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A001749 (f1 (n + 1) - f1 n).toNat).toNat

end

end A077218.P10419011037662653938

namespace A077218

/-- `A318995(A001749(Δ[A080084(n+1)]))` -/
def P10419011037662653938.Spec : Prop :=
  ∀ n, P10419011037662653938.a n = A077218 (n + 1)

end A077218

/-! ## A077218.P785408297749336745

`Δ[A022559(A000040(n+1))]-1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A077218

/-- `Δ[A022559(A000040(n+1))]-1` -/
def P785408297749336745.Spec : Prop :=
  ∀ n, P785408297749336745.a n = A077218 (n + 1)

theorem P785408297749336745.correct : P785408297749336745.Spec := by
  intro n
  simp only [A077218, Nat.add_sub_cancel]

end A077218

/-! ## A077218.P838333650342362588

`Δ[A022559(A006093(n+1))]-1`
-/

namespace A077218.P838333650342362588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A077218.P838333650342362588

namespace A077218

/-- `Δ[A022559(A006093(n+1))]-1` -/
def P838333650342362588.Spec : Prop :=
  ∀ n, P838333650342362588.a n = A077218 (n + 1)

end A077218

/-! ## A077218.P9245674159122623163

`Δ[A022559(record[A000010(n+1)])]-1`
-/

namespace A077218.P9245674159122623163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A077218.P9245674159122623163

namespace A077218

/-- `Δ[A022559(record[A000010(n+1)])]-1` -/
def P9245674159122623163.Spec : Prop :=
  ∀ n, P9245674159122623163.a n = A077218 (n + 1)

end A077218

/-! ## A077218.P15604626682771490671

`Δ[A022559(A040976(n+1)+1)]-1`
-/

namespace A077218.P15604626682771490671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (A040976 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A077218.P15604626682771490671

namespace A077218

/-- `Δ[A022559(A040976(n+1)+1)]-1` -/
def P15604626682771490671.Spec : Prop :=
  ∀ n, P15604626682771490671.a n = A077218 (n + 1)

end A077218

/-! ## A077218.P13912953602502067469

`Δ[A022559(eq[n, A000010(n+1)])]-1`
-/

namespace A077218.P13912953602502067469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A077218.P13912953602502067469

namespace A077218

/-- `Δ[A022559(eq[n, A000010(n+1)])]-1` -/
def P13912953602502067469.Spec : Prop :=
  ∀ n, P13912953602502067469.a n = A077218 (n + 1)

end A077218

/-! ## A077218.P9676319194373610557

`Δ[A055636(A000040(n+1))]`
-/

namespace A077218.P9676319194373610557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055636 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077218.P9676319194373610557

namespace A077218

/-- `Δ[A055636(A000040(n+1))]` -/
def P9676319194373610557.Spec : Prop :=
  ∀ n, P9676319194373610557.a n = A077218 (n + 1)

end A077218

/-!
# A077219: Floor(geometric mean of the reduced residue system modulo n).

The programs for A077219, there is no canonical definition to state claims against.
-/

/-! ## A077219.P15699298339910079753

`A261585(A336358(3*n+2)-A175462(n))`
-/

namespace A077219.P15699298339910079753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A336358 (3 * n + 2) - A175462 n).toNat

end

end A077219.P15699298339910079753

/-! ## A077219.P12758261235109258124

`A261585(A336358(3*n+2)-A000005(n+1))`
-/

namespace A077219.P12758261235109258124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A336358 (3 * n + 2) - A000005 (n + 1)).toNat

end

end A077219.P12758261235109258124

/-! ## A077219.P10992317859452610609

`A329978(A103517(n))%A329842(n+1)`
-/

namespace A077219.P10992317859452610609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329978 (A103517 n).toNat) (A329842 (n + 1))

end

end A077219.P10992317859452610609

/-!
# A077221: a(0) = 0 and then alternately even and odd numbers in increasing order such that the sum of any two successive terms is a square.

The programs for A077221, the canonical program `A077221.P5633681332112256696` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077221 has offset 0).

The definition of A077221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077221.P5633681332112256696

`2*n²+((-1)^n-1)/2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077221

/-- `2*n²+((-1)^n-1)/2` -/
def P5633681332112256696.Spec : Prop :=
  ∀ n, P5633681332112256696.a n = (A077221 n : ℚ)

end A077221

/-! ## A077221.P7263471544394394484

`abs(and(1, n)-2*n²)`
-/

namespace A077221.P7263471544394394484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.land 1 n : ℤ) - (2 * n ^ 2 : ℤ)|

end

end A077221.P7263471544394394484

namespace A077221

/-- `abs(and(1, n)-2*n²)` -/
def P7263471544394394484.Spec : Prop :=
  ∀ n, P7263471544394394484.a n = A077221 n

end A077221

/-! ## A077221.P7207155687269779459

`∑[a(n-2)+8]` with `a(0)=0, a(1)=1, a(2)=7`
-/

namespace A077221.P7207155687269779459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 7] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077221.P7207155687269779459

namespace A077221

/-- `∑[a(n-2)+8]` -/
def P7207155687269779459.Spec : Prop :=
  ∀ n, (P7207155687269779459.a n : ℤ) = A077221 n

end A077221

/-! ## A077221.P8638914623953760841

`abs(n*2*n-and(1, n))`
-/

namespace A077221.P8638914623953760841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n * (2 * n) : ℤ) - (Nat.land 1 n : ℤ)|

end

end A077221.P8638914623953760841

namespace A077221

/-- `abs(n*2*n-and(1, n))` -/
def P8638914623953760841.Spec : Prop :=
  ∀ n, P8638914623953760841.a n = A077221 n

end A077221

/-! ## A077221.P5771767626402984595

`∑[∑[8-a(n-1)]]` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A077221.P5771767626402984595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077221.P5771767626402984595

namespace A077221

/-- `∑[∑[8-a(n-1)]]` -/
def P5771767626402984595.Spec : Prop :=
  ∀ n, P5771767626402984595.a n = A077221 n

end A077221

/-! ## A077221.P5252187417193709740

`abs((1-2*n)²-a(n-1))` with `a(0)=0`
-/

namespace A077221.P5252187417193709740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |(1 - (2 * n : ℤ)) ^ 2 - a (n - 1)|

end

end A077221.P5252187417193709740

namespace A077221

/-- `abs((1-2*n)²-a(n-1))` -/
def P5252187417193709740.Spec : Prop :=
  ∀ n, P5252187417193709740.a n = A077221 n

end A077221

/-! ## A077221.P7615831955952081651

`floor((1-2*n)²-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A077221.P7615831955952081651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (1 - (2 * n : ℤ)) ^ 2 - a (n - 1)

end

end A077221.P7615831955952081651

namespace A077221

/-- `floor((1-2*n)²-a(n-1))` -/
def P7615831955952081651.Spec : Prop :=
  ∀ n, P7615831955952081651.a n = A077221 n

end A077221

/-! ## A077221.P5246445111032043040

`ceil((1-2*n)²-a(n-1))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A077221.P5246445111032043040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (1 - (2 * n : ℤ)) ^ 2 - a (n - 1)

end

end A077221.P5246445111032043040

namespace A077221

/-- `ceil((1-2*n)²-a(n-1))` -/
def P5246445111032043040.Spec : Prop :=
  ∀ n, P5246445111032043040.a n = A077221 n

end A077221

/-! ## A077221.P11614237462917056880

`round((1-2*n)²-a(n-1))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A077221.P11614237462917056880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (1 - (2 * n : ℤ)) ^ 2 - a (n - 1)

end

end A077221.P11614237462917056880

namespace A077221

/-- `round((1-2*n)²-a(n-1))` -/
def P11614237462917056880.Spec : Prop :=
  ∀ n, P11614237462917056880.a n = A077221 n

end A077221

/-! ## A077221.P6269295683508959528

`abs(or(1, n*(2*n+1))-(n+1))`
-/

namespace A077221.P6269295683508959528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 1 (n * (2 * n + 1)) : ℤ) - (n + 1 : ℤ)|

end

end A077221.P6269295683508959528

namespace A077221

/-- `abs(or(1, n*(2*n+1))-(n+1))` -/
def P6269295683508959528.Spec : Prop :=
  ∀ n, P6269295683508959528.a n = A077221 n

end A077221

/-! ## A077221.P16759113794158299526

`∑[∑[A126664(n)]]`
-/

namespace A077221.P16759113794158299526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077221.P16759113794158299526

namespace A077221

/-- `∑[∑[A126664(n)]]` -/
def P16759113794158299526.Spec : Prop :=
  ∀ n, P16759113794158299526.a n = A077221 n

end A077221

/-! ## A077221.P7709380125674818250

`A005919(n)%A009925(n)`
-/

namespace A077221.P7709380125674818250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005919 n) (A009925 n)

end

end A077221.P7709380125674818250

namespace A077221

/-- `A005919(n)%A009925(n)` -/
def P7709380125674818250.Spec : Prop :=
  ∀ n, P7709380125674818250.a n = A077221 n

end A077221

/-! ## A077221.P3383546154072307106

`A175109(n)%A084849(n)`
-/

namespace A077221.P3383546154072307106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175109 n) (A084849 n)

end

end A077221.P3383546154072307106

namespace A077221

/-- `A175109(n)%A084849(n)` -/
def P3383546154072307106.Spec : Prop :=
  ∀ n, P3383546154072307106.a n = A077221 n

end A077221

/-! ## A077221.P10813121134787341658

`A211617(n)%A054552(n)`
-/

namespace A077221.P10813121134787341658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211617 n) (A054552 n)

end

end A077221.P10813121134787341658

namespace A077221

/-- `A211617(n)%A054552(n)` -/
def P10813121134787341658.Spec : Prop :=
  ∀ n, P10813121134787341658.a n = A077221 n

end A077221

/-! ## A077221.P17515857436832206993

`xor(A001105(n), A010674(n))`
-/

namespace A077221.P17515857436832206993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001105 n) (A010674 n)

end

end A077221.P17515857436832206993

namespace A077221

/-- `xor(A001105(n), A010674(n))` -/
def P17515857436832206993.Spec : Prop :=
  ∀ n, P17515857436832206993.a n = A077221 n

end A077221

/-! ## A077221.P1001761496010980533

`xor(A000034(n), A058331(n))`
-/

namespace A077221.P1001761496010980533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000034 n) (A058331 n)

end

end A077221.P1001761496010980533

namespace A077221

/-- `xor(A000034(n), A058331(n))` -/
def P1001761496010980533.Spec : Prop :=
  ∀ n, P1001761496010980533.a n = A077221 n

end A077221

/-! ## A077221.P10222107935089886373

`xor(A010702(n), A093328(n))`
-/

namespace A077221.P10222107935089886373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010702 n) (A093328 n)

end

end A077221.P10222107935089886373

namespace A077221

/-- `xor(A010702(n), A093328(n))` -/
def P10222107935089886373.Spec : Prop :=
  ∀ n, P10222107935089886373.a n = A077221 n

end A077221

/-! ## A077221.P3347971165373930343

`xor(A010712(n), A255843(n))`
-/

namespace A077221.P3347971165373930343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010712 n) (A255843 n)

end

end A077221.P3347971165373930343

namespace A077221

/-- `xor(A010712(n), A255843(n))` -/
def P3347971165373930343.Spec : Prop :=
  ∀ n, P3347971165373930343.a n = A077221 n

end A077221

/-! ## A077221.P4569778740007221259

`xor(A010725(n), A255844(n))`
-/

namespace A077221.P4569778740007221259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010725 n) (A255844 n)

end

end A077221.P4569778740007221259

namespace A077221

/-- `xor(A010725(n), A255844(n))` -/
def P4569778740007221259.Spec : Prop :=
  ∀ n, P4569778740007221259.a n = A077221 n

end A077221

/-! ## A077221.P8259506386759634697

`xor(A059841(n), A275543(n))`
-/

namespace A077221.P8259506386759634697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059841 n) (A275543 n)

end

end A077221.P8259506386759634697

namespace A077221

/-- `xor(A059841(n), A275543(n))` -/
def P8259506386759634697.Spec : Prop :=
  ∀ n, P8259506386759634697.a n = A077221 n

end A077221

/-!
# A077225: Starting with a(0) = 1, smallest squarefree number k such that, for all a(m), m < n, k + a(m) is not squarefree.

The programs for A077225, there is no canonical definition to state claims against.
-/

/-! ## A077225.P16778243905386865571

`A200921(A084710(n+1))`
-/

namespace A077225.P16778243905386865571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200921 (A084710 (n + 1)).toNat

end

end A077225.P16778243905386865571

/-!
# A077227: Triangle of compositions of n into exactly k parts each no more than k.

The programs for A077227, there is no canonical definition to state claims against.
-/

/-! ## A077227.P3963977175164446451

`A122542(n)-A305830(A128596(n))`
-/

namespace A077227.P3963977175164446451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 n - A305830 (A128596 n).toNat

end

end A077227.P3963977175164446451

/-! ## A077227.P12604712140128220668

`A061980(n)%A116965(A117401(n))`
-/

namespace A077227.P12604712140128220668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061980 n) (A116965 (A117401 n).toNat)

end

end A077227.P12604712140128220668

/-! ## A077227.P16877288843016555122

`A007318(n)%A320054(A029635(n))`
-/

namespace A077227.P16877288843016555122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) (A320054 (A029635 n).toNat)

end

end A077227.P16877288843016555122

/-! ## A077227.P4645786729273832185

`A132471(n)%A256157(A048993(n))`
-/

namespace A077227.P4645786729273832185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132471 n) (A256157 (A048993 n).toNat)

end

end A077227.P4645786729273832185

/-! ## A077227.P18337360672899585673

`A357622(A333142(n))*A357638(n)`
-/

namespace A077227.P18337360672899585673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357622 (A333142 n).toNat * A357638 n

end

end A077227.P18337360672899585673

/-!
# A077228: Triangle of compositions with a total that is no more than n into exactly k parts each no more than k.

The programs for A077228, there is no canonical definition to state claims against.
-/

/-! ## A077228.P11269163952910962474

`A253676(A156250(A009999(n))²)`
-/

namespace A077228.P11269163952910962474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253676 (A156250 (A009999 n).toNat ^ 2).toNat

end

end A077228.P11269163952910962474

/-! ## A077228.P3118854865950994575

`A027948(n)+A001221(A174791(n))`
-/

namespace A077228.P3118854865950994575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027948 n + A001221 (A174791 n).toNat

end

end A077228.P3118854865950994575

/-! ## A077228.P9744359357669346626

`A267517(A022171(n))%A151800(n)`
-/

namespace A077228.P9744359357669346626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267517 (A022171 n).toNat) (A151800 n)

end

end A077228.P9744359357669346626

/-! ## A077228.P1894565842663029950

`A034296(A202241(n)%A202264(n+1))`
-/

namespace A077228.P1894565842663029950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 (Int.tmod (A202241 n) (A202264 (n + 1))).toNat

end

end A077228.P1894565842663029950

/-!
# A077229: Number of compositions of n where the largest part is less than or equal to the number of parts.

The programs for A077229, there is no canonical definition to state claims against.
-/

/-! ## A077229.P11489670209222847892

`ceil(2^(n-1))-A348125(A028310(n))`
-/

namespace A077229.P11489670209222847892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A348125 (A028310 n).toNat

end

end A077229.P11489670209222847892

/-! ## A077229.P2250140980890268432

`abs(A011782(n)-A348125(A028310(n)))`
-/

namespace A077229.P2250140980890268432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - A348125 (A028310 n).toNat|

end

end A077229.P2250140980890268432

/-! ## A077229.P4505712643679545383

`(A011782(n)-A348125(A028310(n)))%A221172(n)`
-/

namespace A077229.P4505712643679545383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 n - A348125 (A028310 n).toNat) (A221172 n)

end

end A077229.P4505712643679545383

/-! ## A077229.P4240235670888738743

`A011782(n)+A153881(n+1)*A348125(A028310(n))`
-/

namespace A077229.P4240235670888738743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A153881 (n + 1) * A348125 (A028310 n).toNat

end

end A077229.P4240235670888738743

/-! ## A077229.P11677494444357729354

`abs(A000010(2^n)-A348125(A028310(n)))`
-/

namespace A077229.P11677494444357729354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000010 (2 ^ n) - A348125 (A028310 n).toNat|

end

end A077229.P11677494444357729354

/-!
# A077232: a(n) is smallest natural number a satisfying Pell equation a^2 - d(n)*b^2= +1 or = -1, with d(n)=A000037(n) (a nonsquare). Corresponding smallest b(n)=A077233(n).

The programs for A077232, there is no canonical definition to state claims against.
-/

/-! ## A077232.P8610396291876178988

`A006702(comp[n²])`
-/

namespace A077232.P8610396291876178988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A077232.P8610396291876178988

/-! ## A077232.P15018539379334931039

`A341862(A000037(n+1))/2`
-/

namespace A077232.P15018539379334931039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341862 (A000037 (n + 1)).toNat : ℚ) / 2

end

end A077232.P15018539379334931039

/-! ## A077232.P3642649788481813626

`A341862(lt[0, A341862(n)])/2`
-/

namespace A077232.P3642649788481813626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341862 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341862 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2

end

end A077232.P3642649788481813626

/-! ## A077232.P5607919957009479234

`A006702(A000037(n+1))*A254651(A005408(n))`
-/

namespace A077232.P5607919957009479234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (A000037 (n + 1)).toNat * A254651 (A005408 n).toNat

end

end A077232.P5607919957009479234

/-! ## A077232.P16238401193900942283

`A006702(A000037(n+1))*A057427(A133819(n+1))`
-/

namespace A077232.P16238401193900942283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (A000037 (n + 1)).toNat * A057427 (A133819 (n + 1)).toNat

end

end A077232.P16238401193900942283

/-! ## A077232.P7227243576947393837

`A006702(A000037(n+1))%A007283(n+1)`
-/

namespace A077232.P7227243576947393837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006702 (A000037 (n + 1)).toNat) (A007283 (n + 1))

end

end A077232.P7227243576947393837

/-! ## A077232.P12008206362271582622

`A006702(A000037(n+1))%A159334(n)`
-/

namespace A077232.P12008206362271582622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006702 (A000037 (n + 1)).toNat) (A159334 n)

end

end A077232.P12008206362271582622

/-! ## A077232.P10807657090077121476

`A006702(A000037(n+1))*A057427(A000037(n+1)²)`
-/

namespace A077232.P10807657090077121476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (A000037 (n + 1)).toNat * A057427 (A000037 (n + 1) ^ 2).toNat

end

end A077232.P10807657090077121476

/-! ## A077232.P18438134428427497171

`A006702(A000037(n+1)²)*A006702(A000037(n+1))`
-/

namespace A077232.P18438134428427497171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (A000037 (n + 1) ^ 2).toNat * A006702 (A000037 (n + 1)).toNat

end

end A077232.P18438134428427497171

/-!
# A077233: a(n) is smallest natural number a satisfying Pell equation b^2- d(n)*a^2= +1 or = -1, with d(n)=A000037(n) (nonsquare). Corresponding smallest b(n)=A077232(n).

The programs for A077233, there is no canonical definition to state claims against.
-/

/-! ## A077233.P11215344258037438512

`A006703(comp[n²])`
-/

namespace A077233.P11215344258037438512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A077233.P11215344258037438512

/-! ## A077233.P9753159994389120972

`gcd(A000038(n), A006703(A000037(n+1)))`
-/

namespace A077233.P9753159994389120972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A006703 (A000037 (n + 1)).toNat)

end

end A077233.P9753159994389120972

/-! ## A077233.P1214386698599041536

`or(A000007(n), A006703(A000037(n+1)))`
-/

namespace A077233.P1214386698599041536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A006703 (A000037 (n + 1)).toNat)

end

end A077233.P1214386698599041536

/-! ## A077233.P7433936927177560000

`A006703(A000037(n+1))+A000007(n+1)`
-/

namespace A077233.P7433936927177560000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A000037 (n + 1)).toNat + A000007 (n + 1)

end

end A077233.P7433936927177560000

/-! ## A077233.P17988136073755138826

`A070412(n)%3*A006703(A000037(n+1))`
-/

namespace A077233.P17988136073755138826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070412 n) 3 * A006703 (A000037 (n + 1)).toNat

end

end A077233.P17988136073755138826

/-! ## A077233.P13404782947137853612

`A006703(A000037(n+1))+A008683(8*n+4)`
-/

namespace A077233.P13404782947137853612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A000037 (n + 1)).toNat + A008683 (8 * n + 4)

end

end A077233.P13404782947137853612

/-! ## A077233.P9131471400917167222

`A006703(A000037(n+1))+val(A006519(n+1), 3)`
-/

namespace A077233.P9131471400917167222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A000037 (n + 1)).toNat + (SequenceMachineLib.valuation (A006519 (n + 1)).toNat 3 : ℤ)

end

end A077233.P9131471400917167222

/-! ## A077233.P9238022222621727607

`A000188(∏{p}[n+1, #])*A006703(A000037(n+1))`
-/

namespace A077233.P9238022222621727607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (∏ p ∈ Nat.primeFactors (f1 n), p) * A006703 (A000037 (n + 1)).toNat

end

end A077233.P9238022222621727607

/-! ## A077233.P1302941052489466691

`A003557(∏{p}[n+1, #])*A006703(A000037(n+1))`
-/

namespace A077233.P1302941052489466691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (∏ p ∈ Nat.primeFactors (f1 n), p) * A006703 (A000037 (n + 1)).toNat

end

end A077233.P1302941052489466691

/-! ## A077233.P6643715928787431707

`A005361(∏{p}[n+1, #])*A006703(A000037(n+1))`
-/

namespace A077233.P6643715928787431707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (∏ p ∈ Nat.primeFactors (f1 n), p) * A006703 (A000037 (n + 1)).toNat

end

end A077233.P6643715928787431707

/-! ## A077233.P14565056551989005113

`A006703(A000037(n+1))+A006703(A000188(n+1)²)`
-/

namespace A077233.P14565056551989005113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A000037 (n + 1)).toNat + A006703 (A000188 (n + 1) ^ 2).toNat

end

end A077233.P14565056551989005113

/-! ## A077233.P16205579002854269294

`A006703(A000037(n+1))+A006703(A005361(n+1)²)`
-/

namespace A077233.P16205579002854269294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A000037 (n + 1)).toNat + A006703 (A005361 (n + 1) ^ 2).toNat

end

end A077233.P16205579002854269294

/-! ## A077233.P12985169394415559900

`A006703(A000037(n+1))*A057427(A133819(n+1))`
-/

namespace A077233.P12985169394415559900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A000037 (n + 1)).toNat * A057427 (A133819 (n + 1)).toNat

end

end A077233.P12985169394415559900

/-! ## A077233.P1434427450382939252

`A248395(2*n)+A006703(A000037(n+1))`
-/

namespace A077233.P1434427450382939252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248395 (2 * n) + A006703 (A000037 (n + 1)).toNat

end

end A077233.P1434427450382939252

/-! ## A077233.P12828103029585085395

`A006519(2*n+1)*A006703(A000037(n+1))`
-/

namespace A077233.P12828103029585085395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A006703 (A000037 (n + 1)).toNat

end

end A077233.P12828103029585085395

/-! ## A077233.P7897374433457870673

`char[A061579(n)]*A006703(A000037(n+1))`
-/

namespace A077233.P7897374433457870673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A006703 (A000037 (n + 1)).toNat

end

end A077233.P7897374433457870673

/-! ## A077233.P1875960559249326918

`A006703(A000037(n+1))%A033313(n+1)`
-/

namespace A077233.P1875960559249326918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006703 (A000037 (n + 1)).toNat) (A033313 (n + 1))

end

end A077233.P1875960559249326918

/-! ## A077233.P1806743339832404830

`A006703(A000037(n+1))+val(A151800((n+1)²), 3)`
-/

namespace A077233.P1806743339832404830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A000037 (n + 1)).toNat + (SequenceMachineLib.valuation (A151800 ((n + 1) ^ 2)).toNat 3 : ℤ)

end

end A077233.P1806743339832404830

/-!
# A077234: Bisection (odd part) of Chebyshev sequence with Diophantine property.

The programs for A077234, the canonical program `A077234.P12622536269084861417` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077234 has offset 0).

The definition of A077234 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077234.P12622536269084861417

`4*a(n-1)-a(n-2)` with `a(0)=2, a(1)=9`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077234

/-- `4*a(n-1)-a(n-2)` -/
def P12622536269084861417.Spec : Prop :=
  ∀ n, P12622536269084861417.a n = A077234 n

theorem P12622536269084861417.correct : P12622536269084861417.Spec := by
  intro n
  simp only [A077234]

end A077234

/-! ## A077234.P2163724755326734574

`ogf((2+x)/(1-4x+x^2))`
-/

namespace A077234.P2163724755326734574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -4, 1] n

end

end A077234.P2163724755326734574

namespace A077234

/-- `ogf((2+x)/(1-4x+x^2))` -/
def P2163724755326734574.Spec : Prop :=
  ∀ n, P2163724755326734574.a n = A077234 n

end A077234

/-! ## A077234.P5197315383394616697

`ceil((sqrt(3)+2)*a(n-1))` with `a(0)=2, a(1)=9`
-/

namespace A077234.P5197315383394616697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉

end

end A077234.P5197315383394616697

namespace A077234

/-- `ceil((sqrt(3)+2)*a(n-1))` -/
def P5197315383394616697.Spec : Prop :=
  ∀ n, P5197315383394616697.a n = A077234 n

end A077234

/-! ## A077234.P7258608351200026841

`-round(a(n-1)/(sqrt(3)-2))` with `a(0)=2, a(1)=9`
-/

namespace A077234.P7258608351200026841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  -SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

end

end A077234.P7258608351200026841

namespace A077234

/-- `-round(a(n-1)/(sqrt(3)-2))` -/
def P7258608351200026841.Spec : Prop :=
  ∀ n, P7258608351200026841.a n = A077234 n

end A077234

/-! ## A077234.P672103081709095354

`A077237(Δ[n²])`
-/

namespace A077234.P672103081709095354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077237 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077234.P672103081709095354

namespace A077234

/-- `A077237(Δ[n²])` -/
def P672103081709095354.Spec : Prop :=
  ∀ n, P672103081709095354.a n = A077234 n

end A077234

/-! ## A077234.P1658919130338207073

`A054485(n)+A001075(n)`
-/

namespace A077234.P1658919130338207073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054485 n + A001075 n

end

end A077234.P1658919130338207073

namespace A077234

/-- `A054485(n)+A001075(n)` -/
def P1658919130338207073.Spec : Prop :=
  ∀ n, P1658919130338207073.a n = A077234 n

end A077234

/-! ## A077234.P94415353385461462

`A055845(n)+A001835(n)`
-/

namespace A077234.P94415353385461462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055845 n + A001835 n

end

end A077234.P94415353385461462

namespace A077234

/-- `A055845(n)+A001835(n)` -/
def P94415353385461462.Spec : Prop :=
  ∀ n, P94415353385461462.a n = A077234 n

end A077234

/-! ## A077234.P6993600028951535749

`A231896(n)+A144721(n)`
-/

namespace A077234.P6993600028951535749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231896 n + A144721 n

end

end A077234.P6993600028951535749

namespace A077234

/-- `A231896(n)+A144721(n)` -/
def P6993600028951535749.Spec : Prop :=
  ∀ n, P6993600028951535749.a n = A077234 n

end A077234

/-! ## A077234.P7273784310630824299

`A001834(n)+Δ[A061278(n)]`
-/

namespace A077234.P7273784310630824299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 n + (f1 (n + 1) - f1 n)

end

end A077234.P7273784310630824299

namespace A077234

/-- `A001834(n)+Δ[A061278(n)]` -/
def P7273784310630824299.Spec : Prop :=
  ∀ n, P7273784310630824299.a n = A077234 n

end A077234

/-! ## A077234.P7574147342282111182

`A001834(n)+A001353(n+1)`
-/

namespace A077234.P7574147342282111182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 n + A001353 (n + 1)

end

end A077234.P7574147342282111182

namespace A077234

/-- `A001834(n)+A001353(n+1)` -/
def P7574147342282111182.Spec : Prop :=
  ∀ n, P7574147342282111182.a n = A077234 n

end A077234

/-! ## A077234.P4161181573780489297

`A052530(n)+A001075(n+1)`
-/

namespace A077234.P4161181573780489297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 n + A001075 (n + 1)

end

end A077234.P4161181573780489297

namespace A077234

/-- `A052530(n)+A001075(n+1)` -/
def P4161181573780489297.Spec : Prop :=
  ∀ n, P4161181573780489297.a n = A077234 n

end A077234

/-! ## A077234.P943178925823819649

`A052530(n+1)+A001353(n)`
-/

namespace A077234.P943178925823819649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 (n + 1) + A001353 n

end

end A077234.P943178925823819649

namespace A077234

/-- `A052530(n+1)+A001353(n)` -/
def P943178925823819649.Spec : Prop :=
  ∀ n, P943178925823819649.a n = A077234 n

end A077234

/-! ## A077234.P4266955765089984076

`A054491(n)+A001835(n+1)`
-/

namespace A077234.P4266955765089984076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054491 n + A001835 (n + 1)

end

end A077234.P4266955765089984076

namespace A077234

/-- `A054491(n)+A001835(n+1)` -/
def P4266955765089984076.Spec : Prop :=
  ∀ n, P4266955765089984076.a n = A077234 n

end A077234

/-! ## A077234.P11368564130332180318

`A079935(n+1)+A054491(n)`
-/

namespace A077234.P11368564130332180318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (n + 1) + A054491 n

end

end A077234.P11368564130332180318

namespace A077234

/-- `A079935(n+1)+A054491(n)` -/
def P11368564130332180318.Spec : Prop :=
  ∀ n, P11368564130332180318.a n = A077234 n

end A077234

/-! ## A077234.P11005915692381853333

`A001834(n)-A106707(n+1)`
-/

namespace A077234.P11005915692381853333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 n - A106707 (n + 1)

end

end A077234.P11005915692381853333

namespace A077234

/-- `A001834(n)-A106707(n+1)` -/
def P11005915692381853333.Spec : Prop :=
  ∀ n, P11005915692381853333.a n = A077234 n

end A077234

/-! ## A077234.P2708553456926893089

`A052530(n+1)-A106707(n)`
-/

namespace A077234.P2708553456926893089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 (n + 1) - A106707 n

end

end A077234.P2708553456926893089

namespace A077234

/-- `A052530(n+1)-A106707(n)` -/
def P2708553456926893089.Spec : Prop :=
  ∀ n, P2708553456926893089.a n = A077234 n

end A077234

/-! ## A077234.P10962396489948519554

`A102871(n+1)-A101879(n)`
-/

namespace A077234.P10962396489948519554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 (n + 1) - A101879 n

end

end A077234.P10962396489948519554

namespace A077234

/-- `A102871(n+1)-A101879(n)` -/
def P10962396489948519554.Spec : Prop :=
  ∀ n, P10962396489948519554.a n = A077234 n

end A077234

/-! ## A077234.P11105355501895088221

`A001835(n+2)-A001075(n)`
-/

namespace A077234.P11105355501895088221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (n + 2) - A001075 n

end

end A077234.P11105355501895088221

namespace A077234

/-- `A001835(n+2)-A001075(n)` -/
def P11105355501895088221.Spec : Prop :=
  ∀ n, P11105355501895088221.a n = A077234 n

end A077234

/-! ## A077234.P17637084054889066839

`A079935(n+2)-A001075(n)`
-/

namespace A077234.P17637084054889066839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (n + 2) - A001075 n

end

end A077234.P17637084054889066839

namespace A077234

/-- `A079935(n+2)-A001075(n)` -/
def P17637084054889066839.Spec : Prop :=
  ∀ n, P17637084054889066839.a n = A077234 n

end A077234

/-! ## A077234.P113483104054696631

`A242725(n+2)-A242725(n)`
-/

namespace A077234.P113483104054696631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242725 (n + 2) - A242725 n

end

end A077234.P113483104054696631

namespace A077234

/-- `A242725(n+2)-A242725(n)` -/
def P113483104054696631.Spec : Prop :=
  ∀ n, P113483104054696631.a n = A077234 n

end A077234

/-!
# A077235: Bisection (odd part) of Chebyshev sequence with Diophantine property.

The programs for A077235, the canonical program `A077235.P6251290856030080088` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077235 has offset 0).

The definition of A077235 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077235.P6251290856030080088

`4*a(n-1)-a(n-2)` with `a(0)=5, a(1)=16`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077235

/-- `4*a(n-1)-a(n-2)` -/
def P6251290856030080088.Spec : Prop :=
  ∀ n, P6251290856030080088.a n = A077235 n

theorem P6251290856030080088.correct : P6251290856030080088.Spec := by
  intro n
  simp only [A077235]

end A077235

/-! ## A077235.P12378977514208945612

`ogf((5-4x)/(1-4x+x^2))`
-/

namespace A077235.P12378977514208945612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -4] [1, -4, 1] n

end

end A077235.P12378977514208945612

namespace A077235

/-- `ogf((5-4x)/(1-4x+x^2))` -/
def P12378977514208945612.Spec : Prop :=
  ∀ n, P12378977514208945612.a n = A077235 n

end A077235

/-! ## A077235.P5449007582851437165

`floor((sqrt(3)+2)*a(n-1))` with `a(0)=5, a(1)=16`
-/

namespace A077235.P5449007582851437165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 16] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋

end

end A077235.P5449007582851437165

namespace A077235

/-- `floor((sqrt(3)+2)*a(n-1))` -/
def P5449007582851437165.Spec : Prop :=
  ∀ n, P5449007582851437165.a n = A077235 n

end A077235

/-! ## A077235.P2363663064822381177

`a(n-1)/(1/2)²-a(n-2)` with `a(0)=5, a(1)=16`
-/

namespace A077235.P2363663064822381177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5, 16] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - a (n - 2)

end

end A077235.P2363663064822381177

namespace A077235

/-- `a(n-1)/(1/2)²-a(n-2)` -/
def P2363663064822381177.Spec : Prop :=
  ∀ n, P2363663064822381177.a n = (A077235 n : ℚ)

end A077235

/-! ## A077235.P2970487553104086673

`A077238(Δ[n²])`
-/

namespace A077235.P2970487553104086673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077238 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077235.P2970487553104086673

namespace A077235

/-- `A077238(Δ[n²])` -/
def P2970487553104086673.Spec : Prop :=
  ∀ n, P2970487553104086673.a n = A077235 n

end A077235

/-! ## A077235.P11364733240680908391

`A010905(n)+A001835(n)`
-/

namespace A077235.P11364733240680908391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010905 n + A001835 n

end

end A077235.P11364733240680908391

namespace A077235

/-- `A010905(n)+A001835(n)` -/
def P11364733240680908391.Spec : Prop :=
  ∀ n, P11364733240680908391.a n = A077235 n

end A077235

/-! ## A077235.P1924867591351631805

`A077236(n)+A001834(n)`
-/

namespace A077235.P1924867591351631805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077236 n + A001834 n

end

end A077235.P1924867591351631805

namespace A077235

/-- `A077236(n)+A001834(n)` -/
def P1924867591351631805.Spec : Prop :=
  ∀ n, P1924867591351631805.a n = A077235 n

end A077235

/-! ## A077235.P9347630848389754714

`A057819(n)+A054485(n)`
-/

namespace A077235.P9347630848389754714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057819 n + A054485 n

end

end A077235.P9347630848389754714

namespace A077235

/-- `A057819(n)+A054485(n)` -/
def P9347630848389754714.Spec : Prop :=
  ∀ n, P9347630848389754714.a n = A077235 n

end A077235

/-! ## A077235.P2191410933361103925

`A162563(n)+A005320(n)`
-/

namespace A077235.P2191410933361103925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162563 n + A005320 n

end

end A077235.P2191410933361103925

namespace A077235

/-- `A162563(n)+A005320(n)` -/
def P2191410933361103925.Spec : Prop :=
  ∀ n, P2191410933361103925.a n = A077235 n

end A077235

/-! ## A077235.P15295782313523146386

`A003500(n)+∑[A082841(n)]`
-/

namespace A077235.P15295782313523146386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077235.P15295782313523146386

namespace A077235

/-- `A003500(n)+∑[A082841(n)]` -/
def P15295782313523146386.Spec : Prop :=
  ∀ n, P15295782313523146386.a n = A077235 n

end A077235

/-! ## A077235.P13526658505935503806

`A001075(n)+Δ[A001834(n)]`
-/

namespace A077235.P13526658505935503806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n + (f1 (n + 1) - f1 n)

end

end A077235.P13526658505935503806

namespace A077235

/-- `A001075(n)+Δ[A001834(n)]` -/
def P13526658505935503806.Spec : Prop :=
  ∀ n, P13526658505935503806.a n = A077235 n

end A077235

/-! ## A077235.P14117436328934705423

`A082841(n)+Δ[A001571(n)]`
-/

namespace A077235.P14117436328934705423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082841 n + (f1 (n + 1) - f1 n)

end

end A077235.P14117436328934705423

namespace A077235

/-- `A082841(n)+Δ[A001571(n)]` -/
def P14117436328934705423.Spec : Prop :=
  ∀ n, P14117436328934705423.a n = A077235 n

end A077235

/-! ## A077235.P2264824231631231516

`A082841(n)+Δ[A082840(n)]`
-/

namespace A077235.P2264824231631231516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082841 n + (f1 (n + 1) - f1 n)

end

end A077235.P2264824231631231516

namespace A077235

/-- `A082841(n)+Δ[A082840(n)]` -/
def P2264824231631231516.Spec : Prop :=
  ∀ n, P2264824231631231516.a n = A077235 n

end A077235

/-! ## A077235.P13680883580497973333

`A082841(n)+Δ[A102871(n)]`
-/

namespace A077235.P13680883580497973333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082841 n + (f1 (n + 1) - f1 n)

end

end A077235.P13680883580497973333

namespace A077235

/-- `A082841(n)+Δ[A102871(n)]` -/
def P13680883580497973333.Spec : Prop :=
  ∀ n, P13680883580497973333.a n = A077235 n

end A077235

/-! ## A077235.P12974940113047593785

`Δ[A077234(n)]-A077234(n)`
-/

namespace A077235.P12974940113047593785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077234 n

end

end A077235.P12974940113047593785

namespace A077235

/-- `Δ[A077234(n)]-A077234(n)` -/
def P12974940113047593785.Spec : Prop :=
  ∀ n, P12974940113047593785.a n = A077235 n

end A077235

/-! ## A077235.P11070651538165478685

`A003500(n+1)+A001075(n)`
-/

namespace A077235.P11070651538165478685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 (n + 1) + A001075 n

end

end A077235.P11070651538165478685

namespace A077235

/-- `A003500(n+1)+A001075(n)` -/
def P11070651538165478685.Spec : Prop :=
  ∀ n, P11070651538165478685.a n = A077235 n

end A077235

/-! ## A077235.P12679696910463688246

`A005320(n+1)+A003500(n)`
-/

namespace A077235.P12679696910463688246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005320 (n + 1) + A003500 n

end

end A077235.P12679696910463688246

namespace A077235

/-- `A005320(n+1)+A003500(n)` -/
def P12679696910463688246.Spec : Prop :=
  ∀ n, P12679696910463688246.a n = A077235 n

end A077235

/-! ## A077235.P4271766935556908307

`A082841(n)+A001075(n+1)`
-/

namespace A077235.P4271766935556908307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082841 n + A001075 (n + 1)

end

end A077235.P4271766935556908307

namespace A077235

/-- `A082841(n)+A001075(n+1)` -/
def P4271766935556908307.Spec : Prop :=
  ∀ n, P4271766935556908307.a n = A077235 n

end A077235

/-! ## A077235.P8073715218729273995

`A121401(n)+A016064(n+1)`
-/

namespace A077235.P8073715218729273995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121401 n + A016064 (n + 1)

end

end A077235.P8073715218729273995

namespace A077235

/-- `A121401(n)+A016064(n+1)` -/
def P8073715218729273995.Spec : Prop :=
  ∀ n, P8073715218729273995.a n = A077235 n

end A077235

/-! ## A077235.P17185335528710535668

`A335025(n+1)+A092184(n)`
-/

namespace A077235.P17185335528710535668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335025 (n + 1) + A092184 n

end

end A077235.P17185335528710535668

namespace A077235

/-- `A335025(n+1)+A092184(n)` -/
def P17185335528710535668.Spec : Prop :=
  ∀ n, P17185335528710535668.a n = A077235 n

end A077235

/-!
# A077236: a(n) = 4*a(n-1) - a(n-2) with a(0) = 4 and a(1) = 11.

The programs for A077236, the canonical program `A077236.P12637168139624556619` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077236 has offset 0).

The definition of A077236 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A077236.P12637168139624556619`, by `A077236.P12637168139624556619.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077236.P12637168139624556619

`4*a(n-1)-a(n-2)` with `a(0)=4, a(1)=11`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077236

/-- `4*a(n-1)-a(n-2)` -/
def P12637168139624556619.Spec : Prop :=
  ∀ n, P12637168139624556619.a n = A077236 n

theorem P12637168139624556619.correct : P12637168139624556619.Spec := by
  intro n
  simp only [A077236]

end A077236

/-! ## A077236.P17479098752081030230

`ogf((4-5x)/(1-4x+x^2))`
-/

namespace A077236.P17479098752081030230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -5] [1, -4, 1] n

end

end A077236.P17479098752081030230

namespace A077236

/-- `ogf((4-5x)/(1-4x+x^2))` -/
def P17479098752081030230.Spec : Prop :=
  ∀ n, P17479098752081030230.a n = A077236 n

end A077236

/-! ## A077236.P4476359214686493204

`A077238(2*n)`
-/

namespace A077236.P4476359214686493204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077238 (2 * n)

end

end A077236.P4476359214686493204

namespace A077236

/-- `A077238(2*n)` -/
def P4476359214686493204.Spec : Prop :=
  ∀ n, P4476359214686493204.a n = A077236 n

end A077236

/-! ## A077236.P151487751981447617

`record[A077238(and(n, n+1))]`
-/

namespace A077236.P151487751981447617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077238 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077236.P151487751981447617

namespace A077236

/-- `record[A077238(and(n, n+1))]` -/
def P151487751981447617.Spec : Prop :=
  ∀ n, P151487751981447617.a n = A077236 n

end A077236

/-! ## A077236.P15595086437201663064

`record[gcd(val(n+1, 2), A077238(n))]`
-/

namespace A077236.P15595086437201663064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A077238 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077236.P15595086437201663064

namespace A077236

/-- `record[gcd(val(n+1, 2), A077238(n))]` -/
def P15595086437201663064.Spec : Prop :=
  ∀ n, (P15595086437201663064.a n : ℤ) = A077236 n

end A077236

/-! ## A077236.P9943385766088731846

`A082841(n)+A001075(n)`
-/

namespace A077236.P9943385766088731846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082841 n + A001075 n

end

end A077236.P9943385766088731846

namespace A077236

/-- `A082841(n)+A001075(n)` -/
def P9943385766088731846.Spec : Prop :=
  ∀ n, P9943385766088731846.a n = A077236 n

end A077236

/-! ## A077236.P6331867452070989212

`A057819(n)+A052530(n)`
-/

namespace A077236.P6331867452070989212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057819 n + A052530 n

end

end A077236.P6331867452070989212

namespace A077236

/-- `A057819(n)+A052530(n)` -/
def P6331867452070989212.Spec : Prop :=
  ∀ n, P6331867452070989212.a n = A077236 n

end A077236

/-! ## A077236.P2951734496755020648

`A102206(n)+A016064(n)`
-/

namespace A077236.P2951734496755020648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102206 n + A016064 n

end

end A077236.P2951734496755020648

namespace A077236

/-- `A102206(n)+A016064(n)` -/
def P2951734496755020648.Spec : Prop :=
  ∀ n, P2951734496755020648.a n = A077236 n

end A077236

/-! ## A077236.P10865895900249191124

`A003500(n)+Δ[A001571(n)]`
-/

namespace A077236.P10865895900249191124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 n + (f1 (n + 1) - f1 n)

end

end A077236.P10865895900249191124

namespace A077236

/-- `A003500(n)+Δ[A001571(n)]` -/
def P10865895900249191124.Spec : Prop :=
  ∀ n, P10865895900249191124.a n = A077236 n

end A077236

/-! ## A077236.P8864594675072664047

`A003500(n)+Δ[A082840(n)]`
-/

namespace A077236.P8864594675072664047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 n + (f1 (n + 1) - f1 n)

end

end A077236.P8864594675072664047

namespace A077236

/-- `A003500(n)+Δ[A082840(n)]` -/
def P8864594675072664047.Spec : Prop :=
  ∀ n, P8864594675072664047.a n = A077236 n

end A077236

/-! ## A077236.P13776786650700627128

`A003500(n)+Δ[A102871(n)]`
-/

namespace A077236.P13776786650700627128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 n + (f1 (n + 1) - f1 n)

end

end A077236.P13776786650700627128

namespace A077236

/-- `A003500(n)+Δ[A102871(n)]` -/
def P13776786650700627128.Spec : Prop :=
  ∀ n, P13776786650700627128.a n = A077236 n

end A077236

/-! ## A077236.P17830796096096155745

`A003500(n)+A001075(n+1)`
-/

namespace A077236.P17830796096096155745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 n + A001075 (n + 1)

end

end A077236.P17830796096096155745

namespace A077236

/-- `A003500(n)+A001075(n+1)` -/
def P17830796096096155745.Spec : Prop :=
  ∀ n, P17830796096096155745.a n = A077236 n

end A077236

/-! ## A077236.P12504905790285107869

`A121401(n+1)+A016064(n)`
-/

namespace A077236.P12504905790285107869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121401 (n + 1) + A016064 n

end

end A077236.P12504905790285107869

namespace A077236

/-- `A121401(n+1)+A016064(n)` -/
def P12504905790285107869.Spec : Prop :=
  ∀ n, P12504905790285107869.a n = A077236 n

end A077236

/-! ## A077236.P14086837491982316589

`A151961(n+1)+A001834(n)`
-/

namespace A077236.P14086837491982316589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151961 (n + 1) + A001834 n

end

end A077236.P14086837491982316589

namespace A077236

/-- `A151961(n+1)+A001834(n)` -/
def P14086837491982316589.Spec : Prop :=
  ∀ n, P14086837491982316589.a n = A077236 n

end A077236

/-! ## A077236.P947891190600064122

`A082841(n)+A092184(n)+1`
-/

namespace A077236.P947891190600064122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082841 n + (A092184 n + 1)

end

end A077236.P947891190600064122

namespace A077236

/-- `A082841(n)+A092184(n)+1` -/
def P947891190600064122.Spec : Prop :=
  ∀ n, P947891190600064122.a n = A077236 n

end A077236

/-! ## A077236.P963004862831027887

`A144720(n)+A052530(n+1)`
-/

namespace A077236.P963004862831027887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144720 n + A052530 (n + 1)

end

end A077236.P963004862831027887

namespace A077236

/-- `A144720(n)+A052530(n+1)` -/
def P963004862831027887.Spec : Prop :=
  ∀ n, P963004862831027887.a n = A077236 n

end A077236

/-! ## A077236.P10956622067579612469

`A005320(n)+2*A003500(n)`
-/

namespace A077236.P10956622067579612469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005320 n + 2 * A003500 n

end

end A077236.P10956622067579612469

namespace A077236

/-- `A005320(n)+2*A003500(n)` -/
def P10956622067579612469.Spec : Prop :=
  ∀ n, P10956622067579612469.a n = A077236 n

end A077236

/-! ## A077236.P14127619915018959116

`A077234(n)+2*A001835(n)`
-/

namespace A077236.P14127619915018959116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077234 n + 2 * A001835 n

end

end A077236.P14127619915018959116

namespace A077236

/-- `A077234(n)+2*A001835(n)` -/
def P14127619915018959116.Spec : Prop :=
  ∀ n, P14127619915018959116.a n = A077236 n

end A077236

/-! ## A077236.P18152637778418252907

`A083336(2*n)+A001075(n)`
-/

namespace A077236.P18152637778418252907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083336 (2 * n) + A001075 n

end

end A077236.P18152637778418252907

namespace A077236

/-- `A083336(2*n)+A001075(n)` -/
def P18152637778418252907.Spec : Prop :=
  ∀ n, P18152637778418252907.a n = A077236 n

end A077236

/-! ## A077236.P519781949536718200

`A082841(n)+A002531(2*n)`
-/

namespace A077236.P519781949536718200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082841 n + A002531 (2 * n)

end

end A077236.P519781949536718200

namespace A077236

/-- `A082841(n)+A002531(2*n)` -/
def P519781949536718200.Spec : Prop :=
  ∀ n, P519781949536718200.a n = A077236 n

end A077236

/-!
# A077237: Combined Diophantine Chebyshev sequences A054491 and A077234.

The programs for A077237, the canonical program `A077237.P4194021742550917797` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077237 has offset 0).

The definition of A077237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077237.P4194021742550917797

`4*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=9`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077237

/-- `4*a(n-2)-a(n-4)` -/
def P4194021742550917797.Spec : Prop :=
  ∀ n, P4194021742550917797.a n = A077237 n

theorem P4194021742550917797.correct : P4194021742550917797.Spec := by
  intro n
  simp only [A077237]

end A077237

/-! ## A077237.P1831082047063552846

`ogf((1+2x+2x^2+x^3)/(1-4x^2+x^4))`
-/

namespace A077237.P1831082047063552846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 1] [1, 0, -4, 0, 1] n

end

end A077237.P1831082047063552846

namespace A077237

/-- `ogf((1+2x+2x^2+x^3)/(1-4x^2+x^4))` -/
def P1831082047063552846.Spec : Prop :=
  ∀ n, P1831082047063552846.a n = A077237 n

end A077237

/-! ## A077237.P3233379419151929456

`A005246(n+3)-A005246(n)`
-/

namespace A077237.P3233379419151929456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (n + 3) - A005246 n

end

end A077237.P3233379419151929456

namespace A077237

/-- `A005246(n+3)-A005246(n)` -/
def P3233379419151929456.Spec : Prop :=
  ∀ n, P3233379419151929456.a n = A077237 n

end A077237

/-! ## A077237.P9598857226162971288

`A259592(n)+A052530(A004526(n))`
-/

namespace A077237.P9598857226162971288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259592 n + A052530 (A004526 n).toNat

end

end A077237.P9598857226162971288

namespace A077237

/-- `A259592(n)+A052530(A004526(n))` -/
def P9598857226162971288.Spec : Prop :=
  ∀ n, P9598857226162971288.a n = A077237 n

end A077237

/-! ## A077237.P7223200389501658465

`∪[A054491(n), A077234(n)]`
-/

namespace A077237.P7223200389501658465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054491 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077234 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077237.P7223200389501658465

namespace A077237

/-- `∪[A054491(n), A077234(n)]` -/
def P7223200389501658465.Spec : Prop :=
  ∀ n, (P7223200389501658465.a n : ℤ) = A077237 n

end A077237

/-! ## A077237.P17710394004343604164

`A131887(n+1)-A237250(n+1)`
-/

namespace A077237.P17710394004343604164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131887 (n + 1) - A237250 (n + 1)

end

end A077237.P17710394004343604164

namespace A077237

/-- `A131887(n+1)-A237250(n+1)` -/
def P17710394004343604164.Spec : Prop :=
  ∀ n, P17710394004343604164.a n = A077237 n

end A077237

/-! ## A077237.P3024056810108062298

`Δ[A237250(n+1)]+Δ[A005246(n)]`
-/

namespace A077237.P3024056810108062298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A077237.P3024056810108062298

namespace A077237

/-- `Δ[A237250(n+1)]+Δ[A005246(n)]` -/
def P3024056810108062298.Spec : Prop :=
  ∀ n, P3024056810108062298.a n = A077237 n

end A077237

/-! ## A077237.P13154144183556371708

`Δ[A237250(n+1)+A005246(n)]`
-/

namespace A077237.P13154144183556371708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237250 (n + 1) + A005246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077237.P13154144183556371708

namespace A077237

/-- `Δ[A237250(n+1)+A005246(n)]` -/
def P13154144183556371708.Spec : Prop :=
  ∀ n, P13154144183556371708.a n = A077237 n

end A077237

/-! ## A077237.P16176867550177655133

`A002530(n+1)+A272073(n+3)-A143643(n+2)`
-/

namespace A077237.P16176867550177655133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (n + 1) + (A272073 (n + 3) - A143643 (n + 2))

end

end A077237.P16176867550177655133

namespace A077237

/-- `A002530(n+1)+A272073(n+3)-A143643(n+2)` -/
def P16176867550177655133.Spec : Prop :=
  ∀ n, P16176867550177655133.a n = A077237 n

end A077237

/-! ## A077237.P13978574315484619544

`∑[round(A144536(n)/A002531(n))]`
-/

namespace A077237.P13978574315484619544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A144536 n : ℚ) / (A002531 n : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077237.P13978574315484619544

namespace A077237

/-- `∑[round(A144536(n)/A002531(n))]` -/
def P13978574315484619544.Spec : Prop :=
  ∀ n, P13978574315484619544.a n = A077237 n

end A077237

/-! ## A077237.P16447533300841512859

`∑[A005246(n+1)*A117277(A020639(n+1)²)]`
-/

namespace A077237.P16447533300841512859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (n + 1) * A117277 (A020639 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077237.P16447533300841512859

namespace A077237

/-- `∑[A005246(n+1)*A117277(A020639(n+1)²)]` -/
def P16447533300841512859.Spec : Prop :=
  ∀ n, P16447533300841512859.a n = A077237 n

end A077237

/-!
# A077238: Combined Diophantine Chebyshev sequences A077236 and A077235.

The programs for A077238, the canonical program `A077238.P5403254022117692508` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077238 has offset 0).

The definition of A077238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077238.P5403254022117692508

`4*a(n-2)-a(n-4)` with `a(0)=4, a(1)=5, a(2)=11, a(3)=16`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077238

/-- `4*a(n-2)-a(n-4)` -/
def P5403254022117692508.Spec : Prop :=
  ∀ n, P5403254022117692508.a n = A077238 n

theorem P5403254022117692508.correct : P5403254022117692508.Spec := by
  intro n
  simp only [A077238]

end A077238

/-! ## A077238.P11192555153969306550

`ogf((4+5x-5x^2-4x^3)/(1-4x^2+x^4))`
-/

namespace A077238.P11192555153969306550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 5, -5, -4] [1, 0, -4, 0, 1] n

end

end A077238.P11192555153969306550

namespace A077238

/-- `ogf((4+5x-5x^2-4x^3)/(1-4x^2+x^4))` -/
def P11192555153969306550.Spec : Prop :=
  ∀ n, P11192555153969306550.a n = A077238 n

end A077238

/-! ## A077238.P6073847145336582115

`A002531(n+1)+3*A005246(n+1)`
-/

namespace A077238.P6073847145336582115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (n + 1) + 3 * A005246 (n + 1)

end

end A077238.P6073847145336582115

namespace A077238

/-- `A002531(n+1)+3*A005246(n+1)` -/
def P6073847145336582115.Spec : Prop :=
  ∀ n, P6073847145336582115.a n = A077238 n

end A077238

/-! ## A077238.P16105151670516104202

`A237250(n+1)+A108412(n)+A005246(n)`
-/

namespace A077238.P16105151670516104202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237250 (n + 1) + (A108412 n + A005246 n)

end

end A077238.P16105151670516104202

namespace A077238

/-- `A237250(n+1)+A108412(n)+A005246(n)` -/
def P16105151670516104202.Spec : Prop :=
  ∀ n, P16105151670516104202.a n = A077238 n

end A077238

/-! ## A077238.P13261660113280172095

`A005246(n+1)+A048788(n+2)+A005246(n)`
-/

namespace A077238.P13261660113280172095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (n + 1) + (A048788 (n + 2) + A005246 n)

end

end A077238.P13261660113280172095

namespace A077238

/-- `A005246(n+1)+A048788(n+2)+A005246(n)` -/
def P13261660113280172095.Spec : Prop :=
  ∀ n, P13261660113280172095.a n = A077238 n

end A077238

/-! ## A077238.P16447553707050490889

`∪[A077235(n), A077236(n)]`
-/

namespace A077238.P16447553707050490889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077236 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077238.P16447553707050490889

namespace A077238

/-- `∪[A077235(n), A077236(n)]` -/
def P16447553707050490889.Spec : Prop :=
  ∀ n, (P16447553707050490889.a n : ℤ) = A077238 n

end A077238

/-! ## A077238.P4917871530137843907

`A077237(n+2)-2*A077237(n)`
-/

namespace A077238.P4917871530137843907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077237 (n + 2) - 2 * A077237 n

end

end A077238.P4917871530137843907

namespace A077238

/-- `A077237(n+2)-2*A077237(n)` -/
def P4917871530137843907.Spec : Prop :=
  ∀ n, P4917871530137843907.a n = A077238 n

end A077238

/-! ## A077238.P8531086945012053488

`A143643(n+1)+A143643(n+2)-A272073(n+2)`
-/

namespace A077238.P8531086945012053488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143643 (n + 1) + (A143643 (n + 2) - A272073 (n + 2))

end

end A077238.P8531086945012053488

namespace A077238

/-- `A143643(n+1)+A143643(n+2)-A272073(n+2)` -/
def P8531086945012053488.Spec : Prop :=
  ∀ n, P8531086945012053488.a n = A077238 n

end A077238

/-!
# A077239: Bisection (odd part) of Chebyshev sequence with Diophantine property.

The programs for A077239, the canonical program `A077239.P419347365333785728` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077239 has offset 0).

The definition of A077239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077239.P419347365333785728

`6*a(n-1)-a(n-2)` with `a(0)=7, a(1)=37`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077239

/-- `6*a(n-1)-a(n-2)` -/
def P419347365333785728.Spec : Prop :=
  ∀ n, P419347365333785728.a n = A077239 n

theorem P419347365333785728.correct : P419347365333785728.Spec := by
  intro n
  simp only [A077239]

end A077239

/-! ## A077239.P9946175774595487343

`ogf((7-5x)/(1-6x+x^2))`
-/

namespace A077239.P9946175774595487343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -5] [1, -6, 1] n

end

end A077239.P9946175774595487343

namespace A077239

/-- `ogf((7-5x)/(1-6x+x^2))` -/
def P9946175774595487343.Spec : Prop :=
  ∀ n, P9946175774595487343.a n = A077239 n

end A077239

/-! ## A077239.P6535104857545873130

`record[lcm(6, a(n-1))-a(n-2)]` with `a(0)=7, a(1)=5, a(2)=7`
-/

namespace A077239.P6535104857545873130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 5, 7] fun n f1 =>
  (Int.lcm 6 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077239.P6535104857545873130

namespace A077239

/-- `record[lcm(6, a(n-1))-a(n-2)]` -/
def P6535104857545873130.Spec : Prop :=
  ∀ n, P6535104857545873130.a n = A077239 n

end A077239

/-! ## A077239.P6853579956695621364

`record[a(n-2)-a(n-1)-a(n-1)]` with `a(0)=7, a(1)=5, a(2)=-1`
-/

namespace A077239.P6853579956695621364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 5, -1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077239.P6853579956695621364

namespace A077239

/-- `record[a(n-2)-a(n-1)-a(n-1)]` -/
def P6853579956695621364.Spec : Prop :=
  ∀ n, P6853579956695621364.a n = A077239 n

end A077239

/-! ## A077239.P14717316831618189684

`A048694(Δ[n²])`
-/

namespace A077239.P14717316831618189684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048694 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077239.P14717316831618189684

namespace A077239

/-- `A048694(Δ[n²])` -/
def P14717316831618189684.Spec : Prop :=
  ∀ n, P14717316831618189684.a n = A077239 n

end A077239

/-! ## A077239.P6669410759184863164

`A077242(Δ[n²])`
-/

namespace A077239.P6669410759184863164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077242 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077239.P6669410759184863164

namespace A077239

/-- `A077242(Δ[n²])` -/
def P6669410759184863164.Spec : Prop :=
  ∀ n, P6669410759184863164.a n = A077239 n

end A077239

/-! ## A077239.P3389708882969600518

`Δ[A164541(n)/2]`
-/

namespace A077239.P3389708882969600518
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164541 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077239.P3389708882969600518

namespace A077239

/-- `Δ[A164541(n)/2]` -/
def P3389708882969600518.Spec : Prop :=
  ∀ n, P3389708882969600518.a n = (A077239 n : ℚ)

end A077239

/-! ## A077239.P5289781770712152304

`Δ[record[∑[A249577(n)]]]`
-/

namespace A077239.P5289781770712152304
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249577 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077239.P5289781770712152304

namespace A077239

/-- `Δ[record[∑[A249577(n)]]]` -/
def P5289781770712152304.Spec : Prop :=
  ∀ n, P5289781770712152304.a n = A077239 n

end A077239

/-! ## A077239.P11944760172146300605

`Δ[A048694(2*n)/2]`
-/

namespace A077239.P11944760172146300605
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048694 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077239.P11944760172146300605

namespace A077239

/-- `Δ[A048694(2*n)/2]` -/
def P11944760172146300605.Spec : Prop :=
  ∀ n, P11944760172146300605.a n = (A077239 n : ℚ)

end A077239

/-! ## A077239.P3023148042748773726

`or(1, A048694(2*n+1))`
-/

namespace A077239.P3023148042748773726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A048694 (2 * n + 1))

end

end A077239.P3023148042748773726

namespace A077239

/-- `or(1, A048694(2*n+1))` -/
def P3023148042748773726.Spec : Prop :=
  ∀ n, P3023148042748773726.a n = A077239 n

end A077239

/-! ## A077239.P16704296486468039180

`Δ[A241976(n+1)]-floor((sqrt(2)+1)^(2*n+1))`
-/

namespace A077239.P16704296486468039180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ⌊(Real.sqrt (2 : ℝ) + 1) ^ (2 * n + 1)⌋

end

end A077239.P16704296486468039180

namespace A077239

/-- `Δ[A241976(n+1)]-floor((sqrt(2)+1)^(2*n+1))` -/
def P16704296486468039180.Spec : Prop :=
  ∀ n, P16704296486468039180.a n = A077239 n

end A077239

/-! ## A077239.P7655807818916195067

`A155465(n)-A155464(n)`
-/

namespace A077239.P7655807818916195067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155465 n - A155464 n

end

end A077239.P7655807818916195067

namespace A077239

/-- `A155465(n)-A155464(n)` -/
def P7655807818916195067.Spec : Prop :=
  ∀ n, P7655807818916195067.a n = A077239 n

end A077239

/-! ## A077239.P3782526288341415177

`∩[A048694(n), A077242(n)]`
-/

namespace A077239.P3782526288341415177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048694 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077242 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077239.P3782526288341415177

namespace A077239

/-- `∩[A048694(n), A077242(n)]` -/
def P3782526288341415177.Spec : Prop :=
  ∀ n, (P3782526288341415177.a n : ℤ) = A077239 n

end A077239

/-! ## A077239.P5519232191968269483

`A001541(n)+Δ[A002315(n)]`
-/

namespace A077239.P5519232191968269483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n + (f1 (n + 1) - f1 n)

end

end A077239.P5519232191968269483

namespace A077239

/-- `A001541(n)+Δ[A002315(n)]` -/
def P5519232191968269483.Spec : Prop :=
  ∀ n, P5519232191968269483.a n = A077239 n

end A077239

/-! ## A077239.P3141748547358617710

`Δ[A075848(n)+A001108(n)]`
-/

namespace A077239.P3141748547358617710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075848 n + A001108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077239.P3141748547358617710

namespace A077239

/-- `Δ[A075848(n)+A001108(n)]` -/
def P3141748547358617710.Spec : Prop :=
  ∀ n, P3141748547358617710.a n = A077239 n

end A077239

/-! ## A077239.P15797496885470127120

`A002315(n)+Δ[A075848(n)]`
-/

namespace A077239.P15797496885470127120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n + (f1 (n + 1) - f1 n)

end

end A077239.P15797496885470127120

namespace A077239

/-- `A002315(n)+Δ[A075848(n)]` -/
def P15797496885470127120.Spec : Prop :=
  ∀ n, P15797496885470127120.a n = A077239 n

end A077239

/-! ## A077239.P10640172020455118854

`A077240(n)+Δ[A001541(n)]`
-/

namespace A077239.P10640172020455118854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077240 n + (f1 (n + 1) - f1 n)

end

end A077239.P10640172020455118854

namespace A077239

/-- `A077240(n)+Δ[A001541(n)]` -/
def P10640172020455118854.Spec : Prop :=
  ∀ n, P10640172020455118854.a n = A077239 n

end A077239

/-! ## A077239.P5205261459180571113

`Δ[A182435(n)+A002315(n)]`
-/

namespace A077239.P5205261459180571113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182435 n + A002315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077239.P5205261459180571113

namespace A077239

/-- `Δ[A182435(n)+A002315(n)]` -/
def P5205261459180571113.Spec : Prop :=
  ∀ n, P5205261459180571113.a n = A077239 n

end A077239

/-! ## A077239.P3764956604720401956

`Δ[A038761(n)-A001108(n)]`
-/

namespace A077239.P3764956604720401956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038761 n - A001108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077239.P3764956604720401956

namespace A077239

/-- `Δ[A038761(n)-A001108(n)]` -/
def P3764956604720401956.Spec : Prop :=
  ∀ n, P3764956604720401956.a n = A077239 n

end A077239

/-! ## A077239.P15243327501053387576

`Δ[A038761(n)]-A002315(n)`
-/

namespace A077239.P15243327501053387576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002315 n

end

end A077239.P15243327501053387576

namespace A077239

/-- `Δ[A038761(n)]-A002315(n)` -/
def P15243327501053387576.Spec : Prop :=
  ∀ n, P15243327501053387576.a n = A077239 n

end A077239

/-!
# A077240: Bisection (even part) of Chebyshev sequence with Diophantine property.

The programs for A077240, the canonical program `A077240.P9403546108475420129` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077240 has offset 0).

The definition of A077240 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077240.P9403546108475420129

`6*a(n-1)-a(n-2)` with `a(0)=5, a(1)=23`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077240

/-- `6*a(n-1)-a(n-2)` -/
def P9403546108475420129.Spec : Prop :=
  ∀ n, P9403546108475420129.a n = A077240 n

theorem P9403546108475420129.correct : P9403546108475420129.Spec := by
  intro n
  simp only [A077240]

end A077240

/-! ## A077240.P1278057903682585450

`ogf((5-7x)/(1-6x+x^2))`
-/

namespace A077240.P1278057903682585450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -7] [1, -6, 1] n

end

end A077240.P1278057903682585450

namespace A077240

/-- `ogf((5-7x)/(1-6x+x^2))` -/
def P1278057903682585450.Spec : Prop :=
  ∀ n, P1278057903682585450.a n = A077240 n

end A077240

/-! ## A077240.P10156573565931950092

`record[a(n-2)-a(n-1)-a(n-1)]` with `a(0)=5, a(1)=1, a(2)=5`
-/

namespace A077240.P10156573565931950092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 5] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077240.P10156573565931950092

namespace A077240

/-- `record[a(n-2)-a(n-1)-a(n-1)]` -/
def P10156573565931950092.Spec : Prop :=
  ∀ n, P10156573565931950092.a n = A077240 n

end A077240

/-! ## A077240.P4706016234202865376

`A077242(2*n)`
-/

namespace A077240.P4706016234202865376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077242 (2 * n)

end

end A077240.P4706016234202865376

namespace A077240

/-- `A077242(2*n)` -/
def P4706016234202865376.Spec : Prop :=
  ∀ n, P4706016234202865376.a n = A077240 n

end A077240

/-! ## A077240.P8880820068669254263

`A163607(2*n)`
-/

namespace A077240.P8880820068669254263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163607 (2 * n)

end

end A077240.P8880820068669254263

namespace A077240

/-- `A163607(2*n)` -/
def P8880820068669254263.Spec : Prop :=
  ∀ n, P8880820068669254263.a n = A077240 n

end A077240

/-! ## A077240.P14739824066635273484

`∩[A077242(n), A163607(n)]`
-/

namespace A077240.P14739824066635273484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077242 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163607 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077240.P14739824066635273484

namespace A077240

/-- `∩[A077242(n), A163607(n)]` -/
def P14739824066635273484.Spec : Prop :=
  ∀ n, (P14739824066635273484.a n : ℤ) = A077240 n

end A077240

/-! ## A077240.P7795650100761286803

`A001541(n)+Δ[A005319(n)]`
-/

namespace A077240.P7795650100761286803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n + (f1 (n + 1) - f1 n)

end

end A077240.P7795650100761286803

namespace A077240

/-- `A001541(n)+Δ[A005319(n)]` -/
def P7795650100761286803.Spec : Prop :=
  ∀ n, P7795650100761286803.a n = A077240 n

end A077240

/-! ## A077240.P741911206273262286

`Δ[A002315(n)]-A054490(n)`
-/

namespace A077240.P741911206273262286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A054490 n

end

end A077240.P741911206273262286

namespace A077240

/-- `Δ[A002315(n)]-A054490(n)` -/
def P741911206273262286.Spec : Prop :=
  ∀ n, P741911206273262286.a n = A077240 n

end A077240

/-! ## A077240.P16403423073322175209

`Δ[A075848(n)-A001108(n)]`
-/

namespace A077240.P16403423073322175209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075848 n - A001108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077240.P16403423073322175209

namespace A077240

/-- `Δ[A075848(n)-A001108(n)]` -/
def P16403423073322175209.Spec : Prop :=
  ∀ n, P16403423073322175209.a n = A077240 n

end A077240

/-! ## A077240.P11848086805830293135

`Δ[A075848(n)]-A002315(n)`
-/

namespace A077240.P11848086805830293135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002315 n

end

end A077240.P11848086805830293135

namespace A077240

/-- `Δ[A075848(n)]-A002315(n)` -/
def P11848086805830293135.Spec : Prop :=
  ∀ n, P11848086805830293135.a n = A077240 n

end A077240

/-! ## A077240.P3566351317886731440

`Δ[A038761(n)-A072221(n)]`
-/

namespace A077240.P3566351317886731440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038761 n - A072221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077240.P3566351317886731440

namespace A077240

/-- `Δ[A038761(n)-A072221(n)]` -/
def P3566351317886731440.Spec : Prop :=
  ∀ n, P3566351317886731440.a n = A077240 n

end A077240

/-! ## A077240.P10152989326795377993

`A275795(n)-Δ[A002315(n)]`
-/

namespace A077240.P10152989326795377993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275795 n - (f1 (n + 1) - f1 n)

end

end A077240.P10152989326795377993

namespace A077240

/-- `A275795(n)-Δ[A002315(n)]` -/
def P10152989326795377993.Spec : Prop :=
  ∀ n, P10152989326795377993.a n = A077240 n

end A077240

/-! ## A077240.P6185945594206855984

`A003499(n)+A001541(n+1)`
-/

namespace A077240.P6185945594206855984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003499 n + A001541 (n + 1)

end

end A077240.P6185945594206855984

namespace A077240

/-- `A003499(n)+A001541(n+1)` -/
def P6185945594206855984.Spec : Prop :=
  ∀ n, P6185945594206855984.a n = A077240 n

end A077240

/-! ## A077240.P17204430537117966521

`A077445(n+1)+A001541(n)`
-/

namespace A077240.P17204430537117966521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077445 (n + 1) + A001541 n

end

end A077240.P17204430537117966521

namespace A077240

/-- `A077445(n+1)+A001541(n)` -/
def P17204430537117966521.Spec : Prop :=
  ∀ n, P17204430537117966521.a n = A077240 n

end A077240

/-! ## A077240.P8410866288316099035

`2*A038762(n)-A001541(n)`
-/

namespace A077240.P8410866288316099035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038762 n - A001541 n

end

end A077240.P8410866288316099035

namespace A077240

/-- `2*A038762(n)-A001541(n)` -/
def P8410866288316099035.Spec : Prop :=
  ∀ n, P8410866288316099035.a n = A077240 n

end A077240

/-! ## A077240.P2997466615286293844

`A101386(n)-2*A001542(n)`
-/

namespace A077240.P2997466615286293844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101386 n - 2 * A001542 n

end

end A077240.P2997466615286293844

namespace A077240

/-- `A101386(n)-2*A001542(n)` -/
def P2997466615286293844.Spec : Prop :=
  ∀ n, P2997466615286293844.a n = A077240 n

end A077240

/-! ## A077240.P4813075417353622424

`(A275793(n)+A001541(n))/2`
-/

namespace A077240.P4813075417353622424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275793 n + A001541 n : ℚ) / 2

end

end A077240.P4813075417353622424

namespace A077240

/-- `(A275793(n)+A001541(n))/2` -/
def P4813075417353622424.Spec : Prop :=
  ∀ n, P4813075417353622424.a n = (A077240 n : ℚ)

end A077240

/-! ## A077240.P7660617666452690239

`A101386(n)-4*A001109(n)`
-/

namespace A077240.P7660617666452690239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101386 n - 4 * A001109 n

end

end A077240.P7660617666452690239

namespace A077240

/-- `A101386(n)-4*A001109(n)` -/
def P7660617666452690239.Spec : Prop :=
  ∀ n, P7660617666452690239.a n = A077240 n

end A077240

/-! ## A077240.P6767476976242692187

`A001541(n)+Δ[2*A001542(n)]`
-/

namespace A077240.P6767476976242692187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n + (f1 (n + 1) - f1 n)

end

end A077240.P6767476976242692187

namespace A077240

/-- `A001541(n)+Δ[2*A001542(n)]` -/
def P6767476976242692187.Spec : Prop :=
  ∀ n, P6767476976242692187.a n = A077240 n

end A077240

/-! ## A077240.P10799355611111467678

`Δ[A001652(n)]+2*A001541(n)`
-/

namespace A077240.P10799355611111467678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A001541 n

end

end A077240.P10799355611111467678

namespace A077240

/-- `Δ[A001652(n)]+2*A001541(n)` -/
def P10799355611111467678.Spec : Prop :=
  ∀ n, P10799355611111467678.a n = A077240 n

end A077240

/-!
# A077241: Combined Diophantine Chebyshev sequences A054488 and A077413.

The programs for A077241, the canonical program `A077241.P11340406433568583916` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077241 has offset 0).

The definition of A077241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077241.P9250879902616138340

`∑[A040001(n)*A079496(n)]`
-/

namespace A077241.P9250879902616138340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A079496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077241.P9250879902616138340

namespace A077241

/-- `∑[A040001(n)*A079496(n)]` -/
def P9250879902616138340.Spec : Prop :=
  ∀ n, P9250879902616138340.a n = A077241 n

end A077241

/-! ## A077241.P11340406433568583916

`A143609(n+1)-A006452(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A077241

/-- `A143609(n+1)-A006452(n)` -/
def P11340406433568583916.Spec : Prop :=
  ∀ n, P11340406433568583916.a n = A077241 n

theorem P11340406433568583916.correct : P11340406433568583916.Spec := by
  intro n
  simp only [A077241]

end A077241

/-! ## A077241.P11305553136687888541

`A143608(n)+∑[A126354(n+1)]`
-/

namespace A077241.P11305553136687888541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143608 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077241.P11305553136687888541

namespace A077241

/-- `A143608(n)+∑[A126354(n+1)]` -/
def P11305553136687888541.Spec : Prop :=
  ∀ n, P11305553136687888541.a n = A077241 n

end A077241

/-! ## A077241.P14675950976356090592

`∑[A040003(n)/2*A079496(n)]`
-/

namespace A077241.P14675950976356090592
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040003 n : ℚ) / 2 * (A079496 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077241.P14675950976356090592

namespace A077241

/-- `∑[A040003(n)/2*A079496(n)]` -/
def P14675950976356090592.Spec : Prop :=
  ∀ n, P14675950976356090592.a n = (A077241 n : ℚ)

end A077241

/-! ## A077241.P3344081690514201097

`A216134(n)+A046090(A004526(n))`
-/

namespace A077241.P3344081690514201097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216134 n + A046090 (A004526 n).toNat

end

end A077241.P3344081690514201097

namespace A077241

/-- `A216134(n)+A046090(A004526(n))` -/
def P3344081690514201097.Spec : Prop :=
  ∀ n, P3344081690514201097.a n = A077241 n

end A077241

/-! ## A077241.P1994317856788525575

`∑[A014709(A103517(n))*A079496(n)]`
-/

namespace A077241.P1994317856788525575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A103517 n).toNat * A079496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077241.P1994317856788525575

namespace A077241

/-- `∑[A014709(A103517(n))*A079496(n)]` -/
def P1994317856788525575.Spec : Prop :=
  ∀ n, P1994317856788525575.a n = A077241 n

end A077241

/-! ## A077241.P15242394694131579606

`A144797(n+1)/2`
-/

namespace A077241.P15242394694131579606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144797 (n + 1) : ℚ) / 2

end

end A077241.P15242394694131579606

namespace A077241

/-- `A144797(n+1)/2` -/
def P15242394694131579606.Spec : Prop :=
  ∀ n, P15242394694131579606.a n = (A077241 n : ℚ)

end A077241

/-! ## A077241.P9621335295369290886

`Δ[A006451(n)]-A006452(n)`
-/

namespace A077241.P9621335295369290886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006452 n

end

end A077241.P9621335295369290886

namespace A077241

/-- `Δ[A006451(n)]-A006452(n)` -/
def P9621335295369290886.Spec : Prop :=
  ∀ n, P9621335295369290886.a n = A077241 n

end A077241

/-! ## A077241.P3526740785789128895

`A154138(n+1)-A216134(n)`
-/

namespace A077241.P3526740785789128895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154138 (n + 1) - A216134 n

end

end A077241.P3526740785789128895

namespace A077241

/-- `A154138(n+1)-A216134(n)` -/
def P3526740785789128895.Spec : Prop :=
  ∀ n, P3526740785789128895.a n = A077241 n

end A077241

/-! ## A077241.P15709914987312736180

`A276599(n+1)-Δ[A079496(n)]`
-/

namespace A077241.P15709914987312736180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276599 (n + 1) - (f1 (n + 1) - f1 n)

end

end A077241.P15709914987312736180

namespace A077241

/-- `A276599(n+1)-Δ[A079496(n)]` -/
def P15709914987312736180.Spec : Prop :=
  ∀ n, P15709914987312736180.a n = A077241 n

end A077241

/-! ## A077241.P4484450230091316928

`Δ[A006451(n)]-A216162(2*n)`
-/

namespace A077241.P4484450230091316928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A216162 (2 * n)

end

end A077241.P4484450230091316928

namespace A077241

/-- `Δ[A006451(n)]-A216162(2*n)` -/
def P4484450230091316928.Spec : Prop :=
  ∀ n, P4484450230091316928.a n = A077241 n

end A077241

/-! ## A077241.P13758846623638262237

`(A077442(n)+A002315(A004526(n)))/2`
-/

namespace A077241.P13758846623638262237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077442 n + A002315 (A004526 n).toNat : ℚ) / 2

end

end A077241.P13758846623638262237

namespace A077241

/-- `(A077442(n)+A002315(A004526(n)))/2` -/
def P13758846623638262237.Spec : Prop :=
  ∀ n, P13758846623638262237.a n = (A077241 n : ℚ)

end A077241

/-! ## A077241.P5421568123688930902

`(A077442(n)+A001333(A109613(n)))/2`
-/

namespace A077241.P5421568123688930902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077442 n + A001333 (A109613 n).toNat : ℚ) / 2

end

end A077241.P5421568123688930902

namespace A077241

/-- `(A077442(n)+A001333(A109613(n)))/2` -/
def P5421568123688930902.Spec : Prop :=
  ∀ n, P5421568123688930902.a n = (A077241 n : ℚ)

end A077241

/-! ## A077241.P12536937456299396504

`A077442(n)+A216134(n)-A006451(n)`
-/

namespace A077241.P12536937456299396504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077442 n + (A216134 n - A006451 n)

end

end A077241.P12536937456299396504

namespace A077241

/-- `A077442(n)+A216134(n)-A006451(n)` -/
def P12536937456299396504.Spec : Prop :=
  ∀ n, P12536937456299396504.a n = A077241 n

end A077241

/-! ## A077241.P35398174625097033

`A006451(n+1)-(A006452(n)+A006451(n))`
-/

namespace A077241.P35398174625097033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (n + 1) - (A006452 n + A006451 n)

end

end A077241.P35398174625097033

namespace A077241

/-- `A006451(n+1)-(A006452(n)+A006451(n))` -/
def P35398174625097033.Spec : Prop :=
  ∀ n, P35398174625097033.a n = A077241 n

end A077241

/-! ## A077241.P11664190912621215342

`A077442(n)+A077442(n)-A276599(n+1)`
-/

namespace A077241.P11664190912621215342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077442 n + (A077442 n - A276599 (n + 1))

end

end A077241.P11664190912621215342

namespace A077241

/-- `A077442(n)+A077442(n)-A276599(n+1)` -/
def P11664190912621215342.Spec : Prop :=
  ∀ n, P11664190912621215342.a n = A077241 n

end A077241

/-! ## A077241.P12751841209185113568

`A276599(n+1)+A276599(n+1)-A276601(n+1)`
-/

namespace A077241.P12751841209185113568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276599 (n + 1) + (A276599 (n + 1) - A276601 (n + 1))

end

end A077241.P12751841209185113568

namespace A077241

/-- `A276599(n+1)+A276599(n+1)-A276601(n+1)` -/
def P12751841209185113568.Spec : Prop :=
  ∀ n, P12751841209185113568.a n = A077241 n

end A077241

/-! ## A077241.P15429578123520927107

`A133326(n+1)-A276601(n+1)`
-/

namespace A077241.P15429578123520927107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133326 (n + 1) - A276601 (n + 1)

end

end A077241.P15429578123520927107

namespace A077241

/-- `A133326(n+1)-A276601(n+1)` -/
def P15429578123520927107.Spec : Prop :=
  ∀ n, P15429578123520927107.a n = A077241 n

end A077241

/-! ## A077241.P8533836276126194907

`2*A077442(n)-A276599(n+1)`
-/

namespace A077241.P8533836276126194907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077442 n - A276599 (n + 1)

end

end A077241.P8533836276126194907

namespace A077241

/-- `2*A077442(n)-A276599(n+1)` -/
def P8533836276126194907.Spec : Prop :=
  ∀ n, P8533836276126194907.a n = A077241 n

end A077241

/-! ## A077241.P7559886376870367930

`2*A276599(n+1)-A276601(n+1)`
-/

namespace A077241.P7559886376870367930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276599 (n + 1) - A276601 (n + 1)

end

end A077241.P7559886376870367930

namespace A077241

/-- `2*A276599(n+1)-A276601(n+1)` -/
def P7559886376870367930.Spec : Prop :=
  ∀ n, P7559886376870367930.a n = A077241 n

end A077241

/-!
# A077242: Combined Diophantine Chebyshev sequences A077240 and A077239.

The programs for A077242, the canonical program `A077242.P13457128912001529896` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077242 has offset 0).

The definition of A077242 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077242.P13457128912001529896

`6*a(n-2)-a(n-4)` with `a(0)=5, a(1)=7, a(2)=23, a(3)=37`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077242

/-- `6*a(n-2)-a(n-4)` -/
def P13457128912001529896.Spec : Prop :=
  ∀ n, P13457128912001529896.a n = A077242 n

theorem P13457128912001529896.correct : P13457128912001529896.Spec := by
  intro n
  simp only [A077242]

end A077242

/-! ## A077242.P3026962684121228543

`4*A156066(n+1)-A077443(n+1)`
-/

namespace A077242.P3026962684121228543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A156066 (n + 1) - A077443 (n + 1)

end

end A077242.P3026962684121228543

namespace A077242

/-- `4*A156066(n+1)-A077443(n+1)` -/
def P3026962684121228543.Spec : Prop :=
  ∀ n, P3026962684121228543.a n = A077242 n

end A077242

/-! ## A077242.P3240864148730802561

`A143609(A109613(n))+A077443(n+1)`
-/

namespace A077242.P3240864148730802561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143609 (A109613 n).toNat + A077443 (n + 1)

end

end A077242.P3240864148730802561

namespace A077242

/-- `A143609(A109613(n))+A077443(n+1)` -/
def P3240864148730802561.Spec : Prop :=
  ∀ n, P3240864148730802561.a n = A077242 n

end A077242

/-! ## A077242.P9923991664574082958

`A001333(A052928(n))+Δ[A077446(n+1)]`
-/

namespace A077242.P9923991664574082958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A052928 n).toNat + (f1 (n + 1) - f1 n)

end

end A077242.P9923991664574082958

namespace A077242

/-- `A001333(A052928(n))+Δ[A077446(n+1)]` -/
def P9923991664574082958.Spec : Prop :=
  ∀ n, P9923991664574082958.a n = A077242 n

end A077242

/-! ## A077242.P12596158902452141443

`A077443(n+1)+A123335(n)+A078057(n)`
-/

namespace A077242.P12596158902452141443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077443 (n + 1) + (A123335 n + A078057 n)

end

end A077242.P12596158902452141443

namespace A077242

/-- `A077443(n+1)+A123335(n)+A078057(n)` -/
def P12596158902452141443.Spec : Prop :=
  ∀ n, P12596158902452141443.a n = A077242 n

end A077242

/-! ## A077242.P6678982580255579396

`(A143608(n+2)+A143608(n+7))%A143608(n+3)`
-/

namespace A077242.P6678982580255579396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143608 (n + 2) + A143608 (n + 7)) (A143608 (n + 3))

end

end A077242.P6678982580255579396

namespace A077242

/-- `(A143608(n+2)+A143608(n+7))%A143608(n+3)` -/
def P6678982580255579396.Spec : Prop :=
  ∀ n, P6678982580255579396.a n = A077242 n

end A077242

/-! ## A077242.P11075630275004487975

`A048655(n)+A265185(n)/A143095(n)`
-/

namespace A077242.P11075630275004487975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048655 n : ℚ) + (A265185 n : ℚ) / (A143095 n : ℚ)

end

end A077242.P11075630275004487975

namespace A077242

/-- `A048655(n)+A265185(n)/A143095(n)` -/
def P11075630275004487975.Spec : Prop :=
  ∀ n, P11075630275004487975.a n = (A077242 n : ℚ)

end A077242

/-!
# A077243: Bisection (odd part) of Chebyshev sequence with Diophantine property.

The programs for A077243, the canonical program `A077243.P15057174032571978223` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077243 has offset 0).

The definition of A077243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077243.P15057174032571978223

`8*a(n-1)-a(n-2)` with `a(0)=2, a(1)=17`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077243

/-- `8*a(n-1)-a(n-2)` -/
def P15057174032571978223.Spec : Prop :=
  ∀ n, P15057174032571978223.a n = A077243 n

theorem P15057174032571978223.correct : P15057174032571978223.Spec := by
  intro n
  simp only [A077243]

end A077243

/-! ## A077243.P12259073985118108384

`ogf((2+x)/(1-8x+x^2))`
-/

namespace A077243.P12259073985118108384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -8, 1] n

end

end A077243.P12259073985118108384

namespace A077243

/-- `ogf((2+x)/(1-8x+x^2))` -/
def P12259073985118108384.Spec : Prop :=
  ∀ n, P12259073985118108384.a n = A077243 n

end A077243

/-! ## A077243.P7886618140212273075

`A077247(Δ[n²])`
-/

namespace A077243.P7886618140212273075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077247 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077243.P7886618140212273075

namespace A077243

/-- `A077247(Δ[n²])` -/
def P7886618140212273075.Spec : Prop :=
  ∀ n, P7886618140212273075.a n = A077243 n

end A077243

/-! ## A077243.P16442860190868544420

`Δ[A105045(Δ[n²])]`
-/

namespace A077243.P16442860190868544420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077243.P16442860190868544420

namespace A077243

/-- `Δ[A105045(Δ[n²])]` -/
def P16442860190868544420.Spec : Prop :=
  ∀ n, P16442860190868544420.a n = A077243 n

end A077243

/-! ## A077243.P1967985554846582973

`Δ[A105076(Δ[n²])]`
-/

namespace A077243.P1967985554846582973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105076 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077243.P1967985554846582973

namespace A077243

/-- `Δ[A105076(Δ[n²])]` -/
def P1967985554846582973.Spec : Prop :=
  ∀ n, P1967985554846582973.a n = A077243 n

end A077243

/-! ## A077243.P2206683850018827209

`3*A095003(n+1)-1`
-/

namespace A077243.P2206683850018827209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A095003 (n + 1) - 1

end

end A077243.P2206683850018827209

namespace A077243

/-- `3*A095003(n+1)-1` -/
def P2206683850018827209.Spec : Prop :=
  ∀ n, P2206683850018827209.a n = A077243 n

end A077243

/-! ## A077243.P12388239173533968144

`abs(Δ[A105045(2*n+1)])`
-/

namespace A077243.P12388239173533968144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105045 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A077243.P12388239173533968144

namespace A077243

/-- `abs(Δ[A105045(2*n+1)])` -/
def P12388239173533968144.Spec : Prop :=
  ∀ n, P12388239173533968144.a n = A077243 n

end A077243

/-! ## A077243.P12577575450712739461

`A057080(n)+A001090(n+1)`
-/

namespace A077243.P12577575450712739461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057080 n + A001090 (n + 1)

end

end A077243.P12577575450712739461

namespace A077243

/-- `A057080(n)+A001090(n+1)` -/
def P12577575450712739461.Spec : Prop :=
  ∀ n, P12577575450712739461.a n = A077243 n

end A077243

/-! ## A077243.P14199020957239679905

`A136325(n+1)-A070997(n)`
-/

namespace A077243.P14199020957239679905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136325 (n + 1) - A070997 n

end

end A077243.P14199020957239679905

namespace A077243

/-- `A136325(n+1)-A070997(n)` -/
def P14199020957239679905.Spec : Prop :=
  ∀ n, P14199020957239679905.a n = A077243 n

end A077243

/-! ## A077243.P7010458026724992621

`A136325(n)+2*A070997(n)`
-/

namespace A077243.P7010458026724992621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136325 n + 2 * A070997 n

end

end A077243.P7010458026724992621

namespace A077243

/-- `A136325(n)+2*A070997(n)` -/
def P7010458026724992621.Spec : Prop :=
  ∀ n, P7010458026724992621.a n = A077243 n

end A077243

/-! ## A077243.P11305729338381816728

`2*A057080(n)-A001090(n)`
-/

namespace A077243.P11305729338381816728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057080 n - A001090 n

end

end A077243.P11305729338381816728

namespace A077243

/-- `2*A057080(n)-A001090(n)` -/
def P11305729338381816728.Spec : Prop :=
  ∀ n, P11305729338381816728.a n = A077243 n

end A077243

/-! ## A077243.P15410507451199202615

`A136325(n+1)-Δ[A001090(n)]`
-/

namespace A077243.P15410507451199202615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136325 (n + 1) - (f1 (n + 1) - f1 n)

end

end A077243.P15410507451199202615

namespace A077243

/-- `A136325(n+1)-Δ[A001090(n)]` -/
def P15410507451199202615.Spec : Prop :=
  ∀ n, P15410507451199202615.a n = A077243 n

end A077243

/-! ## A077243.P6050933345748794433

`A001090(n)+∑[2*A070997(n)]`
-/

namespace A077243.P6050933345748794433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077243.P6050933345748794433

namespace A077243

/-- `A001090(n)+∑[2*A070997(n)]` -/
def P6050933345748794433.Spec : Prop :=
  ∀ n, P6050933345748794433.a n = A077243 n

end A077243

/-! ## A077243.P8442784256930335267

`A136325(n)+Δ[2*A001090(n)]`
-/

namespace A077243.P8442784256930335267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136325 n + (f1 (n + 1) - f1 n)

end

end A077243.P8442784256930335267

namespace A077243

/-- `A136325(n)+Δ[2*A001090(n)]` -/
def P8442784256930335267.Spec : Prop :=
  ∀ n, P8442784256930335267.a n = A077243 n

end A077243

/-! ## A077243.P14593849637029518335

`A057080(n)+A041023(2*n+1)`
-/

namespace A077243.P14593849637029518335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057080 n + A041023 (2 * n + 1)

end

end A077243.P14593849637029518335

namespace A077243

/-- `A057080(n)+A041023(2*n+1)` -/
def P14593849637029518335.Spec : Prop :=
  ∀ n, P14593849637029518335.a n = A077243 n

end A077243

/-! ## A077243.P1582979821821670425

`A177187(2*(n+1))+A057080(n)`
-/

namespace A077243.P1582979821821670425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177187 (2 * (n + 1)) + A057080 n

end

end A077243.P1582979821821670425

namespace A077243

/-- `A177187(2*(n+1))+A057080(n)` -/
def P1582979821821670425.Spec : Prop :=
  ∀ n, P1582979821821670425.a n = A077243 n

end A077243

/-! ## A077243.P14607374314295517483

`A136325(n+1)-A041023(2*n)`
-/

namespace A077243.P14607374314295517483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136325 (n + 1) - A041023 (2 * n)

end

end A077243.P14607374314295517483

namespace A077243

/-- `A136325(n+1)-A041023(2*n)` -/
def P14607374314295517483.Spec : Prop :=
  ∀ n, P14607374314295517483.a n = A077243 n

end A077243

/-! ## A077243.P15469609659991094841

`A145542(2*(n+1))-A070997(n)`
-/

namespace A077243.P15469609659991094841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145542 (2 * (n + 1)) - A070997 n

end

end A077243.P15469609659991094841

namespace A077243

/-- `A145542(2*(n+1))-A070997(n)` -/
def P15469609659991094841.Spec : Prop :=
  ∀ n, P15469609659991094841.a n = A077243 n

end A077243

/-! ## A077243.P4859867259560830751

`A077244(n)-A199336(2*n+1)`
-/

namespace A077243.P4859867259560830751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077244 n - A199336 (2 * n + 1)

end

end A077243.P4859867259560830751

namespace A077243

/-- `A077244(n)-A199336(2*n+1)` -/
def P4859867259560830751.Spec : Prop :=
  ∀ n, P4859867259560830751.a n = A077243 n

end A077243

/-! ## A077243.P5992104726932696520

`A199336(2*(n+1))-A341927(n)`
-/

namespace A077243.P5992104726932696520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199336 (2 * (n + 1)) - A341927 n

end

end A077243.P5992104726932696520

namespace A077243

/-- `A199336(2*(n+1))-A341927(n)` -/
def P5992104726932696520.Spec : Prop :=
  ∀ n, P5992104726932696520.a n = A077243 n

end A077243

/-!
# A077244: Bisection (odd part) of Chebyshev sequence with Diophantine property.

The programs for A077244, the canonical program `A077244.P7143022164104243357` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077244 has offset 0).

The definition of A077244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077244.P7143022164104243357

`8*a(n-1)-a(n-2)` with `a(0)=3, a(1)=22`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077244

/-- `8*a(n-1)-a(n-2)` -/
def P7143022164104243357.Spec : Prop :=
  ∀ n, P7143022164104243357.a n = A077244 n

theorem P7143022164104243357.correct : P7143022164104243357.Spec := by
  intro n
  simp only [A077244]

end A077244

/-! ## A077244.P7236409208919952306

`ogf((3-2x)/(1-8x+x^2))`
-/

namespace A077244.P7236409208919952306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2] [1, -8, 1] n

end

end A077244.P7236409208919952306

namespace A077244

/-- `ogf((3-2x)/(1-8x+x^2))` -/
def P7236409208919952306.Spec : Prop :=
  ∀ n, P7236409208919952306.a n = A077244 n

end A077244

/-! ## A077244.P14372263956117206335

`A077248(Δ[n²])`
-/

namespace A077244.P14372263956117206335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077248 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077244.P14372263956117206335

namespace A077244

/-- `A077248(Δ[n²])` -/
def P14372263956117206335.Spec : Prop :=
  ∀ n, P14372263956117206335.a n = A077244 n

end A077244

/-! ## A077244.P2621993201850669134

`∑[A199338(2*n+1)]+2`
-/

namespace A077244.P2621993201850669134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199338 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A077244.P2621993201850669134

namespace A077244

/-- `∑[A199338(2*n+1)]+2` -/
def P2621993201850669134.Spec : Prop :=
  ∀ n, P2621993201850669134.a n = A077244 n

end A077244

/-! ## A077244.P13683246069478811018

`record[A077248(A014681(n)+1)]`
-/

namespace A077244.P13683246069478811018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077248 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077244.P13683246069478811018

namespace A077244

/-- `record[A077248(A014681(n)+1)]` -/
def P13683246069478811018.Spec : Prop :=
  ∀ n, P13683246069478811018.a n = A077244 n

end A077244

/-! ## A077244.P15482197747183948672

`A001090(n)+Δ[A136325(n)]`
-/

namespace A077244.P15482197747183948672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n + (f1 (n + 1) - f1 n)

end

end A077244.P15482197747183948672

namespace A077244

/-- `A001090(n)+Δ[A136325(n)]` -/
def P15482197747183948672.Spec : Prop :=
  ∀ n, P15482197747183948672.a n = A077244 n

end A077244

/-! ## A077244.P10556262900106150127

`record[A077248(A033999(n)+n)]`
-/

namespace A077244.P10556262900106150127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077248 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077244.P10556262900106150127

namespace A077244

/-- `record[A077248(A033999(n)+n)]` -/
def P10556262900106150127.Spec : Prop :=
  ∀ n, P10556262900106150127.a n = A077244 n

end A077244

/-! ## A077244.P5127123211683278431

`A341929(n+1)+A070997(n)`
-/

namespace A077244.P5127123211683278431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341929 (n + 1) + A070997 n

end

end A077244.P5127123211683278431

namespace A077244

/-- `A341929(n+1)+A070997(n)` -/
def P5127123211683278431.Spec : Prop :=
  ∀ n, P5127123211683278431.a n = A077244 n

end A077244

/-! ## A077244.P876139327347687710

`A144479(n+1)-A001090(n)`
-/

namespace A077244.P876139327347687710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144479 (n + 1) - A001090 n

end

end A077244.P876139327347687710

namespace A077244

/-- `A144479(n+1)-A001090(n)` -/
def P876139327347687710.Spec : Prop :=
  ∀ n, P876139327347687710.a n = A077244 n

end A077244

/-! ## A077244.P15863064150428816101

`A001091(n)+2*A057080(n)`
-/

namespace A077244.P15863064150428816101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001091 n + 2 * A057080 n

end

end A077244.P15863064150428816101

namespace A077244

/-- `A001091(n)+2*A057080(n)` -/
def P15863064150428816101.Spec : Prop :=
  ∀ n, P15863064150428816101.a n = A077244 n

end A077244

/-! ## A077244.P2493857541589583974

`2*A077246(n)-A001091(n)`
-/

namespace A077244.P2493857541589583974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077246 n - A001091 n

end

end A077244.P2493857541589583974

namespace A077244

/-- `2*A077246(n)-A001091(n)` -/
def P2493857541589583974.Spec : Prop :=
  ∀ n, P2493857541589583974.a n = A077244 n

end A077244

/-! ## A077244.P5152750457698426046

`A001090(n+1)+2*A070997(n)`
-/

namespace A077244.P5152750457698426046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 (n + 1) + 2 * A070997 n

end

end A077244.P5152750457698426046

namespace A077244

/-- `A001090(n+1)+2*A070997(n)` -/
def P5152750457698426046.Spec : Prop :=
  ∀ n, P5152750457698426046.a n = A077244 n

end A077244

/-! ## A077244.P38787277592848519

`A237262(2*(n+1))+A070997(n)`
-/

namespace A077244.P38787277592848519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (2 * (n + 1)) + A070997 n

end

end A077244.P38787277592848519

namespace A077244

/-- `A237262(2*(n+1))+A070997(n)` -/
def P38787277592848519.Spec : Prop :=
  ∀ n, P38787277592848519.a n = A077244 n

end A077244

/-! ## A077244.P3167064093367559669

`A199336(2*(n+1))-A001090(n)`
-/

namespace A077244.P3167064093367559669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199336 (2 * (n + 1)) - A001090 n

end

end A077244.P3167064093367559669

namespace A077244

/-- `A199336(2*(n+1))-A001090(n)` -/
def P3167064093367559669.Spec : Prop :=
  ∀ n, P3167064093367559669.a n = A077244 n

end A077244

/-! ## A077244.P8069784528594013040

`A001090(n+1)+2*A041023(2*n)`
-/

namespace A077244.P8069784528594013040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 (n + 1) + 2 * A041023 (2 * n)

end

end A077244.P8069784528594013040

namespace A077244

/-- `A001090(n+1)+2*A041023(2*n)` -/
def P8069784528594013040.Spec : Prop :=
  ∀ n, P8069784528594013040.a n = A077244 n

end A077244

/-! ## A077244.P4976980793766537379

`A237262(2*(n+1))+A041023(2*n)`
-/

namespace A077244.P4976980793766537379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (2 * (n + 1)) + A041023 (2 * n)

end

end A077244.P4976980793766537379

namespace A077244

/-- `A237262(2*(n+1))+A041023(2*n)` -/
def P4976980793766537379.Spec : Prop :=
  ∀ n, P4976980793766537379.a n = A077244 n

end A077244

/-! ## A077244.P16605672235408872608

`A001090(n+1)+2*A080871(2*n+1)`
-/

namespace A077244.P16605672235408872608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 (n + 1) + 2 * A080871 (2 * n + 1)

end

end A077244.P16605672235408872608

namespace A077244

/-- `A001090(n+1)+2*A080871(2*n+1)` -/
def P16605672235408872608.Spec : Prop :=
  ∀ n, P16605672235408872608.a n = A077244 n

end A077244

/-! ## A077244.P13900329107504785658

`A105045(2*n+1)+A103200(2*(n+1))`
-/

namespace A077244.P13900329107504785658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105045 (2 * n + 1) + A103200 (2 * (n + 1))

end

end A077244.P13900329107504785658

namespace A077244

/-- `A105045(2*n+1)+A103200(2*(n+1))` -/
def P13900329107504785658.Spec : Prop :=
  ∀ n, P13900329107504785658.a n = A077244 n

end A077244

/-! ## A077244.P5180351171238180616

`A237262(2*n+1)+2*A001090(n+1)`
-/

namespace A077244.P5180351171238180616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (2 * n + 1) + 2 * A001090 (n + 1)

end

end A077244.P5180351171238180616

namespace A077244

/-- `A237262(2*n+1)+2*A001090(n+1)` -/
def P5180351171238180616.Spec : Prop :=
  ∀ n, P5180351171238180616.a n = A077244 n

end A077244

/-! ## A077244.P15234542626427747549

`A041023(2*n+1)+2*A041023(2*n)`
-/

namespace A077244.P15234542626427747549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041023 (2 * n + 1) + 2 * A041023 (2 * n)

end

end A077244.P15234542626427747549

namespace A077244

/-- `A041023(2*n+1)+2*A041023(2*n)` -/
def P15234542626427747549.Spec : Prop :=
  ∀ n, P15234542626427747549.a n = A077244 n

end A077244

/-!
# A077245: Bisection (even part) of Chebyshev sequence with Diophantine property.

The programs for A077245, the canonical program `A077245.P15138660708331962464` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077245 has offset 0).

The definition of A077245 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077245.P15138660708331962464

`8*a(n-1)-a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077245

/-- `8*a(n-1)-a(n-2)` -/
def P15138660708331962464.Spec : Prop :=
  ∀ n, P15138660708331962464.a n = A077245 n

theorem P15138660708331962464.correct : P15138660708331962464.Spec := by
  intro n
  simp only [A077245]

end A077245

/-! ## A077245.P4241743479718382365

`ogf((1+2x)/(1-8x+x^2))`
-/

namespace A077245.P4241743479718382365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -8, 1] n

end

end A077245.P4241743479718382365

namespace A077245

/-- `ogf((1+2x)/(1-8x+x^2))` -/
def P4241743479718382365.Spec : Prop :=
  ∀ n, P4241743479718382365.a n = A077245 n

end A077245

/-! ## A077245.P1335454398291017831

`a(n-1)/(1/2)^3-a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A077245.P1335454398291017831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 10] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 3 - a (n - 2)

end

end A077245.P1335454398291017831

namespace A077245

/-- `a(n-1)/(1/2)^3-a(n-2)` -/
def P1335454398291017831.Spec : Prop :=
  ∀ n, P1335454398291017831.a n = (A077245 n : ℚ)

end A077245

/-! ## A077245.P3703559538502696675

`A077247(2*n)`
-/

namespace A077245.P3703559538502696675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077247 (2 * n)

end

end A077245.P3703559538502696675

namespace A077245

/-- `A077247(2*n)` -/
def P3703559538502696675.Spec : Prop :=
  ∀ n, P3703559538502696675.a n = A077245 n

end A077245

/-! ## A077245.P15609911779975568752

`Δ[A144479(n)/2]`
-/

namespace A077245.P15609911779975568752
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144479 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077245.P15609911779975568752

namespace A077245

/-- `Δ[A144479(n)/2]` -/
def P15609911779975568752.Spec : Prop :=
  ∀ n, P15609911779975568752.a n = (A077245 n : ℚ)

end A077245

/-! ## A077245.P4531872249379938601

`A199338(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A077245.P4531872249379938601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A199338 (2 * n) - a (n - 1)

end

end A077245.P4531872249379938601

namespace A077245

/-- `A199338(2*n)-a(n-1)` -/
def P4531872249379938601.Spec : Prop :=
  ∀ n, P4531872249379938601.a n = A077245 n

end A077245

/-! ## A077245.P5553858587836862770

`Δ[A105045(A004277(n))]`
-/

namespace A077245.P5553858587836862770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105045 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077245.P5553858587836862770

namespace A077245

/-- `Δ[A105045(A004277(n))]` -/
def P5553858587836862770.Spec : Prop :=
  ∀ n, P5553858587836862770.a n = A077245 n

end A077245

/-! ## A077245.P9265163601626490927

`A057080(n)+A001090(n)`
-/

namespace A077245.P9265163601626490927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057080 n + A001090 n

end

end A077245.P9265163601626490927

namespace A077245

/-- `A057080(n)+A001090(n)` -/
def P9265163601626490927.Spec : Prop :=
  ∀ n, P9265163601626490927.a n = A077245 n

end A077245

/-! ## A077245.P14218368669494243997

`A136325(n)+A070997(n)`
-/

namespace A077245.P14218368669494243997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136325 n + A070997 n

end

end A077245.P14218368669494243997

namespace A077245

/-- `A136325(n)+A070997(n)` -/
def P14218368669494243997.Spec : Prop :=
  ∀ n, P14218368669494243997.a n = A077245 n

end A077245

/-! ## A077245.P7508557730133662413

`Δ[A105076(A028310(2*n))]`
-/

namespace A077245.P7508557730133662413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105076 (A028310 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077245.P7508557730133662413

namespace A077245

/-- `Δ[A105076(A028310(2*n))]` -/
def P7508557730133662413.Spec : Prop :=
  ∀ n, P7508557730133662413.a n = A077245 n

end A077245

/-! ## A077245.P6459550756026319690

`Δ[A105076(A028310(n)+n)]`
-/

namespace A077245.P6459550756026319690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105076 (A028310 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077245.P6459550756026319690

namespace A077245

/-- `Δ[A105076(A028310(n)+n)]` -/
def P6459550756026319690.Spec : Prop :=
  ∀ n, P6459550756026319690.a n = A077245 n

end A077245

/-! ## A077245.P10670280930251418556

`A136325(n)+Δ[A001090(n)]`
-/

namespace A077245.P10670280930251418556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136325 n + (f1 (n + 1) - f1 n)

end

end A077245.P10670280930251418556

namespace A077245

/-- `A136325(n)+Δ[A001090(n)]` -/
def P10670280930251418556.Spec : Prop :=
  ∀ n, P10670280930251418556.a n = A077245 n

end A077245

/-! ## A077245.P6052970199523383828

`Δ[A341929(n)]-A136325(n)`
-/

namespace A077245.P6052970199523383828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A136325 n

end

end A077245.P6052970199523383828

namespace A077245

/-- `Δ[A341929(n)]-A136325(n)` -/
def P6052970199523383828.Spec : Prop :=
  ∀ n, P6052970199523383828.a n = A077245 n

end A077245

/-! ## A077245.P2323464122673485354

`A341929(n+1)-A105426(n)`
-/

namespace A077245.P2323464122673485354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341929 (n + 1) - A105426 n

end

end A077245.P2323464122673485354

namespace A077245

/-- `A341929(n+1)-A105426(n)` -/
def P2323464122673485354.Spec : Prop :=
  ∀ n, P2323464122673485354.a n = A077245 n

end A077245

/-! ## A077245.P13074583240468371764

`A136325(n)+A041023(2*n)`
-/

namespace A077245.P13074583240468371764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136325 n + A041023 (2 * n)

end

end A077245.P13074583240468371764

namespace A077245

/-- `A136325(n)+A041023(2*n)` -/
def P13074583240468371764.Spec : Prop :=
  ∀ n, P13074583240468371764.a n = A077245 n

end A077245

/-! ## A077245.P3082448197715355095

`2*A070997(n)-A001091(n)`
-/

namespace A077245.P3082448197715355095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070997 n - A001091 n

end

end A077245.P3082448197715355095

namespace A077245

/-- `2*A070997(n)-A001091(n)` -/
def P3082448197715355095.Spec : Prop :=
  ∀ n, P3082448197715355095.a n = A077245 n

end A077245

/-! ## A077245.P12206213308950630884

`2*A341927(n)-A341929(n)`
-/

namespace A077245.P12206213308950630884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341927 n - A341929 n

end

end A077245.P12206213308950630884

namespace A077245

/-- `2*A341927(n)-A341929(n)` -/
def P12206213308950630884.Spec : Prop :=
  ∀ n, P12206213308950630884.a n = A077245 n

end A077245

/-! ## A077245.P12976103782583381511

`∑[A070997(n)]+2*A001090(n)`
-/

namespace A077245.P12976103782583381511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A001090 n

end

end A077245.P12976103782583381511

namespace A077245

/-- `∑[A070997(n)]+2*A001090(n)` -/
def P12976103782583381511.Spec : Prop :=
  ∀ n, P12976103782583381511.a n = A077245 n

end A077245

/-! ## A077245.P4431758521723084348

`Δ[2*A001090(n)]-A001091(n)`
-/

namespace A077245.P4431758521723084348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001091 n

end

end A077245.P4431758521723084348

namespace A077245

/-- `Δ[2*A001090(n)]-A001091(n)` -/
def P4431758521723084348.Spec : Prop :=
  ∀ n, P4431758521723084348.a n = A077245 n

end A077245

/-! ## A077245.P4321898374792081141

`A001090(n+1)+2*A001090(n)`
-/

namespace A077245.P4321898374792081141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 (n + 1) + 2 * A001090 n

end

end A077245.P4321898374792081141

namespace A077245

/-- `A001090(n+1)+2*A001090(n)` -/
def P4321898374792081141.Spec : Prop :=
  ∀ n, P4321898374792081141.a n = A077245 n

end A077245

/-!
# A077246: Bisection (even part) of Chebyshev sequence with Diophantine property.

The programs for A077246, the canonical program `A077246.P3618304788169520106` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077246 has offset 0).

The definition of A077246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077246.P3618304788169520106

`8*a(n-1)-a(n-2)` with `a(0)=2, a(1)=13`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077246

/-- `8*a(n-1)-a(n-2)` -/
def P3618304788169520106.Spec : Prop :=
  ∀ n, P3618304788169520106.a n = A077246 n

theorem P3618304788169520106.correct : P3618304788169520106.Spec := by
  intro n
  simp only [A077246]

end A077246

/-! ## A077246.P514292539446043157

`ogf((2-3x)/(1-8x+x^2))`
-/

namespace A077246.P514292539446043157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -8, 1] n

end

end A077246.P514292539446043157

namespace A077246

/-- `ogf((2-3x)/(1-8x+x^2))` -/
def P514292539446043157.Spec : Prop :=
  ∀ n, P514292539446043157.a n = A077246 n

end A077246

/-! ## A077246.P12030107791080180073

`A077248(2*n)`
-/

namespace A077246.P12030107791080180073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077248 (2 * n)

end

end A077246.P12030107791080180073

namespace A077246

/-- `A077248(2*n)` -/
def P12030107791080180073.Spec : Prop :=
  ∀ n, P12030107791080180073.a n = A077246 n

end A077246

/-! ## A077246.P11457291946282715972

`record[A077248(A014681(n))]`
-/

namespace A077246.P11457291946282715972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077248 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077246.P11457291946282715972

namespace A077246

/-- `record[A077248(A014681(n))]` -/
def P11457291946282715972.Spec : Prop :=
  ∀ n, P11457291946282715972.a n = A077246 n

end A077246

/-! ## A077246.P4834463240844491294

`A057080(n)+A001091(n)`
-/

namespace A077246.P4834463240844491294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057080 n + A001091 n

end

end A077246.P4834463240844491294

namespace A077246

/-- `A057080(n)+A001091(n)` -/
def P4834463240844491294.Spec : Prop :=
  ∀ n, P4834463240844491294.a n = A077246 n

end A077246

/-! ## A077246.P17709198276500072364

`A341927(n)+A070997(n)`
-/

namespace A077246.P17709198276500072364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341927 n + A070997 n

end

end A077246.P17709198276500072364

namespace A077246

/-- `A341927(n)+A070997(n)` -/
def P17709198276500072364.Spec : Prop :=
  ∀ n, P17709198276500072364.a n = A077246 n

end A077246

/-! ## A077246.P9149110306363504101

`A077244(n)-A057080(n)`
-/

namespace A077246.P9149110306363504101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077244 n - A057080 n

end

end A077246.P9149110306363504101

namespace A077246

/-- `A077244(n)-A057080(n)` -/
def P9149110306363504101.Spec : Prop :=
  ∀ n, P9149110306363504101.a n = A077246 n

end A077246

/-! ## A077246.P8079837266378433309

`A341927(n)+Δ[A001090(n)]`
-/

namespace A077246.P8079837266378433309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341927 n + (f1 (n + 1) - f1 n)

end

end A077246.P8079837266378433309

namespace A077246

/-- `A341927(n)+Δ[A001090(n)]` -/
def P8079837266378433309.Spec : Prop :=
  ∀ n, P8079837266378433309.a n = A077246 n

end A077246

/-! ## A077246.P9610445772263970288

`record[A077248(n)/A000034(n)]`
-/

namespace A077246.P9610445772263970288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077248 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077246.P9610445772263970288

namespace A077246

/-- `record[A077248(n)/A000034(n)]` -/
def P9610445772263970288.Spec : Prop :=
  ∀ n, P9610445772263970288.a n = (A077246 n : ℚ)

end A077246

/-! ## A077246.P13879518399059589048

`record[A077248(n)^A033999(n)]`
-/

namespace A077246.P13879518399059589048
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077248 n : ℚ) ^ (A033999 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077246.P13879518399059589048

namespace A077246

/-- `record[A077248(n)^A033999(n)]` -/
def P13879518399059589048.Spec : Prop :=
  ∀ n, P13879518399059589048.a n = (A077246 n : ℚ)

end A077246

/-! ## A077246.P7248101397141111563

`A105426(n)+A001090(n+1)`
-/

namespace A077246.P7248101397141111563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105426 n + A001090 (n + 1)

end

end A077246.P7248101397141111563

namespace A077246

/-- `A105426(n)+A001090(n+1)` -/
def P7248101397141111563.Spec : Prop :=
  ∀ n, P7248101397141111563.a n = A077246 n

end A077246

/-! ## A077246.P7878946963086299856

`A080871(2*n)+A057080(n)`
-/

namespace A077246.P7878946963086299856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080871 (2 * n) + A057080 n

end

end A077246.P7878946963086299856

namespace A077246

/-- `A080871(2*n)+A057080(n)` -/
def P7878946963086299856.Spec : Prop :=
  ∀ n, P7878946963086299856.a n = A077246 n

end A077246

/-! ## A077246.P4465097634075078925

`2*A070997(n)-A001090(n)`
-/

namespace A077246.P4465097634075078925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070997 n - A001090 n

end

end A077246.P4465097634075078925

namespace A077246

/-- `2*A070997(n)-A001090(n)` -/
def P4465097634075078925.Spec : Prop :=
  ∀ n, P4465097634075078925.a n = A077246 n

end A077246

/-! ## A077246.P3316173565079078215

`Δ[A136325(n)]-A001090(n+1)`
-/

namespace A077246.P3316173565079078215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001090 (n + 1)

end

end A077246.P3316173565079078215

namespace A077246

/-- `Δ[A136325(n)]-A001090(n+1)` -/
def P3316173565079078215.Spec : Prop :=
  ∀ n, P3316173565079078215.a n = A077246 n

end A077246

/-! ## A077246.P5367680069103711987

`A144479(n)+Δ[A144479(n)/2]`
-/

namespace A077246.P5367680069103711987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144479 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144479 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A077246.P5367680069103711987

namespace A077246

/-- `A144479(n)+Δ[A144479(n)/2]` -/
def P5367680069103711987.Spec : Prop :=
  ∀ n, P5367680069103711987.a n = (A077246 n : ℚ)

end A077246

/-! ## A077246.P14165771353890218035

`record[A077248(n)/A033999(n+2)]`
-/

namespace A077246.P14165771353890218035
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077248 n : ℚ) / (A033999 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077246.P14165771353890218035

namespace A077246

/-- `record[A077248(n)/A033999(n+2)]` -/
def P14165771353890218035.Spec : Prop :=
  ∀ n, P14165771353890218035.a n = (A077246 n : ℚ)

end A077246

/-! ## A077246.P18200428968098920610

`A177187(2*(n+1))+A105426(n)`
-/

namespace A077246.P18200428968098920610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177187 (2 * (n + 1)) + A105426 n

end

end A077246.P18200428968098920610

namespace A077246

/-- `A177187(2*(n+1))+A105426(n)` -/
def P18200428968098920610.Spec : Prop :=
  ∀ n, P18200428968098920610.a n = A077246 n

end A077246

/-! ## A077246.P10815259326851378078

`A237262(2*n+1)+A070997(n)`
-/

namespace A077246.P10815259326851378078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (2 * n + 1) + A070997 n

end

end A077246.P10815259326851378078

namespace A077246

/-- `A237262(2*n+1)+A070997(n)` -/
def P10815259326851378078.Spec : Prop :=
  ∀ n, P10815259326851378078.a n = A077246 n

end A077246

/-! ## A077246.P18140309346688476325

`A322780(2*n+1)+A001091(n)`
-/

namespace A077246.P18140309346688476325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322780 (2 * n + 1) + A001091 n

end

end A077246.P18140309346688476325

namespace A077246

/-- `A322780(2*n+1)+A001091(n)` -/
def P18140309346688476325.Spec : Prop :=
  ∀ n, P18140309346688476325.a n = A077246 n

end A077246

/-! ## A077246.P2753284914744231643

`A199336(2*n+1)+A001090(n+1)`
-/

namespace A077246.P2753284914744231643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199336 (2 * n + 1) + A001090 (n + 1)

end

end A077246.P2753284914744231643

namespace A077246

/-- `A199336(2*n+1)+A001090(n+1)` -/
def P2753284914744231643.Spec : Prop :=
  ∀ n, P2753284914744231643.a n = A077246 n

end A077246

/-!
# A077247: Combined Diophantine Chebyshev sequences A077245 and A077243.

The programs for A077247, the canonical program `A077247.P10612242558349974753` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077247 has offset 0).

The definition of A077247 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077247.P10612242558349974753

`8*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=10, a(3)=17`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077247

/-- `8*a(n-2)-a(n-4)` -/
def P10612242558349974753.Spec : Prop :=
  ∀ n, P10612242558349974753.a n = A077247 n

theorem P10612242558349974753.correct : P10612242558349974753.Spec := by
  intro n
  simp only [A077247]

end A077247

/-! ## A077247.P15240129937084209331

`∑[A040001(n)*A080871(n)]`
-/

namespace A077247.P15240129937084209331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A080871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077247.P15240129937084209331

namespace A077247

/-- `∑[A040001(n)*A080871(n)]` -/
def P15240129937084209331.Spec : Prop :=
  ∀ n, P15240129937084209331.a n = A077247 n

end A077247

/-! ## A077247.P8420626346341073399

`A103200(n+1)-A105076(round(sqrt(n²+1)))`
-/

namespace A077247.P8420626346341073399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103200 (n + 1) - A105076 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A077247.P8420626346341073399

namespace A077247

/-- `A103200(n+1)-A105076(round(sqrt(n²+1)))` -/
def P8420626346341073399.Spec : Prop :=
  ∀ n, P8420626346341073399.a n = A077247 n

end A077247

/-! ## A077247.P14405093577771471812

`A105076(n+2)-A105076(A028310(n))`
-/

namespace A077247.P14405093577771471812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105076 (n + 2) - A105076 (A028310 n).toNat

end

end A077247.P14405093577771471812

namespace A077247

/-- `A105076(n+2)-A105076(A028310(n))` -/
def P14405093577771471812.Spec : Prop :=
  ∀ n, P14405093577771471812.a n = A077247 n

end A077247

/-! ## A077247.P14121397289328050399

`∑[A000034(A028310(n)+1)*A080871(n)]`
-/

namespace A077247.P14121397289328050399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A028310 n + 1).toNat * A080871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077247.P14121397289328050399

namespace A077247

/-- `∑[A000034(A028310(n)+1)*A080871(n)]` -/
def P14121397289328050399.Spec : Prop :=
  ∀ n, P14121397289328050399.a n = A077247 n

end A077247

/-! ## A077247.P16327071089967811600

`Δ[A000034(n)*A080871(n)]`
-/

namespace A077247.P16327071089967811600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A080871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077247.P16327071089967811600

namespace A077247

/-- `Δ[A000034(n)*A080871(n)]` -/
def P16327071089967811600.Spec : Prop :=
  ∀ n, P16327071089967811600.a n = A077247 n

end A077247

/-! ## A077247.P9568651436949343554

`A199336(n+2)-A077248(n)`
-/

namespace A077247.P9568651436949343554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199336 (n + 2) - A077248 n

end

end A077247.P9568651436949343554

namespace A077247

/-- `A199336(n+2)-A077248(n)` -/
def P9568651436949343554.Spec : Prop :=
  ∀ n, P9568651436949343554.a n = A077247 n

end A077247

/-! ## A077247.P4767823399250696297

`Δ[ratio[A016116(n)]*A080871(n)]`
-/

namespace A077247.P4767823399250696297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) * (A080871 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077247.P4767823399250696297

namespace A077247

/-- `Δ[ratio[A016116(n)]*A080871(n)]` -/
def P4767823399250696297.Spec : Prop :=
  ∀ n, P4767823399250696297.a n = (A077247 n : ℚ)

end A077247

/-! ## A077247.P15770671565224418016

`Δ[A077248(n)-A177187(n+1)]`
-/

namespace A077247.P15770671565224418016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077248 n - A177187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077247.P15770671565224418016

namespace A077247

/-- `Δ[A077248(n)-A177187(n+1)]` -/
def P15770671565224418016.Spec : Prop :=
  ∀ n, P15770671565224418016.a n = A077247 n

end A077247

/-! ## A077247.P17932059639357042912

`Δ[A105076(n+1)+A105076(A028310(n))]`
-/

namespace A077247.P17932059639357042912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105076 (n + 1) + A105076 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077247.P17932059639357042912

namespace A077247

/-- `Δ[A105076(n+1)+A105076(A028310(n))]` -/
def P17932059639357042912.Spec : Prop :=
  ∀ n, P17932059639357042912.a n = A077247 n

end A077247

/-!
# A077248: Combined Diophantine Chebyshev sequences A077246 and A077244.

The programs for A077248, the canonical program `A077248.P14244209318349117416` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077248 has offset 0).

The definition of A077248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077248.P6126763635424257793

`A105045(round(sqrt(n²+1)))+A103200(n+1)`
-/

namespace A077248.P6126763635424257793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105045 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A103200 (n + 1)

end

end A077248.P6126763635424257793

namespace A077248

/-- `A105045(round(sqrt(n²+1)))+A103200(n+1)` -/
def P6126763635424257793.Spec : Prop :=
  ∀ n, P6126763635424257793.a n = A077248 n

end A077248

/-! ## A077248.P14244209318349117416

`A237262(n+1)+A070997(A004526(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A077248

/-- `A237262(n+1)+A070997(A004526(n))` -/
def P14244209318349117416.Spec : Prop :=
  ∀ n, P14244209318349117416.a n = A077248 n

theorem P14244209318349117416.correct : P14244209318349117416.Spec := by
  intro n
  simp only [A077248]

end A077248

/-! ## A077248.P13446075745255024013

`A237262(n+1)+A041023(A052928(n))`
-/

namespace A077248.P13446075745255024013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (n + 1) + A041023 (A052928 n).toNat

end

end A077248.P13446075745255024013

namespace A077248

/-- `A237262(n+1)+A041023(A052928(n))` -/
def P13446075745255024013.Spec : Prop :=
  ∀ n, P13446075745255024013.a n = A077248 n

end A077248

/-! ## A077248.P6754551969959072084

`A103200(n+1)+A105045(A000007(n)+n)`
-/

namespace A077248.P6754551969959072084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103200 (n + 1) + A105045 (A000007 n + (n : ℤ)).toNat

end

end A077248.P6754551969959072084

namespace A077248

/-- `A103200(n+1)+A105045(A000007(n)+n)` -/
def P6754551969959072084.Spec : Prop :=
  ∀ n, P6754551969959072084.a n = A077248 n

end A077248

/-! ## A077248.P13855415633378898126

`3*A237262(n+1)-A199336(n+1)`
-/

namespace A077248.P13855415633378898126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A237262 (n + 1) - A199336 (n + 1)

end

end A077248.P13855415633378898126

namespace A077248

/-- `3*A237262(n+1)-A199336(n+1)` -/
def P13855415633378898126.Spec : Prop :=
  ∀ n, P13855415633378898126.a n = A077248 n

end A077248

/-!
# A077249: Bisection (odd part) of Chebyshev sequence with Diophantine property.

The programs for A077249, the canonical program `A077249.P14730453798808408170` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077249 has offset 0).

The definition of A077249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077249.P14730453798808408170

`10*a(n-1)-a(n-2)` with `a(0)=2, a(1)=21`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077249

/-- `10*a(n-1)-a(n-2)` -/
def P14730453798808408170.Spec : Prop :=
  ∀ n, P14730453798808408170.a n = A077249 n

theorem P14730453798808408170.correct : P14730453798808408170.Spec := by
  intro n
  simp only [A077249]

end A077249

/-! ## A077249.P16262898066977809152

`ogf((2+x)/(1-10x+x^2))`
-/

namespace A077249.P16262898066977809152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -10, 1] n

end

end A077249.P16262898066977809152

namespace A077249

/-- `ogf((2+x)/(1-10x+x^2))` -/
def P16262898066977809152.Spec : Prop :=
  ∀ n, P16262898066977809152.a n = A077249 n

end A077249

/-! ## A077249.P3051538868990631668

`A077410(Δ[n²])`
-/

namespace A077249.P3051538868990631668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077410 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077249.P3051538868990631668

namespace A077249

/-- `A077410(Δ[n²])` -/
def P3051538868990631668.Spec : Prop :=
  ∀ n, P3051538868990631668.a n = A077249 n

end A077249

/-! ## A077249.P3453707356517538546

`A106331(3*(n+1))`
-/

namespace A077249.P3453707356517538546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106331 (3 * (n + 1))

end

end A077249.P3453707356517538546

namespace A077249

/-- `A106331(3*(n+1))` -/
def P3453707356517538546.Spec : Prop :=
  ∀ n, P3453707356517538546.a n = A077249 n

end A077249

/-! ## A077249.P16837386308211667811

`A138288(n)+A077251(n)`
-/

namespace A077249.P16837386308211667811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 n + A077251 n

end

end A077249.P16837386308211667811

namespace A077249

/-- `A138288(n)+A077251(n)` -/
def P16837386308211667811.Spec : Prop :=
  ∀ n, P16837386308211667811.a n = A077249 n

end A077249

/-! ## A077249.P13528409469470642246

`record[A077410(A014681(n)+1)]`
-/

namespace A077249.P13528409469470642246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077410 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077249.P13528409469470642246

namespace A077249

/-- `record[A077410(A014681(n)+1)]` -/
def P13528409469470642246.Spec : Prop :=
  ∀ n, P13528409469470642246.a n = A077249 n

end A077249

/-! ## A077249.P17211648517736491496

`record[A077410(A131452(n)+1)]`
-/

namespace A077249.P17211648517736491496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077410 (A131452 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077249.P17211648517736491496

namespace A077249

/-- `record[A077410(A131452(n)+1)]` -/
def P17211648517736491496.Spec : Prop :=
  ∀ n, P17211648517736491496.a n = A077249 n

end A077249

/-! ## A077249.P14223085465515653396

`A077251(n)+Δ[A004189(n)]`
-/

namespace A077249.P14223085465515653396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077251 n + (f1 (n + 1) - f1 n)

end

end A077249.P14223085465515653396

namespace A077249

/-- `A077251(n)+Δ[A004189(n)]` -/
def P14223085465515653396.Spec : Prop :=
  ∀ n, P14223085465515653396.a n = A077249 n

end A077249

/-! ## A077249.P12497865844723337806

`Δ[A132596(n)]-A004189(n)`
-/

namespace A077249.P12497865844723337806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A004189 n

end

end A077249.P12497865844723337806

namespace A077249

/-- `Δ[A132596(n)]-A004189(n)` -/
def P12497865844723337806.Spec : Prop :=
  ∀ n, P12497865844723337806.a n = A077249 n

end A077249

/-! ## A077249.P10861282420566902057

`A004189(n)+A001078(n+1)`
-/

namespace A077249.P10861282420566902057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n + A001078 (n + 1)

end

end A077249.P10861282420566902057

namespace A077249

/-- `A004189(n)+A001078(n+1)` -/
def P10861282420566902057.Spec : Prop :=
  ∀ n, P10861282420566902057.a n = A077249 n

end A077249

/-! ## A077249.P7659379854542135341

`A054320(n)+A004189(n+1)`
-/

namespace A077249.P7659379854542135341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n + A004189 (n + 1)

end

end A077249.P7659379854542135341

namespace A077249

/-- `A054320(n)+A004189(n+1)` -/
def P7659379854542135341.Spec : Prop :=
  ∀ n, P7659379854542135341.a n = A077249 n

end A077249

/-! ## A077249.P11645024471909629348

`A140781(n+1)+A001078(n)`
-/

namespace A077249.P11645024471909629348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140781 (n + 1) + A001078 n

end

end A077249.P11645024471909629348

namespace A077249

/-- `A140781(n+1)+A001078(n)` -/
def P11645024471909629348.Spec : Prop :=
  ∀ n, P11645024471909629348.a n = A077249 n

end A077249

/-! ## A077249.P7538236846149003242

`A041006(2*n)-A004189(n)`
-/

namespace A077249.P7538236846149003242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 (2 * n) - A004189 n

end

end A077249.P7538236846149003242

namespace A077249

/-- `A041006(2*n)-A004189(n)` -/
def P7538236846149003242.Spec : Prop :=
  ∀ n, P7538236846149003242.a n = A077249 n

end A077249

/-! ## A077249.P17387428660131617763

`2*A054320(n)-A004189(n)`
-/

namespace A077249.P17387428660131617763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054320 n - A004189 n

end

end A077249.P17387428660131617763

namespace A077249

/-- `2*A054320(n)-A004189(n)` -/
def P17387428660131617763.Spec : Prop :=
  ∀ n, P17387428660131617763.a n = A077249 n

end A077249

/-! ## A077249.P1526809287103198073

`2*A097784(n)-A098297(n)`
-/

namespace A077249.P1526809287103198073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097784 n - A098297 n

end

end A077249.P1526809287103198073

namespace A077249

/-- `2*A097784(n)-A098297(n)` -/
def P1526809287103198073.Spec : Prop :=
  ∀ n, P1526809287103198073.a n = A077249 n

end A077249

/-! ## A077249.P16574732969175812552

`∑[A001078(n+1)]-A098297(n)`
-/

namespace A077249.P16574732969175812552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A098297 n

end

end A077249.P16574732969175812552

namespace A077249

/-- `∑[A001078(n+1)]-A098297(n)` -/
def P16574732969175812552.Spec : Prop :=
  ∀ n, P16574732969175812552.a n = A077249 n

end A077249

/-! ## A077249.P9190707528971519162

`A004189(n+1)+Δ[A098297(n)]`
-/

namespace A077249.P9190707528971519162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 (n + 1) + (f1 (n + 1) - f1 n)

end

end A077249.P9190707528971519162

namespace A077249

/-- `A004189(n+1)+Δ[A098297(n)]` -/
def P9190707528971519162.Spec : Prop :=
  ∀ n, P9190707528971519162.a n = A077249 n

end A077249

/-! ## A077249.P6933638458167503072

`Δ[A080874(n+1)*A080874(n)]`
-/

namespace A077249.P6933638458167503072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080874 (n + 1) * A080874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077249.P6933638458167503072

namespace A077249

/-- `Δ[A080874(n+1)*A080874(n)]` -/
def P6933638458167503072.Spec : Prop :=
  ∀ n, P6933638458167503072.a n = A077249 n

end A077249

/-! ## A077249.P16578018474675187692

`Δ[2*A098297(n)]-A004189(n)`
-/

namespace A077249.P16578018474675187692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A004189 n

end

end A077249.P16578018474675187692

namespace A077249

/-- `Δ[2*A098297(n)]-A004189(n)` -/
def P16578018474675187692.Spec : Prop :=
  ∀ n, P16578018474675187692.a n = A077249 n

end A077249

/-! ## A077249.P1946378326328845688

`A041007(2*n+1)+A004189(n)`
-/

namespace A077249.P1946378326328845688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 (2 * n + 1) + A004189 n

end

end A077249.P1946378326328845688

namespace A077249

/-- `A041007(2*n+1)+A004189(n)` -/
def P1946378326328845688.Spec : Prop :=
  ∀ n, P1946378326328845688.a n = A077249 n

end A077249

/-!
# A077250: Bisection (odd part) of Chebyshev sequence with Diophantine property.

The programs for A077250, the canonical program `A077250.P5999661037349471145` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077250 has offset 0).

The definition of A077250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077250.P5999661037349471145

`10*a(n-1)-a(n-2)` with `a(0)=11, a(1)=103`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077250

/-- `10*a(n-1)-a(n-2)` -/
def P5999661037349471145.Spec : Prop :=
  ∀ n, P5999661037349471145.a n = A077250 n

theorem P5999661037349471145.correct : P5999661037349471145.Spec := by
  intro n
  simp only [A077250]

end A077250

/-! ## A077250.P11594088821800870876

`sqrt(25+24*A077249(n)²)`
-/

namespace A077250.P11594088821800870876
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (25 + 24 * A077249 n ^ 2 : ℝ)

end

end A077250.P11594088821800870876

namespace A077250

/-- `sqrt(25+24*A077249(n)²)` -/
def P11594088821800870876.Spec : Prop :=
  ∀ n, P11594088821800870876.a n = (A077250 n : ℝ)

end A077250

/-! ## A077250.P9997478886407111123

`ogf((11-7x)/(1-10x+x^2))`
-/

namespace A077250.P9997478886407111123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, -7] [1, -10, 1] n

end

end A077250.P9997478886407111123

namespace A077250

/-- `ogf((11-7x)/(1-10x+x^2))` -/
def P9997478886407111123.Spec : Prop :=
  ∀ n, P9997478886407111123.a n = A077250 n

end A077250

/-! ## A077250.P16720265062407150344

`A077411(Δ[n²])`
-/

namespace A077250.P16720265062407150344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077411 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077250.P16720265062407150344

namespace A077250

/-- `A077411(Δ[n²])` -/
def P16720265062407150344.Spec : Prop :=
  ∀ n, P16720265062407150344.a n = A077250 n

end A077250

/-! ## A077250.P2833846293374174213

`A106330(3*(n+1))`
-/

namespace A077250.P2833846293374174213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106330 (3 * (n + 1))

end

end A077250.P2833846293374174213

namespace A077250

/-- `A106330(3*(n+1))` -/
def P2833846293374174213.Spec : Prop :=
  ∀ n, P2833846293374174213.a n = A077250 n

end A077250

/-! ## A077250.P11939552401683078754

`A001079(n)+Δ[A157084(n)]`
-/

namespace A077250.P11939552401683078754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n + (f1 (n + 1) - f1 n)

end

end A077250.P11939552401683078754

namespace A077250

/-- `A001079(n)+Δ[A157084(n)]` -/
def P11939552401683078754.Spec : Prop :=
  ∀ n, P11939552401683078754.a n = A077250 n

end A077250

/-! ## A077250.P17247604461683253284

`A087799(n+1)+A001079(n)`
-/

namespace A077250.P17247604461683253284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087799 (n + 1) + A001079 n

end

end A077250.P17247604461683253284

namespace A077250

/-- `A087799(n+1)+A001079(n)` -/
def P17247604461683253284.Spec : Prop :=
  ∀ n, P17247604461683253284.a n = A077250 n

end A077250

/-! ## A077250.P12648723764277944549

`A054320(n+1)-A122653(n)`
-/

namespace A077250.P12648723764277944549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 (n + 1) - A122653 n

end

end A077250.P12648723764277944549

namespace A077250

/-- `A054320(n+1)-A122653(n)` -/
def P12648723764277944549.Spec : Prop :=
  ∀ n, P12648723764277944549.a n = A077250 n

end A077250

/-! ## A077250.P17376727486858694554

`A001079(n)+Δ[Δ[A098297(n)]]`
-/

namespace A077250.P17376727486858694554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098297 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n + (f1 (n + 1) - f1 n)

end

end A077250.P17376727486858694554

namespace A077250

/-- `A001079(n)+Δ[Δ[A098297(n)]]` -/
def P17376727486858694554.Spec : Prop :=
  ∀ n, P17376727486858694554.a n = A077250 n

end A077250

/-! ## A077250.P4806608202779674192

`A001079(n+1)+Δ[A122653(n)]`
-/

namespace A077250.P4806608202779674192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 (n + 1) + (f1 (n + 1) - f1 n)

end

end A077250.P4806608202779674192

namespace A077250

/-- `A001079(n+1)+Δ[A122653(n)]` -/
def P4806608202779674192.Spec : Prop :=
  ∀ n, P4806608202779674192.a n = A077250 n

end A077250

/-! ## A077250.P14058425008198937638

`Δ[2*A122653(n)]-A001079(n)`
-/

namespace A077250.P14058425008198937638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001079 n

end

end A077250.P14058425008198937638

namespace A077250

/-- `Δ[2*A122653(n)]-A001079(n)` -/
def P14058425008198937638.Spec : Prop :=
  ∀ n, P14058425008198937638.a n = A077250 n

end A077250

/-! ## A077250.P9444942877311013301

`record[A106330(n+3)%A106331(n+5)]`
-/

namespace A077250.P9444942877311013301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106330 (n + 3)) (A106331 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077250.P9444942877311013301

namespace A077250

/-- `record[A106330(n+3)%A106331(n+5)]` -/
def P9444942877311013301.Spec : Prop :=
  ∀ n, P9444942877311013301.a n = A077250 n

end A077250

/-! ## A077250.P4440996466473320114

`A080872(2*n)+2*A001079(n+1)`
-/

namespace A077250.P4440996466473320114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 (2 * n) + 2 * A001079 (n + 1)

end

end A077250.P4440996466473320114

namespace A077250

/-- `A080872(2*n)+2*A001079(n+1)` -/
def P4440996466473320114.Spec : Prop :=
  ∀ n, P4440996466473320114.a n = A077250 n

end A077250

/-! ## A077250.P15007375094181366833

`A138288(n+1)+2*A080806(2*n+1)`
-/

namespace A077250.P15007375094181366833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 (n + 1) + 2 * A080806 (2 * n + 1)

end

end A077250.P15007375094181366833

namespace A077250

/-- `A138288(n+1)+2*A080806(2*n+1)` -/
def P15007375094181366833.Spec : Prop :=
  ∀ n, P15007375094181366833.a n = A077250 n

end A077250

/-! ## A077250.P8597393936031114980

`Δ[A216073(2*n+1)]-A041006(2*n+1)`
-/

namespace A077250.P8597393936031114980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216073 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A041006 (2 * n + 1)

end

end A077250.P8597393936031114980

namespace A077250

/-- `Δ[A216073(2*n+1)]-A041006(2*n+1)` -/
def P8597393936031114980.Spec : Prop :=
  ∀ n, P8597393936031114980.a n = A077250 n

end A077250

/-! ## A077250.P15947220845571895510

`2*A077411(2*n+1)-A077411(2*n+1)`
-/

namespace A077250.P15947220845571895510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077411 (2 * n + 1) - A077411 (2 * n + 1)

end

end A077250.P15947220845571895510

namespace A077250

/-- `2*A077411(2*n+1)-A077411(2*n+1)` -/
def P15947220845571895510.Spec : Prop :=
  ∀ n, P15947220845571895510.a n = A077250 n

end A077250

/-! ## A077250.P43015433291051564

`2*A077411(2*n+1)/A000034(2*n+1)`
-/

namespace A077250.P43015433291051564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A077411 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ)

end

end A077250.P43015433291051564

namespace A077250

/-- `2*A077411(2*n+1)/A000034(2*n+1)` -/
def P43015433291051564.Spec : Prop :=
  ∀ n, P43015433291051564.a n = (A077250 n : ℚ)

end A077250

/-! ## A077250.P3809650836791053847

`A138288(n+1)+A138288(n)+A001079(n)`
-/

namespace A077250.P3809650836791053847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 (n + 1) + (A138288 n + A001079 n)

end

end A077250.P3809650836791053847

namespace A077250

/-- `A138288(n+1)+A138288(n)+A001079(n)` -/
def P3809650836791053847.Spec : Prop :=
  ∀ n, P3809650836791053847.a n = A077250 n

end A077250

/-! ## A077250.P3326193430697975649

`A001079(n+1)+A077409(n)-A001079(n)`
-/

namespace A077250.P3326193430697975649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 (n + 1) + (A077409 n - A001079 n)

end

end A077250.P3326193430697975649

namespace A077250

/-- `A001079(n+1)+A077409(n)-A001079(n)` -/
def P3326193430697975649.Spec : Prop :=
  ∀ n, P3326193430697975649.a n = A077250 n

end A077250

/-! ## A077250.P14963770368218443391

`A054320(n+1)+A001079(n)-A054320(n)`
-/

namespace A077250.P14963770368218443391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 (n + 1) + (A001079 n - A054320 n)

end

end A077250.P14963770368218443391

namespace A077250

/-- `A054320(n+1)+A001079(n)-A054320(n)` -/
def P14963770368218443391.Spec : Prop :=
  ∀ n, P14963770368218443391.a n = A077250 n

end A077250

/-!
# A077251: Bisection (even part) of Chebyshev sequence with Diophantine property.

The programs for A077251, the canonical program `A077251.P9523289927858477133` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077251 has offset 0).

The definition of A077251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077251.P9523289927858477133

`10*a(n-1)-a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077251

/-- `10*a(n-1)-a(n-2)` -/
def P9523289927858477133.Spec : Prop :=
  ∀ n, P9523289927858477133.a n = A077251 n

theorem P9523289927858477133.correct : P9523289927858477133.Spec := by
  intro n
  simp only [A077251]

end A077251

/-! ## A077251.P17615164608588153714

`sqrt((A077409(n)²-25)/24)`
-/

namespace A077251.P17615164608588153714
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A077409 n ^ 2 - 25 : ℚ) / 24 : ℝ)

end

end A077251.P17615164608588153714

namespace A077251

/-- `sqrt((A077409(n)²-25)/24)` -/
def P17615164608588153714.Spec : Prop :=
  ∀ n, P17615164608588153714.a n = (A077251 n : ℝ)

end A077251

/-! ## A077251.P16325245407028724863

`ogf((1+2x)/(1-10x+x^2))`
-/

namespace A077251.P16325245407028724863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -10, 1] n

end

end A077251.P16325245407028724863

namespace A077251

/-- `ogf((1+2x)/(1-10x+x^2))` -/
def P16325245407028724863.Spec : Prop :=
  ∀ n, P16325245407028724863.a n = A077251 n

end A077251

/-! ## A077251.P9077101649125947609

`A077410(2*n)`
-/

namespace A077251.P9077101649125947609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077410 (2 * n)

end

end A077251.P9077101649125947609

namespace A077251

/-- `A077410(2*n)` -/
def P9077101649125947609.Spec : Prop :=
  ∀ n, P9077101649125947609.a n = A077251 n

end A077251

/-! ## A077251.P15915063559504169685

`A106331(3*n+2)`
-/

namespace A077251.P15915063559504169685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106331 (3 * n + 2)

end

end A077251.P15915063559504169685

namespace A077251

/-- `A106331(3*n+2)` -/
def P15915063559504169685.Spec : Prop :=
  ∀ n, P15915063559504169685.a n = A077251 n

end A077251

/-! ## A077251.P4151511492899332180

`record[A077410(A014681(n))]`
-/

namespace A077251.P4151511492899332180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077410 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077251.P4151511492899332180

namespace A077251

/-- `record[A077410(A014681(n))]` -/
def P4151511492899332180.Spec : Prop :=
  ∀ n, P4151511492899332180.a n = A077251 n

end A077251

/-! ## A077251.P2064142255353744337

`record[A077410(A131452(n))]`
-/

namespace A077251.P2064142255353744337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077410 (A131452 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077251.P2064142255353744337

namespace A077251

/-- `record[A077410(A131452(n))]` -/
def P2064142255353744337.Spec : Prop :=
  ∀ n, P2064142255353744337.a n = A077251 n

end A077251

/-! ## A077251.P192279994875903785

`A054320(n)+A004189(n)`
-/

namespace A077251.P192279994875903785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n + A004189 n

end

end A077251.P192279994875903785

namespace A077251

/-- `A054320(n)+A004189(n)` -/
def P192279994875903785.Spec : Prop :=
  ∀ n, P192279994875903785.a n = A077251 n

end A077251

/-! ## A077251.P6350042762000301677

`A001078(n)+∑[A138288(n)]`
-/

namespace A077251.P6350042762000301677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001078 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077251.P6350042762000301677

namespace A077251

/-- `A001078(n)+∑[A138288(n)]` -/
def P6350042762000301677.Spec : Prop :=
  ∀ n, P6350042762000301677.a n = A077251 n

end A077251

/-! ## A077251.P5667929664278100236

`A004189(n)+Δ[A098297(n)]`
-/

namespace A077251.P5667929664278100236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n + (f1 (n + 1) - f1 n)

end

end A077251.P5667929664278100236

namespace A077251

/-- `A004189(n)+Δ[A098297(n)]` -/
def P5667929664278100236.Spec : Prop :=
  ∀ n, P5667929664278100236.a n = A077251 n

end A077251

/-! ## A077251.P5493399063223703147

`A004189(n+1)+A001078(n)`
-/

namespace A077251.P5493399063223703147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 (n + 1) + A001078 n

end

end A077251.P5493399063223703147

namespace A077251

/-- `A004189(n+1)+A001078(n)` -/
def P5493399063223703147.Spec : Prop :=
  ∀ n, P5493399063223703147.a n = A077251 n

end A077251

/-! ## A077251.P206531614873293443

`A259594(2*n)+A004189(n)`
-/

namespace A077251.P206531614873293443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259594 (2 * n) + A004189 n

end

end A077251.P206531614873293443

namespace A077251

/-- `A259594(2*n)+A004189(n)` -/
def P206531614873293443.Spec : Prop :=
  ∀ n, P206531614873293443.a n = A077251 n

end A077251

/-! ## A077251.P4038456552112866797

`A152448(2*n)+A122653(n)`
-/

namespace A077251.P4038456552112866797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152448 (2 * n) + A122653 n

end

end A077251.P4038456552112866797

namespace A077251

/-- `A152448(2*n)+A122653(n)` -/
def P4038456552112866797.Spec : Prop :=
  ∀ n, P4038456552112866797.a n = A077251 n

end A077251

/-! ## A077251.P8393233024120944331

`A054320(n)+A001078(n)/2`
-/

namespace A077251.P8393233024120944331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054320 n : ℚ) + (A001078 n : ℚ) / 2

end

end A077251.P8393233024120944331

namespace A077251

/-- `A054320(n)+A001078(n)/2` -/
def P8393233024120944331.Spec : Prop :=
  ∀ n, P8393233024120944331.a n = (A077251 n : ℚ)

end A077251

/-! ## A077251.P12259309056706239206

`A001079(n)+7*A004189(n)`
-/

namespace A077251.P12259309056706239206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n + 7 * A004189 n

end

end A077251.P12259309056706239206

namespace A077251

/-- `A001079(n)+7*A004189(n)` -/
def P12259309056706239206.Spec : Prop :=
  ∀ n, P12259309056706239206.a n = A077251 n

end A077251

/-! ## A077251.P2415507781357333209

`A138288(n)+floor(A004291(n)/4)`
-/

namespace A077251.P2415507781357333209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 n + ⌊(A004291 n : ℚ) / 4⌋

end

end A077251.P2415507781357333209

namespace A077251

/-- `A138288(n)+floor(A004291(n)/4)` -/
def P2415507781357333209.Spec : Prop :=
  ∀ n, P2415507781357333209.a n = A077251 n

end A077251

/-! ## A077251.P16749723874538571773

`Δ[A132596(n)]-A004189(n+1)`
-/

namespace A077251.P16749723874538571773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A004189 (n + 1)

end

end A077251.P16749723874538571773

namespace A077251

/-- `Δ[A132596(n)]-A004189(n+1)` -/
def P16749723874538571773.Spec : Prop :=
  ∀ n, P16749723874538571773.a n = A077251 n

end A077251

/-! ## A077251.P18021618909255573930

`Δ[A080873(n+1)*A080873(n)]`
-/

namespace A077251.P18021618909255573930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 (n + 1) * A080873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077251.P18021618909255573930

namespace A077251

/-- `Δ[A080873(n+1)*A080873(n)]` -/
def P18021618909255573930.Spec : Prop :=
  ∀ n, P18021618909255573930.a n = A077251 n

end A077251

/-! ## A077251.P3680141908182515566

`∑[A138288(n)]+A122652(n)/2`
-/

namespace A077251.P3680141908182515566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (A122652 n : ℚ) / 2

end

end A077251.P3680141908182515566

namespace A077251

/-- `∑[A138288(n)]+A122652(n)/2` -/
def P3680141908182515566.Spec : Prop :=
  ∀ n, P3680141908182515566.a n = (A077251 n : ℚ)

end A077251

/-! ## A077251.P15817950643062224709

`A004189(n)+Δ[A132596(n)/2]`
-/

namespace A077251.P15817950643062224709
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132596 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004189 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A077251.P15817950643062224709

namespace A077251

/-- `A004189(n)+Δ[A132596(n)/2]` -/
def P15817950643062224709.Spec : Prop :=
  ∀ n, P15817950643062224709.a n = (A077251 n : ℚ)

end A077251

/-!
# A077252: Sum of digits squared minus sum of digits of n.

The programs for A077252, the canonical program `A077252.P1424783491405040065` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077252 has offset 1).

The definition of A077252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077252.P1424783491405040065

`∑{digits}[n+1, #²-#]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077252

/-- `∑{digits}[n+1, #²-#]` -/
def P1424783491405040065.Spec : Prop :=
  ∀ n, P1424783491405040065.a n = A077252 (n + 1)

theorem P1424783491405040065.correct : P1424783491405040065.Spec := by
  intro n
  simp only [A077252, Nat.add_sub_cancel]

end A077252

/-! ## A077252.P7767238570067391967

`2*∑{digits}[n+1, C(#, 2)]`
-/

namespace A077252.P7767238570067391967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x 2).sum

end

end A077252.P7767238570067391967

namespace A077252

/-- `2*∑{digits}[n+1, C(#, 2)]` -/
def P7767238570067391967.Spec : Prop :=
  ∀ n, (P7767238570067391967.a n : ℤ) = A077252 (n + 1)

end A077252

/-! ## A077252.P16479777321531957261

`abs(∑{digits}[n+1, #*(1-#)])`
-/

namespace A077252.P16479777321531957261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℤ) * (1 - (x : ℤ))).sum|

end

end A077252.P16479777321531957261

namespace A077252

/-- `abs(∑{digits}[n+1, #*(1-#)])` -/
def P16479777321531957261.Spec : Prop :=
  ∀ n, P16479777321531957261.a n = A077252 (n + 1)

end A077252

/-! ## A077252.P12521142290922603629

`-∑{digits}[n+1, #*(1-#)]`
-/

namespace A077252.P12521142290922603629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℤ) * (1 - (x : ℤ))).sum

end

end A077252.P12521142290922603629

namespace A077252

/-- `-∑{digits}[n+1, #*(1-#)]` -/
def P12521142290922603629.Spec : Prop :=
  ∀ n, P12521142290922603629.a n = A077252 (n + 1)

end A077252

/-! ## A077252.P16664960211746243421

`A003132(n+1)-A007953(n+1)`
-/

namespace A077252.P16664960211746243421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (n + 1) - A007953 (n + 1)

end

end A077252.P16664960211746243421

namespace A077252

/-- `A003132(n+1)-A007953(n+1)` -/
def P16664960211746243421.Spec : Prop :=
  ∀ n, P16664960211746243421.a n = A077252 (n + 1)

end A077252

/-! ## A077252.P74506412623135404

`A003132(n+1)-log2(A329562(n+1))`
-/

namespace A077252.P74506412623135404
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003132 (n + 1) : ℝ) - Real.logb 2 (A329562 (n + 1) : ℝ)

end

end A077252.P74506412623135404

namespace A077252

/-- `A003132(n+1)-log2(A329562(n+1))` -/
def P74506412623135404.Spec : Prop :=
  ∀ n, P74506412623135404.a n = (A077252 (n + 1) : ℝ)

end A077252

/-! ## A077252.P229699806161808281

`A003132(n+1)-(A085563(n+1)+A085562(n+1))`
-/

namespace A077252.P229699806161808281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (n + 1) - (A085563 (n + 1) + A085562 (n + 1))

end

end A077252.P229699806161808281

namespace A077252

/-- `A003132(n+1)-(A085563(n+1)+A085562(n+1))` -/
def P229699806161808281.Spec : Prop :=
  ∀ n, P229699806161808281.a n = A077252 (n + 1)

end A077252

/-! ## A077252.P17933382344104265144

`A003132(n+1)-(A180019(n+1)+A053735(n+1))`
-/

namespace A077252.P17933382344104265144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (n + 1) - (A180019 (n + 1) + A053735 (n + 1))

end

end A077252.P17933382344104265144

namespace A077252

/-- `A003132(n+1)-(A180019(n+1)+A053735(n+1))` -/
def P17933382344104265144.Spec : Prop :=
  ∀ n, P17933382344104265144.a n = A077252 (n + 1)

end A077252

/-! ## A077252.P3549881785236158091

`A003132(n+1)-A062331(n+1)/A051801(n+1)`
-/

namespace A077252.P3549881785236158091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003132 (n + 1) : ℚ) - (A062331 (n + 1) : ℚ) / (A051801 (n + 1) : ℚ)

end

end A077252.P3549881785236158091

namespace A077252

/-- `A003132(n+1)-A062331(n+1)/A051801(n+1)` -/
def P3549881785236158091.Spec : Prop :=
  ∀ n, P3549881785236158091.a n = (A077252 (n + 1) : ℚ)

end A077252

/-! ## A077252.P3295390425611284

`A003132(n+1)-A110805(n+1)/A055642(n+1)`
-/

namespace A077252.P3295390425611284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003132 (n + 1) : ℚ) - (A110805 (n + 1) : ℚ) / (A055642 (n + 1) : ℚ)

end

end A077252.P3295390425611284

namespace A077252

/-- `A003132(n+1)-A110805(n+1)/A055642(n+1)` -/
def P3295390425611284.Spec : Prop :=
  ∀ n, P3295390425611284.a n = (A077252 (n + 1) : ℚ)

end A077252

/-! ## A077252.P14939485670759520858

`A003132(n+1)-A276716(n+1)/A047726(n+1)`
-/

namespace A077252.P14939485670759520858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003132 (n + 1) : ℚ) - (A276716 (n + 1) : ℚ) / (A047726 (n + 1) : ℚ)

end

end A077252.P14939485670759520858

namespace A077252

/-- `A003132(n+1)-A276716(n+1)/A047726(n+1)` -/
def P14939485670759520858.Spec : Prop :=
  ∀ n, P14939485670759520858.a n = (A077252 (n + 1) : ℚ)

end A077252

/-! ## A077252.P6034794514560331473

`A003132(n+1)+A007954(n+1)-A061762(n+1)`
-/

namespace A077252.P6034794514560331473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (n + 1) + (A007954 (n + 1) - A061762 (n + 1))

end

end A077252.P6034794514560331473

namespace A077252

/-- `A003132(n+1)+A007954(n+1)-A061762(n+1)` -/
def P6034794514560331473.Spec : Prop :=
  ∀ n, P6034794514560331473.a n = A077252 (n + 1)

end A077252

/-! ## A077252.P17047154133663690059

`A003132(n+1)+A055012(n+1)-A065137(n+1)`
-/

namespace A077252.P17047154133663690059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (n + 1) + (A055012 (n + 1) - A065137 (n + 1))

end

end A077252.P17047154133663690059

namespace A077252

/-- `A003132(n+1)+A055012(n+1)-A065137(n+1)` -/
def P17047154133663690059.Spec : Prop :=
  ∀ n, P17047154133663690059.a n = A077252 (n + 1)

end A077252

/-! ## A077252.P9965814945384666664

`A118881(n+1)-(A069816(n+1)+A007953(n+1))`
-/

namespace A077252.P9965814945384666664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (n + 1) - (A069816 (n + 1) + A007953 (n + 1))

end

end A077252.P9965814945384666664

namespace A077252

/-- `A118881(n+1)-(A069816(n+1)+A007953(n+1))` -/
def P9965814945384666664.Spec : Prop :=
  ∀ n, P9965814945384666664.a n = A077252 (n + 1)

end A077252

/-!
# A077253: Sum of digits squared plus sum of digits of n.

The programs for A077253, the canonical program `A077253.P14202271377230874806` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077253 has offset 1).

The definition of A077253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077253.P14202271377230874806

`∑{digits}[n+1, #²+#]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077253

/-- `∑{digits}[n+1, #²+#]` -/
def P14202271377230874806.Spec : Prop :=
  ∀ n, (P14202271377230874806.a n : ℤ) = A077253 (n + 1)

theorem P14202271377230874806.correct : P14202271377230874806.Spec := by
  intro n
  simp only [A077253, Nat.add_sub_cancel]

end A077253

/-! ## A077253.P2115052998315231180

`2*∑{digits}[n+1, C(#+1, 2)]`
-/

namespace A077253.P2115052998315231180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose (x + 1) 2).sum

end

end A077253.P2115052998315231180

namespace A077253

/-- `2*∑{digits}[n+1, C(#+1, 2)]` -/
def P2115052998315231180.Spec : Prop :=
  ∀ n, (P2115052998315231180.a n : ℤ) = A077253 (n + 1)

end A077253

/-! ## A077253.P8318965275032693204

`A007953(n+1)+A003132(n+1)`
-/

namespace A077253.P8318965275032693204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + A003132 (n + 1)

end

end A077253.P8318965275032693204

namespace A077253

/-- `A007953(n+1)+A003132(n+1)` -/
def P8318965275032693204.Spec : Prop :=
  ∀ n, P8318965275032693204.a n = A077253 (n + 1)

end A077253

/-! ## A077253.P6587472141072949601

`A003132(n+1)+log2(A329562(n+1))`
-/

namespace A077253.P6587472141072949601
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003132 (n + 1) : ℝ) + Real.logb 2 (A329562 (n + 1) : ℝ)

end

end A077253.P6587472141072949601

namespace A077253

/-- `A003132(n+1)+log2(A329562(n+1))` -/
def P6587472141072949601.Spec : Prop :=
  ∀ n, P6587472141072949601.a n = (A077253 (n + 1) : ℝ)

end A077253

/-! ## A077253.P3109359061978220164

`A003132(n+1)+A085563(n+1)+A085562(n+1)`
-/

namespace A077253.P3109359061978220164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (n + 1) + (A085563 (n + 1) + A085562 (n + 1))

end

end A077253.P3109359061978220164

namespace A077253

/-- `A003132(n+1)+A085563(n+1)+A085562(n+1)` -/
def P3109359061978220164.Spec : Prop :=
  ∀ n, P3109359061978220164.a n = A077253 (n + 1)

end A077253

/-! ## A077253.P17216747727211694392

`A003132(n+1)+A180019(n+1)+A053735(n+1)`
-/

namespace A077253.P17216747727211694392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (n + 1) + (A180019 (n + 1) + A053735 (n + 1))

end

end A077253.P17216747727211694392

namespace A077253

/-- `A003132(n+1)+A180019(n+1)+A053735(n+1)` -/
def P17216747727211694392.Spec : Prop :=
  ∀ n, P17216747727211694392.a n = A077253 (n + 1)

end A077253

/-! ## A077253.P2388372623698983783

`A003132(n+1)+A062331(n+1)/A051801(n+1)`
-/

namespace A077253.P2388372623698983783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003132 (n + 1) : ℚ) + (A062331 (n + 1) : ℚ) / (A051801 (n + 1) : ℚ)

end

end A077253.P2388372623698983783

namespace A077253

/-- `A003132(n+1)+A062331(n+1)/A051801(n+1)` -/
def P2388372623698983783.Spec : Prop :=
  ∀ n, P2388372623698983783.a n = (A077253 (n + 1) : ℚ)

end A077253

/-! ## A077253.P12100049232394226808

`A003132(n+1)+A110805(n+1)/A055642(n+1)`
-/

namespace A077253.P12100049232394226808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003132 (n + 1) : ℚ) + (A110805 (n + 1) : ℚ) / (A055642 (n + 1) : ℚ)

end

end A077253.P12100049232394226808

namespace A077253

/-- `A003132(n+1)+A110805(n+1)/A055642(n+1)` -/
def P12100049232394226808.Spec : Prop :=
  ∀ n, P12100049232394226808.a n = (A077253 (n + 1) : ℚ)

end A077253

/-! ## A077253.P6379515580039830882

`A003132(n+1)+A276716(n+1)/A047726(n+1)`
-/

namespace A077253.P6379515580039830882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003132 (n + 1) : ℚ) + (A276716 (n + 1) : ℚ) / (A047726 (n + 1) : ℚ)

end

end A077253.P6379515580039830882

namespace A077253

/-- `A003132(n+1)+A276716(n+1)/A047726(n+1)` -/
def P6379515580039830882.Spec : Prop :=
  ∀ n, P6379515580039830882.a n = (A077253 (n + 1) : ℚ)

end A077253

/-! ## A077253.P10561751793166733588

`A003132(n+1)+A061762(n+1)-A007954(n+1)`
-/

namespace A077253.P10561751793166733588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (n + 1) + (A061762 (n + 1) - A007954 (n + 1))

end

end A077253.P10561751793166733588

namespace A077253

/-- `A003132(n+1)+A061762(n+1)-A007954(n+1)` -/
def P10561751793166733588.Spec : Prop :=
  ∀ n, P10561751793166733588.a n = A077253 (n + 1)

end A077253

/-! ## A077253.P10199812426732146709

`A003132(n+1)+A065137(n+1)-A055012(n+1)`
-/

namespace A077253.P10199812426732146709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (n + 1) + (A065137 (n + 1) - A055012 (n + 1))

end

end A077253.P10199812426732146709

namespace A077253

/-- `A003132(n+1)+A065137(n+1)-A055012(n+1)` -/
def P10199812426732146709.Spec : Prop :=
  ∀ n, P10199812426732146709.a n = A077253 (n + 1)

end A077253

/-! ## A077253.P9033764852891515865

`A007953(n+1)+A118881(n+1)-A069816(n+1)`
-/

namespace A077253.P9033764852891515865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + (A118881 (n + 1) - A069816 (n + 1))

end

end A077253.P9033764852891515865

namespace A077253

/-- `A007953(n+1)+A118881(n+1)-A069816(n+1)` -/
def P9033764852891515865.Spec : Prop :=
  ∀ n, P9033764852891515865.a n = A077253 (n + 1)

end A077253

/-!
# A077254: a(n) = prime(n)^n mod n.

The programs for A077254, there is no canonical definition to state claims against.
-/

/-! ## A077254.P10534073964296290010

`((A000040(n+1)%(n+1))^(n+1))%(n+1)`
-/

namespace A077254.P10534073964296290010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000040 (n + 1)) (n + 1 : ℤ) ^ (n + 1)) (n + 1 : ℤ)

end

end A077254.P10534073964296290010

/-! ## A077254.P18381336130840231181

`((A216885(n+1)%(n+1))^(n+1))%(n+1)`
-/

namespace A077254.P18381336130840231181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A216885 (n + 1)) (n + 1 : ℤ) ^ (n + 1)) (n + 1 : ℤ)

end

end A077254.P18381336130840231181

/-! ## A077254.P9025298761660827447

`A262207(n+1)%(n+1)`
-/

namespace A077254.P9025298761660827447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262207 (n + 1)) (n + 1 : ℤ)

end

end A077254.P9025298761660827447

/-! ## A077254.P17152307120445639373

`(A000040(n+1)^(n+1))%(n+1)`
-/

namespace A077254.P17152307120445639373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) ^ (n + 1)) (n + 1 : ℤ)

end

end A077254.P17152307120445639373

/-! ## A077254.P4470656388865727469

`(record[A006530(n+2)]^(n+1))%(n+1)`
-/

namespace A077254.P4470656388865727469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ (n + 1)) (n + 1 : ℤ)

end

end A077254.P4470656388865727469

/-!
# A077255: Numbers k such that prime(k)^k == 1 (mod k).

The programs for A077255, there is no canonical definition to state claims against.
-/

/-! ## A077255.P8839733604094642167

`eq[1, A077254(n+1)]+1`
-/

namespace A077255.P8839733604094642167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077254 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A077255.P8839733604094642167

/-! ## A077255.P6932007017751480

`record[(n+2)/A077254(n+2)]`
-/

namespace A077255.P6932007017751480
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A077254 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077255.P6932007017751480

/-! ## A077255.P5554321783463205722

`A000720(A077256(n+1))`
-/

namespace A077255.P5554321783463205722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A077256 (n + 1)).toNat

end

end A077255.P5554321783463205722

/-! ## A077255.P11777646419742783412

`A061395(p?[A077256(n+1)])`
-/

namespace A077255.P11777646419742783412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A077255.P11777646419742783412

/-! ## A077255.P12246361309613225615

`A061395(or(1, A077256(n+1)))`
-/

namespace A077255.P12246361309613225615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A077256 (n + 1))).toNat

end

end A077255.P12246361309613225615

/-! ## A077255.P5903129827245695681

`A061395(2*A077256(n+1))`
-/

namespace A077255.P5903129827245695681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A077256 (n + 1)).toNat

end

end A077255.P5903129827245695681

/-! ## A077255.P10260979151739757317

`A049084(p?[A077256(n+1)])`
-/

namespace A077255.P10260979151739757317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A077255.P10260979151739757317

/-! ## A077255.P10039259800789089577

`A036234(A077256(n+1)-1)`
-/

namespace A077255.P10039259800789089577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A077256 (n + 1) - 1).toNat

end

end A077255.P10039259800789089577

/-! ## A077255.P7353627679130915582

`A049084(or(1, A077256(n+1)))`
-/

namespace A077255.P7353627679130915582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.lor 1 (A077256 (n + 1))).toNat

end

end A077255.P7353627679130915582

/-! ## A077255.P15920143069057241971

`A049084(∑{p}[A077256(n+1), #])`
-/

namespace A077255.P15920143069057241971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A077255.P15920143069057241971

/-! ## A077255.P7902050250425853495

`A049084(A077256(2*n+1-n))`
-/

namespace A077255.P7902050250425853495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A077256 (2 * n + 1 - n)).toNat

end

end A077255.P7902050250425853495

/-!
# A077256: Primes p such that p^k == 1 modulo k, where p=prime(k).

The programs for A077256, there is no canonical definition to state claims against.
-/

/-! ## A077256.P17944097620051391167

`A000040(A077255(n+1))`
-/

namespace A077256.P17944097620051391167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A077255 (n + 1)).toNat

end

end A077256.P17944097620051391167

/-! ## A077256.P13397485058979349292

`A065091(A077255(n+1)-1)`
-/

namespace A077256.P13397485058979349292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A077255 (n + 1) - 1).toNat

end

end A077256.P13397485058979349292

/-! ## A077256.P5961051081550968735

`A065091(eq[1, A077254(n+1)])`
-/

namespace A077256.P5961051081550968735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A077256.P5961051081550968735

/-! ## A077256.P10397511005592335295

`A006005(A077255(n+1)%A006567(n+1))`
-/

namespace A077256.P10397511005592335295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.tmod (A077255 (n + 1)) (A006567 (n + 1))).toNat

end

end A077256.P10397511005592335295

/-! ## A077256.P547563442972627503

`A006005(A077255(n+1))%A028993(3*n+1)`
-/

namespace A077256.P547563442972627503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (A077255 (n + 1)).toNat) (A028993 (3 * n + 1))

end

end A077256.P547563442972627503

/-! ## A077256.P9905670439184320496

`A006093(A077255(n+1))-A008683(A001097(n+1))`
-/

namespace A077256.P9905670439184320496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A077255 (n + 1)).toNat - A008683 (A001097 (n + 1)).toNat

end

end A077256.P9905670439184320496

/-! ## A077256.P9013041490716853356

`A008578(A077255(n+1)+1)`
-/

namespace A077256.P9013041490716853356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A077255 (n + 1) + 1).toNat

end

end A077256.P9013041490716853356

/-! ## A077256.P3006018457832008779

`∑{p}[A006005(A077255(n+1)), A090395(#)]`
-/

namespace A077256.P3006018457832008779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A077255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A090395 p

end

end A077256.P3006018457832008779

/-! ## A077256.P10544535004573093614

`p?[A000040(n+1)*A077254(n+1)]`
-/

namespace A077256.P10544535004573093614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A077254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077256.P10544535004573093614

/-! ## A077256.P4708068039839964866

`p?[record[A014963(n+2)]*A077254(n+1)]`
-/

namespace A077256.P4708068039839964866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A077254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077256.P4708068039839964866

/-!
# A077259: First member of the Diophantine pair (m,k) that satisfies 5*(m^2 + m) = k^2 + k; a(n) = m.

The programs for A077259, the canonical program `A077259.P8574207951338613798` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077259 has offset 0).

The definition of A077259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077259.P8574207951338613798

`18*a(n-2)-a(n-4)+8` with `a(0)=0, a(1)=2, a(2)=6, a(3)=44`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077259

/-- `18*a(n-2)-a(n-4)+8` -/
def P8574207951338613798.Spec : Prop :=
  ∀ n, P8574207951338613798.a n = A077259 n

theorem P8574207951338613798.correct : P8574207951338613798.Spec := by
  intro n
  simp only [A077259]

end A077259

/-! ## A077259.P1865150395673053047

`(A000045(A007310(n+1))-1)/2`
-/

namespace A077259.P1865150395673053047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A007310 (n + 1)).toNat - 1 : ℚ) / 2

end

end A077259.P1865150395673053047

namespace A077259

/-- `(A000045(A007310(n+1))-1)/2` -/
def P1865150395673053047.Spec : Prop :=
  ∀ n, P1865150395673053047.a n = (A077259 n : ℚ)

end A077259

/-! ## A077259.P15106564518042070271

`A351354(n+1)-1`
-/

namespace A077259.P15106564518042070271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351354 (n + 1) - 1

end

end A077259.P15106564518042070271

namespace A077259

/-- `A351354(n+1)-1` -/
def P15106564518042070271.Spec : Prop :=
  ∀ n, P15106564518042070271.a n = A077259 n

end A077259

/-! ## A077259.P4787601045609394412

`A173673(comp[∪[2*n, 3*n]]+record[(n+1)²%6+n])`
-/

namespace A077259.P4787601045609394412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % 6 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n))

end

end A077259.P4787601045609394412

namespace A077259

/-- `A173673(comp[∪[2*n, 3*n]]+record[(n+1)²%6+n])` -/
def P4787601045609394412.Spec : Prop :=
  ∀ n, P4787601045609394412.a n = A077259 n

end A077259

/-! ## A077259.P13413861529037418324

`∑[A059973(A014601(n))]`
-/

namespace A077259.P13413861529037418324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059973 (A014601 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077259.P13413861529037418324

namespace A077259

/-- `∑[A059973(A014601(n))]` -/
def P13413861529037418324.Spec : Prop :=
  ∀ n, P13413861529037418324.a n = A077259 n

end A077259

/-! ## A077259.P16338387457361423675

`record[A004695(A051724(n))]`
-/

namespace A077259.P16338387457361423675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (A051724 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077259.P16338387457361423675

namespace A077259

/-- `record[A004695(A051724(n))]` -/
def P16338387457361423675.Spec : Prop :=
  ∀ n, P16338387457361423675.a n = A077259 n

end A077259

/-! ## A077259.P11639006145207548312

`A004695(A007310(n+1))`
-/

namespace A077259.P11639006145207548312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (A007310 (n + 1)).toNat

end

end A077259.P11639006145207548312

namespace A077259

/-- `A004695(A007310(n+1))` -/
def P11639006145207548312.Spec : Prop :=
  ∀ n, P11639006145207548312.a n = A077259 n

end A077259

/-! ## A077259.P3056256224216836288

`A173673(A091999(n+1))`
-/

namespace A077259.P3056256224216836288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (A091999 (n + 1)).toNat

end

end A077259.P3056256224216836288

namespace A077259

/-- `A173673(A091999(n+1))` -/
def P3056256224216836288.Spec : Prop :=
  ∀ n, P3056256224216836288.a n = A077259 n

end A077259

/-! ## A077259.P14525988120200994763

`A105073(A267528(n+1))`
-/

namespace A077259.P14525988120200994763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105073 (A267528 (n + 1)).toNat

end

end A077259.P14525988120200994763

namespace A077259

/-- `A105073(A267528(n+1))` -/
def P14525988120200994763.Spec : Prop :=
  ∀ n, P14525988120200994763.a n = A077259 n

end A077259

/-! ## A077259.P845149674210324682

`A087953(A007494(n))-1`
-/

namespace A077259.P845149674210324682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087953 (A007494 n).toNat - 1

end

end A077259.P845149674210324682

namespace A077259

/-- `A087953(A007494(n))-1` -/
def P845149674210324682.Spec : Prop :=
  ∀ n, P845149674210324682.a n = A077259 n

end A077259

/-! ## A077259.P8981621954884749638

`A173434(A038179(n+2))`
-/

namespace A077259.P8981621954884749638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173434 (A038179 (n + 2)).toNat

end

end A077259.P8981621954884749638

namespace A077259

/-- `A173434(A038179(n+2))` -/
def P8981621954884749638.Spec : Prop :=
  ∀ n, P8981621954884749638.a n = A077259 n

end A077259

/-! ## A077259.P3982660118244588594

`A293014(A047241(n+2))`
-/

namespace A077259.P3982660118244588594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (A047241 (n + 2)).toNat

end

end A077259.P3982660118244588594

namespace A077259

/-- `A293014(A047241(n+2))` -/
def P3982660118244588594.Spec : Prop :=
  ∀ n, P3982660118244588594.a n = A077259 n

end A077259

/-! ## A077259.P9442951236521766825

`A105073(A294732(n+2))`
-/

namespace A077259.P9442951236521766825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105073 (A294732 (n + 2)).toNat

end

end A077259.P9442951236521766825

namespace A077259

/-- `A105073(A294732(n+2))` -/
def P9442951236521766825.Spec : Prop :=
  ∀ n, P9442951236521766825.a n = A077259 n

end A077259

/-! ## A077259.P2234791872062233690

`A004695(or(1, A016777(n)))`
-/

namespace A077259.P2234791872062233690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (Int.lor 1 (A016777 n)).toNat

end

end A077259.P2234791872062233690

namespace A077259

/-- `A004695(or(1, A016777(n)))` -/
def P2234791872062233690.Spec : Prop :=
  ∀ n, P2234791872062233690.a n = A077259 n

end A077259

/-! ## A077259.P11198765326615199941

`A004695(or(1, A180713(n)))`
-/

namespace A077259.P11198765326615199941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (Int.lor 1 (A180713 n)).toNat

end

end A077259.P11198765326615199941

namespace A077259

/-- `A004695(or(1, A180713(n)))` -/
def P11198765326615199941.Spec : Prop :=
  ∀ n, P11198765326615199941.a n = A077259 n

end A077259

/-! ## A077259.P15878792273420943520

`A201864(or(1, A016777(n)))`
-/

namespace A077259.P15878792273420943520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201864 (Int.lor 1 (A016777 n)).toNat

end

end A077259.P15878792273420943520

namespace A077259

/-- `A201864(or(1, A016777(n)))` -/
def P15878792273420943520.Spec : Prop :=
  ∀ n, P15878792273420943520.a n = A077259 n

end A077259

/-! ## A077259.P1735063636746359807

`A201864(A047233(n+1)+1)`
-/

namespace A077259.P1735063636746359807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201864 (A047233 (n + 1) + 1).toNat

end

end A077259.P1735063636746359807

namespace A077259

/-- `A201864(A047233(n+1)+1)` -/
def P1735063636746359807.Spec : Prop :=
  ∀ n, P1735063636746359807.a n = A077259 n

end A077259

/-! ## A077259.P6614660118782137782

`A107857(A042948(n+1))-1`
-/

namespace A077259.P6614660118782137782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107857 (A042948 (n + 1)).toNat - 1

end

end A077259.P6614660118782137782

namespace A077259

/-- `A107857(A042948(n+1))-1` -/
def P6614660118782137782.Spec : Prop :=
  ∀ n, P6614660118782137782.a n = A077259 n

end A077259

/-! ## A077259.P8257817641766540770

`A107857(A338062(n+1))-1`
-/

namespace A077259.P8257817641766540770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107857 (A338062 (n + 1)).toNat - 1

end

end A077259.P8257817641766540770

namespace A077259

/-- `A107857(A338062(n+1))-1` -/
def P8257817641766540770.Spec : Prop :=
  ∀ n, P8257817641766540770.a n = A077259 n

end A077259

/-! ## A077259.P13693931125699809186

`A173673(A016825(A007494(n)))`
-/

namespace A077259.P13693931125699809186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (A016825 (A007494 n).toNat).toNat

end

end A077259.P13693931125699809186

namespace A077259

/-- `A173673(A016825(A007494(n)))` -/
def P13693931125699809186.Spec : Prop :=
  ∀ n, P13693931125699809186.a n = A077259 n

end A077259

/-!
# A077260: Triangular numbers that are 1/5 of a triangular number.

The programs for A077260, the canonical program `A077260.P3093648028681539307` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077260 has offset 0).

The definition of A077260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077260.P3093648028681539307

`322*a(n-2)-a(n-4)+24` with `a(0)=0, a(1)=3, a(2)=21, a(3)=990`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077260

/-- `322*a(n-2)-a(n-4)+24` -/
def P3093648028681539307.Spec : Prop :=
  ∀ n, P3093648028681539307.a n = A077260 n

theorem P3093648028681539307.correct : P3093648028681539307.Spec := by
  intro n
  simp only [A077260]

end A077260

/-! ## A077260.P8137736703855245386

`A077261(n)/5`
-/

namespace A077260.P8137736703855245386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077261 n : ℚ) / 5

end

end A077260.P8137736703855245386

namespace A077260

/-- `A077261(n)/5` -/
def P8137736703855245386.Spec : Prop :=
  ∀ n, P8137736703855245386.a n = (A077260 n : ℚ)

end A077260

/-! ## A077260.P3159987355299169212

`(A000045(A007310(n+1))²-1)/8`
-/

namespace A077260.P3159987355299169212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A007310 (n + 1)).toNat ^ 2 - 1 : ℚ) / 8

end

end A077260.P3159987355299169212

namespace A077260

/-- `(A000045(A007310(n+1))²-1)/8` -/
def P3159987355299169212.Spec : Prop :=
  ∀ n, P3159987355299169212.a n = (A077260 n : ℚ)

end A077260

/-! ## A077260.P7864991934790984286

`∑[lcm(3, A049660(n))]`
-/

namespace A077260.P7864991934790984286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A049660 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077260.P7864991934790984286

namespace A077260

/-- `∑[lcm(3, A049660(n))]` -/
def P7864991934790984286.Spec : Prop :=
  ∀ n, (P7864991934790984286.a n : ℤ) = A077260 n

end A077260

/-! ## A077260.P4911418915058830347

`A225785(n+1)/4`
-/

namespace A077260.P4911418915058830347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225785 (n + 1) : ℚ) / 4

end

end A077260.P4911418915058830347

namespace A077260

/-- `A225785(n+1)/4` -/
def P4911418915058830347.Spec : Prop :=
  ∀ n, P4911418915058830347.a n = (A077260 n : ℚ)

end A077260

/-! ## A077260.P6097296481374038952

`C(A077259(n)+1, 2)`
-/

namespace A077260.P6097296481374038952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077259 n + 1).toNat 2

end

end A077260.P6097296481374038952

namespace A077260

/-- `C(A077259(n)+1, 2)` -/
def P6097296481374038952.Spec : Prop :=
  ∀ n, (P6097296481374038952.a n : ℤ) = A077260 n

end A077260

/-! ## A077260.P2224477843676642754

`C(A351354(n+1), 2)`
-/

namespace A077260.P2224477843676642754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A351354 (n + 1)).toNat 2

end

end A077260.P2224477843676642754

namespace A077260

/-- `C(A351354(n+1), 2)` -/
def P2224477843676642754.Spec : Prop :=
  ∀ n, (P2224477843676642754.a n : ℤ) = A077260 n

end A077260

/-! ## A077260.P4555574425605451564

`C(floor(A094967(3*n+1)/2)+1, 2)`
-/

namespace A077260.P4555574425605451564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(A094967 (3 * n + 1) : ℚ) / 2⌋ + 1).toNat 2

end

end A077260.P4555574425605451564

namespace A077260

/-- `C(floor(A094967(3*n+1)/2)+1, 2)` -/
def P4555574425605451564.Spec : Prop :=
  ∀ n, (P4555574425605451564.a n : ℤ) = A077260 n

end A077260

/-! ## A077260.P7981252432381562921

`A077261(n)-A225785(n+1)`
-/

namespace A077260.P7981252432381562921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077261 n - A225785 (n + 1)

end

end A077260.P7981252432381562921

namespace A077260

/-- `A077261(n)-A225785(n+1)` -/
def P7981252432381562921.Spec : Prop :=
  ∀ n, P7981252432381562921.a n = A077260 n

end A077260

/-! ## A077260.P7781983169594511982

`A351354(n+1)/2*A077259(n)`
-/

namespace A077260.P7781983169594511982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351354 (n + 1) : ℚ) / 2 * (A077259 n : ℚ)

end

end A077260.P7781983169594511982

namespace A077260

/-- `A351354(n+1)/2*A077259(n)` -/
def P7781983169594511982.Spec : Prop :=
  ∀ n, P7781983169594511982.a n = (A077260 n : ℚ)

end A077260

/-!
# A077261: Triangular numbers that are 5 times another triangular number.

The programs for A077261, the canonical program `A077261.P5826533451288904176` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077261 has offset 0).

The definition of A077261 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077261.P5826533451288904176

`5*A077260(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A077261

/-- `5*A077260(n)` -/
def P5826533451288904176.Spec : Prop :=
  ∀ n, P5826533451288904176.a n = A077261 n

theorem P5826533451288904176.correct : P5826533451288904176.Spec := by
  intro n
  simp only [A077261]

end A077261

/-! ## A077261.P12979213160439845963

`∑[lcm(3, 5*A049660(n))]`
-/

namespace A077261.P12979213160439845963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (5 * A049660 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077261.P12979213160439845963

namespace A077261

/-- `∑[lcm(3, 5*A049660(n))]` -/
def P12979213160439845963.Spec : Prop :=
  ∀ n, (P12979213160439845963.a n : ℤ) = A077261 n

end A077261

/-! ## A077261.P16225052629702640899

`5/4*A225785(n+1)`
-/

namespace A077261.P16225052629702640899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A225785 (n + 1) : ℚ)

end

end A077261.P16225052629702640899

namespace A077261

/-- `5/4*A225785(n+1)` -/
def P16225052629702640899.Spec : Prop :=
  ∀ n, P16225052629702640899.a n = (A077261 n : ℚ)

end A077261

/-! ## A077261.P6175340100396605357

`A225785(n+1)+A077260(n)`
-/

namespace A077261.P6175340100396605357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225785 (n + 1) + A077260 n

end

end A077261.P6175340100396605357

namespace A077261

/-- `A225785(n+1)+A077260(n)` -/
def P6175340100396605357.Spec : Prop :=
  ∀ n, P6175340100396605357.a n = A077261 n

end A077261

/-! ## A077261.P14734917662818439221

`(A077262(n)+A077262(n)²)/2`
-/

namespace A077261.P14734917662818439221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077262 n + A077262 n ^ 2 : ℚ) / 2

end

end A077261.P14734917662818439221

namespace A077261

/-- `(A077262(n)+A077262(n)²)/2` -/
def P14734917662818439221.Spec : Prop :=
  ∀ n, P14734917662818439221.a n = (A077261 n : ℚ)

end A077261

/-!
# A077262: Second member of the Diophantine pair (m,k) that satisfies 5*(m^2 + m) = k^2 + k; a(n) = k.

The programs for A077262, the canonical program `A077262.P10910696547349677381` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077262 has offset 0).

The definition of A077262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077262.P10910696547349677381

`18*a(n-2)-a(n-4)+8` with `a(0)=0, a(1)=5, a(2)=14, a(3)=99`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077262

/-- `18*a(n-2)-a(n-4)+8` -/
def P10910696547349677381.Spec : Prop :=
  ∀ n, P10910696547349677381.a n = A077262 n

theorem P10910696547349677381.correct : P10910696547349677381.Spec := by
  intro n
  simp only [A077262]

end A077262

/-! ## A077262.P5417472705043021761

`(sqrt(5*A000045(A007310(n+1))²-4)-1)/2`
-/

namespace A077262.P5417472705043021761
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (5 * A000045 (A007310 (n + 1)).toNat ^ 2 - 4 : ℝ) - 1) / 2

end

end A077262.P5417472705043021761

namespace A077262

/-- `(sqrt(5*A000045(A007310(n+1))²-4)-1)/2` -/
def P5417472705043021761.Spec : Prop :=
  ∀ n, P5417472705043021761.a n = (A077262 n : ℝ)

end A077262

/-! ## A077262.P3911062711852265472

`A072130(∑[n%2+1])`
-/

namespace A077262.P3911062711852265472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072130 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077262.P3911062711852265472

namespace A077262

/-- `A072130(∑[n%2+1])` -/
def P3911062711852265472.Spec : Prop :=
  ∀ n, P3911062711852265472.a n = A077262 n

end A077262

/-! ## A077262.P15890188301142225949

`A245968(or(1, 3*n+1))`
-/

namespace A077262.P15890188301142225949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245968 (Nat.lor 1 (3 * n + 1))

end

end A077262.P15890188301142225949

namespace A077262

/-- `A245968(or(1, 3*n+1))` -/
def P15890188301142225949.Spec : Prop :=
  ∀ n, P15890188301142225949.a n = A077262 n

end A077262

/-! ## A077262.P1727597252685509022

`A072130(A032766(n+1))`
-/

namespace A077262.P1727597252685509022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072130 (A032766 (n + 1)).toNat

end

end A077262.P1727597252685509022

namespace A077262

/-- `A072130(A032766(n+1))` -/
def P1727597252685509022.Spec : Prop :=
  ∀ n, P1727597252685509022.a n = A077262 n

end A077262

/-! ## A077262.P6118162071941302615

`A100886(A047233(n+1))`
-/

namespace A077262.P6118162071941302615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100886 (A047233 (n + 1)).toNat

end

end A077262.P6118162071941302615

namespace A077262

/-- `A100886(A047233(n+1))` -/
def P6118162071941302615.Spec : Prop :=
  ∀ n, P6118162071941302615.a n = A077262 n

end A077262

/-! ## A077262.P1819489313165864741

`A245968(A007310(n+1))`
-/

namespace A077262.P1819489313165864741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245968 (A007310 (n + 1)).toNat

end

end A077262.P1819489313165864741

namespace A077262

/-- `A245968(A007310(n+1))` -/
def P1819489313165864741.Spec : Prop :=
  ∀ n, P1819489313165864741.a n = A077262 n

end A077262

/-! ## A077262.P11546213590239950131

`A199935(A038179(n+2))`
-/

namespace A077262.P11546213590239950131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199935 (A038179 (n + 2)).toNat

end

end A077262.P11546213590239950131

namespace A077262

/-- `A199935(A038179(n+2))` -/
def P11546213590239950131.Spec : Prop :=
  ∀ n, P11546213590239950131.a n = A077262 n

end A077262

/-! ## A077262.P13525803420696411312

`A100886(2*A007494(n))`
-/

namespace A077262.P13525803420696411312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100886 (2 * A007494 n).toNat

end

end A077262.P13525803420696411312

namespace A077262

/-- `A100886(2*A007494(n))` -/
def P13525803420696411312.Spec : Prop :=
  ∀ n, P13525803420696411312.a n = A077262 n

end A077262

/-! ## A077262.P18220273491312628243

`A100886(A014601(n)+n)`
-/

namespace A077262.P18220273491312628243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100886 (A014601 n + (n : ℤ)).toNat

end

end A077262.P18220273491312628243

namespace A077262

/-- `A100886(A014601(n)+n)` -/
def P18220273491312628243.Spec : Prop :=
  ∀ n, P18220273491312628243.a n = A077262 n

end A077262

/-! ## A077262.P11889683308457258892

`A245968(A047233(n+1)+1)`
-/

namespace A077262.P11889683308457258892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245968 (A047233 (n + 1) + 1).toNat

end

end A077262.P11889683308457258892

namespace A077262

/-- `A245968(A047233(n+1)+1)` -/
def P11889683308457258892.Spec : Prop :=
  ∀ n, P11889683308457258892.a n = A077262 n

end A077262

/-! ## A077262.P12669614859772422259

`∩[A072130(n+1), A108014(n)]`
-/

namespace A077262.P12669614859772422259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108014 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077262.P12669614859772422259

namespace A077262

/-- `∩[A072130(n+1), A108014(n)]` -/
def P12669614859772422259.Spec : Prop :=
  ∀ n, (P12669614859772422259.a n : ℤ) = A077262 n

end A077262

/-! ## A077262.P16805935314934644153

`A100886(record[n/A087204(n+1)])`
-/

namespace A077262.P16805935314934644153
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A087204 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100886 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A077262.P16805935314934644153

namespace A077262

/-- `A100886(record[n/A087204(n+1)])` -/
def P16805935314934644153.Spec : Prop :=
  ∀ n, P16805935314934644153.a n = A077262 n

end A077262

/-! ## A077262.P15740246355974608829

`A082651(n+1)-A254627(n+1)`
-/

namespace A077262.P15740246355974608829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082651 (n + 1) - A254627 (n + 1)

end

end A077262.P15740246355974608829

namespace A077262

/-- `A082651(n+1)-A254627(n+1)` -/
def P15740246355974608829.Spec : Prop :=
  ∀ n, P15740246355974608829.a n = A077262 n

end A077262

/-! ## A077262.P3482746136773160723

`record[A087204(2*n+1)*A100886(2*n)]`
-/

namespace A077262.P3482746136773160723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 (2 * n + 1) * A100886 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077262.P3482746136773160723

namespace A077262

/-- `record[A087204(2*n+1)*A100886(2*n)]` -/
def P3482746136773160723.Spec : Prop :=
  ∀ n, P3482746136773160723.a n = A077262 n

end A077262

/-! ## A077262.P10499276564516731882

`A100886(12*n+1-A047241(3*n+1))`
-/

namespace A077262.P10499276564516731882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100886 ((12 * n + 1 : ℤ) - A047241 (3 * n + 1)).toNat

end

end A077262.P10499276564516731882

namespace A077262

/-- `A100886(12*n+1-A047241(3*n+1))` -/
def P10499276564516731882.Spec : Prop :=
  ∀ n, P10499276564516731882.a n = A077262 n

end A077262

/-! ## A077262.P15788487198254380038

`A245968(A016789(n)-A059841(n))`
-/

namespace A077262.P15788487198254380038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245968 (A016789 n - A059841 n).toNat

end

end A077262.P15788487198254380038

namespace A077262

/-- `A245968(A016789(n)-A059841(n))` -/
def P15788487198254380038.Spec : Prop :=
  ∀ n, P15788487198254380038.a n = A077262 n

end A077262

/-! ## A077262.P17581210451860777647

`(A351353(n+1)-1)/2`
-/

namespace A077262.P17581210451860777647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351353 (n + 1) - 1 : ℚ) / 2

end

end A077262.P17581210451860777647

namespace A077262

/-- `(A351353(n+1)-1)/2` -/
def P17581210451860777647.Spec : Prop :=
  ∀ n, P17581210451860777647.a n = (A077262 n : ℚ)

end A077262

/-! ## A077262.P10610622353339872604

`floor(A000032(and(1, n)+3*n+1)/2)`
-/

namespace A077262.P10610622353339872604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000032 (Nat.land 1 n + 3 * n + 1) : ℚ) / 2⌋

end

end A077262.P10610622353339872604

namespace A077262

/-- `floor(A000032(and(1, n)+3*n+1)/2)` -/
def P10610622353339872604.Spec : Prop :=
  ∀ n, P10610622353339872604.a n = A077262 n

end A077262

/-! ## A077262.P7734597315317878530

`(A000032(or(1, n+1)+2*n)-1)/2`
-/

namespace A077262.P7734597315317878530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (Nat.lor 1 (n + 1) + 2 * n) - 1 : ℚ) / 2

end

end A077262.P7734597315317878530

namespace A077262

/-- `(A000032(or(1, n+1)+2*n)-1)/2` -/
def P7734597315317878530.Spec : Prop :=
  ∀ n, P7734597315317878530.a n = (A077262 n : ℚ)

end A077262

/-!
# A077264: Table of arithmetic sequences, by antidiagonals.

The programs for A077264, there is no canonical definition to state claims against.
-/

/-! ## A077264.P14355445448987773020

`A125585(n+1)-1`
-/

namespace A077264.P14355445448987773020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125585 (n + 1) - 1

end

end A077264.P14355445448987773020

/-! ## A077264.P16227668121334045889

`A279119(2*A125585(n+1))`
-/

namespace A077264.P16227668121334045889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (2 * A125585 (n + 1)).toNat

end

end A077264.P16227668121334045889

/-! ## A077264.P205945580227317399

`(A125585(n+1)+n)%A000027(n+1)`
-/

namespace A077264.P205945580227317399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125585 (n + 1) + (n : ℤ)) (A000027 (n + 1))

end

end A077264.P205945580227317399

/-! ## A077264.P2606459593440380167

`(A125585(n+1)+A026231(n+1))%A026232(n+1)`
-/

namespace A077264.P2606459593440380167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125585 (n + 1) + A026231 (n + 1)) (A026232 (n + 1))

end

end A077264.P2606459593440380167

/-! ## A077264.P6411177255658399925

`A182630(A061579(n))`
-/

namespace A077264.P6411177255658399925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182630 (A061579 n).toNat

end

end A077264.P6411177255658399925

/-! ## A077264.P16866166163803414185

`A244895(A017317(n))+A125585(n+1)`
-/

namespace A077264.P16866166163803414185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A017317 n).toNat + A125585 (n + 1)

end

end A077264.P16866166163803414185

/-! ## A077264.P4506953254361350715

`A083800(n+1)%A125585(n+1)`
-/

namespace A077264.P4506953254361350715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A125585 (n + 1))

end

end A077264.P4506953254361350715

/-! ## A077264.P18093686944509343443

`A070198(n)%A125585(n+1)`
-/

namespace A077264.P18093686944509343443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A125585 (n + 1))

end

end A077264.P18093686944509343443

/-! ## A077264.P14698267585647175300

`A079782(n+1)%A125585(n+1)`
-/

namespace A077264.P14698267585647175300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A125585 (n + 1))

end

end A077264.P14698267585647175300

/-! ## A077264.P9339555418540219354

`A083685(n+1)%A125585(n+1)`
-/

namespace A077264.P9339555418540219354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A125585 (n + 1))

end

end A077264.P9339555418540219354

/-! ## A077264.P14221703554912874636

`A121934(n+1)%A125585(n+1)`
-/

namespace A077264.P14221703554912874636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A125585 (n + 1))

end

end A077264.P14221703554912874636

/-! ## A077264.P11385178783042247938

`A002262(A125585(n+1)+∑[n+2])`
-/

namespace A077264.P11385178783042247938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A125585 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A077264.P11385178783042247938

/-! ## A077264.P9622175161785125722

`A030494(n+1)%A125585(n+1)`
-/

namespace A077264.P9622175161785125722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A125585 (n + 1))

end

end A077264.P9622175161785125722

/-! ## A077264.P9587939754576328613

`A072828(n+1)%A125585(n+1)`
-/

namespace A077264.P9587939754576328613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A125585 (n + 1))

end

end A077264.P9587939754576328613

/-! ## A077264.P9756491699651096832

`A086520(A125585(n+1)²)`
-/

namespace A077264.P9756491699651096832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A125585 (n + 1) ^ 2).toNat

end

end A077264.P9756491699651096832

/-!
# A077265: Number of cycles in the n-th order prism graph.

The programs for A077265, the canonical program `A077265.P7835826173415066412` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077265 has offset 3).

The definition of A077265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077265.P7835826173415066412

`2^(n+3)+(n+3)*(n+2)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077265

/-- `2^(n+3)+(n+3)*(n+2)` -/
def P7835826173415066412.Spec : Prop :=
  ∀ n, (P7835826173415066412.a n : ℤ) = A077265 (n + 3)

theorem P7835826173415066412.correct : P7835826173415066412.Spec := by
  intro n
  simp only [A077265, Nat.add_sub_cancel]

end A077265

/-! ## A077265.P17240054061733934774

`2*A132109(n+2)`
-/

namespace A077265.P17240054061733934774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132109 (n + 2)

end

end A077265.P17240054061733934774

namespace A077265

/-- `2*A132109(n+2)` -/
def P17240054061733934774.Spec : Prop :=
  ∀ n, P17240054061733934774.a n = A077265 (n + 3)

end A077265

/-! ## A077265.P11413836394900553586

`2*(a(n-1)-(∑[n]-1))` with `a(0)=14`
-/

namespace A077265.P11413836394900553586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  2 * (a (n - 1) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1))

end

end A077265.P11413836394900553586

namespace A077265

/-- `2*(a(n-1)-(∑[n]-1))` -/
def P11413836394900553586.Spec : Prop :=
  ∀ n, P11413836394900553586.a n = A077265 (n + 3)

end A077265

/-! ## A077265.P7615803871716393426

`or(2^(n+3), lcm(n+2, n+3))`
-/

namespace A077265.P7615803871716393426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 ^ (n + 3)) (Nat.lcm (n + 2) (n + 3))

end

end A077265.P7615803871716393426

namespace A077265

/-- `or(2^(n+3), lcm(n+2, n+3))` -/
def P7615803871716393426.Spec : Prop :=
  ∀ n, (P7615803871716393426.a n : ℤ) = A077265 (n + 3)

end A077265

/-! ## A077265.P5019184827161422293

`or((n+2)²+n+2, 2^(n+3))`
-/

namespace A077265.P5019184827161422293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor ((n + 2) ^ 2 + (n + 2)) (2 ^ (n + 3))

end

end A077265.P5019184827161422293

namespace A077265

/-- `or((n+2)²+n+2, 2^(n+3))` -/
def P5019184827161422293.Spec : Prop :=
  ∀ n, (P5019184827161422293.a n : ℤ) = A077265 (n + 3)

end A077265

/-! ## A077265.P5189452604294836691

`xor((n+2)²+n+2, 2^(n+3))`
-/

namespace A077265.P5189452604294836691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor ((n + 2) ^ 2 + (n + 2)) (2 ^ (n + 3))

end

end A077265.P5189452604294836691

namespace A077265

/-- `xor((n+2)²+n+2, 2^(n+3))` -/
def P5189452604294836691.Spec : Prop :=
  ∀ n, (P5189452604294836691.a n : ℤ) = A077265 (n + 3)

end A077265

/-! ## A077265.P5421521798979518497

`A290699(n+3)`
-/

namespace A077265.P5421521798979518497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290699 (n + 3)

end

end A077265.P5421521798979518497

namespace A077265

/-- `A290699(n+3)` -/
def P5421521798979518497.Spec : Prop :=
  ∀ n, P5421521798979518497.a n = A077265 (n + 3)

end A077265

/-! ## A077265.P14497546658189491227

`record[A290699(abs(3-n))]`
-/

namespace A077265.P14497546658189491227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290699 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077265.P14497546658189491227

namespace A077265

/-- `record[A290699(abs(3-n))]` -/
def P14497546658189491227.Spec : Prop :=
  ∀ n, P14497546658189491227.a n = A077265 (n + 3)

end A077265

/-! ## A077265.P5747159600695497684

`2*Δ[A116725(n+3)]`
-/

namespace A077265.P5747159600695497684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116725 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A077265.P5747159600695497684

namespace A077265

/-- `2*Δ[A116725(n+3)]` -/
def P5747159600695497684.Spec : Prop :=
  ∀ n, P5747159600695497684.a n = A077265 (n + 3)

end A077265

/-! ## A077265.P3952327501994169815

`2*(A335439(n+3)+1)`
-/

namespace A077265.P3952327501994169815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A335439 (n + 3) + 1)

end

end A077265.P3952327501994169815

namespace A077265

/-- `2*(A335439(n+3)+1)` -/
def P3952327501994169815.Spec : Prop :=
  ∀ n, P3952327501994169815.a n = A077265 (n + 3)

end A077265

/-! ## A077265.P11362532365869198030

`2*(A116713(n+3)+2)`
-/

namespace A077265.P11362532365869198030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A116713 (n + 3) + 2)

end

end A077265.P11362532365869198030

namespace A077265

/-- `2*(A116713(n+3)+2)` -/
def P11362532365869198030.Spec : Prop :=
  ∀ n, P11362532365869198030.a n = A077265 (n + 3)

end A077265

/-! ## A077265.P11192915374293726215

`2*(A132925(n+2)+n+3)`
-/

namespace A077265.P11192915374293726215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A132925 (n + 2) + (n + 3 : ℤ))

end

end A077265.P11192915374293726215

namespace A077265

/-- `2*(A132925(n+2)+n+3)` -/
def P11192915374293726215.Spec : Prop :=
  ∀ n, P11192915374293726215.a n = A077265 (n + 3)

end A077265

/-!
# A077266: Triangle of number of zeros when n is written in base k (2 <= k <= n).

The programs for A077266, there is no canonical definition to state claims against.
-/

/-! ## A077266.P10391551389848354818

`∑{digits}[A004053(n+2), A000007(#)]`
-/

namespace A077266.P10391551389848354818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004053 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A077266.P10391551389848354818

/-! ## A077266.P8766738476941746661

`∑{digits}[A004053(n+2), A010894(#)]`
-/

namespace A077266.P8766738476941746661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004053 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A010894 (x + 21)).sum

end

end A077266.P8766738476941746661

/-! ## A077266.P11590904819695239348

`∑{digits}[A004053(n+2), A015161(#)]`
-/

namespace A077266.P11590904819695239348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004053 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015161 x).sum

end

end A077266.P11590904819695239348

/-! ## A077266.P9180835954121959328

`∑{digits}[A004053(n+2), A015868(#)]`
-/

namespace A077266.P9180835954121959328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004053 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015868 x).sum

end

end A077266.P9180835954121959328

/-! ## A077266.P4048292631864111925

`∑{digits}[A004053(n+2), A018895(#)]`
-/

namespace A077266.P4048292631864111925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004053 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A018895 x).sum

end

end A077266.P4048292631864111925

/-! ## A077266.P1755410498642943128

`∑{digits}[A004053(n+2), A112316(#)]`
-/

namespace A077266.P1755410498642943128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004053 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A112316 x).sum

end

end A077266.P1755410498642943128

/-! ## A077266.P15485389639639748326

`∑{digits}[A004053(n+2), A000038(#)/2]`
-/

namespace A077266.P15485389639639748326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004053 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (A000038 x : ℚ) / 2).sum

end

end A077266.P15485389639639748326

/-! ## A077266.P79886999386258615

`A060143(∑{digits}[A004053(n+2), A000038(#)])`
-/

namespace A077266.P79886999386258615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004053 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000038 x).sum.toNat

end

end A077266.P79886999386258615

/-! ## A077266.P7087828006963849936

`A055641(A004053(n+2))`
-/

namespace A077266.P7087828006963849936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A004053 (n + 2)).toNat

end

end A077266.P7087828006963849936

/-!
# A077267: Number of zeros in base-3 expansion of n.

The programs for A077267, the canonical program `A077267.P10656974449840595018` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077267 has offset 0).

The definition of A077267 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077267.P10656974449840595018

`A079978(n)+a(floor(n/3))` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A077267

/-- `A079978(n)+a(floor(n/3))` -/
def P10656974449840595018.Spec : Prop :=
  ∀ n, P10656974449840595018.a n = A077267 n

theorem P10656974449840595018.correct : P10656974449840595018.Spec := by
  intro n
  simp only [A077267]

end A077267

/-! ## A077267.P7506844305663962353

`A023416(A289831(n))`
-/

namespace A077267.P7506844305663962353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A289831 n).toNat

end

end A077267.P7506844305663962353

namespace A077267

/-- `A023416(A289831(n))` -/
def P7506844305663962353.Spec : Prop :=
  ∀ n, P7506844305663962353.a n = A077267 n

end A077267

/-! ## A077267.P3596458783782756023

`A134023(abs(A117966(n)))`
-/

namespace A077267.P3596458783782756023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134023 |A117966 n|.toNat

end

end A077267.P3596458783782756023

namespace A077267

/-- `A134023(abs(A117966(n)))` -/
def P3596458783782756023.Spec : Prop :=
  ∀ n, P3596458783782756023.a n = A077267 n

end A077267

/-! ## A077267.P8547779258470028770

`A081604(n)-A160384(n)`
-/

namespace A077267.P8547779258470028770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n - A160384 n

end

end A077267.P8547779258470028770

namespace A077267

/-- `A081604(n)-A160384(n)` -/
def P8547779258470028770.Spec : Prop :=
  ∀ n, P8547779258470028770.a n = A077267 n

end A077267

/-! ## A077267.P10514092644903575174

`∑{digits}[A343810(n), A281441(#)]`
-/

namespace A077267.P10514092644903575174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A281441 x).sum

end

end A077267.P10514092644903575174

namespace A077267

/-- `∑{digits}[A343810(n), A281441(#)]` -/
def P10514092644903575174.Spec : Prop :=
  ∀ n, P10514092644903575174.a n = A077267 n

end A077267

/-! ## A077267.P16032427068994751232

`∑{digits}[A343810(n), A281442(#)]`
-/

namespace A077267.P16032427068994751232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A281442 x).sum

end

end A077267.P16032427068994751232

namespace A077267

/-- `∑{digits}[A343810(n), A281442(#)]` -/
def P16032427068994751232.Spec : Prop :=
  ∀ n, P16032427068994751232.a n = A077267 n

end A077267

/-! ## A077267.P15796713734857420869

`∑{digits}[A343810(n), A281457(#)]`
-/

namespace A077267.P15796713734857420869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A281457 x).sum

end

end A077267.P15796713734857420869

namespace A077267

/-- `∑{digits}[A343810(n), A281457(#)]` -/
def P15796713734857420869.Spec : Prop :=
  ∀ n, P15796713734857420869.a n = A077267 n

end A077267

/-! ## A077267.P3263871112445106153

`∑{digits}[A343810(n), A281458(#)]`
-/

namespace A077267.P3263871112445106153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A281458 x).sum

end

end A077267.P3263871112445106153

namespace A077267

/-- `∑{digits}[A343810(n), A281458(#)]` -/
def P3263871112445106153.Spec : Prop :=
  ∀ n, P3263871112445106153.a n = A077267 n

end A077267

/-! ## A077267.P6233503532163356286

`∑{digits}[A007089(n), 1-A000045(#)]`
-/

namespace A077267.P6233503532163356286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A000045 x).sum

end

end A077267.P6233503532163356286

namespace A077267

/-- `∑{digits}[A007089(n), 1-A000045(#)]` -/
def P6233503532163356286.Spec : Prop :=
  ∀ n, P6233503532163356286.a n = A077267 n

end A077267

/-! ## A077267.P11632306530368766655

`∑{digits}[A007089(n), 1-A000120(#)]`
-/

namespace A077267.P11632306530368766655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A000120 x).sum

end

end A077267.P11632306530368766655

namespace A077267

/-- `∑{digits}[A007089(n), 1-A000120(#)]` -/
def P11632306530368766655.Spec : Prop :=
  ∀ n, P11632306530368766655.a n = A077267 n

end A077267

/-! ## A077267.P7478312344495435642

`∑{digits}[A007089(n), 1-A001045(#)]`
-/

namespace A077267.P7478312344495435642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A001045 x).sum

end

end A077267.P7478312344495435642

namespace A077267

/-- `∑{digits}[A007089(n), 1-A001045(#)]` -/
def P7478312344495435642.Spec : Prop :=
  ∀ n, P7478312344495435642.a n = A077267 n

end A077267

/-! ## A077267.P10618233947871209745

`∑{digits}[A007089(n), 1-A110654(#)]`
-/

namespace A077267.P10618233947871209745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A110654 x).sum

end

end A077267.P10618233947871209745

namespace A077267

/-- `∑{digits}[A007089(n), 1-A110654(#)]` -/
def P10618233947871209745.Spec : Prop :=
  ∀ n, P10618233947871209745.a n = A077267 n

end A077267

/-! ## A077267.P9232970521638101615

`∑{digits}[A007089(n), A283988(#+2)]`
-/

namespace A077267.P9232970521638101615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A283988 (x + 2)).sum

end

end A077267.P9232970521638101615

namespace A077267

/-- `∑{digits}[A007089(n), A283988(#+2)]` -/
def P9232970521638101615.Spec : Prop :=
  ∀ n, P9232970521638101615.a n = A077267 n

end A077267

/-! ## A077267.P6942346520293899003

`∑{digits}[A007089(n), A002620(2-#)]`
-/

namespace A077267.P6942346520293899003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A002620 (2 - x)).sum

end

end A077267.P6942346520293899003

namespace A077267

/-- `∑{digits}[A007089(n), A002620(2-#)]` -/
def P6942346520293899003.Spec : Prop :=
  ∀ n, P6942346520293899003.a n = A077267 n

end A077267

/-! ## A077267.P6031359473790789183

`∑{digits}[A007089(n), A004526(2-#)]`
-/

namespace A077267.P6031359473790789183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004526 (2 - x)).sum

end

end A077267.P6031359473790789183

namespace A077267

/-- `∑{digits}[A007089(n), A004526(2-#)]` -/
def P6031359473790789183.Spec : Prop :=
  ∀ n, P6031359473790789183.a n = A077267 n

end A077267

/-! ## A077267.P3120093464053716407

`∑{digits}[A007089(n), 2-A109495(#)]`
-/

namespace A077267.P3120093464053716407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 2 - A109495 x).sum

end

end A077267.P3120093464053716407

namespace A077267

/-- `∑{digits}[A007089(n), 2-A109495(#)]` -/
def P3120093464053716407.Spec : Prop :=
  ∀ n, P3120093464053716407.a n = A077267 n

end A077267

/-! ## A077267.P11159165146251306213

`∑{digits}[A007089(n), A000108(#)-#]`
-/

namespace A077267.P11159165146251306213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000108 x - (x : ℤ)).sum

end

end A077267.P11159165146251306213

namespace A077267

/-- `∑{digits}[A007089(n), A000108(#)-#]` -/
def P11159165146251306213.Spec : Prop :=
  ∀ n, P11159165146251306213.a n = A077267 n

end A077267

/-! ## A077267.P12805869085261910952

`∑{digits}[A007089(n), A001519(#)-#]`
-/

namespace A077267.P12805869085261910952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001519 x - (x : ℤ)).sum

end

end A077267.P12805869085261910952

namespace A077267

/-- `∑{digits}[A007089(n), A001519(#)-#]` -/
def P12805869085261910952.Spec : Prop :=
  ∀ n, P12805869085261910952.a n = A077267 n

end A077267

/-! ## A077267.P2951010826713526254

`∑{digits}[A007089(n), A011782(#)-#]`
-/

namespace A077267.P2951010826713526254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011782 x - (x : ℤ)).sum

end

end A077267.P2951010826713526254

namespace A077267

/-- `∑{digits}[A007089(n), A011782(#)-#]` -/
def P2951010826713526254.Spec : Prop :=
  ∀ n, P2951010826713526254.a n = A077267 n

end A077267

/-! ## A077267.P1092405746497754324

`∑{digits}[A007089(n), A027337(#)-#]`
-/

namespace A077267.P1092405746497754324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A027337 x - (x : ℤ)).sum

end

end A077267.P1092405746497754324

namespace A077267

/-- `∑{digits}[A007089(n), A027337(#)-#]` -/
def P1092405746497754324.Spec : Prop :=
  ∀ n, P1092405746497754324.a n = A077267 n

end A077267

/-!
# A077268: Number of bases in which n requires at least one zero to be written.

The programs for A077268, there is no canonical definition to state claims against.
-/

/-! ## A077268.P18156964748311943515

`∑{e}[lcm(A070879(n), A126646(n)), #]`
-/

namespace A077268.P18156964748311943515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A070879 n) (A126646 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A077268.P18156964748311943515

/-! ## A077268.P15618600174374223372

`∑{e}[lcm(A286521(n), A288003(n+1)), #]`
-/

namespace A077268.P15618600174374223372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A286521 n) (A288003 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A077268.P15618600174374223372

/-! ## A077268.P18147610824873654008

`A001222(A070879(n)*A286521(n))`
-/

namespace A077268.P18147610824873654008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A070879 n * A286521 n).toNat

end

end A077268.P18147610824873654008

/-! ## A077268.P14739427198639242603

`A001221(A078008(n+3)-A130196(n))`
-/

namespace A077268.P14739427198639242603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A078008 (n + 3) - A130196 n).toNat

end

end A077268.P14739427198639242603

/-! ## A077268.P3958234826507619288

`A001222(A052551(2*n)*A069010(n+1))`
-/

namespace A077268.P3958234826507619288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A052551 (2 * n) * A069010 (n + 1)).toNat

end

end A077268.P3958234826507619288

/-!
# A077269: Number of connected squarefree graphs on n nodes.

The programs for A077269, there is no canonical definition to state claims against.
-/

/-! ## A077269.P4810123713449647766

`A300756(∑[n+1]+1)`
-/

namespace A077269.P4810123713449647766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300756 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A077269.P4810123713449647766

/-! ## A077269.P14226185460760146084

`record[A300756(n+1)]^floor(atan(n))`
-/

namespace A077269.P14226185460760146084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300756 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A077269.P14226185460760146084

/-! ## A077269.P12884703814262015447

`or(char[1], A300756(A000124(n+1)))`
-/

namespace A077269.P12884703814262015447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A300756 (A000124 (n + 1)).toNat)

end

end A077269.P12884703814262015447

/-! ## A077269.P2337154844231571765

`A000007(n)+record[A300756(n+1)]`
-/

namespace A077269.P2337154844231571765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077269.P2337154844231571765

/-! ## A077269.P6065751238611559557

`A058348(n)+record[A300756(n+1)]`
-/

namespace A077269.P6065751238611559557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077269.P6065751238611559557

/-!
# A077272: a(n) = Sum_{d|n} d^2*2^(d-1)*(n/d-1) for n > 0.

The programs for A077272, the canonical program `A077272.P386906752104334311` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077272 has offset 0).

The definition of A077272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077272.P386906752104334311

`∑{d}[n, (n-#)*A001787(#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A077272

/-- `∑{d}[n, (n-#)*A001787(#)]` -/
def P386906752104334311.Spec : Prop :=
  ∀ n, P386906752104334311.a n = A077272 n

theorem P386906752104334311.correct : P386906752104334311.Spec := by
  intro n
  simp only [A077272]

end A077272

/-! ## A077272.P6308333070820437192

`∑{d}[n, (n-#)*#*A011782(#)]`
-/

namespace A077272.P6308333070820437192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n : ℤ) - (d : ℤ)) * ((d : ℤ) * A011782 d)

end

end A077272.P6308333070820437192

namespace A077272

/-- `∑{d}[n, (n-#)*#*A011782(#)]` -/
def P6308333070820437192.Spec : Prop :=
  ∀ n, P6308333070820437192.a n = A077272 n

end A077272

/-!
# A077273: Ordered differences without repetitions between two successive powers of a prime but not a prime (A025475).

The programs for A077273, there is no canonical definition to state claims against.
-/

/-! ## A077273.P16034822325621457008

`lt[0, char[A053707(n+1)]]`
-/

namespace A077273.P16034822325621457008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A077273.P16034822325621457008

/-! ## A077273.P4740037693800747543

`eq[1, char[Δ[A025475(n+1)]]]`
-/

namespace A077273.P4740037693800747543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077273.P4740037693800747543

/-! ## A077273.P17673271949502234256

`eq[1, char[Δ[A249435(n+1)]]]`
-/

namespace A077273.P17673271949502234256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077273.P17673271949502234256

/-! ## A077273.P18339022127094172480

`eq[1, char[A025475(n+2)-A025475(n+1)]]`
-/

namespace A077273.P18339022127094172480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 2) - A025475 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077273.P18339022127094172480

/-!
# A077279: Last prime of n-th group of successive primes in A073684.

The programs for A077279, there is no canonical definition to state claims against.
-/

/-! ## A077279.P10246078147649267701

`A000040(∑[A073684(n+1)])`
-/

namespace A077279.P10246078147649267701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077279.P10246078147649267701

/-! ## A077279.P8747990119980989127

`A006005(∑[A073684(n+1)])`
-/

namespace A077279.P8747990119980989127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077279.P8747990119980989127

/-! ## A077279.P13374454907600114676

`A079068(A073683(n+2))`
-/

namespace A077279.P13374454907600114676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A073683 (n + 2)).toNat

end

end A077279.P13374454907600114676

/-! ## A077279.P17279859457620945008

`A252463(p?[A073683(n+2)])`
-/

namespace A077279.P17279859457620945008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073683 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A077279.P17279859457620945008

/-!
# A077280: Sum of next a(n) successive primes is a square.

The programs for A077280, there is no canonical definition to state claims against.
-/

/-! ## A077280.P11495072165293228691

`Δ[A000720(A077282(n+1))]`
-/

namespace A077280.P11495072165293228691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A077282 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077280.P11495072165293228691

/-!
# A077283: Last prime in n-th group in A077280.

The programs for A077283, there is no canonical definition to state claims against.
-/

/-! ## A077283.P14609840893581321692

`A000040(∑[A077280(n+1)])`
-/

namespace A077283.P14609840893581321692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077283.P14609840893581321692

/-! ## A077283.P17862871645122944476

`A006005(∑[A077280(n+1)])`
-/

namespace A077283.P17862871645122944476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077283.P17862871645122944476

/-! ## A077283.P15134257324822398573

`A006093(∑[A077280(n+1)])+1`
-/

namespace A077283.P15134257324822398573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A077283.P15134257324822398573

/-!
# A077285: Number of partitions of n with designated summands.

The programs for A077285, there is no canonical definition to state claims against.
-/

/-! ## A077285.P6937014832328728854

`A290216(2*n²)+n`
-/

namespace A077285.P6937014832328728854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290216 (2 * n ^ 2) + (n : ℤ)

end

end A077285.P6937014832328728854

/-! ## A077285.P6539164353495143359

`abs(A001489(n)-A290216(2*n²))`
-/

namespace A077285.P6539164353495143359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A290216 (2 * n ^ 2)|

end

end A077285.P6539164353495143359

/-! ## A077285.P13154336196890588774

`n-(floor(acot(A136004(n)))-A290216(2*n²))`
-/

namespace A077285.P13154336196890588774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (⌊SequenceMachineLib.acot (A136004 n : ℝ)⌋ - A290216 (2 * n ^ 2))

end

end A077285.P13154336196890588774

/-! ## A077285.P16451869674337487063

`∑[A010673(n)]-(n%2-A290216(2*n²))`
-/

namespace A077285.P16451869674337487063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((n % 2 : ℕ) : ℤ) - A290216 (2 * n ^ 2))

end

end A077285.P16451869674337487063

/-! ## A077285.P5139698936936345596

`A290216(∑[4*n])`
-/

namespace A077285.P5139698936936345596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290216 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077285.P5139698936936345596

/-! ## A077285.P8528646738073172061

`or(char[1], A290216(A046092(n)))`
-/

namespace A077285.P8528646738073172061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A290216 (A046092 n).toNat)

end

end A077285.P8528646738073172061

/-! ## A077285.P9578180554417903606

`gcd(A000038(n), A290216(A046092(n)))`
-/

namespace A077285.P9578180554417903606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A290216 (A046092 n).toNat)

end

end A077285.P9578180554417903606

/-! ## A077285.P12059292978685043962

`A033999(n)²*A290216(A046092(n))`
-/

namespace A077285.P12059292978685043962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A290216 (A046092 n).toNat

end

end A077285.P12059292978685043962

/-! ## A077285.P10947699097996521370

`A290216(A046092(n))%A000032(n+2)`
-/

namespace A077285.P10947699097996521370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290216 (A046092 n).toNat) (A000032 (n + 2))

end

end A077285.P10947699097996521370

/-! ## A077285.P9137345881200357302

`A007318(C(2, n))*A290216(A046092(n))`
-/

namespace A077285.P9137345881200357302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A290216 (A046092 n).toNat

end

end A077285.P9137345881200357302

/-!
# A077286: Primes which are not the difference between two successive perfect powers (A001597).

The programs for A077286, there is no canonical definition to state claims against.
-/

/-! ## A077286.P11465879483538691606

`p?[A023057(A233583(n+1))]`
-/

namespace A077286.P11465879483538691606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023057 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077286.P11465879483538691606

/-! ## A077286.P14040271660288938360

`∩[A023057(n+1), A087685(n+1)]`
-/

namespace A077286.P14040271660288938360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077286.P14040271660288938360

/-! ## A077286.P18359403364536444347

`∩[A023057(n+1), A095737(n+1)]`
-/

namespace A077286.P18359403364536444347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077286.P18359403364536444347

/-! ## A077286.P2261313164899328973

`∩[A023057(n+1), A125771(n+1)]`
-/

namespace A077286.P2261313164899328973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077286.P2261313164899328973

/-!
# A077288: First member of the Diophantine pair (m,k) that satisfies 6(m^2 + m) = k^2 + k: a(n) = m.

The programs for A077288, the canonical program `A077288.P17818442123973628716` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077288 has offset 0).

The definition of A077288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077288.P17818442123973628716

`10*a(n-2)-a(n-4)+4` with `a(0)=0, a(1)=1, a(2)=3, a(3)=14`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077288

/-- `10*a(n-2)-a(n-4)+4` -/
def P17818442123973628716.Spec : Prop :=
  ∀ n, P17818442123973628716.a n = A077288 n

theorem P17818442123973628716.correct : P17818442123973628716.Spec := by
  intro n
  simp only [A077288]

end A077288

/-! ## A077288.P1818756337193246941

`A181442(n)-1`
-/

namespace A077288.P1818756337193246941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181442 n - 1

end

end A077288.P1818756337193246941

namespace A077288

/-- `A181442(n)-1` -/
def P1818756337193246941.Spec : Prop :=
  ∀ n, P1818756337193246941.a n = A077288 n

end A077288

/-! ## A077288.P5646978935293987619

`A328310(A033216(n+1))+A181442(n)`
-/

namespace A077288.P5646978935293987619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328310 (A033216 (n + 1)).toNat + A181442 n

end

end A077288.P5646978935293987619

namespace A077288

/-- `A328310(A033216(n+1))+A181442(n)` -/
def P5646978935293987619.Spec : Prop :=
  ∀ n, P5646978935293987619.a n = A077288 n

end A077288

/-! ## A077288.P681531887610972886

`floor(A080806(n+1)/2)`
-/

namespace A077288.P681531887610972886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080806 (n + 1) : ℚ) / 2⌋

end

end A077288.P681531887610972886

namespace A077288

/-- `floor(A080806(n+1)/2)` -/
def P681531887610972886.Spec : Prop :=
  ∀ n, P681531887610972886.a n = A077288 n

end A077288

/-! ## A077288.P13781775758528898235

`A080806(n+1)%A181442(n)`
-/

namespace A077288.P13781775758528898235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080806 (n + 1)) (A181442 n)

end

end A077288.P13781775758528898235

namespace A077288

/-- `A080806(n+1)%A181442(n)` -/
def P13781775758528898235.Spec : Prop :=
  ∀ n, P13781775758528898235.a n = A077288 n

end A077288

/-! ## A077288.P15025939543570121681

`(A131093(A032766(n+1))-1)/2`
-/

namespace A077288.P15025939543570121681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131093 (A032766 (n + 1)).toNat - 1 : ℚ) / 2

end

end A077288.P15025939543570121681

namespace A077288

/-- `(A131093(A032766(n+1))-1)/2` -/
def P15025939543570121681.Spec : Prop :=
  ∀ n, P15025939543570121681.a n = (A077288 n : ℚ)

end A077288

/-! ## A077288.P4996939620781520561

`A129445(n+2)-A129444(n+3)`
-/

namespace A077288.P4996939620781520561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (n + 2) - A129444 (n + 3)

end

end A077288.P4996939620781520561

namespace A077288

/-- `A129445(n+2)-A129444(n+3)` -/
def P4996939620781520561.Spec : Prop :=
  ∀ n, P4996939620781520561.a n = A077288 n

end A077288

/-! ## A077288.P4640895627221168734

`(A165517(n+1)-A077291(n))/2`
-/

namespace A077288.P4640895627221168734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165517 (n + 1) - A077291 n : ℚ) / 2

end

end A077288.P4640895627221168734

namespace A077288

/-- `(A165517(n+1)-A077291(n))/2` -/
def P4640895627221168734.Spec : Prop :=
  ∀ n, P4640895627221168734.a n = (A077288 n : ℚ)

end A077288

/-! ## A077288.P8073698121530155972

`xor(A033999(n)², A080806(n+1))/2`
-/

namespace A077288.P8073698121530155972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A033999 n ^ 2) (A080806 (n + 1)) : ℚ) / 2

end

end A077288.P8073698121530155972

namespace A077288

/-- `xor(A033999(n)², A080806(n+1))/2` -/
def P8073698121530155972.Spec : Prop :=
  ∀ n, P8073698121530155972.a n = (A077288 n : ℚ)

end A077288

/-! ## A077288.P4448483996409474228

`xor(A158388(n)², A080806(n+1))/2`
-/

namespace A077288.P4448483996409474228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A158388 n ^ 2) (A080806 (n + 1)) : ℚ) / 2

end

end A077288.P4448483996409474228

namespace A077288

/-- `xor(A158388(n)², A080806(n+1))/2` -/
def P4448483996409474228.Spec : Prop :=
  ∀ n, P4448483996409474228.a n = (A077288 n : ℚ)

end A077288

/-! ## A077288.P13619922060941081134

`A233450(n+2)-Δ[A080873(n+1)]`
-/

namespace A077288.P13619922060941081134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233450 (n + 2) - (f1 (n + 1) - f1 n)

end

end A077288.P13619922060941081134

namespace A077288

/-- `A233450(n+2)-Δ[A080873(n+1)]` -/
def P13619922060941081134.Spec : Prop :=
  ∀ n, P13619922060941081134.a n = A077288 n

end A077288

/-! ## A077288.P12506212807283811029

`A129445(n+2)-(A233450(n+2)+1)`
-/

namespace A077288.P12506212807283811029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (n + 2) - (A233450 (n + 2) + 1)

end

end A077288.P12506212807283811029

namespace A077288

/-- `A129445(n+2)-(A233450(n+2)+1)` -/
def P12506212807283811029.Spec : Prop :=
  ∀ n, P12506212807283811029.a n = A077288 n

end A077288

/-! ## A077288.P7257729525838631360

`xor(A057427(A042963(n+1)), A080806(n+1))/2`
-/

namespace A077288.P7257729525838631360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A057427 (A042963 (n + 1)).toNat) (A080806 (n + 1)) : ℚ) / 2

end

end A077288.P7257729525838631360

namespace A077288

/-- `xor(A057427(A042963(n+1)), A080806(n+1))/2` -/
def P7257729525838631360.Spec : Prop :=
  ∀ n, P7257729525838631360.a n = (A077288 n : ℚ)

end A077288

/-! ## A077288.P1564611741198907404

`∑[gcd(A004189(n), A098297(n))]`
-/

namespace A077288.P1564611741198907404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004189 n) (A098297 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077288.P1564611741198907404

namespace A077288

/-- `∑[gcd(A004189(n), A098297(n))]` -/
def P1564611741198907404.Spec : Prop :=
  ∀ n, (P1564611741198907404.a n : ℤ) = A077288 n

end A077288

/-!
# A077289: Triangular numbers that are 1/6 of another triangular number.

The programs for A077289, the canonical program `A077289.P767826026892551394` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077289 has offset 0).

The definition of A077289 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077289.P767826026892551394

`98*a(n-2)-a(n-4)+7` with `a(0)=0, a(1)=1, a(2)=6, a(3)=105`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077289

/-- `98*a(n-2)-a(n-4)+7` -/
def P767826026892551394.Spec : Prop :=
  ∀ n, P767826026892551394.a n = A077289 n

theorem P767826026892551394.correct : P767826026892551394.Spec := by
  intro n
  simp only [A077289]

end A077289

/-! ## A077289.P4700941515695380163

`∑[A004189(n)/gcd(2, n)]`
-/

namespace A077289.P4700941515695380163
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004189 n : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077289.P4700941515695380163

namespace A077289

/-- `∑[A004189(n)/gcd(2, n)]` -/
def P4700941515695380163.Spec : Prop :=
  ∀ n, P4700941515695380163.a n = (A077289 n : ℚ)

end A077289

/-! ## A077289.P6708433788016124467

`∑[A004189(n)/A040001(n)]`
-/

namespace A077289.P6708433788016124467
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004189 n : ℚ) / (A040001 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077289.P6708433788016124467

namespace A077289

/-- `∑[A004189(n)/A040001(n)]` -/
def P6708433788016124467.Spec : Prop :=
  ∀ n, P6708433788016124467.a n = (A077289 n : ℚ)

end A077289

/-! ## A077289.P8695259927199755577

`A077288(n)/2*A181442(n)`
-/

namespace A077289.P8695259927199755577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077288 n : ℚ) / 2 * (A181442 n : ℚ)

end

end A077289.P8695259927199755577

namespace A077289

/-- `A077288(n)/2*A181442(n)` -/
def P8695259927199755577.Spec : Prop :=
  ∀ n, P8695259927199755577.a n = (A077289 n : ℚ)

end A077289

/-! ## A077289.P11334618389487745317

`A077290(n)/6`
-/

namespace A077289.P11334618389487745317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077290 n : ℚ) / 6

end

end A077289.P11334618389487745317

namespace A077289

/-- `A077290(n)/6` -/
def P11334618389487745317.Spec : Prop :=
  ∀ n, P11334618389487745317.a n = (A077289 n : ℚ)

end A077289

/-! ## A077289.P16722762756607134948

`C(A181442(n), 2)`
-/

namespace A077289.P16722762756607134948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A181442 n).toNat 2

end

end A077289.P16722762756607134948

namespace A077289

/-- `C(A181442(n), 2)` -/
def P16722762756607134948.Spec : Prop :=
  ∀ n, (P16722762756607134948.a n : ℤ) = A077289 n

end A077289

/-! ## A077289.P13176070668178258205

`C(A077288(n)+1, 2)`
-/

namespace A077289.P13176070668178258205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077288 n + 1).toNat 2

end

end A077289.P13176070668178258205

namespace A077289

/-- `C(A077288(n)+1, 2)` -/
def P13176070668178258205.Spec : Prop :=
  ∀ n, (P13176070668178258205.a n : ℤ) = A077289 n

end A077289

/-! ## A077289.P9071681136165123996

`floor(A080806(n+1)²/8)`
-/

namespace A077289.P9071681136165123996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080806 (n + 1) ^ 2 : ℚ) / 8⌋

end

end A077289.P9071681136165123996

namespace A077289

/-- `floor(A080806(n+1)²/8)` -/
def P9071681136165123996.Spec : Prop :=
  ∀ n, P9071681136165123996.a n = A077289 n

end A077289

/-! ## A077289.P3876555261804617473

`∑[∑[A041173(2*n)]-A041173(2*n)]`
-/

namespace A077289.P3876555261804617473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041173 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A041173 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077289.P3876555261804617473

namespace A077289

/-- `∑[∑[A041173(2*n)]-A041173(2*n)]` -/
def P3876555261804617473.Spec : Prop :=
  ∀ n, P3876555261804617473.a n = A077289 n

end A077289

/-!
# A077290: Triangular numbers that are 6 times other triangular numbers.

The programs for A077290, the canonical program `A077290.P13693890056077159077` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077290 has offset 0).

The definition of A077290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077290.P13693890056077159077

`98*a(n-2)-a(n-4)+42` with `a(0)=0, a(1)=6, a(2)=36, a(3)=630`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077290

/-- `98*a(n-2)-a(n-4)+42` -/
def P13693890056077159077.Spec : Prop :=
  ∀ n, P13693890056077159077.a n = A077290 n

theorem P13693890056077159077.correct : P13693890056077159077.Spec := by
  intro n
  simp only [A077290]

end A077290

/-! ## A077290.P3648148286462626300

`6*A077289(n)`
-/

namespace A077290.P3648148286462626300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A077289 n

end

end A077290.P3648148286462626300

namespace A077290

/-- `6*A077289(n)` -/
def P3648148286462626300.Spec : Prop :=
  ∀ n, P3648148286462626300.a n = A077290 n

end A077290

/-! ## A077290.P13868467437466051423

`C(A077291(n)+1, 2)`
-/

namespace A077290.P13868467437466051423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077291 n + 1).toNat 2

end

end A077290.P13868467437466051423

namespace A077290

/-- `C(A077291(n)+1, 2)` -/
def P13868467437466051423.Spec : Prop :=
  ∀ n, (P13868467437466051423.a n : ℤ) = A077290 n

end A077290

/-! ## A077290.P12342867036999323114

`C(A180483(n)-2, 2)`
-/

namespace A077290.P12342867036999323114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A180483 n - 2).toNat 2

end

end A077290.P12342867036999323114

namespace A077290

/-- `C(A180483(n)-2, 2)` -/
def P12342867036999323114.Spec : Prop :=
  ∀ n, (P12342867036999323114.a n : ℤ) = A077290 n

end A077290

/-! ## A077290.P64948161220628551

`round((A216073(n+1)/2)²)/2`
-/

namespace A077290.P64948161220628551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (((A216073 (n + 1) : ℚ) / 2) ^ 2) : ℚ) / 2

end

end A077290.P64948161220628551

namespace A077290

/-- `round((A216073(n+1)/2)²)/2` -/
def P64948161220628551.Spec : Prop :=
  ∀ n, P64948161220628551.a n = (A077290 n : ℚ)

end A077290

/-! ## A077290.P14151643485235848655

`∑[A122653(n)/A040001(n)]`
-/

namespace A077290.P14151643485235848655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122653 n : ℚ) / (A040001 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077290.P14151643485235848655

namespace A077290

/-- `∑[A122653(n)/A040001(n)]` -/
def P14151643485235848655.Spec : Prop :=
  ∀ n, P14151643485235848655.a n = (A077290 n : ℚ)

end A077290

/-! ## A077290.P13318806833773957908

`3*A077288(n)*A181442(n)`
-/

namespace A077290.P13318806833773957908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A077288 n * A181442 n)

end

end A077290.P13318806833773957908

namespace A077290

/-- `3*A077288(n)*A181442(n)` -/
def P13318806833773957908.Spec : Prop :=
  ∀ n, P13318806833773957908.a n = A077290 n

end A077290

/-! ## A077290.P8455018414899411854

`∑[A122653(n)/A000034(n+1)]`
-/

namespace A077290.P8455018414899411854
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122653 n : ℚ) / (A000034 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077290.P8455018414899411854

namespace A077290

/-- `∑[A122653(n)/A000034(n+1)]` -/
def P8455018414899411854.Spec : Prop :=
  ∀ n, P8455018414899411854.a n = (A077290 n : ℚ)

end A077290

/-! ## A077290.P1286896674941518416

`∑[A000034(n)/2*A122653(n)]`
-/

namespace A077290.P1286896674941518416
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A122653 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077290.P1286896674941518416

namespace A077290

/-- `∑[A000034(n)/2*A122653(n)]` -/
def P1286896674941518416.Spec : Prop :=
  ∀ n, P1286896674941518416.a n = (A077290 n : ℚ)

end A077290

/-! ## A077290.P2777653790947819786

`floor(A216073(n+1)²/8)`
-/

namespace A077290.P2777653790947819786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A216073 (n + 1) ^ 2 : ℚ) / 8⌋

end

end A077290.P2777653790947819786

namespace A077290

/-- `floor(A216073(n+1)²/8)` -/
def P2777653790947819786.Spec : Prop :=
  ∀ n, P2777653790947819786.a n = A077290 n

end A077290

/-!
# A077291: Second member of Diophantine pair (m,k) that satisfies 6*(m^2 + m) = k^2 + k: a(n) = k.

The programs for A077291, the canonical program `A077291.P18405443492975437405` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077291 has offset 0).

The definition of A077291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077291.P18405443492975437405

`10*a(n-2)-a(n-4)+4` with `a(0)=0, a(1)=3, a(2)=8, a(3)=35`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077291

/-- `10*a(n-2)-a(n-4)+4` -/
def P18405443492975437405.Spec : Prop :=
  ∀ n, P18405443492975437405.a n = A077291 n

theorem P18405443492975437405.correct : P18405443492975437405.Spec := by
  intro n
  simp only [A077291]

end A077291

/-! ## A077291.P15641694693221807759

`∑[lcm(6, a(n-1))-a(n-2)]` with `a(0)=0, a(1)=3, a(2)=5`
-/

namespace A077291.P15641694693221807759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 5] fun n f1 =>
  (Int.lcm 6 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077291.P15641694693221807759

namespace A077291

/-- `∑[lcm(6, a(n-1))-a(n-2)]` -/
def P15641694693221807759.Spec : Prop :=
  ∀ n, P15641694693221807759.a n = A077291 n

end A077291

/-! ## A077291.P6340308906986938815

`A180483(n)-3`
-/

namespace A077291.P6340308906986938815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180483 n - 3

end

end A077291.P6340308906986938815

namespace A077291

/-- `A180483(n)-3` -/
def P6340308906986938815.Spec : Prop :=
  ∀ n, P6340308906986938815.a n = A077291 n

end A077291

/-! ## A077291.P18266465412270197482

`floor(A216073(n+1)/2)`
-/

namespace A077291.P18266465412270197482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A216073 (n + 1) : ℚ) / 2⌋

end

end A077291.P18266465412270197482

namespace A077291

/-- `floor(A216073(n+1)/2)` -/
def P18266465412270197482.Spec : Prop :=
  ∀ n, P18266465412270197482.a n = A077291 n

end A077291

/-! ## A077291.P18017206149786219013

`Δ[A080873(n+1)]-A181442(n)`
-/

namespace A077291.P18017206149786219013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A181442 n

end

end A077291.P18017206149786219013

namespace A077291

/-- `Δ[A080873(n+1)]-A181442(n)` -/
def P18017206149786219013.Spec : Prop :=
  ∀ n, P18017206149786219013.a n = A077291 n

end A077291

/-! ## A077291.P171641966018815051

`A233450(n+2)-A080806(n+1)`
-/

namespace A077291.P171641966018815051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233450 (n + 2) - A080806 (n + 1)

end

end A077291.P171641966018815051

namespace A077291

/-- `A233450(n+2)-A080806(n+1)` -/
def P171641966018815051.Spec : Prop :=
  ∀ n, P171641966018815051.a n = A077291 n

end A077291

/-! ## A077291.P11057679236520878114

`A165517(n+1)-2*A077288(n)`
-/

namespace A077291.P11057679236520878114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165517 (n + 1) - 2 * A077288 n

end

end A077291.P11057679236520878114

namespace A077291

/-- `A165517(n+1)-2*A077288(n)` -/
def P11057679236520878114.Spec : Prop :=
  ∀ n, P11057679236520878114.a n = A077291 n

end A077291

/-! ## A077291.P16833554154990687911

`∑[A080872(n+1)]-A080806(n+1)`
-/

namespace A077291.P16833554154990687911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A080806 (n + 1)

end

end A077291.P16833554154990687911

namespace A077291

/-- `∑[A080872(n+1)]-A080806(n+1)` -/
def P16833554154990687911.Spec : Prop :=
  ∀ n, P16833554154990687911.a n = A077291 n

end A077291

/-! ## A077291.P8126177409403971811

`A233450(n+1)+Δ[A080872(n)/2]`
-/

namespace A077291.P8126177409403971811
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080872 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233450 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A077291.P8126177409403971811

namespace A077291

/-- `A233450(n+1)+Δ[A080872(n)/2]` -/
def P8126177409403971811.Spec : Prop :=
  ∀ n, P8126177409403971811.a n = (A077291 n : ℚ)

end A077291

/-! ## A077291.P331172231791135001

`A080806(n+1)+A129444(n+1)-1`
-/

namespace A077291.P331172231791135001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (n + 1) + (A129444 (n + 1) - 1)

end

end A077291.P331172231791135001

namespace A077291

/-- `A080806(n+1)+A129444(n+1)-1` -/
def P331172231791135001.Spec : Prop :=
  ∀ n, P331172231791135001.a n = A077291 n

end A077291

/-! ## A077291.P3315914931312822809

`A165517(n+1)+1-A080806(n+1)`
-/

namespace A077291.P3315914931312822809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165517 (n + 1) + (1 - A080806 (n + 1))

end

end A077291.P3315914931312822809

namespace A077291

/-- `A165517(n+1)+1-A080806(n+1)` -/
def P3315914931312822809.Spec : Prop :=
  ∀ n, P3315914931312822809.a n = A077291 n

end A077291

/-! ## A077291.P5950763876466467834

`A142239(n)-A054318(A065033(n))`
-/

namespace A077291.P5950763876466467834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142239 n - A054318 (A065033 n).toNat

end

end A077291.P5950763876466467834

namespace A077291

/-- `A142239(n)-A054318(A065033(n))` -/
def P5950763876466467834.Spec : Prop :=
  ∀ n, P5950763876466467834.a n = A077291 n

end A077291

/-! ## A077291.P2757558711710111655

`A080873(n+2)-(A181442(n)+A080873(n+1))`
-/

namespace A077291.P2757558711710111655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 (n + 2) - (A181442 n + A080873 (n + 1))

end

end A077291.P2757558711710111655

namespace A077291

/-- `A080873(n+2)-(A181442(n)+A080873(n+1))` -/
def P2757558711710111655.Spec : Prop :=
  ∀ n, P2757558711710111655.a n = A077291 n

end A077291

/-! ## A077291.P14883374805558922860

`∑[Δ[A041038(n)]%A142239(n)]`
-/

namespace A077291.P14883374805558922860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041038 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A142239 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077291.P14883374805558922860

namespace A077291

/-- `∑[Δ[A041038(n)]%A142239(n)]` -/
def P14883374805558922860.Spec : Prop :=
  ∀ n, P14883374805558922860.a n = A077291 n

end A077291

/-!
# A077292: Numbers k with the property that k divides one of the concatenations (k-1)(k-2) or (k-2)(k-1).

The programs for A077292, there is no canonical definition to state claims against.
-/

/-! ## A077292.P15796323506851941880

`record[A271237(A287316(n))+1]`
-/

namespace A077292.P15796323506851941880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271237 (A287316 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077292.P15796323506851941880

/-!
# A077293: Partition the concatenation 1234567...of natural numbers into successive strings nontrivially (a(n) is not equal to n) such that the n-th string is a multiple of n.

The programs for A077293, there is no canonical definition to state claims against.
-/

/-! ## A077293.P13421270460121338754

`A077294(n+1)*(n+1)`
-/

namespace A077293.P13421270460121338754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077294 (n + 1) * (n + 1 : ℤ)

end

end A077293.P13421270460121338754

/-!
# A077294: a(n) = A077293(n)/n.

The programs for A077294, there is no canonical definition to state claims against.
-/

/-! ## A077294.P14191741041032569550

`A077293(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077294.P14191741041032569550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077293 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A077294.P14191741041032569550

/-! ## A077294.P3488364725590066944

`(n+1)^(A000007(n)-1)*A077293(n+1)`
-/

namespace A077294.P3488364725590066944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000007 n - 1 : ℤ) * (A077293 (n + 1) : ℚ)

end

end A077294.P3488364725590066944

/-! ## A077294.P9541520697383379962

`round(A077293(A348553(n))/A348553(n))`
-/

namespace A077294.P9541520697383379962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077293 (A348553 n).toNat : ℚ) / (A348553 n : ℚ))

end

end A077294.P9541520697383379962

/-!
# A077295: Partition the concatenation 1234567...of natural numbers into successive strings which are even, all different and > 2. (0 never taken as the most significant digit.)

The programs for A077295, there is no canonical definition to state claims against.
-/

/-! ## A077295.P6783957996257656473

`A001704(C((n+1)²-n², ∑{digits}[n, #]+n))`
-/

namespace A077295.P6783957996257656473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (Nat.choose (((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ)).toNat (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + n))

end

end A077295.P6783957996257656473

/-! ## A077295.P13150803373471299561

`A030655(A062399(n+1))`
-/

namespace A077295.P13150803373471299561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030655 (A062399 (n + 1)).toNat

end

end A077295.P13150803373471299561

/-! ## A077295.P8300207744375304573

`A098080(A087051(n)+1)`
-/

namespace A077295.P8300207744375304573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098080 (A087051 n + 1).toNat

end

end A077295.P8300207744375304573

/-! ## A077295.P6168109953607015117

`A030655(A351870(n+1))`
-/

namespace A077295.P6168109953607015117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030655 (A351870 (n + 1)).toNat

end

end A077295.P6168109953607015117

/-! ## A077295.P18253777759508038079

`A098080(A080226(3^n))`
-/

namespace A077295.P18253777759508038079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098080 (A080226 (3 ^ n)).toNat

end

end A077295.P18253777759508038079

