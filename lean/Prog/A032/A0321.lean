import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C022
import Seq.B000.C023
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
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C047
import Seq.B000.C049
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B011.C000
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
# A032100: "BHK" (reversible, identity, unlabeled) transform of 1,3,5,7...

The programs for A032100, the canonical program `A032100.P859301396136179184` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032100 has offset 1).

The definition of A032100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032100.P859301396136179184

`ogf((1-2x-3x^2+2x^3+11x^4-4x^5+3x^6)/(1-5x+4x^2+12x^3-21x^4+9x^5))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032100

/-- `ogf((1-2x-3x^2+2x^3+11x^4-4x^5+3x^6)/(1-5x+4x^2+12x^3-21x^4+9x^5))` -/
def P859301396136179184.Spec : Prop :=
  ∀ n, P859301396136179184.a n = A032100 (n + 1)

theorem P859301396136179184.correct : P859301396136179184.Spec := by
  intro n
  simp only [A032100, Nat.add_sub_cancel]

end A032100

/-! ## A032100.P11103568185542620625

`A057142(∑[2*n*a(n-1)]-1)` with `a(0)=2`
-/

namespace A032100.P11103568185542620625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A032100.P11103568185542620625

namespace A032100

/-- `A057142(∑[2*n*a(n-1)]-1)` -/
def P11103568185542620625.Spec : Prop :=
  ∀ n, P11103568185542620625.a n = A032100 (n + 1)

end A032100

/-!
# A032101: Number of dyslexic identity planted planar trees with n+1 nodes.

The programs for A032101, there is no canonical definition to state claims against.
-/

/-! ## A032101.P16174984758255694638

`A008618(A077856(n)+A077846(n))`
-/

namespace A032101.P16174984758255694638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A077856 n + A077846 n).toNat

end

end A032101.P16174984758255694638

/-! ## A032101.P17935293513524535645

`A101785(n)-A001222(A226890(n))`
-/

namespace A032101.P17935293513524535645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101785 n - A001222 (A226890 n).toNat

end

end A032101.P17935293513524535645

/-! ## A032101.P3353414357542186380

`A157271(xor(A240490(n), A262184(n)))`
-/

namespace A032101.P3353414357542186380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (Int.xor (A240490 n) (A262184 n)).toNat

end

end A032101.P3353414357542186380

/-! ## A032101.P9022283402778652892

`A182897(n)+A060236(A092867(n+1))`
-/

namespace A032101.P9022283402778652892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182897 n + A060236 (A092867 (n + 1)).toNat

end

end A032101.P9022283402778652892

/-! ## A032101.P4421495416588688287

`A316470(A032305(n+1))-A245040(n+13)`
-/

namespace A032101.P4421495416588688287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (A032305 (n + 1)).toNat - A245040 (n + 13)

end

end A032101.P4421495416588688287

/-!
# A032102: Number of dyslexic identity rooted planar trees with n nodes.

The programs for A032102, there is no canonical definition to state claims against.
-/

/-! ## A032102.P9648831278152046542

`A008616(A121449(n)+4)`
-/

namespace A032102.P9648831278152046542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A121449 n + 4).toNat

end

end A032102.P9648831278152046542

/-! ## A032102.P15840260373882688710

`A008676(A167499(n)+A059502(n))`
-/

namespace A032102.P15840260373882688710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A167499 n + A059502 n).toNat

end

end A032102.P15840260373882688710

/-! ## A032102.P11283717506833455388

`A154099(A128739(n)-A089068(n))`
-/

namespace A032102.P11283717506833455388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154099 (A128739 n - A089068 n).toNat

end

end A032102.P11283717506833455388

/-! ## A032102.P5919863254976358110

`A023193(A281872(n))`
-/

namespace A032102.P5919863254976358110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A281872 n).toNat

end

end A032102.P5919863254976358110

/-! ## A032102.P5821324073894437574

`A234852(A389602(n))`
-/

namespace A032102.P5821324073894437574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234852 (A389602 n).toNat

end

end A032102.P5821324073894437574

/-!
# A032103: Number of dyslexic identity planted planar trees with n+1 nodes and leaves of 2 colors.

The programs for A032103, there is no canonical definition to state claims against.
-/

/-! ## A032103.P6346362502507837285

`A326355(n)+A157271(A259792(n))`
-/

namespace A032103.P6346362502507837285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326355 n + A157271 (A259792 n).toNat

end

end A032103.P6346362502507837285

/-! ## A032103.P2370198798493545823

`n²*A358371(a(n-1))` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A032103.P2370198798493545823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n a =>
  (n ^ 2 : ℤ) * A358371 (a (n - 1)).toNat

end

end A032103.P2370198798493545823

/-!
# A032104: Shifts left 2 places under "BHK" (reversible, identity, unlabeled) transform.

The programs for A032104, there is no canonical definition to state claims against.
-/

/-! ## A032104.P12280792221935591474

`A247189(A291118(∑[n]))`
-/

namespace A032104.P12280792221935591474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247189 (A291118 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A032104.P12280792221935591474

/-! ## A032104.P1372510611783352918

`A113619(A219753(n)+1)`
-/

namespace A032104.P1372510611783352918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113619 (A219753 n + 1).toNat

end

end A032104.P1372510611783352918

/-! ## A032104.P9803418672544071002

`A155213(A293606(n))+1`
-/

namespace A032104.P9803418672544071002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155213 (A293606 n).toNat + 1

end

end A032104.P9803418672544071002

/-! ## A032104.P5120511058460641911

`A332743(n)+A124767(A001470(n))`
-/

namespace A032104.P5120511058460641911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332743 n + A124767 (A001470 n).toNat

end

end A032104.P5120511058460641911

/-! ## A032104.P18211664878472297530

`A124343(n+1)-A071626(A000108(n))`
-/

namespace A032104.P18211664878472297530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124343 (n + 1) - A071626 (A000108 n).toNat

end

end A032104.P18211664878472297530

/-!
# A032105: Number of series-reduced dyslexic identity planted planar trees with n leaves of 2 colors.

The programs for A032105, there is no canonical definition to state claims against.
-/

/-! ## A032105.P16454980919617746926

`A025050(n^n)-A347376(n+1)`
-/

namespace A032105.P16454980919617746926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025050 (n ^ n) - A347376 (n + 1)

end

end A032105.P16454980919617746926

/-! ## A032105.P17260107622513529293

`A004280(A000055(2*n+1))+A105821(n+1)%A055233(n+1)`
-/

namespace A032105.P17260107622513529293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A000055 (2 * n + 1)).toNat + Int.tmod (A105821 (n + 1)) (A055233 (n + 1))

end

end A032105.P17260107622513529293

/-!
# A032106: Number of reversible strings with n black beads and n-1 white beads. String is not palindromic.

The programs for A032106, the canonical program `A032106.P17796953684831043289` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032106 has offset 1).

The definition of A032106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032106.P17796953684831043289

`A182027(2*n+1)-A007123(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A032106

/-- `A182027(2*n+1)-A007123(n+1)` -/
def P17796953684831043289.Spec : Prop :=
  ∀ n, P17796953684831043289.a n = A032106 (n + 1)

theorem P17796953684831043289.correct : P17796953684831043289.Spec := by
  intro n
  simp only [A032106, Nat.add_sub_cancel]

end A032106

/-! ## A032106.P18335548393514749544

`A058622(A028310(n))+A042971(n+1)`
-/

namespace A032106.P18335548393514749544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (A028310 n).toNat + A042971 (n + 1)

end

end A032106.P18335548393514749544

namespace A032106

/-- `A058622(A028310(n))+A042971(n+1)` -/
def P18335548393514749544.Spec : Prop :=
  ∀ n, P18335548393514749544.a n = A032106 (n + 1)

end A032106

/-! ## A032106.P16375411728916692387

`A005654(A028310(n)+1)-A001405(n)`
-/

namespace A032106.P16375411728916692387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005654 (A028310 n + 1).toNat - A001405 n

end

end A032106.P16375411728916692387

namespace A032106

/-- `A005654(A028310(n)+1)-A001405(n)` -/
def P16375411728916692387.Spec : Prop :=
  ∀ n, P16375411728916692387.a n = A032106 (n + 1)

end A032106

/-! ## A032106.P1490507207712901182

`A063886(A004277(n))-A007123(n+1)`
-/

namespace A032106.P1490507207712901182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (A004277 n).toNat - A007123 (n + 1)

end

end A032106.P1490507207712901182

namespace A032106

/-- `A063886(A004277(n))-A007123(n+1)` -/
def P1490507207712901182.Spec : Prop :=
  ∀ n, P1490507207712901182.a n = A032106 (n + 1)

end A032106

/-! ## A032106.P16704155350557917927

`A129383(A004273(n)+2)/2`
-/

namespace A032106.P16704155350557917927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129383 (A004273 n + 2).toNat : ℚ) / 2

end

end A032106.P16704155350557917927

namespace A032106

/-- `A129383(A004273(n)+2)/2` -/
def P16704155350557917927.Spec : Prop :=
  ∀ n, P16704155350557917927.a n = (A032106 (n + 1) : ℚ)

end A032106

/-! ## A032106.P3166980392659473727

`A155543(n)-A103943(n+1)`
-/

namespace A032106.P3166980392659473727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155543 n - A103943 (n + 1)

end

end A032106.P3166980392659473727

namespace A032106

/-- `A155543(n)-A103943(n+1)` -/
def P3166980392659473727.Spec : Prop :=
  ∀ n, P3166980392659473727.a n = A032106 (n + 1)

end A032106

/-! ## A032106.P15127665318834201113

`A000302(n)-A103943(n+1)%A000302(n)`
-/

namespace A032106.P15127665318834201113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - Int.tmod (A103943 (n + 1)) (A000302 n)

end

end A032106.P15127665318834201113

namespace A032106

/-- `A000302(n)-A103943(n+1)%A000302(n)` -/
def P15127665318834201113.Spec : Prop :=
  ∀ n, P15127665318834201113.a n = A032106 (n + 1)

end A032106

/-! ## A032106.P3188848920366192383

`A034852(2*A233583(n+2)²)`
-/

namespace A032106.P3188848920366192383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (2 * A233583 (n + 2) ^ 2).toNat

end

end A032106.P3188848920366192383

namespace A032106

/-- `A034852(2*A233583(n+2)²)` -/
def P3188848920366192383.Spec : Prop :=
  ∀ n, P3188848920366192383.a n = A032106 (n + 1)

end A032106

/-! ## A032106.P8748976430204602259

`A034852(A005843(n+1)*A233583(n+2))`
-/

namespace A032106.P8748976430204602259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (A005843 (n + 1) * A233583 (n + 2)).toNat

end

end A032106.P8748976430204602259

namespace A032106

/-- `A034852(A005843(n+1)*A233583(n+2))` -/
def P8748976430204602259.Spec : Prop :=
  ∀ n, P8748976430204602259.a n = A032106 (n + 1)

end A032106

/-! ## A032106.P9476447755024242245

`A034877(2*n²)`
-/

namespace A032106.P9476447755024242245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034877 (2 * n ^ 2)

end

end A032106.P9476447755024242245

namespace A032106

/-- `A034877(2*n²)` -/
def P9476447755024242245.Spec : Prop :=
  ∀ n, P9476447755024242245.a n = A032106 (n + 1)

end A032106

/-!
# A032107: Number of reversible strings with n labeled beads of 2 colors.

The programs for A032107, there is no canonical definition to state claims against.
-/

/-! ## A032107.P11751033219213430838

`∏[2*(1-char[1]+n)]`
-/

namespace A032107.P11751033219213430838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032107.P11751033219213430838

/-! ## A032107.P9552237242421982223

`lcm(2, ∏[2*(n+1)]/2)`
-/

namespace A032107.P9552237242421982223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2))

end

end A032107.P9552237242421982223

/-! ## A032107.P18085046911644469116

`record[n*a(n-2)]` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A032107.P18085046911644469116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1] fun n f1 =>
  n * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032107.P18085046911644469116

/-! ## A032107.P10876624715057844780

`lcm(4, ∏[n+2+n])/2`
-/

namespace A032107.P10876624715057844780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A032107.P10876624715057844780

/-! ## A032107.P3709654274463845011

`record[2^abs(1-n)*n!]`
-/

namespace A032107.P3709654274463845011
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) * (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032107.P3709654274463845011

/-! ## A032107.P6065088719322906707

`2*(n+1)*a(n-1)` with `a(0)=2, a(1)=4`
-/

namespace A032107.P6065088719322906707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  2 * ((n + 1) * a (n - 1))

end

end A032107.P6065088719322906707

/-! ## A032107.P1378733083318404136

`4*a(n-1)/n*∑[n]` with `a(0)=2, a(1)=4`
-/

namespace A032107.P1378733083318404136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n a =>
  4 * (a (n - 1) / (n : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))

end

end A032107.P1378733083318404136

/-! ## A032107.P8815829311178634239

`(4-2*(1-n))*a(n-1)` with `a(0)=2, a(1)=4`
-/

namespace A032107.P8815829311178634239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  (4 - 2 * (1 - (n : ℤ))) * a (n - 1)

end

end A032107.P8815829311178634239

/-! ## A032107.P17475217448840863669

`A121892(n+1)`
-/

namespace A032107.P17475217448840863669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121892 (n + 1)

end

end A032107.P17475217448840863669

/-! ## A032107.P12406849983989980508

`2*A052564(n+1)`
-/

namespace A032107.P12406849983989980508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052564 (n + 1)

end

end A032107.P12406849983989980508

/-!
# A032108: Number of reversible strings with n labeled beads of 3 colors.

The programs for A032108, there is no canonical definition to state claims against.
-/

/-! ## A032108.P17256616590784698360

`∏[3*(1-char[1]+n)]`
-/

namespace A032108.P17256616590784698360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032108.P17256616590784698360

/-! ## A032108.P17793597140443988758

`lcm(2, ∏[3*(n+1)])/2`
-/

namespace A032108.P17793597140443988758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A032108.P17793597140443988758

/-! ## A032108.P16696195518039677104

`3*(n+1)*a(n-1)` with `a(0)=3, a(1)=9`
-/

namespace A032108.P16696195518039677104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 9] fun n a =>
  3 * ((n + 1) * a (n - 1))

end

end A032108.P16696195518039677104

/-! ## A032108.P5042686241637880829

`A032261(n+2)/3`
-/

namespace A032108.P5042686241637880829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032261 (n + 2) : ℚ) / 3

end

end A032108.P5042686241637880829

/-! ## A032108.P6903225134111674467

`3*a(n-1)*A065475(n)` with `a(0)=3`
-/

namespace A032108.P6903225134111674467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * (a (n - 1) * A065475 n)

end

end A032108.P6903225134111674467

/-! ## A032108.P7738135077974934307

`∏[3*(n+1)]/A036453(n+1)`
-/

namespace A032108.P7738135077974934307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A032108.P7738135077974934307

/-! ## A032108.P3379186536305219843

`A000244(n+1)*A001710(n+1)`
-/

namespace A032108.P3379186536305219843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) * A001710 (n + 1)

end

end A032108.P3379186536305219843

/-! ## A032108.P14713766882124437907

`A032031(n+1)/(2-A000007(n))`
-/

namespace A032108.P14713766882124437907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032031 (n + 1) : ℚ) / (2 - A000007 n : ℚ)

end

end A032108.P14713766882124437907

/-! ## A032108.P13282601878226827005

`Δ[A003462(n+1)]*A001710(n+1)`
-/

namespace A032108.P13282601878226827005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001710 (n + 1)

end

end A032108.P13282601878226827005

/-! ## A032108.P6381534750213646388

`A032031(n+1)/A000629(n)*A000670(n)`
-/

namespace A032108.P6381534750213646388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032031 (n + 1) : ℚ) / (A000629 n : ℚ) * (A000670 n : ℚ)

end

end A032108.P6381534750213646388

/-!
# A032109: "BIJ" (reversible, indistinct, labeled) transform of 1,1,1,1,...

The programs for A032109, there is no canonical definition to state claims against.
-/

/-! ## A032109.P1396432789263805078

`(A000670(n)+1)/2`
-/

namespace A032109.P1396432789263805078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000670 n + 1 : ℚ) / 2

end

end A032109.P1396432789263805078

/-! ## A032109.P6870951585776609382

`A052875(n)/2+1`
-/

namespace A032109.P6870951585776609382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052875 n : ℚ) / 2 + 1

end

end A032109.P6870951585776609382

/-! ## A032109.P7551147177497652910

`ceil(A000670(n)/2)`
-/

namespace A032109.P7551147177497652910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000670 n : ℚ) / 2⌉

end

end A032109.P7551147177497652910

/-! ## A032109.P6070270889665726685

`ceil(A052856(n)/2)`
-/

namespace A032109.P6070270889665726685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052856 n : ℚ) / 2⌉

end

end A032109.P6070270889665726685

/-! ## A032109.P1085026538881222603

`ceil(A122835(n)/3)`
-/

namespace A032109.P1085026538881222603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A122835 n : ℚ) / 3⌉

end

end A032109.P1085026538881222603

/-! ## A032109.P7857195725214902066

`ceil(A000629(n)/4)`
-/

namespace A032109.P7857195725214902066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000629 n : ℚ) / 4⌉

end

end A032109.P7857195725214902066

/-! ## A032109.P8563245329269746395

`ceil(A076726(n)/4)`
-/

namespace A032109.P8563245329269746395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A076726 n : ℚ) / 4⌉

end

end A032109.P8563245329269746395

/-! ## A032109.P6996558083885935183

`ceil(A007047(n)/8)`
-/

namespace A032109.P6996558083885935183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007047 n : ℚ) / 8⌉

end

end A032109.P6996558083885935183

/-! ## A032109.P4943945969432829816

`ceil(A122101(∑[n])/2)`
-/

namespace A032109.P4943945969432829816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A122101 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌉

end

end A032109.P4943945969432829816

/-! ## A032109.P15441195849592675138

`ceil(A154921(∑[n])/2)`
-/

namespace A032109.P15441195849592675138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A154921 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌉

end

end A032109.P15441195849592675138

/-!
# A032110: "BIJ" (reversible, indistinct, labeled) transform of 0,1,1,1...

The programs for A032110, there is no canonical definition to state claims against.
-/

/-! ## A032110.P12448119888148394335

`ceil(A032032(n+1)/2)`
-/

namespace A032110.P12448119888148394335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032032 (n + 1) : ℚ) / 2⌉

end

end A032110.P12448119888148394335

/-! ## A032110.P14561168375575326965

`(A032032(n+1)+1)/2*A057427(n)`
-/

namespace A032110.P14561168375575326965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032032 (n + 1) + 1 : ℚ) / 2 * (A057427 n : ℚ)

end

end A032110.P14561168375575326965

/-! ## A032110.P9860178261967492467

`round(A070140(or(5, n))+A032032(n+1)/2)`
-/

namespace A032110.P9860178261967492467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A070140 (Nat.lor 5 n) : ℚ) + (A032032 (n + 1) : ℚ) / 2)

end

end A032110.P9860178261967492467

/-! ## A032110.P3041802226763191846

`round(A032032(n+1)/A020639(A004277(n+1)))`
-/

namespace A032110.P3041802226763191846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032032 (n + 1) : ℚ) / (A020639 (A004277 (n + 1)).toNat : ℚ))

end

end A032110.P3041802226763191846

/-! ## A032110.P5688539430868626805

`round(A032032(n+1)/A020639(2*A270677(n)))`
-/

namespace A032110.P5688539430868626805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032032 (n + 1) : ℚ) / (A020639 (2 * A270677 n).toNat : ℚ))

end

end A032110.P5688539430868626805

/-! ## A032110.P7874216489590400946

`ceil(A187784(A000217(n+1))/2)`
-/

namespace A032110.P7874216489590400946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A187784 (A000217 (n + 1)).toNat : ℚ) / 2⌉

end

end A032110.P7874216489590400946

/-!
# A032111: "BIJ" (reversible, indistinct, labeled) transform of 2,2,2,2...

The programs for A032111, there is no canonical definition to state claims against.
-/

/-! ## A032111.P2149928870133671084

`1+A050351(n+1)`
-/

namespace A032111.P2149928870133671084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A050351 (n + 1)

end

end A032111.P2149928870133671084

/-! ## A032111.P17087574223355369349

`A004123(n+2)/2+1`
-/

namespace A032111.P17087574223355369349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004123 (n + 2) : ℚ) / 2 + 1

end

end A032111.P17087574223355369349

/-! ## A032111.P3078271944205494824

`A201339(n+1)/3+1`
-/

namespace A032111.P3078271944205494824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201339 (n + 1) : ℚ) / 3 + 1

end

end A032111.P3078271944205494824

/-! ## A032111.P9206630115276130147

`ceil(A027882(n+1)/3)/2+1`
-/

namespace A032111.P9206630115276130147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A027882 (n + 1) : ℚ) / 3⌉ : ℚ) / 2 + 1

end

end A032111.P9206630115276130147

/-! ## A032111.P6669852545834475383

`A201339(n+1)+1-A004123(n+2)`
-/

namespace A032111.P6669852545834475383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201339 (n + 1) + (1 - A004123 (n + 2))

end

end A032111.P6669852545834475383

/-!
# A032112: "BIJ" (reversible, indistinct, labeled) transform of 2,1,1,1...

The programs for A032112, there is no canonical definition to state claims against.
-/

/-! ## A032112.P15122021970930106192

`floor(A006155(n+1)/2)+1`
-/

namespace A032112.P15122021970930106192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006155 (n + 1) : ℚ) / 2⌋ + 1

end

end A032112.P15122021970930106192

/-!
# A032113: "BIJ" (reversible, indistinct, labeled) transform of 3,3,3,3...

The programs for A032113, there is no canonical definition to state claims against.
-/

/-! ## A032113.P15304679757923082558

`(A032033(n+1)+3)/2`
-/

namespace A032113.P15304679757923082558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032033 (n + 1) + 3 : ℚ) / 2

end

end A032113.P15304679757923082558

/-! ## A032113.P9228037069373317360

`floor(sinh(log(A032183(n+2)/4)))+2`
-/

namespace A032113.P9228037069373317360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log ((A032183 (n + 2) : ℚ) / 4 : ℝ))⌋ + 2

end

end A032113.P9228037069373317360

/-!
# A032114: "BIJ" (reversible, indistinct, labeled) transform of 1,2,3,4,...

The programs for A032114, there is no canonical definition to state claims against.
-/

/-! ## A032114.P2937795208197886357

`ceil((A006153(n+1)+n)/2)`
-/

namespace A032114.P2937795208197886357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006153 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A032114.P2937795208197886357

/-! ## A032114.P1234973097139073565

`(A072597(n)+1)*(n+1)/2`
-/

namespace A032114.P1234973097139073565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A072597 n + 1) * (n + 1 : ℤ) : ℚ) / 2

end

end A032114.P1234973097139073565

/-! ## A032114.P4119837331648489090

`(A006153(A055643(n+1))+1+n)/2`
-/

namespace A032114.P4119837331648489090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006153 (A055643 (n + 1)).toNat + 1 + (n : ℤ) : ℚ) / 2

end

end A032114.P4119837331648489090

/-!
# A032115: "BIJ" (reversible, indistinct, labeled) transform of 1,3,5,7...

The programs for A032115, there is no canonical definition to state claims against.
-/

/-! ## A032115.P9749377750136772868

`ceil((A004273(n)+A000354(n))/2)`
-/

namespace A032115.P9749377750136772868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004273 n + A000354 n : ℚ) / 2⌉

end

end A032115.P9749377750136772868

/-! ## A032115.P17969776475973266689

`A342381(A000124(n))+n-and(1, n)`
-/

