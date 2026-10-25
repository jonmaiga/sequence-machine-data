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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A259200: Number of partitions of n into nine primes.

The programs for A259200, there is no canonical definition to state claims against.
-/

/-! ## A259200.P8212571743527789243

`A341719(n+18)-A341951(n+17)`
-/

namespace A259200.P8212571743527789243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341719 (n + 18) - A341951 (n + 17)

end

end A259200.P8212571743527789243

/-! ## A259200.P13497182026769250637

`A320382(n)+A025443(A097005(n))`
-/

namespace A259200.P13497182026769250637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320382 n + A025443 (A097005 n).toNat

end

end A259200.P13497182026769250637

/-! ## A259200.P10351276763617875718

`A029041(n)-A107846(A213967(n))`
-/

namespace A259200.P10351276763617875718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029041 n - A107846 (A213967 n).toNat

end

end A259200.P10351276763617875718

/-! ## A259200.P16954038240602065304

`or(A050605(A113381(n)), A320382(n))`
-/

namespace A259200.P16954038240602065304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A050605 (A113381 n).toNat) (A320382 n)

end

end A259200.P16954038240602065304

/-! ## A259200.P10147494235403084519

`or(A004197(A325108(n)), A320382(n))`
-/

namespace A259200.P10147494235403084519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004197 (A325108 n).toNat) (A320382 n)

end

end A259200.P10147494235403084519

/-!
# A259201: Number of partitions of n into ten primes.

The programs for A259201, there is no canonical definition to state claims against.
-/

/-! ## A259201.P2218525876666165062

`A341972(n+10)-A341719(n+19)`
-/

namespace A259201.P2218525876666165062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341972 (n + 10 + 10) - A341719 (n + 19)

end

end A259201.P2218525876666165062

/-! ## A259201.P14425000766608109612

`A106244(n)+A073490(A002531(n))`
-/

namespace A259201.P14425000766608109612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106244 n + A073490 (A002531 n).toNat

end

end A259201.P14425000766608109612

/-! ## A259201.P4039808421204397958

`A073490(A002531(n))+∑[A178691(n)]`
-/

namespace A259201.P4039808421204397958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A002531 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259201.P4039808421204397958

/-! ## A259201.P14459058853230422856

`A073490(A002531(n))+∑[A280152(n)]`
-/

namespace A259201.P14459058853230422856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A002531 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259201.P14459058853230422856

/-!
# A259202: E.g.f.: Sum_{n>=0} x^n * (1 + x^n)^n * exp(2*x^(n+1)) / n!.

The programs for A259202, there is no canonical definition to state claims against.
-/

/-! ## A259202.P11392212279568592420

`∑[A048686(A150853(n))]`
-/

