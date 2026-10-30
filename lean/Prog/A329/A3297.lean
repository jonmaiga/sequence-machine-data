import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
# A329700: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UH, HH and HD.

The programs for A329700, there is no canonical definition to state claims against.
-/

/-! ## A329700.P6297897806977598050

`A185283(A000085(n)-A228364(n))`
-/

namespace A329700.P6297897806977598050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A000085 n - A228364 n).toNat

end

end A329700.P6297897806977598050

/-! ## A329700.P12180349402184527535

`A185283(A000085(n)-A124745(2*(n+2)))`
-/

namespace A329700.P12180349402184527535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A000085 n - A124745 (2 * (n + 2))).toNat

end

end A329700.P12180349402184527535

/-! ## A329700.P14671341052525041857

`A106829(a(n-2))+a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A329700.P14671341052525041857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A106829 (a (n - 2)).toNat + a (n - 1)

end

end A329700.P14671341052525041857

/-! ## A329700.P437392995034193461

`A235963(A170941(n))`
-/

namespace A329700.P437392995034193461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A170941 n).toNat

end

end A329700.P437392995034193461

/-! ## A329700.P16902850287784106172

`A111654(A002905(n+1))`
-/

namespace A329700.P16902850287784106172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A002905 (n + 1)).toNat

end

end A329700.P16902850287784106172

/-!
# A329701: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UH and HU.

The programs for A329701, there is no canonical definition to state claims against.
-/

/-! ## A329701.P13489906384665443954

`A085177(A124280(n))`
-/

namespace A329701.P13489906384665443954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085177 (A124280 n).toNat

end

end A329701.P13489906384665443954

/-! ## A329701.P17985875214892862789

`A274701(A138354(n)+A005811(n))`
-/

namespace A329701.P17985875214892862789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (A138354 n + A005811 n).toNat

end

end A329701.P17985875214892862789

/-! ## A329701.P9393909204645610480

`A274701(A283431(n)+A138354(n))`
-/

namespace A329701.P9393909204645610480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (A283431 n + A138354 n).toNat

end

end A329701.P9393909204645610480

/-! ## A329701.P7143536300448147048

`A274701(A274701(n+1)+A138354(n)+1)`
-/

namespace A329701.P7143536300448147048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (A274701 (n + 1) + (A138354 n + 1)).toNat

end

end A329701.P7143536300448147048

/-! ## A329701.P18430083974265389836

`A129618(A340775(n))`
-/

namespace A329701.P18430083974265389836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (A340775 n).toNat

end

end A329701.P18430083974265389836

/-!
# A329702: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UH and HD.

The programs for A329702, there is no canonical definition to state claims against.
-/

/-! ## A329702.P7407774904810554700

`∑[A329701(n)]-n`
-/

namespace A329702.P7407774904810554700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A329702.P7407774904810554700

/-! ## A329702.P10665797791864431010

`A001489(n)+∑[A329701(n)]`
-/

namespace A329702.P10665797791864431010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329702.P10665797791864431010

/-! ## A329702.P10723743910586896795

`∑[A329701(n)+A057428(n)]`
-/

namespace A329702.P10723743910586896795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329701 n + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329702.P10723743910586896795

/-! ## A329702.P17269434932212112054

`∑[A329701(n)+A089263(2*n+1)]`
-/

namespace A329702.P17269434932212112054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329701 n + A089263 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329702.P17269434932212112054

/-! ## A329702.P8022814945275806271

`A196199(n²)+∑[A329701(n)]`
-/

namespace A329702.P8022814945275806271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (n ^ 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329702.P8022814945275806271

/-!
# A329703: Number of meanders of length n with Dyck-steps avoiding the consecutive steps UDU and DUD.

The programs for A329703, there is no canonical definition to state claims against.
-/

/-! ## A329703.P4083809728056384220

`A203019(n-gcd(n, ∑[n])+1)+A088518(n)`
-/

namespace A329703.P4083809728056384220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + 1).toNat + A088518 n

end

end A329703.P4083809728056384220

/-! ## A329703.P2389432483376805903

`A203019(A027656(n))+A088518(n)`
-/

namespace A329703.P2389432483376805903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 (A027656 n).toNat + A088518 n

end

end A329703.P2389432483376805903

/-! ## A329703.P10238543436334309319

`A203019(A158416(n))+A088518(n)`
-/

namespace A329703.P10238543436334309319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 (A158416 n).toNat + A088518 n

end

end A329703.P10238543436334309319

/-! ## A329703.P651326881964005048

`A203019(A142150(n)+1)+A088518(n)`
-/

namespace A329703.P651326881964005048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 (A142150 n + 1).toNat + A088518 n

end

end A329703.P651326881964005048

/-! ## A329703.P912380261020524450

`A103128(A300442(n+1)+1)`
-/

namespace A329703.P912380261020524450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A300442 (n + 1) + 1).toNat

end

end A329703.P912380261020524450

/-!
# A329704: Numbers k such that the sum of divisors of k (A000203) and the sum of proper divisors of k (A001065) are both triangular numbers (A000217).

The programs for A329704, there is no canonical definition to state claims against.
-/

/-! ## A329704.P6860326217516313752

`∩[A045745(n+1), A045746(n+1)]`
-/

namespace A329704.P6860326217516313752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329704.P6860326217516313752

/-! ## A329704.P3775395222504532320

`record[gcd(A057979(n)², A113287(n))]`
-/

namespace A329704.P3775395222504532320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057979 n ^ 2) (A113287 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329704.P3775395222504532320

/-!
# A329705: Composite numbers k such that (1 - w)^(k-1) == 1 (mod k) in the ring of Eisenstein integers (w = (-1 + sqrt(3)*i)/2).

The programs for A329705, there is no canonical definition to state claims against.
-/

/-! ## A329705.P10435703609669217258

`filter[A048950(n+1), A373977(#)]`
-/

namespace A329705.P10435703609669217258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A329705.P10435703609669217258

/-! ## A329705.P3556434199596978772

`filter[A262051(n+1), A373977(#)]`
-/

namespace A329705.P3556434199596978772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A329705.P3556434199596978772

/-! ## A329705.P17662128562523647587

`A048950(A238457(n+1)+A227549(n+1))`
-/

namespace A329705.P17662128562523647587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048950 (A238457 (n + 1) + A227549 (n + 1)).toNat

end

end A329705.P17662128562523647587

/-! ## A329705.P10344994859338546218

`A048950(A324766(n+1))%A096929(3*(n+1))`
-/

namespace A329705.P10344994859338546218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048950 (A324766 (n + 1)).toNat) (A096929 (3 * (n + 1)))

end

end A329705.P10344994859338546218

/-!
# A329707: Number of placements of zero or more dominoes on a 2 X n grid where no two empty squares are horizontally adjacent.

The programs for A329707, the canonical program `A329707.P8633428460864431955` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329707 has offset 0).

The definition of A329707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329707.P13066437186563582514

`ogf((1-x^2+x^3-x^4)/(1-2x-x^2+x^6))`
-/

namespace A329707.P13066437186563582514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 1, -1] [1, -2, -1, 0, 0, 0, 1] n

end

end A329707.P13066437186563582514

namespace A329707

/-- `ogf((1-x^2+x^3-x^4)/(1-2x-x^2+x^6))` -/
def P13066437186563582514.Spec : Prop :=
  ∀ n, P13066437186563582514.a n = A329707 n

end A329707

/-! ## A329707.P8633428460864431955

`2*a(n-1)+a(n-2)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=11, a(4)=25, a(5)=61`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A329707

/-- `2*a(n-1)+a(n-2)-a(n-6)` -/
def P8633428460864431955.Spec : Prop :=
  ∀ n, P8633428460864431955.a n = A329707 n

theorem P8633428460864431955.correct : P8633428460864431955.Spec := by
  intro n
  simp only [A329707]

end A329707

/-! ## A329707.P13446952856930736631

`A332862(∑[n]+2)`
-/

namespace A329707.P13446952856930736631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332862 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A329707.P13446952856930736631

namespace A329707

/-- `A332862(∑[n]+2)` -/
def P13446952856930736631.Spec : Prop :=
  ∀ n, P13446952856930736631.a n = A329707 n

end A329707

/-! ## A329707.P13436162501755607108

`record[A332862(n+1)/A103323(n+1)]`
-/

namespace A329707.P13436162501755607108
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332862 (n + 1) : ℚ) / (A103323 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329707.P13436162501755607108

namespace A329707

/-- `record[A332862(n+1)/A103323(n+1)]` -/
def P13436162501755607108.Spec : Prop :=
  ∀ n, P13436162501755607108.a n = (A329707 n : ℚ)

end A329707

/-! ## A329707.P3022857037781266378

`A332862(A133263(n))%A164303(n)`
-/

namespace A329707.P3022857037781266378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332862 (A133263 n).toNat) (A164303 n)

end

end A329707.P3022857037781266378

namespace A329707

/-- `A332862(A133263(n))%A164303(n)` -/
def P3022857037781266378.Spec : Prop :=
  ∀ n, P3022857037781266378.a n = A329707 n

end A329707

/-!
# A329710: The number of edges inside a pentagon formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A329710, there is no canonical definition to state claims against.
-/

/-! ## A329710.P14638359255154507660

`A330847(n+1)+A331929(n+1)-1`
-/

namespace A329710.P14638359255154507660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330847 (n + 1) + (A331929 (n + 1) - 1)

end

end A329710.P14638359255154507660

/-! ## A329710.P10543590466368436812

`A367324(A167499(n+1))`
-/

namespace A329710.P10543590466368436812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367324 (A167499 (n + 1)).toNat

end

end A329710.P10543590466368436812

/-! ## A329710.P388050878394693728

`A367324(A166136(n+1)-1)`
-/

namespace A329710.P388050878394693728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367324 (A166136 (n + 1) - 1).toNat

end

end A329710.P388050878394693728

/-!
# A329712: The number of rooted chains in the lattice of (0, 1) matrices of order n.

The programs for A329712, there is no canonical definition to state claims against.
-/

/-! ## A329712.P7531098810790637624

`A000629(n²)`
-/

namespace A329712.P7531098810790637624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 (n ^ 2)

end

end A329712.P7531098810790637624

/-! ## A329712.P6598313001991919257

`A002050(n²)+1`
-/

namespace A329712.P6598313001991919257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002050 (n ^ 2) + 1

end

end A329712.P6598313001991919257

/-! ## A329712.P18276586636432747593

`ceil(A328044(n)/2)`
-/

namespace A329712.P18276586636432747593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A328044 n : ℚ) / 2⌉

end

end A329712.P18276586636432747593

/-! ## A329712.P12865284747503127208

`A129062(A000124(n²+1))`
-/

namespace A329712.P12865284747503127208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129062 (A000124 (n ^ 2 + 1)).toNat

end

end A329712.P12865284747503127208

/-!
# A329713: The number of regions inside a heptagon formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A329713, there is no canonical definition to state claims against.
-/

/-! ## A329713.P9498276926613290792

`A333112(n+1)+1-A333113(n+1)`
-/

namespace A329713.P9498276926613290792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333112 (n + 1) + (1 - A333113 (n + 1))

end

end A329713.P9498276926613290792

/-!
# A329717: a(n) is n (plus or minus) the number of distinct primes dividing n according to parity (even or odd).

The programs for A329717, the canonical program `A329717.P10453135452585466116` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329717 has offset 1).

The definition of A329717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329717.P10453135452585466116

