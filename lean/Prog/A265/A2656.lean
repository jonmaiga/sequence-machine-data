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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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

/-!
# A265600: Number of n X 7 0..n*7-1 arrays with upper left zero and lower right n*7-1 and each element differing from its horizontal, vertical and antidiagonal neighbors by a power of two.

The programs for A265600, there is no canonical definition to state claims against.
-/

/-! ## A265600.P10486429790868676373

`A265601(A167499(n+5)+2)`
-/

namespace A265600.P10486429790868676373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (A167499 (n + 5) + 2).toNat

end

end A265600.P10486429790868676373

/-! ## A265600.P16305985089548917199

`A265601(A374008(n+1))`
-/

namespace A265600.P16305985089548917199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (A374008 (n + 1)).toNat

end

end A265600.P16305985089548917199

/-! ## A265600.P5706918256569161117

`A265601(eq[4, A219347(n)])`
-/

namespace A265600.P5706918256569161117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265600.P5706918256569161117

/-! ## A265600.P2721514259681274322

`A265601(eq[6, A193592(n)])`
-/

namespace A265600.P2721514259681274322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265600.P2721514259681274322

/-! ## A265600.P9423380443618514243

`A265601(A000124(n+7)-7)`
-/

namespace A265600.P9423380443618514243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (A000124 (n + 7) - 7).toNat

end

end A265600.P9423380443618514243

/-!
# A265602: Triangle read by rows, the numerators of the Bell transform of B(2n,1) where B(n,x) are the Bernoulli polynomials.

The programs for A265602, there is no canonical definition to state claims against.
-/

/-! ## A265602.P13665181240994678752

`A011618(A322732(n))`
-/

namespace A265602.P13665181240994678752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011618 (A322732 n).toNat

end

end A265602.P13665181240994678752

/-! ## A265602.P1665466643747684259

`A324672(A368486(n))`
-/

namespace A265602.P1665466643747684259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324672 (A368486 n).toNat

end

end A265602.P1665466643747684259

/-! ## A265602.P2799476282716416753

`A114117(A390724(n+1))`
-/

namespace A265602.P2799476282716416753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114117 (A390724 (n + 1)).toNat

end

end A265602.P2799476282716416753

/-! ## A265602.P10709538823844757551

`A152065(A356265(n+1))`
-/

namespace A265602.P10709538823844757551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152065 (A356265 (n + 1)).toNat

end

end A265602.P10709538823844757551

/-! ## A265602.P2576392855714617162

`A011620(8*A187557(n))`
-/

namespace A265602.P2576392855714617162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011620 (8 * A187557 n).toNat

end

end A265602.P2576392855714617162

/-!
# A265603: Triangle read by rows, the denominators of the Bell transform of B(2n,1) where B(n,x) are the Bernoulli polynomials.

The programs for A265603, there is no canonical definition to state claims against.
-/

/-! ## A265603.P11400817409117362593

`A216914(A343804(n)+7)`
-/

namespace A265603.P11400817409117362593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216914 (A343804 n + 7).toNat

end

end A265603.P11400817409117362593

/-! ## A265603.P5839386227844624515

`∏{p}[A094310(A090981(n)), #]`
-/

namespace A265603.P5839386227844624515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (A090981 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A265603.P5839386227844624515

/-! ## A265603.P12321999331251528317

`∏{p}[A143136(A208510(n+1)), #]`
-/

namespace A265603.P12321999331251528317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143136 (A208510 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A265603.P12321999331251528317

/-! ## A265603.P17030787947002922093

`A176591(A257365(n)^A010177(n))`
-/

namespace A265603.P17030787947002922093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176591 (SequenceMachineLib.roundAway ((A257365 n : ℚ) ^ (A010177 n : ℤ))).toNat

end

end A265603.P17030787947002922093

/-! ## A265603.P15298083145505183104

`A080400(A086645(n)^A321091(n))`
-/

namespace A265603.P15298083145505183104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (SequenceMachineLib.roundAway ((A086645 n : ℚ) ^ (A321091 n : ℤ))).toNat

end

end A265603.P15298083145505183104

/-!
# A265604: Triangle read by rows: The inverse Bell transform of the quartic factorial numbers (A007696).

The programs for A265604, there is no canonical definition to state claims against.
-/

/-! ## A265604.P703152711363051020

`A001222(5^A264428(n))*A080233(A099375(n))`
-/

namespace A265604.P703152711363051020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A264428 n : ℤ))).toNat * A080233 (A099375 n).toNat

end

end A265604.P703152711363051020

/-!
# A265605: Triangle read by rows: The inverse Bell transform of the triple factorial numbers (A007559).

The programs for A265605, there is no canonical definition to state claims against.
-/

/-! ## A265605.P16636043973733195548

`A000217(A060086(n))-A280639(A160438(n))²`
-/

namespace A265605.P16636043973733195548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A060086 n).toNat - A280639 (A160438 n).toNat ^ 2

end

end A265605.P16636043973733195548

/-! ## A265605.P250492552508771600

`A053383(A143007(3*n))*A265602(n)`
-/

namespace A265605.P250492552508771600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053383 (A143007 (3 * n)).toNat * A265602 n

end

end A265605.P250492552508771600

/-! ## A265605.P10830808036897172615

`A114327(A094344(n)^A316622(n+3))`
-/

namespace A265605.P10830808036897172615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (SequenceMachineLib.roundAway ((A094344 n : ℚ) ^ (A316622 (n + 3) : ℤ))).toNat

end

end A265605.P10830808036897172615

/-! ## A265605.P15500810493272176782

`or(A014473(n), A265602(A004874(n+1)))`
-/

namespace A265605.P15500810493272176782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014473 n) (A265602 (A004874 (n + 1)).toNat)

end

end A265605.P15500810493272176782

/-! ## A265605.P17729137460852558970

`A354992(n+4)-A052343(A005043(n+1))`
-/

namespace A265605.P17729137460852558970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354992 (n + 4) - A052343 (A005043 (n + 1)).toNat

end

end A265605.P17729137460852558970

/-!
# A265606: Triangle read by rows: The Bell transform of the quartic factorial numbers (A007696).

The programs for A265606, there is no canonical definition to state claims against.
-/

/-! ## A265606.P16791144283688501281

`A180200(A132393(n)^A040476(n))`
-/

namespace A265606.P16791144283688501281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (SequenceMachineLib.roundAway ((A132393 n : ℚ) ^ (A040476 n : ℤ))).toNat

end

end A265606.P16791144283688501281

/-! ## A265606.P17512769069461853685

`A180200(A132393(n)^A277239(n))`
-/

namespace A265606.P17512769069461853685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (SequenceMachineLib.roundAway ((A132393 n : ℚ) ^ (A277239 n : ℤ))).toNat

end

end A265606.P17512769069461853685

/-! ## A265606.P9882365375802095140

`A241314(lcm(A097805(n), A112500(n)))`
-/

namespace A265606.P9882365375802095140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241314 (Int.lcm (A097805 n) (A112500 n))

end

end A265606.P9882365375802095140

/-! ## A265606.P1950362994467850344

`or(A285666(A001333(n)), A370915(n))`
-/

namespace A265606.P1950362994467850344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285666 (A001333 n).toNat) (A370915 n)

end

end A265606.P1950362994467850344

/-! ## A265606.P3035613153633041412

`xor(A113092(n), A261887(A038208(n)))`
-/

namespace A265606.P3035613153633041412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A113092 n) (A261887 (A038208 n).toNat)

end

end A265606.P3035613153633041412

/-!
# A265607: Triangle read by rows, T(n,k) = n!*B(n,k) for n>=0 and 0<=k<=n, where B(n,k) is the Bell matrix with generator 1/j for j>=1.

The programs for A265607, there is no canonical definition to state claims against.
-/

/-! ## A265607.P66146595860991012

`A367094(A087736(n))`
-/

namespace A265607.P66146595860991012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367094 (A087736 n).toNat

end

end A265607.P66146595860991012

/-! ## A265607.P1980712330447255812

`A285189(A094385(n)²)`
-/

namespace A265607.P1980712330447255812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A094385 n ^ 2).toNat

end

end A265607.P1980712330447255812

/-! ## A265607.P12818615174905424547

`A285189(A157491(n)²)`
-/

namespace A265607.P12818615174905424547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A157491 n ^ 2).toNat

end

end A265607.P12818615174905424547

/-! ## A265607.P1304930193283436509

`A285189(A094385(n)^2)`
-/

namespace A265607.P1304930193283436509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A094385 n ^ 2).toNat

end

end A265607.P1304930193283436509

/-! ## A265607.P7708601155552892527

`A285189(A157491(n)^2)`
-/

namespace A265607.P7708601155552892527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A157491 n ^ 2).toNat

end

end A265607.P7708601155552892527

/-!
# A265608: Triangle read by rows: Bell transform of A000262.

The programs for A265608, there is no canonical definition to state claims against.
-/

/-! ## A265608.P5967061689635748479

`A184962(n)-A010893(A069777(n))`
-/

namespace A265608.P5967061689635748479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184962 n - A010893 ((A069777 n).toNat + 13)

end

end A265608.P5967061689635748479

/-! ## A265608.P592083800578379640

`A184962(n)-A010893(A125781(n))`
-/

namespace A265608.P592083800578379640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184962 n - A010893 ((A125781 n).toNat + 13)

end

end A265608.P592083800578379640

/-! ## A265608.P14197707710311191289

`A184962(n)-A010893(A213275(n))`
-/

namespace A265608.P14197707710311191289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184962 n - A010893 ((A213275 n).toNat + 13)

end

end A265608.P14197707710311191289

/-! ## A265608.P8102880195076678196

`A184962(n)-A010893(A227655(n))`
-/

namespace A265608.P8102880195076678196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184962 n - A010893 ((A227655 n).toNat + 13)

end

end A265608.P8102880195076678196

/-! ## A265608.P1574517779888983106

`A184962(n)-A010893(A256268(n))`
-/

namespace A265608.P1574517779888983106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184962 n - A010893 ((A256268 n).toNat + 13)

end

end A265608.P1574517779888983106

/-!
# A265609: Array read by ascending antidiagonals: A(n,k) the rising factorial, also known as Pochhammer symbol, for n >= 0 and k >= 0.

The programs for A265609, the canonical program `A265609.P16748235149498157221` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265609 has offset 0).

The definition of A265609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2625 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265609.P4445037089411603976

`char[∑[n]]+(A193592(n)-1)*a(n-1)` with `a(0)=1`
-/

namespace A265609.P4445037089411603976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A193592 n - 1) * a (n - 1)

end

end A265609.P4445037089411603976

namespace A265609

/-- `char[∑[n]]+(A193592(n)-1)*a(n-1)` -/
def P4445037089411603976.Spec : Prop :=
  ∀ n, P4445037089411603976.a n = A265609 n

end A265609

/-! ## A265609.P8551799569408976405

`(a(n-1)*A025581(n))^(1-char[∑[n]])` with `a(0)=1`
-/

namespace A265609.P8551799569408976405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) * (A025581 n : ℚ)) ^ (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A265609.P8551799569408976405

namespace A265609

/-- `(a(n-1)*A025581(n))^(1-char[∑[n]])` -/
def P8551799569408976405.Spec : Prop :=
  ∀ n, P8551799569408976405.a n = (A265609 n : ℚ)

end A265609

/-! ## A265609.P16748235149498157221

`A114219(n)!*A071919(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A265609

/-- `A114219(n)!*A071919(n)` -/
def P16748235149498157221.Spec : Prop :=
  ∀ n, P16748235149498157221.a n = A265609 n

theorem P16748235149498157221.correct : P16748235149498157221.Spec := by
  intro n
  simp only [A265609]

end A265609

/-! ## A265609.P1323925135550800514

`A071919(n)*A233543(n)`
-/

namespace A265609.P1323925135550800514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n * A233543 n

end

end A265609.P1323925135550800514

namespace A265609

/-- `A071919(n)*A233543(n)` -/
def P1323925135550800514.Spec : Prop :=
  ∀ n, P1323925135550800514.a n = A265609 n

end A265609

/-! ## A265609.P12560052470570900596

`A002262(n)!*A071919(n)`
-/

namespace A265609.P12560052470570900596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A071919 n

end

end A265609.P12560052470570900596

namespace A265609

/-- `A002262(n)!*A071919(n)` -/
def P12560052470570900596.Spec : Prop :=
  ∀ n, P12560052470570900596.a n = A265609 n

end A265609

/-! ## A265609.P6652414196558147481

`A097805(A061579(n))*A233543(n)`
-/

namespace A265609.P6652414196558147481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A061579 n).toNat * A233543 n

end

end A265609.P6652414196558147481

namespace A265609

/-- `A097805(A061579(n))*A233543(n)` -/
def P6652414196558147481.Spec : Prop :=
  ∀ n, P6652414196558147481.a n = A265609 n

end A265609

/-! ## A265609.P15669349342253051281

`A362588(n)/A008279(n)`
-/

namespace A265609.P15669349342253051281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362588 n : ℚ) / (A008279 n : ℚ)

end

end A265609.P15669349342253051281

namespace A265609

/-- `A362588(n)/A008279(n)` -/
def P15669349342253051281.Spec : Prop :=
  ∀ n, P15669349342253051281.a n = (A265609 n : ℚ)

end A265609

/-! ## A265609.P11929396630892651747

`A071919(n)*A265312(A245300(n))`
-/

namespace A265609.P11929396630892651747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n * A265312 (A245300 n).toNat

end

end A265609.P11929396630892651747

namespace A265609

/-- `A071919(n)*A265312(A245300(n))` -/
def P11929396630892651747.Spec : Prop :=
  ∀ n, P11929396630892651747.a n = A265609 n

end A265609

/-! ## A265609.P11439461429959613330

`A362787(n)/A124320(n)`
-/

namespace A265609.P11439461429959613330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362787 n : ℚ) / (A124320 n : ℚ)

end

end A265609.P11439461429959613330

namespace A265609

/-- `A362787(n)/A124320(n)` -/
def P11439461429959613330.Spec : Prop :=
  ∀ n, P11439461429959613330.a n = (A265609 n : ℚ)

end A265609

/-!
# A265610: a(n) = rf(n, n+2)/(n+2)! - rf(n, n)/n!, rf the rising factorial A265609.

The programs for A265610, the canonical program `A265610.P12741386361720664927` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265610 has offset 0).

The definition of A265610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265610.P12741386361720664927

`A029651(n)-A005807(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A265610

/-- `A029651(n)-A005807(n)` -/
def P12741386361720664927.Spec : Prop :=
  ∀ n, P12741386361720664927.a n = A265610 n

theorem P12741386361720664927.correct : P12741386361720664927.Spec := by
  intro n
  simp only [A265610]

end A265610

/-! ## A265610.P12617733190672793006

`A129869(n+1)-A000245(n)`
-/

namespace A265610.P12617733190672793006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129869 (n + 1) - A000245 n

end

end A265610.P12617733190672793006

namespace A265610

/-- `A129869(n+1)-A000245(n)` -/
def P12617733190672793006.Spec : Prop :=
  ∀ n, P12617733190672793006.a n = A265610 n

end A265610

/-! ## A265610.P13658917845521365624

`A029651(n)-(A000108(n+1)+A000108(n))`
-/

namespace A265610.P13658917845521365624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n - (A000108 (n + 1) + A000108 n)

end

end A265610.P13658917845521365624

namespace A265610

/-- `A029651(n)-(A000108(n+1)+A000108(n))` -/
def P13658917845521365624.Spec : Prop :=
  ∀ n, P13658917845521365624.a n = A265610 n

end A265610

/-! ## A265610.P2463725884553286721

`A129869(n+1)+A000108(n)-A000108(n+1)`
-/

namespace A265610.P2463725884553286721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129869 (n + 1) + (A000108 n - A000108 (n + 1))

end

end A265610.P2463725884553286721

namespace A265610

/-- `A129869(n+1)+A000108(n)-A000108(n+1)` -/
def P2463725884553286721.Spec : Prop :=
  ∀ n, P2463725884553286721.a n = A265610 n

end A265610

/-! ## A265610.P2939992789517662673

`A050168(2*n)-(A208355(2*(n+1))+A208355(2*n))`
-/

namespace A265610.P2939992789517662673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (2 * n) - (A208355 (2 * (n + 1)) + A208355 (2 * n))

end

end A265610.P2939992789517662673

namespace A265610

/-- `A050168(2*n)-(A208355(2*(n+1))+A208355(2*n))` -/
def P2939992789517662673.Spec : Prop :=
  ∀ n, P2939992789517662673.a n = A265610 n

end A265610

/-! ## A265610.P9195999967174821690

`Δ[A088218(n)-A014137(n)]`
-/

namespace A265610.P9195999967174821690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n - A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265610.P9195999967174821690

namespace A265610

/-- `Δ[A088218(n)-A014137(n)]` -/
def P9195999967174821690.Spec : Prop :=
  ∀ n, P9195999967174821690.a n = A265610 n

end A265610

/-! ## A265610.P18199773241735757858

`Δ[A088218(n)-A014138(n)]`
-/

namespace A265610.P18199773241735757858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n - A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265610.P18199773241735757858

namespace A265610

/-- `Δ[A088218(n)-A014138(n)]` -/
def P18199773241735757858.Spec : Prop :=
  ∀ n, P18199773241735757858.a n = A265610 n

end A265610

/-! ## A265610.P18411392413414150434

`A225015(n+2)-A051960(n)`
-/

namespace A265610.P18411392413414150434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225015 (n + 2) - A051960 n

end

end A265610.P18411392413414150434

namespace A265610

/-- `A225015(n+2)-A051960(n)` -/
def P18411392413414150434.Spec : Prop :=
  ∀ n, P18411392413414150434.a n = A265610 n

end A265610

/-! ## A265610.P14187697232584016335

`A116400(2*n)-A088218(n)`
-/

namespace A265610.P14187697232584016335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116400 (2 * n) - A088218 n

end

end A265610.P14187697232584016335

namespace A265610

/-- `A116400(2*n)-A088218(n)` -/
def P14187697232584016335.Spec : Prop :=
  ∀ n, P14187697232584016335.a n = A265610 n

end A265610

/-! ## A265610.P2835174170583830376

`Δ[A088218(n)]-A000108(n+1)`
-/

namespace A265610.P2835174170583830376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000108 (n + 1)

end

end A265610.P2835174170583830376

namespace A265610

/-- `Δ[A088218(n)]-A000108(n+1)` -/
def P2835174170583830376.Spec : Prop :=
  ∀ n, P2835174170583830376.a n = A265610 n

end A265610

/-! ## A265610.P13611006954930848449

`Δ[A260878(n)]-A000108(n+1)`
-/

namespace A265610.P13611006954930848449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000108 (n + 1)

end

end A265610.P13611006954930848449

namespace A265610

/-- `Δ[A260878(n)]-A000108(n+1)` -/
def P13611006954930848449.Spec : Prop :=
  ∀ n, P13611006954930848449.a n = A265610 n

end A265610

/-! ## A265610.P3021458957428183627

`A037951(2*n+1)-A088218(n)`
-/

namespace A265610.P3021458957428183627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037951 (2 * n + 1) - A088218 n

end

end A265610.P3021458957428183627

namespace A265610

/-- `A037951(2*n+1)-A088218(n)` -/
def P3021458957428183627.Spec : Prop :=
  ∀ n, P3021458957428183627.a n = A265610 n

end A265610

/-! ## A265610.P5365380161910740296

`A037955(2*n+1)-A210736(2*n)`
-/

namespace A265610.P5365380161910740296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (2 * n + 1) - A210736 (2 * n)

end

end A265610.P5365380161910740296

namespace A265610

/-- `A037955(2*n+1)-A210736(2*n)` -/
def P5365380161910740296.Spec : Prop :=
  ∀ n, P5365380161910740296.a n = A265610 n

end A265610

/-! ## A265610.P2669002616747617928

`Δ[A088218(n)-A000108(n)]-A000108(n)`
-/

namespace A265610.P2669002616747617928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n - A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000108 n

end

end A265610.P2669002616747617928

namespace A265610

/-- `Δ[A088218(n)-A000108(n)]-A000108(n)` -/
def P2669002616747617928.Spec : Prop :=
  ∀ n, P2669002616747617928.a n = A265610 n

end A265610

/-! ## A265610.P16872700285022410970

`Δ[A260878(n)-A000108(n)]-A000108(n)`
-/

namespace A265610.P16872700285022410970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260878 n - A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000108 n

end

end A265610.P16872700285022410970

namespace A265610

/-- `Δ[A260878(n)-A000108(n)]-A000108(n)` -/
def P16872700285022410970.Spec : Prop :=
  ∀ n, P16872700285022410970.a n = A265610 n

end A265610

/-! ## A265610.P6403154359494441968

`A001700(n)-(A088218(n)+A000108(n+1))`
-/

namespace A265610.P6403154359494441968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n - (A088218 n + A000108 (n + 1))

end

end A265610.P6403154359494441968

namespace A265610

/-- `A001700(n)-(A088218(n)+A000108(n+1))` -/
def P6403154359494441968.Spec : Prop :=
  ∀ n, P6403154359494441968.a n = A265610 n

end A265610

/-! ## A265610.P17053278229828143638

`A165205(n)-(A000984(n)+A000108(n+1))`
-/

namespace A265610.P17053278229828143638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165205 n - (A000984 n + A000108 (n + 1))

end

end A265610.P17053278229828143638

namespace A265610

/-- `A165205(n)-(A000984(n)+A000108(n+1))` -/
def P17053278229828143638.Spec : Prop :=
  ∀ n, P17053278229828143638.a n = A265610 n

end A265610

/-! ## A265610.P13024813537800645054

`A323229(n+1)-(A260878(n)+A001700(n))`
-/

namespace A265610.P13024813537800645054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323229 (n + 1) - (A260878 n + A001700 n)

end

end A265610.P13024813537800645054

namespace A265610

/-- `A323229(n+1)-(A260878(n)+A001700(n))` -/
def P13024813537800645054.Spec : Prop :=
  ∀ n, P13024813537800645054.a n = A265610 n

end A265610

/-! ## A265610.P9994588126747214882

`A088218(n+1)-(A088218(n)+A000108(n+1))`
-/

namespace A265610.P9994588126747214882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) - (A088218 n + A000108 (n + 1))

end

end A265610.P9994588126747214882

namespace A265610

/-- `A088218(n+1)-(A088218(n)+A000108(n+1))` -/
def P9994588126747214882.Spec : Prop :=
  ∀ n, P9994588126747214882.a n = A265610 n

end A265610

/-! ## A265610.P6355642662009149115

`A001791(n+1)-(A088218(n+1)+A088218(n))`
-/

namespace A265610.P6355642662009149115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) - (A088218 (n + 1) + A088218 n)