namespace A259202.P11392212279568592420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048686 (A150853 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259202.P11392212279568592420

/-! ## A259202.P8339644567688151231

`A006318(n)-A029883(A048400(n+1))`
-/

namespace A259202.P8339644567688151231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n - A029883 (A048400 (n + 1)).toNat

end

end A259202.P8339644567688151231

/-!
# A259203: E.g.f.: Sum_{n>=0} x^n * (1 + x^n)^n * exp(3*x^(n+1)) / n!.

The programs for A259203, there is no canonical definition to state claims against.
-/

/-! ## A259203.P4532304721951178104

`A388290(a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A259203.P4532304721951178104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A388290 (a (n - 1)).toNat

end

end A259203.P4532304721951178104

/-!
# A259204: E.g.f.: Sum_{n>=0} x^n * (1 + x^n)^n * exp(4*x^(n+1)) / n!.

The programs for A259204, there is no canonical definition to state claims against.
-/

/-! ## A259204.P18377597918192401669

`or(1, A270362(9^n))`
-/

namespace A259204.P18377597918192401669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A270362 (9 ^ n))

end

end A259204.P18377597918192401669

/-!
# A259205: E.g.f.: Sum_{n>=0} x^n * (2 + x^n)^n * exp(3*x^(n+1)) / n!.

The programs for A259205, there is no canonical definition to state claims against.
-/

/-! ## A259205.P13158270129817923013

`A121047(A287484(n))`
-/

namespace A259205.P13158270129817923013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121047 (A287484 n).toNat

end

end A259205.P13158270129817923013

/-!
# A259206: G.f. satisfies: A(x) = (1-x^2) * (1 + x*A(x)^2).

The programs for A259206, there is no canonical definition to state claims against.
-/

/-! ## A259206.P7460514916391481846

`A110656(A330146(n)+A113682(n))`
-/

namespace A259206.P7460514916391481846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A330146 n + A113682 n).toNat

end

end A259206.P7460514916391481846

/-! ## A259206.P12663914806818610483

`A187186(A330146(n)+A113682(n))`
-/

namespace A259206.P12663914806818610483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187186 (A330146 n + A113682 n).toNat

end

end A259206.P12663914806818610483

/-! ## A259206.P1817634425659246458

`A110656(A113682(n)+A047246(n+1))`
-/

namespace A259206.P1817634425659246458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A113682 n + A047246 (n + 1)).toNat

end

end A259206.P1817634425659246458

/-! ## A259206.P9699049125500341874

`A110656(A114391(n+1)+A113682(n))`
-/

namespace A259206.P9699049125500341874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A114391 (n + 1) + A113682 n).toNat

end

end A259206.P9699049125500341874

/-! ## A259206.P10186159776031149380

`A110656(A166687(n+1)+A113682(n))`
-/

namespace A259206.P10186159776031149380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A166687 (n + 1) + A113682 n).toNat

end

end A259206.P10186159776031149380

/-!
# A259207: 5x + 1 sequence beginning at 5.

The programs for A259207, the canonical program `A259207.P8749124973789222655` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259207 has offset 0).

The definition of A259207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259207.P8749124973789222655

`A235800(3*a(n-1))-a(n-1)` with `a(0)=5`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A259207

/-- `A235800(3*a(n-1))-a(n-1)` -/
def P8749124973789222655.Spec : Prop :=
  ∀ n, P8749124973789222655.a n = A259207 n

theorem P8749124973789222655.correct : P8749124973789222655.Spec := by
  intro n
  simp only [A259207]

end A259207

/-!
# A259208: E.g.f.: Sum_{n>=0} x^n * (1 + x^n)^n / n!.

The programs for A259208, there is no canonical definition to state claims against.
-/

/-! ## A259208.P18313585569571388862

`A171229(lcm(n, n+2))`
-/

namespace A259208.P18313585569571388862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171229 (Nat.lcm n (n + 2))

end

end A259208.P18313585569571388862

/-! ## A259208.P7064975617909887802

`C(n!, A221075(n))+1`
-/

namespace A259208.P7064975617909887802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial n) (A221075 n).toNat + 1

end

end A259208.P7064975617909887802

/-! ## A259208.P11419846775754451836

`A171229(A066830(n+1))`
-/

namespace A259208.P11419846775754451836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171229 (A066830 (n + 1)).toNat

end

end A259208.P11419846775754451836

/-!
# A259209: E.g.f.: Sum_{n>=1} x^(n^2) * exp(x^n) / n!.

The programs for A259209, there is no canonical definition to state claims against.
-/

/-! ## A259209.P720765782486228526

`A267872(A352012(n+1))+n`
-/

namespace A259209.P720765782486228526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (A352012 (n + 1)).toNat + (n : ℤ)

end

end A259209.P720765782486228526

/-! ## A259209.P4537422967787650323

`(n+1)*A338681(a(n-1)+1)` with `a(0)=1`
-/

namespace A259209.P4537422967787650323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A338681 (a (n - 1) + 1).toNat

end

end A259209.P4537422967787650323

/-!
# A259210: 

The programs for A259210, there is no canonical definition to state claims against.
-/

/-! ## A259210.P1611781153388003966

`A108281(2*(n+1))`
-/

namespace A259210.P1611781153388003966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108281 (2 * (n + 1))

end

end A259210.P1611781153388003966

/-! ## A259210.P3426400067715646295

`A076139(2*Δ[n²])`
-/

namespace A259210.P3426400067715646295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076139 (2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A259210.P3426400067715646295

/-!
# A259212: A total of n married couples, including a mathematician M and his wife W, are to be seated at the 2n chairs around a circular table. M and W are the first couple allowed to choose chairs, and they choose two chairs next to each other. The sequence gives the number of ways of seating the remaining couples so that women and men are in alternate chairs but M and W are the only couple seated next to each other.

The programs for A259212, there is no canonical definition to state claims against.
-/

/-! ## A259212.P6861761562144286819

`n*(A094047(n)+a(n-1))` with `a(0)=0`
-/

namespace A259212.P6861761562144286819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (A094047 n + a (n - 1))

end

end A259212.P6861761562144286819

/-! ## A259212.P1000760335465465130

`lcm(n, A000142(n)*A000271(n))`
-/

namespace A259212.P1000760335465465130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000142 n * A000271 n)

end

end A259212.P1000760335465465130

/-! ## A259212.P16298540038132585460

`A000142(n)*A000271(round(acot(n)+n))`
-/

namespace A259212.P16298540038132585460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000271 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A259212.P16298540038132585460

/-! ## A259212.P5554473430719822093

`A000142(n)*A000271(round(sqrt(n²+1)))`
-/

namespace A259212.P5554473430719822093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000271 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A259212.P5554473430719822093

/-! ## A259212.P6061320098815413840

`A000271(n)*A124355(n+1)`
-/

namespace A259212.P6061320098815413840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000271 n * A124355 (n + 1)

end

end A259212.P6061320098815413840

/-!
# A259213: Column 2 of triangle A258829.

The programs for A259213, there is no canonical definition to state claims against.
-/

/-! ## A259213.P9620379212617780440

`A262164(n+2)-A000111(n+2)`
-/

namespace A259213.P9620379212617780440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262164 (n + 2) - A000111 (n + 2)

end

end A259213.P9620379212617780440

/-! ## A259213.P6026433637335766123

`record[A258829(∑[n]+2)]`
-/

namespace A259213.P6026433637335766123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259213.P6026433637335766123

/-! ## A259213.P16049729868008915716

`A258829(∑[n+2]+3)`
-/

namespace A259213.P16049729868008915716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A259213.P16049729868008915716

/-! ## A259213.P10542687246548720744

`record[A010054(n)*A258829(n+2)]`
-/

namespace A259213.P10542687246548720744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A258829 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259213.P10542687246548720744

/-! ## A259213.P3441637773200286584

`record[gcd(A258829(n+2), A258829(n))]`
-/

namespace A259213.P3441637773200286584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A258829 (n + 2)) (A258829 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259213.P3441637773200286584

/-!
# A259214: Number of (n+1)X(n+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0011 or 0101.

The programs for A259214, there is no canonical definition to state claims against.
-/

/-! ## A259214.P3053632309181237223

`A259222(∑[4*n]+1)`
-/

namespace A259214.P3053632309181237223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259222 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259214.P3053632309181237223

/-! ## A259214.P7427427751228341482

`or(2, A259222(A001844(n)))`
-/

namespace A259214.P7427427751228341482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A259222 (A001844 n).toNat)

end

end A259214.P7427427751228341482

/-! ## A259214.P3613445359299191392

`record[A003982(n)*A259222(n+1)]`
-/

namespace A259214.P3613445359299191392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A259222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259214.P3613445359299191392

/-! ## A259214.P17560086384557149085

`record[gcd(A003987(n), A259222(n+1))]`
-/

namespace A259214.P17560086384557149085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A259222 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259214.P17560086384557149085

/-! ## A259214.P17752826546837568511

`A259222(A001844(n))+A185284(n)`
-/

namespace A259214.P17752826546837568511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259222 (A001844 n).toNat + A185284 n

end

end A259214.P17752826546837568511

/-!
# A259215: Number of (n+1) X (1+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0011 or 0101.

The programs for A259215, the canonical program `A259215.P17719300614074887301` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259215 has offset 1).

The definition of A259215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259215.P7514619656692475557

`ogf((7-8x-8x^2)/(1-3x+x^2+2x^3))`
-/

namespace A259215.P7514619656692475557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -8, -8] [1, -3, 1, 2] n

end

end A259215.P7514619656692475557

namespace A259215

/-- `ogf((7-8x-8x^2)/(1-3x+x^2+2x^3))` -/
def P7514619656692475557.Spec : Prop :=
  ∀ n, P7514619656692475557.a n = A259215 (n + 1)

end A259215

/-! ## A259215.P17719300614074887301

`∑[A052956(n+1)]+4`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A259215

/-- `∑[A052956(n+1)]+4` -/
def P17719300614074887301.Spec : Prop :=
  ∀ n, P17719300614074887301.a n = A259215 (n + 1)

theorem P17719300614074887301.correct : P17719300614074887301.Spec := by
  intro n
  simp only [A259215, Nat.add_sub_cancel]

end A259215

/-! ## A259215.P17398230756852170089

`A020701(n)+2^(n+2)`
-/

namespace A259215.P17398230756852170089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n + (2 ^ (n + 2) : ℤ)

end

end A259215.P17398230756852170089

namespace A259215

/-- `A020701(n)+2^(n+2)` -/
def P17398230756852170089.Spec : Prop :=
  ∀ n, P17398230756852170089.a n = A259215 (n + 1)

end A259215

/-! ## A259215.P5955840765667094267

`A020695(n+1)+2^(n+2)`
-/

namespace A259215.P5955840765667094267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1) + (2 ^ (n + 2) : ℤ)

end

end A259215.P5955840765667094267

namespace A259215

/-- `A020695(n+1)+2^(n+2)` -/
def P5955840765667094267.Spec : Prop :=
  ∀ n, P5955840765667094267.a n = A259215 (n + 1)

end A259215

/-! ## A259215.P592664409340795791

`A071679(n+2)+2^(n+2)`
-/

namespace A259215.P592664409340795791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 2) + (2 ^ (n + 2) : ℤ)

end

end A259215.P592664409340795791

namespace A259215

/-- `A071679(n+2)+2^(n+2)` -/
def P592664409340795791.Spec : Prop :=
  ∀ n, P592664409340795791.a n = A259215 (n + 1)

end A259215

/-! ## A259215.P9462046134737287025

`A000045(n+4)+2^(n+2)`
-/

namespace A259215.P9462046134737287025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4) + (2 ^ (n + 2) : ℤ)

end

end A259215.P9462046134737287025

namespace A259215

/-- `A000045(n+4)+2^(n+2)` -/
def P9462046134737287025.Spec : Prop :=
  ∀ n, P9462046134737287025.a n = A259215 (n + 1)

end A259215

/-! ## A259215.P203649474512432643

`2*a(n-1)-A000045(n+1)` with `a(0)=7`
-/

namespace A259215.P203649474512432643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  2 * a (n - 1) - A000045 (n + 1)

end

end A259215.P203649474512432643

namespace A259215

/-- `2*a(n-1)-A000045(n+1)` -/
def P203649474512432643.Spec : Prop :=
  ∀ n, P203649474512432643.a n = A259215 (n + 1)

end A259215

/-! ## A259215.P8423047382298358871

`2*a(n-1)-A212804(n+2)` with `a(0)=7`
-/

namespace A259215.P8423047382298358871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  2 * a (n - 1) - A212804 (n + 2)

end

end A259215.P8423047382298358871

namespace A259215

/-- `2*a(n-1)-A212804(n+2)` -/
def P8423047382298358871.Spec : Prop :=
  ∀ n, P8423047382298358871.a n = A259215 (n + 1)

end A259215

/-! ## A259215.P6726055992710197814

`A020707(n)+A020701(n)`
-/

namespace A259215.P6726055992710197814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n + A020701 n

end

end A259215.P6726055992710197814

namespace A259215

/-- `A020707(n)+A020701(n)` -/
def P6726055992710197814.Spec : Prop :=
  ∀ n, P6726055992710197814.a n = A259215 (n + 1)

end A259215

/-! ## A259215.P1516583223636622537

`A020707(n)+Δ[A020712(n)]`
-/

namespace A259215.P1516583223636622537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n + (f1 (n + 1) - f1 n)

end

end A259215.P1516583223636622537

namespace A259215

/-- `A020707(n)+Δ[A020712(n)]` -/
def P1516583223636622537.Spec : Prop :=
  ∀ n, P1516583223636622537.a n = A259215 (n + 1)

end A259215

/-! ## A259215.P2603810706162912251

`A020707(n)+Δ[A020717(n)]`
-/

namespace A259215.P2603810706162912251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n + (f1 (n + 1) - f1 n)

end

end A259215.P2603810706162912251

namespace A259215

/-- `A020707(n)+Δ[A020717(n)]` -/
def P2603810706162912251.Spec : Prop :=
  ∀ n, P2603810706162912251.a n = A259215 (n + 1)

end A259215

/-! ## A259215.P15245490812345489826

`A020707(n)+A020695(n+1)`
-/

namespace A259215.P15245490812345489826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n + A020695 (n + 1)

end

end A259215.P15245490812345489826

namespace A259215

/-- `A020707(n)+A020695(n+1)` -/
def P15245490812345489826.Spec : Prop :=
  ∀ n, P15245490812345489826.a n = A259215 (n + 1)

end A259215

/-! ## A259215.P15515648843245415804

`A295731(n)+A211525(n+1)`
-/

namespace A259215.P15515648843245415804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 n + A211525 (n + 1)

end

end A259215.P15515648843245415804

namespace A259215

/-- `A295731(n)+A211525(n+1)` -/
def P15515648843245415804.Spec : Prop :=
  ∀ n, P15515648843245415804.a n = A259215 (n + 1)

end A259215

/-! ## A259215.P17599331613018707749

`A020706(n)+A000225(n+2)`
-/

namespace A259215.P17599331613018707749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n + A000225 (n + 2)

end

end A259215.P17599331613018707749

namespace A259215

/-- `A020706(n)+A000225(n+2)` -/
def P17599331613018707749.Spec : Prop :=
  ∀ n, P17599331613018707749.a n = A259215 (n + 1)

end A259215

/-! ## A259215.P10964071701631722136

`A088859(n+2)+A000045(n)`
-/

namespace A259215.P10964071701631722136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088859 (n + 2) + A000045 n

end

end A259215.P10964071701631722136

namespace A259215

/-- `A088859(n+2)+A000045(n)` -/
def P10964071701631722136.Spec : Prop :=
  ∀ n, P10964071701631722136.a n = A259215 (n + 1)

end A259215

/-! ## A259215.P7507747957944717741

`A020707(n)+A000045(n+4)`
-/

namespace A259215.P7507747957944717741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n + A000045 (n + 4)

end

end A259215.P7507747957944717741

namespace A259215

/-- `A020707(n)+A000045(n+4)` -/
def P7507747957944717741.Spec : Prop :=
  ∀ n, P7507747957944717741.a n = A259215 (n + 1)

end A259215

/-! ## A259215.P16626505138612769442

`A151821(n+2)+A020695(n+1)`
-/

namespace A259215.P16626505138612769442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 2) + A020695 (n + 1)

end

end A259215.P16626505138612769442

namespace A259215

/-- `A151821(n+2)+A020695(n+1)` -/
def P16626505138612769442.Spec : Prop :=
  ∀ n, P16626505138612769442.a n = A259215 (n + 1)

end A259215

/-! ## A259215.P14700010648522576668

`A259216(n+1)-A090991(n+1)`
-/

namespace A259215.P14700010648522576668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259216 (n + 1) - A090991 (n + 1)

end

end A259215.P14700010648522576668

namespace A259215

/-- `A259216(n+1)-A090991(n+1)` -/
def P14700010648522576668.Spec : Prop :=
  ∀ n, P14700010648522576668.a n = A259215 (n + 1)

end A259215

/-! ## A259215.P5498590541573762588

`A052956(n+2)+A000045(n+2)`
-/

namespace A259215.P5498590541573762588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052956 (n + 2) + A000045 (n + 2)

end

end A259215.P5498590541573762588

namespace A259215

/-- `A052956(n+2)+A000045(n+2)` -/
def P5498590541573762588.Spec : Prop :=
  ∀ n, P5498590541573762588.a n = A259215 (n + 1)

end A259215

/-! ## A259215.P11602955978933239234

`A090989(2*n+1)+A020701(n)`
-/

namespace A259215.P11602955978933239234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090989 (2 * n + 1) + A020701 n

end

end A259215.P11602955978933239234

namespace A259215

/-- `A090989(2*n+1)+A020701(n)` -/
def P11602955978933239234.Spec : Prop :=
  ∀ n, P11602955978933239234.a n = A259215 (n + 1)

end A259215

/-!
# A259216: Number of (n+1) X (2+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0011 or 0101.

The programs for A259216, the canonical program `A259216.P6115850359117668224` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259216 has offset 1).

The definition of A259216 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259216.P3902403259882749222

`2^(n+2)+3*A000045(n+4)`
-/

namespace A259216.P3902403259882749222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) + 3 * A000045 (n + 4)

end

end A259216.P3902403259882749222

namespace A259216

/-- `2^(n+2)+3*A000045(n+4)` -/
def P3902403259882749222.Spec : Prop :=
  ∀ n, P3902403259882749222.a n = A259216 (n + 1)

end A259216

/-! ## A259216.P6115850359117668224

`3*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=13, a(1)=23, a(2)=40`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259216

/-- `3*a(n-1)-a(n-2)-2*a(n-3)` -/
def P6115850359117668224.Spec : Prop :=
  ∀ n, P6115850359117668224.a n = A259216 (n + 1)

theorem P6115850359117668224.correct : P6115850359117668224.Spec := by
  intro n
  simp only [A259216, Nat.add_sub_cancel]

end A259216

/-! ## A259216.P10390508351361188187

`A020707(n)+3*A020701(n)`
-/

namespace A259216.P10390508351361188187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n + 3 * A020701 n

end

end A259216.P10390508351361188187

namespace A259216

/-- `A020707(n)+3*A020701(n)` -/
def P10390508351361188187.Spec : Prop :=
  ∀ n, P10390508351361188187.a n = A259216 (n + 1)

end A259216

/-! ## A259216.P16909490954211377495

`A020707(n)+Δ[A054968(n+5)]`
-/

namespace A259216.P16909490954211377495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054968 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n + (f1 (n + 1) - f1 n)

end

end A259216.P16909490954211377495

namespace A259216

/-- `A020707(n)+Δ[A054968(n+5)]` -/
def P16909490954211377495.Spec : Prop :=
  ∀ n, P16909490954211377495.a n = A259216 (n + 1)

end A259216

/-! ## A259216.P10884007430330445072

`A259215(n+1)+A090991(n+1)`
-/

namespace A259216.P10884007430330445072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259215 (n + 1) + A090991 (n + 1)

end

end A259216.P10884007430330445072

namespace A259216

/-- `A259215(n+1)+A090991(n+1)` -/
def P10884007430330445072.Spec : Prop :=
  ∀ n, P10884007430330445072.a n = A259216 (n + 1)

end A259216

/-! ## A259216.P8577312803242204158

`A036999(n+2)+A036563(n+2)`
-/

namespace A259216.P8577312803242204158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036999 (n + 2) + A036563 (n + 2)

end

end A259216.P8577312803242204158

namespace A259216

/-- `A036999(n+2)+A036563(n+2)` -/
def P8577312803242204158.Spec : Prop :=
  ∀ n, P8577312803242204158.a n = A259216 (n + 1)

end A259216

/-! ## A259216.P10547153539771325953

`A119587(n+2)+A020732(n+2)`
-/

namespace A259216.P10547153539771325953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119587 (n + 2) + A020732 (n + 2)

end

end A259216.P10547153539771325953

namespace A259216

/-- `A119587(n+2)+A020732(n+2)` -/
def P10547153539771325953.Spec : Prop :=
  ∀ n, P10547153539771325953.a n = A259216 (n + 1)

end A259216

/-! ## A259216.P9637732625418818376

`A022086(A020705(n))+A020707(n)`
-/

namespace A259216.P9637732625418818376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 (A020705 n).toNat + A020707 n

end

end A259216.P9637732625418818376

namespace A259216

/-- `A022086(A020705(n))+A020707(n)` -/
def P9637732625418818376.Spec : Prop :=
  ∀ n, P9637732625418818376.a n = A259216 (n + 1)

end A259216

/-! ## A259216.P17430888627409182396

`Δ[A054968(n+5)+A020737(n)]`
-/

namespace A259216.P17430888627409182396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054968 (n + 5) + A020737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259216.P17430888627409182396

namespace A259216

/-- `Δ[A054968(n+5)+A020737(n)]` -/
def P17430888627409182396.Spec : Prop :=
  ∀ n, P17430888627409182396.a n = A259216 (n + 1)

end A259216

/-! ## A259216.P5225959692448033613

`Δ[A054968(n+5)+A028399(n+2)]`
-/

namespace A259216.P5225959692448033613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054968 (n + 5) + A028399 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259216.P5225959692448033613

namespace A259216

/-- `Δ[A054968(n+5)+A028399(n+2)]` -/
def P5225959692448033613.Spec : Prop :=
  ∀ n, P5225959692448033613.a n = A259216 (n + 1)

end A259216

/-! ## A259216.P8733900310310946369

`Δ[A259217(n+2)/2]`
-/

namespace A259216.P8733900310310946369
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259217 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259216.P8733900310310946369

namespace A259216

/-- `Δ[A259217(n+2)/2]` -/
def P8733900310310946369.Spec : Prop :=
  ∀ n, P8733900310310946369.a n = (A259216 (n + 1) : ℚ)

end A259216

/-!
# A259217: Number of (n+1) X (3+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0011 or 0101.

The programs for A259217, the canonical program `A259217.P10371590828630718501` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259217 has offset 1).

The definition of A259217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259217.P217981199347919991

`2^(n+2)+2+6*A000045(n+4)`
-/

namespace A259217.P217981199347919991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) + 2 : ℤ) + 6 * A000045 (n + 4)

end

end A259217.P217981199347919991

namespace A259217

/-- `2^(n+2)+2+6*A000045(n+4)` -/
def P217981199347919991.Spec : Prop :=
  ∀ n, P217981199347919991.a n = A259217 (n + 1)

end A259217

/-! ## A259217.P10371590828630718501

`4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=24, a(1)=40, a(2)=66, a(3)=112`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259217

/-- `4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` -/
def P10371590828630718501.Spec : Prop :=
  ∀ n, P10371590828630718501.a n = A259217 (n + 1)

theorem P10371590828630718501.correct : P10371590828630718501.Spec := by
  intro n
  simp only [A259217, Nat.add_sub_cancel]

end A259217

/-! ## A259217.P10566043635534843933

`4*A000225(n)+6*A020706(n)`
-/

namespace A259217.P10566043635534843933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000225 n + 6 * A020706 n

end

end A259217.P10566043635534843933

namespace A259217

/-- `4*A000225(n)+6*A020706(n)` -/
def P10566043635534843933.Spec : Prop :=
  ∀ n, P10566043635534843933.a n = A259217 (n + 1)

end A259217

/-! ## A259217.P2989078048373084841

`2*(A259216(n+1)-A000225(n+1))`
-/

namespace A259217.P2989078048373084841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A259216 (n + 1) - A000225 (n + 1))

end

end A259217.P2989078048373084841

namespace A259217

/-- `2*(A259216(n+1)-A000225(n+1))` -/
def P2989078048373084841.Spec : Prop :=
  ∀ n, P2989078048373084841.a n = A259217 (n + 1)

end A259217

/-! ## A259217.P16620991848685886087

`A001588(n+2)+A011782(n+3)+A001588(n+6)`
-/

namespace A259217.P16620991848685886087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 (n + 2) + (A011782 (n + 3) + A001588 (n + 6))

end

end A259217.P16620991848685886087

namespace A259217

/-- `A001588(n+2)+A011782(n+3)+A001588(n+6)` -/
def P16620991848685886087.Spec : Prop :=
  ∀ n, P16620991848685886087.a n = A259217 (n + 1)

end A259217

/-! ## A259217.P10162092405537503738

`A048584(n+4)-Δ[A227200(n+2)]`
-/

namespace A259217.P10162092405537503738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227200 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048584 (n + 4) - (f1 (n + 1) - f1 n)

end

end A259217.P10162092405537503738

namespace A259217

/-- `A048584(n+4)-Δ[A227200(n+2)]` -/
def P10162092405537503738.Spec : Prop :=
  ∀ n, P10162092405537503738.a n = A259217 (n + 1)

end A259217

/-! ## A259217.P8417757000083070533

`2*A259219(n+1)+16-A259220(n+1)`
-/

namespace A259217.P8417757000083070533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259219 (n + 1) + (16 - A259220 (n + 1))

end

end A259217.P8417757000083070533

namespace A259217

/-- `2*A259219(n+1)+16-A259220(n+1)` -/
def P8417757000083070533.Spec : Prop :=
  ∀ n, P8417757000083070533.a n = A259217 (n + 1)

end A259217

/-!
# A259218: Number of (n+1) X (4+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0011 or 0101.

The programs for A259218, the canonical program `A259218.P4623925565504827193` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259218 has offset 1).

The definition of A259218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259218.P5959933490376231443

`2^(n+2)+8+11*A000045(n+4)`
-/

namespace A259218.P5959933490376231443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) + 8 : ℤ) + 11 * A000045 (n + 4)

end

end A259218.P5959933490376231443

namespace A259218

/-- `2^(n+2)+8+11*A000045(n+4)` -/
def P5959933490376231443.Spec : Prop :=
  ∀ n, P5959933490376231443.a n = A259218 (n + 1)

end A259218

/-! ## A259218.P4623925565504827193

`4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=45, a(1)=71, a(2)=112, a(3)=183`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259218

/-- `4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` -/
def P4623925565504827193.Spec : Prop :=
  ∀ n, P4623925565504827193.a n = A259218 (n + 1)

theorem P4623925565504827193.correct : P4623925565504827193.Spec := by
  intro n
  simp only [A259218, Nat.add_sub_cancel]

end A259218

/-! ## A259218.P12731669193722777715

`A259216(n+1)+8*A020706(n)`
-/

namespace A259218.P12731669193722777715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259216 (n + 1) + 8 * A020706 n

end

end A259218.P12731669193722777715

namespace A259218

/-- `A259216(n+1)+8*A020706(n)` -/
def P12731669193722777715.Spec : Prop :=
  ∀ n, P12731669193722777715.a n = A259218 (n + 1)

end A259218

/-! ## A259218.P3593967343685785956

`A259219(n+1)-8*A048584(n)`
-/

namespace A259218.P3593967343685785956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259219 (n + 1) - 8 * A048584 n

end

end A259218.P3593967343685785956

namespace A259218

/-- `A259219(n+1)-8*A048584(n)` -/
def P3593967343685785956.Spec : Prop :=
  ∀ n, P3593967343685785956.a n = A259218 (n + 1)

end A259218

/-! ## A259218.P1004844830874940387

`2*(A259217(n+1)+2)-A259215(n+1)`
-/

namespace A259218.P1004844830874940387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A259217 (n + 1) + 2) - A259215 (n + 1)

end

end A259218.P1004844830874940387

namespace A259218

/-- `2*(A259217(n+1)+2)-A259215(n+1)` -/
def P1004844830874940387.Spec : Prop :=
  ∀ n, P1004844830874940387.a n = A259218 (n + 1)

end A259218

/-! ## A259218.P14552495927944288621

`2*(A259220(n+1)+16)-A259221(n+1)`
-/

namespace A259218.P14552495927944288621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A259220 (n + 1) + 16) - A259221 (n + 1)

end

end A259218.P14552495927944288621

namespace A259218

/-- `2*(A259220(n+1)+16)-A259221(n+1)` -/
def P14552495927944288621.Spec : Prop :=
  ∀ n, P14552495927944288621.a n = A259218 (n + 1)

end A259218

/-!
# A259219: Number of (n+1) X (5+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0011 or 0101.

The programs for A259219, the canonical program `A259219.P11969189513049286950` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259219 has offset 1).

The definition of A259219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259219.P11969189513049286950

`4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=85, a(1)=127, a(2)=192, a(3)=303`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259219

/-- `4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` -/
def P11969189513049286950.Spec : Prop :=
  ∀ n, P11969189513049286950.a n = A259219 (n + 1)

theorem P11969189513049286950.correct : P11969189513049286950.Spec := by
  intro n
  simp only [A259219, Nat.add_sub_cancel]

end A259219

/-! ## A259219.P2216907406168898894

`A259222(A374005(n+1))`
-/

namespace A259219.P2216907406168898894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259222 (A374005 (n + 1)).toNat

end

end A259219.P2216907406168898894

namespace A259219

/-- `A259222(A374005(n+1))` -/
def P2216907406168898894.Spec : Prop :=
  ∀ n, P2216907406168898894.a n = A259219 (n + 1)

end A259219

/-! ## A259219.P18220731013016853151

`A259222(A167499(n+3))`
-/

namespace A259219.P18220731013016853151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259222 (A167499 (n + 3)).toNat

end

end A259219.P18220731013016853151

namespace A259219

/-- `A259222(A167499(n+3))` -/
def P18220731013016853151.Spec : Prop :=
  ∀ n, P18220731013016853151.a n = A259219 (n + 1)

end A259219

/-! ## A259219.P17392931004113232041

`A259222(A155212(n)+13)`
-/

namespace A259219.P17392931004113232041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259222 (A155212 n + 13).toNat

end

end A259219.P17392931004113232041

namespace A259219

/-- `A259222(A155212(n)+13)` -/
def P17392931004113232041.Spec : Prop :=
  ∀ n, P17392931004113232041.a n = A259219 (n + 1)

end A259219

/-! ## A259219.P9501801919361974701

`A259222(A056000(n)+15)`
-/

namespace A259219.P9501801919361974701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259222 (A056000 n + 15).toNat

end

end A259219.P9501801919361974701

namespace A259219

/-- `A259222(A056000(n)+15)` -/
def P9501801919361974701.Spec : Prop :=
  ∀ n, P9501801919361974701.a n = A259219 (n + 1)

end A259219

/-!
# A259220: Number of (n+1) X (6+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0011 or 0101.

The programs for A259220, the canonical program `A259220.P14665624621069660755` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259220 has offset 1).

The definition of A259220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259220.P14665624621069660755

`4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=162, a(1)=230, a(2)=334, a(3)=510`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259220

/-- `4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` -/
def P14665624621069660755.Spec : Prop :=
  ∀ n, P14665624621069660755.a n = A259220 (n + 1)

theorem P14665624621069660755.correct : P14665624621069660755.Spec := by
  intro n
  simp only [A259220, Nat.add_sub_cancel]

end A259220

/-! ## A259220.P9471874682568647420

`2*A259219(n+1)+16-A259217(n+1)`
-/

namespace A259220.P9471874682568647420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259219 (n + 1) + (16 - A259217 (n + 1))

end

end A259220.P9471874682568647420

namespace A259220

/-- `2*A259219(n+1)+16-A259217(n+1)` -/
def P9471874682568647420.Spec : Prop :=
  ∀ n, P9471874682568647420.a n = A259220 (n + 1)

end A259220

/-! ## A259220.P17791351894697819335

`A259222(∑[n+5]+16)`
-/

namespace A259220.P17791351894697819335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259222 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A259220.P17791351894697819335

namespace A259220

/-- `A259222(∑[n+5]+16)` -/
def P17791351894697819335.Spec : Prop :=
  ∀ n, P17791351894697819335.a n = A259220 (n + 1)

end A259220

/-! ## A259220.P9269091398808523898

`A259222(A000124(n+5)+5)%A259221(2*n+1)`
-/

namespace A259220.P9269091398808523898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259222 (A000124 (n + 5) + 5).toNat) (A259221 (2 * n + 1))

end

end A259220.P9269091398808523898

namespace A259220

/-- `A259222(A000124(n+5)+5)%A259221(2*n+1)` -/
def P9269091398808523898.Spec : Prop :=
  ∀ n, P9269091398808523898.a n = A259220 (n + 1)

end A259220

/-!
# A259221: Number of (n+1) X (7+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0011 or 0101.

The programs for A259221, the canonical program `A259221.P17665783532846643872` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259221 has offset 1).

The definition of A259221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259221.P17665783532846643872

`4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=311, a(1)=421, a(2)=588, a(3)=869`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259221

/-- `4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` -/
def P17665783532846643872.Spec : Prop :=
  ∀ n, P17665783532846643872.a n = A259221 (n + 1)

theorem P17665783532846643872.correct : P17665783532846643872.Spec := by
  intro n
  simp only [A259221, Nat.add_sub_cancel]

end A259221

/-! ## A259221.P9206343264958545524

`2*(A259220(n+1)+16)-A259218(n+1)`
-/

namespace A259221.P9206343264958545524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A259220 (n + 1) + 16) - A259218 (n + 1)

end

end A259221.P9206343264958545524

namespace A259221

/-- `2*(A259220(n+1)+16)-A259218(n+1)` -/
def P9206343264958545524.Spec : Prop :=
  ∀ n, P9206343264958545524.a n = A259221 (n + 1)

end A259221

/-! ## A259221.P2349539527192635084

`A259222(A374008(n+1))`
-/

namespace A259221.P2349539527192635084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259222 (A374008 (n + 1)).toNat

end

end A259221.P2349539527192635084

namespace A259221

/-- `A259222(A374008(n+1))` -/
def P2349539527192635084.Spec : Prop :=
  ∀ n, P2349539527192635084.a n = A259221 (n + 1)

end A259221

/-! ## A259221.P17162374218311374645

`A259222(A167487(n+5))`
-/

namespace A259221.P17162374218311374645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259222 (A167487 (n + 5)).toNat

end

end A259221.P17162374218311374645

namespace A259221

/-- `A259222(A167487(n+5))` -/
def P17162374218311374645.Spec : Prop :=
  ∀ n, P17162374218311374645.a n = A259221 (n + 1)

end A259221

/-! ## A259221.P14018164088340381841

`A259222(A056119(n)+28)`
-/

namespace A259221.P14018164088340381841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259222 (A056119 n + 28).toNat

end

end A259221.P14018164088340381841

namespace A259221

/-- `A259222(A056119(n)+28)` -/
def P14018164088340381841.Spec : Prop :=
  ∀ n, P14018164088340381841.a n = A259221 (n + 1)

end A259221

/-!
# A259223: E.g.f.: Sum_{n>=1} x^(n^2) * exp(2*x^n) / n!.

The programs for A259223, the canonical program `A259223.P16164157945621697609` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259223 has offset 1).

The definition of A259223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259223.P16164157945621697609

`∑{d}[n+1, 2^(#-(n+1)/#)*C(#, (n+1)/#)*(n+1)!/#!]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259223

/-- `∑{d}[n+1, 2^(#-(n+1)/#)*C(#, (n+1)/#)*(n+1)!/#!]` -/
def P16164157945621697609.Spec : Prop :=
  ∀ n, P16164157945621697609.a n = (A259223 (n + 1) : ℝ)

end A259223

/-! ## A259223.P16663656519228897953

`A344026(C(A118883(n+1), A046854(n)))`
-/

namespace A259223.P16663656519228897953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344026 (Nat.choose (A118883 (n + 1)).toNat (A046854 n).toNat)

end

end A259223.P16663656519228897953

namespace A259223

/-- `A344026(C(A118883(n+1), A046854(n)))` -/
def P16663656519228897953.Spec : Prop :=
  ∀ n, P16663656519228897953.a n = A259223 (n + 1)

end A259223

/-! ## A259223.P11934183230876765082

`A344026(A118883(n+1)^A008289(n+1))`
-/

namespace A259223.P11934183230876765082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344026 (SequenceMachineLib.roundAway ((A118883 (n + 1) : ℚ) ^ (A008289 (n + 1) : ℤ))).toNat

end

end A259223.P11934183230876765082

namespace A259223

/-- `A344026(A118883(n+1)^A008289(n+1))` -/
def P11934183230876765082.Spec : Prop :=
  ∀ n, P11934183230876765082.a n = A259223 (n + 1)

end A259223

/-!
# A259225: Smallest oblong number greater than or equal to n.

The programs for A259225, there is no canonical definition to state claims against.
-/

/-! ## A259225.P5876385915932132557

`floor((cos(1)+round(sqrt(n)))²)`
-/

namespace A259225.P5876385915932132557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.cos (1 : ℝ) + (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) : ℝ)) ^ 2⌋

end

end A259225.P5876385915932132557

/-! ## A259225.P3211736008975587384

`round((cot(2)-round(sqrt(n)))²)`
-/

namespace A259225.P3211736008975587384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.cot (2 : ℝ) - (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) : ℝ)) ^ 2)