`n+1+A001221(n+1)*(-1)^A001221(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A329717

/-- `n+1+A001221(n+1)*(-1)^A001221(n+1)` -/
def P10453135452585466116.Spec : Prop :=
  ∀ n, P10453135452585466116.a n = (A329717 (n + 1) : ℚ)

end A329717

/-! ## A329717.P3857886996740062083

`1-A143519(A007947(n+1))+n`
-/

namespace A329717.P3857886996740062083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A143519 (A007947 (n + 1)).toNat + (n : ℤ)

end

end A329717.P3857886996740062083

namespace A329717

/-- `1-A143519(A007947(n+1))+n` -/
def P3857886996740062083.Spec : Prop :=
  ∀ n, P3857886996740062083.a n = A329717 (n + 1)

end A329717

/-! ## A329717.P16640752231274333846

`A001221(n+1)*A076479(n+1)+n+1`
-/

namespace A329717.P16640752231274333846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A076479 (n + 1) + (n + 1 : ℤ)

end

end A329717.P16640752231274333846

namespace A329717

/-- `A001221(n+1)*A076479(n+1)+n+1` -/
def P16640752231274333846.Spec : Prop :=
  ∀ n, P16640752231274333846.a n = A329717 (n + 1)

end A329717

/-! ## A329717.P4802598914018166480

`A008683(A007947(n+1))*A001221(n+1)+n+1`
-/

namespace A329717.P4802598914018166480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007947 (n + 1)).toNat * A001221 (n + 1) + (n + 1 : ℤ)

end

end A329717.P4802598914018166480

namespace A329717

/-- `A008683(A007947(n+1))*A001221(n+1)+n+1` -/
def P4802598914018166480.Spec : Prop :=
  ∀ n, P4802598914018166480.a n = A329717 (n + 1)

end A329717

/-! ## A329717.P10992858377446973566

`A001221(n+1)*A008836(A034444(n+1))+n+1`
-/

namespace A329717.P10992858377446973566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A008836 (A034444 (n + 1)).toNat + (n + 1 : ℤ)

end

end A329717.P10992858377446973566

namespace A329717

/-- `A001221(n+1)*A008836(A034444(n+1))+n+1` -/
def P10992858377446973566.Spec : Prop :=
  ∀ n, P10992858377446973566.a n = A329717 (n + 1)

end A329717

/-! ## A329717.P4536092230649331051

`A038608(A001222(A034444(n+1)))-A001478(n+1)`
-/

namespace A329717.P4536092230649331051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A001222 (A034444 (n + 1)).toNat).toNat - A001478 (n + 1)

end

end A329717.P4536092230649331051

namespace A329717

/-- `A038608(A001222(A034444(n+1)))-A001478(n+1)` -/
def P4536092230649331051.Spec : Prop :=
  ∀ n, P4536092230649331051.a n = A329717 (n + 1)

end A329717

/-!
# A329718: The number of open tours by a biased rook on a specific f(n) X 1 board, where f(n) = A070941(n) and cells are colored white or black according to the binary representation of 2n.

The programs for A329718, there is no canonical definition to state claims against.
-/

/-! ## A329718.P1086562889375482136

`A211974(A286374(n+1))+A003817(A006257(n))`
-/

namespace A329718.P1086562889375482136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211974 (A286374 (n + 1)).toNat + A003817 (A006257 n).toNat

end

end A329718.P1086562889375482136

/-!
# A329719: Numbers whose digits can be partitioned into at least 3 segments (not beginning with 0) where each segment is the sum of the previous two segments.

The programs for A329719, there is no canonical definition to state claims against.
-/

/-! ## A329719.P14824280889190453353

`filter[A214527(n+1), A168046(#)]`
-/

namespace A329719.P14824280889190453353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A329719.P14824280889190453353

/-! ## A329719.P14398899882960390521

`filter[A214527(n+1), A209929(#)]`
-/

namespace A329719.P14398899882960390521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A329719.P14398899882960390521

/-! ## A329719.P16093207859669934203

`∩[A067031(n), A108203(n+1)]`
-/

namespace A329719.P16093207859669934203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067031 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329719.P16093207859669934203

/-! ## A329719.P18106680220526175118

`∩[A067031(n), A308104(n+1)]`
-/

namespace A329719.P18106680220526175118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067031 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329719.P18106680220526175118

/-! ## A329719.P17293374769820691924

`∩[A029742(n+1), A108203(n+1)]`
-/

namespace A329719.P17293374769820691924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329719.P17293374769820691924

/-!
# A329720: a(n) = Sum_{k=0..n} ((binomial(n-k,6k)*binomial(n,k)) mod 2).

The programs for A329720, the canonical program `A329720.P3601874640228143301` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329720 has offset 0).

The definition of A329720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329720.P3601874640228143301

`∏{e}[A278222(n), A000930(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A329720

/-- `∏{e}[A278222(n), A000930(#)]` -/
def P3601874640228143301.Spec : Prop :=
  ∀ n, P3601874640228143301.a n = A329720 n

theorem P3601874640228143301.correct : P3601874640228143301.Spec := by
  intro n
  simp only [A329720]

end A329720

/-! ## A329720.P16123611682525692121

`∏{e}[A005940(n+1), A000930(#)]`
-/

namespace A329720.P16123611682525692121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000930 (Nat.factorization (f1 n).natAbs p)

end

end A329720.P16123611682525692121

namespace A329720

/-- `∏{e}[A005940(n+1), A000930(#)]` -/
def P16123611682525692121.Spec : Prop :=
  ∀ n, P16123611682525692121.a n = A329720 n

end A329720

/-! ## A329720.P7622207629245587960

`∏{e}[A337375(n)*A337376(n), A000930(#)]`
-/

namespace A329720.P7622207629245587960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337375 n * A337376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000930 (Nat.factorization (f1 n).natAbs p)

end

end A329720.P7622207629245587960

namespace A329720

/-- `∏{e}[A337375(n)*A337376(n), A000930(#)]` -/
def P7622207629245587960.Spec : Prop :=
  ∀ n, P7622207629245587960.a n = A329720 n

end A329720

/-! ## A329720.P16611701871309641344

`∏{e}[A253563(A059894(2*n+1))/2, A000930(#)]`
-/

namespace A329720.P16611701871309641344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253563 (A059894 (2 * n + 1)).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000930 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A329720.P16611701871309641344

namespace A329720

/-- `∏{e}[A253563(A059894(2*n+1))/2, A000930(#)]` -/
def P16611701871309641344.Spec : Prop :=
  ∀ n, P16611701871309641344.a n = A329720 n

end A329720

/-! ## A329720.P916588705769901993

`A000031(A014082(n)^A144112(n+2))`
-/

namespace A329720.P916588705769901993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (SequenceMachineLib.roundAway ((A014082 n : ℚ) ^ (A144112 (n + 2) : ℤ))).toNat

end

end A329720.P916588705769901993

namespace A329720

/-- `A000031(A014082(n)^A144112(n+2))` -/
def P916588705769901993.Spec : Prop :=
  ∀ n, P916588705769901993.a n = A329720 n

end A329720

/-! ## A329720.P901656301243190350

`A036561(A014082(n)%A212624(n+1))`
-/

namespace A329720.P901656301243190350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (Int.tmod (A014082 n) (A212624 (n + 1))).toNat

end

end A329720.P901656301243190350

namespace A329720

/-- `A036561(A014082(n)%A212624(n+1))` -/
def P901656301243190350.Spec : Prop :=
  ∀ n, P901656301243190350.a n = A329720 n

end A329720

/-! ## A329720.P11051988773141428772

`A087802(A255298(n))`
-/

namespace A329720.P11051988773141428772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087802 (A255298 n).toNat

end

end A329720.P11051988773141428772

namespace A329720

/-- `A087802(A255298(n))` -/
def P11051988773141428772.Spec : Prop :=
  ∀ n, P11051988773141428772.a n = A329720 n

end A329720

/-! ## A329720.P9996614720257258292

`A160384(A246685(n))`
-/

namespace A329720.P9996614720257258292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 (A246685 n).toNat

end

end A329720.P9996614720257258292

namespace A329720

/-- `A160384(A246685(n))` -/
def P9996614720257258292.Spec : Prop :=
  ∀ n, P9996614720257258292.a n = A329720 n

end A329720

/-! ## A329720.P5951225989544581412

`A329320(A253104(n))`
-/

namespace A329720.P5951225989544581412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A253104 n).toNat

end

end A329720.P5951225989544581412

namespace A329720

/-- `A329320(A253104(n))` -/
def P5951225989544581412.Spec : Prop :=
  ∀ n, P5951225989544581412.a n = A329720 n

end A329720

/-! ## A329720.P921535074646594111

`A000005(23^A014082(n))`
-/

namespace A329720.P921535074646594111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((23 : ℚ) ^ (A014082 n : ℤ))).toNat

end

end A329720.P921535074646594111

namespace A329720

/-- `A000005(23^A014082(n))` -/
def P921535074646594111.Spec : Prop :=
  ∀ n, P921535074646594111.a n = A329720 n

end A329720

/-!
# A329722: a(n) = Sum_{k=0..n} ((binomial(n+2k,2n-k)*binomial(n,k)) mod 2).

The programs for A329722, the canonical program `A329722.P5381427466914838928` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329722 has offset 0).

The definition of A329722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329722.P5381427466914838928

`∏{e}[A278222(n), A329723(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A329722

/-- `∏{e}[A278222(n), A329723(#)]` -/
def P5381427466914838928.Spec : Prop :=
  ∀ n, P5381427466914838928.a n = A329722 n

theorem P5381427466914838928.correct : P5381427466914838928.Spec := by
  intro n
  simp only [A329722]

end A329722

/-! ## A329722.P15919062799945461332

`∏{e}[A005940(n+1), A329723(#)]`
-/

namespace A329722.P15919062799945461332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A329723 (Nat.factorization (f1 n).natAbs p)

end

end A329722.P15919062799945461332

namespace A329722

/-- `∏{e}[A005940(n+1), A329723(#)]` -/
def P15919062799945461332.Spec : Prop :=
  ∀ n, P15919062799945461332.a n = A329722 n

end A329722

/-! ## A329722.P7367946096367388769

`∏{e}[A292602(4*n+3), A329723(#)]`
-/

namespace A329722.P7367946096367388769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292602 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A329723 (Nat.factorization (f1 n).natAbs p)

end

end A329722.P7367946096367388769

namespace A329722

/-- `∏{e}[A292602(4*n+3), A329723(#)]` -/
def P7367946096367388769.Spec : Prop :=
  ∀ n, P7367946096367388769.a n = A329722 n

end A329722

/-! ## A329722.P16980238347644403253

`∏{e}[A332815(n), A329723(#)]`
-/

namespace A329722.P16980238347644403253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A329723 (Nat.factorization (f1 n).natAbs p)

end

end A329722.P16980238347644403253

namespace A329722

/-- `∏{e}[A332815(n), A329723(#)]` -/
def P16980238347644403253.Spec : Prop :=
  ∀ n, P16980238347644403253.a n = A329722 n

end A329722

/-! ## A329722.P1266752068338742863

`A062756(A246028(n)^4)`
-/

namespace A329722.P1266752068338742863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A246028 n ^ 4).toNat

end

end A329722.P1266752068338742863

namespace A329722

/-- `A062756(A246028(n)^4)` -/
def P1266752068338742863.Spec : Prop :=
  ∀ n, P1266752068338742863.a n = A329722 n

end A329722

/-! ## A329722.P13638810306635297802

`A062756(A246028(n)²²)`
-/

namespace A329722.P13638810306635297802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 ((A246028 n ^ 2) ^ 2).toNat

end

end A329722.P13638810306635297802

namespace A329722

/-- `A062756(A246028(n)²²)` -/
def P13638810306635297802.Spec : Prop :=
  ∀ n, P13638810306635297802.a n = A329722 n

end A329722

/-! ## A329722.P257578033523597634

`A001222(A000108(A246028(n))+2)`
-/

namespace A329722.P257578033523597634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000108 (A246028 n).toNat + 2).toNat

end

end A329722.P257578033523597634

namespace A329722

/-- `A001222(A000108(A246028(n))+2)` -/
def P257578033523597634.Spec : Prop :=
  ∀ n, P257578033523597634.a n = A329722 n

end A329722

/-!
# A329723: Coefficients of expansion of (1-2x^3)/(1-x-x^2) in powers of x.

The programs for A329723, the canonical program `A329723.P12214527657838611544` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329723 has offset 0).

The definition of A329723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329723.P12214527657838611544

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A329723

/-- `a(n-1)+a(n-2)` -/
def P12214527657838611544.Spec : Prop :=
  ∀ n, (P12214527657838611544.a n : ℤ) = A329723 n

theorem P12214527657838611544.correct : P12214527657838611544.Spec := by
  intro n
  simp only [A329723]

end A329723

/-! ## A329723.P5369493442754344480

`ogf((-1+2x^3)/(-1+x+x^2))`
-/

namespace A329723.P5369493442754344480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -2] [1, -1, -1] n

end

end A329723.P5369493442754344480

namespace A329723

/-- `ogf((-1+2x^3)/(-1+x+x^2))` -/
def P5369493442754344480.Spec : Prop :=
  ∀ n, P5369493442754344480.a n = A329723 n

end A329723

/-! ## A329723.P2099893495523452327

`round(ϕ*a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=3, a(5)=4, a(6)=7`
-/

namespace A329723.P2099893495523452327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1, 3, 4, 7] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A329723.P2099893495523452327

namespace A329723

/-- `round(ϕ*a(n-1))` -/
def P2099893495523452327.Spec : Prop :=
  ∀ n, P2099893495523452327.a n = A329723 n

end A329723