namespace A032115.P17969776475973266689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342381 (A000124 n).toNat + ((n : ℤ) - (Nat.land 1 n : ℤ))

end

end A032115.P17969776475973266689

/-! ## A032115.P13549420567269184732

`(A004273(A028310(n))+A000354(n))/2`
-/

namespace A032115.P13549420567269184732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004273 (A028310 n).toNat + A000354 n : ℚ) / 2

end

end A032115.P13549420567269184732

/-! ## A032115.P13420193263808066482

`(A004273(n)+A000354(n))/A036453(n+1)`
-/

namespace A032115.P13420193263808066482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004273 n + A000354 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A032115.P13420193263808066482

/-! ## A032115.P15822649044117964938

`floor((A000203(n+1)%2+A004273(n)+A000354(n))/2)`
-/

namespace A032115.P15822649044117964938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod (A000203 (n + 1)) 2 + (A004273 n + A000354 n) : ℚ) / 2⌋

end

end A032115.P15822649044117964938

/-! ## A032115.P15599480501778137254

`(A004273(n)+A000354(n))*A008486(n)/A008458(n)`
-/

namespace A032115.P15599480501778137254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004273 n + A000354 n : ℚ) * ((A008486 n : ℚ) / (A008458 n : ℚ))

end

end A032115.P15599480501778137254

/-!
# A032116: Shifts left under "BIJ" (reversible, indistinct, labeled) transform.

The programs for A032116, there is no canonical definition to state claims against.
-/

/-! ## A032116.P14789375736523928100

`A248562(n*a(n-1))` with `a(0)=1`
-/

namespace A032116.P14789375736523928100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A248562 ((n : ℤ) * a (n - 1)).toNat

end

end A032116.P14789375736523928100

/-!
# A032117: Shifts left under "BIJ" (reversible, indistinct, labeled) transform.

The programs for A032117, there is no canonical definition to state claims against.
-/

/-! ## A032117.P2205191625779893832

`A290932(n)+A286632(A090351(n))`
-/

namespace A032117.P2205191625779893832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290932 n + A286632 (A090351 n).toNat

end

end A032117.P2205191625779893832

/-! ## A032117.P9487074213738955937

`A236840(A325589(3*(n+1))+A290932(n))`
-/

namespace A032117.P9487074213738955937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236840 (A325589 (3 * (n + 1)) + A290932 n).toNat

end

end A032117.P9487074213738955937

/-!
# A032118: Shifts left 2 places under "BIJ" (reversible, indistinct, labeled) transform.

The programs for A032118, there is no canonical definition to state claims against.
-/

/-! ## A032118.P4373223480737993305

`A060384(A046907(n+1))`
-/

namespace A032118.P4373223480737993305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A046907 (n + 1)).toNat

end

end A032118.P4373223480737993305

/-! ## A032118.P3609796958151312285

`A065648(A213228(n)+1)`
-/

namespace A032118.P3609796958151312285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 (A213228 n + 1).toNat

end

end A032118.P3609796958151312285

/-! ## A032118.P9944851211764206201

`A356325(n)+A276625(abs(A346838(n)))`
-/

namespace A032118.P9944851211764206201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356325 n + A276625 |A346838 n|.toNat

end

end A032118.P9944851211764206201

/-!
# A032119: Number of labeled series-reduced dyslexic planted planar trees (root unlabeled) with n leaves.

The programs for A032119, there is no canonical definition to state claims against.
-/

/-! ## A032119.P5765858583215642635

`ceil(A289683(n+1)/3)`
-/

namespace A032119.P5765858583215642635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289683 (n + 1) : ℚ) / 3⌉

end

end A032119.P5765858583215642635

/-! ## A032119.P8770567284488597960

`A289683(n+1)/A006530(A254006(2*n))`
-/

namespace A032119.P8770567284488597960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289683 (n + 1) : ℚ) / (A006530 (A254006 (2 * n)).toNat : ℚ)

end

end A032119.P8770567284488597960

/-! ## A032119.P15923698587705865455

`A289683(n+1)/A014963(A000244(n))`
-/

namespace A032119.P15923698587705865455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289683 (n + 1) : ℚ) / (A014963 (A000244 n).toNat : ℚ)

end

end A032119.P15923698587705865455

/-!
# A032120: Number of reversible strings with n beads of 3 colors.

The programs for A032120, the canonical program `A032120.P14967370757640857961` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032120 has offset 0).

The definition of A032120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032120.P239697387574906738

`ogf((1-6x^2)/(1-3x-3x^2+9x^3))`
-/

namespace A032120.P239697387574906738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -6] [1, -3, -3, 9] n

end

end A032120.P239697387574906738

namespace A032120

/-- `ogf((1-6x^2)/(1-3x-3x^2+9x^3))` -/
def P239697387574906738.Spec : Prop :=
  ∀ n, P239697387574906738.a n = A032120 n

end A032120

/-! ## A032120.P3151097369097176498

`(3^n+3^ceil(n/2))/2`
-/

namespace A032120.P3151097369097176498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℚ) + (3 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)) / 2

end

end A032120.P3151097369097176498

namespace A032120

/-- `(3^n+3^ceil(n/2))/2` -/
def P3151097369097176498.Spec : Prop :=
  ∀ n, P3151097369097176498.a n = (A032120 n : ℚ)

end A032120

/-! ## A032120.P14967370757640857961

`3*a(n-1)+3*a(n-2)-9*a(n-3)` with `a(0)=1, a(1)=3, a(2)=6`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032120

/-- `3*a(n-1)+3*a(n-2)-9*a(n-3)` -/
def P14967370757640857961.Spec : Prop :=
  ∀ n, P14967370757640857961.a n = A032120 n

theorem P14967370757640857961.correct : P14967370757640857961.Spec := by
  intro n
  simp only [A032120]

end A032120

/-! ## A032120.P149134294470638893

`3^(n-1)+3*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A032120.P149134294470638893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 3 * a (n - 2)

end

end A032120.P149134294470638893

namespace A032120

/-- `3^(n-1)+3*a(n-2)` -/
def P149134294470638893.Spec : Prop :=
  ∀ n, P149134294470638893.a n = (A032120 n : ℚ)

end A032120

/-! ## A032120.P8258738208206687105

`3*a(n-1)-A254006(n)` with `a(0)=1`
-/

namespace A032120.P8258738208206687105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A254006 n

end

end A032120.P8258738208206687105

namespace A032120

/-- `3*a(n-1)-A254006(n)` -/
def P8258738208206687105.Spec : Prop :=
  ∀ n, P8258738208206687105.a n = A032120 n

end A032120

/-! ## A032120.P17241632429762086982

`floor(A007051(n)+A056449(n)/2)`
-/

namespace A032120.P17241632429762086982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007051 n : ℚ) + (A056449 n : ℚ) / 2⌋

end

end A032120.P17241632429762086982

namespace A032120

/-- `floor(A007051(n)+A056449(n)/2)` -/
def P17241632429762086982.Spec : Prop :=
  ∀ n, P17241632429762086982.a n = A032120 n

end A032120

/-! ## A032120.P2372233355306649937

`A038754(n)+∑[A122006(n+1)]`
-/

namespace A032120.P2372233355306649937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032120.P2372233355306649937

namespace A032120

/-- `A038754(n)+∑[A122006(n+1)]` -/
def P2372233355306649937.Spec : Prop :=
  ∀ n, P2372233355306649937.a n = A032120 n

end A032120

/-! ## A032120.P12356533551786072035

`A182522(n+1)+A167993(n+1)`
-/

namespace A032120.P12356533551786072035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (n + 1) + A167993 (n + 1)

end

end A032120.P12356533551786072035

namespace A032120

/-- `A182522(n+1)+A167993(n+1)` -/
def P12356533551786072035.Spec : Prop :=
  ∀ n, P12356533551786072035.a n = A032120 n

end A032120

/-! ## A032120.P13239267906398218781

`A001444(n)+Δ[A007051(A004526(n))]`
-/

namespace A032120.P13239267906398218781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001444 n + (f1 (n + 1) - f1 n)

end

end A032120.P13239267906398218781

namespace A032120

/-- `A001444(n)+Δ[A007051(A004526(n))]` -/
def P13239267906398218781.Spec : Prop :=
  ∀ n, P13239267906398218781.a n = A032120 n

end A032120

/-! ## A032120.P6740039868984387389

`A003462(n)+A003462(A110654(n))+1`
-/

namespace A032120.P6740039868984387389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + (A003462 (A110654 n).toNat + 1)

end

end A032120.P6740039868984387389

namespace A032120

/-- `A003462(n)+A003462(A110654(n))+1` -/
def P6740039868984387389.Spec : Prop :=
  ∀ n, P6740039868984387389.a n = A032120 n

end A032120

/-! ## A032120.P5310431953967958493

`A124302(A008619(n+1))+A003462(n)`
-/

namespace A032120.P5310431953967958493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (A008619 (n + 1)).toNat + A003462 n

end

end A032120.P5310431953967958493

namespace A032120

/-- `A124302(A008619(n+1))+A003462(n)` -/
def P5310431953967958493.Spec : Prop :=
  ∀ n, P5310431953967958493.a n = A032120 n

end A032120

/-! ## A032120.P8129855647055539667

`A001444(n+1)-3^n`
-/

namespace A032120.P8129855647055539667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001444 (n + 1) - (3 ^ n : ℤ)

end

end A032120.P8129855647055539667

namespace A032120

/-- `A001444(n+1)-3^n` -/
def P8129855647055539667.Spec : Prop :=
  ∀ n, P8129855647055539667.a n = A032120 n

end A032120

/-! ## A032120.P13861920137517532670

`A032124(n+1)-A001444(n)`
-/

namespace A032120.P13861920137517532670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032124 (n + 1) - A001444 n

end

end A032120.P13861920137517532670

namespace A032120

/-- `A032124(n+1)-A001444(n)` -/
def P13861920137517532670.Spec : Prop :=
  ∀ n, P13861920137517532670.a n = A032120 n

end A032120

/-! ## A032120.P11176487954846735890

`A374721(n+1)-A167993(n)`
-/

namespace A032120.P11176487954846735890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374721 (n + 1) - A167993 n

end

end A032120.P11176487954846735890

namespace A032120

/-- `A374721(n+1)-A167993(n)` -/
def P11176487954846735890.Spec : Prop :=
  ∀ n, P11176487954846735890.a n = A032120 n

end A032120

/-! ## A032120.P4806082498148832230

`A000244(n)/A001444(n)*A001998(n)`
-/

namespace A032120.P4806082498148832230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) / (A001444 n : ℚ) * (A001998 n : ℚ)

end

end A032120.P4806082498148832230

namespace A032120

/-- `A000244(n)/A001444(n)*A001998(n)` -/
def P4806082498148832230.Spec : Prop :=
  ∀ n, P4806082498148832230.a n = (A032120 n : ℚ)

end A032120

/-! ## A032120.P16255198325967772004

`A001444(n+1)/A001998(n+1)*A001998(n)`
-/

namespace A032120.P16255198325967772004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001444 (n + 1) : ℚ) / (A001998 (n + 1) : ℚ) * (A001998 n : ℚ)

end

end A032120.P16255198325967772004

namespace A032120

/-- `A001444(n+1)/A001998(n+1)*A001998(n)` -/
def P16255198325967772004.Spec : Prop :=
  ∀ n, P16255198325967772004.a n = (A032120 n : ℚ)

end A032120

/-! ## A032120.P2728953079862422818

`A073216(A007590(n+1))`
-/

namespace A032120.P2728953079862422818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073216 (A007590 (n + 1)).toNat

end

end A032120.P2728953079862422818

namespace A032120

/-- `A073216(A007590(n+1))` -/
def P2728953079862422818.Spec : Prop :=
  ∀ n, P2728953079862422818.a n = A032120 n

end A032120

/-!
# A032121: Number of reversible strings with n beads of 4 colors.

The programs for A032121, the canonical program `A032121.P390107000383717118` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032121 has offset 0).

The definition of A032121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032121.P1921333777829275011

`ogf((1-10x^2)/(1-4x-4x^2+16x^3))`
-/

namespace A032121.P1921333777829275011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -10] [1, -4, -4, 16] n

end

end A032121.P1921333777829275011

namespace A032121

/-- `ogf((1-10x^2)/(1-4x-4x^2+16x^3))` -/
def P1921333777829275011.Spec : Prop :=
  ∀ n, P1921333777829275011.a n = A032121 n

end A032121

/-! ## A032121.P10902423407779453801

`(4^n+4^floor((n+1)/2))/2`
-/

namespace A032121.P10902423407779453801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℚ) + (4 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ)) / 2

end

end A032121.P10902423407779453801

namespace A032121

/-- `(4^n+4^floor((n+1)/2))/2` -/
def P10902423407779453801.Spec : Prop :=
  ∀ n, P10902423407779453801.a n = (A032121 n : ℚ)

end A032121

/-! ## A032121.P390107000383717118

`4*a(n-1)+4*a(n-2)-16*a(n-3)` with `a(0)=1, a(1)=4, a(2)=10`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032121

/-- `4*a(n-1)+4*a(n-2)-16*a(n-3)` -/
def P390107000383717118.Spec : Prop :=
  ∀ n, P390107000383717118.a n = A032121 n

theorem P390107000383717118.correct : P390107000383717118.Spec := by
  intro n
  simp only [A032121]

end A032121

/-! ## A032121.P14803103464196520106

`A395948(n+1)+2^n`
-/

namespace A032121.P14803103464196520106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395948 (n + 1) + (2 ^ n : ℤ)

end

end A032121.P14803103464196520106

namespace A032121

/-- `A395948(n+1)+2^n` -/
def P14803103464196520106.Spec : Prop :=
  ∀ n, P14803103464196520106.a n = A032121 n

end A032121

/-! ## A032121.P2607629300027117898

`2^(n-1)*A049332(n)`
-/

namespace A032121.P2607629300027117898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A049332 n : ℚ)

end

end A032121.P2607629300027117898

namespace A032121

/-- `2^(n-1)*A049332(n)` -/
def P2607629300027117898.Spec : Prop :=
  ∀ n, P2607629300027117898.a n = (A032121 n : ℚ)

end A032121

/-! ## A032121.P6191213405350790163

`A084221(n)+A006516(n)`
-/

namespace A032121.P6191213405350790163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n + A006516 n

end

end A032121.P6191213405350790163

namespace A032121

/-- `A084221(n)+A006516(n)` -/
def P6191213405350790163.Spec : Prop :=
  ∀ n, P6191213405350790163.a n = A032121 n

end A032121

/-! ## A032121.P12909764437908017660

`A213173(n)+A003674(n)`
-/

namespace A032121.P12909764437908017660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 n + A003674 n

end

end A032121.P12909764437908017660

namespace A032121

/-- `A213173(n)+A003674(n)` -/
def P12909764437908017660.Spec : Prop :=
  ∀ n, P12909764437908017660.a n = A032121 n

end A032121

/-! ## A032121.P418456722515300342

`A321579(n)+A123932(n)`
-/

namespace A032121.P418456722515300342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321579 n + A123932 n

end

end A032121.P418456722515300342

namespace A032121

/-- `A321579(n)+A123932(n)` -/
def P418456722515300342.Spec : Prop :=
  ∀ n, P418456722515300342.a n = A032121 n

end A032121

/-! ## A032121.P1778853709870906294

`A257273(n)-A213173(n)`
-/

namespace A032121.P1778853709870906294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n - A213173 n

end

end A032121.P1778853709870906294

namespace A032121

/-- `A257273(n)-A213173(n)` -/
def P1778853709870906294.Spec : Prop :=
  ∀ n, P1778853709870906294.a n = A032121 n

end A032121

/-! ## A032121.P10341031897287840856

`A257273(n)-A016116(n)²`
-/

namespace A032121.P10341031897287840856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n - A016116 n ^ 2

end

end A032121.P10341031897287840856

namespace A032121

/-- `A257273(n)-A016116(n)²` -/
def P10341031897287840856.Spec : Prop :=
  ∀ n, P10341031897287840856.a n = A032121 n

end A032121

/-! ## A032121.P13597552920456308944

`A084221(n)+Δ[A006095(n)]`
-/

namespace A032121.P13597552920456308944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n + (f1 (n + 1) - f1 n)

end

end A032121.P13597552920456308944

namespace A032121

/-- `A084221(n)+Δ[A006095(n)]` -/
def P13597552920456308944.Spec : Prop :=
  ∀ n, P13597552920456308944.a n = A032121 n

end A032121

/-! ## A032121.P10198050126935191829

`A084221(n)+A007179(2*n)`
-/

namespace A032121.P10198050126935191829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n + A007179 (2 * n)

end

end A032121.P10198050126935191829

namespace A032121

/-- `A084221(n)+A007179(2*n)` -/
def P10198050126935191829.Spec : Prop :=
  ∀ n, P10198050126935191829.a n = A032121 n

end A032121

/-! ## A032121.P7576637908557026954

`A137173(2*n)+A084221(n)`
-/

namespace A032121.P7576637908557026954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137173 (2 * n) + A084221 n

end

end A032121.P7576637908557026954

namespace A032121

/-- `A137173(2*n)+A084221(n)` -/
def P7576637908557026954.Spec : Prop :=
  ∀ n, P7576637908557026954.a n = A032121 n

end A032121

/-! ## A032121.P1537361358895418937

`A140252(n)+A094373(2*n)`
-/

namespace A032121.P1537361358895418937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140252 n + A094373 (2 * n)

end

end A032121.P1537361358895418937

namespace A032121

/-- `A140252(n)+A094373(2*n)` -/
def P1537361358895418937.Spec : Prop :=
  ∀ n, P1537361358895418937.a n = A032121 n

end A032121

/-! ## A032121.P8904820884034844836

`2*A225826(n)-A000079(n)`
-/

namespace A032121.P8904820884034844836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A225826 n - A000079 n

end

end A032121.P8904820884034844836

namespace A032121

/-- `2*A225826(n)-A000079(n)` -/
def P8904820884034844836.Spec : Prop :=
  ∀ n, P8904820884034844836.a n = A032121 n

end A032121

/-! ## A032121.P17966737792558333825

`A158302(n)+A155559(n)²/2`
-/

namespace A032121.P17966737792558333825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158302 n : ℚ) + (A155559 n ^ 2 : ℚ) / 2

end

end A032121.P17966737792558333825

namespace A032121

/-- `A158302(n)+A155559(n)²/2` -/
def P17966737792558333825.Spec : Prop :=
  ∀ n, P17966737792558333825.a n = (A032121 n : ℚ)

end A032121

/-! ## A032121.P8699957782113297658

`A131577(n%2+n)+A081294(n)`
-/

namespace A032121.P8699957782113297658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n % 2 + n) + A081294 n

end

end A032121.P8699957782113297658

namespace A032121

/-- `A131577(n%2+n)+A081294(n)` -/
def P8699957782113297658.Spec : Prop :=
  ∀ n, P8699957782113297658.a n = A032121 n

end A032121

/-! ## A032121.P12509064329346872378

`(A000225(n)+A176895(2*n)+1)*2^(n-1)`
-/

namespace A032121.P12509064329346872378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 n + (A176895 (2 * n) + 1) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A032121.P12509064329346872378

namespace A032121

/-- `(A000225(n)+A176895(2*n)+1)*2^(n-1)` -/
def P12509064329346872378.Spec : Prop :=
  ∀ n, P12509064329346872378.a n = (A032121 n : ℚ)

end A032121

/-! ## A032121.P6790338409162279010

`A000079(n)+A011782(n)*A166920(n)`
-/

namespace A032121.P6790338409162279010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A011782 n * A166920 n

end

end A032121.P6790338409162279010

namespace A032121

/-- `A000079(n)+A011782(n)*A166920(n)` -/
def P6790338409162279010.Spec : Prop :=
  ∀ n, P6790338409162279010.a n = A032121 n

end A032121

/-!
# A032122: Number of reversible strings with n beads of 5 colors.

The programs for A032122, the canonical program `A032122.P3452693506967452720` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032122 has offset 0).

The definition of A032122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032122.P14900603026316076935

`ogf((1-15x^2)/(1-5x-5x^2+25x^3))`
-/

namespace A032122.P14900603026316076935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -15] [1, -5, -5, 25] n

end

end A032122.P14900603026316076935

namespace A032122

/-- `ogf((1-15x^2)/(1-5x-5x^2+25x^3))` -/
def P14900603026316076935.Spec : Prop :=
  ∀ n, P14900603026316076935.a n = A032122 n

end A032122

/-! ## A032122.P11272428496235845865

`1/2*(5^n+5^floor((n+1)/2))`
-/

namespace A032122.P11272428496235845865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((5 ^ n : ℚ) + (5 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ))

end

end A032122.P11272428496235845865

namespace A032122

/-- `1/2*(5^n+5^floor((n+1)/2))` -/
def P11272428496235845865.Spec : Prop :=
  ∀ n, P11272428496235845865.a n = (A032122 n : ℚ)

end A032122

/-! ## A032122.P3452693506967452720

`5*a(n-1)+5*a(n-2)-25*a(n-3)` with `a(0)=1, a(1)=5, a(2)=15`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032122

/-- `5*a(n-1)+5*a(n-2)-25*a(n-3)` -/
def P3452693506967452720.Spec : Prop :=
  ∀ n, P3452693506967452720.a n = A032122 n

theorem P3452693506967452720.correct : P3452693506967452720.Spec := by
  intro n
  simp only [A032122]

end A032122

/-! ## A032122.P2744278678689172532

`(A000351(n)+A056451(n))/2`
-/

namespace A032122.P2744278678689172532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 n + A056451 n : ℚ) / 2

end

end A032122.P2744278678689172532

namespace A032122

/-- `(A000351(n)+A056451(n))/2` -/
def P2744278678689172532.Spec : Prop :=
  ∀ n, P2744278678689172532.a n = (A032122 n : ℚ)

end A032122

/-! ## A032122.P6832008391427298746

`A054884(n+1)+A054884(n)`
-/

namespace A032122.P6832008391427298746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054884 (n + 1) + A054884 n

end

end A032122.P6832008391427298746

namespace A032122

/-- `A054884(n+1)+A054884(n)` -/
def P6832008391427298746.Spec : Prop :=
  ∀ n, P6832008391427298746.a n = A032122 n

end A032122

/-! ## A032122.P17556567445223471284

`(A074872(n+2)+A000351(n))/2`
-/

namespace A032122.P17556567445223471284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074872 (n + 2) + A000351 n : ℚ) / 2

end

end A032122.P17556567445223471284

namespace A032122

/-- `(A074872(n+2)+A000351(n))/2` -/
def P17556567445223471284.Spec : Prop :=
  ∀ n, P17556567445223471284.a n = (A032122 n : ℚ)

end A032122

/-! ## A032122.P9029347219076634674

`(A074872(n+2)+A056451(2*n))/2`
-/

namespace A032122.P9029347219076634674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074872 (n + 2) + A056451 (2 * n) : ℚ) / 2

end

end A032122.P9029347219076634674

namespace A032122

/-- `(A074872(n+2)+A056451(2*n))/2` -/
def P9029347219076634674.Spec : Prop :=
  ∀ n, P9029347219076634674.a n = (A032122 n : ℚ)

end A032122

/-! ## A032122.P16750598361164517082

`(A074872(n+2)+A056487(2*n))/2`
-/

namespace A032122.P16750598361164517082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074872 (n + 2) + A056487 (2 * n) : ℚ) / 2

end

end A032122.P16750598361164517082

namespace A032122

/-- `(A074872(n+2)+A056487(2*n))/2` -/
def P16750598361164517082.Spec : Prop :=
  ∀ n, P16750598361164517082.a n = (A032122 n : ℚ)

end A032122

/-! ## A032122.P7638211941761235653

`(A074872(2*(n+1))+A074872(n+2))/2`
-/

namespace A032122.P7638211941761235653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074872 (2 * (n + 1)) + A074872 (n + 2) : ℚ) / 2

end

end A032122.P7638211941761235653

namespace A032122

/-- `(A074872(2*(n+1))+A074872(n+2))/2` -/
def P7638211941761235653.Spec : Prop :=
  ∀ n, P7638211941761235653.a n = (A032122 n : ℚ)

end A032122

/-! ## A032122.P10848006240950199188

`(A000351(n)+A000351(A110654(n)))/2`
-/

namespace A032122.P10848006240950199188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 n + A000351 (A110654 n).toNat : ℚ) / 2

end

end A032122.P10848006240950199188

namespace A032122

/-- `(A000351(n)+A000351(A110654(n)))/2` -/
def P10848006240950199188.Spec : Prop :=
  ∀ n, P10848006240950199188.a n = (A032122 n : ℚ)

end A032122

/-! ## A032122.P16024211570381023575

`A001447(n+1)-2*A000351(n)`
-/

namespace A032122.P16024211570381023575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001447 (n + 1) - 2 * A000351 n

end

end A032122.P16024211570381023575

namespace A032122

/-- `A001447(n+1)-2*A000351(n)` -/
def P16024211570381023575.Spec : Prop :=
  ∀ n, P16024211570381023575.a n = A032122 n

end A032122

/-! ## A032122.P622769735846980901

`A001447(n+1)-2*A056451(2*n)`
-/

namespace A032122.P622769735846980901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001447 (n + 1) - 2 * A056451 (2 * n)

end

end A032122.P622769735846980901

namespace A032122

/-- `A001447(n+1)-2*A056451(2*n)` -/
def P622769735846980901.Spec : Prop :=
  ∀ n, P622769735846980901.a n = A032122 n

end A032122

/-! ## A032122.P3976509530930382241

`A073217(A080827(n+1))`
-/

namespace A032122.P3976509530930382241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073217 (A080827 (n + 1)).toNat

end

end A032122.P3976509530930382241

namespace A032122

/-- `A073217(A080827(n+1))` -/
def P3976509530930382241.Spec : Prop :=
  ∀ n, P3976509530930382241.a n = A032122 n

end A032122

/-! ## A032122.P4318745091633590873

`A073217(A099392(n+2))`
-/

namespace A032122.P4318745091633590873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073217 (A099392 (n + 2)).toNat

end

end A032122.P4318745091633590873

namespace A032122

/-- `A073217(A099392(n+2))` -/
def P4318745091633590873.Spec : Prop :=
  ∀ n, P4318745091633590873.a n = A032122 n

end A032122

/-!
# A032123: Number of 2n-bead black-white reversible strings with n black beads.

The programs for A032123, the canonical program `A032123.P2559086527313729286` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032123 has offset 0).

The definition of A032123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032123.P2239223042273453683

`A034872(2*n)`
-/

namespace A032123.P2239223042273453683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034872 (2 * n)

end

end A032123.P2239223042273453683

namespace A032123

/-- `A034872(2*n)` -/
def P2239223042273453683.Spec : Prop :=
  ∀ n, P2239223042273453683.a n = A032123 n

end A032123

/-! ## A032123.P1980910012611029988

`A005317(n)-A058622(n)`
-/

namespace A032123.P1980910012611029988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005317 n - A058622 n

end

end A032123.P1980910012611029988

namespace A032123

/-- `A005317(n)-A058622(n)` -/
def P1980910012611029988.Spec : Prop :=
  ∀ n, P1980910012611029988.a n = A032123 n

end A032123

/-! ## A032123.P8904931643339190405

`2*A045723(n)-A011782(n)`
-/

namespace A032123.P8904931643339190405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045723 n - A011782 n

end

end A032123.P8904931643339190405

namespace A032123

/-- `2*A045723(n)-A011782(n)` -/
def P8904931643339190405.Spec : Prop :=
  ∀ n, P8904931643339190405.a n = A032123 n

end A032123

/-! ## A032123.P5954255127055131140

`(A126869(n)+A000984(n))/2`
-/

namespace A032123.P5954255127055131140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126869 n + A000984 n : ℚ) / 2

end

end A032123.P5954255127055131140

namespace A032123

/-- `(A126869(n)+A000984(n))/2` -/
def P5954255127055131140.Spec : Prop :=
  ∀ n, P5954255127055131140.a n = (A032123 n : ℚ)

end A032123

/-! ## A032123.P4583098999168647970

`(A126869(n)+record[A081668(n)])/2`
-/

namespace A032123.P4583098999168647970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126869 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A032123.P4583098999168647970

namespace A032123

/-- `(A126869(n)+record[A081668(n)])/2` -/
def P4583098999168647970.Spec : Prop :=
  ∀ n, P4583098999168647970.a n = (A032123 n : ℚ)

end A032123

/-! ## A032123.P1388562043945224686

`(A126869(n)+A063886(2*n))/2`
-/

namespace A032123.P1388562043945224686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126869 n + A063886 (2 * n) : ℚ) / 2

end

end A032123.P1388562043945224686

namespace A032123

/-- `(A126869(n)+A063886(2*n))/2` -/
def P1388562043945224686.Spec : Prop :=
  ∀ n, P1388562043945224686.a n = (A032123 n : ℚ)

end A032123

/-! ## A032123.P5109819805154233673

`(A126869(2*n)+A126869(n))/2`
-/

namespace A032123.P5109819805154233673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126869 (2 * n) + A126869 n : ℚ) / 2

end

end A032123.P5109819805154233673

namespace A032123

/-- `(A126869(2*n)+A126869(n))/2` -/
def P5109819805154233673.Spec : Prop :=
  ∀ n, P5109819805154233673.a n = (A032123 n : ℚ)

end A032123

/-! ## A032123.P2559086527313729286

`A007123(n+1)+n*A000150(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A032123

/-- `A007123(n+1)+n*A000150(n)` -/
def P2559086527313729286.Spec : Prop :=
  ∀ n, P2559086527313729286.a n = A032123 n

theorem P2559086527313729286.correct : P2559086527313729286.Spec := by
  intro n
  simp only [A032123]

end A032123

/-! ## A032123.P15460911867238837583

`A138364(A014681(n))+A088218(n)`
-/

namespace A032123.P15460911867238837583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 (A014681 n).toNat + A088218 n

end

end A032123.P15460911867238837583

namespace A032123

/-- `A138364(A014681(n))+A088218(n)` -/
def P15460911867238837583.Spec : Prop :=
  ∀ n, P15460911867238837583.a n = A032123 n

end A032123

/-! ## A032123.P16143308538410696958

`A027306(n)+A088218(n)-A011782(n)`
-/

namespace A032123.P16143308538410696958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n + (A088218 n - A011782 n)

end

end A032123.P16143308538410696958

namespace A032123

/-- `A027306(n)+A088218(n)-A011782(n)` -/
def P16143308538410696958.Spec : Prop :=
  ∀ n, P16143308538410696958.a n = A032123 n

end A032123

/-! ## A032123.P9362769498697196130

`(A126869(n)+A117852(∑[n]))/2`
-/

namespace A032123.P9362769498697196130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126869 n + A117852 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A032123.P9362769498697196130

namespace A032123

/-- `(A126869(n)+A117852(∑[n]))/2` -/
def P9362769498697196130.Spec : Prop :=
  ∀ n, P9362769498697196130.a n = (A032123 n : ℚ)

end A032123

/-!
# A032124: "BIK" (reversible, indistinct, unlabeled) transform of 2,2,2,2...

The programs for A032124, the canonical program `A032124.P13365627608986702633` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032124 has offset 1).