end

end A259225.P3211736008975587384

/-! ## A259225.P10259911974765382799

`round((acot(2)+round(sqrt(n)))²)`
-/

namespace A259225.P10259911974765382799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.acot (2 : ℝ) + (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) : ℝ)) ^ 2)

end

end A259225.P10259911974765382799

/-! ## A259225.P6331819923506565559

`round(sqrt(n)+round(sqrt(n))²)`
-/

namespace A259225.P6331819923506565559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 : ℝ))

end

end A259225.P6331819923506565559

/-! ## A259225.P8683945767397492660

`2*C(round(sqrt(n))+1, 2)`
-/

namespace A259225.P8683945767397492660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) + 1).toNat 2

end

end A259225.P8683945767397492660

/-! ## A259225.P17497873286551979414

`A002378(round(sqrt(n)))`
-/

namespace A259225.P17497873286551979414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat

end

end A259225.P17497873286551979414

/-! ## A259225.P1486628310704053766

`A258881(round(sqrt(n)))`
-/

namespace A259225.P1486628310704053766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258881 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat

end

end A259225.P1486628310704053766

/-! ## A259225.P8233383563128171389

`A127366(round(sqrt(n))²)`
-/

namespace A259225.P8233383563128171389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127366 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2).toNat

end

end A259225.P8233383563128171389

/-! ## A259225.P452209691344913971

`2*A000217(round(sqrt(n)))`
-/

namespace A259225.P452209691344913971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat

end

end A259225.P452209691344913971

/-! ## A259225.P10410425719744473140

`A038714(A027709(n))`
-/

namespace A259225.P10410425719744473140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038714 (A027709 n).toNat

end

end A259225.P10410425719744473140

/-!
# A259226: Numbers n such that A157480(n) = A259232(n).

The programs for A259226, there is no canonical definition to state claims against.
-/

/-! ## A259226.P6355254949348528493

`A000720(A305411(n+1))`
-/

namespace A259226.P6355254949348528493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A305411 (n + 1)).toNat

end

end A259226.P6355254949348528493

/-! ## A259226.P5304574597896686891

`A061395(p?[A305411(n+1)])`
-/

namespace A259226.P5304574597896686891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A259226.P5304574597896686891

/-! ## A259226.P3949542660991201652

`A061395(A305411(n+1)%A001248(n+1))`
-/

namespace A259226.P3949542660991201652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A305411 (n + 1)) (A001248 (n + 1))).toNat

end

end A259226.P3949542660991201652

/-! ## A259226.P5741953648949122005

`A061395(A305411(n+1))%A046310(n+1)`
-/

namespace A259226.P5741953648949122005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A305411 (n + 1)).toNat) (A046310 (n + 1))

end

end A259226.P5741953648949122005

/-! ## A259226.P4436020999967080942

`A061395(A305411(n+1)+A049084(2*(n+2)))`
-/

namespace A259226.P4436020999967080942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A305411 (n + 1) + A049084 (2 * (n + 2))).toNat

end

end A259226.P4436020999967080942

/-! ## A259226.P8677022009636207730

`A061395(2*A305411(n+1))`
-/

namespace A259226.P8677022009636207730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A305411 (n + 1)).toNat

end

end A259226.P8677022009636207730

/-! ## A259226.P10668567644040103991

`A003963(p?[A305411(n+1)])`
-/

namespace A259226.P10668567644040103991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A259226.P10668567644040103991

/-! ## A259226.P3559524376663601423

`A026233(p?[A305411(n+1)])`
-/

namespace A259226.P3559524376663601423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A259226.P3559524376663601423

/-! ## A259226.P9353154744888243656

`A026238(p?[A305411(n+1)])`
-/

namespace A259226.P9353154744888243656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A259226.P9353154744888243656

/-! ## A259226.P1732927322749721391

`A049084(p?[A305411(n+1)])`
-/

namespace A259226.P1732927322749721391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A259226.P1732927322749721391

/-!
# A259227: Hydropronic numbers: numbers n that can be written as a product of 2 integers whose sum is equal to ceiling(n/ceiling(sqrt(n))) + ceiling(sqrt(n)).

The programs for A259227, there is no canonical definition to state claims against.
-/

/-! ## A259227.P787514819769835048

`record[A257471(n+1)]`
-/

namespace A259227.P787514819769835048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259227.P787514819769835048

/-! ## A259227.P14501237989043631968

`record[A172471(n)+A077028(n+1)]`
-/

namespace A259227.P14501237989043631968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n + A077028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259227.P14501237989043631968

/-! ## A259227.P6758827768299195328

`record[ceil(A099375(n)/2)*A002260(n+1)]`
-/

namespace A259227.P6758827768299195328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℚ) / 2⌉ * A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259227.P6758827768299195328

/-! ## A259227.P13511104281319009143

`record[A002260(n+1)*A002260(A038722(n+1))]`
-/

namespace A259227.P13511104281319009143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A002260 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259227.P13511104281319009143

/-! ## A259227.P1748182797748410058

`record[A077028(n+4)-1]`
-/

namespace A259227.P1748182797748410058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (n + 4) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259227.P1748182797748410058

/-! ## A259227.P18183658751563297927

`record[A003991(n+1)]`
-/

namespace A259227.P18183658751563297927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259227.P18183658751563297927

/-! ## A259227.P18420863299877010853

`record[A059036(n)+1]`
-/

namespace A259227.P18420863299877010853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259227.P18420863299877010853

/-! ## A259227.P10872105157007905496

`record[sqrt(A098359(n+1))]`
-/

namespace A259227.P10872105157007905496
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A098359 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259227.P10872105157007905496

/-! ## A259227.P11648747319683148797

`record[A098352(n+1)/2]/2`
-/

namespace A259227.P11648747319683148797
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098352 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 2

end

end A259227.P11648747319683148797

/-! ## A259227.P9611153113217147687

`record[A049627(n)+A049615(n)]`
-/

namespace A259227.P9611153113217147687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049627 n + A049615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259227.P9611153113217147687

/-! ## A259227.P3571515786777272355

`record[A003056(n)+A004247(n)+1]`
-/

namespace A259227.P3571515786777272355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A004247 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259227.P3571515786777272355

/-! ## A259227.P5870509580310532238

`record[A002260(n+1)*A004736(n+1)]`
-/

namespace A259227.P5870509580310532238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259227.P5870509580310532238

/-! ## A259227.P13697130206451586078

`record[(A002262(n)+1)*A004736(n+1)]`
-/

namespace A259227.P13697130206451586078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259227.P13697130206451586078

/-! ## A259227.P8159120682513714556

`record[(A002262(n)+1)*(A025581(n)+1)]`
-/

namespace A259227.P8159120682513714556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * (A025581 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259227.P8159120682513714556

/-! ## A259227.P16699647651077858161

`record[(A025581(n)+1)*A002260(n+1)]`
-/

namespace A259227.P16699647651077858161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259227.P16699647651077858161

/-! ## A259227.P594394806444207109

`record[(A114327(n)+A002260(n+1))*A002260(n+1)]`
-/

namespace A259227.P594394806444207109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A114327 n + A002260 (n + 1)) * A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259227.P594394806444207109

/-! ## A259227.P9345162869643921034

`record[(A002024(n+1)-A002262(n))*A002260(n+1)]`
-/

namespace A259227.P9345162869643921034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) - A002262 n) * A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259227.P9345162869643921034

/-! ## A259227.P8280825476873057325

`record[(A003057(n+2)-A004736(n+1))*A004736(n+1)]`
-/

namespace A259227.P8280825476873057325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) - A004736 (n + 1)) * A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259227.P8280825476873057325

/-! ## A259227.P9271541585743105692

`record[A080251(n)]`
-/

namespace A259227.P9271541585743105692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259227.P9271541585743105692

/-!
# A259229: Inverse permutation to A259228.

The programs for A259229, there is no canonical definition to state claims against.
-/

/-! ## A259229.P1384943098701118716

`A095156(n+1)%∏[A020714(n)]`
-/

namespace A259229.P1384943098701118716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095156 (n + 1)) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A259229.P1384943098701118716

/-! ## A259229.P3507651646608272341

`gcd(A095156(n+1), A163804(A152994(n)))`
-/

namespace A259229.P3507651646608272341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A095156 (n + 1)) (A163804 (A152994 n).toNat)

end

end A259229.P3507651646608272341

/-! ## A259229.P1096889653906164307

`A095156(n+1)^A325169(A008578(n+1))`
-/

namespace A259229.P1096889653906164307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095156 (n + 1) : ℚ) ^ (A325169 (A008578 (n + 1)).toNat : ℤ)

end

end A259229.P1096889653906164307

/-! ## A259229.P3345259197175696284

`A095156(n+1)^A345221(A000043(n+1))`
-/

namespace A259229.P3345259197175696284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095156 (n + 1) : ℚ) ^ (A345221 (A000043 (n + 1)).toNat : ℤ)

end

end A259229.P3345259197175696284

/-! ## A259229.P18395783765919543025

`A095156(n+1)^A325826(A020639(A091980(n+1)))`
-/

namespace A259229.P18395783765919543025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095156 (n + 1) : ℚ) ^ (A325826 (A020639 (A091980 (n + 1)).toNat).toNat : ℤ)

end

end A259229.P18395783765919543025

/-!
# A259230: a(n) = smallest k such that (A115091(n)-k)! == -1 (mod A115091(n)^2).

The programs for A259230, there is no canonical definition to state claims against.
-/

/-! ## A259230.P4116441674039221674

`A133572(A209754(n+1))`
-/

namespace A259230.P4116441674039221674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133572 (A209754 (n + 1)).toNat

end

end A259230.P4116441674039221674

/-! ## A259230.P9959960766207528366

`A283507(A225468(n))+1`
-/