/-! ## A329723.P13607019145183124058

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=3, a(1)=4, a(2)=3`
-/

namespace A329723.P13607019145183124058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 3] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A329723.P13607019145183124058

namespace A329723

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P13607019145183124058.Spec : Prop :=
  ∀ n, P13607019145183124058.a n = A329723 n

end A329723

/-! ## A329723.P12291757301951697886

`a(n-1)-floor(-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A329723.P12291757301951697886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A329723.P12291757301951697886

namespace A329723

/-- `a(n-1)-floor(-a(n-2))` -/
def P12291757301951697886.Spec : Prop :=
  ∀ n, P12291757301951697886.a n = A329723 n

end A329723

/-! ## A329723.P8316142895531586234

`a(n-1)-ceil(-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A329723.P8316142895531586234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A329723.P8316142895531586234

namespace A329723

/-- `a(n-1)-ceil(-a(n-2))` -/
def P8316142895531586234.Spec : Prop :=
  ∀ n, P8316142895531586234.a n = A329723 n

end A329723

/-! ## A329723.P4374371807690219367

`a(n-1)-round(-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`

`round` is left out, it is the identity on integers.
-/

namespace A329723.P4374371807690219367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A329723.P4374371807690219367

namespace A329723

/-- `a(n-1)-round(-a(n-2))` -/
def P4374371807690219367.Spec : Prop :=
  ∀ n, P4374371807690219367.a n = A329723 n

end A329723

/-! ## A329723.P10583316984669505466

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=3`
-/

namespace A329723.P10583316984669505466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1, 3] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A329723.P10583316984669505466

namespace A329723

/-- `2*a(n-1)-a(n-3)` -/
def P10583316984669505466.Spec : Prop :=
  ∀ n, P10583316984669505466.a n = A329723 n

end A329723

/-! ## A329723.P7688383064920966124

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=3`
-/

namespace A329723.P7688383064920966124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1, 3] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A329723.P7688383064920966124

namespace A329723

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P7688383064920966124.Spec : Prop :=
  ∀ n, P7688383064920966124.a n = A329723 n

end A329723

/-! ## A329723.P14074502963986987513

`A000032((n-2)^floor(atan(n)))`
-/

namespace A329723.P14074502963986987513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A329723.P14074502963986987513

namespace A329723

/-- `A000032((n-2)^floor(atan(n)))` -/
def P14074502963986987513.Spec : Prop :=
  ∀ n, P14074502963986987513.a n = A329723 n

end A329723

/-! ## A329723.P4196509239211598166

`A000032(gcd(2-n, C(2, n²)))`
-/

namespace A329723.P4196509239211598166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.gcd (2 - (n : ℤ)) (Nat.choose 2 (n ^ 2) : ℤ))

end

end A329723.P4196509239211598166

namespace A329723

/-- `A000032(gcd(2-n, C(2, n²)))` -/
def P4196509239211598166.Spec : Prop :=
  ∀ n, P4196509239211598166.a n = A329723 n

end A329723

/-! ## A329723.P5104619271951616217

`A000032((n-3)%(n+1)+1)`
-/

namespace A329723.P5104619271951616217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.tmod ((n : ℤ) - 3) (n + 1 : ℤ) + 1).toNat

end

end A329723.P5104619271951616217

namespace A329723

/-- `A000032((n-3)%(n+1)+1)` -/
def P5104619271951616217.Spec : Prop :=
  ∀ n, P5104619271951616217.a n = A329723 n

end A329723

/-! ## A329723.P10739804083951778313

`A000032((n-2)^ceil(acot(n-1)))`
-/

namespace A329723.P10739804083951778313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) ^ (⌈SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)⌉ : ℤ))).toNat

end

end A329723.P10739804083951778313

namespace A329723

/-- `A000032((n-2)^ceil(acot(n-1)))` -/
def P10739804083951778313.Spec : Prop :=
  ∀ n, P10739804083951778313.a n = A329723 n

end A329723

/-! ## A329723.P3730295113158540413

`A000032(n-1-a(and(1, n)))` with `a(0)=1, a(1)=1`
-/

namespace A329723.P3730295113158540413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000032 ((n : ℤ) - 1 - a (Nat.land 1 n)).toNat

end

end A329723.P3730295113158540413

namespace A329723

/-- `A000032(n-1-a(and(1, n)))` -/
def P3730295113158540413.Spec : Prop :=
  ∀ n, P3730295113158540413.a n = A329723 n

end A329723

/-! ## A329723.P5871028956630305678

`A000032(n-1-a(C(2, n)))` with `a(0)=1, a(1)=1`
-/

namespace A329723.P5871028956630305678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000032 ((n : ℤ) - 1 - a (Nat.choose 2 n)).toNat

end

end A329723.P5871028956630305678

namespace A329723

/-- `A000032(n-1-a(C(2, n)))` -/
def P5871028956630305678.Spec : Prop :=
  ∀ n, P5871028956630305678.a n = A329723 n

end A329723

/-! ## A329723.P6022123649646151394

`A000032(gcd(n-2, floor(1/(n+1))))`
-/

namespace A329723.P6022123649646151394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.gcd ((n : ℤ) - 2) ⌊1 / (n + 1 : ℚ)⌋)

end

end A329723.P6022123649646151394

namespace A329723

/-- `A000032(gcd(n-2, floor(1/(n+1))))` -/
def P6022123649646151394.Spec : Prop :=
  ∀ n, P6022123649646151394.a n = A329723 n

end A329723

/-! ## A329723.P7714834672417405743

`A000032((n-2)^round(n/(n+2)))`
-/

namespace A329723.P7714834672417405743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / (n + 2 : ℚ)) : ℤ))).toNat

end

end A329723.P7714834672417405743

namespace A329723

/-- `A000032((n-2)^round(n/(n+2)))` -/
def P7714834672417405743.Spec : Prop :=
  ∀ n, P7714834672417405743.a n = A329723 n

end A329723

/-! ## A329723.P7051613955616889531

`A254729(n)-a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A329723.P7051613955616889531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A254729 n - a (n - 1)

end

end A329723.P7051613955616889531

namespace A329723

/-- `A254729(n)-a(n-1)` -/
def P7051613955616889531.Spec : Prop :=
  ∀ n, P7051613955616889531.a n = A329723 n

end A329723

/-! ## A329723.P482972459804113798

`A000032(n-1)-a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A329723.P482972459804113798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000032 (n - 1) - a (n - 1)

end

end A329723.P482972459804113798

namespace A329723

/-- `A000032(n-1)-a(n-1)` -/
def P482972459804113798.Spec : Prop :=
  ∀ n, P482972459804113798.a n = A329723 n

end A329723

/-! ## A329723.P5679050507326207077

`A163733(n+1)+A163733(n+1)-A000045(n+1)`
-/

namespace A329723.P5679050507326207077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163733 (n + 1) + (A163733 (n + 1) - A000045 (n + 1))

end

end A329723.P5679050507326207077

namespace A329723

/-- `A163733(n+1)+A163733(n+1)-A000045(n+1)` -/
def P5679050507326207077.Spec : Prop :=
  ∀ n, P5679050507326207077.a n = A329723 n

end A329723

/-!
# A329725: a(1)=0, a(n) = n - (product of nonzero digits of n) - a(n-1).

The programs for A329725, the canonical program `A329725.P17161962477978852180` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329725 has offset 1).

The definition of A329725 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063543, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329725.P17161962477978852180

`∑{#}[n-1, (-1)^(n+1-(#+2))*A063543(#+2)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A329725

/-- `∑{#}[n-1, (-1)^(n+1-(#+2))*A063543(#+2)]` -/
def P17161962477978852180.Spec : Prop :=
  ∀ n, P17161962477978852180.a n = (A329725 (n + 1) : ℚ)

end A329725

/-! ## A329725.P14265499663303437373

`A063543(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A329725.P14265499663303437373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A063543 (n + 1) - a (n - 1)

end

end A329725.P14265499663303437373

namespace A329725

/-- `A063543(n+1)-a(n-1)` -/
def P14265499663303437373.Spec : Prop :=
  ∀ n, P14265499663303437373.a n = A329725 (n + 1)

end A329725

/-! ## A329725.P16688290956137650596

`Δ[a(n-2)+n-A051801(n)]` with `a(0)=3, a(1)=3`
-/

namespace A329725.P16688290956137650596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  f1 (n - 2) + ((n : ℤ) - A051801 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329725.P16688290956137650596

namespace A329725

/-- `Δ[a(n-2)+n-A051801(n)]` -/
def P16688290956137650596.Spec : Prop :=
  ∀ n, P16688290956137650596.a n = A329725 (n + 1)

end A329725

/-! ## A329725.P863720942544376760

`1-A051801(n+1)+n-a(n-1)` with `a(0)=0`
-/

namespace A329725.P863720942544376760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - A051801 (n + 1) + (n : ℤ) - a (n - 1)

end

end A329725.P863720942544376760

namespace A329725

/-- `1-A051801(n+1)+n-a(n-1)` -/
def P863720942544376760.Spec : Prop :=
  ∀ n, P863720942544376760.a n = A329725 (n + 1)

end A329725

/-! ## A329725.P13935623086141681165

`and(9, A016345(3*n+2))`
-/

namespace A329725.P13935623086141681165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 9 (A016345 (3 * n + 2))

end

end A329725.P13935623086141681165

namespace A329725

/-- `and(9, A016345(3*n+2))` -/
def P13935623086141681165.Spec : Prop :=
  ∀ n, P13935623086141681165.a n = A329725 (n + 1)

end A329725

/-!
# A329726: Number of witnesses for Solovay-Strassen primality test of 2*n+1.

The programs for A329726, there is no canonical definition to state claims against.
-/

/-! ## A329726.P2699908566036911008

`A187730(2*n+3)%A187671(n+1)`
-/

namespace A329726.P2699908566036911008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187730 (2 * n + 3)) (A187671 (n + 1))

end

end A329726.P2699908566036911008

/-! ## A329726.P16827509021219166124

`A187730(Δ[A009998(A141214(n))])`
-/

namespace A329726.P16827509021219166124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (A141214 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187730 (f1 (n + 1) - f1 n).toNat

end

end A329726.P16827509021219166124

/-! ## A329726.P5021936703931683247

`A187730(2*n+3)*A187730(A102377(n))`
-/

namespace A329726.P5021936703931683247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187730 (2 * n + 3) * A187730 (A102377 n).toNat

end

end A329726.P5021936703931683247

/-! ## A329726.P7409458822079862176

`A187730(2*n+3)*A322361(A101791(n+1))`
-/

namespace A329726.P7409458822079862176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187730 (2 * n + 3) * A322361 (A101791 (n + 1)).toNat

end

end A329726.P7409458822079862176

/-! ## A329726.P8231938485907100194

`lcm(A060128(A307277(n+1)), A187730(2*n+3))`
-/

namespace A329726.P8231938485907100194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060128 (A307277 (n + 1)).toNat) (A187730 (2 * n + 3))

end

end A329726.P8231938485907100194

/-!
# A329727: Numbers k such that k^3 +- 2 and k +- 2 are prime.

The programs for A329727, there is no canonical definition to state claims against.
-/

/-! ## A329727.P8230273020874838903

`∩[A029708(n+1), A090121(n+1)]`
-/

namespace A329727.P8230273020874838903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329727.P8230273020874838903

/-! ## A329727.P17914515646726623775

`∩[A029708(n+1), A178228(n+1)]`
-/

namespace A329727.P17914515646726623775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329727.P17914515646726623775

/-! ## A329727.P14574790205564038049

`∩[A087679(n+1), A090121(n+1)]`
-/

namespace A329727.P14574790205564038049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329727.P14574790205564038049

/-! ## A329727.P13677280762288480732

`∩[A087679(n+1), A178228(n+1)]`
-/

namespace A329727.P13677280762288480732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329727.P13677280762288480732

/-! ## A329727.P17346905976111048299

`∩[A015913(n+1)+2, A090121(n+1)]`
-/

namespace A329727.P17346905976111048299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329727.P17346905976111048299

/-! ## A329727.P3196765408208491054

`∩[2*A088762(n+1)+1, A090121(n+1)]`
-/

namespace A329727.P3196765408208491054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088762 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329727.P3196765408208491054

/-! ## A329727.P6137461483490377547

`∩[A090121(n+1), A053320(n)+a(n-1)]` with `a(0)=5`
-/

namespace A329727.P6137461483490377547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A053320 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329727.P6137461483490377547

/-!
# A329728: Partial sums of A092261.

The programs for A329728, the canonical program `A329728.P16334695943169972259` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329728 has offset 1).

The definition of A329728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329728.P18341543819816966511

`∑[∑{d}[∏{p}[n+1, lcm(n+1, #²)/(n+1)], #]]`
-/

namespace A329728.P18341543819816966511
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f2 n)).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329728.P18341543819816966511

namespace A329728

/-- `∑[∑{d}[∏{p}[n+1, lcm(n+1, #²)/(n+1)], #]]` -/
def P18341543819816966511.Spec : Prop :=
  ∀ n, (P18341543819816966511.a n : ℤ) = A329728 (n + 1)

end A329728

/-! ## A329728.P3936393044234759147

`∑[A092261(n+1)]`
-/

namespace A329728.P3936393044234759147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329728.P3936393044234759147

namespace A329728

/-- `∑[A092261(n+1)]` -/
def P3936393044234759147.Spec : Prop :=
  ∀ n, P3936393044234759147.a n = A329728 (n + 1)

end A329728

/-! ## A329728.P2542389911883173974

`∑[∑{d}[A055231(n+1), #]]`
-/

namespace A329728.P2542389911883173974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329728.P2542389911883173974

namespace A329728

/-- `∑[∑{d}[A055231(n+1), #]]` -/
def P2542389911883173974.Spec : Prop :=
  ∀ n, (P2542389911883173974.a n : ℤ) = A329728 (n + 1)

end A329728

/-! ## A329728.P16334695943169972259

`∑[∑{d}[(n+1)/A057521(n+1), #]]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A329728

/-- `∑[∑{d}[(n+1)/A057521(n+1), #]]` -/
def P16334695943169972259.Spec : Prop :=
  ∀ n, (P16334695943169972259.a n : ℤ) = A329728 (n + 1)

theorem P16334695943169972259.correct : P16334695943169972259.Spec := by
  intro n
  simp only [A329728, Nat.add_sub_cancel]

end A329728

/-! ## A329728.P1135811955988512917

`∑[∑{d}[n+1, #]/A295294(n+1)]`
-/

namespace A329728.P1135811955988512917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (A295294 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329728.P1135811955988512917

namespace A329728

/-- `∑[∑{d}[n+1, #]/A295294(n+1)]` -/
def P1135811955988512917.Spec : Prop :=
  ∀ n, P1135811955988512917.a n = (A329728 (n + 1) : ℚ)

end A329728

/-! ## A329728.P7923943725557317662

`∑[A000203(∏{p}[n+1, lcm(n+1, #²)/(n+1)])]`
-/

namespace A329728.P7923943725557317662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329728.P7923943725557317662

namespace A329728

/-- `∑[A000203(∏{p}[n+1, lcm(n+1, #²)/(n+1)])]` -/
def P7923943725557317662.Spec : Prop :=
  ∀ n, P7923943725557317662.a n = A329728 (n + 1)

end A329728

/-! ## A329728.P987414090594723952

`∑[A000203(A055231(n+1))]`
-/

namespace A329728.P987414090594723952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A055231 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329728.P987414090594723952

namespace A329728

/-- `∑[A000203(A055231(n+1))]` -/
def P987414090594723952.Spec : Prop :=
  ∀ n, P987414090594723952.a n = A329728 (n + 1)

end A329728

/-! ## A329728.P4430018671444987618

`∑[Δ[A160664(n)]/A295294(n+1)]`
-/

namespace A329728.P4430018671444987618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (A295294 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329728.P4430018671444987618

namespace A329728

/-- `∑[Δ[A160664(n)]/A295294(n+1)]` -/
def P4430018671444987618.Spec : Prop :=
  ∀ n, P4430018671444987618.a n = (A329728 (n + 1) : ℚ)

end A329728

/-! ## A329728.P163909092829779589

`∑[A000203((n+1)/A057521(n+1))]`
-/

namespace A329728.P163909092829779589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329728.P163909092829779589

namespace A329728

/-- `∑[A000203((n+1)/A057521(n+1))]` -/
def P163909092829779589.Spec : Prop :=
  ∀ n, P163909092829779589.a n = A329728 (n + 1)

end A329728

/-! ## A329728.P8635295990900381160

`∑[A001615((n+1)/A057521(n+1))]`
-/

namespace A329728.P8635295990900381160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329728.P8635295990900381160

namespace A329728

/-- `∑[A001615((n+1)/A057521(n+1))]` -/
def P8635295990900381160.Spec : Prop :=
  ∀ n, P8635295990900381160.a n = A329728 (n + 1)

end A329728

/-! ## A329728.P8115225946296301380

`∑[A000203(n+1)/A295294(n+1)]`
-/

namespace A329728.P8115225946296301380
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A295294 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329728.P8115225946296301380

namespace A329728

/-- `∑[A000203(n+1)/A295294(n+1)]` -/
def P8115225946296301380.Spec : Prop :=
  ∀ n, P8115225946296301380.a n = (A329728 (n + 1) : ℚ)

end A329728

/-! ## A329728.P1391466019493267660

`∑[A048250(n+1)/A295295(n+1)]`
-/

namespace A329728.P1391466019493267660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A295295 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329728.P1391466019493267660

namespace A329728

/-- `∑[A048250(n+1)/A295295(n+1)]` -/
def P1391466019493267660.Spec : Prop :=
  ∀ n, P1391466019493267660.a n = (A329728 (n + 1) : ℚ)

end A329728

/-! ## A329728.P12139626346117587391

`∑[A048250(n+1)/A048250(A003557(n+1))]`
-/

namespace A329728.P12139626346117587391
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A048250 (A003557 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329728.P12139626346117587391

namespace A329728

/-- `∑[A048250(n+1)/A048250(A003557(n+1))]` -/
def P12139626346117587391.Spec : Prop :=
  ∀ n, P12139626346117587391.a n = (A329728 (n + 1) : ℚ)

end A329728

/-! ## A329728.P10412169067745118131

`∑[A295295(A055231(n+1)²)]`
-/

namespace A329728.P10412169067745118131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295295 (A055231 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329728.P10412169067745118131

namespace A329728

/-- `∑[A295295(A055231(n+1)²)]` -/
def P10412169067745118131.Spec : Prop :=
  ∀ n, P10412169067745118131.a n = A329728 (n + 1)

end A329728

/-! ## A329728.P4819889032062234329

`∑[A327564(A055231(n+1)²)]`
-/

namespace A329728.P4819889032062234329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327564 (A055231 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329728.P4819889032062234329

namespace A329728

/-- `∑[A327564(A055231(n+1)²)]` -/
def P4819889032062234329.Spec : Prop :=
  ∀ n, P4819889032062234329.a n = A329728 (n + 1)

end A329728

/-!
# A329734: a(n) = (10^(1 + floor((n-1) * log_10 2)) + 1)^n, n >= 0.

The programs for A329734, there is no canonical definition to state claims against.
-/

/-! ## A329734.P1812293207458123216

`(A172502(A011782(n))+2)^n`
-/

namespace A329734.P1812293207458123216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A172502 (A011782 n).toNat + 2) ^ n

end

end A329734.P1812293207458123216

/-! ## A329734.P12300684533813052478

`A000533(A034887(abs(1-n)))^n`
-/

namespace A329734.P12300684533813052478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 (A034887 |1 - (n : ℤ)|.toNat).toNat ^ n

end

end A329734.P12300684533813052478

/-!
# A329735: a(n) is the least k > 0 such that the binary representation of n appears as a substring in the binary representation of at least half of the numbers in the range 1..k.

The programs for A329735, there is no canonical definition to state claims against.
-/

/-! ## A329735.P12042823656221759980

`∑[∏[A270782(n!)]]`
-/

namespace A329735.P12042823656221759980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270782 (Nat.factorial n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329735.P12042823656221759980

/-!
# A329737: Cyclops primes that remain prime after being "blinded".

The programs for A329737, there is no canonical definition to state claims against.
-/

/-! ## A329737.P17235807501950093766

`∩[A134808(n+1), A256186(n+1)]`
-/

namespace A329737.P17235807501950093766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329737.P17235807501950093766

/-! ## A329737.P3960344695404839709

`∩[A134809(n+1), A256186(n+1)]`
-/

namespace A329737.P3960344695404839709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329737.P3960344695404839709

/-! ## A329737.P2514973497383355389

`∩[A162199(n+1), A256186(n+1)]`
-/

namespace A329737.P2514973497383355389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329737.P2514973497383355389

/-!
# A329738: Number of compositions of n whose run-lengths are all equal.

The programs for A329738, there is no canonical definition to state claims against.
-/

/-! ## A329738.P8337017760778608669

`∑{d}[A028310(n), A003242(#)]`
-/

namespace A329738.P8337017760778608669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003242 d

end

end A329738.P8337017760778608669

/-! ## A329738.P544321259702503118

`∑{d}[A065033(2*n), A003242(#)]`
-/

namespace A329738.P544321259702503118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003242 d

end

end A329738.P544321259702503118

/-! ## A329738.P17852359780243179427

`A036987(2*n)+∑{d}[n, A003242(#)]`
-/

namespace A329738.P17852359780243179427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + ∑ d ∈ Nat.divisors (f1 n), A003242 d

end

end A329738.P17852359780243179427

/-! ## A329738.P16285681891454276232

`A332833(n)+A332836(n)-A332871(n)`
-/

namespace A329738.P16285681891454276232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332833 n + (A332836 n - A332871 n)

end

end A329738.P16285681891454276232

/-! ## A329738.P11118673971692770787

`A214269(∑[n+1])+∑{d}[n, A003242(#)]`
-/

namespace A329738.P11118673971692770787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (∑ j ∈ Finset.range (n + 1), f1 j) + ∑ d ∈ Nat.divisors (f2 n), A003242 d

end

end A329738.P11118673971692770787

/-! ## A329738.P14231161999758910114

`∑{d}[A007318(A000124(n)), A003242(#)]`
-/

namespace A329738.P14231161999758910114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003242 d

end

end A329738.P14231161999758910114

/-!
# A329741: Number of compositions of n whose multiplicities cover an initial interval of positive integers.

The programs for A329741, there is no canonical definition to state claims against.
-/

/-! ## A329741.P17226212897395409895

`or(A000120(A094941(n)), A121720(n+1))`
-/

namespace A329741.P17226212897395409895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A094941 n).toNat) (A121720 (n + 1))

end

end A329741.P17226212897395409895

/-!
# A329742: Indices n of Riemann zeta zeros for successive records of the normalized delta defined as d(n) = (z(n+1)-z(n))*(log(z(n)/(2Pi))/(2Pi)) where z(n) is the imaginary part of the n-th Riemann zero.

The programs for A329742, there is no canonical definition to state claims against.
-/

/-! ## A329742.P6385782508441806281

`∩[A048265(n+1), A329823(n+1)]`
-/

namespace A329742.P6385782508441806281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329742.P6385782508441806281

/-! ## A329742.P8609450746557924074

`∩[A329823(n+1), A389483(n+1)]`
-/

namespace A329742.P8609450746557924074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329742.P8609450746557924074

/-!
# A329744: Triangle read by rows where T(n,k) is the number of compositions of n > 0 with runs-resistance k, 0 <= k <= n - 1.

The programs for A329744, there is no canonical definition to state claims against.
-/

/-! ## A329744.P8581801072751175304

`A319411(n+1)/2`
-/

namespace A329744.P8581801072751175304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319411 (n + 1) : ℚ) / 2

end

end A329744.P8581801072751175304

/-! ## A329744.P1871353874561783956

`A329750(∑[char[∑[n]]]²-n)`
-/

namespace A329744.P1871353874561783956
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329750 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A329744.P1871353874561783956

/-! ## A329744.P15399909921827179239

`floor(A319411(Δ[n²]-n)/2)`
-/

namespace A329744.P15399909921827179239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319411 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌋

end

end A329744.P15399909921827179239

/-! ## A329744.P2587876966259820863

`A001281(A319411(n+1))`
-/

namespace A329744.P2587876966259820863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A319411 (n + 1)).toNat

end

end A329744.P2587876966259820863

/-! ## A329744.P6191324981954183740

`A004524(A319411(n+1)+1)`
-/

namespace A329744.P6191324981954183740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A319411 (n + 1) + 1).toNat

end

end A329744.P6191324981954183740

/-! ## A329744.P16938656157186696825

`A004526(A319411(n+1)+1)`
-/

namespace A329744.P16938656157186696825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A319411 (n + 1) + 1).toNat

end

end A329744.P16938656157186696825

/-! ## A329744.P10591343110791542076

`A028242(A319411(n+1)+1)`
-/

namespace A329744.P10591343110791542076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A319411 (n + 1) + 1).toNat

end

end A329744.P10591343110791542076

/-! ## A329744.P15894950272811512799

`A002265(2*A319411(n+1))`
-/

namespace A329744.P15894950272811512799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A319411 (n + 1)).toNat

end

end A329744.P15894950272811512799

/-! ## A329744.P8917611731705262231

`A008615(3*A319411(n+1))`
-/

namespace A329744.P8917611731705262231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A319411 (n + 1)).toNat

end

end A329744.P8917611731705262231

/-! ## A329744.P12484310943458412582

`A004525(lcm(2, A319411(n+1)))`
-/

namespace A329744.P12484310943458412582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A319411 (n + 1)))