The definition of A032124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032124.P6212680712887319891

`ogf((2-x-9x^2)/(1-3x-3x^2+9x^3))`
-/

namespace A032124.P6212680712887319891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -9] [1, -3, -3, 9] n

end

end A032124.P6212680712887319891

namespace A032124

/-- `ogf((2-x-9x^2)/(1-3x-3x^2+9x^3))` -/
def P6212680712887319891.Spec : Prop :=
  ∀ n, P6212680712887319891.a n = A032124 (n + 1)

end A032124

/-! ## A032124.P13365627608986702633

`3*a(n-1)+3*a(n-2)-9*a(n-3)` with `a(0)=2, a(1)=5, a(2)=12`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032124

/-- `3*a(n-1)+3*a(n-2)-9*a(n-3)` -/
def P13365627608986702633.Spec : Prop :=
  ∀ n, P13365627608986702633.a n = A032124 (n + 1)

theorem P13365627608986702633.correct : P13365627608986702633.Spec := by
  intro n
  simp only [A032124, Nat.add_sub_cancel]

end A032124

/-! ## A032124.P2983396643605683162

`1/6*((5-(-1)^(n+1))*3^floor((n+1)/2)+2*3^(n+1))`
-/

namespace A032124.P2983396643605683162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * ((5 - (-1) ^ (n + 1) : ℚ) * (3 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) + (2 * 3 ^ (n + 1) : ℚ))

end

end A032124.P2983396643605683162

namespace A032124

/-- `1/6*((5-(-1)^(n+1))*3^floor((n+1)/2)+2*3^(n+1))` -/
def P2983396643605683162.Spec : Prop :=
  ∀ n, P2983396643605683162.a n = (A032124 (n + 1) : ℚ)

end A032124

/-! ## A032124.P11656394954232885234

`3*a(n-1)-3^floor(n/2)` with `a(0)=2`
-/

namespace A032124.P11656394954232885234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  3 * a (n - 1) - (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A032124.P11656394954232885234

namespace A032124

/-- `3*a(n-1)-3^floor(n/2)` -/
def P11656394954232885234.Spec : Prop :=
  ∀ n, P11656394954232885234.a n = (A032124 (n + 1) : ℚ)

end A032124

/-! ## A032124.P3434036290093473897

`A038754(n)+3^n`
-/

namespace A032124.P3434036290093473897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n + (3 ^ n : ℤ)

end

end A032124.P3434036290093473897

namespace A032124

/-- `A038754(n)+3^n` -/
def P3434036290093473897.Spec : Prop :=
  ∀ n, P3434036290093473897.a n = A032124 (n + 1)

end A032124

/-! ## A032124.P8851889797419034463

`∑[A374721(n+1)]+1`
-/

namespace A032124.P8851889797419034463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A032124.P8851889797419034463

namespace A032124

/-- `∑[A374721(n+1)]+1` -/
def P8851889797419034463.Spec : Prop :=
  ∀ n, P8851889797419034463.a n = A032124 (n + 1)

end A032124

/-! ## A032124.P10237047505658843092

`A182522(n+1)+3^n`
-/

namespace A032124.P10237047505658843092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (n + 1) + (3 ^ n : ℤ)

end

end A032124.P10237047505658843092

namespace A032124

/-- `A182522(n+1)+3^n` -/
def P10237047505658843092.Spec : Prop :=
  ∀ n, P10237047505658843092.a n = A032124 (n + 1)

end A032124

/-! ## A032124.P16792096468295944718

`A032120(n)+A001444(n)`
-/

namespace A032124.P16792096468295944718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032120 n + A001444 n

end

end A032124.P16792096468295944718

namespace A032124

/-- `A032120(n)+A001444(n)` -/
def P16792096468295944718.Spec : Prop :=
  ∀ n, P16792096468295944718.a n = A032124 (n + 1)

end A032124

/-! ## A032124.P2660164973132561474

`A007689(n)-A167762(n)`
-/

namespace A032124.P2660164973132561474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 n - A167762 n

end

end A032124.P2660164973132561474

namespace A032124

/-- `A007689(n)-A167762(n)` -/
def P2660164973132561474.Spec : Prop :=
  ∀ n, P2660164973132561474.a n = A032124 (n + 1)

end A032124

/-! ## A032124.P11012183481722552591

`A032120(n)+Δ[A001998(n)]`
-/

namespace A032124.P11012183481722552591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032120 n + (f1 (n + 1) - f1 n)

end

end A032124.P11012183481722552591

namespace A032124

/-- `A032120(n)+Δ[A001998(n)]` -/
def P11012183481722552591.Spec : Prop :=
  ∀ n, P11012183481722552591.a n = A032124 (n + 1)

end A032124

/-! ## A032124.P11367880117169294472

`Δ[A108411(n)+A032120(n)]`
-/

namespace A032124.P11367880117169294472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n + A032120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032124.P11367880117169294472

namespace A032124

/-- `Δ[A108411(n)+A032120(n)]` -/
def P11367880117169294472.Spec : Prop :=
  ∀ n, P11367880117169294472.a n = A032124 (n + 1)

end A032124

/-! ## A032124.P12824208988508430168

`A024023(n)+A038754(n)+1`
-/

namespace A032124.P12824208988508430168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n + (A038754 n + 1)

end

end A032124.P12824208988508430168

namespace A032124

/-- `A024023(n)+A038754(n)+1` -/
def P12824208988508430168.Spec : Prop :=
  ∀ n, P12824208988508430168.a n = A032124 (n + 1)

end A032124

/-! ## A032124.P2277633057824297773

`A062318(n+1)+A034472(n)`
-/

namespace A032124.P2277633057824297773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062318 (n + 1) + A034472 n

end

end A032124.P2277633057824297773

namespace A032124

/-- `A062318(n+1)+A034472(n)` -/
def P2277633057824297773.Spec : Prop :=
  ∀ n, P2277633057824297773.a n = A032124 (n + 1)

end A032124

/-! ## A032124.P5098893708241555991

`A117862(n)+A032096(n+1)`
-/

namespace A032124.P5098893708241555991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117862 n + A032096 (n + 1)

end

end A032124.P5098893708241555991

namespace A032124

/-- `A117862(n)+A032096(n+1)` -/
def P5098893708241555991.Spec : Prop :=
  ∀ n, P5098893708241555991.a n = A032124 (n + 1)

end A032124

/-! ## A032124.P14997374327517342273

`A133494(n+1)+A038754(n)`
-/

namespace A032124.P14997374327517342273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (n + 1) + A038754 n

end

end A032124.P14997374327517342273

namespace A032124

/-- `A133494(n+1)+A038754(n)` -/
def P14997374327517342273.Spec : Prop :=
  ∀ n, P14997374327517342273.a n = A032124 (n + 1)

end A032124

/-! ## A032124.P9602096558802185097

`A140429(n+1)+A038754(n)`
-/

namespace A032124.P9602096558802185097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (n + 1) + A038754 n

end

end A032124.P9602096558802185097

namespace A032124

/-- `A140429(n+1)+A038754(n)` -/
def P9602096558802185097.Spec : Prop :=
  ∀ n, P9602096558802185097.a n = A032124 (n + 1)

end A032124

/-! ## A032124.P3859279376573170608

`A155734(n+1)+A038754(n)`
-/

namespace A032124.P3859279376573170608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155734 (n + 1) + A038754 n

end

end A032124.P3859279376573170608

namespace A032124

/-- `A155734(n+1)+A038754(n)` -/
def P3859279376573170608.Spec : Prop :=
  ∀ n, P3859279376573170608.a n = A032124 (n + 1)

end A032124

/-! ## A032124.P18006432202455131245

`A122006(n+2)+A056449(n)`
-/

namespace A032124.P18006432202455131245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122006 (n + 2) + A056449 n

end

end A032124.P18006432202455131245

namespace A032124

/-- `A122006(n+2)+A056449(n)` -/
def P18006432202455131245.Spec : Prop :=
  ∀ n, P18006432202455131245.a n = A032124 (n + 1)

end A032124

/-! ## A032124.P4429799716089418761

`A262326(n+1)-A254006(n)`
-/

namespace A032124.P4429799716089418761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262326 (n + 1) - A254006 n

end

end A032124.P4429799716089418761

namespace A032124

/-- `A262326(n+1)-A254006(n)` -/
def P4429799716089418761.Spec : Prop :=
  ∀ n, P4429799716089418761.a n = A032124 (n + 1)

end A032124

/-! ## A032124.P12337425559150288093

`A108411(2*n)+A038754(n)`
-/

namespace A032124.P12337425559150288093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (2 * n) + A038754 n

end

end A032124.P12337425559150288093

namespace A032124

/-- `A108411(2*n)+A038754(n)` -/
def P12337425559150288093.Spec : Prop :=
  ∀ n, P12337425559150288093.a n = A032124 (n + 1)

end A032124

/-!
# A032125: "BIK" (reversible, indistinct, unlabeled) transform of 3,3,3,3...

The programs for A032125, the canonical program `A032125.P17237799082748427411` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032125 has offset 1).

The definition of A032125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032125.P15906638499237219674

`3*2^(n-1)*(2^n+1)`
-/

namespace A032125.P15906638499237219674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (2 ^ n + 1 : ℚ)

end

end A032125.P15906638499237219674

namespace A032125

/-- `3*2^(n-1)*(2^n+1)` -/
def P15906638499237219674.Spec : Prop :=
  ∀ n, P15906638499237219674.a n = (A032125 (n + 1) : ℚ)

theorem P15906638499237219674.correct : P15906638499237219674.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A032125, Nat.add_sub_cancel, A032125.P15906638499237219674.a, A032125.P17237799082748427411.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A032125, Nat.add_sub_cancel, A032125.P15906638499237219674.a, A032125.P17237799082748427411.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A032125

/-! ## A032125.P17237799082748427411

`6*a(n-1)-8*a(n-2)` with `a(0)=3, a(1)=9`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032125

/-- `6*a(n-1)-8*a(n-2)` -/
def P17237799082748427411.Spec : Prop :=
  ∀ n, P17237799082748427411.a n = A032125 (n + 1)

theorem P17237799082748427411.correct : P17237799082748427411.Spec := by
  intro n
  simp only [A032125, Nat.add_sub_cancel]

end A032125

/-! ## A032125.P9852305042929506166

`ogf((3-9x)/(1-6x+8x^2))`
-/

namespace A032125.P9852305042929506166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -9] [1, -6, 8] n

end

end A032125.P9852305042929506166

namespace A032125

/-- `ogf((3-9x)/(1-6x+8x^2))` -/
def P9852305042929506166.Spec : Prop :=
  ∀ n, P9852305042929506166.a n = A032125 (n + 1)

end A032125

/-! ## A032125.P13572737214522023474

`C(2^n+2, 2)+4^n-1`
-/

namespace A032125.P13572737214522023474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 ^ n + 2) 2 + 4 ^ n : ℤ) - 1

end

end A032125.P13572737214522023474

namespace A032125

/-- `C(2^n+2, 2)+4^n-1` -/
def P13572737214522023474.Spec : Prop :=
  ∀ n, P13572737214522023474.a n = A032125 (n + 1)

end A032125

/-! ## A032125.P15996647460253477293

`Δ[xor((2^n+4^n)/2+1, 2^n)]`
-/

namespace A032125.P15996647460253477293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((2 ^ n + 4 ^ n : ℚ) / 2 + 1)) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032125.P15996647460253477293

namespace A032125

/-- `Δ[xor((2^n+4^n)/2+1, 2^n)]` -/
def P15996647460253477293.Spec : Prop :=
  ∀ n, P15996647460253477293.a n = A032125 (n + 1)

end A032125

/-! ## A032125.P3510699989088026656

`Δ[a(n-1)+a(n-1)+4^(n-1)]` with `a(0)=2`
-/

namespace A032125.P3510699989088026656
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032125.P3510699989088026656

namespace A032125

/-- `Δ[a(n-1)+a(n-1)+4^(n-1)]` -/
def P3510699989088026656.Spec : Prop :=
  ∀ n, P3510699989088026656.a n = (A032125 (n + 1) : ℚ)

end A032125

/-! ## A032125.P4653364835297601821

`Δ[A257273(n)]`
-/

namespace A032125.P4653364835297601821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032125.P4653364835297601821

namespace A032125

/-- `Δ[A257273(n)]` -/
def P4653364835297601821.Spec : Prop :=
  ∀ n, P4653364835297601821.a n = A032125 (n + 1)

end A032125

/-! ## A032125.P3835917857548792164

`Δ[A028401(n+2)]`
-/

namespace A032125.P3835917857548792164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028401 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032125.P3835917857548792164

namespace A032125

/-- `Δ[A028401(n+2)]` -/
def P3835917857548792164.Spec : Prop :=
  ∀ n, P3835917857548792164.a n = A032125 (n + 1)

end A032125

/-! ## A032125.P14077792339675719257

`Δ[3*A007581(n)]`
-/

namespace A032125.P14077792339675719257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032125.P14077792339675719257

namespace A032125

/-- `Δ[3*A007581(n)]` -/
def P14077792339675719257.Spec : Prop :=
  ∀ n, P14077792339675719257.a n = A032125 (n + 1)

end A032125

/-! ## A032125.P14961925980934347874

`Δ[3*A076024(n)]`
-/

namespace A032125.P14961925980934347874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A076024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032125.P14961925980934347874

namespace A032125

/-- `Δ[3*A076024(n)]` -/
def P14961925980934347874.Spec : Prop :=
  ∀ n, P14961925980934347874.a n = A032125 (n + 1)

end A032125

/-! ## A032125.P1833265530283804214

`Δ[A239679(n)/2]`
-/

namespace A032125.P1833265530283804214
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239679 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032125.P1833265530283804214

namespace A032125

/-- `Δ[A239679(n)/2]` -/
def P1833265530283804214.Spec : Prop :=
  ∀ n, P1833265530283804214.a n = (A032125 (n + 1) : ℚ)

end A032125

/-! ## A032125.P8194817464686299674

`3*A161168(n)/2`
-/

namespace A032125.P8194817464686299674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A161168 n : ℚ) / 2

end

end A032125.P8194817464686299674

namespace A032125

/-- `3*A161168(n)/2` -/
def P8194817464686299674.Spec : Prop :=
  ∀ n, P8194817464686299674.a n = (A032125 (n + 1) : ℚ)

theorem P8194817464686299674.correct : P8194817464686299674.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A032125, Nat.add_sub_cancel, A032125.P8194817464686299674.a, A032125.P17237799082748427411.a, A161168, A161168.P10156154460995207162.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A032125, Nat.add_sub_cancel, A032125.P8194817464686299674.a, A032125.P17237799082748427411.a, A161168, A161168.P10156154460995207162.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A032125

/-! ## A032125.P1566615021322830018

`Δ[3*A124303(n+1)]`
-/

namespace A032125.P1566615021322830018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A124303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032125.P1566615021322830018

namespace A032125

/-- `Δ[3*A124303(n+1)]` -/
def P1566615021322830018.Spec : Prop :=
  ∀ n, P1566615021322830018.a n = A032125 (n + 1)

end A032125

/-! ## A032125.P7811742899220083533

`Δ[A290075(2*n+3)]`
-/

namespace A032125.P7811742899220083533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290075 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032125.P7811742899220083533

namespace A032125

/-- `Δ[A290075(2*n+3)]` -/
def P7811742899220083533.Spec : Prop :=
  ∀ n, P7811742899220083533.a n = A032125 (n + 1)

end A032125

/-! ## A032125.P10652191444206853400

`∑[C(A083329(n)+2, 2)]`
-/

namespace A032125.P10652191444206853400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A083329 n + 2).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032125.P10652191444206853400

namespace A032125

/-- `∑[C(A083329(n)+2, 2)]` -/
def P10652191444206853400.Spec : Prop :=
  ∀ n, (P10652191444206853400.a n : ℤ) = A032125 (n + 1)

end A032125

/-! ## A032125.P9445497887646626656

`or(3*A007582(n), char[1])`
-/

namespace A032125.P9445497887646626656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (3 * A007582 n) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A032125.P9445497887646626656

namespace A032125

/-- `or(3*A007582(n), char[1])` -/
def P9445497887646626656.Spec : Prop :=
  ∀ n, P9445497887646626656.a n = A032125 (n + 1)