namespace A259230.P9959960766207528366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283507 (A225468 n).toNat + 1

end

end A259230.P9959960766207528366

/-! ## A259230.P3014643669880848007

`A308709(A120434(n+2))`
-/

namespace A259230.P3014643669880848007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308709 (A120434 (n + 2)).toNat

end

end A259230.P3014643669880848007

/-!
# A259231: Primitive numbers whose abundance is positive and odd.

The programs for A259231, there is no canonical definition to state claims against.
-/

/-! ## A259231.P16349901418680785999

`A175126(A339981(n+1))`
-/

namespace A259231.P16349901418680785999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A339981 (n + 1)).toNat

end

end A259231.P16349901418680785999

/-! ## A259231.P11018953196065973204

`A339981(n+1)/A020639(A067702(n+1))`
-/

namespace A259231.P11018953196065973204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339981 (n + 1) : ℚ) / (A020639 (A067702 (n + 1)).toNat : ℚ)

end

end A259231.P11018953196065973204

/-! ## A259231.P2464044567179796535

`A339981(n+1)/A353858(A040049(n+1))`
-/

namespace A259231.P2464044567179796535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339981 (n + 1) : ℚ) / (A353858 (A040049 (n + 1)).toNat : ℚ)

end

end A259231.P2464044567179796535

/-! ## A259231.P13905704376323573950

`A339981(n+1)/A353858(A040085(n+1))`
-/

namespace A259231.P13905704376323573950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339981 (n + 1) : ℚ) / (A353858 (A040085 (n + 1)).toNat : ℚ)

end

end A259231.P13905704376323573950

/-!
# A259232: Smallest prime q > p such that q + p is a square, where p is the n-th prime.

The programs for A259232, there is no canonical definition to state claims against.
-/

/-! ## A259232.P4603894738658961763

`A000040(A381368(n+1))`
-/

namespace A259232.P4603894738658961763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A381368 (n + 1)).toNat

end

end A259232.P4603894738658961763

/-!
# A259236: Increasing sequence of numbers n such that the digits of n appear as a substring of the concatenation of the terms < n of the sequence, which is seeded with 1..9.

The programs for A259236, there is no canonical definition to state claims against.
-/

/-! ## A259236.P15461966960032795669

`record[A367362(a(floor(n/10)))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=3, a(5)=4, a(6)=5, a(7)=6, a(8)=7, a(9)=8, a(10)=9`
-/

namespace A259236.P15461966960032795669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9] fun n f1 =>
  A367362 (f1 ⌊(n : ℚ) / 10⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259236.P15461966960032795669

/-! ## A259236.P16327948210885852663

`lt[A032571(A229186(n)), 10]`
-/

namespace A259236.P16327948210885852663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032571 (A229186 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A259236.P16327948210885852663

/-! ## A259236.P12636571980658450719

`lt[A229186(A118759(n)), 10]`
-/

namespace A259236.P12636571980658450719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229186 (A118759 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A259236.P12636571980658450719

/-! ## A259236.P18381095582577482037

`eq[dr(A087052(n)), A229186(n)]`
-/

namespace A259236.P18381095582577482037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A087052 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259236.P18381095582577482037

/-! ## A259236.P2704380880843943468

`eq[A000030(A056142(n)), A229186(n)]`
-/

namespace A259236.P2704380880843943468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A056142 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259236.P2704380880843943468

/-!
# A259239: E.g.f.: exp(x-sqrt(1-x^2)+1).

The programs for A259239, there is no canonical definition to state claims against.
-/

/-! ## A259239.P2096672337208635932

`A001472(n)-A171181(A061138(n))`
-/

namespace A259239.P2096672337208635932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001472 n - A171181 (A061138 n).toNat

end

end A259239.P2096672337208635932

/-! ## A259239.P2514153061602692581

`A001472(n)-A059169(A308461(n))`
-/

namespace A259239.P2514153061602692581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001472 n - A059169 (A308461 n).toNat

end

end A259239.P2514153061602692581

/-! ## A259239.P14432185220424486047

`A005388(n)-A059169(A308461(n))`
-/

namespace A259239.P14432185220424486047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005388 n - A059169 (A308461 n).toNat

end

end A259239.P14432185220424486047

/-! ## A259239.P13724920027975778452

`A053498(n)-A059169(A308461(n))`
-/

namespace A259239.P13724920027975778452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053498 n - A059169 (A308461 n).toNat

end

end A259239.P13724920027975778452

/-!
# A259241: Areas of rectangles that can be completely filled with squares of side length > 1 (with all side lengths restricted to the natural numbers).

The programs for A259241, there is no canonical definition to state claims against.
-/

/-! ## A259241.P18267176986560050834

`eq[A008683(A219209(n)), A025439(n)]`
-/

namespace A259241.P18267176986560050834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A219209 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259241.P18267176986560050834

/-! ## A259241.P12730025146179122541

`eq[A008683(A219209(n)), A025444(n)]`
-/

namespace A259241.P12730025146179122541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A219209 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259241.P12730025146179122541

/-! ## A259241.P14174086886843744972

`eq[A008683(A219209(n)), A080224(n+1)]`
-/

namespace A259241.P14174086886843744972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A219209 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259241.P14174086886843744972

/-! ## A259241.P13852145586723781506

`A289553(A205542(∑[n]))`
-/

namespace A259241.P13852145586723781506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (A205542 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A259241.P13852145586723781506

/-! ## A259241.P7705612204321158071

`A049076(A090989(n+1))*A289553(n+2)`
-/

namespace A259241.P7705612204321158071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (A090989 (n + 1)).toNat * A289553 (n + 2)

end

end A259241.P7705612204321158071

/-!
# A259242: Number of (n+1)X(n+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0011 or 0111.

The programs for A259242, there is no canonical definition to state claims against.
-/

/-! ## A259242.P16136394322403114582

`A259250((n+1)²+n²)`
-/

namespace A259242.P16136394322403114582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 ((n + 1) ^ 2 + n ^ 2)

end

end A259242.P16136394322403114582

/-! ## A259242.P9003673494541406044

`record[A003982(n)*A259250(n+1)]`
-/

namespace A259242.P9003673494541406044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A259250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259242.P9003673494541406044

/-! ## A259242.P15413882495580534638

`record[gcd(A114327(n), A259250(n+1))]`
-/

namespace A259242.P15413882495580534638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A259250 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259242.P15413882495580534638

/-! ## A259242.P3441136581664736246

`or(A000007(n), A259250(A001844(n)))`
-/

namespace A259242.P3441136581664736246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A259250 (A001844 n).toNat)

end

end A259242.P3441136581664736246

/-! ## A259242.P9411724621409888279

`A240228(n+1)*A259250(A001844(n))`
-/

namespace A259242.P9411724621409888279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240228 (n + 1) * A259250 (A001844 n).toNat

end

end A259242.P9411724621409888279

/-!
# A259243: Number of (n+1) X (1+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0011 or 0111.

The programs for A259243, the canonical program `A259243.P15234662578095395368` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259243 has offset 1).

The definition of A259243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259243.P16151914240470377543

`ogf((9+12x)/(1-x-3x^2))`
-/

namespace A259243.P16151914240470377543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 12] [1, -1, -3] n

end

end A259243.P16151914240470377543

namespace A259243

/-- `ogf((9+12x)/(1-x-3x^2))` -/
def P16151914240470377543.Spec : Prop :=
  ∀ n, P16151914240470377543.a n = A259243 (n + 1)

end A259243

/-! ## A259243.P15234662578095395368

`a(n-1)+3*a(n-2)` with `a(0)=9, a(1)=21`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259243

/-- `a(n-1)+3*a(n-2)` -/
def P15234662578095395368.Spec : Prop :=
  ∀ n, (P15234662578095395368.a n : ℤ) = A259243 (n + 1)

theorem P15234662578095395368.correct : P15234662578095395368.Spec := by
  intro n
  simp only [A259243, Nat.add_sub_cancel]

end A259243

/-! ## A259243.P15142140693254450499

`3*Δ[A019485(n)]`
-/

namespace A259243.P15142140693254450499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A259243.P15142140693254450499

namespace A259243

/-- `3*Δ[A019485(n)]` -/
def P15142140693254450499.Spec : Prop :=
  ∀ n, P15142140693254450499.a n = A259243 (n + 1)

end A259243

/-! ## A259243.P13357837922105915417

`abs(Δ[A152167(n+1)])`
-/

namespace A259243.P13357837922105915417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A259243.P13357837922105915417

namespace A259243

/-- `abs(Δ[A152167(n+1)])` -/
def P13357837922105915417.Spec : Prop :=
  ∀ n, P13357837922105915417.a n = A259243 (n + 1)

end A259243

/-! ## A259243.P6862895102664503493

`A268938(n+1)+A091629(n+1)`
-/

namespace A259243.P6862895102664503493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268938 (n + 1) + A091629 (n + 1)

end

end A259243.P6862895102664503493

namespace A259243

/-- `A268938(n+1)+A091629(n+1)` -/
def P6862895102664503493.Spec : Prop :=
  ∀ n, P6862895102664503493.a n = A259243 (n + 1)

end A259243

/-! ## A259243.P2324771306772390456

`A228661(n+1)+A006130(n+3)`
-/

namespace A259243.P2324771306772390456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228661 (n + 1) + A006130 (n + 3)

end

end A259243.P2324771306772390456

namespace A259243

/-- `A228661(n+1)+A006130(n+3)` -/
def P2324771306772390456.Spec : Prop :=
  ∀ n, P2324771306772390456.a n = A259243 (n + 1)

end A259243

/-! ## A259243.P16352648714958788531

`A274977(n+1)+A052533(n+3)`
-/

namespace A259243.P16352648714958788531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274977 (n + 1) + A052533 (n + 3)

end

end A259243.P16352648714958788531

namespace A259243

/-- `A274977(n+1)+A052533(n+3)` -/
def P16352648714958788531.Spec : Prop :=
  ∀ n, P16352648714958788531.a n = A259243 (n + 1)

end A259243

/-! ## A259243.P6701237566265427671

`A006138(n+3)-A006138(n+1)`
-/

namespace A259243.P6701237566265427671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 (n + 3) - A006138 (n + 1)

end

end A259243.P6701237566265427671

namespace A259243

/-- `A006138(n+3)-A006138(n+1)` -/
def P6701237566265427671.Spec : Prop :=
  ∀ n, P6701237566265427671.a n = A259243 (n + 1)

end A259243

/-! ## A259243.P16973034452522502627

`A105476(n+2)+A105476(n+3)`
-/

namespace A259243.P16973034452522502627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105476 (n + 2) + A105476 (n + 3)

end

end A259243.P16973034452522502627

namespace A259243

/-- `A105476(n+2)+A105476(n+3)` -/
def P16973034452522502627.Spec : Prop :=
  ∀ n, P16973034452522502627.a n = A259243 (n + 1)

end A259243

/-! ## A259243.P5549721277666998146

`3*(A006138(n+1)+A006138(n))`
-/

namespace A259243.P5549721277666998146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A006138 (n + 1) + A006138 n)

end

end A259243.P5549721277666998146

namespace A259243

/-- `3*(A006138(n+1)+A006138(n))` -/
def P5549721277666998146.Spec : Prop :=
  ∀ n, P5549721277666998146.a n = A259243 (n + 1)

end A259243

/-! ## A259243.P794956778024266771

`A019525(n+4)-A019525(n+2)`
-/

namespace A259243.P794956778024266771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019525 (n + 4) - A019525 (n + 2)

end

end A259243.P794956778024266771

namespace A259243

/-- `A019525(n+4)-A019525(n+2)` -/
def P794956778024266771.Spec : Prop :=
  ∀ n, P794956778024266771.a n = A259243 (n + 1)

end A259243

/-! ## A259243.P12459832725153418621

`A274977(n+1)+Δ[A006130(n+2)]`
-/

namespace A259243.P12459832725153418621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274977 (n + 1) + (f1 (n + 1) - f1 n)

end

end A259243.P12459832725153418621

namespace A259243

/-- `A274977(n+1)+Δ[A006130(n+2)]` -/
def P12459832725153418621.Spec : Prop :=
  ∀ n, P12459832725153418621.a n = A259243 (n + 1)

end A259243

/-! ## A259243.P2447916096124802637

`A006138(n+1)+A274977(n+1)+A075118(n+1)`
-/

namespace A259243.P2447916096124802637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 (n + 1) + (A274977 (n + 1) + A075118 (n + 1))

end

end A259243.P2447916096124802637

namespace A259243

/-- `A006138(n+1)+A274977(n+1)+A075118(n+1)` -/
def P2447916096124802637.Spec : Prop :=
  ∀ n, P2447916096124802637.a n = A259243 (n + 1)

end A259243

/-! ## A259243.P574773515300339260

`Δ[Δ[A019485(n+1)]]`
-/

namespace A259243.P574773515300339260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019485 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259243.P574773515300339260

namespace A259243

/-- `Δ[Δ[A019485(n+1)]]` -/
def P574773515300339260.Spec : Prop :=
  ∀ n, P574773515300339260.a n = A259243 (n + 1)

end A259243

/-! ## A259243.P12290552238719137425

`Δ[A019525(n+2)+A019525(n+3)]`
-/

namespace A259243.P12290552238719137425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019525 (n + 2) + A019525 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259243.P12290552238719137425

namespace A259243

/-- `Δ[A019525(n+2)+A019525(n+3)]` -/
def P12290552238719137425.Spec : Prop :=
  ∀ n, P12290552238719137425.a n = A259243 (n + 1)

end A259243

/-! ## A259243.P7948007909583437128

`Δ[A162740(n+2)/2]`
-/

namespace A259243.P7948007909583437128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162740 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259243.P7948007909583437128

namespace A259243

/-- `Δ[A162740(n+2)/2]` -/
def P7948007909583437128.Spec : Prop :=
  ∀ n, P7948007909583437128.a n = (A259243 (n + 1) : ℚ)

end A259243

/-!
# A259244: Number of (n+1) X (2+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0011 or 0111.

The programs for A259244, the canonical program `A259244.P17225685246370533564` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259244 has offset 1).

The definition of A259244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259244.P17225685246370533564

`3*a(n-1)+4*a(n-2)-11*a(n-3)-3*a(n-4)` with `a(0)=21, a(1)=65, a(2)=192, a(3)=581`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259244

/-- `3*a(n-1)+4*a(n-2)-11*a(n-3)-3*a(n-4)` -/
def P17225685246370533564.Spec : Prop :=
  ∀ n, P17225685246370533564.a n = A259244 (n + 1)

theorem P17225685246370533564.correct : P17225685246370533564.Spec := by
  intro n
  simp only [A259244, Nat.add_sub_cancel]

end A259244

/-! ## A259244.P15277489639564271601

`A259250(∑[n+1]+2)`
-/

namespace A259244.P15277489639564271601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A259244.P15277489639564271601

namespace A259244

/-- `A259250(∑[n+1]+2)` -/
def P15277489639564271601.Spec : Prop :=
  ∀ n, P15277489639564271601.a n = A259244 (n + 1)

end A259244

/-! ## A259244.P3898551330389460601

`record[A259250(A133263(A028242(n)))]`
-/

namespace A259244.P3898551330389460601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (A133263 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259244.P3898551330389460601

namespace A259244

/-- `record[A259250(A133263(A028242(n)))]` -/
def P3898551330389460601.Spec : Prop :=
  ∀ n, P3898551330389460601.a n = A259244 (n + 1)

end A259244

/-! ## A259244.P9511146913850667643

`A097807(n)²*A259250(A133263(n+1))`
-/

namespace A259244.P9511146913850667643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n ^ 2 * A259250 (A133263 (n + 1)).toNat

end

end A259244.P9511146913850667643

namespace A259244

/-- `A097807(n)²*A259250(A133263(n+1))` -/
def P9511146913850667643.Spec : Prop :=
  ∀ n, P9511146913850667643.a n = A259244 (n + 1)

end A259244

/-! ## A259244.P2550296724523839427

`A259250(A000096(n)+3)+A034549(n+1)`
-/

namespace A259244.P2550296724523839427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (A000096 n + 3).toNat + A034549 (n + 1)

end

end A259244.P2550296724523839427

namespace A259244

/-- `A259250(A000096(n)+3)+A034549(n+1)` -/
def P2550296724523839427.Spec : Prop :=
  ∀ n, P2550296724523839427.a n = A259244 (n + 1)

end A259244

/-!
# A259245: Number of (n+1) X (3+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0011 or 0111.

The programs for A259245, there is no canonical definition to state claims against.
-/

/-! ## A259245.P9552912183678116583

`A259250(∑[n+2]+4)`
-/

namespace A259245.P9552912183678116583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A259245.P9552912183678116583

/-! ## A259245.P8470475945714795539

`lcm(2, A259250(A167614(n+1)))`
-/

namespace A259245.P8470475945714795539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A259250 (A167614 (n + 1)).toNat)