end

end A265610.P6355642662009149115

namespace A265610

/-- `A001791(n+1)-(A088218(n+1)+A088218(n))` -/
def P6355642662009149115.Spec : Prop :=
  ∀ n, P6355642662009149115.a n = A265610 n

end A265610

/-!
# A265611: a(n) = a(n-1) + floor((n-1)/2) - (-1)^n + 2 for n>=2, a(0)=1, a(1)=3.

The programs for A265611, the canonical program `A265611.P8227574491403152135` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265611 has offset 0).

The definition of A265611 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor((n-1)/2)-(-1)^n+2` (program `A265611.P8227574491403152135`, by `A265611.P8227574491403152135.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A265611.P8227574491403152135

`a(n-1)+floor((n-1)/2)-(-1)^n+2` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A265611

/-- `a(n-1)+floor((n-1)/2)-(-1)^n+2` -/
def P8227574491403152135.Spec : Prop :=
  ∀ n, P8227574491403152135.a n = A265611 n

theorem P8227574491403152135.correct : P8227574491403152135.Spec := by
  intro n
  simp only [A265611]

end A265611

/-! ## A265611.P1152362675291207071

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=8, a(4)=10`
-/

namespace A265611.P1152362675291207071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 8, 10] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A265611.P1152362675291207071

namespace A265611

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P1152362675291207071.Spec : Prop :=
  ∀ n, P1152362675291207071.a n = A265611 n

end A265611

/-! ## A265611.P13703104348992684869

`record[a(n-2)+n]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A265611.P13703104348992684869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  f1 (n - 2) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265611.P13703104348992684869

namespace A265611

/-- `record[a(n-2)+n]` -/
def P13703104348992684869.Spec : Prop :=
  ∀ n, (P13703104348992684869.a n : ℤ) = A265611 n

end A265611

/-! ## A265611.P14756180865498704743

`∑[a(n-2)+1]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=4`
-/

namespace A265611.P14756180865498704743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 4] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265611.P14756180865498704743

namespace A265611

/-- `∑[a(n-2)+1]` -/
def P14756180865498704743.Spec : Prop :=
  ∀ n, (P14756180865498704743.a n : ℤ) = A265611 n

end A265611

/-! ## A265611.P12011223269170679942

`n+2+a(n-2)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A265611.P12011223269170679942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  n + 2 + a (n - 2)

end

end A265611.P12011223269170679942

namespace A265611

/-- `n+2+a(n-2)` -/
def P12011223269170679942.Spec : Prop :=
  ∀ n, (P12011223269170679942.a n : ℤ) = A265611 n

end A265611

/-! ## A265611.P16914880816078576083

`∑[2-(a(n-1)-n)]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A265611.P16914880816078576083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  2 - (f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265611.P16914880816078576083

namespace A265611

/-- `∑[2-(a(n-1)-n)]` -/
def P16914880816078576083.Spec : Prop :=
  ∀ n, P16914880816078576083.a n = A265611 n

end A265611

/-! ## A265611.P17158909720864765188

`record[n-(5-a(n-2))]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A265611.P17158909720864765188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  (n : ℤ) - (5 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265611.P17158909720864765188

namespace A265611

/-- `record[n-(5-a(n-2))]` -/
def P17158909720864765188.Spec : Prop :=
  ∀ n, P17158909720864765188.a n = A265611 n

end A265611

/-! ## A265611.P17849988007072523706

`3-floor(1-a(n-2)-n)` with `a(0)=1, a(1)=3, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A265611.P17849988007072523706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  3 - (1 - a (n - 2) - (n : ℤ))

end

end A265611.P17849988007072523706

namespace A265611

/-- `3-floor(1-a(n-2)-n)` -/
def P17849988007072523706.Spec : Prop :=
  ∀ n, P17849988007072523706.a n = A265611 n

end A265611

/-! ## A265611.P15410198509587886239

`comp[3*(n+1)]+ceil((n/2)²)+1`
-/

namespace A265611.P15410198509587886239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (⌈((n : ℚ) / 2) ^ 2⌉ + 1)

end

end A265611.P15410198509587886239

namespace A265611

/-- `comp[3*(n+1)]+ceil((n/2)²)+1` -/
def P15410198509587886239.Spec : Prop :=
  ∀ n, P15410198509587886239.a n = A265611 n

end A265611

/-! ## A265611.P9552015580743229256

`round(A035106(n+1)+n/2)`
-/

namespace A265611.P9552015580743229256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A035106 (n + 1) : ℚ) + (n : ℚ) / 2)

end

end A265611.P9552015580743229256

namespace A265611

/-- `round(A035106(n+1)+n/2)` -/
def P9552015580743229256.Spec : Prop :=
  ∀ n, P9552015580743229256.a n = A265611 n

end A265611

/-! ## A265611.P16398313853835851852

`∪[A217748(n+3), A217748(n+3)-n]`
-/

namespace A265611.P16398313853835851852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217748 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217748 (n + 3) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265611.P16398313853835851852

namespace A265611

/-- `∪[A217748(n+3), A217748(n+3)-n]` -/
def P16398313853835851852.Spec : Prop :=
  ∀ n, (P16398313853835851852.a n : ℤ) = A265611 n

end A265611

/-! ## A265611.P9453178306874783743

`∪[A035106(2*n+1), A035106(2*n+1)+n]`
-/

namespace A265611.P9453178306874783743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (2 * n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265611.P9453178306874783743

namespace A265611

/-- `∪[A035106(2*n+1), A035106(2*n+1)+n]` -/
def P9453178306874783743.Spec : Prop :=
  ∀ n, (P9453178306874783743.a n : ℤ) = A265611 n

end A265611

/-! ## A265611.P7818164210592633991

`record[A296141(n+1)+1-n]`
-/

namespace A265611.P7818164210592633991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296141 (n + 1) + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265611.P7818164210592633991

namespace A265611

/-- `record[A296141(n+1)+1-n]` -/
def P7818164210592633991.Spec : Prop :=
  ∀ n, P7818164210592633991.a n = A265611 n

end A265611

/-! ## A265611.P14280772405187926724

`A127735(A101881(n))`
-/

namespace A265611.P14280772405187926724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127735 (A101881 n).toNat

end

end A265611.P14280772405187926724

namespace A265611

/-- `A127735(A101881(n))` -/
def P14280772405187926724.Spec : Prop :=
  ∀ n, P14280772405187926724.a n = A265611 n

end A265611

/-! ## A265611.P1258563035598814353

`A078358(A035106(n+1))`
-/

namespace A265611.P1258563035598814353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (A035106 (n + 1)).toNat

end

end A265611.P1258563035598814353

namespace A265611

/-- `A078358(A035106(n+1))` -/
def P1258563035598814353.Spec : Prop :=
  ∀ n, P1258563035598814353.a n = A265611 n

end A265611

/-! ## A265611.P13082650922325051566

`A056847(A184676(n+2))`
-/

namespace A265611.P13082650922325051566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A184676 (n + 2)).toNat

end

end A265611.P13082650922325051566

namespace A265611

/-- `A056847(A184676(n+2))` -/
def P13082650922325051566.Spec : Prop :=
  ∀ n, P13082650922325051566.a n = A265611 n

end A265611

/-! ## A265611.P5207986449973522951

`A003991(A074148(n+1))`
-/

namespace A265611.P5207986449973522951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A074148 (n + 1)).toNat

end

end A265611.P5207986449973522951

namespace A265611

/-- `A003991(A074148(n+1))` -/
def P5207986449973522951.Spec : Prop :=
  ∀ n, P5207986449973522951.a n = A265611 n

end A265611

/-! ## A265611.P10714355593789968296

`A080251(A055998(n))`
-/

namespace A265611.P10714355593789968296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080251 (A055998 n).toNat

end

end A265611.P10714355593789968296

namespace A265611

/-- `A080251(A055998(n))` -/
def P10714355593789968296.Spec : Prop :=
  ∀ n, P10714355593789968296.a n = A265611 n

end A265611

/-! ## A265611.P4115618119965690162

`A123108(A326658(n+1))`
-/

namespace A265611.P4115618119965690162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A326658 (n + 1)).toNat

end

end A265611.P4115618119965690162

namespace A265611

/-- `A123108(A326658(n+1))` -/
def P4115618119965690162.Spec : Prop :=
  ∀ n, P4115618119965690162.a n = A265611 n

end A265611

/-! ## A265611.P18423793283271453021

`A065033(2*A035106(n+1)+n)`
-/

namespace A265611.P18423793283271453021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A035106 (n + 1) + (n : ℤ)).toNat

end

end A265611.P18423793283271453021

namespace A265611

/-- `A065033(2*A035106(n+1)+n)` -/
def P18423793283271453021.Spec : Prop :=
  ∀ n, P18423793283271453021.a n = A265611 n

end A265611

/-!
# A265612: a(n) = CatalanNumber(n+1)*n*(1+3*n)/(6+2*n).

The programs for A265612, the canonical program `A265612.P15247188045133269342` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265612 has offset 0).

The definition of A265612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265612.P15247188045133269342

`A003409(n+1)-A061557(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A265612

/-- `A003409(n+1)-A061557(n+1)` -/
def P15247188045133269342.Spec : Prop :=
  ∀ n, P15247188045133269342.a n = A265612 n

theorem P15247188045133269342.correct : P15247188045133269342.Spec := by
  intro n
  simp only [A265612]

end A265612

/-! ## A265612.P3622695789593543934

`A344136(n+1)-A000108(n+1)`
-/

namespace A265612.P3622695789593543934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344136 (n + 1) - A000108 (n + 1)

end

end A265612.P3622695789593543934

namespace A265612

/-- `A344136(n+1)-A000108(n+1)` -/
def P3622695789593543934.Spec : Prop :=
  ∀ n, P3622695789593543934.a n = A265612 n

end A265612

/-! ## A265612.P4386359643460040539

`A037953(2*n+1)+A037951(2*(n+1))`
-/

namespace A265612.P4386359643460040539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037953 (2 * n + 1) + A037951 (2 * (n + 1))

end

end A265612.P4386359643460040539

namespace A265612

/-- `A037953(2*n+1)+A037951(2*(n+1))` -/
def P4386359643460040539.Spec : Prop :=
  ∀ n, P4386359643460040539.a n = A265612 n

end A265612

/-! ## A265612.P4618685123892005598

`A037956(2*n+1)+A037951(2*(n+1))`
-/

namespace A265612.P4618685123892005598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037956 (2 * n + 1) + A037951 (2 * (n + 1))

end

end A265612.P4618685123892005598

namespace A265612

/-- `A037956(2*n+1)+A037951(2*(n+1))` -/
def P4618685123892005598.Spec : Prop :=
  ∀ n, P4618685123892005598.a n = A265612 n

end A265612

/-! ## A265612.P10530968006153565044

`A037956(2*n+1)+A037956(2*(n+1))`
-/

namespace A265612.P10530968006153565044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037956 (2 * n + 1) + A037956 (2 * (n + 1))

end

end A265612.P10530968006153565044

namespace A265612

/-- `A037956(2*n+1)+A037956(2*(n+1))` -/
def P10530968006153565044.Spec : Prop :=
  ∀ n, P10530968006153565044.a n = A265612 n

end A265612

/-! ## A265612.P8049083700226803781

`A026010(2*n+1)-2*A000245(n+1)`
-/

namespace A265612.P8049083700226803781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 (2 * n + 1) - 2 * A000245 (n + 1)

end

end A265612.P8049083700226803781

namespace A265612

/-- `A026010(2*n+1)-2*A000245(n+1)` -/
def P8049083700226803781.Spec : Prop :=
  ∀ n, P8049083700226803781.a n = A265612 n

end A265612

/-! ## A265612.P6476056419308324030

`A037955(2*n+1)+2*A037953(2*n+1)`
-/

namespace A265612.P6476056419308324030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (2 * n + 1) + 2 * A037953 (2 * n + 1)

end

end A265612.P6476056419308324030

namespace A265612

/-- `A037955(2*n+1)+2*A037953(2*n+1)` -/
def P6476056419308324030.Spec : Prop :=
  ∀ n, P6476056419308324030.a n = A265612 n

end A265612

/-! ## A265612.P443297471918532390

`A024482(n+2)-A070031(n)-A000108(n+1)`
-/

namespace A265612.P443297471918532390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024482 (n + 2) - A070031 n - A000108 (n + 1)

end

end A265612.P443297471918532390

namespace A265612

/-- `A024482(n+2)-A070031(n)-A000108(n+1)` -/
def P443297471918532390.Spec : Prop :=
  ∀ n, P443297471918532390.a n = A265612 n

end A265612

/-! ## A265612.P4542214828301208783

`Δ[A246434(n+1)]`
-/

namespace A265612.P4542214828301208783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265612.P4542214828301208783

namespace A265612

/-- `Δ[A246434(n+1)]` -/
def P4542214828301208783.Spec : Prop :=
  ∀ n, P4542214828301208783.a n = A265612 n

end A265612

/-! ## A265612.P11167811283388133419

`A349695(n+1)-A001700(n)`
-/

namespace A265612.P11167811283388133419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349695 (n + 1) - A001700 n

end

end A265612.P11167811283388133419

namespace A265612

/-- `A349695(n+1)-A001700(n)` -/
def P11167811283388133419.Spec : Prop :=
  ∀ n, P11167811283388133419.a n = A265612 n

end A265612

/-! ## A265612.P4199330181874227188

`Δ[A002420(n+2)+A001700(n)]`
-/

namespace A265612.P4199330181874227188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 (n + 2) + A001700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265612.P4199330181874227188

namespace A265612

/-- `Δ[A002420(n+2)+A001700(n)]` -/
def P4199330181874227188.Spec : Prop :=
  ∀ n, P4199330181874227188.a n = A265612 n

end A265612

/-! ## A265612.P12623922240495269301

`A246434(n+2)-A246434(n+1)`
-/

namespace A265612.P12623922240495269301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246434 (n + 2) - A246434 (n + 1)

end

end A265612.P12623922240495269301

namespace A265612

/-- `A246434(n+2)-A246434(n+1)` -/
def P12623922240495269301.Spec : Prop :=
  ∀ n, P12623922240495269301.a n = A265612 n

end A265612

/-! ## A265612.P1402320112108568997

`A220101(n+2)-A129869(n+2)`
-/

namespace A265612.P1402320112108568997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220101 (n + 2) - A129869 (n + 2)

end

end A265612.P1402320112108568997

namespace A265612

/-- `A220101(n+2)-A129869(n+2)` -/
def P1402320112108568997.Spec : Prop :=
  ∀ n, P1402320112108568997.a n = A265612 n

end A265612

/-! ## A265612.P17238889849303562828

`Δ[A024483(n+2)]-A024482(n+2)`
-/

namespace A265612.P17238889849303562828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024483 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A024482 (n + 2)

end

end A265612.P17238889849303562828

namespace A265612

/-- `Δ[A024483(n+2)]-A024482(n+2)` -/
def P17238889849303562828.Spec : Prop :=
  ∀ n, P17238889849303562828.a n = A265612 n

end A265612

/-! ## A265612.P3879686959007573858

`Δ[A099364(2*n+1)+A001700(n)]`
-/

namespace A265612.P3879686959007573858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099364 (2 * n + 1) + A001700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265612.P3879686959007573858

namespace A265612

/-- `Δ[A099364(2*n+1)+A001700(n)]` -/
def P3879686959007573858.Spec : Prop :=
  ∀ n, P3879686959007573858.a n = A265612 n

end A265612

/-! ## A265612.P16408506427864365094

`Δ[A001700(n)-2*A000108(n+1)]`
-/

namespace A265612.P16408506427864365094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n - 2 * A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265612.P16408506427864365094

namespace A265612

/-- `Δ[A001700(n)-2*A000108(n+1)]` -/
def P16408506427864365094.Spec : Prop :=
  ∀ n, P16408506427864365094.a n = A265612 n

end A265612

/-! ## A265612.P4242899530340077620

`Δ[A001700(n)-A089408(2*(n+2))]`
-/

namespace A265612.P4242899530340077620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n - A089408 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265612.P4242899530340077620

namespace A265612

/-- `Δ[A001700(n)-A089408(2*(n+2))]` -/
def P4242899530340077620.Spec : Prop :=
  ∀ n, P4242899530340077620.a n = A265612 n

end A265612

/-! ## A265612.P7000861727631639602

`A349695(n+1)-A001405(2*n+1)`
-/

namespace A265612.P7000861727631639602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349695 (n + 1) - A001405 (2 * n + 1)

end

end A265612.P7000861727631639602

namespace A265612

/-- `A349695(n+1)-A001405(2*n+1)` -/
def P7000861727631639602.Spec : Prop :=
  ∀ n, P7000861727631639602.a n = A265612 n

end A265612

/-! ## A265612.P4693053136816555343

`A349695(n+1)-A037952(2*n+1)`
-/

namespace A265612.P4693053136816555343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349695 (n + 1) - A037952 (2 * n + 1)

end

end A265612.P4693053136816555343

namespace A265612

/-- `A349695(n+1)-A037952(2*n+1)` -/
def P4693053136816555343.Spec : Prop :=
  ∀ n, P4693053136816555343.a n = A265612 n

end A265612

/-!
# A265613: a(n) = CatalanNumber(n+1)*n*(3*n^2+5*n+2)/((4+n)*(3+n)).

The programs for A265613, the canonical program `A265613.P220478530151626736` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265613 has offset 0).

The definition of A265613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265613.P3398355606363947790

`∑[n/2*Δ[A071725(n)]]`
-/

namespace A265613.P3398355606363947790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265613.P3398355606363947790

namespace A265613

/-- `∑[n/2*Δ[A071725(n)]]` -/
def P3398355606363947790.Spec : Prop :=
  ∀ n, P3398355606363947790.a n = (A265613 n : ℚ)

end A265613

/-! ## A265613.P220478530151626736

`A007946(n)-2*A002057(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A265613

/-- `A007946(n)-2*A002057(n)` -/
def P220478530151626736.Spec : Prop :=
  ∀ n, P220478530151626736.a n = A265613 n

theorem P220478530151626736.correct : P220478530151626736.Spec := by
  intro n
  simp only [A265613]

end A265613

/-! ## A265613.P2772637543863264409

`Δ[A265612(n)]-A129869(n+2)`
-/

namespace A265613.P2772637543863264409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A129869 (n + 2)

end

end A265613.P2772637543863264409

namespace A265613

/-- `Δ[A265612(n)]-A129869(n+2)` -/
def P2772637543863264409.Spec : Prop :=
  ∀ n, P2772637543863264409.a n = A265613 n

end A265613

/-! ## A265613.P7436130980364301447

`A265612(n+1)-A220101(n+2)`
-/

namespace A265613.P7436130980364301447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265612 (n + 1) - A220101 (n + 2)

end

end A265613.P7436130980364301447

namespace A265613

/-- `A265612(n+1)-A220101(n+2)` -/
def P7436130980364301447.Spec : Prop :=
  ∀ n, P7436130980364301447.a n = A265613 n

end A265613

/-! ## A265613.P8981922728349621393

`A265612(n+1)-A259775(2*n+1)`
-/

namespace A265613.P8981922728349621393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265612 (n + 1) - A259775 (2 * n + 1)

end

end A265613.P8981922728349621393

namespace A265613

/-- `A265612(n+1)-A259775(2*n+1)` -/
def P8981922728349621393.Spec : Prop :=
  ∀ n, P8981922728349621393.a n = A265613 n

end A265613

/-! ## A265613.P13725567330976306892

`A037953(2*(n+1))+A037953(2*n+3)`
-/

namespace A265613.P13725567330976306892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037953 (2 * (n + 1)) + A037953 (2 * n + 3)

end

end A265613.P13725567330976306892

namespace A265613

/-- `A037953(2*(n+1))+A037953(2*n+3)` -/
def P13725567330976306892.Spec : Prop :=
  ∀ n, P13725567330976306892.a n = A265613 n

end A265613

/-! ## A265613.P944856207991652402

`A037957(2*(n+1))+A037956(2*n+3)`
-/

namespace A265613.P944856207991652402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037957 (2 * (n + 1)) + A037956 (2 * n + 3)

end

end A265613.P944856207991652402

namespace A265613

/-- `A037957(2*(n+1))+A037956(2*n+3)` -/
def P944856207991652402.Spec : Prop :=
  ∀ n, P944856207991652402.a n = A265613 n

end A265613

/-! ## A265613.P9117751210547340217

`A265612(n+1)-(A265612(n)+A129869(n+2))`
-/

namespace A265613.P9117751210547340217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265612 (n + 1) - (A265612 n + A129869 (n + 2))

end

end A265613.P9117751210547340217

namespace A265613

/-- `A265612(n+1)-(A265612(n)+A129869(n+2))` -/
def P9117751210547340217.Spec : Prop :=
  ∀ n, P9117751210547340217.a n = A265613 n

end A265613

/-! ## A265613.P17257930329849995117

`A029635(A268581(n))-A000038(n)`
-/

namespace A265613.P17257930329849995117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A268581 n).toNat - A000038 n