end

end A329744.P12484310943458412582

/-!
# A329745: Number of compositions of n with runs-resistance 2.

The programs for A329745, there is no canonical definition to state claims against.
-/

/-! ## A329745.P15729879241675353643

`∑{d}[n+1, A003242(#)-1]`
-/

namespace A329745.P15729879241675353643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A003242 d - 1)

end

end A329745.P15729879241675353643

/-! ## A329745.P1238677248813401231

`A329738(n+1)-A000005(n+1)`
-/

namespace A329745.P1238677248813401231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329738 (n + 1) - A000005 (n + 1)

end

end A329745.P1238677248813401231

/-! ## A329745.P15844202106590482706

`A329738(n+1)-Δ[A006218(n)]`
-/

namespace A329745.P15844202106590482706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329738 (n + 1) - (f1 (n + 1) - f1 n)

end

end A329745.P15844202106590482706

/-! ## A329745.P12184892092830013353

`A329738(n+1)-A179942(n+1)`
-/

namespace A329745.P12184892092830013353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329738 (n + 1) - A179942 (n + 1)

end

end A329745.P12184892092830013353

/-! ## A329745.P7446271955911768585

`A329738(n+1)-(A032741(n+1)+1)`
-/

namespace A329745.P7446271955911768585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329738 (n + 1) - (A032741 (n + 1) + 1)

end

end A329745.P7446271955911768585

/-! ## A329745.P5481935446583540557

`A329738(n+1)-A348553(A032741(n+1))`
-/

namespace A329745.P5481935446583540557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329738 (n + 1) - A348553 (A032741 (n + 1)).toNat

end

end A329745.P5481935446583540557

/-!
# A329746: Triangle read by rows where T(n,k) is the number of integer partitions of n > 0 with runs-resistance k, 0 <= k <= n - 1.

The programs for A329746, there is no canonical definition to state claims against.
-/

/-! ## A329746.P5208916496318144406

`A325280(lt[1, A157402(n+1)])`
-/

namespace A329746.P5208916496318144406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A329746.P5208916496318144406

/-! ## A329746.P5344881265992754126

`A325280(comp[∑[n]]%A272599(n+1))`
-/

namespace A329746.P5344881265992754126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325280 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A272599 (n + 1))).toNat

end

end A329746.P5344881265992754126

/-! ## A329746.P2083043091609788747

`A325280(A014132(n+1)%A380649(2*n+5))`
-/

namespace A329746.P2083043091609788747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325280 (Int.tmod (A014132 (n + 1)) (A380649 (2 * n + 5))).toNat

end

end A329746.P2083043091609788747

/-! ## A329746.P7417109562027823866

`A325280(comp[∑[n]])%A212010(2*(n+1))`
-/

namespace A329746.P7417109562027823866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325280 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A212010 (2 * (n + 1)))

end

end A329746.P7417109562027823866

/-! ## A329746.P13358082423184956435

`A325280(lt[A089864(2*n), A085483(n+1)])`
-/

namespace A329746.P13358082423184956435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089864 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325280 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A329746.P13358082423184956435

/-!
# A329747: Runs-resistance of the sequence of prime indices of n.

The programs for A329747, there is no canonical definition to state claims against.
-/

/-! ## A329747.P16514612449193517345

`A304455(n+1)+A010051(A255872(n+1))`
-/

namespace A329747.P16514612449193517345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1) + A010051 (A255872 (n + 1)).toNat

end

end A329747.P16514612449193517345

/-! ## A329747.P3424097014508381169

`A304455(n+1)+A063524(A300845(n+1))`
-/

namespace A329747.P3424097014508381169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1) + A063524 (A300845 (n + 1)).toNat

end

end A329747.P3424097014508381169

/-! ## A329747.P8211438130892763966

`A304455(A167494(n+1))+A304455(n+1)`
-/

namespace A329747.P8211438130892763966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (A167494 (n + 1)).toNat + A304455 (n + 1)

end

end A329747.P8211438130892763966

/-! ## A329747.P10500155725059747709

`A377780(A326378(n+1))+A304455(n+1)`
-/

namespace A329747.P10500155725059747709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377780 (A326378 (n + 1)).toNat + A304455 (n + 1)

end

end A329747.P10500155725059747709

/-! ## A329747.P4957288607683131274

`A304455(n+1)+A067157(A348528(n+2))`
-/

namespace A329747.P4957288607683131274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1) + A067157 ((A348528 (n + 2)).toNat + 10)

end

end A329747.P4957288607683131274

/-! ## A329747.P854906220092162237

`A032741(A164937(n+1))*A304455(n+1)`
-/

namespace A329747.P854906220092162237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A164937 (n + 1)).toNat * A304455 (n + 1)

end

end A329747.P854906220092162237

/-! ## A329747.P15463184861219066981

`A304455(n+1)^A324888(A019546(n+1))`
-/

namespace A329747.P15463184861219066981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304455 (n + 1) : ℚ) ^ (A324888 (A019546 (n + 1)).toNat : ℤ)

end

end A329747.P15463184861219066981

/-! ## A329747.P2868697320954416118

`A304455(n+1)+A010815(A051616(3*(n+1)))`
-/

namespace A329747.P2868697320954416118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1) + A010815 (A051616 (3 * (n + 1))).toNat

end

end A329747.P2868697320954416118

/-! ## A329747.P16537842158446190487

`A304455(A107145(3*n+2))+A304455(n+1)`
-/

namespace A329747.P16537842158446190487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (A107145 (3 * n + 2)).toNat + A304455 (n + 1)

end

end A329747.P16537842158446190487

/-! ## A329747.P15953637038433046105

`A304455(n+1)+A000007(A336668(2*n+5))`
-/

namespace A329747.P15953637038433046105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1) + A000007 (A336668 (2 * n + 5)).toNat

end

end A329747.P15953637038433046105

/-!
# A329749: Number of complete compositions of n whose run-lengths cover an initial interval of positive integers.

The programs for A329749, there is no canonical definition to state claims against.
-/

/-! ## A329749.P14762113545453989384

`A389790(A305335(n+2))`
-/

namespace A329749.P14762113545453989384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389790 (A305335 (n + 2)).toNat

end

end A329749.P14762113545453989384

/-! ## A329749.P3515482209977705541

`A343152(A003242(n))-A343127(n+1)`
-/

namespace A329749.P3515482209977705541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343152 (A003242 n).toNat - A343127 (n + 1)

end

end A329749.P3515482209977705541

/-! ## A329749.P10989650383225262784

`A036590(n)-A343958(A343940(n+1))`
-/

namespace A329749.P10989650383225262784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036590 n - A343958 (A343940 (n + 1)).toNat

end

end A329749.P10989650383225262784

/-!
# A329750: Triangle read by rows where T(n,k) is the number of compositions of n >= 1 with runs-resistance n - k, 1 <= k <= n.

The programs for A329750, there is no canonical definition to state claims against.
-/

/-! ## A329750.P10495199132114728575

`A329744(∑[char[∑[n]]]²-n)`
-/

namespace A329750.P10495199132114728575
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329744 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A329750.P10495199132114728575

/-! ## A329750.P1498423342800574335

`A319411(∑[char[∑[n]]]²-n)/2`
-/

namespace A329750.P1498423342800574335
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319411 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) : ℚ) / 2

end

end A329750.P1498423342800574335

/-! ## A329750.P8363865430648152667

`floor(A319411(A061579(n)+1)/2)`
-/

namespace A329750.P8363865430648152667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319411 (A061579 n + 1).toNat : ℚ) / 2⌋

end

end A329750.P8363865430648152667

/-! ## A329750.P15981520265859650057

`ceil(A319411(A038722(n+1))/2)`
-/

namespace A329750.P15981520265859650057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A319411 (A038722 (n + 1)).toNat : ℚ) / 2⌉

end

end A329750.P15981520265859650057

/-! ## A329750.P6855190458415696058

`A329744(A038722(n+1))^A178334(n)`
-/

namespace A329750.P6855190458415696058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329744 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A329750.P6855190458415696058

/-! ## A329750.P14043004738888676359

`or(A000007(n), A329744(A038722(n+1)))`
-/

namespace A329750.P14043004738888676359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A329744 (A038722 (n + 1)).toNat)

end

end A329750.P14043004738888676359

/-! ## A329750.P7237214805707932253

`and(A091938(n+1), A329744(A038722(n+1)))`
-/

namespace A329750.P7237214805707932253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091938 (n + 1)) (A329744 (A038722 (n + 1)).toNat)

end

end A329750.P7237214805707932253

/-! ## A329750.P15359629712652090793

`A329744(A038722(n+1))^(A000040(n+1)%2)`
-/

namespace A329750.P15359629712652090793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329744 (A038722 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A329750.P15359629712652090793

/-! ## A329750.P18127640939602983096

`gcd(A005117(n+1)^(1-n^8), A329744(A038722(n+1)))`
-/

namespace A329750.P18127640939602983096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A005117 (n + 1) : ℚ) ^ (1 - (n ^ 8 : ℤ) : ℤ))) (A329744 (A038722 (n + 1)).toNat)

end

end A329750.P18127640939602983096

/-!
# A329752: a(0) = 0, a(n) = a(floor(n/2)) + (n mod 2) * floor(log_2(2n))^2 for n > 0.

The programs for A329752, the canonical program `A329752.P4476399294089858468` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329752 has offset 0).

The definition of A329752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(n/2))+n%2*floor(log2(2*n))²` (program `A329752.P4476399294089858468`, by `A329752.P4476399294089858468.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A329752.P4476399294089858468

`a(floor(n/2))+n%2*floor(log2(2*n))²` with `a(0)=0`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A329752

/-- `a(floor(n/2))+n%2*floor(log2(2*n))²` -/
def P4476399294089858468.Spec : Prop :=
  ∀ n, (P4476399294089858468.a n : ℤ) = A329752 n

theorem P4476399294089858468.correct : P4476399294089858468.Spec := by
  intro n
  simp only [A329752]

end A329752

/-! ## A329752.P4468099735995433550

`∑{digits}[A063013(A030101(n)), #²]`
-/

namespace A329752.P4468099735995433550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063013 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A329752.P4468099735995433550

namespace A329752

/-- `∑{digits}[A063013(A030101(n)), #²]` -/
def P4468099735995433550.Spec : Prop :=
  ∀ n, (P4468099735995433550.a n : ℤ) = A329752 n

end A329752

/-! ## A329752.P13545920930199643761

`A289506(A110765(n))`
-/

namespace A329752.P13545920930199643761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (A110765 n).toNat

end

end A329752.P13545920930199643761

namespace A329752

/-- `A289506(A110765(n))` -/
def P13545920930199643761.Spec : Prop :=
  ∀ n, P13545920930199643761.a n = A329752 n

end A329752

/-! ## A329752.P15016581881841854487

`A090885(A384003(n))`
-/

namespace A329752.P15016581881841854487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (A384003 n).toNat

end

end A329752.P15016581881841854487

namespace A329752

/-- `A090885(A384003(n))` -/
def P15016581881841854487.Spec : Prop :=
  ∀ n, P15016581881841854487.a n = A329752 n

end A329752

/-! ## A329752.P1995864449805558572

`A003995(A187829(n+1)-A055945(n))`
-/

namespace A329752.P1995864449805558572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003995 (A187829 (n + 1) - A055945 n).toNat

end

end A329752.P1995864449805558572

namespace A329752

/-- `A003995(A187829(n+1)-A055945(n))` -/
def P1995864449805558572.Spec : Prop :=
  ∀ n, P1995864449805558572.a n = A329752 n

end A329752

/-!
# A329753: Doubly square pyramidal numbers.

The programs for A329753, the canonical program `A329753.P2415687677086321597` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329753 has offset 0).

The definition of A329753 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329753.P2415687677086321597