end A032125

/-! ## A032125.P11878747468670203882

`A010036(n)+2^(n+1)`
-/

namespace A032125.P11878747468670203882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010036 n + (2 ^ (n + 1) : ℤ)

end

end A032125.P11878747468670203882

namespace A032125

/-- `A010036(n)+2^(n+1)` -/
def P11878747468670203882.Spec : Prop :=
  ∀ n, P11878747468670203882.a n = A032125 (n + 1)

end A032125

/-! ## A032125.P11656793903864463702

`A083330(n)+A007689(n)`
-/

namespace A032125.P11656793903864463702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083330 n + A007689 n

end

end A032125.P11656793903864463702

namespace A032125

/-- `A083330(n)+A007689(n)` -/
def P11656793903864463702.Spec : Prop :=
  ∀ n, P11656793903864463702.a n = A032125 (n + 1)

end A032125

/-!
# A032126: "BIK" (reversible, indistinct, unlabeled) transform of 1,2,3,4...

The programs for A032126, the canonical program `A032126.P8278390657951579463` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032126 has offset 1).

The definition of A032126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032126.P11725947830338413434

`ogf((1-5x^2+x^4)/(1-3x-2x^2+9x^3-2x^4-3x^5+x^6))`
-/

namespace A032126.P11725947830338413434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -5, 0, 1] [1, -3, -2, 9, -2, -3, 1] n

end

end A032126.P11725947830338413434

namespace A032126

/-- `ogf((1-5x^2+x^4)/(1-3x-2x^2+9x^3-2x^4-3x^5+x^6))` -/
def P11725947830338413434.Spec : Prop :=
  ∀ n, P11725947830338413434.a n = A032126 (n + 1)

end A032126

/-! ## A032126.P6127723647503173836

`A094966(n)+A051450(n+1)`
-/

namespace A032126.P6127723647503173836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n + A051450 (n + 1)

end

end A032126.P6127723647503173836

namespace A032126

/-- `A094966(n)+A051450(n+1)` -/
def P6127723647503173836.Spec : Prop :=
  ∀ n, P6127723647503173836.a n = A032126 (n + 1)

end A032126

/-! ## A032126.P15651040805921510753

`A094966(n)+Δ[A005207(n+1)]`
-/

namespace A032126.P15651040805921510753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n + (f1 (n + 1) - f1 n)

end

end A032126.P15651040805921510753

namespace A032126

/-- `A094966(n)+Δ[A005207(n+1)]` -/
def P15651040805921510753.Spec : Prop :=
  ∀ n, P15651040805921510753.a n = A032126 (n + 1)

end A032126

/-! ## A032126.P17481293806510008117

`A133586(n+1)+A094292(n+1)`
-/

namespace A032126.P17481293806510008117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133586 (n + 1) + A094292 (n + 1)

end

end A032126.P17481293806510008117

namespace A032126

/-- `A133586(n+1)+A094292(n+1)` -/
def P17481293806510008117.Spec : Prop :=
  ∀ n, P17481293806510008117.a n = A032126 (n + 1)

end A032126

/-! ## A032126.P14696607536782026509

`A094966(n)+A001224(2*n+1)`
-/

namespace A032126.P14696607536782026509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n + A001224 (2 * n + 1)

end

end A032126.P14696607536782026509

namespace A032126

/-- `A094966(n)+A001224(2*n+1)` -/
def P14696607536782026509.Spec : Prop :=
  ∀ n, P14696607536782026509.a n = A032126 (n + 1)

end A032126

/-! ## A032126.P704184952528386677

`(A097132(n+1)+A000071(2*(n+1)))/2`
-/

namespace A032126.P704184952528386677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097132 (n + 1) + A000071 (2 * (n + 1)) : ℚ) / 2

end

end A032126.P704184952528386677

namespace A032126

/-- `(A097132(n+1)+A000071(2*(n+1)))/2` -/
def P704184952528386677.Spec : Prop :=
  ∀ n, P704184952528386677.a n = (A032126 (n + 1) : ℚ)

end A032126

/-! ## A032126.P8278390657951579463

`∑[A005207(n+1)-A000045(A237420(n))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A032126

/-- `∑[A005207(n+1)-A000045(A237420(n))]` -/
def P8278390657951579463.Spec : Prop :=
  ∀ n, P8278390657951579463.a n = A032126 (n + 1)

theorem P8278390657951579463.correct : P8278390657951579463.Spec := by
  intro n
  simp only [A032126, Nat.add_sub_cancel]

end A032126

/-! ## A032126.P8193049684840242611

`A001519(n+1)+A094966(n)-A056014(n)`
-/

namespace A032126.P8193049684840242611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) + (A094966 n - A056014 n)

end

end A032126.P8193049684840242611

namespace A032126

/-- `A001519(n+1)+A094966(n)-A056014(n)` -/
def P8193049684840242611.Spec : Prop :=
  ∀ n, P8193049684840242611.a n = A032126 (n + 1)

end A032126

/-! ## A032126.P6408322614077483760

`A027994(n)+A094966(n)-A056014(n+1)`
-/

namespace A032126.P6408322614077483760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027994 n + (A094966 n - A056014 (n + 1))

end

end A032126.P6408322614077483760

namespace A032126

/-- `A027994(n)+A094966(n)-A056014(n+1)` -/
def P6408322614077483760.Spec : Prop :=
  ∀ n, P6408322614077483760.a n = A032126 (n + 1)

end A032126

/-! ## A032126.P10355284816947625586

`A051450(n+1)+A001654(n)/A094967(n)`
-/

namespace A032126.P10355284816947625586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051450 (n + 1) : ℚ) + (A001654 n : ℚ) / (A094967 n : ℚ)

end

end A032126.P10355284816947625586

namespace A032126

/-- `A051450(n+1)+A001654(n)/A094967(n)` -/
def P10355284816947625586.Spec : Prop :=
  ∀ n, P10355284816947625586.a n = (A032126 (n + 1) : ℚ)

end A032126

/-!
# A032127: "BIK" (reversible, indistinct, unlabeled) transform of 1,3,5,7...

The programs for A032127, the canonical program `A032127.P17716275916431705290` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032127 has offset 1).

The definition of A032127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032127.P17716275916431705290

`ogf((1+x-6x^2-5x^3-3x^4)/(1-3x-3x^2+9x^3))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032127

/-- `ogf((1+x-6x^2-5x^3-3x^4)/(1-3x-3x^2+9x^3))` -/
def P17716275916431705290.Spec : Prop :=
  ∀ n, P17716275916431705290.a n = A032127 (n + 1)

theorem P17716275916431705290.correct : P17716275916431705290.Spec := by
  intro n
  simp only [A032127, Nat.add_sub_cancel]

end A032127

/-! ## A032127.P4049704699004013063

`A087843(A150755(n+1))`
-/

namespace A032127.P4049704699004013063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087843 (A150755 (n + 1)).toNat

end

end A032127.P4049704699004013063

namespace A032127

/-- `A087843(A150755(n+1))` -/
def P4049704699004013063.Spec : Prop :=
  ∀ n, P4049704699004013063.a n = A032127 (n + 1)

end A032127

/-!
# A032128: Number of dyslexic planted planar trees with n nodes.

The programs for A032128, there is no canonical definition to state claims against.
-/

/-! ## A032128.P14378931619177948529

`A191768(n)+A186746(A000383(n))`
-/

namespace A032128.P14378931619177948529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191768 n + A186746 (A000383 n).toNat

end

end A032128.P14378931619177948529

/-! ## A032128.P4935885787695035230

`A337196(A000660(n))+A191768(n)`
-/

namespace A032128.P4935885787695035230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337196 (A000660 n).toNat + A191768 n

end

end A032128.P4935885787695035230

/-! ## A032128.P2099075709397807686

`A191938(A191788(n))+A191768(n)`
-/

namespace A032128.P2099075709397807686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191938 (A191788 n).toNat + A191768 n

end

end A032128.P2099075709397807686

/-! ## A032128.P6446324280624130918

`A337196(A344130(n))+A191768(n)`
-/

namespace A032128.P6446324280624130918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337196 (A344130 n).toNat + A191768 n

end

end A032128.P6446324280624130918

/-! ## A032128.P15009170010026996096

`or(A127970(A035337(n)), A191768(n))`
-/

namespace A032128.P15009170010026996096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A127970 (A035337 n).toNat) (A191768 n)

end

end A032128.P15009170010026996096

/-!
# A032129: Number of dyslexic rooted planar trees with n nodes.

The programs for A032129, there is no canonical definition to state claims against.
-/

/-! ## A032129.P11381845603294810314

`A214701(A148072(n))`
-/

namespace A032129.P11381845603294810314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A148072 n).toNat

end

end A032129.P11381845603294810314

/-! ## A032129.P6777551210664164592

`A304914(n)-A358480(A220247(n+4))`
-/

namespace A032129.P6777551210664164592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304914 n - A358480 (A220247 (n + 4)).toNat

end

end A032129.P6777551210664164592

/-!
# A032130: Shifts left under the "BIK" (reversible, indistinct, unlabeled) transform with a(1) = 2.

The programs for A032130, there is no canonical definition to state claims against.
-/

/-! ## A032130.P3615906952708109214

`A149451(n)+A048766(A265954(n))`
-/

namespace A032130.P3615906952708109214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149451 n + A048766 (A265954 n).toNat

end

end A032130.P3615906952708109214

/-! ## A032130.P409912599660664799

`A050296(A150195(n))+A048766(A265954(n))`
-/

namespace A032130.P409912599660664799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A150195 n).toNat + A048766 (A265954 n).toNat

end

end A032130.P409912599660664799

/-! ## A032130.P7489548950673913185

`A292638(A149358(n))+A048766(A265954(n))`
-/

namespace A032130.P7489548950673913185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292638 (A149358 n).toNat + A048766 (A265954 n).toNat

end

end A032130.P7489548950673913185

/-!
# A032131: Shifts left 2 places under the "BIK" (reversible, indistinct, unlabeled) transform with a(1) = a(2) = 1.

The programs for A032131, there is no canonical definition to state claims against.
-/

/-! ## A032131.P2618315545585138862

`A238098(A279785(n)+2)+∑[A184974(n)]`
-/

namespace A032131.P2618315545585138862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238098 (A279785 n + 2).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032131.P2618315545585138862

/-! ## A032131.P7811762289716700996

`∑[A184974(n)]+A002013(n)-A126314(A184974(n))`
-/

namespace A032131.P7811762289716700996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A002013 n - A126314 (A184974 n).toNat)

end

end A032131.P7811762289716700996

/-! ## A032131.P5293897877362858639

`ceil(A281578(2*n+1)/13)`
-/

namespace A032131.P5293897877362858639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A281578 (2 * n + 1) : ℚ) / 13⌉

end

end A032131.P5293897877362858639

/-! ## A032131.P13135174996107317981

`A003120(C(n, ∑{p}[n+1, gcd(n, #)]²))`
-/

namespace A032131.P13135174996107317981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003120 (Nat.choose n ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) ^ 2))

end

end A032131.P13135174996107317981

/-! ## A032131.P8414317943171850975

`A085736(A002013(n))`
-/

namespace A032131.P8414317943171850975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A002013 n).toNat

end

end A032131.P8414317943171850975

/-!
# A032132: Number of series-reduced dyslexic planted planar trees with n leaves.

The programs for A032132, there is no canonical definition to state claims against.
-/

/-! ## A032132.P5951789623266868377

`A120304(n)+A123621(A213092(n))+2`
-/

namespace A032132.P5951789623266868377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + (A123621 (A213092 n).toNat + 2)

end

end A032132.P5951789623266868377

/-! ## A032132.P7601171738021713621

`A123621(A213092(n))+A028304(2*n)`
-/

namespace A032132.P7601171738021713621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (A213092 n).toNat + A028304 (2 * n)

end

end A032132.P7601171738021713621

/-! ## A032132.P9039910910901880915

`A208355(2*n)+A123621(A213092(n))`
-/

namespace A032132.P9039910910901880915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n) + A123621 (A213092 n).toNat

end

end A032132.P9039910910901880915

/-! ## A032132.P5460525597525204924

`A123621(A213092(n))+A089408(Δ[n²])`
-/

namespace A032132.P5460525597525204924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (A213092 n).toNat + A089408 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A032132.P5460525597525204924

/-!
# A032133: Number of series-reduced dyslexic planted planar trees with n leaves of 2 colors.

The programs for A032133, there is no canonical definition to state claims against.
-/

/-! ## A032133.P2862731993097720697

`ceil(sqrt(A024816(7^n+2))/(n+1))`
-/

namespace A032133.P2862731993097720697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A024816 (7 ^ n + 2) : ℝ) / (n + 1 : ℝ)⌉

end

end A032133.P2862731993097720697

/-!
# A032135: "CFJ" (necklace, size, labeled) transform of 2,1,1,1...

The programs for A032135, there is no canonical definition to state claims against.
-/

/-! ## A032135.P7226194422837708634

`2*A032144(n)-A032146(n)`
-/

namespace A032135.P7226194422837708634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032144 n - A032146 n

end

end A032135.P7226194422837708634

/-! ## A032135.P17871674164536750300

`A004277(A032144(n))-A032146(n)`
-/

namespace A032135.P17871674164536750300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032144 n).toNat - A032146 n

end

end A032135.P17871674164536750300

/-! ## A032135.P6086364824095311881

`A080513(A032209(n))-A032146(n)`
-/

namespace A032135.P6086364824095311881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A032209 n).toNat - A032146 n

end

end A032135.P6086364824095311881

/-! ## A032135.P14323627017061996207

`A080513(A032209(n))-A032221(n)`
-/

namespace A032135.P14323627017061996207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A032209 n).toNat - A032221 n

end

end A032135.P14323627017061996207

/-! ## A032135.P5000760533743124170

`A080513(A032297(n))-A032146(n)`
-/

namespace A032135.P5000760533743124170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A032297 n).toNat - A032146 n

end

end A032135.P5000760533743124170

/-!
# A032137: "CFJ" (necklace, size, labeled) transform of 1,3,5,7...

The programs for A032137, there is no canonical definition to state claims against.
-/

/-! ## A032137.P14212882125078455317

`A032212(n)+A004525(A032041(n)-A032212(n))`
-/

namespace A032137.P14212882125078455317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032212 n + A004525 (A032041 n - A032212 n).toNat

end

end A032137.P14212882125078455317

/-! ## A032137.P2069244582609592783

`A032300(n)+A004525(A032041(n)-A032300(n))`
-/

namespace A032137.P2069244582609592783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032300 n + A004525 (A032041 n - A032300 n).toNat

end

end A032137.P2069244582609592783

/-! ## A032137.P3167197065988612064

`A004525(A032212(n)+A032041(n))`
-/

namespace A032137.P3167197065988612064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A032212 n + A032041 n).toNat

end

end A032137.P3167197065988612064

/-!
# A032138: Shifts left under "CFJ" (necklace, size, labeled) transform.

The programs for A032138, there is no canonical definition to state claims against.
-/

/-! ## A032138.P7358045838704791018

`A014684(A032151(n+1))`
-/

namespace A032138.P7358045838704791018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (A032151 (n + 1)).toNat

end

end A032138.P7358045838704791018

/-! ## A032138.P6598214576086961894

`A032151(∑[A305962(n)^15])`
-/

namespace A032138.P6598214576086961894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 n ^ 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032151 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032138.P6598214576086961894

/-! ## A032138.P6691413218587805282

`A032151(A004891(n+1)+1)`
-/

namespace A032138.P6691413218587805282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032151 (A004891 (n + 1) + 1).toNat

end

end A032138.P6691413218587805282

/-! ## A032138.P9489975397621038478

`A023443(A032151(n+1)+1)`
-/

namespace A032138.P9489975397621038478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A032151 (n + 1) + 1).toNat

end

end A032138.P9489975397621038478

/-!
# A032139: "CFK" (necklace, size, unlabeled) transform of 2,2,2,2...

The programs for A032139, there is no canonical definition to state claims against.
-/

/-! ## A032139.P7413109400689554437

`A000005(A007097(n))*A321662(n)`
-/

namespace A032139.P7413109400689554437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007097 n).toNat * A321662 n

end

end A032139.P7413109400689554437

/-! ## A032139.P9291981109093318957

`A020639(A027377(n))*A321662(n)`
-/

namespace A032139.P9291981109093318957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A027377 n).toNat * A321662 n

end

end A032139.P9291981109093318957

/-! ## A032139.P270089220419358509

`A020639(A032134(n))*A321662(n)`
-/

namespace A032139.P270089220419358509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A032134 n).toNat * A321662 n

end

end A032139.P270089220419358509

/-! ## A032139.P5817547393761340838

`A154325(A086551(2*(n+1)))*A321662(n)`
-/

namespace A032139.P5817547393761340838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 (A086551 (2 * (n + 1))).toNat * A321662 n

end

end A032139.P5817547393761340838

/-! ## A032139.P18095827707488950159

`A057561(A072576(n))`
-/

namespace A032139.P18095827707488950159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057561 (A072576 n).toNat

end

end A032139.P18095827707488950159

/-!
# A032140: "CFK" (necklace, size, unlabeled) transform of 2,1,1,1...

The programs for A032140, there is no canonical definition to state claims against.
-/

/-! ## A032140.P17536391657641877915

`2*A032153(n)-A032155(n)`
-/

namespace A032140.P17536391657641877915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032153 n - A032155 n

end

end A032140.P17536391657641877915

/-! ## A032140.P20953636357790845

`2*A032153(n)+A001478(A032155(n)+1)+1`
-/

namespace A032140.P20953636357790845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032153 n + (A001478 (A032155 n + 1).toNat + 1)

end

end A032140.P20953636357790845

/-! ## A032140.P15997075319205658245

`2*A032153(n)+A024000(A032155(n)+2)+1`
-/

namespace A032140.P15997075319205658245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032153 n + (A024000 (A032155 n + 2).toNat + 1)

end

end A032140.P15997075319205658245

/-! ## A032140.P10080065320861682940

`A004277(A032153(n))-A032155(n)`
-/

namespace A032140.P10080065320861682940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032153 n).toNat - A032155 n

end

end A032140.P10080065320861682940

/-!
# A032142: "CFK" (necklace, size, unlabeled) transform of 1,3,5,7...

The programs for A032142, there is no canonical definition to state claims against.
-/

/-! ## A032142.P16255684439270721535

`A274651(A244164(comp[n*n%2+3]+1))`
-/

namespace A032142.P16255684439270721535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274651 (A244164 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A032142.P16255684439270721535

/-! ## A032142.P5231543060885268228

`A298120(xor(A165560(n), A254685(n)))`
-/

namespace A032142.P5231543060885268228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298120 (Int.xor (A165560 n) (A254685 n)).toNat

end

end A032142.P5231543060885268228

/-!
# A032143: Number of compound rooted windmills with n nodes where any 2 submills extending from the same node are of different sizes.

The programs for A032143, there is no canonical definition to state claims against.
-/

/-! ## A032143.P537809876642947469

`A002024(A327505(n)+A000671(n))`
-/

namespace A032143.P537809876642947469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A327505 n + A000671 n).toNat

end

end A032143.P537809876642947469

/-! ## A032143.P12726044635551883927

`A003056(A327505(n)+A011782(n))`
-/

namespace A032143.P12726044635551883927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A327505 n + A011782 n).toNat

end

end A032143.P12726044635551883927

/-! ## A032143.P5954783080834941286

`A002024(A327505(n)+A281852(n+1))`
-/

namespace A032143.P5954783080834941286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A327505 n + A281852 (n + 1)).toNat

end

end A032143.P5954783080834941286

/-! ## A032143.P392155659003643579

`ceil(A332872(n)/A342528(n+1))+A079262(n)²`
-/

namespace A032143.P392155659003643579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A332872 n : ℚ) / (A342528 (n + 1) : ℚ)⌉ + A079262 n ^ 2

end

end A032143.P392155659003643579

/-! ## A032143.P14174695501710075430

`A377982(A004148(n))+A178798(A167614(n+1))`
-/

namespace A032143.P14174695501710075430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377982 (A004148 n).toNat + A178798 (A167614 (n + 1)).toNat

end

end A032143.P14174695501710075430

/-!
# A032144: Number of ways to partition n labeled elements into pie slices of different sizes.

The programs for A032144, there is no canonical definition to state claims against.
-/

/-! ## A032144.P2242503595171998861

`(A032146(n)+A032135(n))/2`
-/

namespace A032144.P2242503595171998861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032146 n + A032135 n : ℚ) / 2

end

end A032144.P2242503595171998861

/-! ## A032144.P17119510319575256414

`A065033(ceil(A032209(n)/2))`
-/

namespace A032144.P17119510319575256414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ⌈(A032209 n : ℚ) / 2⌉.toNat

end

end A032144.P17119510319575256414

/-! ## A032144.P15430814774049026684

`(A273943(A032297(n))+1)/2`
-/

namespace A032144.P15430814774049026684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273943 (A032297 n).toNat + 1 : ℚ) / 2

end

end A032144.P15430814774049026684

/-! ## A032144.P10695952946554375172

`A001281(A032146(n)+A032135(n))`
-/

namespace A032144.P10695952946554375172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A032146 n + A032135 n).toNat

end

end A032144.P10695952946554375172

/-! ## A032144.P15246032405711552533

`A065033(A032146(n)+A032135(n))`
-/

namespace A032144.P15246032405711552533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A032146 n + A032135 n).toNat

end

end A032144.P15246032405711552533

/-!
# A032145: Number of ways to partition n labeled elements into pie slices of different odd sizes.

The programs for A032145, there is no canonical definition to state claims against.
-/

/-! ## A032145.P2763050210522696372

`A227906(A032220(n))`
-/

namespace A032145.P2763050210522696372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227906 (A032220 n).toNat

end

end A032145.P2763050210522696372

/-! ## A032145.P12096360225552287270

`A227906(A032310(n))`
-/

namespace A032145.P12096360225552287270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227906 (A032310 n).toNat

end

end A032145.P12096360225552287270

/-!
# A032146: Number of ways to partition n labeled elements into pie slices of different sizes other than one.

The programs for A032146, there is no canonical definition to state claims against.
-/

/-! ## A032146.P4029852731246200200

`2*A032144(n)-A032135(n)`
-/

namespace A032146.P4029852731246200200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032144 n - A032135 n

end

end A032146.P4029852731246200200

/-! ## A032146.P12478212738580625322

`(A032311(A122200(∑[n]))+A032051(n))/2`
-/

namespace A032146.P12478212738580625322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032311 (A122200 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A032051 n : ℚ) / 2

end

end A032146.P12478212738580625322

/-! ## A032146.P4374449473087850537

`A004277(A032144(n))-A032135(n)`
-/

namespace A032146.P4374449473087850537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032144 n).toNat - A032135 n

end

end A032146.P4374449473087850537

/-! ## A032146.P9128715507461411172

`(A032051(n)+A032311(n)%A000040(floor((ϕ^n)²)+n))/2`
-/

namespace A032146.P9128715507461411172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032051 n + Int.tmod (A032311 n) (A000040 (⌊(Real.goldenRatio ^ n) ^ 2⌋ + (n : ℤ)).toNat) : ℚ) / 2

end

end A032146.P9128715507461411172

/-!
# A032147: "CGJ" (necklace, element, labeled) transform of 2,2,2,2...

The programs for A032147, there is no canonical definition to state claims against.
-/

/-! ## A032147.P8211849207182413175

`∑[A055745(A018066(n))]`
-/