end

end A265613.P17257930329849995117

namespace A265613

/-- `A029635(A268581(n))-A000038(n)` -/
def P17257930329849995117.Spec : Prop :=
  ∀ n, P17257930329849995117.a n = A265613 n

end A265613

/-! ## A265613.P17575517448441070012

`A029635(A268581(n))%A267886(n)`
-/

namespace A265613.P17575517448441070012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029635 (A268581 n).toNat) (A267886 n)

end

end A265613.P17575517448441070012

namespace A265613

/-- `A029635(A268581(n))%A267886(n)` -/
def P17575517448441070012.Spec : Prop :=
  ∀ n, P17575517448441070012.a n = A265613 n

end A265613

/-!
# A265615: Number of n X 2 0..n*2-1 arrays with upper left zero and lower right n*2-1 and each element differing from its horizontal and diagonal neighbors by a power of two.

The programs for A265615, there is no canonical definition to state claims against.
-/

/-! ## A265615.P5751304673026353108

`A265619(∑[n+2])`
-/

namespace A265615.P5751304673026353108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265619 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265615.P5751304673026353108

/-! ## A265615.P7685984396428829970

`A057427(n+2)*A265619(A000096(n+1))`
-/

namespace A265615.P7685984396428829970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 2) * A265619 (A000096 (n + 1)).toNat

end

end A265615.P7685984396428829970

/-! ## A265615.P3274607888079889205

`A265619(A000096(n+1))+A003982(2*n+1)`
-/

namespace A265615.P3274607888079889205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265619 (A000096 (n + 1)).toNat + A003982 (2 * n + 1)

end

end A265615.P3274607888079889205

/-! ## A265615.P15855465632239309171

`A265619(A000096(n+1))+A084680(2*(n+1))`
-/

namespace A265615.P15855465632239309171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265619 (A000096 (n + 1)).toNat + A084680 (2 * (n + 1))

end

end A265615.P15855465632239309171

/-! ## A265615.P15790102982345216113

`A178334(2*n+3)*A265619(A000096(n+1))`
-/

namespace A265615.P15790102982345216113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (2 * n + 3) * A265619 (A000096 (n + 1)).toNat

end

end A265615.P15790102982345216113

/-!
# A265616: Number of nX3 0..n*3-1 arrays with upper left zero and lower right n*3-1 and each element differing from its horizontal and diagonal neighbors by a power of two.

The programs for A265616, there is no canonical definition to state claims against.
-/

/-! ## A265616.P13801410144503157804

`A265619(∑[n+3]+1)`
-/

namespace A265616.P13801410144503157804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265619 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265616.P13801410144503157804

/-! ## A265616.P9569206961238325699

`record[A265619(A101881(n))]`
-/

namespace A265616.P9569206961238325699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265619 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265616.P9569206961238325699

/-! ## A265616.P7779393765385522126

`record[A265619(∑[A158416(n)])]`
-/

namespace A265616.P7779393765385522126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265619 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265616.P7779393765385522126

/-! ## A265616.P10241327044021558513

`record[A265619(A347633(n+1))]`
-/

namespace A265616.P10241327044021558513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265619 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265616.P10241327044021558513

/-!
# A265617: Number of nX4 0..n*4-1 arrays with upper left zero and lower right n*4-1 and each element differing from its horizontal and diagonal neighbors by a power of two.

The programs for A265617, there is no canonical definition to state claims against.
-/

/-! ## A265617.P3488049391134232340

`A265619(A141214(n+1))`
-/

namespace A265617.P3488049391134232340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265619 (A141214 (n + 1)).toNat

end

end A265617.P3488049391134232340

/-! ## A265617.P6589472067078931180

`A265619(eq[2, A155586(n)])`
-/

namespace A265617.P6589472067078931180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265617.P6589472067078931180

/-!
# A265618: Number of nX5 0..n*5-1 arrays with upper left zero and lower right n*5-1 and each element differing from its horizontal and diagonal neighbors by a power of two.

The programs for A265618, there is no canonical definition to state claims against.
-/

/-! ## A265618.P9708516910814544421

`A265619(eq[5, A155586(n)])`
-/

namespace A265618.P9708516910814544421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265618.P9708516910814544421

/-!
# A265620: Number of 2Xn 0..2*n-1 arrays with upper left zero and lower right 2*n-1 and each element differing from its horizontal and diagonal neighbors by a power of two.

The programs for A265620, there is no canonical definition to state claims against.
-/

/-! ## A265620.P14444915367438710025

`A265619(∑[n+1]+2)`
-/

namespace A265620.P14444915367438710025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265619 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A265620.P14444915367438710025

/-! ## A265620.P5747363414672356115

`lcm(A186035(n), A265619(A133263(n+1)))`
-/

namespace A265620.P5747363414672356115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A186035 n) (A265619 (A133263 (n + 1)).toNat)

end

end A265620.P5747363414672356115

/-! ## A265620.P1769248521911694414

`A186035(n²)*A265619(A133263(n+1))`
-/

namespace A265620.P1769248521911694414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186035 (n ^ 2) * A265619 (A133263 (n + 1)).toNat

end

end A265620.P1769248521911694414

/-!
# A265621: Number of 3 X n 0..3*n-1 arrays with upper left zero and lower right 3*n-1 and each element differing from its horizontal and diagonal neighbors by a power of two.

The programs for A265621, there is no canonical definition to state claims against.
-/

/-! ## A265621.P354201399076412259

`A265619(∑[n+2]+4)`
-/

namespace A265621.P354201399076412259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265619 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265621.P354201399076412259

/-! ## A265621.P10993755236146500661

`lcm(A020985(n), A265619(A167614(n+1)))`
-/

namespace A265621.P10993755236146500661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A265619 (A167614 (n + 1)).toNat)

end

end A265621.P10993755236146500661

/-! ## A265621.P6383719239523845938

`A265619(A167614(n+1))+A070105(n+1)`
-/

namespace A265621.P6383719239523845938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265619 (A167614 (n + 1)).toNat + A070105 (n + 1)

end

end A265621.P6383719239523845938

/-! ## A265621.P7615608151182890523

`A119788(n+1)*A265619(A167614(n+1))`
-/

namespace A265621.P7615608151182890523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (n + 1) * A265619 (A167614 (n + 1)).toNat

end

end A265621.P7615608151182890523

/-! ## A265621.P3124811282692638443

`A147494(n+1)*A265619(A167614(n+1))`
-/

namespace A265621.P3124811282692638443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147494 (n + 1) * A265619 (A167614 (n + 1)).toNat

end

end A265621.P3124811282692638443

/-!
# A265622: Number of 4Xn 0..4*n-1 arrays with upper left zero and lower right 4*n-1 and each element differing from its horizontal and diagonal neighbors by a power of two.

The programs for A265622, there is no canonical definition to state claims against.
-/

/-! ## A265622.P12862546123922486230

`A265619(A167614(n+2)+1)`
-/

namespace A265622.P12862546123922486230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265619 (A167614 (n + 2) + 1).toNat

end

end A265622.P12862546123922486230

/-!
# A265623: Number of 5Xn 0..5*n-1 arrays with upper left zero and lower right 5*n-1 and each element differing from its horizontal and diagonal neighbors by a power of two.

The programs for A265623, there is no canonical definition to state claims against.
-/

/-! ## A265623.P11494363532362929748

`A265619(A167499(n+3))`
-/

namespace A265623.P11494363532362929748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265619 (A167499 (n + 3)).toNat

end

end A265623.P11494363532362929748

/-! ## A265623.P10107670768637212012

`A265619(A155212(n)+13)`
-/

namespace A265623.P10107670768637212012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265619 (A155212 n + 13).toNat

end

end A265623.P10107670768637212012

/-!
# A265624: Array T(n,k): The number of words of length n in an alphabet of size k which do not contain 4 consecutive letters.

The programs for A265624, there is no canonical definition to state claims against.
-/

/-! ## A265624.P7391940566216438444

`A348702(n+1)*A348737(A348714(n+2))`
-/

namespace A265624.P7391940566216438444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348702 (n + 1) * A348737 (A348714 (n + 2)).toNat

end

end A265624.P7391940566216438444

/-! ## A265624.P15848161829082982890

`lcm(A008683(A000108(n)), A348702(n+1))`
-/

namespace A265624.P15848161829082982890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A000108 n).toNat) (A348702 (n + 1))

end

end A265624.P15848161829082982890

/-! ## A265624.P15270132391719451373

`A348702(n+1)-A348679(A264692(n+1))`
-/

namespace A265624.P15270132391719451373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348702 (n + 1) - A348679 (A264692 (n + 1)).toNat

end

end A265624.P15270132391719451373

/-!
# A265627: Number of n X n "primitive" binary matrices.

The programs for A265627, there is no canonical definition to state claims against.
-/

/-! ## A265627.P4323767791825577049

`2*A296302((n+1)²)`
-/

namespace A265627.P4323767791825577049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A296302 ((n + 1) ^ 2)

end

end A265627.P4323767791825577049

/-! ## A265627.P4918590461825900501

`A323862((n+1)²+n²)`
-/

namespace A265627.P4918590461825900501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 ((n + 1) ^ 2 + n ^ 2)

end

end A265627.P4918590461825900501

/-! ## A265627.P17390602319983702411

`record[2*A296302(A020703(n+1))]`
-/

namespace A265627.P17390602319983702411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A296302 (A020703 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265627.P17390602319983702411

/-! ## A265627.P7797539067116650005

`A296302((n+1)²)+A296302((n+1)²)+A061858(n)`
-/

namespace A265627.P7797539067116650005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296302 ((n + 1) ^ 2) + (A296302 ((n + 1) ^ 2) + A061858 n)

end

end A265627.P7797539067116650005

/-! ## A265627.P3960053170001339462

`A296302((n+1)²)+A296302((n+1)²)+A000038(n+2)`
-/

namespace A265627.P3960053170001339462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296302 ((n + 1) ^ 2) + (A296302 ((n + 1) ^ 2) + A000038 (n + 2))

end

end A265627.P3960053170001339462

/-!
# A265628: Carmichael numbers (A002997) of the form k^3 + 1.

The programs for A265628, there is no canonical definition to state claims against.
-/

/-! ## A265628.P17363070807546595772

`A265328(A155722(n+1)-A104194(n+1))`
-/

namespace A265628.P17363070807546595772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265328 (A155722 (n + 1) - A104194 (n + 1)).toNat

end

end A265628.P17363070807546595772

/-! ## A265628.P17892768336823817418

`A265328(xor(A104194(n+1), A155722(n+1)))`
-/

namespace A265628.P17892768336823817418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265328 (Int.xor (A104194 (n + 1)) (A155722 (n + 1))).toNat

end

end A265628.P17892768336823817418

/-! ## A265628.P4290240869680748270

`A265328(A155722(n+1)*A351345(n))`
-/

namespace A265628.P4290240869680748270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265328 (A155722 (n + 1) * A351345 n).toNat

end

end A265628.P4290240869680748270

/-!
# A265629: Numbers k > 0 such that 10^(k+4) - 23 is prime.

The programs for A265629, there is no canonical definition to state claims against.
-/

/-! ## A265629.P16680808462286516950

`A108328(n+2)-4`
-/

namespace A265629.P16680808462286516950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108328 (n + 2) - 4

end

end A265629.P16680808462286516950

/-! ## A265629.P2212812974446502180

`A023446(A108328(n+1))+Δ[A108328(n+1)]`
-/

namespace A265629.P2212812974446502180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A108328 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A265629.P2212812974446502180

/-! ## A265629.P11888610996583011753

`A023446(A108328(n+2))`
-/

namespace A265629.P11888610996583011753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A108328 (n + 2)).toNat

end

end A265629.P11888610996583011753

/-! ## A265629.P5006064951477019788

`p?[A108328(A175782(n))-4]`
-/

namespace A265629.P5006064951477019788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108328 (A175782 n).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265629.P5006064951477019788

/-!
# A265630: Numbers n > 1 such that 2^m == 1 (mod n^2), where m = A002326((n-1)/2).

The programs for A265630, there is no canonical definition to state claims against.
-/

/-! ## A265630.P10845905066827220038

`A291961(ceil(atan(n+1))+n)`
-/

namespace A265630.P10845905066827220038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291961 (⌈Real.arctan (n + 1 : ℝ)⌉ + (n : ℤ)).toNat

end

end A265630.P10845905066827220038

/-! ## A265630.P10072284328956902953

`A291961(ceil(sqrt(∑[2*n]))+1)`
-/

namespace A265630.P10072284328956902953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291961 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 1).toNat

end

end A265630.P10072284328956902953

/-! ## A265630.P10067097986178051551

`record[A291961(n+1)%A292011(n+1)]`
-/

namespace A265630.P10067097986178051551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291961 (n + 1)) (A292011 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265630.P10067097986178051551

/-! ## A265630.P15526669853190117035

`filter[A291961(n+1), A355450(#)]`
-/

namespace A265630.P15526669853190117035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A265630.P15526669853190117035

/-! ## A265630.P5494526575998388268

`record[A077816(A212175(n+1)+1)]`
-/

namespace A265630.P5494526575998388268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077816 (A212175 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265630.P5494526575998388268

/-!
# A265631: Number of nX2 0..n*2-1 arrays with upper left zero and lower right n*2-1 and each element differing from its horizontal, diagonal and antidiagonal neighbors by a power of two.

The programs for A265631, there is no canonical definition to state claims against.
-/

/-! ## A265631.P10343429992380076114

`A265635(∑[n+2])`
-/

namespace A265631.P10343429992380076114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265635 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265631.P10343429992380076114

/-! ## A265631.P11134811551369337131

`lcm(A106498(n), A265635(A000096(n+1)))`
-/

namespace A265631.P11134811551369337131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106498 n) (A265635 (A000096 (n + 1)).toNat)

end

end A265631.P11134811551369337131

/-! ## A265631.P7244728097389831073

`A265635(A000096(n+1))%A203419(n+4)`
-/

namespace A265631.P7244728097389831073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265635 (A000096 (n + 1)).toNat) (A203419 (n + 4))

end

end A265631.P7244728097389831073

/-! ## A265631.P1899945021749706001

`A265635(A000096(n+1))+A000038(2*n+1)`
-/

namespace A265631.P1899945021749706001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265635 (A000096 (n + 1)).toNat + A000038 (2 * n + 1)

end

end A265631.P1899945021749706001

/-! ## A265631.P6915323968742688341

`A265635(A000096(n+1))+A265596(3*(n+1))`
-/

namespace A265631.P6915323968742688341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265635 (A000096 (n + 1)).toNat + A265596 (3 * (n + 1))