`A000330(A000330(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A329753

/-- `A000330(A000330(n))` -/
def P2415687677086321597.Spec : Prop :=
  ∀ n, P2415687677086321597.a n = A329753 n

theorem P2415687677086321597.correct : P2415687677086321597.Spec := by
  intro n
  simp only [A329753]

end A329753

/-! ## A329753.P9400979172820404273

`C(2*(∑[n²]+1), 3)/4`
-/

namespace A329753.P9400979172820404273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 3 : ℚ) / 4

end

end A329753.P9400979172820404273

namespace A329753

/-- `C(2*(∑[n²]+1), 3)/4` -/
def P9400979172820404273.Spec : Prop :=
  ∀ n, P9400979172820404273.a n = (A329753 n : ℚ)

end A329753

/-! ## A329753.P17315279037707926324

`A153058(∑[n²])-4`
-/

namespace A329753.P17315279037707926324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153058 (∑ j ∈ Finset.range (n + 1), f1 j) - 4

end

end A329753.P17315279037707926324

namespace A329753

/-- `A153058(∑[n²])-4` -/
def P17315279037707926324.Spec : Prop :=
  ∀ n, P17315279037707926324.a n = A329753 n

end A329753

/-! ## A329753.P17580801870451945924

`A000330(∑[n²])`
-/

namespace A329753.P17580801870451945924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329753.P17580801870451945924

namespace A329753

/-- `A000330(∑[n²])` -/
def P17580801870451945924.Spec : Prop :=
  ∀ n, P17580801870451945924.a n = A329753 n

end A329753

/-! ## A329753.P8549273215413621786

`A056520(∑[n²])-1`
-/

namespace A329753.P8549273215413621786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A329753.P8549273215413621786

namespace A329753

/-- `A056520(∑[n²])-1` -/
def P8549273215413621786.Spec : Prop :=
  ∀ n, P8549273215413621786.a n = A329753 n

end A329753

/-!
# A329754: Doubly pentagonal pyramidal numbers.

The programs for A329754, the canonical program `A329754.P3232725764694053512` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329754 has offset 0).

The definition of A329754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329754.P15660236317438691879

`n^4*(n^3+n²+2)*(n+1)²/16`
-/

namespace A329754.P15660236317438691879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 * (n ^ 3 + n ^ 2 + 2) * (n + 1) ^ 2 : ℚ) / 16

end

end A329754.P15660236317438691879

namespace A329754

/-- `n^4*(n^3+n²+2)*(n+1)²/16` -/
def P15660236317438691879.Spec : Prop :=
  ∀ n, P15660236317438691879.a n = (A329754 n : ℚ)

end A329754

/-! ## A329754.P3232725764694053512

`A002411(A002411(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A329754

/-- `A002411(A002411(n))` -/
def P3232725764694053512.Spec : Prop :=
  ∀ n, P3232725764694053512.a n = A329754 n

theorem P3232725764694053512.correct : P3232725764694053512.Spec := by
  intro n
  simp only [A329754]

end A329754

/-! ## A329754.P15337145928333331956

`n*∑[n]*C(n*∑[n]+1, 2)`
-/

namespace A329754.P15337145928333331956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) * Nat.choose (n * (∑ j ∈ Finset.range (n + 1), f2 j) + 1) 2

end

end A329754.P15337145928333331956

namespace A329754

/-- `n*∑[n]*C(n*∑[n]+1, 2)` -/
def P15337145928333331956.Spec : Prop :=
  ∀ n, (P15337145928333331956.a n : ℤ) = A329754 n

end A329754

/-! ## A329754.P7973829164515045201

`n*A000217(n*∑[n])*∑[n]`
-/

namespace A329754.P7973829164515045201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000217 (n * (∑ j ∈ Finset.range (n + 1), f1 j)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A329754.P7973829164515045201

namespace A329754

/-- `n*A000217(n*∑[n])*∑[n]` -/
def P7973829164515045201.Spec : Prop :=
  ∀ n, P7973829164515045201.a n = A329754 n

end A329754

/-! ## A329754.P14465691378943307382

`(n+1)*n²/2*A000217((n+1)*n²/2)`
-/

namespace A329754.P14465691378943307382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * n ^ 2 : ℚ) / 2 * (A000217 (SequenceMachineLib.roundAway (((n + 1) * n ^ 2 : ℚ) / 2)).toNat : ℚ)

end

end A329754.P14465691378943307382

namespace A329754

/-- `(n+1)*n²/2*A000217((n+1)*n²/2)` -/
def P14465691378943307382.Spec : Prop :=
  ∀ n, P14465691378943307382.a n = (A329754 n : ℚ)

end A329754

/-!
# A329755: Doubly hexagonal pyramidal numbers.

The programs for A329755, the canonical program `A329755.P13787465299086933215` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329755 has offset 0).

The definition of A329755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329755.P13787465299086933215