namespace A032147.P8211849207182413175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055745 (A018066 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032147.P8211849207182413175

/-! ## A032147.P18259516311477765508

`record[and(A006799(n+1), A079098(2*n+5))]`
-/

namespace A032147.P18259516311477765508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006799 (n + 1)) (A079098 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032147.P18259516311477765508

/-!
# A032149: "CGJ" (necklace, element, labeled) transform of 1,2,3,4...

The programs for A032149, there is no canonical definition to state claims against.
-/

/-! ## A032149.P12696703632843138847

`A028310(A058837(n)+A032315(n))`
-/

namespace A032149.P12696703632843138847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A058837 n + A032315 n).toNat

end

end A032149.P12696703632843138847

/-! ## A032149.P2050012616371984101

`A256544(∑[∑{e}[n+1, #]]!)`
-/

namespace A032149.P2050012616371984101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256544 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A032149.P2050012616371984101

/-!
# A032150: "CGJ" (necklace, element, labeled) transform of 1,3,5,7...

The programs for A032150, there is no canonical definition to state claims against.
-/

/-! ## A032150.P7594209069009689844

`A333630(A104429(n))`
-/

namespace A032150.P7594209069009689844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333630 (A104429 n).toNat

end

end A032150.P7594209069009689844

/-! ## A032150.P8957364313846301860

`A063520(∏[A292460(n)])`
-/

namespace A032150.P8957364313846301860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063520 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032150.P8957364313846301860

/-!
# A032152: Doubles (index 2+) under "CGJ" (necklace, element, labeled) transform.

The programs for A032152, there is no canonical definition to state claims against.
-/

/-! ## A032152.P13595711564832146903

`A033712(A129256(n))`
-/

namespace A032152.P13595711564832146903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033712 (A129256 n).toNat

end

end A032152.P13595711564832146903

/-!
# A032153: Number of ways to partition n elements into pie slices of different sizes.

The programs for A032153, there is no canonical definition to state claims against.
-/

/-! ## A032153.P1570985063626354683

`A336896(A028310(n))/A028310(n)`
-/

namespace A032153.P1570985063626354683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336896 (A028310 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A032153.P1570985063626354683

/-! ## A032153.P13832295879344237113

`A336896(A065033(2*n))/A065033(2*n)`
-/

namespace A032153.P13832295879344237113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336896 (A065033 (2 * n)).toNat : ℚ) / (A065033 (2 * n) : ℚ)

end

end A032153.P13832295879344237113

/-! ## A032153.P14370559562868469443

`A336896(A000007(n)+n)/(A000007(n)+n)`
-/

namespace A032153.P14370559562868469443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336896 (A000007 n + (n : ℤ)).toNat : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A032153.P14370559562868469443

/-! ## A032153.P5019615507065202431

`2*A032228(n)-A065033(n)`
-/

namespace A032153.P5019615507065202431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032228 n - A065033 n

end

end A032153.P5019615507065202431

/-! ## A032153.P5286328834926265345

`(A032155(n)+A032140(n))/2`
-/

namespace A032153.P5286328834926265345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032155 n + A032140 n : ℚ) / 2

end

end A032153.P5286328834926265345

/-! ## A032153.P2147322019986111697

`A032215(n)+A032230(n)-A065033(n)`
-/

namespace A032153.P2147322019986111697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032215 n + (A032230 n - A065033 n)

end

end A032153.P2147322019986111697

/-! ## A032153.P12702821427838161974

`A336896(A233583(n+1))/A233583(n+1)`
-/

namespace A032153.P12702821427838161974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336896 (A233583 (n + 1)).toNat : ℚ) / (A233583 (n + 1) : ℚ)

end

end A032153.P12702821427838161974

/-!
# A032154: Number of ways to partition n elements into pie slices of different odd sizes.

The programs for A032154, there is no canonical definition to state claims against.
-/

/-! ## A032154.P2548965768010707229

`A048766(A032021(n)^A171622(n+1))`
-/

namespace A032154.P2548965768010707229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((A032021 n : ℚ) ^ (A171622 (n + 1) : ℤ))).toNat

end

end A032154.P2548965768010707229

/-!
# A032155: Number of ways to partition n elements into pie slices of different sizes other than one.

The programs for A032155, there is no canonical definition to state claims against.
-/

/-! ## A032155.P10252779550135545445

`2*A032153(n)-A032140(n)`
-/

namespace A032155.P10252779550135545445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032153 n - A032140 n

end

end A032155.P10252779550135545445

/-! ## A032155.P17118206650267324062

`A004277(A032153(n))-A032140(n)`
-/

namespace A032155.P17118206650267324062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032153 n).toNat - A032140 n

end

end A032155.P17118206650267324062

/-!
# A032156: "CGK" (necklace, element, unlabeled) transform of 2,2,2,2,...

The programs for A032156, there is no canonical definition to state claims against.
-/

/-! ## A032156.P7677103970975338817

`A176298(xor(A001550(n), A284549(n)))`
-/

namespace A032156.P7677103970975338817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176298 (Int.xor (A001550 n) (A284549 n)).toNat

end

end A032156.P7677103970975338817

/-!
# A032157: "CGK" (necklace, element, unlabeled) transform of 2,1,1,1,...

The programs for A032157, there is no canonical definition to state claims against.
-/

/-! ## A032157.P1120273773710247311

`2*A032232(n)-A080513(n)`
-/

namespace A032157.P1120273773710247311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032232 n - A080513 n

end

end A032157.P1120273773710247311

/-! ## A032157.P15390405794832468681

`2*A032232(n)-A008619(n+1)`
-/

namespace A032157.P15390405794832468681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032232 n - A008619 (n + 1)

end

end A032157.P15390405794832468681

/-! ## A032157.P1893565950733083565

`2*A032232(n)-(A110654(n)+1)`
-/

namespace A032157.P1893565950733083565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032232 n - (A110654 n + 1)

end

end A032157.P1893565950733083565

/-! ## A032157.P9290661893953374405

`2*A032232(n)-A123108(n+3)`
-/

namespace A032157.P9290661893953374405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032232 n - A123108 (n + 3)

end

end A032157.P9290661893953374405

/-! ## A032157.P12990120626611165852

`2*A032232(n)-A008611(∑[gcd(2, n)])`
-/

namespace A032157.P12990120626611165852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032232 n - A008611 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A032157.P12990120626611165852

/-!
# A032158: "CGK" (necklace, element, unlabeled) transform of 1,2,3,4,...

The programs for A032158, there is no canonical definition to state claims against.
-/

/-! ## A032158.P16954893746893826862

`A087836(A149837(n))`
-/

namespace A032158.P16954893746893826862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087836 (A149837 n).toNat

end

end A032158.P16954893746893826862

/-! ## A032158.P9214565910770663963

`A003056(A005185(n+1)*A378004(n+1))`
-/

namespace A032158.P9214565910770663963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A005185 (n + 1) * A378004 (n + 1)).toNat

end

end A032158.P9214565910770663963

/-! ## A032158.P14619724831545826077

`A123707(n+1)+A055640(A032190(3*n+1))`
-/

namespace A032158.P14619724831545826077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123707 (n + 1) + A055640 (A032190 (3 * n + 1)).toNat

end

end A032158.P14619724831545826077

/-! ## A032158.P51625244846500378

`A329870(A091065(3*(n+1)))+A123707(n+1)`
-/

namespace A032158.P51625244846500378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329870 (A091065 (3 * (n + 1))).toNat + A123707 (n + 1)

end

end A032158.P51625244846500378

/-!
# A032160: Number of rooted compound windmills with n nodes where any 2 submills extending from the same node are different.

The programs for A032160, there is no canonical definition to state claims against.
-/

/-! ## A032160.P7799384568328272924

`A083382(A201631(n+1)+A003432(n))`
-/

namespace A032160.P7799384568328272924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A201631 (n + 1) + A003432 n).toNat

end

end A032160.P7799384568328272924

/-! ## A032160.P14634750745830235380

`A106432(A039808(n+1))`
-/

namespace A032160.P14634750745830235380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A039808 (n + 1)).toNat

end

end A032160.P14634750745830235380

/-! ## A032160.P3729119226888357973

`A003056(ceil(sqrt(A304185(n))))`
-/

namespace A032160.P3729119226888357973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌈Real.sqrt (A304185 n : ℝ)⌉.toNat

end

end A032160.P3729119226888357973

/-! ## A032160.P3055200469673210384

`A257639(ceil(sqrt(A122400(n))))`
-/

namespace A032160.P3055200469673210384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 ⌈Real.sqrt (A122400 n : ℝ)⌉.toNat

end

end A032160.P3055200469673210384

/-! ## A032160.P10728838600856137970

`A051889(or(A008763(n), A261664(n)))`
-/

namespace A032160.P10728838600856137970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (Int.lor (A008763 n) (A261664 n)).toNat

end

end A032160.P10728838600856137970

/-!
# A032161: Number of rooted compound windmills with n nodes and leaves of 2 colors where any 2 submills extending from the same node are different.

The programs for A032161, there is no canonical definition to state claims against.
-/

/-! ## A032161.P3472776395063223975

`A000267(A205580(n))`
-/

namespace A032161.P3472776395063223975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A205580 n).toNat

end

end A032161.P3472776395063223975

/-! ## A032161.P11843130535379579142

`A335420(A083147(n+1))+A293748(n)`
-/

namespace A032161.P11843130535379579142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335420 (A083147 (n + 1)).toNat + A293748 n

end

end A032161.P11843130535379579142

/-!
# A032162: Shifts left 2 places under "CGK" (necklace, element, unlabeled) transform.

The programs for A032162, there is no canonical definition to state claims against.
-/

/-! ## A032162.P16905814334933897364

`A083023(A369547(n+1))`
-/

namespace A032162.P16905814334933897364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A369547 (n + 1)).toNat

end

end A032162.P16905814334933897364

/-! ## A032162.P2981837868105115689

`A105224(A151425(n)+3)`
-/

namespace A032162.P2981837868105115689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A151425 n + 3).toNat

end

end A032162.P2981837868105115689

/-! ## A032162.P17333423164092794792

`A123576(A023437(n)+6)`
-/

namespace A032162.P17333423164092794792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123576 (A023437 n + 6).toNat

end

end A032162.P17333423164092794792

/-!
# A032163: Number of series-reduced planted compound windmills with n leaves of 2 colors where any 2 submills extending from the same node are different.

The programs for A032163, there is no canonical definition to state claims against.
-/

/-! ## A032163.P17257202189930981740

`A216265(∑[4^n])-(n-2)`
-/

namespace A032163.P17257202189930981740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216265 (∑ j ∈ Finset.range (n + 1), f1 j) - ((n : ℤ) - 2)

end

end A032163.P17257202189930981740

/-! ## A032163.P2403379135081616033

`A321445(n)+A249728(A321446(n))`
-/

namespace A032163.P2403379135081616033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321445 n + A249728 (A321446 n).toNat

end

end A032163.P2403379135081616033

/-! ## A032163.P9902717443048652625

`A033183(A217340(n+1))+A003080(n)`
-/

namespace A032163.P9902717443048652625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A217340 (n + 1)).toNat + A003080 n

end

end A032163.P9902717443048652625

/-!
# A032164: Number of aperiodic necklaces of n beads of 6 colors; dimensions of free Lie algebras.

The programs for A032164, there is no canonical definition to state claims against.
-/

/-! ## A032164.P6025123238117538049

`A054721(n*a(floor(acot(n))))/n` with `a(0)=1`
-/

namespace A032164.P6025123238117538049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A054721 (SequenceMachineLib.roundAway ((n : ℚ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat)).toNat : ℚ) / (n : ℚ)

end

end A032164.P6025123238117538049

/-! ## A032164.P5118810959098056354

`A054721(n)/A028310(n)`
-/

namespace A032164.P5118810959098056354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054721 n : ℚ) / (A028310 n : ℚ)

end

end A032164.P5118810959098056354

/-! ## A032164.P13549204902154725416

`A054721(n)/A123108(2*n)`
-/

namespace A032164.P13549204902154725416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054721 n : ℚ) / (A123108 (2 * n) : ℚ)

end

end A032164.P13549204902154725416

/-! ## A032164.P8292852437599734615

`A054721(n)/(A000007(n)+n)`
-/

namespace A032164.P8292852437599734615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054721 n : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A032164.P8292852437599734615

/-! ## A032164.P4065299077108033158

`A054721(n)/(A004277(n)-n)`
-/

namespace A032164.P4065299077108033158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054721 n : ℚ) / (A004277 n - (n : ℤ) : ℚ)

end

end A032164.P4065299077108033158

/-! ## A032164.P15315304118613720998

`A054721(n)/A007318(A000124(n))`
-/

namespace A032164.P15315304118613720998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054721 n : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A032164.P15315304118613720998

/-! ## A032164.P636962542473749113

`A054721(n)/A004525(A004277(n))`
-/

namespace A032164.P636962542473749113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054721 n : ℚ) / (A004525 (A004277 n).toNat : ℚ)

end

end A032164.P636962542473749113

/-! ## A032164.P8029714497732499892

`A054721(n)/A008619(A004275(n))`
-/

namespace A032164.P8029714497732499892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054721 n : ℚ) / (A008619 (A004275 n).toNat : ℚ)

end

end A032164.P8029714497732499892

/-! ## A032164.P15530628829398601033

`A054721(n)/A110654(A004280(n+1))`
-/

namespace A032164.P15530628829398601033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054721 n : ℚ) / (A110654 (A004280 (n + 1)).toNat : ℚ)

end

end A032164.P15530628829398601033

/-! ## A032164.P8303484536500195780

`A027376(n)/A054718(n)*A054721(n)`
-/

namespace A032164.P8303484536500195780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027376 n : ℚ) / (A054718 n : ℚ) * (A054721 n : ℚ)

end

end A032164.P8303484536500195780

/-! ## A032164.P8382588959379201951

`A054721(n)/A000196(A002522(n))`
-/

namespace A032164.P8382588959379201951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054721 n : ℚ) / (A000196 (A002522 n).toNat : ℚ)

end

end A032164.P8382588959379201951

/-!
# A032165: Number of aperiodic necklaces of n beads of 10 colors.

The programs for A032165, the canonical program `A032165.P8411231566625559700` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032165 has offset 1).

The definition of A032165 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032165.P8411231566625559700

`∑{d}[n+1, A008683(#)*10^((n+1)/#)/(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A032165

/-- `∑{d}[n+1, A008683(#)*10^((n+1)/#)/(n+1)]` -/
def P8411231566625559700.Spec : Prop :=
  ∀ n, P8411231566625559700.a n = (A032165 (n + 1) : ℝ)

end A032165

/-! ## A032165.P7517288645836244954

`A218127(n+1)/(n+1)`
-/

namespace A032165.P7517288645836244954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218127 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A032165.P7517288645836244954

namespace A032165

/-- `A218127(n+1)/(n+1)` -/
def P7517288645836244954.Spec : Prop :=
  ∀ n, P7517288645836244954.a n = (A032165 (n + 1) : ℚ)

end A032165

/-! ## A032165.P8778750806749193039

`record[A218127(A133310(n))/A133310(n)]`
-/

namespace A032165.P8778750806749193039
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218127 (A133310 n).toNat : ℚ) / (A133310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032165.P8778750806749193039

namespace A032165

/-- `record[A218127(A133310(n))/A133310(n)]` -/
def P8778750806749193039.Spec : Prop :=
  ∀ n, P8778750806749193039.a n = (A032165 (n + 1) : ℚ)

end A032165

/-! ## A032165.P4809381065722969693

`record[A218127(A152271(n))/A152271(n)]`
-/

namespace A032165.P4809381065722969693
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218127 (A152271 n).toNat : ℚ) / (A152271 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032165.P4809381065722969693

namespace A032165

/-- `record[A218127(A152271(n))/A152271(n)]` -/
def P4809381065722969693.Spec : Prop :=
  ∀ n, P4809381065722969693.a n = (A032165 (n + 1) : ℚ)

end A032165

/-! ## A032165.P4998948665096505186

`A074650(A056000(n+6)+1)`
-/

namespace A032165.P4998948665096505186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (A056000 (n + 6) + 1).toNat

end

end A032165.P4998948665096505186

namespace A032165

/-- `A074650(A056000(n+6)+1)` -/
def P4998948665096505186.Spec : Prop :=
  ∀ n, P4998948665096505186.a n = A032165 (n + 1)

end A032165

/-! ## A032165.P2963821560752946881

`A074650(A052905(n+7)-4)`
-/

namespace A032165.P2963821560752946881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (A052905 (n + 7) - 4).toNat

end

end A032165.P2963821560752946881

namespace A032165

/-- `A074650(A052905(n+7)-4)` -/
def P2963821560752946881.Spec : Prop :=
  ∀ n, P2963821560752946881.a n = A032165 (n + 1)

end A032165

/-! ## A032165.P7399712224852279084

`A074650(n+1+A000217(n+9))`
-/

namespace A032165.P7399712224852279084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 ((n + 1 : ℤ) + A000217 (n + 9)).toNat

end

end A032165.P7399712224852279084

namespace A032165

/-- `A074650(n+1+A000217(n+9))` -/
def P7399712224852279084.Spec : Prop :=
  ∀ n, P7399712224852279084.a n = A032165 (n + 1)

end A032165

/-! ## A032165.P13162450557631976510

`A074650(A034856(n+8)+n+3)`
-/

namespace A032165.P13162450557631976510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (A034856 (n + 8) + (n + 3 : ℤ)).toNat

end

end A032165.P13162450557631976510

namespace A032165

/-- `A074650(A034856(n+8)+n+3)` -/
def P13162450557631976510.Spec : Prop :=
  ∀ n, P13162450557631976510.a n = A032165 (n + 1)

end A032165

/-! ## A032165.P4880626027135640086

`A074650(A184218(n+8)+A016777(n+6))`
-/

namespace A032165.P4880626027135640086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (A184218 (n + 8) + A016777 (n + 6)).toNat

end

end A032165.P4880626027135640086

namespace A032165

/-- `A074650(A184218(n+8)+A016777(n+6))` -/
def P4880626027135640086.Spec : Prop :=
  ∀ n, P4880626027135640086.a n = A032165 (n + 1)

end A032165

/-!
# A032166: Number of aperiodic necklaces of n beads of 11 colors.

The programs for A032166, the canonical program `A032166.P12907883571055922906` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032166 has offset 1).

The definition of A032166 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032166.P12907883571055922906

`∑{d}[n+1, A008683(#)*11^((n+1)/#)/(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A032166

/-- `∑{d}[n+1, A008683(#)*11^((n+1)/#)/(n+1)]` -/
def P12907883571055922906.Spec : Prop :=
  ∀ n, P12907883571055922906.a n = (A032166 (n + 1) : ℝ)

end A032166

/-! ## A032166.P3449804312839964153

`A074650(A056000(n+7))`
-/

namespace A032166.P3449804312839964153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (A056000 (n + 7)).toNat

end

end A032166.P3449804312839964153

namespace A032166

/-- `A074650(A056000(n+7))` -/
def P3449804312839964153.Spec : Prop :=
  ∀ n, P3449804312839964153.a n = A032166 (n + 1)

end A032166

/-! ## A032166.P9040726183089750784

`A074650(A000217(n+10)+n+1)`
-/

namespace A032166.P9040726183089750784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (A000217 (n + 10) + (n + 1 : ℤ)).toNat

end

end A032166.P9040726183089750784

namespace A032166

/-- `A074650(A000217(n+10)+n+1)` -/
def P9040726183089750784.Spec : Prop :=
  ∀ n, P9040726183089750784.a n = A032166 (n + 1)

end A032166

/-! ## A032166.P15570687150827322568

`A074650(A052905(n+7)+n+6)`
-/

namespace A032166.P15570687150827322568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (A052905 (n + 7) + (n + 6 : ℤ)).toNat

end

end A032166.P15570687150827322568

namespace A032166

/-- `A074650(A052905(n+7)+n+6)` -/
def P15570687150827322568.Spec : Prop :=
  ∀ n, P15570687150827322568.a n = A032166 (n + 1)

end A032166

/-! ## A032166.P10869587937124943223

`A074650(A034856(n+8)+A005408(n+6))`
-/

namespace A032166.P10869587937124943223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (A034856 (n + 8) + A005408 (n + 6)).toNat

end

end A032166.P10869587937124943223

namespace A032166

/-- `A074650(A034856(n+8)+A005408(n+6))` -/
def P10869587937124943223.Spec : Prop :=
  ∀ n, P10869587937124943223.a n = A032166 (n + 1)

end A032166

/-! ## A032166.P10366812754492020055

`A074650(A034856(n+8)+A004273(n+7))`
-/

namespace A032166.P10366812754492020055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (A034856 (n + 8) + A004273 (n + 7)).toNat

end

end A032166.P10366812754492020055

namespace A032166

/-- `A074650(A034856(n+8)+A004273(n+7))` -/
def P10366812754492020055.Spec : Prop :=
  ∀ n, P10366812754492020055.a n = A032166 (n + 1)

end A032166

/-!
# A032167: Number of aperiodic necklaces of n beads of 12 colors.

The programs for A032167, the canonical program `A032167.P13318964423932698617` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032167 has offset 1).

The definition of A032167 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032167.P13318964423932698617

`∑{d}[n+1, A008683(#)*12^((n+1)/#)/(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A032167

/-- `∑{d}[n+1, A008683(#)*12^((n+1)/#)/(n+1)]` -/
def P13318964423932698617.Spec : Prop :=
  ∀ n, P13318964423932698617.a n = (A032167 (n + 1) : ℝ)

end A032167

/-! ## A032167.P11548563448904666137

`A074650(eq[11, A193592(n)])`
-/

namespace A032167.P11548563448904666137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032167.P11548563448904666137

namespace A032167

/-- `A074650(eq[11, A193592(n)])` -/
def P11548563448904666137.Spec : Prop :=
  ∀ n, P11548563448904666137.a n = A032167 (n + 1)

end A032167

/-! ## A032167.P8323848993737299210

`A074650(eq[12, A219347(n)])`
-/

namespace A032167.P8323848993737299210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032167.P8323848993737299210

namespace A032167

/-- `A074650(eq[12, A219347(n)])` -/
def P8323848993737299210.Spec : Prop :=
  ∀ n, P8323848993737299210.a n = A032167 (n + 1)

end A032167

/-! ## A032167.P8704060427636858704

`A074650(A056000(n+8)-1)`
-/

namespace A032167.P8704060427636858704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (A056000 (n + 8) - 1).toNat

end

end A032167.P8704060427636858704

namespace A032167

/-- `A074650(A056000(n+8)-1)` -/
def P8704060427636858704.Spec : Prop :=
  ∀ n, P8704060427636858704.a n = A032167 (n + 1)

end A032167

/-! ## A032167.P12590790412190555400

`A074650(A000217(n+11)+n+1)`
-/

namespace A032167.P12590790412190555400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (A000217 (n + 11) + (n + 1 : ℤ)).toNat

end

end A032167.P12590790412190555400

namespace A032167

/-- `A074650(A000217(n+11)+n+1)` -/
def P12590790412190555400.Spec : Prop :=
  ∀ n, P12590790412190555400.a n = A032167 (n + 1)

end A032167

/-! ## A032167.P199386409817296794

`A074650(A005843(n+1)+A000096(n+9)+11)`
-/

namespace A032167.P199386409817296794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (A005843 (n + 1) + (A000096 (n + 9) + 11)).toNat

end

end A032167.P199386409817296794

namespace A032167

/-- `A074650(A005843(n+1)+A000096(n+9)+11)` -/
def P199386409817296794.Spec : Prop :=
  ∀ n, P199386409817296794.a n = A032167 (n + 1)

end A032167

/-!
# A032168: Number of aperiodic necklaces of n beads of 2 colors, 10 of them black.

The programs for A032168, there is no canonical definition to state claims against.
-/

/-! ## A032168.P2375311373516595684

`A051168(eq[11, A128227(n)])`
-/

namespace A032168.P2375311373516595684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032168.P2375311373516595684

/-! ## A032168.P857423630397146248

`A051168(A000217(n+12)-(n+2))`
-/

namespace A032168.P857423630397146248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A000217 (n + 12) - (n + 2 : ℤ)).toNat

end

end A032168.P857423630397146248

/-! ## A032168.P10839181340337157333

`A051168(eq[11, A193592(n)])`
-/

namespace A032168.P10839181340337157333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032168.P10839181340337157333

/-! ## A032168.P6145474746711459016

`A051168(A000124(n+12)-12)`
-/

namespace A032168.P6145474746711459016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A000124 (n + 12) - 12).toNat

end

end A032168.P6145474746711459016

/-! ## A032168.P4741624402574642870

`A051168(eq[20, A185782(n+1)])`
-/

namespace A032168.P4741624402574642870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032168.P4741624402574642870

/-!
# A032169: Number of aperiodic necklaces of n beads of 2 colors, 11 of them black.

The programs for A032169, the canonical program `A032169.P12813008746095503041` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032169 has offset 12).

The definition of A032169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032169.P12813008746095503041

`floor(C(n+11, 10)/11)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032169

/-- `floor(C(n+11, 10)/11)` -/
def P12813008746095503041.Spec : Prop :=
  ∀ n, P12813008746095503041.a n = A032169 (n + 12)

theorem P12813008746095503041.correct : P12813008746095503041.Spec := by
  intro n
  simp only [A032169, Nat.add_sub_cancel]

end A032169

/-! ## A032169.P5982486611193118581

`round(C(n+11, 10)/11)`
-/

namespace A032169.P5982486611193118581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 11) 10 : ℚ) / 11)

end

end A032169.P5982486611193118581

namespace A032169

/-- `round(C(n+11, 10)/11)` -/
def P5982486611193118581.Spec : Prop :=
  ∀ n, P5982486611193118581.a n = A032169 (n + 12)

end A032169

/-! ## A032169.P5381523371752785960

`floor(A001288(n)/(n+1))`
-/

namespace A032169.P5381523371752785960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001288 (n + 11) : ℚ) / (n + 1 : ℚ)⌋

end

end A032169.P5381523371752785960

namespace A032169

/-- `floor(A001288(n)/(n+1))` -/
def P5381523371752785960.Spec : Prop :=
  ∀ n, P5381523371752785960.a n = A032169 (n + 12)

end A032169

/-! ## A032169.P6838471214821869414

`floor(∑[∑[A000582(n+9)]]/(n+1))`
-/

namespace A032169.P6838471214821869414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A032169.P6838471214821869414

namespace A032169

/-- `floor(∑[∑[A000582(n+9)]]/(n+1))` -/
def P6838471214821869414.Spec : Prop :=
  ∀ n, P6838471214821869414.a n = A032169 (n + 12)

end A032169

/-! ## A032169.P425136026714214522

`floor(A001287(n+1)/11)`
-/

namespace A032169.P425136026714214522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001287 (n + 1 + 10) : ℚ) / 11⌋

end

end A032169.P425136026714214522

namespace A032169

/-- `floor(A001287(n+1)/11)` -/
def P425136026714214522.Spec : Prop :=
  ∀ n, P425136026714214522.a n = A032169 (n + 12)

theorem P425136026714214522.correct : P425136026714214522.Spec := by
  intro n
  simp only [A032169, Nat.add_sub_cancel, A032169.P425136026714214522.a, A032169.P12813008746095503041.a, A001287, A001287.P7309496825709961420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A032169

/-! ## A032169.P10217797034989971186

`A051168(A000217(n+12)+n+1)`
-/

namespace A032169.P10217797034989971186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A000217 (n + 12) + (n + 1 : ℤ)).toNat

end

end A032169.P10217797034989971186

namespace A032169

/-- `A051168(A000217(n+12)+n+1)` -/
def P10217797034989971186.Spec : Prop :=
  ∀ n, P10217797034989971186.a n = A032169 (n + 12)

end A032169

/-!
# A032170: "CHK" (necklace, identity, unlabeled) transform of 1, 2, 3, 4, ...

The programs for A032170, the canonical program `A032170.P14058468955918342833` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032170 has offset 1).

The definition of A032170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032170.P14058468955918342833

`1/(n+1)*∑{d}[n+1, A008683((n+1)/#)*A004146(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A032170

/-- `1/(n+1)*∑{d}[n+1, A008683((n+1)/#)*A004146(#)]` -/
def P14058468955918342833.Spec : Prop :=
  ∀ n, P14058468955918342833.a n = (A032170 (n + 1) : ℚ)

end A032170

/-! ## A032170.P2603049946151549635

`A203853(n+1)/A373565(n)`
-/

namespace A032170.P2603049946151549635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203853 (n + 1) : ℚ) / (A373565 n : ℚ)

end

end A032170.P2603049946151549635

namespace A032170

/-- `A203853(n+1)/A373565(n)` -/
def P2603049946151549635.Spec : Prop :=
  ∀ n, P2603049946151549635.a n = (A032170 (n + 1) : ℚ)

end A032170

/-! ## A032170.P15104117630324790390

`gcd(A130706(n), A203853(n+1))`
-/

namespace A032170.P15104117630324790390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A203853 (n + 1))

end

end A032170.P15104117630324790390

namespace A032170

/-- `gcd(A130706(n), A203853(n+1))` -/
def P15104117630324790390.Spec : Prop :=
  ∀ n, (P15104117630324790390.a n : ℤ) = A032170 (n + 1)

end A032170

/-! ## A032170.P15868938776135717269

`A203853(n+1)/gcd(2, A008578(n+1))`
-/

namespace A032170.P15868938776135717269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203853 (n + 1) : ℚ) / (Int.gcd 2 (A008578 (n + 1)) : ℚ)