end

end A265631.P6915323968742688341

/-!
# A265632: Number of nX3 0..n*3-1 arrays with upper left zero and lower right n*3-1 and each element differing from its horizontal, diagonal and antidiagonal neighbors by a power of two.

The programs for A265632, there is no canonical definition to state claims against.
-/

/-! ## A265632.P4132295266805949473

`A265635(∑[n+3]+1)`
-/

namespace A265632.P4132295266805949473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265635 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265632.P4132295266805949473

/-! ## A265632.P15704681051557135481

`record[A265635(∑[ceil(C(or(1, n), n)/2)])]`
-/

namespace A265632.P15704681051557135481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265635 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265632.P15704681051557135481

/-! ## A265632.P2135351072027198800

`record[A265635(∑[A158416(n)])]`
-/

namespace A265632.P2135351072027198800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265635 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265632.P2135351072027198800

/-! ## A265632.P3911770666893671841

`record[A265635(A347633(n+1))]`
-/

namespace A265632.P3911770666893671841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265635 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265632.P3911770666893671841

/-!
# A265633: Number of nX4 0..n*4-1 arrays with upper left zero and lower right n*4-1 and each element differing from its horizontal, diagonal and antidiagonal neighbors by a power of two.

The programs for A265633, there is no canonical definition to state claims against.
-/

/-! ## A265633.P6039232861507703388

`A265635(A141214(n+1))`
-/

namespace A265633.P6039232861507703388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265635 (A141214 (n + 1)).toNat

end

end A265633.P6039232861507703388

/-! ## A265633.P178907061355207690

`A265635(A055998(n+2))`
-/

namespace A265633.P178907061355207690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265635 (A055998 (n + 2)).toNat

end

end A265633.P178907061355207690

/-! ## A265633.P2399614578074502946

`A265635(A155212(n)+5)`
-/

namespace A265633.P2399614578074502946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265635 (A155212 n + 5).toNat

end

end A265633.P2399614578074502946

/-!
# A265634: Number of nX5 0..n*5-1 arrays with upper left zero and lower right n*5-1 and each element differing from its horizontal, diagonal and antidiagonal neighbors by a power of two.

The programs for A265634, there is no canonical definition to state claims against.
-/

/-! ## A265634.P12929521822449670789

`A265635(∑[n+5]+6)`
-/

namespace A265634.P12929521822449670789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265635 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A265634.P12929521822449670789

/-!
# A265636: Number of 2 X n 0..2*n-1 arrays with upper left zero and lower right 2*n-1 and each element differing from its horizontal, diagonal and antidiagonal neighbors by a power of two.

The programs for A265636, there is no canonical definition to state claims against.
-/

/-! ## A265636.P3112673696890462529

`A265635(∑[n+1]+2)`
-/

namespace A265636.P3112673696890462529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265635 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A265636.P3112673696890462529

/-!
# A265637: Number of 3Xn 0..3*n-1 arrays with upper left zero and lower right 3*n-1 and each element differing from its horizontal, diagonal and antidiagonal neighbors by a power of two.

The programs for A265637, there is no canonical definition to state claims against.
-/

/-! ## A265637.P15877345975774076006

`A265635(∑[n+2]+4)`
-/

namespace A265637.P15877345975774076006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265635 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265637.P15877345975774076006

/-! ## A265637.P14786806013593873659

`and(-1, A265635(A167614(n+1)))`
-/

namespace A265637.P14786806013593873659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A265635 (A167614 (n + 1)).toNat)

end

end A265637.P14786806013593873659

/-! ## A265637.P3639598062418242488

`A265635(A167614(n+1))+A025443(n)`
-/

namespace A265637.P3639598062418242488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265635 (A167614 (n + 1)).toNat + A025443 n

end

end A265637.P3639598062418242488

/-! ## A265637.P12302976721002026943

`A265635(A167614(n+1))+A031346(n)`
-/

namespace A265637.P12302976721002026943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265635 (A167614 (n + 1)).toNat + A031346 n

end

end A265637.P12302976721002026943

/-! ## A265637.P724385285867687721

`A265635(A167614(n+1))+A084904(n)`
-/

namespace A265637.P724385285867687721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265635 (A167614 (n + 1)).toNat + A084904 n

end

end A265637.P724385285867687721

/-!
# A265638: Number of 4Xn 0..4*n-1 arrays with upper left zero and lower right 4*n-1 and each element differing from its horizontal, diagonal and antidiagonal neighbors by a power of two.

The programs for A265638, there is no canonical definition to state claims against.
-/

/-! ## A265638.P17032942961835449565

`A265635(A141214(n)+7)`
-/

namespace A265638.P17032942961835449565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265635 (A141214 n + 7).toNat

end

end A265638.P17032942961835449565

/-! ## A265638.P4483922417607961280

`A265635(A052905(n)+9)`
-/

namespace A265638.P4483922417607961280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265635 (A052905 n + 9).toNat

end

end A265638.P4483922417607961280

/-! ## A265638.P2593916924432279002

`A265635(A055999(n)+10)`
-/

namespace A265638.P2593916924432279002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265635 (A055999 n + 10).toNat

end

end A265638.P2593916924432279002

/-! ## A265638.P17135750952171691886

`A265635(eq[5, A066657(n)])`
-/

namespace A265638.P17135750952171691886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265638.P17135750952171691886

/-!
# A265639: Number of binary strings of length n that cannot be written as the concatenation of nontrivial powers of other strings.

The programs for A265639, there is no canonical definition to state claims against.
-/

/-! ## A265639.P14937993523486981227

`2^(n+1)-A265642(n+1)`
-/

namespace A265639.P14937993523486981227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A265642 (n + 1)

end

end A265639.P14937993523486981227

/-! ## A265639.P10942639655001655274

`abs(A000079(n+1)-A265642(n+1))`
-/

namespace A265639.P10942639655001655274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (n + 1) - A265642 (n + 1)|

end

end A265639.P10942639655001655274

/-! ## A265639.P686110506451508010

`abs(A265642(n+1)-A011782(n+2))`
-/

namespace A265639.P686110506451508010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A265642 (n + 1) - A011782 (n + 2)|

end

end A265639.P686110506451508010

/-!
# A265640: Prime factorization palindromes (see comments for definition).

The programs for A265640, the canonical program `A265640.P15353337970693603697` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265640 has offset 1).

The definition of A265640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265640.P15353337970693603697

`∪[(n+1)², A229125(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A265640

/-- `∪[(n+1)², A229125(n+1)]` -/
def P15353337970693603697.Spec : Prop :=
  ∀ n, (P15353337970693603697.a n : ℤ) = A265640 (n + 1)

theorem P15353337970693603697.correct : P15353337970693603697.Spec := by
  intro n
  simp only [A265640, Nat.add_sub_cancel]

end A265640

/-! ## A265640.P4945641746313018479

`eq[1, A351564(A007913(n+1))]+1`
-/

namespace A265640.P4945641746313018479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351564 (A007913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A265640.P4945641746313018479

namespace A265640

/-- `eq[1, A351564(A007913(n+1))]+1` -/
def P4945641746313018479.Spec : Prop :=
  ∀ n, (P4945641746313018479.a n : ℤ) = A265640 (n + 1)

end A265640

/-! ## A265640.P14085293728235641288

`lt[A001222(A295878(n+1)), 2]+1`
-/

namespace A265640.P14085293728235641288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A295878 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A265640.P14085293728235641288

namespace A265640

/-- `lt[A001222(A295878(n+1)), 2]+1` -/
def P14085293728235641288.Spec : Prop :=
  ∀ n, (P14085293728235641288.a n : ℤ) = A265640 (n + 1)

end A265640

/-! ## A265640.P9945494505522912155

`∪[A229125(n+1), A028982(n+1)]`
-/

namespace A265640.P9945494505522912155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265640.P9945494505522912155

namespace A265640

/-- `∪[A229125(n+1), A028982(n+1)]` -/
def P9945494505522912155.Spec : Prop :=
  ∀ n, (P9945494505522912155.a n : ℤ) = A265640 (n + 1)

end A265640

/-! ## A265640.P1713142762042777018

`∪[A000961(n+1), A376715(n+1)]`
-/

namespace A265640.P1713142762042777018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265640.P1713142762042777018

namespace A265640

/-- `∪[A000961(n+1), A376715(n+1)]` -/
def P1713142762042777018.Spec : Prop :=
  ∀ n, (P1713142762042777018.a n : ℤ) = A265640 (n + 1)

end A265640

/-! ## A265640.P8282438011088693836

`∪[A376715(n+1), A008578(n+1)]`
-/

namespace A265640.P8282438011088693836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265640.P8282438011088693836

namespace A265640

/-- `∪[A376715(n+1), A008578(n+1)]` -/
def P8282438011088693836.Spec : Prop :=
  ∀ n, (P8282438011088693836.a n : ℤ) = A265640 (n + 1)

end A265640

/-! ## A265640.P17926201863970409737

`∪[A033946(n+1), A376715(n+1)]`
-/

namespace A265640.P17926201863970409737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265640.P17926201863970409737

namespace A265640

/-- `∪[A033946(n+1), A376715(n+1)]` -/
def P17926201863970409737.Spec : Prop :=
  ∀ n, (P17926201863970409737.a n : ℤ) = A265640 (n + 1)

end A265640

/-! ## A265640.P10092432862349845073

`∪[A074583(n+1), A376715(n+1)]`
-/

namespace A265640.P10092432862349845073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265640.P10092432862349845073

namespace A265640

/-- `∪[A074583(n+1), A376715(n+1)]` -/
def P10092432862349845073.Spec : Prop :=
  ∀ n, (P10092432862349845073.a n : ℤ) = A265640 (n + 1)

end A265640

/-! ## A265640.P18198835979158264799

`∪[A084400(n+1), A376715(n+1)]`
-/

namespace A265640.P18198835979158264799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265640.P18198835979158264799

namespace A265640

/-- `∪[A084400(n+1), A376715(n+1)]` -/
def P18198835979158264799.Spec : Prop :=
  ∀ n, (P18198835979158264799.a n : ℤ) = A265640 (n + 1)

end A265640

/-! ## A265640.P15179346147693859353

`eq[A335424(n+1), A335424(A335424(n+1))]+1`
-/

namespace A265640.P15179346147693859353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335424 (A335424 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A265640.P15179346147693859353

namespace A265640

/-- `eq[A335424(n+1), A335424(A335424(n+1))]+1` -/
def P15179346147693859353.Spec : Prop :=
  ∀ n, (P15179346147693859353.a n : ℤ) = A265640 (n + 1)

end A265640

/-! ## A265640.P532843998431240429

`lt[A162642(n+1), 2]+1`
-/

namespace A265640.P532843998431240429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A265640.P532843998431240429

namespace A265640

/-- `lt[A162642(n+1), 2]+1` -/
def P532843998431240429.Spec : Prop :=
  ∀ n, (P532843998431240429.a n : ℤ) = A265640 (n + 1)

end A265640

/-! ## A265640.P3185057779652593925

`filter[A344609(n+1), A340372(#)]`
-/

namespace A265640.P3185057779652593925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A265640.P3185057779652593925

namespace A265640

/-- `filter[A344609(n+1), A340372(#)]` -/
def P3185057779652593925.Spec : Prop :=
  ∀ n, P3185057779652593925.a n = A265640 (n + 1)

end A265640

/-! ## A265640.P13329914539749293071

`∩[A344609(n+1), A285801(n+1)]`
-/

namespace A265640.P13329914539749293071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265640.P13329914539749293071

namespace A265640

/-- `∩[A344609(n+1), A285801(n+1)]` -/
def P13329914539749293071.Spec : Prop :=
  ∀ n, (P13329914539749293071.a n : ℤ) = A265640 (n + 1)

end A265640

/-! ## A265640.P11527474361015037946

`eq[A335423(n+1), A335423(A335423(n+1))]+1`
-/

namespace A265640.P11527474361015037946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335423 (A335423 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A265640.P11527474361015037946

namespace A265640

/-- `eq[A335423(n+1), A335423(A335423(n+1))]+1` -/
def P11527474361015037946.Spec : Prop :=
  ∀ n, (P11527474361015037946.a n : ℤ) = A265640 (n + 1)

end A265640

/-! ## A265640.P4658184757499853566

`filter[A119848(n+1), A340372(#)]`
-/

namespace A265640.P4658184757499853566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A265640.P4658184757499853566

namespace A265640

/-- `filter[A119848(n+1), A340372(#)]` -/
def P4658184757499853566.Spec : Prop :=
  ∀ n, P4658184757499853566.a n = A265640 (n + 1)

end A265640

/-! ## A265640.P627592521936747585

`eq[1, A226378(Δ[A069891(n)])]+1`
-/

namespace A265640.P627592521936747585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A265640.P627592521936747585

namespace A265640

/-- `eq[1, A226378(Δ[A069891(n)])]+1` -/
def P627592521936747585.Spec : Prop :=
  ∀ n, (P627592521936747585.a n : ℤ) = A265640 (n + 1)

end A265640

/-! ## A265640.P18096949415960078637

`eq[1, A000010(A055076(n+1))]+1`
-/

namespace A265640.P18096949415960078637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A055076 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A265640.P18096949415960078637

namespace A265640

/-- `eq[1, A000010(A055076(n+1))]+1` -/
def P18096949415960078637.Spec : Prop :=
  ∀ n, (P18096949415960078637.a n : ℤ) = A265640 (n + 1)

end A265640

/-! ## A265640.P6654269656823610032

`eq[A007913(n+1), A277708(n+1)]+1`
-/

namespace A265640.P6654269656823610032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A265640.P6654269656823610032

namespace A265640

/-- `eq[A007913(n+1), A277708(n+1)]+1` -/
def P6654269656823610032.Spec : Prop :=
  ∀ n, (P6654269656823610032.a n : ℤ) = A265640 (n + 1)

end A265640

/-! ## A265640.P14742021385585525066

`eq[A007913(n+1), A008578(A277707(n+1)+1)]+1`
-/

namespace A265640.P14742021385585525066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A277707 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A265640.P14742021385585525066

namespace A265640

/-- `eq[A007913(n+1), A008578(A277707(n+1)+1)]+1` -/
def P14742021385585525066.Spec : Prop :=
  ∀ n, (P14742021385585525066.a n : ℤ) = A265640 (n + 1)

end A265640

/-!
# A265641: Palindromes in base 10 (A002113) which are also prime factorization palindromes (A265640).

The programs for A265641, there is no canonical definition to state claims against.
-/

/-! ## A265641.P15038794116383508154

`∩[A002113(n+1), A265640(n+1)]`
-/

namespace A265641.P15038794116383508154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265641.P15038794116383508154

/-! ## A265641.P8495395184122696660

`∩[A265640(n+1), round(A014187(n)^(1/3))]`
-/

namespace A265641.P8495395184122696660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014187 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265641.P8495395184122696660

/-! ## A265641.P4247668946110126553

`record[A047813(A265640(n+1))]`
-/

namespace A265641.P4247668946110126553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A265640 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265641.P4247668946110126553

/-! ## A265641.P9361518538590928059

`filter[A265640(n+1), A136522(#)]`
-/

namespace A265641.P9361518538590928059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A265641.P9361518538590928059

/-! ## A265641.P4203179892717145922

`filter[A383112(n+1), A136522(#)]`
-/

namespace A265641.P4203179892717145922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A265641.P4203179892717145922

/-!
# A265642: Number of binary strings of length n that can be written as the concatenation of nontrivial powers of other strings.

The programs for A265642, there is no canonical definition to state claims against.
-/

/-! ## A265642.P7350359810693915962

`2^(n+1)-A265639(n+1)`
-/

namespace A265642.P7350359810693915962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A265639 (n + 1)

end

end A265642.P7350359810693915962

/-! ## A265642.P4301395224978649159

`and(-A265639(n+1), A095121(n))`
-/

namespace A265642.P4301395224978649159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A265639 (n + 1)) (A095121 n)

end

end A265642.P4301395224978649159

/-! ## A265642.P3369923628997916613

`abs(A000079(n+1)-A265639(n+1))`
-/

namespace A265642.P3369923628997916613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (n + 1) - A265639 (n + 1)|

end

end A265642.P3369923628997916613

/-! ## A265642.P348697824893848841

`abs(A265639(n+1)-A011782(n+2))`
-/

namespace A265642.P348697824893848841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A265639 (n + 1) - A011782 (n + 2)|

end

end A265642.P348697824893848841

/-! ## A265642.P7517030241923039910

`A168614(n+1)%(A265639(n+1)+5)`
-/

namespace A265642.P7517030241923039910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168614 (n + 1)) (A265639 (n + 1) + 5)

end

end A265642.P7517030241923039910

/-!
# A265643: a(n) = +-1 == ((p - 1)/2)! (mod p), where p is the n-th prime number == 3 (mod 4).

The programs for A265643, there is no canonical definition to state claims against.
-/

/-! ## A265643.P7037766068039388120

`1-and(2, A282037(n+1))`
-/

namespace A265643.P7037766068039388120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A282037 (n + 1))

end

end A265643.P7037766068039388120

/-! ## A265643.P3840495499929674075

`A087960(A002143(n+1)%A000124(n))`
-/

namespace A265643.P3840495499929674075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (Int.tmod (A002143 (n + 1)) (A000124 n)).toNat

end

end A265643.P3840495499929674075

/-! ## A265643.P1415968517672979045

`A033999(A065033(A002143(n+1))%A000124(n))`
-/

namespace A265643.P1415968517672979045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Int.tmod (A065033 (A002143 (n + 1)).toNat) (A000124 n)).toNat

end

end A265643.P1415968517672979045

/-! ## A265643.P6166944057363865587

`A034947(A282037(n+1)%A002246(n+1))`
-/

namespace A265643.P6166944057363865587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (Int.tmod (A282037 (n + 1)) (A002246 (n + 1))).toNat

end

end A265643.P6166944057363865587

/-! ## A265643.P15836960543674581328

`A055975(and(A004767(n), A282037(n+1)))`
-/

namespace A265643.P15836960543674581328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (Int.land (A004767 n) (A282037 (n + 1))).toNat

end

end A265643.P15836960543674581328

/-! ## A265643.P7308809565721655341

`A080909(A095278(n+1))`
-/

namespace A265643.P7308809565721655341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080909 (A095278 (n + 1)).toNat

end

end A265643.P7308809565721655341

/-! ## A265643.P8557365110133252203

`and(2, A228131(A002145(n+1)))-1`
-/

namespace A265643.P8557365110133252203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A228131 (A002145 (n + 1)).toNat) - 1

end

end A265643.P8557365110133252203

/-! ## A265643.P15036047548755335408

`2-A010873(A282037(n+1))`
-/

namespace A265643.P15036047548755335408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010873 (A282037 (n + 1)).toNat

end

end A265643.P15036047548755335408

/-! ## A265643.P2155917257588632143

`A253414(A151895(n)+A002143(n+1))`
-/

namespace A265643.P2155917257588632143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253414 (A151895 n + A002143 (n + 1)).toNat

end

end A265643.P2155917257588632143

/-! ## A265643.P1698007578431515589

`2*A088592(n+1)-1`
-/

namespace A265643.P1698007578431515589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088592 (n + 1) - 1

end

end A265643.P1698007578431515589

/-! ## A265643.P17822299898161451384

`A130517(A088592(n+1)+∑[n+1])-(n+1)`
-/

namespace A265643.P17822299898161451384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A088592 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat - (n + 1 : ℤ)

end