`A002412(A002412(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A329755

/-- `A002412(A002412(n))` -/
def P13787465299086933215.Spec : Prop :=
  ∀ n, P13787465299086933215.a n = A329755 n

theorem P13787465299086933215.correct : P13787465299086933215.Spec := by
  intro n
  simp only [A329755]

end A329755

/-! ## A329755.P6794140843025386836

`A268684(∑[C(2*n, 2)])/2`
-/

namespace A329755.P6794140843025386836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268684 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A329755.P6794140843025386836

namespace A329755

/-- `A268684(∑[C(2*n, 2)])/2` -/
def P6794140843025386836.Spec : Prop :=
  ∀ n, P6794140843025386836.a n = (A329755 n : ℚ)

end A329755

/-! ## A329755.P203329119653411078

`A268684(∑[2*n²-n])/2`
-/

namespace A329755.P203329119653411078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268684 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A329755.P203329119653411078

namespace A329755

/-- `A268684(∑[2*n²-n])/2` -/
def P203329119653411078.Spec : Prop :=
  ∀ n, P203329119653411078.a n = (A329755 n : ℚ)

end A329755

/-! ## A329755.P11266851883574038344

`A002412(∑[∑[a(n-1)+4]])` with `a(0)=0, a(1)=1`
-/

namespace A329755.P11266851883574038344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329755.P11266851883574038344

namespace A329755

/-- `A002412(∑[∑[a(n-1)+4]])` -/
def P11266851883574038344.Spec : Prop :=
  ∀ n, P11266851883574038344.a n = A329755 n

end A329755

/-! ## A329755.P14812770548490976988

`A002412(Δ[(n-1)*C(n+1, 3)])`
-/

namespace A329755.P14812770548490976988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.choose (n + 1) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (f1 (n + 1) - f1 n).toNat

end

end A329755.P14812770548490976988

namespace A329755

/-- `A002412(Δ[(n-1)*C(n+1, 3)])` -/
def P14812770548490976988.Spec : Prop :=
  ∀ n, P14812770548490976988.a n = A329755 n

end A329755

/-!
# A329756: Doubly heptagonal pyramidal numbers.

The programs for A329756, the canonical program `A329756.P11124779587301009923` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329756 has offset 0).

The definition of A329756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329756.P11124779587301009923

`A002413(A002413(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A329756

/-- `A002413(A002413(n))` -/
def P11124779587301009923.Spec : Prop :=
  ∀ n, P11124779587301009923.a n = A329756 n

theorem P11124779587301009923.correct : P11124779587301009923.Spec := by
  intro n
  simp only [A329756]

end A329756

/-! ## A329756.P14133606285791689700

`A203551(n^3-C(n, 3))-(n^3-C(n, 3))`
-/

namespace A329756.P14133606285791689700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203551 (n ^ 3 - Nat.choose n 3) - ((n ^ 3 : ℤ) - (Nat.choose n 3 : ℤ))

end

end A329756.P14133606285791689700

namespace A329756

/-- `A203551(n^3-C(n, 3))-(n^3-C(n, 3))` -/
def P14133606285791689700.Spec : Prop :=
  ∀ n, P14133606285791689700.a n = A329756 n

end A329756

/-! ## A329756.P15016374713275412446

`∑{#}[∑[5*C(n, 2)+n], A000566(#)]`
-/

namespace A329756.P15016374713275412446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose n 2 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000566 k

end

end A329756.P15016374713275412446

namespace A329756

/-- `∑{#}[∑[5*C(n, 2)+n], A000566(#)]` -/
def P15016374713275412446.Spec : Prop :=
  ∀ n, P15016374713275412446.a n = A329756 n

end A329756

/-! ## A329756.P18412481173317216814

`∑{#}[A203551(n)-n, A000566(#)]`
-/

namespace A329756.P18412481173317216814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203551 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000566 k

end

end A329756.P18412481173317216814

namespace A329756

/-- `∑{#}[A203551(n)-n, A000566(#)]` -/
def P18412481173317216814.Spec : Prop :=
  ∀ n, P18412481173317216814.a n = A329756 n

end A329756

/-! ## A329756.P1915807578355079739

`∑{#}[∑[A135706(n)/2], A000566(#)]`
-/

namespace A329756.P1915807578355079739
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135706 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (SequenceMachineLib.roundAway (f1 n) + 1).toNat, A000566 k

end

end A329756.P1915807578355079739

namespace A329756

/-- `∑{#}[∑[A135706(n)/2], A000566(#)]` -/
def P1915807578355079739.Spec : Prop :=
  ∀ n, P1915807578355079739.a n = A329756 n

end A329756

/-!
# A329757: Doubly octagonal pyramidal numbers.

The programs for A329757, there is no canonical definition to state claims against.
-/

/-! ## A329757.P10420849191694466911

`A111384(A005408(∑[6*C(n, 2)+n]))`
-/

namespace A329757.P10420849191694466911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose n 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111384 (A005408 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A329757.P10420849191694466911

/-! ## A329757.P12452164002236040547

`A111384(A005408(∑[∑[5*(2*n)%(n+1)+n]]))`
-/

namespace A329757.P12452164002236040547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (2 * n % (n + 1)) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111384 (A005408 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A329757.P12452164002236040547

/-! ## A329757.P2746089873721499383

`A111384(A005408(∑[A000567(n)]))`
-/

namespace A329757.P2746089873721499383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111384 (A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A329757.P2746089873721499383

/-! ## A329757.P6615813857454401802

`A111384(A007588(n)+A002522(n))`
-/

namespace A329757.P6615813857454401802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111384 (A007588 n + A002522 n).toNat

end

end A329757.P6615813857454401802

/-! ## A329757.P6022451991102646956

`A111384(A033431(n)+A002061(n))`
-/

namespace A329757.P6022451991102646956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111384 (A033431 n + A002061 n).toNat

end

end A329757.P6022451991102646956

/-!
# A329758: Number of n-th generation nodes of a rooted binary tree whose m-th node has exactly A000002(m) descendants, where A000002 is the Kolakoski sequence.

The programs for A329758, there is no canonical definition to state claims against.
-/

/-! ## A329758.P14458951316340696746

`abs(Δ[A054352(abs(1-n))])`
-/

namespace A329758.P14458951316340696746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054352 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A329758.P14458951316340696746

/-! ## A329758.P15069916862555231179

`A054352(n)+1-A327421(n+2)`
-/

namespace A329758.P15069916862555231179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054352 n + 1 - A327421 (n + 2)

end

end A329758.P15069916862555231179

/-! ## A329758.P9236500598677244786

`Δ[A327421(n+2)]`
-/

namespace A329758.P9236500598677244786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327421 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329758.P9236500598677244786

/-! ## A329758.P5878135313113218670

`A327421(n+3)-A327421(n+2)`
-/

namespace A329758.P5878135313113218670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327421 (n + 3) - A327421 (n + 2)

end

end A329758.P5878135313113218670

/-! ## A329758.P9696293009300947381

`runs[A022294(n+1)]`
-/

namespace A329758.P9696293009300947381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022294 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A329758.P9696293009300947381

/-!
# A329759: Odd composite numbers k for which the number of witnesses for strong pseudoprimality of k equals phi(k)/4, where phi is the Euler totient function (A000010).

The programs for A329759, there is no canonical definition to state claims against.
-/

/-! ## A329759.P11619189897236266284

`A316670(A145472(n+1)²)`
-/

namespace A329759.P11619189897236266284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316670 (A145472 (n + 1) ^ 2).toNat

end

end A329759.P11619189897236266284

/-!
# A329760: Primes without {2, 7} as digits.

The programs for A329760, the canonical program `A329760.P7902454852561261286` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329760 has offset 1).

The definition of A329760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9910 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329760.P7902454852561261286

`∩[A038604(n+1), A038615(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A329760

/-- `∩[A038604(n+1), A038615(n+1)]` -/
def P7902454852561261286.Spec : Prop :=
  ∀ n, (P7902454852561261286.a n : ℤ) = A329760 (n + 1)

theorem P7902454852561261286.correct : P7902454852561261286.Spec := by
  intro n
  simp only [A329760, Nat.add_sub_cancel]

end A329760

/-! ## A329760.P15076941704768228463

`p?[gcd(A000040(n+1), A171036(n+1))]`
-/

namespace A329760.P15076941704768228463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A171036 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A329760.P15076941704768228463

namespace A329760

/-- `p?[gcd(A000040(n+1), A171036(n+1))]` -/
def P15076941704768228463.Spec : Prop :=
  ∀ n, (P15076941704768228463.a n : ℤ) = A329760 (n + 1)

end A329760

/-! ## A329760.P16080080874450226098

`record[gcd(A001248(n+2), A171036(n+2))]`
-/

namespace A329760.P16080080874450226098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001248 (n + 2)) (A171036 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329760.P16080080874450226098

namespace A329760

/-- `record[gcd(A001248(n+2), A171036(n+2))]` -/
def P16080080874450226098.Spec : Prop :=
  ∀ n, (P16080080874450226098.a n : ℤ) = A329760 (n + 1)

end A329760

/-! ## A329760.P10178465004712117997

`A065091(eq[A000040(n+1), A171036(n+1)])`
-/

namespace A329760.P10178465004712117997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A329760.P10178465004712117997

namespace A329760

/-- `A065091(eq[A000040(n+1), A171036(n+1)])` -/
def P10178465004712117997.Spec : Prop :=
  ∀ n, P10178465004712117997.a n = A329760 (n + 1)

end A329760

/-! ## A329760.P7594202252262477427

`A000040(eq[A000040(n+1), A171036(n+1)]+1)`
-/

namespace A329760.P7594202252262477427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A329760.P7594202252262477427

namespace A329760

/-- `A000040(eq[A000040(n+1), A171036(n+1)]+1)` -/
def P7594202252262477427.Spec : Prop :=
  ∀ n, P7594202252262477427.a n = A329760 (n + 1)

end A329760

/-! ## A329760.P14131908380253510019

`∩[A038604(n+1), A039132(n+1)]`
-/

namespace A329760.P14131908380253510019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329760.P14131908380253510019

namespace A329760

/-- `∩[A038604(n+1), A039132(n+1)]` -/
def P14131908380253510019.Spec : Prop :=
  ∀ n, (P14131908380253510019.a n : ℤ) = A329760 (n + 1)

end A329760

/-! ## A329760.P5770165253486323698

`∩[A038615(n+1), A039132(n+1)]`
-/

namespace A329760.P5770165253486323698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329760.P5770165253486323698

namespace A329760

/-- `∩[A038615(n+1), A039132(n+1)]` -/
def P5770165253486323698.Spec : Prop :=
  ∀ n, (P5770165253486323698.a n : ℤ) = A329760 (n + 1)

end A329760

/-! ## A329760.P5534231150150520086

`∩[A038604(n+1), A376047(n+1)]`
-/

namespace A329760.P5534231150150520086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329760.P5534231150150520086

namespace A329760

/-- `∩[A038604(n+1), A376047(n+1)]` -/
def P5534231150150520086.Spec : Prop :=
  ∀ n, (P5534231150150520086.a n : ℤ) = A329760 (n + 1)

end A329760

/-! ## A329760.P15647000530780839468

`∩[A038615(n+1), A052404(n+1)]`
-/

namespace A329760.P15647000530780839468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329760.P15647000530780839468

namespace A329760

/-- `∩[A038615(n+1), A052404(n+1)]` -/
def P15647000530780839468.Spec : Prop :=
  ∀ n, (P15647000530780839468.a n : ℤ) = A329760 (n + 1)

end A329760

/-! ## A329760.P4122683388028000758

`∩[A038604(n+1), A052419(n+1)]`
-/

namespace A329760.P4122683388028000758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329760.P4122683388028000758

namespace A329760

/-- `∩[A038604(n+1), A052419(n+1)]` -/
def P4122683388028000758.Spec : Prop :=
  ∀ n, (P4122683388028000758.a n : ℤ) = A329760 (n + 1)

end A329760

/-! ## A329760.P15283392564862204486

`eq[n, A062584(A222231(n))]`
-/

namespace A329760.P15283392564862204486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222231 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329760.P15283392564862204486

namespace A329760

/-- `eq[n, A062584(A222231(n))]` -/
def P15283392564862204486.Spec : Prop :=
  ∀ n, (P15283392564862204486.a n : ℤ) = A329760 (n + 1)

end A329760

/-! ## A329760.P20151593771873552

`eq[A064502(n), A222231(n)]`
-/

namespace A329760.P20151593771873552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329760.P20151593771873552

namespace A329760

/-- `eq[A064502(n), A222231(n)]` -/
def P20151593771873552.Spec : Prop :=
  ∀ n, (P20151593771873552.a n : ℤ) = A329760 (n + 1)

end A329760

/-! ## A329760.P17218429010848102232

`eq[A084413(n), A222231(n)]`
-/

namespace A329760.P17218429010848102232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329760.P17218429010848102232

namespace A329760

/-- `eq[A084413(n), A222231(n)]` -/
def P17218429010848102232.Spec : Prop :=
  ∀ n, (P17218429010848102232.a n : ℤ) = A329760 (n + 1)

end A329760

/-! ## A329760.P4070061999839433333

`eq[A222231(n), A272476(n)]`
-/

namespace A329760.P4070061999839433333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329760.P4070061999839433333

namespace A329760

/-- `eq[A222231(n), A272476(n)]` -/
def P4070061999839433333.Spec : Prop :=
  ∀ n, (P4070061999839433333.a n : ℤ) = A329760 (n + 1)

end A329760

/-! ## A329760.P16013518354316457832

`eq[A222231(n), A327420(n)]`
-/

namespace A329760.P16013518354316457832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329760.P16013518354316457832

namespace A329760

/-- `eq[A222231(n), A327420(n)]` -/
def P16013518354316457832.Spec : Prop :=
  ∀ n, (P16013518354316457832.a n : ℤ) = A329760 (n + 1)

end A329760

/-! ## A329760.P3444493012428314315

`p?[record[A222252(A035044(n))]]`
-/

namespace A329760.P3444493012428314315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A035044 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329760.P3444493012428314315

namespace A329760

/-- `p?[record[A222252(A035044(n))]]` -/
def P3444493012428314315.Spec : Prop :=
  ∀ n, P3444493012428314315.a n = A329760 (n + 1)

end A329760

/-! ## A329760.P17621288653225470264

`eq[A038700(n+1), A222231(n)]`
-/

namespace A329760.P17621288653225470264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329760.P17621288653225470264

namespace A329760

/-- `eq[A038700(n+1), A222231(n)]` -/
def P17621288653225470264.Spec : Prop :=
  ∀ n, (P17621288653225470264.a n : ℤ) = A329760 (n + 1)

end A329760

/-! ## A329760.P14456538721123550342

`eq[A057637(n+1), A222231(n)]`
-/

namespace A329760.P14456538721123550342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329760.P14456538721123550342

namespace A329760

/-- `eq[A057637(n+1), A222231(n)]` -/
def P14456538721123550342.Spec : Prop :=
  ∀ n, (P14456538721123550342.a n : ℤ) = A329760 (n + 1)

end A329760

/-! ## A329760.P12783980690649080604

`eq[A083169(n+1), A222231(n)]`
-/

namespace A329760.P12783980690649080604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329760.P12783980690649080604

namespace A329760

/-- `eq[A083169(n+1), A222231(n)]` -/
def P12783980690649080604.Spec : Prop :=
  ∀ n, (P12783980690649080604.a n : ℤ) = A329760 (n + 1)

end A329760

/-! ## A329760.P6612321156360003038

`p?[record[A222240(2*n)-n]]`
-/

namespace A329760.P6612321156360003038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (2 * n) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329760.P6612321156360003038

namespace A329760

/-- `p?[record[A222240(2*n)-n]]` -/
def P6612321156360003038.Spec : Prop :=
  ∀ n, P6612321156360003038.a n = A329760 (n + 1)

end A329760

/-!
# A329761: Primes having only {1, 3, 9} as digits.

The programs for A329761, the canonical program `A329761.P2221005200150248452` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329761 has offset 1).

The definition of A329761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1525 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329761.P18267380398226908514

`∩[A386118(n+1), A386113(n+1)]`
-/

namespace A329761.P18267380398226908514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P18267380398226908514

namespace A329761

/-- `∩[A386118(n+1), A386113(n+1)]` -/
def P18267380398226908514.Spec : Prop :=
  ∀ n, (P18267380398226908514.a n : ℤ) = A329761 (n + 1)

end A329761

/-! ## A329761.P2221005200150248452

`∩[A174813(n+1), A386113(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A329761

/-- `∩[A174813(n+1), A386113(n+1)]` -/
def P2221005200150248452.Spec : Prop :=
  ∀ n, (P2221005200150248452.a n : ℤ) = A329761 (n + 1)

theorem P2221005200150248452.correct : P2221005200150248452.Spec := by
  intro n
  simp only [A329761, Nat.add_sub_cancel]

end A329761

/-! ## A329761.P13327531142499145477

`∩[A386116(n+1), A174813(n+1)]`
-/

namespace A329761.P13327531142499145477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P13327531142499145477

namespace A329761

/-- `∩[A386116(n+1), A174813(n+1)]` -/
def P13327531142499145477.Spec : Prop :=
  ∀ n, (P13327531142499145477.a n : ℤ) = A329761 (n + 1)

end A329761

/-! ## A329761.P3320251206260565849

`∩[A091633(n+1), A174813(n+1)]`
-/

namespace A329761.P3320251206260565849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P3320251206260565849

namespace A329761

/-- `∩[A091633(n+1), A174813(n+1)]` -/
def P3320251206260565849.Spec : Prop :=
  ∀ n, (P3320251206260565849.a n : ℤ) = A329761 (n + 1)

end A329761

/-! ## A329761.P7842412151919575341

`∩[A091633(n+1), A386026(n+1)]`
-/

namespace A329761.P7842412151919575341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P7842412151919575341

namespace A329761

/-- `∩[A091633(n+1), A386026(n+1)]` -/
def P7842412151919575341.Spec : Prop :=
  ∀ n, (P7842412151919575341.a n : ℤ) = A329761 (n + 1)

end A329761

/-! ## A329761.P8775672750921647579

`∩[A091633(n+1), A386090(n+1)]`
-/

namespace A329761.P8775672750921647579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P8775672750921647579

namespace A329761

/-- `∩[A091633(n+1), A386090(n+1)]` -/
def P8775672750921647579.Spec : Prop :=
  ∀ n, (P8775672750921647579.a n : ℤ) = A329761 (n + 1)

end A329761

/-! ## A329761.P9125177197259774148

`∩[A091633(n+1), A386109(n+1)]`
-/

namespace A329761.P9125177197259774148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P9125177197259774148

namespace A329761

/-- `∩[A091633(n+1), A386109(n+1)]` -/
def P9125177197259774148.Spec : Prop :=
  ∀ n, (P9125177197259774148.a n : ℤ) = A329761 (n + 1)

end A329761

/-! ## A329761.P5556972286703470408

`∩[A091633(n+1), A386113(n+1)]`
-/

namespace A329761.P5556972286703470408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P5556972286703470408

namespace A329761

/-- `∩[A091633(n+1), A386113(n+1)]` -/
def P5556972286703470408.Spec : Prop :=
  ∀ n, (P5556972286703470408.a n : ℤ) = A329761 (n + 1)

end A329761

/-! ## A329761.P12734498142732874356

`∩[A091633(n+1), A386116(n+1)]`
-/

namespace A329761.P12734498142732874356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P12734498142732874356

namespace A329761

/-- `∩[A091633(n+1), A386116(n+1)]` -/
def P12734498142732874356.Spec : Prop :=
  ∀ n, (P12734498142732874356.a n : ℤ) = A329761 (n + 1)

end A329761

/-! ## A329761.P15451924402997038473

`∩[A091633(n+1), A386118(n+1)]`
-/

namespace A329761.P15451924402997038473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P15451924402997038473

namespace A329761

/-- `∩[A091633(n+1), A386118(n+1)]` -/
def P15451924402997038473.Spec : Prop :=
  ∀ n, (P15451924402997038473.a n : ℤ) = A329761 (n + 1)

end A329761

/-! ## A329761.P12262539351013172884

`∩[A066594(n+1), A091633(n+1)]`
-/

namespace A329761.P12262539351013172884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P12262539351013172884

namespace A329761

/-- `∩[A066594(n+1), A091633(n+1)]` -/
def P12262539351013172884.Spec : Prop :=
  ∀ n, (P12262539351013172884.a n : ℤ) = A329761 (n + 1)

end A329761

/-! ## A329761.P12200095891843250196

`∩[A066594(n+1), A174813(n+1)]`
-/

namespace A329761.P12200095891843250196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P12200095891843250196

namespace A329761

/-- `∩[A066594(n+1), A174813(n+1)]` -/
def P12200095891843250196.Spec : Prop :=
  ∀ n, (P12200095891843250196.a n : ℤ) = A329761 (n + 1)

end A329761

/-! ## A329761.P14976633928518669148

`∩[A066594(n+1), A386090(n+1)]`
-/

namespace A329761.P14976633928518669148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P14976633928518669148

namespace A329761

/-- `∩[A066594(n+1), A386090(n+1)]` -/
def P14976633928518669148.Spec : Prop :=
  ∀ n, (P14976633928518669148.a n : ℤ) = A329761 (n + 1)

end A329761

/-! ## A329761.P409598889417743548

`∩[A066594(n+1), A386109(n+1)]`
-/

namespace A329761.P409598889417743548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P409598889417743548

namespace A329761

/-- `∩[A066594(n+1), A386109(n+1)]` -/
def P409598889417743548.Spec : Prop :=
  ∀ n, (P409598889417743548.a n : ℤ) = A329761 (n + 1)

end A329761

/-! ## A329761.P12368115263946429206

`∩[A066594(n+1), A386113(n+1)]`
-/

namespace A329761.P12368115263946429206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P12368115263946429206

namespace A329761

/-- `∩[A066594(n+1), A386113(n+1)]` -/
def P12368115263946429206.Spec : Prop :=
  ∀ n, (P12368115263946429206.a n : ℤ) = A329761 (n + 1)

end A329761

/-! ## A329761.P2730557438657412400

`∩[A066594(n+1), A386116(n+1)]`
-/

namespace A329761.P2730557438657412400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P2730557438657412400

namespace A329761

/-- `∩[A066594(n+1), A386116(n+1)]` -/
def P2730557438657412400.Spec : Prop :=
  ∀ n, (P2730557438657412400.a n : ℤ) = A329761 (n + 1)

end A329761

/-! ## A329761.P11107891182495216127

`∩[A030096(n+1), A066594(n+1)]`
-/

namespace A329761.P11107891182495216127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P11107891182495216127

namespace A329761

/-- `∩[A030096(n+1), A066594(n+1)]` -/
def P11107891182495216127.Spec : Prop :=
  ∀ n, (P11107891182495216127.a n : ℤ) = A329761 (n + 1)

end A329761

/-! ## A329761.P9232445163450796150

`∩[A066594(n+1), A066640(n+1)]`
-/

namespace A329761.P9232445163450796150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P9232445163450796150

namespace A329761

/-- `∩[A066594(n+1), A066640(n+1)]` -/
def P9232445163450796150.Spec : Prop :=
  ∀ n, (P9232445163450796150.a n : ℤ) = A329761 (n + 1)

end A329761

/-! ## A329761.P15190433201233903188

`∩[A030096(n+1), A174813(n+1)]`
-/

namespace A329761.P15190433201233903188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P15190433201233903188

namespace A329761

/-- `∩[A030096(n+1), A174813(n+1)]` -/
def P15190433201233903188.Spec : Prop :=
  ∀ n, (P15190433201233903188.a n : ℤ) = A329761 (n + 1)

end A329761

/-! ## A329761.P2063799595133316653

`∩[A030096(n+1), A386026(n+1)]`
-/

namespace A329761.P2063799595133316653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P2063799595133316653

namespace A329761

/-- `∩[A030096(n+1), A386026(n+1)]` -/
def P2063799595133316653.Spec : Prop :=
  ∀ n, (P2063799595133316653.a n : ℤ) = A329761 (n + 1)

end A329761

/-!
# A329762: a(1) = 1; thereafter a(n+1) > a(n) is the smallest multiple of a(n) using only odd digits but not divisible by 3.

The programs for A329762, there is no canonical definition to state claims against.
-/

/-! ## A329762.P7401611621242335621

`a(n-1)*A329763(n)` with `a(0)=1`
-/

namespace A329762.P7401611621242335621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A329763 n

end

end A329762.P7401611621242335621

/-! ## A329762.P14284593371401213589

`∏[A329763(n+1)]/A329763(n+1)`
-/

namespace A329762.P14284593371401213589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329763 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A329763 (n + 1) : ℚ)

end

end A329762.P14284593371401213589

/-!
# A329763: a(n) = A329762(n+1)/A329762(n).

The programs for A329763, there is no canonical definition to state claims against.
-/

/-! ## A329763.P13415295288576684481

`A329762(n+2)/A329762(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329763.P13415295288576684481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329762 (n + 2) : ℚ) / (A329762 (n + 1) : ℚ)

end

end A329763.P13415295288576684481

/-! ## A329763.P12554461977023773725

`ratio[A329762(n+1)]`
-/

namespace A329763.P12554461977023773725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329762 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A329763.P12554461977023773725

/-! ## A329763.P6783145348314308837

`ratio[-A329762(A008730(n))]`
-/

namespace A329763.P6783145348314308837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A329762 (A008730 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A329763.P6783145348314308837

/-! ## A329763.P18149557480705306931

`ratio[record[A329762(A050603(n))]]`
-/

namespace A329763.P18149557480705306931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329762 (A050603 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A329763.P18149557480705306931

/-! ## A329763.P5417014752247879180

`ratio[record[A329762(A126759(n))]]`
-/

namespace A329763.P5417014752247879180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329762 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A329763.P5417014752247879180

/-!
# A329764: a(1) = 1; thereafter a(n+1) > a(n) is the smallest multiple of a(n) using only odd digits but not divisible by 9.

The programs for A329764, there is no canonical definition to state claims against.
-/

/-! ## A329764.P11578828399431913456

`a(n-1)*A329765(n)` with `a(0)=1`
-/

namespace A329764.P11578828399431913456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A329765 n

end

end A329764.P11578828399431913456

/-! ## A329764.P15321679459387875006

`∏[A329765(n+1)]/A329765(n+1)`
-/

namespace A329764.P15321679459387875006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329765 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A329765 (n + 1) : ℚ)

end

end A329764.P15321679459387875006

/-! ## A329764.P12001623005047485386

`∏[A151714(∑[A134869(n+1)])]`
-/

namespace A329764.P12001623005047485386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151714 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A329764.P12001623005047485386

/-!
# A329765: a(n) = A329764(n+1)/A329764(n).

The programs for A329765, there is no canonical definition to state claims against.
-/

/-! ## A329765.P15641408076961448506

`A329764(n+2)/A329764(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329765.P15641408076961448506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329764 (n + 2) : ℚ) / (A329764 (n + 1) : ℚ)

end

end A329765.P15641408076961448506

/-! ## A329765.P11397251769204578293

`ratio[A329764(n+1)]`
-/

namespace A329765.P11397251769204578293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329764 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A329765.P11397251769204578293

/-! ## A329765.P14658730453302152084

`ratio[record[A329764(A000174(n))]]`
-/

namespace A329765.P14658730453302152084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329764 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A329765.P14658730453302152084

/-! ## A329765.P1624974379515498952

`ratio[record[A329764(A050603(n))]]`
-/

namespace A329765.P1624974379515498952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329764 (A050603 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A329765.P1624974379515498952

/-! ## A329765.P15769938414418829379

`ratio[record[A329764(A126759(n))]]`
-/

namespace A329765.P15769938414418829379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329764 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A329765.P15769938414418829379

/-!
# A329767: Triangle read by rows where T(n,k) is the number of binary words of length n >= 0 with runs-resistance k, 0 <= k <= n.

The programs for A329767, there is no canonical definition to state claims against.
-/

/-! ## A329767.P16470361265693002476

`and(A071433(n+1), A103299(2*n))`
-/

namespace A329767.P16470361265693002476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071433 (n + 1)) (A103299 (2 * n))

end

end A329767.P16470361265693002476

/-! ## A329767.P10421451211306847543

`A359287(A278055(n+1)+A000081(n))`
-/

namespace A329767.P10421451211306847543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359287 (A278055 (n + 1) + A000081 n).toNat

end

end A329767.P10421451211306847543

/-! ## A329767.P643817603367275273

`and(A033049(A003945(n)), A071433(n+1))`
-/

namespace A329767.P643817603367275273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033049 (A003945 n).toNat) (A071433 (n + 1))

end

end A329767.P643817603367275273

/-! ## A329767.P16136433218911511750

`and(A028310(A095121(n)), A071433(n+1))`
-/

namespace A329767.P16136433218911511750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028310 (A095121 n).toNat) (A071433 (n + 1))

end

end A329767.P16136433218911511750

/-! ## A329767.P15473627939962325196

`and(A052905(A290682(n)), A071433(n+1))`
-/

namespace A329767.P15473627939962325196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052905 (A290682 n).toNat) (A071433 (n + 1))

end

end A329767.P15473627939962325196

/-!
# A329768: Number of finite sequences of positive integers whose sum minus runs-resistance is n.

The programs for A329768, there is no canonical definition to state claims against.
-/

/-! ## A329768.P8400075456937634460

`A297531(A014137(n+1))+A254323(n+2)`
-/

namespace A329768.P8400075456937634460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297531 (A014137 (n + 1)).toNat + A254323 (n + 2)

end

end A329768.P8400075456937634460

/-!
# A329771: G.f. = (3*x^8 + x^7 - 3*x^6 - 3*x^5 - 3*x^4 - 3*x^3 - 3*x^2 - 2*x - 1)/(x - 1).

The programs for A329771, the canonical program `A329771.P2031301958402488737` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329771 has offset 0).

The definition of A329771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329771.P2031301958402488737

`ogf((1+2x+3x^2+3x^3+3x^4+3x^5+3x^6-x^7-3x^8)/(1-x))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A329771

/-- `ogf((1+2x+3x^2+3x^3+3x^4+3x^5+3x^6-x^7-3x^8)/(1-x))` -/
def P2031301958402488737.Spec : Prop :=
  ∀ n, P2031301958402488737.a n = A329771 n

theorem P2031301958402488737.correct : P2031301958402488737.Spec := by
  intro n
  simp only [A329771]

end A329771

/-!
# A329774: a(n) = n+1 for n <= 2; otherwise a(n) = 3*a(n-3)+1.

The programs for A329774, the canonical program `A329774.P6417933966084631369` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329774 has offset 0).

The definition of A329774 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-3)+1` (program `A329774.P6417933966084631369`, by `A329774.P6417933966084631369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A329774.P6417933966084631369

`3*a(n-3)+1` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A329774

/-- `3*a(n-3)+1` -/
def P6417933966084631369.Spec : Prop :=
  ∀ n, (P6417933966084631369.a n : ℤ) = A329774 n

theorem P6417933966084631369.correct : P6417933966084631369.Spec := by
  intro n
  simp only [A329774]

end A329774

/-! ## A329774.P17386876061359244948

`ogf((1+x+x^2-2x^3)/(1-x-3x^3+3x^4))`
-/

namespace A329774.P17386876061359244948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, -2] [1, -1, 0, -3, 3] n

end

end A329774.P17386876061359244948

namespace A329774

/-- `ogf((1+x+x^2-2x^3)/(1-x-3x^3+3x^4))` -/
def P17386876061359244948.Spec : Prop :=
  ∀ n, P17386876061359244948.a n = A329774 n

end A329774

/-! ## A329774.P1925976910385630956

`∑[3^floor(n*γ²)]`
-/

namespace A329774.P1925976910385630956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℝ) * Real.eulerMascheroniConstant ^ 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329774.P1925976910385630956

namespace A329774

/-- `∑[3^floor(n*γ²)]` -/
def P1925976910385630956.Spec : Prop :=
  ∀ n, P1925976910385630956.a n = (A329774 n : ℚ)

end A329774

/-! ## A329774.P3569951701967942171

`1+3*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A329774.P3569951701967942171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  1 + 3 * a (n - 3)

end

end A329774.P3569951701967942171

namespace A329774

/-- `1+3*a(n-3)` -/
def P3569951701967942171.Spec : Prop :=
  ∀ n, (P3569951701967942171.a n : ℤ) = A329774 n

theorem P3569951701967942171.correct : P3569951701967942171.Spec := by
  intro n
  simp only [A329774, Nat.add_sub_cancel, A329774.P3569951701967942171.a, A329774.P6417933966084631369.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A329774

/-! ## A329774.P7915069149707693084

`4-3*(1-a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A329774.P7915069149707693084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  4 - 3 * (1 - a (n - 3))

end

end A329774.P7915069149707693084

namespace A329774

/-- `4-3*(1-a(n-3))` -/
def P7915069149707693084.Spec : Prop :=
  ∀ n, P7915069149707693084.a n = A329774 n

end A329774

/-! ## A329774.P509247164258996013

`a(n-3)+a(n-3)+a(n-3)+1` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A329774.P509247164258996013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 3) + (a (n - 3) + (a (n - 3) + 1))

end

end A329774.P509247164258996013

namespace A329774

/-- `a(n-3)+a(n-3)+a(n-3)+1` -/
def P509247164258996013.Spec : Prop :=
  ∀ n, (P509247164258996013.a n : ℤ) = A329774 n

theorem P509247164258996013.correct : P509247164258996013.Spec := by
  intro n
  simp only [A329774, Nat.add_sub_cancel, A329774.P509247164258996013.a, A329774.P6417933966084631369.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A329774

/-! ## A329774.P1624929887553947702

`A127975(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A329774.P1624929887553947702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127975 (n - 1) + a (n - 1)

end

end A329774.P1624929887553947702

namespace A329774

/-- `A127975(n-1)+a(n-1)` -/
def P1624929887553947702.Spec : Prop :=
  ∀ n, P1624929887553947702.a n = A329774 n

end A329774

/-! ## A329774.P6250290472111945336

`∑[A127975(n)]+1-A127975(n)`
-/

namespace A329774.P6250290472111945336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A127975 n)

end

end A329774.P6250290472111945336

namespace A329774

/-- `∑[A127975(n)]+1-A127975(n)` -/
def P6250290472111945336.Spec : Prop :=
  ∀ n, P6250290472111945336.a n = A329774 n

end A329774

/-! ## A329774.P8460614786747006348

`ceil(∑[A000244(ceil(n/3))]/3)`
-/

namespace A329774.P8460614786747006348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 ⌈(n : ℚ) / 3⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌉

end

end A329774.P8460614786747006348

namespace A329774

/-- `ceil(∑[A000244(ceil(n/3))]/3)` -/
def P8460614786747006348.Spec : Prop :=
  ∀ n, P8460614786747006348.a n = A329774 n

end A329774

/-! ## A329774.P18239272648608465177

`(A145052(n+3)+1)/4`
-/

namespace A329774.P18239272648608465177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145052 (n + 3) + 1 : ℚ) / 4

end

end A329774.P18239272648608465177

namespace A329774

/-- `(A145052(n+3)+1)/4` -/
def P18239272648608465177.Spec : Prop :=
  ∀ n, P18239272648608465177.a n = (A329774 n : ℚ)

end A329774

/-!
# A329777: Number of subsets of {1,..,2n} for which the reciprocal of the modular-part product is also a modular-part product.

The programs for A329777, there is no canonical definition to state claims against.
-/

/-! ## A329777.P4739842319879740368

`Δ[A004526(A272257(n)+A272254(n))]`
-/

namespace A329777.P4739842319879740368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A272257 n + A272254 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329777.P4739842319879740368

/-!
# A329778: Number of symmetric subsets of {1,..,2n} for which the reciprocal of the modular-part product is also a modular-part product.

The programs for A329778, there is no canonical definition to state claims against.
-/

/-! ## A329778.P15354867003181358701

`∑[A075124(A032803(n))]`
-/

namespace A329778.P15354867003181358701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075124 (A032803 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329778.P15354867003181358701

/-! ## A329778.P5554729086315894910

`2*A048273(A069306(n+2))`
-/

namespace A329778.P5554729086315894910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048273 (A069306 (n + 2)).toNat

end

end A329778.P5554729086315894910

/-! ## A329778.P16532839822474856780

`2*A048273(A000129(n+3))`
-/

namespace A329778.P16532839822474856780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048273 (A000129 (n + 3)).toNat

end

end A329778.P16532839822474856780

/-!
# A329779: Numbers that are either odd or are congruent to {+-4, +-6, +-8, +-10} (mod 32).

The programs for A329779, the canonical program `A329779.P10369336807012279079` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329779 has offset 1).

The definition of A329779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329779.P13672201985338941462

`∑[A100063(A310184(n))]`
-/

namespace A329779.P13672201985338941462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (A310184 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329779.P13672201985338941462

namespace A329779

/-- `∑[A100063(A310184(n))]` -/
def P13672201985338941462.Spec : Prop :=
  ∀ n, P13672201985338941462.a n = A329779 (n + 1)

end A329779

/-! ## A329779.P10369336807012279079

`∑[ceil(gcd(3, A315543(n))/ϕ)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A329779

/-- `∑[ceil(gcd(3, A315543(n))/ϕ)]` -/
def P10369336807012279079.Spec : Prop :=
  ∀ n, P10369336807012279079.a n = A329779 (n + 1)

theorem P10369336807012279079.correct : P10369336807012279079.Spec := by
  intro n
  simp only [A329779, Nat.add_sub_cancel]

end A329779

/-! ## A329779.P14354499094452081872

`∑[A100063(A315451(n))]`
-/

namespace A329779.P14354499094452081872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (A315451 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329779.P14354499094452081872

namespace A329779

/-- `∑[A100063(A315451(n))]` -/
def P14354499094452081872.Spec : Prop :=
  ∀ n, P14354499094452081872.a n = A329779 (n + 1)

end A329779

/-! ## A329779.P13367223976861266259

`∑[A100063(A315342(n))]`
-/

namespace A329779.P13367223976861266259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (A315342 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329779.P13367223976861266259

namespace A329779

/-- `∑[A100063(A315342(n))]` -/
def P13367223976861266259.Spec : Prop :=
  ∀ n, P13367223976861266259.a n = A329779 (n + 1)

end A329779

/-! ## A329779.P13219334641086369980

`∑[A100063(A315543(n))]`
-/

namespace A329779.P13219334641086369980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (A315543 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329779.P13219334641086369980

namespace A329779

/-- `∑[A100063(A315543(n))]` -/
def P13219334641086369980.Spec : Prop :=
  ∀ n, P13219334641086369980.a n = A329779 (n + 1)

end A329779

/-!
# A329780: Numbers that are either odd or are congruent to {+-2, +-8, +-12, +-14} (mod 32).

The programs for A329780, the canonical program `A329780.P8175845754230340257` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329780 has offset 1).

The definition of A329780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329780.P8175845754230340257

`comp[2*comp[A069909(n)]]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A329780

/-- `comp[2*comp[A069909(n)]]` -/
def P8175845754230340257.Spec : Prop :=
  ∀ n, (P8175845754230340257.a n : ℤ) = A329780 (n + 1)

theorem P8175845754230340257.correct : P8175845754230340257.Spec := by
  intro n
  simp only [A329780, Nat.add_sub_cancel]

end A329780

/-! ## A329780.P13128660019239918469

`comp[round(4*n/3)*A010694(n)]`
-/

namespace A329780.P13128660019239918469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3)) * A010694 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329780.P13128660019239918469

namespace A329780

/-- `comp[round(4*n/3)*A010694(n)]` -/
def P13128660019239918469.Spec : Prop :=
  ∀ n, (P13128660019239918469.a n : ℤ) = A329780 (n + 1)

end A329780

/-! ## A329780.P4917459556771893608

`comp[2*round(4*n/3)*A000034(n)]`
-/

namespace A329780.P4917459556771893608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3)) * A000034 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329780.P4917459556771893608