end

end A032170.P15868938776135717269

namespace A032170

/-- `A203853(n+1)/gcd(2, A008578(n+1))` -/
def P15868938776135717269.Spec : Prop :=
  ∀ n, P15868938776135717269.a n = (A032170 (n + 1) : ℚ)

end A032170

/-! ## A032170.P13539219340089189650

`A203853(n+1)/A000034(C(2, n+1))`
-/

namespace A032170.P13539219340089189650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203853 (n + 1) : ℚ) / (A000034 (Nat.choose 2 (n + 1)) : ℚ)

end

end A032170.P13539219340089189650

namespace A032170

/-- `A203853(n+1)/A000034(C(2, n+1))` -/
def P13539219340089189650.Spec : Prop :=
  ∀ n, P13539219340089189650.a n = (A032170 (n + 1) : ℚ)

end A032170

/-! ## A032170.P1008572089484433167

`∑{d}[n+1, A008683(#)*A032198((n+1)/#)]`
-/

namespace A032170.P1008572089484433167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A032198 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A032170.P1008572089484433167

namespace A032170

/-- `∑{d}[n+1, A008683(#)*A032198((n+1)/#)]` -/
def P1008572089484433167.Spec : Prop :=
  ∀ n, P1008572089484433167.a n = A032170 (n + 1)

end A032170

/-! ## A032170.P12913515136683370119

`∑{d}[n+1, A099894(#-1)*A324485((n+1)/#)]`
-/

namespace A032170.P12913515136683370119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A324485 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A032170.P12913515136683370119

namespace A032170

/-- `∑{d}[n+1, A099894(#-1)*A324485((n+1)/#)]` -/
def P12913515136683370119.Spec : Prop :=
  ∀ n, P12913515136683370119.a n = A032170 (n + 1)

end A032170

/-! ## A032170.P9248925164044619539

`A203853(n+1)-A000038(A028242(n))`
-/

namespace A032170.P9248925164044619539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203853 (n + 1) - A000038 (A028242 n).toNat

end

end A032170.P9248925164044619539

namespace A032170

/-- `A203853(n+1)-A000038(A028242(n))` -/
def P9248925164044619539.Spec : Prop :=
  ∀ n, P9248925164044619539.a n = A032170 (n + 1)

end A032170

/-! ## A032170.P5066171508340130123

`A203853(n+1)/A001511(A008578(n+1))`
-/

namespace A032170.P5066171508340130123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203853 (n + 1) : ℚ) / (A001511 (A008578 (n + 1)).toNat : ℚ)

end

end A032170.P5066171508340130123

namespace A032170

/-- `A203853(n+1)/A001511(A008578(n+1))` -/
def P5066171508340130123.Spec : Prop :=
  ∀ n, P5066171508340130123.a n = (A032170 (n + 1) : ℚ)

end A032170

/-! ## A032170.P18034787194315824025

`A203853(n+1)/A001511(A015919(n+1))`
-/

namespace A032170.P18034787194315824025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203853 (n + 1) : ℚ) / (A001511 (A015919 (n + 1)).toNat : ℚ)

end

end A032170.P18034787194315824025

namespace A032170

/-- `A203853(n+1)/A001511(A015919(n+1))` -/
def P18034787194315824025.Spec : Prop :=
  ∀ n, P18034787194315824025.a n = (A032170 (n + 1) : ℚ)

end A032170

/-! ## A032170.P3757752787532705128

`A203853(n+1)-A084099(n)*A209229(n)`
-/

namespace A032170.P3757752787532705128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203853 (n + 1) - A084099 n * A209229 n

end

end A032170.P3757752787532705128

namespace A032170

/-- `A203853(n+1)-A084099(n)*A209229(n)` -/
def P3757752787532705128.Spec : Prop :=
  ∀ n, P3757752787532705128.a n = A032170 (n + 1)

end A032170

/-! ## A032170.P16330371140043173343

`A203853(n+1)/A014963(A001175(A001175(n+1)))`
-/

namespace A032170.P16330371140043173343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203853 (n + 1) : ℚ) / (A014963 (A001175 (A001175 (n + 1)).toNat).toNat : ℚ)

end

end A032170.P16330371140043173343

namespace A032170

/-- `A203853(n+1)/A014963(A001175(A001175(n+1)))` -/
def P16330371140043173343.Spec : Prop :=
  ∀ n, P16330371140043173343.a n = (A032170 (n + 1) : ℚ)

end A032170

/-!
# A032171: Number of rooted compound windmills (mobiles) of n nodes with no symmetries.

The programs for A032171, there is no canonical definition to state claims against.
-/

/-! ## A032171.P3969003973814044274

`A005378(A027852(n+1)%A141080(n+3))`
-/

namespace A032171.P3969003973814044274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (Int.tmod (A027852 (n + 1)) (A141080 (n + 3))).toNat

end

end A032171.P3969003973814044274

/-! ## A032171.P1098871679024546751

`A342517(A373051(n+2))`
-/

namespace A032171.P1098871679024546751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 (A373051 (n + 2)).toNat

end

end A032171.P1098871679024546751

/-! ## A032171.P3866936048514487110

`A342517(or(1, ∑[A006463(n)]))`
-/

namespace A032171.P3866936048514487110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 (Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A032171.P3866936048514487110

/-! ## A032171.P4795941386159639221

`A005041(A002995(n)*A036717(n))`
-/

namespace A032171.P4795941386159639221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A002995 n * A036717 n).toNat

end

end A032171.P4795941386159639221

/-!
# A032172: Number of rooted compound windmills with n nodes and leaves of 2 colors with no symmetries.

The programs for A032172, there is no canonical definition to state claims against.
-/

/-! ## A032172.P4953362531571264277

`A233583(Δ[A148323(n)]+1)`
-/

namespace A032172.P4953362531571264277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (f1 (n + 1) - f1 n + 1).toNat

end

end A032172.P4953362531571264277

/-! ## A032172.P16374198404652148571

`A272602(n)+A085392(A330042(n+1))`
-/

namespace A032172.P16374198404652148571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272602 n + A085392 (A330042 (n + 1)).toNat

end

end A032172.P16374198404652148571

/-! ## A032172.P15055518415569976256

`A116538(A369296(n))+A003051(A004148(n))`
-/

namespace A032172.P15055518415569976256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116538 (A369296 n).toNat + A003051 (A004148 n).toNat

end

end A032172.P15055518415569976256

/-!
# A032173: Sequence (a(n): n >= 1) that shifts left 2 places under the "CHK" (necklace, identity, unlabeled) transform and has initial terms a(1) = a(2) = 1.

The programs for A032173, there is no canonical definition to state claims against.
-/

/-! ## A032173.P719119448823019681

`A129989(A329699(n))`
-/

namespace A032173.P719119448823019681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129989 (A329699 n).toNat

end

end A032173.P719119448823019681

/-! ## A032173.P129948949171588758

`ceil(A103431(A000108(n))/4)`
-/

namespace A032173.P129948949171588758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A103431 (A000108 n).toNat : ℚ) / 4⌉

end

end A032173.P129948949171588758

/-! ## A032173.P2258573305026128988

`A120882(A329479(n+1)+1)`
-/

namespace A032173.P2258573305026128988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120882 (A329479 (n + 1) + 1).toNat

end

end A032173.P2258573305026128988

/-! ## A032173.P8421159571776990308

`floor(∑[A048138(A079007(n))/5])+1`
-/

namespace A032173.P8421159571776990308
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048138 (A079007 n).toNat : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1

end

end A032173.P8421159571776990308

/-! ## A032173.P11770815500600243180

`A144157(A000383(n))+A000055(n)`
-/

namespace A032173.P11770815500600243180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144157 (A000383 n).toNat + A000055 n

end

end A032173.P11770815500600243180

/-!
# A032174: Number of series-reduced planted compound windmills with n leaves of 2 colors with no symmetries.

The programs for A032174, there is no canonical definition to state claims against.
-/

/-! ## A032174.P16368564594955142576

`3*A329906(a(n-1))` with `a(0)=2, a(1)=1, a(2)=4`
-/

namespace A032174.P16368564594955142576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 4] fun n a =>
  3 * A329906 (a (n - 1)).toNat

end

end A032174.P16368564594955142576

/-! ## A032174.P11547481097136609162

`A102885(A150263(n))`
-/

namespace A032174.P11547481097136609162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102885 (A150263 n).toNat

end

end A032174.P11547481097136609162

/-!
# A032175: Number of connected functions of n points with no symmetries.

The programs for A032175, there is no canonical definition to state claims against.
-/

/-! ## A032175.P86790962744612524

`A032177(n+1)+Δ[A196118(n)]`
-/

namespace A032175.P86790962744612524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032177 (n + 1) + (f1 (n + 1) - f1 n)

end

end A032175.P86790962744612524

/-! ## A032175.P2455196093260811388

`A032177(n+1)+A004111(n+1)`
-/

namespace A032175.P2455196093260811388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032177 (n + 1) + A004111 (n + 1)

end

end A032175.P2455196093260811388

/-! ## A032175.P36554850306404684

`A318758(A133263(n))+A032177(n+1)`
-/

namespace A032175.P36554850306404684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A133263 n).toNat + A032177 (n + 1)

end

end A032175.P36554850306404684

/-! ## A032175.P8081056192098544033

`A032177(n+1)+A196118(n+1)-A196118(n)`
-/

namespace A032175.P8081056192098544033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032177 (n + 1) + (A196118 (n + 1) - A196118 n)

end

end A032175.P8081056192098544033

/-! ## A032175.P4170906105682464915

`A116380(n+1)+A032177(n+1)%A127120(2*n)`
-/

namespace A032175.P4170906105682464915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116380 (n + 1) + Int.tmod (A032177 (n + 1)) (A127120 (2 * n))

end

end A032175.P4170906105682464915

/-!
# A032176: Functions of n points with no symmetries.

The programs for A032176, there is no canonical definition to state claims against.
-/

/-! ## A032176.P10918873300182601435

`A320536(A063636(n+1)+∑{e}[n+1, #])`
-/

namespace A032176.P10918873300182601435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A063636 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A032176.P10918873300182601435

/-! ## A032176.P17892973493485366457

`A320536(A241416(n)+A063636(n+1))`
-/

namespace A032176.P17892973493485366457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A241416 n + A063636 (n + 1)).toNat

end

end A032176.P17892973493485366457

/-! ## A032176.P10065874412381772870

`A320536(A262082(n)+A063636(n+1))`
-/

namespace A032176.P10065874412381772870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A262082 n + A063636 (n + 1)).toNat

end

end A032176.P10065874412381772870

/-! ## A032176.P6219833071653371497

`A320536(A292189(n)+A063636(n+1))`
-/

namespace A032176.P6219833071653371497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A292189 n + A063636 (n + 1)).toNat

end

end A032176.P6219833071653371497

/-! ## A032176.P16856533715845582932

`A320536(A309862(n)+A063636(n+1))`
-/

namespace A032176.P16856533715845582932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A309862 n + A063636 (n + 1)).toNat

end

end A032176.P16856533715845582932

/-!
# A032177: Number of connected functions of n points with no fixed points and with no symmetries.

The programs for A032177, there is no canonical definition to state claims against.
-/

/-! ## A032177.P17743935971509222590

`A032175(n+1)-A004111(n+1)`
-/

namespace A032177.P17743935971509222590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032175 (n + 1) - A004111 (n + 1)

end

end A032177.P17743935971509222590

/-! ## A032177.P11192662011570682686

`A032175(n+1)-Δ[A196118(n)]`
-/

namespace A032177.P11192662011570682686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032175 (n + 1) - (f1 (n + 1) - f1 n)

end

end A032177.P11192662011570682686

/-! ## A032177.P14182276905117389103

`A032175(n+1)-A318758(A133263(n))`
-/

namespace A032177.P14182276905117389103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032175 (n + 1) - A318758 (A133263 n).toNat

end

end A032177.P14182276905117389103

/-! ## A032177.P13543727956015007154

`A032175(n+1)-A318758(A238531(n+1))`
-/

namespace A032177.P13543727956015007154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032175 (n + 1) - A318758 (A238531 (n + 1)).toNat

end

end A032177.P13543727956015007154

/-! ## A032177.P9582284786943940783

`A032175(n+1)+A196118(n)-A196118(n+1)`
-/

namespace A032177.P9582284786943940783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032175 (n + 1) + (A196118 n - A196118 (n + 1))

end

end A032177.P9582284786943940783

/-!
# A032179: Number of necklaces with n labeled beads of 3 colors.

The programs for A032179, the canonical program `A032179.P9228765779684982084` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032179 has offset 1).

The definition of A032179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032179.P9228765779684982084

`3^(n+1)*n!`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032179

/-- `3^(n+1)*n!` -/
def P9228765779684982084.Spec : Prop :=
  ∀ n, (P9228765779684982084.a n : ℤ) = A032179 (n + 1)

theorem P9228765779684982084.correct : P9228765779684982084.Spec := by
  intro n
  simp only [A032179, Nat.add_sub_cancel]

end A032179

/-! ## A032179.P18013042323976306245

`3*3^n*n!`
-/

namespace A032179.P18013042323976306245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (3 ^ n * Nat.factorial n)

end

end A032179.P18013042323976306245

namespace A032179

/-- `3*3^n*n!` -/
def P18013042323976306245.Spec : Prop :=
  ∀ n, (P18013042323976306245.a n : ℤ) = A032179 (n + 1)