end A265643.P17822299898161451384

/-! ## A265643.P6854562110900801096

`A033999(A304042(n)+A088592(n+1))`
-/

namespace A265643.P6854562110900801096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A304042 n + A088592 (n + 1)).toNat

end

end A265643.P6854562110900801096

/-! ## A265643.P14379209908311033394

`A056220(and(A056220(n), A088592(n+1)))`
-/

namespace A265643.P14379209908311033394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (Int.land (A056220 n) (A088592 (n + 1))).toNat

end

end A265643.P14379209908311033394

/-! ## A265643.P3572730571129124069

`A049347(A138685(n+1)-A088592(n+1))`
-/

namespace A265643.P3572730571129124069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A138685 (n + 1) - A088592 (n + 1)).toNat

end

end A265643.P3572730571129124069

/-! ## A265643.P7590547472808004343

`A088592(n+1)+A088592(A262530(n+1))-1`
-/

namespace A265643.P7590547472808004343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088592 (n + 1) + (A088592 (A262530 (n + 1)).toNat - 1)

end

end A265643.P7590547472808004343

/-! ## A265643.P17671205694481503510

`A008683((A088592(n+1)+1)*A020631(n+1))`
-/

namespace A265643.P17671205694481503510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((A088592 (n + 1) + 1) * A020631 (n + 1)).toNat

end

end A265643.P17671205694481503510

/-! ## A265643.P9801403066314631749

`A049347(A138685(n+1)+2*A088592(n+1))`
-/

namespace A265643.P9801403066314631749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A138685 (n + 1) + 2 * A088592 (n + 1)).toNat

end

end A265643.P9801403066314631749

/-! ## A265643.P8551959251639440289

`or(1, A088592(n+1)-A028236(A215105(n+1)))`
-/

namespace A265643.P8551959251639440289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A088592 (n + 1) - A028236 (A215105 (n + 1)).toNat)

end

end A265643.P8551959251639440289

/-!
# A265644: Triangle read by rows: T(n,m) is the number of quaternary words of length n with m strictly increasing runs (0 <= m <= n).

The programs for A265644, there is no canonical definition to state claims against.
-/

/-! ## A265644.P3902551621328829583

`A002326(n)*A330935(A277966(n+1))`
-/

namespace A265644.P3902551621328829583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n * A330935 (A277966 (n + 1)).toNat

end

end A265644.P3902551621328829583

/-! ## A265644.P7081184713926005615

`A350656(A134478(2*n+1)*A337107(n+1))`
-/

namespace A265644.P7081184713926005615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350656 (A134478 (2 * n + 1) * A337107 (n + 1)).toNat

end

end A265644.P7081184713926005615

/-! ## A265644.P13247517686321906754

`A007095(A194193(n+1)%A194191(2*(n+2)))`
-/

namespace A265644.P13247517686321906754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A194193 (n + 1)) (A194191 (2 * (n + 2)))).toNat

end

end A265644.P13247517686321906754

/-! ## A265644.P14381797073754757549

`A007095(A194193(n+1))%A103429(2*n+5)`
-/

namespace A265644.P14381797073754757549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A194193 (n + 1)).toNat) (A103429 (2 * n + 5))

end

end A265644.P14381797073754757549

/-! ## A265644.P7135193101942063708

`and(A066096(3*n+2), A181819(A034741(n+1)))`
-/

namespace A265644.P7135193101942063708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066096 (3 * n + 2)) (A181819 (A034741 (n + 1)).toNat)

end

end A265644.P7135193101942063708

/-!
# A265645: a(n) = n^2 * floor(n/2).

The programs for A265645, the canonical program `A265645.P10598441175950590557` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265645 has offset 0).

The definition of A265645 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*floor(n/2)` (program `A265645.P10598441175950590557`, by `A265645.P10598441175950590557.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A265645.P10598441175950590557

`n²*floor(n/2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A265645

/-- `n²*floor(n/2)` -/
def P10598441175950590557.Spec : Prop :=
  ∀ n, P10598441175950590557.a n = A265645 n

theorem P10598441175950590557.correct : P10598441175950590557.Spec := by
  intro n
  simp only [A265645]

end A265645

/-! ## A265645.P2941429905578329188

`n²*and(n, -2)/2`
-/

namespace A265645.P2941429905578329188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * Int.land (n : ℤ) (-2) : ℚ) / 2

end

end A265645.P2941429905578329188

namespace A265645

/-- `n²*and(n, -2)/2` -/
def P2941429905578329188.Spec : Prop :=
  ∀ n, P2941429905578329188.a n = (A265645 n : ℚ)

end A265645

/-! ## A265645.P18024782480099857099

`(or(1, n)-1)*n²/2`
-/

namespace A265645.P18024782480099857099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.lor 1 n : ℤ) - 1) * (n ^ 2 : ℤ) : ℚ) / 2

end

end A265645.P18024782480099857099

namespace A265645

/-- `(or(1, n)-1)*n²/2` -/
def P18024782480099857099.Spec : Prop :=
  ∀ n, P18024782480099857099.a n = (A265645 n : ℚ)

end A265645

/-! ## A265645.P441727844029969690

`(n-n%2)*n²/2`
-/

namespace A265645.P441727844029969690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - ((n % 2 : ℕ) : ℤ)) * (n ^ 2 : ℤ) : ℚ) / 2

end

end A265645.P441727844029969690

namespace A265645

/-- `(n-n%2)*n²/2` -/
def P441727844029969690.Spec : Prop :=
  ∀ n, P441727844029969690.a n = (A265645 n : ℚ)

end A265645

/-! ## A265645.P11764942425631456254

`(n-and(1, n))*n²/2`
-/

namespace A265645.P11764942425631456254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - (Nat.land 1 n : ℤ)) * (n ^ 2 : ℤ) : ℚ) / 2

end

end A265645.P11764942425631456254

namespace A265645

/-- `(n-and(1, n))*n²/2` -/
def P11764942425631456254.Spec : Prop :=
  ∀ n, P11764942425631456254.a n = (A265645 n : ℚ)

end A265645

/-! ## A265645.P1683535887640105322

`n²*∑[(n+1)%2]-n²`
-/

namespace A265645.P1683535887640105322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A265645.P1683535887640105322

namespace A265645

/-- `n²*∑[(n+1)%2]-n²` -/
def P1683535887640105322.Spec : Prop :=
  ∀ n, P1683535887640105322.a n = A265645 n

end A265645

/-! ## A265645.P12321257057976297886

`floor(n²*∑[1-a(n-1)])` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A265645.P12321257057976297886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265645.P12321257057976297886

namespace A265645

/-- `floor(n²*∑[1-a(n-1)])` -/
def P12321257057976297886.Spec : Prop :=
  ∀ n, P12321257057976297886.a n = A265645 n

end A265645

/-! ## A265645.P683194100890641790

`abs(n²*A127365(n))`
-/

namespace A265645.P683194100890641790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * A127365 n|

end

end A265645.P683194100890641790

namespace A265645

/-- `abs(n²*A127365(n))` -/
def P683194100890641790.Spec : Prop :=
  ∀ n, P683194100890641790.a n = A265645 n

end A265645

/-! ## A265645.P5060336101790065189

`lcm(n, n²*A004526(n))`
-/

namespace A265645.P5060336101790065189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n ^ 2 : ℤ) * A004526 n)

end

end A265645.P5060336101790065189

namespace A265645

/-- `lcm(n, n²*A004526(n))` -/
def P5060336101790065189.Spec : Prop :=
  ∀ n, (P5060336101790065189.a n : ℤ) = A265645 n

end A265645

/-! ## A265645.P6133122084960022122

`n*∑[n]-A129194(n)`
-/

namespace A265645.P6133122084960022122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - A129194 n

end

end A265645.P6133122084960022122

namespace A265645

/-- `n*∑[n]-A129194(n)` -/
def P6133122084960022122.Spec : Prop :=
  ∀ n, P6133122084960022122.a n = A265645 n

end A265645

/-! ## A265645.P17216817137247863649

`abs((A008619(n)-1)*n²)`
-/

namespace A265645.P17216817137247863649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A008619 n - 1) * (n ^ 2 : ℤ)|

end

end A265645.P17216817137247863649

namespace A265645

/-- `abs((A008619(n)-1)*n²)` -/
def P17216817137247863649.Spec : Prop :=
  ∀ n, P17216817137247863649.a n = A265645 n

end A265645

/-! ## A265645.P4255451443596501213

`(A109613(n)-1)*n²/2`
-/

namespace A265645.P4255451443596501213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A109613 n - 1) * (n ^ 2 : ℤ) : ℚ) / 2

end

end A265645.P4255451443596501213

namespace A265645

/-- `(A109613(n)-1)*n²/2` -/
def P4255451443596501213.Spec : Prop :=
  ∀ n, P4255451443596501213.a n = (A265645 n : ℚ)

end A265645

/-! ## A265645.P7308628121827277329

`n²*A110654(n+1)-n²`
-/

namespace A265645.P7308628121827277329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A110654 (n + 1) - (n ^ 2 : ℤ)

end

end A265645.P7308628121827277329

namespace A265645

/-- `n²*A110654(n+1)-n²` -/
def P7308628121827277329.Spec : Prop :=
  ∀ n, P7308628121827277329.a n = A265645 n

end A265645

/-! ## A265645.P2782411902398264830

`A321672(n)/A289870(n)`
-/

namespace A265645.P2782411902398264830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321672 n : ℚ) / (A289870 n : ℚ)

end

end A265645.P2782411902398264830

namespace A265645

/-- `A321672(n)/A289870(n)` -/
def P2782411902398264830.Spec : Prop :=
  ∀ n, P2782411902398264830.a n = (A265645 n : ℚ)

end A265645

/-! ## A265645.P11788013259216124790

`A130656(n+1)-A213399(n)`
-/

namespace A265645.P11788013259216124790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130656 (n + 1) - A213399 n

end

end A265645.P11788013259216124790

namespace A265645

/-- `A130656(n+1)-A213399(n)` -/
def P11788013259216124790.Spec : Prop :=
  ∀ n, P11788013259216124790.a n = A265645 n

end A265645

/-! ## A265645.P13448616097950018309

`(n-1)*A000578(n)/(A168273(n+1)-2)`
-/

namespace A265645.P13448616097950018309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * A000578 n : ℚ) / (A168273 (n + 1) - 2 : ℚ)

end

end A265645.P13448616097950018309

namespace A265645

/-- `(n-1)*A000578(n)/(A168273(n+1)-2)` -/
def P13448616097950018309.Spec : Prop :=
  ∀ n, P13448616097950018309.a n = (A265645 n : ℚ)

end A265645

/-! ## A265645.P13730319603048207783

`A034828(n)+A122656(n)+A034828(n)`
-/

namespace A265645.P13730319603048207783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 n + (A122656 n + A034828 n)

end

end A265645.P13730319603048207783

namespace A265645

/-- `A034828(n)+A122656(n)+A034828(n)` -/
def P13730319603048207783.Spec : Prop :=
  ∀ n, P13730319603048207783.a n = A265645 n

end A265645

/-! ## A265645.P4401452344348148572

`A131475(n)+A000982(n)*A004526(n)`
-/

namespace A265645.P4401452344348148572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131475 n + A000982 n * A004526 n

end

end A265645.P4401452344348148572

namespace A265645

/-- `A131475(n)+A000982(n)*A004526(n)` -/
def P4401452344348148572.Spec : Prop :=
  ∀ n, P4401452344348148572.a n = A265645 n

end A265645

/-! ## A265645.P11585006545832044961

`A000290(n)*A008619(n)-A000290(n)`
-/

namespace A265645.P11585006545832044961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n * A008619 n - A000290 n

end

end A265645.P11585006545832044961

namespace A265645

/-- `A000290(n)*A008619(n)-A000290(n)` -/
def P11585006545832044961.Spec : Prop :=
  ∀ n, P11585006545832044961.a n = A265645 n

end A265645

/-! ## A265645.P16546883531264443551

`A002522(n)*A004526(n)-A004526(n)`
-/

namespace A265645.P16546883531264443551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A004526 n - A004526 n

end

end A265645.P16546883531264443551

namespace A265645

/-- `A002522(n)*A004526(n)-A004526(n)` -/
def P16546883531264443551.Spec : Prop :=
  ∀ n, P16546883531264443551.a n = A265645 n

end A265645

/-!
# A265646: Numbers k such that k = Sum_{i=1..j} (d_i mod d), where d_i are their aliquot parts and d is one of them.

The programs for A265646, there is no canonical definition to state claims against.
-/

/-! ## A265646.P7420278693688783364

`A109745(A075807(n+1)+1)`
-/

namespace A265646.P7420278693688783364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109745 (A075807 (n + 1) + 1).toNat

end

end A265646.P7420278693688783364

/-!
# A265647: Smallest k such that n divides k*(k+1)*(k+2)/6.

The programs for A265647, there is no canonical definition to state claims against.
-/

/-! ## A265647.P6958671063747241865

`ceil(A085766(n+1)+abs(sin(n)))`
-/

namespace A265647.P6958671063747241865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A085766 (n + 1) : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A265647.P6958671063747241865

/-! ## A265647.P5324191088221661690

`A085766(n+1)+A057427(n)`
-/

namespace A265647.P5324191088221661690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085766 (n + 1) + A057427 n

end

end A265647.P5324191088221661690

/-! ## A265647.P9839952374435877881

`A085766(n+1)-A057428(n)`
-/

namespace A265647.P9839952374435877881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085766 (n + 1) - A057428 n

end

end A265647.P9839952374435877881

/-! ## A265647.P13315334662695096781

`A345990(A165988(n+1))`
-/

namespace A265647.P13315334662695096781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345990 (A165988 (n + 1)).toNat

end

end A265647.P13315334662695096781

/-! ## A265647.P4721068611312599561

`A345990(A298028(n+1))`
-/

namespace A265647.P4721068611312599561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345990 (A298028 (n + 1)).toNat

end

end A265647.P4721068611312599561

/-! ## A265647.P1363373461664029801

`A345990(A385555(n+1))`
-/

namespace A265647.P1363373461664029801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345990 (A385555 (n + 1)).toNat

end

end A265647.P1363373461664029801

/-! ## A265647.P926685425450520834

`A345990(6*(n+1))`
-/

namespace A265647.P926685425450520834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345990 (6 * (n + 1))

end

end A265647.P926685425450520834

/-! ## A265647.P3480544704564882121

`A345990(A008458(n+1))%A008458(n+1)`
-/

namespace A265647.P3480544704564882121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345990 (A008458 (n + 1)).toNat) (A008458 (n + 1))

end

end A265647.P3480544704564882121

/-!
# A265650: Removing the first occurrence of 1, 2, 3, ... reproduces the sequence itself. Each run of consecutive removed terms is separated from the next one by a term a(k) <= a(k-1) such that floor(sqrt(a(k))) equals the length of the run.

The programs for A265650, there is no canonical definition to state claims against.
-/

/-! ## A265650.P1188430715528596407

`A003602(xor(A090620(n), A187829(n+1)))`
-/

namespace A265650.P1188430715528596407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Int.xor (A090620 n) (A187829 (n + 1))).toNat

end

end A265650.P1188430715528596407

/-! ## A265650.P3387352272145479430

`A336392(xor(A090620(n), A187829(n+1)))`
-/

namespace A265650.P3387352272145479430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336392 (Int.xor (A090620 n) (A187829 (n + 1))).toNat

end

end A265650.P3387352272145479430

/-! ## A265650.P5219765146778843790

`A336934(xor(A090620(n), A187829(n+1)))`
-/

namespace A265650.P5219765146778843790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336934 (Int.xor (A090620 n) (A187829 (n + 1))).toNat

end

end A265650.P5219765146778843790

/-!
# A265652: Triangle read by rows: T(n,k) is the sum of the union of the divisors of n and k.

The programs for A265652, there is no canonical definition to state claims against.
-/

/-! ## A265652.P5818769146887604495

`A222085(A051173(n+1)%A222086(n+3))`
-/

namespace A265652.P5818769146887604495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222085 (Int.tmod (A051173 (n + 1)) (A222086 (n + 3))).toNat

end

end A265652.P5818769146887604495

/-! ## A265652.P12820508535556942788

`A222085(gcd(A051173(n+1), A222086(n+3)))`
-/

namespace A265652.P12820508535556942788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222085 (Int.gcd (A051173 (n + 1)) (A222086 (n + 3)))

end

end A265652.P12820508535556942788

/-!
# A265653: Integers k such that (k-1)^3 + 1 is a Fermat pseudoprime to base 2 (A001567).

The programs for A265653, there is no canonical definition to state claims against.
-/

/-! ## A265653.P6793020342836067242

`A270840(n+1)+1`
-/

namespace A265653.P6793020342836067242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270840 (n + 1) + 1

end

end A265653.P6793020342836067242

/-! ## A265653.P6433809942654972946

`or(1, A270840(log2(2*2^n)))`
-/

namespace A265653.P6433809942654972946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A270840 (SequenceMachineLib.roundAway (Real.logb 2 (2 * 2 ^ n : ℝ))).toNat)

end

end A265653.P6433809942654972946

/-! ## A265653.P17080435629144541807

`xor(1, A270840(1-A001489(n)))`
-/

namespace A265653.P17080435629144541807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A270840 (1 - A001489 n).toNat)

end

end A265653.P17080435629144541807

/-! ## A265653.P2545871419851258727

`xor(1, A270840(A008624(4*n)))`
-/

namespace A265653.P2545871419851258727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A270840 (A008624 (4 * n)).toNat)

end

end A265653.P2545871419851258727

/-! ## A265653.P5449772260218324922

`xor(((-1)^A007318(n))², A270840(log2(2*2^n)))`
-/

namespace A265653.P5449772260218324922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2)) (A270840 (SequenceMachineLib.roundAway (Real.logb 2 (2 * 2 ^ n : ℝ))).toNat)

end

end A265653.P5449772260218324922

/-!
# A265654: Number of nX3 arrays containing 3 copies of 0..n-1 with no equal diagonal or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265654, there is no canonical definition to state claims against.
-/

/-! ## A265654.P270455543277702022

`A265656(∑[n+3]+1)`
-/

namespace A265654.P270455543277702022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265656 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265654.P270455543277702022

/-!
# A265655: Number of nX4 arrays of permutations of 4 copies of 0..n-1 with no equal diagonal or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265655, there is no canonical definition to state claims against.
-/

/-! ## A265655.P2802812994476078743

`A265656(∑[n+4]+3)`
-/

namespace A265655.P2802812994476078743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265656 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A265655.P2802812994476078743

/-!
# A265657: Number of 3Xn arrays containing n copies of 0..3-1 with no equal diagonal or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265657, there is no canonical definition to state claims against.
-/

/-! ## A265657.P9800336953796542301

`A265656(∑[n+2]+4)`
-/

namespace A265657.P9800336953796542301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265656 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265657.P9800336953796542301

/-! ## A265657.P12428055153298754051

`lcm((-1)^n, A265656(A167614(n+1)))`
-/

namespace A265657.P12428055153298754051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A265656 (A167614 (n + 1)).toNat)

end

end A265657.P12428055153298754051

/-! ## A265657.P17823107670620466545

`record[A265656(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A265657.P17823107670620466545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265656 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265657.P17823107670620466545

/-! ## A265657.P5239809096347454281

`A265656(A167614(n+1))+A025439(n)`
-/

namespace A265657.P5239809096347454281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265656 (A167614 (n + 1)).toNat + A025439 n

end

end A265657.P5239809096347454281

/-! ## A265657.P736279602556648253

`A265656(A167614(n+1))+A025443(n)`
-/

namespace A265657.P736279602556648253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265656 (A167614 (n + 1)).toNat + A025443 n

end

end A265657.P736279602556648253

/-!
# A265658: Number of 4 X n arrays containing n copies of 0..4-1 with no equal diagonal or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265658, there is no canonical definition to state claims against.
-/

/-! ## A265658.P8457213764550148632

`A265656(∑[n+3]+7)`
-/

namespace A265658.P8457213764550148632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265656 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A265658.P8457213764550148632

/-!
# A265659: Number of 5Xn arrays containing n copies of 0..5-1 with no equal diagonal or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265659, there is no canonical definition to state claims against.
-/

/-! ## A265659.P5818349976810067423

`A265656(A167499(n+3))`
-/

namespace A265659.P5818349976810067423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265656 (A167499 (n + 3)).toNat

end

end A265659.P5818349976810067423

/-! ## A265659.P17845357144912258541

`A265656(A155212(n)+13)`
-/

namespace A265659.P17845357144912258541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265656 (A155212 n + 13).toNat

end

end A265659.P17845357144912258541

/-! ## A265659.P14919950013496887451

`A265656(A056000(n)+15)`
-/

namespace A265659.P14919950013496887451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265656 (A056000 n + 15).toNat

end

end A265659.P14919950013496887451

/-!
# A265660: Number of nX2 arrays containing 2 copies of 0..n-1 with no element plus any horizontal or vertical neighbor equal to n-1.

The programs for A265660, there is no canonical definition to state claims against.
-/

/-! ## A265660.P1023851918382273103

`A265663(∑[n+2])`
-/

namespace A265660.P1023851918382273103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265663 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265660.P1023851918382273103

/-! ## A265660.P14784735170142210028

`lcm(2, A265663(A000096(n+1)))`
-/

namespace A265660.P14784735170142210028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A265663 (A000096 (n + 1)).toNat)

end

end A265660.P14784735170142210028

/-! ## A265660.P8067065812813591257

`A326636(n)+A265663(A000096(n+1))`
-/

namespace A265660.P8067065812813591257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326636 n + A265663 (A000096 (n + 1)).toNat

end

end A265660.P8067065812813591257

/-! ## A265660.P12775431749119963987

`A071625(n+1)*A265663(A000096(n+1))`
-/

namespace A265660.P12775431749119963987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1) * A265663 (A000096 (n + 1)).toNat