namespace A329780

/-- `comp[2*round(4*n/3)*A000034(n)]` -/
def P4917459556771893608.Spec : Prop :=
  ∀ n, (P4917459556771893608.a n : ℤ) = A329780 (n + 1)

end A329780

/-! ## A329780.P13424674565357743583

`comp[(2*comp[A004767(n)]-2)*gcd(2, n)]`
-/

namespace A329780.P13424674565357743583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 2) * (Nat.gcd 2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329780.P13424674565357743583

namespace A329780

/-- `comp[(2*comp[A004767(n)]-2)*gcd(2, n)]` -/
def P13424674565357743583.Spec : Prop :=
  ∀ n, (P13424674565357743583.a n : ℤ) = A329780 (n + 1)

end A329780

/-! ## A329780.P13194304316582258252

`comp[A000034(n)*A047395(n+1)]`
-/

namespace A329780.P13194304316582258252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A047395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329780.P13194304316582258252

namespace A329780

/-- `comp[A000034(n)*A047395(n+1)]` -/
def P13194304316582258252.Spec : Prop :=
  ∀ n, (P13194304316582258252.a n : ℤ) = A329780 (n + 1)

end A329780

/-! ## A329780.P14044585298445752779

`comp[A010694(n)*A042965(n+1)]`
-/

namespace A329780.P14044585298445752779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 n * A042965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329780.P14044585298445752779

namespace A329780

/-- `comp[A010694(n)*A042965(n+1)]` -/
def P14044585298445752779.Spec : Prop :=
  ∀ n, (P14044585298445752779.a n : ℤ) = A329780 (n + 1)

end A329780

/-! ## A329780.P4787750387600750339

`comp[A004396(n)*A131731(n)]`
-/

namespace A329780.P4787750387600750339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n * A131731 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A329780.P4787750387600750339

namespace A329780

/-- `comp[A004396(n)*A131731(n)]` -/
def P4787750387600750339.Spec : Prop :=
  ∀ n, (P4787750387600750339.a n : ℤ) = A329780 (n + 1)

end A329780

/-!
# A329782: Numbers that are congruent to {+-1, +-4, +-5, +-6, +-7, +-9, +-10, +-11, +-13, +-15, +-16, +-19} (mod 40).

The programs for A329782, there is no canonical definition to state claims against.
-/

/-! ## A329782.P3391006662269800389

`record[A134483(A196379(A304713(n+1)))]`
-/

namespace A329782.P3391006662269800389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134483 (A196379 (A304713 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329782.P3391006662269800389

/-!
# A329783: Numbers that are either +-2 (mod 5) or +-11 (mod 55).

The programs for A329783, there is no canonical definition to state claims against.
-/

/-! ## A329783.P8695710315660829891

`∩[2*n, A329784(n+1)]/2`
-/

namespace A329783.P8695710315660829891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329784 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A329783.P8695710315660829891

/-! ## A329783.P5253183684112825732

`record[A273943(A329784(n+2))]`
-/

namespace A329783.P5253183684112825732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A329784 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329783.P5253183684112825732

/-! ## A329783.P8576801393466627565

`A006370(∩[2*n, A329784(n+1)])`
-/

namespace A329783.P8576801393466627565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329784 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A329783.P8576801393466627565

/-! ## A329783.P9395337816580812475

`A029578(∩[A029578(2*n+1), A329784(n+1)])`
-/

namespace A329783.P9395337816580812475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329784 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A329783.P9395337816580812475

/-! ## A329783.P8447173023158802778

`A026238(p?[A073846(A329784(n+1))])`
-/

namespace A329783.P8447173023158802778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A329784 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A329783.P8447173023158802778

/-! ## A329783.P44199051880134923

`A055396(p?[A073846(A329784(n+1))])`
-/

namespace A329783.P44199051880134923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A329784 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A329783.P44199051880134923

/-! ## A329783.P669088701255794547

`lt[n²%11, A070430(n)^A052938(n)]`
-/

namespace A329783.P669088701255794547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 11

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070430 n : ℚ) ^ (A052938 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A329783.P669088701255794547

/-!
# A329784: Numbers that are either +-1 (mod 5) or +-22 (mod 55).

The programs for A329784, there is no canonical definition to state claims against.
-/

/-! ## A329784.P5601962208032497536

`record[A025480(A329783(n+1))]`
-/

namespace A329784.P5601962208032497536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A329783 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329784.P5601962208032497536

/-! ## A329784.P9908094073003852771

`record[A078898(A329783(n+2))]`
-/

namespace A329784.P9908094073003852771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A329783 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329784.P9908094073003852771

/-! ## A329784.P559373918243032572

`A032742(∩[2*n, A329783(n+1)])`
-/

namespace A329784.P559373918243032572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329783 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A329784.P559373918243032572

/-! ## A329784.P18446585478850693530

`A078898(∩[2*n, A329783(n+1)])`
-/

namespace A329784.P18446585478850693530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329783 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A329784.P18446585478850693530

/-! ## A329784.P6914521591527517062

`record[A142150(A329783(A052938(n)))]`
-/

namespace A329784.P6914521591527517062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A329783 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329784.P6914521591527517062

/-! ## A329784.P4966853018807894996

`record[A142150(A329783(A024417(n+1)))]`
-/

namespace A329784.P4966853018807894996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A329783 (A024417 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329784.P4966853018807894996

/-!
# A329789: Total number of graceful labelings of connected graphs with n vertices and n edges.

The programs for A329789, there is no canonical definition to state claims against.
-/

/-! ## A329789.P9867564515947148131

`A329790(∑[n+2]-1)`
-/

namespace A329789.P9867564515947148131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329790 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A329789.P9867564515947148131

/-! ## A329789.P4780907703331130687

`lcm(2, A329790(A034856(n+1)))`
-/

namespace A329789.P4780907703331130687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A329790 (A034856 (n + 1)).toNat)

end

end A329789.P4780907703331130687

/-! ## A329789.P16155417881955958603

`A329790(A034856(n+1))+A185264(n)`
-/

namespace A329789.P16155417881955958603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329790 (A034856 (n + 1)).toNat + A185264 n

end

end A329789.P16155417881955958603

/-! ## A329789.P1314559372770817517

`A329790(A034856(n+1))+A210716(n)`
-/

namespace A329789.P1314559372770817517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329790 (A034856 (n + 1)).toNat + A210716 n

end

end A329789.P1314559372770817517

/-! ## A329789.P505396260328784729

`A001221(or(1, n))*A329790(A034856(n+1))`
-/

namespace A329789.P505396260328784729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.lor 1 n) * A329790 (A034856 (n + 1)).toNat

end

end A329789.P505396260328784729

/-!
# A329790: Irregular triangle read by rows: T(n,k) = total number of graceful labelings of connected graphs with n edges (n>=1) and k vertices (k>=1).

The programs for A329790, there is no canonical definition to state claims against.
-/

/-! ## A329790.P2103764013637308945

`and(A144303(n), A315754(A063703(n)))`
-/

namespace A329790.P2103764013637308945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144303 n) (A315754 (A063703 n).toNat)

end

end A329790.P2103764013637308945

/-! ## A329790.P13300441608199900155

`and(A315754(A063703(n)), A340968(n))`
-/

namespace A329790.P13300441608199900155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A315754 (A063703 n).toNat) (A340968 n)