end

end A259245.P8470475945714795539

/-! ## A259245.P14124855730766200313

`A259250(A167614(n+1))+A185284(n)`
-/

namespace A259245.P14124855730766200313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (A167614 (n + 1)).toNat + A185284 n

end

end A259245.P14124855730766200313

/-! ## A259245.P11284311876420717311

`A259250(A167614(n+1))+A034549(n+1)`
-/

namespace A259245.P11284311876420717311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (A167614 (n + 1)).toNat + A034549 (n + 1)

end

end A259245.P11284311876420717311

/-! ## A259245.P3109528527745376126

`A259250(A167614(n+1))%A259246(n+1)`
-/

namespace A259245.P3109528527745376126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259250 (A167614 (n + 1)).toNat) (A259246 (n + 1))

end

end A259245.P3109528527745376126

/-!
# A259246: Number of (n+1)X(4+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0011 or 0111.

The programs for A259246, there is no canonical definition to state claims against.
-/

/-! ## A259246.P5225255974484131136

`A259250(A141214(n)+7)`
-/

namespace A259246.P5225255974484131136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (A141214 n + 7).toNat

end

end A259246.P5225255974484131136

/-! ## A259246.P11307101822970674955

`A259250(A167614(n+2)+1)`
-/

namespace A259246.P11307101822970674955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (A167614 (n + 2) + 1).toNat

end

end A259246.P11307101822970674955

/-! ## A259246.P4883034016075654469

`A259250(A167499(n+2)-1)`
-/

namespace A259246.P4883034016075654469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (A167499 (n + 2) - 1).toNat

end

end A259246.P4883034016075654469

/-! ## A259246.P18210556267604293274

`A259250(A000217(n+3)+4)`
-/

namespace A259246.P18210556267604293274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (A000217 (n + 3) + 4).toNat

end

end A259246.P18210556267604293274

/-! ## A259246.P4909998366840799575

`A259250(A374004(n+1))`
-/

namespace A259246.P4909998366840799575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (A374004 (n + 1)).toNat

end

end A259246.P4909998366840799575

/-!
# A259247: Number of (n+1)X(5+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0011 or 0111.

The programs for A259247, there is no canonical definition to state claims against.
-/

/-! ## A259247.P14649322197823415398

`A259250(A155212(n)+13)`
-/

namespace A259247.P14649322197823415398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (A155212 n + 13).toNat

end

end A259247.P14649322197823415398

/-! ## A259247.P9761976285315115960

`A259250(A000217(n+4)+5)`
-/

namespace A259247.P9761976285315115960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (A000217 (n + 4) + 5).toNat

end

end A259247.P9761976285315115960

/-! ## A259247.P1124475809445573321

`A259250(A046691(n+2)+9)`
-/

namespace A259247.P1124475809445573321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (A046691 (n + 2) + 9).toNat

end

end A259247.P1124475809445573321

/-! ## A259247.P13298141341985422488

`A259250(A000124(n+5)-(n+1))`
-/

namespace A259247.P13298141341985422488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A259247.P13298141341985422488

/-! ## A259247.P6327864394751913844

`A259250(Δ[A026054(n+3)]-2*n)`
-/

namespace A259247.P6327864394751913844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (f1 (n + 1) - f1 n - (2 * n : ℤ)).toNat

end

end A259247.P6327864394751913844

/-!
# A259248: Number of (n+1)X(6+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0011 or 0111.

The programs for A259248, there is no canonical definition to state claims against.
-/

/-! ## A259248.P10110561308995188938

`A259250(A167499(n+4)+1)`
-/

namespace A259248.P10110561308995188938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (A167499 (n + 4) + 1).toNat

end

end A259248.P10110561308995188938

/-! ## A259248.P17343511239160854040

`A259250(A000217(n+5)+6)`
-/

namespace A259248.P17343511239160854040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (A000217 (n + 5) + 6).toNat

end

end A259248.P17343511239160854040

/-! ## A259248.P8895349765616449366

`A259250(eq[7, A131818(n+1)])`
-/

namespace A259248.P8895349765616449366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259248.P8895349765616449366

/-! ## A259248.P9743273970981537517

`A259250(A374007(n+1))`
-/

namespace A259248.P9743273970981537517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (A374007 (n + 1)).toNat

end

end A259248.P9743273970981537517

/-! ## A259248.P15732380112924761502

`A259250(A052905(n+3))`
-/

namespace A259248.P15732380112924761502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (A052905 (n + 3)).toNat

end

end A259248.P15732380112924761502

/-!
# A259249: Number of (n+1)X(7+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0011 or 0111.

The programs for A259249, there is no canonical definition to state claims against.
-/

/-! ## A259249.P11950744849974747032

`A259250(eq[8, A131818(n+1)])`
-/

namespace A259249.P11950744849974747032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259249.P11950744849974747032

/-! ## A259249.P3318851324123693155

`A259250(A374008(n+1))`
-/

namespace A259249.P3318851324123693155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (A374008 (n + 1)).toNat

end

end A259249.P3318851324123693155

/-! ## A259249.P17670751241650565570

`A259250(A055999(n+4))`
-/

namespace A259249.P17670751241650565570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (A055999 (n + 4)).toNat

end

end A259249.P17670751241650565570

/-! ## A259249.P5197396082499169088

`A259250(eq[4, A219347(n)])`
-/

namespace A259249.P5197396082499169088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259249.P5197396082499169088

/-! ## A259249.P11969561084887428780

`A259250(eq[6, A193592(n)])`
-/

namespace A259249.P11969561084887428780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259250 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259249.P11969561084887428780

/-!
# A259250: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0011 or 0111.

The programs for A259250, there is no canonical definition to state claims against.
-/

/-! ## A259250.P3302472988268421040

`A003056(A251410(n+1)-2^n)`
-/

namespace A259250.P3302472988268421040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A251410 (n + 1) - (2 ^ n : ℤ)).toNat

end

end A259250.P3302472988268421040

/-! ## A259250.P11358687718381688981

`A002024(A251410(n+1))-A000119(n)`
-/

namespace A259250.P11358687718381688981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A251410 (n + 1)).toNat - A000119 n

end

end A259250.P11358687718381688981

/-! ## A259250.P13657144637227499124

`A003056(abs(A251410(n+1)-A000079(n)))`
-/

namespace A259250.P13657144637227499124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 |A251410 (n + 1) - A000079 n|.toNat

end

end A259250.P13657144637227499124

/-!
# A259251: a(n) = 1 + sigma(n) + sigma(n)^2 + sigma(n)^3 + sigma(n)^4 + sigma(n)^5 + sigma(n)^6.

The programs for A259251, the canonical program `A259251.P9207327000512469518` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259251 has offset 1).

The definition of A259251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259251.P9207327000512469518

`A053716(A000203(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A259251

/-- `A053716(A000203(n+1))` -/
def P9207327000512469518.Spec : Prop :=
  ∀ n, P9207327000512469518.a n = A259251 (n + 1)

theorem P9207327000512469518.correct : P9207327000512469518.Spec := by
  intro n
  simp only [A259251, Nat.add_sub_cancel]

end A259251

/-! ## A259251.P18427139595249200234

`A053716(∑{d}[n+1, #])`
-/

namespace A259251.P18427139595249200234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A259251.P18427139595249200234

namespace A259251

/-- `A053716(∑{d}[n+1, #])` -/
def P18427139595249200234.Spec : Prop :=
  ∀ n, P18427139595249200234.a n = A259251 (n + 1)

end A259251

/-! ## A259251.P6229763275110445016

`A228290(∑{d}[n+1, #])+1`
-/

namespace A259251.P6229763275110445016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228290 (∑ d ∈ Nat.divisors (f1 n), d) + 1

end

end A259251.P6229763275110445016

namespace A259251

/-- `A228290(∑{d}[n+1, #])+1` -/
def P6229763275110445016.Spec : Prop :=
  ∀ n, P6229763275110445016.a n = A259251 (n + 1)

end A259251

/-! ## A259251.P5618721862013913070

`A053716(sqrt(A072861(n+1)))`
-/

namespace A259251.P5618721862013913070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A259251.P5618721862013913070

namespace A259251

/-- `A053716(sqrt(A072861(n+1)))` -/
def P5618721862013913070.Spec : Prop :=
  ∀ n, P5618721862013913070.a n = A259251 (n + 1)

end A259251

/-! ## A259251.P18160878404314012860

`A053716(A039653(n+1)+1)`
-/

namespace A259251.P18160878404314012860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (A039653 (n + 1) + 1).toNat

end

end A259251.P18160878404314012860

namespace A259251

/-- `A053716(A039653(n+1)+1)` -/
def P18160878404314012860.Spec : Prop :=
  ∀ n, P18160878404314012860.a n = A259251 (n + 1)

end A259251

/-! ## A259251.P14217660582070323345

`A053716(A088580(n+1)-1)`
-/

namespace A259251.P14217660582070323345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (A088580 (n + 1) - 1).toNat

end

end A259251.P14217660582070323345

namespace A259251

/-- `A053716(A088580(n+1)-1)` -/
def P14217660582070323345.Spec : Prop :=
  ∀ n, P14217660582070323345.a n = A259251 (n + 1)

theorem P14217660582070323345.correct : P14217660582070323345.Spec := by
  intro n
  simp only [A259251, Nat.add_sub_cancel, A259251.P14217660582070323345.a, A259251.P9207327000512469518.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A053716, A053716.P6668910890302128601.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259251

/-! ## A259251.P15166314553042612920

`A053716(A074400(n+1)/2)`
-/

namespace A259251.P15166314553042612920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A259251.P15166314553042612920

namespace A259251

/-- `A053716(A074400(n+1)/2)` -/
def P15166314553042612920.Spec : Prop :=
  ∀ n, P15166314553042612920.a n = A259251 (n + 1)

end A259251

/-! ## A259251.P4445870628525419715

`A053716(A064987(n+1)/(n+1))`
-/

namespace A259251.P4445870628525419715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A259251.P4445870628525419715

namespace A259251

/-- `A053716(A064987(n+1)/(n+1))` -/
def P4445870628525419715.Spec : Prop :=
  ∀ n, P4445870628525419715.a n = A259251 (n + 1)

end A259251

/-! ## A259251.P1969806240857887130

`A053716(A033880(n+1)+2*(n+1))`
-/

namespace A259251.P1969806240857887130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (A033880 (n + 1) + (2 * (n + 1) : ℤ)).toNat

end

end A259251.P1969806240857887130

namespace A259251

/-- `A053716(A033880(n+1)+2*(n+1))` -/
def P1969806240857887130.Spec : Prop :=
  ∀ n, P1969806240857887130.a n = A259251 (n + 1)

theorem P1969806240857887130.correct : P1969806240857887130.Spec := by
  intro n
  simp only [A259251, Nat.add_sub_cancel, A259251.P1969806240857887130.a, A259251.P9207327000512469518.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A053716, A053716.P6668910890302128601.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259251

/-! ## A259251.P15443986293482209025

`A053716(2*(n+1)-A033879(n+1))`
-/

namespace A259251.P15443986293482209025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 ((2 * (n + 1) : ℤ) - A033879 (n + 1)).toNat

end

end A259251.P15443986293482209025

namespace A259251

/-- `A053716(2*(n+1)-A033879(n+1))` -/
def P15443986293482209025.Spec : Prop :=
  ∀ n, P15443986293482209025.a n = A259251 (n + 1)

theorem P15443986293482209025.correct : P15443986293482209025.Spec := by
  intro n
  simp only [A259251, Nat.add_sub_cancel, A259251.P15443986293482209025.a, A259251.P9207327000512469518.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P11735613842914743111.a, A053716, A053716.P6668910890302128601.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259251

/-!
# A259253: Primes of the form: 1 + sigma(n) + sigma(n)^2 + sigma(n)^3 + sigma(n)^4 + sigma(n)^5 + sigma(n)^6.

The programs for A259253, there is no canonical definition to state claims against.
-/

/-! ## A259253.P18318436425265647254

`A259251(A259252(n+1))`
-/

namespace A259253.P18318436425265647254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259251 (A259252 (n + 1)).toNat

end

end A259253.P18318436425265647254

/-! ## A259253.P12445793974859505992

`A053716(∑{d}[A259252(n+1), #])`
-/

namespace A259253.P12445793974859505992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A259253.P12445793974859505992

/-! ## A259253.P10217725566510513259

`A053716(A000203(A259252(n+1)%A053716(n+1)))`
-/

namespace A259253.P10217725566510513259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (A000203 (Int.tmod (A259252 (n + 1)) (A053716 (n + 1))).toNat).toNat

end

end A259253.P10217725566510513259

/-!
# A259256: With a(1) = 1, a(n) is the smallest number not already in the sequence such that a(n) + Product_{i=1..n-1} a(i) is a square.

The programs for A259256, there is no canonical definition to state claims against.
-/

/-! ## A259256.P8232229752139267744

`A361318(A014138(n)+A005180(n+1))`
-/

namespace A259256.P8232229752139267744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361318 (A014138 n + A005180 (n + 1)).toNat

end

end A259256.P8232229752139267744

/-! ## A259256.P12673989492453348252

`A064553(or(A057855(n+1), A057864(n+1)))`
-/

namespace A259256.P12673989492453348252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (Int.lor (A057855 (n + 1)) (A057864 (n + 1))).toNat

end

end A259256.P12673989492453348252

/-! ## A259256.P1588824484411386410

`A064553(or(n*A064553(n+1), A057864(n+1)))`
-/

namespace A259256.P1588824484411386410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (Int.lor ((n : ℤ) * A064553 (n + 1)) (A057864 (n + 1))).toNat

end

end A259256.P1588824484411386410

/-!
# A259257: Primes of the form n^4 - n^3 + n^2 - n + 1.

The programs for A259257, there is no canonical definition to state claims against.
-/

/-! ## A259257.P13370296474229457264

`A060884(A246392(n+1))`
-/

namespace A259257.P13370296474229457264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 (A246392 (n + 1)).toNat

end

end A259257.P13370296474229457264

/-! ## A259257.P11664625892442319791

`A240548(A246392(n+1)%(24*n+12))`
-/

namespace A259257.P11664625892442319791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240548 (Int.tmod (A246392 (n + 1)) (24 * n + 12 : ℤ)).toNat

end

end A259257.P11664625892442319791

/-! ## A259257.P3003630347562421429

`or(A000007(n), A240548(A246392(n+1)))`
-/

namespace A259257.P3003630347562421429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A240548 (A246392 (n + 1)).toNat)

end

end A259257.P3003630347562421429

/-! ## A259257.P12168923420155356585

`A240548(or(A000038(n), A246392(n+1)))`
-/

namespace A259257.P12168923420155356585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240548 (Int.lor (A000038 n) (A246392 (n + 1))).toNat

end

end A259257.P12168923420155356585

/-! ## A259257.P11456962177659972130

`A240548(A246392(n+1))%A245427(n+1)`
-/

namespace A259257.P11456962177659972130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240548 (A246392 (n + 1)).toNat) (A245427 (n + 1))

end

end A259257.P11456962177659972130

/-! ## A259257.P17540876821155562537

`or(A240548(A246392(n+1)), A319102(n+1))`
-/

namespace A259257.P17540876821155562537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A240548 (A246392 (n + 1)).toNat) (A319102 (n + 1))

end

end A259257.P17540876821155562537

/-!
# A259261: Fixed points in A073673.

The programs for A259261, there is no canonical definition to state claims against.
-/

/-! ## A259261.P10006275194490927948

`eq[n, A073673(A028310(n))]`
-/

namespace A259261.P10006275194490927948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073673 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259261.P10006275194490927948

/-!
# A259262: Fixed points in A083275.

The programs for A259262, there is no canonical definition to state claims against.
-/

/-! ## A259262.P12824358219959716915

`eq[n, A083275(abs(1-n)+1)]`
-/

namespace A259262.P12824358219959716915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083275 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259262.P12824358219959716915

/-! ## A259262.P13604203861919516634

`eq[n+1, A083275(n+1)]+1`
-/

namespace A259262.P13604203861919516634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083275 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A259262.P13604203861919516634

/-!
# A259263: Numbers of the form (m*k)^2/(m^2-k^2) for distinct integers m and k.

The programs for A259263, there is no canonical definition to state claims against.
-/

/-! ## A259263.P17507408855698767536

`∩[A247624(n+1), A287927(n+1)]`
-/

namespace A259263.P17507408855698767536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259263.P17507408855698767536

/-!
# A259264: Cyclotomic polynomial value Phi(5,n!).

The programs for A259264, the canonical program `A259264.P5732594436571755968` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259264 has offset 0).

The definition of A259264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259264.P5732594436571755968

`A053699(n!)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A259264

/-- `A053699(n!)` -/
def P5732594436571755968.Spec : Prop :=
  ∀ n, P5732594436571755968.a n = A259264 n

theorem P5732594436571755968.correct : P5732594436571755968.Spec := by
  intro n
  simp only [A259264]

end A259264

/-! ## A259264.P4901784481451073458

`A027445(n!)+1`
-/

namespace A259264.P4901784481451073458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 (Nat.factorial n) + 1

end

end A259264.P4901784481451073458

namespace A259264

/-- `A027445(n!)+1` -/
def P4901784481451073458.Spec : Prop :=
  ∀ n, P4901784481451073458.a n = A259264 n

theorem P4901784481451073458.correct : P4901784481451073458.Spec := by
  intro n
  simp only [A259264, Nat.add_sub_cancel, A259264.P4901784481451073458.a, A259264.P5732594436571755968.a, A027445, A027445.P2062535294747488403.a, A053699, A053699.P12401549741545410249.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259264

/-! ## A259264.P7197300200751652124

`A152031(n!)/n!`
-/

namespace A259264.P7197300200751652124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152031 (Nat.factorial n) : ℚ) / (Nat.factorial n : ℚ)

end

end A259264.P7197300200751652124

namespace A259264

/-- `A152031(n!)/n!` -/
def P7197300200751652124.Spec : Prop :=
  ∀ n, P7197300200751652124.a n = (A259264 n : ℚ)

end A259264

/-! ## A259264.P13517605537989276551

`or(1, A027445(∑{digits}[n, #!]))`
-/

namespace A259264.P13517605537989276551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A027445 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).sum)

end

end A259264.P13517605537989276551

namespace A259264

/-- `or(1, A027445(∑{digits}[n, #!]))` -/
def P13517605537989276551.Spec : Prop :=
  ∀ n, P13517605537989276551.a n = A259264 n

end A259264

/-!
# A259265: Primes of the form Phi(5,n!), where Phi is the cyclotomic polynomial.

The programs for A259265, there is no canonical definition to state claims against.
-/

/-! ## A259265.P11350160808291144871

`A259264(A200906(n+1))`
-/

namespace A259265.P11350160808291144871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259264 (A200906 (n + 1)).toNat

end

end A259265.P11350160808291144871

/-!
# A259266: a(n) is the unique odd-valued residue modulo 5^n of a number m such that m^2+1 is divisible by 5^n.

The programs for A259266, there is no canonical definition to state claims against.
-/

/-! ## A259266.P8510614041693357188

`A000351(n+1)-A258929(n+1)`
-/

namespace A259266.P8510614041693357188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (n + 1) - A258929 (n + 1)

end

end A259266.P8510614041693357188

/-!
# A259267: E.g.f. A(x) satisfies: A'(x) = exp(2*A(A(x))).

The programs for A259267, there is no canonical definition to state claims against.
-/

/-! ## A259267.P10188515092088568951

`2^n*A214645(n+1)`
-/

namespace A259267.P10188515092088568951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A214645 (n + 1)

end

end A259267.P10188515092088568951

/-!
# A259268: G.f. satisfies: A(x) = Series_Reversion( x - 3*A(x)*B(x)^2 ), where B'(x) = 2*A(x).

The programs for A259268, there is no canonical definition to state claims against.
-/

/-! ## A259268.P14283080002821157103

`(2*n+1)*A259269(n+1)`
-/

namespace A259268.P14283080002821157103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A259269 (n + 1)

end

end A259268.P14283080002821157103

/-! ## A259268.P14441994201344651621

`A259269(n+1)/2*A016825(n)`
-/

namespace A259268.P14441994201344651621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259269 (n + 1) : ℚ) / 2 * (A016825 n : ℚ)

end

end A259268.P14441994201344651621

/-!
# A259269: G.f. A(x) satisfies: A'(x)/2 = Series_Reversion( x - 3*A(x)^2 * A'(x)/2 ).

The programs for A259269, there is no canonical definition to state claims against.
-/

/-! ## A259269.P16909727546235121862

`A259268(n+1)/(2*(n+1)-1)`
-/

namespace A259269.P16909727546235121862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259268 (n + 1) : ℚ) / ((2 * (n + 1) : ℤ) - 1 : ℚ)