theorem P18013042323976306245.correct : P18013042323976306245.Spec := by
  intro n
  simp only [A032179, Nat.add_sub_cancel, A032179.P18013042323976306245.a, A032179.P9228765779684982084.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A032179

/-! ## A032179.P14145217956026183170

`∏[3*round(1/acot(n))]`
-/

namespace A032179.P14145217956026183170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032179.P14145217956026183170

namespace A032179

/-- `∏[3*round(1/acot(n))]` -/
def P14145217956026183170.Spec : Prop :=
  ∀ n, P14145217956026183170.a n = A032179 (n + 1)

end A032179

/-! ## A032179.P10856613912181208945

`∏[lcm(3, floor(3/acot(n)))]`
-/

namespace A032179.P10856613912181208945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032179.P10856613912181208945

namespace A032179

/-- `∏[lcm(3, floor(3/acot(n)))]` -/
def P10856613912181208945.Spec : Prop :=
  ∀ n, (P10856613912181208945.a n : ℤ) = A032179 (n + 1)

end A032179

/-! ## A032179.P13365434582322152213

`∏[a(n-1)+3]` with `a(0)=3, a(1)=3`
-/

namespace A032179.P13365434582322152213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032179.P13365434582322152213

namespace A032179

/-- `∏[a(n-1)+3]` -/
def P13365434582322152213.Spec : Prop :=
  ∀ n, (P13365434582322152213.a n : ℤ) = A032179 (n + 1)

end A032179

/-! ## A032179.P2971674079526085927

`3*n*a(n-1)` with `a(0)=3`
-/

namespace A032179.P2971674079526085927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  3 * (n * a (n - 1))

end

end A032179.P2971674079526085927

namespace A032179

/-- `3*n*a(n-1)` -/
def P2971674079526085927.Spec : Prop :=
  ∀ n, (P2971674079526085927.a n : ℤ) = A032179 (n + 1)

end A032179

/-! ## A032179.P8628087308068150037

`n!/3^-(n+1)`
-/

namespace A032179.P8628087308068150037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (3 : ℚ) ^ (-(n + 1 : ℤ) : ℤ)

end

end A032179.P8628087308068150037

namespace A032179

/-- `n!/3^-(n+1)` -/
def P8628087308068150037.Spec : Prop :=
  ∀ n, P8628087308068150037.a n = (A032179 (n + 1) : ℚ)

theorem P8628087308068150037.correct : P8628087308068150037.Spec := by
  intro n
  simp only [A032179, Nat.add_sub_cancel, A032179.P8628087308068150037.a, A032179.P9228765779684982084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A032179

/-! ## A032179.P1257237033927292823

`∏[3*gcd(n, (n+1)!)]`
-/

namespace A032179.P1257237033927292823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.gcd n (Nat.factorial (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032179.P1257237033927292823

namespace A032179

/-- `∏[3*gcd(n, (n+1)!)]` -/
def P1257237033927292823.Spec : Prop :=
  ∀ n, (P1257237033927292823.a n : ℤ) = A032179 (n + 1)

end A032179

/-! ## A032179.P2652813465108483586

`∏[3*(C(2, n+2)+n)]`
-/

namespace A032179.P2652813465108483586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032179.P2652813465108483586

namespace A032179

/-- `∏[3*(C(2, n+2)+n)]` -/
def P2652813465108483586.Spec : Prop :=
  ∀ n, (P2652813465108483586.a n : ℤ) = A032179 (n + 1)

end A032179

/-! ## A032179.P6104331356823470815

`∏[3*round((n+1)²/(n+2))]`
-/

namespace A032179.P6104331356823470815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (n + 2 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032179.P6104331356823470815

namespace A032179

/-- `∏[3*round((n+1)²/(n+2))]` -/
def P6104331356823470815.Spec : Prop :=
  ∀ n, P6104331356823470815.a n = A032179 (n + 1)

end A032179

/-!
# A032180: Number of ways to partition n labeled elements into 6 pie slices.

The programs for A032180, the canonical program `A032180.P12612180409227209886` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032180 has offset 6).

The definition of A032180 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000770, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A032180.P12612180409227209886

`120*A000770(n+6)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A032180

/-- `120*A000770(n+6)` -/
def P12612180409227209886.Spec : Prop :=
  ∀ n, P12612180409227209886.a n = A032180 (n + 6)

theorem P12612180409227209886.correct : P12612180409227209886.Spec := by
  intro n
  simp only [A032180, Nat.add_sub_cancel]

end A032180

/-! ## A032180.P6411742167657733186

`-A163626(A167499(n+4))`
-/

namespace A032180.P6411742167657733186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A163626 (A167499 (n + 4)).toNat

end

end A032180.P6411742167657733186

namespace A032180

/-- `-A163626(A167499(n+4))` -/
def P6411742167657733186.Spec : Prop :=
  ∀ n, P6411742167657733186.a n = A032180 (n + 6)

end A032180

/-! ## A032180.P1705211996268273231

`A053440(A167499(n+3)-1)`
-/

namespace A032180.P1705211996268273231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053440 (A167499 (n + 3) - 1).toNat

end

end A032180.P1705211996268273231

namespace A032180

/-- `A053440(A167499(n+3)-1)` -/
def P1705211996268273231.Spec : Prop :=
  ∀ n, P1705211996268273231.a n = A032180 (n + 6)

end A032180

/-! ## A032180.P14580677542700469597

`A028246(A055999(n+2)+12)`
-/

namespace A032180.P14580677542700469597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (A055999 (n + 2) + 12).toNat

end

end A032180.P14580677542700469597

namespace A032180

/-- `A028246(A055999(n+2)+12)` -/
def P14580677542700469597.Spec : Prop :=
  ∀ n, P14580677542700469597.a n = A032180 (n + 6)

end A032180

/-! ## A032180.P737668812620324414

`∑[-A162508(A167614(n+3)+2)]`
-/

namespace A032180.P737668812620324414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A162508 (A167614 (n + 3) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032180.P737668812620324414

namespace A032180

/-- `∑[-A162508(A167614(n+3)+2)]` -/
def P737668812620324414.Spec : Prop :=
  ∀ n, P737668812620324414.a n = A032180 (n + 6)

end A032180

/-! ## A032180.P2119452053235955359

`A130850(eq[5, A025581(n)])`
-/

namespace A032180.P2119452053235955359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032180.P2119452053235955359

namespace A032180

/-- `A130850(eq[5, A025581(n)])` -/
def P2119452053235955359.Spec : Prop :=
  ∀ n, P2119452053235955359.a n = A032180 (n + 6)

end A032180

/-! ## A032180.P17504632172624170140

`A130850(eq[32, A130321(n)])`
-/

namespace A032180.P17504632172624170140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032180.P17504632172624170140

namespace A032180

/-- `A130850(eq[32, A130321(n)])` -/
def P17504632172624170140.Spec : Prop :=
  ∀ n, P17504632172624170140.a n = A032180 (n + 6)

end A032180

/-!
# A032181: Number of ways to partition n labeled elements into pie slices each of at least 2 elements.

The programs for A032181, there is no canonical definition to state claims against.
-/

/-! ## A032181.P15359391641050504026

`A218585(n!*A218584(n+1))`
-/

namespace A032181.P15359391641050504026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218585 ((Nat.factorial n : ℤ) * A218584 (n + 1)).toNat

end

end A032181.P15359391641050504026

/-! ## A032181.P15239805455829882087

`A065710(A352826(3*n+1)+A001850(n))`
-/

namespace A032181.P15239805455829882087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065710 (A352826 (3 * n + 1) + A001850 n).toNat

end

end A032181.P15239805455829882087

/-!
# A032182: "CIJ" (necklace, indistinct, labeled) transform of 2,1,1,1...

The programs for A032182, there is no canonical definition to state claims against.
-/

/-! ## A032182.P14472525567702012034

`A248232(A340450(n))+1`
-/

namespace A032182.P14472525567702012034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248232 (A340450 n).toNat + 1

end

end A032182.P14472525567702012034

/-!
# A032183: "CIJ" (necklace, indistinct, labeled) transform of 3,3,3,3...

The programs for A032183, there is no canonical definition to state claims against.
-/

/-! ## A032183.P9221127623273042982

`3*A201354(n)`
-/

namespace A032183.P9221127623273042982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A201354 n

end

end A032183.P9221127623273042982

/-! ## A032183.P15649604053619691967

`lcm(3, A201354(A118759(n)))`
-/

namespace A032183.P15649604053619691967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A201354 (A118759 n).toNat)

end

end A032183.P15649604053619691967

/-! ## A032183.P5548097414484136764

`(5-A014963(4*n+2))*A032033(n)`
-/

namespace A032183.P5548097414484136764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - A014963 (4 * n + 2)) * A032033 n

end

end A032183.P5548097414484136764

/-! ## A032183.P6605063437942418351

`A000005(A100484(n+1))*A032033(n)`
-/

namespace A032183.P6605063437942418351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A100484 (n + 1)).toNat * A032033 n

end

end A032183.P6605063437942418351

/-! ## A032183.P12975143275011559366

`(A002262(A000124(n))+3)*A032033(n)`
-/

namespace A032183.P12975143275011559366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 (A000124 n).toNat + 3) * A032033 n

end

end A032183.P12975143275011559366

/-! ## A032183.P9990274156932448021

`(A020639(A000010(n+2))+2)*A032033(n)`
-/

namespace A032183.P9990274156932448021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (A000010 (n + 2)).toNat + 2) * A032033 n

end

end A032183.P9990274156932448021

/-! ## A032183.P14373155295566683978

`A367490(n+2)/(n+2)`
-/

namespace A032183.P14373155295566683978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367490 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A032183.P14373155295566683978

/-!
# A032184: a(n) = 2^n*(n-1)! for n > 1, a(1) = 1.

The programs for A032184, there is no canonical definition to state claims against.
-/

/-! ## A032184.P386742066550183747

`∏[C(2, n²)+2*n]`
-/

namespace A032184.P386742066550183747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n ^ 2) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032184.P386742066550183747

/-! ## A032184.P12219038561026574532

`∏[a(n-1)+2]` with `a(0)=1, a(1)=4, a(2)=4`
-/

namespace A032184.P12219038561026574532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032184.P12219038561026574532

/-! ## A032184.P5779949778159656080

`2*n*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A032184.P5779949778159656080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * (n * a (n - 1))

end

end A032184.P5779949778159656080

/-! ## A032184.P1824536594302996438

`∏[and(3, 2^n)+2*n]`
-/

namespace A032184.P1824536594302996438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (2 ^ n) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032184.P1824536594302996438

/-! ## A032184.P443526885834248476

`n!*record[and(-3, 2^n)]`
-/

namespace A032184.P443526885834248476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032184.P443526885834248476

/-! ## A032184.P18193165896531861057

`∏[(2*n)^ceil(acot(n-1))]`
-/

namespace A032184.P18193165896531861057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) ^ (⌈SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032184.P18193165896531861057

/-! ## A032184.P13082324318043804565

`∏[abs(2-n)+n+2]/4`
-/

namespace A032184.P13082324318043804565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (n : ℤ)| + (n + 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A032184.P13082324318043804565

/-! ## A032184.P9826745492914662627

`∏[(n+1)!%3+2*n]`
-/

namespace A032184.P9826745492914662627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) % 3 + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032184.P9826745492914662627

/-! ## A032184.P1835304233880191212

`∏[(2*n)^(2*n)^C(n, n²)]`
-/

namespace A032184.P1835304233880191212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ (2 * n) ^ Nat.choose n (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032184.P1835304233880191212

/-! ## A032184.P13021511400901130585

`∏[2*n+(n+1)*C(2, 2*n)]`
-/

namespace A032184.P13021511400901130585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (n + 1) * Nat.choose 2 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032184.P13021511400901130585

/-!
# A032185: Shifts left under "CIJ" (necklace, indistinct, labeled) transform.

The programs for A032185, there is no canonical definition to state claims against.
-/

/-! ## A032185.P9845421579589261526

`A036693(A107354(n))-2`
-/

namespace A032185.P9845421579589261526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036693 (A107354 n).toNat - 2

end

end A032185.P9845421579589261526

/-! ## A032185.P12644312813318047186

`A360392(A369140(n))-A000041(n)`
-/

namespace A032185.P12644312813318047186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (A369140 n).toNat - A000041 n

end

end A032185.P12644312813318047186

/-!
# A032186: Shifts left 2 places under "CIJ" (necklace, indistinct, labeled) transform.

The programs for A032186, there is no canonical definition to state claims against.
-/

/-! ## A032186.P16656304508990583069

`A028310(A122938(n)-A165071(n))`
-/

namespace A032186.P16656304508990583069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A122938 n - A165071 n).toNat

end

end A032186.P16656304508990583069

/-! ## A032186.P15028100838472359782

`A122938(n)-A227433(3*n+4)%A046802(n)`
-/

namespace A032186.P15028100838472359782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122938 n - Int.tmod (A227433 (3 * n + 4)) (A046802 n)

end

end A032186.P15028100838472359782

/-!
# A032187: Shifts left 3 places under "CIJ" (necklace, indistinct, labeled) transform.

The programs for A032187, there is no canonical definition to state claims against.
-/

/-! ## A032187.P7938955584864201724

`∑[A210717(n²)]+1`
-/

namespace A032187.P7938955584864201724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210717 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A032187.P7938955584864201724

/-! ## A032187.P9698898530764779090

`ceil(A224978(n+3)/9)`
-/

namespace A032187.P9698898530764779090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A224978 (n + 3) : ℚ) / 9⌉

end

end A032187.P9698898530764779090

/-! ## A032187.P17085102925256902377

`A025443((4^n+5)/3)+1`
-/

namespace A032187.P17085102925256902377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (SequenceMachineLib.roundAway ((4 ^ n + 5 : ℚ) / 3)).toNat + 1

end

end A032187.P17085102925256902377

/-! ## A032187.P2182783936693548614

`A325132(∑[C(n, ceil(n/2)+1)]+3)`
-/

namespace A032187.P2182783936693548614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (⌈(n : ℚ) / 2⌉ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325132 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A032187.P2182783936693548614

/-!
# A032188: Number of labeled series-reduced mobiles (circular rooted trees) with n leaves (root has degree 0 or >= 2).

The programs for A032188, there is no canonical definition to state claims against.
-/

/-! ## A032188.P12859520174404865729

`A032034(n+1)/2`
-/

namespace A032188.P12859520174404865729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032034 (n + 1) : ℚ) / 2

end

end A032188.P12859520174404865729

/-! ## A032188.P6323212748506468256

`ceil(A112487(n)/2)`
-/

namespace A032188.P6323212748506468256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112487 n : ℚ) / 2⌉

end

end A032188.P6323212748506468256

/-! ## A032188.P4570040071199432807

`A112487(A028310(n))/2`
-/

namespace A032188.P4570040071199432807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112487 (A028310 n).toNat : ℚ) / 2

end

end A032188.P4570040071199432807

/-! ## A032188.P12311265964348010716

`A112487(n)/(A057427(n)+1)`
-/

namespace A032188.P12311265964348010716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112487 n : ℚ) / (A057427 n + 1 : ℚ)

end

end A032188.P12311265964348010716

/-! ## A032188.P10920171084484373396

`A112487(A000007(n)+n)/2`
-/

namespace A032188.P10920171084484373396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112487 (A000007 n + (n : ℤ)).toNat : ℚ) / 2

end

end A032188.P10920171084484373396

/-! ## A032188.P7367377110671896506

`A112487(gcd(n, A000142(n)))/2`
-/

namespace A032188.P7367377110671896506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112487 (Int.gcd (n : ℤ) (A000142 n)) : ℚ) / 2

end

end A032188.P7367377110671896506

/-! ## A032188.P4264585682844103422

`A112487(n)/A020639(A001316(n))`
-/

namespace A032188.P4264585682844103422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112487 n : ℚ) / (A020639 (A001316 n).toNat : ℚ)

end

end A032188.P4264585682844103422

/-! ## A032188.P3304668044587587638

`A112487(n)/A020639(A008458(n))`
-/

namespace A032188.P3304668044587587638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112487 n : ℚ) / (A020639 (A008458 n).toNat : ℚ)

end

end A032188.P3304668044587587638

/-! ## A032188.P523751838364310004

`A112487(n)/A020639(A065385(n+1))`
-/

namespace A032188.P523751838364310004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112487 n : ℚ) / (A020639 (A065385 (n + 1)).toNat : ℚ)

end

end A032188.P523751838364310004

/-!
# A032189: Number of ways to partition n elements into pie slices each with an odd number of elements.

The programs for A032189, the canonical program `A032189.P10074528383651059138` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032189 has offset 1).

The definition of A032189 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A032189.P10074528383651059138

`A000358(n+1)-(1+(-1)^(n+1))/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A032189

/-- `A000358(n+1)-(1+(-1)^(n+1))/2` -/
def P10074528383651059138.Spec : Prop :=
  ∀ n, P10074528383651059138.a n = (A032189 (n + 1) : ℚ)

end A032189

/-! ## A032189.P1372716374646921029

`∑{d}[n+1, A060280(#)]`
-/

namespace A032189.P1372716374646921029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060280 d

end

end A032189.P1372716374646921029

namespace A032189

/-- `∑{d}[n+1, A060280(#)]` -/
def P1372716374646921029.Spec : Prop :=
  ∀ n, P1372716374646921029.a n = A032189 (n + 1)

end A032189

/-! ## A032189.P15378842473063115118

`A032190(n+1)+char[2*n]`
-/

namespace A032189.P15378842473063115118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032190 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A032189.P15378842473063115118

namespace A032189

/-- `A032190(n+1)+char[2*n]` -/
def P15378842473063115118.Spec : Prop :=
  ∀ n, P15378842473063115118.a n = A032189 (n + 1)

end A032189

/-! ## A032189.P13925978536310459096

`∑{d}[n+1, A006206(#)]-and(1, n)`
-/

namespace A032189.P13925978536310459096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006206 d - (Nat.land 1 n : ℤ)

end

end A032189.P13925978536310459096

namespace A032189

/-- `∑{d}[n+1, A006206(#)]-and(1, n)` -/
def P13925978536310459096.Spec : Prop :=
  ∀ n, P13925978536310459096.a n = A032189 (n + 1)

end A032189

/-! ## A032189.P9605467376610230808

`A059841(n)+A032190(n+1)`
-/

namespace A032189.P9605467376610230808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A032190 (n + 1)

end

end A032189.P9605467376610230808

namespace A032189

/-- `A059841(n)+A032190(n+1)` -/
def P9605467376610230808.Spec : Prop :=
  ∀ n, P9605467376610230808.a n = A032189 (n + 1)

end A032189

/-!
# A032190: Number of cyclic compositions of n into parts >= 2.

The programs for A032190, the canonical program `A032190.P15511744543848954843` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032190 has offset 1).

The definition of A032190 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A032190.P15511744543848954843

`A000358(n+1)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A032190

/-- `A000358(n+1)-1` -/
def P15511744543848954843.Spec : Prop :=
  ∀ n, P15511744543848954843.a n = A032190 (n + 1)

theorem P15511744543848954843.correct : P15511744543848954843.Spec := by
  intro n
  simp only [A032190, Nat.add_sub_cancel]

end A032190

/-! ## A032190.P9457927849285418361

`1/(n+1)*∑{d}[n+1, A000010((n+1)/#)*(A000045(#-1)+A000045(#+1)-1)]`
-/

namespace A032190.P9457927849285418361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * ((∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (A000045 (d - 1) + A000045 (d + 1) - 1) : ℤ) : ℚ)

end

end A032190.P9457927849285418361

namespace A032190

/-- `1/(n+1)*∑{d}[n+1, A000010((n+1)/#)*(A000045(#-1)+A000045(#+1)-1)]` -/
def P9457927849285418361.Spec : Prop :=
  ∀ n, P9457927849285418361.a n = (A032190 (n + 1) : ℚ)

end A032190

/-! ## A032190.P17214579933610448115

`A274017(n+1)-2`
-/

namespace A032190.P17214579933610448115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274017 (n + 1) - 2

end

end A032190.P17214579933610448115

namespace A032190

/-- `A274017(n+1)-2` -/
def P17214579933610448115.Spec : Prop :=
  ∀ n, P17214579933610448115.a n = A032190 (n + 1)

theorem P17214579933610448115.correct : P17214579933610448115.Spec := by
  intro n
  simp only [A032190, Nat.add_sub_cancel, A032190.P17214579933610448115.a, A032190.P15511744543848954843.a, A000358, A000358.P12025888969014246484.a, A274017, A274017.P17464544538274726371.f1, A274017.P17464544538274726371.a, A006206, A006206.P8021294066967588183.f1, A006206.P8021294066967588183.a, A000032, A000032.P8352177345629330861.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A032190

/-! ## A032190.P9720883493379732171

`∑{d}[n+1, A006206(#)]-1`
-/

namespace A032190.P9720883493379732171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006206 d - 1

end

end A032190.P9720883493379732171

namespace A032190

/-- `∑{d}[n+1, A006206(#)]-1` -/
def P9720883493379732171.Spec : Prop :=
  ∀ n, P9720883493379732171.a n = A032190 (n + 1)

theorem P9720883493379732171.correct : P9720883493379732171.Spec := by
  intro n
  simp only [A032190, Nat.add_sub_cancel, A032190.P9720883493379732171.f1, A032190.P9720883493379732171.a, A032190.P15511744543848954843.a, A000358, A000358.P12025888969014246484.a, A006206, A006206.P8021294066967588183.f1, A006206.P8021294066967588183.a, A000032, A000032.P8352177345629330861.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A274017, A274017.P17464544538274726371.f1, A274017.P17464544538274726371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A032190

/-! ## A032190.P11434712440162207729

`A032189(n+1)-A059841(n)`
-/

namespace A032190.P11434712440162207729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032189 (n + 1) - A059841 n

end

end A032190.P11434712440162207729

namespace A032190

/-- `A032189(n+1)-A059841(n)` -/
def P11434712440162207729.Spec : Prop :=
  ∀ n, P11434712440162207729.a n = A032190 (n + 1)

end A032190

/-! ## A032190.P16539327329288712929

`A032189(n+1)-A000035(n+1)`
-/

namespace A032190.P16539327329288712929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032189 (n + 1) - A000035 (n + 1)

end

end A032190.P16539327329288712929

namespace A032190

/-- `A032189(n+1)-A000035(n+1)` -/
def P16539327329288712929.Spec : Prop :=
  ∀ n, P16539327329288712929.a n = A032190 (n + 1)

end A032190

/-! ## A032190.P13703305862791488831

`A316660(n+1)-A079978(n+1)`
-/

namespace A032190.P13703305862791488831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316660 (n + 1) - A079978 (n + 1)

end

end A032190.P13703305862791488831

namespace A032190

/-- `A316660(n+1)-A079978(n+1)` -/
def P13703305862791488831.Spec : Prop :=
  ∀ n, P13703305862791488831.a n = A032190 (n + 1)

end A032190

/-! ## A032190.P12318914999961944267

`A008683(A000040(n+1))+A000358(n+1)`
-/

namespace A032190.P12318914999961944267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000040 (n + 1)).toNat + A000358 (n + 1)

end

end A032190.P12318914999961944267

namespace A032190

/-- `A008683(A000040(n+1))+A000358(n+1)` -/
def P12318914999961944267.Spec : Prop :=
  ∀ n, P12318914999961944267.a n = A032190 (n + 1)

end A032190

/-! ## A032190.P1729201222893808449

`A302050(A175791(n+1))+A000358(n+1)`
-/

namespace A032190.P1729201222893808449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A175791 (n + 1)).toNat + A000358 (n + 1)

end

end A032190.P1729201222893808449

namespace A032190

/-- `A302050(A175791(n+1))+A000358(n+1)` -/
def P1729201222893808449.Spec : Prop :=
  ∀ n, P1729201222893808449.a n = A032190 (n + 1)

end A032190

/-! ## A032190.P18582233389073450

`A302050(A180559(n+1))+A000358(n+1)`
-/

namespace A032190.P18582233389073450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A180559 (n + 1)).toNat + A000358 (n + 1)

end

end A032190.P18582233389073450

namespace A032190

/-- `A302050(A180559(n+1))+A000358(n+1)` -/
def P18582233389073450.Spec : Prop :=
  ∀ n, P18582233389073450.a n = A032190 (n + 1)

end A032190

/-! ## A032190.P17425739048586834292

`A302050(A175789(n+1))+A000358(n+1)`
-/

namespace A032190.P17425739048586834292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A175789 (n + 1)).toNat + A000358 (n + 1)

end

end A032190.P17425739048586834292

namespace A032190

/-- `A302050(A175789(n+1))+A000358(n+1)` -/
def P17425739048586834292.Spec : Prop :=
  ∀ n, P17425739048586834292.a n = A032190 (n + 1)

end A032190

/-! ## A032190.P17423349682443641461

`A106400(A059268(n))+∑{d}[n+1, A006206(#)]`
-/

namespace A032190.P17423349682443641461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A059268 n).toNat + ∑ d ∈ Nat.divisors (f1 n), A006206 d

end

end A032190.P17423349682443641461

namespace A032190

/-- `A106400(A059268(n))+∑{d}[n+1, A006206(#)]` -/
def P17423349682443641461.Spec : Prop :=
  ∀ n, P17423349682443641461.a n = A032190 (n + 1)

end A032190

/-! ## A032190.P15440804824351851651

`A208773(n+1)-(A208723(n+1)+1)`
-/

namespace A032190.P15440804824351851651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208773 (n + 1) - (A208723 (n + 1) + 1)

end

end A032190.P15440804824351851651

namespace A032190

/-- `A208773(n+1)-(A208723(n+1)+1)` -/
def P15440804824351851651.Spec : Prop :=
  ∀ n, P15440804824351851651.a n = A032190 (n + 1)

theorem P15440804824351851651.correct : P15440804824351851651.Spec := by
  intro n
  simp only [A032190, Nat.add_sub_cancel, A032190.P15440804824351851651.a, A032190.P15511744543848954843.a, A000358, A000358.P12025888969014246484.a, A208723, A208723.P13874436555582834245.f1, A208723.P13874436555582834245.a, A208773, A208773.P6564407814693536226.a, A000010, A000010.P4673923239450215316.a, A005248, A005248.P3255906601217542815.a, A274017, A274017.P17464544538274726371.f1, A274017.P17464544538274726371.a, A000032, A000032.P8352177345629330861.a, A003557, A003557.P6364735403900941810.a, A006206, A006206.P8021294066967588183.f1, A006206.P8021294066967588183.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A032190

/-!
# A032191: Number of necklaces with 6 black beads and n-6 white beads.

The programs for A032191, the canonical program `A032191.P8589819175621279169` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032191 has offset 6).

The definition of A032191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032191.P5196413862697570868

`ogf((1-x+x^2+4x^3+2x^4+3x^6+x^7+x^8)/(1-2x-x^2+3x^3+x^4-x^5-4x^6+3x^7+3x^8-4x^9-x^10+x^11+3x^12-x^13-2x^14+x^15))`
-/

namespace A032191.P5196413862697570868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, 4, 2, 0, 3, 1, 1] [1, -2, -1, 3, 1, -1, -4, 3, 3, -4, -1, 1, 3, -1, -2, 1] n

end

end A032191.P5196413862697570868

namespace A032191

/-- `ogf((1-x+x^2+4x^3+2x^4+3x^6+x^7+x^8)/(1-2x-x^2+3x^3+x^4-x^5-4x^6+3x^7+3x^8-4x^9-x^10+x^11+3x^12-x^13-2x^14+x^15))` -/
def P5196413862697570868.Spec : Prop :=
  ∀ n, P5196413862697570868.a n = A032191 (n + 6)

end A032191

/-! ## A032191.P8589819175621279169