end

end A329790.P13300441608199900155

/-! ## A329790.P15695096324530745934

`A187446(lcm(A030528(n+1), A267901(n+1)))`
-/

namespace A329790.P15695096324530745934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187446 (Int.lcm (A030528 (n + 1)) (A267901 (n + 1)))

end

end A329790.P15695096324530745934

/-! ## A329790.P10957234708443211501

`floor(sqrt(n))!*A037135(A035342(n+1))`
-/

namespace A329790.P10957234708443211501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.sqrt n) : ℤ) * A037135 (A035342 (n + 1)).toNat

end

end A329790.P10957234708443211501

/-! ## A329790.P13589873618726035897

`A054523(A019568(n))%A030211(n)`
-/

namespace A329790.P13589873618726035897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054523 (A019568 n).toNat) (A030211 n)

end

end A329790.P13589873618726035897

/-!
# A329791: a(n) = floor(sqrt(2)*n) + floor(sqrt(3)*n).

The programs for A329791, the canonical program `A329791.P1512235114179897934` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329791 has offset 0).

The definition of A329791 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(2)*n)+floor(sqrt(3)*n)` (program `A329791.P1512235114179897934`, by `A329791.P1512235114179897934.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A329791.P1512235114179897934

`floor(sqrt(2)*n)+floor(sqrt(3)*n)`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A329791

/-- `floor(sqrt(2)*n)+floor(sqrt(3)*n)` -/
def P1512235114179897934.Spec : Prop :=
  ∀ n, P1512235114179897934.a n = A329791 n

theorem P1512235114179897934.correct : P1512235114179897934.Spec := by
  intro n
  simp only [A329791]

end A329791

/-! ## A329791.P11678167076490394557

`floor(A001951(n)+n*sqrt(3))`
-/

namespace A329791.P11678167076490394557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001951 n : ℝ) + (n : ℝ) * Real.sqrt (3 : ℝ)⌋

end

end A329791.P11678167076490394557

namespace A329791

/-- `floor(A001951(n)+n*sqrt(3))` -/
def P11678167076490394557.Spec : Prop :=
  ∀ n, P11678167076490394557.a n = A329791 n

end A329791

/-! ## A329791.P7521903692637273044

`record[A189367(n+1)-A066043(n+1)]`
-/

namespace A329791.P7521903692637273044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189367 (n + 1) - A066043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329791.P7521903692637273044

namespace A329791

/-- `record[A189367(n+1)-A066043(n+1)]` -/
def P7521903692637273044.Spec : Prop :=
  ∀ n, P7521903692637273044.a n = A329791 n

end A329791

/-! ## A329791.P10926910386668055903

`A023443(A188069(n+1)-A195119(n))`
-/

namespace A329791.P10926910386668055903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A188069 (n + 1) - A195119 n).toNat

end

end A329791.P10926910386668055903

namespace A329791

/-- `A023443(A188069(n+1)-A195119(n))` -/
def P10926910386668055903.Spec : Prop :=
  ∀ n, P10926910386668055903.a n = A329791 n

end A329791

/-! ## A329791.P15199310250421446236

`A289207(A001951(n)+ceil(n*sqrt(3))+1)`
-/

namespace A329791.P15199310250421446236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A001951 n + ⌈(n : ℝ) * Real.sqrt (3 : ℝ)⌉ + 1).toNat

end

end A329791.P15199310250421446236

namespace A329791

/-- `A289207(A001951(n)+ceil(n*sqrt(3))+1)` -/
def P15199310250421446236.Spec : Prop :=
  ∀ n, P15199310250421446236.a n = A329791 n

end A329791

/-! ## A329791.P12729512291358244737

`floor(A172471(n²)+n*sqrt(3))`
-/

namespace A329791.P12729512291358244737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A172471 (n ^ 2) : ℝ) + (n : ℝ) * Real.sqrt (3 : ℝ)⌋

end

end A329791.P12729512291358244737

namespace A329791

/-- `floor(A172471(n²)+n*sqrt(3))` -/
def P12729512291358244737.Spec : Prop :=
  ∀ n, P12729512291358244737.a n = A329791 n

end A329791

/-!
# A329792: Smallest positive k such that k*n contains only the digits 1,2,3,4,5, or -1 if no such k exists.

The programs for A329792, there is no canonical definition to state claims against.
-/

/-! ## A329792.P12271803726582535272

`floor(A329793(n)/A028310(n))`
-/

namespace A329792.P12271803726582535272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A329793 n : ℚ) / (A028310 n : ℚ)⌋

end

end A329792.P12271803726582535272

/-! ## A329792.P11760102188170791981

`floor(A329793(n)/(A000007(n)+n))`
-/

namespace A329792.P11760102188170791981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A329793 n : ℚ) / (A000007 n + (n : ℤ) : ℚ)⌋

end

end A329792.P11760102188170791981

/-! ## A329792.P9652657176480498388

`floor(A329793(n)/(A000038(n)+n))`
-/

namespace A329792.P9652657176480498388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A329793 n : ℚ) / (A000038 n + (n : ℤ) : ℚ)⌋

end

end A329792.P9652657176480498388

/-! ## A329792.P17530576637897374143

`floor(A329793(n)/A008619(A004273(n)))`
-/

namespace A329792.P17530576637897374143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A329793 n : ℚ) / (A008619 (A004273 n).toNat : ℚ)⌋

end

end A329792.P17530576637897374143

/-! ## A329792.P8083943186077810407

`floor(A329793(n)/A065033(2*n))`
-/

namespace A329792.P8083943186077810407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A329793 n : ℚ) / (A065033 (2 * n) : ℚ)⌋

end

end A329792.P8083943186077810407

/-! ## A329792.P13207344737911030866

`floor(A329793(n)/A106744(n+1))`
-/

namespace A329792.P13207344737911030866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A329793 n : ℚ) / (A106744 (n + 1) : ℚ)⌋

end

end A329792.P13207344737911030866

/-!
# A329793: Smallest positive multiple of n that contains only the digits 1,2,3,4,5, or -1 if no such multiple exists.

The programs for A329793, there is no canonical definition to state claims against.
-/

/-! ## A329793.P13733522913806786206

`A072643(A000108(n))*A329792(n)`
-/

namespace A329793.P13733522913806786206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A000108 n).toNat * A329792 n

end

end A329793.P13733522913806786206

/-!
# A329796: Running totals in A329544.

The programs for A329796, there is no canonical definition to state claims against.
-/

/-! ## A329796.P6817811240562917519

`abs(∑[A038608(A329544(1+n))])`
-/

namespace A329796.P6817811240562917519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A329544 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A329796.P6817811240562917519

/-! ## A329796.P12307914363483370469

`-∑[A038608(A329544(n+1))]`
-/

namespace A329796.P12307914363483370469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A329544 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329796.P12307914363483370469

/-! ## A329796.P1186204523639804533

`A000007(n+1)-∑[A038608(A329544(n+1))]`
-/

namespace A329796.P1186204523639804533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A329544 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329796.P1186204523639804533

/-! ## A329796.P8314197797931861196

`A000035(2*n)-∑[A038608(A329544(n+1))]`
-/

namespace A329796.P8314197797931861196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A329544 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329796.P8314197797931861196

/-! ## A329796.P9024307983431960622

`A110161(2*n)-∑[A038608(A329544(n+1))]`
-/

namespace A329796.P9024307983431960622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A329544 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329796.P9024307983431960622

/-! ## A329796.P7072580706357880901

`A208575(2*n)-∑[A038608(A329544(n+1))]`
-/

namespace A329796.P7072580706357880901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A329544 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208575 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329796.P7072580706357880901

/-! ## A329796.P10929208831623398234

`A001489(n)-∑[A038608(A329544(n+1))]+n`
-/

namespace A329796.P10929208831623398234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A329544 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A329796.P10929208831623398234

/-! ## A329796.P15196281282351733272

`∑[A038608(A329544(n+1))]/(n+3-A020705(n))`
-/

namespace A329796.P15196281282351733272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A329544 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((n + 3 : ℤ) - A020705 n : ℚ)

end

end A329796.P15196281282351733272

/-! ## A329796.P15908430858225472659

`∑[A329116(A329544(n+1)²)]`
-/

namespace A329796.P15908430858225472659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 (A329544 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329796.P15908430858225472659

/-!
# A329797: Record high water marks in A329544.

The programs for A329797, there is no canonical definition to state claims against.
-/

/-! ## A329797.P8417647499893328685

`record[A329544(n+1)]`
-/

namespace A329797.P8417647499893328685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329797.P8417647499893328685

/-! ## A329797.P2916272467247500785

`A329544(A329798(n+1))`
-/

namespace A329797.P2916272467247500785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329544 (A329798 (n + 1)).toNat

end

end A329797.P2916272467247500785

/-! ## A329797.P14303428955203164376

`record[ratio[A329544(A152271(n))]]`
-/

namespace A329797.P14303428955203164376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329544 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329797.P14303428955203164376

/-! ## A329797.P1337462283650001532

`record[A033999(n)²*A329544(A152271(n))]`
-/

namespace A329797.P1337462283650001532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A329544 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329797.P1337462283650001532

/-! ## A329797.P17462469877287876668

`eq[A025884(n), A346965(n+1)]`
-/

namespace A329797.P17462469877287876668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329797.P17462469877287876668

/-!
# A329798: Where record high water marks appear in A329544.

The programs for A329798, there is no canonical definition to state claims against.
-/

/-! ## A329798.P6409388172878097713

`A330311(A329797(n+1))`
-/

namespace A329798.P6409388172878097713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330311 (A329797 (n + 1)).toNat

end

end A329798.P6409388172878097713

/-! ## A329798.P11715205028299519434

`A330311(record[A329544(n+1)])`
-/

namespace A329798.P11715205028299519434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330311 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A329798.P11715205028299519434

/-! ## A329798.P10814071198131623792

`record[and(A004526(3*n)+1, A337500(n))]`
-/

namespace A329798.P10814071198131623792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004526 (3 * n) + 1) (A337500 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329798.P10814071198131623792

/-! ## A329798.P9664062550066233441

`record[and(22^∑{e}[n+1, #], A196158(n+1))]`
-/

namespace A329798.P9664062550066233441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (22 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℤ) (A196158 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329798.P9664062550066233441

/-! ## A329798.P6410118282052248306

`record[A202084(A129283(n)+1)]`
-/

namespace A329798.P6410118282052248306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (A129283 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329798.P6410118282052248306

/-!
# A329799: Odd squarefree composite numbers k such that p-1 divides k-1 and p-1 does not divide (k-1)/2 for every prime p|k.

The programs for A329799, there is no canonical definition to state claims against.
-/

/-! ## A329799.P14759068015160312018

`A317141(A382810(3*n+2))*A382791(n+1)`
-/

namespace A329799.P14759068015160312018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (A382810 (3 * n + 2)).toNat * A382791 (n + 1)

end

end A329799.P14759068015160312018

/-! ## A329799.P17985673552284934508

`A382791(n+1)%A224252(n+1)`
-/

namespace A329799.P17985673552284934508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382791 (n + 1)) (A224252 (n + 1))

end

end A329799.P17985673552284934508

/-! ## A329799.P8091787134688784073

`A326062(A001248(n+1))*A382791(n+1)`
-/

namespace A329799.P8091787134688784073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326062 (A001248 (n + 1)).toNat * A382791 (n + 1)

end

end A329799.P8091787134688784073

/-! ## A329799.P2942591133423261799

`A382791(n+1)+A000122(A382810(n+5))`
-/

namespace A329799.P2942591133423261799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382791 (n + 1) + A000122 (A382810 (n + 5)).toNat

end

end A329799.P2942591133423261799

/-! ## A329799.P3300807564391217267

`or(A021913(A070325(n+1)), A382791(n+1))`
-/

namespace A329799.P3300807564391217267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A021913 (A070325 (n + 1)).toNat) (A382791 (n + 1))

end

end A329799.P3300807564391217267