end

end A259269.P16909727546235121862

/-! ## A259269.P5297223344428002427

`floor(A259268(n+1)/A005408(n))`
-/

namespace A259269.P5297223344428002427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A259268 (n + 1) : ℚ) / (A005408 n : ℚ)⌋

end

end A259269.P5297223344428002427

/-! ## A259269.P15248335771227101613

`A185255(n)+A259268(n+1)/A005408(n)`
-/

namespace A259269.P15248335771227101613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185255 n : ℚ) + (A259268 (n + 1) : ℚ) / (A005408 n : ℚ)

end

end A259269.P15248335771227101613

/-! ## A259269.P7962384029548559400

`(A259268(n+1)/A005408(n))^A000038(n)!`
-/

namespace A259269.P7962384029548559400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A259268 (n + 1) : ℚ) / (A005408 n : ℚ)) ^ Nat.factorial (A000038 n).toNat

end

end A259269.P7962384029548559400

/-! ## A259269.P5573090465520360560

`(A259268(n+1)/A005408(n))%A197600(n+1)`
-/

namespace A259269.P5573090465520360560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A259268 (n + 1) : ℚ) / (A005408 n : ℚ))) (A197600 (n + 1))

end

end A259269.P5573090465520360560

/-!
# A259270: G.f. satisfies: A(x) = Series_Reversion( x - 2*A(x)*B(x) ), where B'(x) = 2*A(x).

The programs for A259270, there is no canonical definition to state claims against.
-/

/-! ## A259270.P12217452121030639656

`(n+1)*A259271(n+1)`
-/

namespace A259270.P12217452121030639656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A259271 (n + 1)

end

end A259270.P12217452121030639656

/-!
# A259271: G.f. A(x) satisfies: A'(x) = 2 * Series_Reversion( x - A(x)*A'(x) ).

The programs for A259271, there is no canonical definition to state claims against.
-/

/-! ## A259271.P14520498597846063779

`A259270(n+1)/(n+1)`
-/

namespace A259271.P14520498597846063779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259270 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A259271.P14520498597846063779

/-!
# A259273: G.f.: A(x) = exp( Sum_{n>=1} 3^n * x^n/(n*(1+x^n)) ).

The programs for A259273, there is no canonical definition to state claims against.
-/

/-! ## A259273.P4591058445002058763

`A370216(n)+A032741(A110154(n))`
-/

namespace A259273.P4591058445002058763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370216 n + A032741 (A110154 n).toNat

end

end A259273.P4591058445002058763

/-! ## A259273.P8728488598974645828

`A342765(A342957(n)²)`
-/

namespace A259273.P8728488598974645828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342765 (A342957 n ^ 2).toNat

end

end A259273.P8728488598974645828

/-!
# A259274: G.f.: A(x) = exp( Sum_{n>=1} 4^n * x^n/(n*(1+x^n)) ).

The programs for A259274, there is no canonical definition to state claims against.
-/

/-! ## A259274.P9385524843924149048

`record[A199571(n)]-A282587(n+1)`
-/

namespace A259274.P9385524843924149048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A282587 (n + 1)

end

end A259274.P9385524843924149048

/-! ## A259274.P10454086389828544525

`A376484(n)+A371701(A000079(n))`
-/

namespace A259274.P10454086389828544525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376484 n + A371701 (A000079 n).toNat

end

end A259274.P10454086389828544525

/-!
# A259275: G.f.: A(x) = exp( Sum_{n>=1} 5^n * x^n/(n*(1+x^n)) ).

The programs for A259275, there is no canonical definition to state claims against.
-/

/-! ## A259275.P4886277994097380207

`A225901(or(A127083(n), A300696(n)))`
-/

namespace A259275.P4886277994097380207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (Int.lor (A127083 n) (A300696 n)).toNat

end

end A259275.P4886277994097380207

/-! ## A259275.P7609977025114998470

`A225901(or(A300696(n), A300721(n+1)))`
-/

namespace A259275.P7609977025114998470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (Int.lor (A300696 n) (A300721 (n + 1))).toNat

end

end A259275.P7609977025114998470

/-!
# A259276: G.f.: A(x) = exp( Sum_{n>=1} 6^n * x^n/(n*(1+x^n)) ).

The programs for A259276, there is no canonical definition to state claims against.
-/

/-! ## A259276.P10954031158861308987

`∏{p}[A109501(∏{p}[n+1, lcm(#, n+1)]), #]`
-/

namespace A259276.P10954031158861308987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109501 (∏ p ∈ Nat.primeFactors (f2 n), Nat.lcm p (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A259276.P10954031158861308987

/-!
# A259277: Least m such that HomePrime(m) = prime(n).

The programs for A259277, there is no canonical definition to state claims against.
-/

/-! ## A259277.P14903768822543357594

`A288519(A000040(n+1)%A010354(2*(n+2)))`
-/

namespace A259277.P14903768822543357594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288519 (Int.tmod (A000040 (n + 1)) (A010354 (2 * (n + 2)))).toNat

end

end A259277.P14903768822543357594

/-! ## A259277.P16763950067793873970

`A288519(A000040(n+1))%A194218(2*(n+1))`
-/

namespace A259277.P16763950067793873970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288519 (A000040 (n + 1)).toNat) (A194218 (2 * (n + 1)))

end

end A259277.P16763950067793873970

/-! ## A259277.P17132743712638449615

`A288519(A000040(n+1))%A057171(n+1)`
-/

namespace A259277.P17132743712638449615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288519 (A000040 (n + 1)).toNat) (A057171 (n + 1))

end

end A259277.P17132743712638449615

/-! ## A259277.P2633031948069965853

`A000040(n+1)%A003124(A003440(n))`
-/

namespace A259277.P2633031948069965853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A003124 (A003440 n).toNat)

end

end A259277.P2633031948069965853

/-! ## A259277.P4273893374952195039

`A038618(n+1)%A103812(A003418(n))`
-/

namespace A259277.P4273893374952195039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038618 (n + 1)) (A103812 (A003418 n).toNat)

end

end A259277.P4273893374952195039

/-!
# A259278: Number of compositions of n into parts 1, 6, and 7.

The programs for A259278, the canonical program `A259278.P12312832323965762312` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259278 has offset 0).

The definition of A259278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259278.P12312832323965762312

`a(n-1)+a(n-6)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259278

/-- `a(n-1)+a(n-6)+a(n-7)` -/
def P12312832323965762312.Spec : Prop :=
  ∀ n, (P12312832323965762312.a n : ℤ) = A259278 n

theorem P12312832323965762312.correct : P12312832323965762312.Spec := by
  intro n
  simp only [A259278]

end A259278

/-!
# A259279: a(n) = Sum_{k=0..n} k^2 * A000041(k).

The programs for A259279, there is no canonical definition to state claims against.
-/

/-! ## A259279.P1016667827140743097

`∑[n*A066186(n)]`
-/

namespace A259279.P1016667827140743097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A066186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259279.P1016667827140743097

/-! ## A259279.P7727641404333055305

`∑[n²*A000041(n)]`
-/

namespace A259279.P7727641404333055305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259279.P7727641404333055305

/-! ## A259279.P2128298782767186093

`∑[n*A220909(n)/2]`
-/

namespace A259279.P2128298782767186093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A220909 n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259279.P2128298782767186093

/-! ## A259279.P13195979246156320565

`∑[n²*∑[A002865(n)]]`
-/

namespace A259279.P13195979246156320565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259279.P13195979246156320565

/-! ## A259279.P14154426622653827608

`∑[(A000065(n)+1)*n²]`
-/

namespace A259279.P14154426622653827608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000065 n + 1) * (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259279.P14154426622653827608

/-! ## A259279.P14441941489621920251

`∑[n²*∑[A085811(n+3)]]`
-/

namespace A259279.P14441941489621920251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259279.P14441941489621920251

/-! ## A259279.P13970415175207813141

`∑[A000041(n)*A000290(n)]`
-/

namespace A259279.P13970415175207813141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259279.P13970415175207813141

/-! ## A259279.P8037700479097771993

`∑[n*n*(A295341(n)+A000726(n))]`
-/

namespace A259279.P8037700479097771993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * (A295341 n + A000726 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259279.P8037700479097771993

/-! ## A259279.P4279856314179073302

`∑[A066186(n)²/A000041(n)]`
-/

namespace A259279.P4279856314179073302
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066186 n ^ 2 : ℚ) / (A000041 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259279.P4279856314179073302

/-! ## A259279.P14318808527109660639

`∑[n*A182700(∑[n])]`
-/

namespace A259279.P14318808527109660639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A182700 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259279.P14318808527109660639

/-!
# A259280: a(n) is the minimal sum of a positive integer sequence of length n with no duplicate substrings of length greater than 1.

The programs for A259280, the canonical program `A259280.P5990415043731895464` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259280 has offset 1).

The definition of A259280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259280.P5662754362531995566

`ceil((∑[round(sqrt(2*n))+1]+1)/2)`
-/

namespace A259280.P5662754362531995566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2⌉

end

end A259280.P5662754362531995566

namespace A259280

/-- `ceil((∑[round(sqrt(2*n))+1]+1)/2)` -/
def P5662754362531995566.Spec : Prop :=
  ∀ n, P5662754362531995566.a n = A259280 (n + 1)

end A259280

/-! ## A259280.P1786006091603460740

`A274701(n)+a(n-1)` with `a(0)=1`
-/

namespace A259280.P1786006091603460740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A274701 n + a (n - 1)

end

end A259280.P1786006091603460740

namespace A259280

/-- `A274701(n)+a(n-1)` -/
def P1786006091603460740.Spec : Prop :=
  ∀ n, P1786006091603460740.a n = A259280 (n + 1)

end A259280

/-! ## A259280.P5990415043731895464

`round((A075349(n+1)+n+1)/2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A259280

/-- `round((A075349(n+1)+n+1)/2)` -/
def P5990415043731895464.Spec : Prop :=
  ∀ n, P5990415043731895464.a n = A259280 (n + 1)

theorem P5990415043731895464.correct : P5990415043731895464.Spec := by
  intro n
  simp only [A259280, Nat.add_sub_cancel]

end A259280

/-! ## A259280.P6258210164636544347

`∑[A274701(n+1)]+1-A274701(n+1)`
-/

namespace A259280.P6258210164636544347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A274701 (n + 1))

end

end A259280.P6258210164636544347

namespace A259280

/-- `∑[A274701(n+1)]+1-A274701(n+1)` -/
def P6258210164636544347.Spec : Prop :=
  ∀ n, P6258210164636544347.a n = A259280 (n + 1)

end A259280

/-! ## A259280.P5120560639171731807

`A008619(∑[round(sqrt(2*n))+1])`
-/

namespace A259280.P5120560639171731807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A259280.P5120560639171731807

namespace A259280

/-- `A008619(∑[round(sqrt(2*n))+1])` -/
def P5120560639171731807.Spec : Prop :=
  ∀ n, P5120560639171731807.a n = A259280 (n + 1)

end A259280

/-!
# A259282: Quasi-Carmichael numbers to at least one negative base.

The programs for A259282, there is no canonical definition to state claims against.
-/

/-! ## A259282.P9068466525003282108

`∩[A132067(n+1), A160497(n+1)]`
-/

namespace A259282.P9068466525003282108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259282.P9068466525003282108

/-! ## A259282.P1827359793224199209

`∩[A160497(n+1), A257750(n+1)]`
-/

namespace A259282.P1827359793224199209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259282.P1827359793224199209

/-! ## A259282.P10477206312113483964

`∩[A160497(n+1), A327782(n+1)]`
-/

namespace A259282.P10477206312113483964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259282.P10477206312113483964

/-! ## A259282.P5509783863394280753

`∩[A089025(n+1), A257750(n+1)]`
-/

namespace A259282.P5509783863394280753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259282.P5509783863394280753

/-! ## A259282.P12838640964423620310

`∩[A121707(n+1), A176039(n+1)]`
-/

namespace A259282.P12838640964423620310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259282.P12838640964423620310

/-!
# A259283: Quasi-Carmichael numbers to at least one positive base.

The programs for A259283, there is no canonical definition to state claims against.
-/

/-! ## A259283.P14453518034567592634

`filter[A257750(n+1), A377988(#)]`
-/

namespace A259283.P14453518034567592634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377988 (f1 j).toNat = 1) n)

end

end A259283.P14453518034567592634

/-!
# A259285: Expansion of psi(x^2) * f(x, x^7) in powers of x where psi(), f(,) are Ramanujan theta functions.

The programs for A259285, the canonical program `A259285.P7376159365787076354` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259285 has offset 0).

The definition of A259285 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025426, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A259285.P7376159365787076354