end

end A265660.P12775431749119963987

/-! ## A265660.P2570104771253681371

`A205303(n+1)*A265663(A000096(n+1))`
-/

namespace A265660.P2570104771253681371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205303 (n + 1) * A265663 (A000096 (n + 1)).toNat

end

end A265660.P2570104771253681371

/-!
# A265661: Number of nX3 arrays containing 3 copies of 0..n-1 with no element plus any horizontal or vertical neighbor equal to n-1.

The programs for A265661, there is no canonical definition to state claims against.
-/

/-! ## A265661.P6104914721619406986

`A265663(∑[n+3]+1)`
-/

namespace A265661.P6104914721619406986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265663 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265661.P6104914721619406986

/-! ## A265661.P17782447056952547681

`lcm(A059995(3*n+4)², A265663(A034856(n+2)))`
-/

namespace A265661.P17782447056952547681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059995 (3 * n + 4) ^ 2) (A265663 (A034856 (n + 2)).toNat)

end

end A265661.P17782447056952547681

/-!
# A265662: Number of nX4 arrays of permutations of 4 copies of 0..n-1 with no element plus any horizontal or vertical neighbor equal to n-1.

The programs for A265662, there is no canonical definition to state claims against.
-/

/-! ## A265662.P7718224721055783248

`A265663(A141214(n+1))`
-/

namespace A265662.P7718224721055783248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265663 (A141214 (n + 1)).toNat

end

end A265662.P7718224721055783248

/-! ## A265662.P14100675785092566410

`A265663(A052905(n+1)+2)`
-/

namespace A265662.P14100675785092566410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265663 (A052905 (n + 1) + 2).toNat

end

end A265662.P14100675785092566410

/-! ## A265662.P737398344082283471

`A265663(A155212(n+1)-n)`
-/

namespace A265662.P737398344082283471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265663 (A155212 (n + 1) - (n : ℤ)).toNat

end

end A265662.P737398344082283471

/-!
# A265664: Number of 3Xn arrays containing n copies of 0..3-1 with no element plus any horizontal or vertical neighbor equal to 3-1.

The programs for A265664, there is no canonical definition to state claims against.
-/

/-! ## A265664.P6449947295432055269

`A265663(∑[n+2]+4)`
-/

namespace A265664.P6449947295432055269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265663 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265664.P6449947295432055269

/-! ## A265664.P17245575180166664172

`lcm(2, A265663(A167614(n+1)))`
-/

namespace A265664.P17245575180166664172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A265663 (A167614 (n + 1)).toNat)

end

end A265664.P17245575180166664172

/-! ## A265664.P15202041729686303133

`A265663(A167614(n+1))+A025462(n)`
-/

namespace A265664.P15202041729686303133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265663 (A167614 (n + 1)).toNat + A025462 n

end

end A265664.P15202041729686303133

/-! ## A265664.P678434203002606606

`A265663(A167614(n+1))+A059995(n)`
-/

namespace A265664.P678434203002606606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265663 (A167614 (n + 1)).toNat + A059995 n

end

end A265664.P678434203002606606

/-! ## A265664.P6127319636960059548

`A265663(A167614(n+1))%A016962(n)`
-/

namespace A265664.P6127319636960059548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265663 (A167614 (n + 1)).toNat) (A016962 n)

end

end A265664.P6127319636960059548

/-!
# A265665: Number of 4Xn arrays containing n copies of 0..4-1 with no element plus any horizontal or vertical neighbor equal to 4-1.

The programs for A265665, there is no canonical definition to state claims against.
-/

/-! ## A265665.P6880096657909197322

`A265663(∑[n+3]+7)`
-/

namespace A265665.P6880096657909197322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265663 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A265665.P6880096657909197322

/-!
# A265666: Number of 5Xn arrays containing n copies of 0..5-1 with no element plus any horizontal or vertical neighbor equal to 5-1.

The programs for A265666, there is no canonical definition to state claims against.
-/

/-! ## A265666.P6381321526006268930

`A265663(A167499(n+3))`
-/

namespace A265666.P6381321526006268930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265663 (A167499 (n + 3)).toNat

end

end A265666.P6381321526006268930

/-! ## A265666.P5744641239720719964

`A265663(A155212(n)+13)`
-/

namespace A265666.P5744641239720719964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265663 (A155212 n + 13).toNat

end

end A265666.P5744641239720719964

/-! ## A265666.P15526706218767092042

`A265663(A056000(n)+15)`
-/

namespace A265666.P15526706218767092042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265663 (A056000 n + 15).toNat

end

end A265666.P15526706218767092042

/-!
# A265667: Permutation of nonnegative integers: a(n) = n + floor(n/3)*(-1)^(n mod 3).

The programs for A265667, the canonical program `A265667.P1916359121541946277` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265667 has offset 0).

The definition of A265667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265667.P118266979220403550

`n+floor(n/3)*(-1)^(n%3)`
-/

namespace A265667.P118266979220403550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + ⌊(n : ℚ) / 3⌋ * (-1) ^ (n % 3)

end

end A265667.P118266979220403550

namespace A265667

/-- `n+floor(n/3)*(-1)^(n%3)` -/
def P118266979220403550.Spec : Prop :=
  ∀ n, P118266979220403550.a n = A265667 n

end A265667

/-! ## A265667.P1916359121541946277

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=3, a(5)=6`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A265667

/-- `2*a(n-3)-a(n-6)` -/
def P1916359121541946277.Spec : Prop :=
  ∀ n, P1916359121541946277.a n = A265667 n

theorem P1916359121541946277.correct : P1916359121541946277.Spec := by
  intro n
  simp only [A265667]

end A265667

/-! ## A265667.P18434475764190379973

`xor(1, a(n-3))+3` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A265667.P18434475764190379973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  Nat.xor 1 (a (n - 3)) + 3

end

end A265667.P18434475764190379973

namespace A265667

/-- `xor(1, a(n-3))+3` -/
def P18434475764190379973.Spec : Prop :=
  ∀ n, (P18434475764190379973.a n : ℤ) = A265667 n

end A265667

/-! ## A265667.P9172526436482636231

`round(2*n/3)*Δ[round(5*n/3)]`
-/

namespace A265667.P9172526436482636231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((n : ℚ) / 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) * (f1 (n + 1) - f1 n)

end

end A265667.P9172526436482636231

namespace A265667

/-- `round(2*n/3)*Δ[round(5*n/3)]` -/
def P9172526436482636231.Spec : Prop :=
  ∀ n, P9172526436482636231.a n = A265667 n

end A265667

/-! ## A265667.P7894098980836137746

`a(n-3)+2*gcd(2, a(n-3))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A265667.P7894098980836137746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 3) + 2 * Nat.gcd 2 (a (n - 3))

end

end A265667.P7894098980836137746

namespace A265667

/-- `a(n-3)+2*gcd(2, a(n-3))` -/
def P7894098980836137746.Spec : Prop :=
  ∀ n, (P7894098980836137746.a n : ℤ) = A265667 n

end A265667

/-! ## A265667.P10813370593090059901

`a(n-3)+(-1)^a(n-3)+3` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A265667.P10813370593090059901
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 3) + ((-1 : ℝ) ^ (a (n - 3)) + 3)

end

end A265667.P10813370593090059901

namespace A265667

/-- `a(n-3)+(-1)^a(n-3)+3` -/
def P10813370593090059901.Spec : Prop :=
  ∀ n, P10813370593090059901.a n = (A265667 n : ℝ)

end A265667

/-! ## A265667.P11770293329404911658

`floor(n/3)*A257075(n)+n`
-/

namespace A265667.P11770293329404911658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ * A257075 n + (n : ℤ)

end

end A265667.P11770293329404911658

namespace A265667

/-- `floor(n/3)*A257075(n)+n` -/
def P11770293329404911658.Spec : Prop :=
  ∀ n, P11770293329404911658.a n = A265667 n

end A265667

/-! ## A265667.P13637409311887528278

`A367286(A064429(n))`
-/

namespace A265667.P13637409311887528278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367286 (A064429 n).toNat

end

end A265667.P13637409311887528278

namespace A265667

/-- `A367286(A064429(n))` -/
def P13637409311887528278.Spec : Prop :=
  ∀ n, P13637409311887528278.a n = A265667 n

end A265667

/-! ## A265667.P7700446259378512665

`A168056(n)-A005131(n)`
-/

namespace A265667.P7700446259378512665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 n - A005131 n

end

end A265667.P7700446259378512665

namespace A265667

/-- `A168056(n)-A005131(n)` -/
def P7700446259378512665.Spec : Prop :=
  ∀ n, P7700446259378512665.a n = A265667 n

end A265667

/-! ## A265667.P12280078466563442138

`A006369(A064429(n)+1)-1`
-/

namespace A265667.P12280078466563442138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A064429 n + 1).toNat - 1

end

end A265667.P12280078466563442138

namespace A265667

/-- `A006369(A064429(n)+1)-1` -/
def P12280078466563442138.Spec : Prop :=
  ∀ n, P12280078466563442138.a n = A265667 n

end A265667

/-! ## A265667.P8794421091498987821

`A080782(n+1)-A332057(n+1)+n`
-/

namespace A265667.P8794421091498987821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (n + 1) - A332057 (n + 1) + (n : ℤ)

end

end A265667.P8794421091498987821

namespace A265667

/-- `A080782(n+1)-A332057(n+1)+n` -/
def P8794421091498987821.Spec : Prop :=
  ∀ n, P8794421091498987821.a n = A265667 n

end A265667

/-! ## A265667.P10225347998730849779

`A004396(n)+A004396(n*A204418(n))`
-/

namespace A265667.P10225347998730849779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 ((n : ℤ) * A204418 n).toNat

end

end A265667.P10225347998730849779

namespace A265667

/-- `A004396(n)+A004396(n*A204418(n))` -/
def P10225347998730849779.Spec : Prop :=
  ∀ n, P10225347998730849779.a n = A265667 n

end A265667

/-! ## A265667.P10904767690594196226

`A004523(n)+gcd(A004396(n), A004523(n))`
-/

namespace A265667.P10904767690594196226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n + (Int.gcd (A004396 n) (A004523 n) : ℤ)

end

end A265667.P10904767690594196226

namespace A265667

/-- `A004523(n)+gcd(A004396(n), A004523(n))` -/
def P10904767690594196226.Spec : Prop :=
  ∀ n, P10904767690594196226.a n = A265667 n

end A265667

/-! ## A265667.P15228113938334994514

`(A102283(n)+A042965(n+1))/A131534(n)`
-/

namespace A265667.P15228113938334994514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102283 n + A042965 (n + 1) : ℚ) / (A131534 n : ℚ)

end

end A265667.P15228113938334994514

namespace A265667

/-- `(A102283(n)+A042965(n+1))/A131534(n)` -/
def P15228113938334994514.Spec : Prop :=
  ∀ n, P15228113938334994514.a n = (A265667 n : ℚ)

end A265667

/-! ## A265667.P2924635671629814176

`(A004772(n+1)-A022003(n))/A131534(n)`
-/

namespace A265667.P2924635671629814176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004772 (n + 1) - A022003 n : ℚ) / (A131534 n : ℚ)

end

end A265667.P2924635671629814176

namespace A265667

/-- `(A004772(n+1)-A022003(n))/A131534(n)` -/
def P2924635671629814176.Spec : Prop :=
  ∀ n, P2924635671629814176.a n = (A265667 n : ℚ)

end A265667

/-! ## A265667.P6887979246631434221

`2*n+1-A043547(A004396(n+2))`
-/

namespace A265667.P6887979246631434221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A043547 (A004396 (n + 2)).toNat

end

end A265667.P6887979246631434221

namespace A265667

/-- `2*n+1-A043547(A004396(n+2))` -/
def P6887979246631434221.Spec : Prop :=
  ∀ n, P6887979246631434221.a n = A265667 n

end A265667

/-! ## A265667.P15958774933459462601

`A004396(n)+A004396(n)*A141571(n+1)`
-/

namespace A265667.P15958774933459462601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 n * A141571 (n + 1)

end

end A265667.P15958774933459462601

namespace A265667

/-- `A004396(n)+A004396(n)*A141571(n+1)` -/
def P15958774933459462601.Spec : Prop :=
  ∀ n, P15958774933459462601.a n = A265667 n

end A265667

/-! ## A265667.P17586025773339124448

`(A042965(n+2)-A100063(n+1))/A131534(n)`
-/

namespace A265667.P17586025773339124448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042965 (n + 2) - A100063 (n + 1) : ℚ) / (A131534 n : ℚ)

end

end A265667.P17586025773339124448

namespace A265667

/-- `(A042965(n+2)-A100063(n+1))/A131534(n)` -/
def P17586025773339124448.Spec : Prop :=
  ∀ n, P17586025773339124448.a n = (A265667 n : ℚ)

end A265667

/-! ## A265667.P2120816898998046040

`(A042965(n+2)-A100063(n+1))/A101825(n+1)`
-/

namespace A265667.P2120816898998046040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042965 (n + 2) - A100063 (n + 1) : ℚ) / (A101825 (n + 1) : ℚ)

end

end A265667.P2120816898998046040

namespace A265667

/-- `(A042965(n+2)-A100063(n+1))/A101825(n+1)` -/
def P2120816898998046040.Spec : Prop :=
  ∀ n, P2120816898998046040.a n = (A265667 n : ℚ)

end A265667

/-! ## A265667.P10169806107815498892

`n+1-A135997(n+2)`
-/

namespace A265667.P10169806107815498892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A135997 (n + 2)

end

end A265667.P10169806107815498892

namespace A265667

/-- `n+1-A135997(n+2)` -/
def P10169806107815498892.Spec : Prop :=
  ∀ n, P10169806107815498892.a n = A265667 n

end A265667

/-!
# A265669: Carmichael numbers that are the average of two consecutive primes.

The programs for A265669, there is no canonical definition to state claims against.
-/

/-! ## A265669.P10775696387775816583

`∩[A002997(n+1), A265684(n+1)]`
-/

namespace A265669.P10775696387775816583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265669.P10775696387775816583

/-! ## A265669.P18132691847715822550

`∩[A081703(n+1)*A141710(n+1), A265684(n+1)]`
-/

namespace A265669.P18132691847715822550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081703 (n + 1) * A141710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265669.P18132691847715822550

/-! ## A265669.P6653304532054712108

`∩[A174590(n+1)*A306414(n+1)+1, A265684(n+1)]`
-/

namespace A265669.P6653304532054712108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174590 (n + 1) * A306414 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265669.P6653304532054712108

/-!
# A265670: Numbers n such that n^5 + n^4 + n^3 + n^2 + n - 1 is prime.

The programs for A265670, there is no canonical definition to state claims against.
-/

/-! ## A265670.P11316561965418906533

`floor(root(A182384(n+1), 5))`
-/

namespace A265670.P11316561965418906533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182384 (n + 1) : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A265670.P11316561965418906533

/-! ## A265670.P11960817182192526203

`round(root(A182384(abs(2*n-n)+1), 5))`
-/

namespace A265670.P11960817182192526203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A182384 (|(2 * n : ℤ) - (n : ℤ)| + 1).toNat : ℝ) ^ (1 / (5 : ℝ)))

end

end A265670.P11960817182192526203

/-! ## A265670.P12670338573412733897

`round(root(A182384(n+1), 5))%A017260(n)`
-/

namespace A265670.P12670338573412733897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A182384 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))) (A017260 n)

end

end A265670.P12670338573412733897

/-! ## A265670.P10776838214378679673

`ceil(root(A182384(n+1), 5)-A007318(C(2, n)))`
-/

namespace A265670.P10776838214378679673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182384 (n + 1) : ℝ) ^ (1 / (5 : ℝ)) - (A007318 (Nat.choose 2 n) : ℝ)⌉

end

end A265670.P10776838214378679673

/-! ## A265670.P18347607687238103782

`A028310(round(root(A182384(n+1), 5)))`
-/

namespace A265670.P18347607687238103782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A182384 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))).toNat

end

end A265670.P18347607687238103782

/-!
# A265671: Directions of edges in a plane-filling curve of order 13.

The programs for A265671, there is no canonical definition to state claims against.
-/

/-! ## A265671.P2763738541041846151

`A259154(xor(A014106(n), A036374(n)))`
-/

namespace A265671.P2763738541041846151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259154 (Int.xor (A014106 n) (A036374 n)).toNat

end

end A265671.P2763738541041846151

/-! ## A265671.P5121717235718843516

`A001221(or(A055073(n+1), A290234(n)))`
-/

namespace A265671.P5121717235718843516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A055073 (n + 1)) (A290234 n)).toNat

end

end A265671.P5121717235718843516

/-! ## A265671.P4252320683710614414

`A159335(A014459(n+1)*A014465(n+1))`
-/

namespace A265671.P4252320683710614414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159335 (A014459 (n + 1) * A014465 (n + 1)).toNat

end

end A265671.P4252320683710614414

/-! ## A265671.P16709931736181944531

`gcd(A002375(A124324(2*n)), A332207(n+5))`
-/