`2*A005513(n+6)-A058187(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A032191

/-- `2*A005513(n+6)-A058187(n)` -/
def P8589819175621279169.Spec : Prop :=
  ∀ n, P8589819175621279169.a n = A032191 (n + 6)

theorem P8589819175621279169.correct : P8589819175621279169.Spec := by
  intro n
  simp only [A032191, Nat.add_sub_cancel]

end A032191

/-! ## A032191.P14267148071475492240

`2*A005513(n+6)-A000292(A008619(n))`
-/

namespace A032191.P14267148071475492240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005513 (n + 6) - A000292 (A008619 n).toNat

end

end A032191.P14267148071475492240

namespace A032191

/-- `2*A005513(n+6)-A000292(A008619(n))` -/
def P14267148071475492240.Spec : Prop :=
  ∀ n, P14267148071475492240.a n = A032191 (n + 6)

end A032191

/-! ## A032191.P8504584034774746730

`A037306(A000217(n+5)+6)`
-/

namespace A032191.P8504584034774746730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A000217 (n + 5) + 6).toNat

end

end A032191.P8504584034774746730

namespace A032191

/-- `A037306(A000217(n+5)+6)` -/
def P8504584034774746730.Spec : Prop :=
  ∀ n, P8504584034774746730.a n = A032191 (n + 6)

end A032191

/-! ## A032191.P15982735539177962438

`A037306(A000096(n+5)-(n-1))`
-/

namespace A032191.P15982735539177962438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A032191.P15982735539177962438

namespace A032191

/-- `A037306(A000096(n+5)-(n-1))` -/
def P15982735539177962438.Spec : Prop :=
  ∀ n, P15982735539177962438.a n = A032191 (n + 6)

end A032191

/-! ## A032191.P4978638002802066873

`A037306(A052905(n+4)-2-2*n)`
-/

namespace A032191.P4978638002802066873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A052905 (n + 4) - 2 - (2 * n : ℤ)).toNat

end

end A032191.P4978638002802066873

namespace A032191

/-- `A037306(A052905(n+4)-2-2*n)` -/
def P4978638002802066873.Spec : Prop :=
  ∀ n, P4978638002802066873.a n = A032191 (n + 6)

end A032191

/-! ## A032191.P16946908333999050768

`A037306(A055999(n+3))`
-/

namespace A032191.P16946908333999050768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A055999 (n + 3)).toNat

end

end A032191.P16946908333999050768

namespace A032191

/-- `A037306(A055999(n+3))` -/
def P16946908333999050768.Spec : Prop :=
  ∀ n, P16946908333999050768.a n = A032191 (n + 6)

end A032191

/-! ## A032191.P9009267279004821696

`A037306(Δ[A026054(n+3)])`
-/

namespace A032191.P9009267279004821696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (f1 (n + 1) - f1 n).toNat

end

end A032191.P9009267279004821696

namespace A032191

/-- `A037306(Δ[A026054(n+3)])` -/
def P9009267279004821696.Spec : Prop :=
  ∀ n, P9009267279004821696.a n = A032191 (n + 6)

end A032191

/-! ## A032191.P9920437286269968074

`A047996(A000096(n+5)+7)`
-/

namespace A032191.P9920437286269968074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A000096 (n + 5) + 7).toNat

end

end A032191.P9920437286269968074

namespace A032191

/-- `A047996(A000096(n+5)+7)` -/
def P9920437286269968074.Spec : Prop :=
  ∀ n, P9920437286269968074.a n = A032191 (n + 6)

end A032191

/-! ## A032191.P5493199870009632717

`A037306(A000124(n+6)-7)`
-/

namespace A032191.P5493199870009632717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A000124 (n + 6) - 7).toNat

end

end A032191.P5493199870009632717

namespace A032191

/-- `A037306(A000124(n+6)-7)` -/
def P5493199870009632717.Spec : Prop :=
  ∀ n, P5493199870009632717.a n = A032191 (n + 6)

end A032191

/-! ## A032191.P7532896181552214603

`A047996(A000217(n+7)-(n+1))`
-/

namespace A032191.P7532896181552214603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A000217 (n + 7) - (n + 1 : ℤ)).toNat

end

end A032191.P7532896181552214603

namespace A032191

/-- `A047996(A000217(n+7)-(n+1))` -/
def P7532896181552214603.Spec : Prop :=
  ∀ n, P7532896181552214603.a n = A032191 (n + 6)

end A032191

/-!
# A032192: Number of necklaces with 7 black beads and n-7 white beads.

The programs for A032192, the canonical program `A032192.P10104564279056933292` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032192 has offset 7).

The definition of A032192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032192.P10104564279056933292

`ogf((1-5x+13x^2-17x^3+13x^4-5x^5+x^6)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6-x^7+6x^8-15x^9+20x^10-15x^11+6x^12-x^13))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032192

/-- `ogf((1-5x+13x^2-17x^3+13x^4-5x^5+x^6)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6-x^7+6x^8-15x^9+20x^10-15x^11+6x^12-x^13))` -/
def P10104564279056933292.Spec : Prop :=
  ∀ n, P10104564279056933292.a n = A032192 (n + 7)

theorem P10104564279056933292.correct : P10104564279056933292.Spec := by
  intro n
  simp only [A032192, Nat.add_sub_cancel]

end A032192

/-! ## A032192.P6371995408676674917

`ceil(C(n+6, 6)/7)`
-/

namespace A032192.P6371995408676674917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 6) 6 : ℚ) / 7⌉

end

end A032192.P6371995408676674917

namespace A032192

/-- `ceil(C(n+6, 6)/7)` -/
def P6371995408676674917.Spec : Prop :=
  ∀ n, P6371995408676674917.a n = A032192 (n + 7)

end A032192

/-! ## A032192.P1478332226691906016

`ceil(A052226(n)/A004771(n))`
-/

namespace A032192.P1478332226691906016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052226 n : ℚ) / (A004771 n : ℚ)⌉

end

end A032192.P1478332226691906016

namespace A032192

/-- `ceil(A052226(n)/A004771(n))` -/
def P1478332226691906016.Spec : Prop :=
  ∀ n, P1478332226691906016.a n = A032192 (n + 7)

end A032192

/-! ## A032192.P13588801283770425151

`A082784(n)+A051172(n+7)`
-/

namespace A032192.P13588801283770425151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082784 n + A051172 (n + 7)

end

end A032192.P13588801283770425151

namespace A032192

/-- `A082784(n)+A051172(n+7)` -/
def P13588801283770425151.Spec : Prop :=
  ∀ n, P13588801283770425151.a n = A032192 (n + 7)

end A032192

/-! ## A032192.P901369662408885552

`2*A032280(n+7)-A058187(n)`
-/

namespace A032192.P901369662408885552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032280 (n + 7) - A058187 n

end

end A032192.P901369662408885552

namespace A032192

/-- `2*A032280(n+7)-A058187(n)` -/
def P901369662408885552.Spec : Prop :=
  ∀ n, P901369662408885552.a n = A032192 (n + 7)

end A032192

/-! ## A032192.P14119394945995897891

`A037306(A167614(n+5)+4)`
-/

namespace A032192.P14119394945995897891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A167614 (n + 5) + 4).toNat

end

end A032192.P14119394945995897891

namespace A032192

/-- `A037306(A167614(n+5)+4)` -/
def P14119394945995897891.Spec : Prop :=
  ∀ n, P14119394945995897891.a n = A032192 (n + 7)

end A032192

/-! ## A032192.P10972573395424883242

`A037306(A000217(n+6)+7)`
-/

namespace A032192.P10972573395424883242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A000217 (n + 6) + 7).toNat

end

end A032192.P10972573395424883242

namespace A032192

/-- `A037306(A000217(n+6)+7)` -/
def P10972573395424883242.Spec : Prop :=
  ∀ n, P10972573395424883242.a n = A032192 (n + 7)

end A032192

/-!
# A032193: Number of necklaces with 8 black beads and n-8 white beads.

The programs for A032193, there is no canonical definition to state claims against.
-/

/-! ## A032193.P1222918456552515274

`2*A005514(n+8)-A189976(n+8)`
-/

namespace A032193.P1222918456552515274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005514 (n + 8) - A189976 (n + 8)

end

end A032193.P1222918456552515274

/-! ## A032193.P4890360379263840296

`A037306(A056121(n)+36)`
-/

namespace A032193.P4890360379263840296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A056121 n + 36).toNat

end

end A032193.P4890360379263840296

/-! ## A032193.P17424111375979008128

`A037306(A000217(n+7)+8)`
-/

namespace A032193.P17424111375979008128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A000217 (n + 7) + 8).toNat

end

end A032193.P17424111375979008128

/-! ## A032193.P6909070492476624353

`A037306(A000096(n+7)-(n-1))`
-/

namespace A032193.P6909070492476624353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A000096 (n + 7) - ((n : ℤ) - 1)).toNat

end

end A032193.P6909070492476624353

/-! ## A032193.P7488821981178557079

`A037306(A155212(n+4))`
-/

namespace A032193.P7488821981178557079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A155212 (n + 4)).toNat

end

end A032193.P7488821981178557079

/-! ## A032193.P7441478100442370893

`A037306(A056126(n)+28)`
-/

namespace A032193.P7441478100442370893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A056126 n + 28).toNat

end

end A032193.P7441478100442370893

/-! ## A032193.P10094355719955951366

`A047996(A056126(n)+44)`
-/

namespace A032193.P10094355719955951366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A056126 n + 44).toNat

end

end A032193.P10094355719955951366

/-! ## A032193.P13288465507838699186

`A047996(A052905(n+6)-4)`
-/

namespace A032193.P13288465507838699186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A052905 (n + 6) - 4).toNat

end

end A032193.P13288465507838699186

/-! ## A032193.P13846034924828512696

`A047996(A000217(n+9)-9)`
-/

namespace A032193.P13846034924828512696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A000217 (n + 9) - 9).toNat

end

end A032193.P13846034924828512696

/-! ## A032193.P15427836286823899659

`A047996(A000096(n+7)+n+1)`
-/

namespace A032193.P15427836286823899659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A032193.P15427836286823899659

/-!
# A032194: Number of necklaces with 9 black beads and n-9 white beads.

The programs for A032194, there is no canonical definition to state claims against.
-/

/-! ## A032194.P16192359213013489665

`2*A032281(n+9)-A189976(n+8)`
-/

namespace A032194.P16192359213013489665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032281 (n + 9) - A189976 (n + 8)

end

end A032194.P16192359213013489665

/-! ## A032194.P12095173707160867858

`A037306(A000217(n+10)-10-2*n)`
-/

namespace A032194.P12095173707160867858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A000217 (n + 10) - 10 - (2 * n : ℤ)).toNat

end

end A032194.P12095173707160867858

/-! ## A032194.P12301148711183940986

`A037306(A161680(n+11)-10-2*n)`
-/

namespace A032194.P12301148711183940986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A161680 (n + 11) - 10 - (2 * n : ℤ)).toNat

end

end A032194.P12301148711183940986

/-! ## A032194.P4077353388320436840

`A047996(A000217(n+9)+9)`
-/

namespace A032194.P4077353388320436840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A000217 (n + 9) + 9).toNat

end

end A032194.P4077353388320436840

/-! ## A032194.P15210226088202841746

`A037306(A000096(n+7)+n+1)`
-/

namespace A032194.P15210226088202841746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A032194.P15210226088202841746

/-! ## A032194.P9351336904835042741

`A047996(A161680(n+11)-(n+1))`
-/

namespace A032194.P9351336904835042741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A161680 (n + 11) - (n + 1 : ℤ)).toNat

end

end A032194.P9351336904835042741

/-! ## A032194.P8455306529087610244

`A047996(A056000(n+6))`
-/

namespace A032194.P8455306529087610244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A056000 (n + 6)).toNat

end

end A032194.P8455306529087610244

/-! ## A032194.P17915967805320595633

`A047996(A052905(n+7)-5)`
-/

namespace A032194.P17915967805320595633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A052905 (n + 7) - 5).toNat

end

end A032194.P17915967805320595633

/-! ## A032194.P14604740188947013871

`A047996(Δ[Δ[A008779(n+4)]])`
-/

namespace A032194.P14604740188947013871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008779 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (f1 (n + 1) - f1 n).toNat

end

end A032194.P14604740188947013871

/-!
# A032195: Number of necklaces with 10 black beads and n-10 white beads.

The programs for A032195, there is no canonical definition to state claims against.
-/

/-! ## A032195.P6547798591850760787

`2*A005515(n)-A189980(n)`
-/

namespace A032195.P6547798591850760787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005515 (n + 10) - A189980 (n + 10)

end

end A032195.P6547798591850760787

/-! ## A032195.P18151184542693238583

`A037306(A000096(n+8)+11)`
-/

namespace A032195.P18151184542693238583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A000096 (n + 8) + 11).toNat

end

end A032195.P18151184542693238583

/-! ## A032195.P1855098758236351899

`A037306(A000217(n+9)+10)`
-/

namespace A032195.P1855098758236351899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A000217 (n + 9) + 10).toNat

end

end A032195.P1855098758236351899

/-! ## A032195.P10852567948848889727

`A037306(A056000(n+6))`
-/

namespace A032195.P10852567948848889727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A056000 (n + 6)).toNat

end

end A032195.P10852567948848889727

/-! ## A032195.P10940526490593243170

`A037306(A052905(n+7)-5)`
-/

namespace A032195.P10940526490593243170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A052905 (n + 7) - 5).toNat

end

end A032195.P10940526490593243170

/-! ## A032195.P6039627253983949556

`A037306(A161680(n+11)-10)`
-/

namespace A032195.P6039627253983949556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A161680 (n + 11) - 10).toNat

end

end A032195.P6039627253983949556

/-! ## A032195.P9715535875934536643

`A047996(A000217(n+11)-(n+1))`
-/

namespace A032195.P9715535875934536643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A000217 (n + 11) - (n + 1 : ℤ)).toNat

end

end A032195.P9715535875934536643

/-!
# A032196: Number of necklaces with 11 black beads and n-11 white beads.

The programs for A032196, the canonical program `A032196.P13754024063333351133` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032196 has offset 11).

The definition of A032196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032196.P13754024063333351133

`ceil(C(n+11, 11)/(n+11))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032196

/-- `ceil(C(n+11, 11)/(n+11))` -/
def P13754024063333351133.Spec : Prop :=
  ∀ n, P13754024063333351133.a n = A032196 (n + 11)

theorem P13754024063333351133.correct : P13754024063333351133.Spec := by
  intro n
  simp only [A032196, Nat.add_sub_cancel]

end A032196

/-! ## A032196.P12098284643256217306

`ceil(A001287(n)/11)`
-/

namespace A032196.P12098284643256217306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001287 (n + 10) : ℚ) / 11⌉

end

end A032196.P12098284643256217306

namespace A032196

/-- `ceil(A001287(n)/11)` -/
def P12098284643256217306.Spec : Prop :=
  ∀ n, P12098284643256217306.a n = A032196 (n + 11)

end A032196

/-! ## A032196.P15513451046674891288

`ceil(∑[A000582(n+9)]/11)`
-/

namespace A032196.P15513451046674891288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 11⌉

end

end A032196.P15513451046674891288

namespace A032196

/-- `ceil(∑[A000582(n+9)]/11)` -/
def P15513451046674891288.Spec : Prop :=
  ∀ n, P15513451046674891288.a n = A032196 (n + 11)

end A032196

/-! ## A032196.P2721849915523059739

`ceil(∑[∑[A000581(n+8)]]/11)`
-/

namespace A032196.P2721849915523059739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 11⌉

end

end A032196.P2721849915523059739

namespace A032196

/-- `ceil(∑[∑[A000581(n+8)]]/11)` -/
def P2721849915523059739.Spec : Prop :=
  ∀ n, P2721849915523059739.a n = A032196 (n + 11)

end A032196

/-! ## A032196.P10868935007421992264

`2*A032282(n)-A189980(n)`
-/

namespace A032196.P10868935007421992264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032282 (n + 11) - A189980 (n + 10)

end

end A032196.P10868935007421992264

namespace A032196

/-- `2*A032282(n)-A189980(n)` -/
def P10868935007421992264.Spec : Prop :=
  ∀ n, P10868935007421992264.a n = A032196 (n + 11)

end A032196

/-! ## A032196.P15550657410830527773

`ceil(A007318(eq[11, A002260(n+1)])/11)`
-/

namespace A032196.P15550657410830527773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 11⌉

end

end A032196.P15550657410830527773

namespace A032196

/-- `ceil(A007318(eq[11, A002260(n+1)])/11)` -/
def P15550657410830527773.Spec : Prop :=
  ∀ n, P15550657410830527773.a n = A032196 (n + 11)

end A032196

/-! ## A032196.P2517642867607529959

`A037306(A000217(n+11)-11)`
-/

namespace A032196.P2517642867607529959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A000217 (n + 11) - 11).toNat

end

end A032196.P2517642867607529959

namespace A032196

/-- `A037306(A000217(n+11)-11)` -/
def P2517642867607529959.Spec : Prop :=
  ∀ n, P2517642867607529959.a n = A032196 (n + 11)

end A032196

/-! ## A032196.P2339335810760048194

`A047996(A000217(n+12)-12)`
-/

namespace A032196.P2339335810760048194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A000217 (n + 12) - 12).toNat

end

end A032196.P2339335810760048194

namespace A032196

/-- `A047996(A000217(n+12)-12)` -/
def P2339335810760048194.Spec : Prop :=
  ∀ n, P2339335810760048194.a n = A032196 (n + 11)

end A032196

/-! ## A032196.P5981581218569318487

`ceil(A007318(eq[10, A025581(n)])/11)`
-/

namespace A032196.P5981581218569318487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 11⌉

end

end A032196.P5981581218569318487

namespace A032196

/-- `ceil(A007318(eq[10, A025581(n)])/11)` -/
def P5981581218569318487.Spec : Prop :=
  ∀ n, P5981581218569318487.a n = A032196 (n + 11)

end A032196

/-!
# A032197: Number of necklaces with 12 black beads and n-12 white beads.

The programs for A032197, there is no canonical definition to state claims against.
-/

/-! ## A032197.P3272704010801356573

`A037306(eq[23, A066657(n)])`
-/

namespace A032197.P3272704010801356573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032197.P3272704010801356573

/-! ## A032197.P13536249856382712188

`A037306(A133263(n+11)+10)`
-/

namespace A032197.P13536249856382712188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A133263 (n + 11) + 10).toNat

end

end A032197.P13536249856382712188

/-! ## A032197.P5810055185166542422

`A037306(A000217(n+12)-12)`
-/

namespace A032197.P5810055185166542422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A000217 (n + 12) - 12).toNat

end

end A032197.P5810055185166542422

/-! ## A032197.P14870321066787171703

`A047996(eq[12, A002262(n)])`
-/

namespace A032197.P14870321066787171703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032197.P14870321066787171703

/-! ## A032197.P6610418740770649981

`A047996(A000217(n+12)+12)`
-/

namespace A032197.P6610418740770649981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A000217 (n + 12) + 12).toNat

end

end A032197.P6610418740770649981

/-! ## A032197.P9108298613467841537

`A047996(eq[25, A158405(n+1)])`
-/

namespace A032197.P9108298613467841537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032197.P9108298613467841537

/-! ## A032197.P13776216725768426853

`A047996(A000096(n+12)-n)`
-/

namespace A032197.P13776216725768426853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A000096 (n + 12) - (n : ℤ)).toNat

end

end A032197.P13776216725768426853

/-!
# A032198: "CIK" (necklace, indistinct, unlabeled) transform of 1,2,3,4,...

The programs for A032198, the canonical program `A032198.P5214981304540550973` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032198 has offset 1).

The definition of A032198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032198.P15715230398342077895

`∑[abs(Δ[A005594(n)])]`
-/

namespace A032198.P15715230398342077895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005594 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032198.P15715230398342077895

namespace A032198

/-- `∑[abs(Δ[A005594(n)])]` -/
def P15715230398342077895.Spec : Prop :=
  ∀ n, P15715230398342077895.a n = A032198 (n + 1)

end A032198

/-! ## A032198.P7832731126044134744

`A005594(n+1)-1`
-/

namespace A032198.P7832731126044134744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005594 (n + 1) - 1

end

end A032198.P7832731126044134744

namespace A032198

/-- `A005594(n+1)-1` -/
def P7832731126044134744.Spec : Prop :=
  ∀ n, P7832731126044134744.a n = A032198 (n + 1)

end A032198

/-! ## A032198.P5214981304540550973

`∑{d}[n+1, A032170(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A032198

/-- `∑{d}[n+1, A032170(#)]` -/
def P5214981304540550973.Spec : Prop :=
  ∀ n, P5214981304540550973.a n = A032198 (n + 1)

theorem P5214981304540550973.correct : P5214981304540550973.Spec := by
  intro n
  simp only [A032198, Nat.add_sub_cancel]

end A032198

/-! ## A032198.P14076667305678460378

`2*A032287(n+1)-A308747(n+1)`
-/

namespace A032198.P14076667305678460378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032287 (n + 1) - A308747 (n + 1)

end

end A032198.P14076667305678460378

namespace A032198

/-- `2*A032287(n+1)-A308747(n+1)` -/
def P14076667305678460378.Spec : Prop :=
  ∀ n, P14076667305678460378.a n = A032198 (n + 1)

end A032198

/-! ## A032198.P17344926071570964867

`∑{d}[n+1, A038712(#)*A324485((n+1)/#)]`
-/

namespace A032198.P17344926071570964867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A324485 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A032198.P17344926071570964867

namespace A032198

/-- `∑{d}[n+1, A038712(#)*A324485((n+1)/#)]` -/
def P17344926071570964867.Spec : Prop :=
  ∀ n, P17344926071570964867.a n = A032198 (n + 1)

end A032198

/-! ## A032198.P2517312571610842773

`A365857(n+1)+A365857(n+1)-A365859(n+1)`
-/

namespace A032198.P2517312571610842773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365857 (n + 1) + (A365857 (n + 1) - A365859 (n + 1))

end

end A032198.P2517312571610842773

namespace A032198

/-- `A365857(n+1)+A365857(n+1)-A365859(n+1)` -/
def P2517312571610842773.Spec : Prop :=
  ∀ n, P2517312571610842773.a n = A032198 (n + 1)

theorem P2517312571610842773.correct : P2517312571610842773.Spec := by
  intro n
  simp only [A032198, Nat.add_sub_cancel, A032198.P2517312571610842773.a, A032198.P5214981304540550973.f1, A032198.P5214981304540550973.a, A032170, A032170.P14058468955918342833.f1, A032170.P14058468955918342833.a, A365857, A365857.P16907715730324159422.a, A365859, A365859.P7072414971746195033.a, A004146, A004146.P7346826017881566823.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A032189, A032189.P10074528383651059138.a, A000032, A000032.P8352177345629330861.a, A000358, A000358.P12025888969014246484.a, A274017, A274017.P17464544538274726371.f1, A274017.P17464544538274726371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A032198

/-! ## A032198.P3186235203953061395

`A208723(n+1)-2`
-/

namespace A032198.P3186235203953061395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208723 (n + 1) - 2

end

end A032198.P3186235203953061395

namespace A032198

/-- `A208723(n+1)-2` -/
def P3186235203953061395.Spec : Prop :=
  ∀ n, P3186235203953061395.a n = A032198 (n + 1)

end A032198

/-! ## A032198.P9123407200636179558

`A208773(n+1)-(A000358(n+1)+2)`
-/

namespace A032198.P9123407200636179558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208773 (n + 1) - (A000358 (n + 1) + 2)

end

end A032198.P9123407200636179558

namespace A032198

/-- `A208773(n+1)-(A000358(n+1)+2)` -/
def P9123407200636179558.Spec : Prop :=
  ∀ n, P9123407200636179558.a n = A032198 (n + 1)

end A032198

/-!
# A032199: "CIK" (necklace, indistinct, unlabeled) transform of 3,5,7...

The programs for A032199, there is no canonical definition to state claims against.
-/

/-! ## A032199.P5725641169101701445

`A070106(A225020(n+1))`
-/

namespace A032199.P5725641169101701445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070106 (A225020 (n + 1)).toNat

end

end A032199.P5725641169101701445