`A025426(16*n+13)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A259285

/-- `A025426(16*n+13)` -/
def P7376159365787076354.Spec : Prop :=
  ∀ n, P7376159365787076354.a n = A259285 n

theorem P7376159365787076354.correct : P7376159365787076354.Spec := by
  intro n
  simp only [A259285]

end A259285

/-! ## A259285.P17468767170305786804

`A000161(16*n+13)`
-/

namespace A259285.P17468767170305786804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (16 * n + 13)

end

end A259285.P17468767170305786804

namespace A259285

/-- `A000161(16*n+13)` -/
def P17468767170305786804.Spec : Prop :=
  ∀ n, P17468767170305786804.a n = A259285 n

end A259285

/-! ## A259285.P4065181915790218022

`A025435(16*n+13)`
-/

namespace A259285.P4065181915790218022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (16 * n + 13)

end

end A259285.P4065181915790218022

namespace A259285

/-- `A025435(16*n+13)` -/
def P4065181915790218022.Spec : Prop :=
  ∀ n, P4065181915790218022.a n = A259285 n

end A259285

/-! ## A259285.P10113515906423516052

`A025441(16*n+13)`
-/

namespace A259285.P10113515906423516052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (16 * n + 13)

end

end A259285.P10113515906423516052

namespace A259285

/-- `A025441(16*n+13)` -/
def P10113515906423516052.Spec : Prop :=
  ∀ n, P10113515906423516052.a n = A259285 n

end A259285

/-! ## A259285.P12680914205888606090

`A053692(Δ[n²])`
-/

namespace A259285.P12680914205888606090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053692 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A259285.P12680914205888606090

namespace A259285

/-- `A053692(Δ[n²])` -/
def P12680914205888606090.Spec : Prop :=
  ∀ n, P12680914205888606090.a n = A259285 n

end A259285

/-! ## A259285.P14885930655246060843

`abs(A226194(2*n+1))`
-/

namespace A259285.P14885930655246060843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A226194 (2 * n + 1)|

end

end A259285.P14885930655246060843

namespace A259285

/-- `abs(A226194(2*n+1))` -/
def P14885930655246060843.Spec : Prop :=
  ∀ n, P14885930655246060843.a n = A259285 n

end A259285

/-! ## A259285.P13236077471052264009

`dr(A053692(2*n+1))`
-/

namespace A259285.P13236077471052264009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A053692 (2 * n + 1))

end

end A259285.P13236077471052264009

namespace A259285

/-- `dr(A053692(2*n+1))` -/
def P13236077471052264009.Spec : Prop :=
  ∀ n, (P13236077471052264009.a n : ℤ) = A259285 n

end A259285

/-! ## A259285.P13855895593354496636

`A053692(A005408(n))%9`
-/

namespace A259285.P13855895593354496636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053692 (A005408 n).toNat) 9

end

end A259285.P13855895593354496636

namespace A259285

/-- `A053692(A005408(n))%9` -/
def P13855895593354496636.Spec : Prop :=
  ∀ n, P13855895593354496636.a n = A259285 n

end A259285

/-! ## A259285.P21371686720924076

`gcd(A000038(n), A226194(2*n+1))`
-/

namespace A259285.P21371686720924076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A226194 (2 * n + 1))

end

end A259285.P21371686720924076

namespace A259285

/-- `gcd(A000038(n), A226194(2*n+1))` -/
def P21371686720924076.Spec : Prop :=
  ∀ n, (P21371686720924076.a n : ℤ) = A259285 n

end A259285

/-! ## A259285.P4225997741776668392

`lcm(A020985(n), A226194(2*n+1))`
-/

namespace A259285.P4225997741776668392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A226194 (2 * n + 1))

end

end A259285.P4225997741776668392

namespace A259285

/-- `lcm(A020985(n), A226194(2*n+1))` -/
def P4225997741776668392.Spec : Prop :=
  ∀ n, (P4225997741776668392.a n : ℤ) = A259285 n

end A259285

/-! ## A259285.P1456521083384257452

`A000007(n+1)-A226194(2*n+1)`
-/

namespace A259285.P1456521083384257452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A226194 (2 * n + 1)

end

end A259285.P1456521083384257452

namespace A259285

/-- `A000007(n+1)-A226194(2*n+1)` -/
def P1456521083384257452.Spec : Prop :=
  ∀ n, P1456521083384257452.a n = A259285 n

end A259285

/-! ## A259285.P3427308815154330657

`A000038(n+1)-A226194(2*n+1)`
-/

namespace A259285.P3427308815154330657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A226194 (2 * n + 1)

end

end A259285.P3427308815154330657

namespace A259285

/-- `A000038(n+1)-A226194(2*n+1)` -/
def P3427308815154330657.Spec : Prop :=
  ∀ n, P3427308815154330657.a n = A259285 n

end A259285

/-! ## A259285.P17072741002957312504

`1-(A226194(2*n+1)+A033999(2*n))`
-/

namespace A259285.P17072741002957312504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A226194 (2 * n + 1) + A033999 (2 * n))

end

end A259285.P17072741002957312504

namespace A259285

/-- `1-(A226194(2*n+1)+A033999(2*n))` -/
def P17072741002957312504.Spec : Prop :=
  ∀ n, P17072741002957312504.a n = A259285 n

end A259285

/-! ## A259285.P12224397873457118209

`A033999(2*n+1)*A226194(2*n+1)`
-/

namespace A259285.P12224397873457118209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A226194 (2 * n + 1)

end

end A259285.P12224397873457118209

namespace A259285

/-- `A033999(2*n+1)*A226194(2*n+1)` -/
def P12224397873457118209.Spec : Prop :=
  ∀ n, P12224397873457118209.a n = A259285 n

end A259285

/-! ## A259285.P12321190778783344899

`A020985(2*n)-(A226194(2*n+1)+A020985(4*n))`
-/

namespace A259285.P12321190778783344899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n) - (A226194 (2 * n + 1) + A020985 (4 * n))

end

end A259285.P12321190778783344899

namespace A259285

/-- `A020985(2*n)-(A226194(2*n+1)+A020985(4*n))` -/
def P12321190778783344899.Spec : Prop :=
  ∀ n, P12321190778783344899.a n = A259285 n

end A259285

/-! ## A259285.P14367320000210696797

`A052343(4*n+3)`
-/

namespace A259285.P14367320000210696797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (4 * n + 3)

end

end A259285.P14367320000210696797

namespace A259285

/-- `A052343(4*n+3)` -/
def P14367320000210696797.Spec : Prop :=
  ∀ n, P14367320000210696797.a n = A259285 n

end A259285

/-! ## A259285.P2039311428321422789

`A008441(A016825(n)+1)/2`
-/

namespace A259285.P2039311428321422789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008441 (A016825 n + 1).toNat : ℚ) / 2

end

end A259285.P2039311428321422789

namespace A259285

/-- `A008441(A016825(n)+1)/2` -/
def P2039311428321422789.Spec : Prop :=
  ∀ n, P2039311428321422789.a n = (A259285 n : ℚ)

end A259285

/-! ## A259285.P5596892547373105

`A008441(A016813(n)+2)/2`
-/

namespace A259285.P5596892547373105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008441 (A016813 n + 2).toNat : ℚ) / 2

end

end A259285.P5596892547373105

namespace A259285

/-- `A008441(A016813(n)+2)/2` -/
def P5596892547373105.Spec : Prop :=
  ∀ n, P5596892547373105.a n = (A259285 n : ℚ)

end A259285

/-! ## A259285.P650345640657640963

`A259287(A017245(n))`
-/

namespace A259285.P650345640657640963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259287 (A017245 n).toNat

end

end A259285.P650345640657640963

namespace A259285

/-- `A259287(A017245(n))` -/
def P650345640657640963.Spec : Prop :=
  ∀ n, P650345640657640963.a n = A259285 n

end A259285

/-! ## A259285.P2391261285994119279

`A015269(2*n+1)-A226194(2*n+1)`
-/

namespace A259285.P2391261285994119279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015269 (2 * n + 1) - A226194 (2 * n + 1)

end

end A259285.P2391261285994119279

namespace A259285

/-- `A015269(2*n+1)-A226194(2*n+1)` -/
def P2391261285994119279.Spec : Prop :=
  ∀ n, P2391261285994119279.a n = A259285 n

end A259285

/-!
# A259287: Expansion of psi(x^2) * f(x^3, x^5) in powers of x where psi(), f(, ) are Ramanujan theta functions.

The programs for A259287, the canonical program `A259287.P2593529225509960214` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259287 has offset 0).

The definition of A259287 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025426, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A259287.P2593529225509960214

`A025426(16*n+5)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A259287

/-- `A025426(16*n+5)` -/
def P2593529225509960214.Spec : Prop :=
  ∀ n, P2593529225509960214.a n = A259287 n

theorem P2593529225509960214.correct : P2593529225509960214.Spec := by
  intro n
  simp only [A259287]

end A259287

/-! ## A259287.P17477092414927650825

`A000161(16*n+5)`
-/

namespace A259287.P17477092414927650825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (16 * n + 5)

end

end A259287.P17477092414927650825

namespace A259287

/-- `A000161(16*n+5)` -/
def P17477092414927650825.Spec : Prop :=
  ∀ n, P17477092414927650825.a n = A259287 n

end A259287

/-! ## A259287.P8196244018885424184

`A025435(16*n+5)`
-/

namespace A259287.P8196244018885424184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (16 * n + 5)

end

end A259287.P8196244018885424184

namespace A259287

/-- `A025435(16*n+5)` -/
def P8196244018885424184.Spec : Prop :=
  ∀ n, P8196244018885424184.a n = A259287 n

end A259287

/-! ## A259287.P16709550846308152608

`A025441(16*n+5)`
-/

namespace A259287.P16709550846308152608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (16 * n + 5)

end

end A259287.P16709550846308152608

namespace A259287

/-- `A025441(16*n+5)` -/
def P16709550846308152608.Spec : Prop :=
  ∀ n, P16709550846308152608.a n = A259287 n

end A259287

/-! ## A259287.P5598595889995900864

`A053692(2*n)`
-/

namespace A259287.P5598595889995900864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053692 (2 * n)

end

end A259287.P5598595889995900864

namespace A259287

/-- `A053692(2*n)` -/
def P5598595889995900864.Spec : Prop :=
  ∀ n, P5598595889995900864.a n = A259287 n

end A259287

/-! ## A259287.P16344600122340465188

`A053692(A005843(n))+A000007(n+2)`
-/

namespace A259287.P16344600122340465188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053692 (A005843 n).toNat + A000007 (n + 2)

end

end A259287.P16344600122340465188

namespace A259287

/-- `A053692(A005843(n))+A000007(n+2)` -/
def P16344600122340465188.Spec : Prop :=
  ∀ n, P16344600122340465188.a n = A259287 n

end A259287

/-! ## A259287.P6459592840872285648

`A226194(2*n)`
-/

namespace A259287.P6459592840872285648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226194 (2 * n)

end

end A259287.P6459592840872285648

namespace A259287

/-- `A226194(2*n)` -/
def P6459592840872285648.Spec : Prop :=
  ∀ n, P6459592840872285648.a n = A259287 n

end A259287

/-! ## A259287.P16349139438905139187

`A052343(4*n+1)`
-/

namespace A259287.P16349139438905139187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (4 * n + 1)

end

end A259287.P16349139438905139187

namespace A259287

/-- `A052343(4*n+1)` -/
def P16349139438905139187.Spec : Prop :=
  ∀ n, P16349139438905139187.a n = A259287 n

end A259287

/-! ## A259287.P12565679414459655446

`A008441(A016813(n))/2`
-/

namespace A259287.P12565679414459655446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008441 (A016813 n).toNat : ℚ) / 2

end

end A259287.P12565679414459655446

namespace A259287

/-- `A008441(A016813(n))/2` -/
def P12565679414459655446.Spec : Prop :=
  ∀ n, P12565679414459655446.a n = (A259287 n : ℚ)

end A259287

/-! ## A259287.P1435460728040271919

`A008441(A008586(n)+1)/2`
-/

namespace A259287.P1435460728040271919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008441 (A008586 n + 1).toNat : ℚ) / 2

end

end A259287.P1435460728040271919

namespace A259287

/-- `A008441(A008586(n)+1)/2` -/
def P1435460728040271919.Spec : Prop :=
  ∀ n, P1435460728040271919.a n = (A259287 n : ℚ)

end A259287

/-! ## A259287.P4628622168875212910

`A008441(A016825(n)-1)/2`
-/

namespace A259287.P4628622168875212910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008441 (A016825 n - 1).toNat : ℚ) / 2

end

end A259287.P4628622168875212910

namespace A259287

/-- `A008441(A016825(n)-1)/2` -/
def P4628622168875212910.Spec : Prop :=
  ∀ n, P4628622168875212910.a n = (A259287 n : ℚ)

end A259287

/-! ## A259287.P7505600021793115374

`A008441(A016861(n)-n)/2`
-/

namespace A259287.P7505600021793115374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008441 (A016861 n - (n : ℤ)).toNat : ℚ) / 2

end

end A259287.P7505600021793115374

namespace A259287

/-- `A008441(A016861(n)-n)/2` -/
def P7505600021793115374.Spec : Prop :=
  ∀ n, P7505600021793115374.a n = (A259287 n : ℚ)

end A259287

/-! ## A259287.P17344598342413038312

`A259285(A017185(n))`
-/

namespace A259287.P17344598342413038312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259285 (A017185 n).toNat

end

end A259287.P17344598342413038312

namespace A259287

/-- `A259285(A017185(n))` -/
def P17344598342413038312.Spec : Prop :=
  ∀ n, P17344598342413038312.a n = A259287 n

end A259287

/-!
# A259288: Odd numbers of the form (m*k)^2/(m^2-k^2) for distinct integers m and k.

The programs for A259288, there is no canonical definition to state claims against.
-/

/-! ## A259288.P15141044403403603531

`filter[A259263(n+1), A000035(#)]`
-/

namespace A259288.P15141044403403603531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A259288.P15141044403403603531

/-!
# A259289: Number of (n+1)X(n+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0001 0101 or 0111.

The programs for A259289, there is no canonical definition to state claims against.
-/

/-! ## A259289.P2216834849132811045

`2*A183773(n+1)`
-/

namespace A259289.P2216834849132811045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183773 (n + 1)

end

end A259289.P2216834849132811045

/-! ## A259289.P18104027356001021580

`A259297(∑[4*n]+1)`
-/

namespace A259289.P18104027356001021580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259297 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259289.P18104027356001021580

/-! ## A259289.P15260924770588489678

`2*A183782(A001844(n))`
-/

namespace A259289.P15260924770588489678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183782 (A001844 n).toNat

end

end A259289.P15260924770588489678

/-! ## A259289.P3056172091404968382

`record[A003982(n)*A259297(n+1)]`
-/

namespace A259289.P3056172091404968382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A259297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259289.P3056172091404968382

/-! ## A259289.P5183821590826539907

`record[gcd(A008482(n), A259297(n+1))]`
-/

namespace A259289.P5183821590826539907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A259297 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259289.P5183821590826539907

/-!
# A259290: Number of (n+1) X (1+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0001 0101 or 0111.

The programs for A259290, the canonical program `A259290.P13449320422031342313` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259290 has offset 1).

The definition of A259290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259290.P10516609404255602682

`ogf((10+16x)/(1-x-4x^2))`
-/

namespace A259290.P10516609404255602682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 16] [1, -1, -4] n

end

end A259290.P10516609404255602682

namespace A259290

/-- `ogf((10+16x)/(1-x-4x^2))` -/
def P10516609404255602682.Spec : Prop :=
  ∀ n, P10516609404255602682.a n = A259290 (n + 1)

end A259290

/-! ## A259290.P13449320422031342313

`a(n-1)+4*a(n-2)` with `a(0)=10, a(1)=26`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259290

/-- `a(n-1)+4*a(n-2)` -/
def P13449320422031342313.Spec : Prop :=
  ∀ n, (P13449320422031342313.a n : ℤ) = A259290 (n + 1)

theorem P13449320422031342313.correct : P13449320422031342313.Spec := by
  intro n
  simp only [A259290, Nat.add_sub_cancel]

end A259290

/-! ## A259290.P1061590475417410918

`A277236(n+2)`
-/

namespace A259290.P1061590475417410918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277236 (n + 2)

end

end A259290.P1061590475417410918

namespace A259290

/-- `A277236(n+2)` -/
def P1061590475417410918.Spec : Prop :=
  ∀ n, P1061590475417410918.a n = A259290 (n + 1)

end A259290

/-! ## A259290.P7532983857212087459

`2*A183774(n+1)`
-/

namespace A259290.P7532983857212087459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183774 (n + 1)

end

end A259290.P7532983857212087459

namespace A259290

/-- `2*A183774(n+1)` -/
def P7532983857212087459.Spec : Prop :=
  ∀ n, P7532983857212087459.a n = A259290 (n + 1)

end A259290