namespace A265671.P16709931736181944531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002375 (A124324 (2 * n)).toNat) (A332207 (n + 5))

end

end A265671.P16709931736181944531

/-! ## A265671.P14123035625917764877

`A359538(A308465(n+2))`
-/

namespace A265671.P14123035625917764877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359538 (A308465 (n + 2)).toNat

end

end A265671.P14123035625917764877

/-!
# A265672: a(n) = n + floor((n+1)/7)*(-1)^((n+1) mod 7).

The programs for A265672, the canonical program `A265672.P2128183555827788180` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265672 has offset 0).

The definition of A265672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265672.P2128183555827788180

`n+floor((n+1)/7)*(-1)^((n+1)%7)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A265672

/-- `n+floor((n+1)/7)*(-1)^((n+1)%7)` -/
def P2128183555827788180.Spec : Prop :=
  ∀ n, P2128183555827788180.a n = A265672 n

theorem P2128183555827788180.correct : P2128183555827788180.Spec := by
  intro n
  simp only [A265672]

end A265672

/-! ## A265672.P16071812695496736296

`xor(n, A357849(A160124(n)))`
-/

namespace A265672.P16071812695496736296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A357849 (A160124 n).toNat)

end

end A265672.P16071812695496736296

namespace A265672

/-- `xor(n, A357849(A160124(n)))` -/
def P16071812695496736296.Spec : Prop :=
  ∀ n, P16071812695496736296.a n = A265672 n

end A265672

/-!
# A265673: Area A under the trajectory of each odd number in the "3x+1" problem.

The programs for A265673, there is no canonical definition to state claims against.
-/

/-! ## A265673.P1436816433033316886

`A270814(Δ[n²])+n`
-/

namespace A265673.P1436816433033316886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270814 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A265673.P1436816433033316886

/-! ## A265673.P9542616859484455936

`n+A270814(2*n+1)`
-/

namespace A265673.P9542616859484455936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A270814 (2 * n + 1)

end

end A265673.P9542616859484455936

/-! ## A265673.P12735367822673979182

`A033493(Δ[n²])-(n+1)`
-/

namespace A265673.P12735367822673979182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A265673.P12735367822673979182

/-! ## A265673.P6079156245114908781

`A033493(2*n+1)-n-1`
-/

namespace A265673.P6079156245114908781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 (2 * n + 1) - (n : ℤ) - 1

end

end A265673.P6079156245114908781

/-! ## A265673.P17041139887806161703

`n-A033493(A006370(Δ[n²]))*A057428(n)`
-/

namespace A265673.P17041139887806161703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A033493 (A006370 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat * A057428 n

end

end A265673.P17041139887806161703

/-!
# A265674: Sequence that encodes the compliform polynomials associated to the tree of hemitropic sequences.

The programs for A265674, there is no canonical definition to state claims against.
-/

/-! ## A265674.P1029043197375549103

`A001511(A000716(n+1))-A001221(n+1)`
-/

namespace A265674.P1029043197375549103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000716 (n + 1)).toNat - A001221 (n + 1)

end

end A265674.P1029043197375549103

/-! ## A265674.P8691163510877441412

`A129182(3*n+1)-A010815(A061978(n+1))`
-/

namespace A265674.P8691163510877441412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129182 (3 * n + 1) - A010815 (A061978 (n + 1)).toNat

end

end A265674.P8691163510877441412

/-! ## A265674.P895079555379706915

`A053121(n+3)-A056170(A296599(2*n+1))`
-/

namespace A265674.P895079555379706915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (n + 3) - A056170 (A296599 (2 * n + 1)).toNat

end

end A265674.P895079555379706915

/-!
# A265675: Number of smaller squarefree numbers that are coprime to the n-th squarefree number.

The programs for A265675, there is no canonical definition to state claims against.
-/

/-! ## A265675.P13042418229366076231

`A073311(record[A083346(n+1)])%(n+1)`
-/

namespace A265675.P13042418229366076231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073311 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (n + 1 : ℤ)

end

end A265675.P13042418229366076231

/-! ## A265675.P3909244559771539819

`A231117(record[A097248(n+1)])%(n+1)`
-/

namespace A265675.P3909244559771539819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231117 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (n + 1 : ℤ)

end

end A265675.P3909244559771539819

/-! ## A265675.P2636710469844033133

`A073311(record[A007947(n+1)])-A000007(n)`
-/

namespace A265675.P2636710469844033133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073311 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A000007 n

end

end A265675.P2636710469844033133

/-! ## A265675.P9352842001231110930

`A073311(record[A007947(n+1)])%A004709(n+1)`
-/

namespace A265675.P9352842001231110930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073311 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A004709 (n + 1))

end

end A265675.P9352842001231110930

/-! ## A265675.P14970903179484978377

`A231117(record[A007947(n+1)])%A004709(n+1)`
-/

namespace A265675.P14970903179484978377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231117 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A004709 (n + 1))

end

end A265675.P14970903179484978377

/-!
# A265676: a(n) is the total number of petals of the Flower of Life at the n-th iteration.

The programs for A265676, the canonical program `A265676.P4289557355793693997` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265676 has offset 0).

The definition of A265676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265676.P4289557355793693997

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=19, a(4)=43, a(5)=67`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A265676

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P4289557355793693997.Spec : Prop :=
  ∀ n, P4289557355793693997.a n = A265676 n

theorem P4289557355793693997.correct : P4289557355793693997.Spec := by
  intro n
  simp only [A265676]

end A265676

/-! ## A265676.P9796412912709325605

`A049450(n)-A010875(A004273(n))`
-/

namespace A265676.P9796412912709325605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n - A010875 (A004273 n).toNat

end

end A265676.P9796412912709325605

namespace A265676

/-- `A049450(n)-A010875(A004273(n))` -/
def P9796412912709325605.Spec : Prop :=
  ∀ n, P9796412912709325605.a n = A265676 n

end A265676

/-! ## A265676.P13284920009806690758

`A003215(n)-A008458(A008576(n+1)%(n+1))`
-/

namespace A265676.P13284920009806690758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - A008458 (Int.tmod (A008576 (n + 1)) (n + 1 : ℤ)).toNat

end

end A265676.P13284920009806690758

namespace A265676

/-- `A003215(n)-A008458(A008576(n+1)%(n+1))` -/
def P13284920009806690758.Spec : Prop :=
  ∀ n, P13284920009806690758.a n = A265676 n

end A265676

/-! ## A265676.P7265642645167936415

`record[A003215(n)-A008458(A047222(n+1))]`
-/

namespace A265676.P7265642645167936415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - A008458 (A047222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265676.P7265642645167936415

namespace A265676

/-- `record[A003215(n)-A008458(A047222(n+1))]` -/
def P7265642645167936415.Spec : Prop :=
  ∀ n, P7265642645167936415.a n = A265676 n

end A265676

/-! ## A265676.P13155992483355071338

`A019426(record[A000463(n+1)]-A008611(n))`
-/

namespace A265676.P13155992483355071338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A008611 n).toNat

end

end A265676.P13155992483355071338

namespace A265676

/-- `A019426(record[A000463(n+1)]-A008611(n))` -/
def P13155992483355071338.Spec : Prop :=
  ∀ n, P13155992483355071338.a n = A265676 n

end A265676

/-!
# A265677: Number of n X 2 arrays containing 2 copies of 0..n-1 with no equal vertical or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265677, there is no canonical definition to state claims against.
-/

/-! ## A265677.P1966952672598839372

`A265679(∑[n+2])`
-/

namespace A265677.P1966952672598839372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265679 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265677.P1966952672598839372

/-! ## A265677.P17384218594447731422

`A059559(A059861(n+1))`
-/

namespace A265677.P17384218594447731422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059559 (A059861 (n + 1)).toNat

end

end A265677.P17384218594447731422

/-!
# A265678: Number of nX3 arrays containing 3 copies of 0..n-1 with no equal vertical or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265678, there is no canonical definition to state claims against.
-/

/-! ## A265678.P4007072299651425694

`A265679(∑[n+3]+1)`
-/

namespace A265678.P4007072299651425694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265679 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265678.P4007072299651425694

/-!
# A265680: Number of 3Xn arrays containing n copies of 0..3-1 with no equal vertical or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265680, there is no canonical definition to state claims against.
-/

/-! ## A265680.P6158541354623401620

`A265679(∑[n+2]+4)`
-/

namespace A265680.P6158541354623401620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265679 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265680.P6158541354623401620

/-! ## A265680.P6447257007394379526

`and(-1, A265679(A167614(n+1)))`
-/

namespace A265680.P6447257007394379526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A265679 (A167614 (n + 1)).toNat)

end

end A265680.P6447257007394379526

/-! ## A265680.P17941562664942916722

`record[root(A265679(n+2), A265679(n+1))]`
-/

namespace A265680.P17941562664942916722
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A265679 (n + 2) : ℝ) ^ (1 / (A265679 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265680.P17941562664942916722

/-! ## A265680.P8360345143099239233

`A265679(A167614(n+1))+A025466(n)`
-/

namespace A265680.P8360345143099239233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265679 (A167614 (n + 1)).toNat + A025466 n

end

end A265680.P8360345143099239233

/-! ## A265680.P3109543787431647534

`A265679(A167614(n+1))+A059995(n)`
-/

namespace A265680.P3109543787431647534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265679 (A167614 (n + 1)).toNat + A059995 n

end

end A265680.P3109543787431647534

/-!
# A265681: Number of 4Xn arrays containing n copies of 0..4-1 with no equal vertical or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265681, there is no canonical definition to state claims against.
-/

/-! ## A265681.P11024886199592215165

`A265679(∑[n+3]+7)`
-/

namespace A265681.P11024886199592215165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265679 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A265681.P11024886199592215165

/-!
# A265682: Number of 5Xn arrays containing n copies of 0..5-1 with no equal vertical or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265682, there is no canonical definition to state claims against.
-/

/-! ## A265682.P11222115261436156314

`record[char[∑[n]]*A265679(n+5)]`
-/

namespace A265682.P11222115261436156314
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A265679 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265682.P11222115261436156314

/-! ## A265682.P1416469879518395145

`A265679(A167499(n+3))`
-/

namespace A265682.P1416469879518395145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265679 (A167499 (n + 3)).toNat

end

end A265682.P1416469879518395145

/-! ## A265682.P14681734823691804594

`A265679(A155212(n)+13)`
-/

namespace A265682.P14681734823691804594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265679 (A155212 n + 13).toNat

end

end A265682.P14681734823691804594

/-!
# A265683: Numbers n such that 16^n * (16^n - 1) - 1 is prime.

The programs for A265683, there is no canonical definition to state claims against.
-/

/-! ## A265683.P3336008651564761476

`eq[1, A099478(A008574(n))]`
-/

namespace A265683.P3336008651564761476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099478 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265683.P3336008651564761476

/-!
# A265686: Number of shapes of grid-filling curves of order 6*n+1 (on the tri-hexagonal grid) with turns by +-60 and +-120 degrees that are generated by Lindenmayer-systems with just one symbol apart from the turns.

The programs for A265686, there is no canonical definition to state claims against.
-/

/-! ## A265686.P12490173517306786059

`A298786(lt[n, A141248(n+1)])`
-/

namespace A265686.P12490173517306786059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A265686.P12490173517306786059

/-! ## A265686.P9700394184377431930

`∑[A307838(∑[A269694(n+1)])]`
-/

namespace A265686.P9700394184377431930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269694 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307838 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265686.P9700394184377431930

/-!
# A265687: Numbers k such that the concave polygon formed by the trajectory of k in the "3x+1" problem and the straight line between the coordinate points (0,k) and (r,1) where r is the number of iterations needed to reach 1 is not a self-intersecting polygon.

The programs for A265687, there is no canonical definition to state claims against.
-/

/-! ## A265687.P14885847764587785848

`∩[A266796(n+1), Δ[n²]]`
-/

namespace A265687.P14885847764587785848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266796 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265687.P14885847764587785848

/-! ## A265687.P12407515709498892944

`A007665(A262511(n+1))`
-/

namespace A265687.P12407515709498892944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007665 (A262511 (n + 1)).toNat

end

end A265687.P12407515709498892944

/-! ## A265687.P7018065689333944285

`record[A060819(A266796(n+1))]`
-/

namespace A265687.P7018065689333944285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A266796 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265687.P7018065689333944285

/-! ## A265687.P6539390614824209543

`A266796(record[A110738(n+1)])`
-/

namespace A265687.P6539390614824209543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266796 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265687.P6539390614824209543

/-! ## A265687.P13460795084774755674

`A266796(A268060(3*n+1))`
-/

namespace A265687.P13460795084774755674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266796 (A268060 (3 * n + 1)).toNat

end

end A265687.P13460795084774755674

/-!
# A265688: Binary representation of the n-th iteration of the "Rule 190" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265688, there is no canonical definition to state claims against.
-/

/-! ## A265688.P5444043483905535346

`A265380(2*n)`
-/

namespace A265688.P5444043483905535346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265380 (2 * n)

end

end A265688.P5444043483905535346

/-! ## A265688.P17478181419976266685

`or(1, A265380(A005843(n)))`
-/

namespace A265688.P17478181419976266685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A265380 (A005843 n).toNat)

end

end A265688.P17478181419976266685

/-! ## A265688.P3835500002104877910

`record[A265380(A028898(n)+A028898(n))]`
-/

namespace A265688.P3835500002104877910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265380 (A028898 n + A028898 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265688.P3835500002104877910

/-! ## A265688.P1894048736522182112

`A104326(A092263(2*n+1))`
-/

namespace A265688.P1894048736522182112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 (A092263 (2 * n + 1)).toNat

end

end A265688.P1894048736522182112

/-! ## A265688.P9456730199203993175

`A130311(A025169(n))`
-/

namespace A265688.P9456730199203993175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130311 (A025169 n).toNat

end

end A265688.P9456730199203993175

/-!
# A265689: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 329", based on the 5-celled von Neumann neighborhood.

The programs for A265689, there is no canonical definition to state claims against.
-/

/-! ## A265689.P2735348820288133102

`∑[A271276(abs(1-n))]`
-/

namespace A265689.P2735348820288133102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271276 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265689.P2735348820288133102

/-! ## A265689.P7799919270063785142

`A271276(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A265689.P7799919270063785142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271276 (n - 1) + a (n - 1)

end

end A265689.P7799919270063785142

/-! ## A265689.P17330545852211220079

`Δ[A271275(n)]-A271276(n)`
-/

namespace A265689.P17330545852211220079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271276 n

end

end A265689.P17330545852211220079

/-! ## A265689.P9928885488641647084

`A271275(n+1)-(A271276(n)+A271275(n))`
-/

namespace A265689.P9928885488641647084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271275 (n + 1) - (A271276 n + A271275 n)

end

end A265689.P9928885488641647084

/-!
# A265690: Cardinality of shortest addition chain for n.

The programs for A265690, there is no canonical definition to state claims against.
-/

/-! ## A265690.P9552457118358175012

`A003313(n+1)+1`
-/

namespace A265690.P9552457118358175012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (n + 1) + 1

end

end A265690.P9552457118358175012

/-! ## A265690.P16568079724719513534

`A003313(record[abs(xor(n, -2))])`
-/

namespace A265690.P16568079724719513534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265690.P16568079724719513534

/-! ## A265690.P6424940467408895411

`A003313(comp[C(xor(1, n), n)])`
-/

namespace A265690.P6424940467408895411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A265690.P6424940467408895411

/-! ## A265690.P14959033027728040504

`A003313(3*n-(n-2))`
-/

namespace A265690.P14959033027728040504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 ((3 * n : ℤ) - ((n : ℤ) - 2)).toNat

end

end A265690.P14959033027728040504

/-! ## A265690.P7839272510027184064

`A005496(A003313(n+1))`
-/

namespace A265690.P7839272510027184064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A003313 (n + 1)).toNat

end

end A265690.P7839272510027184064

/-! ## A265690.P2589209997779272095

`A003313(Δ[A014206(n)])%12`
-/

namespace A265690.P2589209997779272095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003313 (f1 (n + 1) - f1 n).toNat) 12

end

end A265690.P2589209997779272095

/-! ## A265690.P1102131243816952410

`A003313(Δ[A027688(n)])%28`
-/

namespace A265690.P1102131243816952410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003313 (f1 (n + 1) - f1 n).toNat) 28

end

end A265690.P1102131243816952410

/-! ## A265690.P11377007774413381788

`A073933(n+1)-A076142(n+1)`
-/

namespace A265690.P11377007774413381788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073933 (n + 1) - A076142 (n + 1)

end

end A265690.P11377007774413381788

/-! ## A265690.P7776987824160610514

`A064097(n+1)+1-A076142(n+1)`
-/

namespace A265690.P7776987824160610514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) + (1 - A076142 (n + 1))

end

end A265690.P7776987824160610514

/-! ## A265690.P16931667816991021960

`∑[A334090(n+1)]+1-A076142(n+1)`
-/

namespace A265690.P16931667816991021960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A076142 (n + 1))

end

end A265690.P16931667816991021960

/-! ## A265690.P5627637129414448287

`A334203(2*(n+1))+1-A076142(n+1)`
-/

namespace A265690.P5627637129414448287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (2 * (n + 1)) + (1 - A076142 (n + 1))

end

end A265690.P5627637129414448287

/-! ## A265690.P7529100954142925569

`xor(A000007(n), A003313(A103517(n)))`
-/

namespace A265690.P7529100954142925569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A003313 (A103517 n).toNat)

end

end A265690.P7529100954142925569

/-! ## A265690.P12101020937416812762

`A334203(A103517(n))+1-A076142(n+1)`
-/

namespace A265690.P12101020937416812762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (A103517 n).toNat + 1 - A076142 (n + 1)

end

end A265690.P12101020937416812762

/-!
# A265691: Irregular triangle read by rows: row n gives lexicographically first addition chain of minimal length for n.

The programs for A265691, there is no canonical definition to state claims against.
-/

/-! ## A265691.P10295197306610091680

`A264846(xor(n, A023925(n)))`
-/

namespace A265691.P10295197306610091680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264846 (Int.xor (n : ℤ) (A023925 n)).toNat

end

end A265691.P10295197306610091680

/-! ## A265691.P7888369275881395509

`A264846(A028310(n)*A053878(n+2))`
-/

namespace A265691.P7888369275881395509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264846 (A028310 n * A053878 (n + 2)).toNat

end

end A265691.P7888369275881395509

/-! ## A265691.P675053718727883252

`A264846(A028310(n)^A053878(n+2))`
-/

namespace A265691.P675053718727883252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264846 (SequenceMachineLib.roundAway ((A028310 n : ℚ) ^ (A053878 (n + 2) : ℤ))).toNat

end

end A265691.P675053718727883252

/-! ## A265691.P5035073379878967284

`A264846(lcm(A028310(n), A053878(n+2)))`
-/

namespace A265691.P5035073379878967284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264846 (Int.lcm (A028310 n) (A053878 (n + 2)))

end

end A265691.P5035073379878967284

/-! ## A265691.P7595404730153899173

`A002260(lt[A364911(n), A334700(n+1)])`
-/

namespace A265691.P7595404730153899173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A265691.P7595404730153899173

/-!
# A265692: Irregular triangle read by rows: lexicographically last addition chain of minimal length for n.

The programs for A265692, there is no canonical definition to state claims against.
-/

/-! ## A265692.P9845322466073503730

`A002260(lt[A318255(n), A277853(n+1)])`
-/

namespace A265692.P9845322466073503730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318255 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A265692.P9845322466073503730

/-! ## A265692.P11410973015053490673

`A265691(n+1)+A125005(A305982(n+1))`
-/

namespace A265692.P11410973015053490673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265691 (n + 1) + A125005 (A305982 (n + 1)).toNat

end

end A265692.P11410973015053490673

/-! ## A265692.P12731716773324134676

`A090996(eq[A023416(n), A245196(n+1)])`
-/

namespace A265692.P12731716773324134676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A265692.P12731716773324134676

/-! ## A265692.P5353876326905484938

`A004070(lt[A077977(n), A035061(n+1)])`
-/

namespace A265692.P5353876326905484938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A265692.P5353876326905484938

/-! ## A265692.P260761409064087319

`A193738(A216345(n+1)%A213106(2*(n+3)))`
-/

namespace A265692.P260761409064087319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (Int.tmod (A216345 (n + 1)) (A213106 (2 * (n + 3)))).toNat

end

end A265692.P260761409064087319

/-!
# A265693: Squarefree composites that are not sqrt(n)-smooth: some prime factor of n is > sqrt(n).

The programs for A265693, the canonical program `A265693.P18424975977365355978` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265693 has offset 1).

The definition of A265693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6709 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265693.P9451872417156268327

`filter[A063763(n+1), A008966(#)]`
-/

namespace A265693.P9451872417156268327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A265693.P9451872417156268327

namespace A265693

/-- `filter[A063763(n+1), A008966(#)]` -/
def P9451872417156268327.Spec : Prop :=
  ∀ n, P9451872417156268327.a n = A265693 (n + 1)

end A265693

/-! ## A265693.P8251050634401078606

`filter[A063763(n+1), A323154(#)]`
-/

namespace A265693.P8251050634401078606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A265693.P8251050634401078606

namespace A265693

/-- `filter[A063763(n+1), A323154(#)]` -/
def P8251050634401078606.Spec : Prop :=
  ∀ n, P8251050634401078606.a n = A265693 (n + 1)

end A265693

/-! ## A265693.P4220991986138647724

`filter[A063763(n+1), A354353(#)]`
-/

namespace A265693.P4220991986138647724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A265693.P4220991986138647724

namespace A265693

/-- `filter[A063763(n+1), A354353(#)]` -/
def P4220991986138647724.Spec : Prop :=
  ∀ n, P4220991986138647724.a n = A265693 (n + 1)

end A265693

/-! ## A265693.P6263603733512446063

`filter[A063763(n+1), A354819(#)]`
-/

namespace A265693.P6263603733512446063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A265693.P6263603733512446063

namespace A265693

/-- `filter[A063763(n+1), A354819(#)]` -/
def P6263603733512446063.Spec : Prop :=
  ∀ n, P6263603733512446063.a n = A265693 (n + 1)

end A265693

/-! ## A265693.P18424975977365355978

`∩[A000469(n+1), A063763(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A265693

/-- `∩[A000469(n+1), A063763(n+1)]` -/
def P18424975977365355978.Spec : Prop :=
  ∀ n, (P18424975977365355978.a n : ℤ) = A265693 (n + 1)

theorem P18424975977365355978.correct : P18424975977365355978.Spec := by
  intro n
  simp only [A265693, Nat.add_sub_cancel]

end A265693

/-! ## A265693.P13258186630456286025

`∩[A005117(n+1), A063763(n+1)]`
-/

namespace A265693.P13258186630456286025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265693.P13258186630456286025

namespace A265693

/-- `∩[A005117(n+1), A063763(n+1)]` -/
def P13258186630456286025.Spec : Prop :=
  ∀ n, (P13258186630456286025.a n : ℤ) = A265693 (n + 1)

end A265693

/-! ## A265693.P4870397613538629166

`∩[A062770(n+1), A063763(n+1)]`
-/

namespace A265693.P4870397613538629166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265693.P4870397613538629166

namespace A265693

/-- `∩[A062770(n+1), A063763(n+1)]` -/
def P4870397613538629166.Spec : Prop :=
  ∀ n, (P4870397613538629166.a n : ℤ) = A265693 (n + 1)

end A265693

/-! ## A265693.P10091320682949926631

`∩[A063763(n+1), A064594(n+1)]`
-/

namespace A265693.P10091320682949926631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265693.P10091320682949926631

namespace A265693

/-- `∩[A063763(n+1), A064594(n+1)]` -/
def P10091320682949926631.Spec : Prop :=
  ∀ n, (P10091320682949926631.a n : ℤ) = A265693 (n + 1)

end A265693

/-! ## A265693.P3626895583968665074

`∩[A063763(n+1), A072774(n+1)]`
-/

namespace A265693.P3626895583968665074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265693.P3626895583968665074

namespace A265693

/-- `∩[A063763(n+1), A072774(n+1)]` -/
def P3626895583968665074.Spec : Prop :=
  ∀ n, (P3626895583968665074.a n : ℤ) = A265693 (n + 1)

end A265693

/-! ## A265693.P12574066437859375159

`filter[A063762(n+1), A008966(#)]`
-/

namespace A265693.P12574066437859375159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A265693.P12574066437859375159

namespace A265693

/-- `filter[A063762(n+1), A008966(#)]` -/
def P12574066437859375159.Spec : Prop :=
  ∀ n, P12574066437859375159.a n = A265693 (n + 1)

end A265693

/-! ## A265693.P13011298222374627317

`filter[A063762(n+1), A323154(#)]`
-/

namespace A265693.P13011298222374627317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A265693.P13011298222374627317

namespace A265693

/-- `filter[A063762(n+1), A323154(#)]` -/
def P13011298222374627317.Spec : Prop :=
  ∀ n, P13011298222374627317.a n = A265693 (n + 1)

end A265693

/-! ## A265693.P10475411654800744856

`filter[A063762(n+1), A354353(#)]`
-/

namespace A265693.P10475411654800744856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A265693.P10475411654800744856

namespace A265693

/-- `filter[A063762(n+1), A354353(#)]` -/
def P10475411654800744856.Spec : Prop :=
  ∀ n, P10475411654800744856.a n = A265693 (n + 1)

end A265693

/-! ## A265693.P12985603112867374255

`filter[A063762(n+1), A354819(#)]`
-/

namespace A265693.P12985603112867374255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A265693.P12985603112867374255

namespace A265693

/-- `filter[A063762(n+1), A354819(#)]` -/
def P12985603112867374255.Spec : Prop :=
  ∀ n, P12985603112867374255.a n = A265693 (n + 1)

end A265693

/-! ## A265693.P2612576355723797798

`∩[A000469(n+1), A063762(n+1)]`
-/

namespace A265693.P2612576355723797798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265693.P2612576355723797798

namespace A265693

/-- `∩[A000469(n+1), A063762(n+1)]` -/
def P2612576355723797798.Spec : Prop :=
  ∀ n, (P2612576355723797798.a n : ℤ) = A265693 (n + 1)

end A265693

/-! ## A265693.P8130232581060077830

`∩[A005117(n+1), A063762(n+1)]`
-/

namespace A265693.P8130232581060077830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265693.P8130232581060077830

namespace A265693

/-- `∩[A005117(n+1), A063762(n+1)]` -/
def P8130232581060077830.Spec : Prop :=
  ∀ n, (P8130232581060077830.a n : ℤ) = A265693 (n + 1)

end A265693

/-! ## A265693.P1228162465479122813

`∩[A063762(n+1), A064594(n+1)]`
-/

namespace A265693.P1228162465479122813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265693.P1228162465479122813

namespace A265693

/-- `∩[A063762(n+1), A064594(n+1)]` -/
def P1228162465479122813.Spec : Prop :=
  ∀ n, (P1228162465479122813.a n : ℤ) = A265693 (n + 1)

end A265693

/-! ## A265693.P1670055687711359995

`∩[A063763(n+1), A065200(n+1)]`
-/

namespace A265693.P1670055687711359995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265693.P1670055687711359995

namespace A265693

/-- `∩[A063763(n+1), A065200(n+1)]` -/
def P1670055687711359995.Spec : Prop :=
  ∀ n, (P1670055687711359995.a n : ℤ) = A265693 (n + 1)

end A265693

/-! ## A265693.P15037777683664145791

`filter[A132982(n+1), A008966(#)]`
-/

namespace A265693.P15037777683664145791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A265693.P15037777683664145791

namespace A265693

/-- `filter[A132982(n+1), A008966(#)]` -/
def P15037777683664145791.Spec : Prop :=
  ∀ n, P15037777683664145791.a n = A265693 (n + 1)

end A265693

/-! ## A265693.P5342939464447865468

`filter[A132982(n+1), A323154(#)]`
-/

namespace A265693.P5342939464447865468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A265693.P5342939464447865468

namespace A265693

/-- `filter[A132982(n+1), A323154(#)]` -/
def P5342939464447865468.Spec : Prop :=
  ∀ n, P5342939464447865468.a n = A265693 (n + 1)

end A265693

/-! ## A265693.P3776146421889874236

`filter[A132982(n+1), A354819(#)]`
-/

namespace A265693.P3776146421889874236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A265693.P3776146421889874236

namespace A265693

/-- `filter[A132982(n+1), A354819(#)]` -/
def P3776146421889874236.Spec : Prop :=
  ∀ n, P3776146421889874236.a n = A265693 (n + 1)

end A265693

/-!
# A265694: a(n) = n!! mod n^2 where n!! is a double factorial number (A006882).

The programs for A265694, the canonical program `A265694.P8666298443591799904` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265694 has offset 1).

The definition of A265694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265694.P8666298443591799904

`∏[(n+1)/a(n-1)]%(n+1)²` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A265694

/-- `∏[(n+1)/a(n-1)]%(n+1)²` -/
def P8666298443591799904.Spec : Prop :=
  ∀ n, P8666298443591799904.a n = A265694 (n + 1)

theorem P8666298443591799904.correct : P8666298443591799904.Spec := by
  intro n
  simp only [A265694, Nat.add_sub_cancel]

end A265694

/-! ## A265694.P16889741476814164462

`A006882(n+1)%(n+1)²`
-/

namespace A265694.P16889741476814164462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006882 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A265694.P16889741476814164462

namespace A265694

/-- `A006882(n+1)%(n+1)²` -/
def P16889741476814164462.Spec : Prop :=
  ∀ n, P16889741476814164462.a n = A265694 (n + 1)

end A265694

/-! ## A265694.P17442164457728169297

`(A128882(n+1)+1)%(n+1)²`
-/

namespace A265694.P17442164457728169297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128882 (n + 1) + 1) ((n + 1) ^ 2 : ℤ)

end

end A265694.P17442164457728169297

namespace A265694

/-- `(A128882(n+1)+1)%(n+1)²` -/
def P17442164457728169297.Spec : Prop :=
  ∀ n, P17442164457728169297.a n = A265694 (n + 1)

end A265694

/-! ## A265694.P18268863675434944983

`A248809(∑[n])%(n+1)²`
-/

namespace A265694.P18268863675434944983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248809 (∑ j ∈ Finset.range (n + 1), f1 j)) ((n + 1) ^ 2 : ℤ)

end

end A265694.P18268863675434944983

namespace A265694

/-- `A248809(∑[n])%(n+1)²` -/
def P18268863675434944983.Spec : Prop :=
  ∀ n, P18268863675434944983.a n = A265694 (n + 1)

end A265694

/-! ## A265694.P13506096243390797599

`A230698(∑[n+1])%(n+1)²`
-/

namespace A265694.P13506096243390797599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230698 (∑ j ∈ Finset.range (n + 1), f1 j)) ((n + 1) ^ 2 : ℤ)

end

end A265694.P13506096243390797599

namespace A265694

/-- `A230698(∑[n+1])%(n+1)²` -/
def P13506096243390797599.Spec : Prop :=
  ∀ n, P13506096243390797599.a n = A265694 (n + 1)

end A265694

/-! ## A265694.P13185806438635414118

`record[A230698(A001971(n))]%(n+1)²`
-/

namespace A265694.P13185806438635414118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230698 (A001971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ((n + 1) ^ 2 : ℤ)

end

end A265694.P13185806438635414118

namespace A265694

/-- `record[A230698(A001971(n))]%(n+1)²` -/
def P13185806438635414118.Spec : Prop :=
  ∀ n, P13185806438635414118.a n = A265694 (n + 1)

end A265694

/-!
# A265695: Triangle read by rows giving successive states of cellular automaton generated by "Rule 135" initiated with a single ON (black) cell.

The programs for A265695, there is no canonical definition to state claims against.
-/

/-! ## A265695.P1404260942284332735

`A265246(A020703(n+1)-1)`
-/

namespace A265695.P1404260942284332735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265246 (A020703 (n + 1) - 1).toNat

end

end A265695.P1404260942284332735

/-! ## A265695.P3106814931248945803

`A204843(gcd(A032020(n), A331844(n)))`
-/

namespace A265695.P3106814931248945803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (Int.gcd (A032020 n) (A331844 n))

end

end A265695.P3106814931248945803

/-! ## A265695.P14167605470662891415

`A051731(A233583(A342797(n+1))²)`
-/

namespace A265695.P14167605470662891415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A233583 (A342797 (n + 1)).toNat ^ 2).toNat

end

end A265695.P14167605470662891415

/-! ## A265695.P4530816303154256997

`A010052(A251416(n+1)^A002828(2*n))`
-/

namespace A265695.P4530816303154256997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (SequenceMachineLib.roundAway ((A251416 (n + 1) : ℚ) ^ (A002828 (2 * n) : ℤ))).toNat

end

end A265695.P4530816303154256997

/-! ## A265695.P15087772544669507916

`A147645(Δ[A147624(2*n+3)])`
-/

namespace A265695.P15087772544669507916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147624 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147645 (f1 (n + 1) - f1 n).toNat

end

end A265695.P15087772544669507916

/-!
# A265696: Binary representation of the n-th iteration of the "Rule 135" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265696, there is no canonical definition to state claims against.
-/

/-! ## A265696.P6656237377752431045

`A007088(A265697(n))`
-/

namespace A265696.P6656237377752431045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A265697 n).toNat

end

end A265696.P6656237377752431045

/-! ## A265696.P7257581787998666158

`A185544(2*A265697(n))`
-/

namespace A265696.P7257581787998666158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A265697 n).toNat

end

end A265696.P7257581787998666158

/-!
# A265697: Decimal representation of the n-th iteration of the "Rule 135" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265697, there is no canonical definition to state claims against.
-/

/-! ## A265697.P10248751170021135402

`A241920(9^n+n+1)-1`
-/

namespace A265697.P10248751170021135402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241920 (9 ^ n + (n + 1)) - 1

end

end A265697.P10248751170021135402

/-!
# A265698: Middle column of the "Rule 135" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265698, there is no canonical definition to state claims against.
-/

/-! ## A265698.P17905207618561487544

`A265700(n)%2`
-/

namespace A265698.P17905207618561487544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265700 n) 2

end

end A265698.P17905207618561487544

/-! ## A265698.P419189339536736247

`and(A048578(n), A265700(n))`
-/

namespace A265698.P419189339536736247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A265700 n)

end

end A265698.P419189339536736247

/-! ## A265698.P10921939229457009493

`and(A158388(n), A265700(n))`
-/

namespace A265698.P10921939229457009493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A265700 n)

end

end A265698.P10921939229457009493

/-! ## A265698.P10722241952727978545

`and(A265700(n), A267537(n))`
-/

namespace A265698.P10722241952727978545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265700 n) (A267537 n)

end

end A265698.P10722241952727978545

/-! ## A265698.P8473566487300155823

`and(A265700(n), A267869(n))`
-/

namespace A265698.P8473566487300155823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265700 n) (A267869 n)

end

end A265698.P8473566487300155823

/-! ## A265698.P12446677864460651764

`and(A265700(n), A267871(n))`
-/

namespace A265698.P12446677864460651764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265700 n) (A267871 n)

end

end A265698.P12446677864460651764

/-! ## A265698.P2063319373047115694

`and(A066827(n+1), A265700(n))`
-/

namespace A265698.P2063319373047115694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066827 (n + 1)) (A265700 n)

end

end A265698.P2063319373047115694

/-! ## A265698.P7696074258041345879

`and(A226474(A327985(n+1)), A265700(n))`
-/

namespace A265698.P7696074258041345879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A226474 (A327985 (n + 1)).toNat) (A265700 n)

end

end A265698.P7696074258041345879

/-! ## A265698.P1342933964838816954

`and(A020737(n), A265700(n))`
-/

namespace A265698.P1342933964838816954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A265700 n)

end

end A265698.P1342933964838816954

/-! ## A265698.P13408574417420530686

`and(A195744(n), A265700(n))`
-/

namespace A265698.P13408574417420530686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A265700 n)

end

end A265698.P13408574417420530686

/-! ## A265698.P10017564429147471290

`and(A122041(n+1), A265700(n))`
-/

namespace A265698.P10017564429147471290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A265700 n)

end

end A265698.P10017564429147471290

/-! ## A265698.P14359292042457281264

`and(A196657(n), A265700(n))`
-/

namespace A265698.P14359292042457281264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A265700 n)

end

end A265698.P14359292042457281264

/-! ## A265698.P12846461975064052073

`and(1, and(A051900(n), A265700(n)))`
-/

namespace A265698.P12846461975064052073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.land (A051900 n) (A265700 n))

end

end A265698.P12846461975064052073

/-! ## A265698.P2217498216955779836

`and(A048479(n), A265700(n))`
-/

namespace A265698.P2217498216955779836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A265700 n)

end

end A265698.P2217498216955779836

/-! ## A265698.P1684547602214639925

`and(A134854(n+1), A265700(n))`
-/

namespace A265698.P1684547602214639925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134854 (n + 1)) (A265700 n)

end

end A265698.P1684547602214639925

/-! ## A265698.P500554859742525061

`and(A265700(n), A295926(n+3))`
-/

namespace A265698.P500554859742525061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265700 n) (A295926 (n + 3))

end

end A265698.P500554859742525061

/-! ## A265698.P9769580227502285155

`and(A115342(n+6), A265700(n))`
-/

namespace A265698.P9769580227502285155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115342 (n + 6)) (A265700 n)

end

end A265698.P9769580227502285155

/-! ## A265698.P5659943639167758814

`and(A258073(n+1), A265700(n))`
-/

namespace A265698.P5659943639167758814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A258073 (n + 1)) (A265700 n)

end

end A265698.P5659943639167758814

/-! ## A265698.P17602675534119619641

`and(A027608(n), A265700(n))`
-/

namespace A265698.P17602675534119619641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027608 n) (A265700 n)

end

end A265698.P17602675534119619641

/-!
# A265699: Binary representation of the middle column of the "Rule 135" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265699, there is no canonical definition to state claims against.
-/

/-! ## A265699.P11972459146615838732

`A265698(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A265699.P11972459146615838732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265698 n + 10 * a (n - 1)

end

end A265699.P11972459146615838732

/-! ## A265699.P10533468700393042399

`A007088(A265700(n))`
-/

namespace A265699.P10533468700393042399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A265700 n).toNat

end

end A265699.P10533468700393042399

/-! ## A265699.P172376652058778630

`A185544(2*A265700(n))`
-/

namespace A265699.P172376652058778630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A265700 n).toNat

end

end A265699.P172376652058778630

/-! ## A265699.P5891910687525834370

`A259661(n)+A037909(A001710(n))`
-/

namespace A265699.P5891910687525834370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259661 n + A037909 (A001710 n).toNat

end

end A265699.P5891910687525834370