/-! ## A259290.P11627433024987343486

`record[A277236(abs(2-n))]`
-/

namespace A259290.P11627433024987343486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277236 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259290.P11627433024987343486

namespace A259290

/-- `record[A277236(abs(2-n))]` -/
def P11627433024987343486.Spec : Prop :=
  ∀ n, P11627433024987343486.a n = A259290 (n + 1)

end A259290

/-! ## A259290.P12458290528691884185

`A026583(n+2)-A026583(n)`
-/

namespace A259290.P12458290528691884185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026583 (n + 2) - A026583 n

end

end A259290.P12458290528691884185

namespace A259290

/-- `A026583(n+2)-A026583(n)` -/
def P12458290528691884185.Spec : Prop :=
  ∀ n, P12458290528691884185.a n = A259290 (n + 1)

end A259290

/-! ## A259290.P8353356941511894146

`A159612(n+3)+A102446(n)`
-/

namespace A259290.P8353356941511894146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159612 (n + 3) + A102446 n

end

end A259290.P8353356941511894146

namespace A259290

/-- `A159612(n+3)+A102446(n)` -/
def P8353356941511894146.Spec : Prop :=
  ∀ n, P8353356941511894146.a n = A259290 (n + 1)

end A259290

/-! ## A259290.P12330791804250778517

`A026581(n+1)+A026581(n+2)`
-/

namespace A259290.P12330791804250778517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026581 (n + 1) + A026581 (n + 2)

end

end A259290.P12330791804250778517

namespace A259290

/-- `A026581(n+1)+A026581(n+2)` -/
def P12330791804250778517.Spec : Prop :=
  ∀ n, P12330791804250778517.a n = A259290 (n + 1)

end A259290

/-! ## A259290.P14615878651854205811

`2*(A006131(n+2)+Δ[A006131(n)])`
-/

namespace A259290.P14615878651854205811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006131 (n + 2) + (f1 (n + 1) - f1 n))

end

end A259290.P14615878651854205811

namespace A259290

/-- `2*(A006131(n+2)+Δ[A006131(n)])` -/
def P14615878651854205811.Spec : Prop :=
  ∀ n, P14615878651854205811.a n = A259290 (n + 1)

end A259290

/-! ## A259290.P6374851710064024322

`abs(A122112(n+1)-Δ[A122112(n+1)])`
-/

namespace A259290.P6374851710064024322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122112 (n + 1) - (f1 (n + 1) - f1 n)|

end

end A259290.P6374851710064024322

namespace A259290

/-- `abs(A122112(n+1)-Δ[A122112(n+1)])` -/
def P6374851710064024322.Spec : Prop :=
  ∀ n, P6374851710064024322.a n = A259290 (n + 1)

end A259290

/-! ## A259290.P5966179302074252024

`A205220(n+1)/2`
-/

namespace A259290.P5966179302074252024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205220 (n + 1) : ℚ) / 2

end

end A259290.P5966179302074252024

namespace A259290

/-- `A205220(n+1)/2` -/
def P5966179302074252024.Spec : Prop :=
  ∀ n, P5966179302074252024.a n = (A259290 (n + 1) : ℚ)

end A259290

/-! ## A259290.P3603526353728517378

`A205219(n+2)/2`
-/

namespace A259290.P3603526353728517378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205219 (n + 2) : ℚ) / 2

end

end A259290.P3603526353728517378

namespace A259290

/-- `A205219(n+2)/2` -/
def P3603526353728517378.Spec : Prop :=
  ∀ n, P3603526353728517378.a n = (A259290 (n + 1) : ℚ)

end A259290

/-! ## A259290.P6225294244002125209

`Δ[A183774(n+2)/2]`
-/

namespace A259290.P6225294244002125209
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183774 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259290.P6225294244002125209

namespace A259290

/-- `Δ[A183774(n+2)/2]` -/
def P6225294244002125209.Spec : Prop :=
  ∀ n, P6225294244002125209.a n = (A259290 (n + 1) : ℚ)

end A259290

/-! ## A259290.P12141811346336955575

`2/3*A277237(n+2)`
-/

namespace A259290.P12141811346336955575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A277237 (n + 2) : ℚ)

end

end A259290.P12141811346336955575

namespace A259290

/-- `2/3*A277237(n+2)` -/
def P12141811346336955575.Spec : Prop :=
  ∀ n, P12141811346336955575.a n = (A259290 (n + 1) : ℚ)

end A259290

/-! ## A259290.P17126864202876767969

`Δ[A026581(n+2)]-A102446(n)`
-/

namespace A259290.P17126864202876767969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026581 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A102446 n

end

end A259290.P17126864202876767969

namespace A259290

/-- `Δ[A026581(n+2)]-A102446(n)` -/
def P17126864202876767969.Spec : Prop :=
  ∀ n, P17126864202876767969.a n = A259290 (n + 1)

end A259290

/-! ## A259290.P15374091956701253113

`A185761(n+2)/4`
-/

namespace A259290.P15374091956701253113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185761 (n + 2) : ℚ) / 4

end

end A259290.P15374091956701253113

namespace A259290

/-- `A185761(n+2)/4` -/
def P15374091956701253113.Spec : Prop :=
  ∀ n, P15374091956701253113.a n = (A259290 (n + 1) : ℚ)

end A259290

/-! ## A259290.P17534038944481841198

`A183682(n+3)/8`
-/

namespace A259290.P17534038944481841198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183682 (n + 3) : ℚ) / 8

end

end A259290.P17534038944481841198

namespace A259290

/-- `A183682(n+3)/8` -/
def P17534038944481841198.Spec : Prop :=
  ∀ n, P17534038944481841198.a n = (A259290 (n + 1) : ℚ)

end A259290

/-!
# A259291: Number of (n+1) X (2+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0001 0101 or 0111.

The programs for A259291, the canonical program `A259291.P7685482173134797452` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259291 has offset 1).

The definition of A259291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259291.P7685482173134797452

`3*a(n-1)+4*a(n-2)-8*a(n-3)` with `a(0)=26, a(1)=94, a(2)=322`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259291

/-- `3*a(n-1)+4*a(n-2)-8*a(n-3)` -/
def P7685482173134797452.Spec : Prop :=
  ∀ n, P7685482173134797452.a n = A259291 (n + 1)

theorem P7685482173134797452.correct : P7685482173134797452.Spec := by
  intro n
  simp only [A259291, Nat.add_sub_cancel]

end A259291

/-! ## A259291.P13988845802245681839

`2*A183775(n+1)`
-/

namespace A259291.P13988845802245681839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183775 (n + 1)

end

end A259291.P13988845802245681839

namespace A259291

/-- `2*A183775(n+1)` -/
def P13988845802245681839.Spec : Prop :=
  ∀ n, P13988845802245681839.a n = A259291 (n + 1)

end A259291

/-! ## A259291.P8762479661043224640

`lcm(A020639(A005886(n)), A183775(n+1))`
-/

namespace A259291.P8762479661043224640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (A005886 n).toNat) (A183775 (n + 1))

end

end A259291.P8762479661043224640

namespace A259291

/-- `lcm(A020639(A005886(n)), A183775(n+1))` -/
def P8762479661043224640.Spec : Prop :=
  ∀ n, (P8762479661043224640.a n : ℤ) = A259291 (n + 1)

end A259291

/-! ## A259291.P10287593595255014882

`A183775(n+1)+or(A000035(n), A183775(n+1))`
-/

namespace A259291.P10287593595255014882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183775 (n + 1) + Int.lor (A000035 n) (A183775 (n + 1))

end

end A259291.P10287593595255014882

namespace A259291

/-- `A183775(n+1)+or(A000035(n), A183775(n+1))` -/
def P10287593595255014882.Spec : Prop :=
  ∀ n, P10287593595255014882.a n = A259291 (n + 1)

end A259291

/-!
# A259292: Number of (n+1) X (3+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0001 0101 or 0111.

The programs for A259292, there is no canonical definition to state claims against.
-/

/-! ## A259292.P7006393548047855890

`2*A183776(n+1)`
-/

namespace A259292.P7006393548047855890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183776 (n + 1)

end

end A259292.P7006393548047855890

/-! ## A259292.P4866157866130287926

`A183776(n+1)+A183776(C(n+1, n))`
-/

namespace A259292.P4866157866130287926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183776 (n + 1) + A183776 (Nat.choose (n + 1) n)

end

end A259292.P4866157866130287926

/-! ## A259292.P7697196819729780195

`A183776(n+1)+A183776(Δ[n²]-n)`
-/

namespace A259292.P7697196819729780195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183776 (n + 1) + A183776 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A259292.P7697196819729780195

/-! ## A259292.P9290277652063101034

`A259297(∑[n+2]+4)`
-/

namespace A259292.P9290277652063101034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259297 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A259292.P9290277652063101034

/-! ## A259292.P5433311109096718967

`2*A183782(∑[n+2]+4)`
-/

namespace A259292.P5433311109096718967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183782 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A259292.P5433311109096718967

/-!
# A259293: Number of (n+1)X(4+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0001 0101 or 0111.

The programs for A259293, there is no canonical definition to state claims against.
-/

/-! ## A259293.P14598038229930530186

`2*A183777(n+1)`
-/

namespace A259293.P14598038229930530186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183777 (n + 1)

end

end A259293.P14598038229930530186

/-! ## A259293.P14299647140487389779

`lcm(2, A183777(C(n+1, n)))`
-/

namespace A259293.P14299647140487389779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183777 (Nat.choose (n + 1) n))

end

end A259293.P14299647140487389779

/-! ## A259293.P14362602685337589614

`lcm(2, A183777(A000027(n+1)))`
-/

namespace A259293.P14362602685337589614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183777 (A000027 (n + 1)).toNat)

end

end A259293.P14362602685337589614

/-! ## A259293.P17832996118200882784

`A183777(A000027(n+1))+A183777(n+1)`
-/

namespace A259293.P17832996118200882784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183777 (A000027 (n + 1)).toNat + A183777 (n + 1)

end

end A259293.P17832996118200882784

/-! ## A259293.P14951213334633223900

`A183777(n+1)+or(A183777(n+1), A304820(n+1))`
-/

namespace A259293.P14951213334633223900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183777 (n + 1) + Int.lor (A183777 (n + 1)) (A304820 (n + 1))

end

end A259293.P14951213334633223900

/-!
# A259294: Number of (n+1)X(5+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0001 0101 or 0111.

The programs for A259294, there is no canonical definition to state claims against.
-/

/-! ## A259294.P15658943689164736264

`2*A183778(n+1)`
-/

namespace A259294.P15658943689164736264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183778 (n + 1)

end

end A259294.P15658943689164736264

/-! ## A259294.P3975103122745133310

`A183778(n+1)+A183778(C(n+1, n))`
-/

namespace A259294.P3975103122745133310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183778 (n + 1) + A183778 (Nat.choose (n + 1) n)

end

end A259294.P3975103122745133310

/-! ## A259294.P13419732764469965058

`A183778(n+1)+A183778(Δ[n²]-n)`
-/

namespace A259294.P13419732764469965058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183778 (n + 1) + A183778 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A259294.P13419732764469965058

/-! ## A259294.P11245099965234006678

`A000038(n+1)+A183778(n+1)+A183778(n+1)`
-/

namespace A259294.P11245099965234006678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A183778 (n + 1) + A183778 (n + 1))

end

end A259294.P11245099965234006678

/-! ## A259294.P9843328206102256213

`A183778(n+1)+A183778(n+1)/A008279(A205133(n+1))`
-/

namespace A259294.P9843328206102256213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183778 (n + 1) : ℚ) + (A183778 (n + 1) : ℚ) / (A008279 (A205133 (n + 1)).toNat : ℚ)

end

end A259294.P9843328206102256213

/-! ## A259294.P17431113284390305167

`A183778(n+1)-A183778(n+1)/A182394(A058199(n+1)+1)`
-/

namespace A259294.P17431113284390305167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183778 (n + 1) : ℚ) - (A183778 (n + 1) : ℚ) / (A182394 (A058199 (n + 1) + 1).toNat : ℚ)

end

end A259294.P17431113284390305167

/-!
# A259295: Number of (n+1)X(6+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0001 0101 or 0111.

The programs for A259295, there is no canonical definition to state claims against.
-/

/-! ## A259295.P14526306204988859575

`2*A183779(n+1)`
-/

namespace A259295.P14526306204988859575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183779 (n + 1)

end

end A259295.P14526306204988859575

/-! ## A259295.P7122642031463094583

`A183779(A000027(n+1))+A183779(n+1)`
-/

namespace A259295.P7122642031463094583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183779 (A000027 (n + 1)).toNat + A183779 (n + 1)

end

end A259295.P7122642031463094583

/-! ## A259295.P2427024241092026740

`A183779(n+1)+record[A183779(A003602(n+1))]`
-/

namespace A259295.P2427024241092026740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183779 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183779 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259295.P2427024241092026740

/-! ## A259295.P2498254861034097194

`A183779(n+1)+lcm(A020985(n), A183779(n+1))`
-/

namespace A259295.P2498254861034097194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183779 (n + 1) + (Int.lcm (A020985 n) (A183779 (n + 1)) : ℤ)

end

end A259295.P2498254861034097194

/-! ## A259295.P953114086456238591

`A259297(A374007(n+1))`
-/

namespace A259295.P953114086456238591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259297 (A374007 (n + 1)).toNat

end

end A259295.P953114086456238591

/-!
# A259296: Number of (n+1)X(7+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0001 0101 or 0111.

The programs for A259296, there is no canonical definition to state claims against.
-/

/-! ## A259296.P4719666519767754886

`2*A183780(n+1)`
-/

namespace A259296.P4719666519767754886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183780 (n + 1)

end

end A259296.P4719666519767754886

/-! ## A259296.P17863633178467715797

`A183780(n+1)+A183780(n+1)+A008778(n)%((-1)^n)`
-/

namespace A259296.P17863633178467715797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183780 (n + 1) + (A183780 (n + 1) + Int.tmod (A008778 n) ((-1) ^ n))

end

end A259296.P17863633178467715797

/-! ## A259296.P7082540126991592440

`A183780(n+1)+A183780(n+1)%A183781(n+1)`
-/

namespace A259296.P7082540126991592440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183780 (n + 1) + Int.tmod (A183780 (n + 1)) (A183781 (n + 1))

end

end A259296.P7082540126991592440

/-! ## A259296.P8034792901811408546

`A259297(A374008(n+1))`
-/

namespace A259296.P8034792901811408546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259297 (A374008 (n + 1)).toNat

end

end A259296.P8034792901811408546

/-! ## A259296.P15857624800576327331

`A259297(eq[8, A131818(n+1)])`
-/

namespace A259296.P15857624800576327331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259297 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259296.P15857624800576327331

/-!
# A259297: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0001 0101 or 0111.

The programs for A259297, there is no canonical definition to state claims against.
-/

/-! ## A259297.P9476878329919102275

`2*A183782(n+1)`
-/

namespace A259297.P9476878329919102275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183782 (n + 1)

end

end A259297.P9476878329919102275

/-! ## A259297.P14925955416644464576

`A183782(char[1]+1+n)+A183782(n+1)`
-/

namespace A259297.P14925955416644464576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183782 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + A183782 (n + 1)

end

end A259297.P14925955416644464576

/-! ## A259297.P4935954411448366706

`A183782(n+1)+lcm(A020985(n), A183782(n+1))`
-/

namespace A259297.P4935954411448366706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183782 (n + 1) + (Int.lcm (A020985 n) (A183782 (n + 1)) : ℤ)

end

end A259297.P4935954411448366706

/-! ## A259297.P5538415058374778913

`A183782(n+1)+or(A000007(n), A183782(n+1))`
-/

namespace A259297.P5538415058374778913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183782 (n + 1) + Int.lor (A000007 n) (A183782 (n + 1))

end

end A259297.P5538415058374778913

/-! ## A259297.P14948778706902250846

`lcm(A183782(n+1)+A183782(n+1), A033999(n)²)`
-/

namespace A259297.P14948778706902250846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A183782 (n + 1) + A183782 (n + 1)) (A033999 n ^ 2)

end

end A259297.P14948778706902250846

/-! ## A259297.P3595467156615891690

`A183782(n+1)+A183782(n+1)%A185761(n+1)`
-/

namespace A259297.P3595467156615891690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183782 (n + 1) + Int.tmod (A183782 (n + 1)) (A185761 (n + 1))

end

end A259297.P3595467156615891690

/-! ## A259297.P8306637478697680961

`A183782(n+1)-A183782(n+1)/A182394(A058199(n+1)+1)`
-/

namespace A259297.P8306637478697680961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183782 (n + 1) : ℚ) - (A183782 (n + 1) : ℚ) / (A182394 (A058199 (n + 1) + 1).toNat : ℚ)

end

end A259297.P8306637478697680961

